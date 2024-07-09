-module(qlc_test_process_dies). -import(qlc_SUITE, [i/1,i/2,format_info/2]). -import(qlc_SUITE, [etsc/2, etsc/3]). -import(qlc_SUITE, [create_ets/2]). -import(qlc_SUITE, [strip_qlc_call/1]). -import(qlc_SUITE, [join_info/1]). -import(qlc_SUITE, [join_info_count/1]). -import(qlc_SUITE, [lookup_keys/1]). -include_lib("stdlib/include/qlc.hrl"). function() -> E = ets:new(test, []),
          true = ets:insert(E, [{1,a}]),
          H = qlc:q([X || X <- ets:table(E)]),
          SpawnOpts = [link, monitor], % monitor is ignored
          {qlc_cursor, Term} = C = qlc:cursor(H, {spawn_options, SpawnOpts}),
          F = fun(T) -> not is_pid(T) end,
          [Pid|_] = lists:dropwhile(F, tuple_to_list(Term)),
          Me = self(),
          qlc_SUITE:install_error_logger(),
          Tuple = {this, tuple, is, writton, onto, the, error_logger},
          SP = spawn(fun() ->
                  Pid ! Tuple,
                  Me ! {self(), done}
                end),
          receive {SP, done} -> ok end,
          [{1,a}] = qlc:next_answers(C),
          qlc:delete_cursor(C),
          {error, _Pid, Tuple} = qlc_SUITE:read_error_logger(),
          qlc_SUITE:uninstall_error_logger(),
          false = ets:info(E, safe_fixed),
          true = ets:delete(E), ok, ok. 