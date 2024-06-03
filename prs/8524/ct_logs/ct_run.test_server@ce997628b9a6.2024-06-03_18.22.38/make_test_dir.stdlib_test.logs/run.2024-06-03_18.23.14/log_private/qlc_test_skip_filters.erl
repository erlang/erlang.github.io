-module(qlc_test_skip_filters). -import(qlc_SUITE, [i/1,i/2,format_info/2]). -import(qlc_SUITE, [etsc/2, etsc/3]). -import(qlc_SUITE, [create_ets/2]). -import(qlc_SUITE, [strip_qlc_call/1]). -import(qlc_SUITE, [join_info/1]). -import(qlc_SUITE, [join_info_count/1]). -import(qlc_SUITE, [lookup_keys/1]). -include_lib("stdlib/include/qlc.hrl"). function() -> %% The last example works just like this one:
          etsc(fun(E) ->
                      F = fun() -> [foo || A <- [0], 1/A] end,
                      Q1 = qlc:q([X || {X} <- ets:table(E),
                                       F(),
                                       begin X =:= 17 end]),
                      {'EXIT', _} = (catch qlc:e(Q1))
              end, [{1},{2},{3}]), ok. 