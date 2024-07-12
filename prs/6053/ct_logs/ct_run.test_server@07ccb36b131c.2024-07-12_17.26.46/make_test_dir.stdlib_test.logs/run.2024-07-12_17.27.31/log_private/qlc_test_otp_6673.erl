-module(qlc_test_otp_6673). -import(qlc_SUITE, [i/1,i/2,format_info/2]). -import(qlc_SUITE, [etsc/2, etsc/3]). -import(qlc_SUITE, [create_ets/2]). -import(qlc_SUITE, [strip_qlc_call/1]). -import(qlc_SUITE, [join_info/1]). -import(qlc_SUITE, [join_info_count/1]). -import(qlc_SUITE, [lookup_keys/1]). -include_lib("stdlib/include/qlc.hrl"). function() -> %% The filter 'A =< y' can be evaluated by traversing E1 using a
            %% match specification, but then lookup join cannot use E1 for
            %% looking up keys. This example shows that the filter is kept if
            %% lookup join is employed (otherwise it is optimized away since
            %% the match spec is used).
            etsc(fun(E1) ->
                         Q = qlc:q([{A,B,C,D} || 
                                       {A,B} <- ets:table(E1),
                                       {C,D} <- [{x,f},{y,g},{z,h}],
                                       A =< y, % kept
                                       A =:= C], {join,lookup}),
                         [{x,1,x,f},{y,2,y,g}] = lists:sort(qlc:e(Q))
                 end, [{x,1},{y,2},{z,3}]), ok. 