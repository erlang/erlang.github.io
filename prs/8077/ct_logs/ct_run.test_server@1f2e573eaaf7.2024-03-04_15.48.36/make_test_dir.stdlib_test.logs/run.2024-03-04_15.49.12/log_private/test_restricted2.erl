-module(test_restricted2).
                  -export([local_allowed/3, non_local_allowed/3]).
                  local_allowed(m,[],State) ->
                      {true,State};
                  local_allowed(_,_,State) ->
                      {false,State}.

                  non_local_allowed({shell,stop_restricted},[],State) ->
                      {true,State};
                  non_local_allowed({erlang,node},[],State) ->
                      {true,State};
                  non_local_allowed(_,_,State) ->
                      {false,State}.
                 