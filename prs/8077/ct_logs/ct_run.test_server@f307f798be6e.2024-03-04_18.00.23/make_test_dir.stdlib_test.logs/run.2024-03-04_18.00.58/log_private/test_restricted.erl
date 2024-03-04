-module(test_restricted).
                  -export([local_allowed/3, non_local_allowed/3]).
local_allowed(m,[],State) ->
    {true,State};
local_allowed(ugly,[],_State) ->
    non_conforming_reply;
local_allowed(_,_,State) ->
    {false,State}.

non_local_allowed({shell,stop_restricted},[],State) ->
    {true,State};
non_local_allowed({erlang,'+'},[_],State) ->
    {true,State};
non_local_allowed({erlang,'-'},[_,_],_State) ->
    non_conforming_reply;
non_local_allowed({h, d}, [Arg], S) ->
    {{redirect, {erlang,hd}, [Arg]}, S};
non_local_allowed(_,_,State) ->
    {false,State}.
