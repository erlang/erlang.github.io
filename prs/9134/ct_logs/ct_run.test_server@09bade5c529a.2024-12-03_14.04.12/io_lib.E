-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.1.2/src/io_lib.erl", 1).

-module(io_lib).

-export([fwrite/2,fwrite/3,fread/2,fread/3,format/2,format/3]).

-export([scan_format/2,unscan_format/1,build_text/1,build_text/2]).

-export([print/1,print/4,indentation/2]).

-export([write/1,write/2,write/3,nl/0,format_prompt/1,format_prompt/2]).

-export([write_binary/3]).

-export([write_atom/1,
         write_string/1,
         write_string/2,
         write_latin1_string/1,
         write_latin1_string/2,
         write_char/1,
         write_latin1_char/1]).

-export([write_atom_as_latin1/1,
         write_string_as_latin1/1,
         write_string_as_latin1/2,
         write_char_as_latin1/1]).

-export([quote_atom/2,
         char_list/1,
         latin1_char_list/1,
         deep_char_list/1,
         deep_latin1_char_list/1,
         printable_list/1,
         printable_latin1_list/1,
         printable_unicode_list/1]).

-export([collect_chars/1,
         collect_chars/3,
         collect_chars/4,
         collect_chars_eager/4,
         collect_line/1,
         collect_line/3,
         collect_line/4,
         collect_line_no_eol/4,
         get_until/1,
         get_until/3,
         get_until/4]).

-export([write_unicode_string/1,
         write_unicode_char/1,
         deep_unicode_char_list/1]).

-export([limit_term/2]).

-export([chars_length/1]).

-export_type([chars/0,
              latin1_string/0,
              continuation/0,
              fread_error/0,
              fread_item/0,
              format_spec/0,
              chars_limit/0]).

-type chars() :: [char() | chars()].

-type latin1_string() :: [unicode:latin1_char()].

-type depth() :: -1 | non_neg_integer().

-opaque continuation() ::
            {Format :: string(),
             Stack :: chars(),
             Nchars :: non_neg_integer(),
             Results :: [term()]}.

-type fread_error() ::
          atom | based | character | float | format | input | integer |
          string | unsigned.

-type fread_item() :: string() | atom() | integer() | float().

-type format_spec() ::
          #{control_char := char(),
            args := [any()],
            width := none | integer(),
            adjust := left | right,
            precision := none | integer(),
            pad_char := char(),
            encoding := unicode | latin1,
            strings := boolean(),
            maps_order => maps:iterator_order()}.

-spec fwrite(Format, Data) -> chars()
                when Format :: io:format(), Data :: [term()].

fwrite(Format, Args) ->
    format(Format, Args).

-type chars_limit() :: integer().

-spec fwrite(Format, Data, Options) -> chars()
                when
                    Format :: io:format(),
                    Data :: [term()],
                    Options :: [Option],
                    Option :: {chars_limit, CharsLimit},
                    CharsLimit :: chars_limit().

fwrite(Format, Args, Options) ->
    format(Format, Args, Options).

-spec fread(Format, String) -> Result
               when
                   Format :: string(),
                   String :: string(),
                   Result ::
                       {ok,
                        InputList :: [fread_item()],
                        LeftOverChars :: string()} |
                       {more,
                        RestFormat :: string(),
                        Nchars :: non_neg_integer(),
                        InputStack :: chars()} |
                       {error, {fread, What :: fread_error()}}.

fread(Chars, Format) ->
    io_lib_fread:fread(Chars, Format).

-spec fread(Continuation, CharSpec, Format) -> Return
               when
                   Continuation :: continuation() | [],
                   CharSpec :: string() | eof,
                   Format :: string(),
                   Return ::
                       {more, Continuation1 :: continuation()} |
                       {done, Result, LeftOverChars :: string()},
                   Result ::
                       {ok, InputList :: [fread_item()]} |
                       eof |
                       {error, {fread, What :: fread_error()}}.

fread(Cont, Chars, Format) ->
    io_lib_fread:fread(Cont, Chars, Format).

-spec format(Format, Data) -> chars()
                when Format :: io:format(), Data :: [term()].

format(Format, Args) ->
    try
        io_lib_format:fwrite(Format, Args)
    catch
        C:R:S ->
            test_modules_loaded(C, R, S),
            error(badarg, [Format, Args])
    end.

-spec format(Format, Data, Options) -> chars()
                when
                    Format :: io:format(),
                    Data :: [term()],
                    Options :: [Option],
                    Option :: {chars_limit, CharsLimit},
                    CharsLimit :: chars_limit().

format(Format, Args, Options) ->
    try
        io_lib_format:fwrite(Format, Args, Options)
    catch
        C:R:S ->
            test_modules_loaded(C, R, S),
            error(badarg, [Format, Args])
    end.

-spec scan_format(Format, Data) -> FormatList
                     when
                         Format :: io:format(),
                         Data :: [term()],
                         FormatList :: [char() | format_spec()].

scan_format(Format, Args) ->
    try
        io_lib_format:scan(Format, Args)
    catch
        C:R:S ->
            test_modules_loaded(C, R, S),
            error(badarg, [Format, Args])
    end.

-spec unscan_format(FormatList) -> {Format, Data}
                       when
                           FormatList :: [char() | format_spec()],
                           Format :: io:format(),
                           Data :: [term()].

unscan_format(FormatList) ->
    io_lib_format:unscan(FormatList).

-spec build_text(FormatList) -> chars()
                    when FormatList :: [char() | format_spec()].

build_text(FormatList) ->
    try
        io_lib_format:build(FormatList)
    catch
        C:R:S ->
            test_modules_loaded(C, R, S),
            error(badarg, [FormatList])
    end.

-spec build_text(FormatList, Options) -> chars()
                    when
                        FormatList :: [char() | format_spec()],
                        Options :: [Option],
                        Option :: {chars_limit, CharsLimit},
                        CharsLimit :: chars_limit().

build_text(FormatList, Options) ->
    try
        io_lib_format:build(FormatList, Options)
    catch
        C:R:S ->
            test_modules_loaded(C, R, S),
            error(badarg, [FormatList, Options])
    end.

test_modules_loaded(_C, _R, _S) ->
    Modules = [io_lib_format, io_lib_pretty, string, unicode],
    case code:ensure_modules_loaded(Modules) of
        ok ->
            ok;
        Error ->
            error(Error)
    end.

-spec print(Term) -> chars() when Term :: term().

print(Term) ->
    io_lib_pretty:print(Term).

-spec print(Term, Column, LineLength, Depth) -> chars()
               when
                   Term :: term(),
                   Column :: non_neg_integer(),
                   LineLength :: non_neg_integer(),
                   Depth :: depth().

print(Term, Column, LineLength, Depth) ->
    io_lib_pretty:print(Term, Column, LineLength, Depth).

-spec indentation(String, StartIndent) -> integer()
                     when String :: string(), StartIndent :: integer().

indentation(Chars, Current) ->
    io_lib_format:indentation(Chars, Current).

-spec format_prompt(term()) -> chars().

format_prompt(Prompt) ->
    format_prompt(Prompt, latin1).

-spec format_prompt(term(), atom()) -> chars().

format_prompt({format, Format, Args}, _Encoding) ->
    do_format_prompt(Format, Args);
format_prompt(Prompt, Encoding)
    when is_list(Prompt); is_atom(Prompt); is_binary(Prompt) ->
    do_format_prompt(add_modifier(Encoding, "s"), [Prompt]);
format_prompt(Prompt, Encoding) ->
    do_format_prompt(add_modifier(Encoding, "p"), [Prompt]).

do_format_prompt(Format, Args) ->
    case catch format(Format, Args) of
        {'EXIT', _} ->
            "???";
        List ->
            List
    end.

add_modifier(latin1, C) ->
    "~" ++ C;
add_modifier(_, C) ->
    "~t" ++ C.

-spec write(Term) -> chars() when Term :: term().

write(Term) ->
    write1(Term, -1, latin1, undefined).

-spec write(term(), depth(), boolean()) -> chars().

write(Term, D, true) ->
    io_lib_pretty:print(Term, 1, 80, D);
write(Term, D, false) ->
    write(Term, D).

-spec write(Term, Depth) -> chars()
               when Term :: term(), Depth :: depth();
           (Term, Options) -> chars()
               when
                   Term :: term(),
                   Options :: [Option],
                   Option ::
                       {chars_limit, CharsLimit} |
                       {depth, Depth} |
                       {encoding, latin1 | utf8 | unicode},
                   CharsLimit :: chars_limit(),
                   Depth :: depth().

write(Term, Options) when is_list(Options) ->
    Depth = get_option(depth, Options, -1),
    Encoding = get_option(encoding, Options, epp:default_encoding()),
    CharsLimit = get_option(chars_limit, Options, -1),
    MapsOrder = get_option(maps_order, Options, undefined),
    if
        Depth =:= 0;CharsLimit =:= 0 ->
            "...";
        is_integer(CharsLimit), CharsLimit < 0, is_integer(Depth) ->
            write1(Term, Depth, Encoding, MapsOrder);
        is_integer(CharsLimit), CharsLimit > 0 ->
            RecDefFun =
                fun(_, _) ->
                       no
                end,
            If =
                io_lib_pretty:intermediate(Term, Depth, CharsLimit,
                                           RecDefFun, Encoding,
                                           _Str = false,
                                           MapsOrder),
            io_lib_pretty:write(If)
    end;
write(Term, Depth) ->
    write(Term, [{depth, Depth}, {encoding, latin1}]).

write1(_Term, 0, _E, _O) ->
    "...";
write1(Term, _D, _E, _O) when is_integer(Term) ->
    integer_to_list(Term);
write1(Term, _D, _E, _O) when is_float(Term) ->
    io_lib_format:fwrite_g(Term);
write1(Atom, _D, latin1, _O) when is_atom(Atom) ->
    write_atom_as_latin1(Atom);
write1(Atom, _D, _E, _O) when is_atom(Atom) ->
    write_atom(Atom);
write1(Term, _D, _E, _O) when is_port(Term) ->
    write_port(Term);
write1(Term, _D, _E, _O) when is_pid(Term) ->
    pid_to_list(Term);
write1(Term, _D, _E, _O) when is_reference(Term) ->
    write_ref(Term);
write1(<<_/bitstring>> = Term, D, _E, _O) ->
    write_binary(Term, D);
write1([], _D, _E, _O) ->
    "[]";
write1({}, _D, _E, _O) ->
    "{}";
write1([H | T], D, E, O) ->
    if
        D =:= 1 ->
            "[...]";
        true ->
            [$[,
             [write1(H, D - 1, E, O) | write_tail(T, D - 1, E, O)],
             $]]
    end;
write1(F, _D, _E, _O) when is_function(F) ->
    erlang:fun_to_list(F);
write1(Term, D, E, O) when is_map(Term) ->
    write_map(Term, D, E, O);
write1(T, D, E, O) when is_tuple(T) ->
    if
        D =:= 1 ->
            "{...}";
        true ->
            [${,
             [write1(element(1, T), D - 1, E, O) |
              write_tuple(T, 2, D - 1, E, O)],
             $}]
    end.

write_tail([], _D, _E, _O) ->
    "";
write_tail(_, 1, _E, _O) ->
    [$| | "..."];
write_tail([H | T], D, E, O) ->
    [$,, write1(H, D - 1, E, O) | write_tail(T, D - 1, E, O)];
write_tail(Other, D, E, O) ->
    [$|, write1(Other, D - 1, E, O)].

write_tuple(T, I, _D, _E, _O) when I > tuple_size(T) ->
    "";
write_tuple(_, _I, 1, _E, _O) ->
    [$, | "..."];
write_tuple(T, I, D, E, O) ->
    [$,,
     write1(element(I, T), D - 1, E, O) |
     write_tuple(T, I + 1, D - 1, E, O)].

write_port(Port) ->
    port_to_list(Port).

write_ref(Ref) ->
    ref_to_list(Ref).

write_map(_, 1, _E, _O) ->
    "#{}";
write_map(Map, D, E, O) when is_integer(D) ->
    I = maps:iterator(Map, O),
    case maps:next(I) of
        {K, V, NextI} ->
            D0 = D - 1,
            W = write_map_assoc(K, V, D0, E, O),
            [$#, ${, [W | write_map_body(NextI, D0, D0, E, O)], $}];
        none ->
            "#{}"
    end.

write_map_body(_, 1, _D0, _E, _O) ->
    ",...";
write_map_body(I, D, D0, E, O) ->
    case maps:next(I) of
        {K, V, NextI} ->
            W = write_map_assoc(K, V, D0, E, O),
            [$,, W | write_map_body(NextI, D - 1, D0, E, O)];
        none ->
            ""
    end.

write_map_assoc(K, V, D, E, O) ->
    [write1(K, D, E, O), " => ", write1(V, D, E, O)].

write_binary(B, D) when is_integer(D) ->
    {S, _} = write_binary(B, D, -1),
    S.

write_binary(B, D, T) when is_integer(T) ->
    {S, Rest} = write_binary_body(B, D, tsub(T, 4), []),
    {[$<, $<, lists:reverse(S), $>, $>], Rest}.

write_binary_body(<<>> = B, _D, _T, Acc) ->
    {Acc, B};
write_binary_body(B, D, T, Acc) when D =:= 1; T =:= 0 ->
    {["..." | Acc], B};
write_binary_body(<<X:8>>, _D, _T, Acc) ->
    {[integer_to_list(X) | Acc], <<>>};
write_binary_body(<<X:8,Rest/bitstring>>, D, T, Acc) ->
    S = integer_to_list(X),
    write_binary_body(Rest,
                      D - 1,
                      tsub(T, length(S) + 1),
                      [$,, S | Acc]);
write_binary_body(B, _D, _T, Acc) ->
    L = bit_size(B),
    <<X:L>> = B,
    {[integer_to_list(L), $:, integer_to_list(X) | Acc], <<>>}.

tsub(T, _) when T < 0 ->
    T;
tsub(T, E) when T >= E ->
    T - E;
tsub(_, _) ->
    0.

get_option(Key, TupleList, Default) ->
    case lists:keyfind(Key, 1, TupleList) of
        false ->
            Default;
        {Key, Value} ->
            Value;
        _ ->
            Default
    end.

-spec write_atom(Atom) -> chars() when Atom :: atom().

write_atom(Atom) ->
    write_possibly_quoted_atom(Atom, fun write_string/2).

-spec write_atom_as_latin1(Atom) -> latin1_string() when Atom :: atom().

write_atom_as_latin1(Atom) ->
    write_possibly_quoted_atom(Atom, fun write_string_as_latin1/2).

write_possibly_quoted_atom(Atom, PFun) ->
    Chars = atom_to_list(Atom),
    case quote_atom(Atom, Chars) of
        true ->
            PFun(Chars, $');
        false ->
            Chars
    end.

-spec quote_atom(atom(), chars()) -> boolean().

quote_atom(Atom, Cs0) ->
    case erl_scan:reserved_word(Atom) of
        true ->
            true;
        false ->
            case Cs0 of
                [C | Cs] when is_integer(C), C >= $a, C =< $z ->
                    not name_chars(Cs);
                [C | Cs] when is_integer(C), C >= $ß, C =< $ÿ, C =/= $÷ ->
                    not name_chars(Cs);
                [C | _] when is_integer(C) ->
                    true;
                [] ->
                    true
            end
    end.

name_chars([C | Cs]) when is_integer(C) ->
    case name_char(C) of
        true ->
            name_chars(Cs);
        false ->
            false
    end;
name_chars([]) ->
    true.

name_char(C) when C >= $a, C =< $z ->
    true;
name_char(C) when C >= $ß, C =< $ÿ, C =/= $÷ ->
    true;
name_char(C) when C >= $A, C =< $Z ->
    true;
name_char(C) when C >= $À, C =< $Þ, C =/= $× ->
    true;
name_char(C) when C >= $0, C =< $9 ->
    true;
name_char($_) ->
    true;
name_char($@) ->
    true;
name_char(_) ->
    false.

-spec write_string(String) -> chars() when String :: string().

write_string(S) ->
    write_string(S, $").

-spec write_string(string(), char()) -> chars().

write_string(S, Q) ->
    [Q | write_string1(unicode_as_unicode, S, Q)].

write_unicode_string(S) ->
    write_string(S).

-spec write_latin1_string(Latin1String) -> latin1_string()
                             when Latin1String :: latin1_string().

write_latin1_string(S) ->
    write_latin1_string(S, $").

-spec write_latin1_string(latin1_string(), char()) -> latin1_string().

write_latin1_string(S, Q) ->
    [Q | write_string1(latin1, S, Q)].

-spec write_string_as_latin1(String) -> latin1_string()
                                when String :: string().

write_string_as_latin1(S) ->
    write_string_as_latin1(S, $").

-spec write_string_as_latin1(string(), char()) -> latin1_string().

write_string_as_latin1(S, Q) ->
    [Q | write_string1(unicode_as_latin1, S, Q)].

write_string1(_, [], Q) ->
    [Q];
write_string1(Enc, [C | Cs], Q) when is_integer(C) ->
    string_char(Enc, C, Q, write_string1(Enc, Cs, Q)).

string_char(_, Q, Q, Tail) ->
    [$\\, Q | Tail];
string_char(_, $\\, _, Tail) ->
    [$\\, $\\ | Tail];
string_char(_, C, _, Tail) when C >= $\s, C =< $~ ->
    [C | Tail];
string_char(latin1, C, _, Tail) when C >= $ , C =< $ÿ ->
    [C | Tail];
string_char(unicode_as_unicode, C, _, Tail) when C >= $  ->
    [C | Tail];
string_char(unicode_as_latin1, C, _, Tail) when C >= $ , C =< $ÿ ->
    [C | Tail];
string_char(unicode_as_latin1, C, _, Tail) when C >= $ÿ ->
    "\\x{" ++ integer_to_list(C, 16) ++ "}" ++ Tail;
string_char(_, $\n, _, Tail) ->
    [$\\, $n | Tail];
string_char(_, $\r, _, Tail) ->
    [$\\, $r | Tail];
string_char(_, $\t, _, Tail) ->
    [$\\, $t | Tail];
string_char(_, $\v, _, Tail) ->
    [$\\, $v | Tail];
string_char(_, $\b, _, Tail) ->
    [$\\, $b | Tail];
string_char(_, $\f, _, Tail) ->
    [$\\, $f | Tail];
string_char(_, $\e, _, Tail) ->
    [$\\, $e | Tail];
string_char(_, $\d, _, Tail) ->
    [$\\, $d | Tail];
string_char(_, C, _, Tail) when C < $  ->
    C1 = C bsr 6 + $0,
    C2 = (C bsr 3) band 7 + $0,
    C3 = C band 7 + $0,
    [$\\, C1, C2, C3 | Tail].

-spec write_char(Char) -> chars() when Char :: char().

write_char($\s) ->
    "$\\s";
write_char(C) when is_integer(C), C >= $\000 ->
    [$$ | string_char(unicode_as_unicode, C, -1, [])].

write_unicode_char(C) ->
    write_char(C).

-spec write_latin1_char(Latin1Char) -> latin1_string()
                           when Latin1Char :: unicode:latin1_char().

write_latin1_char(Lat1) when is_integer(Lat1), Lat1 >= $\000, Lat1 =< $ÿ ->
    [$$ | string_char(latin1, Lat1, -1, [])].

-spec write_char_as_latin1(Char) -> latin1_string() when Char :: char().

write_char_as_latin1(Uni) when is_integer(Uni), Uni >= $\000 ->
    [$$ | string_char(unicode_as_latin1, Uni, -1, [])].

-spec latin1_char_list(Term) -> boolean() when Term :: term().

latin1_char_list([C | Cs]) when is_integer(C), C >= $\000, C =< $ÿ ->
    latin1_char_list(Cs);
latin1_char_list([]) ->
    true;
latin1_char_list(_) ->
    false.

-spec char_list(Term) -> boolean() when Term :: term().

char_list([C | Cs])
    when
        is_integer(C), C >= 0, C < 55296;
        is_integer(C), C > 57343, C < 65534;
        is_integer(C), C > 65535, C =< 1114111 ->
    char_list(Cs);
char_list([]) ->
    true;
char_list(_) ->
    false.

-spec deep_latin1_char_list(Term) -> boolean() when Term :: term().

deep_latin1_char_list(Cs) ->
    deep_latin1_char_list(Cs, []).

deep_latin1_char_list([C | Cs], More) when is_list(C) ->
    deep_latin1_char_list(C, [Cs | More]);
deep_latin1_char_list([C | Cs], More)
    when is_integer(C), C >= $\000, C =< $ÿ ->
    deep_latin1_char_list(Cs, More);
deep_latin1_char_list([], [Cs | More]) ->
    deep_latin1_char_list(Cs, More);
deep_latin1_char_list([], []) ->
    true;
deep_latin1_char_list(_, _More) ->
    false.

-spec deep_char_list(Term) -> boolean() when Term :: term().

deep_char_list(Cs) ->
    deep_char_list(Cs, []).

deep_char_list([C | Cs], More) when is_list(C) ->
    deep_char_list(C, [Cs | More]);
deep_char_list([C | Cs], More)
    when
        is_integer(C), C >= 0, C < 55296;
        is_integer(C), C > 57343, C < 65534;
        is_integer(C), C > 65535, C =< 1114111 ->
    deep_char_list(Cs, More);
deep_char_list([], [Cs | More]) ->
    deep_char_list(Cs, More);
deep_char_list([], []) ->
    true;
deep_char_list(_, _More) ->
    false.

deep_unicode_char_list(Term) ->
    deep_char_list(Term).

-spec printable_latin1_list(Term) -> boolean() when Term :: term().

printable_latin1_list([C | Cs]) when is_integer(C), C >= $\s, C =< $~ ->
    printable_latin1_list(Cs);
printable_latin1_list([C | Cs]) when is_integer(C), C >= $ , C =< $ÿ ->
    printable_latin1_list(Cs);
printable_latin1_list([$\n | Cs]) ->
    printable_latin1_list(Cs);
printable_latin1_list([$\r | Cs]) ->
    printable_latin1_list(Cs);
printable_latin1_list([$\t | Cs]) ->
    printable_latin1_list(Cs);
printable_latin1_list([$\v | Cs]) ->
    printable_latin1_list(Cs);
printable_latin1_list([$\b | Cs]) ->
    printable_latin1_list(Cs);
printable_latin1_list([$\f | Cs]) ->
    printable_latin1_list(Cs);
printable_latin1_list([$\e | Cs]) ->
    printable_latin1_list(Cs);
printable_latin1_list([]) ->
    true;
printable_latin1_list(_) ->
    false.

-spec printable_list(Term) -> boolean() when Term :: term().

printable_list(L) ->
    case io:printable_range() of
        latin1 ->
            printable_latin1_list(L);
        unicode ->
            printable_unicode_list(L)
    end.

-spec printable_unicode_list(Term) -> boolean() when Term :: term().

printable_unicode_list([C | Cs]) when is_integer(C), C >= $\s, C =< $~ ->
    printable_unicode_list(Cs);
printable_unicode_list([C | Cs])
    when
        is_integer(C), C >= 160, C < 55296;
        is_integer(C), C > 57343, C < 65534;
        is_integer(C), C > 65535, C =< 1114111 ->
    printable_unicode_list(Cs);
printable_unicode_list([$\n | Cs]) ->
    printable_unicode_list(Cs);
printable_unicode_list([$\r | Cs]) ->
    printable_unicode_list(Cs);
printable_unicode_list([$\t | Cs]) ->
    printable_unicode_list(Cs);
printable_unicode_list([$\v | Cs]) ->
    printable_unicode_list(Cs);
printable_unicode_list([$\b | Cs]) ->
    printable_unicode_list(Cs);
printable_unicode_list([$\f | Cs]) ->
    printable_unicode_list(Cs);
printable_unicode_list([$\e | Cs]) ->
    printable_unicode_list(Cs);
printable_unicode_list([]) ->
    true;
printable_unicode_list(_) ->
    false.

-spec nl() -> string().

nl() ->
    "\n".

count_and_find_utf8(Bin, N) ->
    cafu(Bin, N, 0, 0, none).

cafu(<<>>, _N, Count, _ByteCount, SavePos) ->
    {Count, SavePos};
cafu(<<_/utf8,Rest/binary>>, 0, Count, ByteCount, _SavePos) ->
    cafu(Rest, -1, Count + 1, 0, ByteCount);
cafu(<<_/utf8,Rest/binary>>, N, Count, _ByteCount, SavePos) when N < 0 ->
    cafu(Rest, -1, Count + 1, 0, SavePos);
cafu(<<_/utf8,Rest/binary>> = Whole, N, Count, ByteCount, SavePos) ->
    Delta = byte_size(Whole) - byte_size(Rest),
    cafu(Rest, N - 1, Count + 1, ByteCount + Delta, SavePos);
cafu(_Other, _N, Count, _ByteCount, SavePos) ->
    {Count, SavePos}.

collect_chars(Tag, Data, N) ->
    collect_chars(Tag, Data, latin1, N).

collect_chars(start, Data, unicode, N)
    when is_binary(Data), is_integer(N) ->
    {Size, Npos} = count_and_find_utf8(Data, N),
    if
        Size > N ->
            {B1, B2} = split_binary(Data, Npos),
            {stop, B1, B2};
        Size < N ->
            {binary, [Data], N - Size};
        true ->
            {stop, Data, <<>>}
    end;
collect_chars(start, Data, latin1, N)
    when is_binary(Data), is_integer(N) ->
    Size = byte_size(Data),
    if
        Size > N ->
            {B1, B2} = split_binary(Data, N),
            {stop, B1, B2};
        Size < N ->
            {binary, [Data], N - Size};
        true ->
            {stop, Data, <<>>}
    end;
collect_chars(start, Data, _, N) when is_list(Data), is_integer(N) ->
    collect_chars_list([], N, Data);
collect_chars(start, eof, _, _) ->
    {stop, eof, eof};
collect_chars({binary, [<<>>], _N}, eof, _, _) ->
    {stop, eof, eof};
collect_chars({binary, Stack, _N}, eof, _, _) ->
    {stop, binrev(Stack), eof};
collect_chars({binary, Stack, N}, Data, unicode, _) when is_integer(N) ->
    {Size, Npos} = count_and_find_utf8(Data, N),
    if
        Size > N ->
            {B1, B2} = split_binary(Data, Npos),
            {stop, binrev(Stack, [B1]), B2};
        Size < N ->
            {binary, [Data | Stack], N - Size};
        true ->
            {stop, binrev(Stack, [Data]), <<>>}
    end;
collect_chars({binary, Stack, N}, Data, latin1, _) when is_integer(N) ->
    Size = byte_size(Data),
    if
        Size > N ->
            {B1, B2} = split_binary(Data, N),
            {stop, binrev(Stack, [B1]), B2};
        Size < N ->
            {binary, [Data | Stack], N - Size};
        true ->
            {stop, binrev(Stack, [Data]), <<>>}
    end;
collect_chars({list, Stack, N}, Data, _, _) when is_integer(N) ->
    collect_chars_list(Stack, N, Data);
collect_chars([], Chars, _, N) when is_integer(N) ->
    collect_chars1(N, Chars, []);
collect_chars({Left, Sofar}, Chars, _, _N) when is_integer(Left) ->
    collect_chars1(Left, Chars, Sofar).

collect_chars1(N, Chars, Stack) when N =< 0 ->
    {done, lists:reverse(Stack, []), Chars};
collect_chars1(N, [C | Rest], Stack) ->
    collect_chars1(N - 1, Rest, [C | Stack]);
collect_chars1(_N, eof, []) ->
    {done, eof, []};
collect_chars1(_N, eof, Stack) ->
    {done, lists:reverse(Stack, []), []};
collect_chars1(N, [], Stack) ->
    {more, {N, Stack}}.

collect_chars_list(Stack, 0, Data) ->
    {stop, lists:reverse(Stack, []), Data};
collect_chars_list([], _N, eof) ->
    {stop, eof, eof};
collect_chars_list(Stack, _N, eof) ->
    {stop, lists:reverse(Stack, []), eof};
collect_chars_list(Stack, N, []) ->
    {list, Stack, N};
collect_chars_list(Stack, N, [H | T]) ->
    collect_chars_list([H | Stack], N - 1, T).

collect_chars({_, _, N}) ->
    N.

collect_chars_eager(State, Chars, Encoding, N) ->
    case collect_chars(State, Chars, Encoding, N) of
        {list, Stack, _N} when Stack =/= [] ->
            {stop, lists:reverse(Stack), []};
        {binary, Stack, _N} when Stack =/= [<<>>] ->
            {stop, binrev(Stack), []};
        Else ->
            Else
    end.

collect_line(Tag, Data, Any) ->
    collect_line(Tag, Data, latin1, Any).

collect_line_no_eol(Tag, Data, Encoding, Any) ->
    case collect_line(Tag, Data, Encoding, Any) of
        {stop, Line, Rest} when Line =/= eof ->
            {stop, string:trim(Line), Rest};
        Else ->
            Else
    end.

collect_line(start, Data, Encoding, _) when is_binary(Data) ->
    collect_line_bin(Data, Data, [], Encoding);
collect_line(start, Data, _, _) when is_list(Data) ->
    collect_line_list(Data, []);
collect_line(start, eof, _, _) ->
    {stop, eof, eof};
collect_line(Stack, Data, Encoding, _) when is_binary(Data) ->
    collect_line_bin(Data, Data, Stack, Encoding);
collect_line(Stack, Data, _, _) when is_list(Data) ->
    collect_line_list(Data, Stack);
collect_line([B | _] = Stack, eof, _, _) when is_binary(B) ->
    {stop, binrev(Stack), eof};
collect_line(Stack, eof, _, _) ->
    {stop, lists:reverse(Stack, []), eof}.

collect_line_bin(<<$\n,T/binary>>, Data, Stack0, _) ->
    N = byte_size(Data) - byte_size(T),
    <<Line:N/binary,_/binary>> = Data,
    case Stack0 of
        [] ->
            {stop, Line, T};
        [<<$\r>> | Stack] when N =:= 1 ->
            {stop, binrev(Stack, [$\n]), T};
        _ ->
            {stop, binrev(Stack0, [Line]), T}
    end;
collect_line_bin(<<$\r,$\n,T/binary>>, Data, Stack, _) ->
    N = byte_size(Data) - byte_size(T) - 2,
    <<Line:N/binary,_/binary>> = Data,
    {stop, binrev(Stack, [Line, $\n]), T};
collect_line_bin(<<$\r>>, Data0, Stack, _) ->
    N = byte_size(Data0) - 1,
    <<Data:N/binary,_/binary>> = Data0,
    [<<$\r>>, Data | Stack];
collect_line_bin(<<_,T/binary>>, Data, Stack, Enc) ->
    collect_line_bin(T, Data, Stack, Enc);
collect_line_bin(<<>>, Data, Stack, _) ->
    [Data | Stack].

collect_line_list([$\n | T], [$\r | Stack]) ->
    {stop, lists:reverse(Stack, [$\n]), T};
collect_line_list([$\n | T], Stack) ->
    {stop, lists:reverse(Stack, [$\n]), T};
collect_line_list([H | T], Stack) ->
    collect_line_list(T, [H | Stack]);
collect_line_list([], Stack) ->
    Stack.

collect_line(_State) ->
    0.

get_until(Any, Data, Arg) ->
    get_until(Any, Data, latin1, Arg).

get_until(start, Data, Encoding, XtraArg) ->
    get_until({is_binary(Data), []}, Data, Encoding, XtraArg);
get_until({IsDataBinary, Cont}, Data, Encoding, {Mod, Func, XtraArgs}) ->
    Chars =
        if
            is_binary(Data), Encoding =:= unicode ->
                unicode:characters_to_list(Data, utf8);
            is_binary(Data) ->
                binary_to_list(Data);
            true ->
                Data
        end,
    case apply(Mod, Func, [Cont, Chars | XtraArgs]) of
        {done, Result, Buf} ->
            {stop,
             if
                 IsDataBinary, is_list(Result), Encoding =:= unicode ->
                     unicode:characters_to_binary(Result, unicode,
                                                  unicode);
                 IsDataBinary, is_list(Result) ->
                     iolist_to_binary(Result);
                 true ->
                     Result
             end,
             Buf};
        {more, NewCont} ->
            {IsDataBinary, NewCont}
    end.

binrev(L) ->
    list_to_binary(lists:reverse(L, [])).

binrev(L, T) ->
    list_to_binary(lists:reverse(L, T)).

get_until(_State) ->
    0.

-spec limit_term(term(), depth()) -> term().

limit_term(Term, Depth) when is_integer(Depth), Depth >= -1 ->
    try test_limit(Term, Depth) of
        ok ->
            Term
    catch
        throw:limit ->
            limit(Term, Depth)
    end.

limit(_, 0) ->
    '...';
limit([H | T] = L, D) ->
    if
        D =:= 1 ->
            ['...'];
        true ->
            case printable_list(L) of
                true ->
                    L;
                false ->
                    [limit(H, D - 1) | limit_tail(T, D - 1)]
            end
    end;
limit(Term, D) when is_map(Term) ->
    limit_map(Term, D);
limit({} = T, _D) ->
    T;
limit(T, D) when is_tuple(T) ->
    if
        D =:= 1 ->
            {'...'};
        true ->
            list_to_tuple([limit(element(1, T), D - 1) |
                           limit_tuple(T, 2, D - 1)])
    end;
limit(<<_/bitstring>> = Term, D) ->
    limit_bitstring(Term, D);
limit(Term, _D) ->
    Term.

limit_tail([], _D) ->
    [];
limit_tail(_, 1) ->
    ['...'];
limit_tail([H | T], D) ->
    [limit(H, D - 1) | limit_tail(T, D - 1)];
limit_tail(Other, D) ->
    limit(Other, D - 1).

limit_tuple(T, I, _D) when I > tuple_size(T) ->
    [];
limit_tuple(_, _I, 1) ->
    ['...'];
limit_tuple(T, I, D) ->
    [limit(element(I, T), D - 1) | limit_tuple(T, I + 1, D - 1)].

limit_map(Map, D) ->
    limit_map_body(maps:iterator(Map), D + 1, D, []).

limit_map_body(_I, 0, _D0, Acc) ->
    maps:from_list(Acc);
limit_map_body(I, D, D0, Acc) ->
    case maps:next(I) of
        {K, V, NextI} ->
            limit_map_body(NextI,
                           D - 1,
                           D0,
                           [limit_map_assoc(K, V, D0) | Acc]);
        none ->
            maps:from_list(Acc)
    end.

limit_map_assoc(K, V, D) ->
    {K, limit(V, D - 1)}.

limit_bitstring(B, _D) ->
    B.

test_limit(_, 0) ->
    throw(limit);
test_limit([H | T] = L, D) when is_integer(D) ->
    if
        D =:= 1 ->
            throw(limit);
        true ->
            case printable_list(L) of
                true ->
                    ok;
                false ->
                    test_limit(H, D - 1),
                    test_limit_tail(T, D - 1)
            end
    end;
test_limit(Term, D) when is_map(Term) ->
    test_limit_map(Term, D);
test_limit({}, _D) ->
    ok;
test_limit(T, D) when is_tuple(T) ->
    test_limit_tuple(T, 1, tuple_size(T), D);
test_limit(<<_/bitstring>> = Term, D) ->
    test_limit_bitstring(Term, D);
test_limit(_Term, _D) ->
    ok.

test_limit_tail([], _D) ->
    ok;
test_limit_tail(_, 1) ->
    throw(limit);
test_limit_tail([H | T], D) ->
    test_limit(H, D - 1),
    test_limit_tail(T, D - 1);
test_limit_tail(Other, D) ->
    test_limit(Other, D - 1).

test_limit_tuple(_T, I, Sz, _D) when I > Sz ->
    ok;
test_limit_tuple(_, _, _, 1) ->
    throw(limit);
test_limit_tuple(T, I, Sz, D) ->
    test_limit(element(I, T), D - 1),
    test_limit_tuple(T, I + 1, Sz, D - 1).

test_limit_map(Map, D) ->
    test_limit_map_body(maps:iterator(Map), D).

test_limit_map_body(_I, 0) ->
    throw(limit);
test_limit_map_body(I, D) ->
    case maps:next(I) of
        {K, V, NextI} ->
            test_limit_map_assoc(K, V, D),
            test_limit_map_body(NextI, D - 1);
        none ->
            ok
    end.

test_limit_map_assoc(K, V, D) ->
    test_limit(K, D - 1),
    test_limit(V, D - 1).

test_limit_bitstring(_, _) ->
    ok.

-spec chars_length(chars()) -> non_neg_integer().

chars_length(S) ->
    try
        iolist_size(S)
    catch
        _:_ ->
            string:length(S)
    end.



