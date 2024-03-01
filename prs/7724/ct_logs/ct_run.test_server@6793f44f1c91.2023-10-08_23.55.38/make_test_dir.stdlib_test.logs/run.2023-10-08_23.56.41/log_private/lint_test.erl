-module(lint_test). -export([t/0]).
                t() ->
                    error =
                        maybe
                            Int when Int =:= 0 ?= int(),
                            ok
                        else
                            _ ->
                                error
                        end.

                int() -> 1.
                