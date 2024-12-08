-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.1.2/src/qlc_pt.erl", 1).

-module(qlc_pt).

-compile(nowarn_deprecated_catch).

-export([parse_transform/2,
         transform_from_evaluator/2,
         transform_expression/2]).

-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.1.2/include/ms_transform."
      "hrl",
      1).

-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.1.2/src/qlc_pt.erl", 31).

-record(qlc_lc,{lc, opt}).

-record(state,{imp, overridden, maxargs, records,
               xwarnings = [],
               intro_vars, node_info}).

-spec parse_transform(Forms, Options) -> Forms2
                         when
                             Forms ::
                                 [erl_parse:abstract_form() |
                                  erl_parse:form_info()],
                             Forms2 ::
                                 [erl_parse:abstract_form() |
                                  erl_parse:form_info()],
                             Options :: [Option],
                             Option :: type_checker | compile:option().

parse_transform(Forms0, Options) ->
    ok,
    Imported = is_qlc_q_imported(Forms0),
    {Forms, FormsNoShadows, State} = initiate(Forms0, Imported),
    NodeInfo =
        case State of
            {state, _, _, _, _, _, _, REC0} ->
                REC0;
            REC0 ->
                error({badrecord, REC0})
        end,
    try
        case called_from_type_checker(Options) of
            true ->
                Anno = anno0(),
                {tuple, _, Fs0} =
                    abstr({qlc_lc, undefined, undefined}, Anno),
                F = fun(_Id, LC, A) ->
                           Init = simple(Anno, 'V', LC, Anno),
                           {{tuple, Anno, set_field(2, Fs0, Init)}, A}
                    end,
                {Forms1, ok} = qlc_mapfold(F, ok, Forms, State),
                Forms1;
            false ->
                case
                    compile_messages(Forms, FormsNoShadows, Options,
                                     State)
                of
                    {[], Warnings} ->
                        ok,
                        {NewForms, State1} =
                            transform(FormsNoShadows, State),
                        ExtraWs =
                            case State1 of
                                {state, _, _, _, _, REC1, _, _} ->
                                    REC1;
                                REC1 ->
                                    error({badrecord, REC1})
                            end,
                        {[], WForms} =
                            no_duplicates(NewForms, [], Warnings,
                                          ExtraWs, Options),
                        restore_locations(WForms, State)
                        ++
                        restore_anno(NewForms, NodeInfo);
                    {Errors, Warnings} ->
                        ok,
                        {EForms, WForms} =
                            no_duplicates(FormsNoShadows, Errors,
                                          Warnings, [], Options),
                        restore_locations(EForms ++ WForms, State)
                        ++
                        Forms0
                end
        end
    after
        true = ets:delete(NodeInfo)
    end.

-spec transform_from_evaluator(LC, Bs) -> Return
                                  when
                                      LC :: erl_parse:abstract_expr(),
                                      Bs :: erl_eval:binding_struct(),
                                      Return ::
                                          {ok,
                                           erl_parse:abstract_expr()} |
                                          {not_ok,
                                           {error,
                                            module(),
                                            Reason :: term()}}.

transform_from_evaluator(LC, Bindings) ->
    ok,
    transform_expression(LC, Bindings, false).

-spec transform_expression(LC, Bs) -> Return
                              when
                                  LC :: erl_parse:abstract_expr(),
                                  Bs :: erl_eval:binding_struct(),
                                  Return ::
                                      {ok, erl_parse:abstract_expr()} |
                                      {not_ok,
                                       [{error, Reason :: term()}]}.

transform_expression(LC, Bindings) ->
    transform_expression(LC, Bindings, true).

called_from_type_checker(Options) ->
    lists:member(type_checker, Options).

transform_expression(LC, Bs0, WithLintErrors) ->
    Anno = anno1(),
    As =
        [ 
         {var, Anno, V} ||
             {V, _Val} <- Bs0
        ],
    Ar = length(As),
    F = {function, Anno, bar, Ar,
         [{clause, Anno, As, [],
           [{call, Anno,
             {remote, Anno, {atom, Anno, qlc}, {atom, Anno, q}},
             [LC]}]}]},
    Forms0 =
        [{attribute, Anno, file, {"foo", Anno}},
         {attribute, Anno, module, foo},
         F],
    {Forms, FormsNoShadows, State} = initiate(Forms0, false),
    NodeInfo =
        case State of
            {state, _, _, _, _, _, _, REC2} ->
                REC2;
            REC2 ->
                error({badrecord, REC2})
        end,
    Options = [],
    try compile_messages(Forms, FormsNoShadows, Options, State) of
        {Errors0, _Warnings} ->
            case restore_locations(Errors0, State) of
                [] ->
                    {NewForms, _State1} =
                        transform(FormsNoShadows, State),
                    NewForms1 = restore_anno(NewForms, NodeInfo),
                    {function, Anno, bar, Ar,
                     [{clause, Anno, As, [], [NF]}]} =
                        lists:last(NewForms1),
                    {ok, NF};
                Errors when WithLintErrors ->
                    {not_ok, mforms(error, Errors)};
                Errors ->
                    [{error, Reason} | _] = mforms(error, Errors),
                    {not_ok, {error, qlc, Reason}}
            end
    after
        true = ets:delete(NodeInfo)
    end.

initiate(Forms0, Imported) ->
    NodeInfo = ets:new(qlc, []),
    true = ets:insert(NodeInfo, {var_n, 0}),
    exclude_integers_from_unique_line_numbers(Forms0, NodeInfo),
    ok,
    IsOverridden = set_up_overridden(Forms0),
    State0 =
        {state, Imported, IsOverridden, 20,
         record_attributes(Forms0),
         [], undefined, NodeInfo},
    Forms = save_anno(Forms0, NodeInfo),
    FormsNoShadows = no_shadows(Forms, State0),
    IntroVars = intro_variables(FormsNoShadows, State0),
    State =
        begin
            REC3 = State0,
            case REC3 of
                {state, _, _, _, _, _, _, _} ->
                    setelement(7, REC3, IntroVars);
                _ ->
                    error({badrecord, REC3})
            end
        end,
    {Forms, FormsNoShadows, State}.

exclude_integers_from_unique_line_numbers(Forms, NodeInfo) ->
    Integers = find_integers(Forms),
    lists:foreach(fun(I) ->
                         ets:insert(NodeInfo, {I})
                  end,
                  Integers).

find_integers(Forms) ->
    F = fun(A) ->
               Fs1 =
                   map_anno(fun(_) ->
                                   A
                            end,
                            Forms),
               ordsets:from_list(integers(Fs1, []))
        end,
    ordsets:to_list(ordsets:intersection(F(anno0()), F(anno1()))).

integers([E | Es], L) ->
    integers(Es, integers(E, L));
integers(T, L) when is_tuple(T) ->
    integers(tuple_to_list(T), L);
integers(I, L) when is_integer(I), I > 0 ->
    [I | L];
integers(_, L) ->
    L.

-record(qid,{lcid, no}).

mforms(Tag, L) ->
    lists:sort([ 
                {Tag, M} ||
                    {_File, Ms} <- L,
                    M <- Ms
               ]).

no_duplicates(Forms, Errors, Warnings0, ExtraWarnings0, Options) ->
    ExtraWarnings =
        [ 
         W ||
             W = {_File, [{_, qlc, Tag}]} <- ExtraWarnings0,
             not lists:member(Tag, [nomatch_pattern, nomatch_filter])
        ],
    Warnings1 =
        mforms(Warnings0)
        --
        [ 
         {File, [{L, v3_core, nomatch}]} ||
             {File, [{L, qlc, M}]} <- mforms(ExtraWarnings),
             lists:member(M, [nomatch_pattern, nomatch_filter])
        ]
        ++
        [ 
         {File, [{L, sys_core_fold, nomatch_guard}]} ||
             {File, [{L, qlc, M}]} <- mforms(ExtraWarnings),
             M =:= nomatch_filter
        ],
    Warnings = Warnings1 ++ ExtraWarnings,
    {Es1, Ws1} = compile_forms(Forms, Options),
    Es = mforms(Errors) -- mforms(Es1),
    Ws = mforms(Warnings) -- mforms(Ws1),
    {mforms2(error, Es), mforms2(warning, Ws)}.

mforms(L) ->
    lists:sort([ 
                {File, [M]} ||
                    {File, Ms} <- L,
                    M <- Ms
               ]).

mforms2(Tag, L) ->
    Anno = anno0(),
    ML =
        lists:flatmap(fun({File, Ms}) ->
                             [ 
                              [{attribute, Anno, file, {File, 0}},
                               {Tag, M}] ||
                                  M <- Ms
                             ]
                      end,
                      lists:sort(L)),
    lists:flatten(lists:sort(ML)).

restore_locations([T | Ts], State) ->
    [restore_locations(T, State) | restore_locations(Ts, State)];
restore_locations(T, State) when is_tuple(T) ->
    list_to_tuple(restore_locations(tuple_to_list(T), State));
restore_locations(I, State) when I > 0 ->
    restore_loc(I, State);
restore_locations(T, _State) ->
    T.

is_qlc_q_imported(Forms) ->
    [ 
     [] ||
         {attribute, _, import, {qlc, FAs}} <- Forms,
         {q, 1} <- FAs
    ]
    =/=
    [].

record_attributes(Forms) ->
    [ 
     A ||
         A = {attribute, _, record, _D} <- Forms
    ].

compile_messages(Forms, FormsNoShadows, Options, State) ->
    BGenF =
        fun(_QId, {Type, Anno, _P, _LE} = BGen, GA, A)
               when Type =:= b_generate; Type =:= b_generate_strict ->
               M = {loc(Anno), qlc, binary_generator},
               {BGen, [{get(qlc_current_file), [M]} | GA], A};
           (_QId, {Type, Anno, _P, _LE} = BGen, GA, A)
               when Type =:= m_generate; Type =:= m_generate_strict ->
               M = {loc(Anno), qlc, map_generator},
               {BGen, [{get(qlc_current_file), [M]} | GA], A};
           (_QId, {generate_strict, Anno, _P, _LE} = BGen, GA, A) ->
               M = {loc(Anno), qlc, strict_generator},
               {BGen, [{get(qlc_current_file), [M]} | GA], A};
           (_QId, Q, GA, A) ->
               {Q, GA, A}
        end,
    {_, BGens} = qual_fold(BGenF, [], [], Forms, State),
    GenForm = used_genvar_check(FormsNoShadows, State),
    ok,
    {GEs, _} = compile_forms([GenForm], Options),
    UsedGenVarMsgs = used_genvar_messages(GEs, State),
    NodeInfo =
        case State of
            {state, _, _, _, _, _, _, REC4} ->
                REC4;
            REC4 ->
                error({badrecord, REC4})
        end,
    WarnFun =
        fun(_Id, LC, A) ->
               {lc_nodes(LC, NodeInfo), A}
        end,
    {WForms, ok} = qlc_mapfold(WarnFun, ok, Forms, State),
    {Es, Ws} = compile_forms(WForms, Options),
    LcEs = lc_messages(Es, NodeInfo),
    LcWs = lc_messages(Ws, NodeInfo),
    Errors = badarg(Forms, State) ++ UsedGenVarMsgs ++ LcEs ++ BGens,
    Warnings = LcWs,
    {Errors, Warnings}.

badarg(Forms, State) ->
    F = fun(_Id, {lc, _A, _E, _Qs} = LC, Es) ->
               {LC, Es};
           (Id, A, Es) ->
               E = {get_lcid_line(Id),
                    qlc, not_a_query_list_comprehension},
               {A, [{get(qlc_current_file), [E]} | Es]}
        end,
    {_, E0} = qlc_mapfold(F, [], Forms, State),
    E0.

lc_nodes(E, NodeInfo) ->
    map_anno(fun(Anno) ->
                    N = erl_anno:line(Anno),
                    [{N, Data}] = ets:lookup(NodeInfo, N),
                    NData = Data#{inside_lc => true},
                    true = ets:insert(NodeInfo, {N, NData}),
                    Anno
             end,
             E).

used_genvar_messages(MsL, S) ->
    [ 
     {File, [{Loc, qlc, {used_generator_variable, V}}]} ||
         {_, Ms} <- MsL,
         {XLoc, erl_lint, {unbound_var, _}} <- Ms,
         {Loc, File, V} <- [genvar_pos(XLoc, S)]
    ].

lc_messages(MsL, NodeInfo) ->
    [ 
     {File,
      [ 
       {Loc, Mod, T} ||
           {Loc, Mod, T} <- Ms,
           lc_loc(Loc, NodeInfo)
      ]} ||
         {File, Ms} <- MsL
    ].

lc_loc(N, NodeInfo) ->
    case ets:lookup(NodeInfo, N) of
        [{N, #{inside_lc := true}}] ->
            true;
        [{N, _}] ->
            false
    end.

genvar_pos(Location, S) ->
    case
        ets:lookup(case S of
                       {state, _, _, _, _, _, _, REC5} ->
                           REC5;
                       REC5 ->
                           error({badrecord, REC5})
                   end,
                   Location)
    of
        [{Location, #{genvar_pos := Pos}}] ->
            Pos;
        [] ->
            Location
    end.

intro_variables(FormsNoShadows, State) ->
    NodeInfo =
        case State of
            {state, _, _, _, _, _, _, REC6} ->
                REC6;
            REC6 ->
                error({badrecord, REC6})
        end,
    Fun =
        fun(QId, {T, _A, P0, _E0} = Q, {GVs, QIds}, Foo)
               when T =:= b_generate; T =:= generate ->
               PVs =
                   qlc:var_ufold(fun({var, _, V}) ->
                                        {QId, V}
                                 end,
                                 P0),
               {Q,
                {ordsets:to_list(PVs) ++ GVs, [{QId, []} | QIds]},
                Foo};
           (QId, Filter0, {GVs, QIds}, Foo) ->
               Vs = ordsets:to_list(qlc:vars(Filter0)),
               AnyAnno = anno0(),
               Vars =
                   [ 
                    {var, AnyAnno, V} ||
                        V <- Vs
                   ],
               LC = embed_vars(Vars, AnyAnno),
               LC1 = intro_anno(LC, before, QId, NodeInfo),
               LC2 = intro_anno(LC, 'after', QId, NodeInfo),
               Filter = {block, AnyAnno, [LC1, Filter0, LC2]},
               {Filter, {GVs, [{QId, []} | QIds]}, Foo}
        end,
    Acc0 = {[], []},
    {FForms, {GenVars, QIds}} =
        qual_fold(Fun, Acc0, [], FormsNoShadows, State),
    Es0 = compile_errors(FForms),
    Before =
        [ 
         {QId, V} ||
             {L, erl_lint, {unbound_var, V}} <- Es0,
             {_L, {QId, before}} <- ets:lookup(NodeInfo, L)
        ],
    After =
        [ 
         {QId, V} ||
             {L, erl_lint, {unbound_var, V}} <- Es0,
             {_L, {QId, 'after'}} <- ets:lookup(NodeInfo, L)
        ],
    Unsafe =
        [ 
         {QId, V} ||
             {L, erl_lint, {unsafe_var, V, _Where}} <- Es0,
             {_L, {QId, 'after'}} <- ets:lookup(NodeInfo, L)
        ],
    ok,
    ok,
    ok,
    ok,
    IV = (Before -- After) -- Unsafe,
    I1 = family(IV ++ GenVars),
    sofs:to_external(sofs:family_union(sofs:family(QIds), I1)).

intro_anno(LC, Where, QId, NodeInfo) ->
    Data = {QId, Where},
    Fun =
        fun(Anno) ->
               Location = loc(Anno),
               true = ets:insert(NodeInfo, {Location, Data}),
               Anno
        end,
    map_anno(Fun, save_anno(LC, NodeInfo)).

compile_errors(FormsNoShadows) ->
    case compile_forms(FormsNoShadows, []) of
        {[], _Warnings} ->
            [];
        {Errors, _Warnings} ->
            ok,
            lists:flatmap(fun({_File, Es}) ->
                                 Es
                          end,
                          Errors)
    end.

compile_forms(Forms0, Options) ->
    Exclude =
        fun(eof) ->
               true;
           (warning) ->
               true;
           (error) ->
               true;
           (_) ->
               false
        end,
    Forms =
        [ 
         F ||
             F <- Forms0,
             not Exclude(element(1, F))
        ]
        ++
        [{eof, 0}],
    try
        case compile:noenv_forms(Forms, compile_options(Options)) of
            {ok, _ModName, Ws0} ->
                {[], Ws0};
            {error, Es0, Ws0} ->
                {Es0, Ws0}
        end
    catch
        _:_ ->
            case erl_lint:module(Forms, lint_options(Options)) of
                {ok, Warnings} ->
                    {[], Warnings};
                {error, Errors, Warnings} ->
                    {Errors, Warnings}
            end
    end.

compile_options(Options) ->
    No =
        [report, report_errors, report_warnings, 'P', 'E' |
         bitstr_options()],
    [strong_validation, return | skip_options(No, Options)].

lint_options(Options) ->
    skip_options(bitstr_options(), Options).

skip_options(Skip, Options) ->
    [ 
     O ||
         O <- Options,
         not lists:member(O, Skip)
    ].

bitstr_options() ->
    [binary_comprehension, bitlevel_binaries].

used_genvar_check(FormsNoShadows, State) ->
    NodeInfo =
        case State of
            {state, _, _, _, _, _, _, REC7} ->
                REC7;
            REC7 ->
                error({badrecord, REC7})
        end,
    F = fun(QId, {T, AnnoQ, _P, LE} = Q, {QsIVs0, Exprs0}, IVsSoFar0)
               when T =:= b_generate; T =:= generate ->
               F = fun(Var) ->
                          {var, Anno0, OrigVar} =
                              undo_no_shadows(Var, State),
                          {var, Anno, _} =
                              NewVar = save_anno(Var, NodeInfo),
                          Location0 = loc(Anno0),
                          Location = loc(Anno),
                          [{Location, Data}] =
                              ets:lookup(NodeInfo, Location),
                          Pos =
                              {Location0,
                               get(qlc_current_file),
                               OrigVar},
                          NData = Data#{genvar_pos => Pos},
                          true = ets:insert(NodeInfo, {Location, NData}),
                          NewVar
                   end,
               Vs =
                   [ 
                    Var ||
                        {var, _, V} = Var <- qlc:var_fold(F, [], LE),
                        lists:member(V, IVsSoFar0)
                   ],
               Exprs =
                   case Vs of
                       [] ->
                           Exprs0;
                       _ ->
                           [embed_vars(Vs, AnnoQ) | Exprs0]
                   end,
               {QsIVs, IVsSoFar} = q_intro_vars(QId, QsIVs0, IVsSoFar0),
               {Q, {QsIVs, Exprs}, IVsSoFar};
           (QId, Filter, {QsIVs0, Exprs}, IVsSoFar0) ->
               {QsIVs, IVsSoFar} = q_intro_vars(QId, QsIVs0, IVsSoFar0),
               {Filter, {QsIVs, Exprs}, IVsSoFar}
        end,
    Acc0 =
        {case State of
             {state, _, _, _, _, _, REC8, _} ->
                 REC8;
             REC8 ->
                 error({badrecord, REC8})
         end,
         [{atom, anno0(), true}]},
    {_, {[], Exprs}} = qual_fold(F, Acc0, [], FormsNoShadows, State),
    FunctionNames =
        [ 
         Name ||
             {function, _, Name, _, _} <- FormsNoShadows
        ],
    UniqueFName =
        qlc:aux_name(used_genvar, 1, gb_sets:from_list(FunctionNames)),
    A = anno0(),
    {function, A, UniqueFName, 0,
     [{clause, A, [], [], lists:reverse(Exprs)}]}.

q_intro_vars(QId, [{QId, IVs} | QsIVs], IVsSoFar) ->
    {QsIVs, IVs ++ IVsSoFar}.

transform(FormsNoShadows, State) ->
    _ = erlang:system_flag(backtrace_depth, 500),
    IntroVars =
        case State of
            {state, _, _, _, _, _, REC9, _} ->
                REC9;
            REC9 ->
                error({badrecord, REC9})
        end,
    AllVars =
        gb_sets:from_list(ordsets:to_list(qlc:vars(FormsNoShadows))),
    ok,
    F1 =
        fun(QId, {generate, _, P, LE}, Foo, {GoI, SI}) ->
               {{QId, GoI, SI, {gen, P, LE}}, Foo, {GoI + 3, SI + 2}};
           (QId, F, Foo, {GoI, SI}) ->
               {{QId, GoI, SI, {fil, F}}, Foo, {GoI + 2, SI + 1}}
        end,
    TemplS = qlc:template_state(),
    GoState = {TemplS + 1, TemplS + 1},
    {ModifiedForms1, _} =
        qual_fold(F1, [], GoState, FormsNoShadows, State),
    {_, Source0} =
        qual_fold(fun(_QId, {generate, _, _P, _E} = Q, Dict, Foo) ->
                         {Q, Dict, Foo};
                     (QId, F, Dict, Foo) ->
                         {F, maps:put(QId, F, Dict), Foo}
                  end,
                  maps:new(),
                  [], FormsNoShadows, State),
    {_, Source} =
        qlc_mapfold(fun(Id, {lc, _A, E, _Qs} = LC, Dict) ->
                           {LC, maps:put(Id, E, Dict)}
                    end,
                    Source0, FormsNoShadows, State),
    F2 =
        fun(Id, {lc, _A, E, Qs}, {IntroVs0, XWarn0}) ->
               LcNo = get_lcid_no(Id),
               LcL = get_lcid_line(Id),
               [RL, Fun, Go, NGV, S0, RL0, Go0, AT, Err] =
                   aux_vars(['RL', 'Fun', 'Go', 'C', 'S0', 'RL0', 'Go0',
                             'AT', 'E'],
                            LcNo, AllVars),
               ok,
               {IntroVs, RestIntroVs} =
                   lists:split(length(Qs), IntroVs0),
               IntroVs_Qs = lists:zip(IntroVs, Qs),
               F = fun({{QId, IVs}, {QId, GoI, SI, {gen, P, LE}}},
                       AllIVs0) ->
                          GV =
                              aux_var('C', LcNo,
                                      case QId of
                                          {qid, _, REC10} ->
                                              REC10;
                                          REC10 ->
                                              error({badrecord, REC10})
                                      end,
                                      1, AllVars),
                          GenIVs = [GV | IVs],
                          {{QId, {GenIVs, {{gen, P, LE, GV}, GoI, SI}}},
                           GenIVs ++ AllIVs0};
                      ({{QId, IVs}, {QId, GoI, SI, {fil, F}}}, AllIVs0) ->
                          {{QId, {IVs, {{fil, F}, GoI, SI}}},
                           IVs ++ AllIVs0}
                   end,
               {QCs, AllIVs} = lists:mapfoldl(F, [], IntroVs_Qs),
               Dependencies = qualifier_dependencies(Qs, IntroVs),
               Anno = no_compiler_warning(LcL),
               {EqColumnConstants, EqualColumnConstants, ExtraConsts,
                SizeInfo} =
                   constants_and_sizes(Qs, E, Dependencies, AllIVs,
                                       State),
               {JoinInfo, XWarn} =
                   join_kind(Qs, LcL, AllIVs, Dependencies, State),
               FWarn =
                   warn_failing_qualifiers(Qs, AllIVs, Dependencies,
                                           State),
               JQs =
                   join_quals(JoinInfo, QCs, Anno, LcNo, ExtraConsts,
                              AllVars),
               XQCs = QCs ++ JQs,
               Cs0 = clauses(XQCs, RL, Fun, Go, NGV, Err, AllIVs, State),
               Template =
                   template(E, RL, Fun, Go, AT, Anno, AllIVs, State),
               Fin = final(RL, AllIVs, Anno, State),
               FunC = {'fun', Anno, {clauses, Fin ++ Template ++ Cs0}},
               As0 =
                   pack_args(abst_vars([S0, RL0, Fun, Go0 |
                                        replace(AllIVs, AllIVs, nil)],
                                       Anno),
                             Anno, State),
               AsW = abst_vars([S0, RL0, Go0], Anno),
               FunW =
                   {'fun', Anno,
                    {clauses,
                     [{clause, Anno, AsW, [],
                       [{match, Anno, {var, Anno, Fun}, FunC},
                        {call, Anno, {var, Anno, Fun}, As0}]}]}},
               OrigE0 = map_get(Id, Source),
               OrigE = undo_no_shadows(OrigE0, State),
               QCode = qcode(OrigE, XQCs, Source, Anno, State),
               Qdata = qdata(XQCs, Anno),
               TemplateInfo =
                   template_columns(Qs, E, AllIVs, Dependencies, State),
               MSQs = match_spec_quals(E, Dependencies, Qs, State),
               Opt =
                   opt_info(TemplateInfo, SizeInfo, JoinInfo, MSQs,
                            Anno, EqColumnConstants,
                            EqualColumnConstants),
               LCTuple =
                   case qlc_kind(OrigE, Qs, State) of
                       qlc ->
                           {tuple, Anno,
                            [{atom, Anno, qlc_v1},
                             FunW, QCode, Qdata, Opt]};
                       {simple, PAnno, LE, V} ->
                           Init = closure(LE, Anno),
                           simple(Anno, V, Init, PAnno)
                   end,
               LCFun =
                   {'fun', Anno,
                    {clauses, [{clause, Anno, [], [], [LCTuple]}]}},
               {tuple, _, Fs0} =
                   abstr({qlc_lc, undefined, undefined}, Anno),
               Fs = set_field(2, Fs0, LCFun),
               {{tuple, Anno, Fs},
                {RestIntroVs, FWarn ++ XWarn ++ XWarn0}}
        end,
    {NForms, {[], XW}} =
        qlc_mapfold(F2, {IntroVars, []}, ModifiedForms1, State),
    display_forms(NForms),
    {NForms,
     begin
         REC11 = State,
         case REC11 of
             {state, _, _, _, _, _, _, _} ->
                 setelement(6, REC11, XW);
             _ ->
                 error({badrecord, REC11})
         end
     end}.

join_kind(Qs, LcL, AllIVs, Dependencies, State) ->
    {EqualCols2, EqualColsN} =
        equal_columns(Qs, AllIVs, Dependencies, State),
    {MatchCols2, MatchColsN} =
        eq_columns(Qs, AllIVs, Dependencies, State),
    Tables =
        lists:usort([ 
                     T ||
                         {C, _Skip} <- EqualCols2,
                         {T, _} <- C
                    ]
                    ++
                    [ 
                     T ||
                         {C, _Skip} <- EqualCols2,
                         T <- C,
                         is_integer(T)
                    ]),
    if
        EqualColsN =/= [];MatchColsN =/= [] ->
            {[],
             [{get(qlc_current_file), [{LcL, qlc, too_complex_join}]}]};
        EqualCols2 =:= [], MatchCols2 =:= [] ->
            {[], []};
        length(Tables) > 2 ->
            {[],
             [{get(qlc_current_file), [{LcL, qlc, too_many_joins}]}]};
        EqualCols2 =:= MatchCols2 ->
            {EqualCols2, []};
        true ->
            {{EqualCols2, MatchCols2}, []}
    end.

qlc_kind(OrigE, Qs, State) ->
    {OrigFilterData, OrigGeneratorData} =
        qual_data(undo_no_shadows(Qs, State)),
    OrigAllFilters = filters_as_one(OrigFilterData),
    {_FilterData, GeneratorData} = qual_data(Qs),
    case {OrigE, OrigAllFilters, OrigGeneratorData} of
        {{var, _, V},
         {atom, _, true},
         [{_, {gen, {var, PatternL, V}, _LE}}]} ->
            [{_, {gen, _, LE}}] = GeneratorData,
            {simple, PatternL, LE, V};
        _ ->
            qlc
    end.

warn_failing_qualifiers(Qualifiers, AllIVs, Dependencies, State) ->
    {FilterData, GeneratorData} = qual_data(Qualifiers),
    Anon = 1,
    BindFun =
        fun(_Op, Value) ->
               is_bindable(Value)
        end,
    {PFrame, _PatternVars} =
        pattern_frame(GeneratorData, BindFun, Anon, State),
    {_, _, Imported} =
        filter_info(FilterData, AllIVs, Dependencies, State),
    PFrames = frame2frames(PFrame),
    {_, Warnings} =
        lists:foldl(fun({_QId, {fil, _Filter}}, {[] = Frames, Warnings}) ->
                           {Frames, Warnings};
                       ({_QId, {fil, Filter}}, {Frames, Warnings}) ->
                           case
                               filter(reset_anno(Filter),
                                      Frames, BindFun, State, Imported)
                           of
                               [] ->
                                   {[],
                                    [{get(qlc_current_file),
                                      [{loc(element(2, Filter)),
                                        qlc, nomatch_filter}]} |
                                     Warnings]};
                               Frames1 ->
                                   {Frames1, Warnings}
                           end;
                       ({_QId, {gen, Pattern, _}}, {Frames, Warnings}) ->
                           case
                               pattern(Pattern, Anon, [], BindFun,
                                       State)
                           of
                               {failed, _, _} ->
                                   {Frames,
                                    [{get(qlc_current_file),
                                      [{loc(element(2, Pattern)),
                                        qlc, nomatch_pattern}]} |
                                     Warnings]};
                               _ ->
                                   {Frames, Warnings}
                           end
                    end,
                    {PFrames, []},
                    FilterData ++ GeneratorData),
    Warnings.

opt_info(TemplateInfo, Sizes, JoinInfo, MSQs, Anno, EqColumnConstants0,
         EqualColumnConstants0) ->
    SzCls =
        [ 
         {clause, Anno, [{integer, Anno, C}], [], [{integer, Anno, Sz}]} ||
             {C, Sz} <- lists:sort(Sizes)
        ]
        ++
        [{clause, Anno,
          [{var, Anno, '_'}],
          [],
          [{atom, Anno, undefined}]}],
    S = [{size, {'fun', Anno, {clauses, SzCls}}}],
    J = case JoinInfo of
            [] ->
                [];
            _ ->
                [{join, abstr(JoinInfo, Anno)}]
        end,
    TCls0 =
        lists:append([ 
                      [ 
                       {clause, Anno,
                        [abstr(Col, Anno), EqType],
                        [],
                        [abstr(TemplCols, Anno)]} ||
                           {Col, TemplCols} <- TemplateColumns
                      ] ||
                          {EqType, TemplateColumns} <- TemplateInfo
                     ]),
    TCls =
        lists:sort(TCls0)
        ++
        [{clause, Anno,
          [{var, Anno, '_'}, {var, Anno, '_'}],
          [],
          [{nil, Anno}]}],
    T = [{template, {'fun', Anno, {clauses, TCls}}}],
    EqColumnConstants = opt_column_constants(EqColumnConstants0),
    CCs = opt_constants(Anno, EqColumnConstants),
    EqC = {constants, {'fun', Anno, {clauses, CCs}}},
    EqualColumnConstants = opt_column_constants(EqualColumnConstants0),
    ECCs = opt_constants(Anno, EqualColumnConstants),
    EqualC = {equal_constants, {'fun', Anno, {clauses, ECCs}}},
    C = [EqC |
         [ 
          EqualC ||
              true <- [CCs =/= ECCs]
         ]],
    ConstCols =
        [ 
         {IdNo, Col} ||
             {{IdNo, Col}, [_], _FilNs} <- EqualColumnConstants
        ],
    ConstColsFamily = family_list(ConstCols),
    NSortedCols0 =
        [ 
         {IdNo, hd(lists:seq(1, length(Cols) + 1) -- Cols)} ||
             {IdNo, Cols} <- ConstColsFamily
        ],
    NCls =
        [ 
         {clause, Anno,
          [{integer, Anno, IdNo}],
          [],
          [{integer, Anno, N - 1}]} ||
             {IdNo, N} <- NSortedCols0,
             N > 0
        ]
        ++
        [{clause, Anno, [{var, Anno, '_'}], [], [{integer, Anno, 0}]}],
    N = [{n_leading_constant_columns, {'fun', Anno, {clauses, NCls}}}],
    ConstCls =
        [ 
         {clause, Anno,
          [{integer, Anno, IdNo}],
          [],
          [abstr(Cols, Anno)]} ||
             {IdNo, Cols} <- ConstColsFamily
        ]
        ++
        [{clause, Anno, [{var, Anno, '_'}], [], [{nil, Anno}]}],
    CC = [{constant_columns, {'fun', Anno, {clauses, ConstCls}}}],
    MSCls =
        [ 
         {clause, Anno,
          [{integer, Anno, G}],
          [],
          [{tuple, Anno, [MS, abstr(Fs, Anno)]}]} ||
             {G, MS, Fs} <- MSQs
        ]
        ++
        [{clause, Anno,
          [{var, Anno, '_'}],
          [],
          [{atom, Anno, undefined}]}],
    MS = [{match_specs, {'fun', Anno, {clauses, MSCls}}}],
    Cls =
        [ 
         {clause, Anno, [{atom, Anno, Tag}], [], [V]} ||
             {Tag, V} <- lists:append([J, S, T, C, N, CC, MS])
        ]
        ++
        [{clause, Anno,
          [{var, Anno, '_'}],
          [],
          [{atom, Anno, undefined}]}],
    {'fun', Anno, {clauses, Cls}}.

opt_column_constants(ColumnConstants0) ->
    [ 
     CC ||
         {{IdNo, _Col}, Const, _FilNs} = CC <- ColumnConstants0,
         (IdNo =/= 0) or (length(Const) =:= 1)
    ].

opt_constants(Anno, ColumnConstants) ->
    Ns =
        lists:usort([ 
                     IdNo ||
                         {{IdNo, _Col}, _Const, _FilNs} <-
                             ColumnConstants
                    ]),
    [ 
     {clause, Anno,
      [{integer, Anno, IdNo}],
      [],
      [column_fun(ColumnConstants, IdNo, Anno)]} ||
         IdNo <- Ns
    ]
    ++
    [{clause, Anno,
      [{var, Anno, '_'}],
      [],
      [{atom, Anno, no_column_fun}]}].

abstr(Term, Anno) ->
    erl_parse:abstract(Term, loc(Anno)).

join_quals(JoinInfo, QCs, Anno, LcNo, ExtraConstants, AllVars) ->
    {LastGoI, LastSI} =
        lists:foldl(fun({_QId, {_QIVs, {{fil, _}, GoI, SI}}},
                        {GoI0, _SI0})
                           when GoI >= GoI0 ->
                           {GoI + 2, SI + 1};
                       ({_QId, {_QIVs, {{gen, _, _, _}, GoI, SI}}},
                        {GoI0, _SI0})
                           when GoI >= GoI0 ->
                           {GoI + 3, SI + 2};
                       (_, A) ->
                           A
                    end,
                    {0, 0},
                    QCs),
    LastQId =
        lists:max([ 
                   QId ||
                       {QId, {_QIVs, {_Q, _GoI, _SI}}} <- QCs
                  ]),
    QNums =
        case JoinInfo of
            {EqualCols, MatchCols} ->
                EQs = join_qnums(EqualCols),
                MQs = join_qnums(MatchCols),
                [ 
                 {Q1, Q2, '=:='} ||
                     {Q1, Q2} <- MQs
                ]
                ++
                [ 
                 {Q1, Q2, '=='} ||
                     {Q1, Q2} <- EQs -- MQs
                ];
            EqualCols ->
                [ 
                 {Q1, Q2, '=='} ||
                     {Q1, Q2} <- join_qnums(EqualCols)
                ]
        end,
    LD =
        [ 
         begin
             [{QId1, P1, GV1, QIVs1}] =
                 [ 
                  {QId, P, GV, QIVs} ||
                      {QId, {QIVs, {{gen, P, _, GV}, _GoI, _SI}}} <- QCs,
                      (is_record(QId, qid, 3)
                       orelse
                       fail)
                      and
                      (element(3, QId) =:= Q1)
                 ],
             [{QId2, P2, QIVs2}] =
                 [ 
                  {QId, P, QIVs -- [GV]} ||
                      {QId, {QIVs, {{gen, P, _, GV}, _, _}}} <- QCs,
                      (is_record(QId, qid, 3)
                       orelse
                       fail)
                      and
                      (element(3, QId) =:= Q2)
                 ],
             {QId1, Op, P1, GV1, QIVs1 ++ QIVs2, QId2, P2}
         end ||
             {Q1, Q2, Op} <- lists:usort(QNums)
        ],
    Aux = abst_vars(aux_vars(['F', 'H', 'O', 'C'], LcNo, AllVars), Anno),
    F = fun({QId1, Op, P1, GV1, QIVs, QId2, P2}, {QId, GoI, SI}) ->
               AP1 = anon_pattern(P1),
               AP2 = anon_pattern(P2),
               Cs1 = join_handle_constants(QId1, ExtraConstants),
               Cs2 = join_handle_constants(QId2, ExtraConstants),
               H1 = join_handle(AP1, Anno, Aux, Cs1),
               H2 = join_handle(AP2, Anno, Aux, Cs2),
               Join =
                   {join, Op,
                    case QId1 of
                        {qid, _, REC12} ->
                            REC12;
                        REC12 ->
                            error({badrecord, REC12})
                    end,
                    case QId2 of
                        {qid, _, REC13} ->
                            REC13;
                        REC13 ->
                            error({badrecord, REC13})
                    end,
                    H1, H2, Cs1, Cs2},
               G = {NQId =
                        begin
                            REC14 =
                                case QId of
                                    {qid, _, REC16} ->
                                        REC16;
                                    REC16 ->
                                        error({badrecord, REC16})
                                end
                                +
                                1,
                            REC15 = QId,
                            case REC15 of
                                {qid, _, _} ->
                                    setelement(3, REC15, REC14);
                                _ ->
                                    error({badrecord, REC15})
                            end
                        end,
                    {QIVs,
                     {{gen, {cons, Anno, P1, P2}, Join, GV1}, GoI, SI}}},
               A = {NQId, GoI + 3, SI + 2},
               {G, A}
        end,
    {Qs, _} = lists:mapfoldl(F, {LastQId, LastGoI, LastSI}, LD),
    Qs.

join_qnums(Cols) ->
    lists:usort([ 
                 {Q1, Q2} ||
                     {[{Q1, _C1}, {Q2, _C2}], _Skip} <- Cols
                ]).

anon_pattern(P) ->
    MoreThanOnce = lists:usort(occ_vars(P) -- qlc:vars(P)),
    {AP, foo} =
        var_mapfold(fun({var, Anno, V}, A) ->
                           case lists:member(V, MoreThanOnce) of
                               true ->
                                   {{var, Anno, V}, A};
                               false ->
                                   {{var, Anno, '_'}, A}
                           end
                    end,
                    foo, P),
    AP.

join_handle(AP, Anno, [F, H, O, C], Constants) ->
    case {AP, Constants} of
        {{var, _, _}, []} ->
            {'fun', Anno, {clauses, [{clause, Anno, [H], [], [H]}]}};
        _ ->
            A = anno0(),
            G0 =
                [ 
                 begin
                     Call =
                         {call, A,
                          {atom, A, element},
                          [{integer, A, Col}, O]},
                     list2op([ 
                              {op, A, Op, Con, Call} ||
                                  {Con, Op} <- Cs
                             ],
                             'or')
                 end ||
                     {Col, Cs} <- Constants
                ],
            G = if
                    G0 =:= [] ->
                        G0;
                    true ->
                        [G0]
                end,
            CC1 =
                {clause, Anno,
                 [AP],
                 G,
                 [{cons, Anno, O,
                   closure({call, Anno, F, [F, C]}, Anno)}]},
            CC2 =
                {clause, Anno,
                 [{var, Anno, '_'}],
                 [],
                 [{call, Anno, F, [F, C]}]},
            Case = {'case', Anno, O, [CC1, CC2]},
            Cls =
                [{clause, Anno,
                  [{var, Anno, '_'}, {nil, Anno}],
                  [],
                  [{nil, Anno}]},
                 {clause, Anno, [F, {cons, Anno, O, C}], [], [Case]},
                 {clause, Anno,
                  [F, C],
                  [[{call, Anno, {atom, Anno, is_function}, [C]}]],
                  [{call, Anno, F, [F, {call, Anno, C, []}]}]},
                 {clause, Anno, [{var, Anno, '_'}, C], [], [C]}],
            Fun = {'fun', Anno, {clauses, Cls}},
            {'fun', Anno,
             {clauses,
              [{clause, Anno,
                [H],
                [],
                [{match, Anno, F, Fun},
                 closure({call, Anno, F, [F, H]}, Anno)]}]}}
    end.

join_handle_constants(QId, ExtraConstants) ->
    IdNo =
        case QId of
            {qid, _, REC17} ->
                REC17;
            REC17 ->
                error({badrecord, REC17})
        end,
    case lists:keyfind(IdNo, 1, ExtraConstants) of
        {IdNo, ConstOps} ->
            ConstOps;
        false ->
            []
    end.

column_fun(Columns, QualifierNumber, LcL) ->
    A = anno0(),
    ColCls0 =
        [ 
         begin
             true = Vs0 =/= [],
             Vs1 = list2cons(Vs0),
             Fils1 =
                 {tuple, A,
                  [{atom, A, FTag},
                   lists:foldr(fun(F, Ac) ->
                                      {cons, A, {integer, A, F}, Ac}
                               end,
                               {nil, A},
                               Fils)]},
             Tag =
                 case ordsets:to_list(qlc:vars(Vs1)) of
                     Imp when length(Imp) > 0, length(Vs0) > 1 ->
                         usort_needed;
                     _ ->
                         values
                 end,
             Vs = {tuple, A, [{atom, A, Tag}, Vs1, Fils1]},
             {clause, A, [erl_parse:abstract(Col)], [], [Vs]}
         end ||
             {{CIdNo, Col}, Vs0, {FTag, Fils}} <- Columns,
             CIdNo =:= QualifierNumber
        ]
        ++
        [{clause, A, [{var, A, '_'}], [], [{atom, A, false}]}],
    ColCls = set_anno(ColCls0, LcL),
    {'fun', LcL, {clauses, ColCls}}.

template_columns(Qs0, E0, AllIVs, Dependencies, State) ->
    E = expand_expr_records(pre_expand(E0), State),
    TemplateAsPattern = template_as_pattern(E),
    Qs = [TemplateAsPattern | Qs0],
    EqualColumns = equal_columns2(Qs, AllIVs, Dependencies, State),
    MatchColumns = eq_columns2(Qs, AllIVs, Dependencies, State),
    Equal = template_cols(EqualColumns),
    Match = template_cols(MatchColumns),
    Anno = anno0(),
    if
        Match =:= Equal ->
            [{{var, Anno, '_'}, Match}];
        true ->
            [{{atom, Anno, '=='}, Equal}, {{atom, Anno, '=:='}, Match}]
    end.

equal_columns2(Qualifiers, AllIVs, Dependencies, State) ->
    {JI, _Skip} =
        join_info(Qualifiers, AllIVs, Dependencies, State,
                  _JoinOp = '=='),
    JI.

eq_columns2(Qualifiers, AllIVs, Dependencies, State) ->
    {JI, _SKip} =
        join_info(Qualifiers, AllIVs, Dependencies, State,
                  _JoinOp = '=:='),
    JI.

template_cols(ColumnClasses) ->
    lists:sort([ 
                {{IdNo, Col}, lists:usort(Cs)} ||
                    Class <- ColumnClasses,
                    {IdNo, Col} <- Class,
                    IdNo =/= 0,
                    []
                    =/=
                    (Cs =
                         [ 
                          C ||
                              {0, C} <- Class
                         ])
               ]).

template_as_pattern(E) ->
    P = simple_template(E),
    {{qid, template, 0}, foo, foo, {gen, P, {nil, anno0()}}}.

simple_template({call, Anno,
                 {remote, _, {atom, _, erlang}, {atom, _, element}} =
                     Call,
                 [{integer, _, I} = A1, A2]})
    when I > 0 ->
    {call, Anno, Call, [A1, simple_template(A2)]};
simple_template({var, _, _} = E) ->
    E;
simple_template({tuple, Anno, Es}) ->
    {tuple, Anno,
     [ 
      simple_template(E) ||
          E <- Es
     ]};
simple_template({cons, Anno, H, T}) ->
    {cons, Anno, simple_template(H), simple_template(T)};
simple_template(E) ->
    case catch erl_parse:normalise(E) of
        {'EXIT', _} ->
            unique_var();
        _ ->
            E
    end.

qualifier_dependencies(Qualifiers, IntroVs) ->
    Intro =
        sofs:relation([ 
                       {IV, QId} ||
                           {QId, IVs} <- IntroVs,
                           IV <- IVs
                      ]),
    {FilterData, _} = qual_data(Qualifiers),
    Used =
        sofs:relation([ 
                       {QId, UV} ||
                           {QId, {fil, F}} <- FilterData,
                           UV <- qlc:vars(F)
                      ]),
    Depend = sofs:strict_relation(sofs:relative_product(Used, Intro)),
    G = sofs:family_to_digraph(sofs:relation_to_family(Depend)),
    Dep0 =
        [ 
         {V, digraph_utils:reachable_neighbours([V], G)} ||
             V <- digraph:vertices(G)
        ],
    true = digraph:delete(G),
    FilterIds = sofs:set(filter_ids(Qualifiers)),
    Dep1 = sofs:restriction(sofs:family(Dep0), FilterIds),
    NoDep = sofs:constant_function(FilterIds, sofs:empty_set()),
    sofs:to_external(sofs:family_union(Dep1, NoDep)).

filter_ids(Qualifiers) ->
    {FilterData, _} = qual_data(Qualifiers),
    [ 
     QId ||
         {QId, _} <- FilterData
    ].

match_spec_quals(Template, Dependencies, Qualifiers, State) ->
    {FilterData, GeneratorData} = qual_data(Qualifiers),
    NoFilterGIds =
        [ 
         GId ||
             {GId, _} <- GeneratorData
        ]
        --
        lists:flatmap(fun({_, GIds}) ->
                             GIds
                      end,
                      Dependencies),
    Filters = filter_list(FilterData, Dependencies, State),
    Candidates =
        [ 
         {case QId2 of
              {qid, _, REC18} ->
                  REC18;
              REC18 ->
                  error({badrecord, REC18})
          end,
          Pattern,
          [Filter],
          F} ||
             {QId, [QId2]} <- Dependencies,
             {GQId, {gen, Pattern, _}} <- GeneratorData,
             GQId =:= QId2,
             {FQId, {fil, F}} = Filter <- Filters,
             FQId =:= QId
        ]
        ++
        [ 
         {case GId of
              {qid, _, REC19} ->
                  REC19;
              REC19 ->
                  error({badrecord, REC19})
          end,
          Pattern, [],
          {atom, anno0(), true}} ||
             {GId, {gen, Pattern, _}} <- GeneratorData,
             lists:member(GId, NoFilterGIds)
        ],
    E = {nil, anno0()},
    GF =
        [ 
         {{GNum, Pattern}, Filter} ||
             {GNum, Pattern, Filter, F} <- Candidates,
             no =/= try_ms(E, Pattern, F, State)
        ],
    GFF =
        sofs:relation_to_family(sofs:relation(GF,
                                              [{gnum_pattern, [filter]}])),
    GFFL = sofs:to_external(sofs:family_union(GFF)),
    try
        [{{GNum, Pattern}, GFilterData}] = GFFL,
        true = length(GFilterData) =:= length(FilterData),
        [_] = GeneratorData,
        AbstrMS = gen_ms(Template, Pattern, GFilterData, State),
        [{GNum, AbstrMS, all}]
    catch
        _:_ ->
            {TemplVar, _} = anon_var({var, anno0(), '_'}, 0),
            [ 
             one_gen_match_spec(GNum, Pattern, GFilterData, State,
                                TemplVar) ||
                 {{GNum, Pattern}, GFilterData} <- GFFL
            ]
    end.

one_gen_match_spec(GNum, Pattern0, GFilterData, State, TemplVar) ->
    {E, Pattern} = pattern_as_template(Pattern0, TemplVar),
    AbstrMS = gen_ms(E, Pattern, GFilterData, State),
    {GNum, AbstrMS,
     [ 
      case FId of
          {qid, _, REC20} ->
              REC20;
          REC20 ->
              error({badrecord, REC20})
      end ||
          {FId, _} <- GFilterData
     ]}.

gen_ms(E, Pattern, GFilterData, State) ->
    {ok, MS, AMS} =
        try_ms(E, Pattern, filters_as_one(GFilterData), State),
    case MS of
        [{'$1', [true], ['$1']}] ->
            {atom, anno0(), no_match_spec};
        _ ->
            AMS
    end.

pattern_as_template({var, _, '_'}, TemplVar) ->
    {TemplVar, TemplVar};
pattern_as_template({var, _, _} = V, _TemplVar) ->
    {V, V};
pattern_as_template({match, Anno, E, {var, _, '_'}}, TemplVar) ->
    {TemplVar, {match, Anno, E, TemplVar}};
pattern_as_template({match, Anno, {var, _, '_'}, E}, TemplVar) ->
    {TemplVar, {match, Anno, E, TemplVar}};
pattern_as_template({match, _, _E, {var, _, _} = V} = P, _TemplVar) ->
    {V, P};
pattern_as_template({match, _, {var, _, _} = V, _E} = P, _TemplVar) ->
    {V, P};
pattern_as_template(E, TemplVar) ->
    Anno = anno0(),
    {TemplVar, {match, Anno, E, TemplVar}}.

constants_and_sizes(Qualifiers0, E, Dependencies, AllIVs, State) ->
    TemplateAsPattern = template_as_pattern(E),
    Qualifiers = [TemplateAsPattern | Qualifiers0],
    {FilterData, GeneratorData} = qual_data(Qualifiers),
    {Filter, Anon1, Imported} =
        filter_info(FilterData, AllIVs, Dependencies, State),
    PatBindFun =
        fun(_Op, Value) ->
               is_bindable(Value)
        end,
    {PatternFrame, PatternVars} =
        pattern_frame(GeneratorData, PatBindFun, Anon1, State),
    PatternFrames = frame2frames(PatternFrame),
    FilterFun =
        fun(BindFun) ->
               filter(Filter, PatternFrames, BindFun, State, Imported)
        end,
    SzFs = FilterFun(PatBindFun),
    SizeInfo = pattern_sizes(PatternVars, SzFs),
    SelectorFun = const_selector(Imported),
    PatternConstants =
        lists:flatten(frames_to_columns(PatternFrames, PatternVars,
                                        deref_pattern(Imported),
                                        SelectorFun, Imported, '=:=')),
    {EqColumnConstants, _EqExtraConsts} =
        constants(FilterFun, PatternVars, PatternConstants,
                  PatternFrame, FilterData, Dependencies,
                  _LookupOp1 = '=:=',
                  Imported, State),
    {EqualColumnConstants, EqualExtraConsts} =
        constants(FilterFun, PatternVars, PatternConstants,
                  PatternFrame, FilterData, Dependencies,
                  _LookupOp2 = '==',
                  Imported, State),
    ExtraCon1 =
        [ 
         {{GId, Col}, {Val, Op}} ||
             {Consts, Op} <- [{EqualExtraConsts, '=='}],
             {{GId, Col}, Val} <- Consts
        ],
    ExtraConstants =
        family_list([ 
                     {GId, {Col, ValOps}} ||
                         {{GId, Col}, ValOps} <- family_list(ExtraCon1)
                    ]),
    {EqColumnConstants, EqualColumnConstants, ExtraConstants, SizeInfo}.

constants(FilterFun, PatternVars, PatternConstants, PatternFrame,
          FilterData, Dependencies, LookupOp, Imported, State) ->
    BindFun =
        fun(_Op, Value) ->
               is_bindable(Value)
        end,
    Fs = FilterFun(BindFun),
    SelectorFun = const_selector(Imported),
    ColumnConstants0 =
        frames_to_columns(Fs, PatternVars,
                          deref_lookup(Imported, LookupOp),
                          SelectorFun, Imported, LookupOp),
    ColumnConstants1 = lists:flatten(ColumnConstants0),
    ExtraConstants =
        [ 
         {{GId, Col}, Val} ||
             {{GId, Col}, Vals} <- ColumnConstants1 -- PatternConstants,
             GId =/= 0,
             Val <- Vals
        ],
    ColumnConstants =
        lu_skip(ColumnConstants1, FilterData, PatternFrame, PatternVars,
                Dependencies, State, Imported, LookupOp),
    {ColumnConstants, ExtraConstants}.

deref_lookup(Imported, '==') ->
    fun(PV, F) ->
           deref_values(PV, F, Imported)
    end;
deref_lookup(Imported, '=:=') ->
    BFun =
        fun(DV, Op) ->
               Op =:= '=:='
               orelse
               free_of_integers(DV, Imported)
        end,
    fun(PV, F) ->
           deref_values(PV, F, BFun, Imported)
    end.

lu_skip(ColConstants, FilterData, PatternFrame, PatternVars,
        Dependencies, State, Imported, LookupOp) ->
    FailSelector =
        fun(_Frame) ->
               fun(Value) ->
                      {yes, Value}
               end
        end,
    PatternFrames = frame2frames(PatternFrame),
    PatternColumns =
        lists:flatten(frames_to_columns(PatternFrames, PatternVars,
                                        deref_pattern(Imported),
                                        FailSelector, Imported,
                                        LookupOp)),
    BindFun =
        fun(_Op, Value) ->
               is_bindable(Value)
        end,
    ColFil =
        [ 
         {Column,
          case FId of
              {qid, _, REC21} ->
                  REC21;
              REC21 ->
                  error({badrecord, REC21})
          end} ||
             {FId, {fil, Fil}} <-
                 filter_list(FilterData, Dependencies, State),
             []
             =/=
             (SFs =
                  safe_filter(reset_anno(Fil),
                              PatternFrames, BindFun, State, Imported)),
             {GId, PV} <- PatternVars,
             []
             =/=
             (Cols =
                  hd(frames_to_columns(SFs,
                                       [{GId, PV}],
                                       deref_lu_skip(LookupOp, Imported),
                                       const_selector(Imported),
                                       Imported, LookupOp))),
             length(D = Cols -- PatternColumns) =:= 1,
             {{_, Col} = Column, Constants} <- D,
             lists:all(fun(Frame) ->
                              {VarI, FrameI} =
                                  unify_column(Frame, PV, Col, BindFun,
                                               Imported),
                              VarValues =
                                  deref_skip(VarI, FrameI, LookupOp,
                                             Imported),
                              {NV, F1} =
                                  unify_column(PatternFrame, PV, Col,
                                               BindFun, Imported),
                              F2 =
                                  unify_var_bindings(VarValues, '=:=',
                                                     NV, F1, BindFun,
                                                     Imported, false),
                              LookedUpConstants =
                                  case
                                      lists:keyfind(Column, 1,
                                                    ColConstants)
                                  of
                                      false ->
                                          [];
                                      {Column, LUCs} ->
                                          LUCs
                                  end,
                              length(VarValues) =< 1
                              andalso
                              Constants -- LookedUpConstants =:= []
                              andalso
                              bindings_is_subset(Frame, F2, Imported)
                       end,
                       SFs)
        ],
    ColFils = family_list(ColFil),
    [ 
     {Col, Constants, skip_tag(Col, ColFils, FilterData)} ||
         {Col, Constants} <- ColConstants
    ].

deref_skip(E, F, _LookupOp, Imported) ->
    deref(E, F, Imported).

deref_lu_skip('==', Imported) ->
    BFun =
        fun(DV, Op) ->
               Op =:= '=='
               orelse
               free_of_integers(DV, Imported)
        end,
    fun(PV, F) ->
           deref_values(PV, F, BFun, Imported)
    end;
deref_lu_skip('=:=', Imported) ->
    fun(PV, F) ->
           deref_values(PV, F, Imported)
    end.

equal_columns(Qualifiers, AllIVs, Dependencies, State) ->
    {Cs, Skip} =
        join_info(Qualifiers, AllIVs, Dependencies, State,
                  _JoinOp = '=='),
    join_gens(Cs, Qualifiers, Skip).

eq_columns(Qualifiers, AllIVs, Dependencies, State) ->
    {Cs, Skip} =
        join_info(Qualifiers, AllIVs, Dependencies, State,
                  _JoinOp = '=:='),
    join_gens(Cs, Qualifiers, Skip).

join_gens(Cs0, Qs, Skip) ->
    Cs =
        [ 
         family_list(C) ||
             C <- Cs0
        ],
    {FD, _GeneratorData} = qual_data(Qs),
    {join_gens2(lists:filter(fun(C) ->
                                    length(C) =:= 2
                             end,
                             Cs),
                FD, Skip),
     join_gens2(lists:filter(fun(C) ->
                                    length(C) > 2
                             end,
                             Cs),
                FD, Skip)}.

join_gens2(Cs0, FilterData, Skip) ->
    [ 
     {J,
      skip_tag(case lists:keyfind(J, 1, Skip) of
                   {J, FilL} ->
                       FilL;
                   false ->
                       []
               end,
               FilterData)} ||
         J <-
             lists:append([ 
                           qlc:all_selections(C) ||
                               C <- Cs0
                          ])
    ].

skip_tag(FilList, FilterData) ->
    {if
         length(FilterData) =:= length(FilList) ->
             all;
         true ->
             some
     end,
     FilList}.

skip_tag(Col, ColFils, FilterData) ->
    case lists:keyfind(Col, 1, ColFils) of
        {Col, FilL} ->
            Tag =
                if
                    length(FilterData) =:= length(FilL) ->
                        all;
                    true ->
                        some
                end,
            {Tag, FilL};
        false ->
            {some, []}
    end.

join_info(Qualifiers, AllIVs, Dependencies, State, JoinOp) ->
    {FilterData, GeneratorData} = qual_data(Qualifiers),
    {Filter, Anon1, Imported} =
        filter_info(FilterData, AllIVs, Dependencies, State),
    BindFun =
        fun(_Op, V) ->
               bind_no_const(V, Imported)
        end,
    {PatternFrame, PatternVars} =
        pattern_frame(GeneratorData, BindFun, Anon1, State),
    PatternFrames = frame2frames(PatternFrame),
    Fs = filter(Filter, PatternFrames, BindFun, State, Imported),
    SelectorFun = no_const_selector(Imported),
    Cols =
        frames_to_columns(Fs, PatternVars,
                          fun(PV1, F) ->
                                 deref_join(PV1, F, JoinOp)
                          end,
                          SelectorFun, Imported, '=:='),
    JC = join_classes(Cols),
    Skip =
        join_skip(JC, FilterData, PatternFrame, PatternVars,
                  Dependencies, State, Imported, JoinOp),
    {JC, Skip}.

deref_join(E, Frame, '==') ->
    deref_values(E, Frame, _Imp = []);
deref_join(E, Frame, '=:=') ->
    deref_values(E, Frame,
                 fun(_DV, Op) ->
                        Op =:= '=:='
                 end,
                 all).

join_classes(Cols0) ->
    ColVar = sofs:relation(lists:append(Cols0)),
    Cols = sofs:partition(2, ColVar),
    [ 
     [ 
      C ||
          {C, _} <- Cs
     ] ||
         Cs <- sofs:to_external(Cols),
         length(Cs) > 1
    ].

join_skip(JoinClasses, FilterData, PatternFrame, PatternVars,
          Dependencies, State, Imported, JoinOp) ->
    PatternFrames = frame2frames(PatternFrame),
    ColFil =
        [ 
         {JoinClass,
          case FId of
              {qid, _, REC22} ->
                  REC22;
              REC22 ->
                  error({badrecord, REC22})
          end} ||
             [{Q1, C1}, {Q2, C2}] = JoinClass <- JoinClasses,
             {GId1, PV1} <- PatternVars,
             (is_record(GId1, qid, 3)
              orelse
              fail)
             and
             (element(3, GId1) =:= Q1),
             {GId2, PV2} <- PatternVars,
             (is_record(GId2, qid, 3)
              orelse
              fail)
             and
             (element(3, GId2) =:= Q2),
             {FId, {fil, Fil}} <-
                 filter_list(FilterData, Dependencies, State),
             {value, {_, GIds}} <-
                 [lists:keysearch(FId, 1, Dependencies)],
             GIds =:= lists:sort([GId1, GId2]),
             begin
                 BindFun =
                     fun(_Op, V) ->
                            is_bindable(V)
                     end,
                 {V1, JF1} =
                     unify_column(PatternFrame, PV1, C1, BindFun,
                                  Imported),
                 {V2, JF2} =
                     unify_column(JF1, PV2, C2, BindFun, Imported),
                 JF = unify(JoinOp, V1, V2, JF2, BindFun, Imported),
                 SFs =
                     safe_filter(reset_anno(Fil),
                                 PatternFrames, BindFun, State,
                                 Imported),
                 JImp = qlc:vars([SFs, JF]),
                 lists:all(fun(Frame) ->
                                  bindings_is_subset(Frame, JF, JImp)
                           end,
                           SFs)
                 andalso
                 SFs =/= []
             end
        ],
    family_list(ColFil).

filter_info(FilterData, AllIVs, Dependencies, State) ->
    FilterList = filter_list(FilterData, Dependencies, State),
    Filter0 = reset_anno(filters_as_one(FilterList)),
    Anon0 = 0,
    {Filter, Anon1} = anon_var(Filter0, Anon0),
    Imported =
        ordsets:subtract(qlc:vars(Filter), ordsets:from_list(AllIVs)),
    {Filter, Anon1, Imported}.

filter_list(FilterData, Dependencies, State) ->
    sel_gf(FilterData, 1, Dependencies, State, [], []).

sel_gf([], _N, _Deps, _RDs, _Gens, _Gens1) ->
    [];
sel_gf([{{qid, _, N} = Id, {fil, F}} = Fil | FData],
       N, Deps, State, Gens, Gens1) ->
    case is_guard_test(F, State) of
        true ->
            {Id, GIds} = lists:keyfind(Id, 1, Deps),
            case length(GIds) =< 1 of
                true ->
                    case generators_in_scope(GIds, Gens1) of
                        true ->
                            [Fil |
                             sel_gf(FData,
                                    N + 1,
                                    Deps, State, Gens, Gens1)];
                        false ->
                            sel_gf(FData, N + 1, Deps, State, [], [])
                    end;
                false ->
                    case generators_in_scope(GIds, Gens) of
                        true ->
                            [Fil |
                             sel_gf(FData, N + 1, Deps, State, Gens, [])];
                        false ->
                            sel_gf(FData, N + 1, Deps, State, [], [])
                    end
            end;
        false ->
            sel_gf(FData, N + 1, Deps, State, [], [])
    end;
sel_gf(FData, N, Deps, State, Gens, Gens1) ->
    sel_gf(FData, N + 1, Deps, State, [N | Gens], [N | Gens1]).

generators_in_scope(GenIds, GenNumbers) ->
    lists:all(fun({qid, _, N}) ->
                     lists:member(N, GenNumbers)
              end,
              GenIds).

pattern_frame(GeneratorData, BindFun, Anon1, State) ->
    Frame0 = [],
    {PatternFrame, _Anon2, PatternVars} =
        lists:foldl(fun({QId, {gen, Pattern, _}}, {F0, An0, PVs}) ->
                           {F1, An1, PV} =
                               pattern(Pattern, An0, F0, BindFun, State),
                           {F1, An1, [{QId, PV} | PVs]}
                    end,
                    {Frame0, Anon1, []},
                    GeneratorData),
    {PatternFrame, PatternVars}.

const_selector(Imported) ->
    selector(Imported, fun is_const/2).

no_const_selector(Imported) ->
    selector(Imported,
             fun(V, I) ->
                    not is_const(V, I)
             end).

selector(Imported, TestFun) ->
    fun(_Frame) ->
           fun(Value) ->
                  case TestFun(Value, Imported) of
                      true ->
                          {yes, Value};
                      false ->
                          no
                  end
           end
    end.

bind_no_const(Value, Imported) ->
    case is_const(Value, Imported) of
        true ->
            false;
        false ->
            is_bindable(Value)
    end.

is_const(Value, Imported) ->
    [] =:= ordsets:to_list(ordsets:subtract(qlc:vars(Value), Imported)).

is_bindable(Value) ->
    case normalise(Value) of
        {ok, _C} ->
            true;
        not_ok ->
            false
    end.

pattern(P0, AnonI, Frame0, BindFun, State) ->
    P1 =
        try
            expand_pattern_records(P0, State)
        catch
            _:_ ->
                P0
        end,
    P2 = reset_anno(P1),
    {P3, AnonN} = anon_var(P2, AnonI),
    {P4, F1} = match_in_pattern(tuple2cons(P3), Frame0, BindFun),
    {P, F2} = element_calls(P4, F1, BindFun, _Imp = []),
    {var, _, PatternVar} = UniqueVar = unique_var(),
    F = unify('=:=', UniqueVar, P, F2, BindFun, _Imported = []),
    {F, AnonN, PatternVar}.

frame2frames(failed) ->
    [];
frame2frames(F) ->
    [F].

match_in_pattern({match, _, E10, E20}, F0, BF) ->
    {E1, F1} = match_in_pattern(E10, F0, BF),
    {E2, F} = match_in_pattern(E20, F1, BF),
    E = case BF('=:=', E1) of
            true ->
                E1;
            false ->
                E2
        end,
    {E, unify('=:=', E1, E2, F, BF, _Imported = [])};
match_in_pattern(T, F0, BF) when is_tuple(T) ->
    {L, F} = match_in_pattern(tuple_to_list(T), F0, BF),
    {list_to_tuple(L), F};
match_in_pattern([E0 | Es0], F0, BF) ->
    {E, F1} = match_in_pattern(E0, F0, BF),
    {Es, F} = match_in_pattern(Es0, F1, BF),
    {[E | Es], F};
match_in_pattern(E, F, _BF) ->
    {E, F}.

anon_var(E, AnonI) ->
    var_mapfold(fun({var, Anno, '_'}, N) ->
                       {{var, Anno, N}, N + 1};
                   (Var, N) ->
                       {Var, N}
                end,
                AnonI, E).

reset_anno(T) ->
    set_anno(T, anno0()).

set_anno(T, A) ->
    map_anno(fun(_L) ->
                    A
             end,
             T).

-record(fstate,{state, bind_fun, imported}).

filter(_E, [] = Frames0, _BF, _State, _Imported) ->
    Frames0;
filter(E0, Frames0, BF, State, Imported) ->
    E = pre_expand(E0),
    FState = {fstate, State, BF, Imported},
    filter1(E, Frames0, FState).

filter1({op, _, Op, L0, R0}, Fs, FS) when Op =:= '=:='; Op =:= '==' ->
    {fstate, S, BF, Imported} = FS,
    lists:flatmap(fun(F0) ->
                         {L, F1} = prep_expr(L0, F0, S, BF, Imported),
                         {R, F2} = prep_expr(R0, F1, S, BF, Imported),
                         case unify(Op, L, R, F2, BF, Imported) of
                             failed ->
                                 [];
                             F ->
                                 [F]
                         end
                  end,
                  Fs);
filter1({op, _, Op, L, R}, Fs, FS) when Op =:= 'and'; Op =:= 'andalso' ->
    filter1(R, filter1(L, Fs, FS), FS);
filter1({op, _, Op, L, R}, Fs, FS)
    when Op =:= 'or'; Op =:= 'orelse'; Op =:= 'xor' ->
    filter1(L, Fs, FS) ++ filter1(R, Fs, FS);
filter1({atom, _, Atom}, _Fs, _FS) when Atom =/= true ->
    [];
filter1({call, Anno,
         {remote, _, {atom, _, erlang}, {atom, _, is_record}},
         [T, R]},
        Fs, FS) ->
    filter1({op, Anno, '=:=',
             {call, Anno,
              {remote, Anno,
               {atom, Anno, erlang},
               {atom, Anno, element}},
              [{integer, Anno, 1}, T]},
             R},
            Fs, FS);
filter1({call, Anno,
         {remote, Anno1,
          {atom, _, erlang} = M,
          {atom, Anno2, is_record}},
         [T, R, _Sz]},
        Fs, FS) ->
    filter1({call, Anno,
             {remote, Anno1, M, {atom, Anno2, is_record}},
             [T, R]},
            Fs, FS);
filter1(_E, Fs, _FS) ->
    Fs.

safe_filter(_E, [] = Frames0, _BF, _State, _Imported) ->
    Frames0;
safe_filter(E0, Frames0, BF, State, Imported) ->
    E = pre_expand(E0),
    FState = {fstate, State, BF, Imported},
    safe_filter1(E, Frames0, FState).

safe_filter1({op, _, Op, L0, R0}, Fs, FS) when Op =:= '=:='; Op =:= '==' ->
    {fstate, S, BF, Imported} = FS,
    lists:flatmap(fun(F0) ->
                         {L, F1} = prep_expr(L0, F0, S, BF, Imported),
                         {R, F2} = prep_expr(R0, F1, S, BF, Imported),
                         case safe_unify(Op, L, R, F2, BF, Imported) of
                             failed ->
                                 [];
                             F ->
                                 [F]
                         end
                  end,
                  Fs);
safe_filter1({op, _, Op, L, R}, Fs, FS)
    when Op =:= 'and'; Op =:= 'andalso' ->
    safe_filter1(R, safe_filter1(L, Fs, FS), FS);
safe_filter1({op, _, Op, L, R}, Fs, FS)
    when Op =:= 'or'; Op =:= 'orelse' ->
    safe_filter1(L, Fs, FS) ++ safe_filter1(R, Fs, FS);
safe_filter1({atom, _, true}, Fs, _FS) ->
    Fs;
safe_filter1(_E, _Fs, _FS) ->
    [].

pre_expand({call, Anno1, {atom, Anno2, record}, As}) ->
    pre_expand({call, Anno1, {atom, Anno2, is_record}, As});
pre_expand({call, Anno, {atom, _, _} = F, As}) ->
    pre_expand({call, Anno, {remote, Anno, {atom, Anno, erlang}, F}, As});
pre_expand({call, Anno, {tuple, _, [M, F]}, As}) ->
    pre_expand({call, Anno, {remote, Anno, M, F}, As});
pre_expand(T) when is_tuple(T) ->
    list_to_tuple(pre_expand(tuple_to_list(T)));
pre_expand([E | Es]) ->
    [pre_expand(E) | pre_expand(Es)];
pre_expand(T) ->
    T.

frames_to_columns([], _PatternVars, _DerefFun, _SelectorFun, _Imp,
                  _CompOp) ->
    [];
frames_to_columns(Fs, PatternVars, DerefFun, SelectorFun, Imp, CompOp) ->
    SizesVarsL =
        [ 
         begin
             PatVar = {var, anno0(), PV},
             PatternSizes =
                 [ 
                  pattern_size([F], PatVar, false) ||
                      F <- Fs
                 ],
             MaxPZ = lists:max([0 | PatternSizes -- [undefined]]),
             Vars = pat_vars(MaxPZ),
             {case PatternId of
                  {qid, _, REC23} ->
                      REC23;
                  REC23 ->
                      error({badrecord, REC23})
              end,
              PatVar, PatternSizes, Vars}
         end ||
             {PatternId, PV} <- PatternVars
        ],
    BF =
        fun(_Op, Value) ->
               is_bindable(Value)
        end,
    Fun =
        fun({_PatN, PatVar, PatSizes, Vars}, Frames) ->
               [ 
                unify('=:=',
                      pat_tuple(Sz, Vars),
                      PatVar, Frame, BF, Imp) ||
                    Sz <- PatSizes&&
                    Frame <- Frames
               ]
        end,
    NFs = lists:foldl(Fun, Fs, SizesVarsL),
    [ 
     frames2cols(NFs, PatN, PatSizes, Vars, DerefFun, SelectorFun,
                 CompOp) ||
         {PatN, _PatVar, PatSizes, Vars} <- SizesVarsL
    ].

frames2cols(Fs, PatN, PatSizes, Vars, DerefFun, SelectorFun, CompOp) ->
    Rs =
        [ 
         begin
             RL =
                 [ 
                  {{PatN, Col}, cons2tuple(element(2, Const))} ||
                      V <- lists:sublist(Vars, PatSz)&&
                      Col <- lists:seq(1, PatSz),
                      tl(Consts = DerefFun(V, F)) =:= [],
                      (Const = (SelectorFun(F))(hd(Consts))) =/= no
                 ],
             sofs:relation(RL)
         end ||
             F <- Fs&&
             PatSz <- PatSizes
        ],
    Ss = sofs:from_sets(Rs),
    D = sofs:intersection(sofs:projection(fun(S) ->
                                                 sofs:projection(1, S)
                                          end,
                                          Ss)),
    Cs = sofs:restriction(sofs:relation_to_family(sofs:union(Ss)), D),
    [ 
     C ||
         {_, Vs} = C <- sofs:to_external(Cs),
         not col_ignore(Vs, CompOp)
    ].

pat_vars(N) ->
    [ 
     unique_var() ||
         _ <- lists:seq(1, N)
    ].

pat_tuple(Sz, Vars) when is_integer(Sz), Sz > 0 ->
    TupleTail = unique_var(),
    {cons_tuple, list2cons(lists:sublist(Vars, Sz) ++ TupleTail)};
pat_tuple(_, _Vars) ->
    unique_var().

col_ignore(_Vs, '=:=') ->
    false;
col_ignore(Vs, '==') ->
    length(Vs)
    =/=
    length(lists:usort([ 
                        element(2, normalise(V)) ||
                            V <- Vs
                       ])).

pattern_sizes(PatternVars, Fs) ->
    [ 
     {case QId of
          {qid, _, REC24} ->
              REC24;
          REC24 ->
              error({badrecord, REC24})
      end,
      Size} ||
         {QId, PV} <- PatternVars,
         undefined
         =/=
         (Size = pattern_size(Fs, {var, anno0(), PV}, true))
    ].

pattern_size(Fs, PatternVar, Exact) ->
    Fun =
        fun(F) ->
               (deref_pattern(_Imported = []))(PatternVar, F)
        end,
    Derefs = lists:flatmap(Fun, Fs),
    Szs =
        [ 
         pattern_sz(Cs, 0, Exact) ||
             {cons_tuple, Cs} <- Derefs
        ],
    case lists:usort(Szs) of
        [Sz] when is_integer(Sz), Sz >= 0 ->
            Sz;
        [] when not Exact ->
            0;
        _ ->
            undefined
    end.

pattern_sz({cons, _, _C, E}, Col, Exact) ->
    pattern_sz(E, Col + 1, Exact);
pattern_sz({nil, _}, Sz, _Exact) ->
    Sz;
pattern_sz(_, _Sz, true) ->
    undefined;
pattern_sz(_, Sz, false) ->
    Sz.

deref_pattern(Imported) ->
    fun(PV, F) ->
           deref_values(PV, F, Imported)
    end.

prep_expr(E, F, S, BF, Imported) ->
    element_calls(tuple2cons(expand_expr_records(E, S)),
                  F, BF, Imported).

unify_column(Frame, Var, Col, BindFun, Imported) ->
    A = anno0(),
    Call =
        {call, A,
         {remote, A, {atom, A, erlang}, {atom, A, element}},
         [{integer, A, Col}, {var, A, Var}]},
    element_calls(Call, Frame, BindFun, Imported).

element_calls({call, _,
               {remote, _, {atom, _, erlang}, {atom, _, element}},
               [{integer, _, I}, Term0]},
              F0, BF, Imported)
    when I > 0 ->
    TupleTail = unique_var(),
    VarsL =
        [ 
         unique_var() ||
             _ <- lists:seq(1, I)
        ],
    Vars = VarsL ++ TupleTail,
    Tuple = {cons_tuple, list2cons(Vars)},
    VarI = lists:nth(I, VarsL),
    {Term, F} = element_calls(Term0, F0, BF, Imported),
    {VarI, unify('=:=', Tuple, Term, F, BF, Imported)};
element_calls(T, F0, BF, Imported) when is_tuple(T) ->
    {L, F} = element_calls(tuple_to_list(T), F0, BF, Imported),
    {list_to_tuple(L), F};
element_calls([E0 | Es0], F0, BF, Imported) ->
    {E, F1} = element_calls(E0, F0, BF, Imported),
    {Es, F} = element_calls(Es0, F1, BF, Imported),
    {[E | Es], F};
element_calls(E, F, _BF, _Imported) ->
    {E, F}.

unique_var() ->
    {var, anno0(), make_ref()}.

is_unique_var({var, _A, V}) ->
    is_reference(V).

expand_pattern_records(P, State) ->
    A = anno0(),
    E = {'case', A,
         {atom, A, true},
         [{clause, A, [P], [], [{atom, A, true}]}]},
    {'case', _, _, [{clause, A, [NP], _, _}]} =
        expand_expr_records(E, State),
    NP.

expand_expr_records(E, State) ->
    RecordDefs =
        case State of
            {state, _, _, _, REC25, _, _, _} ->
                REC25;
            REC25 ->
                error({badrecord, REC25})
        end,
    A = anno1(),
    Forms0 =
        RecordDefs
        ++
        [{function, A, foo, 0, [{clause, A, [], [], [pe(E)]}]}],
    Forms = erl_expand_records:module(Forms0, [no_strict_record_tests]),
    {function, _, foo, 0, [{clause, _, [], [], [NE]}]} =
        lists:last(Forms),
    NE.

pe({op, Anno, Op, A}) ->
    erl_eval:partial_eval({op, Anno, Op, pe(A)});
pe({op, Anno, Op, L, R}) ->
    erl_eval:partial_eval({op, Anno, Op, pe(L), pe(R)});
pe(T) when is_tuple(T) ->
    list_to_tuple(pe(tuple_to_list(T)));
pe([E | Es]) ->
    [pe(E) | pe(Es)];
pe(E) ->
    E.

unify(Op, E1, E2, F, BF, Imported) ->
    unify(Op, E1, E2, F, BF, Imported, false).

safe_unify(Op, E1, E2, F, BF, Imported) ->
    unify(Op, E1, E2, F, BF, Imported, true).

unify(_Op, _E1, _E2, failed, _BF, _Imported, _Safe) ->
    failed;
unify(_Op, E, E, F, _BF, _Imported, _Safe) ->
    F;
unify(Op, {var, _, _} = Var, E2, F, BF, Imported, Safe) ->
    extend_frame(Op, Var, E2, F, BF, Imported, Safe);
unify(Op, E1, {var, _, _} = Var, F, BF, Imported, Safe) ->
    extend_frame(Op, Var, E1, F, BF, Imported, Safe);
unify(Op, {cons_tuple, Es1}, {cons_tuple, Es2}, F, BF, Imported, Safe) ->
    unify(Op, Es1, Es2, F, BF, Imported, Safe);
unify(Op, {cons, _, L1, R1}, {cons, _, L2, R2}, F, BF, Imported, Safe) ->
    E = unify(Op, L1, L2, F, BF, Imported, Safe),
    unify(Op, R1, R2, E, BF, Imported, Safe);
unify(Op, E1, E2, F, _BF, _Imported, Safe) ->
    try
        {ok, C1} = normalise(E1),
        {ok, C2} = normalise(E2),
        if
            Op =:= '=:=', C1 =:= C2 ->
                F;
            Op =:= '==', C1 == C2 ->
                F;
            true ->
                failed
        end
    catch
        error:_ when Safe ->
            failed;
        error:_ when not Safe ->
            F
    end.

-record(bind,{var, value, op}).

extend_frame(Op, Var, Value, F, BF, Imported, Safe) ->
    case var_values(Var, F) of
        [] ->
            case Value of
                {var, _, _} ->
                    case var_values(Value, F) of
                        [] ->
                            add_binding(Op, Value, Var, F, BF, Imported,
                                        Safe);
                        ValsOps ->
                            maybe_add_binding(ValsOps, Op, Value, Var,
                                              F, BF, Imported, Safe)
                    end;
                _ ->
                    add_binding(Op, Var, Value, F, BF, Imported, Safe)
            end;
        ValsOps ->
            maybe_add_binding(ValsOps, Op, Var, Value, F, BF, Imported,
                              Safe)
    end.

maybe_add_binding(ValsOps, Op, Var, Value, F0, BF, Imported, Safe) ->
    case
        unify_var_bindings(ValsOps, Op, Value, F0, BF, Imported, Safe)
    of
        failed ->
            failed;
        F ->
            case already_bound(Op, Var, Value, F) of
                true ->
                    F;
                false ->
                    add_binding(Op, Var, Value, F, BF, Imported, Safe)
            end
    end.

already_bound(Op, Var, Value, F) ->
    BFun =
        fun(_DV, BOp) ->
               Op =:= BOp
        end,
    DerefValue = deref_value(Value, Op, F, BFun, all),
    DerefVar = deref_var(Var, F, BFun, all),
    DerefValue -- DerefVar =:= [].

unify_var_bindings([], _Op, _Value, F, _BF, _Imported, _Safe) ->
    F;
unify_var_bindings([{VarValue, Op2} | Bindings],
                   Op1, Value, F0, BF, Imported, Safe) ->
    Op = deref_op(Op1, Op2),
    case unify(Op, VarValue, Value, F0, BF, Imported, Safe) of
        failed ->
            failed;
        F ->
            unify_var_bindings(Bindings, Op1, Value, F, BF, Imported,
                               Safe)
    end.

deref_op('=:=', '=:=') ->
    '=:=';
deref_op(_, _) ->
    '=='.

var_values(Var, Frame) ->
    [ 
     {Value, Op} ||
         {bind, _, Value, Op} <- var_bindings(Var, Frame)
    ].

deref_var(Var, Frame, Imported) ->
    deref_var(Var, Frame,
              fun(_DV, _Op) ->
                     true
              end,
              Imported).

deref_var(Var, Frame, BFun, Imported) ->
    lists:usort([ 
                 ValOp ||
                     {bind, _, Value, Op} <- var_bindings(Var, Frame),
                     ValOp <-
                         deref_value(Value, Op, Frame, BFun, Imported)
                ]).

deref_value(Value, Op, Frame, BFun, Imported) ->
    lists:usort([ 
                 {Val, value_op(ValOp, Op, Imported)} ||
                     {Val, _Op} = ValOp <-
                         deref(Value, Frame, BFun, Imported)
                ]).

add_binding(Op, Var0, Value0, F, BF, Imported, Safe) ->
    {Var, Value} = maybe_swap_var_value(Var0, Value0, F, Imported),
    case BF(Op, Value) of
        true ->
            add_binding2(Var, Value, Op, F);
        false when Safe ->
            failed;
        false when not Safe ->
            F
    end.

add_binding2(Var, Value, Op, F) ->
    case occurs(Var, Value, F) of
        true ->
            failed;
        false ->
            [{bind, Var, Value, Op} | F]
    end.

maybe_swap_var_value(Var, Value, Frame, Imported) ->
    case do_swap_var_value(Var, Value, Frame, Imported) of
        true ->
            {Value, Var};
        false ->
            {Var, Value}
    end.

do_swap_var_value({var, _, V1} = Var1, {var, _, V2} = Var2, F, Imported) ->
    case swap_vv(Var1, Var2, F) of
        [] ->
            case swap_vv(Var2, Var1, F) of
                [] ->
                    ordsets:is_element(V1, Imported)
                    andalso
                    not ordsets:is_element(V2, Imported);
                _Bs ->
                    true
            end;
        _Bs ->
            false
    end;
do_swap_var_value(_, _, _F, _Imp) ->
    false.

swap_vv(V1, V2, F) ->
    [ 
     V ||
         {bind, _, V, _} <- var_bindings(V1, F),
         V =:= V2
    ].

normalise(E) ->
    case catch erl_parse:normalise(var2const(cons2tuple(E))) of
        {'EXIT', _} ->
            not_ok;
        C ->
            {ok, C}
    end.

occurs(V, V, _F) ->
    true;
occurs(V, {var, _, _} = Var, F) ->
    lists:any(fun(B) ->
                     occurs(V,
                            case B of
                                {bind, _, REC26, _} ->
                                    REC26;
                                REC26 ->
                                    error({badrecord, REC26})
                            end,
                            F)
              end,
              var_bindings(Var, F));
occurs(V, T, F) when is_tuple(T) ->
    lists:any(fun(E) ->
                     occurs(V, E, F)
              end,
              tuple_to_list(T));
occurs(V, [E | Es], F) ->
    occurs(V, E, F)
    orelse
    occurs(V, Es, F);
occurs(_V, _E, _F) ->
    false.

deref_values(E, Frame, Imported) ->
    deref_values(E, Frame,
                 fun(_DV, _Op) ->
                        true
                 end,
                 Imported).

deref_values(E, Frame, BFun, Imported) ->
    lists:usort([ 
                 V ||
                     {V, Op} <- deref(E, Frame, BFun, Imported),
                     BFun(V, Op)
                ]).

deref(E, F, Imp) ->
    BFun =
        fun(_DV, _Op) ->
               true
        end,
    deref(E, F, BFun, Imp).

deref({var, _, _} = V, F, BFun, Imp) ->
    DBs =
        lists:flatmap(fun(B) ->
                             deref_binding(B, F, BFun, Imp)
                      end,
                      var_bindings(V, F)),
    case DBs of
        [] ->
            [{V, '=:='}];
        _ ->
            lists:usort(DBs)
    end;
deref(T, F, BFun, Imp) when is_tuple(T) ->
    [ 
     {list_to_tuple(DL), Op} ||
         {DL, Op} <- deref(tuple_to_list(T), F, BFun, Imp)
    ];
deref(Es, F, BFun, Imp) when is_list(Es) ->
    L = [ 
         deref(C, F, BFun, Imp) ||
             C <- Es
        ],
    lists:usort([ 
                 deref_list(S) ||
                     S <- all_comb(L)
                ]);
deref(E, _F, _BFun, _Imp) ->
    [{E, '=:='}].

var_bindings(Var, F) ->
    [ 
     B ||
         {bind, V, _, _} = B <- F,
         V =:= Var
    ].

deref_binding(Bind, Frame, BFun, Imp) ->
    {bind, _, Value, Op0} = Bind,
    [ 
     {Val, Op} ||
         {Val, _Op} = ValOp <- deref(Value, Frame, BFun, Imp),
         BFun(Val, Op = value_op(ValOp, Op0, Imp))
    ].

deref_list(L) ->
    Op =
        case
            lists:usort([ 
                         Op ||
                             {_Val, Op} <- L
                        ])
        of
            ['=:='] ->
                '=:=';
            _ ->
                '=='
        end,
    {[ 
      V ||
          {V, _Op} <- L
     ],
     Op}.

value_op({_V, '=='}, _BindOp, _Imp) ->
    '==';
value_op({_V, '=:='}, _BindOp = '=:=', _Imp) ->
    '=:=';
value_op({V, '=:='}, _BindOp = '==', Imp) ->
    case free_of_integers(V, Imp) of
        true ->
            '=:=';
        false ->
            '=='
    end.

all_comb([]) ->
    [[]];
all_comb([Cs | ICs]) ->
    [ 
     [C | L] ||
         C <- Cs,
         L <- all_comb(ICs)
    ].

free_of_integers(V, Imported) ->
    not has_integer(V)
    andalso
    not has_imported_vars(V, Imported).

has_imported_vars(Value, all) ->
    qlc:vars(Value) =/= [];
has_imported_vars(Value, Imported) ->
    [ 
     Var ||
         Var <- qlc:vars(Value),
         lists:member(Var, Imported)
    ]
    =/=
    [].

has_integer(Abstr) ->
    try
        has_int(Abstr)
    catch
        throw:true ->
            true
    end.

has_int({integer, _, I}) when erlang:float(I) == I ->
    throw(true);
has_int({float, _, F}) when round(F) == F ->
    throw(true);
has_int(T) when is_tuple(T) ->
    has_int(tuple_to_list(T));
has_int([E | Es]) ->
    has_int(E),
    has_int(Es);
has_int(_) ->
    false.

tuple2cons({tuple, _, Es}) ->
    {cons_tuple, list2cons(tuple2cons(Es))};
tuple2cons(T) when is_tuple(T) ->
    list_to_tuple(tuple2cons(tuple_to_list(T)));
tuple2cons([E | Es]) ->
    [tuple2cons(E) | tuple2cons(Es)];
tuple2cons(E) ->
    E.

list2cons([E | Es]) ->
    {cons, anno0(), E, list2cons(Es)};
list2cons([]) ->
    {nil, anno0()};
list2cons(E) ->
    E.

cons2tuple({cons_tuple, Es}) ->
    {tuple, anno0(), cons2list(Es)};
cons2tuple(T) when is_tuple(T) ->
    list_to_tuple(cons2tuple(tuple_to_list(T)));
cons2tuple([E | Es]) ->
    [cons2tuple(E) | cons2tuple(Es)];
cons2tuple(E) ->
    E.

cons2list({cons, _, L, R}) ->
    [cons2tuple(L) | cons2list(R)];
cons2list({nil, _}) ->
    [];
cons2list(E) ->
    [cons2tuple(E)].

bindings_is_subset(F1, F2, Imported) ->
    BF =
        fun(_Op, _Value) ->
               true
        end,
    F = lists:foldl(fun({bind, V, Value, Op}, Frame) ->
                           unify(Op, V, Value, Frame, BF, Imported)
                    end,
                    F2, F1),
    bindings_subset(F, F2, Imported)
    andalso
    bindings_subset(F2, F, Imported).

bindings_subset(F1, F2, Imp) ->
    Vars =
        lists:usort([ 
                     V ||
                         {bind, V, _, _} <- F1,
                         not is_unique_var(V)
                    ]),
    lists:all(fun(V) ->
                     deref_var(V, F1, Imp) =:= deref_var(V, F2, Imp)
              end,
              Vars).

try_ms(E, P, Fltr, State) ->
    Anno = anno1(),
    Fun = {'fun', Anno, {clauses, [{clause, Anno, [P], [[Fltr]], [E]}]}},
    Expr =
        {call, Anno,
         {remote, Anno, {atom, Anno, ets}, {atom, Anno, fun2ms}},
         [Fun]},
    Form = {function, Anno, foo, 0, [{clause, Anno, [], [], [Expr]}]},
    X = ms_transform:parse_transform(case State of
                                         {state, _, _, _, REC27, _, _,
                                          _} ->
                                             REC27;
                                         REC27 ->
                                             error({badrecord, REC27})
                                     end
                                     ++
                                     [Form],
                                     []),
    case
        catch
            begin
                {function, Anno, foo, 0,
                 [{clause, Anno, [], [], [MS0]}]} =
                    lists:last(X),
                MS = erl_parse:normalise(var2const(MS0)),
                XMS = ets:match_spec_compile(MS),
                true = ets:is_compiled_ms(XMS),
                {ok, MS, MS0}
            end
    of
        {'EXIT', _Reason} ->
            no;
        Reply ->
            Reply
    end.

filters_as_one([]) ->
    {atom, anno0(), true};
filters_as_one(FilterData) ->
    [{_, {fil, Filter1}} | Filters] = lists:reverse(FilterData),
    lists:foldr(fun({_QId, {fil, Filter}}, AbstF) ->
                       {op, anno0(), 'andalso', Filter, AbstF}
                end,
                Filter1, Filters).

qual_data(Qualifiers) ->
    F = fun(T) ->
               [ 
                {QId, Q} ||
                    {QId, _, _, Q} <- Qualifiers,
                    element(1, Q) =:= T
               ]
        end,
    {F(fil), F(gen)}.

set_field(Pos, Fs, Data) ->
    lists:sublist(Fs, Pos - 1) ++ [Data] ++ lists:nthtail(Pos, Fs).

qdata([{{qid, _, QIdNo}, {_QIVs, {{gen, _P, LE, _GV}, GoI, SI}}} | QCs],
      Anno) ->
    Init =
        case LE of
            {join, Op, Q1, Q2, H1, H2, Cs1_0, Cs2_0} ->
                Cs1 = qcon(Cs1_0),
                Cs2 = qcon(Cs2_0),
                Compat = {atom, Anno, v1},
                CF = closure({tuple, Anno, [Cs1, Cs2, Compat]}, Anno),
                {tuple, Anno,
                 [{atom, Anno, join},
                  {atom, Anno, Op},
                  {integer, Anno, Q1},
                  {integer, Anno, Q2},
                  H1, H2, CF]};
            _ ->
                closure(LE, Anno)
        end,
    {cons, Anno,
     {tuple, Anno,
      [{integer, Anno, QIdNo},
       {integer, Anno, GoI},
       {integer, Anno, SI},
       {tuple, Anno, [{atom, Anno, gen}, Init]}]},
     qdata(QCs, Anno)};
qdata([{{qid, _, QIdNo}, {_QIVs, {{fil, _F}, GoI, SI}}} | QCs], Anno) ->
    {cons, Anno,
     {tuple, Anno,
      [{integer, Anno, QIdNo},
       {integer, Anno, GoI},
       {integer, Anno, SI},
       {atom, Anno, fil}]},
     qdata(QCs, Anno)};
qdata([], Anno) ->
    {nil, Anno}.

qcon(Cs) ->
    A = anno0(),
    list2cons([ 
               {tuple, A,
                [{integer, A, Col}, list2cons(qcon1(ConstOps))]} ||
                   {Col, ConstOps} <- Cs
              ]).

qcon1(ConstOps) ->
    A = anno0(),
    [ 
     {tuple, A, [Const, abstr(Op, A)]} ||
         {Const, Op} <- ConstOps
    ].

qcode(E, QCs, Source, Anno, State) ->
    CL =
        [ 
         begin
             Bin = term_to_binary(C, [compressed]),
             {bin, Anno,
              [{bin_element, Anno,
                {string, Anno, binary_to_list(Bin)},
                default, default}]}
         end ||
             {_, C} <-
                 lists:keysort(1,
                               [{qlc:template_state(), E} |
                                qcode(QCs, Source, State)])
        ],
    {'fun', Anno,
     {clauses, [{clause, Anno, [], [], [{tuple, Anno, CL}]}]}}.

qcode([{_QId, {_QIvs, {{gen, P, _LE, _GV}, GoI, _SI}}} | QCs],
      Source, State) ->
    [{GoI, undo_no_shadows(P, State)} | qcode(QCs, Source, State)];
qcode([{QId, {_QIVs, {{fil, _F}, GoI, _SI}}} | QCs], Source, State) ->
    OrigF = map_get(QId, Source),
    [{GoI, undo_no_shadows(OrigF, State)} | qcode(QCs, Source, State)];
qcode([], _Source, _State) ->
    [].

closure(Code, Anno) ->
    {'fun', Anno, {clauses, [{clause, Anno, [], [], [Code]}]}}.

simple(Anno1, Var, Init, Anno) ->
    {tuple, Anno1,
     [{atom, Anno, simple_v1},
      {atom, Anno, Var},
      Init,
      abstr(loc(Anno), Anno)]}.

clauses([{QId, {QIVs, {QualData, GoI, S}}} | QCs],
        RL, Fun, Go, NGV, E, IVs, St) ->
    ok,
    ok,
    ok,
    Anno =
        no_compiler_warning(get_lcid_line(case QId of
                                              {qid, REC28, _} ->
                                                  REC28;
                                              REC28 ->
                                                  error({badrecord,
                                                         REC28})
                                          end)),
    Cs =
        case QualData of
            {gen, P, _LE, GV} ->
                generator(S, QIVs, P, GV, NGV, E, IVs, RL, Fun, Go, GoI,
                          Anno, St);
            {fil, F} ->
                filter(F, Anno, QIVs, S, RL, Fun, Go, GoI, IVs, St)
        end,
    Cs ++ clauses(QCs, RL, Fun, Go, NGV, E, IVs, St);
clauses([], _RL, _Fun, _Go, _NGV, _IVs, _E, _St) ->
    [].

final(RL, IVs, Anno, State) ->
    IAs = replace(IVs, IVs, '_'),
    AsL =
        pack_args([{integer, Anno, 0} |
                   abst_vars([RL, '_', '_'] ++ IAs, Anno)],
                  Anno, State),
    Grd = [is_list_c(RL, Anno)],
    Rev =
        {call, Anno,
         {remote, Anno, {atom, Anno, lists}, {atom, Anno, reverse}},
         [{var, Anno, RL}]},
    CL = {clause, Anno, AsL, [Grd], [Rev]},
    AsF =
        pack_args([{integer, Anno, 0} |
                   abst_vars(['_', '_', '_'] ++ IAs, Anno)],
                  Anno, State),
    CF = {clause, Anno, AsF, [], [{nil, Anno}]},
    [CL, CF].

template(E, RL, Fun, Go, AT, Anno, IVs, State) ->
    I = qlc:template_state(),
    GoI = qlc:template_state(),
    ARL = {cons, Anno, E, abst_vars(RL, Anno)},
    Next = next(Go, GoI, Anno),
    As0 = abst_vars([RL, Fun, Go] ++ IVs, Anno),
    As = pack_args([{integer, Anno, I} | As0], Anno, State),
    NAs =
        pack_args([Next, ARL] ++ abst_vars([Fun, Go] ++ IVs, Anno),
                  Anno, State),
    Grd = [is_list_c(RL, Anno)],
    CL =
        {clause, Anno, As, [Grd], [{call, Anno, {var, Anno, Fun}, NAs}]},
    F = case split_args([Next | As0], Anno, State) of
            {ArgsL, ArgsT} ->
                Call =
                    {call, Anno,
                     {var, Anno, Fun},
                     ArgsL ++ [{var, Anno, AT}]},
                {block, Anno,
                 [{match, Anno, {var, Anno, AT}, ArgsT},
                  {'fun', Anno,
                   {clauses, [{clause, Anno, [], [], [Call]}]}}]};
            FNAs ->
                {'fun', Anno,
                 {clauses,
                  [{clause, Anno, [], [],
                    [{call, Anno, {var, Anno, Fun}, FNAs}]}]}}
        end,
    CF = {clause, Anno, As, [], [{cons, Anno, E, F}]},
    [CL, CF].

generator(S, QIVs, P, GV, NGV, E, IVs, RL, Fun, Go, GoI, Anno, State) ->
    ComAs = abst_vars([RL, Fun, Go], Anno),
    InitC = generator_init(S, Anno, GV, RL, Fun, Go, GoI, IVs, State),
    As =
        [{integer, Anno, S + 1} |
         ComAs ++ abst_vars(replace(QIVs -- [GV], IVs, '_'), Anno)],
    MatchS = next(Go, GoI + 1, Anno),
    AsM0 = [MatchS | ComAs ++ abst_vars(replace([GV], IVs, NGV), Anno)],
    AsM = pack_args(AsM0, Anno, State),
    ContS = {integer, Anno, S + 1},
    QIVs__GV = QIVs -- [GV],
    Tmp = replace([GV], replace(QIVs__GV, IVs, nil), NGV),
    AsC =
        pack_args([ContS | ComAs ++ abst_vars(Tmp, Anno)], Anno, State),
    DoneS = next(Go, GoI, Anno),
    AsD0 = [DoneS | ComAs ++ abst_vars(replace(QIVs, IVs, nil), Anno)],
    AsD = pack_args(AsD0, Anno, State),
    CsL =
        generator_list(P, GV, NGV, As, AsM, AsC, AsD, Fun, Anno, State),
    CsF =
        generator_cont(P, GV, NGV, E, As, AsM, AsC, AsD, Fun, Anno,
                       State),
    [InitC | CsL ++ CsF].

generator_init(S, Anno, GV, RL, Fun, Go, GoI, IVs, State) ->
    As0 = abst_vars([RL, Fun, Go] ++ replace([GV], IVs, '_'), Anno),
    As = pack_args([{integer, Anno, S} | As0], Anno, State),
    Next = next(Go, GoI + 2, Anno),
    NAs =
        pack_args([{integer, Anno, S + 1} |
                   replace([{var, Anno, '_'}], As0, Next)],
                  Anno, State),
    {clause, Anno, As, [], [{call, Anno, {var, Anno, Fun}, NAs}]}.

generator_list(P, GV, NGV, As, AsM, AsC, AsD, Fun, Anno, State) ->
    As1 =
        pack_args(replace([{var, Anno, GV}],
                          As,
                          {cons, Anno, P, {var, Anno, NGV}}),
                  Anno, State),
    As2 =
        pack_args(replace([{var, Anno, GV}],
                          As,
                          {cons, Anno,
                           {var, Anno, '_'},
                           {var, Anno, NGV}}),
                  Anno, State),
    As3 =
        pack_args(replace([{var, Anno, GV}], As, {nil, Anno}),
                  Anno, State),
    CM = {clause, Anno, As1, [], [{call, Anno, {var, Anno, Fun}, AsM}]},
    CC = {clause, Anno, As2, [], [{call, Anno, {var, Anno, Fun}, AsC}]},
    CD = {clause, Anno, As3, [], [{call, Anno, {var, Anno, Fun}, AsD}]},
    [CM, CC, CD].

generator_cont(P, GV, NGV, E, As0, AsM, AsC, AsD, Fun, Anno, State) ->
    As = pack_args(As0, Anno, State),
    CF1 = {cons, Anno, P, {var, Anno, NGV}},
    CF2 = {cons, Anno, {var, Anno, '_'}, {var, Anno, NGV}},
    CF3 = {nil, Anno},
    CF4 = {var, Anno, E},
    CM =
        {clause, Anno, [CF1], [], [{call, Anno, {var, Anno, Fun}, AsM}]},
    CC =
        {clause, Anno, [CF2], [], [{call, Anno, {var, Anno, Fun}, AsC}]},
    CD =
        {clause, Anno, [CF3], [], [{call, Anno, {var, Anno, Fun}, AsD}]},
    CE = {clause, Anno, [CF4], [], [CF4]},
    Cls = [CM, CC, CD, CE],
    B = {'case', Anno, {call, Anno, {var, Anno, GV}, []}, Cls},
    [{clause, Anno, As, [], [B]}].

filter(E, Anno, QIVs, S, RL, Fun, Go, GoI, IVs, State) ->
    IAs = replace(QIVs, IVs, '_'),
    As =
        pack_args([{integer, Anno, S} |
                   abst_vars([RL, Fun, Go] ++ IAs, Anno)],
                  Anno, State),
    NAs = abst_vars([RL, Fun, Go] ++ IVs, Anno),
    TNext = next(Go, GoI + 1, Anno),
    FNext = next(Go, GoI, Anno),
    NAsT = pack_args([TNext | NAs], Anno, State),
    NAsF = pack_args([FNext | NAs], Anno, State),
    Body =
        case is_guard_test(E, State) of
            true ->
                CT =
                    {clause, Anno, [],
                     [[E]],
                     [{call, Anno, {var, Anno, Fun}, NAsT}]},
                CF =
                    {clause, Anno, [],
                     [[{atom, Anno, true}]],
                     [{call, Anno, {var, Anno, Fun}, NAsF}]},
                [{'if', Anno, [CT, CF]}];
            false ->
                CT =
                    {clause, Anno,
                     [{atom, Anno, true}],
                     [],
                     [{call, Anno, {var, Anno, Fun}, NAsT}]},
                CF =
                    {clause, Anno,
                     [{atom, Anno, false}],
                     [],
                     [{call, Anno, {var, Anno, Fun}, NAsF}]},
                [{'case', Anno, E, [CT, CF]}]
        end,
    [{clause, Anno, As, [], Body}].

pack_args(Args, Anno, State) ->
    case split_args(Args, Anno, State) of
        {ArgsL, ArgsT} ->
            ArgsL ++ [ArgsT];
        _ ->
            Args
    end.

split_args(Args, Anno, {state, _, _, _, _, _, _, _} = State)
    when
        (true
         orelse
         fail)
        and
        (length(Args) > element(4, State)) ->
    {lists:sublist(Args,
                   case State of
                       {state, _, _, REC29, _, _, _, _} ->
                           REC29;
                       REC29 ->
                           error({badrecord, REC29})
                   end
                   -
                   1),
     {tuple, Anno,
      lists:nthtail(case State of
                        {state, _, _, REC30, _, _, _, _} ->
                            REC30;
                        REC30 ->
                            error({badrecord, REC30})
                    end
                    -
                    1,
                    Args)}};
split_args(Args, _Anno, _State) ->
    Args.

replace(Es, IEs, R) ->
    [ 
     case lists:member(E, Es) of
         true ->
             R;
         false ->
             E
     end ||
         E <- IEs
    ].

is_list_c(V, Anno) ->
    {call, Anno, {atom, Anno, is_list}, [{var, Anno, V}]}.

next(Go, GoI, Anno) ->
    {call, Anno,
     {atom, Anno, element},
     [{integer, Anno, GoI}, {var, Anno, Go}]}.

aux_vars(Vars, LcN, AllVars) ->
    [ 
     aux_var(Name, LcN, 0, 1, AllVars) ||
         Name <- Vars
    ].

aux_var(Name, LcN, QN, N, AllVars) ->
    qlc:aux_name(lists:concat([Name, LcN, '_', QN, '_']), N, AllVars).

no_compiler_warning(L) ->
    Anno = erl_anno:new(L),
    erl_anno:set_generated(true, Anno).

loc(A) ->
    erl_anno:location(A).

list2op([E], _Op) ->
    E;
list2op([E | Es], Op) ->
    {op, anno0(), Op, E, list2op(Es, Op)}.

anno0() ->
    erl_anno:new(0).

anno1() ->
    erl_anno:new(1).

qual_fold(Fun, GlobAcc0, Acc0, Forms, State) ->
    F = fun(Id, {lc, Anno, E, Qs0}, GA0) ->
               {Qs, GA, _NA} = qual_fold(Qs0, Fun, GA0, Acc0, Id, 1, []),
               {{lc, Anno, E, Qs}, GA};
           (_Id, Expr, GA) ->
               {Expr, GA}
        end,
    qlc_mapfold(F, GlobAcc0, Forms, State).

qual_fold([Q0 | Qs], F, GA0, A0, Id, No, NQs) ->
    QId = qid(Id, No),
    {Q, GA, A} = F(QId, Q0, GA0, A0),
    qual_fold(Qs, F, GA, A, Id, No + 1, [Q | NQs]);
qual_fold([], _F, GA, A, _Id, _No, NQs) ->
    {lists:reverse(NQs), GA, A}.

qlc_mapfold(Fun, Acc0, Forms0, State) ->
    {Forms, A, _NNo} =
        qlcmf(Forms0, Fun,
              case State of
                  {state, REC31, _, _, _, _, _, _} ->
                      REC31;
                  REC31 ->
                      error({badrecord, REC31})
              end,
              Acc0, 1),
    erase(qlc_current_file),
    {Forms, A}.

qlcmf([E0 | Es0], F, Imp, A0, No0) ->
    {E, A1, No1} = qlcmf(E0, F, Imp, A0, No0),
    {Es, A, No} = qlcmf(Es0, F, Imp, A1, No1),
    {[E | Es], A, No};
qlcmf({call, Anno1,
       {remote, Anno2, {atom, Anno3, qlc}, {atom, Anno4, q}},
       [LC0 | Os0]},
      F, Imp, A0, No0)
    when length(Os0) < 2 ->
    {Os, A1, No1} = qlcmf(Os0, F, Imp, A0, No0),
    {LC, A2, No} = qlcmf(LC0, F, Imp, A1, No1),
    NL = make_lcid(Anno1, No),
    {T, A} = F(NL, LC, A2),
    {{call, Anno1,
      {remote, Anno2, {atom, Anno3, qlc}, {atom, Anno4, q}},
      [T | Os]},
     A,
     No + 1};
qlcmf({call, Anno, {atom, Anno2, q}, [LC0 | Os0]},
      F,
      Imp = true,
      A0, No0)
    when length(Os0) < 2 ->
    {Os, A1, No1} = qlcmf(Os0, F, Imp, A0, No0),
    {LC, A2, No} = qlcmf(LC0, F, Imp, A1, No1),
    NL = make_lcid(Anno, No),
    {T, A} = F(NL, LC, A2),
    {{call, Anno, {atom, Anno2, q}, [T | Os]}, A, No + 1};
qlcmf({attribute, _Anno, file, {File, _Line}} = Attr, _F, _Imp, A, No) ->
    put(qlc_current_file, File),
    {Attr, A, No};
qlcmf(T, F, Imp, A0, No0) when is_tuple(T) ->
    {TL, A, No} = qlcmf(tuple_to_list(T), F, Imp, A0, No0),
    {list_to_tuple(TL), A, No};
qlcmf(T, _F, _Imp, A, No) ->
    {T, A, No}.

occ_vars(E) ->
    qlc:var_fold(fun({var, _A, V}) ->
                        V
                 end,
                 [], E).

save_anno(Abstr, NodeInfo) ->
    F = fun(Anno) ->
               N = next_slot(NodeInfo),
               Location = loc(Anno),
               Data = {N, #{location => Location}},
               true = ets:insert(NodeInfo, Data),
               erl_anno:new(N)
        end,
    map_anno(F, Abstr).

next_slot(T) ->
    I = ets:update_counter(T, var_n, 1),
    case ets:lookup(T, I) of
        [] ->
            I;
        _ ->
            next_slot(T)
    end.

restore_anno(Abstr, NodeInfo) ->
    F = fun(Anno) ->
               Location = loc(Anno),
               case ets:lookup(NodeInfo, Location) of
                   [{Location, Data}] ->
                       OrigLocation = maps:get(location, Data),
                       erl_anno:set_location(OrigLocation, Anno);
                   [{Location}] ->
                       Anno;
                   [] ->
                       Anno
               end
        end,
    map_anno(F, Abstr).

restore_loc(Location, {state, _, _, _, _, _, _, NodeInfo}) ->
    case ets:lookup(NodeInfo, Location) of
        [{Location, #{location := OrigLocation}}] ->
            OrigLocation;
        [{Location}] ->
            Location;
        [] ->
            Location
    end.

no_shadows(Forms0, State) ->
    AllVars = gb_sets:from_list(ordsets:to_list(qlc:vars(Forms0))),
    ok,
    VFun =
        fun(_Id, LC, Vs) ->
               nos(LC, Vs)
        end,
    LI = ets:new(qlc, []),
    UV = ets:new(qlc, []),
    D0 = maps:new(),
    S1 = {LI, D0, UV, AllVars, [], State},
    _ = qlc_mapfold(VFun, S1, Forms0, State),
    ok,
    Singletons = ets:select(UV, [{{'$1', 0}, [], ['$1']}]),
    ok,
    true = ets:delete_all_objects(LI),
    true = ets:delete_all_objects(UV),
    S2 = {LI, D0, UV, AllVars, Singletons, State},
    {Forms, _} = qlc_mapfold(VFun, S2, Forms0, State),
    true = ets:delete(LI),
    true = ets:delete(UV),
    Forms.

nos([E0 | Es0], S0) ->
    {E, S1} = nos(E0, S0),
    {Es, S} = nos(Es0, S1),
    {[E | Es], S};
nos({'fun', Anno, {clauses, Cs}}, S) ->
    NCs =
        [ 
         begin
             {H, S1} = nos_pattern(H0, S),
             {[G, B], _} = nos([G0, B0], S1),
             {clause, CAnno, H, G, B}
         end ||
             {clause, CAnno, H0, G0, B0} <- Cs
        ],
    {{'fun', Anno, {clauses, NCs}}, S};
nos({named_fun, Anno, Name, Cs}, S) ->
    {{var, NAnno, NName}, S1} =
        case Name of
            '_' ->
                S;
            Name ->
                nos_pattern({var, Anno, Name}, S)
        end,
    NCs =
        [ 
         begin
             {H, S2} = nos_pattern(H0, S1),
             {[G, B], _} = nos([G0, B0], S2),
             {clause, CAnno, H, G, B}
         end ||
             {clause, CAnno, H0, G0, B0} <- Cs
        ],
    {{named_fun, NAnno, NName, NCs}, S};
nos({lc, Anno, E0, Qs0}, S) ->
    F = fun({T, GAnno, P0, LE0}, QS0)
               when T =:= b_generate; T =:= generate ->
               {LE, _} = nos(LE0, QS0),
               {P, QS} = nos_pattern(P0, QS0),
               {{T, GAnno, P, LE}, QS};
           (Filter, QS) ->
               nos(Filter, QS)
        end,
    {Qs, S1} = lists:mapfoldl(F, S, Qs0),
    {E, _} = nos(E0, S1),
    {{lc, Anno, E, Qs}, S};
nos({var, Anno, V} = Var, {_LI, Vs, UV, _A, _Sg, State} = S)
    when V =/= '_' ->
    case used_var(V, Vs, UV) of
        {true, VN} ->
            nos_var(Anno, V, State),
            {{var, Anno, VN}, S};
        false ->
            {Var, S}
    end;
nos(T, S0) when is_tuple(T) ->
    {TL, S} = nos(tuple_to_list(T), S0),
    {list_to_tuple(TL), S};
nos(T, S) ->
    {T, S}.

nos_pattern(P, S) ->
    {T, NS, _} = nos_pattern(P, S, []),
    {T, NS}.

nos_pattern([P0 | Ps0], S0, PVs0) ->
    {P, S1, PVs1} = nos_pattern(P0, S0, PVs0),
    {Ps, S, PVs} = nos_pattern(Ps0, S1, PVs1),
    {[P | Ps], S, PVs};
nos_pattern({var, Anno, V}, {LI, Vs0, UV, A, Sg, State}, PVs0)
    when V =/= '_' ->
    {Name, Vs, PVs} =
        case lists:keyfind(V, 1, PVs0) of
            {V, VN} ->
                _ = used_var(V, Vs0, UV),
                {VN, Vs0, PVs0};
            false ->
                {VN, Vs1} = next_var(V, Vs0, A, LI, UV),
                N = case lists:member(VN, Sg) of
                        true ->
                            '_';
                        false ->
                            VN
                    end,
                {N, Vs1, [{V, VN} | PVs0]}
        end,
    nos_var(Anno, V, State),
    {{var, Anno, Name}, {LI, Vs, UV, A, Sg, State}, PVs};
nos_pattern(T, S0, PVs0) when is_tuple(T) ->
    {TL, S, PVs} = nos_pattern(tuple_to_list(T), S0, PVs0),
    {list_to_tuple(TL), S, PVs};
nos_pattern(T, S, PVs) ->
    {T, S, PVs}.

nos_var(Anno, Name, State) ->
    NodeInfo =
        case State of
            {state, _, _, _, _, _, _, REC32} ->
                REC32;
            REC32 ->
                error({badrecord, REC32})
        end,
    Location = loc(Anno),
    case ets:lookup(NodeInfo, Location) of
        [{Location, #{name := _}}] ->
            true;
        [{Location, Data}] ->
            true = ets:insert(NodeInfo, {Location, Data#{name => Name}});
        [] ->
            true
    end.

used_var(V, Vs, UV) ->
    case maps:find(V, Vs) of
        {ok, Value} ->
            VN = qlc:name_suffix(V, Value),
            _ = ets:update_counter(UV, VN, 1),
            {true, VN};
        error ->
            false
    end.

next_var(V, Vs, AllVars, LI, UV) ->
    NValue =
        case ets:lookup(LI, V) of
            [{V, Value}] ->
                Value + 1;
            [] ->
                1
        end,
    true = ets:insert(LI, {V, NValue}),
    VN = qlc:name_suffix(V, NValue),
    case gb_sets:is_member(VN, AllVars) of
        true ->
            next_var(V, Vs, AllVars, LI, UV);
        false ->
            true = ets:insert(UV, {VN, 0}),
            NVs = maps:put(V, NValue, Vs),
            {VN, NVs}
    end.

undo_no_shadows(E, State) ->
    var_map(fun(Anno) ->
                   undo_no_shadows1(Anno, State)
            end,
            E).

undo_no_shadows1({var, Anno, _} = Var, State) ->
    Location = loc(Anno),
    NodeInfo =
        case State of
            {state, _, _, _, _, _, _, REC33} ->
                REC33;
            REC33 ->
                error({badrecord, REC33})
        end,
    case ets:lookup(NodeInfo, Location) of
        [{Location, #{name := Name}}] ->
            {var, Anno, Name};
        _ ->
            Var
    end.

make_lcid(Anno, No) when is_integer(No), No > 0 ->
    {No, erl_anno:line(Anno)}.

get_lcid_no({No, _Line}) ->
    No.

get_lcid_line({_No, Line}) ->
    Line.

qid(LCId, No) ->
    {qid, LCId, No}.

abst_vars([V | Vs], Anno) ->
    [abst_vars(V, Anno) | abst_vars(Vs, Anno)];
abst_vars([], _Anno) ->
    [];
abst_vars(nil, Anno) ->
    {nil, Anno};
abst_vars(V, Anno) ->
    {var, Anno, V}.

embed_vars(Vars, Anno) ->
    embed_expr({tuple, Anno, Vars}, Anno).

embed_expr(Expr, Anno) ->
    {lc, Anno, Expr, [{generate, Anno, {var, Anno, '_'}, {nil, Anno}}]}.

var2const(E) ->
    var_map(fun({var, A, V}) ->
                   {atom, A, V}
            end,
            E).

var_map(F, {var, _, _} = V) ->
    F(V);
var_map(F, {named_fun, NAnno, NName, Cs}) ->
    {var, Anno, Name} = F({var, NAnno, NName}),
    {named_fun, Anno, Name, var_map(F, Cs)};
var_map(F, T) when is_tuple(T) ->
    list_to_tuple(var_map(F, tuple_to_list(T)));
var_map(F, [E | Es]) ->
    [var_map(F, E) | var_map(F, Es)];
var_map(_F, E) ->
    E.

var_mapfold(F, A, {var, _, _} = V) ->
    F(V, A);
var_mapfold(F, A0, T) when is_tuple(T) ->
    {L, A} = var_mapfold(F, A0, tuple_to_list(T)),
    {list_to_tuple(L), A};
var_mapfold(F, A0, [E0 | Es0]) ->
    {E, A1} = var_mapfold(F, A0, E0),
    {Es, A} = var_mapfold(F, A1, Es0),
    {[E | Es], A};
var_mapfold(_F, A, E) ->
    {E, A}.

map_anno(F, AbstrList) when is_list(AbstrList) ->
    [ 
     map_anno1(F, Abstr) ||
         Abstr <- AbstrList
    ];
map_anno(F, Abstr) ->
    map_anno1(F, Abstr).

map_anno1(F, Abstr) ->
    erl_parse:map_anno(F, Abstr).

family_list(L) ->
    sofs:to_external(family(L)).

family(L) ->
    sofs:relation_to_family(sofs:relation(L)).

is_guard_test(E, {state, _, IsOverridden, _, RDs, _, _, _}) ->
    erl_lint:is_guard_test(E, RDs, IsOverridden).

set_up_overridden(Forms) ->
    Locals =
        [ 
         {Name, Arity} ||
             {function, _, Name, Arity, _} <- Forms
        ],
    Imports0 =
        [ 
         Fs ||
             {attribute, _, import, Fs} <- Forms
        ],
    Imports1 = lists:flatten(Imports0),
    Imports2 =
        [ 
         Fs ||
             {_, Fs} <- Imports1
        ],
    Imports = lists:flatten(Imports2),
    Overridden = gb_sets:from_list(Imports ++ Locals),
    fun(FA) ->
           gb_sets:is_element(FA, Overridden)
    end.

display_forms(_) ->
    ok.



