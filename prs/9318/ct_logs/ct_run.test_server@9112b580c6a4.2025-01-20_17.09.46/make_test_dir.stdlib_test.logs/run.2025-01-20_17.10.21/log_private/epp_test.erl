-module(epp_test). -export([t/0]). -define(S(S), ??S).
t() ->
    ~S('атом') = ?S('атом'),
    ~S("атом") = ?S("атом"),
    ok.