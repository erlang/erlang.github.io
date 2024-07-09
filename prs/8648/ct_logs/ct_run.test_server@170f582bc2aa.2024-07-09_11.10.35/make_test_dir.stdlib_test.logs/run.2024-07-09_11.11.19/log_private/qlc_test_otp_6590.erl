-module(qlc_test_otp_6590). -import(qlc_SUITE, [i/1,i/2,format_info/2]). -import(qlc_SUITE, [etsc/2, etsc/3]). -import(qlc_SUITE, [create_ets/2]). -import(qlc_SUITE, [strip_qlc_call/1]). -import(qlc_SUITE, [join_info/1]). -import(qlc_SUITE, [join_info_count/1]). -import(qlc_SUITE, [lookup_keys/1]). -include_lib("stdlib/include/qlc.hrl"). -record(tab1, {id, tab2_id, value}).
                         -record(tab2, {id, value}).
function() -> fun(Tab1Value) -> 
                    Q = qlc:q([T1#tab1.id || T1 <- [#tab1{id = id1,
                                                          value = v, 
                                                          tab2_id = id}],
                                             T2 <- [#tab2{id = id}],
                                             T1#tab1.value =:= Tab1Value,
                                             T1#tab1.tab2_id =:= T2#tab2.id]),
                    [id1] = qlc:e(Q)
            end(v), ok. 