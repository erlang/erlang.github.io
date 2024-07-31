{module, otp_5151}.  %% version = 0

{exports, [{module_info,0},
           {module_info,1},
           {otp_5151,0},
           {read_variables,1},
           {read_variables_1,1},
           {read_variables_2,1},
           {read_variables_3,1},
           {read_variables_4,1}]}.

{attributes, []}.

{labels, 32}.


{function, otp_5151, 0, 2}.
  {label,1}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5151.erl",
                     26}]}.
    {func_info,{atom,otp_5151},{atom,otp_5151},0}.
  {label,2}.
    {move,{atom,ok},{x,0}}.
    return.


{function, read_variables, 1, 4}.
  {label,3}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5151.erl",
                     29}]}.
    {func_info,{atom,otp_5151},{atom,read_variables},1}.
  {label,4}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5151.erl",
                     30}]}.
    {call_ext,1,{extfunc,file,consult,1}}.
    {test,is_tuple,{f,7},[{x,0}]}.
    {test,test_arity,{f,7},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {select_val,{x,1},{f,7},{list,[{atom,error},{f,6},{atom,ok},{f,5}]}}.
  {label,5}.
    {move,{x,2},{x,0}}.
    {deallocate,1}.
    return.
  {label,6}.
    {move,{x,2},{x,0}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5151.erl",
                     33}]}.
    {call_ext,1,{extfunc,file,format_error,1}}.
    {test_heap,5,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_installation},{x,0}]}}.
    {put_list,{y,0},nil,{x,1}}.
    {call_ext_last,2,{extfunc,erlang,error,2},1}.
  {label,7}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5151.erl",
                     30}]}.
    {case_end,{x,0}}.


{function, read_variables_1, 1, 9}.
  {label,8}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5151.erl",
                     36}]}.
    {func_info,{atom,otp_5151},{atom,read_variables_1},1}.
  {label,9}.
    {allocate,0,1}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5151.erl",
                     37}]}.
    {call_ext,1,{extfunc,file,consult,1}}.
    {test,is_tuple,{f,12},[{x,0}]}.
    {test,test_arity,{f,12},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {select_val,{x,1},{f,12},{list,[{atom,error},{f,11},{atom,ok},{f,10}]}}.
  {label,10}.
    {move,{x,2},{x,0}}.
    {deallocate,0}.
    return.
  {label,11}.
    {move,{x,2},{x,0}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5151.erl",
                     40}]}.
    {call_ext,1,{extfunc,file,format_error,1}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_installation},{x,0}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},0}.
  {label,12}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5151.erl",
                     37}]}.
    {case_end,{x,0}}.


{function, read_variables_2, 1, 14}.
  {label,13}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5151.erl",
                     43}]}.
    {func_info,{atom,otp_5151},{atom,read_variables_2},1}.
  {label,14}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5151.erl",
                     44}]}.
    {call_ext,1,{extfunc,file,consult,1}}.
    {test,is_tuple,{f,17},[{x,0}]}.
    {test,test_arity,{f,17},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {select_val,{x,1},{f,17},{list,[{atom,error},{f,16},{atom,ok},{f,15}]}}.
  {label,15}.
    {move,{x,2},{x,0}}.
    {deallocate,1}.
    return.
  {label,16}.
    {move,{x,2},{x,0}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5151.erl",
                     47}]}.
    {call_ext,1,{extfunc,file,format_error,1}}.
    {test_heap,5,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_installation},{x,0}]}}.
    {put_list,{y,0},nil,{x,1}}.
    {call_ext_last,2,{extfunc,erlang,error,2},1}.
  {label,17}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5151.erl",
                     44}]}.
    {case_end,{x,0}}.


{function, read_variables_3, 1, 19}.
  {label,18}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5151.erl",
                     50}]}.
    {func_info,{atom,otp_5151},{atom,read_variables_3},1}.
  {label,19}.
    {allocate,0,1}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5151.erl",
                     51}]}.
    {call_ext,1,{extfunc,file,consult,1}}.
    {test,is_tuple,{f,22},[{x,0}]}.
    {test,test_arity,{f,22},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {select_val,{x,1},{f,22},{list,[{atom,error},{f,21},{atom,ok},{f,20}]}}.
  {label,20}.
    {move,{x,2},{x,0}}.
    {deallocate,0}.
    return.
  {label,21}.
    {move,{x,2},{x,0}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5151.erl",
                     54}]}.
    {call_ext,1,{extfunc,file,format_error,1}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_installation},{x,0}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},0}.
  {label,22}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5151.erl",
                     51}]}.
    {case_end,{x,0}}.


{function, read_variables_4, 1, 24}.
  {label,23}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5151.erl",
                     57}]}.
    {func_info,{atom,otp_5151},{atom,read_variables_4},1}.
  {label,24}.
    {allocate,0,1}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5151.erl",
                     58}]}.
    {call_ext,1,{extfunc,file,consult,1}}.
    {test,is_tuple,{f,27},[{x,0}]}.
    {test,test_arity,{f,27},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {select_val,{x,1},{f,27},{list,[{atom,error},{f,26},{atom,ok},{f,25}]}}.
  {label,25}.
    {move,{x,2},{x,0}}.
    {deallocate,0}.
    return.
  {label,26}.
    {move,{x,2},{x,0}}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5151.erl",
                     61}]}.
    {call_ext,1,{extfunc,file,format_error,1}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_installation},{x,0}]}}.
    {call_ext_last,1,{extfunc,erlang,exit,1},0}.
  {label,27}.
    {line,[{location,"/buildroot/otp/lib/compiler/make_test_dir/compiler_test/compilation_SUITE_data/otp_5151.erl",
                     58}]}.
    {case_end,{x,0}}.


{function, module_info, 0, 29}.
  {label,28}.
    {line,[]}.
    {func_info,{atom,otp_5151},{atom,module_info},0}.
  {label,29}.
    {move,{atom,otp_5151},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 31}.
  {label,30}.
    {line,[]}.
    {func_info,{atom,otp_5151},{atom,module_info},1}.
  {label,31}.
    {move,{x,0},{x,1}}.
    {move,{atom,otp_5151},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.
