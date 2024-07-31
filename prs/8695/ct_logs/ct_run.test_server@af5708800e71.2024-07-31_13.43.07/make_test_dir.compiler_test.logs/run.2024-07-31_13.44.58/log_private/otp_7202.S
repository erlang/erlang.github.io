{module, otp_7202}.  %% version = 0

{exports, [{module_info,0},{module_info,1},{otp_7202,0}]}.

{attributes, []}.

{labels, 13}.


{function, otp_7202, 0, 2}.
  {label,1}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_7202.erl",
                     23}]}.
    {func_info,{atom,otp_7202},{atom,otp_7202},0}.
  {label,2}.
    {call_only,0,{f,4}}. % test/0


{function, test, 0, 4}.
  {label,3}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_7202.erl",
                     26}]}.
    {func_info,{atom,otp_7202},{atom,test},0}.
  {label,4}.
    {allocate,0,0}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_7202.erl",
                     28}]}.
    {call,0,{f,6}}. % func/0
    {'%',{var_info,{x,0},[{type,{t_atom,[no_value]}}]}}.
    {test_heap,{alloc,[{words,1},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,12},0,0,{x,0},{list,[{atom,true}]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[ok]}}]}}.
    {move,{literal,[a]},{x,1}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_7202.erl",
                     34}]}.
    {call_ext_last,2,{extfunc,lists,foreach,2},0}.


{function, func, 0, 6}.
  {label,5}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_7202.erl",
                     43}]}.
    {func_info,{atom,otp_7202},{atom,func},0}.
  {label,6}.
    {move,{atom,no_value},{x,0}}.
    return.


{function, module_info, 0, 8}.
  {label,7}.
    {line,[]}.
    {func_info,{atom,otp_7202},{atom,module_info},0}.
  {label,8}.
    {move,{atom,otp_7202},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 10}.
  {label,9}.
    {line,[]}.
    {func_info,{atom,otp_7202},{atom,module_info},1}.
  {label,10}.
    {move,{x,0},{x,1}}.
    {move,{atom,otp_7202},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-test/0-fun-0-', 2, 12}.
  {label,11}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_7202.erl",
                     34}]}.
    {func_info,{atom,otp_7202},{atom,'-test/0-fun-0-'},2}.
  {label,12}.
    {'%',{var_info,{x,1},[{type,{t_atom,[true]}}]}}.
    {move,{atom,ok},{x,0}}.
    return.
