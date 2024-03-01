-module(qlc_test_filesort). -import(qlc_SUITE, [i/1,i/2,format_info/2]). -import(qlc_SUITE, [etsc/2, etsc/3]). -import(qlc_SUITE, [create_ets/2]). -import(qlc_SUITE, [strip_qlc_call/1]). -import(qlc_SUITE, [join_info/1]). -import(qlc_SUITE, [join_info_count/1]). -import(qlc_SUITE, [lookup_keys/1]). -include_lib("stdlib/include/qlc.hrl"). function() -> Q = qlc:q([X || X <- [{3},{1},{2}]]),
          Opts = [{size,10},{no_files,3}],
          Q2 = qlc:q([{X,Y} || Y <- [1,2], X <- qlc:keysort([1],Q,Opts)]),
          [{{1},1},{{2},1},{{3},1},{{1},2},{{2},2},{{3},2}] = qlc:e(Q2), ok. 