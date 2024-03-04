-module(qlc_test_keysort). -import(qlc_SUITE, [i/1,i/2,format_info/2]). -import(qlc_SUITE, [etsc/2, etsc/3]). -import(qlc_SUITE, [create_ets/2]). -import(qlc_SUITE, [strip_qlc_call/1]). -import(qlc_SUITE, [join_info/1]). -import(qlc_SUITE, [join_info_count/1]). -import(qlc_SUITE, [lookup_keys/1]). -include_lib("stdlib/include/qlc.hrl"). function() -> L = [{X} || X <- lists:seq(1,100000)],
          H1 = qlc:append([L,[{1,2},{2,3},{3,4}]]),
          H = qlc:keysort([1], qlc:keysort([1], H1, [{compressed,true}])),
          R = qlc:e(H),
          100003 = length(R), ok. 