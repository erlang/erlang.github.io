{module, beam_compiler_10}.  %% version = 0

{exports, [{beam_compiler_10,0},
           {module_info,0},
           {module_info,1},
           {start_timer,0}]}.

{attributes, []}.

{labels, 12}.


{function, beam_compiler_10, 0, 2}.
  {label,1}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/beam_compiler_10.erl",
                     23}]}.
    {func_info,{atom,beam_compiler_10},{atom,beam_compiler_10},0}.
  {label,2}.
    {move,{atom,ok},{x,0}}.
    return.


{function, start_timer, 0, 4}.
  {label,3}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/beam_compiler_10.erl",
                     26}]}.
    {func_info,{atom,beam_compiler_10},{atom,start_timer},0}.
  {label,4}.
    {test_heap,{alloc,[{words,1},{floats,0},{funs,1}]},0}.
    {bif,self,{f,0},[],{x,0}}.
    {make_fun3,{f,10},0,0,{x,0},{list,[{x,0}]}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/beam_compiler_10.erl",
                     28}]}.
    {call_ext_only,1,{extfunc,erlang,spawn,1}}.


{function, module_info, 0, 6}.
  {label,5}.
    {line,[]}.
    {func_info,{atom,beam_compiler_10},{atom,module_info},0}.
  {label,6}.
    {move,{atom,beam_compiler_10},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 8}.
  {label,7}.
    {line,[]}.
    {func_info,{atom,beam_compiler_10},{atom,module_info},1}.
  {label,8}.
    {move,{x,0},{x,1}}.
    {move,{atom,beam_compiler_10},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-start_timer/0-fun-0-', 1, 10}.
  {label,9}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/beam_compiler_10.erl",
                     28}]}.
    {func_info,{atom,beam_compiler_10},{atom,'-start_timer/0-fun-0-'},1}.
  {label,10}.
    {'%',{var_info,{x,0},[{type,pid}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
  {label,11}.
    {wait_timeout,{f,11},{integer,1000}}.
    timeout.
    {move,{atom,show},{x,1}}.
    {move,{y,0},{x,0}}.
    send.
    {deallocate,1}.
    return.
