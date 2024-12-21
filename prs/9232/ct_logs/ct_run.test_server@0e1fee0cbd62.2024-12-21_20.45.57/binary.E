-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.2/src/binary.erl", 1).

-module(binary).

-export([replace/3,
         replace/4,
         encode_hex/1,
         encode_hex/2,
         decode_hex/1,
         join/2]).

-export_type([cp/0]).

-opaque cp() :: {am | bm, reference()}.

-type part() :: {Start :: non_neg_integer(), Length :: integer()}.

-export_type([part/0]).

-export([at/2,
         bin_to_list/1,
         bin_to_list/2,
         bin_to_list/3,
         compile_pattern/1,
         copy/1,
         copy/2,
         decode_unsigned/1,
         decode_unsigned/2,
         encode_unsigned/1,
         encode_unsigned/2,
         first/1,
         last/1,
         list_to_bin/1,
         longest_common_prefix/1,
         longest_common_suffix/1,
         match/2,
         match/3,
         matches/2,
         matches/3,
         part/2,
         part/3,
         referenced_byte_size/1,
         split/2,
         split/3]).

-compile({inline,
          [{badarg_with_cause, 2},
           {badarg_with_info, 1},
           {error_with_info, 2}]}).

-spec at(Subject, Pos) -> byte()
            when Subject :: binary(), Pos :: non_neg_integer().

at(_, _) ->
    erlang:nif_error(undef).

-spec bin_to_list(Subject) -> [byte()] when Subject :: binary().

bin_to_list(Subject) ->
    try
        binary_to_list(Subject)
    catch
        error:Reason ->
            error_with_info(Reason, [Subject])
    end.

-spec bin_to_list(Subject, PosLen) -> [byte()]
                     when Subject :: binary(), PosLen :: part().

bin_to_list(Subject, {Pos, Len}) ->
    try
        bin_to_list(Subject, Pos, Len)
    catch
        error:Reason ->
            error_with_info(Reason, [Subject, {Pos, Len}])
    end;
bin_to_list(Subject, BadPosLen) ->
    badarg_with_info([Subject, BadPosLen]).

-spec bin_to_list(Subject, Pos, Len) -> [byte()]
                     when
                         Subject :: binary(),
                         Pos :: non_neg_integer(),
                         Len :: integer().

bin_to_list(Subject, Pos, Len)
    when
        not is_binary(Subject); not is_integer(Pos); not is_integer(Len) ->
    badarg_with_info([Subject, Pos, Len]);
bin_to_list(Subject, Pos, 0) when Pos >= 0, Pos =< byte_size(Subject) ->
    [];
bin_to_list(Subject, Pos, Len) when Len < 0 ->
    try
        bin_to_list(Subject, Pos + Len, -Len)
    catch
        error:Reason ->
            error_with_info(Reason, [Subject, Pos, Len])
    end;
bin_to_list(Subject, Pos, Len) when Len > 0 ->
    try
        binary_to_list(Subject, Pos + 1, Pos + Len)
    catch
        error:Reason ->
            error_with_info(Reason, [Subject, Pos, Len])
    end;
bin_to_list(Subject, Pos, Len) ->
    badarg_with_info([Subject, Pos, Len]).

-spec compile_pattern(Pattern) -> cp()
                         when
                             Pattern ::
                                 PatternBinary | [PatternBinary, ...],
                             PatternBinary :: nonempty_binary().

compile_pattern(_) ->
    erlang:nif_error(undef).

-spec copy(Subject) -> binary() when Subject :: binary().

copy(_) ->
    erlang:nif_error(undef).

-spec copy(Subject, N) -> binary()
              when Subject :: binary(), N :: non_neg_integer().

copy(_, _) ->
    erlang:nif_error(undef).

-spec decode_unsigned(Subject) -> Unsigned
                         when
                             Subject :: binary(),
                             Unsigned :: non_neg_integer().

decode_unsigned(_) ->
    erlang:nif_error(undef).

-spec decode_unsigned(Subject, Endianness) -> Unsigned
                         when
                             Subject :: binary(),
                             Endianness :: big | little,
                             Unsigned :: non_neg_integer().

decode_unsigned(_, _) ->
    erlang:nif_error(undef).

-spec encode_unsigned(Unsigned) -> binary()
                         when Unsigned :: non_neg_integer().

encode_unsigned(_) ->
    erlang:nif_error(undef).

-spec encode_unsigned(Unsigned, Endianness) -> binary()
                         when
                             Unsigned :: non_neg_integer(),
                             Endianness :: big | little.

encode_unsigned(_, _) ->
    erlang:nif_error(undef).

-spec first(Subject) -> byte() when Subject :: binary().

first(_) ->
    erlang:nif_error(undef).

-spec last(Subject) -> byte() when Subject :: binary().

last(_) ->
    erlang:nif_error(undef).

-spec list_to_bin(ByteList) -> binary() when ByteList :: iolist().

list_to_bin(_) ->
    erlang:nif_error(undef).

-spec longest_common_prefix(Binaries) -> non_neg_integer()
                               when Binaries :: [binary(), ...].

longest_common_prefix(_) ->
    erlang:nif_error(undef).

-spec longest_common_suffix(Binaries) -> non_neg_integer()
                               when Binaries :: [binary(), ...].

longest_common_suffix(_) ->
    erlang:nif_error(undef).

-spec match(Subject, Pattern) -> Found | nomatch
               when
                   Subject :: binary(),
                   Pattern ::
                       PatternBinary | [PatternBinary, ...] | cp(),
                   PatternBinary :: nonempty_binary(),
                   Found :: part().

match(_, _) ->
    erlang:nif_error(undef).

-spec match(Subject, Pattern, Options) -> Found | nomatch
               when
                   Subject :: binary(),
                   Pattern ::
                       PatternBinary | [PatternBinary, ...] | cp(),
                   PatternBinary :: nonempty_binary(),
                   Found :: part(),
                   Options :: [Option],
                   Option :: {scope, part()}.

match(_, _, _) ->
    erlang:nif_error(undef).

-spec matches(Subject, Pattern) -> Found
                 when
                     Subject :: binary(),
                     Pattern ::
                         PatternBinary | [PatternBinary, ...] | cp(),
                     PatternBinary :: nonempty_binary(),
                     Found :: [part()].

matches(_, _) ->
    erlang:nif_error(undef).

-spec matches(Subject, Pattern, Options) -> Found
                 when
                     Subject :: binary(),
                     Pattern ::
                         PatternBinary | [PatternBinary, ...] | cp(),
                     PatternBinary :: nonempty_binary(),
                     Found :: [part()],
                     Options :: [Option],
                     Option :: {scope, part()}.

matches(_, _, _) ->
    erlang:nif_error(undef).

-spec part(Subject, PosLen) -> binary()
              when Subject :: binary(), PosLen :: part().

part(_, _) ->
    erlang:nif_error(undef).

-spec part(Subject, Pos, Len) -> binary()
              when
                  Subject :: binary(),
                  Pos :: non_neg_integer(),
                  Len :: integer().

part(_, _, _) ->
    erlang:nif_error(undef).

-spec referenced_byte_size(Binary) -> non_neg_integer()
                              when Binary :: binary().

referenced_byte_size(_) ->
    erlang:nif_error(undef).

-spec split(Subject, Pattern) -> Parts
               when
                   Subject :: binary(),
                   Pattern ::
                       PatternBinary | [PatternBinary, ...] | cp(),
                   PatternBinary :: nonempty_binary(),
                   Parts :: [binary()].

split(_, _) ->
    erlang:nif_error(undef).

-spec split(Subject, Pattern, Options) -> Parts
               when
                   Subject :: binary(),
                   Pattern ::
                       PatternBinary | [PatternBinary, ...] | cp(),
                   PatternBinary :: nonempty_binary(),
                   Options :: [Option],
                   Option :: {scope, part()} | trim | global | trim_all,
                   Parts :: [binary()].

split(_, _, _) ->
    erlang:nif_error(undef).

-spec replace(Subject, Pattern, Replacement) -> Result
                 when
                     Subject :: binary(),
                     Pattern ::
                         PatternBinary | [PatternBinary, ...] | cp(),
                     PatternBinary :: nonempty_binary(),
                     Replacement ::
                         binary() | fun((binary()) -> binary()),
                     Result :: binary().

replace(H, N, R) ->
    try
        replace(H, N, R, [])
    catch
        error:Reason ->
            error_with_info(Reason, [H, N, R])
    end.

-spec replace(Subject, Pattern, Replacement, Options) -> Result
                 when
                     Subject :: binary(),
                     Pattern ::
                         PatternBinary | [PatternBinary, ...] | cp(),
                     PatternBinary :: nonempty_binary(),
                     Replacement ::
                         binary() | fun((binary()) -> binary()),
                     Options :: [Option],
                     Option ::
                         global |
                         {scope, part()} |
                         {insert_replaced, InsPos},
                     InsPos :: OnePos | [OnePos],
                     OnePos :: non_neg_integer(),
                     Result :: binary().

replace(Subject, Pattern, Replacement, Options) ->
    try
        true =
            is_binary(Replacement)
            orelse
            is_function(Replacement, 1),
        {Part, Global, Insert} =
            get_opts_replace(Options, {no, false, []}),
        Moptlist =
            case Part of
                no ->
                    [];
                {A, B} ->
                    [{scope, {A, B}}]
            end,
        MList =
            if
                Global ->
                    binary:matches(Subject, Pattern, Moptlist);
                true ->
                    case binary:match(Subject, Pattern, Moptlist) of
                        nomatch ->
                            [];
                        Match ->
                            [Match]
                    end
            end,
        ReplList =
            case
                is_function(Replacement, 1)
                orelse
                Insert
            of
                true ->
                    Replacement;
                [] ->
                    fun(_) ->
                           Replacement
                    end;
                Y when is_integer(Y) ->
                    <<ReplFront:Y/binary,ReplRear/binary>> = Replacement,
                    fun(M) ->
                           [ReplFront, M, ReplRear]
                    end;
                Li when is_list(Li) ->
                    Splits = splitat(Replacement, 0, lists:sort(Li)),
                    fun(M) ->
                           lists:join(M, Splits)
                    end
            end,
        iolist_to_binary(do_replace(Subject, MList, ReplList, 0))
    catch
        throw:badopt ->
            badarg_with_cause([Subject, Pattern, Replacement, Options],
                              badopt);
        _:_ ->
            badarg_with_info([Subject, Pattern, Replacement, Options])
    end.

do_replace(H, [], _, N) ->
    [binary:part(H, {N, byte_size(H) - N})];
do_replace(H, [{A, B} | T], Replacement, N) ->
    [binary:part(H, {N, A - N}),
     Replacement(binary:part(H, {A, B})) |
     do_replace(H, T, Replacement, A + B)].

splitat(H, N, []) ->
    [binary:part(H, {N, byte_size(H) - N})];
splitat(H, N, [I | T]) ->
    [binary:part(H, {N, I - N}) | splitat(H, I, T)].

get_opts_replace([], {Part, Global, Insert}) ->
    {Part, Global, Insert};
get_opts_replace([{scope, {A, B}} | T], {_Part, Global, Insert}) ->
    get_opts_replace(T, {{A, B}, Global, Insert});
get_opts_replace([global | T], {Part, _Global, Insert}) ->
    get_opts_replace(T, {Part, true, Insert});
get_opts_replace([{insert_replaced, N} | T], {Part, Global, _Insert}) ->
    get_opts_replace(T, {Part, Global, N});
get_opts_replace(_, _) ->
    throw(badopt).

-compile({inline, [{hex, 2}]}).

-spec encode_hex(Bin) -> Bin2 when Bin :: binary(), Bin2 :: <<_:_*16>>.

encode_hex(Bin) when is_binary(Bin) ->
    encode_hex(Bin, uppercase);
encode_hex(Bin) ->
    error_with_info(badarg, [Bin]).

-spec encode_hex(Bin, Case) -> Bin2
                    when
                        Bin :: binary(),
                        Case :: lowercase | uppercase,
                        Bin2 :: <<_:_*16>>.

encode_hex(Bin, uppercase) when is_binary(Bin) ->
    encode_hex1(Bin, 1);
encode_hex(Bin, lowercase) when is_binary(Bin) ->
    encode_hex1(Bin, 257);
encode_hex(Bin, Case) ->
    error_with_info(badarg, [Bin, Case]).

encode_hex1(Data, Offset) ->
    <<First:(bit_size(Data) div 64)/binary-unit:64,Rest/binary>> = Data,
    Hex =
        << 
          <<(hex(A, Offset)):16,
            (hex(B, Offset)):16,
            (hex(C, Offset)):16,
            (hex(D, Offset)):16,
            (hex(E, Offset)):16,
            (hex(F, Offset)):16,
            (hex(G, Offset)):16,
            (hex(H, Offset)):16>> ||
              <<A,B,C,D,E,F,G,H>> <= First
        >>,
    encode_hex2(Rest, Offset, Hex).

encode_hex2(<<A,Data/binary>>, Offset, Acc) ->
    encode_hex2(Data, Offset, <<Acc/binary,(hex(A, Offset)):16>>);
encode_hex2(<<>>, _Offset, Acc) ->
    Acc.

hex(X, Offset) ->
    element(X + Offset,
            {12336, 12337, 12338, 12339, 12340, 12341, 12342, 12343,
             12344, 12345, 12353, 12354, 12355, 12356, 12357, 12358,
             12592, 12593, 12594, 12595, 12596, 12597, 12598, 12599,
             12600, 12601, 12609, 12610, 12611, 12612, 12613, 12614,
             12848, 12849, 12850, 12851, 12852, 12853, 12854, 12855,
             12856, 12857, 12865, 12866, 12867, 12868, 12869, 12870,
             13104, 13105, 13106, 13107, 13108, 13109, 13110, 13111,
             13112, 13113, 13121, 13122, 13123, 13124, 13125, 13126,
             13360, 13361, 13362, 13363, 13364, 13365, 13366, 13367,
             13368, 13369, 13377, 13378, 13379, 13380, 13381, 13382,
             13616, 13617, 13618, 13619, 13620, 13621, 13622, 13623,
             13624, 13625, 13633, 13634, 13635, 13636, 13637, 13638,
             13872, 13873, 13874, 13875, 13876, 13877, 13878, 13879,
             13880, 13881, 13889, 13890, 13891, 13892, 13893, 13894,
             14128, 14129, 14130, 14131, 14132, 14133, 14134, 14135,
             14136, 14137, 14145, 14146, 14147, 14148, 14149, 14150,
             14384, 14385, 14386, 14387, 14388, 14389, 14390, 14391,
             14392, 14393, 14401, 14402, 14403, 14404, 14405, 14406,
             14640, 14641, 14642, 14643, 14644, 14645, 14646, 14647,
             14648, 14649, 14657, 14658, 14659, 14660, 14661, 14662,
             16688, 16689, 16690, 16691, 16692, 16693, 16694, 16695,
             16696, 16697, 16705, 16706, 16707, 16708, 16709, 16710,
             16944, 16945, 16946, 16947, 16948, 16949, 16950, 16951,
             16952, 16953, 16961, 16962, 16963, 16964, 16965, 16966,
             17200, 17201, 17202, 17203, 17204, 17205, 17206, 17207,
             17208, 17209, 17217, 17218, 17219, 17220, 17221, 17222,
             17456, 17457, 17458, 17459, 17460, 17461, 17462, 17463,
             17464, 17465, 17473, 17474, 17475, 17476, 17477, 17478,
             17712, 17713, 17714, 17715, 17716, 17717, 17718, 17719,
             17720, 17721, 17729, 17730, 17731, 17732, 17733, 17734,
             17968, 17969, 17970, 17971, 17972, 17973, 17974, 17975,
             17976, 17977, 17985, 17986, 17987, 17988, 17989, 17990,
             12336, 12337, 12338, 12339, 12340, 12341, 12342, 12343,
             12344, 12345, 12385, 12386, 12387, 12388, 12389, 12390,
             12592, 12593, 12594, 12595, 12596, 12597, 12598, 12599,
             12600, 12601, 12641, 12642, 12643, 12644, 12645, 12646,
             12848, 12849, 12850, 12851, 12852, 12853, 12854, 12855,
             12856, 12857, 12897, 12898, 12899, 12900, 12901, 12902,
             13104, 13105, 13106, 13107, 13108, 13109, 13110, 13111,
             13112, 13113, 13153, 13154, 13155, 13156, 13157, 13158,
             13360, 13361, 13362, 13363, 13364, 13365, 13366, 13367,
             13368, 13369, 13409, 13410, 13411, 13412, 13413, 13414,
             13616, 13617, 13618, 13619, 13620, 13621, 13622, 13623,
             13624, 13625, 13665, 13666, 13667, 13668, 13669, 13670,
             13872, 13873, 13874, 13875, 13876, 13877, 13878, 13879,
             13880, 13881, 13921, 13922, 13923, 13924, 13925, 13926,
             14128, 14129, 14130, 14131, 14132, 14133, 14134, 14135,
             14136, 14137, 14177, 14178, 14179, 14180, 14181, 14182,
             14384, 14385, 14386, 14387, 14388, 14389, 14390, 14391,
             14392, 14393, 14433, 14434, 14435, 14436, 14437, 14438,
             14640, 14641, 14642, 14643, 14644, 14645, 14646, 14647,
             14648, 14649, 14689, 14690, 14691, 14692, 14693, 14694,
             24880, 24881, 24882, 24883, 24884, 24885, 24886, 24887,
             24888, 24889, 24929, 24930, 24931, 24932, 24933, 24934,
             25136, 25137, 25138, 25139, 25140, 25141, 25142, 25143,
             25144, 25145, 25185, 25186, 25187, 25188, 25189, 25190,
             25392, 25393, 25394, 25395, 25396, 25397, 25398, 25399,
             25400, 25401, 25441, 25442, 25443, 25444, 25445, 25446,
             25648, 25649, 25650, 25651, 25652, 25653, 25654, 25655,
             25656, 25657, 25697, 25698, 25699, 25700, 25701, 25702,
             25904, 25905, 25906, 25907, 25908, 25909, 25910, 25911,
             25912, 25913, 25953, 25954, 25955, 25956, 25957, 25958,
             26160, 26161, 26162, 26163, 26164, 26165, 26166, 26167,
             26168, 26169, 26209, 26210, 26211, 26212, 26213, 26214}).

-compile({inline, [{unhex, 1}]}).

-spec decode_hex(Bin) -> Bin2 when Bin :: <<_:_*16>>, Bin2 :: binary().

decode_hex(Data) when byte_size(Data) rem 2 =:= 0 ->
    try
        decode_hex1(Data)
    catch
        error:badarg ->
            badarg_with_info([Data])
    end;
decode_hex(Data) ->
    badarg_with_info([Data]).

decode_hex1(Data) ->
    <<First:(byte_size(Data) div 8)/binary-unit:64,Rest/binary>> = Data,
    Bin =
        << 
          <<(unhex(A)):4,
            (unhex(B)):4,
            (unhex(C)):4,
            (unhex(D)):4,
            (unhex(E)):4,
            (unhex(F)):4,
            (unhex(G)):4,
            (unhex(H)):4>> ||
              <<A,B,C,D,E,F,G,H>> <= First
        >>,
    decode_hex2(Rest, Bin).

decode_hex2(<<A,Data/binary>>, Acc) ->
    decode_hex2(Data, <<Acc/binary-unit:4,(unhex(A)):4>>);
decode_hex2(<<>>, Acc) ->
    Acc.

unhex(X) ->
    element(X,
            {nonono, no, no, no, no, no, no, no, no, no, no, no, no, no,
             no, no, no, no, no, no, no, no, no, no, no, no, no, no, no,
             no, no, no, no, no, no, no, no, no, no, no, no, no, no, no,
             no, no, no, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, no, no, no, no,
             no, no, no, 10, 11, 12, 13, 14, 15, no, no, no, no, no, no,
             no, no, no, no, no, no, no, no, no, no, no, no, no, no, no,
             no, no, no, no, no, 10, 11, 12, 13, 14, 15, no, no, no, no,
             no, no, no, no, no}).

-spec join([binary()], binary()) -> binary().

join([], Separator) when is_binary(Separator) ->
    <<>>;
join([H], Separator) when is_binary(H), is_binary(Separator) ->
    H;
join([H | T] = List, Separator) when is_binary(Separator) ->
    try
        Acc = <<>>,
        join(T, Separator, <<Acc/binary,H/binary>>)
    catch
        error:_ ->
            badarg_with_info([List, Separator])
    end;
join(Arg, Separator) ->
    badarg_with_info([Arg, Separator]).

join([], _Separator, Acc) ->
    Acc;
join([H | T], Separator, Acc) ->
    join(T, Separator, <<Acc/binary,Separator/binary,H/binary>>).

badarg_with_cause(Args, Cause) ->
    error(badarg, Args,
          [{error_info, #{module => erl_stdlib_errors, cause => Cause}}]).

badarg_with_info(Args) ->
    error(badarg, Args, [{error_info, #{module => erl_stdlib_errors}}]).

error_with_info(Reason, Args) ->
    error(Reason, Args, [{error_info, #{module => erl_stdlib_errors}}]).



