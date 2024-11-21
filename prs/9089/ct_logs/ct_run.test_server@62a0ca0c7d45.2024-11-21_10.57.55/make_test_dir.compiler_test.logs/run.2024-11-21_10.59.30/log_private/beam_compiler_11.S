{module, beam_compiler_11}.  %% version = 0

{exports, [{a,0},{beam_compiler_11,0},{module_info,0},{module_info,1}]}.

{attributes, []}.

{labels, 10}.


{function, beam_compiler_11, 0, 2}.
  {label,1}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/beam_compiler_11.erl",
                     24}]}.
    {func_info,{atom,beam_compiler_11},{atom,beam_compiler_11},0}.
  {label,2}.
    {move,{atom,ok},{x,0}}.
    return.


{function, a, 0, 4}.
  {label,3}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/beam_compiler_11.erl",
                     27}]}.
    {func_info,{atom,beam_compiler_11},{atom,a},0}.
  {label,4}.
    {allocate,0,0}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/beam_compiler_11.erl",
                     28}]}.
    {call_ext,0,{extfunc,foo,bar,0}}.
    {test,is_eq_exact,{f,5},[{x,0},{integer,3}]}.
    {deallocate,0}.
    return.
  {label,5}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/beam_compiler_11.erl",
                     31}]}.
    {badmatch,{integer,3}}.


{function, module_info, 0, 7}.
  {label,6}.
    {line,[]}.
    {func_info,{atom,beam_compiler_11},{atom,module_info},0}.
  {label,7}.
    {move,{atom,beam_compiler_11},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 9}.
  {label,8}.
    {line,[]}.
    {func_info,{atom,beam_compiler_11},{atom,module_info},1}.
  {label,9}.
    {move,{x,0},{x,1}}.
    {move,{atom,beam_compiler_11},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.
