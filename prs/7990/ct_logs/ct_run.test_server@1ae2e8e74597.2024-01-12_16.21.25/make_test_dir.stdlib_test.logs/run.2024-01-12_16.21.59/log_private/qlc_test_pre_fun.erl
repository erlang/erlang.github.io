-module(qlc_test_pre_fun). -import(qlc_SUITE, [i/1,i/2,format_info/2]). -import(qlc_SUITE, [etsc/2, etsc/3]). -import(qlc_SUITE, [create_ets/2]). -import(qlc_SUITE, [strip_qlc_call/1]). -import(qlc_SUITE, [join_info/1]). -import(qlc_SUITE, [join_info_count/1]). -import(qlc_SUITE, [lookup_keys/1]). -include_lib("stdlib/include/qlc.hrl"). function() -> %% Very simple test of stop_fun.
          Ets = ets:new(apa, [public]),
          L = [{1,a},{2,b},{3,c}],
          H = qlc:q([X || {X,_} <- qlc_SUITE:stop_list(L, Ets)]),
          C = qlc:cursor(H),
          [{stop_fun,StopFun}] = ets:lookup(Ets, stop_fun),
          StopFun(),
          {'EXIT', {{qlc_cursor_pid_no_longer_exists, _}, _}} =
                  (catch qlc:next_answers(C, all_remaining)),
          ets:delete(Ets), ok. 