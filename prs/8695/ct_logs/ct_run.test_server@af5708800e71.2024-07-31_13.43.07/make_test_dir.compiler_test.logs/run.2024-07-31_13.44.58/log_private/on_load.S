{module, on_load}.  %% version = 0

{exports, [{module_info,0},{module_info,1},{on_load,0}]}.

{attributes, [{on_load,[{do_on_load,0}]}]}.

{labels, 11}.


{function, on_load, 0, 2}.
  {label,1}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/on_load.erl",
                     10}]}.
    {func_info,{atom,on_load},{atom,on_load},0}.
  {label,2}.
    {move,{atom,ok},{x,0}}.
    return.


{function, do_on_load, 0, 4}.
  {label,3}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/on_load.erl",
                     13}]}.
    {func_info,{atom,on_load},{atom,do_on_load},0}.
  {label,4}.
    {call_only,0,{f,6}}. % local_function/0


{function, local_function, 0, 6}.
  {label,5}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/on_load.erl",
                     17}]}.
    {func_info,{atom,on_load},{atom,local_function},0}.
  {label,6}.
    {move,{atom,ok},{x,0}}.
    return.


{function, module_info, 0, 8}.
  {label,7}.
    {line,[]}.
    {func_info,{atom,on_load},{atom,module_info},0}.
  {label,8}.
    {move,{atom,on_load},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 10}.
  {label,9}.
    {line,[]}.
    {func_info,{atom,on_load},{atom,module_info},1}.
  {label,10}.
    {move,{x,0},{x,1}}.
    {move,{atom,on_load},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.
