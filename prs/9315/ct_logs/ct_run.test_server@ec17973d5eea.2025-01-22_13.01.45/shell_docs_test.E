-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.2/src/shell_docs_test.erl",
      1).

-module(shell_docs_test).

-file("/buildroot/otp/Erlang ∅⊤℞/lib/kernel-10.2/include/eep48.hrl", 1).

-record(docs_v1,{anno,
                 beam_language = erlang,
                 format = <<"application/erlang+html">>,
                 module_doc,
                 metadata = #{otp_doc_vsn => {1, 0, 0}},
                 docs}).

-record(docs_v1_entry,{kind_name_arity, anno, signature, doc, metadata}).

-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.2/src/shell_docs_test.erl",
      24).

-export([module/2]).

-spec module(#docs_v1{}, erl_eval:binding_struct()) -> _.

module({docs_v1, _, _, _, MD, _, Docs}, Bindings) ->
    MDRes = parse_and_run(module_doc, MD, Bindings),
    case
        lists:flatten([ 
                       parse_and_run(KFA, EntryDocs, Bindings) ||
                           {KFA, _Anno, _Sig, EntryDocs, _Meta} <- Docs,
                           is_map(EntryDocs)
                      ]
                      ++
                      MDRes)
    of
        [] ->
            ok;
        Else ->
            Else
    end.

parse_and_run(_, hidden, _) ->
    [];
parse_and_run(_, none, _) ->
    [];
parse_and_run(KFA, #{} = Ds, Bindings) ->
    [ 
     parse_and_run(KFA, D, Bindings) ||
         _ := D <- Ds
    ];
parse_and_run(KFA, Docs, Bindings) ->
    InitialBindings =
        proplists:get_value(KFA, Bindings, erl_eval:new_bindings()),
    io:format("Testing: ~p~n", [KFA]),
    case
        test(inspect(shell_docs_markdown:parse_md(Docs)),
             InitialBindings)
    of
        [] ->
            [];
        Else ->
            {KFA, lists:flatten(Else)}
    end.

test({pre, [], [{code, Attrs, [<<">",_/binary>> = Code]}]}, Bindings) ->
    case
        proplists:get_value(class, Attrs, <<"language-erlang"/utf8>>)
    of
        <<"language-erlang"/utf8>> ->
            run_test(Code, Bindings);
        _ ->
            test(Code, Bindings)
    end;
test({_Tag, _Attr, Content}, Bindings) ->
    test(Content, Bindings);
test([H | T], Bindings) ->
    [test(H, Bindings) | test(T, Bindings)];
test(Text, _Bindings) when is_binary(Text); Text =:= [] ->
    [].

run_test(Code, InitialBindings) ->
    Lines = string:split(Code, "\n", all),
    Tests = inspect(parse_tests(Lines, [])),
    lists:foldl(fun(Test, Bindings) ->
                       run_tests(Test, Bindings)
                end,
                InitialBindings, Tests).

parse_tests([], []) ->
    [];
parse_tests([], Cmd) ->
    [{test, lists:join($\n, lists:reverse(Cmd)), "_"}];
parse_tests([<<>> | T], Cmd) ->
    parse_tests(T, Cmd);
parse_tests([<<"%",_Skip/binary>> | T], Cmd) ->
    parse_tests(T, Cmd);
parse_tests([<<"> ",NewCmd/binary>> | T], []) ->
    parse_tests(T, [NewCmd]);
parse_tests([<<"> ",NewCmd/binary>> | T], Cmd) ->
    [{test, lists:join($\n, lists:reverse(Cmd)), "_"} |
     parse_tests(T, [NewCmd])];
parse_tests([<<" ",More/binary>> | T], Acc) ->
    parse_tests(T, [More | Acc]);
parse_tests([NewMatch | T], Cmd) ->
    {Match, Rest} = parse_match(T, [NewMatch]),
    [{test,
      lists:join($\n, lists:reverse(Cmd)),
      lists:join($\n, lists:reverse(Match))} |
     parse_tests(Rest, [])].

parse_match([<<"%",_Skip/binary>> | T], Acc) ->
    parse_match(T, Acc);
parse_match([<<" ",More/binary>> | T], Acc) ->
    parse_match(T, [More | Acc]);
parse_match(Rest, Acc) ->
    {Acc, Rest}.

run_tests({test, Test, Match}, Bindings) ->
    maybe
        Cmd =
            lists:flatten([unicode:characters_to_list(Match),
                           "=",
                           unicode:characters_to_list(Test)]),
        {ok, T, _} ?= erl_scan:string(Cmd),
        {ok, Ast} ?= inspect(erl_parse:parse_exprs(T)),
        {value, _Res, NewBindings} ?=
            inspect(erl_eval:exprs(Ast, Bindings)),
        NewBindings
    else
        E ->
            throw({iolist_to_binary(Test), iolist_to_binary(Match), E})
    end.

inspect(Term) ->
    Term.



