-module(qlc_test_join_option). -import(qlc_SUITE, [i/1,i/2,format_info/2]). -import(qlc_SUITE, [etsc/2, etsc/3]). -import(qlc_SUITE, [create_ets/2]). -import(qlc_SUITE, [strip_qlc_call/1]). -import(qlc_SUITE, [join_info/1]). -import(qlc_SUITE, [join_info_count/1]). -import(qlc_SUITE, [lookup_keys/1]). -include_lib("stdlib/include/qlc.hrl"). function() -> L1 = [1,2],
          L2 = [{1,a},{2,b}],
          L3 = [{a,1},{b,2}],
          Q = qlc:q([{X,Y,Z} ||
                        Z <- L1,
                        {X,_} <- L2,
                        {_,Y} <- L3,
                        X =:= Y],
                    []),
          Options = [{cache_all,ets}, unique_all],
          {qlc,_,[{generate,_,{qlc,_,[{generate,_,{list,L1}}],
                               [{unique,true}]}},
                  {generate,_,{qlc,_,
                              [{generate,_,{qlc,_,[{generate,_,
                                 {keysort,{qlc,_,[{generate,_,{list,L2}}],
                                           [{cache,ets},{unique,true}]},
                                          1,[]}}],[]}},
                               {generate,_,{qlc,_,
                                    [{generate,_,{keysort,
                                      {qlc,_,[{generate,_,{list,L3}}],
                                       [{cache,ets},{unique,true}]},
                                                  2,[]}}],[]}},_],
                              [{join,merge},{cache,ets},{unique,true}]}},
                  _],[{unique,true}]} = i(Q, Options),
          [{1,1,1},{2,2,1},{1,1,2},{2,2,2}] = qlc:e(Q, Options), ok. 