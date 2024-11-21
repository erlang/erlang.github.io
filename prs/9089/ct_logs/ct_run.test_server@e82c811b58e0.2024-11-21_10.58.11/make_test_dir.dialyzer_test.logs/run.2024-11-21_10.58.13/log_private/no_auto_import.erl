
        -module(no_auto_import).

        %% Copied from erl_lint_SUITE.erl, clash6

        -export([size/1]).

        size([]) ->
            0;
        size({N,_}) ->
            N;
        size([_|T]) ->
            1+size(T).
    