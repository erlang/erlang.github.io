-module(qlc_test_cache). -import(qlc_SUITE, [i/1,i/2,format_info/2]). -import(qlc_SUITE, [etsc/2, etsc/3]). -import(qlc_SUITE, [create_ets/2]). -import(qlc_SUITE, [strip_qlc_call/1]). -import(qlc_SUITE, [join_info/1]). -import(qlc_SUITE, [join_info_count/1]). -import(qlc_SUITE, [lookup_keys/1]). -include_lib("stdlib/include/qlc.hrl"). function() -> H0 = qlc:append([a,b], [c,d]),
          H = qlc:q([{X,Y} || 
                        X <- H0,
                        Y <- qlc:q([{X1,Y} || 
                                       X1 <- H0,
                                       Y <- qlc:q([{X2,Y} || 
                                                      X2 <- H0,
                                                      Y <- H0])])]),
          {qlc, _,
           [{generate, _,{append, [{list, [a,b]}, {list, [c,d]}]}},
            {generate, _, 
             {qlc, _,
              [{generate, _, {append,[{list, [a,b]},{list, [c,d]}]}},
               {generate, _, 
                {qlc, _,
                 [{generate, _,{append,[{list, [a,b]}, {list, [c,d]}]}},
                  {generate, _,{append,[{list, [a,b]}, {list, [c,d]}]}}],
                 [{cache,ets}]}}],
              [{cache,ets}]}}],
           []} = i(H, cache_all), ok. 