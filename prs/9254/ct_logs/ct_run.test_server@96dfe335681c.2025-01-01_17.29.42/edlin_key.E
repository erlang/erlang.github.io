-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.2/src/edlin_key.erl", 1).

-module(edlin_key).

-export([get_key_map/0,get_valid_escape_key/2]).

-import(lists, [reverse/1,reverse/2]).

get_key_map() ->
    KeyMap = application:get_env(stdlib, shell_keymap, none),
    case KeyMap of
        none ->
            key_map();
        _ ->
            merge(KeyMap)
    end.

get_valid_escape_key([], {csi, [_] = Acc} = _Mode) ->
    {key, "\e[" ++ Acc, []};
get_valid_escape_key([], Res) ->
    case Res of
        {Atom, Acc, Rest} ->
            case Atom of
                finished ->
                    {key, Acc, Rest};
                invalid ->
                    {invalid, Acc, Rest}
            end;
        {Atom, Acc} ->
            case Atom of
                finished ->
                    {key, Acc, []};
                invalid ->
                    {invalid, Acc, []};
                csi ->
                    {mode, {csi, Acc}}
            end;
        meta ->
            {escape_prefix, meta};
        meta_o ->
            {key, "\eO", []};
        meta_meta ->
            {escape_prefix, meta_meta};
        meta_csi ->
            {escape_prefix, meta_csi};
        meta_left_sq_bracket ->
            {escape_prefix, meta_left_sq_bracket}
    end;
get_valid_escape_key([C | Rest], none) ->
    case C of
        $\e ->
            get_valid_escape_key(Rest, meta);
        C when $\000 =< C, C =< $\037; C =:= $\d ->
            {key, [C], Rest};
        _ ->
            {insert, C, Rest}
    end;
get_valid_escape_key([C | Rest], meta) ->
    case C of
        $\e ->
            get_valid_escape_key(Rest, meta_meta);
        $O ->
            get_valid_escape_key(Rest, meta_o);
        $[ ->
            get_valid_escape_key(Rest, meta_left_sq_bracket);
        _ when $! =< C, C =< $~ ->
            get_valid_escape_key(Rest, {finished, "\e" ++ [C]});
        _ when $\000 =< C, C =< $\037; C =:= $\d ->
            get_valid_escape_key(Rest, {finished, "\e" ++ [C]});
        _ ->
            get_valid_escape_key(Rest, {invalid, "\e" ++ [C]})
    end;
get_valid_escape_key([C | Rest], meta_meta) ->
    case C of
        $[ ->
            get_valid_escape_key(Rest, meta_csi);
        _ when $! =< C, C =< $~ ->
            get_valid_escape_key(Rest, {finished, "\e\e" ++ [C]});
        _ ->
            get_valid_escape_key(Rest, {invalid, "\e\e" ++ [C]})
    end;
get_valid_escape_key([C | Rest], meta_o) ->
    case C of
        _ when $! =< C, C =< $~ ->
            get_valid_escape_key(Rest, {finished, "\eO" ++ [C]});
        _ ->
            get_valid_escape_key(Rest, {invalid, "\eO" ++ [C]})
    end;
get_valid_escape_key([C | Rest], meta_csi) ->
    case C of
        _ when $! =< C, C =< $~ ->
            get_valid_escape_key(Rest, {finished, "\e\e[" ++ [C]});
        _ ->
            get_valid_escape_key(Rest, {invalid, "\e[" ++ [C]})
    end;
get_valid_escape_key([C | Rest], meta_left_sq_bracket) ->
    case C of
        _ when $0 =< C, C =< $9 ->
            get_valid_escape_key(Rest, {csi, [C]});
        _ when $a =< C, C =< $z; $A =< C, C =< $Z ->
            get_valid_escape_key(Rest, {finished, "\e[" ++ [C]});
        _ ->
            get_valid_escape_key(Rest, {invalid, "\e[" ++ [C]})
    end;
get_valid_escape_key([C | Rest], {csi, [$; | Acc]}) ->
    case C of
        _ when $0 =< C, C =< $9 ->
            get_valid_escape_key(Rest, {csi, [C, $; | Acc]});
        _ ->
            get_valid_escape_key(Rest,
                                 {invalid,
                                  "\e["
                                  ++
                                  lists:reverse([$; | Acc]) ++ [C]})
    end;
get_valid_escape_key([C | Rest], {csi, Acc}) ->
    case C of
        $~ ->
            get_valid_escape_key(Rest,
                                 {finished,
                                  "\e[" ++ lists:reverse([$~ | Acc])});
        $; ->
            get_valid_escape_key(Rest, {csi, [$; | Acc]});
        _ when $0 =< C, C =< $9 ->
            get_valid_escape_key(Rest, {csi, [C | Acc]});
        $m ->
            {invalid, "\e[" ++ lists:reverse([$m | Acc]), [$m | Rest]};
        _ when $! =< C, C =< $~ ->
            get_valid_escape_key(Rest,
                                 {finished,
                                  "\e[" ++ lists:reverse([C | Acc])})
    end;
get_valid_escape_key([C | Rest], {finished, Acc}) ->
    case C of
        $~ ->
            get_valid_escape_key([], {finished, Acc ++ [C], Rest});
        _ ->
            get_valid_escape_key([], {finished, Acc, [C | Rest]})
    end;
get_valid_escape_key(Rest, {invalid, Acc}) ->
    {invalid, Acc, Rest};
get_valid_escape_key(Rest, Acc) ->
    {invalid, Acc, Rest}.

merge(KeyMap) ->
    merge(KeyMap, [normal, search, tab_expand, help], key_map()).

merge(_, [], KeyMap) ->
    KeyMap;
merge(InputKeyMap, [Mode | ShellModes], KeyMap) ->
    InputKeyMapModeValidated =
        maps:filtermap(fun(Key, Value) when is_list(Key), is_atom(Value) ->
                              try
                                  {key, Key, []} =
                                      get_valid_escape_key(Key, none),
                                  case
                                      lists:member(Value,
                                                   valid_functions())
                                  of
                                      true ->
                                          {true, Value};
                                      false ->
                                          io:format(standard_error,
                                                    "Invalid function ~"
                                                    "p in entry {~p,~p}"
                                                    "~n",
                                                    [Value, Key, Value]),
                                          false
                                  end
                              catch
                                  _:_ ->
                                      io:format(standard_error,
                                                "Invalid key ~p in entr"
                                                "y {~p,~p}~n",
                                                [Key, Key, Value]),
                                      false
                              end;
                          (default, Value) ->
                              case
                                  lists:member(Value, valid_functions())
                              of
                                  true ->
                                      {true, Value};
                                  false ->
                                      io:format(standard_error,
                                                "Invalid function ~p in"
                                                " entry {default,~p}~n",
                                                [Value, Value]),
                                      false
                              end;
                          (Key, Value) ->
                              io:format(standard_error,
                                        "Invalid entry {~p,~p}~n",
                                        [Key, Value]),
                              false
                       end,
                       maps:get(Mode, InputKeyMap, #{})),
    KeyMap1 =
        KeyMap#{Mode =>
                    maps:merge(maps:get(Mode, KeyMap),
                               InputKeyMapModeValidated)},
    merge(InputKeyMap, ShellModes, KeyMap1).

key_map() ->
    #{normal => normal_map(),
      search =>
          #{"\eOA" => move_expand_up,
            "\e[A" => move_expand_up,
            "\eOB" => move_expand_down,
            "\e[B" => move_expand_down,
            "\e[6~" => scroll_expand_down,
            "\e[5~" => scroll_expand_up,
            "\022" => skip_up,
            "\023" => skip_down,
            "\eC" => search_cancel,
            "\ec" => search_cancel,
            "\n" => search_found,
            "\r" => search_found,
            "\b" => backward_delete_char,
            "\d" => backward_delete_char,
            default => search_quit},
      tab_expand =>
          #{"\eOA" => move_expand_up,
            "\e[A" => move_expand_up,
            "\eOB" => move_expand_down,
            "\e[B" => move_expand_down,
            "\e[6~" => scroll_expand_down,
            "\e[5~" => scroll_expand_up,
            "\t" => tab_expand_full,
            default => tab_expand_quit},
      help =>
          #{"\eOA" => move_expand_up,
            "\e[A" => move_expand_up,
            "\eOB" => move_expand_down,
            "\e[B" => move_expand_down,
            "\e[6~" => scroll_expand_down,
            "\e[5~" => scroll_expand_up,
            "\eh" => help_full,
            default => tab_expand_quit}}.

normal_map() ->
    #{"\n" => new_line_finish,
      "\r" => new_line_finish,
      "\e\n" => new_line,
      "\e\r" => new_line,
      "\t" => tab_expand,
      "\001" => beginning_of_line,
      "\002" => backward_char,
      "\004" => forward_delete_char,
      "\005" => end_of_line,
      "\006" => forward_char,
      "\b" => backward_delete_char,
      "\v" => kill_line,
      "\f" => clear,
      "\016" => history_down,
      "\017" => open_editor,
      "\020" => history_up,
      "\022" => search,
      "\024" => transpose_char,
      "\025" => backward_kill_line,
      "\027" => backward_kill_word,
      "\031" => yank,
      "\035" => auto_blink,
      "\eB" => backward_word,
      "\eb" => backward_word,
      "\ec" => clear_line,
      "\eD" => kill_word,
      "\ed" => kill_word,
      "\eF" => forward_word,
      "\ef" => forward_word,
      "\er" => format_expression,
      "\eh" => help,
      "\eL" => redraw_line,
      "\el" => redraw_line,
      "\eo" => open_editor,
      "\eT" => transpose_word,
      "\et" => transpose_word,
      "\e<" => beginning_of_expression,
      "\e>" => end_of_expression,
      "\d" => backward_delete_char,
      "\e\d" => backward_kill_word,
      "\e[3~" => forward_delete_char,
      "\e[3;5~" => forward_delete_word,
      "\e[H" => beginning_of_line,
      "\eOH" => beginning_of_line,
      "\e[F" => end_of_line,
      "\eOF" => end_of_line,
      "\eOA" => history_up,
      "\e[A" => history_up,
      "\e[1;3A" => backward_line,
      "\e[1;5A" => backward_line,
      "\e[1;4A" => beginning_of_expression,
      "\eOB" => history_down,
      "\e[B" => history_down,
      "\e[1;3B" => forward_line,
      "\e[1;5B" => forward_line,
      "\e[1;4B" => end_of_expression,
      "\eOD" => backward_char,
      "\e[D" => backward_char,
      "\e[3D" => backward_word,
      "\e[1;3D" => backward_word,
      "\e[5D" => backward_word,
      "\e[1;5D" => backward_word,
      "\eOC" => forward_char,
      "\e[C" => forward_char,
      "\e[3C" => forward_word,
      "\e[1;3C" => forward_word,
      "\e[5C" => forward_word,
      "\e[1;5C" => forward_word,
      default => none}.

valid_functions() ->
    [auto_blink, backward_char, backward_delete_char,
     backward_delete_word, backward_kill_line, backward_kill_word,
     backward_line, backward_word, beginning_of_expression,
     beginning_of_line, clear, clear_line, end_of_expression,
     end_of_line, format_expression, forward_char, forward_delete_char,
     forward_delete_word, forward_line, forward_word, help,
     history_down, history_up, kill_line, kill_word, move_expand_up,
     move_expand_down, new_line_finish, new_line, none, open_editor,
     redraw_line, scroll_expand_up, scroll_expand_down, search_cancel,
     search_found, search_quit, search, skip_down, skip_up,
     tab_expand_full, tab_expand_quit, tab_expand, transpose_char,
     transpose_word, yank].



