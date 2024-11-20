-module(typer_test_module).
                   -export([foo/1]).
                   -spec foo(boolean()) -> string().
                   foo(N) ->
                       integer_to_list(N).