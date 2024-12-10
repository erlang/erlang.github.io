-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.1.2/src/sofs.erl", 1).

-module(sofs).

{warning,{{21,2},epp,{moduledoc,file,"../doc/src/sofs.md"}}}

-export([from_term/1,
         from_term/2,
         from_external/2,
         empty_set/0,
         is_type/1,
         set/1,
         set/2,
         from_sets/1,
         relation/1,
         relation/2,
         a_function/1,
         a_function/2,
         family/1,
         family/2,
         to_external/1,
         type/1,
         to_sets/1,
         no_elements/1,
         specification/2,
         union/2,
         intersection/2,
         difference/2,
         symdiff/2,
         symmetric_partition/2,
         product/1,
         product/2,
         constant_function/2,
         is_equal/2,
         is_subset/2,
         is_sofs_set/1,
         is_set/1,
         is_empty_set/1,
         is_disjoint/2]).

-export([union/1,intersection/1,canonical_relation/1]).

-export([relation_to_family/1,
         domain/1,
         range/1,
         field/1,
         relative_product/1,
         relative_product/2,
         relative_product1/2,
         converse/1,
         image/2,
         inverse_image/2,
         strict_relation/1,
         weak_relation/1,
         extension/3,
         is_a_function/1]).

-export([composite/2,inverse/1]).

-export([restriction/2,
         restriction/3,
         drestriction/2,
         drestriction/3,
         substitution/2,
         projection/2,
         partition/1,
         partition/2,
         partition/3,
         multiple_relative_product/2,
         join/4]).

-export([family_to_relation/1,
         family_specification/2,
         union_of_family/1,
         intersection_of_family/1,
         family_union/1,
         family_intersection/1,
         family_domain/1,
         family_range/1,
         family_field/1,
         family_union/2,
         family_intersection/2,
         family_difference/2,
         partition_family/2,
         family_projection/2]).

-export([family_to_digraph/1,
         family_to_digraph/2,
         digraph_to_family/1,
         digraph_to_family/2]).

-export([fam2rel/1,rel2fam/1]).

-import(lists,
        [any/2,
         append/1,
         flatten/1,
         foreach/2,
         keysort/2,
         last/1,
         map/2,
         mapfoldl/3,
         member/2,
         merge/2,
         reverse/1,
         reverse/2,
         sort/1,
         umerge/1,
         umerge/2,
         usort/1]).

-compile({inline, [{family_to_relation, 1}, {relation_to_family, 1}]}).

-compile({inline, [{rel, 2}, {a_func, 2}, {fam, 2}, {term2set, 2}]}).

-compile({inline, [{external_fun, 1}, {element_type, 1}]}).

-compile({inline,
          [{unify_types, 2},
           {match_types, 2},
           {test_rel, 3},
           {symdiff, 3},
           {subst, 3}]}).

-compile({inline, [{fam_binop, 3}]}).

-record('Set',{data = [] :: list(), type = type :: term()}).

-record('OrdSet',{orddata = {} :: tuple() | atom(),
                  ordtype = type :: term()}).

-export_type([anyset/0,
              binary_relation/0,
              external_set/0,
              a_function/0,
              family/0,
              relation/0,
              set_of_sets/0,
              set_fun/0,
              spec_fun/0,
              type/0]).

-export_type([ordset/0,a_set/0]).

-type anyset() :: ordset() | a_set().

-type binary_relation() :: relation().

-type external_set() :: term().

-type a_function() :: relation().

-type family() :: a_function().

-opaque ordset() :: #'OrdSet'{}.

-type relation() :: a_set().

-opaque a_set() :: #'Set'{}.

-type set_of_sets() :: a_set().

-type set_fun() ::
          pos_integer() |
          {external, fun((external_set()) -> external_set())} |
          fun((anyset()) -> anyset()).

-type spec_fun() ::
          {external, fun((external_set()) -> boolean())} |
          fun((anyset()) -> boolean()).

-type type() :: term().

-type tuple_of(_T) :: tuple().

-spec from_term(Term) -> AnySet when AnySet :: anyset(), Term :: term().

from_term(T) ->
    Type =
        case T of
            _ when is_list(T) ->
                ['_'];
            _ ->
                '_'
        end,
    try
        setify(T, Type)
    catch
        _:_ ->
            error(badarg)
    end.

-spec from_term(Term, Type) -> AnySet
                   when
                       AnySet :: anyset(),
                       Term :: term(),
                       Type :: type().

from_term(L, T) ->
    case is_type(T) of
        true ->
            try
                setify(L, T)
            catch
                _:_ ->
                    error(badarg)
            end;
        false ->
            error(badarg)
    end.

-spec from_external(ExternalSet, Type) -> AnySet
                       when
                           ExternalSet :: external_set(),
                           AnySet :: anyset(),
                           Type :: type().

from_external(L, [Type]) ->
    {'Set', L, Type};
from_external(T, Type) ->
    {'OrdSet', T, Type}.

-spec empty_set() -> Set when Set :: a_set().

empty_set() ->
    {'Set', [], '_'}.

-spec is_type(Term) -> Bool when Bool :: boolean(), Term :: term().

is_type(Atom) when is_atom(Atom), Atom =/= '_' ->
    true;
is_type([T]) ->
    is_element_type(T);
is_type(T) when tuple_size(T) > 0 ->
    is_types(tuple_size(T), T);
is_type(_T) ->
    false.

-spec set(Terms) -> Set when Set :: a_set(), Terms :: [term()].

set(L) ->
    try lists:usort(L) of
        SL ->
            {'Set', SL, atom}
    catch
        _:_ ->
            error(badarg)
    end.

-spec set(Terms, Type) -> Set
             when Set :: a_set(), Terms :: [term()], Type :: type().

set(L, [Type]) when is_atom(Type), Type =/= '_' ->
    try lists:usort(L) of
        SL ->
            {'Set', SL, Type}
    catch
        _:_ ->
            error(badarg)
    end;
set(L, [_] = T) ->
    try
        setify(L, T)
    catch
        _:_ ->
            error(badarg)
    end;
set(_, _) ->
    error(badarg).

-spec from_sets(ListOfSets) -> Set
                   when Set :: a_set(), ListOfSets :: [anyset()];
               (TupleOfSets) -> Ordset
                   when
                       Ordset :: ordset(),
                       TupleOfSets :: tuple_of(anyset()).

from_sets(Ss) when is_list(Ss) ->
    case set_of_sets(Ss, [], '_') of
        {error, Error} ->
            error(Error);
        Set ->
            Set
    end;
from_sets(Tuple) when is_tuple(Tuple) ->
    case ordset_of_sets(tuple_to_list(Tuple), [], []) of
        error ->
            error(badarg);
        Set ->
            Set
    end;
from_sets(_) ->
    error(badarg).

-spec relation(Tuples) -> Relation
                  when Relation :: relation(), Tuples :: [tuple()].

relation([]) ->
    {'Set', [], {atom, atom}};
relation(Ts = [T | _]) when is_tuple(T) ->
    try
        rel(Ts, tuple_size(T))
    catch
        _:_ ->
            error(badarg)
    end;
relation(_) ->
    error(badarg).

-spec relation(Tuples, Type) -> Relation
                  when
                      N :: integer(),
                      Type :: N | type(),
                      Relation :: relation(),
                      Tuples :: [tuple()].

relation(Ts, TS) ->
    try
        rel(Ts, TS)
    catch
        _:_ ->
            error(badarg)
    end.

-spec a_function(Tuples) -> Function
                    when Function :: a_function(), Tuples :: [tuple()].

a_function(Ts) ->
    try func(Ts, {atom, atom}) of
        Bad when is_atom(Bad) ->
            error(Bad);
        Set ->
            Set
    catch
        _:_ ->
            error(badarg)
    end.

-spec a_function(Tuples, Type) -> Function
                    when
                        Function :: a_function(),
                        Tuples :: [tuple()],
                        Type :: type().

a_function(Ts, T) ->
    try a_func(Ts, T) of
        Bad when is_atom(Bad) ->
            error(Bad);
        Set ->
            Set
    catch
        _:_ ->
            error(badarg)
    end.

-spec family(Tuples) -> Family
                when Family :: family(), Tuples :: [tuple()].

family(Ts) ->
    try fam2(Ts, {atom, [atom]}) of
        Bad when is_atom(Bad) ->
            error(Bad);
        Set ->
            Set
    catch
        _:_ ->
            error(badarg)
    end.

-spec family(Tuples, Type) -> Family
                when
                    Family :: family(),
                    Tuples :: [tuple()],
                    Type :: type().

family(Ts, T) ->
    try fam(Ts, T) of
        Bad when is_atom(Bad) ->
            error(Bad);
        Set ->
            Set
    catch
        _:_ ->
            error(badarg)
    end.

-spec to_external(AnySet) -> ExternalSet
                     when
                         ExternalSet :: external_set(),
                         AnySet :: anyset().

to_external({'Set', _, _} = S) when true ->
    case S of
        {'Set', REC0, _} ->
            REC0;
        REC0 ->
            error({badrecord, REC0})
    end;
to_external({'OrdSet', _, _} = S) when true ->
    case S of
        {'OrdSet', REC1, _} ->
            REC1;
        REC1 ->
            error({badrecord, REC1})
    end.

-spec type(AnySet) -> Type when AnySet :: anyset(), Type :: type().

type({'Set', _, _} = S) when true ->
    [case S of
         {'Set', _, REC2} ->
             REC2;
         REC2 ->
             error({badrecord, REC2})
     end];
type({'OrdSet', _, _} = S) when true ->
    case S of
        {'OrdSet', _, REC3} ->
            REC3;
        REC3 ->
            error({badrecord, REC3})
    end.

-spec to_sets(ASet) -> Sets
                 when
                     ASet :: a_set() | ordset(),
                     Sets :: tuple_of(AnySet) | [AnySet],
                     AnySet :: anyset().

to_sets({'Set', _, _} = S) when true ->
    case
        case S of
            {'Set', _, REC4} ->
                REC4;
            REC4 ->
                error({badrecord, REC4})
        end
    of
        [Type] ->
            list_of_sets(case S of
                             {'Set', REC5, _} ->
                                 REC5;
                             REC5 ->
                                 error({badrecord, REC5})
                         end,
                         Type, []);
        Type ->
            list_of_ordsets(case S of
                                {'Set', REC6, _} ->
                                    REC6;
                                REC6 ->
                                    error({badrecord, REC6})
                            end,
                            Type, [])
    end;
to_sets({'OrdSet', _, _} = S)
    when
        true,
        (true
         orelse
         fail)
        and
        is_tuple(element(3, S)) ->
    tuple_of_sets(tuple_to_list(case S of
                                    {'OrdSet', REC7, _} ->
                                        REC7;
                                    REC7 ->
                                        error({badrecord, REC7})
                                end),
                  tuple_to_list(case S of
                                    {'OrdSet', _, REC8} ->
                                        REC8;
                                    REC8 ->
                                        error({badrecord, REC8})
                                end),
                  []);
to_sets({'OrdSet', _, _} = S) when true ->
    error(badarg).

-spec no_elements(ASet) -> NoElements
                     when
                         ASet :: a_set() | ordset(),
                         NoElements :: non_neg_integer().

no_elements({'Set', _, _} = S) when true ->
    length(case S of
               {'Set', REC9, _} ->
                   REC9;
               REC9 ->
                   error({badrecord, REC9})
           end);
no_elements({'OrdSet', _, _} = S)
    when
        true,
        (true
         orelse
         fail)
        and
        is_tuple(element(3, S)) ->
    tuple_size(case S of
                   {'OrdSet', REC10, _} ->
                       REC10;
                   REC10 ->
                       error({badrecord, REC10})
               end);
no_elements({'OrdSet', _, _} = S) when true ->
    error(badarg).

-spec specification(Fun, Set1) -> Set2
                       when
                           Fun :: spec_fun(),
                           Set1 :: a_set(),
                           Set2 :: a_set().

specification(Fun, {'Set', _, _} = S) when true ->
    Type =
        case S of
            {'Set', _, REC11} ->
                REC11;
            REC11 ->
                error({badrecord, REC11})
        end,
    R = case external_fun(Fun) of
            false ->
                spec(case S of
                         {'Set', REC12, _} ->
                             REC12;
                         REC12 ->
                             error({badrecord, REC12})
                     end,
                     Fun,
                     element_type(Type),
                     []);
            XFun ->
                specification(case S of
                                  {'Set', REC13, _} ->
                                      REC13;
                                  REC13 ->
                                      error({badrecord, REC13})
                              end,
                              XFun, [])
        end,
    case R of
        SL when is_list(SL) ->
            {'Set', SL, Type};
        Bad ->
            error(Bad)
    end.

-spec union(Set1, Set2) -> Set3
               when Set1 :: a_set(), Set2 :: a_set(), Set3 :: a_set().

union({'Set', _, _} = S1, {'Set', _, _} = S2) when true, true ->
    case
        unify_types(case S1 of
                        {'Set', _, REC14} ->
                            REC14;
                        REC14 ->
                            error({badrecord, REC14})
                    end,
                    case S2 of
                        {'Set', _, REC15} ->
                            REC15;
                        REC15 ->
                            error({badrecord, REC15})
                    end)
    of
        [] ->
            error(type_mismatch);
        Type ->
            {'Set',
             lists:umerge(case S1 of
                              {'Set', REC16, _} ->
                                  REC16;
                              REC16 ->
                                  error({badrecord, REC16})
                          end,
                          case S2 of
                              {'Set', REC17, _} ->
                                  REC17;
                              REC17 ->
                                  error({badrecord, REC17})
                          end),
             Type}
    end.

-spec intersection(Set1, Set2) -> Set3
                      when
                          Set1 :: a_set(),
                          Set2 :: a_set(),
                          Set3 :: a_set().

intersection({'Set', _, _} = S1, {'Set', _, _} = S2) when true, true ->
    case
        unify_types(case S1 of
                        {'Set', _, REC18} ->
                            REC18;
                        REC18 ->
                            error({badrecord, REC18})
                    end,
                    case S2 of
                        {'Set', _, REC19} ->
                            REC19;
                        REC19 ->
                            error({badrecord, REC19})
                    end)
    of
        [] ->
            error(type_mismatch);
        Type ->
            {'Set',
             intersection(case S1 of
                              {'Set', REC20, _} ->
                                  REC20;
                              REC20 ->
                                  error({badrecord, REC20})
                          end,
                          case S2 of
                              {'Set', REC21, _} ->
                                  REC21;
                              REC21 ->
                                  error({badrecord, REC21})
                          end,
                          []),
             Type}
    end.

-spec difference(Set1, Set2) -> Set3
                    when
                        Set1 :: a_set(),
                        Set2 :: a_set(),
                        Set3 :: a_set().

difference({'Set', _, _} = S1, {'Set', _, _} = S2) when true, true ->
    case
        unify_types(case S1 of
                        {'Set', _, REC22} ->
                            REC22;
                        REC22 ->
                            error({badrecord, REC22})
                    end,
                    case S2 of
                        {'Set', _, REC23} ->
                            REC23;
                        REC23 ->
                            error({badrecord, REC23})
                    end)
    of
        [] ->
            error(type_mismatch);
        Type ->
            {'Set',
             difference(case S1 of
                            {'Set', REC24, _} ->
                                REC24;
                            REC24 ->
                                error({badrecord, REC24})
                        end,
                        case S2 of
                            {'Set', REC25, _} ->
                                REC25;
                            REC25 ->
                                error({badrecord, REC25})
                        end,
                        []),
             Type}
    end.

-spec symdiff(Set1, Set2) -> Set3
                 when Set1 :: a_set(), Set2 :: a_set(), Set3 :: a_set().

symdiff({'Set', _, _} = S1, {'Set', _, _} = S2) when true, true ->
    case
        unify_types(case S1 of
                        {'Set', _, REC26} ->
                            REC26;
                        REC26 ->
                            error({badrecord, REC26})
                    end,
                    case S2 of
                        {'Set', _, REC27} ->
                            REC27;
                        REC27 ->
                            error({badrecord, REC27})
                    end)
    of
        [] ->
            error(type_mismatch);
        Type ->
            {'Set',
             symdiff(case S1 of
                         {'Set', REC28, _} ->
                             REC28;
                         REC28 ->
                             error({badrecord, REC28})
                     end,
                     case S2 of
                         {'Set', REC29, _} ->
                             REC29;
                         REC29 ->
                             error({badrecord, REC29})
                     end,
                     []),
             Type}
    end.

-spec symmetric_partition(Set1, Set2) -> {Set3, Set4, Set5}
                             when
                                 Set1 :: a_set(),
                                 Set2 :: a_set(),
                                 Set3 :: a_set(),
                                 Set4 :: a_set(),
                                 Set5 :: a_set().

symmetric_partition({'Set', _, _} = S1, {'Set', _, _} = S2)
    when true, true ->
    case
        unify_types(case S1 of
                        {'Set', _, REC30} ->
                            REC30;
                        REC30 ->
                            error({badrecord, REC30})
                    end,
                    case S2 of
                        {'Set', _, REC31} ->
                            REC31;
                        REC31 ->
                            error({badrecord, REC31})
                    end)
    of
        [] ->
            error(type_mismatch);
        Type ->
            sympart(case S1 of
                        {'Set', REC32, _} ->
                            REC32;
                        REC32 ->
                            error({badrecord, REC32})
                    end,
                    case S2 of
                        {'Set', REC33, _} ->
                            REC33;
                        REC33 ->
                            error({badrecord, REC33})
                    end,
                    [], [], [], Type)
    end.

-spec product(Set1, Set2) -> BinRel
                 when
                     BinRel :: binary_relation(),
                     Set1 :: a_set(),
                     Set2 :: a_set().

product({'Set', _, _} = S1, {'Set', _, _} = S2) when true, true ->
    if
        (is_record(S1, 'Set', 3)
         orelse
         fail)
        and
        (element(3, S1) =:= '_') ->
            S1;
        (is_record(S2, 'Set', 3)
         orelse
         fail)
        and
        (element(3, S2) =:= '_') ->
            S2;
        true ->
            F = fun(E) ->
                       {0, E}
                end,
            T = {case S1 of
                     {'Set', _, REC34} ->
                         REC34;
                     REC34 ->
                         error({badrecord, REC34})
                 end,
                 case S2 of
                     {'Set', _, REC35} ->
                         REC35;
                     REC35 ->
                         error({badrecord, REC35})
                 end},
            {'Set',
             relprod(lists:map(F,
                               case S1 of
                                   {'Set', REC36, _} ->
                                       REC36;
                                   REC36 ->
                                       error({badrecord, REC36})
                               end),
                     lists:map(F,
                               case S2 of
                                   {'Set', REC37, _} ->
                                       REC37;
                                   REC37 ->
                                       error({badrecord, REC37})
                               end)),
             T}
    end.

-spec product(TupleOfSets) -> Relation
                 when
                     Relation :: relation(),
                     TupleOfSets :: tuple_of(a_set()).

product({S1, S2}) ->
    product(S1, S2);
product(T) when is_tuple(T) ->
    Ss = tuple_to_list(T),
    try sets_to_list(Ss) of
        [] ->
            error(badarg);
        L ->
            Type = types(Ss, []),
            case lists:member([], L) of
                true ->
                    empty_set();
                false ->
                    {'Set', lists:reverse(prod(L, [], [])), Type}
            end
    catch
        _:_ ->
            error(badarg)
    end.

-spec constant_function(Set, AnySet) -> Function
                           when
                               AnySet :: anyset(),
                               Function :: a_function(),
                               Set :: a_set().

constant_function({'Set', _, _} = S, E) when true ->
    case
        {case S of
             {'Set', _, REC38} ->
                 REC38;
             REC38 ->
                 error({badrecord, REC38})
         end,
         is_sofs_set(E)}
    of
        {'_', true} ->
            S;
        {Type, true} ->
            NType = {Type, type(E)},
            {'Set',
             constant_function(case S of
                                   {'Set', REC39, _} ->
                                       REC39;
                                   REC39 ->
                                       error({badrecord, REC39})
                               end,
                               to_external(E),
                               []),
             NType};
        _ ->
            error(badarg)
    end;
constant_function({'OrdSet', _, _} = S, _) when true ->
    error(badarg).

-spec is_equal(AnySet1, AnySet2) -> Bool
                  when
                      AnySet1 :: anyset(),
                      AnySet2 :: anyset(),
                      Bool :: boolean().

is_equal({'Set', _, _} = S1, {'Set', _, _} = S2) when true, true ->
    case
        match_types(case S1 of
                        {'Set', _, REC40} ->
                            REC40;
                        REC40 ->
                            error({badrecord, REC40})
                    end,
                    case S2 of
                        {'Set', _, REC41} ->
                            REC41;
                        REC41 ->
                            error({badrecord, REC41})
                    end)
    of
        true ->
            case S1 of
                {'Set', REC42, _} ->
                    REC42;
                REC42 ->
                    error({badrecord, REC42})
            end
            ==
            case S2 of
                {'Set', REC43, _} ->
                    REC43;
                REC43 ->
                    error({badrecord, REC43})
            end;
        false ->
            error(type_mismatch)
    end;
is_equal({'OrdSet', _, _} = S1, {'OrdSet', _, _} = S2) when true, true ->
    case
        match_types(case S1 of
                        {'OrdSet', _, REC44} ->
                            REC44;
                        REC44 ->
                            error({badrecord, REC44})
                    end,
                    case S2 of
                        {'OrdSet', _, REC45} ->
                            REC45;
                        REC45 ->
                            error({badrecord, REC45})
                    end)
    of
        true ->
            case S1 of
                {'OrdSet', REC46, _} ->
                    REC46;
                REC46 ->
                    error({badrecord, REC46})
            end
            ==
            case S2 of
                {'OrdSet', REC47, _} ->
                    REC47;
                REC47 ->
                    error({badrecord, REC47})
            end;
        false ->
            error(type_mismatch)
    end;
is_equal({'Set', _, _} = S1, {'OrdSet', _, _} = S2) when true, true ->
    error(type_mismatch);
is_equal({'OrdSet', _, _} = S1, {'Set', _, _} = S2) when true, true ->
    error(type_mismatch).

-spec is_subset(Set1, Set2) -> Bool
                   when
                       Bool :: boolean(),
                       Set1 :: a_set(),
                       Set2 :: a_set().

is_subset({'Set', _, _} = S1, {'Set', _, _} = S2) when true, true ->
    case
        match_types(case S1 of
                        {'Set', _, REC48} ->
                            REC48;
                        REC48 ->
                            error({badrecord, REC48})
                    end,
                    case S2 of
                        {'Set', _, REC49} ->
                            REC49;
                        REC49 ->
                            error({badrecord, REC49})
                    end)
    of
        true ->
            subset(case S1 of
                       {'Set', REC50, _} ->
                           REC50;
                       REC50 ->
                           error({badrecord, REC50})
                   end,
                   case S2 of
                       {'Set', REC51, _} ->
                           REC51;
                       REC51 ->
                           error({badrecord, REC51})
                   end);
        false ->
            error(type_mismatch)
    end.

-spec is_sofs_set(Term) -> Bool when Bool :: boolean(), Term :: term().

is_sofs_set({'Set', _, _} = S) when true ->
    true;
is_sofs_set({'OrdSet', _, _} = S) when true ->
    true;
is_sofs_set(_S) ->
    false.

-spec is_set(AnySet) -> Bool when AnySet :: anyset(), Bool :: boolean().

is_set({'Set', _, _} = S) when true ->
    true;
is_set({'OrdSet', _, _} = S) when true ->
    false.

-spec is_empty_set(AnySet) -> Bool
                      when AnySet :: anyset(), Bool :: boolean().

is_empty_set({'Set', _, _} = S) when true ->
    case S of
        {'Set', REC52, _} ->
            REC52;
        REC52 ->
            error({badrecord, REC52})
    end
    =:=
    [];
is_empty_set({'OrdSet', _, _} = S) when true ->
    false.

-spec is_disjoint(Set1, Set2) -> Bool
                     when
                         Bool :: boolean(),
                         Set1 :: a_set(),
                         Set2 :: a_set().

is_disjoint({'Set', _, _} = S1, {'Set', _, _} = S2) when true, true ->
    case
        match_types(case S1 of
                        {'Set', _, REC53} ->
                            REC53;
                        REC53 ->
                            error({badrecord, REC53})
                    end,
                    case S2 of
                        {'Set', _, REC54} ->
                            REC54;
                        REC54 ->
                            error({badrecord, REC54})
                    end)
    of
        true ->
            case
                case S1 of
                    {'Set', REC55, _} ->
                        REC55;
                    REC55 ->
                        error({badrecord, REC55})
                end
            of
                [] ->
                    true;
                [A | As] ->
                    disjoint(case S2 of
                                 {'Set', REC56, _} ->
                                     REC56;
                                 REC56 ->
                                     error({badrecord, REC56})
                             end,
                             A, As)
            end;
        false ->
            error(type_mismatch)
    end.

-spec union(SetOfSets) -> Set
               when Set :: a_set(), SetOfSets :: set_of_sets().

union({'Set', _, _} = Sets) when true ->
    case
        case Sets of
            {'Set', _, REC57} ->
                REC57;
            REC57 ->
                error({badrecord, REC57})
        end
    of
        [Type] ->
            {'Set',
             lunion(case Sets of
                        {'Set', REC58, _} ->
                            REC58;
                        REC58 ->
                            error({badrecord, REC58})
                    end),
             Type};
        '_' ->
            Sets;
        _ ->
            error(badarg)
    end.

-spec intersection(SetOfSets) -> Set
                      when Set :: a_set(), SetOfSets :: set_of_sets().

intersection({'Set', _, _} = Sets) when true ->
    case
        case Sets of
            {'Set', REC59, _} ->
                REC59;
            REC59 ->
                error({badrecord, REC59})
        end
    of
        [] ->
            error(badarg);
        [L | Ls] ->
            case
                case Sets of
                    {'Set', _, REC60} ->
                        REC60;
                    REC60 ->
                        error({badrecord, REC60})
                end
            of
                [Type] ->
                    {'Set', lintersection(Ls, L), Type};
                _ ->
                    error(badarg)
            end
    end.

-spec canonical_relation(SetOfSets) -> BinRel
                            when
                                BinRel :: binary_relation(),
                                SetOfSets :: set_of_sets().

canonical_relation({'Set', _, _} = Sets) when true ->
    ST =
        case Sets of
            {'Set', _, REC61} ->
                REC61;
            REC61 ->
                error({badrecord, REC61})
        end,
    case ST of
        ['_'] ->
            empty_set();
        [Type] ->
            {'Set',
             can_rel(case Sets of
                         {'Set', REC62, _} ->
                             REC62;
                         REC62 ->
                             error({badrecord, REC62})
                     end,
                     []),
             {Type, ST}};
        '_' ->
            Sets;
        _ ->
            error(badarg)
    end.

-spec rel2fam(BinRel) -> Family
                 when Family :: family(), BinRel :: binary_relation().

rel2fam(R) ->
    relation_to_family(R).

-spec relation_to_family(BinRel) -> Family
                            when
                                Family :: family(),
                                BinRel :: binary_relation().

relation_to_family({'Set', _, _} = R) when true ->
    case
        case R of
            {'Set', _, REC63} ->
                REC63;
            REC63 ->
                error({badrecord, REC63})
        end
    of
        {DT, RT} ->
            {'Set',
             rel2family(case R of
                            {'Set', REC64, _} ->
                                REC64;
                            REC64 ->
                                error({badrecord, REC64})
                        end),
             {DT, [RT]}};
        '_' ->
            R;
        _Else ->
            error(badarg)
    end.

-spec domain(BinRel) -> Set
                when BinRel :: binary_relation(), Set :: a_set().

domain({'Set', _, _} = R) when true ->
    case
        case R of
            {'Set', _, REC65} ->
                REC65;
            REC65 ->
                error({badrecord, REC65})
        end
    of
        {DT, _} ->
            {'Set',
             dom(case R of
                     {'Set', REC66, _} ->
                         REC66;
                     REC66 ->
                         error({badrecord, REC66})
                 end),
             DT};
        '_' ->
            R;
        _Else ->
            error(badarg)
    end.

-spec range(BinRel) -> Set
               when BinRel :: binary_relation(), Set :: a_set().

range({'Set', _, _} = R) when true ->
    case
        case R of
            {'Set', _, REC67} ->
                REC67;
            REC67 ->
                error({badrecord, REC67})
        end
    of
        {_, RT} ->
            {'Set',
             ran(case R of
                     {'Set', REC68, _} ->
                         REC68;
                     REC68 ->
                         error({badrecord, REC68})
                 end,
                 []),
             RT};
        '_' ->
            R;
        _ ->
            error(badarg)
    end.

-spec field(BinRel) -> Set
               when BinRel :: binary_relation(), Set :: a_set().

field(R) ->
    union(domain(R), range(R)).

-spec relative_product(ListOfBinRels) -> BinRel2
                          when
                              ListOfBinRels :: [BinRel, ...],
                              BinRel :: binary_relation(),
                              BinRel2 :: binary_relation().

relative_product(RT) when is_tuple(RT) ->
    relative_product(tuple_to_list(RT));
relative_product(RL) when is_list(RL) ->
    case relprod_n(RL, foo, false, false) of
        {error, Reason} ->
            error(Reason);
        Reply ->
            Reply
    end.

-spec relative_product(ListOfBinRels, BinRel1) -> BinRel2
                          when
                              ListOfBinRels :: [BinRel, ...],
                              BinRel :: binary_relation(),
                              BinRel1 :: binary_relation(),
                              BinRel2 :: binary_relation();
                      (BinRel1, BinRel2) -> BinRel3
                          when
                              BinRel1 :: binary_relation(),
                              BinRel2 :: binary_relation(),
                              BinRel3 :: binary_relation().

relative_product({'Set', _, _} = R1, {'Set', _, _} = R2) when true, true ->
    relative_product1(converse(R1), R2);
relative_product(RT, {'Set', _, _} = R) when is_tuple(RT), true ->
    relative_product(tuple_to_list(RT), R);
relative_product(RL, {'Set', _, _} = R) when is_list(RL), true ->
    EmptyR =
        case
            case R of
                {'Set', _, REC69} ->
                    REC69;
                REC69 ->
                    error({badrecord, REC69})
            end
        of
            {_, _} ->
                case R of
                    {'Set', REC70, _} ->
                        REC70;
                    REC70 ->
                        error({badrecord, REC70})
                end
                =:=
                [];
            '_' ->
                true;
            _ ->
                error(badarg)
        end,
    case relprod_n(RL, R, EmptyR, true) of
        {error, Reason} ->
            error(Reason);
        Reply ->
            Reply
    end.

-spec relative_product1(BinRel1, BinRel2) -> BinRel3
                           when
                               BinRel1 :: binary_relation(),
                               BinRel2 :: binary_relation(),
                               BinRel3 :: binary_relation().

relative_product1({'Set', _, _} = R1, {'Set', _, _} = R2)
    when true, true ->
    {DTR1, RTR1} =
        case
            case R1 of
                {'Set', _, REC71} ->
                    REC71;
                REC71 ->
                    error({badrecord, REC71})
            end
        of
            {_, _} = R1T ->
                R1T;
            '_' ->
                {'_', '_'};
            _ ->
                error(badarg)
        end,
    {DTR2, RTR2} =
        case
            case R2 of
                {'Set', _, REC72} ->
                    REC72;
                REC72 ->
                    error({badrecord, REC72})
            end
        of
            {_, _} = R2T ->
                R2T;
            '_' ->
                {'_', '_'};
            _ ->
                error(badarg)
        end,
    case match_types(DTR1, DTR2) of
        true when DTR1 =:= '_' ->
            R1;
        true when DTR2 =:= '_' ->
            R2;
        true ->
            {'Set',
             relprod(case R1 of
                         {'Set', REC73, _} ->
                             REC73;
                         REC73 ->
                             error({badrecord, REC73})
                     end,
                     case R2 of
                         {'Set', REC74, _} ->
                             REC74;
                         REC74 ->
                             error({badrecord, REC74})
                     end),
             {RTR1, RTR2}};
        false ->
            error(type_mismatch)
    end.

-spec converse(BinRel1) -> BinRel2
                  when
                      BinRel1 :: binary_relation(),
                      BinRel2 :: binary_relation().

converse({'Set', _, _} = R) when true ->
    case
        case R of
            {'Set', _, REC75} ->
                REC75;
            REC75 ->
                error({badrecord, REC75})
        end
    of
        {DT, RT} ->
            {'Set',
             converse(case R of
                          {'Set', REC76, _} ->
                              REC76;
                          REC76 ->
                              error({badrecord, REC76})
                      end,
                      []),
             {RT, DT}};
        '_' ->
            R;
        _ ->
            error(badarg)
    end.

-spec image(BinRel, Set1) -> Set2
               when
                   BinRel :: binary_relation(),
                   Set1 :: a_set(),
                   Set2 :: a_set().

image({'Set', _, _} = R, {'Set', _, _} = S) when true, true ->
    case
        case R of
            {'Set', _, REC77} ->
                REC77;
            REC77 ->
                error({badrecord, REC77})
        end
    of
        {DT, RT} ->
            case
                match_types(DT,
                            case S of
                                {'Set', _, REC78} ->
                                    REC78;
                                REC78 ->
                                    error({badrecord, REC78})
                            end)
            of
                true ->
                    {'Set',
                     lists:usort(restrict(case S of
                                              {'Set', REC79, _} ->
                                                  REC79;
                                              REC79 ->
                                                  error({badrecord,
                                                         REC79})
                                          end,
                                          case R of
                                              {'Set', REC80, _} ->
                                                  REC80;
                                              REC80 ->
                                                  error({badrecord,
                                                         REC80})
                                          end)),
                     RT};
                false ->
                    error(type_mismatch)
            end;
        '_' ->
            R;
        _ ->
            error(badarg)
    end.

-spec inverse_image(BinRel, Set1) -> Set2
                       when
                           BinRel :: binary_relation(),
                           Set1 :: a_set(),
                           Set2 :: a_set().

inverse_image({'Set', _, _} = R, {'Set', _, _} = S) when true, true ->
    case
        case R of
            {'Set', _, REC81} ->
                REC81;
            REC81 ->
                error({badrecord, REC81})
        end
    of
        {DT, RT} ->
            case
                match_types(RT,
                            case S of
                                {'Set', _, REC82} ->
                                    REC82;
                                REC82 ->
                                    error({badrecord, REC82})
                            end)
            of
                true ->
                    NL =
                        restrict(case S of
                                     {'Set', REC83, _} ->
                                         REC83;
                                     REC83 ->
                                         error({badrecord, REC83})
                                 end,
                                 converse(case R of
                                              {'Set', REC84, _} ->
                                                  REC84;
                                              REC84 ->
                                                  error({badrecord,
                                                         REC84})
                                          end,
                                          [])),
                    {'Set', lists:usort(NL), DT};
                false ->
                    error(type_mismatch)
            end;
        '_' ->
            R;
        _ ->
            error(badarg)
    end.

-spec strict_relation(BinRel1) -> BinRel2
                         when
                             BinRel1 :: binary_relation(),
                             BinRel2 :: binary_relation().

strict_relation({'Set', _, _} = R) when true ->
    case
        case R of
            {'Set', _, REC85} ->
                REC85;
            REC85 ->
                error({badrecord, REC85})
        end
    of
        Type = {_, _} ->
            {'Set',
             strict(case R of
                        {'Set', REC86, _} ->
                            REC86;
                        REC86 ->
                            error({badrecord, REC86})
                    end,
                    []),
             Type};
        '_' ->
            R;
        _ ->
            error(badarg)
    end.

-spec weak_relation(BinRel1) -> BinRel2
                       when
                           BinRel1 :: binary_relation(),
                           BinRel2 :: binary_relation().

weak_relation({'Set', _, _} = R) when true ->
    case
        case R of
            {'Set', _, REC87} ->
                REC87;
            REC87 ->
                error({badrecord, REC87})
        end
    of
        {DT, RT} ->
            case unify_types(DT, RT) of
                [] ->
                    error(badarg);
                Type ->
                    {'Set',
                     weak(case R of
                              {'Set', REC88, _} ->
                                  REC88;
                              REC88 ->
                                  error({badrecord, REC88})
                          end),
                     {Type, Type}}
            end;
        '_' ->
            R;
        _ ->
            error(badarg)
    end.

-spec extension(BinRel1, Set, AnySet) -> BinRel2
                   when
                       AnySet :: anyset(),
                       BinRel1 :: binary_relation(),
                       BinRel2 :: binary_relation(),
                       Set :: a_set().

extension({'Set', _, _} = R, {'Set', _, _} = S, E) when true, true ->
    case
        {case R of
             {'Set', _, REC89} ->
                 REC89;
             REC89 ->
                 error({badrecord, REC89})
         end,
         case S of
             {'Set', _, REC90} ->
                 REC90;
             REC90 ->
                 error({badrecord, REC90})
         end,
         is_sofs_set(E)}
    of
        {T = {DT, RT}, ST, true} ->
            case match_types(DT, ST) and match_types(RT, type(E)) of
                false ->
                    error(type_mismatch);
                true ->
                    RL =
                        case R of
                            {'Set', REC91, _} ->
                                REC91;
                            REC91 ->
                                error({badrecord, REC91})
                        end,
                    case
                        extc([],
                             case S of
                                 {'Set', REC92, _} ->
                                     REC92;
                                 REC92 ->
                                     error({badrecord, REC92})
                             end,
                             to_external(E),
                             RL)
                    of
                        [] ->
                            R;
                        L ->
                            {'Set',
                             lists:merge(RL, lists:reverse(L)),
                             T}
                    end
            end;
        {'_', '_', true} ->
            R;
        {'_', ST, true} ->
            case type(E) of
                ['_'] ->
                    R;
                ET ->
                    {'Set', [], {ST, ET}}
            end;
        {_, _, true} ->
            error(badarg)
    end.

-spec is_a_function(BinRel) -> Bool
                       when
                           Bool :: boolean(),
                           BinRel :: binary_relation().

is_a_function({'Set', _, _} = R) when true ->
    case
        case R of
            {'Set', _, REC93} ->
                REC93;
            REC93 ->
                error({badrecord, REC93})
        end
    of
        {_, _} ->
            case
                case R of
                    {'Set', REC94, _} ->
                        REC94;
                    REC94 ->
                        error({badrecord, REC94})
                end
            of
                [] ->
                    true;
                [{V, _} | Es] ->
                    is_a_func(Es, V)
            end;
        '_' ->
            true;
        _ ->
            error(badarg)
    end.

-spec restriction(BinRel1, Set) -> BinRel2
                     when
                         BinRel1 :: binary_relation(),
                         BinRel2 :: binary_relation(),
                         Set :: a_set().

restriction(Relation, Set) ->
    restriction(1, Relation, Set).

-spec drestriction(BinRel1, Set) -> BinRel2
                      when
                          BinRel1 :: binary_relation(),
                          BinRel2 :: binary_relation(),
                          Set :: a_set().

drestriction(Relation, Set) ->
    drestriction(1, Relation, Set).

-spec composite(Function1, Function2) -> Function3
                   when
                       Function1 :: a_function(),
                       Function2 :: a_function(),
                       Function3 :: a_function().

composite({'Set', _, _} = Fn1, {'Set', _, _} = Fn2) when true, true ->
    {DTF1, RTF1} =
        case
            case Fn1 of
                {'Set', _, REC95} ->
                    REC95;
                REC95 ->
                    error({badrecord, REC95})
            end
        of
            {_, _} = F1T ->
                F1T;
            '_' ->
                {'_', '_'};
            _ ->
                error(badarg)
        end,
    {DTF2, RTF2} =
        case
            case Fn2 of
                {'Set', _, REC96} ->
                    REC96;
                REC96 ->
                    error({badrecord, REC96})
            end
        of
            {_, _} = F2T ->
                F2T;
            '_' ->
                {'_', '_'};
            _ ->
                error(badarg)
        end,
    case match_types(RTF1, DTF2) of
        true when DTF1 =:= '_' ->
            Fn1;
        true when DTF2 =:= '_' ->
            Fn2;
        true ->
            case
                comp(case Fn1 of
                         {'Set', REC97, _} ->
                             REC97;
                         REC97 ->
                             error({badrecord, REC97})
                     end,
                     case Fn2 of
                         {'Set', REC98, _} ->
                             REC98;
                         REC98 ->
                             error({badrecord, REC98})
                     end)
            of
                SL when is_list(SL) ->
                    {'Set', lists:sort(SL), {DTF1, RTF2}};
                Bad ->
                    error(Bad)
            end;
        false ->
            error(type_mismatch)
    end.

-spec inverse(Function1) -> Function2
                 when
                     Function1 :: a_function(),
                     Function2 :: a_function().

inverse({'Set', _, _} = Fn) when true ->
    case
        case Fn of
            {'Set', _, REC99} ->
                REC99;
            REC99 ->
                error({badrecord, REC99})
        end
    of
        {DT, RT} ->
            case
                inverse1(case Fn of
                             {'Set', REC100, _} ->
                                 REC100;
                             REC100 ->
                                 error({badrecord, REC100})
                         end)
            of
                SL when is_list(SL) ->
                    {'Set', SL, {RT, DT}};
                Bad ->
                    error(Bad)
            end;
        '_' ->
            Fn;
        _ ->
            error(badarg)
    end.

-spec restriction(SetFun, Set1, Set2) -> Set3
                     when
                         SetFun :: set_fun(),
                         Set1 :: a_set(),
                         Set2 :: a_set(),
                         Set3 :: a_set().

restriction(I, {'Set', _, _} = R, {'Set', _, _} = S)
    when is_integer(I), true, true ->
    RT =
        case R of
            {'Set', _, REC101} ->
                REC101;
            REC101 ->
                error({badrecord, REC101})
        end,
    ST =
        case S of
            {'Set', _, REC102} ->
                REC102;
            REC102 ->
                error({badrecord, REC102})
        end,
    case check_for_sort(RT, I) of
        empty ->
            R;
        error ->
            error(badarg);
        Sort ->
            RL =
                case R of
                    {'Set', REC103, _} ->
                        REC103;
                    REC103 ->
                        error({badrecord, REC103})
                end,
            case
                {match_types(element(I, RT), ST),
                 case S of
                     {'Set', REC104, _} ->
                         REC104;
                     REC104 ->
                         error({badrecord, REC104})
                 end}
            of
                {true, _SL} when RL =:= [] ->
                    R;
                {true, []} ->
                    {'Set', [], RT};
                {true, [E | Es]} when Sort =:= false ->
                    {'Set',
                     lists:reverse(restrict_n(I, RL, E, Es, [])),
                     RT};
                {true, [E | Es]} ->
                    {'Set',
                     lists:sort(restrict_n(I,
                                           lists:keysort(I, RL),
                                           E, Es, [])),
                     RT};
                {false, _SL} ->
                    error(type_mismatch)
            end
    end;
restriction(SetFun, {'Set', _, _} = S1, {'Set', _, _} = S2)
    when true, true ->
    Type1 =
        case S1 of
            {'Set', _, REC105} ->
                REC105;
            REC105 ->
                error({badrecord, REC105})
        end,
    Type2 =
        case S2 of
            {'Set', _, REC106} ->
                REC106;
            REC106 ->
                error({badrecord, REC106})
        end,
    SL1 =
        case S1 of
            {'Set', REC107, _} ->
                REC107;
            REC107 ->
                error({badrecord, REC107})
        end,
    case external_fun(SetFun) of
        false when Type2 =:= '_' ->
            S2;
        false ->
            case subst(SL1, SetFun, element_type(Type1)) of
                {NSL, NewType} ->
                    case match_types(NewType, Type2) of
                        true ->
                            NL =
                                lists:sort(restrict(case S2 of
                                                        {'Set', REC108,
                                                         _} ->
                                                            REC108;
                                                        REC108 ->
                                                            error({badrecord,
                                                                   REC108})
                                                    end,
                                                    converse(NSL, []))),
                            {'Set', NL, Type1};
                        false ->
                            error(type_mismatch)
                    end;
                Bad ->
                    error(Bad)
            end;
        _ when Type1 =:= '_' ->
            S1;
        _XFun when is_list(Type1) ->
            error(badarg);
        XFun ->
            FunT = XFun(Type1),
            try check_fun(Type1, XFun, FunT) of
                Sort ->
                    case match_types(FunT, Type2) of
                        true ->
                            R1 = inverse_substitution(SL1, XFun, Sort),
                            {'Set',
                             sort(Sort,
                                  restrict(case S2 of
                                               {'Set', REC109, _} ->
                                                   REC109;
                                               REC109 ->
                                                   error({badrecord,
                                                          REC109})
                                           end,
                                           R1)),
                             Type1};
                        false ->
                            error(type_mismatch)
                    end
            catch
                _:_ ->
                    error(badarg)
            end
    end.

-spec drestriction(SetFun, Set1, Set2) -> Set3
                      when
                          SetFun :: set_fun(),
                          Set1 :: a_set(),
                          Set2 :: a_set(),
                          Set3 :: a_set().

drestriction(I, {'Set', _, _} = R, {'Set', _, _} = S)
    when is_integer(I), true, true ->
    RT =
        case R of
            {'Set', _, REC110} ->
                REC110;
            REC110 ->
                error({badrecord, REC110})
        end,
    ST =
        case S of
            {'Set', _, REC111} ->
                REC111;
            REC111 ->
                error({badrecord, REC111})
        end,
    case check_for_sort(RT, I) of
        empty ->
            R;
        error ->
            error(badarg);
        Sort ->
            RL =
                case R of
                    {'Set', REC112, _} ->
                        REC112;
                    REC112 ->
                        error({badrecord, REC112})
                end,
            case
                {match_types(element(I, RT), ST),
                 case S of
                     {'Set', REC113, _} ->
                         REC113;
                     REC113 ->
                         error({badrecord, REC113})
                 end}
            of
                {true, []} ->
                    R;
                {true, _SL} when RL =:= [] ->
                    R;
                {true, [E | Es]} when Sort =:= false ->
                    {'Set', diff_restrict_n(I, RL, E, Es, []), RT};
                {true, [E | Es]} ->
                    {'Set',
                     diff_restrict_n(I, lists:keysort(I, RL), E, Es, []),
                     RT};
                {false, _SL} ->
                    error(type_mismatch)
            end
    end;
drestriction(SetFun, {'Set', _, _} = S1, {'Set', _, _} = S2)
    when true, true ->
    Type1 =
        case S1 of
            {'Set', _, REC114} ->
                REC114;
            REC114 ->
                error({badrecord, REC114})
        end,
    Type2 =
        case S2 of
            {'Set', _, REC115} ->
                REC115;
            REC115 ->
                error({badrecord, REC115})
        end,
    SL1 =
        case S1 of
            {'Set', REC116, _} ->
                REC116;
            REC116 ->
                error({badrecord, REC116})
        end,
    case external_fun(SetFun) of
        false when Type2 =:= '_' ->
            S1;
        false ->
            case subst(SL1, SetFun, element_type(Type1)) of
                {NSL, NewType} ->
                    case match_types(NewType, Type2) of
                        true ->
                            SL2 =
                                case S2 of
                                    {'Set', REC117, _} ->
                                        REC117;
                                    REC117 ->
                                        error({badrecord, REC117})
                                end,
                            NL =
                                lists:sort(diff_restrict(SL2,
                                                         converse(NSL,
                                                                  []))),
                            {'Set', NL, Type1};
                        false ->
                            error(type_mismatch)
                    end;
                Bad ->
                    error(Bad)
            end;
        _ when Type1 =:= '_' ->
            S1;
        _XFun when is_list(Type1) ->
            error(badarg);
        XFun ->
            FunT = XFun(Type1),
            try check_fun(Type1, XFun, FunT) of
                Sort ->
                    case match_types(FunT, Type2) of
                        true ->
                            R1 = inverse_substitution(SL1, XFun, Sort),
                            SL2 =
                                case S2 of
                                    {'Set', REC118, _} ->
                                        REC118;
                                    REC118 ->
                                        error({badrecord, REC118})
                                end,
                            {'Set',
                             sort(Sort, diff_restrict(SL2, R1)),
                             Type1};
                        false ->
                            error(type_mismatch)
                    end
            catch
                _:_ ->
                    error(badarg)
            end
    end.

-spec projection(SetFun, Set1) -> Set2
                    when
                        SetFun :: set_fun(),
                        Set1 :: a_set(),
                        Set2 :: a_set().

projection(I, {'Set', _, _} = Set) when is_integer(I), true ->
    Type =
        case Set of
            {'Set', _, REC119} ->
                REC119;
            REC119 ->
                error({badrecord, REC119})
        end,
    case check_for_sort(Type, I) of
        empty ->
            Set;
        error ->
            error(badarg);
        _ when I =:= 1 ->
            {'Set',
             projection1(case Set of
                             {'Set', REC120, _} ->
                                 REC120;
                             REC120 ->
                                 error({badrecord, REC120})
                         end),
             element(I, Type)};
        _ ->
            {'Set',
             projection_n(case Set of
                              {'Set', REC121, _} ->
                                  REC121;
                              REC121 ->
                                  error({badrecord, REC121})
                          end,
                          I, []),
             element(I, Type)}
    end;
projection(Fun, Set) ->
    range(substitution(Fun, Set)).

-spec substitution(SetFun, Set1) -> Set2
                      when
                          SetFun :: set_fun(),
                          Set1 :: a_set(),
                          Set2 :: a_set().

substitution(I, {'Set', _, _} = Set) when is_integer(I), true ->
    Type =
        case Set of
            {'Set', _, REC122} ->
                REC122;
            REC122 ->
                error({badrecord, REC122})
        end,
    case check_for_sort(Type, I) of
        empty ->
            Set;
        error ->
            error(badarg);
        _Sort ->
            NType = element(I, Type),
            NSL =
                substitute_element(case Set of
                                       {'Set', REC123, _} ->
                                           REC123;
                                       REC123 ->
                                           error({badrecord, REC123})
                                   end,
                                   I, []),
            {'Set', NSL, {Type, NType}}
    end;
substitution(SetFun, {'Set', _, _} = Set) when true ->
    Type =
        case Set of
            {'Set', _, REC124} ->
                REC124;
            REC124 ->
                error({badrecord, REC124})
        end,
    L = case Set of
            {'Set', REC125, _} ->
                REC125;
            REC125 ->
                error({badrecord, REC125})
        end,
    case external_fun(SetFun) of
        false when L =/= [] ->
            case subst(L, SetFun, element_type(Type)) of
                {SL, NewType} ->
                    {'Set', lists:reverse(SL), {Type, NewType}};
                Bad ->
                    error(Bad)
            end;
        false ->
            empty_set();
        _ when Type =:= '_' ->
            empty_set();
        _XFun when is_list(Type) ->
            error(badarg);
        XFun ->
            FunT = XFun(Type),
            try check_fun(Type, XFun, FunT) of
                _Sort ->
                    SL = substitute(L, XFun, []),
                    {'Set', SL, {Type, FunT}}
            catch
                _:_ ->
                    error(badarg)
            end
    end.

-spec partition(SetOfSets) -> Partition
                   when SetOfSets :: set_of_sets(), Partition :: a_set().

partition(Sets) ->
    F1 = relation_to_family(canonical_relation(Sets)),
    F2 = relation_to_family(converse(F1)),
    range(F2).

-spec partition(SetFun, Set) -> Partition
                   when
                       SetFun :: set_fun(),
                       Partition :: a_set(),
                       Set :: a_set().

partition(I, {'Set', _, _} = Set) when is_integer(I), true ->
    Type =
        case Set of
            {'Set', _, REC126} ->
                REC126;
            REC126 ->
                error({badrecord, REC126})
        end,
    case check_for_sort(Type, I) of
        empty ->
            Set;
        error ->
            error(badarg);
        false ->
            {'Set',
             partition_n(I,
                         case Set of
                             {'Set', REC127, _} ->
                                 REC127;
                             REC127 ->
                                 error({badrecord, REC127})
                         end),
             [Type]};
        true ->
            {'Set',
             partition_n(I,
                         lists:keysort(I,
                                       case Set of
                                           {'Set', REC128, _} ->
                                               REC128;
                                           REC128 ->
                                               error({badrecord, REC128})
                                       end)),
             [Type]}
    end;
partition(Fun, Set) ->
    range(partition_family(Fun, Set)).

-spec partition(SetFun, Set1, Set2) -> {Set3, Set4}
                   when
                       SetFun :: set_fun(),
                       Set1 :: a_set(),
                       Set2 :: a_set(),
                       Set3 :: a_set(),
                       Set4 :: a_set().

partition(I, {'Set', _, _} = R, {'Set', _, _} = S)
    when is_integer(I), true, true ->
    RT =
        case R of
            {'Set', _, REC129} ->
                REC129;
            REC129 ->
                error({badrecord, REC129})
        end,
    ST =
        case S of
            {'Set', _, REC130} ->
                REC130;
            REC130 ->
                error({badrecord, REC130})
        end,
    case check_for_sort(RT, I) of
        empty ->
            {R, R};
        error ->
            error(badarg);
        Sort ->
            RL =
                case R of
                    {'Set', REC131, _} ->
                        REC131;
                    REC131 ->
                        error({badrecord, REC131})
                end,
            case
                {match_types(element(I, RT), ST),
                 case S of
                     {'Set', REC132, _} ->
                         REC132;
                     REC132 ->
                         error({badrecord, REC132})
                 end}
            of
                {true, _SL} when RL =:= [] ->
                    {R, R};
                {true, []} ->
                    {{'Set', [], RT}, R};
                {true, [E | Es]} when Sort =:= false ->
                    [L1 | L2] = partition3_n(I, RL, E, Es, [], []),
                    {{'Set', L1, RT}, {'Set', L2, RT}};
                {true, [E | Es]} ->
                    [L1 | L2] =
                        partition3_n(I,
                                     lists:keysort(I, RL),
                                     E, Es, [], []),
                    {{'Set', L1, RT}, {'Set', L2, RT}};
                {false, _SL} ->
                    error(type_mismatch)
            end
    end;
partition(SetFun, {'Set', _, _} = S1, {'Set', _, _} = S2)
    when true, true ->
    Type1 =
        case S1 of
            {'Set', _, REC133} ->
                REC133;
            REC133 ->
                error({badrecord, REC133})
        end,
    Type2 =
        case S2 of
            {'Set', _, REC134} ->
                REC134;
            REC134 ->
                error({badrecord, REC134})
        end,
    SL1 =
        case S1 of
            {'Set', REC135, _} ->
                REC135;
            REC135 ->
                error({badrecord, REC135})
        end,
    case external_fun(SetFun) of
        false when Type2 =:= '_' ->
            {S2, S1};
        false ->
            case subst(SL1, SetFun, element_type(Type1)) of
                {NSL, NewType} ->
                    case match_types(NewType, Type2) of
                        true ->
                            R1 = converse(NSL, []),
                            [L1 | L2] =
                                partition3(case S2 of
                                               {'Set', REC136, _} ->
                                                   REC136;
                                               REC136 ->
                                                   error({badrecord,
                                                          REC136})
                                           end,
                                           R1),
                            {{'Set', lists:sort(L1), Type1},
                             {'Set', lists:sort(L2), Type1}};
                        false ->
                            error(type_mismatch)
                    end;
                Bad ->
                    error(Bad)
            end;
        _ when Type1 =:= '_' ->
            {S1, S1};
        _XFun when is_list(Type1) ->
            error(badarg);
        XFun ->
            FunT = XFun(Type1),
            try check_fun(Type1, XFun, FunT) of
                Sort ->
                    case match_types(FunT, Type2) of
                        true ->
                            R1 = inverse_substitution(SL1, XFun, Sort),
                            [L1 | L2] =
                                partition3(case S2 of
                                               {'Set', REC137, _} ->
                                                   REC137;
                                               REC137 ->
                                                   error({badrecord,
                                                          REC137})
                                           end,
                                           R1),
                            {{'Set', lists:sort(L1), Type1},
                             {'Set', lists:sort(L2), Type1}};
                        false ->
                            error(type_mismatch)
                    end
            catch
                _:_ ->
                    error(badarg)
            end
    end.

-spec multiple_relative_product(TupleOfBinRels, BinRel1) -> BinRel2
                                   when
                                       TupleOfBinRels ::
                                           tuple_of(BinRel),
                                       BinRel :: binary_relation(),
                                       BinRel1 :: binary_relation(),
                                       BinRel2 :: binary_relation().

multiple_relative_product(T, {'Set', _, _} = R) when is_tuple(T), true ->
    case test_rel(R, tuple_size(T), eq) of
        true
            when
                (is_record(R, 'Set', 3)
                 orelse
                 fail)
                and
                (element(3, R) =:= '_') ->
            empty_set();
        true ->
            MProd = mul_relprod(tuple_to_list(T), 1, R),
            relative_product(MProd);
        false ->
            error(badarg)
    end.

-spec join(Relation1, I, Relation2, J) -> Relation3
              when
                  Relation1 :: relation(),
                  Relation2 :: relation(),
                  Relation3 :: relation(),
                  I :: pos_integer(),
                  J :: pos_integer().

join({'Set', _, _} = R1, I1, {'Set', _, _} = R2, I2)
    when true, true, is_integer(I1), is_integer(I2) ->
    case test_rel(R1, I1, lte) and test_rel(R2, I2, lte) of
        false ->
            error(badarg);
        true
            when
                (is_record(R1, 'Set', 3)
                 orelse
                 fail)
                and
                (element(3, R1) =:= '_') ->
            R1;
        true
            when
                (is_record(R2, 'Set', 3)
                 orelse
                 fail)
                and
                (element(3, R2) =:= '_') ->
            R2;
        true ->
            L1 =
                case raise_element(R1, I1) of
                    {'Set', REC138, _} ->
                        REC138;
                    REC138 ->
                        error({badrecord, REC138})
                end,
            L2 =
                case raise_element(R2, I2) of
                    {'Set', REC139, _} ->
                        REC139;
                    REC139 ->
                        error({badrecord, REC139})
                end,
            T = relprod1(L1, L2),
            F = case (I1 =:= 1) and (I2 =:= 1) of
                    true ->
                        fun({X, Y}) ->
                               join_element(X, Y)
                        end;
                    false ->
                        fun({X, Y}) ->
                               list_to_tuple(join_element(X, Y, I2))
                        end
                end,
            {'Set',
             replace(T, F, []),
             F({case R1 of
                    {'Set', _, REC140} ->
                        REC140;
                    REC140 ->
                        error({badrecord, REC140})
                end,
                case R2 of
                    {'Set', _, REC141} ->
                        REC141;
                    REC141 ->
                        error({badrecord, REC141})
                end})}
    end.

test_rel(R, I, C) ->
    case
        case R of
            {'Set', _, REC142} ->
                REC142;
            REC142 ->
                error({badrecord, REC142})
        end
    of
        Rel when is_tuple(Rel), C =:= eq, I =:= tuple_size(Rel) ->
            true;
        Rel when is_tuple(Rel), C =:= lte, I >= 1, I =< tuple_size(Rel) ->
            true;
        '_' ->
            true;
        _ ->
            false
    end.

-spec fam2rel(Family) -> BinRel
                 when Family :: family(), BinRel :: binary_relation().

fam2rel(F) ->
    family_to_relation(F).

-spec family_to_relation(Family) -> BinRel
                            when
                                Family :: family(),
                                BinRel :: binary_relation().

family_to_relation({'Set', _, _} = F) when true ->
    case
        case F of
            {'Set', _, REC143} ->
                REC143;
            REC143 ->
                error({badrecord, REC143})
        end
    of
        {DT, [RT]} ->
            {'Set',
             family2rel(case F of
                            {'Set', REC144, _} ->
                                REC144;
                            REC144 ->
                                error({badrecord, REC144})
                        end,
                        []),
             {DT, RT}};
        '_' ->
            F;
        _ ->
            error(badarg)
    end.

-spec family_specification(Fun, Family1) -> Family2
                              when
                                  Fun :: spec_fun(),
                                  Family1 :: family(),
                                  Family2 :: family().

family_specification(Fun, {'Set', _, _} = F) when true ->
    case
        case F of
            {'Set', _, REC145} ->
                REC145;
            REC145 ->
                error({badrecord, REC145})
        end
    of
        {_DT, [Type]} = FType ->
            R = case external_fun(Fun) of
                    false ->
                        fam_spec(case F of
                                     {'Set', REC146, _} ->
                                         REC146;
                                     REC146 ->
                                         error({badrecord, REC146})
                                 end,
                                 Fun, Type, []);
                    XFun ->
                        fam_specification(case F of
                                              {'Set', REC147, _} ->
                                                  REC147;
                                              REC147 ->
                                                  error({badrecord,
                                                         REC147})
                                          end,
                                          XFun, [])
                end,
            case R of
                SL when is_list(SL) ->
                    {'Set', SL, FType};
                Bad ->
                    error(Bad)
            end;
        '_' ->
            F;
        _ ->
            error(badarg)
    end.

-spec union_of_family(Family) -> Set
                         when Family :: family(), Set :: a_set().

union_of_family({'Set', _, _} = F) when true ->
    case
        case F of
            {'Set', _, REC148} ->
                REC148;
            REC148 ->
                error({badrecord, REC148})
        end
    of
        {_DT, [Type]} ->
            {'Set',
             un_of_fam(case F of
                           {'Set', REC149, _} ->
                               REC149;
                           REC149 ->
                               error({badrecord, REC149})
                       end,
                       []),
             Type};
        '_' ->
            F;
        _ ->
            error(badarg)
    end.

-spec intersection_of_family(Family) -> Set
                                when Family :: family(), Set :: a_set().

intersection_of_family({'Set', _, _} = F) when true ->
    case
        case F of
            {'Set', _, REC150} ->
                REC150;
            REC150 ->
                error({badrecord, REC150})
        end
    of
        {_DT, [Type]} ->
            case
                int_of_fam(case F of
                               {'Set', REC151, _} ->
                                   REC151;
                               REC151 ->
                                   error({badrecord, REC151})
                           end)
            of
                FU when is_list(FU) ->
                    {'Set', FU, Type};
                Bad ->
                    error(Bad)
            end;
        _ ->
            error(badarg)
    end.

-spec family_union(Family1) -> Family2
                      when Family1 :: family(), Family2 :: family().

family_union({'Set', _, _} = F) when true ->
    case
        case F of
            {'Set', _, REC152} ->
                REC152;
            REC152 ->
                error({badrecord, REC152})
        end
    of
        {DT, [[Type]]} ->
            {'Set',
             fam_un(case F of
                        {'Set', REC153, _} ->
                            REC153;
                        REC153 ->
                            error({badrecord, REC153})
                    end,
                    []),
             {DT, [Type]}};
        '_' ->
            F;
        _ ->
            error(badarg)
    end.

-spec family_intersection(Family1) -> Family2
                             when
                                 Family1 :: family(),
                                 Family2 :: family().

family_intersection({'Set', _, _} = F) when true ->
    case
        case F of
            {'Set', _, REC154} ->
                REC154;
            REC154 ->
                error({badrecord, REC154})
        end
    of
        {DT, [[Type]]} ->
            case
                fam_int(case F of
                            {'Set', REC155, _} ->
                                REC155;
                            REC155 ->
                                error({badrecord, REC155})
                        end,
                        [])
            of
                FU when is_list(FU) ->
                    {'Set', FU, {DT, [Type]}};
                Bad ->
                    error(Bad)
            end;
        '_' ->
            F;
        _ ->
            error(badarg)
    end.

-spec family_domain(Family1) -> Family2
                       when Family1 :: family(), Family2 :: family().

family_domain({'Set', _, _} = F) when true ->
    case
        case F of
            {'Set', _, REC156} ->
                REC156;
            REC156 ->
                error({badrecord, REC156})
        end
    of
        {FDT, [{DT, _}]} ->
            {'Set',
             fam_dom(case F of
                         {'Set', REC157, _} ->
                             REC157;
                         REC157 ->
                             error({badrecord, REC157})
                     end,
                     []),
             {FDT, [DT]}};
        '_' ->
            F;
        {_, ['_']} ->
            F;
        _ ->
            error(badarg)
    end.

-spec family_range(Family1) -> Family2
                      when Family1 :: family(), Family2 :: family().

family_range({'Set', _, _} = F) when true ->
    case
        case F of
            {'Set', _, REC158} ->
                REC158;
            REC158 ->
                error({badrecord, REC158})
        end
    of
        {DT, [{_, RT}]} ->
            {'Set',
             fam_ran(case F of
                         {'Set', REC159, _} ->
                             REC159;
                         REC159 ->
                             error({badrecord, REC159})
                     end,
                     []),
             {DT, [RT]}};
        '_' ->
            F;
        {_, ['_']} ->
            F;
        _ ->
            error(badarg)
    end.

-spec family_field(Family1) -> Family2
                      when Family1 :: family(), Family2 :: family().

family_field(F) ->
    family_union(family_domain(F), family_range(F)).

-spec family_union(Family1, Family2) -> Family3
                      when
                          Family1 :: family(),
                          Family2 :: family(),
                          Family3 :: family().

family_union(F1, F2) ->
    fam_binop(F1, F2, fun fam_union/3).

-spec family_intersection(Family1, Family2) -> Family3
                             when
                                 Family1 :: family(),
                                 Family2 :: family(),
                                 Family3 :: family().

family_intersection(F1, F2) ->
    fam_binop(F1, F2, fun fam_intersect/3).

-spec family_difference(Family1, Family2) -> Family3
                           when
                               Family1 :: family(),
                               Family2 :: family(),
                               Family3 :: family().

family_difference(F1, F2) ->
    fam_binop(F1, F2, fun fam_difference/3).

fam_binop({'Set', _, _} = F1, {'Set', _, _} = F2, FF) when true, true ->
    case
        unify_types(case F1 of
                        {'Set', _, REC160} ->
                            REC160;
                        REC160 ->
                            error({badrecord, REC160})
                    end,
                    case F2 of
                        {'Set', _, REC161} ->
                            REC161;
                        REC161 ->
                            error({badrecord, REC161})
                    end)
    of
        [] ->
            error(type_mismatch);
        '_' ->
            F1;
        Type = {_, [_]} ->
            {'Set',
             FF(case F1 of
                    {'Set', REC162, _} ->
                        REC162;
                    REC162 ->
                        error({badrecord, REC162})
                end,
                case F2 of
                    {'Set', REC163, _} ->
                        REC163;
                    REC163 ->
                        error({badrecord, REC163})
                end,
                []),
             Type};
        _ ->
            error(badarg)
    end.

-spec partition_family(SetFun, Set) -> Family
                          when
                              Family :: family(),
                              SetFun :: set_fun(),
                              Set :: a_set().

partition_family(I, {'Set', _, _} = Set) when is_integer(I), true ->
    Type =
        case Set of
            {'Set', _, REC164} ->
                REC164;
            REC164 ->
                error({badrecord, REC164})
        end,
    case check_for_sort(Type, I) of
        empty ->
            Set;
        error ->
            error(badarg);
        false ->
            {'Set',
             fam_partition_n(I,
                             case Set of
                                 {'Set', REC165, _} ->
                                     REC165;
                                 REC165 ->
                                     error({badrecord, REC165})
                             end),
             {element(I, Type), [Type]}};
        true ->
            {'Set',
             fam_partition_n(I,
                             lists:keysort(I,
                                           case Set of
                                               {'Set', REC166, _} ->
                                                   REC166;
                                               REC166 ->
                                                   error({badrecord,
                                                          REC166})
                                           end)),
             {element(I, Type), [Type]}}
    end;
partition_family(SetFun, {'Set', _, _} = Set) when true ->
    Type =
        case Set of
            {'Set', _, REC167} ->
                REC167;
            REC167 ->
                error({badrecord, REC167})
        end,
    SL =
        case Set of
            {'Set', REC168, _} ->
                REC168;
            REC168 ->
                error({badrecord, REC168})
        end,
    case external_fun(SetFun) of
        false when SL =/= [] ->
            case subst(SL, SetFun, element_type(Type)) of
                {NSL, NewType} ->
                    P = fam_partition(converse(NSL, []), true),
                    {'Set', lists:reverse(P), {NewType, [Type]}};
                Bad ->
                    error(Bad)
            end;
        false ->
            empty_set();
        _ when Type =:= '_' ->
            empty_set();
        _XFun when is_list(Type) ->
            error(badarg);
        XFun ->
            DType = XFun(Type),
            try check_fun(Type, XFun, DType) of
                Sort ->
                    Ts =
                        inverse_substitution(case Set of
                                                 {'Set', REC169, _} ->
                                                     REC169;
                                                 REC169 ->
                                                     error({badrecord,
                                                            REC169})
                                             end,
                                             XFun, Sort),
                    P = fam_partition(Ts, Sort),
                    {'Set', lists:reverse(P), {DType, [Type]}}
            catch
                _:_ ->
                    error(badarg)
            end
    end.

-spec family_projection(SetFun, Family1) -> Family2
                           when
                               SetFun :: set_fun(),
                               Family1 :: family(),
                               Family2 :: family().

family_projection(SetFun, {'Set', _, _} = F) when true ->
    case
        case F of
            {'Set', _, REC170} ->
                REC170;
            REC170 ->
                error({badrecord, REC170})
        end
    of
        {_, [_]}
            when
                (is_record(F, 'Set', 3)
                 orelse
                 fail)
                and
                ([] =:= element(2, F)) ->
            empty_set();
        {DT, [Type]} ->
            case external_fun(SetFun) of
                false ->
                    case
                        fam_proj(case F of
                                     {'Set', REC171, _} ->
                                         REC171;
                                     REC171 ->
                                         error({badrecord, REC171})
                                 end,
                                 SetFun, Type, '_', [])
                    of
                        {SL, NewType} ->
                            {'Set', SL, {DT, NewType}};
                        Bad ->
                            error(Bad)
                    end;
                _ ->
                    error(badarg)
            end;
        '_' ->
            F;
        _ ->
            error(badarg)
    end.

-spec family_to_digraph(Family) -> Graph
                           when
                               Graph :: digraph:graph(),
                               Family :: family().

family_to_digraph({'Set', _, _} = F) when true ->
    case
        case F of
            {'Set', _, REC172} ->
                REC172;
            REC172 ->
                error({badrecord, REC172})
        end
    of
        {_, [_]} ->
            fam2digraph(F, digraph:new());
        '_' ->
            digraph:new();
        _Else ->
            error(badarg)
    end.

-spec family_to_digraph(Family, GraphType) -> Graph
                           when
                               Graph :: digraph:graph(),
                               Family :: family(),
                               GraphType :: [digraph:d_type()].

family_to_digraph({'Set', _, _} = F, Type) when true ->
    case
        case F of
            {'Set', _, REC173} ->
                REC173;
            REC173 ->
                error({badrecord, REC173})
        end
    of
        {_, [_]} ->
            ok;
        '_' ->
            ok;
        _Else ->
            error(badarg)
    end,
    try digraph:new(Type) of
        G ->
            case catch fam2digraph(F, G) of
                {error, Reason} ->
                    true = digraph:delete(G),
                    error(Reason);
                _ ->
                    G
            end
    catch
        error:badarg ->
            error(badarg)
    end.

-spec digraph_to_family(Graph) -> Family
                           when
                               Graph :: digraph:graph(),
                               Family :: family().

digraph_to_family(G) ->
    try digraph_family(G) of
        L ->
            {'Set', L, {atom, [atom]}}
    catch
        _:_ ->
            error(badarg)
    end.

-spec digraph_to_family(Graph, Type) -> Family
                           when
                               Graph :: digraph:graph(),
                               Family :: family(),
                               Type :: type().

digraph_to_family(G, T) ->
    case {is_type(T), T} of
        {true, [{_, [_]} = Type]} ->
            try digraph_family(G) of
                L ->
                    {'Set', L, Type}
            catch
                _:_ ->
                    error(badarg)
            end;
        _ ->
            error(badarg)
    end.

is_types(0, _T) ->
    true;
is_types(I, T) ->
    case is_type(element(I, T)) of
        true ->
            is_types(I - 1, T);
        false ->
            false
    end.

is_element_type('_') ->
    true;
is_element_type(T) ->
    is_type(T).

set_of_sets([{'Set', _, _} = S | Ss], L, T0) when true ->
    case
        unify_types([case S of
                         {'Set', _, REC174} ->
                             REC174;
                         REC174 ->
                             error({badrecord, REC174})
                     end],
                    T0)
    of
        [] ->
            {error, type_mismatch};
        Type ->
            set_of_sets(Ss,
                        [case S of
                             {'Set', REC175, _} ->
                                 REC175;
                             REC175 ->
                                 error({badrecord, REC175})
                         end |
                         L],
                        Type)
    end;
set_of_sets([{'OrdSet', _, _} = S | Ss], L, T0) when true ->
    case
        unify_types(case S of
                        {'OrdSet', _, REC176} ->
                            REC176;
                        REC176 ->
                            error({badrecord, REC176})
                    end,
                    T0)
    of
        [] ->
            {error, type_mismatch};
        Type ->
            set_of_sets(Ss,
                        [case S of
                             {'OrdSet', REC177, _} ->
                                 REC177;
                             REC177 ->
                                 error({badrecord, REC177})
                         end |
                         L],
                        Type)
    end;
set_of_sets([], L, T) ->
    {'Set', lists:usort(L), T};
set_of_sets(_, _L, _T) ->
    {error, badarg}.

ordset_of_sets([{'Set', _, _} = S | Ss], L, T) when true ->
    ordset_of_sets(Ss,
                   [case S of
                        {'Set', REC178, _} ->
                            REC178;
                        REC178 ->
                            error({badrecord, REC178})
                    end |
                    L],
                   [[case S of
                         {'Set', _, REC179} ->
                             REC179;
                         REC179 ->
                             error({badrecord, REC179})
                     end] |
                    T]);
ordset_of_sets([{'OrdSet', _, _} = S | Ss], L, T) when true ->
    ordset_of_sets(Ss,
                   [case S of
                        {'OrdSet', REC180, _} ->
                            REC180;
                        REC180 ->
                            error({badrecord, REC180})
                    end |
                    L],
                   [case S of
                        {'OrdSet', _, REC181} ->
                            REC181;
                        REC181 ->
                            error({badrecord, REC181})
                    end |
                    T]);
ordset_of_sets([], L, T) ->
    {'OrdSet',
     list_to_tuple(lists:reverse(L)),
     list_to_tuple(lists:reverse(T))};
ordset_of_sets(_, _L, _T) ->
    error.

rel(Ts, [Type]) ->
    case is_type(Type) and atoms_only(Type, 1) of
        true ->
            rel(Ts, tuple_size(Type), Type);
        false ->
            rel_type(Ts, [], Type)
    end;
rel(Ts, Sz) ->
    rel(Ts, Sz, erlang:make_tuple(Sz, atom)).

atoms_only(Type, I) when is_atom(element(I, Type)) ->
    atoms_only(Type, I + 1);
atoms_only(Type, I) when I > tuple_size(Type), is_tuple(Type) ->
    true;
atoms_only(_Type, _I) ->
    false.

rel(Ts, Sz, Type) when Sz >= 1 ->
    SL = lists:usort(Ts),
    rel(SL, SL, Sz, Type).

rel([T | Ts], L, Sz, Type) when tuple_size(T) =:= Sz ->
    rel(Ts, L, Sz, Type);
rel([], L, _Sz, Type) ->
    {'Set', L, Type}.

rel_type([E | Ts], L, Type) ->
    {NType, NE} = make_element(E, Type, Type),
    rel_type(Ts, [NE | L], NType);
rel_type([], [], '_') ->
    empty_set();
rel_type([], SL, Type) when is_tuple(Type) ->
    {'Set', lists:usort(SL), Type}.

a_func(Ts, T) ->
    case {T, is_type(T)} of
        {[{DT, RT} = Type], true} when is_atom(DT), is_atom(RT) ->
            func(Ts, Type);
        {[Type], true} ->
            func_type(Ts, [], Type,
                      fun({_, _}) ->
                             true
                      end)
    end.

func(L0, Type) ->
    L = lists:usort(L0),
    func(L, L, L, Type).

func([{X, _} | Ts], X0, L, Type) when X /= X0 ->
    func(Ts, X, L, Type);
func([{X, _} | _Ts], X0, _L, _Type) when X == X0 ->
    bad_function;
func([], _X0, L, Type) ->
    {'Set', L, Type}.

fam(Ts, T) ->
    case {T, is_type(T)} of
        {[{DT, [RT]} = Type], true} when is_atom(DT), is_atom(RT) ->
            fam2(Ts, Type);
        {[Type], true} ->
            func_type(Ts, [], Type,
                      fun({_, [_]}) ->
                             true
                      end)
    end.

fam2([], Type) ->
    {'Set', [], Type};
fam2(Ts, Type) ->
    fam2(lists:sort(Ts), Ts, [], Type).

fam2([{I, L} | T], I0, SL, Type) when I /= I0 ->
    fam2(T, I, [{I, lists:usort(L)} | SL], Type);
fam2([{I, L} | T], I0, SL, Type) when I == I0 ->
    case {lists:usort(L), SL} of
        {NL, [{_I, NL1} | _]} when NL == NL1 ->
            fam2(T, I0, SL, Type);
        _ ->
            bad_function
    end;
fam2([], _I0, SL, Type) ->
    {'Set', lists:reverse(SL), Type}.

func_type([E | T], SL, Type, F) ->
    {NType, NE} = make_element(E, Type, Type),
    func_type(T, [NE | SL], NType, F);
func_type([], [], '_', _F) ->
    empty_set();
func_type([], SL, Type, F) ->
    true = F(Type),
    NL = lists:usort(SL),
    check_function(NL, {'Set', NL, Type}).

setify(L, [Atom]) when is_atom(Atom), Atom =/= '_' ->
    {'Set', lists:usort(L), Atom};
setify(L, [Type0]) ->
    try is_no_lists(Type0) of
        N when is_integer(N) ->
            rel(L, N, Type0);
        Sizes ->
            make_oset(L, Sizes, L, Type0)
    catch
        _:_ ->
            {[Type], Set} = create(L, Type0, Type0, []),
            {'Set', Set, Type}
    end;
setify(E, Type0) ->
    {Type, OrdSet} = make_element(E, Type0, Type0),
    {'OrdSet', OrdSet, Type}.

is_no_lists(T) when is_tuple(T) ->
    Sz = tuple_size(T),
    is_no_lists(T, Sz, Sz, []).

is_no_lists(_T, 0, Sz, []) ->
    Sz;
is_no_lists(_T, 0, Sz, L) ->
    {Sz, L};
is_no_lists(T, I, Sz, L) when is_atom(element(I, T)) ->
    is_no_lists(T, I - 1, Sz, L);
is_no_lists(T, I, Sz, L) ->
    is_no_lists(T, I - 1, Sz, [{I, is_no_lists(element(I, T))} | L]).

create([E | Es], T, T0, L) ->
    {NT, S} = make_element(E, T, T0),
    create(Es, NT, T0, [S | L]);
create([], T, _T0, L) ->
    {[T], lists:usort(L)}.

make_element(C, '_', _T0) ->
    make_element(C);
make_element(C, Atom, '_')
    when is_atom(Atom), not is_list(C), not is_tuple(C) ->
    {Atom, C};
make_element(C, Atom, Atom) when is_atom(Atom) ->
    {Atom, C};
make_element(T, TT, '_') when tuple_size(T) =:= tuple_size(TT) ->
    make_tuple(tuple_to_list(T), tuple_to_list(TT), [], [], '_');
make_element(T, TT, T0) when tuple_size(T) =:= tuple_size(TT) ->
    make_tuple(tuple_to_list(T),
               tuple_to_list(TT),
               [], [],
               tuple_to_list(T0));
make_element(L, [LT], '_') when is_list(L) ->
    create(L, LT, '_', []);
make_element(L, [LT], [T0]) when is_list(L) ->
    create(L, LT, T0, []).

make_tuple([E | Es], [T | Ts], NT, L, T0) when T0 =:= '_' ->
    {ET, ES} = make_element(E, T, T0),
    make_tuple(Es, Ts, [ET | NT], [ES | L], T0);
make_tuple([E | Es], [T | Ts], NT, L, [T0 | T0s]) ->
    {ET, ES} = make_element(E, T, T0),
    make_tuple(Es, Ts, [ET | NT], [ES | L], T0s);
make_tuple([], [], NT, L, _T0s) when NT =/= [] ->
    {list_to_tuple(lists:reverse(NT)), list_to_tuple(lists:reverse(L))}.

make_element(C) when not is_list(C), not is_tuple(C) ->
    {atom, C};
make_element(T) when is_tuple(T) ->
    make_tuple(tuple_to_list(T), [], []);
make_element(L) when is_list(L) ->
    create(L, '_', '_', []).

make_tuple([E | Es], T, L) ->
    {ET, ES} = make_element(E),
    make_tuple(Es, [ET | T], [ES | L]);
make_tuple([], T, L) when T =/= [] ->
    {list_to_tuple(lists:reverse(T)), list_to_tuple(lists:reverse(L))}.

make_oset([T | Ts], Szs, L, Type) ->
    true = test_oset(Szs, T, T),
    make_oset(Ts, Szs, L, Type);
make_oset([], _Szs, L, Type) ->
    {'Set', lists:usort(L), Type}.

test_oset({Sz, Args}, T, T0) when tuple_size(T) =:= Sz ->
    test_oset_args(Args, T, T0);
test_oset(Sz, T, _T0) when tuple_size(T) =:= Sz ->
    true.

test_oset_args([{Arg, Szs} | Ss], T, T0) ->
    true = test_oset(Szs, element(Arg, T), T0),
    test_oset_args(Ss, T, T0);
test_oset_args([], _T, _T0) ->
    true.

list_of_sets([S | Ss], Type, L) ->
    list_of_sets(Ss, Type, [{'Set', S, Type} | L]);
list_of_sets([], _Type, L) ->
    lists:reverse(L).

list_of_ordsets([S | Ss], Type, L) ->
    list_of_ordsets(Ss, Type, [{'OrdSet', S, Type} | L]);
list_of_ordsets([], _Type, L) ->
    lists:reverse(L).

tuple_of_sets([S | Ss], [[Type] | Types], L) ->
    tuple_of_sets(Ss, Types, [{'Set', S, Type} | L]);
tuple_of_sets([S | Ss], [Type | Types], L) ->
    tuple_of_sets(Ss, Types, [{'OrdSet', S, Type} | L]);
tuple_of_sets([], [], L) ->
    list_to_tuple(lists:reverse(L)).

spec([E | Es], Fun, Type, L) ->
    case Fun(term2set(E, Type)) of
        true ->
            spec(Es, Fun, Type, [E | L]);
        false ->
            spec(Es, Fun, Type, L);
        _ ->
            badarg
    end;
spec([], _Fun, _Type, L) ->
    lists:reverse(L).

specification([E | Es], Fun, L) ->
    case Fun(E) of
        true ->
            specification(Es, Fun, [E | L]);
        false ->
            specification(Es, Fun, L);
        _ ->
            badarg
    end;
specification([], _Fun, L) ->
    lists:reverse(L).

intersection([H1 | T1], [H2 | T2], L) when H1 < H2 ->
    intersection1(T1, T2, L, H2);
intersection([H1 | T1], [H2 | T2], L) when H1 == H2 ->
    intersection(T1, T2, [H1 | L]);
intersection([H1 | T1], [_H2 | T2], L) ->
    intersection2(T1, T2, L, H1);
intersection(_, _, L) ->
    lists:reverse(L).

intersection1([H1 | T1], T2, L, H2) when H1 < H2 ->
    intersection1(T1, T2, L, H2);
intersection1([H1 | T1], T2, L, H2) when H1 == H2 ->
    intersection(T1, T2, [H1 | L]);
intersection1([H1 | T1], T2, L, _H2) ->
    intersection2(T1, T2, L, H1);
intersection1(_, _, L, _) ->
    lists:reverse(L).

intersection2(T1, [H2 | T2], L, H1) when H1 > H2 ->
    intersection2(T1, T2, L, H1);
intersection2(T1, [H2 | T2], L, H1) when H1 == H2 ->
    intersection(T1, T2, [H1 | L]);
intersection2(T1, [H2 | T2], L, _H1) ->
    intersection1(T1, T2, L, H2);
intersection2(_, _, L, _) ->
    lists:reverse(L).

difference([H1 | T1], [H2 | T2], L) when H1 < H2 ->
    diff(T1, T2, [H1 | L], H2);
difference([H1 | T1], [H2 | T2], L) when H1 == H2 ->
    difference(T1, T2, L);
difference([H1 | T1], [_H2 | T2], L) ->
    diff2(T1, T2, L, H1);
difference(L1, _, L) ->
    lists:reverse(L, L1).

diff([H1 | T1], T2, L, H2) when H1 < H2 ->
    diff(T1, T2, [H1 | L], H2);
diff([H1 | T1], T2, L, H2) when H1 == H2 ->
    difference(T1, T2, L);
diff([H1 | T1], T2, L, _H2) ->
    diff2(T1, T2, L, H1);
diff(_, _, L, _) ->
    lists:reverse(L).

diff2(T1, [H2 | T2], L, H1) when H1 > H2 ->
    diff2(T1, T2, L, H1);
diff2(T1, [H2 | T2], L, H1) when H1 == H2 ->
    difference(T1, T2, L);
diff2(T1, [H2 | T2], L, H1) ->
    diff(T1, T2, [H1 | L], H2);
diff2(T1, _, L, H1) ->
    lists:reverse(L, [H1 | T1]).

symdiff([H1 | T1], T2, L) ->
    symdiff2(T1, T2, L, H1);
symdiff(_, T2, L) ->
    lists:reverse(L, T2).

symdiff1([H1 | T1], T2, L, H2) when H1 < H2 ->
    symdiff1(T1, T2, [H1 | L], H2);
symdiff1([H1 | T1], T2, L, H2) when H1 == H2 ->
    symdiff(T1, T2, L);
symdiff1([H1 | T1], T2, L, H2) ->
    symdiff2(T1, T2, [H2 | L], H1);
symdiff1(_, T2, L, H2) ->
    lists:reverse(L, [H2 | T2]).

symdiff2(T1, [H2 | T2], L, H1) when H1 > H2 ->
    symdiff2(T1, T2, [H2 | L], H1);
symdiff2(T1, [H2 | T2], L, H1) when H1 == H2 ->
    symdiff(T1, T2, L);
symdiff2(T1, [H2 | T2], L, H1) ->
    symdiff1(T1, T2, [H1 | L], H2);
symdiff2(T1, _, L, H1) ->
    lists:reverse(L, [H1 | T1]).

sympart([H1 | T1], [H2 | T2], L1, L12, L2, T) when H1 < H2 ->
    sympart1(T1, T2, [H1 | L1], L12, L2, T, H2);
sympart([H1 | T1], [H2 | T2], L1, L12, L2, T) when H1 == H2 ->
    sympart(T1, T2, L1, [H1 | L12], L2, T);
sympart([H1 | T1], [H2 | T2], L1, L12, L2, T) ->
    sympart2(T1, T2, L1, L12, [H2 | L2], T, H1);
sympart(S1, [], L1, L12, L2, T) ->
    {{'Set', lists:reverse(L1, S1), T},
     {'Set', lists:reverse(L12), T},
     {'Set', lists:reverse(L2), T}};
sympart(_, S2, L1, L12, L2, T) ->
    {{'Set', lists:reverse(L1), T},
     {'Set', lists:reverse(L12), T},
     {'Set', lists:reverse(L2, S2), T}}.

sympart1([H1 | T1], T2, L1, L12, L2, T, H2) when H1 < H2 ->
    sympart1(T1, T2, [H1 | L1], L12, L2, T, H2);
sympart1([H1 | T1], T2, L1, L12, L2, T, H2) when H1 == H2 ->
    sympart(T1, T2, L1, [H1 | L12], L2, T);
sympart1([H1 | T1], T2, L1, L12, L2, T, H2) ->
    sympart2(T1, T2, L1, L12, [H2 | L2], T, H1);
sympart1(_, T2, L1, L12, L2, T, H2) ->
    {{'Set', lists:reverse(L1), T},
     {'Set', lists:reverse(L12), T},
     {'Set', lists:reverse(L2, [H2 | T2]), T}}.

sympart2(T1, [H2 | T2], L1, L12, L2, T, H1) when H1 > H2 ->
    sympart2(T1, T2, L1, L12, [H2 | L2], T, H1);
sympart2(T1, [H2 | T2], L1, L12, L2, T, H1) when H1 == H2 ->
    sympart(T1, T2, L1, [H1 | L12], L2, T);
sympart2(T1, [H2 | T2], L1, L12, L2, T, H1) ->
    sympart1(T1, T2, [H1 | L1], L12, L2, T, H2);
sympart2(T1, _, L1, L12, L2, T, H1) ->
    {{'Set', lists:reverse(L1, [H1 | T1]), T},
     {'Set', lists:reverse(L12), T},
     {'Set', lists:reverse(L2), T}}.

prod([[E | Es] | Xs], T, L) ->
    prod(Es, Xs, T, prod(Xs, [E | T], L));
prod([], T, L) ->
    [list_to_tuple(lists:reverse(T)) | L].

prod([E | Es], Xs, T, L) ->
    prod(Es, Xs, T, prod(Xs, [E | T], L));
prod([], _Xs, _E, L) ->
    L.

constant_function([E | Es], X, L) ->
    constant_function(Es, X, [{E, X} | L]);
constant_function([], _X, L) ->
    lists:reverse(L).

subset([H1 | T1], [H2 | T2]) when H1 > H2 ->
    subset(T1, T2, H1);
subset([H1 | T1], [H2 | T2]) when H1 == H2 ->
    subset(T1, T2);
subset(L1, _) ->
    L1 =:= [].

subset(T1, [H2 | T2], H1) when H1 > H2 ->
    subset(T1, T2, H1);
subset(T1, [H2 | T2], H1) when H1 == H2 ->
    subset(T1, T2);
subset(_, _, _) ->
    false.

disjoint([B | Bs], A, As) when A < B ->
    disjoint(As, B, Bs);
disjoint([B | _Bs], A, _As) when A == B ->
    false;
disjoint([_B | Bs], A, As) ->
    disjoint(Bs, A, As);
disjoint(_Bs, _A, _As) ->
    true.

lunion([[_] = S]) ->
    S;
lunion([[] | Ls]) ->
    lunion(Ls);
lunion([S | Ss]) ->
    lists:umerge(lunion(Ss, lists:last(S), [S], []));
lunion([]) ->
    [].

lunion([[E] = S | Ss], Last, SL, Ls) when E > Last ->
    lunion(Ss, E, [S | SL], Ls);
lunion([S | Ss], Last, SL, Ls) when hd(S) > Last ->
    lunion(Ss, lists:last(S), [S | SL], Ls);
lunion([S | Ss], _Last, SL, Ls) ->
    lunion(Ss,
           lists:last(S),
           [S],
           [lists:append(lists:reverse(SL)) | Ls]);
lunion([], _Last, SL, Ls) ->
    [lists:append(lists:reverse(SL)) | Ls].

lintersection(_, []) ->
    [];
lintersection([S | Ss], S0) ->
    lintersection(Ss, intersection(S, S0, []));
lintersection([], S) ->
    S.

can_rel([S | Ss], L) ->
    can_rel(Ss, L, S, S);
can_rel([], L) ->
    lists:sort(L).

can_rel(Ss, L, [E | Es], S) ->
    can_rel(Ss, [{E, S} | L], Es, S);
can_rel(Ss, L, _, _S) ->
    can_rel(Ss, L).

rel2family([{X, Y} | S]) ->
    rel2fam(S, X, [Y], []);
rel2family([]) ->
    [].

rel2fam([{X, Y} | S], X0, YL, L) when X0 == X ->
    rel2fam(S, X0, [Y | YL], L);
rel2fam([{X, Y} | S], X0, [A, B | YL], L) ->
    rel2fam(S, X, [Y], [{X0, lists:reverse(YL, [B, A])} | L]);
rel2fam([{X, Y} | S], X0, YL, L) ->
    rel2fam(S, X, [Y], [{X0, YL} | L]);
rel2fam([], X, YL, L) ->
    lists:reverse([{X, lists:reverse(YL)} | L]).

dom([{X, _} | Es]) ->
    dom([], X, Es);
dom([] = L) ->
    L.

dom(L, X, [{X1, _} | Es]) when X == X1 ->
    dom(L, X, Es);
dom(L, X, [{Y, _} | Es]) ->
    dom([X | L], Y, Es);
dom(L, X, []) ->
    lists:reverse(L, [X]).

ran([{_, Y} | Es], L) ->
    ran(Es, [Y | L]);
ran([], L) ->
    lists:usort(L).

relprod(A, B) ->
    lists:usort(relprod1(A, B)).

relprod1([{Ay, Ax} | A], B) ->
    relprod1(B, Ay, Ax, A, []);
relprod1(_A, _B) ->
    [].

relprod1([{Bx, _By} | B], Ay, Ax, A, L) when Ay > Bx ->
    relprod1(B, Ay, Ax, A, L);
relprod1([{Bx, By} | B], Ay, Ax, A, L) when Ay == Bx ->
    relprod(B, Bx, By, A, [{Ax, By} | L], Ax, B, Ay);
relprod1([{Bx, By} | B], _Ay, _Ax, A, L) ->
    relprod2(B, Bx, By, A, L);
relprod1(_B, _Ay, _Ax, _A, L) ->
    L.

relprod2(B, Bx, By, [{Ay, _Ax} | A], L) when Ay < Bx ->
    relprod2(B, Bx, By, A, L);
relprod2(B, Bx, By, [{Ay, Ax} | A], L) when Ay == Bx ->
    relprod(B, Bx, By, A, [{Ax, By} | L], Ax, B, Ay);
relprod2(B, _Bx, _By, [{Ay, Ax} | A], L) ->
    relprod1(B, Ay, Ax, A, L);
relprod2(_, _, _, _, L) ->
    L.

relprod(B0, Bx0, By0, A0, L, Ax, [{Bx, By} | B], Ay) when Ay == Bx ->
    relprod(B0, Bx0, By0, A0, [{Ax, By} | L], Ax, B, Ay);
relprod(B0, Bx0, By0, A0, L, _Ax, _B, _Ay) ->
    relprod2(B0, Bx0, By0, A0, L).

relprod_n([], _R, _EmptyG, _IsR) ->
    {error, badarg};
relprod_n(RL, R, EmptyR, IsR) ->
    case domain_type(RL, '_') of
        Error = {error, _Reason} ->
            Error;
        DType ->
            Empty = lists:any(fun is_empty_set/1, RL) or EmptyR,
            RType = range_type(RL, []),
            Type = {DType, RType},
            Prod =
                case Empty of
                    true when DType =:= '_'; RType =:= '_' ->
                        empty_set();
                    true ->
                        {'Set', [], Type};
                    false ->
                        TL =
                            case relprod_n(RL) of
                                {'Set', REC182, _} ->
                                    REC182;
                                REC182 ->
                                    error({badrecord, REC182})
                            end,
                        Sz = length(RL),
                        Fun =
                            fun({X, A}) ->
                                   {X, flat(Sz, A, [])}
                            end,
                        {'Set', lists:map(Fun, TL), Type}
                end,
            case IsR of
                true ->
                    relative_product(Prod, R);
                false ->
                    Prod
            end
    end.

relprod_n([R | Rs]) ->
    relprod_n(Rs, R).

relprod_n([], R) ->
    R;
relprod_n([R | Rs], R0) ->
    T = raise_element(R0, 1),
    R1 = relative_product1(T, R),
    NR =
        projection({external,
                    fun({{X, A}, AS}) ->
                           {X, {A, AS}}
                    end},
                   R1),
    relprod_n(Rs, NR).

flat(1, A, L) ->
    list_to_tuple([A | L]);
flat(N, {T, A}, L) ->
    flat(N - 1, T, [A | L]).

domain_type([{'Set', _, _} = T | Ts], T0) when true ->
    case
        case T of
            {'Set', _, REC183} ->
                REC183;
            REC183 ->
                error({badrecord, REC183})
        end
    of
        {DT, _RT} ->
            case unify_types(DT, T0) of
                [] ->
                    {error, type_mismatch};
                T1 ->
                    domain_type(Ts, T1)
            end;
        '_' ->
            domain_type(Ts, T0);
        _ ->
            {error, badarg}
    end;
domain_type([], T0) ->
    T0.

range_type([T | Ts], L) ->
    case
        case T of
            {'Set', _, REC184} ->
                REC184;
            REC184 ->
                error({badrecord, REC184})
        end
    of
        {_DT, RT} ->
            range_type(Ts, [RT | L]);
        '_' ->
            '_'
    end;
range_type([], L) ->
    list_to_tuple(lists:reverse(L)).

converse([{A, B} | X], L) ->
    converse(X, [{B, A} | L]);
converse([], L) ->
    lists:sort(L).

strict([{E1, E2} | Es], L) when E1 == E2 ->
    strict(Es, L);
strict([E | Es], L) ->
    strict(Es, [E | L]);
strict([], L) ->
    lists:reverse(L).

weak(Es) ->
    weak(Es, ran(Es, []), []).

weak(Es = [{X, _} | _], [Y | Ys], L) when X > Y ->
    weak(Es, Ys, [{Y, Y} | L]);
weak(Es = [{X, _} | _], [Y | Ys], L) when X == Y ->
    weak(Es, Ys, L);
weak([E = {X, Y} | Es], Ys, L) when X > Y ->
    weak1(Es, Ys, [E | L], X);
weak([E = {X, Y} | Es], Ys, L) when X == Y ->
    weak2(Es, Ys, [E | L], X);
weak([E = {X, _Y} | Es], Ys, L) ->
    weak2(Es, Ys, [E, {X, X} | L], X);
weak([], [Y | Ys], L) ->
    weak([], Ys, [{Y, Y} | L]);
weak([], [], L) ->
    lists:reverse(L).

weak1([E = {X, Y} | Es], Ys, L, X0) when X > Y, X == X0 ->
    weak1(Es, Ys, [E | L], X);
weak1([E = {X, Y} | Es], Ys, L, X0) when X == Y, X == X0 ->
    weak2(Es, Ys, [E | L], X);
weak1([E = {X, _Y} | Es], Ys, L, X0) when X == X0 ->
    weak2(Es, Ys, [E, {X, X} | L], X);
weak1(Es, Ys, L, X) ->
    weak(Es, Ys, [{X, X} | L]).

weak2([E = {X, _Y} | Es], Ys, L, X0) when X == X0 ->
    weak2(Es, Ys, [E | L], X);
weak2(Es, Ys, L, _X) ->
    weak(Es, Ys, L).

extc(L, [D | Ds], C, Ts) ->
    extc(L, Ds, C, Ts, D);
extc(L, [], _C, _Ts) ->
    L.

extc(L, Ds, C, [{X, _Y} | Ts], D) when X < D ->
    extc(L, Ds, C, Ts, D);
extc(L, Ds, C, [{X, _Y} | Ts], D) when X == D ->
    extc(L, Ds, C, Ts);
extc(L, Ds, C, [{X, _Y} | Ts], D) ->
    extc2([{D, C} | L], Ds, C, Ts, X);
extc(L, Ds, C, [], D) ->
    extc_tail([{D, C} | L], Ds, C).

extc2(L, [D | Ds], C, Ts, X) when X > D ->
    extc2([{D, C} | L], Ds, C, Ts, X);
extc2(L, [D | Ds], C, Ts, X) when X == D ->
    extc(L, Ds, C, Ts);
extc2(L, [D | Ds], C, Ts, _X) ->
    extc(L, Ds, C, Ts, D);
extc2(L, [], _C, _Ts, _X) ->
    L.

extc_tail(L, [D | Ds], C) ->
    extc_tail([{D, C} | L], Ds, C);
extc_tail(L, [], _C) ->
    L.

is_a_func([{E, _} | Es], E0) when E /= E0 ->
    is_a_func(Es, E);
is_a_func(L, _E) ->
    L =:= [].

restrict_n(I, [T | Ts], Key, Keys, L) ->
    case element(I, T) of
        K when K < Key ->
            restrict_n(I, Ts, Key, Keys, L);
        K when K == Key ->
            restrict_n(I, Ts, Key, Keys, [T | L]);
        K ->
            restrict_n(I, K, Ts, Keys, L, T)
    end;
restrict_n(_I, _Ts, _Key, _Keys, L) ->
    L.

restrict_n(I, K, Ts, [Key | Keys], L, E) when K > Key ->
    restrict_n(I, K, Ts, Keys, L, E);
restrict_n(I, K, Ts, [Key | Keys], L, E) when K == Key ->
    restrict_n(I, Ts, Key, Keys, [E | L]);
restrict_n(I, _K, Ts, [Key | Keys], L, _E) ->
    restrict_n(I, Ts, Key, Keys, L);
restrict_n(_I, _K, _Ts, _Keys, L, _E) ->
    L.

restrict([Key | Keys], Tuples) ->
    restrict(Tuples, Key, Keys, []);
restrict(_Keys, _Tuples) ->
    [].

restrict([{K, _E} | Ts], Key, Keys, L) when K < Key ->
    restrict(Ts, Key, Keys, L);
restrict([{K, E} | Ts], Key, Keys, L) when K == Key ->
    restrict(Ts, Key, Keys, [E | L]);
restrict([{K, E} | Ts], _Key, Keys, L) ->
    restrict(Ts, K, Keys, L, E);
restrict(_Ts, _Key, _Keys, L) ->
    L.

restrict(Ts, K, [Key | Keys], L, E) when K > Key ->
    restrict(Ts, K, Keys, L, E);
restrict(Ts, K, [Key | Keys], L, E) when K == Key ->
    restrict(Ts, Key, Keys, [E | L]);
restrict(Ts, _K, [Key | Keys], L, _E) ->
    restrict(Ts, Key, Keys, L);
restrict(_Ts, _K, _Keys, L, _E) ->
    L.

diff_restrict_n(I, [T | Ts], Key, Keys, L) ->
    case element(I, T) of
        K when K < Key ->
            diff_restrict_n(I, Ts, Key, Keys, [T | L]);
        K when K == Key ->
            diff_restrict_n(I, Ts, Key, Keys, L);
        K ->
            diff_restrict_n(I, K, Ts, Keys, L, T)
    end;
diff_restrict_n(I, _Ts, _Key, _Keys, L) when I =:= 1 ->
    lists:reverse(L);
diff_restrict_n(_I, _Ts, _Key, _Keys, L) ->
    lists:sort(L).

diff_restrict_n(I, K, Ts, [Key | Keys], L, T) when K > Key ->
    diff_restrict_n(I, K, Ts, Keys, L, T);
diff_restrict_n(I, K, Ts, [Key | Keys], L, _T) when K == Key ->
    diff_restrict_n(I, Ts, Key, Keys, L);
diff_restrict_n(I, _K, Ts, [Key | Keys], L, T) ->
    diff_restrict_n(I, Ts, Key, Keys, [T | L]);
diff_restrict_n(I, _K, Ts, _Keys, L, T) when I =:= 1 ->
    lists:reverse(L, [T | Ts]);
diff_restrict_n(_I, _K, Ts, _Keys, L, T) ->
    lists:sort([T | Ts ++ L]).

diff_restrict([Key | Keys], Tuples) ->
    diff_restrict(Tuples, Key, Keys, []);
diff_restrict(_Keys, Tuples) ->
    diff_restrict_tail(Tuples, []).

diff_restrict([{K, E} | Ts], Key, Keys, L) when K < Key ->
    diff_restrict(Ts, Key, Keys, [E | L]);
diff_restrict([{K, _E} | Ts], Key, Keys, L) when K == Key ->
    diff_restrict(Ts, Key, Keys, L);
diff_restrict([{K, E} | Ts], _Key, Keys, L) ->
    diff_restrict(Ts, K, Keys, L, E);
diff_restrict(_Ts, _Key, _Keys, L) ->
    L.

diff_restrict(Ts, K, [Key | Keys], L, E) when K > Key ->
    diff_restrict(Ts, K, Keys, L, E);
diff_restrict(Ts, K, [Key | Keys], L, _E) when K == Key ->
    diff_restrict(Ts, Key, Keys, L);
diff_restrict(Ts, _K, [Key | Keys], L, E) ->
    diff_restrict(Ts, Key, Keys, [E | L]);
diff_restrict(Ts, _K, _Keys, L, E) ->
    diff_restrict_tail(Ts, [E | L]).

diff_restrict_tail([{_K, E} | Ts], L) ->
    diff_restrict_tail(Ts, [E | L]);
diff_restrict_tail(_Ts, L) ->
    L.

comp([], B) ->
    check_function(B, []);
comp(_A, []) ->
    bad_function;
comp(A0, [{Bx, By} | B]) ->
    A = converse(A0, []),
    check_function(A0, comp1(A, B, [], Bx, By)).

comp1([{Ay, Ax} | A], B, L, Bx, By) when Ay == Bx ->
    comp1(A, B, [{Ax, By} | L], Bx, By);
comp1([{Ay, Ax} | A], B, L, Bx, _By) when Ay > Bx ->
    comp2(A, B, L, Bx, Ay, Ax);
comp1([{Ay, _Ax} | _A], _B, _L, Bx, _By) when Ay < Bx ->
    bad_function;
comp1([], B, L, Bx, _By) ->
    check_function(Bx, B, L).

comp2(A, [{Bx, _By} | B], L, Bx0, Ay, Ax) when Ay > Bx, Bx /= Bx0 ->
    comp2(A, B, L, Bx, Ay, Ax);
comp2(A, [{Bx, By} | B], L, _Bx0, Ay, Ax) when Ay == Bx ->
    comp1(A, B, [{Ax, By} | L], Bx, By);
comp2(_A, _B, _L, _Bx0, _Ay, _Ax) ->
    bad_function.

inverse1([{A, B} | X]) ->
    inverse(X, A, [{B, A}]);
inverse1([]) ->
    [].

inverse([{A, B} | X], A0, L) when A0 /= A ->
    inverse(X, A, [{B, A} | L]);
inverse([{A, _B} | _X], A0, _L) when A0 == A ->
    bad_function;
inverse([], _A0, L) ->
    SL = [{V, _} | Es] = lists:sort(L),
    case is_a_func(Es, V) of
        true ->
            SL;
        false ->
            bad_function
    end.

external_fun({external, Function}) when is_atom(Function) ->
    false;
external_fun({external, Fun}) ->
    Fun;
external_fun(_) ->
    false.

element_type([Type]) ->
    Type;
element_type(Type) ->
    Type.

subst(Ts, Fun, Type) ->
    subst(Ts, Fun, Type, '_', []).

subst([T | Ts], Fun, Type, NType, L) ->
    case setfun(T, Fun, Type, NType) of
        {SD, ST} ->
            subst(Ts, Fun, Type, ST, [{T, SD} | L]);
        Bad ->
            Bad
    end;
subst([], _Fun, _Type, NType, L) ->
    {L, NType}.

projection1([E | Es]) ->
    projection1([], element(1, E), Es);
projection1([] = L) ->
    L.

projection1(L, X, [E | Es]) ->
    case element(1, E) of
        X1 when X == X1 ->
            projection1(L, X, Es);
        X1 ->
            projection1([X | L], X1, Es)
    end;
projection1(L, X, []) ->
    lists:reverse(L, [X]).

projection_n([E | Es], I, L) ->
    projection_n(Es, I, [element(I, E) | L]);
projection_n([], _I, L) ->
    lists:usort(L).

substitute_element([T | Ts], I, L) ->
    substitute_element(Ts, I, [{T, element(I, T)} | L]);
substitute_element(_, _I, L) ->
    lists:reverse(L).

substitute([T | Ts], Fun, L) ->
    substitute(Ts, Fun, [{T, Fun(T)} | L]);
substitute(_, _Fun, L) ->
    lists:reverse(L).

partition_n(I, [E | Ts]) ->
    partition_n(I, Ts, element(I, E), [E], []);
partition_n(_I, []) ->
    [].

partition_n(I, [E | Ts], K, Es, P) ->
    case {element(I, E), Es} of
        {K1, _} when K == K1 ->
            partition_n(I, Ts, K, [E | Es], P);
        {K1, [_]} ->
            partition_n(I, Ts, K1, [E], [Es | P]);
        {K1, _} ->
            partition_n(I, Ts, K1, [E], [lists:reverse(Es) | P])
    end;
partition_n(I, [], _K, Es, P) when I > 1 ->
    lists:sort([lists:reverse(Es) | P]);
partition_n(_I, [], _K, [_] = Es, P) ->
    lists:reverse(P, [Es]);
partition_n(_I, [], _K, Es, P) ->
    lists:reverse(P, [lists:reverse(Es)]).

partition3_n(I, [T | Ts], Key, Keys, L1, L2) ->
    case element(I, T) of
        K when K < Key ->
            partition3_n(I, Ts, Key, Keys, L1, [T | L2]);
        K when K == Key ->
            partition3_n(I, Ts, Key, Keys, [T | L1], L2);
        K ->
            partition3_n(I, K, Ts, Keys, L1, L2, T)
    end;
partition3_n(I, _Ts, _Key, _Keys, L1, L2) when I =:= 1 ->
    [lists:reverse(L1) | lists:reverse(L2)];
partition3_n(_I, _Ts, _Key, _Keys, L1, L2) ->
    [lists:sort(L1) | lists:sort(L2)].

partition3_n(I, K, Ts, [Key | Keys], L1, L2, T) when K > Key ->
    partition3_n(I, K, Ts, Keys, L1, L2, T);
partition3_n(I, K, Ts, [Key | Keys], L1, L2, T) when K == Key ->
    partition3_n(I, Ts, Key, Keys, [T | L1], L2);
partition3_n(I, _K, Ts, [Key | Keys], L1, L2, T) ->
    partition3_n(I, Ts, Key, Keys, L1, [T | L2]);
partition3_n(I, _K, Ts, _Keys, L1, L2, T) when I =:= 1 ->
    [lists:reverse(L1) | lists:reverse(L2, [T | Ts])];
partition3_n(_I, _K, Ts, _Keys, L1, L2, T) ->
    [lists:sort(L1) | lists:sort([T | Ts ++ L2])].

partition3([Key | Keys], Tuples) ->
    partition3(Tuples, Key, Keys, [], []);
partition3(_Keys, Tuples) ->
    partition3_tail(Tuples, [], []).

partition3([{K, E} | Ts], Key, Keys, L1, L2) when K < Key ->
    partition3(Ts, Key, Keys, L1, [E | L2]);
partition3([{K, E} | Ts], Key, Keys, L1, L2) when K == Key ->
    partition3(Ts, Key, Keys, [E | L1], L2);
partition3([{K, E} | Ts], _Key, Keys, L1, L2) ->
    partition3(Ts, K, Keys, L1, L2, E);
partition3(_Ts, _Key, _Keys, L1, L2) ->
    [L1 | L2].

partition3(Ts, K, [Key | Keys], L1, L2, E) when K > Key ->
    partition3(Ts, K, Keys, L1, L2, E);
partition3(Ts, K, [Key | Keys], L1, L2, E) when K == Key ->
    partition3(Ts, Key, Keys, [E | L1], L2);
partition3(Ts, _K, [Key | Keys], L1, L2, E) ->
    partition3(Ts, Key, Keys, L1, [E | L2]);
partition3(Ts, _K, _Keys, L1, L2, E) ->
    partition3_tail(Ts, L1, [E | L2]).

partition3_tail([{_K, E} | Ts], L1, L2) ->
    partition3_tail(Ts, L1, [E | L2]);
partition3_tail(_Ts, L1, L2) ->
    [L1 | L2].

replace([E | Es], F, L) ->
    replace(Es, F, [F(E) | L]);
replace(_, _F, L) ->
    lists:sort(L).

mul_relprod([{'Set', _, _} = T | Ts], I, R) when true ->
    P = raise_element(R, I),
    F = relative_product1(P, T),
    [F | mul_relprod(Ts, I + 1, R)];
mul_relprod([], _I, _R) ->
    [].

raise_element(R, I) ->
    L = sort(I =/= 1,
             rearr(case R of
                       {'Set', REC185, _} ->
                           REC185;
                       REC185 ->
                           error({badrecord, REC185})
                   end,
                   I, [])),
    Type =
        case R of
            {'Set', _, REC186} ->
                REC186;
            REC186 ->
                error({badrecord, REC186})
        end,
    {'Set', L, {element(I, Type), Type}}.

rearr([E | Es], I, L) ->
    rearr(Es, I, [{element(I, E), E} | L]);
rearr([], _I, L) ->
    L.

join_element(E1, E2) ->
    [_ | L2] = tuple_to_list(E2),
    list_to_tuple(tuple_to_list(E1) ++ L2).

join_element(E1, E2, I2) ->
    tuple_to_list(E1) ++ join_element2(tuple_to_list(E2), 1, I2).

join_element2([B | Bs], C, I2) when C =/= I2 ->
    [B | join_element2(Bs, C + 1, I2)];
join_element2([_ | Bs], _C, _I2) ->
    Bs.

family2rel([{X, S} | F], L) ->
    fam2rel(F, L, X, S);
family2rel([], L) ->
    lists:reverse(L).

fam2rel(F, L, X, [Y | Ys]) ->
    fam2rel(F, [{X, Y} | L], X, Ys);
fam2rel(F, L, _X, _) ->
    family2rel(F, L).

fam_spec([{_, S} = E | F], Fun, Type, L) ->
    case Fun({'Set', S, Type}) of
        true ->
            fam_spec(F, Fun, Type, [E | L]);
        false ->
            fam_spec(F, Fun, Type, L);
        _ ->
            badarg
    end;
fam_spec([], _Fun, _Type, L) ->
    lists:reverse(L).

fam_specification([{_, S} = E | F], Fun, L) ->
    case Fun(S) of
        true ->
            fam_specification(F, Fun, [E | L]);
        false ->
            fam_specification(F, Fun, L);
        _ ->
            badarg
    end;
fam_specification([], _Fun, L) ->
    lists:reverse(L).

un_of_fam([{_X, S} | F], L) ->
    un_of_fam(F, [S | L]);
un_of_fam([], L) ->
    lunion(lists:sort(L)).

int_of_fam([{_, S} | F]) ->
    int_of_fam(F, [S]);
int_of_fam([]) ->
    badarg.

int_of_fam([{_, S} | F], L) ->
    int_of_fam(F, [S | L]);
int_of_fam([], [L | Ls]) ->
    lintersection(Ls, L).

fam_un([{X, S} | F], L) ->
    fam_un(F, [{X, lunion(S)} | L]);
fam_un([], L) ->
    lists:reverse(L).

fam_int([{X, [S | Ss]} | F], L) ->
    fam_int(F, [{X, lintersection(Ss, S)} | L]);
fam_int([{_X, []} | _F], _L) ->
    badarg;
fam_int([], L) ->
    lists:reverse(L).

fam_dom([{X, S} | F], L) ->
    fam_dom(F, [{X, dom(S)} | L]);
fam_dom([], L) ->
    lists:reverse(L).

fam_ran([{X, S} | F], L) ->
    fam_ran(F, [{X, ran(S, [])} | L]);
fam_ran([], L) ->
    lists:reverse(L).

fam_union(F1 = [{A, _AS} | _AL], [B1 = {B, _BS} | BL], L) when A > B ->
    fam_union(F1, BL, [B1 | L]);
fam_union([{A, AS} | AL], [{B, BS} | BL], L) when A == B ->
    fam_union(AL, BL, [{A, lists:umerge(AS, BS)} | L]);
fam_union([A1 | AL], F2, L) ->
    fam_union(AL, F2, [A1 | L]);
fam_union(_, F2, L) ->
    lists:reverse(L, F2).

fam_intersect(F1 = [{A, _AS} | _AL], [{B, _BS} | BL], L) when A > B ->
    fam_intersect(F1, BL, L);
fam_intersect([{A, AS} | AL], [{B, BS} | BL], L) when A == B ->
    fam_intersect(AL, BL, [{A, intersection(AS, BS, [])} | L]);
fam_intersect([_A1 | AL], F2, L) ->
    fam_intersect(AL, F2, L);
fam_intersect(_, _, L) ->
    lists:reverse(L).

fam_difference(F1 = [{A, _AS} | _AL], [{B, _BS} | BL], L) when A > B ->
    fam_difference(F1, BL, L);
fam_difference([{A, AS} | AL], [{B, BS} | BL], L) when A == B ->
    fam_difference(AL, BL, [{A, difference(AS, BS, [])} | L]);
fam_difference([A1 | AL], F2, L) ->
    fam_difference(AL, F2, [A1 | L]);
fam_difference(F1, _, L) ->
    lists:reverse(L, F1).

check_function([{X, _} | XL], R) ->
    check_function(X, XL, R);
check_function([], R) ->
    R.

check_function(X0, [{X, _} | XL], R) when X0 /= X ->
    check_function(X, XL, R);
check_function(X0, [{X, _} | _XL], _R) when X0 == X ->
    bad_function;
check_function(_X0, [], R) ->
    R.

fam_partition_n(I, [E | Ts]) ->
    fam_partition_n(I, Ts, element(I, E), [E], []);
fam_partition_n(_I, []) ->
    [].

fam_partition_n(I, [E | Ts], K, Es, P) ->
    case {element(I, E), Es} of
        {K1, _} when K == K1 ->
            fam_partition_n(I, Ts, K, [E | Es], P);
        {K1, [_]} ->
            fam_partition_n(I, Ts, K1, [E], [{K, Es} | P]);
        {K1, _} ->
            fam_partition_n(I, Ts, K1,
                            [E],
                            [{K, lists:reverse(Es)} | P])
    end;
fam_partition_n(_I, [], K, [_] = Es, P) ->
    lists:reverse(P, [{K, Es}]);
fam_partition_n(_I, [], K, Es, P) ->
    lists:reverse(P, [{K, lists:reverse(Es)}]).

fam_partition([{K, Vs} | Ts], Sort) ->
    fam_partition(Ts, K, [Vs], [], Sort);
fam_partition([], _Sort) ->
    [].

fam_partition([{K1, V} | Ts], K, Vs, P, S) when K1 == K ->
    fam_partition(Ts, K, [V | Vs], P, S);
fam_partition([{K1, V} | Ts], K, [_] = Vs, P, S) ->
    fam_partition(Ts, K1, [V], [{K, Vs} | P], S);
fam_partition([{K1, V} | Ts], K, Vs, P, S) ->
    fam_partition(Ts, K1, [V], [{K, sort(S, Vs)} | P], S);
fam_partition([], K, [_] = Vs, P, _S) ->
    [{K, Vs} | P];
fam_partition([], K, Vs, P, S) ->
    [{K, sort(S, Vs)} | P].

fam_proj([{X, S} | F], Fun, Type, NType, L) ->
    case setfun(S, Fun, Type, NType) of
        {SD, ST} ->
            fam_proj(F, Fun, Type, ST, [{X, SD} | L]);
        Bad ->
            Bad
    end;
fam_proj([], _Fun, _Type, NType, L) ->
    {lists:reverse(L), NType}.

setfun(T, Fun, Type, NType) ->
    case Fun(term2set(T, Type)) of
        {'Set', _, _} = NS when true ->
            case
                unify_types(NType,
                            [case NS of
                                 {'Set', _, REC187} ->
                                     REC187;
                                 REC187 ->
                                     error({badrecord, REC187})
                             end])
            of
                [] ->
                    type_mismatch;
                NT ->
                    {case NS of
                         {'Set', REC188, _} ->
                             REC188;
                         REC188 ->
                             error({badrecord, REC188})
                     end,
                     NT}
            end;
        {'OrdSet', _, _} = NS when true ->
            case
                unify_types(NType,
                            NT =
                                case NS of
                                    {'OrdSet', _, REC189} ->
                                        REC189;
                                    REC189 ->
                                        error({badrecord, REC189})
                                end)
            of
                [] ->
                    type_mismatch;
                NT ->
                    {case NS of
                         {'OrdSet', REC190, _} ->
                             REC190;
                         REC190 ->
                             error({badrecord, REC190})
                     end,
                     NT}
            end;
        _ ->
            badarg
    end.

term2set(L, Type) when is_list(L) ->
    {'Set', L, Type};
term2set(T, Type) ->
    {'OrdSet', T, Type}.

fam2digraph(F, G) ->
    Fun =
        fun({From, ToL}) ->
               digraph:add_vertex(G, From),
               Fun2 =
                   fun(To) ->
                          digraph:add_vertex(G, To),
                          case digraph:add_edge(G, From, To) of
                              {error, {bad_edge, _}} ->
                                  throw({error, cyclic});
                              _ ->
                                  true
                          end
                   end,
               lists:foreach(Fun2, ToL)
        end,
    lists:foreach(Fun, to_external(F)),
    G.

digraph_family(G) ->
    Vs = lists:sort(digraph:vertices(G)),
    digraph_fam(Vs, Vs, G, []).

digraph_fam([V | Vs], V0, G, L) when V /= V0 ->
    Ns = lists:sort(digraph:out_neighbours(G, V)),
    digraph_fam(Vs, V, G, [{V, Ns} | L]);
digraph_fam([], _V0, _G, L) ->
    lists:reverse(L).

check_fun(T, F, FunT) ->
    true = is_type(FunT),
    {NT, _MaxI} = number_tuples(T, 1),
    L = lists:flatten(tuple2list(F(NT))),
    has_hole(L, 1).

number_tuples(T, N) when is_tuple(T) ->
    {L, NN} = lists:mapfoldl(fun number_tuples/2, N, tuple_to_list(T)),
    {list_to_tuple(L), NN};
number_tuples(_, N) ->
    {N, N + 1}.

tuple2list(T) when is_tuple(T) ->
    lists:map(fun tuple2list/1, tuple_to_list(T));
tuple2list(C) ->
    [C].

has_hole([I | Is], I0) when I =< I0 ->
    has_hole(Is, max(I + 1, I0));
has_hole(Is, _I) ->
    Is =/= [].

check_for_sort(T, _I) when T =:= '_' ->
    empty;
check_for_sort(T, I) when is_tuple(T), I =< tuple_size(T), I >= 1 ->
    I > 1;
check_for_sort(_T, _I) ->
    error.

inverse_substitution(L, Fun, Sort) ->
    sort(Sort, fun_rearr(L, Fun, [])).

fun_rearr([E | Es], Fun, L) ->
    fun_rearr(Es, Fun, [{Fun(E), E} | L]);
fun_rearr([], _Fun, L) ->
    L.

sets_to_list(Ss) ->
    lists:map(fun({'Set', _, _} = S) when true ->
                     case S of
                         {'Set', REC191, _} ->
                             REC191;
                         REC191 ->
                             error({badrecord, REC191})
                     end
              end,
              Ss).

types([], L) ->
    list_to_tuple(lists:reverse(L));
types([{'Set', _, _} = S | _Ss], _L)
    when
        (true
         orelse
         fail)
        and
        (element(3, S) =:= '_') ->
    '_';
types([S | Ss], L) ->
    types(Ss,
          [case S of
               {'Set', _, REC192} ->
                   REC192;
               REC192 ->
                   error({badrecord, REC192})
           end |
           L]).

unify_types(T, T) ->
    T;
unify_types(Type1, Type2) ->
    catch unify_types1(Type1, Type2).

unify_types1(Atom, Atom) when is_atom(Atom) ->
    Atom;
unify_types1('_', Type) ->
    Type;
unify_types1(Type, '_') ->
    Type;
unify_types1([Type1], [Type2]) ->
    [unify_types1(Type1, Type2)];
unify_types1(T1, T2) when tuple_size(T1) =:= tuple_size(T2) ->
    unify_typesl(tuple_size(T1), T1, T2, []);
unify_types1(_T1, _T2) ->
    throw([]).

unify_typesl(0, _T1, _T2, L) ->
    list_to_tuple(L);
unify_typesl(N, T1, T2, L) ->
    T = unify_types1(element(N, T1), element(N, T2)),
    unify_typesl(N - 1, T1, T2, [T | L]).

match_types(T, T) ->
    true;
match_types(Type1, Type2) ->
    match_types1(Type1, Type2).

match_types1(Atom, Atom) when is_atom(Atom) ->
    true;
match_types1('_', _) ->
    true;
match_types1(_, '_') ->
    true;
match_types1([Type1], [Type2]) ->
    match_types1(Type1, Type2);
match_types1(T1, T2) when tuple_size(T1) =:= tuple_size(T2) ->
    match_typesl(tuple_size(T1), T1, T2);
match_types1(_T1, _T2) ->
    false.

match_typesl(0, _T1, _T2) ->
    true;
match_typesl(N, T1, T2) ->
    case match_types1(element(N, T1), element(N, T2)) of
        true ->
            match_typesl(N - 1, T1, T2);
        false ->
            false
    end.

sort(true, L) ->
    lists:sort(L);
sort(false, L) ->
    lists:reverse(L).



