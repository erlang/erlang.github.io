-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.1.2/src/pool.erl", 1).

-module(pool).

-export([start/1,
         start/2,
         stop/0,
         get_nodes/0,
         get_nodes_and_load/0,
         get_node/0,
         pspawn/3,
         attach/1,
         pspawn_link/3]).

-export([statistic_collector/0,
         do_spawn/4,
         init/1,
         handle_call/3,
         handle_cast/2,
         handle_info/2,
         terminate/2]).

-spec start(Name) -> Nodes when Name :: atom(), Nodes :: [node()].

start(Name) ->
    start(Name, []).

-spec start(Name, Args) -> Nodes
               when Name :: atom(), Args :: string(), Nodes :: [node()].

start(Name, Args) when is_atom(Name) ->
    _ = gen_server:start({global, pool_master}, pool, [], []),
    Hosts = net_adm:host_file(),
    Nodes = start_nodes(Hosts, Name, Args),
    lists:foreach(fun attach/1, Nodes),
    Nodes.

-spec get_nodes() -> [node()].

get_nodes() ->
    get_elements(2, get_nodes_and_load()).

-spec attach(Node) -> already_attached | attached when Node :: node().

attach(Node) ->
    gen_server:call({global, pool_master}, {attach, Node}).

get_nodes_and_load() ->
    gen_server:call({global, pool_master}, get_nodes).

-spec get_node() -> node().

get_node() ->
    gen_server:call({global, pool_master}, get_node).

-spec pspawn(Mod, Fun, Args) -> pid()
                when Mod :: module(), Fun :: atom(), Args :: [term()].

pspawn(M, F, A) ->
    gen_server:call({global, pool_master},
                    {spawn, group_leader(), M, F, A}).

-spec pspawn_link(Mod, Fun, Args) -> pid()
                     when
                         Mod :: module(),
                         Fun :: atom(),
                         Args :: [term()].

pspawn_link(M, F, A) ->
    spawn_link(get_node(), M, F, A).

-compile([{nowarn_deprecated_function, [{slave, start, 3}]}]).

start_nodes([], _, _) ->
    [];
start_nodes([Host | Tail], Name, Args) ->
    case slave:start(Host, Name, Args) of
        {error, {already_running, Node}} ->
            io:format("Can't start node on host ~w due to ~w~n",
                      [Host, {already_running, Node}]),
            [Node | start_nodes(Tail, Name, Args)];
        {error, R} ->
            io:format("Can't start node on host ~w due to ~w~n",
                      [Host, R]),
            start_nodes(Tail, Name, Args);
        {ok, Node} ->
            [Node | start_nodes(Tail, Name, Args)]
    end.

-spec stop() -> stopped.

stop() ->
    gen_server:call({global, pool_master}, stop).

get_elements(_Pos, []) ->
    [];
get_elements(Pos, [E | T]) ->
    [element(Pos, E) | get_elements(Pos, T)].

stop_em([]) ->
    stopped;
stop_em([N | Tail]) ->
    rpc:cast(N, erlang, halt, []),
    stop_em(Tail).

init([]) ->
    process_flag(trap_exit, true),
    spawn_link(pool, statistic_collector, []),
    {ok, [{0, node()}]}.

handle_call(get_nodes, _From, Nodes) ->
    {reply, Nodes, Nodes};
handle_call(get_node, _From, [{Load, N} | Tail]) ->
    {reply, N, Tail ++ [{Load + 1, N}]};
handle_call({attach, Node}, _From, Nodes) ->
    case lists:keymember(Node, 2, Nodes) of
        true ->
            {reply, already_attached, Nodes};
        false ->
            monitor_node(Node, true),
            spawn_link(Node, pool, statistic_collector, []),
            {reply, attached, Nodes ++ [{999999, Node}]}
    end;
handle_call({spawn, Gl, M, F, A}, _From, Nodes) ->
    {reply, N, NewNodes} = handle_call(get_node, _From, Nodes),
    Pid = spawn(N, pool, do_spawn, [Gl, M, F, A]),
    {reply, Pid, NewNodes};
handle_call(stop, _From, Nodes) ->
    {stop, normal, stopped, Nodes}.

handle_cast(_, Nodes) ->
    {noreply, Nodes}.

handle_info({Node, load, Load}, Nodes) ->
    Nodes2 = insert_node({Load, Node}, Nodes),
    {noreply, Nodes2};
handle_info({nodedown, Node}, Nodes) ->
    {noreply, lists:keydelete(Node, 2, Nodes)};
handle_info(_, Nodes) ->
    {noreply, Nodes}.

terminate(_Reason, Nodes) ->
    N = lists:delete(node(), get_elements(2, Nodes)),
    stop_em(N),
    ok.

-spec do_spawn(pid(), module(), atom(), [term()]) -> term().

do_spawn(Gl, M, F, A) ->
    group_leader(Gl, self()),
    apply(M, F, A).

insert_node({Load, Node}, [{L, Node} | Tail]) when Load > L ->
    pure_insert({Load, Node}, Tail);
insert_node({Load, Node}, [{L, N} | Tail]) when Load =< L ->
    T = lists:keydelete(Node, 2, [{L, N} | Tail]),
    [{Load, Node} | T];
insert_node(Ln, [H | T]) ->
    [H | insert_node(Ln, T)];
insert_node(X, []) ->
    error_logger:error_msg("Pool_master: Bad node list X=~w\n", [X]),
    exit(crash).

pure_insert({Load, Node}, []) ->
    [{Load, Node}];
pure_insert({Load, Node}, [{L, N} | Tail]) when Load < L ->
    [{Load, Node}, {L, N} | Tail];
pure_insert(L, [H | T]) ->
    [H | pure_insert(L, T)].

statistic_collector() ->
    statistic_collector(5).

statistic_collector(0) ->
    exit(normal);
statistic_collector(I) ->
    timer:sleep(300),
    case global:whereis_name(pool_master) of
        undefined ->
            statistic_collector(I - 1);
        M ->
            stat_loop(M, 999999)
    end.

stat_loop(M, Old) ->
    timer:sleep(2000),
    case statistics(run_queue) of
        Old ->
            stat_loop(M, Old);
        NewLoad ->
            M ! {node(), load, NewLoad},
            stat_loop(M, NewLoad)
    end.



