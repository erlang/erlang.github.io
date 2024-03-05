-module(qlc_test_pattern). -import(qlc_SUITE, [i/1,i/2,format_info/2]). -import(qlc_SUITE, [etsc/2, etsc/3]). -import(qlc_SUITE, [create_ets/2]). -import(qlc_SUITE, [strip_qlc_call/1]). -import(qlc_SUITE, [join_info/1]). -import(qlc_SUITE, [join_info_count/1]). -import(qlc_SUITE, [lookup_keys/1]). -include_lib("stdlib/include/qlc.hrl"). -record(a, {k,v}).
                         -record(k, {t,v}).
function() -> %% No matchspec since there is a binary in the pattern.
         etsc(fun(E) ->
             Q = qlc:q([A || {<<A:3/unit:8>>} <- ets:table(E)]),
             [_] = qlc:eval(Q),
             {qlc,_,[{generate,_,{table,_}}], []} = i(Q)
         end, [{<<"hej">>}]), ok. 