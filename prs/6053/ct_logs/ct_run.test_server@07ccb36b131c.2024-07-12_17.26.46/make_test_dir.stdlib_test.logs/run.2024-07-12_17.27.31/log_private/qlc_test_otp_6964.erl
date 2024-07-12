-module(qlc_test_otp_6964). -import(qlc_SUITE, [i/1,i/2,format_info/2]). -import(qlc_SUITE, [etsc/2, etsc/3]). -import(qlc_SUITE, [create_ets/2]). -import(qlc_SUITE, [strip_qlc_call/1]). -import(qlc_SUITE, [join_info/1]). -import(qlc_SUITE, [join_info_count/1]). -import(qlc_SUITE, [lookup_keys/1]). -include_lib("stdlib/include/qlc.hrl"). function() -> %% cache list
          etsc(fun(E) ->
                       Q0 = qlc:q([X || X <- ets:table(E),
                                        begin element(1, X) > 5 end],
                                  {cache,list}),
                       Q = qlc:q([{X, element(1,Y)} || X <- lists:seq(1, 5),
                                                       Y <- Q0]),
                       R = [{X,Y} || X <- lists:seq(1, 5), 
                                     Y <- lists:seq(6, 10)],
                       F = fun(Use) ->
                                   qlc:e(Q, [{max_list_size, 100*1024},
                                             {tmpdir_usage, Use}])
                           end,
                       R = lists:sort(F(allowed)),
                       qlc_SUITE:install_error_logger(),
                       R = lists:sort(F(info_msg)),
                       {info, caching} = qlc_SUITE:read_error_logger(),
                       R = lists:sort(F(error_msg)),
                       {error, caching} = qlc_SUITE:read_error_logger(),
                       R = lists:sort(F(warning_msg)),
                       {warning, caching} = qlc_SUITE:read_error_logger(),
                       qlc_SUITE:uninstall_error_logger(),
                       ErrReply = F(not_allowed),
                       {error,qlc,{tmpdir_usage,caching}} = ErrReply,
                       "temporary file was needed for caching
" = 
                           lists:flatten(qlc:format_error(ErrReply))
               end, [{keypos,1}], [{I,a,lists:duplicate(100000,1)} || 
                                       I <- lists:seq(1, 10)]), ok. 