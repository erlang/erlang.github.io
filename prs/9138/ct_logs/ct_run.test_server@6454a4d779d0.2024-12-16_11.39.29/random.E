-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.2/src/random.erl", 1).

-module(random).

-deprecated({'_', '_', "use the 'rand' module instead"}).

-export([seed/0,
         seed/1,
         seed/3,
         uniform/0,
         uniform/1,
         uniform_s/1,
         uniform_s/2,
         seed0/0]).

-type ran() :: {integer(), integer(), integer()}.

-spec seed0() -> ran().

seed0() ->
    {3172, 9814, 20125}.

-spec seed() -> ran().

seed() ->
    case seed_put(seed0()) of
        undefined ->
            seed0();
        {_, _, _} = Tuple ->
            Tuple
    end.

-spec seed(SValue) -> undefined | ran()
              when
                  SValue :: {A1, A2, A3} | integer(),
                  A1 :: integer(),
                  A2 :: integer(),
                  A3 :: integer().

seed(Int) when is_integer(Int) ->
    A1 = (Int bsr 16) band 268435455,
    A2 = Int band 16777215,
    A3 = Int bsr 36 bor (A2 bsr 16),
    seed(A1, A2, A3);
seed({A1, A2, A3}) ->
    seed(A1, A2, A3).

-spec seed(A1, A2, A3) -> undefined | ran()
              when A1 :: integer(), A2 :: integer(), A3 :: integer().

seed(A1, A2, A3) ->
    seed_put({abs(A1) rem (30269 - 1) + 1,
              abs(A2) rem (30307 - 1) + 1,
              abs(A3) rem (30323 - 1) + 1}).

-spec seed_put(ran()) -> undefined | ran().

seed_put(Seed) ->
    put(random_seed, Seed).

-spec uniform() -> float().

uniform() ->
    {A1, A2, A3} =
        case get(random_seed) of
            undefined ->
                seed0();
            Tuple ->
                Tuple
        end,
    B1 = A1 * 171 rem 30269,
    B2 = A2 * 172 rem 30307,
    B3 = A3 * 170 rem 30323,
    put(random_seed, {B1, B2, B3}),
    R = B1 / 30269 + B2 / 30307 + B3 / 30323,
    R - trunc(R).

-spec uniform(N) -> pos_integer() when N :: pos_integer().

uniform(N) when is_integer(N), N >= 1 ->
    trunc(uniform() * N) + 1.

-spec uniform_s(State0) -> {float(), State1}
                   when State0 :: ran(), State1 :: ran().

uniform_s({A1, A2, A3}) ->
    B1 = A1 * 171 rem 30269,
    B2 = A2 * 172 rem 30307,
    B3 = A3 * 170 rem 30323,
    R = B1 / 30269 + B2 / 30307 + B3 / 30323,
    {R - trunc(R), {B1, B2, B3}}.

-spec uniform_s(N, State0) -> {integer(), State1}
                   when
                       N :: pos_integer(),
                       State0 :: ran(),
                       State1 :: ran().

uniform_s(N, State0) when is_integer(N), N >= 1 ->
    {F, State1} = uniform_s(State0),
    {trunc(F * N) + 1, State1}.



