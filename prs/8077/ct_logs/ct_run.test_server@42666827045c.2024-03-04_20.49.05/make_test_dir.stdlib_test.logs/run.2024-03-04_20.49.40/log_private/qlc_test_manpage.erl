-module(qlc_test_manpage). -import(qlc_SUITE, [i/1,i/2,format_info/2]). -import(qlc_SUITE, [etsc/2, etsc/3]). -import(qlc_SUITE, [create_ets/2]). -import(qlc_SUITE, [strip_qlc_call/1]). -import(qlc_SUITE, [join_info/1]). -import(qlc_SUITE, [join_info_count/1]). -import(qlc_SUITE, [lookup_keys/1]). -include_lib("stdlib/include/qlc.hrl"). function() -> {ok, T} = dets:open_file(t, []),
            ok = dets:insert(T, [{1,a},{2,b},{3,c},{4,d}]),
            MS = [{{'$1','$2'},[{'or',{'>','$1',1},{'<','$1',5}}],[{{'$2'}}]}],
            QH1 = dets:table(T, [{traverse, {select, MS}}]),

            QH2 = qlc:q([{Y} || {X,Y} <- dets:table(t), (X > 1) or (X < 5)]),

            true = qlc:info(QH1) =:= qlc:info(QH2),
            ok = dets:close(T), ok. 