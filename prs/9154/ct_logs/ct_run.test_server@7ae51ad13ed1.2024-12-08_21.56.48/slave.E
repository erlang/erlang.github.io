-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.1.2/src/slave.erl", 1).

-module(slave).

-deprecated([{'_', '_', "use the 'peer' module instead"}]).

-compile(nowarn_deprecated_catch).

-export([pseudo/1,
         pseudo/2,
         start/1,
         start/2,
         start/3,
         start/5,
         start_link/1,
         start_link/2,
         start_link/3,
         stop/1,
         relay/1]).

-export([wait_for_slave/7,slave_start/1,wait_for_master_to_die/2]).

-import(error_logger, [error_msg/2]).

-spec pseudo([Master :: node() | (ServerList :: [atom()])]) -> ok.

pseudo([Master | ServerList]) ->
    pseudo(Master, ServerList);
pseudo(_) ->
    error_logger:error_msg("No master node given to slave:pseudo/1~n",
                           []).

-spec pseudo(Master, ServerList) -> ok
                when Master :: node(), ServerList :: [atom()].

pseudo(_, []) ->
    ok;
pseudo(Master, [S | Tail]) ->
    start_pseudo(S, whereis(S), Master),
    pseudo(Master, Tail).

start_pseudo(Name, undefined, Master) ->
    X = rpc:call(Master, erlang, whereis, [Name]),
    register(Name, spawn(slave, relay, [X]));
start_pseudo(_, _, _) ->
    ok.

-spec relay(Pid) -> no_return() when Pid :: pid().

relay({badrpc, Reason}) ->
    error_logger:error_msg(" ** exiting relay server ~w :~tw  **~n",
                           [self(), Reason]),
    exit(Reason);
relay(undefined) ->
    error_logger:error_msg(" ** exiting relay server ~w  **~n",
                           [self()]),
    exit(undefined);
relay(Pid) when is_pid(Pid) ->
    relay1(Pid).

relay1(Pid) ->
    receive
        X ->
            Pid ! X
    end,
    relay1(Pid).

-spec start(Host) -> {ok, Node} | {error, Reason}
               when
                   Host :: inet:hostname(),
                   Node :: node(),
                   Reason :: timeout | no_rsh | {already_running, Node}.

start(Host) ->
    L = atom_to_list(node()),
    Name = upto($@, L),
    start(Host, Name, [], no_link).

-spec start(Host, Name) -> {ok, Node} | {error, Reason}
               when
                   Host :: inet:hostname(),
                   Name :: atom() | string(),
                   Node :: node(),
                   Reason :: timeout | no_rsh | {already_running, Node}.

start(Host, Name) ->
    start(Host, Name, []).

-spec start(Host, Name, Args) -> {ok, Node} | {error, Reason}
               when
                   Host :: inet:hostname(),
                   Name :: atom() | string(),
                   Args :: string(),
                   Node :: node(),
                   Reason :: timeout | no_rsh | {already_running, Node}.

start(Host, Name, Args) ->
    start(Host, Name, Args, no_link).

-spec start_link(Host) -> {ok, Node} | {error, Reason}
                    when
                        Host :: inet:hostname(),
                        Node :: node(),
                        Reason ::
                            timeout | no_rsh | {already_running, Node}.

start_link(Host) ->
    L = atom_to_list(node()),
    Name = upto($@, L),
    start(Host, Name, [], self()).

-spec start_link(Host, Name) -> {ok, Node} | {error, Reason}
                    when
                        Host :: inet:hostname(),
                        Name :: atom() | string(),
                        Node :: node(),
                        Reason ::
                            timeout | no_rsh | {already_running, Node}.

start_link(Host, Name) ->
    start_link(Host, Name, []).

-spec start_link(Host, Name, Args) -> {ok, Node} | {error, Reason}
                    when
                        Host :: inet:hostname(),
                        Name :: atom() | string(),
                        Args :: string(),
                        Node :: node(),
                        Reason ::
                            timeout | no_rsh | {already_running, Node}.

start_link(Host, Name, Args) ->
    start(Host, Name, Args, self()).

start(Host0, Name, Args, LinkTo) ->
    Prog = progname(),
    start(Host0, Name, Args, LinkTo, Prog).

start(Host0, Name, Args, LinkTo, Prog) ->
    Host =
        case net_kernel:longnames() of
            true ->
                dns(Host0);
            false ->
                strip_host_name(to_list(Host0));
            ignored ->
                exit(not_alive)
        end,
    Node = list_to_atom(lists:concat([Name, "@", Host])),
    case net_adm:ping(Node) of
        pang ->
            start_it(Host, Name, Node, Args, LinkTo, Prog);
        pong ->
            {error, {already_running, Node}}
    end.

-spec stop(Node) -> ok when Node :: node().

stop(Node) ->
    rpc:call(Node, erlang, halt, []),
    ok.

start_it(Host, Name, Node, Args, LinkTo, Prog) ->
    spawn(slave, wait_for_slave,
          [self(), Host, Name, Node, Args, LinkTo, Prog]),
    receive
        {result, Result} ->
            Result
    end.

wait_for_slave(Parent, Host, Name, Node, Args, LinkTo, Prog) ->
    Waiter = register_unique_name(0),
    case mk_cmd(Host, Name, Args, Waiter, Prog) of
        {ok, Cmd} ->
            open_port({spawn, Cmd}, [stream]),
            receive
                {SlavePid, slave_started} ->
                    unregister(Waiter),
                    slave_started(Parent, LinkTo, SlavePid)
            after
                32000 ->
                    Node = list_to_atom(lists:concat([Name, "@", Host])),
                    case net_adm:ping(Node) of
                        pong ->
                            spawn(Node, erlang, halt, []),
                            ok;
                        _ ->
                            ok
                    end,
                    Parent ! {result, {error, timeout}}
            end;
        Other ->
            Parent ! {result, Other}
    end.

slave_started(ReplyTo, no_link, Slave) when is_pid(Slave) ->
    ReplyTo ! {result, {ok, node(Slave)}};
slave_started(ReplyTo, Master, Slave) when is_pid(Master), is_pid(Slave) ->
    process_flag(trap_exit, true),
    link(Master),
    link(Slave),
    ReplyTo ! {result, {ok, node(Slave)}},
    one_way_link(Master, Slave).

one_way_link(Master, Slave) ->
    receive
        {'EXIT', Master, _Reason} ->
            unlink(Slave),
            Slave ! {nodedown, node()};
        {'EXIT', Slave, _Reason} ->
            unlink(Master);
        _Other ->
            one_way_link(Master, Slave)
    end.

register_unique_name(Number) ->
    Name = list_to_atom(lists:concat(["slave_waiter_", Number])),
    case catch register(Name, self()) of
        true ->
            Name;
        {'EXIT', {badarg, _}} ->
            register_unique_name(Number + 1)
    end.

mk_cmd(Host, Name, Args, Waiter, Prog0) ->
    Prog = quote_progname(Prog0),
    BasicCmd =
        lists:concat([Prog,
                      " -detached -noinput -master ",
                      node(),
                      " ",
                      long_or_short(),
                      Name,
                      "@",
                      Host,
                      " -s slave slave_start ",
                      node(),
                      " ",
                      Waiter,
                      " ",
                      Args]),
    case after_char($@, atom_to_list(node())) of
        Host ->
            {ok, BasicCmd};
        _ ->
            case rsh() of
                {ok, Rsh} ->
                    {ok, lists:concat([Rsh, " ", Host, " ", BasicCmd])};
                Other ->
                    Other
            end
    end.

progname() ->
    case init:get_argument(progname) of
        {ok, [[Prog]]} ->
            Prog;
        _Other ->
            "no_prog_name"
    end.

quote_progname(Progname) ->
    do_quote_progname(string:lexemes(to_list(Progname), " ")).

do_quote_progname([Prog]) ->
    "\"" ++ Prog ++ "\"";
do_quote_progname([Prog, Arg | Args]) ->
    case os:find_executable(Prog) of
        false ->
            do_quote_progname([Prog ++ " " ++ Arg | Args]);
        _ ->
            "\""
            ++
            Prog
            ++
            "\""
            ++
            lists:flatten(lists:map(fun(X) ->
                                           [" ", X]
                                    end,
                                    [Arg | Args]))
    end.

rsh() ->
    Rsh =
        case init:get_argument(rsh) of
            {ok, [[Prog]]} ->
                Prog;
            _ ->
                "ssh"
        end,
    case os:find_executable(Rsh) of
        false ->
            {error, no_rsh};
        Path ->
            {ok, Path}
    end.

long_or_short() ->
    case net_kernel:longnames() of
        true ->
            " -name ";
        false ->
            " -sname "
    end.

slave_start([Master, Waiter]) ->
    true,
    spawn(slave, wait_for_master_to_die, [Master, Waiter]).

wait_for_master_to_die(Master, Waiter) ->
    true,
    process_flag(trap_exit, true),
    monitor_node(Master, true),
    {Waiter, Master} ! {self(), slave_started},
    wloop(Master).

wloop(Master) ->
    receive
        {nodedown, Master} ->
            true,
            halt();
        _Other ->
            wloop(Master)
    end.

strip_host_name([]) ->
    [];
strip_host_name([$. | _]) ->
    [];
strip_host_name([H | T]) ->
    [H | strip_host_name(T)].

dns(H) ->
    {ok, Host} = net_adm:dns_hostname(H),
    Host.

to_list(X) when is_list(X) ->
    X;
to_list(X) when is_atom(X) ->
    atom_to_list(X).

upto(_, []) ->
    [];
upto(Char, [Char | _]) ->
    [];
upto(Char, [H | T]) ->
    [H | upto(Char, T)].

after_char(_, []) ->
    [];
after_char(Char, [Char | Rest]) ->
    Rest;
after_char(Char, [_ | Rest]) ->
    after_char(Char, Rest).



