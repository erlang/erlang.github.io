-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.2/src/gen_statem.erl", 1).

-module(gen_statem).

-file("/buildroot/otp/Erlang ∅⊤℞/lib/kernel-10.2/include/logger.hrl", 1).

-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.2/src/gen_statem.erl",
      468).

-export([start/3,
         start/4,
         start_link/3,
         start_link/4,
         start_monitor/3,
         start_monitor/4,
         stop/1,
         stop/3,
         cast/2,
         call/2,
         call/3,
         send_request/2,
         send_request/4,
         wait_response/1,
         wait_response/2,
         wait_response/3,
         receive_response/1,
         receive_response/2,
         receive_response/3,
         check_response/2,
         check_response/3,
         reqids_new/0,
         reqids_size/1,
         reqids_add/3,
         reqids_to_list/1,
         enter_loop/4,
         enter_loop/5,
         enter_loop/6,
         reply/1,
         reply/2]).

-export([init_it/6]).

-export([system_continue/3,
         system_terminate/4,
         system_code_change/4,
         system_get_state/1,
         system_replace_state/2,
         format_status/2]).

-behaviour(sys).

-export([wakeup_from_hibernate/3]).

-export([format_log/1,format_log/2]).

-export_type([event_type/0,
              from/0,
              reply_tag/0,
              callback_mode_result/0,
              init_result/1,
              init_result/2,
              state_enter_result/1,
              state_enter_result/2,
              event_handler_result/1,
              event_handler_result/2,
              reply_action/0,
              enter_action/0,
              action/0,
              request_id/0,
              request_id_collection/0,
              format_status/0]).

-export_type([state_function_result/0,handle_event_result/0]).

-export_type([transition_option/0]).

-export_type([server_name/0,
              server_ref/0,
              start_opt/0,
              enter_loop_opt/0,
              start_ret/0,
              start_mon_ret/0]).

-type from() :: {To :: pid(), Tag :: reply_tag()}.

-opaque reply_tag() :: gen:reply_tag().

-type state() :: state_name() | term().

-type state_name() :: atom().

-type data() :: term().

-type event_type() ::
          external_event_type() | timeout_event_type() | internal.

-type external_event_type() :: {call, From :: from()} | cast | info.

-type timeout_event_type() ::
          timeout | {timeout, Name :: term()} | state_timeout.

-type event_content() :: term().

-type callback_mode_result() ::
          callback_mode() | [callback_mode() | state_enter()].

-type callback_mode() :: state_functions | handle_event_function.

-type state_enter() :: state_enter.

-type transition_option() ::
          postpone() |
          hibernate() |
          event_timeout() |
          generic_timeout() |
          state_timeout().

-type postpone() :: boolean().

-type hibernate() :: boolean().

-type event_timeout() :: Time :: timeout() | integer().

-type generic_timeout() :: Time :: timeout() | integer().

-type state_timeout() :: Time :: timeout() | integer().

-type timeout_option() :: {abs, Abs :: boolean()}.

-type action() ::
          postpone |
          {postpone, Postpone :: postpone()} |
          {next_event,
           EventType :: event_type(),
           EventContent :: event_content()} |
          {change_callback_module, NewModule :: module()} |
          {push_callback_module, NewModule :: module()} |
          pop_callback_module |
          enter_action().

-type enter_action() ::
          hibernate |
          {hibernate, Hibernate :: hibernate()} |
          timeout_action() |
          reply_action().

-type timeout_action() ::
          (Time :: event_timeout()) |
          {timeout,
           Time :: event_timeout(),
           EventContent :: event_content()} |
          {timeout,
           Time :: event_timeout(),
           EventContent :: event_content(),
           Options :: timeout_option() | [timeout_option()]} |
          {{timeout, Name :: term()},
           Time :: generic_timeout(),
           EventContent :: event_content()} |
          {{timeout, Name :: term()},
           Time :: generic_timeout(),
           EventContent :: event_content(),
           Options :: timeout_option() | [timeout_option()]} |
          {state_timeout,
           Time :: state_timeout(),
           EventContent :: event_content()} |
          {state_timeout,
           Time :: state_timeout(),
           EventContent :: event_content(),
           Options :: timeout_option() | [timeout_option()]} |
          timeout_cancel_action() |
          timeout_update_action().

-type timeout_cancel_action() ::
          {timeout, cancel} |
          {{timeout, Name :: term()}, cancel} |
          {state_timeout, cancel}.

-type timeout_update_action() ::
          {timeout, update, EventContent :: event_content()} |
          {{timeout, Name :: term()},
           update,
           EventContent :: event_content()} |
          {state_timeout, update, EventContent :: event_content()}.

-type reply_action() :: {reply, From :: from(), Reply :: term()}.

-type init_result(StateType) :: init_result(StateType, term()).

-type init_result(StateType, DataType) ::
          {ok, State :: StateType, Data :: DataType} |
          {ok,
           State :: StateType,
           Data :: DataType,
           Actions :: [action()] | action()} |
          ignore |
          {stop, Reason :: term()} |
          {error, Reason :: term()}.

-type state_function_result() :: event_handler_result(state_name()).

-type handle_event_result() :: event_handler_result(state()).

-type state_enter_result(State) :: state_enter_result(State, term()).

-type state_enter_result(State, DataType) ::
          {next_state, State, NewData :: DataType} |
          {next_state, State,
           NewData :: DataType,
           Actions :: [enter_action()] | enter_action()} |
          state_callback_result(enter_action(), DataType).

-type event_handler_result(StateType) ::
          event_handler_result(StateType, term()).

-type event_handler_result(StateType, DataType) ::
          {next_state, NextState :: StateType, NewData :: DataType} |
          {next_state,
           NextState :: StateType,
           NewData :: DataType,
           Actions :: [action()] | action()} |
          state_callback_result(action(), DataType).

-type state_callback_result(ActionType, DataType) ::
          {keep_state, NewData :: DataType} |
          {keep_state,
           NewData :: DataType,
           Actions :: [ActionType] | ActionType} |
          keep_state_and_data |
          {keep_state_and_data, Actions :: [ActionType] | ActionType} |
          {repeat_state, NewData :: DataType} |
          {repeat_state,
           NewData :: DataType,
           Actions :: [ActionType] | ActionType} |
          repeat_state_and_data |
          {repeat_state_and_data, Actions :: [ActionType] | ActionType} |
          stop |
          {stop, Reason :: term()} |
          {stop, Reason :: term(), NewData :: DataType} |
          {stop_and_reply,
           Reason :: term(),
           Replies :: [reply_action()] | reply_action()} |
          {stop_and_reply,
           Reason :: term(),
           Replies :: [reply_action()] | reply_action(),
           NewData :: DataType}.

-opaque request_id() :: gen:request_id().

-opaque request_id_collection() :: gen:request_id_collection().

-type response_timeout() :: timeout() | {abs, integer()}.

-callback init(Args :: term()) -> init_result(state()).

-callback callback_mode() -> callback_mode_result().

-callback 'StateName'(enter, OldStateName :: state_name(), data()) ->
                         state_enter_result(state_name);
                     (EventType :: event_type(),
                      EventContent :: event_content(),
                      Data :: data()) ->
                         event_handler_result(state_name()).

-callback handle_event(enter, OldState, CurrentState, Data) ->
                          state_enter_result(CurrentState)
                          when
                              OldState :: state(),
                              CurrentState :: state(),
                              Data :: data();
                      (EventType, EventContent, CurrentState, Data) ->
                          event_handler_result(state())
                          when
                              EventType :: event_type(),
                              EventContent :: event_content(),
                              CurrentState :: state(),
                              Data :: data().

-type handle_event_fun() ::
          fun((enter | event_type(),
               (OldState :: state()) | event_content(),
               CurrentState :: state(),
               data()) ->
                  term()).

-callback terminate(Reason ::
                        normal | shutdown | {shutdown, term()} | term(),
                    CurrentState :: state(),
                    data()) ->
                       any().

-callback code_change(OldVsn :: term() | {down, term()},
                      OldState :: state(),
                      OldData :: data(),
                      Extra :: term()) ->
                         {ok, NewState :: state(), NewData :: data()} |
                         (Reason :: term()).

-deprecated_callback({format_status, 2, "use format_status/1 instead"}).

-callback format_status(StatusOption,
                        [[{Key :: term(), Value :: term()}] |
                         state() |
                         data()]) ->
                           Status :: term()
                           when StatusOption :: normal | terminate.

-type format_status() ::
          #{state => state(),
            data => data(),
            reason => term(),
            queue => [{event_type(), event_content()}],
            postponed => [{event_type(), event_content()}],
            timeouts => [{timeout_event_type(), event_content()}],
            log => [sys:system_event()]}.

-callback format_status(Status) -> NewStatus
                           when
                               Status :: format_status(),
                               NewStatus :: format_status().

-optional_callbacks([format_status/1,
                     format_status/2,
                     terminate/3,
                     code_change/4,
                     'StateName'/3,
                     handle_event/4]).

-compile({inline,
          [{params_callback_mode, 2}, {params_callback_mode, 1}]}).

params_callback_mode(CallbackMode, Modules) ->
    case CallbackMode of
        state_functions ->
            CallbackMode;
        handle_event_function ->
            Module = hd(Modules),
            fun Module:handle_event/4
    end.

params_callback_mode(CallbackMode) ->
    case CallbackMode of
        state_functions ->
            CallbackMode;
        HandleEventFun when is_function(HandleEventFun, 4) ->
            handle_event_function
    end.

-compile({inline,
          [{callback_mode, 1},
           {state_enter, 1},
           {event_type, 1},
           {from, 1},
           {timeout_event_type, 1}]}).

callback_mode(CallbackMode) ->
    case CallbackMode of
        state_functions ->
            true;
        handle_event_function ->
            true;
        _ ->
            false
    end.

state_enter(StateEnter) ->
    case StateEnter of
        state_enter ->
            true;
        _ ->
            false
    end.

timeout_event_type(Type) ->
    case Type of
        timeout ->
            true;
        state_timeout ->
            true;
        {timeout, _} ->
            true;
        _ ->
            false
    end.

from(From) ->
    case From of
        {_, _} when is_pid(element(1, From)) ->
            true;
        _ ->
            false
    end.

event_type(Type) ->
    case Type of
        {call, From} ->
            case From of
                {_, _} when is_pid(element(1, From)) ->
                    true;
                _ ->
                    false
            end;
        cast ->
            true;
        info ->
            true;
        internal ->
            true;
        _ ->
            case Type of
                timeout ->
                    true;
                state_timeout ->
                    true;
                {timeout, _} ->
                    true;
                _ ->
                    false
            end
    end.

-record(params,{callback_mode =
                    state_functions ::
                        state_functions | handle_event_fun(),
                state_enter = false :: boolean(),
                parent :: pid(),
                modules = [gen_statem] :: [module(), ...],
                name :: atom() | pid(),
                hibernate_after = infinity :: timeout()}).

-record(state,{state_data =
                   {undefined, undefined} ::
                       {State :: term(), Data :: term()},
               postponed = [] :: [{event_type(), event_content()}],
               timers =
                   #{t0q => []} ::
                       #{t0q := [timeout_event_type()],
                         TimeoutType :: timeout_event_type() =>
                             {TimerRef :: reference() | 0,
                              TimeoutMsg :: event_content()}},
               hibernate = false :: boolean()}).

-type server_name() ::
          {local, atom()} |
          {global, GlobalName :: term()} |
          {via, RegMod :: module(), Name :: term()}.

-type server_ref() ::
          pid() |
          (LocalName :: atom()) |
          {Name :: atom(), Node :: atom()} |
          {global, GlobalName :: term()} |
          {via, RegMod :: module(), ViaName :: term()}.

-type start_opt() ::
          {timeout, Time :: timeout()} |
          {spawn_opt, [proc_lib:start_spawn_option()]} |
          enter_loop_opt().

-type enter_loop_opt() ::
          {hibernate_after, HibernateAfterTimeout :: timeout()} |
          {debug, Dbgs :: [sys:debug_option()]}.

-type start_ret() :: {ok, pid()} | ignore | {error, term()}.

-type start_mon_ret() ::
          {ok, {pid(), reference()}} | ignore | {error, term()}.

-spec start(Module :: module(), Args :: term(), Opts :: [start_opt()]) ->
               start_ret().

start(Module, Args, Opts) when is_atom(Module), is_list(Opts) ->
    gen:start(gen_statem, nolink, Module, Args, Opts);
start(Module, Args, Opts) ->
    error(badarg, [Module, Args, Opts]).

-spec start(ServerName :: server_name(),
            Module :: module(),
            Args :: term(),
            Opts :: [start_opt()]) ->
               start_ret().

start(ServerName, Module, Args, Opts)
    when is_tuple(ServerName), is_atom(Module), is_list(Opts) ->
    gen:start(gen_statem, nolink, ServerName, Module, Args, Opts);
start(ServerName, Module, Args, Opts) ->
    error(badarg, [ServerName, Module, Args, Opts]).

-spec start_link(Module :: module(),
                 Args :: term(),
                 Opts :: [start_opt()]) ->
                    start_ret().

start_link(Module, Args, Opts) when is_atom(Module), is_list(Opts) ->
    gen:start(gen_statem, link, Module, Args, Opts);
start_link(Module, Args, Opts) ->
    error(badarg, [Module, Args, Opts]).

-spec start_link(ServerName :: server_name(),
                 Module :: module(),
                 Args :: term(),
                 Opts :: [start_opt()]) ->
                    start_ret().

start_link(ServerName, Module, Args, Opts)
    when is_tuple(ServerName), is_atom(Module), is_list(Opts) ->
    gen:start(gen_statem, link, ServerName, Module, Args, Opts);
start_link(ServerName, Module, Args, Opts) ->
    error(badarg, [ServerName, Module, Args, Opts]).

-spec start_monitor(Module :: module(),
                    Args :: term(),
                    Opts :: [start_opt()]) ->
                       start_mon_ret().

start_monitor(Module, Args, Opts) when is_atom(Module), is_list(Opts) ->
    gen:start(gen_statem, monitor, Module, Args, Opts);
start_monitor(Module, Args, Opts) ->
    error(badarg, [Module, Args, Opts]).

-spec start_monitor(ServerName :: server_name(),
                    Module :: module(),
                    Args :: term(),
                    Opts :: [start_opt()]) ->
                       start_mon_ret().

start_monitor(ServerName, Module, Args, Opts)
    when is_tuple(ServerName), is_atom(Module), is_list(Opts) ->
    gen:start(gen_statem, monitor, ServerName, Module, Args, Opts);
start_monitor(ServerName, Module, Args, Opts) ->
    error(badarg, [ServerName, Module, Args, Opts]).

-spec stop(ServerRef :: server_ref()) -> ok.

stop(ServerRef) ->
    gen:stop(ServerRef).

-spec stop(ServerRef :: server_ref(),
           Reason :: term(),
           Timeout :: timeout()) ->
              ok.

stop(ServerRef, Reason, Timeout) ->
    gen:stop(ServerRef, Reason, Timeout).

-spec cast(ServerRef :: server_ref(), Msg :: term()) -> ok.

cast(ServerRef, Msg) when is_pid(ServerRef) ->
    send(ServerRef, wrap_cast(Msg));
cast(ServerRef, Msg) when is_atom(ServerRef) ->
    send(ServerRef, wrap_cast(Msg));
cast({global, Name}, Msg) ->
    try global:send(Name, wrap_cast(Msg)) of
        _ ->
            ok
    catch
        _:_ ->
            ok
    end;
cast({via, RegMod, Name}, Msg) ->
    try RegMod:send(Name, wrap_cast(Msg)) of
        _ ->
            ok
    catch
        _:_ ->
            ok
    end;
cast({Name, Node} = ServerRef, Msg) when is_atom(Name), is_atom(Node) ->
    send(ServerRef, wrap_cast(Msg)).

-spec call(ServerRef :: server_ref(), Request :: term()) ->
              Reply :: term().

call(ServerRef, Request) ->
    call(ServerRef, Request, infinity).

-spec call(ServerRef :: server_ref(),
           Request :: term(),
           Timeout ::
               timeout() |
               {clean_timeout, T :: timeout()} |
               {dirty_timeout, T :: timeout()}) ->
              Reply :: term().

call(ServerRef, Request, infinity = T = Timeout) ->
    call(ServerRef, Request, Timeout, T);
call(ServerRef, Request, {dirty_timeout, T} = Timeout) ->
    call(ServerRef, Request, Timeout, T);
call(ServerRef, Request, {clean_timeout, T} = Timeout) ->
    call(ServerRef, Request, Timeout, T);
call(ServerRef, Request, {_, _} = Timeout) ->
    error(badarg, [ServerRef, Request, Timeout]);
call(ServerRef, Request, Timeout) ->
    call(ServerRef, Request, Timeout, Timeout).

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

-spec wait_response(ReqId) -> Result
                       when
                           ReqId :: request_id(),
                           Response ::
                               {reply, Reply :: term()} |
                               {error, {Reason :: term(), server_ref()}},
                           Result :: Response | timeout.

wait_response(ReqId) ->
    wait_response(ReqId, infinity).

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

-spec receive_response(ReqId) -> Result
                          when
                              ReqId :: request_id(),
                              Response ::
                                  {reply, Reply :: term()} |
                                  {error,
                                   {Reason :: term(), server_ref()}},
                              Result :: Response | timeout.

receive_response(ReqId) ->
    receive_response(ReqId, infinity).

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

-spec reply(Replies :: [reply_action()] | reply_action()) -> ok.

reply({reply, From, Reply}) ->
    reply(From, Reply);
reply(Replies) when is_list(Replies) ->
    replies(Replies).

-compile({inline, [{reply, 2}]}).

-spec reply(From :: from(), Reply :: term()) -> ok.

reply(From, Reply) ->
    gen:reply(From, Reply).

-spec enter_loop(Module :: term(),
                 Opts :: term(),
                 State :: term(),
                 Data :: term()) ->
                    no_return().

enter_loop(Module, Opts, State, Data) ->
    enter_loop(Module, Opts, State, Data, self()).

-spec enter_loop(Module :: term(),
                 Opts :: term(),
                 State :: term(),
                 Data :: term(),
                 Actions) ->
                    no_return()
                    when Actions :: list();
                (Module :: term(),
                 Opts :: term(),
                 State :: term(),
                 Data :: term(),
                 Server) ->
                    no_return()
                    when Server :: server_name() | pid().

enter_loop(Module, Opts, State, Data, Server_or_Actions) ->
    if
        is_list(Server_or_Actions) ->
            enter_loop(Module, Opts, State, Data,
                       self(),
                       Server_or_Actions);
        true ->
            enter_loop(Module, Opts, State, Data, Server_or_Actions, [])
    end.

-spec enter_loop(Module :: module(),
                 Opts :: [enter_loop_opt()],
                 State :: state(),
                 Data :: data(),
                 Server :: server_name() | pid(),
                 Actions :: [action()] | action()) ->
                    no_return().

enter_loop(Module, Opts, State, Data, Server, Actions) ->
    is_atom(Module)
    orelse
    error({atom, Module}),
    Parent = gen:get_parent(),
    Name = gen:get_proc_name(Server),
    Debug = gen:debug_options(Name, Opts),
    HibernateAfterTimeout = gen:hibernate_after(Opts),
    enter(Parent, Debug, Module, Name, HibernateAfterTimeout, State,
          Data, Actions).

-compile({inline, [{wrap_cast, 1}]}).

wrap_cast(Event) ->
    {'$gen_cast', Event}.

-compile({inline, [{call, 4}]}).

call(ServerRef, Request, Timeout, T) ->
    try gen:call(ServerRef, '$gen_call', Request, T) of
        {ok, Reply} ->
            Reply
    catch
        Class:Reason:Stacktrace when Class =:= exit ->
            erlang:raise(Class,
                         {Reason,
                          {gen_statem, call,
                           [ServerRef, Request, Timeout]}},
                         Stacktrace)
    end.

replies([{reply, From, Reply} | Replies]) ->
    reply(From, Reply),
    replies(Replies);
replies([]) ->
    ok.

send(Proc, Msg) ->
    try
        erlang:send(Proc, Msg)
    catch
        error:_ ->
            ok
    end,
    ok.

enter(Parent, Debug, Module, Name, HibernateAfterTimeout, State, Data,
      Actions) ->
    Q = [{internal, init_state}],
    Actions_1 = listify(Actions) ++ [{postpone, false}],
    Modules = [Module],
    P = {params, state_functions, false, Parent,
         [gen_statem],
         Name, HibernateAfterTimeout},
    S = {state, {State, Data}, [], #{t0q => []}, false},
    case get_callback_mode(P, Modules) of
        {params, _, _, _, _, _, _} = P_1 ->
            Debug_1 =
                case begin Debug end of
                    [] ->
                        begin Debug end;
                    _ ->
                        sys_debug(begin Debug end,
                                  begin Name end,
                                  begin {enter, Module, State} end)
                end,
            loop_enter(P_1, Debug_1, S, Q, {State, Data}, Actions_1);
        {Class, Reason, Stacktrace} ->
            P_1 =
                begin
                    REC0 = P,
                    case REC0 of
                        {params, _, _, _, _, _, _} ->
                            setelement(5, REC0, Modules);
                        _ ->
                            error({badrecord, REC0})
                    end
                end,
            terminate(Class, Reason, Stacktrace, P_1, Debug, S, Q)
    end.

init_it(Starter, self, ServerRef, Module, Args, Opts) ->
    init_it(Starter, self(), ServerRef, Module, Args, Opts);
init_it(Starter, Parent, ServerRef, Module, Args, Opts) ->
    Name = gen:get_proc_name(ServerRef),
    Debug = gen:debug_options(Name, Opts),
    HibernateAfterTimeout = gen:hibernate_after(Opts),
    try Module:init(Args) of
        Result ->
            init_result(Starter, Parent, ServerRef, Module, Result,
                        Name, Debug, HibernateAfterTimeout)
    catch
        throw:Result ->
            init_result(Starter, Parent, ServerRef, Module, Result,
                        Name, Debug, HibernateAfterTimeout);
        Class:Reason:Stacktrace ->
            gen:unregister_name(ServerRef),
            error_info(Class, Reason, Stacktrace, Debug,
                       {params, state_functions, false, Parent,
                        [Module],
                        Name, infinity},
                       {state,
                        {undefined, undefined},
                        [],
                        #{t0q => []},
                        false},
                       []),
            proc_lib:init_fail(Starter,
                               {error, Reason},
                               {Class, Reason, Stacktrace})
    end.

init_result(Starter, Parent, ServerRef, Module, Result, Name, Debug,
            HibernateAfterTimeout) ->
    case Result of
        {ok, State, Data} ->
            proc_lib:init_ack(Starter, {ok, self()}),
            enter(Parent, Debug, Module, Name, HibernateAfterTimeout,
                  State, Data, []);
        {ok, State, Data, Actions} ->
            proc_lib:init_ack(Starter, {ok, self()}),
            enter(Parent, Debug, Module, Name, HibernateAfterTimeout,
                  State, Data, Actions);
        {stop, Reason} ->
            gen:unregister_name(ServerRef),
            exit(Reason);
        {error, _Reason} = ERROR ->
            gen:unregister_name(ServerRef),
            proc_lib:init_fail(Starter, ERROR, {exit, normal});
        ignore ->
            gen:unregister_name(ServerRef),
            proc_lib:init_fail(Starter, ignore, {exit, normal});
        _ ->
            gen:unregister_name(ServerRef),
            Reason = {bad_return_from_init, Result},
            error_info(error, Reason,
                       element(2,
                               process_info(self(), current_stacktrace)),
                       Debug,
                       {params, state_functions, false, Parent,
                        [Module],
                        Name, infinity},
                       {state,
                        {undefined, undefined},
                        [],
                        #{t0q => []},
                        false},
                       []),
            exit(Reason)
    end.

system_continue(Parent, Debug, {P, S}) ->
    loop(update_parent(P, Parent), Debug, S).

system_terminate(Reason, Parent, Debug, {P, S}) ->
    terminate(exit, Reason,
              element(2, process_info(self(), current_stacktrace)),
              update_parent(P, Parent),
              Debug, S, []).

system_code_change({{params, _, _, _, [Module | _] = Modules, _, _} = P,
                    {state, {State, Data}, _, _, _} = S},
                   _Mod, OldVsn, Extra) ->
    case
        try
            Module:code_change(OldVsn, State, Data, Extra)
        catch
            throw:Result ->
                Result
        end
    of
        {ok, NewState, NewData} ->
            case get_callback_mode(P, Modules) of
                {params, _, _, _, _, _, _} = P_1 ->
                    {ok,
                     {P_1,
                      begin
                          REC1 = {NewState, NewData},
                          REC2 = S,
                          case REC2 of
                              {state, _, _, _, _} ->
                                  setelement(2, REC2, REC1);
                              _ ->
                                  error({badrecord, REC2})
                          end
                      end}};
                {Class, Reason, Stacktrace} ->
                    erlang:raise(Class, Reason, Stacktrace)
            end;
        {ok, _} = Error ->
            error({case_clause, Error});
        Error ->
            Error
    end.

system_get_state({_P, {state, State_Data, _, _, _}}) ->
    {ok, State_Data}.

system_replace_state(StateFun, {P, {state, State_Data, _, _, _} = S}) ->
    NewState_NewData = StateFun(State_Data),
    {ok, NewState_NewData,
     {P,
      begin
          REC3 = S,
          case REC3 of
              {state, _, _, _, _} ->
                  setelement(2, REC3, NewState_NewData);
              _ ->
                  error({badrecord, REC3})
          end
      end}}.

format_status(Opt,
              [PDict, SysState, Parent, Debug,
               {{params, _, _, _, [Mod | _] = Modules, Name, _},
                {state, {State, Data}, Postponed, Timers, _}}]) ->
    Header = gen:format_status_header("Status for state machine", Name),
    {NumTimers, ListTimers} = list_timeouts(Timers),
    StatusMap =
        #{state => State,
          data => Data,
          postponed => Postponed,
          log => sys:get_log(Debug),
          timeouts => ListTimers},
    NewStatusMap =
        case
            gen:format_status(Mod, Opt, StatusMap, [PDict, State, Data])
        of
            #{'EXIT' := R} ->
                Crashed = [{data, [{"State", {State, R}}]}],
                StatusMap#{'$status' => Crashed};
            #{'$status' := L} = SM when is_list(L) ->
                SM;
            #{'$status' := T} = SM ->
                SM#{'$status' := [T]};
            #{state := S, data := D} = SM ->
                SM#{'$status' => [{data, [{"State", {S, D}}]}]}
        end,
    [{header, Header},
     {data,
      [{"Status", SysState},
       {"Parent", Parent},
       {"Modules", Modules},
       {"Time-outs", {NumTimers, maps:get(timeouts, NewStatusMap)}},
       {"Logged Events", maps:get(log, NewStatusMap)},
       {"Postponed", maps:get(postponed, NewStatusMap)}]} |
     maps:get('$status', NewStatusMap)].

-compile({inline, {update_parent, 2}}).

update_parent(P, Parent) ->
    case P of
        {params, _, _, Parent, _, _, _} ->
            P;
        {params, _, _, _, _, _, _} ->
            begin
                REC4 = P,
                case REC4 of
                    {params, _, _, _, _, _, _} ->
                        setelement(4, REC4, Parent);
                    _ ->
                        error({badrecord, REC4})
                end
            end
    end.

sys_debug(Debug, NameState, Entry) ->
    sys:handle_debug(Debug, fun print_event/3, NameState, Entry).

print_event(Dev, SystemEvent, Name) ->
    case SystemEvent of
        {in, Event, State} ->
            io:format(Dev,
                      "*DBG* ~tp receive ~ts in state ~tp~n",
                      [Name, event_string(Event), State]);
        {out, Reply, {To, _Tag}} ->
            io:format(Dev,
                      "*DBG* ~tp send ~tp to ~tw~n",
                      [Name, Reply, To]);
        {enter, Module, State} ->
            io:format(Dev,
                      "*DBG* ~tp enter ~tp in state ~tp~n",
                      [Name, Module, State]);
        {module, Module, State} ->
            io:format(Dev,
                      "*DBG* ~tp module ~tp in state ~tp~n",
                      [Name, Module, State]);
        {start_timer, Action, State} ->
            io:format(Dev,
                      "*DBG* ~tp start_timer ~tp in state ~tp~n",
                      [Name, Action, State]);
        {insert_timeout, Event, State} ->
            io:format(Dev,
                      "*DBG* ~tp insert_timeout ~tp in state ~tp~n",
                      [Name, Event, State]);
        {terminate, Reason, State} ->
            io:format(Dev,
                      "*DBG* ~tp terminate ~tp in state ~tp~n",
                      [Name, Reason, State]);
        {Tag, Event, State, NextState}
            when Tag =:= postpone; Tag =:= consume ->
            StateString =
                case NextState of
                    State ->
                        io_lib:format("~tp", [State]);
                    _ ->
                        io_lib:format("~tp => ~tp", [State, NextState])
                end,
            io:format(Dev,
                      "*DBG* ~tp ~tw ~ts in state ~ts~n",
                      [Name, Tag, event_string(Event), StateString])
    end.

event_string(Event) ->
    case Event of
        {{call, {Pid, _Tag}}, Request} ->
            io_lib:format("call ~tp from ~tw", [Request, Pid]);
        {EventType, EventContent} ->
            io_lib:format("~tw ~tp", [EventType, EventContent])
    end.

wakeup_from_hibernate(P, Debug, S) ->
    loop_receive(P, Debug, S).

loop(P, Debug, {state, _, _, _, true} = S) ->
    loop_hibernate(P, Debug, S);
loop(P, Debug, S) ->
    loop_receive(P, Debug, S).

loop_hibernate(P, Debug, S) ->
    proc_lib:hibernate(gen_statem, wakeup_from_hibernate, [P, Debug, S]),
    error({should_not_have_arrived_here_but_instead_in,
           {gen_statem, wakeup_from_hibernate, 3}}).

loop_receive({params, _, _, _, _, _, HibernateAfterTimeout} = P,
             Debug, S) ->
    receive
        Msg ->
            case Msg of
                {'$gen_call', From, Request} ->
                    loop_receive_result(P, Debug, S,
                                        {{call, From}, Request});
                {'$gen_cast', Cast} ->
                    loop_receive_result(P, Debug, S, {cast, Cast});
                {timeout, TimerRef, TimeoutType} ->
                    case
                        case S of
                            {state, _, _, REC5, _} ->
                                REC5;
                            REC5 ->
                                error({badrecord, REC5})
                        end
                    of
                        #{TimeoutType := {TimerRef, TimeoutMsg}} =
                            Timers
                            when TimeoutType =/= t0q ->
                            Timers_1 = maps:remove(TimeoutType, Timers),
                            S_1 =
                                begin
                                    REC6 = S,
                                    case REC6 of
                                        {state, _, _, _, _} ->
                                            setelement(4, REC6,
                                                       Timers_1);
                                        _ ->
                                            error({badrecord, REC6})
                                    end
                                end,
                            loop_receive_result(P, Debug, S_1,
                                                {TimeoutType,
                                                 TimeoutMsg});
                        #{} ->
                            loop_receive_result(P, Debug, S,
                                                {info, Msg})
                    end;
                {system, Pid, Req} ->
                    sys:handle_system_msg(Req, Pid,
                                          case P of
                                              {params, _, _, REC7, _, _,
                                               _} ->
                                                  REC7;
                                              REC7 ->
                                                  error({badrecord,
                                                         REC7})
                                          end,
                                          gen_statem, Debug,
                                          {P, S},
                                          case S of
                                              {state, _, _, _, REC8} ->
                                                  REC8;
                                              REC8 ->
                                                  error({badrecord,
                                                         REC8})
                                          end);
                {'EXIT', Pid, Reason} ->
                    case
                        case P of
                            {params, _, _, REC9, _, _, _} ->
                                REC9;
                            REC9 ->
                                error({badrecord, REC9})
                        end
                    of
                        Pid ->
                            terminate(exit, Reason,
                                      element(2,
                                              process_info(self(),
                                                           current_stacktrace)),
                                      P, Debug, S, []);
                        _ ->
                            loop_receive_result(P, Debug, S,
                                                {info, Msg})
                    end;
                _ ->
                    loop_receive_result(P, Debug, S, {info, Msg})
            end
    after
        HibernateAfterTimeout -> loop_hibernate(P, Debug, S)
    end.

loop_receive_result(P, [] = Debug, S, Event) ->
    Events = [],
    loop_event(P, Debug, S, Event, Events);
loop_receive_result({params, _, _, _, _, Name, _} = P,
                    Debug,
                    {state, {State, _Data}, _, _, _} = S,
                    Event) ->
    Debug_1 = sys_debug(Debug, Name, {in, Event, State}),
    Events = [],
    loop_event(P, Debug_1, S, Event, Events).

loop_event(P, Debug, {state, _, _, _, true} = S, Event, Events) ->
    _ = garbage_collect(),
    Q = [Event | Events],
    loop_state_callback(P, Debug, S, Q,
                        case S of
                            {state, REC10, _, _, _} ->
                                REC10;
                            REC10 ->
                                error({badrecord, REC10})
                        end,
                        Event);
loop_event(P, Debug, S, Event, Events) ->
    Q = [Event | Events],
    loop_state_callback(P, Debug, S, Q,
                        case S of
                            {state, REC11, _, _, _} ->
                                REC11;
                            REC11 ->
                                error({badrecord, REC11})
                        end,
                        Event).

-compile({inline, [{loop_state_enter, 9}]}).

loop_state_enter(P, Debug,
                 {state, {PrevState, _PrevData}, _, _, _} = S,
                 Q, NextState_NewData, NextEventsR, Hibernate,
                 TimeoutsR, Postpone) ->
    StateCall = false,
    CallbackEvent = {enter, PrevState},
    loop_state_callback(P, Debug, S, Q, NextState_NewData, NextEventsR,
                        Hibernate, TimeoutsR, Postpone, StateCall,
                        CallbackEvent).

-compile({inline, [{loop_enter, 6}]}).

loop_enter(P, Debug, S, Q, State_Data, Actions) ->
    NextEventsR = [],
    Hibernate = false,
    TimeoutsR = [],
    Postpone = false,
    CallEnter = true,
    StateCall = true,
    loop_actions_list(P, Debug, S, Q, State_Data, NextEventsR,
                      Hibernate, TimeoutsR, Postpone, CallEnter,
                      StateCall, Actions).

-compile({inline, [{loop_state_callback, 6}]}).

loop_state_callback(P, Debug, S, Q, State_Data, CallbackEvent) ->
    NextEventsR = [],
    Hibernate = false,
    TimeoutsR = [],
    Postpone = false,
    StateCall = true,
    loop_state_callback(P, Debug, S, Q, State_Data, NextEventsR,
                        Hibernate, TimeoutsR, Postpone, StateCall,
                        CallbackEvent).

loop_state_callback({params, CallbackMode, _, _, [Module | _], _, _} = P,
                    Debug, S, Q,
                    {State, Data} = State_Data,
                    NextEventsR, Hibernate, TimeoutsR, Postpone,
                    StateCall,
                    {Type, Content}) ->
    try
        case CallbackMode of
            state_functions ->
                Module:State(Type, Content, Data);
            HandleEventFun when is_function(HandleEventFun, 4) ->
                HandleEventFun(Type, Content, State, Data)
        end
    of
        Result ->
            loop_state_callback_result(P, Debug, S, Q, State_Data,
                                       NextEventsR, Hibernate,
                                       TimeoutsR, Postpone, StateCall,
                                       Result)
    catch
        throw:Result ->
            loop_state_callback_result(P, Debug, S, Q, State_Data,
                                       NextEventsR, Hibernate,
                                       TimeoutsR, Postpone, StateCall,
                                       Result);
        Class:Reason:Stacktrace ->
            terminate(Class, Reason, Stacktrace, P, Debug, S, Q)
    end.

loop_state_callback_result(P, Debug, S, Q,
                           {State, _Data} = State_Data,
                           NextEventsR, Hibernate, TimeoutsR, Postpone,
                           StateCall, Result) ->
    case Result of
        {next_state, State, NewData} ->
            loop_actions(P, Debug, S, Q,
                         {State, NewData},
                         NextEventsR, Hibernate, TimeoutsR, Postpone,
                         false);
        {next_state, NextState, NewData} when StateCall ->
            loop_actions(P, Debug, S, Q,
                         {NextState, NewData},
                         NextEventsR, Hibernate, TimeoutsR, Postpone,
                         true);
        {next_state, _NextState, _NewData} ->
            terminate(error,
                      {bad_state_enter_return_from_state_function,
                       Result},
                      element(2,
                              process_info(self(), current_stacktrace)),
                      P, Debug,
                      begin
                          REC12 = S,
                          case REC12 of
                              {state, _, _, _, _} ->
                                  setelement(2,
                                             setelement(5, REC12,
                                                        Hibernate),
                                             State_Data);
                              _ ->
                                  error({badrecord, REC12})
                          end
                      end,
                      Q);
        {next_state, State, NewData, Actions} ->
            loop_actions(P, Debug, S, Q,
                         {State, NewData},
                         NextEventsR, Hibernate, TimeoutsR, Postpone,
                         false, StateCall, Actions);
        {next_state, NextState, NewData, Actions} when StateCall ->
            loop_actions(P, Debug, S, Q,
                         {NextState, NewData},
                         NextEventsR, Hibernate, TimeoutsR, Postpone,
                         true, StateCall, Actions);
        {next_state, _NextState, _NewData, _Actions} ->
            terminate(error,
                      {bad_state_enter_return_from_state_function,
                       Result},
                      element(2,
                              process_info(self(), current_stacktrace)),
                      P, Debug,
                      begin
                          REC13 = S,
                          case REC13 of
                              {state, _, _, _, _} ->
                                  setelement(2,
                                             setelement(5, REC13,
                                                        Hibernate),
                                             State_Data);
                              _ ->
                                  error({badrecord, REC13})
                          end
                      end,
                      Q);
        {keep_state, NewData} ->
            loop_actions(P, Debug, S, Q,
                         {State, NewData},
                         NextEventsR, Hibernate, TimeoutsR, Postpone,
                         false);
        {keep_state, NewData, Actions} ->
            loop_actions(P, Debug, S, Q,
                         {State, NewData},
                         NextEventsR, Hibernate, TimeoutsR, Postpone,
                         false, StateCall, Actions);
        keep_state_and_data ->
            loop_actions(P, Debug, S, Q, State_Data, NextEventsR,
                         Hibernate, TimeoutsR, Postpone, false);
        {keep_state_and_data, Actions} ->
            loop_actions(P, Debug, S, Q, State_Data, NextEventsR,
                         Hibernate, TimeoutsR, Postpone, false,
                         StateCall, Actions);
        {repeat_state, NewData} ->
            loop_actions(P, Debug, S, Q,
                         {State, NewData},
                         NextEventsR, Hibernate, TimeoutsR, Postpone,
                         true);
        {repeat_state, NewData, Actions} ->
            loop_actions(P, Debug, S, Q,
                         {State, NewData},
                         NextEventsR, Hibernate, TimeoutsR, Postpone,
                         true, StateCall, Actions);
        repeat_state_and_data ->
            loop_actions(P, Debug, S, Q, State_Data, NextEventsR,
                         Hibernate, TimeoutsR, Postpone, true);
        {repeat_state_and_data, Actions} ->
            loop_actions(P, Debug, S, Q, State_Data, NextEventsR,
                         Hibernate, TimeoutsR, Postpone, true,
                         StateCall, Actions);
        stop ->
            terminate(exit, normal,
                      element(2,
                              process_info(self(), current_stacktrace)),
                      P, Debug,
                      begin
                          REC14 = S,
                          case REC14 of
                              {state, _, _, _, _} ->
                                  setelement(2,
                                             setelement(5, REC14,
                                                        Hibernate),
                                             State_Data);
                              _ ->
                                  error({badrecord, REC14})
                          end
                      end,
                      Q);
        {stop, Reason} ->
            terminate(exit, Reason,
                      element(2,
                              process_info(self(), current_stacktrace)),
                      P, Debug,
                      begin
                          REC15 = S,
                          case REC15 of
                              {state, _, _, _, _} ->
                                  setelement(2,
                                             setelement(5, REC15,
                                                        Hibernate),
                                             State_Data);
                              _ ->
                                  error({badrecord, REC15})
                          end
                      end,
                      Q);
        {stop, Reason, NewData} ->
            terminate(exit, Reason,
                      element(2,
                              process_info(self(), current_stacktrace)),
                      P, Debug,
                      begin
                          REC16 = {State, NewData},
                          REC17 = S,
                          case REC17 of
                              {state, _, _, _, _} ->
                                  setelement(2,
                                             setelement(5, REC17,
                                                        Hibernate),
                                             REC16);
                              _ ->
                                  error({badrecord, REC17})
                          end
                      end,
                      Q);
        {stop_and_reply, Reason, Replies} ->
            reply_then_terminate(exit, Reason,
                                 element(2,
                                         process_info(self(),
                                                      current_stacktrace)),
                                 P, Debug,
                                 begin
                                     REC18 = S,
                                     case REC18 of
                                         {state, _, _, _, _} ->
                                             setelement(2,
                                                        setelement(5,
                                                                   REC18,
                                                                   Hibernate),
                                                        State_Data);
                                         _ ->
                                             error({badrecord, REC18})
                                     end
                                 end,
                                 Q, Replies);
        {stop_and_reply, Reason, Replies, NewData} ->
            reply_then_terminate(exit, Reason,
                                 element(2,
                                         process_info(self(),
                                                      current_stacktrace)),
                                 P, Debug,
                                 begin
                                     REC19 = {State, NewData},
                                     REC20 = S,
                                     case REC20 of
                                         {state, _, _, _, _} ->
                                             setelement(2,
                                                        setelement(5,
                                                                   REC20,
                                                                   Hibernate),
                                                        REC19);
                                         _ ->
                                             error({badrecord, REC20})
                                     end
                                 end,
                                 Q, Replies);
        _ ->
            terminate(error,
                      {bad_return_from_state_function, Result},
                      element(2,
                              process_info(self(), current_stacktrace)),
                      P, Debug,
                      begin
                          REC21 = S,
                          case REC21 of
                              {state, _, _, _, _} ->
                                  setelement(2,
                                             setelement(5, REC21,
                                                        Hibernate),
                                             State_Data);
                              _ ->
                                  error({badrecord, REC21})
                          end
                      end,
                      Q)
    end.

loop_actions(P, Debug, S, Q, NextState_NewData, NextEventsR, Hibernate,
             TimeoutsR, Postpone, CallEnter, _StateCall, []) ->
    loop_actions(P, Debug, S, Q, NextState_NewData, NextEventsR,
                 Hibernate, TimeoutsR, Postpone, CallEnter);
loop_actions(P, Debug, S, Q, NextState_NewData, NextEventsR, Hibernate,
             TimeoutsR, Postpone, CallEnter, StateCall, Actions) ->
    loop_actions_list(P, Debug, S, Q, NextState_NewData, NextEventsR,
                      Hibernate, TimeoutsR, Postpone, CallEnter,
                      StateCall,
                      listify(Actions)).

loop_actions(P, Debug, S, Q, NextState_NewData, NextEventsR, Hibernate,
             TimeoutsR, Postpone, CallEnter) ->
    case
        CallEnter
        andalso
        case P of
            {params, _, REC22, _, _, _, _} ->
                REC22;
            REC22 ->
                error({badrecord, REC22})
        end
    of
        true ->
            loop_state_enter(P, Debug, S, Q, NextState_NewData,
                             NextEventsR, Hibernate, TimeoutsR,
                             Postpone);
        false ->
            loop_state_transition(P, Debug, S, Q, NextState_NewData,
                                  NextEventsR, Hibernate, TimeoutsR,
                                  Postpone)
    end.

loop_actions_list(P, Debug, S, Q, NextState_NewData, NextEventsR,
                  Hibernate, TimeoutsR, Postpone, CallEnter, _StateCall,
                  []) ->
    case
        case P of
            {params, _, REC23, _, _, _, _} ->
                REC23;
            REC23 ->
                error({badrecord, REC23})
        end
    of
        true when CallEnter ->
            loop_state_enter(P, Debug, S, Q, NextState_NewData,
                             NextEventsR, Hibernate, TimeoutsR,
                             Postpone);
        _ ->
            loop_state_transition(P, Debug, S, Q, NextState_NewData,
                                  NextEventsR, Hibernate, TimeoutsR,
                                  Postpone)
    end;
loop_actions_list(P, Debug, S, Q, NextState_NewData, NextEventsR,
                  Hibernate, TimeoutsR, Postpone, CallEnter, StateCall,
                  [Action | Actions]) ->
    case Action of
        {reply, From, Reply} ->
            loop_actions_reply(P, Debug, S, Q, NextState_NewData,
                               NextEventsR, Hibernate, TimeoutsR,
                               Postpone, CallEnter, StateCall, Actions,
                               From, Reply);
        {hibernate, Hibernate_1} when is_boolean(Hibernate_1) ->
            loop_actions_list(P, Debug, S, Q, NextState_NewData,
                              NextEventsR, Hibernate_1, TimeoutsR,
                              Postpone, CallEnter, StateCall, Actions);
        hibernate ->
            loop_actions_list(P, Debug, S, Q, NextState_NewData,
                              NextEventsR, true, TimeoutsR, Postpone,
                              CallEnter, StateCall, Actions);
        {postpone, Postpone_1}
            when
                not Postpone_1
                orelse
                StateCall ->
            loop_actions_list(P, Debug, S, Q, NextState_NewData,
                              NextEventsR, Hibernate, TimeoutsR,
                              Postpone_1, CallEnter, StateCall, Actions);
        postpone when StateCall ->
            loop_actions_list(P, Debug, S, Q, NextState_NewData,
                              NextEventsR, Hibernate, TimeoutsR, true,
                              CallEnter, StateCall, Actions);
        postpone ->
            terminate(error,
                      {bad_state_enter_action_from_state_function,
                       Action},
                      element(2,
                              process_info(self(), current_stacktrace)),
                      P, Debug,
                      begin
                          REC24 = S,
                          case REC24 of
                              {state, _, _, _, _} ->
                                  setelement(2,
                                             setelement(5, REC24,
                                                        Hibernate),
                                             NextState_NewData);
                              _ ->
                                  error({badrecord, REC24})
                          end
                      end,
                      Q);
        {next_event, Type, Content} ->
            loop_actions_next_event(P, Debug, S, Q, NextState_NewData,
                                    NextEventsR, Hibernate, TimeoutsR,
                                    Postpone, CallEnter, StateCall,
                                    Actions, Type, Content);
        {Tag, NewModule}
            when
                Tag =:= change_callback_module, is_atom(NewModule);
                Tag =:= push_callback_module, is_atom(NewModule) ->
            if
                StateCall ->
                    NewModules =
                        case Tag of
                            change_callback_module ->
                                [NewModule |
                                 tl(case P of
                                        {params, _, _, _, REC25, _, _} ->
                                            REC25;
                                        REC25 ->
                                            error({badrecord, REC25})
                                    end)];
                            push_callback_module ->
                                [NewModule |
                                 case P of
                                     {params, _, _, _, REC26, _, _} ->
                                         REC26;
                                     REC26 ->
                                         error({badrecord, REC26})
                                 end]
                        end,
                    case get_callback_mode(P, NewModules) of
                        {params, _, _, _, _, _, _} = P_1 ->
                            {NextState, _NewData} = NextState_NewData,
                            Debug_1 =
                                case begin Debug end of
                                    [] ->
                                        begin Debug end;
                                    _ ->
                                        sys_debug(begin Debug end,
                                                  begin
                                                      case P of
                                                          {params, _, _,
                                                           _, _, REC27,
                                                           _} ->
                                                              REC27;
                                                          REC27 ->
                                                              error({badrecord,
                                                                     REC27})
                                                      end
                                                  end,
                                                  begin
                                                      {module,
                                                       NewModule,
                                                       NextState}
                                                  end)
                                end,
                            loop_actions_list(P_1, Debug_1, S, Q,
                                              NextState_NewData,
                                              NextEventsR, Hibernate,
                                              TimeoutsR, Postpone,
                                              CallEnter, StateCall,
                                              Actions);
                        {Class, Reason, Stacktrace} ->
                            terminate(Class, Reason, Stacktrace, P,
                                      Debug,
                                      begin
                                          REC28 = S,
                                          case REC28 of
                                              {state, _, _, _, _} ->
                                                  setelement(2,
                                                             setelement(5,
                                                                        REC28,
                                                                        Hibernate),
                                                             NextState_NewData);
                                              _ ->
                                                  error({badrecord,
                                                         REC28})
                                          end
                                      end,
                                      Q)
                    end;
                true ->
                    terminate(error,
                              {bad_state_enter_action_from_state_function,
                               Action},
                              element(2,
                                      process_info(self(),
                                                   current_stacktrace)),
                              P, Debug,
                              begin
                                  REC29 = S,
                                  case REC29 of
                                      {state, _, _, _, _} ->
                                          setelement(2,
                                                     setelement(5,
                                                                REC29,
                                                                Hibernate),
                                                     NextState_NewData);
                                      _ ->
                                          error({badrecord, REC29})
                                  end
                              end,
                              Q)
            end;
        pop_callback_module
            when
                (is_record(P, params, 7)
                 orelse
                 fail)
                and
                (tl(element(5, P)) =/= []) ->
            if
                StateCall ->
                    NewModules =
                        tl(case P of
                               {params, _, _, _, REC30, _, _} ->
                                   REC30;
                               REC30 ->
                                   error({badrecord, REC30})
                           end),
                    case get_callback_mode(P, NewModules) of
                        {params, _, _, _, _, _, _} = P_1 ->
                            {NextState, _NewData} = NextState_NewData,
                            Debug_1 =
                                case begin Debug end of
                                    [] ->
                                        begin Debug end;
                                    _ ->
                                        sys_debug(begin Debug end,
                                                  begin
                                                      case P of
                                                          {params, _, _,
                                                           _, _, REC31,
                                                           _} ->
                                                              REC31;
                                                          REC31 ->
                                                              error({badrecord,
                                                                     REC31})
                                                      end
                                                  end,
                                                  begin
                                                      {module,
                                                       hd(NewModules),
                                                       NextState}
                                                  end)
                                end,
                            loop_actions_list(P_1, Debug_1, S, Q,
                                              NextState_NewData,
                                              NextEventsR, Hibernate,
                                              TimeoutsR, Postpone,
                                              CallEnter, StateCall,
                                              Actions);
                        {Class, Reason, Stacktrace} ->
                            terminate(Class, Reason, Stacktrace, P,
                                      Debug,
                                      begin
                                          REC32 = S,
                                          case REC32 of
                                              {state, _, _, _, _} ->
                                                  setelement(2,
                                                             setelement(5,
                                                                        REC32,
                                                                        Hibernate),
                                                             NextState_NewData);
                                              _ ->
                                                  error({badrecord,
                                                         REC32})
                                          end
                                      end,
                                      Q)
                    end;
                true ->
                    terminate(error,
                              {bad_state_enter_action_from_state_function,
                               Action},
                              element(2,
                                      process_info(self(),
                                                   current_stacktrace)),
                              P, Debug,
                              begin
                                  REC33 = S,
                                  case REC33 of
                                      {state, _, _, _, _} ->
                                          setelement(2,
                                                     setelement(5,
                                                                REC33,
                                                                Hibernate),
                                                     NextState_NewData);
                                      _ ->
                                          error({badrecord, REC33})
                                  end
                              end,
                              Q)
            end;
        _ ->
            loop_actions_list(P, Debug, S, Q, NextState_NewData,
                              NextEventsR, Hibernate, TimeoutsR,
                              Postpone, CallEnter, StateCall, Actions,
                              Action)
    end.

loop_actions_list(P, Debug, S, Q, NextState_NewData, NextEventsR,
                  Hibernate, TimeoutsR, Postpone, CallEnter, StateCall,
                  Actions,
                  {TimeoutType, Time, TimeoutMsg, TimeoutOpts} = Timeout) ->
    case timeout_event_type(TimeoutType) of
        true ->
            case listify(TimeoutOpts) of
                [{abs, true}]
                    when
                        is_integer(Time)
                        orelse
                        Time =:= infinity ->
                    loop_actions_list(P, Debug, S, Q, NextState_NewData,
                                      NextEventsR, Hibernate,
                                      [Timeout | TimeoutsR],
                                      Postpone, CallEnter, StateCall,
                                      Actions);
                [{abs, false}]
                    when
                        is_integer(Time)
                        andalso
                        0 =< Time
                        orelse
                        Time =:= infinity ->
                    RelativeTimeout = {TimeoutType, Time, TimeoutMsg},
                    loop_actions_list(P, Debug, S, Q, NextState_NewData,
                                      NextEventsR, Hibernate,
                                      [RelativeTimeout | TimeoutsR],
                                      Postpone, CallEnter, StateCall,
                                      Actions);
                []
                    when
                        is_integer(Time)
                        andalso
                        0 =< Time
                        orelse
                        Time =:= infinity ->
                    RelativeTimeout = {TimeoutType, Time, TimeoutMsg},
                    loop_actions_list(P, Debug, S, Q, NextState_NewData,
                                      NextEventsR, Hibernate,
                                      [RelativeTimeout | TimeoutsR],
                                      Postpone, CallEnter, StateCall,
                                      Actions);
                TimeoutOptsList ->
                    case parse_timeout_opts_abs(TimeoutOptsList) of
                        true
                            when
                                is_integer(Time)
                                orelse
                                Time =:= infinity ->
                            loop_actions_list(P, Debug, S, Q,
                                              NextState_NewData,
                                              NextEventsR, Hibernate,
                                              [Timeout | TimeoutsR],
                                              Postpone, CallEnter,
                                              StateCall, Actions);
                        false
                            when
                                is_integer(Time)
                                andalso
                                0 =< Time
                                orelse
                                Time =:= infinity ->
                            RelativeTimeout =
                                {TimeoutType, Time, TimeoutMsg},
                            loop_actions_list(P, Debug, S, Q,
                                              NextState_NewData,
                                              NextEventsR, Hibernate,
                                              [RelativeTimeout |
                                               TimeoutsR],
                                              Postpone, CallEnter,
                                              StateCall, Actions);
                        _ ->
                            terminate(error,
                                      {bad_action_from_state_function,
                                       Timeout},
                                      element(2,
                                              process_info(self(),
                                                           current_stacktrace)),
                                      P, Debug,
                                      begin
                                          REC34 = S,
                                          case REC34 of
                                              {state, _, _, _, _} ->
                                                  setelement(2,
                                                             setelement(5,
                                                                        REC34,
                                                                        Hibernate),
                                                             NextState_NewData);
                                              _ ->
                                                  error({badrecord,
                                                         REC34})
                                          end
                                      end,
                                      Q)
                    end
            end;
        false ->
            terminate(error,
                      {bad_action_from_state_function, Timeout},
                      element(2,
                              process_info(self(), current_stacktrace)),
                      P, Debug,
                      begin
                          REC35 = S,
                          case REC35 of
                              {state, _, _, _, _} ->
                                  setelement(2,
                                             setelement(5, REC35,
                                                        Hibernate),
                                             NextState_NewData);
                              _ ->
                                  error({badrecord, REC35})
                          end
                      end,
                      Q)
    end;
loop_actions_list(P, Debug, S, Q, NextState_NewData, NextEventsR,
                  Hibernate, TimeoutsR, Postpone, CallEnter, StateCall,
                  Actions,
                  {TimeoutType, Time, _TimeoutMsg} = Timeout) ->
    case timeout_event_type(TimeoutType) of
        true
            when
                is_integer(Time)
                andalso
                0 =< Time
                orelse
                Time =:= infinity;
                Time =:= update ->
            loop_actions_list(P, Debug, S, Q, NextState_NewData,
                              NextEventsR, Hibernate,
                              [Timeout | TimeoutsR],
                              Postpone, CallEnter, StateCall, Actions);
        _ ->
            terminate(error,
                      {bad_action_from_state_function, Timeout},
                      element(2,
                              process_info(self(), current_stacktrace)),
                      P, Debug,
                      begin
                          REC36 = S,
                          case REC36 of
                              {state, _, _, _, _} ->
                                  setelement(2,
                                             setelement(5, REC36,
                                                        Hibernate),
                                             NextState_NewData);
                              _ ->
                                  error({badrecord, REC36})
                          end
                      end,
                      Q)
    end;
loop_actions_list(P, Debug, S, Q, NextState_NewData, NextEventsR,
                  Hibernate, TimeoutsR, Postpone, CallEnter, StateCall,
                  Actions,
                  {TimeoutType, cancel} = Action) ->
    case timeout_event_type(TimeoutType) of
        true ->
            Timeout = {TimeoutType, infinity, undefined},
            loop_actions_list(P, Debug, S, Q, NextState_NewData,
                              NextEventsR, Hibernate,
                              [Timeout | TimeoutsR],
                              Postpone, CallEnter, StateCall, Actions);
        false ->
            terminate(error,
                      {bad_action_from_state_function, Action},
                      element(2,
                              process_info(self(), current_stacktrace)),
                      P, Debug,
                      begin
                          REC37 = S,
                          case REC37 of
                              {state, _, _, _, _} ->
                                  setelement(2,
                                             setelement(5, REC37,
                                                        Hibernate),
                                             NextState_NewData);
                              _ ->
                                  error({badrecord, REC37})
                          end
                      end,
                      Q)
    end;
loop_actions_list(P, Debug, S, Q, NextState_NewData, NextEventsR,
                  Hibernate, TimeoutsR, Postpone, CallEnter, StateCall,
                  Actions, Time) ->
    if
        is_integer(Time)
        andalso
        0 =< Time
        orelse
        Time =:= infinity ->
            Timeout = {timeout, Time, Time},
            loop_actions_list(P, Debug, S, Q, NextState_NewData,
                              NextEventsR, Hibernate,
                              [Timeout | TimeoutsR],
                              Postpone, CallEnter, StateCall, Actions);
        true ->
            terminate(error,
                      {bad_action_from_state_function, Time},
                      element(2,
                              process_info(self(), current_stacktrace)),
                      P, Debug,
                      begin
                          REC38 = S,
                          case REC38 of
                              {state, _, _, _, _} ->
                                  setelement(2,
                                             setelement(5, REC38,
                                                        Hibernate),
                                             NextState_NewData);
                              _ ->
                                  error({badrecord, REC38})
                          end
                      end,
                      Q)
    end.

loop_actions_reply(P, Debug, S, Q, NextState_NewData, NextEventsR,
                   Hibernate, TimeoutsR, Postpone, CallEnter, StateCall,
                   Actions, From, Reply) ->
    case from(From) of
        true ->
            reply(From, Reply),
            Debug_1 =
                case begin Debug end of
                    [] ->
                        begin Debug end;
                    _ ->
                        sys_debug(begin Debug end,
                                  begin
                                      case P of
                                          {params, _, _, _, _, REC39, _} ->
                                              REC39;
                                          REC39 ->
                                              error({badrecord, REC39})
                                      end
                                  end,
                                  begin {out, Reply, From} end)
                end,
            loop_actions_list(P, Debug_1, S, Q, NextState_NewData,
                              NextEventsR, Hibernate, TimeoutsR,
                              Postpone, CallEnter, StateCall, Actions);
        false ->
            terminate(error,
                      {bad_action_from_state_function,
                       {reply, From, Reply}},
                      element(2,
                              process_info(self(), current_stacktrace)),
                      P, Debug,
                      begin
                          REC40 = S,
                          case REC40 of
                              {state, _, _, _, _} ->
                                  setelement(2,
                                             setelement(5, REC40,
                                                        Hibernate),
                                             NextState_NewData);
                              _ ->
                                  error({badrecord, REC40})
                          end
                      end,
                      Q)
    end.

loop_actions_next_event(P, Debug, S, Q, NextState_NewData, NextEventsR,
                        Hibernate, TimeoutsR, Postpone, CallEnter,
                        StateCall, Actions, Type, Content) ->
    case event_type(Type) of
        true when StateCall ->
            NextEvent = {Type, Content},
            if
                Debug =:= [] ->
                    loop_actions_list(P, Debug, S, Q, NextState_NewData,
                                      [NextEvent | NextEventsR],
                                      Hibernate, TimeoutsR, Postpone,
                                      CallEnter, StateCall, Actions);
                true ->
                    Name =
                        case P of
                            {params, _, _, _, _, REC41, _} ->
                                REC41;
                            REC41 ->
                                error({badrecord, REC41})
                        end,
                    {NextState, _NewData} = NextState_NewData,
                    Debug_1 =
                        sys_debug(Debug, Name,
                                  {in, NextEvent, NextState}),
                    loop_actions_list(P, Debug_1, S, Q,
                                      NextState_NewData,
                                      [NextEvent | NextEventsR],
                                      Hibernate, TimeoutsR, Postpone,
                                      CallEnter, StateCall, Actions)
            end;
        _ ->
            loop_actions_next_event_bad(P, Debug, S, Q,
                                        NextState_NewData, StateCall,
                                        Hibernate, Type, Content)
    end.

loop_actions_next_event_bad(P, Debug, S, Q, NextState_NewData,
                            StateCall, Hibernate, Type, Content) ->
    terminate(error,
              {case StateCall of
                   true ->
                       bad_action_from_state_function;
                   false ->
                       bad_state_enter_action_from_state_function
               end,
               {next_event, Type, Content}},
              element(2, process_info(self(), current_stacktrace)),
              P, Debug,
              begin
                  REC42 = S,
                  case REC42 of
                      {state, _, _, _, _} ->
                          setelement(2,
                                     setelement(5, REC42, Hibernate),
                                     NextState_NewData);
                      _ ->
                          error({badrecord, REC42})
                  end
              end,
              Q).

loop_state_transition(P, Debug,
                      {state, {State, _Data}, Postponed, _, _} = S,
                      [Event | Events],
                      {NextState, _NewData} = NextState_NewData,
                      NextEventsR, Hibernate, TimeoutsR, Postpone) ->
    Postponed_1 =
        case Postpone of
            true ->
                [Event | Postponed];
            false ->
                Postponed
        end,
    case Debug of
        [] ->
            if
                NextState =:= State ->
                    loop_keep_state(P, Debug, S, Events,
                                    NextState_NewData, NextEventsR,
                                    Hibernate, TimeoutsR, Postponed_1);
                true ->
                    loop_state_change(P, Debug, S, Events,
                                      NextState_NewData, NextEventsR,
                                      Hibernate, TimeoutsR, Postponed_1)
            end;
        _ ->
            Name =
                case P of
                    {params, _, _, _, _, REC43, _} ->
                        REC43;
                    REC43 ->
                        error({badrecord, REC43})
                end,
            Debug_1 =
                case Postpone of
                    true ->
                        sys_debug(Debug, Name,
                                  {postpone, Event, State, NextState});
                    false ->
                        sys_debug(Debug, Name,
                                  {consume, Event, State, NextState})
                end,
            if
                NextState =:= State ->
                    loop_keep_state(P, Debug_1, S, Events,
                                    NextState_NewData, NextEventsR,
                                    Hibernate, TimeoutsR, Postponed_1);
                true ->
                    loop_state_change(P, Debug_1, S, Events,
                                      NextState_NewData, NextEventsR,
                                      Hibernate, TimeoutsR, Postponed_1)
            end
    end.

loop_keep_state(P, Debug,
                {state, _, _, Timers, _} = S,
                Events, NextState_NewData, NextEventsR, Hibernate,
                TimeoutsR, Postponed) ->
    case Timers of
        #{timeout := {TimerRef, _TimeoutMsg}} ->
            loop_next_events(P, Debug, S, Events, NextState_NewData,
                             NextEventsR, Hibernate, TimeoutsR,
                             Postponed,
                             cancel_timer(timeout, TimerRef, Timers));
        _ ->
            loop_next_events(P, Debug, S, Events, NextState_NewData,
                             NextEventsR, Hibernate, TimeoutsR,
                             Postponed, Timers)
    end.

loop_state_change(P, Debug, S, Events, NextState_NewData, NextEventsR,
                  Hibernate, TimeoutsR, Postponed) ->
    case Postponed of
        [] ->
            loop_state_change(P, Debug, S, Events, NextState_NewData,
                              NextEventsR, Hibernate, TimeoutsR);
        [E1] ->
            loop_state_change(P, Debug, S,
                              [E1 | Events],
                              NextState_NewData, NextEventsR, Hibernate,
                              TimeoutsR);
        [E2, E1] ->
            loop_state_change(P, Debug, S,
                              [E1, E2 | Events],
                              NextState_NewData, NextEventsR, Hibernate,
                              TimeoutsR);
        [_, _ | _] ->
            loop_state_change(P, Debug, S,
                              lists:reverse(Postponed, Events),
                              NextState_NewData, NextEventsR, Hibernate,
                              TimeoutsR)
    end.

loop_state_change(P, Debug,
                  {state, _, _, Timers, _} = S,
                  Events, NextState_NewData, NextEventsR, Hibernate,
                  TimeoutsR) ->
    case Timers of
        #{state_timeout := {TimerRef, _TimeoutMsg}} ->
            loop_next_events(P, Debug, S, Events, NextState_NewData,
                             NextEventsR, Hibernate, TimeoutsR, [],
                             cancel_timer(timeout,
                                          cancel_timer(state_timeout,
                                                       TimerRef, Timers)));
        #{timeout := {TimerRef, _TimeoutMsg}} ->
            loop_next_events(P, Debug, S, Events, NextState_NewData,
                             NextEventsR, Hibernate, TimeoutsR, [],
                             cancel_timer(timeout, TimerRef, Timers));
        _ ->
            loop_next_events(P, Debug, S, Events, NextState_NewData,
                             NextEventsR, Hibernate, TimeoutsR, [],
                             Timers)
    end.

loop_next_events(P, Debug, S, Events, NextState_NewData, NextEventsR,
                 Hibernate, [], Postponed, Timers) ->
    loop_done(P, Debug,
              begin
                  REC44 = S,
                  case REC44 of
                      {state, _, _, _, _} ->
                          setelement(2,
                                     setelement(3,
                                                setelement(4,
                                                           setelement(5,
                                                                      REC44,
                                                                      Hibernate),
                                                           Timers),
                                                Postponed),
                                     NextState_NewData);
                      _ ->
                          error({badrecord, REC44})
                  end
              end,
              Events, NextEventsR);
loop_next_events(P, Debug, S, Events, NextState_NewData, NextEventsR,
                 Hibernate, TimeoutsR, Postponed, Timers) ->
    Seen = #{},
    TimeoutEvents = [],
    loop_timeouts(P, Debug, S, Events, NextState_NewData, NextEventsR,
                  Hibernate, TimeoutsR, Postponed, Timers, Seen,
                  TimeoutEvents).

loop_timeouts(P, Debug, S, Events, NextState_NewData, NextEventsR,
              Hibernate, [], Postponed, Timers, _Seen, TimeoutEvents) ->
    case TimeoutEvents of
        [] ->
            S_1 =
                begin
                    REC45 = S,
                    case REC45 of
                        {state, _, _, _, _} ->
                            setelement(2,
                                       setelement(3,
                                                  setelement(4,
                                                             setelement(5,
                                                                        REC45,
                                                                        Hibernate),
                                                             Timers),
                                                  Postponed),
                                       NextState_NewData);
                        _ ->
                            error({badrecord, REC45})
                    end
                end,
            loop_done(P, Debug, S_1, Events, NextEventsR);
        [_ | _] ->
            #{t0q := T0Q} = Timers,
            S_1 =
                begin
                    REC46 = Timers#{t0q := T0Q ++ TimeoutEvents},
                    REC47 = S,
                    case REC47 of
                        {state, _, _, _, _} ->
                            setelement(2,
                                       setelement(3,
                                                  setelement(4,
                                                             setelement(5,
                                                                        REC47,
                                                                        Hibernate),
                                                             REC46),
                                                  Postponed),
                                       NextState_NewData);
                        _ ->
                            error({badrecord, REC47})
                    end
                end,
            loop_done(P, Debug, S_1, Events, NextEventsR)
    end;
loop_timeouts(P, Debug, S, Events, NextState_NewData, NextEventsR,
              Hibernate,
              [Timeout | TimeoutsR],
              Postponed, Timers, Seen, TimeoutEvents) ->
    TimeoutType = element(1, Timeout),
    case Seen of
        #{TimeoutType := _} ->
            loop_timeouts(P, Debug, S, Events, NextState_NewData,
                          NextEventsR, Hibernate, TimeoutsR, Postponed,
                          Timers, Seen, TimeoutEvents);
        #{} ->
            case Timeout of
                {_, Time, TimeoutMsg} ->
                    loop_timeouts_start(P, Debug, S, Events,
                                        NextState_NewData, NextEventsR,
                                        Hibernate, TimeoutsR, Postponed,
                                        Timers, Seen, TimeoutEvents,
                                        TimeoutType, Time, TimeoutMsg,
                                        []);
                {_, Time, TimeoutMsg, TimeoutOpts} ->
                    loop_timeouts_start(P, Debug, S, Events,
                                        NextState_NewData, NextEventsR,
                                        Hibernate, TimeoutsR, Postponed,
                                        Timers, Seen, TimeoutEvents,
                                        TimeoutType, Time, TimeoutMsg,
                                        listify(TimeoutOpts))
            end
    end.

loop_timeouts_start(P, Debug, S, Events, NextState_NewData, NextEventsR,
                    Hibernate, TimeoutsR, Postponed, Timers, Seen,
                    TimeoutEvents, TimeoutType, Time, TimeoutMsg,
                    TimeoutOpts) ->
    case Time of
        infinity ->
            loop_timeouts_cancel(P, Debug, S, Events, NextState_NewData,
                                 NextEventsR, Hibernate, TimeoutsR,
                                 Postponed, Timers, Seen, TimeoutEvents,
                                 TimeoutType);
        update ->
            loop_timeouts_update(P, Debug, S, Events, NextState_NewData,
                                 NextEventsR, Hibernate, TimeoutsR,
                                 Postponed, Timers, Seen, TimeoutEvents,
                                 TimeoutType, TimeoutMsg);
        0 ->
            TimerRef = 0,
            TimeoutEvents_1 = [TimeoutType | TimeoutEvents],
            loop_timeouts_register(P, Debug, S, Events,
                                   NextState_NewData, NextEventsR,
                                   Hibernate, TimeoutsR, Postponed,
                                   Timers, Seen, TimeoutEvents_1,
                                   TimeoutType, Time, TimeoutMsg,
                                   TimeoutOpts, TimerRef);
        _ ->
            TimerRef =
                erlang:start_timer(Time,
                                   self(),
                                   TimeoutType, TimeoutOpts),
            loop_timeouts_register(P, Debug, S, Events,
                                   NextState_NewData, NextEventsR,
                                   Hibernate, TimeoutsR, Postponed,
                                   Timers, Seen, TimeoutEvents,
                                   TimeoutType, Time, TimeoutMsg,
                                   TimeoutOpts, TimerRef)
    end.

loop_timeouts_register(P, Debug, S, Events, NextState_NewData,
                       NextEventsR, Hibernate, TimeoutsR, Postponed,
                       Timers, Seen, TimeoutEvents, TimeoutType, Time,
                       TimeoutMsg, TimeoutOpts, TimerRef) ->
    case Debug of
        [] ->
            loop_timeouts_register(P, Debug, S, Events,
                                   NextState_NewData, NextEventsR,
                                   Hibernate, TimeoutsR, Postponed,
                                   Timers, Seen, TimeoutEvents,
                                   TimeoutType, TimerRef, TimeoutMsg);
        _ ->
            {State, _Data} = NextState_NewData,
            Debug_1 =
                sys_debug(Debug,
                          case P of
                              {params, _, _, _, _, REC48, _} ->
                                  REC48;
                              REC48 ->
                                  error({badrecord, REC48})
                          end,
                          {start_timer,
                           {TimeoutType, Time, TimeoutMsg, TimeoutOpts},
                           State}),
            loop_timeouts_register(P, Debug_1, S, Events,
                                   NextState_NewData, NextEventsR,
                                   Hibernate, TimeoutsR, Postponed,
                                   Timers, Seen, TimeoutEvents,
                                   TimeoutType, TimerRef, TimeoutMsg)
    end.

loop_timeouts_register(P, Debug, S, Events, NextState_NewData,
                       NextEventsR, Hibernate, TimeoutsR, Postponed,
                       Timers, Seen, TimeoutEvents, TimeoutType,
                       TimerRef, TimeoutMsg) ->
    case Timers of
        #{TimeoutType := {0, _OldTimeoutMsg}, t0q := T0Q} ->
            Timers_1 =
                Timers#{TimeoutType := {0, TimeoutMsg},
                        t0q := lists:delete(TimeoutType, T0Q)},
            loop_timeouts(P, Debug, S, Events, NextState_NewData,
                          NextEventsR, Hibernate, TimeoutsR, Postponed,
                          Timers_1,
                          Seen#{TimeoutType => true},
                          TimeoutEvents);
        #{TimeoutType := {OldTimerRef, _OldTimeoutMsg}} ->
            cancel_timer(OldTimerRef),
            Timers_1 = Timers#{TimeoutType := {TimerRef, TimeoutMsg}},
            loop_timeouts(P, Debug, S, Events, NextState_NewData,
                          NextEventsR, Hibernate, TimeoutsR, Postponed,
                          Timers_1,
                          Seen#{TimeoutType => true},
                          TimeoutEvents);
        #{} ->
            Timers_1 = Timers#{TimeoutType => {TimerRef, TimeoutMsg}},
            loop_timeouts(P, Debug, S, Events, NextState_NewData,
                          NextEventsR, Hibernate, TimeoutsR, Postponed,
                          Timers_1,
                          Seen#{TimeoutType => true},
                          TimeoutEvents)
    end.

loop_timeouts_cancel(P, Debug, S, Events, NextState_NewData,
                     NextEventsR, Hibernate, TimeoutsR, Postponed,
                     Timers, Seen, TimeoutEvents, TimeoutType) ->
    case Timers of
        #{TimeoutType := {TimerRef, _TimeoutMsg}} ->
            Timers_1 = cancel_timer(TimeoutType, TimerRef, Timers),
            loop_timeouts(P, Debug, S, Events, NextState_NewData,
                          NextEventsR, Hibernate, TimeoutsR, Postponed,
                          Timers_1,
                          Seen#{TimeoutType => true},
                          TimeoutEvents);
        #{} ->
            loop_timeouts(P, Debug, S, Events, NextState_NewData,
                          NextEventsR, Hibernate, TimeoutsR, Postponed,
                          Timers,
                          Seen#{TimeoutType => true},
                          TimeoutEvents)
    end.

loop_timeouts_update(P, Debug, S, Events, NextState_NewData,
                     NextEventsR, Hibernate, TimeoutsR, Postponed,
                     Timers, Seen, TimeoutEvents, TimeoutType,
                     TimeoutMsg) ->
    case Timers of
        #{TimeoutType := {TimerRef, _OldTimeoutMsg}} ->
            Timers_1 = Timers#{TimeoutType := {TimerRef, TimeoutMsg}},
            loop_timeouts(P, Debug, S, Events, NextState_NewData,
                          NextEventsR, Hibernate, TimeoutsR, Postponed,
                          Timers_1,
                          Seen#{TimeoutType => true},
                          TimeoutEvents);
        #{} ->
            Timers_1 = Timers#{TimeoutType => {0, TimeoutMsg}},
            TimeoutEvents_1 = [TimeoutType | TimeoutEvents],
            loop_timeouts(P, Debug, S, Events, NextState_NewData,
                          NextEventsR, Hibernate, TimeoutsR, Postponed,
                          Timers_1,
                          Seen#{TimeoutType => true},
                          TimeoutEvents_1)
    end.

loop_done(P, Debug, S, Events, NextEventsR) ->
    case NextEventsR of
        [] ->
            loop_done(P, Debug, S, Events);
        [E1] ->
            loop_done(P, Debug, S, [E1 | Events]);
        [E2, E1] ->
            loop_done(P, Debug, S, [E1, E2 | Events]);
        [_, _ | _] ->
            loop_done(P, Debug, S, lists:reverse(NextEventsR, Events))
    end.

loop_done(P, Debug, S, Q) ->
    case Q of
        [] ->
            case
                case S of
                    {state, _, _, REC49, _} ->
                        REC49;
                    REC49 ->
                        error({badrecord, REC49})
                end
            of
                #{t0q := [TimeoutType | _]} = Timers ->
                    #{TimeoutType := {0 = TimerRef, TimeoutMsg}} =
                        Timers,
                    Timers_1 =
                        cancel_timer(TimeoutType, TimerRef, Timers),
                    S_1 =
                        begin
                            REC50 = S,
                            case REC50 of
                                {state, _, _, _, _} ->
                                    setelement(4, REC50, Timers_1);
                                _ ->
                                    error({badrecord, REC50})
                            end
                        end,
                    Event = {TimeoutType, TimeoutMsg},
                    loop_receive_result(P, Debug, S_1, Event);
                #{} ->
                    loop(P, Debug, S)
            end;
        [Event | Events] ->
            loop_event(P, Debug, S, Event, Events)
    end.

parse_timeout_opts_abs(Opts) ->
    parse_timeout_opts_abs(Opts, false).

parse_timeout_opts_abs(Opts, Abs) ->
    case Opts of
        [] ->
            Abs;
        [{abs, Abs_1} | Opts] when is_boolean(Abs_1) ->
            parse_timeout_opts_abs(Opts, Abs_1);
        _ ->
            badarg
    end.

get_callback_mode(P, [Module | _] = Modules) ->
    try Module:callback_mode() of
        CallbackModeResult ->
            callback_mode_result(P, Modules, CallbackModeResult)
    catch
        throw:CallbackModeResult ->
            callback_mode_result(P, Modules, CallbackModeResult);
        Class:Reason:Stacktrace ->
            {Class, Reason, Stacktrace}
    end.

callback_mode_result(P, Modules, CallbackModeResult) ->
    callback_mode_result(P, Modules, CallbackModeResult,
                         listify(CallbackModeResult),
                         undefined, false).

callback_mode_result(P, Modules, CallbackModeResult,
                     [H | T],
                     CallbackMode, StateEnter) ->
    case callback_mode(H) of
        true ->
            callback_mode_result(P, Modules, CallbackModeResult, T, H,
                                 StateEnter);
        false ->
            case state_enter(H) of
                true ->
                    callback_mode_result(P, Modules, CallbackModeResult,
                                         T, CallbackMode, true);
                false ->
                    {error,
                     {bad_return_from_callback_mode, CallbackModeResult},
                     element(2,
                             process_info(self(), current_stacktrace))}
            end
    end;
callback_mode_result(P, Modules, CallbackModeResult, [], CallbackMode,
                     StateEnter) ->
    if
        CallbackMode =:= undefined ->
            {error,
             {bad_return_from_callback_mode, CallbackModeResult},
             element(2, process_info(self(), current_stacktrace))};
        true ->
            begin
                REC51 = params_callback_mode(CallbackMode, Modules),
                REC52 = P,
                case REC52 of
                    {params, _, _, _, _, _, _} ->
                        setelement(2,
                                   setelement(3,
                                              setelement(5, REC52,
                                                         Modules),
                                              StateEnter),
                                   REC51);
                    _ ->
                        error({badrecord, REC52})
                end
            end
    end.

reply_then_terminate(Class, Reason, Stacktrace, P, Debug, S, Q, Replies) ->
    do_reply_then_terminate(Class, Reason, Stacktrace, P, Debug, S, Q,
                            listify(Replies)).

do_reply_then_terminate(Class, Reason, Stacktrace, P, Debug, S, Q, []) ->
    terminate(Class, Reason, Stacktrace, P, Debug, S, Q);
do_reply_then_terminate(Class, Reason, Stacktrace, P, Debug, S, Q,
                        [R | Rs]) ->
    case R of
        {reply, From, Reply} ->
            case from(From) of
                true ->
                    reply(From, Reply),
                    Debug_1 =
                        case begin Debug end of
                            [] ->
                                begin Debug end;
                            _ ->
                                sys_debug(begin Debug end,
                                          begin
                                              case P of
                                                  {params, _, _, _, _,
                                                   REC53, _} ->
                                                      REC53;
                                                  REC53 ->
                                                      error({badrecord,
                                                             REC53})
                                              end
                                          end,
                                          begin {out, Reply, From} end)
                        end,
                    do_reply_then_terminate(Class, Reason, Stacktrace,
                                            P, Debug_1, S, Q, Rs);
                false ->
                    terminate(error,
                              {bad_reply_action_from_state_function, R},
                              element(2,
                                      process_info(self(),
                                                   current_stacktrace)),
                              P, Debug, S, Q)
            end;
        _ ->
            terminate(error,
                      {bad_reply_action_from_state_function, R},
                      element(2,
                              process_info(self(), current_stacktrace)),
                      P, Debug, S, Q)
    end.

terminate(Class, Reason, Stacktrace,
          {params, _, _, _, [Module | _], _, _} = P,
          Debug,
          {state, {State, Data}, _, _, _} = S,
          Q) ->
    case erlang:function_exported(Module, terminate, 3) of
        true ->
            try Module:terminate(Reason, State, Data) of
                _ ->
                    ok
            catch
                throw:_ ->
                    ok;
                C:R:ST ->
                    error_info(C, R, ST, Debug, P, S, Q),
                    erlang:raise(C, R, ST)
            end;
        false ->
            ok
    end,
    _ = case Reason of
            normal ->
                terminate_sys_debug(Debug, P, State, Reason);
            shutdown ->
                terminate_sys_debug(Debug, P, State, Reason);
            {shutdown, _} ->
                terminate_sys_debug(Debug, P, State, Reason);
            _ ->
                error_info(Class, Reason, Stacktrace, Debug, P, S, Q)
        end,
    case Stacktrace of
        [] ->
            erlang:Class(Reason);
        [_ | _] ->
            erlang:raise(Class, Reason, Stacktrace)
    end.

terminate_sys_debug(Debug, P, State, Reason) ->
    case begin Debug end of
        [] ->
            begin Debug end;
        _ ->
            sys_debug(begin Debug end,
                      begin
                          case P of
                              {params, _, _, _, _, REC54, _} ->
                                  REC54;
                              REC54 ->
                                  error({badrecord, REC54})
                          end
                      end,
                      begin {terminate, Reason, State} end)
    end.

error_info(Class, Reason, Stacktrace, Debug,
           {params, CallbackMode, StateEnter, _,
            [Mod | _] = Modules,
            Name, _},
           {state, {State, Data}, Postponed, Timers, _},
           Q) ->
    {NumTimers, ListTimers} = list_timeouts(Timers),
    Status =
        gen:format_status(Mod, terminate,
                          #{reason => Reason,
                            state => State,
                            data => Data,
                            queue => Q,
                            postponed => Postponed,
                            timeouts => ListTimers,
                            log => sys:get_log(Debug)},
                          [get(), State, Data]),
    NewState =
        case maps:find('$status', Status) of
            error ->
                {maps:get(state, Status), maps:get(data, Status)};
            {ok, S} ->
                S
        end,
    case logger:allow(error, gen_statem) of
        true ->
            apply(logger, macro_log,
                  [#{mfa => {gen_statem, error_info, 7},
                     line => 4982,
                     file =>
                         "/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.2/src/"
                         "gen_statem.erl"},
                   error,
                   #{label => {gen_statem, terminate},
                     name => Name,
                     queue => maps:get(queue, Status),
                     postponed => maps:get(postponed, Status),
                     modules => Modules,
                     callback_mode => params_callback_mode(CallbackMode),
                     state_enter => StateEnter,
                     state => NewState,
                     timeouts => {NumTimers, maps:get(timeouts, Status)},
                     log => maps:get(log, Status),
                     reason =>
                         {Class, maps:get(reason, Status), Stacktrace},
                     client_info => client_stacktrace(Q),
                     process_label => proc_lib:get_label(self())},
                   #{domain => [otp],
                     report_cb => fun gen_statem:format_log/2,
                     error_logger =>
                         #{tag => error,
                           report_cb => fun gen_statem:format_log/1}}]);
        false ->
            ok
    end.

client_stacktrace([]) ->
    undefined;
client_stacktrace([{{call, {Pid, _Tag}}, _Req} | _]) when is_pid(Pid) ->
    if
        node(Pid) =:= node() ->
            case
                process_info(Pid, [current_stacktrace, registered_name])
            of
                undefined ->
                    {Pid, dead};
                [{current_stacktrace, Stacktrace},
                 {registered_name, []}] ->
                    {Pid, {Pid, Stacktrace}};
                [{current_stacktrace, Stacktrace},
                 {registered_name, Name}] ->
                    {Pid, {Name, Stacktrace}}
            end;
        true ->
            {Pid, remote}
    end;
client_stacktrace([_ | _]) ->
    undefined.

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
limit_report(#{label := {gen_statem, terminate},
               queue := Q,
               postponed := Postponed,
               modules := Modules,
               state := FmtData,
               timeouts := Timeouts,
               log := Log,
               reason := {Class, Reason, Stacktrace},
               client_info := ClientInfo,
               process_label := ProcessLabel} =
                 Report,
             Depth) ->
    Report#{queue =>
                case Q of
                    [Event | Events] ->
                        [io_lib:limit_term(Event, Depth) |
                         io_lib:limit_term(Events, Depth)];
                    _ ->
                        []
                end,
            postponed =>
                case Postponed of
                    [] ->
                        [];
                    _ ->
                        io_lib:limit_term(Postponed, Depth)
                end,
            modules => io_lib:limit_term(Modules, Depth),
            state => io_lib:limit_term(FmtData, Depth),
            timeouts =>
                case Timeouts of
                    {0, _} ->
                        Timeouts;
                    _ ->
                        io_lib:limit_term(Timeouts, Depth)
                end,
            log =>
                case Log of
                    [] ->
                        [];
                    _ ->
                        [ 
                         io_lib:limit_term(T, Depth) ||
                             T <- Log
                        ]
                end,
            reason =>
                {Class,
                 io_lib:limit_term(Reason, Depth),
                 io_lib:limit_term(Stacktrace, Depth)},
            client_info => limit_client_info(ClientInfo, Depth),
            process_label => io_lib:limit_term(ProcessLabel, Depth)}.

limit_client_info({Pid, {Name, Stacktrace}}, Depth) ->
    {Pid, {Name, io_lib:limit_term(Stacktrace, Depth)}};
limit_client_info(Client, _Depth) ->
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

format_log_single(#{label := {gen_statem, terminate},
                    name := Name,
                    queue := Q,
                    state := FmtData,
                    log := Log,
                    reason := {Class, Reason, Stacktrace},
                    client_info := ClientInfo,
                    process_label := ProcessLabel},
                  #{single_line := true, depth := Depth} = FormatOpts) ->
    P = p(FormatOpts),
    {FixedReason, FixedStacktrace} =
        fix_reason(Class, Reason, Stacktrace),
    {ClientFmt, ClientArgs} =
        format_client_log_single(ClientInfo, P, Depth),
    Format =
        lists:append(["State machine ",
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
                      case FixedStacktrace of
                          [] ->
                              "";
                          _ ->
                              ". Stack: " ++ P
                      end,
                      case Q of
                          [] ->
                              "";
                          _ ->
                              ". Last event: " ++ P
                      end,
                      ". State: ",
                      P,
                      case Log of
                          [] ->
                              "";
                          _ ->
                              ". Log: " ++ P
                      end,
                      "."]),
    Args0 =
        [Name]
        ++
        case ProcessLabel of
            undefined ->
                [];
            _ ->
                [ProcessLabel]
        end
        ++
        [FixedReason]
        ++
        case FixedStacktrace of
            [] ->
                [];
            _ ->
                [FixedStacktrace]
        end
        ++
        case Q of
            [] ->
                [];
            [Event | _] ->
                [Event]
        end
        ++
        [FmtData]
        ++
        case Log of
            [] ->
                [];
            _ ->
                [Log]
        end,
    Args =
        case Depth of
            unlimited ->
                Args0;
            _ ->
                lists:flatmap(fun(A) ->
                                     [A, Depth]
                              end,
                              Args0)
        end,
    {Format ++ ClientFmt, Args ++ ClientArgs};
format_log_single(Report, FormatOpts) ->
    format_log_multi(Report, FormatOpts).

format_log_multi(#{label := {gen_statem, terminate},
                   name := Name,
                   queue := Q,
                   postponed := Postponed,
                   modules := Modules,
                   callback_mode := CallbackMode,
                   state_enter := StateEnter,
                   state := FmtData,
                   timeouts := Timeouts,
                   log := Log,
                   reason := {Class, Reason, Stacktrace},
                   client_info := ClientInfo,
                   process_label := ProcessLabel},
                 #{depth := Depth} = FormatOpts) ->
    P = p(FormatOpts),
    {FixedReason, FixedStacktrace} =
        fix_reason(Class, Reason, Stacktrace),
    {ClientFmt, ClientArgs} = format_client_log(ClientInfo, P, Depth),
    CBMode =
        case StateEnter of
            true ->
                [CallbackMode, state_enter];
            false ->
                CallbackMode
        end,
    Format =
        lists:append(["** State machine ",
                      P,
                      " terminating~n",
                      case ProcessLabel of
                          undefined ->
                              "";
                          _ ->
                              "** Process label = " ++ P ++ "~n"
                      end,
                      case Q of
                          [] ->
                              "";
                          _ ->
                              "** Last event = " ++ P ++ "~n"
                      end,
                      "** When server state  = ",
                      P,
                      "~n",
                      "** Reason for termination = ",
                      P,
                      ":",
                      P,
                      "~n",
                      "** Callback modules = ",
                      P,
                      "~n",
                      "** Callback mode = ",
                      P,
                      "~n",
                      case Q of
                          [_, _ | _] ->
                              "** Queued = " ++ P ++ "~n";
                          _ ->
                              ""
                      end,
                      case Postponed of
                          [] ->
                              "";
                          _ ->
                              "** Postponed = " ++ P ++ "~n"
                      end,
                      case FixedStacktrace of
                          [] ->
                              "";
                          _ ->
                              "** Stacktrace =~n**  " ++ P ++ "~n"
                      end,
                      case Timeouts of
                          {0, _} ->
                              "";
                          _ ->
                              "** Time-outs: " ++ P ++ "~n"
                      end,
                      case Log of
                          [] ->
                              "";
                          _ ->
                              "** Log =~n**  " ++ P ++ "~n"
                      end]),
    Args0 =
        [Name]
        ++
        case ProcessLabel of
            undefined ->
                [];
            _ ->
                [ProcessLabel]
        end
        ++
        case Q of
            [] ->
                [];
            [Event | _] ->
                [Event]
        end
        ++
        [FmtData, Class, FixedReason, Modules, CBMode]
        ++
        case Q of
            [_ | [_ | _] = Events] ->
                [Events];
            _ ->
                []
        end
        ++
        case Postponed of
            [] ->
                [];
            _ ->
                [Postponed]
        end
        ++
        case FixedStacktrace of
            [] ->
                [];
            _ ->
                [FixedStacktrace]
        end
        ++
        case Timeouts of
            {0, _} ->
                [];
            _ ->
                [Timeouts]
        end
        ++
        case Log of
            [] ->
                [];
            _ ->
                [Log]
        end,
    Args =
        case Depth of
            unlimited ->
                Args0;
            _ ->
                lists:flatmap(fun(A) ->
                                     [A, Depth]
                              end,
                              Args0)
        end,
    {Format ++ ClientFmt, Args ++ ClientArgs}.

fix_reason(Class, Reason, Stacktrace) ->
    case Stacktrace of
        [{M, F, Args, _} | ST] when Class =:= error, Reason =:= undef ->
            case code:is_loaded(M) of
                false ->
                    {{'module could not be loaded', M}, ST};
                _ ->
                    Arity =
                        if
                            is_list(Args) ->
                                length(Args);
                            is_integer(Args) ->
                                Args
                        end,
                    case erlang:function_exported(M, F, Arity) of
                        true ->
                            {Reason, Stacktrace};
                        false ->
                            {{'function not exported', {M, F, Arity}},
                             ST}
                    end
            end;
        _ ->
            {Reason, Stacktrace}
    end.

format_client_log_single(undefined, _, _) ->
    {"", []};
format_client_log_single({Pid, dead}, _, _) ->
    {" Client ~0p is dead.", [Pid]};
format_client_log_single({Pid, remote}, _, _) ->
    {" Client ~0p is remote on node ~0p.", [Pid, node(Pid)]};
format_client_log_single({_Pid, {Name, Stacktrace0}}, P, Depth) ->
    Stacktrace = lists:sublist(Stacktrace0, 4),
    Format = lists:append([" Client ", P, " stacktrace: ", P, "."]),
    Args =
        case Depth of
            unlimited ->
                [Name, Stacktrace];
            _ ->
                [Name, Depth, Stacktrace, Depth]
        end,
    {Format, Args}.

format_client_log(undefined, _, _) ->
    {"", []};
format_client_log({Pid, dead}, _, _) ->
    {"** Client ~p is dead~n", [Pid]};
format_client_log({Pid, remote}, _, _) ->
    {"** Client ~p is remote on node ~p~n", [Pid, node(Pid)]};
format_client_log({_Pid, {Name, Stacktrace}}, P, Depth) ->
    Format =
        lists:append(["** Client ", P, " stacktrace~n** ", P, "~n"]),
    Args =
        case Depth of
            unlimited ->
                [Name, Stacktrace];
            _ ->
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

-compile({inline, [{listify, 1}]}).

listify(Item) when is_list(Item) ->
    Item;
listify(Item) ->
    [Item].

-compile({inline, [{cancel_timer, 1}]}).

cancel_timer(TimerRef) ->
    case erlang:cancel_timer(TimerRef) of
        false ->
            receive
                {timeout, TimerRef, _} ->
                    ok
            end;
        _ ->
            ok
    end.

-compile({inline, [{cancel_timer, 3}]}).

cancel_timer(TimeoutType, TimerRef, Timers) ->
    case TimerRef of
        0 ->
            maps:remove(begin TimeoutType end,
                        maps:update(t0q,
                                    lists:delete(begin TimeoutType end,
                                                 maps:get(t0q,
                                                          begin
                                                              Timers
                                                          end)),
                                    begin Timers end));
        _ ->
            case erlang:cancel_timer(TimerRef) of
                false ->
                    receive
                        {timeout, TimerRef, _} ->
                            ok
                    end;
                _ ->
                    ok
            end,
            maps:remove(begin TimeoutType end, begin Timers end)
    end.

-compile({inline, [{cancel_timer, 2}]}).

cancel_timer(TimeoutType, Timers) ->
    case Timers of
        #{TimeoutType := {TimerRef, _TimeoutMsg}} ->
            case TimerRef of
                0 ->
                    maps:remove(begin TimeoutType end,
                                maps:update(t0q,
                                            lists:delete(begin
                                                             TimeoutType
                                                         end,
                                                         maps:get(t0q,
                                                                  begin
                                                                      Timers
                                                                  end)),
                                            begin Timers end));
                _ ->
                    case erlang:cancel_timer(TimerRef) of
                        false ->
                            receive
                                {timeout, TimerRef, _} ->
                                    ok
                            end;
                        _ ->
                            ok
                    end,
                    maps:remove(begin TimeoutType end, begin Timers end)
            end;
        #{} ->
            Timers
    end.

list_timeouts(Timers) ->
    {maps:size(Timers) - 1,
     [ 
      {TimeoutType, TimeoutMsg} ||
          TimeoutType := {_TimerRef, TimeoutMsg} <- Timers,
          TimeoutType =/= t0q
     ]}.



