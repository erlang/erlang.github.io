-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.2/src/file_sorter.erl", 1).

-module(file_sorter).

-compile(nowarn_deprecated_catch).

-compile({no_auto_import, [{error, 2}]}).

-export([sort/1,
         sort/2,
         sort/3,
         keysort/2,
         keysort/3,
         keysort/4,
         merge/2,
         merge/3,
         keymerge/3,
         keymerge/4,
         check/1,
         check/2,
         keycheck/2,
         keycheck/3]).

-dialyzer(no_improper_lists).

-file("/buildroot/otp/Erlang ∅⊤℞/lib/kernel-10.2/include/file.hrl", 1).

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

-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.2/src/file_sorter.erl",
      189).

-record(w,{keypos,
           runs = [[]],
           seq = 1,
           in, out, fun_out, prefix,
           temp = [],
           format, runsize, no_files, order, chunksize, wfd, ref, z,
           unique, hdlen, inout_value}).

-record(opts,{format = binary_term_fun(),
              size = 524288,
              no_files = 16,
              tmpdir = default,
              order = ascending,
              compressed = false,
              unique = false,
              header = 4}).

-compile({inline,
          [{badarg, 2}, {make_key, 2}, {make_stable_key, 3}, {cfun, 3}]}).

-export_type([reason/0]).

-type file_name() :: file:name().

-type file_names() :: [file:name()].

-type i_command() :: read | close.

-type i_reply() ::
          end_of_input |
          {end_of_input, value()} |
          {[object()], infun()} |
          input_reply().

-type infun() :: fun((i_command()) -> i_reply()).

-type input() :: file_names() | infun().

-type input_reply() :: term().

-type o_command() :: {value, value()} | [object()] | close.

-type o_reply() :: outfun() | output_reply().

-type object() :: term() | binary().

-type outfun() :: fun((o_command()) -> o_reply()).

-type output() :: file_name() | outfun().

-type output_reply() :: term().

-type value() :: term().

-type options() :: [option()] | option().

-type option() ::
          {compressed, boolean()} |
          {header, header_length()} |
          {format, format()} |
          {no_files, no_files()} |
          {order, order()} |
          {size, size()} |
          {tmpdir, tmp_directory()} |
          {unique, boolean()}.

-type format() :: binary_term | term | binary | format_fun().

-type format_fun() :: fun((binary()) -> term()).

-type header_length() :: pos_integer().

-type key_pos() :: pos_integer() | [pos_integer()].

-type no_files() :: pos_integer().

-type order() :: ascending | descending | order_fun().

-type order_fun() :: fun((term(), term()) -> boolean()).

-type size() :: non_neg_integer().

-type tmp_directory() :: [] | file:name().

-type reason() ::
          bad_object |
          {bad_object, file_name()} |
          {bad_term, file_name()} |
          {file_error,
           file_name(),
           file:posix() | badarg | system_limit} |
          {premature_eof, file_name()}.

-spec sort(FileName) -> Reply
              when
                  FileName :: file_name(),
                  Reply ::
                      ok |
                      {error, reason()} |
                      input_reply() |
                      output_reply().

sort(FileName) ->
    sort([FileName], FileName).

-spec sort(Input, Output) -> Reply
              when
                  Input :: input(),
                  Output :: output(),
                  Reply ::
                      ok |
                      {error, reason()} |
                      input_reply() |
                      output_reply().

sort(Input, Output) ->
    sort(Input, Output, []).

-spec sort(Input, Output, Options) -> Reply
              when
                  Input :: input(),
                  Output :: output(),
                  Options :: options(),
                  Reply ::
                      ok |
                      {error, reason()} |
                      input_reply() |
                      output_reply().

sort(Input0, Output0, Options) ->
    case {is_input(Input0), maybe_output(Output0), options(Options)} of
        {{true, Input},
         {true, Output},
         {opts, _, _, _, _, _, _, _, _} = Opts} ->
            do_sort(0, Input, Output, Opts, sort);
        T ->
            badarg(culprit(tuple_to_list(T)),
                   [Input0, Output0, Options])
    end.

-spec keysort(KeyPos, FileName) -> Reply
                 when
                     KeyPos :: key_pos(),
                     FileName :: file_name(),
                     Reply ::
                         ok |
                         {error, reason()} |
                         input_reply() |
                         output_reply().

keysort(KeyPos, FileName) ->
    keysort(KeyPos, [FileName], FileName).

-spec keysort(KeyPos, Input, Output) -> Reply
                 when
                     KeyPos :: key_pos(),
                     Input :: input(),
                     Output :: output(),
                     Reply ::
                         ok |
                         {error, reason()} |
                         input_reply() |
                         output_reply().

keysort(KeyPos, Input, Output) ->
    keysort(KeyPos, Input, Output, []).

-spec keysort(KeyPos, Input, Output, Options) -> Reply
                 when
                     KeyPos :: key_pos(),
                     Input :: input(),
                     Output :: output(),
                     Options :: options(),
                     Reply ::
                         ok |
                         {error, reason()} |
                         input_reply() |
                         output_reply().

keysort(KeyPos, Input0, Output0, Options) ->
    R = case
            {is_keypos(KeyPos),
             is_input(Input0),
             maybe_output(Output0),
             options(Options)}
        of
            {_, _, _, {opts, binary, _, _, _, _, _, _, _}} ->
                {Input0, Output0, [{badarg, format}]};
            {_, _, _, {opts, _, _, _, _, Order, _, _, _}}
                when is_function(Order) ->
                {Input0, Output0, [{badarg, order}]};
            {true,
             {true, In},
             {true, Out},
             {opts, _, _, _, _, _, _, _, _} = Opts} ->
                {In, Out, Opts};
            T ->
                {Input0, Output0, tuple_to_list(T)}
        end,
    case R of
        {Input, Output, {opts, _, _, _, _, _, _, _, _} = O} ->
            do_sort(KeyPos, Input, Output, O, sort);
        {_, _, O} ->
            badarg(culprit(O), [KeyPos, Input0, Output0, Options])
    end.

-spec merge(FileNames, Output) -> Reply
               when
                   FileNames :: file_names(),
                   Output :: output(),
                   Reply :: ok | {error, reason()} | output_reply().

merge(Files, Output) ->
    merge(Files, Output, []).

-spec merge(FileNames, Output, Options) -> Reply
               when
                   FileNames :: file_names(),
                   Output :: output(),
                   Options :: options(),
                   Reply :: ok | {error, reason()} | output_reply().

merge(Files0, Output0, Options) ->
    case {is_files(Files0), maybe_output(Output0), options(Options)} of
        {{true, Files},
         {true, Output},
         {opts, _, _, _, _, _, _, _, _} = Opts} ->
            do_sort(0, Files, Output, Opts, merge);
        T ->
            badarg(culprit(tuple_to_list(T)),
                   [Files0, Output0, Options])
    end.

-spec keymerge(KeyPos, FileNames, Output) -> Reply
                  when
                      KeyPos :: key_pos(),
                      FileNames :: file_names(),
                      Output :: output(),
                      Reply :: ok | {error, reason()} | output_reply().

keymerge(KeyPos, Files, Output) ->
    keymerge(KeyPos, Files, Output, []).

-spec keymerge(KeyPos, FileNames, Output, Options) -> Reply
                  when
                      KeyPos :: key_pos(),
                      FileNames :: file_names(),
                      Output :: output(),
                      Options :: options(),
                      Reply :: ok | {error, reason()} | output_reply().

keymerge(KeyPos, Files0, Output0, Options) ->
    R = case
            {is_keypos(KeyPos),
             is_files(Files0),
             maybe_output(Output0),
             options(Options)}
        of
            {_, _, _, {opts, binary, _, _, _, _, _, _, _}} ->
                {Files0, Output0, [{badarg, format}]};
            {_, _, _, {opts, _, _, _, _, Order, _, _, _}}
                when is_function(Order) ->
                {Files0, Output0, [{badarg, order}]};
            {true,
             {true, Fs},
             {true, Out},
             {opts, _, _, _, _, _, _, _, _} = Opts} ->
                {Fs, Out, Opts};
            T ->
                {Files0, Output0, tuple_to_list(T)}
        end,
    case R of
        {Files, Output, {opts, _, _, _, _, _, _, _, _} = O} ->
            do_sort(KeyPos, Files, Output, O, merge);
        {_, _, O} ->
            badarg(culprit(O), [KeyPos, Files0, Output0, Options])
    end.

-spec check(FileName) -> Reply
               when
                   FileName :: file_name(),
                   Reply :: {ok, [Result]} | {error, reason()},
                   Result :: {FileName, TermPosition, term()},
                   TermPosition :: pos_integer().

check(FileName) ->
    check([FileName], []).

-spec check(FileNames, Options) -> Reply
               when
                   FileNames :: file_names(),
                   Options :: options(),
                   Reply :: {ok, [Result]} | {error, reason()},
                   Result :: {FileName, TermPosition, term()},
                   FileName :: file_name(),
                   TermPosition :: pos_integer().

check(Files0, Options) ->
    case {is_files(Files0), options(Options)} of
        {{true, Files}, {opts, _, _, _, _, _, _, _, _} = Opts} ->
            do_sort(0, Files, undefined, Opts, check);
        T ->
            badarg(culprit(tuple_to_list(T)), [Files0, Options])
    end.

-spec keycheck(KeyPos, FileName) -> Reply
                  when
                      KeyPos :: key_pos(),
                      FileName :: file_name(),
                      Reply :: {ok, [Result]} | {error, reason()},
                      Result :: {FileName, TermPosition, term()},
                      TermPosition :: pos_integer().

keycheck(KeyPos, FileName) ->
    keycheck(KeyPos, [FileName], []).

-spec keycheck(KeyPos, FileNames, Options) -> Reply
                  when
                      KeyPos :: key_pos(),
                      FileNames :: file_names(),
                      Options :: options(),
                      Reply :: {ok, [Result]} | {error, reason()},
                      Result :: {FileName, TermPosition, term()},
                      FileName :: file_name(),
                      TermPosition :: pos_integer().

keycheck(KeyPos, Files0, Options) ->
    R = case {is_keypos(KeyPos), is_files(Files0), options(Options)} of
            {_, _, {opts, binary, _, _, _, _, _, _, _}} ->
                {Files0, [{badarg, format}]};
            {_, _, {opts, _, _, _, _, Order, _, _, _}}
                when is_function(Order) ->
                {Files0, [{badarg, order}]};
            {true, {true, Fs}, {opts, _, _, _, _, _, _, _, _} = Opts} ->
                {Fs, Opts};
            T ->
                {Files0, tuple_to_list(T)}
        end,
    case R of
        {Files, {opts, _, _, _, _, _, _, _, _} = O} ->
            do_sort(KeyPos, Files, undefined, O, check);
        {_, O} ->
            badarg(culprit(O), [KeyPos, Files0, Options])
    end.

culprit([{error, _} = E | _]) ->
    E;
culprit([{badarg, _} = B | _]) ->
    B;
culprit([_ | B]) ->
    culprit(B).

badarg({error, _} = E, _Args) ->
    E;
badarg({badarg, _} = B, Args) ->
    error(B, Args).

options(Options) when is_list(Options) ->
    options(Options,
            {opts,
             binary_term_fun(),
             524288, 16, default, ascending, false, false, 4});
options(Option) ->
    options([Option]).

options([{format, Format} | L], Opts)
    when Format =:= binary; Format =:= term; is_function(Format, 1) ->
    options(L,
            begin
                REC0 = Opts,
                case REC0 of
                    {opts, _, _, _, _, _, _, _, _} ->
                        setelement(2, REC0, Format);
                    _ ->
                        error({badrecord, REC0})
                end
            end);
options([{format, binary_term} | L], Opts) ->
    options(L,
            begin
                REC1 = binary_term_fun(),
                REC2 = Opts,
                case REC2 of
                    {opts, _, _, _, _, _, _, _, _} ->
                        setelement(2, REC2, REC1);
                    _ ->
                        error({badrecord, REC2})
                end
            end);
options([{size, Size} | L], Opts) when is_integer(Size), Size >= 0 ->
    options(L,
            begin
                REC3 = max(Size, 1),
                REC4 = Opts,
                case REC4 of
                    {opts, _, _, _, _, _, _, _, _} ->
                        setelement(3, REC4, REC3);
                    _ ->
                        error({badrecord, REC4})
                end
            end);
options([{no_files, NoFiles} | L], Opts)
    when is_integer(NoFiles), NoFiles > 1 ->
    options(L,
            begin
                REC5 = Opts,
                case REC5 of
                    {opts, _, _, _, _, _, _, _, _} ->
                        setelement(4, REC5, NoFiles);
                    _ ->
                        error({badrecord, REC5})
                end
            end);
options([{tmpdir, ""} | L], Opts) ->
    options(L,
            begin
                REC6 = Opts,
                case REC6 of
                    {opts, _, _, _, _, _, _, _, _} ->
                        setelement(5, REC6, default);
                    _ ->
                        error({badrecord, REC6})
                end
            end);
options([{tmpdir, Dir} | L], Opts) ->
    case catch filename:absname(Dir) of
        {'EXIT', _} ->
            {badarg, Dir};
        FileName ->
            options(L,
                    begin
                        REC7 = {dir, FileName},
                        REC8 = Opts,
                        case REC8 of
                            {opts, _, _, _, _, _, _, _, _} ->
                                setelement(5, REC8, REC7);
                            _ ->
                                error({badrecord, REC8})
                        end
                    end)
    end;
options([{order, Fun} | L], Opts) when is_function(Fun, 2) ->
    options(L,
            begin
                REC9 = Opts,
                case REC9 of
                    {opts, _, _, _, _, _, _, _, _} ->
                        setelement(6, REC9, Fun);
                    _ ->
                        error({badrecord, REC9})
                end
            end);
options([{order, Order} | L], Opts)
    when Order =:= ascending; Order =:= descending ->
    options(L,
            begin
                REC10 = Opts,
                case REC10 of
                    {opts, _, _, _, _, _, _, _, _} ->
                        setelement(6, REC10, Order);
                    _ ->
                        error({badrecord, REC10})
                end
            end);
options([{compressed, Bool} | L], Opts) when is_boolean(Bool) ->
    options(L,
            begin
                REC11 = Opts,
                case REC11 of
                    {opts, _, _, _, _, _, _, _, _} ->
                        setelement(7, REC11, Bool);
                    _ ->
                        error({badrecord, REC11})
                end
            end);
options([{unique, Bool} | L], Opts) when is_boolean(Bool) ->
    options(L,
            begin
                REC12 = Opts,
                case REC12 of
                    {opts, _, _, _, _, _, _, _, _} ->
                        setelement(8, REC12, Bool);
                    _ ->
                        error({badrecord, REC12})
                end
            end);
options([{header, Len} | L], Opts)
    when is_integer(Len), Len > 0, Len < 1 bsl 31 ->
    options(L,
            begin
                REC13 = Opts,
                case REC13 of
                    {opts, _, _, _, _, _, _, _, _} ->
                        setelement(9, REC13, Len);
                    _ ->
                        error({badrecord, REC13})
                end
            end);
options([], Opts) ->
    if
        (is_record(Opts, opts, 9)
         orelse
         fail)
        and
        (element(2, Opts) =:= term),
        element(9, Opts) =/= 4 ->
            {badarg, header};
        true ->
            Opts
    end;
options([Bad | _], _Opts) ->
    {badarg, Bad};
options(Bad, _Opts) ->
    {badarg, Bad}.

do_sort(KeyPos0, Input0, Output0, Opts, Do) ->
    {opts, Format0, Size, NoFiles, TmpDir, Order, Compressed, Unique,
     HdLen} =
        Opts,
    Prefix = tmp_prefix(Output0, TmpDir),
    ChunkSize = 16384,
    Ref = make_ref(),
    KeyPos =
        case KeyPos0 of
            [Kp] ->
                Kp;
            _ ->
                KeyPos0
        end,
    {Format, Input} = wrap_input(Format0, Do, Input0),
    Z = if
            Compressed ->
                [compressed];
            true ->
                []
        end,
    {Output, FunOut} = wrap_output_terms(Format0, Output0, Z),
    W = {w, KeyPos,
         [[]],
         1, undefined, Output, FunOut, Prefix, [], Format, Size,
         NoFiles, Order, ChunkSize, undefined, Ref, Z, Unique, HdLen,
         no_value},
    try
        doit(Do, Input, W)
    catch
        throw:{Ref, Error} ->
            Error
    end.

doit(sort, Input, W) ->
    files(1, [], 0, W, Input);
doit(merge, Input, W) ->
    last_merge(Input, W);
doit(check, Input, W) ->
    check_files(Input, W, []).

wrap_input(term, check, Files) ->
    Fun =
        fun(File) ->
               Fn = merge_terms_fun(file_rterms(no_file, [File])),
               {fn, Fn, File}
        end,
    {binary_term_fun(),
     [ 
      Fun(F) ||
          F <- Files
     ]};
wrap_input(Format, check, Files) ->
    {Format, Files};
wrap_input(term, merge, Files) ->
    Fun =
        fun(File) ->
               merge_terms_fun(file_rterms(no_file, [File]))
        end,
    Input =
        lists:reverse([ 
                       Fun(F) ||
                           F <- Files
                      ]),
    {binary_term_fun(), Input};
wrap_input(Format, merge, Files) ->
    Input =
        lists:reverse([ 
                       merge_bins_fun(F) ||
                           F <- Files
                      ]),
    {Format, Input};
wrap_input(term, sort, InFun) when is_function(InFun, 1) ->
    {binary_term_fun(), fun_rterms(InFun)};
wrap_input(term, sort, Files) ->
    {binary_term_fun(), file_rterms(no_file, Files)};
wrap_input(Format, sort, Input) ->
    {Format, Input}.

merge_terms_fun(RFun) ->
    fun(close) ->
           RFun(close);
       ({I, [], _LSz, W}) ->
           case RFun(read) of
               end_of_input ->
                   eof;
               {Objs, NRFun} when is_function(NRFun, 1) ->
                   {_, [], Ts, _} =
                       fun_objs(Objs, [], 0, 1 bsl 31, I, W),
                   {{I, Ts, 16384}, merge_terms_fun(NRFun)};
               Error ->
                   error(Error, W)
           end
    end.

merge_bins_fun(FileName) ->
    fun(close) ->
           ok;
       ({_I, _L, _LSz, W} = A) ->
           Fun = read_fun(FileName, user, W),
           Fun(A)
    end.

wrap_output_terms(term, OutFun, _Z) when is_function(OutFun, 1) ->
    {fun_wterms(OutFun), true};
wrap_output_terms(term, File, Z) when File =/= undefined ->
    {file_wterms(name, File, Z ++ [write]), false};
wrap_output_terms(_Format, Output, _Z) ->
    {Output, is_function(Output, 1)}.

binary_term_fun() ->
    fun erlang:binary_to_term/1.

check_files([], _W, L) ->
    {ok, lists:reverse(L)};
check_files([FN | FNs], W, L) ->
    {IFun, FileName} =
        case FN of
            {fn, Fun, File} ->
                {Fun, File};
            File ->
                {read_fun(File, user, W), File}
        end,
    NW =
        begin
            REC14 = W,
            case REC14 of
                {w, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                 _, _} ->
                    setelement(5, REC14, IFun);
                _ ->
                    error({badrecord, REC14})
            end
        end,
    check_run(IFun, FileName, FNs, NW, L, 2, nolast).

check_run(IFun, F, FNs, W, L, I, Last) ->
    case IFun({{merge, I}, [], 0, W}) of
        {{_I, Objs, _LSz}, IFun1} ->
            NW =
                begin
                    REC15 = W,
                    case REC15 of
                        {w, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                         _, _, _, _} ->
                            setelement(5, REC15, IFun1);
                        _ ->
                            error({badrecord, REC15})
                    end
                end,
            check_objs0(IFun1, F, FNs, NW, L, I, Last,
                        lists:reverse(Objs));
        eof ->
            NW =
                begin
                    REC16 = W,
                    case REC16 of
                        {w, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                         _, _, _, _} ->
                            setelement(5, REC16, undefined);
                        _ ->
                            error({badrecord, REC16})
                    end
                end,
            check_files(FNs, NW, L)
    end.

check_objs0(IFun, F, FNs, W, L, I, nolast, [{T, _BT} | Os]) ->
    check_objs1(IFun, F, FNs, W, L, I, T, Os);
check_objs0(IFun, F, FNs, W, L, I, Last, []) ->
    check_run(IFun, F, FNs, W, L, I, Last);
check_objs0(IFun, F, FNs, W, L, I, {last, Last}, Os) ->
    check_objs1(IFun, F, FNs, W, L, I, Last, Os).

check_objs1(IFun, F, FNs, W, L, I, LastT, Os) ->
    case W of
        {w, _, _, _, _, _, _, _, _, _, _, _, ascending, _, _, _, _,
         true, _, _} ->
            ucheck_objs(IFun, F, FNs, W, L, I, LastT, Os);
        {w, _, _, _, _, _, _, _, _, _, _, _, ascending, _, _, _, _,
         false, _, _} ->
            check_objs(IFun, F, FNs, W, L, I, LastT, Os);
        {w, _, _, _, _, _, _, _, _, _, _, _, descending, _, _, _, _,
         true, _, _} ->
            rucheck_objs(IFun, F, FNs, W, L, I, LastT, Os);
        {w, _, _, _, _, _, _, _, _, _, _, _, descending, _, _, _, _,
         false, _, _} ->
            rcheck_objs(IFun, F, FNs, W, L, I, LastT, Os);
        {w, _, _, _, _, _, _, _, _, _, _, _, CF, _, _, _, _, true, _, _} ->
            uccheck_objs(IFun, F, FNs, W, L, I, LastT, Os, CF);
        {w, _, _, _, _, _, _, _, _, _, _, _, CF, _, _, _, _, false, _,
         _} ->
            ccheck_objs(IFun, F, FNs, W, L, I, LastT, Os, CF)
    end.

check_objs(IFun, F, FNs, W, L, I, Last, [{T, _BT} | Os]) when T >= Last ->
    check_objs(IFun, F, FNs, W, L, I + 1, T, Os);
check_objs(IFun, F, FNs, W, L, I, _Last, [{_T, BT} | _]) ->
    culprit_found(IFun, F, FNs, W, L, I, BT);
check_objs(IFun, F, FNs, W, L, I, Last, []) ->
    check_run(IFun, F, FNs, W, L, I, {last, Last}).

rcheck_objs(IFun, F, FNs, W, L, I, Last, [{T, _BT} | Os]) when T =< Last ->
    rcheck_objs(IFun, F, FNs, W, L, I + 1, T, Os);
rcheck_objs(IFun, F, FNs, W, L, I, _Last, [{_T, BT} | _]) ->
    culprit_found(IFun, F, FNs, W, L, I, BT);
rcheck_objs(IFun, F, FNs, W, L, I, Last, []) ->
    check_run(IFun, F, FNs, W, L, I, {last, Last}).

ucheck_objs(IFun, F, FNs, W, L, I, LT, [{T, _BT} | Os]) when T > LT ->
    ucheck_objs(IFun, F, FNs, W, L, I + 1, T, Os);
ucheck_objs(IFun, F, FNs, W, L, I, _LT, [{_T, BT} | _]) ->
    culprit_found(IFun, F, FNs, W, L, I, BT);
ucheck_objs(IFun, F, FNs, W, L, I, LT, []) ->
    check_run(IFun, F, FNs, W, L, I, {last, LT}).

rucheck_objs(IFun, F, FNs, W, L, I, LT, [{T, _BT} | Os]) when T < LT ->
    rucheck_objs(IFun, F, FNs, W, L, I + 1, T, Os);
rucheck_objs(IFun, F, FNs, W, L, I, _LT, [{_T, BT} | _]) ->
    culprit_found(IFun, F, FNs, W, L, I, BT);
rucheck_objs(IFun, F, FNs, W, L, I, LT, []) ->
    check_run(IFun, F, FNs, W, L, I, {last, LT}).

ccheck_objs(IFun, F, FNs, W, L, I, LT, [{T, BT} | Os], CF) ->
    case CF(LT, T) of
        true ->
            ccheck_objs(IFun, F, FNs, W, L, I + 1, T, Os, CF);
        false ->
            culprit_found(IFun, F, FNs, W, L, I, BT)
    end;
ccheck_objs(IFun, F, FNs, W, L, I, LT, [], _CF) ->
    check_run(IFun, F, FNs, W, L, I, {last, LT}).

uccheck_objs(IFun, F, FNs, W, L, I, LT, [{T, BT} | Os], CF) ->
    case CF(LT, T) of
        true ->
            case CF(T, LT) of
                true ->
                    culprit_found(IFun, F, FNs, W, L, I, BT);
                false ->
                    uccheck_objs(IFun, F, FNs, W, L, I + 1, T, Os, CF)
            end;
        false ->
            culprit_found(IFun, F, FNs, W, L, I, BT)
    end;
uccheck_objs(IFun, F, FNs, W, L, I, LT, [], _CF) ->
    check_run(IFun, F, FNs, W, L, I, {last, LT}).

culprit_found(IFun, F, FNs, W, L, I, [_Size | BT]) ->
    IFun(close),
    check_files(FNs, W, [{F, I, binary_to_term(BT)} | L]).

files(_I, L, _LSz,
      {w, _, _, 1, _, Out, _, _, _, _, _, _, _, _, _, _, _, _, _, _} = W,
      []) ->
    case Out of
        Fun when is_function(Fun) ->
            SL = internal_sort(L, W),
            W1 = outfun(binterm_objects(SL, []), W),
            NW = close_input(W1),
            outfun(close, NW);
        Out ->
            _ = write_run(L, W, Out),
            ok
    end;
files(_I, L, _LSz, W, []) ->
    W1 = write_run(L, W),
    last_merge(lists:append(case W1 of
                                {w, _, REC17, _, _, _, _, _, _, _, _, _,
                                 _, _, _, _, _, _, _, _} ->
                                    REC17;
                                REC17 ->
                                    error({badrecord, REC17})
                            end),
               W1);
files(I, L, LSz, W, Fun) when is_function(Fun) ->
    NW =
        begin
            REC18 = W,
            case REC18 of
                {w, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                 _, _} ->
                    setelement(5, REC18, Fun);
                _ ->
                    error({badrecord, REC18})
            end
        end,
    fun_run(I, L, LSz, NW, []);
files(I, L, LSz, W, [FileName | FileNames]) ->
    InFun = read_fun(FileName, user, W),
    NW =
        begin
            REC19 = W,
            case REC19 of
                {w, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                 _, _} ->
                    setelement(5, REC19, InFun);
                _ ->
                    error({badrecord, REC19})
            end
        end,
    file_run(InFun, FileNames, I, L, LSz, NW).

file_run(InFun, FileNames, I, L, LSz,
         {w, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _} =
             W)
    when
        (true
         orelse
         fail)
        and
        (LSz < element(11, W)) ->
    case InFun({I, L, LSz, W}) of
        {{I1, L1, LSz1}, InFun1} ->
            NW =
                begin
                    REC20 = W,
                    case REC20 of
                        {w, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                         _, _, _, _} ->
                            setelement(5, REC20, InFun1);
                        _ ->
                            error({badrecord, REC20})
                    end
                end,
            file_run(InFun1, FileNames, I1, L1, LSz1, NW);
        eof ->
            NW =
                begin
                    REC21 = W,
                    case REC21 of
                        {w, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                         _, _, _, _} ->
                            setelement(5, REC21, undefined);
                        _ ->
                            error({badrecord, REC21})
                    end
                end,
            files(I, L, LSz, NW, FileNames)
    end;
file_run(InFun, FileNames, I, L, _LSz, W) ->
    NW = write_run(L, W),
    file_run(InFun, FileNames, I, [], 0, NW).

fun_run(I, L, LSz, W, []) ->
    case infun(W) of
        {end_of_input, NW} ->
            files(I, L, LSz, NW, []);
        {cont, NW, Objs} ->
            fun_run(I, L, LSz, NW, Objs)
    end;
fun_run(I, L, LSz,
        {w, _, _, _, _, _, _, _, _, _, Runsize, _, _, _, _, _, _, _, _,
         _} =
            W,
        Objs)
    when LSz < Runsize ->
    {NI, NObjs, NL, NLSz} = fun_objs(Objs, L, LSz, Runsize, I, W),
    fun_run(NI, NL, NLSz, W, NObjs);
fun_run(I, L, _LSz, W, Objs) ->
    NW = write_run(L, W),
    fun_run(I, [], 0, NW, Objs).

write_run([], W) ->
    W;
write_run(L, W) ->
    {W1, Temp} = next_temp(W),
    NW = write_run(L, W1, Temp),
    [R | Rs] =
        case NW of
            {w, _, REC22, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
             _, _} ->
                REC22;
            REC22 ->
                error({badrecord, REC22})
        end,
    merge_runs([[Temp | R] | Rs], [], NW).

write_run(L, W, FileName) ->
    SL = internal_sort(L, W),
    BTs = binterms(SL, []),
    {Fd, W1} = open_file(FileName, W),
    write(Fd, FileName, BTs, W1),
    close_file(Fd, W1).

internal_sort([] = L, _W) ->
    L;
internal_sort(L,
              {w, _, _, _, _, _, _, _, _, _, _, _, CFun, _, _, _, _,
               Unique, _, _})
    when is_function(CFun) ->
    Fun =
        fun({T1, _}, {T2, _}) ->
               CFun(T1, T2)
        end,
    RL = lists:reverse(L),
    lists:reverse(if
                      Unique ->
                          lists:usort(Fun, RL);
                      true ->
                          lists:sort(Fun, RL)
                  end);
internal_sort(L,
              {w, 0, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, true,
               _, _} =
                  W) ->
    rev(lists:usort(L), W);
internal_sort(L,
              {w, 0, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, false,
               _, _} =
                  W) ->
    rev(lists:sort(L), W);
internal_sort(L,
              {w, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, true,
               _, _} =
                  W) ->
    rev(lists:ukeysort(1, lists:reverse(L)), W);
internal_sort(L,
              {w, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, false,
               _, _} =
                  W) ->
    rev(lists:keysort(1, lists:reverse(L)), W).

rev(L,
    {w, _, _, _, _, _, _, _, _, _, _, _, ascending, _, _, _, _, _, _, _}) ->
    lists:reverse(L);
rev(L,
    {w, _, _, _, _, _, _, _, _, _, _, _, descending, _, _, _, _, _, _,
     _}) ->
    L.

last_merge(R,
           {w, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _} =
               W)
    when
        (true
         orelse
         fail)
        and
        (length(R) =< element(12, W)) ->
    case
        case W of
            {w, _, _, _, _, REC23, _, _, _, _, _, _, _, _, _, _, _, _,
             _, _} ->
                REC23;
            REC23 ->
                error({badrecord, REC23})
        end
    of
        Fun when is_function(Fun) ->
            {Fs, W1} = init_merge(lists:reverse(R), 1, [], W),
            ok,
            W2 = merge_files(Fs, [], 0, nolast, W1),
            NW = close_input(W2),
            outfun(close, NW);
        Out ->
            _ = merge_files(R, W, Out),
            ok
    end;
last_merge(R, W) ->
    L = lists:sublist(R,
                      case W of
                          {w, _, _, _, _, _, _, _, _, _, _, REC24, _, _,
                           _, _, _, _, _, _} ->
                              REC24;
                          REC24 ->
                              error({badrecord, REC24})
                      end),
    {M, NW} = merge_files(L, W),
    last_merge([M |
                lists:nthtail(case W of
                                  {w, _, _, _, _, _, _, _, _, _, _,
                                   REC25, _, _, _, _, _, _, _, _} ->
                                      REC25;
                                  REC25 ->
                                      error({badrecord, REC25})
                              end,
                              R)],
               NW).

merge_runs([R | Rs],
           NRs0,
           {w, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _} =
               W)
    when
        (true
         orelse
         fail)
        and
        (length(R) < element(12, W)) ->
    NRs = lists:reverse(NRs0) ++ [R | Rs],
    begin
        REC26 = W,
        case REC26 of
            {w, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _} ->
                setelement(3, REC26, NRs);
            _ ->
                error({badrecord, REC26})
        end
    end;
merge_runs([R], NRs0, W) ->
    {M, NW} = merge_files(R, W),
    NRs = [[] | lists:reverse([[M] | NRs0])],
    begin
        REC27 = NW,
        case REC27 of
            {w, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _} ->
                setelement(3, REC27, NRs);
            _ ->
                error({badrecord, REC27})
        end
    end;
merge_runs([R, R1 | Rs], NRs0, W) ->
    {M, NW} = merge_files(R, W),
    merge_runs([[M | R1] | Rs], [[] | NRs0], NW).

merge_files(R, W) ->
    {W1, Temp} = next_temp(W),
    ok,
    {Temp, merge_files(R, W1, Temp)}.

merge_files(R, W, FileName) ->
    {Fs, W1} = init_merge(lists:reverse(R), 1, [], W),
    {Fd, W2} = open_file(FileName, W1),
    W3 =
        begin
            REC28 = {Fd, FileName},
            REC29 = W2,
            case REC29 of
                {w, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                 _, _} ->
                    setelement(15, REC29, REC28);
                _ ->
                    error({badrecord, REC29})
            end
        end,
    W4 = merge_files(Fs, [], 0, nolast, W3),
    NW =
        begin
            REC30 = W4,
            case REC30 of
                {w, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                 _, _} ->
                    setelement(15, REC30, undefined);
                _ ->
                    error({badrecord, REC30})
            end
        end,
    close_file(Fd, NW).

init_merge([FN | FNs], I, Fs, W) ->
    IFun =
        case FN of
            _ when is_function(FN) ->
                FN;
            _ ->
                read_fun(FN, fsort, W)
        end,
    W1 =
        begin
            REC31 =
                [IFun |
                 lists:delete(FN,
                              case W of
                                  {w, _, _, _, _, _, _, _, REC33, _, _,
                                   _, _, _, _, _, _, _, _, _} ->
                                      REC33;
                                  REC33 ->
                                      error({badrecord, REC33})
                              end)],
            REC32 = W,
            case REC32 of
                {w, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                 _, _} ->
                    setelement(9, REC32, REC31);
                _ ->
                    error({badrecord, REC32})
            end
        end,
    case read_more(IFun, I, 0, W1) of
        {Ts, _LSz, NIFun, NW} ->
            InEtc = {I, NIFun},
            init_merge(FNs, I + 1, [[Ts | InEtc] | Fs], NW);
        {eof, NW} ->
            init_merge(FNs, I + 1, Fs, NW)
    end;
init_merge([], _I, Fs0,
           {w, _, _, _, _, _, _, _, _, _, _, _, ascending, _, _, _, _,
            _, _, _} =
               W) ->
    {lists:sort(Fs0), W};
init_merge([], _I, Fs0,
           {w, _, _, _, _, _, _, _, _, _, _, _, descending, _, _, _, _,
            _, _, _} =
               W) ->
    {lists:reverse(lists:sort(Fs0)), W};
init_merge([], _I, Fs0,
           {w, _, _, _, _, _, _, _, _, _, _, _, Order, _, _, _, _, _, _,
            _} =
               W)
    when is_function(Order) ->
    {lists:sort(cfun_files(case W of
                               {w, _, _, _, _, _, _, _, _, _, _, _,
                                REC34, _, _, _, _, _, _, _} ->
                                   REC34;
                               REC34 ->
                                   error({badrecord, REC34})
                           end),
                lists:reverse(Fs0)),
     W}.

cfun_files(CFun) ->
    fun(F1, F2) ->
           [[{T1, _} | _] | _] = F1,
           [[{T2, _} | _] | _] = F2,
           CFun(T1, T2)
    end.

merge_files([F1, F2 | Fs], L0, LSz, Last0, W) when LSz < 16384 ->
    [Ts0 | InEtc] = F1,
    Kind = merge_kind(W),
    {Last, L, Ts} =
        case {Last0, Kind} of
            {{last, Lst}, Kind} ->
                {Lst, L0, Ts0};
            {nolast, {ukmerge, _Kp}} ->
                [{[T | _I], BT} | Ts1] = Ts0,
                {T, [BT], Ts1};
            {nolast, {rukmerge, _Kp}} ->
                [{[T | _I], BT} | Ts1] = Ts0,
                {{T, BT}, [], Ts1};
            {nolast, _} ->
                [{T, BT} | Ts1] = Ts0,
                {T, [BT], Ts1}
        end,
    [[{T2, BT2} | Ts2T] = Ts2 | InEtc2] = F2,
    {NInEtc, NFs, NL, NLast} =
        case Kind of
            umerge ->
                umerge_files(L, F2, Fs, InEtc2, Ts2, Ts, InEtc, T2,
                             Last);
            {ukmerge, Kp} ->
                ukmerge_files(L, F2, Fs, InEtc2, Ts2, Ts, InEtc, T2, Kp,
                              Last);
            merge ->
                merge_files(L, F2, Fs, InEtc2, BT2, Ts2T, Ts, InEtc, T2);
            rumerge ->
                rumerge_files(L, F2, Fs, InEtc2, Ts2, Ts, InEtc, T2,
                              Last);
            {rukmerge, Kp} ->
                {Lt, LtBT} = Last,
                rukmerge_files(L, F2, Fs, InEtc2, Ts2, Ts, InEtc, T2,
                               Kp, Lt, LtBT);
            rmerge ->
                rmerge_files(L, F2, Fs, InEtc2, BT2, Ts2T, Ts, InEtc,
                             T2);
            {ucmerge, CF} ->
                {I2, _} = InEtc2,
                {I, _} = InEtc,
                ucmerge_files(L, F2, Fs, InEtc2, Ts2, I2, Ts, I, InEtc,
                              T2, CF, Last);
            {cmerge, CF} ->
                {I2, _} = InEtc2,
                {I, _} = InEtc,
                cmerge_files(L, F2, Fs, InEtc2, BT2, Ts2T, I2, Ts, I,
                             InEtc, T2, CF)
        end,
    read_chunk(NInEtc, NFs, NL, LSz, NLast, W);
merge_files([F1], L, LSz, Last, W) when LSz < 16384 ->
    [Ts | InEtc] = F1,
    NL = last_file(Ts, L, Last, merge_kind(W), W),
    read_chunk(InEtc, [], NL, LSz, nolast, W);
merge_files([], [], 0, nolast, W) ->
    merge_write(W, []);
merge_files([], L, _LSz, Last, W) ->
    Last = nolast,
    merge_write(W, L);
merge_files(Fs, L, _LSz, Last, W) ->
    NW = merge_write(W, L),
    merge_files(Fs, [], 0, Last, NW).

merge_kind({w, 0, _, _, _, _, _, _, _, _, _, _, ascending, _, _, _, _,
            true, _, _}) ->
    umerge;
merge_kind({w, Kp, _, _, _, _, _, _, _, _, _, _, ascending, _, _, _, _,
            true, _, _}) ->
    {ukmerge, Kp};
merge_kind({w, _, _, _, _, _, _, _, _, _, _, _, ascending, _, _, _, _,
            false, _, _}) ->
    merge;
merge_kind({w, 0, _, _, _, _, _, _, _, _, _, _, descending, _, _, _, _,
            true, _, _}) ->
    rumerge;
merge_kind({w, Kp, _, _, _, _, _, _, _, _, _, _, descending, _, _, _, _,
            true, _, _}) ->
    {rukmerge, Kp};
merge_kind({w, _, _, _, _, _, _, _, _, _, _, _, descending, _, _, _, _,
            false, _, _}) ->
    rmerge;
merge_kind({w, _, _, _, _, _, _, _, _, _, _, _, CF, _, _, _, _, true, _,
            _}) ->
    {ucmerge, CF};
merge_kind({w, _, _, _, _, _, _, _, _, _, _, _, CF, _, _, _, _, false,
            _, _}) ->
    {cmerge, CF}.

merge_write(W, L) ->
    case
        {case W of
             {w, _, _, _, _, _, _, _, _, _, _, _, _, _, REC35, _, _, _,
              _, _} ->
                 REC35;
             REC35 ->
                 error({badrecord, REC35})
         end,
         case W of
             {w, _, _, _, _, REC36, _, _, _, _, _, _, _, _, _, _, _, _,
              _, _} ->
                 REC36;
             REC36 ->
                 error({badrecord, REC36})
         end}
    of
        {undefined, Fun} when is_function(Fun) ->
            outfun(objects(L, []), W);
        {{Fd, FileName}, _} ->
            write(Fd, FileName, lists:reverse(L), W),
            W
    end.

umerge_files(L, F2, Fs, InEtc2, Ts2, [{T, _BT} | Ts], InEtc, T2, Last)
    when T == Last ->
    umerge_files(L, F2, Fs, InEtc2, Ts2, Ts, InEtc, T2, Last);
umerge_files(L, F2, Fs, InEtc2, Ts2, [{T, BT} | Ts], InEtc, T2, _Last)
    when T =< T2 ->
    umerge_files([BT | L], F2, Fs, InEtc2, Ts2, Ts, InEtc, T2, T);
umerge_files(L, F2, Fs, _InEtc2, _Ts2, [], InEtc, _T2, Last) ->
    {InEtc, [F2 | Fs], L, {last, Last}};
umerge_files(L, _F2, Fs, InEtc2, Ts2, Ts, InEtc, _T2, Last) ->
    [F3 | NFs] = insert([Ts | InEtc], Fs),
    [[{T3, _BT3} | _] = Ts3 | InEtc3] = F3,
    umerge_files(L, F3, NFs, InEtc3, Ts3, Ts2, InEtc2, T3, Last).

rumerge_files(L, F2, Fs, InEtc2, Ts2, [{T, _BT} | Ts], InEtc, T2, Last)
    when T == Last ->
    rumerge_files(L, F2, Fs, InEtc2, Ts2, Ts, InEtc, T2, Last);
rumerge_files(L, F2, Fs, InEtc2, Ts2, [{T, BT} | Ts], InEtc, T2, _Last)
    when T >= T2 ->
    rumerge_files([BT | L], F2, Fs, InEtc2, Ts2, Ts, InEtc, T2, T);
rumerge_files(L, F2, Fs, _InEtc2, _Ts2, [], InEtc, _T2, Last) ->
    {InEtc, [F2 | Fs], L, {last, Last}};
rumerge_files(L, _F2, Fs, InEtc2, Ts2, Ts, InEtc, _T2, Last) ->
    [F3 | NFs] = rinsert([Ts | InEtc], Fs),
    [[{T3, _BT3} | _] = Ts3 | InEtc3] = F3,
    rumerge_files(L, F3, NFs, InEtc3, Ts3, Ts2, InEtc2, T3, Last).

merge_files(L, F2, Fs, InEtc2, BT2, Ts2, [{T, BT} | Ts], InEtc, T2)
    when T =< T2 ->
    merge_files([BT | L], F2, Fs, InEtc2, BT2, Ts2, Ts, InEtc, T2);
merge_files(L, F2, Fs, _InEtc2, _BT2, _Ts2, [], InEtc, _T2) ->
    {InEtc, [F2 | Fs], L, {last, foo}};
merge_files(L, _F2, Fs, InEtc2, BT2, Ts2, Ts, InEtc, _T2) ->
    L1 = [BT2 | L],
    [F3 | NFs] = insert([Ts | InEtc], Fs),
    [[{T3, BT3} | Ts3] | InEtc3] = F3,
    merge_files(L1, F3, NFs, InEtc3, BT3, Ts3, Ts2, InEtc2, T3).

rmerge_files(L, F2, Fs, InEtc2, BT2, Ts2, [{T, BT} | Ts], InEtc, T2)
    when T >= T2 ->
    rmerge_files([BT | L], F2, Fs, InEtc2, BT2, Ts2, Ts, InEtc, T2);
rmerge_files(L, F2, Fs, _InEtc2, _BT2, _Ts2, [], InEtc, _T2) ->
    {InEtc, [F2 | Fs], L, {last, foo}};
rmerge_files(L, _F2, Fs, InEtc2, BT2, Ts2, Ts, InEtc, _T2) ->
    L1 = [BT2 | L],
    [F3 | NFs] = rinsert([Ts | InEtc], Fs),
    [[{T3, BT3} | Ts3] | InEtc3] = F3,
    rmerge_files(L1, F3, NFs, InEtc3, BT3, Ts3, Ts2, InEtc2, T3).

ukmerge_files(L, F2, Fs, InEtc2, Ts2,
              [{[T | _I], _BT} | Ts],
              InEtc, T2, Kp, Last)
    when T == Last ->
    ukmerge_files(L, F2, Fs, InEtc2, Ts2, Ts, InEtc, T2, Kp, Last);
ukmerge_files(L, F2, Fs, InEtc2, Ts2,
              [{[T0 | _I] = T, BT} | Ts],
              InEtc, T2, Kp, _Last)
    when T =< T2 ->
    ukmerge_files([BT | L], F2, Fs, InEtc2, Ts2, Ts, InEtc, T2, Kp, T0);
ukmerge_files(L, F2, Fs, _InEtc2, _Ts2, [], InEtc, _T2, _Kp, Last) ->
    {InEtc, [F2 | Fs], L, {last, Last}};
ukmerge_files(L, _F2, Fs, InEtc2, Ts2, Ts, InEtc, _T2, Kp, Last) ->
    [F3 | NFs] = insert([Ts | InEtc], Fs),
    [[{T3, _BT3} | _] = Ts3 | InEtc3] = F3,
    ukmerge_files(L, F3, NFs, InEtc3, Ts3, Ts2, InEtc2, T3, Kp, Last).

rukmerge_files(L, F2, Fs, InEtc2, Ts2,
               [{[T | _I], BT} | Ts],
               InEtc, T2, Kp, Last, _LastBT)
    when T == Last ->
    rukmerge_files(L, F2, Fs, InEtc2, Ts2, Ts, InEtc, T2, Kp, T, BT);
rukmerge_files(L, F2, Fs, InEtc2, Ts2,
               [{[T0 | _I] = T, BT} | Ts],
               InEtc, T2, Kp, _Last, LastBT)
    when T >= T2 ->
    rukmerge_files([LastBT | L],
                   F2, Fs, InEtc2, Ts2, Ts, InEtc, T2, Kp, T0, BT);
rukmerge_files(L, F2, Fs, _InEtc2, _Ts2, [], InEtc, _T2, _Kp, Last,
               LastBT) ->
    {InEtc, [F2 | Fs], L, {last, {Last, LastBT}}};
rukmerge_files(L, _F2, Fs, InEtc2, Ts2, Ts, InEtc, _T2, Kp, Last,
               LastBT) ->
    [F3 | NFs] = rinsert([Ts | InEtc], Fs),
    [[{T3, _BT3} | _] = Ts3 | InEtc3] = F3,
    rukmerge_files(L, F3, NFs, InEtc3, Ts3, Ts2, InEtc2, T3, Kp, Last,
                   LastBT).

ucmerge_files(L, F2, Fs, InEtc2, Ts2, I2,
              [{T, BT} | Ts] = Ts0,
              I, InEtc, T2, CF, Last)
    when I < I2 ->
    case CF(T, T2) of
        true ->
            case CF(T, Last) of
                true ->
                    ucmerge_files(L, F2, Fs, InEtc2, Ts2, I2, Ts, I,
                                  InEtc, T2, CF, Last);
                false ->
                    ucmerge_files([BT | L],
                                  F2, Fs, InEtc2, Ts2, I2, Ts, I, InEtc,
                                  T2, CF, T)
            end;
        false ->
            [F3 | NFs] = cinsert([Ts0 | InEtc], Fs, CF),
            [[{T3, _BT3} | _] = Ts3 | {I3, _} = InEtc3] = F3,
            ucmerge_files(L, F3, NFs, InEtc3, Ts3, I3, Ts2, I2, InEtc2,
                          T3, CF, Last)
    end;
ucmerge_files(L, F2, Fs, InEtc2, Ts2, I2,
              [{T, BT} | Ts] = Ts0,
              I, InEtc, T2, CF, Last) ->
    case CF(T2, T) of
        true ->
            [F3 | NFs] = cinsert([Ts0 | InEtc], Fs, CF),
            [[{T3, _BT3} | _] = Ts3 | {I3, _} = InEtc3] = F3,
            ucmerge_files(L, F3, NFs, InEtc3, Ts3, I3, Ts2, I2, InEtc2,
                          T3, CF, Last);
        false ->
            case CF(T, Last) of
                true ->
                    ucmerge_files(L, F2, Fs, InEtc2, Ts2, I2, Ts, I,
                                  InEtc, T2, CF, Last);
                false ->
                    ucmerge_files([BT | L],
                                  F2, Fs, InEtc2, Ts2, I2, Ts, I, InEtc,
                                  T2, CF, T)
            end
    end;
ucmerge_files(L, F2, Fs, _InEtc2, _Ts2, _I2, [], _I, InEtc, _T2, _CF,
              Last) ->
    {InEtc, [F2 | Fs], L, {last, Last}}.

cmerge_files(L, F2, Fs, InEtc2, BT2, Ts2, I2,
             [{T, BT} | Ts] = Ts0,
             I, InEtc, T2, CF)
    when I < I2 ->
    case CF(T, T2) of
        true ->
            cmerge_files([BT | L],
                         F2, Fs, InEtc2, BT2, Ts2, I2, Ts, I, InEtc, T2,
                         CF);
        false ->
            L1 = [BT2 | L],
            [F3 | NFs] = cinsert([Ts0 | InEtc], Fs, CF),
            [[{T3, BT3} | Ts3] | {I3, _} = InEtc3] = F3,
            cmerge_files(L1, F3, NFs, InEtc3, BT3, Ts3, I3, Ts2, I2,
                         InEtc2, T3, CF)
    end;
cmerge_files(L, F2, Fs, InEtc2, BT2, Ts2, I2,
             [{T, BT} | Ts] = Ts0,
             I, InEtc, T2, CF) ->
    case CF(T2, T) of
        true ->
            L1 = [BT2 | L],
            [F3 | NFs] = cinsert([Ts0 | InEtc], Fs, CF),
            [[{T3, BT3} | Ts3] | {I3, _} = InEtc3] = F3,
            cmerge_files(L1, F3, NFs, InEtc3, BT3, Ts3, I3, Ts2, I2,
                         InEtc2, T3, CF);
        false ->
            cmerge_files([BT | L],
                         F2, Fs, InEtc2, BT2, Ts2, I2, Ts, I, InEtc, T2,
                         CF)
    end;
cmerge_files(L, F2, Fs, _InEtc2, _BT2, _Ts2, _I2, [], _I, InEtc, _T2,
             _CF) ->
    {InEtc, [F2 | Fs], L, {last, foo}}.

last_file(Ts, L, {last, T}, {ukmerge, _}, _W) ->
    kulast_file(Ts, T, L);
last_file(Ts, L, {last, {T, BT}}, {rukmerge, _}, _W) ->
    ruklast_file(Ts, T, BT, L);
last_file(Ts, L, {last, T}, {ucmerge, CF}, _W) ->
    uclast_file(Ts, T, CF, L);
last_file(Ts, L,
          {last, T},
          _Kind,
          {w, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, true, _,
           _}) ->
    ulast_file(Ts, T, L);
last_file(Ts, L, _Last, _Kind, _W) ->
    last_file(Ts, L).

ulast_file([{T, _BT} | Ts], Last, L) when Last == T ->
    last_file(Ts, L);
ulast_file(Ts, _Last, L) ->
    last_file(Ts, L).

kulast_file([{[T | _I], _BT} | Ts], Last, L) when Last == T ->
    last_file(Ts, L);
kulast_file(Ts, _Last, L) ->
    last_file(Ts, L).

ruklast_file([{[T | _I], BT} | Ts], Last, _LastBT, L) when Last == T ->
    last_file(Ts, [BT | L]);
ruklast_file(Ts, _Last, LastBT, L) ->
    last_file(Ts, [LastBT | L]).

uclast_file([{T, BT} | Ts], Last, CF, L) ->
    case CF(T, Last) of
        true ->
            last_file(Ts, L);
        false ->
            last_file(Ts, [BT | L])
    end.

last_file([{_Ta, BTa}, {_Tb, BTb} | Ts], L) ->
    last_file(Ts, [BTb, BTa | L]);
last_file([{_T, BT} | Ts], L) ->
    last_file(Ts, [BT | L]);
last_file([], L) ->
    L.

insert(A, [X1, X2, X3, X4 | Xs]) when A > X4 ->
    [X1, X2, X3, X4 | insert(A, Xs)];
insert(A, [X1, X2, X3 | T]) when A > X3 ->
    [X1, X2, X3, A | T];
insert(A, [X1, X2 | Xs]) when A > X2 ->
    [X1, X2, A | Xs];
insert(A, [X1 | T]) when A > X1 ->
    [X1, A | T];
insert(A, Xs) ->
    [A | Xs].

rinsert(A, [X1, X2, X3, X4 | Xs]) when A < X4 ->
    [X1, X2, X3, X4 | rinsert(A, Xs)];
rinsert(A, [X1, X2, X3 | T]) when A < X3 ->
    [X1, X2, X3, A | T];
rinsert(A, [X1, X2 | Xs]) when A < X2 ->
    [X1, X2, A | Xs];
rinsert(A, [X1 | T]) when A < X1 ->
    [X1, A | T];
rinsert(A, Xs) ->
    [A | Xs].

cinsert(A, [F1 | [F2 | [F3 | [F4 | Fs] = T4] = T3] = T2] = T1, CF) ->
    case cfun(CF, F4, A) of
        true ->
            [F1, F2, F3, F4 | cinsert(A, Fs, CF)];
        false ->
            case cfun(CF, F2, A) of
                true ->
                    [F1, F2 |
                     case cfun(CF, F3, A) of
                         true ->
                             [F3, A | T4];
                         false ->
                             [A | T3]
                     end];
                false ->
                    case cfun(CF, F1, A) of
                        true ->
                            [F1, A | T2];
                        false ->
                            [A | T1]
                    end
            end
    end;
cinsert(A, [F1 | [F2 | Fs] = T2] = T1, CF) ->
    case cfun(CF, F2, A) of
        true ->
            [F1, F2 | cinsert(A, Fs, CF)];
        false ->
            case cfun(CF, F1, A) of
                true ->
                    [F1, A | T2];
                false ->
                    [A | T1]
            end
    end;
cinsert(A, [F | Fs] = T, CF) ->
    case cfun(CF, F, A) of
        true ->
            [F, A | Fs];
        false ->
            [A | T]
    end;
cinsert(A, _, _CF) ->
    [A].

cfun(CF, F1, F2) ->
    [[{T1, _} | _] | {I1, _}] = F1,
    [[{T2, _} | _] | {I2, _}] = F2,
    if
        I1 < I2 ->
            CF(T1, T2);
        true ->
            not CF(T2, T1)
    end.

binterm_objects([{_T, [_Sz | BT]} | Ts], L) ->
    binterm_objects(Ts, [BT | L]);
binterm_objects([], L) ->
    L.

objects([[_Sz | BT] | Ts], L) ->
    objects(Ts, [BT | L]);
objects([], L) ->
    L.

binterms([{_T1, BT1}, {_T2, BT2} | Ts], L) ->
    binterms(Ts, [BT2, BT1 | L]);
binterms([{_T, BT} | Ts], L) ->
    binterms(Ts, [BT | L]);
binterms([], L) ->
    L.

read_chunk(InEtc, Fs, L, LSz, Last, W) ->
    {I, IFun} = InEtc,
    case read_more(IFun, I, LSz, W) of
        {Ts, NLSz, NIFun,
         {w, _, _, _, _, _, _, _, _, _, _, _, ascending, _, _, _, _, _,
          _, _} =
             NW} ->
            NInEtc = {I, NIFun},
            NFs = insert([Ts | NInEtc], Fs),
            merge_files(NFs, L, NLSz, Last, NW);
        {Ts, NLSz, NIFun,
         {w, _, _, _, _, _, _, _, _, _, _, _, descending, _, _, _, _, _,
          _, _} =
             NW} ->
            NInEtc = {I, NIFun},
            NFs = rinsert([Ts | NInEtc], Fs),
            merge_files(NFs, L, NLSz, Last, NW);
        {Ts, NLSz, NIFun, NW} ->
            NInEtc = {I, NIFun},
            NFs =
                cinsert([Ts | NInEtc],
                        Fs,
                        case NW of
                            {w, _, _, _, _, _, _, _, _, _, _, _, REC37,
                             _, _, _, _, _, _, _} ->
                                REC37;
                            REC37 ->
                                error({badrecord, REC37})
                        end),
            merge_files(NFs, L, NLSz, Last, NW);
        {eof, NW} ->
            merge_files(Fs, L, LSz, Last, NW)
    end.

read_more(IFun, I, LSz, W) ->
    case IFun({{merge, I}, [], LSz, W}) of
        {{_, [], NLSz}, NIFun} ->
            read_more(NIFun, I, NLSz, W);
        {{_, L, NLSz}, NInFun} ->
            NW =
                case
                    lists:member(IFun,
                                 case W of
                                     {w, _, _, _, _, _, _, _, REC38, _,
                                      _, _, _, _, _, _, _, _, _, _} ->
                                         REC38;
                                     REC38 ->
                                         error({badrecord, REC38})
                                 end)
                of
                    true ->
                        begin
                            REC39 =
                                [NInFun |
                                 lists:delete(IFun,
                                              case W of
                                                  {w, _, _, _, _, _, _,
                                                   _, REC41, _, _, _, _,
                                                   _, _, _, _, _, _, _} ->
                                                      REC41;
                                                  REC41 ->
                                                      error({badrecord,
                                                             REC41})
                                              end)],
                            REC40 = W,
                            case REC40 of
                                {w, _, _, _, _, _, _, _, _, _, _, _, _,
                                 _, _, _, _, _, _, _} ->
                                    setelement(9, REC40, REC39);
                                _ ->
                                    error({badrecord, REC40})
                            end
                        end;
                    false ->
                        W
                end,
            {lists:reverse(L), NLSz, NInFun, NW};
        eof ->
            NW =
                begin
                    REC42 =
                        lists:delete(IFun,
                                     case W of
                                         {w, _, _, _, _, _, _, _, REC44,
                                          _, _, _, _, _, _, _, _, _, _,
                                          _} ->
                                             REC44;
                                         REC44 ->
                                             error({badrecord, REC44})
                                     end),
                    REC43 = W,
                    case REC43 of
                        {w, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                         _, _, _, _} ->
                            setelement(9, REC43, REC42);
                        _ ->
                            error({badrecord, REC43})
                    end
                end,
            {eof, NW}
    end.

read_fun(FileName, Owner, W) ->
    case file:open(FileName, [raw, binary, read, compressed]) of
        {ok, Fd} ->
            read_fun2(Fd, <<>>, 0, FileName, Owner);
        Error ->
            file_error(FileName, Error, W)
    end.

read_fun2(Fd, Bin, Size, FileName, Owner) ->
    fun(close) ->
           close_read_fun(Fd, FileName, Owner);
       ({I, L, LSz, W}) ->
           case read_objs(Fd, FileName, I, L, Bin, Size, LSz, W) of
               {{I1, L1, Bin1, Size1}, LSz1} ->
                   NIFun = read_fun2(Fd, Bin1, Size1, FileName, Owner),
                   {{I1, L1, LSz1}, NIFun};
               eof ->
                   close_read_fun(Fd, FileName, Owner),
                   eof
           end
    end.

close_read_fun(Fd, _FileName, user) ->
    _ = file:close(Fd),
    ok;
close_read_fun(Fd, FileName, fsort) ->
    _ = file:close(Fd),
    _ = file:delete(FileName),
    ok.

read_objs(Fd, FileName, I, L, Bin0, Size0, LSz, W) ->
    Max = max(Size0, 16384),
    BSz0 = byte_size(Bin0),
    Min =
        Size0 - BSz0
        +
        case W of
            {w, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
             REC45, _} ->
                REC45;
            REC45 ->
                error({badrecord, REC45})
        end,
    NoBytes = max(Min, Max),
    case read(Fd, FileName, NoBytes, W) of
        {ok, Bin} ->
            BSz = byte_size(Bin),
            NLSz = LSz + BSz,
            case
                catch
                    file_loop(L, I, Bin0, Bin, Size0, BSz0, BSz, Min, W)
            of
                {'EXIT', _R} ->
                    error({error, {bad_object, FileName}}, W);
                Reply ->
                    {Reply, NLSz}
            end;
        eof when byte_size(Bin0) =:= 0 ->
            eof;
        eof ->
            error({error, {premature_eof, FileName}}, W)
    end.

file_loop(L, I, _B1, B2, Sz, 0, _B2Sz, _Min, W) ->
    file_loop(L, I, B2, Sz, W);
file_loop(L, I, B1, B2, Sz, _B1Sz, B2Sz, Min, W) when B2Sz > Min ->
    {B3, B4} = split_binary(B2, Min),
    {I1, L1, <<>>, Sz1} =
        file_loop(L, I, list_to_binary([B1, B3]), Sz, W),
    file_loop(L1, I1, B4, Sz1, W);
file_loop(L, I, B1, B2, Sz, _B1Sz, _B2Sz, _Min, W) ->
    file_loop(L, I, list_to_binary([B1, B2]), Sz, W).

file_loop(L, I, B, Sz, W) ->
    {w, Kp, _, _, _, _, _, _, _, Format, _, _, _, _, _, _, _, _, HdLen,
     _} =
        W,
    file_loop1(L, I, B, Sz, Kp, Format, HdLen).

file_loop1(L, I, HB, 0, Kp, F, HdLen) ->
    <<Size:HdLen/unit:8,B/binary>> = HB,
    file_loop2(L, I, B, Size, <<Size:HdLen/unit:8>>, Kp, F, HdLen);
file_loop1(L, I, B, Sz, Kp, F, HdLen) ->
    file_loop2(L, I, B, Sz, <<Sz:HdLen/unit:8>>, Kp, F, HdLen).

file_loop2(L, _I, B, Sz, SzB, 0, binary, HdLen) ->
    {NL, NB, NSz, NSzB} = file_binloop(L, Sz, SzB, B, HdLen),
    if
        byte_size(NB) =:= NSz ->
            <<Bin:NSz/binary>> = NB,
            {0, [{Bin, [NSzB | Bin]} | NL], <<>>, 0};
        true ->
            {0, NL, NB, NSz}
    end;
file_loop2(L, _I, B, Sz, SzB, 0, Fun, HdLen) ->
    file_binterm_loop(L, Sz, SzB, B, Fun, HdLen);
file_loop2(L, {merge, I}, B, Sz, SzB, Kp, Fun, HdLen) ->
    merge_loop(Kp, I, L, Sz, SzB, B, Fun, HdLen);
file_loop2(L, I, B, Sz, SzB, Kp, Fun, HdLen) when is_integer(I) ->
    key_loop(Kp, I, L, Sz, SzB, B, Fun, HdLen).

file_binloop(L, Size, SizeB, B, HL) ->
    case B of
        <<Bin:Size/binary,NSizeB:HL/binary,R/binary>> ->
            <<NSize:HL/unit:8>> = NSizeB,
            file_binloop([{Bin, [SizeB | Bin]} | L],
                         NSize, NSizeB, R, HL);
        _ ->
            {L, B, Size, SizeB}
    end.

file_binterm_loop(L, Size, SizeB, B, Fun, HL) ->
    case B of
        <<BinTerm:Size/binary,NSizeB:HL/binary,R/binary>> ->
            <<NSize:HL/unit:8>> = NSizeB,
            BT = [SizeB | BinTerm],
            Term = Fun(BinTerm),
            file_binterm_loop([{Term, BT} | L],
                              NSize, NSizeB, R, Fun, HL);
        <<BinTerm:Size/binary>> ->
            Term = Fun(BinTerm),
            NL = [{Term, [SizeB | BinTerm]} | L],
            {0, NL, <<>>, 0};
        _ ->
            {0, L, B, Size}
    end.

key_loop(KeyPos, I, L, Size, SizeB, B, Fun, HL) ->
    case B of
        <<BinTerm:Size/binary,NSizeB:HL/binary,R/binary>> ->
            <<NSize:HL/unit:8>> = NSizeB,
            BT = [SizeB | BinTerm],
            UniqueKey = make_key(KeyPos, Fun(BinTerm)),
            E = {UniqueKey, BT},
            key_loop(KeyPos, I + 1, [E | L], NSize, NSizeB, R, Fun, HL);
        <<BinTerm:Size/binary>> ->
            UniqueKey = make_key(KeyPos, Fun(BinTerm)),
            NL = [{UniqueKey, [SizeB | BinTerm]} | L],
            {I + 1, NL, <<>>, 0};
        _ ->
            {I, L, B, Size}
    end.

merge_loop(KeyPos, I, L, Size, SizeB, B, Fun, HL) ->
    case B of
        <<BinTerm:Size/binary,NSizeB:HL/binary,R/binary>> ->
            <<NSize:HL/unit:8>> = NSizeB,
            BT = [SizeB | BinTerm],
            UniqueKey = make_stable_key(KeyPos, I, Fun(BinTerm)),
            E = {UniqueKey, BT},
            merge_loop(KeyPos, I, [E | L], NSize, NSizeB, R, Fun, HL);
        <<BinTerm:Size/binary>> ->
            UniqueKey = make_stable_key(KeyPos, I, Fun(BinTerm)),
            NL = [{UniqueKey, [SizeB | BinTerm]} | L],
            {{merge, I}, NL, <<>>, 0};
        _ ->
            {{merge, I}, L, B, Size}
    end.

fun_objs(Objs, L, LSz, NoBytes, I, W) ->
    {w, Keypos, _, _, _, _, _, _, _, Format, _, _, _, _, _, _, _, _, HL,
     _} =
        W,
    case catch fun_loop(Objs, L, LSz, NoBytes, I, Keypos, Format, HL) of
        {'EXIT', _R} ->
            error({error, bad_object}, W);
        Reply ->
            Reply
    end.

fun_loop(Objs, L, LSz, RunSize, _I, 0, binary, HdLen) ->
    fun_binloop(Objs, L, LSz, RunSize, HdLen);
fun_loop(Objs, L, LSz, RunSize, _I, 0, Fun, HdLen) ->
    fun_loop(Objs, L, LSz, RunSize, Fun, HdLen);
fun_loop(Objs, L, LSz, RunSize, {merge, I}, Keypos, Fun, HdLen) ->
    fun_mergeloop(Objs, L, LSz, RunSize, I, Keypos, Fun, HdLen);
fun_loop(Objs, L, LSz, RunSize, I, Keypos, Fun, HdLen)
    when is_integer(I) ->
    fun_keyloop(Objs, L, LSz, RunSize, I, Keypos, Fun, HdLen).

fun_binloop([B | Bs], L, LSz, RunSize, HL) when LSz < RunSize ->
    Size = byte_size(B),
    Obj = {B, [<<Size:HL/unit:8>> | B]},
    fun_binloop(Bs, [Obj | L], LSz + Size, RunSize, HL);
fun_binloop(Bs, L, LSz, _RunSize, _HL) ->
    {0, Bs, L, LSz}.

fun_loop([B | Bs], L, LSz, RunSize, Fun, HL) when LSz < RunSize ->
    Size = byte_size(B),
    Obj = {Fun(B), [<<Size:HL/unit:8>> | B]},
    fun_loop(Bs, [Obj | L], LSz + Size, RunSize, Fun, HL);
fun_loop(Bs, L, LSz, _RunSize, _Fun, _HL) ->
    {0, Bs, L, LSz}.

fun_keyloop([B | Bs], L, LSz, RunSize, I, Kp, Fun, HL)
    when LSz < RunSize ->
    Size = byte_size(B),
    UniqueKey = make_key(Kp, Fun(B)),
    E = {UniqueKey, [<<Size:HL/unit:8>> | B]},
    fun_keyloop(Bs, [E | L], LSz + Size, RunSize, I + 1, Kp, Fun, HL);
fun_keyloop(Bs, L, LSz, _RunSize, I, _Kp, _Fun, _HL) ->
    {I, Bs, L, LSz}.

fun_mergeloop([B | Bs], L, LSz, RunSize, I, Kp, Fun, HL)
    when LSz < RunSize ->
    Size = byte_size(B),
    UniqueKey = make_stable_key(Kp, I, Fun(B)),
    E = {UniqueKey, [<<Size:HL/unit:8>> | B]},
    fun_mergeloop(Bs, [E | L], LSz + Size, RunSize, I, Kp, Fun, HL);
fun_mergeloop(Bs, L, LSz, _RunSize, I, _Kp, _Fun, _HL) ->
    {{merge, I}, Bs, L, LSz}.

make_key(Kp, T) when is_integer(Kp) ->
    element(Kp, T);
make_key([Kp1, Kp2], T) ->
    [element(Kp1, T), element(Kp2, T)];
make_key([Kp1, Kp2 | Kps], T) ->
    [element(Kp1, T), element(Kp2, T) | make_key2(Kps, T)].

make_stable_key(Kp, I, T) when is_integer(Kp) ->
    [element(Kp, T) | I];
make_stable_key([Kp1, Kp2], I, T) ->
    [[element(Kp1, T) | element(Kp2, T)] | I];
make_stable_key([Kp1, Kp2 | Kps], I, T) ->
    [[element(Kp1, T), element(Kp2, T) | make_key2(Kps, T)] | I].

make_key2([Kp], T) ->
    [element(Kp, T)];
make_key2([Kp | Kps], T) ->
    [element(Kp, T) | make_key2(Kps, T)].

infun(W) ->
    W1 =
        begin
            REC46 = W,
            case REC46 of
                {w, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                 _, _} ->
                    setelement(5, REC46, undefined);
                _ ->
                    error({badrecord, REC46})
            end
        end,
    try
        case W of
            {w, _, _, _, REC47, _, _, _, _, _, _, _, _, _, _, _, _, _,
             _, _} ->
                REC47;
            REC47 ->
                error({badrecord, REC47})
        end(read)
    of
        end_of_input ->
            {end_of_input, W1};
        {end_of_input, Value} ->
            {end_of_input,
             begin
                 REC48 = {value, Value},
                 REC49 = W1,
                 case REC49 of
                     {w, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                      _, _, _} ->
                         setelement(20, REC49, REC48);
                     _ ->
                         error({badrecord, REC49})
                 end
             end};
        {Objs, NFun} when is_function(NFun, 1), is_list(Objs) ->
            {cont,
             begin
                 REC50 = W,
                 case REC50 of
                     {w, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                      _, _, _} ->
                         setelement(5, REC50, NFun);
                     _ ->
                         error({badrecord, REC50})
                 end
             end,
             Objs};
        Error ->
            error(Error, W1)
    catch
        Class:Reason:Stacktrace ->
            cleanup(W1),
            erlang:raise(Class, Reason, Stacktrace)
    end.

outfun(A,
       {w, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, Val} =
           W)
    when Val =/= no_value ->
    W1 =
        begin
            REC51 = W,
            case REC51 of
                {w, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                 _, _} ->
                    setelement(20, REC51, no_value);
                _ ->
                    error({badrecord, REC51})
            end
        end,
    W2 =
        if
            (is_record(W1, w, 20)
             orelse
             fail)
            and
            element(7, W1) ->
                outfun(Val, W1);
            true ->
                W1
        end,
    outfun(A, W2);
outfun(A, W) ->
    W1 =
        begin
            REC52 = W,
            case REC52 of
                {w, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                 _, _} ->
                    setelement(6, REC52, undefined);
                _ ->
                    error({badrecord, REC52})
            end
        end,
    try
        case W of
            {w, _, _, _, _, REC53, _, _, _, _, _, _, _, _, _, _, _, _,
             _, _} ->
                REC53;
            REC53 ->
                error({badrecord, REC53})
        end(A)
    of
        Reply when A =:= close ->
            Reply;
        NF when is_function(NF, 1) ->
            begin
                REC54 = W,
                case REC54 of
                    {w, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                     _, _, _} ->
                        setelement(6, REC54, NF);
                    _ ->
                        error({badrecord, REC54})
                end
            end;
        Error ->
            error(Error, W1)
    catch
        Class:Reason:Stacktrace ->
            cleanup(W1),
            erlang:raise(Class, Reason, Stacktrace)
    end.

is_keypos(Keypos) when is_integer(Keypos), Keypos > 0 ->
    true;
is_keypos([]) ->
    {badarg, []};
is_keypos(L) ->
    is_keyposs(L).

is_keyposs([Kp | Kps]) when is_integer(Kp), Kp > 0 ->
    is_keyposs(Kps);
is_keyposs([]) ->
    true;
is_keyposs([Bad | _]) ->
    {badarg, Bad};
is_keyposs(Bad) ->
    {badarg, Bad}.

is_input(Fun) when is_function(Fun, 1) ->
    {true, Fun};
is_input(Files) ->
    is_files(Files).

is_files(Fs) ->
    is_files(Fs, []).

is_files([F | Fs], L) ->
    case read_file_info(F) of
        {ok, File, _FI} ->
            is_files(Fs, [File | L]);
        Error ->
            Error
    end;
is_files([], L) ->
    {true, lists:reverse(L)};
is_files(Bad, _L) ->
    {badarg, Bad}.

maybe_output(Fun) when is_function(Fun, 1) ->
    {true, Fun};
maybe_output(File) ->
    case read_file_info(File) of
        {badarg, _File} = Badarg ->
            Badarg;
        {ok, FileName, _FileInfo} ->
            {true, FileName};
        {error, {file_error, FileName, _Reason}} ->
            {true, FileName}
    end.

read_file_info(File) ->
    case catch filename:absname(File) of
        {'EXIT', _} ->
            {badarg, File};
        FileName ->
            case file:read_file_info(FileName) of
                {ok, FileInfo} ->
                    {ok, FileName, FileInfo};
                {error, einval} ->
                    {badarg, File};
                {error, Reason} ->
                    {error, {file_error, FileName, Reason}}
            end
    end.

next_temp(W) ->
    Seq =
        case W of
            {w, _, _, REC55, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
             _, _} ->
                REC55;
            REC55 ->
                error({badrecord, REC55})
        end,
    NW =
        begin
            REC56 = Seq + 1,
            REC57 = W,
            case REC57 of
                {w, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                 _, _} ->
                    setelement(4, REC57, REC56);
                _ ->
                    error({badrecord, REC57})
            end
        end,
    Temp =
        lists:concat([case W of
                          {w, _, _, _, _, _, _, REC58, _, _, _, _, _, _,
                           _, _, _, _, _, _} ->
                              REC58;
                          REC58 ->
                              error({badrecord, REC58})
                      end,
                      Seq]),
    {NW, Temp}.

tmp_prefix(F, TmpDirOpt) when is_function(F); F =:= undefined ->
    {ok, CurDir} = file:get_cwd(),
    tmp_prefix1(CurDir, TmpDirOpt);
tmp_prefix(OutFile, TmpDirOpt) ->
    Dir = filename:dirname(OutFile),
    tmp_prefix1(Dir, TmpDirOpt).

tmp_prefix1(Dir, TmpDirOpt) ->
    U = "_",
    Node = node(),
    Pid = os:getpid(),
    Unique = erlang:unique_integer([positive]),
    F = lists:concat(["fs_", Node, U, Pid, U, Unique, "."]),
    TmpDir =
        case TmpDirOpt of
            default ->
                Dir;
            {dir, TDir} ->
                TDir
        end,
    filename:join(filename:absname(TmpDir), F).

open_file(FileName, W) ->
    case
        file:open(FileName,
                  case W of
                      {w, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                       REC59, _, _, _} ->
                          REC59;
                      REC59 ->
                          error({badrecord, REC59})
                  end
                  ++
                  [raw, binary, write])
    of
        {ok, Fd} ->
            {Fd,
             begin
                 REC60 =
                     [{Fd, FileName} |
                      case W of
                          {w, _, _, _, _, _, _, _, REC62, _, _, _, _, _,
                           _, _, _, _, _, _} ->
                              REC62;
                          REC62 ->
                              error({badrecord, REC62})
                      end],
                 REC61 = W,
                 case REC61 of
                     {w, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                      _, _, _} ->
                         setelement(9, REC61, REC60);
                     _ ->
                         error({badrecord, REC61})
                 end
             end};
        Error ->
            file_error(FileName, Error, W)
    end.

read(Fd, FileName, N, W) ->
    case file:read(Fd, N) of
        {ok, Bin} ->
            {ok, Bin};
        eof ->
            eof;
        {error, enomem} ->
            error({error, {bad_object, FileName}}, W);
        {error, einval} ->
            error({error, {bad_object, FileName}}, W);
        Error ->
            file_error(FileName, Error, W)
    end.

write(Fd, FileName, B, W) ->
    case file:write(Fd, B) of
        ok ->
            ok;
        Error ->
            file_error(FileName, Error, W)
    end.

-spec file_error(_, {error, atom()}, #w{}) -> no_return().

file_error(File, {error, Reason}, W) ->
    error({error, {file_error, File, Reason}}, W).

error(Error, W) ->
    cleanup(W),
    throw({case W of
               {w, _, _, _, _, _, _, _, _, _, _, _, _, _, _, REC63, _,
                _, _, _} ->
                   REC63;
               REC63 ->
                   error({badrecord, REC63})
           end,
           Error}).

cleanup(W) ->
    close_out(W),
    W1 = close_input(W),
    F = fun(IFun) when is_function(IFun) ->
               IFun(close);
           ({Fd, FileName}) ->
               _ = file:close(Fd),
               _ = file:delete(FileName);
           (FileName) ->
               _ = file:delete(FileName)
        end,
    lists:foreach(F,
                  case W1 of
                      {w, _, _, _, _, _, _, _, REC64, _, _, _, _, _, _,
                       _, _, _, _, _} ->
                          REC64;
                      REC64 ->
                          error({badrecord, REC64})
                  end).

close_input({w, _, _, _, In, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
             _} =
                W)
    when is_function(In) ->
    catch In(close),
    begin
        REC65 = W,
        case REC65 of
            {w, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _} ->
                setelement(5, REC65, undefined);
            _ ->
                error({badrecord, REC65})
        end
    end;
close_input({w, _, _, _, undefined, _, _, _, _, _, _, _, _, _, _, _, _,
             _, _, _} =
                W) ->
    W.

close_out({w, _, _, _, _, Out, _, _, _, _, _, _, _, _, _, _, _, _, _, _})
    when is_function(Out) ->
    catch Out(close);
close_out(_) ->
    ok.

close_file(Fd, W) ->
    {Fd, FileName} =
        lists:keyfind(Fd, 1,
                      case W of
                          {w, _, _, _, _, _, _, _, REC66, _, _, _, _, _,
                           _, _, _, _, _, _} ->
                              REC66;
                          REC66 ->
                              error({badrecord, REC66})
                      end),
    ok,
    case file:close(Fd) of
        ok ->
            begin
                REC67 =
                    [FileName |
                     lists:keydelete(Fd, 1,
                                     case W of
                                         {w, _, _, _, _, _, _, _, REC69,
                                          _, _, _, _, _, _, _, _, _, _,
                                          _} ->
                                             REC69;
                                         REC69 ->
                                             error({badrecord, REC69})
                                     end)],
                REC68 = W,
                case REC68 of
                    {w, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                     _, _, _} ->
                        setelement(9, REC68, REC67);
                    _ ->
                        error({badrecord, REC68})
                end
            end;
        Error ->
            file_error(FileName, Error, W)
    end.

file_rterms(no_file, Files) ->
    fun(close) ->
           ok;
       (read) when Files =:= [] ->
           end_of_input;
       (read) ->
           [F | Fs] = Files,
           case file:open(F, [read, compressed]) of
               {ok, Fd} ->
                   file_rterms2(Fd, [], 0, F, Fs);
               {error, Reason} ->
                   {error, {file_error, F, Reason}}
           end
    end;
file_rterms({Fd, FileName}, Files) ->
    fun(close) ->
           file:close(Fd);
       (read) ->
           file_rterms2(Fd, [], 0, FileName, Files)
    end.

file_rterms2(Fd, L, LSz, FileName, Files) when LSz < 16384 ->
    case io:read(Fd, '') of
        {ok, Term} ->
            B = term_to_binary(Term),
            file_rterms2(Fd,
                         [B | L],
                         LSz + byte_size(B),
                         FileName, Files);
        eof ->
            _ = file:close(Fd),
            {lists:reverse(L), file_rterms(no_file, Files)};
        _Error ->
            _ = file:close(Fd),
            {error, {bad_term, FileName}}
    end;
file_rterms2(Fd, L, _LSz, FileName, Files) ->
    {lists:reverse(L), file_rterms({Fd, FileName}, Files)}.

file_wterms(W, F, Args) ->
    fun(close) when W =:= name ->
           ok;
       (close) ->
           {fd, Fd} = W,
           file:close(Fd);
       (L) when W =:= name ->
           case file:open(F, Args) of
               {ok, Fd} ->
                   write_terms(Fd, F, L, Args);
               {error, Reason} ->
                   {error, {file_error, F, Reason}}
           end;
       (L) ->
           {fd, Fd} = W,
           write_terms(Fd, F, L, Args)
    end.

write_terms(Fd, F, [B | Bs], Args) ->
    case io:request(Fd, {format, "~p.~n", [binary_to_term(B)]}) of
        ok ->
            write_terms(Fd, F, Bs, Args);
        {error, Reason} ->
            _ = file:close(Fd),
            {error, {file_error, F, Reason}}
    end;
write_terms(Fd, F, [], Args) ->
    file_wterms({fd, Fd}, F, Args).

fun_rterms(InFun) ->
    fun(close) ->
           InFun(close);
       (read) ->
           case InFun(read) of
               {Ts, NInFun} when is_list(Ts), is_function(NInFun, 1) ->
                   {to_bin(Ts, []), fun_rterms(NInFun)};
               Else ->
                   Else
           end
    end.

fun_wterms(OutFun) ->
    fun(close) ->
           OutFun(close);
       (L) ->
           case OutFun(wterms_arg(L)) of
               NOutFun when is_function(NOutFun, 1) ->
                   fun_wterms(NOutFun);
               Else ->
                   Else
           end
    end.

to_bin([E | Es], L) ->
    to_bin(Es, [term_to_binary(E) | L]);
to_bin([], L) ->
    lists:reverse(L).

wterms_arg(L) when is_list(L) ->
    to_term(L, []);
wterms_arg(Value) ->
    Value.

to_term([B | Bs], L) ->
    to_term(Bs, [binary_to_term(B) | L]);
to_term([], L) ->
    lists:reverse(L).



