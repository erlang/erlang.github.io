
      -module(my_improper_list_module).
      -export([g/0]).

      g() -> [a|b]. % Improper list: Last element is not the empty list
      