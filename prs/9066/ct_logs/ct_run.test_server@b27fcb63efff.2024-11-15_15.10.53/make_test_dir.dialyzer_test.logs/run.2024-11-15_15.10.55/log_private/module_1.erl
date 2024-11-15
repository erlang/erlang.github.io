-module(module_1).
-export([main/1]).
main(L) ->
  case list_to_atom(L) of
    Atom when is_atom(Atom) -> {ok,Atom};
    _ -> error
  end.
