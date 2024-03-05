-module(qlc_test_lookup_rec). -import(qlc_SUITE, [i/1,i/2,format_info/2]). -import(qlc_SUITE, [etsc/2, etsc/3]). -import(qlc_SUITE, [create_ets/2]). -import(qlc_SUITE, [strip_qlc_call/1]). -import(qlc_SUITE, [join_info/1]). -import(qlc_SUITE, [join_info_count/1]). -import(qlc_SUITE, [lookup_keys/1]). -include_lib("stdlib/include/qlc.hrl"). -record(r, {a}).
function() -> etsc(fun(E) ->
                Q = qlc:q([R#r.a || R <- ets:table(E), R#r.a =:= foo]),
                [foo] = qlc:e(Q),
                [_] = lookup_keys(Q)
        end, [{keypos,2}], [#r{a=foo}]), ok. 