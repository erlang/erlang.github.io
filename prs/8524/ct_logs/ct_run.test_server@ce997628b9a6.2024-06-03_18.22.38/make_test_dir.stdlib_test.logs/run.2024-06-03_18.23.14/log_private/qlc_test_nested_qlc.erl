-module(qlc_test_nested_qlc). -import(qlc_SUITE, [i/1,i/2,format_info/2]). -import(qlc_SUITE, [etsc/2, etsc/3]). -import(qlc_SUITE, [create_ets/2]). -import(qlc_SUITE, [strip_qlc_call/1]). -import(qlc_SUITE, [join_info/1]). -import(qlc_SUITE, [join_info_count/1]). -import(qlc_SUITE, [lookup_keys/1]). -include_lib("stdlib/include/qlc.hrl"). nested_qlc() ->
             H0 = qlc:append([a,b], [c,d]),
             qlc:q([{X,Y} || 
                       X <- H0,
                       Y <- qlc:q([{X,Y} || 
                                      X <- H0, % X shadowed
                                      Y <- H0])]),
             ok.
       