-module(test_restricted_local).
                  -export([local_allowed/3, non_local_allowed/3]).
                  local_allowed(m,[],State) ->
                      {true,State};
                  local_allowed(banan,_,State) ->
                      {true,State};
                  local_allowed(funkis,_,State) ->
                      {true,State};
                  local_allowed(c,_,State) ->
                      {true,State};
                  local_allowed(_,_,State) ->
                      {false,State}.

                  non_local_allowed({erlang,raise},[error, _, _],State) ->
                      {true,State};
                  non_local_allowed({shell,stop_restricted},[],State) ->
                      {true,State};
                  non_local_allowed(_,_,State) ->
                      {false,State}.
                 