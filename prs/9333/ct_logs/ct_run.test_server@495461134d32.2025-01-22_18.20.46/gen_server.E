-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.2/src/gen_server.erl", 1).

-module(gen_server).

-compile(nowarn_deprecated_catch).

-export([start/3,
         start/4,
         start_link/3,
         start_link/4,
         start_monitor/3,
         start_monitor/4,
         stop/1,
         stop/3,
         call/2,
         call/3,
         send_request/2,
         send_request/4,
         wait_response/2,
         receive_response/2,
         check_response/2,
         wait_response/3,
         receive_response/3,
         check_response/3,
         reqids_new/0,
         reqids_size/1,
         reqids_add/3,
         reqids_to_list/1,
         cast/2,
         reply/2,
         abcast/2,
         abcast/3,
         multi_call/2,
         multi_call/3,
         multi_call/4,
         enter_loop/3,
         enter_loop/4,
         enter_loop/5,
         wake_hib/3]).

-export([system_continue/3,
         system_terminate/4,
         system_code_change/4,
         system_get_state/1,
         system_replace_state/2,
         format_status/2]).

-behaviour(sys).

-export([format_log/1,format_log/2]).

-export([init_it/6]).

-file("/buildroot/otp/Erlang ∅⊤℞/lib/kernel-10.2/include/logger.hrl", 1).

-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.2/src/gen_server.erl",
      220).

-export_type([from/0,
              reply_tag/0,
              request_id/0,
              request_id_collection/0,
              format_status/0]).

-export_type([server_name/0,
              server_ref/0,
              start_opt/0,
              enter_loop_opt/0,
              start_ret/0,
              start_mon_ret/0]).

-record(callback_cache,{handle_call ::
                            fun((Request :: term(),
                                 From :: from(),
                                 State :: term()) ->
                                    {reply,
                                     Reply :: term(),
                                     NewState :: term()} |
                                    {reply,
                                     Reply :: term(),
                                     NewState :: term(),
                                     timeout() |
                                     hibernate |
                                     {continue, term()}} |
                                    {noreply, NewState :: term()} |
                                    {noreply,
                                     NewState :: term(),
                                     timeout() |
                                     hibernate |
                                     {continue, term()}} |
                                    {stop,
                                     Reason :: term(),
                                     Reply :: term(),
                                     NewState :: term()} |
                                    {stop,
                                     Reason :: term(),
                                     NewState :: term()}),
                        handle_cast ::
                            fun((Request :: term(), State :: term()) ->
                                    {noreply, NewState :: term()} |
                                    {noreply,
                                     NewState :: term(),
                                     timeout() |
                                     hibernate |
                                     {continue, term()}} |
                                    {stop,
                                     Reason :: term(),
                                     NewState :: term()}),
                        handle_info ::
                            fun((Info :: timeout | term(),
                                 State :: term()) ->
                                    {noreply, NewState :: term()} |
                                    {noreply,
                                     NewState :: term(),
                                     timeout() |
                                     hibernate |
                                     {continue, term()}} |
                                    {stop,
                                     Reason :: term(),
                                     NewState :: term()})}).

-record(server_data,{parent :: pid(),
                     name :: term(),
                     module :: module(),
                     callback_cache :: #callback_cache{},
                     hibernate_after :: timeout()}).

-callback init(Args :: term()) ->
                  {ok, State :: term()} |
                  {ok,
                   State :: term(),
                   timeout() | hibernate | {continue, term()}} |
                  {stop, Reason :: term()} |
                  ignore |
                  {error, Reason :: term()}.

-callback handle_call(Request :: term(),
                      From :: from(),
                      State :: term()) ->
                         {reply, Reply :: term(), NewState :: term()} |
                         {reply,
                          Reply :: term(),
                          NewState :: term(),
                          timeout() | hibernate | {continue, term()}} |
                         {noreply, NewState :: term()} |
                         {noreply,
                          NewState :: term(),
                          timeout() | hibernate | {continue, term()}} |
                         {stop,
                          Reason :: term(),
                          Reply :: term(),
                          NewState :: term()} |
                         {stop, Reason :: term(), NewState :: term()}.

-callback handle_cast(Request :: term(), State :: term()) ->
                         {noreply, NewState :: term()} |
                         {noreply,
                          NewState :: term(),
                          timeout() | hibernate | {continue, term()}} |
                         {stop, Reason :: term(), NewState :: term()}.

-callback handle_info(Info :: timeout | term(), State :: term()) ->
                         {noreply, NewState :: term()} |
                         {noreply,
                          NewState :: term(),
                          timeout() | hibernate | {continue, term()}} |
                         {stop, Reason :: term(), NewState :: term()}.

-callback handle_continue(Info :: term(), State :: term()) ->
                             {noreply, NewState :: term()} |
                             {noreply,
                              NewState :: term(),
                              timeout() | hibernate | {continue, term()}} |
                             {stop,
                              Reason :: term(),
                              NewState :: term()}.

-callback terminate(Reason ::
                        normal | shutdown | {shutdown, term()} | term(),
                    State :: term()) ->
                       term().

-callback code_change(OldVsn :: term() | {down, term()},
                      State :: term(),
                      Extra :: term()) ->
                         {ok, NewState :: term()} |
                         {error, Reason :: term()}.

-deprecated_callback({format_status, 2, "use format_status/1 instead"}).

-callback format_status(Opt, StatusData) -> Status
                           when
                               Opt :: normal | terminate,
                               StatusData :: [PDict | State],
                               PDict ::
                                   [{Key :: term(), Value :: term()}],
                               State :: term(),
                               Status :: term().

-type format_status() ::
          #{state => term(),
            message => term(),
            reason => term(),
            log => [sys:system_event()]}.

-callback format_status(Status) -> NewStatus
                           when
                               Status :: format_status(),
                               NewStatus :: format_status().

-optional_callbacks([handle_info/2,
                     handle_continue/2,
                     terminate/2,
                     code_change/3,
                     format_status/1,
                     format_status/2]).

-type from() :: {Client :: pid(), Tag :: reply_tag()}.

-opaque reply_tag() :: gen:reply_tag().

-opaque request_id() :: gen:request_id().

-opaque request_id_collection() :: gen:request_id_collection().

-type response_timeout() :: timeout() | {abs, integer()}.

-type server_name() ::
          {local, LocalName :: atom()} |
          {global, GlobalName :: term()} |
          {via, RegMod :: module(), ViaName :: term()}.

-type server_ref() ::
          pid() |
          (LocalName :: atom()) |
          {Name :: atom(), Node :: atom()} |
          {global, GlobalName :: term()} |
          {via, RegMod :: module(), ViaName :: term()}.

-type start_opt() ::
          {timeout, Timeout :: timeout()} |
          {spawn_opt, SpawnOptions :: [proc_lib:start_spawn_option()]} |
          enter_loop_opt().

-type enter_loop_opt() ::
          {hibernate_after, HibernateAfterTimeout :: timeout()} |
          {debug, Dbgs :: [sys:debug_option()]}.

-type start_ret() ::
          {ok, Pid :: pid()} | ignore | {error, Reason :: term()}.

-type start_mon_ret() ::
          {ok, {Pid :: pid(), MonRef :: reference()}} |
          ignore |
          {error, Reason :: term()}.

-spec start(Module :: module(),
            Args :: term(),
            Options :: [start_opt()]) ->
               start_ret().

start(Module, Args, Options) when is_atom(Module), is_list(Options) ->
    gen:start(gen_server, nolink, Module, Args, Options);
start(Module, Args, Options) ->
    error(badarg, [Module, Args, Options]).

-spec start(ServerName :: server_name(),
            Module :: module(),
            Args :: term(),
            Options :: [start_opt()]) ->
               start_ret().

start(ServerName, Module, Args, Options)
    when is_tuple(ServerName), is_atom(Module), is_list(Options) ->
    gen:start(gen_server, nolink, ServerName, Module, Args, Options);
start(ServerName, Module, Args, Options) ->
    error(badarg, [ServerName, Module, Args, Options]).

-spec start_link(Module :: module(),
                 Args :: term(),
                 Options :: [start_opt()]) ->
                    start_ret().

start_link(Module, Args, Options) when is_atom(Module), is_list(Options) ->
    gen:start(gen_server, link, Module, Args, Options);
start_link(Module, Args, Options) ->
    error(badarg, [Module, Args, Options]).

-spec start_link(ServerName :: server_name(),
                 Module :: module(),
                 Args :: term(),
                 Options :: [start_opt()]) ->
                    start_ret().

start_link(ServerName, Module, Args, Options)
    when is_tuple(ServerName), is_atom(Module), is_list(Options) ->
    gen:start(gen_server, link, ServerName, Module, Args, Options);
start_link(ServerName, Module, Args, Options) ->
    error(badarg, [ServerName, Module, Args, Options]).

-spec start_monitor(Module :: module(),
                    Args :: term(),
                    Options :: [start_opt()]) ->
                       start_mon_ret().

start_monitor(Module, Args, Options)
    when is_atom(Module), is_list(Options) ->
    gen:start(gen_server, monitor, Module, Args, Options);
start_monitor(Module, Args, Options) ->
    error(badarg, [Module, Args, Options]).

-spec start_monitor(ServerName :: server_name(),
                    Module :: module(),
                    Args :: term(),
                    Options :: [start_opt()]) ->
                       start_mon_ret().

start_monitor(ServerName, Module, Args, Options)
    when is_tuple(ServerName), is_atom(Module), is_list(Options) ->
    gen:start(gen_server, monitor, ServerName, Module, Args, Options);
start_monitor(ServerName, Module, Args, Options) ->
    error(badarg, [ServerName, Module, Args, Options]).

-spec stop(ServerRef :: server_ref()) -> ok.

stop(ServerRef) ->
    gen:stop(ServerRef).

-spec stop(ServerRef :: server_ref(),
           Reason :: term(),
           Timeout :: timeout()) ->
              ok.

stop(ServerRef, Reason, Timeout) ->
    gen:stop(ServerRef, Reason, Timeout).

-spec call(ServerRef :: server_ref(), Request :: term()) ->
              Reply :: term().

call(ServerRef, Request) ->
    case catch gen:call(ServerRef, '$gen_call', Request) of
        {ok, Res} ->
            Res;
        {'EXIT', Reason} ->
            exit({Reason, {gen_server, call, [ServerRef, Request]}})
    end.

-spec call(ServerRef :: server_ref(),
           Request :: term(),
           Timeout :: timeout()) ->
              Reply :: term().

call(ServerRef, Request, Timeout) ->
    case catch gen:call(ServerRef, '$gen_call', Request, Timeout) of
        {ok, Res} ->
            Res;
        {'EXIT', Reason} ->
            exit({Reason,
                  {gen_server, call, [ServerRef, Request, Timeout]}})
    end.

-spec send_request(ServerRef :: server_ref(), Request :: term()) ->
                      ReqId :: request_id().

send_request(ServerRef, Request) ->
    try
        gen:send_request(ServerRef, '$gen_call', Request)
    catch
        error:badarg ->
            error(badarg, [ServerRef, Request])
    end.

-spec send_request(ServerRef :: server_ref(),
                   Request :: term(),
                   Label :: term(),
                   ReqIdCollection :: request_id_collection()) ->
                      NewReqIdCollection :: request_id_collection().

send_request(ServerRef, Request, Label, ReqIdCol) ->
    try
        gen:send_request(ServerRef, '$gen_call', Request, Label,
                         ReqIdCol)
    catch
        error:badarg ->
            error(badarg, [ServerRef, Request, Label, ReqIdCol])
    end.

-spec wait_response(ReqId, WaitTime) -> Result
                       when
                           ReqId :: request_id(),
                           WaitTime :: response_timeout(),
                           Response ::
                               {reply, Reply :: term()} |
                               {error, {Reason :: term(), server_ref()}},
                           Result :: Response | timeout.

wait_response(ReqId, WaitTime) ->
    try
        gen:wait_response(ReqId, WaitTime)
    catch
        error:badarg ->
            error(badarg, [ReqId, WaitTime])
    end.

-spec wait_response(ReqIdCollection, WaitTime, Delete) -> Result
                       when
                           ReqIdCollection :: request_id_collection(),
                           WaitTime :: response_timeout(),
                           Delete :: boolean(),
                           Response ::
                               {reply, Reply :: term()} |
                               {error, {Reason :: term(), server_ref()}},
                           Result ::
                               {Response,
                                Label :: term(),
                                NewReqIdCollection ::
                                    request_id_collection()} |
                               no_request | timeout.

wait_response(ReqIdCol, WaitTime, Delete) ->
    try
        gen:wait_response(ReqIdCol, WaitTime, Delete)
    catch
        error:badarg ->
            error(badarg, [ReqIdCol, WaitTime, Delete])
    end.

-spec receive_response(ReqId, Timeout) -> Result
                          when
                              ReqId :: request_id(),
                              Timeout :: response_timeout(),
                              Response ::
                                  {reply, Reply :: term()} |
                                  {error,
                                   {Reason :: term(), server_ref()}},
                              Result :: Response | timeout.

receive_response(ReqId, Timeout) ->
    try
        gen:receive_response(ReqId, Timeout)
    catch
        error:badarg ->
            error(badarg, [ReqId, Timeout])
    end.

-spec receive_response(ReqIdCollection, Timeout, Delete) -> Result
                          when
                              ReqIdCollection :: request_id_collection(),
                              Timeout :: response_timeout(),
                              Delete :: boolean(),
                              Response ::
                                  {reply, Reply :: term()} |
                                  {error,
                                   {Reason :: term(), server_ref()}},
                              Result ::
                                  {Response,
                                   Label :: term(),
                                   NewReqIdCollection ::
                                       request_id_collection()} |
                                  no_request | timeout.

receive_response(ReqIdCol, Timeout, Delete) ->
    try
        gen:receive_response(ReqIdCol, Timeout, Delete)
    catch
        error:badarg ->
            error(badarg, [ReqIdCol, Timeout, Delete])
    end.

-spec check_response(Msg, ReqId) -> Result
                        when
                            Msg :: term(),
                            ReqId :: request_id(),
                            Response ::
                                {reply, Reply :: term()} |
                                {error,
                                 {Reason :: term(), server_ref()}},
                            Result :: Response | no_reply.

check_response(Msg, ReqId) ->
    try
        gen:check_response(Msg, ReqId)
    catch
        error:badarg ->
            error(badarg, [Msg, ReqId])
    end.

-spec check_response(Msg, ReqIdCollection, Delete) -> Result
                        when
                            Msg :: term(),
                            ReqIdCollection :: request_id_collection(),
                            Delete :: boolean(),
                            Response ::
                                {reply, Reply :: term()} |
                                {error,
                                 {Reason :: term(), server_ref()}},
                            Result ::
                                {Response,
                                 Label :: term(),
                                 NewReqIdCollection ::
                                     request_id_collection()} |
                                no_request | no_reply.

check_response(Msg, ReqIdCol, Delete) ->
    try
        gen:check_response(Msg, ReqIdCol, Delete)
    catch
        error:badarg ->
            error(badarg, [Msg, ReqIdCol, Delete])
    end.

-spec reqids_new() -> NewReqIdCollection :: request_id_collection().

reqids_new() ->
    gen:reqids_new().

-spec reqids_size(ReqIdCollection :: request_id_collection()) ->
                     non_neg_integer().

reqids_size(ReqIdCollection) ->
    try
        gen:reqids_size(ReqIdCollection)
    catch
        error:badarg ->
            error(badarg, [ReqIdCollection])
    end.

-spec reqids_add(ReqId :: request_id(),
                 Label :: term(),
                 ReqIdCollection :: request_id_collection()) ->
                    NewReqIdCollection :: request_id_collection().

reqids_add(ReqId, Label, ReqIdCollection) ->
    try
        gen:reqids_add(ReqId, Label, ReqIdCollection)
    catch
        error:badarg ->
            error(badarg, [ReqId, Label, ReqIdCollection])
    end.

-spec reqids_to_list(ReqIdCollection :: request_id_collection()) ->
                        [{ReqId :: request_id(), Label :: term()}].

reqids_to_list(ReqIdCollection) ->
    try
        gen:reqids_to_list(ReqIdCollection)
    catch
        error:badarg ->
            error(badarg, [ReqIdCollection])
    end.

-spec cast(ServerRef :: server_ref(), Request :: term()) -> ok.

cast({global, Name}, Request) ->
    catch global:send(Name, cast_msg(Request)),
    ok;
cast({via, Mod, Name}, Request) ->
    catch Mod:send(Name, cast_msg(Request)),
    ok;
cast({Name, Node} = Dest, Request) when is_atom(Name), is_atom(Node) ->
    do_cast(Dest, Request);
cast(Dest, Request) when is_atom(Dest) ->
    do_cast(Dest, Request);
cast(Dest, Request) when is_pid(Dest) ->
    do_cast(Dest, Request).

do_cast(Dest, Request) ->
    do_send(Dest, cast_msg(Request)),
    ok.

cast_msg(Request) ->
    {'$gen_cast', Request}.

-spec reply(Client :: from(), Reply :: term()) -> ok.

reply(Client, Reply) ->
    gen:reply(Client, Reply).

-spec abcast(Name :: atom(), Request :: term()) -> abcast.

abcast(Name, Request) when is_atom(Name) ->
    do_abcast([node() | nodes()], Name, cast_msg(Request)).

-spec abcast(Nodes :: [node()], Name :: atom(), Request :: term()) ->
                abcast.

abcast(Nodes, Name, Request) when is_list(Nodes), is_atom(Name) ->
    do_abcast(Nodes, Name, cast_msg(Request)).

do_abcast([Node | Nodes], Name, Msg) when is_atom(Node) ->
    do_send({Name, Node}, Msg),
    do_abcast(Nodes, Name, Msg);
do_abcast([], _, _) ->
    abcast.

-spec multi_call(Name :: atom(), Request :: term()) ->
                    {Replies :: [{Node :: node(), Reply :: term()}],
                     BadNodes :: [node()]}.

multi_call(Name, Request) when is_atom(Name) ->
    multi_call([node() | nodes()], Name, Request, infinity).

-spec multi_call(Nodes :: [node()], Name :: atom(), Request :: term()) ->
                    {Replies :: [{Node :: node(), Reply :: term()}],
                     BadNodes :: [node()]}.

multi_call(Nodes, Name, Request) when is_list(Nodes), is_atom(Name) ->
    multi_call(Nodes, Name, Request, infinity).

-spec multi_call(Nodes :: [node()],
                 Name :: atom(),
                 Request :: term(),
                 Timeout :: timeout()) ->
                    {Replies :: [{Node :: node(), Reply :: term()}],
                     BadNodes :: [node()]}.

multi_call(Nodes, Name, Request, Timeout)
    when
        is_list(Nodes),
        is_atom(Name),
        Timeout =:= infinity
        orelse
        is_integer(Timeout)
        andalso
        Timeout >= 0 ->
    Alias = alias(),
    try
        Timer =
            if
                Timeout == infinity ->
                    undefined;
                true ->
                    erlang:start_timer(Timeout, self(), Alias)
            end,
        Reqs = mc_send(Nodes, Name, Alias, Request, Timer, []),
        mc_recv(Reqs, Alias, Timer, [], [])
    after
        _ = unalias(Alias)
    end.

-dialyzer({no_improper_lists, {mc_send, 6}}).

mc_send([], _Name, _Alias, _Request, _Timer, Reqs) ->
    Reqs;
mc_send([Node | Nodes], Name, Alias, Request, Timer, Reqs)
    when is_atom(Node) ->
    NN = {Name, Node},
    Mon =
        try
            monitor(process, NN, [{tag, Alias}])
        catch
            error:badarg ->
                M = make_ref(),
                Alias ! {Alias, M, process, NN, noconnection},
                M
        end,
    try
        _ = erlang:send(NN,
                        {'$gen_call',
                         {self(), [[alias | Alias] | Mon]},
                         Request},
                        [noconnect]),
        ok
    catch
        _:_ ->
            ok
    end,
    mc_send(Nodes, Name, Alias, Request, Timer, [[Node | Mon] | Reqs]);
mc_send(_BadNodes, _Name, Alias, _Request, Timer, Reqs) ->
    unalias(Alias),
    mc_cancel_timer(Timer, Alias),
    _ = mc_recv_tmo(Reqs, Alias, [], []),
    error(badarg).

mc_recv([], Alias, Timer, Replies, BadNodes) ->
    mc_cancel_timer(Timer, Alias),
    unalias(Alias),
    {Replies, BadNodes};
mc_recv([[Node | Mon] | RestReqs] = Reqs,
        Alias, Timer, Replies, BadNodes) ->
    receive
        {[[alias | Alias] | Mon], Reply} ->
            demonitor(Mon, [flush]),
            mc_recv(RestReqs, Alias, Timer,
                    [{Node, Reply} | Replies],
                    BadNodes);
        {Alias, Mon, process, _, _} ->
            mc_recv(RestReqs, Alias, Timer, Replies, [Node | BadNodes]);
        {timeout, Timer, Alias} ->
            unalias(Alias),
            mc_recv_tmo(Reqs, Alias, Replies, BadNodes)
    end.

mc_recv_tmo([], _Alias, Replies, BadNodes) ->
    {Replies, BadNodes};
mc_recv_tmo([[Node | Mon] | RestReqs], Alias, Replies, BadNodes) ->
    demonitor(Mon),
    receive
        {[[alias | Alias] | Mon], Reply} ->
            mc_recv_tmo(RestReqs, Alias,
                        [{Node, Reply} | Replies],
                        BadNodes);
        {Alias, Mon, process, _, _} ->
            mc_recv_tmo(RestReqs, Alias, Replies, [Node | BadNodes])
    after
        0 -> mc_recv_tmo(RestReqs, Alias, Replies, [Node | BadNodes])
    end.

mc_cancel_timer(undefined, _Alias) ->
    ok;
mc_cancel_timer(Timer, Alias) ->
    case erlang:cancel_timer(Timer) of
        false ->
            receive
                {timeout, Timer, Alias} ->
                    ok
            end;
        _ ->
            ok
    end.

-spec enter_loop(Module :: module(),
                 Options :: [enter_loop_opt()],
                 State :: term()) ->
                    no_return().

enter_loop(Mod, Options, State) when is_atom(Mod), is_list(Options) ->
    enter_loop(Mod, Options, State, self(), infinity).

-spec enter_loop(Module :: module(),
                 Options :: [enter_loop_opt()],
                 State :: term(),
                 ServerName :: server_name() | pid()) ->
                    no_return();
                (Module :: module(),
                 Options :: [enter_loop_opt()],
                 State :: term(),
                 How :: timeout() | hibernate | {continue, term()}) ->
                    no_return().

enter_loop(Mod, Options, State, ServerName = {Scope, _})
    when
        is_atom(Mod), is_list(Options), Scope == local;
        is_atom(Mod), is_list(Options), Scope == global ->
    enter_loop(Mod, Options, State, ServerName, infinity);
enter_loop(Mod, Options, State, ServerName = {via, _, _})
    when is_atom(Mod), is_list(Options) ->
    enter_loop(Mod, Options, State, ServerName, infinity);
enter_loop(Mod, Options, State, TimeoutOrHibernate)
    when
        is_atom(Mod),
        is_list(Options),
        TimeoutOrHibernate =:= infinity
        orelse
        is_integer(TimeoutOrHibernate)
        andalso
        TimeoutOrHibernate >= 0;
        is_atom(Mod), is_list(Options), TimeoutOrHibernate =:= hibernate ->
    enter_loop(Mod, Options, State, self(), TimeoutOrHibernate);
enter_loop(Mod, Options, State, {continue, _} = Continue)
    when is_atom(Mod), is_list(Options) ->
    enter_loop(Mod, Options, State, self(), Continue).

-spec enter_loop(Module :: module(),
                 Options :: [enter_loop_opt()],
                 State :: term(),
                 ServerName :: server_name() | pid(),
                 Timeout :: timeout()) ->
                    no_return();
                (Module :: module(),
                 Options :: [enter_loop_opt()],
                 State :: term(),
                 ServerName :: server_name() | pid(),
                 Hibernate :: hibernate) ->
                    no_return();
                (Module :: module(),
                 Options :: [enter_loop_opt()],
                 State :: term(),
                 ServerName :: server_name() | pid(),
                 Cont :: {continue, term()}) ->
                    no_return().

enter_loop(Mod, Options, State, ServerName, TimeoutOrHibernate)
    when
        is_atom(Mod),
        is_list(Options),
        TimeoutOrHibernate =:= infinity
        orelse
        is_integer(TimeoutOrHibernate)
        andalso
        TimeoutOrHibernate >= 0;
        is_atom(Mod), is_list(Options), TimeoutOrHibernate =:= hibernate ->
    Name = gen:get_proc_name(ServerName),
    loop({server_data,
          gen:get_parent(),
          Name, Mod,
          create_callback_cache(Mod),
          gen:hibernate_after(Options)},
         State, TimeoutOrHibernate,
         gen:debug_options(Name, Options));
enter_loop(Mod, Options, State, ServerName, {continue, _} = Continue)
    when is_atom(Mod), is_list(Options) ->
    Name = gen:get_proc_name(ServerName),
    loop({server_data,
          gen:get_parent(),
          Name, Mod,
          create_callback_cache(Mod),
          gen:hibernate_after(Options)},
         State, Continue,
         gen:debug_options(Name, Options)).

init_it(Starter, self, Name, Mod, Args, Options) ->
    init_it(Starter, self(), Name, Mod, Args, Options);
init_it(Starter, Parent, Name0, Mod, Args, Options) ->
    Name = gen:name(Name0),
    ServerData =
        {server_data, Parent, Name, Mod,
         create_callback_cache(Mod),
         gen:hibernate_after(Options)},
    Debug = gen:debug_options(Name, Options),
    case init_it(Mod, Args) of
        {ok, {ok, State}} ->
            proc_lib:init_ack(Starter, {ok, self()}),
            loop(ServerData, State, infinity, Debug);
        {ok, {ok, State, TimeoutOrHibernate}}
            when
                TimeoutOrHibernate =:= infinity
                orelse
                is_integer(TimeoutOrHibernate)
                andalso
                TimeoutOrHibernate >= 0;
                TimeoutOrHibernate =:= hibernate ->
            proc_lib:init_ack(Starter, {ok, self()}),
            loop(ServerData, State, TimeoutOrHibernate, Debug);
        {ok, {ok, State, {continue, _} = Continue}} ->
            proc_lib:init_ack(Starter, {ok, self()}),
            loop(ServerData, State, Continue, Debug);
        {ok, {stop, Reason}} ->
            gen:unregister_name(Name0),
            exit(Reason);
        {ok, {error, _Reason} = ERROR} ->
            gen:unregister_name(Name0),
            proc_lib:init_fail(Starter, ERROR, {exit, normal});
        {ok, ignore} ->
            gen:unregister_name(Name0),
            proc_lib:init_fail(Starter, ignore, {exit, normal});
        {ok, Else} ->
            gen:unregister_name(Name0),
            exit({bad_return_value, Else});
        {'EXIT', Class, Reason, Stacktrace} ->
            gen:unregister_name(Name0),
            erlang:raise(Class, Reason, Stacktrace)
    end.

init_it(Mod, Args) ->
    try
        {ok, Mod:init(Args)}
    catch
        throw:R ->
            {ok, R};
        Class:R:S ->
            {'EXIT', Class, R, S}
    end.

loop(ServerData, State, {continue, Continue} = Msg, Debug) ->
    Reply = try_handle_continue(ServerData, State, Continue),
    case Debug of
        [] ->
            handle_common_reply(ServerData, State, Msg, undefined,
                                Reply);
        _ ->
            Debug1 =
                sys:handle_debug(Debug,
                                 fun print_event/3,
                                 case ServerData of
                                     {server_data, _, REC0, _, _, _} ->
                                         REC0;
                                     REC0 ->
                                         error({badrecord, REC0})
                                 end,
                                 Msg),
            handle_common_reply(ServerData, State, Msg, undefined,
                                Reply, Debug1)
    end;
loop(ServerData, State, hibernate, Debug) ->
    proc_lib:hibernate(gen_server, wake_hib, [ServerData, State, Debug]);
loop({server_data, _, _, _, _, HibernateAfterTimeout} = ServerData,
     State, infinity, Debug) ->
    receive
        Msg ->
            decode_msg(ServerData, State, Msg, infinity, Debug, false)
    after
        HibernateAfterTimeout ->
            loop(ServerData, State, hibernate, Debug)
    end;
loop(ServerData, State, Time, Debug) ->
    Msg =
        receive
            Input ->
                Input
        after
            Time -> timeout
        end,
    decode_msg(ServerData, State, Msg, Time, Debug, false).

-spec create_callback_cache(module()) -> #callback_cache{}.

create_callback_cache(Mod) ->
    {callback_cache,
     fun Mod:handle_call/3,
     fun Mod:handle_cast/2,
     fun Mod:handle_info/2}.

wake_hib({server_data, _, _, Mod, _, _} = ServerData, State, Debug) ->
    Msg =
        receive
            Input ->
                Input
        end,
    CbCache = create_callback_cache(Mod),
    decode_msg(begin
                   REC1 = ServerData,
                   case REC1 of
                       {server_data, _, _, _, _, _} ->
                           setelement(5, REC1, CbCache);
                       _ ->
                           error({badrecord, REC1})
                   end
               end,
               State, Msg, hibernate, Debug, true).

decode_msg({server_data, Parent, _, _, _, _} = ServerData,
           State, Msg, Time, Debug, Hib) ->
    case Msg of
        {system, From, Req} ->
            sys:handle_system_msg(Req, From, Parent, gen_server, Debug,
                                  [ServerData, State, Time],
                                  Hib);
        {'EXIT', Parent, Reason} ->
            terminate(ServerData, State, Msg, undefined, Reason,
                      element(2,
                              process_info(self(), current_stacktrace)),
                      Debug);
        _Msg when Debug =:= [] ->
            handle_msg(ServerData, State, Msg);
        _Msg ->
            Debug1 =
                sys:handle_debug(Debug,
                                 fun print_event/3,
                                 case ServerData of
                                     {server_data, _, REC2, _, _, _} ->
                                         REC2;
                                     REC2 ->
                                         error({badrecord, REC2})
                                 end,
                                 {in, Msg}),
            handle_msg(ServerData, State, Msg, Debug1)
    end.

do_send(Dest, Msg) ->
    try
        erlang:send(Dest, Msg)
    catch
        error:_ ->
            ok
    end,
    ok.

try_dispatch(ServerData, State, {'$gen_cast', Msg}) ->
    try_handle_cast(ServerData, State, Msg);
try_dispatch(ServerData, State, Info) ->
    try_handle_info(ServerData, State, Info).

try_handle_continue({server_data, _, _, Mod, _, _}, State, Msg) ->
    try
        {ok, Mod:handle_continue(Msg, State)}
    catch
        throw:R ->
            {ok, R};
        Class:R:Stacktrace ->
            {'EXIT', Class, R, Stacktrace}
    end.

try_handle_info({server_data, _, _, Mod,
                 {callback_cache, _, _, HandleInfo},
                 _},
                State, Msg) ->
    try
        {ok, HandleInfo(Msg, State)}
    catch
        throw:R ->
            {ok, R};
        error:undef = R:Stacktrace ->
            case erlang:function_exported(Mod, handle_info, 2) of
                false ->
                    case logger:allow(warning, gen_server) of
                        true ->
                            apply(logger, macro_log,
                                  [#{mfa =>
                                         {gen_server, try_handle_info,
                                          3},
                                     line => 2358,
                                     file =>
                                         "/buildroot/otp/Erlang ∅⊤℞/lib"
                                         "/stdlib-6.2/src/gen_server.er"
                                         "l"},
                                   warning,
                                   #{label =>
                                         {gen_server, no_handle_info},
                                     module => Mod,
                                     message => Msg},
                                   #{domain => [otp],
                                     report_cb =>
                                         fun gen_server:format_log/2,
                                     error_logger =>
                                         #{tag => warning_msg,
                                           report_cb =>
                                               fun gen_server:format_log/1}}]);
                        false ->
                            ok
                    end,
                    {ok, {noreply, State}};
                true ->
                    {'EXIT', error, R, Stacktrace}
            end;
        Class:R:Stacktrace ->
            {'EXIT', Class, R, Stacktrace}
    end.

try_handle_cast({server_data, _, _, _,
                 {callback_cache, _, HandleCast, _},
                 _},
                State, Msg) ->
    try
        {ok, HandleCast(Msg, State)}
    catch
        throw:R ->
            {ok, R};
        Class:R:Stacktrace ->
            {'EXIT', Class, R, Stacktrace}
    end.

try_handle_call({server_data, _, _, _,
                 {callback_cache, HandleCall, _, _},
                 _},
                State, Msg, From) ->
    try
        {ok, HandleCall(Msg, From, State)}
    catch
        throw:R ->
            {ok, R};
        Class:R:Stacktrace ->
            {'EXIT', Class, R, Stacktrace}
    end.

try_terminate({server_data, _, _, Mod, _, _}, State, Reason) ->
    case erlang:function_exported(Mod, terminate, 2) of
        true ->
            try
                {ok, Mod:terminate(Reason, State)}
            catch
                throw:R ->
                    {ok, R};
                Class:R:Stacktrace ->
                    {'EXIT', Class, R, Stacktrace}
            end;
        false ->
            {ok, ok}
    end.

handle_msg(ServerData, State, {'$gen_call', From, Msg}) ->
    Result = try_handle_call(ServerData, State, Msg, From),
    case Result of
        {ok, {reply, Reply, NState}} ->
            reply(From, Reply),
            loop(ServerData, NState, infinity, []);
        {ok, {reply, Reply, NState, TimeoutOrHibernate}}
            when
                TimeoutOrHibernate =:= infinity
                orelse
                is_integer(TimeoutOrHibernate)
                andalso
                TimeoutOrHibernate >= 0;
                TimeoutOrHibernate =:= hibernate ->
            reply(From, Reply),
            loop(ServerData, NState, TimeoutOrHibernate, []);
        {ok, {reply, Reply, NState, {continue, _} = Continue}} ->
            reply(From, Reply),
            loop(ServerData, NState, Continue, []);
        {ok, {stop, Reason, Reply, NState}} ->
            try
                terminate(ServerData, NState, Msg, From, Reason,
                          element(2,
                                  process_info(self(),
                                               current_stacktrace)),
                          [])
            after
                reply(From, Reply)
            end;
        Other ->
            handle_common_reply(ServerData, State, Msg, From, Other)
    end;
handle_msg(ServerData, State, Msg) ->
    Reply = try_dispatch(ServerData, State, Msg),
    handle_common_reply(ServerData, State, Msg, undefined, Reply).

handle_msg({server_data, _, Name, _, _, _} = ServerData,
           State,
           {'$gen_call', From, Msg},
           Debug) ->
    Result = try_handle_call(ServerData, State, Msg, From),
    case Result of
        {ok, {reply, Reply, NState}} ->
            Debug1 = reply(Name, From, Reply, NState, Debug),
            loop(ServerData, NState, infinity, Debug1);
        {ok, {reply, Reply, NState, TimeoutOrHibernate}}
            when
                TimeoutOrHibernate =:= infinity
                orelse
                is_integer(TimeoutOrHibernate)
                andalso
                TimeoutOrHibernate >= 0;
                TimeoutOrHibernate =:= hibernate ->
            Debug1 = reply(Name, From, Reply, NState, Debug),
            loop(ServerData, NState, TimeoutOrHibernate, Debug1);
        {ok, {reply, Reply, NState, {continue, _} = Continue}} ->
            Debug1 = reply(Name, From, Reply, NState, Debug),
            loop(ServerData, NState, Continue, Debug1);
        {ok, {stop, Reason, Reply, NState}} ->
            try
                terminate(ServerData, NState, Msg, From, Reason,
                          element(2,
                                  process_info(self(),
                                               current_stacktrace)),
                          Debug)
            after
                _ = reply(Name, From, Reply, NState, Debug)
            end;
        Other ->
            handle_common_reply(ServerData, State, Msg, From, Other,
                                Debug)
    end;
handle_msg(ServerData, State, Msg, Debug) ->
    Reply = try_dispatch(ServerData, State, Msg),
    handle_common_reply(ServerData, State, Msg, undefined, Reply, Debug).

handle_common_reply(ServerData, State, Msg, From, Reply) ->
    case Reply of
        {ok, {noreply, NState}} ->
            loop(ServerData, NState, infinity, []);
        {ok, {noreply, NState, TimeoutOrHibernate}}
            when
                TimeoutOrHibernate =:= infinity
                orelse
                is_integer(TimeoutOrHibernate)
                andalso
                TimeoutOrHibernate >= 0;
                TimeoutOrHibernate =:= hibernate ->
            loop(ServerData, NState, TimeoutOrHibernate, []);
        {ok, {noreply, NState, {continue, _} = Continue}} ->
            loop(ServerData, NState, Continue, []);
        {ok, {stop, Reason, NState}} ->
            terminate(ServerData, NState, Msg, From, Reason,
                      element(2,
                              process_info(self(), current_stacktrace)),
                      []);
        {'EXIT', Class, Reason, Stacktrace} ->
            terminate(ServerData, State, Msg, From, Class, Reason,
                      Stacktrace, []);
        {ok, BadReply} ->
            terminate(ServerData, State, Msg, From,
                      {bad_return_value, BadReply},
                      element(2,
                              process_info(self(), current_stacktrace)),
                      [])
    end.

handle_common_reply({server_data, _, Name, _, _, _} = ServerData,
                    State, Msg, From, Reply, Debug) ->
    case Reply of
        {ok, {noreply, NState}} ->
            Debug1 =
                sys:handle_debug(Debug,
                                 fun print_event/3,
                                 Name,
                                 {noreply, NState}),
            loop(ServerData, NState, infinity, Debug1);
        {ok, {noreply, NState, TimeoutOrHibernate}}
            when
                TimeoutOrHibernate =:= infinity
                orelse
                is_integer(TimeoutOrHibernate)
                andalso
                TimeoutOrHibernate >= 0;
                TimeoutOrHibernate =:= hibernate ->
            Debug1 =
                sys:handle_debug(Debug,
                                 fun print_event/3,
                                 Name,
                                 {noreply, NState}),
            loop(ServerData, NState, TimeoutOrHibernate, Debug1);
        {ok, {noreply, NState, {continue, _} = Continue}} ->
            Debug1 =
                sys:handle_debug(Debug,
                                 fun print_event/3,
                                 Name,
                                 {noreply, NState}),
            loop(ServerData, NState, Continue, Debug1);
        {ok, {stop, Reason, NState}} ->
            terminate(ServerData, NState, Msg, From, Reason,
                      element(2,
                              process_info(self(), current_stacktrace)),
                      Debug);
        {'EXIT', Class, Reason, Stacktrace} ->
            terminate(ServerData, State, Msg, From, Class, Reason,
                      Stacktrace, Debug);
        {ok, BadReply} ->
            terminate(ServerData, State, Msg, From,
                      {bad_return_value, BadReply},
                      element(2,
                              process_info(self(), current_stacktrace)),
                      Debug)
    end.

reply(Name, From, Reply, State, Debug) ->
    reply(From, Reply),
    sys:handle_debug(Debug,
                     fun print_event/3,
                     Name,
                     {out, Reply, From, State}).

system_continue(Parent, Debug,
                [{server_data, Parent, _, _, _, _} = ServerData,
                 State, Time]) ->
    loop(ServerData, State, Time, Debug).

-spec system_terminate(_, _, _, [_]) -> no_return().

system_terminate(Reason, _Parent, Debug, [ServerData, State, _Time]) ->
    terminate(ServerData, State, [], undefined, Reason,
              element(2, process_info(self(), current_stacktrace)),
              Debug).

system_code_change([{server_data, _, _, Mod, _, _} = ServerData,
                    State, Time],
                   _Module, OldVsn, Extra) ->
    case catch Mod:code_change(OldVsn, State, Extra) of
        {ok, NewState} ->
            {ok, [ServerData, NewState, Time]};
        Else ->
            Else
    end.

system_get_state([_ServerData, State, _Time]) ->
    {ok, State}.

system_replace_state(StateFun, [ServerData, State, Time]) ->
    NState = StateFun(State),
    {ok, NState, [ServerData, NState, Time]}.

print_event(Dev, {in, Msg}, Name) ->
    case Msg of
        {'$gen_call', {From, _Tag}, Call} ->
            io:format(Dev,
                      "*DBG* ~tp got call ~tp from ~tw~n",
                      [Name, Call, From]);
        {'$gen_cast', Cast} ->
            io:format(Dev, "*DBG* ~tp got cast ~tp~n", [Name, Cast]);
        _ ->
            io:format(Dev, "*DBG* ~tp got ~tp~n", [Name, Msg])
    end;
print_event(Dev, {out, Msg, {To, _Tag}, State}, Name) ->
    io:format(Dev,
              "*DBG* ~tp sent ~tp to ~tw, new state ~tp~n",
              [Name, Msg, To, State]);
print_event(Dev, {noreply, State}, Name) ->
    io:format(Dev, "*DBG* ~tp new state ~tp~n", [Name, State]);
print_event(Dev, Event, Name) ->
    io:format(Dev, "*DBG* ~tp dbg  ~tp~n", [Name, Event]).

-spec terminate(_, _, _, _, _, _, _) -> no_return().

terminate(ServerData, State, Msg, From, Reason, Stacktrace, Debug) ->
    terminate(ServerData, State, Msg, From, exit, Reason, Stacktrace,
              Debug, false).

-spec terminate(_, _, _, _, _, _, _, _) -> no_return().

terminate(ServerData, State, Msg, From, Class, Reason, Stacktrace,
          Debug) ->
    terminate(ServerData, State, Msg, From, Class, Reason, Stacktrace,
              Debug, true).

-spec terminate(_, _, _, _, _, _, _, _, _) -> no_return().

terminate(ServerData, State, Msg, From, Class, Reason, Stacktrace,
          Debug, ReportStacktrace) ->
    Reply =
        try_terminate(ServerData, State,
                      catch_result(Class, Reason, Stacktrace)),
    case Reply of
        {'EXIT', C, R, S} ->
            error_info(ServerData, State, Msg, From, R, S, Debug),
            erlang:raise(C, R, S);
        _ ->
            case {Class, Reason} of
                {exit, normal} ->
                    ok;
                {exit, shutdown} ->
                    ok;
                {exit, {shutdown, _}} ->
                    ok;
                _ when ReportStacktrace ->
                    error_info(ServerData, State, Msg, From, Reason,
                               Stacktrace, Debug);
                _ ->
                    error_info(ServerData, State, Msg, From, Reason,
                               undefined, Debug)
            end
    end,
    case Stacktrace of
        [] ->
            erlang:Class(Reason);
        _ ->
            erlang:raise(Class, Reason, Stacktrace)
    end.

catch_result(error, Reason, Stacktrace) ->
    {Reason, Stacktrace};
catch_result(exit, Reason, _Stacktrace) ->
    Reason.

error_info({server_data, _, application_controller, _, _, _},
           _State, _Msg, _From, _Reason, _ST, _Debug) ->
    ok;
error_info({server_data, _, Name, Mod, _, _},
           State, Msg, From, Reason, ST, Debug) ->
    Log = sys:get_log(Debug),
    Status =
        gen:format_status(Mod, terminate,
                          #{reason => Reason,
                            state => State,
                            message => Msg,
                            log => Log},
                          [get(), State]),
    ReportReason =
        if
            ST == undefined ->
                maps:get(reason, Status);
            true ->
                {maps:get(reason, Status), ST}
        end,
    case logger:allow(error, gen_server) of
        true ->
            apply(logger, macro_log,
                  [#{mfa => {gen_server, error_info, 7},
                     line => 2646,
                     file =>
                         "/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.2/src/"
                         "gen_server.erl"},
                   error,
                   #{label => {gen_server, terminate},
                     name => Name,
                     last_message => maps:get(message, Status),
                     state =>
                         maps:get('EXIT', Status,
                                  maps:get('$status', Status,
                                           maps:get(state, Status))),
                     log => format_log_state(Mod, maps:get(log, Status)),
                     reason => ReportReason,
                     client_info => client_stacktrace(From),
                     process_label => proc_lib:get_label(self())},
                   #{domain => [otp],
                     report_cb => fun gen_server:format_log/2,
                     error_logger =>
                         #{tag => error,
                           report_cb => fun gen_server:format_log/1}}]);
        false ->
            ok
    end,
    ok.

client_stacktrace(undefined) ->
    undefined;
client_stacktrace({From, _Tag}) ->
    client_stacktrace(From);
client_stacktrace(From) when is_pid(From), node(From) =:= node() ->
    case process_info(From, [current_stacktrace, registered_name]) of
        undefined ->
            {From, dead};
        [{current_stacktrace, Stacktrace}, {registered_name, []}] ->
            {From, {From, Stacktrace}};
        [{current_stacktrace, Stacktrace}, {registered_name, Name}] ->
            {From, {Name, Stacktrace}}
    end;
client_stacktrace(From) when is_pid(From) ->
    {From, remote}.

format_log(Report) ->
    Depth = error_logger:get_format_depth(),
    FormatOpts =
        #{chars_limit => unlimited,
          depth => Depth,
          single_line => false,
          encoding => utf8},
    format_log_multi(limit_report(Report, Depth), FormatOpts).

limit_report(Report, unlimited) ->
    Report;
limit_report(#{label := {gen_server, terminate},
               last_message := Msg,
               state := State,
               log := Log,
               reason := Reason,
               client_info := Client,
               process_label := ProcessLabel} =
                 Report,
             Depth) ->
    Report#{last_message => io_lib:limit_term(Msg, Depth),
            state => io_lib:limit_term(State, Depth),
            log =>
                [ 
                 io_lib:limit_term(L, Depth) ||
                     L <- Log
                ],
            reason => io_lib:limit_term(Reason, Depth),
            client_info => limit_client_report(Client, Depth),
            process_label => io_lib:limit_term(ProcessLabel, Depth)};
limit_report(#{label := {gen_server, no_handle_info}, message := Msg} =
                 Report,
             Depth) ->
    Report#{message => io_lib:limit_term(Msg, Depth)}.

limit_client_report({From, {Name, Stacktrace}}, Depth) ->
    {From, {Name, io_lib:limit_term(Stacktrace, Depth)}};
limit_client_report(Client, _) ->
    Client.

format_log(Report, FormatOpts0) ->
    Default =
        #{chars_limit => unlimited,
          depth => unlimited,
          single_line => false,
          encoding => utf8},
    FormatOpts = maps:merge(Default, FormatOpts0),
    IoOpts =
        case FormatOpts of
            #{chars_limit := unlimited} ->
                [];
            #{chars_limit := Limit} ->
                [{chars_limit, Limit}]
        end,
    {Format, Args} = format_log_single(Report, FormatOpts),
    io_lib:format(Format, Args, IoOpts).

format_log_single(#{label := {gen_server, terminate},
                    name := Name,
                    last_message := Msg,
                    state := State,
                    log := Log,
                    reason := Reason,
                    client_info := Client,
                    process_label := ProcessLabel},
                  #{single_line := true, depth := Depth} = FormatOpts) ->
    P = p(FormatOpts),
    Format1 =
        lists:append(["Generic server ",
                      P,
                      " terminating",
                      case ProcessLabel of
                          undefined ->
                              "";
                          _ ->
                              ". Label: " ++ P
                      end,
                      ". Reason: ",
                      P,
                      ". Last message: ",
                      P,
                      ". State: ",
                      P,
                      "."]),
    {ServerLogFormat, ServerLogArgs} =
        format_server_log_single(Log, FormatOpts),
    {ClientLogFormat, ClientLogArgs} =
        format_client_log_single(Client, FormatOpts),
    Args1 =
        case Depth of
            unlimited ->
                [Name]
                ++
                case ProcessLabel of
                    undefined ->
                        [];
                    _ ->
                        [ProcessLabel]
                end
                ++
                [fix_reason(Reason), Msg, State];
            _ ->
                [Name, Depth]
                ++
                case ProcessLabel of
                    undefined ->
                        [];
                    _ ->
                        [ProcessLabel, Depth]
                end
                ++
                [fix_reason(Reason), Depth, Msg, Depth, State, Depth]
        end,
    {Format1 ++ ServerLogFormat ++ ClientLogFormat,
     Args1 ++ ServerLogArgs ++ ClientLogArgs};
format_log_single(#{label := {gen_server, no_handle_info},
                    module := Mod,
                    message := Msg},
                  #{single_line := true, depth := Depth} = FormatOpts) ->
    P = p(FormatOpts),
    Format =
        lists:append(["Undefined handle_info in ",
                      P,
                      ". Unhandled message: ",
                      P,
                      "."]),
    Args =
        case Depth of
            unlimited ->
                [Mod, Msg];
            _ ->
                [Mod, Depth, Msg, Depth]
        end,
    {Format, Args};
format_log_single(Report, FormatOpts) ->
    format_log_multi(Report, FormatOpts).

format_log_multi(#{label := {gen_server, terminate},
                   name := Name,
                   last_message := Msg,
                   state := State,
                   log := Log,
                   reason := Reason,
                   client_info := Client,
                   process_label := ProcessLabel},
                 #{depth := Depth} = FormatOpts) ->
    Reason1 = fix_reason(Reason),
    {ClientFmt, ClientArgs} = format_client_log(Client, FormatOpts),
    P = p(FormatOpts),
    Format =
        lists:append(["** Generic server ", P, " terminating \n"]
                     ++
                     case ProcessLabel of
                         undefined ->
                             [];
                         _ ->
                             ["** Process label == ", P, "~n"]
                     end
                     ++
                     ["** Last message in was ",
                      P,
                      "~n** When Server state == ",
                      P,
                      "~n** Reason for termination ==~n** ",
                      P,
                      "~n"]
                     ++
                     case Log of
                         [] ->
                             [];
                         _ ->
                             ["** Log ==~n** [" |
                              lists:join(",~n    ",
                                         lists:duplicate(length(Log), P))]
                             ++
                             ["]~n"]
                     end)
        ++
        ClientFmt,
    Args =
        case Depth of
            unlimited ->
                [Name]
                ++
                case ProcessLabel of
                    undefined ->
                        [];
                    _ ->
                        [ProcessLabel]
                end
                ++
                [Msg, State, Reason1] ++ Log ++ ClientArgs;
            _ ->
                [Name, Depth]
                ++
                case ProcessLabel of
                    undefined ->
                        [];
                    _ ->
                        [ProcessLabel, Depth]
                end
                ++
                [Msg, Depth, State, Depth, Reason1, Depth]
                ++
                case Log of
                    [] ->
                        [];
                    _ ->
                        lists:flatmap(fun(L) ->
                                             [L, Depth]
                                      end,
                                      Log)
                end
                ++
                ClientArgs
        end,
    {Format, Args};
format_log_multi(#{label := {gen_server, no_handle_info},
                   module := Mod,
                   message := Msg},
                 #{depth := Depth} = FormatOpts) ->
    P = p(FormatOpts),
    Format =
        "** Undefined handle_info in ~p~n** Unhandled message: "
        ++
        P ++ "~n",
    Args =
        case Depth of
            unlimited ->
                [Mod, Msg];
            _ ->
                [Mod, Msg, Depth]
        end,
    {Format, Args}.

fix_reason({undef, [{M, F, A, L} | MFAs]} = Reason) ->
    case code:is_loaded(M) of
        false ->
            {'module could not be loaded', [{M, F, A, L} | MFAs]};
        _ ->
            case erlang:function_exported(M, F, length(A)) of
                true ->
                    Reason;
                false ->
                    {'function not exported', [{M, F, A, L} | MFAs]}
            end
    end;
fix_reason(Reason) ->
    Reason.

format_server_log_single([], _) ->
    {"", []};
format_server_log_single(Log, FormatOpts) ->
    Args =
        case maps:get(depth, FormatOpts) of
            unlimited ->
                [Log];
            Depth ->
                [Log, Depth]
        end,
    {" Log: " ++ p(FormatOpts), Args}.

format_client_log_single(undefined, _) ->
    {"", []};
format_client_log_single({From, dead}, _) ->
    {" Client ~0p is dead.", [From]};
format_client_log_single({From, remote}, _) ->
    {" Client ~0p is remote on node ~0p.", [From, node(From)]};
format_client_log_single({_From, {Name, Stacktrace0}}, FormatOpts) ->
    P = p(FormatOpts),
    Stacktrace = lists:sublist(Stacktrace0, 4),
    Args =
        case maps:get(depth, FormatOpts) of
            unlimited ->
                [Name, Stacktrace];
            Depth ->
                [Name, Depth, Stacktrace, Depth]
        end,
    {" Client " ++ P ++ " stacktrace: " ++ P ++ ".", Args}.

format_client_log(undefined, _) ->
    {"", []};
format_client_log({From, dead}, _) ->
    {"** Client ~p is dead~n", [From]};
format_client_log({From, remote}, _) ->
    {"** Client ~p is remote on node ~p~n", [From, node(From)]};
format_client_log({_From, {Name, Stacktrace}}, FormatOpts) ->
    P = p(FormatOpts),
    Format =
        lists:append(["** Client ", P, " stacktrace~n", "** ", P, "~n"]),
    Args =
        case maps:get(depth, FormatOpts) of
            unlimited ->
                [Name, Stacktrace];
            Depth ->
                [Name, Depth, Stacktrace, Depth]
        end,
    {Format, Args}.

p(#{single_line := Single, depth := Depth, encoding := Enc}) ->
    "~" ++ single(Single) ++ mod(Enc) ++ p(Depth);
p(unlimited) ->
    "p";
p(_Depth) ->
    "P".

single(true) ->
    "0";
single(false) ->
    "".

mod(latin1) ->
    "";
mod(_) ->
    "t".

format_status(Opt, StatusData) ->
    [PDict, SysState, Parent, Debug,
     [{server_data, Parent, Name, Mod, _, _}, State, _Time]] =
        StatusData,
    Header = gen:format_status_header("Status for generic server", Name),
    Status =
        case
            gen:format_status(Mod, Opt,
                              #{state => State,
                                log => sys:get_log(Debug)},
                              [PDict, State])
        of
            #{'EXIT' := R} = M ->
                M#{'$status' => [{data, [{"State", R}]}]};
            #{'$status' := S} = M when is_list(S) ->
                M;
            #{'$status' := S} = M ->
                M#{'$status' := [S]};
            #{state := S} = M ->
                M#{'$status' => [{data, [{"State", S}]}]}
        end,
    [{header, Header},
     {data,
      [{"Status", SysState},
       {"Parent", Parent},
       {"Logged events", format_log_state(Mod, maps:get(log, Status))}]} |
     maps:get('$status', Status)].

format_log_state(Mod, Log) ->
    case erlang:function_exported(Mod, format_status, 1) of
        false ->
            [ 
             case Event of
                 {out, Msg, From, State} ->
                     Status =
                         gen:format_status(Mod, terminate,
                                           #{state => State},
                                           [get(), State]),
                     {out, Msg, From, maps:get(state, Status)};
                 {noreply, State} ->
                     Status =
                         gen:format_status(Mod, terminate,
                                           #{state => State},
                                           [get(), State]),
                     {noreply, maps:get(state, Status)};
                 _ ->
                     Event
             end ||
                 Event <- Log
            ];
        true ->
            Log
    end.



