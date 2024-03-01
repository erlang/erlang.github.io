-module(qlc_test_forward). -import(qlc_SUITE, [i/1,i/2,format_info/2]). -import(qlc_SUITE, [etsc/2, etsc/3]). -import(qlc_SUITE, [create_ets/2]). -import(qlc_SUITE, [strip_qlc_call/1]). -import(qlc_SUITE, [join_info/1]). -import(qlc_SUITE, [join_info_count/1]). -import(qlc_SUITE, [lookup_keys/1]). -include_lib("stdlib/include/qlc.hrl"). function() -> H = qlc:q([X || X <- []]),
         {qlc_handle, {qlc_lc, Fun, _Opt}} = H,
         FakeH = {qlc_handle, {qlc_lc, Fun, {new_qlc_opt, a,b,c}}},
         {'EXIT', {{unsupported_qlc_handle,_},_}} = (catch qlc:e(FakeH)), ok. 