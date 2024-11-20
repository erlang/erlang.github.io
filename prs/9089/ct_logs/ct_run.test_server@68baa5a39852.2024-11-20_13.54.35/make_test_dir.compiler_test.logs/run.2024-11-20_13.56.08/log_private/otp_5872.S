{module, otp_5872}.  %% version = 0

{exports, [{chunk_request_body,3},
           {module_info,0},
           {module_info,1},
           {otp_5872,0}]}.

{attributes, []}.

{labels, 16}.


{function, otp_5872, 0, 2}.
  {label,1}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5872.erl",
                     23}]}.
    {func_info,{atom,otp_5872},{atom,otp_5872},0}.
  {label,2}.
    {move,{atom,ok},{x,0}}.
    return.


{function, chunk_request_body, 3, 4}.
  {label,3}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5872.erl",
                     26}]}.
    {func_info,{atom,otp_5872},{atom,chunk_request_body},3}.
  {label,4}.
    {test,is_ne_exact,{f,5},[{x,0},{literal,<<>>}]}.
    {test,is_nil,{f,6},[{x,0}]}.
  {label,5}.
    {test_heap,4,3}.
    {put_list,{literal,"0\r\n"},{x,2},{x,0}}.
    {put_list,{literal,"\r\n"},{x,0},{x,0}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5872.erl",
                     28}]}.
    {call_ext_only,1,{extfunc,lists,reverse,1}}.
  {label,6}.
    {test,is_binary,
          {f,8},
          [{tr,{x,0},
               {t_union,{t_atom,any},
                        {t_cons,any,any},
                        {t_number,any},
                        {t_tuple,0,false,#{}},
                        other}}]}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5872.erl",
                     29}]}.
    {gc_bif,byte_size,{f,0},3,[{tr,{x,0},{t_bitstring,8,false}}],{x,3}}.
    {test,is_ge,{f,7},[{tr,{x,3},{t_integer,{0,288230376151711743}}},{x,1}]}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,3}}.
    {test,bs_get_binary2,
          {f,10},
          4,
          [{tr,{x,3},{t_bs_context,8}},
           {tr,{x,1},{t_number,{'-inf',288230376151711743}}},
           8,
           {field_flags,[{anno,[30,
                                {file,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5872.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {allocate,4,5}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,4},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,1},{y,3}}.
    {bs_get_tail,{x,3},{y,0},4}.
    {move,{integer,4},{x,0}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5872.erl",
                     32}]}.
    {call_ext,2,{extfunc,ibrowse_lib,dec2hex,2}}.
    {test_heap,8,1}.
    {put_list,{y,1},{literal,["\r\n"]},{x,1}}.
    {put_list,{literal,"\r\n"},{x,1},{x,1}}.
    {put_list,{x,0},{x,1},{x,0}}.
    {put_list,{x,0},{y,2},{x,2}}.
    {move,{y,3},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,3,{f,4},4}. % chunk_request_body/3
  {label,7}.
    {allocate,2,4}.
    {move,{x,2},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{x,3},{x,1}}.
    {move,{integer,4},{x,0}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5872.erl",
                     36}]}.
    {call_ext,2,{extfunc,ibrowse_lib,dec2hex,2}}.
    {test_heap,12,1}.
    {put_list,{y,1},{literal,["\r\n"]},{x,1}}.
    {put_list,{literal,"\r\n"},{x,1},{x,1}}.
    {put_list,{x,0},{x,1},{x,0}}.
    {put_list,{x,0},{y,0},{x,0}}.
    {put_list,{literal,"0\r\n"},{x,0},{x,0}}.
    {put_list,{literal,"\r\n"},{x,0},{x,0}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5872.erl",
                     38}]}.
    {call_ext_last,1,{extfunc,lists,reverse,1},2}.
  {label,8}.
    {test,is_nonempty_list,{f,3},[{x,0}]}.
    {gc_bif,length,{f,9},3,[{tr,{x,0},{t_cons,any,any}}],{x,3}}.
    {test,is_ge,{f,9},[{tr,{x,3},{t_integer,{1,288230376151711743}}},{x,1}]}.
    {allocate,3,3}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,2},{y,1}}.
    {move,{x,1},{y,2}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5872.erl",
                     40}]}.
    {call_ext,2,{extfunc,otp_5872,split_list_at,2}}.
    {move,{x,0},{y,0}}.
    {test,is_tuple,{f,11},[{x,0}]}.
    {test,test_arity,{f,11},[{x,0},2]}.
    {move,{y,2},{x,1}}.
    {move,{integer,4},{x,0}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5872.erl",
                     41}]}.
    {call_ext,2,{extfunc,ibrowse_lib,dec2hex,2}}.
    {test_heap,8,1}.
    {get_tuple_element,{y,0},0,{x,1}}.
    {put_list,{x,1},{literal,["\r\n"]},{x,1}}.
    {put_list,{literal,"\r\n"},{x,1},{x,1}}.
    {put_list,{x,0},{x,1},{x,0}}.
    {put_list,{x,0},{y,1},{x,2}}.
    {get_tuple_element,{y,0},1,{x,0}}.
    {move,{y,2},{x,1}}.
    {call_last,3,{f,4},3}. % chunk_request_body/3
  {label,9}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5872.erl",
                     44}]}.
    {gc_bif,length,{f,0},3,[{tr,{x,0},{t_cons,any,any}}],{x,1}}.
    {allocate,2,3}.
    {move,{x,2},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{integer,4},{x,0}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5872.erl",
                     45}]}.
    {call_ext,2,{extfunc,ibrowse_lib,dec2hex,2}}.
    {test_heap,12,1}.
    {put_list,{y,1},{literal,["\r\n"]},{x,1}}.
    {put_list,{literal,"\r\n"},{x,1},{x,1}}.
    {put_list,{x,0},{x,1},{x,0}}.
    {put_list,{x,0},{y,0},{x,0}}.
    {put_list,{literal,"0\r\n"},{x,0},{x,0}}.
    {put_list,{literal,"\r\n"},{x,0},{x,0}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5872.erl",
                     47}]}.
    {call_ext_last,1,{extfunc,lists,reverse,1},2}.
  {label,10}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5872.erl",
                     30}]}.
    {badmatch,{x,0}}.
  {label,11}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5872.erl",
                     40}]}.
    {badmatch,{y,0}}.


{function, module_info, 0, 13}.
  {label,12}.
    {line,[]}.
    {func_info,{atom,otp_5872},{atom,module_info},0}.
  {label,13}.
    {move,{atom,otp_5872},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 15}.
  {label,14}.
    {line,[]}.
    {func_info,{atom,otp_5872},{atom,module_info},1}.
  {label,15}.
    {move,{x,0},{x,1}}.
    {move,{atom,otp_5872},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.
