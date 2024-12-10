-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.1.2/src/edlin_context.erl",
      1).

-module(edlin_context).

-export([get_context/1,get_context/2,odd_quotes/2]).

-type nesting() ::
          {tuple, [{atom(), string()}], {atom(), string()} | []} |
          {list, [{atom(), string()}], {atom(), string()} | []} |
          {map,
           [string()],
           string(),
           [{atom(), string()}],
           {atom(), string()} | []}.

-record(context,{arguments = [] :: [any()],
                 fields = [] :: [string()],
                 parameter_count = 0 :: non_neg_integer(),
                 current_field = [] :: string(),
                 nestings = [] :: [nesting()]}).

-spec get_context(Line) -> Context
                     when
                         Line :: string(),
                         Mod :: string(),
                         Fun :: string(),
                         Args :: [any()],
                         Unfinished :: any(),
                         Binding :: string(),
                         Keys :: [string()],
                         Record :: string(),
                         Fields :: [string()],
                         FieldToComplete :: string(),
                         Nesting :: [nesting()] | [],
                         Context ::
                             {string} |
                             {binding} |
                             {term} |
                             {term, Args, Unfinished} |
                             {fun_} |
                             {fun_, Mod} |
                             {fun_, Mod, Fun} |
                             {new_fun, Unfinished} |
                             {function} |
                             {function, Mod} |
                             {function, Mod, Fun, Args, Unfinished,
                              Nesting} |
                             {map, Binding, Keys} |
                             {map_or_record} |
                             {record} |
                             {record, Record, Fields, FieldToComplete,
                              Args, Unfinished, Nesting} |
                             {error, integer()}.

get_context(Line) ->
    {Bef0, Word} = edlin_expand:over_word(Line),
    case {{Bef0, Word}, odd_quotes($", Bef0)} of
        {_, true} ->
            {string};
        {{[$# | _], []}, _} ->
            {map_or_record};
        {{_Bef1, Word}, _} ->
            case is_binding(Word) of
                true ->
                    {binding};
                false ->
                    get_context(Bef0, Word)
            end
    end.

get_context(">-" ++ _, L) when is_list(L) ->
    {term};
get_context([$? | _], _) ->
    {macro};
get_context(Bef0, Word) when is_list(Word) ->
    get_context(lists:reverse(Word) ++ Bef0,
                {context, [], [], 0, [], []});
get_context([], {context, Args, _, Count, _, Nestings} = _CR) ->
    case
        Count + 1 == length(Args)
        andalso
        Nestings =:= []
    of
        true ->
            {term, lists:droplast(Args), lists:last(Args)};
        _ ->
            Nestings1 = lists:reverse(Nestings),
            case Nestings1 of
                [] ->
                    case Count of
                        0 when length(Args) > 0 ->
                            {term,
                             lists:droplast(Args),
                             lists:last(Args)};
                        _ ->
                            {term, Args, []}
                    end;
                [{list, Args1, Arg} | _] ->
                    {term, Args1, Arg};
                [{tuple, Args1, Arg} | _] ->
                    {term, Args1, Arg};
                [{map, _Fields, _FieldToComplete, Args1, Arg} | _] ->
                    {term, Args1, Arg}
            end
    end;
get_context([$( | Bef], CR) ->
    {Bef1, Fun} = edlin_expand:over_word(Bef),
    case Fun of
        [] ->
            {term};
        "fun" ->
            {fun_};
        _ ->
            case erl_scan:string(Fun) of
                {ok, [{var, _, _}], _} ->
                    {term};
                _ ->
                    {_, Mod} = over_module(Bef1, Fun),
                    case Mod of
                        "shell" ->
                            {term};
                        "shell_default" ->
                            {term};
                        _ ->
                            case
                                case CR of
                                    {context, _, _, REC0, _, _} ->
                                        REC0;
                                    REC0 ->
                                        error({badrecord, REC0})
                                end
                                +
                                1
                                ==
                                length(case CR of
                                           {context, REC1, _, _, _, _} ->
                                               REC1;
                                           REC1 ->
                                               error({badrecord, REC1})
                                       end)
                            of
                                true ->
                                    {function, Mod, Fun,
                                     lists:droplast(case CR of
                                                        {context, REC2,
                                                         _, _, _, _} ->
                                                            REC2;
                                                        REC2 ->
                                                            error({badrecord,
                                                                   REC2})
                                                    end),
                                     lists:last(case CR of
                                                    {context, REC3, _,
                                                     _, _, _} ->
                                                        REC3;
                                                    REC3 ->
                                                        error({badrecord,
                                                               REC3})
                                                end),
                                     case CR of
                                         {context, _, _, _, _, REC4} ->
                                             REC4;
                                         REC4 ->
                                             error({badrecord, REC4})
                                     end};
                                _ ->
                                    {function, Mod, Fun,
                                     case CR of
                                         {context, REC5, _, _, _, _} ->
                                             REC5;
                                         REC5 ->
                                             error({badrecord, REC5})
                                     end,
                                     [],
                                     case CR of
                                         {context, _, _, _, _, REC6} ->
                                             REC6;
                                         REC6 ->
                                             error({badrecord, REC6})
                                     end}
                            end
                    end
            end
    end;
get_context([${ | Bef],
            {context, Arguments, Fields, Count, FieldToComplete,
             Nestings}) ->
    {Args, Unfinished} =
        case Count + 1 == length(Arguments) of
            true ->
                {lists:droplast(Arguments), lists:last(Arguments)};
            _ ->
                {Arguments, []}
        end,
    case edlin_expand:over_word(Bef) of
        {[$# | Bef1], []} ->
            {Bef2, Map} = edlin_expand:over_word(Bef1),
            case Map of
                [] ->
                    get_context(Bef2,
                                {context, [], [], 0, [],
                                 [{map, Fields, FieldToComplete, Args,
                                   Unfinished} |
                                  Nestings]});
                _ ->
                    {map, Map, Fields}
            end;
        {_, []} ->
            get_context(Bef,
                        {context, [], [], 0, [],
                         [{tuple, Args, Unfinished} | Nestings]});
        {[$# | _Bef3], Record} ->
            {record, Record, Fields, FieldToComplete, Args, Unfinished,
             Nestings};
        {[], _} ->
            get_context(Bef,
                        {context, [], [], 0, [],
                         [{tuple, Args, Unfinished} | Nestings]});
        {_, _} ->
            get_context(Bef,
                        {context, [], [], 0, [],
                         [{tuple, Args, Unfinished} | Nestings]})
    end;
get_context([$[ | Bef1], {context, Arguments, _, Count, _, Nestings}) ->
    {Args, Unfinished} =
        case Count + 1 == length(Arguments) of
            true ->
                {lists:droplast(Arguments), lists:last(Arguments)};
            _ ->
                {Arguments, []}
        end,
    get_context(Bef1,
                {context, [], [], 0, [],
                 [{list, Args, Unfinished} | Nestings]});
get_context([$, | Bef1], {context, _, _, Count, _, _} = CR) ->
    get_context(Bef1,
                begin
                    REC7 = Count + 1,
                    REC8 = CR,
                    case REC8 of
                        {context, _, _, _, _, _} ->
                            setelement(4, REC8, REC7);
                        _ ->
                            error({badrecord, REC8})
                    end
                end);
get_context([$>, $= | Bef1], {context, _, Fields, Count, _, _} = CR) ->
    {Bef2, Field} = edlin_expand:over_word(Bef1),
    case Count of
        0 ->
            get_context(Bef2,
                        begin
                            REC9 = [Field | Fields],
                            REC10 = CR,
                            case REC10 of
                                {context, _, _, _, _, _} ->
                                    setelement(3,
                                               setelement(5, REC10,
                                                          Field),
                                               REC9);
                                _ ->
                                    error({badrecord, REC10})
                            end
                        end);
        _ ->
            get_context(Bef2,
                        begin
                            REC11 = [Field | Fields],
                            REC12 = CR,
                            case REC12 of
                                {context, _, _, _, _, _} ->
                                    setelement(3, REC12, REC11);
                                _ ->
                                    error({badrecord, REC12})
                            end
                        end)
    end;
get_context([$=, $: | Bef1], {context, _, Fields, Count, _, _} = CR) ->
    {Bef2, Field} = edlin_expand:over_word(Bef1),
    case Count of
        0 ->
            get_context(Bef2,
                        begin
                            REC13 = [Field | Fields],
                            REC14 = CR,
                            case REC14 of
                                {context, _, _, _, _, _} ->
                                    setelement(3,
                                               setelement(5, REC14,
                                                          Field),
                                               REC13);
                                _ ->
                                    error({badrecord, REC14})
                            end
                        end);
        _ ->
            get_context(Bef2,
                        begin
                            REC15 = [Field | Fields],
                            REC16 = CR,
                            case REC16 of
                                {context, _, _, _, _, _} ->
                                    setelement(3, REC16, REC15);
                                _ ->
                                    error({badrecord, REC16})
                            end
                        end)
    end;
get_context([$= | Bef1], {context, _, Fields, Count, _, _} = CR) ->
    {Bef2, Field} = edlin_expand:over_word(Bef1),
    case Count of
        0 ->
            get_context(Bef2,
                        begin
                            REC17 = [Field | Fields],
                            REC18 = CR,
                            case REC18 of
                                {context, _, _, _, _, _} ->
                                    setelement(3,
                                               setelement(5, REC18,
                                                          Field),
                                               REC17);
                                _ ->
                                    error({badrecord, REC18})
                            end
                        end);
        _ ->
            get_context(Bef2,
                        begin
                            REC19 = [Field | Fields],
                            REC20 = CR,
                            case REC20 of
                                {context, _, _, _, _, _} ->
                                    setelement(3, REC20, REC19);
                                _ ->
                                    error({badrecord, REC20})
                            end
                        end)
    end;
get_context([$. | Bef2], CR) ->
    Arguments =
        case CR of
            {context, REC21, _, _, _, _} ->
                REC21;
            REC21 ->
                error({badrecord, REC21})
        end,
    Count =
        case CR of
            {context, _, _, REC22, _, _} ->
                REC22;
            REC22 ->
                error({badrecord, REC22})
        end,
    {Args, Unfinished} =
        case Count + 1 == length(Arguments) of
            true ->
                {lists:droplast(Arguments), lists:last(Arguments)};
            _ ->
                {Arguments, []}
        end,
    case edlin_expand:over_word(Bef2) of
        {[$# | _Bef3], Record} ->
            {record, Record,
             case CR of
                 {context, _, REC23, _, _, _} ->
                     REC23;
                 REC23 ->
                     error({badrecord, REC23})
             end,
             case CR of
                 {context, _, _, _, REC24, _} ->
                     REC24;
                 REC24 ->
                     error({badrecord, REC24})
             end,
             Args, Unfinished,
             case CR of
                 {context, _, _, _, _, REC25} ->
                     REC25;
                 REC25 ->
                     error({badrecord, REC25})
             end};
        _ ->
            {'end'}
    end;
get_context([$: | Bef2], _) ->
    {Bef3, Mod} = edlin_expand:over_word(Bef2),
    case edlin_expand:over_word(Bef3) of
        {_, "fun"} ->
            {fun_, Mod};
        _ when Mod =:= [] ->
            {function};
        _ ->
            {function, Mod}
    end;
get_context([$/ | Bef1], _) ->
    {Bef2, Fun} = edlin_expand:over_word(Bef1),
    case Fun of
        [] ->
            {term};
        _ ->
            {_, Mod} = over_module(Bef2, Fun),
            case Mod of
                [] ->
                    {term};
                _ ->
                    {fun_, Mod, Fun}
            end
    end;
get_context([$>, $- | _Bef2], {context, Args, _, _, _, _} = CR) ->
    case
        case CR of
            {context, _, _, REC26, _, _} ->
                REC26;
            REC26 ->
                error({badrecord, REC26})
        end
        +
        1
        ==
        length(Args)
    of
        true ->
            {term, lists:droplast(Args), lists:last(Args)};
        _ ->
            {term, Args, []}
    end;
get_context("nehw " ++ _Bef2, {context, Args, _, _, _, _} = CR) ->
    case
        case CR of
            {context, _, _, REC27, _, _} ->
                REC27;
            REC27 ->
                error({badrecord, REC27})
        end
        +
        1
        ==
        length(Args)
    of
        true ->
            {term, lists:droplast(Args), lists:last(Args)};
        _ ->
            {term, Args, []}
    end;
get_context([$\s | Bef], CR) ->
    get_context(Bef, CR);
get_context(Bef0, {context, Args, _, Count, _, _} = CR) ->
    case over_to_opening(Bef0) of
        {_, []} ->
            {term};
        {error, _} = E ->
            E;
        {record} ->
            {record};
        {fun_} ->
            {fun_};
        {new_fun, _} = F ->
            F;
        {Bef1, {fun_, Str} = Arg} ->
            case Count of
                0 ->
                    [_, Mod, Fun | _] = string:tokens(Str, " :/"),
                    {fun_, Mod, Fun};
                _ ->
                    get_context(Bef1,
                                begin
                                    REC28 = [Arg | Args],
                                    REC29 = CR,
                                    case REC29 of
                                        {context, _, _, _, _, _} ->
                                            setelement(2, REC29, REC28);
                                        _ ->
                                            error({badrecord, REC29})
                                    end
                                end)
            end;
        {Bef1, Arg} ->
            get_context(Bef1,
                        begin
                            REC30 = [Arg | Args],
                            REC31 = CR,
                            case REC31 of
                                {context, _, _, _, _, _} ->
                                    setelement(2, REC31, REC30);
                                _ ->
                                    error({badrecord, REC31})
                            end
                        end)
    end.

read_operator(Bef) ->
    read_operator1(Bef).

operator_string() ->
    "-=><:+*/|&^~".

read_operator1([$\s | Bef]) ->
    read_operator1(Bef);
read_operator1("mer " ++ Bef) ->
    {Bef, "rem"};
read_operator1("osladna " ++ Bef) ->
    {Bef, "andalso"};
read_operator1("dna " ++ Bef) ->
    {Bef, "and"};
read_operator1("eslero " ++ Bef) ->
    {Bef, "orelse"};
read_operator1("ro " ++ Bef) ->
    {Bef, "or"};
read_operator1([$>, $>, $> | Bef1]) ->
    {[$>, $> | Bef1], [$>]};
read_operator1([$>, $> | Bef1]) ->
    {[$> | Bef1], [$>]};
read_operator1([$>, $-, C | Bef1] = Bef) ->
    case lists:member(C, operator_string()) of
        true ->
            {Bef1, [C, $-, $>]};
        false ->
            {Bef, []}
    end;
read_operator1([$>, $=, C | Bef1] = Bef) ->
    case lists:member(C, operator_string()) of
        true ->
            {Bef1, [C, $=, $>]};
        false ->
            {Bef, []}
    end;
read_operator1([$=, $:, C | Bef1] = Bef) ->
    case lists:member(C, operator_string()) of
        true ->
            {Bef1, [C, $:, $=]};
        false ->
            {Bef, []}
    end;
read_operator1([$: | _] = Bef) ->
    {Bef, []};
read_operator1([Op1, Op2, Op3 | Bef]) ->
    case
        {lists:member(Op1, operator_string()),
         lists:member(Op2, operator_string()),
         lists:member(Op3, operator_string())}
    of
        {true, true, true} ->
            {Bef, [Op3, Op2, Op1]};
        {true, true, false} ->
            {[Op3 | Bef], [Op2, Op1]};
        {true, false, _} ->
            {[Op2, Op3 | Bef], [Op1]};
        _ ->
            {[Op1, Op2, Op3 | Bef], []}
    end;
read_operator1([Op1, Op2]) ->
    case
        {lists:member(Op1, operator_string()),
         lists:member(Op2, operator_string())}
    of
        {true, true} ->
            {[], [Op2, Op1]};
        {true, false} ->
            {[Op2], [Op1]};
        _ ->
            {[Op1, Op2], []}
    end;
read_operator1([Op1]) ->
    case lists:member(Op1, operator_string()) of
        true ->
            {[], [Op1]};
        _ ->
            {[Op1], []}
    end;
read_operator1(Bef) ->
    {Bef, []}.

read_opening_char("nehw " ++ Bef) ->
    {Bef, "when"};
read_opening_char([OC | Bef])
    when OC =:= $(; OC =:= $[; OC =:= ${; OC =:= $,; OC =:= $. ->
    {Bef, [OC]};
read_opening_char([$>, $- | _] = Bef) ->
    case read_operator(Bef) of
        {_, []} ->
            {Bef, "->"};
        _ ->
            {Bef, []}
    end;
read_opening_char([$\s | Bef]) ->
    read_opening_char(Bef);
read_opening_char(Bef) ->
    {Bef, []}.

over_to_opening(Bef) ->
    try
        over_to_opening1(Bef, #{args => []})
    catch
        throw:E ->
            E
    end.

over_to_opening1([], #{args := Args}) ->
    over_to_opening_return([], Args);
over_to_opening1(Bef, Acc = #{args := Args}) ->
    case edlin_expand:over_word(Bef) of
        {_, []} ->
            case read_opening_char(Bef) of
                {Bef1, []} ->
                    case extract_argument2(Bef1) of
                        {stop} ->
                            over_to_opening_return(Bef1, Args);
                        {Bef2, []} ->
                            over_to_opening_return(Bef2, Args);
                        {Bef2, Arg} ->
                            over_to_opening1(Bef2,
                                             Acc#{args => [Arg | Args]})
                    end;
                {_Bef1, _Opening} ->
                    over_to_opening_return(Bef, Args)
            end;
        _ ->
            case extract_argument2(Bef) of
                {stop} ->
                    over_to_opening_return(Bef, Args);
                {Bef2, []} ->
                    over_to_opening_return(Bef2, Args);
                {Bef2, Arg} ->
                    over_to_opening1(Bef2, Acc#{args => [Arg | Args]})
            end
    end.

over_to_opening_return(Bef, Args) ->
    case Args of
        [] ->
            {Bef, []};
        [Arg] ->
            {Bef, Arg};
        [{operator, "-"}, {integer, I}] ->
            {Bef, {integer, "-" ++ I}};
        [{operator, "-"}, {float, F}] ->
            {Bef, {float, "-" ++ F}};
        [{atom, "fun"}, {atom, _}] ->
            throw({fun_});
        _ ->
            case look_for_non_operator_separator(Args) of
                true ->
                    {Bef,
                     {operation,
                      lists:flatten(lists:join(" ",
                                               lists:map(fun({_, Arg}) ->
                                                                Arg
                                                         end,
                                                         Args)))}};
                false ->
                    {error, length(Bef)}
            end
    end.

look_for_non_operator_separator([{string, _}, {string, _} = A | Args]) ->
    look_for_non_operator_separator([A | Args]);
look_for_non_operator_separator([{operator, _}, {operator, _} | _]) ->
    false;
look_for_non_operator_separator([_, {operator, _} = B | Args]) ->
    look_for_non_operator_separator([B | Args]);
look_for_non_operator_separator([{operator, _}, B | Args]) ->
    look_for_non_operator_separator([B | Args]);
look_for_non_operator_separator([_]) ->
    true;
look_for_non_operator_separator(_) ->
    false.

over_map_record_or_tuple(Bef0) ->
    case over_to_opening_paren($}, Bef0) of
        {_, []} ->
            throw({error, length(Bef0)});
        {Bef3, Clause} ->
            {Bef4, MaybeRecord} = edlin_expand:over_word(Bef3),
            case MaybeRecord of
                [] ->
                    case Bef4 of
                        [$# | Bef5] ->
                            {Bef6, _Var} = edlin_expand:over_word(Bef5),
                            {Bef6, {map, _Var ++ "#" ++ Clause}};
                        _ ->
                            {Bef4, {tuple, Clause}}
                    end;
                Record ->
                    case Bef4 of
                        [$# | Bef5] ->
                            {Bef6, _Var} = edlin_expand:over_word(Bef5),
                            {Bef6,
                             {record, _Var ++ "#" ++ Record ++ Clause}};
                        _ ->
                            {Bef4, {tuple, Clause}}
                    end
            end
    end.

over_pid_port_or_ref(Bef2) ->
    case over_to_opening_paren($>, Bef2) of
        {_, []} ->
            throw({soft_error, length(Bef2)});
        {Bef3, Clause} ->
            case Bef3 of
                "feR#" ++ Bef4 ->
                    {Bef4, {ref, "#Ref" ++ Clause}};
                "nuF#" ++ Bef4 ->
                    {Bef4, {funref, "#Fun" ++ Clause}};
                "troP#" ++ Bef4 ->
                    {Bef4, {port, "#Port" ++ Clause}};
                _ ->
                    case edlin_expand:over_word(Bef3) of
                        {Bef3, []} ->
                            case Bef2 of
                                [$> | _] ->
                                    {Bef3, {binary, Clause}};
                                _ ->
                                    {Bef3, {pid, Clause}}
                            end;
                        _ ->
                            throw({error, length(Bef3)})
                    end
            end
    end.

over_list(Bef2) ->
    case over_to_opening_paren($], Bef2) of
        {_, []} ->
            throw({error, length(Bef2)});
        {Bef3, Clause} ->
            {Bef3, {list, Clause}}
    end.

over_parenthesis_or_call(Bef2) ->
    case over_to_opening_paren($), Bef2) of
        {_, []} ->
            throw({error, length(Bef2)});
        {Bef3, Clause} ->
            {Bef4, Fun} = edlin_expand:over_word(Bef3),
            {Bef5, ModFun} =
                case Bef4 of
                    [$: | Bef41] ->
                        {Bef42, Mod} = edlin_expand:over_word(Bef41),
                        {Bef42, Mod ++ [$: | Fun]};
                    _ ->
                        {Bef4, Fun}
                end,
            case ModFun of
                [] ->
                    {Bef5, {parenthesis, Clause}};
                "fun" ->
                    throw({new_fun, Clause});
                _ ->
                    {Bef5, {call, ModFun ++ Clause}}
            end
    end.

over_keyword_or_fun(Bef1) ->
    case over_keyword_expression(Bef1) of
        {Bef2, KeywordExpression} ->
            {Bef2, {keyword, KeywordExpression ++ " end"}};
        _ ->
            throw({error, length(Bef1)})
    end.

extract_argument2([$> | Bef0] = Bef) ->
    case read_operator(Bef) of
        {[$> | _] = Bef1, ">" = Operator} ->
            try
                over_pid_port_or_ref(Bef0)
            catch
                throw:{error, _} = E ->
                    throw(E);
                throw:{soft_error, _Col} ->
                    {Bef1, {operator, Operator}}
            end;
        {Bef1, ">" = Operator} ->
            try
                over_pid_port_or_ref(Bef1)
            catch
                throw:{error, _} = E ->
                    throw(E);
                throw:{soft_error, _Col} ->
                    {Bef1, {operator, Operator}}
            end;
        {_Bef1, []} ->
            {stop};
        {Bef1, Operator} ->
            {Bef1, {operator, Operator}}
    end;
extract_argument2(Bef0) ->
    case read_operator(Bef0) of
        {[$} | Bef1], []} ->
            over_map_record_or_tuple(Bef1);
        {[$) | Bef1], []} ->
            over_parenthesis_or_call(Bef1);
        {[$] | Bef1], []} ->
            over_list(Bef1);
        {[$" | Bef2], []} ->
            {Bef3, _Quote} = over_to_opening_quote($", Bef2),
            {Bef3, {string, _Quote}};
        {"dne " ++ Bef1, []} ->
            over_keyword_or_fun(Bef1);
        {[$=, $: | _], []} ->
            {stop};
        {[$: | _], []} ->
            {stop};
        {"nehw" ++ _Bef1, []} ->
            {stop};
        {_, []} ->
            extract_argument(Bef0);
        {Bef1, Operator} ->
            {Bef1, {operator, Operator}}
    end.

extract_argument(Bef0) ->
    case edlin_expand:over_word(Bef0) of
        {_Bef1, []} ->
            case read_char(_Bef1) of
                {_, []} ->
                    {_Bef1, []};
                {Bef2, Char} ->
                    {Bef2, {char, Char}}
            end;
        {Bef2, Var} ->
            try list_to_integer(Var) of
                _ ->
                    case over_fun_function(Bef0) of
                        {Bef3, "fun " ++ _ModFunArr} ->
                            {Bef3, {fun_, "fun " ++ _ModFunArr}};
                        _ ->
                            case over_number(Bef0) of
                                {Bef3, []} ->
                                    {Bef3, []};
                                {Bef3, Number} ->
                                    {Bef3, Number}
                            end
                    end
            catch
                _:_ ->
                    case is_binding(Var) of
                        true ->
                            {Bef2, {var, Var}};
                        false ->
                            case Bef2 of
                                [$# | _] ->
                                    throw({record});
                                _ ->
                                    {Bef2, {atom, Var}}
                            end
                    end
            end
    end.

over_number(Bef) ->
    case edlin_expand:over_word(Bef) of
        {_, []} ->
            {Bef, []};
        {Bef2, Var} ->
            try list_to_integer(Var) of
                _ ->
                    {Bef6, {NumberType, Number}} =
                        Res =
                            case edlin_expand:over_word(Bef2) of
                                {[$. | Bef3], []} ->
                                    {Bef4, Integer} =
                                        edlin_expand:over_word(Bef3),
                                    {Bef4,
                                     {float, Integer ++ "." ++ Var}};
                                {[$# | Bef3], []} ->
                                    {Bef4, Base} =
                                        edlin_expand:over_word(Bef3),
                                    {Bef4,
                                     {integer, Base ++ "#" ++ Var}};
                                _ ->
                                    {Bef2, {integer, Var}}
                            end,
                    case edlin_expand:over_word(Bef6) of
                        {[$- | Bef5], []} ->
                            case read_opening_char(Bef5) of
                                {_, []} ->
                                    Res;
                                _ ->
                                    {Bef5, {NumberType, "-" ++ Number}}
                            end;
                        _ ->
                            Res
                    end
            catch
                _:_ ->
                    {Bef, []}
            end
    end.

read_char([C, $$ | Line]) ->
    {Line, [$$, C]};
read_char([$$ | Line]) ->
    {Line, "$ "};
read_char(Line) ->
    {Line, []}.

over_fun_function(Bef) ->
    over_fun_function(Bef, []).

over_fun_function(Bef, Acc) ->
    case edlin_expand:over_word(Bef) of
        {[$/ | Bef1], Arity} ->
            over_fun_function(Bef1, [$/ | Arity] ++ Acc);
        {[$: | Bef1], Fun} ->
            over_fun_function(Bef1, [$: | Fun] ++ Acc);
        {" nuf" ++ Bef1, ModOrFun} ->
            case to_atom(ModOrFun) of
                {ok, _} ->
                    over_fun_function(Bef1, "fun " ++ ModOrFun ++ Acc);
                error ->
                    {Bef, Acc}
            end;
        _ ->
            {Bef, Acc}
    end.

over_to_opening_quote(Q, Bef) when Q == $'; Q == $" ->
    over_to_opening_quote([Q], Bef, [Q]);
over_to_opening_quote(_, Bef) ->
    {Bef, []}.

over_to_opening_quote([], Bef, Word) ->
    {Bef, Word};
over_to_opening_quote([Q | Stack], [Q | Bef], Word) ->
    over_to_opening_quote(Stack, Bef, [Q | Word]);
over_to_opening_quote([Q | Stack], [Q, EC | Bef], Word)
    when EC =:= $\\; EC =:= $$ ->
    over_to_opening_quote([Q | Stack], Bef, [EC, Q | Word]);
over_to_opening_quote([Stack], [C | Bef], Word) ->
    over_to_opening_quote([Stack], Bef, [C | Word]);
over_to_opening_quote(_, _, Word) ->
    {lists:reverse(Word), []}.

matching_paren($(, $)) ->
    true;
matching_paren($[, $]) ->
    true;
matching_paren(${, $}) ->
    true;
matching_paren($<, $>) ->
    true;
matching_paren(_, _) ->
    false.

over_to_opening_paren(CC, Bef)
    when CC == $); CC == $]; CC == $}; CC == $> ->
    over_to_opening_paren([CC], Bef, [CC]);
over_to_opening_paren(_, Bef) ->
    {Bef, []}.

over_to_opening_paren([], Bef, Word) ->
    {Bef, Word};
over_to_opening_paren(_, [], Word) ->
    {lists:reverse(Word), []};
over_to_opening_paren([CC | Stack], [CC, $$ | Bef], Word) ->
    over_to_opening_paren([CC | Stack], Bef, [$$, CC | Word]);
over_to_opening_paren([CC | Stack], [OC | Bef], Word)
    when OC == $(; OC == $[; OC == ${; OC == $< ->
    case matching_paren(OC, CC) of
        true ->
            over_to_opening_paren(Stack, Bef, [OC | Word]);
        false ->
            over_to_opening_paren([CC | Stack], Bef, [OC | Word])
    end;
over_to_opening_paren([CC | Stack], [CC | Bef], Word) ->
    over_to_opening_paren([CC, CC | Stack], Bef, [CC | Word]);
over_to_opening_paren(Stack, [Q, NEC | Bef], Word)
    when Q == $"; Q == $', NEC /= $$, NEC /= $\\ ->
    {Bef1, QuotedWord} = over_to_opening_quote(Q, Bef),
    over_to_opening_paren(Stack, Bef1, QuotedWord ++ Word);
over_to_opening_paren(CC, [C | Bef], Word) ->
    over_to_opening_paren(CC, Bef, [C | Word]).

over_keyword_expression(Bef) ->
    over_keyword_expression(Bef, []).

over_keyword_expression("dne" ++ Bef, Expr) ->
    {Bef1, KWE} = over_keyword_expression(Bef),
    over_keyword_expression(Bef1, KWE ++ "end" ++ Expr);
over_keyword_expression("fi" ++ Bef, Expr) ->
    {Bef, "if" ++ Expr};
over_keyword_expression("nuf" ++ Bef, Expr) ->
    {Bef, "fun" ++ Expr};
over_keyword_expression("yrt" ++ Bef, Expr) ->
    {Bef, "try" ++ Expr};
over_keyword_expression("esac" ++ Bef, Expr) ->
    {Bef, "case" ++ Expr};
over_keyword_expression("hctac" ++ Bef, Expr) ->
    case over_keyword_expression(Bef, []) of
        {Bef1, "try" ++ Expr1} ->
            {Bef1, "try" ++ Expr1 ++ "catch" ++ Expr};
        _ ->
            {Bef, "catch" ++ Expr}
    end;
over_keyword_expression("nigeb" ++ Bef, Expr) ->
    {Bef, "begin" ++ Expr};
over_keyword_expression("ebyam" ++ Bef, Expr) ->
    {Bef, "maybe" ++ Expr};
over_keyword_expression("eviecer" ++ Bef, Expr) ->
    {Bef, "receive" ++ Expr};
over_keyword_expression([], _) ->
    {no, [], []};
over_keyword_expression([C | Bef], Expr) ->
    over_keyword_expression(Bef, [C | Expr]).

odd_quotes(Q, [Q, C | Line], Acc) when C == $\\; C == $$ ->
    odd_quotes(Q, Line, Acc);
odd_quotes(Q, [Q | Line], Acc) ->
    odd_quotes(Q, Line, Acc + 1);
odd_quotes(Q, [_ | Line], Acc) ->
    odd_quotes(Q, Line, Acc);
odd_quotes(_, [], Acc) ->
    Acc band 1 == 1.

odd_quotes(Q, Line) ->
    odd_quotes(Q, Line, 0).

over_module(Bef, Fun) ->
    case edlin_expand:over_word(Bef) of
        {[$: | Bef1], _} ->
            edlin_expand:over_word(Bef1);
        {[], _} ->
            {Bef, edlin_expand:shell_default_or_bif(Fun)};
        _ ->
            {Bef, edlin_expand:bif(Fun)}
    end.

is_binding(Word) ->
    Normalized = unicode:characters_to_nfc_list(Word),
    nomatch
    =/=
    re:run(Normalized, "^[_[:upper:]][[:alpha:]]*$", [unicode, ucp]).

to_atom(Str) ->
    case erl_scan:string(Str) of
        {ok, [{atom, _, A}], _} ->
            {ok, A};
        _ ->
            error
    end.



