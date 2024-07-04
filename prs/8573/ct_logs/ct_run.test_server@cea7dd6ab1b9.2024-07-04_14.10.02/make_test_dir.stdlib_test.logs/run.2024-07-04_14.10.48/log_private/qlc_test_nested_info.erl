-module(qlc_test_nested_info). -import(qlc_SUITE, [i/1,i/2,format_info/2]). -import(qlc_SUITE, [etsc/2, etsc/3]). -import(qlc_SUITE, [create_ets/2]). -import(qlc_SUITE, [strip_qlc_call/1]). -import(qlc_SUITE, [join_info/1]). -import(qlc_SUITE, [join_info_count/1]). -import(qlc_SUITE, [lookup_keys/1]). -include_lib("stdlib/include/qlc.hrl"). function() -> L = [{1,a},{2,b}],
          Q = qlc:q(
                [{X,Y} ||
                    {X,_} <- qlc_SUITE:table(L, []),
                    {Y,_} <- qlc:q(
                               [{Z,V} || 
                                   {Z,_} <- qlc_SUITE:table(L, []),
                                   {V} <- qlc:q(
                                              [{W} || W 
                                                  <- qlc_SUITE:table(L, [])])
                                      ])
                       ]),
          true = binary_to_list(<<
           "beginV1=qlc:q([{W}||W<-qlc_SUITE:the_list([{1,a},{2,b}])]),"
           "V2=qlc:q([{Z,V}||{Z,_}<-qlc_SUITE:the_list([{1,a},{2,b}]),"
           "{V}<-V1]),qlc:q([{X,Y}||{X,_}<-qlc_SUITE:the_list([{1,a},"
           "{2,b}]),{Y,_}<-V2])end">>) == format_info(Q, true),
          [{1,1},{1,1},{1,2},{1,2},{2,1},{2,1},{2,2},{2,2}] = qlc:e(Q), ok. 