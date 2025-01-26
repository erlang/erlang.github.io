-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.2/src/proplists.erl", 1).

-module(proplists).

-export([property/1,
         property/2,
         unfold/1,
         compact/1,
         lookup/2,
         lookup_all/2,
         is_defined/2,
         get_value/2,
         get_value/3,
         get_all_values/2,
         append_values/2,
         get_bool/2,
         get_keys/1,
         delete/2,
         substitute_aliases/2,
         substitute_negations/2,
         expand/2,
         normalize/2,
         split/2,
         from_map/1,
         to_map/1,
         to_map/2]).

-export_type([property/0,proplist/0]).

-type property() :: atom() | tuple().

-type proplist() :: [property()].

-spec property(PropertyIn) -> PropertyOut
                  when
                      PropertyIn :: property(),
                      PropertyOut :: property().

property({Key, true}) when is_atom(Key) ->
    Key;
property(Property) ->
    Property.

-spec property(Key, Value) -> Property
                  when
                      Key :: term(),
                      Value :: term(),
                      Property :: atom() | {term(), term()}.

property(Key, true) when is_atom(Key) ->
    Key;
property(Key, Value) ->
    {Key, Value}.

-spec unfold(ListIn) -> ListOut
                when ListIn :: [term()], ListOut :: [term()].

unfold([P | Ps]) ->
    if
        is_atom(P) ->
            [{P, true} | unfold(Ps)];
        true ->
            [P | unfold(Ps)]
    end;
unfold([]) ->
    [].

-spec compact(ListIn) -> ListOut
                 when ListIn :: [property()], ListOut :: [property()].

compact(ListIn) ->
    [ 
     property(P) ||
         P <- ListIn
    ].

-spec lookup(Key, List) -> none | tuple()
                when Key :: term(), List :: [term()].

lookup(Key, [P | Ps]) ->
    if
        is_atom(P), P =:= Key ->
            {Key, true};
        tuple_size(P) >= 1, element(1, P) =:= Key ->
            P;
        true ->
            lookup(Key, Ps)
    end;
lookup(_Key, []) ->
    none.

-spec lookup_all(Key, List) -> [tuple()]
                    when Key :: term(), List :: [term()].

lookup_all(Key, [P | Ps]) ->
    if
        is_atom(P), P =:= Key ->
            [{Key, true} | lookup_all(Key, Ps)];
        tuple_size(P) >= 1, element(1, P) =:= Key ->
            [P | lookup_all(Key, Ps)];
        true ->
            lookup_all(Key, Ps)
    end;
lookup_all(_Key, []) ->
    [].

-spec is_defined(Key, List) -> boolean()
                    when Key :: term(), List :: [term()].

is_defined(Key, [P | Ps]) ->
    if
        is_atom(P), P =:= Key ->
            true;
        tuple_size(P) >= 1, element(1, P) =:= Key ->
            true;
        true ->
            is_defined(Key, Ps)
    end;
is_defined(_Key, []) ->
    false.

-spec get_value(Key, List) -> term()
                   when Key :: term(), List :: [term()].

get_value(Key, List) ->
    get_value(Key, List, undefined).

-spec get_value(Key, List, Default) -> term()
                   when
                       Key :: term(),
                       List :: [term()],
                       Default :: term().

get_value(Key, [P | Ps], Default) ->
    if
        is_atom(P), P =:= Key ->
            true;
        tuple_size(P) >= 1, element(1, P) =:= Key ->
            case P of
                {_, Value} ->
                    Value;
                _ ->
                    Default
            end;
        true ->
            get_value(Key, Ps, Default)
    end;
get_value(_Key, [], Default) ->
    Default.

-spec get_all_values(Key, List) -> [term()]
                        when Key :: term(), List :: [term()].

get_all_values(Key, [P | Ps]) ->
    if
        is_atom(P), P =:= Key ->
            [true | get_all_values(Key, Ps)];
        tuple_size(P) >= 1, element(1, P) =:= Key ->
            case P of
                {_, Value} ->
                    [Value | get_all_values(Key, Ps)];
                _ ->
                    get_all_values(Key, Ps)
            end;
        true ->
            get_all_values(Key, Ps)
    end;
get_all_values(_Key, []) ->
    [].

-spec append_values(Key, ListIn) -> ListOut
                       when
                           Key :: term(),
                           ListIn :: [term()],
                           ListOut :: [term()].

append_values(Key, [P | Ps]) ->
    if
        is_atom(P), P =:= Key ->
            [true | append_values(Key, Ps)];
        tuple_size(P) >= 1, element(1, P) =:= Key ->
            case P of
                {_, Value} when is_list(Value) ->
                    Value ++ append_values(Key, Ps);
                {_, Value} ->
                    [Value | append_values(Key, Ps)];
                _ ->
                    append_values(Key, Ps)
            end;
        true ->
            append_values(Key, Ps)
    end;
append_values(_Key, []) ->
    [].

-spec get_bool(Key, List) -> boolean()
                  when Key :: term(), List :: [term()].

get_bool(Key, [P | Ps]) ->
    if
        is_atom(P), P =:= Key ->
            true;
        tuple_size(P) >= 1, element(1, P) =:= Key ->
            case P of
                {_, true} ->
                    true;
                _ ->
                    false
            end;
        true ->
            get_bool(Key, Ps)
    end;
get_bool(_Key, []) ->
    false.

-spec get_keys(List) -> [term()] when List :: [term()].

get_keys(Ps) ->
    sets:to_list(get_keys(Ps, sets:new())).

get_keys([P | Ps], Keys) ->
    if
        is_atom(P) ->
            get_keys(Ps, sets:add_element(P, Keys));
        tuple_size(P) >= 1 ->
            get_keys(Ps, sets:add_element(element(1, P), Keys));
        true ->
            get_keys(Ps, Keys)
    end;
get_keys([], Keys) ->
    Keys.

-spec delete(Key, List) -> List when Key :: term(), List :: [term()].

delete(Key, [P | Ps]) ->
    if
        is_atom(P), P =:= Key ->
            delete(Key, Ps);
        tuple_size(P) >= 1, element(1, P) =:= Key ->
            delete(Key, Ps);
        true ->
            [P | delete(Key, Ps)]
    end;
delete(_, []) ->
    [].

-spec substitute_aliases(Aliases, ListIn) -> ListOut
                            when
                                Aliases :: [{Key, Key}],
                                Key :: term(),
                                ListIn :: [term()],
                                ListOut :: [term()].

substitute_aliases(As, Props) ->
    [ 
     substitute_aliases_1(As, P) ||
         P <- Props
    ].

substitute_aliases_1([{Key, Key1} | As], P) ->
    if
        is_atom(P), P =:= Key ->
            property(Key1, true);
        tuple_size(P) >= 1, element(1, P) =:= Key ->
            property(setelement(1, P, Key1));
        true ->
            substitute_aliases_1(As, P)
    end;
substitute_aliases_1([], P) ->
    P.

-spec substitute_negations(Negations, ListIn) -> ListOut
                              when
                                  Negations :: [{Key1, Key2}],
                                  Key1 :: term(),
                                  Key2 :: term(),
                                  ListIn :: [term()],
                                  ListOut :: [term()].

substitute_negations(As, Props) ->
    [ 
     substitute_negations_1(As, P) ||
         P <- Props
    ].

substitute_negations_1([{Key, Key1} | As], P) ->
    if
        is_atom(P), P =:= Key ->
            property(Key1, false);
        tuple_size(P) >= 1, element(1, P) =:= Key ->
            case P of
                {_, true} ->
                    property(Key1, false);
                {_, false} ->
                    property(Key1, true);
                _ ->
                    property(Key1, true)
            end;
        true ->
            substitute_negations_1(As, P)
    end;
substitute_negations_1([], P) ->
    P.

-spec expand(Expansions, ListIn) -> ListOut
                when
                    Expansions ::
                        [{Property :: property(), Expansion :: [term()]}],
                    ListIn :: [term()],
                    ListOut :: [term()].

expand(Es, Ps) when is_list(Ps) ->
    Es1 =
        [ 
         {property(P), V} ||
             {P, V} <- Es
        ],
    flatten(expand_0(key_uniq(Es1), Ps)).

expand_0([{P, L} | Es], Ps) ->
    expand_0(Es, expand_1(P, L, Ps));
expand_0([], Ps) ->
    Ps.

expand_1(P, L, Ps) ->
    if
        is_atom(P) ->
            expand_2(P, P, L, Ps);
        tuple_size(P) >= 1 ->
            expand_2(element(1, P), P, L, Ps);
        true ->
            Ps
    end.

expand_2(Key, P1, L, [P | Ps]) ->
    if
        is_atom(P), P =:= Key ->
            expand_3(Key, P1, P, L, Ps);
        tuple_size(P) >= 1, element(1, P) =:= Key ->
            expand_3(Key, P1, property(P), L, Ps);
        true ->
            [P | expand_2(Key, P1, L, Ps)]
    end;
expand_2(_, _, _, []) ->
    [].

expand_3(Key, P1, P, L, Ps) ->
    if
        P1 =:= P ->
            [L | delete(Key, Ps)];
        true ->
            [P | Ps]
    end.

key_uniq([{K, V} | Ps]) ->
    [{K, V} | key_uniq_1(K, Ps)];
key_uniq([]) ->
    [].

key_uniq_1(K, [{K1, V} | Ps]) ->
    if
        K =:= K1 ->
            key_uniq_1(K, Ps);
        true ->
            [{K1, V} | key_uniq_1(K1, Ps)]
    end;
key_uniq_1(_, []) ->
    [].

flatten([E | Es]) when is_list(E) ->
    E ++ flatten(Es);
flatten([E | Es]) ->
    [E | flatten(Es)];
flatten([]) ->
    [].

-spec normalize(ListIn, Stages) -> ListOut
                   when
                       ListIn :: [term()],
                       Stages :: [Operation],
                       Operation ::
                           {aliases, Aliases} |
                           {negations, Negations} |
                           {expand, Expansions},
                       Aliases :: [{Key, Key}],
                       Negations :: [{Key, Key}],
                       Expansions ::
                           [{Property :: property(),
                             Expansion :: [term()]}],
                       ListOut :: [term()].

normalize(L, Stages) ->
    compact(apply_stages(L, Stages)).

apply_stages(L, [{aliases, As} | Xs]) ->
    apply_stages(substitute_aliases(As, L), Xs);
apply_stages(L, [{expand, Es} | Xs]) ->
    apply_stages(expand(Es, L), Xs);
apply_stages(L, [{negations, Ns} | Xs]) ->
    apply_stages(substitute_negations(Ns, L), Xs);
apply_stages(L, []) ->
    L.

-spec split(List, Keys) -> {Lists, Rest}
               when
                   List :: [term()],
                   Keys :: [term()],
                   Lists :: [[term()]],
                   Rest :: [term()].

split(List, Keys) ->
    {Store, Rest} =
        split(List,
              #{ 
                K => [] ||
                    K <- Keys
              },
              []),
    {[ 
      lists:reverse(map_get(K, Store)) ||
          K <- Keys
     ],
     lists:reverse(Rest)}.

split([P | Ps], Store, Rest) ->
    if
        is_atom(P) ->
            case is_map_key(P, Store) of
                true ->
                    split(Ps, maps_prepend(P, P, Store), Rest);
                false ->
                    split(Ps, Store, [P | Rest])
            end;
        tuple_size(P) >= 1 ->
            Key = element(1, P),
            case is_map_key(Key, Store) of
                true ->
                    split(Ps, maps_prepend(Key, P, Store), Rest);
                false ->
                    split(Ps, Store, [P | Rest])
            end;
        true ->
            split(Ps, Store, [P | Rest])
    end;
split([], Store, Rest) ->
    {Store, Rest}.

maps_prepend(Key, Val, Dict) ->
    Dict#{Key := [Val | map_get(Key, Dict)]}.

-spec to_map(List) -> Map
                when
                    List :: [Shorthand | {Key, Value} | term()],
                    Map :: #{Shorthand => true, Key => Value},
                    Shorthand :: atom(),
                    Key :: term(),
                    Value :: term().

to_map(List) ->
    lists:foldr(fun({K, V}, M) ->
                       M#{K => V};
                   (T, M) when 1 =< tuple_size(T) ->
                       maps:remove(element(1, T), M);
                   (K, M) when is_atom(K) ->
                       M#{K => true};
                   (_, M) ->
                       M
                end,
                #{},
                List).

-spec to_map(List, Stages) -> Map
                when
                    List :: [term()],
                    Stages :: [Operation],
                    Operation ::
                        {aliases, Aliases} |
                        {negations, Negations} |
                        {expand, Expansions},
                    Aliases :: [{Key, Key}],
                    Negations :: [{Key, Key}],
                    Expansions ::
                        [{Property :: property(), Expansion :: [term()]}],
                    Map :: #{term() => term()}.

to_map(List, Stages) ->
    to_map(apply_stages(List, Stages)).

-spec from_map(Map) -> List
                  when
                      Map :: #{Key => Value},
                      List :: [{Key, Value}],
                      Key :: term(),
                      Value :: term().

from_map(Map) ->
    maps:to_list(Map).



