-module(qlc_test_otp_7114). -import(qlc_SUITE, [i/1,i/2,format_info/2]). -import(qlc_SUITE, [etsc/2, etsc/3]). -import(qlc_SUITE, [create_ets/2]). -import(qlc_SUITE, [strip_qlc_call/1]). -import(qlc_SUITE, [join_info/1]). -import(qlc_SUITE, [join_info_count/1]). -import(qlc_SUITE, [lookup_keys/1]). -include_lib("stdlib/include/qlc.hrl"). function() -> T = ets:new(t, [bag]),
             [ets:insert(T, {t, I, I div 2}) || I <- lists:seq(1,10)],
             Q1 = qlc:q([element(3, E) || E <- ets:table(T)]),
             [0,1,1,2,2,3,3,4,4,5] = lists:sort(qlc:e(Q1)),
             [0,1,2,3,4,5] = qlc:e(Q1, unique_all),
             [0,1,2,3,4,5] = qlc:e(qlc:sort(Q1), unique_all),
             [0,1,2,3,4,5] = qlc:e(qlc:sort(qlc:e(Q1)), unique_all),
             ets:delete(T),
             ok, ok. 