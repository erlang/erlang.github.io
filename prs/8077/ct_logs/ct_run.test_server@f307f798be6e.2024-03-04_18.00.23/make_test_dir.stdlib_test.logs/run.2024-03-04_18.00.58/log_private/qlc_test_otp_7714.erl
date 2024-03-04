-module(qlc_test_otp_7714). -import(qlc_SUITE, [i/1,i/2,format_info/2]). -import(qlc_SUITE, [etsc/2, etsc/3]). -import(qlc_SUITE, [create_ets/2]). -import(qlc_SUITE, [strip_qlc_call/1]). -import(qlc_SUITE, [join_info/1]). -import(qlc_SUITE, [join_info_count/1]). -import(qlc_SUITE, [lookup_keys/1]). -include_lib("stdlib/include/qlc.hrl"). function() -> E1 = ets:new(set,[]),
             true = ets:insert(E1, {a,1}),
             E2 = ets:new(set,[]),
             _ = [true = ets:insert(E2, {I, 1}) ||
                     I <- lists:seq(1, 3)],
             Q = qlc:q([{A,B} || 
                           {A,I1} <- ets:table(E1),
                           {B,I2} <- ets:table(E2),
                           I1 =:= I2],{join,merge}),
             [{a,1},{a,2},{a,3}] = lists:sort(qlc:e(Q)),
             ets:delete(E1),
             ets:delete(E2), ok. 