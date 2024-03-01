-module(qlc_test_join_complex). -import(qlc_SUITE, [i/1,i/2,format_info/2]). -import(qlc_SUITE, [etsc/2, etsc/3]). -import(qlc_SUITE, [create_ets/2]). -import(qlc_SUITE, [strip_qlc_call/1]). -import(qlc_SUITE, [join_info/1]). -import(qlc_SUITE, [join_info_count/1]). -import(qlc_SUITE, [lookup_keys/1]). -include_lib("stdlib/include/qlc.hrl"). two() ->
                  Q = qlc:q([{X,Y,Z,W} || 
                      {X} <- [], 
                      {Y} <- [], 
                      {Z} <- [], 
                      {W} <- [], 
                      X =:= Y, 
                      Z =:= W],{join,merge}),
                  qlc:e(Q).