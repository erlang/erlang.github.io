-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.1.2/src/erl_compile.erl",
      1).

-module(erl_compile).

-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.1.2/include/erl_compile.h"
      "rl",
      1).

-record(options,{includes = [] :: [file:filename()],
                 outdir = "." :: file:filename(),
                 output_type = undefined :: atom(),
                 defines = [] :: [atom() | {atom(), _}],
                 warning = 1 :: non_neg_integer(),
                 verbose = false :: boolean(),
                 optimize = 999,
                 specific = [] :: [_],
                 outfile = "" :: file:filename(),
                 cwd :: file:filename()}).

-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.1.2/src/erl_compile.erl",
      24).

-file("/buildroot/otp/Erlang ∅⊤℞/lib/kernel-10.1.1/include/file.hrl", 1).

-record(file_info,{size :: non_neg_integer() | undefined,
                   type ::
                       device | directory | other | regular | symlink |
                       undefined,
                   access ::
                       read | write | read_write | none | undefined,
                   atime ::
                       file:date_time() | non_neg_integer() | undefined,
                   mtime ::
                       file:date_time() | non_neg_integer() | undefined,
                   ctime ::
                       file:date_time() | non_neg_integer() | undefined,
                   mode :: non_neg_integer() | undefined,
                   links :: non_neg_integer() | undefined,
                   major_device :: non_neg_integer() | undefined,
                   minor_device :: non_neg_integer() | undefined,
                   inode :: non_neg_integer() | undefined,
                   uid :: non_neg_integer() | undefined,
                   gid :: non_neg_integer() | undefined}).

-record(file_descriptor,{module :: module(), data :: term()}).

-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.1.2/src/erl_compile.erl",
      25).

-export([compile_cmdline/0,compile/2]).

compiler(".erl") ->
    {compile, compile};
compiler(".S") ->
    {compile, compile_asm};
compiler(".abstr") ->
    {compile, compile_abstr};
compiler(".core") ->
    {compile, compile_core};
compiler(".mib") ->
    {snmpc, compile};
compiler(".bin") ->
    {snmpc, mib_to_hrl};
compiler(".xrl") ->
    {leex, compile};
compiler(".yrl") ->
    {yecc, compile};
compiler(".script") ->
    {systools, script2boot};
compiler(".rel") ->
    {systools, compile_rel};
compiler(".idl") ->
    {ic, compile};
compiler(".asn1") ->
    {asn1ct, compile_asn1};
compiler(".asn") ->
    {asn1ct, compile_asn};
compiler(".py") ->
    {asn1ct, compile_py};
compiler(_) ->
    no.

-spec compile_cmdline() -> no_return().

compile_cmdline() ->
    cmdline_init(),
    List = init:get_plain_arguments(),
    compile_cmdline1(List).

-spec compile(list(), file:filename()) ->
                 ok |
                 {error, binary()} |
                 {crash, {atom(), term(), term()}}.

compile(Args, Cwd) ->
    try
        compile1(Args,
                 {options, [], Cwd, undefined, [], 1, false, 999, [],
                  "",
                  Cwd})
    of
        ok ->
            ok
    catch
        throw:{error, Output} ->
            {error, unicode:characters_to_binary(Output)};
        C:E:Stk ->
            {crash, {C, E, Stk}}
    end.

compile_cmdline1(Args) ->
    {ok, Cwd} = file:get_cwd(),
    {Pid, Ref} =
        spawn_monitor(fun() ->
                             exit(compile(Args, Cwd))
                      end),
    receive
        {'DOWN', Ref, process, Pid, Result} ->
            case Result of
                ok ->
                    halt(0);
                {error, Output} ->
                    io:put_chars(standard_error, Output),
                    halt(1);
                {crash, {C, E, Stk}} ->
                    io:format(standard_error,
                              "Crash: ~p:~tp\n~tp\n",
                              [C, E, Stk]),
                    halt(2)
            end
    end.

cmdline_init() ->
    Path =
        [ 
         D ||
             D <- code:get_path(),
             D =/= "."
        ],
    true = code:set_path(Path),
    ok.

compile1(["--" | Files], Opts) ->
    compile2(Files, Opts);
compile1(["-" ++ Option | T], Opts) ->
    parse_generic_option(Option, T, Opts);
compile1(["+" ++ Option | Rest], Opts) ->
    Term = make_term(Option),
    Specific =
        case Opts of
            {options, _, _, _, _, _, _, _, REC0, _, _} ->
                REC0;
            REC0 ->
                error({badrecord, REC0})
        end,
    compile1(Rest,
             begin
                 REC1 = Specific ++ [Term],
                 REC2 = Opts,
                 case REC2 of
                     {options, _, _, _, _, _, _, _, _, _, _} ->
                         setelement(9, REC2, REC1);
                     _ ->
                         error({badrecord, REC2})
                 end
             end);
compile1(Files, Opts) ->
    compile2(Files, Opts).

parse_generic_option("b" ++ Opt, T0, Opts) ->
    {OutputType, T} = get_option("b", Opt, T0),
    compile1(T,
             begin
                 REC3 = list_to_atom(OutputType),
                 REC4 = Opts,
                 case REC4 of
                     {options, _, _, _, _, _, _, _, _, _, _} ->
                         setelement(4, REC4, REC3);
                     _ ->
                         error({badrecord, REC4})
                 end
             end);
parse_generic_option("D" ++ Opt,
                     T0,
                     {options, _, _, _, Defs, _, _, _, _, _, _} = Opts) ->
    {Val0, T} = get_option("D", Opt, T0),
    {Key0, Val1} = split_at_equals(Val0, []),
    Key = list_to_atom(Key0),
    case Val1 of
        [] ->
            compile1(T,
                     begin
                         REC5 = [Key | Defs],
                         REC6 = Opts,
                         case REC6 of
                             {options, _, _, _, _, _, _, _, _, _, _} ->
                                 setelement(5, REC6, REC5);
                             _ ->
                                 error({badrecord, REC6})
                         end
                     end);
        Val2 ->
            Val = make_term(Val2),
            compile1(T,
                     begin
                         REC7 = [{Key, Val} | Defs],
                         REC8 = Opts,
                         case REC8 of
                             {options, _, _, _, _, _, _, _, _, _, _} ->
                                 setelement(5, REC8, REC7);
                             _ ->
                                 error({badrecord, REC8})
                         end
                     end)
    end;
parse_generic_option("help", _, _Opts) ->
    usage();
parse_generic_option("I" ++ Opt,
                     T0,
                     {options, _, _, _, _, _, _, _, _, _, Cwd} = Opts) ->
    {Dir, T} = get_option("I", Opt, T0),
    AbsDir = filename:absname(Dir, Cwd),
    compile1(T,
             begin
                 REC9 =
                     [AbsDir |
                      case Opts of
                          {options, REC11, _, _, _, _, _, _, _, _, _} ->
                              REC11;
                          REC11 ->
                              error({badrecord, REC11})
                      end],
                 REC10 = Opts,
                 case REC10 of
                     {options, _, _, _, _, _, _, _, _, _, _} ->
                         setelement(2, REC10, REC9);
                     _ ->
                         error({badrecord, REC10})
                 end
             end);
parse_generic_option("M" ++ Opt,
                     T0,
                     {options, _, _, _, _, _, _, _, Spec, _, _} = Opts) ->
    {SpecOpts, T} = parse_dep_option(Opt, T0),
    compile1(T,
             begin
                 REC12 = SpecOpts ++ Spec,
                 REC13 = Opts,
                 case REC13 of
                     {options, _, _, _, _, _, _, _, _, _, _} ->
                         setelement(9, REC13, REC12);
                     _ ->
                         error({badrecord, REC13})
                 end
             end);
parse_generic_option("o" ++ Opt,
                     T0,
                     {options, _, _, _, _, _, _, _, _, _, Cwd} = Opts) ->
    {Dir, T} = get_option("o", Opt, T0),
    AbsName = filename:absname(Dir, Cwd),
    case file_or_directory(AbsName) of
        file ->
            compile1(T,
                     begin
                         REC14 = Opts,
                         case REC14 of
                             {options, _, _, _, _, _, _, _, _, _, _} ->
                                 setelement(10, REC14, AbsName);
                             _ ->
                                 error({badrecord, REC14})
                         end
                     end);
        directory ->
            compile1(T,
                     begin
                         REC15 = Opts,
                         case REC15 of
                             {options, _, _, _, _, _, _, _, _, _, _} ->
                                 setelement(3, REC15, AbsName);
                             _ ->
                                 error({badrecord, REC15})
                         end
                     end)
    end;
parse_generic_option("O" ++ Opt, T, Opts) ->
    case Opt of
        "" ->
            compile1(T,
                     begin
                         REC16 = Opts,
                         case REC16 of
                             {options, _, _, _, _, _, _, _, _, _, _} ->
                                 setelement(8, REC16, 1);
                             _ ->
                                 error({badrecord, REC16})
                         end
                     end);
        _ ->
            Term = make_term(Opt),
            compile1(T,
                     begin
                         REC17 = Opts,
                         case REC17 of
                             {options, _, _, _, _, _, _, _, _, _, _} ->
                                 setelement(8, REC17, Term);
                             _ ->
                                 error({badrecord, REC17})
                         end
                     end)
    end;
parse_generic_option("v", T, Opts) ->
    compile1(T,
             begin
                 REC18 = Opts,
                 case REC18 of
                     {options, _, _, _, _, _, _, _, _, _, _} ->
                         setelement(7, REC18, true);
                     _ ->
                         error({badrecord, REC18})
                 end
             end);
parse_generic_option("W" ++ Warn,
                     T,
                     {options, _, _, _, _, _, _, _, Spec, _, _} = Opts) ->
    case Warn of
        "all" ->
            compile1(T,
                     begin
                         REC19 = Opts,
                         case REC19 of
                             {options, _, _, _, _, _, _, _, _, _, _} ->
                                 setelement(6, REC19, 999);
                             _ ->
                                 error({badrecord, REC19})
                         end
                     end);
        "error" ->
            compile1(T,
                     begin
                         REC20 = [warnings_as_errors | Spec],
                         REC21 = Opts,
                         case REC21 of
                             {options, _, _, _, _, _, _, _, _, _, _} ->
                                 setelement(9, REC21, REC20);
                             _ ->
                                 error({badrecord, REC21})
                         end
                     end);
        "" ->
            compile1(T,
                     begin
                         REC22 = Opts,
                         case REC22 of
                             {options, _, _, _, _, _, _, _, _, _, _} ->
                                 setelement(6, REC22, 1);
                             _ ->
                                 error({badrecord, REC22})
                         end
                     end);
        _ ->
            try list_to_integer(Warn) of
                Level ->
                    compile1(T,
                             begin
                                 REC23 = Opts,
                                 case REC23 of
                                     {options, _, _, _, _, _, _, _, _,
                                      _, _} ->
                                         setelement(6, REC23, Level);
                                     _ ->
                                         error({badrecord, REC23})
                                 end
                             end)
            catch
                error:badarg ->
                    usage()
            end
    end;
parse_generic_option("E",
                     T,
                     {options, _, _, _, _, _, _, _, Spec, _, _} = Opts) ->
    compile1(T,
             begin
                 REC24 = ['E' | Spec],
                 REC25 = Opts,
                 case REC25 of
                     {options, _, _, _, _, _, _, _, _, _, _} ->
                         setelement(9, REC25, REC24);
                     _ ->
                         error({badrecord, REC25})
                 end
             end);
parse_generic_option("P",
                     T,
                     {options, _, _, _, _, _, _, _, Spec, _, _} = Opts) ->
    compile1(T,
             begin
                 REC26 = ['P' | Spec],
                 REC27 = Opts,
                 case REC27 of
                     {options, _, _, _, _, _, _, _, _, _, _} ->
                         setelement(9, REC27, REC26);
                     _ ->
                         error({badrecord, REC27})
                 end
             end);
parse_generic_option("S",
                     T,
                     {options, _, _, _, _, _, _, _, Spec, _, _} = Opts) ->
    compile1(T,
             begin
                 REC28 = ['S' | Spec],
                 REC29 = Opts,
                 case REC29 of
                     {options, _, _, _, _, _, _, _, _, _, _} ->
                         setelement(9, REC29, REC28);
                     _ ->
                         error({badrecord, REC29})
                 end
             end);
parse_generic_option("enable-feature" ++ Str,
                     T0,
                     {options, _, _, _, _, _, _, _, Spec, _, _} = Opts) ->
    {FtrStr, T} = get_option("enable-feature", Str, T0),
    Feature = list_to_atom(FtrStr),
    compile1(T,
             begin
                 REC30 = Spec ++ [{feature, Feature, enable}],
                 REC31 = Opts,
                 case REC31 of
                     {options, _, _, _, _, _, _, _, _, _, _} ->
                         setelement(9, REC31, REC30);
                     _ ->
                         error({badrecord, REC31})
                 end
             end);
parse_generic_option("disable-feature" ++ Str,
                     T0,
                     {options, _, _, _, _, _, _, _, Spec, _, _} = Opts) ->
    {FtrStr, T} = get_option("disable-feature", Str, T0),
    Feature = list_to_atom(FtrStr),
    compile1(T,
             begin
                 REC32 = Spec ++ [{feature, Feature, disable}],
                 REC33 = Opts,
                 case REC33 of
                     {options, _, _, _, _, _, _, _, _, _, _} ->
                         setelement(9, REC33, REC32);
                     _ ->
                         error({badrecord, REC33})
                 end
             end);
parse_generic_option("describe-feature" ++ Str,
                     T0,
                     {options, _, _, _, _, _, _, _, Spec, _, _} = Opts) ->
    {FtrStr, T} = get_option("disable-feature", Str, T0),
    Feature = list_to_atom(FtrStr),
    compile1(T,
             begin
                 REC34 = [{describe_feature, Feature} | Spec],
                 REC35 = Opts,
                 case REC35 of
                     {options, _, _, _, _, _, _, _, _, _, _} ->
                         setelement(9, REC35, REC34);
                     _ ->
                         error({badrecord, REC35})
                 end
             end);
parse_generic_option("list-features",
                     T,
                     {options, _, _, _, _, _, _, _, Spec, _, _} = Opts) ->
    compile1(T,
             begin
                 REC36 = [{list_features, true} | Spec],
                 REC37 = Opts,
                 case REC37 of
                     {options, _, _, _, _, _, _, _, _, _, _} ->
                         setelement(9, REC37, REC36);
                     _ ->
                         error({badrecord, REC37})
                 end
             end);
parse_generic_option(Option, _T, _Opts) ->
    usage(io_lib:format("Unknown option: -~ts\n", [Option])).

parse_dep_option("", T) ->
    {[makedep, {makedep_output, standard_io}], T};
parse_dep_option("D", T) ->
    {[makedep], T};
parse_dep_option("MD", T) ->
    {[makedep_side_effect], T};
parse_dep_option("F" ++ Opt, T0) ->
    {File, T} = get_option("MF", Opt, T0),
    {[makedep, {makedep_output, File}], T};
parse_dep_option("G", T) ->
    {[makedep_add_missing], T};
parse_dep_option("P", T) ->
    {[makedep_phony], T};
parse_dep_option("Q" ++ Opt, T0) ->
    {Target, T} = get_option("MT", Opt, T0),
    {[makedep_quote_target, {makedep_target, Target}], T};
parse_dep_option("T" ++ Opt, T0) ->
    {Target, T} = get_option("MT", Opt, T0),
    {[{makedep_target, Target}], T};
parse_dep_option(Opt, _T) ->
    usage(io_lib:format("Unknown option: -M~ts\n", [Opt])).

-spec usage() -> no_return().

usage() ->
    usage("").

usage(Error) ->
    H = [{"-b type", "type of output file (e.g. beam)"},
         {"-d", "turn on debugging of erlc itself"},
         {"-Dname", "define name"},
         {"-Dname=value", "define name to have value"},
         {"-help", "shows this help text"},
         {"-I path", "where to search for include files"},
         {"-M",
          "generate a rule for make(1) describing the dependencies"},
         {"-MF file", "write the dependencies to 'file'"},
         {"-MT target",
          "change the target of the rule emitted by dependency generati"
          "on"},
         {"-MQ target",
          "same as -MT but quote characters special to make(1)"},
         {"-MG",
          "consider missing headers as generated files and add them to "
          "the dependencies"},
         {"-MP", "add a phony target for each dependency"},
         {"-MD", "same as -M -MT file (with default 'file')"},
         {"-MMD", "generate dependencies as a side-effect"},
         {"-o name", "name output directory or file"},
         {"-pa path", "add path to the front of Erlang's code path"},
         {"-pz path", "add path to the end of Erlang's code path"},
         {"-v", "verbose compiler output"},
         {"-Werror", "make all warnings into errors"},
         {"-W0", "disable warnings"},
         {"-Wnumber", "set warning level to number"},
         {"-Wall", "enable all warnings"},
         {"-W", "enable warnings (default; same as -W1)"},
         {"-E", "generate listing of expanded code (Erlang compiler)"},
         {"-S", "generate assembly listing (Erlang compiler)"},
         {"-P",
          "generate listing of preprocessed code (Erlang compiler)"},
         {"-enable-feature <feature>",
          "enable <feature> when compiling (Erlang compiler)"},
         {"-disable-feature <feature>",
          "disable <feature> when compiling (Erlang compiler)"},
         {"-list-features",
          "list short descriptions of available features (Erlang compil"
          "er)"},
         {"-describe-feature <feature>",
          "show long description of <feature>"},
         {"+term", "pass the Erlang term unchanged to the compiler"}],
    Fmt =
        fun(K, D) when length(K) < 15 ->
               io_lib:format("~-14s ~s\n", [K, D]);
           (K, D) ->
               io_lib:format("~s\n~-14s ~s\n", [K, "", D])
        end,
    Msg =
        [Error,
         "Usage: erlc [Options] file.ext ...\n",
         "Options:\n",
         [ 
          Fmt(K, D) ||
              {K, D} <- H
         ]],
    throw({error, Msg}).

get_option(_Name, [], [[C | _] = Option | T]) when C =/= $- ->
    {Option, T};
get_option(_Name, [_ | _] = Option, T) ->
    {Option, T};
get_option(Name, _, _) ->
    throw({error, "No value given to -" ++ Name ++ " option\n"}).

split_at_equals([$= | T], Acc) ->
    {lists:reverse(Acc), T};
split_at_equals([H | T], Acc) ->
    split_at_equals(T, [H | Acc]);
split_at_equals([], Acc) ->
    {lists:reverse(Acc), []}.

compile2(Files,
         {options, Incl, _, _, _, _, _, _, _, Outfile, Cwd} = Opts0) ->
    case show_info(Opts0) of
        {ok, Msg} ->
            throw({error, Msg});
        false ->
            Opts =
                begin
                    REC38 = lists:reverse(Incl),
                    REC39 = Opts0,
                    case REC39 of
                        {options, _, _, _, _, _, _, _, _, _, _} ->
                            setelement(2, REC39, REC38);
                        _ ->
                            error({badrecord, REC39})
                    end
                end,
            case {Outfile, length(Files)} of
                {"", _} ->
                    compile3(Files, Cwd, Opts);
                {[_ | _], 1} ->
                    compile3(Files, Cwd, Opts);
                {[_ | _], _N} ->
                    throw({error,
                           "Output file name given, but more than one i"
                           "nput file.\n"})
            end
    end.

compile3([File | Rest], Cwd, Options) ->
    Ext = filename:extension(File),
    Root = filename:rootname(File),
    InFile = filename:absname(Root, Cwd),
    OutFile =
        case
            case Options of
                {options, _, _, _, _, _, _, _, _, REC40, _} ->
                    REC40;
                REC40 ->
                    error({badrecord, REC40})
            end
        of
            "" ->
                filename:join(case Options of
                                  {options, _, REC41, _, _, _, _, _, _,
                                   _, _} ->
                                      REC41;
                                  REC41 ->
                                      error({badrecord, REC41})
                              end,
                              filename:basename(Root));
            Outfile ->
                filename:rootname(Outfile)
        end,
    compile_file(Ext, InFile, OutFile, Options),
    compile3(Rest, Cwd, Options);
compile3([], _Cwd, _Options) ->
    ok.

show_info({options, _, _, _, _, _, _, _, Spec, _, _}) ->
    G = fun G0([]) ->
                undefined;
            G0([E | Es]) ->
                case proplists:get_value(E, Spec) of
                    undefined ->
                        G0(Es);
                    V ->
                        {E, V}
                end
        end,
    case G([list_features, describe_feature]) of
        {list_features, true} ->
            Features = erl_features:configurable(),
            Msg =
                ["Available features:\n",
                 [ 
                  io_lib:format(" ~-18s ~s\n",
                                [Ftr, erl_features:short(Ftr)]) ||
                      Ftr <- Features
                 ]],
            {ok, Msg};
        {describe_feature, Ftr} ->
            Description =
                try
                    erl_features:long(Ftr)
                catch
                    error:invalid_feature ->
                        io_lib:format("Unknown feature: ~p\n", [Ftr])
                end,
            {ok, Description};
        _ ->
            false
    end.

compile_file("", Input, _Output, _Options) ->
    throw({error,
           io_lib:format("File has no extension: ~ts~n", [Input])});
compile_file(Ext, Input, Output, Options) ->
    case compiler(Ext) of
        no ->
            Error = io_lib:format("Unknown extension: '~ts'\n", [Ext]),
            throw({error, Error});
        {M, F} ->
            try M:F(Input, Output, Options) of
                ok ->
                    ok;
                error ->
                    throw({error, ""});
                Other ->
                    Error =
                        io_lib:format("Compiler function ~w:~w/3 return"
                                      "ed:\n~tp~n",
                                      [M, F, Other]),
                    throw({error, Error})
            catch
                throw:Reason:Stk ->
                    Error =
                        io_lib:format("Compiler function ~w:~w/3 failed"
                                      ":\n~tp\n~tp\n",
                                      [M, F, Reason, Stk]),
                    throw({error, Error})
            end
    end.

file_or_directory(Name) ->
    case file:read_file_info(Name) of
        {ok, {file_info, _, regular, _, _, _, _, _, _, _, _, _, _, _}} ->
            file;
        {ok, _} ->
            directory;
        {error, _} ->
            case filename:extension(Name) of
                [] ->
                    directory;
                _Other ->
                    file
            end
    end.

make_term(Str) ->
    case erl_scan:string(Str) of
        {ok, Tokens, _} ->
            case
                erl_parse:parse_term(Tokens ++ [{dot, erl_anno:new(1)}])
            of
                {ok, Term} ->
                    Term;
                {error, {_, _, Reason}} ->
                    throw({error,
                           io_lib:format("~ts: ~ts~n", [Reason, Str])})
            end;
        {error, {_, _, Reason}, _} ->
            throw({error, io_lib:format("~ts: ~ts~n", [Reason, Str])})
    end.



