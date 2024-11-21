
	      -module(run_succ_typings2).

	      -export([call/0]).

	      -spec call() -> b.
	      call() -> run_succ_typings1:call().
	     