-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.1.2/src/io_lib_fread.erl",
      1).

-module(io_lib_fread).

-export([fread/2,fread/3]).

-import(lists, [reverse/1]).

-spec fread(Continuation, String, Format) -> Return
               when
                   Continuation :: io_lib:continuation() | [],
                   String :: string() | eof,
                   Format :: string(),
                   Return ::
                       {more, Continuation1 :: io_lib:continuation()} |
                       {done, Result, LeftOverChars :: string()},
                   Result ::
                       {ok, InputList :: [io_lib:fread_item()]} |
                       eof |
                       {error, {fread, What :: io_lib:fread_error()}}.

fread([], Chars, Format) ->
    fread_collect(Format, [], 0, [], Chars);
fread({Format, Stack, N, Results} = _Continuation, Chars, _) ->
    fread_collect(Format, Stack, N, Results, Chars).

fread_collect(Format, [$\r | Stack], N, Results, [$\n | Chars]) ->
    fread_line(Format,
               lists:reverse(Stack),
               N, Results, Chars,
               [$\r, $\n]);
fread_collect(Format, Stack, N, Results, [$\n | Chars]) ->
    fread_line(Format, lists:reverse(Stack), N, Results, Chars, [$\n]);
fread_collect(Format, Stack, N, Results, []) ->
    Continuation = {Format, Stack, N, Results},
    {more, Continuation};
fread_collect(Format, [$\r | Stack], N, Results, Chars) ->
    fread_line(Format, lists:reverse(Stack), N, Results, Chars, [$\r]);
fread_collect(Format, Stack, N, Results, [C | Chars]) ->
    fread_collect(Format, [C | Stack], N, Results, Chars);
fread_collect(Format, Stack, N, Results, Chars) ->
    fread_line(Format, lists:reverse(Stack), N, Results, Chars, []).

fread_line(Format0, Line, N0, Results0, More, Newline) ->
    Chars =
        if
            is_list(More) ->
                More;
            true ->
                []
        end,
    case fread(Format0, Line, N0, Results0) of
        {ok, Results, []} ->
            {done, {ok, Results}, Chars};
        {ok, Results, Rest} ->
            {done, {ok, Results}, Rest ++ Newline ++ Chars};
        {more, Format, N, Results} when is_list(Line), is_list(More) ->
            fread_collect(Format, [],
                          N + length(Newline),
                          Results, More);
        {more, Format, N, Results} when is_list(Line) ->
            fread_line(Format, eof,
                       N + length(Newline),
                       Results, More, []);
        Other ->
            {done, Other, More}
    end.

-spec fread(Format, String) -> Result
               when
                   Format :: string(),
                   String :: string(),
                   Result ::
                       {ok,
                        InputList :: [io_lib:fread_item()],
                        LeftOverChars :: string()} |
                       {more,
                        RestFormat :: string(),
                        Nchars :: non_neg_integer(),
                        InputStack :: io_lib:chars()} |
                       {error, {fread, What :: io_lib:fread_error()}}.

fread(Format, Line) ->
    fread(Format, Line, 0, []).

fread([$~ | Format0] = AllFormat, Line, N, Results) ->
    {Format, F, Sup, Unicode} = fread_field(Format0),
    fread1(Format, F, Sup, Unicode, Line, N, Results, AllFormat);
fread([C | Format], Line, N, Results)
    when
        C =:= $\s
        orelse
        C =:= $\t
        orelse
        C =:= $\r
        orelse
        C =:= $\n ->
    fread_skip_white(Format, Line, N, Results);
fread([C | Format], [C | Line], N, Results) ->
    fread(Format, Line, N + 1, Results);
fread([_F | _Format], [_C | _Line], _N, _Results) ->
    fread_error(input);
fread([_ | _] = Format, [], N, Results) ->
    {more, Format, N, Results};
fread([_ | _], eof, 0, []) ->
    eof;
fread([_ | _], eof, _N, _Results) ->
    fread_error(input);
fread([], Line, _N, Results) ->
    {ok, lists:reverse(Results), Line}.

fread_skip_white(Format, [C | Line], N, Results)
    when
        C =:= $\s
        orelse
        C =:= $\t
        orelse
        C =:= $\r
        orelse
        C =:= $\n ->
    fread_skip_white(Format, Line, N + 1, Results);
fread_skip_white(Format, Line, N, Results) ->
    fread(Format, Line, N, Results).

fread_field([$* | Format]) ->
    fread_field(Format, true, false);
fread_field(Format) ->
    fread_field(Format, false, false).

fread_field([C | Format], Sup, Unic) when C >= $0, C =< $9 ->
    fread_field(Format, C - $0, Sup, Unic);
fread_field([$t | Format], Sup, _Unic) ->
    {Format, none, Sup, true};
fread_field(Format, Sup, Unic) ->
    {Format, none, Sup, Unic}.

fread_field([C | Format], F, Sup, Unic) when C >= $0, C =< $9 ->
    fread_field(Format, 10 * F + C - $0, Sup, Unic);
fread_field([$t | Format], F, Sup, _Unic) ->
    {Format, F, Sup, true};
fread_field(Format, F, Sup, Unic) ->
    {Format, F, Sup, Unic}.

fread1([$l | Format], _F, Sup, _U, Line, N, Res, _AllFormat) ->
    fread(Format, Line, N, fread_result(Sup, N, Res));
fread1(_Format, _F, _Sup, _U, [], N, Res, AllFormat) ->
    {more, AllFormat, N, Res};
fread1(_Format, _F, _Sup, _U, eof, 0, [], _AllFormat) ->
    eof;
fread1(_Format, _F, _Sup, _U, eof, _N, _Res, _AllFormat) ->
    fread_error(input);
fread1(Format, F, Sup, U, Line, N, Res, _AllFormat) ->
    fread1(Format, F, Sup, U, Line, N, Res).

fread1([$f | Format], none, Sup, false, Line0, N0, Res) ->
    {Line, N, Cs} = fread_float_cs(Line0, N0),
    fread_float(Cs, Sup, Format, Line, N, Res);
fread1([$f | Format], F, Sup, false, Line0, N, Res) ->
    {Line, Cs} = fread_chars(Line0, F, false),
    fread_float(Cs, Sup, Format, Line, N + F, Res);
fread1([$d | Format], none, Sup, false, Line0, N0, Res) ->
    {Line, N, Cs} = fread_int_cs(Line0, N0),
    fread_integer(Cs, 10, Sup, Format, Line, N, Res);
fread1([$d | Format], F, Sup, false, Line0, N, Res) ->
    {Line, Cs} = fread_chars(Line0, F, false),
    fread_integer(Cs, 10, Sup, Format, Line, N + F, Res);
fread1([$u | Format], none, Sup, false, Line0, N0, Res) ->
    {Line, N, Cs} = fread_digits(Line0, N0, 10, []),
    fread_unsigned(Cs, 10, Sup, Format, Line, N, Res);
fread1([$u | Format], F, Sup, false, Line0, N0, Res)
    when F >= 2, F =< 1 + $Z - $A + 10 ->
    {Line, N, Cs} = fread_digits(Line0, N0, F, []),
    fread_unsigned(Cs, F, Sup, Format, Line, N, Res);
fread1([$- | Format], _F, Sup, false, Line, N, Res) ->
    fread_sign_char(Sup, Format, Line, N, Res);
fread1([$# | Format], none, Sup, false, Line0, N0, Res) ->
    case
        catch
            begin
                {Line1, N1, B1} = fread_base(Line0, N0),
                B = abs(B1),
                true = (B >= 2) and (B =< 1 + $Z - $A + 10),
                {Line2, N2, Cs2} = fread_digits(Line1, N1, B, []),
                fread_based(lists:reverse(Cs2),
                            B1, Sup, Format, Line2, N2, Res)
            end
    of
        {'EXIT', _} ->
            fread_error(based);
        Other ->
            Other
    end;
fread1([$# | Format], F, Sup, false, Line0, N, Res) ->
    case
        catch
            begin
                {Line1, Cs1} = fread_chars(Line0, F, false),
                {Line2, _, B2} = fread_base(lists:reverse(Cs1), N),
                true = (B2 >= 2) and (B2 =< 1 + $Z - $A + 10),
                fread_based(Line2, B2, Sup, Format, Line1, N + F, Res)
            end
    of
        {'EXIT', _} ->
            fread_error(based);
        Other ->
            Other
    end;
fread1([$s | Format], none, Sup, U, Line0, N0, Res) ->
    {Line, N, Cs} = fread_string_cs(Line0, N0, U),
    fread_string(Cs, Sup, U, Format, Line, N, Res);
fread1([$s | Format], F, Sup, U, Line0, N, Res) ->
    {Line, Cs} = fread_chars(Line0, F, U),
    fread_string(Cs, Sup, U, Format, Line, N + F, Res);
fread1([$a | Format], none, Sup, U, Line0, N0, Res) ->
    {Line, N, Cs} = fread_string_cs(Line0, N0, U),
    fread_atom(Cs, Sup, Format, Line, N, Res);
fread1([$a | Format], F, Sup, false, Line0, N, Res) ->
    {Line, Cs} = fread_chars(Line0, F, false),
    fread_atom(Cs, Sup, Format, Line, N + F, Res);
fread1([$c | Format], none, Sup, U, Line0, N, Res) ->
    {Line, Cs} = fread_chars(Line0, 1, U),
    fread_chars(Cs, Sup, U, Format, Line, N + 1, Res);
fread1([$c | Format], F, Sup, U, Line0, N, Res) ->
    {Line, Cs} = fread_chars(Line0, F, U),
    fread_chars(Cs, Sup, U, Format, Line, N + F, Res);
fread1([$~ | Format], _F, _Sup, _U, [$~ | Line], N, Res) ->
    fread(Format, Line, N + 1, Res);
fread1(_Format, _F, _Sup, _U, _Line, _N, _Res) ->
    fread_error(format).

fread_float(Cs, Sup, Format, Line, N, Res) ->
    case catch list_to_float(fread_skip_white(lists:reverse(Cs))) of
        {'EXIT', _} ->
            fread_error(float);
        Float ->
            fread(Format, Line, N, fread_result(Sup, Float, Res))
    end.

fread_integer(Cs, Base, Sup, Format, Line, N, Res) ->
    case
        catch list_to_integer(fread_skip_white(lists:reverse(Cs)), Base)
    of
        {'EXIT', _} ->
            fread_error(integer);
        Integer ->
            fread(Format, Line, N, fread_result(Sup, Integer, Res))
    end.

fread_unsigned(Cs, Base, Sup, Format, Line, N, Res) ->
    case
        catch list_to_integer(fread_skip_white(lists:reverse(Cs)), Base)
    of
        {'EXIT', _} ->
            fread_error(unsigned);
        Integer ->
            fread(Format, Line, N, fread_result(Sup, Integer, Res))
    end.

fread_based(Cs0, B, Sup, Format, Line, N, Res) ->
    {Cs, Base} =
        if
            B < 0 ->
                {[$- | Cs0], -B};
            true ->
                {Cs0, B}
        end,
    I = list_to_integer(Cs, Base),
    fread(Format, Line, N, fread_result(Sup, I, Res)).

fread_sign_char(Sup, Format, [$- | Line], N, Res) ->
    fread(Format, Line, N + 1, fread_result(Sup, -1, Res));
fread_sign_char(Sup, Format, [$+ | Line], N, Res) ->
    fread(Format, Line, N + 1, fread_result(Sup, +1, Res));
fread_sign_char(Sup, Format, Line, N, Res) ->
    fread(Format, Line, N, fread_result(Sup, 1, Res)).

fread_string(error, _Sup, _U, _Format, _Line, _N, _Res) ->
    fread_error(string);
fread_string(Cs0, Sup, U, Format, Line, N, Res) ->
    Cs = fread_skip_white(lists:reverse(fread_skip_white(Cs0))),
    fread(Format, Line, N, fread_convert(fread_result(Sup, Cs, Res), U)).

fread_atom(error, _Sup, _Format, _Line, _N, _Res) ->
    fread_error(atom);
fread_atom(Cs0, Sup, Format, Line, N, Res) ->
    Cs = fread_skip_white(lists:reverse(fread_skip_white(Cs0))),
    fread(Format, Line, N, fread_result(Sup, list_to_atom(Cs), Res)).

fread_chars(error, _Sup, _U, _Format, _Line, _N, _Res) ->
    fread_error(character);
fread_chars(Cs, Sup, U, Format, Line, N, Res) ->
    fread(Format, Line, N,
          fread_convert(fread_result(Sup, lists:reverse(Cs), Res), U)).

fread_chars(Line, C, U) ->
    fread_chars(C, Line, U, []).

fread_chars(0, Line, _U, Cs) ->
    {Line, Cs};
fread_chars(_N, [$\n | Line], _U, _Cs) ->
    {[$\n | Line], error};
fread_chars(N, [C | Line], true, Cs) ->
    fread_chars(N - 1, Line, true, [C | Cs]);
fread_chars(N, [C | Line], false, Cs) when C >= 0, C =< 255 ->
    fread_chars(N - 1, Line, false, [C | Cs]);
fread_chars(_N, L, _U, _Cs) ->
    {L, error}.

fread_int_cs(Line0, N0) ->
    {Line1, N1} = fread_skip_white(Line0, N0),
    {Line, N, Cs} = fread_sign(Line1, N1, []),
    fread_digits(Line, N, Cs).

fread_float_cs(Line0, N0) ->
    {Line1, N1} = fread_skip_white(Line0, N0),
    {Line2, N2, Cs2} = fread_sign(Line1, N1, []),
    {Line, N, Cs} = fread_digits(Line2, N2, Cs2),
    fread_float_cs_1(Line, N, Cs).

fread_float_cs_1([$. | Line0], N0, Cs0) ->
    {Line, N, Cs} = fread_digits(Line0, N0 + 1, [$. | Cs0]),
    fread_float_cs_2(Line, N, Cs);
fread_float_cs_1(Line, N, Cs) ->
    {Line, N, Cs}.

fread_float_cs_2([$e | Line0], N0, Cs0) ->
    {Line, N, Cs} = fread_sign(Line0, N0 + 1, [$e | Cs0]),
    fread_digits(Line, N, Cs);
fread_float_cs_2([$E | Line0], N0, Cs0) ->
    {Line, N, Cs} = fread_sign(Line0, N0 + 1, [$E | Cs0]),
    fread_digits(Line, N, Cs);
fread_float_cs_2(Line, N, Cs) ->
    {Line, N, Cs}.

fread_string_cs(Line0, N0, false) ->
    {Line, N} = fread_skip_white(Line0, N0),
    fread_skip_latin1_nonwhite(Line, N, []);
fread_string_cs(Line0, N0, true) ->
    {Line, N} = fread_skip_white(Line0, N0),
    fread_skip_nonwhite(Line, N, []).

fread_skip_white([C | Line])
    when
        C =:= $\s
        orelse
        C =:= $\t
        orelse
        C =:= $\r
        orelse
        C =:= $\n ->
    fread_skip_white(Line);
fread_skip_white(Line) ->
    Line.

fread_skip_white([C | Line], N)
    when
        C =:= $\s
        orelse
        C =:= $\t
        orelse
        C =:= $\r
        orelse
        C =:= $\n ->
    fread_skip_white(Line, N + 1);
fread_skip_white(Line, N) ->
    {Line, N}.

fread_skip_latin1_nonwhite([C | Line], N, Cs)
    when
        C =:= $\s
        orelse
        C =:= $\t
        orelse
        C =:= $\r
        orelse
        C =:= $\n ->
    {[C | Line], N, Cs};
fread_skip_latin1_nonwhite([C | Line], N, []) when C > 255 ->
    {[C | Line], N, error};
fread_skip_latin1_nonwhite([C | Line], N, Cs) when C > 255 ->
    {[C | Line], N, Cs};
fread_skip_latin1_nonwhite([C | Line], N, Cs) ->
    fread_skip_latin1_nonwhite(Line, N + 1, [C | Cs]);
fread_skip_latin1_nonwhite([], N, Cs) ->
    {[], N, Cs}.

fread_skip_nonwhite([C | Line], N, Cs)
    when
        C =:= $\s
        orelse
        C =:= $\t
        orelse
        C =:= $\r
        orelse
        C =:= $\n ->
    {[C | Line], N, Cs};
fread_skip_nonwhite([C | Line], N, Cs) ->
    fread_skip_nonwhite(Line, N + 1, [C | Cs]);
fread_skip_nonwhite([], N, Cs) ->
    {[], N, Cs}.

fread_sign([$+ | Line], N, Cs) ->
    {Line, N + 1, [$+ | Cs]};
fread_sign([$- | Line], N, Cs) ->
    {Line, N + 1, [$- | Cs]};
fread_sign(Line, N, Cs) ->
    {Line, N, Cs}.

fread_base(Line0, N0) ->
    {[$# | Line1], N1, Cs1} = fread_int_cs(Line0, N0),
    B = list_to_integer(lists:reverse(Cs1)),
    {Line1, N1 + 1, B}.

fread_digits([C | Line], N, Cs) when C >= $0, C =< $9 ->
    fread_digits(Line, N + 1, [C | Cs]);
fread_digits(Line, N, Cs) ->
    {Line, N, Cs}.

fread_digits([C | Line], N, Base, Cs) when C >= $0, C =< $9 ->
    fread_digits(Line, N + 1, Base, [C | Cs]);
fread_digits([C | Line], N, Base, Cs) when C >= $A, C < $A + Base - 10 ->
    fread_digits(Line, N + 1, Base, [C | Cs]);
fread_digits([C | Line], N, Base, Cs) when C >= $a, C < $a + Base - 10 ->
    fread_digits(Line, N + 1, Base, [C | Cs]);
fread_digits(Line, N, _Base, Cs) ->
    {Line, N, Cs}.

fread_result(true, _V, Res) ->
    Res;
fread_result(false, V, Res) ->
    [V | Res].

fread_convert(Any, _) ->
    Any.

fread_error(In) ->
    {error, {fread, In}}.



