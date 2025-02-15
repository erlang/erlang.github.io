-file("/buildroot/otp/Erlang ∅⊤℞/lib/stdlib-6.2/src/erl_internal.erl",
      1).

-module(erl_internal).

-export([bif/2,
         bif/3,
         guard_bif/2,
         type_test/2,
         new_type_test/2,
         old_type_test/2]).

-export([arith_op/2,bool_op/2,comp_op/2,list_op/2,send_op/2,op_type/2]).

-export([is_type/2]).

-export([add_predefined_functions/1]).

-spec guard_bif(Name, Arity) -> boolean()
                   when Name :: atom(), Arity :: arity().

guard_bif(abs, 1) ->
    true;
guard_bif(binary_part, 2) ->
    true;
guard_bif(binary_part, 3) ->
    true;
guard_bif(bit_size, 1) ->
    true;
guard_bif(byte_size, 1) ->
    true;
guard_bif(ceil, 1) ->
    true;
guard_bif(element, 2) ->
    true;
guard_bif(float, 1) ->
    true;
guard_bif(floor, 1) ->
    true;
guard_bif(hd, 1) ->
    true;
guard_bif(is_map_key, 2) ->
    true;
guard_bif(length, 1) ->
    true;
guard_bif(map_size, 1) ->
    true;
guard_bif(map_get, 2) ->
    true;
guard_bif(max, 2) ->
    true;
guard_bif(min, 2) ->
    true;
guard_bif(node, 0) ->
    true;
guard_bif(node, 1) ->
    true;
guard_bif(round, 1) ->
    true;
guard_bif(self, 0) ->
    true;
guard_bif(size, 1) ->
    true;
guard_bif(tl, 1) ->
    true;
guard_bif(trunc, 1) ->
    true;
guard_bif(tuple_size, 1) ->
    true;
guard_bif(Name, A) ->
    new_type_test(Name, A).

-spec type_test(Name, Arity) -> boolean()
                   when Name :: atom(), Arity :: arity().

type_test(Name, Arity) ->
    new_type_test(Name, Arity)
    orelse
    old_type_test(Name, Arity).

-spec new_type_test(Name :: atom(), Arity :: arity()) -> boolean().

new_type_test(is_atom, 1) ->
    true;
new_type_test(is_binary, 1) ->
    true;
new_type_test(is_bitstring, 1) ->
    true;
new_type_test(is_boolean, 1) ->
    true;
new_type_test(is_float, 1) ->
    true;
new_type_test(is_function, 1) ->
    true;
new_type_test(is_function, 2) ->
    true;
new_type_test(is_integer, 1) ->
    true;
new_type_test(is_list, 1) ->
    true;
new_type_test(is_map, 1) ->
    true;
new_type_test(is_number, 1) ->
    true;
new_type_test(is_pid, 1) ->
    true;
new_type_test(is_port, 1) ->
    true;
new_type_test(is_record, 2) ->
    true;
new_type_test(is_record, 3) ->
    true;
new_type_test(is_reference, 1) ->
    true;
new_type_test(is_tuple, 1) ->
    true;
new_type_test(Name, A) when is_atom(Name), is_integer(A) ->
    false.

-spec old_type_test(Name :: atom(), Arity :: arity()) -> boolean().

old_type_test(integer, 1) ->
    true;
old_type_test(float, 1) ->
    true;
old_type_test(number, 1) ->
    true;
old_type_test(atom, 1) ->
    true;
old_type_test(list, 1) ->
    true;
old_type_test(tuple, 1) ->
    true;
old_type_test(pid, 1) ->
    true;
old_type_test(reference, 1) ->
    true;
old_type_test(port, 1) ->
    true;
old_type_test(binary, 1) ->
    true;
old_type_test(record, 2) ->
    true;
old_type_test(function, 1) ->
    true;
old_type_test(Name, A) when is_atom(Name), is_integer(A) ->
    false.

-spec arith_op(OpName, Arity) -> boolean()
                  when OpName :: atom(), Arity :: arity().

arith_op('+', 1) ->
    true;
arith_op('-', 1) ->
    true;
arith_op('*', 2) ->
    true;
arith_op('/', 2) ->
    true;
arith_op('+', 2) ->
    true;
arith_op('-', 2) ->
    true;
arith_op('bnot', 1) ->
    true;
arith_op('div', 2) ->
    true;
arith_op('rem', 2) ->
    true;
arith_op('band', 2) ->
    true;
arith_op('bor', 2) ->
    true;
arith_op('bxor', 2) ->
    true;
arith_op('bsl', 2) ->
    true;
arith_op('bsr', 2) ->
    true;
arith_op(Op, A) when is_atom(Op), is_integer(A) ->
    false.

-spec bool_op(OpName, Arity) -> boolean()
                 when OpName :: atom(), Arity :: arity().

bool_op('not', 1) ->
    true;
bool_op('and', 2) ->
    true;
bool_op('or', 2) ->
    true;
bool_op('xor', 2) ->
    true;
bool_op(Op, A) when is_atom(Op), is_integer(A) ->
    false.

-spec comp_op(OpName, Arity) -> boolean()
                 when OpName :: atom(), Arity :: arity().

comp_op('==', 2) ->
    true;
comp_op('/=', 2) ->
    true;
comp_op('=<', 2) ->
    true;
comp_op('<', 2) ->
    true;
comp_op('>=', 2) ->
    true;
comp_op('>', 2) ->
    true;
comp_op('=:=', 2) ->
    true;
comp_op('=/=', 2) ->
    true;
comp_op(Op, A) when is_atom(Op), is_integer(A) ->
    false.

-spec list_op(OpName, Arity) -> boolean()
                 when OpName :: atom(), Arity :: arity().

list_op('++', 2) ->
    true;
list_op('--', 2) ->
    true;
list_op(Op, A) when is_atom(Op), is_integer(A) ->
    false.

-spec send_op(OpName, Arity) -> boolean()
                 when OpName :: atom(), Arity :: arity().

send_op('!', 2) ->
    true;
send_op(Op, A) when is_atom(Op), is_integer(A) ->
    false.

-spec op_type(OpName, Arity) -> Type
                 when
                     OpName :: atom(),
                     Arity :: arity(),
                     Type :: arith | bool | comp | list | send.

op_type('+', 1) ->
    arith;
op_type('-', 1) ->
    arith;
op_type('*', 2) ->
    arith;
op_type('/', 2) ->
    arith;
op_type('+', 2) ->
    arith;
op_type('-', 2) ->
    arith;
op_type('bnot', 1) ->
    arith;
op_type('div', 2) ->
    arith;
op_type('rem', 2) ->
    arith;
op_type('band', 2) ->
    arith;
op_type('bor', 2) ->
    arith;
op_type('bxor', 2) ->
    arith;
op_type('bsl', 2) ->
    arith;
op_type('bsr', 2) ->
    arith;
op_type('not', 1) ->
    bool;
op_type('and', 2) ->
    bool;
op_type('or', 2) ->
    bool;
op_type('xor', 2) ->
    bool;
op_type('==', 2) ->
    comp;
op_type('/=', 2) ->
    comp;
op_type('=<', 2) ->
    comp;
op_type('<', 2) ->
    comp;
op_type('>=', 2) ->
    comp;
op_type('>', 2) ->
    comp;
op_type('=:=', 2) ->
    comp;
op_type('=/=', 2) ->
    comp;
op_type('++', 2) ->
    list;
op_type('--', 2) ->
    list;
op_type('!', 2) ->
    send.

-spec bif(Mod :: atom(), Name :: atom(), Arity :: arity()) -> boolean().

bif(erlang, Name, Arity) ->
    bif(Name, Arity);
bif(M, F, A) when is_atom(M), is_atom(F), is_integer(A) ->
    false.

-spec bif(Name, Arity) -> boolean()
             when Name :: atom(), Arity :: arity().

bif(abs, 1) ->
    true;
bif(alias, 0) ->
    true;
bif(alias, 1) ->
    true;
bif(apply, 2) ->
    true;
bif(apply, 3) ->
    true;
bif(atom_to_binary, 1) ->
    true;
bif(atom_to_binary, 2) ->
    true;
bif(atom_to_list, 1) ->
    true;
bif(binary_part, 2) ->
    true;
bif(binary_part, 3) ->
    true;
bif(binary_to_atom, 1) ->
    true;
bif(binary_to_atom, 2) ->
    true;
bif(binary_to_existing_atom, 1) ->
    true;
bif(binary_to_existing_atom, 2) ->
    true;
bif(binary_to_integer, 1) ->
    true;
bif(binary_to_integer, 2) ->
    true;
bif(binary_to_float, 1) ->
    true;
bif(binary_to_list, 1) ->
    true;
bif(binary_to_list, 3) ->
    true;
bif(binary_to_term, 1) ->
    true;
bif(binary_to_term, 2) ->
    true;
bif(bitsize, 1) ->
    true;
bif(bit_size, 1) ->
    true;
bif(bitstring_to_list, 1) ->
    true;
bif(byte_size, 1) ->
    true;
bif(ceil, 1) ->
    true;
bif(check_old_code, 1) ->
    true;
bif(check_process_code, 2) ->
    true;
bif(check_process_code, 3) ->
    true;
bif(date, 0) ->
    true;
bif(delete_module, 1) ->
    true;
bif(demonitor, 1) ->
    true;
bif(demonitor, 2) ->
    true;
bif(disconnect_node, 1) ->
    true;
bif(element, 2) ->
    true;
bif(erase, 0) ->
    true;
bif(erase, 1) ->
    true;
bif(error, 1) ->
    true;
bif(error, 2) ->
    true;
bif(error, 3) ->
    true;
bif(exit, 1) ->
    true;
bif(exit, 2) ->
    true;
bif(float, 1) ->
    true;
bif(float_to_list, 1) ->
    true;
bif(float_to_list, 2) ->
    true;
bif(float_to_binary, 1) ->
    true;
bif(float_to_binary, 2) ->
    true;
bif(floor, 1) ->
    true;
bif(garbage_collect, 0) ->
    true;
bif(garbage_collect, 1) ->
    true;
bif(garbage_collect, 2) ->
    true;
bif(get, 0) ->
    true;
bif(get, 1) ->
    true;
bif(get_keys, 0) ->
    true;
bif(get_keys, 1) ->
    true;
bif(group_leader, 0) ->
    true;
bif(group_leader, 2) ->
    true;
bif(halt, 0) ->
    true;
bif(halt, 1) ->
    true;
bif(halt, 2) ->
    true;
bif(hd, 1) ->
    true;
bif(integer_to_binary, 1) ->
    true;
bif(integer_to_binary, 2) ->
    true;
bif(integer_to_list, 1) ->
    true;
bif(integer_to_list, 2) ->
    true;
bif(iolist_size, 1) ->
    true;
bif(iolist_to_binary, 1) ->
    true;
bif(is_alive, 0) ->
    true;
bif(is_process_alive, 1) ->
    true;
bif(is_atom, 1) ->
    true;
bif(is_boolean, 1) ->
    true;
bif(is_binary, 1) ->
    true;
bif(is_bitstring, 1) ->
    true;
bif(is_float, 1) ->
    true;
bif(is_function, 1) ->
    true;
bif(is_function, 2) ->
    true;
bif(is_integer, 1) ->
    true;
bif(is_list, 1) ->
    true;
bif(is_map, 1) ->
    true;
bif(is_map_key, 2) ->
    true;
bif(is_number, 1) ->
    true;
bif(is_pid, 1) ->
    true;
bif(is_port, 1) ->
    true;
bif(is_reference, 1) ->
    true;
bif(is_tuple, 1) ->
    true;
bif(is_record, 2) ->
    true;
bif(is_record, 3) ->
    true;
bif(length, 1) ->
    true;
bif(link, 1) ->
    true;
bif(list_to_atom, 1) ->
    true;
bif(list_to_binary, 1) ->
    true;
bif(list_to_bitstring, 1) ->
    true;
bif(list_to_existing_atom, 1) ->
    true;
bif(list_to_float, 1) ->
    true;
bif(list_to_integer, 1) ->
    true;
bif(list_to_integer, 2) ->
    true;
bif(list_to_pid, 1) ->
    true;
bif(list_to_port, 1) ->
    true;
bif(list_to_ref, 1) ->
    true;
bif(list_to_tuple, 1) ->
    true;
bif(load_module, 2) ->
    true;
bif(make_ref, 0) ->
    true;
bif(map_size, 1) ->
    true;
bif(map_get, 2) ->
    true;
bif(max, 2) ->
    true;
bif(min, 2) ->
    true;
bif(module_loaded, 1) ->
    true;
bif(monitor, 2) ->
    true;
bif(monitor, 3) ->
    true;
bif(monitor_node, 2) ->
    true;
bif(node, 0) ->
    true;
bif(node, 1) ->
    true;
bif(nodes, 0) ->
    true;
bif(nodes, 1) ->
    true;
bif(nodes, 2) ->
    true;
bif(now, 0) ->
    true;
bif(open_port, 2) ->
    true;
bif(pid_to_list, 1) ->
    true;
bif(port_to_list, 1) ->
    true;
bif(port_close, 1) ->
    true;
bif(port_command, 2) ->
    true;
bif(port_command, 3) ->
    true;
bif(port_connect, 2) ->
    true;
bif(port_control, 3) ->
    true;
bif(pre_loaded, 0) ->
    true;
bif(process_flag, 2) ->
    true;
bif(process_flag, 3) ->
    true;
bif(process_info, 1) ->
    true;
bif(process_info, 2) ->
    true;
bif(processes, 0) ->
    true;
bif(purge_module, 1) ->
    true;
bif(put, 2) ->
    true;
bif(ref_to_list, 1) ->
    true;
bif(register, 2) ->
    true;
bif(registered, 0) ->
    true;
bif(round, 1) ->
    true;
bif(self, 0) ->
    true;
bif(setelement, 3) ->
    true;
bif(size, 1) ->
    true;
bif(spawn, 1) ->
    true;
bif(spawn, 2) ->
    true;
bif(spawn, 3) ->
    true;
bif(spawn, 4) ->
    true;
bif(spawn_link, 1) ->
    true;
bif(spawn_link, 2) ->
    true;
bif(spawn_link, 3) ->
    true;
bif(spawn_link, 4) ->
    true;
bif(spawn_request, 1) ->
    true;
bif(spawn_request, 2) ->
    true;
bif(spawn_request, 3) ->
    true;
bif(spawn_request, 4) ->
    true;
bif(spawn_request, 5) ->
    true;
bif(spawn_request_abandon, 1) ->
    true;
bif(spawn_monitor, 1) ->
    true;
bif(spawn_monitor, 2) ->
    true;
bif(spawn_monitor, 3) ->
    true;
bif(spawn_monitor, 4) ->
    true;
bif(spawn_opt, 2) ->
    true;
bif(spawn_opt, 3) ->
    true;
bif(spawn_opt, 4) ->
    true;
bif(spawn_opt, 5) ->
    true;
bif(split_binary, 2) ->
    true;
bif(statistics, 1) ->
    true;
bif(term_to_binary, 1) ->
    true;
bif(term_to_binary, 2) ->
    true;
bif(term_to_iovec, 1) ->
    true;
bif(term_to_iovec, 2) ->
    true;
bif(throw, 1) ->
    true;
bif(time, 0) ->
    true;
bif(tl, 1) ->
    true;
bif(trunc, 1) ->
    true;
bif(tuple_size, 1) ->
    true;
bif(tuple_to_list, 1) ->
    true;
bif(unalias, 1) ->
    true;
bif(unlink, 1) ->
    true;
bif(unregister, 1) ->
    true;
bif(whereis, 1) ->
    true;
bif(Name, A) when is_atom(Name), is_integer(A) ->
    false.

-spec is_type(Name, NumberOfTypeVariables) -> boolean()
                 when
                     Name :: atom(),
                     NumberOfTypeVariables :: non_neg_integer().

is_type(any, 0) ->
    true;
is_type(arity, 0) ->
    true;
is_type(atom, 0) ->
    true;
is_type(binary, 0) ->
    true;
is_type(bitstring, 0) ->
    true;
is_type(bool, 0) ->
    true;
is_type(boolean, 0) ->
    true;
is_type(byte, 0) ->
    true;
is_type(char, 0) ->
    true;
is_type(dynamic, 0) ->
    true;
is_type(float, 0) ->
    true;
is_type(function, 0) ->
    true;
is_type(identifier, 0) ->
    true;
is_type(integer, 0) ->
    true;
is_type(iodata, 0) ->
    true;
is_type(iolist, 0) ->
    true;
is_type(list, 0) ->
    true;
is_type(list, 1) ->
    true;
is_type(map, 0) ->
    true;
is_type(maybe_improper_list, 0) ->
    true;
is_type(maybe_improper_list, 2) ->
    true;
is_type(mfa, 0) ->
    true;
is_type(module, 0) ->
    true;
is_type(neg_integer, 0) ->
    true;
is_type(nil, 0) ->
    true;
is_type(no_return, 0) ->
    true;
is_type(node, 0) ->
    true;
is_type(non_neg_integer, 0) ->
    true;
is_type(none, 0) ->
    true;
is_type(nonempty_binary, 0) ->
    true;
is_type(nonempty_bitstring, 0) ->
    true;
is_type(nonempty_improper_list, 2) ->
    true;
is_type(nonempty_list, 0) ->
    true;
is_type(nonempty_list, 1) ->
    true;
is_type(nonempty_maybe_improper_list, 0) ->
    true;
is_type(nonempty_maybe_improper_list, 2) ->
    true;
is_type(nonempty_string, 0) ->
    true;
is_type(number, 0) ->
    true;
is_type(pid, 0) ->
    true;
is_type(port, 0) ->
    true;
is_type(pos_integer, 0) ->
    true;
is_type(reference, 0) ->
    true;
is_type(string, 0) ->
    true;
is_type(term, 0) ->
    true;
is_type(timeout, 0) ->
    true;
is_type(tuple, 0) ->
    true;
is_type(_, _) ->
    false.

-spec add_predefined_functions(Forms) -> UpdatedForms
                                  when
                                      Forms ::
                                          [erl_parse:abstract_form() |
                                           erl_parse:form_info()],
                                      UpdatedForms ::
                                          [erl_parse:abstract_form() |
                                           erl_parse:form_info()].

add_predefined_functions(Forms) ->
    Forms ++ predefined_functions(Forms).

predefined_functions(Forms) ->
    Attrs =
        [ 
         {Name, Val} ||
             {attribute, _, Name, Val} <- Forms
        ],
    {module, Mod} = lists:keyfind(module, 1, Attrs),
    Callbacks =
        [ 
         Callback ||
             {callback, Callback} <- Attrs
        ],
    OptionalCallbacks = get_optional_callbacks(Attrs),
    Mpf1 = module_predef_func_beh_info(Callbacks, OptionalCallbacks),
    Mpf2 = module_predef_funcs_mod_info(Mod),
    Mpf =
        [ 
         erl_parse:new_anno(F) ||
             F <- Mpf1 ++ Mpf2
        ],
    Exp =
        [ 
         {F, A} ||
             {function, _, F, A, _} <- Mpf
        ],
    [{attribute, 0, export, Exp} | Mpf].

get_optional_callbacks(Attrs) ->
    L = [ 
         O ||
             {optional_callbacks, O} <- Attrs,
             is_fa_list(O)
        ],
    lists:append(L).

is_fa_list([{FuncName, Arity} | L])
    when is_atom(FuncName), is_integer(Arity), Arity >= 0 ->
    is_fa_list(L);
is_fa_list([]) ->
    true;
is_fa_list(_) ->
    false.

module_predef_func_beh_info([], _) ->
    [];
module_predef_func_beh_info(Callbacks0, OptionalCallbacks) ->
    Callbacks =
        [ 
         FA ||
             {{_, _} = FA, _} <- Callbacks0
        ],
    List = make_list(Callbacks),
    OptionalList = make_list(OptionalCallbacks),
    [{function, 0, behaviour_info, 1,
      [{clause, 0, [{atom, 0, callbacks}], [], [List]},
       {clause, 0, [{atom, 0, optional_callbacks}], [], [OptionalList]}]}].

make_list([]) ->
    {nil, 0};
make_list([{Name, Arity} | Rest]) ->
    {cons, 0,
     {tuple, 0, [{atom, 0, Name}, {integer, 0, Arity}]},
     make_list(Rest)}.

module_predef_funcs_mod_info(Mod) ->
    ModAtom = {atom, 0, Mod},
    [{function, 0, module_info, 0,
      [{clause, 0, [], [],
        [{call, 0,
          {remote, 0, {atom, 0, erlang}, {atom, 0, get_module_info}},
          [ModAtom]}]}]},
     {function, 0, module_info, 1,
      [{clause, 0,
        [{var, 0, 'X'}],
        [],
        [{call, 0,
          {remote, 0, {atom, 0, erlang}, {atom, 0, get_module_info}},
          [ModAtom, {var, 0, 'X'}]}]}]}].



