-module(test).
                  -record(state, {bin :: binary(),
                                  reply = no,
                                  leader = some :: atom()}).

                  -ifdef(test1).
                  -record(test1, {f}).
                  -endif.

                  -ifdef(test2).
                  -record(test2, {g}).
                  -endif.
                 