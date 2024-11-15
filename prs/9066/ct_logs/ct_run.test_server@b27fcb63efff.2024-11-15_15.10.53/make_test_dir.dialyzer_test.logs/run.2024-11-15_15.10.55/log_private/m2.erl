-module(m2).
               -export([a/1]).
               a(A) when is_integer(A) -> A.