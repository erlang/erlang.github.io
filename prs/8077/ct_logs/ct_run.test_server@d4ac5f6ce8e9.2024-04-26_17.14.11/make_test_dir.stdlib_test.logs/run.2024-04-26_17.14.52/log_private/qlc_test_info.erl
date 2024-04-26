-module(qlc_test_info). -import(qlc_SUITE, [i/1,i/2,format_info/2]). -import(qlc_SUITE, [etsc/2, etsc/3]). -import(qlc_SUITE, [create_ets/2]). -import(qlc_SUITE, [strip_qlc_call/1]). -import(qlc_SUITE, [join_info/1]). -import(qlc_SUITE, [join_info_count/1]). -import(qlc_SUITE, [lookup_keys/1]). -include_lib("stdlib/include/qlc.hrl"). function() -> Fun = fun ?MODULE:i/2,
             L = [{#{k => #{v => Fun}}, Fun}],
             H = qlc:q([Q || Q <- L, Q =:= {#{k => #{v => Fun}}, Fun}]),
             L = qlc:e(H),
             {call,_,{remote,_,{atom,_,ets},{atom,_,match_spec_run}},
                [_,
                 {call,_,{remote,_,{atom,_,ets},{atom,_,match_spec_compile}},[_]}]} =
                qlc:info(H, [{format,abstract_code}]), ok. 