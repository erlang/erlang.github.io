{module, beam_compiler_8}.  %% version = 0

{exports, [{beam_compiler_8,0},{module_info,0},{module_info,1},{t,2}]}.

{attributes, []}.

{labels, 11}.


{function, beam_compiler_8, 0, 2}.
  {label,1}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/beam_compiler_8.erl",
                     24}]}.
    {func_info,{atom,beam_compiler_8},{atom,beam_compiler_8},0}.
  {label,2}.
    {move,{atom,ok},{x,0}}.
    return.


{function, t, 2, 4}.
  {label,3}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/beam_compiler_8.erl",
                     27}]}.
    {func_info,{atom,beam_compiler_8},{atom,t},2}.
  {label,4}.
    {test_heap,{alloc,[{words,2},{floats,0},{funs,1}]},2}.
    {make_fun3,{f,10},0,0,{x,0},{list,[{x,0},{x,1}]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[false,true]}}]}}.
    return.


{function, module_info, 0, 6}.
  {label,5}.
    {line,[]}.
    {func_info,{atom,beam_compiler_8},{atom,module_info},0}.
  {label,6}.
    {move,{atom,beam_compiler_8},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 8}.
  {label,7}.
    {line,[]}.
    {func_info,{atom,beam_compiler_8},{atom,module_info},1}.
  {label,8}.
    {move,{x,0},{x,1}}.
    {move,{atom,beam_compiler_8},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-t/2-fun-0-', 3, 10}.
  {label,9}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/beam_compiler_8.erl",
                     28}]}.
    {func_info,{atom,beam_compiler_8},{atom,'-t/2-fun-0-'},3}.
  {label,10}.
    {allocate,2,3}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{y,1}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/beam_compiler_8.erl",
                     29}]}.
    {call_ext,2,{extfunc,me_rec,key_values,2}}.
    {move,{y,0},{x,2}}.
    {move,{y,1},{x,1}}.
    {move,{x,0},{y,1}}.
    {trim,1,1}.
    {move,{x,2},{x,0}}.
    {call_ext,2,{extfunc,me_rec,key_values,2}}.
    {bif,'<',{f,0},[{y,0},{x,0}],{x,0}}.
    {deallocate,1}.
    return.
