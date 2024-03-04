-module(user_default).
                  -export([funkis/1,apple/1]).
                  funkis(F) when is_function(F) ->
                      funkis;
                  funkis(_) ->
                      nofunkis.
                  apple(_) ->
                      apple.
                 