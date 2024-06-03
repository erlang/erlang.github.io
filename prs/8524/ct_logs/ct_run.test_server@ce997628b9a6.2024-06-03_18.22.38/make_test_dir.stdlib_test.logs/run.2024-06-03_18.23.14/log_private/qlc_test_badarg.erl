-module(qlc_test_badarg). -import(qlc_SUITE, [i/1,i/2,format_info/2]). -import(qlc_SUITE, [etsc/2, etsc/3]). -import(qlc_SUITE, [create_ets/2]). -import(qlc_SUITE, [strip_qlc_call/1]). -import(qlc_SUITE, [join_info/1]). -import(qlc_SUITE, [join_info_count/1]). -import(qlc_SUITE, [lookup_keys/1]). -include_lib("stdlib/include/qlc.hrl"). -import(qlc, [q/1, q/2]).
          q(_, _, _) -> ok.

badarg() ->
    qlc:q(foo),
    qlc:q(foo, cache_all),
    qlc:q(foo, cache_all, extra),
    q(bar),
    q(bar, cache_all),
    q(bar, cache_all, extra).
