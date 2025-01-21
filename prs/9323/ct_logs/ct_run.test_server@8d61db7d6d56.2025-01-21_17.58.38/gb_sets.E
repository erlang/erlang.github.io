-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.2/src/gb_sets.erl", 1).

-module(gb_sets).

-export([empty/0,
         is_empty/1,
         size/1,
         singleton/1,
         is_member/2,
         insert/2,
         add/2,
         delete/2,
         delete_any/2,
         balance/1,
         union/2,
         union/1,
         intersection/2,
         intersection/1,
         is_equal/2,
         is_disjoint/2,
         difference/2,
         is_subset/2,
         to_list/1,
         from_list/1,
         from_ordset/1,
         smallest/1,
         largest/1,
         take_smallest/1,
         take_largest/1,
         smaller/2,
         larger/2,
         iterator/1,
         iterator/2,
         iterator_from/2,
         iterator_from/3,
         next/1,
         filter/2,
         fold/3,
         map/2,
         filtermap/2,
         is_set/1]).

-export([new/0,is_element/2,add_element/2,del_element/2,subtract/2]).

-export_type([set/0,set/1,iter/0,iter/1]).

-type gb_set_node(Element) :: nil | {Element, _, _}.

-opaque set(Element) :: {non_neg_integer(), gb_set_node(Element)}.

-type set() :: set(_).

-opaque iter(Element) :: {ordered | reversed, [gb_set_node(Element)]}.

-type iter() :: iter(_).

-spec empty() -> Set when Set :: set(none()).

empty() ->
    {0, nil}.

-spec new() -> Set when Set :: set(none()).

new() ->
    empty().

-spec is_empty(Set) -> boolean() when Set :: set().

is_empty({0, nil}) ->
    true;
is_empty(_) ->
    false.

-spec size(Set) -> non_neg_integer() when Set :: set().

size({Size, _}) ->
    Size.

-spec is_equal(Set1, Set2) -> boolean()
                  when Set1 :: set(), Set2 :: set().

is_equal({Size, S1}, {Size, _} = S2) ->
    try is_equal_1(S1, to_list(S2)) of
        [] ->
            true
    catch
        throw:not_equal ->
            false
    end;
is_equal({_, _}, {_, _}) ->
    false.

is_equal_1(nil, Keys) ->
    Keys;
is_equal_1({Key1, Smaller, Bigger}, Keys0) ->
    [Key2 | Keys] = is_equal_1(Smaller, Keys0),
    if
        Key1 == Key2 ->
            is_equal_1(Bigger, Keys);
        true ->
            throw(not_equal)
    end.

-spec singleton(Element) -> set(Element).

singleton(Key) ->
    {1, {Key, nil, nil}}.

-spec is_element(Element, Set) -> boolean() when Set :: set(Element).

is_element(Key, S) ->
    is_member(Key, S).

-spec is_member(Element, Set) -> boolean() when Set :: set(Element).

is_member(Key, {_, T}) ->
    is_member_1(Key, T).

is_member_1(Key, {Key1, Smaller, _}) when Key < Key1 ->
    is_member_1(Key, Smaller);
is_member_1(Key, {Key1, _, Bigger}) when Key > Key1 ->
    is_member_1(Key, Bigger);
is_member_1(_, {_, _, _}) ->
    true;
is_member_1(_, nil) ->
    false.

-spec insert(Element, Set1) -> Set2
                when Set1 :: set(Element), Set2 :: set(Element).

insert(Key, {S, T}) when is_integer(S), S >= 0 ->
    S1 = S + 1,
    {S1, insert_1(Key, T, S1 * S1)}.

insert_1(Key, {Key1, Smaller, Bigger}, S) when Key < Key1 ->
    case insert_1(Key, Smaller, S bsr 1) of
        {T1, H1, S1} when is_integer(H1), is_integer(S1) ->
            T = {Key1, T1, Bigger},
            {H2, S2} = count(Bigger),
            H = max(H1, H2) bsl 1,
            SS = S1 + S2 + 1,
            P = SS * SS,
            if
                H > P ->
                    balance(T, SS);
                true ->
                    {T, H, SS}
            end;
        T1 ->
            {Key1, T1, Bigger}
    end;
insert_1(Key, {Key1, Smaller, Bigger}, S) when Key > Key1 ->
    case insert_1(Key, Bigger, S bsr 1) of
        {T1, H1, S1} when is_integer(H1), is_integer(S1) ->
            T = {Key1, Smaller, T1},
            {H2, S2} = count(Smaller),
            H = max(H1, H2) bsl 1,
            SS = S1 + S2 + 1,
            P = SS * SS,
            if
                H > P ->
                    balance(T, SS);
                true ->
                    {T, H, SS}
            end;
        T1 ->
            {Key1, Smaller, T1}
    end;
insert_1(Key, nil, 0) ->
    {{Key, nil, nil}, 1, 1};
insert_1(Key, nil, _) ->
    {Key, nil, nil};
insert_1(Key, _, _) ->
    error({key_exists, Key}).

count({_, nil, nil}) ->
    {1, 1};
count({_, Sm, Bi}) ->
    {H1, S1} = count(Sm),
    {H2, S2} = count(Bi),
    {max(H1, H2) bsl 1, S1 + S2 + 1};
count(nil) ->
    {1, 0}.

-spec balance(Set1) -> Set2
                 when Set1 :: set(Element), Set2 :: set(Element).

balance({S, T}) when is_integer(S), S >= 0 ->
    {S, balance(T, S)}.

balance(T, S) ->
    balance_list(to_list_1(T), S).

balance_list(L, S) ->
    {T, _} = balance_list_1(L, S),
    T.

balance_list_1(L, S) when S > 1 ->
    Sm = S - 1,
    S2 = Sm div 2,
    S1 = Sm - S2,
    {T1, [K | L1]} = balance_list_1(L, S1),
    {T2, L2} = balance_list_1(L1, S2),
    T = {K, T1, T2},
    {T, L2};
balance_list_1([Key | L], 1) ->
    {{Key, nil, nil}, L};
balance_list_1(L, 0) ->
    {nil, L}.

-spec add_element(Element, Set1) -> Set2
                     when Set1 :: set(Element), Set2 :: set(Element).

add_element(X, S) ->
    add(X, S).

-spec add(Element, Set1) -> Set2
             when Set1 :: set(Element), Set2 :: set(Element).

add(X, S) ->
    case is_member(X, S) of
        true ->
            S;
        false ->
            insert(X, S)
    end.

-spec from_list(List) -> Set when List :: [Element], Set :: set(Element).

from_list(L) ->
    from_ordset(ordsets:from_list(L)).

-spec from_ordset(List) -> Set
                     when List :: [Element], Set :: set(Element).

from_ordset(L) ->
    S = length(L),
    {S, balance_list(L, S)}.

-spec del_element(Element, Set1) -> Set2
                     when Set1 :: set(Element), Set2 :: set(Element).

del_element(Key, S) ->
    delete_any(Key, S).

-spec delete_any(Element, Set1) -> Set2
                    when Set1 :: set(Element), Set2 :: set(Element).

delete_any(Key, S) ->
    case is_member(Key, S) of
        true ->
            delete(Key, S);
        false ->
            S
    end.

-spec delete(Element, Set1) -> Set2
                when Set1 :: set(Element), Set2 :: set(Element).

delete(Key, {S, T}) ->
    {S - 1, delete_1(Key, T)}.

delete_1(Key, {Key1, Smaller, Larger}) when Key < Key1 ->
    Smaller1 = delete_1(Key, Smaller),
    {Key1, Smaller1, Larger};
delete_1(Key, {Key1, Smaller, Bigger}) when Key > Key1 ->
    Bigger1 = delete_1(Key, Bigger),
    {Key1, Smaller, Bigger1};
delete_1(_, {_, Smaller, Larger}) ->
    merge(Smaller, Larger).

merge(Smaller, nil) ->
    Smaller;
merge(nil, Larger) ->
    Larger;
merge(Smaller, Larger) ->
    {Key, Larger1} = take_smallest1(Larger),
    {Key, Smaller, Larger1}.

-spec take_smallest(Set1) -> {Element, Set2}
                       when Set1 :: set(Element), Set2 :: set(Element).

take_smallest({S, T}) ->
    {Key, Larger} = take_smallest1(T),
    {Key, {S - 1, Larger}}.

take_smallest1({Key, nil, Larger}) ->
    {Key, Larger};
take_smallest1({Key, Smaller, Larger}) ->
    {Key1, Smaller1} = take_smallest1(Smaller),
    {Key1, {Key, Smaller1, Larger}}.

-spec smallest(Set) -> Element when Set :: set(Element).

smallest({_, T}) ->
    smallest_1(T).

smallest_1({Key, nil, _Larger}) ->
    Key;
smallest_1({_Key, Smaller, _Larger}) ->
    smallest_1(Smaller).

-spec take_largest(Set1) -> {Element, Set2}
                      when Set1 :: set(Element), Set2 :: set(Element).

take_largest({S, T}) ->
    {Key, Smaller} = take_largest1(T),
    {Key, {S - 1, Smaller}}.

take_largest1({Key, Smaller, nil}) ->
    {Key, Smaller};
take_largest1({Key, Smaller, Larger}) ->
    {Key1, Larger1} = take_largest1(Larger),
    {Key1, {Key, Smaller, Larger1}}.

-spec largest(Set) -> Element when Set :: set(Element).

largest({_, T}) ->
    largest_1(T).

largest_1({Key, _Smaller, nil}) ->
    Key;
largest_1({_Key, _Smaller, Larger}) ->
    largest_1(Larger).

-spec smaller(Element1, Set) -> none | {found, Element2}
                 when
                     Element1 :: Element,
                     Element2 :: Element,
                     Set :: set(Element).

smaller(Key, {_, T}) ->
    smaller_1(Key, T).

smaller_1(_Key, nil) ->
    none;
smaller_1(Key, {Key1, _Smaller, Larger}) when Key > Key1 ->
    case smaller_1(Key, Larger) of
        none ->
            {found, Key1};
        Found ->
            Found
    end;
smaller_1(Key, {_Key, Smaller, _Larger}) ->
    smaller_1(Key, Smaller).

-spec larger(Element1, Set) -> none | {found, Element2}
                when
                    Element1 :: Element,
                    Element2 :: Element,
                    Set :: set(Element).

larger(Key, {_, T}) ->
    larger_1(Key, T).

larger_1(_Key, nil) ->
    none;
larger_1(Key, {Key1, Smaller, _Larger}) when Key < Key1 ->
    case larger_1(Key, Smaller) of
        none ->
            {found, Key1};
        Found ->
            Found
    end;
larger_1(Key, {_Key, _Smaller, Larger}) ->
    larger_1(Key, Larger).

-spec to_list(Set) -> List when Set :: set(Element), List :: [Element].

to_list({_, T}) ->
    to_list(T, []).

to_list_1(T) ->
    to_list(T, []).

to_list({Key, Small, Big}, L) ->
    to_list(Small, [Key | to_list(Big, L)]);
to_list(nil, L) ->
    L.

-spec iterator(Set) -> Iter
                  when Set :: set(Element), Iter :: iter(Element).

iterator(Set) ->
    iterator(Set, ordered).

-spec iterator(Set, Order) -> Iter
                  when
                      Set :: set(Element),
                      Iter :: iter(Element),
                      Order :: ordered | reversed.

iterator({_, T}, ordered) ->
    {ordered, iterator_1(T, [])};
iterator({_, T}, reversed) ->
    {reversed, iterator_r(T, [])}.

iterator_1({_, nil, _} = T, As) ->
    [T | As];
iterator_1({_, L, _} = T, As) ->
    iterator_1(L, [T | As]);
iterator_1(nil, As) ->
    As.

iterator_r({_, _, nil} = T, As) ->
    [T | As];
iterator_r({_, _, R} = T, As) ->
    iterator_r(R, [T | As]);
iterator_r(nil, As) ->
    As.

-spec iterator_from(Element, Set) -> Iter
                       when Set :: set(Element), Iter :: iter(Element).

iterator_from(Element, Set) ->
    iterator_from(Element, Set, ordered).

-spec iterator_from(Element, Set, Order) -> Iter
                       when
                           Set :: set(Element),
                           Iter :: iter(Element),
                           Order :: ordered | reversed.

iterator_from(S, {_, T}, ordered) ->
    {ordered, iterator_from_1(S, T, [])};
iterator_from(S, {_, T}, reversed) ->
    {reversed, iterator_from_r(S, T, [])}.

iterator_from_1(S, {K, _, T}, As) when K < S ->
    iterator_from_1(S, T, As);
iterator_from_1(_, {_, nil, _} = T, As) ->
    [T | As];
iterator_from_1(S, {_, L, _} = T, As) ->
    iterator_from_1(S, L, [T | As]);
iterator_from_1(_, nil, As) ->
    As.

iterator_from_r(S, {K, T, _}, As) when K > S ->
    iterator_from_r(S, T, As);
iterator_from_r(_, {_, _, nil} = T, As) ->
    [T | As];
iterator_from_r(S, {_, _, R} = T, As) ->
    iterator_from_r(S, R, [T | As]);
iterator_from_r(_, nil, As) ->
    As.

-spec next(Iter1) -> {Element, Iter2} | none
              when Iter1 :: iter(Element), Iter2 :: iter(Element).

next({ordered, [{X, _, T} | As]}) ->
    {X, {ordered, iterator_1(T, As)}};
next({reversed, [{X, T, _} | As]}) ->
    {X, {reversed, iterator_r(T, As)}};
next({_, []}) ->
    none.

-spec union(Set1, Set2) -> Set3
               when
                   Set1 :: set(Element),
                   Set2 :: set(Element),
                   Set3 :: set(Element).

union({N1, T1}, {N2, T2}) when is_integer(N1), is_integer(N2), N2 < N1 ->
    union(to_list_1(T2), N2, T1, N1);
union({N1, T1}, {N2, T2}) when is_integer(N1), is_integer(N2) ->
    union(to_list_1(T1), N1, T2, N2).

union(L, N1, T2, N2) when N2 < 10 ->
    union_2(L, to_list_1(T2), N1 + N2);
union(L, N1, T2, N2) ->
    X = N1 * round(1.46 * math:log(N2)),
    if
        N2 < X ->
            union_2(L, to_list_1(T2), N1 + N2);
        true ->
            union_1(L, mk_set(N2, T2))
    end.

-spec mk_set(non_neg_integer(), gb_set_node(T)) -> set(T).

mk_set(N, T) ->
    {N, T}.

union_1([X | Xs], S) ->
    union_1(Xs, add(X, S));
union_1([], S) ->
    S.

union_2(Xs, Ys, S) ->
    union_2(Xs, Ys, [], S).

union_2([X | Xs1], [Y | _] = Ys, As, S) when X < Y ->
    union_2(Xs1, Ys, [X | As], S);
union_2([X | _] = Xs, [Y | Ys1], As, S) when X > Y ->
    union_2(Ys1, Xs, [Y | As], S);
union_2([X | Xs1], [_ | Ys1], As, S) ->
    union_2(Xs1, Ys1, [X | As], S - 1);
union_2([], Ys, As, S) ->
    {S, balance_revlist(push(Ys, As), S)};
union_2(Xs, [], As, S) ->
    {S, balance_revlist(push(Xs, As), S)}.

push([X | Xs], As) ->
    push(Xs, [X | As]);
push([], As) ->
    As.

balance_revlist(L, S) when is_integer(S) ->
    {T, _} = balance_revlist_1(L, S),
    T.

balance_revlist_1(L, S) when S > 1 ->
    Sm = S - 1,
    S2 = Sm div 2,
    S1 = Sm - S2,
    {T2, [K | L1]} = balance_revlist_1(L, S1),
    {T1, L2} = balance_revlist_1(L1, S2),
    T = {K, T1, T2},
    {T, L2};
balance_revlist_1([Key | L], 1) ->
    {{Key, nil, nil}, L};
balance_revlist_1(L, 0) ->
    {nil, L}.

-spec union(SetList) -> Set
               when SetList :: [set(Element), ...], Set :: set(Element).

union([S | Ss]) ->
    union_list(S, Ss);
union([]) ->
    empty().

union_list(S, [S1 | Ss]) ->
    union_list(union(S, S1), Ss);
union_list(S, []) ->
    S.

-spec intersection(Set1, Set2) -> Set3
                      when
                          Set1 :: set(Element),
                          Set2 :: set(Element),
                          Set3 :: set(Element).

intersection({N1, T1}, {N2, T2})
    when is_integer(N1), is_integer(N2), N2 < N1 ->
    intersection(to_list_1(T2), N2, T1, N1);
intersection({N1, T1}, {N2, T2}) when is_integer(N1), is_integer(N2) ->
    intersection(to_list_1(T1), N1, T2, N2).

intersection(L, _N1, T2, N2) when N2 < 10 ->
    intersection_2(L, to_list_1(T2));
intersection(L, N1, T2, N2) ->
    X = N1 * round(1.46 * math:log(N2)),
    if
        N2 < X ->
            intersection_2(L, to_list_1(T2));
        true ->
            intersection_1(L, T2)
    end.

intersection_1(Xs, T) ->
    intersection_1(Xs, T, [], 0).

intersection_1([X | Xs], T, As, N) ->
    case is_member_1(X, T) of
        true ->
            intersection_1(Xs, T, [X | As], N + 1);
        false ->
            intersection_1(Xs, T, As, N)
    end;
intersection_1([], _, As, N) ->
    {N, balance_revlist(As, N)}.

intersection_2(Xs, Ys) ->
    intersection_2(Xs, Ys, [], 0).

intersection_2([X | Xs1], [Y | _] = Ys, As, S) when X < Y ->
    intersection_2(Xs1, Ys, As, S);
intersection_2([X | _] = Xs, [Y | Ys1], As, S) when X > Y ->
    intersection_2(Ys1, Xs, As, S);
intersection_2([X | Xs1], [_ | Ys1], As, S) ->
    intersection_2(Xs1, Ys1, [X | As], S + 1);
intersection_2([], _, As, S) ->
    {S, balance_revlist(As, S)};
intersection_2(_, [], As, S) ->
    {S, balance_revlist(As, S)}.

-spec intersection(SetList) -> Set
                      when
                          SetList :: [set(Element), ...],
                          Set :: set(Element).

intersection([S | Ss]) ->
    intersection_list(S, Ss).

intersection_list(S, [S1 | Ss]) ->
    intersection_list(intersection(S, S1), Ss);
intersection_list(S, []) ->
    S.

-spec is_disjoint(Set1, Set2) -> boolean()
                     when Set1 :: set(Element), Set2 :: set(Element).

is_disjoint({N1, T1}, {N2, T2}) when N1 < N2 ->
    is_disjoint_1(T1, T2);
is_disjoint({_, T1}, {_, T2}) ->
    is_disjoint_1(T2, T1).

is_disjoint_1({K1, Smaller1, Bigger}, {K2, Smaller2, _} = Tree)
    when K1 < K2 ->
    not is_member_1(K1, Smaller2)
    andalso
    is_disjoint_1(Smaller1, Smaller2)
    andalso
    is_disjoint_1(Bigger, Tree);
is_disjoint_1({K1, Smaller, Bigger1}, {K2, _, Bigger2} = Tree)
    when K1 > K2 ->
    not is_member_1(K1, Bigger2)
    andalso
    is_disjoint_1(Bigger1, Bigger2)
    andalso
    is_disjoint_1(Smaller, Tree);
is_disjoint_1({_K1, _, _}, {_K2, _, _}) ->
    false;
is_disjoint_1(nil, _) ->
    true;
is_disjoint_1(_, nil) ->
    true.

-spec subtract(Set1, Set2) -> Set3
                  when
                      Set1 :: set(Element),
                      Set2 :: set(Element),
                      Set3 :: set(Element).

subtract(S1, S2) ->
    difference(S1, S2).

-spec difference(Set1, Set2) -> Set3
                    when
                        Set1 :: set(Element),
                        Set2 :: set(Element),
                        Set3 :: set(Element).

difference({N1, T1}, {N2, T2})
    when is_integer(N1), N1 >= 0, is_integer(N2), N2 >= 0 ->
    difference(to_list_1(T1), N1, T2, N2).

difference(L, N1, T2, N2) when N2 < 10 ->
    difference_2(L, to_list_1(T2), N1);
difference(L, N1, T2, N2) ->
    X = N1 * round(1.46 * math:log(N2)),
    if
        N2 < X ->
            difference_2(L, to_list_1(T2), N1);
        true ->
            difference_1(L, T2)
    end.

difference_1(Xs, T) ->
    difference_1(Xs, T, [], 0).

difference_1([X | Xs], T, As, N) ->
    case is_member_1(X, T) of
        true ->
            difference_1(Xs, T, As, N);
        false ->
            difference_1(Xs, T, [X | As], N + 1)
    end;
difference_1([], _, As, N) ->
    {N, balance_revlist(As, N)}.

difference_2(Xs, Ys, S) ->
    difference_2(Xs, Ys, [], S).

difference_2([X | Xs1], [Y | _] = Ys, As, S) when X < Y ->
    difference_2(Xs1, Ys, [X | As], S);
difference_2([X | _] = Xs, [Y | Ys1], As, S) when X > Y ->
    difference_2(Xs, Ys1, As, S);
difference_2([_X | Xs1], [_Y | Ys1], As, S) ->
    difference_2(Xs1, Ys1, As, S - 1);
difference_2([], _Ys, As, S) ->
    {S, balance_revlist(As, S)};
difference_2(Xs, [], As, S) ->
    {S, balance_revlist(push(Xs, As), S)}.

-spec is_subset(Set1, Set2) -> boolean()
                   when Set1 :: set(Element), Set2 :: set(Element).

is_subset({N1, T1}, {N2, T2})
    when is_integer(N1), N1 >= 0, is_integer(N2), N2 >= 0 ->
    is_subset(to_list_1(T1), N1, T2, N2).

is_subset(L, _N1, T2, N2) when N2 < 10 ->
    is_subset_2(L, to_list_1(T2));
is_subset(L, N1, T2, N2) ->
    X = N1 * round(1.46 * math:log(N2)),
    if
        N2 < X ->
            is_subset_2(L, to_list_1(T2));
        true ->
            is_subset_1(L, T2)
    end.

is_subset_1([X | Xs], T) ->
    case is_member_1(X, T) of
        true ->
            is_subset_1(Xs, T);
        false ->
            false
    end;
is_subset_1([], _) ->
    true.

is_subset_2([X | _], [Y | _]) when X < Y ->
    false;
is_subset_2([X | _] = Xs, [Y | Ys1]) when X > Y ->
    is_subset_2(Xs, Ys1);
is_subset_2([_ | Xs1], [_ | Ys1]) ->
    is_subset_2(Xs1, Ys1);
is_subset_2([], _) ->
    true;
is_subset_2(_, []) ->
    false.

-spec is_set(Term) -> boolean() when Term :: term().

is_set({0, nil}) ->
    true;
is_set({N, {_, _, _}}) when is_integer(N), N >= 0 ->
    true;
is_set(_) ->
    false.

-spec filter(Pred, Set1) -> Set2
                when
                    Pred :: fun((Element) -> boolean()),
                    Set1 :: set(Element),
                    Set2 :: set(Element).

filter(F, S) when is_function(F, 1) ->
    from_ordset([ 
                 X ||
                     X <- to_list(S),
                     F(X)
                ]).

-spec map(Fun, Set1) -> Set2
             when
                 Fun :: fun((Element1) -> Element2),
                 Set1 :: set(Element1),
                 Set2 :: set(Element2).

map(F, {_, T}) when is_function(F, 1) ->
    from_list(map_1(T, F, [])).

map_1({Key, Small, Big}, F, L) ->
    map_1(Small, F, [F(Key) | map_1(Big, F, L)]);
map_1(nil, _F, L) ->
    L.

-spec filtermap(Fun, Set1) -> Set2
                   when
                       Fun ::
                           fun((Element1) ->
                                   boolean() | {true, Element2}),
                       Set1 :: set(Element1),
                       Set2 :: set(Element1 | Element2).

filtermap(F, {_, T}) when is_function(F, 1) ->
    from_list(filtermap_1(T, F, [])).

filtermap_1({Key, Small, Big}, F, L) ->
    case F(Key) of
        true ->
            filtermap_1(Small, F, [Key | filtermap_1(Big, F, L)]);
        {true, Val} ->
            filtermap_1(Small, F, [Val | filtermap_1(Big, F, L)]);
        false ->
            filtermap_1(Small, F, filtermap_1(Big, F, L))
    end;
filtermap_1(nil, _F, L) ->
    L.

-spec fold(Function, Acc0, Set) -> Acc1
              when
                  Function :: fun((Element, AccIn) -> AccOut),
                  Acc0 :: Acc,
                  Acc1 :: Acc,
                  AccIn :: Acc,
                  AccOut :: Acc,
                  Set :: set(Element).

fold(F, A, {_, T}) when is_function(F, 2) ->
    fold_1(F, A, T).

fold_1(F, Acc0, {Key, Small, Big}) ->
    Acc1 = fold_1(F, Acc0, Small),
    Acc = F(Key, Acc1),
    fold_1(F, Acc, Big);
fold_1(_, Acc, _) ->
    Acc.



