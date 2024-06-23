{module, live_var}.  %% version = 0

{exports, [{live_var,0},{module_info,0},{module_info,1},{start,0}]}.

{attributes, []}.

{labels, 10}.


{function, live_var, 0, 2}.
  {label,1}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/live_var.erl",
                     23}]}.
    {func_info,{atom,live_var},{atom,live_var},0}.
  {label,2}.
    {move,{atom,ok},{x,0}}.
    return.


{function, start, 0, 4}.
  {label,3}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/live_var.erl",
                     26}]}.
    {func_info,{atom,live_var},{atom,start},0}.
  {label,4}.
    {allocate,0,0}.
  {label,5}.
    {wait_timeout,{f,5},{integer,3000}}.
    timeout.
    {move,{integer,5},{x,0}}.
    {deallocate,0}.
    return.


{function, module_info, 0, 7}.
  {label,6}.
    {line,[]}.
    {func_info,{atom,live_var},{atom,module_info},0}.
  {label,7}.
    {move,{atom,live_var},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 9}.
  {label,8}.
    {line,[]}.
    {func_info,{atom,live_var},{atom,module_info},1}.
  {label,9}.
    {move,{x,0},{x,1}}.
    {move,{atom,live_var},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.
