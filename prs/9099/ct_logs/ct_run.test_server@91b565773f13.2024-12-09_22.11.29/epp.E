-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.1.2/src/epp.erl", 1).

-module(epp).

-export([open/1,open/2,open/3,close/1,format_error/1]).

-export([scan_erl_form/1,parse_erl_form/1,macro_defs/1]).

-export([scan_file/1,scan_file/2,parse_file/1,parse_file/2,parse_file/3]).

-export([default_encoding/0,
         encoding_to_string/1,
         read_encoding_from_binary/1,
         read_encoding_from_binary/2,
         set_encoding/1,
         set_encoding/2,
         read_encoding/1,
         read_encoding/2]).

-export([interpret_file_attribute/1]).

-export([normalize_typed_record_fields/1,restore_typed_record_fields/1]).

-file("/buildroot/otp/Erlang ∅⊤℞/lib/kernel-10.1.2/include/file.hrl", 1).

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

-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.1.2/src/epp.erl", 80).

-export_type([source_encoding/0]).

-type macros() ::
          [atom() | {atom(), term()} | {atom(), term(), redefine}].

-type epp_handle() :: pid().

-type source_encoding() :: latin1 | utf8.

-type ifdef() :: ifdef | ifndef | 'if' | 'else'.

-type name() :: atom().

-type argspec() :: none | non_neg_integer().

-type argnames() :: [atom()].

-type tokens() :: [erl_scan:token()].

-type predef() :: undefined | {none, tokens()}.

-type userdef() :: {argspec(), {argnames(), tokens()}}.

-type used() :: {name(), argspec()}.

-type function_name_type() ::
          undefined | {atom(), non_neg_integer()} | tokens().

-type warning_info() :: {erl_anno:location(), module(), term()}.

-record(epp,{file :: file:io_device() | undefined,
             location = 1,
             delta = 0 :: non_neg_integer(),
             name = "" :: file:name(),
             name2 = "" :: file:name(),
             istk = [] :: [ifdef()],
             sstk = [] :: [#epp{}],
             path = [] :: [file:name()],
             macs = #{} :: #{name() => predef() | [userdef()]},
             uses = #{} :: #{name() => [{argspec(), [used()]}]},
             default_encoding = utf8 :: source_encoding(),
             pre_opened = false :: boolean(),
             in_prefix = true :: boolean(),
             erl_scan_opts = [] :: [_],
             features = [] :: [atom()],
             else_reserved = false :: boolean(),
             fname = [] :: function_name_type(),
             deterministic = false :: boolean()}).

-spec open(FileName, IncludePath) ->
              {ok, Epp} | {error, ErrorDescriptor}
              when
                  FileName :: file:name(),
                  IncludePath :: [DirectoryName :: file:name()],
                  Epp :: epp_handle(),
                  ErrorDescriptor :: term().

open(Name, Path) ->
    open(Name, Path, []).

-spec open(FileName, IncludePath, PredefMacros) ->
              {ok, Epp} | {error, ErrorDescriptor}
              when
                  FileName :: file:name(),
                  IncludePath :: [DirectoryName :: file:name()],
                  PredefMacros :: macros(),
                  Epp :: epp_handle(),
                  ErrorDescriptor :: term().

open(Name, Path, Pdm) ->
    open([{name, Name}, {includes, Path}, {macros, Pdm}]).

-spec open(Options) ->
              {ok, Epp} | {ok, Epp, Extra} | {error, ErrorDescriptor}
              when
                  Options ::
                      [{default_encoding,
                        DefEncoding :: source_encoding()} |
                       {includes,
                        IncludePath :: [DirectoryName :: file:name()]} |
                       {source_name, SourceName :: file:name()} |
                       {deterministic, Enabled :: boolean()} |
                       {macros, PredefMacros :: macros()} |
                       {name, FileName :: file:name()} |
                       {location, StartLocation :: erl_anno:location()} |
                       {fd, FileDescriptor :: file:io_device()} |
                       extra |
                       {compiler_internal, [term()]}],
                  Epp :: epp_handle(),
                  Extra :: [{encoding, source_encoding() | none}],
                  ErrorDescriptor :: term().

open(Options) ->
    case proplists:get_value(name, Options) of
        undefined ->
            error(badarg);
        Name ->
            Self = self(),
            Epp =
                spawn(fun() ->
                             server(Self, Name, Options)
                      end),
            Extra = proplists:get_bool(extra, Options),
            case epp_request(Epp) of
                {ok, Pid, Encoding} when Extra ->
                    {ok, Pid, [{encoding, Encoding}]};
                {ok, Pid, _} ->
                    {ok, Pid};
                {ok, Pid} when Extra ->
                    {ok, Pid, []};
                Other ->
                    Other
            end
    end.

-spec close(Epp) -> ok when Epp :: epp_handle().

close(Epp) ->
    Ref = monitor(process, Epp),
    R = epp_request(Epp, close),
    receive
        {'DOWN', Ref, _, _, _} ->
            ok
    end,
    R.

-spec scan_erl_form(Epp) ->
                       {ok, Tokens} |
                       {error, ErrorInfo} |
                       {warning, WarningInfo} |
                       {eof, Line}
                       when
                           Epp :: epp_handle(),
                           Tokens :: erl_scan:tokens(),
                           Line :: erl_anno:line(),
                           ErrorInfo ::
                               erl_scan:error_info() |
                               erl_parse:error_info(),
                           WarningInfo :: warning_info().

scan_erl_form(Epp) ->
    epp_request(Epp, scan_erl_form).

-spec parse_erl_form(Epp) ->
                        {ok, AbsForm} |
                        {error, ErrorInfo} |
                        {warning, WarningInfo} |
                        {eof, Location}
                        when
                            Epp :: epp_handle(),
                            AbsForm :: erl_parse:abstract_form(),
                            Location :: erl_anno:location(),
                            ErrorInfo ::
                                erl_scan:error_info() |
                                erl_parse:error_info(),
                            WarningInfo :: warning_info().

parse_erl_form(Epp) ->
    case epp_request(Epp, scan_erl_form) of
        {ok, Toks} ->
            erl_parse:parse_form(Toks);
        Other ->
            Other
    end.

macro_defs(Epp) ->
    epp_request(Epp, macro_defs).

-spec format_error(ErrorDescriptor) -> io_lib:chars()
                      when ErrorDescriptor :: term().

format_error(Error) ->
    case format_error_1(Error) of
        {Format, Args} when is_list(Args) ->
            io_lib:format(Format, Args);
        Bin when is_binary(Bin) ->
            unicode:characters_to_list(Bin);
        List when is_list(List) ->
            List
    end.

format_error_1(cannot_parse) ->
    <<"cannot parse file, giving up"/utf8>>;
format_error_1({bad, W}) ->
    {<<"badly formed '~s'"/utf8>>, [W]};
format_error_1({duplicated_argument, Arg}) ->
    {<<"argument '~ts' already used"/utf8>>, [Arg]};
format_error_1(missing_parenthesis) ->
    {<<"badly formed define: missing closing right parenthesis"/utf8>>,
     []};
format_error_1(missing_comma) ->
    <<"badly formed define: missing comma"/utf8>>;
format_error_1(premature_end) ->
    <<"premature end"/utf8>>;
format_error_1({call, What}) ->
    {<<"illegal macro call '~ts'"/utf8>>, [What]};
format_error_1({undefined, M, none}) ->
    {<<"undefined macro '~ts'"/utf8>>, [M]};
format_error_1({undefined, M, A}) ->
    {<<"undefined macro '~ts/~p'"/utf8>>, [M, A]};
format_error_1({depth, What}) ->
    {<<"~s too deep"/utf8>>, [What]};
format_error_1({mismatch, M}) ->
    {<<"argument mismatch for macro '~ts'"/utf8>>, [M]};
format_error_1({arg_error, M}) ->
    {<<"badly formed argument for macro '~ts'"/utf8>>, [M]};
format_error_1({redefine, M}) ->
    {<<"redefining macro '~ts'"/utf8>>, [M]};
format_error_1({redefine_predef, M}) ->
    {<<"redefining predefined macro '~s'"/utf8>>, [M]};
format_error_1({circular, M, none}) ->
    {<<"circular macro '~ts'"/utf8>>, [M]};
format_error_1({circular, M, A}) ->
    {<<"circular macro '~ts/~p'"/utf8>>, [M, A]};
format_error_1({include, W, F}) ->
    {<<"can't find include ~s \"~ts\""/utf8>>, [W, F]};
format_error_1({Tag, invalid, Alternative})
    when Tag =:= moduledoc; Tag =:= doc ->
    {<<"invalid ~s tag, only ~s allowed"/utf8>>, [Tag, Alternative]};
format_error_1({Tag, W, Filename}) when Tag =:= moduledoc; Tag =:= doc ->
    {<<"can't find ~s ~s \"~ts\""/utf8>>, [Tag, W, Filename]};
format_error_1({illegal, How, What}) ->
    {<<"~s '-~s'"/utf8>>, [How, What]};
format_error_1({illegal_function, Macro}) ->
    {<<"?~s can only be used within a function"/utf8>>, [Macro]};
format_error_1({illegal_function_usage, Macro}) ->
    {<<"?~s must not begin a form"/utf8>>, [Macro]};
format_error_1(elif_after_else) ->
    "'elif' following 'else'";
format_error_1({'NYI', What}) ->
    {<<"not yet implemented '~s'"/utf8>>, [What]};
format_error_1({error, Term}) ->
    {<<"-error(~tp)."/utf8>>, [Term]};
format_error_1({warning, Term}) ->
    {<<"-warning(~tp)."/utf8>>, [Term]};
format_error_1(ftr_after_prefix) ->
    <<"feature directive not allowed after exports or record definition"
      "s"/utf8>>;
format_error_1(E) ->
    file:format_error(E).

-spec scan_file(FileName, Options) ->
                   {ok, [Form], Extra} | {error, OpenError}
                   when
                       FileName :: file:name(),
                       Options ::
                           [{includes,
                             IncludePath ::
                                 [DirectoryName :: file:name()]} |
                            {source_name, SourceName :: file:name()} |
                            {macros, PredefMacros :: macros()} |
                            {default_encoding,
                             DefEncoding :: source_encoding()}],
                       Form ::
                           erl_scan:tokens() |
                           {error, ErrorInfo} |
                           {eof, Loc},
                       Loc :: erl_anno:location(),
                       ErrorInfo :: erl_scan:error_info(),
                       Extra :: [{encoding, source_encoding() | none}],
                       OpenError :: file:posix() | badarg | system_limit.

scan_file(Ifile, Options) ->
    case open([{name, Ifile}, extra | Options]) of
        {ok, Epp, Extra} ->
            Forms = scan_file(Epp),
            close(Epp),
            {ok, Forms, Extra};
        {error, E} ->
            {error, E}
    end.

scan_file(Epp) ->
    case scan_erl_form(Epp) of
        {ok, Toks} ->
            [Toks | scan_file(Epp)];
        {error, E} ->
            [{error, E} | scan_file(Epp)];
        {eof, Location} ->
            [{eof, Location}]
    end.

-spec parse_file(FileName, IncludePath, PredefMacros) ->
                    {ok, [Form]} | {error, OpenError}
                    when
                        FileName :: file:name(),
                        IncludePath :: [DirectoryName :: file:name()],
                        Form ::
                            erl_parse:abstract_form() |
                            {error, ErrorInfo} |
                            {eof, Location},
                        PredefMacros :: macros(),
                        Location :: erl_anno:location(),
                        ErrorInfo ::
                            erl_scan:error_info() |
                            erl_parse:error_info(),
                        OpenError ::
                            file:posix() | badarg | system_limit.

parse_file(Ifile, Path, Predefs) ->
    parse_file(Ifile, [{includes, Path}, {macros, Predefs}]).

-spec parse_file(FileName, Options) ->
                    {ok, [Form]} |
                    {ok, [Form], Extra} |
                    {error, OpenError}
                    when
                        FileName :: file:name(),
                        Options ::
                            [{includes,
                              IncludePath ::
                                  [DirectoryName :: file:name()]} |
                             {source_name, SourceName :: file:name()} |
                             {macros, PredefMacros :: macros()} |
                             {default_encoding,
                              DefEncoding :: source_encoding()} |
                             {location,
                              StartLocation :: erl_anno:location()} |
                             {reserved_word_fun,
                              Fun :: fun((atom()) -> boolean())} |
                             {features, [Feature :: atom()]} |
                             extra |
                             {compiler_internal, [term()]}],
                        Form ::
                            erl_parse:abstract_form() |
                            {error, ErrorInfo} |
                            {eof, Location},
                        Location :: erl_anno:location(),
                        ErrorInfo ::
                            erl_scan:error_info() |
                            erl_parse:error_info(),
                        Extra :: [{encoding, source_encoding() | none}],
                        OpenError ::
                            file:posix() | badarg | system_limit.

parse_file(Ifile, Options) ->
    case open([{name, Ifile} | Options]) of
        {ok, Epp} ->
            Forms = parse_file(Epp),
            close(Epp),
            {ok, Forms};
        {ok, Epp, Extra} ->
            Forms = parse_file(Epp),
            Epp ! {get_features, self()},
            Ftrs =
                receive
                    {features, X} ->
                        X
                end,
            close(Epp),
            {ok, Forms, [{features, Ftrs} | Extra]};
        {error, E} ->
            {error, E}
    end.

-spec parse_file(Epp) -> [Form]
                    when
                        Epp :: epp_handle(),
                        Form ::
                            erl_parse:abstract_form() |
                            {error, ErrorInfo} |
                            {warning, WarningInfo} |
                            {eof, Location},
                        Location :: erl_anno:location(),
                        ErrorInfo ::
                            erl_scan:error_info() |
                            erl_parse:error_info(),
                        WarningInfo :: warning_info().

parse_file(Epp) ->
    case parse_erl_form(Epp) of
        {ok, Form} ->
            [Form | parse_file(Epp)];
        {error, E} ->
            [{error, E} | parse_file(Epp)];
        {warning, W} ->
            [{warning, W} | parse_file(Epp)];
        {eof, Location} ->
            [{eof, Location}]
    end.

-spec default_encoding() -> source_encoding().

default_encoding() ->
    utf8.

-spec encoding_to_string(Encoding) -> string()
                            when Encoding :: source_encoding().

encoding_to_string(latin1) ->
    "coding: latin-1";
encoding_to_string(utf8) ->
    "coding: utf-8".

-spec read_encoding(FileName) -> source_encoding() | none
                       when FileName :: file:name().

read_encoding(Name) ->
    read_encoding(Name, []).

-spec read_encoding(FileName, Options) -> source_encoding() | none
                       when
                           FileName :: file:name(),
                           Options :: [Option],
                           Option :: {in_comment_only, boolean()}.

read_encoding(Name, Options) ->
    InComment = proplists:get_value(in_comment_only, Options, true),
    case file:open(Name, [read]) of
        {ok, File} ->
            try
                read_encoding_from_file(File, InComment)
            after
                ok = file:close(File)
            end;
        _Error ->
            none
    end.

-spec set_encoding(File) -> source_encoding() | none
                      when File :: io:device().

set_encoding(File) ->
    set_encoding(File, utf8).

-spec set_encoding(File, Default) -> source_encoding() | none
                      when
                          Default :: source_encoding(),
                          File :: io:device().

set_encoding(File, Default) ->
    Encoding = read_encoding_from_file(File, true),
    Enc =
        case Encoding of
            none ->
                Default;
            Encoding ->
                Encoding
        end,
    ok = io:setopts(File, [{encoding, Enc}]),
    Encoding.

-spec read_encoding_from_binary(Binary) -> source_encoding() | none
                                   when Binary :: binary().

read_encoding_from_binary(Binary) ->
    read_encoding_from_binary(Binary, []).

-spec read_encoding_from_binary(Binary, Options) ->
                                   source_encoding() | none
                                   when
                                       Binary :: binary(),
                                       Options :: [Option],
                                       Option ::
                                           {in_comment_only, boolean()}.

read_encoding_from_binary(Binary, Options) ->
    InComment = proplists:get_value(in_comment_only, Options, true),
    try
        com_nl(Binary, fake_reader(0), 0, InComment)
    catch
        throw:no ->
            none
    end.

fake_reader(N) ->
    fun() when N =:= 16 ->
           throw(no);
       () ->
           {<<>>, fake_reader(N + 1)}
    end.

-spec read_encoding_from_file(File, InComment) ->
                                 source_encoding() | none
                                 when
                                     File :: io:device(),
                                     InComment :: boolean().

read_encoding_from_file(File, InComment) ->
    {ok, Pos0} = file:position(File, cur),
    Opts = io:getopts(File),
    Encoding0 = lists:keyfind(encoding, 1, Opts),
    Binary0 = lists:keyfind(binary, 1, Opts),
    ok = io:setopts(File, [binary, {encoding, latin1}]),
    try
        {B, Fun} = (reader(File, 0))(),
        com_nl(B, Fun, 0, InComment)
    catch
        throw:no ->
            none
    after
        {ok, Pos0} = file:position(File, Pos0),
        ok = io:setopts(File, [Binary0, Encoding0])
    end.

reader(Fd, N) ->
    fun() when N =:= 16 ->
           throw(no);
       () ->
           case file:read(Fd, 32) of
               eof ->
                   {<<>>, reader(Fd, N + 1)};
               {ok, Bin} ->
                   {Bin, reader(Fd, N + 1)};
               {error, _} ->
                   throw(no)
           end
    end.

com_nl(_, _, 2, _) ->
    throw(no);
com_nl(B, Fun, N, false = Com) ->
    com_c(B, Fun, N, Com);
com_nl(B, Fun, N, true = Com) ->
    com(B, Fun, N, Com).

com(<<"\n",B/binary>>, Fun, N, Com) ->
    com_nl(B, Fun, N + 1, Com);
com(<<"%",B/binary>>, Fun, N, Com) ->
    com_c(B, Fun, N, Com);
com(<<_:1/unit:8,B/binary>>, Fun, N, Com) ->
    com(B, Fun, N, Com);
com(<<>>, Fun, N, Com) ->
    {B, Fun1} = Fun(),
    com(B, Fun1, N, Com).

com_c(<<"c",B/binary>>, Fun, N, Com) ->
    com_oding(B, Fun, N, Com);
com_c(<<"\n",B/binary>>, Fun, N, Com) ->
    com_nl(B, Fun, N + 1, Com);
com_c(<<_:1/unit:8,B/binary>>, Fun, N, Com) ->
    com_c(B, Fun, N, Com);
com_c(<<>>, Fun, N, Com) ->
    {B, Fun1} = Fun(),
    com_c(B, Fun1, N, Com).

com_oding(<<"oding",B/binary>>, Fun, N, Com) ->
    com_sep(B, Fun, N, Com);
com_oding(B, Fun, N, Com) when byte_size(B) >= length("oding") ->
    com_c(B, Fun, N, Com);
com_oding(B, Fun, N, Com) ->
    {B1, Fun1} = Fun(),
    com_oding(list_to_binary([B, B1]), Fun1, N, Com).

com_sep(<<":",B/binary>>, Fun, N, Com) ->
    com_space(B, Fun, N, Com);
com_sep(<<"=",B/binary>>, Fun, N, Com) ->
    com_space(B, Fun, N, Com);
com_sep(<<" ",B/binary>>, Fun, N, Com) ->
    com_sep(B, Fun, N, Com);
com_sep(<<>>, Fun, N, Com) ->
    {B, Fun1} = Fun(),
    com_sep(B, Fun1, N, Com);
com_sep(B, Fun, N, Com) ->
    com_c(B, Fun, N, Com).

com_space(<<" ",B/binary>>, Fun, N, Com) ->
    com_space(B, Fun, N, Com);
com_space(<<>>, Fun, N, Com) ->
    {B, Fun1} = Fun(),
    com_space(B, Fun1, N, Com);
com_space(B, Fun, N, _Com) ->
    com_enc(B, Fun, N, [], []).

com_enc(<<C:1/unit:8,B/binary>>, Fun, N, L, Ps)
    when C >= $a, C =< $z; C >= $A, C =< $Z; C >= $0, C =< $9 ->
    com_enc(B, Fun, N, [C | L], Ps);
com_enc(<<>>, Fun, N, L, Ps) ->
    case Fun() of
        {<<>>, _} ->
            com_enc_end([L | Ps]);
        {B, Fun1} ->
            com_enc(B, Fun1, N, L, Ps)
    end;
com_enc(<<"-",B/binary>>, Fun, N, L, Ps) ->
    com_enc(B, Fun, N, [], [L | Ps]);
com_enc(_B, _Fun, _N, L, Ps) ->
    com_enc_end([L | Ps]).

com_enc_end(Ps0) ->
    Ps =
        lists:reverse([ 
                       lists:reverse(lowercase(P)) ||
                           P <- Ps0
                      ]),
    com_encoding(Ps).

com_encoding(["latin", "1" | _]) ->
    latin1;
com_encoding(["utf", "8" | _]) ->
    utf8;
com_encoding(_) ->
    throw(no).

lowercase(S) ->
    unicode:characters_to_list(string:lowercase(S)).

normalize_typed_record_fields([]) ->
    {typed, []};
normalize_typed_record_fields(Fields) ->
    normalize_typed_record_fields(Fields, [], false).

normalize_typed_record_fields([], NewFields, Typed) ->
    case Typed of
        true ->
            {typed, lists:reverse(NewFields)};
        false ->
            not_typed
    end;
normalize_typed_record_fields([{typed_record_field, Field, _} | Rest],
                              NewFields, _Typed) ->
    normalize_typed_record_fields(Rest, [Field | NewFields], true);
normalize_typed_record_fields([Field | Rest], NewFields, Typed) ->
    normalize_typed_record_fields(Rest, [Field | NewFields], Typed).

restore_typed_record_fields([]) ->
    [];
restore_typed_record_fields([{attribute, A, record,
                              {Record, _NewFields}},
                             {attribute, A, type,
                              {{record, Record}, Fields, []}} |
                             Forms]) ->
    [{attribute, A, record, {Record, Fields}} |
     restore_typed_record_fields(Forms)];
restore_typed_record_fields([{attribute, A, type,
                              {{record, Record}, Fields, []}} |
                             Forms]) ->
    [{attribute, A, record, {Record, Fields}} |
     restore_typed_record_fields(Forms)];
restore_typed_record_fields([Form | Forms]) ->
    [Form | restore_typed_record_fields(Forms)].

server(Pid, Name, Options) ->
    process_flag(trap_exit, true),
    St =
        {epp, undefined, 1, 0,
         "",
         "",
         [], [], [],
         #{},
         #{},
         utf8, false, true, [], [], false, [], false},
    case proplists:get_value(fd, Options) of
        undefined ->
            case file:open(Name, [read]) of
                {ok, File} ->
                    init_server(Pid, Name, Options,
                                begin
                                    REC0 = St,
                                    case REC0 of
                                        {epp, _, _, _, _, _, _, _, _, _,
                                         _, _, _, _, _, _, _, _, _} ->
                                            setelement(2, REC0, File);
                                        _ ->
                                            error({badrecord, REC0})
                                    end
                                end);
                {error, E} ->
                    epp_reply(Pid, {error, E})
            end;
        Fd ->
            init_server(Pid, Name, Options,
                        begin
                            REC1 = St,
                            case REC1 of
                                {epp, _, _, _, _, _, _, _, _, _, _, _,
                                 _, _, _, _, _, _, _} ->
                                    setelement(2,
                                               setelement(13, REC1,
                                                          true),
                                               Fd);
                                _ ->
                                    error({badrecord, REC1})
                            end
                        end)
    end.

init_server(Pid, FileName, Options, St0) ->
    SourceName = proplists:get_value(source_name, Options, FileName),
    Pdm = proplists:get_value(macros, Options, []),
    Features = proplists:get_value(features, Options, []),
    Internal = proplists:get_value(compiler_internal, Options, []),
    ParseChecks = proplists:get_bool(ssa_checks, Internal),
    Ms0 = predef_macros(SourceName, Features),
    case user_predef(Pdm, Ms0) of
        {ok, Ms1} ->
            DefEncoding =
                proplists:get_value(default_encoding, Options, utf8),
            Encoding =
                set_encoding(case St0 of
                                 {epp, REC2, _, _, _, _, _, _, _, _, _,
                                  _, _, _, _, _, _, _, _} ->
                                     REC2;
                                 REC2 ->
                                     error({badrecord, REC2})
                             end,
                             DefEncoding),
            epp_reply(Pid, {ok, self(), Encoding}),
            Path =
                [filename:dirname(FileName) |
                 proplists:get_value(includes, Options, [])],
            {ok, {_, ResWordFun0}} =
                erl_features:keyword_fun([],
                                         fun erl_scan:f_reserved_word/1),
            ResWordFun =
                proplists:get_value(reserved_word_fun, Options,
                                    ResWordFun0),
            AtLocation = proplists:get_value(location, Options, 1),
            Deterministic =
                proplists:get_value(deterministic, Options, false),
            St =
                begin
                    REC3 =
                        [{text_fun, keep_ftr_keywords()},
                         {reserved_word_fun, ResWordFun}]
                        ++
                        if
                            ParseChecks ->
                                [{compiler_internal, [ssa_checks]}];
                            true ->
                                []
                        end,
                    REC4 = ResWordFun('else'),
                    REC5 = St0,
                    case REC5 of
                        {epp, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                         _, _, _, _} ->
                            setelement(3,
                                       setelement(4,
                                                  setelement(5,
                                                             setelement(6,
                                                                        setelement(9,
                                                                                   setelement(10,
                                                                                              setelement(12,
                                                                                                         setelement(15,
                                                                                                                    setelement(16,
                                                                                                                               setelement(17,
                                                                                                                                          setelement(19,
                                                                                                                                                     REC5,
                                                                                                                                                     Deterministic),
                                                                                                                                          REC4),
                                                                                                                               Features),
                                                                                                                    REC3),
                                                                                                         DefEncoding),
                                                                                              Ms1),
                                                                                   Path),
                                                                        SourceName),
                                                             SourceName),
                                                  0),
                                       AtLocation);
                        _ ->
                            error({badrecord, REC5})
                    end
                end,
            From = wait_request(St),
            Anno = erl_anno:new(AtLocation),
            enter_file_reply(From,
                             file_name(SourceName),
                             Anno, AtLocation, code, Deterministic),
            wait_req_scan(St);
        {error, E} ->
            epp_reply(Pid, {error, E})
    end.

keep_ftr_keywords() ->
    Features = erl_features:configurable(),
    Keywords = lists:flatmap(fun erl_features:keywords/1, Features),
    F = fun(Atom) ->
               atom_to_list(Atom) ++ "'"
        end,
    Strings = lists:map(F, Keywords),
    fun(atom, [$' | S]) ->
           lists:member(S, Strings);
       (_, _) ->
           false
    end.

predef_macros(File, EnabledFeatures0) ->
    Machine = list_to_atom(erlang:system_info(machine)),
    Anno = line1(),
    OtpVersion = list_to_integer(erlang:system_info(otp_release)),
    AvailableFeatures =
        [ 
         Ftr ||
             Ftr <- erl_features:all(),
             maps:get(status, erl_features:info(Ftr)) /= rejected
        ],
    PermanentFeatures =
        [ 
         Ftr ||
             Ftr <- erl_features:all(),
             maps:get(status, erl_features:info(Ftr)) == permanent
        ],
    EnabledFeatures = EnabledFeatures0 ++ PermanentFeatures,
    Defs =
        [{'FILE', {none, [{string, Anno, File}]}},
         {'FUNCTION_NAME', undefined},
         {'FUNCTION_ARITY', undefined},
         {'LINE', {none, [{integer, Anno, 1}]}},
         {'MODULE', undefined},
         {'MODULE_STRING', undefined},
         {'BASE_MODULE', undefined},
         {'BASE_MODULE_STRING', undefined},
         {'MACHINE', {none, [{atom, Anno, Machine}]}},
         {Machine, {none, [{atom, Anno, true}]}},
         {'OTP_RELEASE', {none, [{integer, Anno, OtpVersion}]}},
         {'FEATURE_AVAILABLE', [ftr_macro(AvailableFeatures)]},
         {'FEATURE_ENABLED', [ftr_macro(EnabledFeatures)]}],
    maps:from_list(Defs).

ftr_macro(Features) ->
    Anno = line1(),
    Arg = 'X',
    Fexp =
        fun(Ftr) ->
               [{'(', Anno},
                {var, Anno, Arg},
                {')', Anno},
                {'==', Anno},
                {atom, Anno, Ftr}]
        end,
    Body =
        case Features of
            [] ->
                [{atom, Anno, false}];
            [Ftr | Ftrs] ->
                [{'(', Anno} |
                 lists:foldl(fun(F, Expr) ->
                                    Fexp(F) ++ [{'orelse', Anno} | Expr]
                             end,
                             Fexp(Ftr) ++ [{')', Anno}],
                             Ftrs)]
        end,
    {1, {[Arg], Body}}.

user_predef([{M, Val, redefine} | Pdm], Ms) when is_atom(M) ->
    Exp = erl_parse:tokens(erl_parse:abstract(Val)),
    user_predef(Pdm, Ms#{M => {none, Exp}});
user_predef([{M, Val} | Pdm], Ms) when is_atom(M) ->
    case Ms of
        #{M := Defs} when is_list(Defs) ->
            {error, {redefine, M}};
        #{M := _Defs} ->
            {error, {redefine_predef, M}};
        _ ->
            Exp = erl_parse:tokens(erl_parse:abstract(Val)),
            user_predef(Pdm, Ms#{M => [{none, {none, Exp}}]})
    end;
user_predef([M | Pdm], Ms) when is_atom(M) ->
    user_predef([{M, true} | Pdm], Ms);
user_predef([Md | _Pdm], _Ms) ->
    {error, {bad, Md}};
user_predef([], Ms) ->
    {ok, Ms}.

wait_request(St) ->
    receive
        {epp_request, From, scan_erl_form} ->
            From;
        {get_features, From} ->
            From
            !
            {features,
             case St of
                 {epp, _, _, _, _, _, _, _, _, _, _, _, _, _, _, REC6,
                  _, _, _} ->
                     REC6;
                 REC6 ->
                     error({badrecord, REC6})
             end},
            wait_request(St);
        {epp_request, From, macro_defs} ->
            Defs =
                [ 
                 {{atom, K}, V} ||
                     K := V <-
                         case St of
                             {epp, _, _, _, _, _, _, _, _, REC7, _, _,
                              _, _, _, _, _, _, _} ->
                                 REC7;
                             REC7 ->
                                 error({badrecord, REC7})
                         end
                ],
            epp_reply(From, Defs),
            wait_request(St);
        {epp_request, From, close} ->
            close_file(St),
            epp_reply(From, ok),
            exit(normal);
        {'EXIT', _, R} ->
            exit(R);
        Other ->
            io:fwrite("Epp: unknown '~w'\n", [Other]),
            wait_request(St)
    end.

close_file({epp, _, _, _, _, _, _, _, _, _, _, _, true, _, _, _, _, _,
            _}) ->
    ok;
close_file({epp, File, _, _, _, _, _, _, _, _, _, _, false, _, _, _, _,
            _, _}) ->
    ok = file:close(File).

wait_req_scan(St) ->
    From = wait_request(St),
    scan_toks(From, St).

wait_req_skip(St, Sis) ->
    From = wait_request(St),
    skip_toks(From, St, Sis).

enter_file(_NewName, Inc, From,
           {epp, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _} =
               St)
    when
        (true
         orelse
         fail)
        and
        (length(element(8, St)) >= 8) ->
    epp_reply(From, {error, {loc(Inc), epp, {depth, "include"}}}),
    wait_req_scan(St);
enter_file(NewName, Inc, From, St) ->
    case
        file:path_open(case St of
                           {epp, _, _, _, _, _, _, _, REC8, _, _, _, _,
                            _, _, _, _, _, _} ->
                               REC8;
                           REC8 ->
                               error({badrecord, REC8})
                       end,
                       NewName,
                       [read])
    of
        {ok, NewF, Pname} ->
            Loc =
                start_loc(case St of
                              {epp, _, REC9, _, _, _, _, _, _, _, _, _,
                               _, _, _, _, _, _, _} ->
                                  REC9;
                              REC9 ->
                                  error({badrecord, REC9})
                          end),
            wait_req_scan(enter_file2(NewF, Pname, From, St, Loc));
        {error, _E} ->
            epp_reply(From,
                      {error, {loc(Inc), epp, {include, file, NewName}}}),
            wait_req_scan(St)
    end.

enter_file2(NewF, Pname, From, St0, AtLocation) ->
    Anno = erl_anno:new(AtLocation),
    enter_file_reply(From, Pname, Anno, AtLocation, code,
                     case St0 of
                         {epp, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                          _, _, _, REC10} ->
                             REC10;
                         REC10 ->
                             error({badrecord, REC10})
                     end),
    {epp, _, _, _, _, _, _, _, _, Ms0, _, DefEncoding, _, InPrefix,
     ScanOpts, Ftrs, ElseReserved, _, Deterministic} =
        St0,
    Ms =
        Ms0#{'FILE' := {none, [{string, Anno, source_name(St0, Pname)}]}},
    Path =
        [filename:dirname(Pname) |
         tl(case St0 of
                {epp, _, _, _, _, _, _, _, REC11, _, _, _, _, _, _, _,
                 _, _, _} ->
                    REC11;
                REC11 ->
                    error({badrecord, REC11})
            end)],
    _ = set_encoding(NewF, DefEncoding),
    {epp, NewF, AtLocation, 0, Pname, Pname, [],
     [St0 |
      case St0 of
          {epp, _, _, _, _, _, _, REC12, _, _, _, _, _, _, _, _, _, _,
           _} ->
              REC12;
          REC12 ->
              error({badrecord, REC12})
      end],
     Path, Ms,
     #{},
     DefEncoding, false, InPrefix, ScanOpts, Ftrs, ElseReserved, [],
     Deterministic}.

enter_file_reply(From, Name, LocationAnno, AtLocation, Where,
                 Deterministic) ->
    Anno0 = erl_anno:new(AtLocation),
    Anno =
        case Where of
            code ->
                Anno0;
            generated ->
                erl_anno:set_generated(true, Anno0)
        end,
    Rep =
        {ok,
         [{'-', Anno},
          {atom, Anno, file},
          {'(', Anno},
          {string, Anno, source_name(Deterministic, Name)},
          {',', Anno},
          {integer, Anno, get_line(LocationAnno)},
          {')', LocationAnno},
          {dot, Anno}]},
    epp_reply(From, Rep).

file_name([C | T]) when is_integer(C), C > 0 ->
    [C | file_name(T)];
file_name([H | T]) ->
    file_name(H) ++ file_name(T);
file_name([]) ->
    [];
file_name(N) when is_atom(N) ->
    atom_to_list(N).

leave_file(From, St) ->
    case
        case St of
            {epp, _, _, _, _, _, REC13, _, _, _, _, _, _, _, _, _, _, _,
             _} ->
                REC13;
            REC13 ->
                error({badrecord, REC13})
        end
    of
        [I | Cis] ->
            epp_reply(From,
                      {error,
                       {case St of
                            {epp, _, REC14, _, _, _, _, _, _, _, _, _,
                             _, _, _, _, _, _, _} ->
                                REC14;
                            REC14 ->
                                error({badrecord, REC14})
                        end,
                        epp,
                        {illegal, "unterminated", I}}}),
            leave_file(wait_request(St),
                       begin
                           REC15 = St,
                           case REC15 of
                               {epp, _, _, _, _, _, _, _, _, _, _, _, _,
                                _, _, _, _, _, _} ->
                                   setelement(7, REC15, Cis);
                               _ ->
                                   error({badrecord, REC15})
                           end
                       end);
        [] ->
            case
                case St of
                    {epp, _, _, _, _, _, _, REC16, _, _, _, _, _, _, _,
                     _, _, _, _} ->
                        REC16;
                    REC16 ->
                        error({badrecord, REC16})
                end
            of
                [OldSt | Sts] ->
                    close_file(St),
                    {epp, _, OldLoc, Delta, OldName, OldName2, _, _, _,
                     _, _, _, _, _, _, _, _, _, _} =
                        OldSt,
                    CurrLoc = add_line(OldLoc, Delta),
                    Anno = erl_anno:new(CurrLoc),
                    Ms0 =
                        case St of
                            {epp, _, _, _, _, _, _, _, _, REC17, _, _,
                             _, _, _, _, _, _, _} ->
                                REC17;
                            REC17 ->
                                error({badrecord, REC17})
                        end,
                    InPrefix =
                        case St of
                            {epp, _, _, _, _, _, _, _, _, _, _, _, _,
                             REC18, _, _, _, _, _} ->
                                REC18;
                            REC18 ->
                                error({badrecord, REC18})
                        end,
                    Ftrs =
                        case St of
                            {epp, _, _, _, _, _, _, _, _, _, _, _, _, _,
                             _, REC19, _, _, _} ->
                                REC19;
                            REC19 ->
                                error({badrecord, REC19})
                        end,
                    ElseReserved =
                        case St of
                            {epp, _, _, _, _, _, _, _, _, _, _, _, _, _,
                             _, _, REC20, _, _} ->
                                REC20;
                            REC20 ->
                                error({badrecord, REC20})
                        end,
                    ScanOpts =
                        case St of
                            {epp, _, _, _, _, _, _, _, _, _, _, _, _, _,
                             REC21, _, _, _, _} ->
                                REC21;
                            REC21 ->
                                error({badrecord, REC21})
                        end,
                    Ms =
                        Ms0#{'FILE' :=
                                 {none,
                                  [{string, Anno,
                                    source_name(St, OldName2)}]}},
                    NextSt =
                        begin
                            REC22 =
                                case St of
                                    {epp, _, _, _, _, _, _, _, _, _,
                                     REC24, _, _, _, _, _, _, _, _} ->
                                        REC24;
                                    REC24 ->
                                        error({badrecord, REC24})
                                end,
                            REC23 = OldSt,
                            case REC23 of
                                {epp, _, _, _, _, _, _, _, _, _, _, _,
                                 _, _, _, _, _, _, _} ->
                                    setelement(8,
                                               setelement(10,
                                                          setelement(11,
                                                                     setelement(14,
                                                                                setelement(15,
                                                                                           setelement(16,
                                                                                                      setelement(17,
                                                                                                                 REC23,
                                                                                                                 ElseReserved),
                                                                                                      Ftrs),
                                                                                           ScanOpts),
                                                                                InPrefix),
                                                                     REC22),
                                                          Ms),
                                               Sts);
                                _ ->
                                    error({badrecord, REC23})
                            end
                        end,
                    enter_file_reply(From, OldName, Anno, CurrLoc, code,
                                     case St of
                                         {epp, _, _, _, _, _, _, _, _,
                                          _, _, _, _, _, _, _, _, _,
                                          REC25} ->
                                             REC25;
                                         REC25 ->
                                             error({badrecord, REC25})
                                     end),
                    case OldName2 =:= OldName of
                        true ->
                            ok;
                        false ->
                            NFrom = wait_request(NextSt),
                            OldAnno = erl_anno:new(OldLoc),
                            enter_file_reply(NFrom, OldName2, OldAnno,
                                             CurrLoc, generated,
                                             case St of
                                                 {epp, _, _, _, _, _, _,
                                                  _, _, _, _, _, _, _,
                                                  _, _, _, _, REC26} ->
                                                     REC26;
                                                 REC26 ->
                                                     error({badrecord,
                                                            REC26})
                                             end)
                    end,
                    wait_req_scan(NextSt);
                [] ->
                    epp_reply(From,
                              {eof,
                               case St of
                                   {epp, _, REC27, _, _, _, _, _, _, _,
                                    _, _, _, _, _, _, _, _, _} ->
                                       REC27;
                                   REC27 ->
                                       error({badrecord, REC27})
                               end}),
                    wait_req_scan(St)
            end
    end.

scan_toks(From, St) ->
    {epp, File, Loc, _, _, _, _, _, _, _, _, _, _, _, ScanOpts, _, _, _,
     _} =
        St,
    case io:scan_erl_form(File, '', Loc, ScanOpts) of
        {ok, Toks, Cl} ->
            scan_toks(Toks, From,
                      begin
                          REC28 = St,
                          case REC28 of
                              {epp, _, _, _, _, _, _, _, _, _, _, _, _,
                               _, _, _, _, _, _} ->
                                  setelement(3, REC28, Cl);
                              _ ->
                                  error({badrecord, REC28})
                          end
                      end);
        {error, E, Cl} ->
            epp_reply(From, {error, E}),
            wait_req_scan(begin
                              REC29 = St,
                              case REC29 of
                                  {epp, _, _, _, _, _, _, _, _, _, _, _,
                                   _, _, _, _, _, _, _} ->
                                      setelement(3, REC29, Cl);
                                  _ ->
                                      error({badrecord, REC29})
                              end
                          end);
        {eof, Cl} ->
            leave_file(From,
                       begin
                           REC30 = St,
                           case REC30 of
                               {epp, _, _, _, _, _, _, _, _, _, _, _, _,
                                _, _, _, _, _, _} ->
                                   setelement(3, REC30, Cl);
                               _ ->
                                   error({badrecord, REC30})
                           end
                       end);
        {error, _E} ->
            epp_reply(From,
                      {error,
                       {case St of
                            {epp, _, REC31, _, _, _, _, _, _, _, _, _,
                             _, _, _, _, _, _, _} ->
                                REC31;
                            REC31 ->
                                error({badrecord, REC31})
                        end,
                        epp, cannot_parse}}),
            leave_file(wait_request(St), St)
    end.

scan_toks([{'-', _Lh}, {atom, _Ld, feature} = Feature | Toks], From, St) ->
    scan_feature(Toks, Feature, From, St);
scan_toks([{'-', _Lh}, {atom, _Ld, define} = Define | Toks], From, St) ->
    scan_define(Toks, Define, From, St);
scan_toks([{'-', _Lh}, {atom, _Ld, undef} = Undef | Toks], From, St) ->
    scan_undef(Toks, Undef, From, leave_prefix(St));
scan_toks([{'-', _Lh}, {atom, _Ld, error} = Error | Toks], From, St) ->
    scan_err_warn(Toks, Error, From, leave_prefix(St));
scan_toks([{'-', _Lh}, {atom, _Ld, warning} = Warn | Toks], From, St) ->
    scan_err_warn(Toks, Warn, From, leave_prefix(St));
scan_toks([{'-', _Lh}, {atom, _Li, include} = Inc | Toks], From, St) ->
    scan_include(Toks, Inc, From, St);
scan_toks([{'-', _Lh},
           {atom, _Ld, D} = Doc |
           [{'(', _}, {'{', _} | _] = Toks],
          From, St)
    when D =:= doc; D =:= moduledoc ->
    scan_filedoc(coalesce_strings(Toks), Doc, From, St);
scan_toks([{'-', _Lh}, {atom, _Ld, D} = Doc | [{'{', _} | _] = Toks],
          From, St)
    when D =:= doc; D =:= moduledoc ->
    scan_filedoc(coalesce_strings(Toks), Doc, From, St);
scan_toks([{'-', _Lh}, {atom, _Li, include_lib} = IncLib | Toks],
          From, St) ->
    scan_include_lib(Toks, IncLib, From, St);
scan_toks([{'-', _Lh}, {atom, _Li, ifdef} = IfDef | Toks], From, St) ->
    scan_ifdef(Toks, IfDef, From, St);
scan_toks([{'-', _Lh}, {atom, _Li, ifndef} = IfnDef | Toks], From, St) ->
    scan_ifndef(Toks, IfnDef, From, St);
scan_toks([{'-', _Lh}, {atom, _Le, 'else'} = Else | Toks], From, St) ->
    scan_else(Toks, Else, From, St);
scan_toks([{'-', _Lh}, {'else', _Le} = Else | Toks],
          From,
          {epp, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _} =
              St)
    when
        (true
         orelse
         fail)
        and
        element(17, St) ->
    scan_else(Toks, Else, From, St);
scan_toks([{'-', _Lh}, {'if', _Le} = If | Toks], From, St) ->
    scan_if(Toks, If, From, St);
scan_toks([{'-', _Lh}, {atom, _Le, elif} = Elif | Toks], From, St) ->
    scan_elif(Toks, Elif, From, St);
scan_toks([{'-', _Lh}, {atom, _Le, endif} = Endif | Toks], From, St) ->
    scan_endif(Toks, Endif, From, St);
scan_toks([{'-', _Lh}, {atom, _Lf, file} = FileToken | Toks0], From, St) ->
    case catch expand_macros(Toks0, St) of
        Toks1 when is_list(Toks1) ->
            scan_file(Toks1, FileToken, From, St);
        {error, ErrL, What} ->
            epp_reply(From, {error, {ErrL, epp, What}}),
            wait_req_scan(St)
    end;
scan_toks(Toks0, From, St) ->
    case
        catch
            expand_macros(Toks0,
                          begin
                              REC32 = St,
                              case REC32 of
                                  {epp, _, _, _, _, _, _, _, _, _, _, _,
                                   _, _, _, _, _, _, _} ->
                                      setelement(18, REC32, Toks0);
                                  _ ->
                                      error({badrecord, REC32})
                              end
                          end)
    of
        Toks1 when is_list(Toks1) ->
            InPrefix =
                case St of
                    {epp, _, _, _, _, _, _, _, _, _, _, _, _, REC33, _,
                     _, _, _, _} ->
                        REC33;
                    REC33 ->
                        error({badrecord, REC33})
                end
                andalso
                case Toks1 of
                    [] ->
                        true;
                    [{'-', _Loc}, Tok | _] ->
                        in_prefix(Tok);
                    _ ->
                        false
                end,
            epp_reply(From, {ok, Toks1}),
            wait_req_scan(begin
                              REC34 =
                                  scan_module(Toks1,
                                              case St of
                                                  {epp, _, _, _, _, _,
                                                   _, _, _, REC36, _, _,
                                                   _, _, _, _, _, _, _} ->
                                                      REC36;
                                                  REC36 ->
                                                      error({badrecord,
                                                             REC36})
                                              end),
                              REC35 = St,
                              case REC35 of
                                  {epp, _, _, _, _, _, _, _, _, _, _, _,
                                   _, _, _, _, _, _, _} ->
                                      setelement(10,
                                                 setelement(14, REC35,
                                                            InPrefix),
                                                 REC34);
                                  _ ->
                                      error({badrecord, REC35})
                              end
                          end);
        {error, ErrL, What} ->
            epp_reply(From, {error, {ErrL, epp, What}}),
            wait_req_scan(St)
    end.

scan_filedoc([{'(', _},
              {'{', _},
              {atom, _, file},
              {',', _},
              {string, _, _} = DocFilename,
              {'}', _},
              {')', _},
              {dot, _} = Dot],
             DocType, From, St) ->
    scan_filedoc_content(DocFilename, Dot, DocType, From, St);
scan_filedoc([{'(', _}, {'{', _}, {atom, _, file} | _] = Toks,
             DocType, From, St) ->
    T = find_mismatch(['(', '{', atom, ',', string, '}', ')', dot],
                      Toks, DocType),
    epp_reply(From, {error, {loc(T), epp, {bad, DocType}}}),
    wait_req_scan(St);
scan_filedoc([{'(', _}, {'{', _}, T | _], DocType, From, St) ->
    epp_reply(From, {error, {loc(T), epp, {DocType, invalid, file}}}),
    wait_req_scan(St);
scan_filedoc([{'{', _},
              {atom, _, file},
              {',', _},
              {string, _, _} = DocFilename,
              {'}', _},
              {dot, _} = Dot],
             DocType, From, St) ->
    scan_filedoc_content(DocFilename, Dot, DocType, From, St);
scan_filedoc([{'{', _}, {atom, _, file} | _] = Toks,
             {atom, _, DocType},
             From, St) ->
    T = find_mismatch(['{', {atom, file}, ',', string, '}', dot],
                      Toks, DocType),
    epp_reply(From, {error, {loc(T), epp, {bad, DocType}}}),
    wait_req_scan(St);
scan_filedoc([{'{', _}, T | _], {atom, _, DocType}, From, St) ->
    epp_reply(From, {error, {loc(T), epp, {DocType, invalid, file}}}),
    wait_req_scan(St).

scan_filedoc_content({string, _A, DocFilename},
                     Dot,
                     {atom, DocLoc, Doc},
                     From,
                     {epp, _, _, _, CurrentFilename, _, _, _, _, _, _,
                      _, _, _, _, _, _, _, _} =
                         St) ->
    Cwd =
        hd(case St of
               {epp, _, _, _, _, _, _, _, REC37, _, _, _, _, _, _, _, _,
                _, _} ->
                   REC37;
               REC37 ->
                   error({badrecord, REC37})
           end),
    case file:path_open([Cwd], DocFilename, [read, binary]) of
        {ok, NewF, Pname} ->
            case file:read_file_info(NewF) of
                {ok,
                 {file_info, Sz, _, _, _, _, _, _, _, _, _, _, _, _}} ->
                    {ok, Bin} = file:read(NewF, Sz),
                    ok = file:close(NewF),
                    StartLoc =
                        start_loc(case St of
                                      {epp, _, REC38, _, _, _, _, _, _,
                                       _, _, _, _, _, _, _, _, _, _} ->
                                          REC38;
                                      REC38 ->
                                          error({badrecord, REC38})
                                  end),
                    enter_file_reply(From, Pname,
                                     erl_anno:new(StartLoc),
                                     StartLoc, code,
                                     case St of
                                         {epp, _, _, _, _, _, _, _, _,
                                          _, _, _, _, _, _, _, _, _,
                                          REC39} ->
                                             REC39;
                                         REC39 ->
                                             error({badrecord, REC39})
                                     end),
                    epp_reply(From,
                              {ok,
                               [{'-', StartLoc}, {atom, StartLoc, Doc}]
                               ++
                               [{string, StartLoc,
                                 unicode:characters_to_list(Bin)},
                                {dot, StartLoc}]}),
                    enter_file_reply(From, CurrentFilename,
                                     erl_anno:new(loc(Dot)),
                                     loc(Dot),
                                     code,
                                     case St of
                                         {epp, _, _, _, _, _, _, _, _,
                                          _, _, _, _, _, _, _, _, _,
                                          REC40} ->
                                             REC40;
                                         REC40 ->
                                             error({badrecord, REC40})
                                     end),
                    wait_req_scan(St);
                {error, _} ->
                    ok = file:close(NewF),
                    epp_reply(From,
                              {error,
                               {DocLoc, epp, {Doc, file, DocFilename}}}),
                    wait_req_scan(St)
            end;
        {error, enoent} ->
            epp_reply(From,
                      {warning, {DocLoc, epp, {Doc, file, DocFilename}}}),
            epp_reply(From,
                      {ok,
                       [{'-', DocLoc}, {atom, DocLoc, Doc}]
                       ++
                       [{string, DocLoc, ""}, {dot, DocLoc}]}),
            wait_req_scan(St);
        {error, _} ->
            epp_reply(From,
                      {error, {DocLoc, epp, {Doc, file, DocFilename}}}),
            wait_req_scan(St)
    end.

in_prefix({atom, _, Atom}) ->
    lists:member(Atom,
                 [module, feature, 'if', 'else', elif, endif, ifdef,
                  ifndef, define, undef, include, include_lib,
                  moduledoc, doc]);
in_prefix(_T) ->
    false.

leave_prefix({epp, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _} =
                 St) ->
    begin
        REC41 = St,
        case REC41 of
            {epp, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _} ->
                setelement(14, REC41, false);
            _ ->
                error({badrecord, REC41})
        end
    end.

scan_module([{'-', _Ah}, {atom, _Am, module}, {'(', _Al} | Ts], Ms) ->
    scan_module_1(Ts, Ms);
scan_module([{'-', _Ah}, {atom, _Am, extends}, {'(', _Al} | Ts], Ms) ->
    scan_extends(Ts, Ms);
scan_module(_Ts, Ms) ->
    Ms.

scan_module_1([{atom, _, _} = A, {',', Anno} | Ts], Ms) ->
    scan_module_1([A, {')', Anno} | Ts], Ms);
scan_module_1([{atom, Anno, A} = ModAtom, {')', _Ar} | _Ts], Ms0) ->
    ModString = atom_to_list(A),
    Ms = Ms0#{'MODULE' := {none, [ModAtom]}},
    Ms#{'MODULE_STRING' := {none, [{string, Anno, ModString}]}};
scan_module_1(_Ts, Ms) ->
    Ms.

scan_extends([{atom, Anno, A} = ModAtom, {')', _Ar} | _Ts], Ms0) ->
    ModString = atom_to_list(A),
    Ms = Ms0#{'BASE_MODULE' := {none, [ModAtom]}},
    Ms#{'BASE_MODULE_STRING' := {none, [{string, Anno, ModString}]}};
scan_extends(_Ts, Ms) ->
    Ms.

scan_err_warn([{'(', _} | _] = Toks0, {atom, _, Tag} = Token, From, St) ->
    try expand_macros(Toks0, St) of
        Toks when is_list(Toks) ->
            case erl_parse:parse_term(Toks) of
                {ok, Term} ->
                    epp_reply(From,
                              {Tag, {loc(Token), epp, {Tag, Term}}});
                {error, _} ->
                    epp_reply(From,
                              {error, {loc(Token), epp, {bad, Tag}}})
            end
    catch
        _:_ ->
            epp_reply(From, {error, {loc(Token), epp, {bad, Tag}}})
    end,
    wait_req_scan(St);
scan_err_warn(Toks, {atom, _, Tag} = Token, From, St) ->
    T = no_match(Toks, Token),
    epp_reply(From, {error, {loc(T), epp, {bad, Tag}}}),
    wait_req_scan(St).

scan_feature([{'(', _Ap},
              {atom, _Am, Ftr},
              {',', _},
              {atom, _, Ind},
              {')', _},
              {dot, _}],
             Feature, From,
             {epp, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _} =
                 St)
    when
        (true
         orelse
         fail)
        and
        element(14, St),
        Ind =:= enable
        orelse
        Ind =:= disable ->
    case update_features(St, Ind, Ftr, loc(Feature)) of
        {ok, St1} ->
            scan_toks(From, St1);
        {error, {{Mod, Reason}, ErrLoc}} ->
            epp_reply(From, {error, {ErrLoc, Mod, Reason}}),
            wait_req_scan(St)
    end;
scan_feature([{'(', _Ap},
              {atom, _Am, _Ind},
              {',', _},
              {atom, _, _Ftr},
              {')', _},
              {dot, _} |
              _Toks],
             Feature, From, St)
    when
        not ((is_record(St, epp, 19)
              orelse
              fail)
             and
             element(14, St)) ->
    epp_reply(From, {error, {loc(Feature), epp, ftr_after_prefix}}),
    wait_req_scan(St);
scan_feature(Toks, {atom, _, Tag} = Token, From, St) ->
    T = no_match(Toks, Token),
    epp_reply(From, {error, {loc(T), epp, {bad, Tag}}}),
    wait_req_scan(St).

update_features(St0, Ind, Ftr, Loc) ->
    Ftrs0 =
        case St0 of
            {epp, _, _, _, _, _, _, _, _, _, _, _, _, _, _, REC42, _, _,
             _} ->
                REC42;
            REC42 ->
                error({badrecord, REC42})
        end,
    ScanOpts0 =
        case St0 of
            {epp, _, _, _, _, _, _, _, _, _, _, _, _, _, REC43, _, _, _,
             _} ->
                REC43;
            REC43 ->
                error({badrecord, REC43})
        end,
    KeywordFun =
        case proplists:get_value(reserved_word_fun, ScanOpts0) of
            undefined ->
                fun erl_scan:f_reserved_word/1;
            Fun ->
                Fun
        end,
    case erl_features:keyword_fun(Ind, Ftr, Ftrs0, KeywordFun) of
        {error, Reason} ->
            {error, {Reason, Loc}};
        {ok, {Ftrs1, ResWordFun1}} ->
            Macs0 =
                case St0 of
                    {epp, _, _, _, _, _, _, _, _, REC44, _, _, _, _, _,
                     _, _, _, _} ->
                        REC44;
                    REC44 ->
                        error({badrecord, REC44})
                end,
            Macs1 = Macs0#{'FEATURE_ENABLED' => [ftr_macro(Ftrs1)]},
            ScanOpts1 = proplists:delete(reserved_word_fun, ScanOpts0),
            St =
                begin
                    REC45 =
                        [{reserved_word_fun, ResWordFun1} | ScanOpts1],
                    REC46 = ResWordFun1('else'),
                    REC47 = St0,
                    case REC47 of
                        {epp, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                         _, _, _, _} ->
                            setelement(10,
                                       setelement(15,
                                                  setelement(16,
                                                             setelement(17,
                                                                        REC47,
                                                                        REC46),
                                                             Ftrs1),
                                                  REC45),
                                       Macs1);
                        _ ->
                            error({badrecord, REC47})
                    end
                end,
            {ok, St}
    end.

scan_define([{'(', _Ap}, {Type, _Am, _} = Mac | Toks], Def, From, St)
    when Type =:= atom; Type =:= var ->
    scan_define_1(Toks, Mac, Def, From, St);
scan_define(Toks, Def, From, St) ->
    T = find_mismatch(['(', var_or_atom], Toks, Def),
    epp_reply(From, {error, {loc(T), epp, {bad, define}}}),
    wait_req_scan(St).

scan_define_1([{',', _} = Comma | Toks], Mac, _Def, From, St) ->
    case catch macro_expansion(Toks, Comma) of
        Expansion when is_list(Expansion) ->
            scan_define_2(none, {none, Expansion}, Mac, From, St);
        {error, ErrL, What} ->
            epp_reply(From, {error, {ErrL, epp, What}}),
            wait_req_scan(St)
    end;
scan_define_1([{'(', _Ac} = T | Toks], Mac, _Def, From, St) ->
    case catch macro_pars(Toks, [], T) of
        {ok, {As, _} = MacroDef} ->
            Len = length(As),
            scan_define_2(Len, MacroDef, Mac, From, St);
        {error, ErrL, What} ->
            epp_reply(From, {error, {ErrL, epp, What}}),
            wait_req_scan(St)
    end;
scan_define_1(Toks, _Mac, Def, From, St) ->
    T = no_match(Toks, Def),
    epp_reply(From, {error, {loc(T), epp, {bad, define}}}),
    wait_req_scan(St).

scan_define_2(Arity, Def,
              {_, _, Key} = Mac,
              From,
              {epp, _, _, _, _, _, _, _, _, Ms, _, _, _, _, _, _, _, _,
               _} =
                  St) ->
    case Ms of
        #{Key := Defs} when is_list(Defs) ->
            case proplists:is_defined(Arity, Defs) of
                true ->
                    epp_reply(From,
                              {error, {loc(Mac), epp, {redefine, Key}}}),
                    wait_req_scan(St);
                false ->
                    scan_define_cont(From, St, Key, Defs, Arity, Def)
            end;
        #{Key := _} ->
            epp_reply(From,
                      {error, {loc(Mac), epp, {redefine_predef, Key}}}),
            wait_req_scan(St);
        _ ->
            scan_define_cont(From, St, Key, [], Arity, Def)
    end.

scan_define_cont(F,
                 {epp, _, _, _, _, _, _, _, _, Ms0, _, _, _, _, _, _, _,
                  _, _} =
                     St,
                 M, Defs, Arity, Def) ->
    Ms = Ms0#{M => [{Arity, Def} | Defs]},
    try macro_uses(Def) of
        U ->
            Uses0 =
                case St of
                    {epp, _, _, _, _, _, _, _, _, _, REC48, _, _, _, _,
                     _, _, _, _} ->
                        REC48;
                    REC48 ->
                        error({badrecord, REC48})
                end,
            Val =
                [{Arity, U} |
                 case Uses0 of
                     #{M := UseList} ->
                         UseList;
                     _ ->
                         []
                 end],
            Uses = Uses0#{M => Val},
            scan_toks(F,
                      begin
                          REC49 = St,
                          case REC49 of
                              {epp, _, _, _, _, _, _, _, _, _, _, _, _,
                               _, _, _, _, _, _} ->
                                  setelement(10,
                                             setelement(11, REC49, Uses),
                                             Ms);
                              _ ->
                                  error({badrecord, REC49})
                          end
                      end)
    catch
        throw:{error, Location, Reason} ->
            epp_reply(F, {error, {Location, epp, Reason}}),
            wait_req_scan(St)
    end.

macro_uses({_Args, Tokens}) ->
    Uses0 = macro_ref(Tokens),
    lists:usort(Uses0).

macro_ref([]) ->
    [];
macro_ref([{'?', _}, {'?', _} | Rest]) ->
    macro_ref(Rest);
macro_ref([{'?', _}, {atom, _, A} = Atom | Rest]) ->
    Lm = loc(Atom),
    Arity = count_args(Rest, Lm, A),
    [{A, Arity} | macro_ref(Rest)];
macro_ref([{'?', _}, {var, _, A} = Var | Rest]) ->
    Lm = loc(Var),
    Arity = count_args(Rest, Lm, A),
    [{A, Arity} | macro_ref(Rest)];
macro_ref([_Token | Rest]) ->
    macro_ref(Rest).

scan_undef([{'(', _Alp}, {atom, _Am, M}, {')', _Arp}, {dot, _Ad}],
           _Undef, From, St) ->
    Macs =
        maps:remove(M,
                    case St of
                        {epp, _, _, _, _, _, _, _, _, REC50, _, _, _, _,
                         _, _, _, _, _} ->
                            REC50;
                        REC50 ->
                            error({badrecord, REC50})
                    end),
    Uses =
        maps:remove(M,
                    case St of
                        {epp, _, _, _, _, _, _, _, _, _, REC51, _, _, _,
                         _, _, _, _, _} ->
                            REC51;
                        REC51 ->
                            error({badrecord, REC51})
                    end),
    scan_toks(From,
              begin
                  REC52 = St,
                  case REC52 of
                      {epp, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                       _, _, _} ->
                          setelement(10,
                                     setelement(11, REC52, Uses),
                                     Macs);
                      _ ->
                          error({badrecord, REC52})
                  end
              end);
scan_undef([{'(', _Alp}, {var, _Am, M}, {')', _Arp}, {dot, _Ad}],
           _Undef, From, St) ->
    Macs =
        maps:remove(M,
                    case St of
                        {epp, _, _, _, _, _, _, _, _, REC53, _, _, _, _,
                         _, _, _, _, _} ->
                            REC53;
                        REC53 ->
                            error({badrecord, REC53})
                    end),
    Uses =
        maps:remove(M,
                    case St of
                        {epp, _, _, _, _, _, _, _, _, _, REC54, _, _, _,
                         _, _, _, _, _} ->
                            REC54;
                        REC54 ->
                            error({badrecord, REC54})
                    end),
    scan_toks(From,
              begin
                  REC55 = St,
                  case REC55 of
                      {epp, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                       _, _, _} ->
                          setelement(10,
                                     setelement(11, REC55, Uses),
                                     Macs);
                      _ ->
                          error({badrecord, REC55})
                  end
              end);
scan_undef(Toks, Undef, From, St) ->
    T = find_mismatch(['(', var_or_atom, ')', dot], Toks, Undef),
    epp_reply(From, {error, {loc(T), epp, {bad, undef}}}),
    wait_req_scan(St).

scan_include(Tokens0, Inc, From, St) ->
    Tokens = coalesce_strings(Tokens0),
    scan_include1(Tokens, Inc, From, St).

scan_include1([{'(', _Alp},
               {string, _Af, NewName0} = StringT,
               {')', _Arp},
               {dot, _Ad}],
              _Inc, From, St) ->
    NewName = expand_var(NewName0),
    enter_file(NewName, StringT, From, St);
scan_include1(Toks, Inc, From, St) ->
    T = find_mismatch(['(', string, ')', dot], Toks, Inc),
    epp_reply(From, {error, {loc(T), epp, {bad, include}}}),
    wait_req_scan(St).

expand_lib_dir(Name) ->
    try
        [App | Path] = filename:split(Name),
        LibDir = code:lib_dir(list_to_atom(App)),
        {ok, fname_join([LibDir | Path])}
    catch
        _:_ ->
            error
    end.

scan_include_lib(Tokens0, Inc, From, St) ->
    Tokens = coalesce_strings(Tokens0),
    scan_include_lib1(Tokens, Inc, From, St).

scan_include_lib1([{'(', _Alp},
                   {string, _Af, _NewName0},
                   {')', _Arp},
                   {dot, _Ad}],
                  Inc, From,
                  {epp, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                   _, _} =
                      St)
    when
        (true
         orelse
         fail)
        and
        (length(element(8, St)) >= 8) ->
    epp_reply(From, {error, {loc(Inc), epp, {depth, "include_lib"}}}),
    wait_req_scan(St);
scan_include_lib1([{'(', _Alp},
                   {string, _Af, NewName0} = N,
                   {')', _Arp},
                   {dot, _Ad}],
                  _Inc, From, St) ->
    NewName = expand_var(NewName0),
    Loc =
        start_loc(case St of
                      {epp, _, REC56, _, _, _, _, _, _, _, _, _, _, _,
                       _, _, _, _, _} ->
                          REC56;
                      REC56 ->
                          error({badrecord, REC56})
                  end),
    case
        file:path_open(case St of
                           {epp, _, _, _, _, _, _, _, REC57, _, _, _, _,
                            _, _, _, _, _, _} ->
                               REC57;
                           REC57 ->
                               error({badrecord, REC57})
                       end,
                       NewName,
                       [read])
    of
        {ok, NewF, Pname} ->
            wait_req_scan(enter_file2(NewF, Pname, From, St, Loc));
        {error, _E1} ->
            case expand_lib_dir(NewName) of
                {ok, Header} ->
                    case file:open(Header, [read]) of
                        {ok, NewF} ->
                            wait_req_scan(enter_file2(NewF, Header,
                                                      From, St, Loc));
                        {error, _E2} ->
                            epp_reply(From,
                                      {error,
                                       {loc(N),
                                        epp,
                                        {include, lib, NewName}}}),
                            wait_req_scan(St)
                    end;
                error ->
                    epp_reply(From,
                              {error,
                               {loc(N), epp, {include, lib, NewName}}}),
                    wait_req_scan(St)
            end
    end;
scan_include_lib1(Toks, Inc, From, St) ->
    T = find_mismatch(['(', string, ')', dot], Toks, Inc),
    epp_reply(From, {error, {loc(T), epp, {bad, include_lib}}}),
    wait_req_scan(St).

scan_ifdef([{'(', _Alp}, {atom, _Am, M}, {')', _Arp}, {dot, _Ad}],
           _IfD, From, St) ->
    case is_macro_defined(M, St) of
        true ->
            scan_toks(From,
                      begin
                          REC58 =
                              [ifdef |
                               case St of
                                   {epp, _, _, _, _, _, REC60, _, _, _,
                                    _, _, _, _, _, _, _, _, _} ->
                                       REC60;
                                   REC60 ->
                                       error({badrecord, REC60})
                               end],
                          REC59 = St,
                          case REC59 of
                              {epp, _, _, _, _, _, _, _, _, _, _, _, _,
                               _, _, _, _, _, _} ->
                                  setelement(7, REC59, REC58);
                              _ ->
                                  error({badrecord, REC59})
                          end
                      end);
        false ->
            skip_toks(From, St, [ifdef])
    end;
scan_ifdef([{'(', _Alp}, {var, _Am, M}, {')', _Arp}, {dot, _Ad}],
           _IfD, From, St) ->
    case is_macro_defined(M, St) of
        true ->
            scan_toks(From,
                      begin
                          REC61 =
                              [ifdef |
                               case St of
                                   {epp, _, _, _, _, _, REC63, _, _, _,
                                    _, _, _, _, _, _, _, _, _} ->
                                       REC63;
                                   REC63 ->
                                       error({badrecord, REC63})
                               end],
                          REC62 = St,
                          case REC62 of
                              {epp, _, _, _, _, _, _, _, _, _, _, _, _,
                               _, _, _, _, _, _} ->
                                  setelement(7, REC62, REC61);
                              _ ->
                                  error({badrecord, REC62})
                          end
                      end);
        false ->
            skip_toks(From, St, [ifdef])
    end;
scan_ifdef(Toks, IfDef, From, St) ->
    T = find_mismatch(['(', var_or_atom, ')', dot], Toks, IfDef),
    epp_reply(From, {error, {loc(T), epp, {bad, ifdef}}}),
    wait_req_skip(St, [ifdef]).

scan_ifndef([{'(', _Alp}, {atom, _Am, M}, {')', _Arp}, {dot, _Ad}],
            _IfnD, From, St) ->
    case is_macro_defined(M, St) of
        true ->
            skip_toks(From, St, [ifndef]);
        false ->
            scan_toks(From,
                      begin
                          REC64 =
                              [ifndef |
                               case St of
                                   {epp, _, _, _, _, _, REC66, _, _, _,
                                    _, _, _, _, _, _, _, _, _} ->
                                       REC66;
                                   REC66 ->
                                       error({badrecord, REC66})
                               end],
                          REC65 = St,
                          case REC65 of
                              {epp, _, _, _, _, _, _, _, _, _, _, _, _,
                               _, _, _, _, _, _} ->
                                  setelement(7, REC65, REC64);
                              _ ->
                                  error({badrecord, REC65})
                          end
                      end)
    end;
scan_ifndef([{'(', _Alp}, {var, _Am, M}, {')', _Arp}, {dot, _Ad}],
            _IfnD, From, St) ->
    case is_macro_defined(M, St) of
        true ->
            skip_toks(From, St, [ifndef]);
        false ->
            scan_toks(From,
                      begin
                          REC67 =
                              [ifndef |
                               case St of
                                   {epp, _, _, _, _, _, REC69, _, _, _,
                                    _, _, _, _, _, _, _, _, _} ->
                                       REC69;
                                   REC69 ->
                                       error({badrecord, REC69})
                               end],
                          REC68 = St,
                          case REC68 of
                              {epp, _, _, _, _, _, _, _, _, _, _, _, _,
                               _, _, _, _, _, _} ->
                                  setelement(7, REC68, REC67);
                              _ ->
                                  error({badrecord, REC68})
                          end
                      end)
    end;
scan_ifndef(Toks, IfnDef, From, St) ->
    T = find_mismatch(['(', var_or_atom, ')', dot], Toks, IfnDef),
    epp_reply(From, {error, {loc(T), epp, {bad, ifndef}}}),
    wait_req_skip(St, [ifndef]).

is_macro_defined(Name,
                 {epp, _, _, _, _, _, _, _, _, Macs, _, _, _, _, _, _,
                  _, _, _}) ->
    case Macs of
        #{Name := undefined} ->
            false;
        #{Name := _Def} ->
            true;
        #{} ->
            false
    end.

scan_else([{dot, _Ad}], Else, From, St) ->
    case
        case St of
            {epp, _, _, _, _, _, REC70, _, _, _, _, _, _, _, _, _, _, _,
             _} ->
                REC70;
            REC70 ->
                error({badrecord, REC70})
        end
    of
        ['else' | Cis] ->
            epp_reply(From,
                      {error,
                       {loc(Else), epp, {illegal, "repeated", 'else'}}}),
            wait_req_skip(begin
                              REC71 = St,
                              case REC71 of
                                  {epp, _, _, _, _, _, _, _, _, _, _, _,
                                   _, _, _, _, _, _, _} ->
                                      setelement(7, REC71, Cis);
                                  _ ->
                                      error({badrecord, REC71})
                              end
                          end,
                          ['else']);
        [_I | Cis] ->
            skip_toks(From,
                      begin
                          REC72 = St,
                          case REC72 of
                              {epp, _, _, _, _, _, _, _, _, _, _, _, _,
                               _, _, _, _, _, _} ->
                                  setelement(7, REC72, Cis);
                              _ ->
                                  error({badrecord, REC72})
                          end
                      end,
                      ['else']);
        [] ->
            epp_reply(From,
                      {error,
                       {loc(Else), epp, {illegal, "unbalanced", 'else'}}}),
            wait_req_scan(St)
    end;
scan_else(Toks, Else, From, St) ->
    T = no_match(Toks, Else),
    epp_reply(From, {error, {loc(T), epp, {bad, 'else'}}}),
    wait_req_scan(St).

scan_if([{'(', _} | _] = Toks, If, From, St) ->
    try eval_if(Toks, St) of
        true ->
            scan_toks(From,
                      begin
                          REC73 =
                              ['if' |
                               case St of
                                   {epp, _, _, _, _, _, REC75, _, _, _,
                                    _, _, _, _, _, _, _, _, _} ->
                                       REC75;
                                   REC75 ->
                                       error({badrecord, REC75})
                               end],
                          REC74 = St,
                          case REC74 of
                              {epp, _, _, _, _, _, _, _, _, _, _, _, _,
                               _, _, _, _, _, _} ->
                                  setelement(7, REC74, REC73);
                              _ ->
                                  error({badrecord, REC74})
                          end
                      end);
        _ ->
            skip_toks(From, St, ['if'])
    catch
        throw:Error0 ->
            Error =
                case Error0 of
                    {_, erl_parse, _} ->
                        {error, Error0};
                    {error, ErrL, What} ->
                        {error, {ErrL, epp, What}};
                    _ ->
                        {error, {loc(If), epp, Error0}}
                end,
            epp_reply(From, Error),
            wait_req_skip(St, ['if'])
    end;
scan_if(Toks, If, From, St) ->
    T = no_match(Toks, If),
    epp_reply(From, {error, {loc(T), epp, {bad, 'if'}}}),
    wait_req_skip(St, ['if']).

eval_if(Toks0, St) ->
    Toks = expand_macros(Toks0, St),
    Es1 =
        case erl_parse:parse_exprs(Toks) of
            {ok, Es0} ->
                Es0;
            {error, E} ->
                throw(E)
        end,
    Es = evaluate_builtins(Es1, St),
    assert_guard_expr(Es),
    Bs = erl_eval:new_bindings(),
    LocalFun =
        fun(_Name, _Args) ->
               error(badarg)
        end,
    try erl_eval:exprs(Es, Bs, {value, LocalFun}) of
        {value, Res, _} ->
            Res
    catch
        _:_ ->
            false
    end.

assert_guard_expr([E]) ->
    case erl_lint:is_guard_expr(E) of
        false ->
            throw({bad, 'if'});
        true ->
            ok
    end;
assert_guard_expr(_) ->
    throw({bad, 'if'}).

evaluate_builtins({call, _, {atom, _, defined}, [N0]},
                  {epp, _, _, _, _, _, _, _, _, Macs, _, _, _, _, _, _,
                   _, _, _}) ->
    N = case N0 of
            {var, _, N1} ->
                N1;
            {atom, _, N1} ->
                N1;
            _ ->
                throw({bad, 'if'})
        end,
    {atom, erl_anno:new(0), maps:is_key(N, Macs)};
evaluate_builtins([H | T], St) ->
    [evaluate_builtins(H, St) | evaluate_builtins(T, St)];
evaluate_builtins(Tuple, St) when is_tuple(Tuple) ->
    list_to_tuple(evaluate_builtins(tuple_to_list(Tuple), St));
evaluate_builtins(Other, _) ->
    Other.

scan_elif(_Toks, Elif, From, St) ->
    case
        case St of
            {epp, _, _, _, _, _, REC76, _, _, _, _, _, _, _, _, _, _, _,
             _} ->
                REC76;
            REC76 ->
                error({badrecord, REC76})
        end
    of
        ['else' | Cis] ->
            epp_reply(From,
                      {error,
                       {loc(Elif), epp, {illegal, "unbalanced", elif}}}),
            wait_req_skip(begin
                              REC77 = St,
                              case REC77 of
                                  {epp, _, _, _, _, _, _, _, _, _, _, _,
                                   _, _, _, _, _, _, _} ->
                                      setelement(7, REC77, Cis);
                                  _ ->
                                      error({badrecord, REC77})
                              end
                          end,
                          ['else']);
        [_I | Cis] ->
            skip_toks(From,
                      begin
                          REC78 = St,
                          case REC78 of
                              {epp, _, _, _, _, _, _, _, _, _, _, _, _,
                               _, _, _, _, _, _} ->
                                  setelement(7, REC78, Cis);
                              _ ->
                                  error({badrecord, REC78})
                          end
                      end,
                      [elif]);
        [] ->
            epp_reply(From,
                      {error,
                       {loc(Elif), epp, {illegal, "unbalanced", elif}}}),
            wait_req_scan(St)
    end.

scan_endif([{dot, _Ad}], Endif, From, St) ->
    case
        case St of
            {epp, _, _, _, _, _, REC79, _, _, _, _, _, _, _, _, _, _, _,
             _} ->
                REC79;
            REC79 ->
                error({badrecord, REC79})
        end
    of
        [_I | Cis] ->
            scan_toks(From,
                      begin
                          REC80 = St,
                          case REC80 of
                              {epp, _, _, _, _, _, _, _, _, _, _, _, _,
                               _, _, _, _, _, _} ->
                                  setelement(7, REC80, Cis);
                              _ ->
                                  error({badrecord, REC80})
                          end
                      end);
        [] ->
            epp_reply(From,
                      {error,
                       {loc(Endif), epp, {illegal, "unbalanced", endif}}}),
            wait_req_scan(St)
    end;
scan_endif(Toks, Endif, From, St) ->
    T = no_match(Toks, Endif),
    epp_reply(From, {error, {loc(T), epp, {bad, endif}}}),
    wait_req_scan(St).

scan_file(Tokens0, Tf, From, St) ->
    Tokens = coalesce_strings(Tokens0),
    scan_file1(Tokens, Tf, From, St).

scan_file1([{'(', _Alp},
            {string, _As, Name},
            {',', _Ac},
            {integer, _Ai, Ln},
            {')', _Arp},
            {dot, _Ad}],
           Tf, From, St) ->
    Anno = erl_anno:new(Ln),
    enter_file_reply(From, Name, Anno,
                     loc(Tf),
                     generated,
                     case St of
                         {epp, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                          _, _, _, REC81} ->
                             REC81;
                         REC81 ->
                             error({badrecord, REC81})
                     end),
    Ms0 =
        case St of
            {epp, _, _, _, _, _, _, _, _, REC82, _, _, _, _, _, _, _, _,
             _} ->
                REC82;
            REC82 ->
                error({badrecord, REC82})
        end,
    Ms =
        Ms0#{'FILE' :=
                 {none, [{string, line1(), source_name(St, Name)}]}},
    Locf = loc(Tf),
    NewLoc =
        new_location(Ln,
                     case St of
                         {epp, _, REC83, _, _, _, _, _, _, _, _, _, _,
                          _, _, _, _, _, _} ->
                             REC83;
                         REC83 ->
                             error({badrecord, REC83})
                     end,
                     Locf),
    Delta =
        get_line(element(2, Tf)) - Ln
        +
        case St of
            {epp, _, _, REC84, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
             _} ->
                REC84;
            REC84 ->
                error({badrecord, REC84})
        end,
    wait_req_scan(begin
                      REC85 = St,
                      case REC85 of
                          {epp, _, _, _, _, _, _, _, _, _, _, _, _, _,
                           _, _, _, _, _} ->
                              setelement(3,
                                         setelement(4,
                                                    setelement(6,
                                                               setelement(10,
                                                                          REC85,
                                                                          Ms),
                                                               Name),
                                                    Delta),
                                         NewLoc);
                          _ ->
                              error({badrecord, REC85})
                      end
                  end);
scan_file1(Toks, Tf, From, St) ->
    T = find_mismatch(['(', string, ',', integer, ')', dot], Toks, Tf),
    epp_reply(From, {error, {loc(T), epp, {bad, file}}}),
    wait_req_scan(St).

new_location(Ln, Le, Lf) when is_integer(Lf) ->
    Ln + (Le - Lf);
new_location(Ln, {Le, _}, {Lf, _}) ->
    {Ln + (Le - Lf), 1}.

skip_toks(From, St, [I | Sis]) ->
    ElseReserved =
        case St of
            {epp, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, REC86, _,
             _} ->
                REC86;
            REC86 ->
                error({badrecord, REC86})
        end,
    case
        io:scan_erl_form(case St of
                             {epp, REC87, _, _, _, _, _, _, _, _, _, _,
                              _, _, _, _, _, _, _} ->
                                 REC87;
                             REC87 ->
                                 error({badrecord, REC87})
                         end,
                         '',
                         case St of
                             {epp, _, REC88, _, _, _, _, _, _, _, _, _,
                              _, _, _, _, _, _, _} ->
                                 REC88;
                             REC88 ->
                                 error({badrecord, REC88})
                         end,
                         case St of
                             {epp, _, _, _, _, _, _, _, _, _, _, _, _,
                              _, REC89, _, _, _, _} ->
                                 REC89;
                             REC89 ->
                                 error({badrecord, REC89})
                         end)
    of
        {ok, [{'-', _Ah}, {atom, _Ai, ifdef} | _Toks], Cl} ->
            skip_toks(From,
                      begin
                          REC90 = St,
                          case REC90 of
                              {epp, _, _, _, _, _, _, _, _, _, _, _, _,
                               _, _, _, _, _, _} ->
                                  setelement(3, REC90, Cl);
                              _ ->
                                  error({badrecord, REC90})
                          end
                      end,
                      [ifdef, I | Sis]);
        {ok, [{'-', _Ah}, {atom, _Ai, ifndef} | _Toks], Cl} ->
            skip_toks(From,
                      begin
                          REC91 = St,
                          case REC91 of
                              {epp, _, _, _, _, _, _, _, _, _, _, _, _,
                               _, _, _, _, _, _} ->
                                  setelement(3, REC91, Cl);
                              _ ->
                                  error({badrecord, REC91})
                          end
                      end,
                      [ifndef, I | Sis]);
        {ok, [{'-', _Ah}, {'if', _Ai} | _Toks], Cl} ->
            skip_toks(From,
                      begin
                          REC92 = St,
                          case REC92 of
                              {epp, _, _, _, _, _, _, _, _, _, _, _, _,
                               _, _, _, _, _, _} ->
                                  setelement(3, REC92, Cl);
                              _ ->
                                  error({badrecord, REC92})
                          end
                      end,
                      ['if', I | Sis]);
        {ok, [{'-', _Ah}, {atom, _Ae, 'else'} = Else | _Toks], Cl} ->
            skip_else(Else, From,
                      begin
                          REC93 = St,
                          case REC93 of
                              {epp, _, _, _, _, _, _, _, _, _, _, _, _,
                               _, _, _, _, _, _} ->
                                  setelement(3, REC93, Cl);
                              _ ->
                                  error({badrecord, REC93})
                          end
                      end,
                      [I | Sis]);
        {ok, [{'-', _Ah}, {'else', _Ae} = Else | _Toks], Cl}
            when ElseReserved ->
            skip_else(Else, From,
                      begin
                          REC94 = St,
                          case REC94 of
                              {epp, _, _, _, _, _, _, _, _, _, _, _, _,
                               _, _, _, _, _, _} ->
                                  setelement(3, REC94, Cl);
                              _ ->
                                  error({badrecord, REC94})
                          end
                      end,
                      [I | Sis]);
        {ok, [{'-', _Ah}, {atom, _Ae, elif} = Elif | Toks], Cl} ->
            skip_elif(Toks, Elif, From,
                      begin
                          REC95 = St,
                          case REC95 of
                              {epp, _, _, _, _, _, _, _, _, _, _, _, _,
                               _, _, _, _, _, _} ->
                                  setelement(3, REC95, Cl);
                              _ ->
                                  error({badrecord, REC95})
                          end
                      end,
                      [I | Sis]);
        {ok, [{'-', _Ah}, {atom, _Ae, endif} | _Toks], Cl} ->
            skip_toks(From,
                      begin
                          REC96 = St,
                          case REC96 of
                              {epp, _, _, _, _, _, _, _, _, _, _, _, _,
                               _, _, _, _, _, _} ->
                                  setelement(3, REC96, Cl);
                              _ ->
                                  error({badrecord, REC96})
                          end
                      end,
                      Sis);
        {ok, _Toks, Cl} ->
            skip_toks(From,
                      begin
                          REC97 = St,
                          case REC97 of
                              {epp, _, _, _, _, _, _, _, _, _, _, _, _,
                               _, _, _, _, _, _} ->
                                  setelement(3, REC97, Cl);
                              _ ->
                                  error({badrecord, REC97})
                          end
                      end,
                      [I | Sis]);
        {error, E, Cl} ->
            case E of
                {_, file_io_server, invalid_unicode} ->
                    epp_reply(From, {error, E}),
                    leave_file(wait_request(St), St);
                _ ->
                    skip_toks(From,
                              begin
                                  REC98 = St,
                                  case REC98 of
                                      {epp, _, _, _, _, _, _, _, _, _,
                                       _, _, _, _, _, _, _, _, _} ->
                                          setelement(3, REC98, Cl);
                                      _ ->
                                          error({badrecord, REC98})
                                  end
                              end,
                              [I | Sis])
            end;
        {eof, Cl} ->
            leave_file(From,
                       begin
                           REC99 = [I | Sis],
                           REC100 = St,
                           case REC100 of
                               {epp, _, _, _, _, _, _, _, _, _, _, _, _,
                                _, _, _, _, _, _} ->
                                   setelement(3,
                                              setelement(7, REC100,
                                                         REC99),
                                              Cl);
                               _ ->
                                   error({badrecord, REC100})
                           end
                       end);
        {error, _E} ->
            epp_reply(From,
                      {error,
                       {case St of
                            {epp, _, REC101, _, _, _, _, _, _, _, _, _,
                             _, _, _, _, _, _, _} ->
                                REC101;
                            REC101 ->
                                error({badrecord, REC101})
                        end,
                        epp, cannot_parse}}),
            leave_file(wait_request(St), St)
    end;
skip_toks(From, St, []) ->
    scan_toks(From, St).

skip_else(Else, From, St, ['else' | Sis]) ->
    epp_reply(From,
              {error, {loc(Else), epp, {illegal, "repeated", 'else'}}}),
    wait_req_skip(St, ['else' | Sis]);
skip_else(_Else, From, St, [elif | Sis]) ->
    skip_toks(From, St, ['else' | Sis]);
skip_else(_Else, From, St, [_I]) ->
    scan_toks(From,
              begin
                  REC102 =
                      ['else' |
                       case St of
                           {epp, _, _, _, _, _, REC104, _, _, _, _, _,
                            _, _, _, _, _, _, _} ->
                               REC104;
                           REC104 ->
                               error({badrecord, REC104})
                       end],
                  REC103 = St,
                  case REC103 of
                      {epp, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                       _, _, _} ->
                          setelement(7, REC103, REC102);
                      _ ->
                          error({badrecord, REC103})
                  end
              end);
skip_else(_Else, From, St, Sis) ->
    skip_toks(From, St, Sis).

skip_elif(_Toks, Elif, From, St, ['else' | _] = Sis) ->
    epp_reply(From, {error, {loc(Elif), epp, elif_after_else}}),
    wait_req_skip(St, Sis);
skip_elif(Toks, Elif, From, St, [_I]) ->
    scan_if(Toks, Elif, From, St);
skip_elif(_Toks, _Elif, From, St, Sis) ->
    skip_toks(From, St, Sis).

macro_pars([{')', _Ap} = Par | Ex], Args, _T0) ->
    {ok, {lists:reverse(Args), macro_pars_end(Ex, Par)}};
macro_pars([{var, _, Name} = T | Ex], Args, _T0) ->
    check_macro_arg(Name, Args, T),
    macro_pars_cont(Ex, [Name | Args], T);
macro_pars(Toks, _Args, T0) ->
    T = no_match(Toks, T0),
    throw({error, loc(T), {bad, define}}).

macro_pars_cont([{')', _Ap} = Par | Ex], Args, _T0) ->
    {ok, {lists:reverse(Args), macro_pars_end(Ex, Par)}};
macro_pars_cont([{',', _Ad}, {var, _, Name} = T | Ex], Args, _T0) ->
    check_macro_arg(Name, Args, T),
    macro_pars_cont(Ex, [Name | Args], T);
macro_pars_cont(Toks, _Args, T0) ->
    T = no_match(Toks, T0),
    throw({error, loc(T), {bad, define}}).

macro_pars_end([{',', _Ad} = Comma | Ex], _T0) ->
    macro_expansion(Ex, Comma);
macro_pars_end(Toks, T0) ->
    T = no_match(Toks, T0),
    throw({error, loc(T), missing_comma}).

macro_expansion([{')', _Ap}, {dot, _Ad}], _T0) ->
    [];
macro_expansion([{dot, _} = Dot], _T0) ->
    throw({error, loc(Dot), missing_parenthesis});
macro_expansion([T | Ts], _T0) ->
    [T | macro_expansion(Ts, T)];
macro_expansion([], T0) ->
    throw({error, loc(T0), premature_end}).

check_macro_arg(Name, Args, T) ->
    case lists:member(Name, Args) of
        true ->
            throw({error, loc(T), {duplicated_argument, Name}});
        false ->
            ok
    end.

expand_macros(MacT, M, Toks, St) ->
    {epp, _, _, _, _, _, _, _, _, Ms, U, _, _, _, _, _, _, _, _} = St,
    Lm = loc(MacT),
    Anno = element(2, MacT),
    case expand_macro1(Lm, M, Toks, Ms) of
        {ok, {none, Exp}} ->
            check_uses([{M, none}], [], U, Lm),
            Toks1 = expand_macros(expand_macro(Exp, Anno, [], #{}), St),
            expand_macros(Toks1 ++ Toks, St);
        {ok, {As, Exp}} ->
            check_uses([{M, length(As)}], [], U, Lm),
            {Bs, Toks1} = bind_args(Toks, Lm, M, As, #{}),
            expand_macros(expand_macro(Exp, Anno, Toks1, Bs), St)
    end.

expand_macro1(Lm, M, Toks, Ms) ->
    Arity = count_args(Toks, Lm, M),
    case Ms of
        #{M := undefined} ->
            throw({error, Lm, {undefined, M, Arity}});
        #{M := [{none, Def}]} ->
            {ok, Def};
        #{M := Defs} when is_list(Defs) ->
            case proplists:get_value(Arity, Defs) of
                undefined ->
                    throw({error, Lm, {mismatch, M}});
                Def ->
                    {ok, Def}
            end;
        #{M := PreDef} ->
            {ok, PreDef};
        _ ->
            throw({error, Lm, {undefined, M, Arity}})
    end.

check_uses([], _Anc, _U, _Lm) ->
    ok;
check_uses([M | Rest], Anc, U, Lm) ->
    case lists:member(M, Anc) of
        true ->
            {Name, Arity} = M,
            throw({error, Lm, {circular, Name, Arity}});
        false ->
            L = get_macro_uses(M, U),
            check_uses(L, [M | Anc], U, Lm),
            check_uses(Rest, Anc, U, Lm)
    end.

get_macro_uses({M, Arity}, U) ->
    case U of
        #{M := L} ->
            proplists:get_value(Arity, L,
                                proplists:get_value(none, L, []));
        _ ->
            []
    end.

expand_macros([{'?', _Aq}, {atom, _Am, M} = MacT | Toks], St) ->
    expand_macros(MacT, M, Toks, St);
expand_macros([{'?', _Aq}, {var, Lm, 'FUNCTION_NAME'} = Token | Toks],
              St0) ->
    St = update_fun_name(Token, St0),
    case
        case St of
            {epp, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
             REC105, _} ->
                REC105;
            REC105 ->
                error({badrecord, REC105})
        end
    of
        undefined ->
            [{'?', _Aq}, Token];
        {Name, _} ->
            [{atom, Lm, Name}]
    end
    ++
    expand_macros(Toks, St);
expand_macros([{'?', _Aq}, {var, Lm, 'FUNCTION_ARITY'} = Token | Toks],
              St0) ->
    St = update_fun_name(Token, St0),
    case
        case St of
            {epp, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
             REC106, _} ->
                REC106;
            REC106 ->
                error({badrecord, REC106})
        end
    of
        undefined ->
            [{'?', _Aq}, Token];
        {_, Arity} ->
            [{integer, Lm, Arity}]
    end
    ++
    expand_macros(Toks, St);
expand_macros([{'?', _Aq}, {var, Lm, 'LINE'} = Tok | Toks], St) ->
    Line = erl_scan:line(Tok),
    [{integer, Lm, Line} | expand_macros(Toks, St)];
expand_macros([{'?', _Aq}, {var, _Am, M} = MacT | Toks], St) ->
    expand_macros(MacT, M, Toks, St);
expand_macros([{'?', _Aq}, Token | _Toks], _St) ->
    T = case erl_scan:text(Token) of
            Text when is_list(Text) ->
                Text;
            undefined ->
                Symbol = erl_scan:symbol(Token),
                io_lib:fwrite(<<"~tp">>, [Symbol])
        end,
    throw({error, loc(Token), {call, [$? | T]}});
expand_macros([T | Ts], St) ->
    [T | expand_macros(Ts, St)];
expand_macros([], _St) ->
    [].

bind_args([{'(', _Alp}, {')', _Arp} | Toks], _Lm, _M, [], Bs) ->
    {Bs, Toks};
bind_args([{'(', _Alp} | Toks0], Lm, M, [A | As], Bs) ->
    {Arg, Toks1} = macro_arg(Toks0, [], []),
    macro_args(Toks1, Lm, M, As, store_arg(Lm, M, A, Arg, Bs));
bind_args(_Toks, Lm, M, _As, _Bs) ->
    throw({error, Lm, {mismatch, M}}).

macro_args([{')', _Arp} | Toks], _Lm, _M, [], Bs) ->
    {Bs, Toks};
macro_args([{',', _Ac} | Toks0], Lm, M, [A | As], Bs) ->
    {Arg, Toks1} = macro_arg(Toks0, [], []),
    macro_args(Toks1, Lm, M, As, store_arg(Lm, M, A, Arg, Bs));
macro_args([], Lm, M, _As, _Bs) ->
    throw({error, Lm, {arg_error, M}});
macro_args(_Toks, Lm, M, _As, _Bs) ->
    throw({error, Lm, {mismatch, M}}).

store_arg(L, M, _A, [], _Bs) ->
    throw({error, L, {mismatch, M}});
store_arg(_L, _M, A, Arg, Bs) ->
    Bs#{A => Arg}.

count_args([{'(', _Alp}, {')', _Arp} | _Toks], _Lm, _M) ->
    0;
count_args([{'(', _Alp}, {',', _Ac} | _Toks], Lm, M) ->
    throw({error, Lm, {arg_error, M}});
count_args([{'(', _Alp} | Toks0], Lm, M) ->
    {_Arg, Toks1} = macro_arg(Toks0, [], []),
    count_args(Toks1, Lm, M, 1);
count_args(_Toks, _Lm, _M) ->
    none.

count_args([{')', _Arp} | _Toks], _Lm, _M, NbArgs) ->
    NbArgs;
count_args([{',', _Ac}, {')', _Arp} | _Toks], Lm, M, _NbArgs) ->
    throw({error, Lm, {arg_error, M}});
count_args([{',', _Ac} | Toks0], Lm, M, NbArgs) ->
    {_Arg, Toks1} = macro_arg(Toks0, [], []),
    count_args(Toks1, Lm, M, NbArgs + 1);
count_args([], Lm, M, _NbArgs) ->
    throw({error, Lm, {arg_error, M}});
count_args(_Toks, Lm, M, _NbArgs) ->
    throw({error, Lm, {mismatch, M}}).

macro_arg([{',', Lc} | Toks], [], Arg) ->
    {lists:reverse(Arg), [{',', Lc} | Toks]};
macro_arg([{')', Lrp} | Toks], [], Arg) ->
    {lists:reverse(Arg), [{')', Lrp} | Toks]};
macro_arg([{'(', Llp} | Toks], E, Arg) ->
    macro_arg(Toks, [')' | E], [{'(', Llp} | Arg]);
macro_arg([{'<<', Lls} | Toks], E, Arg) ->
    macro_arg(Toks, ['>>' | E], [{'<<', Lls} | Arg]);
macro_arg([{'[', Lls} | Toks], E, Arg) ->
    macro_arg(Toks, [']' | E], [{'[', Lls} | Arg]);
macro_arg([{'{', Llc} | Toks], E, Arg) ->
    macro_arg(Toks, ['}' | E], [{'{', Llc} | Arg]);
macro_arg([{'begin', Lb} | Toks], E, Arg) ->
    macro_arg(Toks, ['end' | E], [{'begin', Lb} | Arg]);
macro_arg([{'if', Li} | Toks], E, Arg) ->
    macro_arg(Toks, ['end' | E], [{'if', Li} | Arg]);
macro_arg([{'case', Lc} | Toks], E, Arg) ->
    macro_arg(Toks, ['end' | E], [{'case', Lc} | Arg]);
macro_arg([{'fun', Lc} | [{'(', _} | _] = Toks], E, Arg) ->
    macro_arg(Toks, ['end' | E], [{'fun', Lc} | Arg]);
macro_arg([{'fun', _} = Fun, {var, _, _} = Name | [{'(', _} | _] = Toks],
          E, Arg) ->
    macro_arg(Toks, ['end' | E], [Name, Fun | Arg]);
macro_arg([{'maybe', Lb} | Toks], E, Arg) ->
    macro_arg(Toks, ['end' | E], [{'maybe', Lb} | Arg]);
macro_arg([{'receive', Lr} | Toks], E, Arg) ->
    macro_arg(Toks, ['end' | E], [{'receive', Lr} | Arg]);
macro_arg([{'try', Lr} | Toks], E, Arg) ->
    macro_arg(Toks, ['end' | E], [{'try', Lr} | Arg]);
macro_arg([{'cond', Lr} | Toks], E, Arg) ->
    macro_arg(Toks, ['end' | E], [{'cond', Lr} | Arg]);
macro_arg([{Rb, Lrb} | Toks], [Rb | E], Arg) ->
    macro_arg(Toks, E, [{Rb, Lrb} | Arg]);
macro_arg([T | Toks], E, Arg) ->
    macro_arg(Toks, E, [T | Arg]);
macro_arg([], _E, Arg) ->
    {lists:reverse(Arg), []}.

expand_macro([{var, _Av, V} | Ts], Anno, Rest, Bs) ->
    case Bs of
        #{V := Val} ->
            expand_arg(Val, Ts, Anno, Rest, Bs);
        _ ->
            [{var, Anno, V} | expand_macro(Ts, Anno, Rest, Bs)]
    end;
expand_macro([{'?', _}, {'?', _}, {var, _Av, V} | Ts], Anno, Rest, Bs) ->
    case Bs of
        #{V := Val} ->
            expand_arg(stringify(Val, Anno), Ts, Anno, Rest, Bs);
        _ ->
            [{var, Anno, V} | expand_macro(Ts, Anno, Rest, Bs)]
    end;
expand_macro([T | Ts], Anno, Rest, Bs) ->
    [setelement(2, T, Anno) | expand_macro(Ts, Anno, Rest, Bs)];
expand_macro([], _Anno, Rest, _Bs) ->
    Rest.

expand_arg([A | As], Ts, _Anno, Rest, Bs) ->
    NextAnno = element(2, A),
    [A | expand_arg(As, Ts, NextAnno, Rest, Bs)];
expand_arg([], Ts, Anno, Rest, Bs) ->
    expand_macro(Ts, Anno, Rest, Bs).

update_fun_name(Token,
                {epp, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                 Toks0, _} =
                    St)
    when is_list(Toks0) ->
    Toks1 =
        catch
            expand_macros(Toks0,
                          begin
                              REC107 = St,
                              case REC107 of
                                  {epp, _, _, _, _, _, _, _, _, _, _, _,
                                   _, _, _, _, _, _, _} ->
                                      setelement(18, REC107, undefined);
                                  _ ->
                                      error({badrecord, REC107})
                              end
                          end),
    case Toks1 of
        [{atom, _, Name}, {'(', _} | Toks] ->
            FA = update_fun_name_1(Toks, 1, {Name, 0}, St),
            begin
                REC108 = St,
                case REC108 of
                    {epp, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                     _, _, _} ->
                        setelement(18, REC108, FA);
                    _ ->
                        error({badrecord, REC108})
                end
            end;
        [{'?', _} | _] ->
            {var, _, Macro} = Token,
            throw({error, loc(Token), {illegal_function_usage, Macro}});
        _ when is_list(Toks1) ->
            {var, _, Macro} = Token,
            throw({error, loc(Token), {illegal_function, Macro}});
        _ ->
            begin
                REC109 = St,
                case REC109 of
                    {epp, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                     _, _, _} ->
                        setelement(18, REC109, {'_', 0});
                    _ ->
                        error({badrecord, REC109})
                end
            end
    end;
update_fun_name(_Token, St) ->
    St.

update_fun_name_1([Tok | Toks], L, FA, St) ->
    case classify_token(Tok) of
        comma ->
            if
                L =:= 1 ->
                    {Name, Arity} = FA,
                    update_fun_name_1(Toks, L, {Name, Arity + 1}, St);
                true ->
                    update_fun_name_1(Toks, L, FA, St)
            end;
        left ->
            update_fun_name_1(Toks, L + 1, FA, St);
        right when L =:= 1 ->
            FA;
        right ->
            update_fun_name_1(Toks, L - 1, FA, St);
        other ->
            case FA of
                {Name, 0} ->
                    update_fun_name_1(Toks, L, {Name, 1}, St);
                {_, _} ->
                    update_fun_name_1(Toks, L, FA, St)
            end
    end;
update_fun_name_1([], _, FA, _) ->
    FA.

classify_token({C, _}) ->
    classify_token_1(C);
classify_token(_) ->
    other.

classify_token_1(',') ->
    comma;
classify_token_1('(') ->
    left;
classify_token_1('{') ->
    left;
classify_token_1('[') ->
    left;
classify_token_1('<<') ->
    left;
classify_token_1(')') ->
    right;
classify_token_1('}') ->
    right;
classify_token_1(']') ->
    right;
classify_token_1('>>') ->
    right;
classify_token_1(_) ->
    other.

token_src({dot, _}) ->
    ".";
token_src({X, _}) when is_atom(X) ->
    atom_to_list(X);
token_src({var, _, X}) ->
    atom_to_list(X);
token_src({char, _, C}) ->
    io_lib:write_char(C);
token_src({string, _, X}) ->
    io_lib:write_string(X);
token_src({_, _, X}) ->
    io_lib:format("~w", [X]).

stringify1([]) ->
    [];
stringify1([T | Tokens]) ->
    [io_lib:format(" ~ts", [token_src(T)]) | stringify1(Tokens)].

stringify(Ts, Anno) ->
    [$\s | S] = lists:flatten(stringify1(Ts)),
    [{string, Anno, S}].

coalesce_strings([{string, A, S} | Tokens]) ->
    coalesce_strings(Tokens, A, [S]);
coalesce_strings([T | Tokens]) ->
    [T | coalesce_strings(Tokens)];
coalesce_strings([]) ->
    [].

coalesce_strings([{string, _, S} | Tokens], A, S0) ->
    coalesce_strings(Tokens, A, [S | S0]);
coalesce_strings(Tokens, A, S) ->
    [{string, A, lists:append(lists:reverse(S))} |
     coalesce_strings(Tokens)].

find_mismatch([Tag | Tags], [{Tag, _A} = T | Ts], _T0) ->
    find_mismatch(Tags, Ts, T);
find_mismatch([Tag | Tags], [{Tag, _A, _V} = T | Ts], _T0) ->
    find_mismatch(Tags, Ts, T);
find_mismatch([var_or_atom | Tags], [{var, _A, _V} = T | Ts], _T0) ->
    find_mismatch(Tags, Ts, T);
find_mismatch([var_or_atom | Tags], [{atom, _A, _N} = T | Ts], _T0) ->
    find_mismatch(Tags, Ts, T);
find_mismatch([{Tag, Value} | Tags], [{Tag, _A, Value} = T | Ts], _T0) ->
    find_mismatch(Tags, Ts, T);
find_mismatch(_, Ts, T0) ->
    no_match(Ts, T0).

no_match([T | _], _T0) ->
    T;
no_match(_, T0) ->
    T0.

epp_request(Epp) ->
    wait_epp_reply(Epp, monitor(process, Epp)).

epp_request(Epp, Req) ->
    Epp ! {epp_request, self(), Req},
    wait_epp_reply(Epp, monitor(process, Epp)).

epp_reply(From, Rep) ->
    From ! {epp_reply, self(), Rep},
    ok.

wait_epp_reply(Epp, Mref) ->
    receive
        {epp_reply, Epp, Rep} ->
            demonitor(Mref, [flush]),
            Rep;
        {'DOWN', Mref, _, _, E} ->
            receive
                {epp_reply, Epp, Rep} ->
                    Rep
            after
                0 -> exit(E)
            end
    end.

expand_var([$$ | _] = NewName) ->
    case catch expand_var1(NewName) of
        {ok, ExpName} ->
            ExpName;
        _ ->
            NewName
    end;
expand_var(NewName) ->
    NewName.

expand_var1(NewName) ->
    [[$$ | Var] | Rest] = filename:split(NewName),
    Value = os:getenv(Var),
    true = Value =/= false,
    {ok, fname_join([Value | Rest])}.

fname_join(["." | [_ | _] = Rest]) ->
    fname_join(Rest);
fname_join(Components) ->
    filename:join(Components).

loc(Token) ->
    erl_scan:location(Token).

add_line(Line, Offset) when is_integer(Line) ->
    Line + Offset;
add_line({Line, Column}, Offset) ->
    {Line + Offset, Column}.

start_loc(Line) when is_integer(Line) ->
    1;
start_loc({_Line, _Column}) ->
    {1, 1}.

line1() ->
    erl_anno:new(1).

get_line(Anno) ->
    erl_anno:line(Anno).

interpret_file_attribute(Forms) ->
    interpret_file_attr(Forms, 0, []).

interpret_file_attr([{attribute, Anno, file, {File, Line}} = Form |
                     Forms],
                    Delta, Fs) ->
    L = get_line(Anno),
    Generated = erl_anno:generated(Anno),
    if
        Generated ->
            interpret_file_attr(Forms, L + Delta - Line, Fs);
        not Generated ->
            case Fs of
                [_, File | Fs1] ->
                    [Form | interpret_file_attr(Forms, 0, [File | Fs1])];
                _ ->
                    [Form | interpret_file_attr(Forms, 0, [File | Fs])]
            end
    end;
interpret_file_attr([Form0 | Forms], Delta, Fs) ->
    F = fun(Anno) ->
               Line = erl_anno:line(Anno),
               erl_anno:set_line(Line + Delta, Anno)
        end,
    Form = erl_parse:map_anno(F, Form0),
    [Form | interpret_file_attr(Forms, Delta, Fs)];
interpret_file_attr([], _Delta, _Fs) ->
    [].

-spec source_name(#epp{} | boolean(), file:filename_all()) ->
                     file:filename_all().

source_name(Deterministic, Name) when is_boolean(Deterministic) ->
    case Deterministic of
        true ->
            filename:basename(Name);
        false ->
            Name
    end;
source_name(St, Name) ->
    source_name(case St of
                    {epp, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                     _, _, REC110} ->
                        REC110;
                    REC110 ->
                        error({badrecord, REC110})
                end,
                Name).



