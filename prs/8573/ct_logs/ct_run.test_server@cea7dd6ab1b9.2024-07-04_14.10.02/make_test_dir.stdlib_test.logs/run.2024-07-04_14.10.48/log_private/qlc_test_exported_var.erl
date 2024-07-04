-module(qlc_test_exported_var). -import(qlc_SUITE, [i/1,i/2,format_info/2]). -import(qlc_SUITE, [etsc/2, etsc/3]). -import(qlc_SUITE, [create_ets/2]). -import(qlc_SUITE, [strip_qlc_call/1]). -import(qlc_SUITE, [join_info/1]). -import(qlc_SUITE, [join_info_count/1]). -import(qlc_SUITE, [lookup_keys/1]). -include_lib("stdlib/include/qlc.hrl"). exported() ->
              qlc:q([X || X <- begin
                                   case foo:bar() of
                                       1 -> Z = a;
                                       2 -> Z = b
                                   end,
                                   [Z = 3, Z = 3] % Z exported (twice...)
                               end
                         ]).
       