{module, opt_crash}.  %% version = 0

{exports, [{module_info,0},{module_info,1},{opt_crash,0},{test,0}]}.

{attributes, []}.

{labels, 11}.


{function, opt_crash, 0, 2}.
  {label,1}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/opt_crash.erl",
                     23}]}.
    {func_info,{atom,opt_crash},{atom,opt_crash},0}.
  {label,2}.
    {move,{atom,ok},{x,0}}.
    return.


{function, test, 0, 4}.
  {label,3}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/opt_crash.erl",
                     26}]}.
    {func_info,{atom,opt_crash},{atom,test},0}.
  {label,4}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,10},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[nil]}}]}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/opt_crash.erl",
                     62}]}.
    {badmatch,{x,0}}.


{function, module_info, 0, 6}.
  {label,5}.
    {line,[]}.
    {func_info,{atom,opt_crash},{atom,module_info},0}.
  {label,6}.
    {move,{atom,opt_crash},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 8}.
  {label,7}.
    {line,[]}.
    {func_info,{atom,opt_crash},{atom,module_info},1}.
  {label,8}.
    {move,{x,0},{x,1}}.
    {move,{atom,opt_crash},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-test/0-fun-0-', 0, 10}.
  {label,9}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/opt_crash.erl",
                     34}]}.
    {func_info,{atom,opt_crash},{atom,'-test/0-fun-0-'},0}.
  {label,10}.
    {move,{atom,nil},{x,0}}.
    return.
