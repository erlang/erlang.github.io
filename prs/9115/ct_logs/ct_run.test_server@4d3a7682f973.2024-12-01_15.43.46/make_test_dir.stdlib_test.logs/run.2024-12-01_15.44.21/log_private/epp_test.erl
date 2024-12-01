-module(epp_test). -export([t/0]). -define(LOG(Tag, Code), io:format("~s", [Tag]), Code).
             more_work() -> ok.
             some_work() -> ok.
             t() ->
                ?LOG(work,
                     begin
                        maybe
                           ok ?= some_work()
                        end,
                        more_work()
                     end).
             