-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.1.2/src/rand.erl", 1).

-module(rand).

-export([seed_s/1,
         seed_s/2,
         seed/1,
         seed/2,
         export_seed/0,
         export_seed_s/1,
         uniform/0,
         uniform/1,
         uniform_s/1,
         uniform_s/2,
         uniform_real/0,
         uniform_real_s/1,
         bytes/1,
         bytes_s/2,
         jump/0,
         jump/1,
         normal/0,
         normal/2,
         normal_s/1,
         normal_s/3]).

-export([exsp_next/1,
         exsp_jump/1,
         splitmix64_next/1,
         mwc59/1,
         mwc59_value32/1,
         mwc59_value/1,
         mwc59_float/1,
         mwc59_seed/0,
         mwc59_seed/1]).

-export([exro928_jump_2pow512/1,
         exro928_jump_2pow20/1,
         exro928_seed/1,
         exro928_next/1,
         exro928_next_state/1,
         format_jumpconst58/1,
         seed58/2]).

-export([make_float/3,float2str/1,bc64/1]).

-compile({inline,
          [{exs64_next, 1},
           {exsp_next, 1},
           {exsss_next, 1},
           {exs1024_next, 1},
           {exs1024_calc, 2},
           {exro928_next_state, 4},
           {exrop_next, 1},
           {exrop_next_s, 2},
           {mwc59_value, 1},
           {get_52, 1},
           {normal_kiwi, 1}]}).

-type uint64() :: 0..1 bsl 64 - 1.

-type uint58() :: 0..1 bsl 58 - 1.

-type alg_state() ::
          exsplus_state() |
          exro928_state() |
          exrop_state() |
          exs1024_state() |
          exs64_state() |
          dummy_state() |
          term().

-type alg_handler() ::
          #{type := alg(),
            bits => non_neg_integer(),
            weak_low_bits => non_neg_integer(),
            max => non_neg_integer(),
            next :=
                fun((alg_state()) -> {non_neg_integer(), alg_state()}),
            uniform => fun((state()) -> {float(), state()}),
            uniform_n =>
                fun((pos_integer(), state()) -> {pos_integer(), state()}),
            jump => fun((state()) -> state())}.

-type state() :: {alg_handler(), alg_state()}.

-type builtin_alg() ::
          exsss | exro928ss | exrop | exs1024s | exsp | exs64 |
          exsplus | exs1024 | dummy.

-type alg() :: builtin_alg() | atom().

-type export_state() :: {alg(), alg_state()}.

-type seed() ::
          [integer()] | integer() | {integer(), integer(), integer()}.

-export_type([builtin_alg/0,
              alg/0,
              alg_handler/0,
              alg_state/0,
              state/0,
              export_state/0,
              seed/0]).

-export_type([exsplus_state/0,
              exro928_state/0,
              exrop_state/0,
              exs1024_state/0,
              exs64_state/0,
              mwc59_state/0,
              dummy_state/0]).

-export_type([uint58/0,uint64/0,splitmix64_state/0]).

uniform_range(Range, #{next := Next, bits := Bits} = AlgHandler, R, V) ->
    WeakLowBits = maps:get(weak_low_bits, AlgHandler, 0),
    Shift = Bits - WeakLowBits,
    ShiftMask = bnot (1 bsl WeakLowBits - 1),
    RangeMinus1 = Range - 1,
    if
        Range band RangeMinus1 =:= 0 ->
            {V1, R1, _} =
                uniform_range(Range bsr Bits,
                              Next, R, V, ShiftMask, Shift, Bits),
            {V1 band RangeMinus1 + 1, {AlgHandler, R1}};
        true ->
            {V1, R1, B} =
                uniform_range(Range bsr (Bits - 2),
                              Next, R, V, ShiftMask, Shift, Bits),
            I = V1 rem Range,
            if
                V1 - I =< 1 bsl B - Range ->
                    {I + 1, {AlgHandler, R1}};
                true ->
                    {V2, R2} = Next(R1),
                    uniform_range(Range, AlgHandler, R2, V2)
            end
    end.

uniform_range(Range, Next, R, V, ShiftMask, Shift, B) ->
    if
        Range =< 1 ->
            {V, R, B};
        true ->
            {V1, R1} = Next(R),
            uniform_range(Range bsr Shift,
                          Next, R1,
                          V band ShiftMask bsl Shift bor V1,
                          ShiftMask, Shift,
                          B + Shift)
    end.

-spec export_seed() -> undefined | export_state().

export_seed() ->
    case get(rand_seed) of
        {#{type := Alg}, AlgState} ->
            {Alg, AlgState};
        _ ->
            undefined
    end.

-spec export_seed_s(State :: state()) -> export_state().

export_seed_s({#{type := Alg}, AlgState}) ->
    {Alg, AlgState}.

-spec seed(Alg_or_State :: term()) -> state().

seed(Alg_or_State) ->
    seed_put(seed_s(Alg_or_State)).

-spec seed_s(Alg | State) -> state()
                when
                    Alg :: builtin_alg() | default,
                    State :: state() | export_state().

seed_s({AlgHandler, _AlgState} = State) when is_map(AlgHandler) ->
    State;
seed_s({Alg, AlgState}) when is_atom(Alg) ->
    {AlgHandler, _SeedFun} = mk_alg(Alg),
    {AlgHandler, AlgState};
seed_s(Alg) ->
    seed_s(Alg, default_seed()).

default_seed() ->
    {erlang:phash2([{node(), self()}]),
     erlang:system_time(),
     erlang:unique_integer()}.

-spec seed(Alg :: term(), Seed :: term()) -> state().

seed(Alg, Seed) ->
    seed_put(seed_s(Alg, Seed)).

-spec seed_s(Alg, Seed) -> state()
                when Alg :: builtin_alg() | default, Seed :: seed().

seed_s(default, Seed) ->
    seed_s(exsss, Seed);
seed_s(Alg, Seed) ->
    {AlgHandler, SeedFun} = mk_alg(Alg),
    AlgState = SeedFun(Seed),
    {AlgHandler, AlgState}.

-spec uniform() -> X :: float().

uniform() ->
    {X, State} = uniform_s(seed_get()),
    _ = seed_put(State),
    X.

-spec uniform(N :: pos_integer()) -> X :: pos_integer().

uniform(N) ->
    {X, State} = uniform_s(N, seed_get()),
    _ = seed_put(State),
    X.

-spec uniform_s(State :: state()) -> {X :: float(), NewState :: state()}.

uniform_s(State = {#{uniform := Uniform}, _}) ->
    Uniform(State);
uniform_s({#{bits := Bits, next := Next} = AlgHandler, R0}) ->
    {V, R1} = Next(R0),
    {(V bsr (Bits - 53)) * 1.1102230246251565e-16, {AlgHandler, R1}};
uniform_s({#{max := Max, next := Next} = AlgHandler, R0}) ->
    {V, R1} = Next(R0),
    {V / (Max + 1), {AlgHandler, R1}}.

-spec uniform_s(N :: pos_integer(), State :: state()) ->
                   {X :: pos_integer(), NewState :: state()}.

uniform_s(N, State = {#{uniform_n := UniformN}, _})
    when is_integer(N), 1 =< N ->
    UniformN(N, State);
uniform_s(N, {#{bits := Bits, next := Next} = AlgHandler, R0})
    when is_integer(N), 1 =< N ->
    {V, R1} = Next(R0),
    MaxMinusN = 1 bsl Bits - N,
    if
        0 =< MaxMinusN ->
            if
                V < N ->
                    {V + 1, {AlgHandler, R1}};
                true ->
                    I = V rem N,
                    if
                        V - I =< MaxMinusN ->
                            {I + 1, {AlgHandler, R1}};
                        true ->
                            uniform_s(N, {AlgHandler, R1})
                    end
            end;
        true ->
            uniform_range(N, AlgHandler, R1, V)
    end;
uniform_s(N, {#{max := Max, next := Next} = AlgHandler, R0})
    when is_integer(N), 1 =< N ->
    {V, R1} = Next(R0),
    if
        N =< Max ->
            {V rem N + 1, {AlgHandler, R1}};
        true ->
            F = V / (Max + 1),
            {trunc(F * N) + 1, {AlgHandler, R1}}
    end.

-spec uniform_real() -> X :: float().

uniform_real() ->
    {X, Seed} = uniform_real_s(seed_get()),
    _ = seed_put(Seed),
    X.

-spec uniform_real_s(State :: state()) ->
                        {X :: float(), NewState :: state()}.

uniform_real_s({#{bits := Bits, next := Next} = AlgHandler, R0}) ->
    {V1, R1} = Next(R0),
    M1 = V1 bsr (Bits - 56),
    if
        1 bsl 55 =< M1 ->
            {(M1 bsr 3) * math:pow(2.0, -53), {AlgHandler, R1}};
        1 bsl 54 =< M1 ->
            {(M1 bsr 2) * math:pow(2.0, -54), {AlgHandler, R1}};
        1 bsl 53 =< M1 ->
            {(M1 bsr 1) * math:pow(2.0, -55), {AlgHandler, R1}};
        1 bsl 52 =< M1 ->
            {M1 * math:pow(2.0, -56), {AlgHandler, R1}};
        true ->
            {V2, R2} = Next(R1),
            uniform_real_s(AlgHandler, Next, M1, -56, R2, V2, Bits)
    end;
uniform_real_s({#{max := _, next := Next} = AlgHandler, R0}) ->
    {V1, R1} = Next(R0),
    M1 = V1 band (1 bsl 56 - 1),
    if
        1 bsl 55 =< M1 ->
            {(M1 bsr 3) * math:pow(2.0, -53), {AlgHandler, R1}};
        1 bsl 54 =< M1 ->
            {(M1 bsr 2) * math:pow(2.0, -54), {AlgHandler, R1}};
        1 bsl 53 =< M1 ->
            {(M1 bsr 1) * math:pow(2.0, -55), {AlgHandler, R1}};
        1 bsl 52 =< M1 ->
            {M1 * math:pow(2.0, -56), {AlgHandler, R1}};
        true ->
            {V2, R2} = Next(R1),
            uniform_real_s(AlgHandler, Next, M1, -56, R2, V2, 56)
    end.

uniform_real_s(AlgHandler, _Next, M0, -1064, R1, V1, Bits) ->
    B0 = 53 - bc(M0, 1 bsl (52 - 1), 52),
    {(M0 bsl B0 bor (V1 bsr (Bits - B0))) * math:pow(2.0, -1064 - B0),
     {AlgHandler, R1}};
uniform_real_s(AlgHandler, Next, M0, BitNo, R1, V1, Bits) ->
    if
        1 bsl 51 =< M0 ->
            {(M0 bsl 1 bor (V1 bsr (Bits - 1)))
             *
             math:pow(2.0, BitNo - 1),
             {AlgHandler, R1}};
        1 bsl 50 =< M0 ->
            {(M0 bsl 2 bor (V1 bsr (Bits - 2)))
             *
             math:pow(2.0, BitNo - 2),
             {AlgHandler, R1}};
        1 bsl 49 =< M0 ->
            {(M0 bsl 3 bor (V1 bsr (Bits - 3)))
             *
             math:pow(2.0, BitNo - 3),
             {AlgHandler, R1}};
        M0 == 0 ->
            M1 = V1 bsr (Bits - 56),
            if
                1 bsl 55 =< M1 ->
                    {(M1 bsr 3) * math:pow(2.0, BitNo - 53),
                     {AlgHandler, R1}};
                1 bsl 54 =< M1 ->
                    {(M1 bsr 2) * math:pow(2.0, BitNo - 54),
                     {AlgHandler, R1}};
                1 bsl 53 =< M1 ->
                    {(M1 bsr 1) * math:pow(2.0, BitNo - 55),
                     {AlgHandler, R1}};
                1 bsl 52 =< M1 ->
                    {M1 * math:pow(2.0, BitNo - 56), {AlgHandler, R1}};
                BitNo =:= -1008 ->
                    if
                        1 bsl 42 =< M1 ->
                            uniform_real_s(AlgHandler, Next, M1,
                                           BitNo - 56,
                                           R1);
                        true ->
                            uniform_real_s({AlgHandler, R1})
                    end;
                true ->
                    uniform_real_s(AlgHandler, Next, M1, BitNo - 56, R1)
            end;
        true ->
            B0 = 53 - bc(M0, 1 bsl (49 - 1), 49),
            {(M0 bsl B0 bor (V1 bsr (Bits - B0)))
             *
             math:pow(2.0, BitNo - B0),
             {AlgHandler, R1}}
    end.

uniform_real_s(#{bits := Bits} = AlgHandler, Next, M0, BitNo, R0) ->
    {V1, R1} = Next(R0),
    uniform_real_s(AlgHandler, Next, M0, BitNo, R1, V1, Bits);
uniform_real_s(#{max := _} = AlgHandler, Next, M0, BitNo, R0) ->
    {V1, R1} = Next(R0),
    uniform_real_s(AlgHandler, Next, M0, BitNo, R1,
                   V1 band (1 bsl 56 - 1),
                   56).

-spec bytes(N :: non_neg_integer()) -> Bytes :: binary().

bytes(N) ->
    {Bytes, State} = bytes_s(N, seed_get()),
    _ = seed_put(State),
    Bytes.

-spec bytes_s(N :: non_neg_integer(), State :: state()) ->
                 {Bytes :: binary(), NewState :: state()}.

bytes_s(N, {#{bits := Bits, next := Next} = AlgHandler, R})
    when is_integer(N), 0 =< N ->
    WeakLowBits = maps:get(weak_low_bits, AlgHandler, 0),
    bytes_r(N, AlgHandler, Next, R, Bits, WeakLowBits);
bytes_s(N, {#{max := Mask, next := Next} = AlgHandler, R})
    when is_integer(N), 0 =< N, 1 bsl 58 - 1 =< Mask ->
    Bits = 58,
    WeakLowBits = 2,
    bytes_r(N, AlgHandler, Next, R, Bits, WeakLowBits).

bytes_r(N, AlgHandler, Next, R, Bits, WeakLowBits) ->
    GoodBytes = Bits - WeakLowBits bsr 3,
    GoodBits = GoodBytes bsl 3,
    Shift = Bits - GoodBits,
    bytes_r(N, AlgHandler, Next, R, <<>>, GoodBytes, GoodBits, Shift).

bytes_r(N0, AlgHandler, Next, R0, Bytes0, GoodBytes, GoodBits, Shift)
    when GoodBytes bsl 2 < N0 ->
    {V1, R1} = Next(R0),
    {V2, R2} = Next(R1),
    {V3, R3} = Next(R2),
    {V4, R4} = Next(R3),
    Bytes1 =
        <<Bytes0/binary,
          (V1 bsr Shift):GoodBits,
          (V2 bsr Shift):GoodBits,
          (V3 bsr Shift):GoodBits,
          (V4 bsr Shift):GoodBits>>,
    N1 = N0 - (GoodBytes bsl 2),
    bytes_r(N1, AlgHandler, Next, R4, Bytes1, GoodBytes, GoodBits,
            Shift);
bytes_r(N0, AlgHandler, Next, R0, Bytes0, GoodBytes, GoodBits, Shift)
    when GoodBytes < N0 ->
    {V, R1} = Next(R0),
    Bytes1 = <<Bytes0/binary,(V bsr Shift):GoodBits>>,
    N1 = N0 - GoodBytes,
    bytes_r(N1, AlgHandler, Next, R1, Bytes1, GoodBytes, GoodBits,
            Shift);
bytes_r(N, AlgHandler, Next, R0, Bytes, _GoodBytes, GoodBits, _Shift) ->
    {V, R1} = Next(R0),
    Bits = N bsl 3,
    Shift = GoodBits - Bits,
    {<<Bytes/binary,(V bsr Shift):Bits>>, {AlgHandler, R1}}.

-spec jump(State :: state()) -> NewState :: state().

jump(State = {#{jump := Jump}, _}) ->
    Jump(State);
jump({#{}, _}) ->
    error(not_implemented).

-spec jump() -> NewState :: state().

jump() ->
    seed_put(jump(seed_get())).

-spec normal() -> X :: float().

normal() ->
    {X, Seed} = normal_s(seed_get()),
    _ = seed_put(Seed),
    X.

-spec normal(Mean :: number(), Variance :: number()) -> X :: float().

normal(Mean, Variance) ->
    Mean + math:sqrt(Variance) * normal().

-spec normal_s(State :: state()) -> {X :: float(), NewState :: state()}.

normal_s(State0) ->
    {Sign, R, State} = get_52(State0),
    Idx = R band (1 bsl 8 - 1),
    Idx1 = Idx + 1,
    {Ki, Wi} = normal_kiwi(Idx1),
    X = R * Wi,
    case R < Ki of
        true when Sign =:= 0 ->
            {X, State};
        true ->
            {-X, State};
        false when Sign =:= 0 ->
            normal_s(Idx, Sign, X, State);
        false ->
            normal_s(Idx, Sign, -X, State)
    end.

-spec normal_s(Mean, Variance, State) ->
                  {X :: float(), NewState :: state()}
                  when
                      Mean :: number(),
                      Variance :: number(),
                      State :: state().

normal_s(Mean, Variance, State0) when 0 =< Variance ->
    {X, State} = normal_s(State0),
    {Mean + math:sqrt(Variance) * X, State}.

-spec seed_put(state()) -> state().

seed_put(Seed) ->
    put(rand_seed, Seed),
    Seed.

seed_get() ->
    case get(rand_seed) of
        undefined ->
            seed(exsss);
        Old ->
            Old
    end.

mk_alg(exs64) ->
    {#{type => exs64, max => 1 bsl 64 - 1, next => fun exs64_next/1},
     fun exs64_seed/1};
mk_alg(exsplus) ->
    {#{type => exsplus,
       max => 1 bsl 58 - 1,
       next => fun exsp_next/1,
       jump => fun exsplus_jump/1},
     fun exsplus_seed/1};
mk_alg(exsp) ->
    {#{type => exsp,
       bits => 58,
       weak_low_bits => 1,
       next => fun exsp_next/1,
       uniform => fun exsp_uniform/1,
       uniform_n => fun exsp_uniform/2,
       jump => fun exsplus_jump/1},
     fun exsplus_seed/1};
mk_alg(exsss) ->
    {#{type => exsss,
       bits => 58,
       next => fun exsss_next/1,
       uniform => fun exsss_uniform/1,
       uniform_n => fun exsss_uniform/2,
       jump => fun exsplus_jump/1},
     fun exsss_seed/1};
mk_alg(exs1024) ->
    {#{type => exs1024,
       max => 1 bsl 64 - 1,
       next => fun exs1024_next/1,
       jump => fun exs1024_jump/1},
     fun exs1024_seed/1};
mk_alg(exs1024s) ->
    {#{type => exs1024s,
       bits => 64,
       weak_low_bits => 3,
       next => fun exs1024_next/1,
       jump => fun exs1024_jump/1},
     fun exs1024_seed/1};
mk_alg(exrop) ->
    {#{type => exrop,
       bits => 58,
       weak_low_bits => 1,
       next => fun exrop_next/1,
       uniform => fun exrop_uniform/1,
       uniform_n => fun exrop_uniform/2,
       jump => fun exrop_jump/1},
     fun exrop_seed/1};
mk_alg(exro928ss) ->
    {#{type => exro928ss,
       bits => 58,
       next => fun exro928ss_next/1,
       uniform => fun exro928ss_uniform/1,
       uniform_n => fun exro928ss_uniform/2,
       jump => fun exro928_jump/1},
     fun exro928_seed/1};
mk_alg(dummy = Name) ->
    {#{type => Name,
       bits => 58,
       next => fun dummy_next/1,
       uniform => fun dummy_uniform/1,
       uniform_n => fun dummy_uniform/2},
     fun dummy_seed/1}.

-opaque exs64_state() :: uint64().

exs64_seed(L) when is_list(L) ->
    [R] = seed64_nz(1, L),
    R;
exs64_seed(A) when is_integer(A) ->
    [R] = seed64(1, A),
    R;
exs64_seed({A1, A2, A3}) ->
    {V1, _} = exs64_next(A1 band (1 bsl 32 - 1) * 4294967197 + 1),
    {V2, _} = exs64_next(A2 band (1 bsl 32 - 1) * 4294967231 + 1),
    {V3, _} = exs64_next(A3 band (1 bsl 32 - 1) * 4294967279 + 1),
    V1 * V2 * V3 rem (1 bsl 64 - 1 - 1) + 1.

-spec exs64_next(exs64_state()) -> {uint64(), exs64_state()}.

exs64_next(R) ->
    R1 = R bxor (R bsr 12),
    R2 = R1 bxor (R1 band (1 bsl (64 - 25) - 1) bsl 25),
    R3 = R2 bxor (R2 bsr 27),
    {R3 * 2685821657736338717 band (1 bsl 64 - 1), R3}.

-opaque exsplus_state() :: nonempty_improper_list(uint58(), uint58()).

-dialyzer({no_improper_lists, {exsplus_seed, 1}}).

exsplus_seed(L) when is_list(L) ->
    [S0, S1] = seed58_nz(2, L),
    [S0 | S1];
exsplus_seed(X) when is_integer(X) ->
    [S0, S1] = seed58(2, X),
    [S0 | S1];
exsplus_seed({A1, A2, A3}) ->
    {_, R1} =
        exsp_next([(A1 * 4294967197 + 1) band (1 bsl 58 - 1) |
                   (A2 * 4294967231 + 1) band (1 bsl 58 - 1)]),
    {_, R2} =
        exsp_next([(A3 * 4294967279 + 1) band (1 bsl 58 - 1) | tl(R1)]),
    R2.

-dialyzer({no_improper_lists, {exsss_seed, 1}}).

exsss_seed(L) when is_list(L) ->
    [S0, S1] = seed58_nz(2, L),
    [S0 | S1];
exsss_seed(X) when is_integer(X) ->
    [S0, S1] = seed58(2, X),
    [S0 | S1];
exsss_seed({A1, A2, A3}) ->
    {_, X0} = seed58(A1),
    {S0, X1} = seed58(A2 bxor X0),
    {S1, _} = seed58(A3 bxor X1),
    [S0 | S1].

-dialyzer({no_improper_lists, {exsp_next, 1}}).

-spec exsp_next(AlgState :: exsplus_state()) ->
                   {X :: uint58(), NewAlgState :: exsplus_state()}.

exsp_next([S1 | S0]) ->
    S0_1 = S0 band (1 bsl 58 - 1),
    NewS1 =
        begin
            S1_b =
                S1 band (1 bsl 58 - 1)
                bxor
                (S1 band (1 bsl (58 - 24) - 1) bsl 24),
            S1_b bxor S0_1 bxor (S1_b bsr 11) bxor (S0_1 bsr 41)
        end,
    {(S0_1 + NewS1) band (1 bsl 58 - 1), [S0_1 | NewS1]}.

-dialyzer({no_improper_lists, {exsss_next, 1}}).

-spec exsss_next(exsplus_state()) -> {uint58(), exsplus_state()}.

exsss_next([S1 | S0]) ->
    S0_1 = S0 band (1 bsl 58 - 1),
    NewS1 =
        begin
            S1_b =
                S1 band (1 bsl 58 - 1)
                bxor
                (S1 band (1 bsl (58 - 24) - 1) bsl 24),
            S1_b bxor S0_1 bxor (S1_b bsr 11) bxor (S0_1 bsr 41)
        end,
    {begin
         V_1 = S0_1 + (S0_1 band (1 bsl (58 - 2) - 1) bsl 2),
         V_2 =
             V_1 band (1 bsl (58 - 7) - 1) bsl 7
             bor
             (V_1 bsr (58 - 7)) band (1 bsl 7 - 1),
         (V_2 + (V_2 band (1 bsl (58 - 3) - 1) bsl 3))
         band
         (1 bsl 58 - 1)
     end,
     [S0_1 | NewS1]}.

exsp_uniform({AlgHandler, R0}) ->
    {I, R1} = exsp_next(R0),
    {(I bsr (58 - 53)) * 1.1102230246251565e-16, {AlgHandler, R1}}.

exsss_uniform({AlgHandler, R0}) ->
    {I, R1} = exsss_next(R0),
    {(I bsr (58 - 53)) * 1.1102230246251565e-16, {AlgHandler, R1}}.

exsp_uniform(Range, {AlgHandler, R}) ->
    {V, R1} = exsp_next(R),
    MaxMinusRange = 1 bsl 58 - Range,
    if
        0 =< MaxMinusRange ->
            if
                V < Range ->
                    {V + 1, {AlgHandler, R1}};
                true ->
                    I = V rem Range,
                    if
                        V - I =< MaxMinusRange ->
                            {I + 1, {AlgHandler, R1}};
                        true ->
                            exsp_uniform(Range, {AlgHandler, R1})
                    end
            end;
        true ->
            uniform_range(Range, AlgHandler, R1, V)
    end.

exsss_uniform(Range, {AlgHandler, R}) ->
    {V, R1} = exsss_next(R),
    MaxMinusRange = 1 bsl 58 - Range,
    if
        0 =< MaxMinusRange ->
            if
                V < Range ->
                    {V + 1, {AlgHandler, R1}};
                true ->
                    I = V rem Range,
                    if
                        V - I =< MaxMinusRange ->
                            {I + 1, {AlgHandler, R1}};
                        true ->
                            exsss_uniform(Range, {AlgHandler, R1})
                    end
            end;
        true ->
            uniform_range(Range, AlgHandler, R1, V)
    end.

-dialyzer({no_improper_lists, {exsplus_jump, 1}}).

-spec exsplus_jump({alg_handler(), exsplus_state()}) ->
                      {alg_handler(), exsplus_state()}.

exsplus_jump({AlgHandler, S}) ->
    {AlgHandler, exsp_jump(S)}.

-dialyzer({no_improper_lists, {exsp_jump, 1}}).

-spec exsp_jump(AlgState :: exsplus_state()) ->
                   NewAlgState :: exsplus_state().

exsp_jump(S) ->
    {S1, AS1} = exsplus_jump(S, [0 | 0], 13386170678560663, 58),
    {_, AS2} = exsplus_jump(S1, AS1, 235826144310425740, 58),
    AS2.

-dialyzer({no_improper_lists, {exsplus_jump, 4}}).

exsplus_jump(S, AS, _, 0) ->
    {S, AS};
exsplus_jump(S, [AS0 | AS1], J, N) ->
    {_, NS} = exsp_next(S),
    case J band (1 bsl 1 - 1) of
        1 ->
            [S0 | S1] = S,
            exsplus_jump(NS,
                         [AS0 bxor S0 | AS1 bxor S1],
                         J bsr 1,
                         N - 1);
        0 ->
            exsplus_jump(NS, [AS0 | AS1], J bsr 1, N - 1)
    end.

-opaque exs1024_state() :: {[uint64()], [uint64()]}.

exs1024_seed(L) when is_list(L) ->
    {seed64_nz(16, L), []};
exs1024_seed(X) when is_integer(X) ->
    {seed64(16, X), []};
exs1024_seed({A1, A2, A3}) ->
    B1 = (A1 band (1 bsl 21 - 1) + 1) * 2097131 band (1 bsl 21 - 1),
    B2 = (A2 band (1 bsl 21 - 1) + 1) * 2097133 band (1 bsl 21 - 1),
    B3 = (A3 band (1 bsl 21 - 1) + 1) * 2097143 band (1 bsl 21 - 1),
    {exs1024_gen1024(B1 bsl 43 bor (B2 bsl 22) bor (B3 bsl 1) bor 1),
     []}.

-spec exs1024_gen1024(uint64()) -> [uint64()].

exs1024_gen1024(R) ->
    exs1024_gen1024(16, R, []).

exs1024_gen1024(0, _, L) ->
    L;
exs1024_gen1024(N, R, L) ->
    {X, R2} = exs64_next(R),
    exs1024_gen1024(N - 1, R2, [X | L]).

-spec exs1024_calc(uint64(), uint64()) -> {uint64(), uint64()}.

exs1024_calc(S0, S1) ->
    S11 = S1 bxor (S1 band (1 bsl (64 - 31) - 1) bsl 31),
    S12 = S11 bxor (S11 bsr 11),
    S01 = S0 bxor (S0 bsr 30),
    NS1 = S01 bxor S12,
    {NS1 * 1181783497276652981 band (1 bsl 64 - 1), NS1}.

-spec exs1024_next(exs1024_state()) -> {uint64(), exs1024_state()}.

exs1024_next({[S0, S1 | L3], RL}) ->
    {X, NS1} = exs1024_calc(S0, S1),
    {X, {[NS1 | L3], [S0 | RL]}};
exs1024_next({[H], RL}) ->
    NL = [H | lists:reverse(RL)],
    exs1024_next({NL, []}).

-spec exs1024_jump({alg_handler(), exs1024_state()}) ->
                      {alg_handler(), exs1024_state()}.

exs1024_jump({AlgHandler, {L, RL}}) ->
    P = length(RL),
    AS =
        exs1024_jump({L, RL},
                     [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
                     [114527183042123105, 160423628620659260,
                      284733707589872850, 164435740288387503,
                      259572741793888962, 215793509705812255,
                      228241955430903492, 221708554683218499,
                      212006596549813798, 139215019150089363,
                      23964000621384961, 55201052708218217,
                      112969240468397636, 22130735059088892,
                      244278597799509466, 220175845070832114,
                      43243288828],
                     10185424423732253, 58, 1024),
    {ASL, ASR} = lists:split(16 - P, AS),
    {AlgHandler, {ASL, lists:reverse(ASR)}}.

exs1024_jump(_, AS, _, _, _, 0) ->
    AS;
exs1024_jump(S, AS, [H | T], _, 0, TN) ->
    exs1024_jump(S, AS, T, H, 58, TN);
exs1024_jump({L, RL}, AS, JL, J, N, TN) ->
    {_, NS} = exs1024_next({L, RL}),
    case J band (1 bsl 1 - 1) of
        1 ->
            AS2 =
                [ 
                 X bxor Y ||
                     X <- AS&&
                     Y <- L ++ lists:reverse(RL)
                ],
            exs1024_jump(NS, AS2, JL, J bsr 1, N - 1, TN - 1);
        0 ->
            exs1024_jump(NS, AS, JL, J bsr 1, N - 1, TN - 1)
    end.

-opaque exro928_state() :: {[uint58()], [uint58()]}.

-spec exro928_seed([uint58()] |
                   integer() |
                   {integer(), integer(), integer()}) ->
                      exro928_state().

exro928_seed(L) when is_list(L) ->
    {seed58_nz(16, L), []};
exro928_seed(X) when is_integer(X) ->
    {seed58(16, X), []};
exro928_seed({A1, A2, A3}) ->
    {S0, X0} = seed58(A1),
    {S1, X1} = seed58(A2 bxor X0),
    {S2, X2} = seed58(A3 bxor X1),
    {[S0, S1, S2 | seed58(13, X2)], []}.

-spec exro928ss_next(exro928_state()) -> {uint58(), exro928_state()}.

exro928ss_next({[S15, S0 | Ss], Rs}) ->
    SR = exro928_next_state(Ss, Rs, S15, S0),
    {begin
         V_0 = S0 + (S0 band (1 bsl (58 - 2) - 1) bsl 2),
         V_1 =
             V_0 band (1 bsl (58 - 7) - 1) bsl 7
             bor
             (V_0 bsr (58 - 7)) band (1 bsl 7 - 1),
         (V_1 + (V_1 band (1 bsl (58 - 3) - 1) bsl 3))
         band
         (1 bsl 58 - 1)
     end,
     SR};
exro928ss_next({[S15], Rs}) ->
    exro928ss_next({[S15 | lists:reverse(Rs)], []}).

-spec exro928_next(exro928_state()) ->
                      {{uint58(), uint58()}, exro928_state()}.

exro928_next({[S15, S0 | Ss], Rs}) ->
    SR = exro928_next_state(Ss, Rs, S15, S0),
    {{S15, S0}, SR};
exro928_next({[S15], Rs}) ->
    exro928_next({[S15 | lists:reverse(Rs)], []}).

-spec exro928_next_state(exro928_state()) -> exro928_state().

exro928_next_state({[S15, S0 | Ss], Rs}) ->
    exro928_next_state(Ss, Rs, S15, S0);
exro928_next_state({[S15], Rs}) ->
    [S0 | Ss] = lists:reverse(Rs),
    exro928_next_state(Ss, [], S15, S0).

exro928_next_state(Ss, Rs, S15, S0) ->
    S0_1 = S0 band (1 bsl 58 - 1),
    Q = S15 band (1 bsl 58 - 1) bxor S0_1,
    NewS15 =
        S0_1 band (1 bsl (58 - 44) - 1) bsl 44 bor (S0_1 bsr (58 - 44))
        bxor
        Q
        bxor
        (Q band (1 bsl (58 - 9) - 1) bsl 9),
    NewS0 = Q band (1 bsl (58 - 45) - 1) bsl 45 bor (Q bsr (58 - 45)),
    {[NewS0 | Ss], [NewS15 | Rs]}.

exro928ss_uniform({AlgHandler, SR}) ->
    {V, NewSR} = exro928ss_next(SR),
    {(V bsr (58 - 53)) * 1.1102230246251565e-16, {AlgHandler, NewSR}}.

exro928ss_uniform(Range, {AlgHandler, SR}) ->
    {V, NewSR} = exro928ss_next(SR),
    MaxMinusRange = 1 bsl 58 - Range,
    if
        0 =< MaxMinusRange ->
            if
                V < Range ->
                    {V + 1, {AlgHandler, NewSR}};
                true ->
                    I = V rem Range,
                    if
                        V - I =< MaxMinusRange ->
                            {I + 1, {AlgHandler, NewSR}};
                        true ->
                            exro928ss_uniform(Range,
                                              {AlgHandler, NewSR})
                    end
            end;
        true ->
            uniform_range(Range, AlgHandler, NewSR, V)
    end.

-spec exro928_jump({alg_handler(), exro928_state()}) ->
                      {alg_handler(), exro928_state()}.

exro928_jump({AlgHandler, SR}) ->
    {AlgHandler, exro928_jump_2pow512(SR)}.

-spec exro928_jump_2pow512(exro928_state()) -> exro928_state().

exro928_jump_2pow512(SR) ->
    polyjump(SR,
             fun exro928_next_state/1,
             [290573448171827402, 382251779910418577,
              423857156240780192, 317638803078791815,
              312577798172065765, 305801842905235492,
              450887821400921554, 490154825290594607,
              507224882549817556, 305131922350994371,
              524004876356613068, 399286492428034246,
              556129459533271918, 302163523288674092,
              295571835370094372, 487547435355635071]).

-spec exro928_jump_2pow20(exro928_state()) -> exro928_state().

exro928_jump_2pow20(SR) ->
    polyjump(SR,
             fun exro928_next_state/1,
             [412473694820566502, 432883605991317039,
              525373508288112196, 403915169708599875,
              319067783491633768, 301226760020322060,
              311627678308842608, 376040681981803602,
              339701046172540810, 406476937554306621,
              319178240279900411, 538961455727032748,
              343829982822907227, 562090186051299616,
              294421712295949406, 517056752316592047]).

-opaque exrop_state() :: nonempty_improper_list(uint58(), uint58()).

-dialyzer({no_improper_lists, {exrop_seed, 1}}).

exrop_seed(L) when is_list(L) ->
    [S0, S1] = seed58_nz(2, L),
    [S0 | S1];
exrop_seed(X) when is_integer(X) ->
    [S0, S1] = seed58(2, X),
    [S0 | S1];
exrop_seed({A1, A2, A3}) ->
    [_ | S1] =
        exrop_next_s((A1 * 4294967197 + 1) band (1 bsl 58 - 1),
                     (A2 * 4294967231 + 1) band (1 bsl 58 - 1)),
    exrop_next_s((A3 * 4294967279 + 1) band (1 bsl 58 - 1), S1).

-dialyzer({no_improper_lists, {exrop_next_s, 2}}).

exrop_next_s(S0, S1) ->
    begin
        S1_a = S1 bxor S0,
        [S0 band (1 bsl (58 - 24) - 1) bsl 24 bor (S0 bsr (58 - 24))
         bxor
         S1_a
         bxor
         (S1_a band (1 bsl (58 - 2) - 1) bsl 2) |
         S1_a band (1 bsl (58 - 35) - 1) bsl 35 bor (S1_a bsr (58 - 35))]
    end.

-dialyzer({no_improper_lists, {exrop_next, 1}}).

exrop_next([S0 | S1]) ->
    {(S0 + S1) band (1 bsl 58 - 1),
     begin
         S1_a = S1 bxor S0,
         [S0 band (1 bsl (58 - 24) - 1) bsl 24 bor (S0 bsr (58 - 24))
          bxor
          S1_a
          bxor
          (S1_a band (1 bsl (58 - 2) - 1) bsl 2) |
          S1_a band (1 bsl (58 - 35) - 1) bsl 35
          bor
          (S1_a bsr (58 - 35))]
     end}.

exrop_uniform({AlgHandler, R}) ->
    {V, R1} = exrop_next(R),
    {(V bsr (58 - 53)) * 1.1102230246251565e-16, {AlgHandler, R1}}.

exrop_uniform(Range, {AlgHandler, R}) ->
    {V, R1} = exrop_next(R),
    MaxMinusRange = 1 bsl 58 - Range,
    if
        0 =< MaxMinusRange ->
            if
                V < Range ->
                    {V + 1, {AlgHandler, R1}};
                true ->
                    I = V rem Range,
                    if
                        V - I =< MaxMinusRange ->
                            {I + 1, {AlgHandler, R1}};
                        true ->
                            exrop_uniform(Range, {AlgHandler, R1})
                    end
            end;
        true ->
            uniform_range(Range, AlgHandler, R1, V)
    end.

exrop_jump({AlgHandler, S}) ->
    [J | Js] =
        [1 bsl 58
         bor
         49452476321943384982939338509431082 band (1 bsl 58 - 1),
         49452476321943384982939338509431082 bsr 58],
    {AlgHandler, exrop_jump(S, 0, 0, J, Js)}.

-dialyzer({no_improper_lists, {exrop_jump, 5}}).

exrop_jump(_S, S0, S1, 0, []) ->
    [S0 | S1];
exrop_jump(S, S0, S1, 1, [J | Js]) ->
    exrop_jump(S, S0, S1, J, Js);
exrop_jump([S__0 | S__1] = _S, S0, S1, J, Js) ->
    case J band (1 bsl 1 - 1) of
        1 ->
            NewS = exrop_next_s(S__0, S__1),
            exrop_jump(NewS, S0 bxor S__0, S1 bxor S__1, J bsr 1, Js);
        0 ->
            NewS = exrop_next_s(S__0, S__1),
            exrop_jump(NewS, S0, S1, J bsr 1, Js)
    end.

-type dummy_state() :: uint58().

dummy_uniform(_Range, {AlgHandler, R}) ->
    {1, {AlgHandler, R bxor (1 bsl 58 - 1)}}.

dummy_next(R) ->
    {R, R bxor (1 bsl 58 - 1)}.

dummy_uniform({AlgHandler, R}) ->
    {0.5, {AlgHandler, R bxor (1 bsl 58 - 1)}}.

dummy_seed(L) when is_list(L) ->
    case L of
        [] ->
            error(zero_seed);
        [X] when is_integer(X) ->
            X band (1 bsl 58 - 1);
        [X | _] when is_integer(X) ->
            error(too_many_seed_integers);
        [_ | _] ->
            error(non_integer_seed)
    end;
dummy_seed(X) when is_integer(X) ->
    {Z1, _} = splitmix64_next(X),
    Z1 band (1 bsl 58 - 1);
dummy_seed({A1, A2, A3}) ->
    {_, X1} = splitmix64_next(A1),
    {_, X2} = splitmix64_next(A2 bxor X1),
    {Z3, _} = splitmix64_next(A3 bxor X2),
    Z3 band (1 bsl 58 - 1).

-type mwc59_state() :: 1..133850370 bsl 32 - 1 - 1.

-spec mwc59(CX0 :: mwc59_state()) -> CX1 :: mwc59_state().

mwc59(CX) when is_integer(CX), 1 =< CX, CX < 133850370 bsl 32 - 1 ->
    C = CX bsr 32,
    X = CX band (1 bsl 32 - 1),
    133850370 * X + C.

-spec mwc59_value32(CX :: mwc59_state()) -> V :: 0..1 bsl 32 - 1.

mwc59_value32(CX1)
    when is_integer(CX1), 1 =< CX1, CX1 < 133850370 bsl 32 - 1 ->
    CX = CX1 band (1 bsl 32 - 1),
    CX bxor (CX band (1 bsl (32 - 8) - 1) bsl 8).

-spec mwc59_value(CX :: mwc59_state()) -> V :: 0..1 bsl 59 - 1.

mwc59_value(CX) when is_integer(CX), 1 =< CX, CX < 133850370 bsl 32 - 1 ->
    CX2 = CX bxor (CX band (1 bsl (59 - 4) - 1) bsl 4),
    CX2 bxor (CX2 band (1 bsl (59 - 27) - 1) bsl 27).

-spec mwc59_float(CX :: mwc59_state()) -> V :: float().

mwc59_float(CX1)
    when is_integer(CX1), 1 =< CX1, CX1 < 133850370 bsl 32 - 1 ->
    CX = CX1 band (1 bsl 53 - 1),
    CX2 = CX bxor (CX band (1 bsl (53 - 4) - 1) bsl 4),
    CX3 = CX2 bxor (CX2 band (1 bsl (53 - 27) - 1) bsl 27),
    CX3 * 1.1102230246251565e-16.

-spec mwc59_seed() -> CX :: mwc59_state().

mwc59_seed() ->
    {A1, A2, A3} = default_seed(),
    X1 = hash58(A1),
    X2 = hash58(A2),
    X3 = hash58(A3),
    X1 bxor X2 bxor X3 + 1.

-spec mwc59_seed(S :: 0..1 bsl 58 - 1) -> CX :: mwc59_state().

mwc59_seed(S) when is_integer(S), 0 =< S, S =< 1 bsl 58 - 1 ->
    hash58(S) + 1.

hash58(X) ->
    X0 = X band (1 bsl 58 - 1),
    X1 = (X0 bxor (X0 bsr 29)) * 239165597161983181 band (1 bsl 58 - 1),
    X2 = (X1 bxor (X1 bsr 29)) * 58188346220211283 band (1 bsl 58 - 1),
    X2 bxor (X2 bsr 29).

seed58_nz(N, Ss) ->
    seed_nz(N, Ss, 58, false).

seed64_nz(N, Ss) ->
    seed_nz(N, Ss, 64, false).

seed_nz(_N, [], _M, false) ->
    error(zero_seed);
seed_nz(0, [_ | _], _M, _NZ) ->
    error(too_many_seed_integers);
seed_nz(0, [], _M, _NZ) ->
    [];
seed_nz(N, [], M, true) ->
    [0 | seed_nz(N - 1, [], M, true)];
seed_nz(N, [S | Ss], M, NZ) ->
    if
        is_integer(S) ->
            R = S band (1 bsl M - 1),
            [R |
             seed_nz(N - 1,
                     Ss, M,
                     NZ
                     orelse
                     R =/= 0)];
        true ->
            error(non_integer_seed)
    end.

-spec seed58(non_neg_integer(), uint64()) -> [uint58()].

seed58(0, _X) ->
    [];
seed58(N, X) ->
    {Z, NewX} = seed58(X),
    [Z | seed58(N - 1, NewX)].

seed58(X_0) ->
    {Z0, X} = splitmix64_next(X_0),
    case Z0 band (1 bsl 58 - 1) of
        0 ->
            seed58(X);
        Z ->
            {Z, X}
    end.

-spec seed64(non_neg_integer(), uint64()) -> [uint64()].

seed64(0, _X) ->
    [];
seed64(N, X) ->
    {Z, NewX} = seed64(X),
    [Z | seed64(N - 1, NewX)].

seed64(X_0) ->
    {Z, X} = ZX = splitmix64_next(X_0),
    if
        Z =:= 0 ->
            seed64(X);
        true ->
            ZX
    end.

-type splitmix64_state() :: uint64().

-spec splitmix64_next(AlgState :: integer()) ->
                         {X :: uint64(),
                          NewAlgState :: splitmix64_state()}.

splitmix64_next(X_0) ->
    X = (X_0 + 11400714819323198485) band (1 bsl 64 - 1),
    Z_0 = (X bxor (X bsr 30)) * 13787848793156543929 band (1 bsl 64 - 1),
    Z_1 =
        (Z_0 bxor (Z_0 bsr 27)) * 10723151780598845931
        band
        (1 bsl 64 - 1),
    {(Z_1 bxor (Z_1 bsr 31)) band (1 bsl 64 - 1), X}.

polyjump({Ss, Rs} = SR, NextState, JumpConst) ->
    Ts = lists:duplicate(length(Ss) + length(Rs), 0),
    polyjump(SR, NextState, JumpConst, Ts).

polyjump(_SR, _NextState, [], Ts) ->
    {Ts, []};
polyjump(SR, NextState, [J | Js], Ts) ->
    polyjump(SR, NextState, Js, Ts, J).

polyjump(SR, NextState, Js, Ts, 1) ->
    polyjump(SR, NextState, Js, Ts);
polyjump({Ss, Rs} = SR, NextState, Js, Ts, J) when J =/= 0 ->
    NewSR = NextState(SR),
    NewJ = J bsr 1,
    case J band (1 bsl 1 - 1) of
        0 ->
            polyjump(NewSR, NextState, Js, Ts, NewJ);
        1 ->
            polyjump(NewSR, NextState, Js, xorzip_sr(Ts, Ss, Rs), NewJ)
    end.

xorzip_sr([], [], undefined) ->
    [];
xorzip_sr(Ts, [], Rs) ->
    xorzip_sr(Ts, lists:reverse(Rs), undefined);
xorzip_sr([T | Ts], [S | Ss], Rs) ->
    [T bxor S | xorzip_sr(Ts, Ss, Rs)].

format_jumpconst58(String) ->
    ReOpts = [{newline, any}, {capture, all_but_first, binary}, global],
    {match, Matches} = re:run(String, "0x([a-zA-Z0-9]+)", ReOpts),
    format_jumcons58_matches(lists:reverse(Matches), 0).

format_jumcons58_matches([], J) ->
    format_jumpconst58_value(J);
format_jumcons58_matches([[Bin] | Matches], J) ->
    NewJ = J bsl 64 bor binary_to_integer(Bin, 16),
    format_jumcons58_matches(Matches, NewJ).

format_jumpconst58_value(0) ->
    ok;
format_jumpconst58_value(J) ->
    io:format("16#~s,~n",
              [integer_to_list(J band (1 bsl 58 - 1) bor (1 bsl 58), 16)]),
    format_jumpconst58_value(J bsr 58).

get_52({#{bits := Bits, next := Next} = AlgHandler, S0}) ->
    {Int, S1} = Next(S0),
    {(1 bsl (Bits - 51 - 1)) band Int,
     Int bsr (Bits - 51),
     {AlgHandler, S1}};
get_52({#{next := Next} = AlgHandler, S0}) ->
    {Int, S1} = Next(S0),
    {(1 bsl 51) band Int, Int band (1 bsl 51 - 1), {AlgHandler, S1}}.

normal_s(0, Sign, X0, State0) ->
    {U0, S1} = uniform_s(State0),
    X = -1 / 3.654152885361009 * math:log(U0),
    {U1, S2} = uniform_s(S1),
    Y = -math:log(U1),
    case Y + Y > X * X of
        false ->
            normal_s(0, Sign, X0, S2);
        true when Sign =:= 0 ->
            {3.654152885361009 + X, S2};
        true ->
            {-3.654152885361009 - X, S2}
    end;
normal_s(Idx, _Sign, X, State0) ->
    Fi2 = normal_fi(Idx + 1),
    {U0, S1} = uniform_s(State0),
    case (normal_fi(Idx) - Fi2) * U0 + Fi2 < math:exp(-0.5 * X * X) of
        true ->
            {X, S1};
        false ->
            normal_s(S1)
    end.

normal_kiwi(Indx) ->
    element(Indx,
            {{2104047571236786, 1.736725412160263e-15},
             {0, 9.558660351455634e-17},
             {1693657211986787, 1.2708704834810623e-16},
             {1919380038271141, 1.4909740962495474e-16},
             {2015384402196343, 1.6658733631586268e-16},
             {2068365869448128, 1.8136120810119029e-16},
             {2101878624052573, 1.9429720153135588e-16},
             {2124958784102998, 2.0589500628482093e-16},
             {2141808670795147, 2.1646860576895422e-16},
             {2154644611568301, 2.2622940392218116e-16},
             {2164744887587275, 2.353271891404589e-16},
             {2172897953696594, 2.438723455742877e-16},
             {2179616279372365, 2.5194879829274225e-16},
             {2185247251868649, 2.5962199772528103e-16},
             {2190034623107822, 2.6694407473648285e-16},
             {2194154434521197, 2.7395729685142446e-16},
             {2197736978774660, 2.8069646002484804e-16},
             {2200880740891961, 2.871905890411393e-16},
             {2203661538010620, 2.9346417484728883e-16},
             {2206138681109102, 2.9953809336782113e-16},
             {2208359231806599, 3.054303000719244e-16},
             {2210361007258210, 3.111563633892157e-16},
             {2212174742388539, 3.1672988018581815e-16},
             {2213825672704646, 3.2216280350549905e-16},
             {2215334711002614, 3.274657040793975e-16},
             {2216719334487595, 3.326479811684171e-16},
             {2217994262139172, 3.377180341735323e-16},
             {2219171977965032, 3.4268340353119356e-16},
             {2220263139538712, 3.475508873172976e-16},
             {2221276900117330, 3.523266384600203e-16},
             {2222221164932930, 3.5701624633953494e-16},
             {2223102796829069, 3.616248057159834e-16},
             {2223927782546658, 3.661569752965354e-16},
             {2224701368170060, 3.7061702777236077e-16},
             {2225428170204312, 3.75008892787478e-16},
             {2226112267248242, 3.7933619401549554e-16},
             {2226757276105256, 3.836022812967728e-16},
             {2227366415328399, 3.8781025861250247e-16},
             {2227942558554684, 3.919630085325768e-16},
             {2228488279492521, 3.9606321366256378e-16},
             {2229005890047222, 4.001133755254669e-16},
             {2229497472775193, 4.041158312414333e-16},
             {2229964908627060, 4.080727683096045e-16},
             {2230409900758597, 4.119862377480744e-16},
             {2230833995044585, 4.1585816580828064e-16},
             {2231238597816133, 4.1969036444740733e-16},
             {2231624991250191, 4.234845407152071e-16},
             {2231994346765928, 4.272423051889976e-16},
             {2232347736722750, 4.309651795716294e-16},
             {2232686144665934, 4.346546035512876e-16},
             {2233010474325959, 4.383119410085457e-16},
             {2233321557544881, 4.4193848564470665e-16},
             {2233620161276071, 4.455354660957914e-16},
             {2233906993781271, 4.491040505882875e-16},
             {2234182710130335, 4.52645351185714e-16},
             {2234447917093496, 4.561604276690038e-16},
             {2234703177503020, 4.596502910884941e-16},
             {2234949014150181, 4.631159070208165e-16},
             {2235185913274316, 4.665581985600875e-16},
             {2235414327692884, 4.699780490694195e-16},
             {2235634679614920, 4.733763047158324e-16},
             {2235847363174595, 4.767537768090853e-16},
             {2236052746716837, 4.8011124396270155e-16},
             {2236251174862869, 4.834494540935008e-16},
             {2236442970379967, 4.867691262742209e-16},
             {2236628435876762, 4.900709524522994e-16},
             {2236807855342765, 4.933555990465414e-16},
             {2236981495548562, 4.966237084322178e-16},
             {2237149607321147, 4.998759003240909e-16},
             {2237312426707209, 5.031127730659319e-16},
             {2237470176035652, 5.0633490483427195e-16},
             {2237623064889403, 5.095428547633892e-16},
             {2237771290995388, 5.127371639978797e-16},
             {2237915041040597, 5.159183566785736e-16},
             {2238054491421305, 5.190869408670343e-16},
             {2238189808931712, 5.222434094134042e-16},
             {2238321151397660, 5.253882407719454e-16},
             {2238448668260432, 5.285218997682382e-16},
             {2238572501115169, 5.316448383216618e-16},
             {2238692784207942, 5.34757496126473e-16},
             {2238809644895133, 5.378603012945235e-16},
             {2238923204068402, 5.409536709623993e-16},
             {2239033576548190, 5.440380118655467e-16},
             {2239140871448443, 5.471137208817361e-16},
             {2239245192514958, 5.501811855460336e-16},
             {2239346638439541, 5.532407845392784e-16},
             {2239445303151952, 5.56292888151909e-16},
             {2239541276091442, 5.593378587248462e-16},
             {2239634642459498, 5.623760510690043e-16},
             {2239725483455293, 5.65407812864896e-16},
             {2239813876495186, 5.684334850436814e-16},
             {2239899895417494, 5.714534021509204e-16},
             {2239983610673676, 5.744678926941961e-16},
             {2240065089506935, 5.774772794756965e-16},
             {2240144396119183, 5.804818799107686e-16},
             {2240221591827230, 5.834820063333892e-16},
             {2240296735208969, 5.864779662894365e-16},
             {2240369882240293, 5.894700628185872e-16},
             {2240441086423386, 5.924585947256134e-16},
             {2240510398907004, 5.95443856841806e-16},
             {2240577868599305, 5.984261402772028e-16},
             {2240643542273726, 6.014057326642664e-16},
             {2240707464668391, 6.043829183936125e-16},
             {2240769678579486, 6.073579788423606e-16},
             {2240830224948980, 6.103311925956439e-16},
             {2240889142947082, 6.133028356617911e-16},
             {2240946470049769, 6.162731816816596e-16},
             {2241002242111691, 6.192425021325847e-16},
             {2241056493434746, 6.222110665273788e-16},
             {2241109256832602, 6.251791426088e-16},
             {2241160563691400, 6.281469965398895e-16},
             {2241210444026879, 6.311148930905604e-16},
             {2241258926538122, 6.34083095820806e-16},
             {2241306038658137, 6.370518672608815e-16},
             {2241351806601435, 6.400214690888025e-16},
             {2241396255408788, 6.429921623054896e-16},
             {2241439408989313, 6.459642074078832e-16},
             {2241481290160038, 6.489378645603397e-16},
             {2241521920683062, 6.519133937646159e-16},
             {2241561321300462, 6.548910550287415e-16},
             {2241599511767028, 6.578711085350741e-16},
             {2241636510880960, 6.608538148078259e-16},
             {2241672336512612, 6.638394348803506e-16},
             {2241707005631362, 6.668282304624746e-16},
             {2241740534330713, 6.698204641081558e-16},
             {2241772937851689, 6.728163993837531e-16},
             {2241804230604585, 6.758163010371901e-16},
             {2241834426189161, 6.78820435168298e-16},
             {2241863537413311, 6.818290694006254e-16},
             {2241891576310281, 6.848424730550038e-16},
             {2241918554154466, 6.878609173251664e-16},
             {2241944481475843, 6.908846754557169e-16},
             {2241969368073071, 6.939140229227569e-16},
             {2241993223025298, 6.969492376174829e-16},
             {2242016054702685, 6.999906000330764e-16},
             {2242037870775710, 7.030383934552151e-16},
             {2242058678223225, 7.060929041565482e-16},
             {2242078483339331, 7.091544215954873e-16},
             {2242097291739040, 7.122232386196779e-16},
             {2242115108362774, 7.152996516745303e-16},
             {2242131937479672, 7.183839610172063e-16},
             {2242147782689725, 7.214764709364707e-16},
             {2242162646924736, 7.245774899788387e-16},
             {2242176532448092, 7.276873311814693e-16},
             {2242189440853337, 7.308063123122743e-16},
             {2242201373061537, 7.339347561177405e-16},
             {2242212329317416, 7.370729905789831e-16},
             {2242222309184237, 7.4022134917658e-16},
             {2242231311537397, 7.433801711647648e-16},
             {2242239334556717, 7.465498018555889e-16},
             {2242246375717369, 7.497305929136979e-16},
             {2242252431779415, 7.529229026624058e-16},
             {2242257498775893, 7.561270964017922e-16},
             {2242261571999416, 7.5934354673958895e-16},
             {2242264645987196, 7.625726339356756e-16},
             {2242266714504453, 7.658147462610487e-16},
             {2242267770526109, 7.690702803721919e-16},
             {2242267806216711, 7.723396417018299e-16},
             {2242266812908462, 7.756232448671174e-16},
             {2242264781077289, 7.789215140963852e-16},
             {2242261700316818, 7.822348836756411e-16},
             {2242257559310145, 7.855637984161084e-16},
             {2242252345799276, 7.889087141441755e-16},
             {2242246046552082, 7.922700982152271e-16},
             {2242238647326615, 7.956484300529366e-16},
             {2242230132832625, 7.99044201715713e-16},
             {2242220486690076, 8.024579184921259e-16},
             {2242209691384458, 8.058900995272657e-16},
             {2242197728218684, 8.093412784821501e-16},
             {2242184577261310, 8.128120042284501e-16},
             {2242170217290819, 8.163028415809877e-16},
             {2242154625735679, 8.198143720706533e-16},
             {2242137778609839, 8.23347194760605e-16},
             {2242119650443327, 8.26901927108847e-16},
             {2242100214207556, 8.304792058805374e-16},
             {2242079441234906, 8.340796881136629e-16},
             {2242057301132135, 8.377040521420222e-16},
             {2242033761687079, 8.413529986798028e-16},
             {2242008788768107, 8.450272519724097e-16},
             {2241982346215682, 8.487275610186155e-16},
             {2241954395725356, 8.524547008695596e-16},
             {2241924896721443, 8.562094740106233e-16},
             {2241893806220517, 8.599927118327665e-16},
             {2241861078683830, 8.638052762005259e-16},
             {2241826665857598, 8.676480611245582e-16},
             {2241790516600041, 8.715219945473698e-16},
             {2241752576693881, 8.754280402517175e-16},
             {2241712788642916, 8.793671999021043e-16},
             {2241671091451078, 8.833405152308408e-16},
             {2241627420382235, 8.873490703813135e-16},
             {2241581706698773, 8.913939944224086e-16},
             {2241533877376767, 8.954764640495068e-16},
             {2241483854795281, 8.9959770648911e-16},
             {2241431556397035, 9.037590026260118e-16},
             {2241376894317345, 9.079616903740068e-16},
             {2241319774977817, 9.122071683134846e-16},
             {2241260098640860, 9.164968996219135e-16},
             {2241197758920538, 9.208324163262308e-16},
             {2241132642244704, 9.252153239095693e-16},
             {2241064627262652, 9.296473063086417e-16},
             {2240993584191742, 9.341301313425265e-16},
             {2240919374095536, 9.38665656618666e-16},
             {2240841848084890, 9.432558359676707e-16},
             {2240760846432232, 9.479027264651738e-16},
             {2240676197587784, 9.526084961066279e-16},
             {2240587717084782, 9.57375432209745e-16},
             {2240495206318753, 9.622059506294838e-16},
             {2240398451183567, 9.671026058823054e-16},
             {2240297220544165, 9.720681022901626e-16},
             {2240191264522612, 9.771053062707209e-16},
             {2240080312570155, 9.822172599190541e-16},
             {2239964071293331, 9.874071960480671e-16},
             {2239842221996530, 9.926785548807976e-16},
             {2239714417896699, 9.980350026183645e-16},
             {2239580280957725, 1.003480452143618e-15},
             {2239439398282193, 1.0090190861637457e-15},
             {2239291317986196, 1.0146553831467086e-15},
             {2239135544468203, 1.0203941464683124e-15},
             {2238971532964979, 1.0262405372613567e-15},
             {2238798683265269, 1.0322001115486456e-15},
             {2238616332424351, 1.03827886235154e-15},
             {2238423746288095, 1.044483267600047e-15},
             {2238220109591890, 1.0508203448355195e-15},
             {2238004514345216, 1.057297713900989e-15},
             {2237775946143212, 1.06392366906768e-15},
             {2237533267957822, 1.0707072623632994e-15},
             {2237275200846753, 1.0776584002668106e-15},
             {2237000300869952, 1.0847879564403425e-15},
             {2236706931309099, 1.0921079038149563e-15},
             {2236393229029147, 1.0996314701785628e-15},
             {2236057063479501, 1.1073733224935752e-15},
             {2235695986373246, 1.1153497865853155e-15},
             {2235307169458859, 1.1235791107110833e-15},
             {2234887326941578, 1.1320817840164846e-15},
             {2234432617919447, 1.140880924258278e-15},
             {2233938522519765, 1.1500027537839792e-15},
             {2233399683022677, 1.159477189144919e-15},
             {2232809697779198, 1.169338578691096e-15},
             {2232160850599817, 1.17962663529558e-15},
             {2231443750584641, 1.190387629928289e-15},
             {2230646845562170, 1.2016759392543819e-15},
             {2229755753817986, 1.2135560818666897e-15},
             {2228752329126533, 1.2261054417450561e-15},
             {2227613325162504, 1.2394179789163251e-15},
             {2226308442121174, 1.2536093926602567e-15},
             {2224797391720399, 1.268824481425501e-15},
             {2223025347823832, 1.2852479319096109e-15},
             {2220915633329809, 1.3031206634689985e-15},
             {2218357446087030, 1.3227655770195326e-15},
             {2215184158448668, 1.3446300925011171e-15},
             {2211132412537369, 1.3693606835128518e-15},
             {2205758503851065, 1.397943667277524e-15},
             {2198248265654987, 1.4319989869661328e-15},
             {2186916352102141, 1.4744848603597596e-15},
             {2167562552481814, 1.5317872741611144e-15},
             {2125549880839716, 1.6227698675312968e-15}}).

normal_fi(Indx) ->
    element(Indx,
            {1.0, 0.9771017012676708, 0.959879091800106,
             0.9451989534422991, 0.9320600759592299, 0.9199915050393465,
             0.9087264400521303, 0.898095921898343, 0.8879846607558328,
             0.8783096558089168, 0.8690086880368565, 0.8600336211963311,
             0.8513462584586775, 0.8429156531122037, 0.834716292986883,
             0.8267268339462209, 0.8189291916037019, 0.8113078743126557,
             0.8038494831709638, 0.7965423304229584, 0.789376143566024,
             0.782341832654802, 0.7754313049811866, 0.7686373157984857,
             0.7619533468367948, 0.7553735065070957, 0.7488924472191564,
             0.7425052963401506, 0.7362075981268621, 0.7299952645614757,
             0.7238645334686297, 0.7178119326307215, 0.711834248878248,
             0.7059285013327538, 0.7000919181365112, 0.6943219161261163,
             0.6886160830046714, 0.6829721616449943, 0.6773880362187731,
             0.6718617198970817, 0.6663913439087498, 0.6609751477766628,
             0.6556114705796969, 0.6502987431108164, 0.645035480820822,
             0.6398202774530561, 0.6346517992876233, 0.6295287799248362,
             0.6244500155470261, 0.619414360605834, 0.6144207238889134,
             0.6094680649257731, 0.6045553906974673, 0.5996817526191248,
             0.5948462437679869, 0.5900479963328255, 0.5852861792633709,
             0.5805599961007903, 0.5758686829723532, 0.5712115067352527,
             0.5665877632561639, 0.5619967758145239, 0.5574378936187655,
             0.5529104904258318, 0.5484139632552654, 0.5439477311900258,
             0.5395112342569516, 0.5351039323804572, 0.5307253044036615,
             0.526374847171684, 0.5220520746723214, 0.5177565172297559,
             0.5134877207473265, 0.5092452459957476, 0.5050286679434679,
             0.5008375751261483, 0.4966715690524893,
             0.49253026364386815, 0.4884132847054576,
             0.4843202694266829, 0.4802508659090464, 0.4762047327195055,
             0.47218153846772976, 0.4681809614056932,
             0.4642026890481739, 0.4602464178128425, 0.4563118526787161,
             0.45239870686184824, 0.44850670150720273,
             0.4446355653957391, 0.44078503466580377,
             0.43695485254798533, 0.4331447691126521,
             0.42935454102944126, 0.4255839313380218,
             0.42183270922949573, 0.41810064983784795,
             0.4143875340408909, 0.410693148270188, 0.40701728432947315,
             0.4033597392211143, 0.399720314980197, 0.39609881851583223,
             0.3924950614593154, 0.38890886001878855,
             0.38534003484007706, 0.38178841087339344,
             0.37825381724561896, 0.37473608713789086,
             0.3712350576682392, 0.36775056977903225,
             0.3642824681290037, 0.36083060098964775,
             0.3573948201457802, 0.35397498080007656,
             0.3505709414814059, 0.3471825639567935,
             0.34380971314685055, 0.34045225704452164,
             0.3371100666370059, 0.33378301583071823,
             0.3304709813791634, 0.3271738428136013,
             0.32389148237639104, 0.3206237849569053,
             0.3173706380299135, 0.31413193159633707,
             0.31090755812628634, 0.3076974125042919,
             0.3045013919766498, 0.3013193961008029, 0.2981513266966853,
             0.29499708779996164, 0.291856585617095, 0.2887297284821827,
             0.2856164268155016, 0.2825165930837074, 0.2794301417616377,
             0.2763569892956681, 0.2732970540685769, 0.2702502563658752,
             0.26721651834356114, 0.2641957639972608,
             0.2611879191327208, 0.2581929113376189, 0.2552106699546617,
             0.2522411260559419, 0.24928421241852824,
             0.24633986350126363, 0.24340801542275012,
             0.2404886059405004, 0.23758157443123795,
             0.2346868618723299, 0.23180441082433859,
             0.22893416541468023, 0.2260760713223802,
             0.22323007576391746, 0.22039612748015194,
             0.21757417672433113, 0.21476417525117358,
             0.21196607630703015, 0.209179834621125,
             0.20640540639788071, 0.20364274931033485,
             0.20089182249465656, 0.1981525865457751,
             0.19542500351413428, 0.19270903690358912,
             0.19000465167046496, 0.18731181422380025,
             0.18463049242679927, 0.18196065559952254,
             0.17930227452284767, 0.176655321443735,
             0.17401977008183875, 0.17139559563750595,
             0.1687827748012115, 0.16618128576448205,
             0.1635911082323657, 0.16101222343751107,
             0.1584446141559243, 0.1558882647244792,
             0.15334316106026283, 0.15080929068184568,
             0.14828664273257453, 0.14577520800599403,
             0.1432749789735134, 0.1407859498144447, 0.1383081164485507,
             0.13584147657125373, 0.13338602969166913,
             0.1309417771736443, 0.12850872227999952,
             0.12608687022018586, 0.12367622820159654,
             0.12127680548479021, 0.11888861344290998,
             0.1165116656256108, 0.11414597782783835, 0.111791568163838,
             0.10944845714681163, 0.10711666777468364,
             0.1047962256224869, 0.10248715894193508,
             0.10018949876880981, 0.09790327903886228,
             0.09562853671300882, 0.09336531191269086,
             0.09111364806637363, 0.08887359206827579,
             0.08664519445055796, 0.08442850957035337,
             0.08222359581320286, 0.08003051581466306,
             0.07784933670209604, 0.07568013035892707,
             0.07352297371398127, 0.07137794905889037,
             0.06924514439700677, 0.0671246538277885,
             0.06501657797124284, 0.06292102443775811,
             0.060838108349539864, 0.05876795292093376,
             0.0567106901062029, 0.054666461324888914,
             0.052635418276792176, 0.05061772386094776,
             0.04861355321586852, 0.04662309490193037,
             0.04464655225129444, 0.04268414491647443,
             0.04073611065594093, 0.03880270740452611,
             0.036884215688567284, 0.034980941461716084,
             0.03309321945857852, 0.031221417191920245,
             0.029365939758133314, 0.027527235669603082,
             0.025705804008548896, 0.023902203305795882,
             0.022117062707308864, 0.020351096230044517,
             0.018605121275724643, 0.016880083152543166,
             0.015177088307935325, 0.01349745060173988,
             0.011842757857907888, 0.010214971439701471,
             0.008616582769398732, 0.007050875471373227,
             0.005522403299250997, 0.0040379725933630305,
             0.0026090727461021627, 0.0012602859304985975}).

bc64(V) ->
    bc(V, 1 bsl (64 - 1), 64).

bc(V, B, N) when B =< V ->
    N;
bc(V, B, N) ->
    bc(V, B bsr 1, N - 1).

make_float(S, E, M) ->
    <<F/float>> = <<S:1,E:11,M:52>>,
    F.

float2str(N) ->
    <<S:1,E:11,M:52>> = <<(erlang:float(N))/float>>,
    lists:flatten(io_lib:format("~c~c.~13.16.0bE~b",
                                [case S of
                                     1 ->
                                         $-;
                                     0 ->
                                         $+
                                 end,
                                 case E of
                                     0 ->
                                         $0;
                                     _ ->
                                         $1
                                 end,
                                 M,
                                 E - 1023])).



