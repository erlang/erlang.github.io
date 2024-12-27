-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.2/src/error_logger_tty_h."
      "erl",
      1).

-module(error_logger_tty_h).

-behaviour(gen_event).

-export([init/1,
         handle_event/2,
         handle_call/2,
         handle_info/2,
         terminate/2,
         code_change/3]).

-export([write_event/2,write_event/3]).

-record(st,{user, prev_handler,
            io_mod = io,
            depth = unlimited,
            modifier = ""}).

init({[], {error_logger, Buf}}) ->
    User = set_group_leader(),
    Depth = error_logger:get_format_depth(),
    Modifier = modifier(),
    State = {st, User, error_logger, io, Depth, Modifier},
    write_events(State, Buf),
    {ok, State};
init({[], {error_logger_tty_h, PrevHandler}}) ->
    User = set_group_leader(),
    {ok, {st, User, PrevHandler, io, unlimited, ""}};
init([]) ->
    User = set_group_leader(),
    Depth = error_logger:get_format_depth(),
    Modifier = modifier(),
    {ok, {st, User, [], io, Depth, Modifier}}.

handle_event({_Type, GL, _Msg}, State) when node(GL) =/= node() ->
    {ok, State};
handle_event(Event, State) ->
    ok = do_write_event(State, tag_event(Event)),
    {ok, State}.

handle_info({'EXIT', User, _Reason},
            {st, User, PrevHandler, _, _, _} = State) ->
    case PrevHandler of
        [] ->
            remove_handler;
        _ ->
            {swap_handler, install_prev, State, PrevHandler, go_back}
    end;
handle_info(_, State) ->
    {ok, State}.

handle_call(_Query, State) ->
    {ok, {error, bad_query}, State}.

terminate(install_prev, _State) ->
    [];
terminate(_Reason, {st, _, PrevHandler, _, _, _}) ->
    {error_logger_tty_h, PrevHandler}.

code_change(_OldVsn, State, _Extra) ->
    {ok, State}.

write_event(Event, IoMod) ->
    do_write_event({st, undefined, undefined, IoMod, unlimited, ""},
                   Event).

write_event(Event, IoMod, {Depth, Enc}) ->
    Modifier = modifier(Enc),
    do_write_event({st, undefined, undefined, IoMod, Depth, Modifier},
                   Event).

set_group_leader() ->
    case whereis(user) of
        User when is_pid(User) ->
            link(User),
            group_leader(User, self()),
            User;
        _ ->
            false
    end.

tag_event(Event) ->
    {erlang:universaltime(), Event}.

write_events(State, [Ev | Es]) ->
    _ = write_events(State, Es),
    _ = do_write_event(State, Ev),
    ok;
write_events(_State, []) ->
    ok.

do_write_event({st, _, _, _, _, M} = State, {Time, Event}) ->
    case parse_event(Event, M) of
        ignore ->
            ok;
        {Title, Pid, FormatList} ->
            Header = header(Time, Title, M),
            Body = format_body(State, FormatList),
            AtNode =
                if
                    node(Pid) =/= node() ->
                        ["** at node ",
                         atom_to_list(node(Pid)),
                         " **\n"];
                    true ->
                        []
                end,
            Str = [Header, AtNode, Body],
            case
                case State of
                    {st, _, _, REC0, _, _} ->
                        REC0;
                    REC0 ->
                        error({badrecord, REC0})
                end
            of
                io_lib ->
                    Str;
                io ->
                    io:put_chars(user, Str)
            end
    end;
do_write_event(_, _) ->
    ok.

format_body({st, _, _, _, _, M} = State, [{Format, Args} | T]) ->
    S = try format(State, Format, Args) of
            S0 ->
                S0
        catch
            _:_ ->
                format(State,
                       "ERROR: ~" ++ M ++ "p - ~" ++ M ++ "p\n",
                       [Format, Args])
        end,
    [S | format_body(State, T)];
format_body(_State, []) ->
    [].

format({st, _, _, _, unlimited, _}, Format, Args) ->
    io_lib:format(Format, Args);
format({st, _, _, _, Depth, _}, Format0, Args) ->
    Format1 = io_lib:scan_format(Format0, Args),
    Format = limit_format(Format1, Depth),
    io_lib:build_text(Format).

limit_format([#{control_char := C0} = M0 | T], Depth)
    when C0 =:= $p; C0 =:= $w ->
    C = C0 - ($a - $A),
    #{args := Args} = M0,
    M = M0#{control_char := C, args := Args ++ [Depth]},
    [M | limit_format(T, Depth)];
limit_format([H | T], Depth) ->
    [H | limit_format(T, Depth)];
limit_format([], _) ->
    [].

parse_event({error, _GL, {Pid, Format, Args}}, _) ->
    {"ERROR REPORT", Pid, [{Format, Args}]};
parse_event({info_msg, _GL, {Pid, Format, Args}}, _) ->
    {"INFO REPORT", Pid, [{Format, Args}]};
parse_event({warning_msg, _GL, {Pid, Format, Args}}, _) ->
    {"WARNING REPORT", Pid, [{Format, Args}]};
parse_event({error_report, _GL, {Pid, std_error, Args}}, M) ->
    {"ERROR REPORT", Pid, format_term(Args, M)};
parse_event({info_report, _GL, {Pid, std_info, Args}}, M) ->
    {"INFO REPORT", Pid, format_term(Args, M)};
parse_event({warning_report, _GL, {Pid, std_warning, Args}}, M) ->
    {"WARNING REPORT", Pid, format_term(Args, M)};
parse_event(_, _) ->
    ignore.

format_term(Term, M) when is_list(Term) ->
    case string_p(lists:flatten(Term)) of
        true ->
            [{"~" ++ M ++ "s\n", [Term]}];
        false ->
            format_term_list(Term, M)
    end;
format_term(Term, M) ->
    [{"~" ++ M ++ "p\n", [Term]}].

format_term_list([{Tag, Data} | T], M) ->
    [{"    ~" ++ M ++ "p: ~" ++ M ++ "p\n", [Tag, Data]} |
     format_term_list(T, M)];
format_term_list([Data | T], M) ->
    [{"    ~" ++ M ++ "p\n", [Data]} | format_term_list(T, M)];
format_term_list([], _) ->
    [].

string_p([]) ->
    false;
string_p(FlatList) ->
    io_lib:printable_list(FlatList).

get_utc_config() ->
    case application:get_env(sasl, utc_log) of
        {ok, Val} ->
            Val;
        undefined ->
            case application:get_env(stdlib, utc_log) of
                {ok, Val} ->
                    Val;
                undefined ->
                    false
            end
    end.

header(Time, Title, M) ->
    case get_utc_config() of
        true ->
            header(Time, Title, "UTC ", M);
        _ ->
            header(calendar:universal_time_to_local_time(Time),
                   Title,
                   "",
                   M)
    end.

header({{Y, Mo, D}, {H, Mi, S}}, Title, UTC, M) ->
    io_lib:format("~n=~" ++ M ++ "s==== ~p-~s-~p::~s:~s:~s ~s===~n",
                  [Title, D, month(Mo), Y, t(H), t(Mi), t(S), UTC]).

t(X) when is_integer(X) ->
    t1(integer_to_list(X));
t(_) ->
    "".

t1([X]) ->
    [$0, X];
t1(X) ->
    X.

month(1) ->
    "Jan";
month(2) ->
    "Feb";
month(3) ->
    "Mar";
month(4) ->
    "Apr";
month(5) ->
    "May";
month(6) ->
    "Jun";
month(7) ->
    "Jul";
month(8) ->
    "Aug";
month(9) ->
    "Sep";
month(10) ->
    "Oct";
month(11) ->
    "Nov";
month(12) ->
    "Dec".

modifier() ->
    modifier(encoding()).

modifier(latin1) ->
    "";
modifier(_) ->
    "t".

encoding() ->
    proplists:get_value(encoding, io:getopts(), latin1).



