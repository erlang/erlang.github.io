-module(qlc_test_otp_6674). -import(qlc_SUITE, [i/1,i/2,format_info/2]). -import(qlc_SUITE, [etsc/2, etsc/3]). -import(qlc_SUITE, [create_ets/2]). -import(qlc_SUITE, [strip_qlc_call/1]). -import(qlc_SUITE, [join_info/1]). -import(qlc_SUITE, [join_info_count/1]). -import(qlc_SUITE, [lookup_keys/1]). -include_lib("stdlib/include/qlc.hrl"). function() -> Q = qlc:q([{X,Y} ||
                  {X} <- [{<<3:4>>}],
                  {Y} <- [{<<3:4>>}],
                  X =:= <<1:3,1:1>>,        % <<3:4>>
                  Y =:= <<0:2,1:1,1:1>>,    % <<3:4>>
                  X =:= Y]),
                  [{<<3:4>>,<<3:4>>}] = qlc:e(Q), ok. 