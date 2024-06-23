{module, otp_2330}.  %% version = 0

{exports, [{handle_interface,1},{module_info,0},{module_info,1},{otp_2330,0}]}.

{attributes, []}.

{labels, 10}.


{function, otp_2330, 0, 2}.
  {label,1}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_2330.erl",
                     23}]}.
    {func_info,{atom,otp_2330},{atom,otp_2330},0}.
  {label,2}.
    {move,{atom,ok},{x,0}}.
    return.


{function, handle_interface, 1, 4}.
  {label,3}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_2330.erl",
                     26}]}.
    {func_info,{atom,otp_2330},{atom,handle_interface},1}.
  {label,4}.
    {test,is_eq_exact,{f,5},[{x,0},{atom,ok}]}.
    {move,nil,{x,0}}.
    return.
  {label,5}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_2330.erl",
                     28}]}.
    {case_end,{x,0}}.


{function, module_info, 0, 7}.
  {label,6}.
    {line,[]}.
    {func_info,{atom,otp_2330},{atom,module_info},0}.
  {label,7}.
    {move,{atom,otp_2330},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 9}.
  {label,8}.
    {line,[]}.
    {func_info,{atom,otp_2330},{atom,module_info},1}.
  {label,9}.
    {move,{x,0},{x,1}}.
    {move,{atom,otp_2330},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.
