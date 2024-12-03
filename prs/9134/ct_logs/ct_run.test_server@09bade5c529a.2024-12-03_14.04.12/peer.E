-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.1.2/src/peer.erl", 1).

-module(peer).

-author("maximfca@gmail.com").

{warning,{{51,2},epp,{moduledoc,file,"../doc/src/peer.md"}}}

-export([start_link/0,
         start_link/1,
         start/1,
         stop/1,
         random_name/0,
         random_name/1,
         get_state/1,
         call/4,
         call/5,
         cast/4,
         send/3]).

-export_type([server_ref/0]).

-type server_ref() :: pid().

-behaviour(gen_server).

-export([init/1,handle_call/3,handle_cast/2,handle_info/2,terminate/2]).

-export([start/0,
         supervision_child_spec/0,
         start_supervision/0,
         init_supervision/2,
         system_continue/3,
         system_terminate/4,
         system_code_change/4,
         system_get_state/1,
         system_replace_state/2]).

-behaviour(sys).

-type connection() ::
          Port :: 0..65535 | {inet:ip_address(), 0..65535} | standard_io.

-type wait_boot() :: timeout() | {pid(), Tag :: term()} | false.

-type exec() :: file:name() | {file:name(), [string()]}.

-type start_options() ::
          #{name => atom() | string(),
            longnames => boolean(),
            host => string(),
            peer_down => stop | continue | crash,
            connection => connection(),
            exec => exec(),
            detached => boolean(),
            args => [string()],
            post_process_args => fun(([string()]) -> [string()]),
            env => [{string(), string()}],
            wait_boot => wait_boot(),
            shutdown =>
                close | halt |
                {halt, disconnect_timeout()} |
                disconnect_timeout()}.

-type peer_state() :: booting | running | {down, Reason :: term()}.

-export_type([start_options/0,peer_state/0,exec/0,disconnect_timeout/0]).

-type disconnect_timeout() :: 1000..4294967295 | infinity.

-spec random_name() -> string().

random_name() ->
    random_name("peer").

-spec random_name(Prefix :: string() | atom()) -> string().

random_name(Prefix) ->
    OsPid = os:getpid(),
    Uniq = erlang:unique_integer([positive]),
    lists:concat([Prefix, "-", Uniq, "-", OsPid]).

-spec start_link() -> {ok, pid(), node()} | {error, Reason :: term()}.

start_link() ->
    start_link(#{name => random_name()}).

-spec start_link(start_options()) ->
                    {ok, pid()} | {ok, pid(), node()} | {error, Reason}
                    when Reason :: term().

start_link(Options) ->
    start_it(Options, start_link).

-spec start(start_options()) ->
               {ok, pid()} | {ok, pid(), node()} | {error, Reason}
               when Reason :: term().

start(Options) ->
    start_it(Options, start).

-spec stop(Dest :: server_ref()) -> ok.

stop(Dest) ->
    gen_server:stop(Dest).

-spec get_state(Dest :: server_ref()) -> peer_state().

get_state(Dest) ->
    gen_server:call(Dest, get_state).

-spec call(Dest :: server_ref(),
           Module :: module(),
           Function :: atom(),
           Args :: [term()]) ->
              Result :: term().

call(Dest, M, F, A) ->
    call(Dest, M, F, A, 5000).

-spec call(Dest :: server_ref(),
           Module :: module(),
           Function :: atom(),
           Args :: [term()],
           Timeout :: timeout()) ->
              Result :: term().

call(Dest, M, F, A, Timeout) ->
    case gen_server:call(Dest, {call, M, F, A}, Timeout) of
        {ok, Reply} ->
            Reply;
        {Class, {Reason, Stack}} ->
            erlang:raise(Class, Reason, Stack);
        {error, Reason} ->
            error(Reason)
    end.

-spec cast(Dest :: server_ref(),
           Module :: module(),
           Function :: atom(),
           Args :: [term()]) ->
              ok.

cast(Dest, M, F, A) ->
    gen_server:cast(Dest, {cast, M, F, A}).

-spec send(Dest :: server_ref(),
           To :: pid() | atom(),
           Message :: term()) ->
              ok.

send(Dest, To, Message) ->
    gen_server:cast(Dest, {send, To, Message}).

-record(peer_state,{options :: start_options(),
                    node :: atom(),
                    exec :: file:name(),
                    args :: [string()],
                    connection :: undefined | port() | gen_tcp:socket(),
                    listen_socket :: undefined | gen_tcp:socket(),
                    stdio = <<>> :: binary(),
                    peer_state = booting :: peer_state(),
                    notify = false :: false | {pid(), reference()},
                    seq = 0 :: non_neg_integer(),
                    outstanding =
                        #{} ::
                            #{non_neg_integer() => {reference(), pid()}}}).

-type state() :: #peer_state{}.

-spec init([Name :: atom(), ...]) -> {ok, state()}.

init([Notify, Options]) ->
    process_flag(trap_exit, true),
    {ListenSocket, Listen} = maybe_listen(Options),
    {Exec, Args} = command_line(Listen, Options),
    Env = maps:get(env, Options, []),
    PostProcessArgs =
        maps:get(post_process_args, Options,
                 fun(As) ->
                        As
                 end),
    FinalArgs = PostProcessArgs(Args),
    Conn =
        case maps:find(connection, Options) of
            {ok, standard_io} ->
                open_port({spawn_executable, Exec},
                          [{args, FinalArgs},
                           {env, Env},
                           hide, binary, exit_status, stderr_to_stdout]);
            _ ->
                Port =
                    open_port({spawn_executable, Exec},
                              [{args, FinalArgs},
                               {env, Env},
                               hide, binary]),
                catch port_close(Port),
                receive
                    {'EXIT', Port, _} ->
                        undefined
                end
        end,
    SaveOptions =
        case maps:find(shutdown, Options) of
            {ok, halt} ->
                maps:remove(shutdown, Options);
            _ ->
                Options
        end,
    State =
        {peer_state, SaveOptions, undefined, Exec, Args, undefined,
         undefined, <<>>, booting, Notify, 0,
         #{}},
    if
        ListenSocket =:= undefined ->
            {ok,
             begin
                 REC0 = State,
                 case REC0 of
                     {peer_state, _, _, _, _, _, _, _, _, _, _, _} ->
                         setelement(6, REC0, Conn);
                     _ ->
                         error({badrecord, REC0})
                 end
             end};
        true ->
            _ = prim_inet:async_accept(ListenSocket, 60000),
            {ok,
             begin
                 REC1 = State,
                 case REC1 of
                     {peer_state, _, _, _, _, _, _, _, _, _, _, _} ->
                         setelement(7, REC1, ListenSocket);
                     _ ->
                         error({badrecord, REC1})
                 end
             end}
    end.

handle_call({call, _M, _F, _A},
            _From,
            {peer_state, _, _, _, _, undefined, _, _, _, _, _, _} =
                State) ->
    {reply, {error, noconnection}, State};
handle_call({call, M, F, A},
            From,
            {peer_state,
             #{connection := standard_io},
             _, _, _, Port, _, _, _, _, Seq, Out} =
                State) ->
    origin_to_peer(port, Port, {call, Seq, M, F, A}),
    {noreply,
     begin
         REC2 = Out#{Seq => From},
         REC3 = Seq + 1,
         REC4 = State,
         case REC4 of
             {peer_state, _, _, _, _, _, _, _, _, _, _, _} ->
                 setelement(11, setelement(12, REC4, REC2), REC3);
             _ ->
                 error({badrecord, REC4})
         end
     end};
handle_call({call, M, F, A},
            From,
            {peer_state, _, _, _, _, Socket, _, _, _, _, Seq, Out} =
                State) ->
    origin_to_peer(tcp, Socket, {call, Seq, M, F, A}),
    {noreply,
     begin
         REC5 = Out#{Seq => From},
         REC6 = Seq + 1,
         REC7 = State,
         case REC7 of
             {peer_state, _, _, _, _, _, _, _, _, _, _, _} ->
                 setelement(11, setelement(12, REC7, REC5), REC6);
             _ ->
                 error({badrecord, REC7})
         end
     end};
handle_call({starting, Node},
            _From,
            {peer_state, Options, _, _, _, _, _, _, _, _, _, _} = State) ->
    case maps:find(shutdown, Options) of
        {ok, {Timeout, MainCoverNode}}
            when is_integer(Timeout), is_atom(MainCoverNode) ->
            Modules = erpc:call(MainCoverNode, cover, modules, []),
            Sticky =
                [ 
                 begin
                     erpc:call(Node, code, unstick_mod, [M]),
                     M
                 end ||
                     M <- Modules,
                     erpc:call(Node, code, is_sticky, [M])
                ],
            _ = erpc:call(MainCoverNode, cover, start, [Node]),
            _ = [ 
                 erpc:call(Node, code, stick_mod, [M]) ||
                     M <- Sticky
                ],
            ok;
        _ ->
            ok
    end,
    {reply, ok, State};
handle_call(get_node, _From,
            {peer_state, _, Node, _, _, _, _, _, _, _, _, _} = State) ->
    {reply, Node, State};
handle_call(get_state, _From,
            {peer_state, _, _, _, _, _, _, _, PeerState, _, _, _} =
                State) ->
    {reply, PeerState, State};
handle_call(group_leader, _From, State) ->
    {reply, group_leader(), State}.

handle_cast({cast, _M, _F, _A},
            {peer_state, _, _, _, _, undefined, _, _, _, _, _, _} =
                State) ->
    {noreply, State};
handle_cast({cast, M, F, A},
            {peer_state,
             #{connection := standard_io},
             _, _, _, Port, _, _, _, _, _, _} =
                State) ->
    origin_to_peer(port, Port, {cast, M, F, A}),
    {noreply, State};
handle_cast({cast, M, F, A},
            {peer_state, _, _, _, _, Socket, _, _, _, _, _, _} = State) ->
    origin_to_peer(tcp, Socket, {cast, M, F, A}),
    {noreply, State};
handle_cast({send, _Dest, _Message},
            {peer_state, _, _, _, _, undefined, _, _, _, _, _, _} =
                State) ->
    {noreply, State};
handle_cast({send, Dest, Message},
            {peer_state,
             #{connection := standard_io},
             _, _, _, Port, _, _, _, _, _, _} =
                State) ->
    origin_to_peer(port, Port, {message, Dest, Message}),
    {noreply, State};
handle_cast({send, Dest, Message},
            {peer_state, _, _, _, _, Socket, _, _, _, _, _, _} = State) ->
    origin_to_peer(tcp, Socket, {message, Dest, Message}),
    {noreply, State}.

handle_info({tcp, Socket, SocketData},
            {peer_state, _, _, _, _, Socket, _, _, _, _, _, _} = State) ->
    ok = inet:setopts(Socket, [{active, once}]),
    {noreply,
     handle_alternative_data(tcp, binary_to_term(SocketData), State)};
handle_info({Port, {data, PortData}},
            {peer_state, _, _, _, _, Port, _, PrevBin, _, _, _, _} =
                State) ->
    {Str, NewBin} = decode_port_data(PortData, <<>>, PrevBin),
    Str =/= <<>>
    andalso
    io:put_chars(Str),
    {noreply, handle_port_binary(NewBin, State)};
handle_info({inet_async, LSock, _Ref, {ok, CliSocket}},
            {peer_state, _, _, _, _, _, LSock, _, _, _, _, _} = State) ->
    true = inet_db:register_socket(CliSocket, inet_tcp),
    ok = inet:setopts(CliSocket, [{active, once}]),
    catch gen_tcp:close(LSock),
    {noreply,
     begin
         REC8 = State,
         case REC8 of
             {peer_state, _, _, _, _, _, _, _, _, _, _, _} ->
                 setelement(6,
                            setelement(7, REC8, undefined),
                            CliSocket);
             _ ->
                 error({badrecord, REC8})
         end
     end};
handle_info({inet_async, LSock, _Ref, {error, Reason}},
            {peer_state, _, _, _, _, _, LSock, _, _, _, _, _} = State) ->
    catch gen_tcp:close(LSock),
    {stop,
     {inet_async, Reason},
     begin
         REC9 = State,
         case REC9 of
             {peer_state, _, _, _, _, _, _, _, _, _, _, _} ->
                 setelement(6,
                            setelement(7, REC9, undefined),
                            undefined);
             _ ->
                 error({badrecord, REC9})
         end
     end};
handle_info({started, Node}, State) ->
    true = monitor_node(Node, true),
    {noreply, boot_complete(Node, started, State)};
handle_info({nodedown, Node},
            {peer_state, _, _, _, _, undefined, _, _, _, _, _, _} =
                State) ->
    maybe_stop({nodedown, Node}, State);
handle_info({Port, {exit_status, Status}},
            {peer_state, _, _, _, _, Port, _, _, _, _, _, _} = State) ->
    catch port_close(Port),
    maybe_stop({exit_status, Status}, State);
handle_info({'EXIT', Port, Reason},
            {peer_state, _, _, _, _, Port, _, _, _, _, _, _} = State) ->
    catch port_close(Port),
    maybe_stop(Reason, State);
handle_info({tcp_closed, Sock},
            {peer_state, _, _, _, _, Sock, _, _, _, _, _, _} = State) ->
    catch gen_tcp:close(Sock),
    maybe_stop(tcp_closed,
               begin
                   REC10 = State,
                   case REC10 of
                       {peer_state, _, _, _, _, _, _, _, _, _, _, _} ->
                           setelement(6, REC10, undefined);
                       _ ->
                           error({badrecord, REC10})
                   end
               end).

-spec terminate(Reason :: term(), state()) -> ok.

terminate(_Reason,
          {peer_state, Options, Node, _, _, Port, _, _, _, _, _, _}) ->
    case
        {maps:get(shutdown, Options, {halt, 5000}),
         maps:find(connection, Options)}
    of
        {close, {ok, standard_io}} ->
            Port /= undefined
            andalso
            catch port_close(Port);
        {close, {ok, _TCP}} ->
            Port /= undefined
            andalso
            catch gen_tcp:close(Port);
        {close, error} ->
            _ = disconnect_node(Node);
        {{halt, Timeout}, {ok, standard_io}} ->
            Port /= undefined
            andalso
            catch port_close(Port),
            wait_disconnected(Node, {timeout, Timeout});
        {{halt, Timeout}, {ok, _TCP}} ->
            Port /= undefined
            andalso
            catch gen_tcp:close(Port),
            wait_disconnected(Node, {timeout, Timeout});
        {{halt, Timeout}, error} ->
            try
                _ = erpc:call(Node, erlang, halt, [], Timeout),
                ok
            catch
                error:{erpc, noconnection} ->
                    ok;
                _:_ ->
                    force_disconnect_node(Node)
            end;
        {Shutdown, error} ->
            Timeout = shutdown(dist, undefined, Node, Shutdown),
            wait_disconnected(Node, {timeout, Timeout});
        {Shutdown, {ok, standard_io}} ->
            Timeout = shutdown(port, Port, Node, Shutdown),
            Deadline = deadline(Timeout),
            receive
                {'EXIT', Port, _Reason2} ->
                    ok
            after
                Timeout -> ok
            end,
            catch port_close(Port),
            wait_disconnected(Node, Deadline);
        {Shutdown, {ok, _TCP}} ->
            Timeout = shutdown(tcp, Port, Node, Shutdown),
            Deadline = deadline(Timeout),
            receive
                {tcp_closed, Port} ->
                    ok
            after
                Timeout -> ok
            end,
            catch catch gen_tcp:close(Port),
            wait_disconnected(Node, Deadline)
    end,
    ok.

deadline(infinity) ->
    {timeout, infinity};
deadline(Timeout) when is_integer(Timeout) ->
    {deadline, erlang:monotonic_time(millisecond) + Timeout}.

wait_disconnected(Node, WaitUntil) ->
    case lists:member(Node, nodes(connected)) of
        false ->
            ok;
        true ->
            _ = net_kernel:monitor_nodes(true, [{node_type, all}]),
            case lists:member(Node, nodes(connected)) of
                false ->
                    ok;
                true ->
                    Tmo =
                        case WaitUntil of
                            {timeout, T} ->
                                T;
                            {deadline, T} ->
                                TL =
                                    T
                                    -
                                    erlang:monotonic_time(millisecond),
                                if
                                    TL < 0 ->
                                        0;
                                    true ->
                                        TL
                                end
                        end,
                    receive
                        {nodedown, Node, _} ->
                            ok
                    after
                        Tmo -> force_disconnect_node(Node)
                    end
            end
    end.

force_disconnect_node(Node) ->
    _ = disconnect_node(Node),
    logger:warning("peer:stop() timed out waiting for disconnect from n"
                   "ode ~p. The connection was forcefully taken down.",
                   [Node]).

shutdown(_Type, _Port, Node, Timeout)
    when is_integer(Timeout); Timeout =:= infinity ->
    erpc:cast(Node, init, stop, []),
    Timeout;
shutdown(dist, undefined, Node, {Timeout, CoverNode})
    when is_integer(Timeout); Timeout =:= infinity ->
    rpc:call(CoverNode, cover, flush, [Node]),
    erpc:cast(Node, init, stop, []),
    Timeout;
shutdown(Type, Port, Node, {Timeout, CoverNode})
    when is_integer(Timeout); Timeout =:= infinity ->
    rpc:call(CoverNode, cover, flush, [Node]),
    Port /= undefined
    andalso
    origin_to_peer(Type, Port, {cast, init, stop, []}),
    Timeout.

verify_args(Options) ->
    Args = maps:get(args, Options, []),
    is_list(Args)
    orelse
    error({invalid_arg, Args}),
    [ 
     error({invalid_arg, Arg}) ||
         Arg <- Args,
         not io_lib:char_list(Arg)
    ],
    is_map_key(connection, Options)
    orelse
    is_map_key(name, Options)
    andalso
    is_alive()
    orelse
    error(not_alive),
    case maps:find(exec, Options) of
        {ok, {Exec, Strs}} ->
            io_lib:char_list(Exec)
            orelse
            error({exec, Exec}),
            [ 
             error({exec, Str}) ||
                 Str <- Strs,
                 not io_lib:char_list(Str)
            ],
            ok;
        {ok, Exec} when is_list(Exec) ->
            io_lib:char_list(Exec)
            orelse
            error({exec, Exec}),
            ok;
        error ->
            ok;
        {ok, Err} ->
            error({exec, Err})
    end,
    case maps:find(shutdown, Options) of
        {ok, close} ->
            ok;
        {ok, halt} ->
            ok;
        {ok, {halt, Tmo}}
            when
                is_integer(Tmo)
                andalso
                1000 =< Tmo
                andalso
                Tmo =< 4294967295
                orelse
                Tmo == infinity ->
            ok;
        {ok, Tmo}
            when
                is_integer(Tmo)
                andalso
                1000 =< Tmo
                andalso
                Tmo =< 4294967295
                orelse
                Tmo == infinity ->
            ok;
        {ok, {Tmo, Node}}
            when
                (is_integer(Tmo)
                 andalso
                 1000 =< Tmo
                 andalso
                 Tmo =< 4294967295
                 orelse
                 Tmo == infinity)
                andalso
                is_atom(Node) ->
            ok;
        error ->
            ok;
        {ok, Err2} ->
            error({shutdown, Err2})
    end,
    case maps:find(detached, Options) of
        {ok, false} when map_get(connection, Options) =:= standard_io ->
            error({detached, cannot_detach_with_standard_io});
        _ ->
            ok
    end.

make_notify_ref(infinity) ->
    {self(), make_ref()};
make_notify_ref(WaitBoot) when is_integer(WaitBoot) ->
    {self(), make_ref()};
make_notify_ref({ReplyTo, Tag}) when is_pid(ReplyTo) ->
    {ReplyTo, Tag};
make_notify_ref(false) ->
    false.

start_it(Options, StartFun) ->
    verify_args(Options),
    WaitBoot = maps:get(wait_boot, Options, 15000),
    Notify = make_notify_ref(WaitBoot),
    case gen_server:StartFun(peer, [Notify, Options], []) of
        {ok, Pid} when WaitBoot =:= infinity; is_integer(WaitBoot) ->
            {_, Ref} = Notify,
            Mref = monitor(process, Pid),
            receive
                {Ref, {started, NodeName, Pid}} ->
                    demonitor(Mref, [flush]),
                    {ok, Pid, NodeName};
                {Ref, {boot_failed, Reason, Pid}} ->
                    demonitor(Mref, [flush]),
                    exit({boot_failed, Reason});
                {'DOWN', Mref, _, _, Reason} ->
                    exit(Reason)
            after
                WaitBoot ->
                    _ = gen_server:stop(Pid),
                    demonitor(Mref, [flush]),
                    exit(timeout)
            end;
        {ok, Pid} when is_map_key(host, Options) ->
            {ok, Pid, node_name(Options)};
        {ok, Pid} ->
            {ok, Pid};
        Error ->
            Error
    end.

node_name(#{name := Name, host := Host}) ->
    list_to_atom(lists:concat([Name, "@", Host]));
node_name(_Options) ->
    undefined.

maybe_stop(Reason,
           {peer_state, _, _, _, _, _, _, _, booting, _, _, _} = State) ->
    _ = boot_complete(Reason, boot_failed, State),
    maybe_stop(Reason,
               begin
                   REC11 = {down, Reason},
                   REC12 = State,
                   case REC12 of
                       {peer_state, _, _, _, _, _, _, _, _, _, _, _} ->
                           setelement(9, REC12, REC11);
                       _ ->
                           error({badrecord, REC12})
                   end
               end);
maybe_stop(Reason,
           {peer_state,
            #{peer_down := crash},
            _, _, _, _, _, _, _, _, _, _} =
               State) ->
    {stop, Reason,
     begin
         REC13 = {down, Reason},
         REC14 = State,
         case REC14 of
             {peer_state, _, _, _, _, _, _, _, _, _, _, _} ->
                 setelement(6, setelement(9, REC14, REC13), undefined);
             _ ->
                 error({badrecord, REC14})
         end
     end};
maybe_stop(_Reason,
           {peer_state,
            #{peer_down := continue},
            _, _, _, _, _, _,
            {down, _},
            _, _, _} =
               State) ->
    {noreply, State};
maybe_stop(Reason,
           {peer_state,
            #{peer_down := continue},
            _, _, _, _, _, _, _, _, _, _} =
               State) ->
    {noreply,
     begin
         REC15 = {down, Reason},
         REC16 = State,
         case REC16 of
             {peer_state, _, _, _, _, _, _, _, _, _, _, _} ->
                 setelement(9, REC16, REC15);
             _ ->
                 error({badrecord, REC16})
         end
     end};
maybe_stop(Reason, State) ->
    {stop, normal,
     begin
         REC17 = {down, Reason},
         REC18 = State,
         case REC18 of
             {peer_state, _, _, _, _, _, _, _, _, _, _, _} ->
                 setelement(9, REC18, REC17);
             _ ->
                 error({badrecord, REC18})
         end
     end}.

handle_alternative_data(Kind,
                        {io_request, From, FromRef, IoReq},
                        {peer_state, _, _, _, _, Conn, _, _, _, _, _, _} =
                            State) ->
    Reply = {io_reply, From, FromRef, forward_request(IoReq)},
    origin_to_peer(Kind, Conn, Reply),
    State;
handle_alternative_data(_Kind, {message, To, Content}, State) ->
    To ! Content,
    State;
handle_alternative_data(_Kind,
                        {reply, Seq, Class, Result},
                        {peer_state, _, _, _, _, _, _, _, _, _, _, Out} =
                            State) ->
    {From, NewOut} = maps:take(Seq, Out),
    gen:reply(From, {Class, Result}),
    begin
        REC19 = State,
        case REC19 of
            {peer_state, _, _, _, _, _, _, _, _, _, _, _} ->
                setelement(12, REC19, NewOut);
            _ ->
                error({badrecord, REC19})
        end
    end;
handle_alternative_data(_Kind, {started, NodeName}, State) ->
    boot_complete(NodeName, started, State).

forward_request(Req) ->
    GL = group_leader(),
    MRef = monitor(process, GL),
    GL ! {io_request, self(), MRef, Req},
    receive
        {io_reply, MRef, Reply} ->
            demonitor(MRef, [flush]),
            Reply;
        {'DOWN', MRef, _, _, _} ->
            {error, terminated}
    end.

origin_to_peer(tcp, Sock, Term) ->
    ok = gen_tcp:send(Sock, term_to_binary(Term));
origin_to_peer(port, Port, Term) ->
    true = port_command(Port, encode_port_data(term_to_binary(Term))).

peer_to_origin(tcp, Sock, Term) ->
    ok = gen_tcp:send(Sock, term_to_binary(Term));
peer_to_origin(port, Port, Term) ->
    Bytes = term_to_binary(Term),
    true = port_command(Port, encode_port_data(Bytes)).

encode_port_data(Bytes) ->
    Size = byte_size(Bytes),
    Crc = erlang:crc32(Bytes),
    Total = <<Size:32,Bytes/binary,Crc:32>>,
    << 
      <<3:2,Upper:4,3:2,3:2,Lower:4,3:2>> ||
          <<Upper:4,Lower:4>> <= Total
    >>.

decode_port_data(<<>>, Str, Bin) ->
    {Str, Bin};
decode_port_data(<<3:2,Quad:4,3:2,Rest/binary>>, Str, Bin) ->
    decode_port_data(Rest, Str, <<Bin/bitstring,Quad:4>>);
decode_port_data(<<Char:8,Rest/binary>>, Str, Bin) ->
    decode_port_data(Rest, <<Str/binary,Char>>, Bin).

handle_port_binary(<<Size:32,Payload:Size/binary,Crc:32,Rest/binary>>,
                   State) ->
    Crc = erlang:crc32(Payload),
    Term = binary_to_term(Payload),
    NewState = handle_alternative_data(port, Term, State),
    handle_port_binary(Rest, NewState);
handle_port_binary(NewBin, State) ->
    begin
        REC20 = State,
        case REC20 of
            {peer_state, _, _, _, _, _, _, _, _, _, _, _} ->
                setelement(8, REC20, NewBin);
            _ ->
                error({badrecord, REC20})
        end
    end.

boot_complete(Node, _Result,
              {peer_state, _, _, _, _, _, _, _, _, false, _, _} = State) ->
    begin
        REC21 = State,
        case REC21 of
            {peer_state, _, _, _, _, _, _, _, _, _, _, _} ->
                setelement(3, setelement(9, REC21, running), Node);
            _ ->
                error({badrecord, REC21})
        end
    end;
boot_complete(Node, Result,
              {peer_state, _, _, _, _, _, _, _, _, {ReplyTo, Tag}, _, _} =
                  State) ->
    ReplyTo ! {Tag, {Result, Node, self()}},
    begin
        REC22 = State,
        case REC22 of
            {peer_state, _, _, _, _, _, _, _, _, _, _, _} ->
                setelement(3, setelement(9, REC22, running), Node);
            _ ->
                error({badrecord, REC22})
        end
    end.

maybe_listen(#{connection := Port}) when is_integer(Port) ->
    {ok, LSock} =
        gen_tcp:listen(Port, [binary, {reuseaddr, true}, {packet, 4}]),
    {ok, WaitPort} = inet:port(LSock),
    {ok, Ifs} = inet:getifaddrs(),
    LocalUp =
        lists:append([ 
                      proplists:get_all_values(addr, Opts) ||
                          {_, Opts} <- Ifs,
                          lists:member(up,
                                       proplists:get_value(flags, Opts,
                                                           []))
                     ]),
    Local =
        prefer_localhost([ 
                          Valid ||
                              Valid <- LocalUp,
                              is_list(inet:ntoa(Valid))
                         ],
                         [], []),
    {LSock, {Local, WaitPort}};
maybe_listen(#{connection := {Ip, Port}}) when is_integer(Port) ->
    {ok, LSock} =
        gen_tcp:listen(Port,
                       [binary,
                        {reuseaddr, true},
                        {packet, 4},
                        {ip, Ip}]),
    WaitPort =
        if
            Port =:= 0 ->
                {ok, Dyn} = inet:port(LSock),
                Dyn;
            true ->
                Port
        end,
    {LSock, {[Ip], WaitPort}};
maybe_listen(_Options) ->
    {undefined, undefined}.

prefer_localhost([], Preferred, Other) ->
    Preferred ++ Other;
prefer_localhost([{127, _, _, _} = Local | Tail], Preferred, Other) ->
    prefer_localhost(Tail, [Local | Preferred], Other);
prefer_localhost([{0, 0, 0, 0, 0, 0, 0, 1} = Local | Tail],
                 Preferred, Other) ->
    prefer_localhost(Tail, [Local | Preferred], Other);
prefer_localhost([Local | Tail], Preferred, Other) ->
    prefer_localhost(Tail, Preferred, [Local | Other]).

name_arg(error, error, _) ->
    [];
name_arg(error, {ok, Host}, LongOrShort) ->
    [Name, _] = string:lexemes(atom_to_list(node()), "@"),
    name_arg(Name ++ "@" ++ Host, error, LongOrShort);
name_arg({ok, Name}, Host, LongOrShort) ->
    name_arg(Name, Host, LongOrShort);
name_arg(Name, Host, LongOrShort) when is_atom(Name) ->
    name_arg(atom_to_list(Name), Host, LongOrShort);
name_arg(Name, Host, {ok, ignored}) ->
    name_arg(Name, Host, {ok, false});
name_arg(Name, Host, error) ->
    name_arg(Name, Host, {ok, net_kernel:longnames()});
name_arg(Name, {ok, Host}, LongOrShort) ->
    name_arg(Name ++ "@" ++ Host, error, LongOrShort);
name_arg(Name, error, {ok, true}) ->
    ["-name", Name];
name_arg(Name, error, {ok, false}) ->
    ["-sname", Name].

command_line(Listen, Options) ->
    NameArg =
        name_arg(maps:find(name, Options),
                 maps:find(host, Options),
                 maps:find(longnames, Options)),
    CmdOpts = maps:get(args, Options, []),
    DetachArgs =
        case maps:get(detached, Options, true) of
            true ->
                ["-detached", "-peer_detached"];
            false ->
                []
        end,
    StartCmd =
        case Listen of
            undefined when map_get(connection, Options) =:= standard_io ->
                ["-user", atom_to_list(peer)];
            undefined ->
                Self = base64:encode_to_string(term_to_binary(self())),
                DetachArgs
                ++
                ["-user", atom_to_list(peer), "-origin", Self];
            {Ips, Port} ->
                IpStr =
                    lists:concat(lists:join(",",
                                            [ 
                                             inet:ntoa(Ip) ||
                                                 Ip <- Ips
                                            ])),
                DetachArgs
                ++
                ["-user",
                 atom_to_list(peer),
                 "-origin",
                 IpStr,
                 integer_to_list(Port)]
        end,
    {Exec, PreArgs} = exec(Options),
    {Exec, PreArgs ++ NameArg ++ CmdOpts ++ StartCmd}.

exec(#{exec := Prog}) when is_list(Prog) ->
    {Prog, []};
exec(#{exec := {Prog, Args}}) when is_list(Prog), is_list(Args) ->
    {Prog, Args};
exec(Options) when not is_map_key(exec, Options) ->
    case init:get_argument(progname) of
        {ok, [[Prog]]} ->
            case os:find_executable(Prog) of
                Exec when is_list(Exec) ->
                    {Exec, []};
                false ->
                    maybe_otp_test_suite(Prog)
            end;
        _ ->
            default_erts()
    end.

maybe_otp_test_suite(Prog) ->
    case string:split(Prog, "cerl ") of
        [CerlPath, Args] ->
            {filename:join(CerlPath, "cerl"), parse_args(Args)};
        _ ->
            default_erts()
    end.

-spec parse_args(string()) -> [string()].

parse_args([]) ->
    [];
parse_args([Deep | _] = AlreadyParsed) when is_list(Deep) ->
    AlreadyParsed;
parse_args(CmdLine) ->
    Re =
        <<"((?:\"[^\"\\\\]*(?:\\\\[\\S\\s][^\"\\\\]*)*\"|'[^'\\\\]*(?:"
          "\\\\[\\S\\s][^'\\\\]*)*'|\\/[^\\/\\\\]*(?:\\\\[\\S\\s][^\\/"
          "\\\\]*)*\\/[gimy]*(?=\\s|$)|(?:\\\\\\s|\\S))+)(?=\\s|$)">>,
    {match, Args} =
        re:run(CmdLine, Re, [{capture, all_but_first, list}, global]),
    [ 
     unquote(Arg) ||
         [Arg] <- Args
    ].

unquote([Q | Arg]) when Q =:= $"; Q =:= $' ->
    case lists:last(Arg) of
        Q ->
            lists:droplast(Arg);
        _ ->
            [Q | Arg]
    end;
unquote(Arg) ->
    Arg.

default_erts() ->
    Root = code:root_dir(),
    Erts =
        filename:join(Root,
                      lists:concat(["erts-",
                                    erlang:system_info(version)])),
    BinDir = filename:join(Erts, "bin"),
    {filename:join(BinDir, "erlexec"), []}.

notify_when_started(Kind, Port) ->
    init:notify_when_started(self()) =:= started
    andalso
    notify_started(Kind, Port),
    ok.

notify_started(dist, Process) ->
    Process ! {started, node()},
    ok;
notify_started(Kind, Port) ->
    peer_to_origin(Kind, Port, {started, node()}).

supervision_child_spec() ->
    case init:get_argument(user) of
        {ok, [["peer"]]} ->
            {ok,
             #{id => peer_supervision,
               start => {peer, start_supervision, []},
               restart => permanent,
               shutdown => 1000,
               type => worker,
               modules => [peer]}};
        _ ->
            none
    end.

start_supervision() ->
    proc_lib:start_link(peer, init_supervision, [self(), true]).

start_orphan_supervision() ->
    proc_lib:start(peer, init_supervision, [self(), false]).

-record(peer_sup_state,{parent, channel, in_sup_tree}).

-spec init_supervision(term(), term()) -> no_return().

init_supervision(Parent, InSupTree) ->
    try
        process_flag(priority, high),
        process_flag(trap_exit, true),
        register(peer_supervision, self()),
        proc_lib:init_ack(Parent, {ok, self()}),
        Channel =
            receive
                {channel_connect, Ref, From, ConnectChannel} ->
                    true = is_pid(ConnectChannel),
                    From ! Ref,
                    try
                        link(ConnectChannel)
                    catch
                        error:noproc ->
                            exit({peer_channel_terminated, noproc})
                    end,
                    ConnectChannel
            after
                30000 -> exit(peer_channel_connect_timeout)
            end,
        loop_supervision({peer_sup_state, Parent, Channel, InSupTree})
    catch
        _:_ when not InSupTree ->
            halt(1)
    end.

peer_sup_connect_channel(PeerSupervision, PeerChannelHandler) ->
    Ref = make_ref(),
    PeerSupervision ! {channel_connect, Ref, self(), PeerChannelHandler},
    receive
        Ref ->
            ok
    after
        30000 -> exit(peer_supervision_connect_timeout)
    end.

loop_supervision({peer_sup_state, Parent, Channel, _} = State) ->
    receive
        {'EXIT', Channel, Reason} ->
            exit({peer_channel_terminated, Reason});
        {system, From, Request} ->
            sys:handle_system_msg(Request, From, Parent, peer, [],
                                  State);
        _ ->
            loop_supervision(State)
    end.

system_continue(_Parent, _, {peer_sup_state, _, _, _} = State) ->
    loop_supervision(State).

system_terminate(Reason, _Parent, _Debug, _State) ->
    exit(Reason).

system_code_change(State, _Module, _OldVsn, _Extra) ->
    {ok, State}.

system_get_state(State) ->
    {ok, State}.

system_replace_state(StateFun, State) ->
    NState = StateFun(State),
    {ok, NState, NState}.

-spec start() -> pid().

start() ->
    try
        PeerChannelHandler = start_peer_channel_handler(),
        PeerSup =
            case whereis(peer_supervision) of
                PeerSup0 when is_pid(PeerSup0) ->
                    PeerSup0;
                undefined ->
                    {ok, PeerSup0} = start_orphan_supervision(),
                    PeerSup0
            end,
        peer_sup_connect_channel(PeerSup, PeerChannelHandler),
        PeerChannelHandler
    catch
        _:_ ->
            halt(1)
    end.

start_peer_channel_handler() ->
    case init:get_argument(origin) of
        {ok, [[IpStr, PortString]]} ->
            Port = list_to_integer(PortString),
            Ips =
                [ 
                 begin
                     {ok, Addr} = inet:parse_address(Ip),
                     Addr
                 end ||
                     Ip <- string:lexemes(IpStr, ",")
                ],
            TCPConnection =
                spawn(fun() ->
                             tcp_init(Ips, Port)
                      end),
            _ = case init:get_argument(peer_detached) of
                    {ok, _} ->
                        _ = register(user, TCPConnection);
                    error ->
                        _ = user_sup:init([ 
                                           Flag ||
                                               Flag <-
                                                   init:get_arguments(),
                                               Flag =/= {user, ["peer"]}
                                          ])
                end,
            TCPConnection;
        {ok, [[Base64EncProc]]} ->
            OriginProcess = binary_to_term(base64:decode(Base64EncProc)),
            OriginLink =
                spawn(fun() ->
                             MRef = monitor(process, OriginProcess),
                             notify_when_started(dist, OriginProcess),
                             origin_link(MRef, OriginProcess)
                      end),
            ok = gen_server:call(OriginProcess, {starting, node()}),
            _ = case init:get_argument(peer_detached) of
                    {ok, _} ->
                        GroupLeader =
                            gen_server:call(OriginProcess, group_leader),
                        RelayPid =
                            spawn(fun() ->
                                         link(OriginLink),
                                         relay(GroupLeader)
                                  end),
                        _ = register(user, RelayPid);
                    error ->
                        _ = user_sup:init([ 
                                           Flag ||
                                               Flag <-
                                                   init:get_arguments(),
                                               Flag =/= {user, ["peer"]}
                                          ])
                end,
            OriginLink;
        error ->
            spawn(fun io_server/0)
    end.

relay(GroupLeader) ->
    receive
        IO ->
            GroupLeader ! IO,
            relay(GroupLeader)
    end.

origin_link(MRef, Origin) ->
    receive
        {'DOWN', MRef, process, Origin, _Reason} ->
            halt();
        {init, started} ->
            notify_started(dist, Origin),
            origin_link(MRef, Origin)
    end.

-spec io_server() -> no_return().

io_server() ->
    try
        process_flag(trap_exit, true),
        Port = open_port({fd, 0, 1}, [eof, binary]),
        register(user, self()),
        group_leader(self(), self()),
        notify_when_started(port, Port),
        io_server_loop(port, Port, #{}, #{}, <<>>)
    catch
        _:_ ->
            halt(1)
    end.

-spec tcp_init([term()], term()) -> no_return().

tcp_init(IpList, Port) ->
    try
        Sock = loop_connect(IpList, Port),
        group_leader(self(), self()),
        notify_when_started(tcp, Sock),
        io_server_loop(tcp, Sock, #{}, #{}, undefined)
    catch
        _:_ ->
            halt(1)
    end.

loop_connect([], _Port) ->
    error(noconnection);
loop_connect([Ip | More], Port) ->
    case gen_tcp:connect(Ip, Port, [binary, {packet, 4}], 10000) of
        {ok, Sock} ->
            Sock;
        _Error ->
            loop_connect(More, Port)
    end.

io_server_loop(Kind, Port, Refs, Out, PortBuf) ->
    receive
        {io_request, From, ReplyAs, Request} when is_pid(From) ->
            peer_to_origin(Kind, Port,
                           {io_request, From, ReplyAs, Request}),
            io_server_loop(Kind, Port, Refs, Out, PortBuf);
        {Port, {data, Bytes}} when Kind =:= port ->
            {_Str, NewBin} = decode_port_data(Bytes, <<>>, PortBuf),
            {NewRefs, NewOut, NewBuf} =
                handle_port_alternative(NewBin, Refs, Out),
            io_server_loop(Kind, Port, NewRefs, NewOut, NewBuf);
        {Port, eof} when Kind =:= port ->
            halt(1);
        {'EXIT', Port, badsig} when Kind =:= port ->
            io_server_loop(Kind, Port, Refs, Out, PortBuf);
        {'EXIT', Port, _Reason} when Kind =:= port ->
            halt(1);
        {tcp, Port, Data} when Kind =:= tcp ->
            ok = inet:setopts(Port, [{active, once}]),
            {NewRefs, NewOut} =
                handle_peer_alternative(binary_to_term(Data), Refs, Out),
            io_server_loop(Kind, Port, NewRefs, NewOut, PortBuf);
        {tcp_closed, Port} when Kind =:= tcp ->
            halt(1);
        {reply, Seq, Class, Reply}
            when is_integer(Seq), is_map_key(Seq, Out) ->
            {CallerRef, Out2} = maps:take(Seq, Out),
            Refs2 = maps:remove(CallerRef, Refs),
            demonitor(CallerRef, [flush]),
            peer_to_origin(Kind, Port, {reply, Seq, Class, Reply}),
            io_server_loop(Kind, Port, Refs2, Out2, PortBuf);
        {message, To, Content} ->
            peer_to_origin(Kind, Port, {message, To, Content}),
            io_server_loop(Kind, Port, Refs, Out, PortBuf);
        {'DOWN', CallerRef, _, _, Reason} ->
            {Seq, Refs3} = maps:take(CallerRef, Refs),
            {CallerRef, Out3} = maps:take(Seq, Out),
            peer_to_origin(Kind, Port, {reply, Seq, crash, Reason}),
            io_server_loop(Kind, Port, Refs3, Out3, PortBuf);
        {init, started} ->
            notify_started(Kind, Port),
            io_server_loop(Kind, Port, Refs, Out, PortBuf);
        _Other ->
            io_server_loop(Kind, Port, Refs, Out, PortBuf)
    end.

handle_peer_alternative({io_reply, From, FromRef, Reply}, Refs, Out) ->
    From ! {io_reply, FromRef, Reply},
    {Refs, Out};
handle_peer_alternative({call, Seq, M, F, A}, Refs, Out) ->
    CallerRef = do_call(Seq, M, F, A),
    {Refs#{CallerRef => Seq}, Out#{Seq => CallerRef}};
handle_peer_alternative({cast, M, F, A}, Refs, Out) ->
    spawn(fun() ->
                 apply(M, F, A)
          end),
    {Refs, Out};
handle_peer_alternative({message, Dest, Message}, Refs, Out) ->
    Dest ! Message,
    {Refs, Out}.

handle_port_alternative(<<Size:32,Payload:Size/binary,Crc:32,Rest/binary>>,
                        Refs, Out) ->
    Crc = erlang:crc32(Payload),
    {NewRefs, NewOut} =
        handle_peer_alternative(binary_to_term(Payload), Refs, Out),
    handle_port_alternative(Rest, NewRefs, NewOut);
handle_port_alternative(Rest, Refs, Out) ->
    {Refs, Out, Rest}.

do_call(Seq, M, F, A) ->
    Proxy = self(),
    {_, CallerRef} =
        spawn_monitor(fun() ->
                             try
                                 Proxy
                                 !
                                 {reply, Seq, ok, apply(M, F, A)}
                             catch
                                 Class:Reason:Stack ->
                                     Proxy
                                     !
                                     {reply, Seq, Class,
                                      {Reason, Stack}}
                             end
                      end),
    CallerRef.



