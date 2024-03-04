-module(qlc_test_fun_clauses). -import(qlc_SUITE, [i/1,i/2,format_info/2]). -import(qlc_SUITE, [etsc/2, etsc/3]). -import(qlc_SUITE, [create_ets/2]). -import(qlc_SUITE, [strip_qlc_call/1]). -import(qlc_SUITE, [join_info/1]). -import(qlc_SUITE, [join_info_count/1]). -import(qlc_SUITE, [lookup_keys/1]). -include_lib("stdlib/include/qlc.hrl"). fun_clauses() ->
            {X,X1,X2} = {1,2,3},
            F = fun({X}) -> qlc:q([X || X <- X]); % X shadowed (fun, generate)
                   ([X]) -> qlc:q([X || X <- X])  % X shadowed (fun, generate)
                end,
            {F,X,X1,X2}.
        