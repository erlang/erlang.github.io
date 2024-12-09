-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.1.2/src/gen_fsm.erl", 1).

-module(gen_fsm).

-file("/buildroot/otp/Erlang ∅⊤℞/lib/kernel-10.1.2/include/logger.hrl",
      1).

-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.1.2/src/gen_fsm.erl", 363).

-export([start/3,
         start/4,
         start_link/3,
         start_link/4,
         stop/1,
         stop/3,
         send_event/2,
         sync_send_event/2,
         sync_send_event/3,
         send_all_state_event/2,
         sync_send_all_state_event/2,
         sync_send_all_state_event/3,
         reply/2,
         start_timer/2,
         send_event_after/2,
         cancel_timer/1,
         enter_loop/4,
         enter_loop/5,
         enter_loop/6,
         wake_hib/7]).

-export([init_it/6,
         system_continue/3,
         system_terminate/4,
         system_code_change/4,
         system_get_state/1,
         system_replace_state/2,
         format_status/2]).

-export([format_log/1,format_log/2]).

-deprecated({'_', '_', "use the 'gen_statem' module instead"}).

-deprecated_callback({'_', '_', "use the 'gen_statem' module instead"}).

-type from() :: {To :: pid(), Tag :: term()}.

-callback init(Args) -> Result
                  when
                      Args :: term(),
                      Result ::
                          {ok, StateName, StateData} |
                          {ok, StateName, StateData, Timeout} |
                          {ok, StateName, StateData, hibernate} |
                          {stop, Reason} |
                          ignore,
                      StateName :: atom(),
                      StateData :: term(),
                      Timeout :: timeout(),
                      Reason :: term().

-callback 'StateName'(Event, StateData) -> Result
                         when
                             Event :: timeout | term(),
                             StateData :: term(),
                             Result ::
                                 {next_state, NextStateName,
                                  NewStateData} |
                                 {next_state, NextStateName,
                                  NewStateData, Timeout} |
                                 {next_state, NextStateName,
                                  NewStateData, hibernate} |
                                 {stop, Reason, NewStateData},
                             NextStateName :: atom(),
                             NewStateData :: term(),
                             Timeout :: timeout(),
                             Reason :: term().

-callback 'StateName'(Event, From, StateData) -> Result
                         when
                             Event :: term(),
                             From :: from(),
                             StateData :: term(),
                             Result ::
                                 {reply, Reply, NextStateName,
                                  NewStateData} |
                                 {reply, Reply, NextStateName,
                                  NewStateData, Timeout} |
                                 {reply, Reply, NextStateName,
                                  NewStateData, hibernate} |
                                 {next_state, NextStateName,
                                  NewStateData} |
                                 {next_state, NextStateName,
                                  NewStateData, Timeout} |
                                 {next_state, NextStateName,
                                  NewStateData, hibernate} |
                                 {stop, Reason, Reply, NewStateData} |
                                 {stop, Reason, NewStateData},
                             Reply :: term(),
                             NextStateName :: atom(),
                             NewStateData :: term(),
                             Timeout :: timeout(),
                             Reason :: normal | term().

-callback handle_event(Event, StateName, StateData) -> Result
                          when
                              Event :: term(),
                              StateName :: atom(),
                              StateData :: term(),
                              Result ::
                                  {next_state, NextStateName,
                                   NewStateData} |
                                  {next_state, NextStateName,
                                   NewStateData, Timeout} |
                                  {next_state, NextStateName,
                                   NewStateData, hibernate} |
                                  {stop, Reason, NewStateData},
                              NextStateName :: atom(),
                              NewStateData :: term(),
                              Timeout :: timeout(),
                              Reason :: term().

-callback handle_sync_event(Event, From, StateName, StateData) -> Result
                               when
                                   Event :: term(),
                                   From :: from(),
                                   StateName :: atom(),
                                   StateData :: term(),
                                   Result ::
                                       {reply, Reply, NextStateName,
                                        NewStateData} |
                                       {reply, Reply, NextStateName,
                                        NewStateData, Timeout} |
                                       {reply, Reply, NextStateName,
                                        NewStateData, hibernate} |
                                       {next_state, NextStateName,
                                        NewStateData} |
                                       {next_state, NextStateName,
                                        NewStateData, Timeout} |
                                       {next_state, NextStateName,
                                        NewStateData, hibernate} |
                                       {stop, Reason, Reply,
                                        NewStateData} |
                                       {stop, Reason, NewStateData},
                                   Reply :: term(),
                                   NextStateName :: atom(),
                                   NewStateData :: term(),
                                   Timeout :: timeout(),
                                   Reason :: term().

-callback handle_info(Info, StateName, StateData) -> Result
                         when
                             Info :: term(),
                             StateName :: atom(),
                             StateData :: term(),
                             Result ::
                                 {next_state, NextStateName,
                                  NewStateData} |
                                 {next_state, NextStateName,
                                  NewStateData, Timeout} |
                                 {next_state, NextStateName,
                                  NewStateData, hibernate} |
                                 {stop, Reason, NewStateData},
                             NextStateName :: atom(),
                             NewStateData :: term(),
                             Timeout :: timeout(),
                             Reason :: normal | term().

-callback terminate(Reason, StateName, StateData) -> _
                       when
                           Reason ::
                               normal | shutdown |
                               {shutdown, term()} |
                               term(),
                           StateName :: atom(),
                           StateData :: term().

-callback code_change(OldVsn, StateName, StateData, Extra) ->
                         {ok, NextStateName, NewStateData}
                         when
                             OldVsn :: Vsn | {down, Vsn},
                             Vsn :: term(),
                             StateName :: atom(),
                             NextStateName :: atom(),
                             StateData :: term(),
                             NewStateData :: term(),
                             Extra :: term().

-callback format_status(Opt, nonempty_improper_list(PDict, [StateData])) ->
                           Status
                           when
                               Opt :: normal | terminate,
                               PDict ::
                                   [{Key :: term(), Value :: term()}],
                               StateData :: term(),
                               Status :: term().

-optional_callbacks(['StateName'/2,
                     'StateName'/3,
                     handle_info/3,
                     terminate/3,
                     code_change/4,
                     format_status/2]).

-type fsm_name() ::
          {local, LocalName :: atom()} |
          {global, GlobalName :: term()} |
          {via, RegMod :: module(), ViaName :: term()}.

-type fsm_ref() ::
          pid() |
          (LocalName :: atom()) |
          {Name :: atom(), Node :: atom()} |
          {global, GlobalName :: term()} |
          {via, RegMod :: module(), ViaName :: term()}.

-type start_opt() ::
          {timeout, Time :: timeout()} |
          {spawn_opt, [proc_lib:start_spawn_option()]} |
          enter_loop_opt().

-type enter_loop_opt() :: {debug, Dbgs :: [sys:debug_option()]}.

-spec start(Module, Args, Options) -> Result
               when
                   Module :: module(),
                   Args :: term(),
                   Options :: [start_opt()],
                   Result :: {ok, Pid} | ignore | {error, Reason},
                   Pid :: pid(),
                   Reason :: term().

start(Mod, Args, Options) ->
    gen:start(gen_fsm, nolink, Mod, Args, Options).

-spec start(FsmName, Module, Args, Options) -> Result
               when
                   FsmName :: fsm_name(),
                   Module :: module(),
                   Args :: term(),
                   Options :: [start_opt()],
                   Result :: {ok, Pid} | ignore | {error, Reason},
                   Pid :: pid(),
                   Reason :: {already_started, Pid} | term().

start(Name, Mod, Args, Options) ->
    gen:start(gen_fsm, nolink, Name, Mod, Args, Options).

-spec start_link(Module, Args, Options) -> Result
                    when
                        Module :: module(),
                        Args :: term(),
                        Options :: [start_opt()],
                        Result :: {ok, Pid} | ignore | {error, Reason},
                        Pid :: pid(),
                        Reason :: term().

start_link(Mod, Args, Options) ->
    gen:start(gen_fsm, link, Mod, Args, Options).

-spec start_link(FsmName, Module, Args, Options) -> Result
                    when
                        FsmName :: fsm_name(),
                        Module :: module(),
                        Args :: term(),
                        Options :: [start_opt()],
                        Result :: {ok, Pid} | ignore | {error, Reason},
                        Pid :: pid(),
                        Reason :: {already_started, Pid} | term().

start_link(Name, Mod, Args, Options) ->
    gen:start(gen_fsm, link, Name, Mod, Args, Options).

-spec stop(FsmRef) -> ok when FsmRef :: fsm_ref().

stop(Name) ->
    gen:stop(Name).

-spec stop(FsmRef, Reason, Timeout) -> ok
              when
                  FsmRef :: fsm_ref(),
                  Reason :: term(),
                  Timeout :: timeout().

stop(Name, Reason, Timeout) ->
    gen:stop(Name, Reason, Timeout).

-spec send_event(FsmRef, Event) -> ok
                    when FsmRef :: fsm_ref(), Event :: term().

send_event({global, Name}, Event) ->
    catch global:send(Name, {'$gen_event', Event}),
    ok;
send_event({via, Mod, Name}, Event) ->
    catch Mod:send(Name, {'$gen_event', Event}),
    ok;
send_event(Name, Event) ->
    Name ! {'$gen_event', Event},
    ok.

-spec sync_send_event(FsmRef, Event) -> Reply
                         when
                             FsmRef :: fsm_ref(),
                             Event :: term(),
                             Reply :: term().

sync_send_event(Name, Event) ->
    case catch gen:call(Name, '$gen_sync_event', Event) of
        {ok, Res} ->
            Res;
        {'EXIT', Reason} ->
            exit({Reason, {gen_fsm, sync_send_event, [Name, Event]}})
    end.

-spec sync_send_event(FsmRef, Event, Timeout) -> Reply
                         when
                             FsmRef :: fsm_ref(),
                             Event :: term(),
                             Timeout :: timeout(),
                             Reply :: term().

sync_send_event(Name, Event, Timeout) ->
    case catch gen:call(Name, '$gen_sync_event', Event, Timeout) of
        {ok, Res} ->
            Res;
        {'EXIT', Reason} ->
            exit({Reason,
                  {gen_fsm, sync_send_event, [Name, Event, Timeout]}})
    end.

-spec send_all_state_event(FsmRef, Event) -> ok
                              when FsmRef :: fsm_ref(), Event :: term().

send_all_state_event({global, Name}, Event) ->
    catch global:send(Name, {'$gen_all_state_event', Event}),
    ok;
send_all_state_event({via, Mod, Name}, Event) ->
    catch Mod:send(Name, {'$gen_all_state_event', Event}),
    ok;
send_all_state_event(Name, Event) ->
    Name ! {'$gen_all_state_event', Event},
    ok.

-spec sync_send_all_state_event(FsmRef, Event) -> Reply
                                   when
                                       FsmRef :: fsm_ref(),
                                       Event :: term(),
                                       Reply :: term().

sync_send_all_state_event(Name, Event) ->
    case catch gen:call(Name, '$gen_sync_all_state_event', Event) of
        {ok, Res} ->
            Res;
        {'EXIT', Reason} ->
            exit({Reason,
                  {gen_fsm, sync_send_all_state_event, [Name, Event]}})
    end.

-spec sync_send_all_state_event(FsmRef, Event, Timeout) -> Reply
                                   when
                                       FsmRef :: fsm_ref(),
                                       Event :: term(),
                                       Timeout :: timeout(),
                                       Reply :: term().

sync_send_all_state_event(Name, Event, Timeout) ->
    case
        catch
            gen:call(Name, '$gen_sync_all_state_event', Event, Timeout)
    of
        {ok, Res} ->
            Res;
        {'EXIT', Reason} ->
            exit({Reason,
                  {gen_fsm, sync_send_all_state_event,
                   [Name, Event, Timeout]}})
    end.

-spec start_timer(Time, Msg) -> Ref
                     when
                         Time :: non_neg_integer(),
                         Msg :: term(),
                         Ref :: reference().

start_timer(Time, Msg) ->
    erlang:start_timer(Time, self(), {'$gen_timer', Msg}).

-spec send_event_after(Time, Event) -> Ref
                          when
                              Time :: non_neg_integer(),
                              Event :: term(),
                              Ref :: reference().

send_event_after(Time, Event) ->
    erlang:start_timer(Time, self(), {'$gen_event', Event}).

-spec cancel_timer(Ref) -> RemainingTime | false
                      when
                          Ref :: reference(),
                          RemainingTime :: non_neg_integer().

cancel_timer(Ref) ->
    case erlang:cancel_timer(Ref) of
        false ->
            receive
                {timeout, Ref, _} ->
                    0
            after
                0 -> false
            end;
        RemainingTime ->
            RemainingTime
    end.

-spec enter_loop(Module, Options, StateName, StateData) -> no_return()
                    when
                        Module :: module(),
                        Options :: [enter_loop_opt()],
                        StateName :: atom(),
                        StateData :: term().

enter_loop(Mod, Options, StateName, StateData) ->
    enter_loop(Mod, Options, StateName, StateData, self(), infinity).

-spec enter_loop(Module, Options, StateName, StateData, FsmName) ->
                    no_return()
                    when
                        Module :: module(),
                        Options :: [enter_loop_opt()],
                        StateName :: atom(),
                        StateData :: term(),
                        FsmName :: fsm_name();
                (Module, Options, StateName, StateData, Timeout) ->
                    no_return()
                    when
                        Module :: module(),
                        Options :: enter_loop_opt(),
                        StateName :: atom(),
                        StateData :: term(),
                        Timeout :: timeout().

enter_loop(Mod, Options, StateName, StateData, {Scope, _} = ServerName)
    when Scope == local; Scope == global ->
    enter_loop(Mod, Options, StateName, StateData, ServerName, infinity);
enter_loop(Mod, Options, StateName, StateData, {via, _, _} = ServerName) ->
    enter_loop(Mod, Options, StateName, StateData, ServerName, infinity);
enter_loop(Mod, Options, StateName, StateData, Timeout) ->
    enter_loop(Mod, Options, StateName, StateData, self(), Timeout).

-spec enter_loop(Module, Options, StateName, StateData, FsmName,
                 Timeout) ->
                    no_return()
                    when
                        Module :: module(),
                        Options :: [enter_loop_opt()],
                        StateName :: atom(),
                        StateData :: term(),
                        FsmName :: fsm_name() | pid(),
                        Timeout :: timeout().

enter_loop(Mod, Options, StateName, StateData, ServerName, Timeout) ->
    Name = gen:get_proc_name(ServerName),
    Parent = gen:get_parent(),
    Debug = gen:debug_options(Name, Options),
    HibernateAfterTimeout = gen:hibernate_after(Options),
    loop(Parent, Name, StateName, StateData, Mod, Timeout,
         HibernateAfterTimeout, Debug).

init_it(Starter, self, Name, Mod, Args, Options) ->
    init_it(Starter, self(), Name, Mod, Args, Options);
init_it(Starter, Parent, Name0, Mod, Args, Options) ->
    Name = gen:name(Name0),
    Debug = gen:debug_options(Name, Options),
    HibernateAfterTimeout = gen:hibernate_after(Options),
    case catch Mod:init(Args) of
        {ok, StateName, StateData} ->
            proc_lib:init_ack(Starter, {ok, self()}),
            loop(Parent, Name, StateName, StateData, Mod, infinity,
                 HibernateAfterTimeout, Debug);
        {ok, StateName, StateData, Timeout} ->
            proc_lib:init_ack(Starter, {ok, self()}),
            loop(Parent, Name, StateName, StateData, Mod, Timeout,
                 HibernateAfterTimeout, Debug);
        {stop, Reason} ->
            gen:unregister_name(Name0),
            exit(Reason);
        ignore ->
            gen:unregister_name(Name0),
            proc_lib:init_fail(Starter, ignore, {exit, normal});
        {'EXIT', Reason} ->
            gen:unregister_name(Name0),
            exit(Reason);
        Else ->
            Reason = {bad_return_value, Else},
            exit(Reason)
    end.

loop(Parent, Name, StateName, StateData, Mod, hibernate,
     HibernateAfterTimeout, Debug) ->
    proc_lib:hibernate(gen_fsm, wake_hib,
                       [Parent, Name, StateName, StateData, Mod,
                        HibernateAfterTimeout, Debug]);
loop(Parent, Name, StateName, StateData, Mod, infinity,
     HibernateAfterTimeout, Debug) ->
    receive
        Msg ->
            decode_msg(Msg, Parent, Name, StateName, StateData, Mod,
                       infinity, HibernateAfterTimeout, Debug, false)
    after
        HibernateAfterTimeout ->
            loop(Parent, Name, StateName, StateData, Mod, hibernate,
                 HibernateAfterTimeout, Debug)
    end;
loop(Parent, Name, StateName, StateData, Mod, Time,
     HibernateAfterTimeout, Debug) ->
    Msg =
        receive
            Input ->
                Input
        after
            Time -> {'$gen_event', timeout}
        end,
    decode_msg(Msg, Parent, Name, StateName, StateData, Mod, Time,
               HibernateAfterTimeout, Debug, false).

wake_hib(Parent, Name, StateName, StateData, Mod, HibernateAfterTimeout,
         Debug) ->
    Msg =
        receive
            Input ->
                Input
        end,
    decode_msg(Msg, Parent, Name, StateName, StateData, Mod, hibernate,
               HibernateAfterTimeout, Debug, true).

decode_msg(Msg, Parent, Name, StateName, StateData, Mod, Time,
           HibernateAfterTimeout, Debug, Hib) ->
    case Msg of
        {system, From, Req} ->
            sys:handle_system_msg(Req, From, Parent, gen_fsm, Debug,
                                  [Name, StateName, StateData, Mod,
                                   Time, HibernateAfterTimeout],
                                  Hib);
        {'EXIT', Parent, Reason} ->
            terminate(Reason, Name, undefined, Msg, Mod, StateName,
                      StateData, Debug);
        _Msg when Debug =:= [] ->
            handle_msg(Msg, Parent, Name, StateName, StateData, Mod,
                       Time, HibernateAfterTimeout);
        _Msg ->
            Debug1 =
                sys:handle_debug(Debug,
                                 fun print_event/3,
                                 Name,
                                 {in, Msg, StateName}),
            handle_msg(Msg, Parent, Name, StateName, StateData, Mod,
                       Time, HibernateAfterTimeout, Debug1)
    end.

system_continue(Parent, Debug,
                [Name, StateName, StateData, Mod, Time,
                 HibernateAfterTimeout]) ->
    loop(Parent, Name, StateName, StateData, Mod, Time,
         HibernateAfterTimeout, Debug).

-spec system_terminate(term(), _, _, [term(), ...]) -> no_return().

system_terminate(Reason, _Parent, Debug,
                 [Name, StateName, StateData, Mod, _Time,
                  _HibernateAfterTimeout]) ->
    terminate(Reason, Name, undefined, [], Mod, StateName, StateData,
              Debug).

system_code_change([Name, StateName, StateData, Mod, Time,
                    HibernateAfterTimeout],
                   _Module, OldVsn, Extra) ->
    case catch Mod:code_change(OldVsn, StateName, StateData, Extra) of
        {ok, NewStateName, NewStateData} ->
            {ok,
             [Name, NewStateName, NewStateData, Mod, Time,
              HibernateAfterTimeout]};
        Else ->
            Else
    end.

system_get_state([_Name, StateName, StateData, _Mod, _Time,
                  _HibernateAfterTimeout]) ->
    {ok, {StateName, StateData}}.

system_replace_state(StateFun,
                     [Name, StateName, StateData, Mod, Time,
                      HibernateAfterTimeout]) ->
    Result = {NStateName, NStateData} = StateFun({StateName, StateData}),
    {ok, Result,
     [Name, NStateName, NStateData, Mod, Time, HibernateAfterTimeout]}.

print_event(Dev, {in, Msg, StateName}, Name) ->
    case Msg of
        {'$gen_event', Event} ->
            io:format(Dev,
                      "*DBG* ~tp got event ~tp in state ~tw~n",
                      [Name, Event, StateName]);
        {'$gen_all_state_event', Event} ->
            io:format(Dev,
                      "*DBG* ~tp got all_state_event ~tp in state ~tw~n",
                      [Name, Event, StateName]);
        {'$gen_sync_event', {From, _Tag}, Event} ->
            io:format(Dev,
                      "*DBG* ~tp got sync_event ~tp from ~tw in state ~"
                      "tw~n",
                      [Name, Event, From, StateName]);
        {'$gen_sync_all_state_event', {From, _Tag}, Event} ->
            io:format(Dev,
                      "*DBG* ~tp got sync_all_state_event ~tp from ~tw "
                      "in state ~tw~n",
                      [Name, Event, From, StateName]);
        {timeout, Ref, {'$gen_timer', Message}} ->
            io:format(Dev,
                      "*DBG* ~tp got timer ~tp in state ~tw~n",
                      [Name, {timeout, Ref, Message}, StateName]);
        {timeout, _Ref, {'$gen_event', Event}} ->
            io:format(Dev,
                      "*DBG* ~tp got timer ~tp in state ~tw~n",
                      [Name, Event, StateName]);
        _ ->
            io:format(Dev,
                      "*DBG* ~tp got ~tp in state ~tw~n",
                      [Name, Msg, StateName])
    end;
print_event(Dev, {out, Msg, {To, _Tag}, StateName}, Name) ->
    io:format(Dev,
              "*DBG* ~tp sent ~tp to ~tw~n      and switched to state ~"
              "tw~n",
              [Name, Msg, To, StateName]);
print_event(Dev, {noreply, StateName}, Name) ->
    io:format(Dev,
              "*DBG* ~tp switched to state ~tw~n",
              [Name, StateName]).

handle_msg(Msg, Parent, Name, StateName, StateData, Mod, _Time,
           HibernateAfterTimeout) ->
    From = from(Msg),
    case catch dispatch(Msg, Mod, StateName, StateData) of
        {next_state, NStateName, NStateData} ->
            loop(Parent, Name, NStateName, NStateData, Mod, infinity,
                 HibernateAfterTimeout, []);
        {next_state, NStateName, NStateData, Time1} ->
            loop(Parent, Name, NStateName, NStateData, Mod, Time1,
                 HibernateAfterTimeout, []);
        {reply, Reply, NStateName, NStateData} when From =/= undefined ->
            reply(From, Reply),
            loop(Parent, Name, NStateName, NStateData, Mod, infinity,
                 HibernateAfterTimeout, []);
        {reply, Reply, NStateName, NStateData, Time1}
            when From =/= undefined ->
            reply(From, Reply),
            loop(Parent, Name, NStateName, NStateData, Mod, Time1,
                 HibernateAfterTimeout, []);
        {stop, Reason, NStateData} ->
            terminate(Reason, Name, From, Msg, Mod, StateName,
                      NStateData, []);
        {stop, Reason, Reply, NStateData} when From =/= undefined ->
            {'EXIT', R} =
                catch
                    terminate(Reason, Name, From, Msg, Mod, StateName,
                              NStateData, []),
            reply(From, Reply),
            exit(R);
        {'EXIT', {undef, [{Mod, handle_info, [_, _, _], _} | _]}} ->
            case logger:allow(warning, gen_fsm) of
                true ->
                    apply(logger, macro_log,
                          [#{mfa => {gen_fsm, handle_msg, 8},
                             line => 1517,
                             file =>
                                 "/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-"
                                 "6.1.2/src/gen_fsm.erl"},
                           warning,
                           #{label => {gen_fsm, no_handle_info},
                             module => Mod,
                             message => Msg},
                           #{domain => [otp],
                             report_cb => fun gen_fsm:format_log/2,
                             error_logger =>
                                 #{tag => warning_msg,
                                   report_cb => fun gen_fsm:format_log/1}}]);
                false ->
                    ok
            end,
            loop(Parent, Name, StateName, StateData, Mod, infinity,
                 HibernateAfterTimeout, []);
        {'EXIT', What} ->
            terminate(What, Name, From, Msg, Mod, StateName, StateData,
                      []);
        Reply ->
            terminate({bad_return_value, Reply},
                      Name, From, Msg, Mod, StateName, StateData, [])
    end.

handle_msg(Msg, Parent, Name, StateName, StateData, Mod, _Time,
           HibernateAfterTimeout, Debug) ->
    From = from(Msg),
    case catch dispatch(Msg, Mod, StateName, StateData) of
        {next_state, NStateName, NStateData} ->
            Debug1 =
                sys:handle_debug(Debug,
                                 fun print_event/3,
                                 Name,
                                 {noreply, NStateName}),
            loop(Parent, Name, NStateName, NStateData, Mod, infinity,
                 HibernateAfterTimeout, Debug1);
        {next_state, NStateName, NStateData, Time1} ->
            Debug1 =
                sys:handle_debug(Debug,
                                 fun print_event/3,
                                 Name,
                                 {noreply, NStateName}),
            loop(Parent, Name, NStateName, NStateData, Mod, Time1,
                 HibernateAfterTimeout, Debug1);
        {reply, Reply, NStateName, NStateData} when From =/= undefined ->
            Debug1 = reply(Name, From, Reply, Debug, NStateName),
            loop(Parent, Name, NStateName, NStateData, Mod, infinity,
                 HibernateAfterTimeout, Debug1);
        {reply, Reply, NStateName, NStateData, Time1}
            when From =/= undefined ->
            Debug1 = reply(Name, From, Reply, Debug, NStateName),
            loop(Parent, Name, NStateName, NStateData, Mod, Time1,
                 HibernateAfterTimeout, Debug1);
        {stop, Reason, NStateData} ->
            terminate(Reason, Name, From, Msg, Mod, StateName,
                      NStateData, Debug);
        {stop, Reason, Reply, NStateData} when From =/= undefined ->
            {'EXIT', R} =
                catch
                    terminate(Reason, Name, From, Msg, Mod, StateName,
                              NStateData, Debug),
            _ = reply(Name, From, Reply, Debug, StateName),
            exit(R);
        {'EXIT', What} ->
            terminate(What, Name, From, Msg, Mod, StateName, StateData,
                      Debug);
        Reply ->
            terminate({bad_return_value, Reply},
                      Name, From, Msg, Mod, StateName, StateData, Debug)
    end.

dispatch({'$gen_event', Event}, Mod, StateName, StateData) ->
    Mod:StateName(Event, StateData);
dispatch({'$gen_all_state_event', Event}, Mod, StateName, StateData) ->
    Mod:handle_event(Event, StateName, StateData);
dispatch({'$gen_sync_event', From, Event}, Mod, StateName, StateData) ->
    Mod:StateName(Event, From, StateData);
dispatch({'$gen_sync_all_state_event', From, Event},
         Mod, StateName, StateData) ->
    Mod:handle_sync_event(Event, From, StateName, StateData);
dispatch({timeout, Ref, {'$gen_timer', Msg}}, Mod, StateName, StateData) ->
    Mod:StateName({timeout, Ref, Msg}, StateData);
dispatch({timeout, _Ref, {'$gen_event', Event}},
         Mod, StateName, StateData) ->
    Mod:StateName(Event, StateData);
dispatch(Info, Mod, StateName, StateData) ->
    Mod:handle_info(Info, StateName, StateData).

from({'$gen_sync_event', From, _Event}) ->
    From;
from({'$gen_sync_all_state_event', From, _Event}) ->
    From;
from(_) ->
    undefined.

-spec reply(Caller, Reply) -> Result
               when Caller :: from(), Reply :: term(), Result :: term().

reply(From, Reply) ->
    gen:reply(From, Reply).

reply(Name, From, Reply, Debug, StateName) ->
    reply(From, Reply),
    sys:handle_debug(Debug,
                     fun print_event/3,
                     Name,
                     {out, Reply, From, StateName}).

-spec terminate(term(), _, _, _, atom(), _, _, _) -> no_return().

terminate(Reason, Name, From, Msg, Mod, StateName, StateData, Debug) ->
    case erlang:function_exported(Mod, terminate, 3) of
        true ->
            case catch Mod:terminate(Reason, StateName, StateData) of
                {'EXIT', R} ->
                    FmtStateData =
                        format_status(terminate, Mod, get(), StateData),
                    error_info(R, Name, From, Msg, StateName,
                               FmtStateData, Debug),
                    exit(R);
                _ ->
                    ok
            end;
        false ->
            ok
    end,
    case Reason of
        normal ->
            exit(normal);
        shutdown ->
            exit(shutdown);
        {shutdown, _} = Shutdown ->
            exit(Shutdown);
        _ ->
            FmtStateData1 =
                format_status(terminate, Mod, get(), StateData),
            error_info(Reason, Name, From, Msg, StateName,
                       FmtStateData1, Debug),
            exit(Reason)
    end.

error_info(Reason, Name, From, Msg, StateName, StateData, Debug) ->
    Log = sys:get_log(Debug),
    case logger:allow(error, gen_fsm) of
        true ->
            apply(logger, macro_log,
                  [#{mfa => {gen_fsm, error_info, 7},
                     line => 1653,
                     file =>
                         "/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.1.2/sr"
                         "c/gen_fsm.erl"},
                   error,
                   #{label => {gen_fsm, terminate},
                     name => Name,
                     last_message => Msg,
                     state_name => StateName,
                     state_data => StateData,
                     log => Log,
                     reason => Reason,
                     client_info => client_stacktrace(From),
                     process_label => proc_lib:get_label(self())},
                   #{domain => [otp],
                     report_cb => fun gen_fsm:format_log/2,
                     error_logger =>
                         #{tag => error,
                           report_cb => fun gen_fsm:format_log/1}}]);
        false ->
            ok
    end,
    ok.

client_stacktrace(undefined) ->
    undefined;
client_stacktrace({Pid, _Tag}) ->
    client_stacktrace(Pid);
client_stacktrace(Pid) when is_pid(Pid), node(Pid) =:= node() ->
    case process_info(Pid, [current_stacktrace, registered_name]) of
        undefined ->
            {Pid, dead};
        [{current_stacktrace, Stacktrace}, {registered_name, []}] ->
            {Pid, {Pid, Stacktrace}};
        [{current_stacktrace, Stacktrace}, {registered_name, Name}] ->
            {Pid, {Name, Stacktrace}}
    end;
client_stacktrace(Pid) when is_pid(Pid) ->
    {Pid, remote}.

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
limit_report(#{label := {gen_fsm, terminate},
               last_message := Msg,
               state_data := StateData,
               log := Log,
               reason := Reason,
               client_info := ClientInfo,
               process_label := ProcessLabel} =
                 Report,
             Depth) ->
    Report#{last_message => io_lib:limit_term(Msg, Depth),
            state_data => io_lib:limit_term(StateData, Depth),
            log =>
                [ 
                 io_lib:limit_term(L, Depth) ||
                     L <- Log
                ],
            reason => io_lib:limit_term(Reason, Depth),
            client_info => limit_client_report(ClientInfo, Depth),
            process_label => io_lib:limit_term(ProcessLabel, Depth)};
limit_report(#{label := {gen_fsm, no_handle_info}, message := Msg} =
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

format_log_single(#{label := {gen_fsm, terminate},
                    name := Name,
                    last_message := Msg,
                    state_name := StateName,
                    state_data := StateData,
                    log := Log,
                    reason := Reason,
                    client_info := ClientInfo,
                    process_label := ProcessLabel},
                  #{single_line := true, depth := Depth} = FormatOpts) ->
    P = p(FormatOpts),
    FixedReason = fix_reason(Reason),
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
                      ". Last event: ",
                      P,
                      ". State: ",
                      P,
                      ". Data: ",
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
        [FixedReason, get_msg(Msg), StateName, StateData]
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
format_log_single(#{label := {gen_fsm, no_handle_info},
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

format_log_multi(#{label := {gen_fsm, terminate},
                   name := Name,
                   last_message := Msg,
                   state_name := StateName,
                   state_data := StateData,
                   log := Log,
                   reason := Reason,
                   client_info := ClientInfo,
                   process_label := ProcessLabel},
                 #{depth := Depth} = FormatOpts) ->
    P = p(FormatOpts),
    FixedReason = fix_reason(Reason),
    {ClientFmt, ClientArgs} = format_client_log(ClientInfo, P, Depth),
    Format =
        lists:append(["** State machine ",
                      P,
                      " terminating \n",
                      case ProcessLabel of
                          undefined ->
                              [];
                          _ ->
                              "** Process label == " ++ P ++ "~n"
                      end,
                      get_msg_str(Msg, P) ++ "** When State == ",
                      P,
                      "~n",
                      "**      Data  == ",
                      P,
                      "~n",
                      "** Reason for termination ==~n** ",
                      P,
                      "~n",
                      case Log of
                          [] ->
                              [];
                          _ ->
                              "** Log ==~n**" ++ P ++ "~n"
                      end]),
    Args0 =
        [Name |
         case ProcessLabel of
             undefined ->
                 [];
             _ ->
                 [ProcessLabel]
         end]
        ++
        get_msg(Msg)
        ++
        [StateName, StateData, FixedReason |
         case Log of
             [] ->
                 [];
             _ ->
                 [Log]
         end],
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
format_log_multi(#{label := {gen_fsm, no_handle_info},
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

get_msg_str({'$gen_event', _Event}, P) ->
    "** Last event in was " ++ P ++ "~n";
get_msg_str({'$gen_sync_event', _From, _Event}, P) ->
    "** Last sync event in was " ++ P ++ " from ~tw~n";
get_msg_str({'$gen_all_state_event', _Event}, P) ->
    "** Last event in was " ++ P ++ " (for all states)~n";
get_msg_str({'$gen_sync_all_state_event', _From, _Event}, P) ->
    "** Last sync event in was "
    ++
    P ++ " (for all states) from " ++ P ++ "~n";
get_msg_str({timeout, _Ref, {'$gen_timer', _Msg}}, P) ->
    "** Last timer event in was " ++ P ++ "~n";
get_msg_str({timeout, _Ref, {'$gen_event', _Msg}}, P) ->
    "** Last timer event in was " ++ P ++ "~n";
get_msg_str(_Msg, P) ->
    "** Last message in was " ++ P ++ "~n".

get_msg({'$gen_event', Event}) ->
    [Event];
get_msg({'$gen_sync_event', {From, _Tag}, Event}) ->
    [Event, From];
get_msg({'$gen_all_state_event', Event}) ->
    [Event];
get_msg({'$gen_sync_all_state_event', {From, _Tag}, Event}) ->
    [Event, From];
get_msg({timeout, Ref, {'$gen_timer', Msg}}) ->
    [{timeout, Ref, Msg}];
get_msg({timeout, _Ref, {'$gen_event', Event}}) ->
    [Event];
get_msg(Msg) ->
    [Msg].

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

format_status(Opt, StatusData) ->
    [PDict, SysState, Parent, Debug,
     [Name, StateName, StateData, Mod, _Time, _HibernateAfterTimeout]] =
        StatusData,
    Header = gen:format_status_header("Status for state machine", Name),
    Log = sys:get_log(Debug),
    Specific =
        case format_status(Opt, Mod, PDict, StateData) of
            S when is_list(S) ->
                S;
            S ->
                [S]
        end,
    [{header, Header},
     {data,
      [{"Status", SysState},
       {"Parent", Parent},
       {"Logged events", Log},
       {"StateName", StateName}]} |
     Specific].

format_status(Opt, Mod, PDict, State) ->
    DefStatus =
        case Opt of
            terminate ->
                State;
            _ ->
                [{data, [{"StateData", State}]}]
        end,
    case erlang:function_exported(Mod, format_status, 2) of
        true ->
            case catch Mod:format_status(Opt, [PDict, State]) of
                {'EXIT', _} ->
                    DefStatus;
                Else ->
                    Else
            end;
        _ ->
            DefStatus
    end.



