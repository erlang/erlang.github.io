{module, beam_ssa_check_SUITE}.  %% version = 0

{exports, [{alias_checks,1},
           {all,0},
           {annotation_checks,1},
           {appendable_checks,1},
           {bs_size_unit_checks,1},
           {end_per_group,2},
           {end_per_suite,1},
           {groups,0},
           {init_per_group,2},
           {init_per_suite,1},
           {module_info,0},
           {module_info,1},
           {private_append_checks,1},
           {ret_annotation_checks,1},
           {sanity_checks,1},
           {suite,0}]}.

{attributes, []}.

{labels, 52}.


{function, suite, 0, 2}.
  {label,1}.
    {line,[{location,"beam_ssa_check_SUITE.erl",39}]}.
    {func_info,{atom,beam_ssa_check_SUITE},{atom,suite},0}.
  {label,2}.
    {move,{literal,[{ct_hooks,[ts_install_cth]}]},{x,0}}.
    return.


{function, all, 0, 4}.
  {label,3}.
    {line,[{location,"beam_ssa_check_SUITE.erl",41}]}.
    {func_info,{atom,beam_ssa_check_SUITE},{atom,all},0}.
  {label,4}.
    {move,{literal,[{group,post_ssa_opt_dynamic},{group,post_ssa_opt_static}]},
          {x,0}}.
    return.


{function, groups, 0, 6}.
  {label,5}.
    {line,[{location,"beam_ssa_check_SUITE.erl",44}]}.
    {func_info,{atom,beam_ssa_check_SUITE},{atom,groups},0}.
  {label,6}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"beam_ssa_check_SUITE.erl",45}]}.
    {call_ext,0,{extfunc,test_lib,parallel,0}}.
    {move,{x,0},{y,0}}.
    {line,[{location,"beam_ssa_check_SUITE.erl",52}]}.
    {call_ext,0,{extfunc,test_lib,parallel,0}}.
    {test_heap,12,1}.
    {put_tuple2,{x,0},
                {list,[{atom,post_ssa_opt_dynamic},
                       {x,0},
                       {literal,[bs_size_unit_checks]}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_tuple2,{x,1},
                {list,[{atom,post_ssa_opt_static},
                       {y,0},
                       {literal,[alias_checks,annotation_checks,
                                 appendable_checks,private_append_checks,
                                 ret_annotation_checks,sanity_checks]}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,1}.
    return.


{function, init_per_suite, 1, 8}.
  {label,7}.
    {line,[{location,"beam_ssa_check_SUITE.erl",55}]}.
    {func_info,{atom,beam_ssa_check_SUITE},{atom,init_per_suite},1}.
  {label,8}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{atom,beam_ssa_check_SUITE},{x,0}}.
    {line,[{location,"beam_ssa_check_SUITE.erl",56}]}.
    {call_ext,1,{extfunc,test_lib,recompile,1}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, end_per_suite, 1, 10}.
  {label,9}.
    {line,[{location,"beam_ssa_check_SUITE.erl",59}]}.
    {func_info,{atom,beam_ssa_check_SUITE},{atom,end_per_suite},1}.
  {label,10}.
    {move,{atom,ok},{x,0}}.
    return.


{function, init_per_group, 2, 12}.
  {label,11}.
    {line,[{location,"beam_ssa_check_SUITE.erl",62}]}.
    {func_info,{atom,beam_ssa_check_SUITE},{atom,init_per_group},2}.
  {label,12}.
    {test,is_eq_exact,{f,13},[{x,0},{atom,post_ssa_opt_dynamic}]}.
    {allocate,2,2}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,1}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"beam_ssa_check_SUITE.erl",63}]}.
    {call,1,{f,36}}. % dynamic_workdir/1
    {test_heap,2,1}.
    {put_list,{x,0},nil,{x,1}}.
    {move,{x,0},{y,0}}.
    {move,{literal,"Creating working directory for generated test cases: ~p~n"},
          {x,0}}.
    {line,[{location,"beam_ssa_check_SUITE.erl",64}]}.
    {call_ext,2,{extfunc,ct,log,2}}.
    {move,{y,0},{x,0}}.
    {trim,1,1}.
    {line,[{location,"beam_ssa_check_SUITE.erl",66}]}.
    {call_ext,1,{extfunc,file,make_dir,1}}.
    {test,is_eq_exact,{f,14},[{x,0},{atom,ok}]}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,13}.
    {move,{x,1},{x,0}}.
    return.
  {label,14}.
    {badmatch,{x,0}}.


{function, end_per_group, 2, 16}.
  {label,15}.
    {line,[{location,"beam_ssa_check_SUITE.erl",71}]}.
    {func_info,{atom,beam_ssa_check_SUITE},{atom,end_per_group},2}.
  {label,16}.
    {test,is_eq_exact,{f,19},[{x,0},{atom,post_ssa_opt_dynamic}]}.
    {allocate,2,2}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,1}}.
    {move,{atom,priv_dir},{x,0}}.
    {line,[{location,"beam_ssa_check_SUITE.erl",72}]}.
    {call_ext,2,{extfunc,proplists,get_value,2}}.
    {move,{literal,"dynamic"},{x,1}}.
    {line,[{location,"beam_ssa_check_SUITE.erl",73}]}.
    {call_ext,2,{extfunc,filename,join,2}}.
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,1}}.
    {move,{atom,keep_generated},{x,0}}.
    {line,[{location,"beam_ssa_check_SUITE.erl",74}]}.
    {call_ext,2,{extfunc,proplists,get_bool,2}}.
    {select_val,{x,0},{f,20},{list,[{atom,false},{f,18},{atom,true},{f,17}]}}.
  {label,17}.
    {move,{y,1},{x,0}}.
    {deallocate,2}.
    return.
  {label,18}.
    {test_heap,2,0}.
    {put_list,{y,0},nil,{x,1}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {move,{literal,"Removing working directory for generated test cases: ~p~n"},
          {x,0}}.
    {line,[{location,"beam_ssa_check_SUITE.erl",76}]}.
    {call_ext,2,{extfunc,ct,log,2}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"beam_ssa_check_SUITE.erl",78}]}.
    {call_ext_last,1,{extfunc,file,del_dir_r,1},1}.
  {label,19}.
    {move,{x,1},{x,0}}.
    return.
  {label,20}.
    {line,[{location,"beam_ssa_check_SUITE.erl",74}]}.
    {case_end,{x,0}}.


{function, alias_checks, 1, 22}.
  {label,21}.
    {line,[{location,"beam_ssa_check_SUITE.erl",85}]}.
    {func_info,{atom,beam_ssa_check_SUITE},{atom,alias_checks},1}.
  {label,22}.
    {test,is_list,{f,21},[{x,0}]}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{x,0},{x,1}}.
    {move,{atom,alias},{x,0}}.
    {line,[{location,"beam_ssa_check_SUITE.erl",86}]}.
    {call,2,{f,38}}. % run_post_ssa_opt/2
    {move,{y,0},{x,1}}.
    {move,{atom,alias_non_convergence},{x,0}}.
    {line,[{location,"beam_ssa_check_SUITE.erl",87}]}.
    {call,2,{f,38}}. % run_post_ssa_opt/2
    {move,{y,0},{x,1}}.
    {move,{atom,alias_chain},{x,0}}.
    {call_last,2,{f,38},1}. % run_post_ssa_opt/2


{function, annotation_checks, 1, 24}.
  {label,23}.
    {line,[{location,"beam_ssa_check_SUITE.erl",90}]}.
    {func_info,{atom,beam_ssa_check_SUITE},{atom,annotation_checks},1}.
  {label,24}.
    {test,is_list,{f,23},[{x,0}]}.
    {move,{x,0},{x,1}}.
    {move,{atom,annotations},{x,0}}.
    {call_only,2,{f,38}}. % run_post_ssa_opt/2


{function, appendable_checks, 1, 26}.
  {label,25}.
    {line,[{location,"beam_ssa_check_SUITE.erl",93}]}.
    {func_info,{atom,beam_ssa_check_SUITE},{atom,appendable_checks},1}.
  {label,26}.
    {test,is_list,{f,25},[{x,0}]}.
    {move,{x,0},{x,1}}.
    {move,{atom,appendable},{x,0}}.
    {call_only,2,{f,38}}. % run_post_ssa_opt/2


{function, bs_size_unit_checks, 1, 28}.
  {label,27}.
    {line,[{location,"beam_ssa_check_SUITE.erl",96}]}.
    {func_info,{atom,beam_ssa_check_SUITE},{atom,bs_size_unit_checks},1}.
  {label,28}.
    {test,is_list,{f,27},[{x,0}]}.
    {move,{x,0},{x,1}}.
    {move,{atom,bs_size_unit_checks},{x,0}}.
    {call_only,2,{f,44}}. % gen_and_run_post_ssa_opt/2


{function, private_append_checks, 1, 30}.
  {label,29}.
    {line,[{location,"beam_ssa_check_SUITE.erl",99}]}.
    {func_info,{atom,beam_ssa_check_SUITE},{atom,private_append_checks},1}.
  {label,30}.
    {test,is_list,{f,29},[{x,0}]}.
    {move,{x,0},{x,1}}.
    {move,{atom,private_append},{x,0}}.
    {call_only,2,{f,38}}. % run_post_ssa_opt/2


{function, ret_annotation_checks, 1, 32}.
  {label,31}.
    {line,[{location,"beam_ssa_check_SUITE.erl",102}]}.
    {func_info,{atom,beam_ssa_check_SUITE},{atom,ret_annotation_checks},1}.
  {label,32}.
    {test,is_list,{f,31},[{x,0}]}.
    {move,{x,0},{x,1}}.
    {move,{atom,ret_annotation},{x,0}}.
    {call_only,2,{f,38}}. % run_post_ssa_opt/2


{function, sanity_checks, 1, 34}.
  {label,33}.
    {line,[{location,"beam_ssa_check_SUITE.erl",105}]}.
    {func_info,{atom,beam_ssa_check_SUITE},{atom,sanity_checks},1}.
  {label,34}.
    {test,is_list,{f,33},[{x,0}]}.
    {move,{x,0},{x,1}}.
    {move,{atom,sanity_checks},{x,0}}.
    {call_only,2,{f,38}}. % run_post_ssa_opt/2


{function, dynamic_workdir, 1, 36}.
  {label,35}.
    {line,[{location,"beam_ssa_check_SUITE.erl",108}]}.
    {func_info,{atom,beam_ssa_check_SUITE},{atom,dynamic_workdir},1}.
  {label,36}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{atom,priv_dir},{x,0}}.
    {line,[{location,"beam_ssa_check_SUITE.erl",109}]}.
    {call_ext,2,{extfunc,proplists,get_value,2}}.
    {move,{literal,"dynamic"},{x,1}}.
    {line,[{location,"beam_ssa_check_SUITE.erl",110}]}.
    {call_ext_last,2,{extfunc,filename,join,2},0}.


{function, run_post_ssa_opt, 2, 38}.
  {label,37}.
    {line,[{location,"beam_ssa_check_SUITE.erl",112}]}.
    {func_info,{atom,beam_ssa_check_SUITE},{atom,run_post_ssa_opt},2}.
  {label,38}.
    {'%',{var_info,{x,0},[{type,{t_atom,any}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,any,any}}]}}.
    {allocate,2,2}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,1}}.
    {line,[{location,"beam_ssa_check_SUITE.erl",113}]}.
    {call_ext,1,{extfunc,erlang,atom_to_list,1}}.
    {move,{literal,".erl"},{x,1}}.
    {call_ext,2,{extfunc,erlang,'++',2}}.
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,1}}.
    {move,{atom,data_dir},{x,0}}.
    {line,[{location,"beam_ssa_check_SUITE.erl",115}]}.
    {call_ext,2,{extfunc,proplists,get_value,2}}.
    {move,{y,0},{x,1}}.
    {trim,1,1}.
    {line,[{location,"beam_ssa_check_SUITE.erl",116}]}.
    {call_ext,2,{extfunc,filename,join,2}}.
    {move,{y,0},{x,2}}.
    {move,{atom,post_ssa_opt},{x,1}}.
    {call_last,3,{f,40},1}. % run_checks/3


{function, run_checks, 3, 40}.
  {label,39}.
    {line,[{location,"beam_ssa_check_SUITE.erl",119}]}.
    {func_info,{atom,beam_ssa_check_SUITE},{atom,run_checks},3}.
  {label,40}.
    {'%',{var_info,{x,1},[{type,{t_atom,[post_ssa_opt]}}]}}.
    {'%',{var_info,{x,2},[{type,{t_list,any,any}}]}}.
    {allocate,0,1}.
    {move,{literal,[binary,deterministic,
                    {check_ssa,post_ssa_opt},
                    report_errors]},
          {x,1}}.
    {line,[{location,"beam_ssa_check_SUITE.erl",121}]}.
    {call_ext,2,{extfunc,compile,file,2}}.
    {test,is_tuple,{f,41},[{x,0}]}.
    {test,is_tagged_tuple,
          {f,42},
          [{tr,{x,0},{t_tuple,0,false,#{}}},3,{atom,ok}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,41}.
    {test,is_eq_exact,{f,42},[{x,0},{atom,error}]}.
    {move,{literal,{unexpected_error,"SSA check failed"}},{x,0}}.
    {line,[{location,"beam_ssa_check_SUITE.erl",123}]}.
    {call_ext_last,1,{extfunc,ct,fail,1},0}.
  {label,42}.
    {line,[{location,"beam_ssa_check_SUITE.erl",121}]}.
    {case_end,{x,0}}.


{function, gen_and_run_post_ssa_opt, 2, 44}.
  {label,43}.
    {line,[{location,"beam_ssa_check_SUITE.erl",126}]}.
    {func_info,{atom,beam_ssa_check_SUITE},{atom,gen_and_run_post_ssa_opt},2}.
  {label,44}.
    {'%',{var_info,{x,0},[{type,{t_atom,[bs_size_unit_checks]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,any,any}}]}}.
    {allocate,2,2}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,1}}.
    {move,{atom,data_dir},{x,0}}.
    {line,[{location,"beam_ssa_check_SUITE.erl",130}]}.
    {call_ext,2,{extfunc,proplists,get_value,2}}.
    {move,{literal,"gen_bs_size_unit_checks.erl"},{x,1}}.
    {call_ext,2,{extfunc,filename,join,2}}.
    {test_heap,2,1}.
    {put_list,{x,0},nil,{x,1}}.
    {move,{x,0},{y,0}}.
    {move,{literal,"Compiling generator ~s~n"},{x,0}}.
    {line,[{location,"beam_ssa_check_SUITE.erl",132}]}.
    {call_ext,2,{extfunc,ct,log,2}}.
    {move,{literal,[binary]},{x,1}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"beam_ssa_check_SUITE.erl",133}]}.
    {call_ext,2,{extfunc,compile,file,2}}.
    {test,is_tagged_tuple,{f,47},[{x,0},3,{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,47},[{x,1},{atom,gen_bs_size_unit_checks}]}.
    {get_tuple_element,{x,0},2,{x,2}}.
    {move,{y,0},{x,1}}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{atom,gen_bs_size_unit_checks},{x,0}}.
    {line,[{location,"beam_ssa_check_SUITE.erl",134}]}.
    {call_ext,3,{extfunc,code,load_binary,3}}.
    {test,is_tagged_tuple,{f,46},[{x,0},2,{atom,module}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,46},[{x,1},{atom,gen_bs_size_unit_checks}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"beam_ssa_check_SUITE.erl",135}]}.
    {call,1,{f,36}}. % dynamic_workdir/1
    {move,{literal,"bs_size_unit_checks.erl"},{x,1}}.
    {call_ext,2,{extfunc,filename,join,2}}.
    {test_heap,2,1}.
    {put_list,{x,0},nil,{x,1}}.
    {move,{x,0},{y,0}}.
    {move,{literal,"Generating ~s~n"},{x,0}}.
    {line,[{location,"beam_ssa_check_SUITE.erl",136}]}.
    {call_ext,2,{extfunc,ct,log,2}}.
    {move,{y,1},{x,1}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"beam_ssa_check_SUITE.erl",137}]}.
    {call_ext,2,{extfunc,gen_bs_size_unit_checks,generate,2}}.
    {test,is_eq_exact,{f,45},[{x,0},{atom,ok}]}.
    {move,{atom,post_ssa_opt},{x,1}}.
    {move,{y,1},{x,2}}.
    {move,{y,0},{x,0}}.
    {call_last,3,{f,40},2}. % run_checks/3
  {label,45}.
    {badmatch,{x,0}}.
  {label,46}.
    {line,[{location,"beam_ssa_check_SUITE.erl",134}]}.
    {badmatch,{x,0}}.
  {label,47}.
    {line,[{location,"beam_ssa_check_SUITE.erl",133}]}.
    {badmatch,{x,0}}.


{function, module_info, 0, 49}.
  {label,48}.
    {line,[]}.
    {func_info,{atom,beam_ssa_check_SUITE},{atom,module_info},0}.
  {label,49}.
    {move,{atom,beam_ssa_check_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 51}.
  {label,50}.
    {line,[]}.
    {func_info,{atom,beam_ssa_check_SUITE},{atom,module_info},1}.
  {label,51}.
    {move,{x,0},{x,1}}.
    {move,{atom,beam_ssa_check_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.
