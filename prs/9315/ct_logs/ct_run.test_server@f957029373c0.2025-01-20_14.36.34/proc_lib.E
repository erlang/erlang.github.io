-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.2/src/proc_lib.erl", 1).

-module(proc_lib).

-compile(nowarn_deprecated_catch).

-export([spawn/1,
         spawn_link/1,
         spawn/2,
         spawn_link/2,
         spawn/3,
         spawn_link/3,
         spawn/4,
         spawn_link/4,
         spawn_opt/2,
         spawn_opt/3,
         spawn_opt/4,
         spawn_opt/5,
         start/3,
         start/4,
         start/5,
         start_link/3,
         start_link/4,
         start_link/5,
         start_monitor/3,
         start_monitor/4,
         start_monitor/5,
         hibernate/3,
         init_ack/1,
         init_ack/2,
         init_fail/2,
         init_fail/3,
         init_p/3,
         init_p/5,
         format/1,
         format/2,
         format/3,
         report_cb/2,
         initial_call/1,
         translate_initial_call/1,
         set_label/1,
         get_label/1,
         stop/1,
         stop/3]).

-export([wake_up/3]).

-export_type([spawn_option/0]).

-export_type([start_spawn_option/0]).

-file("/buildroot/otp/Erlang ∅⊤℞/lib/kernel-10.2/include/logger.hrl", 1).

-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.2/src/proc_lib.erl", 91).

-type start_spawn_option() ::
          link |
          {priority, erlang:priority_level()} |
          {fullsweep_after, non_neg_integer()} |
          {min_heap_size, non_neg_integer()} |
          {min_bin_vheap_size, non_neg_integer()} |
          {max_heap_size, erlang:max_heap_size()} |
          {message_queue_data, erlang:message_queue_data()}.

-type exception() ::
          {Class :: error | exit | throw, Reason :: term()} |
          {Class :: error | exit | throw,
           Reason :: term(),
           Stacktrace :: erlang:raise_stacktrace()}.

-type spawn_option() :: erlang:spawn_opt_option().

-type dict_or_pid() ::
          pid() |
          (ProcInfo :: [_]) |
          {X :: integer(), Y :: integer(), Z :: integer()}.

-spec spawn(Fun) -> pid() when Fun :: function().

spawn(F) when is_function(F) ->
    Parent = get_my_name(),
    Ancestors = get_ancestors(),
    spawn(proc_lib, init_p, [Parent, Ancestors, F]).

-spec spawn(Module, Function, Args) -> pid()
               when
                   Module :: module(),
                   Function :: atom(),
                   Args :: [term()].

spawn(M, F, A) when is_atom(M), is_atom(F), is_list(A) ->
    Parent = get_my_name(),
    Ancestors = get_ancestors(),
    spawn(proc_lib, init_p, [Parent, Ancestors, M, F, A]).

-spec spawn_link(Fun) -> pid() when Fun :: function().

spawn_link(F) when is_function(F) ->
    Parent = get_my_name(),
    Ancestors = get_ancestors(),
    spawn_link(proc_lib, init_p, [Parent, Ancestors, F]).

-spec spawn_link(Module, Function, Args) -> pid()
                    when
                        Module :: module(),
                        Function :: atom(),
                        Args :: [term()].

spawn_link(M, F, A) when is_atom(M), is_atom(F), is_list(A) ->
    Parent = get_my_name(),
    Ancestors = get_ancestors(),
    spawn_link(proc_lib, init_p, [Parent, Ancestors, M, F, A]).

-spec spawn(Node, Fun) -> pid() when Node :: node(), Fun :: function().

spawn(Node, F) when is_function(F) ->
    Parent = get_my_name(),
    Ancestors = get_ancestors(),
    spawn(Node, proc_lib, init_p, [Parent, Ancestors, F]).

-spec spawn(Node, Module, Function, Args) -> pid()
               when
                   Node :: node(),
                   Module :: module(),
                   Function :: atom(),
                   Args :: [term()].

spawn(Node, M, F, A) when is_atom(M), is_atom(F), is_list(A) ->
    Parent = get_my_name(),
    Ancestors = get_ancestors(),
    spawn(Node, proc_lib, init_p, [Parent, Ancestors, M, F, A]).

-spec spawn_link(Node, Fun) -> pid()
                    when Node :: node(), Fun :: function().

spawn_link(Node, F) when is_function(F) ->
    Parent = get_my_name(),
    Ancestors = get_ancestors(),
    spawn_link(Node, proc_lib, init_p, [Parent, Ancestors, F]).

-spec spawn_link(Node, Module, Function, Args) -> pid()
                    when
                        Node :: node(),
                        Module :: module(),
                        Function :: atom(),
                        Args :: [term()].

spawn_link(Node, M, F, A) when is_atom(M), is_atom(F), is_list(A) ->
    Parent = get_my_name(),
    Ancestors = get_ancestors(),
    spawn_link(Node, proc_lib, init_p, [Parent, Ancestors, M, F, A]).

-spec spawn_opt(Fun, SpawnOpts) -> pid() | {pid(), reference()}
                   when
                       Fun :: function(),
                       SpawnOpts :: [erlang:spawn_opt_option()].

spawn_opt(F, Opts) when is_function(F) ->
    Parent = get_my_name(),
    Ancestors = get_ancestors(),
    spawn_opt(proc_lib, init_p, [Parent, Ancestors, F], Opts).

-spec spawn_opt(Node, Fun, SpawnOpts) -> pid() | {pid(), reference()}
                   when
                       Node :: node(),
                       Fun :: function(),
                       SpawnOpts :: [erlang:spawn_opt_option()].

spawn_opt(Node, F, Opts) when is_function(F) ->
    Parent = get_my_name(),
    Ancestors = get_ancestors(),
    spawn_opt(Node, proc_lib, init_p, [Parent, Ancestors, F], Opts).

-spec spawn_opt(Module, Function, Args, SpawnOpts) ->
                   pid() | {pid(), reference()}
                   when
                       Module :: module(),
                       Function :: atom(),
                       Args :: [term()],
                       SpawnOpts :: [erlang:spawn_opt_option()].

spawn_opt(M, F, A, Opts) when is_atom(M), is_atom(F), is_list(A) ->
    Parent = get_my_name(),
    Ancestors = get_ancestors(),
    spawn_opt(proc_lib, init_p, [Parent, Ancestors, M, F, A], Opts).

-spec spawn_opt(Node, Module, Function, Args, SpawnOpts) ->
                   pid() | {pid(), reference()}
                   when
                       Node :: node(),
                       Module :: module(),
                       Function :: atom(),
                       Args :: [term()],
                       SpawnOpts :: [erlang:spawn_opt_option()].

spawn_opt(Node, M, F, A, Opts) when is_atom(M), is_atom(F), is_list(A) ->
    Parent = get_my_name(),
    Ancestors = get_ancestors(),
    spawn_opt(Node, proc_lib, init_p,
              [Parent, Ancestors, M, F, A],
              Opts).

spawn_mon(M, F, A) ->
    Parent = get_my_name(),
    Ancestors = get_ancestors(),
    spawn_monitor(proc_lib, init_p, [Parent, Ancestors, M, F, A]).

-spec hibernate(Module, Function, Args) -> no_return()
                   when
                       Module :: module(),
                       Function :: atom(),
                       Args :: [term()].

hibernate(M, F, A) when is_atom(M), is_atom(F), is_list(A) ->
    erlang:hibernate(proc_lib, wake_up, [M, F, A]).

-spec init_p(pid(), [pid()], function()) -> term().

init_p(Parent, Ancestors, Fun) when is_function(Fun) ->
    put('$ancestors', [Parent | Ancestors]),
    Mfa = erlang:fun_info_mfa(Fun),
    put('$initial_call', Mfa),
    try
        Fun()
    catch
        Class:Reason:Stacktrace ->
            exit_p(Class, Reason, Stacktrace)
    end.

-spec init_p(pid(), [pid()], atom(), atom(), [term()]) -> term().

init_p(Parent, Ancestors, M, F, A)
    when is_atom(M), is_atom(F), is_list(A) ->
    put('$ancestors', [Parent | Ancestors]),
    put('$initial_call', trans_init(M, F, A)),
    init_p_do_apply(M, F, A).

init_p_do_apply(M, F, A) ->
    try
        apply(M, F, A)
    catch
        Class:Reason:Stacktrace ->
            exit_p(Class, Reason, Stacktrace)
    end.

-spec wake_up(atom(), atom(), [term()]) -> term().

wake_up(M, F, A) when is_atom(M), is_atom(F), is_list(A) ->
    try
        apply(M, F, A)
    catch
        Class:Reason:Stacktrace ->
            exit_p(Class, Reason, Stacktrace)
    end.

exit_p(Class, Reason, Stacktrace) ->
    case get('$initial_call') of
        {M, F, A} when is_atom(M), is_atom(F), is_integer(A) ->
            MFA = {M, F, make_dummy_args(A, [])},
            crash_report(Class, Reason, MFA, Stacktrace),
            erlang:raise(exit,
                         exit_reason(Class, Reason, Stacktrace),
                         Stacktrace);
        _ ->
            crash_report(Class, Reason, [], Stacktrace),
            erlang:raise(exit,
                         exit_reason(Class, Reason, Stacktrace),
                         Stacktrace)
    end.

exit_reason(error, Reason, Stacktrace) ->
    {Reason, Stacktrace};
exit_reason(exit, Reason, _Stacktrace) ->
    Reason;
exit_reason(throw, Reason, Stacktrace) ->
    {{nocatch, Reason}, Stacktrace}.

-spec start(Module, Function, Args) -> Ret
               when
                   Module :: module(),
                   Function :: atom(),
                   Args :: [term()],
                   Ret :: term() | {error, Reason :: term()}.

start(M, F, A) when is_atom(M), is_atom(F), is_list(A) ->
    start(M, F, A, infinity).

-spec start(Module, Function, Args, Time) -> Ret
               when
                   Module :: module(),
                   Function :: atom(),
                   Args :: [term()],
                   Time :: timeout(),
                   Ret :: term() | {error, Reason :: term()}.

start(M, F, A, Timeout) when is_atom(M), is_atom(F), is_list(A) ->
    sync_start(spawn_mon(M, F, A), Timeout).

-spec start(Module, Function, Args, Time, SpawnOpts) -> Ret
               when
                   Module :: module(),
                   Function :: atom(),
                   Args :: [term()],
                   Time :: timeout(),
                   SpawnOpts :: [start_spawn_option()],
                   Ret :: term() | {error, Reason :: term()}.

start(M, F, A, Timeout, SpawnOpts)
    when is_atom(M), is_atom(F), is_list(A) ->
    Monitor = monitor,
    case lists:member(Monitor, SpawnOpts) of
        true ->
            error(badarg, [M, F, A, Timeout, SpawnOpts]);
        false ->
            case lists:keyfind(Monitor, 1, SpawnOpts) of
                false ->
                    ok;
                {Monitor, _} ->
                    error(badarg, [M, F, A, Timeout, SpawnOpts])
            end
    end,
    sync_start(proc_lib:spawn_opt(M, F, A, [monitor | SpawnOpts]),
               Timeout).

sync_start({Pid, Ref}, Timeout) ->
    receive
        {ack, Pid, Return} ->
            demonitor(Ref, [flush]),
            Return;
        {nack, Pid, Return} ->
            flush_EXIT(Pid),
            _ = await_DOWN(Pid, Ref),
            Return;
        {'DOWN', Ref, process, Pid, Reason} ->
            flush_EXIT(Pid),
            {error, Reason}
    after
        Timeout ->
            kill_flush_EXIT(Pid),
            _ = await_DOWN(Pid, Ref),
            {error, timeout}
    end.

-spec start_link(Module, Function, Args) -> Ret
                    when
                        Module :: module(),
                        Function :: atom(),
                        Args :: [term()],
                        Ret :: term() | {error, Reason :: term()}.

start_link(M, F, A) when is_atom(M), is_atom(F), is_list(A) ->
    start_link(M, F, A, infinity).

-spec start_link(Module, Function, Args, Time) -> Ret
                    when
                        Module :: module(),
                        Function :: atom(),
                        Args :: [term()],
                        Time :: timeout(),
                        Ret :: term() | {error, Reason :: term()}.

start_link(M, F, A, Timeout) when is_atom(M), is_atom(F), is_list(A) ->
    sync_start(proc_lib:spawn_opt(M, F, A, [link, monitor]), Timeout).

-spec start_link(Module, Function, Args, Time, SpawnOpts) -> Ret
                    when
                        Module :: module(),
                        Function :: atom(),
                        Args :: [term()],
                        Time :: timeout(),
                        SpawnOpts :: [start_spawn_option()],
                        Ret :: term() | {error, Reason :: term()}.

start_link(M, F, A, Timeout, SpawnOpts)
    when is_atom(M), is_atom(F), is_list(A) ->
    Monitor = monitor,
    case lists:member(Monitor, SpawnOpts) of
        true ->
            error(badarg, [M, F, A, Timeout, SpawnOpts]);
        false ->
            case lists:keyfind(Monitor, 1, SpawnOpts) of
                false ->
                    ok;
                {Monitor, _} ->
                    error(badarg, [M, F, A, Timeout, SpawnOpts])
            end
    end,
    sync_start(proc_lib:spawn_opt(M, F, A, [link, monitor | SpawnOpts]),
               Timeout).

-spec start_monitor(Module, Function, Args) -> {Ret, Mon}
                       when
                           Module :: module(),
                           Function :: atom(),
                           Args :: [term()],
                           Mon :: reference(),
                           Ret :: term() | {error, Reason :: term()}.

start_monitor(M, F, A) when is_atom(M), is_atom(F), is_list(A) ->
    start_monitor(M, F, A, infinity).

-spec start_monitor(Module, Function, Args, Time) -> {Ret, Mon}
                       when
                           Module :: module(),
                           Function :: atom(),
                           Args :: [term()],
                           Time :: timeout(),
                           Mon :: reference(),
                           Ret :: term() | {error, Reason :: term()}.

start_monitor(M, F, A, Timeout) when is_atom(M), is_atom(F), is_list(A) ->
    sync_start_monitor(spawn_mon(M, F, A), Timeout).

-spec start_monitor(Module, Function, Args, Time, SpawnOpts) ->
                       {Ret, Mon}
                       when
                           Module :: module(),
                           Function :: atom(),
                           Args :: [term()],
                           Time :: timeout(),
                           SpawnOpts :: [start_spawn_option()],
                           Mon :: reference(),
                           Ret :: term() | {error, Reason :: term()}.

start_monitor(M, F, A, Timeout, SpawnOpts)
    when is_atom(M), is_atom(F), is_list(A) ->
    Monitor = monitor,
    case lists:member(Monitor, SpawnOpts) of
        true ->
            error(badarg, [M, F, A, Timeout, SpawnOpts]);
        false ->
            case lists:keyfind(Monitor, 1, SpawnOpts) of
                false ->
                    ok;
                {Monitor, _} ->
                    error(badarg, [M, F, A, Timeout, SpawnOpts])
            end
    end,
    sync_start_monitor(proc_lib:spawn_opt(M, F, A,
                                          [monitor | SpawnOpts]),
                       Timeout).

sync_start_monitor({Pid, Ref}, Timeout) ->
    receive
        {ack, Pid, Return} ->
            {Return, Ref};
        {nack, Pid, Return} ->
            flush_EXIT(Pid),
            self() ! await_DOWN(Pid, Ref),
            {Return, Ref};
        {'DOWN', Ref, process, Pid, Reason} = Down ->
            flush_EXIT(Pid),
            self() ! Down,
            {{error, Reason}, Ref}
    after
        Timeout ->
            kill_flush_EXIT(Pid),
            self() ! await_DOWN(Pid, Ref),
            {{error, timeout}, Ref}
    end.

flush_EXIT(Pid) ->
    unlink(Pid),
    receive
        {'EXIT', Pid, _} ->
            ok
    after
        0 -> ok
    end.

kill_flush_EXIT(Pid) ->
    unlink(Pid),
    exit(Pid, kill),
    receive
        {'EXIT', Pid, _} ->
            ok
    after
        0 -> ok
    end.

await_DOWN(Pid, Ref) ->
    receive
        {'DOWN', Ref, process, Pid, _} = Down ->
            Down
    end.

-spec init_ack(Parent, Ret) -> ok when Parent :: pid(), Ret :: term().

init_ack(Parent, Return) ->
    Parent ! {ack, self(), Return},
    ok.

-spec init_ack(Ret) -> ok when Ret :: term().

init_ack(Return) ->
    [Parent | _] = get('$ancestors'),
    init_ack(Parent, Return).

-spec init_fail(Parent :: pid(),
                Return :: term(),
                Exception :: exception()) ->
                   no_return().

init_fail(Parent, Return, Exception) ->
    _ = Parent ! {nack, self(), Return},
    case Exception of
        {error, Reason} ->
            error(Reason);
        {exit, Reason} ->
            exit(Reason);
        {throw, Reason} ->
            throw(Reason);
        {Class, Reason, Stacktrace} ->
            error(erlang:raise(Class, Reason, Stacktrace),
                  [Parent, Return, Exception])
    end.

-spec init_fail(Return :: term(), Exception :: exception()) ->
                   no_return().

init_fail(Return, Exception) ->
    [Parent | _] = get('$ancestors'),
    init_fail(Parent, Return, Exception).

-spec initial_call(Process) -> {Module, Function, Args} | false
                      when
                          Process :: dict_or_pid(),
                          Module :: module(),
                          Function :: atom(),
                          Args :: [atom()].

initial_call(DictOrPid) ->
    case raw_initial_call(DictOrPid) of
        {M, F, A} ->
            {M, F, make_dummy_args(A, [])};
        false ->
            false
    end.

make_dummy_args(0, Acc) ->
    Acc;
make_dummy_args(N, Acc) ->
    Arg = list_to_atom("Argument__" ++ integer_to_list(N)),
    make_dummy_args(N - 1, [Arg | Acc]).

-spec translate_initial_call(Process) -> {Module, Function, Arity}
                                when
                                    Process :: dict_or_pid(),
                                    Module :: module(),
                                    Function :: atom(),
                                    Arity :: byte().

translate_initial_call(DictOrPid) ->
    case raw_initial_call(DictOrPid) of
        {_, _, _} = MFA ->
            MFA;
        false ->
            {proc_lib, init_p, 5}
    end.

-spec set_label(Label) -> ok when Label :: term().

set_label(Label) ->
    put('$process_label', Label),
    ok.

-spec get_label(Pid) -> undefined | term() when Pid :: pid().

get_label(Pid) ->
    case Pid == self() of
        true ->
            get('$process_label');
        false ->
            try get_process_info(Pid, {dictionary, '$process_label'}) of
                {process_label, Id} ->
                    Id;
                _ ->
                    undefined
            catch
                _:_ ->
                    undefined
            end
    end.

raw_initial_call({X, Y, Z})
    when is_integer(X), is_integer(Y), is_integer(Z) ->
    raw_initial_call(c:pid(X, Y, Z));
raw_initial_call(Pid) when is_pid(Pid) ->
    case get_dictionary(Pid, '$initial_call') of
        {_, _, _} = MFA ->
            MFA;
        _ ->
            false
    end;
raw_initial_call(ProcInfo) when is_list(ProcInfo) ->
    case lists:keyfind({dictionary, '$initial_call'}, 1, ProcInfo) of
        {{dictionary, _}, {_, _, _} = MFA} ->
            MFA;
        false ->
            case lists:keyfind(dictionary, 1, ProcInfo) of
                {dictionary, Dict} ->
                    case lists:keyfind('$initial_call', 1, Dict) of
                        {_, {_, _, _} = MFA} ->
                            MFA;
                        _ ->
                            false
                    end;
                _ ->
                    false
            end
    end.

trans_init(gen, init_it,
           [gen_server, _, _, supervisor, {_, Module, _}, _]) ->
    {supervisor, Module, 1};
trans_init(gen, init_it,
           [gen_server, _, _, _, supervisor, {_, Module, _}, _]) ->
    {supervisor, Module, 1};
trans_init(gen, init_it,
           [gen_server, _, _, supervisor_bridge, [Module | _], _]) ->
    {supervisor_bridge, Module, 1};
trans_init(gen, init_it,
           [gen_server, _, _, _, supervisor_bridge, [Module | _], _]) ->
    {supervisor_bridge, Module, 1};
trans_init(gen, init_it, [gen_event | _]) ->
    {gen_event, init_it, 6};
trans_init(gen, init_it, [_GenMod, _, _, Module, _, _])
    when is_atom(Module) ->
    {Module, init, 1};
trans_init(gen, init_it, [_GenMod, _, _, _, Module | _])
    when is_atom(Module) ->
    {Module, init, 1};
trans_init(M, F, A) when is_atom(M), is_atom(F) ->
    {M, F, length(A)}.

crash_report(exit, normal, _, _) ->
    ok;
crash_report(exit, shutdown, _, _) ->
    ok;
crash_report(exit, {shutdown, _}, _, _) ->
    ok;
crash_report(Class, Reason, StartF, Stacktrace) ->
    case logger:allow(error, proc_lib) of
        true ->
            apply(logger, macro_log,
                  [#{mfa => {proc_lib, crash_report, 4},
                     line => 950,
                     file =>
                         "/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.2/src/"
                         "proc_lib.erl"},
                   error,
                   #{label => {proc_lib, crash},
                     report =>
                         [my_info(Class, Reason, StartF, Stacktrace),
                          linked_info(self())]},
                   #{domain => [otp, sasl],
                     report_cb => fun proc_lib:report_cb/2,
                     logger_formatter => #{title => "CRASH REPORT"},
                     error_logger =>
                         #{tag => error_report, type => crash_report}}]);
        false ->
            ok
    end.

my_info(Class, Reason, [], Stacktrace) ->
    my_info_1(Class, Reason, Stacktrace);
my_info(Class, Reason, StartF, Stacktrace) ->
    [{initial_call, StartF} | my_info_1(Class, Reason, Stacktrace)].

my_info_1(Class, Reason, Stacktrace) ->
    Keys =
        [registered_name, dictionary, message_queue_len, links,
         trap_exit, status, heap_size, stack_size, reductions],
    PInfo = get_process_info(self(), Keys),
    {dictionary, Dict} = lists:keyfind(dictionary, 1, PInfo),
    [{pid, self()},
     lists:keyfind(registered_name, 1, PInfo),
     {process_label, get_label(self())},
     {error_info, {Class, Reason, Stacktrace}},
     {ancestors, get_ancestors()},
     lists:keyfind(message_queue_len, 1, PInfo),
     get_messages(self()),
     lists:keyfind(links, 1, PInfo),
     {dictionary, cleaned_dict(Dict)},
     lists:keyfind(trap_exit, 1, PInfo),
     lists:keyfind(status, 1, PInfo),
     lists:keyfind(heap_size, 1, PInfo),
     lists:keyfind(stack_size, 1, PInfo),
     lists:keyfind(reductions, 1, PInfo)].

get_messages(Pid) ->
    Messages = get_process_messages(Pid),
    {messages, error_logger:limit_term(Messages)}.

get_process_messages(Pid) ->
    Depth = error_logger:get_format_depth(),
    case
        Pid =/= self()
        orelse
        Depth =:= unlimited
    of
        true ->
            {messages, Messages} = get_process_info(Pid, messages),
            Messages;
        false ->
            receive_messages(Depth)
    end.

receive_messages(0) ->
    [];
receive_messages(N) ->
    receive
        M ->
            [M | receive_messages(N - 1)]
    after
        0 -> []
    end.

cleaned_dict(Dict) ->
    CleanDict = clean_dict(Dict),
    error_logger:limit_term(CleanDict).

clean_dict([{'$ancestors', _} | Dict]) ->
    clean_dict(Dict);
clean_dict([{'$initial_call', _} | Dict]) ->
    clean_dict(Dict);
clean_dict([{'$process_label', _} | Dict]) ->
    clean_dict(Dict);
clean_dict([E | Dict]) ->
    [E | clean_dict(Dict)];
clean_dict([]) ->
    [].

get_dictionary(Pid, Tag) ->
    try get_process_info(Pid, {dictionary, Tag}) of
        {{dictionary, Tag}, Value} ->
            Value;
        _ ->
            undefined
    catch
        _:_ ->
            case get_process_info(Pid, dictionary) of
                {dictionary, Dict} ->
                    case lists:keysearch(Tag, 1, Dict) of
                        {value, Value} ->
                            Value;
                        _ ->
                            undefined
                    end;
                _ ->
                    undefined
            end
    end.

linked_info(Pid) ->
    make_neighbour_reports1(neighbours(Pid)).

make_neighbour_reports1([P | Ps]) ->
    case make_neighbour_report(P) of
        undefined ->
            make_neighbour_reports1(Ps);
        ReportBody ->
            [{neighbour, ReportBody} | make_neighbour_reports1(Ps)]
    end;
make_neighbour_reports1([]) ->
    [].

make_neighbour_report(Pid) ->
    Keys =
        [registered_name, initial_call, current_function,
         message_queue_len, links, trap_exit, status, heap_size,
         stack_size, reductions, current_stacktrace],
    ProcInfo = get_process_info(Pid, Keys),
    DictKeys =
        [{dictionary, '$process_label'},
         {dictionary, '$initial_call'},
         {dictionary, '$ancestors'}],
    DictInfo =
        try
            get_process_info(Pid, DictKeys)
        catch
            _:_ ->
                get_process_info(Pid, dictionary)
        end,
    case
        ProcInfo =:= undefined
        orelse
        DictInfo =:= undefined
    of
        true ->
            undefined;
        false ->
            [{pid, Pid},
             lists:keyfind(registered_name, 1, ProcInfo),
             dict_find_info('$process_label', DictInfo, undefined),
             get_initial_call(DictInfo, ProcInfo),
             lists:keyfind(current_function, 1, ProcInfo),
             dict_find_info('$ancestors', DictInfo, []),
             lists:keyfind(message_queue_len, 1, ProcInfo),
             lists:keyfind(links, 1, ProcInfo),
             lists:keyfind(trap_exit, 1, ProcInfo),
             lists:keyfind(status, 1, ProcInfo),
             lists:keyfind(heap_size, 1, ProcInfo),
             lists:keyfind(stack_size, 1, ProcInfo),
             lists:keyfind(reductions, 1, ProcInfo),
             lists:keyfind(current_stacktrace, 1, ProcInfo)]
    end.

get_initial_call(DictInfo, ProcInfo) ->
    case dict_find_info('$initial_call', DictInfo, undefined) of
        {initial_call, {M, F, A}} ->
            {initial_call, {M, F, make_dummy_args(A, [])}};
        _R ->
            lists:keyfind(initial_call, 1, ProcInfo)
    end.

dict_find_info(DictKey, Dict, Default) ->
    [$$ | KeyList] = atom_to_list(DictKey),
    InfoKey = list_to_existing_atom(KeyList),
    case lists:keyfind({dictionary, DictKey}, 1, Dict) of
        false ->
            case lists:keyfind(DictKey, 1, Dict) of
                {DictKey, V} ->
                    {InfoKey, V};
                false ->
                    {InfoKey, Default}
            end;
        {{dictionary, DictKey}, undefined} ->
            {InfoKey, Default};
        {{dictionary, DictKey}, V} ->
            {InfoKey, V}
    end.

-spec neighbours(pid()) -> [pid()].

neighbours(Pid) ->
    {_, Visited} = visit(adjacents(Pid), {max_neighbours(), [Pid]}),
    lists:delete(Pid, Visited).

max_neighbours() ->
    15.

visit([P | Ps], {N, Vs} = NVs) when N > 0 ->
    case lists:member(P, Vs) of
        false ->
            visit(adjacents(P), visit(Ps, {N - 1, [P | Vs]}));
        true ->
            visit(Ps, NVs)
    end;
visit(_, {_N, _Vs} = NVs) ->
    NVs.

-spec adjacents(pid()) -> [pid()].

adjacents(Pid) ->
    case catch proc_info(Pid, links) of
        {links, Links} ->
            no_trap(Links);
        _ ->
            []
    end.

no_trap([P | Ps]) ->
    case catch proc_info(P, trap_exit) of
        {trap_exit, false} ->
            [P | no_trap(Ps)];
        _ ->
            no_trap(Ps)
    end;
no_trap([]) ->
    [].

get_process_info(Pid, Tag) ->
    translate_process_info(Tag, catch proc_info(Pid, Tag)).

translate_process_info({dictionary, '$process_label'} = Tag,
                       {Tag, Value}) ->
    {process_label, Value};
translate_process_info(_, {'EXIT', _}) ->
    undefined;
translate_process_info(_, Result) ->
    Result.

get_my_name() ->
    case proc_info(self(), registered_name) of
        {registered_name, Name} ->
            Name;
        _ ->
            self()
    end.

-spec get_ancestors() -> [pid()].

get_ancestors() ->
    case get('$ancestors') of
        A when is_list(A) ->
            A;
        _ ->
            []
    end.

proc_info(Pid, Item) when node(Pid) =:= node() ->
    process_info(Pid, Item);
proc_info(Pid, Item) ->
    case lists:member(node(Pid), nodes()) of
        true ->
            check(rpc:call(node(Pid), erlang, process_info, [Pid, Item]));
        _ ->
            hidden
    end.

check({badrpc, nodedown}) ->
    undefined;
check({badrpc, Error}) ->
    Error;
check(Res) ->
    Res.

-spec report_cb(CrashReport, FormatOpts) -> unicode:chardata()
                   when
                       CrashReport ::
                           #{label => {proc_lib, crash},
                             report => [term()]},
                       FormatOpts :: logger:report_cb_config().

report_cb(#{label := {proc_lib, crash}, report := CrashReport}, Extra) ->
    Default =
        #{chars_limit => unlimited,
          depth => unlimited,
          single_line => false,
          encoding => utf8},
    do_format(CrashReport, maps:merge(Default, Extra)).

-spec format(CrashReport) -> string() when CrashReport :: [term()].

format(CrashReport) ->
    format(CrashReport, latin1).

-spec format(CrashReport, Encoding) -> string()
                when
                    CrashReport :: [term()],
                    Encoding :: latin1 | unicode | utf8.

format(CrashReport, Encoding) ->
    format(CrashReport, Encoding, unlimited).

-spec format(CrashReport, Encoding, Depth) -> string()
                when
                    CrashReport :: [term()],
                    Encoding :: latin1 | unicode | utf8,
                    Depth :: unlimited | pos_integer().

format(CrashReport, Encoding, Depth) ->
    do_format(CrashReport,
              #{chars_limit => unlimited,
                depth => Depth,
                encoding => Encoding,
                single_line => false}).

do_format([OwnReport, LinkReport], Extra) ->
    #{encoding := Enc, single_line := Single, chars_limit := Limit0} =
        Extra,
    Indent =
        if
            Single ->
                "";
            true ->
                "  "
        end,
    Nl = nl(Single, " "),
    Sep = nl(Single, report_separator()),
    {PartLimit, Limit} =
        case Limit0 of
            unlimited ->
                {Limit0, Limit0};
            _ when is_integer(Limit0) ->
                Num = length(OwnReport),
                HardcodedSize =
                    length(Indent) + length("crasher") + length(Nl)
                    +
                    length(Sep)
                    +
                    length(Sep) * Num,
                Limit1 = max(Limit0 - HardcodedSize, 1),
                EL = Limit1 div 3,
                PL = (Limit1 - EL) div Num,
                {PL, Limit1}
        end,
    LinkFormat =
        format_link_reports(LinkReport, Indent, Extra, PartLimit),
    LinkFormatSize = size(Enc, LinkFormat),
    OwnFormat =
        format_own_report(OwnReport, Indent, Extra, LinkFormatSize,
                          PartLimit, Limit),
    io_lib:format("~scrasher:" ++ Nl ++ "~ts" ++ Sep ++ "~ts",
                  [Indent, OwnFormat, LinkFormat]).

format_own_report(OwnReport, Indent, Extra, LinkFormatSize, PartLimit,
                  Limit0) ->
    MyIndent = Indent ++ Indent,
    case separate_error_info(OwnReport) of
        {First, {Class, Reason, StackTrace}, Rest} ->
            F = format_report(First, MyIndent, Extra, PartLimit),
            R = format_report(Rest, MyIndent, Extra, PartLimit),
            #{encoding := Enc, single_line := Single} = Extra,
            Sep = nl(Single, part_separator()),
            Limit =
                case Limit0 of
                    unlimited ->
                        Limit0;
                    _ when is_integer(Limit0) ->
                        SizeOfOther =
                            size(Enc, F) + size(Enc, R)
                            -
                            length(Sep) * (length(F) + length(R))
                            +
                            LinkFormatSize,
                        max(Limit0 - SizeOfOther, 1)
                end,
            EI =
                format_exception(Class, Reason, StackTrace, Extra,
                                 Limit),
            lists:join(Sep, [F, EI, R]);
        no ->
            Limit =
                case Limit0 of
                    unlimited ->
                        Limit0;
                    _ when is_integer(Limit0) ->
                        max(Limit0 - LinkFormatSize, 1)
                end,
            format_report(OwnReport, MyIndent, Extra, Limit)
    end.

separate_error_info(Report) ->
    try
        lists:splitwith(fun(A) ->
                               element(1, A) =/= error_info
                        end,
                        Report)
    of
        {First, [{error_info, ErrorInfo} | Rest]} ->
            {First, ErrorInfo, Rest};
        _ ->
            no
    catch
        _:_ ->
            no
    end.

format_link_reports(LinkReports, Indent, Extra, PartLimit)
    when is_integer(PartLimit) ->
    #{encoding := Enc, depth := Depth, single_line := Single} = Extra,
    Pids =
        [ 
         P ||
             {neighbour, [{pid, P} | _]} <- LinkReports
        ],
    {P, Tl} = p(Enc, Depth),
    Width =
        if
            Single ->
                "0";
            true ->
                ""
        end,
    io_lib:format(Indent ++ "neighbours: ~" ++ Width ++ P,
                  [Pids | Tl],
                  [{chars_limit, PartLimit}]);
format_link_reports(LinkReports, Indent, Extra, PartLimit) ->
    #{single_line := Single} = Extra,
    MyIndent = Indent ++ Indent,
    LinkFormat =
        lists:join(nl(Single, report_separator()),
                   format_link_report(LinkReports, MyIndent, Extra,
                                      PartLimit)),
    [Indent, "neighbours:", nl(Single, " "), LinkFormat].

format_link_report([Link | Reps], Indent0, Extra, PartLimit) ->
    #{single_line := Single} = Extra,
    Rep =
        case Link of
            {neighbour, Rep0} ->
                Rep0;
            _ ->
                Link
        end,
    Indent =
        if
            Single ->
                "";
            true ->
                Indent0
        end,
    LinkIndent = ["  ", Indent],
    [[Indent,
      "neighbour:",
      nl(Single, " "),
      format_report(Rep, LinkIndent, Extra, PartLimit)] |
     format_link_report(Reps, Indent, Extra, PartLimit)];
format_link_report(Rep, Indent, Extra, PartLimit) ->
    format_report(Rep, Indent, Extra, PartLimit).

format_report(Rep, Indent, Extra, Limit) when is_list(Rep) ->
    #{single_line := Single} = Extra,
    lists:join(nl(Single, part_separator()),
               format_rep(Rep, Indent, Extra, Limit));
format_report(Rep, Indent0, Extra, Limit) ->
    #{encoding := Enc, depth := Depth, single_line := Single} = Extra,
    {P, Tl} = p(Enc, Depth),
    {Indent, Width} =
        if
            Single ->
                {"", "0"};
            true ->
                {Indent0, ""}
        end,
    Opts = chars_limit_opt(Limit),
    io_lib:format("~s~" ++ Width ++ P, [Indent, Rep | Tl], Opts).

format_rep([{initial_call, InitialCall} | Rep], Indent, Extra, Limit) ->
    [format_mfa(Indent, InitialCall, Extra, Limit) |
     format_rep(Rep, Indent, Extra, Limit)];
format_rep([{process_label, undefined} | Rep], Indent, Extra, Limit) ->
    format_rep(Rep, Indent, Extra, Limit);
format_rep([{Tag, Data} | Rep], Indent, Extra, Limit) ->
    [format_tag(Indent, Tag, Data, Extra, Limit) |
     format_rep(Rep, Indent, Extra, Limit)];
format_rep(_, _, _Extra, _Limit) ->
    [].

format_exception(Class, Reason, StackTrace, Extra, Limit) ->
    #{encoding := Enc, depth := Depth, single_line := Single} = Extra,
    StackFun =
        fun(M, _F, _A) ->
               (M =:= erl_eval) or (M =:= proc_lib)
        end,
    if
        Single ->
            {P, Tl} = p(Enc, Depth),
            Opts = chars_limit_opt(Limit),
            [atom_to_list(Class),
             ": ",
             io_lib:format("~0" ++ P, [{Reason, StackTrace} | Tl], Opts)];
        true ->
            PF = pp_fun(Extra, Enc),
            EI = "    ",
            Lim =
                case Limit of
                    unlimited ->
                        -1;
                    _ ->
                        Limit
                end,
            FE =
                erl_error:format_exception(1 + length(EI),
                                           Class, Reason, StackTrace,
                                           StackFun, PF, Enc, Lim),
            [EI, FE]
    end.

format_mfa(Indent0, {M, F, Args} = StartF, Extra, Limit) ->
    #{encoding := Enc, single_line := Single} = Extra,
    Indent =
        if
            Single ->
                "";
            true ->
                Indent0
        end,
    try
        A = length(Args),
        [Indent,
         "initial call: ",
         to_string(M, Enc),
         $:,
         to_string(F, Enc),
         $/,
         integer_to_list(A)]
    catch
        error:_ ->
            format_tag(Indent, initial_call, StartF, Extra, Limit)
    end.

to_string(A, latin1) ->
    io_lib:write_atom_as_latin1(A);
to_string(A, _) ->
    io_lib:write_atom(A).

pp_fun(Extra, Enc) ->
    #{encoding := Enc, depth := Depth, single_line := Single} = Extra,
    {P, Tl} = p(Enc, Depth),
    Width =
        if
            Single ->
                "0";
            true ->
                ""
        end,
    fun(Term, I, Limit) ->
           S = io_lib:format("~"
                             ++
                             Width ++ "." ++ integer_to_list(I) ++ P,
                             [Term | Tl],
                             [{chars_limit, Limit}]),
           {S, sub(Limit, S, Enc)}
    end.

format_tag(Indent0, Tag, Data, Extra, Limit) ->
    #{encoding := Enc, depth := Depth, single_line := Single} = Extra,
    {P, Tl} = p(Enc, Depth),
    {Indent, Width} =
        if
            Single ->
                {"", "0"};
            true ->
                {Indent0, ""}
        end,
    Opts = chars_limit_opt(Limit),
    io_lib:format("~s~" ++ Width ++ "p: ~" ++ Width ++ ".18" ++ P,
                  [Indent, Tag, Data | Tl],
                  Opts).

p(Encoding, Depth) ->
    {Letter, Tl} =
        case Depth of
            unlimited ->
                {"p", []};
            _ ->
                {"P", [Depth]}
        end,
    P = modifier(Encoding) ++ Letter,
    {P, Tl}.

report_separator() ->
    "; ".

part_separator() ->
    ", ".

chars_limit_opt(CharsLimit) ->
    [ 
     {chars_limit, CharsLimit} ||
         is_integer(CharsLimit)
    ].

modifier(latin1) ->
    "";
modifier(_) ->
    "t".

nl(true, Else) ->
    Else;
nl(false, _) ->
    "\n".

sub(T, _, _Enc) when T < 0 ->
    T;
sub(T, E, Enc) ->
    Sz = size(Enc, E),
    if
        T >= Sz ->
            T - Sz;
        true ->
            0
    end.

size(latin1, S) ->
    iolist_size(S);
size(_, S) ->
    string:length(S).

-spec stop(Process) -> ok
              when
                  Process :: pid() | RegName | {RegName, node()},
                  RegName :: atom().

stop(Process) ->
    stop(Process, normal, infinity).

-spec stop(Process, Reason, Timeout) -> ok
              when
                  Process :: pid() | RegName | {RegName, node()},
                  RegName :: atom(),
                  Reason :: term(),
                  Timeout :: timeout().

stop(Process, Reason, Timeout) ->
    Mref = monitor(process, Process),
    T0 = erlang:monotonic_time(millisecond),
    StopTimeout =
        fun(infinity) ->
               infinity;
           (T1) ->
               T1
               -
               ((erlang:monotonic_time(microsecond) + 999) div 1000 - T0)
        end,
    RemainingTimeout =
        try sys:terminate(Process, Reason, Timeout) of
            ok ->
                StopTimeout(Timeout)
        catch
            exit:{noproc, {sys, terminate, _}} ->
                demonitor(Mref, [flush]),
                exit(noproc);
            exit:{timeout, {sys, terminate, _}} ->
                demonitor(Mref, [flush]),
                exit(timeout);
            exit:{Reason, {sys, terminate, _}} ->
                StopTimeout(Timeout);
            exit:Reason1 ->
                demonitor(Mref, [flush]),
                exit(Reason1)
        end,
    receive
        {'DOWN', Mref, _, _, Reason} ->
            ok;
        {'DOWN', Mref, _, _, Reason2} ->
            exit(Reason2)
    after
        RemainingTimeout ->
            demonitor(Mref, [flush]),
            exit(timeout)
    end.



