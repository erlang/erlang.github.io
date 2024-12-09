-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.1.2/src/argparse.erl", 1).

-module(argparse).

-author("maximfca@gmail.com").

-export([run/3,parse/2,parse/3,help/1,help/2,format_error/1]).

-export([validate/1,validate/2,format_error/2]).

-type arg_type() ::
          boolean | float |
          {float, Choice :: [float()]} |
          {float, [{min, float()} | {max, float()}]} |
          integer |
          {integer, Choices :: [integer()]} |
          {integer, [{min, integer()} | {max, integer()}]} |
          string |
          {string, Choices :: [string()]} |
          {string, Re :: string()} |
          {string, Re :: string(), ReOptions :: [term()]} |
          binary |
          {binary, Choices :: [binary()]} |
          {binary, Re :: binary()} |
          {binary, Re :: binary(), ReOptions :: [term()]} |
          atom |
          {atom, Choices :: [atom()]} |
          {atom, unsafe} |
          {custom, fun((string()) -> term())}.

-type argument_help() ::
          {unicode:chardata(),
           [unicode:chardata() | type | default] |
           fun(() -> unicode:chardata())}.

-type argument_name() :: atom() | string() | binary().

-type argument() ::
          #{name := argument_name(),
            short => char(),
            long => string(),
            required => boolean(),
            default => term(),
            type => arg_type(),
            action =>
                store |
                {store, term()} |
                append |
                {append, term()} |
                count | extend,
            nargs =>
                pos_integer() |
                'maybe' |
                {'maybe', term()} |
                list | nonempty_list | all,
            help => hidden | unicode:chardata() | argument_help()}.

-type arg_map() :: #{argument_name() => term()}.

-type args() :: [string() | unicode:chardata()].

-type handler() ::
          optional |
          fun((arg_map()) -> term()) |
          {module(), Fn :: atom()} |
          {fun(() -> term()), term()} |
          {module(), atom(), term()}.

-type command_help() ::
          [unicode:chardata() | usage | commands | arguments | options].

-type command() ::
          #{commands => #{string() => command()},
            arguments => [argument()],
            help => hidden | unicode:chardata() | command_help(),
            handler => handler()}.

-type cmd_path() :: [string()].

-export_type([arg_type/0,
              argument_help/0,
              argument/0,
              command/0,
              handler/0,
              cmd_path/0,
              arg_map/0,
              args/0]).

-type parser_error() ::
          {Path :: cmd_path(),
           Expected :: argument() | undefined,
           Actual :: string() | undefined,
           Details :: unicode:chardata()}.

-type parser_options() ::
          #{prefixes => [char()],
            default => term(),
            progname => string() | atom(),
            command => cmd_path(),
            columns => pos_integer()}.

-type parse_result() ::
          {ok, arg_map(), Path :: cmd_path(), command()} |
          {error, parser_error()}.

-spec validate(command()) -> Progname :: string().

validate(Command) ->
    validate(Command, #{}).

-spec validate(command(), parser_options()) -> Progname :: string().

validate(Command, Options) ->
    Prog = executable(Options),
    is_list(Prog)
    orelse
    error(badarg,
          [Command, Options],
          [{error_info, #{cause => #{2 => <<"progname is not valid">>}}}]),
    Prefixes =
        maps:from_list([ 
                        {P, true} ||
                            P <- maps:get(prefixes, Options, [$-])
                       ]),
    _ = validate_command([{Prog, Command}], Prefixes),
    Prog.

-spec parse(args(), command()) -> parse_result().

parse(Args, Command) ->
    parse(Args, Command, #{}).

-spec parse(args(), command(), Options :: parser_options()) ->
               parse_result().

parse(Args, Command, Options) ->
    Prog = validate(Command, Options),
    Prefixes =
        maps:from_list([ 
                        {P, true} ||
                            P <- maps:get(prefixes, Options, [$-])
                       ]),
    Args2 =
        [ 
         unicode:characters_to_list(Arg) ||
             Arg <- Args
        ],
    try
        parse_impl(Args2,
                   merge_arguments(Prog, Command,
                                   init_parser(Prefixes, Command,
                                               Options)))
    catch
        throw:Reason ->
            {error, Reason}
    end.

-spec help(command()) -> string().

help(Command) ->
    help(Command, #{}).

-spec help(command(), parser_options()) -> unicode:chardata().

help(Command, Options) ->
    Prog = validate(Command, Options),
    format_help({Prog, Command}, Options).

-spec run(args(), command(), parser_options()) -> term().

run(Args, Command, Options) ->
    try parse(Args, Command, Options) of
        {ok, ArgMap, Path, SubCmd} ->
            handle(Command, ArgMap, tl(Path), SubCmd);
        {error, Reason} ->
            io:format("error: ~ts~n", [argparse:format_error(Reason)]),
            io:format("~ts",
                      [argparse:help(Command,
                                     Options#{command =>
                                                  tl(element(1, Reason))})]),
            halt(1)
    catch
        error:Reason:Stack ->
            io:format(erl_error:format_exception(error, Reason, Stack)),
            halt(1)
    end.

-spec format_error(Reason :: parser_error()) -> unicode:chardata().

format_error({Path, undefined, undefined, Details}) ->
    io_lib:format("~ts: ~ts", [format_path(Path), Details]);
format_error({Path, undefined, Actual, Details}) ->
    io_lib:format("~ts: unknown argument: ~ts~ts",
                  [format_path(Path), Actual, Details]);
format_error({Path, #{name := Name}, undefined, Details}) ->
    io_lib:format("~ts: required argument missing: ~ts~ts",
                  [format_path(Path), Name, Details]);
format_error({Path, #{name := Name}, Value, Details}) ->
    io_lib:format("~ts: invalid argument for ~ts: ~ts ~ts",
                  [format_path(Path), Name, Value, Details]).

-type validator_error() ::
          {argparse,
           command | argument,
           cmd_path(),
           Field :: atom(),
           Detail :: unicode:chardata()}.

-spec format_error(Reason :: validator_error(), erlang:stacktrace()) ->
                      map().

format_error({argparse, command, Path, Field, Reason},
             [{_M, _F, [Cmd], Info} | _]) ->
    #{cause := Cause} = proplists:get_value(error_info, Info, #{}),
    Cause#{general => <<"command specification is invalid">>,
           1 => io_lib:format("~tp", [Cmd]),
           reason =>
               io_lib:format("command \"~ts\": invalid field '~ts', rea"
                             "son: ~ts",
                             [format_path(Path), Field, Reason])};
format_error({argparse, argument, Path, Field, Reason},
             [{_M, _F, [Arg], Info} | _]) ->
    #{cause := Cause} = proplists:get_value(error_info, Info, #{}),
    ArgName = maps:get(name, Arg, ""),
    Cause#{general => "argument specification is invalid",
           1 => io_lib:format("~tp", [Arg]),
           reason =>
               io_lib:format("command \"~ts\", argument '~ts', invalid "
                             "field '~ts': ~ts",
                             [format_path(Path), ArgName, Field, Reason])}.

-record(eos,{prefixes :: #{char() => true},
             argmap = #{} :: arg_map(),
             commands = [] :: cmd_path(),
             current :: command(),
             pos = [] :: [argument()],
             short = #{} :: #{integer() => argument()},
             long = #{} :: #{string() => argument()},
             no_digits = true :: boolean(),
             default :: error | {ok, term()}}).

init_parser(Prefixes, Cmd, Options) ->
    {eos, Prefixes,
     #{},
     [], Cmd, [],
     #{},
     #{},
     true,
     maps:find(default, Options)}.

match_long(Arg, LongOpts) ->
    case maps:find(Arg, LongOpts) of
        {ok, Option} ->
            {ok, Option};
        error ->
            case string:split(Arg, "=") of
                [MaybeLong, Value] ->
                    case maps:find(MaybeLong, LongOpts) of
                        {ok, Option} ->
                            {ok, Option, Value};
                        error ->
                            nomatch
                    end;
                _ ->
                    nomatch
            end
    end.

parse_impl([[Prefix | Name] | Tail],
           {eos, Pref, _, _, _, _, _, _, _, _} = Eos)
    when is_map_key(Prefix, Pref) ->
    case
        match_long(Name,
                   case Eos of
                       {eos, _, _, _, _, _, _, REC0, _, _} ->
                           REC0;
                       REC0 ->
                           error({badrecord, REC0})
                   end)
    of
        {ok, Option} ->
            consume(Tail, Option, Eos);
        {ok, Option, Value} ->
            consume([Value | Tail], Option, Eos);
        nomatch ->
            case Name of
                [Flag]
                    when
                        (is_record(Eos, eos, 10)
                         orelse
                         fail)
                        and
                        is_map_key(Flag, element(7, Eos)) ->
                    consume(Tail,
                            maps:get(Flag,
                                     case Eos of
                                         {eos, _, _, _, _, _, REC1, _,
                                          _, _} ->
                                             REC1;
                                         REC1 ->
                                             error({badrecord, REC1})
                                     end),
                            Eos);
                [Flag | Rest]
                    when
                        (is_record(Eos, eos, 10)
                         orelse
                         fail)
                        and
                        is_map_key(Flag, element(7, Eos)) ->
                    case
                        abbreviated(Name, [],
                                    case Eos of
                                        {eos, _, _, _, _, _, REC2, _, _,
                                         _} ->
                                            REC2;
                                        REC2 ->
                                            error({badrecord, REC2})
                                    end)
                    of
                        false ->
                            consume([Rest | Tail],
                                    maps:get(Flag,
                                             case Eos of
                                                 {eos, _, _, _, _, _,
                                                  REC3, _, _, _} ->
                                                     REC3;
                                                 REC3 ->
                                                     error({badrecord,
                                                            REC3})
                                             end),
                                    Eos);
                        Expanded ->
                            parse_impl([ 
                                        [Prefix, E] ||
                                            E <- Expanded
                                       ]
                                       ++
                                       Tail,
                                       Eos)
                    end;
                MaybeNegative
                    when
                        Prefix =:= $-,
                        (is_record(Eos, eos, 10)
                         orelse
                         fail)
                        and
                        element(9, Eos) ->
                    case is_digits(MaybeNegative) of
                        true ->
                            parse_positional([Prefix | Name], Tail, Eos);
                        false ->
                            catch_all_positional([[Prefix | Name] |
                                                  Tail],
                                                 Eos)
                    end;
                _Unknown ->
                    catch_all_positional([[Prefix | Name] | Tail], Eos)
            end
    end;
parse_impl([Positional | Tail],
           {eos, _, _, _, #{commands := SubCommands}, _, _, _, _, _} =
               Eos) ->
    case maps:find(Positional, SubCommands) of
        error ->
            parse_positional(Positional, Tail, Eos);
        {ok, SubCmd} ->
            parse_impl(Tail, merge_arguments(Positional, SubCmd, Eos))
    end;
parse_impl([Positional | Tail], Eos) ->
    parse_positional(Positional, Tail, Eos);
parse_impl([],
           {eos, _, ArgMap0, Commands, Current, Pos, _, _, _, Def} = Eos) ->
    map_size(maps:get(commands, Current, #{})) > 0
    andalso
    not is_map_key(handler, Current)
    andalso
    throw({Commands, undefined, undefined, <<"subcommand expected">>}),
    ArgMap1 = fold_args_map(Commands, true, ArgMap0, Pos, Def),
    ArgMap2 =
        fold_args_map(Commands, false, ArgMap1,
                      maps:values(case Eos of
                                      {eos, _, _, _, _, _, REC4, _, _,
                                       _} ->
                                          REC4;
                                      REC4 ->
                                          error({badrecord, REC4})
                                  end),
                      Def),
    ArgMap3 =
        fold_args_map(Commands, false, ArgMap2,
                      maps:values(case Eos of
                                      {eos, _, _, _, _, _, _, REC5, _,
                                       _} ->
                                          REC5;
                                      REC5 ->
                                          error({badrecord, REC5})
                                  end),
                      Def),
    {ok, ArgMap3,
     case Eos of
         {eos, _, _, REC6, _, _, _, _, _, _} ->
             REC6;
         REC6 ->
             error({badrecord, REC6})
     end,
     case Eos of
         {eos, _, _, _, REC7, _, _, _, _, _} ->
             REC7;
         REC7 ->
             error({badrecord, REC7})
     end}.

fold_args_map(Commands, Req, ArgMap, Args, GlobalDefault) ->
    lists:foldl(fun(#{name := Name}, Acc) when is_map_key(Name, Acc) ->
                       Acc;
                   (#{required := true} = Opt, _Acc) ->
                       throw({Commands, Opt, undefined, <<>>});
                   (#{name := Name,
                      required := false,
                      default := Default},
                    Acc) ->
                       Acc#{Name => Default};
                   (#{name := Name, required := false}, Acc) ->
                       try_global_default(Name, Acc, GlobalDefault);
                   (#{name := Name, default := Default}, Acc)
                       when Req =:= true ->
                       Acc#{Name => Default};
                   (Opt, _Acc) when Req =:= true ->
                       throw({Commands, Opt, undefined, <<>>});
                   (#{name := Name, default := Default}, Acc) ->
                       Acc#{Name => Default};
                   (#{name := Name}, Acc) ->
                       try_global_default(Name, Acc, GlobalDefault)
                end,
                ArgMap, Args).

try_global_default(_Name, Acc, error) ->
    Acc;
try_global_default(Name, Acc, {ok, Term}) ->
    Acc#{Name => Term}.

catch_all_positional(Tail,
                     {eos, _, _, _, _,
                      [#{nargs := all} = Opt],
                      _, _, _, _} =
                         Eos) ->
    action([], Tail,
           Opt#{type => {list, maps:get(type, Opt, string)}},
           Eos);
catch_all_positional(Tail,
                     {eos, _, Args, _, _,
                      [#{name := Name,
                         default := Default,
                         required := false} |
                       Pos],
                      _, _, _, _} =
                         Eos) ->
    catch_all_positional(Tail,
                         begin
                             REC8 = Args#{Name => Default},
                             REC9 = Eos,
                             case REC9 of
                                 {eos, _, _, _, _, _, _, _, _, _} ->
                                     setelement(3,
                                                setelement(6, REC9, Pos),
                                                REC8);
                                 _ ->
                                     error({badrecord, REC9})
                             end
                         end);
catch_all_positional(Tail,
                     {eos, _, _, _, _,
                      [#{required := false} | Pos],
                      _, _, _, _} =
                         Eos) ->
    catch_all_positional(Tail,
                         begin
                             REC10 = Eos,
                             case REC10 of
                                 {eos, _, _, _, _, _, _, _, _, _} ->
                                     setelement(6, REC10, Pos);
                                 _ ->
                                     error({badrecord, REC10})
                             end
                         end);
catch_all_positional([Arg | _Tail],
                     {eos, _, _, Commands, _, _, _, _, _, _}) ->
    throw({Commands, undefined, Arg, <<>>}).

parse_positional(Arg, _Tail, {eos, _, _, Commands, _, [], _, _, _, _}) ->
    throw({Commands, undefined, Arg, <<>>});
parse_positional(Arg, Tail, {eos, _, _, _, _, Pos, _, _, _, _} = Eos) ->
    consume([Arg | Tail], hd(Pos), Eos).

merge_arguments(CmdName, #{arguments := Args} = SubCmd, Eos) ->
    add_args(Args,
             begin
                 REC11 =
                     case Eos of
                         {eos, _, _, REC13, _, _, _, _, _, _} ->
                             REC13;
                         REC13 ->
                             error({badrecord, REC13})
                     end
                     ++
                     [CmdName],
                 REC12 = Eos,
                 case REC12 of
                     {eos, _, _, _, _, _, _, _, _, _} ->
                         setelement(4,
                                    setelement(5, REC12, SubCmd),
                                    REC11);
                     _ ->
                         error({badrecord, REC12})
                 end
             end);
merge_arguments(CmdName, SubCmd, Eos) ->
    begin
        REC14 =
            case Eos of
                {eos, _, _, REC16, _, _, _, _, _, _} ->
                    REC16;
                REC16 ->
                    error({badrecord, REC16})
            end
            ++
            [CmdName],
        REC15 = Eos,
        case REC15 of
            {eos, _, _, _, _, _, _, _, _, _} ->
                setelement(4, setelement(5, REC15, SubCmd), REC14);
            _ ->
                error({badrecord, REC15})
        end
    end.

add_args([], Eos) ->
    Eos;
add_args([#{short := S, long := L} = Option | Tail],
         {eos, _, _, _, _, _, Short, Long, _, _} = Eos) ->
    NoDigits =
        no_digits(case Eos of
                      {eos, _, _, _, _, _, _, _, REC17, _} ->
                          REC17;
                      REC17 ->
                          error({badrecord, REC17})
                  end,
                  case Eos of
                      {eos, REC18, _, _, _, _, _, _, _, _} ->
                          REC18;
                      REC18 ->
                          error({badrecord, REC18})
                  end,
                  S, L),
    add_args(Tail,
             begin
                 REC19 = Short#{S => Option},
                 REC20 = Long#{L => Option},
                 REC21 = Eos,
                 case REC21 of
                     {eos, _, _, _, _, _, _, _, _, _} ->
                         setelement(7,
                                    setelement(8,
                                               setelement(9, REC21,
                                                          NoDigits),
                                               REC20),
                                    REC19);
                     _ ->
                         error({badrecord, REC21})
                 end
             end);
add_args([#{short := S} = Option | Tail],
         {eos, _, _, _, _, _, Short, _, _, _} = Eos) ->
    NoDigits =
        no_digits(case Eos of
                      {eos, _, _, _, _, _, _, _, REC22, _} ->
                          REC22;
                      REC22 ->
                          error({badrecord, REC22})
                  end,
                  case Eos of
                      {eos, REC23, _, _, _, _, _, _, _, _} ->
                          REC23;
                      REC23 ->
                          error({badrecord, REC23})
                  end,
                  S, 0),
    add_args(Tail,
             begin
                 REC24 = Short#{S => Option},
                 REC25 = Eos,
                 case REC25 of
                     {eos, _, _, _, _, _, _, _, _, _} ->
                         setelement(7,
                                    setelement(9, REC25, NoDigits),
                                    REC24);
                     _ ->
                         error({badrecord, REC25})
                 end
             end);
add_args([#{long := L} = Option | Tail],
         {eos, _, _, _, _, _, _, Long, _, _} = Eos) ->
    NoDigits =
        no_digits(case Eos of
                      {eos, _, _, _, _, _, _, _, REC26, _} ->
                          REC26;
                      REC26 ->
                          error({badrecord, REC26})
                  end,
                  case Eos of
                      {eos, REC27, _, _, _, _, _, _, _, _} ->
                          REC27;
                      REC27 ->
                          error({badrecord, REC27})
                  end,
                  0, L),
    add_args(Tail,
             begin
                 REC28 = Long#{L => Option},
                 REC29 = Eos,
                 case REC29 of
                     {eos, _, _, _, _, _, _, _, _, _} ->
                         setelement(8,
                                    setelement(9, REC29, NoDigits),
                                    REC28);
                     _ ->
                         error({badrecord, REC29})
                 end
             end);
add_args([PosOpt | Tail], {eos, _, _, _, _, Pos, _, _, _, _} = Eos) ->
    add_args(Tail,
             begin
                 REC30 = Pos ++ [PosOpt],
                 REC31 = Eos,
                 case REC31 of
                     {eos, _, _, _, _, _, _, _, _, _} ->
                         setelement(6, REC31, REC30);
                     _ ->
                         error({badrecord, REC31})
                 end
             end).

no_digits(false, _, _, _) ->
    false;
no_digits(true, Prefixes, _, _) when not is_map_key($-, Prefixes) ->
    true;
no_digits(true, _, Short, _) when Short >= $0, Short =< $9 ->
    false;
no_digits(true, _, _, Long) ->
    not is_digits(Long).

requires_argument(#{nargs := {'maybe', _Term}}) ->
    false;
requires_argument(#{nargs := 'maybe'}) ->
    false;
requires_argument(#{nargs := _Any}) ->
    true;
requires_argument(Opt) ->
    case maps:get(action, Opt, store) of
        store ->
            maps:get(type, Opt, string) =/= boolean;
        append ->
            maps:get(type, Opt, string) =/= boolean;
        _ ->
            false
    end.

abbreviated([Last], Acc, AllShort) when is_map_key(Last, AllShort) ->
    lists:reverse([Last | Acc]);
abbreviated([_], _Acc, _Eos) ->
    false;
abbreviated([Flag | Tail], Acc, AllShort) ->
    case maps:find(Flag, AllShort) of
        error ->
            false;
        {ok, Opt} ->
            case requires_argument(Opt) of
                true ->
                    false;
                false ->
                    abbreviated(Tail, [Flag | Acc], AllShort)
            end
    end.

consume(Tail, #{nargs := Count} = Opt, Eos) when is_integer(Count) ->
    {Consumed, Remain} = split_to_option(Tail, Count, Eos, []),
    length(Consumed) < Count
    andalso
    throw({case Eos of
               {eos, _, _, REC32, _, _, _, _, _, _} ->
                   REC32;
               REC32 ->
                   error({badrecord, REC32})
           end,
           Opt, Tail,
           io_lib:format("expected ~b, found ~b argument(s)",
                         [Count, length(Consumed)])}),
    action(Remain, Consumed,
           Opt#{type => {list, maps:get(type, Opt, string)}},
           Eos);
consume(Tail, #{nargs := all} = Opt, Eos) ->
    action([], Tail,
           Opt#{type => {list, maps:get(type, Opt, string)}},
           Eos);
consume(Tail, #{nargs := nonempty_list} = Opt, Eos) ->
    {Consumed, Remains} = split_to_option(Tail, -1, Eos, []),
    Consumed =:= []
    andalso
    throw({case Eos of
               {eos, _, _, REC33, _, _, _, _, _, _} ->
                   REC33;
               REC33 ->
                   error({badrecord, REC33})
           end,
           Opt, Tail,
           <<"expected argument">>}),
    action(Remains, Consumed,
           Opt#{type => {list, maps:get(type, Opt, string)}},
           Eos);
consume(Tail, #{nargs := list} = Opt, Eos) ->
    {Consumed, Remains} = split_to_option(Tail, -1, Eos, []),
    action(Remains, Consumed,
           Opt#{type => {list, maps:get(type, Opt, string)}},
           Eos);
consume(["true" | Tail], #{type := boolean} = Opt, Eos) ->
    action(Tail, true, Opt#{type => raw}, Eos);
consume(["false" | Tail], #{type := boolean} = Opt, Eos) ->
    action(Tail, false, Opt#{type => raw}, Eos);
consume(Tail, #{type := boolean} = Opt, Eos) ->
    action(Tail, undefined, Opt, Eos);
consume(Tail, #{nargs := 'maybe'} = Opt, Eos) ->
    case split_to_option(Tail, 1, Eos, []) of
        {[], _} ->
            action(Tail, default(Opt), Opt#{type => raw}, Eos);
        {[Consumed], Remains} ->
            action(Remains, Consumed, Opt, Eos)
    end;
consume(Tail, #{nargs := {'maybe', Const}} = Opt, Eos) ->
    case split_to_option(Tail, 1, Eos, []) of
        {[], _} ->
            action(Tail, Const, Opt, Eos);
        {[Consumed], Remains} ->
            action(Remains, Consumed, Opt, Eos)
    end;
consume(Tail, #{action := count} = Opt, Eos) ->
    action(Tail, undefined, Opt, Eos);
consume(Tail, #{action := {Act, _Const}} = Opt, Eos)
    when Act =:= store; Act =:= append ->
    action(Tail, undefined, Opt, Eos);
consume([[Prefix | _] = ArgValue | Tail],
        Opt,
        {eos, _, _, _, _, _, _, _, _, _} = Eos)
    when
        is_map_key(short, Opt)
        orelse
        is_map_key(long, Opt),
        (true
         orelse
         fail)
        and
        is_map_key(Prefix, element(2, Eos)) ->
    case
        case Eos of
            {eos, _, _, _, _, _, _, _, REC34, _} ->
                REC34;
            REC34 ->
                error({badrecord, REC34})
        end
        andalso
        is_digits(ArgValue)
    of
        true ->
            action(Tail, ArgValue, Opt, Eos);
        false ->
            throw({case Eos of
                       {eos, _, _, REC35, _, _, _, _, _, _} ->
                           REC35;
                       REC35 ->
                           error({badrecord, REC35})
                   end,
                   Opt, undefined,
                   <<"expected argument">>})
    end;
consume([ArgValue | Tail], Opt, Eos) ->
    action(Tail, ArgValue, Opt, Eos);
consume([], Opt, Eos) ->
    throw({case Eos of
               {eos, _, _, REC36, _, _, _, _, _, _} ->
                   REC36;
               REC36 ->
                   error({badrecord, REC36})
           end,
           Opt, undefined,
           <<"expected argument">>}).

split_to_option([], _, _Eos, Acc) ->
    {lists:reverse(Acc), []};
split_to_option(Tail, 0, _Eos, Acc) ->
    {lists:reverse(Acc), Tail};
split_to_option([[Prefix | _] = MaybeNumber | Tail] = All,
                Left,
                {eos, Prefixes, _, _, _, _, _, _, true, _} = Eos,
                Acc)
    when is_map_key(Prefix, Prefixes) ->
    case is_digits(MaybeNumber) of
        true ->
            split_to_option(Tail, Left - 1, Eos, [MaybeNumber | Acc]);
        false ->
            {lists:reverse(Acc), All}
    end;
split_to_option([[Prefix | _] | _] = All,
                _Left,
                {eos, Prefixes, _, _, _, _, _, _, false, _},
                Acc)
    when is_map_key(Prefix, Prefixes) ->
    {lists:reverse(Acc), All};
split_to_option([Head | Tail], Left, Opts, Acc) ->
    split_to_option(Tail, Left - 1, Opts, [Head | Acc]).

action(Tail, ArgValue,
       #{name := ArgName, action := store} = Opt,
       {eos, _, ArgMap, _, _, _, _, _, _, _} = Eos) ->
    Value =
        convert_type(maps:get(type, Opt, string), ArgValue, Opt, Eos),
    continue_parser(Tail, Opt,
                    begin
                        REC37 = ArgMap#{ArgName => Value},
                        REC38 = Eos,
                        case REC38 of
                            {eos, _, _, _, _, _, _, _, _, _} ->
                                setelement(3, REC38, REC37);
                            _ ->
                                error({badrecord, REC38})
                        end
                    end);
action(Tail, undefined,
       #{name := ArgName, action := {store, Value}} = Opt,
       {eos, _, ArgMap, _, _, _, _, _, _, _} = Eos) ->
    continue_parser(Tail, Opt,
                    begin
                        REC39 = ArgMap#{ArgName => Value},
                        REC40 = Eos,
                        case REC40 of
                            {eos, _, _, _, _, _, _, _, _, _} ->
                                setelement(3, REC40, REC39);
                            _ ->
                                error({badrecord, REC40})
                        end
                    end);
action(Tail, ArgValue,
       #{name := ArgName, action := append} = Opt,
       {eos, _, ArgMap, _, _, _, _, _, _, _} = Eos) ->
    Value =
        convert_type(maps:get(type, Opt, string), ArgValue, Opt, Eos),
    continue_parser(Tail, Opt,
                    begin
                        REC41 =
                            ArgMap#{ArgName =>
                                        maps:get(ArgName, ArgMap, [])
                                        ++
                                        [Value]},
                        REC42 = Eos,
                        case REC42 of
                            {eos, _, _, _, _, _, _, _, _, _} ->
                                setelement(3, REC42, REC41);
                            _ ->
                                error({badrecord, REC42})
                        end
                    end);
action(Tail, undefined,
       #{name := ArgName, action := {append, Value}} = Opt,
       {eos, _, ArgMap, _, _, _, _, _, _, _} = Eos) ->
    continue_parser(Tail, Opt,
                    begin
                        REC43 =
                            ArgMap#{ArgName =>
                                        maps:get(ArgName, ArgMap, [])
                                        ++
                                        [Value]},
                        REC44 = Eos,
                        case REC44 of
                            {eos, _, _, _, _, _, _, _, _, _} ->
                                setelement(3, REC44, REC43);
                            _ ->
                                error({badrecord, REC44})
                        end
                    end);
action(Tail, ArgValue,
       #{name := ArgName, action := extend} = Opt,
       {eos, _, ArgMap, _, _, _, _, _, _, _} = Eos) ->
    Value =
        convert_type(maps:get(type, Opt, string), ArgValue, Opt, Eos),
    Extended = maps:get(ArgName, ArgMap, []) ++ Value,
    continue_parser(Tail, Opt,
                    begin
                        REC45 = ArgMap#{ArgName => Extended},
                        REC46 = Eos,
                        case REC46 of
                            {eos, _, _, _, _, _, _, _, _, _} ->
                                setelement(3, REC46, REC45);
                            _ ->
                                error({badrecord, REC46})
                        end
                    end);
action(Tail, _,
       #{name := ArgName, action := count} = Opt,
       {eos, _, ArgMap, _, _, _, _, _, _, _} = Eos) ->
    continue_parser(Tail, Opt,
                    begin
                        REC47 =
                            ArgMap#{ArgName =>
                                        maps:get(ArgName, ArgMap, 0) + 1},
                        REC48 = Eos,
                        case REC48 of
                            {eos, _, _, _, _, _, _, _, _, _} ->
                                setelement(3, REC48, REC47);
                            _ ->
                                error({badrecord, REC48})
                        end
                    end);
action(Tail, ArgValue,
       #{name := ArgName} = Opt,
       {eos, _, ArgMap, _, _, _, _, _, _, _} = Eos) ->
    Value =
        convert_type(maps:get(type, Opt, string), ArgValue, Opt, Eos),
    continue_parser(Tail, Opt,
                    begin
                        REC49 = ArgMap#{ArgName => Value},
                        REC50 = Eos,
                        case REC50 of
                            {eos, _, _, _, _, _, _, _, _, _} ->
                                setelement(3, REC50, REC49);
                            _ ->
                                error({badrecord, REC50})
                        end
                    end).

continue_parser(Tail, Opt, Eos)
    when
        is_map_key(short, Opt)
        orelse
        is_map_key(long, Opt) ->
    parse_impl(Tail, Eos);
continue_parser(Tail, #{nargs := List}, Eos)
    when List =:= list; List =:= nonempty_list ->
    parse_impl(Tail, Eos);
continue_parser(Tail, _Opt, Eos) ->
    parse_impl(Tail,
               begin
                   REC51 =
                       tl(case Eos of
                              {eos, _, _, _, _, REC53, _, _, _, _} ->
                                  REC53;
                              REC53 ->
                                  error({badrecord, REC53})
                          end),
                   REC52 = Eos,
                   case REC52 of
                       {eos, _, _, _, _, _, _, _, _, _} ->
                           setelement(6, REC52, REC51);
                       _ ->
                           error({badrecord, REC52})
                   end
               end).

convert_type({list, Type}, Arg, Opt, Eos) ->
    [ 
     convert_type(Type, Var, Opt, Eos) ||
         Var <- Arg
    ];
convert_type(raw, Arg, _Opt, _Eos) ->
    Arg;
convert_type(string, Arg, _Opt, _Eos) ->
    Arg;
convert_type({string, Choices}, Arg, Opt, Eos)
    when is_list(Choices), is_list(hd(Choices)) ->
    lists:member(Arg, Choices)
    orelse
    throw({case Eos of
               {eos, _, _, REC54, _, _, _, _, _, _} ->
                   REC54;
               REC54 ->
                   error({badrecord, REC54})
           end,
           Opt, Arg,
           <<"is not one of the choices">>}),
    Arg;
convert_type({string, Re}, Arg, Opt, Eos) ->
    case re:run(Arg, Re) of
        {match, _X} ->
            Arg;
        _ ->
            throw({case Eos of
                       {eos, _, _, REC55, _, _, _, _, _, _} ->
                           REC55;
                       REC55 ->
                           error({badrecord, REC55})
                   end,
                   Opt, Arg,
                   <<"does not match">>})
    end;
convert_type({string, Re, ReOpt}, Arg, Opt, Eos) ->
    case re:run(Arg, Re, ReOpt) of
        match ->
            Arg;
        {match, _} ->
            Arg;
        _ ->
            throw({case Eos of
                       {eos, _, _, REC56, _, _, _, _, _, _} ->
                           REC56;
                       REC56 ->
                           error({badrecord, REC56})
                   end,
                   Opt, Arg,
                   <<"does not match">>})
    end;
convert_type(integer, Arg, Opt, Eos) ->
    get_int(Arg, Opt, Eos);
convert_type({integer, Opts}, Arg, Opt, Eos) ->
    minimax(get_int(Arg, Opt, Eos), Opts, Eos, Opt, Arg);
convert_type(boolean, "true", _Opt, _Eos) ->
    true;
convert_type(boolean, undefined, _Opt, _Eos) ->
    true;
convert_type(boolean, "false", _Opt, _Eos) ->
    false;
convert_type(boolean, Arg, Opt, Eos) ->
    throw({case Eos of
               {eos, _, _, REC57, _, _, _, _, _, _} ->
                   REC57;
               REC57 ->
                   error({badrecord, REC57})
           end,
           Opt, Arg,
           <<"is not a boolean">>});
convert_type(binary, Arg, _Opt, _Eos) ->
    unicode:characters_to_binary(Arg);
convert_type({binary, Choices}, Arg, Opt, Eos)
    when is_list(Choices), is_binary(hd(Choices)) ->
    Conv = unicode:characters_to_binary(Arg),
    lists:member(Conv, Choices)
    orelse
    throw({case Eos of
               {eos, _, _, REC58, _, _, _, _, _, _} ->
                   REC58;
               REC58 ->
                   error({badrecord, REC58})
           end,
           Opt, Arg,
           <<"is not one of the choices">>}),
    Conv;
convert_type({binary, Re}, Arg, Opt, Eos) ->
    case re:run(Arg, Re) of
        {match, _X} ->
            unicode:characters_to_binary(Arg);
        _ ->
            throw({case Eos of
                       {eos, _, _, REC59, _, _, _, _, _, _} ->
                           REC59;
                       REC59 ->
                           error({badrecord, REC59})
                   end,
                   Opt, Arg,
                   <<"does not match">>})
    end;
convert_type({binary, Re, ReOpt}, Arg, Opt, Eos) ->
    case re:run(Arg, Re, ReOpt) of
        match ->
            unicode:characters_to_binary(Arg);
        {match, _} ->
            unicode:characters_to_binary(Arg);
        _ ->
            throw({case Eos of
                       {eos, _, _, REC60, _, _, _, _, _, _} ->
                           REC60;
                       REC60 ->
                           error({badrecord, REC60})
                   end,
                   Opt, Arg,
                   <<"does not match">>})
    end;
convert_type(float, Arg, Opt, Eos) ->
    get_float(Arg, Opt, Eos);
convert_type({float, Opts}, Arg, Opt, Eos) ->
    minimax(get_float(Arg, Opt, Eos), Opts, Eos, Opt, Arg);
convert_type(atom, Arg, Opt, Eos) ->
    try
        list_to_existing_atom(Arg)
    catch
        error:badarg ->
            throw({case Eos of
                       {eos, _, _, REC61, _, _, _, _, _, _} ->
                           REC61;
                       REC61 ->
                           error({badrecord, REC61})
                   end,
                   Opt, Arg,
                   <<"is not an existing atom">>})
    end;
convert_type({atom, unsafe}, Arg, _Opt, _Eos) ->
    list_to_atom(Arg);
convert_type({atom, Choices}, Arg, Opt, Eos) ->
    try
        Atom = list_to_existing_atom(Arg),
        lists:member(Atom, Choices)
        orelse
        throw({case Eos of
                   {eos, _, _, REC62, _, _, _, _, _, _} ->
                       REC62;
                   REC62 ->
                       error({badrecord, REC62})
               end,
               Opt, Arg,
               <<"is not one of the choices">>}),
        Atom
    catch
        error:badarg ->
            throw({case Eos of
                       {eos, _, _, REC63, _, _, _, _, _, _} ->
                           REC63;
                       REC63 ->
                           error({badrecord, REC63})
                   end,
                   Opt, Arg,
                   <<"is not an existing atom">>})
    end;
convert_type({custom, Fun}, Arg, Opt, Eos) ->
    try
        Fun(Arg)
    catch
        error:badarg ->
            throw({case Eos of
                       {eos, _, _, REC64, _, _, _, _, _, _} ->
                           REC64;
                       REC64 ->
                           error({badrecord, REC64})
                   end,
                   Opt, Arg,
                   <<"failed validation">>})
    end.

minimax(Var, [], _Eos, _Opt, _Orig) ->
    Var;
minimax(Var, [{min, Min} | _], Eos, Opt, Orig) when Var < Min ->
    throw({case Eos of
               {eos, _, _, REC65, _, _, _, _, _, _} ->
                   REC65;
               REC65 ->
                   error({badrecord, REC65})
           end,
           Opt, Orig,
           <<"is less than accepted minimum">>});
minimax(Var, [{max, Max} | _], Eos, Opt, Orig) when Var > Max ->
    throw({case Eos of
               {eos, _, _, REC66, _, _, _, _, _, _} ->
                   REC66;
               REC66 ->
                   error({badrecord, REC66})
           end,
           Opt, Orig,
           <<"is greater than accepted maximum">>});
minimax(Var, [Num | Tail], Eos, Opt, Orig) when is_number(Num) ->
    lists:member(Var, [Num | Tail])
    orelse
    throw({case Eos of
               {eos, _, _, REC67, _, _, _, _, _, _} ->
                   REC67;
               REC67 ->
                   error({badrecord, REC67})
           end,
           Opt, Orig,
           <<"is not one of the choices">>}),
    Var;
minimax(Var, [_ | Tail], Eos, Opt, Orig) ->
    minimax(Var, Tail, Eos, Opt, Orig).

get_int(Arg, Opt, Eos) ->
    case string:to_integer(Arg) of
        {Int, []} ->
            Int;
        _ ->
            throw({case Eos of
                       {eos, _, _, REC68, _, _, _, _, _, _} ->
                           REC68;
                       REC68 ->
                           error({badrecord, REC68})
                   end,
                   Opt, Arg,
                   <<"is not an integer">>})
    end.

get_float(Arg, Opt, Eos) ->
    case string:to_float(Arg) of
        {Float, []} ->
            Float;
        _ ->
            case string:to_integer(Arg) of
                {Int, []} ->
                    Int;
                _ ->
                    throw({case Eos of
                               {eos, _, _, REC69, _, _, _, _, _, _} ->
                                   REC69;
                               REC69 ->
                                   error({badrecord, REC69})
                           end,
                           Opt, Arg,
                           <<"is not a number">>})
            end
    end.

is_digits(String) ->
    case string:to_integer(String) of
        {_Int, []} ->
            true;
        {_, _} ->
            case string:to_float(String) of
                {_Float, []} ->
                    true;
                {_, _} ->
                    false
            end
    end.

default(#{default := Default}) ->
    Default;
default(#{type := boolean}) ->
    true;
default(#{type := integer}) ->
    0;
default(#{type := float}) ->
    0.0;
default(#{type := string}) ->
    "";
default(#{type := binary}) ->
    <<"">>;
default(#{type := atom}) ->
    undefined;
default(_) ->
    undefined.

format_path(Commands) ->
    lists:join(" ", Commands).

executable(#{progname := Prog}) when is_atom(Prog) ->
    atom_to_list(Prog);
executable(#{progname := Prog}) when is_binary(Prog) ->
    binary_to_list(Prog);
executable(#{progname := Prog}) ->
    Prog;
executable(_) ->
    {ok, [[Prog]]} = init:get_argument(progname),
    Prog.

validate_command([{Name, Cmd} | _] = Path, Prefixes) ->
    is_list(Name)
    andalso
    not is_map_key(hd(Name), Prefixes)
    orelse
    error({argparse, command,
           clean_path(tl(Path)),
           commands,
           <<"command name must be a string not starting with option pr"
             "efix">>},
          [Cmd],
          [{error_info, #{cause => #{}}}]),
    is_map(Cmd)
    orelse
    error({argparse, command,
           clean_path(Path),
           commands,
           <<"expected command()">>},
          [Cmd],
          [{error_info, #{cause => #{}}}]),
    is_valid_command_help(maps:get(help, Cmd, []))
    orelse
    error({argparse, command,
           clean_path(Path),
           help,
           <<"must be a printable unicode list, or a command help templ"
             "ate">>},
          [Cmd],
          [{error_info, #{cause => #{}}}]),
    is_map(maps:get(commands, Cmd, #{}))
    orelse
    error({argparse, command,
           clean_path(Path),
           commands,
           <<"expected map of #{string() => command()}">>},
          [Cmd],
          [{error_info, #{cause => #{}}}]),
    case maps:get(handler, Cmd, optional) of
        optional ->
            ok;
        {Mod, ModFun} when is_atom(Mod), is_atom(ModFun) ->
            ok;
        {Mod, ModFun, _} when is_atom(Mod), is_atom(ModFun) ->
            ok;
        {Fun, _} when is_function(Fun) ->
            ok;
        Fun when is_function(Fun, 1) ->
            ok;
        _ ->
            error({argparse, command,
                   clean_path(Path),
                   handler,
                   <<"handler must be a valid callback, or an atom 'opt"
                     "ional'">>},
                  [Cmd],
                  [{error_info, #{cause => #{}}}])
    end,
    Cmd1 =
        case maps:find(arguments, Cmd) of
            error ->
                Cmd;
            {ok, Opts} when not is_list(Opts) ->
                error({argparse, command,
                       clean_path(Path),
                       arguments,
                       <<"expected a list, [argument()]">>},
                      [Cmd],
                      [{error_info, #{cause => #{}}}]);
            {ok, Opts} ->
                Cmd#{arguments =>
                         [ 
                          validate_option(Path, Opt) ||
                              Opt <- Opts
                         ]}
        end,
    lists:foldl(fun({_, #{arguments := Opts}}, Acc) ->
                       lists:foldl(fun(#{short := Short, name := OName} =
                                           Arg,
                                       {AllS, AllL}) ->
                                          is_map_key(Short, AllS)
                                          andalso
                                          error({argparse, argument,
                                                 clean_path(Path),
                                                 short,
                                                 "short conflicting wit"
                                                 "h previously defined "
                                                 "short for "
                                                 ++
                                                 atom_to_list(maps:get(Short,
                                                                       AllS))},
                                                [Arg],
                                                [{error_info,
                                                  #{cause => #{}}}]),
                                          {AllS#{Short => OName}, AllL};
                                      (#{long := Long, name := OName} =
                                           Arg,
                                       {AllS, AllL}) ->
                                          is_map_key(Long, AllL)
                                          andalso
                                          error({argparse, argument,
                                                 clean_path(Path),
                                                 long,
                                                 "long conflicting with"
                                                 " previously defined l"
                                                 "ong for "
                                                 ++
                                                 atom_to_list(maps:get(Long,
                                                                       AllL))},
                                                [Arg],
                                                [{error_info,
                                                  #{cause => #{}}}]),
                                          {AllS, AllL#{Long => OName}};
                                      (_, AccIn) ->
                                          AccIn
                                   end,
                                   Acc, Opts);
                   (_, Acc) ->
                       Acc
                end,
                {#{}, #{}},
                Path),
    case maps:find(commands, Cmd1) of
        error ->
            {Name, Cmd1};
        {ok, Sub} ->
            {Name,
             Cmd1#{commands =>
                       maps:map(fun(K, V) ->
                                       {K, Updated} =
                                           validate_command([{K, V} |
                                                             Path],
                                                            Prefixes),
                                       Updated
                                end,
                                Sub)}}
    end.

validate_option(Path, #{name := Name} = Arg)
    when is_atom(Name); is_list(Name); is_binary(Name) ->
    is_valid_option_help(maps:get(help, Arg, []))
    orelse
    error({argparse, argument,
           clean_path(Path),
           help,
           <<"must be a string or valid help template">>},
          [Arg],
          [{error_info, #{cause => #{}}}]),
    io_lib:printable_unicode_list(maps:get(long, Arg, []))
    orelse
    error({argparse, argument,
           clean_path(Path),
           long,
           <<"must be a printable string">>},
          [Arg],
          [{error_info, #{cause => #{}}}]),
    is_boolean(maps:get(required, Arg, true))
    orelse
    error({argparse, argument,
           clean_path(Path),
           required,
           <<"must be a boolean">>},
          [Arg],
          [{error_info, #{cause => #{}}}]),
    io_lib:printable_unicode_list([maps:get(short, Arg, $a)])
    orelse
    error({argparse, argument,
           clean_path(Path),
           short,
           <<"must be a printable character">>},
          [Arg],
          [{error_info, #{cause => #{}}}]),
    Opt1 = maybe_validate(action, Arg, fun validate_action/3, Path),
    Opt2 = maybe_validate(type, Opt1, fun validate_type/3, Path),
    maybe_validate(nargs, Opt2, fun validate_args/3, Path);
validate_option(Path, Arg) ->
    error({argparse, argument,
           clean_path(Path),
           name,
           <<"argument must be a map containing 'name' field">>},
          [Arg],
          [{error_info, #{cause => #{}}}]).

maybe_validate(Key, Map, Fun, Path) when is_map_key(Key, Map) ->
    maps:put(Key, Fun(maps:get(Key, Map), Path, Map), Map);
maybe_validate(_Key, Map, _Fun, _Path) ->
    Map.

validate_action(store, _Path, _Opt) ->
    store;
validate_action({store, Term}, _Path, _Opt) ->
    {store, Term};
validate_action(append, _Path, _Opt) ->
    append;
validate_action({append, Term}, _Path, _Opt) ->
    {append, Term};
validate_action(count, _Path, _Opt) ->
    count;
validate_action(extend, _Path, #{nargs := Nargs})
    when
        Nargs =:= list;
        Nargs =:= nonempty_list;
        Nargs =:= all;
        is_integer(Nargs) ->
    extend;
validate_action(extend, _Path, #{type := {custom, _}}) ->
    extend;
validate_action(extend, Path, Arg) ->
    error({argparse, argument,
           clean_path(Path),
           action,
           <<"extend action works only with lists">>},
          [Arg],
          [{error_info, #{cause => #{}}}]);
validate_action(_Action, Path, Arg) ->
    error({argparse, argument,
           clean_path(Path),
           action,
           <<"unsupported">>},
          [Arg],
          [{error_info, #{cause => #{}}}]).

validate_type(Simple, _Path, _Opt)
    when
        Simple =:= boolean;
        Simple =:= integer;
        Simple =:= float;
        Simple =:= string;
        Simple =:= binary;
        Simple =:= atom;
        Simple =:= {atom, unsafe} ->
    Simple;
validate_type({custom, Fun}, _Path, _Opt) when is_function(Fun, 1) ->
    {custom, Fun};
validate_type({float, Opts}, Path, Arg) ->
    [ 
     error({argparse, argument,
            clean_path(Path),
            type,
            <<"invalid validator">>},
           [Arg],
           [{error_info, #{cause => #{}}}]) ||
         {Kind, Val} <- Opts,
         Kind =/= min
         andalso
         Kind =/= max
         orelse
         not is_float(Val)
    ],
    {float, Opts};
validate_type({integer, Opts}, Path, Arg) ->
    [ 
     error({argparse, argument,
            clean_path(Path),
            type,
            <<"invalid validator">>},
           [Arg],
           [{error_info, #{cause => #{}}}]) ||
         {Kind, Val} <- Opts,
         Kind =/= min
         andalso
         Kind =/= max
         orelse
         not is_integer(Val)
    ],
    {integer, Opts};
validate_type({atom, Choices} = Valid, Path, Arg) when is_list(Choices) ->
    [ 
     error({argparse, argument,
            clean_path(Path),
            type,
            <<"unsupported">>},
           [Arg],
           [{error_info, #{cause => #{}}}]) ||
         C <- Choices,
         not is_atom(C)
    ],
    Valid;
validate_type({string, Re} = Valid, _Path, _Opt) when is_list(Re) ->
    Valid;
validate_type({string, Re, L} = Valid, _Path, _Opt)
    when is_list(Re), is_list(L) ->
    Valid;
validate_type({binary, Re} = Valid, _Path, _Opt) when is_binary(Re) ->
    Valid;
validate_type({binary, Choices} = Valid, _Path, _Opt)
    when is_list(Choices), is_binary(hd(Choices)) ->
    Valid;
validate_type({binary, Re, L} = Valid, _Path, _Opt)
    when is_binary(Re), is_list(L) ->
    Valid;
validate_type(_Type, Path, Arg) ->
    error({argparse, argument,
           clean_path(Path),
           type,
           <<"unsupported">>},
          [Arg],
          [{error_info, #{cause => #{}}}]).

validate_args(N, _Path, _Opt) when is_integer(N), N >= 1 ->
    N;
validate_args(Simple, _Path, _Opt)
    when
        Simple =:= all;
        Simple =:= list;
        Simple =:= 'maybe';
        Simple =:= nonempty_list ->
    Simple;
validate_args({'maybe', Term}, _Path, _Opt) ->
    {'maybe', Term};
validate_args(_Nargs, Path, Arg) ->
    error({argparse, argument,
           clean_path(Path),
           nargs,
           <<"unsupported">>},
          [Arg],
          [{error_info, #{cause => #{}}}]).

clean_path(Path) ->
    {Cmds, _} = lists:unzip(Path),
    lists:reverse(Cmds).

is_valid_option_help(hidden) ->
    true;
is_valid_option_help(Help) when is_list(Help); is_binary(Help) ->
    true;
is_valid_option_help({Short, Desc})
    when
        is_list(Short)
        orelse
        is_binary(Short),
        is_list(Desc) ->
    lists:all(fun(type) ->
                     true;
                 (default) ->
                     true;
                 (S) when is_list(S); is_binary(S) ->
                     true;
                 (_) ->
                     false
              end,
              Desc);
is_valid_option_help({Short, Desc})
    when
        is_list(Short)
        orelse
        is_binary(Short),
        is_function(Desc, 0) ->
    true;
is_valid_option_help(_) ->
    false.

is_valid_command_help(hidden) ->
    true;
is_valid_command_help(Help) when is_binary(Help) ->
    true;
is_valid_command_help(Help) when is_list(Help) ->
    case io_lib:printable_unicode_list(Help) of
        true ->
            true;
        false ->
            lists:all(fun(Atom)
                             when
                                 Atom =:= usage;
                                 Atom =:= commands;
                                 Atom =:= arguments;
                                 Atom =:= options ->
                             true;
                         (Bin) when is_binary(Bin) ->
                             true;
                         (Str) ->
                             io_lib:printable_unicode_list(Str)
                      end,
                      Help)
    end;
is_valid_command_help(_) ->
    false.

format_help({ProgName, Root}, Format) ->
    Prefix = hd(maps:get(prefixes, Format, [$-])),
    Nested = maps:get(command, Format, []),
    {_CmdName, Cmd, AllArgs} =
        collect_options(ProgName, Root, Nested, []),
    {_, Longest, Flags, Opts, Args, OptL, PosL} =
        lists:foldl(fun format_opt_help/2,
                    {Prefix, 0, "", [], [], [], []},
                    AllArgs),
    Immediate = maps:get(commands, Cmd, #{}),
    {Long, Subs} =
        maps:fold(fun(_Name, #{help := hidden}, {Long, SubAcc}) ->
                         {Long, SubAcc};
                     (Name, Sub, {Long, SubAcc}) ->
                         Help = maps:get(help, Sub, ""),
                         {max(Long, string:length(Name)),
                          [{Name, Help} | SubAcc]}
                  end,
                  {Longest, []},
                  maps:iterator(Immediate, ordered)),
    ShortCmd0 =
        case map_size(Immediate) of
            0 ->
                [];
            Small when Small < 4 ->
                Keys = lists:sort(maps:keys(Immediate)),
                ["{" ++ lists:append(lists:join("|", Keys)) ++ "}"];
            _Largs ->
                ["<command>"]
        end,
    ShortCmd =
        if
            Nested =:= [] ->
                ShortCmd0;
            true ->
                [lists:append(lists:join(" ", Nested)) | ShortCmd0]
        end,
    FlagsForm =
        if
            Flags =:= [] ->
                [];
            true ->
                [unicode:characters_to_list(io_lib:format("[~tc~ts]",
                                                          [Prefix,
                                                           Flags]))]
        end,
    Usage = [ProgName, ShortCmd, FlagsForm, Opts, Args],
    Template0 = get_help(Root, Nested),
    Template =
        case
            Template0 =:= ""
            orelse
            io_lib:printable_unicode_list(Template0)
        of
            true ->
                NL = [io_lib:nl()],
                Template1 = ["Usage:" ++ NL, usage, NL],
                Template2 =
                    maybe_add("~n",
                              Template0,
                              Template0 ++ NL,
                              Template1),
                Template3 =
                    maybe_add("~nSubcommands:~n",
                              Subs, commands, Template2),
                Template4 =
                    maybe_add("~nArguments:~n",
                              PosL, arguments, Template3),
                maybe_add("~nOptional arguments:~n",
                          OptL, options, Template4);
            false ->
                Template0
        end,
    Parts =
        #{usage => Usage,
          commands => {Long, Subs},
          arguments => {Longest, PosL},
          options => {Longest, OptL}},
    Width = maps:get(columns, Format, 80),
    lists:append([ 
                  format_width(maps:find(Part, Parts), Part, Width) ||
                      Part <- Template
                 ]).

collect_options(CmdName, Command, [], Args) ->
    {CmdName, Command, Args ++ maps:get(arguments, Command, [])};
collect_options(CmdName, Command, [Cmd | Tail], Args) ->
    Sub = maps:get(commands, Command),
    SubCmd = maps:get(Cmd, Sub),
    collect_options(CmdName ++ " " ++ Cmd,
                    SubCmd, Tail,
                    Args ++ maps:get(arguments, Command, [])).

get_help(Command, []) ->
    case maps:get(help, Command, "") of
        Help when is_binary(Help) ->
            unicode:characters_to_list(Help);
        Help ->
            Help
    end;
get_help(Command, [Cmd | Tail]) ->
    Sub = maps:get(commands, Command),
    SubCmd = maps:get(Cmd, Sub),
    get_help(SubCmd, Tail).

maybe_add(_ToAdd, [], _Element, Template) ->
    Template;
maybe_add(ToAdd, _List, Element, Template) ->
    Template ++ [io_lib:format(ToAdd, []), Element].

format_width(error, Part, Width) ->
    wrap_text(Part, 0, Width);
format_width({ok, [ProgName, ShortCmd, FlagsForm, Opts, Args]},
             usage, Width) ->
    Words = ShortCmd ++ FlagsForm ++ Opts ++ Args,
    if
        Words =:= [] ->
            io_lib:format("  ~ts", [ProgName]);
        true ->
            Indent = string:length(ProgName),
            Wrapped = wordwrap(Words, Width - Indent, 0, [], []),
            Pad = lists:append(lists:duplicate(Indent + 3, " ")),
            ArgLines = lists:join([io_lib:nl() | Pad], Wrapped),
            io_lib:format("  ~ts~ts", [ProgName, ArgLines])
    end;
format_width({ok, {Len, Texts}}, _Part, Width) ->
    SubFormat = io_lib:format("  ~~-~bts ~~ts~n", [Len]),
    [ 
     io_lib:format(SubFormat, [N, wrap_text(D, Len + 3, Width)]) ||
         {N, D} <- lists:reverse(Texts)
    ].

wrap_text(Text, Indent, Width) ->
    NL = io_lib:nl(),
    Lines = string:split(Text, NL, all),
    Paragraphs =
        lists:append([ 
                      wrap_line(L, Width, Indent) ||
                          L <- Lines
                     ]),
    Pad = lists:append(lists:duplicate(Indent, " ")),
    lists:join([NL | Pad], Paragraphs).

wrap_line([], _Width, _Indent) ->
    [[]];
wrap_line(Line, Width, Indent) ->
    [First | Tail] = string:split(Line, " ", all),
    wordwrap(Tail, Width - Indent, string:length(First), First, []).

wordwrap([], _Max, _Len, [], Lines) ->
    lists:reverse(Lines);
wordwrap([], _Max, _Len, Line, Lines) ->
    lists:reverse([Line | Lines]);
wordwrap([Word | Tail], Max, Len, Line, Lines) ->
    WordLen = string:length(Word),
    case Len + 1 + WordLen > Max of
        true ->
            wordwrap(Tail, Max, WordLen, Word, [Line | Lines]);
        false ->
            wordwrap(Tail, Max,
                     WordLen + 1 + Len,
                     [Line, <<" ">>, Word],
                     Lines)
    end.

format_opt_help(#{help := hidden}, Acc) ->
    Acc;
format_opt_help(Opt, {Prefix, Longest, Flags, Opts, Args, OptL, PosL})
    when
        is_map_key(short, Opt)
        orelse
        is_map_key(long, Opt) ->
    Desc = format_description(Opt),
    RequiresArg = requires_argument(Opt),
    NonOption = maps:get(required, Opt, false) =:= true,
    {Name0, MaybeOpt0} =
        case maps:find(long, Opt) of
            error ->
                {"", []};
            {ok, Long} when NonOption, RequiresArg ->
                FN = [Prefix | Long],
                {FN, [format_required(true, [FN, " "], Opt)]};
            {ok, Long} when RequiresArg ->
                FN = [Prefix | Long],
                {FN, [format_required(false, [FN, " "], Opt)]};
            {ok, Long} when NonOption ->
                FN = [Prefix | Long],
                {FN, [FN]};
            {ok, Long} ->
                FN = [Prefix | Long],
                {FN, [io_lib:format("[~ts]", [FN])]}
        end,
    {Name, MaybeFlag, MaybeOpt1} =
        case maps:find(short, Opt) of
            error ->
                {Name0, [], MaybeOpt0};
            {ok, Short} when RequiresArg ->
                SN = [Prefix, Short],
                {maybe_concat(SN, Name0),
                 [],
                 [format_required(NonOption, [SN, " "], Opt) |
                  MaybeOpt0]};
            {ok, Short} ->
                {maybe_concat([Prefix, Short], Name0),
                 [Short],
                 MaybeOpt0}
        end,
    MaybeOpt2 =
        case maps:find(help, Opt) of
            {ok, {Str, _}} ->
                [Str];
            _ ->
                MaybeOpt1
        end,
    NameLen = string:length(Name),
    Capped = min(24, NameLen),
    {Prefix,
     max(Capped, Longest),
     Flags ++ MaybeFlag,
     Opts ++ MaybeOpt2,
     Args,
     [{Name, Desc} | OptL],
     PosL};
format_opt_help(#{name := Name} = Opt,
                {Prefix, Longest, Flags, Opts, Args, OptL, PosL}) ->
    Desc = format_description(Opt),
    LName = io_lib:format("~ts", [Name]),
    LPos =
        case maps:find(help, Opt) of
            {ok, {Str, _}} ->
                Str;
            _ ->
                format_required(maps:get(required, Opt, true), "", Opt)
        end,
    {Prefix,
     max(Longest, string:length(LName)),
     Flags, Opts,
     Args ++ [LPos],
     OptL,
     [{LName, Desc} | PosL]}.

format_description(#{help := {_Short, Fun}}) when is_function(Fun, 0) ->
    Fun();
format_description(#{help := {_Short, Desc}} = Opt) ->
    lists:map(fun(type) ->
                     format_type(Opt);
                 (default) ->
                     format_default(Opt);
                 (String) ->
                     String
              end,
              Desc);
format_description(#{name := Name} = Opt) ->
    NameStr = maps:get(help, Opt, io_lib:format("~ts", [Name])),
    case {NameStr, format_type(Opt), format_default(Opt)} of
        {"", "", Type} ->
            Type;
        {"", Default, ""} ->
            Default;
        {Desc, "", ""} ->
            Desc;
        {Desc, "", Default} ->
            [Desc, " , default: ", Default];
        {Desc, Type, ""} ->
            [Desc, " (", Type, ")"];
        {"", Type, Default} ->
            [Type, ", default: ", Default];
        {Desc, Type, Default} ->
            [Desc, " (", Type, "), default: ", Default]
    end.

maybe_concat(No, []) ->
    No;
maybe_concat(No, L) ->
    [No, ", ", L].

format_required(true, Extra, #{name := Name} = Opt) ->
    io_lib:format("~ts<~ts>~ts", [Extra, Name, format_nargs(Opt)]);
format_required(false, Extra, #{name := Name} = Opt) ->
    io_lib:format("[~ts<~ts>~ts]", [Extra, Name, format_nargs(Opt)]).

format_nargs(#{nargs := Dots})
    when Dots =:= list; Dots =:= all; Dots =:= nonempty_list ->
    "...";
format_nargs(_) ->
    "".

format_type(#{type := {integer, Choices}})
    when is_list(Choices), is_integer(hd(Choices)) ->
    io_lib:format("choice: ~s",
                  [lists:join(", ",
                              [ 
                               integer_to_list(C) ||
                                   C <- Choices
                              ])]);
format_type(#{type := {float, Choices}})
    when is_list(Choices), is_number(hd(Choices)) ->
    io_lib:format("choice: ~s",
                  [lists:join(", ",
                              [ 
                               io_lib:format("~g", [C]) ||
                                   C <- Choices
                              ])]);
format_type(#{type := {Num, Valid}}) when Num =:= integer; Num =:= float ->
    case
        {proplists:get_value(min, Valid),
         proplists:get_value(max, Valid)}
    of
        {undefined, undefined} ->
            io_lib:format("~s", [format_type(#{type => Num})]);
        {Min, undefined} ->
            io_lib:format("~s >= ~tp",
                          [format_type(#{type => Num}), Min]);
        {undefined, Max} ->
            io_lib:format("~s <= ~tp",
                          [format_type(#{type => Num}), Max]);
        {Min, Max} ->
            io_lib:format("~tp <= ~s <= ~tp",
                          [Min, format_type(#{type => Num}), Max])
    end;
format_type(#{type := {string, Re, _}})
    when is_list(Re), not is_list(hd(Re)) ->
    io_lib:format("string re: ~ts", [Re]);
format_type(#{type := {string, Re}})
    when is_list(Re), not is_list(hd(Re)) ->
    io_lib:format("string re: ~ts", [Re]);
format_type(#{type := {binary, Re}}) when is_binary(Re) ->
    io_lib:format("binary re: ~ts", [Re]);
format_type(#{type := {binary, Re, _}}) when is_binary(Re) ->
    io_lib:format("binary re: ~ts", [Re]);
format_type(#{type := {StrBin, Choices}})
    when
        StrBin =:= string
        orelse
        StrBin =:= binary,
        is_list(Choices) ->
    io_lib:format("choice: ~ts", [lists:join(", ", Choices)]);
format_type(#{type := atom}) ->
    "existing atom";
format_type(#{type := {atom, unsafe}}) ->
    "atom";
format_type(#{type := {atom, Choices}}) ->
    io_lib:format("choice: ~ts",
                  [lists:join(", ",
                              [ 
                               atom_to_list(C) ||
                                   C <- Choices
                              ])]);
format_type(#{type := boolean}) ->
    "";
format_type(#{type := integer}) ->
    "int";
format_type(#{type := Type}) when is_atom(Type) ->
    io_lib:format("~ts", [Type]);
format_type(_Opt) ->
    "".

format_default(#{default := Def})
    when is_list(Def); is_binary(Def); is_atom(Def) ->
    io_lib:format("~ts", [Def]);
format_default(#{default := Def}) ->
    io_lib:format("~tp", [Def]);
format_default(_) ->
    "".

handle(CmdMap, ArgMap, Path, #{handler := {Mod, ModFun, Default}}) ->
    ArgList = arg_map_to_arg_list(CmdMap, Path, ArgMap, Default),
    apply(Mod, ModFun, ArgList);
handle(_CmdMap, ArgMap, _Path, #{handler := {Mod, ModFun}})
    when is_atom(Mod), is_atom(ModFun) ->
    Mod:ModFun(ArgMap);
handle(CmdMap, ArgMap, Path, #{handler := {Fun, Default}})
    when is_function(Fun) ->
    ArgList = arg_map_to_arg_list(CmdMap, Path, ArgMap, Default),
    apply(Fun, ArgList);
handle(_CmdMap, ArgMap, _Path, #{handler := Handler})
    when is_function(Handler, 1) ->
    Handler(ArgMap).

arg_map_to_arg_list(Command, Path, ArgMap, Default) ->
    AllArgs = collect_arguments(Command, Path, []),
    [ 
     maps:get(Arg, ArgMap, Default) ||
         #{name := Arg} <- AllArgs
    ].

collect_arguments(Command, [], Acc) ->
    Acc ++ maps:get(arguments, Command, []);
collect_arguments(Command, [H | Tail], Acc) ->
    Args = maps:get(arguments, Command, []),
    Next = maps:get(H, maps:get(commands, Command, H)),
    collect_arguments(Next, Tail, Acc ++ Args).



