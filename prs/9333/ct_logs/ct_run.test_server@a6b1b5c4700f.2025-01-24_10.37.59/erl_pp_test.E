-file("erl_pp_test.erl", 1).

-module(erl_pp_test).

-export([f/1]).

-record(r,{a, b}).

f({r, _, B} = C) ->
    receive
        B ->
            X = case C of
                    {r, XREC0, _} ->
                        XREC0;
                    XREC0 ->
                        error({badrecord, XREC0})
                end,
            REC0 = X + X,
            REC0
    end.



