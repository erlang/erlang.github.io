{module, embedded_line_coverage}.  %% version = 0

{exports, [{add,2},{module_info,0},{module_info,1}]}.

{attributes, []}.

{labels, 7}.


{function, add, 2, 2}.
  {label,1}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compile_SUITE_data/embedded_line_coverage.erl",
                     28}]}.
    {func_info,{atom,embedded_line_coverage},{atom,add},2}.
  {label,2}.
    {executable_line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compile_SUITE_data/embedded_line_coverage.erl",
                                29}],
                     1}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compile_SUITE_data/embedded_line_coverage.erl",
                     29}]}.
    {gc_bif,'+',{f,0},2,[{x,0},{x,1}],{x,0}}.
    return.


{function, module_info, 0, 4}.
  {label,3}.
    {line,[]}.
    {func_info,{atom,embedded_line_coverage},{atom,module_info},0}.
  {label,4}.
    {move,{atom,embedded_line_coverage},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 6}.
  {label,5}.
    {line,[]}.
    {func_info,{atom,embedded_line_coverage},{atom,module_info},1}.
  {label,6}.
    {move,{x,0},{x,1}}.
    {move,{atom,embedded_line_coverage},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.
