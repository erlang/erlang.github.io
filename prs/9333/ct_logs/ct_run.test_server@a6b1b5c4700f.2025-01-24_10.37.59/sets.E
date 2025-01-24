-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.2/src/sets.erl", 1).

-module(sets).

-compile([{nowarn_deprecated_function, [{erlang, phash, 2}]}]).

-export([new/0,is_set/1,size/1,is_empty/1,to_list/1,from_list/1]).

-export([is_element/2,add_element/2,del_element/2]).

-export([union/2,union/1,intersection/2,intersection/1]).

-export([is_equal/2,is_disjoint/2]).

-export([subtract/2,is_subset/2]).

-export([fold/3,filter/2,map/2,filtermap/2]).

-export([new/1,from_list/2]).

-export_type([set/0,set/1]).

-compile({no_auto_import, [{size, 1}]}).

-type seg() :: tuple().

-type segs(_Element) :: tuple().

-record(set,{size = 0 :: non_neg_integer(),
             n = 16 :: non_neg_integer(),
             maxn = 16 :: pos_integer(),
             bso = 16 div 2 :: non_neg_integer(),
             exp_size = 16 * 5 :: non_neg_integer(),
             con_size = 16 * 3 :: non_neg_integer(),
             empty :: seg(),
             segs :: segs(_)}).

-type set() :: set(_).

-opaque set(Element) :: #set{segs :: segs(Element)} | #{Element => []}.

-spec new() -> set(none()).

new() ->
    #{}.

-spec new([{version, 1..2}]) -> set(none()).

new([{version, 2}]) ->
    new();
new(Opts) ->
    case proplists:get_value(version, Opts, 2) of
        1 ->
            Empty = mk_seg(16),
            {set, 0, 16, 16, 16 div 2, 16 * 5, 16 * 3, Empty, {Empty}};
        2 ->
            new()
    end.

-spec from_list(List) -> Set when List :: [Element], Set :: set(Element).

from_list(Ls) ->
    maps:from_keys(Ls, []).

-spec from_list(List, [{version, 1..2}]) -> Set
                   when List :: [Element], Set :: set(Element).

from_list(Ls, [{version, 2}]) ->
    from_list(Ls);
from_list(Ls, Opts) ->
    case proplists:get_value(version, Opts, 2) of
        1 ->
            lists:foldl(fun(E, S) ->
                               add_element(E, S)
                        end,
                        new([{version, 1}]),
                        Ls);
        2 ->
            from_list(Ls)
    end.

-spec is_set(Set) -> boolean() when Set :: term().

is_set(#{}) ->
    true;
is_set({set, _, _, _, _, _, _, _, _}) ->
    true;
is_set(_) ->
    false.

-spec size(Set) -> non_neg_integer() when Set :: set().

size(#{} = S) ->
    map_size(S);
size({set, Size, _, _, _, _, _, _, _}) ->
    Size.

-spec is_empty(Set) -> boolean() when Set :: set().

is_empty(#{} = S) ->
    map_size(S) =:= 0;
is_empty({set, Size, _, _, _, _, _, _, _}) ->
    Size =:= 0.

-spec is_equal(Set1, Set2) -> boolean()
                  when Set1 :: set(), Set2 :: set().

is_equal(S1, S2) ->
    case size(S1) =:= size(S2) of
        true when S1 =:= S2 ->
            true;
        true ->
            canonicalize_v2(S1) =:= canonicalize_v2(S2);
        false ->
            false
    end.

canonicalize_v2(S) ->
    from_list(to_list(S)).

-spec to_list(Set) -> List when Set :: set(Element), List :: [Element].

to_list(#{} = S) ->
    maps:keys(S);
to_list({set, _, _, _, _, _, _, _, _} = S) ->
    fold(fun(Elem, List) ->
                [Elem | List]
         end,
         [], S).

-spec is_element(Element, Set) -> boolean() when Set :: set(Element).

is_element(E, #{} = S) ->
    case S of
        #{E := _} ->
            true;
        _ ->
            false
    end;
is_element(E, {set, _, _, _, _, _, _, _, _} = S) ->
    Slot = get_slot(S, E),
    Bkt = get_bucket(S, Slot),
    lists:member(E, Bkt).

-spec add_element(Element, Set1) -> Set2
                     when Set1 :: set(Element), Set2 :: set(Element).

add_element(E, #{} = S) ->
    S#{E => []};
add_element(E, {set, _, _, _, _, _, _, _, _} = S0) ->
    Slot = get_slot(S0, E),
    Bkt = get_bucket(S0, Slot),
    case lists:member(E, Bkt) of
        true ->
            S0;
        false ->
            S1 = update_bucket(S0, Slot, [E | Bkt]),
            maybe_expand(S1)
    end.

-spec del_element(Element, Set1) -> Set2
                     when Set1 :: set(Element), Set2 :: set(Element).

del_element(E, #{} = S) ->
    maps:remove(E, S);
del_element(E, {set, _, _, _, _, _, _, _, _} = S0) ->
    Slot = get_slot(S0, E),
    Bkt = get_bucket(S0, Slot),
    case lists:member(E, Bkt) of
        false ->
            S0;
        true ->
            S1 = update_bucket(S0, Slot, lists:delete(E, Bkt)),
            maybe_contract(S1, 1)
    end.

-spec update_bucket(Set1, Slot, Bkt) -> Set2
                       when
                           Set1 :: set(Element),
                           Set2 :: set(Element),
                           Slot :: non_neg_integer(),
                           Bkt :: [Element].

update_bucket(Set, Slot, NewBucket) ->
    SegI = (Slot - 1) div 16 + 1,
    BktI = (Slot - 1) rem 16 + 1,
    Segs =
        case Set of
            {set, _, _, _, _, _, _, _, REC0} ->
                REC0;
            REC0 ->
                error({badrecord, REC0})
        end,
    Seg = element(SegI, Segs),
    begin
        REC1 = setelement(SegI, Segs, setelement(BktI, Seg, NewBucket)),
        REC2 = Set,
        case REC2 of
            {set, _, _, _, _, _, _, _, _} ->
                setelement(9, REC2, REC1);
            _ ->
                error({badrecord, REC2})
        end
    end.

-spec union(Set1, Set2) -> Set3
               when
                   Set1 :: set(Element),
                   Set2 :: set(Element),
                   Set3 :: set(Element).

union(#{} = S1, #{} = S2) ->
    maps:merge(S1, S2);
union(S1, S2) ->
    case size(S1) < size(S2) of
        true ->
            fold(fun(E, S) ->
                        add_element(E, S)
                 end,
                 S2, S1);
        false ->
            fold(fun(E, S) ->
                        add_element(E, S)
                 end,
                 S1, S2)
    end.

-spec union(SetList) -> Set
               when SetList :: [set(Element)], Set :: set(Element).

union([S1, S2 | Ss]) ->
    union1(union(S1, S2), Ss);
union([S]) ->
    S;
union([]) ->
    new().

-spec union1(set(E), [set(E)]) -> set(E).

union1(S1, [S2 | Ss]) ->
    union1(union(S1, S2), Ss);
union1(S1, []) ->
    S1.

-spec intersection(Set1, Set2) -> Set3
                      when
                          Set1 :: set(Element),
                          Set2 :: set(Element),
                          Set3 :: set(Element).

intersection(#{} = S1, #{} = S2) ->
    case map_size(S1) < map_size(S2) of
        true ->
            Next = maps:next(maps:iterator(S1)),
            intersection_heuristic(Next, [], [],
                                   floor(map_size(S1) * 0.75),
                                   S1, S2);
        false ->
            Next = maps:next(maps:iterator(S2)),
            intersection_heuristic(Next, [], [],
                                   floor(map_size(S2) * 0.75),
                                   S2, S1)
    end;
intersection(S1, S2) ->
    case size(S1) < size(S2) of
        true ->
            filter(fun(E) ->
                          is_element(E, S2)
                   end,
                   S1);
        false ->
            filter(fun(E) ->
                          is_element(E, S1)
                   end,
                   S2)
    end.

intersection_heuristic(Next, _Keep, Delete, 0, Acc, Reference) ->
    intersection_decided(Next, remove_keys(Delete, Acc), Reference);
intersection_heuristic({Key, _Value, Iterator},
                       Keep, Delete, KeepCount, Acc, Reference) ->
    Next = maps:next(Iterator),
    case Reference of
        #{Key := _} ->
            intersection_heuristic(Next,
                                   [Key | Keep],
                                   Delete,
                                   KeepCount - 1,
                                   Acc, Reference);
        _ ->
            intersection_heuristic(Next, Keep,
                                   [Key | Delete],
                                   KeepCount, Acc, Reference)
    end;
intersection_heuristic(none, Keep, _Delete, _Count, _Acc, _Reference) ->
    maps:from_keys(Keep, []).

intersection_decided({Key, _Value, Iterator}, Acc0, Reference) ->
    Acc1 =
        case Reference of
            #{Key := _} ->
                Acc0;
            #{} ->
                maps:remove(Key, Acc0)
        end,
    intersection_decided(maps:next(Iterator), Acc1, Reference);
intersection_decided(none, Acc, _Reference) ->
    Acc.

remove_keys([K | Ks], Map) ->
    remove_keys(Ks, maps:remove(K, Map));
remove_keys([], Map) ->
    Map.

-spec intersection(SetList) -> Set
                      when
                          SetList :: [set(Element), ...],
                          Set :: set(Element).

intersection([S1, S2 | Ss]) ->
    intersection1(intersection(S1, S2), Ss);
intersection([S]) ->
    S.

-spec intersection1(set(E), [set(E)]) -> set(E).

intersection1(S1, [S2 | Ss]) ->
    intersection1(intersection(S1, S2), Ss);
intersection1(S1, []) ->
    S1.

-spec is_disjoint(Set1, Set2) -> boolean()
                     when Set1 :: set(Element), Set2 :: set(Element).

is_disjoint(#{} = S1, #{} = S2) ->
    if
        map_size(S1) < map_size(S2) ->
            is_disjoint_1(S2, maps:iterator(S1));
        true ->
            is_disjoint_1(S1, maps:iterator(S2))
    end;
is_disjoint(S1, S2) ->
    case size(S1) < size(S2) of
        true ->
            fold(fun(_, false) ->
                        false;
                    (E, true) ->
                        not is_element(E, S2)
                 end,
                 true, S1);
        false ->
            fold(fun(_, false) ->
                        false;
                    (E, true) ->
                        not is_element(E, S1)
                 end,
                 true, S2)
    end.

is_disjoint_1(Set, Iter) ->
    case maps:next(Iter) of
        {K, _, NextIter} ->
            case Set of
                #{K := _} ->
                    false;
                #{} ->
                    is_disjoint_1(Set, NextIter)
            end;
        none ->
            true
    end.

-spec subtract(Set1, Set2) -> Set3
                  when
                      Set1 :: set(Element),
                      Set2 :: set(Element),
                      Set3 :: set(Element).

subtract(#{} = LHS, #{} = RHS) ->
    LSize = map_size(LHS),
    RSize = map_size(RHS),
    case RSize =< LSize div 4 of
        true ->
            Next = maps:next(maps:iterator(RHS)),
            subtract_decided(Next, LHS, RHS);
        false ->
            KeepThreshold = LSize * 3 div 4,
            Next = maps:next(maps:iterator(LHS)),
            subtract_heuristic(Next, [], [], KeepThreshold, LHS, RHS)
    end;
subtract(LHS, RHS) ->
    filter(fun(E) ->
                  not is_element(E, RHS)
           end,
           LHS).

subtract_heuristic(Next, _Keep, Delete, 0, Acc, Reference) ->
    subtract_decided(Next, remove_keys(Delete, Acc), Reference);
subtract_heuristic({Key, _Value, Iterator},
                   Keep, Delete, KeepCount, Acc, Reference) ->
    Next = maps:next(Iterator),
    case Reference of
        #{Key := _} ->
            subtract_heuristic(Next, Keep,
                               [Key | Delete],
                               KeepCount, Acc, Reference);
        _ ->
            subtract_heuristic(Next,
                               [Key | Keep],
                               Delete,
                               KeepCount - 1,
                               Acc, Reference)
    end;
subtract_heuristic(none, Keep, _Delete, _Count, _Acc, _Reference) ->
    maps:from_keys(Keep, []).

subtract_decided({Key, _Value, Iterator}, Acc, Reference) ->
    case Reference of
        #{Key := _} ->
            subtract_decided(maps:next(Iterator),
                             maps:remove(Key, Acc),
                             Reference);
        _ ->
            subtract_decided(maps:next(Iterator), Acc, Reference)
    end;
subtract_decided(none, Acc, _Reference) ->
    Acc.

-spec is_subset(Set1, Set2) -> boolean()
                   when Set1 :: set(Element), Set2 :: set(Element).

is_subset(#{} = S1, #{} = S2) ->
    if
        map_size(S1) > map_size(S2) ->
            false;
        true ->
            is_subset_1(S2, maps:iterator(S1))
    end;
is_subset(S1, S2) ->
    fold(fun(E, Sub) ->
                Sub
                andalso
                is_element(E, S2)
         end,
         true, S1).

is_subset_1(Set, Iter) ->
    case maps:next(Iter) of
        {K, _, NextIter} ->
            case Set of
                #{K := _} ->
                    is_subset_1(Set, NextIter);
                #{} ->
                    false
            end;
        none ->
            true
    end.

-spec fold(Function, Acc0, Set) -> Acc1
              when
                  Function :: fun((Element, AccIn) -> AccOut),
                  Set :: set(Element),
                  Acc0 :: Acc,
                  Acc1 :: Acc,
                  AccIn :: Acc,
                  AccOut :: Acc.

fold(F, Acc, #{} = D) when is_function(F, 2) ->
    fold_1(F, Acc, maps:iterator(D));
fold(F, Acc, {set, _, _, _, _, _, _, _, _} = D) when is_function(F, 2) ->
    fold_set(F, Acc, D).

fold_1(Fun, Acc, Iter) ->
    case maps:next(Iter) of
        {K, _, NextIter} ->
            fold_1(Fun, Fun(K, Acc), NextIter);
        none ->
            Acc
    end.

-spec filter(Pred, Set1) -> Set2
                when
                    Pred :: fun((Element) -> boolean()),
                    Set1 :: set(Element),
                    Set2 :: set(Element).

filter(F, #{} = D) when is_function(F, 1) ->
    maps:from_keys([ 
                    K ||
                        K := _ <- D,
                        F(K)
                   ],
                   []);
filter(F, {set, _, _, _, _, _, _, _, _} = D) when is_function(F, 1) ->
    filter_set(F, D).

-spec map(Fun, Set1) -> Set2
             when
                 Fun :: fun((Element1) -> Element2),
                 Set1 :: set(Element1),
                 Set2 :: set(Element2).

map(F, #{} = D) when is_function(F, 1) ->
    maps:from_keys([ 
                    F(K) ||
                        K := _ <- D
                   ],
                   []);
map(F, {set, _, _, _, _, _, _, _, _} = D) when is_function(F, 1) ->
    fold(fun(E, Acc) ->
                add_element(F(E), Acc)
         end,
         new([{version, 1}]),
         D).

-spec filtermap(Fun, Set1) -> Set2
                   when
                       Fun ::
                           fun((Element1) ->
                                   boolean() | {true, Element2}),
                       Set1 :: set(Element1),
                       Set2 :: set(Element1 | Element2).

filtermap(F, #{} = D) when is_function(F, 1) ->
    maps:from_keys(lists:filtermap(F, to_list(D)), []);
filtermap(F, {set, _, _, _, _, _, _, _, _} = D) when is_function(F, 1) ->
    fold(fun(E0, Acc) ->
                case F(E0) of
                    true ->
                        add_element(E0, Acc);
                    {true, E1} ->
                        add_element(E1, Acc);
                    false ->
                        Acc
                end
         end,
         new([{version, 1}]),
         D).

-spec get_slot(set(E), E) -> non_neg_integer().

get_slot(T, Key) ->
    H = erlang:phash(Key,
                     case T of
                         {set, _, _, REC3, _, _, _, _, _} ->
                             REC3;
                         REC3 ->
                             error({badrecord, REC3})
                     end),
    if
        (is_record(T, set, 9)
         orelse
         fail)
        and
        (H > element(3, T)) ->
            H
            -
            case T of
                {set, _, _, _, REC4, _, _, _, _} ->
                    REC4;
                REC4 ->
                    error({badrecord, REC4})
            end;
        true ->
            H
    end.

-spec get_bucket(set(), non_neg_integer()) -> term().

get_bucket(T, Slot) ->
    get_bucket_s(case T of
                     {set, _, _, _, _, _, _, _, REC5} ->
                         REC5;
                     REC5 ->
                         error({badrecord, REC5})
                 end,
                 Slot).

fold_set(F, Acc, D) ->
    Segs =
        case D of
            {set, _, _, _, _, _, _, _, REC6} ->
                REC6;
            REC6 ->
                error({badrecord, REC6})
        end,
    fold_segs(F, Acc, Segs, tuple_size(Segs)).

fold_segs(F, Acc, Segs, I) when I >= 1 ->
    Seg = element(I, Segs),
    fold_segs(F, fold_seg(F, Acc, Seg, tuple_size(Seg)), Segs, I - 1);
fold_segs(_, Acc, _, _) ->
    Acc.

fold_seg(F, Acc, Seg, I) when I >= 1 ->
    fold_seg(F, fold_bucket(F, Acc, element(I, Seg)), Seg, I - 1);
fold_seg(_, Acc, _, _) ->
    Acc.

fold_bucket(F, Acc, [E | Bkt]) ->
    fold_bucket(F, F(E, Acc), Bkt);
fold_bucket(_, Acc, []) ->
    Acc.

filter_set(F, D) ->
    Segs0 =
        tuple_to_list(case D of
                          {set, _, _, _, _, _, _, _, REC7} ->
                              REC7;
                          REC7 ->
                              error({badrecord, REC7})
                      end),
    {Segs1, Fc} = filter_seg_list(F, Segs0, [], 0),
    maybe_contract(begin
                       REC8 = list_to_tuple(Segs1),
                       REC9 = D,
                       case REC9 of
                           {set, _, _, _, _, _, _, _, _} ->
                               setelement(9, REC9, REC8);
                           _ ->
                               error({badrecord, REC9})
                       end
                   end,
                   Fc).

filter_seg_list(F, [Seg | Segs], Fss, Fc0) ->
    Bkts0 = tuple_to_list(Seg),
    {Bkts1, Fc1} = filter_bkt_list(F, Bkts0, [], Fc0),
    filter_seg_list(F, Segs, [list_to_tuple(Bkts1) | Fss], Fc1);
filter_seg_list(_, [], Fss, Fc) ->
    {lists:reverse(Fss, []), Fc}.

filter_bkt_list(F, [Bkt0 | Bkts], Fbs, Fc0) ->
    {Bkt1, Fc1} = filter_bucket(F, Bkt0, [], Fc0),
    filter_bkt_list(F, Bkts, [Bkt1 | Fbs], Fc1);
filter_bkt_list(_, [], Fbs, Fc) ->
    {lists:reverse(Fbs), Fc}.

filter_bucket(F, [E | Bkt], Fb, Fc) ->
    case F(E) of
        true ->
            filter_bucket(F, Bkt, [E | Fb], Fc);
        false ->
            filter_bucket(F, Bkt, Fb, Fc + 1)
    end;
filter_bucket(_, [], Fb, Fc) ->
    {Fb, Fc}.

get_bucket_s(Segs, Slot) ->
    SegI = (Slot - 1) div 16 + 1,
    BktI = (Slot - 1) rem 16 + 1,
    element(BktI, element(SegI, Segs)).

put_bucket_s(Segs, Slot, Bkt) ->
    SegI = (Slot - 1) div 16 + 1,
    BktI = (Slot - 1) rem 16 + 1,
    Seg = setelement(BktI, element(SegI, Segs), Bkt),
    setelement(SegI, Segs, Seg).

-spec maybe_expand(set(E)) -> set(E).

maybe_expand({set, _, _, _, _, _, _, _, _} = T0)
    when
        (true
         orelse
         fail)
        and
        (element(2, T0) + 1 > element(6, T0)) ->
    T = maybe_expand_segs(T0),
    N = case T of
            {set, _, REC10, _, _, _, _, _, _} ->
                REC10;
            REC10 ->
                error({badrecord, REC10})
        end
        +
        1,
    Segs0 =
        case T of
            {set, _, _, _, _, _, _, _, REC11} ->
                REC11;
            REC11 ->
                error({badrecord, REC11})
        end,
    Slot1 =
        N
        -
        case T of
            {set, _, _, _, REC12, _, _, _, _} ->
                REC12;
            REC12 ->
                error({badrecord, REC12})
        end,
    B = get_bucket_s(Segs0, Slot1),
    Slot2 = N,
    {B1, B2} =
        rehash(B, Slot1, Slot2,
               case T of
                   {set, _, _, REC13, _, _, _, _, _} ->
                       REC13;
                   REC13 ->
                       error({badrecord, REC13})
               end),
    Segs1 = put_bucket_s(Segs0, Slot1, B1),
    Segs2 = put_bucket_s(Segs1, Slot2, B2),
    begin
        REC14 =
            case T of
                {set, REC18, _, _, _, _, _, _, _} ->
                    REC18;
                REC18 ->
                    error({badrecord, REC18})
            end
            +
            1,
        REC15 = N * 5,
        REC16 = N * 3,
        REC17 = T,
        case REC17 of
            {set, _, _, _, _, _, _, _, _} ->
                setelement(2,
                           setelement(3,
                                      setelement(6,
                                                 setelement(7,
                                                            setelement(9,
                                                                       REC17,
                                                                       Segs2),
                                                            REC16),
                                                 REC15),
                                      N),
                           REC14);
            _ ->
                error({badrecord, REC17})
        end
    end;
maybe_expand(T) ->
    begin
        REC19 =
            case T of
                {set, REC21, _, _, _, _, _, _, _} ->
                    REC21;
                REC21 ->
                    error({badrecord, REC21})
            end
            +
            1,
        REC20 = T,
        case REC20 of
            {set, _, _, _, _, _, _, _, _} ->
                setelement(2, REC20, REC19);
            _ ->
                error({badrecord, REC20})
        end
    end.

-spec maybe_expand_segs(set(E)) -> set(E).

maybe_expand_segs({set, _, _, _, _, _, _, _, _} = T)
    when
        (true
         orelse
         fail)
        and
        (element(3, T) =:= element(4, T)) ->
    begin
        REC22 =
            2
            *
            case T of
                {set, _, _, REC26, _, _, _, _, _} ->
                    REC26;
                REC26 ->
                    error({badrecord, REC26})
            end,
        REC23 =
            2
            *
            case T of
                {set, _, _, _, REC27, _, _, _, _} ->
                    REC27;
                REC27 ->
                    error({badrecord, REC27})
            end,
        REC24 =
            expand_segs(case T of
                            {set, _, _, _, _, _, _, _, REC28} ->
                                REC28;
                            REC28 ->
                                error({badrecord, REC28})
                        end,
                        case T of
                            {set, _, _, _, _, _, _, REC29, _} ->
                                REC29;
                            REC29 ->
                                error({badrecord, REC29})
                        end),
        REC25 = T,
        case REC25 of
            {set, _, _, _, _, _, _, _, _} ->
                setelement(4,
                           setelement(5,
                                      setelement(9, REC25, REC24),
                                      REC23),
                           REC22);
            _ ->
                error({badrecord, REC25})
        end
    end;
maybe_expand_segs(T) ->
    T.

-spec maybe_contract(set(E), non_neg_integer()) -> set(E).

maybe_contract({set, _, _, _, _, _, _, _, _} = T, Dc)
    when
        (true
         orelse
         fail)
        and
        (element(2, T) - Dc < element(7, T)),
        element(3, T) > 16 ->
    N = case T of
            {set, _, REC30, _, _, _, _, _, _} ->
                REC30;
            REC30 ->
                error({badrecord, REC30})
        end,
    Slot1 =
        N
        -
        case T of
            {set, _, _, _, REC31, _, _, _, _} ->
                REC31;
            REC31 ->
                error({badrecord, REC31})
        end,
    Segs0 =
        case T of
            {set, _, _, _, _, _, _, _, REC32} ->
                REC32;
            REC32 ->
                error({badrecord, REC32})
        end,
    B1 = get_bucket_s(Segs0, Slot1),
    Slot2 = N,
    B2 = get_bucket_s(Segs0, Slot2),
    Segs1 = put_bucket_s(Segs0, Slot1, B1 ++ B2),
    Segs2 = put_bucket_s(Segs1, Slot2, []),
    N1 = N - 1,
    maybe_contract_segs(begin
                            REC33 =
                                case T of
                                    {set, REC37, _, _, _, _, _, _, _} ->
                                        REC37;
                                    REC37 ->
                                        error({badrecord, REC37})
                                end
                                -
                                Dc,
                            REC34 = N1 * 5,
                            REC35 = N1 * 3,
                            REC36 = T,
                            case REC36 of
                                {set, _, _, _, _, _, _, _, _} ->
                                    setelement(2,
                                               setelement(3,
                                                          setelement(6,
                                                                     setelement(7,
                                                                                setelement(9,
                                                                                           REC36,
                                                                                           Segs2),
                                                                                REC35),
                                                                     REC34),
                                                          N1),
                                               REC33);
                                _ ->
                                    error({badrecord, REC36})
                            end
                        end);
maybe_contract(T, Dc) ->
    begin
        REC38 =
            case T of
                {set, REC40, _, _, _, _, _, _, _} ->
                    REC40;
                REC40 ->
                    error({badrecord, REC40})
            end
            -
            Dc,
        REC39 = T,
        case REC39 of
            {set, _, _, _, _, _, _, _, _} ->
                setelement(2, REC39, REC38);
            _ ->
                error({badrecord, REC39})
        end
    end.

-spec maybe_contract_segs(set(E)) -> set(E).

maybe_contract_segs({set, _, _, _, _, _, _, _, _} = T)
    when
        (true
         orelse
         fail)
        and
        (element(3, T) =:= element(5, T)) ->
    begin
        REC41 =
            case T of
                {set, _, _, REC45, _, _, _, _, _} ->
                    REC45;
                REC45 ->
                    error({badrecord, REC45})
            end
            div
            2,
        REC42 =
            case T of
                {set, _, _, _, REC46, _, _, _, _} ->
                    REC46;
                REC46 ->
                    error({badrecord, REC46})
            end
            div
            2,
        REC43 =
            contract_segs(case T of
                              {set, _, _, _, _, _, _, _, REC47} ->
                                  REC47;
                              REC47 ->
                                  error({badrecord, REC47})
                          end),
        REC44 = T,
        case REC44 of
            {set, _, _, _, _, _, _, _, _} ->
                setelement(4,
                           setelement(5,
                                      setelement(9, REC44, REC43),
                                      REC42),
                           REC41);
            _ ->
                error({badrecord, REC44})
        end
    end;
maybe_contract_segs(T) ->
    T.

-spec rehash([T], integer(), pos_integer(), pos_integer()) -> {[T], [T]}.

rehash([E | T], Slot1, Slot2, MaxN) ->
    {L1, L2} = rehash(T, Slot1, Slot2, MaxN),
    case erlang:phash(E, MaxN) of
        Slot1 ->
            {[E | L1], L2};
        Slot2 ->
            {L1, [E | L2]}
    end;
rehash([], _, _, _) ->
    {[], []}.

-spec mk_seg(16) -> seg().

mk_seg(16) ->
    {[], [], [], [], [], [], [], [], [], [], [], [], [], [], [], []}.

-spec expand_segs(segs(E), seg()) -> segs(E).

expand_segs({B1}, Empty) ->
    {B1, Empty};
expand_segs({B1, B2}, Empty) ->
    {B1, B2, Empty, Empty};
expand_segs({B1, B2, B3, B4}, Empty) ->
    {B1, B2, B3, B4, Empty, Empty, Empty, Empty};
expand_segs({B1, B2, B3, B4, B5, B6, B7, B8}, Empty) ->
    {B1, B2, B3, B4, B5, B6, B7, B8, Empty, Empty, Empty, Empty, Empty,
     Empty, Empty, Empty};
expand_segs({B1, B2, B3, B4, B5, B6, B7, B8, B9, B10, B11, B12, B13,
             B14, B15, B16},
            Empty) ->
    {B1, B2, B3, B4, B5, B6, B7, B8, B9, B10, B11, B12, B13, B14, B15,
     B16, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty, Empty,
     Empty, Empty, Empty, Empty, Empty, Empty, Empty};
expand_segs(Segs, Empty) ->
    list_to_tuple(tuple_to_list(Segs)
                  ++
                  lists:duplicate(tuple_size(Segs), Empty)).

-spec contract_segs(segs(E)) -> segs(E).

contract_segs({B1, _}) ->
    {B1};
contract_segs({B1, B2, _, _}) ->
    {B1, B2};
contract_segs({B1, B2, B3, B4, _, _, _, _}) ->
    {B1, B2, B3, B4};
contract_segs({B1, B2, B3, B4, B5, B6, B7, B8, _, _, _, _, _, _, _, _}) ->
    {B1, B2, B3, B4, B5, B6, B7, B8};
contract_segs({B1, B2, B3, B4, B5, B6, B7, B8, B9, B10, B11, B12, B13,
               B14, B15, B16, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
               _, _}) ->
    {B1, B2, B3, B4, B5, B6, B7, B8, B9, B10, B11, B12, B13, B14, B15,
     B16};
contract_segs(Segs) ->
    Ss = tuple_size(Segs) div 2,
    list_to_tuple(lists:sublist(tuple_to_list(Segs), 1, Ss)).



