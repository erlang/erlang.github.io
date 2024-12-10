-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.1.2/src/array.erl", 1).

-module(array).

-export([new/0,
         new/1,
         new/2,
         is_array/1,
         set/3,
         get/2,
         size/1,
         sparse_size/1,
         default/1,
         reset/2,
         to_list/1,
         sparse_to_list/1,
         from_list/1,
         from_list/2,
         to_orddict/1,
         sparse_to_orddict/1,
         from_orddict/1,
         from_orddict/2,
         map/2,
         sparse_map/2,
         foldl/3,
         foldr/3,
         sparse_foldl/3,
         sparse_foldr/3,
         fix/1,
         relax/1,
         is_fix/1,
         resize/1,
         resize/2]).

-export_type([array/0,array/1]).

-type element_tuple(T) ::
          {T, T, T, T, T, T, T, T, T, T} |
          {element_tuple(T),
           element_tuple(T),
           element_tuple(T),
           element_tuple(T),
           element_tuple(T),
           element_tuple(T),
           element_tuple(T),
           element_tuple(T),
           element_tuple(T),
           element_tuple(T),
           non_neg_integer()}.

-type elements(T) :: non_neg_integer() | element_tuple(T) | [].

-record(array,{size :: non_neg_integer(),
               max :: non_neg_integer(),
               default,
               elements :: elements(_)}).

-type array() :: array(term()).

-opaque array(Type) ::
            #array{default :: Type, elements :: elements(Type)}.

-type array_indx() :: non_neg_integer().

-type array_opt() ::
          {fixed, boolean()} |
          fixed |
          {default, Type :: term()} |
          {size, N :: non_neg_integer()} |
          (N :: non_neg_integer()).

-type array_opts() :: array_opt() | [array_opt()].

-type indx_pair(Type) :: {Index :: array_indx(), Type}.

-type indx_pairs(Type) :: [indx_pair(Type)].

-spec new() -> array().

new() ->
    new([]).

-spec new(Options :: array_opts()) -> array().

new(Options) ->
    new_0(Options, 0, false).

-spec new(Size :: non_neg_integer(), Options :: array_opts()) -> array().

new(Size, Options) when is_integer(Size), Size >= 0 ->
    new_0(Options, Size, true);
new(_, _) ->
    error(badarg).

new_0(Options, Size, Fixed) when is_list(Options) ->
    new_1(Options, Size, Fixed, undefined);
new_0(Options, Size, Fixed) ->
    new_1([Options], Size, Fixed, undefined).

new_1([fixed | Options], Size, _, Default) ->
    new_1(Options, Size, true, Default);
new_1([{fixed, Fixed} | Options], Size, _, Default)
    when is_boolean(Fixed) ->
    new_1(Options, Size, Fixed, Default);
new_1([{default, Default} | Options], Size, Fixed, _) ->
    new_1(Options, Size, Fixed, Default);
new_1([{size, Size} | Options], _, _, Default)
    when is_integer(Size), Size >= 0 ->
    new_1(Options, Size, true, Default);
new_1([Size | Options], _, _, Default) when is_integer(Size), Size >= 0 ->
    new_1(Options, Size, true, Default);
new_1([], Size, Fixed, Default) ->
    new(Size, Fixed, Default);
new_1(_Options, _Size, _Fixed, _Default) ->
    error(badarg).

new(0, false, undefined) ->
    {array, 0, 10, undefined, 10};
new(Size, Fixed, Default) ->
    E = find_max(Size - 1, 10),
    M = if
            Fixed ->
                0;
            true ->
                E
        end,
    {array, Size, M, Default, E}.

-spec find_max(integer(), non_neg_integer()) -> non_neg_integer().

find_max(I, M) when I >= M ->
    find_max(I, M * 10);
find_max(_I, M) ->
    M.

-spec is_array(X :: term()) -> boolean().

is_array({array, Size, Max, _, _})
    when is_integer(Size), is_integer(Max) ->
    true;
is_array(_) ->
    false.

-spec size(Array :: array()) -> non_neg_integer().

size({array, N, _, _, _}) ->
    N;
size(_) ->
    error(badarg).

-spec default(Array :: array(Type)) -> Value :: Type.

default({array, _, _, D, _}) ->
    D;
default(_) ->
    error(badarg).

-spec fix(Array :: array(Type)) -> array(Type).

fix({array, _, _, _, _} = A) ->
    begin
        REC0 = A,
        case REC0 of
            {array, _, _, _, _} ->
                setelement(3, REC0, 0);
            _ ->
                error({badrecord, REC0})
        end
    end.

-spec is_fix(Array :: array()) -> boolean().

is_fix({array, _, 0, _, _}) ->
    true;
is_fix({array, _, _, _, _}) ->
    false.

-spec relax(Array :: array(Type)) -> array(Type).

relax({array, N, _, _, _} = A) when is_integer(N), N >= 0 ->
    begin
        REC1 = find_max(N - 1, 10),
        REC2 = A,
        case REC2 of
            {array, _, _, _, _} ->
                setelement(3, REC2, REC1);
            _ ->
                error({badrecord, REC2})
        end
    end.

-spec resize(Size :: non_neg_integer(), Array :: array(Type)) ->
                array(Type).

resize(Size, {array, N, M, _, E} = A)
    when
        is_integer(Size),
        Size >= 0,
        is_integer(N),
        N >= 0,
        is_integer(M),
        M >= 0 ->
    if
        Size > N ->
            {E1, M1} =
                grow(Size - 1,
                     E,
                     if
                         M > 0 ->
                             M;
                         true ->
                             find_max(N - 1, 10)
                     end),
            begin
                REC3 =
                    if
                        M > 0 ->
                            M1;
                        true ->
                            M
                    end,
                REC4 = A,
                case REC4 of
                    {array, _, _, _, _} ->
                        setelement(2,
                                   setelement(3,
                                              setelement(5, REC4, E1),
                                              REC3),
                                   Size);
                    _ ->
                        error({badrecord, REC4})
                end
            end;
        Size < N ->
            begin
                REC5 = A,
                case REC5 of
                    {array, _, _, _, _} ->
                        setelement(2, REC5, Size);
                    _ ->
                        error({badrecord, REC5})
                end
            end;
        true ->
            A
    end;
resize(_Size, _) ->
    error(badarg).

-spec resize(Array :: array(Type)) -> array(Type).

resize(Array) ->
    resize(sparse_size(Array), Array).

-spec set(I :: array_indx(), Value :: Type, Array :: array(Type)) ->
             array(Type).

set(I, Value, {array, N, M, D, E} = A)
    when is_integer(I), I >= 0, is_integer(N), is_integer(M) ->
    if
        I < N ->
            begin
                REC6 = set_1(I, E, Value, D),
                REC7 = A,
                case REC7 of
                    {array, _, _, _, _} ->
                        setelement(5, REC7, REC6);
                    _ ->
                        error({badrecord, REC7})
                end
            end;
        I < M ->
            begin
                REC8 = I + 1,
                REC9 = set_1(I, E, Value, D),
                REC10 = A,
                case REC10 of
                    {array, _, _, _, _} ->
                        setelement(2, setelement(5, REC10, REC9), REC8);
                    _ ->
                        error({badrecord, REC10})
                end
            end;
        M > 0 ->
            {E1, M1} = grow(I, E, M),
            begin
                REC11 = I + 1,
                REC12 = set_1(I, E1, Value, D),
                REC13 = A,
                case REC13 of
                    {array, _, _, _, _} ->
                        setelement(2,
                                   setelement(3,
                                              setelement(5, REC13,
                                                         REC12),
                                              M1),
                                   REC11);
                    _ ->
                        error({badrecord, REC13})
                end
            end;
        true ->
            error(badarg)
    end;
set(_I, _V, _A) ->
    error(badarg).

set_1(I, E = {_, _, _, _, _, _, _, _, _, _, S}, X, D) ->
    I1 = I div S + 1,
    setelement(I1, E, set_1(I rem S, element(I1, E), X, D));
set_1(I, E, X, D) when is_integer(E) ->
    expand(I, E, X, D);
set_1(I, E, X, _D) ->
    setelement(I + 1, E, X).

grow(I, E, _M) when is_integer(I), is_integer(E) ->
    M1 = find_max(I, E),
    {M1, M1};
grow(I, E, M) ->
    grow_1(I, E, M).

grow_1(I, E, M) when I >= M ->
    grow_1(I, setelement(1, erlang:make_tuple(10 + 1, M), E), M * 10);
grow_1(_I, E, M) ->
    {E, M}.

expand(I, S, X, D) when S > 10 ->
    S1 = S div 10,
    setelement(I div S1 + 1,
               erlang:make_tuple(10 + 1, S1),
               expand(I rem S1, S1, X, D));
expand(I, _S, X, D) ->
    setelement(I + 1, erlang:make_tuple(10, D), X).

-spec get(I :: array_indx(), Array :: array(Type)) -> Value :: Type.

get(I, {array, N, M, D, E})
    when is_integer(I), I >= 0, is_integer(N), is_integer(M) ->
    if
        I < N ->
            get_1(I, E, D);
        M > 0 ->
            D;
        true ->
            error(badarg)
    end;
get(_I, _A) ->
    error(badarg).

get_1(I, E = {_, _, _, _, _, _, _, _, _, _, S}, D) ->
    get_1(I rem S, element(I div S + 1, E), D);
get_1(_I, E, D) when is_integer(E) ->
    D;
get_1(I, E, _D) ->
    element(I + 1, E).

-spec reset(I :: array_indx(), Array :: array(Type)) -> array(Type).

reset(I, {array, N, M, D, E} = A)
    when is_integer(I), I >= 0, is_integer(N), is_integer(M) ->
    if
        I < N ->
            try
                begin
                    REC14 = reset_1(I, E, D),
                    REC15 = A,
                    case REC15 of
                        {array, _, _, _, _} ->
                            setelement(5, REC15, REC14);
                        _ ->
                            error({badrecord, REC15})
                    end
                end
            catch
                throw:default ->
                    A
            end;
        M > 0 ->
            A;
        true ->
            error(badarg)
    end;
reset(_I, _A) ->
    error(badarg).

reset_1(I, E = {_, _, _, _, _, _, _, _, _, _, S}, D) ->
    I1 = I div S + 1,
    setelement(I1, E, reset_1(I rem S, element(I1, E), D));
reset_1(_I, E, _D) when is_integer(E) ->
    throw(default);
reset_1(I, E, D) ->
    Indx = I + 1,
    case element(Indx, E) of
        D ->
            throw(default);
        _ ->
            setelement(I + 1, E, D)
    end.

-spec to_list(Array :: array(Type)) -> [Value :: Type].

to_list({array, 0, _, _, _}) ->
    [];
to_list({array, N, _, D, E}) when is_integer(N) ->
    to_list_1(E, D, N - 1);
to_list(_) ->
    error(badarg).

to_list_1(E = {_, _, _, _, _, _, _, _, _, _, S}, D, I) ->
    N = I div S,
    to_list_3(N, D, to_list_1(element(N + 1, E), D, I rem S), E);
to_list_1(E, D, I) when is_integer(E) ->
    push(I + 1, D, []);
to_list_1(E, _D, I) ->
    push_tuple(I + 1, E, []).

to_list_2(E = {_, _, _, _, _, _, _, _, _, _, _S}, D, L) ->
    to_list_3(10, D, L, E);
to_list_2(E, D, L) when is_integer(E) ->
    push(E, D, L);
to_list_2(E, _D, L) ->
    push_tuple(10, E, L).

to_list_3(0, _D, L, _E) ->
    L;
to_list_3(N, D, L, E) ->
    to_list_3(N - 1, D, to_list_2(element(N, E), D, L), E).

push(0, _E, L) ->
    L;
push(N, E, L) ->
    push(N - 1, E, [E | L]).

push_tuple(0, _T, L) ->
    L;
push_tuple(N, T, L) ->
    push_tuple(N - 1, T, [element(N, T) | L]).

-spec sparse_to_list(Array :: array(Type)) -> [Value :: Type].

sparse_to_list({array, 0, _, _, _}) ->
    [];
sparse_to_list({array, N, _, D, E}) when is_integer(N) ->
    sparse_to_list_1(E, D, N - 1);
sparse_to_list(_) ->
    error(badarg).

sparse_to_list_1(E = {_, _, _, _, _, _, _, _, _, _, S}, D, I) ->
    N = I div S,
    sparse_to_list_3(N, D,
                     sparse_to_list_1(element(N + 1, E), D, I rem S),
                     E);
sparse_to_list_1(E, _D, _I) when is_integer(E) ->
    [];
sparse_to_list_1(E, D, I) ->
    sparse_push_tuple(I + 1, D, E, []).

sparse_to_list_2(E = {_, _, _, _, _, _, _, _, _, _, _S}, D, L) ->
    sparse_to_list_3(10, D, L, E);
sparse_to_list_2(E, _D, L) when is_integer(E) ->
    L;
sparse_to_list_2(E, D, L) ->
    sparse_push_tuple(10, D, E, L).

sparse_to_list_3(0, _D, L, _E) ->
    L;
sparse_to_list_3(N, D, L, E) ->
    sparse_to_list_3(N - 1, D, sparse_to_list_2(element(N, E), D, L), E).

sparse_push_tuple(0, _D, _T, L) ->
    L;
sparse_push_tuple(N, D, T, L) ->
    case element(N, T) of
        D ->
            sparse_push_tuple(N - 1, D, T, L);
        E ->
            sparse_push_tuple(N - 1, D, T, [E | L])
    end.

-spec from_list(List :: [Value :: Type]) -> array(Type).

from_list(List) ->
    from_list(List, undefined).

-spec from_list(List :: [Value :: Type], Default :: term()) ->
                   array(Type).

from_list([], Default) ->
    new({default, Default});
from_list(List, Default) when is_list(List) ->
    {E, N, M} = from_list_1(10, List, Default, 0, [], []),
    {array, N, M, Default, E};
from_list(_, _) ->
    error(badarg).

from_list_1(0, Xs, D, N, As, Es) ->
    E = list_to_tuple(lists:reverse(As)),
    case Xs of
        [] ->
            case Es of
                [] ->
                    {E, N, 10};
                _ ->
                    from_list_2_0(N, [E | Es], 10)
            end;
        [_ | _] ->
            from_list_1(10, Xs, D, N, [], [E | Es]);
        _ ->
            error(badarg)
    end;
from_list_1(I, Xs, D, N, As, Es) ->
    case Xs of
        [X | Xs1] ->
            from_list_1(I - 1, Xs1, D, N + 1, [X | As], Es);
        _ ->
            from_list_1(I - 1, Xs, D, N, [D | As], Es)
    end.

from_list_2_0(N, Es, S) ->
    from_list_2(10, pad((N - 1) div S + 1, 10, S, Es), S, N, [S], []).

from_list_2(0, Xs, S, N, As, Es) ->
    E = list_to_tuple(As),
    case Xs of
        [] ->
            case Es of
                [] ->
                    {E, N, S * 10};
                _ ->
                    from_list_2_0(N, lists:reverse([E | Es]), S * 10)
            end;
        _ ->
            from_list_2(10, Xs, S, N, [S], [E | Es])
    end;
from_list_2(I, [X | Xs], S, N, As, Es) ->
    from_list_2(I - 1, Xs, S, N, [X | As], Es).

pad(N, K, P, Es) ->
    push((K - N rem K) rem K, P, Es).

-spec to_orddict(Array :: array(Type)) -> indx_pairs(Value :: Type).

to_orddict({array, 0, _, _, _}) ->
    [];
to_orddict({array, N, _, D, E}) when is_integer(N) ->
    I = N - 1,
    to_orddict_1(E, I, D, I);
to_orddict(_) ->
    error(badarg).

to_orddict_1(E = {_, _, _, _, _, _, _, _, _, _, S}, R, D, I) ->
    N = I div S,
    I1 = I rem S,
    to_orddict_3(N,
                 R - I1 - 1,
                 D,
                 to_orddict_1(element(N + 1, E), R, D, I1),
                 E, S);
to_orddict_1(E, R, D, I) when is_integer(E) ->
    push_pairs(I + 1, R, D, []);
to_orddict_1(E, R, _D, I) ->
    push_tuple_pairs(I + 1, R, E, []).

to_orddict_2(E = {_, _, _, _, _, _, _, _, _, _, S}, R, D, L)
    when is_integer(S) ->
    to_orddict_3(10, R, D, L, E, S);
to_orddict_2(E, R, D, L) when is_integer(E) ->
    push_pairs(E, R, D, L);
to_orddict_2(E, R, _D, L) ->
    push_tuple_pairs(10, R, E, L).

to_orddict_3(0, _R, _D, L, _E, _S) ->
    L;
to_orddict_3(N, R, D, L, E, S) ->
    to_orddict_3(N - 1,
                 R - S,
                 D,
                 to_orddict_2(element(N, E), R, D, L),
                 E, S).

-spec push_pairs(non_neg_integer(),
                 array_indx(),
                 term(),
                 indx_pairs(Type)) ->
                    indx_pairs(Type).

push_pairs(0, _I, _E, L) ->
    L;
push_pairs(N, I, E, L) ->
    push_pairs(N - 1, I - 1, E, [{I, E} | L]).

-spec push_tuple_pairs(non_neg_integer(),
                       array_indx(),
                       term(),
                       indx_pairs(Type)) ->
                          indx_pairs(Type).

push_tuple_pairs(0, _I, _T, L) ->
    L;
push_tuple_pairs(N, I, T, L) ->
    push_tuple_pairs(N - 1, I - 1, T, [{I, element(N, T)} | L]).

-spec sparse_to_orddict(Array :: array(Type)) ->
                           indx_pairs(Value :: Type).

sparse_to_orddict({array, 0, _, _, _}) ->
    [];
sparse_to_orddict({array, N, _, D, E}) when is_integer(N) ->
    I = N - 1,
    sparse_to_orddict_1(E, I, D, I);
sparse_to_orddict(_) ->
    error(badarg).

sparse_to_orddict_1(E = {_, _, _, _, _, _, _, _, _, _, S}, R, D, I) ->
    N = I div S,
    I1 = I rem S,
    sparse_to_orddict_3(N,
                        R - I1 - 1,
                        D,
                        sparse_to_orddict_1(element(N + 1, E), R, D, I1),
                        E, S);
sparse_to_orddict_1(E, _R, _D, _I) when is_integer(E) ->
    [];
sparse_to_orddict_1(E, R, D, I) ->
    sparse_push_tuple_pairs(I + 1, R, D, E, []).

sparse_to_orddict_2(E = {_, _, _, _, _, _, _, _, _, _, S}, R, D, L)
    when is_integer(S) ->
    sparse_to_orddict_3(10, R, D, L, E, S);
sparse_to_orddict_2(E, _R, _D, L) when is_integer(E) ->
    L;
sparse_to_orddict_2(E, R, D, L) ->
    sparse_push_tuple_pairs(10, R, D, E, L).

sparse_to_orddict_3(0, _R, _D, L, _E, _S) ->
    L;
sparse_to_orddict_3(N, R, D, L, E, S) ->
    sparse_to_orddict_3(N - 1,
                        R - S,
                        D,
                        sparse_to_orddict_2(element(N, E), R, D, L),
                        E, S).

-spec sparse_push_tuple_pairs(non_neg_integer(),
                              array_indx(),
                              _, _,
                              indx_pairs(Type)) ->
                                 indx_pairs(Type).

sparse_push_tuple_pairs(0, _I, _D, _T, L) ->
    L;
sparse_push_tuple_pairs(N, I, D, T, L) ->
    case element(N, T) of
        D ->
            sparse_push_tuple_pairs(N - 1, I - 1, D, T, L);
        E ->
            sparse_push_tuple_pairs(N - 1, I - 1, D, T, [{I, E} | L])
    end.

-spec from_orddict(Orddict :: indx_pairs(Value :: Type)) -> array(Type).

from_orddict(Orddict) ->
    from_orddict(Orddict, undefined).

-spec from_orddict(Orddict :: indx_pairs(Value :: Type),
                   Default :: Type) ->
                      array(Type).

from_orddict([], Default) ->
    new({default, Default});
from_orddict(List, Default) when is_list(List) ->
    {E, N, M} = from_orddict_0(List, 0, 10, Default, []),
    {array, N, M, Default, E};
from_orddict(_, _) ->
    error(badarg).

from_orddict_0([], N, _Max, _D, Es) ->
    case Es of
        [E] ->
            {E, N, 10};
        _ ->
            collect_leafs(N, Es, 10)
    end;
from_orddict_0(Xs = [{Ix1, _} | _], Ix, Max0, D, Es0)
    when is_integer(Ix1), Ix1 > Max0 ->
    Hole = Ix1 - Ix,
    Step = Hole - Hole rem 10,
    Next = Ix + Step,
    from_orddict_0(Xs, Next, Next + 10, D, [Step | Es0]);
from_orddict_0(Xs0 = [{_, _} | _], Ix0, Max, D, Es) ->
    {Xs, E, Ix} = from_orddict_1(Ix0, Max, Xs0, Ix0, D, []),
    from_orddict_0(Xs, Ix, Ix + 10, D, [E | Es]);
from_orddict_0(Xs, _, _, _, _) ->
    error({badarg, Xs}).

from_orddict_1(Ix, Ix, Xs, N, _D, As) ->
    E = list_to_tuple(lists:reverse(As)),
    {Xs, E, N};
from_orddict_1(Ix, Max, Xs, N0, D, As) ->
    case Xs of
        [{Ix, Val} | Xs1] ->
            N = Ix + 1,
            from_orddict_1(N, Max, Xs1, N, D, [Val | As]);
        [{Ix1, _} | _] when is_integer(Ix1), Ix1 > Ix ->
            N = Ix + 1,
            from_orddict_1(N, Max, Xs, N, D, [D | As]);
        [_ | _] ->
            error({badarg, Xs});
        _ ->
            from_orddict_1(Ix + 1, Max, Xs, N0, D, [D | As])
    end.

collect_leafs(N, Es, S) ->
    I = (N - 1) div S + 1,
    Pad = (10 - I rem 10) rem 10 * S,
    case Pad of
        0 ->
            collect_leafs(10, Es, S, N, [S], []);
        _ ->
            collect_leafs(10, [Pad | Es], S, N, [S], [])
    end.

collect_leafs(0, Xs, S, N, As, Es) ->
    E = list_to_tuple(As),
    case Xs of
        [] ->
            case Es of
                [] ->
                    {E, N, S * 10};
                _ ->
                    collect_leafs(N, lists:reverse([E | Es]), S * 10)
            end;
        _ ->
            collect_leafs(10, Xs, S, N, [S], [E | Es])
    end;
collect_leafs(I, [X | Xs], S, N, As0, Es0) when is_integer(X) ->
    Step0 = X div S,
    if
        Step0 < I ->
            As = push(Step0, S, As0),
            collect_leafs(I - Step0, Xs, S, N, As, Es0);
        I =:= 10 ->
            Step = Step0 rem 10,
            As = push(Step, S, As0),
            collect_leafs(I - Step, Xs, S, N, As, [X | Es0]);
        I =:= Step0 ->
            As = push(I, S, As0),
            collect_leafs(0, Xs, S, N, As, Es0);
        true ->
            As = push(I, S, As0),
            Step = Step0 - I,
            collect_leafs(0, [Step * S | Xs], S, N, As, Es0)
    end;
collect_leafs(I, [X | Xs], S, N, As, Es) ->
    collect_leafs(I - 1, Xs, S, N, [X | As], Es);
collect_leafs(10, [], S, N, [_], Es) ->
    collect_leafs(N, lists:reverse(Es), S * 10).

-spec map(Function, Array :: array(Type1)) -> array(Type2)
             when
                 Function ::
                     fun((Index :: array_indx(), Type1) -> Type2).

map(Function, Array = {array, N, _, D, E})
    when is_function(Function, 2), is_integer(N) ->
    if
        N > 0 ->
            A = begin
                    REC16 = Array,
                    case REC16 of
                        {array, _, _, _, _} ->
                            setelement(5, REC16, []);
                        _ ->
                            error({badrecord, REC16})
                    end
                end,
            begin
                REC17 = map_1(N - 1, E, 0, Function, D),
                REC18 = A,
                case REC18 of
                    {array, _, _, _, _} ->
                        setelement(5, REC18, REC17);
                    _ ->
                        error({badrecord, REC18})
                end
            end;
        true ->
            Array
    end;
map(_, _) ->
    error(badarg).

map_1(N, E = {_, _, _, _, _, _, _, _, _, _, S}, Ix, F, D) ->
    list_to_tuple(lists:reverse([S |
                                 map_2(1, E, Ix, F, D, [],
                                       N div S + 1,
                                       N rem S,
                                       S)]));
map_1(N, E, Ix, F, D) when is_integer(E) ->
    map_1(N, unfold(E, D), Ix, F, D);
map_1(N, E, Ix, F, D) ->
    list_to_tuple(lists:reverse(map_3(1, E, Ix, F, D, N + 1, []))).

map_2(I, E, Ix, F, D, L, I, R, _S) ->
    map_2_1(I + 1, E, [map_1(R, element(I, E), Ix, F, D) | L]);
map_2(I, E, Ix, F, D, L, N, R, S) ->
    map_2(I + 1,
          E,
          Ix + S,
          F, D,
          [map_1(S - 1, element(I, E), Ix, F, D) | L],
          N, R, S).

map_2_1(I, E, L) when I =< 10 ->
    map_2_1(I + 1, E, [element(I, E) | L]);
map_2_1(_I, _E, L) ->
    L.

-spec map_3(pos_integer(),
            _,
            array_indx(),
            fun((array_indx(), _) -> _),
            _,
            non_neg_integer(),
            [X]) ->
               [X].

map_3(I, E, Ix, F, D, N, L) when I =< N ->
    map_3(I + 1, E, Ix + 1, F, D, N, [F(Ix, element(I, E)) | L]);
map_3(I, E, Ix, F, D, N, L) when I =< 10 ->
    map_3(I + 1, E, Ix + 1, F, D, N, [D | L]);
map_3(_I, _E, _Ix, _F, _D, _N, L) ->
    L.

unfold(S, _D) when S > 10 ->
    erlang:make_tuple(10 + 1, S div 10);
unfold(_S, D) ->
    erlang:make_tuple(10, D).

-spec sparse_map(Function, Array :: array(Type1)) -> array(Type2)
                    when
                        Function ::
                            fun((Index :: array_indx(), Type1) -> Type2).

sparse_map(Function, Array = {array, N, _, D, E})
    when is_function(Function, 2), is_integer(N) ->
    if
        N > 0 ->
            A = begin
                    REC19 = Array,
                    case REC19 of
                        {array, _, _, _, _} ->
                            setelement(5, REC19, []);
                        _ ->
                            error({badrecord, REC19})
                    end
                end,
            begin
                REC20 = sparse_map_1(N - 1, E, 0, Function, D),
                REC21 = A,
                case REC21 of
                    {array, _, _, _, _} ->
                        setelement(5, REC21, REC20);
                    _ ->
                        error({badrecord, REC21})
                end
            end;
        true ->
            Array
    end;
sparse_map(_, _) ->
    error(badarg).

sparse_map_1(N, E = {_, _, _, _, _, _, _, _, _, _, S}, Ix, F, D) ->
    list_to_tuple(lists:reverse([S |
                                 sparse_map_2(1, E, Ix, F, D, [],
                                              N div S + 1,
                                              N rem S,
                                              S)]));
sparse_map_1(_N, E, _Ix, _F, _D) when is_integer(E) ->
    E;
sparse_map_1(_N, E, Ix, F, D) ->
    list_to_tuple(lists:reverse(sparse_map_3(1, E, Ix, F, D, []))).

sparse_map_2(I, E, Ix, F, D, L, I, R, _S) ->
    sparse_map_2_1(I + 1,
                   E,
                   [sparse_map_1(R, element(I, E), Ix, F, D) | L]);
sparse_map_2(I, E, Ix, F, D, L, N, R, S) ->
    sparse_map_2(I + 1,
                 E,
                 Ix + S,
                 F, D,
                 [sparse_map_1(S - 1, element(I, E), Ix, F, D) | L],
                 N, R, S).

sparse_map_2_1(I, E, L) when I =< 10 ->
    sparse_map_2_1(I + 1, E, [element(I, E) | L]);
sparse_map_2_1(_I, _E, L) ->
    L.

-spec sparse_map_3(pos_integer(),
                   _,
                   array_indx(),
                   fun((array_indx(), _) -> _),
                   _,
                   [X]) ->
                      [X].

sparse_map_3(I, T, Ix, F, D, L) when I =< 10 ->
    case element(I, T) of
        D ->
            sparse_map_3(I + 1, T, Ix + 1, F, D, [D | L]);
        E ->
            sparse_map_3(I + 1, T, Ix + 1, F, D, [F(Ix, E) | L])
    end;
sparse_map_3(_I, _E, _Ix, _F, _D, L) ->
    L.

-spec foldl(Function, InitialAcc :: A, Array :: array(Type)) -> B
               when
                   Function ::
                       fun((Index :: array_indx(),
                            Value :: Type,
                            Acc :: A) ->
                               B).

foldl(Function, A, {array, N, _, D, E})
    when is_function(Function, 3), is_integer(N) ->
    if
        N > 0 ->
            foldl_1(N - 1, E, A, 0, Function, D);
        true ->
            A
    end;
foldl(_, _, _) ->
    error(badarg).

foldl_1(N, E = {_, _, _, _, _, _, _, _, _, _, S}, A, Ix, F, D) ->
    foldl_2(1, E, A, Ix, F, D, N div S + 1, N rem S, S);
foldl_1(N, E, A, Ix, F, D) when is_integer(E) ->
    foldl_1(N, unfold(E, D), A, Ix, F, D);
foldl_1(N, E, A, Ix, F, _D) ->
    foldl_3(1, E, A, Ix, F, N + 1).

foldl_2(I, E, A, Ix, F, D, I, R, _S) ->
    foldl_1(R, element(I, E), A, Ix, F, D);
foldl_2(I, E, A, Ix, F, D, N, R, S) ->
    foldl_2(I + 1,
            E,
            foldl_1(S - 1, element(I, E), A, Ix, F, D),
            Ix + S,
            F, D, N, R, S).

-spec foldl_3(pos_integer(),
              _, A,
              array_indx(),
              fun((array_indx(), _, A) -> B),
              integer()) ->
                 B.

foldl_3(I, E, A, Ix, F, N) when I =< N ->
    foldl_3(I + 1, E, F(Ix, element(I, E), A), Ix + 1, F, N);
foldl_3(_I, _E, A, _Ix, _F, _N) ->
    A.

-spec sparse_foldl(Function, InitialAcc :: A, Array :: array(Type)) -> B
                      when
                          Function ::
                              fun((Index :: array_indx(),
                                   Value :: Type,
                                   Acc :: A) ->
                                      B).

sparse_foldl(Function, A, {array, N, _, D, E})
    when is_function(Function, 3), is_integer(N) ->
    if
        N > 0 ->
            sparse_foldl_1(N - 1, E, A, 0, Function, D);
        true ->
            A
    end;
sparse_foldl(_, _, _) ->
    error(badarg).

sparse_foldl_1(N, E = {_, _, _, _, _, _, _, _, _, _, S}, A, Ix, F, D) ->
    sparse_foldl_2(1, E, A, Ix, F, D, N div S + 1, N rem S, S);
sparse_foldl_1(_N, E, A, _Ix, _F, _D) when is_integer(E) ->
    A;
sparse_foldl_1(N, E, A, Ix, F, D) ->
    sparse_foldl_3(1, E, A, Ix, F, D, N + 1).

sparse_foldl_2(I, E, A, Ix, F, D, I, R, _S) ->
    sparse_foldl_1(R, element(I, E), A, Ix, F, D);
sparse_foldl_2(I, E, A, Ix, F, D, N, R, S) ->
    sparse_foldl_2(I + 1,
                   E,
                   sparse_foldl_1(S - 1, element(I, E), A, Ix, F, D),
                   Ix + S,
                   F, D, N, R, S).

sparse_foldl_3(I, T, A, Ix, F, D, N) when I =< N ->
    case element(I, T) of
        D ->
            sparse_foldl_3(I + 1, T, A, Ix + 1, F, D, N);
        E ->
            sparse_foldl_3(I + 1, T, F(Ix, E, A), Ix + 1, F, D, N)
    end;
sparse_foldl_3(_I, _T, A, _Ix, _F, _D, _N) ->
    A.

-spec foldr(Function, InitialAcc :: A, Array :: array(Type)) -> B
               when
                   Function ::
                       fun((Index :: array_indx(),
                            Value :: Type,
                            Acc :: A) ->
                               B).

foldr(Function, A, {array, N, _, D, E})
    when is_function(Function, 3), is_integer(N) ->
    if
        N > 0 ->
            I = N - 1,
            foldr_1(I, E, I, A, Function, D);
        true ->
            A
    end;
foldr(_, _, _) ->
    error(badarg).

foldr_1(I, E = {_, _, _, _, _, _, _, _, _, _, S}, Ix, A, F, D) ->
    foldr_2(I div S + 1, E, Ix, A, F, D, I rem S, S - 1);
foldr_1(I, E, Ix, A, F, D) when is_integer(E) ->
    foldr_1(I, unfold(E, D), Ix, A, F, D);
foldr_1(I, E, Ix, A, F, _D) ->
    I1 = I + 1,
    foldr_3(I1, E, Ix - I1, A, F).

foldr_2(0, _E, _Ix, A, _F, _D, _R, _R0) ->
    A;
foldr_2(I, E, Ix, A, F, D, R, R0) ->
    foldr_2(I - 1,
            E,
            Ix - R - 1,
            foldr_1(R, element(I, E), Ix, A, F, D),
            F, D, R0, R0).

-spec foldr_3(array_indx(),
              term(),
              integer(),
              A,
              fun((array_indx(), _, A) -> B)) ->
                 B.

foldr_3(0, _E, _Ix, A, _F) ->
    A;
foldr_3(I, E, Ix, A, F) ->
    foldr_3(I - 1, E, Ix, F(Ix + I, element(I, E), A), F).

-spec sparse_foldr(Function, InitialAcc :: A, Array :: array(Type)) -> B
                      when
                          Function ::
                              fun((Index :: array_indx(),
                                   Value :: Type,
                                   Acc :: A) ->
                                      B).

sparse_foldr(Function, A, {array, N, _, D, E})
    when is_function(Function, 3), is_integer(N) ->
    if
        N > 0 ->
            I = N - 1,
            sparse_foldr_1(I, E, I, A, Function, D);
        true ->
            A
    end;
sparse_foldr(_, _, _) ->
    error(badarg).

sparse_foldr_1(I, E = {_, _, _, _, _, _, _, _, _, _, S}, Ix, A, F, D) ->
    sparse_foldr_2(I div S + 1, E, Ix, A, F, D, I rem S, S - 1);
sparse_foldr_1(_I, E, _Ix, A, _F, _D) when is_integer(E) ->
    A;
sparse_foldr_1(I, E, Ix, A, F, D) ->
    I1 = I + 1,
    sparse_foldr_3(I1, E, Ix - I1, A, F, D).

sparse_foldr_2(0, _E, _Ix, A, _F, _D, _R, _R0) ->
    A;
sparse_foldr_2(I, E, Ix, A, F, D, R, R0) ->
    sparse_foldr_2(I - 1,
                   E,
                   Ix - R - 1,
                   sparse_foldr_1(R, element(I, E), Ix, A, F, D),
                   F, D, R0, R0).

-spec sparse_foldr_3(array_indx(),
                     _,
                     array_indx(),
                     A,
                     fun((array_indx(), _, A) -> B),
                     _) ->
                        B.

sparse_foldr_3(0, _T, _Ix, A, _F, _D) ->
    A;
sparse_foldr_3(I, T, Ix, A, F, D) ->
    case element(I, T) of
        D ->
            sparse_foldr_3(I - 1, T, Ix, A, F, D);
        E ->
            sparse_foldr_3(I - 1, T, Ix, F(Ix + I, E, A), F, D)
    end.

-spec sparse_size(Array :: array()) -> non_neg_integer().

sparse_size(A) ->
    F = fun(I, _V, _A) ->
               throw({value, I})
        end,
    try sparse_foldr(F, [], A) of
        [] ->
            0
    catch
        throw:{value, I} when is_integer(I) ->
            I + 1
    end.



