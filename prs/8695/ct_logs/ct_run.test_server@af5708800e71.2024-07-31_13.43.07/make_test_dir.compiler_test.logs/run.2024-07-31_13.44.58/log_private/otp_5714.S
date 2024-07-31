{module, otp_5714}.  %% version = 0

{exports, [{foo,1},
           {mktree_text,1},
           {module_info,0},
           {module_info,1},
           {otp_5714,0}]}.

{attributes, [{binary,[<<1,2,3>>]}]}.

{labels, 13}.


{function, otp_5714, 0, 2}.
  {label,1}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5714.erl",
                     24}]}.
    {func_info,{atom,otp_5714},{atom,otp_5714},0}.
  {label,2}.
    {allocate,0,0}.
    {move,{atom,attributes},{x,0}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5714.erl",
                     25}]}.
    {call_ext,1,{extfunc,otp_5714,module_info,1}}.
    {move,{x,0},{x,1}}.
    {move,{atom,binary},{x,0}}.
    {call_ext,2,{extfunc,proplists,get_value,2}}.
    {test,is_eq_exact,{f,3},[{x,0},{literal,[<<1,2,3>>]}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,3}.
    {badmatch,{x,0}}.


{function, foo, 1, 5}.
  {label,4}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5714.erl",
                     29}]}.
    {func_info,{atom,otp_5714},{atom,foo},1}.
  {label,5}.
    {allocate,1,0}.
    {'catch',{y,0},{f,6}}.
    {move,{atom,apa},{x,0}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5714.erl",
                     30}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,6}.
    {catch_end,{y,0}}.
    {bif,element,{f,0},[{integer,2},{x,0}],{x,0}}.
    {bif,element,{f,0},[{integer,2},{x,0}],{x,0}}.
    {bif,tl,{f,0},[{x,0}],{x,0}}.
    {bif,hd,{f,0},[{x,0}],{x,0}}.
    {move,{literal,{a,b}},{x,0}}.
    {deallocate,1}.
    return.


{function, mktree_text, 1, 8}.
  {label,7}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5714.erl",
                     38}]}.
    {func_info,{atom,otp_5714},{atom,mktree_text},1}.
  {label,8}.
    {move,{atom,ok},{x,0}}.
    return.


{function, module_info, 0, 10}.
  {label,9}.
    {line,[]}.
    {func_info,{atom,otp_5714},{atom,module_info},0}.
  {label,10}.
    {move,{atom,otp_5714},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 12}.
  {label,11}.
    {line,[]}.
    {func_info,{atom,otp_5714},{atom,module_info},1}.
  {label,12}.
    {move,{x,0},{x,1}}.
    {move,{atom,otp_5714},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.
