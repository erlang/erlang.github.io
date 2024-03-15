-module(qlc_test_generator_vars). -import(qlc_SUITE, [i/1,i/2,format_info/2]). -import(qlc_SUITE, [etsc/2, etsc/3]). -import(qlc_SUITE, [create_ets/2]). -import(qlc_SUITE, [strip_qlc_call/1]). -import(qlc_SUITE, [join_info/1]). -import(qlc_SUITE, [join_info_count/1]). -import(qlc_SUITE, [lookup_keys/1]). -include_lib("stdlib/include/qlc.hrl"). generator_vars() ->
               qlc:q([X ||
                      Z <- [1,2],
                      X <- begin
                               case 1 of
                                   1 -> Z = a; % used_generator_variable
                                   2 -> Z = b % used_generator_variable
                               end,
                               [Z = 3, Z = 3] % used_generator_variable (2)
                           end
                     ]).
        