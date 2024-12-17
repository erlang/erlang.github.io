-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.2/src/ordsets.erl", 1).

-module(ordsets).

-export([new/0,is_set/1,size/1,is_empty/1,to_list/1,from_list/1]).

-export([is_element/2,add_element/2,del_element/2]).

-export([union/2,union/1,intersection/2,intersection/1]).

-export([is_equal/2,is_disjoint/2]).

-export([subtract/2,is_subset/2]).

-export([fold/3,filter/2,map/2,filtermap/2]).

-export_type([ordset/1]).

-type ordset(T) :: [T].

-spec new() -> [].

new() ->
    [].

-spec is_set(Ordset) -> boolean() when Ordset :: term().

is_set([E | Es]) ->
    is_set(Es, E);
is_set([]) ->
    true;
is_set(_) ->
    false.

is_set([E2 | Es], E1) when E1 < E2 ->
    is_set(Es, E2);
is_set([_ | _], _) ->
    false;
is_set([], _) ->
    true.

-spec size(Ordset) -> non_neg_integer() when Ordset :: ordset(_).

size(S) ->
    length(S).

-spec is_empty(Ordset) -> boolean() when Ordset :: ordset(_).

is_empty(S) ->
    S =:= [].

-spec is_equal(Ordset1, Ordset2) -> boolean()
                  when Ordset1 :: ordset(_), Ordset2 :: ordset(_).

is_equal(S1, S2) when is_list(S1), is_list(S2) ->
    S1 == S2.

-spec to_list(Ordset) -> List when Ordset :: ordset(T), List :: [T].

to_list(S) ->
    S.

-spec from_list(List) -> Ordset when List :: [T], Ordset :: ordset(T).

from_list(L) ->
    lists:usort(L).

-spec is_element(Element, Ordset) -> boolean()
                    when Element :: term(), Ordset :: ordset(_).

is_element(E, [H | Es]) when E > H ->
    is_element(E, Es);
is_element(E, [H | _]) when E < H ->
    false;
is_element(_E, [_H | _]) ->
    true;
is_element(_, []) ->
    false.

-spec add_element(Element, Ordset1) -> Ordset2
                     when
                         Element :: E,
                         Ordset1 :: ordset(T),
                         Ordset2 :: ordset(T | E).

add_element(E, [H | Es]) when E > H ->
    [H | add_element(E, Es)];
add_element(E, [H | _] = Set) when E < H ->
    [E | Set];
add_element(_E, [_H | _] = Set) ->
    Set;
add_element(E, []) ->
    [E].

-spec del_element(Element, Ordset1) -> Ordset2
                     when
                         Element :: term(),
                         Ordset1 :: ordset(T),
                         Ordset2 :: ordset(T).

del_element(E, [H | Es]) when E > H ->
    [H | del_element(E, Es)];
del_element(E, [H | _] = Set) when E < H ->
    Set;
del_element(_E, [_H | Es]) ->
    Es;
del_element(_, []) ->
    [].

-spec union(Ordset1, Ordset2) -> Ordset3
               when
                   Ordset1 :: ordset(T1),
                   Ordset2 :: ordset(T2),
                   Ordset3 :: ordset(T1 | T2).

union([E1 | Es1], [E2 | _] = Set2) when E1 < E2 ->
    [E1 | union(Es1, Set2)];
union([E1 | _] = Set1, [E2 | Es2]) when E1 > E2 ->
    [E2 | union(Es2, Set1)];
union([E1 | Es1], [_E2 | Es2]) ->
    [E1 | union(Es1, Es2)];
union([], Es2) ->
    Es2;
union(Es1, []) ->
    Es1.

-spec union(OrdsetList) -> Ordset
               when OrdsetList :: [ordset(T)], Ordset :: ordset(T).

union(OrdsetList) ->
    lists:umerge(OrdsetList).

-spec intersection(Ordset1, Ordset2) -> Ordset3
                      when
                          Ordset1 :: ordset(_),
                          Ordset2 :: ordset(_),
                          Ordset3 :: ordset(_).

intersection([E1 | Es1], [E2 | _] = Set2) when E1 < E2 ->
    intersection(Es1, Set2);
intersection([E1 | _] = Set1, [E2 | Es2]) when E1 > E2 ->
    intersection(Es2, Set1);
intersection([E1 | Es1], [_E2 | Es2]) ->
    [E1 | intersection(Es1, Es2)];
intersection([], _) ->
    [];
intersection(_, []) ->
    [].

-spec intersection(OrdsetList) -> Ordset
                      when
                          OrdsetList :: [ordset(_), ...],
                          Ordset :: ordset(_).

intersection([S1, S2 | Ss]) ->
    intersection1(intersection(S1, S2), Ss);
intersection([S]) ->
    S.

intersection1(S1, [S2 | Ss]) ->
    intersection1(intersection(S1, S2), Ss);
intersection1(S1, []) ->
    S1.

-spec is_disjoint(Ordset1, Ordset2) -> boolean()
                     when Ordset1 :: ordset(_), Ordset2 :: ordset(_).

is_disjoint([E1 | Es1], [E2 | _] = Set2) when E1 < E2 ->
    is_disjoint(Es1, Set2);
is_disjoint([E1 | _] = Set1, [E2 | Es2]) when E1 > E2 ->
    is_disjoint(Es2, Set1);
is_disjoint([_E1 | _Es1], [_E2 | _Es2]) ->
    false;
is_disjoint([], _) ->
    true;
is_disjoint(_, []) ->
    true.

-spec subtract(Ordset1, Ordset2) -> Ordset3
                  when
                      Ordset1 :: ordset(_),
                      Ordset2 :: ordset(_),
                      Ordset3 :: ordset(_).

subtract([E1 | Es1], [E2 | _] = Set2) when E1 < E2 ->
    [E1 | subtract(Es1, Set2)];
subtract([E1 | _] = Set1, [E2 | Es2]) when E1 > E2 ->
    subtract(Set1, Es2);
subtract([_E1 | Es1], [_E2 | Es2]) ->
    subtract(Es1, Es2);
subtract([], _) ->
    [];
subtract(Es1, []) ->
    Es1.

-spec is_subset(Ordset1, Ordset2) -> boolean()
                   when Ordset1 :: ordset(_), Ordset2 :: ordset(_).

is_subset([E1 | _], [E2 | _]) when E1 < E2 ->
    false;
is_subset([E1 | _] = Set1, [E2 | Es2]) when E1 > E2 ->
    is_subset(Set1, Es2);
is_subset([_E1 | Es1], [_E2 | Es2]) ->
    is_subset(Es1, Es2);
is_subset([], _) ->
    true;
is_subset(_, []) ->
    false.

-spec fold(Function, Acc0, Ordset) -> Acc1
              when
                  Function ::
                      fun((Element :: T, AccIn :: term()) ->
                              AccOut :: term()),
                  Ordset :: ordset(T),
                  Acc0 :: term(),
                  Acc1 :: term().

fold(F, Acc, Set) ->
    lists:foldl(F, Acc, Set).

-spec filter(Pred, Ordset1) -> Ordset2
                when
                    Pred :: fun((Element :: T) -> boolean()),
                    Ordset1 :: ordset(T),
                    Ordset2 :: ordset(T).

filter(F, Set) ->
    lists:filter(F, Set).

-spec map(Fun, Ordset1) -> Ordset2
             when
                 Fun :: fun((Element1 :: T1) -> Element2 :: T2),
                 Ordset1 :: ordset(T1),
                 Ordset2 :: ordset(T2).

map(F, Set) ->
    from_list(lists:map(F, Set)).

-spec filtermap(Fun, Ordset1) -> Ordset2
                   when
                       Fun ::
                           fun((Element1 :: T1) ->
                                   boolean | {true, Element2 :: T2}),
                       Ordset1 :: ordset(T1),
                       Ordset2 :: ordset(T1 | T2).

filtermap(F, Set) ->
    from_list(lists:filtermap(F, Set)).



