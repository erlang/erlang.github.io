-module(qlc_test_table). -import(qlc_SUITE, [i/1,i/2,format_info/2]). -import(qlc_SUITE, [etsc/2, etsc/3]). -import(qlc_SUITE, [create_ets/2]). -import(qlc_SUITE, [strip_qlc_call/1]). -import(qlc_SUITE, [join_info/1]). -import(qlc_SUITE, [join_info_count/1]). -import(qlc_SUITE, [lookup_keys/1]). -include_lib("stdlib/include/qlc.hrl"). -record(a, {b,c}).
function() -> E = ets:new(foo, [bag]),
          ets:insert(E, [{a,1,2},#a{b=3,c=4},{a,3}]),
          QH = qlc:q([X || X <- ets:table(E), is_record(X, a)]),
          {list,{table,_}, _} = i(QH),
          [{a,1,2},{a,3,4}] = lists:sort(qlc:eval(QH)),
          ets:delete(E), ok. 