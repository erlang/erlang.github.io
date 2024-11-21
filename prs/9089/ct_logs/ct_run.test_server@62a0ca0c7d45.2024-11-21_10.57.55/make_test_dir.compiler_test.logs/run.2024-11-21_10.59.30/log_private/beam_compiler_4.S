{module, beam_compiler_4}.  %% version = 0

{exports, [{beam_compiler_4,0},{module_info,0},{module_info,1}]}.

{attributes, []}.

{labels, 7}.


{function, beam_compiler_4, 0, 2}.
  {label,1}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/beam_compiler_4.erl",
                     25}]}.
    {func_info,{atom,beam_compiler_4},{atom,beam_compiler_4},0}.
  {label,2}.
    {move,{atom,ok},{x,0}}.
    return.


{function, module_info, 0, 4}.
  {label,3}.
    {line,[]}.
    {func_info,{atom,beam_compiler_4},{atom,module_info},0}.
  {label,4}.
    {move,{atom,beam_compiler_4},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 6}.
  {label,5}.
    {line,[]}.
    {func_info,{atom,beam_compiler_4},{atom,module_info},1}.
  {label,6}.
    {move,{x,0},{x,1}}.
    {move,{atom,beam_compiler_4},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.
