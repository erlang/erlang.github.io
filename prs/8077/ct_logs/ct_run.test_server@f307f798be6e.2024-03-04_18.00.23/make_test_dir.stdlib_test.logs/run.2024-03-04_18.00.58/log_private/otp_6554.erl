-module(otp_6554).
                  -export([local_allowed/3, non_local_allowed/3]).
                  local_allowed(_,_,State) ->
                      {true,State}.

                  non_local_allowed(_,_,State) ->
                      {true,State}.
                 