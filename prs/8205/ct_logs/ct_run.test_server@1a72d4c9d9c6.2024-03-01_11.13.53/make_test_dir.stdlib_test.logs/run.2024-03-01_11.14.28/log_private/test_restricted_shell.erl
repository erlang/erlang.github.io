-module(test_restricted_shell).
                  -export([local_allowed/3, non_local_allowed/3]).
                  local_allowed(_,_,State) ->
                      {false,State}.

                  non_local_allowed({shell,stop_restricted},[],State) ->
                      {true,State};
                  non_local_allowed({shell,prompt_func},[_L],State) ->
                      {true,State};
                  non_local_allowed({shell_SUITE,prompt1},[_L],State) ->
                      {true,State};
                  non_local_allowed(_,_,State) ->
                      {false,State}.
                 