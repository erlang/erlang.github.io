-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.1.2/src/gb_trees.erl", 1).

-module(gb_trees).

-export([empty/0,
         is_empty/1,
         size/1,
         lookup/2,
         get/2,
         insert/3,
         update/3,
         enter/3,
         delete/2,
         delete_any/2,
         balance/1,
         is_defined/2,
         keys/1,
         values/1,
         to_list/1,
         from_orddict/1,
         smallest/1,
         largest/1,
         take/2,
         take_any/2,
         take_smallest/1,
         take_largest/1,
         smaller/2,
         larger/2,
         iterator/1,
         iterator/2,
         iterator_from/2,
         iterator_from/3,
         next/1,
         map/2]).

-export_type([tree/0,tree/2,iter/0,iter/2]).

-type gb_tree_node(K, V) ::
          nil | {K, V, gb_tree_node(K, V), gb_tree_node(K, V)}.

-opaque tree(Key, Value) ::
            {non_neg_integer(), gb_tree_node(Key, Value)}.

-type tree() :: tree(_, _).

-opaque iter(Key, Value) ::
            {ordered | reversed, [gb_tree_node(Key, Value)]}.

-type iter() :: iter(_, _).

-spec empty() -> tree(none(), none()).

empty() ->
    {0, nil}.

-spec is_empty(Tree) -> boolean() when Tree :: tree().

is_empty({0, nil}) ->
    true;
is_empty(_) ->
    false.

-spec size(Tree) -> non_neg_integer() when Tree :: tree().

size({Size, _}) when is_integer(Size), Size >= 0 ->
    Size.

-spec lookup(Key, Tree) -> none | {value, Value}
                when Tree :: tree(Key, Value).

lookup(Key, {_, T}) ->
    lookup_1(Key, T).

lookup_1(Key, {Key1, _, Smaller, _}) when Key < Key1 ->
    lookup_1(Key, Smaller);
lookup_1(Key, {Key1, _, _, Bigger}) when Key > Key1 ->
    lookup_1(Key, Bigger);
lookup_1(_, {_, Value, _, _}) ->
    {value, Value};
lookup_1(_, nil) ->
    none.

-spec is_defined(Key, Tree) -> boolean()
                    when Tree :: tree(Key, Value :: term()).

is_defined(Key, {_, T}) ->
    is_defined_1(Key, T).

is_defined_1(Key, {Key1, _, Smaller, _}) when Key < Key1 ->
    is_defined_1(Key, Smaller);
is_defined_1(Key, {Key1, _, _, Bigger}) when Key > Key1 ->
    is_defined_1(Key, Bigger);
is_defined_1(_, {_, _, _, _}) ->
    true;
is_defined_1(_, nil) ->
    false.

-spec get(Key, Tree) -> Value when Tree :: tree(Key, Value).

get(Key, {_, T}) ->
    get_1(Key, T).

get_1(Key, {Key1, _, Smaller, _}) when Key < Key1 ->
    get_1(Key, Smaller);
get_1(Key, {Key1, _, _, Bigger}) when Key > Key1 ->
    get_1(Key, Bigger);
get_1(_, {_, Value, _, _}) ->
    Value.

-spec update(Key, Value, Tree1) -> Tree2
                when
                    Tree1 :: tree(Key, Value), Tree2 :: tree(Key, Value).

update(Key, Val, {S, T}) ->
    T1 = update_1(Key, Val, T),
    {S, T1}.

update_1(Key, Value, {Key1, V, Smaller, Bigger}) when Key < Key1 ->
    {Key1, V, update_1(Key, Value, Smaller), Bigger};
update_1(Key, Value, {Key1, V, Smaller, Bigger}) when Key > Key1 ->
    {Key1, V, Smaller, update_1(Key, Value, Bigger)};
update_1(Key, Value, {_, _, Smaller, Bigger}) ->
    {Key, Value, Smaller, Bigger}.

-spec insert(Key, Value, Tree1) -> Tree2
                when
                    Tree1 :: tree(Key, Value), Tree2 :: tree(Key, Value).

insert(Key, Val, {S, T}) when is_integer(S) ->
    S1 = S + 1,
    {S1, insert_1(Key, Val, T, S1 * S1)}.

insert_1(Key, Value, {Key1, V, Smaller, Bigger}, S) when Key < Key1 ->
    case insert_1(Key, Value, Smaller, S bsr 1) of
        {T1, H1, S1} when is_integer(H1), is_integer(S1) ->
            T = {Key1, V, T1, Bigger},
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
            {Key1, V, T1, Bigger}
    end;
insert_1(Key, Value, {Key1, V, Smaller, Bigger}, S) when Key > Key1 ->
    case insert_1(Key, Value, Bigger, S bsr 1) of
        {T1, H1, S1} when is_integer(H1), is_integer(S1) ->
            T = {Key1, V, Smaller, T1},
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
            {Key1, V, Smaller, T1}
    end;
insert_1(Key, Value, nil, S) when S =:= 0 ->
    {{Key, Value, nil, nil}, 1, 1};
insert_1(Key, Value, nil, _S) ->
    {Key, Value, nil, nil};
insert_1(Key, _, _, _) ->
    error({key_exists, Key}).

-spec enter(Key, Value, Tree1) -> Tree2
               when Tree1 :: tree(Key, Value), Tree2 :: tree(Key, Value).

enter(Key, Val, T) ->
    case is_defined(Key, T) of
        true ->
            update(Key, Val, T);
        false ->
            insert(Key, Val, T)
    end.

count({_, _, nil, nil}) ->
    {1, 1};
count({_, _, Sm, Bi}) ->
    {H1, S1} = count(Sm),
    {H2, S2} = count(Bi),
    {max(H1, H2) bsl 1, S1 + S2 + 1};
count(nil) ->
    {1, 0}.

-spec balance(Tree1) -> Tree2
                 when
                     Tree1 :: tree(Key, Value),
                     Tree2 :: tree(Key, Value).

balance({S, T}) when is_integer(S), S >= 0 ->
    {S, balance(T, S)}.

balance(T, S) ->
    balance_list(to_list_1(T), S).

balance_list(L, S) ->
    {T, []} = balance_list_1(L, S),
    T.

balance_list_1(L, S) when S > 1 ->
    Sm = S - 1,
    S2 = Sm div 2,
    S1 = Sm - S2,
    {T1, [{K, V} | L1]} = balance_list_1(L, S1),
    {T2, L2} = balance_list_1(L1, S2),
    T = {K, V, T1, T2},
    {T, L2};
balance_list_1([{Key, Val} | L], 1) ->
    {{Key, Val, nil, nil}, L};
balance_list_1(L, 0) ->
    {nil, L}.

-spec from_orddict(List) -> Tree
                      when
                          List :: [{Key, Value}],
                          Tree :: tree(Key, Value).

from_orddict(L) ->
    S = length(L),
    {S, balance_list(L, S)}.

-spec delete_any(Key, Tree1) -> Tree2
                    when
                        Tree1 :: tree(Key, Value),
                        Tree2 :: tree(Key, Value).

delete_any(Key, T) ->
    case is_defined(Key, T) of
        true ->
            delete(Key, T);
        false ->
            T
    end.

-spec delete(Key, Tree1) -> Tree2
                when
                    Tree1 :: tree(Key, Value), Tree2 :: tree(Key, Value).

delete(Key, {S, T}) when is_integer(S), S >= 0 ->
    {S - 1, delete_1(Key, T)}.

delete_1(Key, {Key1, Value, Smaller, Larger}) when Key < Key1 ->
    Smaller1 = delete_1(Key, Smaller),
    {Key1, Value, Smaller1, Larger};
delete_1(Key, {Key1, Value, Smaller, Bigger}) when Key > Key1 ->
    Bigger1 = delete_1(Key, Bigger),
    {Key1, Value, Smaller, Bigger1};
delete_1(_, {_, _, Smaller, Larger}) ->
    merge(Smaller, Larger).

merge(Smaller, nil) ->
    Smaller;
merge(nil, Larger) ->
    Larger;
merge(Smaller, Larger) ->
    {Key, Value, Larger1} = take_smallest1(Larger),
    {Key, Value, Smaller, Larger1}.

-spec take_any(Key, Tree1) -> {Value, Tree2} | error
                  when
                      Tree1 :: tree(Key, _),
                      Tree2 :: tree(Key, _),
                      Key :: term(),
                      Value :: term().

take_any(Key, Tree) ->
    case is_defined(Key, Tree) of
        true ->
            take(Key, Tree);
        false ->
            error
    end.

-spec take(Key, Tree1) -> {Value, Tree2}
              when
                  Tree1 :: tree(Key, _),
                  Tree2 :: tree(Key, _),
                  Key :: term(),
                  Value :: term().

take(Key, {S, T}) when is_integer(S), S >= 0 ->
    {Value, Res} = take_1(Key, T),
    {Value, {S - 1, Res}}.

take_1(Key, {Key1, Value, Smaller, Larger}) when Key < Key1 ->
    {Value2, Smaller1} = take_1(Key, Smaller),
    {Value2, {Key1, Value, Smaller1, Larger}};
take_1(Key, {Key1, Value, Smaller, Bigger}) when Key > Key1 ->
    {Value2, Bigger1} = take_1(Key, Bigger),
    {Value2, {Key1, Value, Smaller, Bigger1}};
take_1(_, {_Key, Value, Smaller, Larger}) ->
    {Value, merge(Smaller, Larger)}.

-spec take_smallest(Tree1) -> {Key, Value, Tree2}
                       when
                           Tree1 :: tree(Key, Value),
                           Tree2 :: tree(Key, Value).

take_smallest({Size, Tree}) when is_integer(Size), Size >= 0 ->
    {Key, Value, Larger} = take_smallest1(Tree),
    {Key, Value, {Size - 1, Larger}}.

take_smallest1({Key, Value, nil, Larger}) ->
    {Key, Value, Larger};
take_smallest1({Key, Value, Smaller, Larger}) ->
    {Key1, Value1, Smaller1} = take_smallest1(Smaller),
    {Key1, Value1, {Key, Value, Smaller1, Larger}}.

-spec smallest(Tree) -> {Key, Value} when Tree :: tree(Key, Value).

smallest({_, Tree}) ->
    smallest_1(Tree).

smallest_1({Key, Value, nil, _Larger}) ->
    {Key, Value};
smallest_1({_Key, _Value, Smaller, _Larger}) ->
    smallest_1(Smaller).

-spec take_largest(Tree1) -> {Key, Value, Tree2}
                      when
                          Tree1 :: tree(Key, Value),
                          Tree2 :: tree(Key, Value).

take_largest({Size, Tree}) when is_integer(Size), Size >= 0 ->
    {Key, Value, Smaller} = take_largest1(Tree),
    {Key, Value, {Size - 1, Smaller}}.

take_largest1({Key, Value, Smaller, nil}) ->
    {Key, Value, Smaller};
take_largest1({Key, Value, Smaller, Larger}) ->
    {Key1, Value1, Larger1} = take_largest1(Larger),
    {Key1, Value1, {Key, Value, Smaller, Larger1}}.

-spec largest(Tree) -> {Key, Value} when Tree :: tree(Key, Value).

largest({_, Tree}) ->
    largest_1(Tree).

largest_1({Key, Value, _Smaller, nil}) ->
    {Key, Value};
largest_1({_Key, _Value, _Smaller, Larger}) ->
    largest_1(Larger).

-spec smaller(Key1, Tree) -> none | {Key2, Value}
                 when Key1 :: Key, Key2 :: Key, Tree :: tree(Key, Value).

smaller(Key, {_, TreeNode}) ->
    smaller_1(Key, TreeNode).

smaller_1(_Key, nil) ->
    none;
smaller_1(Key, {Key1, Value, _Smaller, Larger}) when Key > Key1 ->
    case smaller_1(Key, Larger) of
        none ->
            {Key1, Value};
        Entry ->
            Entry
    end;
smaller_1(Key, {_Key, _Value, Smaller, _Larger}) ->
    smaller_1(Key, Smaller).

-spec larger(Key1, Tree) -> none | {Key2, Value}
                when Key1 :: Key, Key2 :: Key, Tree :: tree(Key, Value).

larger(Key, {_, TreeNode}) ->
    larger_1(Key, TreeNode).

larger_1(_Key, nil) ->
    none;
larger_1(Key, {Key1, Value, Smaller, _Larger}) when Key < Key1 ->
    case larger_1(Key, Smaller) of
        none ->
            {Key1, Value};
        Entry ->
            Entry
    end;
larger_1(Key, {_Key, _Value, _Smaller, Larger}) ->
    larger_1(Key, Larger).

-spec to_list(Tree) -> [{Key, Value}] when Tree :: tree(Key, Value).

to_list({_, T}) ->
    to_list(T, []).

to_list_1(T) ->
    to_list(T, []).

to_list({Key, Value, Small, Big}, L) ->
    to_list(Small, [{Key, Value} | to_list(Big, L)]);
to_list(nil, L) ->
    L.

-spec keys(Tree) -> [Key] when Tree :: tree(Key, Value :: term()).

keys({_, T}) ->
    keys(T, []).

keys({Key, _Value, Small, Big}, L) ->
    keys(Small, [Key | keys(Big, L)]);
keys(nil, L) ->
    L.

-spec values(Tree) -> [Value] when Tree :: tree(Key :: term(), Value).

values({_, T}) ->
    values(T, []).

values({_Key, Value, Small, Big}, L) ->
    values(Small, [Value | values(Big, L)]);
values(nil, L) ->
    L.

-spec iterator(Tree) -> Iter
                  when
                      Tree :: tree(Key, Value), Iter :: iter(Key, Value).

iterator(Tree) ->
    iterator(Tree, ordered).

-spec iterator(Tree, Order) -> Iter
                  when
                      Tree :: tree(Key, Value),
                      Iter :: iter(Key, Value),
                      Order :: ordered | reversed.

iterator({_, T}, ordered) ->
    {ordered, iterator_1(T, [])};
iterator({_, T}, reversed) ->
    {reversed, iterator_r(T, [])}.

iterator_1({_, _, nil, _} = T, As) ->
    [T | As];
iterator_1({_, _, L, _} = T, As) ->
    iterator_1(L, [T | As]);
iterator_1(nil, As) ->
    As.

iterator_r({_, _, _, nil} = T, As) ->
    [T | As];
iterator_r({_, _, _, R} = T, As) ->
    iterator_r(R, [T | As]);
iterator_r(nil, As) ->
    As.

-spec iterator_from(Key, Tree) -> Iter
                       when
                           Tree :: tree(Key, Value),
                           Iter :: iter(Key, Value).

iterator_from(Key, Tree) ->
    iterator_from(Key, Tree, ordered).

-spec iterator_from(Key, Tree, Order) -> Iter
                       when
                           Tree :: tree(Key, Value),
                           Iter :: iter(Key, Value),
                           Order :: ordered | reversed.

iterator_from(S, {_, T}, ordered) ->
    {ordered, iterator_from_1(S, T, [])};
iterator_from(S, {_, T}, reversed) ->
    {reversed, iterator_from_r(S, T, [])}.

iterator_from_1(S, {K, _, _, T}, As) when K < S ->
    iterator_from_1(S, T, As);
iterator_from_1(_, {_, _, nil, _} = T, As) ->
    [T | As];
iterator_from_1(S, {_, _, L, _} = T, As) ->
    iterator_from_1(S, L, [T | As]);
iterator_from_1(_, nil, As) ->
    As.

iterator_from_r(S, {K, _, T, _}, As) when K > S ->
    iterator_from_r(S, T, As);
iterator_from_r(_, {_, _, _, nil} = T, As) ->
    [T | As];
iterator_from_r(S, {_, _, _, R} = T, As) ->
    iterator_from_r(S, R, [T | As]);
iterator_from_r(_, nil, As) ->
    As.

-spec next(Iter1) -> none | {Key, Value, Iter2}
              when Iter1 :: iter(Key, Value), Iter2 :: iter(Key, Value).

next({ordered, [{X, V, _, T} | As]}) ->
    {X, V, {ordered, iterator_1(T, As)}};
next({reversed, [{X, V, T, _} | As]}) ->
    {X, V, {reversed, iterator_r(T, As)}};
next({_, []}) ->
    none.

-spec map(Function, Tree1) -> Tree2
             when
                 Function ::
                     fun((K :: Key, V1 :: Value1) -> V2 :: Value2),
                 Tree1 :: tree(Key, Value1),
                 Tree2 :: tree(Key, Value2).

map(F, {Size, Tree}) when is_function(F, 2) ->
    {Size, map_1(F, Tree)}.

map_1(_, nil) ->
    nil;
map_1(F, {K, V, Smaller, Larger}) ->
    {K, F(K, V), map_1(F, Smaller), map_1(F, Larger)}.



