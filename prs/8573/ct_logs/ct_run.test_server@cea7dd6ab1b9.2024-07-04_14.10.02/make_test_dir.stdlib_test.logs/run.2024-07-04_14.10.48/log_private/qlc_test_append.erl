-module(qlc_test_append). -import(qlc_SUITE, [i/1,i/2,format_info/2]). -import(qlc_SUITE, [etsc/2, etsc/3]). -import(qlc_SUITE, [create_ets/2]). -import(qlc_SUITE, [strip_qlc_call/1]). -import(qlc_SUITE, [join_info/1]). -import(qlc_SUITE, [join_info_count/1]). -import(qlc_SUITE, [lookup_keys/1]). -include_lib("stdlib/include/qlc.hrl"). function() -> Q1 = qlc:q([X || X <- [a,b]]),
             Q2 = qlc:q([X || X <- [1,2]]),
             Q3 = qlc:append([Q1, Q2, qlc:sort([2,1])]),
             Q = qlc:q([X || X <- Q3]),
             {append, [{list, [a,b]}, 
                       {list, [1,2]}, 
                       {sort,{list, [2,1]},[]}]} = i(Q),
             [a,b,1,2,1,2] = qlc:e(Q), ok. 