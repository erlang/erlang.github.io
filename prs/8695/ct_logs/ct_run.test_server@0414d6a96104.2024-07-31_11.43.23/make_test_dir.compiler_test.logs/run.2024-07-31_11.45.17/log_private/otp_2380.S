{module, otp_2380}.  %% version = 0

{exports, [{module_info,0},{module_info,1},{otp_2380,0},{test,0}]}.

{attributes, []}.

{labels, 9}.


{function, otp_2380, 0, 2}.
  {label,1}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_2380.erl",
                     23}]}.
    {func_info,{atom,otp_2380},{atom,otp_2380},0}.
  {label,2}.
    {move,{atom,ok},{x,0}}.
    return.


{function, test, 0, 4}.
  {label,3}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_2380.erl",
                     36}]}.
    {func_info,{atom,otp_2380},{atom,test},0}.
  {label,4}.
    {move,{integer,5},{x,0}}.
    return.


{function, module_info, 0, 6}.
  {label,5}.
    {line,[]}.
    {func_info,{atom,otp_2380},{atom,module_info},0}.
  {label,6}.
    {move,{atom,otp_2380},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 8}.
  {label,7}.
    {line,[]}.
    {func_info,{atom,otp_2380},{atom,module_info},1}.
  {label,8}.
    {move,{x,0},{x,1}}.
    {move,{atom,otp_2380},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.
