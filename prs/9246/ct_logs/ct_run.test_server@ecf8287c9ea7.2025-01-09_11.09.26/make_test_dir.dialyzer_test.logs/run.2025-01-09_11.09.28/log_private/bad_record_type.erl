-module(bad_record_type).
              -export([r/0]).
              -record(r, {f = 3 :: integer()}).
              -spec r() -> #r{f :: atom()}.
              r() ->
                  #r{}.