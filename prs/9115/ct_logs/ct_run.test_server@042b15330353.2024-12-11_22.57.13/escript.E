-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.2/src/escript.erl", 1).

-module(escript).

-export([script_name/0,create/2,extract/2]).

-export([start/0,start/1,parse_file/1]).

-type mode() :: compile | debug | interpret | run.

-type source() :: archive | beam | text.

-record(state,{file :: file:filename(),
               module :: module(),
               forms_or_bin,
               source :: source() | undefined,
               n_errors :: non_neg_integer(),
               mode :: mode(),
               exports_main :: boolean(),
               has_records :: boolean()}).

-type shebang() :: string().

-type comment() :: string().

-type emu_args() :: string().

-record(sections,{type,
                  shebang :: shebang() | undefined,
                  comment :: comment() | undefined,
                  emu_args :: emu_args() | undefined,
                  body}).

-record(extract_options,{compile_source}).

-type zip_file() ::
          zip:filename() |
          {zip:filename(), binary()} |
          {zip:filename(), binary(), file:file_info()}.

-type section() ::
          shebang |
          {shebang, shebang() | default | undefined} |
          comment |
          {comment, comment() | default | undefined} |
          {emu_args, emu_args() | undefined} |
          {source, file:filename() | binary()} |
          {beam, file:filename() | binary()} |
          {archive, zip:filename() | binary()} |
          {archive, [zip_file()], [zip:create_option()]}.

-spec create(file:filename() | binary(), [section()]) ->
                ok | {ok, binary()} | {error, term()}.

create(File, Options) when is_list(Options) ->
    try
        S = prepare(Options,
                    {sections, undefined, undefined, undefined,
                     undefined, undefined}),
        BinList =
            [ 
             Section ||
                 Section <-
                     [case S of
                          {sections, _, REC0, _, _, _} ->
                              REC0;
                          REC0 ->
                              error({badrecord, REC0})
                      end,
                      case S of
                          {sections, _, _, REC1, _, _} ->
                              REC1;
                          REC1 ->
                              error({badrecord, REC1})
                      end,
                      case S of
                          {sections, _, _, _, REC2, _} ->
                              REC2;
                          REC2 ->
                              error({badrecord, REC2})
                      end,
                      case S of
                          {sections, _, _, _, _, REC3} ->
                              REC3;
                          REC3 ->
                              error({badrecord, REC3})
                      end],
                 Section =/= undefined
            ],
        case File of
            binary ->
                {ok, list_to_binary(BinList)};
            _ ->
                case file:write_file(File, BinList) of
                    ok ->
                        ok;
                    {error, Reason} ->
                        {error, {Reason, File}}
                end
        end
    catch
        throw:PrepareReason ->
            {error, PrepareReason}
    end.

prepare([H | T], S) ->
    case H of
        {shebang, undefined} ->
            prepare(T, S);
        shebang ->
            prepare(T,
                    begin
                        REC4 = "#!" ++ "/usr/bin/env escript" ++ "\n",
                        REC5 = S,
                        case REC5 of
                            {sections, _, _, _, _, _} ->
                                setelement(3, REC5, REC4);
                            _ ->
                                error({badrecord, REC5})
                        end
                    end);
        {shebang, default} ->
            prepare(T,
                    begin
                        REC6 = "#!" ++ "/usr/bin/env escript" ++ "\n",
                        REC7 = S,
                        case REC7 of
                            {sections, _, _, _, _, _} ->
                                setelement(3, REC7, REC6);
                            _ ->
                                error({badrecord, REC7})
                        end
                    end);
        {shebang, Shebang} when is_list(Shebang) ->
            prepare(T,
                    begin
                        REC8 = "#!" ++ Shebang ++ "\n",
                        REC9 = S,
                        case REC9 of
                            {sections, _, _, _, _, _} ->
                                setelement(3, REC9, REC8);
                            _ ->
                                error({badrecord, REC9})
                        end
                    end);
        {comment, undefined} ->
            prepare(T, S);
        comment ->
            prepare(T,
                    begin
                        REC10 =
                            "%% "
                            ++
                            "This is an -*- erlang -*- file" ++ "\n",
                        REC11 = S,
                        case REC11 of
                            {sections, _, _, _, _, _} ->
                                setelement(4, REC11, REC10);
                            _ ->
                                error({badrecord, REC11})
                        end
                    end);
        {comment, default} ->
            prepare(T,
                    begin
                        REC12 =
                            "%% "
                            ++
                            "This is an -*- erlang -*- file" ++ "\n",
                        REC13 = S,
                        case REC13 of
                            {sections, _, _, _, _, _} ->
                                setelement(4, REC13, REC12);
                            _ ->
                                error({badrecord, REC13})
                        end
                    end);
        {comment, Comment} when is_list(Comment) ->
            prepare(T,
                    begin
                        REC14 = "%% " ++ Comment ++ "\n",
                        REC15 = S,
                        case REC15 of
                            {sections, _, _, _, _, _} ->
                                setelement(4, REC15, REC14);
                            _ ->
                                error({badrecord, REC15})
                        end
                    end);
        {emu_args, undefined} ->
            prepare(T, S);
        {emu_args, Args} when is_list(Args) ->
            prepare(T,
                    begin
                        REC16 = "%%!" ++ Args ++ "\n",
                        REC17 = S,
                        case REC17 of
                            {sections, _, _, _, _, _} ->
                                setelement(5, REC17, REC16);
                            _ ->
                                error({badrecord, REC17})
                        end
                    end);
        {Type, File} when is_list(File) ->
            case file:read_file(File) of
                {ok, Bin} ->
                    prepare(T,
                            begin
                                REC18 = S,
                                case REC18 of
                                    {sections, _, _, _, _, _} ->
                                        setelement(2,
                                                   setelement(6, REC18,
                                                              Bin),
                                                   Type);
                                    _ ->
                                        error({badrecord, REC18})
                                end
                            end);
                {error, Reason} ->
                    throw({Reason, H})
            end;
        {Type, Bin} when is_binary(Bin) ->
            prepare(T,
                    begin
                        REC19 = S,
                        case REC19 of
                            {sections, _, _, _, _, _} ->
                                setelement(2,
                                           setelement(6, REC19, Bin),
                                           Type);
                            _ ->
                                error({badrecord, REC19})
                        end
                    end);
        {archive = Type, ZipFiles, ZipOptions}
            when is_list(ZipFiles), is_list(ZipOptions) ->
            File = "dummy.zip",
            case zip:create(File, ZipFiles, ZipOptions ++ [memory]) of
                {ok, {File, ZipBin}} ->
                    prepare(T,
                            begin
                                REC20 = S,
                                case REC20 of
                                    {sections, _, _, _, _, _} ->
                                        setelement(2,
                                                   setelement(6, REC20,
                                                              ZipBin),
                                                   Type);
                                    _ ->
                                        error({badrecord, REC20})
                                end
                            end);
                {error, Reason} ->
                    throw({Reason, H})
            end;
        _ ->
            throw({badarg, H})
    end;
prepare([], {sections, _, _, _, _, undefined}) ->
    throw(missing_body);
prepare([], {sections, Type, _, _, _, _} = S)
    when Type =:= source; Type =:= beam; Type =:= archive ->
    S;
prepare([], {sections, Type, _, _, _, _}) ->
    throw({illegal_type, Type});
prepare(BadOptions, _) ->
    throw({badarg, BadOptions}).

-type section_name() :: shebang | comment | emu_args | body.

-type extract_option() :: compile_source | {section, [section_name()]}.

-spec extract(file:filename(), [extract_option()]) ->
                 {ok, [section()]} | {error, term()}.

extract(File, Options) when is_list(File), is_list(Options) ->
    try
        EO = parse_extract_options(Options, {extract_options, false}),
        {HeaderSz, StartLine, Fd, Sections} =
            parse_header(File,
                         not case EO of
                                 {extract_options, REC21} ->
                                     REC21;
                                 REC21 ->
                                     error({badrecord, REC21})
                             end),
        Type =
            case Sections of
                {sections, REC22, _, _, _, _} ->
                    REC22;
                REC22 ->
                    error({badrecord, REC22})
            end,
        case
            {Type,
             case EO of
                 {extract_options, REC23} ->
                     REC23;
                 REC23 ->
                     error({badrecord, REC23})
             end}
        of
            {source, true} ->
                Bin =
                    compile_source(Type, File, Fd, StartLine, HeaderSz);
            {_, _} ->
                ok = file:close(Fd),
                case file:read_file(File) of
                    {ok, <<_Header:HeaderSz/binary,Bin/binary>>} ->
                        ok;
                    {error, ReadReason} ->
                        Bin = get_rid_of_compiler_warning,
                        throw(ReadReason)
                end
        end,
        return_sections(Sections, Bin)
    catch
        throw:Reason ->
            {error, Reason}
    end.

parse_extract_options([H | T], EO) ->
    case H of
        compile_source ->
            EO2 =
                begin
                    REC24 = EO,
                    case REC24 of
                        {extract_options, _} ->
                            setelement(2, REC24, true);
                        _ ->
                            error({badrecord, REC24})
                    end
                end,
            parse_extract_options(T, EO2);
        _ ->
            throw({badarg, H})
    end;
parse_extract_options([], EO) ->
    EO.

compile_source(Type, File, Fd, StartLine, HeaderSz) ->
    {text, _Module, Forms, _HasRecs, _Mode} =
        do_parse_file(Type, File, Fd, StartLine, HeaderSz, false),
    ok = file:close(Fd),
    case compile:forms(Forms, [return_errors, debug_info]) of
        {ok, _, BeamBin} ->
            BeamBin;
        {error, Errors, Warnings} ->
            throw({compile,
                   [{errors, format_errors(Errors)},
                    {warnings, format_errors(Warnings)}]})
    end.

format_errors(CompileErrors) ->
    [ 
     lists:flatten([File,
                    ":",
                    integer_to_list(LineNo),
                    ": ",
                    Mod:format_error(Error)]) ||
         {File, FileErrors} <- CompileErrors,
         {LineNo, Mod, Error} <- FileErrors
    ].

return_sections(S, Bin) ->
    {ok,
     [normalize_section(shebang,
                        case S of
                            {sections, _, REC25, _, _, _} ->
                                REC25;
                            REC25 ->
                                error({badrecord, REC25})
                        end),
      normalize_section(comment,
                        case S of
                            {sections, _, _, REC26, _, _} ->
                                REC26;
                            REC26 ->
                                error({badrecord, REC26})
                        end),
      normalize_section(emu_args,
                        case S of
                            {sections, _, _, _, REC27, _} ->
                                REC27;
                            REC27 ->
                                error({badrecord, REC27})
                        end),
      normalize_section(case S of
                            {sections, REC28, _, _, _, _} ->
                                REC28;
                            REC28 ->
                                error({badrecord, REC28})
                        end,
                        Bin)]}.

normalize_section(Name, undefined) ->
    {Name, undefined};
normalize_section(shebang, "#!" ++ Chars) ->
    Chopped = string:trim(Chars, trailing, "$\n"),
    Stripped = string:trim(Chopped, both),
    if
        Stripped =:= "/usr/bin/env escript" ->
            {shebang, default};
        true ->
            {shebang, Stripped}
    end;
normalize_section(comment, Chars) ->
    Chopped = string:trim(Chars, trailing, "$\n"),
    Stripped = string:trim(string:trim(Chopped, leading, "$%"), both),
    if
        Stripped =:= "This is an -*- erlang -*- file" ->
            {comment, default};
        true ->
            {comment, Stripped}
    end;
normalize_section(emu_args, "%%!" ++ Chars) ->
    Chopped = string:trim(Chars, trailing, "$\n"),
    Stripped = string:trim(Chopped, both),
    {emu_args, Stripped};
normalize_section(Name, Chars) ->
    {Name, Chars}.

-spec script_name() -> string().

script_name() ->
    [ScriptName | _] = init:get_plain_arguments(),
    ScriptName.

-spec start() -> no_return().

start() ->
    start([]).

-spec start([string()]) -> no_return().

start(EscriptOptions) ->
    try
        process_flag(trap_exit, false),
        case init:get_plain_arguments() of
            [File | Args] ->
                parse_and_run(File, Args, EscriptOptions);
            [] ->
                io:format(standard_error,
                          "escript: Missing filename\n",
                          []),
                my_halt(127)
        end
    catch
        throw:Str ->
            put_chars(io_lib:format("escript: ~ts\n", [Str])),
            my_halt(127);
        _:Reason:Stk ->
            put_chars(io_lib:format("escript: Internal error: ~tp\n",
                                    [Reason])),
            put_chars(io_lib:format("~tp\n", [Stk])),
            my_halt(127)
    end.

-spec parse_and_run(_, _, _) -> no_return().

parse_and_run(File, Args, Options) ->
    CheckOnly = lists:member("s", Options),
    {Source, Module, FormsOrBin, HasRecs, Mode} =
        parse_file(File, CheckOnly),
    Mode2 =
        case lists:member("d", Options) of
            true ->
                debug;
            false ->
                case lists:member("c", Options) of
                    true ->
                        compile;
                    false ->
                        case lists:member("i", Options) of
                            true ->
                                interpret;
                            false ->
                                Mode
                        end
                end
        end,
    if
        is_list(FormsOrBin) ->
            case Mode2 of
                interpret ->
                    interpret(FormsOrBin, HasRecs, File, Args);
                compile ->
                    case compile:forms(FormsOrBin, [report]) of
                        {ok, Module, BeamBin} ->
                            {module, Module} =
                                code:load_binary(Module, File, BeamBin),
                            run(Module, Args);
                        _Other ->
                            fatal("There were compilation errors.")
                    end;
                debug ->
                    case
                        compile:forms(FormsOrBin, [report, debug_info])
                    of
                        {ok, Module, BeamBin} ->
                            {module, Module} =
                                code:load_binary(Module, File, BeamBin),
                            debug(Module,
                                  {Module, File, File, BeamBin},
                                  Args);
                        _Other ->
                            fatal("There were compilation errors.")
                    end
            end;
        is_binary(FormsOrBin) ->
            case Source of
                archive ->
                    case set_primary_archive(File, FormsOrBin) of
                        ok when CheckOnly ->
                            case code:load_file(Module) of
                                {module, _} ->
                                    case
                                        erlang:function_exported(Module,
                                                                 main,
                                                                 1)
                                    of
                                        true ->
                                            my_halt(0);
                                        false ->
                                            Text =
                                                lists:concat(["Function"
                                                              " ",
                                                              Module,
                                                              ":main/1 "
                                                              "is not e"
                                                              "xported"]),
                                            fatal(Text)
                                    end;
                                _ ->
                                    Text =
                                        lists:concat(["Cannot load modu"
                                                      "le ",
                                                      Module,
                                                      " from archive"]),
                                    fatal(Text)
                            end;
                        ok ->
                            case Mode2 of
                                run ->
                                    run(Module, Args);
                                debug ->
                                    debug(Module, Module, Args)
                            end;
                        {error, bad_eocd} ->
                            fatal("Not an archive file");
                        {error, Reason} ->
                            fatal(Reason)
                    end;
                beam ->
                    case Mode2 of
                        run ->
                            {module, Module} =
                                code:load_binary(Module, File,
                                                 FormsOrBin),
                            run(Module, Args);
                        debug ->
                            [Base | Rest] =
                                lists:reverse(filename:split(File)),
                            Base2 =
                                filename:basename(Base,
                                                  code:objfile_extension()),
                            Rest2 =
                                case Rest of
                                    ["ebin" | Top] ->
                                        ["src" | Top];
                                    _ ->
                                        Rest
                                end,
                            SrcFile =
                                filename:join(lists:reverse([Base2
                                                             ++
                                                             ".erl" |
                                                             Rest2])),
                            debug(Module,
                                  {Module, SrcFile, File, FormsOrBin},
                                  Args)
                    end
            end
    end.

set_primary_archive(File, FormsOrBin) ->
    {ok, FileInfo} = file:read_file_info(File),
    ArchiveFile = filename:absname(File),
    case
        erl_prim_loader:set_primary_archive(ArchiveFile, FormsOrBin,
                                            FileInfo,
                                            fun escript:parse_file/1)
    of
        {ok, Ebins} ->
            Ebins2 =
                [ 
                 filename:join([ArchiveFile, E]) ||
                     E <- Ebins
                ],
            code:add_pathsa(Ebins2, cache);
        {error, _Reason} = Error ->
            Error
    end.

parse_file(File) ->
    try parse_file(File, false) of
        {_Source, _Module, FormsOrBin, _HasRecs, _Mode}
            when is_binary(FormsOrBin) ->
            {ok, FormsOrBin};
        _ ->
            {error, no_archive_bin}
    catch
        throw:Reason ->
            {error, Reason}
    end.

parse_file(File, CheckOnly) ->
    {HeaderSz, StartLine, Fd, Sections} = parse_header(File, false),
    do_parse_file(case Sections of
                      {sections, REC29, _, _, _, _} ->
                          REC29;
                      REC29 ->
                          error({badrecord, REC29})
                  end,
                  File, Fd, StartLine, HeaderSz, CheckOnly).

do_parse_file(Type, File, Fd, StartLine, HeaderSz, CheckOnly) ->
    S = initial_state(File),
    {state, _, Module, FormsOrBin, Source, _, Mode, _, HasRecs} =
        case Type of
            archive ->
                ok = file:close(Fd),
                parse_archive(S, File, HeaderSz);
            beam ->
                ok = file:close(Fd),
                parse_beam(S, File, HeaderSz, CheckOnly);
            source ->
                parse_source(S, File, Fd, StartLine, HeaderSz,
                             CheckOnly)
        end,
    {Source, Module, FormsOrBin, HasRecs, Mode}.

initial_state(File) ->
    {state, File, undefined, undefined, undefined, 0, compile, false,
     false}.

parse_header(File, KeepFirst) ->
    LineNo = 1,
    {ok, Fd} =
        case file:open(File, [read]) of
            {ok, Fd0} ->
                {ok, Fd0};
            {error, R} ->
                fatal(lists:concat([file:format_error(R),
                                    ": '",
                                    File,
                                    "'"]))
        end,
    {ok, HeaderSz0} = file:position(Fd, cur),
    Line1 = get_line(Fd),
    case classify_line(Line1) of
        shebang ->
            find_first_body_line(Fd, HeaderSz0, LineNo, KeepFirst,
                                 {sections, undefined, Line1, undefined,
                                  undefined, undefined});
        archive ->
            {HeaderSz0, LineNo, Fd,
             {sections, archive, undefined, undefined, undefined,
              undefined}};
        beam ->
            {HeaderSz0, LineNo, Fd,
             {sections, beam, undefined, undefined, undefined,
              undefined}};
        _ ->
            find_first_body_line(Fd, HeaderSz0, LineNo, KeepFirst,
                                 {sections, undefined, undefined,
                                  undefined, undefined, undefined})
    end.

find_first_body_line(Fd, HeaderSz0, LineNo, KeepFirst, Sections) ->
    {ok, HeaderSz1} = file:position(Fd, cur),
    Line2 = get_line(Fd),
    {ok, HeaderSz2} = file:position(Fd, cur),
    if
        (is_record(Sections, sections, 6)
         orelse
         fail)
        and
        (element(3, Sections) =:= undefined),
        KeepFirst =:= true ->
            {HeaderSz0, LineNo, Fd,
             begin
                 REC30 = guess_type(Line2),
                 REC31 = Sections,
                 case REC31 of
                     {sections, _, _, _, _, _} ->
                         setelement(2, REC31, REC30);
                     _ ->
                         error({badrecord, REC31})
                 end
             end};
        (is_record(Sections, sections, 6)
         orelse
         fail)
        and
        (element(3, Sections) =:= undefined) ->
            {HeaderSz1, LineNo, Fd,
             begin
                 REC32 = guess_type(Line2),
                 REC33 = Sections,
                 case REC33 of
                     {sections, _, _, _, _, _} ->
                         setelement(2, REC33, REC32);
                     _ ->
                         error({badrecord, REC33})
                 end
             end};
        true ->
            case classify_line(Line2) of
                emu_args ->
                    Line3 = get_line(Fd),
                    {HeaderSz2,
                     LineNo + 2,
                     Fd,
                     begin
                         REC34 = guess_type(Line3),
                         REC35 = Sections,
                         case REC35 of
                             {sections, _, _, _, _, _} ->
                                 setelement(2,
                                            setelement(4,
                                                       setelement(5,
                                                                  REC35,
                                                                  Line2),
                                                       undefined),
                                            REC34);
                             _ ->
                                 error({badrecord, REC35})
                         end
                     end};
                comment ->
                    Line3 = get_line(Fd),
                    {ok, HeaderSz3} = file:position(Fd, cur),
                    Line3Type = classify_line(Line3),
                    if
                        Line3Type =:= emu_args ->
                            Line4 = get_line(Fd),
                            {HeaderSz3,
                             LineNo + 3,
                             Fd,
                             begin
                                 REC36 = guess_type(Line4),
                                 REC37 = Sections,
                                 case REC37 of
                                     {sections, _, _, _, _, _} ->
                                         setelement(2,
                                                    setelement(4,
                                                               setelement(5,
                                                                          REC37,
                                                                          Line3),
                                                               Line2),
                                                    REC36);
                                     _ ->
                                         error({badrecord, REC37})
                                 end
                             end};
                        true ->
                            {HeaderSz2,
                             LineNo + 2,
                             Fd,
                             begin
                                 REC38 = guess_type(Line3),
                                 REC39 = Sections,
                                 case REC39 of
                                     {sections, _, _, _, _, _} ->
                                         setelement(2,
                                                    setelement(4, REC39,
                                                               Line2),
                                                    REC38);
                                     _ ->
                                         error({badrecord, REC39})
                                 end
                             end}
                    end;
                _ ->
                    {HeaderSz1,
                     LineNo + 1,
                     Fd,
                     begin
                         REC40 = guess_type(Line2),
                         REC41 = Sections,
                         case REC41 of
                             {sections, _, _, _, _, _} ->
                                 setelement(2, REC41, REC40);
                             _ ->
                                 error({badrecord, REC41})
                         end
                     end}
            end
    end.

classify_line(Line) ->
    case Line of
        "#!" ++ _ ->
            shebang;
        "PK" ++ _ ->
            archive;
        "FOR1" ++ _ ->
            beam;
        "%%!" ++ _ ->
            emu_args;
        "%" ++ _ ->
            comment;
        _ ->
            undefined
    end.

guess_type(Line) ->
    case classify_line(Line) of
        archive ->
            archive;
        beam ->
            beam;
        _ ->
            source
    end.

get_line(P) ->
    case io:get_line(P, '') of
        eof ->
            fatal("Premature end of file reached");
        Line ->
            Line
    end.

parse_archive(S, File, HeaderSz) ->
    case file:read_file(File) of
        {ok, <<_Header:HeaderSz/binary,Bin/binary>>} ->
            Mod =
                case init:get_argument(escript) of
                    {ok, [["main", M]]} ->
                        list_to_atom(M);
                    _ ->
                        RevBase = lists:reverse(filename:basename(File)),
                        RevBase2 =
                            case
                                lists:dropwhile(fun(X) ->
                                                       X =/= $.
                                                end,
                                                RevBase)
                            of
                                [$. | Rest] ->
                                    Rest;
                                [] ->
                                    RevBase
                            end,
                        list_to_atom(lists:reverse(RevBase2))
                end,
            begin
                REC42 = S,
                case REC42 of
                    {state, _, _, _, _, _, _, _, _} ->
                        setelement(3,
                                   setelement(4,
                                              setelement(5,
                                                         setelement(7,
                                                                    REC42,
                                                                    run),
                                                         archive),
                                              Bin),
                                   Mod);
                    _ ->
                        error({badrecord, REC42})
                end
            end;
        {ok, _} ->
            fatal("Illegal archive format");
        {error, Reason} ->
            fatal(file:format_error(Reason))
    end.

parse_beam(S, File, HeaderSz, CheckOnly) ->
    {ok, <<_Header:HeaderSz/binary,Bin/binary>>} = file:read_file(File),
    case beam_lib:chunks(Bin, [exports]) of
        {ok, {Module, [{exports, Exports}]}} ->
            case CheckOnly of
                true ->
                    case lists:member({main, 1}, Exports) of
                        true ->
                            my_halt(0);
                        false ->
                            Text =
                                lists:concat(["Function ",
                                              Module,
                                              ":main/1 is not exported"]),
                            fatal(Text)
                    end;
                false ->
                    begin
                        REC43 = S,
                        case REC43 of
                            {state, _, _, _, _, _, _, _, _} ->
                                setelement(3,
                                           setelement(4,
                                                      setelement(5,
                                                                 setelement(7,
                                                                            REC43,
                                                                            run),
                                                                 beam),
                                                      Bin),
                                           Module);
                            _ ->
                                error({badrecord, REC43})
                        end
                    end
            end;
        {error, beam_lib, Reason} when is_tuple(Reason) ->
            fatal(element(1, Reason))
    end.

parse_source(S, File, Fd, StartLine, HeaderSz, CheckOnly) ->
    {PreDefMacros, Module} = pre_def_macros(File),
    IncludePath = [],
    {ok, _} = file:position(Fd, 0),
    _ = io:get_line(Fd, ''),
    Encoding = epp:set_encoding(Fd),
    {ok, _} = file:position(Fd, HeaderSz),
    case
        epp:open([{fd, Fd},
                  {name, File},
                  {location, {StartLine, 1}},
                  {includes, IncludePath},
                  {macros, PreDefMacros}])
    of
        {ok, Epp} ->
            _ = [ 
                 io:setopts(Fd, [{encoding, Encoding}]) ||
                     Encoding =/= none
                ],
            {ok, FileForm} = epp:parse_erl_form(Epp),
            OptModRes = epp:parse_erl_form(Epp),
            S2 =
                begin
                    REC44 = S,
                    case REC44 of
                        {state, _, _, _, _, _, _, _, _} ->
                            setelement(3,
                                       setelement(5, REC44, text),
                                       Module);
                        _ ->
                            error({badrecord, REC44})
                    end
                end,
            S3 =
                case OptModRes of
                    {ok, {attribute, _, module, M} = Form} ->
                        epp_parse_file(Epp,
                                       begin
                                           REC45 = S2,
                                           case REC45 of
                                               {state, _, _, _, _, _, _,
                                                _, _} ->
                                                   setelement(3, REC45,
                                                              M);
                                               _ ->
                                                   error({badrecord,
                                                          REC45})
                                           end
                                       end,
                                       [Form, FileForm]);
                    {ok, _} ->
                        ModForm = {attribute, a1(), module, Module},
                        epp_parse_file2(Epp, S2,
                                        [ModForm, FileForm],
                                        OptModRes);
                    {error, _} ->
                        epp_parse_file2(Epp, S2, [FileForm], OptModRes);
                    {eof, LastLine} ->
                        begin
                            REC46 = [FileForm, {eof, LastLine}],
                            REC47 = S,
                            case REC47 of
                                {state, _, _, _, _, _, _, _, _} ->
                                    setelement(4, REC47, REC46);
                                _ ->
                                    error({badrecord, REC47})
                            end
                        end
                end,
            ok = epp:close(Epp),
            ok = file:close(Fd),
            check_source(S3, CheckOnly);
        {error, Reason} ->
            io:format(standard_error, "escript: ~tp\n", [Reason]),
            fatal("Preprocessor error")
    end.

check_source(S, CheckOnly) ->
    case S of
        {state, _, _, _, _, Nerrs, _, _, _} when Nerrs =/= 0 ->
            fatal("There were compilation errors.");
        {state, _, _,
         [FileForm2, ModForm2 | Forms],
         _, _, _, ExpMain, _} ->
            Forms2 =
                case ExpMain of
                    false ->
                        [{attribute, a0(), export, [{main, 1}]} | Forms];
                    true ->
                        Forms
                end,
            Forms3 = [FileForm2, ModForm2 | Forms2],
            case CheckOnly of
                true ->
                    case
                        compile:forms(Forms3,
                                      [report, strong_validation])
                    of
                        {ok, _} ->
                            my_halt(0);
                        _Other ->
                            fatal("There were compilation errors.")
                    end;
                false ->
                    begin
                        REC48 = S,
                        case REC48 of
                            {state, _, _, _, _, _, _, _, _} ->
                                setelement(4, REC48, Forms3);
                            _ ->
                                error({badrecord, REC48})
                        end
                    end
            end
    end.

pre_def_macros(File) ->
    {MegaSecs, Secs, MicroSecs} = erlang:timestamp(),
    Unique = erlang:unique_integer([positive]),
    Replace =
        fun(Char) ->
               case Char of
                   $. ->
                       $_;
                   _ ->
                       Char
               end
        end,
    CleanBase = lists:map(Replace, filename:basename(File)),
    ModuleStr =
        CleanBase
        ++
        "__"
        ++
        "escript__"
        ++
        integer_to_list(MegaSecs)
        ++
        "__"
        ++
        integer_to_list(Secs)
        ++
        "__"
        ++
        integer_to_list(MicroSecs) ++ "__" ++ integer_to_list(Unique),
    Module = list_to_atom(ModuleStr),
    PreDefMacros =
        [{'MODULE', Module, redefine},
         {'MODULE_STRING', ModuleStr, redefine}],
    {PreDefMacros, Module}.

epp_parse_file(Epp, S, Forms) ->
    Parsed = epp:parse_erl_form(Epp),
    epp_parse_file2(Epp, S, Forms, Parsed).

epp_parse_file2(Epp, S, Forms, {ok, {attribute, _, mode, native}}) ->
    epp_parse_file(Epp, S, Forms);
epp_parse_file2(Epp, S, Forms, Parsed) ->
    case Parsed of
        {ok, Form} ->
            case Form of
                {attribute, _, record, _} ->
                    S2 =
                        begin
                            REC49 = S,
                            case REC49 of
                                {state, _, _, _, _, _, _, _, _} ->
                                    setelement(9, REC49, true);
                                _ ->
                                    error({badrecord, REC49})
                            end
                        end,
                    epp_parse_file(Epp, S2, [Form | Forms]);
                {attribute, Ln, mode, NewMode} ->
                    S2 =
                        begin
                            REC50 = S,
                            case REC50 of
                                {state, _, _, _, _, _, _, _, _} ->
                                    setelement(7, REC50, NewMode);
                                _ ->
                                    error({badrecord, REC50})
                            end
                        end,
                    if
                        NewMode =:= compile;
                        NewMode =:= interpret;
                        NewMode =:= debug ->
                            epp_parse_file(Epp, S2, [Form | Forms]);
                        true ->
                            Args =
                                lists:flatten(io_lib:format("illegal mo"
                                                            "de attribu"
                                                            "te: ~p",
                                                            [NewMode])),
                            io:format(standard_error,
                                      "~ts:~s: ~s\n",
                                      [case S of
                                           {state, REC51, _, _, _, _, _,
                                            _, _} ->
                                               REC51;
                                           REC51 ->
                                               error({badrecord, REC51})
                                       end,
                                       pos(Ln),
                                       Args]),
                            Error = {error, {Ln, erl_parse, Args}},
                            Nerrs =
                                case S of
                                    {state, _, _, _, _, REC52, _, _, _} ->
                                        REC52;
                                    REC52 ->
                                        error({badrecord, REC52})
                                end
                                +
                                1,
                            epp_parse_file(Epp,
                                           begin
                                               REC53 = S2,
                                               case REC53 of
                                                   {state, _, _, _, _,
                                                    _, _, _, _} ->
                                                       setelement(6,
                                                                  REC53,
                                                                  Nerrs);
                                                   _ ->
                                                       error({badrecord,
                                                              REC53})
                                               end
                                           end,
                                           [Error | Forms])
                    end;
                {attribute, _, export, Fs} ->
                    case lists:member({main, 1}, Fs) of
                        false ->
                            epp_parse_file(Epp, S, [Form | Forms]);
                        true ->
                            epp_parse_file(Epp,
                                           begin
                                               REC54 = S,
                                               case REC54 of
                                                   {state, _, _, _, _,
                                                    _, _, _, _} ->
                                                       setelement(8,
                                                                  REC54,
                                                                  true);
                                                   _ ->
                                                       error({badrecord,
                                                              REC54})
                                               end
                                           end,
                                           [Form | Forms])
                    end;
                _ ->
                    epp_parse_file(Epp, S, [Form | Forms])
            end;
        {error, {Ln, Mod, Args}} = Form ->
            io:format(standard_error,
                      "~ts:~s: ~ts\n",
                      [case S of
                           {state, REC55, _, _, _, _, _, _, _} ->
                               REC55;
                           REC55 ->
                               error({badrecord, REC55})
                       end,
                       pos(Ln),
                       Mod:format_error(Args)]),
            epp_parse_file(Epp,
                           begin
                               REC56 =
                                   case S of
                                       {state, _, _, _, _, REC58, _, _,
                                        _} ->
                                           REC58;
                                       REC58 ->
                                           error({badrecord, REC58})
                                   end
                                   +
                                   1,
                               REC57 = S,
                               case REC57 of
                                   {state, _, _, _, _, _, _, _, _} ->
                                       setelement(6, REC57, REC56);
                                   _ ->
                                       error({badrecord, REC57})
                               end
                           end,
                           [Form | Forms]);
        {eof, LastLine} ->
            begin
                REC59 = lists:reverse([{eof, LastLine} | Forms]),
                REC60 = S,
                case REC60 of
                    {state, _, _, _, _, _, _, _, _} ->
                        setelement(4, REC60, REC59);
                    _ ->
                        error({badrecord, REC60})
                end
            end
    end.

-spec debug(_, _, _) -> no_return().

debug(Module, AbsMod, Args) ->
    case hidden_apply(debugger, debugger, start, []) of
        {ok, _} ->
            case hidden_apply(debugger, int, i, [AbsMod]) of
                {module, _} ->
                    hidden_apply(debugger, debugger, auto_attach,
                                 [[init]]),
                    run(Module, Args);
                error ->
                    Text =
                        lists:concat(["Cannot load the code for ",
                                      Module,
                                      " into the debugger"]),
                    fatal(Text)
            end;
        _ ->
            fatal("Cannot start the debugger")
    end.

-spec run(_, _) -> no_return().

run(Module, Args) ->
    try
        Module:main(Args),
        my_halt(0)
    catch
        Class:Reason:StackTrace ->
            fatal(format_exception(Class, Reason, StackTrace))
    end.

-spec interpret(_, _, _, _) -> no_return().

interpret(Forms, HasRecs, File, Args) ->
    case erl_lint:module(Forms) of
        {ok, Ws} ->
            report_warnings(Ws);
        {error, Es, Ws} ->
            report_errors(Es),
            report_warnings(Ws),
            fatal("There were compilation errors.")
    end,
    Forms2 =
        case HasRecs of
            false ->
                Forms;
            true ->
                erl_expand_records:module(Forms, [])
        end,
    Dict = parse_to_map(Forms2),
    ArgsA = erl_parse:abstract(Args, 0),
    Anno = a0(),
    Call = {call, Anno, {atom, Anno, main}, [ArgsA]},
    try
        _ = erl_eval:expr(Call,
                          erl_eval:new_bindings(),
                          {value,
                           fun(I, J) ->
                                  code_handler(I, J, Dict, File)
                           end}),
        my_halt(0)
    catch
        Class:Reason:StackTrace ->
            fatal(format_exception(Class, Reason, StackTrace))
    end.

report_errors(Errors) ->
    lists:foreach(fun({{F, _L}, Eds}) ->
                         list_errors(F, Eds);
                     ({F, Eds}) ->
                         list_errors(F, Eds)
                  end,
                  Errors).

list_errors(F, [{Line, Mod, E} | Es]) ->
    io:fwrite(standard_error,
              "~ts:~s: ~ts\n",
              [F, pos(Line), Mod:format_error(E)]),
    list_errors(F, Es);
list_errors(F, [{Mod, E} | Es]) ->
    io:format(standard_error, "~ts: ~ts\n", [F, Mod:format_error(E)]),
    list_errors(F, Es);
list_errors(_F, []) ->
    ok.

pos({Line, Col}) ->
    io_lib:format("~w:~w", [Line, Col]);
pos(Line) ->
    io_lib:format("~w", [Line]).

report_warnings(Ws0) ->
    Ws1 =
        lists:flatmap(fun({{F, _L}, Eds}) ->
                             format_message(F, Eds);
                         ({F, Eds}) ->
                             format_message(F, Eds)
                      end,
                      Ws0),
    Ws = ordsets:from_list(Ws1),
    lists:foreach(fun({_, Str}) ->
                         io:put_chars(standard_error, Str)
                  end,
                  Ws).

format_message(F, [{Line, Mod, E} | Es]) ->
    M = {{F, Line},
         io_lib:format("~ts:~s: Warning: ~ts\n",
                       [F, pos(Line), Mod:format_error(E)])},
    [M | format_message(F, Es)];
format_message(F, [{Mod, E} | Es]) ->
    M = {none,
         io_lib:format("~ts: Warning: ~ts\n", [F, Mod:format_error(E)])},
    [M | format_message(F, Es)];
format_message(_, []) ->
    [].

parse_to_map(L) ->
    parse_to_map(L, maps:new()).

parse_to_map([{function, _, Name, Arity, Clauses} | T], Map0) ->
    Map = maps:put({local, Name, Arity}, Clauses, Map0),
    parse_to_map(T, Map);
parse_to_map([{attribute, _, import, {Mod, Funcs}} | T], Map0) ->
    Map =
        lists:foldl(fun(I, D) ->
                           maps:put({remote, I}, Mod, D)
                    end,
                    Map0, Funcs),
    parse_to_map(T, Map);
parse_to_map([_ | T], Map) ->
    parse_to_map(T, Map);
parse_to_map([], Map) ->
    Map.

code_handler(local, [file], _, File) ->
    File;
code_handler(Name, Args, Map, File) ->
    Arity = length(Args),
    case maps:find({local, Name, Arity}, Map) of
        {ok, Cs} ->
            LF =
                {value,
                 fun(I, J) ->
                        code_handler(I, J, Map, File)
                 end},
            case
                erl_eval:match_clause(Cs, Args,
                                      erl_eval:new_bindings(),
                                      LF)
            of
                {Body, Bs} ->
                    eval_exprs(Body, Bs, LF, none, none);
                nomatch ->
                    error({function_clause, [{local, Name, Args}]})
            end;
        error ->
            case maps:find({remote, {Name, Arity}}, Map) of
                {ok, Mod} ->
                    apply(Mod, Name, Args);
                error ->
                    io:format(standard_error,
                              "Script does not export ~tw/~w\n",
                              [Name, Arity]),
                    my_halt(127)
            end
    end.

eval_exprs([E], Bs0, Lf, Ef, _RBs) ->
    RBs1 = value,
    erl_eval:expr(E, Bs0, Lf, Ef, RBs1);
eval_exprs([E | Es], Bs0, Lf, Ef, RBs) ->
    RBs1 = none,
    {value, _V, Bs} = erl_eval:expr(E, Bs0, Lf, Ef, RBs1),
    eval_exprs(Es, Bs, Lf, Ef, RBs).

format_exception(Class, Reason, StackTrace) ->
    Enc = encoding(),
    P = case Enc of
            latin1 ->
                "P";
            _ ->
                "tP"
        end,
    PF =
        fun(Term, I) ->
               io_lib:format("~." ++ integer_to_list(I) ++ P,
                             [Term, 50])
        end,
    StackFun =
        fun(M, _F, _A) ->
               M =:= erl_eval
               orelse
               M =:= escript
        end,
    erl_error:format_exception(1, Class, Reason, StackTrace, StackFun,
                               PF, Enc).

encoding() ->
    case io:getopts() of
        {error, _} = _Err ->
            latin1;
        Opts ->
            case lists:keyfind(encoding, 1, Opts) of
                false ->
                    latin1;
                {encoding, Encoding} ->
                    Encoding
            end
    end.

put_chars(String) ->
    try
        io:put_chars(standard_error, String)
    catch
        _:_ ->
            display_err(lists:flatten(String))
    end.

display_err(String) ->
    Port = open_port({fd, 2, 2}, [out, binary]),
    Port ! {self(), {command, list_to_binary(String)}},
    port_close(Port).

a0() ->
    anno(0).

a1() ->
    anno(1).

anno(L) ->
    erl_anno:new(L).

fatal(Str) ->
    throw(Str).

-spec my_halt(_) -> no_return().

my_halt(Reason) ->
    halt(Reason).

hidden_apply(App, M, F, Args) ->
    try
        apply(fun() ->
                     M
              end(),
              F, Args)
    catch
        error:undef:StackTrace ->
            case StackTrace of
                [{M, F, Args, _} | _] ->
                    Arity = length(Args),
                    Text =
                        io_lib:format("Call to ~w:~w/~w in application "
                                      "~w failed.\n",
                                      [M, F, Arity, App]),
                    fatal(Text);
                Stk ->
                    erlang:raise(error, undef, Stk)
            end
    end.



