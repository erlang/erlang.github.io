-module(qlc_test_join_merge). -import(qlc_SUITE, [i/1,i/2,format_info/2]). -import(qlc_SUITE, [etsc/2, etsc/3]). -import(qlc_SUITE, [create_ets/2]). -import(qlc_SUITE, [strip_qlc_call/1]). -import(qlc_SUITE, [join_info/1]). -import(qlc_SUITE, [join_info_count/1]). -import(qlc_SUITE, [lookup_keys/1]). -include_lib("stdlib/include/qlc.hrl"). function() -> %% Bigger than 64*1024. No temporary files.
          T1 = {1, lists:seq(1, 20000)},
          L1 = [{a,T1},{b,T1}],
          L2 = [{T1,a},{T1,b}],
          F = fun(J) ->
                      qlc:q([{XX,YY} ||
                                {XX,X} <- L1,
                                {Y,YY} <- L2,
                                X == Y],
                            {join,J})
              end,
          Qm = F(merge),
          Qn = F(nested_loop),
          R = [{a,a},{a,b},{b,a},{b,b}],
          R = qlc:e(Qm, {max_list_size,1 bsl 31}),
          R = qlc:e(Qn), ok. 