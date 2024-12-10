-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.1.2/src/erl_parse.erl", 1).

-file("erl_parse.yrl", 0).

-module(erl_parse).

-file("erl_parse.erl", 17).

-export([parse/1,parse_and_scan/1,format_error/1]).

-file("erl_parse.yrl", 756).

-export([parse_form/1,parse_exprs/1,parse_term/1]).

-export([normalise/1,abstract/1,tokens/1,tokens/2]).

-export([abstract/2]).

-export([inop_prec/1,preop_prec/1,func_prec/0,max_prec/0]).

-export([type_inop_prec/1,type_preop_prec/1]).

-export([map_anno/2,
         fold_anno/3,
         mapfold_anno/3,
         new_anno/1,
         anno_to_term/1,
         anno_from_term/1]).

-export([first_anno/1]).

-export_type([abstract_clause/0,
              abstract_expr/0,
              abstract_form/0,
              abstract_type/0,
              form_info/0,
              error_info/0]).

-export_type([af_binelement/1,
              af_generator/0,
              af_zip_generator/0,
              af_remote_function/0]).

-export_type([af_field_decl/0]).

-removed([{set_line, 2, "use erl_anno:set_line/2"},
          {get_attributes, 1,
           "erl_anno:{column,line,location,text}/1 instead"},
          {get_attribute, 2,
           "erl_anno:{column,line,location,text}/1 instead"}]).

-type anno() :: erl_anno:anno().

-type abstract_form() ::
          af_module() |
          af_behavior() |
          af_behaviour() |
          af_export() |
          af_import() |
          af_export_type() |
          af_compile() |
          af_file() |
          af_record_decl() |
          af_type_decl() |
          af_function_spec() |
          af_wild_attribute() |
          af_function_decl().

-type af_module() :: {attribute, anno(), module, module()}.

-type af_behavior() :: {attribute, anno(), behavior, behaviour()}.

-type af_behaviour() :: {attribute, anno(), behaviour, behaviour()}.

-type behaviour() :: atom().

-type af_export() :: {attribute, anno(), export, af_fa_list()}.

-type af_import() ::
          {attribute, anno(), import, {module(), af_fa_list()}}.

-type af_fa_list() :: [{function_name(), arity()}].

-type af_export_type() :: {attribute, anno(), export_type, af_ta_list()}.

-type af_ta_list() :: [{type_name(), arity()}].

-type af_compile() :: {attribute, anno(), compile, any()}.

-type af_file() :: {attribute, anno(), file, {string(), anno()}}.

-type af_record_decl() ::
          {attribute,
           anno(),
           record,
           {record_name(), [af_field_decl()]}}.

-type af_field_decl() :: af_typed_field() | af_field().

-type af_typed_field() ::
          {typed_record_field, af_field(), abstract_type()}.

-type af_field() ::
          {record_field, anno(), af_field_name()} |
          {record_field, anno(), af_field_name(), abstract_expr()}.

-type af_type_decl() ::
          {attribute,
           anno(),
           type_attr(),
           {type_name(), abstract_type(), [af_variable()]}}.

-type type_attr() :: nominal | opaque | type.

-type af_function_spec() ::
          {attribute,
           anno(),
           spec_attr(),
           {{function_name(), arity()}, af_function_type_list()}} |
          {attribute,
           anno(),
           spec,
           {{module(), function_name(), arity()},
            af_function_type_list()}}.

-type spec_attr() :: callback | spec.

-type af_wild_attribute() :: {attribute, anno(), atom(), any()}.

-type af_function_decl() ::
          {function, anno(), function_name(), arity(), af_clause_seq()}.

-type abstract_expr() ::
          af_literal() |
          af_match(abstract_expr()) |
          af_maybe_match() |
          af_variable() |
          af_tuple(abstract_expr()) |
          af_nil() |
          af_cons(abstract_expr()) |
          af_bin(abstract_expr()) |
          af_binary_op(abstract_expr()) |
          af_unary_op(abstract_expr()) |
          af_record_creation(abstract_expr()) |
          af_record_update(abstract_expr()) |
          af_record_index() |
          af_record_field_access(abstract_expr()) |
          af_map_creation(abstract_expr()) |
          af_map_update(abstract_expr()) |
          af_catch() |
          af_local_call() |
          af_remote_call() |
          af_list_comprehension() |
          af_map_comprehension() |
          af_binary_comprehension() |
          af_block() |
          af_if() |
          af_case() |
          af_try() |
          af_receive() |
          af_local_fun() |
          af_remote_fun() |
          af_fun() |
          af_named_fun() |
          af_maybe() |
          af_maybe_else().

-type af_record_update(T) ::
          {record,
           anno(),
           abstract_expr(),
           record_name(),
           [af_record_field(T)]}.

-type af_catch() :: {'catch', anno(), abstract_expr()}.

-type af_local_call() :: {call, anno(), af_local_function(), af_args()}.

-type af_remote_call() ::
          {call, anno(), af_remote_function(), af_args()}.

-type af_args() :: [abstract_expr()].

-type af_local_function() :: abstract_expr().

-type af_remote_function() ::
          {remote, anno(), abstract_expr(), abstract_expr()}.

-type af_list_comprehension() ::
          {lc, anno(), af_template(), af_qualifier_seq()}.

-type af_map_comprehension() ::
          {mc, anno(), af_assoc(abstract_expr()), af_qualifier_seq()}.

-type af_binary_comprehension() ::
          {bc, anno(), af_template(), af_qualifier_seq()}.

-type af_template() :: abstract_expr().

-type af_qualifier_seq() :: [af_qualifier(), ...].

-type af_qualifier() :: af_generator() | af_filter().

-type af_generator() ::
          {generate, anno(), af_pattern(), abstract_expr()} |
          {generate_strict, anno(), af_pattern(), abstract_expr()} |
          {m_generate,
           anno(),
           af_assoc_exact(af_pattern()),
           abstract_expr()} |
          {m_generate_strict,
           anno(),
           af_assoc_exact(af_pattern()),
           abstract_expr()} |
          {b_generate, anno(), af_pattern(), abstract_expr()} |
          {b_generate_strict, anno(), af_pattern(), abstract_expr()} |
          af_zip_generator().

-type af_zip_generator() :: [af_generator(), ...].

-type af_filter() :: abstract_expr().

-type af_block() :: {block, anno(), af_body()}.

-type af_if() :: {'if', anno(), af_clause_seq()}.

-type af_case() :: {'case', anno(), abstract_expr(), af_clause_seq()}.

-type af_try() ::
          {'try',
           anno(),
           af_body(),
           af_clause_seq() | [],
           af_clause_seq() | [],
           af_body() | []}.

-type af_clause_seq() :: [af_clause(), ...].

-type af_receive() ::
          {'receive', anno(), af_clause_seq()} |
          {'receive',
           anno(),
           af_clause_seq(),
           abstract_expr(),
           af_body()}.

-type af_local_fun() ::
          {'fun', anno(), {function, function_name(), arity()}}.

-type af_remote_fun() ::
          {'fun',
           anno(),
           {function, module(), function_name(), arity()}} |
          {'fun',
           anno(),
           {function,
            af_atom() | af_variable(),
            af_atom() | af_variable(),
            af_integer() | af_variable()}}.

-type af_fun() :: {'fun', anno(), {clauses, af_clause_seq()}}.

-type af_named_fun() :: {named_fun, anno(), fun_name(), af_clause_seq()}.

-type fun_name() :: atom().

-type abstract_clause() :: af_clause().

-type af_clause() ::
          {clause, anno(), [af_pattern()], af_guard_seq(), af_body()}.

-type af_body() :: [abstract_expr(), ...].

-type af_guard_seq() :: [af_guard()].

-type af_guard() :: [af_guard_test(), ...].

-type af_guard_test() ::
          af_literal() |
          af_variable() |
          af_tuple(af_guard_test()) |
          af_nil() |
          af_cons(af_guard_test()) |
          af_bin(af_guard_test()) |
          af_binary_op(af_guard_test()) |
          af_unary_op(af_guard_test()) |
          af_record_creation(af_guard_test()) |
          af_record_index() |
          af_record_field_access(af_guard_test()) |
          af_map_creation(af_guard_test()) |
          af_map_update(af_guard_test()) |
          af_guard_call() |
          af_remote_guard_call().

-type af_record_field_access(T) ::
          {record_field, anno(), T, record_name(), af_field_name()}.

-type af_map_creation(T) :: {map, anno(), [af_assoc(T)]}.

-type af_map_update(T) :: {map, anno(), T, [af_assoc(T)]}.

-type af_assoc(T) :: {map_field_assoc, anno(), T, T} | af_assoc_exact(T).

-type af_assoc_exact(T) :: {map_field_exact, anno(), T, T}.

-type af_guard_call() :: {call, anno(), af_atom(), [af_guard_test()]}.

-type af_remote_guard_call() ::
          {call,
           anno(),
           {remote, anno(), af_lit_atom(erlang), af_atom()},
           [af_guard_test()]}.

-type af_pattern() ::
          af_literal() |
          af_match(af_pattern()) |
          af_variable() |
          af_tuple(af_pattern()) |
          af_nil() |
          af_cons(af_pattern()) |
          af_bin(af_pattern()) |
          af_binary_op(af_pattern()) |
          af_unary_op(af_pattern()) |
          af_record_creation(af_pattern()) |
          af_record_index() |
          af_map_pattern().

-type af_record_index() ::
          {record_index, anno(), record_name(), af_field_name()}.

-type af_record_creation(T) ::
          {record, anno(), record_name(), [af_record_field(T)]}.

-type af_record_field(T) :: {record_field, anno(), af_field_name(), T}.

-type af_map_pattern() :: {map, anno(), [af_assoc_exact(af_pattern())]}.

-type af_maybe() :: {'maybe', anno(), af_body()}.

-type af_maybe_else() ::
          {'maybe',
           anno(),
           af_body(),
           {'else', anno(), af_clause_seq()}}.

-type abstract_type() ::
          af_annotated_type() |
          af_atom() |
          af_bitstring_type() |
          af_empty_list_type() |
          af_fun_type() |
          af_integer_range_type() |
          af_map_type() |
          af_predefined_type() |
          af_record_type() |
          af_remote_type() |
          af_singleton_integer_type() |
          af_tuple_type() |
          af_type_union() |
          af_type_variable() |
          af_user_defined_type().

-type af_annotated_type() ::
          {ann_type, anno(), [af_anno() | abstract_type()]}.

-type af_anno() :: af_variable().

-type af_bitstring_type() ::
          {type, anno(), binary, [af_singleton_integer_type()]}.

-type af_empty_list_type() :: {type, anno(), nil, []}.

-type af_fun_type() ::
          {type, anno(), 'fun', []} |
          {type, anno(), 'fun', [{type, anno(), any} | abstract_type()]} |
          af_function_type().

-type af_integer_range_type() ::
          {type, anno(), range, [af_singleton_integer_type()]}.

-type af_map_type() ::
          {type, anno(), map, any} |
          {type, anno(), map, [af_assoc_type()]}.

-type af_assoc_type() ::
          {type, anno(), map_field_assoc, [abstract_type()]} |
          {type, anno(), map_field_exact, [abstract_type()]}.

-type af_predefined_type() ::
          {type, anno(), type_name(), [abstract_type()]}.

-type af_record_type() ::
          {type,
           anno(),
           record,
           [(Name :: af_atom()) | af_record_field_type()]}.

-type af_record_field_type() ::
          {type,
           anno(),
           field_type,
           [(Name :: af_atom()) | abstract_type()]}.

-type af_remote_type() ::
          {remote_type,
           anno(),
           [(Module :: af_atom()) |
            (TypeName :: af_atom()) |
            [abstract_type()]]}.

-type af_tuple_type() ::
          {type, anno(), tuple, any} |
          {type, anno(), tuple, [abstract_type()]}.

-type af_type_union() :: {type, anno(), union, [abstract_type(), ...]}.

-type af_type_variable() :: {var, anno(), atom()}.

-type af_user_defined_type() ::
          {user_type, anno(), type_name(), [abstract_type()]}.

-type af_function_type_list() ::
          [af_constrained_function_type() | af_function_type(), ...].

-type af_constrained_function_type() ::
          {type,
           anno(),
           bounded_fun,
           [af_function_type() | af_function_constraint()]}.

-type af_function_type() ::
          {type,
           anno(),
           'fun',
           [{type, anno(), product, [abstract_type()]} | abstract_type()]}.

-type af_function_constraint() :: [af_constraint(), ...].

-type af_constraint() ::
          {type,
           anno(),
           constraint,
           [af_lit_atom(is_subtype) |
            [af_type_variable() | abstract_type()]]}.

-type af_singleton_integer_type() ::
          af_integer() |
          af_character() |
          af_unary_op(af_singleton_integer_type()) |
          af_binary_op(af_singleton_integer_type()).

-type af_literal() ::
          af_atom() |
          af_character() |
          af_float() |
          af_integer() |
          af_string().

-type af_atom() :: af_lit_atom(atom()).

-type af_lit_atom(A) :: {atom, anno(), A}.

-type af_character() :: {char, anno(), char()}.

-type af_float() :: {float, anno(), float()}.

-type af_integer() :: {integer, anno(), non_neg_integer()}.

-type af_string() :: {string, anno(), string()}.

-type af_match(T) :: {match, anno(), af_pattern(), T}.

-type af_maybe_match() ::
          {maybe_match, anno(), af_pattern(), abstract_expr()}.

-type af_variable() :: {var, anno(), atom()}.

-type af_tuple(T) :: {tuple, anno(), [T]}.

-type af_nil() :: {nil, anno()}.

-type af_cons(T) :: {cons, anno(), T, T}.

-type af_bin(T) :: {bin, anno(), [af_binelement(T)]}.

-type af_binelement(T) ::
          {bin_element,
           anno(),
           T,
           af_binelement_size(),
           type_specifier_list()}.

-type af_binelement_size() :: default | abstract_expr().

-type af_binary_op(T) :: {op, anno(), binary_op(), T, T}.

-type binary_op() ::
          '/' | '*' | 'div' | 'rem' | 'band' | 'and' | '+' | '-' |
          'bor' | 'bxor' | 'bsl' | 'bsr' | 'or' | 'xor' | '++' | '--' |
          '==' | '/=' | '=<' | '<' | '>=' | '>' | '=:=' | '=/=' | '!'.

-type af_unary_op(T) :: {op, anno(), unary_op(), T}.

-type unary_op() :: '+' | '-' | 'bnot' | 'not'.

-type type_specifier_list() :: default | [type_specifier(), ...].

-type type_specifier() :: type() | signedness() | endianness() | unit().

-type type() ::
          integer | float | binary | bytes | bitstring | bits | utf8 |
          utf16 | utf32.

-type signedness() :: signed | unsigned.

-type endianness() :: big | little | native.

-type unit() :: {unit, 1..256}.

-type record_name() :: atom().

-type af_field_name() :: af_atom().

-type function_name() :: atom().

-type type_name() :: atom().

-type form_info() ::
          {eof, erl_anno:location()} |
          {error, erl_scan:error_info() | error_info()} |
          {warning, erl_scan:error_info() | error_info()}.

-type error_description() :: term().

-type error_info() ::
          {erl_anno:location(), module(), error_description()}.

-type token() :: erl_scan:token().

-spec parse_form(Tokens) -> {ok, AbsForm} | {error, ErrorInfo}
                    when
                        Tokens :: [token()],
                        AbsForm :: abstract_form(),
                        ErrorInfo :: error_info().

parse_form([{'-', A1}, {atom, A2, spec} | Tokens]) ->
    NewTokens = [{'-', A1}, {spec, A2} | Tokens],
    ok,
    parse(NewTokens);
parse_form([{'-', A1}, {atom, A2, callback} | Tokens]) ->
    NewTokens = [{'-', A1}, {callback, A2} | Tokens],
    ok,
    parse(NewTokens);
parse_form(Tokens) ->
    ok,
    parse(Tokens).

-spec parse_exprs(Tokens) -> {ok, ExprList} | {error, ErrorInfo}
                     when
                         Tokens :: [token()],
                         ExprList :: [abstract_expr()],
                         ErrorInfo :: error_info().

parse_exprs(Tokens) ->
    ok,
    A = erl_anno:new(0),
    case
        parse([{atom, A, f}, {'(', A}, {')', A}, {'->', A} | Tokens])
    of
        {ok, {function, _Af, f, 0, [{clause, _Ac, [], [], Exprs}]}} ->
            {ok, Exprs};
        {error, _} = Err ->
            Err
    end.

-spec parse_term(Tokens) -> {ok, Term} | {error, ErrorInfo}
                    when
                        Tokens :: [token()],
                        Term :: term(),
                        ErrorInfo :: error_info().

parse_term(Tokens) ->
    ok,
    A = erl_anno:new(0),
    case
        parse([{atom, A, f}, {'(', A}, {')', A}, {'->', A} | Tokens])
    of
        {ok, {function, _Af, f, 0, [{clause, _Ac, [], [], [Expr]}]}} ->
            try normalise(Expr) of
                Term ->
                    {ok, Term}
            catch
                _:_R ->
                    {error,
                     {first_location(Expr), erl_parse, "bad term"}}
            end;
        {ok,
         {function, _Af, f, 0, [{clause, _Ac, [], [], [_E1, E2 | _Es]}]}} ->
            {error, {first_location(E2), erl_parse, "bad term"}};
        {error, _} = Err ->
            Err
    end.

-type attributes() ::
          export | file | import | module | nominal | opaque | record |
          type.

build_typed_attribute({atom, Aa, record},
                      {typed_record, {atom, _An, RecordName}, RecTuple}) ->
    {attribute, Aa, record, {RecordName, record_tuple(RecTuple)}};
build_typed_attribute({atom, Aa, Attr},
                      {type_def,
                       {call, _, {atom, _, TypeName}, Args},
                       Type})
    when Attr =:= type; Attr =:= opaque; Attr =:= nominal ->
    lists:foreach(fun({var, A, '_'}) ->
                         ret_err(A, "bad type variable");
                     (_) ->
                         ok
                  end,
                  Args),
    lists:foreach(fun({var, _, _}) ->
                         true;
                     (Other) ->
                         ret_abstr_err(Other, "bad type variable")
                  end,
                  Args),
    {attribute, Aa, Attr, {TypeName, Type, Args}};
build_typed_attribute({atom, Aa, Attr} = Abstr, _) ->
    case Attr of
        record ->
            error_bad_decl(Abstr, record);
        type ->
            error_bad_decl(Abstr, type);
        nominal ->
            error_bad_decl(Abstr, nominal);
        opaque ->
            error_bad_decl(Abstr, opaque);
        _ ->
            ret_err(Aa, "bad attribute")
    end.

build_type_spec({Kind, Aa}, {SpecFun, TypeSpecs})
    when Kind =:= spec; Kind =:= callback ->
    NewSpecFun =
        case SpecFun of
            {atom, _, Fun} ->
                {Fun, find_arity_from_specs(TypeSpecs)};
            {{atom, _, Mod}, {atom, _, Fun}} ->
                {Mod, Fun, find_arity_from_specs(TypeSpecs)}
        end,
    {attribute, Aa, Kind, {NewSpecFun, TypeSpecs}}.

find_arity_from_specs([Spec | _]) ->
    Fun =
        case Spec of
            {type, _, bounded_fun, [F, _]} ->
                F;
            {type, _, 'fun', _} = F ->
                F
        end,
    {type, _, 'fun', [{type, _, product, Args}, _]} = Fun,
    length(Args).

build_compat_constraint({atom, _, is_subtype},
                        [{var, _, _} = LHS, Type]) ->
    build_constraint(LHS, Type);
build_compat_constraint({atom, _, is_subtype}, [LHS, _Type]) ->
    ret_abstr_err(LHS, "bad type variable");
build_compat_constraint({atom, A, Atom}, _Types) ->
    ret_err(A, io_lib:format("unsupported constraint ~tw", [Atom])).

build_constraint({atom, _, is_subtype}, [{var, _, _} = LHS, Type]) ->
    build_constraint(LHS, Type);
build_constraint({atom, A, Atom}, _Foo) ->
    ret_err(A, io_lib:format("unsupported constraint ~tw", [Atom]));
build_constraint({var, A, '_'}, _Types) ->
    ret_err(A, "bad type variable");
build_constraint(LHS, Type) ->
    Anno = first_anno(LHS),
    IsSubType = {atom, Anno, is_subtype},
    {type, Anno, constraint, [IsSubType, [LHS, Type]]}.

lift_unions(T1, {type, _Aa, union, List}) ->
    {type, first_anno(T1), union, [T1 | List]};
lift_unions(T1, T2) ->
    {type, first_anno(T1), union, [T1, T2]}.

build_gen_type({atom, Aa, tuple}) ->
    {type, Aa, tuple, any};
build_gen_type({atom, Aa, map}) ->
    {type, Aa, map, any};
build_gen_type({atom, Aa, Name}) ->
    Tag = type_tag(Name, 0),
    {Tag, Aa, Name, []}.

build_bin_type([{var, _, '_'} | Left], Int) ->
    build_bin_type(Left, Int);
build_bin_type([], Int) ->
    Int;
build_bin_type([{var, Aa, _} | _], _) ->
    ret_err(Aa, "Bad binary type").

build_type({atom, A, Name}, Types) ->
    Tag = type_tag(Name, length(Types)),
    {Tag, A, Name, Types}.

type_tag(TypeName, NumberOfTypeVariables) ->
    case erl_internal:is_type(TypeName, NumberOfTypeVariables) of
        true ->
            type;
        false ->
            user_type
    end.

abstract2(Term, Anno) ->
    Line = erl_anno:line(Anno),
    abstract(Term, Line).

build_attribute({atom, Aa, module}, Val) ->
    case Val of
        [{atom, _Am, Module}] ->
            {attribute, Aa, module, Module};
        [{atom, _Am, Module}, ExpList] ->
            {attribute, Aa, module, {Module, var_list(ExpList)}};
        [Other | _] ->
            error_bad_decl(Other, module)
    end;
build_attribute({atom, Aa, export}, Val) ->
    case Val of
        [ExpList] ->
            {attribute, Aa, export, farity_list(ExpList)};
        [_, Other | _] ->
            error_bad_decl(Other, export)
    end;
build_attribute({atom, Aa, import}, Val) ->
    case Val of
        [{atom, _Am, Mod}, ImpList] ->
            {attribute, Aa, import, {Mod, farity_list(ImpList)}};
        [_, Other | _] ->
            error_bad_decl(Other, import)
    end;
build_attribute({atom, Aa, record}, Val) ->
    case Val of
        [{atom, _An, Record}, RecTuple] ->
            {attribute, Aa, record, {Record, record_tuple(RecTuple)}};
        [Other | _] ->
            error_bad_decl(Other, record)
    end;
build_attribute({atom, Aa, file}, Val) ->
    case Val of
        [{string, _An, Name}, {integer, _Al, Line}] ->
            {attribute, Aa, file, {Name, Line}};
        [Other | _] ->
            error_bad_decl(Other, file)
    end;
build_attribute({atom, Aa, Attr}, Val)
    when Attr =:= doc; Attr =:= moduledoc ->
    case Val of
        [{atom, _, Value}] when is_boolean(Value) ->
            {attribute, Aa, Attr, Value};
        [{atom, _, hidden = Value}] ->
            {attribute, Aa, Attr, Value};
        [{string, _, Value}] ->
            {attribute, Aa, Attr, Value};
        [{bin, _, _} = Bin] ->
            case term(Bin) of
                Value when is_binary(Value) ->
                    {attribute, Aa, Attr, Value};
                _Else ->
                    error_bad_decl(Bin, doc)
            end;
        [{map, _, Pairs} = Expr] ->
            Value =
                try
                    maps:from_list(lists:map(fun({map_field_assoc, _, K,
                                                  V}) ->
                                                    case normalise(K) of
                                                        equiv
                                                            when
                                                                Attr
                                                                =:=
                                                                doc,
                                                                element(1,
                                                                        V)
                                                                =:=
                                                                call ->
                                                            {equiv, V};
                                                        NormalK ->
                                                            {NormalK,
                                                             normalise(attribute_farity(V))}
                                                    end;
                                                (E) ->
                                                    throw({badarg, E})
                                             end,
                                             Pairs))
                catch
                    throw:{badarg, E} ->
                        ret_abstr_err(E, "bad attribute");
                    _:_ ->
                        ret_abstr_err(Expr, "bad attribute")
                end,
            {attribute, Aa, Attr, Value};
        [{tuple, _, [{atom, _, file}, {string, _, Value}]}] ->
            {attribute, Aa, Attr, {file, Value}};
        [Other | _] ->
            error_bad_decl(Other, doc)
    end;
build_attribute({atom, Aa, Attr}, Val) ->
    case Val of
        [Expr0] ->
            Expr = attribute_farity(Expr0),
            {attribute, Aa, Attr, term(Expr)};
        [_, Other | _] ->
            ret_abstr_err(Other, "bad attribute")
    end.

var_list({cons, _Ac, {var, _, V}, Tail}) ->
    [V | var_list(Tail)];
var_list({nil, _An}) ->
    [];
var_list(Other) ->
    ret_abstr_err(Other, "bad variable list").

attribute_farity({cons, A, H, T}) ->
    {cons, A, attribute_farity(H), attribute_farity(T)};
attribute_farity({tuple, A, Args0}) ->
    Args = attribute_farity_list(Args0),
    {tuple, A, Args};
attribute_farity({map, A, Args0}) ->
    Args = attribute_farity_map(Args0),
    {map, A, Args};
attribute_farity({op, A, '/',
                  {atom, _, _} = Name,
                  {integer, _, _} = Arity}) ->
    {tuple, A, [Name, Arity]};
attribute_farity(Other) ->
    Other.

attribute_farity_list(Args) ->
    [ 
     attribute_farity(A) ||
         A <- Args
    ].

attribute_farity_map(Args) ->
    [ 
     {Op, A, K, attribute_farity(V)} ||
         {Op, A, K, V} <- Args
    ].

-spec error_bad_decl(erl_parse_tree(), attributes()) -> no_return().

error_bad_decl(Abstr, S) ->
    ret_abstr_err(Abstr, io_lib:format("bad ~tw declaration", [S])).

farity_list({cons, _Ac,
             {op, _Ao, '/', {atom, _Aa, A}, {integer, _Ai, I}},
             Tail}) ->
    [{A, I} | farity_list(Tail)];
farity_list({cons, _Ac, {op, _Ao, '/', {atom, _Aa, _A}, Other}, _Tail}) ->
    ret_abstr_err(Other, "bad function arity");
farity_list({cons, _Ac, {op, _Ao, '/', Other, _}, _Tail}) ->
    ret_abstr_err(Other, "bad function name");
farity_list({nil, _An}) ->
    [];
farity_list(Other) ->
    ret_abstr_err(Other, "bad Name/Arity").

record_tuple({tuple, _At, Fields}) ->
    record_fields(Fields);
record_tuple(Other) ->
    ret_abstr_err(Other, "bad record declaration").

record_fields([{atom, Aa, A} | Fields]) ->
    [{record_field, Aa, {atom, Aa, A}} | record_fields(Fields)];
record_fields([{match, _Am, {atom, Aa, A}, Expr} | Fields]) ->
    [{record_field, Aa, {atom, Aa, A}, Expr} | record_fields(Fields)];
record_fields([{typed, Expr, TypeInfo} | Fields]) ->
    [Field] = record_fields([Expr]),
    [{typed_record_field, Field, TypeInfo} | record_fields(Fields)];
record_fields([Other | _Fields]) ->
    ret_abstr_err(Other, "bad record field");
record_fields([]) ->
    [].

term(Expr) ->
    try
        normalise(Expr)
    catch
        _:_R ->
            ret_abstr_err(Expr, "bad attribute")
    end.

build_function(Cs) ->
    Name = element(3, hd(Cs)),
    Arity = length(element(4, hd(Cs))),
    {function,
     element(2, hd(Cs)),
     Name, Arity,
     check_clauses(Cs, Name, Arity)}.

build_fun(Anno, Cs) ->
    Name = element(3, hd(Cs)),
    Arity = length(element(4, hd(Cs))),
    CheckedCs = check_clauses(Cs, Name, Arity),
    case Name of
        'fun' ->
            {'fun', Anno, {clauses, CheckedCs}};
        Name ->
            {named_fun, Anno, Name, CheckedCs}
    end.

check_clauses(Cs, Name, Arity) ->
    [ 
     case C of
         {clause, A, N, As, G, B} when N =:= Name, length(As) =:= Arity ->
             {clause, A, As, G, B};
         {clause, A, N, As, _G, _B} when N =:= Name ->
             Detail =
                 io_lib:format("head mismatch: function ~s with arities"
                               " ~w and ~w is regarded as two distinct "
                               "functions. Is the number of arguments i"
                               "ncorrect or is the semicolon in ~s/~w u"
                               "nwanted?",
                               [Name, Arity, length(As), Name, Arity]),
             ret_err(A, Detail);
         {clause, A, N, As, _G, _B} ->
             Detail =
                 io_lib:format("head mismatch: previous function ~s/~w "
                               "is distinct from ~s/~w. Is the semicolo"
                               "n in ~s/~w unwanted?",
                               [Name, Arity, N, length(As), Name, Arity]),
             ret_err(A, Detail)
     end ||
         C <- Cs
    ].

build_try(A, Es, Scs, {Ccs, As}) ->
    {'try', A, Es, Scs, Ccs, As}.

build_sigil(SigilPrefix, String, SigilSuffix) ->
    Type = element(3, SigilPrefix),
    Suffix = element(3, SigilSuffix),
    if
        Type =:= 'S';Type =:= s ->
            case Suffix of
                "" ->
                    String;
                _ ->
                    ret_err(element(2, SigilSuffix),
                            "illegal sigil suffix")
            end;
        Type =:= '';Type =:= 'B';Type =:= b ->
            case Suffix of
                "" ->
                    {bin,
                     element(2, SigilPrefix),
                     [{bin_element,
                       element(2, String),
                       String, default,
                       [utf8]}]};
                _ ->
                    ret_err(element(2, SigilSuffix),
                            "illegal sigil suffix")
            end;
        true ->
            ret_err(element(2, SigilPrefix), "illegal sigil prefix")
    end.

-spec ret_err(_, _) -> no_return().

ret_err(Anno, S) ->
    return_error(location(Anno), S).

-spec ret_abstr_err(_, _) -> no_return().

ret_abstr_err(Abstract, S) ->
    return_error(first_location(Abstract), S).

first_location(Abstract) ->
    Anno = first_anno(Abstract),
    erl_anno:location(Anno).

first_anno(Abstract) ->
    Anno0 = element(2, Abstract),
    F = fun(Anno, Anno1) ->
               Loc = erl_anno:location(Anno),
               Loc1 = erl_anno:location(Anno1),
               case loc_lte(Loc, Loc1) of
                   true ->
                       Anno;
                   false ->
                       throw(Anno1)
               end
        end,
    catch fold_anno(F, Anno0, Abstract).

last_anno(Abstract) ->
    Fun =
        fun(Anno, '*') ->
               Anno;
           (Anno, Anno0) ->
               case loc_lte(Anno, Anno0) of
                   true ->
                       Anno0;
                   false ->
                       Anno
               end
        end,
    Anno = find_anno(Abstract, Fun),
    case erl_anno:end_location(Anno) of
        undefined ->
            Anno;
        EndLocation ->
            erl_anno:set_location(EndLocation, Anno)
    end.

find_anno(Abstract, Fun) ->
    fold_anno(Fun, '*', Abstract).

loc_lte(Line1, Location2) when is_integer(Line1) ->
    loc_lte({Line1, 1}, Location2);
loc_lte(Location1, Line2) when is_integer(Line2) ->
    loc_lte(Location1, {Line2, 1});
loc_lte(Location1, Location2) ->
    Location1 =< Location2.

location(Anno) ->
    erl_anno:location(Anno).

-spec normalise(AbsTerm) -> Data
                   when AbsTerm :: abstract_expr(), Data :: term().

normalise({char, _, C}) ->
    C;
normalise({integer, _, I}) ->
    I;
normalise({float, _, F}) ->
    F;
normalise({atom, _, A}) ->
    A;
normalise({string, _, S}) ->
    S;
normalise({nil, _}) ->
    [];
normalise({bin, _, Fs}) ->
    {value, B, _} =
        eval_bits:expr_grp(Fs, [],
                           fun(E, _) ->
                                  {value, normalise(E), []}
                           end),
    B;
normalise({cons, _, Head, Tail}) ->
    [normalise(Head) | normalise(Tail)];
normalise({tuple, _, Args}) ->
    list_to_tuple(normalise_list(Args));
normalise({map, _, Pairs} = M) ->
    maps:from_list(lists:map(fun({map_field_assoc, _, K, V}) ->
                                    {normalise(K), normalise(V)};
                                (_) ->
                                    error({badarg, M})
                             end,
                             Pairs));
normalise({'fun', _,
           {function, {atom, _, M}, {atom, _, F}, {integer, _, A}}}) ->
    fun M:F/A;
normalise({op, _, '+', {char, _, I}}) ->
    I;
normalise({op, _, '+', {integer, _, I}}) ->
    I;
normalise({op, _, '+', {float, _, F}}) ->
    F;
normalise({op, _, '-', {char, _, I}}) ->
    -I;
normalise({op, _, '-', {integer, _, I}}) ->
    -I;
normalise({op, _, '-', {float, _, F}}) ->
    -F;
normalise(X) ->
    error({badarg, X}).

normalise_list([H | T]) ->
    [normalise(H) | normalise_list(T)];
normalise_list([]) ->
    [].

-spec abstract(Data) -> AbsTerm
                  when Data :: term(), AbsTerm :: abstract_expr().

abstract(T) ->
    Anno = erl_anno:new(0),
    abstract(T, Anno, enc_func(epp:default_encoding())).

-type encoding_func() :: fun((non_neg_integer()) -> boolean()).

-spec abstract(Data, Options) -> AbsTerm
                  when
                      Data :: term(),
                      Options :: Location | [Option],
                      Option ::
                          {encoding, Encoding} |
                          {line, Line} |
                          {location, Location},
                      Encoding ::
                          latin1 | unicode | utf8 | none |
                          encoding_func(),
                      Line :: erl_anno:line(),
                      Location :: erl_anno:location(),
                      AbsTerm :: abstract_expr().

abstract(T, Options) when is_list(Options) ->
    Encoding =
        proplists:get_value(encoding, Options, epp:default_encoding()),
    EncFunc = enc_func(Encoding),
    Location =
        case proplists:get_value(location, Options) of
            undefined ->
                proplists:get_value(line, Options, 0);
            Loc ->
                Loc
        end,
    Anno = erl_anno:new(Location),
    abstract(T, Anno, EncFunc);
abstract(T, Location) ->
    Anno = erl_anno:new(Location),
    abstract(T, Anno, enc_func(epp:default_encoding())).

enc_func(latin1) ->
    fun(C) ->
           C < 256
    end;
enc_func(unicode) ->
    fun(C) ->
           C < 55296
           orelse
           C > 57343
           andalso
           C < 65534
           orelse
           C > 65535
           andalso
           C =< 1114111
    end;
enc_func(utf8) ->
    fun(C) ->
           C < 55296
           orelse
           C > 57343
           andalso
           C < 65534
           orelse
           C > 65535
           andalso
           C =< 1114111
    end;
enc_func(none) ->
    none;
enc_func(Fun) when is_function(Fun, 1) ->
    Fun;
enc_func(Term) ->
    error({badarg, Term}).

abstract(T, A, _E) when is_integer(T) ->
    {integer, A, T};
abstract(T, A, _E) when is_float(T) ->
    {float, A, T};
abstract(T, A, _E) when is_atom(T) ->
    {atom, A, T};
abstract([], A, _E) ->
    {nil, A};
abstract(B, A, _E) when is_bitstring(B) ->
    {bin, A,
     [ 
      abstract_byte(Byte, A) ||
          Byte <- bitstring_to_list(B)
     ]};
abstract([H | T], A, none = E) ->
    {cons, A, abstract(H, A, E), abstract(T, A, E)};
abstract(List, A, E) when is_list(List) ->
    abstract_list(List, [], A, E);
abstract(Tuple, A, E) when is_tuple(Tuple) ->
    {tuple, A, abstract_tuple_list(tuple_to_list(Tuple), A, E)};
abstract(Map, A, E) when is_map(Map) ->
    {map, A, abstract_map_fields(maps:to_list(Map), A, E)};
abstract(Fun, A, E) when is_function(Fun) ->
    case erlang:fun_info(Fun, type) of
        {type, external} ->
            Info = erlang:fun_info(Fun),
            {module, M} = lists:keyfind(module, 1, Info),
            {name, F} = lists:keyfind(name, 1, Info),
            {arity, Arity} = lists:keyfind(arity, 1, Info),
            {'fun', A,
             {function,
              abstract(M, A, E),
              abstract(F, A, E),
              abstract(Arity, A, E)}}
    end.

abstract_list([H | T], String, A, E) ->
    case
        is_integer(H)
        andalso
        H >= 0
        andalso
        E(H)
    of
        true ->
            abstract_list(T, [H | String], A, E);
        false ->
            AbstrList = {cons, A, abstract(H, A, E), abstract(T, A, E)},
            not_string(String, AbstrList, A)
    end;
abstract_list([], String, A, _E) ->
    {string, A, lists:reverse(String)};
abstract_list(T, String, A, E) ->
    not_string(String, abstract(T, A, E), A).

not_string([C | T], Result, A) ->
    not_string(T, {cons, A, {integer, A, C}, Result}, A);
not_string([], Result, _A) ->
    Result.

abstract_tuple_list([H | T], A, E) ->
    [abstract(H, A, E) | abstract_tuple_list(T, A, E)];
abstract_tuple_list([], _A, _E) ->
    [].

abstract_map_fields(Fs, A, E) ->
    [ 
     {map_field_assoc, A, abstract(K, A, E), abstract(V, A, E)} ||
         {K, V} <- Fs
    ].

abstract_byte(Byte, A) when is_integer(Byte) ->
    {bin_element, A, {integer, A, Byte}, default, default};
abstract_byte(Bits, A) ->
    Sz = bit_size(Bits),
    <<Val:Sz>> = Bits,
    {bin_element, A, {integer, A, Val}, {integer, A, Sz}, default}.

-spec tokens(AbsTerm) -> Tokens
                when AbsTerm :: abstract_expr(), Tokens :: [token()].

tokens(Abs) ->
    tokens(Abs, []).

-spec tokens(AbsTerm, MoreTokens) -> Tokens
                when
                    AbsTerm :: abstract_expr(),
                    MoreTokens :: [token()],
                    Tokens :: [token()].

tokens({char, A, C}, More) ->
    [{char, A, C} | More];
tokens({integer, A, N}, More) ->
    [{integer, A, N} | More];
tokens({float, A, F}, More) ->
    [{float, A, F} | More];
tokens({atom, Aa, A}, More) ->
    [{atom, Aa, A} | More];
tokens({var, A, V}, More) ->
    [{var, A, V} | More];
tokens({string, A, S}, More) ->
    [{string, A, S} | More];
tokens({nil, A}, More) ->
    [{'[', A}, {']', A} | More];
tokens({cons, A, Head, Tail}, More) ->
    [{'[', A} | tokens(Head, tokens_tail(Tail, More))];
tokens({tuple, A, []}, More) ->
    [{'{', A}, {'}', A} | More];
tokens({tuple, A, [E | Es]}, More) ->
    [{'{', A} | tokens(E, tokens_tuple(Es, element(2, E), More))];
tokens({map, A, []}, More) ->
    [{'#', A}, {'{', A}, {'}', A} | More];
tokens({map, A, [P | Ps]}, More) ->
    [{'#', A},
     {'{', A} |
     tokens(P, tokens_tuple(Ps, element(2, P), More))];
tokens({map_field_assoc, A, K, V}, More) ->
    tokens(K, [{'=>', A} | tokens(V, More)]).

tokens_tail({cons, A, Head, Tail}, More) ->
    [{',', A} | tokens(Head, tokens_tail(Tail, More))];
tokens_tail({nil, A}, More) ->
    [{']', A} | More];
tokens_tail(Other, More) ->
    A = element(2, Other),
    [{'|', A} | tokens(Other, [{']', A} | More])].

tokens_tuple([E | Es], Anno, More) ->
    [{',', Anno} | tokens(E, tokens_tuple(Es, element(2, E), More))];
tokens_tuple([], Anno, More) ->
    [{'}', Anno} | More].

inop_prec('=') ->
    {150, 100, 100};
inop_prec('!') ->
    {150, 100, 100};
inop_prec('orelse') ->
    {160, 150, 150};
inop_prec('andalso') ->
    {200, 160, 160};
inop_prec('==') ->
    {300, 200, 300};
inop_prec('/=') ->
    {300, 200, 300};
inop_prec('=<') ->
    {300, 200, 300};
inop_prec('<') ->
    {300, 200, 300};
inop_prec('>=') ->
    {300, 200, 300};
inop_prec('>') ->
    {300, 200, 300};
inop_prec('=:=') ->
    {300, 200, 300};
inop_prec('=/=') ->
    {300, 200, 300};
inop_prec('++') ->
    {400, 300, 300};
inop_prec('--') ->
    {400, 300, 300};
inop_prec('+') ->
    {400, 400, 500};
inop_prec('-') ->
    {400, 400, 500};
inop_prec('bor') ->
    {400, 400, 500};
inop_prec('bxor') ->
    {400, 400, 500};
inop_prec('bsl') ->
    {400, 400, 500};
inop_prec('bsr') ->
    {400, 400, 500};
inop_prec('or') ->
    {400, 400, 500};
inop_prec('xor') ->
    {400, 400, 500};
inop_prec('*') ->
    {500, 500, 600};
inop_prec('/') ->
    {500, 500, 600};
inop_prec('div') ->
    {500, 500, 600};
inop_prec('rem') ->
    {500, 500, 600};
inop_prec('band') ->
    {500, 500, 600};
inop_prec('and') ->
    {500, 500, 600};
inop_prec('#') ->
    {800, 700, 800};
inop_prec(':') ->
    {900, 800, 900};
inop_prec('.') ->
    {900, 900, 1000}.

-type pre_op() :: 'catch' | '+' | '-' | 'bnot' | 'not' | '#'.

-spec preop_prec(pre_op()) -> {0 | 600 | 700, 100 | 700 | 800}.

preop_prec('catch') ->
    {700, 100};
preop_prec('+') ->
    {600, 700};
preop_prec('-') ->
    {600, 700};
preop_prec('bnot') ->
    {600, 700};
preop_prec('not') ->
    {600, 700};
preop_prec('#') ->
    {700, 800}.

-spec func_prec() -> {800, 700}.

func_prec() ->
    {800, 700}.

-spec max_prec() -> 900.

max_prec() ->
    900.

-type prec() :: non_neg_integer().

-type type_inop() ::
          '::' | '|' | '..' | '+' | '-' | 'bor' | 'bxor' | 'bsl' |
          'bsr' | '*' | '/' | 'div' | 'rem' | 'band'.

-type type_preop() :: '+' | '-' | 'bnot' | '#'.

-spec type_inop_prec(type_inop()) -> {prec(), prec(), prec()}.

type_inop_prec('=') ->
    {150, 100, 100};
type_inop_prec('::') ->
    {150, 150, 160};
type_inop_prec('|') ->
    {180, 170, 170};
type_inop_prec('..') ->
    {300, 200, 300};
type_inop_prec('+') ->
    {400, 400, 500};
type_inop_prec('-') ->
    {400, 400, 500};
type_inop_prec('bor') ->
    {400, 400, 500};
type_inop_prec('bxor') ->
    {400, 400, 500};
type_inop_prec('bsl') ->
    {400, 400, 500};
type_inop_prec('bsr') ->
    {400, 400, 500};
type_inop_prec('*') ->
    {500, 500, 600};
type_inop_prec('/') ->
    {500, 500, 600};
type_inop_prec('div') ->
    {500, 500, 600};
type_inop_prec('rem') ->
    {500, 500, 600};
type_inop_prec('band') ->
    {500, 500, 600};
type_inop_prec('#') ->
    {800, 700, 800}.

-spec type_preop_prec(type_preop()) -> {prec(), prec()}.

type_preop_prec('+') ->
    {600, 700};
type_preop_prec('-') ->
    {600, 700};
type_preop_prec('bnot') ->
    {600, 700};
type_preop_prec('#') ->
    {700, 800}.

-type erl_parse_tree() ::
          abstract_clause() |
          abstract_expr() |
          abstract_form() |
          abstract_type().

-spec map_anno(Fun, Abstr) -> NewAbstr
                  when
                      Fun :: fun((Anno) -> NewAnno),
                      Anno :: erl_anno:anno(),
                      NewAnno :: erl_anno:anno(),
                      Abstr :: erl_parse_tree() | form_info(),
                      NewAbstr :: erl_parse_tree() | form_info().

map_anno(F0, Abstr) ->
    F = fun(A, Acc) ->
               {F0(A), Acc}
        end,
    {NewAbstr, []} = modify_anno1(Abstr, [], F),
    NewAbstr.

-spec fold_anno(Fun, Acc0, Abstr) -> Acc1
                   when
                       Fun :: fun((Anno, AccIn) -> AccOut),
                       Anno :: erl_anno:anno(),
                       Acc0 :: term(),
                       Acc1 :: term(),
                       AccIn :: term(),
                       AccOut :: term(),
                       Abstr :: erl_parse_tree() | form_info().

fold_anno(F0, Acc0, Abstr) ->
    F = fun(A, Acc) ->
               {A, F0(A, Acc)}
        end,
    {_, NewAcc} = modify_anno1(Abstr, Acc0, F),
    NewAcc.

-spec mapfold_anno(Fun, Acc0, Abstr) -> {NewAbstr, Acc1}
                      when
                          Fun :: fun((Anno, AccIn) -> {NewAnno, AccOut}),
                          Anno :: erl_anno:anno(),
                          NewAnno :: erl_anno:anno(),
                          Acc0 :: term(),
                          Acc1 :: term(),
                          AccIn :: term(),
                          AccOut :: term(),
                          Abstr :: erl_parse_tree() | form_info(),
                          NewAbstr :: erl_parse_tree() | form_info().

mapfold_anno(F, Acc0, Abstr) ->
    modify_anno1(Abstr, Acc0, F).

-spec new_anno(Term) -> Abstr
                  when
                      Term :: term(),
                      Abstr :: erl_parse_tree() | form_info().

new_anno(Term) ->
    F = fun(L, Acc) ->
               {erl_anno:new(L), Acc}
        end,
    {NewAbstr, []} = modify_anno1(Term, [], F),
    NewAbstr.

-spec anno_to_term(Abstr) -> term()
                      when Abstr :: erl_parse_tree() | form_info().

anno_to_term(Abstract) ->
    F = fun(Anno, Acc) ->
               {erl_anno:to_term(Anno), Acc}
        end,
    {NewAbstract, []} = modify_anno1(Abstract, [], F),
    NewAbstract.

-spec anno_from_term(Term) -> erl_parse_tree() | form_info()
                        when Term :: term().

anno_from_term(Term) ->
    F = fun(T, Acc) ->
               {erl_anno:from_term(T), Acc}
        end,
    {NewTerm, []} = modify_anno1(Term, [], F),
    NewTerm.

modify_anno1({function, F, A}, Ac, _Mf) ->
    {{function, F, A}, Ac};
modify_anno1({function, M, F, A}, Ac, Mf) ->
    {M1, Ac1} = modify_anno1(M, Ac, Mf),
    {F1, Ac2} = modify_anno1(F, Ac1, Mf),
    {A1, Ac3} = modify_anno1(A, Ac2, Mf),
    {{function, M1, F1, A1}, Ac3};
modify_anno1({attribute, A, record, {Name, Fields}}, Ac, Mf) ->
    {A1, Ac1} = Mf(A, Ac),
    {Fields1, Ac2} = modify_anno1(Fields, Ac1, Mf),
    {{attribute, A1, record, {Name, Fields1}}, Ac2};
modify_anno1({attribute, A, spec, {Fun, Types}}, Ac, Mf) ->
    {A1, Ac1} = Mf(A, Ac),
    {Types1, Ac2} = modify_anno1(Types, Ac1, Mf),
    {{attribute, A1, spec, {Fun, Types1}}, Ac2};
modify_anno1({attribute, A, callback, {Fun, Types}}, Ac, Mf) ->
    {A1, Ac1} = Mf(A, Ac),
    {Types1, Ac2} = modify_anno1(Types, Ac1, Mf),
    {{attribute, A1, callback, {Fun, Types1}}, Ac2};
modify_anno1({attribute, A, type, {TypeName, TypeDef, Args}}, Ac, Mf) ->
    {A1, Ac1} = Mf(A, Ac),
    {TypeDef1, Ac2} = modify_anno1(TypeDef, Ac1, Mf),
    {Args1, Ac3} = modify_anno1(Args, Ac2, Mf),
    {{attribute, A1, type, {TypeName, TypeDef1, Args1}}, Ac3};
modify_anno1({attribute, A, opaque, {TypeName, TypeDef, Args}}, Ac, Mf) ->
    {A1, Ac1} = Mf(A, Ac),
    {TypeDef1, Ac2} = modify_anno1(TypeDef, Ac1, Mf),
    {Args1, Ac3} = modify_anno1(Args, Ac2, Mf),
    {{attribute, A1, opaque, {TypeName, TypeDef1, Args1}}, Ac3};
modify_anno1({attribute, A, nominal, {TypeName, TypeDef, Args}}, Ac, Mf) ->
    {A1, Ac1} = Mf(A, Ac),
    {TypeDef1, Ac2} = modify_anno1(TypeDef, Ac1, Mf),
    {Args1, Ac3} = modify_anno1(Args, Ac2, Mf),
    {{attribute, A1, nominal, {TypeName, TypeDef1, Args1}}, Ac3};
modify_anno1({attribute, A, Attr, Val}, Ac, Mf) ->
    {A1, Ac1} = Mf(A, Ac),
    {{attribute, A1, Attr, Val}, Ac1};
modify_anno1({warning, W}, Ac, _Mf) ->
    {{warning, W}, Ac};
modify_anno1({error, W}, Ac, _Mf) ->
    {{error, W}, Ac};
modify_anno1({eof, L}, Ac, _Mf) ->
    {{eof, L}, Ac};
modify_anno1({clauses, Cs}, Ac, Mf) ->
    {Cs1, Ac1} = modify_anno1(Cs, Ac, Mf),
    {{clauses, Cs1}, Ac1};
modify_anno1({typed_record_field, Field, Type}, Ac, Mf) ->
    {Field1, Ac1} = modify_anno1(Field, Ac, Mf),
    {Type1, Ac2} = modify_anno1(Type, Ac1, Mf),
    {{typed_record_field, Field1, Type1}, Ac2};
modify_anno1({Tag, A}, Ac, Mf) ->
    {A1, Ac1} = Mf(A, Ac),
    {{Tag, A1}, Ac1};
modify_anno1({Tag, A, E1}, Ac, Mf) ->
    {A1, Ac1} = Mf(A, Ac),
    {E11, Ac2} = modify_anno1(E1, Ac1, Mf),
    {{Tag, A1, E11}, Ac2};
modify_anno1({Tag, A, E1, E2}, Ac, Mf) ->
    {A1, Ac1} = Mf(A, Ac),
    {E11, Ac2} = modify_anno1(E1, Ac1, Mf),
    {E21, Ac3} = modify_anno1(E2, Ac2, Mf),
    {{Tag, A1, E11, E21}, Ac3};
modify_anno1({bin_element, A, E1, E2, TSL}, Ac, Mf) ->
    {A1, Ac1} = Mf(A, Ac),
    {E11, Ac2} = modify_anno1(E1, Ac1, Mf),
    {E21, Ac3} = modify_anno1(E2, Ac2, Mf),
    {{bin_element, A1, E11, E21, TSL}, Ac3};
modify_anno1({Tag, A, E1, E2, E3}, Ac, Mf) ->
    {A1, Ac1} = Mf(A, Ac),
    {E11, Ac2} = modify_anno1(E1, Ac1, Mf),
    {E21, Ac3} = modify_anno1(E2, Ac2, Mf),
    {E31, Ac4} = modify_anno1(E3, Ac3, Mf),
    {{Tag, A1, E11, E21, E31}, Ac4};
modify_anno1({Tag, A, E1, E2, E3, E4}, Ac, Mf) ->
    {A1, Ac1} = Mf(A, Ac),
    {E11, Ac2} = modify_anno1(E1, Ac1, Mf),
    {E21, Ac3} = modify_anno1(E2, Ac2, Mf),
    {E31, Ac4} = modify_anno1(E3, Ac3, Mf),
    {E41, Ac5} = modify_anno1(E4, Ac4, Mf),
    {{Tag, A1, E11, E21, E31, E41}, Ac5};
modify_anno1([H | T], Ac, Mf) ->
    {H1, Ac1} = modify_anno1(H, Ac, Mf),
    {T1, Ac2} = modify_anno1(T, Ac1, Mf),
    {[H1 | T1], Ac2};
modify_anno1([], Ac, _Mf) ->
    {[], Ac};
modify_anno1(E, Ac, _Mf) when not is_tuple(E), not is_list(E) ->
    {E, Ac}.

build_ssa_check_label({atom, _, label}, Lbl) ->
    [label, Lbl];
build_ssa_check_label({atom, L, _}, _) ->
    return_error(L, "expected 'label'").

add_anno_check({check_expr, Loc, Args}, AnnoCheck) ->
    {check_expr, Loc, Args, AnnoCheck}.

-file("/buildroot/otp/bootstrap/lib/parsetools/include/yeccpre.hrl", 0).

-type yecc_ret() :: {error, _} | {ok, _}.

-spec parse(Tokens :: list()) -> yecc_ret().

parse(Tokens) ->
    yeccpars0(Tokens, {no_func, no_location}, 0, [], []).

-spec parse_and_scan({function() | {atom(), atom()}, [_]} |
                     {atom(), atom(), [_]}) ->
                        yecc_ret().

parse_and_scan({F, A}) ->
    yeccpars0([], {{F, A}, no_location}, 0, [], []);
parse_and_scan({M, F, A}) ->
    Arity = length(A),
    yeccpars0([], {{fun M:F/Arity, A}, no_location}, 0, [], []).

-spec format_error(any()) -> [char() | list()].

format_error(Message) ->
    case io_lib:deep_char_list(Message) of
        true ->
            Message;
        _ ->
            io_lib:write(Message)
    end.

-compile({nowarn_unused_function, {return_error, 2}}).

-spec return_error(erl_anno:location(), any()) -> no_return().

return_error(Location, Message) ->
    throw({error, {Location, erl_parse, Message}}).

yeccpars0(Tokens, Tzr, State, States, Vstack) ->
    try
        yeccpars1(Tokens, Tzr, State, States, Vstack)
    catch
        error:Error:Stacktrace ->
            try yecc_error_type(Error, Stacktrace) of
                Desc ->
                    erlang:raise(error,
                                 {yecc_bug, "1.4", Desc},
                                 Stacktrace)
            catch
                _:_ ->
                    erlang:raise(error, Error, Stacktrace)
            end;
        throw:{error, {_Location, erl_parse, _M}} = Error ->
            Error
    end.

yecc_error_type(function_clause, [{erl_parse, F, ArityOrArgs, _} | _]) ->
    case atom_to_list(F) of
        "yeccgoto_" ++ SymbolL ->
            {ok, [{atom, _, Symbol}], _} = erl_scan:string(SymbolL),
            State =
                case ArityOrArgs of
                    [S, _, _, _, _, _, _] ->
                        S;
                    _ ->
                        state_is_unknown
                end,
            {Symbol, State, missing_in_goto_table}
    end.

yeccpars1([Token | Tokens], Tzr, State, States, Vstack) ->
    yeccpars2(State,
              element(1, Token),
              States, Vstack, Token, Tokens, Tzr);
yeccpars1([], {{F, A}, _Location}, State, States, Vstack) ->
    case apply(F, A) of
        {ok, Tokens, EndLocation} ->
            yeccpars1(Tokens,
                      {{F, A}, EndLocation},
                      State, States, Vstack);
        {eof, EndLocation} ->
            yeccpars1([], {no_func, EndLocation}, State, States, Vstack);
        {error, Descriptor, _EndLocation} ->
            {error, Descriptor}
    end;
yeccpars1([], {no_func, no_location}, State, States, Vstack) ->
    Line = 999999,
    yeccpars2(State, '$end', States, Vstack,
              yecc_end(Line),
              [],
              {no_func, Line});
yeccpars1([], {no_func, EndLocation}, State, States, Vstack) ->
    yeccpars2(State, '$end', States, Vstack,
              yecc_end(EndLocation),
              [],
              {no_func, EndLocation}).

yeccpars1(State1, State, States, Vstack, Token0, [Token | Tokens], Tzr) ->
    yeccpars2(State,
              element(1, Token),
              [State1 | States],
              [Token0 | Vstack],
              Token, Tokens, Tzr);
yeccpars1(State1, State, States, Vstack, Token0, [],
          {{_F, _A}, _Location} = Tzr) ->
    yeccpars1([], Tzr, State, [State1 | States], [Token0 | Vstack]);
yeccpars1(State1, State, States, Vstack, Token0, [],
          {no_func, no_location}) ->
    Location = yecctoken_end_location(Token0),
    yeccpars2(State, '$end',
              [State1 | States],
              [Token0 | Vstack],
              yecc_end(Location),
              [],
              {no_func, Location});
yeccpars1(State1, State, States, Vstack, Token0, [],
          {no_func, Location}) ->
    yeccpars2(State, '$end',
              [State1 | States],
              [Token0 | Vstack],
              yecc_end(Location),
              [],
              {no_func, Location}).

yecc_end(Location) ->
    {'$end', Location}.

yecctoken_end_location(Token) ->
    try erl_anno:end_location(element(2, Token)) of
        undefined ->
            yecctoken_location(Token);
        Loc ->
            Loc
    catch
        _:_ ->
            yecctoken_location(Token)
    end.

-compile({nowarn_unused_function, {yeccerror, 1}}).

yeccerror(Token) ->
    Text = yecctoken_to_string(Token),
    Location = yecctoken_location(Token),
    {error, {Location, erl_parse, ["syntax error before: ", Text]}}.

-compile({nowarn_unused_function, {yecctoken_to_string, 1}}).

yecctoken_to_string(Token) ->
    try erl_scan:text(Token) of
        undefined ->
            yecctoken2string(Token);
        Txt ->
            Txt
    catch
        _:_ ->
            yecctoken2string(Token)
    end.

yecctoken_location(Token) ->
    try
        erl_scan:location(Token)
    catch
        _:_ ->
            element(2, Token)
    end.

-compile({nowarn_unused_function, {yecctoken2string, 1}}).

yecctoken2string(Token) ->
    try
        yecctoken2string1(Token)
    catch
        _:_ ->
            io_lib:format("~tp", [Token])
    end.

-compile({nowarn_unused_function, {yecctoken2string1, 1}}).

yecctoken2string1({atom, _, A}) ->
    io_lib:write_atom(A);
yecctoken2string1({integer, _, N}) ->
    io_lib:write(N);
yecctoken2string1({float, _, F}) ->
    io_lib:write(F);
yecctoken2string1({char, _, C}) ->
    io_lib:write_char(C);
yecctoken2string1({var, _, V}) ->
    io_lib:format("~s", [V]);
yecctoken2string1({string, _, S}) ->
    io_lib:write_string(S);
yecctoken2string1({reserved_symbol, _, A}) ->
    io_lib:write(A);
yecctoken2string1({_Cat, _, Val}) ->
    io_lib:format("~tp", [Val]);
yecctoken2string1({dot, _}) ->
    "'.'";
yecctoken2string1({'$end', _}) ->
    [];
yecctoken2string1({Other, _}) when is_atom(Other) ->
    io_lib:write_atom(Other);
yecctoken2string1(Other) ->
    io_lib:format("~tp", [Other]).

-file("erl_parse.erl", 1784).

-dialyzer({nowarn_function, {yeccpars2, 7}}).

-compile({nowarn_unused_function, {yeccpars2, 7}}).

yeccpars2(0 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_0(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(6 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_6(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(7 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_7(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(10 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_10(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(23 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_23(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(24 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_15(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(25 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_25(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(26 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_26(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(27 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_27(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(28 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_28(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(29 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_29(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(30 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_30(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(31 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_31(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(32 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_32(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(33 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_33(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(34 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_34(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(35 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_35(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(36 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_36(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(37 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_37(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(38 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_38(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(39 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_39(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(63 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_63(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(64 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(65 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_28(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(66 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_29(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(67 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(68 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(69 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(70 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_70(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(71 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(72 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(73 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_73(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(74 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(75 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_75(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(76 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_76(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(79 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(80 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_80(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(81 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(85 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(93 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(94 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_94(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(95 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_95(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(96 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_96(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(97 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_97(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(98 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_98(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(99 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_99(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(100 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_100(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(101 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_101(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(102 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(103 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_103(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(104 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_104(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(105 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_105(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(106 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_106(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(107 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_107(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(108 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_108(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(109 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_109(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(110 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(111 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_111(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(112 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_112(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(113 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_113(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(114 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_114(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(115 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_115(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(116 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_116(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(117 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_117(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(118 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(119 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_119(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(120 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(121 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_121(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(124 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(132 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_132(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(137 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_137(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(139 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_139(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(140 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_140(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(142 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_142(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(143 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_143(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(144 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_144(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(147 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_147(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(148 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_148(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(149 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_149(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(150 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_150(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(152 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_152(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(153 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_153(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(154 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_154(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(161 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_161(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(162 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_162(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(163 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_163(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(164 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_164(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(165 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_165(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(166 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_166(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(167 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_167(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(168 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_168(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(169 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_169(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(170 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_170(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(171 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_171(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(173 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_173(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(174 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_174(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(175 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_175(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(176 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_176(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(177 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_177(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(178 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_178(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(179 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_179(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(180 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_180(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(181 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_181(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(182 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_182(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(183 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_183(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(184 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_184(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(185 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_185(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(186 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_186(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(189 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_189(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(190 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_190(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(191 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_191(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(192 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_192(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(195 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_195(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(198 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_198(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(199 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_199(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(200 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_200(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(201 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_201(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(202 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_202(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(205 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_205(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(206 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_206(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(207 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_207(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(208 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_208(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(213 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_213(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(214 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_214(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(215 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_215(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(216 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_216(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(217 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_217(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(218 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_218(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(219 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_219(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(220 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_220(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(223 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_223(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(224 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_224(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(226 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_226(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(229 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_229(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(230 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_224(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(231 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_224(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(234 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_234(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(235 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_235(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(237 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_237(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(238 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_238(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(239 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_224(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(241 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_224(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(243 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_243(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(244 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_244(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(246 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_246(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(247 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_247(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(249 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_249(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(250 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_250(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(252 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_144(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(253 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_253(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(256 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_256(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(257 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_192(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(259 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_253(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(261 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_261(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(263 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_144(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(265 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_265(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(267 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_267(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(268 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_268(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(269 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_269(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(270 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_270(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(272 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_272(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(273 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_273(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(274 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_274(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(275 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_275(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(276 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_276(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(277 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_144(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(279 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_279(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(288 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_288(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(289 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_289(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(290 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_15(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(297 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_297(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(298 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_15(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(300 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_300(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(307 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_15(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(314 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_80(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(316 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(317 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_317(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(319 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_319(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(321 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_321(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(323 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(326 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_326(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(327 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(328 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_328(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(331 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_331(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(335 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(336 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(339 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(341 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(342 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_342(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(344 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_344(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(349 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(351 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_351(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(356 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_356(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(357 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_357(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(361 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_361(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(362 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_362(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(363 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_363(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(365 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_365(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(366 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_366(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(367 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_367(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(369 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_369(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(370 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_370(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(371 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_371(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(373 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_7(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(374 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_374(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(379 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(381 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_381(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(383 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_383(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(385 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_385(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(387 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(388 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_388(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(389 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(390 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(398 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(399 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(402 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(403 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(406 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(407 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(411 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_411(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(412 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(413 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(416 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(418 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(421 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_421(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(429 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_429(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(430 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_430(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(431 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(435 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(437 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_437(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(438 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(440 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_440(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(443 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_443(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(445 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_424(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(449 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_449(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(452 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_452(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(453 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_453(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(454 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_454(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(455 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_449(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(457 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(459 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_459(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(462 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_462(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(464 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_464(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(465 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_465(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(471 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_471(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(472 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(475 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_475(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(477 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_477(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(478 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_478(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(481 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_481(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(482 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_482(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(483 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_483(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(484 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(486 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(488 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_488(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(490 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_490(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(491 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_491(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(492 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(494 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_494(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(495 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_424(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(496 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(498 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_498(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(501 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_501(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(502 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_465(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(504 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_504(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(505 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_505(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(507 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_507(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(509 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_509(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(510 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_510(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(511 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_511(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(512 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(514 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_514(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(515 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_515(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(518 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_518(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(519 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_519(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(521 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_521(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(522 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_522(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(524 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_524(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(525 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_525(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(528 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_528(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(530 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_530(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(532 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_532(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(533 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_533(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(534 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_15(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(536 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_536(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(540 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_540(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(541 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_541(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(542 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_541(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(545 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_545(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(546 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_546(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(547 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_547(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(548 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_548(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(553 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_553(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(559 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_559(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(560 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_560(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(561 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_561(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(562 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_562(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(563 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_563(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(564 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_564(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(565 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_565(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(566 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_566(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(567 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_567(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(568 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_568(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(569 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_569(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(570 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_570(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(572 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_572(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(573 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_573(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(574 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_560(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(576 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_576(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(578 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_578(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(579 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_579(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(580 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_580(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(581 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_581(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(582 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_582(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(583 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_583(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(585 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_585(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(586 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_586(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(588 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_588(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(589 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_589(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(591 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_591(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(592 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_592(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(593 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_593(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(594 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_594(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(595 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_595(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(598 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_598(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(599 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_599(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(600 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_600(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(602 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_602(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(603 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_557(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(605 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_605(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(608 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_557(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(612 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_612(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(613 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_613(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(615 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_615(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(616 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_616(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(617 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_617(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(618 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_618(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(619 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_619(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(620 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_620(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(621 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_560(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(623 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_560(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(626 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_626(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(627 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_627(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(628 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_628(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(632 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_632(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(633 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_560(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(635 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_635(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(636 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_560(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(637 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_560(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(640 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_640(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(643 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_643(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(644 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_644(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(645 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_560(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(647 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_647(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(649 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_649(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(651 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_560(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(653 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_653(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(654 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_560(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(656 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_560(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(658 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_658(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(661 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_661(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(662 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_662(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(663 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_560(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(665 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_560(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(667 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_667(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(668 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_658(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(670 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_544(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(672 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_672(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(678 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(681 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_681(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(682 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_560(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(686 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_39(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(690 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(691 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_560(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(694 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(697 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_697(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(698 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_698(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(699 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_699(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(700 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_681(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(702 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_702(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(703 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_703(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(704 = S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_704(S, Cat, Ss, Stack, T, Ts, Tzr);
yeccpars2(Other, _, _, _, _, _, _) ->
    error({yecc_bug, "1.4", {missing_state_in_action_table, Other}}).

-dialyzer({nowarn_function, {yeccpars2_0, 7}}).

-compile({nowarn_unused_function, {yeccpars2_0, 7}}).

yeccpars2_0(S, '-', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 6, Ss, Stack, T, Ts, Tzr);
yeccpars2_0(S, atom, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 7, Ss, Stack, T, Ts, Tzr);
yeccpars2_0(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_1, 7}}).

-compile({nowarn_unused_function, {yeccpars2_1, 7}}).

yeccpars2_1(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_1_(Stack),
    yeccgoto_function(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_2, 7}}).

-compile({nowarn_unused_function, {yeccpars2_2, 7}}).

yeccpars2_2(S, ';', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 704, Ss, Stack, T, Ts, Tzr);
yeccpars2_2(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_2_(Stack),
    yeccgoto_function_clauses(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_3, 7}}).

-compile({nowarn_unused_function, {yeccpars2_3, 7}}).

yeccpars2_3(S, dot, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 703, Ss, Stack, T, Ts, Tzr);
yeccpars2_3(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_4, 7}}).

-compile({nowarn_unused_function, {yeccpars2_4, 7}}).

yeccpars2_4(_S, '$end', _Ss, Stack, _T, _Ts, _Tzr) ->
    {ok, hd(Stack)};
yeccpars2_4(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_5, 7}}).

-compile({nowarn_unused_function, {yeccpars2_5, 7}}).

yeccpars2_5(S, dot, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 702, Ss, Stack, T, Ts, Tzr);
yeccpars2_5(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_6, 7}}).

-compile({nowarn_unused_function, {yeccpars2_6, 7}}).

yeccpars2_6(S, atom, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 540, Ss, Stack, T, Ts, Tzr);
yeccpars2_6(S, callback, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 541, Ss, Stack, T, Ts, Tzr);
yeccpars2_6(S, spec, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 542, Ss, Stack, T, Ts, Tzr);
yeccpars2_6(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_7, 7}}).

-compile({nowarn_unused_function, {yeccpars2_7, 7}}).

yeccpars2_7(S, '(', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 10, Ss, Stack, T, Ts, Tzr);
yeccpars2_7(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_8, 7}}).

-compile({nowarn_unused_function, {yeccpars2_8, 7}}).

yeccpars2_8(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_8_(Stack),
    yeccgoto_clause_args(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_9, 7}}).

-compile({nowarn_unused_function, {yeccpars2_9, 7}}).

yeccpars2_9(S, 'when', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 120, Ss, Stack, T, Ts, Tzr);
yeccpars2_9(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_9_(Stack),
    yeccpars2_91(538, Cat, [9 | Ss], NewStack, T, Ts, Tzr).

yeccpars2_10(S, '#', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 23, Ss, Stack, T, Ts, Tzr);
yeccpars2_10(S, '(', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 24, Ss, Stack, T, Ts, Tzr);
yeccpars2_10(S, ')', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 25, Ss, Stack, T, Ts, Tzr);
yeccpars2_10(S, '+', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 26, Ss, Stack, T, Ts, Tzr);
yeccpars2_10(S, '-', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 27, Ss, Stack, T, Ts, Tzr);
yeccpars2_10(S, '<<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 28, Ss, Stack, T, Ts, Tzr);
yeccpars2_10(S, '[', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 29, Ss, Stack, T, Ts, Tzr);
yeccpars2_10(S, atom, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 30, Ss, Stack, T, Ts, Tzr);
yeccpars2_10(S, 'bnot', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 31, Ss, Stack, T, Ts, Tzr);
yeccpars2_10(S, 'not', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 35, Ss, Stack, T, Ts, Tzr);
yeccpars2_10(S, var, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 38, Ss, Stack, T, Ts, Tzr);
yeccpars2_10(S, '{', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 39, Ss, Stack, T, Ts, Tzr);
yeccpars2_10(S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_cont_10(S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_10, 7}}).

-compile({nowarn_unused_function, {yeccpars2_10, 7}}).

yeccpars2_cont_10(S, char, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 32, Ss, Stack, T, Ts, Tzr);
yeccpars2_cont_10(S, float, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 33, Ss, Stack, T, Ts, Tzr);
yeccpars2_cont_10(S, integer, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 34, Ss, Stack, T, Ts, Tzr);
yeccpars2_cont_10(S, sigil_prefix, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 36, Ss, Stack, T, Ts, Tzr);
yeccpars2_cont_10(S, string, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 37, Ss, Stack, T, Ts, Tzr);
yeccpars2_cont_10(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_11, 7}}).

-compile({nowarn_unused_function, {yeccpars2_11, 7}}).

yeccpars2_11(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_11_(Stack),
    yeccgoto_pat_expr_max(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_12, 7}}).

-compile({nowarn_unused_function, {yeccpars2_12, 7}}).

yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_12_(Stack),
    yeccgoto_atomic(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_13, 7}}).

-compile({nowarn_unused_function, {yeccpars2_13, 7}}).

yeccpars2_13(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_13_(Stack),
    yeccgoto_pat_expr_max(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_14, 7}}).

-compile({nowarn_unused_function, {yeccpars2_14, 7}}).

yeccpars2_14(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_14_(Stack),
    yeccgoto_pat_expr(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

yeccpars2_15(S, '#', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 23, Ss, Stack, T, Ts, Tzr);
yeccpars2_15(S, '(', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 24, Ss, Stack, T, Ts, Tzr);
yeccpars2_15(S, '+', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 26, Ss, Stack, T, Ts, Tzr);
yeccpars2_15(S, '-', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 27, Ss, Stack, T, Ts, Tzr);
yeccpars2_15(S, '<<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 28, Ss, Stack, T, Ts, Tzr);
yeccpars2_15(S, '[', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 29, Ss, Stack, T, Ts, Tzr);
yeccpars2_15(S, atom, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 30, Ss, Stack, T, Ts, Tzr);
yeccpars2_15(S, 'bnot', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 31, Ss, Stack, T, Ts, Tzr);
yeccpars2_15(S, 'not', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 35, Ss, Stack, T, Ts, Tzr);
yeccpars2_15(S, var, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 38, Ss, Stack, T, Ts, Tzr);
yeccpars2_15(S, '{', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 39, Ss, Stack, T, Ts, Tzr);
yeccpars2_15(S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_cont_10(S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_16, 7}}).

-compile({nowarn_unused_function, {yeccpars2_16, 7}}).

yeccpars2_16(S, ')', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 536, Ss, Stack, T, Ts, Tzr);
yeccpars2_16(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_17, 7}}).

-compile({nowarn_unused_function, {yeccpars2_17, 7}}).

yeccpars2_17(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_17_(Stack),
    yeccgoto_pat_expr(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_18, 7}}).

-compile({nowarn_unused_function, {yeccpars2_18, 7}}).

yeccpars2_18(S, '*', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 94, Ss, Stack, T, Ts, Tzr);
yeccpars2_18(S, '+', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 95, Ss, Stack, T, Ts, Tzr);
yeccpars2_18(S, '++', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 96, Ss, Stack, T, Ts, Tzr);
yeccpars2_18(S, ',', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 534, Ss, Stack, T, Ts, Tzr);
yeccpars2_18(S, '-', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 97, Ss, Stack, T, Ts, Tzr);
yeccpars2_18(S, '--', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 98, Ss, Stack, T, Ts, Tzr);
yeccpars2_18(S, '/', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 99, Ss, Stack, T, Ts, Tzr);
yeccpars2_18(S, '/=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 100, Ss, Stack, T, Ts, Tzr);
yeccpars2_18(S, '<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 101, Ss, Stack, T, Ts, Tzr);
yeccpars2_18(S, '=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 298, Ss, Stack, T, Ts, Tzr);
yeccpars2_18(S, '=/=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 103, Ss, Stack, T, Ts, Tzr);
yeccpars2_18(S, '=:=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 104, Ss, Stack, T, Ts, Tzr);
yeccpars2_18(S, '=<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 105, Ss, Stack, T, Ts, Tzr);
yeccpars2_18(S, '==', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 106, Ss, Stack, T, Ts, Tzr);
yeccpars2_18(S, '>', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 107, Ss, Stack, T, Ts, Tzr);
yeccpars2_18(S, '>=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 108, Ss, Stack, T, Ts, Tzr);
yeccpars2_18(S, 'and', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 109, Ss, Stack, T, Ts, Tzr);
yeccpars2_18(S, 'band', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 111, Ss, Stack, T, Ts, Tzr);
yeccpars2_18(S, 'bor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 112, Ss, Stack, T, Ts, Tzr);
yeccpars2_18(S, 'bsl', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 113, Ss, Stack, T, Ts, Tzr);
yeccpars2_18(S, 'bsr', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 114, Ss, Stack, T, Ts, Tzr);
yeccpars2_18(S, 'bxor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 115, Ss, Stack, T, Ts, Tzr);
yeccpars2_18(S, 'div', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 116, Ss, Stack, T, Ts, Tzr);
yeccpars2_18(S, 'or', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 117, Ss, Stack, T, Ts, Tzr);
yeccpars2_18(S, 'rem', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 119, Ss, Stack, T, Ts, Tzr);
yeccpars2_18(S, 'xor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 121, Ss, Stack, T, Ts, Tzr);
yeccpars2_18(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_18_(Stack),
    yeccgoto_pat_exprs(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_19, 7}}).

-compile({nowarn_unused_function, {yeccpars2_19, 7}}).

yeccpars2_19(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_19_(Stack),
    yeccgoto_pat_expr(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_20, 7}}).

-compile({nowarn_unused_function, {yeccpars2_20, 7}}).

yeccpars2_20(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_20_(Stack),
    yeccgoto_pat_expr_max(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_21, 7}}).

-compile({nowarn_unused_function, {yeccpars2_21, 7}}).

yeccpars2_21(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_21_(Stack),
    yeccgoto_pat_expr_max(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_22, 7}}).

-compile({nowarn_unused_function, {yeccpars2_22, 7}}).

yeccpars2_22(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_22_(Stack),
    yeccgoto_pat_expr_max(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_23, 7}}).

-compile({nowarn_unused_function, {yeccpars2_23, 7}}).

yeccpars2_23(S, atom, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 530, Ss, Stack, T, Ts, Tzr);
yeccpars2_23(S, '{', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 502, Ss, Stack, T, Ts, Tzr);
yeccpars2_23(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_25, 7}}).

-compile({nowarn_unused_function, {yeccpars2_25, 7}}).

yeccpars2_25(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_ | Nss] = Ss,
    NewStack = yeccpars2_25_(Stack),
    yeccgoto_pat_argument_list(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_26, 7}}).

-compile({nowarn_unused_function, {yeccpars2_26, 7}}).

yeccpars2_26(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_26_(Stack),
    yeccgoto_prefix_op(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_27, 7}}).

-compile({nowarn_unused_function, {yeccpars2_27, 7}}).

yeccpars2_27(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_27_(Stack),
    yeccgoto_prefix_op(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

yeccpars2_28(S, '#', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 429, Ss, Stack, T, Ts, Tzr);
yeccpars2_28(S, '(', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 64, Ss, Stack, T, Ts, Tzr);
yeccpars2_28(S, '+', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 26, Ss, Stack, T, Ts, Tzr);
yeccpars2_28(S, '-', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 27, Ss, Stack, T, Ts, Tzr);
yeccpars2_28(S, '>>', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 430, Ss, Stack, T, Ts, Tzr);
yeccpars2_28(S, atom, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 30, Ss, Stack, T, Ts, Tzr);
yeccpars2_28(S, 'bnot', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 31, Ss, Stack, T, Ts, Tzr);
yeccpars2_28(S, char, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 32, Ss, Stack, T, Ts, Tzr);
yeccpars2_28(S, float, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 33, Ss, Stack, T, Ts, Tzr);
yeccpars2_28(S, integer, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 34, Ss, Stack, T, Ts, Tzr);
yeccpars2_28(S, 'not', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 35, Ss, Stack, T, Ts, Tzr);
yeccpars2_28(S, sigil_prefix, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 36, Ss, Stack, T, Ts, Tzr);
yeccpars2_28(S, string, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 37, Ss, Stack, T, Ts, Tzr);
yeccpars2_28(S, '{', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 39, Ss, Stack, T, Ts, Tzr);
yeccpars2_28(S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_cont_28(S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_28, 7}}).

-compile({nowarn_unused_function, {yeccpars2_28, 7}}).

yeccpars2_cont_28(S, '<<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 65, Ss, Stack, T, Ts, Tzr);
yeccpars2_cont_28(S, '[', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 66, Ss, Stack, T, Ts, Tzr);
yeccpars2_cont_28(S, 'begin', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 67, Ss, Stack, T, Ts, Tzr);
yeccpars2_cont_28(S, 'case', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 68, Ss, Stack, T, Ts, Tzr);
yeccpars2_cont_28(S, 'fun', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 70, Ss, Stack, T, Ts, Tzr);
yeccpars2_cont_28(S, 'if', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 71, Ss, Stack, T, Ts, Tzr);
yeccpars2_cont_28(S, 'maybe', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 72, Ss, Stack, T, Ts, Tzr);
yeccpars2_cont_28(S, 'receive', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 73, Ss, Stack, T, Ts, Tzr);
yeccpars2_cont_28(S, 'try', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 74, Ss, Stack, T, Ts, Tzr);
yeccpars2_cont_28(S, var, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 75, Ss, Stack, T, Ts, Tzr);
yeccpars2_cont_28(_, _, _, _, T, _, _) ->
    yeccerror(T).

yeccpars2_29(S, '#', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 63, Ss, Stack, T, Ts, Tzr);
yeccpars2_29(S, '(', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 64, Ss, Stack, T, Ts, Tzr);
yeccpars2_29(S, '+', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 26, Ss, Stack, T, Ts, Tzr);
yeccpars2_29(S, '-', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 27, Ss, Stack, T, Ts, Tzr);
yeccpars2_29(S, ']', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 385, Ss, Stack, T, Ts, Tzr);
yeccpars2_29(S, atom, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 30, Ss, Stack, T, Ts, Tzr);
yeccpars2_29(S, 'bnot', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 31, Ss, Stack, T, Ts, Tzr);
yeccpars2_29(S, 'catch', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 69, Ss, Stack, T, Ts, Tzr);
yeccpars2_29(S, char, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 32, Ss, Stack, T, Ts, Tzr);
yeccpars2_29(S, float, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 33, Ss, Stack, T, Ts, Tzr);
yeccpars2_29(S, integer, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 34, Ss, Stack, T, Ts, Tzr);
yeccpars2_29(S, 'not', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 35, Ss, Stack, T, Ts, Tzr);
yeccpars2_29(S, sigil_prefix, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 36, Ss, Stack, T, Ts, Tzr);
yeccpars2_29(S, string, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 37, Ss, Stack, T, Ts, Tzr);
yeccpars2_29(S, '{', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 39, Ss, Stack, T, Ts, Tzr);
yeccpars2_29(S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_cont_28(S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_30, 7}}).

-compile({nowarn_unused_function, {yeccpars2_30, 7}}).

yeccpars2_30(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_30_(Stack),
    yeccgoto_atomic(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_31, 7}}).

-compile({nowarn_unused_function, {yeccpars2_31, 7}}).

yeccpars2_31(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_31_(Stack),
    yeccgoto_prefix_op(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_32, 7}}).

-compile({nowarn_unused_function, {yeccpars2_32, 7}}).

yeccpars2_32(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_32_(Stack),
    yeccgoto_atomic(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_33, 7}}).

-compile({nowarn_unused_function, {yeccpars2_33, 7}}).

yeccpars2_33(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_33_(Stack),
    yeccgoto_atomic(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_34, 7}}).

-compile({nowarn_unused_function, {yeccpars2_34, 7}}).

yeccpars2_34(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_34_(Stack),
    yeccgoto_atomic(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_35, 7}}).

-compile({nowarn_unused_function, {yeccpars2_35, 7}}).

yeccpars2_35(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_35_(Stack),
    yeccgoto_prefix_op(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_36, 7}}).

-compile({nowarn_unused_function, {yeccpars2_36, 7}}).

yeccpars2_36(S, string, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 524, Ss, Stack, T, Ts, Tzr);
yeccpars2_36(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_37, 7}}).

-compile({nowarn_unused_function, {yeccpars2_37, 7}}).

yeccpars2_37(S, string, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 37, Ss, Stack, T, Ts, Tzr);
yeccpars2_37(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_37_(Stack),
    yeccgoto_strings(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_38, 7}}).

-compile({nowarn_unused_function, {yeccpars2_38, 7}}).

yeccpars2_38(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_38_(Stack),
    yeccgoto_pat_expr_max(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

yeccpars2_39(S, '#', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 63, Ss, Stack, T, Ts, Tzr);
yeccpars2_39(S, '(', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 64, Ss, Stack, T, Ts, Tzr);
yeccpars2_39(S, '+', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 26, Ss, Stack, T, Ts, Tzr);
yeccpars2_39(S, '-', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 27, Ss, Stack, T, Ts, Tzr);
yeccpars2_39(S, atom, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 30, Ss, Stack, T, Ts, Tzr);
yeccpars2_39(S, 'bnot', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 31, Ss, Stack, T, Ts, Tzr);
yeccpars2_39(S, 'catch', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 69, Ss, Stack, T, Ts, Tzr);
yeccpars2_39(S, char, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 32, Ss, Stack, T, Ts, Tzr);
yeccpars2_39(S, float, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 33, Ss, Stack, T, Ts, Tzr);
yeccpars2_39(S, integer, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 34, Ss, Stack, T, Ts, Tzr);
yeccpars2_39(S, 'not', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 35, Ss, Stack, T, Ts, Tzr);
yeccpars2_39(S, sigil_prefix, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 36, Ss, Stack, T, Ts, Tzr);
yeccpars2_39(S, string, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 37, Ss, Stack, T, Ts, Tzr);
yeccpars2_39(S, '{', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 39, Ss, Stack, T, Ts, Tzr);
yeccpars2_39(S, '}', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 76, Ss, Stack, T, Ts, Tzr);
yeccpars2_39(S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_cont_28(S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_40, 7}}).

-compile({nowarn_unused_function, {yeccpars2_40, 7}}).

yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_40_(Stack),
    yeccgoto_expr_max(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_41, 7}}).

-compile({nowarn_unused_function, {yeccpars2_41, 7}}).

yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_41_(Stack),
    yeccgoto_expr_max(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_42, 7}}).

-compile({nowarn_unused_function, {yeccpars2_42, 7}}).

yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_42_(Stack),
    yeccgoto_expr_max(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_43, 7}}).

-compile({nowarn_unused_function, {yeccpars2_43, 7}}).

yeccpars2_43(S, '#', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 518, Ss, Stack, T, Ts, Tzr);
yeccpars2_43(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_43_(Stack),
    yeccgoto_expr(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_44, 7}}).

-compile({nowarn_unused_function, {yeccpars2_44, 7}}).

yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_44_(Stack),
    yeccgoto_expr_max(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

yeccpars2_45(S, '#', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 63, Ss, Stack, T, Ts, Tzr);
yeccpars2_45(S, '(', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 64, Ss, Stack, T, Ts, Tzr);
yeccpars2_45(S, '+', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 26, Ss, Stack, T, Ts, Tzr);
yeccpars2_45(S, '-', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 27, Ss, Stack, T, Ts, Tzr);
yeccpars2_45(S, atom, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 30, Ss, Stack, T, Ts, Tzr);
yeccpars2_45(S, 'bnot', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 31, Ss, Stack, T, Ts, Tzr);
yeccpars2_45(S, 'catch', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 69, Ss, Stack, T, Ts, Tzr);
yeccpars2_45(S, char, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 32, Ss, Stack, T, Ts, Tzr);
yeccpars2_45(S, float, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 33, Ss, Stack, T, Ts, Tzr);
yeccpars2_45(S, integer, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 34, Ss, Stack, T, Ts, Tzr);
yeccpars2_45(S, 'not', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 35, Ss, Stack, T, Ts, Tzr);
yeccpars2_45(S, sigil_prefix, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 36, Ss, Stack, T, Ts, Tzr);
yeccpars2_45(S, string, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 37, Ss, Stack, T, Ts, Tzr);
yeccpars2_45(S, '{', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 39, Ss, Stack, T, Ts, Tzr);
yeccpars2_45(S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_cont_28(S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_46, 7}}).

-compile({nowarn_unused_function, {yeccpars2_46, 7}}).

yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_46_(Stack),
    yeccgoto_expr_max(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_47, 7}}).

-compile({nowarn_unused_function, {yeccpars2_47, 7}}).

yeccpars2_47(S, '#', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 515, Ss, Stack, T, Ts, Tzr);
yeccpars2_47(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_47_(Stack),
    yeccgoto_expr(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_48, 7}}).

-compile({nowarn_unused_function, {yeccpars2_48, 7}}).

yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_48_(Stack),
    yeccgoto_expr_max(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_49, 7}}).

-compile({nowarn_unused_function, {yeccpars2_49, 7}}).

yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_49_(Stack),
    yeccgoto_expr_max(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_50, 7}}).

-compile({nowarn_unused_function, {yeccpars2_50, 7}}).

yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_50_(Stack),
    yeccgoto_expr_max(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_51, 7}}).

-compile({nowarn_unused_function, {yeccpars2_51, 7}}).

yeccpars2_51(S, '[', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 512, Ss, Stack, T, Ts, Tzr);
yeccpars2_51(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_51_(Stack),
    yeccgoto_expr(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_52, 7}}).

-compile({nowarn_unused_function, {yeccpars2_52, 7}}).

yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_52_(Stack),
    yeccgoto_expr_max(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_53, 7}}).

-compile({nowarn_unused_function, {yeccpars2_53, 7}}).

yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_53_(Stack),
    yeccgoto_expr(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_54, 7}}).

-compile({nowarn_unused_function, {yeccpars2_54, 7}}).

yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_54_(Stack),
    yeccgoto_expr_max(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_55, 7}}).

-compile({nowarn_unused_function, {yeccpars2_55, 7}}).

yeccpars2_55(S, '}', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 511, Ss, Stack, T, Ts, Tzr);
yeccpars2_55(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_56, 7}}).

-compile({nowarn_unused_function, {yeccpars2_56, 7}}).

yeccpars2_56(S, '(', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 507, Ss, Stack, T, Ts, Tzr);
yeccpars2_56(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_56_(Stack),
    yeccgoto_expr(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_57, 7}}).

-compile({nowarn_unused_function, {yeccpars2_57, 7}}).

yeccpars2_57(S, '#', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 494, Ss, Stack, T, Ts, Tzr);
yeccpars2_57(S, ':', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 495, Ss, Stack, T, Ts, Tzr);
yeccpars2_57(S, '[', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 496, Ss, Stack, T, Ts, Tzr);
yeccpars2_57(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_57_(Stack),
    yeccgoto_expr_remote(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_58, 7}}).

-compile({nowarn_unused_function, {yeccpars2_58, 7}}).

yeccpars2_58(S, '!', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 93, Ss, Stack, T, Ts, Tzr);
yeccpars2_58(S, '*', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 94, Ss, Stack, T, Ts, Tzr);
yeccpars2_58(S, '+', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 95, Ss, Stack, T, Ts, Tzr);
yeccpars2_58(S, '++', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 96, Ss, Stack, T, Ts, Tzr);
yeccpars2_58(S, ',', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 492, Ss, Stack, T, Ts, Tzr);
yeccpars2_58(S, '-', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 97, Ss, Stack, T, Ts, Tzr);
yeccpars2_58(S, '--', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 98, Ss, Stack, T, Ts, Tzr);
yeccpars2_58(S, '/', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 99, Ss, Stack, T, Ts, Tzr);
yeccpars2_58(S, '/=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 100, Ss, Stack, T, Ts, Tzr);
yeccpars2_58(S, '<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 101, Ss, Stack, T, Ts, Tzr);
yeccpars2_58(S, '=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 102, Ss, Stack, T, Ts, Tzr);
yeccpars2_58(S, '=/=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 103, Ss, Stack, T, Ts, Tzr);
yeccpars2_58(S, '=:=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 104, Ss, Stack, T, Ts, Tzr);
yeccpars2_58(S, '=<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 105, Ss, Stack, T, Ts, Tzr);
yeccpars2_58(S, '==', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 106, Ss, Stack, T, Ts, Tzr);
yeccpars2_58(S, '>', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 107, Ss, Stack, T, Ts, Tzr);
yeccpars2_58(S, '>=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 108, Ss, Stack, T, Ts, Tzr);
yeccpars2_58(S, 'and', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 109, Ss, Stack, T, Ts, Tzr);
yeccpars2_58(S, 'andalso', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 110, Ss, Stack, T, Ts, Tzr);
yeccpars2_58(S, 'band', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 111, Ss, Stack, T, Ts, Tzr);
yeccpars2_58(S, 'bor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 112, Ss, Stack, T, Ts, Tzr);
yeccpars2_58(S, 'bsl', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 113, Ss, Stack, T, Ts, Tzr);
yeccpars2_58(S, 'bsr', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 114, Ss, Stack, T, Ts, Tzr);
yeccpars2_58(S, 'bxor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 115, Ss, Stack, T, Ts, Tzr);
yeccpars2_58(S, 'div', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 116, Ss, Stack, T, Ts, Tzr);
yeccpars2_58(S, 'or', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 117, Ss, Stack, T, Ts, Tzr);
yeccpars2_58(S, 'orelse', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 118, Ss, Stack, T, Ts, Tzr);
yeccpars2_58(S, 'rem', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 119, Ss, Stack, T, Ts, Tzr);
yeccpars2_58(S, 'xor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 121, Ss, Stack, T, Ts, Tzr);
yeccpars2_58(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_58_(Stack),
    yeccgoto_exprs(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_59, 7}}).

-compile({nowarn_unused_function, {yeccpars2_59, 7}}).

yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_59_(Stack),
    yeccgoto_expr_max(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_60, 7}}).

-compile({nowarn_unused_function, {yeccpars2_60, 7}}).

yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_60_(Stack),
    yeccgoto_expr_max(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_61, 7}}).

-compile({nowarn_unused_function, {yeccpars2_61, 7}}).

yeccpars2_61(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_61_(Stack),
    yeccgoto_expr_max(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_62, 7}}).

-compile({nowarn_unused_function, {yeccpars2_62, 7}}).

yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_62_(Stack),
    yeccgoto_expr_max(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_63, 7}}).

-compile({nowarn_unused_function, {yeccpars2_63, 7}}).

yeccpars2_63(S, atom, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 464, Ss, Stack, T, Ts, Tzr);
yeccpars2_63(S, '{', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 465, Ss, Stack, T, Ts, Tzr);
yeccpars2_63(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_70, 7}}).

-compile({nowarn_unused_function, {yeccpars2_70, 7}}).

yeccpars2_70(S, '(', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 10, Ss, Stack, T, Ts, Tzr);
yeccpars2_70(S, atom, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 356, Ss, Stack, T, Ts, Tzr);
yeccpars2_70(S, var, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 357, Ss, Stack, T, Ts, Tzr);
yeccpars2_70(_, _, _, _, T, _, _) ->
    yeccerror(T).

yeccpars2_73(S, '#', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 63, Ss, Stack, T, Ts, Tzr);
yeccpars2_73(S, '(', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 64, Ss, Stack, T, Ts, Tzr);
yeccpars2_73(S, '+', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 26, Ss, Stack, T, Ts, Tzr);
yeccpars2_73(S, '-', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 27, Ss, Stack, T, Ts, Tzr);
yeccpars2_73(S, 'after', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 323, Ss, Stack, T, Ts, Tzr);
yeccpars2_73(S, atom, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 30, Ss, Stack, T, Ts, Tzr);
yeccpars2_73(S, 'bnot', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 31, Ss, Stack, T, Ts, Tzr);
yeccpars2_73(S, 'catch', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 69, Ss, Stack, T, Ts, Tzr);
yeccpars2_73(S, char, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 32, Ss, Stack, T, Ts, Tzr);
yeccpars2_73(S, float, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 33, Ss, Stack, T, Ts, Tzr);
yeccpars2_73(S, integer, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 34, Ss, Stack, T, Ts, Tzr);
yeccpars2_73(S, 'not', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 35, Ss, Stack, T, Ts, Tzr);
yeccpars2_73(S, sigil_prefix, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 36, Ss, Stack, T, Ts, Tzr);
yeccpars2_73(S, string, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 37, Ss, Stack, T, Ts, Tzr);
yeccpars2_73(S, '{', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 39, Ss, Stack, T, Ts, Tzr);
yeccpars2_73(S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_cont_28(S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_75, 7}}).

-compile({nowarn_unused_function, {yeccpars2_75, 7}}).

yeccpars2_75(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_75_(Stack),
    yeccgoto_expr_max(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_76, 7}}).

-compile({nowarn_unused_function, {yeccpars2_76, 7}}).

yeccpars2_76(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_ | Nss] = Ss,
    NewStack = yeccpars2_76_(Stack),
    yeccgoto_tuple(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

yeccpars2_77(S, 'of', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 81, Ss, Stack, T, Ts, Tzr);
yeccpars2_77(S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_83(S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_78, 7}}).

-compile({nowarn_unused_function, {yeccpars2_78, 7}}).

yeccpars2_78(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_78_(Stack),
    yeccgoto_try_expr(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

yeccpars2_80(S, '#', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 23, Ss, Stack, T, Ts, Tzr);
yeccpars2_80(S, '(', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 24, Ss, Stack, T, Ts, Tzr);
yeccpars2_80(S, '+', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 26, Ss, Stack, T, Ts, Tzr);
yeccpars2_80(S, '-', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 27, Ss, Stack, T, Ts, Tzr);
yeccpars2_80(S, '<<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 28, Ss, Stack, T, Ts, Tzr);
yeccpars2_80(S, '[', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 29, Ss, Stack, T, Ts, Tzr);
yeccpars2_80(S, atom, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 288, Ss, Stack, T, Ts, Tzr);
yeccpars2_80(S, 'bnot', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 31, Ss, Stack, T, Ts, Tzr);
yeccpars2_80(S, 'not', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 35, Ss, Stack, T, Ts, Tzr);
yeccpars2_80(S, var, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 289, Ss, Stack, T, Ts, Tzr);
yeccpars2_80(S, '{', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 39, Ss, Stack, T, Ts, Tzr);
yeccpars2_80(S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_cont_10(S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_82, 7}}).

-compile({nowarn_unused_function, {yeccpars2_82, 7}}).

yeccpars2_82(S, '!', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 93, Ss, Stack, T, Ts, Tzr);
yeccpars2_82(S, '*', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 94, Ss, Stack, T, Ts, Tzr);
yeccpars2_82(S, '+', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 95, Ss, Stack, T, Ts, Tzr);
yeccpars2_82(S, '++', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 96, Ss, Stack, T, Ts, Tzr);
yeccpars2_82(S, '-', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 97, Ss, Stack, T, Ts, Tzr);
yeccpars2_82(S, '--', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 98, Ss, Stack, T, Ts, Tzr);
yeccpars2_82(S, '/', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 99, Ss, Stack, T, Ts, Tzr);
yeccpars2_82(S, '/=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 100, Ss, Stack, T, Ts, Tzr);
yeccpars2_82(S, '<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 101, Ss, Stack, T, Ts, Tzr);
yeccpars2_82(S, '=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 102, Ss, Stack, T, Ts, Tzr);
yeccpars2_82(S, '=/=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 103, Ss, Stack, T, Ts, Tzr);
yeccpars2_82(S, '=:=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 104, Ss, Stack, T, Ts, Tzr);
yeccpars2_82(S, '=<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 105, Ss, Stack, T, Ts, Tzr);
yeccpars2_82(S, '==', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 106, Ss, Stack, T, Ts, Tzr);
yeccpars2_82(S, '>', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 107, Ss, Stack, T, Ts, Tzr);
yeccpars2_82(S, '>=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 108, Ss, Stack, T, Ts, Tzr);
yeccpars2_82(S, 'and', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 109, Ss, Stack, T, Ts, Tzr);
yeccpars2_82(S, 'andalso', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 110, Ss, Stack, T, Ts, Tzr);
yeccpars2_82(S, 'band', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 111, Ss, Stack, T, Ts, Tzr);
yeccpars2_82(S, 'bor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 112, Ss, Stack, T, Ts, Tzr);
yeccpars2_82(S, 'bsl', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 113, Ss, Stack, T, Ts, Tzr);
yeccpars2_82(S, 'bsr', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 114, Ss, Stack, T, Ts, Tzr);
yeccpars2_82(S, 'bxor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 115, Ss, Stack, T, Ts, Tzr);
yeccpars2_82(S, 'div', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 116, Ss, Stack, T, Ts, Tzr);
yeccpars2_82(S, 'or', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 117, Ss, Stack, T, Ts, Tzr);
yeccpars2_82(S, 'orelse', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 118, Ss, Stack, T, Ts, Tzr);
yeccpars2_82(S, 'rem', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 119, Ss, Stack, T, Ts, Tzr);
yeccpars2_82(S, 'when', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 120, Ss, Stack, T, Ts, Tzr);
yeccpars2_82(S, 'xor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 121, Ss, Stack, T, Ts, Tzr);
yeccpars2_82(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_82_(Stack),
    yeccpars2_91(91, Cat, [82 | Ss], NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_83, 7}}).

-compile({nowarn_unused_function, {yeccpars2_83, 7}}).

yeccpars2_83(S, 'after', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 79, Ss, Stack, T, Ts, Tzr);
yeccpars2_83(S, 'catch', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 80, Ss, Stack, T, Ts, Tzr);
yeccpars2_83(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_84, 7}}).

-compile({nowarn_unused_function, {yeccpars2_84, 7}}).

yeccpars2_84(S, ';', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 85, Ss, Stack, T, Ts, Tzr);
yeccpars2_84(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_84_(Stack),
    yeccgoto_cr_clauses(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_86, 7}}).

-compile({nowarn_unused_function, {yeccpars2_86, 7}}).

yeccpars2_86(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_86_(Stack),
    yeccgoto_cr_clauses(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_87, 7}}).

-compile({nowarn_unused_function, {yeccpars2_87, 7}}).

yeccpars2_87(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _, _, _ | Nss] = Ss,
    NewStack = yeccpars2_87_(Stack),
    yeccgoto_try_expr(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_91, 7}}).

-compile({nowarn_unused_function, {yeccpars2_91, 7}}).

yeccpars2_91(S, '->', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 132, Ss, Stack, T, Ts, Tzr);
yeccpars2_91(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_94, 7}}).

-compile({nowarn_unused_function, {yeccpars2_94, 7}}).

yeccpars2_94(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_94_(Stack),
    yeccgoto_mult_op(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_95, 7}}).

-compile({nowarn_unused_function, {yeccpars2_95, 7}}).

yeccpars2_95(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_95_(Stack),
    yeccgoto_add_op(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_96, 7}}).

-compile({nowarn_unused_function, {yeccpars2_96, 7}}).

yeccpars2_96(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_96_(Stack),
    yeccgoto_list_op(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_97, 7}}).

-compile({nowarn_unused_function, {yeccpars2_97, 7}}).

yeccpars2_97(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_97_(Stack),
    yeccgoto_add_op(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_98, 7}}).

-compile({nowarn_unused_function, {yeccpars2_98, 7}}).

yeccpars2_98(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_98_(Stack),
    yeccgoto_list_op(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_99, 7}}).

-compile({nowarn_unused_function, {yeccpars2_99, 7}}).

yeccpars2_99(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_99_(Stack),
    yeccgoto_mult_op(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_100, 7}}).

-compile({nowarn_unused_function, {yeccpars2_100, 7}}).

yeccpars2_100(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_100_(Stack),
    yeccgoto_comp_op(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_101, 7}}).

-compile({nowarn_unused_function, {yeccpars2_101, 7}}).

yeccpars2_101(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_101_(Stack),
    yeccgoto_comp_op(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_103, 7}}).

-compile({nowarn_unused_function, {yeccpars2_103, 7}}).

yeccpars2_103(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_103_(Stack),
    yeccgoto_comp_op(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_104, 7}}).

-compile({nowarn_unused_function, {yeccpars2_104, 7}}).

yeccpars2_104(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_104_(Stack),
    yeccgoto_comp_op(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_105, 7}}).

-compile({nowarn_unused_function, {yeccpars2_105, 7}}).

yeccpars2_105(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_105_(Stack),
    yeccgoto_comp_op(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_106, 7}}).

-compile({nowarn_unused_function, {yeccpars2_106, 7}}).

yeccpars2_106(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_106_(Stack),
    yeccgoto_comp_op(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_107, 7}}).

-compile({nowarn_unused_function, {yeccpars2_107, 7}}).

yeccpars2_107(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_107_(Stack),
    yeccgoto_comp_op(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_108, 7}}).

-compile({nowarn_unused_function, {yeccpars2_108, 7}}).

yeccpars2_108(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_108_(Stack),
    yeccgoto_comp_op(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_109, 7}}).

-compile({nowarn_unused_function, {yeccpars2_109, 7}}).

yeccpars2_109(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_109_(Stack),
    yeccgoto_mult_op(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_111, 7}}).

-compile({nowarn_unused_function, {yeccpars2_111, 7}}).

yeccpars2_111(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_111_(Stack),
    yeccgoto_mult_op(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_112, 7}}).

-compile({nowarn_unused_function, {yeccpars2_112, 7}}).

yeccpars2_112(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_112_(Stack),
    yeccgoto_add_op(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_113, 7}}).

-compile({nowarn_unused_function, {yeccpars2_113, 7}}).

yeccpars2_113(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_113_(Stack),
    yeccgoto_add_op(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_114, 7}}).

-compile({nowarn_unused_function, {yeccpars2_114, 7}}).

yeccpars2_114(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_114_(Stack),
    yeccgoto_add_op(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_115, 7}}).

-compile({nowarn_unused_function, {yeccpars2_115, 7}}).

yeccpars2_115(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_115_(Stack),
    yeccgoto_add_op(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_116, 7}}).

-compile({nowarn_unused_function, {yeccpars2_116, 7}}).

yeccpars2_116(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_116_(Stack),
    yeccgoto_mult_op(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_117, 7}}).

-compile({nowarn_unused_function, {yeccpars2_117, 7}}).

yeccpars2_117(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_117_(Stack),
    yeccgoto_add_op(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_119, 7}}).

-compile({nowarn_unused_function, {yeccpars2_119, 7}}).

yeccpars2_119(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_119_(Stack),
    yeccgoto_mult_op(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_121, 7}}).

-compile({nowarn_unused_function, {yeccpars2_121, 7}}).

yeccpars2_121(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_121_(Stack),
    yeccgoto_add_op(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_122, 7}}).

-compile({nowarn_unused_function, {yeccpars2_122, 7}}).

yeccpars2_122(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_ | Nss] = Ss,
    NewStack = yeccpars2_122_(Stack),
    yeccgoto_clause_guard(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_123, 7}}).

-compile({nowarn_unused_function, {yeccpars2_123, 7}}).

yeccpars2_123(S, ';', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 124, Ss, Stack, T, Ts, Tzr);
yeccpars2_123(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_123_(Stack),
    yeccgoto_guard(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_125, 7}}).

-compile({nowarn_unused_function, {yeccpars2_125, 7}}).

yeccpars2_125(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_125_(Stack),
    yeccgoto_guard(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_126, 7}}).

-compile({nowarn_unused_function, {yeccpars2_126, 7}}).

yeccpars2_126(S, '*', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 94, Ss, Stack, T, Ts, Tzr);
yeccpars2_126(S, '+', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 95, Ss, Stack, T, Ts, Tzr);
yeccpars2_126(S, '++', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 96, Ss, Stack, T, Ts, Tzr);
yeccpars2_126(S, '-', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 97, Ss, Stack, T, Ts, Tzr);
yeccpars2_126(S, '--', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 98, Ss, Stack, T, Ts, Tzr);
yeccpars2_126(S, '/', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 99, Ss, Stack, T, Ts, Tzr);
yeccpars2_126(S, '/=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 100, Ss, Stack, T, Ts, Tzr);
yeccpars2_126(S, '<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 101, Ss, Stack, T, Ts, Tzr);
yeccpars2_126(S, '=/=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 103, Ss, Stack, T, Ts, Tzr);
yeccpars2_126(S, '=:=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 104, Ss, Stack, T, Ts, Tzr);
yeccpars2_126(S, '=<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 105, Ss, Stack, T, Ts, Tzr);
yeccpars2_126(S, '==', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 106, Ss, Stack, T, Ts, Tzr);
yeccpars2_126(S, '>', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 107, Ss, Stack, T, Ts, Tzr);
yeccpars2_126(S, '>=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 108, Ss, Stack, T, Ts, Tzr);
yeccpars2_126(S, 'and', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 109, Ss, Stack, T, Ts, Tzr);
yeccpars2_126(S, 'andalso', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 110, Ss, Stack, T, Ts, Tzr);
yeccpars2_126(S, 'band', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 111, Ss, Stack, T, Ts, Tzr);
yeccpars2_126(S, 'bor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 112, Ss, Stack, T, Ts, Tzr);
yeccpars2_126(S, 'bsl', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 113, Ss, Stack, T, Ts, Tzr);
yeccpars2_126(S, 'bsr', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 114, Ss, Stack, T, Ts, Tzr);
yeccpars2_126(S, 'bxor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 115, Ss, Stack, T, Ts, Tzr);
yeccpars2_126(S, 'div', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 116, Ss, Stack, T, Ts, Tzr);
yeccpars2_126(S, 'or', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 117, Ss, Stack, T, Ts, Tzr);
yeccpars2_126(S, 'orelse', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 118, Ss, Stack, T, Ts, Tzr);
yeccpars2_126(S, 'rem', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 119, Ss, Stack, T, Ts, Tzr);
yeccpars2_126(S, 'xor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 121, Ss, Stack, T, Ts, Tzr);
yeccpars2_126(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_126_(Stack),
    yeccgoto_expr(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_127, 7}}).

-compile({nowarn_unused_function, {yeccpars2_127, 7}}).

yeccpars2_127(S, '*', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 94, Ss, Stack, T, Ts, Tzr);
yeccpars2_127(S, '+', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 95, Ss, Stack, T, Ts, Tzr);
yeccpars2_127(S, '++', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 96, Ss, Stack, T, Ts, Tzr);
yeccpars2_127(S, '-', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 97, Ss, Stack, T, Ts, Tzr);
yeccpars2_127(S, '--', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 98, Ss, Stack, T, Ts, Tzr);
yeccpars2_127(S, '/', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 99, Ss, Stack, T, Ts, Tzr);
yeccpars2_127(S, '/=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 100, Ss, Stack, T, Ts, Tzr);
yeccpars2_127(S, '<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 101, Ss, Stack, T, Ts, Tzr);
yeccpars2_127(S, '=/=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 103, Ss, Stack, T, Ts, Tzr);
yeccpars2_127(S, '=:=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 104, Ss, Stack, T, Ts, Tzr);
yeccpars2_127(S, '=<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 105, Ss, Stack, T, Ts, Tzr);
yeccpars2_127(S, '==', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 106, Ss, Stack, T, Ts, Tzr);
yeccpars2_127(S, '>', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 107, Ss, Stack, T, Ts, Tzr);
yeccpars2_127(S, '>=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 108, Ss, Stack, T, Ts, Tzr);
yeccpars2_127(S, 'and', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 109, Ss, Stack, T, Ts, Tzr);
yeccpars2_127(S, 'andalso', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 110, Ss, Stack, T, Ts, Tzr);
yeccpars2_127(S, 'band', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 111, Ss, Stack, T, Ts, Tzr);
yeccpars2_127(S, 'bor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 112, Ss, Stack, T, Ts, Tzr);
yeccpars2_127(S, 'bsl', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 113, Ss, Stack, T, Ts, Tzr);
yeccpars2_127(S, 'bsr', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 114, Ss, Stack, T, Ts, Tzr);
yeccpars2_127(S, 'bxor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 115, Ss, Stack, T, Ts, Tzr);
yeccpars2_127(S, 'div', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 116, Ss, Stack, T, Ts, Tzr);
yeccpars2_127(S, 'or', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 117, Ss, Stack, T, Ts, Tzr);
yeccpars2_127(S, 'rem', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 119, Ss, Stack, T, Ts, Tzr);
yeccpars2_127(S, 'xor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 121, Ss, Stack, T, Ts, Tzr);
yeccpars2_127(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_127_(Stack),
    yeccgoto_expr(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_128, 7}}).

-compile({nowarn_unused_function, {yeccpars2_128, 7}}).

yeccpars2_128(S, '!', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 93, Ss, Stack, T, Ts, Tzr);
yeccpars2_128(S, '*', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 94, Ss, Stack, T, Ts, Tzr);
yeccpars2_128(S, '+', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 95, Ss, Stack, T, Ts, Tzr);
yeccpars2_128(S, '++', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 96, Ss, Stack, T, Ts, Tzr);
yeccpars2_128(S, '-', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 97, Ss, Stack, T, Ts, Tzr);
yeccpars2_128(S, '--', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 98, Ss, Stack, T, Ts, Tzr);
yeccpars2_128(S, '/', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 99, Ss, Stack, T, Ts, Tzr);
yeccpars2_128(S, '/=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 100, Ss, Stack, T, Ts, Tzr);
yeccpars2_128(S, '<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 101, Ss, Stack, T, Ts, Tzr);
yeccpars2_128(S, '=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 102, Ss, Stack, T, Ts, Tzr);
yeccpars2_128(S, '=/=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 103, Ss, Stack, T, Ts, Tzr);
yeccpars2_128(S, '=:=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 104, Ss, Stack, T, Ts, Tzr);
yeccpars2_128(S, '=<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 105, Ss, Stack, T, Ts, Tzr);
yeccpars2_128(S, '==', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 106, Ss, Stack, T, Ts, Tzr);
yeccpars2_128(S, '>', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 107, Ss, Stack, T, Ts, Tzr);
yeccpars2_128(S, '>=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 108, Ss, Stack, T, Ts, Tzr);
yeccpars2_128(S, 'and', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 109, Ss, Stack, T, Ts, Tzr);
yeccpars2_128(S, 'andalso', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 110, Ss, Stack, T, Ts, Tzr);
yeccpars2_128(S, 'band', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 111, Ss, Stack, T, Ts, Tzr);
yeccpars2_128(S, 'bor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 112, Ss, Stack, T, Ts, Tzr);
yeccpars2_128(S, 'bsl', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 113, Ss, Stack, T, Ts, Tzr);
yeccpars2_128(S, 'bsr', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 114, Ss, Stack, T, Ts, Tzr);
yeccpars2_128(S, 'bxor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 115, Ss, Stack, T, Ts, Tzr);
yeccpars2_128(S, 'div', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 116, Ss, Stack, T, Ts, Tzr);
yeccpars2_128(S, 'or', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 117, Ss, Stack, T, Ts, Tzr);
yeccpars2_128(S, 'orelse', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 118, Ss, Stack, T, Ts, Tzr);
yeccpars2_128(S, 'rem', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 119, Ss, Stack, T, Ts, Tzr);
yeccpars2_128(S, 'xor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 121, Ss, Stack, T, Ts, Tzr);
yeccpars2_128(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_128_(Stack),
    yeccgoto_expr(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_129, 7}}).

-compile({nowarn_unused_function, {yeccpars2_129, 7}}).

yeccpars2_129(S, '!', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 93, Ss, Stack, T, Ts, Tzr);
yeccpars2_129(S, '*', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 94, Ss, Stack, T, Ts, Tzr);
yeccpars2_129(S, '+', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 95, Ss, Stack, T, Ts, Tzr);
yeccpars2_129(S, '++', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 96, Ss, Stack, T, Ts, Tzr);
yeccpars2_129(S, '-', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 97, Ss, Stack, T, Ts, Tzr);
yeccpars2_129(S, '--', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 98, Ss, Stack, T, Ts, Tzr);
yeccpars2_129(S, '/', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 99, Ss, Stack, T, Ts, Tzr);
yeccpars2_129(S, '/=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 100, Ss, Stack, T, Ts, Tzr);
yeccpars2_129(S, '<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 101, Ss, Stack, T, Ts, Tzr);
yeccpars2_129(S, '=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 102, Ss, Stack, T, Ts, Tzr);
yeccpars2_129(S, '=/=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 103, Ss, Stack, T, Ts, Tzr);
yeccpars2_129(S, '=:=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 104, Ss, Stack, T, Ts, Tzr);
yeccpars2_129(S, '=<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 105, Ss, Stack, T, Ts, Tzr);
yeccpars2_129(S, '==', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 106, Ss, Stack, T, Ts, Tzr);
yeccpars2_129(S, '>', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 107, Ss, Stack, T, Ts, Tzr);
yeccpars2_129(S, '>=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 108, Ss, Stack, T, Ts, Tzr);
yeccpars2_129(S, 'and', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 109, Ss, Stack, T, Ts, Tzr);
yeccpars2_129(S, 'andalso', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 110, Ss, Stack, T, Ts, Tzr);
yeccpars2_129(S, 'band', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 111, Ss, Stack, T, Ts, Tzr);
yeccpars2_129(S, 'bor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 112, Ss, Stack, T, Ts, Tzr);
yeccpars2_129(S, 'bsl', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 113, Ss, Stack, T, Ts, Tzr);
yeccpars2_129(S, 'bsr', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 114, Ss, Stack, T, Ts, Tzr);
yeccpars2_129(S, 'bxor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 115, Ss, Stack, T, Ts, Tzr);
yeccpars2_129(S, 'div', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 116, Ss, Stack, T, Ts, Tzr);
yeccpars2_129(S, 'or', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 117, Ss, Stack, T, Ts, Tzr);
yeccpars2_129(S, 'orelse', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 118, Ss, Stack, T, Ts, Tzr);
yeccpars2_129(S, 'rem', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 119, Ss, Stack, T, Ts, Tzr);
yeccpars2_129(S, 'xor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 121, Ss, Stack, T, Ts, Tzr);
yeccpars2_129(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_129_(Stack),
    yeccgoto_expr(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_130, 7}}).

-compile({nowarn_unused_function, {yeccpars2_130, 7}}).

yeccpars2_130(S, '*', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 94, Ss, Stack, T, Ts, Tzr);
yeccpars2_130(S, '/', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 99, Ss, Stack, T, Ts, Tzr);
yeccpars2_130(S, 'and', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 109, Ss, Stack, T, Ts, Tzr);
yeccpars2_130(S, 'band', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 111, Ss, Stack, T, Ts, Tzr);
yeccpars2_130(S, 'div', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 116, Ss, Stack, T, Ts, Tzr);
yeccpars2_130(S, 'rem', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 119, Ss, Stack, T, Ts, Tzr);
yeccpars2_130(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_130_(Stack),
    yeccgoto_expr(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_131, 7}}).

-compile({nowarn_unused_function, {yeccpars2_131, 7}}).

yeccpars2_131(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_131_(Stack),
    yeccgoto_cr_clause(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

yeccpars2_132(S, '#', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 63, Ss, Stack, T, Ts, Tzr);
yeccpars2_132(S, '%ssa%', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 137, Ss, Stack, T, Ts, Tzr);
yeccpars2_132(S, '(', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 64, Ss, Stack, T, Ts, Tzr);
yeccpars2_132(S, '+', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 26, Ss, Stack, T, Ts, Tzr);
yeccpars2_132(S, '-', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 27, Ss, Stack, T, Ts, Tzr);
yeccpars2_132(S, atom, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 30, Ss, Stack, T, Ts, Tzr);
yeccpars2_132(S, 'bnot', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 31, Ss, Stack, T, Ts, Tzr);
yeccpars2_132(S, 'catch', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 69, Ss, Stack, T, Ts, Tzr);
yeccpars2_132(S, char, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 32, Ss, Stack, T, Ts, Tzr);
yeccpars2_132(S, float, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 33, Ss, Stack, T, Ts, Tzr);
yeccpars2_132(S, integer, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 34, Ss, Stack, T, Ts, Tzr);
yeccpars2_132(S, 'not', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 35, Ss, Stack, T, Ts, Tzr);
yeccpars2_132(S, sigil_prefix, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 36, Ss, Stack, T, Ts, Tzr);
yeccpars2_132(S, string, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 37, Ss, Stack, T, Ts, Tzr);
yeccpars2_132(S, '{', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 39, Ss, Stack, T, Ts, Tzr);
yeccpars2_132(S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_cont_28(S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_134, 7}}).

-compile({nowarn_unused_function, {yeccpars2_134, 7}}).

yeccpars2_134(S, '%ssa%', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 137, Ss, Stack, T, Ts, Tzr);
yeccpars2_134(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_134_(Stack),
    yeccgoto_ssa_check_when_clauses(hd(Ss),
                                    Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_135, 7}}).

-compile({nowarn_unused_function, {yeccpars2_135, 7}}).

yeccpars2_135(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_135_(Stack),
    yeccgoto_clause_body_exprs(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_136, 7}}).

-compile({nowarn_unused_function, {yeccpars2_136, 7}}).

yeccpars2_136(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_ | Nss] = Ss,
    NewStack = yeccpars2_136_(Stack),
    yeccgoto_clause_body(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_137, 7}}).

-compile({nowarn_unused_function, {yeccpars2_137, 7}}).

yeccpars2_137(S, '(', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 139, Ss, Stack, T, Ts, Tzr);
yeccpars2_137(S, atom, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 140, Ss, Stack, T, Ts, Tzr);
yeccpars2_137(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_138, 7}}).

-compile({nowarn_unused_function, {yeccpars2_138, 7}}).

yeccpars2_138(S, 'when', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 275, Ss, Stack, T, Ts, Tzr);
yeccpars2_138(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_139, 7}}).

-compile({nowarn_unused_function, {yeccpars2_139, 7}}).

yeccpars2_139(S, ')', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 267, Ss, Stack, T, Ts, Tzr);
yeccpars2_139(S, '...', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 268, Ss, Stack, T, Ts, Tzr);
yeccpars2_139(S, var, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 269, Ss, Stack, T, Ts, Tzr);
yeccpars2_139(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_140, 7}}).

-compile({nowarn_unused_function, {yeccpars2_140, 7}}).

yeccpars2_140(S, '(', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 139, Ss, Stack, T, Ts, Tzr);
yeccpars2_140(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_141, 7}}).

-compile({nowarn_unused_function, {yeccpars2_141, 7}}).

yeccpars2_141(S, 'when', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 142, Ss, Stack, T, Ts, Tzr);
yeccpars2_141(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_142, 7}}).

-compile({nowarn_unused_function, {yeccpars2_142, 7}}).

yeccpars2_142(S, atom, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 143, Ss, Stack, T, Ts, Tzr);
yeccpars2_142(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_143, 7}}).

-compile({nowarn_unused_function, {yeccpars2_143, 7}}).

yeccpars2_143(S, '->', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 144, Ss, Stack, T, Ts, Tzr);
yeccpars2_143(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_144, 7}}).

-compile({nowarn_unused_function, {yeccpars2_144, 7}}).

yeccpars2_144(S, atom, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 147, Ss, Stack, T, Ts, Tzr);
yeccpars2_144(S, var, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 148, Ss, Stack, T, Ts, Tzr);
yeccpars2_144(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_145, 7}}).

-compile({nowarn_unused_function, {yeccpars2_145, 7}}).

yeccpars2_145(S, '.', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 265, Ss, Stack, T, Ts, Tzr);
yeccpars2_145(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_146, 7}}).

-compile({nowarn_unused_function, {yeccpars2_146, 7}}).

yeccpars2_146(S, ',', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 252, Ss, Stack, T, Ts, Tzr);
yeccpars2_146(S, '{', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 253, Ss, Stack, T, Ts, Tzr);
yeccpars2_146(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_146_(Stack),
    yeccgoto_ssa_check_exprs(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_147, 7}}).

-compile({nowarn_unused_function, {yeccpars2_147, 7}}).

yeccpars2_147(S, '(', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 152, Ss, Stack, T, Ts, Tzr);
yeccpars2_147(S, integer, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 249, Ss, Stack, T, Ts, Tzr);
yeccpars2_147(S, var, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 250, Ss, Stack, T, Ts, Tzr);
yeccpars2_147(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_148, 7}}).

-compile({nowarn_unused_function, {yeccpars2_148, 7}}).

yeccpars2_148(S, '=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 149, Ss, Stack, T, Ts, Tzr);
yeccpars2_148(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_149, 7}}).

-compile({nowarn_unused_function, {yeccpars2_149, 7}}).

yeccpars2_149(S, atom, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 150, Ss, Stack, T, Ts, Tzr);
yeccpars2_149(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_150, 7}}).

-compile({nowarn_unused_function, {yeccpars2_150, 7}}).

yeccpars2_150(S, '(', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 152, Ss, Stack, T, Ts, Tzr);
yeccpars2_150(S, ':', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 153, Ss, Stack, T, Ts, Tzr);
yeccpars2_150(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_151, 7}}).

-compile({nowarn_unused_function, {yeccpars2_151, 7}}).

yeccpars2_151(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _, _ | Nss] = Ss,
    NewStack = yeccpars2_151_(Stack),
    yeccgoto_ssa_check_expr(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

yeccpars2_152(S, ')', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 162, Ss, Stack, T, Ts, Tzr);
yeccpars2_152(S, '...', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 163, Ss, Stack, T, Ts, Tzr);
yeccpars2_152(S, '<<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 164, Ss, Stack, T, Ts, Tzr);
yeccpars2_152(S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_cont_152(S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_152, 7}}).

-compile({nowarn_unused_function, {yeccpars2_152, 7}}).

yeccpars2_cont_152(S, '#', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 161, Ss, Stack, T, Ts, Tzr);
yeccpars2_cont_152(S, '[', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 165, Ss, Stack, T, Ts, Tzr);
yeccpars2_cont_152(S, atom, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 166, Ss, Stack, T, Ts, Tzr);
yeccpars2_cont_152(S, float, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 167, Ss, Stack, T, Ts, Tzr);
yeccpars2_cont_152(S, 'fun', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 168, Ss, Stack, T, Ts, Tzr);
yeccpars2_cont_152(S, integer, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 169, Ss, Stack, T, Ts, Tzr);
yeccpars2_cont_152(S, var, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 170, Ss, Stack, T, Ts, Tzr);
yeccpars2_cont_152(S, '{', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 171, Ss, Stack, T, Ts, Tzr);
yeccpars2_cont_152(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_153, 7}}).

-compile({nowarn_unused_function, {yeccpars2_153, 7}}).

yeccpars2_153(S, atom, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 154, Ss, Stack, T, Ts, Tzr);
yeccpars2_153(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_154, 7}}).

-compile({nowarn_unused_function, {yeccpars2_154, 7}}).

yeccpars2_154(S, '(', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 152, Ss, Stack, T, Ts, Tzr);
yeccpars2_154(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_155, 7}}).

-compile({nowarn_unused_function, {yeccpars2_155, 7}}).

yeccpars2_155(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _, _, _, _ | Nss] = Ss,
    NewStack = yeccpars2_155_(Stack),
    yeccgoto_ssa_check_expr(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_156, 7}}).

-compile({nowarn_unused_function, {yeccpars2_156, 7}}).

yeccpars2_156(S, ')', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 247, Ss, Stack, T, Ts, Tzr);
yeccpars2_156(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_157, 7}}).

-compile({nowarn_unused_function, {yeccpars2_157, 7}}).

yeccpars2_157(S, ',', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 244, Ss, Stack, T, Ts, Tzr);
yeccpars2_157(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_157_(Stack),
    yeccgoto_ssa_check_pats(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_158, 7}}).

-compile({nowarn_unused_function, {yeccpars2_158, 7}}).

yeccpars2_158(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_158_(Stack),
    yeccgoto_ssa_check_pat(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_159, 7}}).

-compile({nowarn_unused_function, {yeccpars2_159, 7}}).

yeccpars2_159(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_159_(Stack),
    yeccgoto_ssa_check_pat(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_160, 7}}).

-compile({nowarn_unused_function, {yeccpars2_160, 7}}).

yeccpars2_160(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_160_(Stack),
    yeccgoto_ssa_check_pat(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_161, 7}}).

-compile({nowarn_unused_function, {yeccpars2_161, 7}}).

yeccpars2_161(S, '{', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 208, Ss, Stack, T, Ts, Tzr);
yeccpars2_161(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_162, 7}}).

-compile({nowarn_unused_function, {yeccpars2_162, 7}}).

yeccpars2_162(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_ | Nss] = Ss,
    NewStack = yeccpars2_162_(Stack),
    yeccgoto_ssa_check_args(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_163, 7}}).

-compile({nowarn_unused_function, {yeccpars2_163, 7}}).

yeccpars2_163(S, ')', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 207, Ss, Stack, T, Ts, Tzr);
yeccpars2_163(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_164, 7}}).

-compile({nowarn_unused_function, {yeccpars2_164, 7}}).

yeccpars2_164(S, '>>', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 198, Ss, Stack, T, Ts, Tzr);
yeccpars2_164(S, integer, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 199, Ss, Stack, T, Ts, Tzr);
yeccpars2_164(_, _, _, _, T, _, _) ->
    yeccerror(T).

yeccpars2_165(S, '<<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 164, Ss, Stack, T, Ts, Tzr);
yeccpars2_165(S, ']', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 189, Ss, Stack, T, Ts, Tzr);
yeccpars2_165(S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_cont_152(S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_166, 7}}).

-compile({nowarn_unused_function, {yeccpars2_166, 7}}).

yeccpars2_166(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_166_(Stack),
    yeccgoto_ssa_check_pat(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_167, 7}}).

-compile({nowarn_unused_function, {yeccpars2_167, 7}}).

yeccpars2_167(S, '(', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 184, Ss, Stack, T, Ts, Tzr);
yeccpars2_167(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_167_(Stack),
    yeccgoto_ssa_check_pat(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_168, 7}}).

-compile({nowarn_unused_function, {yeccpars2_168, 7}}).

yeccpars2_168(S, atom, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 177, Ss, Stack, T, Ts, Tzr);
yeccpars2_168(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_169, 7}}).

-compile({nowarn_unused_function, {yeccpars2_169, 7}}).

yeccpars2_169(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_169_(Stack),
    yeccgoto_ssa_check_pat(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_170, 7}}).

-compile({nowarn_unused_function, {yeccpars2_170, 7}}).

yeccpars2_170(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_170_(Stack),
    yeccgoto_ssa_check_pat(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

yeccpars2_171(S, '...', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 173, Ss, Stack, T, Ts, Tzr);
yeccpars2_171(S, '<<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 164, Ss, Stack, T, Ts, Tzr);
yeccpars2_171(S, '}', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 174, Ss, Stack, T, Ts, Tzr);
yeccpars2_171(S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_cont_152(S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_172, 7}}).

-compile({nowarn_unused_function, {yeccpars2_172, 7}}).

yeccpars2_172(S, '}', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 176, Ss, Stack, T, Ts, Tzr);
yeccpars2_172(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_173, 7}}).

-compile({nowarn_unused_function, {yeccpars2_173, 7}}).

yeccpars2_173(S, '}', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 175, Ss, Stack, T, Ts, Tzr);
yeccpars2_173(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_174, 7}}).

-compile({nowarn_unused_function, {yeccpars2_174, 7}}).

yeccpars2_174(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_ | Nss] = Ss,
    NewStack = yeccpars2_174_(Stack),
    yeccgoto_ssa_check_pat(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_175, 7}}).

-compile({nowarn_unused_function, {yeccpars2_175, 7}}).

yeccpars2_175(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_175_(Stack),
    yeccgoto_ssa_check_pat(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_176, 7}}).

-compile({nowarn_unused_function, {yeccpars2_176, 7}}).

yeccpars2_176(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_176_(Stack),
    yeccgoto_ssa_check_pat(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_177, 7}}).

-compile({nowarn_unused_function, {yeccpars2_177, 7}}).

yeccpars2_177(S, '/', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 178, Ss, Stack, T, Ts, Tzr);
yeccpars2_177(S, ':', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 179, Ss, Stack, T, Ts, Tzr);
yeccpars2_177(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_178, 7}}).

-compile({nowarn_unused_function, {yeccpars2_178, 7}}).

yeccpars2_178(S, integer, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 183, Ss, Stack, T, Ts, Tzr);
yeccpars2_178(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_179, 7}}).

-compile({nowarn_unused_function, {yeccpars2_179, 7}}).

yeccpars2_179(S, atom, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 180, Ss, Stack, T, Ts, Tzr);
yeccpars2_179(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_180, 7}}).

-compile({nowarn_unused_function, {yeccpars2_180, 7}}).

yeccpars2_180(S, '/', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 181, Ss, Stack, T, Ts, Tzr);
yeccpars2_180(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_181, 7}}).

-compile({nowarn_unused_function, {yeccpars2_181, 7}}).

yeccpars2_181(S, integer, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 182, Ss, Stack, T, Ts, Tzr);
yeccpars2_181(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_182, 7}}).

-compile({nowarn_unused_function, {yeccpars2_182, 7}}).

yeccpars2_182(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _, _, _, _ | Nss] = Ss,
    NewStack = yeccpars2_182_(Stack),
    yeccgoto_ssa_check_fun_ref(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_183, 7}}).

-compile({nowarn_unused_function, {yeccpars2_183, 7}}).

yeccpars2_183(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _, _ | Nss] = Ss,
    NewStack = yeccpars2_183_(Stack),
    yeccgoto_ssa_check_fun_ref(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_184, 7}}).

-compile({nowarn_unused_function, {yeccpars2_184, 7}}).

yeccpars2_184(S, float, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 185, Ss, Stack, T, Ts, Tzr);
yeccpars2_184(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_185, 7}}).

-compile({nowarn_unused_function, {yeccpars2_185, 7}}).

yeccpars2_185(S, ')', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 186, Ss, Stack, T, Ts, Tzr);
yeccpars2_185(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_186, 7}}).

-compile({nowarn_unused_function, {yeccpars2_186, 7}}).

yeccpars2_186(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _, _ | Nss] = Ss,
    NewStack = yeccpars2_186_(Stack),
    yeccgoto_ssa_check_pat(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_187, 7}}).

-compile({nowarn_unused_function, {yeccpars2_187, 7}}).

yeccpars2_187(S, ',', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 191, Ss, Stack, T, Ts, Tzr);
yeccpars2_187(S, '|', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 192, Ss, Stack, T, Ts, Tzr);
yeccpars2_187(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_187_(Stack),
    yeccgoto_ssa_check_list_lit_ls(hd(Ss),
                                   Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_188, 7}}).

-compile({nowarn_unused_function, {yeccpars2_188, 7}}).

yeccpars2_188(S, ']', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 190, Ss, Stack, T, Ts, Tzr);
yeccpars2_188(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_189, 7}}).

-compile({nowarn_unused_function, {yeccpars2_189, 7}}).

yeccpars2_189(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_ | Nss] = Ss,
    NewStack = yeccpars2_189_(Stack),
    yeccgoto_ssa_check_list_lit(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_190, 7}}).

-compile({nowarn_unused_function, {yeccpars2_190, 7}}).

yeccpars2_190(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_190_(Stack),
    yeccgoto_ssa_check_list_lit(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

yeccpars2_191(S, '...', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 195, Ss, Stack, T, Ts, Tzr);
yeccpars2_191(S, '<<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 164, Ss, Stack, T, Ts, Tzr);
yeccpars2_191(S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_cont_152(S, Cat, Ss, Stack, T, Ts, Tzr).

yeccpars2_192(S, '<<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 164, Ss, Stack, T, Ts, Tzr);
yeccpars2_192(S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_cont_152(S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_193, 7}}).

-compile({nowarn_unused_function, {yeccpars2_193, 7}}).

yeccpars2_193(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_193_(Stack),
    yeccgoto_ssa_check_list_lit_ls(hd(Nss),
                                   Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_194, 7}}).

-compile({nowarn_unused_function, {yeccpars2_194, 7}}).

yeccpars2_194(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_194_(Stack),
    yeccgoto_ssa_check_list_lit_ls(hd(Nss),
                                   Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_195, 7}}).

-compile({nowarn_unused_function, {yeccpars2_195, 7}}).

yeccpars2_195(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_195_(Stack),
    yeccgoto_ssa_check_list_lit_ls(hd(Nss),
                                   Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_196, 7}}).

-compile({nowarn_unused_function, {yeccpars2_196, 7}}).

yeccpars2_196(S, '>>', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 206, Ss, Stack, T, Ts, Tzr);
yeccpars2_196(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_197, 7}}).

-compile({nowarn_unused_function, {yeccpars2_197, 7}}).

yeccpars2_197(S, '>>', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 205, Ss, Stack, T, Ts, Tzr);
yeccpars2_197(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_198, 7}}).

-compile({nowarn_unused_function, {yeccpars2_198, 7}}).

yeccpars2_198(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_ | Nss] = Ss,
    NewStack = yeccpars2_198_(Stack),
    yeccgoto_ssa_check_binary_lit(hd(Nss),
                                  Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_199, 7}}).

-compile({nowarn_unused_function, {yeccpars2_199, 7}}).

yeccpars2_199(S, ',', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 200, Ss, Stack, T, Ts, Tzr);
yeccpars2_199(S, ':', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 201, Ss, Stack, T, Ts, Tzr);
yeccpars2_199(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_199_(Stack),
    yeccgoto_ssa_check_binary_lit_bytes_ls(hd(Ss),
                                           Cat, Ss, NewStack, T, Ts,
                                           Tzr).

-dialyzer({nowarn_function, {yeccpars2_200, 7}}).

-compile({nowarn_unused_function, {yeccpars2_200, 7}}).

yeccpars2_200(S, integer, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 199, Ss, Stack, T, Ts, Tzr);
yeccpars2_200(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_201, 7}}).

-compile({nowarn_unused_function, {yeccpars2_201, 7}}).

yeccpars2_201(S, integer, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 202, Ss, Stack, T, Ts, Tzr);
yeccpars2_201(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_202, 7}}).

-compile({nowarn_unused_function, {yeccpars2_202, 7}}).

yeccpars2_202(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_202_(Stack),
    yeccgoto_ssa_check_binary_lit_rest(hd(Nss),
                                       Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_203, 7}}).

-compile({nowarn_unused_function, {yeccpars2_203, 7}}).

yeccpars2_203(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_203_(Stack),
    yeccgoto_ssa_check_binary_lit_bytes_ls(hd(Nss),
                                           Cat, Nss, NewStack, T, Ts,
                                           Tzr).

-dialyzer({nowarn_function, {yeccpars2_204, 7}}).

-compile({nowarn_unused_function, {yeccpars2_204, 7}}).

yeccpars2_204(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_204_(Stack),
    yeccgoto_ssa_check_binary_lit_bytes_ls(hd(Nss),
                                           Cat, Nss, NewStack, T, Ts,
                                           Tzr).

-dialyzer({nowarn_function, {yeccpars2_205, 7}}).

-compile({nowarn_unused_function, {yeccpars2_205, 7}}).

yeccpars2_205(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_205_(Stack),
    yeccgoto_ssa_check_binary_lit(hd(Nss),
                                  Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_206, 7}}).

-compile({nowarn_unused_function, {yeccpars2_206, 7}}).

yeccpars2_206(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_206_(Stack),
    yeccgoto_ssa_check_binary_lit(hd(Nss),
                                  Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_207, 7}}).

-compile({nowarn_unused_function, {yeccpars2_207, 7}}).

yeccpars2_207(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_207_(Stack),
    yeccgoto_ssa_check_args(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

yeccpars2_208(S, '<<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 164, Ss, Stack, T, Ts, Tzr);
yeccpars2_208(S, '}', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 220, Ss, Stack, T, Ts, Tzr);
yeccpars2_208(S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_cont_208(S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_208, 7}}).

-compile({nowarn_unused_function, {yeccpars2_208, 7}}).

yeccpars2_cont_208(S, '#', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 213, Ss, Stack, T, Ts, Tzr);
yeccpars2_cont_208(S, '[', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 214, Ss, Stack, T, Ts, Tzr);
yeccpars2_cont_208(S, atom, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 215, Ss, Stack, T, Ts, Tzr);
yeccpars2_cont_208(S, float, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 216, Ss, Stack, T, Ts, Tzr);
yeccpars2_cont_208(S, integer, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 217, Ss, Stack, T, Ts, Tzr);
yeccpars2_cont_208(S, var, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 218, Ss, Stack, T, Ts, Tzr);
yeccpars2_cont_208(S, '{', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 219, Ss, Stack, T, Ts, Tzr);
yeccpars2_cont_208(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_209, 7}}).

-compile({nowarn_unused_function, {yeccpars2_209, 7}}).

yeccpars2_209(S, '}', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 243, Ss, Stack, T, Ts, Tzr);
yeccpars2_209(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_210, 7}}).

-compile({nowarn_unused_function, {yeccpars2_210, 7}}).

yeccpars2_210(S, ',', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 241, Ss, Stack, T, Ts, Tzr);
yeccpars2_210(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_210_(Stack),
    yeccgoto_ssa_check_map_key_elements(hd(Ss),
                                        Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_211, 7}}).

-compile({nowarn_unused_function, {yeccpars2_211, 7}}).

yeccpars2_211(S, '=>', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 239, Ss, Stack, T, Ts, Tzr);
yeccpars2_211(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_212, 7}}).

-compile({nowarn_unused_function, {yeccpars2_212, 7}}).

yeccpars2_212(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_212_(Stack),
    yeccgoto_ssa_check_map_key(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_213, 7}}).

-compile({nowarn_unused_function, {yeccpars2_213, 7}}).

yeccpars2_213(S, '{', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 235, Ss, Stack, T, Ts, Tzr);
yeccpars2_213(_, _, _, _, T, _, _) ->
    yeccerror(T).

yeccpars2_214(S, '<<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 164, Ss, Stack, T, Ts, Tzr);
yeccpars2_214(S, ']', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 229, Ss, Stack, T, Ts, Tzr);
yeccpars2_214(S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_cont_208(S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_215, 7}}).

-compile({nowarn_unused_function, {yeccpars2_215, 7}}).

yeccpars2_215(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_215_(Stack),
    yeccgoto_ssa_check_map_key(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_216, 7}}).

-compile({nowarn_unused_function, {yeccpars2_216, 7}}).

yeccpars2_216(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_216_(Stack),
    yeccgoto_ssa_check_map_key(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_217, 7}}).

-compile({nowarn_unused_function, {yeccpars2_217, 7}}).

yeccpars2_217(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_217_(Stack),
    yeccgoto_ssa_check_map_key(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_218, 7}}).

-compile({nowarn_unused_function, {yeccpars2_218, 7}}).

yeccpars2_218(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_218_(Stack),
    yeccgoto_ssa_check_map_key(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

yeccpars2_219(S, '<<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 164, Ss, Stack, T, Ts, Tzr);
yeccpars2_219(S, '}', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 223, Ss, Stack, T, Ts, Tzr);
yeccpars2_219(S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_cont_208(S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_220, 7}}).

-compile({nowarn_unused_function, {yeccpars2_220, 7}}).

yeccpars2_220(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_220_(Stack),
    yeccgoto_ssa_check_pat(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_221, 7}}).

-compile({nowarn_unused_function, {yeccpars2_221, 7}}).

yeccpars2_221(S, '}', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 226, Ss, Stack, T, Ts, Tzr);
yeccpars2_221(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_222, 7}}).

-compile({nowarn_unused_function, {yeccpars2_222, 7}}).

yeccpars2_222(S, ',', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 224, Ss, Stack, T, Ts, Tzr);
yeccpars2_222(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_222_(Stack),
    yeccgoto_ssa_check_map_key_tuple_elements(hd(Ss),
                                              Cat, Ss, NewStack, T, Ts,
                                              Tzr).

-dialyzer({nowarn_function, {yeccpars2_223, 7}}).

-compile({nowarn_unused_function, {yeccpars2_223, 7}}).

yeccpars2_223(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_ | Nss] = Ss,
    NewStack = yeccpars2_223_(Stack),
    yeccgoto_ssa_check_map_key(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

yeccpars2_224(S, '<<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 164, Ss, Stack, T, Ts, Tzr);
yeccpars2_224(S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_cont_208(S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_225, 7}}).

-compile({nowarn_unused_function, {yeccpars2_225, 7}}).

yeccpars2_225(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_225_(Stack),
    yeccgoto_ssa_check_map_key_tuple_elements(hd(Nss),
                                              Cat, Nss, NewStack, T, Ts,
                                              Tzr).

-dialyzer({nowarn_function, {yeccpars2_226, 7}}).

-compile({nowarn_unused_function, {yeccpars2_226, 7}}).

yeccpars2_226(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_226_(Stack),
    yeccgoto_ssa_check_map_key(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_227, 7}}).

-compile({nowarn_unused_function, {yeccpars2_227, 7}}).

yeccpars2_227(S, ']', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 234, Ss, Stack, T, Ts, Tzr);
yeccpars2_227(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_228, 7}}).

-compile({nowarn_unused_function, {yeccpars2_228, 7}}).

yeccpars2_228(S, ',', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 230, Ss, Stack, T, Ts, Tzr);
yeccpars2_228(S, '|', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 231, Ss, Stack, T, Ts, Tzr);
yeccpars2_228(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_228_(Stack),
    yeccgoto_ssa_check_map_key_list(hd(Ss),
                                    Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_229, 7}}).

-compile({nowarn_unused_function, {yeccpars2_229, 7}}).

yeccpars2_229(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_ | Nss] = Ss,
    NewStack = yeccpars2_229_(Stack),
    yeccgoto_ssa_check_map_key(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_232, 7}}).

-compile({nowarn_unused_function, {yeccpars2_232, 7}}).

yeccpars2_232(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_232_(Stack),
    yeccgoto_ssa_check_map_key_list(hd(Nss),
                                    Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_233, 7}}).

-compile({nowarn_unused_function, {yeccpars2_233, 7}}).

yeccpars2_233(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_233_(Stack),
    yeccgoto_ssa_check_map_key_list(hd(Nss),
                                    Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_234, 7}}).

-compile({nowarn_unused_function, {yeccpars2_234, 7}}).

yeccpars2_234(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_234_(Stack),
    yeccgoto_ssa_check_map_key(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

yeccpars2_235(S, '<<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 164, Ss, Stack, T, Ts, Tzr);
yeccpars2_235(S, '}', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 237, Ss, Stack, T, Ts, Tzr);
yeccpars2_235(S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_cont_208(S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_236, 7}}).

-compile({nowarn_unused_function, {yeccpars2_236, 7}}).

yeccpars2_236(S, '}', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 238, Ss, Stack, T, Ts, Tzr);
yeccpars2_236(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_237, 7}}).

-compile({nowarn_unused_function, {yeccpars2_237, 7}}).

yeccpars2_237(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_237_(Stack),
    yeccgoto_ssa_check_map_key(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_238, 7}}).

-compile({nowarn_unused_function, {yeccpars2_238, 7}}).

yeccpars2_238(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _, _ | Nss] = Ss,
    NewStack = yeccpars2_238_(Stack),
    yeccgoto_ssa_check_map_key(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_240, 7}}).

-compile({nowarn_unused_function, {yeccpars2_240, 7}}).

yeccpars2_240(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_240_(Stack),
    yeccgoto_ssa_check_map_key_element(hd(Nss),
                                       Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_242, 7}}).

-compile({nowarn_unused_function, {yeccpars2_242, 7}}).

yeccpars2_242(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_242_(Stack),
    yeccgoto_ssa_check_map_key_elements(hd(Nss),
                                        Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_243, 7}}).

-compile({nowarn_unused_function, {yeccpars2_243, 7}}).

yeccpars2_243(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _, _ | Nss] = Ss,
    NewStack = yeccpars2_243_(Stack),
    yeccgoto_ssa_check_pat(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

yeccpars2_244(S, '...', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 246, Ss, Stack, T, Ts, Tzr);
yeccpars2_244(S, '<<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 164, Ss, Stack, T, Ts, Tzr);
yeccpars2_244(S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_cont_152(S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_245, 7}}).

-compile({nowarn_unused_function, {yeccpars2_245, 7}}).

yeccpars2_245(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_245_(Stack),
    yeccgoto_ssa_check_pats(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_246, 7}}).

-compile({nowarn_unused_function, {yeccpars2_246, 7}}).

yeccpars2_246(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_246_(Stack),
    yeccgoto_ssa_check_pats(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_247, 7}}).

-compile({nowarn_unused_function, {yeccpars2_247, 7}}).

yeccpars2_247(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_247_(Stack),
    yeccgoto_ssa_check_args(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_248, 7}}).

-compile({nowarn_unused_function, {yeccpars2_248, 7}}).

yeccpars2_248(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_ | Nss] = Ss,
    NewStack = yeccpars2_248_(Stack),
    yeccgoto_ssa_check_expr(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_249, 7}}).

-compile({nowarn_unused_function, {yeccpars2_249, 7}}).

yeccpars2_249(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_ | Nss] = Ss,
    NewStack = yeccpars2_249_(Stack),
    yeccgoto_ssa_check_expr(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_250, 7}}).

-compile({nowarn_unused_function, {yeccpars2_250, 7}}).

yeccpars2_250(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_ | Nss] = Ss,
    NewStack = yeccpars2_250_(Stack),
    yeccgoto_ssa_check_expr(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_251, 7}}).

-compile({nowarn_unused_function, {yeccpars2_251, 7}}).

yeccpars2_251(S, ',', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 263, Ss, Stack, T, Ts, Tzr);
yeccpars2_251(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_ | Nss] = Ss,
    NewStack = yeccpars2_251_(Stack),
    yeccgoto_ssa_check_exprs(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_253, 7}}).

-compile({nowarn_unused_function, {yeccpars2_253, 7}}).

yeccpars2_253(S, atom, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 256, Ss, Stack, T, Ts, Tzr);
yeccpars2_253(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_254, 7}}).

-compile({nowarn_unused_function, {yeccpars2_254, 7}}).

yeccpars2_254(S, '}', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 261, Ss, Stack, T, Ts, Tzr);
yeccpars2_254(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_255, 7}}).

-compile({nowarn_unused_function, {yeccpars2_255, 7}}).

yeccpars2_255(S, ',', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 259, Ss, Stack, T, Ts, Tzr);
yeccpars2_255(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_255_(Stack),
    yeccgoto_ssa_check_anno_clauses(hd(Ss),
                                    Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_256, 7}}).

-compile({nowarn_unused_function, {yeccpars2_256, 7}}).

yeccpars2_256(S, '=>', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 257, Ss, Stack, T, Ts, Tzr);
yeccpars2_256(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_258, 7}}).

-compile({nowarn_unused_function, {yeccpars2_258, 7}}).

yeccpars2_258(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_258_(Stack),
    yeccgoto_ssa_check_anno_clause(hd(Nss),
                                   Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_260, 7}}).

-compile({nowarn_unused_function, {yeccpars2_260, 7}}).

yeccpars2_260(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_260_(Stack),
    yeccgoto_ssa_check_anno_clauses(hd(Nss),
                                    Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_261, 7}}).

-compile({nowarn_unused_function, {yeccpars2_261, 7}}).

yeccpars2_261(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_261_(Stack),
    yeccgoto_ssa_check_anno(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_262, 7}}).

-compile({nowarn_unused_function, {yeccpars2_262, 7}}).

yeccpars2_262(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_262_(Stack),
    yeccgoto_ssa_check_exprs(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_264, 7}}).

-compile({nowarn_unused_function, {yeccpars2_264, 7}}).

yeccpars2_264(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _, _ | Nss] = Ss,
    NewStack = yeccpars2_264_(Stack),
    yeccgoto_ssa_check_exprs(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_265, 7}}).

-compile({nowarn_unused_function, {yeccpars2_265, 7}}).

yeccpars2_265(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _, _, _, _, _, _ | Nss] = Ss,
    NewStack = yeccpars2_265_(Stack),
    yeccgoto_ssa_check_when_clause(hd(Nss),
                                   Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_266, 7}}).

-compile({nowarn_unused_function, {yeccpars2_266, 7}}).

yeccpars2_266(S, ')', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 274, Ss, Stack, T, Ts, Tzr);
yeccpars2_266(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_267, 7}}).

-compile({nowarn_unused_function, {yeccpars2_267, 7}}).

yeccpars2_267(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_ | Nss] = Ss,
    NewStack = yeccpars2_267_(Stack),
    yeccgoto_ssa_check_clause_args_ls(hd(Nss),
                                      Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_268, 7}}).

-compile({nowarn_unused_function, {yeccpars2_268, 7}}).

yeccpars2_268(S, ')', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 273, Ss, Stack, T, Ts, Tzr);
yeccpars2_268(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_269, 7}}).

-compile({nowarn_unused_function, {yeccpars2_269, 7}}).

yeccpars2_269(S, ',', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 270, Ss, Stack, T, Ts, Tzr);
yeccpars2_269(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_269_(Stack),
    yeccgoto_ssa_check_clause_args(hd(Ss),
                                   Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_270, 7}}).

-compile({nowarn_unused_function, {yeccpars2_270, 7}}).

yeccpars2_270(S, '...', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 272, Ss, Stack, T, Ts, Tzr);
yeccpars2_270(S, var, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 269, Ss, Stack, T, Ts, Tzr);
yeccpars2_270(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_271, 7}}).

-compile({nowarn_unused_function, {yeccpars2_271, 7}}).

yeccpars2_271(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_271_(Stack),
    yeccgoto_ssa_check_clause_args(hd(Nss),
                                   Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_272, 7}}).

-compile({nowarn_unused_function, {yeccpars2_272, 7}}).

yeccpars2_272(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_272_(Stack),
    yeccgoto_ssa_check_clause_args(hd(Nss),
                                   Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_273, 7}}).

-compile({nowarn_unused_function, {yeccpars2_273, 7}}).

yeccpars2_273(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_273_(Stack),
    yeccgoto_ssa_check_clause_args_ls(hd(Nss),
                                      Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_274, 7}}).

-compile({nowarn_unused_function, {yeccpars2_274, 7}}).

yeccpars2_274(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_274_(Stack),
    yeccgoto_ssa_check_clause_args_ls(hd(Nss),
                                      Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_275, 7}}).

-compile({nowarn_unused_function, {yeccpars2_275, 7}}).

yeccpars2_275(S, atom, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 276, Ss, Stack, T, Ts, Tzr);
yeccpars2_275(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_276, 7}}).

-compile({nowarn_unused_function, {yeccpars2_276, 7}}).

yeccpars2_276(S, '->', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 277, Ss, Stack, T, Ts, Tzr);
yeccpars2_276(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_278, 7}}).

-compile({nowarn_unused_function, {yeccpars2_278, 7}}).

yeccpars2_278(S, '.', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 279, Ss, Stack, T, Ts, Tzr);
yeccpars2_278(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_279, 7}}).

-compile({nowarn_unused_function, {yeccpars2_279, 7}}).

yeccpars2_279(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _, _, _, _, _ | Nss] = Ss,
    NewStack = yeccpars2_279_(Stack),
    yeccgoto_ssa_check_when_clause(hd(Nss),
                                   Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_280, 7}}).

-compile({nowarn_unused_function, {yeccpars2_280, 7}}).

yeccpars2_280(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_ | Nss] = Ss,
    NewStack = yeccpars2_280_(Stack),
    yeccgoto_ssa_check_when_clauses(hd(Nss),
                                    Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_281, 7}}).

-compile({nowarn_unused_function, {yeccpars2_281, 7}}).

yeccpars2_281(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_ | Nss] = Ss,
    NewStack = yeccpars2_281_(Stack),
    yeccgoto_clause_body_exprs(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_282, 7}}).

-compile({nowarn_unused_function, {yeccpars2_282, 7}}).

yeccpars2_282(S, '*', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 94, Ss, Stack, T, Ts, Tzr);
yeccpars2_282(S, '+', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 95, Ss, Stack, T, Ts, Tzr);
yeccpars2_282(S, '++', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 96, Ss, Stack, T, Ts, Tzr);
yeccpars2_282(S, '-', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 97, Ss, Stack, T, Ts, Tzr);
yeccpars2_282(S, '--', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 98, Ss, Stack, T, Ts, Tzr);
yeccpars2_282(S, '/', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 99, Ss, Stack, T, Ts, Tzr);
yeccpars2_282(S, 'and', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 109, Ss, Stack, T, Ts, Tzr);
yeccpars2_282(S, 'band', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 111, Ss, Stack, T, Ts, Tzr);
yeccpars2_282(S, 'bor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 112, Ss, Stack, T, Ts, Tzr);
yeccpars2_282(S, 'bsl', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 113, Ss, Stack, T, Ts, Tzr);
yeccpars2_282(S, 'bsr', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 114, Ss, Stack, T, Ts, Tzr);
yeccpars2_282(S, 'bxor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 115, Ss, Stack, T, Ts, Tzr);
yeccpars2_282(S, 'div', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 116, Ss, Stack, T, Ts, Tzr);
yeccpars2_282(S, 'or', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 117, Ss, Stack, T, Ts, Tzr);
yeccpars2_282(S, 'rem', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 119, Ss, Stack, T, Ts, Tzr);
yeccpars2_282(S, 'xor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 121, Ss, Stack, T, Ts, Tzr);
yeccpars2_282(_S, '!', Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = 'yeccpars2_282_!'(Stack),
    yeccgoto_expr(hd(Nss), '!', Nss, NewStack, T, Ts, Tzr);
yeccpars2_282(_S, '&&', Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = 'yeccpars2_282_&&'(Stack),
    yeccgoto_expr(hd(Nss), '&&', Nss, NewStack, T, Ts, Tzr);
yeccpars2_282(_S, ')', Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = 'yeccpars2_282_)'(Stack),
    yeccgoto_expr(hd(Nss), ')', Nss, NewStack, T, Ts, Tzr);
yeccpars2_282(_S, ',', Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = 'yeccpars2_282_,'(Stack),
    yeccgoto_expr(hd(Nss), ',', Nss, NewStack, T, Ts, Tzr);
yeccpars2_282(_S, '->', Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = 'yeccpars2_282_->'(Stack),
    yeccgoto_expr(hd(Nss), '->', Nss, NewStack, T, Ts, Tzr);
yeccpars2_282(_S, '::', Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = 'yeccpars2_282_::'(Stack),
    yeccgoto_expr(hd(Nss), '::', Nss, NewStack, T, Ts, Tzr);
yeccpars2_282(_S, ':=', Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = 'yeccpars2_282_:='(Stack),
    yeccgoto_expr(hd(Nss), ':=', Nss, NewStack, T, Ts, Tzr);
yeccpars2_282(_S, ';', Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = 'yeccpars2_282_;'(Stack),
    yeccgoto_expr(hd(Nss), ';', Nss, NewStack, T, Ts, Tzr);
yeccpars2_282(_S, '<-', Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = 'yeccpars2_282_<-'(Stack),
    yeccgoto_expr(hd(Nss), '<-', Nss, NewStack, T, Ts, Tzr);
yeccpars2_282(_S, '<:-', Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = 'yeccpars2_282_<:-'(Stack),
    yeccgoto_expr(hd(Nss), '<:-', Nss, NewStack, T, Ts, Tzr);
yeccpars2_282(_S, '=', Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = 'yeccpars2_282_='(Stack),
    yeccgoto_expr(hd(Nss), '=', Nss, NewStack, T, Ts, Tzr);
yeccpars2_282(_S, '=>', Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = 'yeccpars2_282_=>'(Stack),
    yeccgoto_expr(hd(Nss), '=>', Nss, NewStack, T, Ts, Tzr);
yeccpars2_282(_S, '>>', Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = 'yeccpars2_282_>>'(Stack),
    yeccgoto_expr(hd(Nss), '>>', Nss, NewStack, T, Ts, Tzr);
yeccpars2_282(_S, '?=', Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = 'yeccpars2_282_?='(Stack),
    yeccgoto_expr(hd(Nss), '?=', Nss, NewStack, T, Ts, Tzr);
yeccpars2_282(_S, ']', Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = 'yeccpars2_282_]'(Stack),
    yeccgoto_expr(hd(Nss), ']', Nss, NewStack, T, Ts, Tzr);
yeccpars2_282(_S, 'after', Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_282_after(Stack),
    yeccgoto_expr(hd(Nss), 'after', Nss, NewStack, T, Ts, Tzr);
yeccpars2_282(_S, 'andalso', Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_282_andalso(Stack),
    yeccgoto_expr(hd(Nss), 'andalso', Nss, NewStack, T, Ts, Tzr);
yeccpars2_282(_S, 'catch', Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_282_catch(Stack),
    yeccgoto_expr(hd(Nss), 'catch', Nss, NewStack, T, Ts, Tzr);
yeccpars2_282(_S, dot, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_282_dot(Stack),
    yeccgoto_expr(hd(Nss), dot, Nss, NewStack, T, Ts, Tzr);
yeccpars2_282(_S, 'else', Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_282_else(Stack),
    yeccgoto_expr(hd(Nss), 'else', Nss, NewStack, T, Ts, Tzr);
yeccpars2_282(_S, 'end', Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_282_end(Stack),
    yeccgoto_expr(hd(Nss), 'end', Nss, NewStack, T, Ts, Tzr);
yeccpars2_282(_S, 'of', Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_282_of(Stack),
    yeccgoto_expr(hd(Nss), 'of', Nss, NewStack, T, Ts, Tzr);
yeccpars2_282(_S, 'orelse', Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_282_orelse(Stack),
    yeccgoto_expr(hd(Nss), 'orelse', Nss, NewStack, T, Ts, Tzr);
yeccpars2_282(_S, 'when', Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_282_when(Stack),
    yeccgoto_expr(hd(Nss), 'when', Nss, NewStack, T, Ts, Tzr);
yeccpars2_282(_S, '|', Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = 'yeccpars2_282_|'(Stack),
    yeccgoto_expr(hd(Nss), '|', Nss, NewStack, T, Ts, Tzr);
yeccpars2_282(_S, '||', Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = 'yeccpars2_282_||'(Stack),
    yeccgoto_expr(hd(Nss), '||', Nss, NewStack, T, Ts, Tzr);
yeccpars2_282(_S, '}', Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = 'yeccpars2_282_}'(Stack),
    yeccgoto_expr(hd(Nss), '}', Nss, NewStack, T, Ts, Tzr);
yeccpars2_282(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_283, 7}}).

-compile({nowarn_unused_function, {yeccpars2_283, 7}}).

yeccpars2_283(S, '*', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 94, Ss, Stack, T, Ts, Tzr);
yeccpars2_283(S, '+', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 95, Ss, Stack, T, Ts, Tzr);
yeccpars2_283(S, '++', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 96, Ss, Stack, T, Ts, Tzr);
yeccpars2_283(S, '-', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 97, Ss, Stack, T, Ts, Tzr);
yeccpars2_283(S, '--', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 98, Ss, Stack, T, Ts, Tzr);
yeccpars2_283(S, '/', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 99, Ss, Stack, T, Ts, Tzr);
yeccpars2_283(S, 'and', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 109, Ss, Stack, T, Ts, Tzr);
yeccpars2_283(S, 'band', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 111, Ss, Stack, T, Ts, Tzr);
yeccpars2_283(S, 'bor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 112, Ss, Stack, T, Ts, Tzr);
yeccpars2_283(S, 'bsl', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 113, Ss, Stack, T, Ts, Tzr);
yeccpars2_283(S, 'bsr', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 114, Ss, Stack, T, Ts, Tzr);
yeccpars2_283(S, 'bxor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 115, Ss, Stack, T, Ts, Tzr);
yeccpars2_283(S, 'div', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 116, Ss, Stack, T, Ts, Tzr);
yeccpars2_283(S, 'or', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 117, Ss, Stack, T, Ts, Tzr);
yeccpars2_283(S, 'rem', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 119, Ss, Stack, T, Ts, Tzr);
yeccpars2_283(S, 'xor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 121, Ss, Stack, T, Ts, Tzr);
yeccpars2_283(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_283_(Stack),
    yeccgoto_expr(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_284, 7}}).

-compile({nowarn_unused_function, {yeccpars2_284, 7}}).

yeccpars2_284(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_284_(Stack),
    yeccgoto_expr(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_285, 7}}).

-compile({nowarn_unused_function, {yeccpars2_285, 7}}).

yeccpars2_285(S, 'after', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 316, Ss, Stack, T, Ts, Tzr);
yeccpars2_285(S, 'end', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 317, Ss, Stack, T, Ts, Tzr);
yeccpars2_285(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_286, 7}}).

-compile({nowarn_unused_function, {yeccpars2_286, 7}}).

yeccpars2_286(S, ';', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 314, Ss, Stack, T, Ts, Tzr);
yeccpars2_286(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_286_(Stack),
    yeccgoto_try_clauses(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_287, 7}}).

-compile({nowarn_unused_function, {yeccpars2_287, 7}}).

yeccpars2_287(S, '*', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 94, Ss, Stack, T, Ts, Tzr);
yeccpars2_287(S, '+', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 95, Ss, Stack, T, Ts, Tzr);
yeccpars2_287(S, '++', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 96, Ss, Stack, T, Ts, Tzr);
yeccpars2_287(S, '-', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 97, Ss, Stack, T, Ts, Tzr);
yeccpars2_287(S, '--', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 98, Ss, Stack, T, Ts, Tzr);
yeccpars2_287(S, '/', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 99, Ss, Stack, T, Ts, Tzr);
yeccpars2_287(S, '/=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 100, Ss, Stack, T, Ts, Tzr);
yeccpars2_287(S, '<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 101, Ss, Stack, T, Ts, Tzr);
yeccpars2_287(S, '=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 298, Ss, Stack, T, Ts, Tzr);
yeccpars2_287(S, '=/=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 103, Ss, Stack, T, Ts, Tzr);
yeccpars2_287(S, '=:=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 104, Ss, Stack, T, Ts, Tzr);
yeccpars2_287(S, '=<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 105, Ss, Stack, T, Ts, Tzr);
yeccpars2_287(S, '==', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 106, Ss, Stack, T, Ts, Tzr);
yeccpars2_287(S, '>', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 107, Ss, Stack, T, Ts, Tzr);
yeccpars2_287(S, '>=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 108, Ss, Stack, T, Ts, Tzr);
yeccpars2_287(S, 'and', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 109, Ss, Stack, T, Ts, Tzr);
yeccpars2_287(S, 'band', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 111, Ss, Stack, T, Ts, Tzr);
yeccpars2_287(S, 'bor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 112, Ss, Stack, T, Ts, Tzr);
yeccpars2_287(S, 'bsl', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 113, Ss, Stack, T, Ts, Tzr);
yeccpars2_287(S, 'bsr', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 114, Ss, Stack, T, Ts, Tzr);
yeccpars2_287(S, 'bxor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 115, Ss, Stack, T, Ts, Tzr);
yeccpars2_287(S, 'div', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 116, Ss, Stack, T, Ts, Tzr);
yeccpars2_287(S, 'or', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 117, Ss, Stack, T, Ts, Tzr);
yeccpars2_287(S, 'rem', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 119, Ss, Stack, T, Ts, Tzr);
yeccpars2_287(S, 'when', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 120, Ss, Stack, T, Ts, Tzr);
yeccpars2_287(S, 'xor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 121, Ss, Stack, T, Ts, Tzr);
yeccpars2_287(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_287_(Stack),
    yeccpars2_91(312, Cat, [287 | Ss], NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_288, 7}}).

-compile({nowarn_unused_function, {yeccpars2_288, 7}}).

yeccpars2_288(S, ':', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 307, Ss, Stack, T, Ts, Tzr);
yeccpars2_288(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_288_(Stack),
    yeccgoto_atomic(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_289, 7}}).

-compile({nowarn_unused_function, {yeccpars2_289, 7}}).

yeccpars2_289(S, ':', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 290, Ss, Stack, T, Ts, Tzr);
yeccpars2_289(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_289_(Stack),
    yeccgoto_pat_expr_max(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_291, 7}}).

-compile({nowarn_unused_function, {yeccpars2_291, 7}}).

yeccpars2_291(S, '*', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 94, Ss, Stack, T, Ts, Tzr);
yeccpars2_291(S, '+', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 95, Ss, Stack, T, Ts, Tzr);
yeccpars2_291(S, '++', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 96, Ss, Stack, T, Ts, Tzr);
yeccpars2_291(S, '-', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 97, Ss, Stack, T, Ts, Tzr);
yeccpars2_291(S, '--', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 98, Ss, Stack, T, Ts, Tzr);
yeccpars2_291(S, '/', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 99, Ss, Stack, T, Ts, Tzr);
yeccpars2_291(S, '/=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 100, Ss, Stack, T, Ts, Tzr);
yeccpars2_291(S, ':', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 297, Ss, Stack, T, Ts, Tzr);
yeccpars2_291(S, '<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 101, Ss, Stack, T, Ts, Tzr);
yeccpars2_291(S, '=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 298, Ss, Stack, T, Ts, Tzr);
yeccpars2_291(S, '=/=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 103, Ss, Stack, T, Ts, Tzr);
yeccpars2_291(S, '=:=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 104, Ss, Stack, T, Ts, Tzr);
yeccpars2_291(S, '=<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 105, Ss, Stack, T, Ts, Tzr);
yeccpars2_291(S, '==', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 106, Ss, Stack, T, Ts, Tzr);
yeccpars2_291(S, '>', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 107, Ss, Stack, T, Ts, Tzr);
yeccpars2_291(S, '>=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 108, Ss, Stack, T, Ts, Tzr);
yeccpars2_291(S, 'and', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 109, Ss, Stack, T, Ts, Tzr);
yeccpars2_291(S, 'band', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 111, Ss, Stack, T, Ts, Tzr);
yeccpars2_291(S, 'bor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 112, Ss, Stack, T, Ts, Tzr);
yeccpars2_291(S, 'bsl', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 113, Ss, Stack, T, Ts, Tzr);
yeccpars2_291(S, 'bsr', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 114, Ss, Stack, T, Ts, Tzr);
yeccpars2_291(S, 'bxor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 115, Ss, Stack, T, Ts, Tzr);
yeccpars2_291(S, 'div', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 116, Ss, Stack, T, Ts, Tzr);
yeccpars2_291(S, 'or', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 117, Ss, Stack, T, Ts, Tzr);
yeccpars2_291(S, 'rem', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 119, Ss, Stack, T, Ts, Tzr);
yeccpars2_291(S, 'xor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 121, Ss, Stack, T, Ts, Tzr);
yeccpars2_291(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_291_(Stack),
    yeccpars2_292(292, Cat, [291 | Ss], NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_292, 7}}).

-compile({nowarn_unused_function, {yeccpars2_292, 7}}).

yeccpars2_292(S, 'when', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 120, Ss, Stack, T, Ts, Tzr);
yeccpars2_292(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_292_(Stack),
    yeccpars2_91(305, Cat, [292 | Ss], NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_297, 7}}).

-compile({nowarn_unused_function, {yeccpars2_297, 7}}).

yeccpars2_297(S, var, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 300, Ss, Stack, T, Ts, Tzr);
yeccpars2_297(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_299, 7}}).

-compile({nowarn_unused_function, {yeccpars2_299, 7}}).

yeccpars2_299(S, '*', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 94, Ss, Stack, T, Ts, Tzr);
yeccpars2_299(S, '+', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 95, Ss, Stack, T, Ts, Tzr);
yeccpars2_299(S, '++', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 96, Ss, Stack, T, Ts, Tzr);
yeccpars2_299(S, '-', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 97, Ss, Stack, T, Ts, Tzr);
yeccpars2_299(S, '--', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 98, Ss, Stack, T, Ts, Tzr);
yeccpars2_299(S, '/', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 99, Ss, Stack, T, Ts, Tzr);
yeccpars2_299(S, '/=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 100, Ss, Stack, T, Ts, Tzr);
yeccpars2_299(S, '<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 101, Ss, Stack, T, Ts, Tzr);
yeccpars2_299(S, '=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 298, Ss, Stack, T, Ts, Tzr);
yeccpars2_299(S, '=/=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 103, Ss, Stack, T, Ts, Tzr);
yeccpars2_299(S, '=:=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 104, Ss, Stack, T, Ts, Tzr);
yeccpars2_299(S, '=<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 105, Ss, Stack, T, Ts, Tzr);
yeccpars2_299(S, '==', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 106, Ss, Stack, T, Ts, Tzr);
yeccpars2_299(S, '>', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 107, Ss, Stack, T, Ts, Tzr);
yeccpars2_299(S, '>=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 108, Ss, Stack, T, Ts, Tzr);
yeccpars2_299(S, 'and', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 109, Ss, Stack, T, Ts, Tzr);
yeccpars2_299(S, 'band', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 111, Ss, Stack, T, Ts, Tzr);
yeccpars2_299(S, 'bor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 112, Ss, Stack, T, Ts, Tzr);
yeccpars2_299(S, 'bsl', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 113, Ss, Stack, T, Ts, Tzr);
yeccpars2_299(S, 'bsr', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 114, Ss, Stack, T, Ts, Tzr);
yeccpars2_299(S, 'bxor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 115, Ss, Stack, T, Ts, Tzr);
yeccpars2_299(S, 'div', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 116, Ss, Stack, T, Ts, Tzr);
yeccpars2_299(S, 'or', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 117, Ss, Stack, T, Ts, Tzr);
yeccpars2_299(S, 'rem', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 119, Ss, Stack, T, Ts, Tzr);
yeccpars2_299(S, 'xor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 121, Ss, Stack, T, Ts, Tzr);
yeccpars2_299(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_299_(Stack),
    yeccgoto_pat_expr(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_300, 7}}).

-compile({nowarn_unused_function, {yeccpars2_300, 7}}).

yeccpars2_300(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_ | Nss] = Ss,
    NewStack = yeccpars2_300_(Stack),
    yeccgoto_try_opt_stacktrace(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_301, 7}}).

-compile({nowarn_unused_function, {yeccpars2_301, 7}}).

yeccpars2_301(S, '*', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 94, Ss, Stack, T, Ts, Tzr);
yeccpars2_301(S, '/', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 99, Ss, Stack, T, Ts, Tzr);
yeccpars2_301(S, 'and', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 109, Ss, Stack, T, Ts, Tzr);
yeccpars2_301(S, 'band', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 111, Ss, Stack, T, Ts, Tzr);
yeccpars2_301(S, 'div', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 116, Ss, Stack, T, Ts, Tzr);
yeccpars2_301(S, 'rem', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 119, Ss, Stack, T, Ts, Tzr);
yeccpars2_301(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_301_(Stack),
    yeccgoto_pat_expr(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_302, 7}}).

-compile({nowarn_unused_function, {yeccpars2_302, 7}}).

yeccpars2_302(S, '*', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 94, Ss, Stack, T, Ts, Tzr);
yeccpars2_302(S, '+', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 95, Ss, Stack, T, Ts, Tzr);
yeccpars2_302(S, '++', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 96, Ss, Stack, T, Ts, Tzr);
yeccpars2_302(S, '-', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 97, Ss, Stack, T, Ts, Tzr);
yeccpars2_302(S, '--', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 98, Ss, Stack, T, Ts, Tzr);
yeccpars2_302(S, '/', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 99, Ss, Stack, T, Ts, Tzr);
yeccpars2_302(S, 'and', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 109, Ss, Stack, T, Ts, Tzr);
yeccpars2_302(S, 'band', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 111, Ss, Stack, T, Ts, Tzr);
yeccpars2_302(S, 'bor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 112, Ss, Stack, T, Ts, Tzr);
yeccpars2_302(S, 'bsl', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 113, Ss, Stack, T, Ts, Tzr);
yeccpars2_302(S, 'bsr', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 114, Ss, Stack, T, Ts, Tzr);
yeccpars2_302(S, 'bxor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 115, Ss, Stack, T, Ts, Tzr);
yeccpars2_302(S, 'div', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 116, Ss, Stack, T, Ts, Tzr);
yeccpars2_302(S, 'or', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 117, Ss, Stack, T, Ts, Tzr);
yeccpars2_302(S, 'rem', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 119, Ss, Stack, T, Ts, Tzr);
yeccpars2_302(S, 'xor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 121, Ss, Stack, T, Ts, Tzr);
yeccpars2_302(_S, ')', Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = 'yeccpars2_302_)'(Stack),
    yeccgoto_pat_expr(hd(Nss), ')', Nss, NewStack, T, Ts, Tzr);
yeccpars2_302(_S, ',', Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = 'yeccpars2_302_,'(Stack),
    yeccgoto_pat_expr(hd(Nss), ',', Nss, NewStack, T, Ts, Tzr);
yeccpars2_302(_S, '->', Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = 'yeccpars2_302_->'(Stack),
    yeccgoto_pat_expr(hd(Nss), '->', Nss, NewStack, T, Ts, Tzr);
yeccpars2_302(_S, ':', Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = 'yeccpars2_302_:'(Stack),
    yeccgoto_pat_expr(hd(Nss), ':', Nss, NewStack, T, Ts, Tzr);
yeccpars2_302(_S, '=', Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = 'yeccpars2_302_='(Stack),
    yeccgoto_pat_expr(hd(Nss), '=', Nss, NewStack, T, Ts, Tzr);
yeccpars2_302(_S, 'when', Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_302_when(Stack),
    yeccgoto_pat_expr(hd(Nss), 'when', Nss, NewStack, T, Ts, Tzr);
yeccpars2_302(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_303, 7}}).

-compile({nowarn_unused_function, {yeccpars2_303, 7}}).

yeccpars2_303(S, '*', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 94, Ss, Stack, T, Ts, Tzr);
yeccpars2_303(S, '+', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 95, Ss, Stack, T, Ts, Tzr);
yeccpars2_303(S, '++', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 96, Ss, Stack, T, Ts, Tzr);
yeccpars2_303(S, '-', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 97, Ss, Stack, T, Ts, Tzr);
yeccpars2_303(S, '--', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 98, Ss, Stack, T, Ts, Tzr);
yeccpars2_303(S, '/', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 99, Ss, Stack, T, Ts, Tzr);
yeccpars2_303(S, 'and', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 109, Ss, Stack, T, Ts, Tzr);
yeccpars2_303(S, 'band', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 111, Ss, Stack, T, Ts, Tzr);
yeccpars2_303(S, 'bor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 112, Ss, Stack, T, Ts, Tzr);
yeccpars2_303(S, 'bsl', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 113, Ss, Stack, T, Ts, Tzr);
yeccpars2_303(S, 'bsr', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 114, Ss, Stack, T, Ts, Tzr);
yeccpars2_303(S, 'bxor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 115, Ss, Stack, T, Ts, Tzr);
yeccpars2_303(S, 'div', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 116, Ss, Stack, T, Ts, Tzr);
yeccpars2_303(S, 'or', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 117, Ss, Stack, T, Ts, Tzr);
yeccpars2_303(S, 'rem', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 119, Ss, Stack, T, Ts, Tzr);
yeccpars2_303(S, 'xor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 121, Ss, Stack, T, Ts, Tzr);
yeccpars2_303(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_303_(Stack),
    yeccgoto_pat_expr(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_304, 7}}).

-compile({nowarn_unused_function, {yeccpars2_304, 7}}).

yeccpars2_304(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_304_(Stack),
    yeccgoto_pat_expr(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_306, 7}}).

-compile({nowarn_unused_function, {yeccpars2_306, 7}}).

yeccpars2_306(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _, _, _, _ | Nss] = Ss,
    NewStack = yeccpars2_306_(Stack),
    yeccgoto_try_clause(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_308, 7}}).

-compile({nowarn_unused_function, {yeccpars2_308, 7}}).

yeccpars2_308(S, '*', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 94, Ss, Stack, T, Ts, Tzr);
yeccpars2_308(S, '+', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 95, Ss, Stack, T, Ts, Tzr);
yeccpars2_308(S, '++', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 96, Ss, Stack, T, Ts, Tzr);
yeccpars2_308(S, '-', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 97, Ss, Stack, T, Ts, Tzr);
yeccpars2_308(S, '--', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 98, Ss, Stack, T, Ts, Tzr);
yeccpars2_308(S, '/', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 99, Ss, Stack, T, Ts, Tzr);
yeccpars2_308(S, '/=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 100, Ss, Stack, T, Ts, Tzr);
yeccpars2_308(S, ':', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 297, Ss, Stack, T, Ts, Tzr);
yeccpars2_308(S, '<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 101, Ss, Stack, T, Ts, Tzr);
yeccpars2_308(S, '=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 298, Ss, Stack, T, Ts, Tzr);
yeccpars2_308(S, '=/=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 103, Ss, Stack, T, Ts, Tzr);
yeccpars2_308(S, '=:=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 104, Ss, Stack, T, Ts, Tzr);
yeccpars2_308(S, '=<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 105, Ss, Stack, T, Ts, Tzr);
yeccpars2_308(S, '==', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 106, Ss, Stack, T, Ts, Tzr);
yeccpars2_308(S, '>', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 107, Ss, Stack, T, Ts, Tzr);
yeccpars2_308(S, '>=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 108, Ss, Stack, T, Ts, Tzr);
yeccpars2_308(S, 'and', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 109, Ss, Stack, T, Ts, Tzr);
yeccpars2_308(S, 'band', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 111, Ss, Stack, T, Ts, Tzr);
yeccpars2_308(S, 'bor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 112, Ss, Stack, T, Ts, Tzr);
yeccpars2_308(S, 'bsl', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 113, Ss, Stack, T, Ts, Tzr);
yeccpars2_308(S, 'bsr', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 114, Ss, Stack, T, Ts, Tzr);
yeccpars2_308(S, 'bxor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 115, Ss, Stack, T, Ts, Tzr);
yeccpars2_308(S, 'div', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 116, Ss, Stack, T, Ts, Tzr);
yeccpars2_308(S, 'or', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 117, Ss, Stack, T, Ts, Tzr);
yeccpars2_308(S, 'rem', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 119, Ss, Stack, T, Ts, Tzr);
yeccpars2_308(S, 'xor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 121, Ss, Stack, T, Ts, Tzr);
yeccpars2_308(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_308_(Stack),
    yeccpars2_309(309, Cat, [308 | Ss], NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_309, 7}}).

-compile({nowarn_unused_function, {yeccpars2_309, 7}}).

yeccpars2_309(S, 'when', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 120, Ss, Stack, T, Ts, Tzr);
yeccpars2_309(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_309_(Stack),
    yeccpars2_91(310, Cat, [309 | Ss], NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_311, 7}}).

-compile({nowarn_unused_function, {yeccpars2_311, 7}}).

yeccpars2_311(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _, _, _, _ | Nss] = Ss,
    NewStack = yeccpars2_311_(Stack),
    yeccgoto_try_clause(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_313, 7}}).

-compile({nowarn_unused_function, {yeccpars2_313, 7}}).

yeccpars2_313(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_313_(Stack),
    yeccgoto_try_clause(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_315, 7}}).

-compile({nowarn_unused_function, {yeccpars2_315, 7}}).

yeccpars2_315(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_315_(Stack),
    yeccgoto_try_clauses(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_317, 7}}).

-compile({nowarn_unused_function, {yeccpars2_317, 7}}).

yeccpars2_317(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_317_(Stack),
    yeccgoto_try_catch(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_318, 7}}).

-compile({nowarn_unused_function, {yeccpars2_318, 7}}).

yeccpars2_318(S, 'end', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 319, Ss, Stack, T, Ts, Tzr);
yeccpars2_318(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_319, 7}}).

-compile({nowarn_unused_function, {yeccpars2_319, 7}}).

yeccpars2_319(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _, _, _ | Nss] = Ss,
    NewStack = yeccpars2_319_(Stack),
    yeccgoto_try_catch(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_320, 7}}).

-compile({nowarn_unused_function, {yeccpars2_320, 7}}).

yeccpars2_320(S, 'end', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 321, Ss, Stack, T, Ts, Tzr);
yeccpars2_320(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_321, 7}}).

-compile({nowarn_unused_function, {yeccpars2_321, 7}}).

yeccpars2_321(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_321_(Stack),
    yeccgoto_try_catch(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_322, 7}}).

-compile({nowarn_unused_function, {yeccpars2_322, 7}}).

yeccpars2_322(S, 'after', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 327, Ss, Stack, T, Ts, Tzr);
yeccpars2_322(S, 'end', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 328, Ss, Stack, T, Ts, Tzr);
yeccpars2_322(_, _, _, _, T, _, _) ->
    yeccerror(T).

yeccpars2_324(S, '!', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 93, Ss, Stack, T, Ts, Tzr);
yeccpars2_324(S, '->', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 132, Ss, Stack, T, Ts, Tzr);
yeccpars2_324(S, '=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 102, Ss, Stack, T, Ts, Tzr);
yeccpars2_324(S, 'andalso', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 110, Ss, Stack, T, Ts, Tzr);
yeccpars2_324(S, 'orelse', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 118, Ss, Stack, T, Ts, Tzr);
yeccpars2_324(S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_cont_324(S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_324, 7}}).

-compile({nowarn_unused_function, {yeccpars2_324, 7}}).

yeccpars2_cont_324(S, '*', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 94, Ss, Stack, T, Ts, Tzr);
yeccpars2_cont_324(S, '+', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 95, Ss, Stack, T, Ts, Tzr);
yeccpars2_cont_324(S, '++', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 96, Ss, Stack, T, Ts, Tzr);
yeccpars2_cont_324(S, '-', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 97, Ss, Stack, T, Ts, Tzr);
yeccpars2_cont_324(S, '--', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 98, Ss, Stack, T, Ts, Tzr);
yeccpars2_cont_324(S, '/', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 99, Ss, Stack, T, Ts, Tzr);
yeccpars2_cont_324(S, '/=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 100, Ss, Stack, T, Ts, Tzr);
yeccpars2_cont_324(S, '<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 101, Ss, Stack, T, Ts, Tzr);
yeccpars2_cont_324(S, '=/=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 103, Ss, Stack, T, Ts, Tzr);
yeccpars2_cont_324(S, '=:=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 104, Ss, Stack, T, Ts, Tzr);
yeccpars2_cont_324(S, '=<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 105, Ss, Stack, T, Ts, Tzr);
yeccpars2_cont_324(S, '==', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 106, Ss, Stack, T, Ts, Tzr);
yeccpars2_cont_324(S, '>', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 107, Ss, Stack, T, Ts, Tzr);
yeccpars2_cont_324(S, '>=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 108, Ss, Stack, T, Ts, Tzr);
yeccpars2_cont_324(S, 'and', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 109, Ss, Stack, T, Ts, Tzr);
yeccpars2_cont_324(S, 'band', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 111, Ss, Stack, T, Ts, Tzr);
yeccpars2_cont_324(S, 'bor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 112, Ss, Stack, T, Ts, Tzr);
yeccpars2_cont_324(S, 'bsl', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 113, Ss, Stack, T, Ts, Tzr);
yeccpars2_cont_324(S, 'bsr', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 114, Ss, Stack, T, Ts, Tzr);
yeccpars2_cont_324(S, 'bxor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 115, Ss, Stack, T, Ts, Tzr);
yeccpars2_cont_324(S, 'div', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 116, Ss, Stack, T, Ts, Tzr);
yeccpars2_cont_324(S, 'or', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 117, Ss, Stack, T, Ts, Tzr);
yeccpars2_cont_324(S, 'rem', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 119, Ss, Stack, T, Ts, Tzr);
yeccpars2_cont_324(S, 'xor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 121, Ss, Stack, T, Ts, Tzr);
yeccpars2_cont_324(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_325, 7}}).

-compile({nowarn_unused_function, {yeccpars2_325, 7}}).

yeccpars2_325(S, 'end', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 326, Ss, Stack, T, Ts, Tzr);
yeccpars2_325(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_326, 7}}).

-compile({nowarn_unused_function, {yeccpars2_326, 7}}).

yeccpars2_326(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _, _, _ | Nss] = Ss,
    NewStack = yeccpars2_326_(Stack),
    yeccgoto_receive_expr(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_328, 7}}).

-compile({nowarn_unused_function, {yeccpars2_328, 7}}).

yeccpars2_328(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_328_(Stack),
    yeccgoto_receive_expr(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_330, 7}}).

-compile({nowarn_unused_function, {yeccpars2_330, 7}}).

yeccpars2_330(S, 'end', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 331, Ss, Stack, T, Ts, Tzr);
yeccpars2_330(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_331, 7}}).

-compile({nowarn_unused_function, {yeccpars2_331, 7}}).

yeccpars2_331(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _, _, _, _ | Nss] = Ss,
    NewStack = yeccpars2_331_(Stack),
    yeccgoto_receive_expr(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_332, 7}}).

-compile({nowarn_unused_function, {yeccpars2_332, 7}}).

yeccpars2_332(S, 'else', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 341, Ss, Stack, T, Ts, Tzr);
yeccpars2_332(S, 'end', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 342, Ss, Stack, T, Ts, Tzr);
yeccpars2_332(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_333, 7}}).

-compile({nowarn_unused_function, {yeccpars2_333, 7}}).

yeccpars2_333(S, ',', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 339, Ss, Stack, T, Ts, Tzr);
yeccpars2_333(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_333_(Stack),
    yeccgoto_maybe_match_exprs(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_334, 7}}).

-compile({nowarn_unused_function, {yeccpars2_334, 7}}).

yeccpars2_334(S, '!', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 93, Ss, Stack, T, Ts, Tzr);
yeccpars2_334(S, '*', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 94, Ss, Stack, T, Ts, Tzr);
yeccpars2_334(S, '+', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 95, Ss, Stack, T, Ts, Tzr);
yeccpars2_334(S, '++', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 96, Ss, Stack, T, Ts, Tzr);
yeccpars2_334(S, ',', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 335, Ss, Stack, T, Ts, Tzr);
yeccpars2_334(S, '-', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 97, Ss, Stack, T, Ts, Tzr);
yeccpars2_334(S, '--', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 98, Ss, Stack, T, Ts, Tzr);
yeccpars2_334(S, '/', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 99, Ss, Stack, T, Ts, Tzr);
yeccpars2_334(S, '/=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 100, Ss, Stack, T, Ts, Tzr);
yeccpars2_334(S, '<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 101, Ss, Stack, T, Ts, Tzr);
yeccpars2_334(S, '=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 102, Ss, Stack, T, Ts, Tzr);
yeccpars2_334(S, '=/=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 103, Ss, Stack, T, Ts, Tzr);
yeccpars2_334(S, '=:=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 104, Ss, Stack, T, Ts, Tzr);
yeccpars2_334(S, '=<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 105, Ss, Stack, T, Ts, Tzr);
yeccpars2_334(S, '==', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 106, Ss, Stack, T, Ts, Tzr);
yeccpars2_334(S, '>', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 107, Ss, Stack, T, Ts, Tzr);
yeccpars2_334(S, '>=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 108, Ss, Stack, T, Ts, Tzr);
yeccpars2_334(S, '?=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 336, Ss, Stack, T, Ts, Tzr);
yeccpars2_334(S, 'and', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 109, Ss, Stack, T, Ts, Tzr);
yeccpars2_334(S, 'andalso', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 110, Ss, Stack, T, Ts, Tzr);
yeccpars2_334(S, 'band', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 111, Ss, Stack, T, Ts, Tzr);
yeccpars2_334(S, 'bor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 112, Ss, Stack, T, Ts, Tzr);
yeccpars2_334(S, 'bsl', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 113, Ss, Stack, T, Ts, Tzr);
yeccpars2_334(S, 'bsr', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 114, Ss, Stack, T, Ts, Tzr);
yeccpars2_334(S, 'bxor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 115, Ss, Stack, T, Ts, Tzr);
yeccpars2_334(S, 'div', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 116, Ss, Stack, T, Ts, Tzr);
yeccpars2_334(S, 'or', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 117, Ss, Stack, T, Ts, Tzr);
yeccpars2_334(S, 'orelse', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 118, Ss, Stack, T, Ts, Tzr);
yeccpars2_334(S, 'rem', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 119, Ss, Stack, T, Ts, Tzr);
yeccpars2_334(S, 'xor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 121, Ss, Stack, T, Ts, Tzr);
yeccpars2_334(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_334_(Stack),
    yeccgoto_maybe_match_exprs(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_337, 7}}).

-compile({nowarn_unused_function, {yeccpars2_337, 7}}).

yeccpars2_337(S, '!', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 93, Ss, Stack, T, Ts, Tzr);
yeccpars2_337(S, '*', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 94, Ss, Stack, T, Ts, Tzr);
yeccpars2_337(S, '+', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 95, Ss, Stack, T, Ts, Tzr);
yeccpars2_337(S, '++', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 96, Ss, Stack, T, Ts, Tzr);
yeccpars2_337(S, '-', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 97, Ss, Stack, T, Ts, Tzr);
yeccpars2_337(S, '--', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 98, Ss, Stack, T, Ts, Tzr);
yeccpars2_337(S, '/', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 99, Ss, Stack, T, Ts, Tzr);
yeccpars2_337(S, '/=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 100, Ss, Stack, T, Ts, Tzr);
yeccpars2_337(S, '<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 101, Ss, Stack, T, Ts, Tzr);
yeccpars2_337(S, '=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 102, Ss, Stack, T, Ts, Tzr);
yeccpars2_337(S, '=/=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 103, Ss, Stack, T, Ts, Tzr);
yeccpars2_337(S, '=:=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 104, Ss, Stack, T, Ts, Tzr);
yeccpars2_337(S, '=<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 105, Ss, Stack, T, Ts, Tzr);
yeccpars2_337(S, '==', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 106, Ss, Stack, T, Ts, Tzr);
yeccpars2_337(S, '>', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 107, Ss, Stack, T, Ts, Tzr);
yeccpars2_337(S, '>=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 108, Ss, Stack, T, Ts, Tzr);
yeccpars2_337(S, 'and', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 109, Ss, Stack, T, Ts, Tzr);
yeccpars2_337(S, 'andalso', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 110, Ss, Stack, T, Ts, Tzr);
yeccpars2_337(S, 'band', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 111, Ss, Stack, T, Ts, Tzr);
yeccpars2_337(S, 'bor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 112, Ss, Stack, T, Ts, Tzr);
yeccpars2_337(S, 'bsl', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 113, Ss, Stack, T, Ts, Tzr);
yeccpars2_337(S, 'bsr', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 114, Ss, Stack, T, Ts, Tzr);
yeccpars2_337(S, 'bxor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 115, Ss, Stack, T, Ts, Tzr);
yeccpars2_337(S, 'div', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 116, Ss, Stack, T, Ts, Tzr);
yeccpars2_337(S, 'or', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 117, Ss, Stack, T, Ts, Tzr);
yeccpars2_337(S, 'orelse', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 118, Ss, Stack, T, Ts, Tzr);
yeccpars2_337(S, 'rem', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 119, Ss, Stack, T, Ts, Tzr);
yeccpars2_337(S, 'xor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 121, Ss, Stack, T, Ts, Tzr);
yeccpars2_337(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_337_(Stack),
    yeccgoto_maybe_match(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_338, 7}}).

-compile({nowarn_unused_function, {yeccpars2_338, 7}}).

yeccpars2_338(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_338_(Stack),
    yeccgoto_maybe_match_exprs(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_340, 7}}).

-compile({nowarn_unused_function, {yeccpars2_340, 7}}).

yeccpars2_340(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_340_(Stack),
    yeccgoto_maybe_match_exprs(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_342, 7}}).

-compile({nowarn_unused_function, {yeccpars2_342, 7}}).

yeccpars2_342(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_342_(Stack),
    yeccgoto_maybe_expr(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_343, 7}}).

-compile({nowarn_unused_function, {yeccpars2_343, 7}}).

yeccpars2_343(S, 'end', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 344, Ss, Stack, T, Ts, Tzr);
yeccpars2_343(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_344, 7}}).

-compile({nowarn_unused_function, {yeccpars2_344, 7}}).

yeccpars2_344(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _, _, _ | Nss] = Ss,
    NewStack = yeccpars2_344_(Stack),
    yeccgoto_maybe_expr(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_345, 7}}).

-compile({nowarn_unused_function, {yeccpars2_345, 7}}).

yeccpars2_345(S, 'end', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 351, Ss, Stack, T, Ts, Tzr);
yeccpars2_345(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_346, 7}}).

-compile({nowarn_unused_function, {yeccpars2_346, 7}}).

yeccpars2_346(S, ';', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 349, Ss, Stack, T, Ts, Tzr);
yeccpars2_346(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_346_(Stack),
    yeccgoto_if_clauses(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_348, 7}}).

-compile({nowarn_unused_function, {yeccpars2_348, 7}}).

yeccpars2_348(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_ | Nss] = Ss,
    NewStack = yeccpars2_348_(Stack),
    yeccgoto_if_clause(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_350, 7}}).

-compile({nowarn_unused_function, {yeccpars2_350, 7}}).

yeccpars2_350(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_350_(Stack),
    yeccgoto_if_clauses(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_351, 7}}).

-compile({nowarn_unused_function, {yeccpars2_351, 7}}).

yeccpars2_351(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_351_(Stack),
    yeccgoto_if_expr(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_352, 7}}).

-compile({nowarn_unused_function, {yeccpars2_352, 7}}).

yeccpars2_352(S, 'when', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 120, Ss, Stack, T, Ts, Tzr);
yeccpars2_352(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_352_(Stack),
    yeccpars2_91(375, Cat, [352 | Ss], NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_353, 7}}).

-compile({nowarn_unused_function, {yeccpars2_353, 7}}).

yeccpars2_353(S, 'end', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 374, Ss, Stack, T, Ts, Tzr);
yeccpars2_353(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_354, 7}}).

-compile({nowarn_unused_function, {yeccpars2_354, 7}}).

yeccpars2_354(S, ';', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 371, Ss, Stack, T, Ts, Tzr);
yeccpars2_354(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_354_(Stack),
    yeccgoto_fun_clauses(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_355, 7}}).

-compile({nowarn_unused_function, {yeccpars2_355, 7}}).

yeccpars2_355(S, ':', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 363, Ss, Stack, T, Ts, Tzr);
yeccpars2_355(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_356, 7}}).

-compile({nowarn_unused_function, {yeccpars2_356, 7}}).

yeccpars2_356(S, '/', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 361, Ss, Stack, T, Ts, Tzr);
yeccpars2_356(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_356_(Stack),
    yeccgoto_atom_or_var(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_357, 7}}).

-compile({nowarn_unused_function, {yeccpars2_357, 7}}).

yeccpars2_357(S, '(', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 10, Ss, Stack, T, Ts, Tzr);
yeccpars2_357(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_357_(Stack),
    yeccgoto_atom_or_var(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_358, 7}}).

-compile({nowarn_unused_function, {yeccpars2_358, 7}}).

yeccpars2_358(S, 'when', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 120, Ss, Stack, T, Ts, Tzr);
yeccpars2_358(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_358_(Stack),
    yeccpars2_91(359, Cat, [358 | Ss], NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_360, 7}}).

-compile({nowarn_unused_function, {yeccpars2_360, 7}}).

yeccpars2_360(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _, _ | Nss] = Ss,
    NewStack = yeccpars2_360_(Stack),
    yeccgoto_fun_clause(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_361, 7}}).

-compile({nowarn_unused_function, {yeccpars2_361, 7}}).

yeccpars2_361(S, integer, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 362, Ss, Stack, T, Ts, Tzr);
yeccpars2_361(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_362, 7}}).

-compile({nowarn_unused_function, {yeccpars2_362, 7}}).

yeccpars2_362(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _, _ | Nss] = Ss,
    NewStack = yeccpars2_362_(Stack),
    yeccgoto_fun_expr(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_363, 7}}).

-compile({nowarn_unused_function, {yeccpars2_363, 7}}).

yeccpars2_363(S, atom, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 365, Ss, Stack, T, Ts, Tzr);
yeccpars2_363(S, var, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 366, Ss, Stack, T, Ts, Tzr);
yeccpars2_363(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_364, 7}}).

-compile({nowarn_unused_function, {yeccpars2_364, 7}}).

yeccpars2_364(S, '/', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 367, Ss, Stack, T, Ts, Tzr);
yeccpars2_364(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_365, 7}}).

-compile({nowarn_unused_function, {yeccpars2_365, 7}}).

yeccpars2_365(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_365_(Stack),
    yeccgoto_atom_or_var(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_366, 7}}).

-compile({nowarn_unused_function, {yeccpars2_366, 7}}).

yeccpars2_366(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_366_(Stack),
    yeccgoto_atom_or_var(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_367, 7}}).

-compile({nowarn_unused_function, {yeccpars2_367, 7}}).

yeccpars2_367(S, integer, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 369, Ss, Stack, T, Ts, Tzr);
yeccpars2_367(S, var, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 370, Ss, Stack, T, Ts, Tzr);
yeccpars2_367(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_368, 7}}).

-compile({nowarn_unused_function, {yeccpars2_368, 7}}).

yeccpars2_368(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _, _, _, _ | Nss] = Ss,
    NewStack = yeccpars2_368_(Stack),
    yeccgoto_fun_expr(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_369, 7}}).

-compile({nowarn_unused_function, {yeccpars2_369, 7}}).

yeccpars2_369(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_369_(Stack),
    yeccgoto_integer_or_var(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_370, 7}}).

-compile({nowarn_unused_function, {yeccpars2_370, 7}}).

yeccpars2_370(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_370_(Stack),
    yeccgoto_integer_or_var(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_371, 7}}).

-compile({nowarn_unused_function, {yeccpars2_371, 7}}).

yeccpars2_371(S, '(', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 10, Ss, Stack, T, Ts, Tzr);
yeccpars2_371(S, var, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 373, Ss, Stack, T, Ts, Tzr);
yeccpars2_371(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_372, 7}}).

-compile({nowarn_unused_function, {yeccpars2_372, 7}}).

yeccpars2_372(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_372_(Stack),
    yeccgoto_fun_clauses(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_374, 7}}).

-compile({nowarn_unused_function, {yeccpars2_374, 7}}).

yeccpars2_374(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_374_(Stack),
    yeccgoto_fun_expr(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_376, 7}}).

-compile({nowarn_unused_function, {yeccpars2_376, 7}}).

yeccpars2_376(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_376_(Stack),
    yeccgoto_fun_clause(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_377, 7}}).

-compile({nowarn_unused_function, {yeccpars2_377, 7}}).

yeccpars2_377(S, '!', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 93, Ss, Stack, T, Ts, Tzr);
yeccpars2_377(S, '*', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 94, Ss, Stack, T, Ts, Tzr);
yeccpars2_377(S, '+', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 95, Ss, Stack, T, Ts, Tzr);
yeccpars2_377(S, '++', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 96, Ss, Stack, T, Ts, Tzr);
yeccpars2_377(S, '-', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 97, Ss, Stack, T, Ts, Tzr);
yeccpars2_377(S, '--', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 98, Ss, Stack, T, Ts, Tzr);
yeccpars2_377(S, '/', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 99, Ss, Stack, T, Ts, Tzr);
yeccpars2_377(S, '/=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 100, Ss, Stack, T, Ts, Tzr);
yeccpars2_377(S, '<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 101, Ss, Stack, T, Ts, Tzr);
yeccpars2_377(S, '=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 102, Ss, Stack, T, Ts, Tzr);
yeccpars2_377(S, '=/=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 103, Ss, Stack, T, Ts, Tzr);
yeccpars2_377(S, '=:=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 104, Ss, Stack, T, Ts, Tzr);
yeccpars2_377(S, '=<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 105, Ss, Stack, T, Ts, Tzr);
yeccpars2_377(S, '==', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 106, Ss, Stack, T, Ts, Tzr);
yeccpars2_377(S, '>', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 107, Ss, Stack, T, Ts, Tzr);
yeccpars2_377(S, '>=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 108, Ss, Stack, T, Ts, Tzr);
yeccpars2_377(S, 'and', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 109, Ss, Stack, T, Ts, Tzr);
yeccpars2_377(S, 'andalso', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 110, Ss, Stack, T, Ts, Tzr);
yeccpars2_377(S, 'band', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 111, Ss, Stack, T, Ts, Tzr);
yeccpars2_377(S, 'bor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 112, Ss, Stack, T, Ts, Tzr);
yeccpars2_377(S, 'bsl', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 113, Ss, Stack, T, Ts, Tzr);
yeccpars2_377(S, 'bsr', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 114, Ss, Stack, T, Ts, Tzr);
yeccpars2_377(S, 'bxor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 115, Ss, Stack, T, Ts, Tzr);
yeccpars2_377(S, 'div', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 116, Ss, Stack, T, Ts, Tzr);
yeccpars2_377(S, 'or', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 117, Ss, Stack, T, Ts, Tzr);
yeccpars2_377(S, 'orelse', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 118, Ss, Stack, T, Ts, Tzr);
yeccpars2_377(S, 'rem', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 119, Ss, Stack, T, Ts, Tzr);
yeccpars2_377(S, 'xor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 121, Ss, Stack, T, Ts, Tzr);
yeccpars2_377(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_ | Nss] = Ss,
    NewStack = yeccpars2_377_(Stack),
    yeccgoto_expr(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

yeccpars2_378(S, '!', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 93, Ss, Stack, T, Ts, Tzr);
yeccpars2_378(S, '=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 102, Ss, Stack, T, Ts, Tzr);
yeccpars2_378(S, 'andalso', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 110, Ss, Stack, T, Ts, Tzr);
yeccpars2_378(S, 'of', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 379, Ss, Stack, T, Ts, Tzr);
yeccpars2_378(S, 'orelse', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 118, Ss, Stack, T, Ts, Tzr);
yeccpars2_378(S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_cont_324(S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_380, 7}}).

-compile({nowarn_unused_function, {yeccpars2_380, 7}}).

yeccpars2_380(S, 'end', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 381, Ss, Stack, T, Ts, Tzr);
yeccpars2_380(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_381, 7}}).

-compile({nowarn_unused_function, {yeccpars2_381, 7}}).

yeccpars2_381(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _, _, _ | Nss] = Ss,
    NewStack = yeccpars2_381_(Stack),
    yeccgoto_case_expr(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_382, 7}}).

-compile({nowarn_unused_function, {yeccpars2_382, 7}}).

yeccpars2_382(S, 'end', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 383, Ss, Stack, T, Ts, Tzr);
yeccpars2_382(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_383, 7}}).

-compile({nowarn_unused_function, {yeccpars2_383, 7}}).

yeccpars2_383(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_383_(Stack),
    yeccgoto_expr_max(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

yeccpars2_384(S, '!', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 93, Ss, Stack, T, Ts, Tzr);
yeccpars2_384(S, ',', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 387, Ss, Stack, T, Ts, Tzr);
yeccpars2_384(S, '=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 102, Ss, Stack, T, Ts, Tzr);
yeccpars2_384(S, ']', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 388, Ss, Stack, T, Ts, Tzr);
yeccpars2_384(S, 'andalso', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 110, Ss, Stack, T, Ts, Tzr);
yeccpars2_384(S, 'orelse', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 118, Ss, Stack, T, Ts, Tzr);
yeccpars2_384(S, '|', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 389, Ss, Stack, T, Ts, Tzr);
yeccpars2_384(S, '||', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 390, Ss, Stack, T, Ts, Tzr);
yeccpars2_384(S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_cont_324(S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_385, 7}}).

-compile({nowarn_unused_function, {yeccpars2_385, 7}}).

yeccpars2_385(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_ | Nss] = Ss,
    NewStack = yeccpars2_385_(Stack),
    yeccgoto_list(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_386, 7}}).

-compile({nowarn_unused_function, {yeccpars2_386, 7}}).

yeccpars2_386(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_386_(Stack),
    yeccgoto_list(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_388, 7}}).

-compile({nowarn_unused_function, {yeccpars2_388, 7}}).

yeccpars2_388(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_388_(Stack),
    yeccgoto_tail(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_391, 7}}).

-compile({nowarn_unused_function, {yeccpars2_391, 7}}).

yeccpars2_391(S, ',', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 418, Ss, Stack, T, Ts, Tzr);
yeccpars2_391(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_391_(Stack),
    yeccgoto_lc_exprs(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_392, 7}}).

-compile({nowarn_unused_function, {yeccpars2_392, 7}}).

yeccpars2_392(S, ':=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 416, Ss, Stack, T, Ts, Tzr);
yeccpars2_392(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_393, 7}}).

-compile({nowarn_unused_function, {yeccpars2_393, 7}}).

yeccpars2_393(S, '<-', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 412, Ss, Stack, T, Ts, Tzr);
yeccpars2_393(S, '<:-', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 413, Ss, Stack, T, Ts, Tzr);
yeccpars2_393(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_394, 7}}).

-compile({nowarn_unused_function, {yeccpars2_394, 7}}).

yeccpars2_394(S, ']', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 411, Ss, Stack, T, Ts, Tzr);
yeccpars2_394(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_395, 7}}).

-compile({nowarn_unused_function, {yeccpars2_395, 7}}).

yeccpars2_395(S, '&&', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 406, Ss, Stack, T, Ts, Tzr);
yeccpars2_395(S, ',', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 407, Ss, Stack, T, Ts, Tzr);
yeccpars2_395(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_395_(Stack),
    yeccgoto_lc_exprs(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_396, 7}}).

-compile({nowarn_unused_function, {yeccpars2_396, 7}}).

yeccpars2_396(S, '!', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 93, Ss, Stack, T, Ts, Tzr);
yeccpars2_396(S, '*', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 94, Ss, Stack, T, Ts, Tzr);
yeccpars2_396(S, '+', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 95, Ss, Stack, T, Ts, Tzr);
yeccpars2_396(S, '++', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 96, Ss, Stack, T, Ts, Tzr);
yeccpars2_396(S, '-', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 97, Ss, Stack, T, Ts, Tzr);
yeccpars2_396(S, '--', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 98, Ss, Stack, T, Ts, Tzr);
yeccpars2_396(S, '/', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 99, Ss, Stack, T, Ts, Tzr);
yeccpars2_396(S, '/=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 100, Ss, Stack, T, Ts, Tzr);
yeccpars2_396(S, '<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 101, Ss, Stack, T, Ts, Tzr);
yeccpars2_396(S, '<-', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 402, Ss, Stack, T, Ts, Tzr);
yeccpars2_396(S, '<:-', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 403, Ss, Stack, T, Ts, Tzr);
yeccpars2_396(S, '=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 102, Ss, Stack, T, Ts, Tzr);
yeccpars2_396(S, '=/=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 103, Ss, Stack, T, Ts, Tzr);
yeccpars2_396(S, '=:=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 104, Ss, Stack, T, Ts, Tzr);
yeccpars2_396(S, '=<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 105, Ss, Stack, T, Ts, Tzr);
yeccpars2_396(S, '==', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 106, Ss, Stack, T, Ts, Tzr);
yeccpars2_396(S, '>', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 107, Ss, Stack, T, Ts, Tzr);
yeccpars2_396(S, '>=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 108, Ss, Stack, T, Ts, Tzr);
yeccpars2_396(S, 'and', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 109, Ss, Stack, T, Ts, Tzr);
yeccpars2_396(S, 'andalso', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 110, Ss, Stack, T, Ts, Tzr);
yeccpars2_396(S, 'band', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 111, Ss, Stack, T, Ts, Tzr);
yeccpars2_396(S, 'bor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 112, Ss, Stack, T, Ts, Tzr);
yeccpars2_396(S, 'bsl', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 113, Ss, Stack, T, Ts, Tzr);
yeccpars2_396(S, 'bsr', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 114, Ss, Stack, T, Ts, Tzr);
yeccpars2_396(S, 'bxor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 115, Ss, Stack, T, Ts, Tzr);
yeccpars2_396(S, 'div', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 116, Ss, Stack, T, Ts, Tzr);
yeccpars2_396(S, 'or', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 117, Ss, Stack, T, Ts, Tzr);
yeccpars2_396(S, 'orelse', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 118, Ss, Stack, T, Ts, Tzr);
yeccpars2_396(S, 'rem', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 119, Ss, Stack, T, Ts, Tzr);
yeccpars2_396(S, 'xor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 121, Ss, Stack, T, Ts, Tzr);
yeccpars2_396(_S, '&&', Ss, Stack, T, Ts, Tzr) ->
    NewStack = 'yeccpars2_396_&&'(Stack),
    yeccgoto_lc_expr(hd(Ss), '&&', Ss, NewStack, T, Ts, Tzr);
yeccpars2_396(_S, ',', Ss, Stack, T, Ts, Tzr) ->
    NewStack = 'yeccpars2_396_,'(Stack),
    yeccgoto_lc_expr(hd(Ss), ',', Ss, NewStack, T, Ts, Tzr);
yeccpars2_396(_S, '>>', Ss, Stack, T, Ts, Tzr) ->
    NewStack = 'yeccpars2_396_>>'(Stack),
    yeccgoto_lc_expr(hd(Ss), '>>', Ss, NewStack, T, Ts, Tzr);
yeccpars2_396(_S, ']', Ss, Stack, T, Ts, Tzr) ->
    NewStack = 'yeccpars2_396_]'(Stack),
    yeccgoto_lc_expr(hd(Ss), ']', Ss, NewStack, T, Ts, Tzr);
yeccpars2_396(_S, '}', Ss, Stack, T, Ts, Tzr) ->
    NewStack = 'yeccpars2_396_}'(Stack),
    yeccgoto_lc_expr(hd(Ss), '}', Ss, NewStack, T, Ts, Tzr);
yeccpars2_396(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_396_(Stack),
    yeccgoto_map_key(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_397, 7}}).

-compile({nowarn_unused_function, {yeccpars2_397, 7}}).

yeccpars2_397(S, '<:=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 398, Ss, Stack, T, Ts, Tzr);
yeccpars2_397(S, '<=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 399, Ss, Stack, T, Ts, Tzr);
yeccpars2_397(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_397_(Stack),
    yeccgoto_expr_max(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_400, 7}}).

-compile({nowarn_unused_function, {yeccpars2_400, 7}}).

yeccpars2_400(S, '!', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 93, Ss, Stack, T, Ts, Tzr);
yeccpars2_400(S, '*', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 94, Ss, Stack, T, Ts, Tzr);
yeccpars2_400(S, '+', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 95, Ss, Stack, T, Ts, Tzr);
yeccpars2_400(S, '++', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 96, Ss, Stack, T, Ts, Tzr);
yeccpars2_400(S, '-', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 97, Ss, Stack, T, Ts, Tzr);
yeccpars2_400(S, '--', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 98, Ss, Stack, T, Ts, Tzr);
yeccpars2_400(S, '/', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 99, Ss, Stack, T, Ts, Tzr);
yeccpars2_400(S, '/=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 100, Ss, Stack, T, Ts, Tzr);
yeccpars2_400(S, '<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 101, Ss, Stack, T, Ts, Tzr);
yeccpars2_400(S, '=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 102, Ss, Stack, T, Ts, Tzr);
yeccpars2_400(S, '=/=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 103, Ss, Stack, T, Ts, Tzr);
yeccpars2_400(S, '=:=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 104, Ss, Stack, T, Ts, Tzr);
yeccpars2_400(S, '=<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 105, Ss, Stack, T, Ts, Tzr);
yeccpars2_400(S, '==', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 106, Ss, Stack, T, Ts, Tzr);
yeccpars2_400(S, '>', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 107, Ss, Stack, T, Ts, Tzr);
yeccpars2_400(S, '>=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 108, Ss, Stack, T, Ts, Tzr);
yeccpars2_400(S, 'and', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 109, Ss, Stack, T, Ts, Tzr);
yeccpars2_400(S, 'andalso', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 110, Ss, Stack, T, Ts, Tzr);
yeccpars2_400(S, 'band', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 111, Ss, Stack, T, Ts, Tzr);
yeccpars2_400(S, 'bor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 112, Ss, Stack, T, Ts, Tzr);
yeccpars2_400(S, 'bsl', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 113, Ss, Stack, T, Ts, Tzr);
yeccpars2_400(S, 'bsr', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 114, Ss, Stack, T, Ts, Tzr);
yeccpars2_400(S, 'bxor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 115, Ss, Stack, T, Ts, Tzr);
yeccpars2_400(S, 'div', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 116, Ss, Stack, T, Ts, Tzr);
yeccpars2_400(S, 'or', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 117, Ss, Stack, T, Ts, Tzr);
yeccpars2_400(S, 'orelse', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 118, Ss, Stack, T, Ts, Tzr);
yeccpars2_400(S, 'rem', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 119, Ss, Stack, T, Ts, Tzr);
yeccpars2_400(S, 'xor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 121, Ss, Stack, T, Ts, Tzr);
yeccpars2_400(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_400_(Stack),
    yeccgoto_lc_expr(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_401, 7}}).

-compile({nowarn_unused_function, {yeccpars2_401, 7}}).

yeccpars2_401(S, '!', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 93, Ss, Stack, T, Ts, Tzr);
yeccpars2_401(S, '*', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 94, Ss, Stack, T, Ts, Tzr);
yeccpars2_401(S, '+', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 95, Ss, Stack, T, Ts, Tzr);
yeccpars2_401(S, '++', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 96, Ss, Stack, T, Ts, Tzr);
yeccpars2_401(S, '-', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 97, Ss, Stack, T, Ts, Tzr);
yeccpars2_401(S, '--', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 98, Ss, Stack, T, Ts, Tzr);
yeccpars2_401(S, '/', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 99, Ss, Stack, T, Ts, Tzr);
yeccpars2_401(S, '/=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 100, Ss, Stack, T, Ts, Tzr);
yeccpars2_401(S, '<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 101, Ss, Stack, T, Ts, Tzr);
yeccpars2_401(S, '=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 102, Ss, Stack, T, Ts, Tzr);
yeccpars2_401(S, '=/=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 103, Ss, Stack, T, Ts, Tzr);
yeccpars2_401(S, '=:=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 104, Ss, Stack, T, Ts, Tzr);
yeccpars2_401(S, '=<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 105, Ss, Stack, T, Ts, Tzr);
yeccpars2_401(S, '==', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 106, Ss, Stack, T, Ts, Tzr);
yeccpars2_401(S, '>', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 107, Ss, Stack, T, Ts, Tzr);
yeccpars2_401(S, '>=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 108, Ss, Stack, T, Ts, Tzr);
yeccpars2_401(S, 'and', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 109, Ss, Stack, T, Ts, Tzr);
yeccpars2_401(S, 'andalso', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 110, Ss, Stack, T, Ts, Tzr);
yeccpars2_401(S, 'band', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 111, Ss, Stack, T, Ts, Tzr);
yeccpars2_401(S, 'bor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 112, Ss, Stack, T, Ts, Tzr);
yeccpars2_401(S, 'bsl', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 113, Ss, Stack, T, Ts, Tzr);
yeccpars2_401(S, 'bsr', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 114, Ss, Stack, T, Ts, Tzr);
yeccpars2_401(S, 'bxor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 115, Ss, Stack, T, Ts, Tzr);
yeccpars2_401(S, 'div', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 116, Ss, Stack, T, Ts, Tzr);
yeccpars2_401(S, 'or', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 117, Ss, Stack, T, Ts, Tzr);
yeccpars2_401(S, 'orelse', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 118, Ss, Stack, T, Ts, Tzr);
yeccpars2_401(S, 'rem', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 119, Ss, Stack, T, Ts, Tzr);
yeccpars2_401(S, 'xor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 121, Ss, Stack, T, Ts, Tzr);
yeccpars2_401(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_401_(Stack),
    yeccgoto_lc_expr(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_404, 7}}).

-compile({nowarn_unused_function, {yeccpars2_404, 7}}).

yeccpars2_404(S, '!', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 93, Ss, Stack, T, Ts, Tzr);
yeccpars2_404(S, '*', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 94, Ss, Stack, T, Ts, Tzr);
yeccpars2_404(S, '+', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 95, Ss, Stack, T, Ts, Tzr);
yeccpars2_404(S, '++', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 96, Ss, Stack, T, Ts, Tzr);
yeccpars2_404(S, '-', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 97, Ss, Stack, T, Ts, Tzr);
yeccpars2_404(S, '--', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 98, Ss, Stack, T, Ts, Tzr);
yeccpars2_404(S, '/', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 99, Ss, Stack, T, Ts, Tzr);
yeccpars2_404(S, '/=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 100, Ss, Stack, T, Ts, Tzr);
yeccpars2_404(S, '<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 101, Ss, Stack, T, Ts, Tzr);
yeccpars2_404(S, '=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 102, Ss, Stack, T, Ts, Tzr);
yeccpars2_404(S, '=/=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 103, Ss, Stack, T, Ts, Tzr);
yeccpars2_404(S, '=:=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 104, Ss, Stack, T, Ts, Tzr);
yeccpars2_404(S, '=<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 105, Ss, Stack, T, Ts, Tzr);
yeccpars2_404(S, '==', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 106, Ss, Stack, T, Ts, Tzr);
yeccpars2_404(S, '>', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 107, Ss, Stack, T, Ts, Tzr);
yeccpars2_404(S, '>=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 108, Ss, Stack, T, Ts, Tzr);
yeccpars2_404(S, 'and', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 109, Ss, Stack, T, Ts, Tzr);
yeccpars2_404(S, 'andalso', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 110, Ss, Stack, T, Ts, Tzr);
yeccpars2_404(S, 'band', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 111, Ss, Stack, T, Ts, Tzr);
yeccpars2_404(S, 'bor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 112, Ss, Stack, T, Ts, Tzr);
yeccpars2_404(S, 'bsl', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 113, Ss, Stack, T, Ts, Tzr);
yeccpars2_404(S, 'bsr', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 114, Ss, Stack, T, Ts, Tzr);
yeccpars2_404(S, 'bxor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 115, Ss, Stack, T, Ts, Tzr);
yeccpars2_404(S, 'div', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 116, Ss, Stack, T, Ts, Tzr);
yeccpars2_404(S, 'or', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 117, Ss, Stack, T, Ts, Tzr);
yeccpars2_404(S, 'orelse', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 118, Ss, Stack, T, Ts, Tzr);
yeccpars2_404(S, 'rem', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 119, Ss, Stack, T, Ts, Tzr);
yeccpars2_404(S, 'xor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 121, Ss, Stack, T, Ts, Tzr);
yeccpars2_404(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_404_(Stack),
    yeccgoto_lc_expr(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_405, 7}}).

-compile({nowarn_unused_function, {yeccpars2_405, 7}}).

yeccpars2_405(S, '!', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 93, Ss, Stack, T, Ts, Tzr);
yeccpars2_405(S, '*', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 94, Ss, Stack, T, Ts, Tzr);
yeccpars2_405(S, '+', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 95, Ss, Stack, T, Ts, Tzr);
yeccpars2_405(S, '++', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 96, Ss, Stack, T, Ts, Tzr);
yeccpars2_405(S, '-', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 97, Ss, Stack, T, Ts, Tzr);
yeccpars2_405(S, '--', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 98, Ss, Stack, T, Ts, Tzr);
yeccpars2_405(S, '/', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 99, Ss, Stack, T, Ts, Tzr);
yeccpars2_405(S, '/=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 100, Ss, Stack, T, Ts, Tzr);
yeccpars2_405(S, '<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 101, Ss, Stack, T, Ts, Tzr);
yeccpars2_405(S, '=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 102, Ss, Stack, T, Ts, Tzr);
yeccpars2_405(S, '=/=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 103, Ss, Stack, T, Ts, Tzr);
yeccpars2_405(S, '=:=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 104, Ss, Stack, T, Ts, Tzr);
yeccpars2_405(S, '=<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 105, Ss, Stack, T, Ts, Tzr);
yeccpars2_405(S, '==', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 106, Ss, Stack, T, Ts, Tzr);
yeccpars2_405(S, '>', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 107, Ss, Stack, T, Ts, Tzr);
yeccpars2_405(S, '>=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 108, Ss, Stack, T, Ts, Tzr);
yeccpars2_405(S, 'and', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 109, Ss, Stack, T, Ts, Tzr);
yeccpars2_405(S, 'andalso', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 110, Ss, Stack, T, Ts, Tzr);
yeccpars2_405(S, 'band', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 111, Ss, Stack, T, Ts, Tzr);
yeccpars2_405(S, 'bor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 112, Ss, Stack, T, Ts, Tzr);
yeccpars2_405(S, 'bsl', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 113, Ss, Stack, T, Ts, Tzr);
yeccpars2_405(S, 'bsr', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 114, Ss, Stack, T, Ts, Tzr);
yeccpars2_405(S, 'bxor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 115, Ss, Stack, T, Ts, Tzr);
yeccpars2_405(S, 'div', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 116, Ss, Stack, T, Ts, Tzr);
yeccpars2_405(S, 'or', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 117, Ss, Stack, T, Ts, Tzr);
yeccpars2_405(S, 'orelse', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 118, Ss, Stack, T, Ts, Tzr);
yeccpars2_405(S, 'rem', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 119, Ss, Stack, T, Ts, Tzr);
yeccpars2_405(S, 'xor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 121, Ss, Stack, T, Ts, Tzr);
yeccpars2_405(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_405_(Stack),
    yeccgoto_lc_expr(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_408, 7}}).

-compile({nowarn_unused_function, {yeccpars2_408, 7}}).

yeccpars2_408(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_408_(Stack),
    yeccgoto_lc_exprs(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_409, 7}}).

-compile({nowarn_unused_function, {yeccpars2_409, 7}}).

yeccpars2_409(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_409_(Stack),
    yeccgoto_zc_exprs(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_410, 7}}).

-compile({nowarn_unused_function, {yeccpars2_410, 7}}).

yeccpars2_410(S, '&&', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 406, Ss, Stack, T, Ts, Tzr);
yeccpars2_410(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_410_(Stack),
    yeccgoto_zc_exprs(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_411, 7}}).

-compile({nowarn_unused_function, {yeccpars2_411, 7}}).

yeccpars2_411(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _, _, _ | Nss] = Ss,
    NewStack = yeccpars2_411_(Stack),
    yeccgoto_list_comprehension(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_414, 7}}).

-compile({nowarn_unused_function, {yeccpars2_414, 7}}).

yeccpars2_414(S, '!', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 93, Ss, Stack, T, Ts, Tzr);
yeccpars2_414(S, '*', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 94, Ss, Stack, T, Ts, Tzr);
yeccpars2_414(S, '+', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 95, Ss, Stack, T, Ts, Tzr);
yeccpars2_414(S, '++', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 96, Ss, Stack, T, Ts, Tzr);
yeccpars2_414(S, '-', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 97, Ss, Stack, T, Ts, Tzr);
yeccpars2_414(S, '--', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 98, Ss, Stack, T, Ts, Tzr);
yeccpars2_414(S, '/', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 99, Ss, Stack, T, Ts, Tzr);
yeccpars2_414(S, '/=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 100, Ss, Stack, T, Ts, Tzr);
yeccpars2_414(S, '<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 101, Ss, Stack, T, Ts, Tzr);
yeccpars2_414(S, '=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 102, Ss, Stack, T, Ts, Tzr);
yeccpars2_414(S, '=/=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 103, Ss, Stack, T, Ts, Tzr);
yeccpars2_414(S, '=:=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 104, Ss, Stack, T, Ts, Tzr);
yeccpars2_414(S, '=<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 105, Ss, Stack, T, Ts, Tzr);
yeccpars2_414(S, '==', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 106, Ss, Stack, T, Ts, Tzr);
yeccpars2_414(S, '>', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 107, Ss, Stack, T, Ts, Tzr);
yeccpars2_414(S, '>=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 108, Ss, Stack, T, Ts, Tzr);
yeccpars2_414(S, 'and', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 109, Ss, Stack, T, Ts, Tzr);
yeccpars2_414(S, 'andalso', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 110, Ss, Stack, T, Ts, Tzr);
yeccpars2_414(S, 'band', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 111, Ss, Stack, T, Ts, Tzr);
yeccpars2_414(S, 'bor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 112, Ss, Stack, T, Ts, Tzr);
yeccpars2_414(S, 'bsl', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 113, Ss, Stack, T, Ts, Tzr);
yeccpars2_414(S, 'bsr', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 114, Ss, Stack, T, Ts, Tzr);
yeccpars2_414(S, 'bxor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 115, Ss, Stack, T, Ts, Tzr);
yeccpars2_414(S, 'div', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 116, Ss, Stack, T, Ts, Tzr);
yeccpars2_414(S, 'or', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 117, Ss, Stack, T, Ts, Tzr);
yeccpars2_414(S, 'orelse', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 118, Ss, Stack, T, Ts, Tzr);
yeccpars2_414(S, 'rem', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 119, Ss, Stack, T, Ts, Tzr);
yeccpars2_414(S, 'xor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 121, Ss, Stack, T, Ts, Tzr);
yeccpars2_414(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_414_(Stack),
    yeccgoto_lc_expr(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_415, 7}}).

-compile({nowarn_unused_function, {yeccpars2_415, 7}}).

yeccpars2_415(S, '!', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 93, Ss, Stack, T, Ts, Tzr);
yeccpars2_415(S, '*', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 94, Ss, Stack, T, Ts, Tzr);
yeccpars2_415(S, '+', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 95, Ss, Stack, T, Ts, Tzr);
yeccpars2_415(S, '++', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 96, Ss, Stack, T, Ts, Tzr);
yeccpars2_415(S, '-', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 97, Ss, Stack, T, Ts, Tzr);
yeccpars2_415(S, '--', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 98, Ss, Stack, T, Ts, Tzr);
yeccpars2_415(S, '/', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 99, Ss, Stack, T, Ts, Tzr);
yeccpars2_415(S, '/=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 100, Ss, Stack, T, Ts, Tzr);
yeccpars2_415(S, '<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 101, Ss, Stack, T, Ts, Tzr);
yeccpars2_415(S, '=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 102, Ss, Stack, T, Ts, Tzr);
yeccpars2_415(S, '=/=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 103, Ss, Stack, T, Ts, Tzr);
yeccpars2_415(S, '=:=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 104, Ss, Stack, T, Ts, Tzr);
yeccpars2_415(S, '=<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 105, Ss, Stack, T, Ts, Tzr);
yeccpars2_415(S, '==', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 106, Ss, Stack, T, Ts, Tzr);
yeccpars2_415(S, '>', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 107, Ss, Stack, T, Ts, Tzr);
yeccpars2_415(S, '>=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 108, Ss, Stack, T, Ts, Tzr);
yeccpars2_415(S, 'and', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 109, Ss, Stack, T, Ts, Tzr);
yeccpars2_415(S, 'andalso', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 110, Ss, Stack, T, Ts, Tzr);
yeccpars2_415(S, 'band', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 111, Ss, Stack, T, Ts, Tzr);
yeccpars2_415(S, 'bor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 112, Ss, Stack, T, Ts, Tzr);
yeccpars2_415(S, 'bsl', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 113, Ss, Stack, T, Ts, Tzr);
yeccpars2_415(S, 'bsr', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 114, Ss, Stack, T, Ts, Tzr);
yeccpars2_415(S, 'bxor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 115, Ss, Stack, T, Ts, Tzr);
yeccpars2_415(S, 'div', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 116, Ss, Stack, T, Ts, Tzr);
yeccpars2_415(S, 'or', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 117, Ss, Stack, T, Ts, Tzr);
yeccpars2_415(S, 'orelse', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 118, Ss, Stack, T, Ts, Tzr);
yeccpars2_415(S, 'rem', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 119, Ss, Stack, T, Ts, Tzr);
yeccpars2_415(S, 'xor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 121, Ss, Stack, T, Ts, Tzr);
yeccpars2_415(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_415_(Stack),
    yeccgoto_lc_expr(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_417, 7}}).

-compile({nowarn_unused_function, {yeccpars2_417, 7}}).

yeccpars2_417(S, '!', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 93, Ss, Stack, T, Ts, Tzr);
yeccpars2_417(S, '*', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 94, Ss, Stack, T, Ts, Tzr);
yeccpars2_417(S, '+', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 95, Ss, Stack, T, Ts, Tzr);
yeccpars2_417(S, '++', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 96, Ss, Stack, T, Ts, Tzr);
yeccpars2_417(S, '-', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 97, Ss, Stack, T, Ts, Tzr);
yeccpars2_417(S, '--', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 98, Ss, Stack, T, Ts, Tzr);
yeccpars2_417(S, '/', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 99, Ss, Stack, T, Ts, Tzr);
yeccpars2_417(S, '/=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 100, Ss, Stack, T, Ts, Tzr);
yeccpars2_417(S, '<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 101, Ss, Stack, T, Ts, Tzr);
yeccpars2_417(S, '=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 102, Ss, Stack, T, Ts, Tzr);
yeccpars2_417(S, '=/=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 103, Ss, Stack, T, Ts, Tzr);
yeccpars2_417(S, '=:=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 104, Ss, Stack, T, Ts, Tzr);
yeccpars2_417(S, '=<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 105, Ss, Stack, T, Ts, Tzr);
yeccpars2_417(S, '==', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 106, Ss, Stack, T, Ts, Tzr);
yeccpars2_417(S, '>', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 107, Ss, Stack, T, Ts, Tzr);
yeccpars2_417(S, '>=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 108, Ss, Stack, T, Ts, Tzr);
yeccpars2_417(S, 'and', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 109, Ss, Stack, T, Ts, Tzr);
yeccpars2_417(S, 'andalso', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 110, Ss, Stack, T, Ts, Tzr);
yeccpars2_417(S, 'band', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 111, Ss, Stack, T, Ts, Tzr);
yeccpars2_417(S, 'bor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 112, Ss, Stack, T, Ts, Tzr);
yeccpars2_417(S, 'bsl', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 113, Ss, Stack, T, Ts, Tzr);
yeccpars2_417(S, 'bsr', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 114, Ss, Stack, T, Ts, Tzr);
yeccpars2_417(S, 'bxor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 115, Ss, Stack, T, Ts, Tzr);
yeccpars2_417(S, 'div', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 116, Ss, Stack, T, Ts, Tzr);
yeccpars2_417(S, 'or', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 117, Ss, Stack, T, Ts, Tzr);
yeccpars2_417(S, 'orelse', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 118, Ss, Stack, T, Ts, Tzr);
yeccpars2_417(S, 'rem', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 119, Ss, Stack, T, Ts, Tzr);
yeccpars2_417(S, 'xor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 121, Ss, Stack, T, Ts, Tzr);
yeccpars2_417(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_417_(Stack),
    yeccgoto_map_field_exact(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_419, 7}}).

-compile({nowarn_unused_function, {yeccpars2_419, 7}}).

yeccpars2_419(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_419_(Stack),
    yeccgoto_lc_exprs(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

yeccpars2_420(S, '!', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 93, Ss, Stack, T, Ts, Tzr);
yeccpars2_420(S, '=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 102, Ss, Stack, T, Ts, Tzr);
yeccpars2_420(S, ']', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 421, Ss, Stack, T, Ts, Tzr);
yeccpars2_420(S, 'andalso', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 110, Ss, Stack, T, Ts, Tzr);
yeccpars2_420(S, 'orelse', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 118, Ss, Stack, T, Ts, Tzr);
yeccpars2_420(S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_cont_324(S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_421, 7}}).

-compile({nowarn_unused_function, {yeccpars2_421, 7}}).

yeccpars2_421(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_421_(Stack),
    yeccgoto_tail(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

yeccpars2_422(S, '!', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 93, Ss, Stack, T, Ts, Tzr);
yeccpars2_422(S, ',', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 387, Ss, Stack, T, Ts, Tzr);
yeccpars2_422(S, '=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 102, Ss, Stack, T, Ts, Tzr);
yeccpars2_422(S, ']', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 388, Ss, Stack, T, Ts, Tzr);
yeccpars2_422(S, 'andalso', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 110, Ss, Stack, T, Ts, Tzr);
yeccpars2_422(S, 'orelse', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 118, Ss, Stack, T, Ts, Tzr);
yeccpars2_422(S, '|', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 389, Ss, Stack, T, Ts, Tzr);
yeccpars2_422(S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_cont_324(S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_423, 7}}).

-compile({nowarn_unused_function, {yeccpars2_423, 7}}).

yeccpars2_423(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_423_(Stack),
    yeccgoto_tail(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

yeccpars2_424(S, '#', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 429, Ss, Stack, T, Ts, Tzr);
yeccpars2_424(S, '(', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 64, Ss, Stack, T, Ts, Tzr);
yeccpars2_424(S, atom, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 30, Ss, Stack, T, Ts, Tzr);
yeccpars2_424(S, char, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 32, Ss, Stack, T, Ts, Tzr);
yeccpars2_424(S, float, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 33, Ss, Stack, T, Ts, Tzr);
yeccpars2_424(S, integer, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 34, Ss, Stack, T, Ts, Tzr);
yeccpars2_424(S, sigil_prefix, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 36, Ss, Stack, T, Ts, Tzr);
yeccpars2_424(S, string, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 37, Ss, Stack, T, Ts, Tzr);
yeccpars2_424(S, '{', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 39, Ss, Stack, T, Ts, Tzr);
yeccpars2_424(S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_cont_28(S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_425, 7}}).

-compile({nowarn_unused_function, {yeccpars2_425, 7}}).

yeccpars2_425(S, '||', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 457, Ss, Stack, T, Ts, Tzr);
yeccpars2_425(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_425_(Stack),
    yeccgoto_bit_expr(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_426, 7}}).

-compile({nowarn_unused_function, {yeccpars2_426, 7}}).

yeccpars2_426(S, ':', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 445, Ss, Stack, T, Ts, Tzr);
yeccpars2_426(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_426_(Stack),
    yeccpars2_444(444, Cat, [426 | Ss], NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_427, 7}}).

-compile({nowarn_unused_function, {yeccpars2_427, 7}}).

yeccpars2_427(S, '>>', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 443, Ss, Stack, T, Ts, Tzr);
yeccpars2_427(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_428, 7}}).

-compile({nowarn_unused_function, {yeccpars2_428, 7}}).

yeccpars2_428(S, ',', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 440, Ss, Stack, T, Ts, Tzr);
yeccpars2_428(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_428_(Stack),
    yeccgoto_bin_elements(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_429, 7}}).

-compile({nowarn_unused_function, {yeccpars2_429, 7}}).

yeccpars2_429(S, '{', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 431, Ss, Stack, T, Ts, Tzr);
yeccpars2_429(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_430, 7}}).

-compile({nowarn_unused_function, {yeccpars2_430, 7}}).

yeccpars2_430(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_ | Nss] = Ss,
    NewStack = yeccpars2_430_(Stack),
    yeccgoto_binary(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_432, 7}}).

-compile({nowarn_unused_function, {yeccpars2_432, 7}}).

yeccpars2_432(S, '=>', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 438, Ss, Stack, T, Ts, Tzr);
yeccpars2_432(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_433, 7}}).

-compile({nowarn_unused_function, {yeccpars2_433, 7}}).

yeccpars2_433(S, '||', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 435, Ss, Stack, T, Ts, Tzr);
yeccpars2_433(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_434, 7}}).

-compile({nowarn_unused_function, {yeccpars2_434, 7}}).

yeccpars2_434(S, '!', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 93, Ss, Stack, T, Ts, Tzr);
yeccpars2_434(S, '*', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 94, Ss, Stack, T, Ts, Tzr);
yeccpars2_434(S, '+', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 95, Ss, Stack, T, Ts, Tzr);
yeccpars2_434(S, '++', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 96, Ss, Stack, T, Ts, Tzr);
yeccpars2_434(S, '-', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 97, Ss, Stack, T, Ts, Tzr);
yeccpars2_434(S, '--', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 98, Ss, Stack, T, Ts, Tzr);
yeccpars2_434(S, '/', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 99, Ss, Stack, T, Ts, Tzr);
yeccpars2_434(S, '/=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 100, Ss, Stack, T, Ts, Tzr);
yeccpars2_434(S, '<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 101, Ss, Stack, T, Ts, Tzr);
yeccpars2_434(S, '=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 102, Ss, Stack, T, Ts, Tzr);
yeccpars2_434(S, '=/=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 103, Ss, Stack, T, Ts, Tzr);
yeccpars2_434(S, '=:=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 104, Ss, Stack, T, Ts, Tzr);
yeccpars2_434(S, '=<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 105, Ss, Stack, T, Ts, Tzr);
yeccpars2_434(S, '==', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 106, Ss, Stack, T, Ts, Tzr);
yeccpars2_434(S, '>', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 107, Ss, Stack, T, Ts, Tzr);
yeccpars2_434(S, '>=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 108, Ss, Stack, T, Ts, Tzr);
yeccpars2_434(S, 'and', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 109, Ss, Stack, T, Ts, Tzr);
yeccpars2_434(S, 'andalso', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 110, Ss, Stack, T, Ts, Tzr);
yeccpars2_434(S, 'band', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 111, Ss, Stack, T, Ts, Tzr);
yeccpars2_434(S, 'bor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 112, Ss, Stack, T, Ts, Tzr);
yeccpars2_434(S, 'bsl', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 113, Ss, Stack, T, Ts, Tzr);
yeccpars2_434(S, 'bsr', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 114, Ss, Stack, T, Ts, Tzr);
yeccpars2_434(S, 'bxor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 115, Ss, Stack, T, Ts, Tzr);
yeccpars2_434(S, 'div', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 116, Ss, Stack, T, Ts, Tzr);
yeccpars2_434(S, 'or', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 117, Ss, Stack, T, Ts, Tzr);
yeccpars2_434(S, 'orelse', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 118, Ss, Stack, T, Ts, Tzr);
yeccpars2_434(S, 'rem', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 119, Ss, Stack, T, Ts, Tzr);
yeccpars2_434(S, 'xor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 121, Ss, Stack, T, Ts, Tzr);
yeccpars2_434(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_434_(Stack),
    yeccgoto_map_key(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_436, 7}}).

-compile({nowarn_unused_function, {yeccpars2_436, 7}}).

yeccpars2_436(S, '}', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 437, Ss, Stack, T, Ts, Tzr);
yeccpars2_436(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_437, 7}}).

-compile({nowarn_unused_function, {yeccpars2_437, 7}}).

yeccpars2_437(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _, _, _, _ | Nss] = Ss,
    NewStack = yeccpars2_437_(Stack),
    yeccgoto_map_comprehension(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_439, 7}}).

-compile({nowarn_unused_function, {yeccpars2_439, 7}}).

yeccpars2_439(S, '!', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 93, Ss, Stack, T, Ts, Tzr);
yeccpars2_439(S, '*', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 94, Ss, Stack, T, Ts, Tzr);
yeccpars2_439(S, '+', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 95, Ss, Stack, T, Ts, Tzr);
yeccpars2_439(S, '++', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 96, Ss, Stack, T, Ts, Tzr);
yeccpars2_439(S, '-', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 97, Ss, Stack, T, Ts, Tzr);
yeccpars2_439(S, '--', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 98, Ss, Stack, T, Ts, Tzr);
yeccpars2_439(S, '/', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 99, Ss, Stack, T, Ts, Tzr);
yeccpars2_439(S, '/=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 100, Ss, Stack, T, Ts, Tzr);
yeccpars2_439(S, '<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 101, Ss, Stack, T, Ts, Tzr);
yeccpars2_439(S, '=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 102, Ss, Stack, T, Ts, Tzr);
yeccpars2_439(S, '=/=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 103, Ss, Stack, T, Ts, Tzr);
yeccpars2_439(S, '=:=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 104, Ss, Stack, T, Ts, Tzr);
yeccpars2_439(S, '=<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 105, Ss, Stack, T, Ts, Tzr);
yeccpars2_439(S, '==', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 106, Ss, Stack, T, Ts, Tzr);
yeccpars2_439(S, '>', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 107, Ss, Stack, T, Ts, Tzr);
yeccpars2_439(S, '>=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 108, Ss, Stack, T, Ts, Tzr);
yeccpars2_439(S, 'and', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 109, Ss, Stack, T, Ts, Tzr);
yeccpars2_439(S, 'andalso', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 110, Ss, Stack, T, Ts, Tzr);
yeccpars2_439(S, 'band', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 111, Ss, Stack, T, Ts, Tzr);
yeccpars2_439(S, 'bor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 112, Ss, Stack, T, Ts, Tzr);
yeccpars2_439(S, 'bsl', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 113, Ss, Stack, T, Ts, Tzr);
yeccpars2_439(S, 'bsr', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 114, Ss, Stack, T, Ts, Tzr);
yeccpars2_439(S, 'bxor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 115, Ss, Stack, T, Ts, Tzr);
yeccpars2_439(S, 'div', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 116, Ss, Stack, T, Ts, Tzr);
yeccpars2_439(S, 'or', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 117, Ss, Stack, T, Ts, Tzr);
yeccpars2_439(S, 'orelse', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 118, Ss, Stack, T, Ts, Tzr);
yeccpars2_439(S, 'rem', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 119, Ss, Stack, T, Ts, Tzr);
yeccpars2_439(S, 'xor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 121, Ss, Stack, T, Ts, Tzr);
yeccpars2_439(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_439_(Stack),
    yeccgoto_map_field_assoc(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

yeccpars2_440(S, '#', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 429, Ss, Stack, T, Ts, Tzr);
yeccpars2_440(S, '(', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 64, Ss, Stack, T, Ts, Tzr);
yeccpars2_440(S, '+', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 26, Ss, Stack, T, Ts, Tzr);
yeccpars2_440(S, '-', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 27, Ss, Stack, T, Ts, Tzr);
yeccpars2_440(S, atom, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 30, Ss, Stack, T, Ts, Tzr);
yeccpars2_440(S, 'bnot', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 31, Ss, Stack, T, Ts, Tzr);
yeccpars2_440(S, char, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 32, Ss, Stack, T, Ts, Tzr);
yeccpars2_440(S, float, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 33, Ss, Stack, T, Ts, Tzr);
yeccpars2_440(S, integer, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 34, Ss, Stack, T, Ts, Tzr);
yeccpars2_440(S, 'not', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 35, Ss, Stack, T, Ts, Tzr);
yeccpars2_440(S, sigil_prefix, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 36, Ss, Stack, T, Ts, Tzr);
yeccpars2_440(S, string, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 37, Ss, Stack, T, Ts, Tzr);
yeccpars2_440(S, '{', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 39, Ss, Stack, T, Ts, Tzr);
yeccpars2_440(S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_cont_28(S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_441, 7}}).

-compile({nowarn_unused_function, {yeccpars2_441, 7}}).

yeccpars2_441(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_441_(Stack),
    yeccgoto_bit_expr(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_442, 7}}).

-compile({nowarn_unused_function, {yeccpars2_442, 7}}).

yeccpars2_442(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_442_(Stack),
    yeccgoto_bin_elements(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_443, 7}}).

-compile({nowarn_unused_function, {yeccpars2_443, 7}}).

yeccpars2_443(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_443_(Stack),
    yeccgoto_binary(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_444, 7}}).

-compile({nowarn_unused_function, {yeccpars2_444, 7}}).

yeccpars2_444(S, '/', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 449, Ss, Stack, T, Ts, Tzr);
yeccpars2_444(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_444_(Stack),
    yeccpars2_448(_S, Cat, [444 | Ss], NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_446, 7}}).

-compile({nowarn_unused_function, {yeccpars2_446, 7}}).

yeccpars2_446(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_446_(Stack),
    yeccgoto_bit_size_expr(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_447, 7}}).

-compile({nowarn_unused_function, {yeccpars2_447, 7}}).

yeccpars2_447(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_ | Nss] = Ss,
    NewStack = yeccpars2_447_(Stack),
    yeccgoto_opt_bit_size_expr(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_448, 7}}).

-compile({nowarn_unused_function, {yeccpars2_448, 7}}).

yeccpars2_448(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_448_(Stack),
    yeccgoto_bin_element(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_449, 7}}).

-compile({nowarn_unused_function, {yeccpars2_449, 7}}).

yeccpars2_449(S, atom, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 452, Ss, Stack, T, Ts, Tzr);
yeccpars2_449(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_450, 7}}).

-compile({nowarn_unused_function, {yeccpars2_450, 7}}).

yeccpars2_450(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_ | Nss] = Ss,
    NewStack = yeccpars2_450_(Stack),
    yeccgoto_opt_bit_type_list(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_451, 7}}).

-compile({nowarn_unused_function, {yeccpars2_451, 7}}).

yeccpars2_451(S, '-', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 455, Ss, Stack, T, Ts, Tzr);
yeccpars2_451(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_451_(Stack),
    yeccgoto_bit_type_list(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_452, 7}}).

-compile({nowarn_unused_function, {yeccpars2_452, 7}}).

yeccpars2_452(S, ':', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 453, Ss, Stack, T, Ts, Tzr);
yeccpars2_452(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_452_(Stack),
    yeccgoto_bit_type(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_453, 7}}).

-compile({nowarn_unused_function, {yeccpars2_453, 7}}).

yeccpars2_453(S, integer, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 454, Ss, Stack, T, Ts, Tzr);
yeccpars2_453(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_454, 7}}).

-compile({nowarn_unused_function, {yeccpars2_454, 7}}).

yeccpars2_454(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_454_(Stack),
    yeccgoto_bit_type(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_456, 7}}).

-compile({nowarn_unused_function, {yeccpars2_456, 7}}).

yeccpars2_456(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_456_(Stack),
    yeccgoto_bit_type_list(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_458, 7}}).

-compile({nowarn_unused_function, {yeccpars2_458, 7}}).

yeccpars2_458(S, '>>', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 459, Ss, Stack, T, Ts, Tzr);
yeccpars2_458(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_459, 7}}).

-compile({nowarn_unused_function, {yeccpars2_459, 7}}).

yeccpars2_459(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _, _, _ | Nss] = Ss,
    NewStack = yeccpars2_459_(Stack),
    yeccgoto_binary_comprehension(hd(Nss),
                                  Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_460, 7}}).

-compile({nowarn_unused_function, {yeccpars2_460, 7}}).

yeccpars2_460(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_ | Nss] = Ss,
    NewStack = yeccpars2_460_(Stack),
    yeccgoto_bit_expr(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

yeccpars2_461(S, '!', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 93, Ss, Stack, T, Ts, Tzr);
yeccpars2_461(S, ')', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 462, Ss, Stack, T, Ts, Tzr);
yeccpars2_461(S, '=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 102, Ss, Stack, T, Ts, Tzr);
yeccpars2_461(S, 'andalso', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 110, Ss, Stack, T, Ts, Tzr);
yeccpars2_461(S, 'orelse', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 118, Ss, Stack, T, Ts, Tzr);
yeccpars2_461(S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_cont_324(S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_462, 7}}).

-compile({nowarn_unused_function, {yeccpars2_462, 7}}).

yeccpars2_462(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_462_(Stack),
    yeccgoto_expr_max(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_463, 7}}).

-compile({nowarn_unused_function, {yeccpars2_463, 7}}).

yeccpars2_463(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_ | Nss] = Ss,
    NewStack = yeccpars2_463_(Stack),
    yeccgoto_map_expr(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_464, 7}}).

-compile({nowarn_unused_function, {yeccpars2_464, 7}}).

yeccpars2_464(S, '.', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 477, Ss, Stack, T, Ts, Tzr);
yeccpars2_464(S, '{', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 478, Ss, Stack, T, Ts, Tzr);
yeccpars2_464(_, _, _, _, T, _, _) ->
    yeccerror(T).

yeccpars2_465(S, '#', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 63, Ss, Stack, T, Ts, Tzr);
yeccpars2_465(S, '(', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 64, Ss, Stack, T, Ts, Tzr);
yeccpars2_465(S, '+', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 26, Ss, Stack, T, Ts, Tzr);
yeccpars2_465(S, '-', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 27, Ss, Stack, T, Ts, Tzr);
yeccpars2_465(S, atom, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 30, Ss, Stack, T, Ts, Tzr);
yeccpars2_465(S, 'bnot', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 31, Ss, Stack, T, Ts, Tzr);
yeccpars2_465(S, 'catch', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 69, Ss, Stack, T, Ts, Tzr);
yeccpars2_465(S, char, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 32, Ss, Stack, T, Ts, Tzr);
yeccpars2_465(S, float, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 33, Ss, Stack, T, Ts, Tzr);
yeccpars2_465(S, integer, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 34, Ss, Stack, T, Ts, Tzr);
yeccpars2_465(S, 'not', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 35, Ss, Stack, T, Ts, Tzr);
yeccpars2_465(S, sigil_prefix, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 36, Ss, Stack, T, Ts, Tzr);
yeccpars2_465(S, string, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 37, Ss, Stack, T, Ts, Tzr);
yeccpars2_465(S, '{', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 39, Ss, Stack, T, Ts, Tzr);
yeccpars2_465(S, '}', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 471, Ss, Stack, T, Ts, Tzr);
yeccpars2_465(S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_cont_28(S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_466, 7}}).

-compile({nowarn_unused_function, {yeccpars2_466, 7}}).

yeccpars2_466(S, ':=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 416, Ss, Stack, T, Ts, Tzr);
yeccpars2_466(S, '=>', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 438, Ss, Stack, T, Ts, Tzr);
yeccpars2_466(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_467, 7}}).

-compile({nowarn_unused_function, {yeccpars2_467, 7}}).

yeccpars2_467(S, '}', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 475, Ss, Stack, T, Ts, Tzr);
yeccpars2_467(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_468, 7}}).

-compile({nowarn_unused_function, {yeccpars2_468, 7}}).

yeccpars2_468(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_468_(Stack),
    yeccgoto_map_field(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_469, 7}}).

-compile({nowarn_unused_function, {yeccpars2_469, 7}}).

yeccpars2_469(S, '||', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 435, Ss, Stack, T, Ts, Tzr);
yeccpars2_469(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_469_(Stack),
    yeccgoto_map_field(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_470, 7}}).

-compile({nowarn_unused_function, {yeccpars2_470, 7}}).

yeccpars2_470(S, ',', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 472, Ss, Stack, T, Ts, Tzr);
yeccpars2_470(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_470_(Stack),
    yeccgoto_map_fields(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_471, 7}}).

-compile({nowarn_unused_function, {yeccpars2_471, 7}}).

yeccpars2_471(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_ | Nss] = Ss,
    NewStack = yeccpars2_471_(Stack),
    yeccgoto_map_tuple(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_473, 7}}).

-compile({nowarn_unused_function, {yeccpars2_473, 7}}).

yeccpars2_473(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_473_(Stack),
    yeccgoto_map_fields(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_474, 7}}).

-compile({nowarn_unused_function, {yeccpars2_474, 7}}).

yeccpars2_474(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_474_(Stack),
    yeccgoto_map_field(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_475, 7}}).

-compile({nowarn_unused_function, {yeccpars2_475, 7}}).

yeccpars2_475(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_475_(Stack),
    yeccgoto_map_tuple(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_476, 7}}).

-compile({nowarn_unused_function, {yeccpars2_476, 7}}).

yeccpars2_476(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_476_(Stack),
    yeccgoto_record_expr(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_477, 7}}).

-compile({nowarn_unused_function, {yeccpars2_477, 7}}).

yeccpars2_477(S, atom, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 491, Ss, Stack, T, Ts, Tzr);
yeccpars2_477(_, _, _, _, T, _, _) ->
    yeccerror(T).

yeccpars2_478(S, '}', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 483, Ss, Stack, T, Ts, Tzr);
yeccpars2_478(S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_488(S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_479, 7}}).

-compile({nowarn_unused_function, {yeccpars2_479, 7}}).

yeccpars2_479(S, '}', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 490, Ss, Stack, T, Ts, Tzr);
yeccpars2_479(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_480, 7}}).

-compile({nowarn_unused_function, {yeccpars2_480, 7}}).

yeccpars2_480(S, ',', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 488, Ss, Stack, T, Ts, Tzr);
yeccpars2_480(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_480_(Stack),
    yeccgoto_record_fields(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_481, 7}}).

-compile({nowarn_unused_function, {yeccpars2_481, 7}}).

yeccpars2_481(S, '=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 486, Ss, Stack, T, Ts, Tzr);
yeccpars2_481(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_482, 7}}).

-compile({nowarn_unused_function, {yeccpars2_482, 7}}).

yeccpars2_482(S, '=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 484, Ss, Stack, T, Ts, Tzr);
yeccpars2_482(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_483, 7}}).

-compile({nowarn_unused_function, {yeccpars2_483, 7}}).

yeccpars2_483(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_ | Nss] = Ss,
    NewStack = yeccpars2_483_(Stack),
    yeccgoto_record_tuple(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_485, 7}}).

-compile({nowarn_unused_function, {yeccpars2_485, 7}}).

yeccpars2_485(S, '!', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 93, Ss, Stack, T, Ts, Tzr);
yeccpars2_485(S, '*', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 94, Ss, Stack, T, Ts, Tzr);
yeccpars2_485(S, '+', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 95, Ss, Stack, T, Ts, Tzr);
yeccpars2_485(S, '++', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 96, Ss, Stack, T, Ts, Tzr);
yeccpars2_485(S, '-', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 97, Ss, Stack, T, Ts, Tzr);
yeccpars2_485(S, '--', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 98, Ss, Stack, T, Ts, Tzr);
yeccpars2_485(S, '/', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 99, Ss, Stack, T, Ts, Tzr);
yeccpars2_485(S, '/=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 100, Ss, Stack, T, Ts, Tzr);
yeccpars2_485(S, '<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 101, Ss, Stack, T, Ts, Tzr);
yeccpars2_485(S, '=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 102, Ss, Stack, T, Ts, Tzr);
yeccpars2_485(S, '=/=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 103, Ss, Stack, T, Ts, Tzr);
yeccpars2_485(S, '=:=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 104, Ss, Stack, T, Ts, Tzr);
yeccpars2_485(S, '=<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 105, Ss, Stack, T, Ts, Tzr);
yeccpars2_485(S, '==', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 106, Ss, Stack, T, Ts, Tzr);
yeccpars2_485(S, '>', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 107, Ss, Stack, T, Ts, Tzr);
yeccpars2_485(S, '>=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 108, Ss, Stack, T, Ts, Tzr);
yeccpars2_485(S, 'and', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 109, Ss, Stack, T, Ts, Tzr);
yeccpars2_485(S, 'andalso', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 110, Ss, Stack, T, Ts, Tzr);
yeccpars2_485(S, 'band', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 111, Ss, Stack, T, Ts, Tzr);
yeccpars2_485(S, 'bor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 112, Ss, Stack, T, Ts, Tzr);
yeccpars2_485(S, 'bsl', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 113, Ss, Stack, T, Ts, Tzr);
yeccpars2_485(S, 'bsr', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 114, Ss, Stack, T, Ts, Tzr);
yeccpars2_485(S, 'bxor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 115, Ss, Stack, T, Ts, Tzr);
yeccpars2_485(S, 'div', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 116, Ss, Stack, T, Ts, Tzr);
yeccpars2_485(S, 'or', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 117, Ss, Stack, T, Ts, Tzr);
yeccpars2_485(S, 'orelse', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 118, Ss, Stack, T, Ts, Tzr);
yeccpars2_485(S, 'rem', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 119, Ss, Stack, T, Ts, Tzr);
yeccpars2_485(S, 'xor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 121, Ss, Stack, T, Ts, Tzr);
yeccpars2_485(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_485_(Stack),
    yeccgoto_record_field(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_487, 7}}).

-compile({nowarn_unused_function, {yeccpars2_487, 7}}).

yeccpars2_487(S, '!', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 93, Ss, Stack, T, Ts, Tzr);
yeccpars2_487(S, '*', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 94, Ss, Stack, T, Ts, Tzr);
yeccpars2_487(S, '+', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 95, Ss, Stack, T, Ts, Tzr);
yeccpars2_487(S, '++', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 96, Ss, Stack, T, Ts, Tzr);
yeccpars2_487(S, '-', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 97, Ss, Stack, T, Ts, Tzr);
yeccpars2_487(S, '--', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 98, Ss, Stack, T, Ts, Tzr);
yeccpars2_487(S, '/', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 99, Ss, Stack, T, Ts, Tzr);
yeccpars2_487(S, '/=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 100, Ss, Stack, T, Ts, Tzr);
yeccpars2_487(S, '<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 101, Ss, Stack, T, Ts, Tzr);
yeccpars2_487(S, '=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 102, Ss, Stack, T, Ts, Tzr);
yeccpars2_487(S, '=/=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 103, Ss, Stack, T, Ts, Tzr);
yeccpars2_487(S, '=:=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 104, Ss, Stack, T, Ts, Tzr);
yeccpars2_487(S, '=<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 105, Ss, Stack, T, Ts, Tzr);
yeccpars2_487(S, '==', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 106, Ss, Stack, T, Ts, Tzr);
yeccpars2_487(S, '>', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 107, Ss, Stack, T, Ts, Tzr);
yeccpars2_487(S, '>=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 108, Ss, Stack, T, Ts, Tzr);
yeccpars2_487(S, 'and', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 109, Ss, Stack, T, Ts, Tzr);
yeccpars2_487(S, 'andalso', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 110, Ss, Stack, T, Ts, Tzr);
yeccpars2_487(S, 'band', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 111, Ss, Stack, T, Ts, Tzr);
yeccpars2_487(S, 'bor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 112, Ss, Stack, T, Ts, Tzr);
yeccpars2_487(S, 'bsl', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 113, Ss, Stack, T, Ts, Tzr);
yeccpars2_487(S, 'bsr', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 114, Ss, Stack, T, Ts, Tzr);
yeccpars2_487(S, 'bxor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 115, Ss, Stack, T, Ts, Tzr);
yeccpars2_487(S, 'div', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 116, Ss, Stack, T, Ts, Tzr);
yeccpars2_487(S, 'or', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 117, Ss, Stack, T, Ts, Tzr);
yeccpars2_487(S, 'orelse', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 118, Ss, Stack, T, Ts, Tzr);
yeccpars2_487(S, 'rem', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 119, Ss, Stack, T, Ts, Tzr);
yeccpars2_487(S, 'xor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 121, Ss, Stack, T, Ts, Tzr);
yeccpars2_487(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_487_(Stack),
    yeccgoto_record_field(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_488, 7}}).

-compile({nowarn_unused_function, {yeccpars2_488, 7}}).

yeccpars2_488(S, atom, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 481, Ss, Stack, T, Ts, Tzr);
yeccpars2_488(S, var, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 482, Ss, Stack, T, Ts, Tzr);
yeccpars2_488(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_489, 7}}).

-compile({nowarn_unused_function, {yeccpars2_489, 7}}).

yeccpars2_489(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_489_(Stack),
    yeccgoto_record_fields(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_490, 7}}).

-compile({nowarn_unused_function, {yeccpars2_490, 7}}).

yeccpars2_490(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_490_(Stack),
    yeccgoto_record_tuple(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_491, 7}}).

-compile({nowarn_unused_function, {yeccpars2_491, 7}}).

yeccpars2_491(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _, _ | Nss] = Ss,
    NewStack = yeccpars2_491_(Stack),
    yeccgoto_record_expr(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_493, 7}}).

-compile({nowarn_unused_function, {yeccpars2_493, 7}}).

yeccpars2_493(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_493_(Stack),
    yeccgoto_exprs(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_494, 7}}).

-compile({nowarn_unused_function, {yeccpars2_494, 7}}).

yeccpars2_494(S, atom, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 501, Ss, Stack, T, Ts, Tzr);
yeccpars2_494(S, '{', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 502, Ss, Stack, T, Ts, Tzr);
yeccpars2_494(_, _, _, _, T, _, _) ->
    yeccerror(T).

yeccpars2_497(S, '!', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 93, Ss, Stack, T, Ts, Tzr);
yeccpars2_497(S, '=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 102, Ss, Stack, T, Ts, Tzr);
yeccpars2_497(S, ']', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 498, Ss, Stack, T, Ts, Tzr);
yeccpars2_497(S, 'andalso', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 110, Ss, Stack, T, Ts, Tzr);
yeccpars2_497(S, 'orelse', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 118, Ss, Stack, T, Ts, Tzr);
yeccpars2_497(S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_cont_324(S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_498, 7}}).

-compile({nowarn_unused_function, {yeccpars2_498, 7}}).

yeccpars2_498(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _, _ | Nss] = Ss,
    NewStack = yeccpars2_498_(Stack),
    yeccgoto_index_expr(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_499, 7}}).

-compile({nowarn_unused_function, {yeccpars2_499, 7}}).

yeccpars2_499(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_499_(Stack),
    yeccgoto_expr_remote(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_500, 7}}).

-compile({nowarn_unused_function, {yeccpars2_500, 7}}).

yeccpars2_500(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_500_(Stack),
    yeccgoto_map_expr(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_501, 7}}).

-compile({nowarn_unused_function, {yeccpars2_501, 7}}).

yeccpars2_501(S, '.', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 504, Ss, Stack, T, Ts, Tzr);
yeccpars2_501(S, '{', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 478, Ss, Stack, T, Ts, Tzr);
yeccpars2_501(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_503, 7}}).

-compile({nowarn_unused_function, {yeccpars2_503, 7}}).

yeccpars2_503(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _, _ | Nss] = Ss,
    NewStack = yeccpars2_503_(Stack),
    yeccgoto_record_expr(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_504, 7}}).

-compile({nowarn_unused_function, {yeccpars2_504, 7}}).

yeccpars2_504(S, atom, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 505, Ss, Stack, T, Ts, Tzr);
yeccpars2_504(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_505, 7}}).

-compile({nowarn_unused_function, {yeccpars2_505, 7}}).

yeccpars2_505(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _, _, _ | Nss] = Ss,
    NewStack = yeccpars2_505_(Stack),
    yeccgoto_record_expr(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_506, 7}}).

-compile({nowarn_unused_function, {yeccpars2_506, 7}}).

yeccpars2_506(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_ | Nss] = Ss,
    NewStack = yeccpars2_506_(Stack),
    yeccgoto_function_call(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

yeccpars2_507(S, '#', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 63, Ss, Stack, T, Ts, Tzr);
yeccpars2_507(S, '(', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 64, Ss, Stack, T, Ts, Tzr);
yeccpars2_507(S, ')', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 509, Ss, Stack, T, Ts, Tzr);
yeccpars2_507(S, '+', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 26, Ss, Stack, T, Ts, Tzr);
yeccpars2_507(S, '-', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 27, Ss, Stack, T, Ts, Tzr);
yeccpars2_507(S, atom, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 30, Ss, Stack, T, Ts, Tzr);
yeccpars2_507(S, 'bnot', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 31, Ss, Stack, T, Ts, Tzr);
yeccpars2_507(S, 'catch', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 69, Ss, Stack, T, Ts, Tzr);
yeccpars2_507(S, char, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 32, Ss, Stack, T, Ts, Tzr);
yeccpars2_507(S, float, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 33, Ss, Stack, T, Ts, Tzr);
yeccpars2_507(S, integer, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 34, Ss, Stack, T, Ts, Tzr);
yeccpars2_507(S, 'not', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 35, Ss, Stack, T, Ts, Tzr);
yeccpars2_507(S, sigil_prefix, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 36, Ss, Stack, T, Ts, Tzr);
yeccpars2_507(S, string, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 37, Ss, Stack, T, Ts, Tzr);
yeccpars2_507(S, '{', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 39, Ss, Stack, T, Ts, Tzr);
yeccpars2_507(S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_cont_28(S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_508, 7}}).

-compile({nowarn_unused_function, {yeccpars2_508, 7}}).

yeccpars2_508(S, ')', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 510, Ss, Stack, T, Ts, Tzr);
yeccpars2_508(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_509, 7}}).

-compile({nowarn_unused_function, {yeccpars2_509, 7}}).

yeccpars2_509(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_ | Nss] = Ss,
    NewStack = yeccpars2_509_(Stack),
    yeccgoto_argument_list(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_510, 7}}).

-compile({nowarn_unused_function, {yeccpars2_510, 7}}).

yeccpars2_510(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_510_(Stack),
    yeccgoto_argument_list(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_511, 7}}).

-compile({nowarn_unused_function, {yeccpars2_511, 7}}).

yeccpars2_511(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_511_(Stack),
    yeccgoto_tuple(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

yeccpars2_513(S, '!', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 93, Ss, Stack, T, Ts, Tzr);
yeccpars2_513(S, '=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 102, Ss, Stack, T, Ts, Tzr);
yeccpars2_513(S, ']', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 514, Ss, Stack, T, Ts, Tzr);
yeccpars2_513(S, 'andalso', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 110, Ss, Stack, T, Ts, Tzr);
yeccpars2_513(S, 'orelse', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 118, Ss, Stack, T, Ts, Tzr);
yeccpars2_513(S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_cont_324(S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_514, 7}}).

-compile({nowarn_unused_function, {yeccpars2_514, 7}}).

yeccpars2_514(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _, _ | Nss] = Ss,
    NewStack = yeccpars2_514_(Stack),
    yeccgoto_index_expr(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_515, 7}}).

-compile({nowarn_unused_function, {yeccpars2_515, 7}}).

yeccpars2_515(S, '{', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 502, Ss, Stack, T, Ts, Tzr);
yeccpars2_515(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_516, 7}}).

-compile({nowarn_unused_function, {yeccpars2_516, 7}}).

yeccpars2_516(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_516_(Stack),
    yeccgoto_map_expr(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_517, 7}}).

-compile({nowarn_unused_function, {yeccpars2_517, 7}}).

yeccpars2_517(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_ | Nss] = Ss,
    NewStack = yeccpars2_517_(Stack),
    yeccgoto_expr(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_518, 7}}).

-compile({nowarn_unused_function, {yeccpars2_518, 7}}).

yeccpars2_518(S, atom, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 519, Ss, Stack, T, Ts, Tzr);
yeccpars2_518(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_519, 7}}).

-compile({nowarn_unused_function, {yeccpars2_519, 7}}).

yeccpars2_519(S, '.', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 521, Ss, Stack, T, Ts, Tzr);
yeccpars2_519(S, '{', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 478, Ss, Stack, T, Ts, Tzr);
yeccpars2_519(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_520, 7}}).

-compile({nowarn_unused_function, {yeccpars2_520, 7}}).

yeccpars2_520(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _, _ | Nss] = Ss,
    NewStack = yeccpars2_520_(Stack),
    yeccgoto_record_expr(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_521, 7}}).

-compile({nowarn_unused_function, {yeccpars2_521, 7}}).

yeccpars2_521(S, atom, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 522, Ss, Stack, T, Ts, Tzr);
yeccpars2_521(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_522, 7}}).

-compile({nowarn_unused_function, {yeccpars2_522, 7}}).

yeccpars2_522(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _, _, _ | Nss] = Ss,
    NewStack = yeccpars2_522_(Stack),
    yeccgoto_record_expr(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_523, 7}}).

-compile({nowarn_unused_function, {yeccpars2_523, 7}}).

yeccpars2_523(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_ | Nss] = Ss,
    NewStack = yeccpars2_523_(Stack),
    yeccgoto_strings(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_524, 7}}).

-compile({nowarn_unused_function, {yeccpars2_524, 7}}).

yeccpars2_524(S, sigil_suffix, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 525, Ss, Stack, T, Ts, Tzr);
yeccpars2_524(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_525, 7}}).

-compile({nowarn_unused_function, {yeccpars2_525, 7}}).

yeccpars2_525(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_525_(Stack),
    yeccgoto_sigil(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

yeccpars2_527(S, ')', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 528, Ss, Stack, T, Ts, Tzr);
yeccpars2_527(S, '=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 298, Ss, Stack, T, Ts, Tzr);
yeccpars2_527(S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_cont_324(S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_528, 7}}).

-compile({nowarn_unused_function, {yeccpars2_528, 7}}).

yeccpars2_528(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_528_(Stack),
    yeccgoto_pat_expr_max(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_529, 7}}).

-compile({nowarn_unused_function, {yeccpars2_529, 7}}).

yeccpars2_529(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_ | Nss] = Ss,
    NewStack = yeccpars2_529_(Stack),
    yeccgoto_map_pat_expr(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_530, 7}}).

-compile({nowarn_unused_function, {yeccpars2_530, 7}}).

yeccpars2_530(S, '.', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 532, Ss, Stack, T, Ts, Tzr);
yeccpars2_530(S, '{', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 478, Ss, Stack, T, Ts, Tzr);
yeccpars2_530(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_531, 7}}).

-compile({nowarn_unused_function, {yeccpars2_531, 7}}).

yeccpars2_531(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_531_(Stack),
    yeccgoto_record_pat_expr(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_532, 7}}).

-compile({nowarn_unused_function, {yeccpars2_532, 7}}).

yeccpars2_532(S, atom, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 533, Ss, Stack, T, Ts, Tzr);
yeccpars2_532(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_533, 7}}).

-compile({nowarn_unused_function, {yeccpars2_533, 7}}).

yeccpars2_533(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _, _ | Nss] = Ss,
    NewStack = yeccpars2_533_(Stack),
    yeccgoto_record_pat_expr(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_535, 7}}).

-compile({nowarn_unused_function, {yeccpars2_535, 7}}).

yeccpars2_535(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_535_(Stack),
    yeccgoto_pat_exprs(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_536, 7}}).

-compile({nowarn_unused_function, {yeccpars2_536, 7}}).

yeccpars2_536(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_536_(Stack),
    yeccgoto_pat_argument_list(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_537, 7}}).

-compile({nowarn_unused_function, {yeccpars2_537, 7}}).

yeccpars2_537(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_ | Nss] = Ss,
    NewStack = yeccpars2_537_(Stack),
    yeccgoto_pat_expr(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_539, 7}}).

-compile({nowarn_unused_function, {yeccpars2_539, 7}}).

yeccpars2_539(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _, _ | Nss] = Ss,
    NewStack = yeccpars2_539_(Stack),
    yeccgoto_function_clause(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

yeccpars2_540(S, '#', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 63, Ss, Stack, T, Ts, Tzr);
yeccpars2_540(S, '(', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 678, Ss, Stack, T, Ts, Tzr);
yeccpars2_540(S, '+', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 26, Ss, Stack, T, Ts, Tzr);
yeccpars2_540(S, '-', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 27, Ss, Stack, T, Ts, Tzr);
yeccpars2_540(S, atom, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 30, Ss, Stack, T, Ts, Tzr);
yeccpars2_540(S, 'bnot', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 31, Ss, Stack, T, Ts, Tzr);
yeccpars2_540(S, 'catch', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 69, Ss, Stack, T, Ts, Tzr);
yeccpars2_540(S, char, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 32, Ss, Stack, T, Ts, Tzr);
yeccpars2_540(S, float, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 33, Ss, Stack, T, Ts, Tzr);
yeccpars2_540(S, integer, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 34, Ss, Stack, T, Ts, Tzr);
yeccpars2_540(S, 'not', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 35, Ss, Stack, T, Ts, Tzr);
yeccpars2_540(S, sigil_prefix, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 36, Ss, Stack, T, Ts, Tzr);
yeccpars2_540(S, string, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 37, Ss, Stack, T, Ts, Tzr);
yeccpars2_540(S, '{', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 39, Ss, Stack, T, Ts, Tzr);
yeccpars2_540(S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_cont_28(S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_541, 7}}).

-compile({nowarn_unused_function, {yeccpars2_541, 7}}).

yeccpars2_541(S, '(', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 545, Ss, Stack, T, Ts, Tzr);
yeccpars2_541(S, atom, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 546, Ss, Stack, T, Ts, Tzr);
yeccpars2_541(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_543, 7}}).

-compile({nowarn_unused_function, {yeccpars2_543, 7}}).

yeccpars2_543(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_543_(Stack),
    yeccgoto_attribute(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_544, 7}}).

-compile({nowarn_unused_function, {yeccpars2_544, 7}}).

yeccpars2_544(S, '(', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 553, Ss, Stack, T, Ts, Tzr);
yeccpars2_544(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_545, 7}}).

-compile({nowarn_unused_function, {yeccpars2_545, 7}}).

yeccpars2_545(S, atom, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 546, Ss, Stack, T, Ts, Tzr);
yeccpars2_545(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_546, 7}}).

-compile({nowarn_unused_function, {yeccpars2_546, 7}}).

yeccpars2_546(S, ':', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 547, Ss, Stack, T, Ts, Tzr);
yeccpars2_546(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_546_(Stack),
    yeccgoto_spec_fun(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_547, 7}}).

-compile({nowarn_unused_function, {yeccpars2_547, 7}}).

yeccpars2_547(S, atom, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 548, Ss, Stack, T, Ts, Tzr);
yeccpars2_547(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_548, 7}}).

-compile({nowarn_unused_function, {yeccpars2_548, 7}}).

yeccpars2_548(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_548_(Stack),
    yeccgoto_spec_fun(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_550, 7}}).

-compile({nowarn_unused_function, {yeccpars2_550, 7}}).

yeccpars2_550(S, ')', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 672, Ss, Stack, T, Ts, Tzr);
yeccpars2_550(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_551, 7}}).

-compile({nowarn_unused_function, {yeccpars2_551, 7}}).

yeccpars2_551(S, ';', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 670, Ss, Stack, T, Ts, Tzr);
yeccpars2_551(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_551_(Stack),
    yeccgoto_type_sigs(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_552, 7}}).

-compile({nowarn_unused_function, {yeccpars2_552, 7}}).

yeccpars2_552(S, 'when', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 658, Ss, Stack, T, Ts, Tzr);
yeccpars2_552(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_552_(Stack),
    yeccgoto_type_sig(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

yeccpars2_553(S, ')', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 561, Ss, Stack, T, Ts, Tzr);
yeccpars2_553(S, '+', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 26, Ss, Stack, T, Ts, Tzr);
yeccpars2_553(S, '-', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 27, Ss, Stack, T, Ts, Tzr);
yeccpars2_553(S, '...', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 562, Ss, Stack, T, Ts, Tzr);
yeccpars2_553(S, 'bnot', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 31, Ss, Stack, T, Ts, Tzr);
yeccpars2_553(S, 'not', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 35, Ss, Stack, T, Ts, Tzr);
yeccpars2_553(S, var, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 569, Ss, Stack, T, Ts, Tzr);
yeccpars2_553(S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_cont_553(S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_553, 7}}).

-compile({nowarn_unused_function, {yeccpars2_553, 7}}).

yeccpars2_cont_553(S, '#', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 559, Ss, Stack, T, Ts, Tzr);
yeccpars2_cont_553(S, '(', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 560, Ss, Stack, T, Ts, Tzr);
yeccpars2_cont_553(S, '<<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 563, Ss, Stack, T, Ts, Tzr);
yeccpars2_cont_553(S, '[', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 564, Ss, Stack, T, Ts, Tzr);
yeccpars2_cont_553(S, atom, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 565, Ss, Stack, T, Ts, Tzr);
yeccpars2_cont_553(S, char, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 566, Ss, Stack, T, Ts, Tzr);
yeccpars2_cont_553(S, 'fun', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 567, Ss, Stack, T, Ts, Tzr);
yeccpars2_cont_553(S, integer, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 568, Ss, Stack, T, Ts, Tzr);
yeccpars2_cont_553(S, '{', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 570, Ss, Stack, T, Ts, Tzr);
yeccpars2_cont_553(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_554, 7}}).

-compile({nowarn_unused_function, {yeccpars2_554, 7}}).

yeccpars2_554(S, '*', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 94, Ss, Stack, T, Ts, Tzr);
yeccpars2_554(S, '+', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 95, Ss, Stack, T, Ts, Tzr);
yeccpars2_554(S, '-', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 97, Ss, Stack, T, Ts, Tzr);
yeccpars2_554(S, '..', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 608, Ss, Stack, T, Ts, Tzr);
yeccpars2_554(S, '/', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 99, Ss, Stack, T, Ts, Tzr);
yeccpars2_554(S, 'and', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 109, Ss, Stack, T, Ts, Tzr);
yeccpars2_554(S, 'band', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 111, Ss, Stack, T, Ts, Tzr);
yeccpars2_554(S, 'bor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 112, Ss, Stack, T, Ts, Tzr);
yeccpars2_554(S, 'bsl', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 113, Ss, Stack, T, Ts, Tzr);
yeccpars2_554(S, 'bsr', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 114, Ss, Stack, T, Ts, Tzr);
yeccpars2_554(S, 'bxor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 115, Ss, Stack, T, Ts, Tzr);
yeccpars2_554(S, 'div', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 116, Ss, Stack, T, Ts, Tzr);
yeccpars2_554(S, 'or', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 117, Ss, Stack, T, Ts, Tzr);
yeccpars2_554(S, 'rem', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 119, Ss, Stack, T, Ts, Tzr);
yeccpars2_554(S, 'xor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 121, Ss, Stack, T, Ts, Tzr);
yeccpars2_554(S, '|', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 656, Ss, Stack, T, Ts, Tzr);
yeccpars2_554(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_554_(Stack),
    yeccgoto_top_type(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_555, 7}}).

-compile({nowarn_unused_function, {yeccpars2_555, 7}}).

yeccpars2_555(S, ')', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 653, Ss, Stack, T, Ts, Tzr);
yeccpars2_555(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_556, 7}}).

-compile({nowarn_unused_function, {yeccpars2_556, 7}}).

yeccpars2_556(S, ',', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 651, Ss, Stack, T, Ts, Tzr);
yeccpars2_556(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_556_(Stack),
    yeccgoto_top_types(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

yeccpars2_557(S, '+', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 26, Ss, Stack, T, Ts, Tzr);
yeccpars2_557(S, '-', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 27, Ss, Stack, T, Ts, Tzr);
yeccpars2_557(S, 'bnot', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 31, Ss, Stack, T, Ts, Tzr);
yeccpars2_557(S, 'not', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 35, Ss, Stack, T, Ts, Tzr);
yeccpars2_557(S, var, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 605, Ss, Stack, T, Ts, Tzr);
yeccpars2_557(S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_cont_553(S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_558, 7}}).

-compile({nowarn_unused_function, {yeccpars2_558, 7}}).

yeccpars2_558(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_558_(Stack),
    yeccgoto_type(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_559, 7}}).

-compile({nowarn_unused_function, {yeccpars2_559, 7}}).

yeccpars2_559(S, atom, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 627, Ss, Stack, T, Ts, Tzr);
yeccpars2_559(S, '{', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 628, Ss, Stack, T, Ts, Tzr);
yeccpars2_559(_, _, _, _, T, _, _) ->
    yeccerror(T).

yeccpars2_560(S, '+', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 26, Ss, Stack, T, Ts, Tzr);
yeccpars2_560(S, '-', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 27, Ss, Stack, T, Ts, Tzr);
yeccpars2_560(S, 'bnot', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 31, Ss, Stack, T, Ts, Tzr);
yeccpars2_560(S, 'not', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 35, Ss, Stack, T, Ts, Tzr);
yeccpars2_560(S, var, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 569, Ss, Stack, T, Ts, Tzr);
yeccpars2_560(S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_cont_553(S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_561, 7}}).

-compile({nowarn_unused_function, {yeccpars2_561, 7}}).

yeccpars2_561(S, '->', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 623, Ss, Stack, T, Ts, Tzr);
yeccpars2_561(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_562, 7}}).

-compile({nowarn_unused_function, {yeccpars2_562, 7}}).

yeccpars2_562(S, ')', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 620, Ss, Stack, T, Ts, Tzr);
yeccpars2_562(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_563, 7}}).

-compile({nowarn_unused_function, {yeccpars2_563, 7}}).

yeccpars2_563(S, '>>', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 598, Ss, Stack, T, Ts, Tzr);
yeccpars2_563(S, var, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 599, Ss, Stack, T, Ts, Tzr);
yeccpars2_563(_, _, _, _, T, _, _) ->
    yeccerror(T).

yeccpars2_564(S, '+', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 26, Ss, Stack, T, Ts, Tzr);
yeccpars2_564(S, '-', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 27, Ss, Stack, T, Ts, Tzr);
yeccpars2_564(S, ']', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 591, Ss, Stack, T, Ts, Tzr);
yeccpars2_564(S, 'bnot', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 31, Ss, Stack, T, Ts, Tzr);
yeccpars2_564(S, 'not', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 35, Ss, Stack, T, Ts, Tzr);
yeccpars2_564(S, var, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 569, Ss, Stack, T, Ts, Tzr);
yeccpars2_564(S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_cont_553(S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_565, 7}}).

-compile({nowarn_unused_function, {yeccpars2_565, 7}}).

yeccpars2_565(S, '(', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 580, Ss, Stack, T, Ts, Tzr);
yeccpars2_565(S, ':', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 581, Ss, Stack, T, Ts, Tzr);
yeccpars2_565(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_565_(Stack),
    yeccgoto_type(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_566, 7}}).

-compile({nowarn_unused_function, {yeccpars2_566, 7}}).

yeccpars2_566(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_566_(Stack),
    yeccgoto_type(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_567, 7}}).

-compile({nowarn_unused_function, {yeccpars2_567, 7}}).

yeccpars2_567(S, '(', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 576, Ss, Stack, T, Ts, Tzr);
yeccpars2_567(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_568, 7}}).

-compile({nowarn_unused_function, {yeccpars2_568, 7}}).

yeccpars2_568(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_568_(Stack),
    yeccgoto_type(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_569, 7}}).

-compile({nowarn_unused_function, {yeccpars2_569, 7}}).

yeccpars2_569(S, '::', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 574, Ss, Stack, T, Ts, Tzr);
yeccpars2_569(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_569_(Stack),
    yeccgoto_type(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

yeccpars2_570(S, '+', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 26, Ss, Stack, T, Ts, Tzr);
yeccpars2_570(S, '-', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 27, Ss, Stack, T, Ts, Tzr);
yeccpars2_570(S, 'bnot', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 31, Ss, Stack, T, Ts, Tzr);
yeccpars2_570(S, 'not', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 35, Ss, Stack, T, Ts, Tzr);
yeccpars2_570(S, var, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 569, Ss, Stack, T, Ts, Tzr);
yeccpars2_570(S, '}', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 572, Ss, Stack, T, Ts, Tzr);
yeccpars2_570(S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_cont_553(S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_571, 7}}).

-compile({nowarn_unused_function, {yeccpars2_571, 7}}).

yeccpars2_571(S, '}', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 573, Ss, Stack, T, Ts, Tzr);
yeccpars2_571(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_572, 7}}).

-compile({nowarn_unused_function, {yeccpars2_572, 7}}).

yeccpars2_572(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_ | Nss] = Ss,
    NewStack = yeccpars2_572_(Stack),
    yeccgoto_type(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_573, 7}}).

-compile({nowarn_unused_function, {yeccpars2_573, 7}}).

yeccpars2_573(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_573_(Stack),
    yeccgoto_type(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_575, 7}}).

-compile({nowarn_unused_function, {yeccpars2_575, 7}}).

yeccpars2_575(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_575_(Stack),
    yeccgoto_top_type(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_576, 7}}).

-compile({nowarn_unused_function, {yeccpars2_576, 7}}).

yeccpars2_576(S, '(', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 553, Ss, Stack, T, Ts, Tzr);
yeccpars2_576(S, ')', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 578, Ss, Stack, T, Ts, Tzr);
yeccpars2_576(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_577, 7}}).

-compile({nowarn_unused_function, {yeccpars2_577, 7}}).

yeccpars2_577(S, ')', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 579, Ss, Stack, T, Ts, Tzr);
yeccpars2_577(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_578, 7}}).

-compile({nowarn_unused_function, {yeccpars2_578, 7}}).

yeccpars2_578(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_578_(Stack),
    yeccgoto_type(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_579, 7}}).

-compile({nowarn_unused_function, {yeccpars2_579, 7}}).

yeccpars2_579(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _, _ | Nss] = Ss,
    NewStack = yeccpars2_579_(Stack),
    yeccgoto_type(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

yeccpars2_580(S, ')', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 588, Ss, Stack, T, Ts, Tzr);
yeccpars2_580(S, '+', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 26, Ss, Stack, T, Ts, Tzr);
yeccpars2_580(S, '-', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 27, Ss, Stack, T, Ts, Tzr);
yeccpars2_580(S, 'bnot', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 31, Ss, Stack, T, Ts, Tzr);
yeccpars2_580(S, 'not', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 35, Ss, Stack, T, Ts, Tzr);
yeccpars2_580(S, var, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 569, Ss, Stack, T, Ts, Tzr);
yeccpars2_580(S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_cont_553(S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_581, 7}}).

-compile({nowarn_unused_function, {yeccpars2_581, 7}}).

yeccpars2_581(S, atom, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 582, Ss, Stack, T, Ts, Tzr);
yeccpars2_581(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_582, 7}}).

-compile({nowarn_unused_function, {yeccpars2_582, 7}}).

yeccpars2_582(S, '(', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 583, Ss, Stack, T, Ts, Tzr);
yeccpars2_582(_, _, _, _, T, _, _) ->
    yeccerror(T).

yeccpars2_583(S, ')', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 585, Ss, Stack, T, Ts, Tzr);
yeccpars2_583(S, '+', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 26, Ss, Stack, T, Ts, Tzr);
yeccpars2_583(S, '-', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 27, Ss, Stack, T, Ts, Tzr);
yeccpars2_583(S, 'bnot', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 31, Ss, Stack, T, Ts, Tzr);
yeccpars2_583(S, 'not', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 35, Ss, Stack, T, Ts, Tzr);
yeccpars2_583(S, var, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 569, Ss, Stack, T, Ts, Tzr);
yeccpars2_583(S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_cont_553(S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_584, 7}}).

-compile({nowarn_unused_function, {yeccpars2_584, 7}}).

yeccpars2_584(S, ')', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 586, Ss, Stack, T, Ts, Tzr);
yeccpars2_584(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_585, 7}}).

-compile({nowarn_unused_function, {yeccpars2_585, 7}}).

yeccpars2_585(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _, _, _ | Nss] = Ss,
    NewStack = yeccpars2_585_(Stack),
    yeccgoto_type(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_586, 7}}).

-compile({nowarn_unused_function, {yeccpars2_586, 7}}).

yeccpars2_586(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _, _, _, _ | Nss] = Ss,
    NewStack = yeccpars2_586_(Stack),
    yeccgoto_type(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_587, 7}}).

-compile({nowarn_unused_function, {yeccpars2_587, 7}}).

yeccpars2_587(S, ')', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 589, Ss, Stack, T, Ts, Tzr);
yeccpars2_587(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_588, 7}}).

-compile({nowarn_unused_function, {yeccpars2_588, 7}}).

yeccpars2_588(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_588_(Stack),
    yeccgoto_type(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_589, 7}}).

-compile({nowarn_unused_function, {yeccpars2_589, 7}}).

yeccpars2_589(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _, _ | Nss] = Ss,
    NewStack = yeccpars2_589_(Stack),
    yeccgoto_type(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_590, 7}}).

-compile({nowarn_unused_function, {yeccpars2_590, 7}}).

yeccpars2_590(S, ',', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 592, Ss, Stack, T, Ts, Tzr);
yeccpars2_590(S, ']', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 593, Ss, Stack, T, Ts, Tzr);
yeccpars2_590(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_591, 7}}).

-compile({nowarn_unused_function, {yeccpars2_591, 7}}).

yeccpars2_591(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_ | Nss] = Ss,
    NewStack = yeccpars2_591_(Stack),
    yeccgoto_type(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_592, 7}}).

-compile({nowarn_unused_function, {yeccpars2_592, 7}}).

yeccpars2_592(S, '...', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 594, Ss, Stack, T, Ts, Tzr);
yeccpars2_592(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_593, 7}}).

-compile({nowarn_unused_function, {yeccpars2_593, 7}}).

yeccpars2_593(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_593_(Stack),
    yeccgoto_type(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_594, 7}}).

-compile({nowarn_unused_function, {yeccpars2_594, 7}}).

yeccpars2_594(S, ']', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 595, Ss, Stack, T, Ts, Tzr);
yeccpars2_594(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_595, 7}}).

-compile({nowarn_unused_function, {yeccpars2_595, 7}}).

yeccpars2_595(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _, _, _ | Nss] = Ss,
    NewStack = yeccpars2_595_(Stack),
    yeccgoto_type(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_596, 7}}).

-compile({nowarn_unused_function, {yeccpars2_596, 7}}).

yeccpars2_596(S, '>>', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 619, Ss, Stack, T, Ts, Tzr);
yeccpars2_596(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_597, 7}}).

-compile({nowarn_unused_function, {yeccpars2_597, 7}}).

yeccpars2_597(S, ',', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 612, Ss, Stack, T, Ts, Tzr);
yeccpars2_597(S, '>>', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 613, Ss, Stack, T, Ts, Tzr);
yeccpars2_597(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_598, 7}}).

-compile({nowarn_unused_function, {yeccpars2_598, 7}}).

yeccpars2_598(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_ | Nss] = Ss,
    NewStack = yeccpars2_598_(Stack),
    yeccgoto_binary_type(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_599, 7}}).

-compile({nowarn_unused_function, {yeccpars2_599, 7}}).

yeccpars2_599(S, ':', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 600, Ss, Stack, T, Ts, Tzr);
yeccpars2_599(_, _, _, _, T, _, _) ->
    yeccerror(T).

yeccpars2_600(S, '+', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 26, Ss, Stack, T, Ts, Tzr);
yeccpars2_600(S, '-', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 27, Ss, Stack, T, Ts, Tzr);
yeccpars2_600(S, 'bnot', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 31, Ss, Stack, T, Ts, Tzr);
yeccpars2_600(S, 'not', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 35, Ss, Stack, T, Ts, Tzr);
yeccpars2_600(S, var, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 602, Ss, Stack, T, Ts, Tzr);
yeccpars2_600(S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_cont_553(S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_601, 7}}).

-compile({nowarn_unused_function, {yeccpars2_601, 7}}).

yeccpars2_601(S, '*', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 94, Ss, Stack, T, Ts, Tzr);
yeccpars2_601(S, '+', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 95, Ss, Stack, T, Ts, Tzr);
yeccpars2_601(S, '-', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 97, Ss, Stack, T, Ts, Tzr);
yeccpars2_601(S, '..', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 608, Ss, Stack, T, Ts, Tzr);
yeccpars2_601(S, '/', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 99, Ss, Stack, T, Ts, Tzr);
yeccpars2_601(S, 'and', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 109, Ss, Stack, T, Ts, Tzr);
yeccpars2_601(S, 'band', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 111, Ss, Stack, T, Ts, Tzr);
yeccpars2_601(S, 'bor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 112, Ss, Stack, T, Ts, Tzr);
yeccpars2_601(S, 'bsl', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 113, Ss, Stack, T, Ts, Tzr);
yeccpars2_601(S, 'bsr', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 114, Ss, Stack, T, Ts, Tzr);
yeccpars2_601(S, 'bxor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 115, Ss, Stack, T, Ts, Tzr);
yeccpars2_601(S, 'div', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 116, Ss, Stack, T, Ts, Tzr);
yeccpars2_601(S, 'or', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 117, Ss, Stack, T, Ts, Tzr);
yeccpars2_601(S, 'rem', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 119, Ss, Stack, T, Ts, Tzr);
yeccpars2_601(S, 'xor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 121, Ss, Stack, T, Ts, Tzr);
yeccpars2_601(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_601_(Stack),
    yeccgoto_bin_base_type(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_602, 7}}).

-compile({nowarn_unused_function, {yeccpars2_602, 7}}).

yeccpars2_602(S, '*', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 603, Ss, Stack, T, Ts, Tzr);
yeccpars2_602(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_602_(Stack),
    yeccgoto_type(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_604, 7}}).

-compile({nowarn_unused_function, {yeccpars2_604, 7}}).

yeccpars2_604(S, '*', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 94, Ss, Stack, T, Ts, Tzr);
yeccpars2_604(S, '+', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 95, Ss, Stack, T, Ts, Tzr);
yeccpars2_604(S, '-', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 97, Ss, Stack, T, Ts, Tzr);
yeccpars2_604(S, '..', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 608, Ss, Stack, T, Ts, Tzr);
yeccpars2_604(S, '/', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 99, Ss, Stack, T, Ts, Tzr);
yeccpars2_604(S, 'and', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 109, Ss, Stack, T, Ts, Tzr);
yeccpars2_604(S, 'band', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 111, Ss, Stack, T, Ts, Tzr);
yeccpars2_604(S, 'bor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 112, Ss, Stack, T, Ts, Tzr);
yeccpars2_604(S, 'bsl', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 113, Ss, Stack, T, Ts, Tzr);
yeccpars2_604(S, 'bsr', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 114, Ss, Stack, T, Ts, Tzr);
yeccpars2_604(S, 'bxor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 115, Ss, Stack, T, Ts, Tzr);
yeccpars2_604(S, 'div', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 116, Ss, Stack, T, Ts, Tzr);
yeccpars2_604(S, 'or', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 117, Ss, Stack, T, Ts, Tzr);
yeccpars2_604(S, 'rem', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 119, Ss, Stack, T, Ts, Tzr);
yeccpars2_604(S, 'xor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 121, Ss, Stack, T, Ts, Tzr);
yeccpars2_604(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _, _, _ | Nss] = Ss,
    NewStack = yeccpars2_604_(Stack),
    yeccgoto_bin_unit_type(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_605, 7}}).

-compile({nowarn_unused_function, {yeccpars2_605, 7}}).

yeccpars2_605(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_605_(Stack),
    yeccgoto_type(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_609, 7}}).

-compile({nowarn_unused_function, {yeccpars2_609, 7}}).

yeccpars2_609(S, '*', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 94, Ss, Stack, T, Ts, Tzr);
yeccpars2_609(S, '+', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 95, Ss, Stack, T, Ts, Tzr);
yeccpars2_609(S, '-', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 97, Ss, Stack, T, Ts, Tzr);
yeccpars2_609(S, '/', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 99, Ss, Stack, T, Ts, Tzr);
yeccpars2_609(S, 'and', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 109, Ss, Stack, T, Ts, Tzr);
yeccpars2_609(S, 'band', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 111, Ss, Stack, T, Ts, Tzr);
yeccpars2_609(S, 'bor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 112, Ss, Stack, T, Ts, Tzr);
yeccpars2_609(S, 'bsl', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 113, Ss, Stack, T, Ts, Tzr);
yeccpars2_609(S, 'bsr', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 114, Ss, Stack, T, Ts, Tzr);
yeccpars2_609(S, 'bxor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 115, Ss, Stack, T, Ts, Tzr);
yeccpars2_609(S, 'div', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 116, Ss, Stack, T, Ts, Tzr);
yeccpars2_609(S, 'or', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 117, Ss, Stack, T, Ts, Tzr);
yeccpars2_609(S, 'rem', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 119, Ss, Stack, T, Ts, Tzr);
yeccpars2_609(S, 'xor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 121, Ss, Stack, T, Ts, Tzr);
yeccpars2_609(_S, ')', Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = 'yeccpars2_609_)'(Stack),
    yeccgoto_type(hd(Nss), ')', Nss, NewStack, T, Ts, Tzr);
yeccpars2_609(_S, ',', Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = 'yeccpars2_609_,'(Stack),
    yeccgoto_type(hd(Nss), ',', Nss, NewStack, T, Ts, Tzr);
yeccpars2_609(_S, ':=', Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = 'yeccpars2_609_:='(Stack),
    yeccgoto_type(hd(Nss), ':=', Nss, NewStack, T, Ts, Tzr);
yeccpars2_609(_S, ';', Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = 'yeccpars2_609_;'(Stack),
    yeccgoto_type(hd(Nss), ';', Nss, NewStack, T, Ts, Tzr);
yeccpars2_609(_S, '=>', Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = 'yeccpars2_609_=>'(Stack),
    yeccgoto_type(hd(Nss), '=>', Nss, NewStack, T, Ts, Tzr);
yeccpars2_609(_S, '>>', Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = 'yeccpars2_609_>>'(Stack),
    yeccgoto_type(hd(Nss), '>>', Nss, NewStack, T, Ts, Tzr);
yeccpars2_609(_S, ']', Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = 'yeccpars2_609_]'(Stack),
    yeccgoto_type(hd(Nss), ']', Nss, NewStack, T, Ts, Tzr);
yeccpars2_609(_S, dot, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_609_dot(Stack),
    yeccgoto_type(hd(Nss), dot, Nss, NewStack, T, Ts, Tzr);
yeccpars2_609(_S, 'when', Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_609_when(Stack),
    yeccgoto_type(hd(Nss), 'when', Nss, NewStack, T, Ts, Tzr);
yeccpars2_609(_S, '|', Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = 'yeccpars2_609_|'(Stack),
    yeccgoto_type(hd(Nss), '|', Nss, NewStack, T, Ts, Tzr);
yeccpars2_609(_S, '}', Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = 'yeccpars2_609_}'(Stack),
    yeccgoto_type(hd(Nss), '}', Nss, NewStack, T, Ts, Tzr);
yeccpars2_609(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_610, 7}}).

-compile({nowarn_unused_function, {yeccpars2_610, 7}}).

yeccpars2_610(S, '*', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 94, Ss, Stack, T, Ts, Tzr);
yeccpars2_610(S, '/', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 99, Ss, Stack, T, Ts, Tzr);
yeccpars2_610(S, 'and', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 109, Ss, Stack, T, Ts, Tzr);
yeccpars2_610(S, 'band', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 111, Ss, Stack, T, Ts, Tzr);
yeccpars2_610(S, 'div', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 116, Ss, Stack, T, Ts, Tzr);
yeccpars2_610(S, 'rem', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 119, Ss, Stack, T, Ts, Tzr);
yeccpars2_610(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_610_(Stack),
    yeccgoto_type(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_611, 7}}).

-compile({nowarn_unused_function, {yeccpars2_611, 7}}).

yeccpars2_611(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_611_(Stack),
    yeccgoto_type(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_612, 7}}).

-compile({nowarn_unused_function, {yeccpars2_612, 7}}).

yeccpars2_612(S, var, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 615, Ss, Stack, T, Ts, Tzr);
yeccpars2_612(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_613, 7}}).

-compile({nowarn_unused_function, {yeccpars2_613, 7}}).

yeccpars2_613(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_613_(Stack),
    yeccgoto_binary_type(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_614, 7}}).

-compile({nowarn_unused_function, {yeccpars2_614, 7}}).

yeccpars2_614(S, '>>', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 618, Ss, Stack, T, Ts, Tzr);
yeccpars2_614(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_615, 7}}).

-compile({nowarn_unused_function, {yeccpars2_615, 7}}).

yeccpars2_615(S, ':', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 616, Ss, Stack, T, Ts, Tzr);
yeccpars2_615(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_616, 7}}).

-compile({nowarn_unused_function, {yeccpars2_616, 7}}).

yeccpars2_616(S, var, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 617, Ss, Stack, T, Ts, Tzr);
yeccpars2_616(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_617, 7}}).

-compile({nowarn_unused_function, {yeccpars2_617, 7}}).

yeccpars2_617(S, '*', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 603, Ss, Stack, T, Ts, Tzr);
yeccpars2_617(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_618, 7}}).

-compile({nowarn_unused_function, {yeccpars2_618, 7}}).

yeccpars2_618(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _, _, _ | Nss] = Ss,
    NewStack = yeccpars2_618_(Stack),
    yeccgoto_binary_type(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_619, 7}}).

-compile({nowarn_unused_function, {yeccpars2_619, 7}}).

yeccpars2_619(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_619_(Stack),
    yeccgoto_binary_type(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_620, 7}}).

-compile({nowarn_unused_function, {yeccpars2_620, 7}}).

yeccpars2_620(S, '->', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 621, Ss, Stack, T, Ts, Tzr);
yeccpars2_620(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_622, 7}}).

-compile({nowarn_unused_function, {yeccpars2_622, 7}}).

yeccpars2_622(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _, _, _ | Nss] = Ss,
    NewStack = yeccpars2_622_(Stack),
    yeccgoto_fun_type(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_624, 7}}).

-compile({nowarn_unused_function, {yeccpars2_624, 7}}).

yeccpars2_624(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _, _ | Nss] = Ss,
    NewStack = yeccpars2_624_(Stack),
    yeccgoto_fun_type(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_625, 7}}).

-compile({nowarn_unused_function, {yeccpars2_625, 7}}).

yeccpars2_625(S, ')', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 626, Ss, Stack, T, Ts, Tzr);
yeccpars2_625(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_626, 7}}).

-compile({nowarn_unused_function, {yeccpars2_626, 7}}).

yeccpars2_626(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_626_(Stack),
    yeccgoto_type(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_627, 7}}).

-compile({nowarn_unused_function, {yeccpars2_627, 7}}).

yeccpars2_627(S, '{', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 640, Ss, Stack, T, Ts, Tzr);
yeccpars2_627(_, _, _, _, T, _, _) ->
    yeccerror(T).

yeccpars2_628(S, '+', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 26, Ss, Stack, T, Ts, Tzr);
yeccpars2_628(S, '-', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 27, Ss, Stack, T, Ts, Tzr);
yeccpars2_628(S, 'bnot', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 31, Ss, Stack, T, Ts, Tzr);
yeccpars2_628(S, 'not', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 35, Ss, Stack, T, Ts, Tzr);
yeccpars2_628(S, var, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 569, Ss, Stack, T, Ts, Tzr);
yeccpars2_628(S, '}', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 632, Ss, Stack, T, Ts, Tzr);
yeccpars2_628(S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_cont_553(S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_629, 7}}).

-compile({nowarn_unused_function, {yeccpars2_629, 7}}).

yeccpars2_629(S, ':=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 636, Ss, Stack, T, Ts, Tzr);
yeccpars2_629(S, '=>', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 637, Ss, Stack, T, Ts, Tzr);
yeccpars2_629(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_630, 7}}).

-compile({nowarn_unused_function, {yeccpars2_630, 7}}).

yeccpars2_630(S, '}', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 635, Ss, Stack, T, Ts, Tzr);
yeccpars2_630(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_631, 7}}).

-compile({nowarn_unused_function, {yeccpars2_631, 7}}).

yeccpars2_631(S, ',', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 633, Ss, Stack, T, Ts, Tzr);
yeccpars2_631(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_631_(Stack),
    yeccgoto_map_pair_types(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_632, 7}}).

-compile({nowarn_unused_function, {yeccpars2_632, 7}}).

yeccpars2_632(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_632_(Stack),
    yeccgoto_type(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_634, 7}}).

-compile({nowarn_unused_function, {yeccpars2_634, 7}}).

yeccpars2_634(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_634_(Stack),
    yeccgoto_map_pair_types(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_635, 7}}).

-compile({nowarn_unused_function, {yeccpars2_635, 7}}).

yeccpars2_635(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _, _ | Nss] = Ss,
    NewStack = yeccpars2_635_(Stack),
    yeccgoto_type(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_638, 7}}).

-compile({nowarn_unused_function, {yeccpars2_638, 7}}).

yeccpars2_638(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_638_(Stack),
    yeccgoto_map_pair_type(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_639, 7}}).

-compile({nowarn_unused_function, {yeccpars2_639, 7}}).

yeccpars2_639(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_639_(Stack),
    yeccgoto_map_pair_type(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_640, 7}}).

-compile({nowarn_unused_function, {yeccpars2_640, 7}}).

yeccpars2_640(S, atom, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 643, Ss, Stack, T, Ts, Tzr);
yeccpars2_640(S, '}', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 644, Ss, Stack, T, Ts, Tzr);
yeccpars2_640(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_641, 7}}).

-compile({nowarn_unused_function, {yeccpars2_641, 7}}).

yeccpars2_641(S, '}', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 649, Ss, Stack, T, Ts, Tzr);
yeccpars2_641(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_642, 7}}).

-compile({nowarn_unused_function, {yeccpars2_642, 7}}).

yeccpars2_642(S, ',', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 647, Ss, Stack, T, Ts, Tzr);
yeccpars2_642(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_642_(Stack),
    yeccgoto_field_types(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_643, 7}}).

-compile({nowarn_unused_function, {yeccpars2_643, 7}}).

yeccpars2_643(S, '::', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 645, Ss, Stack, T, Ts, Tzr);
yeccpars2_643(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_644, 7}}).

-compile({nowarn_unused_function, {yeccpars2_644, 7}}).

yeccpars2_644(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _, _ | Nss] = Ss,
    NewStack = yeccpars2_644_(Stack),
    yeccgoto_type(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_646, 7}}).

-compile({nowarn_unused_function, {yeccpars2_646, 7}}).

yeccpars2_646(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_646_(Stack),
    yeccgoto_field_type(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_647, 7}}).

-compile({nowarn_unused_function, {yeccpars2_647, 7}}).

yeccpars2_647(S, atom, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 643, Ss, Stack, T, Ts, Tzr);
yeccpars2_647(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_648, 7}}).

-compile({nowarn_unused_function, {yeccpars2_648, 7}}).

yeccpars2_648(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_648_(Stack),
    yeccgoto_field_types(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_649, 7}}).

-compile({nowarn_unused_function, {yeccpars2_649, 7}}).

yeccpars2_649(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _, _, _ | Nss] = Ss,
    NewStack = yeccpars2_649_(Stack),
    yeccgoto_type(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_650, 7}}).

-compile({nowarn_unused_function, {yeccpars2_650, 7}}).

yeccpars2_650(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_ | Nss] = Ss,
    NewStack = yeccpars2_650_(Stack),
    yeccgoto_type(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_652, 7}}).

-compile({nowarn_unused_function, {yeccpars2_652, 7}}).

yeccpars2_652(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_652_(Stack),
    yeccgoto_top_types(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_653, 7}}).

-compile({nowarn_unused_function, {yeccpars2_653, 7}}).

yeccpars2_653(S, '->', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 654, Ss, Stack, T, Ts, Tzr);
yeccpars2_653(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_655, 7}}).

-compile({nowarn_unused_function, {yeccpars2_655, 7}}).

yeccpars2_655(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _, _, _ | Nss] = Ss,
    NewStack = yeccpars2_655_(Stack),
    yeccgoto_fun_type(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_657, 7}}).

-compile({nowarn_unused_function, {yeccpars2_657, 7}}).

yeccpars2_657(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_657_(Stack),
    yeccgoto_top_type(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_658, 7}}).

-compile({nowarn_unused_function, {yeccpars2_658, 7}}).

yeccpars2_658(S, atom, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 661, Ss, Stack, T, Ts, Tzr);
yeccpars2_658(S, var, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 662, Ss, Stack, T, Ts, Tzr);
yeccpars2_658(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_659, 7}}).

-compile({nowarn_unused_function, {yeccpars2_659, 7}}).

yeccpars2_659(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_659_(Stack),
    yeccgoto_type_sig(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_660, 7}}).

-compile({nowarn_unused_function, {yeccpars2_660, 7}}).

yeccpars2_660(S, ',', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 668, Ss, Stack, T, Ts, Tzr);
yeccpars2_660(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_660_(Stack),
    yeccgoto_type_guards(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_661, 7}}).

-compile({nowarn_unused_function, {yeccpars2_661, 7}}).

yeccpars2_661(S, '(', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 665, Ss, Stack, T, Ts, Tzr);
yeccpars2_661(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_662, 7}}).

-compile({nowarn_unused_function, {yeccpars2_662, 7}}).

yeccpars2_662(S, '::', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 663, Ss, Stack, T, Ts, Tzr);
yeccpars2_662(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_664, 7}}).

-compile({nowarn_unused_function, {yeccpars2_664, 7}}).

yeccpars2_664(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_664_(Stack),
    yeccgoto_type_guard(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_666, 7}}).

-compile({nowarn_unused_function, {yeccpars2_666, 7}}).

yeccpars2_666(S, ')', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 667, Ss, Stack, T, Ts, Tzr);
yeccpars2_666(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_667, 7}}).

-compile({nowarn_unused_function, {yeccpars2_667, 7}}).

yeccpars2_667(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _, _ | Nss] = Ss,
    NewStack = yeccpars2_667_(Stack),
    yeccgoto_type_guard(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_669, 7}}).

-compile({nowarn_unused_function, {yeccpars2_669, 7}}).

yeccpars2_669(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_669_(Stack),
    yeccgoto_type_guards(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_671, 7}}).

-compile({nowarn_unused_function, {yeccpars2_671, 7}}).

yeccpars2_671(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_671_(Stack),
    yeccgoto_type_sigs(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_672, 7}}).

-compile({nowarn_unused_function, {yeccpars2_672, 7}}).

yeccpars2_672(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _, _ | Nss] = Ss,
    NewStack = yeccpars2_672_(Stack),
    yeccgoto_type_spec(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_673, 7}}).

-compile({nowarn_unused_function, {yeccpars2_673, 7}}).

yeccpars2_673(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_ | Nss] = Ss,
    NewStack = yeccpars2_673_(Stack),
    yeccgoto_type_spec(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_674, 7}}).

-compile({nowarn_unused_function, {yeccpars2_674, 7}}).

yeccpars2_674(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_674_(Stack),
    yeccgoto_attribute(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_675, 7}}).

-compile({nowarn_unused_function, {yeccpars2_675, 7}}).

yeccpars2_675(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_675_(Stack),
    yeccgoto_attribute(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_676, 7}}).

-compile({nowarn_unused_function, {yeccpars2_676, 7}}).

yeccpars2_676(S, '!', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 93, Ss, Stack, T, Ts, Tzr);
yeccpars2_676(S, '*', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 94, Ss, Stack, T, Ts, Tzr);
yeccpars2_676(S, '+', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 95, Ss, Stack, T, Ts, Tzr);
yeccpars2_676(S, '++', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 96, Ss, Stack, T, Ts, Tzr);
yeccpars2_676(S, ',', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 700, Ss, Stack, T, Ts, Tzr);
yeccpars2_676(S, '-', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 97, Ss, Stack, T, Ts, Tzr);
yeccpars2_676(S, '--', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 98, Ss, Stack, T, Ts, Tzr);
yeccpars2_676(S, '/', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 99, Ss, Stack, T, Ts, Tzr);
yeccpars2_676(S, '/=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 100, Ss, Stack, T, Ts, Tzr);
yeccpars2_676(S, '::', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 682, Ss, Stack, T, Ts, Tzr);
yeccpars2_676(S, '<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 101, Ss, Stack, T, Ts, Tzr);
yeccpars2_676(S, '=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 102, Ss, Stack, T, Ts, Tzr);
yeccpars2_676(S, '=/=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 103, Ss, Stack, T, Ts, Tzr);
yeccpars2_676(S, '=:=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 104, Ss, Stack, T, Ts, Tzr);
yeccpars2_676(S, '=<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 105, Ss, Stack, T, Ts, Tzr);
yeccpars2_676(S, '==', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 106, Ss, Stack, T, Ts, Tzr);
yeccpars2_676(S, '>', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 107, Ss, Stack, T, Ts, Tzr);
yeccpars2_676(S, '>=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 108, Ss, Stack, T, Ts, Tzr);
yeccpars2_676(S, 'and', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 109, Ss, Stack, T, Ts, Tzr);
yeccpars2_676(S, 'andalso', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 110, Ss, Stack, T, Ts, Tzr);
yeccpars2_676(S, 'band', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 111, Ss, Stack, T, Ts, Tzr);
yeccpars2_676(S, 'bor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 112, Ss, Stack, T, Ts, Tzr);
yeccpars2_676(S, 'bsl', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 113, Ss, Stack, T, Ts, Tzr);
yeccpars2_676(S, 'bsr', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 114, Ss, Stack, T, Ts, Tzr);
yeccpars2_676(S, 'bxor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 115, Ss, Stack, T, Ts, Tzr);
yeccpars2_676(S, 'div', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 116, Ss, Stack, T, Ts, Tzr);
yeccpars2_676(S, 'or', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 117, Ss, Stack, T, Ts, Tzr);
yeccpars2_676(S, 'orelse', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 118, Ss, Stack, T, Ts, Tzr);
yeccpars2_676(S, 'rem', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 119, Ss, Stack, T, Ts, Tzr);
yeccpars2_676(S, 'xor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 121, Ss, Stack, T, Ts, Tzr);
yeccpars2_676(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_676_(Stack),
    yeccgoto_attr_val(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_677, 7}}).

-compile({nowarn_unused_function, {yeccpars2_677, 7}}).

yeccpars2_677(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_677_(Stack),
    yeccgoto_attribute(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_679, 7}}).

-compile({nowarn_unused_function, {yeccpars2_679, 7}}).

yeccpars2_679(S, ')', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 699, Ss, Stack, T, Ts, Tzr);
yeccpars2_679(_, _, _, _, T, _, _) ->
    yeccerror(T).

yeccpars2_680(S, '!', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 93, Ss, Stack, T, Ts, Tzr);
yeccpars2_680(S, ')', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 462, Ss, Stack, T, Ts, Tzr);
yeccpars2_680(S, ',', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 681, Ss, Stack, T, Ts, Tzr);
yeccpars2_680(S, '::', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 682, Ss, Stack, T, Ts, Tzr);
yeccpars2_680(S, '=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 102, Ss, Stack, T, Ts, Tzr);
yeccpars2_680(S, 'andalso', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 110, Ss, Stack, T, Ts, Tzr);
yeccpars2_680(S, 'orelse', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 118, Ss, Stack, T, Ts, Tzr);
yeccpars2_680(S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_cont_324(S, Cat, Ss, Stack, T, Ts, Tzr).

yeccpars2_681(S, '#', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 63, Ss, Stack, T, Ts, Tzr);
yeccpars2_681(S, '(', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 64, Ss, Stack, T, Ts, Tzr);
yeccpars2_681(S, '+', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 26, Ss, Stack, T, Ts, Tzr);
yeccpars2_681(S, '-', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 27, Ss, Stack, T, Ts, Tzr);
yeccpars2_681(S, atom, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 30, Ss, Stack, T, Ts, Tzr);
yeccpars2_681(S, 'bnot', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 31, Ss, Stack, T, Ts, Tzr);
yeccpars2_681(S, 'catch', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 69, Ss, Stack, T, Ts, Tzr);
yeccpars2_681(S, char, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 32, Ss, Stack, T, Ts, Tzr);
yeccpars2_681(S, float, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 33, Ss, Stack, T, Ts, Tzr);
yeccpars2_681(S, integer, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 34, Ss, Stack, T, Ts, Tzr);
yeccpars2_681(S, 'not', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 35, Ss, Stack, T, Ts, Tzr);
yeccpars2_681(S, sigil_prefix, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 36, Ss, Stack, T, Ts, Tzr);
yeccpars2_681(S, string, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 37, Ss, Stack, T, Ts, Tzr);
yeccpars2_681(S, '{', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 686, Ss, Stack, T, Ts, Tzr);
yeccpars2_681(S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_cont_28(S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_683, 7}}).

-compile({nowarn_unused_function, {yeccpars2_683, 7}}).

yeccpars2_683(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_683_(Stack),
    yeccgoto_typed_attr_val(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_684, 7}}).

-compile({nowarn_unused_function, {yeccpars2_684, 7}}).

yeccpars2_684(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_684_(Stack),
    yeccgoto_typed_attr_val(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_685, 7}}).

-compile({nowarn_unused_function, {yeccpars2_685, 7}}).

yeccpars2_685(S, ')', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 698, Ss, Stack, T, Ts, Tzr);
yeccpars2_685(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_687, 7}}).

-compile({nowarn_unused_function, {yeccpars2_687, 7}}).

yeccpars2_687(S, '}', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 697, Ss, Stack, T, Ts, Tzr);
yeccpars2_687(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_688, 7}}).

-compile({nowarn_unused_function, {yeccpars2_688, 7}}).

yeccpars2_688(S, ',', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 694, Ss, Stack, T, Ts, Tzr);
yeccpars2_688(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_688_(Stack),
    yeccgoto_typed_exprs(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_689, 7}}).

-compile({nowarn_unused_function, {yeccpars2_689, 7}}).

yeccpars2_689(S, '!', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 93, Ss, Stack, T, Ts, Tzr);
yeccpars2_689(S, '*', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 94, Ss, Stack, T, Ts, Tzr);
yeccpars2_689(S, '+', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 95, Ss, Stack, T, Ts, Tzr);
yeccpars2_689(S, '++', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 96, Ss, Stack, T, Ts, Tzr);
yeccpars2_689(S, ',', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 690, Ss, Stack, T, Ts, Tzr);
yeccpars2_689(S, '-', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 97, Ss, Stack, T, Ts, Tzr);
yeccpars2_689(S, '--', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 98, Ss, Stack, T, Ts, Tzr);
yeccpars2_689(S, '/', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 99, Ss, Stack, T, Ts, Tzr);
yeccpars2_689(S, '/=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 100, Ss, Stack, T, Ts, Tzr);
yeccpars2_689(S, '::', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 691, Ss, Stack, T, Ts, Tzr);
yeccpars2_689(S, '<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 101, Ss, Stack, T, Ts, Tzr);
yeccpars2_689(S, '=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 102, Ss, Stack, T, Ts, Tzr);
yeccpars2_689(S, '=/=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 103, Ss, Stack, T, Ts, Tzr);
yeccpars2_689(S, '=:=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 104, Ss, Stack, T, Ts, Tzr);
yeccpars2_689(S, '=<', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 105, Ss, Stack, T, Ts, Tzr);
yeccpars2_689(S, '==', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 106, Ss, Stack, T, Ts, Tzr);
yeccpars2_689(S, '>', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 107, Ss, Stack, T, Ts, Tzr);
yeccpars2_689(S, '>=', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 108, Ss, Stack, T, Ts, Tzr);
yeccpars2_689(S, 'and', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 109, Ss, Stack, T, Ts, Tzr);
yeccpars2_689(S, 'andalso', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 110, Ss, Stack, T, Ts, Tzr);
yeccpars2_689(S, 'band', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 111, Ss, Stack, T, Ts, Tzr);
yeccpars2_689(S, 'bor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 112, Ss, Stack, T, Ts, Tzr);
yeccpars2_689(S, 'bsl', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 113, Ss, Stack, T, Ts, Tzr);
yeccpars2_689(S, 'bsr', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 114, Ss, Stack, T, Ts, Tzr);
yeccpars2_689(S, 'bxor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 115, Ss, Stack, T, Ts, Tzr);
yeccpars2_689(S, 'div', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 116, Ss, Stack, T, Ts, Tzr);
yeccpars2_689(S, 'or', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 117, Ss, Stack, T, Ts, Tzr);
yeccpars2_689(S, 'orelse', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 118, Ss, Stack, T, Ts, Tzr);
yeccpars2_689(S, 'rem', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 119, Ss, Stack, T, Ts, Tzr);
yeccpars2_689(S, 'xor', Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 121, Ss, Stack, T, Ts, Tzr);
yeccpars2_689(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    NewStack = yeccpars2_689_(Stack),
    yeccgoto_exprs(hd(Ss), Cat, Ss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_692, 7}}).

-compile({nowarn_unused_function, {yeccpars2_692, 7}}).

yeccpars2_692(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_692_(Stack),
    yeccgoto_typed_expr(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_693, 7}}).

-compile({nowarn_unused_function, {yeccpars2_693, 7}}).

yeccpars2_693(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_693_(Stack),
    yeccgoto_typed_exprs(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_695, 7}}).

-compile({nowarn_unused_function, {yeccpars2_695, 7}}).

yeccpars2_695(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_695_(Stack),
    yeccgoto_typed_exprs(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_696, 7}}).

-compile({nowarn_unused_function, {yeccpars2_696, 7}}).

yeccpars2_696(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_696_(Stack),
    yeccgoto_typed_exprs(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_697, 7}}).

-compile({nowarn_unused_function, {yeccpars2_697, 7}}).

yeccpars2_697(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_697_(Stack),
    yeccgoto_typed_record_fields(hd(Nss),
                                 Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_698, 7}}).

-compile({nowarn_unused_function, {yeccpars2_698, 7}}).

yeccpars2_698(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _, _, _ | Nss] = Ss,
    NewStack = yeccpars2_698_(Stack),
    yeccgoto_attr_val(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_699, 7}}).

-compile({nowarn_unused_function, {yeccpars2_699, 7}}).

yeccpars2_699(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _, _, _ | Nss] = Ss,
    NewStack = yeccpars2_699_(Stack),
    yeccgoto_attribute(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_701, 7}}).

-compile({nowarn_unused_function, {yeccpars2_701, 7}}).

yeccpars2_701(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_701_(Stack),
    yeccgoto_attr_val(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_702, 7}}).

-compile({nowarn_unused_function, {yeccpars2_702, 7}}).

yeccpars2_702(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_ | Nss] = Ss,
    NewStack = yeccpars2_702_(Stack),
    yeccgoto_form(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_703, 7}}).

-compile({nowarn_unused_function, {yeccpars2_703, 7}}).

yeccpars2_703(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_ | Nss] = Ss,
    NewStack = yeccpars2_703_(Stack),
    yeccgoto_form(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccpars2_704, 7}}).

-compile({nowarn_unused_function, {yeccpars2_704, 7}}).

yeccpars2_704(S, atom, Ss, Stack, T, Ts, Tzr) ->
    yeccpars1(S, 7, Ss, Stack, T, Ts, Tzr);
yeccpars2_704(_, _, _, _, T, _, _) ->
    yeccerror(T).

-dialyzer({nowarn_function, {yeccpars2_705, 7}}).

-compile({nowarn_unused_function, {yeccpars2_705, 7}}).

yeccpars2_705(_S, Cat, Ss, Stack, T, Ts, Tzr) ->
    [_, _ | Nss] = Ss,
    NewStack = yeccpars2_705_(Stack),
    yeccgoto_function_clauses(hd(Nss), Cat, Nss, NewStack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_add_op, 7}}).

-compile({nowarn_unused_function, {yeccgoto_add_op, 7}}).

yeccgoto_add_op(18, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_15(296, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_add_op(58, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(92, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_add_op(82, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(92, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_add_op(126, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(92, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_add_op(127, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(92, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_add_op(128, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(92, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_add_op(129, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(92, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_add_op(130, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(92, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_add_op(282, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(92, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_add_op(283, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(92, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_add_op(284, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(92, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_add_op(287, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_15(296, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_add_op(291, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_15(296, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_add_op(299, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_15(296, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_add_op(301, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_15(296, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_add_op(302, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_15(296, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_add_op(303, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_15(296, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_add_op(304, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_15(296, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_add_op(308, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_15(296, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_add_op(324, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(92, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_add_op(329, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(92, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_add_op(334, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(92, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_add_op(337, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(92, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_add_op(377, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(92, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_add_op(378, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(92, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_add_op(384, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(92, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_add_op(396, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(92, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_add_op(400, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(92, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_add_op(401, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(92, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_add_op(404, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(92, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_add_op(405, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(92, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_add_op(414, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(92, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_add_op(415, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(92, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_add_op(417, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(92, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_add_op(420, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(92, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_add_op(422, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(92, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_add_op(434, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(92, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_add_op(439, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(92, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_add_op(461, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(92, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_add_op(485, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(92, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_add_op(487, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(92, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_add_op(497, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(92, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_add_op(513, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(92, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_add_op(517, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(92, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_add_op(526, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(92, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_add_op(527, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_15(296, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_add_op(537, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_15(296, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_add_op(554, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_557(607, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_add_op(601, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_557(607, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_add_op(604, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_557(607, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_add_op(609, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_557(607, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_add_op(610, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_557(607, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_add_op(611, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_557(607, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_add_op(650, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_557(607, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_add_op(676, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(92, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_add_op(680, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(92, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_add_op(689, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(92, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_argument_list, 7}}).

-compile({nowarn_unused_function, {yeccgoto_argument_list, 7}}).

yeccgoto_argument_list(56 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_506(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_atom_or_var, 7}}).

-compile({nowarn_unused_function, {yeccgoto_atom_or_var, 7}}).

yeccgoto_atom_or_var(70, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_355(355, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atom_or_var(363, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_364(364, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_atomic, 7}}).

-compile({nowarn_unused_function, {yeccgoto_atomic, 7}}).

yeccgoto_atomic(10 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_22(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(15 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_22(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(24 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_22(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(28 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(29 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(39 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(45 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(64 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(65 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(66 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(67 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(68 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(69 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(71 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(72 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(73 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(74 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(79 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(80 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_22(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(81 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(85 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(88 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(89 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(90 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(92 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(93 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(102 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(110 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(118 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(120 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(124 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(132 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(133 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(290 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_22(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(293 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_22(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(294 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_22(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(295 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_22(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(296 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_22(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(298 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_22(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(307 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_22(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(314 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_22(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(316 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(323 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(327 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(335 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(336 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(339 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(341 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(349 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(379 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(387 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(389 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(390 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(398 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(399 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(402 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(403 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(406 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(407 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(412 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(413 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(416 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(418 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(424 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(431 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(435 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(438 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(440 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(445 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(457 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(465 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(472 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(484 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(486 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(492 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(495 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(496 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(502 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(507 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(512 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(534 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_22(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(540 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(678 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(681 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(686 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(690 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(694 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_atomic(700 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_62(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_attr_val, 7}}).

-compile({nowarn_unused_function, {yeccgoto_attr_val, 7}}).

yeccgoto_attr_val(540 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_677(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_attribute, 7}}).

-compile({nowarn_unused_function, {yeccgoto_attribute, 7}}).

yeccgoto_attribute(0, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_5(5, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_bin_base_type, 7}}).

-compile({nowarn_unused_function, {yeccgoto_bin_base_type, 7}}).

yeccgoto_bin_base_type(563, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_597(597, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_bin_element, 7}}).

-compile({nowarn_unused_function, {yeccgoto_bin_element, 7}}).

yeccgoto_bin_element(28, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_428(428, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_bin_element(65, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_428(428, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_bin_element(440, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_428(428, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_bin_elements, 7}}).

-compile({nowarn_unused_function, {yeccgoto_bin_elements, 7}}).

yeccgoto_bin_elements(28, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_427(427, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_bin_elements(65, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_427(427, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_bin_elements(440 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_442(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_bin_unit_type, 7}}).

-compile({nowarn_unused_function, {yeccgoto_bin_unit_type, 7}}).

yeccgoto_bin_unit_type(563, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_596(596, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_bin_unit_type(612, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_614(614, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_binary, 7}}).

-compile({nowarn_unused_function, {yeccgoto_binary, 7}}).

yeccgoto_binary(10 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_21(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(15 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_21(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(24 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_21(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(28 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_61(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(29 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_61(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(39 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_61(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(45 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_61(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(64 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_61(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(65 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_61(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(66 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_61(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(67 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_61(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(68 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_61(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(69 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_61(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(71 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_61(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(72 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_61(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(73 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_61(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(74 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_61(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(79 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_61(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(80 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_21(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(81 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_61(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(85 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_61(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(88 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_61(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(89 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_61(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(90 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_61(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(92 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_61(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(93 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_61(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(102 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_61(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(110 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_61(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(118 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_61(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(120 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_61(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(124 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_61(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(132 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_61(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(133 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_61(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(290 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_21(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(293 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_21(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(294 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_21(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(295 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_21(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(296 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_21(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(298 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_21(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(307 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_21(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(314 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_21(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(316 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_61(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(323 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_61(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(327 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_61(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(335 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_61(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(336 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_61(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(339 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_61(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(341 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_61(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(349 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_61(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(379 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_61(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(387 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_61(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(389 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_61(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(390, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_397(397, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(398 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_61(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(399 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_61(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(402 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_61(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(403 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_61(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(406, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_397(397, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(407, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_397(397, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(412 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_61(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(413 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_61(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(416 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_61(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(418, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_397(397, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(424 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_61(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(431 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_61(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(435, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_397(397, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(438 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_61(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(440 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_61(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(445 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_61(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(457, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_397(397, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(465 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_61(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(472 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_61(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(484 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_61(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(486 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_61(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(492 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_61(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(495 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_61(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(496 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_61(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(502 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_61(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(507 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_61(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(512 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_61(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(534 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_21(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(540 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_61(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(678 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_61(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(681 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_61(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(686 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_61(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(690 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_61(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(694 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_61(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary(700 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_61(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_binary_comprehension, 7}}).

-compile({nowarn_unused_function, {yeccgoto_binary_comprehension, 7}}).

yeccgoto_binary_comprehension(28 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(29 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(39 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(45 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(64 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(65 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(66 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(67 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(68 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(69 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(71 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(72 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(73 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(74 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(79 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(81 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(85 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(88 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(89 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(90 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(92 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(93 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(102 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(110 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(118 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(120 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(124 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(132 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(133 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(316 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(323 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(327 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(335 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(336 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(339 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(341 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(349 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(379 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(387 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(389 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(390 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(398 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(399 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(402 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(403 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(406 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(407 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(412 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(413 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(416 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(418 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(424 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(431 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(435 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(438 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(440 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(445 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(457 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(465 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(472 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(484 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(486 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(492 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(495 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(496 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(502 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(507 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(512 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(540 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(678 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(681 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(686 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(690 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(694 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_comprehension(700 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_60(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_binary_type, 7}}).

-compile({nowarn_unused_function, {yeccgoto_binary_type, 7}}).

yeccgoto_binary_type(553 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_558(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_type(557 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_558(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_type(560 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_558(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_type(564 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_558(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_type(570 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_558(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_type(574 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_558(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_type(580 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_558(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_type(583 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_558(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_type(600 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_558(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_type(603 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_558(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_type(606 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_558(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_type(607 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_558(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_type(608 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_558(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_type(621 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_558(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_type(623 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_558(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_type(628 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_558(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_type(633 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_558(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_type(636 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_558(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_type(637 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_558(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_type(645 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_558(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_type(651 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_558(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_type(654 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_558(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_type(656 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_558(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_type(663 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_558(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_type(665 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_558(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_type(682 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_558(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_binary_type(691 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_558(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_bit_expr, 7}}).

-compile({nowarn_unused_function, {yeccgoto_bit_expr, 7}}).

yeccgoto_bit_expr(28, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_426(426, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_bit_expr(65, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_426(426, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_bit_expr(440, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_426(426, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_bit_size_expr, 7}}).

-compile({nowarn_unused_function, {yeccgoto_bit_size_expr, 7}}).

yeccgoto_bit_size_expr(445 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_447(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_bit_type, 7}}).

-compile({nowarn_unused_function, {yeccgoto_bit_type, 7}}).

yeccgoto_bit_type(449, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_451(451, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_bit_type(455, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_451(451, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_bit_type_list, 7}}).

-compile({nowarn_unused_function, {yeccgoto_bit_type_list, 7}}).

yeccgoto_bit_type_list(449 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_450(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_bit_type_list(455 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_456(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_case_expr, 7}}).

-compile({nowarn_unused_function, {yeccgoto_case_expr, 7}}).

yeccgoto_case_expr(28 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(29 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(39 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(45 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(64 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(65 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(66 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(67 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(68 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(69 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(71 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(72 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(73 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(74 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(79 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(81 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(85 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(88 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(89 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(90 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(92 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(93 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(102 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(110 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(118 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(120 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(124 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(132 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(133 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(316 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(323 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(327 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(335 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(336 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(339 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(341 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(349 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(379 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(387 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(389 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(390 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(398 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(399 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(402 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(403 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(406 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(407 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(412 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(413 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(416 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(418 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(424 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(431 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(435 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(438 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(440 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(445 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(457 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(465 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(472 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(484 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(486 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(492 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(495 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(496 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(502 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(507 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(512 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(540 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(678 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(681 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(686 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(690 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(694 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_case_expr(700 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_59(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_clause_args, 7}}).

-compile({nowarn_unused_function, {yeccgoto_clause_args, 7}}).

yeccgoto_clause_args(7, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_9(9, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_clause_body, 7}}).

-compile({nowarn_unused_function, {yeccgoto_clause_body, 7}}).

yeccgoto_clause_body(91 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_131(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_clause_body(305 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_306(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_clause_body(310 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_311(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_clause_body(312 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_313(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_clause_body(324, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_325(325, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_clause_body(329, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_330(330, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_clause_body(347 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_348(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_clause_body(359 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_360(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_clause_body(375 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_376(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_clause_body(538 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_539(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_clause_body_exprs, 7}}).

-compile({nowarn_unused_function, {yeccgoto_clause_body_exprs, 7}}).

yeccgoto_clause_body_exprs(132 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_136(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_clause_guard, 7}}).

-compile({nowarn_unused_function, {yeccgoto_clause_guard, 7}}).

yeccgoto_clause_guard(9, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_91(538, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_clause_guard(82, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_91(91, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_clause_guard(287, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_91(312, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_clause_guard(292, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_91(305, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_clause_guard(309, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_91(310, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_clause_guard(352, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_91(375, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_clause_guard(358, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_91(359, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_comp_op, 7}}).

-compile({nowarn_unused_function, {yeccgoto_comp_op, 7}}).

yeccgoto_comp_op(18, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_15(295, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_comp_op(58, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(90, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_comp_op(82, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(90, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_comp_op(126, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(90, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_comp_op(127, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(90, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_comp_op(128, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(90, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_comp_op(129, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(90, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_comp_op(130, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(90, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_comp_op(282, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(90, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_comp_op(283, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(90, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_comp_op(284, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(90, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_comp_op(287, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_15(295, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_comp_op(291, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_15(295, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_comp_op(299, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_15(295, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_comp_op(301, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_15(295, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_comp_op(302, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_15(295, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_comp_op(303, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_15(295, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_comp_op(304, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_15(295, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_comp_op(308, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_15(295, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_comp_op(324, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(90, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_comp_op(329, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(90, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_comp_op(334, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(90, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_comp_op(337, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(90, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_comp_op(377, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(90, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_comp_op(378, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(90, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_comp_op(384, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(90, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_comp_op(396, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(90, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_comp_op(400, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(90, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_comp_op(401, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(90, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_comp_op(404, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(90, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_comp_op(405, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(90, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_comp_op(414, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(90, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_comp_op(415, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(90, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_comp_op(417, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(90, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_comp_op(420, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(90, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_comp_op(422, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(90, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_comp_op(434, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(90, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_comp_op(439, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(90, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_comp_op(461, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(90, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_comp_op(485, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(90, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_comp_op(487, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(90, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_comp_op(497, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(90, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_comp_op(513, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(90, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_comp_op(517, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(90, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_comp_op(526, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(90, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_comp_op(527, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_15(295, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_comp_op(537, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_15(295, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_comp_op(676, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(90, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_comp_op(680, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(90, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_comp_op(689, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(90, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_cr_clause, 7}}).

-compile({nowarn_unused_function, {yeccgoto_cr_clause, 7}}).

yeccgoto_cr_clause(73, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_84(84, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_cr_clause(81, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_84(84, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_cr_clause(85, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_84(84, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_cr_clause(341, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_84(84, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_cr_clause(379, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_84(84, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_cr_clauses, 7}}).

-compile({nowarn_unused_function, {yeccgoto_cr_clauses, 7}}).

yeccgoto_cr_clauses(73, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_322(322, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_cr_clauses(81, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_83(83, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_cr_clauses(85 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_86(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_cr_clauses(341, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_343(343, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_cr_clauses(379, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_380(380, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_expr, 7}}).

-compile({nowarn_unused_function, {yeccgoto_expr, 7}}).

yeccgoto_expr(29, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_422(526, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr(39, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_58(58, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr(45 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_517(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr(64, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_461(461, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr(66, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_384(384, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr(67, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_58(58, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr(68, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_378(378, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr(69, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_377(377, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr(71, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_58(58, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr(72, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_334(334, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr(73, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_82(82, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr(74, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_58(58, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr(79, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_58(58, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr(81, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_82(82, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr(85, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_82(82, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr(88 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_284(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr(89, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_283(283, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr(90, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_282(282, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr(92, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_130(130, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr(93, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_129(129, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr(102, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_128(128, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr(110, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_127(127, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr(118, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_126(126, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr(120, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_58(58, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr(124, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_58(58, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr(132, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_58(58, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr(133, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_58(58, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr(316, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_58(58, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr(323, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_324(324, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr(327, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_324(329, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr(335, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_334(334, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr(336, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_337(337, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr(339, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_334(334, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr(341, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_82(82, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr(349, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_58(58, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr(379, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_82(82, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr(387, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_422(422, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr(389, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_420(420, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr(390, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_396(396, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr(398, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_401(401, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr(399, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_400(400, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr(402, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_405(405, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr(403, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_404(404, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr(406, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_396(396, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr(407, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_396(396, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr(412, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_415(415, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr(413, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_414(414, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr(416, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_417(417, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr(418, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_396(396, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr(431, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_434(434, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr(435, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_396(396, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr(438, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_439(439, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr(457, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_396(396, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr(465, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_434(434, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr(472, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_434(434, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr(484, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_485(485, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr(486, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_487(487, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr(492, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_58(58, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr(496, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_497(497, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr(502, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_434(434, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr(507, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_58(58, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr(512, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_513(513, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr(540, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_676(676, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr(678, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_680(680, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr(681, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_58(58, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr(686, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_689(689, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr(690, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_689(689, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr(694, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_689(689, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr(700, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_58(58, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_expr_max, 7}}).

-compile({nowarn_unused_function, {yeccgoto_expr_max, 7}}).

yeccgoto_expr_max(28 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_441(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(29, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_57(57, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(39, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_57(57, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(45, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_57(57, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(64, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_57(57, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(65, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_425(425, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(66, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_57(57, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(67, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_57(57, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(68, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_57(57, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(69, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_57(57, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(71, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_57(57, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(72, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_57(57, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(73, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_57(57, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(74, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_57(57, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(79, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_57(57, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(81, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_57(57, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(85, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_57(57, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(88, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_57(57, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(89, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_57(57, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(90, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_57(57, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(92, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_57(57, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(93, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_57(57, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(102, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_57(57, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(110, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_57(57, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(118, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_57(57, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(120, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_57(57, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(124, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_57(57, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(132, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_57(57, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(133, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_57(57, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(316, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_57(57, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(323, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_57(57, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(327, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_57(57, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(335, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_57(57, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(336, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_57(57, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(339, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_57(57, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(341, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_57(57, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(349, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_57(57, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(379, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_57(57, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(387, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_57(57, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(389, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_57(57, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(390, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_57(57, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(398, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_57(57, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(399, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_57(57, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(402, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_57(57, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(403, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_57(57, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(406, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_57(57, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(407, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_57(57, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(412, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_57(57, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(413, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_57(57, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(416, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_57(57, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(418, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_57(57, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(424 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_460(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(431, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_57(57, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(435, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_57(57, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(438, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_57(57, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(440 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_441(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(445 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_446(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(457, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_57(57, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(465, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_57(57, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(472, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_57(57, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(484, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_57(57, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(486, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_57(57, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(492, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_57(57, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(495 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_499(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(496, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_57(57, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(502, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_57(57, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(507, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_57(57, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(512, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_57(57, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(540, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_57(57, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(678, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_57(57, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(681, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_57(57, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(686, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_57(57, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(690, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_57(57, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(694, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_57(57, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_max(700, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_57(57, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_expr_remote, 7}}).

-compile({nowarn_unused_function, {yeccgoto_expr_remote, 7}}).

yeccgoto_expr_remote(29, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_56(56, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_remote(39, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_56(56, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_remote(45, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_56(56, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_remote(64, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_56(56, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_remote(66, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_56(56, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_remote(67, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_56(56, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_remote(68, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_56(56, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_remote(69, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_56(56, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_remote(71, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_56(56, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_remote(72, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_56(56, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_remote(73, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_56(56, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_remote(74, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_56(56, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_remote(79, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_56(56, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_remote(81, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_56(56, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_remote(85, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_56(56, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_remote(88, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_56(56, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_remote(89, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_56(56, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_remote(90, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_56(56, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_remote(92, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_56(56, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_remote(93, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_56(56, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_remote(102, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_56(56, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_remote(110, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_56(56, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_remote(118, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_56(56, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_remote(120, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_56(56, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_remote(124, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_56(56, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_remote(132, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_56(56, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_remote(133, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_56(56, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_remote(316, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_56(56, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_remote(323, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_56(56, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_remote(327, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_56(56, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_remote(335, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_56(56, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_remote(336, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_56(56, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_remote(339, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_56(56, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_remote(341, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_56(56, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_remote(349, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_56(56, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_remote(379, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_56(56, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_remote(387, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_56(56, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_remote(389, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_56(56, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_remote(390, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_56(56, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_remote(398, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_56(56, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_remote(399, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_56(56, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_remote(402, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_56(56, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_remote(403, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_56(56, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_remote(406, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_56(56, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_remote(407, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_56(56, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_remote(412, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_56(56, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_remote(413, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_56(56, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_remote(416, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_56(56, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_remote(418, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_56(56, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_remote(431, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_56(56, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_remote(435, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_56(56, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_remote(438, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_56(56, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_remote(457, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_56(56, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_remote(465, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_56(56, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_remote(472, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_56(56, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_remote(484, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_56(56, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_remote(486, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_56(56, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_remote(492, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_56(56, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_remote(496, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_56(56, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_remote(502, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_56(56, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_remote(507, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_56(56, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_remote(512, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_56(56, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_remote(540, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_56(56, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_remote(678, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_56(56, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_remote(681, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_56(56, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_remote(686, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_56(56, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_remote(690, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_56(56, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_remote(694, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_56(56, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_expr_remote(700, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_56(56, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_exprs, 7}}).

-compile({nowarn_unused_function, {yeccgoto_exprs, 7}}).

yeccgoto_exprs(39, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_55(55, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_exprs(67, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_382(382, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_exprs(71, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_123(123, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_exprs(74, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_77(77, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_exprs(79, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_320(320, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_exprs(120, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_123(123, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_exprs(124, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_123(123, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_exprs(132 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_135(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_exprs(133 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_281(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_exprs(316, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_318(318, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_exprs(349, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_123(123, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_exprs(492 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_493(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_exprs(507, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_508(508, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_exprs(681, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_685(685, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_exprs(686, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_55(55, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_exprs(690 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_493(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_exprs(694 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_696(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_exprs(700 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_701(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_field_type, 7}}).

-compile({nowarn_unused_function, {yeccgoto_field_type, 7}}).

yeccgoto_field_type(640, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_642(642, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_field_type(647, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_642(642, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_field_types, 7}}).

-compile({nowarn_unused_function, {yeccgoto_field_types, 7}}).

yeccgoto_field_types(640, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_641(641, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_field_types(647 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_648(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_form, 7}}).

-compile({nowarn_unused_function, {yeccgoto_form, 7}}).

yeccgoto_form(0, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_4(4, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_fun_clause, 7}}).

-compile({nowarn_unused_function, {yeccgoto_fun_clause, 7}}).

yeccgoto_fun_clause(70, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_354(354, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_clause(371, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_354(354, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_fun_clauses, 7}}).

-compile({nowarn_unused_function, {yeccgoto_fun_clauses, 7}}).

yeccgoto_fun_clauses(70, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_353(353, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_clauses(371 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_372(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_fun_expr, 7}}).

-compile({nowarn_unused_function, {yeccgoto_fun_expr, 7}}).

yeccgoto_fun_expr(28 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(29 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(39 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(45 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(64 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(65 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(66 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(67 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(68 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(69 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(71 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(72 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(73 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(74 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(79 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(81 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(85 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(88 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(89 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(90 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(92 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(93 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(102 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(110 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(118 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(120 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(124 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(132 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(133 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(316 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(323 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(327 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(335 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(336 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(339 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(341 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(349 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(379 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(387 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(389 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(390 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(398 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(399 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(402 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(403 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(406 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(407 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(412 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(413 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(416 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(418 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(424 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(431 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(435 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(438 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(440 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(445 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(457 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(465 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(472 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(484 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(486 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(492 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(495 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(496 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(502 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(507 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(512 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(540 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(678 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(681 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(686 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(690 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(694 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_expr(700 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_54(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_fun_type, 7}}).

-compile({nowarn_unused_function, {yeccgoto_fun_type, 7}}).

yeccgoto_fun_type(544, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_552(552, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_type(549, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_552(552, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_type(576, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_577(577, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_fun_type(670, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_552(552, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_function, 7}}).

-compile({nowarn_unused_function, {yeccgoto_function, 7}}).

yeccgoto_function(0, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_3(3, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_function_call, 7}}).

-compile({nowarn_unused_function, {yeccgoto_function_call, 7}}).

yeccgoto_function_call(29 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_function_call(39 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_function_call(45 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_function_call(64 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_function_call(66 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_function_call(67 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_function_call(68 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_function_call(69 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_function_call(71 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_function_call(72 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_function_call(73 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_function_call(74 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_function_call(79 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_function_call(81 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_function_call(85 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_function_call(88 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_function_call(89 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_function_call(90 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_function_call(92 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_function_call(93 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_function_call(102 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_function_call(110 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_function_call(118 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_function_call(120 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_function_call(124 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_function_call(132 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_function_call(133 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_function_call(316 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_function_call(323 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_function_call(327 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_function_call(335 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_function_call(336 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_function_call(339 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_function_call(341 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_function_call(349 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_function_call(379 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_function_call(387 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_function_call(389 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_function_call(390 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_function_call(398 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_function_call(399 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_function_call(402 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_function_call(403 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_function_call(406 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_function_call(407 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_function_call(412 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_function_call(413 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_function_call(416 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_function_call(418 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_function_call(431 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_function_call(435 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_function_call(438 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_function_call(457 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_function_call(465 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_function_call(472 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_function_call(484 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_function_call(486 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_function_call(492 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_function_call(496 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_function_call(502 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_function_call(507 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_function_call(512 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_function_call(540 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_function_call(678 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_function_call(681 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_function_call(686 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_function_call(690 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_function_call(694 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_function_call(700 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_53(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_function_clause, 7}}).

-compile({nowarn_unused_function, {yeccgoto_function_clause, 7}}).

yeccgoto_function_clause(0, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_2(2, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_function_clause(704, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_2(2, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_function_clauses, 7}}).

-compile({nowarn_unused_function, {yeccgoto_function_clauses, 7}}).

yeccgoto_function_clauses(0 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_1(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_function_clauses(704 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_705(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_guard, 7}}).

-compile({nowarn_unused_function, {yeccgoto_guard, 7}}).

yeccgoto_guard(71, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_91(347, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_guard(120 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_122(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_guard(124 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_125(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_guard(349, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_91(347, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_if_clause, 7}}).

-compile({nowarn_unused_function, {yeccgoto_if_clause, 7}}).

yeccgoto_if_clause(71, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_346(346, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_clause(349, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_346(346, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_if_clauses, 7}}).

-compile({nowarn_unused_function, {yeccgoto_if_clauses, 7}}).

yeccgoto_if_clauses(71, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_345(345, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_clauses(349 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_350(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_if_expr, 7}}).

-compile({nowarn_unused_function, {yeccgoto_if_expr, 7}}).

yeccgoto_if_expr(28 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(29 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(39 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(45 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(64 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(65 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(66 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(67 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(68 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(69 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(71 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(72 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(73 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(74 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(79 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(81 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(85 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(88 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(89 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(90 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(92 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(93 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(102 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(110 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(118 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(120 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(124 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(132 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(133 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(316 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(323 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(327 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(335 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(336 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(339 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(341 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(349 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(379 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(387 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(389 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(390 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(398 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(399 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(402 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(403 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(406 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(407 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(412 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(413 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(416 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(418 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(424 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(431 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(435 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(438 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(440 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(445 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(457 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(465 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(472 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(484 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(486 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(492 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(495 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(496 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(502 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(507 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(512 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(540 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(678 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(681 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(686 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(690 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(694 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_if_expr(700 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_52(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_index_expr, 7}}).

-compile({nowarn_unused_function, {yeccgoto_index_expr, 7}}).

yeccgoto_index_expr(29, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_51(51, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_index_expr(39, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_51(51, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_index_expr(45, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_51(51, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_index_expr(64, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_51(51, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_index_expr(66, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_51(51, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_index_expr(67, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_51(51, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_index_expr(68, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_51(51, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_index_expr(69, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_51(51, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_index_expr(71, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_51(51, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_index_expr(72, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_51(51, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_index_expr(73, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_51(51, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_index_expr(74, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_51(51, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_index_expr(79, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_51(51, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_index_expr(81, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_51(51, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_index_expr(85, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_51(51, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_index_expr(88, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_51(51, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_index_expr(89, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_51(51, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_index_expr(90, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_51(51, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_index_expr(92, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_51(51, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_index_expr(93, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_51(51, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_index_expr(102, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_51(51, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_index_expr(110, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_51(51, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_index_expr(118, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_51(51, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_index_expr(120, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_51(51, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_index_expr(124, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_51(51, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_index_expr(132, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_51(51, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_index_expr(133, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_51(51, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_index_expr(316, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_51(51, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_index_expr(323, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_51(51, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_index_expr(327, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_51(51, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_index_expr(335, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_51(51, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_index_expr(336, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_51(51, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_index_expr(339, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_51(51, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_index_expr(341, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_51(51, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_index_expr(349, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_51(51, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_index_expr(379, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_51(51, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_index_expr(387, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_51(51, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_index_expr(389, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_51(51, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_index_expr(390, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_51(51, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_index_expr(398, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_51(51, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_index_expr(399, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_51(51, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_index_expr(402, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_51(51, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_index_expr(403, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_51(51, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_index_expr(406, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_51(51, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_index_expr(407, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_51(51, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_index_expr(412, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_51(51, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_index_expr(413, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_51(51, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_index_expr(416, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_51(51, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_index_expr(418, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_51(51, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_index_expr(431, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_51(51, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_index_expr(435, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_51(51, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_index_expr(438, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_51(51, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_index_expr(457, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_51(51, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_index_expr(465, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_51(51, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_index_expr(472, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_51(51, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_index_expr(484, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_51(51, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_index_expr(486, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_51(51, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_index_expr(492, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_51(51, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_index_expr(496, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_51(51, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_index_expr(502, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_51(51, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_index_expr(507, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_51(51, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_index_expr(512, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_51(51, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_index_expr(540, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_51(51, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_index_expr(678, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_51(51, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_index_expr(681, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_51(51, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_index_expr(686, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_51(51, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_index_expr(690, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_51(51, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_index_expr(694, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_51(51, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_index_expr(700, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_51(51, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_integer_or_var, 7}}).

-compile({nowarn_unused_function, {yeccgoto_integer_or_var, 7}}).

yeccgoto_integer_or_var(367 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_368(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_lc_expr, 7}}).

-compile({nowarn_unused_function, {yeccgoto_lc_expr, 7}}).

yeccgoto_lc_expr(390, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_395(395, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_lc_expr(406, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_410(410, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_lc_expr(407, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_395(395, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_lc_expr(418, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_395(395, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_lc_expr(435, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_395(395, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_lc_expr(457, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_395(395, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_lc_exprs, 7}}).

-compile({nowarn_unused_function, {yeccgoto_lc_exprs, 7}}).

yeccgoto_lc_exprs(390, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_394(394, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_lc_exprs(407 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_408(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_lc_exprs(418 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_419(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_lc_exprs(435, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_436(436, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_lc_exprs(457, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_458(458, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_list, 7}}).

-compile({nowarn_unused_function, {yeccgoto_list, 7}}).

yeccgoto_list(10 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_20(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(15 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_20(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(24 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_20(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(28 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(29 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(39 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(45 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(64 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(65 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(66 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(67 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(68 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(69 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(71 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(72 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(73 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(74 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(79 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(80 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_20(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(81 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(85 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(88 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(89 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(90 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(92 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(93 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(102 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(110 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(118 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(120 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(124 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(132 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(133 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(290 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_20(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(293 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_20(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(294 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_20(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(295 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_20(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(296 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_20(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(298 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_20(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(307 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_20(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(314 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_20(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(316 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(323 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(327 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(335 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(336 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(339 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(341 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(349 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(379 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(387 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(389 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(390 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(398 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(399 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(402 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(403 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(406 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(407 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(412 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(413 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(416 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(418 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(424 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(431 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(435 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(438 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(440 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(445 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(457 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(465 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(472 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(484 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(486 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(492 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(495 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(496 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(502 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(507 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(512 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(534 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_20(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(540 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(678 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(681 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(686 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(690 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(694 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list(700 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_50(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_list_comprehension, 7}}).

-compile({nowarn_unused_function, {yeccgoto_list_comprehension, 7}}).

yeccgoto_list_comprehension(28 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(29 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(39 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(45 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(64 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(65 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(66 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(67 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(68 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(69 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(71 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(72 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(73 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(74 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(79 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(81 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(85 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(88 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(89 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(90 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(92 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(93 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(102 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(110 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(118 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(120 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(124 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(132 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(133 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(316 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(323 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(327 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(335 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(336 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(339 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(341 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(349 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(379 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(387 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(389 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(390 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(398 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(399 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(402 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(403 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(406 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(407 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(412 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(413 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(416 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(418 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(424 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(431 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(435 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(438 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(440 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(445 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(457 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(465 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(472 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(484 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(486 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(492 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(495 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(496 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(502 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(507 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(512 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(540 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(678 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(681 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(686 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(690 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(694 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_comprehension(700 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_49(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_list_op, 7}}).

-compile({nowarn_unused_function, {yeccgoto_list_op, 7}}).

yeccgoto_list_op(18, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_15(294, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_op(58, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(89, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_op(82, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(89, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_op(126, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(89, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_op(127, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(89, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_op(128, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(89, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_op(129, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(89, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_op(130, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(89, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_op(282, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(89, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_op(283, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(89, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_op(284, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(89, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_op(287, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_15(294, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_op(291, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_15(294, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_op(299, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_15(294, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_op(301, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_15(294, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_op(302, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_15(294, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_op(303, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_15(294, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_op(304, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_15(294, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_op(308, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_15(294, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_op(324, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(89, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_op(329, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(89, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_op(334, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(89, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_op(337, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(89, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_op(377, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(89, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_op(378, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(89, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_op(384, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(89, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_op(396, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(89, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_op(400, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(89, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_op(401, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(89, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_op(404, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(89, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_op(405, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(89, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_op(414, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(89, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_op(415, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(89, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_op(417, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(89, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_op(420, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(89, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_op(422, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(89, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_op(434, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(89, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_op(439, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(89, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_op(461, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(89, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_op(485, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(89, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_op(487, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(89, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_op(497, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(89, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_op(513, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(89, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_op(517, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(89, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_op(526, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(89, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_op(527, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_15(294, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_op(537, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_15(294, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_op(676, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(89, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_op(680, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(89, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_list_op(689, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(89, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_map_comprehension, 7}}).

-compile({nowarn_unused_function, {yeccgoto_map_comprehension, 7}}).

yeccgoto_map_comprehension(28 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(29 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(39 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(45 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(64 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(65 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(66 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(67 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(68 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(69 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(71 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(72 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(73 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(74 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(79 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(81 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(85 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(88 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(89 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(90 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(92 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(93 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(102 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(110 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(118 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(120 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(124 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(132 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(133 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(316 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(323 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(327 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(335 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(336 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(339 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(341 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(349 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(379 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(387 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(389 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(390 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(398 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(399 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(402 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(403 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(406 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(407 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(412 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(413 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(416 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(418 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(424 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(431 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(435 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(438 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(440 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(445 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(457 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(465 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(472 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(484 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(486 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(492 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(495 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(496 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(502 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(507 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(512 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(540 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(678 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(681 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(686 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(690 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(694 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_comprehension(700 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_48(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_map_expr, 7}}).

-compile({nowarn_unused_function, {yeccgoto_map_expr, 7}}).

yeccgoto_map_expr(29, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_47(47, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_expr(39, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_47(47, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_expr(45, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_47(47, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_expr(64, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_47(47, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_expr(66, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_47(47, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_expr(67, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_47(47, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_expr(68, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_47(47, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_expr(69, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_47(47, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_expr(71, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_47(47, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_expr(72, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_47(47, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_expr(73, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_47(47, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_expr(74, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_47(47, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_expr(79, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_47(47, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_expr(81, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_47(47, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_expr(85, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_47(47, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_expr(88, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_47(47, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_expr(89, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_47(47, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_expr(90, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_47(47, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_expr(92, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_47(47, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_expr(93, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_47(47, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_expr(102, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_47(47, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_expr(110, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_47(47, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_expr(118, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_47(47, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_expr(120, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_47(47, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_expr(124, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_47(47, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_expr(132, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_47(47, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_expr(133, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_47(47, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_expr(316, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_47(47, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_expr(323, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_47(47, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_expr(327, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_47(47, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_expr(335, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_47(47, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_expr(336, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_47(47, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_expr(339, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_47(47, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_expr(341, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_47(47, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_expr(349, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_47(47, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_expr(379, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_47(47, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_expr(387, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_47(47, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_expr(389, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_47(47, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_expr(390, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_47(47, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_expr(398, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_47(47, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_expr(399, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_47(47, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_expr(402, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_47(47, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_expr(403, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_47(47, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_expr(406, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_47(47, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_expr(407, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_47(47, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_expr(412, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_47(47, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_expr(413, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_47(47, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_expr(416, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_47(47, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_expr(418, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_47(47, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_expr(431, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_47(47, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_expr(435, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_47(47, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_expr(438, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_47(47, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_expr(457, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_47(47, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_expr(465, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_47(47, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_expr(472, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_47(47, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_expr(484, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_47(47, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_expr(486, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_47(47, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_expr(492, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_47(47, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_expr(496, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_47(47, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_expr(502, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_47(47, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_expr(507, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_47(47, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_expr(512, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_47(47, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_expr(540, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_47(47, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_expr(678, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_47(47, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_expr(681, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_47(47, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_expr(686, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_47(47, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_expr(690, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_47(47, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_expr(694, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_47(47, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_expr(700, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_47(47, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_map_field, 7}}).

-compile({nowarn_unused_function, {yeccgoto_map_field, 7}}).

yeccgoto_map_field(465, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_470(470, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_field(472, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_470(470, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_field(502, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_470(470, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_map_field_assoc, 7}}).

-compile({nowarn_unused_function, {yeccgoto_map_field_assoc, 7}}).

yeccgoto_map_field_assoc(431, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_433(433, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_field_assoc(465, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_469(469, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_field_assoc(472 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_474(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_field_assoc(502 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_474(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_map_field_exact, 7}}).

-compile({nowarn_unused_function, {yeccgoto_map_field_exact, 7}}).

yeccgoto_map_field_exact(390, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_393(393, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_field_exact(406, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_393(393, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_field_exact(407, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_393(393, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_field_exact(418, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_393(393, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_field_exact(435, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_393(393, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_field_exact(457, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_393(393, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_field_exact(465 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_468(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_field_exact(472 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_468(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_field_exact(502 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_468(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_map_fields, 7}}).

-compile({nowarn_unused_function, {yeccgoto_map_fields, 7}}).

yeccgoto_map_fields(465, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_467(467, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_fields(472 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_473(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_fields(502, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_467(467, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_map_key, 7}}).

-compile({nowarn_unused_function, {yeccgoto_map_key, 7}}).

yeccgoto_map_key(390, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_392(392, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_key(406, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_392(392, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_key(407, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_392(392, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_key(418, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_392(392, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_key(431, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_432(432, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_key(435, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_392(392, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_key(457, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_392(392, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_key(465, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_466(466, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_key(472, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_466(466, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_key(502, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_466(466, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_map_pair_type, 7}}).

-compile({nowarn_unused_function, {yeccgoto_map_pair_type, 7}}).

yeccgoto_map_pair_type(628, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_631(631, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_pair_type(633, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_631(631, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_map_pair_types, 7}}).

-compile({nowarn_unused_function, {yeccgoto_map_pair_types, 7}}).

yeccgoto_map_pair_types(628, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_630(630, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_pair_types(633 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_634(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_map_pat_expr, 7}}).

-compile({nowarn_unused_function, {yeccgoto_map_pat_expr, 7}}).

yeccgoto_map_pat_expr(10 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_19(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_pat_expr(15 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_19(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_pat_expr(24 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_19(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_pat_expr(80 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_19(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_pat_expr(290 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_19(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_pat_expr(293 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_19(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_pat_expr(294 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_19(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_pat_expr(295 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_19(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_pat_expr(296 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_19(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_pat_expr(298 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_19(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_pat_expr(307 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_19(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_pat_expr(314 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_19(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_pat_expr(534 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_19(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_map_tuple, 7}}).

-compile({nowarn_unused_function, {yeccgoto_map_tuple, 7}}).

yeccgoto_map_tuple(23 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_529(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_tuple(63 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_463(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_tuple(494 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_500(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_map_tuple(515 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_516(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_maybe_expr, 7}}).

-compile({nowarn_unused_function, {yeccgoto_maybe_expr, 7}}).

yeccgoto_maybe_expr(28 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(29 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(39 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(45 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(64 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(65 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(66 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(67 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(68 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(69 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(71 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(72 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(73 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(74 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(79 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(81 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(85 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(88 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(89 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(90 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(92 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(93 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(102 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(110 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(118 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(120 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(124 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(132 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(133 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(316 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(323 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(327 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(335 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(336 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(339 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(341 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(349 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(379 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(387 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(389 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(390 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(398 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(399 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(402 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(403 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(406 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(407 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(412 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(413 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(416 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(418 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(424 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(431 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(435 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(438 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(440 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(445 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(457 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(465 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(472 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(484 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(486 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(492 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(495 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(496 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(502 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(507 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(512 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(540 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(678 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(681 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(686 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(690 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(694 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_expr(700 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_46(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_maybe_match, 7}}).

-compile({nowarn_unused_function, {yeccgoto_maybe_match, 7}}).

yeccgoto_maybe_match(72, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_333(333, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_match(335, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_333(333, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_match(339, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_333(333, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_maybe_match_exprs, 7}}).

-compile({nowarn_unused_function, {yeccgoto_maybe_match_exprs, 7}}).

yeccgoto_maybe_match_exprs(72, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_332(332, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_match_exprs(335 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_338(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_maybe_match_exprs(339 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_340(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_mult_op, 7}}).

-compile({nowarn_unused_function, {yeccgoto_mult_op, 7}}).

yeccgoto_mult_op(18, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_15(293, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_mult_op(58, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(88, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_mult_op(82, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(88, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_mult_op(126, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(88, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_mult_op(127, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(88, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_mult_op(128, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(88, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_mult_op(129, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(88, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_mult_op(130, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(88, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_mult_op(282, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(88, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_mult_op(283, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(88, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_mult_op(284, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(88, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_mult_op(287, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_15(293, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_mult_op(291, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_15(293, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_mult_op(299, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_15(293, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_mult_op(301, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_15(293, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_mult_op(302, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_15(293, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_mult_op(303, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_15(293, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_mult_op(304, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_15(293, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_mult_op(308, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_15(293, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_mult_op(324, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(88, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_mult_op(329, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(88, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_mult_op(334, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(88, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_mult_op(337, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(88, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_mult_op(377, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(88, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_mult_op(378, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(88, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_mult_op(384, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(88, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_mult_op(396, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(88, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_mult_op(400, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(88, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_mult_op(401, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(88, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_mult_op(404, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(88, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_mult_op(405, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(88, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_mult_op(414, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(88, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_mult_op(415, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(88, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_mult_op(417, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(88, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_mult_op(420, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(88, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_mult_op(422, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(88, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_mult_op(434, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(88, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_mult_op(439, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(88, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_mult_op(461, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(88, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_mult_op(485, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(88, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_mult_op(487, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(88, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_mult_op(497, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(88, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_mult_op(513, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(88, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_mult_op(517, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(88, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_mult_op(526, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(88, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_mult_op(527, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_15(293, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_mult_op(537, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_15(293, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_mult_op(554, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_557(606, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_mult_op(601, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_557(606, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_mult_op(604, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_557(606, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_mult_op(609, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_557(606, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_mult_op(610, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_557(606, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_mult_op(611, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_557(606, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_mult_op(650, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_557(606, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_mult_op(676, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(88, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_mult_op(680, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(88, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_mult_op(689, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(88, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_opt_bit_size_expr, 7}}).

-compile({nowarn_unused_function, {yeccgoto_opt_bit_size_expr, 7}}).

yeccgoto_opt_bit_size_expr(426, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_444(444, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_opt_bit_type_list, 7}}).

-compile({nowarn_unused_function, {yeccgoto_opt_bit_type_list, 7}}).

yeccgoto_opt_bit_type_list(444 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_448(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_pat_argument_list, 7}}).

-compile({nowarn_unused_function, {yeccgoto_pat_argument_list, 7}}).

yeccgoto_pat_argument_list(7 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_8(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_pat_argument_list(70, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_352(352, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_pat_argument_list(357, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_358(358, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_pat_argument_list(371, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_352(352, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_pat_argument_list(373, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_358(358, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_pat_expr, 7}}).

-compile({nowarn_unused_function, {yeccgoto_pat_expr, 7}}).

yeccgoto_pat_expr(10, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_18(18, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_pat_expr(15 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_537(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_pat_expr(24, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_527(527, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_pat_expr(80, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_287(287, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_pat_expr(290, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_291(291, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_pat_expr(293 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_304(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_pat_expr(294, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_303(303, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_pat_expr(295, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_302(302, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_pat_expr(296, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_301(301, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_pat_expr(298, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_299(299, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_pat_expr(307, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_308(308, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_pat_expr(314, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_287(287, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_pat_expr(534, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_18(18, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_pat_expr_max, 7}}).

-compile({nowarn_unused_function, {yeccgoto_pat_expr_max, 7}}).

yeccgoto_pat_expr_max(10 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_17(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_pat_expr_max(15 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_17(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_pat_expr_max(24 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_17(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_pat_expr_max(80 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_17(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_pat_expr_max(290 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_17(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_pat_expr_max(293 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_17(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_pat_expr_max(294 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_17(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_pat_expr_max(295 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_17(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_pat_expr_max(296 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_17(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_pat_expr_max(298 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_17(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_pat_expr_max(307 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_17(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_pat_expr_max(314 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_17(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_pat_expr_max(534 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_17(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_pat_exprs, 7}}).

-compile({nowarn_unused_function, {yeccgoto_pat_exprs, 7}}).

yeccgoto_pat_exprs(10, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_16(16, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_pat_exprs(534 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_535(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_prefix_op, 7}}).

-compile({nowarn_unused_function, {yeccgoto_prefix_op, 7}}).

yeccgoto_prefix_op(10, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_15(15, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(15, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_15(15, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(24, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_15(15, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(28, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_424(424, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(29, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(45, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(39, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(45, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(45, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(45, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(64, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(45, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(65, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_424(424, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(66, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(45, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(67, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(45, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(68, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(45, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(69, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(45, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(71, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(45, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(72, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(45, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(73, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(45, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(74, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(45, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(79, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(45, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(80, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_15(15, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(81, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(45, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(85, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(45, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(88, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(45, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(89, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(45, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(90, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(45, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(92, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(45, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(93, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(45, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(102, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(45, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(110, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(45, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(118, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(45, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(120, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(45, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(124, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(45, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(132, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(45, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(133, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(45, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(290, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_15(15, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(293, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_15(15, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(294, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_15(15, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(295, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_15(15, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(296, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_15(15, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(298, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_15(15, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(307, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_15(15, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(314, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_15(15, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(316, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(45, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(323, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(45, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(327, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(45, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(335, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(45, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(336, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(45, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(339, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(45, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(341, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(45, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(349, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(45, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(379, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(45, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(387, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(45, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(389, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(45, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(390, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(45, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(398, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(45, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(399, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(45, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(402, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(45, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(403, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(45, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(406, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(45, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(407, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(45, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(412, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(45, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(413, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(45, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(416, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(45, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(418, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(45, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(431, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(45, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(435, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(45, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(438, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(45, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(440, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_424(424, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(457, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(45, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(465, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(45, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(472, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(45, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(484, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(45, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(486, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(45, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(492, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(45, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(496, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(45, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(502, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(45, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(507, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(45, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(512, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(45, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(534, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_15(15, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(540, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(45, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(553, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_557(557, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(557, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_557(557, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(560, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_557(557, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(564, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_557(557, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(570, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_557(557, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(574, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_557(557, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(580, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_557(557, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(583, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_557(557, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(600, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_557(557, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(603, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_557(557, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(606, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_557(557, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(607, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_557(557, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(608, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_557(557, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(621, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_557(557, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(623, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_557(557, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(628, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_557(557, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(633, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_557(557, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(636, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_557(557, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(637, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_557(557, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(645, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_557(557, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(651, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_557(557, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(654, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_557(557, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(656, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_557(557, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(663, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_557(557, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(665, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_557(557, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(678, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(45, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(681, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(45, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(682, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_557(557, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(686, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(45, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(690, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(45, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(691, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_557(557, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(694, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(45, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_prefix_op(700, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(45, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_receive_expr, 7}}).

-compile({nowarn_unused_function, {yeccgoto_receive_expr, 7}}).

yeccgoto_receive_expr(28 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(29 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(39 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(45 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(64 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(65 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(66 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(67 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(68 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(69 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(71 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(72 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(73 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(74 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(79 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(81 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(85 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(88 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(89 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(90 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(92 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(93 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(102 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(110 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(118 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(120 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(124 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(132 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(133 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(316 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(323 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(327 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(335 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(336 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(339 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(341 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(349 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(379 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(387 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(389 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(390 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(398 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(399 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(402 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(403 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(406 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(407 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(412 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(413 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(416 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(418 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(424 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(431 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(435 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(438 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(440 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(445 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(457 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(465 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(472 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(484 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(486 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(492 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(495 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(496 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(502 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(507 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(512 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(540 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(678 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(681 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(686 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(690 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(694 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_receive_expr(700 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_44(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_record_expr, 7}}).

-compile({nowarn_unused_function, {yeccgoto_record_expr, 7}}).

yeccgoto_record_expr(29, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_43(43, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_expr(39, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_43(43, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_expr(45, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_43(43, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_expr(64, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_43(43, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_expr(66, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_43(43, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_expr(67, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_43(43, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_expr(68, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_43(43, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_expr(69, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_43(43, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_expr(71, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_43(43, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_expr(72, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_43(43, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_expr(73, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_43(43, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_expr(74, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_43(43, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_expr(79, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_43(43, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_expr(81, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_43(43, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_expr(85, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_43(43, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_expr(88, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_43(43, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_expr(89, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_43(43, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_expr(90, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_43(43, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_expr(92, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_43(43, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_expr(93, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_43(43, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_expr(102, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_43(43, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_expr(110, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_43(43, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_expr(118, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_43(43, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_expr(120, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_43(43, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_expr(124, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_43(43, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_expr(132, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_43(43, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_expr(133, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_43(43, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_expr(316, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_43(43, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_expr(323, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_43(43, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_expr(327, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_43(43, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_expr(335, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_43(43, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_expr(336, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_43(43, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_expr(339, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_43(43, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_expr(341, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_43(43, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_expr(349, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_43(43, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_expr(379, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_43(43, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_expr(387, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_43(43, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_expr(389, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_43(43, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_expr(390, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_43(43, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_expr(398, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_43(43, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_expr(399, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_43(43, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_expr(402, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_43(43, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_expr(403, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_43(43, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_expr(406, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_43(43, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_expr(407, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_43(43, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_expr(412, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_43(43, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_expr(413, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_43(43, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_expr(416, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_43(43, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_expr(418, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_43(43, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_expr(431, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_43(43, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_expr(435, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_43(43, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_expr(438, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_43(43, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_expr(457, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_43(43, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_expr(465, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_43(43, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_expr(472, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_43(43, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_expr(484, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_43(43, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_expr(486, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_43(43, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_expr(492, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_43(43, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_expr(496, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_43(43, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_expr(502, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_43(43, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_expr(507, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_43(43, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_expr(512, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_43(43, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_expr(540, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_43(43, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_expr(678, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_43(43, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_expr(681, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_43(43, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_expr(686, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_43(43, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_expr(690, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_43(43, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_expr(694, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_43(43, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_expr(700, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_43(43, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_record_field, 7}}).

-compile({nowarn_unused_function, {yeccgoto_record_field, 7}}).

yeccgoto_record_field(478, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_480(480, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_field(488, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_480(480, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_record_fields, 7}}).

-compile({nowarn_unused_function, {yeccgoto_record_fields, 7}}).

yeccgoto_record_fields(478, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_479(479, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_fields(488 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_489(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_record_pat_expr, 7}}).

-compile({nowarn_unused_function, {yeccgoto_record_pat_expr, 7}}).

yeccgoto_record_pat_expr(10 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_14(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_pat_expr(15 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_14(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_pat_expr(24 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_14(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_pat_expr(80 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_14(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_pat_expr(290 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_14(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_pat_expr(293 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_14(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_pat_expr(294 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_14(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_pat_expr(295 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_14(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_pat_expr(296 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_14(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_pat_expr(298 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_14(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_pat_expr(307 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_14(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_pat_expr(314 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_14(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_pat_expr(534 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_14(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_record_tuple, 7}}).

-compile({nowarn_unused_function, {yeccgoto_record_tuple, 7}}).

yeccgoto_record_tuple(464 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_476(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_tuple(501 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_503(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_tuple(519 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_520(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_record_tuple(530 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_531(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_sigil, 7}}).

-compile({nowarn_unused_function, {yeccgoto_sigil, 7}}).

yeccgoto_sigil(10 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_13(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(15 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_13(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(24 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_13(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(28 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(29 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(39 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(45 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(64 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(65 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(66 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(67 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(68 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(69 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(71 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(72 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(73 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(74 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(79 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(80 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_13(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(81 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(85 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(88 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(89 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(90 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(92 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(93 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(102 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(110 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(118 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(120 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(124 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(132 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(133 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(290 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_13(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(293 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_13(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(294 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_13(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(295 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_13(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(296 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_13(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(298 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_13(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(307 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_13(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(314 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_13(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(316 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(323 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(327 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(335 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(336 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(339 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(341 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(349 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(379 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(387 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(389 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(390 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(398 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(399 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(402 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(403 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(406 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(407 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(412 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(413 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(416 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(418 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(424 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(431 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(435 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(438 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(440 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(445 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(457 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(465 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(472 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(484 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(486 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(492 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(495 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(496 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(502 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(507 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(512 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(534 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_13(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(540 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(678 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(681 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(686 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(690 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(694 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_sigil(700 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_42(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_spec_fun, 7}}).

-compile({nowarn_unused_function, {yeccgoto_spec_fun, 7}}).

yeccgoto_spec_fun(541, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_544(544, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_spec_fun(542, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_544(544, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_spec_fun(545, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_544(549, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_ssa_check_anno, 7}}).

-compile({nowarn_unused_function, {yeccgoto_ssa_check_anno, 7}}).

yeccgoto_ssa_check_anno(146, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_251(251, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_ssa_check_anno_clause, 7}}).

-compile({nowarn_unused_function, {yeccgoto_ssa_check_anno_clause, 7}}).

yeccgoto_ssa_check_anno_clause(253, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_255(255, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_ssa_check_anno_clause(259, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_255(255, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_ssa_check_anno_clauses, 7}}).

-compile({nowarn_unused_function, {yeccgoto_ssa_check_anno_clauses, 7}}).

yeccgoto_ssa_check_anno_clauses(253, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_254(254, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_ssa_check_anno_clauses(259 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_260(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_ssa_check_args, 7}}).

-compile({nowarn_unused_function, {yeccgoto_ssa_check_args, 7}}).

yeccgoto_ssa_check_args(147 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_248(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_ssa_check_args(150 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_151(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_ssa_check_args(154 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_155(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_ssa_check_binary_lit, 7}}).

-compile({nowarn_unused_function, {yeccgoto_ssa_check_binary_lit, 7}}).

yeccgoto_ssa_check_binary_lit(152 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_160(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_ssa_check_binary_lit(165 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_160(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_ssa_check_binary_lit(171 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_160(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_ssa_check_binary_lit(191 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_160(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_ssa_check_binary_lit(192 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_160(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_ssa_check_binary_lit(208 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_212(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_ssa_check_binary_lit(214 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_212(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_ssa_check_binary_lit(219 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_212(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_ssa_check_binary_lit(224 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_212(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_ssa_check_binary_lit(230 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_212(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_ssa_check_binary_lit(231 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_212(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_ssa_check_binary_lit(235 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_212(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_ssa_check_binary_lit(239 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_212(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_ssa_check_binary_lit(241 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_212(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_ssa_check_binary_lit(244 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_160(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_ssa_check_binary_lit(257 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_160(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_ssa_check_binary_lit_bytes_ls, 7}}).

-compile({nowarn_unused_function,
          {yeccgoto_ssa_check_binary_lit_bytes_ls, 7}}).

yeccgoto_ssa_check_binary_lit_bytes_ls(164, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_197(197, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_ssa_check_binary_lit_bytes_ls(200 = _S,
                                       Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_204(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_ssa_check_binary_lit_rest, 7}}).

-compile({nowarn_unused_function,
          {yeccgoto_ssa_check_binary_lit_rest, 7}}).

yeccgoto_ssa_check_binary_lit_rest(164, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_196(196, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_ssa_check_binary_lit_rest(200 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_203(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_ssa_check_clause_args, 7}}).

-compile({nowarn_unused_function, {yeccgoto_ssa_check_clause_args, 7}}).

yeccgoto_ssa_check_clause_args(139, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_266(266, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_ssa_check_clause_args(270 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_271(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_ssa_check_clause_args_ls, 7}}).

-compile({nowarn_unused_function,
          {yeccgoto_ssa_check_clause_args_ls, 7}}).

yeccgoto_ssa_check_clause_args_ls(137, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_138(138, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_ssa_check_clause_args_ls(140, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_141(141, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_ssa_check_expr, 7}}).

-compile({nowarn_unused_function, {yeccgoto_ssa_check_expr, 7}}).

yeccgoto_ssa_check_expr(144, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_146(146, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_ssa_check_expr(252, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_146(146, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_ssa_check_expr(263, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_146(146, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_ssa_check_expr(277, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_146(146, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_ssa_check_exprs, 7}}).

-compile({nowarn_unused_function, {yeccgoto_ssa_check_exprs, 7}}).

yeccgoto_ssa_check_exprs(144, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_145(145, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_ssa_check_exprs(252 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_262(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_ssa_check_exprs(263 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_264(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_ssa_check_exprs(277, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_278(278, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_ssa_check_fun_ref, 7}}).

-compile({nowarn_unused_function, {yeccgoto_ssa_check_fun_ref, 7}}).

yeccgoto_ssa_check_fun_ref(152 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_159(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_ssa_check_fun_ref(165 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_159(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_ssa_check_fun_ref(171 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_159(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_ssa_check_fun_ref(191 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_159(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_ssa_check_fun_ref(192 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_159(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_ssa_check_fun_ref(244 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_159(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_ssa_check_fun_ref(257 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_159(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_ssa_check_list_lit, 7}}).

-compile({nowarn_unused_function, {yeccgoto_ssa_check_list_lit, 7}}).

yeccgoto_ssa_check_list_lit(152 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_158(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_ssa_check_list_lit(165 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_158(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_ssa_check_list_lit(171 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_158(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_ssa_check_list_lit(191 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_158(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_ssa_check_list_lit(192 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_158(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_ssa_check_list_lit(244 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_158(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_ssa_check_list_lit(257 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_158(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_ssa_check_list_lit_ls, 7}}).

-compile({nowarn_unused_function, {yeccgoto_ssa_check_list_lit_ls, 7}}).

yeccgoto_ssa_check_list_lit_ls(165, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_188(188, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_ssa_check_list_lit_ls(191 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_194(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_ssa_check_map_key, 7}}).

-compile({nowarn_unused_function, {yeccgoto_ssa_check_map_key, 7}}).

yeccgoto_ssa_check_map_key(208, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_211(211, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_ssa_check_map_key(214, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_228(228, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_ssa_check_map_key(219, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_222(222, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_ssa_check_map_key(224, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_222(222, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_ssa_check_map_key(230, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_228(228, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_ssa_check_map_key(231 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_232(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_ssa_check_map_key(235, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_211(211, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_ssa_check_map_key(239 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_240(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_ssa_check_map_key(241, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_211(211, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_ssa_check_map_key_element, 7}}).

-compile({nowarn_unused_function,
          {yeccgoto_ssa_check_map_key_element, 7}}).

yeccgoto_ssa_check_map_key_element(208, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_210(210, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_ssa_check_map_key_element(235, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_210(210, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_ssa_check_map_key_element(241, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_210(210, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_ssa_check_map_key_elements, 7}}).

-compile({nowarn_unused_function,
          {yeccgoto_ssa_check_map_key_elements, 7}}).

yeccgoto_ssa_check_map_key_elements(208, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_209(209, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_ssa_check_map_key_elements(235, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_236(236, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_ssa_check_map_key_elements(241 = _S,
                                    Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_242(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_ssa_check_map_key_list, 7}}).

-compile({nowarn_unused_function, {yeccgoto_ssa_check_map_key_list, 7}}).

yeccgoto_ssa_check_map_key_list(214, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_227(227, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_ssa_check_map_key_list(230 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_233(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function,
           {yeccgoto_ssa_check_map_key_tuple_elements, 7}}).

-compile({nowarn_unused_function,
          {yeccgoto_ssa_check_map_key_tuple_elements, 7}}).

yeccgoto_ssa_check_map_key_tuple_elements(219, Cat, Ss, Stack, T, Ts,
                                          Tzr) ->
    yeccpars2_221(221, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_ssa_check_map_key_tuple_elements(224 = _S,
                                          Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_225(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_ssa_check_pat, 7}}).

-compile({nowarn_unused_function, {yeccgoto_ssa_check_pat, 7}}).

yeccgoto_ssa_check_pat(152, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_157(157, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_ssa_check_pat(165, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_187(187, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_ssa_check_pat(171, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_157(157, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_ssa_check_pat(191, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_187(187, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_ssa_check_pat(192 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_193(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_ssa_check_pat(244, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_157(157, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_ssa_check_pat(257 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_258(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_ssa_check_pats, 7}}).

-compile({nowarn_unused_function, {yeccgoto_ssa_check_pats, 7}}).

yeccgoto_ssa_check_pats(152, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_156(156, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_ssa_check_pats(171, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_172(172, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_ssa_check_pats(244 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_245(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_ssa_check_when_clause, 7}}).

-compile({nowarn_unused_function, {yeccgoto_ssa_check_when_clause, 7}}).

yeccgoto_ssa_check_when_clause(132, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_134(134, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_ssa_check_when_clause(134, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_134(134, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_ssa_check_when_clauses, 7}}).

-compile({nowarn_unused_function, {yeccgoto_ssa_check_when_clauses, 7}}).

yeccgoto_ssa_check_when_clauses(132, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_45(133, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_ssa_check_when_clauses(134 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_280(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_strings, 7}}).

-compile({nowarn_unused_function, {yeccgoto_strings, 7}}).

yeccgoto_strings(10 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(15 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(24 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(28 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(29 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(37 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_523(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(39 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(45 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(64 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(65 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(66 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(67 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(68 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(69 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(71 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(72 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(73 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(74 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(79 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(80 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(81 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(85 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(88 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(89 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(90 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(92 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(93 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(102 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(110 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(118 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(120 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(124 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(132 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(133 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(290 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(293 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(294 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(295 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(296 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(298 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(307 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(314 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(316 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(323 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(327 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(335 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(336 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(339 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(341 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(349 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(379 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(387 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(389 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(390 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(398 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(399 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(402 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(403 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(406 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(407 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(412 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(413 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(416 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(418 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(424 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(431 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(435 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(438 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(440 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(445 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(457 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(465 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(472 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(484 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(486 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(492 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(495 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(496 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(502 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(507 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(512 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(534 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(540 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(678 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(681 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(686 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(690 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(694 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_strings(700 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_12(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_tail, 7}}).

-compile({nowarn_unused_function, {yeccgoto_tail, 7}}).

yeccgoto_tail(384 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_386(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tail(422 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_423(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tail(526 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_386(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_top_type, 7}}).

-compile({nowarn_unused_function, {yeccgoto_top_type, 7}}).

yeccgoto_top_type(553, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_556(556, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_top_type(560, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_625(625, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_top_type(564, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_590(590, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_top_type(570, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_556(556, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_top_type(574 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_575(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_top_type(580, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_556(556, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_top_type(583, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_556(556, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_top_type(621 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_622(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_top_type(623 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_624(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_top_type(628, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_629(629, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_top_type(633, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_629(629, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_top_type(636 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_639(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_top_type(637 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_638(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_top_type(645 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_646(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_top_type(651, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_556(556, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_top_type(654 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_655(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_top_type(656 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_657(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_top_type(663 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_664(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_top_type(665, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_556(556, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_top_type(682 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_683(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_top_type(691 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_692(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_top_types, 7}}).

-compile({nowarn_unused_function, {yeccgoto_top_types, 7}}).

yeccgoto_top_types(553, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_555(555, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_top_types(570, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_571(571, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_top_types(580, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_587(587, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_top_types(583, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_584(584, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_top_types(651 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_652(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_top_types(665, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_666(666, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_try_catch, 7}}).

-compile({nowarn_unused_function, {yeccgoto_try_catch, 7}}).

yeccgoto_try_catch(77 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_78(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_catch(83 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_87(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_try_clause, 7}}).

-compile({nowarn_unused_function, {yeccgoto_try_clause, 7}}).

yeccgoto_try_clause(80, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_286(286, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_clause(314, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_286(286, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_try_clauses, 7}}).

-compile({nowarn_unused_function, {yeccgoto_try_clauses, 7}}).

yeccgoto_try_clauses(80, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_285(285, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_clauses(314 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_315(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_try_expr, 7}}).

-compile({nowarn_unused_function, {yeccgoto_try_expr, 7}}).

yeccgoto_try_expr(28 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(29 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(39 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(45 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(64 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(65 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(66 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(67 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(68 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(69 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(71 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(72 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(73 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(74 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(79 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(81 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(85 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(88 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(89 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(90 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(92 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(93 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(102 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(110 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(118 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(120 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(124 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(132 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(133 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(316 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(323 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(327 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(335 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(336 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(339 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(341 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(349 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(379 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(387 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(389 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(390 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(398 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(399 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(402 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(403 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(406 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(407 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(412 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(413 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(416 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(418 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(424 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(431 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(435 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(438 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(440 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(445 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(457 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(465 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(472 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(484 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(486 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(492 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(495 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(496 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(502 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(507 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(512 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(540 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(678 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(681 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(686 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(690 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(694 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_expr(700 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_41(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_try_opt_stacktrace, 7}}).

-compile({nowarn_unused_function, {yeccgoto_try_opt_stacktrace, 7}}).

yeccgoto_try_opt_stacktrace(291, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_292(292, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_try_opt_stacktrace(308, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_309(309, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_tuple, 7}}).

-compile({nowarn_unused_function, {yeccgoto_tuple, 7}}).

yeccgoto_tuple(10 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_11(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(15 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_11(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(24 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_11(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(28 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(29 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(39 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(45 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(64 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(65 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(66 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(67 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(68 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(69 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(71 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(72 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(73 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(74 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(79 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(80 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_11(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(81 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(85 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(88 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(89 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(90 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(92 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(93 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(102 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(110 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(118 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(120 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(124 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(132 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(133 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(290 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_11(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(293 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_11(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(294 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_11(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(295 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_11(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(296 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_11(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(298 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_11(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(307 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_11(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(314 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_11(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(316 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(323 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(327 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(335 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(336 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(339 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(341 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(349 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(379 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(387 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(389 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(390 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(398 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(399 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(402 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(403 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(406 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(407 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(412 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(413 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(416 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(418 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(424 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(431 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(435 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(438 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(440 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(445 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(457 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(465 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(472 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(484 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(486 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(492 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(495 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(496 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(502 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(507 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(512 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(534 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_11(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(540 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(678 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(681 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(686 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(690 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(694 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_tuple(700 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_40(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_type, 7}}).

-compile({nowarn_unused_function, {yeccgoto_type, 7}}).

yeccgoto_type(553, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_554(554, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_type(557 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_650(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_type(560, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_554(554, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_type(564, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_554(554, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_type(570, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_554(554, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_type(574, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_554(554, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_type(580, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_554(554, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_type(583, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_554(554, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_type(600, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_601(601, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_type(603, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_604(604, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_type(606 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_611(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_type(607, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_610(610, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_type(608, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_609(609, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_type(621, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_554(554, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_type(623, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_554(554, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_type(628, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_554(554, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_type(633, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_554(554, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_type(636, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_554(554, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_type(637, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_554(554, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_type(645, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_554(554, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_type(651, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_554(554, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_type(654, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_554(554, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_type(656, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_554(554, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_type(663, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_554(554, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_type(665, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_554(554, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_type(682, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_554(554, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_type(691, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_554(554, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_type_guard, 7}}).

-compile({nowarn_unused_function, {yeccgoto_type_guard, 7}}).

yeccgoto_type_guard(658, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_660(660, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_type_guard(668, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_660(660, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_type_guards, 7}}).

-compile({nowarn_unused_function, {yeccgoto_type_guards, 7}}).

yeccgoto_type_guards(658 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_659(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_type_guards(668 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_669(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_type_sig, 7}}).

-compile({nowarn_unused_function, {yeccgoto_type_sig, 7}}).

yeccgoto_type_sig(544, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_551(551, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_type_sig(549, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_551(551, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_type_sig(670, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_551(551, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_type_sigs, 7}}).

-compile({nowarn_unused_function, {yeccgoto_type_sigs, 7}}).

yeccgoto_type_sigs(544 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_673(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_type_sigs(549, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_550(550, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_type_sigs(670 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_671(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_type_spec, 7}}).

-compile({nowarn_unused_function, {yeccgoto_type_spec, 7}}).

yeccgoto_type_spec(541 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_674(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_type_spec(542 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_543(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_typed_attr_val, 7}}).

-compile({nowarn_unused_function, {yeccgoto_typed_attr_val, 7}}).

yeccgoto_typed_attr_val(540 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_675(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_typed_attr_val(678, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_679(679, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_typed_expr, 7}}).

-compile({nowarn_unused_function, {yeccgoto_typed_expr, 7}}).

yeccgoto_typed_expr(686, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_688(688, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_typed_expr(690, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_688(688, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_typed_expr(694, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_688(688, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_typed_exprs, 7}}).

-compile({nowarn_unused_function, {yeccgoto_typed_exprs, 7}}).

yeccgoto_typed_exprs(686, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_687(687, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_typed_exprs(690 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_693(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_typed_exprs(694 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_695(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_typed_record_fields, 7}}).

-compile({nowarn_unused_function, {yeccgoto_typed_record_fields, 7}}).

yeccgoto_typed_record_fields(681 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_684(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_typed_record_fields(700 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_684(_S, Cat, Ss, Stack, T, Ts, Tzr).

-dialyzer({nowarn_function, {yeccgoto_zc_exprs, 7}}).

-compile({nowarn_unused_function, {yeccgoto_zc_exprs, 7}}).

yeccgoto_zc_exprs(390, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_391(391, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_zc_exprs(406 = _S, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_409(_S, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_zc_exprs(407, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_391(391, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_zc_exprs(418, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_391(391, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_zc_exprs(435, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_391(391, Cat, Ss, Stack, T, Ts, Tzr);
yeccgoto_zc_exprs(457, Cat, Ss, Stack, T, Ts, Tzr) ->
    yeccpars2_391(391, Cat, Ss, Stack, T, Ts, Tzr).

-compile({inline, {yeccpars2_1_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_1_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_1_, 1}}).

-file("erl_parse.yrl", 238).

yeccpars2_1_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin build_function(___1) end | __Stack].

-compile({inline, {yeccpars2_2_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_2_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_2_, 1}}).

-file("erl_parse.yrl", 240).

yeccpars2_2_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin [___1] end | __Stack].

-compile({inline, {yeccpars2_8_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_8_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_8_, 1}}).

-file("erl_parse.yrl", 247).

yeccpars2_8_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin element(1, ___1) end | __Stack].

-compile({inline, {yeccpars2_9_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_9_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_9_, 1}}).

-file("erl_parse.yrl", 250).

yeccpars2_9_(__Stack0) ->
    [begin [] end | __Stack0].

-compile({inline, {yeccpars2_11_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_11_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_11_, 1}}).

-file("erl_parse.yrl", 306).

yeccpars2_11_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_12_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_12_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_12_, 1}}).

-file("erl_parse.yrl", 570).

yeccpars2_12_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_13_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_13_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_13_, 1}}).

-file("erl_parse.yrl", 305).

yeccpars2_13_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_14_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_14_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_14_, 1}}).

-file("erl_parse.yrl", 298).

yeccpars2_14_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_17_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_17_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_17_, 1}}).

-file("erl_parse.yrl", 299).

yeccpars2_17_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_18_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_18_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_18_, 1}}).

-file("erl_parse.yrl", 560).

yeccpars2_18_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin [___1] end | __Stack].

-compile({inline, {yeccpars2_19_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_19_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_19_, 1}}).

-file("erl_parse.yrl", 297).

yeccpars2_19_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_20_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_20_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_20_, 1}}).

-file("erl_parse.yrl", 303).

yeccpars2_20_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_21_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_21_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_21_, 1}}).

-file("erl_parse.yrl", 304).

yeccpars2_21_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_22_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_22_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_22_, 1}}).

-file("erl_parse.yrl", 302).

yeccpars2_22_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-file("erl_parse.erl", 15704).

-compile({inline, {yeccpars2_25_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_25_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_25_, 1}}).

-file("erl_parse.yrl", 551).

yeccpars2_25_(__Stack0) ->
    [___2, ___1 | __Stack] = __Stack0,
    [begin {[], element(2, ___1)} end | __Stack].

-compile({inline, {yeccpars2_26_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_26_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_26_, 1}}).

-file("erl_parse.yrl", 576).

yeccpars2_26_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_27_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_27_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_27_, 1}}).

-file("erl_parse.yrl", 577).

yeccpars2_27_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_30_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_30_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_30_, 1}}).

-file("erl_parse.yrl", 569).

yeccpars2_30_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_31_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_31_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_31_, 1}}).

-file("erl_parse.yrl", 578).

yeccpars2_31_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_32_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_32_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_32_, 1}}).

-file("erl_parse.yrl", 566).

yeccpars2_32_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_33_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_33_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_33_, 1}}).

-file("erl_parse.yrl", 568).

yeccpars2_33_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_34_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_34_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_34_, 1}}).

-file("erl_parse.yrl", 567).

yeccpars2_34_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_35_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_35_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_35_, 1}}).

-file("erl_parse.yrl", 579).

yeccpars2_35_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_37_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_37_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_37_, 1}}).

-file("erl_parse.yrl", 572).

yeccpars2_37_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_38_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_38_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_38_, 1}}).

-file("erl_parse.yrl", 301).

yeccpars2_38_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_40_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_40_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_40_, 1}}).

-file("erl_parse.yrl", 281).

yeccpars2_40_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_41_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_41_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_41_, 1}}).

-file("erl_parse.yrl", 288).

yeccpars2_41_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_42_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_42_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_42_, 1}}).

-file("erl_parse.yrl", 277).

yeccpars2_42_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_43_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_43_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_43_, 1}}).

-file("erl_parse.yrl", 267).

yeccpars2_43_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_44_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_44_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_44_, 1}}).

-file("erl_parse.yrl", 286).

yeccpars2_44_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_46_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_46_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_46_, 1}}).

-file("erl_parse.yrl", 289).

yeccpars2_46_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_47_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_47_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_47_, 1}}).

-file("erl_parse.yrl", 265).

yeccpars2_47_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_48_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_48_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_48_, 1}}).

-file("erl_parse.yrl", 279).

yeccpars2_48_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_49_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_49_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_49_, 1}}).

-file("erl_parse.yrl", 278).

yeccpars2_49_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_50_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_50_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_50_, 1}}).

-file("erl_parse.yrl", 275).

yeccpars2_50_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_51_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_51_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_51_, 1}}).

-file("erl_parse.yrl", 264).

yeccpars2_51_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_52_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_52_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_52_, 1}}).

-file("erl_parse.yrl", 284).

yeccpars2_52_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_53_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_53_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_53_, 1}}).

-file("erl_parse.yrl", 266).

yeccpars2_53_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_54_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_54_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_54_, 1}}).

-file("erl_parse.yrl", 287).

yeccpars2_54_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_56_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_56_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_56_, 1}}).

-file("erl_parse.yrl", 268).

yeccpars2_56_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_57_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_57_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_57_, 1}}).

-file("erl_parse.yrl", 271).

yeccpars2_57_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_58_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_58_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_58_, 1}}).

-file("erl_parse.yrl", 554).

yeccpars2_58_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin [___1] end | __Stack].

-compile({inline, {yeccpars2_59_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_59_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_59_, 1}}).

-file("erl_parse.yrl", 285).

yeccpars2_59_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_60_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_60_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_60_, 1}}).

-file("erl_parse.yrl", 280).

yeccpars2_60_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_61_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_61_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_61_, 1}}).

-file("erl_parse.yrl", 276).

yeccpars2_61_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_62_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_62_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_62_, 1}}).

-file("erl_parse.yrl", 274).

yeccpars2_62_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_75_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_75_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_75_, 1}}).

-file("erl_parse.yrl", 273).

yeccpars2_75_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-file("erl_parse.erl", 16035).

-compile({inline, {yeccpars2_76_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_76_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_76_, 1}}).

-file("erl_parse.yrl", 377).

yeccpars2_76_(__Stack0) ->
    [___2, ___1 | __Stack] = __Stack0,
    [begin {tuple, element(2, ___1), []} end | __Stack].

-file("erl_parse.erl", 16046).

-compile({inline, {yeccpars2_78_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_78_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_78_, 1}}).

-file("erl_parse.yrl", 504).

yeccpars2_78_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin build_try(element(2, ___1), ___2, [], ___3) end | __Stack].

-compile({inline, {yeccpars2_82_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_82_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_82_, 1}}).

-file("erl_parse.yrl", 250).

yeccpars2_82_(__Stack0) ->
    [begin [] end | __Stack0].

-compile({inline, {yeccpars2_84_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_84_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_84_, 1}}).

-file("erl_parse.yrl", 461).

yeccpars2_84_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin [___1] end | __Stack].

-compile({inline, {yeccpars2_86_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_86_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_86_, 1}}).

-file("erl_parse.yrl", 462).

yeccpars2_86_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin [___1 | ___3] end | __Stack].

-file("erl_parse.erl", 16087).

-compile({inline, {yeccpars2_87_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_87_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_87_, 1}}).

-file("erl_parse.yrl", 502).

yeccpars2_87_(__Stack0) ->
    [___5, ___4, ___3, ___2, ___1 | __Stack] = __Stack0,
    [begin build_try(element(2, ___1), ___2, ___4, ___5) end | __Stack].

-compile({inline, {yeccpars2_94_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_94_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_94_, 1}}).

-file("erl_parse.yrl", 582).

yeccpars2_94_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_95_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_95_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_95_, 1}}).

-file("erl_parse.yrl", 588).

yeccpars2_95_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_96_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_96_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_96_, 1}}).

-file("erl_parse.yrl", 597).

yeccpars2_96_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_97_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_97_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_97_, 1}}).

-file("erl_parse.yrl", 589).

yeccpars2_97_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_98_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_98_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_98_, 1}}).

-file("erl_parse.yrl", 598).

yeccpars2_98_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_99_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_99_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_99_, 1}}).

-file("erl_parse.yrl", 581).

yeccpars2_99_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_100_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_100_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_100_, 1}}).

-file("erl_parse.yrl", 601).

yeccpars2_100_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_101_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_101_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_101_, 1}}).

-file("erl_parse.yrl", 603).

yeccpars2_101_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_103_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_103_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_103_, 1}}).

-file("erl_parse.yrl", 607).

yeccpars2_103_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_104_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_104_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_104_, 1}}).

-file("erl_parse.yrl", 606).

yeccpars2_104_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_105_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_105_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_105_, 1}}).

-file("erl_parse.yrl", 602).

yeccpars2_105_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_106_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_106_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_106_, 1}}).

-file("erl_parse.yrl", 600).

yeccpars2_106_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_107_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_107_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_107_, 1}}).

-file("erl_parse.yrl", 605).

yeccpars2_107_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_108_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_108_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_108_, 1}}).

-file("erl_parse.yrl", 604).

yeccpars2_108_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_109_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_109_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_109_, 1}}).

-file("erl_parse.yrl", 586).

yeccpars2_109_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_111_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_111_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_111_, 1}}).

-file("erl_parse.yrl", 585).

yeccpars2_111_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_112_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_112_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_112_, 1}}).

-file("erl_parse.yrl", 590).

yeccpars2_112_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_113_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_113_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_113_, 1}}).

-file("erl_parse.yrl", 592).

yeccpars2_113_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_114_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_114_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_114_, 1}}).

-file("erl_parse.yrl", 593).

yeccpars2_114_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_115_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_115_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_115_, 1}}).

-file("erl_parse.yrl", 591).

yeccpars2_115_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_116_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_116_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_116_, 1}}).

-file("erl_parse.yrl", 583).

yeccpars2_116_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_117_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_117_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_117_, 1}}).

-file("erl_parse.yrl", 594).

yeccpars2_117_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_119_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_119_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_119_, 1}}).

-file("erl_parse.yrl", 584).

yeccpars2_119_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_121_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_121_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_121_, 1}}).

-file("erl_parse.yrl", 595).

yeccpars2_121_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_122_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_122_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_122_, 1}}).

-file("erl_parse.yrl", 249).

yeccpars2_122_(__Stack0) ->
    [___2, ___1 | __Stack] = __Stack0,
    [begin ___2 end | __Stack].

-compile({inline, {yeccpars2_123_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_123_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_123_, 1}}).

-file("erl_parse.yrl", 563).

yeccpars2_123_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin [___1] end | __Stack].

-compile({inline, {yeccpars2_125_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_125_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_125_, 1}}).

-file("erl_parse.yrl", 564).

yeccpars2_125_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin [___1 | ___3] end | __Stack].

-file("erl_parse.erl", 16369).

-compile({inline, {yeccpars2_126_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_126_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_126_, 1}}).

-file("erl_parse.yrl", 257).

yeccpars2_126_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin
         begin
             {Op, Anno} = ___2,
             {op, Anno, Op, ___1, ___3}
         end
     end |
     __Stack].

-file("erl_parse.erl", 16380).

-compile({inline, {yeccpars2_127_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_127_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_127_, 1}}).

-file("erl_parse.yrl", 258).

yeccpars2_127_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin
         begin
             {Op, Anno} = ___2,
             {op, Anno, Op, ___1, ___3}
         end
     end |
     __Stack].

-compile({inline, {yeccpars2_128_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_128_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_128_, 1}}).

-file("erl_parse.yrl", 255).

yeccpars2_128_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {match, first_anno(___1), ___1, ___3} end | __Stack].

-file("erl_parse.erl", 16401).

-compile({inline, {yeccpars2_129_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_129_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_129_, 1}}).

-file("erl_parse.yrl", 256).

yeccpars2_129_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin
         begin
             {Op, Anno} = ___2,
             {op, Anno, Op, ___1, ___3}
         end
     end |
     __Stack].

-file("erl_parse.erl", 16412).

-compile({inline, {yeccpars2_130_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_130_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_130_, 1}}).

-file("erl_parse.yrl", 261).

yeccpars2_130_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin
         begin
             {Op, Anno} = ___2,
             {op, Anno, Op, ___1, ___3}
         end
     end |
     __Stack].

-compile({inline, {yeccpars2_131_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_131_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_131_, 1}}).

-file("erl_parse.yrl", 468).

yeccpars2_131_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {clause, first_anno(___1), [___1], ___2, ___3} end | __Stack].

-compile({inline, {yeccpars2_134_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_134_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_134_, 1}}).

-file("erl_parse.yrl", 609).

yeccpars2_134_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin [___1] end | __Stack].

-compile({inline, {yeccpars2_135_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_135_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_135_, 1}}).

-file("erl_parse.yrl", 558).

yeccpars2_135_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_136_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_136_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_136_, 1}}).

-file("erl_parse.yrl", 252).

yeccpars2_136_(__Stack0) ->
    [___2, ___1 | __Stack] = __Stack0,
    [begin ___2 end | __Stack].

-compile({inline, {yeccpars2_146_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_146_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_146_, 1}}).

-file("erl_parse.yrl", 621).

yeccpars2_146_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin [add_anno_check(___1, [])] end | __Stack].

-file("erl_parse.erl", 16474).

-compile({inline, {yeccpars2_151_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_151_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_151_, 1}}).

-file("erl_parse.yrl", 636).

yeccpars2_151_(__Stack0) ->
    [___4, ___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {check_expr, element(2, ___1), [set, ___1, ___3 | ___4]} end |
     __Stack].

-file("erl_parse.erl", 16486).

-compile({inline, {yeccpars2_155_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_155_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_155_, 1}}).

-file("erl_parse.yrl", 640).

yeccpars2_155_(__Stack0) ->
    [___6, ___5, ___4, ___3, ___2, ___1 | __Stack] = __Stack0,
    [begin
         {check_expr,
          element(2, ___1),
          [set, ___1, {___3, ___5} | ___6]}
     end |
     __Stack].

-compile({inline, {yeccpars2_157_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_157_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_157_, 1}}).

-file("erl_parse.yrl", 659).

yeccpars2_157_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin [___1] end | __Stack].

-compile({inline, {yeccpars2_158_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_158_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_158_, 1}}).

-file("erl_parse.yrl", 673).

yeccpars2_158_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_159_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_159_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_159_, 1}}).

-file("erl_parse.yrl", 668).

yeccpars2_159_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_160_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_160_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_160_, 1}}).

-file("erl_parse.yrl", 672).

yeccpars2_160_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-file("erl_parse.erl", 16538).

-compile({inline, {yeccpars2_162_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_162_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_162_, 1}}).

-file("erl_parse.yrl", 655).

yeccpars2_162_(__Stack0) ->
    [___2, ___1 | __Stack] = __Stack0,
    [begin {[], element(2, ___1)} end | __Stack].

-compile({inline, {yeccpars2_166_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_166_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_166_, 1}}).

-file("erl_parse.yrl", 664).

yeccpars2_166_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_167_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_167_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_167_, 1}}).

-file("erl_parse.yrl", 666).

yeccpars2_167_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_169_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_169_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_169_, 1}}).

-file("erl_parse.yrl", 665).

yeccpars2_169_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_170_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_170_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_170_, 1}}).

-file("erl_parse.yrl", 663).

yeccpars2_170_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-file("erl_parse.erl", 16589).

-compile({inline, {yeccpars2_174_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_174_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_174_, 1}}).

-file("erl_parse.yrl", 669).

yeccpars2_174_(__Stack0) ->
    [___2, ___1 | __Stack] = __Stack0,
    [begin {tuple, element(2, ___1), []} end | __Stack].

-file("erl_parse.erl", 16600).

-compile({inline, {yeccpars2_175_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_175_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_175_, 1}}).

-file("erl_parse.yrl", 671).

yeccpars2_175_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {tuple, element(2, ___1), [___2]} end | __Stack].

-file("erl_parse.erl", 16611).

-compile({inline, {yeccpars2_176_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_176_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_176_, 1}}).

-file("erl_parse.yrl", 670).

yeccpars2_176_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {tuple, element(2, ___1), ___2} end | __Stack].

-compile({inline, {yeccpars2_182_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_182_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_182_, 1}}).

-file("erl_parse.yrl", 678).

yeccpars2_182_(__Stack0) ->
    [___6, ___5, ___4, ___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {external_fun, ___2, ___4, ___6} end | __Stack].

-compile({inline, {yeccpars2_183_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_183_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_183_, 1}}).

-file("erl_parse.yrl", 677).

yeccpars2_183_(__Stack0) ->
    [___4, ___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {local_fun, ___2, ___4} end | __Stack].

-compile({inline, {yeccpars2_186_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_186_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_186_, 1}}).

-file("erl_parse.yrl", 667).

yeccpars2_186_(__Stack0) ->
    [___4, ___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {float_epsilon, ___1, ___3} end | __Stack].

-compile({inline, {yeccpars2_187_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_187_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_187_, 1}}).

-file("erl_parse.yrl", 698).

yeccpars2_187_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin [___1] end | __Stack].

-file("erl_parse.erl", 16662).

-compile({inline, {yeccpars2_189_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_189_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_189_, 1}}).

-file("erl_parse.yrl", 694).

yeccpars2_189_(__Stack0) ->
    [___2, ___1 | __Stack] = __Stack0,
    [begin {list, element(2, ___1), []} end | __Stack].

-file("erl_parse.erl", 16673).

-compile({inline, {yeccpars2_190_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_190_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_190_, 1}}).

-file("erl_parse.yrl", 695).

yeccpars2_190_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {list, element(2, ___1), ___2} end | __Stack].

-compile({inline, {yeccpars2_193_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_193_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_193_, 1}}).

-file("erl_parse.yrl", 701).

yeccpars2_193_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin [___1 | ___3] end | __Stack].

-compile({inline, {yeccpars2_194_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_194_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_194_, 1}}).

-file("erl_parse.yrl", 699).

yeccpars2_194_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin [___1 | ___3] end | __Stack].

-compile({inline, {yeccpars2_195_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_195_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_195_, 1}}).

-file("erl_parse.yrl", 700).

yeccpars2_195_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin [___1, ___3] end | __Stack].

-file("erl_parse.erl", 16715).

-compile({inline, {yeccpars2_198_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_198_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_198_, 1}}).

-file("erl_parse.yrl", 680).

yeccpars2_198_(__Stack0) ->
    [___2, ___1 | __Stack] = __Stack0,
    [begin {binary, element(2, ___1), []} end | __Stack].

-compile({inline, {yeccpars2_199_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_199_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_199_, 1}}).

-file("erl_parse.yrl", 686).

yeccpars2_199_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin [___1] end | __Stack].

-compile({inline, {yeccpars2_202_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_202_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_202_, 1}}).

-file("erl_parse.yrl", 692).

yeccpars2_202_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {___1, ___3} end | __Stack].

-compile({inline, {yeccpars2_203_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_203_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_203_, 1}}).

-file("erl_parse.yrl", 689).

yeccpars2_203_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin [___1, ___3] end | __Stack].

-compile({inline, {yeccpars2_204_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_204_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_204_, 1}}).

-file("erl_parse.yrl", 687).

yeccpars2_204_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin [___1 | ___3] end | __Stack].

-file("erl_parse.erl", 16768).

-compile({inline, {yeccpars2_205_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_205_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_205_, 1}}).

-file("erl_parse.yrl", 681).

yeccpars2_205_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {binary, element(2, ___1), ___2} end | __Stack].

-file("erl_parse.erl", 16780).

-compile({inline, {yeccpars2_206_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_206_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_206_, 1}}).

-file("erl_parse.yrl", 683).

yeccpars2_206_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {binary, element(2, ___1), [___2]} end | __Stack].

-compile({inline, {yeccpars2_207_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_207_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_207_, 1}}).

-file("erl_parse.yrl", 657).

yeccpars2_207_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin [___2] end | __Stack].

-compile({inline, {yeccpars2_210_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_210_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_210_, 1}}).

-file("erl_parse.yrl", 723).

yeccpars2_210_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin [___1] end | __Stack].

-compile({inline, {yeccpars2_212_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_212_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_212_, 1}}).

-file("erl_parse.yrl", 710).

yeccpars2_212_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_215_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_215_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_215_, 1}}).

-file("erl_parse.yrl", 703).

yeccpars2_215_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_216_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_216_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_216_, 1}}).

-file("erl_parse.yrl", 705).

yeccpars2_216_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_217_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_217_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_217_, 1}}).

-file("erl_parse.yrl", 704).

yeccpars2_217_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_218_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_218_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_218_, 1}}).

-file("erl_parse.yrl", 706).

yeccpars2_218_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-file("erl_parse.erl", 16862).

-compile({inline, {yeccpars2_220_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_220_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_220_, 1}}).

-file("erl_parse.yrl", 674).

yeccpars2_220_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {map, element(2, ___1), []} end | __Stack].

-compile({inline, {yeccpars2_222_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_222_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_222_, 1}}).

-file("erl_parse.yrl", 732).

yeccpars2_222_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin [___1] end | __Stack].

-file("erl_parse.erl", 16883).

-compile({inline, {yeccpars2_223_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_223_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_223_, 1}}).

-file("erl_parse.yrl", 709).

yeccpars2_223_(__Stack0) ->
    [___2, ___1 | __Stack] = __Stack0,
    [begin {tuple, element(2, ___1), []} end | __Stack].

-compile({inline, {yeccpars2_225_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_225_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_225_, 1}}).

-file("erl_parse.yrl", 733).

yeccpars2_225_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin [___1 | ___3] end | __Stack].

-file("erl_parse.erl", 16905).

-compile({inline, {yeccpars2_226_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_226_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_226_, 1}}).

-file("erl_parse.yrl", 707).

yeccpars2_226_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {tuple, element(2, ___1), ___2} end | __Stack].

-compile({inline, {yeccpars2_228_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_228_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_228_, 1}}).

-file("erl_parse.yrl", 717).

yeccpars2_228_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin [___1] end | __Stack].

-file("erl_parse.erl", 16927).

-compile({inline, {yeccpars2_229_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_229_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_229_, 1}}).

-file("erl_parse.yrl", 713).

yeccpars2_229_(__Stack0) ->
    [___2, ___1 | __Stack] = __Stack0,
    [begin {list, element(2, ___1), []} end | __Stack].

-compile({inline, {yeccpars2_232_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_232_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_232_, 1}}).

-file("erl_parse.yrl", 720).

yeccpars2_232_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin [___1 | ___3] end | __Stack].

-compile({inline, {yeccpars2_233_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_233_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_233_, 1}}).

-file("erl_parse.yrl", 718).

yeccpars2_233_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin [___1 | ___3] end | __Stack].

-file("erl_parse.erl", 16960).

-compile({inline, {yeccpars2_234_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_234_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_234_, 1}}).

-file("erl_parse.yrl", 711).

yeccpars2_234_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {list, element(2, ___1), ___2} end | __Stack].

-file("erl_parse.erl", 16972).

-compile({inline, {yeccpars2_237_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_237_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_237_, 1}}).

-file("erl_parse.yrl", 714).

yeccpars2_237_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {map, element(2, ___1), []} end | __Stack].

-compile({inline, {yeccpars2_238_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_238_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_238_, 1}}).

-file("erl_parse.yrl", 715).

yeccpars2_238_(__Stack0) ->
    [___4, ___3, ___2, ___1 | __Stack] = __Stack0,
    [begin ___3 end | __Stack].

-compile({inline, {yeccpars2_240_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_240_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_240_, 1}}).

-file("erl_parse.yrl", 727).

yeccpars2_240_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {___1, ___3} end | __Stack].

-compile({inline, {yeccpars2_242_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_242_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_242_, 1}}).

-file("erl_parse.yrl", 724).

yeccpars2_242_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin [___1 | ___3] end | __Stack].

-file("erl_parse.erl", 17015).

-compile({inline, {yeccpars2_243_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_243_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_243_, 1}}).

-file("erl_parse.yrl", 675).

yeccpars2_243_(__Stack0) ->
    [___4, ___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {map, element(2, ___1), ___3} end | __Stack].

-compile({inline, {yeccpars2_245_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_245_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_245_, 1}}).

-file("erl_parse.yrl", 660).

yeccpars2_245_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin [___1 | ___3] end | __Stack].

-compile({inline, {yeccpars2_246_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_246_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_246_, 1}}).

-file("erl_parse.yrl", 661).

yeccpars2_246_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin [___1, ___3] end | __Stack].

-compile({inline, {yeccpars2_247_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_247_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_247_, 1}}).

-file("erl_parse.yrl", 656).

yeccpars2_247_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin ___2 end | __Stack].

-file("erl_parse.erl", 17056).

-compile({inline, {yeccpars2_248_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_248_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_248_, 1}}).

-file("erl_parse.yrl", 638).

yeccpars2_248_(__Stack0) ->
    [___2, ___1 | __Stack] = __Stack0,
    [begin {check_expr, element(2, ___1), [none, ___1 | ___2]} end |
     __Stack].

-file("erl_parse.erl", 17068).

-compile({inline, {yeccpars2_249_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_249_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_249_, 1}}).

-file("erl_parse.yrl", 642).

yeccpars2_249_(__Stack0) ->
    [___2, ___1 | __Stack] = __Stack0,
    [begin
         {check_expr,
          element(2, ___1),
          build_ssa_check_label(___1, ___2)}
     end |
     __Stack].

-file("erl_parse.erl", 17080).

-compile({inline, {yeccpars2_250_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_250_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_250_, 1}}).

-file("erl_parse.yrl", 644).

yeccpars2_250_(__Stack0) ->
    [___2, ___1 | __Stack] = __Stack0,
    [begin
         {check_expr,
          element(2, ___1),
          build_ssa_check_label(___1, ___2)}
     end |
     __Stack].

-compile({inline, {yeccpars2_251_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_251_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_251_, 1}}).

-file("erl_parse.yrl", 622).

yeccpars2_251_(__Stack0) ->
    [___2, ___1 | __Stack] = __Stack0,
    [begin [add_anno_check(___1, ___2)] end | __Stack].

-compile({inline, {yeccpars2_255_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_255_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_255_, 1}}).

-file("erl_parse.yrl", 630).

yeccpars2_255_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin [___1] end | __Stack].

-compile({inline, {yeccpars2_258_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_258_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_258_, 1}}).

-file("erl_parse.yrl", 634).

yeccpars2_258_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {term, ___1, ___3} end | __Stack].

-compile({inline, {yeccpars2_260_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_260_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_260_, 1}}).

-file("erl_parse.yrl", 631).

yeccpars2_260_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin [___1 | ___3] end | __Stack].

-compile({inline, {yeccpars2_261_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_261_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_261_, 1}}).

-file("erl_parse.yrl", 628).

yeccpars2_261_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin ___2 end | __Stack].

-compile({inline, {yeccpars2_262_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_262_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_262_, 1}}).

-file("erl_parse.yrl", 623).

yeccpars2_262_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin [add_anno_check(___1, []) | ___3] end | __Stack].

-compile({inline, {yeccpars2_264_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_264_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_264_, 1}}).

-file("erl_parse.yrl", 625).

yeccpars2_264_(__Stack0) ->
    [___4, ___3, ___2, ___1 | __Stack] = __Stack0,
    [begin [add_anno_check(___1, ___2) | ___4] end | __Stack].

-file("erl_parse.erl", 17165).

-compile({inline, {yeccpars2_265_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_265_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_265_, 1}}).

-file("erl_parse.yrl", 614).

yeccpars2_265_(__Stack0) ->
    [___8, ___7, ___6, ___5, ___4, ___3, ___2, ___1 | __Stack] =
        __Stack0,
    [begin
         {ssa_check_when, element(2, ___1), ___2, ___3, ___5, ___7}
     end |
     __Stack].

-compile({inline, {yeccpars2_267_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_267_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_267_, 1}}).

-file("erl_parse.yrl", 647).

yeccpars2_267_(__Stack0) ->
    [___2, ___1 | __Stack] = __Stack0,
    [begin [] end | __Stack].

-compile({inline, {yeccpars2_269_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_269_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_269_, 1}}).

-file("erl_parse.yrl", 651).

yeccpars2_269_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin [___1] end | __Stack].

-compile({inline, {yeccpars2_271_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_271_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_271_, 1}}).

-file("erl_parse.yrl", 652).

yeccpars2_271_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin [___1 | ___3] end | __Stack].

-compile({inline, {yeccpars2_272_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_272_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_272_, 1}}).

-file("erl_parse.yrl", 653).

yeccpars2_272_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin [___1, ___3] end | __Stack].

-compile({inline, {yeccpars2_273_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_273_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_273_, 1}}).

-file("erl_parse.yrl", 649).

yeccpars2_273_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin [___2] end | __Stack].

-compile({inline, {yeccpars2_274_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_274_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_274_, 1}}).

-file("erl_parse.yrl", 648).

yeccpars2_274_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin ___2 end | __Stack].

-file("erl_parse.erl", 17237).

-compile({inline, {yeccpars2_279_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_279_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_279_, 1}}).

-file("erl_parse.yrl", 618).

yeccpars2_279_(__Stack0) ->
    [___7, ___6, ___5, ___4, ___3, ___2, ___1 | __Stack] = __Stack0,
    [begin
         {ssa_check_when,
          element(2, ___1),
          {atom, element(2, ___1), pass},
          ___2, ___4, ___6}
     end |
     __Stack].

-compile({inline, {yeccpars2_280_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_280_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_280_, 1}}).

-file("erl_parse.yrl", 610).

yeccpars2_280_(__Stack0) ->
    [___2, ___1 | __Stack] = __Stack0,
    [begin [___1 | ___2] end | __Stack].

-compile({inline, {yeccpars2_281_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_281_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_281_, 1}}).

-file("erl_parse.yrl", 557).

yeccpars2_281_(__Stack0) ->
    [___2, ___1 | __Stack] = __Stack0,
    [begin ___1 ++ ___2 end | __Stack].

-file("erl_parse.erl", 17270).

-compile({inline, {'yeccpars2_282_!', 1}}).

-dialyzer({nowarn_function, {'yeccpars2_282_!', 1}}).

-compile({nowarn_unused_function, {'yeccpars2_282_!', 1}}).

-file("erl_parse.yrl", 259).

'yeccpars2_282_!'(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin
         begin
             {Op, Anno} = ___2,
             {op, Anno, Op, ___1, ___3}
         end
     end |
     __Stack].

-file("erl_parse.erl", 17281).

-compile({inline, {'yeccpars2_282_&&', 1}}).

-dialyzer({nowarn_function, {'yeccpars2_282_&&', 1}}).

-compile({nowarn_unused_function, {'yeccpars2_282_&&', 1}}).

-file("erl_parse.yrl", 259).

'yeccpars2_282_&&'(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin
         begin
             {Op, Anno} = ___2,
             {op, Anno, Op, ___1, ___3}
         end
     end |
     __Stack].

-file("erl_parse.erl", 17292).

-compile({inline, {'yeccpars2_282_)', 1}}).

-dialyzer({nowarn_function, {'yeccpars2_282_)', 1}}).

-compile({nowarn_unused_function, {'yeccpars2_282_)', 1}}).

-file("erl_parse.yrl", 259).

'yeccpars2_282_)'(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin
         begin
             {Op, Anno} = ___2,
             {op, Anno, Op, ___1, ___3}
         end
     end |
     __Stack].

-file("erl_parse.erl", 17303).

-compile({inline, {'yeccpars2_282_,', 1}}).

-dialyzer({nowarn_function, {'yeccpars2_282_,', 1}}).

-compile({nowarn_unused_function, {'yeccpars2_282_,', 1}}).

-file("erl_parse.yrl", 259).

'yeccpars2_282_,'(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin
         begin
             {Op, Anno} = ___2,
             {op, Anno, Op, ___1, ___3}
         end
     end |
     __Stack].

-file("erl_parse.erl", 17314).

-compile({inline, {'yeccpars2_282_->', 1}}).

-dialyzer({nowarn_function, {'yeccpars2_282_->', 1}}).

-compile({nowarn_unused_function, {'yeccpars2_282_->', 1}}).

-file("erl_parse.yrl", 259).

'yeccpars2_282_->'(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin
         begin
             {Op, Anno} = ___2,
             {op, Anno, Op, ___1, ___3}
         end
     end |
     __Stack].

-file("erl_parse.erl", 17325).

-compile({inline, {'yeccpars2_282_::', 1}}).

-dialyzer({nowarn_function, {'yeccpars2_282_::', 1}}).

-compile({nowarn_unused_function, {'yeccpars2_282_::', 1}}).

-file("erl_parse.yrl", 259).

'yeccpars2_282_::'(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin
         begin
             {Op, Anno} = ___2,
             {op, Anno, Op, ___1, ___3}
         end
     end |
     __Stack].

-file("erl_parse.erl", 17336).

-compile({inline, {'yeccpars2_282_:=', 1}}).

-dialyzer({nowarn_function, {'yeccpars2_282_:=', 1}}).

-compile({nowarn_unused_function, {'yeccpars2_282_:=', 1}}).

-file("erl_parse.yrl", 259).

'yeccpars2_282_:='(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin
         begin
             {Op, Anno} = ___2,
             {op, Anno, Op, ___1, ___3}
         end
     end |
     __Stack].

-file("erl_parse.erl", 17347).

-compile({inline, {'yeccpars2_282_;', 1}}).

-dialyzer({nowarn_function, {'yeccpars2_282_;', 1}}).

-compile({nowarn_unused_function, {'yeccpars2_282_;', 1}}).

-file("erl_parse.yrl", 259).

'yeccpars2_282_;'(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin
         begin
             {Op, Anno} = ___2,
             {op, Anno, Op, ___1, ___3}
         end
     end |
     __Stack].

-file("erl_parse.erl", 17358).

-compile({inline, {'yeccpars2_282_<-', 1}}).

-dialyzer({nowarn_function, {'yeccpars2_282_<-', 1}}).

-compile({nowarn_unused_function, {'yeccpars2_282_<-', 1}}).

-file("erl_parse.yrl", 259).

'yeccpars2_282_<-'(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin
         begin
             {Op, Anno} = ___2,
             {op, Anno, Op, ___1, ___3}
         end
     end |
     __Stack].

-file("erl_parse.erl", 17369).

-compile({inline, {'yeccpars2_282_<:-', 1}}).

-dialyzer({nowarn_function, {'yeccpars2_282_<:-', 1}}).

-compile({nowarn_unused_function, {'yeccpars2_282_<:-', 1}}).

-file("erl_parse.yrl", 259).

'yeccpars2_282_<:-'(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin
         begin
             {Op, Anno} = ___2,
             {op, Anno, Op, ___1, ___3}
         end
     end |
     __Stack].

-file("erl_parse.erl", 17380).

-compile({inline, {'yeccpars2_282_=', 1}}).

-dialyzer({nowarn_function, {'yeccpars2_282_=', 1}}).

-compile({nowarn_unused_function, {'yeccpars2_282_=', 1}}).

-file("erl_parse.yrl", 259).

'yeccpars2_282_='(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin
         begin
             {Op, Anno} = ___2,
             {op, Anno, Op, ___1, ___3}
         end
     end |
     __Stack].

-file("erl_parse.erl", 17391).

-compile({inline, {'yeccpars2_282_=>', 1}}).

-dialyzer({nowarn_function, {'yeccpars2_282_=>', 1}}).

-compile({nowarn_unused_function, {'yeccpars2_282_=>', 1}}).

-file("erl_parse.yrl", 259).

'yeccpars2_282_=>'(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin
         begin
             {Op, Anno} = ___2,
             {op, Anno, Op, ___1, ___3}
         end
     end |
     __Stack].

-file("erl_parse.erl", 17402).

-compile({inline, {'yeccpars2_282_>>', 1}}).

-dialyzer({nowarn_function, {'yeccpars2_282_>>', 1}}).

-compile({nowarn_unused_function, {'yeccpars2_282_>>', 1}}).

-file("erl_parse.yrl", 259).

'yeccpars2_282_>>'(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin
         begin
             {Op, Anno} = ___2,
             {op, Anno, Op, ___1, ___3}
         end
     end |
     __Stack].

-file("erl_parse.erl", 17413).

-compile({inline, {'yeccpars2_282_?=', 1}}).

-dialyzer({nowarn_function, {'yeccpars2_282_?=', 1}}).

-compile({nowarn_unused_function, {'yeccpars2_282_?=', 1}}).

-file("erl_parse.yrl", 259).

'yeccpars2_282_?='(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin
         begin
             {Op, Anno} = ___2,
             {op, Anno, Op, ___1, ___3}
         end
     end |
     __Stack].

-file("erl_parse.erl", 17424).

-compile({inline, {'yeccpars2_282_]', 1}}).

-dialyzer({nowarn_function, {'yeccpars2_282_]', 1}}).

-compile({nowarn_unused_function, {'yeccpars2_282_]', 1}}).

-file("erl_parse.yrl", 259).

'yeccpars2_282_]'(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin
         begin
             {Op, Anno} = ___2,
             {op, Anno, Op, ___1, ___3}
         end
     end |
     __Stack].

-file("erl_parse.erl", 17435).

-compile({inline, {yeccpars2_282_after, 1}}).

-dialyzer({nowarn_function, {yeccpars2_282_after, 1}}).

-compile({nowarn_unused_function, {yeccpars2_282_after, 1}}).

-file("erl_parse.yrl", 259).

yeccpars2_282_after(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin
         begin
             {Op, Anno} = ___2,
             {op, Anno, Op, ___1, ___3}
         end
     end |
     __Stack].

-file("erl_parse.erl", 17446).

-compile({inline, {yeccpars2_282_andalso, 1}}).

-dialyzer({nowarn_function, {yeccpars2_282_andalso, 1}}).

-compile({nowarn_unused_function, {yeccpars2_282_andalso, 1}}).

-file("erl_parse.yrl", 259).

yeccpars2_282_andalso(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin
         begin
             {Op, Anno} = ___2,
             {op, Anno, Op, ___1, ___3}
         end
     end |
     __Stack].

-file("erl_parse.erl", 17457).

-compile({inline, {yeccpars2_282_catch, 1}}).

-dialyzer({nowarn_function, {yeccpars2_282_catch, 1}}).

-compile({nowarn_unused_function, {yeccpars2_282_catch, 1}}).

-file("erl_parse.yrl", 259).

yeccpars2_282_catch(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin
         begin
             {Op, Anno} = ___2,
             {op, Anno, Op, ___1, ___3}
         end
     end |
     __Stack].

-file("erl_parse.erl", 17468).

-compile({inline, {yeccpars2_282_dot, 1}}).

-dialyzer({nowarn_function, {yeccpars2_282_dot, 1}}).

-compile({nowarn_unused_function, {yeccpars2_282_dot, 1}}).

-file("erl_parse.yrl", 259).

yeccpars2_282_dot(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin
         begin
             {Op, Anno} = ___2,
             {op, Anno, Op, ___1, ___3}
         end
     end |
     __Stack].

-file("erl_parse.erl", 17479).

-compile({inline, {yeccpars2_282_else, 1}}).

-dialyzer({nowarn_function, {yeccpars2_282_else, 1}}).

-compile({nowarn_unused_function, {yeccpars2_282_else, 1}}).

-file("erl_parse.yrl", 259).

yeccpars2_282_else(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin
         begin
             {Op, Anno} = ___2,
             {op, Anno, Op, ___1, ___3}
         end
     end |
     __Stack].

-file("erl_parse.erl", 17490).

-compile({inline, {yeccpars2_282_end, 1}}).

-dialyzer({nowarn_function, {yeccpars2_282_end, 1}}).

-compile({nowarn_unused_function, {yeccpars2_282_end, 1}}).

-file("erl_parse.yrl", 259).

yeccpars2_282_end(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin
         begin
             {Op, Anno} = ___2,
             {op, Anno, Op, ___1, ___3}
         end
     end |
     __Stack].

-file("erl_parse.erl", 17501).

-compile({inline, {yeccpars2_282_of, 1}}).

-dialyzer({nowarn_function, {yeccpars2_282_of, 1}}).

-compile({nowarn_unused_function, {yeccpars2_282_of, 1}}).

-file("erl_parse.yrl", 259).

yeccpars2_282_of(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin
         begin
             {Op, Anno} = ___2,
             {op, Anno, Op, ___1, ___3}
         end
     end |
     __Stack].

-file("erl_parse.erl", 17512).

-compile({inline, {yeccpars2_282_orelse, 1}}).

-dialyzer({nowarn_function, {yeccpars2_282_orelse, 1}}).

-compile({nowarn_unused_function, {yeccpars2_282_orelse, 1}}).

-file("erl_parse.yrl", 259).

yeccpars2_282_orelse(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin
         begin
             {Op, Anno} = ___2,
             {op, Anno, Op, ___1, ___3}
         end
     end |
     __Stack].

-file("erl_parse.erl", 17523).

-compile({inline, {yeccpars2_282_when, 1}}).

-dialyzer({nowarn_function, {yeccpars2_282_when, 1}}).

-compile({nowarn_unused_function, {yeccpars2_282_when, 1}}).

-file("erl_parse.yrl", 259).

yeccpars2_282_when(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin
         begin
             {Op, Anno} = ___2,
             {op, Anno, Op, ___1, ___3}
         end
     end |
     __Stack].

-file("erl_parse.erl", 17534).

-compile({inline, {'yeccpars2_282_|', 1}}).

-dialyzer({nowarn_function, {'yeccpars2_282_|', 1}}).

-compile({nowarn_unused_function, {'yeccpars2_282_|', 1}}).

-file("erl_parse.yrl", 259).

'yeccpars2_282_|'(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin
         begin
             {Op, Anno} = ___2,
             {op, Anno, Op, ___1, ___3}
         end
     end |
     __Stack].

-file("erl_parse.erl", 17545).

-compile({inline, {'yeccpars2_282_||', 1}}).

-dialyzer({nowarn_function, {'yeccpars2_282_||', 1}}).

-compile({nowarn_unused_function, {'yeccpars2_282_||', 1}}).

-file("erl_parse.yrl", 259).

'yeccpars2_282_||'(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin
         begin
             {Op, Anno} = ___2,
             {op, Anno, Op, ___1, ___3}
         end
     end |
     __Stack].

-file("erl_parse.erl", 17556).

-compile({inline, {'yeccpars2_282_}', 1}}).

-dialyzer({nowarn_function, {'yeccpars2_282_}', 1}}).

-compile({nowarn_unused_function, {'yeccpars2_282_}', 1}}).

-file("erl_parse.yrl", 259).

'yeccpars2_282_}'(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin
         begin
             {Op, Anno} = ___2,
             {op, Anno, Op, ___1, ___3}
         end
     end |
     __Stack].

-file("erl_parse.erl", 17567).

-compile({inline, {yeccpars2_283_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_283_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_283_, 1}}).

-file("erl_parse.yrl", 260).

yeccpars2_283_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin
         begin
             {Op, Anno} = ___2,
             {op, Anno, Op, ___1, ___3}
         end
     end |
     __Stack].

-file("erl_parse.erl", 17578).

-compile({inline, {yeccpars2_284_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_284_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_284_, 1}}).

-file("erl_parse.yrl", 262).

yeccpars2_284_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin
         begin
             {Op, Anno} = ___2,
             {op, Anno, Op, ___1, ___3}
         end
     end |
     __Stack].

-compile({inline, {yeccpars2_286_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_286_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_286_, 1}}).

-file("erl_parse.yrl", 514).

yeccpars2_286_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin [___1] end | __Stack].

-compile({inline, {yeccpars2_287_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_287_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_287_, 1}}).

-file("erl_parse.yrl", 250).

yeccpars2_287_(__Stack0) ->
    [begin [] end | __Stack0].

-compile({inline, {yeccpars2_288_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_288_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_288_, 1}}).

-file("erl_parse.yrl", 569).

yeccpars2_288_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_289_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_289_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_289_, 1}}).

-file("erl_parse.yrl", 301).

yeccpars2_289_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_291_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_291_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_291_, 1}}).

-file("erl_parse.yrl", 531).

yeccpars2_291_(__Stack0) ->
    [begin '_' end | __Stack0].

-compile({inline, {yeccpars2_292_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_292_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_292_, 1}}).

-file("erl_parse.yrl", 250).

yeccpars2_292_(__Stack0) ->
    [begin [] end | __Stack0].

-compile({inline, {yeccpars2_299_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_299_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_299_, 1}}).

-file("erl_parse.yrl", 291).

yeccpars2_299_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {match, first_anno(___1), ___1, ___3} end | __Stack].

-compile({inline, {yeccpars2_300_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_300_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_300_, 1}}).

-file("erl_parse.yrl", 530).

yeccpars2_300_(__Stack0) ->
    [___2, ___1 | __Stack] = __Stack0,
    [begin ___2 end | __Stack].

-file("erl_parse.erl", 17666).

-compile({inline, {yeccpars2_301_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_301_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_301_, 1}}).

-file("erl_parse.yrl", 294).

yeccpars2_301_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin
         begin
             {Op, Anno} = ___2,
             {op, Anno, Op, ___1, ___3}
         end
     end |
     __Stack].

-file("erl_parse.erl", 17677).

-compile({inline, {'yeccpars2_302_)', 1}}).

-dialyzer({nowarn_function, {'yeccpars2_302_)', 1}}).

-compile({nowarn_unused_function, {'yeccpars2_302_)', 1}}).

-file("erl_parse.yrl", 292).

'yeccpars2_302_)'(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin
         begin
             {Op, Anno} = ___2,
             {op, Anno, Op, ___1, ___3}
         end
     end |
     __Stack].

-file("erl_parse.erl", 17688).

-compile({inline, {'yeccpars2_302_,', 1}}).

-dialyzer({nowarn_function, {'yeccpars2_302_,', 1}}).

-compile({nowarn_unused_function, {'yeccpars2_302_,', 1}}).

-file("erl_parse.yrl", 292).

'yeccpars2_302_,'(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin
         begin
             {Op, Anno} = ___2,
             {op, Anno, Op, ___1, ___3}
         end
     end |
     __Stack].

-file("erl_parse.erl", 17699).

-compile({inline, {'yeccpars2_302_->', 1}}).

-dialyzer({nowarn_function, {'yeccpars2_302_->', 1}}).

-compile({nowarn_unused_function, {'yeccpars2_302_->', 1}}).

-file("erl_parse.yrl", 292).

'yeccpars2_302_->'(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin
         begin
             {Op, Anno} = ___2,
             {op, Anno, Op, ___1, ___3}
         end
     end |
     __Stack].

-file("erl_parse.erl", 17710).

-compile({inline, {'yeccpars2_302_:', 1}}).

-dialyzer({nowarn_function, {'yeccpars2_302_:', 1}}).

-compile({nowarn_unused_function, {'yeccpars2_302_:', 1}}).

-file("erl_parse.yrl", 292).

'yeccpars2_302_:'(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin
         begin
             {Op, Anno} = ___2,
             {op, Anno, Op, ___1, ___3}
         end
     end |
     __Stack].

-file("erl_parse.erl", 17721).

-compile({inline, {'yeccpars2_302_=', 1}}).

-dialyzer({nowarn_function, {'yeccpars2_302_=', 1}}).

-compile({nowarn_unused_function, {'yeccpars2_302_=', 1}}).

-file("erl_parse.yrl", 292).

'yeccpars2_302_='(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin
         begin
             {Op, Anno} = ___2,
             {op, Anno, Op, ___1, ___3}
         end
     end |
     __Stack].

-file("erl_parse.erl", 17732).

-compile({inline, {yeccpars2_302_when, 1}}).

-dialyzer({nowarn_function, {yeccpars2_302_when, 1}}).

-compile({nowarn_unused_function, {yeccpars2_302_when, 1}}).

-file("erl_parse.yrl", 292).

yeccpars2_302_when(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin
         begin
             {Op, Anno} = ___2,
             {op, Anno, Op, ___1, ___3}
         end
     end |
     __Stack].

-file("erl_parse.erl", 17743).

-compile({inline, {yeccpars2_303_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_303_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_303_, 1}}).

-file("erl_parse.yrl", 293).

yeccpars2_303_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin
         begin
             {Op, Anno} = ___2,
             {op, Anno, Op, ___1, ___3}
         end
     end |
     __Stack].

-file("erl_parse.erl", 17754).

-compile({inline, {yeccpars2_304_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_304_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_304_, 1}}).

-file("erl_parse.yrl", 295).

yeccpars2_304_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin
         begin
             {Op, Anno} = ___2,
             {op, Anno, Op, ___1, ___3}
         end
     end |
     __Stack].

-file("erl_parse.erl", 17765).

-compile({inline, {yeccpars2_306_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_306_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_306_, 1}}).

-file("erl_parse.yrl", 525).

yeccpars2_306_(__Stack0) ->
    [___6, ___5, ___4, ___3, ___2, ___1 | __Stack] = __Stack0,
    [begin
         A = element(2, ___1),
         T = case ___4 of
                 '_' ->
                     {var, last_anno(___3), '_'};
                 V ->
                     V
             end,
         {clause, A, [{tuple, A, [___1, ___3, T]}], ___5, ___6}
     end |
     __Stack].

-compile({inline, {yeccpars2_308_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_308_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_308_, 1}}).

-file("erl_parse.yrl", 531).

yeccpars2_308_(__Stack0) ->
    [begin '_' end | __Stack0].

-compile({inline, {yeccpars2_309_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_309_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_309_, 1}}).

-file("erl_parse.yrl", 250).

yeccpars2_309_(__Stack0) ->
    [begin [] end | __Stack0].

-file("erl_parse.erl", 17797).

-compile({inline, {yeccpars2_311_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_311_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_311_, 1}}).

-file("erl_parse.yrl", 521).

yeccpars2_311_(__Stack0) ->
    [___6, ___5, ___4, ___3, ___2, ___1 | __Stack] = __Stack0,
    [begin
         A = element(2, ___1),
         T = case ___4 of
                 '_' ->
                     {var, last_anno(___3), '_'};
                 V ->
                     V
             end,
         {clause, A, [{tuple, A, [___1, ___3, T]}], ___5, ___6}
     end |
     __Stack].

-compile({inline, {yeccpars2_313_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_313_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_313_, 1}}).

-file("erl_parse.yrl", 517).

yeccpars2_313_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin
         A = first_anno(___1),
         Az = last_anno(___1),
         {clause, A,
          [{tuple, A, [{atom, A, throw}, ___1, {var, Az, '_'}]}],
          ___2, ___3}
     end |
     __Stack].

-compile({inline, {yeccpars2_315_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_315_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_315_, 1}}).

-file("erl_parse.yrl", 515).

yeccpars2_315_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin [___1 | ___3] end | __Stack].

-compile({inline, {yeccpars2_317_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_317_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_317_, 1}}).

-file("erl_parse.yrl", 507).

yeccpars2_317_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {___2, []} end | __Stack].

-compile({inline, {yeccpars2_319_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_319_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_319_, 1}}).

-file("erl_parse.yrl", 509).

yeccpars2_319_(__Stack0) ->
    [___5, ___4, ___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {___2, ___4} end | __Stack].

-compile({inline, {yeccpars2_321_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_321_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_321_, 1}}).

-file("erl_parse.yrl", 511).

yeccpars2_321_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {[], ___2} end | __Stack].

-file("erl_parse.erl", 17867).

-compile({inline, {yeccpars2_326_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_326_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_326_, 1}}).

-file("erl_parse.yrl", 473).

yeccpars2_326_(__Stack0) ->
    [___5, ___4, ___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {'receive', element(2, ___1), [], ___3, ___4} end | __Stack].

-file("erl_parse.erl", 17879).

-compile({inline, {yeccpars2_328_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_328_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_328_, 1}}).

-file("erl_parse.yrl", 471).

yeccpars2_328_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {'receive', element(2, ___1), ___2} end | __Stack].

-file("erl_parse.erl", 17891).

-compile({inline, {yeccpars2_331_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_331_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_331_, 1}}).

-file("erl_parse.yrl", 475).

yeccpars2_331_(__Stack0) ->
    [___6, ___5, ___4, ___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {'receive', element(2, ___1), ___2, ___4, ___5} end |
     __Stack].

-compile({inline, {yeccpars2_333_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_333_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_333_, 1}}).

-file("erl_parse.yrl", 541).

yeccpars2_333_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin [___1] end | __Stack].

-compile({inline, {yeccpars2_334_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_334_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_334_, 1}}).

-file("erl_parse.yrl", 543).

yeccpars2_334_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin [___1] end | __Stack].

-file("erl_parse.erl", 17923).

-compile({inline, {yeccpars2_337_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_337_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_337_, 1}}).

-file("erl_parse.yrl", 546).

yeccpars2_337_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {maybe_match, element(2, ___2), ___1, ___3} end | __Stack].

-compile({inline, {yeccpars2_338_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_338_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_338_, 1}}).

-file("erl_parse.yrl", 544).

yeccpars2_338_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin [___1 | ___3] end | __Stack].

-compile({inline, {yeccpars2_340_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_340_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_340_, 1}}).

-file("erl_parse.yrl", 542).

yeccpars2_340_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin [___1 | ___3] end | __Stack].

-file("erl_parse.erl", 17954).

-compile({inline, {yeccpars2_342_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_342_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_342_, 1}}).

-file("erl_parse.yrl", 534).

yeccpars2_342_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {'maybe', element(2, ___1), ___2} end | __Stack].

-file("erl_parse.erl", 17966).

-compile({inline, {yeccpars2_344_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_344_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_344_, 1}}).

-file("erl_parse.yrl", 536).

yeccpars2_344_(__Stack0) ->
    [___5, ___4, ___3, ___2, ___1 | __Stack] = __Stack0,
    [begin
         {'maybe',
          element(2, ___1),
          ___2,
          {'else', element(2, ___3), ___4}}
     end |
     __Stack].

-compile({inline, {yeccpars2_346_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_346_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_346_, 1}}).

-file("erl_parse.yrl", 452).

yeccpars2_346_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin [___1] end | __Stack].

-compile({inline, {yeccpars2_348_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_348_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_348_, 1}}).

-file("erl_parse.yrl", 455).

yeccpars2_348_(__Stack0) ->
    [___2, ___1 | __Stack] = __Stack0,
    [begin {clause, first_anno(hd(hd(___1))), [], ___1, ___2} end |
     __Stack].

-compile({inline, {yeccpars2_350_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_350_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_350_, 1}}).

-file("erl_parse.yrl", 453).

yeccpars2_350_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin [___1 | ___3] end | __Stack].

-file("erl_parse.erl", 18011).

-compile({inline, {yeccpars2_351_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_351_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_351_, 1}}).

-file("erl_parse.yrl", 450).

yeccpars2_351_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {'if', element(2, ___1), ___2} end | __Stack].

-compile({inline, {yeccpars2_352_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_352_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_352_, 1}}).

-file("erl_parse.yrl", 250).

yeccpars2_352_(__Stack0) ->
    [begin [] end | __Stack0].

-compile({inline, {yeccpars2_354_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_354_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_354_, 1}}).

-file("erl_parse.yrl", 492).

yeccpars2_354_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin [___1] end | __Stack].

-compile({inline, {yeccpars2_356_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_356_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_356_, 1}}).

-file("erl_parse.yrl", 486).

yeccpars2_356_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_357_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_357_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_357_, 1}}).

-file("erl_parse.yrl", 487).

yeccpars2_357_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_358_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_358_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_358_, 1}}).

-file("erl_parse.yrl", 250).

yeccpars2_358_(__Stack0) ->
    [begin [] end | __Stack0].

-file("erl_parse.erl", 18070).

-compile({inline, {yeccpars2_360_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_360_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_360_, 1}}).

-file("erl_parse.yrl", 499).

yeccpars2_360_(__Stack0) ->
    [___4, ___3, ___2, ___1 | __Stack] = __Stack0,
    [begin
         {clause,
          element(2, ___1),
          element(3, ___1),
          element(1, ___2),
          ___3, ___4}
     end |
     __Stack].

-file("erl_parse.erl", 18082).

-compile({inline, {yeccpars2_362_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_362_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_362_, 1}}).

-file("erl_parse.yrl", 479).

yeccpars2_362_(__Stack0) ->
    [___4, ___3, ___2, ___1 | __Stack] = __Stack0,
    [begin
         {'fun',
          element(2, ___1),
          {function, element(3, ___2), element(3, ___4)}}
     end |
     __Stack].

-compile({inline, {yeccpars2_365_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_365_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_365_, 1}}).

-file("erl_parse.yrl", 486).

yeccpars2_365_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_366_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_366_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_366_, 1}}).

-file("erl_parse.yrl", 487).

yeccpars2_366_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-file("erl_parse.erl", 18114).

-compile({inline, {yeccpars2_368_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_368_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_368_, 1}}).

-file("erl_parse.yrl", 481).

yeccpars2_368_(__Stack0) ->
    [___6, ___5, ___4, ___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {'fun', element(2, ___1), {function, ___2, ___4, ___6}} end |
     __Stack].

-compile({inline, {yeccpars2_369_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_369_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_369_, 1}}).

-file("erl_parse.yrl", 489).

yeccpars2_369_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_370_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_370_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_370_, 1}}).

-file("erl_parse.yrl", 490).

yeccpars2_370_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_372_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_372_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_372_, 1}}).

-file("erl_parse.yrl", 493).

yeccpars2_372_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin [___1 | ___3] end | __Stack].

-file("erl_parse.erl", 18156).

-compile({inline, {yeccpars2_374_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_374_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_374_, 1}}).

-file("erl_parse.yrl", 483).

yeccpars2_374_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin build_fun(element(2, ___1), ___2) end | __Stack].

-compile({inline, {yeccpars2_376_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_376_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_376_, 1}}).

-file("erl_parse.yrl", 495).

yeccpars2_376_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin
         {Args, Anno} = ___1,
         {clause, Anno, 'fun', Args, ___2, ___3}
     end |
     __Stack].

-file("erl_parse.erl", 18180).

-compile({inline, {yeccpars2_377_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_377_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_377_, 1}}).

-file("erl_parse.yrl", 254).

yeccpars2_377_(__Stack0) ->
    [___2, ___1 | __Stack] = __Stack0,
    [begin {'catch', element(2, ___1), ___2} end | __Stack].

-file("erl_parse.erl", 18191).

-compile({inline, {yeccpars2_381_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_381_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_381_, 1}}).

-file("erl_parse.yrl", 458).

yeccpars2_381_(__Stack0) ->
    [___5, ___4, ___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {'case', element(2, ___1), ___2, ___4} end | __Stack].

-file("erl_parse.erl", 18203).

-compile({inline, {yeccpars2_383_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_383_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_383_, 1}}).

-file("erl_parse.yrl", 283).

yeccpars2_383_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {block, element(2, ___1), ___2} end | __Stack].

-file("erl_parse.erl", 18214).

-compile({inline, {yeccpars2_385_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_385_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_385_, 1}}).

-file("erl_parse.yrl", 317).

yeccpars2_385_(__Stack0) ->
    [___2, ___1 | __Stack] = __Stack0,
    [begin {nil, element(2, ___1)} end | __Stack].

-file("erl_parse.erl", 18225).

-compile({inline, {yeccpars2_386_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_386_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_386_, 1}}).

-file("erl_parse.yrl", 318).

yeccpars2_386_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {cons, element(2, ___1), ___2, ___3} end | __Stack].

-file("erl_parse.erl", 18236).

-compile({inline, {yeccpars2_388_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_388_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_388_, 1}}).

-file("erl_parse.yrl", 320).

yeccpars2_388_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin {nil, element(2, ___1)} end | __Stack].

-file("erl_parse.erl", 18247).

-compile({inline, {yeccpars2_391_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_391_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_391_, 1}}).

-file("erl_parse.yrl", 363).

yeccpars2_391_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin [{zip, element(2, hd(___1)), ___1}] end | __Stack].

-compile({inline, {yeccpars2_395_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_395_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_395_, 1}}).

-file("erl_parse.yrl", 361).

yeccpars2_395_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin [___1] end | __Stack].

-compile({inline, {'yeccpars2_396_&&', 1}}).

-dialyzer({nowarn_function, {'yeccpars2_396_&&', 1}}).

-compile({nowarn_unused_function, {'yeccpars2_396_&&', 1}}).

-file("erl_parse.yrl", 369).

'yeccpars2_396_&&'(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {'yeccpars2_396_,', 1}}).

-dialyzer({nowarn_function, {'yeccpars2_396_,', 1}}).

-compile({nowarn_unused_function, {'yeccpars2_396_,', 1}}).

-file("erl_parse.yrl", 369).

'yeccpars2_396_,'(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {'yeccpars2_396_>>', 1}}).

-dialyzer({nowarn_function, {'yeccpars2_396_>>', 1}}).

-compile({nowarn_unused_function, {'yeccpars2_396_>>', 1}}).

-file("erl_parse.yrl", 369).

'yeccpars2_396_>>'(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {'yeccpars2_396_]', 1}}).

-dialyzer({nowarn_function, {'yeccpars2_396_]', 1}}).

-compile({nowarn_unused_function, {'yeccpars2_396_]', 1}}).

-file("erl_parse.yrl", 369).

'yeccpars2_396_]'(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {'yeccpars2_396_}', 1}}).

-dialyzer({nowarn_function, {'yeccpars2_396_}', 1}}).

-compile({nowarn_unused_function, {'yeccpars2_396_}', 1}}).

-file("erl_parse.yrl", 369).

'yeccpars2_396_}'(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_396_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_396_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_396_, 1}}).

-file("erl_parse.yrl", 415).

yeccpars2_396_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_397_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_397_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_397_, 1}}).

-file("erl_parse.yrl", 276).

yeccpars2_397_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-file("erl_parse.erl", 18338).

-compile({inline, {yeccpars2_400_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_400_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_400_, 1}}).

-file("erl_parse.yrl", 374).

yeccpars2_400_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {b_generate, element(2, ___2), ___1, ___3} end | __Stack].

-file("erl_parse.erl", 18349).

-compile({inline, {yeccpars2_401_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_401_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_401_, 1}}).

-file("erl_parse.yrl", 375).

yeccpars2_401_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {b_generate_strict, element(2, ___2), ___1, ___3} end |
     __Stack].

-file("erl_parse.erl", 18360).

-compile({inline, {yeccpars2_404_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_404_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_404_, 1}}).

-file("erl_parse.yrl", 373).

yeccpars2_404_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {generate_strict, element(2, ___2), ___1, ___3} end |
     __Stack].

-file("erl_parse.erl", 18371).

-compile({inline, {yeccpars2_405_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_405_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_405_, 1}}).

-file("erl_parse.yrl", 372).

yeccpars2_405_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {generate, element(2, ___2), ___1, ___3} end | __Stack].

-compile({inline, {yeccpars2_408_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_408_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_408_, 1}}).

-file("erl_parse.yrl", 362).

yeccpars2_408_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin [___1 | ___3] end | __Stack].

-compile({inline, {yeccpars2_409_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_409_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_409_, 1}}).

-file("erl_parse.yrl", 367).

yeccpars2_409_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin [___1 | ___3] end | __Stack].

-compile({inline, {yeccpars2_410_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_410_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_410_, 1}}).

-file("erl_parse.yrl", 366).

yeccpars2_410_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin [___1, ___3] end | __Stack].

-file("erl_parse.erl", 18412).

-compile({inline, {yeccpars2_411_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_411_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_411_, 1}}).

-file("erl_parse.yrl", 355).

yeccpars2_411_(__Stack0) ->
    [___5, ___4, ___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {lc, element(2, ___1), ___2, ___4} end | __Stack].

-file("erl_parse.erl", 18424).

-compile({inline, {yeccpars2_414_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_414_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_414_, 1}}).

-file("erl_parse.yrl", 371).

yeccpars2_414_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {m_generate_strict, element(2, ___2), ___1, ___3} end |
     __Stack].

-file("erl_parse.erl", 18435).

-compile({inline, {yeccpars2_415_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_415_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_415_, 1}}).

-file("erl_parse.yrl", 370).

yeccpars2_415_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {m_generate, element(2, ___2), ___1, ___3} end | __Stack].

-file("erl_parse.erl", 18446).

-compile({inline, {yeccpars2_417_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_417_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_417_, 1}}).

-file("erl_parse.yrl", 412).

yeccpars2_417_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {map_field_exact, element(2, ___2), ___1, ___3} end |
     __Stack].

-file("erl_parse.erl", 18458).

-compile({inline, {yeccpars2_419_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_419_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_419_, 1}}).

-file("erl_parse.yrl", 364).

yeccpars2_419_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin [{zip, element(2, ___2), ___1} | ___3] end | __Stack].

-compile({inline, {yeccpars2_421_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_421_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_421_, 1}}).

-file("erl_parse.yrl", 321).

yeccpars2_421_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin ___2 end | __Stack].

-compile({inline, {yeccpars2_423_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_423_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_423_, 1}}).

-file("erl_parse.yrl", 322).

yeccpars2_423_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {cons, first_anno(___2), ___2, ___3} end | __Stack].

-compile({inline, {yeccpars2_425_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_425_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_425_, 1}}).

-file("erl_parse.yrl", 335).

yeccpars2_425_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_426_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_426_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_426_, 1}}).

-file("erl_parse.yrl", 338).

yeccpars2_426_(__Stack0) ->
    [begin default end | __Stack0].

-compile({inline, {yeccpars2_428_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_428_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_428_, 1}}).

-file("erl_parse.yrl", 328).

yeccpars2_428_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin [___1] end | __Stack].

-file("erl_parse.erl", 18518).

-compile({inline, {yeccpars2_430_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_430_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_430_, 1}}).

-file("erl_parse.yrl", 325).

yeccpars2_430_(__Stack0) ->
    [___2, ___1 | __Stack] = __Stack0,
    [begin {bin, element(2, ___1), []} end | __Stack].

-compile({inline, {yeccpars2_434_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_434_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_434_, 1}}).

-file("erl_parse.yrl", 415).

yeccpars2_434_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-file("erl_parse.erl", 18539).

-compile({inline, {yeccpars2_437_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_437_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_437_, 1}}).

-file("erl_parse.yrl", 357).

yeccpars2_437_(__Stack0) ->
    [___6, ___5, ___4, ___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {mc, element(2, ___1), ___3, ___5} end | __Stack].

-file("erl_parse.erl", 18551).

-compile({inline, {yeccpars2_439_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_439_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_439_, 1}}).

-file("erl_parse.yrl", 409).

yeccpars2_439_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {map_field_assoc, element(2, ___2), ___1, ___3} end |
     __Stack].

-compile({inline, {yeccpars2_441_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_441_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_441_, 1}}).

-file("erl_parse.yrl", 335).

yeccpars2_441_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_442_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_442_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_442_, 1}}).

-file("erl_parse.yrl", 329).

yeccpars2_442_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin [___1 | ___3] end | __Stack].

-file("erl_parse.erl", 18583).

-compile({inline, {yeccpars2_443_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_443_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_443_, 1}}).

-file("erl_parse.yrl", 326).

yeccpars2_443_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {bin, element(2, ___1), ___2} end | __Stack].

-compile({inline, {yeccpars2_444_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_444_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_444_, 1}}).

-file("erl_parse.yrl", 341).

yeccpars2_444_(__Stack0) ->
    [begin default end | __Stack0].

-compile({inline, {yeccpars2_446_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_446_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_446_, 1}}).

-file("erl_parse.yrl", 349).

yeccpars2_446_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_447_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_447_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_447_, 1}}).

-file("erl_parse.yrl", 337).

yeccpars2_447_(__Stack0) ->
    [___2, ___1 | __Stack] = __Stack0,
    [begin ___2 end | __Stack].

-compile({inline, {yeccpars2_448_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_448_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_448_, 1}}).

-file("erl_parse.yrl", 331).

yeccpars2_448_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {bin_element, first_anno(___1), ___1, ___2, ___3} end |
     __Stack].

-compile({inline, {yeccpars2_450_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_450_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_450_, 1}}).

-file("erl_parse.yrl", 340).

yeccpars2_450_(__Stack0) ->
    [___2, ___1 | __Stack] = __Stack0,
    [begin ___2 end | __Stack].

-compile({inline, {yeccpars2_451_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_451_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_451_, 1}}).

-file("erl_parse.yrl", 344).

yeccpars2_451_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin [___1] end | __Stack].

-compile({inline, {yeccpars2_452_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_452_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_452_, 1}}).

-file("erl_parse.yrl", 346).

yeccpars2_452_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin element(3, ___1) end | __Stack].

-compile({inline, {yeccpars2_454_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_454_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_454_, 1}}).

-file("erl_parse.yrl", 347).

yeccpars2_454_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {element(3, ___1), element(3, ___3)} end | __Stack].

-compile({inline, {yeccpars2_456_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_456_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_456_, 1}}).

-file("erl_parse.yrl", 343).

yeccpars2_456_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin [___1 | ___3] end | __Stack].

-file("erl_parse.erl", 18684).

-compile({inline, {yeccpars2_459_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_459_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_459_, 1}}).

-file("erl_parse.yrl", 359).

yeccpars2_459_(__Stack0) ->
    [___5, ___4, ___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {bc, element(2, ___1), ___2, ___4} end | __Stack].

-file("erl_parse.erl", 18696).

-compile({inline, {yeccpars2_460_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_460_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_460_, 1}}).

-file("erl_parse.yrl", 334).

yeccpars2_460_(__Stack0) ->
    [___2, ___1 | __Stack] = __Stack0,
    [begin
         begin
             {Op, Anno} = ___1,
             {op, Anno, Op, ___2}
         end
     end |
     __Stack].

-compile({inline, {yeccpars2_462_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_462_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_462_, 1}}).

-file("erl_parse.yrl", 282).

yeccpars2_462_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin ___2 end | __Stack].

-file("erl_parse.erl", 18717).

-compile({inline, {yeccpars2_463_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_463_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_463_, 1}}).

-file("erl_parse.yrl", 393).

yeccpars2_463_(__Stack0) ->
    [___2, ___1 | __Stack] = __Stack0,
    [begin {map, element(2, ___1), ___2} end | __Stack].

-compile({inline, {yeccpars2_468_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_468_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_468_, 1}}).

-file("erl_parse.yrl", 407).

yeccpars2_468_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_469_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_469_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_469_, 1}}).

-file("erl_parse.yrl", 406).

yeccpars2_469_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_470_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_470_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_470_, 1}}).

-file("erl_parse.yrl", 403).

yeccpars2_470_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin [___1] end | __Stack].

-compile({inline, {yeccpars2_471_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_471_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_471_, 1}}).

-file("erl_parse.yrl", 400).

yeccpars2_471_(__Stack0) ->
    [___2, ___1 | __Stack] = __Stack0,
    [begin [] end | __Stack].

-compile({inline, {yeccpars2_473_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_473_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_473_, 1}}).

-file("erl_parse.yrl", 404).

yeccpars2_473_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin [___1 | ___3] end | __Stack].

-compile({inline, {yeccpars2_474_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_474_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_474_, 1}}).

-file("erl_parse.yrl", 406).

yeccpars2_474_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_475_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_475_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_475_, 1}}).

-file("erl_parse.yrl", 401).

yeccpars2_475_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin ___2 end | __Stack].

-file("erl_parse.erl", 18799).

-compile({inline, {yeccpars2_476_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_476_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_476_, 1}}).

-file("erl_parse.yrl", 424).

yeccpars2_476_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {record, element(2, ___1), element(3, ___2), ___3} end |
     __Stack].

-compile({inline, {yeccpars2_480_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_480_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_480_, 1}}).

-file("erl_parse.yrl", 438).

yeccpars2_480_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin [___1] end | __Stack].

-compile({inline, {yeccpars2_483_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_483_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_483_, 1}}).

-file("erl_parse.yrl", 435).

yeccpars2_483_(__Stack0) ->
    [___2, ___1 | __Stack] = __Stack0,
    [begin [] end | __Stack].

-file("erl_parse.erl", 18831).

-compile({inline, {yeccpars2_485_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_485_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_485_, 1}}).

-file("erl_parse.yrl", 441).

yeccpars2_485_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {record_field, element(2, ___1), ___1, ___3} end | __Stack].

-file("erl_parse.erl", 18842).

-compile({inline, {yeccpars2_487_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_487_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_487_, 1}}).

-file("erl_parse.yrl", 442).

yeccpars2_487_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {record_field, element(2, ___1), ___1, ___3} end | __Stack].

-compile({inline, {yeccpars2_489_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_489_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_489_, 1}}).

-file("erl_parse.yrl", 439).

yeccpars2_489_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin [___1 | ___3] end | __Stack].

-compile({inline, {yeccpars2_490_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_490_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_490_, 1}}).

-file("erl_parse.yrl", 436).

yeccpars2_490_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin ___2 end | __Stack].

-file("erl_parse.erl", 18873).

-compile({inline, {yeccpars2_491_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_491_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_491_, 1}}).

-file("erl_parse.yrl", 422).

yeccpars2_491_(__Stack0) ->
    [___4, ___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {record_index, element(2, ___1), element(3, ___2), ___4} end |
     __Stack].

-compile({inline, {yeccpars2_493_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_493_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_493_, 1}}).

-file("erl_parse.yrl", 555).

yeccpars2_493_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin [___1 | ___3] end | __Stack].

-file("erl_parse.erl", 18895).

-compile({inline, {yeccpars2_498_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_498_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_498_, 1}}).

-file("erl_parse.yrl", 380).

yeccpars2_498_(__Stack0) ->
    [___4, ___3, ___2, ___1 | __Stack] = __Stack0,
    [begin
         {call,
          element(2, ___2),
          {remote,
           element(2, ___2),
           {atom, element(2, ___2), erlang},
           {atom, element(2, ___2), map_get}},
          [___3, ___1]}
     end |
     __Stack].

-file("erl_parse.erl", 18911).

-compile({inline, {yeccpars2_499_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_499_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_499_, 1}}).

-file("erl_parse.yrl", 270).

yeccpars2_499_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {remote, element(2, ___2), ___1, ___3} end | __Stack].

-file("erl_parse.erl", 18922).

-compile({inline, {yeccpars2_500_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_500_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_500_, 1}}).

-file("erl_parse.yrl", 395).

yeccpars2_500_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {map, element(2, ___2), ___1, ___3} end | __Stack].

-file("erl_parse.erl", 18934).

-compile({inline, {yeccpars2_503_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_503_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_503_, 1}}).

-file("erl_parse.yrl", 428).

yeccpars2_503_(__Stack0) ->
    [___4, ___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {record, element(2, ___2), ___1, element(3, ___3), ___4} end |
     __Stack].

-file("erl_parse.erl", 18946).

-compile({inline, {yeccpars2_505_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_505_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_505_, 1}}).

-file("erl_parse.yrl", 426).

yeccpars2_505_(__Stack0) ->
    [___5, ___4, ___3, ___2, ___1 | __Stack] = __Stack0,
    [begin
         {record_field, element(2, ___2), ___1, element(3, ___3), ___5}
     end |
     __Stack].

-compile({inline, {yeccpars2_506_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_506_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_506_, 1}}).

-file("erl_parse.yrl", 446).

yeccpars2_506_(__Stack0) ->
    [___2, ___1 | __Stack] = __Stack0,
    [begin {call, first_anno(___1), ___1, element(1, ___2)} end |
     __Stack].

-file("erl_parse.erl", 18969).

-compile({inline, {yeccpars2_509_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_509_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_509_, 1}}).

-file("erl_parse.yrl", 548).

yeccpars2_509_(__Stack0) ->
    [___2, ___1 | __Stack] = __Stack0,
    [begin {[], element(2, ___1)} end | __Stack].

-file("erl_parse.erl", 18980).

-compile({inline, {yeccpars2_510_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_510_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_510_, 1}}).

-file("erl_parse.yrl", 549).

yeccpars2_510_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {___2, element(2, ___1)} end | __Stack].

-file("erl_parse.erl", 18991).

-compile({inline, {yeccpars2_511_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_511_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_511_, 1}}).

-file("erl_parse.yrl", 378).

yeccpars2_511_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {tuple, element(2, ___1), ___2} end | __Stack].

-file("erl_parse.erl", 19002).

-compile({inline, {yeccpars2_514_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_514_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_514_, 1}}).

-file("erl_parse.yrl", 386).

yeccpars2_514_(__Stack0) ->
    [___4, ___3, ___2, ___1 | __Stack] = __Stack0,
    [begin
         {call,
          element(2, ___2),
          {remote,
           element(2, ___2),
           {atom, element(2, ___2), erlang},
           {atom, element(2, ___2), map_get}},
          [___3, ___1]}
     end |
     __Stack].

-file("erl_parse.erl", 19018).

-compile({inline, {yeccpars2_516_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_516_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_516_, 1}}).

-file("erl_parse.yrl", 397).

yeccpars2_516_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {map, element(2, ___2), ___1, ___3} end | __Stack].

-file("erl_parse.erl", 19030).

-compile({inline, {yeccpars2_517_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_517_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_517_, 1}}).

-file("erl_parse.yrl", 263).

yeccpars2_517_(__Stack0) ->
    [___2, ___1 | __Stack] = __Stack0,
    [begin
         begin
             {Op, Anno} = ___1,
             {op, Anno, Op, ___2}
         end
     end |
     __Stack].

-file("erl_parse.erl", 19041).

-compile({inline, {yeccpars2_520_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_520_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_520_, 1}}).

-file("erl_parse.yrl", 432).

yeccpars2_520_(__Stack0) ->
    [___4, ___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {record, element(2, ___2), ___1, element(3, ___3), ___4} end |
     __Stack].

-file("erl_parse.erl", 19053).

-compile({inline, {yeccpars2_522_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_522_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_522_, 1}}).

-file("erl_parse.yrl", 430).

yeccpars2_522_(__Stack0) ->
    [___5, ___4, ___3, ___2, ___1 | __Stack] = __Stack0,
    [begin
         {record_field, element(2, ___2), ___1, element(3, ___3), ___5}
     end |
     __Stack].

-file("erl_parse.erl", 19065).

-compile({inline, {yeccpars2_523_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_523_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_523_, 1}}).

-file("erl_parse.yrl", 573).

yeccpars2_523_(__Stack0) ->
    [___2, ___1 | __Stack] = __Stack0,
    [begin
         {string,
          element(2, ___1),
          element(3, ___1) ++ element(3, ___2)}
     end |
     __Stack].

-compile({inline, {yeccpars2_525_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_525_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_525_, 1}}).

-file("erl_parse.yrl", 352).

yeccpars2_525_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin build_sigil(___1, ___2, ___3) end | __Stack].

-compile({inline, {yeccpars2_528_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_528_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_528_, 1}}).

-file("erl_parse.yrl", 307).

yeccpars2_528_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin ___2 end | __Stack].

-file("erl_parse.erl", 19097).

-compile({inline, {yeccpars2_529_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_529_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_529_, 1}}).

-file("erl_parse.yrl", 309).

yeccpars2_529_(__Stack0) ->
    [___2, ___1 | __Stack] = __Stack0,
    [begin {map, element(2, ___1), ___2} end | __Stack].

-file("erl_parse.erl", 19109).

-compile({inline, {yeccpars2_531_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_531_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_531_, 1}}).

-file("erl_parse.yrl", 314).

yeccpars2_531_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {record, element(2, ___1), element(3, ___2), ___3} end |
     __Stack].

-file("erl_parse.erl", 19121).

-compile({inline, {yeccpars2_533_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_533_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_533_, 1}}).

-file("erl_parse.yrl", 312).

yeccpars2_533_(__Stack0) ->
    [___4, ___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {record_index, element(2, ___1), element(3, ___2), ___4} end |
     __Stack].

-compile({inline, {yeccpars2_535_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_535_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_535_, 1}}).

-file("erl_parse.yrl", 561).

yeccpars2_535_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin [___1 | ___3] end | __Stack].

-file("erl_parse.erl", 19143).

-compile({inline, {yeccpars2_536_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_536_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_536_, 1}}).

-file("erl_parse.yrl", 552).

yeccpars2_536_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {___2, element(2, ___1)} end | __Stack].

-file("erl_parse.erl", 19154).

-compile({inline, {yeccpars2_537_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_537_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_537_, 1}}).

-file("erl_parse.yrl", 296).

yeccpars2_537_(__Stack0) ->
    [___2, ___1 | __Stack] = __Stack0,
    [begin
         begin
             {Op, Anno} = ___1,
             {op, Anno, Op, ___2}
         end
     end |
     __Stack].

-file("erl_parse.erl", 19165).

-compile({inline, {yeccpars2_539_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_539_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_539_, 1}}).

-file("erl_parse.yrl", 243).

yeccpars2_539_(__Stack0) ->
    [___4, ___3, ___2, ___1 | __Stack] = __Stack0,
    [begin
         {clause, element(2, ___1), element(3, ___1), ___2, ___3, ___4}
     end |
     __Stack].

-compile({inline, {yeccpars2_543_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_543_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_543_, 1}}).

-file("erl_parse.yrl", 127).

yeccpars2_543_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin build_type_spec(___2, ___3) end | __Stack].

-compile({inline, {yeccpars2_546_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_546_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_546_, 1}}).

-file("erl_parse.yrl", 133).

yeccpars2_546_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_548_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_548_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_548_, 1}}).

-file("erl_parse.yrl", 134).

yeccpars2_548_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {___1, ___3} end | __Stack].

-compile({inline, {yeccpars2_551_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_551_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_551_, 1}}).

-file("erl_parse.yrl", 148).

yeccpars2_551_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin [___1] end | __Stack].

-compile({inline, {yeccpars2_552_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_552_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_552_, 1}}).

-file("erl_parse.yrl", 151).

yeccpars2_552_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_554_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_554_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_554_, 1}}).

-file("erl_parse.yrl", 166).

yeccpars2_554_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_556_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_556_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_556_, 1}}).

-file("erl_parse.yrl", 161).

yeccpars2_556_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin [___1] end | __Stack].

-compile({inline, {yeccpars2_558_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_558_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_558_, 1}}).

-file("erl_parse.yrl", 192).

yeccpars2_558_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_565_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_565_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_565_, 1}}).

-file("erl_parse.yrl", 174).

yeccpars2_565_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_566_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_566_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_566_, 1}}).

-file("erl_parse.yrl", 194).

yeccpars2_566_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_568_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_568_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_568_, 1}}).

-file("erl_parse.yrl", 193).

yeccpars2_568_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_569_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_569_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_569_, 1}}).

-file("erl_parse.yrl", 173).

yeccpars2_569_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-file("erl_parse.erl", 19297).

-compile({inline, {yeccpars2_572_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_572_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_572_, 1}}).

-file("erl_parse.yrl", 187).

yeccpars2_572_(__Stack0) ->
    [___2, ___1 | __Stack] = __Stack0,
    [begin {type, element(2, ___1), tuple, []} end | __Stack].

-file("erl_parse.erl", 19308).

-compile({inline, {yeccpars2_573_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_573_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_573_, 1}}).

-file("erl_parse.yrl", 188).

yeccpars2_573_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {type, element(2, ___1), tuple, ___2} end | __Stack].

-file("erl_parse.erl", 19319).

-compile({inline, {yeccpars2_575_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_575_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_575_, 1}}).

-file("erl_parse.yrl", 164).

yeccpars2_575_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {ann_type, element(2, ___1), [___1, ___3]} end | __Stack].

-file("erl_parse.erl", 19330).

-compile({inline, {yeccpars2_578_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_578_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_578_, 1}}).

-file("erl_parse.yrl", 195).

yeccpars2_578_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {type, element(2, ___1), 'fun', []} end | __Stack].

-compile({inline, {yeccpars2_579_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_579_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_579_, 1}}).

-file("erl_parse.yrl", 196).

yeccpars2_579_(__Stack0) ->
    [___4, ___3, ___2, ___1 | __Stack] = __Stack0,
    [begin ___3 end | __Stack].

-file("erl_parse.erl", 19351).

-compile({inline, {yeccpars2_585_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_585_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_585_, 1}}).

-file("erl_parse.yrl", 177).

yeccpars2_585_(__Stack0) ->
    [___5, ___4, ___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {remote_type, element(2, ___1), [___1, ___3, []]} end |
     __Stack].

-file("erl_parse.erl", 19363).

-compile({inline, {yeccpars2_586_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_586_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_586_, 1}}).

-file("erl_parse.yrl", 179).

yeccpars2_586_(__Stack0) ->
    [___6, ___5, ___4, ___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {remote_type, element(2, ___1), [___1, ___3, ___5]} end |
     __Stack].

-compile({inline, {yeccpars2_588_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_588_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_588_, 1}}).

-file("erl_parse.yrl", 175).

yeccpars2_588_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin build_gen_type(___1) end | __Stack].

-compile({inline, {yeccpars2_589_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_589_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_589_, 1}}).

-file("erl_parse.yrl", 176).

yeccpars2_589_(__Stack0) ->
    [___4, ___3, ___2, ___1 | __Stack] = __Stack0,
    [begin build_type(___1, ___3) end | __Stack].

-file("erl_parse.erl", 19395).

-compile({inline, {yeccpars2_591_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_591_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_591_, 1}}).

-file("erl_parse.yrl", 181).

yeccpars2_591_(__Stack0) ->
    [___2, ___1 | __Stack] = __Stack0,
    [begin {type, element(2, ___1), nil, []} end | __Stack].

-file("erl_parse.erl", 19406).

-compile({inline, {yeccpars2_593_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_593_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_593_, 1}}).

-file("erl_parse.yrl", 182).

yeccpars2_593_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {type, element(2, ___1), list, [___2]} end | __Stack].

-file("erl_parse.erl", 19417).

-compile({inline, {yeccpars2_595_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_595_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_595_, 1}}).

-file("erl_parse.yrl", 183).

yeccpars2_595_(__Stack0) ->
    [___5, ___4, ___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {type, element(2, ___1), nonempty_list, [___2]} end |
     __Stack].

-file("erl_parse.erl", 19429).

-compile({inline, {yeccpars2_598_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_598_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_598_, 1}}).

-file("erl_parse.yrl", 220).

yeccpars2_598_(__Stack0) ->
    [___2, ___1 | __Stack] = __Stack0,
    [begin
         {type,
          element(2, ___1),
          binary,
          [abstract2(0, element(2, ___1)),
           abstract2(0, element(2, ___1))]}
     end |
     __Stack].

-compile({inline, {yeccpars2_601_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_601_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_601_, 1}}).

-file("erl_parse.yrl", 230).

yeccpars2_601_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin build_bin_type([___1], ___3) end | __Stack].

-compile({inline, {yeccpars2_602_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_602_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_602_, 1}}).

-file("erl_parse.yrl", 173).

yeccpars2_602_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_604_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_604_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_604_, 1}}).

-file("erl_parse.yrl", 232).

yeccpars2_604_(__Stack0) ->
    [___5, ___4, ___3, ___2, ___1 | __Stack] = __Stack0,
    [begin build_bin_type([___1, ___3], ___5) end | __Stack].

-compile({inline, {yeccpars2_605_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_605_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_605_, 1}}).

-file("erl_parse.yrl", 173).

yeccpars2_605_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-file("erl_parse.erl", 19482).

-compile({inline, {'yeccpars2_609_)', 1}}).

-dialyzer({nowarn_function, {'yeccpars2_609_)', 1}}).

-compile({nowarn_unused_function, {'yeccpars2_609_)', 1}}).

-file("erl_parse.yrl", 168).

'yeccpars2_609_)'(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {type, element(2, ___1), range, [___1, ___3]} end | __Stack].

-file("erl_parse.erl", 19493).

-compile({inline, {'yeccpars2_609_,', 1}}).

-dialyzer({nowarn_function, {'yeccpars2_609_,', 1}}).

-compile({nowarn_unused_function, {'yeccpars2_609_,', 1}}).

-file("erl_parse.yrl", 168).

'yeccpars2_609_,'(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {type, element(2, ___1), range, [___1, ___3]} end | __Stack].

-file("erl_parse.erl", 19504).

-compile({inline, {'yeccpars2_609_:=', 1}}).

-dialyzer({nowarn_function, {'yeccpars2_609_:=', 1}}).

-compile({nowarn_unused_function, {'yeccpars2_609_:=', 1}}).

-file("erl_parse.yrl", 168).

'yeccpars2_609_:='(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {type, element(2, ___1), range, [___1, ___3]} end | __Stack].

-file("erl_parse.erl", 19515).

-compile({inline, {'yeccpars2_609_;', 1}}).

-dialyzer({nowarn_function, {'yeccpars2_609_;', 1}}).

-compile({nowarn_unused_function, {'yeccpars2_609_;', 1}}).

-file("erl_parse.yrl", 168).

'yeccpars2_609_;'(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {type, element(2, ___1), range, [___1, ___3]} end | __Stack].

-file("erl_parse.erl", 19526).

-compile({inline, {'yeccpars2_609_=>', 1}}).

-dialyzer({nowarn_function, {'yeccpars2_609_=>', 1}}).

-compile({nowarn_unused_function, {'yeccpars2_609_=>', 1}}).

-file("erl_parse.yrl", 168).

'yeccpars2_609_=>'(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {type, element(2, ___1), range, [___1, ___3]} end | __Stack].

-file("erl_parse.erl", 19537).

-compile({inline, {'yeccpars2_609_>>', 1}}).

-dialyzer({nowarn_function, {'yeccpars2_609_>>', 1}}).

-compile({nowarn_unused_function, {'yeccpars2_609_>>', 1}}).

-file("erl_parse.yrl", 168).

'yeccpars2_609_>>'(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {type, element(2, ___1), range, [___1, ___3]} end | __Stack].

-file("erl_parse.erl", 19548).

-compile({inline, {'yeccpars2_609_]', 1}}).

-dialyzer({nowarn_function, {'yeccpars2_609_]', 1}}).

-compile({nowarn_unused_function, {'yeccpars2_609_]', 1}}).

-file("erl_parse.yrl", 168).

'yeccpars2_609_]'(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {type, element(2, ___1), range, [___1, ___3]} end | __Stack].

-file("erl_parse.erl", 19559).

-compile({inline, {yeccpars2_609_dot, 1}}).

-dialyzer({nowarn_function, {yeccpars2_609_dot, 1}}).

-compile({nowarn_unused_function, {yeccpars2_609_dot, 1}}).

-file("erl_parse.yrl", 168).

yeccpars2_609_dot(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {type, element(2, ___1), range, [___1, ___3]} end | __Stack].

-file("erl_parse.erl", 19570).

-compile({inline, {yeccpars2_609_when, 1}}).

-dialyzer({nowarn_function, {yeccpars2_609_when, 1}}).

-compile({nowarn_unused_function, {yeccpars2_609_when, 1}}).

-file("erl_parse.yrl", 168).

yeccpars2_609_when(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {type, element(2, ___1), range, [___1, ___3]} end | __Stack].

-file("erl_parse.erl", 19581).

-compile({inline, {'yeccpars2_609_|', 1}}).

-dialyzer({nowarn_function, {'yeccpars2_609_|', 1}}).

-compile({nowarn_unused_function, {'yeccpars2_609_|', 1}}).

-file("erl_parse.yrl", 168).

'yeccpars2_609_|'(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {type, element(2, ___1), range, [___1, ___3]} end | __Stack].

-file("erl_parse.erl", 19592).

-compile({inline, {'yeccpars2_609_}', 1}}).

-dialyzer({nowarn_function, {'yeccpars2_609_}', 1}}).

-compile({nowarn_unused_function, {'yeccpars2_609_}', 1}}).

-file("erl_parse.yrl", 168).

'yeccpars2_609_}'(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {type, element(2, ___1), range, [___1, ___3]} end | __Stack].

-file("erl_parse.erl", 19603).

-compile({inline, {yeccpars2_610_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_610_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_610_, 1}}).

-file("erl_parse.yrl", 169).

yeccpars2_610_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin
         begin
             {Op, Anno} = ___2,
             {op, Anno, Op, ___1, ___3}
         end
     end |
     __Stack].

-file("erl_parse.erl", 19614).

-compile({inline, {yeccpars2_611_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_611_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_611_, 1}}).

-file("erl_parse.yrl", 170).

yeccpars2_611_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin
         begin
             {Op, Anno} = ___2,
             {op, Anno, Op, ___1, ___3}
         end
     end |
     __Stack].

-file("erl_parse.erl", 19625).

-compile({inline, {yeccpars2_613_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_613_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_613_, 1}}).

-file("erl_parse.yrl", 223).

yeccpars2_613_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin
         {type,
          element(2, ___1),
          binary,
          [___2, abstract2(0, element(2, ___1))]}
     end |
     __Stack].

-file("erl_parse.erl", 19637).

-compile({inline, {yeccpars2_618_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_618_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_618_, 1}}).

-file("erl_parse.yrl", 228).

yeccpars2_618_(__Stack0) ->
    [___5, ___4, ___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {type, element(2, ___1), binary, [___2, ___4]} end | __Stack].

-file("erl_parse.erl", 19648).

-compile({inline, {yeccpars2_619_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_619_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_619_, 1}}).

-file("erl_parse.yrl", 225).

yeccpars2_619_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin
         {type,
          element(2, ___1),
          binary,
          [abstract2(0, element(2, ___1)), ___2]}
     end |
     __Stack].

-file("erl_parse.erl", 19660).

-compile({inline, {yeccpars2_622_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_622_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_622_, 1}}).

-file("erl_parse.yrl", 198).

yeccpars2_622_(__Stack0) ->
    [___5, ___4, ___3, ___2, ___1 | __Stack] = __Stack0,
    [begin
         {type,
          element(2, ___1),
          'fun',
          [{type, element(2, ___1), any}, ___5]}
     end |
     __Stack].

-file("erl_parse.erl", 19672).

-compile({inline, {yeccpars2_624_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_624_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_624_, 1}}).

-file("erl_parse.yrl", 200).

yeccpars2_624_(__Stack0) ->
    [___4, ___3, ___2, ___1 | __Stack] = __Stack0,
    [begin
         {type,
          element(2, ___1),
          'fun',
          [{type, element(2, ___1), product, []}, ___4]}
     end |
     __Stack].

-compile({inline, {yeccpars2_626_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_626_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_626_, 1}}).

-file("erl_parse.yrl", 172).

yeccpars2_626_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin ___2 end | __Stack].

-compile({inline, {yeccpars2_631_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_631_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_631_, 1}}).

-file("erl_parse.yrl", 206).

yeccpars2_631_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin [___1] end | __Stack].

-file("erl_parse.erl", 19704).

-compile({inline, {yeccpars2_632_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_632_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_632_, 1}}).

-file("erl_parse.yrl", 185).

yeccpars2_632_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {type, element(2, ___1), map, []} end | __Stack].

-compile({inline, {yeccpars2_634_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_634_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_634_, 1}}).

-file("erl_parse.yrl", 207).

yeccpars2_634_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin [___1 | ___3] end | __Stack].

-file("erl_parse.erl", 19725).

-compile({inline, {yeccpars2_635_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_635_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_635_, 1}}).

-file("erl_parse.yrl", 186).

yeccpars2_635_(__Stack0) ->
    [___4, ___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {type, element(2, ___1), map, ___3} end | __Stack].

-file("erl_parse.erl", 19736).

-compile({inline, {yeccpars2_638_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_638_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_638_, 1}}).

-file("erl_parse.yrl", 209).

yeccpars2_638_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {type, element(2, ___2), map_field_assoc, [___1, ___3]} end |
     __Stack].

-file("erl_parse.erl", 19748).

-compile({inline, {yeccpars2_639_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_639_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_639_, 1}}).

-file("erl_parse.yrl", 211).

yeccpars2_639_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {type, element(2, ___2), map_field_exact, [___1, ___3]} end |
     __Stack].

-compile({inline, {yeccpars2_642_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_642_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_642_, 1}}).

-file("erl_parse.yrl", 214).

yeccpars2_642_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin [___1] end | __Stack].

-file("erl_parse.erl", 19770).

-compile({inline, {yeccpars2_644_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_644_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_644_, 1}}).

-file("erl_parse.yrl", 189).

yeccpars2_644_(__Stack0) ->
    [___4, ___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {type, element(2, ___1), record, [___2]} end | __Stack].

-file("erl_parse.erl", 19781).

-compile({inline, {yeccpars2_646_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_646_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_646_, 1}}).

-file("erl_parse.yrl", 217).

yeccpars2_646_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {type, element(2, ___1), field_type, [___1, ___3]} end |
     __Stack].

-compile({inline, {yeccpars2_648_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_648_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_648_, 1}}).

-file("erl_parse.yrl", 215).

yeccpars2_648_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin [___1 | ___3] end | __Stack].

-file("erl_parse.erl", 19803).

-compile({inline, {yeccpars2_649_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_649_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_649_, 1}}).

-file("erl_parse.yrl", 190).

yeccpars2_649_(__Stack0) ->
    [___5, ___4, ___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {type, element(2, ___1), record, [___2 | ___4]} end |
     __Stack].

-file("erl_parse.erl", 19815).

-compile({inline, {yeccpars2_650_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_650_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_650_, 1}}).

-file("erl_parse.yrl", 171).

yeccpars2_650_(__Stack0) ->
    [___2, ___1 | __Stack] = __Stack0,
    [begin
         begin
             {Op, Anno} = ___1,
             {op, Anno, Op, ___2}
         end
     end |
     __Stack].

-compile({inline, {yeccpars2_652_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_652_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_652_, 1}}).

-file("erl_parse.yrl", 162).

yeccpars2_652_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin [___1 | ___3] end | __Stack].

-file("erl_parse.erl", 19836).

-compile({inline, {yeccpars2_655_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_655_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_655_, 1}}).

-file("erl_parse.yrl", 203).

yeccpars2_655_(__Stack0) ->
    [___5, ___4, ___3, ___2, ___1 | __Stack] = __Stack0,
    [begin
         {type,
          element(2, ___1),
          'fun',
          [{type, element(2, ___1), product, ___2}, ___5]}
     end |
     __Stack].

-compile({inline, {yeccpars2_657_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_657_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_657_, 1}}).

-file("erl_parse.yrl", 165).

yeccpars2_657_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin lift_unions(___1, ___3) end | __Stack].

-file("erl_parse.erl", 19858).

-compile({inline, {yeccpars2_659_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_659_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_659_, 1}}).

-file("erl_parse.yrl", 152).

yeccpars2_659_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {type, element(2, ___1), bounded_fun, [___1, ___3]} end |
     __Stack].

-compile({inline, {yeccpars2_660_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_660_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_660_, 1}}).

-file("erl_parse.yrl", 155).

yeccpars2_660_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin [___1] end | __Stack].

-compile({inline, {yeccpars2_664_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_664_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_664_, 1}}).

-file("erl_parse.yrl", 159).

yeccpars2_664_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin build_constraint(___1, ___3) end | __Stack].

-compile({inline, {yeccpars2_667_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_667_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_667_, 1}}).

-file("erl_parse.yrl", 158).

yeccpars2_667_(__Stack0) ->
    [___4, ___3, ___2, ___1 | __Stack] = __Stack0,
    [begin build_compat_constraint(___1, ___3) end | __Stack].

-compile({inline, {yeccpars2_669_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_669_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_669_, 1}}).

-file("erl_parse.yrl", 156).

yeccpars2_669_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin [___1 | ___3] end | __Stack].

-compile({inline, {yeccpars2_671_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_671_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_671_, 1}}).

-file("erl_parse.yrl", 149).

yeccpars2_671_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin [___1 | ___3] end | __Stack].

-compile({inline, {yeccpars2_672_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_672_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_672_, 1}}).

-file("erl_parse.yrl", 131).

yeccpars2_672_(__Stack0) ->
    [___4, ___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {___2, ___3} end | __Stack].

-compile({inline, {yeccpars2_673_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_673_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_673_, 1}}).

-file("erl_parse.yrl", 130).

yeccpars2_673_(__Stack0) ->
    [___2, ___1 | __Stack] = __Stack0,
    [begin {___1, ___2} end | __Stack].

-compile({inline, {yeccpars2_674_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_674_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_674_, 1}}).

-file("erl_parse.yrl", 128).

yeccpars2_674_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin build_type_spec(___2, ___3) end | __Stack].

-compile({inline, {yeccpars2_675_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_675_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_675_, 1}}).

-file("erl_parse.yrl", 125).

yeccpars2_675_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin build_typed_attribute(___2, ___3) end | __Stack].

-compile({inline, {yeccpars2_676_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_676_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_676_, 1}}).

-file("erl_parse.yrl", 234).

yeccpars2_676_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin [___1] end | __Stack].

-compile({inline, {yeccpars2_677_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_677_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_677_, 1}}).

-file("erl_parse.yrl", 124).

yeccpars2_677_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin build_attribute(___2, ___3) end | __Stack].

-compile({inline, {yeccpars2_683_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_683_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_683_, 1}}).

-file("erl_parse.yrl", 137).

yeccpars2_683_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {type_def, ___1, ___3} end | __Stack].

-compile({inline, {yeccpars2_684_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_684_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_684_, 1}}).

-file("erl_parse.yrl", 136).

yeccpars2_684_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {typed_record, ___1, ___3} end | __Stack].

-compile({inline, {yeccpars2_688_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_688_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_688_, 1}}).

-file("erl_parse.yrl", 141).

yeccpars2_688_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin [___1] end | __Stack].

-compile({inline, {yeccpars2_689_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_689_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_689_, 1}}).

-file("erl_parse.yrl", 554).

yeccpars2_689_(__Stack0) ->
    [___1 | __Stack] = __Stack0,
    [begin [___1] end | __Stack].

-compile({inline, {yeccpars2_692_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_692_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_692_, 1}}).

-file("erl_parse.yrl", 146).

yeccpars2_692_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {typed, ___1, ___3} end | __Stack].

-compile({inline, {yeccpars2_693_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_693_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_693_, 1}}).

-file("erl_parse.yrl", 143).

yeccpars2_693_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin [___1 | ___3] end | __Stack].

-compile({inline, {yeccpars2_695_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_695_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_695_, 1}}).

-file("erl_parse.yrl", 142).

yeccpars2_695_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin [___1 | ___3] end | __Stack].

-compile({inline, {yeccpars2_696_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_696_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_696_, 1}}).

-file("erl_parse.yrl", 144).

yeccpars2_696_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin [___1 | ___3] end | __Stack].

-file("erl_parse.erl", 20060).

-compile({inline, {yeccpars2_697_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_697_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_697_, 1}}).

-file("erl_parse.yrl", 139).

yeccpars2_697_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin {tuple, element(2, ___1), ___2} end | __Stack].

-compile({inline, {yeccpars2_698_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_698_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_698_, 1}}).

-file("erl_parse.yrl", 236).

yeccpars2_698_(__Stack0) ->
    [___5, ___4, ___3, ___2, ___1 | __Stack] = __Stack0,
    [begin [___2 | ___4] end | __Stack].

-compile({inline, {yeccpars2_699_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_699_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_699_, 1}}).

-file("erl_parse.yrl", 126).

yeccpars2_699_(__Stack0) ->
    [___5, ___4, ___3, ___2, ___1 | __Stack] = __Stack0,
    [begin build_typed_attribute(___2, ___4) end | __Stack].

-compile({inline, {yeccpars2_701_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_701_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_701_, 1}}).

-file("erl_parse.yrl", 235).

yeccpars2_701_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin [___1 | ___3] end | __Stack].

-compile({inline, {yeccpars2_702_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_702_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_702_, 1}}).

-file("erl_parse.yrl", 121).

yeccpars2_702_(__Stack0) ->
    [___2, ___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_703_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_703_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_703_, 1}}).

-file("erl_parse.yrl", 122).

yeccpars2_703_(__Stack0) ->
    [___2, ___1 | __Stack] = __Stack0,
    [begin ___1 end | __Stack].

-compile({inline, {yeccpars2_705_, 1}}).

-dialyzer({nowarn_function, {yeccpars2_705_, 1}}).

-compile({nowarn_unused_function, {yeccpars2_705_, 1}}).

-file("erl_parse.yrl", 241).

yeccpars2_705_(__Stack0) ->
    [___3, ___2, ___1 | __Stack] = __Stack0,
    [begin [___1 | ___3] end | __Stack].

-file("erl_parse.yrl", 2332).



