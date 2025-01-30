-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.2/src/edlin.erl", 1).

-module(edlin).

-compile(nowarn_deprecated_catch).

-export([init/0,init/1,start/1,start/2,edit_line/2]).

-export([erase_line/0,erase_inp/1,redraw_line/1]).

-export([length_before/1,length_after/1,prompt/1]).

-export([current_line/1,current_chars/1]).

-export([edit_line1/2]).

-export([keymap/0]).

-import(lists, [reverse/1,reverse/2]).

-export([over_word/3]).

-type keymap() :: #{atom() => #{string() | default => atom()}}.

init() ->
    put(key_map, edlin_key:get_key_map()),
    put(kill_buffer, []).

init(Pid) ->
    init(),
    CopiedKillBuf =
        case process_info(Pid, dictionary) of
            {dictionary, Dict} ->
                case proplists:get_value(kill_buffer, Dict) of
                    undefined ->
                        [];
                    Buf ->
                        Buf
                end;
            undefined ->
                []
        end,
    put(kill_buffer, CopiedKillBuf).

start(Pbs) ->
    start(Pbs, {normal, none}).

start(Pbs, {_, {_, []}, []} = Cont) ->
    {more_chars,
     {line, Pbs, Cont, {normal, none}},
     [{insert_chars, unicode, multi_line_prompt(Pbs)}]};
start(Pbs, {_, {_, _}, _} = Cont) ->
    {more_chars,
     {line, Pbs, Cont, {normal, none}},
     redraw(Pbs, Cont, [])};
start(Pbs, EditState) ->
    {more_chars,
     {line, Pbs, {[], {[], []}, []}, EditState},
     [new_prompt, {insert_chars, unicode, Pbs}]}.

-spec keymap() -> keymap().

keymap() ->
    get(key_map).

-type continuation() :: {line, _, _, _} | {_, _, _}.

-spec edit_line(unicode:chardata() | eof, continuation()) ->
                   {done,
                    continuation(),
                    Rest :: unicode:chardata(),
                    [user_drv:request()]} |
                   {open_editor | format_expression | history_up |
                    history_down | search,
                    Cs :: unicode:chardata(),
                    continuation(),
                    [user_drv:request()]} |
                   {help | help_full | expand | expand_full,
                    Before :: unicode:chardata(),
                    Cs :: unicode:chardata(),
                    continuation(),
                    [user_drv:request()]} |
                   {search_found | search_quit | search_cancel,
                    Cs :: unicode:chardata(),
                    [user_drv:request()]} |
                   {blink | more_chars,
                    continuation(),
                    [user_drv:request()]}.

edit_line(Cs, {line, P, L, {blink, N_Rs}}) ->
    edit(Cs, P, L, {normal, none}, N_Rs);
edit_line(Cs, {line, P, L, M}) ->
    edit(Cs, P, L, M, []).

edit_line1(Cs, {line, P, L, {blink, N_Rs}}) ->
    edit(Cs, P, L, {normal, none}, N_Rs);
edit_line1(Cs, {line, P, {B, {[], []}, A}, {normal, none}}) ->
    [CurrentLine | Lines] =
        [ 
         string:to_graphemes(Line) ||
             Line <- lists:reverse(string:split(Cs, "\n", all))
        ],
    Cont = {Lines ++ B, {lists:reverse(CurrentLine), []}, A},
    Rs = redraw(P, Cont, []),
    {more_chars, {line, P, Cont, {normal, none}}, [delete_line | Rs]};
edit_line1(Cs, {line, P, L, M}) ->
    edit(Cs, P, L, M, []).

edit([C | Cs], P, Line, {blink, _}, [_ | Rs]) ->
    edit([C | Cs], P, Line, {normal, none}, Rs);
edit([], P, L, {blink, N}, Rs) ->
    {blink, {line, P, L, {blink, N}}, lists:reverse(Rs)};
edit([], P, L, EditState, Rs) ->
    {more_chars, {line, P, L, EditState}, lists:reverse(Rs)};
edit(eof, _, {_, {Bef, Aft0}, LA} = L, _, Rs) ->
    Aft1 =
        case LA of
            [Last | _] ->
                Last;
            _ ->
                Aft0
        end,
    {done, L, [],
     lists:reverse(Rs,
                   [{move_combo, -cp_len(Bef), length(LA), cp_len(Aft1)}])};
edit(Buf, P,
     {LB, {Bef, Aft}, LA} = MultiLine,
     {ShellMode1, EscapePrefix},
     Rs0) ->
    {ShellMode, NextMode} =
        case ShellMode1 of
            {_, _} = M ->
                M;
            Mode ->
                {Mode, Mode}
        end,
    case edlin_key:get_valid_escape_key(Buf, EscapePrefix) of
        {escape_prefix, EscapePrefix1} ->
            case ShellMode of
                tab_expand ->
                    edit(Buf, P, MultiLine, {normal, none}, Rs0);
                _ ->
                    edit([], P, MultiLine,
                         {NextMode, EscapePrefix1},
                         Rs0)
            end;
        {invalid, _I, Rest} ->
            edit(Rest, P, MultiLine, {NextMode, none}, Rs0);
        {insert, C1, Cs2} ->
            Op =
                case ShellMode of
                    normal when C1 =:= $) ->
                        {blink, $), $(};
                    normal when C1 =:= $] ->
                        {blink, $], $[};
                    normal when C1 =:= $} ->
                        {blink, $}, ${};
                    normal ->
                        {insert, C1};
                    search when $\s =< C1 ->
                        {insert_search, C1};
                    search ->
                        search_quit;
                    tab_expand ->
                        tab_expand_quit;
                    help ->
                        tab_expand_quit
                end,
            case Op of
                tab_expand_quit ->
                    edit(Buf, P, MultiLine, {normal, none}, Rs0);
                search_quit ->
                    {search_quit, Cs2,
                     {line, P, MultiLine, {normal, none}},
                     lists:reverse(Rs0)};
                _ ->
                    case do_op(Op, MultiLine, Rs0) of
                        {blink, N, MultiLine1, Rs} ->
                            edit(Cs2, P, MultiLine1, {blink, N}, Rs);
                        {redraw,
                         {_LB1, {_Bef1, _Aft1}, _LA1} = MultiLine1,
                         Rs} ->
                            edit(Cs2, P, MultiLine1,
                                 {NextMode, none},
                                 redraw(P, MultiLine1, Rs));
                        {{_LB1, {_Bef1, _Aft1}, _LA1} = MultiLine1, Rs} ->
                            edit(Cs2, P, MultiLine1,
                                 {NextMode, none},
                                 Rs)
                    end
            end;
        {key, Key, Cs} ->
            KeyMap = get(key_map),
            Value =
                case maps:find(Key, maps:get(ShellMode, KeyMap)) of
                    error ->
                        case
                            maps:find(default,
                                      maps:get(ShellMode, KeyMap))
                        of
                            error ->
                                none;
                            {ok, Value0} ->
                                Value0
                        end;
                    {ok, Value0} ->
                        Value0
                end,
            Cont = {line, P, MultiLine, {NextMode, none}},
            case Value of
                {mode, Mode1} ->
                    edit(Buf, P, MultiLine,
                         {{Mode1, ShellMode}, none},
                         Rs0);
                none ->
                    edit(Cs, P, MultiLine, {NextMode, none}, Rs0);
                search ->
                    {search, Cs, Cont, lists:reverse(Rs0)};
                search_found ->
                    {search_found, Cs, Cont, lists:reverse(Rs0)};
                search_cancel ->
                    {search_cancel, Cs, Cont, lists:reverse(Rs0)};
                search_quit ->
                    {search_quit, Cs, Cont, lists:reverse(Rs0)};
                format_expression ->
                    {format_expression, Cs, Cont, lists:reverse(Rs0)};
                open_editor ->
                    {open_editor, Cs, Cont, lists:reverse(Rs0)};
                history_up ->
                    {history_up, Cs, Cont, lists:reverse(Rs0)};
                history_down ->
                    {history_down, Cs, Cont, lists:reverse(Rs0)};
                new_line ->
                    MultiLine1 =
                        {[lists:reverse(Bef) | LB], {[], Aft}, LA},
                    edit(Cs, P, MultiLine1,
                         {NextMode, none},
                         lists:reverse(redraw(P, MultiLine1, Rs0)));
                new_line_finish ->
                    {{LB1, {Bef1, []}, []}, Rs1} =
                        do_op(end_of_expression, MultiLine, Rs0),
                    {done,
                     {[lists:reverse(Bef1) | LB1], {[], []}, []},
                     Cs,
                     lists:reverse(Rs1, [{insert_chars, unicode, "\n"}])};
                redraw_line ->
                    Rs1 = erase_line(Rs0),
                    Rs = redraw(P, MultiLine, Rs1),
                    edit(Cs, P, MultiLine, {NextMode, none}, Rs);
                clear ->
                    Rs = redraw(P, MultiLine, [clear | Rs0]),
                    edit(Cs, P, MultiLine, {NextMode, none}, Rs);
                help ->
                    {help,
                     chars_before(MultiLine),
                     Cs,
                     {line, P, MultiLine, {help, none}},
                     lists:reverse(Rs0)};
                help_full ->
                    {help_full,
                     chars_before(MultiLine),
                     Cs,
                     {line, P, MultiLine, {help, none}},
                     lists:reverse(Rs0)};
                tab_expand ->
                    {expand,
                     chars_before(MultiLine),
                     Cs,
                     {line, P, MultiLine, {tab_expand, none}},
                     lists:reverse(Rs0)};
                tab_expand_full ->
                    {expand_full,
                     chars_before(MultiLine),
                     Cs,
                     {line, P, MultiLine, {tab_expand, none}},
                     lists:reverse(Rs0)};
                tab_expand_quit ->
                    edit(Buf, P, MultiLine,
                         {normal, none},
                         [{move_rel, 0} | Rs0]);
                Op ->
                    Op1 =
                        case ShellMode of
                            search ->
                                {search, Op};
                            _ ->
                                Op
                        end,
                    case do_op(Op1, MultiLine, Rs0) of
                        {blink, N, MultiLine1, Rs} ->
                            edit(Cs, P, MultiLine1, {blink, N}, Rs);
                        {redraw, MultiLine1, Rs} ->
                            edit(Cs, P, MultiLine1,
                                 {NextMode, none},
                                 redraw(P, MultiLine1, Rs));
                        {MultiLine1, Rs} ->
                            edit(Cs, P, MultiLine1,
                                 {NextMode, none},
                                 Rs)
                    end
            end
    end.

do_op({insert, C}, {LB, {[], []}, LA}, Rs) ->
    {{LB, {[C], []}, LA}, [{insert_chars, unicode, [C]} | Rs]};
do_op({insert, C}, {LB, {[Bef | Bef0], []}, LA}, Rs) ->
    case string:to_graphemes([Bef, C]) of
        [GC] ->
            {{LB, {[GC | Bef0], []}, LA},
             [{insert_chars, unicode, [C]} | Rs]};
        _ ->
            {{LB, {[C, Bef | Bef0], []}, LA},
             [{insert_chars, unicode, [C]} | Rs]}
    end;
do_op({insert, C}, {LB, {[], Aft}, LA}, Rs) ->
    {{LB, {[C], Aft}, LA}, [{insert_chars, unicode, [C]} | Rs]};
do_op({insert, C}, {LB, {[Bef | Bef0], Aft}, LA}, Rs) ->
    case string:to_graphemes([Bef, C]) of
        [GC] ->
            {{LB, {[GC | Bef0], Aft}, LA},
             [{insert_chars, unicode, [C]} | Rs]};
        _ ->
            {{LB, {[C, Bef | Bef0], Aft}, LA},
             [{insert_chars, unicode, [C]} | Rs]}
    end;
do_op(move_expand_up, Cont, Rs) ->
    {Cont, [{move_expand, -1} | Rs]};
do_op(move_expand_down, Cont, Rs) ->
    {Cont, [{move_expand, 1} | Rs]};
do_op({search, move_expand_up}, Cont, Rs) ->
    {Cont, [{move_expand, -1} | Rs]};
do_op({search, move_expand_down}, Cont, Rs) ->
    {Cont, [{move_expand, 1} | Rs]};
do_op(scroll_expand_up, Cont, Rs) ->
    {Cont, [{move_expand, -5} | Rs]};
do_op(scroll_expand_down, Cont, Rs) ->
    {Cont, [{move_expand, 5} | Rs]};
do_op({search, scroll_expand_up}, Cont, Rs) ->
    {Cont, [{move_expand, -5} | Rs]};
do_op({search, scroll_expand_down}, Cont, Rs) ->
    {Cont, [{move_expand, 5} | Rs]};
do_op({insert_search, C}, {LB, {Bef, []}, LA}, Rs) ->
    {{LB, {[C | Bef], []}, LA},
     [{insert_chars, unicode, [C]}, delete_after_cursor | Rs]};
do_op({insert_search, C}, {LB, {Bef, _Aft}, LA}, Rs) ->
    {{LB, {[C | Bef], []}, LA},
     [{insert_chars, unicode, [C]}, delete_after_cursor | Rs],
     search};
do_op({search, backward_delete_char}, {LB, {[_ | Bef], Aft}, LA}, Rs) ->
    Offset = cp_len(Aft) + 1,
    {{LB, {Bef, Aft}, LA},
     [redraw,
      {insert_chars, unicode, Aft},
      {delete_chars, -Offset} |
      Rs]};
do_op({search, backward_delete_char}, {LB, {[], Aft}, LA}, Rs) ->
    {redraw,
     {LB, {[], Aft}, LA},
     [{insert_chars, unicode, Aft}, {delete_chars, -cp_len(Aft)} | Rs]};
do_op({search, skip_up}, {_, {Bef, Aft}, _}, Rs) ->
    Offset = cp_len(Aft),
    {{[], {[$\022 | Bef], Aft}, []},
     [{insert_chars, unicode, Aft}, {delete_chars, -Offset} | Rs]};
do_op({search, skip_down}, {_, {Bef, Aft}, _LA}, Rs) ->
    Offset = cp_len(Aft),
    {{[], {[$\023 | Bef], Aft}, []},
     [{insert_chars, unicode, Aft}, {delete_chars, -Offset} | Rs]};
do_op({blink, C, M}, {_, {[$$, $$ | _], _}, _} = MultiLine, Rs) ->
    blink(over_paren(chars_before(MultiLine), C, M), C, MultiLine, Rs);
do_op({blink, C, _}, {_, {[$$ | _], _}, _} = MultiLine, Rs) ->
    do_op({insert, C}, MultiLine, Rs);
do_op({blink, C, M}, MultiLine, Rs) ->
    blink(over_paren(chars_before(MultiLine), C, M), C, MultiLine, Rs);
do_op(auto_blink, MultiLine, Rs) ->
    blink(over_paren_auto(chars_before(MultiLine)), MultiLine, Rs);
do_op(forward_delete_char, {LB, {Bef, []}, [NextLine | LA]}, Rs) ->
    NewLine = {LB, {Bef, NextLine}, LA},
    {redraw, NewLine, Rs};
do_op(forward_delete_char, {LB, {Bef, [GC | Aft]}, LA}, Rs) ->
    {{LB, {Bef, Aft}, LA}, [{delete_chars, gc_len(GC)} | Rs]};
do_op(backward_delete_char, {[PrevLine | LB], {[], Aft}, LA}, Rs) ->
    NewLine = {LB, {lists:reverse(PrevLine), Aft}, LA},
    {redraw, NewLine, Rs};
do_op(backward_delete_char, {LB, {[GC | Bef], Aft}, LA}, Rs) ->
    {redraw, {LB, {Bef, Aft}, LA}, [{delete_chars, -gc_len(GC)} | Rs]};
do_op(forward_delete_word, {LB, {Bef, []}, [NextLine | LA]}, Rs) ->
    NewLine = {LB, {Bef, NextLine}, LA},
    {redraw, NewLine, Rs};
do_op(forward_delete_word, {LB, {Bef, Aft0}, LA}, Rs) ->
    {Aft1, Kill0, N0} = over_non_word(Aft0, [], 0),
    {Aft, Kill, N} = over_word(Aft1, Kill0, N0),
    put(kill_buffer, lists:reverse(Kill)),
    {redraw, {LB, {Bef, Aft}, LA}, [{delete_chars, N} | Rs]};
do_op(backward_delete_word, {[PrevLine | LB], {[], Aft}, LA}, Rs) ->
    NewLine = {LB, {lists:reverse(PrevLine), Aft}, LA},
    {redraw, NewLine, Rs};
do_op(backward_delete_word, {LB, {Bef0, Aft}, LA}, Rs) ->
    {Bef1, Kill0, N0} = over_non_word(Bef0, [], 0),
    {Bef, Kill, N} = over_word(Bef1, Kill0, N0),
    put(kill_buffer, Kill),
    {{LB, {Bef, Aft}, LA}, [{delete_chars, -N} | Rs]};
do_op(transpose_char, {LB, {[C1, C2 | Bef], []}, LA}, Rs) ->
    Len = gc_len(C1) + gc_len(C2),
    {{LB, {[C2, C1 | Bef], []}, LA},
     [{insert_chars_over, unicode, [C1, C2]}, {move_rel, -Len} | Rs]};
do_op(transpose_char, {LB, {[C2 | Bef], [C1 | Aft]}, LA}, Rs) ->
    Len = gc_len(C2),
    {{LB, {[C2, C1 | Bef], Aft}, LA},
     [{insert_chars_over, unicode, [C1, C2]}, {move_rel, -Len} | Rs]};
do_op(transpose_word, {LB, {Bef0, Aft0}, LA}, Rs) ->
    {Aft1, Word2A, N0} = over_word(Aft0, [], 0),
    {Bef, TransposedWords, Aft, N} =
        case N0 of
            0 ->
                {Aft2, NonWord, N1} = over_non_word(Aft1, [], 0),
                case N1 of
                    0 ->
                        {Bef1, Word2B, B0} = over_word(Bef0, [], 0),
                        {Bef2, NonWordB, B1} =
                            over_non_word(Bef1, [], B0),
                        {Bef3, Word1, B2} = over_word(Bef2, [], B1),
                        {Bef3, Word2B ++ NonWordB ++ Word1, Aft0, B2};
                    _ ->
                        {Aft3, Word2, N2} = over_word(Aft2, [], N1),
                        case N2 of
                            0 ->
                                {Bef1, Word2B, B0} =
                                    over_word(Bef0, [], 0),
                                {Bef2, NonWordB, B1} =
                                    over_non_word(Bef1, [], B0),
                                {Bef3, Word1, B2} =
                                    over_word(Bef2, [], B1),
                                {Bef3,
                                 Word2B ++ NonWordB ++ Word1,
                                 Aft0, B2};
                            _ ->
                                {Bef1, NonWord2, B0} =
                                    over_non_word(Bef0, [], 0),
                                {Bef2, Word1, B1} =
                                    over_word(Bef1, [], B0),
                                {Bef2,
                                 lists:reverse(Word2)
                                 ++
                                 NonWord2
                                 ++
                                 lists:reverse(NonWord) ++ Word1,
                                 Aft3, B1}
                        end
                end;
            _ ->
                {Bef1, Word2B, B0} = over_word(Bef0, [], 0),
                {Bef2, NonWord, B1} = over_non_word(Bef1, [], B0),
                {Bef3, Word1, B2} = over_word(Bef2, [], B1),
                {Bef3,
                 Word2B ++ lists:reverse(Word2A) ++ NonWord ++ Word1,
                 Aft1, B2}
        end,
    {redraw,
     {LB, {lists:reverse(TransposedWords) ++ Bef, Aft}, LA},
     [{insert_chars_over, unicode, TransposedWords},
      {move_rel, -N} |
      Rs]};
do_op(kill_word, {LB, {Bef, Aft0}, LA}, Rs) ->
    {Aft1, Kill0, N0} = over_non_word(Aft0, [], 0),
    {Aft, Kill, N} = over_word(Aft1, Kill0, N0),
    put(kill_buffer, lists:reverse(Kill)),
    {redraw, {LB, {Bef, Aft}, LA}, [{delete_chars, N} | Rs]};
do_op(backward_kill_word, {LB, {Bef0, Aft}, LA}, Rs) ->
    {Bef1, Kill0, N0} = over_non_word(Bef0, [], 0),
    {Bef, Kill, N} = over_word(Bef1, Kill0, N0),
    put(kill_buffer, Kill),
    {redraw, {LB, {Bef, Aft}, LA}, [{delete_chars, -N} | Rs]};
do_op(kill_line, {LB, {Bef, Aft}, LA}, Rs) ->
    put(kill_buffer, Aft),
    {redraw, {LB, {Bef, []}, LA}, [{delete_chars, cp_len(Aft)} | Rs]};
do_op(clear_line, _, Rs) ->
    {redraw, {[], {[], []}, []}, Rs};
do_op(yank, {LB, {Bef, []}, LA}, Rs) ->
    Kill = get(kill_buffer),
    {{LB, {lists:reverse(Kill, Bef), []}, LA},
     [{insert_chars, unicode, Kill} | Rs]};
do_op(yank, {LB, {Bef, Aft}, LA}, Rs) ->
    Kill = get(kill_buffer),
    {redraw,
     {LB, {lists:reverse(Kill, Bef), Aft}, LA},
     [{insert_chars, unicode, Kill} | Rs]};
do_op(forward_line, {_, _, []} = MultiLine, Rs) ->
    {MultiLine, Rs};
do_op(forward_line, {LB, {Bef, Aft}, [AL | LA]}, Rs) ->
    CL = lists:reverse(Bef, Aft),
    CursorPos = min(length(Bef), length(AL)),
    {Bef1, Aft1} = lists:split(CursorPos, AL),
    {{[CL | LB], {lists:reverse(Bef1), Aft1}, LA},
     [{move_combo, -cp_len(Bef), 1, cp_len(Bef1)} | Rs]};
do_op(backward_line, {[], _, _} = MultiLine, Rs) ->
    {MultiLine, Rs};
do_op(backward_line, {[BL | LB], {Bef, Aft}, LA}, Rs) ->
    CL = lists:reverse(Bef, Aft),
    CursorPos = min(length(Bef), length(BL)),
    {Bef1, Aft1} = lists:split(CursorPos, BL),
    {{LB, {lists:reverse(Bef1), Aft1}, [CL | LA]},
     [{move_combo, -cp_len(Bef), -1, cp_len(Bef1)} | Rs]};
do_op(forward_char, {LB, {Bef, []}, [AL | LA]}, Rs) ->
    {{[lists:reverse(Bef) | LB], {[], string:to_graphemes(AL)}, LA},
     [{move_combo, -cp_len(Bef), 1, 0} | Rs]};
do_op(forward_char, {LB, {Bef, [C | Aft]}, LA}, Rs) ->
    {{LB, {[C | Bef], Aft}, LA}, [{move_rel, gc_len(C)} | Rs]};
do_op(backward_char, {[BL | LB], {[], Aft}, LA}, Rs) ->
    {{LB, {lists:reverse(string:to_graphemes(BL)), []}, [Aft | LA]},
     [{move_combo, 0, -1, cp_len(BL)} | Rs]};
do_op(backward_char, {LB, {[C | Bef], Aft}, LA}, Rs) ->
    {{LB, {Bef, [C | Aft]}, LA}, [{move_rel, -gc_len(C)} | Rs]};
do_op(forward_word, {LB, {Bef0, []}, [NextLine | LA]}, Rs) ->
    {{[lists:reverse(Bef0) | LB], {[], NextLine}, LA},
     [{move_combo, -cp_len(Bef0), 1, 0} | Rs]};
do_op(forward_word, {LB, {Bef0, Aft0}, LA}, Rs) ->
    {Aft1, Bef1, N0} = over_non_word(Aft0, Bef0, 0),
    {Aft, Bef, N} = over_word(Aft1, Bef1, N0),
    {{LB, {Bef, Aft}, LA}, [{move_rel, N} | Rs]};
do_op(backward_word, {[PrevLine | LB], {[], Aft0}, LA}, Rs) ->
    {{LB, {lists:reverse(PrevLine), []}, [Aft0 | LA]},
     [{move_combo, 0, -1, cp_len(PrevLine)} | Rs]};
do_op(backward_word, {LB, {Bef0, Aft0}, LA}, Rs) ->
    {Bef1, Aft1, N0} = over_non_word(Bef0, Aft0, 0),
    {Bef, Aft, N} = over_word(Bef1, Aft1, N0),
    {{LB, {Bef, Aft}, LA}, [{move_rel, -N} | Rs]};
do_op(beginning_of_expression, {[], {[], Aft}, LA}, Rs) ->
    {{[], {[], Aft}, LA}, Rs};
do_op(beginning_of_expression, {LB, {Bef, Aft}, LA}, Rs) ->
    [First | Rest] = lists:reverse(LB) ++ [lists:reverse(Bef, Aft)],
    {{[], {[], First}, Rest ++ LA},
     [{move_combo, -cp_len(Bef), -length(LB), 0} | Rs]};
do_op(end_of_expression, {LB, {Bef, []}, []}, Rs) ->
    {{LB, {Bef, []}, []}, Rs};
do_op(end_of_expression, {LB, {Bef, Aft}, LA}, Rs) ->
    [Last | Rest] = lists:reverse(LA) ++ [lists:reverse(Bef, Aft)],
    {{Rest ++ LB, {lists:reverse(Last), []}, []},
     [{move_combo, -cp_len(Bef), length(LA), cp_len(Last)} | Rs]};
do_op(beginning_of_line, {LB, {[_ | _] = Bef, Aft}, LA}, Rs) ->
    {{LB, {[], lists:reverse(Bef, Aft)}, LA},
     [{move_rel, -cp_len(Bef)} | Rs]};
do_op(beginning_of_line, {LB, {[], Aft}, LA}, Rs) ->
    {{LB, {[], Aft}, LA}, Rs};
do_op(end_of_line, {LB, {Bef, [_ | _] = Aft}, LA}, Rs) ->
    {{LB, {lists:reverse(Aft, Bef), []}, LA},
     [{move_rel, cp_len(Aft)} | Rs]};
do_op(end_of_line, {LB, {Bef, []}, LA}, Rs) ->
    {{LB, {Bef, []}, LA}, Rs};
do_op(backward_kill_line, {LB, {Bef, Aft}, LA}, Rs) ->
    put(kill_buffer, lists:reverse(Bef)),
    {{LB, {[], Aft}, LA}, [{delete_chars, -cp_len(Bef)} | Rs]};
do_op(beep, {LB, {Bef, Aft}, LA}, Rs) ->
    {{LB, {Bef, Aft}, LA}, [beep | Rs]};
do_op(_, {LB, {Bef, Aft}, LA}, Rs) ->
    {{LB, {Bef, Aft}, LA}, [beep | Rs]}.

blink(beep, C, {LB, {Bef, Aft}, LA}, Rs) ->
    {{LB, {[C | Bef], Aft}, LA},
     [beep, {insert_chars, unicode, [C]} | Rs]};
blink({N, R}, C, MultiLine, Rs) ->
    blink({N, R, C}, MultiLine, Rs).

blink(beep, {LB, {Bef, Aft}, LA}, Rs) ->
    {{LB, {Bef, Aft}, LA}, [beep | Rs]};
blink({N, 0, Paren}, {LB, {Bef, Aft}, LA}, Rs) ->
    MoveBackToParen = {move_rel, -N - 1},
    MoveForwardToParen = {move_rel, N + 1},
    {blink,
     [MoveForwardToParen],
     {LB, {[Paren | Bef], Aft}, LA},
     [MoveBackToParen, {insert_chars, unicode, [Paren]} | Rs]};
blink({N, R, Paren}, {LB, {Bef, Aft}, LA}, Rs) ->
    LengthToClosingParen = cp_len([Paren | Bef]),
    LengthOpeningParen = cp_len(lists:nth(R, LB)) - N - 1,
    MoveToOpeningParen =
        {move_combo, -LengthToClosingParen, -R, LengthOpeningParen},
    MoveToClosingParen =
        {move_combo, -LengthOpeningParen, R, LengthToClosingParen + 1},
    {blink,
     [MoveToClosingParen],
     {LB, {[Paren | Bef], Aft}, LA},
     [MoveToOpeningParen, {insert_chars, unicode, [Paren]} | Rs]}.

over_word(Cs, Stack, N) ->
    L = length([ 
                1 ||
                    $' <- Cs
               ]),
    case L rem 2 of
        0 ->
            over_word1(Cs, Stack, N);
        1 ->
            until_quote(Cs, Stack, N)
    end.

until_quote([$' | Cs], Stack, N) ->
    {Cs, [$' | Stack], N + 1};
until_quote([C | Cs], Stack, N) ->
    until_quote(Cs, [C | Stack], N + gc_len(C)).

over_word1([$' = C | Cs], Stack, N) ->
    until_quote(Cs, [C | Stack], N + 1);
over_word1(Cs, Stack, N) ->
    over_word2(Cs, Stack, N).

over_word2([C | Cs], Stack, N) ->
    case word_char(C) of
        true ->
            over_word2(Cs, [C | Stack], N + gc_len(C));
        false ->
            {[C | Cs], Stack, N}
    end;
over_word2([], Stack, N) when is_integer(N) ->
    {[], Stack, N}.

over_non_word([C | Cs], Stack, N) ->
    case word_char(C) of
        true ->
            {[C | Cs], Stack, N};
        false ->
            over_non_word(Cs, [C | Stack], N + gc_len(C))
    end;
over_non_word([], Stack, N) ->
    {[], Stack, N}.

word_char(C) when C >= $A, C =< $Z ->
    true;
word_char(C) when C >= $À, C =< $Þ, C =/= $× ->
    true;
word_char(C) when C >= $a, C =< $z ->
    true;
word_char(C) when C >= $ß, C =< $ÿ, C =/= $÷ ->
    true;
word_char(C) when C >= $0, C =< $9 ->
    true;
word_char(C) when C =:= $_ ->
    true;
word_char([_ | _]) ->
    true;
word_char(_) ->
    false.

over_paren(Chars, Paren, Match) ->
    over_paren(Chars, Paren, Match, 1, 1, 0, []).

over_paren([C, $$, $$ | Cs], Paren, Match, D, N, R, L) ->
    over_paren([C | Cs], Paren, Match, D, N + 2, R, L);
over_paren([GC, $$ | Cs], Paren, Match, D, N, R, L) ->
    over_paren(Cs, Paren, Match, D, N + 1 + gc_len(GC), R, L);
over_paren([$\n | Cs], Paren, Match, D, _N, R, L) ->
    over_paren(Cs, Paren, Match, D, 0, R + 1, L);
over_paren([Match | _], _Paren, Match, 1, N, R, _) ->
    {N, R};
over_paren([Match | Cs], Paren, Match, D, N, R, [Match | L]) ->
    over_paren(Cs, Paren, Match, D - 1, N + 1, R, L);
over_paren([Paren | Cs], Paren, Match, D, N, R, L) ->
    over_paren(Cs, Paren, Match, D + 1, N + 1, R, [Match | L]);
over_paren([$) | Cs], Paren, Match, D, N, R, L) ->
    over_paren(Cs, Paren, Match, D, N + 1, R, [$( | L]);
over_paren([$] | Cs], Paren, Match, D, N, R, L) ->
    over_paren(Cs, Paren, Match, D, N + 1, R, [$[ | L]);
over_paren([$} | Cs], Paren, Match, D, N, R, L) ->
    over_paren(Cs, Paren, Match, D, N + 1, R, [${ | L]);
over_paren([$( | Cs], Paren, Match, D, N, R, [$( | L]) ->
    over_paren(Cs, Paren, Match, D, N + 1, R, L);
over_paren([$[ | Cs], Paren, Match, D, N, R, [$[ | L]) ->
    over_paren(Cs, Paren, Match, D, N + 1, R, L);
over_paren([${ | Cs], Paren, Match, D, N, R, [${ | L]) ->
    over_paren(Cs, Paren, Match, D, N + 1, R, L);
over_paren([$( | _], _, _, _, _, _, _) ->
    beep;
over_paren([$[ | _], _, _, _, _, _, _) ->
    beep;
over_paren([${ | _], _, _, _, _, _, _) ->
    beep;
over_paren([GC | Cs], Paren, Match, D, N, R, L) ->
    over_paren(Cs, Paren, Match, D, N + gc_len(GC), R, L);
over_paren([], _, _, _, _, _, _) ->
    beep.

over_paren_auto(Chars) ->
    over_paren_auto(Chars, 1, 1, 0, []).

over_paren_auto([C, $$, $$ | Cs], D, N, R, L) ->
    over_paren_auto([C | Cs], D, N + 2, R, L);
over_paren_auto([GC, $$ | Cs], D, N, R, L) ->
    over_paren_auto(Cs, D, N + 1 + gc_len(GC), R, L);
over_paren_auto([$\n | Cs], D, _N, R, L) ->
    over_paren_auto(Cs, D, 0, R + 1, L);
over_paren_auto([$( | _], _, N, R, []) ->
    {N, R, $)};
over_paren_auto([$[ | _], _, N, R, []) ->
    {N, R, $]};
over_paren_auto([${ | _], _, N, R, []) ->
    {N, R, $}};
over_paren_auto([$) | Cs], D, N, R, L) ->
    over_paren_auto(Cs, D, N + 1, R, [$( | L]);
over_paren_auto([$] | Cs], D, N, R, L) ->
    over_paren_auto(Cs, D, N + 1, R, [$[ | L]);
over_paren_auto([$} | Cs], D, N, R, L) ->
    over_paren_auto(Cs, D, N + 1, R, [${ | L]);
over_paren_auto([$( | Cs], D, N, R, [$( | L]) ->
    over_paren_auto(Cs, D, N + 1, R, L);
over_paren_auto([$[ | Cs], D, N, R, [$[ | L]) ->
    over_paren_auto(Cs, D, N + 1, R, L);
over_paren_auto([${ | Cs], D, N, R, [${ | L]) ->
    over_paren_auto(Cs, D, N + 1, R, L);
over_paren_auto([GC | Cs], D, N, R, L) ->
    over_paren_auto(Cs, D, N + gc_len(GC), R, L);
over_paren_auto([], _, _, _, _) ->
    beep.

erase_line() ->
    [delete_line].

erase_inp({line, _, L, _}) ->
    lists:reverse(erase([], L, [])).

erase_line(Rs) ->
    [delete_line | Rs].

erase(Pbs, {_, {Bef, Aft}, _}, Rs) ->
    [{delete_chars, -cp_len(Pbs) - cp_len(Bef)},
     {delete_chars, cp_len(Aft)} |
     Rs].

redraw_line({line, Pbs, L, _}) ->
    redraw(Pbs, L, []).

multi_line_prompt(Pbs) ->
    case application:get_env(stdlib, shell_multiline_prompt, default) of
        default ->
            shell:default_multiline_prompt(Pbs);
        {M, F} when is_atom(M), is_atom(F) ->
            case catch apply(M, F, [Pbs]) of
                Prompt when is_list(Prompt) ->
                    Prompt;
                _ ->
                    application:set_env(stdlib, shell_multiline_prompt,
                                        default),
                    io:format("Invalid call: ~p:~p/1~n", [M, F]),
                    shell:default_multiline_prompt(Pbs)
            end;
        Prompt when is_list(Prompt) ->
            lists:duplicate(max(0,
                                shell:prompt_width(Pbs)
                                -
                                shell:prompt_width(Prompt)),
                            $\s)
            ++
            Prompt;
        Prompt ->
            application:set_env(stdlib, shell_multiline_prompt, default),
            io:format("Invalid multiline prompt: ~p~n", [Prompt]),
            shell:default_multiline_prompt(Pbs)
    end.

redraw(Pbs, {_, {_, _}, _} = L, Rs) ->
    [{redraw_prompt, Pbs, multi_line_prompt(Pbs), L} | Rs].

chars_before({[], {Bef, _}, _}) ->
    Bef;
chars_before({LB, {Bef, _}, _}) ->
    lists:flatten(lists:join($\n,
                             [Bef |
                              [ 
                               lists:reverse(Line) ||
                                   Line <- LB
                              ]])).

length_before({line, Pbs, {_, {Bef, _Aft}, _}, _}) ->
    cp_len(Pbs) + cp_len(Bef).

length_after({line, _, {_, {_Bef, Aft}, _}, _}) ->
    cp_len(Aft).

prompt({line, Pbs, _, _}) ->
    Pbs.

current_chars({line, _, MultiLine, _}) ->
    current_line(MultiLine).

current_line({line, _, MultiLine, _}) ->
    current_line(MultiLine) ++ "\n";
current_line(SingleLine) when is_list(SingleLine) ->
    SingleLine;
current_line({LinesBefore, {Before, After}, LinesAfter}) ->
    CurrentLine = lists:reverse(Before, After),
    unicode:characters_to_list(lists:flatten(lists:filter(fun(X) ->
                                                                 X /= []
                                                          end,
                                                          lists:join($\n,
                                                                     lists:reverse(LinesBefore)
                                                                     ++
                                                                     [CurrentLine]
                                                                     ++
                                                                     LinesAfter)))).

gc_len(CP) when is_integer(CP) ->
    1;
gc_len(CPs) when is_list(CPs) ->
    length(CPs).

cp_len(Str) ->
    cp_len(Str, 0).

cp_len([GC | R], Len) ->
    cp_len(R, Len + gc_len(GC));
cp_len([], Len) ->
    Len.



