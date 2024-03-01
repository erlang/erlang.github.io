-module(qlc_test_eval_cache). -import(qlc_SUITE, [i/1,i/2,format_info/2]). -import(qlc_SUITE, [etsc/2, etsc/3]). -import(qlc_SUITE, [create_ets/2]). -import(qlc_SUITE, [strip_qlc_call/1]). -import(qlc_SUITE, [join_info/1]). -import(qlc_SUITE, [join_info_count/1]). -import(qlc_SUITE, [lookup_keys/1]). -include_lib("stdlib/include/qlc.hrl"). function() -> H = qlc:sort(qlc:q([1 || _ <- [a,b]])),
          {sort, {qlc, _, [{generate, _, {qlc, _, [{generate, _, 
                                                    {list, [a,b]}}],
                                          [{unique,true}]}}],
                  [{unique,true}]},
                 []} = i(H, unique_all),
          [1] = qlc:e(H, unique_all), ok. 