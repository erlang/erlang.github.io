-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.2/src/supervisor.erl", 1).

-module(supervisor).

-behaviour(gen_server).

-export([start_link/2,
         start_link/3,
         start_child/2,
         restart_child/2,
         delete_child/2,
         terminate_child/2,
         which_children/1,
         which_child/2,
         count_children/1,
         check_childspecs/1,
         check_childspecs/2,
         get_childspec/2]).

-export([init/1,
         handle_call/3,
         handle_cast/2,
         handle_info/2,
         terminate/2,
         code_change/3]).

-export([format_log/1,format_log/2]).

-export([get_callback_module/1]).

-file("/buildroot/otp/Erlang ∅⊤℞/lib/kernel-10.2/include/logger.hrl", 1).

-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.2/src/supervisor.erl",
      301).

-export_type([sup_flags/0,
              child_spec/0,
              strategy/0,
              startchild_ret/0,
              startchild_err/0,
              startlink_ret/0,
              startlink_err/0,
              sup_name/0,
              sup_ref/0]).

-type auto_shutdown() :: never | any_significant | all_significant.

-type child() :: undefined | pid().

-type child_id() :: term().

-type mfargs() ::
          {M :: module(), F :: atom(), A :: [term()] | undefined}.

-type modules() :: [module()] | dynamic.

-type restart() :: permanent | transient | temporary.

-type significant() :: boolean().

-type shutdown() :: brutal_kill | timeout().

-type worker() :: worker | supervisor.

-type sup_name() ::
          {local, Name :: atom()} |
          {global, Name :: term()} |
          {via, Module :: module(), Name :: any()}.

-type sup_ref() ::
          (Name :: atom()) |
          {Name :: atom(), Node :: node()} |
          {global, Name :: term()} |
          {via, Module :: module(), Name :: any()} |
          pid().

-type child_spec() ::
          #{id := child_id(),
            start := mfargs(),
            restart => restart(),
            significant => significant(),
            shutdown => shutdown(),
            type => worker(),
            modules => modules()} |
          {Id :: child_id(),
           StartFunc :: mfargs(),
           Restart :: restart(),
           Shutdown :: shutdown(),
           Type :: worker(),
           Modules :: modules()}.

-type strategy() ::
          one_for_all | one_for_one | rest_for_one | simple_one_for_one.

-type sup_flags() ::
          #{strategy => strategy(),
            intensity => non_neg_integer(),
            period => pos_integer(),
            auto_shutdown => auto_shutdown()} |
          {RestartStrategy :: strategy(),
           Intensity :: non_neg_integer(),
           Period :: pos_integer()}.

-type children() ::
          {Ids :: [child_id()], Db :: #{child_id() => child_rec()}}.

-record(child,{pid =
                   undefined ::
                       child() |
                       {restarting, pid() | undefined} |
                       [pid()],
               id :: child_id(),
               mfargs :: mfargs(),
               restart_type :: restart(),
               significant :: significant(),
               shutdown :: shutdown(),
               child_type :: worker(),
               modules = [] :: modules()}).

-type child_rec() :: #child{}.

-record(state,{name,
               strategy = one_for_one :: strategy(),
               children = {[], #{}} :: children(),
               dynamics ::
                   {maps, #{pid() => list()}} |
                   {mapsets, #{pid() => []}} |
                   undefined,
               intensity = 1 :: non_neg_integer(),
               period = 5 :: pos_integer(),
               restarts = [],
               nrestarts = 0,
               dynamic_restarts = 0 :: non_neg_integer(),
               auto_shutdown = never :: auto_shutdown(),
               module, args}).

-type state() :: #state{}.

-callback init(Args :: term()) ->
                  {ok,
                   {SupFlags :: sup_flags(),
                    [ChildSpec :: child_spec()]}} |
                  ignore.

-type startlink_err() ::
          {already_started, pid()} | {shutdown, term()} | term().

-type startlink_ret() :: {ok, pid()} | ignore | {error, startlink_err()}.

-spec start_link(Module, Args) -> startlink_ret()
                    when Module :: module(), Args :: term().

start_link(Mod, Args) ->
    gen_server:start_link(supervisor, {self, Mod, Args}, []).

-spec start_link(SupName, Module, Args) -> startlink_ret()
                    when
                        SupName :: sup_name(),
                        Module :: module(),
                        Args :: term().

start_link(SupName, Mod, Args) ->
    gen_server:start_link(SupName, supervisor, {SupName, Mod, Args}, []).

-type startchild_err() ::
          already_present | {already_started, Child :: child()} | term().

-type startchild_ret() ::
          {ok, Child :: child()} |
          {ok, Child :: child(), Info :: term()} |
          {error, startchild_err()}.

-spec start_child(SupRef, ChildSpec) -> startchild_ret()
                     when SupRef :: sup_ref(), ChildSpec :: child_spec();
                 (SupRef, ExtraArgs) -> startchild_ret()
                     when SupRef :: sup_ref(), ExtraArgs :: [term()].

start_child(Supervisor, ChildSpecOrExtraArgs) ->
    call(Supervisor, {start_child, ChildSpecOrExtraArgs}).

-spec restart_child(SupRef, Id) -> Result
                       when
                           SupRef :: sup_ref(),
                           Id :: child_id(),
                           Result ::
                               {ok, Child :: child()} |
                               {ok, Child :: child(), Info :: term()} |
                               {error, Error},
                           Error ::
                               running | restarting | not_found |
                               simple_one_for_one |
                               term().

restart_child(Supervisor, Id) ->
    call(Supervisor, {restart_child, Id}).

-spec delete_child(SupRef, Id) -> Result
                      when
                          SupRef :: sup_ref(),
                          Id :: child_id(),
                          Result :: ok | {error, Error},
                          Error ::
                              running | restarting | not_found |
                              simple_one_for_one.

delete_child(Supervisor, Id) ->
    call(Supervisor, {delete_child, Id}).

-spec terminate_child(SupRef, Id) -> Result
                         when
                             SupRef :: sup_ref(),
                             Id :: pid() | child_id(),
                             Result :: ok | {error, Error},
                             Error :: not_found | simple_one_for_one.

terminate_child(Supervisor, Id) ->
    call(Supervisor, {terminate_child, Id}).

-spec get_childspec(SupRef, Id) -> Result
                       when
                           SupRef :: sup_ref(),
                           Id :: pid() | child_id(),
                           Result :: {ok, child_spec()} | {error, Error},
                           Error :: not_found.

get_childspec(Supervisor, Id) ->
    call(Supervisor, {get_childspec, Id}).

-spec which_children(SupRef) -> [{Id, Child, Type, Modules}]
                        when
                            SupRef :: sup_ref(),
                            Id :: child_id() | undefined,
                            Child :: child() | restarting,
                            Type :: worker(),
                            Modules :: modules().

which_children(Supervisor) ->
    call(Supervisor, which_children).

-spec which_child(SupRef, Id) -> Result
                     when
                         SupRef :: sup_ref(),
                         Id :: pid() | child_id(),
                         Result ::
                             {ok, {Id, Child, Type, Modules}} |
                             {error, Error},
                         Child :: child() | restarting,
                         Type :: worker(),
                         Modules :: modules(),
                         Error :: not_found.

which_child(Supervisor, Id) ->
    call(Supervisor, {which_child, Id}).

-spec count_children(SupRef) -> PropListOfCounts
                        when
                            SupRef :: sup_ref(),
                            PropListOfCounts :: [Count],
                            Count ::
                                {specs,
                                 ChildSpecCount :: non_neg_integer()} |
                                {active,
                                 ActiveProcessCount :: non_neg_integer()} |
                                {supervisors,
                                 ChildSupervisorCount ::
                                     non_neg_integer()} |
                                {workers,
                                 ChildWorkerCount :: non_neg_integer()}.

count_children(Supervisor) ->
    call(Supervisor, count_children).

call(Supervisor, Req) ->
    gen_server:call(Supervisor, Req, infinity).

-spec check_childspecs(ChildSpecs) -> Result
                          when
                              ChildSpecs :: [child_spec()],
                              Result :: ok | {error, Error :: term()}.

check_childspecs(ChildSpecs) ->
    check_childspecs(ChildSpecs, undefined).

-spec check_childspecs(ChildSpecs, AutoShutdown) -> Result
                          when
                              ChildSpecs :: [child_spec()],
                              AutoShutdown ::
                                  undefined | auto_shutdown(),
                              Result :: ok | {error, Error :: term()}.

check_childspecs(ChildSpecs, AutoShutdown) when is_list(ChildSpecs) ->
    check_childspecs1(ChildSpecs, AutoShutdown);
check_childspecs(X, _AutoShutdown) ->
    {error, {badarg, X}}.

check_childspecs1(ChildSpecs, undefined) ->
    check_childspecs2(ChildSpecs, undefined);
check_childspecs1(ChildSpecs, never) ->
    check_childspecs2(ChildSpecs, never);
check_childspecs1(ChildSpecs, any_significant) ->
    check_childspecs2(ChildSpecs, any_significant);
check_childspecs1(ChildSpecs, all_significant) ->
    check_childspecs2(ChildSpecs, all_significant);
check_childspecs1(_, X) ->
    {error, {badarg, X}}.

check_childspecs2(ChildSpecs, AutoShutdown) ->
    case check_startspec(ChildSpecs, AutoShutdown) of
        {ok, _} ->
            ok;
        Error ->
            {error, Error}
    end.

-spec get_callback_module(Pid) -> Module
                             when Pid :: pid(), Module :: atom().

get_callback_module(Pid) ->
    {status, _Pid,
     {module, _Mod},
     [_PDict, _SysState, _Parent, _Dbg, Misc]} =
        sys:get_status(Pid),
    case lists:keyfind(supervisor, 1, Misc) of
        {supervisor, [{"Callback", Mod}]} ->
            Mod;
        _ ->
            [_Header, _Data, {data, [{"State", State}]} | _] = Misc,
            case State of
                {state, _, _, _, _, _, _, _, _, _, _, REC0, _} ->
                    REC0;
                REC0 ->
                    error({badrecord, REC0})
            end
    end.

-type init_sup_name() :: sup_name() | self.

-type stop_rsn() ::
          {shutdown, term()} |
          {bad_return, {module(), init, term()}} |
          {bad_start_spec, term()} |
          {start_spec, term()} |
          {supervisor_data, term()}.

-spec init({init_sup_name(), module(), [term()]}) ->
              {ok, state()} | ignore | {stop, stop_rsn()}.

init({SupName, Mod, Args}) ->
    process_flag(trap_exit, true),
    case Mod:init(Args) of
        {ok, {SupFlags, StartSpec}} ->
            case init_state(SupName, SupFlags, Mod, Args) of
                {ok,
                 {state, _, _, _, _, _, _, _, _, _, _, _, _} = State}
                    when
                        (true
                         orelse
                         fail)
                        and
                        (element(3, State) =:= simple_one_for_one) ->
                    init_dynamic(State, StartSpec);
                {ok, State} ->
                    init_children(State, StartSpec);
                Error ->
                    {stop, {supervisor_data, Error}}
            end;
        ignore ->
            ignore;
        Error ->
            {stop, {bad_return, {Mod, init, Error}}}
    end.

init_children(State, StartSpec) ->
    SupName =
        case State of
            {state, REC1, _, _, _, _, _, _, _, _, _, _, _} ->
                REC1;
            REC1 ->
                error({badrecord, REC1})
        end,
    case
        check_startspec(StartSpec,
                        case State of
                            {state, _, _, _, _, _, _, _, _, _, REC2, _,
                             _} ->
                                REC2;
                            REC2 ->
                                error({badrecord, REC2})
                        end)
    of
        {ok, Children} ->
            case start_children(Children, SupName) of
                {ok, NChildren} ->
                    {ok,
                     begin
                         REC3 = State,
                         case REC3 of
                             {state, _, _, _, _, _, _, _, _, _, _, _, _} ->
                                 setelement(4, REC3, NChildren);
                             _ ->
                                 error({badrecord, REC3})
                         end
                     end,
                     hibernate};
                {error, NChildren, Reason} ->
                    _ = terminate_children(NChildren, SupName),
                    {stop, {shutdown, Reason}}
            end;
        Error ->
            {stop, {start_spec, Error}}
    end.

init_dynamic(State, [StartSpec]) ->
    case
        check_startspec([StartSpec],
                        case State of
                            {state, _, _, _, _, _, _, _, _, _, REC4, _,
                             _} ->
                                REC4;
                            REC4 ->
                                error({badrecord, REC4})
                        end)
    of
        {ok, Children} ->
            {ok,
             dyn_init(begin
                          REC5 = State,
                          case REC5 of
                              {state, _, _, _, _, _, _, _, _, _, _, _,
                               _} ->
                                  setelement(4, REC5, Children);
                              _ ->
                                  error({badrecord, REC5})
                          end
                      end)};
        Error ->
            {stop, {start_spec, Error}}
    end;
init_dynamic(_State, StartSpec) ->
    {stop, {bad_start_spec, StartSpec}}.

start_children(Children, SupName) ->
    Start =
        fun(Id, Child) ->
               case do_start_child(SupName, Child, info_report) of
                   {ok, undefined}
                       when
                           (is_record(Child, child, 9)
                            orelse
                            fail)
                           and
                           (element(5, Child) =:= temporary) ->
                       remove;
                   {ok, Pid} ->
                       {update,
                        begin
                            REC6 = Child,
                            case REC6 of
                                {child, _, _, _, _, _, _, _, _} ->
                                    setelement(2, REC6, Pid);
                                _ ->
                                    error({badrecord, REC6})
                            end
                        end};
                   {ok, Pid, _Extra} ->
                       {update,
                        begin
                            REC7 = Child,
                            case REC7 of
                                {child, _, _, _, _, _, _, _, _} ->
                                    setelement(2, REC7, Pid);
                                _ ->
                                    error({badrecord, REC7})
                            end
                        end};
                   {error, Reason} ->
                       case logger:allow(error, supervisor) of
                           true ->
                               apply(logger, macro_log,
                                     [#{mfa =>
                                            {supervisor, start_children,
                                             2},
                                        line => 959,
                                        file =>
                                            "/buildroot/otp/Erlang ∅⊤℞/"
                                            "lib/stdlib-6.2/src/supervi"
                                            "sor.erl"},
                                      error,
                                      #{label =>
                                            {supervisor, start_error},
                                        report =>
                                            [{supervisor, SupName},
                                             {errorContext, start_error},
                                             {reason, Reason},
                                             {offender,
                                              extract_child(Child)}]},
                                      #{domain => [otp, sasl],
                                        report_cb =>
                                            fun supervisor:format_log/2,
                                        logger_formatter =>
                                            #{title =>
                                                  "SUPERVISOR REPORT"},
                                        error_logger =>
                                            #{tag => error_report,
                                              type => supervisor_report,
                                              report_cb =>
                                                  fun supervisor:format_log/1}}]);
                           false ->
                               ok
                       end,
                       {abort, {failed_to_start_child, Id, Reason}}
               end
        end,
    children_map(Start, Children).

do_start_child(SupName, Child, Report) ->
    {child, _, _, {M, F, Args}, _, _, _, _, _} = Child,
    case do_start_child_i(M, F, Args) of
        {ok, Pid} when is_pid(Pid) ->
            NChild =
                begin
                    REC8 = Child,
                    case REC8 of
                        {child, _, _, _, _, _, _, _, _} ->
                            setelement(2, REC8, Pid);
                        _ ->
                            error({badrecord, REC8})
                    end
                end,
            report_progress(NChild, SupName, Report),
            {ok, Pid};
        {ok, Pid, Extra} when is_pid(Pid) ->
            NChild =
                begin
                    REC9 = Child,
                    case REC9 of
                        {child, _, _, _, _, _, _, _, _} ->
                            setelement(2, REC9, Pid);
                        _ ->
                            error({badrecord, REC9})
                    end
                end,
            report_progress(NChild, SupName, Report),
            {ok, Pid, Extra};
        Other ->
            Other
    end.

do_start_child_i(M, F, A) ->
    case catch apply(M, F, A) of
        {ok, Pid} when is_pid(Pid) ->
            {ok, Pid};
        {ok, Pid, Extra} when is_pid(Pid) ->
            {ok, Pid, Extra};
        ignore ->
            {ok, undefined};
        {error, Error} ->
            {error, Error};
        What ->
            {error, What}
    end.

-type call() :: which_children | count_children | {_, _}.

-spec handle_call(call(), term(), state()) -> {reply, term(), state()}.

handle_call({start_child, EArgs},
            _From,
            {state, _, _, _, _, _, _, _, _, _, _, _, _} = State)
    when
        (true
         orelse
         fail)
        and
        (element(3, State) =:= simple_one_for_one) ->
    Child = get_dynamic_child(State),
    {child, _, _, {M, F, A}, _, _, _, _, _} = Child,
    Args = A ++ EArgs,
    case do_start_child_i(M, F, Args) of
        {ok, undefined} ->
            {reply, {ok, undefined}, State};
        {ok, Pid} ->
            NState = dyn_store(Pid, Args, State),
            {reply, {ok, Pid}, NState};
        {ok, Pid, Extra} ->
            NState = dyn_store(Pid, Args, State),
            {reply, {ok, Pid, Extra}, NState};
        What ->
            {reply, What, State}
    end;
handle_call({start_child, ChildSpec}, _From, State) ->
    case
        check_childspec(ChildSpec,
                        case State of
                            {state, _, _, _, _, _, _, _, _, _, REC10, _,
                             _} ->
                                REC10;
                            REC10 ->
                                error({badrecord, REC10})
                        end)
    of
        {ok, Child} ->
            {Resp, NState} = handle_start_child(Child, State),
            {reply, Resp, NState};
        What ->
            {reply, {error, What}, State}
    end;
handle_call({terminate_child, Id},
            _From,
            {state, _, _, _, _, _, _, _, _, _, _, _, _} = State)
    when
        not is_pid(Id),
        (true
         orelse
         fail)
        and
        (element(3, State) =:= simple_one_for_one) ->
    {reply, {error, simple_one_for_one}, State};
handle_call({terminate_child, Id}, _From, State) ->
    case find_child(Id, State) of
        {ok, Child} ->
            do_terminate(Child,
                         case State of
                             {state, REC11, _, _, _, _, _, _, _, _, _,
                              _, _} ->
                                 REC11;
                             REC11 ->
                                 error({badrecord, REC11})
                         end),
            {reply, ok, del_child(Child, State)};
        error ->
            {reply, {error, not_found}, State}
    end;
handle_call({restart_child, _Id},
            _From,
            {state, _, _, _, _, _, _, _, _, _, _, _, _} = State)
    when
        (true
         orelse
         fail)
        and
        (element(3, State) =:= simple_one_for_one) ->
    {reply, {error, simple_one_for_one}, State};
handle_call({restart_child, Id}, _From, State) ->
    case find_child(Id, State) of
        {ok, {child, _, _, _, _, _, _, _, _} = Child}
            when
                (true
                 orelse
                 fail)
                and
                (element(2, Child) =:= undefined) ->
            case
                do_start_child(case State of
                                   {state, REC12, _, _, _, _, _, _, _,
                                    _, _, _, _} ->
                                       REC12;
                                   REC12 ->
                                       error({badrecord, REC12})
                               end,
                               Child, debug_report)
            of
                {ok, Pid} ->
                    NState = set_pid(Pid, Id, State),
                    {reply, {ok, Pid}, NState};
                {ok, Pid, Extra} ->
                    NState = set_pid(Pid, Id, State),
                    {reply, {ok, Pid, Extra}, NState};
                Error ->
                    {reply, Error, State}
            end;
        {ok, {child, {restarting, _}, _, _, _, _, _, _, _}} ->
            {reply, {error, restarting}, State};
        {ok, _} ->
            {reply, {error, running}, State};
        _ ->
            {reply, {error, not_found}, State}
    end;
handle_call({delete_child, _Id},
            _From,
            {state, _, _, _, _, _, _, _, _, _, _, _, _} = State)
    when
        (true
         orelse
         fail)
        and
        (element(3, State) =:= simple_one_for_one) ->
    {reply, {error, simple_one_for_one}, State};
handle_call({delete_child, Id}, _From, State) ->
    case find_child(Id, State) of
        {ok, {child, _, _, _, _, _, _, _, _} = Child}
            when
                (true
                 orelse
                 fail)
                and
                (element(2, Child) =:= undefined) ->
            NState = remove_child(Id, State),
            {reply, ok, NState};
        {ok, {child, {restarting, _}, _, _, _, _, _, _, _}} ->
            {reply, {error, restarting}, State};
        {ok, _} ->
            {reply, {error, running}, State};
        _ ->
            {reply, {error, not_found}, State}
    end;
handle_call({get_childspec, Id}, _From, State) ->
    case find_child(Id, State) of
        {ok, Child} ->
            {reply, {ok, child_to_spec(Child)}, State};
        error ->
            {reply, {error, not_found}, State}
    end;
handle_call(which_children, _From,
            {state, _, _, _, _, _, _, _, _, _, _, _, _} = State)
    when
        (true
         orelse
         fail)
        and
        (element(3, State) =:= simple_one_for_one) ->
    {child, _, _, _, _, _, _, CT, Mods} = get_dynamic_child(State),
    Reply =
        dyn_map(fun({restarting, _}) ->
                       {undefined, restarting, CT, Mods};
                   (Pid) ->
                       {undefined, Pid, CT, Mods}
                end,
                State),
    {reply, Reply, State};
handle_call(which_children, _From, State) ->
    Resp =
        children_to_list(fun(Id,
                             {child,
                              {restarting, _},
                              _, _, _, _, _, ChildType, Mods}) ->
                                {Id, restarting, ChildType, Mods};
                            (Id,
                             {child, Pid, _, _, _, _, _, ChildType,
                              Mods}) ->
                                {Id, Pid, ChildType, Mods}
                         end,
                         case State of
                             {state, _, _, REC13, _, _, _, _, _, _, _,
                              _, _} ->
                                 REC13;
                             REC13 ->
                                 error({badrecord, REC13})
                         end),
    {reply, Resp, State};
handle_call({which_child, Id},
            _From,
            {state, _, _, _, _, _, _, _, _, _, _, _, _} = State)
    when
        not is_pid(Id),
        (true
         orelse
         fail)
        and
        (element(3, State) =:= simple_one_for_one) ->
    {reply, {error, simple_one_for_one}, State};
handle_call({which_child, Pid},
            _From,
            {state, _, _, _, _, _, _, _, _, _, _, _, _} = State)
    when
        (true
         orelse
         fail)
        and
        (element(3, State) =:= simple_one_for_one) ->
    Result =
        case find_dynamic_child(Pid, State) of
            {ok, {child, {restarting, _}, _, _, _, _, _, CT, Mods}} ->
                {ok, {undefined, restarting, CT, Mods}};
            {ok, {child, Pid, _, _, _, _, _, CT, Mods}} ->
                {ok, {undefined, Pid, CT, Mods}};
            error ->
                {error, not_found}
        end,
    {reply, Result, State};
handle_call({which_child, Id}, _From, State) ->
    Result =
        case find_child(Id, State) of
            {ok, {child, {restarting, _}, _, _, _, _, _, CT, Mods}} ->
                {ok, {Id, restarting, CT, Mods}};
            {ok, {child, Pid, _, _, _, _, _, CT, Mods}} ->
                {ok, {Id, Pid, CT, Mods}};
            error ->
                {error, not_found}
        end,
    {reply, Result, State};
handle_call(count_children, _From,
            {state, _, _, _, _, _, _, _, _, Restarts, _, _, _} =
                {state, _, _, _, _, _, _, _, _, _, _, _, _} = State)
    when
        (true
         orelse
         fail)
        and
        (element(3, State) =:= simple_one_for_one) ->
    {child, _, _, _, _, _, _, CT, _} = get_dynamic_child(State),
    Sz = dyn_size(State),
    Active = Sz - Restarts,
    Reply =
        case CT of
            supervisor ->
                [{specs, 1},
                 {active, Active},
                 {supervisors, Sz},
                 {workers, 0}];
            worker ->
                [{specs, 1},
                 {active, Active},
                 {supervisors, 0},
                 {workers, Sz}]
        end,
    {reply, Reply, State};
handle_call(count_children, _From, State) ->
    {Specs, Active, Supers, Workers} =
        children_fold(fun(_Id, Child, Counts) ->
                             count_child(Child, Counts)
                      end,
                      {0, 0, 0, 0},
                      case State of
                          {state, _, _, REC14, _, _, _, _, _, _, _, _,
                           _} ->
                              REC14;
                          REC14 ->
                              error({badrecord, REC14})
                      end),
    Reply =
        [{specs, Specs},
         {active, Active},
         {supervisors, Supers},
         {workers, Workers}],
    {reply, Reply, State}.

count_child({child, Pid, _, _, _, _, _, worker, _},
            {Specs, Active, Supers, Workers}) ->
    case
        is_pid(Pid)
        andalso
        is_process_alive(Pid)
    of
        true ->
            {Specs + 1, Active + 1, Supers, Workers + 1};
        false ->
            {Specs + 1, Active, Supers, Workers + 1}
    end;
count_child({child, Pid, _, _, _, _, _, supervisor, _},
            {Specs, Active, Supers, Workers}) ->
    case
        is_pid(Pid)
        andalso
        is_process_alive(Pid)
    of
        true ->
            {Specs + 1, Active + 1, Supers + 1, Workers};
        false ->
            {Specs + 1, Active, Supers + 1, Workers}
    end.

-spec handle_cast({try_again_restart, child_id() | {restarting, pid()}},
                  state()) ->
                     {noreply, state()} | {stop, shutdown, state()}.

handle_cast({try_again_restart, TryAgainId}, State) ->
    case find_child_and_args(TryAgainId, State) of
        {ok, Child = {child, {restarting, _}, _, _, _, _, _, _, _}} ->
            case restart(Child, State) of
                {ok, State1} ->
                    {noreply, State1};
                {shutdown, State1} ->
                    {stop, shutdown, State1}
            end;
        _ ->
            {noreply, State}
    end.

-spec handle_info(term(), state()) ->
                     {noreply, state()} | {stop, shutdown, state()}.

handle_info({'EXIT', Pid, Reason}, State) ->
    case restart_child(Pid, Reason, State) of
        {ok, State1} ->
            {noreply, State1};
        {shutdown, State1} ->
            {stop, shutdown, State1}
    end;
handle_info(Msg, State) ->
    case logger:allow(error, supervisor) of
        true ->
            apply(logger, macro_log,
                  [#{mfa => {supervisor, handle_info, 2},
                     line => 1218,
                     file =>
                         "/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.2/src/"
                         "supervisor.erl"},
                   error,
                   "Supervisor received unexpected message: ~tp~n",
                   [Msg],
                   #{domain => [otp], error_logger => #{tag => error}}]);
        false ->
            ok
    end,
    {noreply, State}.

-spec terminate(term(), state()) -> ok.

terminate(_Reason, {state, _, _, _, _, _, _, _, _, _, _, _, _} = State)
    when
        (true
         orelse
         fail)
        and
        (element(3, State) =:= simple_one_for_one) ->
    terminate_dynamic_children(State);
terminate(_Reason, State) ->
    terminate_children(case State of
                           {state, _, _, REC15, _, _, _, _, _, _, _, _,
                            _} ->
                               REC15;
                           REC15 ->
                               error({badrecord, REC15})
                       end,
                       case State of
                           {state, REC16, _, _, _, _, _, _, _, _, _, _,
                            _} ->
                               REC16;
                           REC16 ->
                               error({badrecord, REC16})
                       end).

-spec code_change(term(), state(), term()) ->
                     {ok, state()} | {error, term()}.

code_change(_, State, _) ->
    case
        case State of
            {state, _, _, _, _, _, _, _, _, _, _, REC17, _} ->
                REC17;
            REC17 ->
                error({badrecord, REC17})
        end:init(case State of
                  {state, _, _, _, _, _, _, _, _, _, _, _, REC18} ->
                      REC18;
                  REC18 ->
                      error({badrecord, REC18})
              end)
    of
        {ok, {SupFlags, StartSpec}} ->
            case set_flags(SupFlags, State) of
                {ok, State1} ->
                    update_childspec(State1, StartSpec);
                {invalid_type, SupFlags} ->
                    {error, {bad_flags, SupFlags}};
                Error ->
                    {error, Error}
            end;
        ignore ->
            {ok, State};
        Error ->
            Error
    end.

update_childspec({state, _, _, _, _, _, _, _, _, _, _, _, _} = State,
                 StartSpec)
    when
        (true
         orelse
         fail)
        and
        (element(3, State) =:= simple_one_for_one) ->
    case
        check_startspec(StartSpec,
                        case State of
                            {state, _, _, _, _, _, _, _, _, _, REC19, _,
                             _} ->
                                REC19;
                            REC19 ->
                                error({badrecord, REC19})
                        end)
    of
        {ok, {[_], _} = Children} ->
            {ok,
             begin
                 REC20 = State,
                 case REC20 of
                     {state, _, _, _, _, _, _, _, _, _, _, _, _} ->
                         setelement(4, REC20, Children);
                     _ ->
                         error({badrecord, REC20})
                 end
             end};
        Error ->
            {error, Error}
    end;
update_childspec(State, StartSpec) ->
    case
        check_startspec(StartSpec,
                        case State of
                            {state, _, _, _, _, _, _, _, _, _, REC21, _,
                             _} ->
                                REC21;
                            REC21 ->
                                error({badrecord, REC21})
                        end)
    of
        {ok, Children} ->
            OldC =
                case State of
                    {state, _, _, REC22, _, _, _, _, _, _, _, _, _} ->
                        REC22;
                    REC22 ->
                        error({badrecord, REC22})
                end,
            NewC = update_childspec1(OldC, Children, []),
            {ok,
             begin
                 REC23 = State,
                 case REC23 of
                     {state, _, _, _, _, _, _, _, _, _, _, _, _} ->
                         setelement(4, REC23, NewC);
                     _ ->
                         error({badrecord, REC23})
                 end
             end};
        Error ->
            {error, Error}
    end.

update_childspec1({[Id | OldIds], OldDb}, {Ids, Db}, KeepOld) ->
    case update_chsp(maps:get(Id, OldDb), Db) of
        {ok, NewDb} ->
            update_childspec1({OldIds, OldDb}, {Ids, NewDb}, KeepOld);
        false ->
            update_childspec1({OldIds, OldDb},
                              {Ids, Db},
                              [Id | KeepOld])
    end;
update_childspec1({[], OldDb}, {Ids, Db}, KeepOld) ->
    KeepOldDb = maps:with(KeepOld, OldDb),
    {lists:reverse(Ids ++ KeepOld), maps:merge(KeepOldDb, Db)}.

update_chsp({child, _, Id, _, _, _, _, _, _} = OldChild, NewDb) ->
    case maps:find(Id, NewDb) of
        {ok, Child} ->
            {ok,
             NewDb#{Id =>
                        begin
                            REC24 =
                                case OldChild of
                                    {child, REC26, _, _, _, _, _, _, _} ->
                                        REC26;
                                    REC26 ->
                                        error({badrecord, REC26})
                                end,
                            REC25 = Child,
                            case REC25 of
                                {child, _, _, _, _, _, _, _, _} ->
                                    setelement(2, REC25, REC24);
                                _ ->
                                    error({badrecord, REC25})
                            end
                        end}};
        error ->
            false
    end.

handle_start_child(Child, State) ->
    case
        find_child(case Child of
                       {child, _, REC27, _, _, _, _, _, _} ->
                           REC27;
                       REC27 ->
                           error({badrecord, REC27})
                   end,
                   State)
    of
        error ->
            case
                do_start_child(case State of
                                   {state, REC28, _, _, _, _, _, _, _,
                                    _, _, _, _} ->
                                       REC28;
                                   REC28 ->
                                       error({badrecord, REC28})
                               end,
                               Child, debug_report)
            of
                {ok, undefined}
                    when
                        (is_record(Child, child, 9)
                         orelse
                         fail)
                        and
                        (element(5, Child) =:= temporary) ->
                    {{ok, undefined}, State};
                {ok, Pid} ->
                    {{ok, Pid},
                     save_child(begin
                                    REC29 = Child,
                                    case REC29 of
                                        {child, _, _, _, _, _, _, _, _} ->
                                            setelement(2, REC29, Pid);
                                        _ ->
                                            error({badrecord, REC29})
                                    end
                                end,
                                State)};
                {ok, Pid, Extra} ->
                    {{ok, Pid, Extra},
                     save_child(begin
                                    REC30 = Child,
                                    case REC30 of
                                        {child, _, _, _, _, _, _, _, _} ->
                                            setelement(2, REC30, Pid);
                                        _ ->
                                            error({badrecord, REC30})
                                    end
                                end,
                                State)};
                {error, {already_started, _Pid} = What} ->
                    {{error, What}, State};
                {error, What} ->
                    {{error, {What, Child}}, State}
            end;
        {ok, {child, _, _, _, _, _, _, _, _} = OldChild}
            when
                (true
                 orelse
                 fail)
                and
                is_pid(element(2, OldChild)) ->
            {{error,
              {already_started,
               case OldChild of
                   {child, REC31, _, _, _, _, _, _, _} ->
                       REC31;
                   REC31 ->
                       error({badrecord, REC31})
               end}},
             State};
        {ok, _OldChild} ->
            {{error, already_present}, State}
    end.

restart_child(Pid, Reason, State) ->
    case find_child_and_args(Pid, State) of
        {ok, Child} ->
            do_restart(Reason, Child, State);
        error ->
            {ok, State}
    end.

do_restart(Reason, {child, _, _, _, _, _, _, _, _} = Child, State)
    when
        (true
         orelse
         fail)
        and
        (element(5, Child) =:= permanent) ->
    case logger:allow(error, supervisor) of
        true ->
            apply(logger, macro_log,
                  [#{mfa => {supervisor, do_restart, 3},
                     line => 1341,
                     file =>
                         "/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.2/src/"
                         "supervisor.erl"},
                   error,
                   #{label => {supervisor, child_terminated},
                     report =>
                         [{supervisor,
                           case State of
                               {state, REC32, _, _, _, _, _, _, _, _, _,
                                _, _} ->
                                   REC32;
                               REC32 ->
                                   error({badrecord, REC32})
                           end},
                          {errorContext, child_terminated},
                          {reason, Reason},
                          {offender, extract_child(Child)}]},
                   #{domain => [otp, sasl],
                     report_cb => fun supervisor:format_log/2,
                     logger_formatter => #{title => "SUPERVISOR REPORT"},
                     error_logger =>
                         #{tag => error_report,
                           type => supervisor_report,
                           report_cb => fun supervisor:format_log/1}}]);
        false ->
            ok
    end,
    restart(Child, State);
do_restart(normal, Child, State) ->
    NState = del_child(Child, State),
    do_auto_shutdown(Child, NState);
do_restart(shutdown, Child, State) ->
    NState = del_child(Child, State),
    do_auto_shutdown(Child, NState);
do_restart({shutdown, _Term}, Child, State) ->
    NState = del_child(Child, State),
    do_auto_shutdown(Child, NState);
do_restart(Reason, {child, _, _, _, _, _, _, _, _} = Child, State)
    when
        (true
         orelse
         fail)
        and
        (element(5, Child) =:= transient) ->
    case logger:allow(error, supervisor) of
        true ->
            apply(logger, macro_log,
                  [#{mfa => {supervisor, do_restart, 3},
                     line => 1353,
                     file =>
                         "/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.2/src/"
                         "supervisor.erl"},
                   error,
                   #{label => {supervisor, child_terminated},
                     report =>
                         [{supervisor,
                           case State of
                               {state, REC33, _, _, _, _, _, _, _, _, _,
                                _, _} ->
                                   REC33;
                               REC33 ->
                                   error({badrecord, REC33})
                           end},
                          {errorContext, child_terminated},
                          {reason, Reason},
                          {offender, extract_child(Child)}]},
                   #{domain => [otp, sasl],
                     report_cb => fun supervisor:format_log/2,
                     logger_formatter => #{title => "SUPERVISOR REPORT"},
                     error_logger =>
                         #{tag => error_report,
                           type => supervisor_report,
                           report_cb => fun supervisor:format_log/1}}]);
        false ->
            ok
    end,
    restart(Child, State);
do_restart(Reason, {child, _, _, _, _, _, _, _, _} = Child, State)
    when
        (true
         orelse
         fail)
        and
        (element(5, Child) =:= temporary) ->
    case logger:allow(error, supervisor) of
        true ->
            apply(logger, macro_log,
                  [#{mfa => {supervisor, do_restart, 3},
                     line => 1356,
                     file =>
                         "/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.2/src/"
                         "supervisor.erl"},
                   error,
                   #{label => {supervisor, child_terminated},
                     report =>
                         [{supervisor,
                           case State of
                               {state, REC34, _, _, _, _, _, _, _, _, _,
                                _, _} ->
                                   REC34;
                               REC34 ->
                                   error({badrecord, REC34})
                           end},
                          {errorContext, child_terminated},
                          {reason, Reason},
                          {offender, extract_child(Child)}]},
                   #{domain => [otp, sasl],
                     report_cb => fun supervisor:format_log/2,
                     logger_formatter => #{title => "SUPERVISOR REPORT"},
                     error_logger =>
                         #{tag => error_report,
                           type => supervisor_report,
                           report_cb => fun supervisor:format_log/1}}]);
        false ->
            ok
    end,
    NState = del_child(Child, State),
    do_auto_shutdown(Child, NState).

do_auto_shutdown(_Child,
                 State = {state, _, _, _, _, _, _, _, _, _, never, _, _}) ->
    {ok, State};
do_auto_shutdown(Child, State)
    when
        not ((is_record(Child, child, 9)
              orelse
              fail)
             and
             element(6, Child))
        =:=
        true ->
    {ok, State};
do_auto_shutdown(_Child,
                 State =
                     {state, _, _, _, _, _, _, _, _, _, any_significant,
                      _, _}) ->
    {shutdown, State};
do_auto_shutdown(_Child,
                 State =
                     {state, _, _, _, _, _, _, _, _, _, all_significant,
                      _, _}) ->
    case
        children_any(fun(_, {child, undefined, _, _, _, _, _, _, _}) ->
                            false;
                        (_, {child, _, _, _, _, true, _, _, _}) ->
                            true;
                        (_, _) ->
                            false
                     end,
                     case State of
                         {state, _, _, REC35, _, _, _, _, _, _, _, _, _} ->
                             REC35;
                         REC35 ->
                             error({badrecord, REC35})
                     end)
    of
        true ->
            {ok, State};
        false ->
            {shutdown, State}
    end.

restart(Child, State) ->
    case add_restart(State) of
        {ok, NState} ->
            case
                restart(case NState of
                            {state, _, REC36, _, _, _, _, _, _, _, _, _,
                             _} ->
                                REC36;
                            REC36 ->
                                error({badrecord, REC36})
                        end,
                        Child, NState)
            of
                {{try_again, TryAgainId}, NState2} ->
                    try_again_restart(TryAgainId),
                    {ok, NState2};
                Other ->
                    Other
            end;
        {terminate, NState} ->
            case logger:allow(error, supervisor) of
                true ->
                    apply(logger, macro_log,
                          [#{mfa => {supervisor, restart, 2},
                             line => 1402,
                             file =>
                                 "/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-"
                                 "6.2/src/supervisor.erl"},
                           error,
                           #{label => {supervisor, shutdown},
                             report =>
                                 [{supervisor,
                                   case State of
                                       {state, REC37, _, _, _, _, _, _,
                                        _, _, _, _, _} ->
                                           REC37;
                                       REC37 ->
                                           error({badrecord, REC37})
                                   end},
                                  {errorContext, shutdown},
                                  {reason,
                                   reached_max_restart_intensity},
                                  {offender, extract_child(Child)}]},
                           #{domain => [otp, sasl],
                             report_cb => fun supervisor:format_log/2,
                             logger_formatter =>
                                 #{title => "SUPERVISOR REPORT"},
                             error_logger =>
                                 #{tag => error_report,
                                   type => supervisor_report,
                                   report_cb =>
                                       fun supervisor:format_log/1}}]);
                false ->
                    ok
            end,
            {shutdown, del_child(Child, NState)}
    end.

restart(simple_one_for_one, Child, State0) ->
    {child, OldPid, _, {M, F, A}, _, _, _, _, _} = Child,
    State1 =
        case OldPid of
            {restarting, _} ->
                NRes =
                    case State0 of
                        {state, _, _, _, _, _, _, _, _, REC38, _, _, _} ->
                            REC38;
                        REC38 ->
                            error({badrecord, REC38})
                    end
                    -
                    1,
                begin
                    REC39 = State0,
                    case REC39 of
                        {state, _, _, _, _, _, _, _, _, _, _, _, _} ->
                            setelement(10, REC39, NRes);
                        _ ->
                            error({badrecord, REC39})
                    end
                end;
            _ ->
                State0
        end,
    State2 = dyn_erase(OldPid, State1),
    case do_start_child_i(M, F, A) of
        {ok, undefined} ->
            {ok, State2};
        {ok, Pid} ->
            NState = dyn_store(Pid, A, State2),
            {ok, NState};
        {ok, Pid, _Extra} ->
            NState = dyn_store(Pid, A, State2),
            {ok, NState};
        {error, Error} ->
            ROldPid = restarting(OldPid),
            NRestarts =
                case State2 of
                    {state, _, _, _, _, _, _, _, _, REC40, _, _, _} ->
                        REC40;
                    REC40 ->
                        error({badrecord, REC40})
                end
                +
                1,
            State3 =
                begin
                    REC41 = State2,
                    case REC41 of
                        {state, _, _, _, _, _, _, _, _, _, _, _, _} ->
                            setelement(10, REC41, NRestarts);
                        _ ->
                            error({badrecord, REC41})
                    end
                end,
            NState = dyn_store(ROldPid, A, State3),
            case logger:allow(error, supervisor) of
                true ->
                    apply(logger, macro_log,
                          [#{mfa => {supervisor, restart, 3},
                             line => 1438,
                             file =>
                                 "/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-"
                                 "6.2/src/supervisor.erl"},
                           error,
                           #{label => {supervisor, start_error},
                             report =>
                                 [{supervisor,
                                   case NState of
                                       {state, REC42, _, _, _, _, _, _,
                                        _, _, _, _, _} ->
                                           REC42;
                                       REC42 ->
                                           error({badrecord, REC42})
                                   end},
                                  {errorContext, start_error},
                                  {reason, Error},
                                  {offender, extract_child(Child)}]},
                           #{domain => [otp, sasl],
                             report_cb => fun supervisor:format_log/2,
                             logger_formatter =>
                                 #{title => "SUPERVISOR REPORT"},
                             error_logger =>
                                 #{tag => error_report,
                                   type => supervisor_report,
                                   report_cb =>
                                       fun supervisor:format_log/1}}]);
                false ->
                    ok
            end,
            {{try_again, ROldPid}, NState}
    end;
restart(one_for_one, {child, _, Id, _, _, _, _, _, _} = Child, State) ->
    OldPid =
        case Child of
            {child, REC43, _, _, _, _, _, _, _} ->
                REC43;
            REC43 ->
                error({badrecord, REC43})
        end,
    case
        do_start_child(case State of
                           {state, REC44, _, _, _, _, _, _, _, _, _, _,
                            _} ->
                               REC44;
                           REC44 ->
                               error({badrecord, REC44})
                       end,
                       Child, info_report)
    of
        {ok, Pid} ->
            NState = set_pid(Pid, Id, State),
            {ok, NState};
        {ok, Pid, _Extra} ->
            NState = set_pid(Pid, Id, State),
            {ok, NState};
        {error, Reason} ->
            NState = set_pid(restarting(OldPid), Id, State),
            case logger:allow(error, supervisor) of
                true ->
                    apply(logger, macro_log,
                          [#{mfa => {supervisor, restart, 3},
                             line => 1452,
                             file =>
                                 "/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-"
                                 "6.2/src/supervisor.erl"},
                           error,
                           #{label => {supervisor, start_error},
                             report =>
                                 [{supervisor,
                                   case State of
                                       {state, REC45, _, _, _, _, _, _,
                                        _, _, _, _, _} ->
                                           REC45;
                                       REC45 ->
                                           error({badrecord, REC45})
                                   end},
                                  {errorContext, start_error},
                                  {reason, Reason},
                                  {offender, extract_child(Child)}]},
                           #{domain => [otp, sasl],
                             report_cb => fun supervisor:format_log/2,
                             logger_formatter =>
                                 #{title => "SUPERVISOR REPORT"},
                             error_logger =>
                                 #{tag => error_report,
                                   type => supervisor_report,
                                   report_cb =>
                                       fun supervisor:format_log/1}}]);
                false ->
                    ok
            end,
            {{try_again, Id}, NState}
    end;
restart(rest_for_one,
        {child, _, Id, _, _, _, _, _, _} = Child,
        {state, SupName, _, _, _, _, _, _, _, _, _, _, _} = State) ->
    {ChAfter, ChBefore} =
        split_child(Id,
                    case State of
                        {state, _, _, REC46, _, _, _, _, _, _, _, _, _} ->
                            REC46;
                        REC46 ->
                            error({badrecord, REC46})
                    end),
    {Return, ChAfter2} =
        restart_multiple_children(Child, ChAfter, SupName),
    {Return,
     begin
         REC47 = append(ChAfter2, ChBefore),
         REC48 = State,
         case REC48 of
             {state, _, _, _, _, _, _, _, _, _, _, _, _} ->
                 setelement(4, REC48, REC47);
             _ ->
                 error({badrecord, REC48})
         end
     end};
restart(one_for_all, Child,
        {state, SupName, _, _, _, _, _, _, _, _, _, _, _} = State) ->
    Children1 =
        del_child(case Child of
                      {child, _, REC49, _, _, _, _, _, _} ->
                          REC49;
                      REC49 ->
                          error({badrecord, REC49})
                  end,
                  case State of
                      {state, _, _, REC50, _, _, _, _, _, _, _, _, _} ->
                          REC50;
                      REC50 ->
                          error({badrecord, REC50})
                  end),
    {Return, NChildren} =
        restart_multiple_children(Child, Children1, SupName),
    {Return,
     begin
         REC51 = State,
         case REC51 of
             {state, _, _, _, _, _, _, _, _, _, _, _, _} ->
                 setelement(4, REC51, NChildren);
             _ ->
                 error({badrecord, REC51})
         end
     end}.

restart_multiple_children(Child, Children, SupName) ->
    Children1 = terminate_children(Children, SupName),
    case start_children(Children1, SupName) of
        {ok, NChildren} ->
            {ok, NChildren};
        {error, NChildren, {failed_to_start_child, FailedId, _Reason}} ->
            NewPid =
                if
                    (is_record(Child, child, 9)
                     orelse
                     fail)
                    and
                    (FailedId =:= element(3, Child)) ->
                        restarting(case Child of
                                       {child, REC52, _, _, _, _, _, _,
                                        _} ->
                                           REC52;
                                       REC52 ->
                                           error({badrecord, REC52})
                                   end);
                    true ->
                        {restarting, undefined}
                end,
            {{try_again, FailedId},
             set_pid(NewPid, FailedId, NChildren)}
    end.

restarting(Pid) when is_pid(Pid) ->
    {restarting, Pid};
restarting(RPid) ->
    RPid.

-spec try_again_restart(child_id() | {restarting, pid()}) -> ok.

try_again_restart(TryAgainId) ->
    gen_server:cast(self(), {try_again_restart, TryAgainId}).

terminate_children(Children, SupName) ->
    Terminate =
        fun(_Id, {child, _, _, _, _, _, _, _, _} = Child)
               when
                   (true
                    orelse
                    fail)
                   and
                   (element(5, Child) =:= temporary) ->
               do_terminate(Child, SupName),
               remove;
           (_Id, Child) ->
               do_terminate(Child, SupName),
               {update,
                begin
                    REC53 = Child,
                    case REC53 of
                        {child, _, _, _, _, _, _, _, _} ->
                            setelement(2, REC53, undefined);
                        _ ->
                            error({badrecord, REC53})
                    end
                end}
        end,
    {ok, NChildren} = children_map(Terminate, Children),
    NChildren.

do_terminate({child, _, _, _, _, _, _, _, _} = Child, SupName)
    when
        (true
         orelse
         fail)
        and
        is_pid(element(2, Child)) ->
    case shutdown(Child) of
        ok ->
            ok;
        {error, OtherReason} ->
            case logger:allow(error, supervisor) of
                true ->
                    apply(logger, macro_log,
                          [#{mfa => {supervisor, do_terminate, 2},
                             line => 1511,
                             file =>
                                 "/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-"
                                 "6.2/src/supervisor.erl"},
                           error,
                           #{label => {supervisor, shutdown_error},
                             report =>
                                 [{supervisor, SupName},
                                  {errorContext, shutdown_error},
                                  {reason, OtherReason},
                                  {offender, extract_child(Child)}]},
                           #{domain => [otp, sasl],
                             report_cb => fun supervisor:format_log/2,
                             logger_formatter =>
                                 #{title => "SUPERVISOR REPORT"},
                             error_logger =>
                                 #{tag => error_report,
                                   type => supervisor_report,
                                   report_cb =>
                                       fun supervisor:format_log/1}}]);
                false ->
                    ok
            end
    end,
    ok;
do_terminate(_Child, _SupName) ->
    ok.

shutdown({child, Pid, _, _, _, _, brutal_kill, _, _} = Child) ->
    Mon = monitor(process, Pid),
    exit(Pid, kill),
    receive
        {'DOWN', Mon, process, Pid, Reason0} ->
            case unlink_flush(Pid, Reason0) of
                killed ->
                    ok;
                shutdown
                    when
                        not ((is_record(Child, child, 9)
                              orelse
                              fail)
                             and
                             (element(5, Child) =:= permanent)) ->
                    ok;
                {shutdown, _}
                    when
                        not ((is_record(Child, child, 9)
                              orelse
                              fail)
                             and
                             (element(5, Child) =:= permanent)) ->
                    ok;
                normal
                    when
                        not ((is_record(Child, child, 9)
                              orelse
                              fail)
                             and
                             (element(5, Child) =:= permanent)) ->
                    ok;
                Reason ->
                    {error, Reason}
            end
    end;
shutdown({child, Pid, _, _, _, _, Time, _, _} = Child) ->
    Mon = monitor(process, Pid),
    exit(Pid, shutdown),
    receive
        {'DOWN', Mon, process, Pid, Reason0} ->
            case unlink_flush(Pid, Reason0) of
                shutdown ->
                    ok;
                {shutdown, _}
                    when
                        not ((is_record(Child, child, 9)
                              orelse
                              fail)
                             and
                             (element(5, Child) =:= permanent)) ->
                    ok;
                normal
                    when
                        not ((is_record(Child, child, 9)
                              orelse
                              fail)
                             and
                             (element(5, Child) =:= permanent)) ->
                    ok;
                Reason ->
                    {error, Reason}
            end
    after
        Time ->
            exit(Pid, kill),
            receive
                {'DOWN', Mon, process, Pid, Reason0} ->
                    case unlink_flush(Pid, Reason0) of
                        shutdown ->
                            ok;
                        {shutdown, _}
                            when
                                not ((is_record(Child, child, 9)
                                      orelse
                                      fail)
                                     and
                                     (element(5, Child) =:= permanent)) ->
                            ok;
                        normal
                            when
                                not ((is_record(Child, child, 9)
                                      orelse
                                      fail)
                                     and
                                     (element(5, Child) =:= permanent)) ->
                            ok;
                        Reason ->
                            {error, Reason}
                    end
            end
    end.

unlink_flush(Pid, noproc) ->
    {links, Ls} = process_info(self(), links),
    Timeout =
        case lists:member(Pid, Ls) of
            true ->
                infinity;
            false ->
                0
        end,
    receive
        {'EXIT', Pid, ExitReason} ->
            ExitReason
    after
        Timeout -> child_process_unlinked
    end;
unlink_flush(Pid, ExitReason) ->
    unlink(Pid),
    receive
        {'EXIT', Pid, _} ->
            ok
    after
        0 -> ok
    end,
    ExitReason.

terminate_dynamic_children(State) ->
    Child = get_dynamic_child(State),
    Pids =
        dyn_fold(fun(P, Acc) when is_pid(P) ->
                        Mon = monitor(process, P),
                        case
                            case Child of
                                {child, _, _, _, _, _, REC54, _, _} ->
                                    REC54;
                                REC54 ->
                                    error({badrecord, REC54})
                            end
                        of
                            brutal_kill ->
                                exit(P, kill);
                            _ ->
                                exit(P, shutdown)
                        end,
                        Acc#{{P, Mon} => true};
                    ({restarting, _}, Acc) ->
                        Acc
                 end,
                 #{},
                 State),
    TRef =
        case
            case Child of
                {child, _, _, _, _, _, REC55, _, _} ->
                    REC55;
                REC55 ->
                    error({badrecord, REC55})
            end
        of
            brutal_kill ->
                undefined;
            infinity ->
                undefined;
            Time ->
                erlang:start_timer(Time, self(), kill)
        end,
    Sz = maps:size(Pids),
    EStack = wait_dynamic_children(Child, Pids, Sz, TRef, #{}),
    maps:foreach(fun(Reason, Ls) ->
                        case logger:allow(error, supervisor) of
                            true ->
                                apply(logger, macro_log,
                                      [#{mfa =>
                                             {supervisor,
                                              terminate_dynamic_children,
                                              1},
                                         line => 1643,
                                         file =>
                                             "/buildroot/otp/Erlang ∅⊤℞"
                                             "/lib/stdlib-6.2/src/super"
                                             "visor.erl"},
                                       error,
                                       #{label =>
                                             {supervisor,
                                              shutdown_error},
                                         report =>
                                             [{supervisor,
                                               case State of
                                                   {state, REC56, _, _,
                                                    _, _, _, _, _, _, _,
                                                    _, _} ->
                                                       REC56;
                                                   REC56 ->
                                                       error({badrecord,
                                                              REC56})
                                               end},
                                              {errorContext,
                                               shutdown_error},
                                              {reason, Reason},
                                              {offender,
                                               extract_child(begin
                                                                 REC57 =
                                                                     Child,
                                                                 case
                                                                     REC57
                                                                 of
                                                                     {child,
                                                                      _,
                                                                      _,
                                                                      _,
                                                                      _,
                                                                      _,
                                                                      _,
                                                                      _,
                                                                      _} ->
                                                                         setelement(2,
                                                                                    REC57,
                                                                                    Ls);
                                                                     _ ->
                                                                         error({badrecord,
                                                                                REC57})
                                                                 end
                                                             end)}]},
                                       #{domain => [otp, sasl],
                                         report_cb =>
                                             fun supervisor:format_log/2,
                                         logger_formatter =>
                                             #{title =>
                                                   "SUPERVISOR REPORT"},
                                         error_logger =>
                                             #{tag => error_report,
                                               type => supervisor_report,
                                               report_cb =>
                                                   fun supervisor:format_log/1}}]);
                            false ->
                                ok
                        end
                 end,
                 EStack).

wait_dynamic_children(_Child, _Pids, 0, undefined, EStack) ->
    EStack;
wait_dynamic_children(_Child, _Pids, 0, TRef, EStack) ->
    _ = erlang:cancel_timer(TRef),
    receive
        {timeout, TRef, kill} ->
            EStack
    after
        0 -> EStack
    end;
wait_dynamic_children({child, _, _, _, _, _, brutal_kill, _, _} = Child,
                      Pids, Sz, TRef, EStack) ->
    receive
        {'DOWN', Mon, process, Pid, Reason0}
            when is_map_key({Pid, Mon}, Pids) ->
            case unlink_flush(Pid, Reason0) of
                killed ->
                    wait_dynamic_children(Child,
                                          maps:remove({Pid, Mon}, Pids),
                                          Sz - 1,
                                          TRef, EStack);
                shutdown
                    when
                        not ((is_record(Child, child, 9)
                              orelse
                              fail)
                             and
                             (element(5, Child) =:= permanent)) ->
                    wait_dynamic_children(Child,
                                          maps:remove({Pid, Mon}, Pids),
                                          Sz - 1,
                                          TRef, EStack);
                {shutdown, _}
                    when
                        not ((is_record(Child, child, 9)
                              orelse
                              fail)
                             and
                             (element(5, Child) =:= permanent)) ->
                    wait_dynamic_children(Child,
                                          maps:remove({Pid, Mon}, Pids),
                                          Sz - 1,
                                          TRef, EStack);
                normal
                    when
                        not ((is_record(Child, child, 9)
                              orelse
                              fail)
                             and
                             (element(5, Child) =:= permanent)) ->
                    wait_dynamic_children(Child,
                                          maps:remove({Pid, Mon}, Pids),
                                          Sz - 1,
                                          TRef, EStack);
                Reason ->
                    wait_dynamic_children(Child,
                                          maps:remove({Pid, Mon}, Pids),
                                          Sz - 1,
                                          TRef,
                                          maps_prepend(Reason, Pid,
                                                       EStack))
            end
    end;
wait_dynamic_children(Child, Pids, Sz, TRef, EStack) ->
    receive
        {'DOWN', Mon, process, Pid, Reason0}
            when is_map_key({Pid, Mon}, Pids) ->
            case unlink_flush(Pid, Reason0) of
                shutdown ->
                    wait_dynamic_children(Child,
                                          maps:remove({Pid, Mon}, Pids),
                                          Sz - 1,
                                          TRef, EStack);
                {shutdown, _}
                    when
                        not ((is_record(Child, child, 9)
                              orelse
                              fail)
                             and
                             (element(5, Child) =:= permanent)) ->
                    wait_dynamic_children(Child,
                                          maps:remove({Pid, Mon}, Pids),
                                          Sz - 1,
                                          TRef, EStack);
                normal
                    when
                        not ((is_record(Child, child, 9)
                              orelse
                              fail)
                             and
                             (element(5, Child) =:= permanent)) ->
                    wait_dynamic_children(Child,
                                          maps:remove({Pid, Mon}, Pids),
                                          Sz - 1,
                                          TRef, EStack);
                Reason ->
                    wait_dynamic_children(Child,
                                          maps:remove({Pid, Mon}, Pids),
                                          Sz - 1,
                                          TRef,
                                          maps_prepend(Reason, Pid,
                                                       EStack))
            end;
        {timeout, TRef, kill} ->
            maps:foreach(fun({P, _}, _) ->
                                exit(P, kill)
                         end,
                         Pids),
            wait_dynamic_children(Child, Pids, Sz, undefined, EStack)
    end.

maps_prepend(Key, Value, Map) ->
    case maps:find(Key, Map) of
        {ok, Values} ->
            maps:put(Key, [Value | Values], Map);
        error ->
            maps:put(Key, [Value], Map)
    end.

-spec save_child(child_rec(), state()) -> state().

save_child({child, _, _, {M, F, _}, _, _, _, _, _} =
               {child, _, _, _, _, _, _, _, _} = Child,
           State)
    when
        (true
         orelse
         fail)
        and
        (element(5, Child) =:= temporary) ->
    do_save_child(begin
                      REC58 = {M, F, undefined},
                      REC59 = Child,
                      case REC59 of
                          {child, _, _, _, _, _, _, _, _} ->
                              setelement(4, REC59, REC58);
                          _ ->
                              error({badrecord, REC59})
                      end
                  end,
                  State);
save_child(Child, State) ->
    do_save_child(Child, State).

-spec do_save_child(child_rec(), state()) -> state().

do_save_child({child, _, Id, _, _, _, _, _, _} = Child,
              {state, _, _, {Ids, Db}, _, _, _, _, _, _, _, _, _} =
                  State) ->
    begin
        REC60 = {[Id | Ids], Db#{Id => Child}},
        REC61 = State,
        case REC61 of
            {state, _, _, _, _, _, _, _, _, _, _, _, _} ->
                setelement(4, REC61, REC60);
            _ ->
                error({badrecord, REC61})
        end
    end.

-spec del_child(child_rec(), state()) -> state();
               (child_id(), children()) -> children().

del_child({child, Pid, _, _, _, _, _, _, _},
          {state, _, _, _, _, _, _, _, _, _, _, _, _} = State)
    when
        (true
         orelse
         fail)
        and
        (element(3, State) =:= simple_one_for_one) ->
    dyn_erase(Pid, State);
del_child({child, _, _, _, _, _, _, _, _} = Child,
          {state, _, _, _, _, _, _, _, _, _, _, _, _} = State)
    when true, true ->
    NChildren =
        del_child(case Child of
                      {child, _, REC62, _, _, _, _, _, _} ->
                          REC62;
                      REC62 ->
                          error({badrecord, REC62})
                  end,
                  case State of
                      {state, _, _, REC63, _, _, _, _, _, _, _, _, _} ->
                          REC63;
                      REC63 ->
                          error({badrecord, REC63})
                  end),
    begin
        REC64 = State,
        case REC64 of
            {state, _, _, _, _, _, _, _, _, _, _, _, _} ->
                setelement(4, REC64, NChildren);
            _ ->
                error({badrecord, REC64})
        end
    end;
del_child(Id, {Ids, Db}) ->
    case maps:get(Id, Db) of
        {child, _, _, _, _, _, _, _, _} = Child
            when
                (true
                 orelse
                 fail)
                and
                (element(5, Child) =:= temporary) ->
            {lists:delete(Id, Ids), maps:remove(Id, Db)};
        Child ->
            {Ids,
             Db#{Id =>
                     begin
                         REC65 = Child,
                         case REC65 of
                             {child, _, _, _, _, _, _, _, _} ->
                                 setelement(2, REC65, undefined);
                             _ ->
                                 error({badrecord, REC65})
                         end
                     end}}
    end.

-spec split_child(child_id(), children()) -> {children(), children()}.

split_child(Id, {Ids, Db}) ->
    {IdsAfter, IdsBefore} = split_ids(Id, Ids, []),
    DbBefore = maps:with(IdsBefore, Db),
    #{Id := Ch} = DbAfter = maps:with(IdsAfter, Db),
    {{IdsAfter,
      DbAfter#{Id =>
                   begin
                       REC66 = Ch,
                       case REC66 of
                           {child, _, _, _, _, _, _, _, _} ->
                               setelement(2, REC66, undefined);
                           _ ->
                               error({badrecord, REC66})
                       end
                   end}},
     {IdsBefore, DbBefore}}.

split_ids(Id, [Id | Ids], After) ->
    {lists:reverse([Id | After]), Ids};
split_ids(Id, [Other | Ids], After) ->
    split_ids(Id, Ids, [Other | After]).

-spec find_child(pid() | child_id(), state()) ->
                    {ok, child_rec()} | error.

find_child(Pid, {state, _, _, _, _, _, _, _, _, _, _, _, _} = State)
    when
        is_pid(Pid),
        (true
         orelse
         fail)
        and
        (element(3, State) =:= simple_one_for_one) ->
    case find_dynamic_child(Pid, State) of
        error ->
            case find_dynamic_child(restarting(Pid), State) of
                error ->
                    case is_process_alive(Pid) of
                        true ->
                            error;
                        false ->
                            {ok, get_dynamic_child(State)}
                    end;
                Other ->
                    Other
            end;
        Other ->
            Other
    end;
find_child(Id, {state, _, _, {_Ids, Db}, _, _, _, _, _, _, _, _, _}) ->
    maps:find(Id, Db).

-spec find_child_and_args(IdOrPid, state()) -> {ok, child_rec()} | error
                             when
                                 IdOrPid ::
                                     pid() |
                                     {restarting, pid()} |
                                     child_id().

find_child_and_args(Pid,
                    {state, _, _, _, _, _, _, _, _, _, _, _, _} = State)
    when
        (true
         orelse
         fail)
        and
        (element(3, State) =:= simple_one_for_one) ->
    case find_dynamic_child(Pid, State) of
        {ok, {child, _, _, {M, F, _}, _, _, _, _, _} = Child} ->
            {ok, Args} = dyn_args(Pid, State),
            {ok,
             begin
                 REC67 = {M, F, Args},
                 REC68 = Child,
                 case REC68 of
                     {child, _, _, _, _, _, _, _, _} ->
                         setelement(4, REC68, REC67);
                     _ ->
                         error({badrecord, REC68})
                 end
             end};
        error ->
            error
    end;
find_child_and_args(Pid, State) when is_pid(Pid) ->
    find_child_by_pid(Pid, State);
find_child_and_args(Id,
                    {state, _, _, {_Ids, Db}, _, _, _, _, _, _, _, _, _}) ->
    maps:find(Id, Db).

-spec find_dynamic_child(IdOrPid, state()) -> {ok, child_rec()} | error
                            when
                                IdOrPid ::
                                    pid() |
                                    {restarting, pid()} |
                                    child_id().

find_dynamic_child(Pid, State) ->
    case dyn_exists(Pid, State) of
        true ->
            Child = get_dynamic_child(State),
            {ok,
             begin
                 REC69 = Child,
                 case REC69 of
                     {child, _, _, _, _, _, _, _, _} ->
                         setelement(2, REC69, Pid);
                     _ ->
                         error({badrecord, REC69})
                 end
             end};
        false ->
            error
    end.

-spec find_child_by_pid(IdOrPid, state()) -> {ok, child_rec()} | error
                           when IdOrPid :: pid() | {restarting, pid()}.

find_child_by_pid(Pid,
                  {state, _, _, {_Ids, Db}, _, _, _, _, _, _, _, _, _}) ->
    Fun =
        fun(_Id, {child, P, _, _, _, _, _, _, _} = Ch, _) when P =:= Pid ->
               throw(Ch);
           (_, _, error) ->
               error
        end,
    try
        maps:fold(Fun, error, Db)
    catch
        throw:Child ->
            {ok, Child}
    end.

-spec get_dynamic_child(state()) -> child_rec().

get_dynamic_child({state, _, _, {[Id], Db}, _, _, _, _, _, _, _, _, _}) ->
    #{Id := Child} = Db,
    Child.

-spec set_pid(term(), child_id(), state()) -> state();
             (term(), child_id(), children()) -> children().

set_pid(Pid, Id,
        {state, _, _, Children, _, _, _, _, _, _, _, _, _} = State) ->
    begin
        REC70 = set_pid(Pid, Id, Children),
        REC71 = State,
        case REC71 of
            {state, _, _, _, _, _, _, _, _, _, _, _, _} ->
                setelement(4, REC71, REC70);
            _ ->
                error({badrecord, REC71})
        end
    end;
set_pid(Pid, Id, {Ids, Db}) ->
    NewDb =
        maps:update_with(Id,
                         fun(Child) ->
                                begin
                                    REC72 = Child,
                                    case REC72 of
                                        {child, _, _, _, _, _, _, _, _} ->
                                            setelement(2, REC72, Pid);
                                        _ ->
                                            error({badrecord, REC72})
                                    end
                                end
                         end,
                         Db),
    {Ids, NewDb}.

-spec remove_child(child_id(), state()) -> state().

remove_child(Id,
             {state, _, _, {Ids, Db}, _, _, _, _, _, _, _, _, _} = State) ->
    NewIds = lists:delete(Id, Ids),
    NewDb = maps:remove(Id, Db),
    begin
        REC73 = {NewIds, NewDb},
        REC74 = State,
        case REC74 of
            {state, _, _, _, _, _, _, _, _, _, _, _, _} ->
                setelement(4, REC74, REC73);
            _ ->
                error({badrecord, REC74})
        end
    end.

-spec children_map(Fun, children()) ->
                      {ok, children()} | {error, children(), Reason}
                      when
                          Fun ::
                              fun((child_id(), child_rec()) ->
                                      {update, child_rec()} |
                                      remove |
                                      {abort, Reason}),
                          Reason :: term().

children_map(Fun, {Ids, Db}) ->
    children_map(Fun, Ids, Db, []).

children_map(Fun, [Id | Ids], Db, Acc) ->
    case Fun(Id, maps:get(Id, Db)) of
        {update, Child} ->
            children_map(Fun, Ids, Db#{Id => Child}, [Id | Acc]);
        remove ->
            children_map(Fun, Ids, maps:remove(Id, Db), Acc);
        {abort, Reason} ->
            {error, {lists:reverse(Ids) ++ [Id | Acc], Db}, Reason}
    end;
children_map(_Fun, [], Db, Acc) ->
    {ok, {Acc, Db}}.

-spec children_to_list(Fun, children()) -> List
                          when
                              Fun ::
                                  fun((child_id(), child_rec()) -> Elem),
                              List :: [Elem],
                              Elem :: term().

children_to_list(Fun, {Ids, Db}) ->
    children_to_list(Fun, Ids, Db, []).

children_to_list(Fun, [Id | Ids], Db, Acc) ->
    children_to_list(Fun, Ids, Db, [Fun(Id, maps:get(Id, Db)) | Acc]);
children_to_list(_Fun, [], _Db, Acc) ->
    lists:reverse(Acc).

-spec children_fold(Fun, Acc0, children()) -> Acc1
                       when
                           Fun ::
                               fun((child_id(), child_rec(), AccIn) ->
                                       AccOut),
                           Acc0 :: term(),
                           Acc1 :: term(),
                           AccIn :: term(),
                           AccOut :: term().

children_fold(Fun, Init, {_Ids, Db}) ->
    maps:fold(Fun, Init, Db).

children_any(Pred, {_Ids, Db}) ->
    Iter = maps:iterator(Db),
    children_any1(Pred, maps:next(Iter)).

children_any1(_Pred, none) ->
    false;
children_any1(Pred, {Key, Value, Iter}) ->
    Pred(Key, Value)
    orelse
    children_any1(Pred, maps:next(Iter)).

-spec append(children(), children()) -> children().

append({Ids1, Db1}, {Ids2, Db2}) ->
    {Ids1 ++ Ids2, maps:merge(Db1, Db2)}.

init_state(SupName, Type, Mod, Args) ->
    set_flags(Type,
              {state,
               supname(SupName, Mod),
               one_for_one,
               {[], #{}},
               undefined, 1, 5, [], 0, 0, never, Mod, Args}).

set_flags(Flags, State) ->
    try check_flags(Flags) of
        #{strategy := Strategy,
          intensity := MaxIntensity,
          period := Period,
          auto_shutdown := AutoShutdown} ->
            {ok,
             begin
                 REC75 = State,
                 case REC75 of
                     {state, _, _, _, _, _, _, _, _, _, _, _, _} ->
                         setelement(3,
                                    setelement(6,
                                               setelement(7,
                                                          setelement(11,
                                                                     REC75,
                                                                     AutoShutdown),
                                                          Period),
                                               MaxIntensity),
                                    Strategy);
                     _ ->
                         error({badrecord, REC75})
                 end
             end}
    catch
        throw:Thrown ->
            Thrown
    end.

check_flags(SupFlags) when is_map(SupFlags) ->
    do_check_flags(maps:merge(#{strategy => one_for_one,
                                intensity => 1,
                                period => 5,
                                auto_shutdown => never},
                              SupFlags));
check_flags({Strategy, MaxIntensity, Period}) ->
    check_flags(#{strategy => Strategy,
                  intensity => MaxIntensity,
                  period => Period,
                  auto_shutdown => never});
check_flags(What) ->
    throw({invalid_type, What}).

do_check_flags(#{strategy := Strategy,
                 intensity := MaxIntensity,
                 period := Period,
                 auto_shutdown := AutoShutdown} =
                   Flags) ->
    validStrategy(Strategy),
    validIntensity(MaxIntensity),
    validPeriod(Period),
    validAutoShutdown(AutoShutdown),
    validAutoShutdownForStrategy(AutoShutdown, Strategy),
    Flags.

validStrategy(simple_one_for_one) ->
    true;
validStrategy(one_for_one) ->
    true;
validStrategy(one_for_all) ->
    true;
validStrategy(rest_for_one) ->
    true;
validStrategy(What) ->
    throw({invalid_strategy, What}).

validIntensity(Max) when is_integer(Max), Max >= 0 ->
    true;
validIntensity(What) ->
    throw({invalid_intensity, What}).

validPeriod(Period) when is_integer(Period), Period > 0 ->
    true;
validPeriod(What) ->
    throw({invalid_period, What}).

validAutoShutdown(never) ->
    true;
validAutoShutdown(any_significant) ->
    true;
validAutoShutdown(all_significant) ->
    true;
validAutoShutdown(What) ->
    throw({invalid_auto_shutdown, What}).

validAutoShutdownForStrategy(any_significant, simple_one_for_one) ->
    throw({bad_combination,
           [{auto_shutdown, any_significant},
            {strategy, simple_one_for_one}]});
validAutoShutdownForStrategy(all_significant, simple_one_for_one) ->
    throw({bad_combination,
           [{auto_shutdown, all_significant},
            {strategy, simple_one_for_one}]});
validAutoShutdownForStrategy(_AutoShutdown, _Strategy) ->
    true.

supname(self, Mod) ->
    {self(), Mod};
supname(N, _) ->
    N.

check_startspec(Children, AutoShutdown) ->
    check_startspec(Children, [], #{}, AutoShutdown).

check_startspec([ChildSpec | T], Ids, Db, AutoShutdown) ->
    case check_childspec(ChildSpec, AutoShutdown) of
        {ok, {child, _, Id, _, _, _, _, _, _} = Child} ->
            case maps:is_key(Id, Db) of
                true ->
                    {duplicate_child_name, Id};
                false ->
                    check_startspec(T,
                                    [Id | Ids],
                                    Db#{Id => Child},
                                    AutoShutdown)
            end;
        Error ->
            Error
    end;
check_startspec([], Ids, Db, _AutoShutdown) ->
    {ok, {lists:reverse(Ids), Db}}.

check_childspec(ChildSpec, AutoShutdown) when is_map(ChildSpec) ->
    catch
        do_check_childspec(maps:merge(#{restart => permanent,
                                        type => worker},
                                      ChildSpec),
                           AutoShutdown);
check_childspec({Id, Func, RestartType, Shutdown, ChildType, Mods},
                AutoShutdown) ->
    check_childspec(#{id => Id,
                      start => Func,
                      restart => RestartType,
                      significant => false,
                      shutdown => Shutdown,
                      type => ChildType,
                      modules => Mods},
                    AutoShutdown);
check_childspec(X, _AutoShutdown) ->
    {invalid_child_spec, X}.

do_check_childspec(#{restart := RestartType, type := ChildType} =
                       ChildSpec,
                   AutoShutdown) ->
    Id =
        case ChildSpec of
            #{id := I} ->
                I;
            _ ->
                throw(missing_id)
        end,
    Func =
        case ChildSpec of
            #{start := F} ->
                F;
            _ ->
                throw(missing_start)
        end,
    validId(Id),
    validFunc(Func),
    validRestartType(RestartType),
    Significant =
        case ChildSpec of
            #{significant := Signf} ->
                Signf;
            _ ->
                false
        end,
    validSignificant(Significant, RestartType, AutoShutdown),
    validChildType(ChildType),
    Shutdown =
        case ChildSpec of
            #{shutdown := S} ->
                S;
            #{type := worker} ->
                5000;
            #{type := supervisor} ->
                infinity
        end,
    validShutdown(Shutdown),
    Mods =
        case ChildSpec of
            #{modules := Ms} ->
                Ms;
            _ ->
                {M, _, _} = Func,
                [M]
        end,
    validMods(Mods),
    {ok,
     {child, undefined, Id, Func, RestartType, Significant, Shutdown,
      ChildType, Mods}}.

validChildType(supervisor) ->
    true;
validChildType(worker) ->
    true;
validChildType(What) ->
    throw({invalid_child_type, What}).

validId(_Id) ->
    true.

validFunc({M, F, A}) when is_atom(M), is_atom(F), is_list(A) ->
    true;
validFunc(Func) ->
    throw({invalid_mfa, Func}).

validRestartType(permanent) ->
    true;
validRestartType(temporary) ->
    true;
validRestartType(transient) ->
    true;
validRestartType(RestartType) ->
    throw({invalid_restart_type, RestartType}).

validSignificant(true, _RestartType, never) ->
    throw({bad_combination,
           [{auto_shutdown, never}, {significant, true}]});
validSignificant(true, permanent, _AutoShutdown) ->
    throw({bad_combination, [{restart, permanent}, {significant, true}]});
validSignificant(Significant, _RestartType, _AutoShutdown)
    when is_boolean(Significant) ->
    true;
validSignificant(Significant, _RestartType, _AutoShutdown) ->
    throw({invalid_significant, Significant}).

validShutdown(Shutdown) when is_integer(Shutdown), Shutdown >= 0 ->
    true;
validShutdown(infinity) ->
    true;
validShutdown(brutal_kill) ->
    true;
validShutdown(Shutdown) ->
    throw({invalid_shutdown, Shutdown}).

validMods(dynamic) ->
    true;
validMods(Mods) when is_list(Mods) ->
    lists:foreach(fun(Mod) ->
                         if
                             is_atom(Mod) ->
                                 ok;
                             true ->
                                 throw({invalid_module, Mod})
                         end
                  end,
                  Mods);
validMods(Mods) ->
    throw({invalid_modules, Mods}).

child_to_spec({child, _, Id, Func, RestartType, Significant, Shutdown,
               ChildType, Mods}) ->
    #{id => Id,
      start => Func,
      restart => RestartType,
      significant => Significant,
      shutdown => Shutdown,
      type => ChildType,
      modules => Mods}.

add_restart(State = {state, _, _, _, _, 0, _, _, _, _, _, _, _}) ->
    {terminate, State};
add_restart(State = {state, _, _, _, _, I, _, R, NR, _, _, _, _})
    when NR < min(I, 1000) ->
    {ok,
     begin
         REC76 = [erlang:monotonic_time(second) | R],
         REC77 = NR + 1,
         REC78 = State,
         case REC78 of
             {state, _, _, _, _, _, _, _, _, _, _, _, _} ->
                 setelement(8, setelement(9, REC78, REC77), REC76);
             _ ->
                 error({badrecord, REC78})
         end
     end};
add_restart(State = {state, _, _, _, _, I, P, R, _, _, _, _, _}) ->
    Now = erlang:monotonic_time(second),
    Treshold = Now - P,
    case can_restart(I - 1, Treshold, R, [], 0) of
        {true, NR1, R1} ->
            {ok,
             begin
                 REC79 = [Now | R1],
                 REC80 = NR1 + 1,
                 REC81 = State,
                 case REC81 of
                     {state, _, _, _, _, _, _, _, _, _, _, _, _} ->
                         setelement(8,
                                    setelement(9, REC81, REC80),
                                    REC79);
                     _ ->
                         error({badrecord, REC81})
                 end
             end};
        {false, NR1, R1} ->
            {terminate,
             begin
                 REC82 = State,
                 case REC82 of
                     {state, _, _, _, _, _, _, _, _, _, _, _, _} ->
                         setelement(8, setelement(9, REC82, NR1), R1);
                     _ ->
                         error({badrecord, REC82})
                 end
             end}
    end.

can_restart(_, _, [], Acc, NR) ->
    {true, NR, lists:reverse(Acc)};
can_restart(_, Treshold, [Restart | _], Acc, NR) when Restart < Treshold ->
    {true, NR, lists:reverse(Acc)};
can_restart(0, _, [_ | _], Acc, NR) ->
    {false, NR, lists:reverse(Acc)};
can_restart(N, Treshold, [Restart | Restarts], Acc, NR) ->
    can_restart(N - 1, Treshold, Restarts, [Restart | Acc], NR + 1).

extract_child({child, _, _, _, _, _, _, _, _} = Child)
    when
        (true
         orelse
         fail)
        and
        is_list(element(2, Child)) ->
    [{nb_children,
      length(case Child of
                 {child, REC83, _, _, _, _, _, _, _} ->
                     REC83;
                 REC83 ->
                     error({badrecord, REC83})
             end)},
     {id,
      case Child of
          {child, _, REC84, _, _, _, _, _, _} ->
              REC84;
          REC84 ->
              error({badrecord, REC84})
      end},
     {mfargs,
      case Child of
          {child, _, _, REC85, _, _, _, _, _} ->
              REC85;
          REC85 ->
              error({badrecord, REC85})
      end},
     {restart_type,
      case Child of
          {child, _, _, _, REC86, _, _, _, _} ->
              REC86;
          REC86 ->
              error({badrecord, REC86})
      end},
     {significant,
      case Child of
          {child, _, _, _, _, REC87, _, _, _} ->
              REC87;
          REC87 ->
              error({badrecord, REC87})
      end},
     {shutdown,
      case Child of
          {child, _, _, _, _, _, REC88, _, _} ->
              REC88;
          REC88 ->
              error({badrecord, REC88})
      end},
     {child_type,
      case Child of
          {child, _, _, _, _, _, _, REC89, _} ->
              REC89;
          REC89 ->
              error({badrecord, REC89})
      end}];
extract_child(Child) ->
    [{pid,
      case Child of
          {child, REC90, _, _, _, _, _, _, _} ->
              REC90;
          REC90 ->
              error({badrecord, REC90})
      end},
     {id,
      case Child of
          {child, _, REC91, _, _, _, _, _, _} ->
              REC91;
          REC91 ->
              error({badrecord, REC91})
      end},
     {mfargs,
      case Child of
          {child, _, _, REC92, _, _, _, _, _} ->
              REC92;
          REC92 ->
              error({badrecord, REC92})
      end},
     {restart_type,
      case Child of
          {child, _, _, _, REC93, _, _, _, _} ->
              REC93;
          REC93 ->
              error({badrecord, REC93})
      end},
     {significant,
      case Child of
          {child, _, _, _, _, REC94, _, _, _} ->
              REC94;
          REC94 ->
              error({badrecord, REC94})
      end},
     {shutdown,
      case Child of
          {child, _, _, _, _, _, REC95, _, _} ->
              REC95;
          REC95 ->
              error({badrecord, REC95})
      end},
     {child_type,
      case Child of
          {child, _, _, _, _, _, _, REC96, _} ->
              REC96;
          REC96 ->
              error({badrecord, REC96})
      end}].

report_progress(Child, SupName, info_report) ->
    case logger:allow(info, supervisor) of
        true ->
            apply(logger, macro_log,
                  [#{mfa => {supervisor, report_progress, 3},
                     line => 2200,
                     file =>
                         "/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.2/src/"
                         "supervisor.erl"},
                   info,
                   #{label => {supervisor, progress},
                     report =>
                         [{supervisor, SupName},
                          {started, extract_child(Child)}]},
                   #{domain => [otp, sasl],
                     report_cb => fun supervisor:format_log/2,
                     logger_formatter => #{title => "PROGRESS REPORT"},
                     error_logger =>
                         #{tag => info_report,
                           type => progress,
                           report_cb => fun supervisor:format_log/1}}]);
        false ->
            ok
    end;
report_progress(Child, SupName, debug_report) ->
    case logger:allow(debug, supervisor) of
        true ->
            apply(logger, macro_log,
                  [#{mfa => {supervisor, report_progress, 3},
                     line => 2210,
                     file =>
                         "/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.2/src/"
                         "supervisor.erl"},
                   debug,
                   #{label => {supervisor, progress},
                     report =>
                         [{supervisor, SupName},
                          {started, extract_child(Child)}]},
                   #{domain => [otp, sasl],
                     report_cb => fun supervisor:format_log/2,
                     logger_formatter => #{title => "PROGRESS REPORT"},
                     error_logger =>
                         #{tag => info_report,
                           type => progress,
                           report_cb => fun supervisor:format_log/1}}]);
        false ->
            ok
    end.

format_log(LogReport) ->
    Depth = error_logger:get_format_depth(),
    FormatOpts =
        #{chars_limit => unlimited,
          depth => Depth,
          single_line => false,
          encoding => utf8},
    format_log_multi(limit_report(LogReport, Depth), FormatOpts).

limit_report(LogReport, unlimited) ->
    LogReport;
limit_report(#{label := {supervisor, progress},
               report :=
                   [{supervisor, _} = Supervisor, {started, Child}]} =
                 LogReport,
             Depth) ->
    LogReport#{report =>
                   [Supervisor,
                    {started, limit_child_report(Child, Depth)}]};
limit_report(#{label := {supervisor, _Error},
               report :=
                   [{supervisor, _} = Supervisor,
                    {errorContext, Ctxt},
                    {reason, Reason},
                    {offender, Child}]} =
                 LogReport,
             Depth) ->
    LogReport#{report =>
                   [Supervisor,
                    {errorContext, io_lib:limit_term(Ctxt, Depth)},
                    {reason, io_lib:limit_term(Reason, Depth)},
                    {offender, limit_child_report(Child, Depth)}]}.

limit_child_report(Report, Depth) ->
    io_lib:limit_term(Report, Depth).

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

format_log_single(#{label := {supervisor, progress},
                    report := [{supervisor, SupName}, {started, Child}]},
                  #{single_line := true, depth := Depth} = FormatOpts) ->
    P = p(FormatOpts),
    {ChildFormat, ChildArgs} =
        format_child_log_single(Child, "Started:"),
    Format = "Supervisor: " ++ P ++ ".",
    Args =
        case Depth of
            unlimited ->
                [SupName];
            _ ->
                [SupName, Depth]
        end,
    {Format ++ ChildFormat, Args ++ ChildArgs};
format_log_single(#{label := {supervisor, _Error},
                    report :=
                        [{supervisor, SupName},
                         {errorContext, Ctxt},
                         {reason, Reason},
                         {offender, Child}]},
                  #{single_line := true, depth := Depth} = FormatOpts) ->
    P = p(FormatOpts),
    Format =
        lists:append(["Supervisor: ",
                      P,
                      ". Context: ",
                      P,
                      ". Reason: ",
                      P,
                      "."]),
    {ChildFormat, ChildArgs} =
        format_child_log_single(Child, "Offender:"),
    Args =
        case Depth of
            unlimited ->
                [SupName, Ctxt, Reason];
            _ ->
                [SupName, Depth, Ctxt, Depth, Reason, Depth]
        end,
    {Format ++ ChildFormat, Args ++ ChildArgs};
format_log_single(Report, FormatOpts) ->
    format_log_multi(Report, FormatOpts).

format_log_multi(#{label := {supervisor, progress},
                   report := [{supervisor, SupName}, {started, Child}]},
                 #{depth := Depth} = FormatOpts) ->
    P = p(FormatOpts),
    Format =
        lists:append(["    supervisor: ",
                      P,
                      "~n",
                      "    started: ",
                      P,
                      "~n"]),
    Args =
        case Depth of
            unlimited ->
                [SupName, Child];
            _ ->
                [SupName, Depth, Child, Depth]
        end,
    {Format, Args};
format_log_multi(#{label := {supervisor, _Error},
                   report :=
                       [{supervisor, SupName},
                        {errorContext, Ctxt},
                        {reason, Reason},
                        {offender, Child}]},
                 #{depth := Depth} = FormatOpts) ->
    P = p(FormatOpts),
    Format =
        lists:append(["    supervisor: ",
                      P,
                      "~n",
                      "    errorContext: ",
                      P,
                      "~n",
                      "    reason: ",
                      P,
                      "~n",
                      "    offender: ",
                      P,
                      "~n"]),
    Args =
        case Depth of
            unlimited ->
                [SupName, Ctxt, Reason, Child];
            _ ->
                [SupName, Depth, Ctxt, Depth, Reason, Depth, Child,
                 Depth]
        end,
    {Format, Args}.

format_child_log_single(Child, Tag) ->
    {id, Id} = lists:keyfind(id, 1, Child),
    case lists:keyfind(pid, 1, Child) of
        false ->
            {nb_children, NumCh} = lists:keyfind(nb_children, 1, Child),
            {" ~s id=~w,nb_children=~w.", [Tag, Id, NumCh]};
        T when is_tuple(T) ->
            {pid, Pid} = lists:keyfind(pid, 1, Child),
            {" ~s id=~w,pid=~w.", [Tag, Id, Pid]}
    end.

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

dyn_size({state, _, _, _, {_Kind, Db}, _, _, _, _, _, _, _, _}) ->
    map_size(Db).

dyn_erase(Pid,
          {state, _, _, _, {Kind, Db}, _, _, _, _, _, _, _, _} = State) ->
    begin
        REC97 = {Kind, maps:remove(Pid, Db)},
        REC98 = State,
        case REC98 of
            {state, _, _, _, _, _, _, _, _, _, _, _, _} ->
                setelement(5, REC98, REC97);
            _ ->
                error({badrecord, REC98})
        end
    end.

dyn_store(Pid, Args,
          {state, _, _, _, {Kind, Db}, _, _, _, _, _, _, _, _} = State) ->
    case Kind of
        mapsets ->
            begin
                REC99 = {mapsets, Db#{Pid => []}},
                REC100 = State,
                case REC100 of
                    {state, _, _, _, _, _, _, _, _, _, _, _, _} ->
                        setelement(5, REC100, REC99);
                    _ ->
                        error({badrecord, REC100})
                end
            end;
        maps ->
            begin
                REC101 = {maps, Db#{Pid => Args}},
                REC102 = State,
                case REC102 of
                    {state, _, _, _, _, _, _, _, _, _, _, _, _} ->
                        setelement(5, REC102, REC101);
                    _ ->
                        error({badrecord, REC102})
                end
            end
    end.

dyn_fold(Fun, Init,
         {state, _, _, _, {_Kind, Db}, _, _, _, _, _, _, _, _}) ->
    maps:fold(fun(Pid, _, Acc) ->
                     Fun(Pid, Acc)
              end,
              Init, Db).

dyn_map(Fun, {state, _, _, _, {_Kind, Db}, _, _, _, _, _, _, _, _}) ->
    lists:map(Fun, maps:keys(Db)).

dyn_exists(Pid, {state, _, _, _, {_Kind, Db}, _, _, _, _, _, _, _, _}) ->
    is_map_key(Pid, Db).

dyn_args(_Pid, {state, _, _, _, {mapsets, _Db}, _, _, _, _, _, _, _, _}) ->
    {ok, undefined};
dyn_args(Pid, {state, _, _, _, {maps, Db}, _, _, _, _, _, _, _, _}) ->
    maps:find(Pid, Db).

dyn_init(State) ->
    dyn_init(get_dynamic_child(State), State).

dyn_init({child, _, _, _, _, _, _, _, _} = Child, State)
    when
        (true
         orelse
         fail)
        and
        (element(5, Child) =:= temporary) ->
    begin
        REC103 = {mapsets, maps:new()},
        REC104 = State,
        case REC104 of
            {state, _, _, _, _, _, _, _, _, _, _, _, _} ->
                setelement(5, REC104, REC103);
            _ ->
                error({badrecord, REC104})
        end
    end;
dyn_init(_Child, State) ->
    begin
        REC105 = {maps, maps:new()},
        REC106 = State,
        case REC106 of
            {state, _, _, _, _, _, _, _, _, _, _, _, _} ->
                setelement(5, REC106, REC105);
            _ ->
                error({badrecord, REC106})
        end
    end.



