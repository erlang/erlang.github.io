-module(qlc_test_otp_6359). -import(qlc_SUITE, [i/1,i/2,format_info/2]). -import(qlc_SUITE, [etsc/2, etsc/3]). -import(qlc_SUITE, [create_ets/2]). -import(qlc_SUITE, [strip_qlc_call/1]). -import(qlc_SUITE, [join_info/1]). -import(qlc_SUITE, [join_info_count/1]). -import(qlc_SUITE, [lookup_keys/1]). -include_lib("stdlib/include/qlc.hrl"). function() -> T = luna, Fname = "/buildroot/otp/lib/stdlib/make_test_dir/ct_logs/ct_run.test_server@af73530ee214.2024-04-17_17.26.59/make_test_dir.stdlib_test.logs/run.2024-04-17_17.27.37/log_private/luna",
           {ok, _} = dets:open_file(T, [{file,Fname}]),
           Q = qlc:q([F || 
                         F <- dets:table(T), 
                         (F band ((1 bsl 0)) =/= 0), 
                         true]),
           [] = qlc:eval(Q),
           ok = dets:close(T),
           file:delete("/buildroot/otp/lib/stdlib/make_test_dir/ct_logs/ct_run.test_server@af73530ee214.2024-04-17_17.26.59/make_test_dir.stdlib_test.logs/run.2024-04-17_17.27.37/log_private/luna"),
           ok, ok. 