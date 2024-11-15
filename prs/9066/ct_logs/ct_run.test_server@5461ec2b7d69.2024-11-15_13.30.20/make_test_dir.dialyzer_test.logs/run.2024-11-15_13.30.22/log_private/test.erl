-module(test).
              -export([test/0]).
              -spec test() -> test.
              test() ->
                  plt_gc:one().