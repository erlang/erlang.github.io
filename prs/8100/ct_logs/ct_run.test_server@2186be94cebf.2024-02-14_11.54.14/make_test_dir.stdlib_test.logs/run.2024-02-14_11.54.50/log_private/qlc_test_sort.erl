-module(qlc_test_sort). -import(qlc_SUITE, [i/1,i/2,format_info/2]). -import(qlc_SUITE, [etsc/2, etsc/3]). -import(qlc_SUITE, [create_ets/2]). -import(qlc_SUITE, [strip_qlc_call/1]). -import(qlc_SUITE, [join_info/1]). -import(qlc_SUITE, [join_info_count/1]). -import(qlc_SUITE, [lookup_keys/1]). -include_lib("stdlib/include/qlc.hrl"). function() -> E = ets:new(foo, []),
          [true || I <- lists:seq(1, 50000), not ets:insert(E, {I, I})],
          H = qlc:q([{X,Y} || X <- [a,b], Y <- qlc:sort(ets:table(E))]),
          100000 = length(qlc:e(H)),
          ets:delete(E), ok. 