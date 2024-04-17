-module(qlc_test_otp_7552). -import(qlc_SUITE, [i/1,i/2,format_info/2]). -import(qlc_SUITE, [etsc/2, etsc/3]). -import(qlc_SUITE, [create_ets/2]). -import(qlc_SUITE, [strip_qlc_call/1]). -import(qlc_SUITE, [join_info/1]). -import(qlc_SUITE, [join_info_count/1]). -import(qlc_SUITE, [lookup_keys/1]). -include_lib("stdlib/include/qlc.hrl"). function() -> Few = lists:seq(1, 2),
             Many = lists:seq(1, 10),
             S = [d,e],
             L1 = [{Y,a} || Y <- Few] ++ [{'1b',b},{2,b}] ++ 
                    [{Y,X} || X <- S, Y <- Few],
             L2 = [{a,Y} || Y <- Many] ++ 
                    [{b,'1b'}] ++ [{c,1}] ++ 
                    [{X,Y} || X <- S, Y <- Many],
                   F = fun(J) ->
                               qlc:q([{XX,YY} ||
                                         {XX,X} <- L1,
                                         {Y,YY} <- L2,
                                         X == Y],
                                     {join,J})
                       end,
                   Qm = F(merge),
                   Qn = F(nested_loop),
                   true = lists:sort(qlc:e(Qm, {max_list_size,20})) =:= 
                          lists:sort(qlc:e(Qn)), ok. 