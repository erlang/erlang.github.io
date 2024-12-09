-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.1.2/src/json.erl", 1).

-module(json).

-dialyzer(no_improper_lists).

-export([encode/1,
         encode/2,
         encode_value/2,
         encode_atom/2,
         encode_integer/1,
         encode_float/1,
         encode_list/2,
         encode_map/2,
         encode_map_checked/2,
         encode_key_value_list/2,
         encode_key_value_list_checked/2,
         encode_binary/1,
         encode_binary_escape_all/1]).

-export_type([encoder/0,encode_value/0]).

-export([format/1,
         format/2,
         format/3,
         format_value/3,
         format_key_value_list/3,
         format_key_value_list_checked/3]).

-export_type([formatter/0]).

-export([decode/1,decode/3,decode_start/3,decode_continue/2]).

-export_type([from_binary_fun/0,
              array_start_fun/0,
              array_push_fun/0,
              array_finish_fun/0,
              object_start_fun/0,
              object_push_fun/0,
              object_finish_fun/0,
              decoders/0,
              decode_value/0,
              continuation_state/0]).

-compile(warn_missing_spec).

-compile({inline,
          [{encode_atom, 2},
           {encode_integer, 1},
           {encode_float, 1},
           {encode_object, 1},
           {escape, 1},
           {escape_binary, 1},
           {escape_all, 1},
           {utf8t, 0},
           {utf8s, 0},
           {utf8s0, 0},
           {hex_to_int, 4},
           {string, 6}]}).

-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.1.2/src/json.hrl", 1).

-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.1.2/src/json.erl", 94).

-type encoder() :: fun((dynamic(), encoder()) -> iodata()).

-type encode_value() ::
          integer() |
          float() |
          boolean() |
          null |
          binary() |
          atom() |
          [encode_value()] |
          encode_map(encode_value()).

-type encode_map(Value) :: #{binary() | atom() | integer() => Value}.

-spec encode(encode_value()) -> iodata().

encode(Term) ->
    encode(Term, fun do_encode/2).

-spec encode(dynamic(), encoder()) -> iodata().

encode(Term, Encoder) when is_function(Encoder, 2) ->
    Encoder(Term, Encoder).

-spec encode_value(dynamic(), encoder()) -> iodata().

encode_value(Value, Encode) ->
    do_encode(Value, Encode).

-spec do_encode(dynamic(), encoder()) -> iodata().

do_encode(Value, Encode) when is_atom(Value) ->
    encode_atom(Value, Encode);
do_encode(Value, _Encode) when is_binary(Value) ->
    escape_binary(Value);
do_encode(Value, _Encode) when is_integer(Value) ->
    encode_integer(Value);
do_encode(Value, _Encode) when is_float(Value) ->
    encode_float(Value);
do_encode(Value, Encode) when is_list(Value) ->
    do_encode_list(Value, Encode);
do_encode(Value, Encode) when is_map(Value) ->
    do_encode_map(Value, Encode);
do_encode(Other, _Encode) ->
    error({unsupported_type, Other}).

-spec encode_atom(atom(), encoder()) -> iodata().

encode_atom(null, _Encode) ->
    <<"null">>;
encode_atom(true, _Encode) ->
    <<"true">>;
encode_atom(false, _Encode) ->
    <<"false">>;
encode_atom(Other, Encode) ->
    Encode(atom_to_binary(Other, utf8), Encode).

-spec encode_integer(integer()) -> iodata().

encode_integer(Integer) ->
    integer_to_binary(Integer).

-spec encode_float(float()) -> iodata().

encode_float(Float) ->
    float_to_binary(Float, [short]).

-spec encode_list(list(), encoder()) -> iodata().

encode_list(List, Encode) when is_list(List) ->
    do_encode_list(List, Encode).

do_encode_list([], _Encode) ->
    <<"[]">>;
do_encode_list([First | Rest], Encode) when is_function(Encode, 2) ->
    [$[, Encode(First, Encode) | list_loop(Rest, Encode)].

list_loop([], _Encode) ->
    "]";
list_loop([Elem | Rest], Encode) ->
    [$,, Encode(Elem, Encode) | list_loop(Rest, Encode)].

-spec encode_map(encode_map(dynamic()), encoder()) -> iodata().

encode_map(Map, Encode) when is_map(Map) ->
    do_encode_map(Map, Encode).

do_encode_map(Map, Encode) when is_function(Encode, 2) ->
    encode_object([ 
                   [$,, key(Key, Encode), $: | Encode(Value, Encode)] ||
                       Key := Value <- Map
                  ]).

-spec encode_map_checked(map(), encoder()) -> iodata().

encode_map_checked(Map, Encode) ->
    do_encode_checked(maps:to_list(Map), Encode).

-spec encode_key_value_list([{term(), term()}], encoder()) -> iodata().

encode_key_value_list(List, Encode) when is_function(Encode, 2) ->
    encode_object([ 
                   [$,, key(Key, Encode), $: | Encode(Value, Encode)] ||
                       {Key, Value} <- List
                  ]).

-spec encode_key_value_list_checked([{term(), term()}], encoder()) ->
                                       iodata().

encode_key_value_list_checked(List, Encode) ->
    do_encode_checked(List, Encode).

do_encode_checked(List, Encode) when is_function(Encode, 2) ->
    encode_object(do_encode_checked(List, Encode, #{})).

do_encode_checked([{Key, Value} | Rest], Encode, Visited0) ->
    EncodedKey = iolist_to_binary(key(Key, Encode)),
    case is_map_key(EncodedKey, Visited0) of
        true ->
            error({duplicate_key, Key});
        _ ->
            Visited = Visited0#{EncodedKey => true},
            [[$,, EncodedKey, $: | Encode(Value, Encode)] |
             do_encode_checked(Rest, Encode, Visited)]
    end;
do_encode_checked([], _, _) ->
    [].

key(Key, Encode) when is_binary(Key) ->
    Encode(Key, Encode);
key(Key, Encode) when is_atom(Key) ->
    Encode(atom_to_binary(Key, utf8), Encode);
key(Key, _Encode) when is_integer(Key) ->
    [$", encode_integer(Key), $"];
key(Key, _Encode) when is_float(Key) ->
    [$", encode_float(Key), $"].

encode_object([]) ->
    <<"{}">>;
encode_object([[_Comma | Entry] | Rest]) ->
    ["{", Entry, Rest, "}"].

-spec encode_binary(binary()) -> iodata().

encode_binary(Bin) when is_binary(Bin) ->
    escape_binary(Bin).

-spec encode_binary_escape_all(binary()) -> iodata().

encode_binary_escape_all(Bin) when is_binary(Bin) ->
    escape_all(Bin).

escape_binary(Bin) ->
    escape_binary_ascii(Bin, [$"], Bin, 0, 0).

escape_binary_ascii(Binary, Acc, Orig, Skip, Len) ->
    case Binary of
        <<B1,B2,B3,B4,B5,B6,B7,B8,Rest/binary>>
            when
                (B1 =:= 32
                 orelse
                 B1 =:= 33
                 orelse
                 B1 =:= 35
                 orelse
                 B1 =:= 36
                 orelse
                 B1 =:= 37
                 orelse
                 B1 =:= 38
                 orelse
                 B1 =:= 39
                 orelse
                 B1 =:= 40
                 orelse
                 B1 =:= 41
                 orelse
                 B1 =:= 42
                 orelse
                 B1 =:= 43
                 orelse
                 B1 =:= 44
                 orelse
                 B1 =:= 45
                 orelse
                 B1 =:= 46
                 orelse
                 B1 =:= 47
                 orelse
                 B1 =:= 48
                 orelse
                 B1 =:= 49
                 orelse
                 B1 =:= 50
                 orelse
                 B1 =:= 51
                 orelse
                 B1 =:= 52
                 orelse
                 B1 =:= 53
                 orelse
                 B1 =:= 54
                 orelse
                 B1 =:= 55
                 orelse
                 B1 =:= 56
                 orelse
                 B1 =:= 57
                 orelse
                 B1 =:= 58
                 orelse
                 B1 =:= 59
                 orelse
                 B1 =:= 60
                 orelse
                 B1 =:= 61
                 orelse
                 B1 =:= 62
                 orelse
                 B1 =:= 63
                 orelse
                 B1 =:= 64
                 orelse
                 B1 =:= 65
                 orelse
                 B1 =:= 66
                 orelse
                 B1 =:= 67
                 orelse
                 B1 =:= 68
                 orelse
                 B1 =:= 69
                 orelse
                 B1 =:= 70
                 orelse
                 B1 =:= 71
                 orelse
                 B1 =:= 72
                 orelse
                 B1 =:= 73
                 orelse
                 B1 =:= 74
                 orelse
                 B1 =:= 75
                 orelse
                 B1 =:= 76
                 orelse
                 B1 =:= 77
                 orelse
                 B1 =:= 78
                 orelse
                 B1 =:= 79
                 orelse
                 B1 =:= 80
                 orelse
                 B1 =:= 81
                 orelse
                 B1 =:= 82
                 orelse
                 B1 =:= 83
                 orelse
                 B1 =:= 84
                 orelse
                 B1 =:= 85
                 orelse
                 B1 =:= 86
                 orelse
                 B1 =:= 87
                 orelse
                 B1 =:= 88
                 orelse
                 B1 =:= 89
                 orelse
                 B1 =:= 90
                 orelse
                 B1 =:= 91
                 orelse
                 B1 =:= 93
                 orelse
                 B1 =:= 94
                 orelse
                 B1 =:= 95
                 orelse
                 B1 =:= 96
                 orelse
                 B1 =:= 97
                 orelse
                 B1 =:= 98
                 orelse
                 B1 =:= 99
                 orelse
                 B1 =:= 100
                 orelse
                 B1 =:= 101
                 orelse
                 B1 =:= 102
                 orelse
                 B1 =:= 103
                 orelse
                 B1 =:= 104
                 orelse
                 B1 =:= 105
                 orelse
                 B1 =:= 106
                 orelse
                 B1 =:= 107
                 orelse
                 B1 =:= 108
                 orelse
                 B1 =:= 109
                 orelse
                 B1 =:= 110
                 orelse
                 B1 =:= 111
                 orelse
                 B1 =:= 112
                 orelse
                 B1 =:= 113
                 orelse
                 B1 =:= 114
                 orelse
                 B1 =:= 115
                 orelse
                 B1 =:= 116
                 orelse
                 B1 =:= 117
                 orelse
                 B1 =:= 118
                 orelse
                 B1 =:= 119
                 orelse
                 B1 =:= 120
                 orelse
                 B1 =:= 121
                 orelse
                 B1 =:= 122
                 orelse
                 B1 =:= 123
                 orelse
                 B1 =:= 124
                 orelse
                 B1 =:= 125
                 orelse
                 B1 =:= 126
                 orelse
                 B1 =:= 127)
                andalso
                (B2 =:= 32
                 orelse
                 B2 =:= 33
                 orelse
                 B2 =:= 35
                 orelse
                 B2 =:= 36
                 orelse
                 B2 =:= 37
                 orelse
                 B2 =:= 38
                 orelse
                 B2 =:= 39
                 orelse
                 B2 =:= 40
                 orelse
                 B2 =:= 41
                 orelse
                 B2 =:= 42
                 orelse
                 B2 =:= 43
                 orelse
                 B2 =:= 44
                 orelse
                 B2 =:= 45
                 orelse
                 B2 =:= 46
                 orelse
                 B2 =:= 47
                 orelse
                 B2 =:= 48
                 orelse
                 B2 =:= 49
                 orelse
                 B2 =:= 50
                 orelse
                 B2 =:= 51
                 orelse
                 B2 =:= 52
                 orelse
                 B2 =:= 53
                 orelse
                 B2 =:= 54
                 orelse
                 B2 =:= 55
                 orelse
                 B2 =:= 56
                 orelse
                 B2 =:= 57
                 orelse
                 B2 =:= 58
                 orelse
                 B2 =:= 59
                 orelse
                 B2 =:= 60
                 orelse
                 B2 =:= 61
                 orelse
                 B2 =:= 62
                 orelse
                 B2 =:= 63
                 orelse
                 B2 =:= 64
                 orelse
                 B2 =:= 65
                 orelse
                 B2 =:= 66
                 orelse
                 B2 =:= 67
                 orelse
                 B2 =:= 68
                 orelse
                 B2 =:= 69
                 orelse
                 B2 =:= 70
                 orelse
                 B2 =:= 71
                 orelse
                 B2 =:= 72
                 orelse
                 B2 =:= 73
                 orelse
                 B2 =:= 74
                 orelse
                 B2 =:= 75
                 orelse
                 B2 =:= 76
                 orelse
                 B2 =:= 77
                 orelse
                 B2 =:= 78
                 orelse
                 B2 =:= 79
                 orelse
                 B2 =:= 80
                 orelse
                 B2 =:= 81
                 orelse
                 B2 =:= 82
                 orelse
                 B2 =:= 83
                 orelse
                 B2 =:= 84
                 orelse
                 B2 =:= 85
                 orelse
                 B2 =:= 86
                 orelse
                 B2 =:= 87
                 orelse
                 B2 =:= 88
                 orelse
                 B2 =:= 89
                 orelse
                 B2 =:= 90
                 orelse
                 B2 =:= 91
                 orelse
                 B2 =:= 93
                 orelse
                 B2 =:= 94
                 orelse
                 B2 =:= 95
                 orelse
                 B2 =:= 96
                 orelse
                 B2 =:= 97
                 orelse
                 B2 =:= 98
                 orelse
                 B2 =:= 99
                 orelse
                 B2 =:= 100
                 orelse
                 B2 =:= 101
                 orelse
                 B2 =:= 102
                 orelse
                 B2 =:= 103
                 orelse
                 B2 =:= 104
                 orelse
                 B2 =:= 105
                 orelse
                 B2 =:= 106
                 orelse
                 B2 =:= 107
                 orelse
                 B2 =:= 108
                 orelse
                 B2 =:= 109
                 orelse
                 B2 =:= 110
                 orelse
                 B2 =:= 111
                 orelse
                 B2 =:= 112
                 orelse
                 B2 =:= 113
                 orelse
                 B2 =:= 114
                 orelse
                 B2 =:= 115
                 orelse
                 B2 =:= 116
                 orelse
                 B2 =:= 117
                 orelse
                 B2 =:= 118
                 orelse
                 B2 =:= 119
                 orelse
                 B2 =:= 120
                 orelse
                 B2 =:= 121
                 orelse
                 B2 =:= 122
                 orelse
                 B2 =:= 123
                 orelse
                 B2 =:= 124
                 orelse
                 B2 =:= 125
                 orelse
                 B2 =:= 126
                 orelse
                 B2 =:= 127)
                andalso
                (B3 =:= 32
                 orelse
                 B3 =:= 33
                 orelse
                 B3 =:= 35
                 orelse
                 B3 =:= 36
                 orelse
                 B3 =:= 37
                 orelse
                 B3 =:= 38
                 orelse
                 B3 =:= 39
                 orelse
                 B3 =:= 40
                 orelse
                 B3 =:= 41
                 orelse
                 B3 =:= 42
                 orelse
                 B3 =:= 43
                 orelse
                 B3 =:= 44
                 orelse
                 B3 =:= 45
                 orelse
                 B3 =:= 46
                 orelse
                 B3 =:= 47
                 orelse
                 B3 =:= 48
                 orelse
                 B3 =:= 49
                 orelse
                 B3 =:= 50
                 orelse
                 B3 =:= 51
                 orelse
                 B3 =:= 52
                 orelse
                 B3 =:= 53
                 orelse
                 B3 =:= 54
                 orelse
                 B3 =:= 55
                 orelse
                 B3 =:= 56
                 orelse
                 B3 =:= 57
                 orelse
                 B3 =:= 58
                 orelse
                 B3 =:= 59
                 orelse
                 B3 =:= 60
                 orelse
                 B3 =:= 61
                 orelse
                 B3 =:= 62
                 orelse
                 B3 =:= 63
                 orelse
                 B3 =:= 64
                 orelse
                 B3 =:= 65
                 orelse
                 B3 =:= 66
                 orelse
                 B3 =:= 67
                 orelse
                 B3 =:= 68
                 orelse
                 B3 =:= 69
                 orelse
                 B3 =:= 70
                 orelse
                 B3 =:= 71
                 orelse
                 B3 =:= 72
                 orelse
                 B3 =:= 73
                 orelse
                 B3 =:= 74
                 orelse
                 B3 =:= 75
                 orelse
                 B3 =:= 76
                 orelse
                 B3 =:= 77
                 orelse
                 B3 =:= 78
                 orelse
                 B3 =:= 79
                 orelse
                 B3 =:= 80
                 orelse
                 B3 =:= 81
                 orelse
                 B3 =:= 82
                 orelse
                 B3 =:= 83
                 orelse
                 B3 =:= 84
                 orelse
                 B3 =:= 85
                 orelse
                 B3 =:= 86
                 orelse
                 B3 =:= 87
                 orelse
                 B3 =:= 88
                 orelse
                 B3 =:= 89
                 orelse
                 B3 =:= 90
                 orelse
                 B3 =:= 91
                 orelse
                 B3 =:= 93
                 orelse
                 B3 =:= 94
                 orelse
                 B3 =:= 95
                 orelse
                 B3 =:= 96
                 orelse
                 B3 =:= 97
                 orelse
                 B3 =:= 98
                 orelse
                 B3 =:= 99
                 orelse
                 B3 =:= 100
                 orelse
                 B3 =:= 101
                 orelse
                 B3 =:= 102
                 orelse
                 B3 =:= 103
                 orelse
                 B3 =:= 104
                 orelse
                 B3 =:= 105
                 orelse
                 B3 =:= 106
                 orelse
                 B3 =:= 107
                 orelse
                 B3 =:= 108
                 orelse
                 B3 =:= 109
                 orelse
                 B3 =:= 110
                 orelse
                 B3 =:= 111
                 orelse
                 B3 =:= 112
                 orelse
                 B3 =:= 113
                 orelse
                 B3 =:= 114
                 orelse
                 B3 =:= 115
                 orelse
                 B3 =:= 116
                 orelse
                 B3 =:= 117
                 orelse
                 B3 =:= 118
                 orelse
                 B3 =:= 119
                 orelse
                 B3 =:= 120
                 orelse
                 B3 =:= 121
                 orelse
                 B3 =:= 122
                 orelse
                 B3 =:= 123
                 orelse
                 B3 =:= 124
                 orelse
                 B3 =:= 125
                 orelse
                 B3 =:= 126
                 orelse
                 B3 =:= 127)
                andalso
                (B4 =:= 32
                 orelse
                 B4 =:= 33
                 orelse
                 B4 =:= 35
                 orelse
                 B4 =:= 36
                 orelse
                 B4 =:= 37
                 orelse
                 B4 =:= 38
                 orelse
                 B4 =:= 39
                 orelse
                 B4 =:= 40
                 orelse
                 B4 =:= 41
                 orelse
                 B4 =:= 42
                 orelse
                 B4 =:= 43
                 orelse
                 B4 =:= 44
                 orelse
                 B4 =:= 45
                 orelse
                 B4 =:= 46
                 orelse
                 B4 =:= 47
                 orelse
                 B4 =:= 48
                 orelse
                 B4 =:= 49
                 orelse
                 B4 =:= 50
                 orelse
                 B4 =:= 51
                 orelse
                 B4 =:= 52
                 orelse
                 B4 =:= 53
                 orelse
                 B4 =:= 54
                 orelse
                 B4 =:= 55
                 orelse
                 B4 =:= 56
                 orelse
                 B4 =:= 57
                 orelse
                 B4 =:= 58
                 orelse
                 B4 =:= 59
                 orelse
                 B4 =:= 60
                 orelse
                 B4 =:= 61
                 orelse
                 B4 =:= 62
                 orelse
                 B4 =:= 63
                 orelse
                 B4 =:= 64
                 orelse
                 B4 =:= 65
                 orelse
                 B4 =:= 66
                 orelse
                 B4 =:= 67
                 orelse
                 B4 =:= 68
                 orelse
                 B4 =:= 69
                 orelse
                 B4 =:= 70
                 orelse
                 B4 =:= 71
                 orelse
                 B4 =:= 72
                 orelse
                 B4 =:= 73
                 orelse
                 B4 =:= 74
                 orelse
                 B4 =:= 75
                 orelse
                 B4 =:= 76
                 orelse
                 B4 =:= 77
                 orelse
                 B4 =:= 78
                 orelse
                 B4 =:= 79
                 orelse
                 B4 =:= 80
                 orelse
                 B4 =:= 81
                 orelse
                 B4 =:= 82
                 orelse
                 B4 =:= 83
                 orelse
                 B4 =:= 84
                 orelse
                 B4 =:= 85
                 orelse
                 B4 =:= 86
                 orelse
                 B4 =:= 87
                 orelse
                 B4 =:= 88
                 orelse
                 B4 =:= 89
                 orelse
                 B4 =:= 90
                 orelse
                 B4 =:= 91
                 orelse
                 B4 =:= 93
                 orelse
                 B4 =:= 94
                 orelse
                 B4 =:= 95
                 orelse
                 B4 =:= 96
                 orelse
                 B4 =:= 97
                 orelse
                 B4 =:= 98
                 orelse
                 B4 =:= 99
                 orelse
                 B4 =:= 100
                 orelse
                 B4 =:= 101
                 orelse
                 B4 =:= 102
                 orelse
                 B4 =:= 103
                 orelse
                 B4 =:= 104
                 orelse
                 B4 =:= 105
                 orelse
                 B4 =:= 106
                 orelse
                 B4 =:= 107
                 orelse
                 B4 =:= 108
                 orelse
                 B4 =:= 109
                 orelse
                 B4 =:= 110
                 orelse
                 B4 =:= 111
                 orelse
                 B4 =:= 112
                 orelse
                 B4 =:= 113
                 orelse
                 B4 =:= 114
                 orelse
                 B4 =:= 115
                 orelse
                 B4 =:= 116
                 orelse
                 B4 =:= 117
                 orelse
                 B4 =:= 118
                 orelse
                 B4 =:= 119
                 orelse
                 B4 =:= 120
                 orelse
                 B4 =:= 121
                 orelse
                 B4 =:= 122
                 orelse
                 B4 =:= 123
                 orelse
                 B4 =:= 124
                 orelse
                 B4 =:= 125
                 orelse
                 B4 =:= 126
                 orelse
                 B4 =:= 127)
                andalso
                (B5 =:= 32
                 orelse
                 B5 =:= 33
                 orelse
                 B5 =:= 35
                 orelse
                 B5 =:= 36
                 orelse
                 B5 =:= 37
                 orelse
                 B5 =:= 38
                 orelse
                 B5 =:= 39
                 orelse
                 B5 =:= 40
                 orelse
                 B5 =:= 41
                 orelse
                 B5 =:= 42
                 orelse
                 B5 =:= 43
                 orelse
                 B5 =:= 44
                 orelse
                 B5 =:= 45
                 orelse
                 B5 =:= 46
                 orelse
                 B5 =:= 47
                 orelse
                 B5 =:= 48
                 orelse
                 B5 =:= 49
                 orelse
                 B5 =:= 50
                 orelse
                 B5 =:= 51
                 orelse
                 B5 =:= 52
                 orelse
                 B5 =:= 53
                 orelse
                 B5 =:= 54
                 orelse
                 B5 =:= 55
                 orelse
                 B5 =:= 56
                 orelse
                 B5 =:= 57
                 orelse
                 B5 =:= 58
                 orelse
                 B5 =:= 59
                 orelse
                 B5 =:= 60
                 orelse
                 B5 =:= 61
                 orelse
                 B5 =:= 62
                 orelse
                 B5 =:= 63
                 orelse
                 B5 =:= 64
                 orelse
                 B5 =:= 65
                 orelse
                 B5 =:= 66
                 orelse
                 B5 =:= 67
                 orelse
                 B5 =:= 68
                 orelse
                 B5 =:= 69
                 orelse
                 B5 =:= 70
                 orelse
                 B5 =:= 71
                 orelse
                 B5 =:= 72
                 orelse
                 B5 =:= 73
                 orelse
                 B5 =:= 74
                 orelse
                 B5 =:= 75
                 orelse
                 B5 =:= 76
                 orelse
                 B5 =:= 77
                 orelse
                 B5 =:= 78
                 orelse
                 B5 =:= 79
                 orelse
                 B5 =:= 80
                 orelse
                 B5 =:= 81
                 orelse
                 B5 =:= 82
                 orelse
                 B5 =:= 83
                 orelse
                 B5 =:= 84
                 orelse
                 B5 =:= 85
                 orelse
                 B5 =:= 86
                 orelse
                 B5 =:= 87
                 orelse
                 B5 =:= 88
                 orelse
                 B5 =:= 89
                 orelse
                 B5 =:= 90
                 orelse
                 B5 =:= 91
                 orelse
                 B5 =:= 93
                 orelse
                 B5 =:= 94
                 orelse
                 B5 =:= 95
                 orelse
                 B5 =:= 96
                 orelse
                 B5 =:= 97
                 orelse
                 B5 =:= 98
                 orelse
                 B5 =:= 99
                 orelse
                 B5 =:= 100
                 orelse
                 B5 =:= 101
                 orelse
                 B5 =:= 102
                 orelse
                 B5 =:= 103
                 orelse
                 B5 =:= 104
                 orelse
                 B5 =:= 105
                 orelse
                 B5 =:= 106
                 orelse
                 B5 =:= 107
                 orelse
                 B5 =:= 108
                 orelse
                 B5 =:= 109
                 orelse
                 B5 =:= 110
                 orelse
                 B5 =:= 111
                 orelse
                 B5 =:= 112
                 orelse
                 B5 =:= 113
                 orelse
                 B5 =:= 114
                 orelse
                 B5 =:= 115
                 orelse
                 B5 =:= 116
                 orelse
                 B5 =:= 117
                 orelse
                 B5 =:= 118
                 orelse
                 B5 =:= 119
                 orelse
                 B5 =:= 120
                 orelse
                 B5 =:= 121
                 orelse
                 B5 =:= 122
                 orelse
                 B5 =:= 123
                 orelse
                 B5 =:= 124
                 orelse
                 B5 =:= 125
                 orelse
                 B5 =:= 126
                 orelse
                 B5 =:= 127)
                andalso
                (B6 =:= 32
                 orelse
                 B6 =:= 33
                 orelse
                 B6 =:= 35
                 orelse
                 B6 =:= 36
                 orelse
                 B6 =:= 37
                 orelse
                 B6 =:= 38
                 orelse
                 B6 =:= 39
                 orelse
                 B6 =:= 40
                 orelse
                 B6 =:= 41
                 orelse
                 B6 =:= 42
                 orelse
                 B6 =:= 43
                 orelse
                 B6 =:= 44
                 orelse
                 B6 =:= 45
                 orelse
                 B6 =:= 46
                 orelse
                 B6 =:= 47
                 orelse
                 B6 =:= 48
                 orelse
                 B6 =:= 49
                 orelse
                 B6 =:= 50
                 orelse
                 B6 =:= 51
                 orelse
                 B6 =:= 52
                 orelse
                 B6 =:= 53
                 orelse
                 B6 =:= 54
                 orelse
                 B6 =:= 55
                 orelse
                 B6 =:= 56
                 orelse
                 B6 =:= 57
                 orelse
                 B6 =:= 58
                 orelse
                 B6 =:= 59
                 orelse
                 B6 =:= 60
                 orelse
                 B6 =:= 61
                 orelse
                 B6 =:= 62
                 orelse
                 B6 =:= 63
                 orelse
                 B6 =:= 64
                 orelse
                 B6 =:= 65
                 orelse
                 B6 =:= 66
                 orelse
                 B6 =:= 67
                 orelse
                 B6 =:= 68
                 orelse
                 B6 =:= 69
                 orelse
                 B6 =:= 70
                 orelse
                 B6 =:= 71
                 orelse
                 B6 =:= 72
                 orelse
                 B6 =:= 73
                 orelse
                 B6 =:= 74
                 orelse
                 B6 =:= 75
                 orelse
                 B6 =:= 76
                 orelse
                 B6 =:= 77
                 orelse
                 B6 =:= 78
                 orelse
                 B6 =:= 79
                 orelse
                 B6 =:= 80
                 orelse
                 B6 =:= 81
                 orelse
                 B6 =:= 82
                 orelse
                 B6 =:= 83
                 orelse
                 B6 =:= 84
                 orelse
                 B6 =:= 85
                 orelse
                 B6 =:= 86
                 orelse
                 B6 =:= 87
                 orelse
                 B6 =:= 88
                 orelse
                 B6 =:= 89
                 orelse
                 B6 =:= 90
                 orelse
                 B6 =:= 91
                 orelse
                 B6 =:= 93
                 orelse
                 B6 =:= 94
                 orelse
                 B6 =:= 95
                 orelse
                 B6 =:= 96
                 orelse
                 B6 =:= 97
                 orelse
                 B6 =:= 98
                 orelse
                 B6 =:= 99
                 orelse
                 B6 =:= 100
                 orelse
                 B6 =:= 101
                 orelse
                 B6 =:= 102
                 orelse
                 B6 =:= 103
                 orelse
                 B6 =:= 104
                 orelse
                 B6 =:= 105
                 orelse
                 B6 =:= 106
                 orelse
                 B6 =:= 107
                 orelse
                 B6 =:= 108
                 orelse
                 B6 =:= 109
                 orelse
                 B6 =:= 110
                 orelse
                 B6 =:= 111
                 orelse
                 B6 =:= 112
                 orelse
                 B6 =:= 113
                 orelse
                 B6 =:= 114
                 orelse
                 B6 =:= 115
                 orelse
                 B6 =:= 116
                 orelse
                 B6 =:= 117
                 orelse
                 B6 =:= 118
                 orelse
                 B6 =:= 119
                 orelse
                 B6 =:= 120
                 orelse
                 B6 =:= 121
                 orelse
                 B6 =:= 122
                 orelse
                 B6 =:= 123
                 orelse
                 B6 =:= 124
                 orelse
                 B6 =:= 125
                 orelse
                 B6 =:= 126
                 orelse
                 B6 =:= 127)
                andalso
                (B7 =:= 32
                 orelse
                 B7 =:= 33
                 orelse
                 B7 =:= 35
                 orelse
                 B7 =:= 36
                 orelse
                 B7 =:= 37
                 orelse
                 B7 =:= 38
                 orelse
                 B7 =:= 39
                 orelse
                 B7 =:= 40
                 orelse
                 B7 =:= 41
                 orelse
                 B7 =:= 42
                 orelse
                 B7 =:= 43
                 orelse
                 B7 =:= 44
                 orelse
                 B7 =:= 45
                 orelse
                 B7 =:= 46
                 orelse
                 B7 =:= 47
                 orelse
                 B7 =:= 48
                 orelse
                 B7 =:= 49
                 orelse
                 B7 =:= 50
                 orelse
                 B7 =:= 51
                 orelse
                 B7 =:= 52
                 orelse
                 B7 =:= 53
                 orelse
                 B7 =:= 54
                 orelse
                 B7 =:= 55
                 orelse
                 B7 =:= 56
                 orelse
                 B7 =:= 57
                 orelse
                 B7 =:= 58
                 orelse
                 B7 =:= 59
                 orelse
                 B7 =:= 60
                 orelse
                 B7 =:= 61
                 orelse
                 B7 =:= 62
                 orelse
                 B7 =:= 63
                 orelse
                 B7 =:= 64
                 orelse
                 B7 =:= 65
                 orelse
                 B7 =:= 66
                 orelse
                 B7 =:= 67
                 orelse
                 B7 =:= 68
                 orelse
                 B7 =:= 69
                 orelse
                 B7 =:= 70
                 orelse
                 B7 =:= 71
                 orelse
                 B7 =:= 72
                 orelse
                 B7 =:= 73
                 orelse
                 B7 =:= 74
                 orelse
                 B7 =:= 75
                 orelse
                 B7 =:= 76
                 orelse
                 B7 =:= 77
                 orelse
                 B7 =:= 78
                 orelse
                 B7 =:= 79
                 orelse
                 B7 =:= 80
                 orelse
                 B7 =:= 81
                 orelse
                 B7 =:= 82
                 orelse
                 B7 =:= 83
                 orelse
                 B7 =:= 84
                 orelse
                 B7 =:= 85
                 orelse
                 B7 =:= 86
                 orelse
                 B7 =:= 87
                 orelse
                 B7 =:= 88
                 orelse
                 B7 =:= 89
                 orelse
                 B7 =:= 90
                 orelse
                 B7 =:= 91
                 orelse
                 B7 =:= 93
                 orelse
                 B7 =:= 94
                 orelse
                 B7 =:= 95
                 orelse
                 B7 =:= 96
                 orelse
                 B7 =:= 97
                 orelse
                 B7 =:= 98
                 orelse
                 B7 =:= 99
                 orelse
                 B7 =:= 100
                 orelse
                 B7 =:= 101
                 orelse
                 B7 =:= 102
                 orelse
                 B7 =:= 103
                 orelse
                 B7 =:= 104
                 orelse
                 B7 =:= 105
                 orelse
                 B7 =:= 106
                 orelse
                 B7 =:= 107
                 orelse
                 B7 =:= 108
                 orelse
                 B7 =:= 109
                 orelse
                 B7 =:= 110
                 orelse
                 B7 =:= 111
                 orelse
                 B7 =:= 112
                 orelse
                 B7 =:= 113
                 orelse
                 B7 =:= 114
                 orelse
                 B7 =:= 115
                 orelse
                 B7 =:= 116
                 orelse
                 B7 =:= 117
                 orelse
                 B7 =:= 118
                 orelse
                 B7 =:= 119
                 orelse
                 B7 =:= 120
                 orelse
                 B7 =:= 121
                 orelse
                 B7 =:= 122
                 orelse
                 B7 =:= 123
                 orelse
                 B7 =:= 124
                 orelse
                 B7 =:= 125
                 orelse
                 B7 =:= 126
                 orelse
                 B7 =:= 127)
                andalso
                (B8 =:= 32
                 orelse
                 B8 =:= 33
                 orelse
                 B8 =:= 35
                 orelse
                 B8 =:= 36
                 orelse
                 B8 =:= 37
                 orelse
                 B8 =:= 38
                 orelse
                 B8 =:= 39
                 orelse
                 B8 =:= 40
                 orelse
                 B8 =:= 41
                 orelse
                 B8 =:= 42
                 orelse
                 B8 =:= 43
                 orelse
                 B8 =:= 44
                 orelse
                 B8 =:= 45
                 orelse
                 B8 =:= 46
                 orelse
                 B8 =:= 47
                 orelse
                 B8 =:= 48
                 orelse
                 B8 =:= 49
                 orelse
                 B8 =:= 50
                 orelse
                 B8 =:= 51
                 orelse
                 B8 =:= 52
                 orelse
                 B8 =:= 53
                 orelse
                 B8 =:= 54
                 orelse
                 B8 =:= 55
                 orelse
                 B8 =:= 56
                 orelse
                 B8 =:= 57
                 orelse
                 B8 =:= 58
                 orelse
                 B8 =:= 59
                 orelse
                 B8 =:= 60
                 orelse
                 B8 =:= 61
                 orelse
                 B8 =:= 62
                 orelse
                 B8 =:= 63
                 orelse
                 B8 =:= 64
                 orelse
                 B8 =:= 65
                 orelse
                 B8 =:= 66
                 orelse
                 B8 =:= 67
                 orelse
                 B8 =:= 68
                 orelse
                 B8 =:= 69
                 orelse
                 B8 =:= 70
                 orelse
                 B8 =:= 71
                 orelse
                 B8 =:= 72
                 orelse
                 B8 =:= 73
                 orelse
                 B8 =:= 74
                 orelse
                 B8 =:= 75
                 orelse
                 B8 =:= 76
                 orelse
                 B8 =:= 77
                 orelse
                 B8 =:= 78
                 orelse
                 B8 =:= 79
                 orelse
                 B8 =:= 80
                 orelse
                 B8 =:= 81
                 orelse
                 B8 =:= 82
                 orelse
                 B8 =:= 83
                 orelse
                 B8 =:= 84
                 orelse
                 B8 =:= 85
                 orelse
                 B8 =:= 86
                 orelse
                 B8 =:= 87
                 orelse
                 B8 =:= 88
                 orelse
                 B8 =:= 89
                 orelse
                 B8 =:= 90
                 orelse
                 B8 =:= 91
                 orelse
                 B8 =:= 93
                 orelse
                 B8 =:= 94
                 orelse
                 B8 =:= 95
                 orelse
                 B8 =:= 96
                 orelse
                 B8 =:= 97
                 orelse
                 B8 =:= 98
                 orelse
                 B8 =:= 99
                 orelse
                 B8 =:= 100
                 orelse
                 B8 =:= 101
                 orelse
                 B8 =:= 102
                 orelse
                 B8 =:= 103
                 orelse
                 B8 =:= 104
                 orelse
                 B8 =:= 105
                 orelse
                 B8 =:= 106
                 orelse
                 B8 =:= 107
                 orelse
                 B8 =:= 108
                 orelse
                 B8 =:= 109
                 orelse
                 B8 =:= 110
                 orelse
                 B8 =:= 111
                 orelse
                 B8 =:= 112
                 orelse
                 B8 =:= 113
                 orelse
                 B8 =:= 114
                 orelse
                 B8 =:= 115
                 orelse
                 B8 =:= 116
                 orelse
                 B8 =:= 117
                 orelse
                 B8 =:= 118
                 orelse
                 B8 =:= 119
                 orelse
                 B8 =:= 120
                 orelse
                 B8 =:= 121
                 orelse
                 B8 =:= 122
                 orelse
                 B8 =:= 123
                 orelse
                 B8 =:= 124
                 orelse
                 B8 =:= 125
                 orelse
                 B8 =:= 126
                 orelse
                 B8 =:= 127) ->
            escape_binary_ascii(Rest, Acc, Orig, Skip, Len + 8);
        Other ->
            escape_binary(Other, Acc, Orig, Skip, Len)
    end.

escape_binary(<<Byte,Rest/binary>>, Acc, Orig, Skip, Len)
    when
        Byte =:= 32
        orelse
        Byte =:= 33
        orelse
        Byte =:= 35
        orelse
        Byte =:= 36
        orelse
        Byte =:= 37
        orelse
        Byte =:= 38
        orelse
        Byte =:= 39
        orelse
        Byte =:= 40
        orelse
        Byte =:= 41
        orelse
        Byte =:= 42
        orelse
        Byte =:= 43
        orelse
        Byte =:= 44
        orelse
        Byte =:= 45
        orelse
        Byte =:= 46
        orelse
        Byte =:= 47
        orelse
        Byte =:= 48
        orelse
        Byte =:= 49
        orelse
        Byte =:= 50
        orelse
        Byte =:= 51
        orelse
        Byte =:= 52
        orelse
        Byte =:= 53
        orelse
        Byte =:= 54
        orelse
        Byte =:= 55
        orelse
        Byte =:= 56
        orelse
        Byte =:= 57
        orelse
        Byte =:= 58
        orelse
        Byte =:= 59
        orelse
        Byte =:= 60
        orelse
        Byte =:= 61
        orelse
        Byte =:= 62
        orelse
        Byte =:= 63
        orelse
        Byte =:= 64
        orelse
        Byte =:= 65
        orelse
        Byte =:= 66
        orelse
        Byte =:= 67
        orelse
        Byte =:= 68
        orelse
        Byte =:= 69
        orelse
        Byte =:= 70
        orelse
        Byte =:= 71
        orelse
        Byte =:= 72
        orelse
        Byte =:= 73
        orelse
        Byte =:= 74
        orelse
        Byte =:= 75
        orelse
        Byte =:= 76
        orelse
        Byte =:= 77
        orelse
        Byte =:= 78
        orelse
        Byte =:= 79
        orelse
        Byte =:= 80
        orelse
        Byte =:= 81
        orelse
        Byte =:= 82
        orelse
        Byte =:= 83
        orelse
        Byte =:= 84
        orelse
        Byte =:= 85
        orelse
        Byte =:= 86
        orelse
        Byte =:= 87
        orelse
        Byte =:= 88
        orelse
        Byte =:= 89
        orelse
        Byte =:= 90
        orelse
        Byte =:= 91
        orelse
        Byte =:= 93
        orelse
        Byte =:= 94
        orelse
        Byte =:= 95
        orelse
        Byte =:= 96
        orelse
        Byte =:= 97
        orelse
        Byte =:= 98
        orelse
        Byte =:= 99
        orelse
        Byte =:= 100
        orelse
        Byte =:= 101
        orelse
        Byte =:= 102
        orelse
        Byte =:= 103
        orelse
        Byte =:= 104
        orelse
        Byte =:= 105
        orelse
        Byte =:= 106
        orelse
        Byte =:= 107
        orelse
        Byte =:= 108
        orelse
        Byte =:= 109
        orelse
        Byte =:= 110
        orelse
        Byte =:= 111
        orelse
        Byte =:= 112
        orelse
        Byte =:= 113
        orelse
        Byte =:= 114
        orelse
        Byte =:= 115
        orelse
        Byte =:= 116
        orelse
        Byte =:= 117
        orelse
        Byte =:= 118
        orelse
        Byte =:= 119
        orelse
        Byte =:= 120
        orelse
        Byte =:= 121
        orelse
        Byte =:= 122
        orelse
        Byte =:= 123
        orelse
        Byte =:= 124
        orelse
        Byte =:= 125
        orelse
        Byte =:= 126
        orelse
        Byte =:= 127 ->
    escape_binary(Rest, Acc, Orig, Skip, Len + 1);
escape_binary(<<Byte,Rest/binary>>, Acc, Orig, Skip0, Len)
    when
        Byte =:= 0
        orelse
        Byte =:= 1
        orelse
        Byte =:= 2
        orelse
        Byte =:= 3
        orelse
        Byte =:= 4
        orelse
        Byte =:= 5
        orelse
        Byte =:= 6
        orelse
        Byte =:= 7
        orelse
        Byte =:= 8
        orelse
        Byte =:= 9
        orelse
        Byte =:= 10
        orelse
        Byte =:= 11
        orelse
        Byte =:= 12
        orelse
        Byte =:= 13
        orelse
        Byte =:= 14
        orelse
        Byte =:= 15
        orelse
        Byte =:= 16
        orelse
        Byte =:= 17
        orelse
        Byte =:= 18
        orelse
        Byte =:= 19
        orelse
        Byte =:= 20
        orelse
        Byte =:= 21
        orelse
        Byte =:= 22
        orelse
        Byte =:= 23
        orelse
        Byte =:= 24
        orelse
        Byte =:= 25
        orelse
        Byte =:= 26
        orelse
        Byte =:= 27
        orelse
        Byte =:= 28
        orelse
        Byte =:= 29
        orelse
        Byte =:= 30
        orelse
        Byte =:= 31
        orelse
        Byte =:= 34
        orelse
        Byte =:= 92 ->
    Escape = escape(Byte),
    Skip = Skip0 + Len + 1,
    case Len of
        0 ->
            escape_binary_ascii(Rest, [Acc | Escape], Orig, Skip, 0);
        _ ->
            Part = binary_part(Orig, Skip0, Len),
            escape_binary_ascii(Rest,
                                [Acc, Part | Escape],
                                Orig, Skip, 0)
    end;
escape_binary(<<Byte,Rest/binary>>, Acc, Orig, Skip, Len) ->
    case element(Byte - 127, utf8s0()) of
        12 ->
            invalid_byte(Orig, Skip + Len);
        State ->
            escape_binary_utf8(Rest, Acc, Orig, Skip, Len, State)
    end;
escape_binary(_, _Acc, Orig, 0, _Len) ->
    [$", Orig, $"];
escape_binary(_, Acc, _Orig, _Skip, 0) ->
    [Acc, $"];
escape_binary(_, Acc, Orig, Skip, Len) ->
    Part = binary_part(Orig, Skip, Len),
    [Acc, Part, $"].

escape_binary_utf8(<<Byte,Rest/binary>>, Acc, Orig, Skip, Len, State0) ->
    Type = element(Byte + 1, utf8t()),
    case element(State0 + Type, utf8s()) of
        0 ->
            escape_binary_ascii(Rest, Acc, Orig, Skip, Len + 2);
        12 ->
            invalid_byte(Orig, Skip + Len + 1);
        State ->
            escape_binary_utf8(Rest, Acc, Orig, Skip, Len + 1, State)
    end;
escape_binary_utf8(_, _Acc, Orig, Skip, Len, _State) ->
    unexpected_utf8(Orig, Skip + Len + 1).

escape_all(Bin) ->
    escape_all_ascii(Bin, [$"], Bin, 0, 0).

escape_all_ascii(Binary, Acc, Orig, Skip, Len) ->
    case Binary of
        <<B1,B2,B3,B4,B5,B6,B7,B8,Rest/binary>>
            when
                (B1 =:= 32
                 orelse
                 B1 =:= 33
                 orelse
                 B1 =:= 35
                 orelse
                 B1 =:= 36
                 orelse
                 B1 =:= 37
                 orelse
                 B1 =:= 38
                 orelse
                 B1 =:= 39
                 orelse
                 B1 =:= 40
                 orelse
                 B1 =:= 41
                 orelse
                 B1 =:= 42
                 orelse
                 B1 =:= 43
                 orelse
                 B1 =:= 44
                 orelse
                 B1 =:= 45
                 orelse
                 B1 =:= 46
                 orelse
                 B1 =:= 47
                 orelse
                 B1 =:= 48
                 orelse
                 B1 =:= 49
                 orelse
                 B1 =:= 50
                 orelse
                 B1 =:= 51
                 orelse
                 B1 =:= 52
                 orelse
                 B1 =:= 53
                 orelse
                 B1 =:= 54
                 orelse
                 B1 =:= 55
                 orelse
                 B1 =:= 56
                 orelse
                 B1 =:= 57
                 orelse
                 B1 =:= 58
                 orelse
                 B1 =:= 59
                 orelse
                 B1 =:= 60
                 orelse
                 B1 =:= 61
                 orelse
                 B1 =:= 62
                 orelse
                 B1 =:= 63
                 orelse
                 B1 =:= 64
                 orelse
                 B1 =:= 65
                 orelse
                 B1 =:= 66
                 orelse
                 B1 =:= 67
                 orelse
                 B1 =:= 68
                 orelse
                 B1 =:= 69
                 orelse
                 B1 =:= 70
                 orelse
                 B1 =:= 71
                 orelse
                 B1 =:= 72
                 orelse
                 B1 =:= 73
                 orelse
                 B1 =:= 74
                 orelse
                 B1 =:= 75
                 orelse
                 B1 =:= 76
                 orelse
                 B1 =:= 77
                 orelse
                 B1 =:= 78
                 orelse
                 B1 =:= 79
                 orelse
                 B1 =:= 80
                 orelse
                 B1 =:= 81
                 orelse
                 B1 =:= 82
                 orelse
                 B1 =:= 83
                 orelse
                 B1 =:= 84
                 orelse
                 B1 =:= 85
                 orelse
                 B1 =:= 86
                 orelse
                 B1 =:= 87
                 orelse
                 B1 =:= 88
                 orelse
                 B1 =:= 89
                 orelse
                 B1 =:= 90
                 orelse
                 B1 =:= 91
                 orelse
                 B1 =:= 93
                 orelse
                 B1 =:= 94
                 orelse
                 B1 =:= 95
                 orelse
                 B1 =:= 96
                 orelse
                 B1 =:= 97
                 orelse
                 B1 =:= 98
                 orelse
                 B1 =:= 99
                 orelse
                 B1 =:= 100
                 orelse
                 B1 =:= 101
                 orelse
                 B1 =:= 102
                 orelse
                 B1 =:= 103
                 orelse
                 B1 =:= 104
                 orelse
                 B1 =:= 105
                 orelse
                 B1 =:= 106
                 orelse
                 B1 =:= 107
                 orelse
                 B1 =:= 108
                 orelse
                 B1 =:= 109
                 orelse
                 B1 =:= 110
                 orelse
                 B1 =:= 111
                 orelse
                 B1 =:= 112
                 orelse
                 B1 =:= 113
                 orelse
                 B1 =:= 114
                 orelse
                 B1 =:= 115
                 orelse
                 B1 =:= 116
                 orelse
                 B1 =:= 117
                 orelse
                 B1 =:= 118
                 orelse
                 B1 =:= 119
                 orelse
                 B1 =:= 120
                 orelse
                 B1 =:= 121
                 orelse
                 B1 =:= 122
                 orelse
                 B1 =:= 123
                 orelse
                 B1 =:= 124
                 orelse
                 B1 =:= 125
                 orelse
                 B1 =:= 126
                 orelse
                 B1 =:= 127)
                andalso
                (B2 =:= 32
                 orelse
                 B2 =:= 33
                 orelse
                 B2 =:= 35
                 orelse
                 B2 =:= 36
                 orelse
                 B2 =:= 37
                 orelse
                 B2 =:= 38
                 orelse
                 B2 =:= 39
                 orelse
                 B2 =:= 40
                 orelse
                 B2 =:= 41
                 orelse
                 B2 =:= 42
                 orelse
                 B2 =:= 43
                 orelse
                 B2 =:= 44
                 orelse
                 B2 =:= 45
                 orelse
                 B2 =:= 46
                 orelse
                 B2 =:= 47
                 orelse
                 B2 =:= 48
                 orelse
                 B2 =:= 49
                 orelse
                 B2 =:= 50
                 orelse
                 B2 =:= 51
                 orelse
                 B2 =:= 52
                 orelse
                 B2 =:= 53
                 orelse
                 B2 =:= 54
                 orelse
                 B2 =:= 55
                 orelse
                 B2 =:= 56
                 orelse
                 B2 =:= 57
                 orelse
                 B2 =:= 58
                 orelse
                 B2 =:= 59
                 orelse
                 B2 =:= 60
                 orelse
                 B2 =:= 61
                 orelse
                 B2 =:= 62
                 orelse
                 B2 =:= 63
                 orelse
                 B2 =:= 64
                 orelse
                 B2 =:= 65
                 orelse
                 B2 =:= 66
                 orelse
                 B2 =:= 67
                 orelse
                 B2 =:= 68
                 orelse
                 B2 =:= 69
                 orelse
                 B2 =:= 70
                 orelse
                 B2 =:= 71
                 orelse
                 B2 =:= 72
                 orelse
                 B2 =:= 73
                 orelse
                 B2 =:= 74
                 orelse
                 B2 =:= 75
                 orelse
                 B2 =:= 76
                 orelse
                 B2 =:= 77
                 orelse
                 B2 =:= 78
                 orelse
                 B2 =:= 79
                 orelse
                 B2 =:= 80
                 orelse
                 B2 =:= 81
                 orelse
                 B2 =:= 82
                 orelse
                 B2 =:= 83
                 orelse
                 B2 =:= 84
                 orelse
                 B2 =:= 85
                 orelse
                 B2 =:= 86
                 orelse
                 B2 =:= 87
                 orelse
                 B2 =:= 88
                 orelse
                 B2 =:= 89
                 orelse
                 B2 =:= 90
                 orelse
                 B2 =:= 91
                 orelse
                 B2 =:= 93
                 orelse
                 B2 =:= 94
                 orelse
                 B2 =:= 95
                 orelse
                 B2 =:= 96
                 orelse
                 B2 =:= 97
                 orelse
                 B2 =:= 98
                 orelse
                 B2 =:= 99
                 orelse
                 B2 =:= 100
                 orelse
                 B2 =:= 101
                 orelse
                 B2 =:= 102
                 orelse
                 B2 =:= 103
                 orelse
                 B2 =:= 104
                 orelse
                 B2 =:= 105
                 orelse
                 B2 =:= 106
                 orelse
                 B2 =:= 107
                 orelse
                 B2 =:= 108
                 orelse
                 B2 =:= 109
                 orelse
                 B2 =:= 110
                 orelse
                 B2 =:= 111
                 orelse
                 B2 =:= 112
                 orelse
                 B2 =:= 113
                 orelse
                 B2 =:= 114
                 orelse
                 B2 =:= 115
                 orelse
                 B2 =:= 116
                 orelse
                 B2 =:= 117
                 orelse
                 B2 =:= 118
                 orelse
                 B2 =:= 119
                 orelse
                 B2 =:= 120
                 orelse
                 B2 =:= 121
                 orelse
                 B2 =:= 122
                 orelse
                 B2 =:= 123
                 orelse
                 B2 =:= 124
                 orelse
                 B2 =:= 125
                 orelse
                 B2 =:= 126
                 orelse
                 B2 =:= 127)
                andalso
                (B3 =:= 32
                 orelse
                 B3 =:= 33
                 orelse
                 B3 =:= 35
                 orelse
                 B3 =:= 36
                 orelse
                 B3 =:= 37
                 orelse
                 B3 =:= 38
                 orelse
                 B3 =:= 39
                 orelse
                 B3 =:= 40
                 orelse
                 B3 =:= 41
                 orelse
                 B3 =:= 42
                 orelse
                 B3 =:= 43
                 orelse
                 B3 =:= 44
                 orelse
                 B3 =:= 45
                 orelse
                 B3 =:= 46
                 orelse
                 B3 =:= 47
                 orelse
                 B3 =:= 48
                 orelse
                 B3 =:= 49
                 orelse
                 B3 =:= 50
                 orelse
                 B3 =:= 51
                 orelse
                 B3 =:= 52
                 orelse
                 B3 =:= 53
                 orelse
                 B3 =:= 54
                 orelse
                 B3 =:= 55
                 orelse
                 B3 =:= 56
                 orelse
                 B3 =:= 57
                 orelse
                 B3 =:= 58
                 orelse
                 B3 =:= 59
                 orelse
                 B3 =:= 60
                 orelse
                 B3 =:= 61
                 orelse
                 B3 =:= 62
                 orelse
                 B3 =:= 63
                 orelse
                 B3 =:= 64
                 orelse
                 B3 =:= 65
                 orelse
                 B3 =:= 66
                 orelse
                 B3 =:= 67
                 orelse
                 B3 =:= 68
                 orelse
                 B3 =:= 69
                 orelse
                 B3 =:= 70
                 orelse
                 B3 =:= 71
                 orelse
                 B3 =:= 72
                 orelse
                 B3 =:= 73
                 orelse
                 B3 =:= 74
                 orelse
                 B3 =:= 75
                 orelse
                 B3 =:= 76
                 orelse
                 B3 =:= 77
                 orelse
                 B3 =:= 78
                 orelse
                 B3 =:= 79
                 orelse
                 B3 =:= 80
                 orelse
                 B3 =:= 81
                 orelse
                 B3 =:= 82
                 orelse
                 B3 =:= 83
                 orelse
                 B3 =:= 84
                 orelse
                 B3 =:= 85
                 orelse
                 B3 =:= 86
                 orelse
                 B3 =:= 87
                 orelse
                 B3 =:= 88
                 orelse
                 B3 =:= 89
                 orelse
                 B3 =:= 90
                 orelse
                 B3 =:= 91
                 orelse
                 B3 =:= 93
                 orelse
                 B3 =:= 94
                 orelse
                 B3 =:= 95
                 orelse
                 B3 =:= 96
                 orelse
                 B3 =:= 97
                 orelse
                 B3 =:= 98
                 orelse
                 B3 =:= 99
                 orelse
                 B3 =:= 100
                 orelse
                 B3 =:= 101
                 orelse
                 B3 =:= 102
                 orelse
                 B3 =:= 103
                 orelse
                 B3 =:= 104
                 orelse
                 B3 =:= 105
                 orelse
                 B3 =:= 106
                 orelse
                 B3 =:= 107
                 orelse
                 B3 =:= 108
                 orelse
                 B3 =:= 109
                 orelse
                 B3 =:= 110
                 orelse
                 B3 =:= 111
                 orelse
                 B3 =:= 112
                 orelse
                 B3 =:= 113
                 orelse
                 B3 =:= 114
                 orelse
                 B3 =:= 115
                 orelse
                 B3 =:= 116
                 orelse
                 B3 =:= 117
                 orelse
                 B3 =:= 118
                 orelse
                 B3 =:= 119
                 orelse
                 B3 =:= 120
                 orelse
                 B3 =:= 121
                 orelse
                 B3 =:= 122
                 orelse
                 B3 =:= 123
                 orelse
                 B3 =:= 124
                 orelse
                 B3 =:= 125
                 orelse
                 B3 =:= 126
                 orelse
                 B3 =:= 127)
                andalso
                (B4 =:= 32
                 orelse
                 B4 =:= 33
                 orelse
                 B4 =:= 35
                 orelse
                 B4 =:= 36
                 orelse
                 B4 =:= 37
                 orelse
                 B4 =:= 38
                 orelse
                 B4 =:= 39
                 orelse
                 B4 =:= 40
                 orelse
                 B4 =:= 41
                 orelse
                 B4 =:= 42
                 orelse
                 B4 =:= 43
                 orelse
                 B4 =:= 44
                 orelse
                 B4 =:= 45
                 orelse
                 B4 =:= 46
                 orelse
                 B4 =:= 47
                 orelse
                 B4 =:= 48
                 orelse
                 B4 =:= 49
                 orelse
                 B4 =:= 50
                 orelse
                 B4 =:= 51
                 orelse
                 B4 =:= 52
                 orelse
                 B4 =:= 53
                 orelse
                 B4 =:= 54
                 orelse
                 B4 =:= 55
                 orelse
                 B4 =:= 56
                 orelse
                 B4 =:= 57
                 orelse
                 B4 =:= 58
                 orelse
                 B4 =:= 59
                 orelse
                 B4 =:= 60
                 orelse
                 B4 =:= 61
                 orelse
                 B4 =:= 62
                 orelse
                 B4 =:= 63
                 orelse
                 B4 =:= 64
                 orelse
                 B4 =:= 65
                 orelse
                 B4 =:= 66
                 orelse
                 B4 =:= 67
                 orelse
                 B4 =:= 68
                 orelse
                 B4 =:= 69
                 orelse
                 B4 =:= 70
                 orelse
                 B4 =:= 71
                 orelse
                 B4 =:= 72
                 orelse
                 B4 =:= 73
                 orelse
                 B4 =:= 74
                 orelse
                 B4 =:= 75
                 orelse
                 B4 =:= 76
                 orelse
                 B4 =:= 77
                 orelse
                 B4 =:= 78
                 orelse
                 B4 =:= 79
                 orelse
                 B4 =:= 80
                 orelse
                 B4 =:= 81
                 orelse
                 B4 =:= 82
                 orelse
                 B4 =:= 83
                 orelse
                 B4 =:= 84
                 orelse
                 B4 =:= 85
                 orelse
                 B4 =:= 86
                 orelse
                 B4 =:= 87
                 orelse
                 B4 =:= 88
                 orelse
                 B4 =:= 89
                 orelse
                 B4 =:= 90
                 orelse
                 B4 =:= 91
                 orelse
                 B4 =:= 93
                 orelse
                 B4 =:= 94
                 orelse
                 B4 =:= 95
                 orelse
                 B4 =:= 96
                 orelse
                 B4 =:= 97
                 orelse
                 B4 =:= 98
                 orelse
                 B4 =:= 99
                 orelse
                 B4 =:= 100
                 orelse
                 B4 =:= 101
                 orelse
                 B4 =:= 102
                 orelse
                 B4 =:= 103
                 orelse
                 B4 =:= 104
                 orelse
                 B4 =:= 105
                 orelse
                 B4 =:= 106
                 orelse
                 B4 =:= 107
                 orelse
                 B4 =:= 108
                 orelse
                 B4 =:= 109
                 orelse
                 B4 =:= 110
                 orelse
                 B4 =:= 111
                 orelse
                 B4 =:= 112
                 orelse
                 B4 =:= 113
                 orelse
                 B4 =:= 114
                 orelse
                 B4 =:= 115
                 orelse
                 B4 =:= 116
                 orelse
                 B4 =:= 117
                 orelse
                 B4 =:= 118
                 orelse
                 B4 =:= 119
                 orelse
                 B4 =:= 120
                 orelse
                 B4 =:= 121
                 orelse
                 B4 =:= 122
                 orelse
                 B4 =:= 123
                 orelse
                 B4 =:= 124
                 orelse
                 B4 =:= 125
                 orelse
                 B4 =:= 126
                 orelse
                 B4 =:= 127)
                andalso
                (B5 =:= 32
                 orelse
                 B5 =:= 33
                 orelse
                 B5 =:= 35
                 orelse
                 B5 =:= 36
                 orelse
                 B5 =:= 37
                 orelse
                 B5 =:= 38
                 orelse
                 B5 =:= 39
                 orelse
                 B5 =:= 40
                 orelse
                 B5 =:= 41
                 orelse
                 B5 =:= 42
                 orelse
                 B5 =:= 43
                 orelse
                 B5 =:= 44
                 orelse
                 B5 =:= 45
                 orelse
                 B5 =:= 46
                 orelse
                 B5 =:= 47
                 orelse
                 B5 =:= 48
                 orelse
                 B5 =:= 49
                 orelse
                 B5 =:= 50
                 orelse
                 B5 =:= 51
                 orelse
                 B5 =:= 52
                 orelse
                 B5 =:= 53
                 orelse
                 B5 =:= 54
                 orelse
                 B5 =:= 55
                 orelse
                 B5 =:= 56
                 orelse
                 B5 =:= 57
                 orelse
                 B5 =:= 58
                 orelse
                 B5 =:= 59
                 orelse
                 B5 =:= 60
                 orelse
                 B5 =:= 61
                 orelse
                 B5 =:= 62
                 orelse
                 B5 =:= 63
                 orelse
                 B5 =:= 64
                 orelse
                 B5 =:= 65
                 orelse
                 B5 =:= 66
                 orelse
                 B5 =:= 67
                 orelse
                 B5 =:= 68
                 orelse
                 B5 =:= 69
                 orelse
                 B5 =:= 70
                 orelse
                 B5 =:= 71
                 orelse
                 B5 =:= 72
                 orelse
                 B5 =:= 73
                 orelse
                 B5 =:= 74
                 orelse
                 B5 =:= 75
                 orelse
                 B5 =:= 76
                 orelse
                 B5 =:= 77
                 orelse
                 B5 =:= 78
                 orelse
                 B5 =:= 79
                 orelse
                 B5 =:= 80
                 orelse
                 B5 =:= 81
                 orelse
                 B5 =:= 82
                 orelse
                 B5 =:= 83
                 orelse
                 B5 =:= 84
                 orelse
                 B5 =:= 85
                 orelse
                 B5 =:= 86
                 orelse
                 B5 =:= 87
                 orelse
                 B5 =:= 88
                 orelse
                 B5 =:= 89
                 orelse
                 B5 =:= 90
                 orelse
                 B5 =:= 91
                 orelse
                 B5 =:= 93
                 orelse
                 B5 =:= 94
                 orelse
                 B5 =:= 95
                 orelse
                 B5 =:= 96
                 orelse
                 B5 =:= 97
                 orelse
                 B5 =:= 98
                 orelse
                 B5 =:= 99
                 orelse
                 B5 =:= 100
                 orelse
                 B5 =:= 101
                 orelse
                 B5 =:= 102
                 orelse
                 B5 =:= 103
                 orelse
                 B5 =:= 104
                 orelse
                 B5 =:= 105
                 orelse
                 B5 =:= 106
                 orelse
                 B5 =:= 107
                 orelse
                 B5 =:= 108
                 orelse
                 B5 =:= 109
                 orelse
                 B5 =:= 110
                 orelse
                 B5 =:= 111
                 orelse
                 B5 =:= 112
                 orelse
                 B5 =:= 113
                 orelse
                 B5 =:= 114
                 orelse
                 B5 =:= 115
                 orelse
                 B5 =:= 116
                 orelse
                 B5 =:= 117
                 orelse
                 B5 =:= 118
                 orelse
                 B5 =:= 119
                 orelse
                 B5 =:= 120
                 orelse
                 B5 =:= 121
                 orelse
                 B5 =:= 122
                 orelse
                 B5 =:= 123
                 orelse
                 B5 =:= 124
                 orelse
                 B5 =:= 125
                 orelse
                 B5 =:= 126
                 orelse
                 B5 =:= 127)
                andalso
                (B6 =:= 32
                 orelse
                 B6 =:= 33
                 orelse
                 B6 =:= 35
                 orelse
                 B6 =:= 36
                 orelse
                 B6 =:= 37
                 orelse
                 B6 =:= 38
                 orelse
                 B6 =:= 39
                 orelse
                 B6 =:= 40
                 orelse
                 B6 =:= 41
                 orelse
                 B6 =:= 42
                 orelse
                 B6 =:= 43
                 orelse
                 B6 =:= 44
                 orelse
                 B6 =:= 45
                 orelse
                 B6 =:= 46
                 orelse
                 B6 =:= 47
                 orelse
                 B6 =:= 48
                 orelse
                 B6 =:= 49
                 orelse
                 B6 =:= 50
                 orelse
                 B6 =:= 51
                 orelse
                 B6 =:= 52
                 orelse
                 B6 =:= 53
                 orelse
                 B6 =:= 54
                 orelse
                 B6 =:= 55
                 orelse
                 B6 =:= 56
                 orelse
                 B6 =:= 57
                 orelse
                 B6 =:= 58
                 orelse
                 B6 =:= 59
                 orelse
                 B6 =:= 60
                 orelse
                 B6 =:= 61
                 orelse
                 B6 =:= 62
                 orelse
                 B6 =:= 63
                 orelse
                 B6 =:= 64
                 orelse
                 B6 =:= 65
                 orelse
                 B6 =:= 66
                 orelse
                 B6 =:= 67
                 orelse
                 B6 =:= 68
                 orelse
                 B6 =:= 69
                 orelse
                 B6 =:= 70
                 orelse
                 B6 =:= 71
                 orelse
                 B6 =:= 72
                 orelse
                 B6 =:= 73
                 orelse
                 B6 =:= 74
                 orelse
                 B6 =:= 75
                 orelse
                 B6 =:= 76
                 orelse
                 B6 =:= 77
                 orelse
                 B6 =:= 78
                 orelse
                 B6 =:= 79
                 orelse
                 B6 =:= 80
                 orelse
                 B6 =:= 81
                 orelse
                 B6 =:= 82
                 orelse
                 B6 =:= 83
                 orelse
                 B6 =:= 84
                 orelse
                 B6 =:= 85
                 orelse
                 B6 =:= 86
                 orelse
                 B6 =:= 87
                 orelse
                 B6 =:= 88
                 orelse
                 B6 =:= 89
                 orelse
                 B6 =:= 90
                 orelse
                 B6 =:= 91
                 orelse
                 B6 =:= 93
                 orelse
                 B6 =:= 94
                 orelse
                 B6 =:= 95
                 orelse
                 B6 =:= 96
                 orelse
                 B6 =:= 97
                 orelse
                 B6 =:= 98
                 orelse
                 B6 =:= 99
                 orelse
                 B6 =:= 100
                 orelse
                 B6 =:= 101
                 orelse
                 B6 =:= 102
                 orelse
                 B6 =:= 103
                 orelse
                 B6 =:= 104
                 orelse
                 B6 =:= 105
                 orelse
                 B6 =:= 106
                 orelse
                 B6 =:= 107
                 orelse
                 B6 =:= 108
                 orelse
                 B6 =:= 109
                 orelse
                 B6 =:= 110
                 orelse
                 B6 =:= 111
                 orelse
                 B6 =:= 112
                 orelse
                 B6 =:= 113
                 orelse
                 B6 =:= 114
                 orelse
                 B6 =:= 115
                 orelse
                 B6 =:= 116
                 orelse
                 B6 =:= 117
                 orelse
                 B6 =:= 118
                 orelse
                 B6 =:= 119
                 orelse
                 B6 =:= 120
                 orelse
                 B6 =:= 121
                 orelse
                 B6 =:= 122
                 orelse
                 B6 =:= 123
                 orelse
                 B6 =:= 124
                 orelse
                 B6 =:= 125
                 orelse
                 B6 =:= 126
                 orelse
                 B6 =:= 127)
                andalso
                (B7 =:= 32
                 orelse
                 B7 =:= 33
                 orelse
                 B7 =:= 35
                 orelse
                 B7 =:= 36
                 orelse
                 B7 =:= 37
                 orelse
                 B7 =:= 38
                 orelse
                 B7 =:= 39
                 orelse
                 B7 =:= 40
                 orelse
                 B7 =:= 41
                 orelse
                 B7 =:= 42
                 orelse
                 B7 =:= 43
                 orelse
                 B7 =:= 44
                 orelse
                 B7 =:= 45
                 orelse
                 B7 =:= 46
                 orelse
                 B7 =:= 47
                 orelse
                 B7 =:= 48
                 orelse
                 B7 =:= 49
                 orelse
                 B7 =:= 50
                 orelse
                 B7 =:= 51
                 orelse
                 B7 =:= 52
                 orelse
                 B7 =:= 53
                 orelse
                 B7 =:= 54
                 orelse
                 B7 =:= 55
                 orelse
                 B7 =:= 56
                 orelse
                 B7 =:= 57
                 orelse
                 B7 =:= 58
                 orelse
                 B7 =:= 59
                 orelse
                 B7 =:= 60
                 orelse
                 B7 =:= 61
                 orelse
                 B7 =:= 62
                 orelse
                 B7 =:= 63
                 orelse
                 B7 =:= 64
                 orelse
                 B7 =:= 65
                 orelse
                 B7 =:= 66
                 orelse
                 B7 =:= 67
                 orelse
                 B7 =:= 68
                 orelse
                 B7 =:= 69
                 orelse
                 B7 =:= 70
                 orelse
                 B7 =:= 71
                 orelse
                 B7 =:= 72
                 orelse
                 B7 =:= 73
                 orelse
                 B7 =:= 74
                 orelse
                 B7 =:= 75
                 orelse
                 B7 =:= 76
                 orelse
                 B7 =:= 77
                 orelse
                 B7 =:= 78
                 orelse
                 B7 =:= 79
                 orelse
                 B7 =:= 80
                 orelse
                 B7 =:= 81
                 orelse
                 B7 =:= 82
                 orelse
                 B7 =:= 83
                 orelse
                 B7 =:= 84
                 orelse
                 B7 =:= 85
                 orelse
                 B7 =:= 86
                 orelse
                 B7 =:= 87
                 orelse
                 B7 =:= 88
                 orelse
                 B7 =:= 89
                 orelse
                 B7 =:= 90
                 orelse
                 B7 =:= 91
                 orelse
                 B7 =:= 93
                 orelse
                 B7 =:= 94
                 orelse
                 B7 =:= 95
                 orelse
                 B7 =:= 96
                 orelse
                 B7 =:= 97
                 orelse
                 B7 =:= 98
                 orelse
                 B7 =:= 99
                 orelse
                 B7 =:= 100
                 orelse
                 B7 =:= 101
                 orelse
                 B7 =:= 102
                 orelse
                 B7 =:= 103
                 orelse
                 B7 =:= 104
                 orelse
                 B7 =:= 105
                 orelse
                 B7 =:= 106
                 orelse
                 B7 =:= 107
                 orelse
                 B7 =:= 108
                 orelse
                 B7 =:= 109
                 orelse
                 B7 =:= 110
                 orelse
                 B7 =:= 111
                 orelse
                 B7 =:= 112
                 orelse
                 B7 =:= 113
                 orelse
                 B7 =:= 114
                 orelse
                 B7 =:= 115
                 orelse
                 B7 =:= 116
                 orelse
                 B7 =:= 117
                 orelse
                 B7 =:= 118
                 orelse
                 B7 =:= 119
                 orelse
                 B7 =:= 120
                 orelse
                 B7 =:= 121
                 orelse
                 B7 =:= 122
                 orelse
                 B7 =:= 123
                 orelse
                 B7 =:= 124
                 orelse
                 B7 =:= 125
                 orelse
                 B7 =:= 126
                 orelse
                 B7 =:= 127)
                andalso
                (B8 =:= 32
                 orelse
                 B8 =:= 33
                 orelse
                 B8 =:= 35
                 orelse
                 B8 =:= 36
                 orelse
                 B8 =:= 37
                 orelse
                 B8 =:= 38
                 orelse
                 B8 =:= 39
                 orelse
                 B8 =:= 40
                 orelse
                 B8 =:= 41
                 orelse
                 B8 =:= 42
                 orelse
                 B8 =:= 43
                 orelse
                 B8 =:= 44
                 orelse
                 B8 =:= 45
                 orelse
                 B8 =:= 46
                 orelse
                 B8 =:= 47
                 orelse
                 B8 =:= 48
                 orelse
                 B8 =:= 49
                 orelse
                 B8 =:= 50
                 orelse
                 B8 =:= 51
                 orelse
                 B8 =:= 52
                 orelse
                 B8 =:= 53
                 orelse
                 B8 =:= 54
                 orelse
                 B8 =:= 55
                 orelse
                 B8 =:= 56
                 orelse
                 B8 =:= 57
                 orelse
                 B8 =:= 58
                 orelse
                 B8 =:= 59
                 orelse
                 B8 =:= 60
                 orelse
                 B8 =:= 61
                 orelse
                 B8 =:= 62
                 orelse
                 B8 =:= 63
                 orelse
                 B8 =:= 64
                 orelse
                 B8 =:= 65
                 orelse
                 B8 =:= 66
                 orelse
                 B8 =:= 67
                 orelse
                 B8 =:= 68
                 orelse
                 B8 =:= 69
                 orelse
                 B8 =:= 70
                 orelse
                 B8 =:= 71
                 orelse
                 B8 =:= 72
                 orelse
                 B8 =:= 73
                 orelse
                 B8 =:= 74
                 orelse
                 B8 =:= 75
                 orelse
                 B8 =:= 76
                 orelse
                 B8 =:= 77
                 orelse
                 B8 =:= 78
                 orelse
                 B8 =:= 79
                 orelse
                 B8 =:= 80
                 orelse
                 B8 =:= 81
                 orelse
                 B8 =:= 82
                 orelse
                 B8 =:= 83
                 orelse
                 B8 =:= 84
                 orelse
                 B8 =:= 85
                 orelse
                 B8 =:= 86
                 orelse
                 B8 =:= 87
                 orelse
                 B8 =:= 88
                 orelse
                 B8 =:= 89
                 orelse
                 B8 =:= 90
                 orelse
                 B8 =:= 91
                 orelse
                 B8 =:= 93
                 orelse
                 B8 =:= 94
                 orelse
                 B8 =:= 95
                 orelse
                 B8 =:= 96
                 orelse
                 B8 =:= 97
                 orelse
                 B8 =:= 98
                 orelse
                 B8 =:= 99
                 orelse
                 B8 =:= 100
                 orelse
                 B8 =:= 101
                 orelse
                 B8 =:= 102
                 orelse
                 B8 =:= 103
                 orelse
                 B8 =:= 104
                 orelse
                 B8 =:= 105
                 orelse
                 B8 =:= 106
                 orelse
                 B8 =:= 107
                 orelse
                 B8 =:= 108
                 orelse
                 B8 =:= 109
                 orelse
                 B8 =:= 110
                 orelse
                 B8 =:= 111
                 orelse
                 B8 =:= 112
                 orelse
                 B8 =:= 113
                 orelse
                 B8 =:= 114
                 orelse
                 B8 =:= 115
                 orelse
                 B8 =:= 116
                 orelse
                 B8 =:= 117
                 orelse
                 B8 =:= 118
                 orelse
                 B8 =:= 119
                 orelse
                 B8 =:= 120
                 orelse
                 B8 =:= 121
                 orelse
                 B8 =:= 122
                 orelse
                 B8 =:= 123
                 orelse
                 B8 =:= 124
                 orelse
                 B8 =:= 125
                 orelse
                 B8 =:= 126
                 orelse
                 B8 =:= 127) ->
            escape_all_ascii(Rest, Acc, Orig, Skip, Len + 8);
        Other ->
            escape_all(Other, Acc, Orig, Skip, Len)
    end.

escape_all(<<Byte,Rest/binary>>, Acc, Orig, Skip, Len)
    when
        Byte =:= 32
        orelse
        Byte =:= 33
        orelse
        Byte =:= 35
        orelse
        Byte =:= 36
        orelse
        Byte =:= 37
        orelse
        Byte =:= 38
        orelse
        Byte =:= 39
        orelse
        Byte =:= 40
        orelse
        Byte =:= 41
        orelse
        Byte =:= 42
        orelse
        Byte =:= 43
        orelse
        Byte =:= 44
        orelse
        Byte =:= 45
        orelse
        Byte =:= 46
        orelse
        Byte =:= 47
        orelse
        Byte =:= 48
        orelse
        Byte =:= 49
        orelse
        Byte =:= 50
        orelse
        Byte =:= 51
        orelse
        Byte =:= 52
        orelse
        Byte =:= 53
        orelse
        Byte =:= 54
        orelse
        Byte =:= 55
        orelse
        Byte =:= 56
        orelse
        Byte =:= 57
        orelse
        Byte =:= 58
        orelse
        Byte =:= 59
        orelse
        Byte =:= 60
        orelse
        Byte =:= 61
        orelse
        Byte =:= 62
        orelse
        Byte =:= 63
        orelse
        Byte =:= 64
        orelse
        Byte =:= 65
        orelse
        Byte =:= 66
        orelse
        Byte =:= 67
        orelse
        Byte =:= 68
        orelse
        Byte =:= 69
        orelse
        Byte =:= 70
        orelse
        Byte =:= 71
        orelse
        Byte =:= 72
        orelse
        Byte =:= 73
        orelse
        Byte =:= 74
        orelse
        Byte =:= 75
        orelse
        Byte =:= 76
        orelse
        Byte =:= 77
        orelse
        Byte =:= 78
        orelse
        Byte =:= 79
        orelse
        Byte =:= 80
        orelse
        Byte =:= 81
        orelse
        Byte =:= 82
        orelse
        Byte =:= 83
        orelse
        Byte =:= 84
        orelse
        Byte =:= 85
        orelse
        Byte =:= 86
        orelse
        Byte =:= 87
        orelse
        Byte =:= 88
        orelse
        Byte =:= 89
        orelse
        Byte =:= 90
        orelse
        Byte =:= 91
        orelse
        Byte =:= 93
        orelse
        Byte =:= 94
        orelse
        Byte =:= 95
        orelse
        Byte =:= 96
        orelse
        Byte =:= 97
        orelse
        Byte =:= 98
        orelse
        Byte =:= 99
        orelse
        Byte =:= 100
        orelse
        Byte =:= 101
        orelse
        Byte =:= 102
        orelse
        Byte =:= 103
        orelse
        Byte =:= 104
        orelse
        Byte =:= 105
        orelse
        Byte =:= 106
        orelse
        Byte =:= 107
        orelse
        Byte =:= 108
        orelse
        Byte =:= 109
        orelse
        Byte =:= 110
        orelse
        Byte =:= 111
        orelse
        Byte =:= 112
        orelse
        Byte =:= 113
        orelse
        Byte =:= 114
        orelse
        Byte =:= 115
        orelse
        Byte =:= 116
        orelse
        Byte =:= 117
        orelse
        Byte =:= 118
        orelse
        Byte =:= 119
        orelse
        Byte =:= 120
        orelse
        Byte =:= 121
        orelse
        Byte =:= 122
        orelse
        Byte =:= 123
        orelse
        Byte =:= 124
        orelse
        Byte =:= 125
        orelse
        Byte =:= 126
        orelse
        Byte =:= 127 ->
    escape_all(Rest, Acc, Orig, Skip, Len + 1);
escape_all(<<Byte,Rest/bits>>, Acc, Orig, Skip, Len)
    when
        Byte =:= 0
        orelse
        Byte =:= 1
        orelse
        Byte =:= 2
        orelse
        Byte =:= 3
        orelse
        Byte =:= 4
        orelse
        Byte =:= 5
        orelse
        Byte =:= 6
        orelse
        Byte =:= 7
        orelse
        Byte =:= 8
        orelse
        Byte =:= 9
        orelse
        Byte =:= 10
        orelse
        Byte =:= 11
        orelse
        Byte =:= 12
        orelse
        Byte =:= 13
        orelse
        Byte =:= 14
        orelse
        Byte =:= 15
        orelse
        Byte =:= 16
        orelse
        Byte =:= 17
        orelse
        Byte =:= 18
        orelse
        Byte =:= 19
        orelse
        Byte =:= 20
        orelse
        Byte =:= 21
        orelse
        Byte =:= 22
        orelse
        Byte =:= 23
        orelse
        Byte =:= 24
        orelse
        Byte =:= 25
        orelse
        Byte =:= 26
        orelse
        Byte =:= 27
        orelse
        Byte =:= 28
        orelse
        Byte =:= 29
        orelse
        Byte =:= 30
        orelse
        Byte =:= 31
        orelse
        Byte =:= 34
        orelse
        Byte =:= 92 ->
    Escape = escape(Byte),
    case Len of
        0 ->
            escape_all(Rest, [Acc | Escape], Orig, Skip + 1, 0);
        _ ->
            Part = binary_part(Orig, Skip, Len),
            escape_all(Rest,
                       [Acc, Part | Escape],
                       Orig,
                       Skip + Len + 1,
                       0)
    end;
escape_all(<<Char/utf8,Rest/bits>>, Acc, Orig, Skip, 0) ->
    escape_char(Rest, Acc, Orig, Skip, Char);
escape_all(<<Char/utf8,Rest/bits>>, Acc, Orig, Skip, Len) ->
    Part = binary_part(Orig, Skip, Len),
    escape_char(Rest, [Acc | Part], Orig, Skip + Len, Char);
escape_all(<<>>, _Acc, Orig, 0, _Len) ->
    [$", Orig, $"];
escape_all(<<>>, Acc, _Orig, _Skip, 0) ->
    [Acc, $"];
escape_all(<<>>, Acc, Orig, Skip, Len) ->
    Part = binary_part(Orig, Skip, Len),
    [Acc, Part, $"];
escape_all(_Other, _Acc, Orig, Skip, Len) ->
    invalid_byte(Orig, Skip + Len).

escape_char(<<Rest/bits>>, Acc, Orig, Skip, Char) when Char =< 255 ->
    Acc1 = [Acc, "\\u00" | integer_to_binary(Char, 16)],
    escape_all(Rest, Acc1, Orig, Skip + 2, 0);
escape_char(<<Rest/bits>>, Acc, Orig, Skip, Char) when Char =< 2047 ->
    Acc1 = [Acc, "\\u0" | integer_to_binary(Char, 16)],
    escape_all(Rest, Acc1, Orig, Skip + 2, 0);
escape_char(<<Rest/bits>>, Acc, Orig, Skip, Char) when Char =< 4095 ->
    Acc1 = [Acc, "\\u0" | integer_to_binary(Char, 16)],
    escape_all(Rest, Acc1, Orig, Skip + 3, 0);
escape_char(<<Rest/bits>>, Acc, Orig, Skip, Char) when Char =< 65535 ->
    Acc1 = [Acc, "\\u" | integer_to_binary(Char, 16)],
    escape_all(Rest, Acc1, Orig, Skip + 3, 0);
escape_char(<<Rest/bits>>, Acc, Orig, Skip, Char0) ->
    Char = Char0 - 65536,
    First = integer_to_binary(2048 bor (Char bsr 10), 16),
    Second = integer_to_binary(3072 bor Char band 1023, 16),
    Acc1 = [Acc, "\\uD", First, "\\uD" | Second],
    escape_all(Rest, Acc1, Orig, Skip + 4, 0).

-spec escape(byte()) -> binary() | no.

escape($\000) ->
    <<"\\u0000">>;
escape($\001) ->
    <<"\\u0001">>;
escape($\002) ->
    <<"\\u0002">>;
escape($\003) ->
    <<"\\u0003">>;
escape($\004) ->
    <<"\\u0004">>;
escape($\005) ->
    <<"\\u0005">>;
escape($\006) ->
    <<"\\u0006">>;
escape($\007) ->
    <<"\\u0007">>;
escape($\b) ->
    <<"\\b">>;
escape($\t) ->
    <<"\\t">>;
escape($\n) ->
    <<"\\n">>;
escape($\v) ->
    <<"\\u000B">>;
escape($\f) ->
    <<"\\f">>;
escape($\r) ->
    <<"\\r">>;
escape($\016) ->
    <<"\\u000E">>;
escape($\017) ->
    <<"\\u000F">>;
escape($\020) ->
    <<"\\u0010">>;
escape($\021) ->
    <<"\\u0011">>;
escape($\022) ->
    <<"\\u0012">>;
escape($\023) ->
    <<"\\u0013">>;
escape($\024) ->
    <<"\\u0014">>;
escape($\025) ->
    <<"\\u0015">>;
escape($\026) ->
    <<"\\u0016">>;
escape($\027) ->
    <<"\\u0017">>;
escape($\030) ->
    <<"\\u0018">>;
escape($\031) ->
    <<"\\u0019">>;
escape($\032) ->
    <<"\\u001A">>;
escape($\e) ->
    <<"\\u001B">>;
escape($\034) ->
    <<"\\u001C">>;
escape($\035) ->
    <<"\\u001D">>;
escape($\036) ->
    <<"\\u001E">>;
escape($\037) ->
    <<"\\u001F">>;
escape($") ->
    <<"\\\"">>;
escape($\\) ->
    <<"\\\\">>;
escape(_) ->
    no.

utf8t() ->
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
     0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
     0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
     0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
     0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
     0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1,
     1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9,
     9, 9, 9, 9, 9, 9, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7,
     7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 8, 8, 2, 2, 2, 2,
     2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
     2, 2, 2, 2, 10, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 3, 3, 11, 6,
     6, 6, 5, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8}.

utf8s() ->
    {12, 24, 36, 60, 96, 84, 12, 12, 12, 48, 72, 12, 12, 12, 12, 12, 12,
     12, 12, 12, 12, 12, 12, 12, 0, 12, 12, 12, 12, 12, 0, 12, 0, 12,
     12, 12, 24, 12, 12, 12, 12, 12, 24, 12, 24, 12, 12, 12, 12, 12, 12,
     12, 12, 12, 24, 12, 12, 12, 12, 12, 24, 12, 12, 12, 12, 12, 12, 12,
     24, 12, 12, 12, 12, 12, 12, 12, 12, 12, 36, 12, 36, 12, 12, 12, 36,
     12, 12, 12, 12, 12, 36, 12, 36, 12, 12, 12, 36, 12, 12, 12, 12, 12,
     12, 12, 12, 12, 12}.

utf8s0() ->
    {12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12,
     12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12,
     12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12,
     12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 24, 24,
     24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24,
     24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 48, 36, 36, 36, 36, 36,
     36, 36, 36, 36, 36, 36, 36, 60, 36, 36, 72, 84, 84, 84, 96, 12, 12,
     12, 12, 12, 12, 12, 12, 12, 12, 12}.

invalid_byte(Bin, Skip) ->
    Byte = binary:at(Bin, Skip),
    error({invalid_byte, Byte}, none, error_info(Skip)).

error_info(Skip) ->
    [{error_info, #{cause => #{position => Skip}}}].

-type formatter() ::
          fun((Term :: dynamic(),
               Encoder :: formatter(),
               State :: map()) ->
                  iodata()).

-spec format(Term :: encode_value()) -> iodata().

format(Term) ->
    Enc = fun format_value/3,
    format(Term, Enc, #{}).

-spec format(Term :: encode_value(), Opts :: map()) -> iodata();
            (Term :: dynamic(), Encoder :: formatter()) -> iodata().

format(Term, Options) when is_map(Options) ->
    Enc = fun format_value/3,
    format(Term, Enc, Options);
format(Term, Encoder) when is_function(Encoder, 3) ->
    format(Term, Encoder, #{}).

-spec format(Term :: dynamic(),
             Encoder :: formatter(),
             Options :: map()) ->
                iodata().

format(Term, Encoder, Options) when is_function(Encoder, 3) ->
    Def = #{level => 0, col => 0, indent => 2, max => 100},
    [Encoder(Term, Encoder, maps:merge(Def, Options)), $\n].

-spec format_value(Value :: dynamic(),
                   Encode :: formatter(),
                   State :: map()) ->
                      iodata().

format_value(Atom, UserEnc, State) when is_atom(Atom) ->
    json:encode_atom(Atom,
                     fun(Value, Enc) ->
                            UserEnc(Value, Enc, State)
                     end);
format_value(Bin, _Enc, _State) when is_binary(Bin) ->
    json:encode_binary(Bin);
format_value(Int, _Enc, _State) when is_integer(Int) ->
    json:encode_integer(Int);
format_value(Float, _Enc, _State) when is_float(Float) ->
    json:encode_float(Float);
format_value(List, UserEnc, State) when is_list(List) ->
    format_list(List, UserEnc, State);
format_value(Map, UserEnc, State) when is_map(Map) ->
    OrderedKV = maps:to_list(maps:iterator(Map, ordered)),
    format_key_value_list(OrderedKV, UserEnc, State);
format_value(Other, _Enc, _State) ->
    error({unsupported_type, Other}).

format_list([Head | Rest],
            UserEnc,
            #{level := Level, col := Col0, max := Max} = State0) ->
    State1 = State0#{level := Level + 1},
    {Len, IndentElement} = indent(State1),
    if
        is_list(Head);is_map(Head);is_binary(Head);Col0 > Max ->
            State = State1#{col := Len},
            First = UserEnc(Head, UserEnc, State),
            {_, IndLast} = indent(State0),
            [$[,
             IndentElement, First,
             format_tail(Rest, UserEnc, State, IndentElement,
                         IndentElement),
             IndLast,
             $]];
        true ->
            First = UserEnc(Head, UserEnc, State1),
            Col = Col0 + 1 + iolist_size(First),
            [$[,
             First,
             format_tail(Rest, UserEnc,
                         State1#{col := Col},
                         [], IndentElement),
             $]]
    end;
format_list([], _, _) ->
    <<"[]">>.

format_tail([Head | Tail],
            Enc,
            #{max := Max, col := Col0} = State,
            [], IndentRow)
    when Col0 < Max ->
    EncHead = Enc(Head, Enc, State),
    String = [$, | EncHead],
    Col = Col0 + 1 + iolist_size(EncHead),
    [String | format_tail(Tail, Enc, State#{col := Col}, [], IndentRow)];
format_tail([Head | Tail], Enc, State, [], IndentRow) ->
    EncHead = Enc(Head, Enc, State),
    String = [[$, | IndentRow] | EncHead],
    Col = iolist_size(String) - 2,
    [String | format_tail(Tail, Enc, State#{col := Col}, [], IndentRow)];
format_tail([Head | Tail], Enc, State, IndentAll, IndentRow) ->
    EncHead = Enc(Head, Enc, State),
    String = [[$, | IndentAll] | EncHead],
    [String | format_tail(Tail, Enc, State, IndentAll, IndentRow)];
format_tail([], _, _, _, _) ->
    [].

-spec format_key_value_list([{term(), term()}],
                            Encode :: formatter(),
                            State :: map()) ->
                               iodata().

format_key_value_list(KVList, UserEnc, #{level := Level} = State) ->
    {_, Indent} = indent(State),
    NextState = State#{level := Level + 1},
    {KISize, KeyIndent} = indent(NextState),
    EncKeyFun =
        fun(KeyVal, _Fun) ->
               UserEnc(KeyVal, UserEnc, NextState)
        end,
    EntryFun =
        fun({Key, Value}) ->
               EncKey = key(Key, EncKeyFun),
               ValState =
                   NextState#{col := KISize + 2 + iolist_size(EncKey)},
               [$,,
                KeyIndent, EncKey,
                ": " |
                UserEnc(Value, UserEnc, ValState)]
        end,
    format_object(lists:map(EntryFun, KVList), Indent).

-spec format_key_value_list_checked([{term(), term()}],
                                    Encoder :: formatter(),
                                    State :: map()) ->
                                       iodata().

format_key_value_list_checked(KVList, UserEnc, State)
    when is_function(UserEnc, 3) ->
    {_, Indent} = indent(State),
    format_object(do_format_checked(KVList, UserEnc, State), Indent).

do_format_checked([], _, _) ->
    [];
do_format_checked(KVList, UserEnc, #{level := Level} = State) ->
    NextState = State#{level := Level + 1},
    {KISize, KeyIndent} = indent(NextState),
    EncKeyFun =
        fun(KeyVal, _Fun) ->
               UserEnc(KeyVal, UserEnc, NextState)
        end,
    EncListFun =
        fun({Key, Value}, {Acc, Visited0}) ->
               EncKey = iolist_to_binary(key(Key, EncKeyFun)),
               case is_map_key(EncKey, Visited0) of
                   true ->
                       error({duplicate_key, Key});
                   false ->
                       Visited1 = Visited0#{EncKey => true},
                       ValState =
                           NextState#{col :=
                                          KISize + 2
                                          +
                                          iolist_size(EncKey)},
                       EncEntry =
                           [$,,
                            KeyIndent, EncKey,
                            ": " |
                            UserEnc(Value, UserEnc, ValState)],
                       {[EncEntry | Acc], Visited1}
               end
        end,
    {EncKVList, _} = lists:foldl(EncListFun, {[], #{}}, KVList),
    lists:reverse(EncKVList).

format_object([], _) ->
    <<"{}">>;
format_object([[_Comma, KeyIndent | Entry]], Indent) ->
    [_Key, _Colon | Value] = Entry,
    {_, Rest} = string:take(Value, [$\s, $\n]),
    [CP | _] = string:next_codepoint(Rest),
    if
        CP =:= ${ ->
            ["{", KeyIndent, Entry, Indent, "}"];
        CP =:= $[ ->
            ["{", KeyIndent, Entry, Indent, "}"];
        true ->
            ["{ ", Entry, " }"]
    end;
format_object([[_Comma, KeyIndent | Entry] | Rest], Indent) ->
    ["{", KeyIndent, Entry, Rest, Indent, "}"].

indent(#{level := Level, indent := Indent}) ->
    Steps = Level * Indent,
    {Steps, steps(Steps)}.

steps(0) ->
    <<"\n"/utf8>>;
steps(2) ->
    <<"\n  "/utf8>>;
steps(4) ->
    <<"\n    "/utf8>>;
steps(6) ->
    <<"\n      "/utf8>>;
steps(8) ->
    <<"\n        "/utf8>>;
steps(10) ->
    <<"\n          "/utf8>>;
steps(12) ->
    <<"\n            "/utf8>>;
steps(14) ->
    <<"\n              "/utf8>>;
steps(16) ->
    <<"\n                "/utf8>>;
steps(18) ->
    <<"\n                  "/utf8>>;
steps(20) ->
    <<"\n                    "/utf8>>;
steps(N) ->
    ["\n", lists:duplicate(N, " ")].

-type from_binary_fun() :: fun((binary()) -> dynamic()).

-type array_start_fun() ::
          fun((Acc :: dynamic()) -> ArrayAcc :: dynamic()).

-type array_push_fun() ::
          fun((Value :: dynamic(), Acc :: dynamic()) ->
                  NewAcc :: dynamic()).

-type array_finish_fun() ::
          fun((ArrayAcc :: dynamic(), OldAcc :: dynamic()) ->
                  {dynamic(), dynamic()}).

-type object_start_fun() ::
          fun((Acc :: dynamic()) -> ObjectAcc :: dynamic()).

-type object_push_fun() ::
          fun((Key :: dynamic(), Value :: dynamic(), Acc :: dynamic()) ->
                  NewAcc :: dynamic()).

-type object_finish_fun() ::
          fun((ObjectAcc :: dynamic(), OldAcc :: dynamic()) ->
                  {dynamic(), dynamic()}).

-type decoders() ::
          #{array_start => array_start_fun(),
            array_push => array_push_fun(),
            array_finish => array_finish_fun(),
            object_start => object_start_fun(),
            object_push => object_push_fun(),
            object_finish => object_finish_fun(),
            float => from_binary_fun(),
            integer => from_binary_fun(),
            string => from_binary_fun(),
            null => term()}.

-record(decode,{array_start :: array_start_fun() | undefined,
                array_push :: array_push_fun() | undefined,
                array_finish :: array_finish_fun() | undefined,
                object_start :: object_start_fun() | undefined,
                object_push :: object_push_fun() | undefined,
                object_finish :: object_finish_fun() | undefined,
                float =
                    fun erlang:binary_to_float/1 :: from_binary_fun(),
                integer =
                    fun erlang:binary_to_integer/1 :: from_binary_fun(),
                string :: from_binary_fun() | undefined,
                null = null :: term()}).

-type acc() :: dynamic().

-type stack() :: [array | object | binary() | acc()].

-type decode() :: #decode{}.

-opaque continuation_state() :: tuple().

-type decode_value() ::
          integer() |
          float() |
          boolean() |
          null |
          binary() |
          [decode_value()] |
          #{binary() => decode_value()}.

-spec decode(binary()) -> decode_value().

decode(Binary) when is_binary(Binary) ->
    case
        value(Binary, Binary, 0, ok, [],
              {decode, undefined, undefined, undefined, undefined,
               undefined, undefined,
               fun erlang:binary_to_float/1,
               fun erlang:binary_to_integer/1,
               undefined, null})
    of
        {Result, _Acc, <<>>} ->
            Result;
        {_, _, Rest} ->
            invalid_byte(Rest, 0);
        {continue, {_Bin, _Acc, [], _Decode, {number, Number}}} ->
            Number;
        {continue, {_, _, _, _, {float_error, Token, Skip}}} ->
            unexpected_sequence(Token, Skip);
        {continue, _} ->
            error(unexpected_end)
    end.

-spec decode(binary(), dynamic(), decoders()) ->
                {Result :: dynamic(), Acc :: dynamic(), binary()}.

decode(Binary, Acc0, Decoders) when is_binary(Binary) ->
    Decode =
        maps:fold(fun parse_decoder/3,
                  {decode, undefined, undefined, undefined, undefined,
                   undefined, undefined,
                   fun erlang:binary_to_float/1,
                   fun erlang:binary_to_integer/1,
                   undefined, null},
                  Decoders),
    case value(Binary, Binary, 0, Acc0, [], Decode) of
        {continue, {_Bin, Acc, [], _Decode, {number, Val}}} ->
            {Val, Acc, <<>>};
        {continue, {_, _, _, _, {float_error, Token, Skip}}} ->
            unexpected_sequence(Token, Skip);
        {continue, _} ->
            error(unexpected_end);
        Result ->
            Result
    end.

-spec decode_start(binary(), dynamic(), decoders()) ->
                      {Result :: dynamic(), Acc :: dynamic(), binary()} |
                      {continue, continuation_state()}.

decode_start(Binary, Acc, Decoders) when is_binary(Binary) ->
    Decode =
        maps:fold(fun parse_decoder/3,
                  {decode, undefined, undefined, undefined, undefined,
                   undefined, undefined,
                   fun erlang:binary_to_float/1,
                   fun erlang:binary_to_integer/1,
                   undefined, null},
                  Decoders),
    value(Binary, Binary, 0, Acc, [], Decode).

-spec decode_continue(binary() | end_of_input, Opaque :: term()) ->
                         {Result :: dynamic(),
                          Acc :: dynamic(),
                          binary()} |
                         {continue, continuation_state()}.

decode_continue(end_of_input, State) ->
    case State of
        {_, Acc, [], _Decode, {number, Val}} ->
            {Val, Acc, <<>>};
        {_, _, _, _, {float_error, Token, Skip}} ->
            unexpected_sequence(Token, Skip);
        _ ->
            error(unexpected_end)
    end;
decode_continue(Cont,
                {Rest, Acc, Stack,
                 {decode, _, _, _, _, _, _, _, _, _, _} = Decode,
                 FuncData})
    when is_binary(Cont) ->
    Binary = <<Rest/binary,Cont/binary>>,
    case FuncData of
        value ->
            value(Binary, Binary, 0, Acc, Stack, Decode);
        {number, _} ->
            value(Binary, Binary, 0, Acc, Stack, Decode);
        {float_error, _Token, _Skip} ->
            value(Binary, Binary, 0, Acc, Stack, Decode);
        {array_push, Val} ->
            array_push(Binary, Binary, 0, Acc, Stack, Decode, Val);
        {object_value, Key} ->
            object_value(Binary, Binary, 0, Acc, Stack, Decode, Key);
        {object_push, Value, Key} ->
            object_push(Binary, Binary, 0, Acc, Stack, Decode, Value,
                        Key);
        object_key ->
            object_key(Binary, Binary, 0, Acc, Stack, Decode)
    end.

parse_decoder(array_start, Fun, Decode) when is_function(Fun, 1) ->
    begin
        REC0 = Decode,
        case REC0 of
            {decode, _, _, _, _, _, _, _, _, _, _} ->
                setelement(2, REC0, Fun);
            _ ->
                error({badrecord, REC0})
        end
    end;
parse_decoder(array_push, Fun, Decode) when is_function(Fun, 2) ->
    begin
        REC1 = Decode,
        case REC1 of
            {decode, _, _, _, _, _, _, _, _, _, _} ->
                setelement(3, REC1, Fun);
            _ ->
                error({badrecord, REC1})
        end
    end;
parse_decoder(array_finish, Fun, Decode) when is_function(Fun, 2) ->
    begin
        REC2 = Decode,
        case REC2 of
            {decode, _, _, _, _, _, _, _, _, _, _} ->
                setelement(4, REC2, Fun);
            _ ->
                error({badrecord, REC2})
        end
    end;
parse_decoder(object_start, Fun, Decode) when is_function(Fun, 1) ->
    begin
        REC3 = Decode,
        case REC3 of
            {decode, _, _, _, _, _, _, _, _, _, _} ->
                setelement(5, REC3, Fun);
            _ ->
                error({badrecord, REC3})
        end
    end;
parse_decoder(object_push, Fun, Decode) when is_function(Fun, 3) ->
    begin
        REC4 = Decode,
        case REC4 of
            {decode, _, _, _, _, _, _, _, _, _, _} ->
                setelement(6, REC4, Fun);
            _ ->
                error({badrecord, REC4})
        end
    end;
parse_decoder(object_finish, Fun, Decode) when is_function(Fun, 2) ->
    begin
        REC5 = Decode,
        case REC5 of
            {decode, _, _, _, _, _, _, _, _, _, _} ->
                setelement(7, REC5, Fun);
            _ ->
                error({badrecord, REC5})
        end
    end;
parse_decoder(float, Fun, Decode) when is_function(Fun, 1) ->
    begin
        REC6 = Decode,
        case REC6 of
            {decode, _, _, _, _, _, _, _, _, _, _} ->
                setelement(8, REC6, Fun);
            _ ->
                error({badrecord, REC6})
        end
    end;
parse_decoder(integer, Fun, Decode) when is_function(Fun, 1) ->
    begin
        REC7 = Decode,
        case REC7 of
            {decode, _, _, _, _, _, _, _, _, _, _} ->
                setelement(9, REC7, Fun);
            _ ->
                error({badrecord, REC7})
        end
    end;
parse_decoder(string, Fun, Decode) when is_function(Fun, 1) ->
    begin
        REC8 = Decode,
        case REC8 of
            {decode, _, _, _, _, _, _, _, _, _, _} ->
                setelement(10, REC8, Fun);
            _ ->
                error({badrecord, REC8})
        end
    end;
parse_decoder(null, Null, Decode) ->
    begin
        REC9 = Decode,
        case REC9 of
            {decode, _, _, _, _, _, _, _, _, _, _} ->
                setelement(11, REC9, Null);
            _ ->
                error({badrecord, REC9})
        end
    end.

value(<<Byte,Rest/bits>>, Original, Skip, Acc, Stack, Decode)
    when Byte =:= $\s; Byte =:= $\t; Byte =:= $\r; Byte =:= $\n ->
    value(Rest, Original, Skip + 1, Acc, Stack, Decode);
value(<<$0,Rest/bits>>, Original, Skip, Acc, Stack, Decode) ->
    number_zero(Rest, Original, Skip, Acc, Stack, Decode, 1);
value(<<Byte,Rest/bits>>, Original, Skip, Acc, Stack, Decode)
    when
        Byte =:= $1
        orelse
        Byte =:= $2
        orelse
        Byte =:= $3
        orelse
        Byte =:= $4
        orelse
        Byte =:= $5
        orelse
        Byte =:= $6
        orelse
        Byte =:= $7
        orelse
        Byte =:= $8
        orelse
        Byte =:= $9 ->
    number(Rest, Original, Skip, Acc, Stack, Decode, 1);
value(<<$-,Rest/bits>>, Original, Skip, Acc, Stack, Decode) ->
    number_minus(Rest, Original, Skip, Acc, Stack, Decode);
value(<<$t,Rest/bits>>, Original, Skip, Acc, Stack, Decode) ->
    true(Rest, Original, Skip, Acc, Stack, Decode);
value(<<$f,Rest/bits>>, Original, Skip, Acc, Stack, Decode) ->
    false(Rest, Original, Skip, Acc, Stack, Decode);
value(<<$n,Rest/bits>>, Original, Skip, Acc, Stack, Decode) ->
    null(Rest, Original, Skip, Acc, Stack, Decode);
value(<<$",Rest/bits>>, Original, Skip, Acc, Stack, Decode) ->
    string(Rest, Original, Skip + 1, Acc, Stack, Decode);
value(<<$[,Rest/bits>>, Original, Skip, Acc, Stack, Decode) ->
    array_start(Rest, Original, Skip, Acc, Stack, Decode, 1);
value(<<${,Rest/bits>>, Original, Skip, Acc, Stack, Decode) ->
    object_start(Rest, Original, Skip, Acc, Stack, Decode, 1);
value(<<Byte,_/bits>>, Original, Skip, _Acc, _Stack, _Decode)
    when
        Byte =:= 32
        orelse
        Byte =:= 33
        orelse
        Byte =:= 35
        orelse
        Byte =:= 36
        orelse
        Byte =:= 37
        orelse
        Byte =:= 38
        orelse
        Byte =:= 39
        orelse
        Byte =:= 40
        orelse
        Byte =:= 41
        orelse
        Byte =:= 42
        orelse
        Byte =:= 43
        orelse
        Byte =:= 44
        orelse
        Byte =:= 45
        orelse
        Byte =:= 46
        orelse
        Byte =:= 47
        orelse
        Byte =:= 48
        orelse
        Byte =:= 49
        orelse
        Byte =:= 50
        orelse
        Byte =:= 51
        orelse
        Byte =:= 52
        orelse
        Byte =:= 53
        orelse
        Byte =:= 54
        orelse
        Byte =:= 55
        orelse
        Byte =:= 56
        orelse
        Byte =:= 57
        orelse
        Byte =:= 58
        orelse
        Byte =:= 59
        orelse
        Byte =:= 60
        orelse
        Byte =:= 61
        orelse
        Byte =:= 62
        orelse
        Byte =:= 63
        orelse
        Byte =:= 64
        orelse
        Byte =:= 65
        orelse
        Byte =:= 66
        orelse
        Byte =:= 67
        orelse
        Byte =:= 68
        orelse
        Byte =:= 69
        orelse
        Byte =:= 70
        orelse
        Byte =:= 71
        orelse
        Byte =:= 72
        orelse
        Byte =:= 73
        orelse
        Byte =:= 74
        orelse
        Byte =:= 75
        orelse
        Byte =:= 76
        orelse
        Byte =:= 77
        orelse
        Byte =:= 78
        orelse
        Byte =:= 79
        orelse
        Byte =:= 80
        orelse
        Byte =:= 81
        orelse
        Byte =:= 82
        orelse
        Byte =:= 83
        orelse
        Byte =:= 84
        orelse
        Byte =:= 85
        orelse
        Byte =:= 86
        orelse
        Byte =:= 87
        orelse
        Byte =:= 88
        orelse
        Byte =:= 89
        orelse
        Byte =:= 90
        orelse
        Byte =:= 91
        orelse
        Byte =:= 93
        orelse
        Byte =:= 94
        orelse
        Byte =:= 95
        orelse
        Byte =:= 96
        orelse
        Byte =:= 97
        orelse
        Byte =:= 98
        orelse
        Byte =:= 99
        orelse
        Byte =:= 100
        orelse
        Byte =:= 101
        orelse
        Byte =:= 102
        orelse
        Byte =:= 103
        orelse
        Byte =:= 104
        orelse
        Byte =:= 105
        orelse
        Byte =:= 106
        orelse
        Byte =:= 107
        orelse
        Byte =:= 108
        orelse
        Byte =:= 109
        orelse
        Byte =:= 110
        orelse
        Byte =:= 111
        orelse
        Byte =:= 112
        orelse
        Byte =:= 113
        orelse
        Byte =:= 114
        orelse
        Byte =:= 115
        orelse
        Byte =:= 116
        orelse
        Byte =:= 117
        orelse
        Byte =:= 118
        orelse
        Byte =:= 119
        orelse
        Byte =:= 120
        orelse
        Byte =:= 121
        orelse
        Byte =:= 122
        orelse
        Byte =:= 123
        orelse
        Byte =:= 124
        orelse
        Byte =:= 125
        orelse
        Byte =:= 126
        orelse
        Byte =:= 127 ->
    invalid_byte(Original, Skip);
value(_, Original, Skip, Acc, Stack, Decode) ->
    unexpected(Original, Skip, Acc, Stack, Decode, 0, 0, value).

true(<<"rue",Rest/bits>>, Original, Skip, Acc, Stack, Decode) ->
    continue(Rest, Original, Skip + 4, Acc, Stack, Decode, true);
true(_Rest, Original, Skip, Acc, Stack, Decode) ->
    unexpected(Original, Skip, Acc, Stack, Decode, 1, 3, value).

false(<<"alse",Rest/bits>>, Original, Skip, Acc, Stack, Decode) ->
    continue(Rest, Original, Skip + 5, Acc, Stack, Decode, false);
false(_Rest, Original, Skip, Acc, Stack, Decode) ->
    unexpected(Original, Skip, Acc, Stack, Decode, 1, 4, value).

null(<<"ull",Rest/bits>>, Original, Skip, Acc, Stack, Decode) ->
    continue(Rest, Original,
             Skip + 4,
             Acc, Stack, Decode,
             case Decode of
                 {decode, _, _, _, _, _, _, _, _, _, REC10} ->
                     REC10;
                 REC10 ->
                     error({badrecord, REC10})
             end);
null(_Rest, Original, Skip, Acc, Stack, Decode) ->
    unexpected(Original, Skip, Acc, Stack, Decode, 1, 3, value).

number_minus(<<$0,Rest/bits>>, Original, Skip, Acc, Stack, Decode) ->
    number_zero(Rest, Original, Skip, Acc, Stack, Decode, 2);
number_minus(<<Num,Rest/bits>>, Original, Skip, Acc, Stack, Decode)
    when
        Num =:= $1
        orelse
        Num =:= $2
        orelse
        Num =:= $3
        orelse
        Num =:= $4
        orelse
        Num =:= $5
        orelse
        Num =:= $6
        orelse
        Num =:= $7
        orelse
        Num =:= $8
        orelse
        Num =:= $9 ->
    number(Rest, Original, Skip, Acc, Stack, Decode, 2);
number_minus(_Rest, Original, Skip, Acc, Stack, Decode) ->
    unexpected(Original, Skip, Acc, Stack, Decode, 1, 0, value).

number_zero(<<$.,Rest/bits>>, Original, Skip, Acc, Stack, Decode, Len) ->
    number_frac(Rest, Original, Skip, Acc, Stack, Decode, Len + 1);
number_zero(<<E,Rest/bits>>, Original, Skip, Acc, Stack, Decode, Len)
    when E =:= $E; E =:= $e ->
    number_exp_copy(Rest, Original, Skip, Acc, Stack, Decode,
                    Len + 1,
                    <<"0">>);
number_zero(<<>>, Original, Skip, Acc, Stack, Decode, Len) ->
    Value =
        case Decode of
            {decode, _, _, _, _, _, _, _, REC11, _, _} ->
                REC11;
            REC11 ->
                error({badrecord, REC11})
        end(<<"0">>),
    unexpected(Original, Skip, Acc, Stack, Decode, Len, 0,
               {number, Value});
number_zero(Rest, Original, Skip, Acc, Stack, Decode, Len) ->
    Value =
        case Decode of
            {decode, _, _, _, _, _, _, _, REC12, _, _} ->
                REC12;
            REC12 ->
                error({badrecord, REC12})
        end(<<"0">>),
    continue(Rest, Original, Skip + Len, Acc, Stack, Decode, Value).

number(<<Num,Rest/bits>>, Original, Skip, Acc, Stack, Decode, Len)
    when
        Num >= $0
        andalso
        Num =< $9 ->
    number(Rest, Original, Skip, Acc, Stack, Decode, Len + 1);
number(<<$.,Rest/bits>>, Original, Skip, Acc, Stack, Decode, Len) ->
    number_frac(Rest, Original, Skip, Acc, Stack, Decode, Len + 1);
number(<<E,Rest/bits>>, Original, Skip, Acc, Stack, Decode, Len)
    when E =:= $E; E =:= $e ->
    Prefix = binary_part(Original, Skip, Len),
    number_exp_copy(Rest, Original, Skip, Acc, Stack, Decode,
                    Len + 1,
                    Prefix);
number(<<>>, Original, Skip, Acc, Stack, Decode, Len) ->
    Int =
        case Decode of
            {decode, _, _, _, _, _, _, _, REC13, _, _} ->
                REC13;
            REC13 ->
                error({badrecord, REC13})
        end(binary_part(Original, Skip, Len)),
    unexpected(Original, Skip, Acc, Stack, Decode, Len, 0,
               {number, Int});
number(Rest, Original, Skip, Acc, Stack, Decode, Len) ->
    Int =
        case Decode of
            {decode, _, _, _, _, _, _, _, REC14, _, _} ->
                REC14;
            REC14 ->
                error({badrecord, REC14})
        end(binary_part(Original, Skip, Len)),
    continue(Rest, Original, Skip + Len, Acc, Stack, Decode, Int).

number_frac(<<Byte,Rest/bits>>, Original, Skip, Acc, Stack, Decode, Len)
    when
        Byte >= $0
        andalso
        Byte =< $9 ->
    number_frac_cont(Rest, Original, Skip, Acc, Stack, Decode, Len + 1);
number_frac(_, Original, Skip, Acc, Stack, Decode, Len) ->
    unexpected(Original, Skip, Acc, Stack, Decode, Len, 0, value).

number_frac_cont(<<Byte,Rest/bits>>,
                 Original, Skip, Acc, Stack, Decode, Len)
    when
        Byte >= $0
        andalso
        Byte =< $9 ->
    number_frac_cont(Rest, Original, Skip, Acc, Stack, Decode, Len + 1);
number_frac_cont(<<E,Rest/bits>>,
                 Original, Skip, Acc, Stack, Decode, Len)
    when E =:= $e; E =:= $E ->
    number_exp(Rest, Original, Skip, Acc, Stack, Decode, Len + 1);
number_frac_cont(Rest, Original, Skip, Acc, Stack, Decode, Len) ->
    Token = binary_part(Original, Skip, Len),
    float_decode(Rest, Original, Skip, Acc, Stack, Decode, Len, Token).

float_decode(<<>>, Original, Skip, Acc, Stack, Decode, Len, Token) ->
    try
        case Decode of
            {decode, _, _, _, _, _, _, REC15, _, _, _} ->
                REC15;
            REC15 ->
                error({badrecord, REC15})
        end(Token)
    of
        Float ->
            unexpected(Original, Skip, Acc, Stack, Decode, Len, 0,
                       {number, Float})
    catch
        _:_ ->
            unexpected(Original, Skip, Acc, Stack, Decode, Len, 0,
                       {float_error, Token, Skip})
    end;
float_decode(<<Rest/bits>>,
             Original, Skip, Acc, Stack, Decode, Len, Token) ->
    try
        case Decode of
            {decode, _, _, _, _, _, _, REC16, _, _, _} ->
                REC16;
            REC16 ->
                error({badrecord, REC16})
        end(Token)
    of
        Float ->
            continue(Rest, Original,
                     Skip + Len,
                     Acc, Stack, Decode, Float)
    catch
        _:_ ->
            unexpected_sequence(Token, Skip)
    end.

number_exp(<<Byte,Rest/bits>>, Original, Skip, Acc, Stack, Decode, Len)
    when
        Byte >= $0
        andalso
        Byte =< $9 ->
    number_exp_cont(Rest, Original, Skip, Acc, Stack, Decode, Len + 1);
number_exp(<<Sign,Rest/bits>>, Original, Skip, Acc, Stack, Decode, Len)
    when Sign =:= $+; Sign =:= $- ->
    number_exp_sign(Rest, Original, Skip, Acc, Stack, Decode, Len + 1);
number_exp(_, Original, Skip, Acc, Stack, Decode, Len) ->
    unexpected(Original, Skip, Acc, Stack, Decode, Len, 0, value).

number_exp_sign(<<Byte,Rest/bits>>,
                Original, Skip, Acc, Stack, Decode, Len)
    when
        Byte >= $0
        andalso
        Byte =< $9 ->
    number_exp_cont(Rest, Original, Skip, Acc, Stack, Decode, Len + 1);
number_exp_sign(_, Original, Skip, Acc, Stack, Decode, Len) ->
    unexpected(Original, Skip, Acc, Stack, Decode, Len, 0, value).

number_exp_cont(<<Byte,Rest/bits>>,
                Original, Skip, Acc, Stack, Decode, Len)
    when
        Byte >= $0
        andalso
        Byte =< $9 ->
    number_exp_cont(Rest, Original, Skip, Acc, Stack, Decode, Len + 1);
number_exp_cont(Rest, Original, Skip, Acc, Stack, Decode, Len) ->
    Token = binary_part(Original, Skip, Len),
    float_decode(Rest, Original, Skip, Acc, Stack, Decode, Len, Token).

number_exp_copy(<<Byte,Rest/bits>>,
                Original, Skip, Acc, Stack, Decode, Len, Prefix)
    when
        Byte >= $0
        andalso
        Byte =< $9 ->
    number_exp_cont(Rest, Original, Skip, Acc, Stack, Decode, Len,
                    Prefix, 1);
number_exp_copy(<<Sign,Rest/bits>>,
                Original, Skip, Acc, Stack, Decode, Len, Prefix)
    when Sign =:= $+; Sign =:= $- ->
    number_exp_sign(Rest, Original, Skip, Acc, Stack, Decode, Len,
                    Prefix, 1);
number_exp_copy(_, Original, Skip, Acc, Stack, Decode, Len, _Prefix) ->
    unexpected(Original, Skip, Acc, Stack, Decode, Len, 0, value).

number_exp_sign(<<Byte,Rest/bits>>,
                Original, Skip, Acc, Stack, Decode, Len, Prefix, ExpLen)
    when
        Byte >= $0
        andalso
        Byte =< $9 ->
    number_exp_cont(Rest, Original, Skip, Acc, Stack, Decode, Len,
                    Prefix,
                    ExpLen + 1);
number_exp_sign(_, Original, Skip, Acc, Stack, Decode, Len, _Prefix,
                ExpLen) ->
    unexpected(Original, Skip, Acc, Stack, Decode,
               Len + ExpLen,
               0, value).

number_exp_cont(<<Byte,Rest/bits>>,
                Original, Skip, Acc, Stack, Decode, Len, Prefix, ExpLen)
    when
        Byte >= $0
        andalso
        Byte =< $9 ->
    number_exp_cont(Rest, Original, Skip, Acc, Stack, Decode, Len,
                    Prefix,
                    ExpLen + 1);
number_exp_cont(Rest, Original, Skip, Acc, Stack, Decode, Len, Prefix,
                ExpLen) ->
    Suffix = binary_part(Original, Skip + Len, ExpLen),
    Token = <<Prefix/binary,".0e",Suffix/binary>>,
    float_decode(Rest, Original, Skip, Acc, Stack, Decode,
                 Len + ExpLen,
                 Token).

string(Binary, Original, Skip, Acc, Stack, Decode) ->
    string_ascii(Binary, Original, Skip, Acc, Stack, Decode, 0).

string_ascii(Binary, Original, Skip, Acc, Stack, Decode, Len) ->
    case Binary of
        <<B1,B2,B3,B4,B5,B6,B7,B8,Rest/binary>>
            when
                (B1 =:= 32
                 orelse
                 B1 =:= 33
                 orelse
                 B1 =:= 35
                 orelse
                 B1 =:= 36
                 orelse
                 B1 =:= 37
                 orelse
                 B1 =:= 38
                 orelse
                 B1 =:= 39
                 orelse
                 B1 =:= 40
                 orelse
                 B1 =:= 41
                 orelse
                 B1 =:= 42
                 orelse
                 B1 =:= 43
                 orelse
                 B1 =:= 44
                 orelse
                 B1 =:= 45
                 orelse
                 B1 =:= 46
                 orelse
                 B1 =:= 47
                 orelse
                 B1 =:= 48
                 orelse
                 B1 =:= 49
                 orelse
                 B1 =:= 50
                 orelse
                 B1 =:= 51
                 orelse
                 B1 =:= 52
                 orelse
                 B1 =:= 53
                 orelse
                 B1 =:= 54
                 orelse
                 B1 =:= 55
                 orelse
                 B1 =:= 56
                 orelse
                 B1 =:= 57
                 orelse
                 B1 =:= 58
                 orelse
                 B1 =:= 59
                 orelse
                 B1 =:= 60
                 orelse
                 B1 =:= 61
                 orelse
                 B1 =:= 62
                 orelse
                 B1 =:= 63
                 orelse
                 B1 =:= 64
                 orelse
                 B1 =:= 65
                 orelse
                 B1 =:= 66
                 orelse
                 B1 =:= 67
                 orelse
                 B1 =:= 68
                 orelse
                 B1 =:= 69
                 orelse
                 B1 =:= 70
                 orelse
                 B1 =:= 71
                 orelse
                 B1 =:= 72
                 orelse
                 B1 =:= 73
                 orelse
                 B1 =:= 74
                 orelse
                 B1 =:= 75
                 orelse
                 B1 =:= 76
                 orelse
                 B1 =:= 77
                 orelse
                 B1 =:= 78
                 orelse
                 B1 =:= 79
                 orelse
                 B1 =:= 80
                 orelse
                 B1 =:= 81
                 orelse
                 B1 =:= 82
                 orelse
                 B1 =:= 83
                 orelse
                 B1 =:= 84
                 orelse
                 B1 =:= 85
                 orelse
                 B1 =:= 86
                 orelse
                 B1 =:= 87
                 orelse
                 B1 =:= 88
                 orelse
                 B1 =:= 89
                 orelse
                 B1 =:= 90
                 orelse
                 B1 =:= 91
                 orelse
                 B1 =:= 93
                 orelse
                 B1 =:= 94
                 orelse
                 B1 =:= 95
                 orelse
                 B1 =:= 96
                 orelse
                 B1 =:= 97
                 orelse
                 B1 =:= 98
                 orelse
                 B1 =:= 99
                 orelse
                 B1 =:= 100
                 orelse
                 B1 =:= 101
                 orelse
                 B1 =:= 102
                 orelse
                 B1 =:= 103
                 orelse
                 B1 =:= 104
                 orelse
                 B1 =:= 105
                 orelse
                 B1 =:= 106
                 orelse
                 B1 =:= 107
                 orelse
                 B1 =:= 108
                 orelse
                 B1 =:= 109
                 orelse
                 B1 =:= 110
                 orelse
                 B1 =:= 111
                 orelse
                 B1 =:= 112
                 orelse
                 B1 =:= 113
                 orelse
                 B1 =:= 114
                 orelse
                 B1 =:= 115
                 orelse
                 B1 =:= 116
                 orelse
                 B1 =:= 117
                 orelse
                 B1 =:= 118
                 orelse
                 B1 =:= 119
                 orelse
                 B1 =:= 120
                 orelse
                 B1 =:= 121
                 orelse
                 B1 =:= 122
                 orelse
                 B1 =:= 123
                 orelse
                 B1 =:= 124
                 orelse
                 B1 =:= 125
                 orelse
                 B1 =:= 126
                 orelse
                 B1 =:= 127)
                andalso
                (B2 =:= 32
                 orelse
                 B2 =:= 33
                 orelse
                 B2 =:= 35
                 orelse
                 B2 =:= 36
                 orelse
                 B2 =:= 37
                 orelse
                 B2 =:= 38
                 orelse
                 B2 =:= 39
                 orelse
                 B2 =:= 40
                 orelse
                 B2 =:= 41
                 orelse
                 B2 =:= 42
                 orelse
                 B2 =:= 43
                 orelse
                 B2 =:= 44
                 orelse
                 B2 =:= 45
                 orelse
                 B2 =:= 46
                 orelse
                 B2 =:= 47
                 orelse
                 B2 =:= 48
                 orelse
                 B2 =:= 49
                 orelse
                 B2 =:= 50
                 orelse
                 B2 =:= 51
                 orelse
                 B2 =:= 52
                 orelse
                 B2 =:= 53
                 orelse
                 B2 =:= 54
                 orelse
                 B2 =:= 55
                 orelse
                 B2 =:= 56
                 orelse
                 B2 =:= 57
                 orelse
                 B2 =:= 58
                 orelse
                 B2 =:= 59
                 orelse
                 B2 =:= 60
                 orelse
                 B2 =:= 61
                 orelse
                 B2 =:= 62
                 orelse
                 B2 =:= 63
                 orelse
                 B2 =:= 64
                 orelse
                 B2 =:= 65
                 orelse
                 B2 =:= 66
                 orelse
                 B2 =:= 67
                 orelse
                 B2 =:= 68
                 orelse
                 B2 =:= 69
                 orelse
                 B2 =:= 70
                 orelse
                 B2 =:= 71
                 orelse
                 B2 =:= 72
                 orelse
                 B2 =:= 73
                 orelse
                 B2 =:= 74
                 orelse
                 B2 =:= 75
                 orelse
                 B2 =:= 76
                 orelse
                 B2 =:= 77
                 orelse
                 B2 =:= 78
                 orelse
                 B2 =:= 79
                 orelse
                 B2 =:= 80
                 orelse
                 B2 =:= 81
                 orelse
                 B2 =:= 82
                 orelse
                 B2 =:= 83
                 orelse
                 B2 =:= 84
                 orelse
                 B2 =:= 85
                 orelse
                 B2 =:= 86
                 orelse
                 B2 =:= 87
                 orelse
                 B2 =:= 88
                 orelse
                 B2 =:= 89
                 orelse
                 B2 =:= 90
                 orelse
                 B2 =:= 91
                 orelse
                 B2 =:= 93
                 orelse
                 B2 =:= 94
                 orelse
                 B2 =:= 95
                 orelse
                 B2 =:= 96
                 orelse
                 B2 =:= 97
                 orelse
                 B2 =:= 98
                 orelse
                 B2 =:= 99
                 orelse
                 B2 =:= 100
                 orelse
                 B2 =:= 101
                 orelse
                 B2 =:= 102
                 orelse
                 B2 =:= 103
                 orelse
                 B2 =:= 104
                 orelse
                 B2 =:= 105
                 orelse
                 B2 =:= 106
                 orelse
                 B2 =:= 107
                 orelse
                 B2 =:= 108
                 orelse
                 B2 =:= 109
                 orelse
                 B2 =:= 110
                 orelse
                 B2 =:= 111
                 orelse
                 B2 =:= 112
                 orelse
                 B2 =:= 113
                 orelse
                 B2 =:= 114
                 orelse
                 B2 =:= 115
                 orelse
                 B2 =:= 116
                 orelse
                 B2 =:= 117
                 orelse
                 B2 =:= 118
                 orelse
                 B2 =:= 119
                 orelse
                 B2 =:= 120
                 orelse
                 B2 =:= 121
                 orelse
                 B2 =:= 122
                 orelse
                 B2 =:= 123
                 orelse
                 B2 =:= 124
                 orelse
                 B2 =:= 125
                 orelse
                 B2 =:= 126
                 orelse
                 B2 =:= 127)
                andalso
                (B3 =:= 32
                 orelse
                 B3 =:= 33
                 orelse
                 B3 =:= 35
                 orelse
                 B3 =:= 36
                 orelse
                 B3 =:= 37
                 orelse
                 B3 =:= 38
                 orelse
                 B3 =:= 39
                 orelse
                 B3 =:= 40
                 orelse
                 B3 =:= 41
                 orelse
                 B3 =:= 42
                 orelse
                 B3 =:= 43
                 orelse
                 B3 =:= 44
                 orelse
                 B3 =:= 45
                 orelse
                 B3 =:= 46
                 orelse
                 B3 =:= 47
                 orelse
                 B3 =:= 48
                 orelse
                 B3 =:= 49
                 orelse
                 B3 =:= 50
                 orelse
                 B3 =:= 51
                 orelse
                 B3 =:= 52
                 orelse
                 B3 =:= 53
                 orelse
                 B3 =:= 54
                 orelse
                 B3 =:= 55
                 orelse
                 B3 =:= 56
                 orelse
                 B3 =:= 57
                 orelse
                 B3 =:= 58
                 orelse
                 B3 =:= 59
                 orelse
                 B3 =:= 60
                 orelse
                 B3 =:= 61
                 orelse
                 B3 =:= 62
                 orelse
                 B3 =:= 63
                 orelse
                 B3 =:= 64
                 orelse
                 B3 =:= 65
                 orelse
                 B3 =:= 66
                 orelse
                 B3 =:= 67
                 orelse
                 B3 =:= 68
                 orelse
                 B3 =:= 69
                 orelse
                 B3 =:= 70
                 orelse
                 B3 =:= 71
                 orelse
                 B3 =:= 72
                 orelse
                 B3 =:= 73
                 orelse
                 B3 =:= 74
                 orelse
                 B3 =:= 75
                 orelse
                 B3 =:= 76
                 orelse
                 B3 =:= 77
                 orelse
                 B3 =:= 78
                 orelse
                 B3 =:= 79
                 orelse
                 B3 =:= 80
                 orelse
                 B3 =:= 81
                 orelse
                 B3 =:= 82
                 orelse
                 B3 =:= 83
                 orelse
                 B3 =:= 84
                 orelse
                 B3 =:= 85
                 orelse
                 B3 =:= 86
                 orelse
                 B3 =:= 87
                 orelse
                 B3 =:= 88
                 orelse
                 B3 =:= 89
                 orelse
                 B3 =:= 90
                 orelse
                 B3 =:= 91
                 orelse
                 B3 =:= 93
                 orelse
                 B3 =:= 94
                 orelse
                 B3 =:= 95
                 orelse
                 B3 =:= 96
                 orelse
                 B3 =:= 97
                 orelse
                 B3 =:= 98
                 orelse
                 B3 =:= 99
                 orelse
                 B3 =:= 100
                 orelse
                 B3 =:= 101
                 orelse
                 B3 =:= 102
                 orelse
                 B3 =:= 103
                 orelse
                 B3 =:= 104
                 orelse
                 B3 =:= 105
                 orelse
                 B3 =:= 106
                 orelse
                 B3 =:= 107
                 orelse
                 B3 =:= 108
                 orelse
                 B3 =:= 109
                 orelse
                 B3 =:= 110
                 orelse
                 B3 =:= 111
                 orelse
                 B3 =:= 112
                 orelse
                 B3 =:= 113
                 orelse
                 B3 =:= 114
                 orelse
                 B3 =:= 115
                 orelse
                 B3 =:= 116
                 orelse
                 B3 =:= 117
                 orelse
                 B3 =:= 118
                 orelse
                 B3 =:= 119
                 orelse
                 B3 =:= 120
                 orelse
                 B3 =:= 121
                 orelse
                 B3 =:= 122
                 orelse
                 B3 =:= 123
                 orelse
                 B3 =:= 124
                 orelse
                 B3 =:= 125
                 orelse
                 B3 =:= 126
                 orelse
                 B3 =:= 127)
                andalso
                (B4 =:= 32
                 orelse
                 B4 =:= 33
                 orelse
                 B4 =:= 35
                 orelse
                 B4 =:= 36
                 orelse
                 B4 =:= 37
                 orelse
                 B4 =:= 38
                 orelse
                 B4 =:= 39
                 orelse
                 B4 =:= 40
                 orelse
                 B4 =:= 41
                 orelse
                 B4 =:= 42
                 orelse
                 B4 =:= 43
                 orelse
                 B4 =:= 44
                 orelse
                 B4 =:= 45
                 orelse
                 B4 =:= 46
                 orelse
                 B4 =:= 47
                 orelse
                 B4 =:= 48
                 orelse
                 B4 =:= 49
                 orelse
                 B4 =:= 50
                 orelse
                 B4 =:= 51
                 orelse
                 B4 =:= 52
                 orelse
                 B4 =:= 53
                 orelse
                 B4 =:= 54
                 orelse
                 B4 =:= 55
                 orelse
                 B4 =:= 56
                 orelse
                 B4 =:= 57
                 orelse
                 B4 =:= 58
                 orelse
                 B4 =:= 59
                 orelse
                 B4 =:= 60
                 orelse
                 B4 =:= 61
                 orelse
                 B4 =:= 62
                 orelse
                 B4 =:= 63
                 orelse
                 B4 =:= 64
                 orelse
                 B4 =:= 65
                 orelse
                 B4 =:= 66
                 orelse
                 B4 =:= 67
                 orelse
                 B4 =:= 68
                 orelse
                 B4 =:= 69
                 orelse
                 B4 =:= 70
                 orelse
                 B4 =:= 71
                 orelse
                 B4 =:= 72
                 orelse
                 B4 =:= 73
                 orelse
                 B4 =:= 74
                 orelse
                 B4 =:= 75
                 orelse
                 B4 =:= 76
                 orelse
                 B4 =:= 77
                 orelse
                 B4 =:= 78
                 orelse
                 B4 =:= 79
                 orelse
                 B4 =:= 80
                 orelse
                 B4 =:= 81
                 orelse
                 B4 =:= 82
                 orelse
                 B4 =:= 83
                 orelse
                 B4 =:= 84
                 orelse
                 B4 =:= 85
                 orelse
                 B4 =:= 86
                 orelse
                 B4 =:= 87
                 orelse
                 B4 =:= 88
                 orelse
                 B4 =:= 89
                 orelse
                 B4 =:= 90
                 orelse
                 B4 =:= 91
                 orelse
                 B4 =:= 93
                 orelse
                 B4 =:= 94
                 orelse
                 B4 =:= 95
                 orelse
                 B4 =:= 96
                 orelse
                 B4 =:= 97
                 orelse
                 B4 =:= 98
                 orelse
                 B4 =:= 99
                 orelse
                 B4 =:= 100
                 orelse
                 B4 =:= 101
                 orelse
                 B4 =:= 102
                 orelse
                 B4 =:= 103
                 orelse
                 B4 =:= 104
                 orelse
                 B4 =:= 105
                 orelse
                 B4 =:= 106
                 orelse
                 B4 =:= 107
                 orelse
                 B4 =:= 108
                 orelse
                 B4 =:= 109
                 orelse
                 B4 =:= 110
                 orelse
                 B4 =:= 111
                 orelse
                 B4 =:= 112
                 orelse
                 B4 =:= 113
                 orelse
                 B4 =:= 114
                 orelse
                 B4 =:= 115
                 orelse
                 B4 =:= 116
                 orelse
                 B4 =:= 117
                 orelse
                 B4 =:= 118
                 orelse
                 B4 =:= 119
                 orelse
                 B4 =:= 120
                 orelse
                 B4 =:= 121
                 orelse
                 B4 =:= 122
                 orelse
                 B4 =:= 123
                 orelse
                 B4 =:= 124
                 orelse
                 B4 =:= 125
                 orelse
                 B4 =:= 126
                 orelse
                 B4 =:= 127)
                andalso
                (B5 =:= 32
                 orelse
                 B5 =:= 33
                 orelse
                 B5 =:= 35
                 orelse
                 B5 =:= 36
                 orelse
                 B5 =:= 37
                 orelse
                 B5 =:= 38
                 orelse
                 B5 =:= 39
                 orelse
                 B5 =:= 40
                 orelse
                 B5 =:= 41
                 orelse
                 B5 =:= 42
                 orelse
                 B5 =:= 43
                 orelse
                 B5 =:= 44
                 orelse
                 B5 =:= 45
                 orelse
                 B5 =:= 46
                 orelse
                 B5 =:= 47
                 orelse
                 B5 =:= 48
                 orelse
                 B5 =:= 49
                 orelse
                 B5 =:= 50
                 orelse
                 B5 =:= 51
                 orelse
                 B5 =:= 52
                 orelse
                 B5 =:= 53
                 orelse
                 B5 =:= 54
                 orelse
                 B5 =:= 55
                 orelse
                 B5 =:= 56
                 orelse
                 B5 =:= 57
                 orelse
                 B5 =:= 58
                 orelse
                 B5 =:= 59
                 orelse
                 B5 =:= 60
                 orelse
                 B5 =:= 61
                 orelse
                 B5 =:= 62
                 orelse
                 B5 =:= 63
                 orelse
                 B5 =:= 64
                 orelse
                 B5 =:= 65
                 orelse
                 B5 =:= 66
                 orelse
                 B5 =:= 67
                 orelse
                 B5 =:= 68
                 orelse
                 B5 =:= 69
                 orelse
                 B5 =:= 70
                 orelse
                 B5 =:= 71
                 orelse
                 B5 =:= 72
                 orelse
                 B5 =:= 73
                 orelse
                 B5 =:= 74
                 orelse
                 B5 =:= 75
                 orelse
                 B5 =:= 76
                 orelse
                 B5 =:= 77
                 orelse
                 B5 =:= 78
                 orelse
                 B5 =:= 79
                 orelse
                 B5 =:= 80
                 orelse
                 B5 =:= 81
                 orelse
                 B5 =:= 82
                 orelse
                 B5 =:= 83
                 orelse
                 B5 =:= 84
                 orelse
                 B5 =:= 85
                 orelse
                 B5 =:= 86
                 orelse
                 B5 =:= 87
                 orelse
                 B5 =:= 88
                 orelse
                 B5 =:= 89
                 orelse
                 B5 =:= 90
                 orelse
                 B5 =:= 91
                 orelse
                 B5 =:= 93
                 orelse
                 B5 =:= 94
                 orelse
                 B5 =:= 95
                 orelse
                 B5 =:= 96
                 orelse
                 B5 =:= 97
                 orelse
                 B5 =:= 98
                 orelse
                 B5 =:= 99
                 orelse
                 B5 =:= 100
                 orelse
                 B5 =:= 101
                 orelse
                 B5 =:= 102
                 orelse
                 B5 =:= 103
                 orelse
                 B5 =:= 104
                 orelse
                 B5 =:= 105
                 orelse
                 B5 =:= 106
                 orelse
                 B5 =:= 107
                 orelse
                 B5 =:= 108
                 orelse
                 B5 =:= 109
                 orelse
                 B5 =:= 110
                 orelse
                 B5 =:= 111
                 orelse
                 B5 =:= 112
                 orelse
                 B5 =:= 113
                 orelse
                 B5 =:= 114
                 orelse
                 B5 =:= 115
                 orelse
                 B5 =:= 116
                 orelse
                 B5 =:= 117
                 orelse
                 B5 =:= 118
                 orelse
                 B5 =:= 119
                 orelse
                 B5 =:= 120
                 orelse
                 B5 =:= 121
                 orelse
                 B5 =:= 122
                 orelse
                 B5 =:= 123
                 orelse
                 B5 =:= 124
                 orelse
                 B5 =:= 125
                 orelse
                 B5 =:= 126
                 orelse
                 B5 =:= 127)
                andalso
                (B6 =:= 32
                 orelse
                 B6 =:= 33
                 orelse
                 B6 =:= 35
                 orelse
                 B6 =:= 36
                 orelse
                 B6 =:= 37
                 orelse
                 B6 =:= 38
                 orelse
                 B6 =:= 39
                 orelse
                 B6 =:= 40
                 orelse
                 B6 =:= 41
                 orelse
                 B6 =:= 42
                 orelse
                 B6 =:= 43
                 orelse
                 B6 =:= 44
                 orelse
                 B6 =:= 45
                 orelse
                 B6 =:= 46
                 orelse
                 B6 =:= 47
                 orelse
                 B6 =:= 48
                 orelse
                 B6 =:= 49
                 orelse
                 B6 =:= 50
                 orelse
                 B6 =:= 51
                 orelse
                 B6 =:= 52
                 orelse
                 B6 =:= 53
                 orelse
                 B6 =:= 54
                 orelse
                 B6 =:= 55
                 orelse
                 B6 =:= 56
                 orelse
                 B6 =:= 57
                 orelse
                 B6 =:= 58
                 orelse
                 B6 =:= 59
                 orelse
                 B6 =:= 60
                 orelse
                 B6 =:= 61
                 orelse
                 B6 =:= 62
                 orelse
                 B6 =:= 63
                 orelse
                 B6 =:= 64
                 orelse
                 B6 =:= 65
                 orelse
                 B6 =:= 66
                 orelse
                 B6 =:= 67
                 orelse
                 B6 =:= 68
                 orelse
                 B6 =:= 69
                 orelse
                 B6 =:= 70
                 orelse
                 B6 =:= 71
                 orelse
                 B6 =:= 72
                 orelse
                 B6 =:= 73
                 orelse
                 B6 =:= 74
                 orelse
                 B6 =:= 75
                 orelse
                 B6 =:= 76
                 orelse
                 B6 =:= 77
                 orelse
                 B6 =:= 78
                 orelse
                 B6 =:= 79
                 orelse
                 B6 =:= 80
                 orelse
                 B6 =:= 81
                 orelse
                 B6 =:= 82
                 orelse
                 B6 =:= 83
                 orelse
                 B6 =:= 84
                 orelse
                 B6 =:= 85
                 orelse
                 B6 =:= 86
                 orelse
                 B6 =:= 87
                 orelse
                 B6 =:= 88
                 orelse
                 B6 =:= 89
                 orelse
                 B6 =:= 90
                 orelse
                 B6 =:= 91
                 orelse
                 B6 =:= 93
                 orelse
                 B6 =:= 94
                 orelse
                 B6 =:= 95
                 orelse
                 B6 =:= 96
                 orelse
                 B6 =:= 97
                 orelse
                 B6 =:= 98
                 orelse
                 B6 =:= 99
                 orelse
                 B6 =:= 100
                 orelse
                 B6 =:= 101
                 orelse
                 B6 =:= 102
                 orelse
                 B6 =:= 103
                 orelse
                 B6 =:= 104
                 orelse
                 B6 =:= 105
                 orelse
                 B6 =:= 106
                 orelse
                 B6 =:= 107
                 orelse
                 B6 =:= 108
                 orelse
                 B6 =:= 109
                 orelse
                 B6 =:= 110
                 orelse
                 B6 =:= 111
                 orelse
                 B6 =:= 112
                 orelse
                 B6 =:= 113
                 orelse
                 B6 =:= 114
                 orelse
                 B6 =:= 115
                 orelse
                 B6 =:= 116
                 orelse
                 B6 =:= 117
                 orelse
                 B6 =:= 118
                 orelse
                 B6 =:= 119
                 orelse
                 B6 =:= 120
                 orelse
                 B6 =:= 121
                 orelse
                 B6 =:= 122
                 orelse
                 B6 =:= 123
                 orelse
                 B6 =:= 124
                 orelse
                 B6 =:= 125
                 orelse
                 B6 =:= 126
                 orelse
                 B6 =:= 127)
                andalso
                (B7 =:= 32
                 orelse
                 B7 =:= 33
                 orelse
                 B7 =:= 35
                 orelse
                 B7 =:= 36
                 orelse
                 B7 =:= 37
                 orelse
                 B7 =:= 38
                 orelse
                 B7 =:= 39
                 orelse
                 B7 =:= 40
                 orelse
                 B7 =:= 41
                 orelse
                 B7 =:= 42
                 orelse
                 B7 =:= 43
                 orelse
                 B7 =:= 44
                 orelse
                 B7 =:= 45
                 orelse
                 B7 =:= 46
                 orelse
                 B7 =:= 47
                 orelse
                 B7 =:= 48
                 orelse
                 B7 =:= 49
                 orelse
                 B7 =:= 50
                 orelse
                 B7 =:= 51
                 orelse
                 B7 =:= 52
                 orelse
                 B7 =:= 53
                 orelse
                 B7 =:= 54
                 orelse
                 B7 =:= 55
                 orelse
                 B7 =:= 56
                 orelse
                 B7 =:= 57
                 orelse
                 B7 =:= 58
                 orelse
                 B7 =:= 59
                 orelse
                 B7 =:= 60
                 orelse
                 B7 =:= 61
                 orelse
                 B7 =:= 62
                 orelse
                 B7 =:= 63
                 orelse
                 B7 =:= 64
                 orelse
                 B7 =:= 65
                 orelse
                 B7 =:= 66
                 orelse
                 B7 =:= 67
                 orelse
                 B7 =:= 68
                 orelse
                 B7 =:= 69
                 orelse
                 B7 =:= 70
                 orelse
                 B7 =:= 71
                 orelse
                 B7 =:= 72
                 orelse
                 B7 =:= 73
                 orelse
                 B7 =:= 74
                 orelse
                 B7 =:= 75
                 orelse
                 B7 =:= 76
                 orelse
                 B7 =:= 77
                 orelse
                 B7 =:= 78
                 orelse
                 B7 =:= 79
                 orelse
                 B7 =:= 80
                 orelse
                 B7 =:= 81
                 orelse
                 B7 =:= 82
                 orelse
                 B7 =:= 83
                 orelse
                 B7 =:= 84
                 orelse
                 B7 =:= 85
                 orelse
                 B7 =:= 86
                 orelse
                 B7 =:= 87
                 orelse
                 B7 =:= 88
                 orelse
                 B7 =:= 89
                 orelse
                 B7 =:= 90
                 orelse
                 B7 =:= 91
                 orelse
                 B7 =:= 93
                 orelse
                 B7 =:= 94
                 orelse
                 B7 =:= 95
                 orelse
                 B7 =:= 96
                 orelse
                 B7 =:= 97
                 orelse
                 B7 =:= 98
                 orelse
                 B7 =:= 99
                 orelse
                 B7 =:= 100
                 orelse
                 B7 =:= 101
                 orelse
                 B7 =:= 102
                 orelse
                 B7 =:= 103
                 orelse
                 B7 =:= 104
                 orelse
                 B7 =:= 105
                 orelse
                 B7 =:= 106
                 orelse
                 B7 =:= 107
                 orelse
                 B7 =:= 108
                 orelse
                 B7 =:= 109
                 orelse
                 B7 =:= 110
                 orelse
                 B7 =:= 111
                 orelse
                 B7 =:= 112
                 orelse
                 B7 =:= 113
                 orelse
                 B7 =:= 114
                 orelse
                 B7 =:= 115
                 orelse
                 B7 =:= 116
                 orelse
                 B7 =:= 117
                 orelse
                 B7 =:= 118
                 orelse
                 B7 =:= 119
                 orelse
                 B7 =:= 120
                 orelse
                 B7 =:= 121
                 orelse
                 B7 =:= 122
                 orelse
                 B7 =:= 123
                 orelse
                 B7 =:= 124
                 orelse
                 B7 =:= 125
                 orelse
                 B7 =:= 126
                 orelse
                 B7 =:= 127)
                andalso
                (B8 =:= 32
                 orelse
                 B8 =:= 33
                 orelse
                 B8 =:= 35
                 orelse
                 B8 =:= 36
                 orelse
                 B8 =:= 37
                 orelse
                 B8 =:= 38
                 orelse
                 B8 =:= 39
                 orelse
                 B8 =:= 40
                 orelse
                 B8 =:= 41
                 orelse
                 B8 =:= 42
                 orelse
                 B8 =:= 43
                 orelse
                 B8 =:= 44
                 orelse
                 B8 =:= 45
                 orelse
                 B8 =:= 46
                 orelse
                 B8 =:= 47
                 orelse
                 B8 =:= 48
                 orelse
                 B8 =:= 49
                 orelse
                 B8 =:= 50
                 orelse
                 B8 =:= 51
                 orelse
                 B8 =:= 52
                 orelse
                 B8 =:= 53
                 orelse
                 B8 =:= 54
                 orelse
                 B8 =:= 55
                 orelse
                 B8 =:= 56
                 orelse
                 B8 =:= 57
                 orelse
                 B8 =:= 58
                 orelse
                 B8 =:= 59
                 orelse
                 B8 =:= 60
                 orelse
                 B8 =:= 61
                 orelse
                 B8 =:= 62
                 orelse
                 B8 =:= 63
                 orelse
                 B8 =:= 64
                 orelse
                 B8 =:= 65
                 orelse
                 B8 =:= 66
                 orelse
                 B8 =:= 67
                 orelse
                 B8 =:= 68
                 orelse
                 B8 =:= 69
                 orelse
                 B8 =:= 70
                 orelse
                 B8 =:= 71
                 orelse
                 B8 =:= 72
                 orelse
                 B8 =:= 73
                 orelse
                 B8 =:= 74
                 orelse
                 B8 =:= 75
                 orelse
                 B8 =:= 76
                 orelse
                 B8 =:= 77
                 orelse
                 B8 =:= 78
                 orelse
                 B8 =:= 79
                 orelse
                 B8 =:= 80
                 orelse
                 B8 =:= 81
                 orelse
                 B8 =:= 82
                 orelse
                 B8 =:= 83
                 orelse
                 B8 =:= 84
                 orelse
                 B8 =:= 85
                 orelse
                 B8 =:= 86
                 orelse
                 B8 =:= 87
                 orelse
                 B8 =:= 88
                 orelse
                 B8 =:= 89
                 orelse
                 B8 =:= 90
                 orelse
                 B8 =:= 91
                 orelse
                 B8 =:= 93
                 orelse
                 B8 =:= 94
                 orelse
                 B8 =:= 95
                 orelse
                 B8 =:= 96
                 orelse
                 B8 =:= 97
                 orelse
                 B8 =:= 98
                 orelse
                 B8 =:= 99
                 orelse
                 B8 =:= 100
                 orelse
                 B8 =:= 101
                 orelse
                 B8 =:= 102
                 orelse
                 B8 =:= 103
                 orelse
                 B8 =:= 104
                 orelse
                 B8 =:= 105
                 orelse
                 B8 =:= 106
                 orelse
                 B8 =:= 107
                 orelse
                 B8 =:= 108
                 orelse
                 B8 =:= 109
                 orelse
                 B8 =:= 110
                 orelse
                 B8 =:= 111
                 orelse
                 B8 =:= 112
                 orelse
                 B8 =:= 113
                 orelse
                 B8 =:= 114
                 orelse
                 B8 =:= 115
                 orelse
                 B8 =:= 116
                 orelse
                 B8 =:= 117
                 orelse
                 B8 =:= 118
                 orelse
                 B8 =:= 119
                 orelse
                 B8 =:= 120
                 orelse
                 B8 =:= 121
                 orelse
                 B8 =:= 122
                 orelse
                 B8 =:= 123
                 orelse
                 B8 =:= 124
                 orelse
                 B8 =:= 125
                 orelse
                 B8 =:= 126
                 orelse
                 B8 =:= 127) ->
            string_ascii(Rest, Original, Skip, Acc, Stack, Decode,
                         Len + 8);
        Other ->
            string(Other, Original, Skip, Acc, Stack, Decode, Len)
    end.

-spec string(binary(),
             binary(),
             integer(),
             acc(),
             stack(),
             decode(),
             integer()) ->
                dynamic().

string(<<Byte,Rest/bits>>, Orig, Skip, Acc, Stack, Decode, Len)
    when
        Byte =:= 32
        orelse
        Byte =:= 33
        orelse
        Byte =:= 35
        orelse
        Byte =:= 36
        orelse
        Byte =:= 37
        orelse
        Byte =:= 38
        orelse
        Byte =:= 39
        orelse
        Byte =:= 40
        orelse
        Byte =:= 41
        orelse
        Byte =:= 42
        orelse
        Byte =:= 43
        orelse
        Byte =:= 44
        orelse
        Byte =:= 45
        orelse
        Byte =:= 46
        orelse
        Byte =:= 47
        orelse
        Byte =:= 48
        orelse
        Byte =:= 49
        orelse
        Byte =:= 50
        orelse
        Byte =:= 51
        orelse
        Byte =:= 52
        orelse
        Byte =:= 53
        orelse
        Byte =:= 54
        orelse
        Byte =:= 55
        orelse
        Byte =:= 56
        orelse
        Byte =:= 57
        orelse
        Byte =:= 58
        orelse
        Byte =:= 59
        orelse
        Byte =:= 60
        orelse
        Byte =:= 61
        orelse
        Byte =:= 62
        orelse
        Byte =:= 63
        orelse
        Byte =:= 64
        orelse
        Byte =:= 65
        orelse
        Byte =:= 66
        orelse
        Byte =:= 67
        orelse
        Byte =:= 68
        orelse
        Byte =:= 69
        orelse
        Byte =:= 70
        orelse
        Byte =:= 71
        orelse
        Byte =:= 72
        orelse
        Byte =:= 73
        orelse
        Byte =:= 74
        orelse
        Byte =:= 75
        orelse
        Byte =:= 76
        orelse
        Byte =:= 77
        orelse
        Byte =:= 78
        orelse
        Byte =:= 79
        orelse
        Byte =:= 80
        orelse
        Byte =:= 81
        orelse
        Byte =:= 82
        orelse
        Byte =:= 83
        orelse
        Byte =:= 84
        orelse
        Byte =:= 85
        orelse
        Byte =:= 86
        orelse
        Byte =:= 87
        orelse
        Byte =:= 88
        orelse
        Byte =:= 89
        orelse
        Byte =:= 90
        orelse
        Byte =:= 91
        orelse
        Byte =:= 93
        orelse
        Byte =:= 94
        orelse
        Byte =:= 95
        orelse
        Byte =:= 96
        orelse
        Byte =:= 97
        orelse
        Byte =:= 98
        orelse
        Byte =:= 99
        orelse
        Byte =:= 100
        orelse
        Byte =:= 101
        orelse
        Byte =:= 102
        orelse
        Byte =:= 103
        orelse
        Byte =:= 104
        orelse
        Byte =:= 105
        orelse
        Byte =:= 106
        orelse
        Byte =:= 107
        orelse
        Byte =:= 108
        orelse
        Byte =:= 109
        orelse
        Byte =:= 110
        orelse
        Byte =:= 111
        orelse
        Byte =:= 112
        orelse
        Byte =:= 113
        orelse
        Byte =:= 114
        orelse
        Byte =:= 115
        orelse
        Byte =:= 116
        orelse
        Byte =:= 117
        orelse
        Byte =:= 118
        orelse
        Byte =:= 119
        orelse
        Byte =:= 120
        orelse
        Byte =:= 121
        orelse
        Byte =:= 122
        orelse
        Byte =:= 123
        orelse
        Byte =:= 124
        orelse
        Byte =:= 125
        orelse
        Byte =:= 126
        orelse
        Byte =:= 127 ->
    string(Rest, Orig, Skip, Acc, Stack, Decode, Len + 1);
string(<<$\\,Rest/bits>>, Orig, Skip, Acc, Stack, Decode, Len) ->
    Part = binary_part(Orig, Skip, Len),
    SAcc = <<>>,
    unescape(Rest, Orig, Skip, Acc, Stack, Decode,
             Skip - 1,
             Len,
             <<SAcc/binary,Part/binary>>);
string(<<$",Rest/bits>>, Orig, Skip0, Acc, Stack, Decode, Len) ->
    Value = binary_part(Orig, Skip0, Len),
    Skip = Skip0 + Len + 1,
    case
        case Decode of
            {decode, _, _, _, _, _, _, _, _, REC17, _} ->
                REC17;
            REC17 ->
                error({badrecord, REC17})
        end
    of
        undefined ->
            continue(Rest, Orig, Skip, Acc, Stack, Decode, Value);
        Fun ->
            continue(Rest, Orig, Skip, Acc, Stack, Decode, Fun(Value))
    end;
string(<<Byte,_/bits>>, Orig, Skip, _Acc, _Stack, _Decode, Len)
    when
        Byte =:= 0
        orelse
        Byte =:= 1
        orelse
        Byte =:= 2
        orelse
        Byte =:= 3
        orelse
        Byte =:= 4
        orelse
        Byte =:= 5
        orelse
        Byte =:= 6
        orelse
        Byte =:= 7
        orelse
        Byte =:= 8
        orelse
        Byte =:= 9
        orelse
        Byte =:= 10
        orelse
        Byte =:= 11
        orelse
        Byte =:= 12
        orelse
        Byte =:= 13
        orelse
        Byte =:= 14
        orelse
        Byte =:= 15
        orelse
        Byte =:= 16
        orelse
        Byte =:= 17
        orelse
        Byte =:= 18
        orelse
        Byte =:= 19
        orelse
        Byte =:= 20
        orelse
        Byte =:= 21
        orelse
        Byte =:= 22
        orelse
        Byte =:= 23
        orelse
        Byte =:= 24
        orelse
        Byte =:= 25
        orelse
        Byte =:= 26
        orelse
        Byte =:= 27
        orelse
        Byte =:= 28
        orelse
        Byte =:= 29
        orelse
        Byte =:= 30
        orelse
        Byte =:= 31
        orelse
        Byte =:= 34
        orelse
        Byte =:= 92 ->
    invalid_byte(Orig, Skip + Len);
string(<<Byte,Rest/bytes>>, Orig, Skip, Acc, Stack, Decode, Len) ->
    case element(Byte - 127, utf8s0()) of
        12 ->
            invalid_byte(Orig, Skip + Len);
        State ->
            string_utf8(Rest, Orig, Skip, Acc, Stack, Decode, Len,
                        State)
    end;
string(_, Orig, Skip, Acc, Stack, Decode, Len) ->
    unexpected(Orig, Skip - 1, Acc, Stack, Decode, Len + 1, 0, value).

string_utf8(<<Byte,Rest/binary>>,
            Orig, Skip, Acc, Stack, Decode, Len, State0) ->
    Type = element(Byte + 1, utf8t()),
    case element(State0 + Type, utf8s()) of
        0 ->
            string_ascii(Rest, Orig, Skip, Acc, Stack, Decode, Len + 2);
        12 ->
            invalid_byte(Orig, Skip + Len + 1);
        State ->
            string_utf8(Rest, Orig, Skip, Acc, Stack, Decode,
                        Len + 1,
                        State)
    end;
string_utf8(_, Orig, Skip, Acc, Stack, Decode, Len, _State0) ->
    unexpected(Orig, Skip - 1, Acc, Stack, Decode, Len + 2, 0, value).

string_ascii(Binary, Original, Skip, Acc, Stack, Decode, Start, Len,
             SAcc) ->
    case Binary of
        <<B1,B2,B3,B4,B5,B6,B7,B8,Rest/binary>>
            when
                (B1 =:= 32
                 orelse
                 B1 =:= 33
                 orelse
                 B1 =:= 35
                 orelse
                 B1 =:= 36
                 orelse
                 B1 =:= 37
                 orelse
                 B1 =:= 38
                 orelse
                 B1 =:= 39
                 orelse
                 B1 =:= 40
                 orelse
                 B1 =:= 41
                 orelse
                 B1 =:= 42
                 orelse
                 B1 =:= 43
                 orelse
                 B1 =:= 44
                 orelse
                 B1 =:= 45
                 orelse
                 B1 =:= 46
                 orelse
                 B1 =:= 47
                 orelse
                 B1 =:= 48
                 orelse
                 B1 =:= 49
                 orelse
                 B1 =:= 50
                 orelse
                 B1 =:= 51
                 orelse
                 B1 =:= 52
                 orelse
                 B1 =:= 53
                 orelse
                 B1 =:= 54
                 orelse
                 B1 =:= 55
                 orelse
                 B1 =:= 56
                 orelse
                 B1 =:= 57
                 orelse
                 B1 =:= 58
                 orelse
                 B1 =:= 59
                 orelse
                 B1 =:= 60
                 orelse
                 B1 =:= 61
                 orelse
                 B1 =:= 62
                 orelse
                 B1 =:= 63
                 orelse
                 B1 =:= 64
                 orelse
                 B1 =:= 65
                 orelse
                 B1 =:= 66
                 orelse
                 B1 =:= 67
                 orelse
                 B1 =:= 68
                 orelse
                 B1 =:= 69
                 orelse
                 B1 =:= 70
                 orelse
                 B1 =:= 71
                 orelse
                 B1 =:= 72
                 orelse
                 B1 =:= 73
                 orelse
                 B1 =:= 74
                 orelse
                 B1 =:= 75
                 orelse
                 B1 =:= 76
                 orelse
                 B1 =:= 77
                 orelse
                 B1 =:= 78
                 orelse
                 B1 =:= 79
                 orelse
                 B1 =:= 80
                 orelse
                 B1 =:= 81
                 orelse
                 B1 =:= 82
                 orelse
                 B1 =:= 83
                 orelse
                 B1 =:= 84
                 orelse
                 B1 =:= 85
                 orelse
                 B1 =:= 86
                 orelse
                 B1 =:= 87
                 orelse
                 B1 =:= 88
                 orelse
                 B1 =:= 89
                 orelse
                 B1 =:= 90
                 orelse
                 B1 =:= 91
                 orelse
                 B1 =:= 93
                 orelse
                 B1 =:= 94
                 orelse
                 B1 =:= 95
                 orelse
                 B1 =:= 96
                 orelse
                 B1 =:= 97
                 orelse
                 B1 =:= 98
                 orelse
                 B1 =:= 99
                 orelse
                 B1 =:= 100
                 orelse
                 B1 =:= 101
                 orelse
                 B1 =:= 102
                 orelse
                 B1 =:= 103
                 orelse
                 B1 =:= 104
                 orelse
                 B1 =:= 105
                 orelse
                 B1 =:= 106
                 orelse
                 B1 =:= 107
                 orelse
                 B1 =:= 108
                 orelse
                 B1 =:= 109
                 orelse
                 B1 =:= 110
                 orelse
                 B1 =:= 111
                 orelse
                 B1 =:= 112
                 orelse
                 B1 =:= 113
                 orelse
                 B1 =:= 114
                 orelse
                 B1 =:= 115
                 orelse
                 B1 =:= 116
                 orelse
                 B1 =:= 117
                 orelse
                 B1 =:= 118
                 orelse
                 B1 =:= 119
                 orelse
                 B1 =:= 120
                 orelse
                 B1 =:= 121
                 orelse
                 B1 =:= 122
                 orelse
                 B1 =:= 123
                 orelse
                 B1 =:= 124
                 orelse
                 B1 =:= 125
                 orelse
                 B1 =:= 126
                 orelse
                 B1 =:= 127)
                andalso
                (B2 =:= 32
                 orelse
                 B2 =:= 33
                 orelse
                 B2 =:= 35
                 orelse
                 B2 =:= 36
                 orelse
                 B2 =:= 37
                 orelse
                 B2 =:= 38
                 orelse
                 B2 =:= 39
                 orelse
                 B2 =:= 40
                 orelse
                 B2 =:= 41
                 orelse
                 B2 =:= 42
                 orelse
                 B2 =:= 43
                 orelse
                 B2 =:= 44
                 orelse
                 B2 =:= 45
                 orelse
                 B2 =:= 46
                 orelse
                 B2 =:= 47
                 orelse
                 B2 =:= 48
                 orelse
                 B2 =:= 49
                 orelse
                 B2 =:= 50
                 orelse
                 B2 =:= 51
                 orelse
                 B2 =:= 52
                 orelse
                 B2 =:= 53
                 orelse
                 B2 =:= 54
                 orelse
                 B2 =:= 55
                 orelse
                 B2 =:= 56
                 orelse
                 B2 =:= 57
                 orelse
                 B2 =:= 58
                 orelse
                 B2 =:= 59
                 orelse
                 B2 =:= 60
                 orelse
                 B2 =:= 61
                 orelse
                 B2 =:= 62
                 orelse
                 B2 =:= 63
                 orelse
                 B2 =:= 64
                 orelse
                 B2 =:= 65
                 orelse
                 B2 =:= 66
                 orelse
                 B2 =:= 67
                 orelse
                 B2 =:= 68
                 orelse
                 B2 =:= 69
                 orelse
                 B2 =:= 70
                 orelse
                 B2 =:= 71
                 orelse
                 B2 =:= 72
                 orelse
                 B2 =:= 73
                 orelse
                 B2 =:= 74
                 orelse
                 B2 =:= 75
                 orelse
                 B2 =:= 76
                 orelse
                 B2 =:= 77
                 orelse
                 B2 =:= 78
                 orelse
                 B2 =:= 79
                 orelse
                 B2 =:= 80
                 orelse
                 B2 =:= 81
                 orelse
                 B2 =:= 82
                 orelse
                 B2 =:= 83
                 orelse
                 B2 =:= 84
                 orelse
                 B2 =:= 85
                 orelse
                 B2 =:= 86
                 orelse
                 B2 =:= 87
                 orelse
                 B2 =:= 88
                 orelse
                 B2 =:= 89
                 orelse
                 B2 =:= 90
                 orelse
                 B2 =:= 91
                 orelse
                 B2 =:= 93
                 orelse
                 B2 =:= 94
                 orelse
                 B2 =:= 95
                 orelse
                 B2 =:= 96
                 orelse
                 B2 =:= 97
                 orelse
                 B2 =:= 98
                 orelse
                 B2 =:= 99
                 orelse
                 B2 =:= 100
                 orelse
                 B2 =:= 101
                 orelse
                 B2 =:= 102
                 orelse
                 B2 =:= 103
                 orelse
                 B2 =:= 104
                 orelse
                 B2 =:= 105
                 orelse
                 B2 =:= 106
                 orelse
                 B2 =:= 107
                 orelse
                 B2 =:= 108
                 orelse
                 B2 =:= 109
                 orelse
                 B2 =:= 110
                 orelse
                 B2 =:= 111
                 orelse
                 B2 =:= 112
                 orelse
                 B2 =:= 113
                 orelse
                 B2 =:= 114
                 orelse
                 B2 =:= 115
                 orelse
                 B2 =:= 116
                 orelse
                 B2 =:= 117
                 orelse
                 B2 =:= 118
                 orelse
                 B2 =:= 119
                 orelse
                 B2 =:= 120
                 orelse
                 B2 =:= 121
                 orelse
                 B2 =:= 122
                 orelse
                 B2 =:= 123
                 orelse
                 B2 =:= 124
                 orelse
                 B2 =:= 125
                 orelse
                 B2 =:= 126
                 orelse
                 B2 =:= 127)
                andalso
                (B3 =:= 32
                 orelse
                 B3 =:= 33
                 orelse
                 B3 =:= 35
                 orelse
                 B3 =:= 36
                 orelse
                 B3 =:= 37
                 orelse
                 B3 =:= 38
                 orelse
                 B3 =:= 39
                 orelse
                 B3 =:= 40
                 orelse
                 B3 =:= 41
                 orelse
                 B3 =:= 42
                 orelse
                 B3 =:= 43
                 orelse
                 B3 =:= 44
                 orelse
                 B3 =:= 45
                 orelse
                 B3 =:= 46
                 orelse
                 B3 =:= 47
                 orelse
                 B3 =:= 48
                 orelse
                 B3 =:= 49
                 orelse
                 B3 =:= 50
                 orelse
                 B3 =:= 51
                 orelse
                 B3 =:= 52
                 orelse
                 B3 =:= 53
                 orelse
                 B3 =:= 54
                 orelse
                 B3 =:= 55
                 orelse
                 B3 =:= 56
                 orelse
                 B3 =:= 57
                 orelse
                 B3 =:= 58
                 orelse
                 B3 =:= 59
                 orelse
                 B3 =:= 60
                 orelse
                 B3 =:= 61
                 orelse
                 B3 =:= 62
                 orelse
                 B3 =:= 63
                 orelse
                 B3 =:= 64
                 orelse
                 B3 =:= 65
                 orelse
                 B3 =:= 66
                 orelse
                 B3 =:= 67
                 orelse
                 B3 =:= 68
                 orelse
                 B3 =:= 69
                 orelse
                 B3 =:= 70
                 orelse
                 B3 =:= 71
                 orelse
                 B3 =:= 72
                 orelse
                 B3 =:= 73
                 orelse
                 B3 =:= 74
                 orelse
                 B3 =:= 75
                 orelse
                 B3 =:= 76
                 orelse
                 B3 =:= 77
                 orelse
                 B3 =:= 78
                 orelse
                 B3 =:= 79
                 orelse
                 B3 =:= 80
                 orelse
                 B3 =:= 81
                 orelse
                 B3 =:= 82
                 orelse
                 B3 =:= 83
                 orelse
                 B3 =:= 84
                 orelse
                 B3 =:= 85
                 orelse
                 B3 =:= 86
                 orelse
                 B3 =:= 87
                 orelse
                 B3 =:= 88
                 orelse
                 B3 =:= 89
                 orelse
                 B3 =:= 90
                 orelse
                 B3 =:= 91
                 orelse
                 B3 =:= 93
                 orelse
                 B3 =:= 94
                 orelse
                 B3 =:= 95
                 orelse
                 B3 =:= 96
                 orelse
                 B3 =:= 97
                 orelse
                 B3 =:= 98
                 orelse
                 B3 =:= 99
                 orelse
                 B3 =:= 100
                 orelse
                 B3 =:= 101
                 orelse
                 B3 =:= 102
                 orelse
                 B3 =:= 103
                 orelse
                 B3 =:= 104
                 orelse
                 B3 =:= 105
                 orelse
                 B3 =:= 106
                 orelse
                 B3 =:= 107
                 orelse
                 B3 =:= 108
                 orelse
                 B3 =:= 109
                 orelse
                 B3 =:= 110
                 orelse
                 B3 =:= 111
                 orelse
                 B3 =:= 112
                 orelse
                 B3 =:= 113
                 orelse
                 B3 =:= 114
                 orelse
                 B3 =:= 115
                 orelse
                 B3 =:= 116
                 orelse
                 B3 =:= 117
                 orelse
                 B3 =:= 118
                 orelse
                 B3 =:= 119
                 orelse
                 B3 =:= 120
                 orelse
                 B3 =:= 121
                 orelse
                 B3 =:= 122
                 orelse
                 B3 =:= 123
                 orelse
                 B3 =:= 124
                 orelse
                 B3 =:= 125
                 orelse
                 B3 =:= 126
                 orelse
                 B3 =:= 127)
                andalso
                (B4 =:= 32
                 orelse
                 B4 =:= 33
                 orelse
                 B4 =:= 35
                 orelse
                 B4 =:= 36
                 orelse
                 B4 =:= 37
                 orelse
                 B4 =:= 38
                 orelse
                 B4 =:= 39
                 orelse
                 B4 =:= 40
                 orelse
                 B4 =:= 41
                 orelse
                 B4 =:= 42
                 orelse
                 B4 =:= 43
                 orelse
                 B4 =:= 44
                 orelse
                 B4 =:= 45
                 orelse
                 B4 =:= 46
                 orelse
                 B4 =:= 47
                 orelse
                 B4 =:= 48
                 orelse
                 B4 =:= 49
                 orelse
                 B4 =:= 50
                 orelse
                 B4 =:= 51
                 orelse
                 B4 =:= 52
                 orelse
                 B4 =:= 53
                 orelse
                 B4 =:= 54
                 orelse
                 B4 =:= 55
                 orelse
                 B4 =:= 56
                 orelse
                 B4 =:= 57
                 orelse
                 B4 =:= 58
                 orelse
                 B4 =:= 59
                 orelse
                 B4 =:= 60
                 orelse
                 B4 =:= 61
                 orelse
                 B4 =:= 62
                 orelse
                 B4 =:= 63
                 orelse
                 B4 =:= 64
                 orelse
                 B4 =:= 65
                 orelse
                 B4 =:= 66
                 orelse
                 B4 =:= 67
                 orelse
                 B4 =:= 68
                 orelse
                 B4 =:= 69
                 orelse
                 B4 =:= 70
                 orelse
                 B4 =:= 71
                 orelse
                 B4 =:= 72
                 orelse
                 B4 =:= 73
                 orelse
                 B4 =:= 74
                 orelse
                 B4 =:= 75
                 orelse
                 B4 =:= 76
                 orelse
                 B4 =:= 77
                 orelse
                 B4 =:= 78
                 orelse
                 B4 =:= 79
                 orelse
                 B4 =:= 80
                 orelse
                 B4 =:= 81
                 orelse
                 B4 =:= 82
                 orelse
                 B4 =:= 83
                 orelse
                 B4 =:= 84
                 orelse
                 B4 =:= 85
                 orelse
                 B4 =:= 86
                 orelse
                 B4 =:= 87
                 orelse
                 B4 =:= 88
                 orelse
                 B4 =:= 89
                 orelse
                 B4 =:= 90
                 orelse
                 B4 =:= 91
                 orelse
                 B4 =:= 93
                 orelse
                 B4 =:= 94
                 orelse
                 B4 =:= 95
                 orelse
                 B4 =:= 96
                 orelse
                 B4 =:= 97
                 orelse
                 B4 =:= 98
                 orelse
                 B4 =:= 99
                 orelse
                 B4 =:= 100
                 orelse
                 B4 =:= 101
                 orelse
                 B4 =:= 102
                 orelse
                 B4 =:= 103
                 orelse
                 B4 =:= 104
                 orelse
                 B4 =:= 105
                 orelse
                 B4 =:= 106
                 orelse
                 B4 =:= 107
                 orelse
                 B4 =:= 108
                 orelse
                 B4 =:= 109
                 orelse
                 B4 =:= 110
                 orelse
                 B4 =:= 111
                 orelse
                 B4 =:= 112
                 orelse
                 B4 =:= 113
                 orelse
                 B4 =:= 114
                 orelse
                 B4 =:= 115
                 orelse
                 B4 =:= 116
                 orelse
                 B4 =:= 117
                 orelse
                 B4 =:= 118
                 orelse
                 B4 =:= 119
                 orelse
                 B4 =:= 120
                 orelse
                 B4 =:= 121
                 orelse
                 B4 =:= 122
                 orelse
                 B4 =:= 123
                 orelse
                 B4 =:= 124
                 orelse
                 B4 =:= 125
                 orelse
                 B4 =:= 126
                 orelse
                 B4 =:= 127)
                andalso
                (B5 =:= 32
                 orelse
                 B5 =:= 33
                 orelse
                 B5 =:= 35
                 orelse
                 B5 =:= 36
                 orelse
                 B5 =:= 37
                 orelse
                 B5 =:= 38
                 orelse
                 B5 =:= 39
                 orelse
                 B5 =:= 40
                 orelse
                 B5 =:= 41
                 orelse
                 B5 =:= 42
                 orelse
                 B5 =:= 43
                 orelse
                 B5 =:= 44
                 orelse
                 B5 =:= 45
                 orelse
                 B5 =:= 46
                 orelse
                 B5 =:= 47
                 orelse
                 B5 =:= 48
                 orelse
                 B5 =:= 49
                 orelse
                 B5 =:= 50
                 orelse
                 B5 =:= 51
                 orelse
                 B5 =:= 52
                 orelse
                 B5 =:= 53
                 orelse
                 B5 =:= 54
                 orelse
                 B5 =:= 55
                 orelse
                 B5 =:= 56
                 orelse
                 B5 =:= 57
                 orelse
                 B5 =:= 58
                 orelse
                 B5 =:= 59
                 orelse
                 B5 =:= 60
                 orelse
                 B5 =:= 61
                 orelse
                 B5 =:= 62
                 orelse
                 B5 =:= 63
                 orelse
                 B5 =:= 64
                 orelse
                 B5 =:= 65
                 orelse
                 B5 =:= 66
                 orelse
                 B5 =:= 67
                 orelse
                 B5 =:= 68
                 orelse
                 B5 =:= 69
                 orelse
                 B5 =:= 70
                 orelse
                 B5 =:= 71
                 orelse
                 B5 =:= 72
                 orelse
                 B5 =:= 73
                 orelse
                 B5 =:= 74
                 orelse
                 B5 =:= 75
                 orelse
                 B5 =:= 76
                 orelse
                 B5 =:= 77
                 orelse
                 B5 =:= 78
                 orelse
                 B5 =:= 79
                 orelse
                 B5 =:= 80
                 orelse
                 B5 =:= 81
                 orelse
                 B5 =:= 82
                 orelse
                 B5 =:= 83
                 orelse
                 B5 =:= 84
                 orelse
                 B5 =:= 85
                 orelse
                 B5 =:= 86
                 orelse
                 B5 =:= 87
                 orelse
                 B5 =:= 88
                 orelse
                 B5 =:= 89
                 orelse
                 B5 =:= 90
                 orelse
                 B5 =:= 91
                 orelse
                 B5 =:= 93
                 orelse
                 B5 =:= 94
                 orelse
                 B5 =:= 95
                 orelse
                 B5 =:= 96
                 orelse
                 B5 =:= 97
                 orelse
                 B5 =:= 98
                 orelse
                 B5 =:= 99
                 orelse
                 B5 =:= 100
                 orelse
                 B5 =:= 101
                 orelse
                 B5 =:= 102
                 orelse
                 B5 =:= 103
                 orelse
                 B5 =:= 104
                 orelse
                 B5 =:= 105
                 orelse
                 B5 =:= 106
                 orelse
                 B5 =:= 107
                 orelse
                 B5 =:= 108
                 orelse
                 B5 =:= 109
                 orelse
                 B5 =:= 110
                 orelse
                 B5 =:= 111
                 orelse
                 B5 =:= 112
                 orelse
                 B5 =:= 113
                 orelse
                 B5 =:= 114
                 orelse
                 B5 =:= 115
                 orelse
                 B5 =:= 116
                 orelse
                 B5 =:= 117
                 orelse
                 B5 =:= 118
                 orelse
                 B5 =:= 119
                 orelse
                 B5 =:= 120
                 orelse
                 B5 =:= 121
                 orelse
                 B5 =:= 122
                 orelse
                 B5 =:= 123
                 orelse
                 B5 =:= 124
                 orelse
                 B5 =:= 125
                 orelse
                 B5 =:= 126
                 orelse
                 B5 =:= 127)
                andalso
                (B6 =:= 32
                 orelse
                 B6 =:= 33
                 orelse
                 B6 =:= 35
                 orelse
                 B6 =:= 36
                 orelse
                 B6 =:= 37
                 orelse
                 B6 =:= 38
                 orelse
                 B6 =:= 39
                 orelse
                 B6 =:= 40
                 orelse
                 B6 =:= 41
                 orelse
                 B6 =:= 42
                 orelse
                 B6 =:= 43
                 orelse
                 B6 =:= 44
                 orelse
                 B6 =:= 45
                 orelse
                 B6 =:= 46
                 orelse
                 B6 =:= 47
                 orelse
                 B6 =:= 48
                 orelse
                 B6 =:= 49
                 orelse
                 B6 =:= 50
                 orelse
                 B6 =:= 51
                 orelse
                 B6 =:= 52
                 orelse
                 B6 =:= 53
                 orelse
                 B6 =:= 54
                 orelse
                 B6 =:= 55
                 orelse
                 B6 =:= 56
                 orelse
                 B6 =:= 57
                 orelse
                 B6 =:= 58
                 orelse
                 B6 =:= 59
                 orelse
                 B6 =:= 60
                 orelse
                 B6 =:= 61
                 orelse
                 B6 =:= 62
                 orelse
                 B6 =:= 63
                 orelse
                 B6 =:= 64
                 orelse
                 B6 =:= 65
                 orelse
                 B6 =:= 66
                 orelse
                 B6 =:= 67
                 orelse
                 B6 =:= 68
                 orelse
                 B6 =:= 69
                 orelse
                 B6 =:= 70
                 orelse
                 B6 =:= 71
                 orelse
                 B6 =:= 72
                 orelse
                 B6 =:= 73
                 orelse
                 B6 =:= 74
                 orelse
                 B6 =:= 75
                 orelse
                 B6 =:= 76
                 orelse
                 B6 =:= 77
                 orelse
                 B6 =:= 78
                 orelse
                 B6 =:= 79
                 orelse
                 B6 =:= 80
                 orelse
                 B6 =:= 81
                 orelse
                 B6 =:= 82
                 orelse
                 B6 =:= 83
                 orelse
                 B6 =:= 84
                 orelse
                 B6 =:= 85
                 orelse
                 B6 =:= 86
                 orelse
                 B6 =:= 87
                 orelse
                 B6 =:= 88
                 orelse
                 B6 =:= 89
                 orelse
                 B6 =:= 90
                 orelse
                 B6 =:= 91
                 orelse
                 B6 =:= 93
                 orelse
                 B6 =:= 94
                 orelse
                 B6 =:= 95
                 orelse
                 B6 =:= 96
                 orelse
                 B6 =:= 97
                 orelse
                 B6 =:= 98
                 orelse
                 B6 =:= 99
                 orelse
                 B6 =:= 100
                 orelse
                 B6 =:= 101
                 orelse
                 B6 =:= 102
                 orelse
                 B6 =:= 103
                 orelse
                 B6 =:= 104
                 orelse
                 B6 =:= 105
                 orelse
                 B6 =:= 106
                 orelse
                 B6 =:= 107
                 orelse
                 B6 =:= 108
                 orelse
                 B6 =:= 109
                 orelse
                 B6 =:= 110
                 orelse
                 B6 =:= 111
                 orelse
                 B6 =:= 112
                 orelse
                 B6 =:= 113
                 orelse
                 B6 =:= 114
                 orelse
                 B6 =:= 115
                 orelse
                 B6 =:= 116
                 orelse
                 B6 =:= 117
                 orelse
                 B6 =:= 118
                 orelse
                 B6 =:= 119
                 orelse
                 B6 =:= 120
                 orelse
                 B6 =:= 121
                 orelse
                 B6 =:= 122
                 orelse
                 B6 =:= 123
                 orelse
                 B6 =:= 124
                 orelse
                 B6 =:= 125
                 orelse
                 B6 =:= 126
                 orelse
                 B6 =:= 127)
                andalso
                (B7 =:= 32
                 orelse
                 B7 =:= 33
                 orelse
                 B7 =:= 35
                 orelse
                 B7 =:= 36
                 orelse
                 B7 =:= 37
                 orelse
                 B7 =:= 38
                 orelse
                 B7 =:= 39
                 orelse
                 B7 =:= 40
                 orelse
                 B7 =:= 41
                 orelse
                 B7 =:= 42
                 orelse
                 B7 =:= 43
                 orelse
                 B7 =:= 44
                 orelse
                 B7 =:= 45
                 orelse
                 B7 =:= 46
                 orelse
                 B7 =:= 47
                 orelse
                 B7 =:= 48
                 orelse
                 B7 =:= 49
                 orelse
                 B7 =:= 50
                 orelse
                 B7 =:= 51
                 orelse
                 B7 =:= 52
                 orelse
                 B7 =:= 53
                 orelse
                 B7 =:= 54
                 orelse
                 B7 =:= 55
                 orelse
                 B7 =:= 56
                 orelse
                 B7 =:= 57
                 orelse
                 B7 =:= 58
                 orelse
                 B7 =:= 59
                 orelse
                 B7 =:= 60
                 orelse
                 B7 =:= 61
                 orelse
                 B7 =:= 62
                 orelse
                 B7 =:= 63
                 orelse
                 B7 =:= 64
                 orelse
                 B7 =:= 65
                 orelse
                 B7 =:= 66
                 orelse
                 B7 =:= 67
                 orelse
                 B7 =:= 68
                 orelse
                 B7 =:= 69
                 orelse
                 B7 =:= 70
                 orelse
                 B7 =:= 71
                 orelse
                 B7 =:= 72
                 orelse
                 B7 =:= 73
                 orelse
                 B7 =:= 74
                 orelse
                 B7 =:= 75
                 orelse
                 B7 =:= 76
                 orelse
                 B7 =:= 77
                 orelse
                 B7 =:= 78
                 orelse
                 B7 =:= 79
                 orelse
                 B7 =:= 80
                 orelse
                 B7 =:= 81
                 orelse
                 B7 =:= 82
                 orelse
                 B7 =:= 83
                 orelse
                 B7 =:= 84
                 orelse
                 B7 =:= 85
                 orelse
                 B7 =:= 86
                 orelse
                 B7 =:= 87
                 orelse
                 B7 =:= 88
                 orelse
                 B7 =:= 89
                 orelse
                 B7 =:= 90
                 orelse
                 B7 =:= 91
                 orelse
                 B7 =:= 93
                 orelse
                 B7 =:= 94
                 orelse
                 B7 =:= 95
                 orelse
                 B7 =:= 96
                 orelse
                 B7 =:= 97
                 orelse
                 B7 =:= 98
                 orelse
                 B7 =:= 99
                 orelse
                 B7 =:= 100
                 orelse
                 B7 =:= 101
                 orelse
                 B7 =:= 102
                 orelse
                 B7 =:= 103
                 orelse
                 B7 =:= 104
                 orelse
                 B7 =:= 105
                 orelse
                 B7 =:= 106
                 orelse
                 B7 =:= 107
                 orelse
                 B7 =:= 108
                 orelse
                 B7 =:= 109
                 orelse
                 B7 =:= 110
                 orelse
                 B7 =:= 111
                 orelse
                 B7 =:= 112
                 orelse
                 B7 =:= 113
                 orelse
                 B7 =:= 114
                 orelse
                 B7 =:= 115
                 orelse
                 B7 =:= 116
                 orelse
                 B7 =:= 117
                 orelse
                 B7 =:= 118
                 orelse
                 B7 =:= 119
                 orelse
                 B7 =:= 120
                 orelse
                 B7 =:= 121
                 orelse
                 B7 =:= 122
                 orelse
                 B7 =:= 123
                 orelse
                 B7 =:= 124
                 orelse
                 B7 =:= 125
                 orelse
                 B7 =:= 126
                 orelse
                 B7 =:= 127)
                andalso
                (B8 =:= 32
                 orelse
                 B8 =:= 33
                 orelse
                 B8 =:= 35
                 orelse
                 B8 =:= 36
                 orelse
                 B8 =:= 37
                 orelse
                 B8 =:= 38
                 orelse
                 B8 =:= 39
                 orelse
                 B8 =:= 40
                 orelse
                 B8 =:= 41
                 orelse
                 B8 =:= 42
                 orelse
                 B8 =:= 43
                 orelse
                 B8 =:= 44
                 orelse
                 B8 =:= 45
                 orelse
                 B8 =:= 46
                 orelse
                 B8 =:= 47
                 orelse
                 B8 =:= 48
                 orelse
                 B8 =:= 49
                 orelse
                 B8 =:= 50
                 orelse
                 B8 =:= 51
                 orelse
                 B8 =:= 52
                 orelse
                 B8 =:= 53
                 orelse
                 B8 =:= 54
                 orelse
                 B8 =:= 55
                 orelse
                 B8 =:= 56
                 orelse
                 B8 =:= 57
                 orelse
                 B8 =:= 58
                 orelse
                 B8 =:= 59
                 orelse
                 B8 =:= 60
                 orelse
                 B8 =:= 61
                 orelse
                 B8 =:= 62
                 orelse
                 B8 =:= 63
                 orelse
                 B8 =:= 64
                 orelse
                 B8 =:= 65
                 orelse
                 B8 =:= 66
                 orelse
                 B8 =:= 67
                 orelse
                 B8 =:= 68
                 orelse
                 B8 =:= 69
                 orelse
                 B8 =:= 70
                 orelse
                 B8 =:= 71
                 orelse
                 B8 =:= 72
                 orelse
                 B8 =:= 73
                 orelse
                 B8 =:= 74
                 orelse
                 B8 =:= 75
                 orelse
                 B8 =:= 76
                 orelse
                 B8 =:= 77
                 orelse
                 B8 =:= 78
                 orelse
                 B8 =:= 79
                 orelse
                 B8 =:= 80
                 orelse
                 B8 =:= 81
                 orelse
                 B8 =:= 82
                 orelse
                 B8 =:= 83
                 orelse
                 B8 =:= 84
                 orelse
                 B8 =:= 85
                 orelse
                 B8 =:= 86
                 orelse
                 B8 =:= 87
                 orelse
                 B8 =:= 88
                 orelse
                 B8 =:= 89
                 orelse
                 B8 =:= 90
                 orelse
                 B8 =:= 91
                 orelse
                 B8 =:= 93
                 orelse
                 B8 =:= 94
                 orelse
                 B8 =:= 95
                 orelse
                 B8 =:= 96
                 orelse
                 B8 =:= 97
                 orelse
                 B8 =:= 98
                 orelse
                 B8 =:= 99
                 orelse
                 B8 =:= 100
                 orelse
                 B8 =:= 101
                 orelse
                 B8 =:= 102
                 orelse
                 B8 =:= 103
                 orelse
                 B8 =:= 104
                 orelse
                 B8 =:= 105
                 orelse
                 B8 =:= 106
                 orelse
                 B8 =:= 107
                 orelse
                 B8 =:= 108
                 orelse
                 B8 =:= 109
                 orelse
                 B8 =:= 110
                 orelse
                 B8 =:= 111
                 orelse
                 B8 =:= 112
                 orelse
                 B8 =:= 113
                 orelse
                 B8 =:= 114
                 orelse
                 B8 =:= 115
                 orelse
                 B8 =:= 116
                 orelse
                 B8 =:= 117
                 orelse
                 B8 =:= 118
                 orelse
                 B8 =:= 119
                 orelse
                 B8 =:= 120
                 orelse
                 B8 =:= 121
                 orelse
                 B8 =:= 122
                 orelse
                 B8 =:= 123
                 orelse
                 B8 =:= 124
                 orelse
                 B8 =:= 125
                 orelse
                 B8 =:= 126
                 orelse
                 B8 =:= 127) ->
            string_ascii(Rest, Original, Skip, Acc, Stack, Decode,
                         Start,
                         Len + 8,
                         SAcc);
        Other ->
            string(Other, Original, Skip, Acc, Stack, Decode, Start,
                   Len, SAcc)
    end.

-spec string(binary(),
             binary(),
             integer(),
             acc(),
             stack(),
             decode(),
             integer(),
             integer(),
             binary()) ->
                dynamic().

string(<<Byte,Rest/bits>>,
       Orig, Skip, Acc, Stack, Decode, Start, Len, SAcc)
    when
        Byte =:= 32
        orelse
        Byte =:= 33
        orelse
        Byte =:= 35
        orelse
        Byte =:= 36
        orelse
        Byte =:= 37
        orelse
        Byte =:= 38
        orelse
        Byte =:= 39
        orelse
        Byte =:= 40
        orelse
        Byte =:= 41
        orelse
        Byte =:= 42
        orelse
        Byte =:= 43
        orelse
        Byte =:= 44
        orelse
        Byte =:= 45
        orelse
        Byte =:= 46
        orelse
        Byte =:= 47
        orelse
        Byte =:= 48
        orelse
        Byte =:= 49
        orelse
        Byte =:= 50
        orelse
        Byte =:= 51
        orelse
        Byte =:= 52
        orelse
        Byte =:= 53
        orelse
        Byte =:= 54
        orelse
        Byte =:= 55
        orelse
        Byte =:= 56
        orelse
        Byte =:= 57
        orelse
        Byte =:= 58
        orelse
        Byte =:= 59
        orelse
        Byte =:= 60
        orelse
        Byte =:= 61
        orelse
        Byte =:= 62
        orelse
        Byte =:= 63
        orelse
        Byte =:= 64
        orelse
        Byte =:= 65
        orelse
        Byte =:= 66
        orelse
        Byte =:= 67
        orelse
        Byte =:= 68
        orelse
        Byte =:= 69
        orelse
        Byte =:= 70
        orelse
        Byte =:= 71
        orelse
        Byte =:= 72
        orelse
        Byte =:= 73
        orelse
        Byte =:= 74
        orelse
        Byte =:= 75
        orelse
        Byte =:= 76
        orelse
        Byte =:= 77
        orelse
        Byte =:= 78
        orelse
        Byte =:= 79
        orelse
        Byte =:= 80
        orelse
        Byte =:= 81
        orelse
        Byte =:= 82
        orelse
        Byte =:= 83
        orelse
        Byte =:= 84
        orelse
        Byte =:= 85
        orelse
        Byte =:= 86
        orelse
        Byte =:= 87
        orelse
        Byte =:= 88
        orelse
        Byte =:= 89
        orelse
        Byte =:= 90
        orelse
        Byte =:= 91
        orelse
        Byte =:= 93
        orelse
        Byte =:= 94
        orelse
        Byte =:= 95
        orelse
        Byte =:= 96
        orelse
        Byte =:= 97
        orelse
        Byte =:= 98
        orelse
        Byte =:= 99
        orelse
        Byte =:= 100
        orelse
        Byte =:= 101
        orelse
        Byte =:= 102
        orelse
        Byte =:= 103
        orelse
        Byte =:= 104
        orelse
        Byte =:= 105
        orelse
        Byte =:= 106
        orelse
        Byte =:= 107
        orelse
        Byte =:= 108
        orelse
        Byte =:= 109
        orelse
        Byte =:= 110
        orelse
        Byte =:= 111
        orelse
        Byte =:= 112
        orelse
        Byte =:= 113
        orelse
        Byte =:= 114
        orelse
        Byte =:= 115
        orelse
        Byte =:= 116
        orelse
        Byte =:= 117
        orelse
        Byte =:= 118
        orelse
        Byte =:= 119
        orelse
        Byte =:= 120
        orelse
        Byte =:= 121
        orelse
        Byte =:= 122
        orelse
        Byte =:= 123
        orelse
        Byte =:= 124
        orelse
        Byte =:= 125
        orelse
        Byte =:= 126
        orelse
        Byte =:= 127 ->
    string(Rest, Orig, Skip, Acc, Stack, Decode, Start, Len + 1, SAcc);
string(<<$\\,Rest/bits>>,
       Orig, Skip, Acc, Stack, Decode, Start, Len, SAcc) ->
    Part = binary_part(Orig, Skip, Len),
    unescape(Rest, Orig, Skip, Acc, Stack, Decode, Start, Len,
             <<SAcc/binary,Part/binary>>);
string(<<$",Rest/bits>>,
       Orig, Skip0, Acc, Stack, Decode, _Start, Len, SAcc) ->
    Part = binary_part(Orig, Skip0, Len),
    Value = <<SAcc/binary,Part/binary>>,
    Skip = Skip0 + Len + 1,
    case
        case Decode of
            {decode, _, _, _, _, _, _, _, _, REC18, _} ->
                REC18;
            REC18 ->
                error({badrecord, REC18})
        end
    of
        undefined ->
            continue(Rest, Orig, Skip, Acc, Stack, Decode, Value);
        Fun ->
            continue(Rest, Orig, Skip, Acc, Stack, Decode, Fun(Value))
    end;
string(<<Byte,_/bits>>,
       Orig, Skip, _Acc, _Stack, _Decode, _Start, Len, _SAcc)
    when
        Byte =:= 0
        orelse
        Byte =:= 1
        orelse
        Byte =:= 2
        orelse
        Byte =:= 3
        orelse
        Byte =:= 4
        orelse
        Byte =:= 5
        orelse
        Byte =:= 6
        orelse
        Byte =:= 7
        orelse
        Byte =:= 8
        orelse
        Byte =:= 9
        orelse
        Byte =:= 10
        orelse
        Byte =:= 11
        orelse
        Byte =:= 12
        orelse
        Byte =:= 13
        orelse
        Byte =:= 14
        orelse
        Byte =:= 15
        orelse
        Byte =:= 16
        orelse
        Byte =:= 17
        orelse
        Byte =:= 18
        orelse
        Byte =:= 19
        orelse
        Byte =:= 20
        orelse
        Byte =:= 21
        orelse
        Byte =:= 22
        orelse
        Byte =:= 23
        orelse
        Byte =:= 24
        orelse
        Byte =:= 25
        orelse
        Byte =:= 26
        orelse
        Byte =:= 27
        orelse
        Byte =:= 28
        orelse
        Byte =:= 29
        orelse
        Byte =:= 30
        orelse
        Byte =:= 31
        orelse
        Byte =:= 34
        orelse
        Byte =:= 92 ->
    invalid_byte(Orig, Skip + Len);
string(<<Byte,Rest/bytes>>,
       Orig, Skip, Acc, Stack, Decode, Start, Len, SAcc) ->
    case element(Byte - 127, utf8s0()) of
        12 ->
            invalid_byte(Orig, Skip + Len);
        State ->
            string_utf8(Rest, Orig, Skip, Acc, Stack, Decode, Start,
                        Len, SAcc, State)
    end;
string(_, Orig, Skip, Acc, Stack, Decode, Start, Len, _SAcc) ->
    Extra = Skip - Start,
    unexpected(Orig, Start, Acc, Stack, Decode, Len + Extra, 0, value).

string_utf8(<<Byte,Rest/binary>>,
            Orig, Skip, Acc, Stack, Decode, Start, Len, SAcc, State0) ->
    Type = element(Byte + 1, utf8t()),
    case element(State0 + Type, utf8s()) of
        0 ->
            string_ascii(Rest, Orig, Skip, Acc, Stack, Decode, Start,
                         Len + 2,
                         SAcc);
        12 ->
            invalid_byte(Orig, Skip + Len + 1);
        State ->
            string_utf8(Rest, Orig, Skip, Acc, Stack, Decode, Start,
                        Len + 1,
                        SAcc, State)
    end;
string_utf8(_, Orig, Skip, Acc, Stack, Decode, Start, Len, _SAcc,
            _State0) ->
    Extra = Skip - Start,
    unexpected(Orig, Start, Acc, Stack, Decode,
               Len + 1 + Extra,
               0, value).

unescape(<<Byte,Rest/bits>>,
         Original, Skip, Acc, Stack, Decode, Start, Len, SAcc) ->
    Val =
        case Byte of
            $b ->
                $\b;
            $f ->
                $\f;
            $n ->
                $\n;
            $r ->
                $\r;
            $t ->
                $\t;
            $" ->
                $";
            $\\ ->
                $\\;
            $/ ->
                $/;
            $u ->
                unicode;
            _ ->
                error
        end,
    case Val of
        unicode ->
            unescapeu(Rest, Original, Skip, Acc, Stack, Decode, Start,
                      Len, SAcc);
        error ->
            invalid_byte(Original, Skip + Len + 1);
        Int ->
            string_ascii(Rest, Original,
                         Skip + Len + 2,
                         Acc, Stack, Decode, Start, 0,
                         <<SAcc/binary,Int>>)
    end;
unescape(_, Original, Skip, Acc, Stack, Decode, Start, Len, _SAcc) ->
    Extra = Skip - Start,
    unexpected(Original, Start, Acc, Stack, Decode,
               Len + 1 + Extra,
               0, value).

unescapeu(<<E1,E2,E3,E4,Rest/bits>>,
          Original, Skip, Acc, Stack, Decode, Start, Len, SAcc) ->
    try hex_to_int(E1, E2, E3, E4) of
        CP when CP >= 55296, CP =< 56319 ->
            unescape_surrogate(Rest, Original, Skip, Acc, Stack, Decode,
                               Start, Len, SAcc, CP);
        CP ->
            try <<SAcc/binary,CP/utf8>> of
                SAcc1 ->
                    string_ascii(Rest, Original,
                                 Skip + Len + 6,
                                 Acc, Stack, Decode, Start, 0, SAcc1)
            catch
                _:_ ->
                    unexpected_sequence(binary_part(Original,
                                                    Skip + Len,
                                                    6),
                                        Skip + Len)
            end
    catch
        _:_ ->
            unexpected_sequence(binary_part(Original, Skip + Len, 6),
                                Skip + Len)
    end;
unescapeu(_Rest, Original, Skip, Acc, Stack, Decode, Start, Len, _SAcc) ->
    Extra = Skip - Start,
    unexpected(Original, Start, Acc, Stack, Decode,
               Len + 2 + Extra,
               4, value).

unescape_surrogate(<<"\\u",E1,E2,E3,E4,Rest/bits>>,
                   Original, Skip, Acc, Stack, Decode, Start, Len, SAcc,
                   Hi) ->
    try hex_to_int(E1, E2, E3, E4) of
        Lo when Lo >= 56320, Lo =< 57343 ->
            CP = 65536 + (Hi band 1023 bsl 10) + Lo band 1023,
            try <<SAcc/binary,CP/utf8>> of
                SAcc1 ->
                    string_ascii(Rest, Original,
                                 Skip + Len + 12,
                                 Acc, Stack, Decode, Start, 0, SAcc1)
            catch
                _:_ ->
                    unexpected_sequence(binary_part(Original,
                                                    Skip + Len,
                                                    12),
                                        Skip + Len)
            end;
        _ ->
            unexpected_sequence(binary_part(Original, Skip + Len, 12),
                                Skip + Len)
    catch
        _:_ ->
            unexpected_sequence(binary_part(Original, Skip + Len, 12),
                                Skip + Len)
    end;
unescape_surrogate(_Rest, Original, Skip, Acc, Stack, Decode, Start,
                   Len, _SAcc, _Hi) ->
    Extra = Skip - Start,
    unexpected(Original, Start, Acc, Stack, Decode,
               Len + 6 + Extra,
               5, value).

-spec hex_to_int(byte(), byte(), byte(), byte()) -> integer().

hex_to_int(H1, H2, H3, H4) ->
    element(H4 - $0 + 1,
            {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, n, n, n, n, n, n, n, 10, 11,
             12, 13, 14, 15, n, n, n, n, n, n, n, n, n, n, n, n, n, n,
             n, n, n, n, n, n, n, n, n, n, n, n, 10, 11, 12, 13, 14, 15})
    +
    16
    *
    (element(H3 - $0 + 1,
             {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, n, n, n, n, n, n, n, 10, 11,
              12, 13, 14, 15, n, n, n, n, n, n, n, n, n, n, n, n, n, n,
              n, n, n, n, n, n, n, n, n, n, n, n, 10, 11, 12, 13, 14,
              15})
     +
     16
     *
     (element(H2 - $0 + 1,
              {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, n, n, n, n, n, n, n, 10,
               11, 12, 13, 14, 15, n, n, n, n, n, n, n, n, n, n, n, n,
               n, n, n, n, n, n, n, n, n, n, n, n, n, n, 10, 11, 12, 13,
               14, 15})
      +
      16
      *
      element(H1 - $0 + 1,
              {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, n, n, n, n, n, n, n, 10,
               11, 12, 13, 14, 15, n, n, n, n, n, n, n, n, n, n, n, n,
               n, n, n, n, n, n, n, n, n, n, n, n, n, n, 10, 11, 12, 13,
               14, 15}))).

array_start(<<Byte,Rest/bits>>, Original, Skip, Acc, Stack, Decode, Len)
    when Byte =:= $\s; Byte =:= $\t; Byte =:= $\r; Byte =:= $\n ->
    array_start(Rest, Original, Skip, Acc, Stack, Decode, Len + 1);
array_start(<<"]",Rest/bits>>, Original, Skip, Acc, Stack, Decode, Len) ->
    {Value, NewAcc} =
        case
            {case Decode of
                 {decode, REC19, _, _, _, _, _, _, _, _, _} ->
                     REC19;
                 REC19 ->
                     error({badrecord, REC19})
             end,
             case Decode of
                 {decode, _, _, REC20, _, _, _, _, _, _, _} ->
                     REC20;
                 REC20 ->
                     error({badrecord, REC20})
             end}
        of
            {undefined, undefined} ->
                {[], Acc};
            {Start, undefined} ->
                {lists:reverse(Start(Acc)), Acc};
            {undefined, Finish} ->
                Finish([], Acc);
            {Start, Finish} ->
                Finish(Start(Acc), Acc)
        end,
    continue(Rest, Original,
             Skip + Len + 1,
             NewAcc, Stack, Decode, Value);
array_start(<<>>, Original, Skip, Acc, Stack, Decode, Len) ->
    unexpected(Original, Skip, Acc, Stack, Decode, Len, 0, value);
array_start(Rest, Original, Skip, OldAcc, Stack, Decode, Len) ->
    case
        case Decode of
            {decode, REC21, _, _, _, _, _, _, _, _, _} ->
                REC21;
            REC21 ->
                error({badrecord, REC21})
        end
    of
        undefined ->
            value(Rest, Original,
                  Skip + Len,
                  [],
                  [array, OldAcc | Stack],
                  Decode);
        Fun ->
            value(Rest, Original,
                  Skip + Len,
                  Fun(OldAcc),
                  [array, OldAcc | Stack],
                  Decode)
    end.

array_push(<<Byte,Rest/bits>>,
           Original, Skip, Acc, Stack, Decode, Value)
    when Byte =:= $\s; Byte =:= $\t; Byte =:= $\r; Byte =:= $\n ->
    array_push(Rest, Original, Skip + 1, Acc, Stack, Decode, Value);
array_push(<<"]",Rest/bits>>,
           Original, Skip, Acc0, Stack0, Decode, Value) ->
    Acc =
        case
            case Decode of
                {decode, _, REC22, _, _, _, _, _, _, _, _} ->
                    REC22;
                REC22 ->
                    error({badrecord, REC22})
            end
        of
            undefined ->
                [Value | Acc0];
            Push ->
                Push(Value, Acc0)
        end,
    [_, OldAcc | Stack] = Stack0,
    {ArrayValue, NewAcc} =
        case
            case Decode of
                {decode, _, _, REC23, _, _, _, _, _, _, _} ->
                    REC23;
                REC23 ->
                    error({badrecord, REC23})
            end
        of
            undefined ->
                {lists:reverse(Acc), OldAcc};
            Finish ->
                Finish(Acc, OldAcc)
        end,
    continue(Rest, Original,
             Skip + 1,
             NewAcc, Stack, Decode, ArrayValue);
array_push(<<$,,Rest/bits>>, Original, Skip0, Acc, Stack, Decode, Value) ->
    Skip = Skip0 + 1,
    case
        case Decode of
            {decode, _, REC24, _, _, _, _, _, _, _, _} ->
                REC24;
            REC24 ->
                error({badrecord, REC24})
        end
    of
        undefined ->
            value(Rest, Original, Skip, [Value | Acc], Stack, Decode);
        Fun ->
            value(Rest, Original, Skip, Fun(Value, Acc), Stack, Decode)
    end;
array_push(_, Original, Skip, Acc, Stack, Decode, Value) ->
    unexpected(Original, Skip, Acc, Stack, Decode, 0, 0,
               {array_push, Value}).

object_start(<<Byte,Rest/bits>>,
             Original, Skip, Acc, Stack, Decode, Len)
    when Byte =:= $\s; Byte =:= $\t; Byte =:= $\r; Byte =:= $\n ->
    object_start(Rest, Original, Skip, Acc, Stack, Decode, Len + 1);
object_start(<<"}",Rest/bits>>, Original, Skip, Acc, Stack, Decode, Len) ->
    {Value, NewAcc} =
        case
            {case Decode of
                 {decode, _, _, _, REC25, _, _, _, _, _, _} ->
                     REC25;
                 REC25 ->
                     error({badrecord, REC25})
             end,
             case Decode of
                 {decode, _, _, _, _, _, REC26, _, _, _, _} ->
                     REC26;
                 REC26 ->
                     error({badrecord, REC26})
             end}
        of
            {undefined, undefined} ->
                {#{}, Acc};
            {Start, undefined} ->
                {maps:from_list(Start(Acc)), Acc};
            {undefined, Finish} ->
                Finish([], Acc);
            {Start, Finish} ->
                Finish(Start(Acc), Acc)
        end,
    continue(Rest, Original,
             Skip + Len + 1,
             NewAcc, Stack, Decode, Value);
object_start(<<$",Rest/bits>>,
             Original, Skip0, OldAcc, Stack0, Decode, Len) ->
    Stack = [object, OldAcc | Stack0],
    Skip = Skip0 + Len + 1,
    case
        case Decode of
            {decode, _, _, _, REC27, _, _, _, _, _, _} ->
                REC27;
            REC27 ->
                error({badrecord, REC27})
        end
    of
        undefined ->
            string(Rest, Original, Skip, [], Stack, Decode);
        Fun ->
            Acc = Fun(OldAcc),
            string(Rest, Original, Skip, Acc, Stack, Decode)
    end;
object_start(_, Original, Skip, Acc, Stack, Decode, Len) ->
    unexpected(Original, Skip, Acc, Stack, Decode, Len, 0, value).

object_value(<<Byte,Rest/bits>>,
             Original, Skip, Acc, Stack, Decode, Key)
    when Byte =:= $\s; Byte =:= $\t; Byte =:= $\r; Byte =:= $\n ->
    object_value(Rest, Original, Skip + 1, Acc, Stack, Decode, Key);
object_value(<<$:,Rest/bits>>, Original, Skip, Acc, Stack, Decode, Key) ->
    value(Rest, Original, Skip + 1, Acc, [Key | Stack], Decode);
object_value(_, Original, Skip, Acc, Stack, Decode, Key) ->
    unexpected(Original, Skip, Acc, Stack, Decode, 0, 0,
               {object_value, Key}).

object_push(<<Byte,Rest/bits>>,
            Original, Skip, Acc, Stack, Decode, Value, Key)
    when Byte =:= $\s; Byte =:= $\t; Byte =:= $\r; Byte =:= $\n ->
    object_push(Rest, Original,
                Skip + 1,
                Acc, Stack, Decode, Value, Key);
object_push(<<"}",Rest/bits>>,
            Original, Skip, Acc0, Stack0, Decode, Value, Key) ->
    Acc =
        case
            case Decode of
                {decode, _, _, _, _, REC28, _, _, _, _, _} ->
                    REC28;
                REC28 ->
                    error({badrecord, REC28})
            end
        of
            undefined ->
                [{Key, Value} | Acc0];
            Fun ->
                Fun(Key, Value, Acc0)
        end,
    [_, OldAcc | Stack] = Stack0,
    {ObjectValue, NewAcc} =
        case
            case Decode of
                {decode, _, _, _, _, _, REC29, _, _, _, _} ->
                    REC29;
                REC29 ->
                    error({badrecord, REC29})
            end
        of
            undefined ->
                {maps:from_list(Acc), OldAcc};
            Finish ->
                Finish(Acc, OldAcc)
        end,
    continue(Rest, Original,
             Skip + 1,
             NewAcc, Stack, Decode, ObjectValue);
object_push(<<$,,Rest/bits>>,
            Original, Skip, Acc0, Stack, Decode, Value, Key) ->
    case
        case Decode of
            {decode, _, _, _, _, REC30, _, _, _, _, _} ->
                REC30;
            REC30 ->
                error({badrecord, REC30})
        end
    of
        undefined ->
            object_key(Rest, Original,
                       Skip + 1,
                       [{Key, Value} | Acc0],
                       Stack, Decode);
        Fun ->
            object_key(Rest, Original,
                       Skip + 1,
                       Fun(Key, Value, Acc0),
                       Stack, Decode)
    end;
object_push(_, Original, Skip, Acc, Stack, Decode, Value, Key) ->
    unexpected(Original, Skip, Acc, Stack, Decode, 0, 0,
               {object_push, Value, Key}).

object_key(<<Byte,Rest/bits>>, Original, Skip, Acc, Stack, Decode)
    when Byte =:= $\s; Byte =:= $\t; Byte =:= $\r; Byte =:= $\n ->
    object_key(Rest, Original, Skip + 1, Acc, Stack, Decode);
object_key(<<$",Rest/bits>>, Original, Skip, Acc, Stack, Decode) ->
    string(Rest, Original, Skip + 1, Acc, Stack, Decode);
object_key(_, Original, Skip, Acc, Stack, Decode) ->
    unexpected(Original, Skip, Acc, Stack, Decode, 0, 0, object_key).

continue(<<Rest/bits>>, Original, Skip, Acc, Stack0, Decode, Value) ->
    case Stack0 of
        [] ->
            terminate(Rest, Original, Skip, Acc, Value);
        [array | _] ->
            array_push(Rest, Original, Skip, Acc, Stack0, Decode, Value);
        [object | _] ->
            object_value(Rest, Original, Skip, Acc, Stack0, Decode,
                         Value);
        [Key | Stack] ->
            object_push(Rest, Original, Skip, Acc, Stack, Decode, Value,
                        Key)
    end.

terminate(<<Byte,Rest/bits>>, Original, Skip, Acc, Value)
    when Byte =:= $\s; Byte =:= $\t; Byte =:= $\r; Byte =:= $\n ->
    terminate(Rest, Original, Skip, Acc, Value);
terminate(<<>>, _, _Skip, Acc, Value) ->
    {Value, Acc, <<>>};
terminate(<<_/bits>>, Original, Skip, Acc, Value) ->
    <<_:Skip/binary,Rest/binary>> = Original,
    {Value, Acc, Rest}.

-spec unexpected_utf8(binary(), non_neg_integer()) -> no_return().

unexpected_utf8(Original, Skip) when byte_size(Original) =:= Skip ->
    error(unexpected_end);
unexpected_utf8(Original, Skip) ->
    invalid_byte(Original, Skip).

unexpected(Original, Skip, Acc, Stack, Decode, Pos, Len, FuncData) ->
    RequiredSize = Skip + Pos + Len,
    OrigSize = byte_size(Original),
    case OrigSize =< RequiredSize of
        true ->
            <<_:Skip/binary,Rest/binary>> = Original,
            {continue, {Rest, Acc, Stack, Decode, FuncData}};
        false ->
            invalid_byte(Original, Skip + Pos)
    end.

-spec unexpected_sequence(binary(), non_neg_integer()) -> no_return().

unexpected_sequence(Value, Skip) ->
    error({unexpected_sequence, Value}, none, error_info(Skip)).



