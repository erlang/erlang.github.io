{module, on_load_inline}.  %% version = 0

{exports, [{module_info,0},{module_info,1},{on_load,0},{on_load_inline,0}]}.

{attributes, [{on_load,[{on_load,0}]}]}.

{labels, 18}.


{function, on_load_inline, 0, 2}.
  {label,1}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/on_load_inline.erl",
                     6}]}.
    {func_info,{atom,on_load_inline},{atom,on_load_inline},0}.
  {label,2}.
    {allocate,0,0}.
    {move,{atom,pid},{x,1}}.
    {move,{atom,on_load_executed},{x,0}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/on_load_inline.erl",
                     7}]}.
    {call_ext,2,{extfunc,ets,lookup,2}}.
    {test,is_nonempty_list,{f,3},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_tagged_tuple,{f,3},[{x,1},2,{atom,pid}]}.
    {test,is_nil,{f,3},[{x,2}]}.
    {get_tuple_element,{x,1},1,{x,0}}.
    {move,{atom,kill},{x,1}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/on_load_inline.erl",
                     8}]}.
    {call_ext,2,{extfunc,erlang,exit,2}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,3}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/on_load_inline.erl",
                     7}]}.
    {badmatch,{x,0}}.


{function, on_load, 0, 5}.
  {label,4}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/on_load_inline.erl",
                     11}]}.
    {func_info,{atom,on_load_inline},{atom,on_load},0}.
  {label,5}.
    {allocate_heap,0,{alloc,[{words,1},{floats,0},{funs,1}]},0}.
    {bif,self,{f,0},[],{x,0}}.
    {make_fun3,{f,14},0,0,{x,0},{list,[{x,0}]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[ok]}}]}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/on_load_inline.erl",
                     13}]}.
    {call_ext,1,{extfunc,erlang,spawn,1}}.
  {label,6}.
    {loop_rec,{f,8},{x,0}}.
    {test,is_eq_exact,{f,7},[{x,0},{atom,done}]}.
    remove_message.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,7}.
    {loop_rec_end,{f,6}}.
  {label,8}.
    {wait,{f,6}}.


{function, module_info, 0, 10}.
  {label,9}.
    {line,[]}.
    {func_info,{atom,on_load_inline},{atom,module_info},0}.
  {label,10}.
    {move,{atom,on_load_inline},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 12}.
  {label,11}.
    {line,[]}.
    {func_info,{atom,on_load_inline},{atom,module_info},1}.
  {label,12}.
    {move,{x,0},{x,1}}.
    {move,{atom,on_load_inline},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-on_load/0-anonymous-0-', 1, 14}.
  {label,13}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/on_load_inline.erl",
                     13}]}.
    {func_info,{atom,on_load_inline},{atom,'-on_load/0-anonymous-0-'},1}.
  {label,14}.
    {'%',{var_info,{x,0},[{type,pid}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{literal,[named_table]},{x,1}}.
    {move,{atom,on_load_executed},{x,0}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/on_load_inline.erl",
                     14}]}.
    {call_ext,2,{extfunc,ets,new,2}}.
    {test_heap,3,1}.
    {bif,self,{f,0},[],{x,1}}.
    {put_tuple2,{x,1},{list,[{atom,pid},{x,1}]}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/on_load_inline.erl",
                     15}]}.
    {call_ext,2,{extfunc,ets,insert,2}}.
    {move,{atom,done},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/on_load_inline.erl",
                     16}]}.
    send.
  {label,15}.
    {loop_rec,{f,17},{x,0}}.
    {test,is_eq_exact,{f,16},[{x,0},{atom,wait_forever}]}.
    remove_message.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,16}.
    {loop_rec_end,{f,15}}.
  {label,17}.
    {wait,{f,15}}.
