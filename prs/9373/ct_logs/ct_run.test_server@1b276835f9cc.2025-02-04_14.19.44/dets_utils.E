-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.2/src/dets_utils.erl", 1).

-module(dets_utils).

-compile(nowarn_deprecated_catch).

-export([cmp/2,msort/1,mkeysort/2,mkeysearch/3,family/1]).

-export([rename/2,
         pread/2,
         pread/4,
         ipread/3,
         pwrite/2,
         write/2,
         truncate/2,
         position/2,
         sync/1,
         open/2,
         truncate/3,
         fwrite/3,
         write_file/2,
         position/3,
         position_close/3,
         pwrite/3,
         pread_close/4,
         read_n/2,
         pread_n/3,
         read_4/2]).

-export([code_to_type/1,type_to_code/1]).

-export([corrupt_reason/2,
         corrupt/2,
         corrupt_file/2,
         vformat/2,
         file_error/2]).

-export([debug_mode/0,bad_object/2]).

-export([cache_lookup/4,
         cache_size/1,
         new_cache/1,
         reset_cache/1,
         is_empty_cache/1]).

-export([empty_free_lists/0,
         init_alloc/1,
         alloc_many/4,
         alloc/2,
         free/3,
         get_freelists/1,
         all_free/1,
         all_allocated/1,
         all_allocated_as_list/1,
         find_allocated/4,
         find_next_allocated/3,
         log2/1,
         make_zeros/1]).

-export([list_to_tree/1,tree_to_bin/5]).

-compile({inline, [{sz2pos, 1}, {adjust_addr, 3}]}).

-compile({inline,
          [{bplus_mk_leaf, 1},
           {bplus_get_size, 1},
           {bplus_get_tree, 2},
           {bplus_get_lkey, 2},
           {bplus_get_rkey, 2}]}).

-export([init_disk_map/1,
         stop_disk_map/0,
         disk_map_segment_p/2,
         disk_map_segment/2]).

-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.2/src/dets.hrl", 1).

-type access() :: read | read_write.

-type auto_save() :: infinity | non_neg_integer().

-type hash_bif() :: phash | phash2.

-type keypos() :: pos_integer().

-type no_colls() ::
          [{LogSize :: non_neg_integer(),
            NoCollections :: non_neg_integer()}].

-type no_slots() :: default | non_neg_integer().

-type tab_name() :: term().

-type type() :: bag | duplicate_bag | set.

-type update_mode() ::
          dirty | new_dirty | saved | {error, Reason :: term()}.

-record(head,{m :: non_neg_integer(),
              m2 :: non_neg_integer(),
              next :: non_neg_integer(),
              fptr :: file:fd(),
              no_objects :: non_neg_integer(),
              no_keys :: non_neg_integer(),
              maxobjsize :: undefined | non_neg_integer(),
              n,
              type :: type(),
              keypos :: keypos(),
              freelists :: undefined | tuple(),
              freelists_p :: undefined | non_neg_integer(),
              no_collections :: undefined | no_colls(),
              auto_save :: auto_save(),
              update_mode :: update_mode(),
              fixed =
                  false ::
                      false |
                      {{integer(), integer()},
                       [{pid(), non_neg_integer()}]},
              hash_bif :: hash_bif(),
              has_md5 :: boolean(),
              min_no_slots :: no_slots(),
              max_no_slots :: no_slots(),
              cache :: undefined | cache(),
              filename :: file:name(),
              access = read_write :: access(),
              ram_file = false :: boolean(),
              name :: tab_name(),
              parent :: undefined | pid(),
              server :: undefined | pid(),
              bump :: non_neg_integer(),
              base :: non_neg_integer()}).

-record(fileheader,{freelist :: non_neg_integer(),
                    fl_base :: non_neg_integer(),
                    cookie :: non_neg_integer(),
                    closed_properly :: non_neg_integer(),
                    type :: badtype | type(),
                    version :: non_neg_integer(),
                    m :: non_neg_integer(),
                    next :: non_neg_integer(),
                    keypos :: keypos(),
                    no_objects :: non_neg_integer(),
                    no_keys :: non_neg_integer(),
                    min_no_slots :: non_neg_integer(),
                    max_no_slots :: non_neg_integer(),
                    no_colls :: undefined | no_colls(),
                    hash_method :: non_neg_integer(),
                    read_md5 :: binary(),
                    has_md5 :: boolean(),
                    md5 :: binary(),
                    trailer :: non_neg_integer(),
                    eof :: non_neg_integer(),
                    n}).

-type delay() :: non_neg_integer().

-type threshold() :: non_neg_integer().

-type cache_parms() :: {Delay :: delay(), Size :: threshold()}.

-record(cache,{cache ::
                   [{Key :: term(),
                     {Seq :: non_neg_integer(), Item :: term()}}],
               csize :: non_neg_integer(),
               inserts :: non_neg_integer(),
               wrtime :: undefined | integer(),
               tsize :: threshold(),
               delay :: delay()}).

-type cache() :: #cache{}.

-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.2/src/dets_utils.erl", 62).

cmp(T, T) ->
    0;
cmp([E1 | T1], [E2 | T2]) ->
    case cmp(E1, E2) of
        0 ->
            cmp(T1, T2);
        R ->
            R
    end;
cmp(T1, T2) when tuple_size(T1) =:= tuple_size(T2) ->
    tcmp(T1, T2, 1, tuple_size(T1));
cmp(I, F) when is_integer(I), is_float(F) ->
    -1;
cmp(F, I) when is_float(F), is_integer(I) ->
    1;
cmp(T1, T2) when T1 < T2 ->
    -1;
cmp(_T1, _T2) ->
    1.

tcmp(T1, T2, I, I) ->
    cmp(element(I, T1), element(I, T2));
tcmp(T1, T2, I, N) ->
    case cmp(element(I, T1), element(I, T2)) of
        0 ->
            tcmp(T1, T2, I + 1, N);
        R ->
            R
    end.

msort(L) ->
    F = fun(X, Y) ->
               cmp(X, Y) =< 0
        end,
    lists:sort(F, lists:sort(L)).

mkeysort(I, L) ->
    F = fun(X, Y) ->
               cmp(element(I, X), element(I, Y)) =< 0
        end,
    lists:sort(F, lists:keysort(I, L)).

mkeysearch(Key, I, L) ->
    case lists:keysearch(Key, I, L) of
        {value, Value} = Reply when element(I, Value) =:= Key ->
            Reply;
        false ->
            false;
        _ ->
            mkeysearch2(Key, I, L)
    end.

mkeysearch2(_Key, _I, []) ->
    false;
mkeysearch2(Key, I, [E | _L]) when element(I, E) =:= Key ->
    {value, E};
mkeysearch2(Key, I, [_ | L]) ->
    mkeysearch2(Key, I, L).

family([]) ->
    [];
family(L) ->
    [{K, V} | KVL] = mkeysort(1, L),
    per_key(KVL, K, [V], []).

per_key([], K, Vs, KVs) ->
    lists:reverse(KVs, [{K, msort(Vs)}]);
per_key([{K, V} | L], K, Vs, KVs) ->
    per_key(L, K, [V | Vs], KVs);
per_key([{K1, V} | L], K, Vs, KVs) ->
    per_key(L, K1, [V], [{K, msort(Vs)} | KVs]).

rename(From, To) ->
    case file:rename(From, To) of
        ok ->
            ok;
        {error, Reason} ->
            {error, {file_error, {From, To}, Reason}}
    end.

pread(Positions, Head) ->
    R = case
            file:pread(case Head of
                           {head, _, _, _, REC0, _, _, _, _, _, _, _, _,
                            _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                            _, _} ->
                               REC0;
                           REC0 ->
                               error({badrecord, REC0})
                       end,
                       Positions)
        of
            {ok, Bins} ->
                case lists:member(eof, Bins) of
                    true ->
                        {error,
                         {premature_eof,
                          case Head of
                              {head, _, _, _, _, _, _, _, _, _, _, _, _,
                               _, _, _, _, _, _, _, _, _, REC1, _, _, _,
                               _, _, _, _} ->
                                  REC1;
                              REC1 ->
                                  error({badrecord, REC1})
                          end}};
                    false ->
                        {ok, Bins}
                end;
            {error, Reason} when enomem =:= Reason; einval =:= Reason ->
                {error,
                 {bad_object_header,
                  case Head of
                      {head, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                       _, _, _, _, _, _, _, REC2, _, _, _, _, _, _, _} ->
                          REC2;
                      REC2 ->
                          error({badrecord, REC2})
                  end}};
            {error, Reason} ->
                {file_error,
                 case Head of
                     {head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                      _, _, _, _, _, _, REC3, _, _, _, _, _, _, _} ->
                         REC3;
                     REC3 ->
                         error({badrecord, REC3})
                 end,
                 Reason}
        end,
    case R of
        {ok, _Bins} ->
            R;
        Error ->
            throw(corrupt(Head, Error))
    end.

pread(Head, Pos, Min, Extra) ->
    R = case
            file:pread(case Head of
                           {head, _, _, _, REC4, _, _, _, _, _, _, _, _,
                            _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                            _, _} ->
                               REC4;
                           REC4 ->
                               error({badrecord, REC4})
                       end,
                       Pos,
                       Min + Extra)
        of
            {error, Reason} when enomem =:= Reason; einval =:= Reason ->
                {error,
                 {bad_object_header,
                  case Head of
                      {head, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                       _, _, _, _, _, _, _, REC5, _, _, _, _, _, _, _} ->
                          REC5;
                      REC5 ->
                          error({badrecord, REC5})
                  end}};
            {error, Reason} ->
                {file_error,
                 case Head of
                     {head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                      _, _, _, _, _, _, REC6, _, _, _, _, _, _, _} ->
                         REC6;
                     REC6 ->
                         error({badrecord, REC6})
                 end,
                 Reason};
            {ok, Bin} when byte_size(Bin) < Min ->
                {error,
                 {premature_eof,
                  case Head of
                      {head, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                       _, _, _, _, _, _, _, REC7, _, _, _, _, _, _, _} ->
                          REC7;
                      REC7 ->
                          error({badrecord, REC7})
                  end}};
            OK ->
                OK
        end,
    case R of
        {ok, _Bin} ->
            R;
        Error ->
            throw(corrupt(Head, Error))
    end.

ipread(Head, Pos1, MaxSize) ->
    try
        disk_map_pread(Pos1)
    catch
        throw:Bad ->
            throw(corrupt_reason(Head, {disk_map, Bad}))
    end,
    case
        file:ipread_s32bu_p32bu(case Head of
                                    {head, _, _, _, REC8, _, _, _, _, _,
                                     _, _, _, _, _, _, _, _, _, _, _, _,
                                     _, _, _, _, _, _, _, _} ->
                                        REC8;
                                    REC8 ->
                                        error({badrecord, REC8})
                                end,
                                Pos1, MaxSize)
    of
        {ok, {0, 0, eof}} ->
            [];
        {ok, Reply} ->
            {ok, Reply};
        _Else ->
            eof
    end.

pwrite(Head, []) ->
    {Head, ok};
pwrite(Head, Bins) ->
    try
        disk_map(Bins)
    catch
        throw:Bad ->
            throw(corrupt_reason(Head, {disk_map, Bad, Bins}))
    end,
    case
        file:pwrite(case Head of
                        {head, _, _, _, REC9, _, _, _, _, _, _, _, _, _,
                         _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _} ->
                            REC9;
                        REC9 ->
                            error({badrecord, REC9})
                    end,
                    Bins)
    of
        ok ->
            {Head, ok};
        Error ->
            corrupt_file(Head, Error)
    end.

write(_Head, []) ->
    ok;
write(Head, Bins) ->
    case
        file:write(case Head of
                       {head, _, _, _, REC10, _, _, _, _, _, _, _, _, _,
                        _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _} ->
                           REC10;
                       REC10 ->
                           error({badrecord, REC10})
                   end,
                   Bins)
    of
        ok ->
            ok;
        Error ->
            corrupt_file(Head, Error)
    end.

write_file(Head, Bin) ->
    R = case
            file:open(case Head of
                          {head, _, _, _, _, _, _, _, _, _, _, _, _, _,
                           _, _, _, _, _, _, _, _, REC11, _, _, _, _, _,
                           _, _} ->
                              REC11;
                          REC11 ->
                              error({badrecord, REC11})
                      end,
                      [binary, raw, write])
        of
            {ok, Fd} ->
                R1 = file:write(Fd, Bin),
                R2 = file:sync(Fd),
                R3 = file:close(Fd),
                case {R1, R2, R3} of
                    {ok, ok, R3} ->
                        R3;
                    {ok, R2, _} ->
                        R2;
                    {R1, _, _} ->
                        R1
                end;
            Else ->
                Else
        end,
    case R of
        ok ->
            ok;
        Error ->
            corrupt_file(Head, Error)
    end.

truncate(Head, Pos) ->
    case
        catch
            truncate(case Head of
                         {head, _, _, _, REC12, _, _, _, _, _, _, _, _,
                          _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                          _, _} ->
                             REC12;
                         REC12 ->
                             error({badrecord, REC12})
                     end,
                     case Head of
                         {head, _, _, _, _, _, _, _, _, _, _, _, _, _,
                          _, _, _, _, _, _, _, _, REC13, _, _, _, _, _,
                          _, _} ->
                             REC13;
                         REC13 ->
                             error({badrecord, REC13})
                     end,
                     Pos)
    of
        ok ->
            ok;
        Error ->
            throw(corrupt(Head, Error))
    end.

position(Head, Pos) ->
    case
        file:position(case Head of
                          {head, _, _, _, REC14, _, _, _, _, _, _, _, _,
                           _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                           _, _} ->
                              REC14;
                          REC14 ->
                              error({badrecord, REC14})
                      end,
                      Pos)
    of
        {error, _Reason} = Error ->
            corrupt_file(Head, Error);
        OK ->
            OK
    end.

sync(Head) ->
    case
        file:sync(case Head of
                      {head, _, _, _, REC15, _, _, _, _, _, _, _, _, _,
                       _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _} ->
                          REC15;
                      REC15 ->
                          error({badrecord, REC15})
                  end)
    of
        ok ->
            ok;
        Error ->
            corrupt_file(Head, Error)
    end.

open(FileSpec, Args) ->
    case file:open(FileSpec, Args) of
        {ok, Fd} ->
            {ok, Fd};
        Error ->
            file_error(FileSpec, Error)
    end.

truncate(Fd, FileName, Pos) ->
    _ = [ 
         position(Fd, FileName, Pos) ||
             Pos =/= cur
        ],
    case file:truncate(Fd) of
        ok ->
            ok;
        Error ->
            file_error(FileName, {error, Error})
    end.

fwrite(Fd, FileName, B) ->
    case file:write(Fd, B) of
        ok ->
            ok;
        Error ->
            file_error_close(Fd, FileName, Error)
    end.

position(Fd, FileName, Pos) ->
    case file:position(Fd, Pos) of
        {error, Error} ->
            file_error(FileName, {error, Error});
        OK ->
            OK
    end.

position_close(Fd, FileName, Pos) ->
    case file:position(Fd, Pos) of
        {error, Error} ->
            file_error_close(Fd, FileName, {error, Error});
        OK ->
            OK
    end.

pwrite(Fd, FileName, Bins) ->
    case file:pwrite(Fd, Bins) of
        ok ->
            ok;
        {error, {_NoWrites, Reason}} ->
            file_error(FileName, {error, Reason})
    end.

pread_close(Fd, FileName, Pos, Size) ->
    case file:pread(Fd, Pos, Size) of
        {error, Error} ->
            file_error_close(Fd, FileName, {error, Error});
        {ok, Bin} when byte_size(Bin) < Size ->
            _ = file:close(Fd),
            throw({error, {tooshort, FileName}});
        eof ->
            _ = file:close(Fd),
            throw({error, {tooshort, FileName}});
        OK ->
            OK
    end.

file_error(FileName, {error, Reason}) ->
    throw({error, {file_error, FileName, Reason}}).

file_error_close(Fd, FileName, {error, Reason}) ->
    _ = file:close(Fd),
    throw({error, {file_error, FileName, Reason}}).

debug_mode() ->
    os:getenv("DETS_DEBUG") =:= "true".

bad_object(Where, Extra) ->
    case debug_mode() of
        true ->
            {bad_object, Where, Extra};
        false ->
            {bad_object, Where}
    end.

read_n(Fd, Max) ->
    case file:read(Fd, Max) of
        {ok, Bin} ->
            Bin;
        _Else ->
            eof
    end.

pread_n(Fd, Position, Max) ->
    case file:pread(Fd, Position, Max) of
        {ok, Bin} ->
            Bin;
        _ ->
            eof
    end.

read_4(Fd, Position) ->
    {ok, _} = file:position(Fd, Position),
    <<Four:32>> = dets_utils:read_n(Fd, 4),
    Four.

corrupt_file(Head, {error, Reason}) ->
    Error =
        {error,
         {file_error,
          case Head of
              {head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
               _, _, _, _, REC16, _, _, _, _, _, _, _} ->
                  REC16;
              REC16 ->
                  error({badrecord, REC16})
          end,
          Reason}},
    throw(corrupt(Head, Error)).

corrupt_reason(Head, Reason0) ->
    Reason =
        case get_disk_map() of
            no_disk_map ->
                Reason0;
            DM ->
                {current_stacktrace, ST} =
                    process_info(self(), current_stacktrace),
                PD = get(),
                {Reason0, ST, PD, DM}
        end,
    Error =
        {error,
         {Reason,
          case Head of
              {head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
               _, _, _, _, REC17, _, _, _, _, _, _, _} ->
                  REC17;
              REC17 ->
                  error({badrecord, REC17})
          end}},
    corrupt(Head, Error).

corrupt(Head, Error) ->
    case get(verbose) of
        yes ->
            error_logger:format("** dets: Corrupt table ~tp: ~tp\n",
                                [case Head of
                                     {head, _, _, _, _, _, _, _, _, _,
                                      _, _, _, _, _, _, _, _, _, _, _,
                                      _, _, _, _, REC18, _, _, _, _} ->
                                         REC18;
                                     REC18 ->
                                         error({badrecord, REC18})
                                 end,
                                 Error]);
        _ ->
            ok
    end,
    case
        case Head of
            {head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, REC19, _,
             _, _, _, _, _, _, _, _, _, _, _, _, _} ->
                REC19;
            REC19 ->
                error({badrecord, REC19})
        end
    of
        {error, _} ->
            {Head, Error};
        _ ->
            {begin
                 REC20 = Head,
                 case REC20 of
                     {head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                      _, _, _, _, _, _, _, _, _, _, _, _, _, _} ->
                         setelement(16, REC20, Error);
                     _ ->
                         error({badrecord, REC20})
                 end
             end,
             Error}
    end.

vformat(F, As) ->
    case get(verbose) of
        yes ->
            error_logger:format(F, As);
        _ ->
            ok
    end.

code_to_type(1) ->
    set;
code_to_type(2) ->
    bag;
code_to_type(3) ->
    duplicate_bag;
code_to_type(_Type) ->
    badtype.

type_to_code(set) ->
    1;
type_to_code(bag) ->
    2;
type_to_code(duplicate_bag) ->
    3.

cache_size(C) ->
    {case C of
         {cache, _, _, _, _, _, REC21} ->
             REC21;
         REC21 ->
             error({badrecord, REC21})
     end,
     case C of
         {cache, _, _, _, _, REC22, _} ->
             REC22;
         REC22 ->
             error({badrecord, REC22})
     end}.

cache_lookup(Type, [Key | Keys], CL, LU) ->
    case mkeysearch(Key, 1, CL) of
        {value, {Key, {_Seq, {insert, Object}}}} when Type =:= set ->
            cache_lookup(Type, Keys, CL, [Object | LU]);
        {value, {Key, {_Seq, delete_key}}} ->
            cache_lookup(Type, Keys, CL, LU);
        _ ->
            false
    end;
cache_lookup(_Type, [], _CL, LU) ->
    LU.

reset_cache(C) ->
    WrTime =
        case C of
            {cache, _, _, _, REC23, _, _} ->
                REC23;
            REC23 ->
                error({badrecord, REC23})
        end,
    NewWrTime =
        if
            WrTime =:= undefined ->
                WrTime;
            true ->
                erlang:monotonic_time(1000000)
        end,
    PK =
        family(case C of
                   {cache, REC24, _, _, _, _, _} ->
                       REC24;
                   REC24 ->
                       error({badrecord, REC24})
               end),
    NewC =
        begin
            REC25 = C,
            case REC25 of
                {cache, _, _, _, _, _, _} ->
                    setelement(2,
                               setelement(3,
                                          setelement(4,
                                                     setelement(5,
                                                                REC25,
                                                                NewWrTime),
                                                     0),
                                          0),
                               []);
                _ ->
                    error({badrecord, REC25})
            end
        end,
    {NewC,
     case C of
         {cache, _, _, REC26, _, _, _} ->
             REC26;
         REC26 ->
             error({badrecord, REC26})
     end,
     PK}.

is_empty_cache(Cache) ->
    case Cache of
        {cache, REC27, _, _, _, _, _} ->
            REC27;
        REC27 ->
            error({badrecord, REC27})
    end
    =:=
    [].

new_cache({Delay, Size}) ->
    {cache, [], 0, 0, undefined, Size, Delay}.

init_alloc(Base) ->
    Ftab = empty_free_lists(),
    Empty = bplus_empty_tree(),
    setelement(32, Ftab, bplus_insert(Empty, Base)).

empty_free_lists() ->
    Empty = bplus_empty_tree(),
    erlang:make_tuple(32, Empty).

alloc_many(Head, _Sz, 0, _A0) ->
    Head;
alloc_many(Head, Sz, N, A0) ->
    Ftab =
        case Head of
            {head, _, _, _, _, _, _, _, _, _, _, REC28, _, _, _, _, _,
             _, _, _, _, _, _, _, _, _, _, _, _, _} ->
                REC28;
            REC28 ->
                error({badrecord, REC28})
        end,
    begin
        REC29 = alloc_many1(Ftab, 1, Sz * N, A0, Head),
        REC30 = Head,
        case REC30 of
            {head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
             _, _, _, _, _, _, _, _, _, _, _} ->
                setelement(12, REC30, REC29);
            _ ->
                error({badrecord, REC30})
        end
    end.

alloc_many1(Ftab, Pos, Size, A0, H) ->
    {FPos, Addr} = find_first_free(Ftab, Pos, Pos, H),
    true = Addr >= A0,
    if
        1 bsl (FPos - 1) >= Size ->
            alloc_many2(Ftab, sz2pos(Size), Size, A0, H);
        true ->
            NewFtab = reserve_buddy(Ftab, FPos, FPos, Addr),
            NSize = Size - (1 bsl (FPos - 1)),
            alloc_many1(NewFtab, FPos, NSize, Addr, H)
    end.

alloc_many2(Ftab, _Pos, 0, _A0, _H) ->
    Ftab;
alloc_many2(Ftab, Pos, Size, A0, H) when Size band (1 bsl (Pos - 1)) > 0 ->
    {FPos, Addr} = find_first_free(Ftab, Pos, Pos, H),
    true = Addr >= A0,
    NewFtab = reserve_buddy(Ftab, FPos, Pos, Addr),
    NSize = Size - (1 bsl (Pos - 1)),
    alloc_many2(NewFtab, Pos - 1, NSize, Addr, H);
alloc_many2(Ftab, Pos, Size, A0, H) ->
    alloc_many2(Ftab, Pos - 1, Size, A0, H).

alloc({head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
       _, _, _, _, _, _, _, _, _} =
          Head,
      Sz)
    when
        (true
         orelse
         fail)
        and
        (element(17, Head) =/= false) ->
    true,
    Pos = sz2pos(Sz),
    {Frozen, Ftab} =
        case Head of
            {head, _, _, _, _, _, _, _, _, _, _, REC31, _, _, _, _, _,
             _, _, _, _, _, _, _, _, _, _, _, _, _} ->
                REC31;
            REC31 ->
                error({badrecord, REC31})
        end,
    {FPos, Addr} = find_first_free(Frozen, Pos, Pos, Head),
    NewFrozen = reserve_buddy(Frozen, FPos, Pos, Addr),
    Ftab1 =
        undo_free(Ftab, FPos, Addr,
                  case Head of
                      {head, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                       _, _, _, _, _, _, _, _, _, _, _, _, _, _, REC32} ->
                          REC32;
                      REC32 ->
                          error({badrecord, REC32})
                  end),
    NewFtab = move_down(Ftab1, FPos, Pos, Addr),
    NewFreelists = {NewFrozen, NewFtab},
    {begin
         REC33 = Head,
         case REC33 of
             {head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
              _, _, _, _, _, _, _, _, _, _, _, _} ->
                 setelement(12, REC33, NewFreelists);
             _ ->
                 error({badrecord, REC33})
         end
     end,
     Addr, Pos};
alloc({head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
       _, _, _, _, _, _, _, _, _} =
          Head,
      Sz)
    when
        (true
         orelse
         fail)
        and
        (element(17, Head) =:= false) ->
    true,
    Pos = sz2pos(Sz),
    Ftab =
        case Head of
            {head, _, _, _, _, _, _, _, _, _, _, REC34, _, _, _, _, _,
             _, _, _, _, _, _, _, _, _, _, _, _, _} ->
                REC34;
            REC34 ->
                error({badrecord, REC34})
        end,
    {FPos, Addr} = find_first_free(Ftab, Pos, Pos, Head),
    NewFtab = reserve_buddy(Ftab, FPos, Pos, Addr),
    {begin
         REC35 = Head,
         case REC35 of
             {head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
              _, _, _, _, _, _, _, _, _, _, _, _} ->
                 setelement(12, REC35, NewFtab);
             _ ->
                 error({badrecord, REC35})
         end
     end,
     Addr, Pos}.

find_first_free(_Ftab, Pos, _Pos0, Head) when Pos > 32 ->
    throw({error,
           {no_more_space_on_file,
            case Head of
                {head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                 _, _, _, _, _, REC36, _, _, _, _, _, _, _} ->
                    REC36;
                REC36 ->
                    error({badrecord, REC36})
            end}});
find_first_free(Ftab, Pos, Pos0, Head) ->
    PosTab = element(Pos, Ftab),
    case bplus_lookup_first(PosTab) of
        undefined ->
            find_first_free(Ftab, Pos + 1, Pos0, Head);
        {ok, Addr}
            when Addr + (1 bsl (Pos0 - 1)) > 1 bsl (32 - 1) - 50000000 ->
            throw({error,
                   {no_more_space_on_file,
                    case Head of
                        {head, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                         _, _, _, _, _, _, _, REC37, _, _, _, _, _, _,
                         _} ->
                            REC37;
                        REC37 ->
                            error({badrecord, REC37})
                    end}});
        {ok, Addr} ->
            {Pos, Addr}
    end.

undo_free(Ftab, Pos, Addr, Base) ->
    PosTab = element(Pos, Ftab),
    case bplus_lookup(PosTab, Addr) of
        undefined ->
            {BuddyAddr, MoveUpAddr} =
                my_buddy(Addr, 1 bsl (Pos - 1), Base),
            NewFtab =
                setelement(Pos, Ftab, bplus_insert(PosTab, BuddyAddr)),
            undo_free(NewFtab, Pos + 1, MoveUpAddr, Base);
        {ok, Addr} ->
            NewPosTab = bplus_delete(PosTab, Addr),
            setelement(Pos, Ftab, NewPosTab)
    end.

reserve_buddy(Ftab, Pos, Pos0, Addr) ->
    PosTab = element(Pos, Ftab),
    NewPosTab = bplus_delete(PosTab, Addr),
    NewFtab = setelement(Pos, Ftab, NewPosTab),
    move_down(NewFtab, Pos, Pos0, Addr).

move_down(Ftab, Pos, Pos, _Addr) ->
    true,
    Ftab;
move_down(Ftab, Pos, Pos0, Addr) ->
    Pos_1 = Pos - 1,
    Size = 1 bsl Pos_1,
    HighBuddy = Addr + (Size bsr 1),
    NewPosTab_1 = bplus_insert(element(Pos_1, Ftab), HighBuddy),
    NewFtab = setelement(Pos_1, Ftab, NewPosTab_1),
    move_down(NewFtab, Pos_1, Pos0, Addr).

free(Head, Addr, Sz) ->
    true,
    Ftab = get_freelists(Head),
    Pos = sz2pos(Sz),
    {set_freelists(Head,
                   free_in_pos(Ftab, Addr, Pos,
                               case Head of
                                   {head, _, _, _, _, _, _, _, _, _, _,
                                    _, _, _, _, _, _, _, _, _, _, _, _,
                                    _, _, _, _, _, _, REC38} ->
                                       REC38;
                                   REC38 ->
                                       error({badrecord, REC38})
                               end)),
     Pos}.

free_in_pos(Ftab, _Addr, Pos, _Base) when Pos > 32 ->
    Ftab;
free_in_pos(Ftab, Addr, Pos, Base) ->
    PosTab = element(Pos, Ftab),
    {BuddyAddr, MoveUpAddr} = my_buddy(Addr, 1 bsl (Pos - 1), Base),
    case bplus_lookup(PosTab, BuddyAddr) of
        undefined ->
            true,
            setelement(Pos, Ftab, bplus_insert(PosTab, Addr));
        {ok, BuddyAddr} ->
            PosTab1 = bplus_delete(PosTab, Addr),
            PosTab2 = bplus_delete(PosTab1, BuddyAddr),
            true,
            NewFtab = setelement(Pos, Ftab, PosTab2),
            free_in_pos(NewFtab, MoveUpAddr, Pos + 1, Base)
    end.

get_freelists({head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
               _, _, _, _, _, _, _, _, _, _, _, _} =
                  Head)
    when
        (true
         orelse
         fail)
        and
        (element(17, Head) =:= false) ->
    case Head of
        {head, _, _, _, _, _, _, _, _, _, _, REC39, _, _, _, _, _, _, _,
         _, _, _, _, _, _, _, _, _, _, _} ->
            REC39;
        REC39 ->
            error({badrecord, REC39})
    end;
get_freelists({head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
               _, _, _, _, _, _, _, _, _, _, _, _} =
                  Head)
    when
        (true
         orelse
         fail)
        and
        (element(17, Head) =/= false) ->
    {_Frozen, Current} =
        case Head of
            {head, _, _, _, _, _, _, _, _, _, _, REC40, _, _, _, _, _,
             _, _, _, _, _, _, _, _, _, _, _, _, _} ->
                REC40;
            REC40 ->
                error({badrecord, REC40})
        end,
    Current.

set_freelists({head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
               _, _, _, _, _, _, _, _, _, _, _, _} =
                  Head,
              Ftab)
    when
        (true
         orelse
         fail)
        and
        (element(17, Head) =:= false) ->
    begin
        REC41 = Head,
        case REC41 of
            {head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
             _, _, _, _, _, _, _, _, _, _, _} ->
                setelement(12, REC41, Ftab);
            _ ->
                error({badrecord, REC41})
        end
    end;
set_freelists({head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
               _, _, _, _, _, _, _, _, _, _, _, _} =
                  Head,
              Ftab)
    when
        (true
         orelse
         fail)
        and
        (element(17, Head) =/= false) ->
    {Frozen, _} =
        case Head of
            {head, _, _, _, _, _, _, _, _, _, _, REC42, _, _, _, _, _,
             _, _, _, _, _, _, _, _, _, _, _, _, _} ->
                REC42;
            REC42 ->
                error({badrecord, REC42})
        end,
    begin
        REC43 = {Frozen, Ftab},
        REC44 = Head,
        case REC44 of
            {head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
             _, _, _, _, _, _, _, _, _, _, _} ->
                setelement(12, REC44, REC43);
            _ ->
                error({badrecord, REC44})
        end
    end.

sz2pos(N) when N > 0 ->
    1 + log2(N + 1).

log2(N) when is_integer(N), N >= 0 ->
    if
        N > 1 bsl 8 ->
            if
                N > 1 bsl 10 ->
                    if
                        N > 1 bsl 11 ->
                            if
                                N > 1 bsl 12 ->
                                    12
                                    +
                                    if
                                        N band (1 bsl 12 - 1) =:= 0 ->
                                            log2(N bsr 12);
                                        true ->
                                            log2(1 + (N bsr 12))
                                    end;
                                true ->
                                    12
                            end;
                        true ->
                            11
                    end;
                N > 1 bsl 9 ->
                    10;
                true ->
                    9
            end;
        N > 1 bsl 4 ->
            if
                N > 1 bsl 6 ->
                    if
                        N > 1 bsl 7 ->
                            8;
                        true ->
                            7
                    end;
                N > 1 bsl 5 ->
                    6;
                true ->
                    5
            end;
        N > 1 bsl 2 ->
            if
                N > 1 bsl 3 ->
                    4;
                true ->
                    3
            end;
        N > 1 bsl 1 ->
            2;
        N >= 1 bsl 0 ->
            1;
        true ->
            0
    end.

make_zeros(0) ->
    [];
make_zeros(N) when N rem 2 =:= 0 ->
    P = make_zeros(N div 2),
    [P | P];
make_zeros(N) ->
    P = make_zeros(N div 2),
    [0, P | P].

my_buddy(Addr, Sz, Base) ->
    case (Addr - Base) band Sz of
        0 ->
            {Addr + Sz, Addr};
        _ ->
            T = Addr - Sz,
            {T, T}
    end.

all_free(Head) ->
    Tab = get_freelists(Head),
    Base =
        case Head of
            {head, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
             _, _, _, _, _, _, _, _, _, _, REC45} ->
                REC45;
            REC45 ->
                error({badrecord, REC45})
        end,
    case all_free(all(Tab), Base, Base, []) of
        [{Base, Base} | L] ->
            L;
        L ->
            L
    end.

all_free([], X0, Y0, F) ->
    lists:reverse([{X0, Y0} | F]);
all_free([{X, Y} | L], X0, Y0, F) when Y0 =:= X ->
    all_free(L, X0, Y, F);
all_free([{X, Y} | L], X0, Y0, F) when Y0 < X ->
    all_free(L, X, Y, [{X0, Y0} | F]).

all_allocated(Head) ->
    all_allocated(all(get_freelists(Head)),
                  0,
                  case Head of
                      {head, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                       _, _, _, _, _, _, _, _, _, _, _, _, _, _, REC46} ->
                          REC46;
                      REC46 ->
                          error({badrecord, REC46})
                  end,
                  []).

all_allocated([], _X0, _Y0, []) ->
    <<>>;
all_allocated([], _X0, _Y0, A0) ->
    [<<From:32,To:32>> | A] = lists:reverse(A0),
    {From, To, list_to_binary(A)};
all_allocated([{X, Y} | L], X0, Y0, A) when Y0 =:= X ->
    all_allocated(L, X0, Y, A);
all_allocated([{X, Y} | L], _X0, Y0, A) when Y0 < X ->
    all_allocated(L, X, Y, [<<Y0:32,X:32>> | A]).

all_allocated_as_list(Head) ->
    all_allocated_as_list(all(get_freelists(Head)),
                          0,
                          case Head of
                              {head, _, _, _, _, _, _, _, _, _, _, _, _,
                               _, _, _, _, _, _, _, _, _, _, _, _, _, _,
                               _, _, REC47} ->
                                  REC47;
                              REC47 ->
                                  error({badrecord, REC47})
                          end,
                          []).

-dialyzer({no_improper_lists, {all_allocated_as_list, 4}}).

all_allocated_as_list([], _X0, _Y0, []) ->
    [];
all_allocated_as_list([], _X0, _Y0, A) ->
    lists:reverse(A);
all_allocated_as_list([{X, Y} | L], X0, Y0, A) when Y0 =:= X ->
    all_allocated_as_list(L, X0, Y, A);
all_allocated_as_list([{X, Y} | L], _X0, Y0, A) when Y0 < X ->
    all_allocated_as_list(L, X, Y, [[Y0 | X] | A]).

all(Tab) ->
    all(Tab, tuple_size(Tab), []).

all(_Tab, 0, L) ->
    lists:sort(L);
all(Tab, I, L) ->
    LL = collect_tree(element(I, Tab), I, L),
    all(Tab, I - 1, LL).

find_allocated(Ftab, Addr, Length, Base) ->
    MaxAddr = Addr + Length,
    Ints = collect_all_interval(Ftab, Addr, MaxAddr, Base),
    allocated(Ints, Addr, MaxAddr, Ftab, Base).

allocated(Some, Addr, Max, Ftab, Base) ->
    case allocated1(Some, Addr, Max, []) of
        [] ->
            case find_next_allocated(Ftab, Addr, Base) of
                {From, _} ->
                    find_allocated(Ftab, From, 8192, Base);
                none ->
                    <<>>
            end;
        L ->
            list_to_binary(lists:reverse(L))
    end.

allocated1([], Y0, Max, A) when Y0 < Max ->
    [<<Y0:32,Max:32>> | A];
allocated1([], _Y0, _Max, A) ->
    A;
allocated1([{X, Y} | L], Y0, Max, A) when Y0 >= X ->
    allocated1(L, Y, Max, A);
allocated1([{X, Y} | L], Y0, Max, A) ->
    allocated1(L, Y, Max, [<<Y0:32,X:32>> | A]).

find_next_allocated(Ftab, Addr, Base) ->
    case find_next_free(Ftab, Addr, Base) of
        none ->
            none;
        {Addr1, Pos} when Addr1 =< Addr ->
            find_next_allocated(Ftab, Addr1 + (1 bsl (Pos - 1)), Base);
        {Next, _Pos} ->
            {Addr, Next}
    end.

find_next_free(Ftab, Addr, Base) ->
    MaxBud = tuple_size(Ftab),
    find_next_free(Ftab, Addr, 1, MaxBud, -1, -1, Base).

find_next_free(Ftab, Addr0, Pos, MaxBud, Next, PosN, Base)
    when Pos =< MaxBud ->
    Addr = adjust_addr(Addr0, Pos, Base),
    PosTab = element(Pos, Ftab),
    case bplus_lookup_next(PosTab, Addr - 1) of
        undefined ->
            find_next_free(Ftab, Addr0,
                           Pos + 1,
                           MaxBud, Next, PosN, Base);
        {ok, Next1} when PosN =:= -1; Next1 < Next ->
            find_next_free(Ftab, Addr0,
                           Pos + 1,
                           MaxBud, Next1, Pos, Base);
        {ok, _} ->
            find_next_free(Ftab, Addr0,
                           Pos + 1,
                           MaxBud, Next, PosN, Base)
    end;
find_next_free(_Ftab, _Addr, _Pos, _MaxBud, -1, _PosN, _Base) ->
    none;
find_next_free(_Ftab, _Addr, _Pos, _MaxBud, Next, PosN, _Base) ->
    {Next, PosN}.

collect_all_interval(Ftab, Addr, MaxAddr, Base) ->
    MaxBud = tuple_size(Ftab),
    collect_all_interval(Ftab, Addr, MaxAddr, 1, MaxBud, Base, []).

collect_all_interval(Ftab, L0, U, Pos, MaxBud, Base, Acc0)
    when Pos =< MaxBud ->
    PosTab = element(Pos, Ftab),
    L = adjust_addr(L0, Pos, Base),
    Acc = collect_interval(PosTab, Pos, L, U, Acc0),
    collect_all_interval(Ftab, L0, U, Pos + 1, MaxBud, Base, Acc);
collect_all_interval(_Ftab, _L, _U, _Pos, _MaxBud, _Base, Acc) ->
    lists:sort(Acc).

adjust_addr(Addr, Pos, Base) ->
    Pow = 1 bsl (Pos - 1),
    Rem = (Addr - Base) rem Pow,
    if
        Rem =:= 0 ->
            Addr;
        Addr < Pow ->
            Addr;
        true ->
            Addr - Rem
    end.

get_disk_map() ->
    case get(disk_map) of
        undefined ->
            no_disk_map;
        T ->
            {disk_map, ets:tab2list(T)}
    end.

init_disk_map(Name) ->
    error_logger:info_msg("** dets: (debug) using disk map for ~p~n",
                          [Name]),
    put(disk_map, ets:new(any, [ordered_set])).

stop_disk_map() ->
    catch ets:delete(erase(disk_map)).

disk_map_segment_p(Fd, P) ->
    case get(disk_map) of
        undefined ->
            ok;
        _T ->
            disk_map_segment(P, pread_n(Fd, P, 8 * 256))
    end.

disk_map_segment(P, Segment) ->
    case get(disk_map) of
        undefined ->
            ok;
        T ->
            Ps =
                segment_fragment_to_pointers(P,
                                             iolist_to_binary(Segment)),
            Ss =
                [ 
                 {X, <<Sz:32,305419896:32>>} ||
                     {_P1, <<Sz:32,X:32>>} <- Ps,
                     X > 0
                ],
            dm(Ps ++ Ss, T)
    end.

disk_map_pread(P) ->
    case get(disk_map) of
        undefined ->
            ok;
        T ->
            case ets:lookup(T, P) of
                [] ->
                    throw({pread, P, 8});
                [{P, {pointer, 0, 0}}] ->
                    ok;
                [{P, {pointer, Pointer, Sz}}] ->
                    case ets:lookup(T, Pointer) of
                        [{Pointer, {slot, _P, Sz}}] ->
                            ok;
                        Got ->
                            throw({pread, P, Pointer, Got})
                    end;
                Got ->
                    throw({pread, P, Got})
            end
    end.

disk_map(Bins) ->
    case get(disk_map) of
        undefined ->
            ok;
        T ->
            Bs =
                [ 
                 {P, iolist_to_binary(Io)} ||
                     {P, Io} <- Bins
                ],
            dm(Bs, T)
    end.

dm([{P, _Header} | Bs], T) when P < 1336 ->
    dm(Bs, T);
dm([{P0, <<61591023:32>>} | Bs], T) ->
    P = P0 - 4,
    case ets:lookup(T, P) of
        [] ->
            throw({free, P0});
        [{P, _OldSz}] ->
            true = ets:delete(T, P)
    end,
    dm(Bs, T);
dm([{SlotP, <<Sz:32,305419896:32,_/binary>>} | Bs], T) ->
    Ptr =
        case ets:lookup(T, {pointer, SlotP}) of
            [{{pointer, SlotP}, Pointer}] ->
                case ets:lookup(T, Pointer) of
                    [{Pointer, {pointer, SlotP, Sz2}}] ->
                        case log2(Sz) =:= log2(Sz2) of
                            true ->
                                Pointer;
                            false ->
                                throw({active, SlotP, Sz, Pointer, Sz2})
                        end;
                    Got ->
                        throw({active, SlotP, Sz, Got})
                end;
            [] ->
                throw({active, SlotP, Sz})
        end,
    true = ets:insert(T, {SlotP, {slot, Ptr, Sz}}),
    dm(Bs, T);
dm([{P, <<Sz:32,X:32>>} | Bs], T) ->
    case prev(P, T) of
        {Prev, PrevSz} ->
            throw({prev, P, Sz, X, Prev, PrevSz});
        ok ->
            ok
    end,
    case next(P, 8, T) of
        {next, Next} ->
            throw({next, P, Sz, X, Next});
        ok ->
            ok
    end,
    true = ets:insert(T, {P, {pointer, X, Sz}}),
    if
        Sz =:= 0 ->
            X = 0,
            true;
        true ->
            true = ets:insert(T, {{pointer, X}, P})
    end,
    dm(Bs, T);
dm([{P, <<X:32>>} | Bs], T) ->
    case ets:lookup(T, X) of
        [] ->
            throw({segment, P, X});
        [{X, {pointer, 0, 0}}] ->
            ok;
        [{X, {pointer, P, X}}] ->
            ok
    end,
    dm(Bs, T);
dm([{P, <<_Sz:32,B0/binary>> = B} | Bs], T) ->
    Overwrite =
        case catch binary_to_term(B0) of
            {'EXIT', _} ->
                <<_Sz1:32,B1/binary>> = B0,
                case catch binary_to_term(B1) of
                    {'EXIT', _} ->
                        false;
                    _ ->
                        true
                end;
            _ ->
                true
        end,
    if
        Overwrite ->
            dm([{P - 8, <<(byte_size(B) + 8):32,305419896:32,B/binary>>} |
                Bs],
               T);
        true ->
            dm(segment_fragment_to_pointers(P, B) ++ Bs, T)
    end;
dm([], _T) ->
    ok.

segment_fragment_to_pointers(_P, <<>>) ->
    [];
segment_fragment_to_pointers(P, <<SzP:8/binary,B/binary>>) ->
    [{P, SzP} | segment_fragment_to_pointers(P + 8, B)].

prev(P, T) ->
    case ets:prev(T, P) of
        '$end_of_table' ->
            ok;
        Prev ->
            case ets:lookup(T, Prev) of
                [{Prev, {pointer, _Ptr, _}}] when Prev + 8 > P ->
                    {Prev, 8};
                [{Prev, {slot, _, Sz}}] when Prev + Sz > P ->
                    {Prev, Sz};
                _ ->
                    ok
            end
    end.

next(P, PSz, T) ->
    case ets:next(T, P) of
        '$end_of_table' ->
            ok;
        Next when P + PSz > Next ->
            {next, Next};
        _ ->
            ok
    end.

collect_tree(v, _TI, Acc) ->
    Acc;
collect_tree(T, TI, Acc) ->
    Pow = 1 bsl (TI - 1),
    collect_tree2(T, Pow, Acc).

collect_tree2(Tree, Pow, Acc) ->
    S = bplus_get_size(Tree),
    case element(1, Tree) of
        l ->
            collect_leaf(Tree, S, Pow, Acc);
        n ->
            collect_node(Tree, S, Pow, Acc)
    end.

collect_leaf(_Leaf, 0, _Pow, Acc) ->
    Acc;
collect_leaf(Leaf, I, Pow, Acc) ->
    Key = element(I + 1, Leaf),
    V = {Key, Key + Pow},
    collect_leaf(Leaf, I - 1, Pow, [V | Acc]).

collect_node(_Node, 0, _Pow, Acc) ->
    Acc;
collect_node(Node, I, Pow, Acc) ->
    Acc1 = collect_tree2(bplus_get_tree(Node, I), Pow, Acc),
    collect_node(Node, I - 1, Pow, Acc1).

tree_to_bin(v, _F, _Max, Ws, WsSz) ->
    {Ws, WsSz};
tree_to_bin(T, F, Max, Ws, WsSz) ->
    {N, L1, Ws1, WsSz1} = tree_to_bin2(T, F, Max, 0, [], Ws, WsSz),
    {N1, L2, Ws2, WsSz2} = F(N, lists:reverse(L1), Ws1, WsSz1),
    {0, [], NWs, NWsSz} = F(N1, L2, Ws2, WsSz2),
    {NWs, NWsSz}.

tree_to_bin2(Tree, F, Max, N, Acc, Ws, WsSz) when N >= Max ->
    {NN, NAcc, NWs, NWsSz} = F(N, lists:reverse(Acc), Ws, WsSz),
    tree_to_bin2(Tree, F, Max, NN, lists:reverse(NAcc), NWs, NWsSz);
tree_to_bin2(Tree, F, Max, N, Acc, Ws, WsSz) ->
    S = bplus_get_size(Tree),
    case element(1, Tree) of
        l ->
            {N + S,
             leaf_to_bin(bplus_leaf_to_list(Tree), Acc),
             Ws, WsSz};
        n ->
            node_to_bin(Tree, F, Max, N, Acc, 1, S, Ws, WsSz)
    end.

node_to_bin(_Node, _F, _Max, N, Acc, I, S, Ws, WsSz) when I > S ->
    {N, Acc, Ws, WsSz};
node_to_bin(Node, F, Max, N, Acc, I, S, Ws, WsSz) ->
    {N1, Acc1, Ws1, WsSz1} =
        tree_to_bin2(bplus_get_tree(Node, I), F, Max, N, Acc, Ws, WsSz),
    node_to_bin(Node, F, Max, N1, Acc1, I + 1, S, Ws1, WsSz1).

leaf_to_bin([N | L], Acc) ->
    leaf_to_bin(L, [<<N:32>> | Acc]);
leaf_to_bin([], Acc) ->
    Acc.

list_to_tree(L) ->
    leafs_to_nodes(L, length(L), fun bplus_mk_leaf/1, []).

leafs_to_nodes([], 0, _F, [T]) ->
    T;
leafs_to_nodes([], 0, _F, L) ->
    leafs_to_nodes(lists:reverse(L), length(L), fun mk_node/1, []);
leafs_to_nodes(Ls, Sz, F, L) ->
    I = if
            Sz =< 16 ->
                Sz;
            Sz =< 32 ->
                Sz div 2;
            true ->
                12
        end,
    {L1, R} = split_list(Ls, I, []),
    N = F(L1),
    Sz1 = Sz - I,
    leafs_to_nodes(R, Sz1, F, [N | L]).

mk_node([E | Es]) ->
    NL =
        [E |
         lists:foldr(fun(X, A) ->
                            [get_first_key(X), X | A]
                     end,
                     [], Es)],
    bplus_mk_node(NL).

split_list(L, 0, SL) ->
    {SL, L};
split_list([E | Es], I, SL) ->
    split_list(Es, I - 1, [E | SL]).

get_first_key(T) ->
    case element(1, T) of
        l ->
            element(1 + 1, T);
        n ->
            get_first_key(bplus_get_tree(T, 1))
    end.

collect_interval(v, _TI, _L, _U, Acc) ->
    Acc;
collect_interval(T, TI, L, U, Acc) ->
    Pow = 1 bsl (TI - 1),
    collect_interval2(T, Pow, L, U, Acc).

collect_interval2(Tree, Pow, L, U, Acc) ->
    S = bplus_get_size(Tree),
    case element(1, Tree) of
        l ->
            collect_leaf_interval(Tree, S, Pow, L, U, Acc);
        n ->
            {Max, _} = bplus_select_sub_tree(Tree, U),
            {Min, _} = bplus_select_sub_tree_2(Tree, L, Max),
            collect_node_interval(Tree, Min, Max, Pow, L, U, Acc)
    end.

collect_leaf_interval(_Leaf, 0, _Pow, _L, _U, Acc) ->
    Acc;
collect_leaf_interval(Leaf, I, Pow, L, U, Acc) ->
    Key = element(I + 1, Leaf),
    if
        Key < L ->
            Acc;
        Key > U ->
            collect_leaf_interval(Leaf, I - 1, Pow, L, U, Acc);
        true ->
            collect_leaf_interval(Leaf,
                                  I - 1,
                                  Pow, L, U,
                                  [{Key, Key + Pow} | Acc])
    end.

collect_node_interval(_Node, I, UP, _Pow, _L, _U, Acc) when I > UP ->
    Acc;
collect_node_interval(Node, I, UP, Pow, L, U, Acc) ->
    Acc1 = collect_interval2(bplus_get_tree(Node, I), Pow, L, U, Acc),
    collect_node_interval(Node, I + 1, UP, Pow, L, U, Acc1).

bplus_empty_tree() ->
    v.

bplus_lookup(v, _Key) ->
    undefined;
bplus_lookup(Tree, Key) ->
    case element(1, Tree) of
        l ->
            bplus_lookup_leaf(Key, Tree);
        n ->
            {_, SubTree} = bplus_select_sub_tree(Tree, Key),
            bplus_lookup(SubTree, Key)
    end.

bplus_lookup_leaf(Key, Leaf) ->
    bplus_lookup_leaf_2(Key, Leaf, bplus_get_size(Leaf)).

bplus_lookup_leaf_2(_, _, 0) ->
    undefined;
bplus_lookup_leaf_2(Key, Leaf, N) ->
    case element(N + 1, Leaf) of
        Key ->
            {ok, Key};
        _ ->
            bplus_lookup_leaf_2(Key, Leaf, N - 1)
    end.

bplus_lookup_first(v) ->
    undefined;
bplus_lookup_first(Tree) ->
    case element(1, Tree) of
        l ->
            {ok, element(1 + 1, Tree)};
        n ->
            bplus_lookup_first(bplus_get_tree(Tree, 1))
    end.

bplus_lookup_next(v, _) ->
    undefined;
bplus_lookup_next(Tree, Key) ->
    case element(1, Tree) of
        l ->
            lookup_next_leaf(Key, Tree);
        n ->
            {Pos, SubTree} = bplus_select_sub_tree(Tree, Key),
            case bplus_lookup_next(SubTree, Key) of
                undefined ->
                    S = bplus_get_size(Tree),
                    if
                        S > Pos ->
                            bplus_lookup_first(bplus_get_tree(Tree,
                                                              Pos + 1));
                        true ->
                            undefined
                    end;
                Result ->
                    Result
            end
    end.

lookup_next_leaf(Key, Leaf) ->
    lookup_next_leaf_2(Key, Leaf, bplus_get_size(Leaf), 1).

lookup_next_leaf_2(Key, Leaf, Size, Size) ->
    K = element(Size + 1, Leaf),
    if
        K > Key ->
            {ok, element(Size + 1, Leaf)};
        true ->
            undefined
    end;
lookup_next_leaf_2(Key, Leaf, Size, N) ->
    K = element(N + 1, Leaf),
    if
        K < Key ->
            lookup_next_leaf_2(Key, Leaf, Size, N + 1);
        Key == K ->
            {ok, element(N + 1 + 1, Leaf)};
        true ->
            {ok, element(N + 1, Leaf)}
    end.

bplus_insert(v, Key) ->
    bplus_mk_leaf([Key]);
bplus_insert(Tree, Key) ->
    NewTree = bplus_insert_in(Tree, Key),
    case bplus_get_size(NewTree) > 16 of
        false ->
            NewTree;
        true ->
            {LTree, DKey, RTree} =
                case element(1, NewTree) of
                    l ->
                        bplus_split_leaf(NewTree);
                    n ->
                        bplus_split_node(NewTree)
                end,
            bplus_mk_node([LTree, DKey, RTree])
    end.

bplus_delete(v, _Key) ->
    v;
bplus_delete(Tree, Key) ->
    NewTree = bplus_delete_in(Tree, Key),
    S = bplus_get_size(NewTree),
    case element(1, NewTree) of
        l ->
            if
                S =:= 0 ->
                    v;
                true ->
                    NewTree
            end;
        n ->
            if
                S =:= 1 ->
                    bplus_get_tree(NewTree, 1);
                true ->
                    NewTree
            end
    end.

bplus_insert_in(Tree, Key) ->
    case element(1, Tree) of
        l ->
            bplus_insert_in_leaf(Tree, Key);
        n ->
            {Pos, SubTree} = bplus_select_sub_tree(Tree, Key),
            NewSubTree = bplus_insert_in(SubTree, Key),
            case bplus_get_size(NewSubTree) > 16 of
                false ->
                    bplus_put_subtree(Tree, [NewSubTree, Pos]);
                true ->
                    case
                        bplus_reorganize_tree_ins(Tree, NewSubTree, Pos)
                    of
                        {left, {LeftT, DKey, MiddleT}} ->
                            bplus_put_subtree(bplus_put_lkey(Tree, DKey,
                                                             Pos),
                                              [LeftT,
                                               Pos - 1,
                                               MiddleT, Pos]);
                        {right, {MiddleT, DKey, RightT}} ->
                            bplus_put_subtree(bplus_put_rkey(Tree, DKey,
                                                             Pos),
                                              [MiddleT, Pos, RightT,
                                               Pos + 1]);
                        {split, {LeftT, DKey, RightT}} ->
                            bplus_extend_tree(Tree,
                                              {LeftT, DKey, RightT},
                                              Pos)
                    end
            end
    end.

bplus_insert_in_leaf(Leaf, Key) ->
    bplus_insert_in_leaf_2(Leaf, Key, bplus_get_size(Leaf), []).

bplus_insert_in_leaf_2(Leaf, Key, 0, Accum) ->
    bplus_insert_in_leaf_3(Leaf, 0, [Key | Accum]);
bplus_insert_in_leaf_2(Leaf, Key, N, Accum) ->
    K = element(N + 1, Leaf),
    if
        Key < K ->
            bplus_insert_in_leaf_2(Leaf, Key, N - 1, [K | Accum]);
        K < Key ->
            bplus_insert_in_leaf_3(Leaf, N - 1, [K, Key | Accum]);
        K == Key ->
            bplus_insert_in_leaf_3(Leaf, N - 1, [Key | Accum])
    end.

bplus_insert_in_leaf_3(_Leaf, 0, LeafList) ->
    bplus_mk_leaf(LeafList);
bplus_insert_in_leaf_3(Leaf, N, LeafList) ->
    bplus_insert_in_leaf_3(Leaf,
                           N - 1,
                           [element(N + 1, Leaf) | LeafList]).

bplus_delete_in(Tree, Key) ->
    case element(1, Tree) of
        l ->
            bplus_delete_in_leaf(Tree, Key);
        n ->
            {Pos, SubTree} = bplus_select_sub_tree(Tree, Key),
            NewSubTree = bplus_delete_in(SubTree, Key),
            case bplus_get_size(NewSubTree) < 8 of
                false ->
                    bplus_put_subtree(Tree, [NewSubTree, Pos]);
                true ->
                    case
                        bplus_reorganize_tree_del(Tree, NewSubTree, Pos)
                    of
                        {left, {LeftT, DKey, MiddleT}} ->
                            bplus_put_subtree(bplus_put_lkey(Tree, DKey,
                                                             Pos),
                                              [LeftT,
                                               Pos - 1,
                                               MiddleT, Pos]);
                        {right, {MiddleT, DKey, RightT}} ->
                            bplus_put_subtree(bplus_put_rkey(Tree, DKey,
                                                             Pos),
                                              [MiddleT, Pos, RightT,
                                               Pos + 1]);
                        {join_left, JoinedTree} ->
                            bplus_joinleft_tree(Tree, JoinedTree, Pos);
                        {join_right, JoinedTree} ->
                            bplus_joinright_tree(Tree, JoinedTree, Pos)
                    end
            end
    end.

bplus_delete_in_leaf(Leaf, Key) ->
    bplus_delete_in_leaf_2(Leaf, Key, bplus_get_size(Leaf), []).

bplus_delete_in_leaf_2(Leaf, _, 0, _) ->
    Leaf;
bplus_delete_in_leaf_2(Leaf, Key, N, Accum) ->
    K = element(N + 1, Leaf),
    if
        Key == K ->
            bplus_delete_in_leaf_3(Leaf, N - 1, Accum);
        true ->
            bplus_delete_in_leaf_2(Leaf, Key, N - 1, [K | Accum])
    end.

bplus_delete_in_leaf_3(_Leaf, 0, LeafList) ->
    bplus_mk_leaf(LeafList);
bplus_delete_in_leaf_3(Leaf, N, LeafList) ->
    bplus_delete_in_leaf_3(Leaf,
                           N - 1,
                           [element(N + 1, Leaf) | LeafList]).

bplus_select_sub_tree(Tree, Key) ->
    bplus_select_sub_tree_2(Tree, Key, bplus_get_size(Tree)).

bplus_select_sub_tree_2(Tree, _Key, 1) ->
    {1, bplus_get_tree(Tree, 1)};
bplus_select_sub_tree_2(Tree, Key, N) ->
    K = bplus_get_lkey(Tree, N),
    if
        K > Key ->
            bplus_select_sub_tree_2(Tree, Key, N - 1);
        K =< Key ->
            {N, bplus_get_tree(Tree, N)}
    end.

bplus_reorganize_tree_ins(Tree, NewSubTree, 1) ->
    RTree = bplus_get_tree(Tree, 2),
    case bplus_get_size(RTree) >= 16 of
        false ->
            bplus_reorganize_tree_r(Tree, NewSubTree, 1, RTree);
        true ->
            bplus_reorganize_tree_s(NewSubTree)
    end;
bplus_reorganize_tree_ins(Tree, NewSubTree, Pos) ->
    Size = bplus_get_size(Tree),
    if
        Pos == Size ->
            LTree = bplus_get_tree(Tree, Pos - 1),
            case bplus_get_size(LTree) >= 16 of
                false ->
                    bplus_reorganize_tree_l(Tree, NewSubTree, Pos,
                                            LTree);
                true ->
                    bplus_reorganize_tree_s(NewSubTree)
            end;
        true ->
            LTree = bplus_get_tree(Tree, Pos - 1),
            RTree = bplus_get_tree(Tree, Pos + 1),
            SL = bplus_get_size(LTree),
            SR = bplus_get_size(RTree),
            if
                SL > SR ->
                    bplus_reorganize_tree_r(Tree, NewSubTree, Pos,
                                            RTree);
                SL < SR ->
                    bplus_reorganize_tree_l(Tree, NewSubTree, Pos,
                                            LTree);
                true ->
                    case bplus_get_size(LTree) >= 16 of
                        false ->
                            bplus_reorganize_tree_l(Tree, NewSubTree,
                                                    Pos, LTree);
                        true ->
                            bplus_reorganize_tree_s(NewSubTree)
                    end
            end
    end.

bplus_reorganize_tree_del(Tree, NewSubTree, 1) ->
    RTree = bplus_get_tree(Tree, 2),
    case bplus_get_size(RTree) =< 8 of
        false ->
            bplus_reorganize_tree_r(Tree, NewSubTree, 1, RTree);
        true ->
            bplus_reorganize_tree_jr(Tree, NewSubTree, 1, RTree)
    end;
bplus_reorganize_tree_del(Tree, NewSubTree, Pos) ->
    Size = bplus_get_size(Tree),
    if
        Pos == Size ->
            LTree = bplus_get_tree(Tree, Pos - 1),
            case bplus_get_size(LTree) =< 8 of
                false ->
                    bplus_reorganize_tree_l(Tree, NewSubTree, Pos,
                                            LTree);
                true ->
                    bplus_reorganize_tree_jl(Tree, NewSubTree, Pos,
                                             LTree)
            end;
        true ->
            LTree = bplus_get_tree(Tree, Pos - 1),
            RTree = bplus_get_tree(Tree, Pos + 1),
            SL = bplus_get_size(LTree),
            SR = bplus_get_size(RTree),
            if
                SL > SR ->
                    bplus_reorganize_tree_l(Tree, NewSubTree, Pos,
                                            LTree);
                SL < SR ->
                    bplus_reorganize_tree_r(Tree, NewSubTree, Pos,
                                            RTree);
                true ->
                    case bplus_get_size(LTree) =< 8 of
                        false ->
                            bplus_reorganize_tree_l(Tree, NewSubTree,
                                                    Pos, LTree);
                        true ->
                            bplus_reorganize_tree_jl(Tree, NewSubTree,
                                                     Pos, LTree)
                    end
            end
    end.

bplus_reorganize_tree_l(Tree, NewSubTree, Pos, LTree) ->
    case element(1, NewSubTree) of
        l ->
            {left,
             bplus_split_leaf(bplus_mk_leaf(lists:append(bplus_leaf_to_list(LTree),
                                                         bplus_leaf_to_list(NewSubTree))))};
        n ->
            {left,
             bplus_split_node(bplus_mk_node(lists:append([bplus_node_to_list(LTree),
                                                          [bplus_get_lkey(Tree,
                                                                          Pos)],
                                                          bplus_node_to_list(NewSubTree)])))}
    end.

bplus_reorganize_tree_r(Tree, NewSubTree, Pos, RTree) ->
    case element(1, NewSubTree) of
        l ->
            {right,
             bplus_split_leaf(bplus_mk_leaf(lists:append([bplus_leaf_to_list(NewSubTree),
                                                          bplus_leaf_to_list(RTree)])))};
        n ->
            {right,
             bplus_split_node(bplus_mk_node(lists:append([bplus_node_to_list(NewSubTree),
                                                          [bplus_get_rkey(Tree,
                                                                          Pos)],
                                                          bplus_node_to_list(RTree)])))}
    end.

bplus_reorganize_tree_s(NewSubTree) ->
    case element(1, NewSubTree) of
        l ->
            {split, bplus_split_leaf(NewSubTree)};
        n ->
            {split, bplus_split_node(NewSubTree)}
    end.

bplus_reorganize_tree_jl(Tree, NewSubTree, Pos, LTree) ->
    case element(1, NewSubTree) of
        l ->
            {join_left,
             bplus_mk_leaf(lists:append([bplus_leaf_to_list(LTree),
                                         bplus_leaf_to_list(NewSubTree)]))};
        n ->
            {join_left,
             bplus_mk_node(lists:append([bplus_node_to_list(LTree),
                                         [bplus_get_lkey(Tree, Pos)],
                                         bplus_node_to_list(NewSubTree)]))}
    end.

bplus_reorganize_tree_jr(Tree, NewSubTree, Pos, RTree) ->
    case element(1, NewSubTree) of
        l ->
            {join_right,
             bplus_mk_leaf(lists:append([bplus_leaf_to_list(NewSubTree),
                                         bplus_leaf_to_list(RTree)]))};
        n ->
            {join_right,
             bplus_mk_node(lists:append([bplus_node_to_list(NewSubTree),
                                         [bplus_get_rkey(Tree, Pos)],
                                         bplus_node_to_list(RTree)]))}
    end.

bplus_split_leaf(Leaf) ->
    S = bplus_get_size(Leaf),
    bplus_split_leaf_2(Leaf, S, S div 2, []).

bplus_split_leaf_2(Leaf, Pos, 1, Accum) ->
    K = element(Pos + 1, Leaf),
    bplus_split_leaf_3(Leaf, Pos - 1, [], K, [K | Accum]);
bplus_split_leaf_2(Leaf, Pos, N, Accum) ->
    bplus_split_leaf_2(Leaf,
                       Pos - 1,
                       N - 1,
                       [element(Pos + 1, Leaf) | Accum]).

bplus_split_leaf_3(_, 0, LeftAcc, DKey, RightAcc) ->
    {bplus_mk_leaf(LeftAcc), DKey, bplus_mk_leaf(RightAcc)};
bplus_split_leaf_3(Leaf, Pos, LeftAcc, DKey, RightAcc) ->
    bplus_split_leaf_3(Leaf,
                       Pos - 1,
                       [element(Pos + 1, Leaf) | LeftAcc],
                       DKey, RightAcc).

bplus_split_node(Node) ->
    S = bplus_get_size(Node),
    bplus_split_node_2(Node, S, S div 2, []).

bplus_split_node_2(Node, Pos, 1, Accum) ->
    bplus_split_node_3(Node,
                       Pos - 1,
                       [],
                       bplus_get_lkey(Node, Pos),
                       [bplus_get_tree(Node, Pos) | Accum]);
bplus_split_node_2(Node, Pos, N, Accum) ->
    bplus_split_node_2(Node,
                       Pos - 1,
                       N - 1,
                       [bplus_get_lkey(Node, Pos),
                        bplus_get_tree(Node, Pos) |
                        Accum]).

bplus_split_node_3(Node, 1, LeftAcc, DKey, RightAcc) ->
    {bplus_mk_node([bplus_get_tree(Node, 1) | LeftAcc]),
     DKey,
     bplus_mk_node(RightAcc)};
bplus_split_node_3(Node, Pos, LeftAcc, DKey, RightAcc) ->
    bplus_split_node_3(Node,
                       Pos - 1,
                       [bplus_get_lkey(Node, Pos),
                        bplus_get_tree(Node, Pos) |
                        LeftAcc],
                       DKey, RightAcc).

bplus_joinleft_tree(Tree, JoinedTree, Pos) ->
    bplus_join_tree_2(Tree, JoinedTree, Pos, bplus_get_size(Tree), []).

bplus_joinright_tree(Tree, JoinedTree, Pos) ->
    bplus_join_tree_2(Tree, JoinedTree,
                      Pos + 1,
                      bplus_get_size(Tree),
                      []).

bplus_join_tree_2(Tree, JoinedTree, Pos, Pos, Accum) ->
    bplus_join_tree_3(Tree, Pos - 2, [JoinedTree | Accum]);
bplus_join_tree_2(Tree, JoinedTree, Pos, N, Accum) ->
    bplus_join_tree_2(Tree, JoinedTree, Pos,
                      N - 1,
                      [bplus_get_lkey(Tree, N),
                       bplus_get_tree(Tree, N) |
                       Accum]).

bplus_join_tree_3(_Tree, 0, Accum) ->
    bplus_mk_node(Accum);
bplus_join_tree_3(Tree, Pos, Accum) ->
    bplus_join_tree_3(Tree,
                      Pos - 1,
                      [bplus_get_tree(Tree, Pos),
                       bplus_get_rkey(Tree, Pos) |
                       Accum]).

bplus_mk_node(NodeList) ->
    list_to_tuple([n | NodeList]).

bplus_node_to_list(Node) ->
    [_ | NodeList] = tuple_to_list(Node),
    NodeList.

bplus_mk_leaf(KeyList) ->
    list_to_tuple([l | KeyList]).

bplus_leaf_to_list(Leaf) ->
    [_ | LeafList] = tuple_to_list(Leaf),
    LeafList.

bplus_put_subtree(Tree, []) ->
    Tree;
bplus_put_subtree(Tree, [NewSubTree, Pos | Rest]) ->
    bplus_put_subtree(setelement(Pos * 2, Tree, NewSubTree), Rest).

bplus_extend_tree(Tree, Inserts, Pos) ->
    bplus_extend_tree_2(Tree, Inserts, Pos, bplus_get_size(Tree), []).

bplus_extend_tree_2(Tree, {T1, DKey, T2}, Pos, Pos, Accum) ->
    bplus_extend_tree_3(Tree, Pos - 1, [T1, DKey, T2 | Accum]);
bplus_extend_tree_2(Tree, Inserts, Pos, N, Accum) ->
    bplus_extend_tree_2(Tree, Inserts, Pos,
                        N - 1,
                        [bplus_get_lkey(Tree, N),
                         bplus_get_tree(Tree, N) |
                         Accum]).

bplus_extend_tree_3(_, 0, Accum) ->
    bplus_mk_node(Accum);
bplus_extend_tree_3(Tree, N, Accum) ->
    bplus_extend_tree_3(Tree,
                        N - 1,
                        [bplus_get_tree(Tree, N),
                         bplus_get_rkey(Tree, N) |
                         Accum]).

bplus_put_lkey(Tree, DKey, Pos) ->
    setelement(Pos * 2 - 1, Tree, DKey).

bplus_put_rkey(Tree, DKey, Pos) ->
    setelement(Pos * 2 + 1, Tree, DKey).

bplus_get_size(Tree) ->
    case element(1, Tree) of
        l ->
            tuple_size(Tree) - 1;
        n ->
            tuple_size(Tree) div 2
    end.

bplus_get_tree(Tree, Pos) ->
    element(Pos * 2, Tree).

bplus_get_lkey(Tree, Pos) ->
    element(Pos * 2 - 1, Tree).

bplus_get_rkey(Tree, Pos) ->
    element(Pos * 2 + 1, Tree).



