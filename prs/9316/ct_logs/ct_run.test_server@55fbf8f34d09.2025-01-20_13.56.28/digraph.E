-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.2/src/digraph.erl", 1).

-module(digraph).

-export([new/0,new/1,delete/1,info/1]).

-export([add_vertex/1,add_vertex/2,add_vertex/3]).

-export([del_vertex/2,del_vertices/2]).

-export([vertex/2,no_vertices/1,vertices/1]).

-export([source_vertices/1,sink_vertices/1]).

-export([add_edge/3,add_edge/4,add_edge/5]).

-export([del_edge/2,del_edges/2,del_path/3]).

-export([edge/2,no_edges/1,edges/1]).

-export([out_neighbours/2,in_neighbours/2]).

-export([out_edges/2,in_edges/2,edges/2]).

-export([out_degree/2,in_degree/2]).

-export([get_path/3,get_cycle/2]).

-export([get_short_path/3,get_short_cycle/2]).

-export_type([graph/0,d_type/0,vertex/0,edge/0,label/0]).

-record(digraph,{vtab = notable :: ets:table(),
                 etab = notable :: ets:table(),
                 ntab = notable :: ets:table(),
                 cyclic = true :: boolean()}).

-opaque graph() :: #digraph{}.

-type edge() :: term().

-type label() :: term().

-type vertex() :: term().

-type add_edge_err_rsn() ::
          {bad_edge, Path :: [vertex()]} | {bad_vertex, V :: vertex()}.

-type d_protection() :: private | protected.

-type d_cyclicity() :: acyclic | cyclic.

-type d_type() :: d_cyclicity() | d_protection().

-spec new() -> graph().

new() ->
    new([]).

-spec new(Type) -> graph() when Type :: [d_type()].

new(Type) ->
    case check_type(Type, protected, []) of
        {Access, Ts} ->
            V = ets:new(vertices, [set, Access]),
            E = ets:new(edges, [set, Access]),
            N = ets:new(neighbours, [bag, Access]),
            ets:insert(N, [{'$vid', 0}, {'$eid', 0}]),
            set_type(Ts, {digraph, V, E, N, true});
        error ->
            error(badarg)
    end.

check_type([acyclic | Ts], A, L) ->
    check_type(Ts, A, [{cyclic, false} | L]);
check_type([cyclic | Ts], A, L) ->
    check_type(Ts, A, [{cyclic, true} | L]);
check_type([protected | Ts], _, L) ->
    check_type(Ts, protected, L);
check_type([private | Ts], _, L) ->
    check_type(Ts, private, L);
check_type([], A, L) ->
    {A, L};
check_type(_, _, _) ->
    error.

-spec set_type([{cyclic, boolean()}], graph()) -> graph().

set_type([{cyclic, V} | Ks], G) ->
    set_type(Ks,
             begin
                 REC0 = G,
                 case REC0 of
                     {digraph, _, _, _, _} ->
                         setelement(5, REC0, V);
                     _ ->
                         error({badrecord, REC0})
                 end
             end);
set_type([], G) ->
    G.

-spec delete(G) -> true when G :: graph().

delete(G) ->
    ets:delete(case G of
                   {digraph, REC1, _, _, _} ->
                       REC1;
                   REC1 ->
                       error({badrecord, REC1})
               end),
    ets:delete(case G of
                   {digraph, _, REC2, _, _} ->
                       REC2;
                   REC2 ->
                       error({badrecord, REC2})
               end),
    ets:delete(case G of
                   {digraph, _, _, REC3, _} ->
                       REC3;
                   REC3 ->
                       error({badrecord, REC3})
               end).

-spec info(G) -> InfoList
              when
                  G :: graph(),
                  InfoList ::
                      [{cyclicity, Cyclicity :: d_cyclicity()} |
                       {memory, NoWords :: non_neg_integer()} |
                       {protection, Protection :: d_protection()}].

info(G) ->
    VT =
        case G of
            {digraph, REC4, _, _, _} ->
                REC4;
            REC4 ->
                error({badrecord, REC4})
        end,
    ET =
        case G of
            {digraph, _, REC5, _, _} ->
                REC5;
            REC5 ->
                error({badrecord, REC5})
        end,
    NT =
        case G of
            {digraph, _, _, REC6, _} ->
                REC6;
            REC6 ->
                error({badrecord, REC6})
        end,
    Cyclicity =
        case
            case G of
                {digraph, _, _, _, REC7} ->
                    REC7;
                REC7 ->
                    error({badrecord, REC7})
            end
        of
            true ->
                cyclic;
            false ->
                acyclic
        end,
    Protection = ets:info(VT, protection),
    Memory =
        ets:info(VT, memory) + ets:info(ET, memory)
        +
        ets:info(NT, memory),
    [{cyclicity, Cyclicity}, {memory, Memory}, {protection, Protection}].

-spec add_vertex(G) -> vertex() when G :: graph().

add_vertex(G) ->
    do_add_vertex({new_vertex_id(G), []}, G).

-spec add_vertex(G, V) -> vertex() when G :: graph(), V :: vertex().

add_vertex(G, V) ->
    do_add_vertex({V, []}, G).

-spec add_vertex(G, V, Label) -> vertex()
                    when G :: graph(), V :: vertex(), Label :: label().

add_vertex(G, V, D) ->
    do_add_vertex({V, D}, G).

-spec del_vertex(G, V) -> true when G :: graph(), V :: vertex().

del_vertex(G, V) ->
    do_del_vertex(V, G).

-spec del_vertices(G, Vertices) -> true
                      when G :: graph(), Vertices :: [vertex()].

del_vertices(G, Vs) ->
    do_del_vertices(Vs, G).

-spec vertex(G, V) -> {V, Label} | false
                when G :: graph(), V :: vertex(), Label :: label().

vertex(G, V) ->
    case
        ets:lookup(case G of
                       {digraph, REC8, _, _, _} ->
                           REC8;
                       REC8 ->
                           error({badrecord, REC8})
                   end,
                   V)
    of
        [] ->
            false;
        [Vertex] ->
            Vertex
    end.

-spec no_vertices(G) -> non_neg_integer() when G :: graph().

no_vertices(G) ->
    ets:info(case G of
                 {digraph, REC9, _, _, _} ->
                     REC9;
                 REC9 ->
                     error({badrecord, REC9})
             end,
             size).

-spec vertices(G) -> Vertices when G :: graph(), Vertices :: [vertex()].

vertices(G) ->
    ets:select(case G of
                   {digraph, REC10, _, _, _} ->
                       REC10;
                   REC10 ->
                       error({badrecord, REC10})
               end,
               [{{'$1', '_'}, [], ['$1']}]).

-spec source_vertices(graph()) -> [vertex()].

source_vertices(G) ->
    collect_vertices(G, in).

-spec sink_vertices(graph()) -> [vertex()].

sink_vertices(G) ->
    collect_vertices(G, out).

-spec in_degree(G, V) -> non_neg_integer()
                   when G :: graph(), V :: vertex().

in_degree(G, V) ->
    length(ets:lookup(case G of
                          {digraph, _, _, REC11, _} ->
                              REC11;
                          REC11 ->
                              error({badrecord, REC11})
                      end,
                      {in, V})).

-spec in_neighbours(G, V) -> Vertex
                       when
                           G :: graph(),
                           V :: vertex(),
                           Vertex :: [vertex()].

in_neighbours(G, V) ->
    ET =
        case G of
            {digraph, _, REC12, _, _} ->
                REC12;
            REC12 ->
                error({badrecord, REC12})
        end,
    NT =
        case G of
            {digraph, _, _, REC13, _} ->
                REC13;
            REC13 ->
                error({badrecord, REC13})
        end,
    collect_elems(ets:lookup(NT, {in, V}), ET, 2).

-spec in_edges(G, V) -> Edges
                  when G :: graph(), V :: vertex(), Edges :: [edge()].

in_edges(G, V) ->
    [ 
     E ||
         {{in, _}, E} <-
             ets:lookup(case G of
                            {digraph, _, _, REC14, _} ->
                                REC14;
                            REC14 ->
                                error({badrecord, REC14})
                        end,
                        {in, V})
    ].

-spec out_degree(G, V) -> non_neg_integer()
                    when G :: graph(), V :: vertex().

out_degree(G, V) ->
    length(ets:lookup(case G of
                          {digraph, _, _, REC15, _} ->
                              REC15;
                          REC15 ->
                              error({badrecord, REC15})
                      end,
                      {out, V})).

-spec out_neighbours(G, V) -> Vertices
                        when
                            G :: graph(),
                            V :: vertex(),
                            Vertices :: [vertex()].

out_neighbours(G, V) ->
    ET =
        case G of
            {digraph, _, REC16, _, _} ->
                REC16;
            REC16 ->
                error({badrecord, REC16})
        end,
    NT =
        case G of
            {digraph, _, _, REC17, _} ->
                REC17;
            REC17 ->
                error({badrecord, REC17})
        end,
    collect_elems(ets:lookup(NT, {out, V}), ET, 3).

-spec out_edges(G, V) -> Edges
                   when G :: graph(), V :: vertex(), Edges :: [edge()].

out_edges(G, V) ->
    [ 
     E ||
         {{out, _}, E} <-
             ets:lookup(case G of
                            {digraph, _, _, REC18, _} ->
                                REC18;
                            REC18 ->
                                error({badrecord, REC18})
                        end,
                        {out, V})
    ].

-spec add_edge(G, V1, V2) -> edge() | {error, add_edge_err_rsn()}
                  when G :: graph(), V1 :: vertex(), V2 :: vertex().

add_edge(G, V1, V2) ->
    do_add_edge({new_edge_id(G), V1, V2, []}, G).

-spec add_edge(G, V1, V2, Label) -> edge() | {error, add_edge_err_rsn()}
                  when
                      G :: graph(),
                      V1 :: vertex(),
                      V2 :: vertex(),
                      Label :: label().

add_edge(G, V1, V2, D) ->
    do_add_edge({new_edge_id(G), V1, V2, D}, G).

-spec add_edge(G, E, V1, V2, Label) ->
                  edge() | {error, add_edge_err_rsn()}
                  when
                      G :: graph(),
                      E :: edge(),
                      V1 :: vertex(),
                      V2 :: vertex(),
                      Label :: label().

add_edge(G, E, V1, V2, D) ->
    do_add_edge({E, V1, V2, D}, G).

-spec del_edge(G, E) -> true when G :: graph(), E :: edge().

del_edge(G, E) ->
    do_del_edges([E], G).

-spec del_edges(G, Edges) -> true when G :: graph(), Edges :: [edge()].

del_edges(G, Es) ->
    do_del_edges(Es, G).

-spec no_edges(G) -> non_neg_integer() when G :: graph().

no_edges(G) ->
    ets:info(case G of
                 {digraph, _, REC19, _, _} ->
                     REC19;
                 REC19 ->
                     error({badrecord, REC19})
             end,
             size).

-spec edges(G) -> Edges when G :: graph(), Edges :: [edge()].

edges(G) ->
    ets:select(case G of
                   {digraph, _, REC20, _, _} ->
                       REC20;
                   REC20 ->
                       error({badrecord, REC20})
               end,
               [{{'$1', '_', '_', '_'}, [], ['$1']}]).

-spec edges(G, V) -> Edges
               when G :: graph(), V :: vertex(), Edges :: [edge()].

edges(G, V) ->
    ets:select(case G of
                   {digraph, _, _, REC21, _} ->
                       REC21;
                   REC21 ->
                       error({badrecord, REC21})
               end,
               [{{{out, V}, '$1'}, [], ['$1']},
                {{{in, V}, '$1'}, [], ['$1']}]).

-spec edge(G, E) -> {E, V1, V2, Label} | false
              when
                  G :: graph(),
                  E :: edge(),
                  V1 :: vertex(),
                  V2 :: vertex(),
                  Label :: label().

edge(G, E) ->
    case
        ets:lookup(case G of
                       {digraph, _, REC22, _, _} ->
                           REC22;
                       REC22 ->
                           error({badrecord, REC22})
                   end,
                   E)
    of
        [] ->
            false;
        [Edge] ->
            Edge
    end.

-spec new_edge_id(graph()) -> edge().

-dialyzer({no_improper_lists, {new_edge_id, 1}}).

new_edge_id(G) ->
    NT =
        case G of
            {digraph, _, _, REC23, _} ->
                REC23;
            REC23 ->
                error({badrecord, REC23})
        end,
    [{'$eid', K}] = ets:lookup(NT, '$eid'),
    true = ets:delete(NT, '$eid'),
    true = ets:insert(NT, {'$eid', K + 1}),
    ['$e' | K].

-spec new_vertex_id(graph()) -> vertex().

-dialyzer({no_improper_lists, {new_vertex_id, 1}}).

new_vertex_id(G) ->
    NT =
        case G of
            {digraph, _, _, REC24, _} ->
                REC24;
            REC24 ->
                error({badrecord, REC24})
        end,
    [{'$vid', K}] = ets:lookup(NT, '$vid'),
    true = ets:delete(NT, '$vid'),
    true = ets:insert(NT, {'$vid', K + 1}),
    ['$v' | K].

collect_elems(Keys, Table, Index) ->
    collect_elems(Keys, Table, Index, []).

collect_elems([{_, Key} | Keys], Table, Index, Acc) ->
    collect_elems(Keys, Table, Index,
                  [ets:lookup_element(Table, Key, Index) | Acc]);
collect_elems([], _, _, Acc) ->
    Acc.

-spec do_add_vertex({vertex(), label()}, graph()) -> vertex().

do_add_vertex({V, _Label} = VL, G) ->
    ets:insert(case G of
                   {digraph, REC25, _, _, _} ->
                       REC25;
                   REC25 ->
                       error({badrecord, REC25})
               end,
               VL),
    V.

collect_vertices(G, Type) ->
    Vs = vertices(G),
    lists:foldl(fun(V, A) ->
                       case
                           ets:member(case G of
                                          {digraph, _, _, REC26, _} ->
                                              REC26;
                                          REC26 ->
                                              error({badrecord, REC26})
                                      end,
                                      {Type, V})
                       of
                           true ->
                               A;
                           false ->
                               [V | A]
                       end
                end,
                [], Vs).

do_del_vertices([V | Vs], G) ->
    do_del_vertex(V, G),
    do_del_vertices(Vs, G);
do_del_vertices([], {digraph, _, _, _, _}) ->
    true.

do_del_vertex(V, G) ->
    do_del_nedges(ets:lookup(case G of
                                 {digraph, _, _, REC27, _} ->
                                     REC27;
                                 REC27 ->
                                     error({badrecord, REC27})
                             end,
                             {in, V}),
                  G),
    do_del_nedges(ets:lookup(case G of
                                 {digraph, _, _, REC28, _} ->
                                     REC28;
                                 REC28 ->
                                     error({badrecord, REC28})
                             end,
                             {out, V}),
                  G),
    ets:delete(case G of
                   {digraph, REC29, _, _, _} ->
                       REC29;
                   REC29 ->
                       error({badrecord, REC29})
               end,
               V).

do_del_nedges([{_, E} | Ns], G) ->
    case
        ets:lookup(case G of
                       {digraph, _, REC30, _, _} ->
                           REC30;
                       REC30 ->
                           error({badrecord, REC30})
                   end,
                   E)
    of
        [{E, V1, V2, _}] ->
            do_del_edge(E, V1, V2, G),
            do_del_nedges(Ns, G);
        [] ->
            do_del_nedges(Ns, G)
    end;
do_del_nedges([], {digraph, _, _, _, _}) ->
    true.

do_del_edges([E | Es], G) ->
    case
        ets:lookup(case G of
                       {digraph, _, REC31, _, _} ->
                           REC31;
                       REC31 ->
                           error({badrecord, REC31})
                   end,
                   E)
    of
        [{E, V1, V2, _}] ->
            do_del_edge(E, V1, V2, G),
            do_del_edges(Es, G);
        [] ->
            do_del_edges(Es, G)
    end;
do_del_edges([], {digraph, _, _, _, _}) ->
    true.

do_del_edge(E, V1, V2, G) ->
    ets:select_delete(case G of
                          {digraph, _, _, REC32, _} ->
                              REC32;
                          REC32 ->
                              error({badrecord, REC32})
                      end,
                      [{{{in, V2}, E}, [], [true]},
                       {{{out, V1}, E}, [], [true]}]),
    ets:delete(case G of
                   {digraph, _, REC33, _, _} ->
                       REC33;
                   REC33 ->
                       error({badrecord, REC33})
               end,
               E).

-spec rm_edges([vertex(), ...], graph()) -> true.

rm_edges([V1, V2 | Vs], G) ->
    rm_edge(V1, V2, G),
    rm_edges([V2 | Vs], G);
rm_edges(_, _) ->
    true.

-spec rm_edge(vertex(), vertex(), graph()) -> ok.

rm_edge(V1, V2, G) ->
    Es = out_edges(G, V1),
    rm_edge_0(Es, V1, V2, G).

rm_edge_0([E | Es], V1, V2, G) ->
    case
        ets:lookup(case G of
                       {digraph, _, REC34, _, _} ->
                           REC34;
                       REC34 ->
                           error({badrecord, REC34})
                   end,
                   E)
    of
        [{E, V1, V2, _}] ->
            do_del_edge(E, V1, V2, G),
            rm_edge_0(Es, V1, V2, G);
        _ ->
            rm_edge_0(Es, V1, V2, G)
    end;
rm_edge_0([], _, _, {digraph, _, _, _, _}) ->
    ok.

-spec do_add_edge({edge(), vertex(), vertex(), label()}, graph()) ->
                     edge() | {error, add_edge_err_rsn()}.

do_add_edge({E, V1, V2, Label}, G) ->
    case
        ets:member(case G of
                       {digraph, REC35, _, _, _} ->
                           REC35;
                       REC35 ->
                           error({badrecord, REC35})
                   end,
                   V1)
    of
        false ->
            {error, {bad_vertex, V1}};
        true ->
            case
                ets:member(case G of
                               {digraph, REC36, _, _, _} ->
                                   REC36;
                               REC36 ->
                                   error({badrecord, REC36})
                           end,
                           V2)
            of
                false ->
                    {error, {bad_vertex, V2}};
                true ->
                    case other_edge_exists(G, E, V1, V2) of
                        true ->
                            {error, {bad_edge, [V1, V2]}};
                        false
                            when
                                (is_record(G, digraph, 5)
                                 orelse
                                 fail)
                                and
                                (element(5, G) =:= false) ->
                            acyclic_add_edge(E, V1, V2, Label, G);
                        false ->
                            do_insert_edge(E, V1, V2, Label, G)
                    end
            end
    end.

other_edge_exists({digraph, _, ET, _, _}, E, V1, V2) ->
    case ets:lookup(ET, E) of
        [{E, Vert1, Vert2, _}] when Vert1 =/= V1; Vert2 =/= V2 ->
            true;
        _ ->
            false
    end.

-spec do_insert_edge(edge(), vertex(), vertex(), label(), graph()) ->
                        edge().

do_insert_edge(E, V1, V2, Label, {digraph, _, ET, NT, _}) ->
    ets:insert(NT, [{{out, V1}, E}, {{in, V2}, E}]),
    ets:insert(ET, {E, V1, V2, Label}),
    E.

-spec acyclic_add_edge(edge(), vertex(), vertex(), label(), graph()) ->
                          edge() | {error, {bad_edge, [vertex()]}}.

acyclic_add_edge(_E, V1, V2, _L, _G) when V1 =:= V2 ->
    {error, {bad_edge, [V1, V2]}};
acyclic_add_edge(E, V1, V2, Label, G) ->
    case get_path(G, V2, V1) of
        false ->
            do_insert_edge(E, V1, V2, Label, G);
        Path ->
            {error, {bad_edge, Path}}
    end.

-spec del_path(G, V1, V2) -> true
                  when G :: graph(), V1 :: vertex(), V2 :: vertex().

del_path(G, V1, V2) ->
    case get_path(G, V1, V2) of
        false ->
            true;
        Path ->
            rm_edges(Path, G),
            del_path(G, V1, V2)
    end.

-spec get_cycle(G, V) -> Vertices | false
                   when
                       G :: graph(),
                       V :: vertex(),
                       Vertices :: [vertex(), ...].

get_cycle(G, V) ->
    case one_path(out_neighbours(G, V), V, [], [V], [V], 2, G, 1) of
        false ->
            case lists:member(V, out_neighbours(G, V)) of
                true ->
                    [V];
                false ->
                    false
            end;
        Vs ->
            Vs
    end.

-spec get_path(G, V1, V2) -> Vertices | false
                  when
                      G :: graph(),
                      V1 :: vertex(),
                      V2 :: vertex(),
                      Vertices :: [vertex(), ...].

get_path(G, V1, V2) ->
    one_path(out_neighbours(G, V1), V2, [], [V1], [V1], 1, G, 1).

prune_short_path(Counter, Min) when Counter < Min ->
    short;
prune_short_path(_Counter, _Min) ->
    ok.

one_path([W | Ws], W, Cont, Xs, Ps, Prune, G, Counter) ->
    case prune_short_path(Counter, Prune) of
        short ->
            one_path(Ws, W, Cont, Xs, Ps, Prune, G, Counter);
        ok ->
            lists:reverse([W | Ps])
    end;
one_path([V | Vs], W, Cont, Xs, Ps, Prune, G, Counter) ->
    case lists:member(V, Xs) of
        true ->
            one_path(Vs, W, Cont, Xs, Ps, Prune, G, Counter);
        false ->
            one_path(out_neighbours(G, V),
                     W,
                     [{Vs, Ps} | Cont],
                     [V | Xs],
                     [V | Ps],
                     Prune, G,
                     Counter + 1)
    end;
one_path([], W, [{Vs, Ps} | Cont], Xs, _, Prune, G, Counter) ->
    one_path(Vs, W, Cont, Xs, Ps, Prune, G, Counter - 1);
one_path([], _, [], _, _, _, _, _Counter) ->
    false.

-spec get_short_cycle(G, V) -> Vertices | false
                         when
                             G :: graph(),
                             V :: vertex(),
                             Vertices :: [vertex(), ...].

get_short_cycle(G, V) ->
    get_short_path(G, V, V).

-spec get_short_path(G, V1, V2) -> Vertices | false
                        when
                            G :: graph(),
                            V1 :: vertex(),
                            V2 :: vertex(),
                            Vertices :: [vertex(), ...].

get_short_path(G, V1, V2) ->
    T = new(),
    add_vertex(T, V1),
    Q = queue:new(),
    Q1 = queue_out_neighbours(V1, G, Q),
    L = spath(Q1, G, V2, T),
    delete(T),
    L.

spath(Q, G, Sink, T) ->
    case queue:out(Q) of
        {{value, E}, Q1} ->
            {_E, V1, V2, _Label} = edge(G, E),
            if
                Sink =:= V2 ->
                    follow_path(V1, T, [V2]);
                true ->
                    case vertex(T, V2) of
                        false ->
                            add_vertex(T, V2),
                            add_edge(T, V2, V1),
                            NQ = queue_out_neighbours(V2, G, Q1),
                            spath(NQ, G, Sink, T);
                        _V ->
                            spath(Q1, G, Sink, T)
                    end
            end;
        {empty, _Q1} ->
            false
    end.

follow_path(V, T, P) ->
    P1 = [V | P],
    case out_neighbours(T, V) of
        [N] ->
            follow_path(N, T, P1);
        [] ->
            P1
    end.

queue_out_neighbours(V, G, Q0) ->
    lists:foldl(fun(E, Q) ->
                       queue:in(E, Q)
                end,
                Q0,
                out_edges(G, V)).



