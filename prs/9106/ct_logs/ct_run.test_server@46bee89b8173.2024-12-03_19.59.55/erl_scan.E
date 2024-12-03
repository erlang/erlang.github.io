-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.1.2/src/erl_scan.erl", 1).

-module(erl_scan).

-export([string/1,
         string/2,
         string/3,
         tokens/3,
         tokens/4,
         format_error/1,
         reserved_word/1,
         f_reserved_word/1]).

-export([column/1,
         end_location/1,
         line/1,
         location/1,
         text/1,
         category/1,
         symbol/1]).

-export([continuation_location/1]).

-export_type([error_info/0,
              options/0,
              return_cont/0,
              token/0,
              tokens/0,
              tokens_result/0]).

-removed([{set_attribute, 3, "use erl_anno:set_line/2 instead"},
          {attributes_info, '_',
           "use erl_anno:{column,line,location,text}/1 instead"},
          {token_info, '_',
           "use erl_scan:{category,column,line,location,symbol,text}/1 "
           "instead"}]).

-removed_type([{column, 0, "use erl_anno:column() instead"},
               {line, 0, "use erl_anno:line() instead"},
               {location, 0, "use erl_anno:location() instead"}]).

-type category() :: atom().

-type resword_fun() :: fun((atom()) -> boolean()).

-type text_fun() :: fun((atom(), string()) -> boolean()).

-type option() ::
          return | return_white_spaces | return_comments | text |
          {reserved_word_fun, resword_fun()} |
          {text_fun, text_fun()} |
          {compiler_internal, [term()]}.

-type options() :: option() | [option()].

-type symbol() :: atom() | float() | integer() | string().

-type token() ::
          {category(), Anno :: erl_anno:anno(), symbol()} |
          {category(), Anno :: erl_anno:anno()}.

-type tokens() :: [token()].

-type error_description() :: term().

-type error_info() ::
          {erl_anno:location(), module(), error_description()}.

-record(erl_scan,{resword_fun = fun reserved_word/1 :: resword_fun(),
                  text_fun =
                      fun(_, _) ->
                             false
                      end ::
                          text_fun(),
                  ws = false :: boolean(),
                  comment = false :: boolean(),
                  has_fun = false :: boolean(),
                  checks = false :: boolean(),
                  in_check = false :: boolean()}).

-spec format_error(ErrorDescriptor) -> string()
                      when ErrorDescriptor :: error_description().

format_error({unterminated, char}) ->
    "unterminated character";
format_error({unterminated, What, Head}) ->
    lists:flatten(["unterminated ",
                   string_thing(What),
                   " starting with ",
                   io_lib:write_string(Head, string_quote(What))]);
format_error({illegal, Type}) ->
    lists:flatten(io_lib:fwrite("illegal ~w", [Type]));
format_error({base, Base}) ->
    lists:flatten(io_lib:fwrite("illegal base '~w'", [Base]));
format_error({float_base, Base}) ->
    lists:flatten(io_lib:fwrite("illegal base '~w' - only 10, 16 or 2 a"
                                "re allowed for floating point literals",
                                [Base]));
format_error({exponent, Base}) ->
    C = if
            Base =:= 10 ->
                $e;
            true ->
                $p
        end,
    lists:flatten(io_lib:fwrite("only '~c' allowed as exponent characte"
                                "r in base ~w",
                                [C, Base]));
format_error(indentation) ->
    "bad indentation in triple-quoted string";
format_error(white_space) ->
    "not white space after start of triple-quoted string";
format_error(string_concat) ->
    "adjacent string literals without intervening white space";
format_error(Other) ->
    lists:flatten(io_lib:write(Other)).

-spec string(String) -> Return
                when
                    String :: string(),
                    Return ::
                        {ok, Tokens :: tokens(), EndLocation} |
                        {error,
                         ErrorInfo :: error_info(),
                         ErrorLocation},
                    EndLocation :: erl_anno:location(),
                    ErrorLocation :: erl_anno:location().

string(String) ->
    string(String, 1, []).

-spec string(String, StartLocation) -> Return
                when
                    String :: string(),
                    Return ::
                        {ok, Tokens :: tokens(), EndLocation} |
                        {error,
                         ErrorInfo :: error_info(),
                         ErrorLocation},
                    StartLocation :: erl_anno:location(),
                    EndLocation :: erl_anno:location(),
                    ErrorLocation :: erl_anno:location().

string(String, StartLocation) ->
    string(String, StartLocation, []).

-spec string(String, StartLocation, Options) -> Return
                when
                    String :: string(),
                    Options :: options(),
                    Return ::
                        {ok, Tokens :: tokens(), EndLocation} |
                        {error,
                         ErrorInfo :: error_info(),
                         ErrorLocation},
                    StartLocation :: erl_anno:location(),
                    EndLocation :: erl_anno:location(),
                    ErrorLocation :: erl_anno:location().

string(String, Line, Options) when is_list(String), is_integer(Line) ->
    string1(String, options(Options), Line, no_col, []);
string(String, {Line, Column}, Options)
    when
        is_list(String),
        is_integer(Line),
        is_integer(Column)
        andalso
        Column >= 1 ->
    string1(String, options(Options), Line, Column, []).

-type char_spec() :: string() | eof.

-type cont_fun() ::
          fun((char_spec(),
               #erl_scan{},
               erl_anno:line(),
               erl_anno:column(),
               tokens(),
               any()) ->
                  any()).

-opaque return_cont() ::
            {erl_scan_continuation,
             string(),
             erl_anno:column(),
             tokens(),
             erl_anno:line(),
             #erl_scan{},
             any(),
             cont_fun()}.

-type tokens_result() ::
          {ok, Tokens :: tokens(), EndLocation :: erl_anno:location()} |
          {eof, EndLocation :: erl_anno:location()} |
          {error,
           ErrorInfo :: error_info(),
           EndLocation :: erl_anno:location()}.

-spec tokens(Continuation, CharSpec, StartLocation) -> Return
                when
                    Continuation :: return_cont() | [],
                    CharSpec :: char_spec(),
                    StartLocation :: erl_anno:location(),
                    Return ::
                        {done,
                         Result :: tokens_result(),
                         LeftOverChars :: char_spec()} |
                        {more, Continuation1 :: return_cont()}.

tokens(Cont, CharSpec, StartLocation) ->
    tokens(Cont, CharSpec, StartLocation, []).

-spec tokens(Continuation, CharSpec, StartLocation, Options) -> Return
                when
                    Continuation :: return_cont() | [],
                    CharSpec :: char_spec(),
                    StartLocation :: erl_anno:location(),
                    Options :: options(),
                    Return ::
                        {done,
                         Result :: tokens_result(),
                         LeftOverChars :: char_spec()} |
                        {more, Continuation1 :: return_cont()}.

tokens([], CharSpec, Line, Options) when is_integer(Line) ->
    tokens1(CharSpec,
            options(Options),
            Line, no_col, [],
            fun scan/6,
            []);
tokens([], CharSpec, {Line, Column}, Options)
    when
        is_integer(Line),
        is_integer(Column)
        andalso
        Column >= 1 ->
    tokens1(CharSpec,
            options(Options),
            Line, Column, [],
            fun scan/6,
            []);
tokens({erl_scan_continuation, Cs, Col, Toks, Line, St, Any, Fun},
       CharSpec, _Loc, _Opts) ->
    tokens1(Cs ++ CharSpec, St, Line, Col, Toks, Fun, Any).

continuation_location({erl_scan_continuation, _, no_col, _, Line, _, _,
                       _}) ->
    Line;
continuation_location({erl_scan_continuation, _, Col, _, Line, _, _, _}) ->
    {Line, Col}.

-spec column(Token) -> erl_anno:column() | undefined
                when Token :: token().

column(Token) ->
    erl_anno:column(element(2, Token)).

-spec end_location(Token) -> erl_anno:location() | undefined
                      when Token :: token().

end_location(Token) ->
    erl_anno:end_location(element(2, Token)).

-spec line(Token) -> erl_anno:line() when Token :: token().

line(Token) ->
    erl_anno:line(element(2, Token)).

-spec location(Token) -> erl_anno:location() when Token :: token().

location(Token) ->
    erl_anno:location(element(2, Token)).

-spec text(Token) -> erl_anno:text() | undefined when Token :: token().

text(Token) ->
    erl_anno:text(element(2, Token)).

-spec category(Token) -> category() when Token :: token().

category({Category, _Anno}) ->
    Category;
category({Category, _Anno, _Symbol}) ->
    Category;
category(T) ->
    error(badarg, [T]).

-spec symbol(Token) -> symbol() when Token :: token().

symbol({Category, _Anno}) ->
    Category;
symbol({_Category, _Anno, Symbol}) ->
    Symbol;
symbol(T) ->
    error(badarg, [T]).

string_thing(What) ->
    case What of
        atom ->
            "atom";
        string ->
            "string";
        {string, _N} ->
            "triple-quoted string";
        {sigil, Name, Q1, Q2} ->
            [$~, atom_to_list(Name), Q1, Q2, " sigil string"];
        {sigil, Name, _N} ->
            "triple-quoted "
            ++
            [$~, atom_to_list(Name) | " sigil string"]
    end.

string_quote(atom) ->
    $';
string_quote(_) ->
    $".

options(Opts0) when is_list(Opts0) ->
    Opts = lists:foldr(fun expand_opt/2, [], Opts0),
    [RW_fun] =
        case opts(Opts, [reserved_word_fun], []) of
            badarg ->
                error(badarg, [Opts0]);
            R ->
                R
        end,
    Comment = proplists:get_bool(return_comments, Opts),
    WS = proplists:get_bool(return_white_spaces, Opts),
    Txt = proplists:get_bool(text, Opts),
    TxtFunOpt = proplists:get_value(text_fun, Opts, none),
    Internal = proplists:get_value(compiler_internal, Opts, []),
    Checks = proplists:get_bool(ssa_checks, Internal),
    DefTxtFun =
        fun(_, _) ->
               Txt
        end,
    {HasFun, TxtFun} =
        if
            Txt ->
                {Txt, DefTxtFun};
            TxtFunOpt == none ->
                {Txt, DefTxtFun};
            true ->
                {true, TxtFunOpt}
        end,
    {erl_scan, RW_fun, TxtFun, WS, Comment, HasFun, Checks, false};
options(Opt) ->
    options([Opt]).

opts(Options, [Key | Keys], L) ->
    V = case lists:keyfind(Key, 1, Options) of
            {reserved_word_fun, F} when is_function(F, 1) ->
                {ok, F};
            {Key, _} ->
                badarg;
            false ->
                {ok, default_option(Key)}
        end,
    case V of
        badarg ->
            badarg;
        {ok, Value} ->
            opts(Options, Keys, [Value | L])
    end;
opts(_Options, [], L) ->
    lists:reverse(L).

default_option(reserved_word_fun) ->
    fun reserved_word/1.

expand_opt(return, Os) ->
    [return_comments, return_white_spaces | Os];
expand_opt(O, Os) ->
    [O | Os].

tokens1(Cs, St, Line, Col, Toks, Fun, Any) when is_list(Cs); Cs =:= eof ->
    case Fun(Cs, St, Line, Col, Toks, Any) of
        {more, {Cs0, Nst, Ncol, Ntoks, Nline, Nany, Nfun}} ->
            {more,
             {erl_scan_continuation, Cs0, Ncol, Ntoks, Nline, Nst, Nany,
              Nfun}};
        {ok, Toks0, eof, Nline, Ncol} ->
            Res =
                case Toks0 of
                    [] ->
                        {eof, location(Nline, Ncol)};
                    _ ->
                        {ok,
                         lists:reverse(Toks0),
                         location(Nline, Ncol)}
                end,
            {done, Res, eof};
        {ok, Toks0, Rest, Nline, Ncol} ->
            {done,
             {ok, lists:reverse(Toks0), location(Nline, Ncol)},
             Rest};
        {{error, _, _} = Error, Rest} ->
            {done, Error, Rest}
    end.

string1(Cs, St, Line, Col, Toks) ->
    case scan1(Cs, St, Line, Col, Toks) of
        {more, {Cs0, Nst, Ncol, Ntoks, Nline, Any, Fun}} ->
            case Fun(Cs0 ++ eof, Nst, Nline, Ncol, Ntoks, Any) of
                {ok, Toks1, _Rest, Line2, Col2} ->
                    {ok, lists:reverse(Toks1), location(Line2, Col2)};
                {{error, _, _} = Error, _Rest} ->
                    Error
            end;
        {ok, Ntoks, [_ | _] = Rest, Nline, Ncol} ->
            string1(Rest, St, Nline, Ncol, Ntoks);
        {ok, Ntoks, _, Nline, Ncol} ->
            {ok, lists:reverse(Ntoks), location(Nline, Ncol)};
        {{error, _, _} = Error, _Rest} ->
            Error
    end.

scan(Cs, {erl_scan, _, _, _, _, _, _, _} = St, Line, Col, Toks, _) ->
    scan1(Cs, St, Line, Col, Toks).

scan1([$\s | Cs], {erl_scan, _, _, _, _, _, _, _} = St, Line, Col, Toks)
    when
        (true
         orelse
         fail)
        and
        element(4, St) ->
    scan_spcs(Cs, St, Line, Col, Toks, 1);
scan1([$\s | Cs], St, Line, Col, Toks) ->
    skip_white_space(Cs, St, Line, Col, Toks, 1);
scan1([$\n | Cs], {erl_scan, _, _, _, _, _, _, _} = St, Line, Col, Toks)
    when
        (true
         orelse
         fail)
        and
        element(4, St) ->
    scan_newline(Cs, St, Line, Col, Toks);
scan1([$\n | Cs], St, Line, Col, Toks) ->
    skip_white_space(Cs, St, Line + 1, new_column(Col, 1), Toks, 0);
scan1([$, | Cs], St, Line, Col, Toks) ->
    tok2(Cs, St, Line, Col, Toks, ",", ',', 1);
scan1([$( | Cs], St, Line, Col, Toks) ->
    tok2(Cs, St, Line, Col, Toks, "(", '(', 1);
scan1([$) | Cs], St, Line, Col, Toks) ->
    tok2(Cs, St, Line, Col, Toks, ")", ')', 1);
scan1([${ | Cs], St, Line, Col, Toks) ->
    tok2(Cs, St, Line, Col, Toks, "{", '{', 1);
scan1([$} | Cs], St, Line, Col, Toks) ->
    tok2(Cs, St, Line, Col, Toks, "}", '}', 1);
scan1([$[ | Cs], St, Line, Col, Toks) ->
    tok2(Cs, St, Line, Col, Toks, "[", '[', 1);
scan1([$] | Cs], St, Line, Col, Toks) ->
    tok2(Cs, St, Line, Col, Toks, "]", ']', 1);
scan1([$; | Cs], St, Line, Col, Toks) ->
    tok2(Cs, St, Line, Col, Toks, ";", ';', 1);
scan1([$_ = C | Cs], St, Line, Col, Toks) ->
    scan_variable(Cs, St, Line, Col, Toks, [C]);
scan1([$% = C | Cs],
      {erl_scan, _, _, _, _, _, _, _} = St,
      Line, Col, Toks)
    when
        (true
         orelse
         fail)
        and
        element(7, St) ->
    scan_check(Cs, St, Line, Col, Toks, [C]);
scan1([$% | Cs], St, Line, Col, Toks)
    when
        not ((is_record(St, erl_scan, 8)
              orelse
              fail)
             and
             element(5, St)) ->
    skip_comment(Cs, St, Line, Col, Toks, 1);
scan1([$% = C | Cs], St, Line, Col, Toks) ->
    scan_comment(Cs, St, Line, Col, Toks, [C]);
scan1([C | _], _St, _Line, _Col0, _Toks)
    when
        not (is_integer(C)
             andalso
             0 =< C
             andalso
             C < 1114112) ->
    error({not_character, C});
scan1([C | Cs], St, Line, Col, Toks) when C >= $A, C =< $Z ->
    scan_variable(Cs, St, Line, Col, Toks, [C]);
scan1([C | Cs], St, Line, Col, Toks) when C >= $a, C =< $z ->
    scan_atom(Cs, St, Line, Col, Toks, [C]);
scan1([C | Cs], St, Line, Col, Toks)
    when
        is_integer(C)
        andalso
        $0 =< C
        andalso
        C =< $9 ->
    scan_number(Cs, St, Line, Col, Toks, [C], no_underscore);
scan1("..." ++ Cs, St, Line, Col, Toks) ->
    tok2(Cs, St, Line, Col, Toks, "...", '...', 3);
scan1(".." = Cs, St, Line, Col, Toks) ->
    {more, {Cs, St, Col, Toks, Line, [], fun scan/6}};
scan1(".." ++ Cs, St, Line, Col, Toks) ->
    tok2(Cs, St, Line, Col, Toks, "..", '..', 2);
scan1("." = Cs, St, Line, Col, Toks) ->
    {more, {Cs, St, Col, Toks, Line, [], fun scan/6}};
scan1("&&" ++ Cs, St, Line, Col, Toks) ->
    tok2(Cs, St, Line, Col, Toks, "&&", '&&', 2);
scan1("&" = Cs, St, Line, Col, Toks) ->
    {more, {Cs, St, Col, Toks, Line, [], fun scan/6}};
scan1("&" ++ Cs, St, Line, Col, Toks) ->
    tok2(Cs, St, Line, Col, Toks, "&", '&', 1);
scan1([$. = C | Cs], St, Line, Col, Toks) ->
    scan_dot(Cs, St, Line, Col, Toks, [C]);
scan1([$' | Cs], St, Line, Col, Toks) ->
    scan_qatom(Cs, St, Line, Col, Toks);
scan1([$" | _] = Cs, St, Line, Col, Toks) ->
    scan_string(Cs, St, Line, Col, Toks, {});
scan1([$~ = C | Cs], St, Line, Col, Toks) ->
    scan_sigil_prefix(Cs, St, Line, Col, Toks, [C]);
scan1([$$ | Cs], St, Line, Col, Toks) ->
    scan_char(Cs, St, Line, Col, Toks);
scan1([$\r | Cs], {erl_scan, _, _, _, _, _, _, _} = St, Line, Col, Toks)
    when
        (true
         orelse
         fail)
        and
        element(4, St) ->
    white_space_end(Cs, St, Line, Col, Toks, 1, "\r");
scan1([C | Cs], St, Line, Col, Toks) when C >= $ß, C =< $ÿ, C =/= $÷ ->
    scan_atom(Cs, St, Line, Col, Toks, [C]);
scan1([C | Cs], St, Line, Col, Toks) when C >= $À, C =< $Þ, C /= $× ->
    scan_variable(Cs, St, Line, Col, Toks, [C]);
scan1([$\t | Cs], {erl_scan, _, _, _, _, _, _, _} = St, Line, Col, Toks)
    when
        (true
         orelse
         fail)
        and
        element(4, St) ->
    scan_tabs(Cs, St, Line, Col, Toks, 1);
scan1([$\t | Cs], St, Line, Col, Toks) ->
    skip_white_space(Cs, St, Line, Col, Toks, 1);
scan1([C | Cs], St, Line, Col, Toks)
    when
        is_integer(C)
        andalso
        (C >= $\000
         andalso
         C =< $\s
         orelse
         C >= $\200
         andalso
         C =< $ ) ->
    case
        case St of
            {erl_scan, _, _, REC0, _, _, _, _} ->
                REC0;
            REC0 ->
                error({badrecord, REC0})
        end
    of
        true ->
            scan_white_space(Cs, St, Line, Col, Toks, [C]);
        false ->
            skip_white_space(Cs, St, Line, Col, Toks, 1)
    end;
scan1("?=" ++ Cs, St, Line, Col, Toks) ->
    tok2(Cs, St, Line, Col, Toks, "?=", '?=', 2);
scan1("?" = Cs, St, Line, Col, Toks) ->
    {more, {Cs, St, Col, Toks, Line, [], fun scan/6}};
scan1("<<" ++ Cs, St, Line, Col, Toks) ->
    tok2(Cs, St, Line, Col, Toks, "<<", '<<', 2);
scan1("<:-" ++ Cs, St, Line, Col, Toks) ->
    tok2(Cs, St, Line, Col, Toks, "<:-", '<:-', 3);
scan1("<-" ++ Cs, St, Line, Col, Toks) ->
    tok2(Cs, St, Line, Col, Toks, "<-", '<-', 2);
scan1("<:=" ++ Cs, St, Line, Col, Toks) ->
    tok2(Cs, St, Line, Col, Toks, "<:=", '<:=', 3);
scan1("<=" ++ Cs, St, Line, Col, Toks) ->
    tok2(Cs, St, Line, Col, Toks, "<=", '<=', 2);
scan1("<:" = Cs, St, Line, Col, Toks) ->
    {more, {Cs, St, Col, Toks, Line, [], fun scan/6}};
scan1("<" = Cs, St, Line, Col, Toks) ->
    {more, {Cs, St, Col, Toks, Line, [], fun scan/6}};
scan1(">>" ++ Cs, St, Line, Col, Toks) ->
    tok2(Cs, St, Line, Col, Toks, ">>", '>>', 2);
scan1(">=" ++ Cs, St, Line, Col, Toks) ->
    tok2(Cs, St, Line, Col, Toks, ">=", '>=', 2);
scan1(">" = Cs, St, Line, Col, Toks) ->
    {more, {Cs, St, Col, Toks, Line, [], fun scan/6}};
scan1("->" ++ Cs, St, Line, Col, Toks) ->
    tok2(Cs, St, Line, Col, Toks, "->", '->', 2);
scan1("--" ++ Cs, St, Line, Col, Toks) ->
    tok2(Cs, St, Line, Col, Toks, "--", '--', 2);
scan1("-" = Cs, St, Line, Col, Toks) ->
    {more, {Cs, St, Col, Toks, Line, [], fun scan/6}};
scan1("++" ++ Cs, St, Line, Col, Toks) ->
    tok2(Cs, St, Line, Col, Toks, "++", '++', 2);
scan1("+" = Cs, St, Line, Col, Toks) ->
    {more, {Cs, St, Col, Toks, Line, [], fun scan/6}};
scan1("=:=" ++ Cs, St, Line, Col, Toks) ->
    tok2(Cs, St, Line, Col, Toks, "=:=", '=:=', 3);
scan1("=:" = Cs, St, Line, Col, Toks) ->
    {more, {Cs, St, Col, Toks, Line, [], fun scan/6}};
scan1("=/=" ++ Cs, St, Line, Col, Toks) ->
    tok2(Cs, St, Line, Col, Toks, "=/=", '=/=', 3);
scan1("=/" = Cs, St, Line, Col, Toks) ->
    {more, {Cs, St, Col, Toks, Line, [], fun scan/6}};
scan1("=<" ++ Cs, St, Line, Col, Toks) ->
    tok2(Cs, St, Line, Col, Toks, "=<", '=<', 2);
scan1("=>" ++ Cs, St, Line, Col, Toks) ->
    tok2(Cs, St, Line, Col, Toks, "=>", '=>', 2);
scan1("==" ++ Cs, St, Line, Col, Toks) ->
    tok2(Cs, St, Line, Col, Toks, "==", '==', 2);
scan1("=" = Cs, St, Line, Col, Toks) ->
    {more, {Cs, St, Col, Toks, Line, [], fun scan/6}};
scan1("/=" ++ Cs, St, Line, Col, Toks) ->
    tok2(Cs, St, Line, Col, Toks, "/=", '/=', 2);
scan1("/" = Cs, St, Line, Col, Toks) ->
    {more, {Cs, St, Col, Toks, Line, [], fun scan/6}};
scan1("||" ++ Cs, St, Line, Col, Toks) ->
    tok2(Cs, St, Line, Col, Toks, "||", '||', 2);
scan1("|" = Cs, St, Line, Col, Toks) ->
    {more, {Cs, St, Col, Toks, Line, [], fun scan/6}};
scan1(":=" ++ Cs, St, Line, Col, Toks) ->
    tok2(Cs, St, Line, Col, Toks, ":=", ':=', 2);
scan1("::" ++ Cs, St, Line, Col, Toks) ->
    tok2(Cs, St, Line, Col, Toks, "::", '::', 2);
scan1(":" = Cs, St, Line, Col, Toks) ->
    {more, {Cs, St, Col, Toks, Line, [], fun scan/6}};
scan1([$= | Cs], St, Line, Col, Toks) ->
    tok2(Cs, St, Line, Col, Toks, "=", '=', 1);
scan1([$: | Cs], St, Line, Col, Toks) ->
    tok2(Cs, St, Line, Col, Toks, ":", ':', 1);
scan1([$| | Cs], St, Line, Col, Toks) ->
    tok2(Cs, St, Line, Col, Toks, "|", '|', 1);
scan1([$# | Cs], St, Line, Col, Toks) ->
    tok2(Cs, St, Line, Col, Toks, "#", '#', 1);
scan1([$/ | Cs], St, Line, Col, Toks) ->
    tok2(Cs, St, Line, Col, Toks, "/", '/', 1);
scan1([$? | Cs], St, Line, Col, Toks) ->
    tok2(Cs, St, Line, Col, Toks, "?", '?', 1);
scan1([$- | Cs], St, Line, Col, Toks) ->
    tok2(Cs, St, Line, Col, Toks, "-", '-', 1);
scan1([$+ | Cs], St, Line, Col, Toks) ->
    tok2(Cs, St, Line, Col, Toks, "+", '+', 1);
scan1([$* | Cs], St, Line, Col, Toks) ->
    tok2(Cs, St, Line, Col, Toks, "*", '*', 1);
scan1([$< | Cs], St, Line, Col, Toks) ->
    tok2(Cs, St, Line, Col, Toks, "<", '<', 1);
scan1([$> | Cs], St, Line, Col, Toks) ->
    tok2(Cs, St, Line, Col, Toks, ">", '>', 1);
scan1([$! | Cs], St, Line, Col, Toks) ->
    tok2(Cs, St, Line, Col, Toks, "!", '!', 1);
scan1([$@ | Cs], St, Line, Col, Toks) ->
    tok2(Cs, St, Line, Col, Toks, "@", '@', 1);
scan1([$\\ | Cs], St, Line, Col, Toks) ->
    tok2(Cs, St, Line, Col, Toks, "\\", '\\', 1);
scan1([$^ | Cs], St, Line, Col, Toks) ->
    tok2(Cs, St, Line, Col, Toks, "^", '^', 1);
scan1([$` | Cs], St, Line, Col, Toks) ->
    tok2(Cs, St, Line, Col, Toks, "`", '`', 1);
scan1([$~ | Cs], St, Line, Col, Toks) ->
    tok2(Cs, St, Line, Col, Toks, "~", '~', 1);
scan1([C | Cs], St, Line, Col, Toks)
    when
        is_integer(C)
        andalso
        0 =< C
        andalso
        C =< 255 ->
    Str = [C],
    tok2(Cs, St, Line, Col, Toks, Str, list_to_atom(Str), 1);
scan1([C | Cs], _St, Line, Col, _Toks)
    when
        is_integer(C)
        andalso
        0 =< C
        andalso
        C < 1114112 ->
    Ncol = incr_column(Col, 1),
    scan_error({illegal, character}, Line, Col, Line, Ncol, Cs);
scan1([] = Cs, St, Line, Col, Toks) ->
    {more, {Cs, St, Col, Toks, Line, [], fun scan/6}};
scan1(eof = Cs, _St, Line, Col, Toks) ->
    {ok, Toks, Cs, Line, Col}.

scan_atom_fun(Cs,
              {erl_scan, _, _, _, _, _, _, _} = St,
              Line, Col, Toks, Ncs) ->
    scan_atom(Cs, St, Line, Col, Toks, Ncs).

scan_atom(Cs0, St, Line, Col, Toks, Ncs0) ->
    case scan_name(Cs0, Ncs0) of
        {more, Ncs} ->
            {more, {[], St, Col, Toks, Line, Ncs, fun scan_atom_fun/6}};
        {WcsR, Cs} ->
            Wcs = lists:reverse(WcsR),
            try list_to_atom(Wcs) of
                Name ->
                    case
                        case St of
                            {erl_scan, REC1, _, _, _, _, _, _} ->
                                REC1;
                            REC1 ->
                                error({badrecord, REC1})
                        end(Name)
                    of
                        true ->
                            tok2(Cs, St, Line, Col, Toks, Wcs, Name);
                        false ->
                            tok3(Cs, St, Line, Col, Toks, atom, Wcs,
                                 Name)
                    end
            catch
                _:_ ->
                    Ncol = incr_column(Col, length(Wcs)),
                    scan_error({illegal, atom},
                               Line, Col, Line, Ncol, Cs)
            end
    end.

scan_variable_fun(Cs,
                  {erl_scan, _, _, _, _, _, _, _} = St,
                  Line, Col, Toks, Ncs) ->
    scan_variable(Cs, St, Line, Col, Toks, Ncs).

scan_variable(Cs0, St, Line, Col, Toks, Ncs0) ->
    case scan_name(Cs0, Ncs0) of
        {more, Ncs} ->
            {more,
             {[], St, Col, Toks, Line, Ncs, fun scan_variable_fun/6}};
        {WcsR, Cs} ->
            Wcs = lists:reverse(WcsR),
            try list_to_atom(Wcs) of
                Name ->
                    tok3(Cs, St, Line, Col, Toks, var, Wcs, Name)
            catch
                _:_ ->
                    Ncol = incr_column(Col, length(Wcs)),
                    scan_error({illegal, var},
                               Line, Col, Line, Ncol, Cs)
            end
    end.

scan_name([C | _] = Cs, Wcs)
    when
        not (is_integer(C)
             andalso
             0 =< C
             andalso
             C < 1114112) ->
    {Wcs, Cs};
scan_name([C | Cs], Wcs) when C >= $a, C =< $z ->
    scan_name(Cs, [C | Wcs]);
scan_name([C | Cs], Wcs) when C >= $A, C =< $Z ->
    scan_name(Cs, [C | Wcs]);
scan_name([$_ = C | Cs], Wcs) ->
    scan_name(Cs, [C | Wcs]);
scan_name([C | Cs], Wcs)
    when
        is_integer(C)
        andalso
        $0 =< C
        andalso
        C =< $9 ->
    scan_name(Cs, [C | Wcs]);
scan_name([$@ = C | Cs], Wcs) ->
    scan_name(Cs, [C | Wcs]);
scan_name([C | Cs], Wcs) when C >= $ß, C =< $ÿ, C =/= $÷ ->
    scan_name(Cs, [C | Wcs]);
scan_name([C | Cs], Wcs) when C >= $À, C =< $Þ, C =/= $× ->
    scan_name(Cs, [C | Wcs]);
scan_name([], Wcs) ->
    {more, Wcs};
scan_name(Cs, Wcs) ->
    {Wcs, Cs}.

scan_dot([C | _] = Cs,
         {erl_scan, _, _, _, _, _, _, _} = St,
         Line, Col, Toks, Ncs)
    when
        (true
         orelse
         fail)
        and
        element(8, St),
        C =/= $. ->
    tok2(Cs,
         begin
             REC2 = St,
             case REC2 of
                 {erl_scan, _, _, _, _, _, _, _} ->
                     setelement(8, REC2, false);
                 _ ->
                     error({badrecord, REC2})
             end
         end,
         Line, Col, Toks, Ncs, '.', 1);
scan_dot([$% | _] = Cs, St, Line, Col, Toks, Ncs) ->
    Anno =
        anno(Line, Col, St,
             case
                 case St of
                     {erl_scan, _, _, _, _, REC3, _, _} ->
                         REC3;
                     REC3 ->
                         error({badrecord, REC3})
                 end
                 andalso
                 case St of
                     {erl_scan, _, REC4, _, _, _, _, _} ->
                         REC4;
                     REC4 ->
                         error({badrecord, REC4})
                 end(dot, begin Ncs end)
             of
                 true ->
                     begin Ncs end;
                 false ->
                     []
             end),
    {ok, [{dot, Anno} | Toks], Cs, Line, incr_column(Col, 1)};
scan_dot([$\n = C | Cs], St, Line, Col, Toks, Ncs) ->
    Anno =
        anno(Line, Col, St,
             case
                 case St of
                     {erl_scan, _, _, _, _, REC5, _, _} ->
                         REC5;
                     REC5 ->
                         error({badrecord, REC5})
                 end
                 andalso
                 case St of
                     {erl_scan, _, REC6, _, _, _, _, _} ->
                         REC6;
                     REC6 ->
                         error({badrecord, REC6})
                 end(dot, begin Ncs ++ [C] end)
             of
                 true ->
                     begin Ncs ++ [C] end;
                 false ->
                     []
             end),
    {ok, [{dot, Anno} | Toks], Cs, Line + 1, new_column(Col, 1)};
scan_dot([C | Cs], St, Line, Col, Toks, Ncs)
    when
        is_integer(C)
        andalso
        (C >= $\000
         andalso
         C =< $\s
         orelse
         C >= $\200
         andalso
         C =< $ ) ->
    Anno =
        anno(Line, Col, St,
             case
                 case St of
                     {erl_scan, _, _, _, _, REC7, _, _} ->
                         REC7;
                     REC7 ->
                         error({badrecord, REC7})
                 end
                 andalso
                 case St of
                     {erl_scan, _, REC8, _, _, _, _, _} ->
                         REC8;
                     REC8 ->
                         error({badrecord, REC8})
                 end(dot, begin Ncs ++ [C] end)
             of
                 true ->
                     begin Ncs ++ [C] end;
                 false ->
                     []
             end),
    {ok, [{dot, Anno} | Toks], Cs, Line, incr_column(Col, 2)};
scan_dot(eof = Cs, St, Line, Col, Toks, Ncs) ->
    Anno =
        anno(Line, Col, St,
             case
                 case St of
                     {erl_scan, _, _, _, _, REC9, _, _} ->
                         REC9;
                     REC9 ->
                         error({badrecord, REC9})
                 end
                 andalso
                 case St of
                     {erl_scan, _, REC10, _, _, _, _, _} ->
                         REC10;
                     REC10 ->
                         error({badrecord, REC10})
                 end(dot, begin Ncs end)
             of
                 true ->
                     begin Ncs end;
                 false ->
                     []
             end),
    {ok, [{dot, Anno} | Toks], Cs, Line, incr_column(Col, 1)};
scan_dot(Cs, St, Line, Col, Toks, Ncs) ->
    tok2(Cs, St, Line, Col, Toks, Ncs, '.', 1).

scan_newline([$\s | Cs], St, Line, Col, Toks) ->
    scan_nl_spcs(Cs, St, Line, Col, Toks, 2);
scan_newline([$\t | Cs], St, Line, Col, Toks) ->
    scan_nl_tabs(Cs, St, Line, Col, Toks, 2);
scan_newline([$\r | Cs], St, Line, Col, Toks) ->
    newline_end(Cs, St, Line, Col, Toks, 2, "\n\r");
scan_newline([$\f | Cs], St, Line, Col, Toks) ->
    newline_end(Cs, St, Line, Col, Toks, 2, "\n\f");
scan_newline([], St, Line, Col, Toks) ->
    {more, {[$\n], St, Col, Toks, Line, [], fun scan/6}};
scan_newline(Cs, St, Line, Col, Toks) ->
    scan_nl_white_space(Cs, St, Line, Col, Toks, "\n").

scan_nl_spcs_fun(Cs,
                 {erl_scan, _, _, _, _, _, _, _} = St,
                 Line, Col, Toks, N)
    when is_integer(N) ->
    scan_nl_spcs(Cs, St, Line, Col, Toks, N).

scan_nl_spcs([$\s | Cs], St, Line, Col, Toks, N) when N < 17 ->
    scan_nl_spcs(Cs, St, Line, Col, Toks, N + 1);
scan_nl_spcs([] = Cs, St, Line, Col, Toks, N) ->
    {more, {Cs, St, Col, Toks, Line, N, fun scan_nl_spcs_fun/6}};
scan_nl_spcs(Cs, St, Line, Col, Toks, N) ->
    newline_end(Cs, St, Line, Col, Toks, N, nl_spcs(N)).

scan_nl_tabs_fun(Cs,
                 {erl_scan, _, _, _, _, _, _, _} = St,
                 Line, Col, Toks, N)
    when is_integer(N) ->
    scan_nl_tabs(Cs, St, Line, Col, Toks, N).

scan_nl_tabs([$\t | Cs], St, Line, Col, Toks, N) when N < 11 ->
    scan_nl_tabs(Cs, St, Line, Col, Toks, N + 1);
scan_nl_tabs([] = Cs, St, Line, Col, Toks, N) ->
    {more, {Cs, St, Col, Toks, Line, N, fun scan_nl_tabs_fun/6}};
scan_nl_tabs(Cs, St, Line, Col, Toks, N) ->
    newline_end(Cs, St, Line, Col, Toks, N, nl_tabs(N)).

scan_nl_white_space_fun(Cs,
                        {erl_scan, _, _, _, _, _, _, _} = St,
                        Line, Col, Toks, Ncs) ->
    scan_nl_white_space(Cs, St, Line, Col, Toks, Ncs).

scan_nl_white_space([$\n | Cs],
                    {erl_scan, _, _, _, _, false, _, _} = St,
                    Line,
                    no_col = Col,
                    Toks0, Ncs) ->
    Toks = [{white_space, anno(Line), lists:reverse(Ncs)} | Toks0],
    scan_newline(Cs, St, Line + 1, Col, Toks);
scan_nl_white_space([$\n | Cs], St, Line, Col, Toks, Ncs0) ->
    Ncs = lists:reverse(Ncs0),
    Anno =
        anno(Line, Col, St,
             case
                 case St of
                     {erl_scan, _, _, _, _, REC11, _, _} ->
                         REC11;
                     REC11 ->
                         error({badrecord, REC11})
                 end
                 andalso
                 case St of
                     {erl_scan, _, REC12, _, _, _, _, _} ->
                         REC12;
                     REC12 ->
                         error({badrecord, REC12})
                 end(white_space, begin Ncs end)
             of
                 true ->
                     begin Ncs end;
                 false ->
                     []
             end),
    Token = {white_space, Anno, Ncs},
    scan_newline(Cs, St,
                 Line + 1,
                 new_column(Col, length(Ncs)),
                 [Token | Toks]);
scan_nl_white_space([C | Cs], St, Line, Col, Toks, Ncs)
    when
        is_integer(C)
        andalso
        (C >= $\000
         andalso
         C =< $\s
         orelse
         C >= $\200
         andalso
         C =< $ ) ->
    scan_nl_white_space(Cs, St, Line, Col, Toks, [C | Ncs]);
scan_nl_white_space([] = Cs, St, Line, Col, Toks, Ncs) ->
    {more,
     {Cs, St, Col, Toks, Line, Ncs, fun scan_nl_white_space_fun/6}};
scan_nl_white_space(Cs,
                    {erl_scan, _, _, _, _, false, _, _} = St,
                    Line,
                    no_col = Col,
                    Toks, Ncs) ->
    Anno = anno(Line),
    scan1(Cs, St,
          Line + 1,
          Col,
          [{white_space, Anno, lists:reverse(Ncs)} | Toks]);
scan_nl_white_space(Cs, St, Line, Col, Toks, Ncs0) ->
    Ncs = lists:reverse(Ncs0),
    Anno =
        anno(Line, Col, St,
             case
                 case St of
                     {erl_scan, _, _, _, _, REC13, _, _} ->
                         REC13;
                     REC13 ->
                         error({badrecord, REC13})
                 end
                 andalso
                 case St of
                     {erl_scan, _, REC14, _, _, _, _, _} ->
                         REC14;
                     REC14 ->
                         error({badrecord, REC14})
                 end(white_space, begin Ncs end)
             of
                 true ->
                     begin Ncs end;
                 false ->
                     []
             end),
    Token = {white_space, Anno, Ncs},
    scan1(Cs, St,
          Line + 1,
          new_column(Col, length(Ncs)),
          [Token | Toks]).

newline_end(Cs,
            {erl_scan, _, _, _, _, false, _, _} = St,
            Line,
            no_col = Col,
            Toks, _N, Ncs) ->
    scan1(Cs, St,
          Line + 1,
          Col,
          [{white_space, anno(Line), Ncs} | Toks]);
newline_end(Cs,
            {erl_scan, _, _, _, _, _, _, _} = St,
            Line, Col, Toks, N, Ncs) ->
    Anno =
        anno(Line, Col, St,
             case
                 case St of
                     {erl_scan, _, _, _, _, REC15, _, _} ->
                         REC15;
                     REC15 ->
                         error({badrecord, REC15})
                 end
                 andalso
                 case St of
                     {erl_scan, _, REC16, _, _, _, _, _} ->
                         REC16;
                     REC16 ->
                         error({badrecord, REC16})
                 end(white_space, begin Ncs end)
             of
                 true ->
                     begin Ncs end;
                 false ->
                     []
             end),
    scan1(Cs, St,
          Line + 1,
          new_column(Col, N),
          [{white_space, Anno, Ncs} | Toks]).

scan_spcs_fun(Cs,
              {erl_scan, _, _, _, _, _, _, _} = St,
              Line, Col, Toks, N)
    when is_integer(N), N >= 1 ->
    scan_spcs(Cs, St, Line, Col, Toks, N).

scan_spcs([$\s | Cs], St, Line, Col, Toks, N) when N < 16 ->
    scan_spcs(Cs, St, Line, Col, Toks, N + 1);
scan_spcs([] = Cs, St, Line, Col, Toks, N) ->
    {more, {Cs, St, Col, Toks, Line, N, fun scan_spcs_fun/6}};
scan_spcs(Cs, St, Line, Col, Toks, N) ->
    white_space_end(Cs, St, Line, Col, Toks, N, spcs(N)).

scan_tabs_fun(Cs,
              {erl_scan, _, _, _, _, _, _, _} = St,
              Line, Col, Toks, N)
    when is_integer(N), N >= 1 ->
    scan_tabs(Cs, St, Line, Col, Toks, N).

scan_tabs([$\t | Cs], St, Line, Col, Toks, N) when N < 10 ->
    scan_tabs(Cs, St, Line, Col, Toks, N + 1);
scan_tabs([] = Cs, St, Line, Col, Toks, N) ->
    {more, {Cs, St, Col, Toks, Line, N, fun scan_tabs_fun/6}};
scan_tabs(Cs, St, Line, Col, Toks, N) ->
    white_space_end(Cs, St, Line, Col, Toks, N, tabs(N)).

skip_white_space_fun(Cs,
                     {erl_scan, _, _, _, _, _, _, _} = St,
                     Line, Col, Toks, N) ->
    skip_white_space(Cs, St, Line, Col, Toks, N).

skip_white_space([$\n | Cs], St, Line, Col, Toks, _N) ->
    skip_white_space(Cs, St, Line + 1, new_column(Col, 1), Toks, 0);
skip_white_space([C | Cs], St, Line, Col, Toks, N)
    when
        is_integer(C)
        andalso
        (C >= $\000
         andalso
         C =< $\s
         orelse
         C >= $\200
         andalso
         C =< $ ) ->
    skip_white_space(Cs, St, Line, Col, Toks, N + 1);
skip_white_space([] = Cs, St, Line, Col, Toks, N) ->
    {more, {Cs, St, Col, Toks, Line, N, fun skip_white_space_fun/6}};
skip_white_space(Cs, St, Line, Col, Toks, N) ->
    scan1(Cs, St, Line, incr_column(Col, N), Toks).

scan_white_space_fun(Cs,
                     {erl_scan, _, _, _, _, _, _, _} = St,
                     Line, Col, Toks, Ncs) ->
    scan_white_space(Cs, St, Line, Col, Toks, Ncs).

scan_white_space([$\n | _] = Cs, St, Line, Col, Toks, Ncs) ->
    white_space_end(Cs, St, Line, Col, Toks,
                    length(Ncs),
                    lists:reverse(Ncs));
scan_white_space([C | Cs], St, Line, Col, Toks, Ncs)
    when
        is_integer(C)
        andalso
        (C >= $\000
         andalso
         C =< $\s
         orelse
         C >= $\200
         andalso
         C =< $ ) ->
    scan_white_space(Cs, St, Line, Col, Toks, [C | Ncs]);
scan_white_space([] = Cs, St, Line, Col, Toks, Ncs) ->
    {more, {Cs, St, Col, Toks, Line, Ncs, fun scan_white_space_fun/6}};
scan_white_space(Cs, St, Line, Col, Toks, Ncs) ->
    white_space_end(Cs, St, Line, Col, Toks,
                    length(Ncs),
                    lists:reverse(Ncs)).

-compile({inline, [{white_space_end, 7}]}).

white_space_end(Cs, St, Line, Col, Toks, N, Ncs) ->
    tok3(Cs, St, Line, Col, Toks, white_space, Ncs, Ncs, N).

scan_char([$\\ | Cs] = Cs0, St, Line, Col, Toks) ->
    case scan_escape(Cs, incr_column(Col, 2)) of
        more ->
            {more, {[$$ | Cs0], St, Col, Toks, Line, [], fun scan/6}};
        {error, Ncs, Error, Ncol} ->
            scan_error(Error, Line, Col, Line, Ncol, Ncs);
        {eof, Ncol} ->
            scan_error({unterminated, char}, Line, Col, Line, Ncol, eof);
        {nl, Val, Str, Ncs, Ncol} ->
            Anno =
                anno(Line, Col, St,
                     case
                         case St of
                             {erl_scan, _, _, _, _, REC17, _, _} ->
                                 REC17;
                             REC17 ->
                                 error({badrecord, REC17})
                         end
                         andalso
                         case St of
                             {erl_scan, _, REC18, _, _, _, _, _} ->
                                 REC18;
                             REC18 ->
                                 error({badrecord, REC18})
                         end(char, begin "$\\" ++ Str end)
                     of
                         true ->
                             begin "$\\" ++ Str end;
                         false ->
                             []
                     end),
            Ntoks = [{char, Anno, Val} | Toks],
            scan1(Ncs, St, Line + 1, Ncol, Ntoks);
        {Val, Str, Ncs, Ncol} ->
            Anno =
                anno(Line, Col, St,
                     case
                         case St of
                             {erl_scan, _, _, _, _, REC19, _, _} ->
                                 REC19;
                             REC19 ->
                                 error({badrecord, REC19})
                         end
                         andalso
                         case St of
                             {erl_scan, _, REC20, _, _, _, _, _} ->
                                 REC20;
                             REC20 ->
                                 error({badrecord, REC20})
                         end(char, begin "$\\" ++ Str end)
                     of
                         true ->
                             begin "$\\" ++ Str end;
                         false ->
                             []
                     end),
            Ntoks = [{char, Anno, Val} | Toks],
            scan1(Ncs, St, Line, Ncol, Ntoks)
    end;
scan_char([$\n = C | Cs], St, Line, Col, Toks) ->
    Anno =
        anno(Line, Col, St,
             case
                 case St of
                     {erl_scan, _, _, _, _, REC21, _, _} ->
                         REC21;
                     REC21 ->
                         error({badrecord, REC21})
                 end
                 andalso
                 case St of
                     {erl_scan, _, REC22, _, _, _, _, _} ->
                         REC22;
                     REC22 ->
                         error({badrecord, REC22})
                 end(char, begin [$$, C] end)
             of
                 true ->
                     begin [$$, C] end;
                 false ->
                     []
             end),
    scan1(Cs, St,
          Line + 1,
          new_column(Col, 1),
          [{char, Anno, C} | Toks]);
scan_char([C | Cs], St, Line, Col, Toks)
    when
        is_integer(C)
        andalso
        (C >= 0
         andalso
         C < 55296
         orelse
         C > 57343
         andalso
         C < 65534
         orelse
         C > 65535
         andalso
         C =< 1114111) ->
    Anno =
        anno(Line, Col, St,
             case
                 case St of
                     {erl_scan, _, _, _, _, REC23, _, _} ->
                         REC23;
                     REC23 ->
                         error({badrecord, REC23})
                 end
                 andalso
                 case St of
                     {erl_scan, _, REC24, _, _, _, _, _} ->
                         REC24;
                     REC24 ->
                         error({badrecord, REC24})
                 end(char, begin [$$, C] end)
             of
                 true ->
                     begin [$$, C] end;
                 false ->
                     []
             end),
    scan1(Cs, St, Line, incr_column(Col, 2), [{char, Anno, C} | Toks]);
scan_char([C | _Cs], _St, Line, Col, _Toks)
    when
        is_integer(C)
        andalso
        0 =< C
        andalso
        C < 1114112 ->
    scan_error({illegal, character},
               Line, Col, Line,
               incr_column(Col, 1),
               eof);
scan_char([], St, Line, Col, Toks) ->
    {more, {[$$], St, Col, Toks, Line, [], fun scan/6}};
scan_char(eof, _St, Line, Col, _Toks) ->
    scan_error({unterminated, char},
               Line, Col, Line,
               incr_column(Col, 1),
               eof).

scan_sigil_prefix(Cs, St, Line, Col, Toks, Wcs) ->
    case scan_name(Cs, Wcs) of
        {more, Nwcs} ->
            {more,
             {[], St, Col, Toks, Line, Nwcs, fun scan_sigil_prefix/6}};
        {Nwcs, Ncs} ->
            Type = sigil_prefix,
            Ncol = incr_column(Col, length(Nwcs)),
            SigilCs = lists:reverse(Nwcs),
            try list_to_atom(tl(SigilCs)) of
                SigilType when is_atom(SigilType) ->
                    Anno =
                        anno(Line, Col, St,
                             case
                                 case St of
                                     {erl_scan, _, _, _, _, REC25, _, _} ->
                                         REC25;
                                     REC25 ->
                                         error({badrecord, REC25})
                                 end
                                 andalso
                                 case St of
                                     {erl_scan, _, REC26, _, _, _, _, _} ->
                                         REC26;
                                     REC26 ->
                                         error({badrecord, REC26})
                                 end(Type, begin SigilCs end)
                             of
                                 true ->
                                     begin SigilCs end;
                                 false ->
                                     []
                             end),
                    Tok = {Type, Anno, SigilType},
                    scan_string(Ncs, St, Line, Ncol,
                                [Tok | Toks],
                                SigilType)
            catch
                _:_ ->
                    scan_error({illegal, Type},
                               Line, Col, Line, Ncol, Ncs)
            end
    end.

scan_string(Cs, St, Line, Col, Toks, SigilType) ->
    case Cs of
        [$", $", $" | Ncs] ->
            scan_tqstring(Ncs, St, Line, Col, Toks, SigilType, 3);
        [$", $"] ->
            {more,
             {Cs, St, Col, Toks, Line, SigilType, fun scan_string/6}};
        [$"] ->
            {more,
             {Cs, St, Col, Toks, Line, SigilType, fun scan_string/6}};
        [Q1 | Ncs] ->
            case string_right_delimiter(Q1) of
                undefined ->
                    scan_error({illegal, string},
                               Line, Col, Line, Col, Cs);
                Q2 when is_integer(Q2) ->
                    scan_qstring(Ncs, St, Line, Col, Toks, SigilType,
                                 Q1, Q2)
            end;
        [] ->
            {more,
             {Cs, St, Col, Toks, Line, SigilType, fun scan_string/6}};
        eof ->
            scan_error({illegal, string}, Line, Col, Line, Col, Cs)
    end.

-compile({inline, [{string_right_delimiter, 1}]}).

string_right_delimiter(C) ->
    case C of
        $( ->
            $);
        $[ ->
            $];
        ${ ->
            $};
        $< ->
            $>;
        _
            when
                C =:= $/;
                C =:= $|;
                C =:= $#;
                C =:= $`;
                C =:= $';
                C =:= $" ->
            C;
        _ ->
            undefined
    end.

-record(tqs,{line, col, sigil_type, qs, verbatim,
             qn = undefined,
             str = "",
             content_r = [],
             acc = ""}).

scan_tqstring(Cs, St, Line, Col, Toks, SigilType, Qs) ->
    scan_tqstring(Cs, St, Line, Col, Toks, {SigilType, Qs}).

scan_tqstring(Cs, St, Line, Col, Toks, {SigilType, Qs}) ->
    case scan_count(Cs, $", Qs) of
        {[], Nqs} ->
            {more,
             {[], St, Col, Toks, Line,
              {SigilType, Nqs},
              fun scan_tqstring/6}};
        {Ncs, Nqs} ->
            Verbatim =
                if
                    SigilType =:= b;SigilType =:= s ->
                        false;
                    true ->
                        true
                end,
            Tqs =
                {tqs, Line, Col, SigilType, Nqs, Verbatim, undefined,
                 lists_duplicate(Nqs, $", ""),
                 [],
                 ""},
            scan_tqstring_lines(Ncs, St, Line,
                                int_column(Col) + Qs,
                                Toks, Tqs)
    end.

scan_count([C | Cs], C, N) ->
    scan_count(Cs, C, N + 1);
scan_count(Cs, _, N) ->
    {Cs, N}.

scan_tqstring_lines(Cs, St, Line, Col, Toks, Tqs) ->
    {tqs, _, _, _, _, _, Qn, Str, ContentR, Acc} = Tqs,
    case
        scan_tqstring_lines(Cs, Tqs, Line,
                            int_column(Col),
                            Str, Qn, ContentR, Acc)
    of
        {ok, Ncs, Nline, Ncol, Nstr, NcontentR, IndentR} ->
            scan_tqstring_finish(Ncs, St, Nline, Ncol, Toks,
                                 begin
                                     REC27 = Tqs,
                                     case REC27 of
                                         {tqs, _, _, _, _, _, _, _, _,
                                          _} ->
                                             setelement(8,
                                                        setelement(9,
                                                                   setelement(10,
                                                                              REC27,
                                                                              IndentR),
                                                                   NcontentR),
                                                        Nstr);
                                         _ ->
                                             error({badrecord, REC27})
                                     end
                                 end);
        {more, Ncs, Nline, Ncol, Nstr, Nqn, NcontentR, Nacc} ->
            {more,
             {Ncs, St, Ncol, Toks, Nline,
              begin
                  REC28 = Tqs,
                  case REC28 of
                      {tqs, _, _, _, _, _, _, _, _, _} ->
                          setelement(7,
                                     setelement(8,
                                                setelement(9,
                                                           setelement(10,
                                                                      REC28,
                                                                      Nacc),
                                                           NcontentR),
                                                Nstr),
                                     Nqn);
                      _ ->
                          error({badrecord, REC28})
                  end
              end,
              fun scan_tqstring_lines/6}};
        {error, Ncs, Nline, Ncol, Nline_1, Ncol_1, Error} ->
            Col0 =
                case Tqs of
                    {tqs, _, REC29, _, _, _, _, _, _, _} ->
                        REC29;
                    REC29 ->
                        error({badrecord, REC29})
                end,
            scan_error(Error, Nline,
                       new_column(Col0, Ncol),
                       Nline_1,
                       new_column(Col0, Ncol_1),
                       Ncs)
    end.

scan_tqstring_lines(Cs0, Tqs, Line, Col, Str, Qn, ContentR, Acc) ->
    case Cs0 of
        [$\n = C | Cs] ->
            scan_tqstring_lines(Cs, Tqs,
                                Line + 1,
                                1,
                                [C | Str],
                                case Tqs of
                                    {tqs, _, _, _, REC30, _, _, _, _, _} ->
                                        REC30;
                                    REC30 ->
                                        error({badrecord, REC30})
                                end,
                                [[C | Acc] | ContentR],
                                []);
        [C | Cs] ->
            if
                C =:= $", is_integer(Qn) ->
                    Nstr = [C | Str],
                    Nacc = [C | Acc],
                    Ncol = Col + 1,
                    if
                        Qn =:= 1 ->
                            IndentR =
                                lists:nthtail(case Tqs of
                                                  {tqs, _, _, _, REC31,
                                                   _, _, _, _, _} ->
                                                      REC31;
                                                  REC31 ->
                                                      error({badrecord,
                                                             REC31})
                                              end,
                                              Nacc),
                            {ok, Cs, Line,
                             Col + 1,
                             Nstr, ContentR, IndentR};
                        true ->
                            scan_tqstring_lines(Cs, Tqs, Line, Ncol,
                                                Nstr,
                                                Qn - 1,
                                                ContentR, Nacc)
                    end;
                is_integer(C)
                andalso
                (C >= $\000
                 andalso
                 C =< $\s
                 orelse
                 C >= $\200
                 andalso
                 C =< $ ),
                is_integer(Qn) ->
                    Nstr = [C | Str],
                    Nacc = [C | Acc],
                    Ncol = Col + 1,
                    if
                        (is_record(Tqs, tqs, 10)
                         orelse
                         fail)
                        and
                        (Qn =:= element(5, Tqs)) ->
                            scan_tqstring_lines(Cs, Tqs, Line, Ncol,
                                                Nstr, Qn, ContentR,
                                                Nacc);
                        true ->
                            scan_tqstring_lines(Cs, Tqs, Line, Ncol,
                                                Nstr, undefined,
                                                ContentR, Nacc)
                    end;
                C =:= $\\,
                not ((is_record(Tqs, tqs, 10)
                      orelse
                      fail)
                     and
                     element(6, Tqs)) ->
                    case scan_escape(Cs, Col) of
                        more ->
                            {more, Cs, Line, Col, Str, Qn, ContentR,
                             Acc};
                        {error, Ncs, Error, Ncol} ->
                            {error, Ncs, Line, Ncol, Line,
                             Ncol + 1,
                             Error};
                        {eof, Ncol} ->
                            scan_tqstring_eof([Acc | ContentR],
                                              Tqs, Line,
                                              Ncol + 1);
                        {nl, Val, ValStr, Ncs, Ncol} ->
                            Nstr = lists:reverse(ValStr, [C | Str]),
                            scan_tqstring_lines(Ncs, Tqs,
                                                Line + 1,
                                                Ncol, Nstr,
                                                case Tqs of
                                                    {tqs, _, _, _,
                                                     REC32, _, _, _, _,
                                                     _} ->
                                                        REC32;
                                                    REC32 ->
                                                        error({badrecord,
                                                               REC32})
                                                end,
                                                [[Val | Acc] | ContentR],
                                                []);
                        {Val, ValStr, Ncs, Ncol} ->
                            Nstr = lists:reverse(ValStr, [C | Str]),
                            scan_tqstring_lines(Ncs, Tqs, Line,
                                                Ncol + 1,
                                                Nstr, undefined,
                                                ContentR,
                                                [Val | Acc])
                    end;
                is_integer(C)
                andalso
                (C >= 0
                 andalso
                 C < 55296
                 orelse
                 C > 57343
                 andalso
                 C < 65534
                 orelse
                 C > 65535
                 andalso
                 C =< 1114111) ->
                    scan_tqstring_lines(Cs, Tqs, Line,
                                        Col + 1,
                                        [C | Str],
                                        undefined, ContentR,
                                        [C | Acc]);
                is_integer(C)
                andalso
                0 =< C
                andalso
                C < 1114112 ->
                    {error, Cs, Line, Col, Line,
                     Col + 1,
                     {illegal, character}}
            end;
        [] ->
            {more, Cs0, Line, Col, Str, Qn, ContentR, Acc};
        eof ->
            scan_tqstring_eof([Acc | ContentR], Tqs, Line, Col)
    end.

scan_tqstring_eof(ContentR, Tqs, Line, Col) ->
    {tqs, Line0, Col0, SigilType, Qs, _, _, _, _, _} = Tqs,
    {error, eof, Line0,
     incr_column(Col0, Qs),
     Line, Col,
     {unterminated,
      if
          SigilType =:= {} ->
              {string, Qs};
          is_atom(SigilType) ->
              {sigil, SigilType, Qs}
      end,
      string_head(ContentR)}}.

scan_tqstring_finish(Cs, St, Line, Col, Toks, Tqs) ->
    {tqs, Line0, Col0, _, _, _, _, _, ContentR, IndentR} = Tqs,
    NcontentR = strip_last_line_newline_r(ContentR),
    case tqstring_finish(lists:reverse(IndentR), NcontentR, Line - 1) of
        Content when is_list(Content) ->
            {tqs, _, _, SigilType, _, _, _, Str, _, _} = Tqs,
            AnnoStr =
                case
                    case St of
                        {erl_scan, _, _, _, _, REC33, _, _} ->
                            REC33;
                        REC33 ->
                            error({badrecord, REC33})
                    end
                of
                    true ->
                        Text = begin lists:reverse(Str) end,
                        case
                            case St of
                                {erl_scan, _, REC34, _, _, _, _, _} ->
                                    REC34;
                                REC34 ->
                                    error({badrecord, REC34})
                            end(string, Text)
                        of
                            true ->
                                Text;
                            false ->
                                []
                        end;
                    false ->
                        []
                end,
            Tok = {string, anno(Line0, Col0, St, AnnoStr), Content},
            scan_sigil_suffix(Cs, St, Line,
                              new_column(Col0, Col),
                              [Tok | Toks],
                              SigilType);
        {Tag = indentation, ErrorLine, ErrorCol} ->
            scan_error(Tag, ErrorLine,
                       new_column(Col0, ErrorCol),
                       Line,
                       new_column(Col0, Col),
                       Cs);
        {Tag = white_space, N} ->
            scan_error(Tag, Line0,
                       incr_column(Col0,
                                   case Tqs of
                                       {tqs, _, _, _, REC35, _, _, _, _,
                                        _} ->
                                           REC35;
                                       REC35 ->
                                           error({badrecord, REC35})
                                   end
                                   +
                                   N),
                       Line,
                       new_column(Col0, Col),
                       Cs)
    end.

strip_last_line_newline_r(ContentR = [_]) ->
    ContentR;
strip_last_line_newline_r([LastLineR | ContentR]) ->
    [strip_newline_r(LastLineR) | ContentR].

strip_newline_r("\n\r" ++ Rcs) ->
    Rcs;
strip_newline_r("\n" ++ Rcs) ->
    Rcs.

tqstring_finish(Indent, ContentR, Line) ->
    tqstring_finish(Indent, ContentR, Line, undefined, "").

tqstring_finish(_Indent, [FirstLineR], _Line, Error, Content) ->
    NfirstLineR = strip_newline_r(FirstLineR),
    FirstLine = lists:reverse(NfirstLineR),
    case check_white_space(FirstLine) of
        ok ->
            if
                Error =:= undefined ->
                    Content;
                true ->
                    Error
            end;
        N ->
            {white_space, N}
    end;
tqstring_finish(Indent, [StringR | StringsR], Line, Error, Content) ->
    case strip_indent(Indent, lists:reverse(StringR, Content)) of
        Ncontent when is_list(Ncontent) ->
            tqstring_finish(Indent, StringsR, Line - 1, Error, Ncontent);
        ErrorCol when is_integer(ErrorCol) ->
            Nerror = {indentation, Line, ErrorCol},
            tqstring_finish(Indent, StringsR, Line - 1, Nerror, "")
    end.

strip_indent(Indent, Cs) ->
    case Cs of
        "\r\n" ++ _ ->
            Cs;
        "\n" ++ _ ->
            Cs;
        "" ->
            Cs;
        _ ->
            strip_indent(Indent, Cs, 1)
    end.

strip_indent([C | Indent], [C | Cs], Col) ->
    strip_indent(Indent, Cs, Col + 1);
strip_indent([], Cs, _) ->
    Cs;
strip_indent(_, _, Col) ->
    Col.

check_white_space(Cs) ->
    check_white_space(Cs, 0).

check_white_space([], _) ->
    ok;
check_white_space([C | Cs], N) ->
    if
        is_integer(C)
        andalso
        (C >= $\000
         andalso
         C =< $\s
         orelse
         C >= $\200
         andalso
         C =< $ ) ->
            check_white_space(Cs, N + 1);
        true ->
            N
    end.

-record(qstring,{line, col, sigil_type, q1, q2,
                 str = undefined,
                 wcs = ""}).

scan_qstring(Cs, St, Line, Col, Toks, SigilType, Q1, Q2) ->
    if
        SigilType =:= {};
        SigilType =:= '';
        SigilType =:= b;
        SigilType =:= s ->
            Ncol = incr_column(Col, 1),
            scan_qstring(Cs, St, Line, Ncol, Toks,
                         {qstring, Line, Col, SigilType, Q1, Q2,
                          undefined,
                          ""});
        true ->
            scan_vstring(Cs, St, Line, Col, Toks, SigilType, Q1, Q2)
    end.

scan_qstring(Cs,
             {erl_scan, _, _, _, _, _, _, _} = St,
             Line, Col, Toks,
             {qstring, _, _, _, _, Q2, Str, Wcs} = Qstring) ->
    case scan_string0(Cs, St, Line, Col, Q2, Str, Wcs) of
        {ok, {Ncs, Nline, Ncol, Nstr, Nwcs}} ->
            {qstring, Line0, Col0, SigilType, Q1, _, _, _} = Qstring,
            AnnoStr =
                case
                    case St of
                        {erl_scan, _, _, _, _, REC36, _, _} ->
                            REC36;
                        REC36 ->
                            error({badrecord, REC36})
                    end
                of
                    true ->
                        Text =
                            begin [Q1 | lists:reverse(Nstr, [Q2])] end,
                        case
                            case St of
                                {erl_scan, _, REC37, _, _, _, _, _} ->
                                    REC37;
                                REC37 ->
                                    error({badrecord, REC37})
                            end(string, Text)
                        of
                            true ->
                                Text;
                            false ->
                                []
                        end;
                    false ->
                        []
                end,
            Anno = anno(Line0, Col0, St, AnnoStr),
            Tok = {string, Anno, lists:reverse(Nwcs)},
            scan_sigil_suffix(Ncs, St, Nline, Ncol,
                              [Tok | Toks],
                              SigilType);
        {more, {Ncs, Nline, Ncol, Nstr, Nwcs}} ->
            Nqstring =
                begin
                    REC38 = Qstring,
                    case REC38 of
                        {qstring, _, _, _, _, _, _, _} ->
                            setelement(7,
                                       setelement(8, REC38, Nwcs),
                                       Nstr);
                        _ ->
                            error({badrecord, REC38})
                    end
                end,
            {more,
             {Ncs, St, Ncol, Toks, Nline, Nqstring, fun scan_qstring/6}};
        {eof, {Ncs, Nline, Ncol, Nwcs}} ->
            {qstring, Line0, Col0, SigilType, Q1, _, _, _} = Qstring,
            scan_error({unterminated,
                        if
                            SigilType =:= {} ->
                                string;
                            is_atom(SigilType) ->
                                {sigil, SigilType, Q1, Q2}
                        end,
                        string_head([Nwcs])},
                       Line0,
                       incr_column(Col0, 1),
                       Nline, Ncol, Ncs);
        {{error, _, _}, _Ncs} = Error ->
            Error
    end.

scan_sigil_suffix(Cs, St, Line, Col, Toks, {}) ->
    scan_string_concat(Cs, St, Line, Col, Toks, "");
scan_sigil_suffix(Cs, St, Line, Col, Toks, SigilType)
    when is_atom(SigilType) ->
    scan_sigil_suffix(Cs, St, Line, Col, Toks, "");
scan_sigil_suffix(Cs, St, Line, Col, Toks, Wcs) when is_list(Wcs) ->
    case scan_name(Cs, Wcs) of
        {more, Nwcs} ->
            {more,
             {[], St, Col, Toks, Line, Nwcs, fun scan_sigil_suffix/6}};
        {Nwcs, Ncs} ->
            Type = sigil_suffix,
            Ncol = incr_column(Col, length(Nwcs)),
            Suffix = lists:reverse(Nwcs),
            try list_to_atom(Suffix) of
                A when is_atom(A) ->
                    Anno =
                        anno(Line, Col, St,
                             case
                                 case St of
                                     {erl_scan, _, _, _, _, REC39, _, _} ->
                                         REC39;
                                     REC39 ->
                                         error({badrecord, REC39})
                                 end
                                 andalso
                                 case St of
                                     {erl_scan, _, REC40, _, _, _, _, _} ->
                                         REC40;
                                     REC40 ->
                                         error({badrecord, REC40})
                                 end(Type, begin Suffix end)
                             of
                                 true ->
                                     begin Suffix end;
                                 false ->
                                     []
                             end),
                    Tok = {Type, Anno, Suffix},
                    scan_string_concat(Ncs, St, Line, Ncol,
                                       [Tok | Toks],
                                       Suffix)
            catch
                _:_ ->
                    scan_error({illegal, Type},
                               Line, Col, Line, Ncol, Ncs)
            end
    end.

scan_string_concat(Cs, St, Line, Col, Toks, "" = SigilSuffix) ->
    case Cs of
        [$" | _] ->
            scan_error(string_concat, Line, Col, Line, Col, Cs);
        [] ->
            {more,
             {Cs, St, Col, Toks, Line, SigilSuffix,
              fun scan_string_concat/6}};
        _ ->
            scan1(Cs, St, Line, Col, Toks)
    end;
scan_string_concat(Cs, St, Line, Col, Toks, SigilSuffix)
    when is_list(SigilSuffix) ->
    scan1(Cs, St, Line, Col, Toks).

-record(vstring,{line, col, sigil_type, q1, q2, wcs = ""}).

scan_vstring(Cs, St, Line, Col, Toks, SigilType, Q1, Q2) ->
    Vstring = {vstring, Line, Col, SigilType, Q1, Q2, ""},
    scan_vstring(Cs, St, Line, incr_column(Col, 1), Toks, Vstring).

scan_vstring(Cs,
             {erl_scan, _, _, _, _, _, _, _} = St,
             Line, Col, Toks,
             {vstring, _, _, _, _, Q2, Wcs} = Vstring) ->
    case scan_vstring(Cs, Q2, Line, Col, Wcs) of
        {ok, {Ncs, Nline, Ncol, Nwcs}} ->
            {vstring, Line0, Col0, SigilType, Q1, _, _} = Vstring,
            AnnoStr =
                case
                    case St of
                        {erl_scan, _, _, _, _, REC41, _, _} ->
                            REC41;
                        REC41 ->
                            error({badrecord, REC41})
                    end
                of
                    true ->
                        Text =
                            begin [Q1 | lists:reverse(Nwcs, [Q2])] end,
                        case
                            case St of
                                {erl_scan, _, REC42, _, _, _, _, _} ->
                                    REC42;
                                REC42 ->
                                    error({badrecord, REC42})
                            end(string, Text)
                        of
                            true ->
                                Text;
                            false ->
                                []
                        end;
                    false ->
                        []
                end,
            Anno = anno(Line0, Col0, St, AnnoStr),
            Tok = {string, Anno, lists:reverse(Nwcs)},
            scan_sigil_suffix(Ncs, St, Nline, Ncol,
                              [Tok | Toks],
                              SigilType);
        {more, {Ncs, Nline, Ncol, Nwcs}} ->
            Nvstring =
                begin
                    REC43 = Vstring,
                    case REC43 of
                        {vstring, _, _, _, _, _, _} ->
                            setelement(7, REC43, Nwcs);
                        _ ->
                            error({badrecord, REC43})
                    end
                end,
            {more,
             {Ncs, St, Ncol, Toks, Nline, Nvstring, fun scan_vstring/6}};
        {eof, {Ncs, Nline, Ncol, Nwcs}} ->
            {vstring, Line0, Col0, SigilType, Q1, _, _} = Vstring,
            scan_error({unterminated,
                        if
                            SigilType =:= {} ->
                                string;
                            is_atom(SigilType) ->
                                {sigil, SigilType, Q1, Q2}
                        end,
                        string_head([Nwcs])},
                       Line0,
                       incr_column(Col0, 1),
                       Nline, Ncol, Ncs);
        {{error, _, _}, _Ncs} = Error ->
            Error
    end.

scan_vstring(Cs, Q, Line, no_col, Wcs) ->
    scan_vstring(Cs, Q, Line, Wcs);
scan_vstring(Cs, Q, Line, Col, Wcs) ->
    case Cs of
        [Q | Ncs] ->
            {ok, {Ncs, Line, Col + 1, Wcs}};
        [$\n = C | Ncs] ->
            scan_vstring(Ncs, Q, Line + 1, 1, [C | Wcs]);
        [C | Ncs]
            when
                is_integer(C)
                andalso
                (C >= 0
                 andalso
                 C < 55296
                 orelse
                 C > 57343
                 andalso
                 C < 65534
                 orelse
                 C > 65535
                 andalso
                 C =< 1114111) ->
            scan_vstring(Ncs, Q, Line, Col + 1, [C | Wcs]);
        [C | Ncs]
            when
                is_integer(C)
                andalso
                0 =< C
                andalso
                C < 1114112 ->
            scan_error({illegal, character},
                       Line, Col, Line,
                       Col + 1,
                       Ncs);
        [] ->
            {more, {Cs, Line, Col, Wcs}};
        eof ->
            {eof, {Cs, Line, Col, Wcs}}
    end.

scan_vstring(Cs, Q, Line, Wcs) ->
    case Cs of
        [Q | Ncs] ->
            {ok, {Ncs, Line, no_col, Wcs}};
        [$\n = C | Ncs] ->
            scan_vstring(Ncs, Q, Line + 1, [C | Wcs]);
        [C | Ncs]
            when
                is_integer(C)
                andalso
                (C >= 0
                 andalso
                 C < 55296
                 orelse
                 C > 57343
                 andalso
                 C < 65534
                 orelse
                 C > 65535
                 andalso
                 C =< 1114111) ->
            scan_vstring(Ncs, Q, Line, [C | Wcs]);
        [C | Ncs]
            when
                is_integer(C)
                andalso
                0 =< C
                andalso
                C < 1114112 ->
            Col = no_col,
            scan_error({illegal, character}, Line, Col, Line, Col, Ncs);
        [] ->
            {more, {Cs, Line, no_col, Wcs}};
        eof ->
            {eof, {Cs, Line, no_col, Wcs}}
    end.

-record(qatom,{line, col, str = undefined, wcs = ""}).

scan_qatom(Cs, St, Line, Col, Toks) ->
    Qatom = {qatom, Line, Col, undefined, ""},
    scan_qatom(Cs, St, Line, incr_column(Col, 1), Toks, Qatom).

scan_qatom(Cs,
           {erl_scan, _, _, _, _, _, _, _} = St,
           Line, Col, Toks,
           {qatom, _, _, Str, Wcs} = Qatom) ->
    C = $',
    case scan_string0(Cs, St, Line, Col, C, Str, Wcs) of
        {ok, {Ncs, Nline, Ncol, Nstr, Nwcs}} ->
            {qatom, Line0, Col0, _, _} = Qatom,
            try list_to_atom(lists:reverse(Nwcs)) of
                A when is_atom(A) ->
                    AnnoStr =
                        case
                            case St of
                                {erl_scan, _, _, _, _, REC44, _, _} ->
                                    REC44;
                                REC44 ->
                                    error({badrecord, REC44})
                            end
                        of
                            true ->
                                Text =
                                    begin
                                        [C | lists:reverse(Nstr, [C])]
                                    end,
                                case
                                    case St of
                                        {erl_scan, _, REC45, _, _, _, _,
                                         _} ->
                                            REC45;
                                        REC45 ->
                                            error({badrecord, REC45})
                                    end(atom, Text)
                                of
                                    true ->
                                        Text;
                                    false ->
                                        []
                                end;
                            false ->
                                []
                        end,
                    Anno = anno(Line0, Col0, St, AnnoStr),
                    Tok = {atom, Anno, A},
                    scan1(Ncs, St, Nline, Ncol, [Tok | Toks])
            catch
                _:_ ->
                    scan_error({illegal, atom},
                               Line0, Col0, Nline, Ncol, Ncs)
            end;
        {more, {Ncs, Nline, Ncol, Nstr, Nwcs}} ->
            Nqatom =
                begin
                    REC46 = Qatom,
                    case REC46 of
                        {qatom, _, _, _, _} ->
                            setelement(4,
                                       setelement(5, REC46, Nwcs),
                                       Nstr);
                        _ ->
                            error({badrecord, REC46})
                    end
                end,
            {more,
             {Ncs, St, Ncol, Toks, Nline, Nqatom, fun scan_qatom/6}};
        {eof, {Ncs, Nline, Ncol, Nwcs}} ->
            {qatom, Line0, Col0, _, _} = Qatom,
            scan_error({unterminated, atom, string_head([Nwcs])},
                       Line0,
                       incr_column(Col0, 1),
                       Nline, Ncol, Ncs);
        {{error, _, _}, _Ncs} = Error ->
            Error
    end.

string_head(ContentR) ->
    string:slice(lists_foldl_reverse(ContentR, ""), 0, 16).

scan_string0(Cs,
             {erl_scan, _, _, _, _, true, _, _},
             Line, Col, Q, Str, Wcs)
    when Str =/= undefined ->
    scan_string1(Cs, Line, Col, Q, Str, Wcs);
scan_string0(Cs,
             {erl_scan, _, _, _, _, _, _, _},
             Line, Col, Q, _Str, Wcs) ->
    if
        Col =:= no_col ->
            scan_string_no_col(Cs, Line, Q, Wcs);
        true ->
            scan_string_col(Cs, Line, Col, Q, Wcs)
    end.

scan_string_no_col([Q | Cs], Line, Q, Wcs) ->
    {ok, {Cs, Line, no_col, Wcs, Wcs}};
scan_string_no_col([$\n = C | Cs], Line, Q, Wcs) ->
    scan_string_no_col(Cs, Line + 1, Q, [C | Wcs]);
scan_string_no_col([C | Cs], Line, Q, Wcs)
    when
        C =/= $\\,
        is_integer(C)
        andalso
        (C >= 0
         andalso
         C < 55296
         orelse
         C > 57343
         andalso
         C < 65534
         orelse
         C > 65535
         andalso
         C =< 1114111) ->
    scan_string_no_col(Cs, Line, Q, [C | Wcs]);
scan_string_no_col(Cs, Line, Q, Wcs) ->
    scan_string1(Cs, Line, no_col, Q, Wcs, Wcs).

scan_string_col([Q | Cs], Line, Col, Q, Wcs) ->
    {ok, {Cs, Line, Col + 1, Wcs, Wcs}};
scan_string_col([$\n = C | Cs], Line, _Col, Q, Wcs) ->
    scan_string_col(Cs, Line + 1, 1, Q, [C | Wcs]);
scan_string_col([C | Cs], Line, Col, Q, Wcs)
    when
        C =/= $\\,
        is_integer(C)
        andalso
        (C >= 0
         andalso
         C < 55296
         orelse
         C > 57343
         andalso
         C < 65534
         orelse
         C > 65535
         andalso
         C =< 1114111) ->
    scan_string_col(Cs, Line, Col + 1, Q, [C | Wcs]);
scan_string_col(Cs, Line, Col, Q, Wcs) ->
    scan_string1(Cs, Line, Col, Q, Wcs, Wcs).

scan_string1([Q | Cs], Line, Col, Q, Str, Wcs) ->
    {ok, {Cs, Line, incr_column(Col, 1), Str, Wcs}};
scan_string1([$\n = C | Cs], Line, Col, Q, Str, Wcs) ->
    Ncol = new_column(Col, 1),
    scan_string1(Cs, Line + 1, Ncol, Q, [C | Str], [C | Wcs]);
scan_string1([$\\ | Cs] = Cs0, Line, Col, Q, Str, Wcs) ->
    case scan_escape(Cs, Col) of
        more ->
            {more, {Cs0, Line, Col, Str, Wcs}};
        {error, Ncs, Error, Ncol} ->
            scan_error(Error, Line, Col, Line,
                       incr_column(Ncol, 1),
                       Ncs);
        {eof = Ncs, Ncol} ->
            {eof, {Ncs, Line, incr_column(Ncol, 1), lists:reverse(Wcs)}};
        {nl, Val, ValStr, Ncs, Ncol} ->
            Nstr = lists:reverse(ValStr, [$\\ | Str]),
            Nwcs = [Val | Wcs],
            scan_string1(Ncs, Line + 1, Ncol, Q, Nstr, Nwcs);
        {Val, ValStr, Ncs, Ncol} ->
            Nstr = lists:reverse(ValStr, [$\\ | Str]),
            Nwcs = [Val | Wcs],
            scan_string1(Ncs, Line, incr_column(Ncol, 1), Q, Nstr, Nwcs)
    end;
scan_string1([C | Cs], Line, no_col = Col, Q, Str, Wcs)
    when
        is_integer(C)
        andalso
        (C >= 0
         andalso
         C < 55296
         orelse
         C > 57343
         andalso
         C < 65534
         orelse
         C > 65535
         andalso
         C =< 1114111) ->
    scan_string1(Cs, Line, Col, Q, [C | Str], [C | Wcs]);
scan_string1([C | Cs], Line, Col, Q, Str, Wcs)
    when
        is_integer(C)
        andalso
        (C >= 0
         andalso
         C < 55296
         orelse
         C > 57343
         andalso
         C < 65534
         orelse
         C > 65535
         andalso
         C =< 1114111) ->
    scan_string1(Cs, Line, Col + 1, Q, [C | Str], [C | Wcs]);
scan_string1([C | Cs], Line, Col, _Q, _Str, _Wcs)
    when
        is_integer(C)
        andalso
        0 =< C
        andalso
        C < 1114112 ->
    scan_error({illegal, character},
               Line, Col, Line,
               incr_column(Col, 1),
               Cs);
scan_string1([] = Cs, Line, Col, _Q, Str, Wcs) ->
    {more, {Cs, Line, Col, Str, Wcs}};
scan_string1(eof = Cs, Line, Col, _Q, _Str, Wcs) ->
    {eof, {Cs, Line, Col, Wcs}}.

scan_escape([O1, O2, O3 | Cs], Col)
    when
        is_integer(O1)
        andalso
        $0 =< O1
        andalso
        O1 =< $7,
        is_integer(O2)
        andalso
        $0 =< O2
        andalso
        O2 =< $7,
        is_integer(O3)
        andalso
        $0 =< O3
        andalso
        O3 =< $7 ->
    Val = (O1 * 8 + O2) * 8 + O3 - 73 * $0,
    {Val, [O1, O2, O3], Cs, incr_column(Col, 3)};
scan_escape([O1, O2], _Col)
    when
        is_integer(O1)
        andalso
        $0 =< O1
        andalso
        O1 =< $7,
        is_integer(O2)
        andalso
        $0 =< O2
        andalso
        O2 =< $7 ->
    more;
scan_escape([O1, O2 | Cs], Col)
    when
        is_integer(O1)
        andalso
        $0 =< O1
        andalso
        O1 =< $7,
        is_integer(O2)
        andalso
        $0 =< O2
        andalso
        O2 =< $7 ->
    Val = O1 * 8 + O2 - 9 * $0,
    {Val, [O1, O2], Cs, incr_column(Col, 2)};
scan_escape([O1], _Col)
    when
        is_integer(O1)
        andalso
        $0 =< O1
        andalso
        O1 =< $7 ->
    more;
scan_escape([O1 | Cs], Col)
    when
        is_integer(O1)
        andalso
        $0 =< O1
        andalso
        O1 =< $7 ->
    {O1 - $0, [O1], Cs, incr_column(Col, 1)};
scan_escape([$x, ${ | Cs], Col) ->
    scan_hex(Cs, incr_column(Col, 2), []);
scan_escape([$x], _Col) ->
    more;
scan_escape([$x | eof], Col) ->
    {eof, incr_column(Col, 1)};
scan_escape([$x, H1, H2 | Cs], Col)
    when
        is_integer(H1)
        andalso
        (H1 >= $0
         andalso
         H1 =< $9
         orelse
         H1 >= $A
         andalso
         H1 =< $F
         orelse
         H1 >= $a
         andalso
         H1 =< $f),
        is_integer(H2)
        andalso
        (H2 >= $0
         andalso
         H2 =< $9
         orelse
         H2 >= $A
         andalso
         H2 =< $F
         orelse
         H2 >= $a
         andalso
         H2 =< $f) ->
    Val = list_to_integer([H1, H2], 16),
    {Val, [$x, H1, H2], Cs, incr_column(Col, 3)};
scan_escape([$x, H1], _Col)
    when
        is_integer(H1)
        andalso
        (H1 >= $0
         andalso
         H1 =< $9
         orelse
         H1 >= $A
         andalso
         H1 =< $F
         orelse
         H1 >= $a
         andalso
         H1 =< $f) ->
    more;
scan_escape([$x | Cs], Col) ->
    {error, Cs, {illegal, character}, incr_column(Col, 1)};
scan_escape([$^ = C0, C | Cs], Col)
    when
        is_integer(C)
        andalso
        0 =< C
        andalso
        C < 1114112 ->
    case caret_char_code(C) of
        error ->
            {error, [C | Cs], {illegal, character}, incr_column(Col, 1)};
        Code ->
            {Code, [C0, C], Cs, incr_column(Col, 2)}
    end;
scan_escape([$^], _Col) ->
    more;
scan_escape([$^ | eof], Col) ->
    {eof, incr_column(Col, 1)};
scan_escape([$\n = C | Cs], Col) ->
    {nl, C, [C], Cs, new_column(Col, 1)};
scan_escape([C0 | Cs], Col)
    when
        is_integer(C0)
        andalso
        (C0 >= 0
         andalso
         C0 < 55296
         orelse
         C0 > 57343
         andalso
         C0 < 65534
         orelse
         C0 > 65535
         andalso
         C0 =< 1114111) ->
    C = escape_char(C0),
    {C, [C0], Cs, incr_column(Col, 1)};
scan_escape([C | Cs], Col)
    when
        is_integer(C)
        andalso
        0 =< C
        andalso
        C < 1114112 ->
    {error, Cs, {illegal, character}, incr_column(Col, 1)};
scan_escape([], _Col) ->
    more;
scan_escape(eof, Col) ->
    {eof, Col}.

scan_hex([C | Cs], Col, Wcs)
    when
        is_integer(C)
        andalso
        (C >= $0
         andalso
         C =< $9
         orelse
         C >= $A
         andalso
         C =< $F
         orelse
         C >= $a
         andalso
         C =< $f) ->
    scan_hex(Cs, incr_column(Col, 1), [C | Wcs]);
scan_hex(Cs, Col, Wcs) ->
    scan_hex_end(Cs, Col, Wcs, "x{").

scan_hex_end([$} | Cs], Col, [], _Str) ->
    {error, Cs, {illegal, character}, incr_column(Col, 1)};
scan_hex_end([$} | Cs], Col, Wcs0, Str0) ->
    Wcs = lists:reverse(Wcs0),
    try list_to_integer(Wcs, 16) of
        Val
            when
                is_integer(Val)
                andalso
                (Val >= 0
                 andalso
                 Val < 55296
                 orelse
                 Val > 57343
                 andalso
                 Val < 65534
                 orelse
                 Val > 65535
                 andalso
                 Val =< 1114111) ->
            {Val, Str0 ++ Wcs ++ [$}], Cs, incr_column(Col, 1)};
        _Val ->
            {error, Cs, {illegal, character}, incr_column(Col, 1)}
    catch
        error:system_limit ->
            {error, Cs, {illegal, character}, incr_column(Col, 1)}
    end;
scan_hex_end([], _Col, _Wcs, _Str0) ->
    more;
scan_hex_end(eof, Col, _Wcs, _Str0) ->
    {eof, Col};
scan_hex_end(Cs, Col, _Wcs, _Str0) ->
    {error, Cs, {illegal, character}, Col}.

escape_char($n) ->
    $\n;
escape_char($r) ->
    $\r;
escape_char($t) ->
    $\t;
escape_char($v) ->
    $\v;
escape_char($b) ->
    $\b;
escape_char($f) ->
    $\f;
escape_char($e) ->
    $\e;
escape_char($s) ->
    $\s;
escape_char($d) ->
    $\d;
escape_char(C) ->
    C.

caret_char_code($?) ->
    127;
caret_char_code(C) when $@ =< C, C =< $_; $a =< C, C =< $z ->
    C band 31;
caret_char_code(_) ->
    error.

scan_number(Cs,
            {erl_scan, _, _, _, _, _, _, _} = St,
            Line, Col, Toks,
            {Ncs, Us}) ->
    scan_number(Cs, St, Line, Col, Toks, Ncs, Us).

scan_number([C | Cs], St, Line, Col, Toks, Ncs, Us)
    when
        is_integer(C)
        andalso
        $0 =< C
        andalso
        C =< $9 ->
    scan_number(Cs, St, Line, Col, Toks, [C | Ncs], Us);
scan_number([$_, Next | Cs], St, Line, Col, Toks, [Prev | _] = Ncs, _Us)
    when
        (is_integer(Next)
         andalso
         $0 =< Next
         andalso
         Next =< $9)
        andalso
        is_integer(Prev)
        andalso
        $0 =< Prev
        andalso
        Prev =< $9 ->
    scan_number(Cs, St, Line, Col, Toks,
                [Next, $_ | Ncs],
                with_underscore);
scan_number([$_] = Cs, St, Line, Col, Toks, Ncs, Us) ->
    {more, {Cs, St, Col, Toks, Line, {Ncs, Us}, fun scan_number/6}};
scan_number([$., C | Cs], St, Line, Col, Toks, Ncs, Us)
    when
        is_integer(C)
        andalso
        $0 =< C
        andalso
        C =< $9 ->
    scan_fraction(Cs, St, Line, Col, Toks, [C, $. | Ncs], Us);
scan_number([$., C | _] = Cs0, _St, Line, Col, _Toks, Ncs, _Us)
    when
        is_integer(C)
        andalso
        (C >= $a
         andalso
         C =< $z
         orelse
         C >= $A
         andalso
         C =< $Z
         orelse
         C =:= $_
         orelse
         C >= $0
         andalso
         C =< $9
         orelse
         C =:= $@
         orelse
         C >= $ß
         andalso
         C =< $ÿ
         andalso
         C =/= $÷
         andalso
         C >= $À
         andalso
         C =< $Þ
         andalso
         C =/= $×) ->
    scan_error({illegal, float},
               Line, Col, Line,
               incr_column(Col, length(Ncs)),
               Cs0);
scan_number([$.] = Cs, St, Line, Col, Toks, Ncs, Us) ->
    {more, {Cs, St, Col, Toks, Line, {Ncs, Us}, fun scan_number/6}};
scan_number([$# | Cs] = Cs0, St, Line, Col, Toks, Ncs0, Us) ->
    Ncs = lists:reverse(Ncs0),
    try list_to_integer(remove_digit_separators(Ncs, Us)) of
        B when is_integer(B), 2 =< B, B =< 1 + $Z - $A + 10 ->
            Bcs = Ncs ++ [$#],
            scan_based_num(Cs, St, Line, Col, Toks, B, [], Bcs,
                           no_underscore);
        B when is_integer(B) ->
            Len = length(Ncs),
            scan_error({base, B},
                       Line, Col, Line,
                       incr_column(Col, Len),
                       Cs0)
    catch
        error:system_limit ->
            scan_error({illegal, base}, Line, Col, Line, Col, Cs0)
    end;
scan_number([C | _] = Cs0, _St, Line, Col, _Toks, Ncs, _Us)
    when
        is_integer(C)
        andalso
        (C >= $a
         andalso
         C =< $z
         orelse
         C >= $A
         andalso
         C =< $Z
         orelse
         C =:= $_
         orelse
         C >= $0
         andalso
         C =< $9
         orelse
         C =:= $@
         orelse
         C >= $ß
         andalso
         C =< $ÿ
         andalso
         C =/= $÷
         andalso
         C >= $À
         andalso
         C =< $Þ
         andalso
         C =/= $×) ->
    scan_error({illegal, integer},
               Line, Col, Line,
               incr_column(Col, length(Ncs)),
               Cs0);
scan_number([] = Cs, St, Line, Col, Toks, Ncs, Us) ->
    {more, {Cs, St, Col, Toks, Line, {Ncs, Us}, fun scan_number/6}};
scan_number(Cs, St, Line, Col, Toks, Ncs0, Us) ->
    Ncs = lists:reverse(Ncs0),
    try list_to_integer(remove_digit_separators(Ncs, Us), 10) of
        N ->
            tok3(Cs, St, Line, Col, Toks, integer, Ncs, N)
    catch
        error:system_limit ->
            Ncol = incr_column(Col, length(Ncs)),
            scan_error({illegal, integer}, Line, Col, Line, Ncol, Cs)
    end.

remove_digit_separators(Number, no_underscore) ->
    Number;
remove_digit_separators(Number, with_underscore) ->
    [ 
     C ||
         C <- Number,
         C =/= $_
    ].

scan_based_num(Cs,
               {erl_scan, _, _, _, _, _, _, _} = St,
               Line, Col, Toks,
               {B, NCs, BCs, Us})
    when is_integer(B), 2 =< B, B =< 1 + $Z - $A + 10 ->
    scan_based_num(Cs, St, Line, Col, Toks, B, NCs, BCs, Us).

scan_based_num([C | Cs], St, Line, Col, Toks, B, Ncs, Bcs, Us)
    when
        is_integer(C)
        andalso
        ((is_integer(C)
          andalso
          $0 =< C
          andalso
          C =< $9)
         andalso
         C < $0 + B
         orelse
         C >= $A
         andalso
         B > 10
         andalso
         C < $A + B - 10
         orelse
         C >= $a
         andalso
         B > 10
         andalso
         C < $a + B - 10) ->
    scan_based_num(Cs, St, Line, Col, Toks, B, [C | Ncs], Bcs, Us);
scan_based_num([$_, Next | Cs],
               St, Line, Col, Toks, B,
               [Prev | _] = Ncs,
               Bcs, _Us)
    when
        (is_integer(Next)
         andalso
         ((is_integer(Next)
           andalso
           $0 =< Next
           andalso
           Next =< $9)
          andalso
          Next < $0 + B
          orelse
          Next >= $A
          andalso
          B > 10
          andalso
          Next < $A + B - 10
          orelse
          Next >= $a
          andalso
          B > 10
          andalso
          Next < $a + B - 10))
        andalso
        is_integer(Prev)
        andalso
        ((is_integer(Prev)
          andalso
          $0 =< Prev
          andalso
          Prev =< $9)
         andalso
         Prev < $0 + B
         orelse
         Prev >= $A
         andalso
         B > 10
         andalso
         Prev < $A + B - 10
         orelse
         Prev >= $a
         andalso
         B > 10
         andalso
         Prev < $a + B - 10) ->
    scan_based_num(Cs, St, Line, Col, Toks, B,
                   [Next, $_ | Ncs],
                   Bcs, with_underscore);
scan_based_num([$_] = Cs, St, Line, Col, Toks, B, NCs, BCs, Us) ->
    {more,
     {Cs, St, Col, Toks, Line, {B, NCs, BCs, Us}, fun scan_based_num/6}};
scan_based_num([$., C | Cs], St, Line, Col, Toks, B, Ncs, BCs, Us)
    when
        is_integer(C)
        andalso
        ((is_integer(C)
          andalso
          $0 =< C
          andalso
          C =< $9)
         andalso
         C < $0 + B
         orelse
         C >= $A
         andalso
         B > 10
         andalso
         C < $A + B - 10
         orelse
         C >= $a
         andalso
         B > 10
         andalso
         C < $a + B - 10) ->
    if
        B =:= 10;B =:= 2;B =:= 16 ->
            scan_based_fraction(Cs, St, Line, Col, Toks, B,
                                [C, $. | Ncs],
                                BCs, Us);
        true ->
            Ncol = incr_column(Col, length(Ncs) + length(BCs)),
            scan_error({float_base, B}, Line, Col, Line, Ncol, Cs)
    end;
scan_based_num([$., C | _] = Cs0,
               _St, Line, Col, _Toks, _B, Ncs, Bcs, _Us)
    when
        is_integer(C)
        andalso
        (C >= $a
         andalso
         C =< $z
         orelse
         C >= $A
         andalso
         C =< $Z
         orelse
         C =:= $_
         orelse
         C >= $0
         andalso
         C =< $9
         orelse
         C =:= $@
         orelse
         C >= $ß
         andalso
         C =< $ÿ
         andalso
         C =/= $÷
         andalso
         C >= $À
         andalso
         C =< $Þ
         andalso
         C =/= $×) ->
    scan_error({illegal, float},
               Line, Col, Line,
               incr_column(Col, length(Ncs) + length(Bcs)),
               Cs0);
scan_based_num([$.] = Cs, St, Line, Col, Toks, B, Ncs, BCs, Us) ->
    {more,
     {Cs, St, Col, Toks, Line, {B, Ncs, BCs, Us}, fun scan_based_num/6}};
scan_based_num([C | _] = Cs0, _St, Line, Col, _Toks, _B, Ncs, Bcs, _Us)
    when
        is_integer(C)
        andalso
        (C >= $a
         andalso
         C =< $z
         orelse
         C >= $A
         andalso
         C =< $Z
         orelse
         C =:= $_
         orelse
         C >= $0
         andalso
         C =< $9
         orelse
         C =:= $@
         orelse
         C >= $ß
         andalso
         C =< $ÿ
         andalso
         C =/= $÷
         andalso
         C >= $À
         andalso
         C =< $Þ
         andalso
         C =/= $×) ->
    scan_error({illegal, integer},
               Line, Col, Line,
               incr_column(Col, length(Ncs) + length(Bcs)),
               Cs0);
scan_based_num([] = Cs, St, Line, Col, Toks, B, NCs, BCs, Us) ->
    {more,
     {Cs, St, Col, Toks, Line, {B, NCs, BCs, Us}, fun scan_based_num/6}};
scan_based_num(Cs, _St, Line, Col, _Toks, _B, [], Bcs, _Us) ->
    Len = length(Bcs),
    Ncol = incr_column(Col, Len),
    scan_error({illegal, integer}, Line, Col, Line, Ncol, Cs);
scan_based_num(Cs, St, Line, Col, Toks, B, Ncs0, [_ | _] = Bcs, Us) ->
    Ncs = lists:reverse(Ncs0),
    try list_to_integer(remove_digit_separators(Ncs, Us), B) of
        N ->
            tok3(Cs, St, Line, Col, Toks, integer, Bcs ++ Ncs, N)
    catch
        error:system_limit ->
            Len = length(Bcs) + length(Ncs),
            Ncol = incr_column(Col, Len),
            scan_error({illegal, integer}, Line, Col, Line, Ncol, Cs)
    end.

scan_based_fraction(Cs,
                    {erl_scan, _, _, _, _, _, _, _} = St,
                    Line, Col, Toks,
                    {B, Ncs, BCs, Us}) ->
    scan_based_fraction(Cs, St, Line, Col, Toks, B, Ncs, BCs, Us).

scan_based_fraction([C | Cs], St, Line, Col, Toks, B, Ncs, BCs, Us)
    when
        is_integer(C)
        andalso
        ((is_integer(C)
          andalso
          $0 =< C
          andalso
          C =< $9)
         andalso
         C < $0 + B
         orelse
         C >= $A
         andalso
         B > 10
         andalso
         C < $A + B - 10
         orelse
         C >= $a
         andalso
         B > 10
         andalso
         C < $a + B - 10) ->
    scan_based_fraction(Cs, St, Line, Col, Toks, B, [C | Ncs], BCs, Us);
scan_based_fraction([$_, Next | Cs],
                    St, Line, Col, Toks, B,
                    [Prev | _] = Ncs,
                    BCs, _Us)
    when
        (is_integer(Next)
         andalso
         ((is_integer(Next)
           andalso
           $0 =< Next
           andalso
           Next =< $9)
          andalso
          Next < $0 + B
          orelse
          Next >= $A
          andalso
          B > 10
          andalso
          Next < $A + B - 10
          orelse
          Next >= $a
          andalso
          B > 10
          andalso
          Next < $a + B - 10))
        andalso
        is_integer(Prev)
        andalso
        ((is_integer(Prev)
          andalso
          $0 =< Prev
          andalso
          Prev =< $9)
         andalso
         Prev < $0 + B
         orelse
         Prev >= $A
         andalso
         B > 10
         andalso
         Prev < $A + B - 10
         orelse
         Prev >= $a
         andalso
         B > 10
         andalso
         Prev < $a + B - 10) ->
    scan_based_fraction(Cs, St, Line, Col, Toks, B,
                        [Next, $_ | Ncs],
                        BCs, with_underscore);
scan_based_fraction([$_] = Cs, St, Line, Col, Toks, B, Ncs, BCs, Us) ->
    {more,
     {Cs, St, Col, Toks, Line,
      {B, Ncs, BCs, Us},
      fun scan_based_fraction/6}};
scan_based_fraction([E | Cs], St, Line, Col, Toks, B, Ncs, BCs, Us)
    when E =:= $e; E =:= $E ->
    if
        B =:= 10 ->
            scan_based_exponent_sign(Cs, St, Line, Col, Toks, B, Ncs,
                                     BCs,
                                     [E],
                                     Us);
        true ->
            Ncol = incr_column(Col, length(Ncs) + length(BCs)),
            scan_error({exponent, B}, Line, Col, Line, Ncol, Cs)
    end;
scan_based_fraction([E | Cs], St, Line, Col, Toks, B, Ncs, BCs, Us)
    when E =:= $p; E =:= $P ->
    if
        B =/= 10 ->
            scan_based_exponent_sign(Cs, St, Line, Col, Toks, B, Ncs,
                                     BCs,
                                     [E],
                                     Us);
        true ->
            Ncol = incr_column(Col, length(Ncs) + length(BCs)),
            scan_error({exponent, B}, Line, Col, Line, Ncol, Cs)
    end;
scan_based_fraction([C | _] = Cs0,
                    _St, Line, Col, _Toks, _B, Ncs, BCs, _Us)
    when
        is_integer(C)
        andalso
        (C >= $a
         andalso
         C =< $z
         orelse
         C >= $A
         andalso
         C =< $Z
         orelse
         C =:= $_
         orelse
         C >= $0
         andalso
         C =< $9
         orelse
         C =:= $@
         orelse
         C >= $ß
         andalso
         C =< $ÿ
         andalso
         C =/= $÷
         andalso
         C >= $À
         andalso
         C =< $Þ
         andalso
         C =/= $×) ->
    scan_error({illegal, float},
               Line, Col, Line,
               incr_column(Col, length(Ncs) + length(BCs)),
               Cs0);
scan_based_fraction([] = Cs, St, Line, Col, Toks, B, Ncs, BCs, Us) ->
    {more,
     {Cs, St, Col, Toks, Line,
      {B, Ncs, BCs, Us},
      fun scan_based_fraction/6}};
scan_based_fraction(Cs, St, Line, Col, Toks, B, Ncs, BCs, Us) ->
    based_float_end(Cs, St, Line, Col, Toks, B, Ncs, BCs, [], Us).

scan_based_exponent_sign(Cs,
                         {erl_scan, _, _, _, _, _, _, _} = St,
                         Line, Col, Toks,
                         {B, Ncs, BCs, ECs, Us}) ->
    scan_based_exponent_sign(Cs, St, Line, Col, Toks, B, Ncs, BCs, ECs,
                             Us).

scan_based_exponent_sign([C | Cs],
                         St, Line, Col, Toks, B, Ncs, BCs, ECs, Us)
    when C =:= $+; C =:= $- ->
    scan_based_exponent(Cs, St, Line, Col, Toks, B, Ncs, BCs,
                        [C | ECs],
                        Us);
scan_based_exponent_sign([] = Cs,
                         St, Line, Col, Toks, B, Ncs, BCs, ECs, Us) ->
    {more,
     {Cs, St, Col, Toks, Line,
      {B, Ncs, BCs, ECs, Us},
      fun scan_based_exponent_sign/6}};
scan_based_exponent_sign(Cs, St, Line, Col, Toks, B, Ncs, BCs, ECs, Us) ->
    scan_based_exponent(Cs, St, Line, Col, Toks, B, Ncs, BCs, ECs, Us).

scan_based_exponent(Cs,
                    {erl_scan, _, _, _, _, _, _, _} = St,
                    Line, Col, Toks,
                    {B, Ncs, BCs, ECs, Us}) ->
    scan_based_exponent(Cs, St, Line, Col, Toks, B, Ncs, BCs, ECs, Us).

scan_based_exponent([C | Cs], St, Line, Col, Toks, B, Ncs, BCs, ECs, Us)
    when
        is_integer(C)
        andalso
        $0 =< C
        andalso
        C =< $9 ->
    scan_based_exponent(Cs, St, Line, Col, Toks, B, Ncs, BCs,
                        [C | ECs],
                        Us);
scan_based_exponent([$_, Next | Cs],
                    St, Line, Col, Toks, B, Ncs, BCs,
                    [Prev | _] = ECs,
                    _)
    when
        (is_integer(Next)
         andalso
         $0 =< Next
         andalso
         Next =< $9)
        andalso
        is_integer(Prev)
        andalso
        $0 =< Prev
        andalso
        Prev =< $9 ->
    scan_based_exponent(Cs, St, Line, Col, Toks, B, Ncs, BCs,
                        [Next, $_ | ECs],
                        with_underscore);
scan_based_exponent([$_] = Cs,
                    St, Line, Col, Toks, B, Ncs, BCs, ECs, Us) ->
    {more,
     {Cs, St, Col, Toks, Line,
      {B, Ncs, BCs, ECs, Us},
      fun scan_based_exponent/6}};
scan_based_exponent([] = Cs, St, Line, Col, Toks, B, Ncs, BCs, ECs, Us) ->
    {more,
     {Cs, St, Col, Toks, Line,
      {B, Ncs, BCs, ECs, Us},
      fun scan_based_exponent/6}};
scan_based_exponent(Cs, St, Line, Col, Toks, B, Ncs, BCs, ECs, Us) ->
    based_float_end(Cs, St, Line, Col, Toks, B, Ncs, BCs, ECs, Us).

based_float_end(Cs, St, Line, Col, Toks, 10, Ncs0, BCs, ECs, Us) ->
    Ncs = lists:reverse(Ncs0),
    Fcs = Ncs ++ lists:reverse(ECs),
    try list_to_float(remove_digit_separators(Fcs, Us)) of
        F ->
            Tcs = BCs ++ Fcs,
            tok3(Cs, St, Line, Col, Toks, float, Tcs, F)
    catch
        _:_ ->
            Ncol = incr_column(Col, length(Ncs) + length(BCs)),
            scan_error({illegal, float}, Line, Col, Line, Ncol, Cs)
    end;
based_float_end(Cs, St, Line, Col, Toks, B, Ncs0, BCs, ECs0, Us)
    when B =/= 10 ->
    ECs = lists:reverse(ECs0),
    Exp =
        case ECs of
            [] ->
                0;
            _ ->
                list_to_integer(remove_digit_separators(tl(ECs), Us))
        end,
    Tcs = BCs ++ lists:reverse(Ncs0) ++ ECs,
    Ncs =
        trim_float_zeros(lists:reverse(trim_float_zeros(remove_digit_separators(Ncs0,
                                                                                Us)))),
    FBits =
        (length(Ncs) - string:chr(Ncs, $.))
        *
        case B of
            2 ->
                1;
            16 ->
                4
        end,
    F = list_to_integer(lists:delete($., Ncs), B)
        *
        math:pow(2, Exp - FBits),
    tok3(Cs, St, Line, Col, Toks, float, Tcs, F).

trim_float_zeros([$0, $. | _] = Cs) ->
    Cs;
trim_float_zeros([$0 | Cs]) ->
    trim_float_zeros(Cs);
trim_float_zeros(Cs) ->
    Cs.

scan_fraction(Cs,
              {erl_scan, _, _, _, _, _, _, _} = St,
              Line, Col, Toks,
              {Ncs, Us}) ->
    scan_fraction(Cs, St, Line, Col, Toks, Ncs, Us).

scan_fraction([C | Cs], St, Line, Col, Toks, Ncs, Us)
    when
        is_integer(C)
        andalso
        $0 =< C
        andalso
        C =< $9 ->
    scan_fraction(Cs, St, Line, Col, Toks, [C | Ncs], Us);
scan_fraction([$_, Next | Cs],
              St, Line, Col, Toks,
              [Prev | _] = Ncs,
              _Us)
    when
        (is_integer(Next)
         andalso
         $0 =< Next
         andalso
         Next =< $9)
        andalso
        is_integer(Prev)
        andalso
        $0 =< Prev
        andalso
        Prev =< $9 ->
    scan_fraction(Cs, St, Line, Col, Toks,
                  [Next, $_ | Ncs],
                  with_underscore);
scan_fraction([$_] = Cs, St, Line, Col, Toks, Ncs, Us) ->
    {more, {Cs, St, Col, Toks, Line, {Ncs, Us}, fun scan_fraction/6}};
scan_fraction([E | Cs], St, Line, Col, Toks, Ncs, Us)
    when E =:= $e; E =:= $E ->
    scan_exponent_sign(Cs, St, Line, Col, Toks, [E | Ncs], Us);
scan_fraction([C | _] = Cs0, _St, Line, Col, _Toks, Ncs, _Us)
    when
        is_integer(C)
        andalso
        (C >= $a
         andalso
         C =< $z
         orelse
         C >= $A
         andalso
         C =< $Z
         orelse
         C =:= $_
         orelse
         C >= $0
         andalso
         C =< $9
         orelse
         C =:= $@
         orelse
         C >= $ß
         andalso
         C =< $ÿ
         andalso
         C =/= $÷
         andalso
         C >= $À
         andalso
         C =< $Þ
         andalso
         C =/= $×) ->
    scan_error({illegal, float},
               Line, Col, Line,
               incr_column(Col, length(Ncs)),
               Cs0);
scan_fraction([] = Cs, St, Line, Col, Toks, Ncs, Us) ->
    {more, {Cs, St, Col, Toks, Line, {Ncs, Us}, fun scan_fraction/6}};
scan_fraction(Cs, St, Line, Col, Toks, Ncs, Us) ->
    float_end(Cs, St, Line, Col, Toks, Ncs, Us).

scan_exponent_sign(Cs,
                   {erl_scan, _, _, _, _, _, _, _} = St,
                   Line, Col, Toks,
                   {Ncs, Us}) ->
    scan_exponent_sign(Cs, St, Line, Col, Toks, Ncs, Us).

scan_exponent_sign([C | Cs], St, Line, Col, Toks, Ncs, Us)
    when C =:= $+; C =:= $- ->
    scan_exponent(Cs, St, Line, Col, Toks, [C | Ncs], Us);
scan_exponent_sign([] = Cs, St, Line, Col, Toks, Ncs, Us) ->
    {more,
     {Cs, St, Col, Toks, Line, {Ncs, Us}, fun scan_exponent_sign/6}};
scan_exponent_sign(Cs, St, Line, Col, Toks, Ncs, Us) ->
    scan_exponent(Cs, St, Line, Col, Toks, Ncs, Us).

scan_exponent(Cs,
              {erl_scan, _, _, _, _, _, _, _} = St,
              Line, Col, Toks,
              {Ncs, Us}) ->
    scan_exponent(Cs, St, Line, Col, Toks, Ncs, Us).

scan_exponent([C | Cs], St, Line, Col, Toks, Ncs, Us)
    when
        is_integer(C)
        andalso
        $0 =< C
        andalso
        C =< $9 ->
    scan_exponent(Cs, St, Line, Col, Toks, [C | Ncs], Us);
scan_exponent([$_, Next | Cs], St, Line, Col, Toks, [Prev | _] = Ncs, _)
    when
        (is_integer(Next)
         andalso
         $0 =< Next
         andalso
         Next =< $9)
        andalso
        is_integer(Prev)
        andalso
        $0 =< Prev
        andalso
        Prev =< $9 ->
    scan_exponent(Cs, St, Line, Col, Toks,
                  [Next, $_ | Ncs],
                  with_underscore);
scan_exponent([$_] = Cs, St, Line, Col, Toks, Ncs, Us) ->
    {more, {Cs, St, Col, Toks, Line, {Ncs, Us}, fun scan_exponent/6}};
scan_exponent([C | _] = Cs0, _St, Line, Col, _Toks, Ncs, _Us)
    when
        is_integer(C)
        andalso
        (C >= $a
         andalso
         C =< $z
         orelse
         C >= $A
         andalso
         C =< $Z
         orelse
         C =:= $_
         orelse
         C >= $0
         andalso
         C =< $9
         orelse
         C =:= $@
         orelse
         C >= $ß
         andalso
         C =< $ÿ
         andalso
         C =/= $÷
         andalso
         C >= $À
         andalso
         C =< $Þ
         andalso
         C =/= $×) ->
    scan_error({illegal, float},
               Line, Col, Line,
               incr_column(Col, length(Ncs)),
               Cs0);
scan_exponent([] = Cs, St, Line, Col, Toks, Ncs, Us) ->
    {more, {Cs, St, Col, Toks, Line, {Ncs, Us}, fun scan_exponent/6}};
scan_exponent(Cs, St, Line, Col, Toks, Ncs, Us) ->
    float_end(Cs, St, Line, Col, Toks, Ncs, Us).

float_end(Cs, St, Line, Col, Toks, Ncs0, Us) ->
    Ncs = lists:reverse(Ncs0),
    try list_to_float(remove_digit_separators(Ncs, Us)) of
        F ->
            tok3(Cs, St, Line, Col, Toks, float, Ncs, F)
    catch
        _:_ ->
            Ncol = incr_column(Col, length(Ncs)),
            scan_error({illegal, float}, Line, Col, Line, Ncol, Cs)
    end.

skip_comment_fun(Cs,
                 {erl_scan, _, _, _, _, _, _, _} = St,
                 Line, Col, Toks, N) ->
    skip_comment(Cs, St, Line, Col, Toks, N).

skip_comment([C | Cs], St, Line, Col, Toks, N)
    when
        C =/= $\n,
        is_integer(C)
        andalso
        0 =< C
        andalso
        C < 1114112 ->
    case
        is_integer(C)
        andalso
        (C >= 0
         andalso
         C < 55296
         orelse
         C > 57343
         andalso
         C < 65534
         orelse
         C > 65535
         andalso
         C =< 1114111)
    of
        true ->
            skip_comment(Cs, St, Line, Col, Toks, N + 1);
        false ->
            Ncol = incr_column(Col, N + 1),
            scan_error({illegal, character}, Line, Col, Line, Ncol, Cs)
    end;
skip_comment([] = Cs, St, Line, Col, Toks, N) ->
    {more, {Cs, St, Col, Toks, Line, N, fun skip_comment_fun/6}};
skip_comment(Cs, St, Line, Col, Toks, N) ->
    scan1(Cs, St, Line, incr_column(Col, N), Toks).

scan_comment_fun(Cs,
                 {erl_scan, _, _, _, _, _, _, _} = St,
                 Line, Col, Toks, Ncs) ->
    scan_comment(Cs, St, Line, Col, Toks, Ncs).

scan_comment([C | Cs], St, Line, Col, Toks, Ncs)
    when
        C =/= $\n,
        is_integer(C)
        andalso
        0 =< C
        andalso
        C < 1114112 ->
    case
        is_integer(C)
        andalso
        (C >= 0
         andalso
         C < 55296
         orelse
         C > 57343
         andalso
         C < 65534
         orelse
         C > 65535
         andalso
         C =< 1114111)
    of
        true ->
            scan_comment(Cs, St, Line, Col, Toks, [C | Ncs]);
        false ->
            Ncol = incr_column(Col, length(Ncs) + 1),
            scan_error({illegal, character}, Line, Col, Line, Ncol, Cs)
    end;
scan_comment([] = Cs, St, Line, Col, Toks, Ncs) ->
    {more, {Cs, St, Col, Toks, Line, Ncs, fun scan_comment_fun/6}};
scan_comment(Cs, St, Line, Col, Toks, Ncs0) ->
    Ncs = lists:reverse(Ncs0),
    tok3(Cs, St, Line, Col, Toks, comment, Ncs, Ncs).

scan_check("%%ssa%" ++ Cs, St, Line, Col, Toks, _Ncs) ->
    scan_check1(Cs, St, Line, Toks, Col, 7);
scan_check("%%ssa" = Cs, St, Line, Col, Toks, Ncs) ->
    {more, {Cs, St, Col, Toks, Line, Ncs, fun scan_check/6}};
scan_check("%%ss" = Cs, St, Line, Col, Toks, Ncs) ->
    {more, {Cs, St, Col, Toks, Line, Ncs, fun scan_check/6}};
scan_check("%%s" = Cs, St, Line, Col, Toks, Ncs) ->
    {more, {Cs, St, Col, Toks, Line, Ncs, fun scan_check/6}};
scan_check("%%" = Cs, St, Line, Col, Toks, Ncs) ->
    {more, {Cs, St, Col, Toks, Line, Ncs, fun scan_check/6}};
scan_check("%" = Cs, St, Line, Col, Toks, Ncs) ->
    {more, {Cs, St, Col, Toks, Line, Ncs, fun scan_check/6}};
scan_check("%ssa%" ++ Cs, St, Line, Col, Toks, _Ncs) ->
    scan_check1(Cs, St, Line, Toks, Col, 6);
scan_check("%ssa" = Cs, St, Line, Col, Toks, Ncs) ->
    {more, {Cs, St, Col, Toks, Line, Ncs, fun scan_check/6}};
scan_check("%ss" = Cs, St, Line, Col, Toks, Ncs) ->
    {more, {Cs, St, Col, Toks, Line, Ncs, fun scan_check/6}};
scan_check("%s" = Cs, St, Line, Col, Toks, Ncs) ->
    {more, {Cs, St, Col, Toks, Line, Ncs, fun scan_check/6}};
scan_check("ssa%" ++ Cs, St, Line, Col, Toks, _Ncs) ->
    scan_check1(Cs, St, Line, Toks, Col, 5);
scan_check("ssa" = Cs, St, Line, Col, Toks, Ncs) ->
    {more, {Cs, St, Col, Toks, Line, Ncs, fun scan_check/6}};
scan_check("ss" = Cs, St, Line, Col, Toks, Ncs) ->
    {more, {Cs, St, Col, Toks, Line, Ncs, fun scan_check/6}};
scan_check("s" = Cs, St, Line, Col, Toks, Ncs) ->
    {more, {Cs, St, Col, Toks, Line, Ncs, fun scan_check/6}};
scan_check([] = Cs, St, Line, Col, Toks, Ncs) ->
    {more, {Cs, St, Col, Toks, Line, Ncs, fun scan_check/6}};
scan_check(Cs,
           St = {erl_scan, _, _, _, true, _, _, _},
           Line, Col, Toks, Ncs) ->
    scan_comment(Cs, St, Line, Col, Toks, Ncs);
scan_check(Cs, St, Line, Col, Toks, _Ncs) ->
    skip_comment(Cs, St, Line, Col, Toks, 1).

scan_check1(Cs,
            St = {erl_scan, _, _, _, _, _, _, true},
            Line, Toks, Col, NoofCols) ->
    scan1(Cs, St, Line, incr_column(Col, NoofCols), Toks);
scan_check1(Cs, St, Line, Toks, Col, NoofCols) ->
    tok2(Cs,
         begin
             REC47 = St,
             case REC47 of
                 {erl_scan, _, _, _, _, _, _, _} ->
                     setelement(8, REC47, true);
                 _ ->
                     error({badrecord, REC47})
             end
         end,
         Line, Col, Toks,
         "%ssa%",
         '%ssa%', NoofCols).

tok2(Cs,
     {erl_scan, _, _, _, _, false, _, _} = St,
     Line,
     no_col = Col,
     Toks, _Wcs, P) ->
    scan1(Cs, St, Line, Col, [{P, anno(Line)} | Toks]);
tok2(Cs, {erl_scan, _, _, _, _, _, _, _} = St, Line, Col, Toks, Wcs, P) ->
    Anno =
        anno(Line, Col, St,
             case
                 case St of
                     {erl_scan, _, _, _, _, REC48, _, _} ->
                         REC48;
                     REC48 ->
                         error({badrecord, REC48})
                 end
                 andalso
                 case St of
                     {erl_scan, _, REC49, _, _, _, _, _} ->
                         REC49;
                     REC49 ->
                         error({badrecord, REC49})
                 end(P, begin Wcs end)
             of
                 true ->
                     begin Wcs end;
                 false ->
                     []
             end),
    scan1(Cs, St, Line,
          incr_column(Col, length(Wcs)),
          [{P, Anno} | Toks]).

tok2(Cs,
     {erl_scan, _, _, _, _, false, _, _} = St,
     Line,
     no_col = Col,
     Toks, _Wcs, P, _N) ->
    scan1(Cs, St, Line, Col, [{P, anno(Line)} | Toks]);
tok2(Cs,
     {erl_scan, _, _, _, _, _, _, _} = St,
     Line, Col, Toks, Wcs, P, N) ->
    Anno =
        anno(Line, Col, St,
             case
                 case St of
                     {erl_scan, _, _, _, _, REC50, _, _} ->
                         REC50;
                     REC50 ->
                         error({badrecord, REC50})
                 end
                 andalso
                 case St of
                     {erl_scan, _, REC51, _, _, _, _, _} ->
                         REC51;
                     REC51 ->
                         error({badrecord, REC51})
                 end(P, begin Wcs end)
             of
                 true ->
                     begin Wcs end;
                 false ->
                     []
             end),
    scan1(Cs, St, Line, incr_column(Col, N), [{P, Anno} | Toks]).

tok3(Cs,
     {erl_scan, _, _, _, _, false, _, _} = St,
     Line,
     no_col = Col,
     Toks, Item, _S, Sym) ->
    scan1(Cs, St, Line, Col, [{Item, anno(Line), Sym} | Toks]);
tok3(Cs,
     {erl_scan, _, _, _, _, _, _, _} = St,
     Line, Col, Toks, Item, String, Sym) ->
    Token =
        {Item,
         anno(Line, Col, St,
              case
                  case St of
                      {erl_scan, _, _, _, _, REC52, _, _} ->
                          REC52;
                      REC52 ->
                          error({badrecord, REC52})
                  end
                  andalso
                  case St of
                      {erl_scan, _, REC53, _, _, _, _, _} ->
                          REC53;
                      REC53 ->
                          error({badrecord, REC53})
                  end(Item, begin String end)
              of
                  true ->
                      begin String end;
                  false ->
                      []
              end),
         Sym},
    scan1(Cs, St, Line,
          incr_column(Col, length(String)),
          [Token | Toks]).

tok3(Cs,
     {erl_scan, _, _, _, _, false, _, _} = St,
     Line,
     no_col = Col,
     Toks, Item, _String, Sym, _Length) ->
    scan1(Cs, St, Line, Col, [{Item, anno(Line), Sym} | Toks]);
tok3(Cs,
     {erl_scan, _, _, _, _, _, _, _} = St,
     Line, Col, Toks, Item, String, Sym, Length) ->
    Token =
        {Item,
         anno(Line, Col, St,
              case
                  case St of
                      {erl_scan, _, _, _, _, REC54, _, _} ->
                          REC54;
                      REC54 ->
                          error({badrecord, REC54})
                  end
                  andalso
                  case St of
                      {erl_scan, _, REC55, _, _, _, _, _} ->
                          REC55;
                      REC55 ->
                          error({badrecord, REC55})
                  end(Item, begin String end)
              of
                  true ->
                      begin String end;
                  false ->
                      []
              end),
         Sym},
    scan1(Cs, St, Line, incr_column(Col, Length), [Token | Toks]).

scan_error(Error, Line, Col, EndLine, EndCol, Rest) ->
    Loc = location(Line, Col),
    EndLoc = location(EndLine, EndCol),
    scan_error(Error, Loc, EndLoc, Rest).

scan_error(Error, ErrorLoc, EndLoc, Rest) ->
    {{error, {ErrorLoc, erl_scan, Error}, EndLoc}, Rest}.

-compile({inline, [{anno, 4}]}).

anno(Line, no_col, {erl_scan, _, _, _, _, false, _, _}, _String) ->
    anno(Line);
anno(Line, no_col, {erl_scan, _, _, _, _, true, _, _}, []) ->
    anno(Line);
anno(Line, no_col, {erl_scan, _, _, _, _, true, _, _}, String) ->
    Anno = anno(Line),
    erl_anno:set_text(String, Anno);
anno(Line, Col, {erl_scan, _, _, _, _, false, _, _}, _String) ->
    anno({Line, Col});
anno(Line, Col, {erl_scan, _, _, _, _, true, _, _}, []) ->
    anno({Line, Col});
anno(Line, Col, {erl_scan, _, _, _, _, true, _, _}, String) ->
    Anno = anno({Line, Col}),
    erl_anno:set_text(String, Anno).

location(Line, no_col) ->
    Line;
location(Line, Col) when is_integer(Col) ->
    {Line, Col}.

-compile({inline,
          [{anno, 1},
           {incr_column, 2},
           {new_column, 2},
           {int_column, 1}]}).

anno(Location) ->
    erl_anno:new(Location).

incr_column(Col, N) when is_integer(N) ->
    if
        Col =:= no_col ->
            Col;
        is_integer(Col) ->
            Col + N
    end.

new_column(no_col, no_col) ->
    no_col;
new_column(Col, Ncol) when is_integer(Ncol) ->
    if
        Col =:= no_col ->
            Col;
        is_integer(Col) ->
            Ncol
    end.

int_column(no_col) ->
    1;
int_column(Col) when is_integer(Col) ->
    Col.

lists_duplicate(0, _, L) ->
    L;
lists_duplicate(N, X, L) ->
    lists_duplicate(N - 1, X, [X | L]).

lists_foldl_reverse(Lists, Acc) ->
    lists:foldl(fun lists:reverse/2, Acc, Lists).

nl_spcs(2) ->
    "\n ";
nl_spcs(3) ->
    "\n  ";
nl_spcs(4) ->
    "\n   ";
nl_spcs(5) ->
    "\n    ";
nl_spcs(6) ->
    "\n     ";
nl_spcs(7) ->
    "\n      ";
nl_spcs(8) ->
    "\n       ";
nl_spcs(9) ->
    "\n        ";
nl_spcs(10) ->
    "\n         ";
nl_spcs(11) ->
    "\n          ";
nl_spcs(12) ->
    "\n           ";
nl_spcs(13) ->
    "\n            ";
nl_spcs(14) ->
    "\n             ";
nl_spcs(15) ->
    "\n              ";
nl_spcs(16) ->
    "\n               ";
nl_spcs(17) ->
    "\n                ".

spcs(1) ->
    " ";
spcs(2) ->
    "  ";
spcs(3) ->
    "   ";
spcs(4) ->
    "    ";
spcs(5) ->
    "     ";
spcs(6) ->
    "      ";
spcs(7) ->
    "       ";
spcs(8) ->
    "        ";
spcs(9) ->
    "         ";
spcs(10) ->
    "          ";
spcs(11) ->
    "           ";
spcs(12) ->
    "            ";
spcs(13) ->
    "             ";
spcs(14) ->
    "              ";
spcs(15) ->
    "               ";
spcs(16) ->
    "                ".

nl_tabs(2) ->
    "\n\t";
nl_tabs(3) ->
    "\n\t\t";
nl_tabs(4) ->
    "\n\t\t\t";
nl_tabs(5) ->
    "\n\t\t\t\t";
nl_tabs(6) ->
    "\n\t\t\t\t\t";
nl_tabs(7) ->
    "\n\t\t\t\t\t\t";
nl_tabs(8) ->
    "\n\t\t\t\t\t\t\t";
nl_tabs(9) ->
    "\n\t\t\t\t\t\t\t\t";
nl_tabs(10) ->
    "\n\t\t\t\t\t\t\t\t\t";
nl_tabs(11) ->
    "\n\t\t\t\t\t\t\t\t\t\t".

tabs(1) ->
    "\t";
tabs(2) ->
    "\t\t";
tabs(3) ->
    "\t\t\t";
tabs(4) ->
    "\t\t\t\t";
tabs(5) ->
    "\t\t\t\t\t";
tabs(6) ->
    "\t\t\t\t\t\t";
tabs(7) ->
    "\t\t\t\t\t\t\t";
tabs(8) ->
    "\t\t\t\t\t\t\t\t";
tabs(9) ->
    "\t\t\t\t\t\t\t\t\t";
tabs(10) ->
    "\t\t\t\t\t\t\t\t\t\t".

-spec reserved_word(Atom :: atom()) -> boolean().

reserved_word(Atom) ->
    case f_reserved_word(Atom) of
        true ->
            true;
        false ->
            lists:member(Atom, erl_features:keywords())
    end.

f_reserved_word('after') ->
    true;
f_reserved_word('begin') ->
    true;
f_reserved_word('case') ->
    true;
f_reserved_word('try') ->
    true;
f_reserved_word('cond') ->
    true;
f_reserved_word('catch') ->
    true;
f_reserved_word('andalso') ->
    true;
f_reserved_word('orelse') ->
    true;
f_reserved_word('end') ->
    true;
f_reserved_word('fun') ->
    true;
f_reserved_word('if') ->
    true;
f_reserved_word('let') ->
    true;
f_reserved_word('of') ->
    true;
f_reserved_word('receive') ->
    true;
f_reserved_word('when') ->
    true;
f_reserved_word('bnot') ->
    true;
f_reserved_word('not') ->
    true;
f_reserved_word('div') ->
    true;
f_reserved_word('rem') ->
    true;
f_reserved_word('band') ->
    true;
f_reserved_word('and') ->
    true;
f_reserved_word('bor') ->
    true;
f_reserved_word('bxor') ->
    true;
f_reserved_word('bsl') ->
    true;
f_reserved_word('bsr') ->
    true;
f_reserved_word('or') ->
    true;
f_reserved_word('xor') ->
    true;
f_reserved_word(_) ->
    false.



