-module(bad_behaviour).
         -callback bad() -> bad.
         -export([publicly_bad/0]).

         %% @doc This function is here just to avoid the 'unused' warning for bad/0
         publicly_bad() -> bad().

         %% @doc This function overlaps with the callback with the same name, and
         %%      that was an issue for dialyzer since it's a private function.
         bad() -> bad.