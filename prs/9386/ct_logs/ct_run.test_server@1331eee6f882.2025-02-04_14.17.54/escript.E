-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.2/src/escript.erl", 1).

-module(escript).

-export([script_name/0,create/2,extract/2]).

-export([start/0,start/1]).

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

-type section() ::
          shebang |
          {shebang, shebang() | default | undefined} |
          comment |
          {comment, comment() | default | undefined} |
          {emu_args, emu_args() | undefined} |
          {source, file:filename() | binary()} |
          {beam, file:filename() | binary()} |
          {files, [file:filename() | {file:filename(), binary()}]} |
          {modules, [file:filename() | binary()]}.

-type legacy_archive() :: {archive, binary()}.

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
        {archive = Type, ZipFiles, ZipOptions}
            when is_list(ZipFiles), is_list(ZipOptions) ->
            File = "dummy.zip",
            case zip:create(File, ZipFiles, ZipOptions ++ [memory]) of
                {ok, {File, ZipBin}} ->
                    prepare([{Type, ZipBin} | T], S);
                {error, Reason} ->
                    throw({Reason, H})
            end;
        {modules = Type, Files} when is_list(Files) ->
            prepare_bundle(Type, Files, T, S);
        {files = Type, Files} when is_list(Files) ->
            prepare_bundle(Type, Files, T, S);
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
        _ ->
            throw({badarg, H})
    end;
prepare([], {sections, _, _, _, _, undefined}) ->
    throw(missing_body);
prepare([], {sections, bundle, _, _, _, BodyMap} = S) ->
    Modules =
        case BodyMap of
            #{modules := Mods} ->
                Mods;
            #{} ->
                throw(no_modules)
        end,
    Files = maps:get(files, BodyMap, []),
    begin
        REC20 = beam_bundle(Modules, Files),
        REC21 = S,
        case REC21 of
            {sections, _, _, _, _, _} ->
                setelement(6, REC21, REC20);
            _ ->
                error({badrecord, REC21})
        end
    end;
prepare([], {sections, Type, _, _, _, _} = S)
    when Type =:= source; Type =:= beam ->
    S;
prepare([], {sections, Type, _, _, _, _}) ->
    throw({illegal_type, Type});
prepare(BadOptions, _) ->
    throw({badarg, BadOptions}).

prepare_bundle(Type, Files, T, {sections, _, _, _, _, undefined} = S) ->
    prepare_bundle(Type, Files, T,
                   begin
                       REC22 = S,
                       case REC22 of
                           {sections, _, _, _, _, _} ->
                               setelement(2,
                                          setelement(6, REC22, #{}),
                                          bundle);
                           _ ->
                               error({badrecord, REC22})
                       end
                   end);
prepare_bundle(Type, Files0, T, {sections, bundle, _, _, _, Body} = S)
    when is_map(Body) ->
    Files =
        case Type of
            modules ->
                read_beams(Files0);
            files ->
                read_files(Files0)
        end,
    prepare(T,
            begin
                REC23 = Body#{Type => Files},
                REC24 = S,
                case REC24 of
                    {sections, _, _, _, _, _} ->
                        setelement(6, REC24, REC23);
                    _ ->
                        error({badrecord, REC24})
                end
            end).

read_files(Files) ->
    [ 
     case FileOrBin of
         {Name, Binary} when is_list(Name), is_binary(Binary) ->
             {Name, Binary};
         Name when is_list(Name) ->
             case file:read_file(Name) of
                 {ok, Bin} ->
                     {Name, Bin};
                 {error, Reason} ->
                     throw({Reason, FileOrBin})
             end;
         _ ->
             throw({illegal_file, FileOrBin})
     end ||
         FileOrBin <- Files
    ].

read_beams(Files) ->
    [ 
     if
         is_binary(FileOrBin) ->
             FileOrBin;
         is_list(FileOrBin) ->
             case file:read_file(FileOrBin) of
                 {ok, Bin} ->
                     Bin;
                 {error, Reason} ->
                     throw({Reason, FileOrBin})
             end;
         true ->
             throw({illegal_file, FileOrBin})
     end ||
         FileOrBin <- Files
    ].

beam_bundle(Beams, OtherFiles) ->
    Packed = term_to_binary(Beams, [{compressed, 9}]),
    PackedSize = byte_size(Packed),
    OtherArchive = term_to_binary(OtherFiles, [{compressed, 9}]),
    OtherArchiveSize = byte_size(OtherArchive),
    <<".EB\n",
      PackedSize:32,
      Packed/binary,
      OtherArchiveSize:32,
      OtherArchive/binary>>.

-type section_name() :: shebang | comment | emu_args | body.

-type extract_option() :: compile_source | {section, [section_name()]}.

-spec extract(file:filename(), [extract_option()]) ->
                 {ok, [section() | legacy_archive()]} | {error, term()}.

extract(File, Options) when is_list(File), is_list(Options) ->
    try
        EO = parse_extract_options(Options, {extract_options, false}),
        {HeaderSz, StartLine, Fd, Sections} =
            parse_header(File,
                         not case EO of
                                 {extract_options, REC25} ->
                                     REC25;
                                 REC25 ->
                                     error({badrecord, REC25})
                             end),
        Type =
            case Sections of
                {sections, REC26, _, _, _, _} ->
                    REC26;
                REC26 ->
                    error({badrecord, REC26})
            end,
        case
            {Type,
             case EO of
                 {extract_options, REC27} ->
                     REC27;
                 REC27 ->
                     error({badrecord, REC27})
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
                    REC28 = EO,
                    case REC28 of
                        {extract_options, _} ->
                            setelement(2, REC28, true);
                        _ ->
                            error({badrecord, REC28})
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
                            {sections, _, REC29, _, _, _} ->
                                REC29;
                            REC29 ->
                                error({badrecord, REC29})
                        end),
      normalize_section(comment,
                        case S of
                            {sections, _, _, REC30, _, _} ->
                                REC30;
                            REC30 ->
                                error({badrecord, REC30})
                        end),
      normalize_section(emu_args,
                        case S of
                            {sections, _, _, _, REC31, _} ->
                                REC31;
                            REC31 ->
                                error({badrecord, REC31})
                        end)]
     ++
     normalize_section(case S of
                           {sections, REC32, _, _, _, _} ->
                               REC32;
                           REC32 ->
                               error({badrecord, REC32})
                       end,
                       Bin)}.

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
normalize_section(archive, Bin) ->
    case Bin of
        <<".EB\n",
          BeamSize:32,
          PackedBeam:BeamSize/binary,
          OtherSize:32,
          PackedOther:OtherSize/binary>> ->
            Beams = binary_to_term(PackedBeam, [safe]),
            OtherArchive = binary_to_term(PackedOther, [safe]),
            [{modules, Beams}, {files, OtherArchive}];
        _ ->
            [{archive, Bin}]
    end;
normalize_section(Name, Chars) ->
    [{Name, Chars}].

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
                    case handle_archive(File, FormsOrBin) of
                        ok when CheckOnly ->
                            case code:ensure_loaded(Module) of
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
                            end
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

handle_archive(_File,
               <<".EB\n",
                 BeamSize:32,
                 Beams0:BeamSize/binary,
                 OtherSize:32,
                 OtherFiles:OtherSize/binary>>) ->
    Beams = name_beams(binary_to_term(Beams0, [safe])),
    UnpackedFiles = binary_to_term(OtherFiles, [safe]),
    AppFiles =
        [ 
         {list_to_atom(filename:basename(filename:rootname(Name))), Bin} ||
             {Name, Bin} <:- UnpackedFiles,
             filename:extension(Name) =:= ".app"
        ],
    persistent_term:put(escript, AppFiles),
    {ok, Prepared} = code:prepare_loading(Beams),
    ok = code:finish_loading(Prepared),
    ok;
handle_archive(File, Archive) ->
    {ok, {Beams, AppFiles}} = extract_archive(File, Archive),
    persistent_term:put(escript, AppFiles),
    {ok, Prepared} = code:prepare_loading(Beams),
    ok = code:finish_loading(Prepared),
    ok.

name_beams([Beam | Beams]) ->
    Info = beam_lib:info(Beam),
    {module, Mod} = lists:keyfind(module, 1, Info),
    File = atom_to_list(Mod) ++ ".erl",
    [{Mod, File, Beam} | name_beams(Beams)];
name_beams([]) ->
    [].

extract_archive(File, Archive) ->
    zip:foldl(fun do_extract_archive/4, {[], []}, {File, Archive}).

do_extract_archive(Name, _, Get, {BeamAcc, AppFileAcc}) ->
    case filename:extension(Name) of
        ".beam" ->
            BeamFile = filename:basename(Name),
            Mod = list_to_atom(filename:rootname(BeamFile)),
            {[{Mod, BeamFile, Get()} | BeamAcc], AppFileAcc};
        ".app" ->
            App =
                list_to_atom(filename:rootname(filename:basename(Name))),
            {BeamAcc, [{App, Get()} | AppFileAcc]};
        _ ->
            {BeamAcc, AppFileAcc}
    end.

parse_file(File, CheckOnly) ->
    {HeaderSz, StartLine, Fd, Sections} = parse_header(File, false),
    do_parse_file(case Sections of
                      {sections, REC33, _, _, _, _} ->
                          REC33;
                      REC33 ->
                          error({badrecord, REC33})
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
        comment ->
            find_first_body_line(Fd, HeaderSz0, LineNo, KeepFirst,
                                 {sections, undefined, undefined, Line1,
                                  undefined, undefined});
        _ ->
            find_first_body_line(Fd, HeaderSz0, LineNo, KeepFirst,
                                 {sections, undefined, undefined,
                                  undefined, undefined, undefined})
    end.

find_first_body_line(Fd, HeaderSz0, LineNo, KeepFirst, Sections) ->
    {ok, HeaderSz1} = file:position(Fd, cur),
    Line2 = get_line(Fd),
    {ok, HeaderSz2} = file:position(Fd, cur),
    case Sections of
        {sections, _, undefined, Comment, _, _} when is_list(Comment) ->
            {HeaderSz1, LineNo, Fd,
             begin
                 REC34 = guess_type(Line2),
                 REC35 = Sections,
                 case REC35 of
                     {sections, _, _, _, _, _} ->
                         setelement(2, REC35, REC34);
                     _ ->
                         error({badrecord, REC35})
                 end
             end};
        {sections, _, undefined, _, _, _} when KeepFirst ->
            {HeaderSz0, LineNo, Fd,
             begin
                 REC36 = guess_type(Line2),
                 REC37 = Sections,
                 case REC37 of
                     {sections, _, _, _, _, _} ->
                         setelement(2, REC37, REC36);
                     _ ->
                         error({badrecord, REC37})
                 end
             end};
        {sections, _, undefined, _, _, _} ->
            {HeaderSz1, LineNo, Fd,
             begin
                 REC38 = guess_type(Line2),
                 REC39 = Sections,
                 case REC39 of
                     {sections, _, _, _, _, _} ->
                         setelement(2, REC39, REC38);
                     _ ->
                         error({badrecord, REC39})
                 end
             end};
        {sections, _, _, _, _, _} ->
            case classify_line(Line2) of
                emu_args ->
                    Line3 = get_line(Fd),
                    {HeaderSz2,
                     LineNo + 2,
                     Fd,
                     begin
                         REC40 = guess_type(Line3),
                         REC41 = Sections,
                         case REC41 of
                             {sections, _, _, _, _, _} ->
                                 setelement(2,
                                            setelement(4,
                                                       setelement(5,
                                                                  REC41,
                                                                  Line2),
                                                       undefined),
                                            REC40);
                             _ ->
                                 error({badrecord, REC41})
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
                                 REC42 = guess_type(Line4),
                                 REC43 = Sections,
                                 case REC43 of
                                     {sections, _, _, _, _, _} ->
                                         setelement(2,
                                                    setelement(4,
                                                               setelement(5,
                                                                          REC43,
                                                                          Line3),
                                                               Line2),
                                                    REC42);
                                     _ ->
                                         error({badrecord, REC43})
                                 end
                             end};
                        true ->
                            {HeaderSz2,
                             LineNo + 2,
                             Fd,
                             begin
                                 REC44 = guess_type(Line3),
                                 REC45 = Sections,
                                 case REC45 of
                                     {sections, _, _, _, _, _} ->
                                         setelement(2,
                                                    setelement(4, REC45,
                                                               Line2),
                                                    REC44);
                                     _ ->
                                         error({badrecord, REC45})
                                 end
                             end}
                    end;
                _ ->
                    {HeaderSz1,
                     LineNo + 1,
                     Fd,
                     begin
                         REC46 = guess_type(Line2),
                         REC47 = Sections,
                         case REC47 of
                             {sections, _, _, _, _, _} ->
                                 setelement(2, REC47, REC46);
                             _ ->
                                 error({badrecord, REC47})
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
        ".EB" ++ _ ->
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
                REC48 = S,
                case REC48 of
                    {state, _, _, _, _, _, _, _, _} ->
                        setelement(3,
                                   setelement(4,
                                              setelement(5,
                                                         setelement(7,
                                                                    REC48,
                                                                    run),
                                                         archive),
                                              Bin),
                                   Mod);
                    _ ->
                        error({badrecord, REC48})
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
                        REC49 = S,
                        case REC49 of
                            {state, _, _, _, _, _, _, _, _} ->
                                setelement(3,
                                           setelement(4,
                                                      setelement(5,
                                                                 setelement(7,
                                                                            REC49,
                                                                            run),
                                                                 beam),
                                                      Bin),
                                           Module);
                            _ ->
                                error({badrecord, REC49})
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
                    REC50 = S,
                    case REC50 of
                        {state, _, _, _, _, _, _, _, _} ->
                            setelement(3,
                                       setelement(5, REC50, text),
                                       Module);
                        _ ->
                            error({badrecord, REC50})
                    end
                end,
            S3 =
                case OptModRes of
                    {ok, {attribute, _, module, M} = Form} ->
                        epp_parse_file(Epp,
                                       begin
                                           REC51 = S2,
                                           case REC51 of
                                               {state, _, _, _, _, _, _,
                                                _, _} ->
                                                   setelement(3, REC51,
                                                              M);
                                               _ ->
                                                   error({badrecord,
                                                          REC51})
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
                            REC52 = [FileForm, {eof, LastLine}],
                            REC53 = S,
                            case REC53 of
                                {state, _, _, _, _, _, _, _, _} ->
                                    setelement(4, REC53, REC52);
                                _ ->
                                    error({badrecord, REC53})
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
                        REC54 = S,
                        case REC54 of
                            {state, _, _, _, _, _, _, _, _} ->
                                setelement(4, REC54, Forms3);
                            _ ->
                                error({badrecord, REC54})
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
                            REC55 = S,
                            case REC55 of
                                {state, _, _, _, _, _, _, _, _} ->
                                    setelement(9, REC55, true);
                                _ ->
                                    error({badrecord, REC55})
                            end
                        end,
                    epp_parse_file(Epp, S2, [Form | Forms]);
                {attribute, Ln, mode, NewMode} ->
                    S2 =
                        begin
                            REC56 = S,
                            case REC56 of
                                {state, _, _, _, _, _, _, _, _} ->
                                    setelement(7, REC56, NewMode);
                                _ ->
                                    error({badrecord, REC56})
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
                                           {state, REC57, _, _, _, _, _,
                                            _, _} ->
                                               REC57;
                                           REC57 ->
                                               error({badrecord, REC57})
                                       end,
                                       pos(Ln),
                                       Args]),
                            Error = {error, {Ln, erl_parse, Args}},
                            Nerrs =
                                case S of
                                    {state, _, _, _, _, REC58, _, _, _} ->
                                        REC58;
                                    REC58 ->
                                        error({badrecord, REC58})
                                end
                                +
                                1,
                            epp_parse_file(Epp,
                                           begin
                                               REC59 = S2,
                                               case REC59 of
                                                   {state, _, _, _, _,
                                                    _, _, _, _} ->
                                                       setelement(6,
                                                                  REC59,
                                                                  Nerrs);
                                                   _ ->
                                                       error({badrecord,
                                                              REC59})
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
                                               REC60 = S,
                                               case REC60 of
                                                   {state, _, _, _, _,
                                                    _, _, _, _} ->
                                                       setelement(8,
                                                                  REC60,
                                                                  true);
                                                   _ ->
                                                       error({badrecord,
                                                              REC60})
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
                           {state, REC61, _, _, _, _, _, _, _} ->
                               REC61;
                           REC61 ->
                               error({badrecord, REC61})
                       end,
                       pos(Ln),
                       Mod:format_error(Args)]),
            epp_parse_file(Epp,
                           begin
                               REC62 =
                                   case S of
                                       {state, _, _, _, _, REC64, _, _,
                                        _} ->
                                           REC64;
                                       REC64 ->
                                           error({badrecord, REC64})
                                   end
                                   +
                                   1,
                               REC63 = S,
                               case REC63 of
                                   {state, _, _, _, _, _, _, _, _} ->
                                       setelement(6, REC63, REC62);
                                   _ ->
                                       error({badrecord, REC63})
                               end
                           end,
                           [Form | Forms]);
        {eof, LastLine} ->
            begin
                REC65 = lists:reverse([{eof, LastLine} | Forms]),
                REC66 = S,
                case REC66 of
                    {state, _, _, _, _, _, _, _, _} ->
                        setelement(4, REC66, REC65);
                    _ ->
                        error({badrecord, REC66})
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
               (M =:= erl_eval) or (M =:= escript)
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



