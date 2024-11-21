
	       -module(run_plt_check2).

	       -export([call/1]).

	       call(X) -> run_plt_check1:call(X).
	     