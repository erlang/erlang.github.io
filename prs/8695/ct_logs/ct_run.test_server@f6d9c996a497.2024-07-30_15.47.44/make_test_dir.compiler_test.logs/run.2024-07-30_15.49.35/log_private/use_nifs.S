{module, use_nifs}.  %% version = 0

{exports, [{calculator_nif,0},
           {id,1},
           {module_info,0},
           {module_info,1},
           {use_nifs,0}]}.

{attributes, []}.

{labels, 14}.


{function, use_nifs, 0, 2}.
  {label,1}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/use_nifs.erl",
                     5}]}.
    {func_info,{atom,use_nifs},{atom,use_nifs},0}.
  {label,2}.
    {allocate,0,0}.
    {move,{atom,false},{x,0}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/use_nifs.erl",
                     6}]}.
    {call,1,{f,9}}. % id/1
    {select_val,{x,0},{f,5},{list,[{atom,false},{f,4},{atom,true},{f,3}]}}.
  {label,3}.
    {move,{integer,42},{x,1}}.
    {move,{literal,"my_nif"},{x,0}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/use_nifs.erl",
                     8}]}.
    {call_ext,2,{extfunc,erlang,load_nif,2}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/use_nifs.erl",
                     9}]}.
    {call,0,{f,7}}. % calculator_nif/0
  {label,4}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,5}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/use_nifs.erl",
                     6}]}.
    {case_end,{x,0}}.


{function, calculator_nif, 0, 7}.
  {label,6}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/use_nifs.erl",
                     15}]}.
    {func_info,{atom,use_nifs},{atom,calculator_nif},0}.
  {label,7}.
    nif_start.
    {move,{atom,undef},{x,0}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/use_nifs.erl",
                     16}]}.
    {call_ext_only,1,{extfunc,erlang,nif_error,1}}.


{function, id, 1, 9}.
  {label,8}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/use_nifs.erl",
                     18}]}.
    {func_info,{atom,use_nifs},{atom,id},1}.
  {label,9}.
    return.


{function, module_info, 0, 11}.
  {label,10}.
    {line,[]}.
    {func_info,{atom,use_nifs},{atom,module_info},0}.
  {label,11}.
    {move,{atom,use_nifs},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 13}.
  {label,12}.
    {line,[]}.
    {func_info,{atom,use_nifs},{atom,module_info},1}.
  {label,13}.
    {move,{x,0},{x,1}}.
    {move,{atom,use_nifs},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.
