-module(qlc_test_fold). -import(qlc_SUITE, [i/1,i/2,format_info/2]). -import(qlc_SUITE, [etsc/2, etsc/3]). -import(qlc_SUITE, [create_ets/2]). -import(qlc_SUITE, [strip_qlc_call/1]). -import(qlc_SUITE, [join_info/1]). -import(qlc_SUITE, [join_info_count/1]). -import(qlc_SUITE, [lookup_keys/1]). -include_lib("stdlib/include/qlc.hrl"). function() -> G = fun(_Obj, _A, D) -> 17/D  end,
             F = fun(Obj, A) -> G(Obj, A, 0) end,
             Q = qlc:q([X || X <- [4,3,2]]),
             {'EXIT',{badarith,_}} = 
                    (catch qlc:fold(F, [], Q, {unique_all,true})),
             {'EXIT',{badarith,_}} = 
               (catch qlc:fold(F, [], Q, [{unique_all,false}]))
            , ok. 