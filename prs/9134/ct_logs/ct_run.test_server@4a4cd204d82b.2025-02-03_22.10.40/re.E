-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.2/src/re.erl", 1).

-module(re).

{warning,{{21,2},epp,{moduledoc,file,"../doc/src/re.md"}}}

-export([grun/3,urun/3,ucompile/2,replace/3,replace/4,split/2,split/3]).

-export_type([mp/0,compile_options/0,options/0]).

-compile(nowarn_deprecated_catch).

-type mp() :: {re_pattern, _, _, _, _}.

-type nl_spec() :: cr | crlf | lf | anycrlf | any.

-type compile_options() :: [compile_option()].

-type compile_option() ::
          unicode | anchored | caseless | dollar_endonly | dotall |
          extended | firstline | multiline | no_auto_capture |
          dupnames | ungreedy |
          {newline, nl_spec()} |
          bsr_anycrlf | bsr_unicode | no_start_optimize | ucp |
          never_utf.

-type options() :: [option()].

-type option() ::
          anchored | global | notbol | noteol | notempty |
          notempty_atstart | report_errors |
          {offset, non_neg_integer()} |
          {match_limit, non_neg_integer()} |
          {match_limit_recursion, non_neg_integer()} |
          {newline, NLSpec :: nl_spec()} |
          bsr_anycrlf | bsr_unicode |
          {capture, ValueSpec :: capture()} |
          {capture,
           ValueSpec :: capture(),
           Type :: index | list | binary} |
          compile_option().

-type capture() ::
          all | all_but_first | all_names | first | none |
          (ValueList :: [integer() | string() | atom()]).

-type replace_fun() ::
          fun((binary(), [binary()]) -> iodata() | unicode:charlist()).

-export([internal_run/4]).

-export([version/0,compile/1,compile/2,run/2,run/3,inspect/2]).

-spec version() -> binary().

-compile({inline, [{badarg_with_cause, 2}, {badarg_with_info, 1}]}).

version() ->
    erlang:nif_error(undef).

-spec compile(Regexp) -> {ok, MP} | {error, ErrSpec}
                 when
                     Regexp :: iodata(),
                     MP :: mp(),
                     ErrSpec ::
                         {ErrString :: string(),
                          Position :: non_neg_integer()}.

compile(_) ->
    erlang:nif_error(undef).

-spec compile(Regexp, Options) -> {ok, MP} | {error, ErrSpec}
                 when
                     Regexp :: iodata() | unicode:charlist(),
                     Options :: [Option],
                     Option :: compile_option(),
                     MP :: mp(),
                     ErrSpec ::
                         {ErrString :: string(),
                          Position :: non_neg_integer()}.

compile(_, _) ->
    erlang:nif_error(undef).

-spec run(Subject, RE) -> {match, Captured} | nomatch
             when
                 Subject :: iodata() | unicode:charlist(),
                 RE :: mp() | iodata(),
                 Captured :: [CaptureData],
                 CaptureData :: {integer(), integer()}.

run(_, _) ->
    erlang:nif_error(undef).

-spec run(Subject, RE, Options) ->
             {match, Captured} | match | nomatch | {error, ErrType}
             when
                 Subject :: iodata() | unicode:charlist(),
                 RE :: mp() | iodata() | unicode:charlist(),
                 Options :: options(),
                 Captured :: [CaptureData] | [[CaptureData]],
                 CaptureData ::
                     {integer(), integer()} |
                     ListConversionData |
                     binary(),
                 ListConversionData ::
                     string() |
                     {error, string(), binary()} |
                     {incomplete, string(), binary()},
                 ErrType ::
                     match_limit | match_limit_recursion |
                     {compile, CompileErr},
                 CompileErr ::
                     {ErrString :: string(),
                      Position :: non_neg_integer()}.

run(_, _, _) ->
    erlang:nif_error(undef).

-spec internal_run(Subject, RE, Options, FirstCall) ->
                      {match, Captured} |
                      match | nomatch |
                      {error, ErrType}
                      when
                          Subject :: iodata() | unicode:charlist(),
                          RE :: mp() | iodata() | unicode:charlist(),
                          Options :: [Option],
                          Option ::
                              anchored | global | notbol | noteol |
                              notempty | notempty_atstart |
                              report_errors |
                              {offset, non_neg_integer()} |
                              {match_limit, non_neg_integer()} |
                              {match_limit_recursion, non_neg_integer()} |
                              {newline, NLSpec :: nl_spec()} |
                              bsr_anycrlf | bsr_unicode |
                              {capture, ValueSpec} |
                              {capture, ValueSpec, Type} |
                              CompileOpt,
                          Type :: index | list | binary,
                          ValueSpec ::
                              all | all_but_first | all_names | first |
                              none | ValueList,
                          ValueList :: [ValueID],
                          ValueID :: integer() | string() | atom(),
                          CompileOpt :: compile_option(),
                          Captured :: [CaptureData] | [[CaptureData]],
                          CaptureData ::
                              {integer(), integer()} |
                              ListConversionData |
                              binary(),
                          ListConversionData ::
                              string() |
                              {error, string(), binary()} |
                              {incomplete, string(), binary()},
                          ErrType ::
                              match_limit | match_limit_recursion |
                              {compile, CompileErr},
                          CompileErr ::
                              {ErrString :: string(),
                               Position :: non_neg_integer()},
                          FirstCall :: boolean().

internal_run(_, _, _, _) ->
    erlang:nif_error(undef).

-spec inspect(MP, Item) -> {namelist, [binary()]}
                 when MP :: mp(), Item :: namelist.

inspect(_, _) ->
    erlang:nif_error(undef).

-spec split(Subject, RE) -> SplitList
               when
                   Subject :: iodata() | unicode:charlist(),
                   RE :: mp() | iodata(),
                   SplitList :: [iodata() | unicode:charlist()].

split(Subject, RE) ->
    try
        split(Subject, RE, [])
    catch
        error:_ ->
            badarg_with_info([Subject, RE])
    end.

-spec split(Subject, RE, Options) -> SplitList
               when
                   Subject :: iodata() | unicode:charlist(),
                   RE :: mp() | iodata() | unicode:charlist(),
                   Options :: [Option],
                   Option ::
                       anchored | notbol | noteol | notempty |
                       notempty_atstart |
                       {offset, non_neg_integer()} |
                       {newline, nl_spec()} |
                       {match_limit, non_neg_integer()} |
                       {match_limit_recursion, non_neg_integer()} |
                       bsr_anycrlf | bsr_unicode |
                       {return, ReturnType} |
                       {parts, NumParts} |
                       group | trim | CompileOpt,
                   NumParts :: non_neg_integer() | infinity,
                   ReturnType :: iodata | list | binary,
                   CompileOpt :: compile_option(),
                   SplitList :: [RetData] | [GroupedRetData],
                   GroupedRetData :: [RetData],
                   RetData ::
                       iodata() | unicode:charlist() | binary() | list().

split(Subject, RE, Options) ->
    try
        {NewOpt, Convert, Limit, Strip, Group} =
            process_split_params(Options, iodata, -1, false, false),
        Unicode = check_for_unicode(RE, Options),
        FlatSubject = to_binary(Subject, Unicode),
        case compile_split(RE, NewOpt) of
            {error, _Err} ->
                throw(badre);
            {_PreCompiled, _NumSub, _RunOpt} when FlatSubject =:= <<>> ->
                [];
            {PreCompiled, NumSub, RunOpt} ->
                case
                    re:run(FlatSubject, PreCompiled, RunOpt ++ [global])
                of
                    nomatch ->
                        case Group of
                            true ->
                                convert_any_split_result([[FlatSubject]],
                                                         Convert,
                                                         Unicode, true);
                            false ->
                                convert_any_split_result([FlatSubject],
                                                         Convert,
                                                         Unicode, false)
                        end;
                    {match, Matches} ->
                        Res =
                            do_split(FlatSubject, 0, Matches, NumSub,
                                     Limit, Group),
                        Stripped =
                            case Strip of
                                true ->
                                    backstrip_empty(Res, Group);
                                false ->
                                    Res
                            end,
                        convert_any_split_result(Stripped, Convert,
                                                 Unicode, Group)
                end
        end
    catch
        throw:badopt ->
            badarg_with_cause([Subject, RE, Options], badopt);
        throw:badre ->
            badarg_with_info([Subject, RE, Options]);
        error:badarg ->
            badarg_with_info([Subject, RE, Options])
    end.

backstrip_empty(List, false) ->
    do_backstrip_empty(List);
backstrip_empty(List, true) ->
    do_backstrip_empty_g(List).

do_backstrip_empty_g([]) ->
    [];
do_backstrip_empty_g([H]) ->
    case do_backstrip_empty(H) of
        [] ->
            [];
        _ ->
            [H]
    end;
do_backstrip_empty_g([H | T]) ->
    case do_backstrip_empty_g(T) of
        [] ->
            case do_backstrip_empty(H) of
                [] ->
                    [];
                _ ->
                    [H]
            end;
        Other ->
            [H | Other]
    end.

do_backstrip_empty([]) ->
    [];
do_backstrip_empty([<<>>]) ->
    [];
do_backstrip_empty([<<>> | T]) ->
    case do_backstrip_empty(T) of
        [] ->
            [];
        Other ->
            [<<>> | Other]
    end;
do_backstrip_empty([H | T]) ->
    [H | do_backstrip_empty(T)].

convert_any_split_result(List, Type, Uni, true) ->
    [ 
     convert_split_result(Part, Type, Uni) ||
         Part <- List
    ];
convert_any_split_result(List, Type, Uni, false) ->
    convert_split_result(List, Type, Uni).

convert_split_result(List, iodata, _Unicode) ->
    List;
convert_split_result(List, binary, _Unicode) ->
    List;
convert_split_result(List, list, true) ->
    [ 
     unicode:characters_to_list(Element, unicode) ||
         Element <- List
    ];
convert_split_result(List, list, false) ->
    [ 
     binary_to_list(Element) ||
         Element <- List
    ].

do_split(Subj, Off, _, _, 0, false) ->
    <<_:Off/binary,Rest/binary>> = Subj,
    [Rest];
do_split(Subj, Off, [], _, _, false) ->
    <<_:Off/binary,Rest/binary>> = Subj,
    [Rest];
do_split(Subj, Off, _, _, _, false) when byte_size(Subj) =< Off ->
    [<<>>];
do_split(Subj, Off, _, _, 0, true) ->
    <<_:Off/binary,Rest/binary>> = Subj,
    [[Rest]];
do_split(Subj, Off, [], _, _, true) ->
    <<_:Off/binary,Rest/binary>> = Subj,
    [[Rest]];
do_split(Subj, Off, _, _, _, true) when byte_size(Subj) =< Off ->
    [[<<>>]];
do_split(Subj, Offset,
         [[{MainI, MainL} | Sub] | T],
         NumSub, Limit, Group) ->
    NewOffset = MainI + MainL,
    KeptLen = MainI - Offset,
    case {KeptLen, empty_sub(Sub), MainL} of
        {0, true, 0} ->
            do_split(Subj, NewOffset, T, NumSub, Limit, Group);
        _ ->
            <<_:Offset/binary,Keep:KeptLen/binary,_/binary>> = Subj,
            ESub = extend_subpatterns(Sub, NumSub),
            Tail =
                do_split(Subj, NewOffset, T, NumSub, Limit - 1, Group),
            case Group of
                false ->
                    [Keep |
                     dig_subpatterns(Subj, lists:reverse(ESub), Tail)];
                true ->
                    [[Keep |
                      dig_subpatterns(Subj, lists:reverse(ESub), [])] |
                     Tail]
            end
    end.

empty_sub([]) ->
    true;
empty_sub([{_, 0} | T]) ->
    empty_sub(T);
empty_sub(_) ->
    false.

dig_subpatterns(_, [], Acc) ->
    Acc;
dig_subpatterns(Subj, [{-1, 0} | T], Acc) ->
    dig_subpatterns(Subj, T, [<<>> | Acc]);
dig_subpatterns(Subj, [{I, L} | T], Acc) ->
    <<_:I/binary,Part:L/binary,_/binary>> = Subj,
    dig_subpatterns(Subj, T, [Part | Acc]).

extend_subpatterns(_, 0) ->
    [];
extend_subpatterns([], N) ->
    [{0, 0} | extend_subpatterns([], N - 1)];
extend_subpatterns([H | T], N) ->
    [H | extend_subpatterns(T, N - 1)].

compile_split({re_pattern, N, _, _, _} = Comp, Options) ->
    {Comp, N, Options};
compile_split(Pat, Options0) when not is_tuple(Pat) ->
    Options =
        lists:filter(fun(O) ->
                            not runopt(O)
                     end,
                     Options0),
    case re:compile(Pat, Options) of
        {error, Err} ->
            {error, Err};
        {ok, {re_pattern, N, _, _, _} = Comp} ->
            NewOpt =
                lists:filter(fun(OO) ->
                                    not copt(OO)
                             end,
                             Options0),
            {Comp, N, NewOpt}
    end;
compile_split(_, _) ->
    throw(badre).

-spec replace(Subject, RE, Replacement) -> iodata() | unicode:charlist()
                 when
                     Subject :: iodata() | unicode:charlist(),
                     RE :: mp() | iodata(),
                     Replacement ::
                         iodata() | unicode:charlist() | replace_fun().

replace(Subject, RE, Replacement) ->
    try
        replace(Subject, RE, Replacement, [])
    catch
        error:_ ->
            badarg_with_info([Subject, RE, Replacement])
    end.

-spec replace(Subject, RE, Replacement, Options) ->
                 iodata() | unicode:charlist()
                 when
                     Subject :: iodata() | unicode:charlist(),
                     RE :: mp() | iodata() | unicode:charlist(),
                     Replacement ::
                         iodata() | unicode:charlist() | replace_fun(),
                     Options :: [Option],
                     Option ::
                         anchored | global | notbol | noteol |
                         notempty | notempty_atstart |
                         {offset, non_neg_integer()} |
                         {newline, NLSpec} |
                         bsr_anycrlf |
                         {match_limit, non_neg_integer()} |
                         {match_limit_recursion, non_neg_integer()} |
                         bsr_unicode |
                         {return, ReturnType} |
                         CompileOpt,
                     ReturnType :: iodata | list | binary,
                     CompileOpt :: compile_option(),
                     NLSpec :: cr | crlf | lf | anycrlf | any.

replace(Subject, RE, Replacement, Options) ->
    try
        {NewOpt, Convert} = process_repl_params(Options, iodata),
        Unicode = check_for_unicode(RE, Options),
        FlatSubject = to_binary(Subject, Unicode),
        Replacement1 = normalize_replacement(Replacement, Unicode),
        IoList =
            do_replace(FlatSubject, Subject, RE, Replacement1, NewOpt),
        case Convert of
            iodata ->
                IoList;
            binary ->
                case Unicode of
                    false ->
                        iolist_to_binary(IoList);
                    true ->
                        unicode:characters_to_binary(IoList, unicode)
                end;
            list ->
                case Unicode of
                    false ->
                        binary_to_list(iolist_to_binary(IoList));
                    true ->
                        unicode:characters_to_list(IoList, unicode)
                end
        end
    catch
        throw:badopt ->
            badarg_with_cause([Subject, RE, Replacement, Options],
                              badopt);
        throw:badre ->
            badarg_with_info([Subject, RE, Replacement, Options]);
        error:badarg ->
            badarg_with_info([Subject, RE, Replacement, Options])
    end.

normalize_replacement(Replacement, _Unicode)
    when is_function(Replacement, 2) ->
    Replacement;
normalize_replacement(Replacement, Unicode) ->
    to_binary(Replacement, Unicode).

do_replace(FlatSubject, Subject, RE, Replacement, Options) ->
    case re:run(FlatSubject, RE, Options) of
        nomatch ->
            Subject;
        {match, [Mlist | T]} when is_list(Mlist) ->
            apply_mlist(FlatSubject, Replacement, [Mlist | T]);
        {match, Slist} ->
            apply_mlist(FlatSubject, Replacement, [Slist])
    end.

process_repl_params([], Convert) ->
    {[], Convert};
process_repl_params([report_errors | _], _) ->
    throw(badopt);
process_repl_params([{capture, _, _} | _], _) ->
    throw(badopt);
process_repl_params([{capture, _} | _], _) ->
    throw(badopt);
process_repl_params([{return, iodata} | T], _C) ->
    process_repl_params(T, iodata);
process_repl_params([{return, list} | T], _C) ->
    process_repl_params(T, list);
process_repl_params([{return, binary} | T], _C) ->
    process_repl_params(T, binary);
process_repl_params([{return, _} | _], _) ->
    throw(badopt);
process_repl_params([H | T], C) ->
    {NT, NC} = process_repl_params(T, C),
    {[H | NT], NC};
process_repl_params(_, _) ->
    throw(badopt).

process_split_params([], Convert, Limit, Strip, Group) ->
    {[], Convert, Limit, Strip, Group};
process_split_params([trim | T], C, _L, _S, G) ->
    process_split_params(T, C, -1, true, G);
process_split_params([{parts, 0} | T], C, _L, _S, G) ->
    process_split_params(T, C, -1, true, G);
process_split_params([{parts, N} | T], C, _L, _S, G)
    when is_integer(N), N >= 1 ->
    process_split_params(T, C, N - 1, false, G);
process_split_params([{parts, infinity} | T], C, _L, _S, G) ->
    process_split_params(T, C, -1, false, G);
process_split_params([{parts, _} | _], _, _, _, _) ->
    throw(badopt);
process_split_params([group | T], C, L, S, _G) ->
    process_split_params(T, C, L, S, true);
process_split_params([global | _], _, _, _, _) ->
    throw(badopt);
process_split_params([report_errors | _], _, _, _, _) ->
    throw(badopt);
process_split_params([{capture, _, _} | _], _, _, _, _) ->
    throw(badopt);
process_split_params([{capture, _} | _], _, _, _, _) ->
    throw(badopt);
process_split_params([{return, iodata} | T], _C, L, S, G) ->
    process_split_params(T, iodata, L, S, G);
process_split_params([{return, list} | T], _C, L, S, G) ->
    process_split_params(T, list, L, S, G);
process_split_params([{return, binary} | T], _C, L, S, G) ->
    process_split_params(T, binary, L, S, G);
process_split_params([{return, _} | _], _, _, _, _) ->
    throw(badopt);
process_split_params([H | T], C, L, S, G) ->
    {NT, NC, NL, NS, NG} = process_split_params(T, C, L, S, G),
    {[H | NT], NC, NL, NS, NG};
process_split_params(_, _, _, _, _) ->
    throw(badopt).

apply_mlist(Subject, Replacement, Mlist) ->
    do_mlist(Subject, Subject, 0, precomp_repl(Replacement), Mlist).

precomp_repl(<<>>) ->
    [];
precomp_repl(<<$\\,$g,${,Rest/binary>>) when byte_size(Rest) > 0 ->
    {NS, <<$},NRest/binary>>} = pick_int(Rest),
    [list_to_integer(NS) | precomp_repl(NRest)];
precomp_repl(<<$\\,$g,Rest/binary>>) when byte_size(Rest) > 0 ->
    {NS, NRest} = pick_int(Rest),
    [list_to_integer(NS) | precomp_repl(NRest)];
precomp_repl(<<$\\,X,Rest/binary>>) when X < $1; X > $9 ->
    case precomp_repl(Rest) of
        [BHead | T0] when is_binary(BHead) ->
            [<<X,BHead/binary>> | T0];
        Other ->
            [<<X>> | Other]
    end;
precomp_repl(<<$\\,Rest/binary>>) when byte_size(Rest) > 0 ->
    {NS, NRest} = pick_int(Rest),
    [list_to_integer(NS) | precomp_repl(NRest)];
precomp_repl(<<$&,Rest/binary>>) ->
    [0 | precomp_repl(Rest)];
precomp_repl(<<X,Rest/binary>>) ->
    case precomp_repl(Rest) of
        [BHead | T0] when is_binary(BHead) ->
            [<<X,BHead/binary>> | T0];
        Other ->
            [<<X>> | Other]
    end;
precomp_repl(Repl) when is_function(Repl) ->
    Repl.

pick_int(<<X,R/binary>>) when X >= $0, X =< $9 ->
    {Found, Rest} = pick_int(R),
    {[X | Found], Rest};
pick_int(Bin) ->
    {[], Bin}.

do_mlist(_, <<>>, _, _, []) ->
    [];
do_mlist(_, Subject, _, _, []) ->
    Subject;
do_mlist(Whole, Subject, Pos, Repl, [[{MPos, Count} | Sub] | Tail])
    when MPos > Pos ->
    EatLength = MPos - Pos,
    <<Untouched:EatLength/binary,Rest/binary>> = Subject,
    [Untouched |
     do_mlist(Whole, Rest, MPos, Repl, [[{MPos, Count} | Sub] | Tail])];
do_mlist(Whole, Subject, Pos, Repl, [[{MPos, Count} | Sub] | Tail])
    when MPos =:= Pos ->
    EatLength = Count,
    <<_:EatLength/binary,Rest/binary>> = Subject,
    NewData = do_replace(Whole, Repl, [{MPos, Count} | Sub]),
    [NewData | do_mlist(Whole, Rest, Pos + EatLength, Repl, Tail)].

do_replace(Subject, Repl, SubExprs0) when is_function(Repl) ->
    All = binary:part(Subject, hd(SubExprs0)),
    SubExprs1 =
        [ 
         if
             Pos >= 0, Len > 0 ->
                 binary:part(Subject, Pos, Len);
             true ->
                 <<>>
         end ||
             {Pos, Len} <- tl(SubExprs0)
        ],
    Repl(All, SubExprs1);
do_replace(_, [Bin], _) when is_binary(Bin) ->
    Bin;
do_replace(Subject, Repl, SubExprs0) ->
    SubExprs = list_to_tuple(SubExprs0),
    [ 
     case Part of
         N when is_integer(N) ->
             if
                 tuple_size(SubExprs) =< N ->
                     <<>>;
                 true ->
                     {SPos, SLen} = element(N + 1, SubExprs),
                     if
                         SPos < 0 ->
                             <<>>;
                         true ->
                             <<_:SPos/binary,Res:SLen/binary,_/binary>> =
                                 Subject,
                             Res
                     end
             end;
         Other ->
             Other
     end ||
         Part <- Repl
    ].

check_for_unicode({re_pattern, _, 1, _, _}, _) ->
    true;
check_for_unicode({re_pattern, _, 0, _, _}, _) ->
    false;
check_for_unicode(_, L) ->
    lists:member(unicode, L).

check_for_crlf({re_pattern, _, _, 1, _}, _) ->
    true;
check_for_crlf({re_pattern, _, _, 0, _}, _) ->
    false;
check_for_crlf(_, L) ->
    case lists:keysearch(newline, 1, L) of
        {value, {newline, any}} ->
            true;
        {value, {newline, crlf}} ->
            true;
        {value, {newline, anycrlf}} ->
            true;
        _ ->
            false
    end.

process_parameters([], InitialOffset, SelectReturn, ConvertReturn, _, _) ->
    {[], InitialOffset, SelectReturn, ConvertReturn};
process_parameters([{offset, N} | T], _Init0, Select0, Return0, CC, RE) ->
    process_parameters(T, N, Select0, Return0, CC, RE);
process_parameters([global | T], Init0, Select0, Return0, CC, RE) ->
    process_parameters(T, Init0, Select0, Return0, CC, RE);
process_parameters([{capture, Values, Type} | T],
                   Init0, Select0, _Return0, CC, RE) ->
    process_parameters([{capture, Values} | T],
                       Init0, Select0, Type, CC, RE);
process_parameters([{capture, Values} | T],
                   Init0, Select0, Return0, CC, RE) ->
    {NewTail, Init1, Select1, Return1} =
        process_parameters(T, Init0, Select0, Return0, CC, RE),
    case Select1 of
        false ->
            case Values of
                all ->
                    {[{capture, all} | NewTail], Init1, all, Return0};
                all_names ->
                    case re:inspect(RE, namelist) of
                        {namelist, []} ->
                            {[{capture, first} | NewTail],
                             Init1, none, Return0};
                        {namelist, List} ->
                            {[{capture, [0 | List]} | NewTail],
                             Init1, stripfirst, Return0}
                    end;
                first ->
                    {[{capture, first} | NewTail], Init1, all, Return0};
                all_but_first ->
                    {[{capture, all} | NewTail],
                     Init1, stripfirst, Return0};
                none ->
                    {[{capture, first} | NewTail], Init1, none, Return0};
                [] ->
                    {[{capture, first} | NewTail], Init1, none, Return0};
                List when is_list(List) ->
                    {[{capture, [0 | List]} | NewTail],
                     Init1, stripfirst, Return0};
                _ ->
                    throw(badlist)
            end;
        _ ->
            {NewTail, Init1, Select1, Return1}
    end;
process_parameters([H | T], Init0, Select0, Return0, true, RE) ->
    case copt(H) of
        true ->
            process_parameters(T, Init0, Select0, Return0, true, RE);
        false ->
            {NewT, Init, Select, Return} =
                process_parameters(T, Init0, Select0, Return0, true, RE),
            {[H | NewT], Init, Select, Return}
    end;
process_parameters([H | T], Init0, Select0, Return0, false, RE) ->
    {NewT, Init, Select, Return} =
        process_parameters(T, Init0, Select0, Return0, false, RE),
    {[H | NewT], Init, Select, Return};
process_parameters(_, _, _, _, _, _) ->
    throw(badlist).

postprocess({match, []}, _, _, _, _) ->
    nomatch;
postprocess({match, _}, none, _, _, _) ->
    match;
postprocess({match, M}, Any, binary, Flat, Uni) ->
    binarify(postprocess({match, M}, Any, index, Flat, Uni), Flat);
postprocess({match, M}, Any, list, Flat, Uni) ->
    listify(postprocess({match, M}, Any, index, Flat, Uni), Flat, Uni);
postprocess({match, M}, all, index, _, _) ->
    {match, M};
postprocess({match, M}, false, index, _, _) ->
    {match, M};
postprocess({match, M}, stripfirst, index, _, _) ->
    {match,
     [ 
      T ||
          [_ | T] <- M
     ]}.

binarify({match, M}, Flat) ->
    {match,
     [ 
      [ 
       case {I, L} of
           {-1, 0} ->
               <<>>;
           {SPos, SLen} ->
               <<_:SPos/binary,Res:SLen/binary,_/binary>> = Flat,
               Res
       end ||
           {I, L} <- One
      ] ||
          One <- M
     ]}.

listify({match, M}, Flat, Uni) ->
    {match,
     [ 
      [ 
       case {I, L} of
           {_, 0} ->
               [];
           {SPos, SLen} ->
               case Uni of
                   true ->
                       <<_:SPos/binary,Res:SLen/binary,_/binary>> = Flat,
                       unicode:characters_to_list(Res, unicode);
                   false ->
                       Start = SPos + 1,
                       End = SPos + SLen,
                       binary_to_list(Flat, Start, End)
               end
       end ||
           {I, L} <- One
      ] ||
          One <- M
     ]}.

ubinarify({match, M}, Flat) ->
    {match,
     [ 
      case {I, L} of
          {-1, 0} ->
              <<>>;
          {SPos, SLen} ->
              <<_:SPos/binary,Res:SLen/binary,_/binary>> = Flat,
              Res
      end ||
          {I, L} <- M
     ]};
ubinarify(Else, _) ->
    Else.

ulistify({match, M}, Flat) ->
    {match,
     [ 
      case {I, L} of
          {_, 0} ->
              [];
          {SPos, SLen} ->
              <<_:SPos/binary,Res:SLen/binary,_/binary>> = Flat,
              unicode:characters_to_list(Res, unicode)
      end ||
          {I, L} <- M
     ]};
ulistify(Else, _) ->
    Else.

process_uparams([global | _T], _RetType) ->
    throw(false);
process_uparams([{capture, Values, Type} | T], _OldType) ->
    process_uparams([{capture, Values} | T], Type);
process_uparams([H | T], Type) ->
    {NL, NType} = process_uparams(T, Type),
    {[H | NL], NType};
process_uparams([], Type) ->
    {[], Type}.

ucompile(RE, Options) ->
    try
        re:compile(unicode:characters_to_binary(RE, unicode), Options)
    catch
        error:AnyError ->
            {'EXIT', {new_stacktrace, [{Mod, _, L, Loc} | Rest]}} =
                catch error(new_stacktrace, [RE, Options]),
            erlang:raise(error, AnyError,
                         [{Mod, compile, L, Loc} | Rest])
    end.

urun(Subject, RE, Options) ->
    try
        urun2(Subject, RE, Options)
    catch
        error:AnyError ->
            {'EXIT', {new_stacktrace, [{Mod, _, L, Loc} | Rest]}} =
                catch error(new_stacktrace, [Subject, RE, Options]),
            erlang:raise(error, AnyError, [{Mod, run, L, Loc} | Rest])
    end.

urun2(Subject0, RE0, Options0) ->
    {Options, RetType} =
        case catch process_uparams(Options0, index) of
            {A, B} ->
                {A, B};
            _ ->
                {Options0, false}
        end,
    Subject = unicode:characters_to_binary(Subject0, unicode),
    RE =
        case RE0 of
            BinRE when is_binary(BinRE) ->
                BinRE;
            {re_pattern, _, _, _, _} = ReCompiled ->
                ReCompiled;
            ListRE ->
                unicode:characters_to_binary(ListRE, unicode)
        end,
    Ret = re:run(Subject, RE, Options),
    case RetType of
        binary ->
            ubinarify(Ret, Subject);
        list ->
            ulistify(Ret, Subject);
        _ ->
            Ret
    end.

grun(Subject, RE, {Options, NeedClean}) ->
    try
        grun2(Subject, RE, {Options, NeedClean})
    catch
        error:AnyError ->
            {'EXIT', {new_stacktrace, [{Mod, _, L, Loc} | Rest]}} =
                catch error(new_stacktrace, [Subject, RE, Options]),
            erlang:raise(error, AnyError, [{Mod, run, L, Loc} | Rest])
    end;
grun(Subject, RE, {Options, NeedClean, OrigRE}) ->
    try
        grun2(Subject, RE, {Options, NeedClean})
    catch
        error:AnyError ->
            {'EXIT', {new_stacktrace, [{Mod, _, L, Loc} | Rest]}} =
                catch error(new_stacktrace, [Subject, OrigRE, Options]),
            erlang:raise(error, AnyError, [{Mod, run, L, Loc} | Rest])
    end.

grun2(Subject, RE, {Options, NeedClean}) ->
    Unicode = check_for_unicode(RE, Options),
    CRLF = check_for_crlf(RE, Options),
    FlatSubject = to_binary(Subject, Unicode),
    do_grun(FlatSubject, Subject, Unicode, CRLF, RE,
            {Options, NeedClean}).

do_grun(FlatSubject, Subject, Unicode, CRLF, RE, {Options0, NeedClean}) ->
    {StrippedOptions, InitialOffset, SelectReturn, ConvertReturn} =
        case
            catch
                process_parameters(Options0, 0, false, index, NeedClean,
                                   RE)
        of
            badlist ->
                error(badarg, [Subject, RE, Options0]);
            CorrectReturn ->
                CorrectReturn
        end,
    try
        postprocess(loopexec(FlatSubject, RE, InitialOffset,
                             byte_size(FlatSubject),
                             Unicode, CRLF, StrippedOptions, true),
                    SelectReturn, ConvertReturn, FlatSubject, Unicode)
    catch
        throw:ErrTuple ->
            ErrTuple
    end.

loopexec(_, _, X, Y, _, _, _, _) when X > Y ->
    {match, []};
loopexec(Subject, RE, X, Y, Unicode, CRLF, Options, First) ->
    case
        re:internal_run(Subject, RE, [{offset, X}] ++ Options, First)
    of
        {error, Err} ->
            throw({error, Err});
        nomatch ->
            {match, []};
        {match, [{A, B} | More]} ->
            {match, Rest} =
                case B > 0 of
                    true ->
                        loopexec(Subject, RE,
                                 A + B,
                                 Y, Unicode, CRLF, Options, false);
                    false ->
                        {match, M} =
                            case
                                re:internal_run(Subject, RE,
                                                [{offset, X},
                                                 notempty_atstart,
                                                 anchored]
                                                ++
                                                Options,
                                                false)
                            of
                                nomatch ->
                                    {match, []};
                                {match, Other} ->
                                    {match, Other}
                            end,
                        NewA =
                            case M of
                                [{_, NStep} | _] when NStep > 0 ->
                                    A + NStep;
                                _ ->
                                    forward(Subject, A, 1, Unicode,
                                            CRLF)
                            end,
                        {match, MM} =
                            loopexec(Subject, RE, NewA, Y, Unicode,
                                     CRLF, Options, false),
                        case M of
                            [] ->
                                {match, MM};
                            _ ->
                                {match, [M | MM]}
                        end
                end,
            {match, [[{A, B} | More] | Rest]}
    end.

forward(_Chal, A, 0, _, _) ->
    A;
forward(Chal, A, N, U, true) ->
    <<_:A/binary,Tl/binary>> = Chal,
    case Tl of
        <<$\r,$\n,_/binary>> ->
            forward(Chal, A + 2, N - 1, U, true);
        _ ->
            forward2(Chal, A, N, U, true)
    end;
forward(Chal, A, N, U, false) ->
    forward2(Chal, A, N, U, false).

forward2(Chal, A, N, false, CRLF) ->
    forward(Chal, A + 1, N - 1, false, CRLF);
forward2(Chal, A, N, true, CRLF) ->
    <<_:A/binary,Tl/binary>> = Chal,
    Forw =
        case Tl of
            <<1:1,1:1,0:1,_:5,_/binary>> ->
                2;
            <<1:1,1:1,1:1,0:1,_:4,_/binary>> ->
                3;
            <<1:1,1:1,1:1,1:1,0:1,_:3,_/binary>> ->
                4;
            _ ->
                1
        end,
    forward(Chal, A + Forw, N - 1, true, CRLF).

copt(caseless) ->
    true;
copt(no_start_optimize) ->
    true;
copt(never_utf) ->
    true;
copt(ucp) ->
    true;
copt(dollar_endonly) ->
    true;
copt(dotall) ->
    true;
copt(extended) ->
    true;
copt(firstline) ->
    true;
copt(multiline) ->
    true;
copt(no_auto_capture) ->
    true;
copt(dupnames) ->
    true;
copt(ungreedy) ->
    true;
copt(unicode) ->
    true;
copt(_) ->
    false.

runopt(notempty) ->
    true;
runopt(notempty_atstart) ->
    true;
runopt(notbol) ->
    true;
runopt(noteol) ->
    true;
runopt({offset, _}) ->
    true;
runopt({capture, _, _}) ->
    true;
runopt({capture, _}) ->
    true;
runopt(global) ->
    true;
runopt({match_limit, _}) ->
    true;
runopt({match_limit_recursion, _}) ->
    true;
runopt(_) ->
    false.

to_binary(Bin, _IsUnicode) when is_binary(Bin) ->
    Bin;
to_binary(Data, true) ->
    unicode:characters_to_binary(Data, unicode);
to_binary(Data, false) ->
    iolist_to_binary(Data).

badarg_with_cause(Args, Cause) ->
    error(badarg, Args,
          [{error_info, #{module => erl_stdlib_errors, cause => Cause}}]).

badarg_with_info(Args) ->
    error(badarg, Args, [{error_info, #{module => erl_stdlib_errors}}]).



