-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.1.2/src/shell_docs.erl",
      1).

-module(shell_docs).

-file("/buildroot/otp/Erlang ∅⊤℞/lib/kernel-10.1.1/include/eep48.hrl",
      1).

-record(docs_v1,{anno,
                 beam_language = erlang,
                 format = <<"application/erlang+html">>,
                 module_doc,
                 metadata = #{otp_doc_vsn => {1, 0, 0}},
                 docs}).

-record(docs_v1_entry,{kind_name_arity, anno, signature, doc, metadata}).

-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.1.2/src/shell_docs.erl",
      64).

-export([render/2,render/3,render/4,render/5]).

-export([render_type/2,render_type/3,render_type/4,render_type/5]).

-export([render_callback/2,
         render_callback/3,
         render_callback/4,
         render_callback/5]).

-export([validate/1,normalize/1,supported_tags/0]).

-export([get_doc/1,get_doc/3,get_type_doc/3,get_callback_doc/3]).

-export_type([chunk_elements/0,chunk_element_attr/0]).

-record(config,{docs, module, encoding, ansi,
                io_opts = io:getopts(),
                columns}).

-type docs_v1() :: #docs_v1{}.

-type config() ::
          #{encoding => unicode | latin1,
            columns => pos_integer(),
            ansi => boolean()}.

-type chunk_elements() :: [chunk_element()].

-type chunk_element() ::
          {chunk_element_type(),
           chunk_element_attrs(),
           chunk_elements()} |
          binary().

-type chunk_element_attrs() :: [chunk_element_attr()].

-type chunk_element_attr() :: {atom(), unicode:chardata()}.

-type chunk_element_type() ::
          chunk_element_inline_type() | chunk_element_block_type().

-type chunk_element_inline_type() :: a | code | em | strong | i | b.

-type chunk_element_block_type() ::
          p | 'div' | blockquote | br | pre | ul | ol | li | dl | dt |
          dd | h1 | h2 | h3 | h4 | h5 | h6.

-spec supported_tags() -> [chunk_element_type()].

supported_tags() ->
    [a, p, 'div', blockquote, br, h1, h2, h3, h4, h5, h6, i, b, em,
     strong, pre, code, ul, ol, li, dl, dt, dd].

-spec validate(Module) -> ok when Module :: module() | docs_v1().

validate(Module) when is_atom(Module) ->
    {ok, Doc} = code:get_doc(Module),
    validate(Doc);
validate({docs_v1, _, _,
          <<"application/erlang+html">>,
          MDocs, _, AllDocs}) ->
    AE =
        lists:sort([a, p, 'div', blockquote, br, h1, h2, h3, h4, h5, h6,
                    i, b, em, strong, pre, code, ul, ol, li, dl, dt, dd]),
    AE =
        lists:sort([i, b, em, strong, code, a]
                   ++
                   [p, 'div', pre, blockquote, br, ul, ol, li, dl, dt,
                    dd, h1, h2, h3, h4, h5, h6]),
    true =
        lists:all(fun(Elem) ->
                         Elem =:= a
                         orelse
                         Elem =:= code
                         orelse
                         Elem =:= i
                         orelse
                         Elem =:= em
                         orelse
                         Elem =:= b
                         orelse
                         Elem =:= strong
                  end,
                  [i, b, em, strong, code, a]),
    true =
        lists:all(fun(Elem) ->
                         not (Elem =:= a
                              orelse
                              Elem =:= code
                              orelse
                              Elem =:= i
                              orelse
                              Elem =:= em
                              orelse
                              Elem =:= b
                              orelse
                              Elem =:= strong)
                  end,
                  [p, 'div', pre, blockquote, br, ul, ol, li, dl, dt,
                   dd, h1, h2, h3, h4, h5, h6]),
    _ = validate_docs(MDocs),
    lists:foreach(fun({_, _Anno, Sig, Docs, _Meta}) ->
                         case lists:all(fun erlang:is_binary/1, Sig) of
                             false ->
                                 throw({invalid_signature, Sig});
                             true ->
                                 ok
                         end,
                         validate_docs(Docs)
                  end,
                  AllDocs),
    ok.

validate_docs(hidden) ->
    ok;
validate_docs(none) ->
    ok;
validate_docs(#{} = MDocs) ->
    maps:foreach(fun(_Key, MDoc) ->
                        validate_docs(MDoc, [])
                 end,
                 MDocs),
    ok.

validate_docs([H | T], Path) when is_tuple(H) ->
    _ = validate_docs(H, Path),
    validate_docs(T, Path);
validate_docs({br, Attr, Content} = Br, Path) ->
    if
        Attr =:= [], Content =:= [] ->
            ok;
        true ->
            throw({content_to_allowed_in_br, Br, Path})
    end;
validate_docs({Tag, Attr, Content}, Path) ->
    case
        Tag =/= li
        andalso
        length(Path) > 0
        andalso
        (hd(Path) =:= ul
         orelse
         hd(Path) =:= ol)
    of
        true ->
            throw({only_li_allowed_within_ul_or_ol, Tag, Path});
        _ ->
            ok
    end,
    case
        Tag =/= dd
        andalso
        Tag =/= dt
        andalso
        length(Path) > 0
        andalso
        hd(Path) =:= dl
    of
        true ->
            throw({only_dd_or_dt_allowed_within_dl, Tag, Path});
        _ ->
            ok
    end,
    case
        Tag =:= p
        andalso
        lists:member(p, Path)
    of
        true ->
            throw({nested_p_not_allowed, Tag, Path});
        false ->
            ok
    end,
    case
        lists:member(pre, Path)
        orelse
        lists:any(fun(H) ->
                         lists:member(H, Path)
                  end,
                  [h1, h2, h3, h4, h5, h6])
    of
        true
            when
                not (Tag =:= a
                     orelse
                     Tag =:= code
                     orelse
                     Tag =:= i
                     orelse
                     Tag =:= em
                     orelse
                     Tag =:= b
                     orelse
                     Tag =:= strong) ->
            throw({cannot_put_block_tag_within_pre, Tag, Path});
        _ ->
            ok
    end,
    case
        lists:member(Tag,
                     [p, 'div', pre, blockquote, br, ul, ol, li, dl, dt,
                      dd, h1, h2, h3, h4, h5, h6])
    of
        true ->
            case
                lists:any(fun(P) ->
                                 P =:= a
                                 orelse
                                 P =:= code
                                 orelse
                                 P =:= i
                                 orelse
                                 P =:= em
                                 orelse
                                 P =:= b
                                 orelse
                                 P =:= strong
                          end,
                          Path)
            of
                true ->
                    throw({cannot_put_inline_tag_outside_block, Tag,
                           Path});
                false ->
                    ok
            end;
        false ->
            ok
    end,
    case
        lists:member(Tag,
                     [a, p, 'div', blockquote, br, h1, h2, h3, h4, h5,
                      h6, i, b, em, strong, pre, code, ul, ol, li, dl,
                      dt, dd])
    of
        false ->
            throw({invalid_tag, Tag, Path});
        true ->
            ok
    end,
    case
        lists:all(fun({Key, Val}) ->
                         is_atom(Key)
                         andalso
                         is_binary(Val)
                  end,
                  Attr)
    of
        true ->
            ok;
        false ->
            throw({invalid_attribute, {Tag, Attr}})
    end,
    validate_docs(Content, [Tag | Path]);
validate_docs([Chars | T], Path) when is_binary(Chars) ->
    validate_docs(T, Path);
validate_docs([], _) ->
    ok.

-spec normalize(Docs) -> NormalizedDocs
                   when
                       Docs :: chunk_elements(),
                       NormalizedDocs :: chunk_elements().

normalize(Docs) ->
    Trimmed = normalize_trim(Docs, true),
    Space = normalize_space(Trimmed),
    normalize_paragraph(Space).

normalize_trim(Bin, true) when is_binary(Bin) ->
    NoSpace =
        re:replace(Bin,
                   "[^\\S\n]*\n+[^\\S\n]*",
                   "\n",
                   [unicode, global]),
    NoTab = re:replace(NoSpace, "\t", " ", [unicode, global]),
    NoNewLine = re:replace(NoTab, "\\v", " ", [unicode, global]),
    re:replace(NoNewLine,
               "\\s+",
               " ",
               [unicode, global, {return, binary}]);
normalize_trim(Bin, false) when is_binary(Bin) ->
    Bin;
normalize_trim([{code, Attr, Content} | T], false) ->
    TrimmedContent =
        case lists:reverse(normalize_trim(Content, false)) of
            [Bin | Rest] when is_binary(Bin) ->
                lists:reverse([string:trim(Bin, trailing) | Rest]);
            Else ->
                lists:reverse(Else)
        end,
    [{code, Attr, TrimmedContent} | normalize_trim(T, false)];
normalize_trim([{pre, Attr, Content} | T], Trim) ->
    [{pre, Attr, normalize_trim(Content, false)} |
     normalize_trim(T, Trim)];
normalize_trim([{Tag, Attr, Content} | T], Trim) ->
    [{Tag, Attr, normalize_trim(Content, Trim)} |
     normalize_trim(T, Trim)];
normalize_trim([<<>> | T], Trim) ->
    normalize_trim(T, Trim);
normalize_trim([B1, B2 | T], Trim) when is_binary(B1), is_binary(B2) ->
    normalize_trim([<<B1/binary,B2/binary>> | T], Trim);
normalize_trim([H | T], Trim) ->
    [normalize_trim(H, Trim) | normalize_trim(T, Trim)];
normalize_trim([], _Trim) ->
    [].

normalize_space([{Pre, Attr, Content} | T]) when Pre =:= pre ->
    [{Pre, Attr, trim_first_and_last(Content, $\n)} |
     normalize_space(T)];
normalize_space([{Block, Attr, Content} | T])
    when
        not (Block =:= a
             orelse
             Block =:= code
             orelse
             Block =:= i
             orelse
             Block =:= em
             orelse
             Block =:= b
             orelse
             Block =:= strong) ->
    [{Block, Attr, normalize_space(Content)} | normalize_space(T)];
normalize_space([]) ->
    [];
normalize_space(Elems) ->
    {InlineElems, T} =
        lists:splitwith(fun(E) ->
                               is_binary(E)
                               orelse
                               is_tuple(E)
                               andalso
                               (element(1, E) =:= a
                                orelse
                                element(1, E) =:= code
                                orelse
                                element(1, E) =:= i
                                orelse
                                element(1, E) =:= em
                                orelse
                                element(1, E) =:= b
                                orelse
                                element(1, E) =:= strong)
                        end,
                        Elems),
    trim_inline(InlineElems) ++ normalize_space(T).

trim_inline(Content) ->
    {NewContent, _} = trim_inline(Content, false),
    trim_first_and_last(NewContent, $\s).

trim_inline([Bin | T], false) when is_binary(Bin) ->
    LastElem = binary:at(Bin, byte_size(Bin) - 1),
    case trim_inline(T, LastElem =:= $\s) of
        {[B2 | NewT], NewState} when is_binary(B2) ->
            {[<<Bin/binary,B2/binary>> | NewT], NewState};
        {NewT, NewState} ->
            {[Bin | NewT], NewState}
    end;
trim_inline([<<" ">> | T], true) ->
    trim_inline(T, true);
trim_inline([<<" ",Bin/binary>> | T], true) when is_binary(Bin) ->
    trim_inline([Bin | T], true);
trim_inline([Bin | T], true) when is_binary(Bin) ->
    trim_inline([Bin | T], false);
trim_inline([{Elem, Attr, Content} | T], TrimSpace) ->
    {NewContent, ContentTrimSpace} = trim_inline(Content, TrimSpace),
    {NewT, TTrimSpace} = trim_inline(T, ContentTrimSpace),
    IsAnchor =
        Elem =:= a
        andalso
        proplists:is_defined(id, Attr),
    if
        NewContent == []
        andalso
        not IsAnchor ->
            {NewT, TTrimSpace};
        true ->
            {[{Elem, Attr, NewContent} | NewT], TTrimSpace}
    end;
trim_inline([], TrimSpace) ->
    {[], TrimSpace}.

trim_first_and_last(Content, What) when What < 256 ->
    {FirstTrimmed, _} = trim_first(Content, What),
    {LastTrimmed, _} = trim_last(FirstTrimmed, What),
    LastTrimmed.

trim_first([Bin | T], What) when is_binary(Bin) ->
    case Bin of
        <<What>> ->
            {T, true};
        <<What,NewBin/binary>> ->
            {[NewBin | T], true};
        Bin ->
            {[Bin | T], true}
    end;
trim_first([{Elem, Attr, Content} = Tag | T], What) ->
    case trim_first(Content, What) of
        {[], true} ->
            {T, true};
        {NewContent, true} ->
            {[{Elem, Attr, NewContent} | T], true};
        {Content, false} ->
            {NewT, NewState} = trim_first(T, What),
            {[Tag | NewT], NewState}
    end;
trim_first([], _What) ->
    {[], false}.

trim_last([Bin | T], What) when is_binary(Bin) ->
    case trim_last(T, What) of
        {NewT, true} ->
            {[Bin | NewT], true};
        {T, false} ->
            PreSz = byte_size(Bin) - 1,
            case Bin of
                <<What>> ->
                    {T, true};
                <<NewBin:PreSz/binary,What>> ->
                    {[NewBin | T], true};
                Bin ->
                    {[Bin | T], true}
            end
    end;
trim_last([{Elem, Attr, Content} = Tag | T], What) ->
    case trim_last(T, What) of
        {NewT, true} ->
            {[Tag | NewT], true};
        {T, false} ->
            case trim_last(Content, What) of
                {[], true} ->
                    {[], true};
                {NewContent, NewState} ->
                    {[{Elem, Attr, NewContent} | T], NewState}
            end
    end;
trim_last([], _What) ->
    {[], false}.

normalize_paragraph([{Tag, _, _} = Block | T])
    when
        not (Tag =:= a
             orelse
             Tag =:= code
             orelse
             Tag =:= i
             orelse
             Tag =:= em
             orelse
             Tag =:= b
             orelse
             Tag =:= strong) ->
    [Block | normalize_paragraph(T)];
normalize_paragraph([{_, _, []} = NoContent | T]) ->
    [NoContent | normalize_paragraph(T)];
normalize_paragraph([]) ->
    [];
normalize_paragraph(Elems) ->
    case
        lists:splitwith(fun(E) ->
                               is_binary(E)
                               orelse
                               (element(1, E) =:= a
                                orelse
                                element(1, E) =:= code
                                orelse
                                element(1, E) =:= i
                                orelse
                                element(1, E) =:= em
                                orelse
                                element(1, E) =:= b
                                orelse
                                element(1, E) =:= strong)
                               andalso
                               element(3, E) =/= []
                        end,
                        Elems)
    of
        {NotP, P} ->
            [{p, [], NotP} | normalize_paragraph(P)]
    end.

-spec get_doc(Module :: module()) -> chunk_elements().

get_doc(Module) ->
    {ok, {docs_v1, _, _, _, ModuleDoc, _, _} = D} = code:get_doc(Module),
    get_local_doc(Module, ModuleDoc, D).

-spec get_doc(Module :: module(), Function, Arity) ->
                 [{{function, Function, Arity},
                   Anno, Signature,
                   chunk_elements(),
                   Metadata}]
                 when
                     Function :: atom(),
                     Arity :: arity(),
                     Anno :: erl_anno:anno(),
                     Signature :: [binary()],
                     Metadata :: map().

get_doc(Module, Function, Arity) ->
    {ok, {docs_v1, _, _, _, _, _, Docs} = D} = code:get_doc(Module),
    Map =
        fun({F, A, S, Dc, M}) ->
               {F, A, S, get_local_doc(F, Dc, D), M}
        end,
    filtermap_mfa({function, Function, Arity}, Map, Docs).

-spec render(Module, Docs) -> unicode:chardata()
                when Module :: module(), Docs :: docs_v1().

render(Module, {docs_v1, _, _, _, _, _, _} = D) when is_atom(Module) ->
    render(Module, D, #{}).

config_module(Module, Config) when is_map(Config) ->
    Config#{module => Module};
config_module(Module, {config, _, _, _, _, _, _} = Config) ->
    begin
        REC0 = Config,
        case REC0 of
            {config, _, _, _, _, _, _} ->
                setelement(3, REC0, Module);
            _ ->
                error({badrecord, REC0})
        end
    end.

-spec render(Module, Docs, Config) -> unicode:chardata()
                when
                    Module :: module(),
                    Docs :: docs_v1(),
                    Config :: config();
            (Module, Function, Docs) -> Res
                when
                    Module :: module(),
                    Function :: atom(),
                    Docs :: docs_v1(),
                    Res ::
                        unicode:chardata() | {error, function_missing}.

render(Module, {docs_v1, _, _, _, ModuleDoc, _, _} = D, Config)
    when is_atom(Module), is_map(Config) ->
    Config0 = config_module(Module, Config),
    render_headers_and_docs([[{h2, [],
                               [<<"\t",(atom_to_binary(Module))/binary>>]}]],
                            get_local_doc(Module, ModuleDoc, D),
                            D, Config0);
render(_Module, Function, {docs_v1, _, _, _, _, _, _} = D) ->
    render(_Module, Function, D, #{}).

-spec render(Module, Function, Docs, Config) -> Res
                when
                    Module :: module(),
                    Function :: atom(),
                    Docs :: docs_v1(),
                    Config :: config(),
                    Res ::
                        unicode:chardata() | {error, function_missing};
            (Module, Function, Arity, Docs) -> Res
                when
                    Module :: module(),
                    Function :: atom(),
                    Arity :: arity(),
                    Docs :: docs_v1(),
                    Res ::
                        unicode:chardata() | {error, function_missing}.

render(Module, Function, D, Config)
    when is_atom(Module), is_atom(Function), is_map(Config) ->
    render_fn(Module, Function, none, D, Config);
render(_Module, Function, Arity, D) ->
    render_fn(_Module, Function, Arity, D, #{}).

-spec render(Module, Function, Arity, Docs, Config) -> Res
                when
                    Module :: module(),
                    Function :: atom(),
                    Arity :: arity(),
                    Docs :: docs_v1(),
                    Config :: config(),
                    Res ::
                        unicode:chardata() | {error, function_missing}.

render(Module, Function, Arity,
       {docs_v1, _, _, _, _, _, _} = DocV1,
       Config)
    when
        is_atom(Module),
        is_atom(Function),
        is_integer(Arity),
        is_map(Config) ->
    render_fn(Module, Function, Arity, DocV1, Config).

-spec render_fn(Module, Function, Arity, Docs, Config) -> Res
                   when
                       Module :: module(),
                       Function :: atom(),
                       Arity :: arity() | none,
                       Docs :: docs_v1(),
                       Config :: config(),
                       Res ::
                           unicode:chardata() |
                           {error, function_missing}.

render_fn(Module, Function, Arity, DocV1, Config) ->
    renderer(Config, {Module, function, Function, Arity}, DocV1).

renderer(Config0,
         {Module, Kind, Name, Arity},
         {docs_v1, _, _, _, _, _, Docs} = DocV1) ->
    Config = config_module(Module, Config0),
    FnFunctions = filter_mfa({Kind, Name, Arity}, Docs),
    Fn = dispatch_renderer(Kind),
    Fn(FnFunctions, DocV1, Config).

dispatch_renderer(function) ->
    fun render_function/3;
dispatch_renderer(type) ->
    fun render_typecb_docs/3;
dispatch_renderer(callback) ->
    fun render_typecb_docs/3.

-spec get_type_doc(Module :: module(), Type :: atom(), Arity :: arity()) ->
                      [{{type, Type, Arity},
                        Anno, Signature,
                        chunk_elements(),
                        Metadata}]
                      when
                          Type :: atom(),
                          Arity :: arity(),
                          Anno :: erl_anno:anno(),
                          Signature :: [binary()],
                          Metadata :: map().

get_type_doc(Module, Type, Arity) ->
    {ok, {docs_v1, _, _, _, _, _, Docs} = D} = code:get_doc(Module),
    Map =
        fun({F, A, S, Dc, M}) ->
               {F, A, S, get_local_doc(F, Dc, D), M}
        end,
    filtermap_mfa({type, Type, Arity}, Map, Docs).

-spec render_type(Module, Docs) -> unicode:chardata()
                     when Module :: module(), Docs :: docs_v1().

render_type(Module, D) ->
    render_type(Module, D, #{}).

extract_type_specs(Module) ->
    maybe
        Path = find_path(Module),
        true ?= non_existing =/= Path,
        {ok, {Module, [{abstract_code, {raw_abstract_v1, AST}}]}} ?=
            beam_lib:chunks(Path, [abstract_code]),
        Acc = #{type => #{}, function => #{}, callback => #{}},
        lists:foldl(fun filter_exported_types/2, Acc, AST)
    else
        false ->
            #{};
        {ok, {Module, [{abstract_code, no_abstract_code}]}} ->
            #{};
        {error, beam_lib, {file_error, _, _}} ->
            #{}
    end.

-spec find_path(Mod :: module()) -> non_existing | file:filename_all().

find_path(Module) ->
    maybe
        preloaded ?= code:which(Module),
        PreloadedPath = filename:join(code:lib_dir(erts), "ebin"),
        filename:join(PreloadedPath, atom_to_list(Module) ++ ".beam")
    else
        Other ->
            Other
    end.

filter_exported_types({attribute, _An, Type, {Name, _Rhs, Lhs}} = Spec,
                      #{type := Types} = Acc)
    when Type =:= type; Type =:= opaque ->
    Acc#{type => Types#{{Name, length(Lhs)} => Spec}};
filter_exported_types({attribute, _An, spec, {{Name, Arity}, _}} = Spec,
                      #{function := Types} = Acc) ->
    Acc#{function => Types#{{Name, Arity} => Spec}};
filter_exported_types({attribute, _An, spec,
                       {{_Mod, Name, _Arity}, Args}},
                      Acc) ->
    filter_exported_types({attribute, _An, spec, {{Name, _Arity}, Args}},
                          Acc);
filter_exported_types({attribute, _An, callback, {{Name, Arity}, _}} =
                          Spec,
                      #{callback := Types} = Acc) ->
    Acc#{function => Types#{{Name, Arity} => Spec}};
filter_exported_types(_, Acc) ->
    Acc.

-spec render_type(Module, Docs, Config) -> unicode:chardata()
                     when
                         Module :: module(),
                         Docs :: docs_v1(),
                         Config :: config();
                 (Module, Type, Docs) -> Res
                     when
                         Module :: module(),
                         Type :: atom(),
                         Docs :: docs_v1(),
                         Res ::
                             unicode:chardata() | {error, type_missing}.

render_type(Module, D = {docs_v1, _, _, _, _, _, _}, Config) ->
    render_signature_listing(Module, type, D, Config);
render_type(Module, Type, D = {docs_v1, _, _, _, _, _, _}) ->
    render_type(Module, Type, D, #{}).

-spec render_type(Module, Type, Docs, Config) -> Res
                     when
                         Module :: module(),
                         Type :: atom(),
                         Docs :: docs_v1(),
                         Config :: config(),
                         Res ::
                             unicode:chardata() | {error, type_missing};
                 (Module, Type, Arity, Docs) -> Res
                     when
                         Module :: module(),
                         Type :: atom(),
                         Arity :: arity(),
                         Docs :: docs_v1(),
                         Res ::
                             unicode:chardata() | {error, type_missing}.

render_type(_Module, Type, {docs_v1, _, _, _, _, _, _} = D, Config) ->
    render_typecb(_Module, Type, none, D, Config);
render_type(_Module, Type, Arity, {docs_v1, _, _, _, _, _, _} = D) ->
    render_typecb(_Module, Type, Arity, D, #{}).

-spec render_type(Module, Type, Arity, Docs, Config) -> Res
                     when
                         Module :: module(),
                         Type :: atom(),
                         Arity :: arity(),
                         Docs :: docs_v1(),
                         Config :: config(),
                         Res ::
                             unicode:chardata() | {error, type_missing}.

render_type(_Module, Type, Arity,
            {docs_v1, _, _, _, _, _, _} = D,
            Config) ->
    render_typecb(_Module, Type, Arity, D, Config).

render_typecb(_Module, Type, Arity,
              {docs_v1, _, _, _, _, _, _} = D,
              Config) ->
    renderer(Config, {_Module, type, Type, Arity}, D).

-spec get_callback_doc(Module :: module(),
                       Callback :: atom(),
                       Arity :: arity()) ->
                          [{{callback, Callback, Arity},
                            Anno, Signature,
                            chunk_elements(),
                            Metadata}]
                          when
                              Callback :: atom(),
                              Arity :: arity(),
                              Anno :: erl_anno:anno(),
                              Signature :: [binary()],
                              Metadata :: map().

get_callback_doc(Module, Callback, Arity) ->
    {ok, {docs_v1, _, _, _, _, _, Docs} = D} = code:get_doc(Module),
    Map =
        fun({F, A, S, Dc, M}) ->
               {F, A, S, get_local_doc(F, Dc, D), M}
        end,
    filtermap_mfa({callback, Callback, Arity}, Map, Docs).

-spec render_callback(Module, Docs) -> unicode:chardata()
                         when Module :: module(), Docs :: docs_v1().

render_callback(Module, D) ->
    render_callback(Module, D, #{}).

-spec render_callback(Module, Docs, Config) -> unicode:chardata()
                         when
                             Module :: module(),
                             Docs :: docs_v1(),
                             Config :: config();
                     (Module, Callback, Docs) -> Res
                         when
                             Module :: module(),
                             Callback :: atom(),
                             Docs :: docs_v1(),
                             Res ::
                                 unicode:chardata() |
                                 {error, callback_missing}.

render_callback(_Module, Callback, {docs_v1, _, _, _, _, _, _} = D) ->
    render_callback(_Module, Callback, D, #{});
render_callback(Module, D, Config) ->
    render_signature_listing(Module, callback, D, Config).

-spec render_callback(Module, Callback, Docs, Config) -> Res
                         when
                             Module :: module(),
                             Callback :: atom(),
                             Docs :: docs_v1(),
                             Config :: config(),
                             Res ::
                                 unicode:chardata() |
                                 {error, callback_missing};
                     (Module, Callback, Arity, Docs) -> Res
                         when
                             Module :: module(),
                             Callback :: atom(),
                             Arity :: arity(),
                             Docs :: docs_v1(),
                             Res ::
                                 unicode:chardata() |
                                 {error, callback_missing}.

render_callback(_Module, Callback, Arity,
                {docs_v1, _, _, _, _, _, _} = D) ->
    render_cb(_Module, Callback, Arity, D, #{});
render_callback(_Module, Callback,
                {docs_v1, _, _, _, _, _, _} = D,
                Config) ->
    render_cb(_Module, Callback, none, D, Config).

-spec render_callback(Module, Callback, Arity, Docs, Config) -> Res
                         when
                             Module :: module(),
                             Callback :: atom(),
                             Arity :: arity(),
                             Docs :: docs_v1(),
                             Config :: config(),
                             Res ::
                                 unicode:chardata() |
                                 {error, callback_missing}.

render_callback(_Module, Callback, Arity,
                {docs_v1, _, _, _, _, _, _} = D,
                Config) ->
    render_cb(_Module, Callback, Arity, D, Config).

render_cb(_Module, Type, Arity, {docs_v1, _, _, _, _, _, _} = D, Config) ->
    renderer(Config, {_Module, callback, Type, Arity}, D).

-spec get_local_doc(atom() | tuple() | binary(), Docs, D) -> term()
                       when
                           Docs :: map() | none | hiddden,
                           D :: docs_v1().

get_local_doc(MissingMod, Docs, D) when is_atom(MissingMod) ->
    get_local_doc(atom_to_binary(MissingMod), Docs, D);
get_local_doc({F, A}, Docs, D) ->
    get_local_doc(unicode:characters_to_binary(io_lib:format("~tp/~p",
                                                             [F, A])),
                  Docs, D);
get_local_doc({_Type, F, A}, Docs, D) ->
    get_local_doc({F, A}, Docs, D);
get_local_doc(_Missing, #{<<"en">> := Docs}, D) ->
    normalize_format(Docs, D);
get_local_doc(_Missing, ModuleDoc, D) when map_size(ModuleDoc) > 0 ->
    normalize_format(maps:get(hd(maps:keys(ModuleDoc)), ModuleDoc), D);
get_local_doc(Missing, hidden, _D) ->
    [{p, [],
      [<<"The documentation for ">>,
       Missing,
       <<" is hidden. This probably means that it is internal and not t"
         "o be used by other applications.">>]}];
get_local_doc(Missing, None, _D) when None =:= none; None =:= #{} ->
    [{p, [], [<<"There is no documentation for ">>, Missing]}].

normalize_format(Docs,
                 {docs_v1, _, _, <<"application/erlang+html">>, _, _, _}) ->
    normalize(Docs);
normalize_format(Docs, {docs_v1, _, _, <<"text/markdown">>, _, _, _})
    when is_binary(Docs) ->
    normalize(shell_docs_markdown:parse_md(Docs));
normalize_format(Docs, {docs_v1, _, _, <<"text/",_/binary>>, _, _, _})
    when is_binary(Docs) ->
    [{pre, [], [Docs]}].

render_function([], _D, _Config) ->
    {error, function_missing};
render_function(FDocs, D, Config) when is_map(Config) ->
    render_function(FDocs, D, init_config(D, Config));
render_function(FDocs, {docs_v1, _, _, _, _, _, Docs} = D, Config) ->
    GlobalSpecs =
        extract_type_specs(case Config of
                               {config, _, REC1, _, _, _, _} ->
                                   REC1;
                               REC1 ->
                                   error({badrecord, REC1})
                           end),
    Grouping =
        lists:foldr(fun({_Group, _Anno, _Sig, _Doc, #{equiv := Group}} =
                            Func,
                        Acc) ->
                           case lists:keytake(Group, 1, Acc) of
                               false ->
                                   [{Group,
                                     [Func],
                                     render_signature(Func, GlobalSpecs)} |
                                    Acc];
                               {value, {Group, Members, Sigs}, NewAcc} ->
                                   [{Group,
                                     [Func | Members],
                                     render_signature(Func, GlobalSpecs)
                                     ++
                                     Sigs} |
                                    NewAcc]
                           end;
                       ({Group, _Anno, _Sig, _Doc, _Meta} = Func, Acc) ->
                           [{Group,
                             [Func],
                             render_signature(Func, GlobalSpecs)} |
                            Acc]
                    end,
                    [],
                    lists:sort(fun(A, B) ->
                                      element(1, A) =< element(1, B)
                               end,
                               FDocs)),
    lists:map(fun({Group, Members, Signatures}) ->
                     Docs0 =
                         case
                             lists:search(fun({_, _, _, Doc, _}) ->
                                                 Doc =/= #{}
                                          end,
                                          Members)
                         of
                             {value, {_, _, _, Doc, _Meta}} ->
                                 Doc;
                             false ->
                                 case lists:keyfind(Group, 1, Docs) of
                                     false ->
                                         none;
                                     {_, _, _, Doc, _} ->
                                         Doc
                                 end
                         end,
                     render_headers_and_docs(Signatures,
                                             get_local_doc(Group, Docs0,
                                                           D),
                                             D, Config)
              end,
              Grouping).

render_signature({{_Type, _F, _A},
                  _Anno, _Sigs, _Docs,
                  #{signature := Specs} = Meta},
                 _ASTSpecs) ->
    lists:map(fun render_ast/1, Specs) ++ [render_meta(Meta)];
render_signature({{Type, F, A}, _Anno, Sigs, _Docs, Meta}, Specs) ->
    case maps:find({F, A}, maps:get(Type, Specs, #{})) of
        {ok, Spec} ->
            [render_ast(Spec) | render_meta(Meta)];
        error ->
            lists:map(fun(Sig) ->
                             {h2, [], [<<"  "/utf8,Sig/binary>>]}
                      end,
                      Sigs)
            ++
            [render_meta(Meta)]
    end.

render_ast(AST) ->
    PPSpec = erl_pp:attribute(AST, [{encoding, unicode}]),
    Spec =
        case AST of
            {_Attribute, _Line, opaque, _} ->
                hd(string:split(PPSpec, "::"));
            _ ->
                PPSpec
        end,
    BinSpec =
        unicode:characters_to_binary(string:trim(Spec, trailing, "\n")),
    {pre, [], [{strong, [], BinSpec}]}.

render_meta(M) ->
    case render_meta_(M) of
        [] ->
            [];
        Meta ->
            [[{dl, [], Meta}]]
    end.

render_meta_(#{since := Vsn} = M) ->
    [{dt, [], <<"Since">>},
     {dd, [], [unicode:characters_to_binary(Vsn)]} |
     render_meta_(maps:remove(since, M))];
render_meta_(#{deprecated := Depr} = M) ->
    [{dt, [], <<"Deprecated">>},
     {dd, [], [unicode:characters_to_binary(Depr)]} |
     render_meta_(maps:remove(deprecated, M))];
render_meta_(_) ->
    [].

render_headers_and_docs(Headers, DocContents, D, Config) ->
    render_headers_and_docs(Headers, DocContents,
                            init_config(D, Config)).

render_headers_and_docs(Headers, DocContents,
                        {config, _, _, _, _, _, _} = Config) ->
    ["\n",
     render_docs(lists:flatmap(fun(Header) ->
                                      [{br, [], []}, Header]
                               end,
                               Headers),
                 Config),
     "\n",
     render_docs(DocContents, 2, Config)].

render_signature_listing(Module, Type, D, Config) when is_map(Config) ->
    render_signature_listing(Module, Type, D, init_config(D, Config));
render_signature_listing(Module, Type,
                         {docs_v1, _, _, _, MD, _, Docs} = D,
                         {config, _, _, _, _, _, _} = Config) ->
    Config0 = config_module(Module, Config),
    Slogan =
        [{h2, [], [<<"\t",(atom_to_binary(Module))/binary>>]},
         {br, [], []}],
    case
        lists:filter(fun({{T, _, _}, _Anno, _Sig, _Doc, _Meta}) ->
                            Type =:= T
                            andalso
                            is_map(MD)
                     end,
                     Docs)
    of
        [] ->
            render_docs(Slogan
                        ++
                        [<<"There are no ",
                           (atom_to_binary(Type))/binary,
                           "s in this module">>],
                        D, Config0);
        Headers ->
            Specs = extract_type_specs(Module),
            Hdr =
                lists:flatmap(fun(Header) ->
                                     [{br, [], []},
                                      render_signature(Header, Specs)]
                              end,
                              Headers),
            render_docs(Slogan
                        ++
                        [{p, [],
                          [<<"These ",
                             (atom_to_binary(Type))/binary,
                             "s are documented in this module:">>]},
                         {br, [], []},
                         Hdr],
                        D, Config0)
    end.

render_typecb_docs([], _C) ->
    {error, type_missing};
render_typecb_docs(TypeCBs, {config, _, _, _, _, _, _} = C)
    when is_list(TypeCBs) ->
    [ 
     render_typecb_docs(TypeCB, C) ||
         TypeCB <- TypeCBs
    ];
render_typecb_docs({F, _, _Sig, Docs, _Meta} = TypeCB,
                   {config, D, Mod, _, _, _, _} = C) ->
    Specs = extract_type_specs(Mod),
    render_headers_and_docs(render_signature(TypeCB, Specs),
                            get_local_doc(F, Docs, D),
                            C).

render_typecb_docs(Docs, D, Config) ->
    render_typecb_docs(Docs, init_config(D, Config)).

render_docs(DocContents, {config, _, _, _, _, _, _} = Config) ->
    render_docs(DocContents, 0, Config).

render_docs(DocContents, {docs_v1, _, _, _, _, _, _} = D, Config)
    when true ->
    render_docs(DocContents, 0, init_config(D, Config));
render_docs(DocContents, Ind, D = {config, _, _, _, _, _, _})
    when is_integer(Ind) ->
    init_ansi(D),
    try
        {Doc, _} = trimnl(render_docs(DocContents, [], 0, Ind, D)),
        Doc
    after
        clean_ansi()
    end.

init_config(D, Config) when is_map(Config) ->
    DefaultOpts = io:getopts(),
    DefaultEncoding = proplists:get_value(encoding, DefaultOpts, latin1),
    Columns =
        case maps:find(columns, Config) of
            error ->
                get_columns();
            {ok, C} ->
                C
        end,
    {config, D,
     maps:get(module, Config, undefined),
     maps:get(encoding, Config, DefaultEncoding),
     maps:get(ansi, Config, undefined),
     io:getopts(),
     Columns};
init_config(D, Config) ->
    begin
        REC2 = Config,
        case REC2 of
            {config, _, _, _, _, _, _} ->
                setelement(2, REC2, D);
            _ ->
                error({badrecord, REC2})
        end
    end.

get_columns() ->
    case application:get_env(stdlib, shell_docs_columns) of
        {ok, C} when is_integer(C), C > 0 ->
            C;
        _ ->
            case io:columns() of
                {ok, C} ->
                    C;
                _ ->
                    80
            end
    end.

render_docs(Elems, State, Pos, Ind, D) when is_list(Elems) ->
    lists:mapfoldl(fun(Elem, P) ->
                          render_docs(Elem, State, P, Ind, D)
                   end,
                   Pos, Elems);
render_docs(Elem, State, Pos, Ind, D) ->
    render_element(Elem, State, Pos, Ind, D).

-spec render_element(Elem :: chunk_element(),
                     Stack :: [chunk_element_type()],
                     Pos :: non_neg_integer(),
                     Indent :: non_neg_integer(),
                     Config :: #config{}) ->
                        {unicode:chardata(), Pos :: non_neg_integer()}.

render_element({IgnoreMe, _, Content}, State, Pos, Ind, D)
    when IgnoreMe =:= a ->
    render_docs(Content, State, Pos, Ind, D);
render_element({h1, _, Content}, State, 0 = Pos, _Ind, D) ->
    trimnlnl(render_element({code, [], [{strong, [], Content}]},
                            State, Pos, 0, D));
render_element({h2, _, Content}, State, 0 = Pos, _Ind, D) ->
    trimnlnl(render_element({strong, [], Content}, State, Pos, 0, D));
render_element({H, _, Content}, State, Pos, _Ind, D)
    when
        Pos =< 2,
        H =:= h3
        orelse
        H =:= h4
        orelse
        H =:= h5
        orelse
        H =:= h6 ->
    trimnlnl(render_element({code, [], Content}, State, Pos, 2, D));
render_element({pre, _Attr, _Content} = E, State, Pos, Ind, D)
    when Pos > Ind ->
    {Docs, NewPos} = render_element(E, State, 0, Ind, D),
    {["\n\n", Docs], NewPos};
render_element({Elem, _Attr, _Content} = E, State, Pos, Ind, D)
    when
        Pos > Ind,
        not (Elem =:= a
             orelse
             Elem =:= code
             orelse
             Elem =:= i
             orelse
             Elem =:= em
             orelse
             Elem =:= b
             orelse
             Elem =:= strong) ->
    {Docs, NewPos} = render_element(E, State, 0, Ind, D),
    {["\n", Docs], NewPos};
render_element({'div', [{class, What}], Content}, State, Pos, Ind, D) ->
    {Docs, _} = render_docs(Content, ['div' | State], 0, Ind + 2, D),
    trimnlnl([pad(Ind - Pos), string:titlecase(What), ":\n", Docs]);
render_element({blockquote, _Attr, Content}, State, _Pos, Ind, D) ->
    trimnlnl(render_docs(Content, ['div' | State], 0, Ind + 2, D));
render_element({Tag, _, Content}, State, Pos, Ind, D)
    when Tag =:= p; Tag =:= 'div' ->
    trimnlnl(render_docs(Content, [Tag | State], Pos, Ind, D));
render_element(Elem, State, Pos, Ind, D) when Pos < Ind ->
    {Docs, NewPos} = render_element(Elem, State, Ind, Ind, D),
    {[pad(Ind - Pos), Docs], NewPos};
render_element({code, _, Content}, [pre | _] = State, Pos, Ind, D) ->
    render_docs(Content, [code | State], Pos, Ind, D);
render_element({code, _, Content}, State, Pos, Ind, D) ->
    Underline = sansi(underline),
    {Docs, NewPos} = render_docs(Content, [code | State], Pos, Ind, D),
    {[Underline, Docs, ransi(underline)], NewPos};
render_element({em, Attr, Content}, State, Pos, Ind, D) ->
    render_element({i, Attr, Content}, State, Pos, Ind, D);
render_element({i, _, Content}, State, Pos, Ind, D) ->
    render_docs(Content, State, Pos, Ind, D);
render_element({br, [], []}, _State, Pos, _Ind, _D) ->
    {"", Pos};
render_element({strong, Attr, Content}, State, Pos, Ind, D) ->
    render_element({b, Attr, Content}, State, Pos, Ind, D);
render_element({b, _, Content}, State, Pos, Ind, D) ->
    Bold = sansi(bold),
    {Docs, NewPos} = render_docs(Content, State, Pos, Ind, D),
    {[Bold, Docs, ransi(bold)], NewPos};
render_element({pre, _, Content}, State, Pos, Ind, D) ->
    trimnlnl(render_docs(Content, [pre | State], Pos, Ind + 2, D));
render_element({ul, [{class, <<"types">>}], Content},
               State, _Pos, Ind, D) ->
    {Docs, _} = render_docs(Content, [types | State], 0, Ind + 2, D),
    trimnlnl(["Types:\n", Docs]);
render_element({li, Attr, Content}, [types | _] = State, Pos, Ind, C) ->
    Doc =
        case
            {proplists:get_value(name, Attr),
             proplists:get_value(class, Attr)}
        of
            {undefined, Class}
                when Class =:= undefined; Class =:= <<"type">> ->
                render_docs(Content, [type | State], Pos, Ind, C);
            {_, <<"description">>} ->
                render_docs(Content, [type | State], Pos, Ind + 2, C);
            {Name, _} ->
                case render_type_signature(binary_to_atom(Name), C) of
                    undefined when Content =:= [] ->
                        {["-type ", Name, "() :: term()."], 0};
                    undefined ->
                        render_docs(Content,
                                    [type | State],
                                    Pos, Ind, C);
                    Type ->
                        {Type, 0}
                end
        end,
    trimnl(Doc);
render_element({ul, [], Content}, State, Pos, Ind, D) ->
    render_docs(Content, [l | State], Pos, Ind, D);
render_element({ol, [], Content}, State, Pos, Ind, D) ->
    render_docs(Content, [l | State], Pos, Ind, D);
render_element({li, [], Content}, [l | _] = State, Pos, Ind, D) ->
    Bullet =
        get_bullet(State,
                   case D of
                       {config, _, _, REC3, _, _, _} ->
                           REC3;
                       REC3 ->
                           error({badrecord, REC3})
                   end),
    BulletLen = string:length(Bullet),
    {Docs, _NewPos} =
        render_docs(Content,
                    [li | State],
                    Pos + BulletLen,
                    Ind + BulletLen,
                    D),
    trimnlnl([Bullet, Docs]);
render_element({dl, _, Content}, State, Pos, Ind, D) ->
    render_docs(Content, [dl | State], Pos, Ind, D);
render_element({dt, Attr, Content}, [dl | _] = State, Pos, Ind, D) ->
    Since =
        case Attr of
            [{since, Vsn}] ->
                ["     (since ", unicode:characters_to_list(Vsn), $)];
            [] ->
                []
        end,
    Underline = sansi(underline),
    {Docs, _NewPos} = render_docs(Content, [li | State], Pos, Ind, D),
    {[Underline, Docs, ransi(underline), $:, Since, $\n], 0};
render_element({dd, _, Content}, [dl | _] = State, Pos, Ind, D) ->
    trimnlnl(render_docs(Content, [li | State], Pos, Ind + 2, D));
render_element(B, State, Pos, Ind, D) when is_binary(B) ->
    case lists:member(pre, State) of
        true ->
            Pre = string:replace(B, "\n", [nlpad(Ind)], all),
            {Pre, Pos + lastline(Pre)};
        _ ->
            render_words(split_to_words(B), State, Pos, Ind, [[]], D)
    end;
render_element({Tag, Attr, Content}, State, Pos, Ind, D) ->
    case
        lists:member(Tag,
                     [a, p, 'div', blockquote, br, h1, h2, h3, h4, h5,
                      h6, i, b, em, strong, pre, code, ul, ol, li, dl,
                      dt, dd])
    of
        true ->
            throw({unhandled_element, Tag, Attr, Content});
        false ->
            ok
    end,
    render_docs(Content, State, Pos, Ind, D).

render_words(Words, [_, types | State], Pos, Ind, Acc, D) ->
    render_words(Words, State, Pos, Ind + 2, Acc, D);
render_words([UnicodeWord | T],
             State, Pos, Ind, Acc,
             {config, _, _, _, _, _, Cols} = D)
    when is_binary(UnicodeWord) ->
    Word = translate(UnicodeWord, D),
    WordLength = string:length(Word),
    NewPos = WordLength + Pos,
    IsPunct = re:run(Word, "^\\W$", [unicode]) =/= nomatch,
    if
        NewPos > Cols - 10 - Ind, Word =/= <<>>, not IsPunct ->
            render_words(T, State,
                         WordLength + Ind + 1,
                         Ind,
                         [[[nlpad(Ind), Word]] | Acc],
                         D);
        true ->
            [Line | LineAcc] = Acc,
            NewPosSpc = NewPos + 1,
            render_words(T, State, NewPosSpc, Ind,
                         [[Word | Line] | LineAcc],
                         D)
    end;
render_words([], _State, Pos, _Ind, Acc, _D) ->
    Lines =
        lists:map(fun(RevLine) ->
                         Line = lists:reverse(RevLine),
                         lists:join($\s, Line)
                  end,
                  lists:reverse(Acc)),
    {iolist_to_binary(Lines), Pos}.

translate(UnicodeWord, {config, _, _, unicode, _, _, _}) ->
    UnicodeWord;
translate(UnicodeWord, {config, _, _, latin1, _, _, _}) ->
    string:replace(UnicodeWord, [160], " ", all).

render_type_signature(Name,
                      {config,
                       {docs_v1, _, _, _, _, #{types := AllTypes}, _},
                       _, _, _, _, _}) ->
    case
        [ 
         Type ||
             Type = {TName, _} <- maps:keys(AllTypes),
             TName =:= Name
        ]
    of
        [] ->
            undefined;
        Types ->
            [ 
             erl_pp:attribute(maps:get(Type, AllTypes)) ||
                 Type <- Types
            ]
    end.

pad(N) ->
    pad(N, "").

nlpad(N) ->
    pad(N, "\n").

pad(N, Extra) ->
    Pad = lists:duplicate(N, " "),
    case ansi() of
        undefined ->
            [Extra, Pad];
        Ansi ->
            ["\e[0m", Extra, Pad, Ansi]
    end.

get_bullet(_State, latin1) ->
    <<" * ">>;
get_bullet(State, unicode) ->
    case
        length([ 
                l ||
                    l <- State
               ])
    of
        Level when Level > 4 ->
            get_bullet(State, latin1);
        Level ->
            lists:nth(Level,
                      [<<" • "/utf8>>,
                       <<" ￮ "/utf8>>,
                       <<" ◼ "/utf8>>,
                       <<" ◻ "/utf8>>])
    end.

lastline(Str) ->
    LastStr =
        case string:find(Str, "\n", trailing) of
            nomatch ->
                Str;
            Match ->
                tl(string:next_codepoint(Match))
        end,
    string:length(LastStr).

split_to_words(B) ->
    binary:split(B, [<<" ">>], [global]).

trimnlnl({Chars, _Pos}) ->
    nl(nl(string:trim(Chars, trailing, "\n")));
trimnlnl(Chars) ->
    nl(nl(string:trim(Chars, trailing, "\n"))).

trimnl({Chars, _Pos}) ->
    nl(string:trim(Chars, trailing, "\n")).

nl({Chars, _Pos}) ->
    nl(Chars);
nl(Chars) ->
    {[Chars, "\n"], 0}.

init_ansi({config, _, _, _, undefined, Opts, _}) ->
    case
        {application:get_env(kernel, shell_docs_ansi),
         proplists:get_value(terminal, Opts, false),
         proplists:is_defined(echo, Opts)
         andalso
         proplists:is_defined(expand_fun, Opts)}
    of
        {{ok, false}, _, _} ->
            put(ansi, noansi);
        {{ok, true}, _, _} ->
            put(ansi, []);
        {_, true, _} ->
            put(ansi, []);
        {_, _, true} ->
            put(ansi, []);
        {_, _, false} ->
            put(ansi, noansi)
    end;
init_ansi({config, _, _, _, true, _, _}) ->
    put(ansi, []);
init_ansi({config, _, _, _, false, _, _}) ->
    put(ansi, noansi).

clean_ansi() ->
    case get(ansi) of
        [] ->
            erase(ansi);
        noansi ->
            erase(ansi)
    end,
    ok.

sansi(Type) ->
    sansi(Type, get(ansi)).

sansi(_Type, noansi) ->
    [];
sansi(Type, Curr) ->
    put(ansi, [Type | Curr]),
    ansi(get(ansi)).

ransi(Type) ->
    ransi(Type, get(ansi)).

ransi(_Type, noansi) ->
    [];
ransi(Type, Curr) ->
    put(ansi, proplists:delete(Type, Curr)),
    case ansi(get(ansi)) of
        undefined ->
            "\e[0m";
        Ansi ->
            Ansi
    end.

ansi() ->
    ansi(get(ansi)).

ansi(noansi) ->
    undefined;
ansi(Curr) ->
    case lists:usort(Curr) of
        [] ->
            undefined;
        [bold] ->
            "\e[;1m";
        [underline] ->
            "\e[;;4m";
        [bold, underline] ->
            "\e[;1;4m"
    end.

filtermap_mfa({MetaKind, Function, none}, Map, Docs) ->
    [ 
     Map(D) ||
         {{MK, F, _}, _Anno, _Sig, _Doc, _Meta} = D <- Docs,
         MK =:= MetaKind
         andalso
         F =:= Function
    ];
filtermap_mfa({MetaKind, Function, Arity}, Map, Docs) ->
    [ 
     Map(D) ||
         {{MK, F, A}, _Anno, _Sig, _Doc, _Meta} = D <- Docs,
         MK =:= MetaKind
         andalso
         F =:= Function
         andalso
         Arity =:= A
    ].

filter_mfa({MetaKind, Function, none}, Docs) ->
    [ 
     D ||
         {{MK, F, _}, _Anno, _Sig, _Doc, _Meta} = D <- Docs,
         MK =:= MetaKind
         andalso
         F =:= Function
    ];
filter_mfa({MetaKind, Function, Arity}, Docs) ->
    [ 
     D ||
         {{MK, F, A}, _Anno, _Sig, _Doc, _Meta} = D <- Docs,
         MK =:= MetaKind
         andalso
         F =:= Function
         andalso
         Arity =:= A
    ].



