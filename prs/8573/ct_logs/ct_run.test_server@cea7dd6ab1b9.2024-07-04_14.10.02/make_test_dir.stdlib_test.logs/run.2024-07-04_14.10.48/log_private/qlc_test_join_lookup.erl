-module(qlc_test_join_lookup). -import(qlc_SUITE, [i/1,i/2,format_info/2]). -import(qlc_SUITE, [etsc/2, etsc/3]). -import(qlc_SUITE, [create_ets/2]). -import(qlc_SUITE, [strip_qlc_call/1]). -import(qlc_SUITE, [join_info/1]). -import(qlc_SUITE, [join_info_count/1]). -import(qlc_SUITE, [lookup_keys/1]). -include_lib("stdlib/include/qlc.hrl"). function() -> E = create_ets(1, 10),
          Q = qlc:q([{X,Y} ||
                        {X,_} <- ets:table(E),
                        {_,Y} <- qlc_SUITE:table_error([{a,1}], 1, err),
                        X =:= Y]),
          {0,1,0,0} = join_info_count(Q),
          err = qlc:e(Q),
          ets:delete(E), ok. 