-module(qlc_test_join_sort). -import(qlc_SUITE, [i/1,i/2,format_info/2]). -import(qlc_SUITE, [etsc/2, etsc/3]). -import(qlc_SUITE, [create_ets/2]). -import(qlc_SUITE, [strip_qlc_call/1]). -import(qlc_SUITE, [join_info/1]). -import(qlc_SUITE, [join_info_count/1]). -import(qlc_SUITE, [lookup_keys/1]). -include_lib("stdlib/include/qlc.hrl"). function() -> %% Y is constant as well as X. No keysort, which means that
          %% Y must be filtered before merge join.
          etsc(fun(E) ->
                       Q = qlc:q([X || {1,2}=X <- ets:table(E), 
                                       Y <- [{a,b},{c,d},{1,2},{3,4}], 
                                       X =:= Y, 
                                       element(1, X) =:= element(1, Y)]),
                       {1,0,0,0} = join_info_count(Q),
                       [{1,2}] = qlc:e(Q)
               end, [{1,2},{3,4}]), ok. 