-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.1.2/src/dets_sup.erl", 1).

-module(dets_sup).

-behaviour(supervisor).

-export([start_link/0,init/1]).

-spec start_link() -> {ok, pid()} | ignore | {error, term()}.

start_link() ->
    supervisor:start_link({local, dets_sup}, dets_sup, []).

-spec init([]) ->
              {ok,
               {{simple_one_for_one, 4, 3600},
                [{dets,
                  {dets, istart_link, []},
                  temporary, 30000, worker,
                  [dets]}]}}.

init([]) ->
    SupFlags = {simple_one_for_one, 4, 3600},
    Child =
        {dets,
         {dets, istart_link, []},
         temporary, 30000, worker,
         [dets]},
    {ok, {SupFlags, [Child]}}.



