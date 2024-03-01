-module(qlc_test_ets). -import(qlc_SUITE, [i/1,i/2,format_info/2]). -import(qlc_SUITE, [etsc/2, etsc/3]). -import(qlc_SUITE, [create_ets/2]). -import(qlc_SUITE, [strip_qlc_call/1]). -import(qlc_SUITE, [join_info/1]). -import(qlc_SUITE, [join_info_count/1]). -import(qlc_SUITE, [lookup_keys/1]). -include_lib("stdlib/include/qlc.hrl"). function() -> E2 = ets:new(test, [bag]),
          Ref = make_ref(),
          true = ets:insert(E2, [{Ref,Ref}]),
          Q2 = qlc:q([{Val1} ||
                         {Ref1, Val1} <- ets:table(E2),
                         Ref1 =:= Ref]),
          S = qlc:info(Q2),
          true = is_list(S),
          [{Ref}] = qlc:e(Q2),
          ets:delete(E2), ok. 