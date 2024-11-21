
  -module(m).
  -export([updt/3]).

  -spec updt(list(), term(), term()) -> list(). % Warning: Spec is wrong! Function takes a map, not a list
  updt(X, K, V) -> X#{ K => V }.
  