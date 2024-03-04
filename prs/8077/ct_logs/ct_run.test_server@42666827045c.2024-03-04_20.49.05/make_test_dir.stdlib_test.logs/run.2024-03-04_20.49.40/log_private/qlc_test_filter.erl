-module(qlc_test_filter). -import(qlc_SUITE, [i/1,i/2,format_info/2]). -import(qlc_SUITE, [etsc/2, etsc/3]). -import(qlc_SUITE, [create_ets/2]). -import(qlc_SUITE, [strip_qlc_call/1]). -import(qlc_SUITE, [join_info/1]). -import(qlc_SUITE, [join_info_count/1]). -import(qlc_SUITE, [lookup_keys/1]). -include_lib("stdlib/include/qlc.hrl"). function() -> H = qlc:q([{X,Y} ||
                  X = _ <- [1,2,3],
                  _ = Y <- [a,b,c],
                  _ = _ <- [foo],
                  X > 1,
                  Y =/= a]),
          [{2,b},{2,c},{3,b},{3,c}] = qlc:e(H), ok. 