-module(qlc_test_otp_11758). -import(qlc_SUITE, [i/1,i/2,format_info/2]). -import(qlc_SUITE, [etsc/2, etsc/3]). -import(qlc_SUITE, [create_ets/2]). -import(qlc_SUITE, [strip_qlc_call/1]). -import(qlc_SUITE, [join_info/1]). -import(qlc_SUITE, [join_info_count/1]). -import(qlc_SUITE, [lookup_keys/1]). -include_lib("stdlib/include/qlc.hrl"). function() -> T = ets:new(r, [{keypos, 2}]),
             L = [{rrr, xxx, aaa}, {rrr, yyy, bbb}],
             true = ets:insert(T, L),
             QH = qlc:q([{rrr, B, C} || {rrr, B, C} <- ets:table(T),
                              (B =:= xxx) or (B =:= yyy) and (C =:= aaa)]),
             [{rrr,xxx,aaa}] = qlc:e(QH),
             ets:delete(T), ok. 