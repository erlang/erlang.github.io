-module(get_coverage_test).
-export([fact/1,fib/1]).

fact(N) when is_integer(N), N >= 0 ->   %4
    fact(N, 1).                         %5

fact(0, P) ->
    P;                                  %8
fact(N, P) ->
    fact(N - 1, P * N).                 %10

fib(N) ->
    fib(N, 0, 1).                       %13

fib(0, _, B) ->
    B;                                  %16
fib(N, A, B) ->
    fib(N - 1, B, A + B).               %18