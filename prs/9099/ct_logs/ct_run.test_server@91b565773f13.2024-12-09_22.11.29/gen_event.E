-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.1.2/src/gen_event.erl", 1).

-module(gen_event).

-export([start/0,
         start/1,
         start/2,
         start_link/0,
         start_link/1,
         start_link/2,
         start_monitor/0,
         start_monitor/1,
         start_monitor/2,
         stop/1,
         stop/3,
         notify/2,
         sync_notify/2,
         add_handler/3,
         add_sup_handler/3,
         delete_handler/3,
         swap_handler/3,
         swap_sup_handler/3,
         which_handlers/1,
         call/3,
         call/4,
         send_request/3,
         send_request/5,
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
         wake_hib/5]).

-export([init_it/6,
         system_continue/3,
         system_terminate/4,
         system_code_change/4,
         system_get_state/1,
         system_replace_state/2,
         format_status/2]).

-behaviour(sys).

-export([format_log/1,format_log/2]).

-export_type([handler/0,
              handler_args/0,
              add_handler_ret/0,
              del_handler_ret/0,
              request_id/0,
              request_id_collection/0,
              format_status/0]).

-record(handler,{module :: atom(),
                 id = false,
                 state,
                 supervised = false :: false | pid()}).

-file("/buildroot/otp/Erlang ∅⊤℞/lib/kernel-10.1.2/include/logger.hrl",
      1).

-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.1.2/src/gen_event.erl",
      168).

-callback init(InitArgs :: term()) ->
                  {ok, State :: term()} |
                  {ok, State :: term(), hibernate} |
                  {error, Reason :: term()}.

-callback handle_event(Event :: term(), State :: term()) ->
                          {ok, NewState :: term()} |
                          {ok, NewState :: term(), hibernate} |
                          {swap_handler,
                           Args1 :: term(),
                           NewState :: term(),
                           Handler2 :: atom() | {atom(), Id :: term()},
                           Args2 :: term()} |
                          remove_handler.

-callback handle_call(Request :: term(), State :: term()) ->
                         {ok, Reply :: term(), NewState :: term()} |
                         {ok,
                          Reply :: term(),
                          NewState :: term(),
                          hibernate} |
                         {swap_handler,
                          Reply :: term(),
                          Args1 :: term(),
                          NewState :: term(),
                          Handler2 :: atom() | {atom(), Id :: term()},
                          Args2 :: term()} |
                         {remove_handler, Reply :: term()}.

-callback handle_info(Info :: term(), State :: term()) ->
                         {ok, NewState :: term()} |
                         {ok, NewState :: term(), hibernate} |
                         {swap_handler,
                          Args1 :: term(),
                          NewState :: term(),
                          Handler2 :: atom() | {atom(), Id :: term()},
                          Args2 :: term()} |
                         remove_handler.

-callback terminate(Args ::
                        term() |
                        {stop, Reason :: term()} |
                        stop | remove_handler |
                        {error, {'EXIT', Reason :: term()}} |
                        {error, term()},
                    State :: term()) ->
                       term().

-callback code_change(OldVsn :: term() | {down, term()},
                      State :: term(),
                      Extra :: term()) ->
                         {ok, NewState :: term()}.

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
                     terminate/2,
                     code_change/3,
                     format_status/1,
                     format_status/2]).

-type handler() :: atom() | {atom(), term()}.

-type handler_args() :: term().

-type add_handler_ret() :: ok | term() | {'EXIT', term()}.

-type del_handler_ret() :: ok | term() | {'EXIT', term()}.

-type emgr_name() ::
          {local, atom()} | {global, term()} | {via, atom(), term()}.

-type debug_flag() ::
          trace | log | statistics | debug | {logfile, string()}.

-type options() ::
          [{timeout, timeout()} |
           {debug, [debug_flag()]} |
           {spawn_opt, [proc_lib:start_spawn_option()]} |
           {hibernate_after, timeout()}].

-type emgr_ref() ::
          atom() |
          {atom(), node()} |
          {global, term()} |
          {via, atom(), term()} |
          pid().

-type start_ret() :: {ok, pid()} | {error, term()}.

-type start_mon_ret() :: {ok, {pid(), reference()}} | {error, term()}.

-opaque request_id() :: gen:request_id().

-opaque request_id_collection() :: gen:request_id_collection().

-type response_timeout() :: timeout() | {abs, integer()}.

-spec start() -> start_ret().

start() ->
    gen:start(gen_event, nolink, 'no callback module', [], []).

-spec start(EventMgrName :: emgr_name()) -> start_ret();
           (Options :: options()) -> start_ret().

start(Name) when is_tuple(Name) ->
    gen:start(gen_event, nolink, Name, 'no callback module', [], []);
start(Options) when is_list(Options) ->
    gen:start(gen_event, nolink, 'no callback module', [], Options);
start(Arg) ->
    error(badarg, [Arg]).

-spec start(EventMgrName :: emgr_name(), Options :: options()) ->
               start_ret().

start(Name, Options) when is_tuple(Name), is_list(Options) ->
    gen:start(gen_event, nolink, Name, 'no callback module', [],
              Options);
start(Name, Options) ->
    error(badarg, [Name, Options]).

-spec start_link() -> start_ret().

start_link() ->
    gen:start(gen_event, link, 'no callback module', [], []).

-spec start_link(EventMgrName :: emgr_name()) -> start_ret();
                (Options :: options()) -> start_ret().

start_link(Name) when is_tuple(Name) ->
    gen:start(gen_event, link, Name, 'no callback module', [], []);
start_link(Options) when is_list(Options) ->
    gen:start(gen_event, link, 'no callback module', [], Options);
start_link(Arg) ->
    error(badarg, [Arg]).

-spec start_link(EventMgrName :: emgr_name(), Options :: options()) ->
                    start_ret().

start_link(Name, Options) when is_tuple(Name), is_list(Options) ->
    gen:start(gen_event, link, Name, 'no callback module', [], Options);
start_link(Name, Options) ->
    error(badarg, [Name, Options]).

-spec start_monitor() -> start_mon_ret().

start_monitor() ->
    gen:start(gen_event, monitor, 'no callback module', [], []).

-spec start_monitor(EventMgrNameOrOptions :: emgr_name() | options()) ->
                       start_mon_ret().

start_monitor(Name) when is_tuple(Name) ->
    gen:start(gen_event, monitor, Name, 'no callback module', [], []);
start_monitor(Options) when is_list(Options) ->
    gen:start(gen_event, monitor, 'no callback module', [], Options);
start_monitor(Arg) ->
    error(badarg, [Arg]).

-spec start_monitor(EventMgtName :: emgr_name(), Options :: options()) ->
                       start_mon_ret().

start_monitor(Name, Options) when is_tuple(Name), is_list(Options) ->
    gen:start(gen_event, monitor, Name, 'no callback module', [],
              Options);
start_monitor(Name, Options) ->
    error(badarg, [Name, Options]).

init_it(Starter, self, Name, Mod, Args, Options) ->
    init_it(Starter, self(), Name, Mod, Args, Options);
init_it(Starter, Parent, Name0, _, _, Options) ->
    process_flag(trap_exit, true),
    Name = gen:name(Name0),
    Debug = gen:debug_options(Name, Options),
    HibernateAfterTimeout = gen:hibernate_after(Options),
    proc_lib:init_ack(Starter, {ok, self()}),
    loop(Parent, Name, [], HibernateAfterTimeout, Debug, false).

-spec add_handler(EventMgrRef :: emgr_ref(),
                  Handler :: handler(),
                  Args :: term()) ->
                     term().

add_handler(M, Handler, Args) ->
    rpc(M, {add_handler, Handler, Args}).

-spec add_sup_handler(EventMgrRef :: emgr_ref(),
                      Handler :: handler(),
                      Args :: term()) ->
                         term().

add_sup_handler(M, Handler, Args) ->
    rpc(M, {add_sup_handler, Handler, Args, self()}).

-spec notify(EventMgrRef :: emgr_ref(), Event :: term()) -> ok.

notify(M, Event) ->
    send(M, {notify, Event}).

-spec sync_notify(EventMgrRef :: emgr_ref(), Event :: term()) -> ok.

sync_notify(M, Event) ->
    rpc(M, {sync_notify, Event}).

-spec call(EventMgrRef :: emgr_ref(),
           Handler :: handler(),
           Request :: term()) ->
              term().

call(M, Handler, Query) ->
    call1(M, Handler, Query).

-spec call(EventMgrRef :: emgr_ref(),
           Handler :: handler(),
           Request :: term(),
           Timeout :: timeout()) ->
              term().

call(M, Handler, Query, Timeout) ->
    call1(M, Handler, Query, Timeout).

-spec send_request(EventMgrRef :: emgr_ref(),
                   Handler :: handler(),
                   Request :: term()) ->
                      ReqId :: request_id().

send_request(M, Handler, Request) ->
    try
        gen:send_request(M, self(), {call, Handler, Request})
    catch
        error:badarg ->
            error(badarg, [M, Handler, Request])
    end.

-spec send_request(EventMgrRef :: emgr_ref(),
                   Handler :: handler(),
                   Request :: term(),
                   Label :: term(),
                   ReqIdCollection :: request_id_collection()) ->
                      NewReqIdCollection :: request_id_collection().

send_request(M, Handler, Request, Label, ReqIdCol) ->
    try
        gen:send_request(M,
                         self(),
                         {call, Handler, Request},
                         Label, ReqIdCol)
    catch
        error:badarg ->
            error(badarg, [M, Handler, Request, Label, ReqIdCol])
    end.

-spec wait_response(ReqId, WaitTime) -> Result
                       when
                           ReqId :: request_id(),
                           WaitTime :: response_timeout(),
                           Response ::
                               {reply, Reply :: term()} |
                               {error, {Reason :: term(), emgr_ref()}},
                           Result :: Response | timeout.

wait_response(ReqId, WaitTime) ->
    try gen:wait_response(ReqId, WaitTime) of
        {reply, {error, _} = Err} ->
            Err;
        Return ->
            Return
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
                               {error, {Reason :: term(), emgr_ref()}},
                           Result ::
                               {Response,
                                Label :: term(),
                                NewReqIdCollection ::
                                    request_id_collection()} |
                               no_request | timeout.

wait_response(ReqIdCol, WaitTime, Delete) ->
    try gen:wait_response(ReqIdCol, WaitTime, Delete) of
        {{reply, {error, _} = Err}, Label, NewReqIdCol} ->
            {Err, Label, NewReqIdCol};
        Return ->
            Return
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
                                   {Reason :: term(), emgr_ref()}},
                              Result :: Response | timeout.

receive_response(ReqId, Timeout) ->
    try gen:receive_response(ReqId, Timeout) of
        {reply, {error, _} = Err} ->
            Err;
        Return ->
            Return
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
                                   {Reason :: term(), emgr_ref()}},
                              Result ::
                                  {Response,
                                   Label :: term(),
                                   NewReqIdCollection ::
                                       request_id_collection()} |
                                  no_request | timeout.

receive_response(ReqIdCol, Timeout, Delete) ->
    try gen:receive_response(ReqIdCol, Timeout, Delete) of
        {{reply, {error, _} = Err}, Label, NewReqIdCol} ->
            {Err, Label, NewReqIdCol};
        Return ->
            Return
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
                                {error, {Reason :: term(), emgr_ref()}},
                            Result :: Response | no_reply.

check_response(Msg, ReqId) ->
    try gen:check_response(Msg, ReqId) of
        {reply, {error, _} = Err} ->
            Err;
        Return ->
            Return
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
                                {error, {Reason :: term(), emgr_ref()}},
                            Result ::
                                {Response,
                                 Label :: term(),
                                 NewReqIdCollection ::
                                     request_id_collection()} |
                                no_request | no_reply.

check_response(Msg, ReqIdCol, Delete) ->
    try gen:check_response(Msg, ReqIdCol, Delete) of
        {{reply, {error, _} = Err}, Label, NewReqIdCol} ->
            {Err, Label, NewReqIdCol};
        Return ->
            Return
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

-spec delete_handler(EventMgrRef :: emgr_ref(),
                     Handler :: handler(),
                     Args :: term()) ->
                        term().

delete_handler(M, Handler, Args) ->
    rpc(M, {delete_handler, Handler, Args}).

-spec swap_handler(EventMgrRef :: emgr_ref(),
                   OldHandler :: {handler(), term()},
                   NewHandler :: {handler(), term()}) ->
                      ok | {error, term()}.

swap_handler(M, {H1, A1}, {H2, A2}) ->
    rpc(M, {swap_handler, H1, A1, H2, A2}).

-spec swap_sup_handler(EventMgrRef :: emgr_ref(),
                       OldHandler :: {handler(), term()},
                       NewHandler :: {handler(), term()}) ->
                          ok | {error, term()}.

swap_sup_handler(M, {H1, A1}, {H2, A2}) ->
    rpc(M, {swap_sup_handler, H1, A1, H2, A2, self()}).

-spec which_handlers(EventMgrRef :: emgr_ref()) -> [handler()].

which_handlers(M) ->
    rpc(M, which_handlers).

-spec stop(EventMgrRef :: emgr_ref()) -> ok.

stop(M) ->
    gen:stop(M).

-spec stop(EventMgrRef :: emgr_ref(),
           Reason :: term(),
           Timeout :: timeout()) ->
              ok.

stop(M, Reason, Timeout) ->
    gen:stop(M, Reason, Timeout).

rpc(M, Cmd) ->
    {ok, Reply} = gen:call(M, self(), Cmd, infinity),
    Reply.

call1(M, Handler, Query) ->
    Cmd = {call, Handler, Query},
    try gen:call(M, self(), Cmd) of
        {ok, Res} ->
            Res
    catch
        exit:Reason ->
            exit({Reason, {gen_event, call, [M, Handler, Query]}})
    end.

call1(M, Handler, Query, Timeout) ->
    Cmd = {call, Handler, Query},
    try gen:call(M, self(), Cmd, Timeout) of
        {ok, Res} ->
            Res
    catch
        exit:Reason ->
            exit({Reason,
                  {gen_event, call, [M, Handler, Query, Timeout]}})
    end.

send({global, Name}, Cmd) ->
    catch global:send(Name, Cmd),
    ok;
send({via, Mod, Name}, Cmd) ->
    catch Mod:send(Name, Cmd),
    ok;
send(M, Cmd) ->
    M ! Cmd,
    ok.

loop(Parent, ServerName, MSL, HibernateAfterTimeout, Debug, true) ->
    proc_lib:hibernate(gen_event, wake_hib,
                       [Parent, ServerName, MSL, HibernateAfterTimeout,
                        Debug]);
loop(Parent, ServerName, MSL, HibernateAfterTimeout, Debug, _) ->
    fetch_msg(Parent, ServerName, MSL, HibernateAfterTimeout, Debug,
              false).

wake_hib(Parent, ServerName, MSL, HibernateAfterTimeout, Debug) ->
    fetch_msg(Parent, ServerName, MSL, HibernateAfterTimeout, Debug,
              true).

fetch_msg(Parent, ServerName, MSL, HibernateAfterTimeout, Debug, Hib) ->
    receive
        Msg ->
            decode_msg(Msg, Parent, ServerName, MSL,
                       HibernateAfterTimeout, Debug, Hib)
    after
        HibernateAfterTimeout ->
            loop(Parent, ServerName, MSL, HibernateAfterTimeout, Debug,
                 true)
    end.

decode_msg(Msg, Parent, ServerName, MSL, HibernateAfterTimeout, Debug,
           Hib) ->
    case Msg of
        {system, From, Req} ->
            sys:handle_system_msg(Req, From, Parent, gen_event, Debug,
                                  [ServerName, MSL,
                                   HibernateAfterTimeout, Hib],
                                  Hib);
        {'EXIT', Parent, Reason} ->
            terminate_server(Reason, Parent, MSL, ServerName);
        _Msg when Debug =:= [] ->
            handle_msg(Msg, Parent, ServerName, MSL,
                       HibernateAfterTimeout, []);
        _Msg ->
            Debug1 =
                sys:handle_debug(Debug,
                                 fun print_event/3,
                                 ServerName,
                                 {in, Msg}),
            handle_msg(Msg, Parent, ServerName, MSL,
                       HibernateAfterTimeout, Debug1)
    end.

handle_msg(Msg, Parent, ServerName, MSL, HibernateAfterTimeout, Debug) ->
    case Msg of
        {notify, Event} ->
            {Hib, MSL1} =
                server_notify(Event, handle_event, MSL, ServerName),
            loop(Parent, ServerName, MSL1, HibernateAfterTimeout, Debug,
                 Hib);
        {_From, Tag, {sync_notify, Event}} ->
            {Hib, MSL1} =
                server_notify(Event, handle_event, MSL, ServerName),
            reply(Tag, ok),
            loop(Parent, ServerName, MSL1, HibernateAfterTimeout, Debug,
                 Hib);
        {'EXIT', From, Reason} ->
            MSL1 = handle_exit(From, Reason, MSL, ServerName),
            loop(Parent, ServerName, MSL1, HibernateAfterTimeout, Debug,
                 false);
        {_From, Tag, {call, Handler, Query}} ->
            {Hib, Reply, MSL1} =
                server_call(Handler, Query, MSL, ServerName),
            reply(Tag, Reply),
            loop(Parent, ServerName, MSL1, HibernateAfterTimeout, Debug,
                 Hib);
        {_From, Tag, {add_handler, Handler, Args}} ->
            {Hib, Reply, MSL1} = server_add_handler(Handler, Args, MSL),
            reply(Tag, Reply),
            loop(Parent, ServerName, MSL1, HibernateAfterTimeout, Debug,
                 Hib);
        {_From, Tag, {add_sup_handler, Handler, Args, SupP}} ->
            {Hib, Reply, MSL1} =
                server_add_sup_handler(Handler, Args, MSL, SupP),
            reply(Tag, Reply),
            loop(Parent, ServerName, MSL1, HibernateAfterTimeout, Debug,
                 Hib);
        {_From, Tag, {delete_handler, Handler, Args}} ->
            {Reply, MSL1} =
                server_delete_handler(Handler, Args, MSL, ServerName),
            reply(Tag, Reply),
            loop(Parent, ServerName, MSL1, HibernateAfterTimeout, Debug,
                 false);
        {_From, Tag, {swap_handler, Handler1, Args1, Handler2, Args2}} ->
            {Hib, Reply, MSL1} =
                server_swap_handler(Handler1, Args1, Handler2, Args2,
                                    MSL, ServerName),
            reply(Tag, Reply),
            loop(Parent, ServerName, MSL1, HibernateAfterTimeout, Debug,
                 Hib);
        {_From, Tag,
         {swap_sup_handler, Handler1, Args1, Handler2, Args2, Sup}} ->
            {Hib, Reply, MSL1} =
                server_swap_handler(Handler1, Args1, Handler2, Args2,
                                    MSL, Sup, ServerName),
            reply(Tag, Reply),
            loop(Parent, ServerName, MSL1, HibernateAfterTimeout, Debug,
                 Hib);
        {_From, Tag, stop} ->
            catch terminate_server(normal, Parent, MSL, ServerName),
            reply(Tag, ok);
        {_From, Tag, which_handlers} ->
            reply(Tag, the_handlers(MSL)),
            loop(Parent, ServerName, MSL, HibernateAfterTimeout, Debug,
                 false);
        {_From, Tag, get_modules} ->
            reply(Tag, get_modules(MSL)),
            loop(Parent, ServerName, MSL, HibernateAfterTimeout, Debug,
                 false);
        Other ->
            {Hib, MSL1} =
                server_notify(Other, handle_info, MSL, ServerName),
            loop(Parent, ServerName, MSL1, HibernateAfterTimeout, Debug,
                 Hib)
    end.

terminate_server(Reason, Parent, MSL, ServerName) ->
    stop_handlers(MSL, ServerName),
    do_unlink(Parent, MSL),
    exit(Reason).

reply(From, Reply) ->
    gen:reply(From, Reply).

do_unlink(Parent, MSL) ->
    lists:foreach(fun({handler, _, _, _, _} = Handler)
                         when
                             (true
                              orelse
                              fail)
                             and
                             (element(5, Handler) =:= Parent) ->
                         true;
                     ({handler, _, _, _, _} = Handler)
                         when
                             (true
                              orelse
                              fail)
                             and
                             is_pid(element(5, Handler)) ->
                         unlink(case Handler of
                                    {handler, _, _, _, REC0} ->
                                        REC0;
                                    REC0 ->
                                        error({badrecord, REC0})
                                end),
                         true;
                     (_) ->
                         true
                  end,
                  MSL).

handle_exit(From, Reason, MSL, SName) ->
    MSL1 = terminate_supervised(From, Reason, MSL, SName),
    {_, MSL2} =
        server_notify({'EXIT', From, Reason}, handle_info, MSL1, SName),
    MSL2.

terminate_supervised(Pid, Reason, MSL, SName) ->
    F = fun({handler, _, _, _, _} = Ha)
               when
                   (true
                    orelse
                    fail)
                   and
                   (element(5, Ha) =:= Pid) ->
               do_terminate(case Ha of
                                {handler, REC1, _, _, _} ->
                                    REC1;
                                REC1 ->
                                    error({badrecord, REC1})
                            end,
                            Ha,
                            {stop, Reason},
                            case Ha of
                                {handler, _, _, REC2, _} ->
                                    REC2;
                                REC2 ->
                                    error({badrecord, REC2})
                            end,
                            {parent_terminated, {Pid, Reason}},
                            SName, shutdown),
               false;
           (_) ->
               true
        end,
    lists:filter(F, MSL).

system_continue(Parent, Debug,
                [ServerName, MSL, HibernateAfterTimeout, Hib]) ->
    loop(Parent, ServerName, MSL, HibernateAfterTimeout, Debug, Hib).

-spec system_terminate(_, _, _, [_]) -> no_return().

system_terminate(Reason, Parent, _Debug,
                 [ServerName, MSL, _HibernateAfterTimeout, _Hib]) ->
    terminate_server(Reason, Parent, MSL, ServerName).

system_code_change([ServerName, MSL, HibernateAfterTimeout, Hib],
                   Module, OldVsn, Extra) ->
    MSL1 =
        lists:zf(fun({handler, _, _, _, _} = H)
                        when
                            (true
                             orelse
                             fail)
                            and
                            (element(2, H) =:= Module) ->
                        {ok, NewState} =
                            Module:code_change(OldVsn,
                                               case H of
                                                   {handler, _, _, REC3,
                                                    _} ->
                                                       REC3;
                                                   REC3 ->
                                                       error({badrecord,
                                                              REC3})
                                               end,
                                               Extra),
                        {true,
                         begin
                             REC4 = H,
                             case REC4 of
                                 {handler, _, _, _, _} ->
                                     setelement(4, REC4, NewState);
                                 _ ->
                                     error({badrecord, REC4})
                             end
                         end};
                    (_) ->
                        true
                 end,
                 MSL),
    {ok, [ServerName, MSL1, HibernateAfterTimeout, Hib]}.

system_get_state([_ServerName, MSL, _HibernateAfterTimeout, _Hib]) ->
    {ok,
     [ 
      {Mod, Id, State} ||
          {handler, Mod, Id, State, _} <- MSL
     ]}.

system_replace_state(StateFun,
                     [ServerName, MSL, HibernateAfterTimeout, Hib]) ->
    {NMSL, NStates} =
        lists:unzip([ 
                     begin
                         Cur = {Mod, Id, State},
                         try
                             NState = {Mod, Id, NS} = StateFun(Cur),
                             {begin
                                  REC5 = HS,
                                  case REC5 of
                                      {handler, _, _, _, _} ->
                                          setelement(4, REC5, NS);
                                      _ ->
                                          error({badrecord, REC5})
                                  end
                              end,
                              NState}
                         catch
                             _:_ ->
                                 {HS, Cur}
                         end
                     end ||
                         {handler, Mod, Id, State, _} = HS <- MSL
                    ]),
    {ok, NStates, [ServerName, NMSL, HibernateAfterTimeout, Hib]}.

print_event(Dev, {in, Msg}, Name) ->
    case Msg of
        {notify, Event} ->
            io:format(Dev, "*DBG* ~tp got event ~tp~n", [Name, Event]);
        {_, _, {call, Handler, Query}} ->
            io:format(Dev,
                      "*DBG* ~tp(~tp) got call ~tp~n",
                      [Name, Handler, Query]);
        _ ->
            io:format(Dev, "*DBG* ~tp got ~tp~n", [Name, Msg])
    end;
print_event(Dev, Dbg, Name) ->
    io:format(Dev, "*DBG* ~tp : ~tp~n", [Name, Dbg]).

server_add_handler({Mod, Id}, Args, MSL) ->
    Handler = {handler, Mod, Id, undefined, false},
    server_add_handler(Mod, Handler, Args, MSL);
server_add_handler(Mod, Args, MSL) ->
    Handler = {handler, Mod, false, undefined, false},
    server_add_handler(Mod, Handler, Args, MSL).

server_add_handler(Mod, Handler, Args, MSL) ->
    case catch Mod:init(Args) of
        {ok, State} ->
            {false, ok,
             [begin
                  REC6 = Handler,
                  case REC6 of
                      {handler, _, _, _, _} ->
                          setelement(4, REC6, State);
                      _ ->
                          error({badrecord, REC6})
                  end
              end |
              MSL]};
        {ok, State, hibernate} ->
            {true, ok,
             [begin
                  REC7 = Handler,
                  case REC7 of
                      {handler, _, _, _, _} ->
                          setelement(4, REC7, State);
                      _ ->
                          error({badrecord, REC7})
                  end
              end |
              MSL]};
        Other ->
            {false, Other, MSL}
    end.

server_add_sup_handler({Mod, Id}, Args, MSL, Parent) ->
    link(Parent),
    Handler = {handler, Mod, Id, undefined, Parent},
    server_add_handler(Mod, Handler, Args, MSL);
server_add_sup_handler(Mod, Args, MSL, Parent) ->
    link(Parent),
    Handler = {handler, Mod, false, undefined, Parent},
    server_add_handler(Mod, Handler, Args, MSL).

server_delete_handler(HandlerId, Args, MSL, SName) ->
    case split(HandlerId, MSL) of
        {Mod, Handler, MSL1} ->
            {do_terminate(Mod, Handler, Args,
                          case Handler of
                              {handler, _, _, REC8, _} ->
                                  REC8;
                              REC8 ->
                                  error({badrecord, REC8})
                          end,
                          delete, SName, normal),
             MSL1};
        error ->
            {{error, module_not_found}, MSL}
    end.

server_swap_handler(Handler1, Args1, Handler2, Args2, MSL, SName) ->
    {State2, Sup, MSL1} =
        split_and_terminate(Handler1, Args1, MSL, SName, Handler2,
                            false),
    case s_s_h(Sup, Handler2, {Args2, State2}, MSL1) of
        {Hib, ok, MSL2} ->
            {Hib, ok, MSL2};
        {Hib, What, MSL2} ->
            {Hib, {error, What}, MSL2}
    end.

server_swap_handler(Handler1, Args1, Handler2, Args2, MSL, Sup, SName) ->
    {State2, _, MSL1} =
        split_and_terminate(Handler1, Args1, MSL, SName, Handler2, Sup),
    case s_s_h(Sup, Handler2, {Args2, State2}, MSL1) of
        {Hib, ok, MSL2} ->
            {Hib, ok, MSL2};
        {Hib, What, MSL2} ->
            {Hib, {error, What}, MSL2}
    end.

s_s_h(false, Handler, Args, MSL) ->
    server_add_handler(Handler, Args, MSL);
s_s_h(Pid, Handler, Args, MSL) ->
    server_add_sup_handler(Handler, Args, MSL, Pid).

split_and_terminate(HandlerId, Args, MSL, SName, Handler2, Sup) ->
    case split(HandlerId, MSL) of
        {Mod, Handler, MSL1} ->
            OldSup =
                case Handler of
                    {handler, _, _, _, REC9} ->
                        REC9;
                    REC9 ->
                        error({badrecord, REC9})
                end,
            NewSup =
                if
                    not Sup ->
                        OldSup;
                    true ->
                        Sup
                end,
            {do_terminate(Mod, Handler, Args,
                          case Handler of
                              {handler, _, _, REC10, _} ->
                                  REC10;
                              REC10 ->
                                  error({badrecord, REC10})
                          end,
                          swapped, SName,
                          {swapped, Handler2, NewSup}),
             OldSup, MSL1};
        error ->
            {error, false, MSL}
    end.

server_notify(Event, Func, [Handler | T], SName) ->
    case server_update(Handler, Func, Event, SName) of
        {ok, Handler1} ->
            {Hib, NewHandlers} = server_notify(Event, Func, T, SName),
            {Hib, [Handler1 | NewHandlers]};
        {hibernate, Handler1} ->
            {_Hib, NewHandlers} = server_notify(Event, Func, T, SName),
            {true, [Handler1 | NewHandlers]};
        no ->
            server_notify(Event, Func, T, SName)
    end;
server_notify(_, _, [], _) ->
    {false, []}.

server_update(Handler1, Func, Event, SName) ->
    Mod1 =
        case Handler1 of
            {handler, REC11, _, _, _} ->
                REC11;
            REC11 ->
                error({badrecord, REC11})
        end,
    State =
        case Handler1 of
            {handler, _, _, REC12, _} ->
                REC12;
            REC12 ->
                error({badrecord, REC12})
        end,
    case catch Mod1:Func(Event, State) of
        {ok, State1} ->
            {ok,
             begin
                 REC13 = Handler1,
                 case REC13 of
                     {handler, _, _, _, _} ->
                         setelement(4, REC13, State1);
                     _ ->
                         error({badrecord, REC13})
                 end
             end};
        {ok, State1, hibernate} ->
            {hibernate,
             begin
                 REC14 = Handler1,
                 case REC14 of
                     {handler, _, _, _, _} ->
                         setelement(4, REC14, State1);
                     _ ->
                         error({badrecord, REC14})
                 end
             end};
        {swap_handler, Args1, State1, Handler2, Args2} ->
            do_swap(Mod1, Handler1, Args1, State1, Handler2, Args2,
                    SName);
        remove_handler ->
            do_terminate(Mod1, Handler1, remove_handler, State, remove,
                         SName, normal),
            no;
        {'EXIT', {undef, [{Mod1, handle_info, [_, _], _} | _]}} ->
            case logger:allow(warning, gen_event) of
                true ->
                    apply(logger, macro_log,
                          [#{mfa => {gen_event, server_update, 4},
                             line => 1933,
                             file =>
                                 "/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-"
                                 "6.1.2/src/gen_event.erl"},
                           warning,
                           #{label => {gen_event, no_handle_info},
                             module => Mod1,
                             message => Event},
                           #{domain => [otp],
                             report_cb => fun gen_event:format_log/2,
                             error_logger =>
                                 #{tag => warning_msg,
                                   report_cb =>
                                       fun gen_event:format_log/1}}]);
                false ->
                    ok
            end,
            {ok, Handler1};
        Other ->
            do_terminate(Mod1, Handler1,
                         {error, Other},
                         State, Event, SName, crash),
            no
    end.

do_swap(Mod1, Handler1, Args1, State1, Handler2, Args2, SName) ->
    State2 =
        do_terminate(Mod1, Handler1, Args1, State1, swapped, SName,
                     {swapped, Handler2,
                      case Handler1 of
                          {handler, _, _, _, REC15} ->
                              REC15;
                          REC15 ->
                              error({badrecord, REC15})
                      end}),
    {Mod2, Handler} = new_handler(Handler2, Handler1),
    case catch Mod2:init({Args2, State2}) of
        {ok, State2a} ->
            {ok,
             begin
                 REC16 = Handler,
                 case REC16 of
                     {handler, _, _, _, _} ->
                         setelement(4, REC16, State2a);
                     _ ->
                         error({badrecord, REC16})
                 end
             end};
        Other ->
            report_terminate(Handler, crash,
                             {error, Other},
                             SName, false),
            no
    end.

new_handler({Mod, Id}, Handler1) ->
    {Mod,
     {handler, Mod, Id, undefined,
      case Handler1 of
          {handler, _, _, _, REC17} ->
              REC17;
          REC17 ->
              error({badrecord, REC17})
      end}};
new_handler(Mod, Handler1) ->
    {Mod,
     {handler, Mod, false, undefined,
      case Handler1 of
          {handler, _, _, _, REC18} ->
              REC18;
          REC18 ->
              error({badrecord, REC18})
      end}}.

-spec split(handler(), [#handler{}]) ->
               {atom(), #handler{}, [#handler{}]} | error.

split(Ha, MSL) ->
    split(Ha, MSL, []).

split({Mod, Id}, [{handler, _, _, _, _} = Ha | T], L)
    when
        (true
         orelse
         fail)
        and
        (element(2, Ha) =:= Mod),
        element(3, Ha) =:= Id ->
    {Mod, Ha, lists:reverse(L, T)};
split(Mod, [{handler, _, _, _, _} = Ha | T], L)
    when
        (true
         orelse
         fail)
        and
        (element(2, Ha) =:= Mod),
        not element(3, Ha) ->
    {Mod, Ha, lists:reverse(L, T)};
split(Ha, [H | T], L) ->
    split(Ha, T, [H | L]);
split(_, [], _) ->
    error.

server_call(Handler, Query, MSL, SName) ->
    case search(Handler, MSL) of
        {ok, Ha} ->
            case server_call_update(Ha, Query, SName) of
                {no, Reply} ->
                    {false, Reply, delete(Handler, MSL)};
                {{ok, Ha1}, Reply} ->
                    {false, Reply, replace(Handler, MSL, Ha1)};
                {{hibernate, Ha1}, Reply} ->
                    {true, Reply, replace(Handler, MSL, Ha1)}
            end;
        false ->
            {false, {error, bad_module}, MSL}
    end.

search({Mod, Id}, [{handler, _, _, _, _} = Ha | _MSL])
    when
        (true
         orelse
         fail)
        and
        (element(2, Ha) =:= Mod),
        element(3, Ha) =:= Id ->
    {ok, Ha};
search(Mod, [{handler, _, _, _, _} = Ha | _MSL])
    when
        (true
         orelse
         fail)
        and
        (element(2, Ha) =:= Mod),
        not element(3, Ha) ->
    {ok, Ha};
search(Handler, [_ | MSL]) ->
    search(Handler, MSL);
search(_, []) ->
    false.

delete({Mod, Id}, [{handler, _, _, _, _} = Ha | MSL])
    when
        (true
         orelse
         fail)
        and
        (element(2, Ha) =:= Mod),
        element(3, Ha) =:= Id ->
    MSL;
delete(Mod, [{handler, _, _, _, _} = Ha | MSL])
    when
        (true
         orelse
         fail)
        and
        (element(2, Ha) =:= Mod),
        not element(3, Ha) ->
    MSL;
delete(Handler, [Ha | MSL]) ->
    [Ha | delete(Handler, MSL)];
delete(_, []) ->
    [].

replace({Mod, Id}, [{handler, _, _, _, _} = Ha | MSL], NewHa)
    when
        (true
         orelse
         fail)
        and
        (element(2, Ha) =:= Mod),
        element(3, Ha) =:= Id ->
    [NewHa | MSL];
replace(Mod, [{handler, _, _, _, _} = Ha | MSL], NewHa)
    when
        (true
         orelse
         fail)
        and
        (element(2, Ha) =:= Mod),
        not element(3, Ha) ->
    [NewHa | MSL];
replace(Handler, [Ha | MSL], NewHa) ->
    [Ha | replace(Handler, MSL, NewHa)];
replace(_, [], NewHa) ->
    [NewHa].

server_call_update(Handler1, Query, SName) ->
    Mod1 =
        case Handler1 of
            {handler, REC19, _, _, _} ->
                REC19;
            REC19 ->
                error({badrecord, REC19})
        end,
    State =
        case Handler1 of
            {handler, _, _, REC20, _} ->
                REC20;
            REC20 ->
                error({badrecord, REC20})
        end,
    case catch Mod1:handle_call(Query, State) of
        {ok, Reply, State1} ->
            {{ok,
              begin
                  REC21 = Handler1,
                  case REC21 of
                      {handler, _, _, _, _} ->
                          setelement(4, REC21, State1);
                      _ ->
                          error({badrecord, REC21})
                  end
              end},
             Reply};
        {ok, Reply, State1, hibernate} ->
            {{hibernate,
              begin
                  REC22 = Handler1,
                  case REC22 of
                      {handler, _, _, _, _} ->
                          setelement(4, REC22, State1);
                      _ ->
                          error({badrecord, REC22})
                  end
              end},
             Reply};
        {swap_handler, Reply, Args1, State1, Handler2, Args2} ->
            {do_swap(Mod1, Handler1, Args1, State1, Handler2, Args2,
                     SName),
             Reply};
        {remove_handler, Reply} ->
            do_terminate(Mod1, Handler1, remove_handler, State, remove,
                         SName, normal),
            {no, Reply};
        Other ->
            do_terminate(Mod1, Handler1,
                         {error, Other},
                         State, Query, SName, crash),
            {no, {error, Other}}
    end.

do_terminate(Mod, Handler, Args, State, LastIn, SName, Reason) ->
    case erlang:function_exported(Mod, terminate, 2) of
        true ->
            Res = catch Mod:terminate(Args, State),
            report_terminate(Handler, Reason, Args, State, LastIn,
                             SName, Res),
            Res;
        false ->
            report_terminate(Handler, Reason, Args, State, LastIn,
                             SName, ok),
            ok
    end.

-spec report_terminate(_, How, _, _, _, _, _) -> ok
                          when
                              How ::
                                  crash | normal | shutdown |
                                  {swapped, handler(), false | pid()}.

report_terminate(Handler, crash, {error, Why}, State, LastIn, SName, _) ->
    report_terminate(Handler, Why, State, LastIn, SName);
report_terminate(Handler, How, _, State, LastIn, SName, _) ->
    report_terminate(Handler, How, State, LastIn, SName).

report_terminate(Handler, Reason, State, LastIn, SName) ->
    report_error(Handler, Reason, State, LastIn, SName),
    case
        case Handler of
            {handler, _, _, _, REC23} ->
                REC23;
            REC23 ->
                error({badrecord, REC23})
        end
    of
        false ->
            ok;
        Pid ->
            Pid ! {gen_event_EXIT, handler(Handler), Reason},
            ok
    end.

report_error(_Handler, normal, _, _, _) ->
    ok;
report_error(_Handler, shutdown, _, _, _) ->
    ok;
report_error(_Handler, {swapped, _, _}, _, _, _) ->
    ok;
report_error(Handler, Exit, State, LastIn, SName) ->
    {Reason, ReasonFun} =
        case Exit of
            {'EXIT', {R, ST}} ->
                {R,
                 fun(Reason) ->
                        {'EXIT', {Reason, ST}}
                 end};
            {'EXIT', R} ->
                {R,
                 fun(Reason) ->
                        {'EXIT', Reason}
                 end};
            R ->
                {R,
                 fun(Reason) ->
                        Reason
                 end}
        end,
    Status =
        gen:format_status(case Handler of
                              {handler, REC24, _, _, _} ->
                                  REC24;
                              REC24 ->
                                  error({badrecord, REC24})
                          end,
                          terminate,
                          #{state => State,
                            message => LastIn,
                            reason => Reason},
                          [get(), State]),
    case logger:allow(error, gen_event) of
        true ->
            apply(logger, macro_log,
                  [#{mfa => {gen_event, report_error, 5},
                     line => 2116,
                     file =>
                         "/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.1.2/sr"
                         "c/gen_event.erl"},
                   error,
                   #{label => {gen_event, terminate},
                     handler => handler(Handler),
                     name => SName,
                     last_message => maps:get(message, Status),
                     state =>
                         maps:get('$status', Status,
                                  maps:get(state, Status)),
                     reason => ReasonFun(maps:get(reason, Status)),
                     process_label => proc_lib:get_label(self())},
                   #{domain => [otp],
                     report_cb => fun gen_event:format_log/2,
                     error_logger =>
                         #{tag => error,
                           report_cb => fun gen_event:format_log/1}}]);
        false ->
            ok
    end.

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
limit_report(#{label := {gen_event, terminate},
               last_message := LastIn,
               state := State,
               reason := Reason,
               process_label := ProcessLabel} =
                 Report,
             Depth) ->
    Report#{last_message => io_lib:limit_term(LastIn, Depth),
            state => io_lib:limit_term(State, Depth),
            reason => io_lib:limit_term(Reason, Depth),
            process_label => io_lib:limit_term(ProcessLabel, Depth)};
limit_report(#{label := {gen_event, no_handle_info}, message := Msg} =
                 Report,
             Depth) ->
    Report#{message => io_lib:limit_term(Msg, Depth)}.

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

format_log_single(#{label := {gen_event, terminate},
                    handler := Handler,
                    name := SName,
                    last_message := LastIn,
                    state := State,
                    reason := Reason,
                    process_label := ProcessLabel},
                  #{single_line := true, depth := Depth} = FormatOpts) ->
    P = p(FormatOpts),
    Reason1 = fix_reason(Reason),
    Format1 =
        lists:append(["Generic event handler ",
                      P,
                      " crashed. Installed: ",
                      P,
                      case ProcessLabel of
                          undefined ->
                              "";
                          _ ->
                              ". Label: " ++ P
                      end,
                      ". Last event: ",
                      P,
                      ". State: ",
                      P,
                      ". Reason: ",
                      P,
                      "."]),
    Args1 =
        case Depth of
            unlimited ->
                [Handler, SName]
                ++
                case ProcessLabel of
                    undefined ->
                        [];
                    _ ->
                        [ProcessLabel]
                end
                ++
                [LastIn, State, Reason1];
            _ ->
                [Handler, Depth, SName, Depth]
                ++
                case ProcessLabel of
                    undefined ->
                        [];
                    _ ->
                        [ProcessLabel, Depth]
                end
                ++
                [LastIn, Depth, State, Depth, Reason1, Depth]
        end,
    {Format1, Args1};
format_log_single(#{label := {gen_event, no_handle_info},
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

format_log_multi(#{label := {gen_event, terminate},
                   handler := Handler,
                   name := SName,
                   last_message := LastIn,
                   state := State,
                   reason := Reason,
                   process_label := ProcessLabel},
                 #{depth := Depth} = FormatOpts) ->
    Reason1 = fix_reason(Reason),
    P = p(FormatOpts),
    Format =
        lists:append(["** gen_event handler ",
                      P,
                      " crashed.\n",
                      "** Was installed in ",
                      P,
                      "\n",
                      case ProcessLabel of
                          undefined ->
                              [];
                          _ ->
                              "** Process label == " ++ P ++ "\n"
                      end,
                      "** Last event was: ",
                      P,
                      "\n",
                      "** When handler state == ",
                      P,
                      "\n",
                      "** Reason == ",
                      P,
                      "\n"]),
    Args =
        case Depth of
            unlimited ->
                [Handler, SName]
                ++
                case ProcessLabel of
                    undefined ->
                        [];
                    _ ->
                        [ProcessLabel]
                end
                ++
                [LastIn, State, Reason1];
            _ ->
                [Handler, Depth, SName, Depth]
                ++
                case ProcessLabel of
                    undefined ->
                        [];
                    _ ->
                        [ProcessLabel, Depth]
                end
                ++
                [LastIn, Depth, State, Depth, Reason1, Depth]
        end,
    {Format, Args};
format_log_multi(#{label := {gen_event, no_handle_info},
                   module := Mod,
                   message := Msg},
                 #{depth := Depth} = FormatOpts) ->
    P = p(FormatOpts),
    Format =
        "** Undefined handle_info in ~p\n** Unhandled message: "
        ++
        P ++ "\n",
    Args =
        case Depth of
            unlimited ->
                [Mod, Msg];
            _ ->
                [Mod, Msg, Depth]
        end,
    {Format, Args}.

fix_reason({'EXIT', {undef, [{M, F, A, _L} | _] = MFAs} = Reason}) ->
    case code:is_loaded(M) of
        false ->
            {'module could not be loaded', MFAs};
        _ ->
            case erlang:function_exported(M, F, length(A)) of
                true ->
                    Reason;
                false ->
                    {'function not exported', MFAs}
            end
    end;
fix_reason({'EXIT', Reason}) ->
    Reason;
fix_reason(Reason) ->
    Reason.

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

handler(Handler)
    when
        not ((is_record(Handler, handler, 5)
              orelse
              fail)
             and
             element(3, Handler)) ->
    case Handler of
        {handler, REC25, _, _, _} ->
            REC25;
        REC25 ->
            error({badrecord, REC25})
    end;
handler(Handler) ->
    {case Handler of
         {handler, REC26, _, _, _} ->
             REC26;
         REC26 ->
             error({badrecord, REC26})
     end,
     case Handler of
         {handler, _, REC27, _, _} ->
             REC27;
         REC27 ->
             error({badrecord, REC27})
     end}.

the_handlers(MSL) ->
    [ 
     handler(Handler) ||
         Handler <- MSL
    ].

stop_handlers([Handler | T], SName) ->
    Mod =
        case Handler of
            {handler, REC28, _, _, _} ->
                REC28;
            REC28 ->
                error({badrecord, REC28})
        end,
    do_terminate(Mod, Handler, stop,
                 case Handler of
                     {handler, _, _, REC29, _} ->
                         REC29;
                     REC29 ->
                         error({badrecord, REC29})
                 end,
                 stop, SName, shutdown),
    stop_handlers(T, SName);
stop_handlers([], _) ->
    [].

get_modules(MSL) ->
    Mods =
        [ 
         case Handler of
             {handler, REC30, _, _, _} ->
                 REC30;
             REC30 ->
                 error({badrecord, REC30})
         end ||
             Handler <- MSL
        ],
    ordsets:to_list(ordsets:from_list(Mods)).

format_status(Opt, StatusData) ->
    [PDict, SysState, Parent, Debug,
     [ServerName, MSL, _HibernateAfterTimeout, _Hib]] =
        StatusData,
    Header =
        gen:format_status_header("Status for event handler", ServerName),
    {FmtMSL, Logs} =
        lists:mapfoldl(fun({handler, Mod, _, State, _} = MS, Logs) ->
                              Status =
                                  gen:format_status(Mod, Opt,
                                                    #{log => Logs,
                                                      state => State},
                                                    [PDict, State]),
                              {begin
                                   REC31 =
                                       maps:get('$status', Status,
                                                maps:get(state, Status)),
                                   REC32 = MS,
                                   case REC32 of
                                       {handler, _, _, _, _} ->
                                           setelement(4, REC32, REC31);
                                       _ ->
                                           error({badrecord, REC32})
                                   end
                               end,
                               maps:get(log, Status)}
                       end,
                       sys:get_log(Debug),
                       MSL),
    [{header, Header},
     {data,
      [{"Status", SysState},
       {"Logged Events", Logs},
       {"Parent", Parent}]},
     {items, {"Installed handlers", FmtMSL}}].



