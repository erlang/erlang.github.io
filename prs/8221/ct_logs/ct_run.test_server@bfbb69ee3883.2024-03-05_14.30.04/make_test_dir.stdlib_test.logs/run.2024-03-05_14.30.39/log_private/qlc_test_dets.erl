-module(qlc_test_dets). -import(qlc_SUITE, [i/1,i/2,format_info/2]). -import(qlc_SUITE, [etsc/2, etsc/3]). -import(qlc_SUITE, [create_ets/2]). -import(qlc_SUITE, [strip_qlc_call/1]). -import(qlc_SUITE, [join_info/1]). -import(qlc_SUITE, [join_info_count/1]). -import(qlc_SUITE, [lookup_keys/1]). -include_lib("stdlib/include/qlc.hrl"). function() -> T = t, Fname = "/buildroot/otp/lib/stdlib/make_test_dir/ct_logs/ct_run.test_server@bfbb69ee3883.2024-03-05_14.30.04/make_test_dir.stdlib_test.logs/run.2024-03-05_14.30.39/log_private/t",
           {ok, _} = dets:open_file(T, [{file,Fname}]),
           Objs = [{X} || X <- lists:seq(1,10)],
           ok = dets:insert(T, Objs),
           {ok, Where} = dets:where(T, {2}),
           ok = dets:close(T),
           qlc_SUITE:crash(Fname, Where),

           {ok, _} = dets:open_file(T, [{file,Fname}]),
           HT = qlc:q([X || {X} <- dets:table(T, {traverse, first_next})]),
           {'EXIT',{error,{{bad_object,_},_}}} = (catch qlc:e(HT)),
           _ = dets:close(T),

           {ok, _} = dets:open_file(T, [{file,Fname}]),
           HMS = qlc:q([X || {X} <- dets:table(T, {traverse, select})]),
           {error,{{bad_object,_},_}} = qlc:e(HMS),
           _ = dets:close(T),

           {ok, _} = dets:open_file(T, [{file,Fname}]),
           HLU = qlc:q([X || {X} <- dets:table(T), X =:= 2]),
           {error,{{bad_object,_},_}} = qlc:e(HLU),
           _ = dets:close(T),

           file:delete(Fname), ok. 