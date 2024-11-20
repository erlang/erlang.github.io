-module(gh_6296).
              -export([record_pattern/1]).

              -record(my_rec, {is_foo :: boolean(),
                               bar :: non_neg_integer()}).

              -spec record_pattern(#my_rec{}) -> atom().
              record_pattern(#my_rec{is_foo = IsFoo}) ->
                IsFoo.

              some_other_function_to_trigger_the_issue(undefined) -> ok.