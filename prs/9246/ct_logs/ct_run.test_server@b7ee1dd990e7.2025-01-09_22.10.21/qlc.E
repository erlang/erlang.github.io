-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.2/src/qlc.erl", 1).

-module(qlc).

{warning,{{21,2},epp,{moduledoc,file,"../doc/src/qlc.md"}}}

-compile({no_auto_import, [{error, 1}]}).

-export([parse_transform/2,
         parse_transform_info/0,
         transform_from_evaluator/2]).

-export([q/1,q/2]).

-export([eval/1,e/1,eval/2,e/2,fold/3,fold/4]).

-export([cursor/1,
         cursor/2,
         next_answers/1,
         next_answers/2,
         delete_cursor/1]).

-export([append/1,append/2]).

-export([sort/1,sort/2,keysort/2,keysort/3]).

-export([table/2]).

-export([info/1,info/2]).

-export([string_to_handle/1,string_to_handle/2,string_to_handle/3]).

-export([format_error/1]).

-export([template_state/0,
         aux_name/3,
         name_suffix/2,
         vars/1,
         var_ufold/2,
         var_fold/3,
         all_selections/1]).

-dialyzer(no_improper_lists).

-record(qlc_append,{hl}).

-record(qlc_table,{trav_fun, trav_MS, pre_fun, post_fun, info_fun,
                   format_fun, lookup_fun, parent_fun, key_equality,
                   lu_vals,
                   ms = no_match_spec}).

-record(qlc_sort,{h, keypos, unique, compressed, order, fs_opts,
                  tmpdir_usage = allowed,
                  tmpdir}).

-record(qlc_lc,{lc, opt}).

-record(qlc_list,{l, ms = no_match_spec}).

-record(qlc_join,{kind, opt, h1, q1, c1, h2, q2, c2}).

-record(qlc_cursor,{c}).

-record(qlc_opt,{unique = false,
                 cache = false,
                 max_lookup = -1,
                 join = any,
                 tmpdir = "",
                 lookup = any,
                 max_list = 512 * 1024,
                 tmpdir_usage = allowed}).

-record(setup,{parent}).

-export_type([query_cursor/0,query_handle/0]).

-record(qlc_handle,{h}).

get_handle({qlc_handle, {qlc_lc, _, {qlc_opt, U, C, M}} = H}) ->
    begin
        REC0 = {qlc_opt, U, C, M, any, "", any, 512 * 1024, allowed},
        REC1 = H,
        case REC1 of
            {qlc_lc, _, _} ->
                setelement(3, REC1, REC0);
            _ ->
                error({badrecord, REC1})
        end
    end;
get_handle({qlc_handle, H}) ->
    H;
get_handle(L) when is_list(L) ->
    L;
get_handle(_) ->
    badarg.

-type query_list_comprehension() :: term().

-opaque query_cursor() :: {qlc_cursor, term()}.

-opaque query_handle() :: {qlc_handle, term()}.

-type query_handle_or_list() :: query_handle() | list().

-type answers() :: [answer()].

-type answer() :: term().

-type abstract_expr() :: erl_parse:abstract_expr().

-type match_expression() :: ets:match_spec().

-type spawn_options() :: default | [proc_lib:spawn_option()].

-type sort_options() :: [sort_option()] | sort_option().

-type sort_option() ::
          {compressed, boolean()} |
          {no_files, no_files()} |
          {order, order()} |
          {size, pos_integer()} |
          {tmpdir, tmp_directory()} |
          {unique, boolean()}.

-type order() :: ascending | descending | order_fun().

-type order_fun() :: fun((term(), term()) -> boolean()).

-type tmp_directory() :: [] | file:name().

-type no_files() :: pos_integer().

-type key_pos() :: pos_integer() | [pos_integer()].

-type max_list_size() :: non_neg_integer().

-type cache() :: ets | list | no.

-type tmp_file_usage() ::
          allowed | not_allowed | info_msg | warning_msg | error_msg.

-spec append(QHL) -> QH
                when
                    QHL :: [query_handle_or_list()],
                    QH :: query_handle().

append(QHs) ->
    Hs =
        [ 
         case get_handle(QH) of
             badarg ->
                 error(badarg, [QHs]);
             H ->
                 H
         end ||
             QH <- QHs
        ],
    {qlc_handle, {qlc_append, Hs}}.

-spec append(QH1, QH2) -> QH3
                when
                    QH1 :: query_handle_or_list(),
                    QH2 :: query_handle_or_list(),
                    QH3 :: query_handle().

append(QH1, QH2) ->
    Hs =
        [ 
         case get_handle(QH) of
             badarg ->
                 error(badarg, [QH1, QH2]);
             H ->
                 H
         end ||
             QH <- [QH1, QH2]
        ],
    {qlc_handle, {qlc_append, Hs}}.

-spec cursor(QH) -> Cursor
                when
                    QH :: query_handle_or_list(),
                    Cursor :: query_cursor().

cursor(QH) ->
    cursor(QH, []).

-spec cursor(QH, Options) -> Cursor
                when
                    QH :: query_handle_or_list(),
                    Options :: [Option] | Option,
                    Option ::
                        {cache_all, cache()} |
                        cache_all |
                        {max_list_size, max_list_size()} |
                        {spawn_options, spawn_options()} |
                        {tmpdir_usage, tmp_file_usage()} |
                        {tmpdir, tmp_directory()} |
                        {unique_all, boolean()} |
                        unique_all,
                    Cursor :: query_cursor().

cursor(QH, Options) ->
    case
        {options(Options,
                 [unique_all, cache_all, tmpdir, spawn_options,
                  max_list_size, tmpdir_usage]),
         get_handle(QH)}
    of
        {B1, B2} when B1 =:= badarg; B2 =:= badarg ->
            error(badarg, [QH, Options]);
        {[GUnique, GCache, TmpDir, SpawnOptions0, MaxList, TmpUsage], H} ->
            SpawnOptions = spawn_options(SpawnOptions0),
            case
                cursor_process(H, GUnique, GCache, TmpDir, SpawnOptions,
                               MaxList, TmpUsage)
            of
                Pid when is_pid(Pid) ->
                    {qlc_cursor, {Pid, self()}};
                Error ->
                    Error
            end
    end.

-spec delete_cursor(QueryCursor) -> ok
                       when QueryCursor :: query_cursor().

delete_cursor({qlc_cursor, {_, Owner}} = C) when Owner =/= self() ->
    error(not_cursor_owner, [C]);
delete_cursor({qlc_cursor, {Pid, _}}) ->
    stop_cursor(Pid);
delete_cursor(T) ->
    error(badarg, [T]).

-spec e(QH) -> Answers | Error
           when
               QH :: query_handle_or_list(),
               Answers :: answers(),
               Error :: {error, module(), Reason},
               Reason :: file_sorter:reason().

e(QH) ->
    eval(QH, []).

-spec e(QH, Options) -> Answers | Error
           when
               QH :: query_handle_or_list(),
               Options :: [Option] | Option,
               Option ::
                   {cache_all, cache()} |
                   cache_all |
                   {max_list_size, max_list_size()} |
                   {tmpdir_usage, tmp_file_usage()} |
                   {tmpdir, tmp_directory()} |
                   {unique_all, boolean()} |
                   unique_all,
               Answers :: answers(),
               Error :: {error, module(), Reason},
               Reason :: file_sorter:reason().

e(QH, Options) ->
    eval(QH, Options).

-spec eval(QH) -> Answers | Error
              when
                  QH :: query_handle_or_list(),
                  Answers :: answers(),
                  Error :: {error, module(), Reason},
                  Reason :: file_sorter:reason().

eval(QH) ->
    eval(QH, []).

-spec eval(QH, Options) -> Answers | Error
              when
                  QH :: query_handle_or_list(),
                  Answers :: answers(),
                  Options :: [Option] | Option,
                  Option ::
                      {cache_all, cache()} |
                      cache_all |
                      {max_list_size, max_list_size()} |
                      {tmpdir_usage, tmp_file_usage()} |
                      {tmpdir, tmp_directory()} |
                      {unique_all, boolean()} |
                      unique_all,
                  Error :: {error, module(), Reason},
                  Reason :: file_sorter:reason().

eval(QH, Options) ->
    case
        {options(Options,
                 [unique_all, cache_all, tmpdir, max_list_size,
                  tmpdir_usage]),
         get_handle(QH)}
    of
        {B1, B2} when B1 =:= badarg; B2 =:= badarg ->
            error(badarg, [QH, Options]);
        {[GUnique, GCache, TmpDir, MaxList, TmpUsage], Handle} ->
            try
                Prep =
                    prepare_qlc(Handle, [], GUnique, GCache, TmpDir,
                                MaxList, TmpUsage),
                case setup_qlc(Prep, {setup, self()}) of
                    {L, Post, _LocalPost} when is_list(L) ->
                        post_funs(Post),
                        L;
                    {Objs, Post, _LocalPost} when is_function(Objs) ->
                        try collect(Objs) after post_funs(Post) end
                end
            catch
                throw:Term:Stacktrace ->
                    case Stacktrace of
                        [{qlc, throw_error, _, _} | _] ->
                            Term;
                        _ ->
                            erlang:raise(throw, Term, Stacktrace)
                    end
            end
    end.

-spec fold(Function, Acc0, QH) -> Acc1 | Error
              when
                  QH :: query_handle_or_list(),
                  Function :: fun((answer(), AccIn) -> AccOut),
                  Acc0 :: term(),
                  Acc1 :: term(),
                  AccIn :: term(),
                  AccOut :: term(),
                  Error :: {error, module(), Reason},
                  Reason :: file_sorter:reason().

fold(Fun, Acc0, QH) ->
    fold(Fun, Acc0, QH, []).

-spec fold(Function, Acc0, QH, Options) -> Acc1 | Error
              when
                  QH :: query_handle_or_list(),
                  Function :: fun((answer(), AccIn) -> AccOut),
                  Acc0 :: term(),
                  Acc1 :: term(),
                  AccIn :: term(),
                  AccOut :: term(),
                  Options :: [Option] | Option,
                  Option ::
                      {cache_all, cache()} |
                      cache_all |
                      {max_list_size, max_list_size()} |
                      {tmpdir_usage, tmp_file_usage()} |
                      {tmpdir, tmp_directory()} |
                      {unique_all, boolean()} |
                      unique_all,
                  Error :: {error, module(), Reason},
                  Reason :: file_sorter:reason().

fold(Fun, Acc0, QH, Options) ->
    case
        {options(Options,
                 [unique_all, cache_all, tmpdir, max_list_size,
                  tmpdir_usage]),
         get_handle(QH)}
    of
        {B1, B2} when B1 =:= badarg; B2 =:= badarg ->
            error(badarg, [Fun, Acc0, QH, Options]);
        {[GUnique, GCache, TmpDir, MaxList, TmpUsage], Handle} ->
            try
                Prep =
                    prepare_qlc(Handle, not_a_list, GUnique, GCache,
                                TmpDir, MaxList, TmpUsage),
                case setup_qlc(Prep, {setup, self()}) of
                    {Objs, Post, _LocalPost}
                        when is_function(Objs); is_list(Objs) ->
                        try
                            fold_loop(Fun, Objs, Acc0)
                        after
                            post_funs(Post)
                        end
                end
            catch
                throw:Term:Stacktrace ->
                    case Stacktrace of
                        [{qlc, throw_error, _, _} | _] ->
                            Term;
                        _ ->
                            erlang:raise(throw, Term, Stacktrace)
                    end
            end
    end.

-spec format_error(Error) -> Chars
                      when
                          Error :: {error, module(), term()},
                          Chars :: io_lib:chars().

format_error(not_a_query_list_comprehension) ->
    io_lib:format("argument is not a query list comprehension", []);
format_error({used_generator_variable, V}) ->
    io_lib:format("generated variable ~w must not be used in list expre"
                  "ssion",
                  [V]);
format_error(binary_generator) ->
    io_lib:format("cannot handle binary generators", []);
format_error(too_complex_join) ->
    io_lib:format("cannot handle join of three or more generators effic"
                  "iently",
                  []);
format_error(too_many_joins) ->
    io_lib:format("cannot handle more than one join efficiently", []);
format_error(nomatch_pattern) ->
    io_lib:format("pattern cannot possibly match", []);
format_error(nomatch_filter) ->
    io_lib:format("filter evaluates to 'false'", []);
format_error({Location, Mod, Reason})
    when is_integer(Location); tuple_size(Location) =:= 2 ->
    io_lib:format("~s: ~ts~n",
                  [pos(Location),
                   lists:flatten(Mod:format_error(Reason))]);
format_error({bad_object, FileName}) ->
    io_lib:format("the temporary file \"~ts\" holding answers is corrup"
                  "t",
                  [FileName]);
format_error(bad_object) ->
    io_lib:format("the keys could not be extracted from some term", []);
format_error({file_error, FileName, Reason}) ->
    io_lib:format("\"~ts\": ~tp~n",
                  [FileName, file:format_error(Reason)]);
format_error({premature_eof, FileName}) ->
    io_lib:format("\"~ts\": end-of-file was encountered inside some bin"
                  "ary term",
                  [FileName]);
format_error({tmpdir_usage, Why}) ->
    io_lib:format("temporary file was needed for ~w~n", [Why]);
format_error({error, Module, Reason}) ->
    Module:format_error(Reason);
format_error(E) ->
    io_lib:format("~tp~n", [E]).

pos({Line, Col}) ->
    io_lib:format("~w:~w", [Line, Col]);
pos(Line) ->
    io_lib:format("~w", [Line]).

-spec info(QH) -> Info
              when
                  QH :: query_handle_or_list(),
                  Info :: abstract_expr() | string().

info(QH) ->
    info(QH, []).

-spec info(QH, Options) -> Info
              when
                  QH :: query_handle_or_list(),
                  Options :: [Option] | Option,
                  Option :: EvalOption | ReturnOption,
                  EvalOption ::
                      {cache_all, cache()} |
                      cache_all |
                      {max_list_size, max_list_size()} |
                      {tmpdir_usage, tmp_file_usage()} |
                      {tmpdir, tmp_directory()} |
                      {unique_all, boolean()} |
                      unique_all,
                  ReturnOption ::
                      {depth, Depth} |
                      {flat, boolean()} |
                      {format, Format} |
                      {n_elements, NElements},
                  Depth :: infinity | non_neg_integer(),
                  Format :: abstract_code | string,
                  NElements :: infinity | pos_integer(),
                  Info :: abstract_expr() | string().

info(QH, Options) ->
    case
        {options(Options,
                 [unique_all, cache_all, flat, format, n_elements,
                  depth, tmpdir, max_list_size, tmpdir_usage]),
         get_handle(QH)}
    of
        {B1, B2} when B1 =:= badarg; B2 =:= badarg ->
            error(badarg, [QH, Options]);
        {[GUnique, GCache, Flat, Format, NElements, Depth, TmpDir,
          MaxList, TmpUsage],
         H} ->
            try
                Prep =
                    prepare_qlc(H, [], GUnique, GCache, TmpDir, MaxList,
                                TmpUsage),
                Info = le_info(Prep, {NElements, Depth}),
                AbstractCode = abstract(Info, Flat, NElements, Depth),
                case Format of
                    abstract_code ->
                        abstract_code(AbstractCode);
                    string ->
                        Hook =
                            fun({special, _Anno, String}, _I, _P, _F) ->
                                   String
                            end,
                        lists:flatten(erl_pp:expr(AbstractCode, 0, Hook));
                    debug ->
                        Info
                end
            catch
                throw:Term:Stacktrace ->
                    case Stacktrace of
                        [{qlc, throw_error, _, _} | _] ->
                            Term;
                        _ ->
                            erlang:raise(throw, Term, Stacktrace)
                    end
            end
    end.

-spec keysort(KeyPos, QH1) -> QH2
                 when
                     KeyPos :: key_pos(),
                     QH1 :: query_handle_or_list(),
                     QH2 :: query_handle().

keysort(KeyPos, QH) ->
    keysort(KeyPos, QH, []).

-spec keysort(KeyPos, QH1, SortOptions) -> QH2
                 when
                     KeyPos :: key_pos(),
                     SortOptions :: sort_options(),
                     QH1 :: query_handle_or_list(),
                     QH2 :: query_handle().

keysort(KeyPos, QH, Options) ->
    case
        {is_keypos(KeyPos),
         options(Options,
                 [tmpdir, order, unique, compressed, size, no_files]),
         get_handle(QH)}
    of
        {true, [TmpDir, Order, Unique, Compressed | _], H}
            when H =/= badarg ->
            {qlc_handle,
             {qlc_sort, H,
              {keysort, KeyPos},
              Unique, Compressed, Order,
              listify(Options),
              allowed, TmpDir}};
        _ ->
            error(badarg, [KeyPos, QH, Options])
    end.

-spec next_answers(QueryCursor) -> Answers | Error
                      when
                          QueryCursor :: query_cursor(),
                          Answers :: answers(),
                          Error :: {error, module(), Reason},
                          Reason :: file_sorter:reason().

next_answers(C) ->
    next_answers(C, 10).

-spec next_answers(QueryCursor, NumberOfAnswers) -> Answers | Error
                      when
                          QueryCursor :: query_cursor(),
                          Answers :: answers(),
                          NumberOfAnswers ::
                              all_remaining | pos_integer(),
                          Error :: {error, module(), Reason},
                          Reason :: file_sorter:reason().

next_answers({qlc_cursor, {_, Owner}} = C, NumOfAnswers)
    when Owner =/= self() ->
    error(not_cursor_owner, [C, NumOfAnswers]);
next_answers({qlc_cursor, {Pid, _}} = C, NumOfAnswers) ->
    N = case NumOfAnswers of
            all_remaining ->
                -1;
            _ when is_integer(NumOfAnswers), NumOfAnswers > 0 ->
                NumOfAnswers;
            _ ->
                error(badarg, [C, NumOfAnswers])
        end,
    next_loop(Pid, [], N);
next_answers(T1, T2) ->
    error(badarg, [T1, T2]).

-spec parse_transform(Forms, Options) -> Forms2
                         when
                             Forms :: [erl_parse:abstract_form()],
                             Forms2 :: [erl_parse:abstract_form()],
                             Options :: [Option],
                             Option :: type_checker | compile:option().

parse_transform(Forms, Options) ->
    qlc_pt:parse_transform(Forms, Options).

-spec parse_transform_info() -> #{error_location => column}.

parse_transform_info() ->
    #{error_location => column}.

-spec q(QLC) -> QH
           when QLC :: query_list_comprehension(), QH :: query_handle().

q(QLC_lc) ->
    q(QLC_lc, []).

-spec q(QLC, Options) -> QH
           when
               QH :: query_handle(),
               Options :: [Option] | Option,
               Option ::
                   {max_lookup, MaxLookup} |
                   {cache, cache()} |
                   cache |
                   {join, Join} |
                   {lookup, Lookup} |
                   {unique, boolean()} |
                   unique,
               MaxLookup :: non_neg_integer() | infinity,
               Join :: any | lookup | merge | nested_loop,
               Lookup :: boolean() | any,
               QLC :: query_list_comprehension().

q({qlc_lc, _, _} = QLC_lc, Options) ->
    case options(Options, [unique, cache, max_lookup, join, lookup]) of
        [Unique, Cache, Max, Join, Lookup] ->
            Opt =
                {qlc_opt, Unique, Cache, Max, Join,
                 "",
                 Lookup,
                 512 * 1024,
                 allowed},
            {qlc_handle,
             begin
                 REC2 = QLC_lc,
                 case REC2 of
                     {qlc_lc, _, _} ->
                         setelement(3, REC2, Opt);
                     _ ->
                         error({badrecord, REC2})
                 end
             end};
        _ ->
            error(badarg, [QLC_lc, Options])
    end;
q(T1, T2) ->
    error(badarg, [T1, T2]).

-spec sort(QH1) -> QH2
              when QH1 :: query_handle_or_list(), QH2 :: query_handle().

sort(QH) ->
    sort(QH, []).

-spec sort(QH1, SortOptions) -> QH2
              when
                  SortOptions :: sort_options(),
                  QH1 :: query_handle_or_list(),
                  QH2 :: query_handle().

sort(QH, Options) ->
    case
        {options(Options,
                 [tmpdir, order, unique, compressed, size, no_files]),
         get_handle(QH)}
    of
        {B1, B2} when B1 =:= badarg; B2 =:= badarg ->
            error(badarg, [QH, Options]);
        {[TD, Order, Unique, Compressed | _], H} ->
            {qlc_handle,
             {qlc_sort, H, sort, Unique, Compressed, Order,
              listify(Options),
              allowed, TD}}
    end.

-spec string_to_handle(QueryString) -> QH | Error
                          when
                              QueryString :: string(),
                              QH :: query_handle(),
                              Error :: {error, module(), Reason},
                              Reason ::
                                  erl_parse:error_info() |
                                  erl_scan:error_info().

string_to_handle(Str) ->
    string_to_handle(Str, []).

-spec string_to_handle(QueryString, Options) -> QH | Error
                          when
                              QueryString :: string(),
                              Options :: [Option] | Option,
                              Option ::
                                  {max_lookup, MaxLookup} |
                                  {cache, cache()} |
                                  cache |
                                  {join, Join} |
                                  {lookup, Lookup} |
                                  {unique, boolean()} |
                                  unique,
                              MaxLookup :: non_neg_integer() | infinity,
                              Join :: any | lookup | merge | nested_loop,
                              Lookup :: boolean() | any,
                              QH :: query_handle(),
                              Error :: {error, module(), Reason},
                              Reason ::
                                  erl_parse:error_info() |
                                  erl_scan:error_info().

string_to_handle(Str, Options) ->
    string_to_handle(Str, Options, erl_eval:new_bindings()).

-spec string_to_handle(QueryString, Options, Bindings) -> QH | Error
                          when
                              QueryString :: string(),
                              Options :: [Option] | Option,
                              Option ::
                                  {max_lookup, MaxLookup} |
                                  {cache, cache()} |
                                  cache |
                                  {join, Join} |
                                  {lookup, Lookup} |
                                  {unique, boolean()} |
                                  unique,
                              MaxLookup :: non_neg_integer() | infinity,
                              Join :: any | lookup | merge | nested_loop,
                              Lookup :: boolean() | any,
                              Bindings :: erl_eval:binding_struct(),
                              QH :: query_handle(),
                              Error :: {error, module(), Reason},
                              Reason ::
                                  erl_parse:error_info() |
                                  erl_scan:error_info().

string_to_handle(Str, Options, Bindings) when is_list(Str) ->
    case options(Options, [unique, cache, max_lookup, join, lookup]) of
        badarg ->
            error(badarg, [Str, Options, Bindings]);
        [Unique, Cache, MaxLookup, Join, Lookup] ->
            case erl_scan:string(Str, 1, [text]) of
                {ok, Tokens, _} ->
                    ScanRes =
                        case erl_eval:extended_parse_exprs(Tokens) of
                            {ok, [Expr0]} ->
                                {ok, Expr0};
                            {ok, _ExprList} ->
                                error(badarg, [Str, Options, Bindings]);
                            E ->
                                E
                        end,
                    case ScanRes of
                        {ok, Expr} ->
                            case
                                qlc_pt:transform_expression(Expr,
                                                            Bindings)
                            of
                                {ok, {call, _, _QlcQ, Handle}} ->
                                    {value, QLC_lc, _} =
                                        erl_eval:exprs(Handle, Bindings),
                                    O = {qlc_opt, Unique, Cache,
                                         MaxLookup, Join,
                                         "",
                                         Lookup,
                                         512 * 1024,
                                         allowed},
                                    {qlc_handle,
                                     begin
                                         REC3 = QLC_lc,
                                         case REC3 of
                                             {qlc_lc, _, _} ->
                                                 setelement(3, REC3, O);
                                             _ ->
                                                 error({badrecord, REC3})
                                         end
                                     end};
                                {not_ok, [{error, Error} | _]} ->
                                    error(Error)
                            end;
                        {error, ErrorInfo} ->
                            error(ErrorInfo)
                    end;
                {error, ErrorInfo, _EndLocation} ->
                    error(ErrorInfo)
            end
    end;
string_to_handle(T1, T2, T3) ->
    error(badarg, [T1, T2, T3]).

-spec table(TraverseFun, Options) -> QH
               when
                   TraverseFun :: TraverseFun0 | TraverseFun1,
                   TraverseFun0 :: fun(() -> TraverseResult),
                   TraverseFun1 ::
                       fun((match_expression()) -> TraverseResult),
                   TraverseResult :: Objects | term(),
                   Objects :: [] | [term() | ObjectList],
                   ObjectList :: TraverseFun0 | Objects,
                   Options :: [Option] | Option,
                   Option ::
                       {format_fun, FormatFun} |
                       {info_fun, InfoFun} |
                       {lookup_fun, LookupFun} |
                       {parent_fun, ParentFun} |
                       {post_fun, PostFun} |
                       {pre_fun, PreFun} |
                       {key_equality, KeyComparison},
                   FormatFun ::
                       undefined |
                       fun((SelectedObjects) -> FormatedTable),
                   SelectedObjects ::
                       all |
                       {all, NElements, DepthFun} |
                       {match_spec, match_expression()} |
                       {lookup, Position, Keys} |
                       {lookup, Position, Keys, NElements, DepthFun},
                   NElements :: infinity | pos_integer(),
                   DepthFun :: fun((term()) -> term()),
                   FormatedTable ::
                       {Mod, Fun, Args} | abstract_expr() | string(),
                   InfoFun :: undefined | fun((InfoTag) -> InfoValue),
                   InfoTag ::
                       indices | is_unique_objects | keypos |
                       num_of_objects,
                   InfoValue :: undefined | term(),
                   LookupFun ::
                       undefined | fun((Position, Keys) -> LookupResult),
                   LookupResult :: [term()] | term(),
                   ParentFun :: undefined | fun(() -> ParentFunValue),
                   PostFun :: undefined | fun(() -> term()),
                   PreFun :: undefined | fun((PreArgs) -> term()),
                   PreArgs :: [PreArg],
                   PreArg ::
                       {parent_value, ParentFunValue} |
                       {stop_fun, StopFun},
                   ParentFunValue :: undefined | term(),
                   StopFun :: undefined | fun(() -> term()),
                   KeyComparison :: '=:=' | '==',
                   Position :: pos_integer(),
                   Keys :: [term()],
                   Mod :: atom(),
                   Fun :: atom(),
                   Args :: [term()],
                   QH :: query_handle().

table(TraverseFun, Options) when is_function(TraverseFun) ->
    case
        {is_function(TraverseFun, 0),
         IsFun1 = is_function(TraverseFun, 1)}
    of
        {false, false} ->
            error(badarg, [TraverseFun, Options]);
        _ ->
            case
                options(Options,
                        [pre_fun, post_fun, info_fun, format_fun,
                         lookup_fun, parent_fun, key_equality])
            of
                [PreFun, PostFun, InfoFun, FormatFun, LookupFun,
                 ParentFun, KeyEquality] ->
                    T = {qlc_table, TraverseFun, IsFun1, PreFun,
                         PostFun, InfoFun, FormatFun, LookupFun,
                         ParentFun, KeyEquality, undefined,
                         no_match_spec},
                    {qlc_handle, T};
                badarg ->
                    error(badarg, [TraverseFun, Options])
            end
    end;
table(T1, T2) ->
    error(badarg, [T1, T2]).

-spec transform_from_evaluator(LC, Bs) -> Return
                                  when
                                      LC :: abstract_expr(),
                                      Bs :: erl_eval:binding_struct(),
                                      Return ::
                                          {ok, abstract_expr()} |
                                          {not_ok,
                                           {error,
                                            module(),
                                            Reason :: term()}}.

transform_from_evaluator(LC, Bs0) ->
    qlc_pt:transform_from_evaluator(LC, Bs0).

template_state() ->
    1.

aux_name(Name, N, AllNames) ->
    {VN, _} = aux_name1(Name, N, AllNames),
    VN.

name_suffix(A, Suff) ->
    list_to_atom(lists:concat([A, Suff])).

vars(E) ->
    var_ufold(fun({var, _A, V}) ->
                     V
              end,
              E).

var_ufold(F, E) ->
    ordsets:from_list(var_fold(F, [], E)).

all_selections([]) ->
    [[]];
all_selections([{I, Cs} | ICs]) ->
    [ 
     [{I, C} | L] ||
         C <- Cs,
         L <- all_selections(ICs)
    ].

aux_name1(Name, N, AllNames) ->
    SN = name_suffix(Name, N),
    case gb_sets:is_member(SN, AllNames) of
        true ->
            aux_name1(Name, N + 1, AllNames);
        false ->
            {SN, N}
    end.

var_fold(F, A, {var, _, V} = Var) when V =/= '_' ->
    [F(Var) | A];
var_fold(F, A, T) when is_tuple(T) ->
    var_fold(F, A, tuple_to_list(T));
var_fold(F, A, [E | Es]) ->
    var_fold(F, var_fold(F, A, E), Es);
var_fold(_F, A, _T) ->
    A.

options(Options, Keys) when is_list(Options) ->
    options(Options, Keys, []);
options(Option, Keys) ->
    options([Option], Keys, []).

options(Options0, [Key | Keys], L) when is_list(Options0) ->
    Options =
        case lists:member(Key, Options0) of
            true ->
                [atom_option(Key) | lists:delete(Key, Options0)];
            false ->
                Options0
        end,
    V = case lists:keyfind(Key, 1, Options) of
            {format_fun, U = undefined} ->
                {ok, U};
            {info_fun, U = undefined} ->
                {ok, U};
            {lookup_fun, U = undefined} ->
                {ok, U};
            {parent_fun, U = undefined} ->
                {ok, U};
            {post_fun, U = undefined} ->
                {ok, U};
            {pre_fun, U = undefined} ->
                {ok, U};
            {info_fun, Fun} when is_function(Fun, 1) ->
                {ok, Fun};
            {pre_fun, Fun} when is_function(Fun, 1) ->
                {ok, Fun};
            {post_fun, Fun} when is_function(Fun, 0) ->
                {ok, Fun};
            {lookup_fun, Fun} when is_function(Fun, 2) ->
                {ok, Fun};
            {max_lookup, Max} when is_integer(Max), Max >= 0 ->
                {ok, Max};
            {max_lookup, infinity} ->
                {ok, -1};
            {format_fun, Fun} when is_function(Fun, 1) ->
                {ok, Fun};
            {parent_fun, Fun} when is_function(Fun, 0) ->
                {ok, Fun};
            {key_equality, KE = '=='} ->
                {ok, KE};
            {key_equality, KE = '=:='} ->
                {ok, KE};
            {join, J = any} ->
                {ok, J};
            {join, J = nested_loop} ->
                {ok, J};
            {join, J = merge} ->
                {ok, J};
            {join, J = lookup} ->
                {ok, J};
            {lookup, LookUp} when is_boolean(LookUp); LookUp =:= any ->
                {ok, LookUp};
            {max_list_size, Max} when is_integer(Max), Max >= 0 ->
                {ok, Max};
            {tmpdir_usage, TmpUsage}
                when
                    TmpUsage =:= allowed;
                    TmpUsage =:= not_allowed;
                    TmpUsage =:= info_msg;
                    TmpUsage =:= warning_msg;
                    TmpUsage =:= error_msg ->
                {ok, TmpUsage};
            {unique, Unique} when is_boolean(Unique) ->
                {ok, Unique};
            {cache, Cache} when is_boolean(Cache); Cache =:= list ->
                {ok, Cache};
            {cache, ets} ->
                {ok, true};
            {cache, no} ->
                {ok, false};
            {unique_all, UniqueAll} when is_boolean(UniqueAll) ->
                {ok, UniqueAll};
            {cache_all, CacheAll}
                when is_boolean(CacheAll); CacheAll =:= list ->
                {ok, CacheAll};
            {cache_all, ets} ->
                {ok, true};
            {cache_all, no} ->
                {ok, false};
            {spawn_options, default} ->
                {ok, default};
            {spawn_options, SpawnOptions} ->
                case is_proper_list(SpawnOptions) of
                    true ->
                        {ok, SpawnOptions};
                    false ->
                        badarg
                end;
            {flat, Flat} when is_boolean(Flat) ->
                {ok, Flat};
            {format, Format}
                when
                    Format =:= string;
                    Format =:= abstract_code;
                    Format =:= debug ->
                {ok, Format};
            {n_elements, NElements}
                when
                    NElements =:= infinity;
                    is_integer(NElements), NElements > 0 ->
                {ok, NElements};
            {depth, Depth}
                when Depth =:= infinity; is_integer(Depth), Depth >= 0 ->
                {ok, Depth};
            {order, Order}
                when
                    is_function(Order, 2);
                    Order =:= ascending;
                    Order =:= descending ->
                {ok, Order};
            {compressed, Comp} when Comp ->
                {ok, [compressed]};
            {compressed, Comp} when not Comp ->
                {ok, []};
            {tmpdir, T} ->
                {ok, T};
            {size, Size} when is_integer(Size), Size > 0 ->
                {ok, Size};
            {no_files, NoFiles} when is_integer(NoFiles), NoFiles > 1 ->
                {ok, NoFiles};
            {Key, _} ->
                badarg;
            false ->
                Default = default_option(Key),
                {ok, Default}
        end,
    case V of
        badarg ->
            badarg;
        {ok, Value} ->
            NewOptions = lists:keydelete(Key, 1, Options),
            options(NewOptions, Keys, [Value | L])
    end;
options([], [], L) ->
    lists:reverse(L);
options(_Options, _, _L) ->
    badarg.

default_option(pre_fun) ->
    undefined;
default_option(post_fun) ->
    undefined;
default_option(info_fun) ->
    undefined;
default_option(format_fun) ->
    undefined;
default_option(lookup_fun) ->
    undefined;
default_option(max_lookup) ->
    -1;
default_option(join) ->
    any;
default_option(lookup) ->
    any;
default_option(parent_fun) ->
    undefined;
default_option(key_equality) ->
    '=:=';
default_option(spawn_options) ->
    default;
default_option(flat) ->
    true;
default_option(format) ->
    string;
default_option(n_elements) ->
    infinity;
default_option(depth) ->
    infinity;
default_option(max_list_size) ->
    512 * 1024;
default_option(tmpdir_usage) ->
    allowed;
default_option(cache) ->
    false;
default_option(cache_all) ->
    false;
default_option(unique) ->
    false;
default_option(unique_all) ->
    false;
default_option(order) ->
    ascending;
default_option(compressed) ->
    [];
default_option(tmpdir) ->
    "";
default_option(size) ->
    524288;
default_option(no_files) ->
    16.

atom_option(cache) ->
    {cache, true};
atom_option(unique) ->
    {unique, true};
atom_option(cache_all) ->
    {cache_all, true};
atom_option(unique_all) ->
    {unique_all, true};
atom_option(lookup) ->
    {lookup, true};
atom_option(flat) ->
    {flat, true};
atom_option(Key) ->
    Key.

is_proper_list([_ | L]) ->
    is_proper_list(L);
is_proper_list(L) ->
    L =:= [].

spawn_options(default) ->
    [link];
spawn_options(SpawnOptions) ->
    lists:delete(monitor,
                 case lists:member(link, SpawnOptions) of
                     true ->
                         SpawnOptions;
                     false ->
                         [link | SpawnOptions]
                 end).

is_keypos(Keypos) when is_integer(Keypos), Keypos > 0 ->
    true;
is_keypos([]) ->
    false;
is_keypos(L) ->
    is_keyposs(L).

is_keyposs([Kp | Kps]) when is_integer(Kp), Kp > 0 ->
    is_keyposs(Kps);
is_keyposs(Kps) ->
    Kps =:= [].

listify(L) when is_list(L) ->
    L;
listify(T) ->
    [T].

-record(optz,{unique = false,
              cache = false,
              join_option = any,
              fast_join = no,
              opt}).

-record(qlc,{lcf, codef, qdata, init_value, optz}).

-record(simple_qlc,{p, le, anno :: erl_anno:anno(), init_value, optz}).

-record(prepared,{qh,
                  sorted = no,
                  sort_info = [],
                  sort_info2 = [],
                  lu_skip_quals = [],
                  join = {[], []},
                  n_objs = undefined,
                  is_unique_objects = false,
                  is_cached = false}).

cursor_process(H, GUnique, GCache, TmpDir, SpawnOptions, MaxList,
               TmpUsage) ->
    Parent = self(),
    Setup = {setup, Parent},
    CF =
        fun() ->
               process_flag(trap_exit, true),
               MonRef = monitor(process, Parent),
               {Objs, Post, _LocalPost} =
                   try
                       Prep =
                           prepare_qlc(H, not_a_list, GUnique, GCache,
                                       TmpDir, MaxList, TmpUsage),
                       setup_qlc(Prep, Setup)
                   catch
                       Class:Reason:Stacktrace ->
                           Parent
                           !
                           {self(), {caught, Class, Reason, Stacktrace}},
                           exit(normal)
                   end,
               Parent ! {self(), ok},
               wait_for_request(Parent, MonRef, Post),
               reply(Parent, MonRef, Post, Objs)
        end,
    Pid = spawn_opt(CF, SpawnOptions),
    parent_fun(Pid, Parent).

parent_fun(Pid, Parent) ->
    receive
        {Pid, ok} ->
            Pid;
        {TPid, {parent_fun, Fun}} ->
            V = try
                    {value, Fun()}
                catch
                    Class:Reason:Stacktrace ->
                        {parent_fun_caught, Class, Reason, Stacktrace}
                end,
            TPid ! {Parent, V},
            parent_fun(Pid, Parent);
        {Pid, {caught, throw, Error, [{qlc, throw_error, _, _} | _]}} ->
            Error;
        {Pid, {caught, Class, Reason, Stacktrace}} ->
            erlang:raise(Class, Reason, Stacktrace)
    end.

reply(Parent, MonRef, Post, []) ->
    no_more(Parent, MonRef, Post);
reply(Parent, MonRef, Post, [Answer | Cont]) ->
    Parent ! {self(), {answer, Answer}},
    wait_for_request(Parent, MonRef, Post),
    reply(Parent, MonRef, Post, Cont);
reply(Parent, MonRef, Post, Cont) ->
    Reply =
        try
            if
                is_function(Cont) ->
                    Cont();
                true ->
                    throw_error(Cont)
            end
        catch
            Class:Reason:Stacktrace ->
                post_funs(Post),
                Message = {caught, Class, Reason, Stacktrace},
                Parent ! {self(), Message},
                exit(normal)
        end,
    reply(Parent, MonRef, Post, Reply).

no_more(Parent, MonRef, Post) ->
    Parent ! {self(), no_more},
    wait_for_request(Parent, MonRef, Post),
    no_more(Parent, MonRef, Post).

wait_for_request(Parent, MonRef, Post) ->
    receive
        {Parent, stop} ->
            post_funs(Post),
            exit(normal);
        {Parent, more} ->
            ok;
        {'EXIT', Parent, _Reason} ->
            post_funs(Post),
            exit(normal);
        {'DOWN', MonRef, process, Parent, _Info} ->
            post_funs(Post),
            exit(normal);
        {'EXIT', Pid, _Reason} when Pid =:= self() ->
            wait_for_request(Parent, MonRef, Post);
        Other ->
            error_logger:error_msg("The qlc cursor ~w received an unexp"
                                   "ected message:\n~tp\n",
                                   [self(), Other]),
            wait_for_request(Parent, MonRef, Post)
    end.

abstract_code({special, Anno, String}) ->
    {string, Anno, String};
abstract_code(Tuple) when is_tuple(Tuple) ->
    list_to_tuple(abstract_code(tuple_to_list(Tuple)));
abstract_code([H | T]) ->
    [abstract_code(H) | abstract_code(T)];
abstract_code(Term) ->
    Term.

abstract(Info, false = _Flat, NElements, Depth) ->
    abstract(Info, NElements, Depth);
abstract(Info, true = _Flat, NElements, Depth) ->
    Abstract = abstract(Info, NElements, Depth),
    Vars = abstract_vars(Abstract),
    {_, Body0, Expr} = flatten_abstr(Abstract, 1, Vars, []),
    case Body0 of
        [] ->
            Expr;
        [{match, _, Expr, Q}] ->
            Q;
        [{match, _, Expr, Q} | Body] ->
            {block, anno0(), lists:reverse(Body, [Q])};
        _ ->
            {block, anno0(), lists:reverse(Body0, [Expr])}
    end.

abstract(Info, NElements, Depth) ->
    abstract1(Info, NElements, Depth, anno1()).

abstract1({qlc, E0, Qs0, Opt}, NElements, Depth, A) ->
    Qs =
        lists:map(fun({generate, P, LE}) ->
                         {generate, A,
                          binary_to_term(P),
                          abstract1(LE, NElements, Depth, A)};
                     (F) ->
                         binary_to_term(F)
                  end,
                  Qs0),
    E = binary_to_term(E0),
    Os =
        case Opt of
            [] ->
                [];
            _ ->
                [abstract_term(Opt, 1)]
        end,
    {call, A,
     {remote, A, {atom, A, qlc}, {atom, A, q}},
     [{lc, A, E, Qs} | Os]};
abstract1({table, {M, F, As0}}, _NElements, _Depth, Anno)
    when is_atom(M), is_atom(F), is_list(As0) ->
    As =
        [ 
         abstract_term(A, 1) ||
             A <- As0
        ],
    {call, Anno, {remote, Anno, {atom, Anno, M}, {atom, Anno, F}}, As};
abstract1({table, TableDesc}, _NElements, _Depth, _A) ->
    case io_lib:deep_char_list(TableDesc) of
        true ->
            {ok, Tokens, _} =
                erl_scan:string(lists:flatten(TableDesc ++ "."),
                                1,
                                [text]),
            {ok, [Expr]} = erl_eval:extended_parse_exprs(Tokens),
            special(Expr);
        false ->
            TableDesc
    end;
abstract1({append, Infos}, NElements, Depth, A) ->
    As =
        lists:foldr(fun(Info, As0) ->
                           {cons, A,
                            abstract1(Info, NElements, Depth, A),
                            As0}
                    end,
                    {nil, A},
                    Infos),
    {call, A, {remote, A, {atom, A, qlc}, {atom, A, append}}, [As]};
abstract1({sort, Info, SortOptions}, NElements, Depth, A) ->
    {call, A,
     {remote, A, {atom, A, qlc}, {atom, A, sort}},
     [abstract1(Info, NElements, Depth, A),
      abstract_term(SortOptions, 1)]};
abstract1({keysort, Info, Kp, SortOptions}, NElements, Depth, A) ->
    {call, A,
     {remote, A, {atom, A, qlc}, {atom, A, keysort}},
     [abstract_term(Kp, 1),
      abstract1(Info, NElements, Depth, A),
      abstract_term(SortOptions, 1)]};
abstract1({list, L, MS}, NElements, Depth, A) ->
    {call, A,
     {remote, A, {atom, A, ets}, {atom, A, match_spec_run}},
     [abstract1(L, NElements, Depth, A),
      {call, A,
       {remote, A, {atom, A, ets}, {atom, A, match_spec_compile}},
       [abstract_term(depth(MS, Depth), 1)]}]};
abstract1({list, L}, NElements, Depth, _A)
    when NElements =:= infinity; NElements >= length(L) ->
    abstract_term(depth(L, Depth), 1);
abstract1({list, L}, NElements, Depth, _A) ->
    abstract_term(depth(lists:sublist(L, NElements), Depth) ++ '...', 1).

special({value, _, Thing}) ->
    abstract_term(Thing);
special(Tuple) when is_tuple(Tuple) ->
    list_to_tuple(special(tuple_to_list(Tuple)));
special([E | Es]) ->
    [special(E) | special(Es)];
special(Expr) ->
    Expr.

depth(List, infinity) ->
    List;
depth(List, Depth) ->
    [ 
     depth1(E, Depth) ||
         E <- List
    ].

depth_fun(infinity = _Depth) ->
    fun(E) ->
           E
    end;
depth_fun(Depth) ->
    fun(E) ->
           depth1(E, Depth)
    end.

depth1([] = L, _D) ->
    L;
depth1(_Term, 0) ->
    '...';
depth1(Tuple, D) when is_tuple(Tuple) ->
    depth_tuple(Tuple, tuple_size(Tuple), 1, D - 1, []);
depth1(List, D) when is_list(List) ->
    if
        D =:= 1 ->
            ['...'];
        true ->
            depth_list(List, D - 1)
    end;
depth1(Binary, D) when byte_size(Binary) > D - 1 ->
    D1 = D - 1,
    <<Bin:D1/bytes,_/bytes>> = Binary,
    <<Bin/bytes,"...">>;
depth1(T, _Depth) ->
    T.

depth_list([] = L, _D) ->
    L;
depth_list(_L, 0) ->
    '...';
depth_list([E | Es], D) ->
    [depth1(E, D) | depth_list(Es, D - 1)].

depth_tuple(_Tuple, Sz, I, _D, L) when I > Sz ->
    list_to_tuple(lists:reverse(L));
depth_tuple(_L, _Sz, _I, 0, L) ->
    list_to_tuple(lists:reverse(L, ['...']));
depth_tuple(Tuple, Sz, I, D, L) ->
    E = depth1(element(I, Tuple), D),
    depth_tuple(Tuple, Sz, I + 1, D - 1, [E | L]).

abstract_term(Term) ->
    abstract_term(Term, 0).

abstract_term(Term, Line) ->
    abstr_term(Term, anno(Line)).

abstr_term(Tuple, Anno) when is_tuple(Tuple) ->
    {tuple, Anno,
     [ 
      abstr_term(E, Anno) ||
          E <- tuple_to_list(Tuple)
     ]};
abstr_term([_ | _] = L, Anno) ->
    case io_lib:char_list(L) of
        true ->
            erl_parse:abstract(L, erl_anno:line(Anno));
        false ->
            abstr_list(L, Anno)
    end;
abstr_term(Fun, Anno) when is_function(Fun) ->
    case erl_eval:fun_data(Fun) of
        {fun_data, _Bs, Cs} ->
            {'fun', Anno, {clauses, Cs}};
        {named_fun_data, _Bs, Name, Cs} ->
            {named_fun, Anno, Name, Cs};
        false ->
            {name, Name} = erlang:fun_info(Fun, name),
            {arity, Arity} = erlang:fun_info(Fun, arity),
            case erlang:fun_info(Fun, type) of
                {type, external} ->
                    {module, Module} = erlang:fun_info(Fun, module),
                    {'fun', Anno,
                     {function,
                      {atom, Anno, Module},
                      {atom, Anno, Name},
                      {integer, Anno, Arity}}};
                {type, local} ->
                    {'fun', Anno, {function, Name, Arity}}
            end
    end;
abstr_term(PPR, Anno) when is_pid(PPR); is_port(PPR); is_reference(PPR) ->
    {special, Anno, lists:flatten(io_lib:write(PPR))};
abstr_term(Map, Anno) when is_map(Map) ->
    {map, Anno,
     [ 
      {map_field_assoc, Anno, abstr_term(K, Anno), abstr_term(V, Anno)} ||
          K := V <- Map
     ]};
abstr_term(Simple, Anno) ->
    erl_parse:abstract(Simple, erl_anno:line(Anno)).

abstr_list([H | T], Anno) ->
    {cons, Anno, abstr_term(H, Anno), abstr_list(T, Anno)};
abstr_list(T, Anno) ->
    abstr_term(T, Anno).

flatten_abstr({call, A1,
               {remote, A2, {atom, A3, qlc}, {atom, A4, q}},
               [LC0 | Os]},
              VN0, Vars, Body0) ->
    {lc, Anno, E, Qs0} = LC0,
    F = fun({generate, AnnoG, P, LE0}, {VN1, Body1}) ->
               {VN2, Body2, LE} = flatten_abstr(LE0, VN1, Vars, Body1),
               {{generate, AnnoG, P, LE}, {VN2, Body2}};
           (Fil, VN_Body) ->
               {Fil, VN_Body}
        end,
    {Qs, {VN3, Body}} = lists:mapfoldl(F, {VN0, Body0}, Qs0),
    LC = {lc, Anno, E, Qs},
    {V, VN} = aux_name1('V', VN3, Vars),
    Var = {var, A1, V},
    QLC =
        {call, A1,
         {remote, A2, {atom, A3, qlc}, {atom, A4, q}},
         [LC | Os]},
    {VN + 1, [{match, A1, Var, QLC} | Body], Var};
flatten_abstr(T0, VN0, Vars, Body0) when is_tuple(T0) ->
    {VN, Body, L} = flatten_abstr(tuple_to_list(T0), VN0, Vars, Body0),
    {VN, Body, list_to_tuple(L)};
flatten_abstr([E0 | Es0], VN0, Vars, Body0) ->
    {VN1, Body1, E} = flatten_abstr(E0, VN0, Vars, Body0),
    {VN, Body, Es} = flatten_abstr(Es0, VN1, Vars, Body1),
    {VN, Body, [E | Es]};
flatten_abstr(E, VN, _Vars, Body) ->
    {VN, Body, E}.

abstract_vars(Abstract) ->
    gb_sets:from_list(ordsets:to_list(vars(Abstract))).

collect([] = L) ->
    L;
collect([Answer | Cont]) ->
    [Answer | collect(Cont)];
collect(Cont) ->
    case Cont() of
        Answers when is_list(Answers) ->
            collect(Answers);
        Term ->
            throw_error(Term)
    end.

fold_loop(Fun, [Obj | Cont], Acc) ->
    fold_loop(Fun, Cont, Fun(Obj, Acc));
fold_loop(_Fun, [], Acc) ->
    Acc;
fold_loop(Fun, Cont, Acc) ->
    case Cont() of
        Objects when is_list(Objects) ->
            fold_loop(Fun, Objects, Acc);
        Term ->
            Term
    end.

next_loop(Pid, L, N) when N =/= 0 ->
    case monitor_request(Pid, more) of
        no_more ->
            lists:reverse(L);
        {answer, Answer} ->
            next_loop(Pid, [Answer | L], N - 1);
        {caught, throw, Error, [{qlc, throw_error, _, _} | _]} ->
            Error;
        {caught, Class, Reason, Stacktrace} ->
            {current_stacktrace, CurrentStacktrace} =
                process_info(self(), current_stacktrace),
            erlang:raise(Class, Reason, Stacktrace ++ CurrentStacktrace);
        error ->
            error({qlc_cursor_pid_no_longer_exists, Pid})
    end;
next_loop(_Pid, L, _N) ->
    lists:reverse(L).

stop_cursor(Pid) ->
    monitor(process, Pid),
    unlink(Pid),
    receive
        {'EXIT', Pid, _Reason} ->
            receive
                {'DOWN', _, process, Pid, _} ->
                    ok
            end
    after
        0 ->
            Pid ! {self(), stop},
            receive
                {'DOWN', _, process, Pid, _} ->
                    ok
            end
    end.

monitor_request(Pid, Req) ->
    Ref = monitor(process, Pid),
    Pid ! {self(), Req},
    receive
        {'DOWN', Ref, process, Pid, _Info} ->
            receive
                {'EXIT', Pid, _Reason} ->
                    ok
            after
                1 -> ok
            end,
            error;
        {'EXIT', Pid, _Reason} ->
            receive
                {'DOWN', _, process, Pid, _} ->
                    error
            end;
        {Pid, Reply} ->
            demonitor(Ref, [flush]),
            Reply
    end.

-record(join,{op, q1, q2, wh1, wh2, cs_fun}).

le_info({prepared,
         {simple_qlc, P, LE, Anno, _, Optz},
         _, _, _, _, _, _, _, _},
        InfOpt) ->
    QVar = term_to_binary({var, Anno, P}),
    {qlc, QVar, [{generate, QVar, le_info(LE, InfOpt)}], opt_info(Optz)};
le_info({prepared,
         {qlc, _, CodeF, Qdata, _, Optz},
         _, _, _, _, _, _, _, _},
        InfOpt) ->
    Code = CodeF(),
    TemplateState = template_state(),
    E = element(TemplateState, Code),
    QualInfo0 = qual_info(Qdata, Code, InfOpt),
    QualInfo1 =
        case
            case Optz of
                {optz, _, _, _, REC4, _} ->
                    REC4;
                REC4 ->
                    error({badrecord, REC4})
            end
        of
            {qlc_join, _, _, _, _, _, _, _, _} = Join ->
                join_info(Join, QualInfo0, Qdata, Code);
            no ->
                QualInfo0
        end,
    QualInfo =
        [ 
         I ||
             I <- QualInfo1,
             I =/= skip
        ],
    {qlc, E, QualInfo, opt_info(Optz)};
le_info({prepared,
         {qlc_table, _, TravMS, _, _, _, FormatFun, _, _, _, LuVals, MS},
         _, _, _, _, _, _, _, _},
        InfOpt) ->
    {NElements, Depth} = InfOpt,
    DepthFun = depth_fun(Depth),
    case LuVals of
        _ when FormatFun =:= undefined ->
            {table, {'$MOD', '$FUN', []}};
        {Pos, Vals} ->
            Formated =
                try
                    FormatFun({lookup, Pos, Vals, NElements, DepthFun})
                catch
                    _:_ ->
                        FormatFun({lookup, Pos, Vals})
                end,
            if
                MS =:= no_match_spec ->
                    {table, Formated};
                true ->
                    {list, {table, Formated}, depth(MS, Depth)}
            end;
        _ when TravMS, is_list(MS) ->
            {table, FormatFun({match_spec, depth(MS, Depth)})};
        _ when MS =:= no_match_spec ->
            try
                {table, FormatFun({all, NElements, DepthFun})}
            catch
                _:_ ->
                    {table, FormatFun(all)}
            end
    end;
le_info({prepared, {qlc_append, HL}, _, _, _, _, _, _, _, _}, InfOpt) ->
    {append,
     [ 
      le_info(H, InfOpt) ||
          H <- HL
     ]};
le_info({prepared,
         {qlc_sort, H, sort, _, _, _, SortOptions0, _, TmpDir},
         _, _, _, _, _, _, _, _},
        InfOpt) ->
    SortOptions = sort_options_global_tmp(SortOptions0, TmpDir),
    {sort, le_info(H, InfOpt), SortOptions};
le_info({prepared,
         {qlc_sort, H, {keysort, Kp}, _, _, _, SortOptions0, _, TmpDir},
         _, _, _, _, _, _, _, _},
        InfOpt) ->
    SortOptions = sort_options_global_tmp(SortOptions0, TmpDir),
    {keysort, le_info(H, InfOpt), Kp, SortOptions};
le_info({prepared, {qlc_list, L, no_match_spec}, _, _, _, _, _, _, _, _},
        _InfOpt) ->
    {list, L};
le_info({prepared, {qlc_list, L, MS}, _, _, _, _, _, _, _, _}, _InfOpt)
    when is_list(L) ->
    {list, {list, L}, MS};
le_info({prepared, {qlc_list, L, MS}, _, _, _, _, _, _, _, _}, InfOpt) ->
    {list, le_info(L, InfOpt), MS}.

qual_info([{_QNum, _GoI, -1, fil} | Qdata], Code, InfOpt) ->
    [skip | qual_info(Qdata, Code, InfOpt)];
qual_info([{QNum, _GoI, _SI, fil} | Qdata], Code, InfOpt) ->
    [element(QNum + 1, Code) | qual_info(Qdata, Code, InfOpt)];
qual_info([{_QNum, _GoI, _SI, {gen, {join, _, _, _, _, _, _}}} | Qdata],
          Code, InfOpt) ->
    [skip | qual_info(Qdata, Code, InfOpt)];
qual_info([{QNum, _GoI, _SI, {gen, LE}} | Qdata], Code, InfOpt) ->
    [{generate, element(QNum + 1, Code), le_info(LE, InfOpt)} |
     qual_info(Qdata, Code, InfOpt)];
qual_info([], _Code, _InfOpt) ->
    [].

join_info(Join, QInfo, Qdata, Code) ->
    {qlc_join, Kind, Opt, _, QNum1a, C1, _, QNum2a, C2} = Join,
    {{JQNum, _, _, _}, Rev, QNum1, QNum2, _WH1, _WH2, CsFun} =
        find_join_data(Qdata, QNum1a, QNum2a),
    {Cs1_0, Cs2_0, Compat} = CsFun(),
    [Cs1, Cs2] =
        case Compat of
            [] ->
                [ 
                 [ 
                  {C,
                   [ 
                    {V, '=:='} ||
                        V <- Vs
                   ]} ||
                      {C, Vs} <- CVs
                 ] ||
                     CVs <- [Cs1_0, Cs2_0]
                ];
            _ ->
                [Cs1_0, Cs2_0]
        end,
    Anno = anno0(),
    G1_0 = {var, Anno, 'G1'},
    G2_0 = {var, Anno, 'G2'},
    JP = element(JQNum + 1, Code),
    {{I1, G1}, {I2, G2}, QInfoL} =
        case Kind of
            {merge, _} ->
                {JG1, QInfo1} =
                    join_merge_info(QNum1, QInfo, Code, G1_0, Cs1),
                {JG2, QInfo2} =
                    join_merge_info(QNum2, QInfo, Code, G2_0, Cs2),
                {JG1, JG2, QInfo1 ++ QInfo2};
            _ when Rev ->
                {JG2, QInfo2} =
                    join_merge_info(QNum2, QInfo, Code, G2_0, Cs2),
                {J1, QInfo1} = join_lookup_info(QNum1, QInfo, G1_0),
                {{J1, G1_0}, JG2, QInfo2 ++ [QInfo1]};
            _ ->
                {JG1, QInfo1} =
                    join_merge_info(QNum1, QInfo, Code, G1_0, Cs1),
                {J2, QInfo2} = join_lookup_info(QNum2, QInfo, G2_0),
                {JG1, {J2, G2_0}, QInfo1 ++ [QInfo2]}
        end,
    {JOptVal, JOp} = kind2op(Kind),
    JOpt = [{join, JOptVal}] ++ opt_info(join_unique_cache(Opt)),
    JFil =
        term_to_binary({op, Anno, JOp,
                        {call, Anno,
                         {atom, Anno, element},
                         [{integer, Anno, C1}, G1]},
                        {call, Anno,
                         {atom, Anno, element},
                         [{integer, Anno, C2}, G2]}}),
    P = term_to_binary({cons, Anno, G1, G2}),
    JInfo = {generate, JP, {qlc, P, QInfoL ++ [JFil], JOpt}},
    {Before, [I1 | After]} = lists:split(QNum1 - 1, QInfo),
    Before ++ [JInfo] ++ lists:delete(I2, After).

kind2op({merge, _KE}) ->
    {merge, '=='};
kind2op({lookup, KE, _LU_fun}) ->
    {lookup, KE}.

join_merge_info(QNum, QInfo, Code, G, ExtraConstants) ->
    {generate, _, LEInfo} = I = lists:nth(QNum, QInfo),
    P = binary_to_term(element(QNum + 1, Code)),
    case {P, ExtraConstants} of
        {{var, _, _}, []} ->
            TP = term_to_binary(G),
            I2 = {generate, TP, LEInfo},
            {{I, G}, [I2]};
        _ ->
            {EPV, M} =
                case P of
                    {var, _, _} ->
                        {P, P};
                    _ ->
                        {PV, _} = aux_name1('P', 0, abstract_vars(P)),
                        Anno = anno0(),
                        V = {var, Anno, PV},
                        {V, {match, Anno, V, P}}
                end,
            DQP = term_to_binary(EPV),
            LEI = {generate, term_to_binary(M), LEInfo},
            TP = term_to_binary(G),
            CFs =
                [ 
                 begin
                     A = anno0(),
                     Call =
                         {call, A,
                          {atom, A, element},
                          [{integer, A, Col}, EPV]},
                     F = list2op([ 
                                  {op, A, Op, abstract_term(Con), Call} ||
                                      {Con, Op} <- ConstOps
                                 ],
                                 'or', A),
                     term_to_binary(F)
                 end ||
                     {Col, ConstOps} <- ExtraConstants
                ],
            {{I, G}, [{generate, TP, {qlc, DQP, [LEI | CFs], []}}]}
    end.

list2op([E], _Op, _Anno) ->
    E;
list2op([E | Es], Op, Anno) ->
    {op, Anno, Op, E, list2op(Es, Op, Anno)}.

join_lookup_info(QNum, QInfo, G) ->
    {generate, _, LEInfo} = I = lists:nth(QNum, QInfo),
    TP = term_to_binary(G),
    {I, {generate, TP, LEInfo}}.

opt_info({optz, Unique, Cache0, JoinOption, _, _}) ->
    Cache =
        if
            Cache0 ->
                ets;
            true ->
                Cache0
        end,
    [ 
     {T, V} ||
         {T, V} <- [{cache, Cache}, {unique, Unique}],
         V =/= default_option(T)
    ]
    ++
    [ 
     {T, V} ||
         {T, V} <- [{join, JoinOption}],
         V =:= nested_loop
    ].

prepare_qlc(H, InitialValue, GUnique, GCache, TmpDir, MaxList, TmpUsage) ->
    GOpt =
        {qlc_opt, GUnique, GCache,
         -1,
         any, TmpDir, any, MaxList, TmpUsage},
    case opt_le(prep_le(H, GOpt), 1) of
        {prepared, {qlc, _, _, _, _, _} = QLC, _, _, _, _, _, _, _, _} =
            Prep ->
            begin
                REC5 =
                    begin
                        REC7 = QLC,
                        case REC7 of
                            {qlc, _, _, _, _, _} ->
                                setelement(5, REC7, InitialValue);
                            _ ->
                                error({badrecord, REC7})
                        end
                    end,
                REC6 = Prep,
                case REC6 of
                    {prepared, _, _, _, _, _, _, _, _, _} ->
                        setelement(2, REC6, REC5);
                    _ ->
                        error({badrecord, REC6})
                end
            end;
        {prepared,
         {simple_qlc, _, _, _, _, _} = SimpleQLC,
         _, _, _, _, _, _, _, _} =
            Prep ->
            begin
                REC8 =
                    begin
                        REC10 = SimpleQLC,
                        case REC10 of
                            {simple_qlc, _, _, _, _, _} ->
                                setelement(5, REC10, InitialValue);
                            _ ->
                                error({badrecord, REC10})
                        end
                    end,
                REC9 = Prep,
                case REC9 of
                    {prepared, _, _, _, _, _, _, _, _, _} ->
                        setelement(2, REC9, REC8);
                    _ ->
                        error({badrecord, REC9})
                end
            end;
        Prep ->
            Prep
    end.

prep_le({qlc_lc, LC_fun, {qlc_opt, _, _, _, _, _, _, _, _} = Opt0} = H,
        GOpt) ->
    {qlc_opt, GUnique, GCache, _, _, TmpDir, _, MaxList, TmpUsage} =
        GOpt,
    Unique =
        case Opt0 of
            {qlc_opt, REC11, _, _, _, _, _, _, _} ->
                REC11;
            REC11 ->
                error({badrecord, REC11})
        end
        or
        GUnique,
    Cache =
        if
            not GCache ->
                case Opt0 of
                    {qlc_opt, _, REC12, _, _, _, _, _, _} ->
                        REC12;
                    REC12 ->
                        error({badrecord, REC12})
                end;
            true ->
                GCache
        end,
    Opt =
        begin
            REC13 = Opt0,
            case REC13 of
                {qlc_opt, _, _, _, _, _, _, _, _} ->
                    setelement(2,
                               setelement(3,
                                          setelement(6,
                                                     setelement(8,
                                                                setelement(9,
                                                                           REC13,
                                                                           TmpUsage),
                                                                MaxList),
                                                     TmpDir),
                                          Cache),
                               Unique);
                _ ->
                    error({badrecord, REC13})
            end
        end,
    prep_qlc_lc(LC_fun(), Opt, GOpt, H);
prep_le({qlc_table, _, _, _, _, IF, _, _, _, _, _, _} = T, GOpt) ->
    {SortInfo, Sorted} = table_sort_info(T),
    IsUnique = grd(IF, is_unique_objects),
    Prep =
        {prepared, T, Sorted, SortInfo, [], [],
         {[], []},
         undefined, IsUnique, false},
    Opt =
        if
            IsUnique
            or
            not ((is_record(GOpt, qlc_opt, 9)
                  orelse
                  fail)
                 and
                 element(2, GOpt)),
            (is_record(T, qlc_table, 12)
             orelse
             fail)
            and
            (element(12, T) =:= no_match_spec) ->
                begin
                    REC14 = GOpt,
                    case REC14 of
                        {qlc_opt, _, _, _, _, _, _, _, _} ->
                            setelement(3, REC14, false);
                        _ ->
                            error({badrecord, REC14})
                    end
                end;
            true ->
                GOpt
        end,
    may_create_simple(Opt, Prep);
prep_le({qlc_append, HL}, GOpt) ->
    case
        lists:flatmap(fun({prepared,
                           {qlc_list, [], _},
                           _, _, _, _, _, _, _, _}) ->
                             [];
                         ({prepared,
                           {qlc_append, HL1},
                           _, _, _, _, _, _, _, _}) ->
                             HL1;
                         (H) ->
                             [H]
                      end,
                      [ 
                       prep_le(H, GOpt) ||
                           H <- HL
                      ])
    of
        [] = Nil ->
            short_list(Nil);
        [Prep] ->
            Prep;
        PrepL ->
            Cache =
                lists:all(fun({prepared, _, _, _, _, _, _, _, _, IsC}) ->
                                 IsC =/= false
                          end,
                          PrepL),
            Prep =
                {prepared,
                 {qlc_append, PrepL},
                 no, [], [], [],
                 {[], []},
                 undefined, false, Cache},
            may_create_simple(GOpt, Prep)
    end;
prep_le({qlc_sort, H0, _, _, _, _, _, _, _} = Q0, GOpt) ->
    Q = begin
            REC15 = prep_le(H0, GOpt),
            REC16 = Q0,
            case REC16 of
                {qlc_sort, _, _, _, _, _, _, _, _} ->
                    setelement(2, REC16, REC15);
                _ ->
                    error({badrecord, REC16})
            end
        end,
    prep_sort(Q, GOpt);
prep_le([_, _ | _] = L, GOpt) ->
    Prep =
        {prepared,
         {qlc_list, L, no_match_spec},
         no, [], [], [],
         {[], []},
         undefined, false, true},
    Opt =
        if
            not ((is_record(GOpt, qlc_opt, 9)
                  orelse
                  fail)
                 and
                 element(2, GOpt)) ->
                begin
                    REC17 = GOpt,
                    case REC17 of
                        {qlc_opt, _, _, _, _, _, _, _, _} ->
                            setelement(3, REC17, false);
                        _ ->
                            error({badrecord, REC17})
                    end
                end;
            true ->
                GOpt
        end,
    may_create_simple(Opt, Prep);
prep_le(L, _GOpt) when is_list(L) ->
    short_list(L);
prep_le(T, _GOpt) ->
    error({unsupported_qlc_handle, {qlc_handle, T}}).

eval_le(LE_fun, GOpt) ->
    case LE_fun() of
        {error, qlc, _} = Error ->
            throw_error(Error);
        R ->
            case get_handle(R) of
                badarg ->
                    error(badarg, [R]);
                H ->
                    prep_le(H, GOpt)
            end
    end.

prep_qlc_lc({simple_v1, PVar, LE_fun, L}, Opt, GOpt, _H) ->
    check_lookup_option(Opt, false),
    prep_simple_qlc(PVar, anno(L), eval_le(LE_fun, GOpt), Opt);
prep_qlc_lc({qlc_v1, QFun, CodeF, Qdata0, QOpt}, Opt, GOpt, _H) ->
    F = fun({_QNum, _GoI, _SI, fil} = QualData, ModGens) ->
               {QualData, ModGens};
           ({_QNum, _GoI, _SI, {gen, {join, _, _, _, _, _, _}}} =
                QualData,
            ModGens) ->
               {QualData, ModGens};
           ({QNum, GoI, SI, {gen, LE_fun}}, ModGens0) ->
               Prep1 = eval_le(LE_fun, GOpt),
               {Prep, ModGens} =
                   prep_generator(QNum, Prep1, QOpt, Opt, ModGens0),
               {{QNum, GoI, SI, {gen, Prep}}, ModGens}
        end,
    {Qdata, ModGens} = lists:mapfoldl(F, [], Qdata0),
    SomeLookUp = lists:keymember(true, 2, ModGens),
    check_lookup_option(Opt, SomeLookUp),
    case ModGens of
        [{_QNum, _LookUp, all, OnePrep}] ->
            check_join_option(Opt),
            OnePrep;
        _ ->
            Prep0 = prep_qlc(QFun, CodeF, Qdata, QOpt, Opt),
            LU_SkipQuals =
                lists:flatmap(fun({QNum, _LookUp, Fs, _Prep}) ->
                                     [{QNum, Fs}]
                              end,
                              ModGens),
            Prep1 =
                begin
                    REC18 = Prep0,
                    case REC18 of
                        {prepared, _, _, _, _, _, _, _, _, _} ->
                            setelement(6, REC18, LU_SkipQuals);
                        _ ->
                            error({badrecord, REC18})
                    end
                end,
            prep_join(Prep1, QOpt, Opt)
    end;
prep_qlc_lc(_, _Opt, _GOpt, H) ->
    error({unsupported_qlc_handle, {qlc_handle, H}}).

prep_generator(QNum, Prep0, QOpt, Opt, ModGens) ->
    PosFun =
        fun(KeyEquality) ->
               pos_fun(KeyEquality, QOpt, QNum)
        end,
    MSFs =
        case match_specs(QOpt, QNum) of
            undefined ->
                {no_match_spec, []};
            {_, _} = MSFs0 ->
                MSFs0
        end,
    {prepared, LE, _, _, _, _, _, _, _, _} = Prep0,
    case prep_gen(LE, Prep0, PosFun, MSFs, Opt) of
        {replace, Fs, LookUp, Prep} ->
            {Prep, [{QNum, LookUp, Fs, Prep} | ModGens]};
        {skip, SkipFils, LookUp, Prep} ->
            {Prep, [{QNum, LookUp, SkipFils, Prep} | ModGens]};
        {no, _Fs, _LookUp, Prep} ->
            {Prep, ModGens}
    end.

pos_fun(undefined, QOpt, QNum) ->
    {'=:=', constants(QOpt, QNum)};
pos_fun('=:=', QOpt, QNum) ->
    {'=:=', constants(QOpt, QNum)};
pos_fun('==', QOpt, QNum) ->
    try
        {'==', equal_constants(QOpt, QNum)}
    catch
        _:_ ->
            {'=:=', constants(QOpt, QNum)}
    end.

prep_gen({qlc_table, _, TravMS, _, _, IF, _, LU_fun, _, KeyEquality,
          LuV0, MS0} =
             LE0,
         Prep0, PosFun0,
         {MS, Fs},
         Opt) ->
    PosFun = PosFun0(KeyEquality),
    {LuV, {STag, SkipFils}} =
        find_const_positions(IF, LU_fun, PosFun, Opt),
    LU = LuV =/= false,
    if
        LuV0 =/= undefined;MS0 =/= no_match_spec ->
            {no, [], false, Prep0};
        MS =/= no_match_spec, LU ->
            MS1 =
                if
                    Fs =:= SkipFils;STag =:= Fs ->
                        case MS of
                            [{'$1', _Guard, ['$1']}] ->
                                no_match_spec;
                            [{Head, _Guard, Body}] ->
                                [{Head, [], Body}]
                        end;
                    true ->
                        MS
                end,
            Prep =
                begin
                    REC19 =
                        begin
                            REC21 = LE0,
                            case REC21 of
                                {qlc_table, _, _, _, _, _, _, _, _, _,
                                 _, _} ->
                                    setelement(11,
                                               setelement(12, REC21,
                                                          MS1),
                                               LuV);
                                _ ->
                                    error({badrecord, REC21})
                            end
                        end,
                    REC20 = Prep0,
                    case REC20 of
                        {prepared, _, _, _, _, _, _, _, _, _} ->
                            setelement(2, REC20, REC19);
                        _ ->
                            error({badrecord, REC20})
                    end
                end,
            {replace, Fs, LU, Prep};
        LU ->
            Prep =
                begin
                    REC22 =
                        begin
                            REC24 = LE0,
                            case REC24 of
                                {qlc_table, _, _, _, _, _, _, _, _, _,
                                 _, _} ->
                                    setelement(11, REC24, LuV);
                                _ ->
                                    error({badrecord, REC24})
                            end
                        end,
                    REC23 = Prep0,
                    case REC23 of
                        {prepared, _, _, _, _, _, _, _, _, _} ->
                            setelement(2, REC23, REC22);
                        _ ->
                            error({badrecord, REC23})
                    end
                end,
            {skip, SkipFils, LU, Prep};
        TravMS, MS =/= no_match_spec ->
            Prep =
                begin
                    REC25 =
                        begin
                            REC27 = LE0,
                            case REC27 of
                                {qlc_table, _, _, _, _, _, _, _, _, _,
                                 _, _} ->
                                    setelement(12, REC27, MS);
                                _ ->
                                    error({badrecord, REC27})
                            end
                        end,
                    REC26 = Prep0,
                    case REC26 of
                        {prepared, _, _, _, _, _, _, _, _, _} ->
                            setelement(2,
                                       setelement(9, REC26, false),
                                       REC25);
                        _ ->
                            error({badrecord, REC26})
                    end
                end,
            {replace, Fs, false, may_create_simple(Opt, Prep)};
        true ->
            {no, [], false, Prep0}
    end;
prep_gen({qlc_list, [], _}, Prep0, _PosFun, {_MS, Fs}, _Opt) ->
    {replace, Fs, false, Prep0};
prep_gen({qlc_list, _, no_match_spec} = LE0,
         Prep0, _PosFun,
         {MS, Fs},
         Opt)
    when MS =/= no_match_spec ->
    Prep =
        begin
            REC28 =
                begin
                    REC30 = LE0,
                    case REC30 of
                        {qlc_list, _, _} ->
                            setelement(3, REC30, MS);
                        _ ->
                            error({badrecord, REC30})
                    end
                end,
            REC29 = Prep0,
            case REC29 of
                {prepared, _, _, _, _, _, _, _, _, _} ->
                    setelement(2, setelement(10, REC29, false), REC28);
                _ ->
                    error({badrecord, REC29})
            end
        end,
    {replace, Fs, false, may_create_simple(Opt, Prep)};
prep_gen({qlc_list, _, _}, Prep0, _PosFun, {MS, Fs}, Opt)
    when MS =/= no_match_spec ->
    ListMS = {qlc_list, Prep0, MS},
    LE =
        {prepared, ListMS, no, [], [], [],
         {[], []},
         undefined, false, false},
    {replace, Fs, false, may_create_simple(Opt, LE)};
prep_gen(_LE0, Prep0, _PosFun, _MSFs, _Opt) ->
    {no, [], false, Prep0}.

may_create_simple({qlc_opt, Unique, Cache, _, _, _, _, _, _} = Opt,
                  {prepared, _, _, _, _, _, _, _, IsUnique, IsCached} =
                      Prep) ->
    if
        Unique and not IsUnique;(Cache =/= false) and not IsCached ->
            prep_simple_qlc('SQV', anno(1), Prep, Opt);
        true ->
            Prep
    end.

prep_simple_qlc(PVar, Anno, LE, Opt) ->
    check_join_option(Opt),
    {prepared, _, Sorted, SortInfo, _, _, _, _, IsUnique, IsCached} = LE,
    {qlc_opt, Unique, Cache, _, _, _, _, _, _} = Opt,
    Cachez =
        if
            Unique ->
                Cache;
            not IsCached ->
                Cache;
            true ->
                false
        end,
    Optz = {optz, Unique and not IsUnique, Cachez, any, no, Opt},
    QLC = {simple_qlc, PVar, LE, Anno, not_a_list, Optz},
    {prepared, QLC, Sorted, SortInfo, [], [],
     {[], []},
     undefined,
     IsUnique or Unique,
     IsCached or (Cachez =/= false)}.

prep_sort({qlc_sort,
           {prepared, _, yes, _, _, _, _, _, _, _} = Prep,
           _, _, _, _, _, _, _},
          _GOpt) ->
    Prep;
prep_sort({qlc_sort,
           {prepared, _, _, _, _, _, _, _, IsUniqueObjs, _},
           _, _, _, _, _, _, _} =
              Q,
          GOpt) ->
    S1 = sort_unique(IsUniqueObjs, Q),
    S2 = sort_tmpdir(S1, GOpt),
    S = begin
            REC31 =
                case GOpt of
                    {qlc_opt, _, _, _, _, _, _, _, REC33} ->
                        REC33;
                    REC33 ->
                        error({badrecord, REC33})
                end,
            REC32 = S2,
            case REC32 of
                {qlc_sort, _, _, _, _, _, _, _, _} ->
                    setelement(8, REC32, REC31);
                _ ->
                    error({badrecord, REC32})
            end
        end,
    {SortInfo, Sorted} = sort_sort_info(S),
    {prepared, S, Sorted, SortInfo, [], [],
     {[], []},
     undefined,
     case S of
         {qlc_sort, _, _, REC34, _, _, _, _, _} ->
             REC34;
         REC34 ->
             error({badrecord, REC34})
     end
     or
     IsUniqueObjs,
     true}.

prep_qlc(QFun, CodeF, Qdata0, QOpt, Opt) ->
    {qlc_opt, Unique, Cache, _, Join, _, _, _, _} = Opt,
    Optz = {optz, Unique, Cache, Join, no, Opt},
    {Qdata, SortInfo} = qlc_sort_info(Qdata0, QOpt),
    QLC = {qlc, QFun, CodeF, Qdata, not_a_list, Optz},
    {prepared, QLC, no, SortInfo, [], [],
     {[], []},
     undefined, Unique,
     Cache =/= false}.

qlc_sort_info(Qdata0, QOpt) ->
    F = fun({_QNum, _GoI, _SI, fil} = Qd, Info) ->
               {Qd, Info};
           ({_QNum, _GoI, _SI, {gen, {join, _, _, _, _, _, _}}} = Qd,
            Info) ->
               {Qd, Info};
           ({QNum, GoI, SI, {gen, PrepLE0}}, Info) ->
               PrepLE = sort_info(PrepLE0, QNum, QOpt),
               Qd = {QNum, GoI, SI, {gen, PrepLE}},
               I = [ 
                    {{Column, Order}, [{traverse, QNum, C}]} ||
                        {{C, Order}, What} <-
                            case PrepLE of
                                {prepared, _, _, _, REC35, _, _, _, _,
                                 _} ->
                                    REC35;
                                REC35 ->
                                    error({badrecord, REC35})
                            end,
                        What =:= [],
                        Column <-
                            equal_template_columns(QOpt, {QNum, C})
                   ],
               {Qd, [I | Info]}
        end,
    {Qdata, SortInfoL} = lists:mapfoldl(F, [], Qdata0),
    SortInfo0 =
        [ 
         {{Pos, Ord}, [template]} ||
             Pos <- constant_columns(QOpt, 0),
             Ord <- orders(yes)
        ]
        ++
        lists:append(SortInfoL),
    SortInfo = family_union(SortInfo0),
    {Qdata, SortInfo}.

sort_info({prepared, _, S, SI, _, _, _, _, _, _} = Prep, QNum, QOpt) ->
    SI1 =
        [ 
         {{C, Ord}, []} ||
             S =/= no,
             is_integer(Sz = size_of_qualifier(QOpt, QNum)),
             Sz > 0,
             (NConstCols = size_of_constant_prefix(QOpt, QNum)) < Sz,
             C <- [NConstCols + 1],
             Ord <- orders(S)
        ]
        ++
        [ 
         {{Pos, Ord}, []} ||
             Pos <- constant_columns(QOpt, QNum),
             Ord <- orders(yes)
        ]
        ++
        [ 
         {PosOrd, []} ||
             {PosOrd, _} <- SI
        ],
    SI2 = lists:usort(SI1),
    begin
        REC36 = Prep,
        case REC36 of
            {prepared, _, _, _, _, _, _, _, _, _} ->
                setelement(5, REC36, SI2);
            _ ->
                error({badrecord, REC36})
        end
    end.

orders(ascending = O) ->
    [O];
orders(yes) ->
    [ascending].

sort_unique(true,
            {qlc_sort, _, sort, _, _, _, SortOptions, _, _} = Sort) ->
    begin
        REC37 =
            lists:keydelete(unique, 1,
                            lists:delete(unique, SortOptions)),
        REC38 = Sort,
        case REC38 of
            {qlc_sort, _, _, _, _, _, _, _, _} ->
                setelement(4, setelement(7, REC38, REC37), false);
            _ ->
                error({badrecord, REC38})
        end
    end;
sort_unique(_, Sort) ->
    Sort.

sort_tmpdir(S, {qlc_opt, _, _, _, _, "", _, _, _}) ->
    S;
sort_tmpdir(S, Opt) ->
    begin
        REC39 =
            case Opt of
                {qlc_opt, _, _, _, _, REC41, _, _, _} ->
                    REC41;
                REC41 ->
                    error({badrecord, REC41})
            end,
        REC40 = S,
        case REC40 of
            {qlc_sort, _, _, _, _, _, _, _, _} ->
                setelement(9, REC40, REC39);
            _ ->
                error({badrecord, REC40})
        end
    end.

short_list(L) ->
    {prepared,
     {qlc_list, L, no_match_spec},
     yes, [], [], [],
     {[], []},
     undefined, true, true}.

find_const_positions(IF, LU_fun,
                     {KeyEquality, PosFun},
                     {qlc_opt, _, _, Max, _, _, Lookup, _, _})
    when
        is_function(LU_fun),
        is_function(PosFun),
        is_function(IF),
        Lookup =/= false ->
    case call(IF, keypos, undefined, []) of
        undefined ->
            Indices = call(IF, indices, undefined, []),
            find_const_position_idx(Indices, KeyEquality, PosFun, Max,
                                    []);
        KeyPos ->
            case pos_vals(KeyPos, KeyEquality, PosFun(KeyPos), Max) of
                false ->
                    find_const_position_idx(IF(indices),
                                            KeyEquality, PosFun, Max,
                                            []);
                PosValuesSkip ->
                    PosValuesSkip
            end
    end;
find_const_positions(_IF, _LU_fun, _KE_PosFun, _Opt0) ->
    {false, {some, []}}.

find_const_position_idx([I | Is], KeyEquality, PosFun, Max, L0) ->
    case pos_vals(I, KeyEquality, PosFun(I), Max) of
        false ->
            find_const_position_idx(Is, KeyEquality, PosFun, Max, L0);
        {{_Pos, Values}, _SkipFils} = PosValuesFils ->
            L = [{length(Values), PosValuesFils} | L0],
            find_const_position_idx(Is, KeyEquality, PosFun, Max, L)
    end;
find_const_position_idx(_, _KeyEquality, _PosFun, _Max, []) ->
    {false, {some, []}};
find_const_position_idx(_, _KeyEquality, _PosFun, _Max, L) ->
    [{_, PVF} | _] = lists:sort(L),
    PVF.

pos_vals(Pos, '==', {usort_needed, Values, SkipFils}, Max) ->
    pos_vals_max(Pos, lists:usort(Values), SkipFils, Max);
pos_vals(Pos, '=:=', {usort_needed, Values, SkipFils}, Max) ->
    pos_vals_max(Pos, lists:sort(nub(Values)), SkipFils, Max);
pos_vals(Pos, _KeyEquality, {values, Values, SkipFils}, Max) ->
    pos_vals_max(Pos, Values, SkipFils, Max);
pos_vals(_Pos, _KeyEquality, _T, _Max) ->
    false.

nub([]) ->
    [];
nub([E | L]) ->
    case lists:member(E, Es = nub(L)) of
        true ->
            Es;
        false ->
            [E | Es]
    end.

pos_vals_max(Pos, Values, Skip, Max)
    when Max =:= -1; Max >= length(Values) ->
    {{Pos, Values}, Skip};
pos_vals_max(_Pos, _Value, _Skip, _Max) ->
    false.

prep_join(Prep, QOpt, Opt) ->
    case join_opt(QOpt) of
        undefined ->
            check_join_option(Opt),
            Prep;
        EqualMatch ->
            {Ix, M} =
                case EqualMatch of
                    {NEqual, NMatch} ->
                        pref_join(NEqual, NMatch, Prep, QOpt, Opt);
                    EM ->
                        pref_join(EM, EM, Prep, QOpt, Opt)
                end,
            SI =
                family_union(case Prep of
                                 {prepared, _, _, REC42, _, _, _, _, _,
                                  _} ->
                                     REC42;
                                 REC42 ->
                                     error({badrecord, REC42})
                             end
                             ++
                             M),
            begin
                REC43 = {Ix, M},
                REC44 = Prep,
                case REC44 of
                    {prepared, _, _, _, _, _, _, _, _, _} ->
                        setelement(4, setelement(7, REC44, REC43), SI);
                    _ ->
                        error({badrecord, REC44})
                end
            end
    end.

pref_join(Equal, Match, Prep, QOpt,
          {qlc_opt, _, _, _, JoinOpt, _, _, _, _}) ->
    JQs =
        [ 
         {KeyEquality, QCs} ||
             {KeyEquality, QCsL} <- [{'==', Equal}, {'=:=', Match}],
             QCs <- QCsL
        ],
    IxL =
        [ 
         pref_lookup_join(KE, QCs, Prep, QOpt) ||
             JoinOpt =:= any
             orelse
             JoinOpt =:= lookup,
             {KE, QCs} <- JQs
        ],
    ML =
        [ 
         pref_merge_join(KE, QCs, Prep, QOpt) ||
             JoinOpt =:= any
             orelse
             JoinOpt =:= merge,
             {KE, QCs} <- JQs
        ],
    {lists:usort(lists:append(IxL)), lists:usort(lists:append(ML))}.

pref_lookup_join(KeyEquality, {[{Q1, C1}, {Q2, C2}], Skip}, Prep, QOpt)
    when is_integer(C1), is_integer(C2) ->
    {prepared, {qlc, _, _, QData, _, _}, _, _, _, _, _, _, _, _} = Prep,
    Is1 = lookup_qual_data(QData, Q1, KeyEquality),
    Lu2 =
        [ 
         pref_lookup_join2(Q2, C2, Q1, C1, Skip, QOpt, KeyEquality) ||
             IC1 <- Is1,
             IC1 =:= C1
        ],
    Is2 = lookup_qual_data(QData, Q2, KeyEquality),
    Lu1 =
        [ 
         pref_lookup_join2(Q1, C1, Q2, C2, Skip, QOpt, KeyEquality) ||
             IC2 <- Is2,
             IC2 =:= C2
        ],
    family(Lu1 ++ Lu2);
pref_lookup_join(KE, [{_, Cs1}, {_, Cs2}] = L, Prep, QOpt)
    when is_list(Cs1), is_list(Cs2) ->
    lists:append([ 
                  pref_lookup_join(KE, QC, Prep, QOpt) ||
                      QC <- selections_no_skip(L)
                 ]).

lookup_qual_data(QData, QNum, KeyEquality) ->
    case lists:keysearch(QNum, 1, QData) of
        {value, {QNum, _, _, {gen, PrepLE}}} ->
            join_indices(PrepLE, KeyEquality)
    end.

join_indices({prepared,
              {qlc_table, _, _, _, _, IF, _, LU_fun, _, KeyEquality,
               undefined, _},
              _, _, _, _, _, _, _, _},
             KE)
    when
        is_function(LU_fun),
        KE =:= KeyEquality
        orelse
        KE =:= '=:='
        andalso
        KeyEquality =:= undefined ->
    KpL =
        case call(IF, keypos, undefined, []) of
            undefined ->
                [];
            Kp ->
                [Kp]
        end,
    case call(IF, indices, undefined, []) of
        undefined ->
            KpL;
        Is0 ->
            lists:usort(KpL ++ Is0)
    end;
join_indices(_Prep, _KeyEquality) ->
    [].

pref_lookup_join2(Q1, C1, Q2, C2, Skip, QOpt, KeyEquality) ->
    TemplCols = compared_template_columns(QOpt, {Q1, C1}, KeyEquality),
    {{Q1, C1, Q2, C2}, {lookup_join, TemplCols, KeyEquality, Skip}}.

pref_merge_join(KE, {[{Q1, C1}, {Q2, C2}], Skip}, Prep, QOpt)
    when is_integer(C1), is_integer(C2) ->
    {prepared, {qlc, _, _, QData, _, _}, _, _, _, _, _, _, _, _} = Prep,
    Sort1 = merge_qual_data(QData, Q1),
    Sort2 = merge_qual_data(QData, Q2),
    Merge = pref_merge(KE, Q1, C1, Q2, C2, Skip, Sort1, Sort2, QOpt),
    family_union(Merge);
pref_merge_join(KE, [{_, Cs1}, {_, Cs2}] = L, Prep, QOpt)
    when is_list(Cs1), is_list(Cs2) ->
    lists:append([ 
                  pref_merge_join(KE, QC, Prep, QOpt) ||
                      QC <- selections_no_skip(L)
                 ]).

selections_no_skip(L) ->
    [ 
     {C, {some, []}} ||
         C <- all_selections(L)
    ].

merge_qual_data(QData, QNum) ->
    case lists:keysearch(QNum, 1, QData) of
        {value, {QNum, _, _, {gen, PrepLE}}} ->
            {prepared, _, _, _, SortInfo, _, _, _, _, _} = PrepLE,
            SortInfo
    end.

pref_merge(KE, Q1, C1, Q2, C2, Skip, Sort1, Sort2, QOpt) ->
    Col1 = {Q1, C1},
    Col2 = {Q2, C2},
    DoSort =
        [ 
         QC ||
             {{_QNum, Col} = QC, SortL} <-
                 [{Col1, Sort1}, {Col2, Sort2}],
             lists:keymember({Col, ascending}, 1, SortL) =:= false
        ],
    J = [{{Q1, C1, Q2, C2}, {merge_join, DoSort, KE, Skip}}],
    [ 
     {{Column, ascending}, J} ||
         Column <- equal_template_columns(QOpt, Col1)
    ]
    ++
    [{other, J}].

table_sort_info({qlc_table, _, _, _, _, IF, _, _, _, _, _, _}) ->
    case call(IF, is_sorted_key, undefined, []) of
        undefined ->
            {[], no};
        false ->
            {[], no};
        true ->
            case call(IF, keypos, undefined, []) of
                undefined ->
                    {[], no};
                KeyPos ->
                    {[{{KeyPos, ascending}, []}], no}
            end
    end.

sort_sort_info({qlc_sort, _, sort, _, _, Ord0, _, _, _}) ->
    {[], sort_order(Ord0)};
sort_sort_info({qlc_sort, _, {keysort, Kp0}, _, _, Ord0, _, _, _}) ->
    Kp =
        case Kp0 of
            [Pos | _] ->
                Pos;
            _ ->
                Kp0
        end,
    {[{{Kp, sort_order(Ord0)}, []}], no}.

sort_order(F) when is_function(F) ->
    no;
sort_order(Order) ->
    Order.

check_join_option({qlc_opt, _, _, _, any, _, _, _, _}) ->
    ok;
check_join_option({qlc_opt, _, _, _, Join, _, _, _, _}) ->
    error(no_join_to_carry_out, [{join, Join}]).

check_lookup_option({qlc_opt, _, _, _, _, _, true, _, _}, false) ->
    error(no_lookup_to_carry_out, [{lookup, true}]);
check_lookup_option(_QOpt, _LuV) ->
    ok.

compared_template_columns(QOpt, QNumColumn, KeyEquality) ->
    (QOpt(template))(QNumColumn, KeyEquality).

equal_template_columns(QOpt, QNumColumn) ->
    (QOpt(template))(QNumColumn, '==').

size_of_constant_prefix(QOpt, QNum) ->
    (QOpt(n_leading_constant_columns))(QNum).

constants(QOpt, QNum) ->
    (QOpt(constants))(QNum).

equal_constants(QOpt, QNum) ->
    (QOpt(equal_constants))(QNum).

join_opt(QOpt) ->
    QOpt(join).

match_specs(QOpt, QNum) ->
    (QOpt(match_specs))(QNum).

constant_columns(QOpt, QNum) ->
    (QOpt(constant_columns))(QNum).

size_of_qualifier(QOpt, QNum) ->
    (QOpt(size))(QNum).

opt_le({prepared,
        {simple_qlc, _, LE0, _, _, Optz0} = QLC,
        _, _, _, _, _, _, _, _} =
           Prep0,
       GenNum) ->
    case LE0 of
        {prepared,
         {simple_qlc, LE_Pvar, LE2, _, _, Optz2},
         _, _, _, _, _, _, _, _} ->
            Cachez =
                case
                    case Optz2 of
                        {optz, _, REC45, _, _, _} ->
                            REC45;
                        REC45 ->
                            error({badrecord, REC45})
                    end
                of
                    false ->
                        case Optz0 of
                            {optz, _, REC46, _, _, _} ->
                                REC46;
                            REC46 ->
                                error({badrecord, REC46})
                        end;
                    Cache2 ->
                        Cache2
                end,
            Optz =
                begin
                    REC47 =
                        case Optz0 of
                            {optz, REC49, _, _, _, _} ->
                                REC49;
                            REC49 ->
                                error({badrecord, REC49})
                        end
                        or
                        case Optz2 of
                            {optz, REC50, _, _, _, _} ->
                                REC50;
                            REC50 ->
                                error({badrecord, REC50})
                        end,
                    REC48 = Optz0,
                    case REC48 of
                        {optz, _, _, _, _, _} ->
                            setelement(2,
                                       setelement(3, REC48, Cachez),
                                       REC47);
                        _ ->
                            error({badrecord, REC48})
                    end
                end,
            PVar =
                if
                    LE_Pvar =:= 'SQV' ->
                        case QLC of
                            {simple_qlc, REC51, _, _, _, _} ->
                                REC51;
                            REC51 ->
                                error({badrecord, REC51})
                        end;
                    true ->
                        LE_Pvar
                end,
            Prep =
                begin
                    REC52 =
                        begin
                            REC54 = QLC,
                            case REC54 of
                                {simple_qlc, _, _, _, _, _} ->
                                    setelement(2,
                                               setelement(3,
                                                          setelement(6,
                                                                     REC54,
                                                                     Optz),
                                                          LE2),
                                               PVar);
                                _ ->
                                    error({badrecord, REC54})
                            end
                        end,
                    REC53 = Prep0,
                    case REC53 of
                        {prepared, _, _, _, _, _, _, _, _, _} ->
                            setelement(2, REC53, REC52);
                        _ ->
                            error({badrecord, REC53})
                    end
                end,
            opt_le(Prep, GenNum);
        _ ->
            Optz1 = no_cache_of_first_generator(Optz0, GenNum),
            case {opt_le(LE0, 1), Optz1} of
                {LE, {optz, false, false, _, _, _}} ->
                    LE;
                {LE, _} ->
                    begin
                        REC55 =
                            begin
                                REC57 = QLC,
                                case REC57 of
                                    {simple_qlc, _, _, _, _, _} ->
                                        setelement(3,
                                                   setelement(6, REC57,
                                                              Optz1),
                                                   LE);
                                    _ ->
                                        error({badrecord, REC57})
                                end
                            end,
                        REC56 = Prep0,
                        case REC56 of
                            {prepared, _, _, _, _, _, _, _, _, _} ->
                                setelement(2, REC56, REC55);
                            _ ->
                                error({badrecord, REC56})
                        end
                    end
            end
    end;
opt_le({prepared,
        {qlc, _, _, _, _, _},
        _, _, _, LU_SkipQuals0, _, _, _, _} =
           Prep0,
       GenNum) ->
    {prepared,
     {qlc, _, _, Qdata0, _, Optz0} = QLC,
     _, _, _, _, _, _, _, _} =
        Prep0,
    {optz, _, _, JoinOption, _, Opt} = Optz0,
    JoinOption =
        case Optz0 of
            {optz, _, _, REC58, _, _} ->
                REC58;
            REC58 ->
                error({badrecord, REC58})
        end,
    {LU_QNum, Join, JoinSkipFs, DoSort} =
        opt_join(case Prep0 of
                     {prepared, _, _, _, _, _, REC59, _, _, _} ->
                         REC59;
                     REC59 ->
                         error({badrecord, REC59})
                 end,
                 JoinOption, Qdata0, Opt, LU_SkipQuals0),
    {LU_Skip, LU_SkipQuals} =
        lists:partition(fun({QNum, _Fs}) ->
                               QNum =:= LU_QNum
                        end,
                        LU_SkipQuals0),
    LU_SkipFs =
        lists:flatmap(fun({_QNum, Fs}) ->
                             Fs
                      end,
                      LU_SkipQuals),
    Qdata1 =
        if
            LU_Skip =:= [] ->
                Qdata0;
            true ->
                activate_join_lookup_filter(LU_QNum, Qdata0)
        end,
    Qdata2 = skip_lookup_filters(Qdata1, LU_SkipFs ++ JoinSkipFs),
    F = fun({QNum, GoI, SI,
             {gen, {prepared, _, _, _, _, _, _, _, _, _} = PrepLE}},
            GenNum1) ->
               NewPrepLE = maybe_sort(PrepLE, QNum, DoSort, Opt),
               {{QNum, GoI, SI, {gen, opt_le(NewPrepLE, GenNum1)}},
                GenNum1 + 1};
           (Qd, GenNum1) ->
               {Qd, GenNum1}
        end,
    {Qdata, _} = lists:mapfoldl(F, 1, Qdata2),
    Optz1 = no_cache_of_first_generator(Optz0, GenNum),
    Optz =
        begin
            REC60 = Optz1,
            case REC60 of
                {optz, _, _, _, _, _} ->
                    setelement(5, REC60, Join);
                _ ->
                    error({badrecord, REC60})
            end
        end,
    begin
        REC61 =
            begin
                REC63 = QLC,
                case REC63 of
                    {qlc, _, _, _, _, _} ->
                        setelement(4, setelement(6, REC63, Optz), Qdata);
                    _ ->
                        error({badrecord, REC63})
                end
            end,
        REC62 = Prep0,
        case REC62 of
            {prepared, _, _, _, _, _, _, _, _, _} ->
                setelement(2, REC62, REC61);
            _ ->
                error({badrecord, REC62})
        end
    end;
opt_le({prepared, {qlc_append, HL}, _, _, _, _, _, _, _, _} = Prep,
       GenNum) ->
    Hs =
        [ 
         opt_le(H, GenNum) ||
             H <- HL
        ],
    begin
        REC64 = {qlc_append, Hs},
        REC65 = Prep,
        case REC65 of
            {prepared, _, _, _, _, _, _, _, _, _} ->
                setelement(2, REC65, REC64);
            _ ->
                error({badrecord, REC65})
        end
    end;
opt_le({prepared,
        {qlc_sort, H, _, _, _, _, _, _, _} = Sort,
        _, _, _, _, _, _, _, _} =
           Prep,
       GenNum) ->
    begin
        REC66 =
            begin
                REC68 = opt_le(H, GenNum),
                REC69 = Sort,
                case REC69 of
                    {qlc_sort, _, _, _, _, _, _, _, _} ->
                        setelement(2, REC69, REC68);
                    _ ->
                        error({badrecord, REC69})
                end
            end,
        REC67 = Prep,
        case REC67 of
            {prepared, _, _, _, _, _, _, _, _, _} ->
                setelement(2, REC67, REC66);
            _ ->
                error({badrecord, REC67})
        end
    end;
opt_le(Prep, _GenNum) ->
    Prep.

no_cache_of_first_generator(Optz, GenNum) when GenNum > 1 ->
    Optz;
no_cache_of_first_generator(Optz, 1) ->
    begin
        REC70 = Optz,
        case REC70 of
            {optz, _, _, _, _, _} ->
                setelement(3, REC70, false);
            _ ->
                error({badrecord, REC70})
        end
    end.

maybe_sort(LE, QNum, DoSort, Opt) ->
    case lists:keyfind(QNum, 1, DoSort) of
        {QNum, Col} ->
            {qlc_opt, _, _, _, _, TmpDir, _, _, TmpUsage} = Opt,
            SortOpts =
                [ 
                 {tmpdir, Dir} ||
                     Dir <- [TmpDir],
                     Dir =/= ""
                ],
            Sort =
                {qlc_sort, LE,
                 {keysort, Col},
                 false, [], ascending, SortOpts, TmpUsage, TmpDir},
            {prepared, Sort, no, [], [], [], no, undefined, false,
             false};
        false ->
            LE
    end.

skip_lookup_filters(Qdata, []) ->
    Qdata;
skip_lookup_filters(Qdata0, LU_SkipFs) ->
    [ 
     case lists:member(QNum, LU_SkipFs) of
         true ->
             {QNum, GoI, -1, fil};
         false ->
             Qd
     end ||
         {QNum, GoI, _, _} = Qd <- Qdata0
    ].

activate_join_lookup_filter(QNum, Qdata) ->
    {_, GoI2, SI2, {gen, Prep2}} = lists:keyfind(QNum, 1, Qdata),
    Table2 =
        case Prep2 of
            {prepared, REC71, _, _, _, _, _, _, _, _} ->
                REC71;
            REC71 ->
                error({badrecord, REC71})
        end,
    NPrep2 =
        begin
            REC72 =
                begin
                    REC74 = Table2,
                    case REC74 of
                        {qlc_table, _, _, _, _, _, _, _, _, _, _, _} ->
                            setelement(12, REC74, no_match_spec);
                        _ ->
                            error({badrecord, REC74})
                    end
                end,
            REC73 = Prep2,
            case REC73 of
                {prepared, _, _, _, _, _, _, _, _, _} ->
                    setelement(2, REC73, REC72);
                _ ->
                    error({badrecord, REC73})
            end
        end,
    lists:keyreplace(QNum, 1, Qdata, {QNum, GoI2, SI2, {gen, NPrep2}}).

opt_join(Join, JoinOption, Qdata, Opt, LU_SkipQuals) ->
    {Ix0, M0} = Join,
    Ix1 = opt_join_lu(Ix0, Qdata, LU_SkipQuals),
    Ix = lists:reverse(lists:keysort(2, Ix1)),
    case Ix of
        [{{Q1, C1, Q2, C2}, Skip, KE, LU_fun} | _] ->
            J = {qlc_join,
                 {lookup, KE, LU_fun},
                 Opt, undefined, Q1, C1, undefined, Q2, C2},
            {Q2, J, Skip, []};
        [] ->
            M = opt_join_merge(M0),
            case M of
                [{{Q1, C1, Q2, C2}, {merge_join, DoSort, KE, Skip}} | _] ->
                    J = {qlc_join,
                         {merge, KE},
                         Opt, undefined, Q1, C1, undefined, Q2, C2},
                    {not_a_qnum, J, Skip, DoSort};
                [] when JoinOption =:= nested_loop ->
                    {not_a_qnum, no, [], []};
                _ when JoinOption =/= any ->
                    error(cannot_carry_out_join, [JoinOption]);
                _ ->
                    {not_a_qnum, no, [], []}
            end
    end.

opt_join_lu([{{_Q1, _C1, Q2, _C2} = J,
              [{lookup_join, _KEols, JKE, Skip0} | _]} |
             LJ],
            Qdata, LU_SkipQuals) ->
    {Q2, _, _, {gen, Prep2}} = lists:keyfind(Q2, 1, Qdata),
    {qlc_table, _, _, _, _, _, _, LU_fun, _, KE, _, MS} =
        case Prep2 of
            {prepared, REC75, _, _, _, _, _, _, _, _} ->
                REC75;
            REC75 ->
                error({badrecord, REC75})
        end,
    case
        MS =/= no_match_spec
        andalso
        lists:keymember(Q2, 1, LU_SkipQuals) =:= false
    of
        true ->
            opt_join_lu(LJ, Qdata, LU_SkipQuals);
        false ->
            Skip = skip_if_possible(JKE, KE, Skip0),
            [{J, Skip, KE, LU_fun} |
             opt_join_lu(LJ, Qdata, LU_SkipQuals)]
    end;
opt_join_lu([], _Qdata, _LU_SkipQuals) ->
    [].

opt_join_merge(M) ->
    L = [ 
         {-length(DoSort),
          length(Skip),
          {QCs, {merge_join, DoSort, KE, Skip}}} ||
             {_KpOrder_or_other, MJ} <- M,
             {QCs, {merge_join, DoSort, KE, Skip0}} <- MJ,
             Skip <- [skip_if_possible(KE, '==', Skip0)]
        ],
    lists:reverse([ 
                   J ||
                       {_, _, J} <- lists:sort(L)
                  ]).

skip_if_possible('=:=', '==', _) ->
    [];
skip_if_possible(_, _, {_SkipTag, Skip}) ->
    Skip.

setup_qlc(Prep, Setup) ->
    Post0 = [],
    setup_le(Prep, Post0, Setup).

setup_le({prepared,
          {simple_qlc, _, LE, _, _, Optz},
          _, _, _, _, _, _, _, _},
         Post0, Setup) ->
    {Objs, Post, LocalPost} = setup_le(LE, Post0, Setup),
    unique_cache(Objs, Post, LocalPost, Optz);
setup_le({prepared,
          {qlc, QFun, _, Qdata, V, Optz},
          _, _, _, _, _, _, _, _},
         Post0, Setup) ->
    {GoTo, FirstState, Post, LocalPost} =
        setup_quals(Qdata, Post0, Setup, Optz),
    Objs =
        fun() ->
               QFun(FirstState, V, GoTo)
        end,
    unique_cache(Objs, Post, LocalPost, Optz);
setup_le({prepared,
          {qlc_table, _, _, _, PostFun, _, _, _, _, _, _, _} = Table,
          _, _, _, _, _, _, _, _},
         Post, Setup) ->
    H = table_handle(Table, Post, Setup),
    {H, [PostFun | Post], []};
setup_le({prepared, {qlc_append, PrepL}, _, _, _, _, _, _, _, _},
         Post0, Setup) ->
    F = fun(Prep, {Post1, LPost1}) ->
               {Objs, Post2, LPost2} = setup_le(Prep, Post1, Setup),
               {Objs, {Post2, LPost1 ++ LPost2}}
        end,
    {ObjsL, {Post, LocalPost}} = lists:mapfoldl(F, {Post0, []}, PrepL),
    {fun() ->
            append_loop(ObjsL, 0)
     end,
     Post, LocalPost};
setup_le({prepared,
          {qlc_sort, Prep, Kp, Unique, Compressed, Order, SortOptions0,
           TmpUsage, TmpDir},
          _, _, _, _, _, _, _, _},
         Post0, Setup) ->
    SortOptions = sort_options_global_tmp(SortOptions0, TmpDir),
    LF =
        fun(Objs) ->
               sort_list(Objs, Order, Unique, Kp, SortOptions, Post0)
        end,
    case setup_le(Prep, Post0, Setup) of
        {L, Post, LocalPost} when is_list(L) ->
            {LF(L), Post, LocalPost};
        {Objs, Post, LocalPost} ->
            FF =
                fun(Objs1) ->
                       file_sort_handle(Objs1, Kp, SortOptions, TmpDir,
                                        Compressed, Post, LocalPost)
                end,
            sort_handle(Objs, LF, FF, SortOptions, Post, LocalPost,
                        {TmpUsage, sorting})
    end;
setup_le({prepared, {qlc_list, L, MS}, _, _, _, _, _, _, _, _},
         Post, _Setup)
    when no_match_spec =:= MS; L =:= [] ->
    {L, Post, []};
setup_le({prepared, {qlc_list, L, MS}, _, _, _, _, _, _, _, _},
         Post, _Setup)
    when is_list(L) ->
    {ets:match_spec_run(L, ets:match_spec_compile(MS)), Post, []};
setup_le({prepared, {qlc_list, H0, MS}, _, _, _, _, _, _, _, _},
         Post0, Setup) ->
    {Objs0, Post, LocalPost} = setup_le(H0, Post0, Setup),
    Objs = ets:match_spec_run(Objs0, ets:match_spec_compile(MS)),
    {Objs, Post, LocalPost}.

setup_quals(Qdata, Post0, Setup, Optz) ->
    {GoTo0, Post1, LocalPost0} =
        setup_quals(0, Qdata, [], Post0, [], Setup),
    GoTo1 = lists:keysort(1, GoTo0),
    FirstState0 = next_state(Qdata),
    {GoTo2, FirstState, Post, LocalPost1} =
        case
            case Optz of
                {optz, _, _, _, REC76, _} ->
                    REC76;
                REC76 ->
                    error({badrecord, REC76})
            end
        of
            {qlc_join, {merge, _KE}, Opt, _, _, C1, _, _, C2} = MJ ->
                MF =
                    fun(_Rev, {H1, WH1}, {H2, WH2}) ->
                           fun() ->
                                  merge_join(WH1(H1),
                                             C1,
                                             WH2(H2),
                                             C2, Opt)
                           end
                    end,
                setup_join(MJ, Qdata, GoTo1, FirstState0, MF, Post1);
            {qlc_join, {lookup, _KE, LuF}, _, _, _, C1, _, _, C2} = LJ ->
                LF =
                    fun(Rev, {H1, WH1}, {H2, WH2}) ->
                           {H, W} =
                               if
                                   Rev ->
                                       {H2, WH2};
                                   true ->
                                       {H1, WH1}
                               end,
                           fun() ->
                                  lookup_join(W(H), C1, LuF, C2, Rev)
                           end
                    end,
                setup_join(LJ, Qdata, GoTo1, FirstState0, LF, Post1);
            no ->
                {flat_goto(GoTo1), FirstState0, Post1, []}
        end,
    GoTo = list_to_tuple(GoTo2),
    {GoTo, FirstState, Post, LocalPost0 ++ LocalPost1}.

setup_quals(GenLoopS, [{_QNum, GoI, -1, fil} | Qdata], Gs, P, LP, Setup) ->
    setup_quals(GenLoopS, Qdata, [{GoI, [-1, -1]} | Gs], P, LP, Setup);
setup_quals(GenLoopS,
            [{_QNum, GoI, _SI, fil} | Qdata],
            Gs, P, LP, Setup) ->
    setup_quals(GenLoopS, Qdata,
                [{GoI, [GenLoopS, next_state(Qdata)]} | Gs],
                P, LP, Setup);
setup_quals(GenLoopS,
            [{_QNum, GoI, _SI, {gen, {join, _, _, _, _, _, _}}} | Qdata],
            Gs, P, LP, Setup) ->
    setup_quals(GenLoopS, Qdata,
                [{GoI, [-1, -1, -1]} | Gs],
                P, LP, Setup);
setup_quals(GenLoopS,
            [{_QNum, GoI, SI, {gen, LE}} | Qdata],
            Gs, P, LP, Setup) ->
    {V, NP, LP1} = setup_le(LE, P, Setup),
    setup_quals(SI + 1,
                Qdata,
                [{GoI, [GenLoopS, next_state(Qdata), V]} | Gs],
                NP,
                LP ++ LP1,
                Setup);
setup_quals(GenLoopS, [], Gs, P, LP, _Setup) ->
    {[{1, [GenLoopS]} | Gs], P, LP}.

setup_join(J, Qdata, GoTo0, FirstState0, JoinFun, Post0) ->
    {qlc_join, _, Opt, _, QNum1a, _, _, QNum2a, _} = J,
    {{_QN, JGoI, JSI, _}, Rev, QNum1, QNum2, WH1, WH2, _CsFun} =
        find_join_data(Qdata, QNum1a, QNum2a),
    [{GoI1, SI1}] =
        [ 
         {GoI, SI} ||
             {QNum, GoI, SI, _} <- Qdata,
             QNum =:= QNum1
        ],
    [{GoI2, SI2}] =
        [ 
         {GoI, SI} ||
             {QNum, GoI, SI, _} <- Qdata,
             QNum =:= QNum2
        ],
    [H1] =
        [ 
         H ||
             {GoI, [_Back, _Forth, H]} <- GoTo0,
             GoI =:= GoI1
        ],
    [{BackH2, H2}] =
        [ 
         {Back, H} ||
             {GoI, [Back, _Forth, H]} <- GoTo0,
             GoI =:= GoI2
        ],
    H0 = JoinFun(Rev, {H1, WH1}, {H2, WH2}),
    {H, Post, LocalPost} =
        unique_cache(H0, Post0, [], join_unique_cache(Opt)),
    [JBack] =
        [ 
         Back ||
             {GoI, [Back, _, _]} <- GoTo0,
             GoI =:= GoI1
        ],
    JForth = next_after(Qdata, SI1, QNum2),
    GoTo1 =
        lists:map(fun({GoI, _}) when GoI =:= JGoI ->
                         {JGoI, [JBack, JForth, H]};
                     ({GoI, _}) when GoI =:= GoI1; GoI =:= GoI2 ->
                         {GoI, [-1, -1, -1]};
                     (Go) ->
                         Go
                  end,
                  GoTo0),
    GoTo =
        lists:map(fun(S) when S =:= SI1 ->
                         JSI;
                     (S) when S =:= SI2 ->
                         next_after(Qdata, S, QNum2);
                     (S) when S =:= SI1 + 1 ->
                         JSI + 1;
                     (S) when S =:= SI2 + 1, SI1 + 1 =:= BackH2 ->
                         JSI + 1;
                     (S) when S =:= SI2 + 1 ->
                         BackH2;
                     (S) ->
                         S
                  end,
                  flat_goto(GoTo1)),
    FirstState =
        if
            SI1 =:= FirstState0 ->
                JSI;
            true ->
                FirstState0
        end,
    {GoTo, FirstState, Post, LocalPost}.

join_unique_cache({qlc_opt, Unique, Cache, _, _, _, _, _, _} = Opt) ->
    {optz, Unique, Cache, any, no, Opt}.

flat_goto(GoTo) ->
    lists:flatmap(fun({_, L}) ->
                         L
                  end,
                  GoTo).

next_after([{_, _, S, _} | Qdata], S, QNum2) ->
    case Qdata of
        [{QNum2, _, _, _} | Qdata1] ->
            next_state(Qdata1);
        _ ->
            next_state(Qdata)
    end;
next_after([_ | Qdata], S, QNum2) ->
    next_after(Qdata, S, QNum2).

next_state([{_, _, _, {gen, {join, _, _, _, _, _, _}}} | Qdata]) ->
    next_state(Qdata);
next_state([{_, _, -1, fil} | Qdata]) ->
    next_state(Qdata);
next_state([{_, _, S, _} | _]) ->
    S;
next_state([]) ->
    template_state().

find_join_data(Qdata, QNum1, QNum2) ->
    [QRev] =
        [ 
         {Q, Rev, QN1, QN2, H1, H2, CsF} ||
             {_QN, _GoI, _SI, {gen, {join, _, QN1, QN2, H1, H2, CsF}}} =
                 Q <-
                 Qdata,
             if
                 QN1 =:= QNum1, QN2 =:= QNum2 ->
                     not (Rev = false);
                 QN1 =:= QNum2, QN2 =:= QNum1 ->
                     Rev = true;
                 true ->
                     Rev = false
             end
        ],
    QRev.

table_handle({qlc_table, TraverseFun, TravMS, PreFun, _, _, _, LuF,
              ParentFun, _, LuVals, MS},
             Post, Setup) ->
    {setup, Parent} = Setup,
    ParentValue =
        if
            ParentFun =:= undefined ->
                undefined;
            Parent =:= self() ->
                try
                    ParentFun()
                catch
                    Class:Reason:Stacktrace ->
                        post_funs(Post),
                        erlang:raise(Class, Reason, Stacktrace)
                end;
            true ->
                case monitor_request(Parent, {parent_fun, ParentFun}) of
                    error ->
                        post_funs(Post),
                        exit(normal);
                    {value, Value} ->
                        Value;
                    {parent_fun_caught, Class, Reason, Stacktrace} ->
                        post_funs(Post),
                        erlang:raise(Class, Reason, Stacktrace)
                end
        end,
    StopFun =
        if
            Parent =:= self() ->
                undefined;
            true ->
                Cursor = {qlc_cursor, {self(), Parent}},
                fun() ->
                       delete_cursor(Cursor)
                end
        end,
    PreFunArgs = [{parent_value, ParentValue}, {stop_fun, StopFun}],
    _ = call(PreFun, PreFunArgs, ok, Post),
    case LuVals of
        {Pos, Vals} when MS =:= no_match_spec ->
            LuF(Pos, Vals);
        {Pos, Vals} ->
            case LuF(Pos, Vals) of
                [] ->
                    [];
                Objs when is_list(Objs) ->
                    ets:match_spec_run(Objs, ets:match_spec_compile(MS));
                Error ->
                    post_funs(Post),
                    throw_error(Error)
            end;
        _ when not TravMS ->
            MS = no_match_spec,
            TraverseFun;
        _ when MS =:= no_match_spec ->
            fun() ->
                   TraverseFun([{'$1', [], ['$1']}])
            end;
        _ ->
            fun() ->
                   TraverseFun(MS)
            end
    end.

open_file(FileName, Extra, Post) ->
    case file:open(FileName, [read, raw, binary | Extra]) of
        {ok, Fd} ->
            {fun() ->
                    case file:position(Fd, bof) of
                        {ok, 0} ->
                            TF =
                                fun([], _) ->
                                       [];
                                   (Ts, C) when is_list(Ts) ->
                                       lists:reverse(Ts, C)
                                end,
                            file_loop_read(<<>>,
                                           64 * 1024,
                                           {Fd, FileName},
                                           TF);
                        Error ->
                            file_error(FileName, Error)
                    end
             end,
             Fd};
        Error ->
            post_funs(Post),
            throw_file_error(FileName, Error)
    end.

file_loop(Bin0, Fd_FName, Ts0, TF) ->
    case
        try
            file_loop2(Bin0, Ts0)
        catch
            _:_ ->
                {_Fd, FileName} = Fd_FName,
                error({bad_object, FileName})
        end
    of
        {terms, <<Size:4/unit:8,B/bytes>> = Bin, []} ->
            file_loop_read(Bin, Size - byte_size(B) + 4, Fd_FName, TF);
        {terms, <<Size:4/unit:8,_/bytes>> = Bin, Ts} ->
            C = fun() ->
                       file_loop_read(Bin, Size + 4, Fd_FName, TF)
                end,
            TF(Ts, C);
        {terms, B, Ts} ->
            C = fun() ->
                       file_loop_read(B, 64 * 1024, Fd_FName, TF)
                end,
            TF(Ts, C);
        Error ->
            Error
    end.

file_loop2(<<Size:4/unit:8,B:Size/bytes,Bin/bytes>>, Ts) ->
    file_loop2(Bin, [binary_to_term(B) | Ts]);
file_loop2(Bin, Ts) ->
    {terms, Bin, Ts}.

file_loop_read(B, MinBytesToRead, {Fd, FileName} = Fd_FName, TF) ->
    BytesToRead = max(64 * 1024, MinBytesToRead),
    case file:read(Fd, BytesToRead) of
        {ok, Bin} when byte_size(B) =:= 0 ->
            file_loop(Bin, Fd_FName, [], TF);
        {ok, Bin} ->
            case B of
                <<Size:4/unit:8,Tl/bytes>>
                    when byte_size(Bin) + byte_size(Tl) >= Size ->
                    {B1, B2} = split_binary(Bin, Size - byte_size(Tl)),
                    Foo =
                        fun([T], Fun) ->
                               [T | Fun]
                        end,
                    case
                        file_loop(list_to_binary([B, B1]),
                                  Fd_FName, [], Foo)
                    of
                        [T | Fun] ->
                            true = is_function(Fun),
                            file_loop(B2, Fd_FName, [T], TF);
                        Error ->
                            Error
                    end;
                _ ->
                    file_loop(list_to_binary([B, Bin]),
                              Fd_FName, [], TF)
            end;
        eof when byte_size(B) =:= 0 ->
            TF([], foo);
        eof ->
            error({bad_object, FileName});
        Error ->
            file_error(FileName, Error)
    end.

sort_cursor_input(H, NoObjects) ->
    fun(close) ->
           ok;
       (read) ->
           sort_cursor_input_read(H, NoObjects)
    end.

sort_cursor_list_output(TmpDir, Z, Unique) ->
    fun(close) ->
           {terms, []};
       ({value, NoObjects}) ->
           fun(BTerms) when Unique; length(BTerms) =:= NoObjects ->
                  fun(close) ->
                         {terms, BTerms};
                     (BTerms1) ->
                         sort_cursor_file(BTerms ++ BTerms1, TmpDir, Z)
                  end;
              (BTerms) ->
                  sort_cursor_file(BTerms, TmpDir, Z)
           end
    end.

sort_cursor_file(BTerms, TmpDir, Z) ->
    FName = tmp_filename(TmpDir),
    case file:open(FName, [write, raw, binary | Z]) of
        {ok, Fd} ->
            WFun = write_terms(FName, Fd),
            WFun(BTerms);
        Error ->
            throw_file_error(FName, Error)
    end.

sort_options_global_tmp(S, "") ->
    S;
sort_options_global_tmp(S, TmpDir) ->
    [{tmpdir, TmpDir} | lists:keydelete(tmpdir, 1, S)].

tmp_filename(TmpDirOpt) ->
    U = "_",
    Node = node(),
    Pid = os:getpid(),
    Unique = erlang:unique_integer(),
    F = lists:concat([qlc, U, Node, U, Pid, U, Unique]),
    TmpDir =
        case TmpDirOpt of
            "" ->
                {ok, CurDir} = file:get_cwd(),
                CurDir;
            TDir ->
                TDir
        end,
    filename:join(filename:absname(TmpDir), F).

write_terms(FileName, Fd) ->
    fun(close) ->
           _ = file:close(Fd),
           {file, FileName};
       (BTerms) ->
           case file:write(Fd, size_bin(BTerms, [])) of
               ok ->
                   write_terms(FileName, Fd);
               Error ->
                   _ = file:close(Fd),
                   throw_file_error(FileName, Error)
           end
    end.

size_bin([], L) ->
    L;
size_bin([BinTerm | BinTerms], L) ->
    size_bin(BinTerms, [L, <<(byte_size(BinTerm)):4/unit:8>> | BinTerm]).

sort_cursor_input_read([], NoObjects) ->
    {end_of_input, NoObjects};
sort_cursor_input_read([Object | Cont], NoObjects) ->
    {[term_to_binary(Object)], sort_cursor_input(Cont, NoObjects + 1)};
sort_cursor_input_read(F, NoObjects) ->
    case F() of
        Objects when is_list(Objects) ->
            sort_cursor_input_read(Objects, NoObjects);
        Term ->
            throw_error(Term)
    end.

unique_cache(L, Post, LocalPost, Optz) when is_list(L) ->
    case
        case Optz of
            {optz, REC77, _, _, _, _} ->
                REC77;
            REC77 ->
                error({badrecord, REC77})
        end
    of
        true ->
            {unique_sort_list(L), Post, LocalPost};
        false ->
            {L, Post, LocalPost}
    end;
unique_cache(H, Post, LocalPost, {optz, false, false, _, _, _}) ->
    {H, Post, LocalPost};
unique_cache(H, Post, LocalPost, {optz, true, false, _, _, _}) ->
    E = ets:new(qlc, [set, private]),
    {fun() ->
            no_dups(H, E)
     end,
     [del_table(E) | Post],
     LocalPost};
unique_cache(H, Post, LocalPost, {optz, false, true, _, _, _}) ->
    E = ets:new(qlc, [set, private]),
    {L, P} = unique_cache_post(E),
    {fun() ->
            cache(H, E, LocalPost)
     end,
     [P | Post],
     [L]};
unique_cache(H, Post, LocalPost, {optz, true, true, _, _, _}) ->
    UT = ets:new(qlc, [bag, private]),
    MT = ets:new(qlc, [set, private]),
    {L1, P1} = unique_cache_post(UT),
    {L2, P2} = unique_cache_post(MT),
    {fun() ->
            ucache(H, UT, MT, LocalPost)
     end,
     [P1, P2 | Post],
     [L1, L2]};
unique_cache(H, Post, LocalPost, {optz, false, list, _, _, _} = Optz) ->
    Ref = make_ref(),
    F = del_lcache(Ref),
    {qlc_opt, _, _, _, _, TmpDir, _, MaxList, TmpUsage} =
        case Optz of
            {optz, _, _, _, _, REC78} ->
                REC78;
            REC78 ->
                error({badrecord, REC78})
        end,
    {fun() ->
            lcache(H, Ref, LocalPost, TmpDir, MaxList, TmpUsage)
     end,
     [F | Post],
     [F]};
unique_cache(H, Post0, LocalPost0, {optz, true, list, _, _, _} = Optz) ->
    {qlc_opt, _, _, _, _, TmpDir, _, MaxList, TmpUsage} =
        case Optz of
            {optz, _, _, _, _, REC79} ->
                REC79;
            REC79 ->
                error({badrecord, REC79})
        end,
    Size =
        if
            MaxList >= 1 bsl 31 ->
                1 bsl 31 - 1;
            MaxList =:= 0 ->
                1;
            true ->
                MaxList
        end,
    SortOptions = [{size, Size}, {tmpdir, TmpDir}],
    USortOptions = [{unique, true} | SortOptions],
    TmpUsageM = {TmpUsage, caching},
    LF1 =
        fun(Objs) ->
               lists:ukeysort(1, Objs)
        end,
    FF1 =
        fun(Objs) ->
               file_sort_handle(Objs,
                                {keysort, 1},
                                USortOptions, TmpDir, [], Post0,
                                LocalPost0)
        end,
    {UH, Post1, LocalPost1} =
        sort_handle(tag_objects(H, 1),
                    LF1, FF1, USortOptions, Post0, LocalPost0,
                    TmpUsageM),
    LF2 =
        fun(Objs) ->
               lists:keysort(2, Objs)
        end,
    FF2 =
        fun(Objs) ->
               file_sort_handle(Objs,
                                {keysort, 2},
                                SortOptions, TmpDir, [], Post1,
                                LocalPost1)
        end,
    {SH, Post, LocalPost} =
        sort_handle(UH, LF2, FF2, SortOptions, Post1, LocalPost1,
                    TmpUsageM),
    if
        is_list(SH) ->
            {untag_objects2(SH), Post, LocalPost};
        true ->
            {fun() ->
                    untag_objects(SH)
             end,
             Post, LocalPost}
    end.

unique_cache_post(E) ->
    {empty_table(E), del_table(E)}.

unique_sort_list(L) ->
    E = ets:new(qlc, [set, private]),
    unique_list(L, E).

unique_list([], E) ->
    true = ets:delete(E),
    [];
unique_list([Object | Objects], E) ->
    case ets:member(E, Object) of
        false ->
            true = ets:insert(E, {Object}),
            [Object | unique_list(Objects, E)];
        true ->
            unique_list(Objects, E)
    end.

sort_list(L, CFun, true, sort, _SortOptions, _Post)
    when is_function(CFun) ->
    lists:usort(CFun, L);
sort_list(L, CFun, false, sort, _SortOptions, _Post)
    when is_function(CFun) ->
    lists:sort(CFun, L);
sort_list(L, ascending, true, sort, _SortOptions, _Post) ->
    lists:usort(L);
sort_list(L, descending, true, sort, _SortOptions, _Post) ->
    lists:reverse(lists:usort(L));
sort_list(L, ascending, false, sort, _SortOptions, _Post) ->
    lists:sort(L);
sort_list(L, descending, false, sort, _SortOptions, _Post) ->
    lists:reverse(lists:sort(L));
sort_list(L, Order, Unique, {keysort, Kp}, _SortOptions, _Post)
    when is_integer(Kp), is_atom(Order) ->
    case {Order, Unique} of
        {ascending, true} ->
            lists:ukeysort(Kp, L);
        {ascending, false} ->
            lists:keysort(Kp, L);
        {descending, true} ->
            lists:reverse(lists:ukeysort(Kp, L));
        {descending, false} ->
            lists:reverse(lists:keysort(Kp, L))
    end;
sort_list(L, _Order, _Unique, Sort, SortOptions, Post) ->
    In =
        fun(_) ->
               {L,
                fun(_) ->
                       end_of_input
                end}
        end,
    Out = sort_list_output([]),
    TSortOptions = [{format, term} | SortOptions],
    do_sort(In, Out, Sort, TSortOptions, Post).

sort_list_output(L) ->
    fun(close) ->
           lists:append(lists:reverse(L));
       (Terms) when is_list(Terms) ->
           sort_list_output([Terms | L])
    end.

sort_handle(H, ListFun, FileFun, SortOptions, Post, LocalPost,
            TmpUsageM) ->
    Size =
        case lists:keyfind(size, 1, SortOptions) of
            {size, Size0} ->
                Size0;
            false ->
                default_option(size)
        end,
    sort_cache(H, [], Size,
               {ListFun, FileFun, Post, LocalPost, TmpUsageM}).

sort_cache([], CL, _Sz, {LF, _FF, Post, LocalPost, _TmpUsageM}) ->
    {LF(lists:reverse(CL)), Post, LocalPost};
sort_cache(Objs, CL, Sz, C) when Sz < 0 ->
    sort_cache2(Objs, CL, false, C);
sort_cache([Object | Cont], CL, Sz0, C) ->
    Sz = decr_list_size(Sz0, Object),
    sort_cache(Cont, [Object | CL], Sz, C);
sort_cache(F, CL, Sz, C) ->
    case F() of
        Objects when is_list(Objects) ->
            sort_cache(Objects, CL, Sz, C);
        Term ->
            {_LF, _FF, Post, _LocalPost, _TmpUsageM} = C,
            post_funs(Post),
            throw_error(Term)
    end.

sort_cache2([], CL, _X, {LF, _FF, Post, LocalPost, _TmpUsageM}) ->
    {LF(lists:reverse(CL)), Post, LocalPost};
sort_cache2([Object | Cont], CL, _, C) ->
    sort_cache2(Cont, [Object | CL], true, C);
sort_cache2(F, CL, false, C) ->
    case F() of
        Objects when is_list(Objects) ->
            sort_cache2(Objects, CL, true, C);
        Term ->
            {_LF, _FF, Post, _LocalPost, _TmpUsageM} = C,
            post_funs(Post),
            throw_error(Term)
    end;
sort_cache2(_Cont, _CL, true,
            {_LF, _FF, Post, _LocalPost, {not_allowed, M}}) ->
    post_funs(Post),
    throw_reason({tmpdir_usage, M});
sort_cache2(Cont, CL, true, {_LF, FF, _Post, _LocalPost, {TmpUsage, M}}) ->
    maybe_error_logger(TmpUsage, M),
    FF(lists:reverse(CL, Cont)).

file_sort_handle(H, Kp, SortOptions, TmpDir, Compressed, Post,
                 LocalPost) ->
    In = sort_cursor_input(H, 0),
    Unique =
        lists:member(unique, SortOptions)
        orelse
        lists:keymember(unique, 1, SortOptions),
    Out = sort_cursor_list_output(TmpDir, Compressed, Unique),
    Reply = do_sort(In, Out, Kp, SortOptions, Post),
    case Reply of
        {file, FileName} ->
            {F, Fd} = open_file(FileName, Compressed, Post),
            P = fun() ->
                       _ = file:close(Fd),
                       _ = file:delete(FileName)
                end,
            {F, [P | Post], LocalPost};
        {terms, BTerms} ->
            try
                {[ 
                  binary_to_term(B) ||
                      B <- BTerms
                 ],
                 Post, LocalPost}
            catch
                Class:Reason:Stacktrace ->
                    post_funs(Post),
                    erlang:raise(Class, Reason, Stacktrace)
            end
    end.

do_sort(In, Out, Sort, SortOptions, Post) ->
    try
        case do_sort(In, Out, Sort, SortOptions) of
            {error, Reason} ->
                throw_reason(Reason);
            Reply ->
                Reply
        end
    catch
        Class:Term:Stacktrace ->
            post_funs(Post),
            erlang:raise(Class, Term, Stacktrace)
    end.

do_sort(In, Out, sort, SortOptions) ->
    file_sorter:sort(In, Out, SortOptions);
do_sort(In, Out, {keysort, KeyPos}, SortOptions) ->
    file_sorter:keysort(KeyPos, In, Out, SortOptions).

del_table(Ets) ->
    fun() ->
           true = ets:delete(Ets)
    end.

empty_table(Ets) ->
    fun() ->
           true = ets:delete_all_objects(Ets)
    end.

append_loop([[_ | _] = L], _N) ->
    L;
append_loop([F], _N) ->
    F();
append_loop([L | Hs], N) ->
    append_loop(L, N, Hs).

append_loop([], N, Hs) ->
    append_loop(Hs, N);
append_loop([Object | Cont], N, Hs) ->
    [Object | append_loop(Cont, N + 1, Hs)];
append_loop(F, 0, Hs) ->
    case F() of
        [] ->
            append_loop(Hs, 0);
        [Object | Cont] ->
            [Object | append_loop(Cont, 1, Hs)];
        Term ->
            Term
    end;
append_loop(F, _N, Hs) ->
    fun() ->
           append_loop(F, 0, Hs)
    end.

no_dups([] = Cont, UTab) ->
    true = ets:delete_all_objects(UTab),
    Cont;
no_dups([Object | Cont], UTab) ->
    case ets:member(UTab, Object) of
        false ->
            true = ets:insert(UTab, {Object}),
            [Object |
             fun() ->
                    no_dups(Cont, UTab)
             end];
        true ->
            no_dups(Cont, UTab)
    end;
no_dups(F, UTab) ->
    case F() of
        Objects when is_list(Objects) ->
            no_dups(Objects, UTab);
        Term ->
            Term
    end.

cache(H, MTab, LocalPost) ->
    case ets:member(MTab, 0) of
        false ->
            true = ets:insert(MTab, {0}),
            cache(H, MTab, 1, LocalPost);
        true ->
            cache_recall(MTab, 1)
    end.

cache([] = Cont, _MTab, _SeqNo, LocalPost) ->
    local_post(LocalPost),
    Cont;
cache([Object | Cont], MTab, SeqNo, LocalPost) ->
    true = ets:insert(MTab, {SeqNo, Object}),
    [Object |
     fun() ->
            cache(Cont, MTab, SeqNo + 1, LocalPost)
     end];
cache(F, MTab, SeqNo, LocalPost) ->
    case F() of
        Objects when is_list(Objects) ->
            cache(Objects, MTab, SeqNo, LocalPost);
        Term ->
            Term
    end.

cache_recall(MTab, SeqNo) ->
    case ets:lookup(MTab, SeqNo) of
        [] = Cont ->
            Cont;
        [{SeqNo, Object}] ->
            [Object |
             fun() ->
                    cache_recall(MTab, SeqNo + 1)
             end]
    end.

ucache(H, UTab, MTab, LocalPost) ->
    case ets:member(MTab, 0) of
        false ->
            true = ets:insert(MTab, {0}),
            ucache(H, UTab, MTab, 1, LocalPost);
        true ->
            ucache_recall(UTab, MTab, 1)
    end.

ucache([] = Cont, _UTab, _MTab, _SeqNo, LocalPost) ->
    local_post(LocalPost),
    Cont;
ucache([Object | Cont], UTab, MTab, SeqNo, LocalPost) ->
    Hash = erlang:phash2(Object),
    case ets:lookup(UTab, Hash) of
        [] ->
            ucache3(Object, Cont, Hash, UTab, MTab, SeqNo, LocalPost);
        HashSeqObjects ->
            case lists:keymember(Object, 3, HashSeqObjects) of
                true ->
                    ucache(Cont, UTab, MTab, SeqNo, LocalPost);
                false ->
                    ucache3(Object, Cont, Hash, UTab, MTab, SeqNo,
                            LocalPost)
            end
    end;
ucache(F, UTab, MTab, SeqNo, LocalPost) ->
    case F() of
        Objects when is_list(Objects) ->
            ucache(Objects, UTab, MTab, SeqNo, LocalPost);
        Term ->
            Term
    end.

ucache3(Object, Cont, Hash, UTab, MTab, SeqNo, LocalPost) ->
    true = ets:insert(UTab, {Hash, SeqNo, Object}),
    true = ets:insert(MTab, {SeqNo, Hash}),
    [Object |
     fun() ->
            ucache(Cont, UTab, MTab, SeqNo + 1, LocalPost)
     end].

ucache_recall(UTab, MTab, SeqNo) ->
    case ets:lookup(MTab, SeqNo) of
        [] = Cont ->
            Cont;
        [{SeqNo, Hash}] ->
            Object =
                case ets:lookup(UTab, Hash) of
                    [{Hash, SeqNo, Object0}] ->
                        Object0;
                    HashSeqObjects ->
                        {Hash, SeqNo, Object0} =
                            lists:keyfind(SeqNo, 2, HashSeqObjects),
                        Object0
                end,
            [Object |
             fun() ->
                    ucache_recall(UTab, MTab, SeqNo + 1)
             end]
    end.

lcache(H, Ref, LocalPost, TmpDir, MaxList, TmpUsage) ->
    Key = {Ref, '$_qlc_cache_tmpfiles_'},
    case get(Key) of
        undefined ->
            lcache1(H,
                    {Key, LocalPost, TmpDir, MaxList, TmpUsage},
                    MaxList, []);
        {file, _Fd, _TmpFile, F} ->
            F();
        L when is_list(L) ->
            L
    end.

lcache1([] = Cont,
        {Key, LocalPost, _TmpDir, _MaxList, _TmpUsage},
        _Sz, Acc) ->
    local_post(LocalPost),
    case get(Key) of
        undefined ->
            put(Key, lists:reverse(Acc)),
            Cont;
        {file, Fd, TmpFile, _F} ->
            case lcache_write(Fd, TmpFile, Acc) of
                ok ->
                    Cont;
                Error ->
                    Error
            end
    end;
lcache1(H, State, Sz, Acc) when Sz < 0 ->
    {Key, LocalPost, TmpDir, MaxList, TmpUsage} = State,
    GetFile =
        case get(Key) of
            {file, Fd0, TmpFile, _F} ->
                {TmpFile, Fd0};
            undefined when TmpUsage =:= not_allowed ->
                error({tmpdir_usage, caching});
            undefined ->
                maybe_error_logger(TmpUsage, caching),
                FName = tmp_filename(TmpDir),
                {F, Fd0} = open_file(FName, [write], LocalPost),
                put(Key, {file, Fd0, FName, F}),
                {FName, Fd0}
        end,
    case GetFile of
        {FileName, Fd} ->
            case lcache_write(Fd, FileName, Acc) of
                ok ->
                    lcache1(H, State, MaxList, []);
                Error ->
                    Error
            end;
        Error ->
            Error
    end;
lcache1([Object | Cont], State, Sz0, Acc) ->
    Sz = decr_list_size(Sz0, Object),
    [Object | lcache2(Cont, State, Sz, [Object | Acc])];
lcache1(F, State, Sz, Acc) ->
    case F() of
        Objects when is_list(Objects) ->
            lcache1(Objects, State, Sz, Acc);
        Term ->
            Term
    end.

lcache2([Object | Cont], State, Sz0, Acc) when Sz0 >= 0 ->
    Sz = decr_list_size(Sz0, Object),
    [Object | lcache2(Cont, State, Sz, [Object | Acc])];
lcache2(Cont, State, Sz, Acc) ->
    fun() ->
           lcache1(Cont, State, Sz, Acc)
    end.

lcache_write(Fd, FileName, L) ->
    write_binary_terms(t2b(L, []), Fd, FileName).

t2b([], Bs) ->
    Bs;
t2b([T | Ts], Bs) ->
    t2b(Ts, [term_to_binary(T) | Bs]).

del_lcache(Ref) ->
    fun() ->
           Key = {Ref, '$_qlc_cache_tmpfiles_'},
           case get(Key) of
               undefined ->
                   ok;
               {file, Fd, TmpFile, _F} ->
                   _ = file:close(Fd),
                   _ = file:delete(TmpFile),
                   erase(Key);
               _L ->
                   erase(Key)
           end
    end.

tag_objects([Object | Cont], T) ->
    [{Object, T} | tag_objects2(Cont, T + 1)];
tag_objects([] = Cont, _T) ->
    Cont;
tag_objects(F, T) ->
    case F() of
        Objects when is_list(Objects) ->
            tag_objects(Objects, T);
        Term ->
            Term
    end.

tag_objects2([Object | Cont], T) ->
    [{Object, T} | tag_objects2(Cont, T + 1)];
tag_objects2(Objects, T) ->
    fun() ->
           tag_objects(Objects, T)
    end.

untag_objects([] = Objs) ->
    Objs;
untag_objects([{Object, _N} | Cont]) ->
    [Object | untag_objects2(Cont)];
untag_objects(F) ->
    case F() of
        Objects when is_list(Objects) ->
            untag_objects(Objects);
        Term ->
            Term
    end.

untag_objects2([{Object, _N} | Cont]) ->
    [Object | untag_objects2(Cont)];
untag_objects2([] = Cont) ->
    Cont;
untag_objects2(Objects) ->
    fun() ->
           untag_objects(Objects)
    end.

-record(m,{id, tmpdir, max_list, tmp_usage}).

merge_join([] = Cont, _C1, _T2, _C2, _Opt) ->
    Cont;
merge_join([E1 | L1], C1, L2, C2, Opt) ->
    {qlc_opt, _, _, _, _, TmpDir, _, MaxList, TmpUsage} = Opt,
    M = {m, merge_join_id(), TmpDir, MaxList, TmpUsage},
    merge_join2(E1, element(C1, E1), L1, C1, L2, C2, M);
merge_join(F1, C1, L2, C2, Opt) ->
    case F1() of
        L1 when is_list(L1) ->
            merge_join(L1, C1, L2, C2, Opt);
        T1 ->
            T1
    end.

merge_join1(_E2, _K2, [] = Cont, _C1, _L2, _C2, M) ->
    end_merge_join(Cont, M);
merge_join1(E2, K2, [E1 | L1], C1, L2, C2, M) ->
    K1 = element(C1, E1),
    if
        K1 == K2 ->
            same_keys2(E1, K1, L1, C1, L2, C2, E2, M);
        K1 > K2 ->
            merge_join2(E1, K1, L1, C1, L2, C2, M);
        true ->
            merge_join1(E2, K2, L1, C1, L2, C2, M)
    end;
merge_join1(E2, K2, F1, C1, L2, C2, M) ->
    case F1() of
        L1 when is_list(L1) ->
            merge_join1(E2, K2, L1, C1, L2, C2, M);
        T1 ->
            T1
    end.

merge_join2(_E1, _K1, _L1, _C1, [] = Cont, _C2, M) ->
    end_merge_join(Cont, M);
merge_join2(E1, K1, L1, C1, [E2 | L2], C2, M) ->
    K2 = element(C2, E2),
    if
        K1 == K2 ->
            same_keys2(E1, K1, L1, C1, L2, C2, E2, M);
        K1 > K2 ->
            merge_join2(E1, K1, L1, C1, L2, C2, M);
        true ->
            merge_join1(E2, K2, L1, C1, L2, C2, M)
    end;
merge_join2(E1, K1, L1, C1, F2, C2, M) ->
    case F2() of
        L2 when is_list(L2) ->
            merge_join2(E1, K1, L1, C1, L2, C2, M);
        T2 ->
            T2
    end.

same_keys2(E1, K1, L1, C1, [], _C2, E2_0, M) ->
    Cont =
        fun(_L1b) ->
               end_merge_join([], M)
        end,
    loop_same_keys(E1, K1, L1, C1, [E2_0], Cont, M);
same_keys2(E1, K1, L1, C1, [E2 | L2] = L2_0, C2, E2_0, M) ->
    K2 = element(C2, E2),
    if
        K1 == K2 ->
            same_keys1(E1, K1, L1, C1, E2, C2, E2_0, L2, M);
        K1 < K2 ->
            [[E1 | E2_0] |
             fun() ->
                    same_loop1(L1, K1, C1, E2_0, L2_0, C2, M)
             end]
    end;
same_keys2(E1, K1, L1, C1, F2, C2, E2_0, M) ->
    case F2() of
        L2 when is_list(L2) ->
            same_keys2(E1, K1, L1, C1, L2, C2, E2_0, M);
        T2 ->
            Cont =
                fun(_L1b) ->
                       T2
                end,
            loop_same_keys(E1, K1, L1, C1, [E2_0], Cont, M)
    end.

same_loop1([], _K1_0, _C1, _E2_0, _L2, _C2, M) ->
    end_merge_join([], M);
same_loop1([E1 | L1], K1_0, C1, E2_0, L2, C2, M) ->
    K1 = element(C1, E1),
    if
        K1 == K1_0 ->
            [[E1 | E2_0] |
             fun() ->
                    same_loop1(L1, K1_0, C1, E2_0, L2, C2, M)
             end];
        K1_0 < K1 ->
            merge_join2(E1, K1, L1, C1, L2, C2, M)
    end;
same_loop1(F1, K1_0, C1, E2_0, L2, C2, M) ->
    case F1() of
        L1 when is_list(L1) ->
            same_loop1(L1, K1_0, C1, E2_0, L2, C2, M);
        T1 ->
            T1
    end.

same_keys1(E1_0, K1_0, [] = L1, C1, E2, C2, E2_0, L2, M) ->
    [[E1_0 | E2_0],
     [E1_0 | E2] |
     fun() ->
            same_keys(K1_0, E1_0, L1, C1, L2, C2, M)
     end];
same_keys1(E1_0, K1_0, [E1 | _] = L1, C1, E2, C2, E2_0, L2, M) ->
    K1 = element(C1, E1),
    if
        K1_0 == K1 ->
            E2s = [E2, E2_0],
            Sz0 =
                decr_list_size(case M of
                                   {m, _, _, REC80, _} ->
                                       REC80;
                                   REC80 ->
                                       error({badrecord, REC80})
                               end,
                               E2s),
            same_keys_cache(E1_0, K1_0, L1, C1, L2, C2, E2s, Sz0, M);
        K1_0 < K1 ->
            [[E1_0 | E2_0],
             [E1_0 | E2] |
             fun() ->
                    same_keys(K1_0, E1_0, L1, C1, L2, C2, M)
             end]
    end;
same_keys1(E1_0, K1_0, F1, C1, E2, C2, E2_0, L2, M) ->
    case F1() of
        L1 when is_list(L1) ->
            same_keys1(E1_0, K1_0, L1, C1, E2, C2, E2_0, L2, M);
        T1 ->
            Cont =
                fun() ->
                       T1
                end,
            loop_same(E1_0, [E2, E2_0], Cont)
    end.

same_keys(_K1, _E1, _L1, _C1, [] = Cont, _C2, M) ->
    end_merge_join(Cont, M);
same_keys(K1, E1, L1, C1, [E2 | L2], C2, M) ->
    K2 = element(C2, E2),
    if
        K1 == K2 ->
            [[E1 | E2] |
             fun() ->
                    same_keys(K1, E1, L1, C1, L2, C2, M)
             end];
        K1 < K2 ->
            merge_join1(E2, K2, L1, C1, L2, C2, M)
    end;
same_keys(K1, E1, L1, C1, F2, C2, M) ->
    case F2() of
        L2 when is_list(L2) ->
            same_keys(K1, E1, L1, C1, L2, C2, M);
        T2 ->
            T2
    end.

same_keys_cache(E1, K1, L1, C1, [], _C2, E2s, _Sz, M) ->
    Cont =
        fun(_L1b) ->
               end_merge_join([], M)
        end,
    loop_same_keys(E1, K1, L1, C1, E2s, Cont, M);
same_keys_cache(E1, K1, L1, C1, L2, C2, E2s, Sz0, M) when Sz0 < 0 ->
    case init_merge_join(M) of
        ok ->
            Sz =
                case M of
                    {m, _, _, REC81, _} ->
                        REC81;
                    REC81 ->
                        error({badrecord, REC81})
                end,
            C = fun() ->
                       same_keys_file(E1, K1, L1, C1, L2, C2, [], Sz, M)
                end,
            write_same_keys(E1, E2s, M, C);
        Error ->
            Error
    end;
same_keys_cache(E1, K1, L1, C1, [E2 | L2], C2, E2s, Sz0, M) ->
    K2 = element(C2, E2),
    if
        K1 == K2 ->
            Sz = decr_list_size(Sz0, E2),
            same_keys_cache(E1, K1, L1, C1, L2, C2, [E2 | E2s], Sz, M);
        K1 < K2 ->
            Cont =
                fun(L1b) ->
                       merge_join1(E2, K2, L1b, C1, L2, C2, M)
                end,
            loop_same_keys(E1, K1, L1, C1, E2s, Cont, M)
    end;
same_keys_cache(E1, K1, L1, C1, F2, C2, E2s, Sz, M) ->
    case F2() of
        L2 when is_list(L2) ->
            same_keys_cache(E1, K1, L1, C1, L2, C2, E2s, Sz, M);
        T2 ->
            Cont =
                fun(_L1b) ->
                       T2
                end,
            loop_same_keys(E1, K1, L1, C1, E2s, Cont, M)
    end.

loop_same_keys(E1, _K1, [], _C1, E2s, _Cont, M) ->
    end_merge_join(loop_same(E1, E2s, []), M);
loop_same_keys(E1, K1, L1, C1, E2s, Cont, M) ->
    loop_same(E1, E2s,
              fun() ->
                     loop_keys(K1, L1, C1, E2s, Cont, M)
              end).

loop_same(_E1, [], L) ->
    L;
loop_same(E1, [E2 | E2s], L) ->
    loop_same(E1, E2s, [[E1 | E2] | L]).

loop_keys(K, [E1 | L1] = L1_0, C1, E2s, Cont, M) ->
    K1 = element(C1, E1),
    if
        K1 == K ->
            loop_same_keys(E1, K1, L1, C1, E2s, Cont, M);
        K1 > K ->
            Cont(L1_0)
    end;
loop_keys(_K, [] = L1, _C1, _Es2, Cont, _M) ->
    Cont(L1);
loop_keys(K, F1, C1, E2s, Cont, M) ->
    case F1() of
        L1 when is_list(L1) ->
            loop_keys(K, L1, C1, E2s, Cont, M);
        T1 ->
            T1
    end.

same_keys_file(E1, K1, L1, C1, [], _C2, E2s, _Sz, M) ->
    Cont =
        fun(_L1b) ->
               end_merge_join([], M)
        end,
    same_keys_file_write(E1, K1, L1, C1, E2s, M, Cont);
same_keys_file(E1, K1, L1, C1, L2, C2, E2s, Sz0, M) when Sz0 < 0 ->
    Sz =
        case M of
            {m, _, _, REC82, _} ->
                REC82;
            REC82 ->
                error({badrecord, REC82})
        end,
    C = fun() ->
               same_keys_file(E1, K1, L1, C1, L2, C2, [], Sz, M)
        end,
    write_same_keys(E1, E2s, M, C);
same_keys_file(E1, K1, L1, C1, [E2 | L2], C2, E2s, Sz0, M) ->
    K2 = element(C2, E2),
    if
        K1 == K2 ->
            Sz = decr_list_size(Sz0, E2),
            same_keys_file(E1, K1, L1, C1, L2, C2, [E2 | E2s], Sz, M);
        K1 < K2 ->
            Cont =
                fun(L1b) ->
                       merge_join1(E2, K2, L1b, C1, L2, C2, M)
                end,
            same_keys_file_write(E1, K1, L1, C1, E2s, M, Cont)
    end;
same_keys_file(E1, K1, L1, C1, F2, C2, E2s, Sz, M) ->
    case F2() of
        L2 when is_list(L2) ->
            same_keys_file(E1, K1, L1, C1, L2, C2, E2s, Sz, M);
        T2 ->
            Cont =
                fun(_L1b) ->
                       T2
                end,
            same_keys_file_write(E1, K1, L1, C1, E2s, M, Cont)
    end.

same_keys_file_write(E1, K1, L1, C1, E2s, M, Cont) ->
    C = fun() ->
               loop_keys_file(K1, L1, C1, Cont, M)
        end,
    write_same_keys(E1, E2s, M, C).

write_same_keys(_E1, [], _M, Cont) ->
    Cont();
write_same_keys(E1, Es2, M, Cont) ->
    write_same_keys(E1, Es2, M, [], Cont).

write_same_keys(_E1, [], M, E2s, Objs) ->
    case write_merge_join(M, E2s) of
        ok ->
            Objs;
        Error ->
            Error
    end;
write_same_keys(E1, [E2 | E2s0], M, E2s, Objs) ->
    BE2 = term_to_binary(E2),
    write_same_keys(E1, E2s0, M, [BE2 | E2s], [[E1 | E2] | Objs]).

loop_keys_file(K, [E1 | L1] = L1_0, C1, Cont, M) ->
    K1 = element(C1, E1),
    if
        K1 == K ->
            C = fun() ->
                       loop_keys_file(K1, L1, C1, Cont, M)
                end,
            read_merge_join(M, E1, C);
        K1 > K ->
            Cont(L1_0)
    end;
loop_keys_file(_K, [] = L1, _C1, Cont, _M) ->
    Cont(L1);
loop_keys_file(K, F1, C1, Cont, M) ->
    case F1() of
        L1 when is_list(L1) ->
            loop_keys_file(K, L1, C1, Cont, M);
        T1 ->
            T1
    end.

end_merge_join(Reply, M) ->
    end_merge_join(M),
    Reply.

init_merge_join({m, MergeId, TmpDir, _, TmpUsage}) ->
    case tmp_merge_file(MergeId) of
        {Fd, FileName} ->
            case file:position(Fd, bof) of
                {ok, 0} ->
                    case file:truncate(Fd) of
                        ok ->
                            ok;
                        Error ->
                            file_error(FileName, Error)
                    end;
                Error ->
                    file_error(FileName, Error)
            end;
        none when TmpUsage =:= not_allowed ->
            error({tmpdir_usage, joining});
        none ->
            maybe_error_logger(TmpUsage, joining),
            FName = tmp_filename(TmpDir),
            case file:open(FName, [raw, binary, read, write]) of
                {ok, Fd} ->
                    TmpFiles = get('$_qlc_merge_join_tmpfiles_'),
                    put('$_qlc_merge_join_tmpfiles_',
                        [{MergeId, Fd, FName} | TmpFiles]),
                    ok;
                Error ->
                    file_error(FName, Error)
            end
    end.

write_merge_join({m, MergeId, _, _, _}, BTerms) ->
    {Fd, FileName} = tmp_merge_file(MergeId),
    write_binary_terms(BTerms, Fd, FileName).

read_merge_join({m, MergeId, _, _, _}, E1, Cont) ->
    {Fd, FileName} = tmp_merge_file(MergeId),
    case file:position(Fd, bof) of
        {ok, 0} ->
            Fun =
                fun([], _) ->
                       Cont();
                   (Ts, C) when is_list(Ts) ->
                       join_read_terms(E1, Ts, C)
                end,
            file_loop_read(<<>>, 64 * 1024, {Fd, FileName}, Fun);
        Error ->
            file_error(FileName, Error)
    end.

join_read_terms(_E1, [], Objs) ->
    Objs;
join_read_terms(E1, [E2 | E2s], Objs) ->
    join_read_terms(E1, E2s, [[E1 | E2] | Objs]).

end_merge_join({m, MergeId, _, _, _}) ->
    case tmp_merge_file(MergeId) of
        none ->
            ok;
        {Fd, FileName} ->
            _ = file:close(Fd),
            _ = file:delete(FileName),
            put('$_qlc_merge_join_tmpfiles_',
                lists:keydelete(MergeId, 1,
                                get('$_qlc_merge_join_tmpfiles_')))
    end.

end_all_merge_joins() ->
    lists:foreach(fun(Id) ->
                         end_merge_join({m, Id, undefined, undefined,
                                         undefined})
                  end,
                  [ 
                   Id ||
                       {Id, _Fd, _FileName} <-
                           lists:flatten([get('$_qlc_merge_join_tmpfiles_')])
                  ]),
    erase('$_qlc_merge_join_tmpfiles_').

merge_join_id() ->
    case get('$_qlc_merge_join_tmpfiles_') of
        undefined ->
            put('$_qlc_merge_join_tmpfiles_', []);
        _ ->
            ok
    end,
    make_ref().

tmp_merge_file(MergeId) ->
    TmpFiles = get('$_qlc_merge_join_tmpfiles_'),
    case lists:keyfind(MergeId, 1, TmpFiles) of
        {MergeId, Fd, FileName} ->
            {Fd, FileName};
        false ->
            none
    end.

decr_list_size(Sz0, E) when is_integer(Sz0) ->
    Sz0 - erlang:external_size(E).

lookup_join([E1 | L1], C1, LuF, C2, Rev) ->
    K1 = element(C1, E1),
    case LuF(C2, [K1]) of
        [] ->
            lookup_join(L1, C1, LuF, C2, Rev);
        [E2] when Rev ->
            [[E2 | E1] |
             fun() ->
                    lookup_join(L1, C1, LuF, C2, Rev)
             end];
        [E2] ->
            [[E1 | E2] |
             fun() ->
                    lookup_join(L1, C1, LuF, C2, Rev)
             end];
        E2s when is_list(E2s), Rev ->
            [ 
             [E2 | E1] ||
                 E2 <- E2s
            ]
            ++
            fun() ->
                   lookup_join(L1, C1, LuF, C2, Rev)
            end;
        E2s when is_list(E2s) ->
            [ 
             [E1 | E2] ||
                 E2 <- E2s
            ]
            ++
            fun() ->
                   lookup_join(L1, C1, LuF, C2, Rev)
            end;
        Term ->
            Term
    end;
lookup_join([] = Cont, _C1, _LuF, _C2, _Rev) ->
    Cont;
lookup_join(F1, C1, LuF, C2, Rev) ->
    case F1() of
        L1 when is_list(L1) ->
            lookup_join(L1, C1, LuF, C2, Rev);
        T1 ->
            T1
    end.

maybe_error_logger(allowed, _) ->
    ok;
maybe_error_logger(Name, Why) ->
    [_, _, {qlc, maybe_error_logger, _, _} | Stacktrace] =
        expand_stacktrace(),
    Trimmer =
        fun(M, _F, _A) ->
               M =:= erl_eval
        end,
    Formater =
        fun(Term, I) ->
               io_lib:print(Term, I, 80, -1)
        end,
    X = erl_error:format_stacktrace(1, Stacktrace, Trimmer, Formater),
    error_logger:Name("qlc: temporary file was needed for ~w\n~ts\n",
                      [Why, lists:flatten(X)]).

expand_stacktrace() ->
    D = erlang:system_flag(backtrace_depth, 8),
    try
        expand_stacktrace(max(1, D))
    after
        erlang:system_flag(backtrace_depth, D)
    end.

expand_stacktrace(D) ->
    _ = erlang:system_flag(backtrace_depth, D),
    {'EXIT', {foo, Stacktrace}} = catch error(foo),
    L = lists:takewhile(fun({M, _, _, _}) ->
                               M =/= qlc
                        end,
                        lists:reverse(Stacktrace)),
    if
        length(L) < 3
        andalso
        length(Stacktrace) =:= D ->
            expand_stacktrace(D + 5);
        true ->
            Stacktrace
    end.

write_binary_terms(BTerms, Fd, FileName) ->
    case file:write(Fd, size_bin(BTerms, [])) of
        ok ->
            ok;
        Error ->
            file_error(FileName, Error)
    end.

post_funs(L) ->
    end_all_merge_joins(),
    local_post(L).

local_post(L) ->
    lists:foreach(fun(undefined) ->
                         ok;
                     (F) ->
                         catch F()
                  end,
                  L).

call(undefined, _Arg, Default, _Post) ->
    Default;
call(Fun, Arg, _Default, Post) ->
    try
        Fun(Arg)
    catch
        Class:Reason:Stacktrace ->
            post_funs(Post),
            erlang:raise(Class, Reason, Stacktrace)
    end.

grd(undefined, _Arg) ->
    false;
grd(Fun, Arg) ->
    case Fun(Arg) of
        true ->
            true;
        _ ->
            false
    end.

anno0() ->
    anno(0).

anno1() ->
    anno(1).

anno(L) ->
    erl_anno:new(L).

family(L) ->
    sofs:to_external(sofs:relation_to_family(sofs:relation(L))).

family_union(L) ->
    R = sofs:relation(L, [{atom, [atom]}]),
    sofs:to_external(sofs:family_union(sofs:relation_to_family(R))).

file_error(File, {error, Reason}) ->
    error({file_error, File, Reason}).

-spec throw_file_error(string(), {error, atom()}) -> no_return().

throw_file_error(File, {error, Reason}) ->
    throw_reason({file_error, File, Reason}).

-spec throw_reason(term()) -> no_return().

throw_reason(Reason) ->
    throw_error(error(Reason)).

-spec throw_error(term()) -> no_return().

throw_error(Error) ->
    throw(Error).

error(Reason) ->
    {error, qlc, Reason}.



