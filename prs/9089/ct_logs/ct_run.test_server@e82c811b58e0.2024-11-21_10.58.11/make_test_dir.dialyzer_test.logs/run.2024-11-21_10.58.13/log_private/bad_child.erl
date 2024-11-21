-module(bad_child).
           -behaviour(bad_behaviour).

           -export([bad/0]).

           %% @doc This function incorrectly implements bad_behaviour.
           bad() -> not_bad.