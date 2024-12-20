-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.2/src/win32reg.erl", 1).

-module(win32reg).

-export([open/1,
         close/1,
         current_key/1,
         change_key/2,
         change_key_create/2,
         sub_keys/1,
         delete_key/1,
         value/2,
         values/1,
         set_value/3,
         delete_value/2,
         expand/1,
         format_error/1]).

-export_type([reg_handle/0]).

-opaque reg_handle() :: {win32reg, port()}.

-type name() :: string() | default.

-type value() :: string() | integer() | binary().

-spec open(OpenModeList) -> ReturnValue
              when
                  OpenModeList :: [OpenMode],
                  OpenMode :: read | write,
                  ReturnValue ::
                      {ok, RegHandle} | {error, ErrorId :: enotsup},
                  RegHandle :: reg_handle().

open(Modes) ->
    case os:type() of
        {win32, _} ->
            case open_mode(Modes, []) of
                {error, Reason} ->
                    {error, Reason};
                ModeStr ->
                    P = open_port({spawn, "registry__drv__ " ++ ModeStr},
                                  []),
                    {ok, {win32reg, P}}
            end;
        _ ->
            {error, enotsup}
    end.

-spec close(RegHandle) -> ok when RegHandle :: reg_handle().

close({win32reg, Reg}) when is_port(Reg) ->
    unlink(Reg),
    exit(Reg, die),
    ok.

-spec current_key(RegHandle) -> ReturnValue
                     when
                         RegHandle :: reg_handle(),
                         ReturnValue :: {ok, string()}.

current_key({win32reg, Reg}) when is_port(Reg) ->
    Cmd = [0],
    Reg ! {self(), {command, Cmd}},
    {state, Hkey, Name} = get_result(Reg),
    Root = hkey_to_string(Hkey),
    {ok,
     case Name of
         [] ->
             Root;
         _ ->
             Root ++ [$\\ | Name]
     end}.

-spec change_key(RegHandle, Key) -> ReturnValue
                    when
                        RegHandle :: reg_handle(),
                        Key :: string(),
                        ReturnValue :: ok | {error, ErrorId :: atom()}.

change_key({win32reg, Reg}, Key) when is_port(Reg) ->
    change_key(Reg, 1, Key).

-spec change_key_create(RegHandle, Key) -> ReturnValue
                           when
                               RegHandle :: reg_handle(),
                               Key :: string(),
                               ReturnValue ::
                                   ok | {error, ErrorId :: atom()}.

change_key_create({win32reg, Reg}, Key) when is_port(Reg) ->
    change_key(Reg, 2, Key).

change_key(Reg, Cmd, Key) ->
    case parse_key(Key, Reg) of
        {ok, Hkey, Path} ->
            Reg ! {self(), {command, [Cmd, i32(Hkey), Path, 0]}},
            get_result(Reg);
        {error, Reason} ->
            {error, Reason}
    end.

-spec sub_keys(RegHandle) -> ReturnValue
                  when
                      RegHandle :: reg_handle(),
                      ReturnValue ::
                          {ok, [SubKey]} | {error, ErrorId :: atom()},
                      SubKey :: string().

sub_keys({win32reg, Reg}) when is_port(Reg) ->
    Cmd = [3],
    Reg ! {self(), {command, Cmd}},
    collect_keys(Reg, []).

-spec delete_key(RegHandle) -> ReturnValue
                    when
                        RegHandle :: reg_handle(),
                        ReturnValue :: ok | {error, ErrorId :: atom()}.

delete_key({win32reg, Reg}) when is_port(Reg) ->
    Cmd = [0],
    Reg ! {self(), {command, Cmd}},
    case get_result(Reg) of
        {state, _Hkey, []} ->
            {error, eperm};
        {state, _Hkey, Rest} ->
            [Name | _] = split_key(Rest),
            ok = change_key(Reg, 1, ".."),
            Cmd2 = [7],
            Reg ! {self(), {command, [Cmd2, Name, 0]}},
            get_result(Reg);
        {error, Erorr} ->
            {error, Erorr}
    end.

-spec set_value(RegHandle, Name, Value) -> ReturnValue
                   when
                       RegHandle :: reg_handle(),
                       Name :: name(),
                       Value :: value(),
                       ReturnValue :: ok | {error, ErrorId :: atom()}.

set_value({win32reg, Reg}, Name0, Value) when is_port(Reg) ->
    Name =
        case Name0 of
            default ->
                [];
            _ ->
                Name0
        end,
    {Type, V} = term_to_value(Value),
    Cmd = [6, Type, Name, 0, V],
    Reg ! {self(), {command, Cmd}},
    get_result(Reg).

-spec value(RegHandle, Name) -> ReturnValue
               when
                   RegHandle :: reg_handle(),
                   Name :: name(),
                   ReturnValue ::
                       {ok, Value :: value()} |
                       {error, ErrorId :: atom()}.

value({win32reg, Reg}, Name0) when is_port(Reg) ->
    Name =
        case Name0 of
            default ->
                [];
            _ ->
                Name0
        end,
    Cmd = [4, Name, 0],
    Reg ! {self(), {command, Cmd}},
    case get_result(Reg) of
        {value, {default, Value}} when Name =:= [] ->
            {ok, Value};
        {value, {Name, Value}} ->
            {ok, Value};
        {error, Reason} ->
            {error, Reason}
    end.

-spec values(RegHandle) -> ReturnValue
                when
                    RegHandle :: reg_handle(),
                    ReturnValue ::
                        {ok, [ValuePair]} | {error, ErrorId :: atom()},
                    ValuePair :: {Name :: name(), Value :: value()}.

values({win32reg, Reg}) when is_port(Reg) ->
    Cmd = [5],
    Reg ! {self(), {command, Cmd}},
    collect_values(Reg, []).

-spec delete_value(RegHandle, Name) -> ReturnValue
                      when
                          RegHandle :: reg_handle(),
                          Name :: name(),
                          ReturnValue :: ok | {error, ErrorId :: atom()}.

delete_value({win32reg, Reg}, Name0) when is_port(Reg) ->
    Name =
        case Name0 of
            default ->
                [];
            _ ->
                Name0
        end,
    Cmd = [8, Name, 0],
    Reg ! {self(), {command, Cmd}},
    get_result(Reg).

-spec expand(String) -> ExpandedString
                when String :: string(), ExpandedString :: string().

expand(Value) ->
    expand(Value, [], []).

expand([$%, $% | Rest], [], Result) ->
    expand(Rest, [], [$% | Result]);
expand([$%, C | Rest], [], Result) ->
    expand(Rest, [C], Result);
expand([C | Rest], [], Result) ->
    expand(Rest, [], [C | Result]);
expand([$% | Rest], Env0, Result) ->
    Env = lists:reverse(Env0),
    expand(Rest, [], lists:reverse(os:getenv(Env, "")) ++ Result);
expand([C | Rest], Env, Result) ->
    expand(Rest, [C | Env], Result);
expand([], [], Result) ->
    lists:reverse(Result).

-spec format_error(ErrorId) -> ErrorString
                      when ErrorId :: atom(), ErrorString :: string().

format_error(ErrorId) ->
    erl_posix_msg:message(ErrorId).

-spec collect_values(port(), [{name(), value()}]) ->
                        {ok, [{name(), value()}]} |
                        {error, ErrorId :: atom()}.

collect_values(P, Result) ->
    case get_result(P) of
        ok ->
            {ok, lists:reverse(Result)};
        {value, ValueData} ->
            collect_values(P, [ValueData | Result]);
        {error, Reason} ->
            {error, Reason}
    end.

-spec collect_keys(port(), string()) ->
                      {ok, [string()]} | {error, ErrorId :: atom()}.

collect_keys(P, Result) ->
    case get_result(P) of
        ok ->
            {ok, lists:reverse(Result)};
        {key, KeyData} ->
            collect_keys(P, [KeyData | Result]);
        {error, Reason} ->
            {error, Reason}
    end.

get_result(P) ->
    receive
        {P, {data, Data}} ->
            get_result1(Data)
    end.

get_result1([$e | Reason]) ->
    {error, list_to_atom(Reason)};
get_result1([$o]) ->
    ok;
get_result1([$k | Name]) ->
    {key, Name};
get_result1([$v | Rest0]) ->
    {ok, Type, Rest1} = i32_on_head(Rest0),
    {ok, Name0, Value} = get_cstring(Rest1),
    Name =
        case Name0 of
            [] ->
                default;
            _ ->
                Name0
        end,
    {value, {Name, encode_value(Type, Value)}};
get_result1([$s | Rest0]) ->
    {ok, Hkey, Name} = i32_on_head(Rest0),
    {state, Hkey, Name}.

encode_value(1, Value) ->
    Value;
encode_value(2, Value) ->
    Value;
encode_value(4, Value) ->
    i32(Value);
encode_value(_, Value) ->
    list_to_binary(Value).

term_to_value(Int) when is_integer(Int) ->
    {i32(4), i32(Int)};
term_to_value(String) when is_list(String) ->
    {i32(1), [String, 0]};
term_to_value(Bin) when is_binary(Bin) ->
    {i32(3), Bin};
term_to_value(_) ->
    exit(badarg).

get_cstring(List) ->
    get_cstring(List, []).

get_cstring([0 | Rest], Result) ->
    {ok, lists:reverse(Result), Rest};
get_cstring([C | Rest], Result) ->
    get_cstring(Rest, [C | Result]);
get_cstring([], Result) ->
    {ok, lists:reverse(Result), []}.

i32(Int) when is_integer(Int) ->
    [(Int bsr 24) band 255,
     (Int bsr 16) band 255,
     (Int bsr 8) band 255,
     Int band 255];
i32([X1, X2, X3, X4]) ->
    X1 bsl 24 bor (X2 bsl 16) bor (X3 bsl 8) bor X4.

i32_on_head([X1, X2, X3, X4 | Rest]) ->
    {ok, X1 bsl 24 bor (X2 bsl 16) bor (X3 bsl 8) bor X4, Rest}.

parse_key([$\\ | Rest], _) ->
    parse_root(Rest, []);
parse_key(Key, Reg) ->
    parse_relative(Key, Reg).

parse_relative(Path, Reg) ->
    Cmd = [0],
    Reg ! {self(), {command, Cmd}},
    {state, RootHandle, Name} = get_result(Reg),
    Original = split_key(Name),
    Relative = lists:reverse(split_key(Path)),
    case parse_relative1(Relative, Original) of
        {error, Error} ->
            {error, Error};
        NewPath ->
            {ok, RootHandle, NewPath}
    end.

parse_relative1([".." | _], []) ->
    {error, enoent};
parse_relative1([".." | T1], [_ | T2]) ->
    parse_relative1(T1, T2);
parse_relative1([Comp | Rest], Result) ->
    parse_relative1(Rest, [Comp | Result]);
parse_relative1([], Result) ->
    reverse_and_join(Result, []).

reverse_and_join([X | Rest], []) ->
    reverse_and_join(Rest, [X]);
reverse_and_join([X | Rest], Result) ->
    reverse_and_join(Rest, [X, "\\" | Result]);
reverse_and_join([], Result) ->
    Result.

split_key(Key) ->
    split_key(Key, [], []).

split_key([$\\ | Rest], Current, Result) ->
    split_key(Rest, [], [lists:reverse(Current) | Result]);
split_key([C | Rest], Current, Result) ->
    split_key(Rest, [C | Current], Result);
split_key([], [], Result) ->
    Result;
split_key([], Current, Result) ->
    [lists:reverse(Current) | Result].

parse_root([$\\ | Rest], Result) ->
    Root =
        case lists:reverse(Result) of
            [$h, $k, $e, $y, $_ | Root0] ->
                Root0;
            Root0 ->
                Root0
        end,
    case root_to_handle(list_to_atom(Root)) of
        false ->
            {error, enoent};
        Handle ->
            {ok, Handle, Rest}
    end;
parse_root([C | Rest], Result) ->
    parse_root(Rest, [C | Result]);
parse_root([], Result) ->
    parse_root([$\\], Result).

root_to_handle(classes_root) ->
    2147483648;
root_to_handle(hkcr) ->
    2147483648;
root_to_handle(current_user) ->
    2147483649;
root_to_handle(hkcu) ->
    2147483649;
root_to_handle(local_machine) ->
    2147483650;
root_to_handle(hklm) ->
    2147483650;
root_to_handle(users) ->
    2147483651;
root_to_handle(hku) ->
    2147483651;
root_to_handle(current_config) ->
    2147483653;
root_to_handle(hkcc) ->
    2147483653;
root_to_handle(dyn_data) ->
    2147483654;
root_to_handle(hkdd) ->
    2147483654;
root_to_handle(performance_data) ->
    2147483652;
root_to_handle(_) ->
    false.

hkey_to_string(2147483648) ->
    "\\hkey_classes_root";
hkey_to_string(2147483649) ->
    "\\hkey_current_user";
hkey_to_string(2147483650) ->
    "\\hkey_local_machine";
hkey_to_string(2147483651) ->
    "\\hkey_users";
hkey_to_string(2147483652) ->
    "\\hkey_performance_data";
hkey_to_string(2147483653) ->
    "\\hkey_current_config";
hkey_to_string(2147483654) ->
    "\\hkey_dyn_data".

open_mode([read | Rest], Result) ->
    open_mode(Rest, [$r | Result]);
open_mode([write | Rest], Result) ->
    open_mode(Rest, [$w | Result]);
open_mode([], Result) ->
    Result;
open_mode(_, _) ->
    {error, einval}.



