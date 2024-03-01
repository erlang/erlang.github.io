-module(qlc_test_indices). -import(qlc_SUITE, [i/1,i/2,format_info/2]). -import(qlc_SUITE, [etsc/2, etsc/3]). -import(qlc_SUITE, [create_ets/2]). -import(qlc_SUITE, [strip_qlc_call/1]). -import(qlc_SUITE, [join_info/1]). -import(qlc_SUITE, [join_info_count/1]). -import(qlc_SUITE, [lookup_keys/1]). -include_lib("stdlib/include/qlc.hrl"). -record(r, {a}).
function() -> L = [{a,1,x,u},{b,2,y,v},{c,3,z,w}],
          QH = qlc:q([E || {K,I1,I2,I3}=E <- qlc_SUITE:table(L, 1, [2,3,4]),
                           ((K =/= a) or (K =/= b) or (K =/= c))
                             and ((I1 =:= 1) or (I1 =:= 2) or 
                                  (I1 =:= 3) or (I1 =:= 4))
                             and ((I2 =:= x) or (I2 =:= z)) 
                             and ((I3 =:= v) or (I3 =:= w))],
                     {max_lookup, 5}),
          {list, {table,{qlc_SUITE,list_keys, [[x,z],3,L]}}, _MS} = i(QH),
          [{c,3,z,w}] = qlc:eval(QH), ok. 