-module(qlc_test_cursor). -import(qlc_SUITE, [i/1,i/2,format_info/2]). -import(qlc_SUITE, [etsc/2, etsc/3]). -import(qlc_SUITE, [create_ets/2]). -import(qlc_SUITE, [strip_qlc_call/1]). -import(qlc_SUITE, [join_info/1]). -import(qlc_SUITE, [join_info_count/1]). -import(qlc_SUITE, [lookup_keys/1]). -include_lib("stdlib/include/qlc.hrl"). function() -> Q = qlc:q([X || X <- [1,2,1,2,1]]),
             C1 = qlc:cursor(Q, [{unique_all,false}]),
             [1,2,1,2,1] = qlc:next_answers(C1, all_remaining),
             ok = qlc:delete_cursor(C1),
             C2 = qlc:cursor(Q, [{unique_all,false}]),
             [1,2,1,2,1] = qlc:next_answers(C2, all_remaining),
             ok = qlc:delete_cursor(C2), ok. 