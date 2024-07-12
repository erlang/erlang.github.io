-module(qlc_test_lookup2). -import(qlc_SUITE, [i/1,i/2,format_info/2]). -import(qlc_SUITE, [etsc/2, etsc/3]). -import(qlc_SUITE, [create_ets/2]). -import(qlc_SUITE, [strip_qlc_call/1]). -import(qlc_SUITE, [join_info/1]). -import(qlc_SUITE, [join_info_count/1]). -import(qlc_SUITE, [lookup_keys/1]). -include_lib("stdlib/include/qlc.hrl"). function() -> %% As last one. {max_lookup,0} has the same effect.
          etsc(fun(E) ->
                       Q  = qlc:q([X || X <- ets:table(E), 
                                        element(1, X) =:= 1],
                                  {max_lookup,0}),
                       {table,{ets,table,_}} = i(Q),
                       [{1,a}] = qlc:e(Q),
                       false = lookup_keys(Q)
               end, [{1,a},{2,b}]), ok. 