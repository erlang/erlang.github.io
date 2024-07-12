-module(qlc_test_overridden_bif). -import(qlc_SUITE, [i/1,i/2,format_info/2]). -import(qlc_SUITE, [etsc/2, etsc/3]). -import(qlc_SUITE, [create_ets/2]). -import(qlc_SUITE, [strip_qlc_call/1]). -import(qlc_SUITE, [join_info/1]). -import(qlc_SUITE, [join_info_count/1]). -import(qlc_SUITE, [lookup_keys/1]). -include_lib("stdlib/include/qlc.hrl"). -import(gb_sets, [size/1]).
                 -compile({no_auto_import, [size/1, is_reference/1]}).
                 port(N) -> N rem 2 =:= 0.
                 is_reference(N) -> N rem 10 =:= 0.
function() -> [2] = qlc:e(qlc:q([P || P <- [1,2,3], port(P)])),
             [10] = qlc:e(qlc:q([P || P <- [0,9,10,11,12],
                                      (is_reference(P) andalso P > 5)])),
             Empty = gb_sets:empty(), Single = gb_sets:singleton(42),
             GbSets = [Empty,Single],
             [Single] = qlc:e(qlc:q([S || S <- GbSets, size(S) =/= 0]))
            , ok. 