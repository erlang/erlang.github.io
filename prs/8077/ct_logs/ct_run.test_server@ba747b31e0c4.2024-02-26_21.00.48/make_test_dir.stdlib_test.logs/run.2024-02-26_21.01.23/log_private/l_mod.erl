-module(l_mod).
-export([t/0]).
t() ->
    S = "string",
    io:format("~lw", [S]),
    io:format("~lW", [S, 1]),
    io:format("~ltw", [S]),
    io:format("~tlw", [S]),
    io:format("~ltW", [S, 1]),
    io:format("~tlW", [S, 1]),
    io:format("~ltp", [S, 1]).
