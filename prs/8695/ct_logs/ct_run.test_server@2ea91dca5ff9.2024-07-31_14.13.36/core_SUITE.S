{module, core_SUITE}.  %% version = 0

{exports, [{all,0},
           {bad_boolean_guard,1},
           {bs_shadowed_size_var,1},
           {core_lint,1},
           {cover_v3_kernel_1,1},
           {cover_v3_kernel_2,1},
           {cover_v3_kernel_3,1},
           {cover_v3_kernel_4,1},
           {cover_v3_kernel_5,1},
           {dehydrated_itracer,1},
           {end_per_group,2},
           {end_per_suite,1},
           {end_per_testcase,2},
           {eval_case,1},
           {eval_is_boolean,1},
           {fun_letrec_effect,1},
           {get_map_element,1},
           {groups,0},
           {init_per_group,2},
           {init_per_suite,1},
           {init_per_testcase,2},
           {make_effect_seq,1},
           {map_core_test,1},
           {module_info,0},
           {module_info,1},
           {name_capture,1},
           {nested_tries,1},
           {nif,1},
           {no_load_nif,1},
           {no_nif,1},
           {nomatch_shadow,1},
           {non_variable_apply,1},
           {receive_tests,1},
           {reversed_annos,1},
           {seq_in_guard,1},
           {suite,0},
           {unsafe_case,1}]}.

{attributes, []}.

{labels, 135}.


{function, init_per_testcase, 2, 2}.
  {label,1}.
    {line,[{location,"core_SUITE.erl",41}]}.
    {func_info,{atom,core_SUITE},{atom,init_per_testcase},2}.
  {label,2}.
    {test,is_atom,{f,1},[{x,0}]}.
    {test,is_list,{f,1},[{x,1}]}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_testcase, 2, 4}.
  {label,3}.
    {line,[{location,"core_SUITE.erl",44}]}.
    {func_info,{atom,core_SUITE},{atom,end_per_testcase},2}.
  {label,4}.
    {test,is_atom,{f,3},[{x,0}]}.
    {test,is_list,{f,3},[{x,1}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, suite, 0, 6}.
  {label,5}.
    {line,[{location,"core_SUITE.erl",47}]}.
    {func_info,{atom,core_SUITE},{atom,suite},0}.
  {label,6}.
    {move,{literal,[{ct_hooks,[ts_install_cth]},{timetrap,{minutes,5}}]},
          {x,0}}.
    return.


{function, all, 0, 8}.
  {label,7}.
    {line,[{location,"core_SUITE.erl",51}]}.
    {func_info,{atom,core_SUITE},{atom,all},0}.
  {label,8}.
    {move,{literal,[{group,p}]},{x,0}}.
    return.


{function, groups, 0, 10}.
  {label,9}.
    {line,[{location,"core_SUITE.erl",54}]}.
    {func_info,{atom,core_SUITE},{atom,groups},0}.
  {label,10}.
    {allocate,0,0}.
    {line,[{location,"core_SUITE.erl",55}]}.
    {call_ext,0,{extfunc,test_lib,parallel,0}}.
    {test_heap,6,1}.
    {put_tuple2,{x,0},
                {list,[{atom,p},
                       {x,0},
                       {literal,[dehydrated_itracer,nested_tries,seq_in_guard,
                                 make_effect_seq,eval_is_boolean,unsafe_case,
                                 nomatch_shadow,reversed_annos,map_core_test,
                                 eval_case,bad_boolean_guard,
                                 bs_shadowed_size_var,cover_v3_kernel_1,
                                 cover_v3_kernel_2,cover_v3_kernel_3,
                                 cover_v3_kernel_4,cover_v3_kernel_5,
                                 non_variable_apply,name_capture,
                                 fun_letrec_effect,get_map_element,
                                 receive_tests,core_lint,nif,no_nif,
                                 no_load_nif]}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {deallocate,0}.
    return.


{function, init_per_suite, 1, 12}.
  {label,11}.
    {line,[{location,"core_SUITE.erl",68}]}.
    {func_info,{atom,core_SUITE},{atom,init_per_suite},1}.
  {label,12}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{atom,core_SUITE},{x,0}}.
    {line,[{location,"core_SUITE.erl",69}]}.
    {call_ext,1,{extfunc,test_lib,recompile,1}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, end_per_suite, 1, 14}.
  {label,13}.
    {line,[{location,"core_SUITE.erl",72}]}.
    {func_info,{atom,core_SUITE},{atom,end_per_suite},1}.
  {label,14}.
    {move,{atom,ok},{x,0}}.
    return.


{function, init_per_group, 2, 16}.
  {label,15}.
    {line,[{location,"core_SUITE.erl",75}]}.
    {func_info,{atom,core_SUITE},{atom,init_per_group},2}.
  {label,16}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_group, 2, 18}.
  {label,17}.
    {line,[{location,"core_SUITE.erl",78}]}.
    {func_info,{atom,core_SUITE},{atom,end_per_group},2}.
  {label,18}.
    {move,{x,1},{x,0}}.
    return.


{function, dehydrated_itracer, 1, 20}.
  {label,19}.
    {line,[{location,"core_SUITE.erl",82}]}.
    {func_info,{atom,core_SUITE},{atom,dehydrated_itracer},1}.
  {label,20}.
    {test,is_list,{f,19},[{x,0}]}.
    {move,{x,0},{x,1}}.
    {move,{atom,dehydrated_itracer},{x,0}}.
    {call_only,2,{f,64}}. % try_it/2


{function, nested_tries, 1, 22}.
  {label,21}.
    {line,[{location,"core_SUITE.erl",83}]}.
    {func_info,{atom,core_SUITE},{atom,nested_tries},1}.
  {label,22}.
    {test,is_list,{f,21},[{x,0}]}.
    {move,{x,0},{x,1}}.
    {move,{atom,nested_tries},{x,0}}.
    {call_only,2,{f,64}}. % try_it/2


{function, seq_in_guard, 1, 24}.
  {label,23}.
    {line,[{location,"core_SUITE.erl",84}]}.
    {func_info,{atom,core_SUITE},{atom,seq_in_guard},1}.
  {label,24}.
    {test,is_list,{f,23},[{x,0}]}.
    {move,{x,0},{x,1}}.
    {move,{atom,seq_in_guard},{x,0}}.
    {call_only,2,{f,64}}. % try_it/2


{function, make_effect_seq, 1, 26}.
  {label,25}.
    {line,[{location,"core_SUITE.erl",85}]}.
    {func_info,{atom,core_SUITE},{atom,make_effect_seq},1}.
  {label,26}.
    {test,is_list,{f,25},[{x,0}]}.
    {move,{x,0},{x,1}}.
    {move,{atom,make_effect_seq},{x,0}}.
    {call_only,2,{f,64}}. % try_it/2


{function, eval_is_boolean, 1, 28}.
  {label,27}.
    {line,[{location,"core_SUITE.erl",86}]}.
    {func_info,{atom,core_SUITE},{atom,eval_is_boolean},1}.
  {label,28}.
    {test,is_list,{f,27},[{x,0}]}.
    {move,{x,0},{x,1}}.
    {move,{atom,eval_is_boolean},{x,0}}.
    {call_only,2,{f,64}}. % try_it/2


{function, unsafe_case, 1, 30}.
  {label,29}.
    {line,[{location,"core_SUITE.erl",87}]}.
    {func_info,{atom,core_SUITE},{atom,unsafe_case},1}.
  {label,30}.
    {test,is_list,{f,29},[{x,0}]}.
    {move,{x,0},{x,1}}.
    {move,{atom,unsafe_case},{x,0}}.
    {call_only,2,{f,64}}. % try_it/2


{function, nomatch_shadow, 1, 32}.
  {label,31}.
    {line,[{location,"core_SUITE.erl",88}]}.
    {func_info,{atom,core_SUITE},{atom,nomatch_shadow},1}.
  {label,32}.
    {test,is_list,{f,31},[{x,0}]}.
    {move,{x,0},{x,1}}.
    {move,{atom,nomatch_shadow},{x,0}}.
    {call_only,2,{f,64}}. % try_it/2


{function, reversed_annos, 1, 34}.
  {label,33}.
    {line,[{location,"core_SUITE.erl",89}]}.
    {func_info,{atom,core_SUITE},{atom,reversed_annos},1}.
  {label,34}.
    {test,is_list,{f,33},[{x,0}]}.
    {move,{x,0},{x,1}}.
    {move,{atom,reversed_annos},{x,0}}.
    {call_only,2,{f,64}}. % try_it/2


{function, map_core_test, 1, 36}.
  {label,35}.
    {line,[{location,"core_SUITE.erl",90}]}.
    {func_info,{atom,core_SUITE},{atom,map_core_test},1}.
  {label,36}.
    {test,is_list,{f,35},[{x,0}]}.
    {move,{x,0},{x,1}}.
    {move,{atom,map_core_test},{x,0}}.
    {call_only,2,{f,64}}. % try_it/2


{function, eval_case, 1, 38}.
  {label,37}.
    {line,[{location,"core_SUITE.erl",91}]}.
    {func_info,{atom,core_SUITE},{atom,eval_case},1}.
  {label,38}.
    {test,is_list,{f,37},[{x,0}]}.
    {move,{x,0},{x,1}}.
    {move,{atom,eval_case},{x,0}}.
    {call_only,2,{f,64}}. % try_it/2


{function, bad_boolean_guard, 1, 40}.
  {label,39}.
    {line,[{location,"core_SUITE.erl",92}]}.
    {func_info,{atom,core_SUITE},{atom,bad_boolean_guard},1}.
  {label,40}.
    {test,is_list,{f,39},[{x,0}]}.
    {move,{x,0},{x,1}}.
    {move,{atom,bad_boolean_guard},{x,0}}.
    {call_only,2,{f,64}}. % try_it/2


{function, bs_shadowed_size_var, 1, 42}.
  {label,41}.
    {line,[{location,"core_SUITE.erl",93}]}.
    {func_info,{atom,core_SUITE},{atom,bs_shadowed_size_var},1}.
  {label,42}.
    {test,is_list,{f,41},[{x,0}]}.
    {move,{x,0},{x,1}}.
    {move,{atom,bs_shadowed_size_var},{x,0}}.
    {call_only,2,{f,64}}. % try_it/2


{function, cover_v3_kernel_1, 1, 44}.
  {label,43}.
    {line,[{location,"core_SUITE.erl",94}]}.
    {func_info,{atom,core_SUITE},{atom,cover_v3_kernel_1},1}.
  {label,44}.
    {test,is_list,{f,43},[{x,0}]}.
    {move,{x,0},{x,1}}.
    {move,{atom,cover_v3_kernel_1},{x,0}}.
    {call_only,2,{f,64}}. % try_it/2


{function, cover_v3_kernel_2, 1, 46}.
  {label,45}.
    {line,[{location,"core_SUITE.erl",95}]}.
    {func_info,{atom,core_SUITE},{atom,cover_v3_kernel_2},1}.
  {label,46}.
    {test,is_list,{f,45},[{x,0}]}.
    {move,{x,0},{x,1}}.
    {move,{atom,cover_v3_kernel_2},{x,0}}.
    {call_only,2,{f,64}}. % try_it/2


{function, cover_v3_kernel_3, 1, 48}.
  {label,47}.
    {line,[{location,"core_SUITE.erl",96}]}.
    {func_info,{atom,core_SUITE},{atom,cover_v3_kernel_3},1}.
  {label,48}.
    {test,is_list,{f,47},[{x,0}]}.
    {move,{x,0},{x,1}}.
    {move,{atom,cover_v3_kernel_3},{x,0}}.
    {call_only,2,{f,64}}. % try_it/2


{function, cover_v3_kernel_4, 1, 50}.
  {label,49}.
    {line,[{location,"core_SUITE.erl",97}]}.
    {func_info,{atom,core_SUITE},{atom,cover_v3_kernel_4},1}.
  {label,50}.
    {test,is_list,{f,49},[{x,0}]}.
    {move,{x,0},{x,1}}.
    {move,{atom,cover_v3_kernel_4},{x,0}}.
    {call_only,2,{f,64}}. % try_it/2


{function, cover_v3_kernel_5, 1, 52}.
  {label,51}.
    {line,[{location,"core_SUITE.erl",98}]}.
    {func_info,{atom,core_SUITE},{atom,cover_v3_kernel_5},1}.
  {label,52}.
    {test,is_list,{f,51},[{x,0}]}.
    {move,{x,0},{x,1}}.
    {move,{atom,cover_v3_kernel_5},{x,0}}.
    {call_only,2,{f,64}}. % try_it/2


{function, non_variable_apply, 1, 54}.
  {label,53}.
    {line,[{location,"core_SUITE.erl",99}]}.
    {func_info,{atom,core_SUITE},{atom,non_variable_apply},1}.
  {label,54}.
    {test,is_list,{f,53},[{x,0}]}.
    {move,{x,0},{x,1}}.
    {move,{atom,non_variable_apply},{x,0}}.
    {call_only,2,{f,64}}. % try_it/2


{function, name_capture, 1, 56}.
  {label,55}.
    {line,[{location,"core_SUITE.erl",100}]}.
    {func_info,{atom,core_SUITE},{atom,name_capture},1}.
  {label,56}.
    {test,is_list,{f,55},[{x,0}]}.
    {move,{x,0},{x,1}}.
    {move,{atom,name_capture},{x,0}}.
    {call_only,2,{f,64}}. % try_it/2


{function, fun_letrec_effect, 1, 58}.
  {label,57}.
    {line,[{location,"core_SUITE.erl",101}]}.
    {func_info,{atom,core_SUITE},{atom,fun_letrec_effect},1}.
  {label,58}.
    {test,is_list,{f,57},[{x,0}]}.
    {move,{x,0},{x,1}}.
    {move,{atom,fun_letrec_effect},{x,0}}.
    {call_only,2,{f,64}}. % try_it/2


{function, get_map_element, 1, 60}.
  {label,59}.
    {line,[{location,"core_SUITE.erl",102}]}.
    {func_info,{atom,core_SUITE},{atom,get_map_element},1}.
  {label,60}.
    {test,is_list,{f,59},[{x,0}]}.
    {move,{x,0},{x,1}}.
    {move,{atom,get_map_element},{x,0}}.
    {call_only,2,{f,64}}. % try_it/2


{function, receive_tests, 1, 62}.
  {label,61}.
    {line,[{location,"core_SUITE.erl",103}]}.
    {func_info,{atom,core_SUITE},{atom,receive_tests},1}.
  {label,62}.
    {test,is_list,{f,61},[{x,0}]}.
    {move,{x,0},{x,1}}.
    {move,{atom,receive_tests},{x,0}}.
    {call_only,2,{f,64}}. % try_it/2


{function, try_it, 2, 64}.
  {label,63}.
    {line,[{location,"core_SUITE.erl",105}]}.
    {func_info,{atom,core_SUITE},{atom,try_it},2}.
  {label,64}.
    {'%',{var_info,{x,0},[{type,{t_atom,any}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,any,any}}]}}.
    {allocate,1,2}.
    {move,{x,0},{y,0}}.
    {move,{atom,data_dir},{x,0}}.
    {line,[{location,"core_SUITE.erl",106}]}.
    {call_ext,2,{extfunc,proplists,get_value,2}}.
    {swap,{y,0},{x,0}}.
    {line,[{location,"core_SUITE.erl",107}]}.
    {call_ext,1,{extfunc,erlang,atom_to_list,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"core_SUITE.erl",106}]}.
    {call_ext,2,{extfunc,filename,join,2}}.
    {move,{x,0},{y,0}}.
    {move,nil,{x,1}}.
    {line,[{location,"core_SUITE.erl",108}]}.
    {call,2,{f,66}}. % compile_and_load/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,[no_copt]},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,66},1}. % compile_and_load/2


{function, compile_and_load, 2, 66}.
  {label,65}.
    {line,[{location,"core_SUITE.erl",111}]}.
    {func_info,{atom,core_SUITE},{atom,compile_and_load},2}.
  {label,66}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_atom,[no_copt]},nil}}]}}.
    {allocate_heap,1,8,2}.
    {init_yregs,{list,[{y,0}]}}.
    {put_list,{atom,binary},{x,1},{x,1}}.
    {put_list,{atom,time},{x,1},{x,1}}.
    {put_list,{atom,report},{x,1},{x,1}}.
    {put_list,{atom,from_core},{x,1},{x,1}}.
    {line,[{location,"core_SUITE.erl",112}]}.
    {call_ext,2,{extfunc,compile,file,2}}.
    {test,is_tagged_tuple,{f,69},[{x,0},3,{atom,ok}]}.
    {get_tuple_element,{x,0},1,{y,0}}.
    {get_tuple_element,{x,0},2,{x,2}}.
    {move,{y,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"core_SUITE.erl",113}]}.
    {call_ext,3,{extfunc,code,load_binary,3}}.
    {test,is_tagged_tuple,{f,68},[{x,0},2,{atom,module}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,68},[{x,1},{y,0}]}.
    {move,{y,0},{x,0}}.
    {line,[{location,"core_SUITE.erl",114}]}.
    {apply,0}.
    {test,is_eq_exact,{f,67},[{x,0},{atom,ok}]}.
    {move,{y,0},{x,0}}.
    {line,[{location,"core_SUITE.erl",115}]}.
    {call_ext,1,{extfunc,code,delete,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"core_SUITE.erl",116}]}.
    {call_ext,1,{extfunc,code,purge,1}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,67}.
    {line,[{location,"core_SUITE.erl",114}]}.
    {badmatch,{x,0}}.
  {label,68}.
    {line,[{location,"core_SUITE.erl",113}]}.
    {badmatch,{x,0}}.
  {label,69}.
    {line,[{location,"core_SUITE.erl",112}]}.
    {badmatch,{x,0}}.


{function, core_lint, 1, 71}.
  {label,70}.
    {line,[{location,"core_SUITE.erl",119}]}.
    {func_info,{atom,core_SUITE},{atom,core_lint},1}.
  {label,71}.
    {allocate,6,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3},{y,4},{y,5}]}}.
    {move,{atom,ok},{x,0}}.
    {line,[{location,"core_SUITE.erl",120}]}.
    {call_ext,1,{extfunc,cerl,c_atom,1}}.
    {move,{x,0},{y,5}}.
    {move,{atom,illegal},{x,0}}.
    {line,[{location,"core_SUITE.erl",121}]}.
    {call,1,{f,77}}. % core_lint_function/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {test_heap,2,0}.
    {put_list,{y,5},nil,{x,0}}.
    {move,{y,5},{x,1}}.
    {move,{y,5},{x,2}}.
    {line,[{location,"core_SUITE.erl",122}]}.
    {call_ext,3,{extfunc,cerl,c_let,3}}.
    {call,1,{f,77}}. % core_lint_function/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,var},{x,0}}.
    {line,[{location,"core_SUITE.erl",123}]}.
    {call_ext,1,{extfunc,cerl,c_var,1}}.
    {move,{x,0},{y,4}}.
    {move,{integer,999},{x,0}}.
    {call_ext,1,{extfunc,cerl,c_var,1}}.
    {test_heap,2,1}.
    {put_list,{y,4},nil,{x,1}}.
    {move,{y,5},{x,2}}.
    {swap,{x,0},{x,1}}.
    {init_yregs,{list,[{y,4}]}}.
    {call_ext,3,{extfunc,cerl,c_let,3}}.
    {call,1,{f,77}}. % core_lint_function/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,var},{x,0}}.
    {line,[{location,"core_SUITE.erl",124}]}.
    {call_ext,1,{extfunc,cerl,c_var,1}}.
    {move,{x,0},{y,4}}.
    {move,{atom,unknown},{x,0}}.
    {call_ext,1,{extfunc,cerl,c_var,1}}.
    {test_heap,2,1}.
    {put_list,{y,4},nil,{x,1}}.
    {move,{y,5},{x,2}}.
    {swap,{x,0},{x,1}}.
    {init_yregs,{list,[{y,4}]}}.
    {call_ext,3,{extfunc,cerl,c_let,3}}.
    {call,1,{f,77}}. % core_lint_function/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{y,5},{x,2}}.
    {move,nil,{x,3}}.
    {move,nil,{x,1}}.
    {move,{atom,handler},{x,4}}.
    {move,{y,5},{x,0}}.
    {line,[{location,"core_SUITE.erl",125}]}.
    {call_ext,5,{extfunc,cerl,c_try,5}}.
    {call,1,{f,77}}. % core_lint_function/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{y,5},{integer,0}]}}.
    {line,[{location,"core_SUITE.erl",126}]}.
    {call_ext,1,{extfunc,cerl,c_var,1}}.
    {test_heap,2,1}.
    {put_list,{y,5},nil,{x,1}}.
    {call_ext,2,{extfunc,cerl,c_apply,2}}.
    {call,1,{f,77}}. % core_lint_function/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {test_heap,2,0}.
    {put_list,{y,5},nil,{x,1}}.
    {move,{y,5},{x,2}}.
    {move,nil,{x,0}}.
    {line,[{location,"core_SUITE.erl",128}]}.
    {call,3,{f,79}}. % core_lint_function/3
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"core_SUITE.erl",129}]}.
    {call_ext,1,{extfunc,cerl,c_char,1}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{x,0},{y,5}]}}.
    {call_ext,1,{extfunc,cerl,c_var,1}}.
    {test_heap,2,1}.
    {put_list,{x,0},nil,{x,0}}.
    {move,{y,5},{x,2}}.
    {move,nil,{x,1}}.
    {call,3,{f,79}}. % core_lint_function/3
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{integer,99},{x,0}}.
    {line,[{location,"core_SUITE.erl",131}]}.
    {call_ext,1,{extfunc,cerl,c_var,1}}.
    {move,{x,0},{y,4}}.
    {move,{integer,99},{x,0}}.
    {call_ext,1,{extfunc,cerl,c_var,1}}.
    {test_heap,4,1}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{y,4},{x,0},{x,0}}.
    {init_yregs,{list,[{y,4}]}}.
    {call,1,{f,75}}. % core_lint_pattern/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,var},{x,0}}.
    {line,[{location,"core_SUITE.erl",132}]}.
    {call_ext,1,{extfunc,cerl,c_var,1}}.
    {test_heap,2,1}.
    {put_list,{x,0},nil,{x,0}}.
    {move,{y,5},{x,1}}.
    {move,{y,5},{x,2}}.
    {call_ext,3,{extfunc,cerl,c_let,3}}.
    {test_heap,2,1}.
    {put_list,{x,0},nil,{x,0}}.
    {call,1,{f,75}}. % core_lint_pattern/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {test_heap,2,0}.
    {put_list,{y,5},nil,{x,0}}.
    {line,[{location,"core_SUITE.erl",133}]}.
    {call,1,{f,73}}. % core_lint_bs_pattern/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,[big,unsigned]},{x,0}}.
    {line,[{location,"core_SUITE.erl",134}]}.
    {call_ext,1,{extfunc,cerl,make_list,1}}.
    {move,{x,0},{y,4}}.
    {move,{atom,tail},{x,0}}.
    {line,[{location,"core_SUITE.erl",135}]}.
    {call_ext,1,{extfunc,cerl,c_var,1}}.
    {move,{x,0},{y,3}}.
    {move,{atom,binary},{x,0}}.
    {call_ext,1,{extfunc,cerl,c_atom,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,4},{x,2}}.
    {move,{y,3},{x,0}}.
    {init_yregs,{list,[{y,3}]}}.
    {call_ext,3,{extfunc,cerl,c_bitstr,3}}.
    {move,{x,0},{y,3}}.
    {move,{atom,value},{x,0}}.
    {line,[{location,"core_SUITE.erl",136}]}.
    {call_ext,1,{extfunc,cerl,c_var,1}}.
    {move,{x,0},{y,2}}.
    {move,{atom,binary},{x,0}}.
    {call_ext,1,{extfunc,cerl,c_atom,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,4},{x,2}}.
    {move,{y,2},{x,0}}.
    {init_yregs,{list,[{y,2},{y,4}]}}.
    {call_ext,3,{extfunc,cerl,c_bitstr,3}}.
    {test_heap,4,1}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{y,3},{x,0},{x,0}}.
    {init_yregs,{list,[{y,3}]}}.
    {line,[{location,"core_SUITE.erl",135}]}.
    {call,1,{f,73}}. % core_lint_bs_pattern/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{y,5},{x,1}}.
    {move,nil,{x,2}}.
    {move,{y,5},{x,0}}.
    {line,[{location,"core_SUITE.erl",138}]}.
    {call_ext,3,{extfunc,cerl,c_call,3}}.
    {move,{x,0},{y,4}}.
    {move,{atom,erlang},{x,0}}.
    {line,[{location,"core_SUITE.erl",139}]}.
    {call_ext,1,{extfunc,cerl,c_atom,1}}.
    {move,nil,{x,2}}.
    {move,{y,5},{x,1}}.
    {call_ext,3,{extfunc,cerl,c_call,3}}.
    {move,{x,0},{y,3}}.
    {move,{atom,erlang},{x,0}}.
    {line,[{location,"core_SUITE.erl",140}]}.
    {call_ext,1,{extfunc,cerl,c_atom,1}}.
    {move,{x,0},{y,2}}.
    {move,{atom,is_record},{x,0}}.
    {call_ext,1,{extfunc,cerl,c_atom,1}}.
    {test_heap,6,1}.
    {put_list,{y,5},nil,{x,1}}.
    {put_list,{y,5},{x,1},{x,1}}.
    {put_list,{y,5},{x,1},{x,2}}.
    {move,{x,0},{x,1}}.
    {move,{y,2},{x,0}}.
    {init_yregs,{list,[{y,2}]}}.
    {call_ext,3,{extfunc,cerl,c_call,3}}.
    {move,{x,0},{y,2}}.
    {line,[{location,"core_SUITE.erl",141}]}.
    {call_ext,0,{extfunc,cerl,c_nil,0}}.
    {move,{x,0},{y,1}}.
    {move,{y,5},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{location,"core_SUITE.erl",142}]}.
    {call_ext,2,{extfunc,cerl,c_clause,2}}.
    {test_heap,2,1}.
    {put_list,{y,5},nil,{x,1}}.
    {move,{x,0},{y,0}}.
    {move,{y,5},{x,2}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {line,[{location,"core_SUITE.erl",143}]}.
    {call_ext,2,{extfunc,cerl,c_clause,2}}.
    {test_heap,2,1}.
    {put_list,{y,5},nil,{x,1}}.
    {move,{y,4},{x,3}}.
    {move,{x,0},{y,4}}.
    {move,{y,5},{x,2}}.
    {move,{x,1},{x,0}}.
    {move,{x,3},{x,1}}.
    {line,[{location,"core_SUITE.erl",144}]}.
    {call_ext,3,{extfunc,cerl,c_clause,3}}.
    {test_heap,2,1}.
    {put_list,{y,5},nil,{x,1}}.
    {move,{y,3},{x,3}}.
    {move,{x,0},{y,3}}.
    {move,{y,5},{x,2}}.
    {move,{x,1},{x,0}}.
    {move,{x,3},{x,1}}.
    {line,[{location,"core_SUITE.erl",145}]}.
    {call_ext,3,{extfunc,cerl,c_clause,3}}.
    {test_heap,2,1}.
    {put_list,{y,5},nil,{x,1}}.
    {move,{y,2},{x,3}}.
    {move,{y,5},{x,2}}.
    {move,{x,0},{y,5}}.
    {move,{x,1},{x,0}}.
    {move,{x,3},{x,1}}.
    {move,{y,0},{y,2}}.
    {trim,1,5}.
    {line,[{location,"core_SUITE.erl",146}]}.
    {call_ext,3,{extfunc,cerl,c_clause,3}}.
    {test_heap,10,1}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{y,4},{x,0},{x,0}}.
    {put_list,{y,2},{x,0},{x,0}}.
    {put_list,{y,3},{x,0},{x,0}}.
    {put_list,{y,1},{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,5,0}.
    {line,[{location,"core_SUITE.erl",141}]}.
    {call_ext,2,{extfunc,cerl,c_case,2}}.
    {line,[{location,"core_SUITE.erl",147}]}.
    {call,1,{f,77}}. % core_lint_function/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, core_lint_bs_pattern, 1, 73}.
  {label,72}.
    {line,[{location,"core_SUITE.erl",151}]}.
    {func_info,{atom,core_SUITE},{atom,core_lint_bs_pattern},1}.
  {label,73}.
    {'%',{var_info,{x,0},[{type,{t_cons,any,nil}}]}}.
    {allocate,0,1}.
    {line,[{location,"core_SUITE.erl",152}]}.
    {call_ext,1,{extfunc,cerl,c_binary,1}}.
    {test_heap,2,1}.
    {put_list,{x,0},nil,{x,0}}.
    {call_last,1,{f,75},0}. % core_lint_pattern/1


{function, core_lint_pattern, 1, 75}.
  {label,74}.
    {line,[{location,"core_SUITE.erl",154}]}.
    {func_info,{atom,core_SUITE},{atom,core_lint_pattern},1}.
  {label,75}.
    {'%',{var_info,{x,0},[{type,{t_cons,any,nil}}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"core_SUITE.erl",155}]}.
    {call_ext,1,{extfunc,cerl,c_float,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {call_ext,2,{extfunc,cerl,c_clause,2}}.
    {test_heap,2,1}.
    {put_list,{x,0},nil,{y,0}}.
    {line,[{location,"core_SUITE.erl",156}]}.
    {call_ext,0,{extfunc,cerl,c_nil,0}}.
    {move,{y,0},{x,1}}.
    {trim,1,0}.
    {call_ext,2,{extfunc,cerl,c_case,2}}.
    {call_last,1,{f,77},0}. % core_lint_function/1


{function, core_lint_function, 1, 77}.
  {label,76}.
    {line,[{location,"core_SUITE.erl",158}]}.
    {func_info,{atom,core_SUITE},{atom,core_lint_function},1}.
  {label,77}.
    {move,nil,{x,1}}.
    {move,{x,0},{x,2}}.
    {move,nil,{x,0}}.
    {call_only,3,{f,79}}. % core_lint_function/3


{function, core_lint_function, 3, 79}.
  {label,78}.
    {line,[{location,"core_SUITE.erl",161}]}.
    {func_info,{atom,core_SUITE},{atom,core_lint_function},3}.
  {label,79}.
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,any,nil}}]}}.
    {allocate,4,3}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,2},{y,1}}.
    {move,{x,1},{y,2}}.
    {move,{x,0},{y,3}}.
    {move,{atom,core_lint_test},{x,0}}.
    {line,[{location,"core_SUITE.erl",162}]}.
    {call_ext,1,{extfunc,cerl,c_atom,1}}.
    {move,{y,1},{x,1}}.
    {move,{x,0},{y,1}}.
    {move,nil,{x,0}}.
    {line,[{location,"core_SUITE.erl",163}]}.
    {call_ext,2,{extfunc,cerl,c_fun,2}}.
    {move,{x,0},{y,0}}.
    {move,{literal,{main,0}},{x,0}}.
    {line,[{location,"core_SUITE.erl",164}]}.
    {call_ext,1,{extfunc,cerl,c_var,1}}.
    {test_heap,5,1}.
    {put_tuple2,{x,0},{list,[{x,0},{y,0}]}}.
    {put_list,{x,0},nil,{x,3}}.
    {move,{y,2},{x,2}}.
    {move,{y,3},{x,1}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,2},{y,3}]}}.
    {trim,2,2}.
    {line,[{location,"core_SUITE.erl",165}]}.
    {call_ext,4,{extfunc,cerl,c_module,4}}.
    {move,{x,0},{y,1}}.
    {move,{literal,[from_core,clint0,return]},{x,1}}.
    {line,[{location,"core_SUITE.erl",167}]}.
    {call_ext,2,{extfunc,compile,forms,2}}.
    {test,is_tagged_tuple,{f,82},[{x,0},3,{atom,error}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_nonempty_list,{f,82},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_tuple,{f,82},[{x,2}]}.
    {test,test_arity,{f,82},[{x,2},2]}.
    {get_tuple_element,{x,2},0,{x,3}}.
    {test,is_eq_exact,{f,82},[{x,3},{literal,"core_lint_test"}]}.
    {test,is_nil,{f,82},[{x,1}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_nil,{f,82},[{x,1}]}.
    {test_heap,2,3}.
    {get_tuple_element,{x,2},1,{y,0}}.
    {put_list,{y,0},nil,{x,1}}.
    {move,{literal,"~p\n"},{x,0}}.
    {line,[{location,"core_SUITE.erl",168}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,133},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[false,true]}}]}}.
    {move,{y,0},{x,1}}.
    {trim,1,1}.
    {line,[{location,"core_SUITE.erl",169}]}.
    {call_ext,2,{extfunc,lists,filter,2}}.
    {test,is_nil,{f,81},[{tr,{x,0},{t_list,any,nil}}]}.
    {move,{literal,[from_core,clint0,report]},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"core_SUITE.erl",172}]}.
    {call_ext,2,{extfunc,compile,forms,2}}.
    {test,is_eq_exact,{f,80},[{x,0},{atom,error}]}.
    {deallocate,0}.
    return.
  {label,80}.
    {badmatch,{x,0}}.
  {label,81}.
    {line,[{location,"core_SUITE.erl",169}]}.
    {badmatch,{x,0}}.
  {label,82}.
    {line,[{location,"core_SUITE.erl",166}]}.
    {badmatch,{x,0}}.


{function, nif, 1, 84}.
  {label,83}.
    {line,[{location,"core_SUITE.erl",174}]}.
    {func_info,{atom,core_SUITE},{atom,nif},1}.
  {label,84}.
    {allocate,1,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,[{d,'WITH_ATTRIBUTE'},{d,'WITH_LOAD_NIF'}]},{x,1}}.
    {line,[{location,"core_SUITE.erl",177}]}.
    {call,2,{f,105}}. % nif_compile_to_cerl/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {move,{x,0},{y,0}}.
    {move,{integer,1},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{atom,init},{x,0}}.
    {line,[{location,"core_SUITE.erl",178}]}.
    {call,3,{f,108}}. % nif_first_instruction_is_nif_start/3
    {'%',{var_info,{x,0},[{type,{t_atom,[false,not_found,true]}}]}}.
    {test,is_eq_exact,
          {f,89},
          [{tr,{x,0},{t_atom,[false,not_found,true]}},{atom,false}]}.
    {move,{integer,1},{x,1}}.
    {move,{y,0},{x,2}}.
    {move,{atom,start},{x,0}}.
    {line,[{location,"core_SUITE.erl",179}]}.
    {call,3,{f,108}}. % nif_first_instruction_is_nif_start/3
    {'%',{var_info,{x,0},[{type,{t_atom,[false,not_found,true]}}]}}.
    {test,is_eq_exact,
          {f,88},
          [{tr,{x,0},{t_atom,[false,not_found,true]}},{atom,true}]}.
    {move,{integer,1},{x,1}}.
    {move,{y,0},{x,2}}.
    {move,{atom,bug0},{x,0}}.
    {line,[{location,"core_SUITE.erl",180}]}.
    {call,3,{f,108}}. % nif_first_instruction_is_nif_start/3
    {'%',{var_info,{x,0},[{type,{t_atom,[false,not_found,true]}}]}}.
    {test,is_eq_exact,
          {f,87},
          [{tr,{x,0},{t_atom,[false,not_found,true]}},{atom,false}]}.
    {move,{integer,0},{x,1}}.
    {move,{y,0},{x,2}}.
    {move,{atom,module_info},{x,0}}.
    {line,[{location,"core_SUITE.erl",181}]}.
    {call,3,{f,108}}. % nif_first_instruction_is_nif_start/3
    {'%',{var_info,{x,0},[{type,{t_atom,[false,not_found,true]}}]}}.
    {test,is_eq_exact,
          {f,86},
          [{tr,{x,0},{t_atom,[false,not_found,true]}},{atom,false}]}.
    {move,{integer,1},{x,1}}.
    {move,{y,0},{x,2}}.
    {trim,1,0}.
    {move,{atom,module_info},{x,0}}.
    {line,[{location,"core_SUITE.erl",182}]}.
    {call,3,{f,108}}. % nif_first_instruction_is_nif_start/3
    {'%',{var_info,{x,0},[{type,{t_atom,[false,not_found,true]}}]}}.
    {test,is_eq_exact,
          {f,85},
          [{tr,{x,0},{t_atom,[false,not_found,true]}},{atom,false}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,85}.
    {badmatch,{x,0}}.
  {label,86}.
    {line,[{location,"core_SUITE.erl",181}]}.
    {badmatch,{x,0}}.
  {label,87}.
    {line,[{location,"core_SUITE.erl",180}]}.
    {badmatch,{x,0}}.
  {label,88}.
    {line,[{location,"core_SUITE.erl",179}]}.
    {badmatch,{x,0}}.
  {label,89}.
    {line,[{location,"core_SUITE.erl",178}]}.
    {badmatch,{x,0}}.


{function, no_nif, 1, 91}.
  {label,90}.
    {line,[{location,"core_SUITE.erl",185}]}.
    {func_info,{atom,core_SUITE},{atom,no_nif},1}.
  {label,91}.
    {allocate,1,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,[{d,'WITH_LOAD_NIF'}]},{x,1}}.
    {line,[{location,"core_SUITE.erl",187}]}.
    {call,2,{f,105}}. % nif_compile_to_cerl/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {move,{x,0},{y,0}}.
    {move,{integer,1},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{atom,init},{x,0}}.
    {line,[{location,"core_SUITE.erl",188}]}.
    {call,3,{f,108}}. % nif_first_instruction_is_nif_start/3
    {'%',{var_info,{x,0},[{type,{t_atom,[false,not_found,true]}}]}}.
    {test,is_eq_exact,
          {f,96},
          [{tr,{x,0},{t_atom,[false,not_found,true]}},{atom,true}]}.
    {move,{integer,1},{x,1}}.
    {move,{y,0},{x,2}}.
    {move,{atom,start},{x,0}}.
    {line,[{location,"core_SUITE.erl",189}]}.
    {call,3,{f,108}}. % nif_first_instruction_is_nif_start/3
    {'%',{var_info,{x,0},[{type,{t_atom,[false,not_found,true]}}]}}.
    {test,is_eq_exact,
          {f,95},
          [{tr,{x,0},{t_atom,[false,not_found,true]}},{atom,true}]}.
    {move,{integer,1},{x,1}}.
    {move,{y,0},{x,2}}.
    {move,{atom,bug0},{x,0}}.
    {line,[{location,"core_SUITE.erl",190}]}.
    {call,3,{f,108}}. % nif_first_instruction_is_nif_start/3
    {'%',{var_info,{x,0},[{type,{t_atom,[false,not_found,true]}}]}}.
    {test,is_eq_exact,
          {f,94},
          [{tr,{x,0},{t_atom,[false,not_found,true]}},{atom,true}]}.
    {move,{integer,0},{x,1}}.
    {move,{y,0},{x,2}}.
    {move,{atom,module_info},{x,0}}.
    {line,[{location,"core_SUITE.erl",191}]}.
    {call,3,{f,108}}. % nif_first_instruction_is_nif_start/3
    {'%',{var_info,{x,0},[{type,{t_atom,[false,not_found,true]}}]}}.
    {test,is_eq_exact,
          {f,93},
          [{tr,{x,0},{t_atom,[false,not_found,true]}},{atom,true}]}.
    {move,{integer,1},{x,1}}.
    {move,{y,0},{x,2}}.
    {trim,1,0}.
    {move,{atom,module_info},{x,0}}.
    {line,[{location,"core_SUITE.erl",192}]}.
    {call,3,{f,108}}. % nif_first_instruction_is_nif_start/3
    {'%',{var_info,{x,0},[{type,{t_atom,[false,not_found,true]}}]}}.
    {test,is_eq_exact,
          {f,92},
          [{tr,{x,0},{t_atom,[false,not_found,true]}},{atom,true}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,92}.
    {badmatch,{x,0}}.
  {label,93}.
    {line,[{location,"core_SUITE.erl",191}]}.
    {badmatch,{x,0}}.
  {label,94}.
    {line,[{location,"core_SUITE.erl",190}]}.
    {badmatch,{x,0}}.
  {label,95}.
    {line,[{location,"core_SUITE.erl",189}]}.
    {badmatch,{x,0}}.
  {label,96}.
    {line,[{location,"core_SUITE.erl",188}]}.
    {badmatch,{x,0}}.


{function, no_load_nif, 1, 98}.
  {label,97}.
    {line,[{location,"core_SUITE.erl",195}]}.
    {func_info,{atom,core_SUITE},{atom,no_load_nif},1}.
  {label,98}.
    {allocate,1,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,nil,{x,1}}.
    {line,[{location,"core_SUITE.erl",197}]}.
    {call,2,{f,105}}. % nif_compile_to_cerl/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {move,{x,0},{y,0}}.
    {move,{integer,1},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{atom,init},{x,0}}.
    {line,[{location,"core_SUITE.erl",198}]}.
    {call,3,{f,108}}. % nif_first_instruction_is_nif_start/3
    {'%',{var_info,{x,0},[{type,{t_atom,[false,not_found,true]}}]}}.
    {test,is_eq_exact,
          {f,103},
          [{tr,{x,0},{t_atom,[false,not_found,true]}},{atom,false}]}.
    {move,{integer,1},{x,1}}.
    {move,{y,0},{x,2}}.
    {move,{atom,start},{x,0}}.
    {line,[{location,"core_SUITE.erl",199}]}.
    {call,3,{f,108}}. % nif_first_instruction_is_nif_start/3
    {'%',{var_info,{x,0},[{type,{t_atom,[false,not_found,true]}}]}}.
    {test,is_eq_exact,
          {f,102},
          [{tr,{x,0},{t_atom,[false,not_found,true]}},{atom,false}]}.
    {move,{integer,1},{x,1}}.
    {move,{y,0},{x,2}}.
    {move,{atom,bug0},{x,0}}.
    {line,[{location,"core_SUITE.erl",200}]}.
    {call,3,{f,108}}. % nif_first_instruction_is_nif_start/3
    {'%',{var_info,{x,0},[{type,{t_atom,[false,not_found,true]}}]}}.
    {test,is_eq_exact,
          {f,101},
          [{tr,{x,0},{t_atom,[false,not_found,true]}},{atom,false}]}.
    {move,{integer,0},{x,1}}.
    {move,{y,0},{x,2}}.
    {move,{atom,module_info},{x,0}}.
    {line,[{location,"core_SUITE.erl",201}]}.
    {call,3,{f,108}}. % nif_first_instruction_is_nif_start/3
    {'%',{var_info,{x,0},[{type,{t_atom,[false,not_found,true]}}]}}.
    {test,is_eq_exact,
          {f,100},
          [{tr,{x,0},{t_atom,[false,not_found,true]}},{atom,false}]}.
    {move,{integer,1},{x,1}}.
    {move,{y,0},{x,2}}.
    {trim,1,0}.
    {move,{atom,module_info},{x,0}}.
    {line,[{location,"core_SUITE.erl",202}]}.
    {call,3,{f,108}}. % nif_first_instruction_is_nif_start/3
    {'%',{var_info,{x,0},[{type,{t_atom,[false,not_found,true]}}]}}.
    {test,is_eq_exact,
          {f,99},
          [{tr,{x,0},{t_atom,[false,not_found,true]}},{atom,false}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,99}.
    {badmatch,{x,0}}.
  {label,100}.
    {line,[{location,"core_SUITE.erl",201}]}.
    {badmatch,{x,0}}.
  {label,101}.
    {line,[{location,"core_SUITE.erl",200}]}.
    {badmatch,{x,0}}.
  {label,102}.
    {line,[{location,"core_SUITE.erl",199}]}.
    {badmatch,{x,0}}.
  {label,103}.
    {line,[{location,"core_SUITE.erl",198}]}.
    {badmatch,{x,0}}.


{function, nif_compile_to_cerl, 2, 105}.
  {label,104}.
    {line,[{location,"core_SUITE.erl",205}]}.
    {func_info,{atom,core_SUITE},{atom,nif_compile_to_cerl},2}.
  {label,105}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_atom,[d]},
                           2 => {t_atom,['WITH_ATTRIBUTE','WITH_LOAD_NIF']}}},
                     nil}}]}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{x,1}}.
    {move,{atom,data_dir},{x,0}}.
    {line,[{location,"core_SUITE.erl",206}]}.
    {call_ext,2,{extfunc,proplists,get_value,2}}.
    {move,{literal,"nif.erl"},{x,1}}.
    {call_ext,2,{extfunc,filename,join,2}}.
    {test_heap,6,1}.
    {put_list,{atom,deterministic},{y,0},{x,1}}.
    {put_list,{atom,binary},{x,1},{x,1}}.
    {put_list,{atom,to_core},{x,1},{x,1}}.
    {trim,1,0}.
    {line,[{location,"core_SUITE.erl",207}]}.
    {call_ext,2,{extfunc,compile,file,2}}.
    {test,is_tagged_tuple,{f,106},[{x,0},3,{atom,ok}]}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {line,[{location,"core_SUITE.erl",208}]}.
    {call_ext,1,{extfunc,cerl,module_defs,1}}.
    {call_last,1,{f,128},0}. % '-nif_compile_to_cerl/2-lc$^0/1-0-'/1
  {label,106}.
    {line,[{location,"core_SUITE.erl",207}]}.
    {badmatch,{x,0}}.


{function, nif_first_instruction_is_nif_start, 3, 108}.
  {label,107}.
    {line,[{location,"core_SUITE.erl",211}]}.
    {func_info,{atom,core_SUITE},{atom,nif_first_instruction_is_nif_start},3}.
  {label,108}.
    {'%',{var_info,{x,0},[{type,{t_atom,[bug0,init,module_info,start]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,1}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {test,is_nonempty_list,{f,112},[{x,2}]}.
    {get_list,{x,2},{x,3},{x,2}}.
    {get_tuple_element,{x,3},0,{x,4}}.
    {test,is_tuple,{f,111},[{x,4}]}.
    {test,test_arity,{f,111},[{x,4},2]}.
    {get_tuple_element,{x,4},0,{x,5}}.
    {test,is_eq_exact,
          {f,111},
          [{x,5},{tr,{x,0},{t_atom,[bug0,init,module_info,start]}}]}.
    {get_tuple_element,{x,4},1,{x,4}}.
    {test,is_eq_exact,{f,111},[{x,4},{tr,{x,1},{t_integer,{0,1}}}]}.
    {get_tuple_element,{x,3},1,{x,0}}.
    {allocate,1,1}.
    {'try',{y,0},{f,109}}.
    {line,[{scope,[3]},{location,"core_SUITE.erl",213}]}.
    {call,1,{f,114}}. % assert_body_starts_with_nif_start/1
    {'%',{var_info,{x,0},[{type,{t_atom,[true]}}]}}.
    {try_end,{y,0}}.
    {deallocate,1}.
    return.
  {label,109}.
    {try_case,{y,0}}.
    {test,is_eq_exact,
          {f,110},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,error}]}.
    {move,{atom,false},{x,0}}.
    {deallocate,1}.
    return.
  {label,110}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.
  {label,111}.
    {call_only,3,{f,108}}. % nif_first_instruction_is_nif_start/3
  {label,112}.
    {move,{atom,not_found},{x,0}}.
    return.


{function, assert_body_starts_with_nif_start, 1, 114}.
  {label,113}.
    {line,[{location,"core_SUITE.erl",225}]}.
    {func_info,{atom,core_SUITE},{atom,assert_body_starts_with_nif_start},1}.
  {label,114}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"core_SUITE.erl",226}]}.
    {call_ext,1,{extfunc,cerl,is_c_letrec,1}}.
    {select_val,{x,0},
                {f,120},
                {list,[{atom,false},{f,116},{atom,true},{f,115}]}}.
  {label,115}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,126},0,0,{y,0},{list,[]}}.
    {'%',{var_info,{y,0},[{fun_type,{t_atom,[true]}}]}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"core_SUITE.erl",235}]}.
    {call_ext,1,{extfunc,cerl,letrec_defs,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"core_SUITE.erl",232}]}.
    {call_ext,2,{extfunc,lists,foreach,2}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {line,[{location,"core_SUITE.erl",237}]}.
    {call_ext,1,{extfunc,cerl,letrec_body,1}}.
    {jump,{f,117}}.
  {label,116}.
    {move,{y,1},{x,0}}.
  {label,117}.
    {line,[{location,"core_SUITE.erl",241}]}.
    {call_ext,1,{extfunc,cerl,seq_arg,1}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"core_SUITE.erl",242}]}.
    {call_ext,1,{extfunc,cerl,primop_name,1}}.
    {swap,{y,1},{x,0}}.
    {line,[{location,"core_SUITE.erl",243}]}.
    {call_ext,1,{extfunc,cerl,primop_arity,1}}.
    {test,is_eq_exact,{f,119},[{x,0},{integer,0}]}.
    {move,{y,1},{x,0}}.
    {trim,2,0}.
    {line,[{location,"core_SUITE.erl",244}]}.
    {call_ext,1,{extfunc,cerl,atom_val,1}}.
    {test,is_eq_exact,{f,118},[{x,0},{atom,nif_start}]}.
    {move,{atom,true},{x,0}}.
    {deallocate,0}.
    return.
  {label,118}.
    {badmatch,{x,0}}.
  {label,119}.
    {line,[{location,"core_SUITE.erl",243}]}.
    {badmatch,{x,0}}.
  {label,120}.
    {line,[{location,"core_SUITE.erl",226}]}.
    {case_end,{x,0}}.


{function, module_info, 0, 122}.
  {label,121}.
    {line,[]}.
    {func_info,{atom,core_SUITE},{atom,module_info},0}.
  {label,122}.
    {move,{atom,core_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 124}.
  {label,123}.
    {line,[]}.
    {func_info,{atom,core_SUITE},{atom,module_info},1}.
  {label,124}.
    {move,{x,0},{x,1}}.
    {move,{atom,core_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-assert_body_starts_with_nif_start/1-fun-0-', 1, 126}.
  {label,125}.
    {line,[{location,"core_SUITE.erl",232}]}.
    {func_info,{atom,core_SUITE},
               {atom,'-assert_body_starts_with_nif_start/1-fun-0-'},
               1}.
  {label,126}.
    {test,is_tuple,{f,125},[{x,0}]}.
    {test,test_arity,{f,125},[{x,0},2]}.
    {allocate,0,1}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {line,[{location,"core_SUITE.erl",234}]}.
    {call_ext,1,{extfunc,cerl,fun_body,1}}.
    {call_last,1,{f,114},0}. % assert_body_starts_with_nif_start/1


{function, '-nif_compile_to_cerl/2-lc$^0/1-0-', 1, 128}.
  {label,127}.
    {line,[{location,"core_SUITE.erl",209}]}.
    {func_info,{atom,core_SUITE},{atom,'-nif_compile_to_cerl/2-lc$^0/1-0-'},1}.
  {label,128}.
    {test,is_nonempty_list,{f,130},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tuple,{f,129},[{x,1}]}.
    {test,test_arity,{f,129},[{x,1},2]}.
    {allocate,2,2}.
    {move,{x,0},{y,1}}.
    {get_tuple_element,{x,1},0,{x,0}}.
    {get_tuple_element,{x,1},1,{y,0}}.
    {call_ext,1,{extfunc,cerl,var_name,1}}.
    {swap,{y,0},{x,0}}.
    {call_ext,1,{extfunc,cerl,fun_body,1}}.
    {swap,{y,1},{x,0}}.
    {call,1,{f,128}}. % '-nif_compile_to_cerl/2-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,0},{y,1}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,129}.
    {call_only,1,{f,128}}. % '-nif_compile_to_cerl/2-lc$^0/1-0-'/1
  {label,130}.
    {test,is_nil,{f,131},[{x,0}]}.
    return.
  {label,131}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-core_lint_function/3-fun-0-', 1, 133}.
  {label,132}.
    {line,[{location,"core_SUITE.erl",169}]}.
    {func_info,{atom,core_SUITE},{atom,'-core_lint_function/3-fun-0-'},1}.
  {label,133}.
    {test,is_tagged_tuple,{f,134},[{x,0},3,{atom,none}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_eq_exact,{f,134},[{x,0},{atom,core_lint}]}.
    {move,{atom,false},{x,0}}.
    return.
  {label,134}.
    {move,{atom,true},{x,0}}.
    return.
