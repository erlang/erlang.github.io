{module, beam_validator_SUITE}.  %% version = 0

{exports, [{accessing_tags,1},
           {aliased_types,1},
           {all,0},
           {bad_bin_match,1},
           {bad_bin_unit,1},
           {bad_catch_try,1},
           {bad_dsetel,1},
           {bad_try_catch_nesting,1},
           {bad_tuples,1},
           {bif_inference,1},
           {branch_to_try_handler,1},
           {bs_saved_position_units,1},
           {call_last,1},
           {call_without_stack,1},
           {compiler_bug,1},
           {cons_guard,1},
           {container_performance,1},
           {cover_bin_opt,1},
           {dead_code,1},
           {end_per_group,2},
           {end_per_suite,1},
           {end_per_testcase,2},
           {failing_gc_guard_bif,1},
           {freg_range,1},
           {freg_uninit,1},
           {groups,0},
           {illegal_instruction,1},
           {inert_update_type,1},
           {infer_dead_value,1},
           {infer_on_eq,1},
           {infer_on_ne,1},
           {infer_relops,1},
           {init_per_group,2},
           {init_per_suite,1},
           {init_per_testcase,2},
           {map_field_lists,1},
           {merge_undefined,1},
           {missing_return_type,1},
           {module_info,0},
           {module_info,1},
           {no_exception_in_catch,1},
           {not_equal_inference,1},
           {overwrite_catchtag,1},
           {overwrite_trytag,1},
           {parent_container,1},
           {range_inference,1},
           {receive_marker,1},
           {receive_stacked,1},
           {safe_instructions,1},
           {singleton_inference,1},
           {stack,1},
           {state_after_fault_in_catch,1},
           {stupid_but_valid,1},
           {suite,0},
           {type_conflict,1},
           {undef_label,1},
           {uninit,1},
           {val_dsetel,1},
           {will_succeed,1},
           {xrange,1},
           {yrange,1}]}.

{attributes, []}.

{labels, 505}.


{function, init_per_testcase, 2, 2}.
  {label,1}.
    {line,[{location,"beam_validator_SUITE.erl",51}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,init_per_testcase},2}.
  {label,2}.
    {test,is_atom,{f,1},[{x,0}]}.
    {test,is_list,{f,1},[{x,1}]}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_testcase, 2, 4}.
  {label,3}.
    {line,[{location,"beam_validator_SUITE.erl",54}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,end_per_testcase},2}.
  {label,4}.
    {test,is_atom,{f,3},[{x,0}]}.
    {test,is_list,{f,3},[{x,1}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, suite, 0, 6}.
  {label,5}.
    {line,[{location,"beam_validator_SUITE.erl",57}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,suite},0}.
  {label,6}.
    {move,{literal,[{ct_hooks,[ts_install_cth]},{timetrap,{minutes,10}}]},
          {x,0}}.
    return.


{function, all, 0, 8}.
  {label,7}.
    {line,[{location,"beam_validator_SUITE.erl",61}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,all},0}.
  {label,8}.
    {move,{literal,[{group,p}]},{x,0}}.
    return.


{function, groups, 0, 10}.
  {label,9}.
    {line,[{location,"beam_validator_SUITE.erl",64}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,groups},0}.
  {label,10}.
    {allocate,0,0}.
    {line,[{location,"beam_validator_SUITE.erl",65}]}.
    {call_ext,0,{extfunc,test_lib,parallel,0}}.
    {test_heap,6,1}.
    {put_tuple2,{x,0},
                {list,[{atom,p},
                       {x,0},
                       {literal,[compiler_bug,stupid_but_valid,xrange,yrange,
                                 stack,call_last,merge_undefined,uninit,
                                 dead_code,overwrite_catchtag,
                                 overwrite_trytag,accessing_tags,
                                 bad_catch_try,cons_guard,freg_range,
                                 freg_uninit,bad_bin_match,bad_dsetel,
                                 state_after_fault_in_catch,
                                 no_exception_in_catch,undef_label,
                                 illegal_instruction,failing_gc_guard_bif,
                                 map_field_lists,cover_bin_opt,val_dsetel,
                                 bad_tuples,bad_try_catch_nesting,
                                 receive_stacked,aliased_types,type_conflict,
                                 infer_on_eq,infer_dead_value,infer_on_ne,
                                 branch_to_try_handler,call_without_stack,
                                 receive_marker,safe_instructions,
                                 missing_return_type,will_succeed,
                                 bs_saved_position_units,parent_container,
                                 container_performance,infer_relops,
                                 not_equal_inference,bad_bin_unit,
                                 singleton_inference,inert_update_type,
                                 range_inference,bif_inference]}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {deallocate,0}.
    return.


{function, init_per_suite, 1, 12}.
  {label,11}.
    {line,[{location,"beam_validator_SUITE.erl",87}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,init_per_suite},1}.
  {label,12}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{atom,beam_validator_SUITE},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",88}]}.
    {call_ext,1,{extfunc,test_lib,recompile,1}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, end_per_suite, 1, 14}.
  {label,13}.
    {line,[{location,"beam_validator_SUITE.erl",91}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,end_per_suite},1}.
  {label,14}.
    {move,{atom,ok},{x,0}}.
    return.


{function, init_per_group, 2, 16}.
  {label,15}.
    {line,[{location,"beam_validator_SUITE.erl",94}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,init_per_group},2}.
  {label,16}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_group, 2, 18}.
  {label,17}.
    {line,[{location,"beam_validator_SUITE.erl",97}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,end_per_group},2}.
  {label,18}.
    {move,{x,1},{x,0}}.
    return.


{function, compiler_bug, 1, 20}.
  {label,19}.
    {line,[{location,"beam_validator_SUITE.erl",100}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,compiler_bug},1}.
  {label,20}.
    {test,is_list,{f,19},[{x,0}]}.
    {allocate,1,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{x,1}}.
    {move,{atom,data_dir},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",103}]}.
    {call_ext,2,{extfunc,proplists,get_value,2}}.
    {move,{literal,"compiler_bug"},{x,1}}.
    {line,[{location,"beam_validator_SUITE.erl",104}]}.
    {call_ext,2,{extfunc,filename,join,2}}.
    {move,{x,0},{y,0}}.
    {move,{literal,[from_asm,report_errors,time]},{x,1}}.
    {line,[{location,"beam_validator_SUITE.erl",105}]}.
    {call_ext,2,{extfunc,compile,file,2}}.
    {test,is_eq_exact,{f,22},[{x,0},{atom,error}]}.
    {move,{literal,[from_asm,return_errors,time]},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"beam_validator_SUITE.erl",112}]}.
    {call_ext,2,{extfunc,compile,file,2}}.
    {test,is_tagged_tuple,{f,21},[{x,0},3,{atom,error}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_nonempty_list,{f,21},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_tuple,{f,21},[{x,2}]}.
    {test,test_arity,{f,21},[{x,2},2]}.
    {get_tuple_element,{x,2},0,{x,3}}.
    {test,is_eq_exact,{f,21},[{x,3},{literal,"compiler_bug"}]}.
    {get_tuple_element,{x,2},1,{x,2}}.
    {test,is_nonempty_list,{f,21},[{x,2}]}.
    {get_list,{x,2},{x,3},{x,2}}.
    {test,is_tuple,{f,21},[{x,3}]}.
    {test,test_arity,{f,21},[{x,3},3]}.
    {get_tuple_element,{x,3},1,{x,3}}.
    {test,is_eq_exact,{f,21},[{x,3},{atom,beam_validator}]}.
    {test,is_nil,{f,21},[{x,2}]}.
    {test,is_nil,{f,21},[{x,1}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_nil,{f,21},[{x,1}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,21}.
    {line,[{location,"beam_validator_SUITE.erl",109}]}.
    {badmatch,{x,0}}.
  {label,22}.
    {line,[{location,"beam_validator_SUITE.erl",105}]}.
    {badmatch,{x,0}}.


{function, stupid_but_valid, 1, 24}.
  {label,23}.
    {line,[{location,"beam_validator_SUITE.erl",116}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,stupid_but_valid},1}.
  {label,24}.
    {test,is_list,{f,23},[{x,0}]}.
    {allocate,1,0}.
    {'try',{y,0},{f,25}}.
    {move,{atom,nisse},{x,1}}.
    {move,{atom,value},{x,2}}.
    {move,{integer,6},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",118}]}.
    {call_ext,3,{extfunc,erlang,setelement,3}}.
  {label,25}.
    {try_case,{y,0}}.
    {test,is_eq_exact,
          {f,26},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,error}]}.
    {test,is_eq_exact,{f,26},[{x,1},{atom,badarg}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,26}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.


{function, xrange, 1, 28}.
  {label,27}.
    {line,[{location,"beam_validator_SUITE.erl",125}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,xrange},1}.
  {label,28}.
    {test,is_list,{f,27},[{x,0}]}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{atom,xrange},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",126}]}.
    {call,2,{f,261}}. % do_val/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,29},
          [{tr,{x,0},{t_list,any,nil}},
           {literal,[{{t,sum_1,2},
                      {{bif,'+',{f,0},[{x,-1},{x,1}],{x,0}},
                       4,
                       {bad_register,{x,-1}}}},
                     {{t,sum_2,2},
                      {{bif,'+',{f,0},[{x,0},{x,1023}],{x,0}},4,limit}},
                     {{t,sum_3,2},
                      {{bif,'+',{f,0},[{x,0},{x,1}],{x,-1}},
                       4,
                       {bad_register,{x,-1}}}},
                     {{t,sum_4,2},
                      {{bif,'+',{f,0},[{x,0},{x,1}],{x,1023}},4,limit}}]}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,29}.
    {line,[{location,"beam_validator_SUITE.erl",127}]}.
    {badmatch,{x,0}}.


{function, yrange, 1, 31}.
  {label,30}.
    {line,[{location,"beam_validator_SUITE.erl",139}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,yrange},1}.
  {label,31}.
    {test,is_list,{f,30},[{x,0}]}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{atom,yrange},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",140}]}.
    {call,2,{f,261}}. % do_val/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,32},
          [{tr,{x,0},{t_list,any,nil}},
           {literal,[{{t,sum_1,2},
                      {{move,{x,1},{y,-1}},5,{bad_register,{y,-1}}}},
                     {{t,sum_2,2},
                      {{bif,'+',{f,0},[{x,0},{y,1024}],{x,0}},7,limit}},
                     {{t,sum_3,2},{{move,{x,1},{y,1024}},5,limit}},
                     {{t,sum_4,2},
                      {{move,{x,1},{y,-1}},5,{bad_register,{y,-1}}}}]}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,32}.
    {line,[{location,"beam_validator_SUITE.erl",141}]}.
    {badmatch,{x,0}}.


{function, stack, 1, 34}.
  {label,33}.
    {line,[{location,"beam_validator_SUITE.erl",154}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,stack},1}.
  {label,34}.
    {test,is_list,{f,33},[{x,0}]}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{atom,stack},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",155}]}.
    {call,2,{f,261}}. % do_val/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,35},
          [{tr,{x,0},{t_list,any,nil}},
           {literal,[{{t,a,2},{return,9,{stack_frame,2}}},
                     {{t,b,2},{{deallocate,2},4,{allocated,none}}},
                     {{t,bad_1,0},{{allocate,2,10},4,{{x,9},not_live}}},
                     {{t,bad_2,0},{{move,{y,0},{x,0}},6,{unassigned,{y,0}}}},
                     {{t,c,2},{{deallocate,2},10,{allocated,none}}},
                     {{t,d,2},
                      {{allocate,2,2},5,{existing_stack_frame,{size,2}}}},
                     {{t,e,2},{{deallocate,5},6,{allocated,2}}}]}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,35}.
    {line,[{location,"beam_validator_SUITE.erl",156}]}.
    {badmatch,{x,0}}.


{function, call_last, 1, 37}.
  {label,36}.
    {line,[{location,"beam_validator_SUITE.erl",166}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,call_last},1}.
  {label,37}.
    {test,is_list,{f,36},[{x,0}]}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{atom,call_last},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",167}]}.
    {call,2,{f,261}}. % do_val/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,38},
          [{tr,{x,0},{t_list,any,nil}},
           {literal,[{{t,a,1},{{call_last,1,{f,8},2},9,{allocated,1}}},
                     {{t,b,1},
                      {{call_ext_last,2,{extfunc,lists,seq,2},2},
                       10,
                       {allocated,1}}},
                     {{t,baz,2},
                      {{call_ext_only,2,{extfunc,erlang,put,2}},
                       5,
                       {allocated,0}}},
                     {{t,biz,2},{{call_only,2,{f,10}},5,{allocated,0}}}]}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,38}.
    {line,[{location,"beam_validator_SUITE.erl",168}]}.
    {badmatch,{x,0}}.


{function, call_without_stack, 1, 40}.
  {label,39}.
    {line,[{location,"beam_validator_SUITE.erl",178}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,call_without_stack},1}.
  {label,40}.
    {test,is_list,{f,39},[{x,0}]}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{atom,call_without_stack},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",179}]}.
    {call,2,{f,261}}. % do_val/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,41},
          [{tr,{x,0},{t_list,any,nil}},
           {literal,[{{t,local,2},{{call,2,{f,2}},4,{allocated,none}}},
                     {{t,remote,2},
                      {{call_ext,2,{extfunc,lists,seq,2}},
                       4,
                       {allocated,none}}}]}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,41}.
    {line,[{location,"beam_validator_SUITE.erl",180}]}.
    {badmatch,{x,0}}.


{function, merge_undefined, 1, 43}.
  {label,42}.
    {line,[{location,"beam_validator_SUITE.erl",186}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,merge_undefined},1}.
  {label,43}.
    {test,is_list,{f,42},[{x,0}]}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{atom,merge_undefined},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",187}]}.
    {call,2,{f,261}}. % do_val/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_nonempty_list,{f,44},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_tuple,{f,44},[{x,1}]}.
    {test,test_arity,{f,44},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_eq_exact,{f,44},[{x,3},{literal,{t,undecided,2}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tuple,{f,44},[{x,1}]}.
    {test,test_arity,{f,44},[{x,1},3]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_eq_exact,{f,44},[{x,3},{literal,{label,11}}]}.
    {get_tuple_element,{x,1},1,{x,3}}.
    {test,is_eq_exact,{f,44},[{x,3},{integer,19}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_tagged_tuple,{f,44},[{x,1},3,{atom,unsafe_stack}]}.
    {get_tuple_element,{x,1},1,{x,3}}.
    {test,is_eq_exact,{f,44},[{x,3},{literal,{y,1}}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_map,{f,44},[{x,1}]}.
    {get_map_elements,{f,44},
                      {tr,{x,1},{t_map,any,any}},
                      {list,[{literal,{y,1}},{x,1},{literal,{y,0}},{x,3}]}}.
    {test,is_eq_exact,{f,44},[{x,3},{atom,uninitialized}]}.
    {test,is_eq_exact,{f,44},[{x,1},{atom,uninitialized}]}.
    {test,is_eq_exact,
          {f,44},
          [{tr,{x,2},{t_list,any,nil}},
           {literal,[{{t,uninitialized,2},
                      {{call_ext,2,{extfunc,io,format,2}},
                       17,
                       {uninitialized_reg,{y,1}}}}]}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,44}.
    {line,[{location,"beam_validator_SUITE.erl",188}]}.
    {badmatch,{x,0}}.


{function, uninit, 1, 46}.
  {label,45}.
    {line,[{location,"beam_validator_SUITE.erl",200}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,uninit},1}.
  {label,46}.
    {test,is_list,{f,45},[{x,0}]}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{atom,uninit},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",201}]}.
    {call,2,{f,261}}. % do_val/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,47},
          [{tr,{x,0},{t_list,any,nil}},
           {literal,[{{t,sum_1,2},
                      {{move,{y,0},{x,0}},5,{uninitialized_reg,{y,0}}}},
                     {{t,sum_2,2},
                      {{call,1,{f,8}},5,{uninitialized_reg,{y,0}}}},
                     {{t,sum_3,2},
                      {{bif,'+',{f,0},[{x,0},{y,0}],{x,0}},
                       7,
                       {unassigned,{y,0}}}}]}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,47}.
    {line,[{location,"beam_validator_SUITE.erl",202}]}.
    {badmatch,{x,0}}.


{function, dead_code, 1, 49}.
  {label,48}.
    {line,[{location,"beam_validator_SUITE.erl",212}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,dead_code},1}.
  {label,49}.
    {test,is_list,{f,48},[{x,0}]}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{atom,dead_code},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",213}]}.
    {call,2,{f,261}}. % do_val/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_nil,{f,50},[{tr,{x,0},{t_list,any,nil}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,50}.
    {badmatch,{x,0}}.


{function, overwrite_catchtag, 1, 52}.
  {label,51}.
    {line,[{location,"beam_validator_SUITE.erl",216}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,overwrite_catchtag},1}.
  {label,52}.
    {test,is_list,{f,51},[{x,0}]}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{atom,overwrite_catchtag},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",217}]}.
    {call,2,{f,261}}. % do_val/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_nonempty_list,{f,53},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_tuple,{f,53},[{x,1}]}.
    {test,test_arity,{f,53},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_eq_exact,{f,53},[{x,3},{literal,{overwrite_catchtag,foo,1}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tuple,{f,53},[{x,1}]}.
    {test,test_arity,{f,53},[{x,1},3]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_eq_exact,{f,53},[{x,3},{literal,{move,{x,0},{y,0}}}]}.
    {get_tuple_element,{x,1},1,{x,3}}.
    {test,is_eq_exact,{f,53},[{x,3},{integer,6}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_tagged_tuple,{f,53},[{x,1},2,{atom,catchtag}]}.
    {test,is_nil,{f,53},[{tr,{x,2},{t_list,any,nil}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,53}.
    {line,[{location,"beam_validator_SUITE.erl",218}]}.
    {badmatch,{x,0}}.


{function, overwrite_trytag, 1, 55}.
  {label,54}.
    {line,[{location,"beam_validator_SUITE.erl",222}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,overwrite_trytag},1}.
  {label,55}.
    {test,is_list,{f,54},[{x,0}]}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{atom,overwrite_trytag},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",223}]}.
    {call,2,{f,261}}. % do_val/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_nonempty_list,{f,56},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_tuple,{f,56},[{x,1}]}.
    {test,test_arity,{f,56},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_eq_exact,{f,56},[{x,3},{literal,{overwrite_trytag,foo,1}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tuple,{f,56},[{x,1}]}.
    {test,test_arity,{f,56},[{x,1},3]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_eq_exact,{f,56},[{x,3},{literal,{init_yregs,{list,[{y,2}]}}}]}.
    {get_tuple_element,{x,1},1,{x,3}}.
    {test,is_eq_exact,{f,56},[{x,3},{integer,9}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_tagged_tuple,{f,56},[{x,1},2,{atom,trytag}]}.
    {test,is_nil,{f,56},[{tr,{x,2},{t_list,any,nil}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,56}.
    {line,[{location,"beam_validator_SUITE.erl",224}]}.
    {badmatch,{x,0}}.


{function, accessing_tags, 1, 58}.
  {label,57}.
    {line,[{location,"beam_validator_SUITE.erl",228}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,accessing_tags},1}.
  {label,58}.
    {test,is_list,{f,57},[{x,0}]}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{atom,accessing_tags},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",229}]}.
    {call,2,{f,261}}. % do_val/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_nonempty_list,{f,59},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_tuple,{f,59},[{x,1}]}.
    {test,test_arity,{f,59},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_eq_exact,{f,59},[{x,3},{literal,{accessing_tags,bar,1}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tuple,{f,59},[{x,1}]}.
    {test,test_arity,{f,59},[{x,1},3]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_eq_exact,{f,59},[{x,3},{literal,{move,{y,0},{x,0}}}]}.
    {get_tuple_element,{x,1},1,{x,3}}.
    {test,is_eq_exact,{f,59},[{x,3},{integer,6}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_tagged_tuple,{f,59},[{x,1},2,{atom,trytag}]}.
    {test,is_nonempty_list,{f,59},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tuple,{f,59},[{x,1}]}.
    {test,test_arity,{f,59},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_eq_exact,{f,59},[{x,3},{literal,{accessing_tags,foo,1}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tuple,{f,59},[{x,1}]}.
    {test,test_arity,{f,59},[{x,1},3]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_eq_exact,{f,59},[{x,3},{literal,{move,{y,0},{x,0}}}]}.
    {get_tuple_element,{x,1},1,{x,3}}.
    {test,is_eq_exact,{f,59},[{x,3},{integer,6}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_tagged_tuple,{f,59},[{x,1},2,{atom,catchtag}]}.
    {test,is_nil,{f,59},[{tr,{x,2},{t_list,any,nil}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,59}.
    {line,[{location,"beam_validator_SUITE.erl",230}]}.
    {badmatch,{x,0}}.


{function, bad_catch_try, 1, 61}.
  {label,60}.
    {line,[{location,"beam_validator_SUITE.erl",236}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,bad_catch_try},1}.
  {label,61}.
    {test,is_list,{f,60},[{x,0}]}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{atom,bad_catch_try},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",237}]}.
    {call,2,{f,261}}. % do_val/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,62},
          [{tr,{x,0},{t_list,any,nil}},
           {literal,[{{bad_catch_try,bad_1,1},
                      {{'catch',{x,0},{f,3}},5,{invalid_tag_register,{x,0}}}},
                     {{bad_catch_try,bad_2,1},
                      {{catch_end,{x,9}},8,{invalid_tag_register,{x,9}}}},
                     {{bad_catch_try,bad_3,1},
                      {{catch_end,{y,1}},
                       9,
                       {invalid_tag,{y,1},{t_atom,[kalle]}}}},
                     {{bad_catch_try,bad_4,1},
                      {{'try',{x,0},{f,15}},6,{invalid_tag_register,{x,0}}}},
                     {{bad_catch_try,bad_5,1},
                      {{try_case,{y,1}},13,{invalid_tag,{y,1},any}}},
                     {{bad_catch_try,bad_6,1},
                      {{move,{integer,1},{y,1}},8,{invalid_store,{y,1}}}}]}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,62}.
    {line,[{location,"beam_validator_SUITE.erl",238}]}.
    {badmatch,{x,0}}.


{function, cons_guard, 1, 64}.
  {label,63}.
    {line,[{location,"beam_validator_SUITE.erl",255}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,cons_guard},1}.
  {label,64}.
    {test,is_list,{f,63},[{x,0}]}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{atom,cons},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",256}]}.
    {call,2,{f,261}}. % do_val/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,65},
          [{tr,{x,0},{t_list,any,nil}},
           {literal,[{{cons,foo,1},
                      {{get_list,{x,0},{x,1},{x,2}},
                       5,
                       {bad_type,{needed,{t_cons,any,any}},{actual,any}}}}]}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,65}.
    {line,[{location,"beam_validator_SUITE.erl",257}]}.
    {badmatch,{x,0}}.


{function, freg_range, 1, 67}.
  {label,66}.
    {line,[{location,"beam_validator_SUITE.erl",263}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,freg_range},1}.
  {label,67}.
    {test,is_list,{f,66},[{x,0}]}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{atom,freg_range},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",264}]}.
    {call,2,{f,261}}. % do_val/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,68},
          [{tr,{x,0},{t_list,any,nil}},
           {literal,[{{t,sum_1,2},
                      {{bif,fadd,{f,0},[{fr,-1},{fr,1}],{fr,0}},
                       4,
                       {bad_source,{fr,-1}}}},
                     {{t,sum_2,2},
                      {{bif,fadd,{f,0},[{fr,0},{fr,1024}],{fr,0}},
                       5,
                       {uninitialized_reg,{fr,1024}}}},
                     {{t,sum_3,2},
                      {{bif,fadd,{f,0},[{fr,0},{fr,1}],{fr,-1}},
                       6,
                       {bad_register,{fr,-1}}}},
                     {{t,sum_4,2},
                      {{bif,fadd,{f,0},[{fr,0},{fr,1}],{fr,1024}},
                       6,limit}}]}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,68}.
    {line,[{location,"beam_validator_SUITE.erl",265}]}.
    {badmatch,{x,0}}.


{function, freg_uninit, 1, 70}.
  {label,69}.
    {line,[{location,"beam_validator_SUITE.erl",283}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,freg_uninit},1}.
  {label,70}.
    {test,is_list,{f,69},[{x,0}]}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{atom,freg_uninit},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",284}]}.
    {call,2,{f,261}}. % do_val/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,71},
          [{tr,{x,0},{t_list,any,nil}},
           {literal,[{{t,sum_1,2},
                      {{bif,fadd,{f,0},[{fr,0},{fr,1}],{fr,0}},
                       5,
                       {uninitialized_reg,{fr,1}}}},
                     {{t,sum_2,2},
                      {{bif,fadd,{f,0},[{fr,0},{fr,1}],{fr,0}},
                       8,
                       {uninitialized_reg,{fr,0}}}}]}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,71}.
    {line,[{location,"beam_validator_SUITE.erl",285}]}.
    {badmatch,{x,0}}.


{function, bad_bin_match, 1, 73}.
  {label,72}.
    {line,[{location,"beam_validator_SUITE.erl",295}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,bad_bin_match},1}.
  {label,73}.
    {test,is_list,{f,72},[{x,0}]}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{atom,bad_bin_match},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",297}]}.
    {call,2,{f,261}}. % do_val/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,74},
          [{tr,{x,0},{t_list,any,nil}},
           {literal,[{{t,t,1},{return,5,{match_context,{x,0}}}}]}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,74}.
    {line,[{location,"beam_validator_SUITE.erl",296}]}.
    {badmatch,{x,0}}.


{function, bad_dsetel, 1, 76}.
  {label,75}.
    {line,[{location,"beam_validator_SUITE.erl",300}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,bad_dsetel},1}.
  {label,76}.
    {test,is_list,{f,75},[{x,0}]}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{atom,bad_dsetel},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",301}]}.
    {call,2,{f,261}}. % do_val/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,77},
          [{tr,{x,0},{t_list,any,nil}},
           {literal,[{{t,t,1},
                      {{set_tuple_element,{x,1},{x,0},1},
                       17,illegal_context_for_set_tuple_element}}]}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,77}.
    {line,[{location,"beam_validator_SUITE.erl",302}]}.
    {badmatch,{x,0}}.


{function, state_after_fault_in_catch, 1, 79}.
  {label,78}.
    {line,[{location,"beam_validator_SUITE.erl",308}]}.
    {func_info,{atom,beam_validator_SUITE},
               {atom,state_after_fault_in_catch},
               1}.
  {label,79}.
    {test,is_list,{f,78},[{x,0}]}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{atom,state_after_fault_in_catch},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",309}]}.
    {call,2,{f,261}}. % do_val/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,80},
          [{tr,{x,0},{t_list,any,nil}},
           {literal,[{{state_after_fault_in_catch,badmatch,1},
                      {{move,{x,1},{x,0}},9,{uninitialized_reg,{x,1}}}},
                     {{state_after_fault_in_catch,case_end,1},
                      {{move,{x,1},{x,0}},9,{uninitialized_reg,{x,1}}}},
                     {{state_after_fault_in_catch,if_end,1},
                      {{move,{x,1},{x,0}},9,{uninitialized_reg,{x,1}}}},
                     {{t,foo,1},
                      {{move,{x,1},{x,0}},10,{uninitialized_reg,{x,1}}}}]}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,80}.
    {line,[{location,"beam_validator_SUITE.erl",310}]}.
    {badmatch,{x,0}}.


{function, no_exception_in_catch, 1, 82}.
  {label,81}.
    {line,[{location,"beam_validator_SUITE.erl",320}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,no_exception_in_catch},1}.
  {label,82}.
    {test,is_list,{f,81},[{x,0}]}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{atom,no_exception_in_catch},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",321}]}.
    {call,2,{f,261}}. % do_val/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,83},
          [{tr,{x,0},{t_list,any,nil}},
           {literal,[{{no_exception_in_catch,nested_of_1,4},
                      {{try_case_end,{x,0}},
                       152,ambiguous_catch_try_state}}]}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,83}.
    {line,[{location,"beam_validator_SUITE.erl",322}]}.
    {badmatch,{x,0}}.


{function, undef_label, 1, 85}.
  {label,84}.
    {line,[{location,"beam_validator_SUITE.erl",326}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,undef_label},1}.
  {label,85}.
    {test,is_list,{f,84},[{x,0}]}.
    {allocate,0,0}.
    {move,
        {literal,
            {undef_label,
                [{t,1}],
                [],
                [{function,t,1,2,
                     [{label,1},
                      {func_info,{atom,undef_label},{atom,t},1},
                      {label,2},
                      {test,is_eq_exact,{f,42},[{x,0},{atom,x}]},
                      {move,{atom,ok},{x,0}},
                      return]},
                 {function,x,1,17,
                     [{label,3},
                      {func_info,{atom,undef_label},{atom,x},1},
                      {label,4},
                      return]}],
                5}},
        {x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",343}]}.
    {call,1,{f,267}}. % beam_val/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,86},
          [{tr,{x,0},{t_list,any,nil}},
           {literal,[{{undef_label,t,1},{undef_labels,"*"}},
                     {{undef_label,x,1},no_entry_label}]}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,86}.
    {line,[{location,"beam_validator_SUITE.erl",344}]}.
    {badmatch,{x,0}}.


{function, illegal_instruction, 1, 88}.
  {label,87}.
    {line,[{location,"beam_validator_SUITE.erl",348}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,illegal_instruction},1}.
  {label,88}.
    {test,is_list,{f,87},[{x,0}]}.
    {allocate,0,0}.
    {move,
        {literal,
            {illegal_instruction,
                [{t,1},{x,1},{y,0}],
                [],
                [{function,t,1,2,
                     [{label,1},
                      {func_info,{atom,illegal_instruction},{atom,t},1},
                      {label,2},
                      {my_illegal_instruction,{x,0}},
                      return]},
                 {function,x,1,4,
                     [{label,3},
                      bad_func_info,
                      {label,4},
                      {my_illegal_instruction,{x,0}},
                      return]},
                 {function,y,0,17,[]}],
                5}},
        {x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",366}]}.
    {call,1,{f,267}}. % beam_val/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,89},
          [{tr,{x,0},{t_list,any,nil}},
           {literal,[{{illegal_instruction,t,1},
                      {{my_illegal_instruction,{x,0}},4,unknown_instruction}},
                     {{illegal_instruction,x,1},invalid_function_header},
                     {{illegal_instruction,y,0},invalid_function_header}]}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,89}.
    {line,[{location,"beam_validator_SUITE.erl",367}]}.
    {badmatch,{x,0}}.


{function, failing_gc_guard_bif, 1, 91}.
  {label,90}.
    {line,[{location,"beam_validator_SUITE.erl",380}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,failing_gc_guard_bif},1}.
  {label,91}.
    {test,is_list,{f,90},[{x,0}]}.
    {allocate,0,0}.
    {move,{integer,36},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",381}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {call,1,{f,96}}. % process_request/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,94},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,nil,{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",382}]}.
    {call,1,{f,96}}. % process_request/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,93},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{atom,not_a_list},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",383}]}.
    {call,1,{f,96}}. % process_request/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,92},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,92}.
    {badmatch,{atom,ok}}.
  {label,93}.
    {line,[{location,"beam_validator_SUITE.erl",382}]}.
    {badmatch,{atom,ok}}.
  {label,94}.
    {line,[{location,"beam_validator_SUITE.erl",381}]}.
    {badmatch,{atom,error}}.


{function, process_request, 1, 96}.
  {label,95}.
    {line,[{location,"beam_validator_SUITE.erl",386}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,process_request},1}.
  {label,96}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {line,[{location,"beam_validator_SUITE.erl",387}]}.
    {call,1,{f,100}}. % process_request_foo/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false]}}]}}.
    {gc_bif,length,{f,97},0,[{y,0}],{x,0}}.
    {test,is_eq_exact,
          {f,97},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},{integer,36}]}.
    {move,{atom,ok},{x,0}}.
    {jump,{f,98}}.
  {label,97}.
    {move,{atom,error},{x,0}}.
  {label,98}.
    {test_heap,2,1}.
    {bif,self,{f,0},[],{x,1}}.
    {put_list,{x,0},nil,{x,0}}.
    {swap,{x,0},{x,1}}.
    {call_last,2,{f,102},1}. % process_request_bar/2


{function, process_request_foo, 1, 100}.
  {label,99}.
    {line,[{location,"beam_validator_SUITE.erl",398}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,process_request_foo},1}.
  {label,100}.
    {move,{atom,false},{x,0}}.
    return.


{function, process_request_bar, 2, 102}.
  {label,101}.
    {line,[{location,"beam_validator_SUITE.erl",401}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,process_request_bar},2}.
  {label,102}.
    {'%',{var_info,{x,0},[{type,pid}]}}.
    {'%',{var_info,{x,1},[{type,{t_cons,{t_atom,[error,ok]},nil}}]}}.
    {get_list,{x,1},{x,2},{x,3}}.
    {test,is_nil,{f,101},[{tr,{x,3},{t_list,{t_atom,[error,ok]},nil}}]}.
    {move,{x,2},{x,0}}.
    return.


{function, map_field_lists, 1, 104}.
  {label,103}.
    {line,[{location,"beam_validator_SUITE.erl",404}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,map_field_lists},1}.
  {label,104}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{atom,map_field_lists},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",405}]}.
    {call,2,{f,261}}. % do_val/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,105},
          [{tr,{x,0},{t_list,any,nil}},
           {literal,[{{map_field_lists,x,1},
                      {{test,has_map_fields,
                             {f,1},
                             {x,0},
                             {list,[{atom,a},{atom,a}]}},
                       6,keys_not_unique}},
                     {{map_field_lists,y,1},
                      {{test,has_map_fields,{f,3},{x,0},{list,[]}},
                       6,empty_field_list}}]}]}.
    {deallocate,0}.
    return.
  {label,105}.
    {line,[{location,"beam_validator_SUITE.erl",406}]}.
    {badmatch,{x,0}}.


{function, cover_bin_opt, 1, 107}.
  {label,106}.
    {line,[{location,"beam_validator_SUITE.erl",417}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,cover_bin_opt},1}.
  {label,107}.
    {allocate_heap,0,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,109},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[error,ok]}}]}}.
    {move,{literal,[beam_utils_SUITE,bs_match_SUITE,bs_bincomp_SUITE,
                    bs_bit_binaries_SUITE,bs_utf_SUITE]},
          {x,1}}.
    {line,[{location,"beam_validator_SUITE.erl",423}]}.
    {call_ext,2,{extfunc,test_lib,p_run,2}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, try_bin_opt, 1, 109}.
  {label,108}.
    {line,[{location,"beam_validator_SUITE.erl",426}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,try_bin_opt},1}.
  {label,109}.
    {allocate,4,1}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{x,0},{y,2}}.
    {'try',{y,3},{f,110}}.
    {line,[{location,"beam_validator_SUITE.erl",428}]}.
    {call,1,{f,112}}. % do_bin_opt/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {try_end,{y,3}}.
    {deallocate,4}.
    return.
  {label,110}.
    {try_case,{y,3}}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{x,2},{x,0}}.
    build_stacktrace.
    {test_heap,8,1}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{y,0},{x,0},{x,0}}.
    {put_list,{y,1},{x,0},{x,0}}.
    {put_list,{y,2},{x,0},{x,1}}.
    {trim,4,0}.
    {move,{literal,"~p: ~p ~p\n~p\n"},{x,0}}.
    {line,[{scope,[3]},{location,"beam_validator_SUITE.erl",431}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {move,{atom,error},{x,0}}.
    {deallocate,0}.
    return.


{function, do_bin_opt, 1, 112}.
  {label,111}.
    {line,[{location,"beam_validator_SUITE.erl",436}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,do_bin_opt},1}.
  {label,112}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {line,[{location,"beam_validator_SUITE.erl",437}]}.
    {call_ext,1,{extfunc,code,which,1}}.
    {move,{literal,[abstract_code]},{x,1}}.
    {line,[{location,"beam_validator_SUITE.erl",440}]}.
    {call_ext,2,{extfunc,beam_lib,chunks,2}}.
    {test,is_tagged_tuple,{f,114},[{x,0},2,{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,114},[{x,1}]}.
    {test,test_arity,{f,114},[{x,1},2]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_nonempty_list,{f,114},[{x,2}]}.
    {get_list,{x,2},{x,3},{x,2}}.
    {test,is_tagged_tuple,{f,114},[{x,3},2,{atom,abstract_code}]}.
    {get_tuple_element,{x,3},1,{x,3}}.
    {test,is_tagged_tuple,{f,114},[{x,3},2,{atom,raw_abstract_v1}]}.
    {test,is_nil,{f,114},[{x,2}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,114},[{x,1},{y,0}]}.
    {get_tuple_element,{x,3},1,{x,0}}.
    {move,{literal,['S']},{x,1}}.
    {line,[{location,"beam_validator_SUITE.erl",441}]}.
    {call_ext,2,{extfunc,compile,forms,2}}.
    {test,is_tagged_tuple,{f,113},[{x,0},3,{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,113},[{x,1},{y,0}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,116},1}. % do_bin_opt/2
  {label,113}.
    {badmatch,{x,0}}.
  {label,114}.
    {line,[{location,"beam_validator_SUITE.erl",438}]}.
    {badmatch,{x,0}}.


{function, do_bin_opt, 2, 116}.
  {label,115}.
    {line,[{location,"beam_validator_SUITE.erl",444}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,do_bin_opt},2}.
  {label,116}.
    {allocate_heap,2,{alloc,[{words,0},{floats,0},{funs,1}]},2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {make_fun3,{f,126},0,0,{x,0},{list,[]}}.
    {'%',
        {var_info,
            {x,0},
            [{fun_type,
                 {t_tuple,5,true,
                     #{4 =>
                           {t_list,
                               {t_tuple,5,true,
                                   #{1 => {t_atom,[function]},
                                     5 => {t_list,any,nil}}},
                               nil}}}}]}}.
    {move,{x,1},{x,2}}.
    {move,{y,1},{x,1}}.
    {line,[{location,"beam_validator_SUITE.erl",445}]}.
    {call,3,{f,118}}. % do_bin_opt/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,132},0,0,{x,0},{list,[]}}.
    {'%',
        {var_info,
            {x,0},
            [{fun_type,
                 {t_tuple,5,true,
                     #{4 =>
                           {t_list,
                               {t_tuple,5,true,
                                   #{1 => {t_atom,[function]},
                                     5 => {t_list,any,nil}}},
                               nil}}}}]}}.
    {move,{y,0},{x,2}}.
    {move,{y,1},{x,1}}.
    {line,[{location,"beam_validator_SUITE.erl",446}]}.
    {call,3,{f,118}}. % do_bin_opt/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,134},0,0,{x,0},{list,[]}}.
    {'%',
        {var_info,
            {x,0},
            [{fun_type,
                 {t_tuple,5,true,
                     #{4 =>
                           {t_list,
                               {t_tuple,5,true,
                                   #{1 => {t_atom,[function]},
                                     5 => {t_list,any,nil}}},
                               nil}}}}]}}.
    {move,{y,0},{x,2}}.
    {move,{y,1},{x,1}}.
    {line,[{location,"beam_validator_SUITE.erl",447}]}.
    {call,3,{f,118}}. % do_bin_opt/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,142},0,0,{x,0},{list,[]}}.
    {'%',
        {var_info,
            {x,0},
            [{fun_type,
                 {t_tuple,5,true,
                     #{4 =>
                           {t_list,
                               {t_tuple,5,true,
                                   #{1 => {t_atom,[function]},
                                     5 => {t_list,any,nil}}},
                               nil}}}}]}}.
    {move,{y,0},{x,2}}.
    {move,{y,1},{x,1}}.
    {line,[{location,"beam_validator_SUITE.erl",448}]}.
    {call,3,{f,118}}. % do_bin_opt/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,136},0,0,{x,0},{list,[]}}.
    {'%',
        {var_info,
            {x,0},
            [{fun_type,
                 {t_tuple,5,true,
                     #{4 =>
                           {t_list,
                               {t_tuple,5,true,
                                   #{1 => {t_atom,[function]},
                                     5 => {t_list,any,nil}}},
                               nil}}}}]}}.
    {move,{y,0},{x,2}}.
    {move,{y,1},{x,1}}.
    {call_last,3,{f,118},2}. % do_bin_opt/3


{function, do_bin_opt, 3, 118}.
  {label,117}.
    {line,[{location,"beam_validator_SUITE.erl",452}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,do_bin_opt},3}.
  {label,118}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_fun,1,any,
                     {t_tuple,5,true,
                         #{4 =>
                               {t_list,
                                   {t_tuple,5,true,
                                       #{1 => {t_atom,[function]},
                                         5 => {t_list,any,any}}},
                                   nil}}}}}]}}.
    {allocate,2,3}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{x,1}}.
    {move,{x,2},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",453}]}.
    {call_fun2,
        {atom,safe},
        1,
        {tr,{x,1},
            {t_fun,1,any,
                {t_tuple,5,true,
                    #{4 =>
                          {t_list,
                              {t_tuple,5,true,
                                  #{1 => {t_atom,[function]},
                                    5 => {t_list,any,any}}},
                              nil}}}}}}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,5,true,
                     #{4 =>
                           {t_list,
                               {t_tuple,5,true,
                                   #{1 => {t_atom,[function]},
                                     5 => {t_list,any,any}}},
                               nil}}}}]}}.
    {move,{literal,[from_asm,no_postopt,return]},{x,1}}.
    {line,[{location,"beam_validator_SUITE.erl",454}]}.
    {call_ext,2,{extfunc,compile,forms,2}}.
    {move,{x,0},{y,0}}.
    {test,is_tuple,{f,122},[{x,0}]}.
    {select_tuple_arity,{tr,{x,0},{t_tuple,0,false,#{}}},
                        {f,122},
                        {list,[3,{f,120},4,{f,119}]}}.
  {label,119}.
    {get_tuple_element,{x,0},0,{x,0}}.
    {test,is_eq_exact,{f,122},[{x,0},{atom,ok}]}.
    {get_tuple_element,{y,0},1,{x,0}}.
    {test,is_eq_exact,{f,122},[{x,0},{y,1}]}.
    {get_tuple_element,{y,0},2,{x,0}}.
    {test,is_binary,{f,122},[{x,0}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,120}.
    {get_tuple_element,{x,0},0,{x,0}}.
    {test,is_eq_exact,{f,122},[{x,0},{atom,error}]}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {line,[{location,"beam_validator_SUITE.erl",460}]}.
    {call_ext,1,{extfunc,erlang,atom_to_list,1}}.
    {get_tuple_element,{y,0},1,{x,1}}.
    {test,is_nonempty_list,{f,121},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,3}}.
    {test,is_tuple,{f,121},[{x,2}]}.
    {test,test_arity,{f,121},[{x,2},2]}.
    {test,is_nil,{f,121},[{x,3}]}.
    {get_tuple_element,{x,2},0,{x,3}}.
    {test,is_eq_exact,
          {f,121},
          [{x,3},{tr,{x,0},{t_list,{t_integer,{0,1114111}},nil}}]}.
    {get_tuple_element,{x,2},1,{x,0}}.
    {trim,2,0}.
    {line,[{location,"beam_validator_SUITE.erl",462}]}.
    {call,1,{f,502}}. % '-do_bin_opt/3-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,121}.
    {line,[{location,"beam_validator_SUITE.erl",461}]}.
    {badmatch,{x,1}}.
  {label,122}.
    {line,[{location,"beam_validator_SUITE.erl",454}]}.
    {case_end,{y,0}}.


{function, verify_bin_opt_error, 1, 124}.
  {label,123}.
    {line,[{location,"beam_validator_SUITE.erl",466}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,verify_bin_opt_error},1}.
  {label,124}.
    {test,is_tagged_tuple,{f,123},[{x,0},2,{atom,beam_validator}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, enable_bin_opt, 1, 126}.
  {label,125}.
    {line,[{location,"beam_validator_SUITE.erl",469}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,enable_bin_opt},1}.
  {label,126}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},1}.
    {make_fun3,{f,128},0,0,{x,1},{list,[]}}.
    {'%',{var_info,{x,1},[{fun_type,{t_list,any,nil}}]}}.
    {swap,{x,0},{x,1}}.
    {call_only,2,{f,257}}. % transform_is/2


{function, enable_bin_opt_body, 1, 128}.
  {label,127}.
    {line,[{location,"beam_validator_SUITE.erl",472}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,enable_bin_opt_body},1}.
  {label,128}.
    {test,is_nonempty_list,{f,130},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_nonempty_list,{f,129},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,3}}.
    {test,is_tagged_tuple,{f,129},[{x,2},2,{atom,'%'}]}.
    {get_tuple_element,{x,2},1,{x,2}}.
    {test,is_tagged_tuple,{f,129},[{x,2},3,{atom,no_bin_opt}]}.
    {move,{x,3},{x,0}}.
    {call_only,1,{f,128}}. % enable_bin_opt_body/1
  {label,129}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {line,[{location,"beam_validator_SUITE.erl",475}]}.
    {call,1,{f,128}}. % enable_bin_opt_body/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,130}.
    {test,is_nil,{f,127},[{x,0}]}.
    return.


{function, remove_bs_start_match, 1, 132}.
  {label,131}.
    {line,[{location,"beam_validator_SUITE.erl",479}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,remove_bs_start_match},1}.
  {label,132}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},1}.
    {make_fun3,{f,499},0,0,{x,1},{list,[]}}.
    {'%',{var_info,{x,1},[{fun_type,{t_atom,[false,true]}}]}}.
    {swap,{x,0},{x,1}}.
    {call_only,2,{f,253}}. % transform_remove/2


{function, remove_bs_save, 1, 134}.
  {label,133}.
    {line,[{location,"beam_validator_SUITE.erl",484}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,remove_bs_save},1}.
  {label,134}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},1}.
    {make_fun3,{f,496},0,0,{x,1},{list,[]}}.
    {'%',{var_info,{x,1},[{fun_type,{t_atom,[false,true]}}]}}.
    {swap,{x,0},{x,1}}.
    {call_only,2,{f,253}}. % transform_remove/2


{function, destroy_save_point, 1, 136}.
  {label,135}.
    {line,[{location,"beam_validator_SUITE.erl",489}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,destroy_save_point},1}.
  {label,136}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},1}.
    {move,{x,0},{x,1}}.
    {make_fun3,{f,138},0,0,{x,0},{list,[]}}.
    {call_only,2,{f,255}}. % transform_i/2


{function, do_destroy_save_point, 1, 138}.
  {label,137}.
    {line,[{location,"beam_validator_SUITE.erl",492}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,do_destroy_save_point},1}.
  {label,138}.
    {test,is_tuple,{f,140},[{x,0}]}.
    {test,test_arity,{f,140},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {select_val,{x,1},
                {f,140},
                {list,[{atom,bs_restore2},{f,139},{atom,bs_save2},{f,139}]}}.
  {label,139}.
    {test_heap,4,2}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {put_tuple2,{x,0},{list,[{x,1},{x,0},{integer,42}]}}.
    return.
  {label,140}.
    return.


{function, destroy_ctxt, 1, 142}.
  {label,141}.
    {line,[{location,"beam_validator_SUITE.erl",498}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,destroy_ctxt},1}.
  {label,142}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},1}.
    {move,{x,0},{x,1}}.
    {make_fun3,{f,144},0,0,{x,0},{list,[]}}.
    {call_only,2,{f,255}}. % transform_i/2


{function, do_destroy_ctxt, 1, 144}.
  {label,143}.
    {line,[{location,"beam_validator_SUITE.erl",501}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,do_destroy_ctxt},1}.
  {label,144}.
    {test,is_tuple,{f,149},[{x,0}]}.
    {select_tuple_arity,{tr,{x,0},{t_tuple,0,false,#{}}},
                        {f,149},
                        {list,[2,{f,148},3,{f,145}]}}.
  {label,145}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {get_tuple_element,{x,0},2,{x,3}}.
    {select_val,{x,1},
                {f,149},
                {list,[{atom,bs_restore2},{f,147},{atom,bs_save2},{f,146}]}}.
  {label,146}.
    {allocate,1,4}.
    {move,{x,3},{y,0}}.
    {move,{x,2},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",502}]}.
    {call,1,{f,151}}. % destroy_reg/1
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{2 => {t_number,any}}}}]}}.
    {test_heap,4,1}.
    {put_tuple2,{x,0},{list,[{atom,bs_save2},{x,0},{y,0}]}}.
    {deallocate,1}.
    return.
  {label,147}.
    {allocate,1,4}.
    {move,{x,3},{y,0}}.
    {move,{x,2},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",504}]}.
    {call,1,{f,151}}. % destroy_reg/1
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{2 => {t_number,any}}}}]}}.
    {test_heap,4,1}.
    {put_tuple2,{x,0},{list,[{atom,bs_restore2},{x,0},{y,0}]}}.
    {deallocate,1}.
    return.
  {label,148}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,149},[{x,1},{atom,bs_context_to_binary}]}.
    {allocate,0,1}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",506}]}.
    {call,1,{f,151}}. % destroy_reg/1
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{2 => {t_number,any}}}}]}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bs_context_to_binary},{x,0}]}}.
    {deallocate,0}.
    return.
  {label,149}.
    return.


{function, destroy_reg, 1, 151}.
  {label,150}.
    {line,[{location,"beam_validator_SUITE.erl",510}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,destroy_reg},1}.
  {label,151}.
    {test,is_tuple,{f,150},[{x,0}]}.
    {test,test_arity,{f,150},[{x,0},2]}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {line,[{location,"beam_validator_SUITE.erl",511}]}.
    {call_ext,0,{extfunc,rand,uniform,0}}.
    {get_tuple_element,{y,0},1,{x,1}}.
    {test,is_lt,{f,152},[{x,0},{float,0.6}]}.
    {line,[{location,"beam_validator_SUITE.erl",513}]}.
    {gc_bif,'+',{f,0},2,[{x,1},{integer,1}],{x,0}}.
    {test_heap,3,1}.
    {get_tuple_element,{y,0},0,{x,1}}.
    {put_tuple2,{x,0},{list,[{x,1},{x,0}]}}.
    {deallocate,1}.
    return.
  {label,152}.
    {line,[{location,"beam_validator_SUITE.erl",515}]}.
    {gc_bif,'+',{f,0},2,[{x,1},{integer,1}],{x,0}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,y},{x,0}]}}.
    {deallocate,1}.
    return.


{function, bad_tuples, 1, 154}.
  {label,153}.
    {line,[{location,"beam_validator_SUITE.erl",518}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,bad_tuples},1}.
  {label,154}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{atom,bad_tuples},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",519}]}.
    {call,2,{f,261}}. % do_val/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,155},
          [{tr,{x,0},{t_list,any,nil}},
           {literal,[{{bad_tuples,heap_overflow,1},
                      {{put_tuple2,{x,0},{list,[{atom,ok},{x,0}]}},
                       6,
                       {heap_overflow,{left,2},{wanted,3}}}}]}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,155}.
    {line,[{location,"beam_validator_SUITE.erl",520}]}.
    {badmatch,{x,0}}.


{function, bad_try_catch_nesting, 1, 157}.
  {label,156}.
    {line,[{location,"beam_validator_SUITE.erl",526}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,bad_try_catch_nesting},1}.
  {label,157}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{atom,bad_try_catch_nesting},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",527}]}.
    {call,2,{f,261}}. % do_val/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
        {f,158},
        [{tr,{x,0},{t_list,any,nil}},
         {literal,
             [{{bad_try_catch_nesting,main,2},
               {{'try',{y,2},{f,3}},
                9,
                {bad_try_catch_nesting,{y,2},[{{y,1},{trytag,[5]}}]}}}]}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,158}.
    {line,[{location,"beam_validator_SUITE.erl",528}]}.
    {badmatch,{x,0}}.


{function, receive_stacked, 1, 160}.
  {label,159}.
    {line,[{location,"beam_validator_SUITE.erl",534}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,receive_stacked},1}.
  {label,160}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{x,0},{x,1}}.
    {move,{atom,receive_stacked},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",536}]}.
    {call,2,{f,261}}. % do_val/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_nonempty_list,{f,162},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_tuple,{f,162},[{x,1}]}.
    {test,test_arity,{f,162},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_eq_exact,{f,162},[{x,3},{literal,{receive_stacked,f1,0}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tuple,{f,162},[{x,1}]}.
    {test,test_arity,{f,162},[{x,1},3]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_eq_exact,{f,162},[{x,3},{literal,{loop_rec_end,{f,3}}}]}.
    {get_tuple_element,{x,1},1,{x,3}}.
    {test,is_eq_exact,{f,162},[{x,3},{integer,19}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_tagged_tuple,{f,162},[{x,1},2,{atom,fragile_message_reference}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tagged_tuple,{f,162},[{x,1},2,{atom,y}]}.
    {test,is_nonempty_list,{f,162},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tuple,{f,162},[{x,1}]}.
    {test,test_arity,{f,162},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_eq_exact,{f,162},[{x,3},{literal,{receive_stacked,f2,0}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tuple,{f,162},[{x,1}]}.
    {test,test_arity,{f,162},[{x,1},3]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_eq_exact,{f,162},[{x,3},{literal,{test_heap,3,0}}]}.
    {get_tuple_element,{x,1},1,{x,3}}.
    {test,is_eq_exact,{f,162},[{x,3},{integer,12}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_tagged_tuple,{f,162},[{x,1},2,{atom,fragile_message_reference}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tagged_tuple,{f,162},[{x,1},2,{atom,y}]}.
    {test,is_nonempty_list,{f,162},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tuple,{f,162},[{x,1}]}.
    {test,test_arity,{f,162},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_eq_exact,{f,162},[{x,3},{literal,{receive_stacked,f3,0}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tuple,{f,162},[{x,1}]}.
    {test,test_arity,{f,162},[{x,1},3]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_eq_exact,{f,162},[{x,3},{literal,{test_heap,3,0}}]}.
    {get_tuple_element,{x,1},1,{x,3}}.
    {test,is_eq_exact,{f,162},[{x,3},{integer,12}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_tagged_tuple,{f,162},[{x,1},2,{atom,fragile_message_reference}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tagged_tuple,{f,162},[{x,1},2,{atom,y}]}.
    {test,is_nonempty_list,{f,162},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tuple,{f,162},[{x,1}]}.
    {test,test_arity,{f,162},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_eq_exact,{f,162},[{x,3},{literal,{receive_stacked,f4,0}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tuple,{f,162},[{x,1}]}.
    {test,test_arity,{f,162},[{x,1},3]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_eq_exact,{f,162},[{x,3},{literal,{test_heap,3,0}}]}.
    {get_tuple_element,{x,1},1,{x,3}}.
    {test,is_eq_exact,{f,162},[{x,3},{integer,12}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_tagged_tuple,{f,162},[{x,1},2,{atom,fragile_message_reference}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tagged_tuple,{f,162},[{x,1},2,{atom,y}]}.
    {test,is_nonempty_list,{f,162},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tuple,{f,162},[{x,1}]}.
    {test,test_arity,{f,162},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_eq_exact,{f,162},[{x,3},{literal,{receive_stacked,f5,0}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tuple,{f,162},[{x,1}]}.
    {test,test_arity,{f,162},[{x,1},3]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_eq_exact,{f,162},[{x,3},{literal,{loop_rec_end,{f,23}}}]}.
    {get_tuple_element,{x,1},1,{x,3}}.
    {test,is_eq_exact,{f,162},[{x,3},{integer,23}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_tagged_tuple,{f,162},[{x,1},2,{atom,fragile_message_reference}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tagged_tuple,{f,162},[{x,1},2,{atom,y}]}.
    {test,is_nonempty_list,{f,162},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tuple,{f,162},[{x,1}]}.
    {test,test_arity,{f,162},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_eq_exact,{f,162},[{x,3},{literal,{receive_stacked,f6,0}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tuple,{f,162},[{x,1}]}.
    {test,test_arity,{f,162},[{x,1},3]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_tagged_tuple,{f,162},[{x,3},6,{atom,gc_bif}]}.
    {get_tuple_element,{x,3},1,{x,4}}.
    {test,is_eq_exact,{f,162},[{x,4},{atom,byte_size}]}.
    {get_tuple_element,{x,3},2,{x,4}}.
    {test,is_eq_exact,{f,162},[{x,4},{literal,{f,29}}]}.
    {get_tuple_element,{x,3},3,{x,4}}.
    {test,is_eq_exact,{f,162},[{x,4},{integer,0}]}.
    {get_tuple_element,{x,3},4,{x,4}}.
    {test,is_nonempty_list,{f,162},[{x,4}]}.
    {get_list,{x,4},{x,5},{x,4}}.
    {test,is_tagged_tuple,{f,162},[{x,5},2,{atom,y}]}.
    {test,is_nil,{f,162},[{x,4}]}.
    {get_tuple_element,{x,3},5,{x,3}}.
    {test,is_eq_exact,{f,162},[{x,3},{literal,{x,0}}]}.
    {get_tuple_element,{x,1},1,{x,3}}.
    {test,is_eq_exact,{f,162},[{x,3},{integer,14}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_tagged_tuple,{f,162},[{x,1},2,{atom,fragile_message_reference}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tagged_tuple,{f,162},[{x,1},2,{atom,y}]}.
    {test,is_nonempty_list,{f,162},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tuple,{f,162},[{x,1}]}.
    {test,test_arity,{f,162},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_eq_exact,{f,162},[{x,3},{literal,{receive_stacked,f7,0}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tuple,{f,162},[{x,1}]}.
    {test,test_arity,{f,162},[{x,1},3]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_eq_exact,{f,162},[{x,3},{literal,{loop_rec_end,{f,33}}}]}.
    {get_tuple_element,{x,1},1,{x,3}}.
    {test,is_eq_exact,{f,162},[{x,3},{integer,22}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_tagged_tuple,{f,162},[{x,1},2,{atom,fragile_message_reference}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tagged_tuple,{f,162},[{x,1},2,{atom,y}]}.
    {test,is_nonempty_list,{f,162},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tuple,{f,162},[{x,1}]}.
    {test,test_arity,{f,162},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_eq_exact,{f,162},[{x,3},{literal,{receive_stacked,f8,0}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tuple,{f,162},[{x,1}]}.
    {test,test_arity,{f,162},[{x,1},3]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_eq_exact,{f,162},[{x,3},{literal,{loop_rec_end,{f,38}}}]}.
    {get_tuple_element,{x,1},1,{x,3}}.
    {test,is_eq_exact,{f,162},[{x,3},{integer,22}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_tagged_tuple,{f,162},[{x,1},2,{atom,fragile_message_reference}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tagged_tuple,{f,162},[{x,1},2,{atom,y}]}.
    {test,is_nonempty_list,{f,162},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tuple,{f,162},[{x,1}]}.
    {test,test_arity,{f,162},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_eq_exact,{f,162},[{x,3},{literal,{receive_stacked,m1,0}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tuple,{f,162},[{x,1}]}.
    {test,test_arity,{f,162},[{x,1},3]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_eq_exact,{f,162},[{x,3},{literal,{loop_rec_end,{f,43}}}]}.
    {get_tuple_element,{x,1},1,{x,3}}.
    {test,is_eq_exact,{f,162},[{x,3},{integer,21}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_tagged_tuple,{f,162},[{x,1},2,{atom,fragile_message_reference}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tagged_tuple,{f,162},[{x,1},2,{atom,y}]}.
    {test,is_nonempty_list,{f,162},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tuple,{f,162},[{x,1}]}.
    {test,test_arity,{f,162},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_eq_exact,{f,162},[{x,3},{literal,{receive_stacked,m2,0}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tuple,{f,162},[{x,1}]}.
    {test,test_arity,{f,162},[{x,1},3]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_eq_exact,{f,162},[{x,3},{literal,{loop_rec_end,{f,48}}}]}.
    {get_tuple_element,{x,1},1,{x,3}}.
    {test,is_eq_exact,{f,162},[{x,3},{integer,32}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_tagged_tuple,{f,162},[{x,1},2,{atom,fragile_message_reference}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tagged_tuple,{f,162},[{x,1},2,{atom,y}]}.
    {test,is_nil,{f,162},[{tr,{x,2},{t_list,any,nil}}]}.
    {move,{y,0},{x,1}}.
    {trim,1,0}.
    {move,{atom,data_dir},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",573}]}.
    {call_ext,2,{extfunc,proplists,get_value,2}}.
    {move,{literal,"receive_stacked"},{x,1}}.
    {line,[{location,"beam_validator_SUITE.erl",575}]}.
    {call_ext,2,{extfunc,filename,join,2}}.
    {move,{literal,[binary]},{x,1}}.
    {line,[{location,"beam_validator_SUITE.erl",576}]}.
    {call_ext,2,{extfunc,compile,file,2}}.
    {test,is_tagged_tuple,{f,161},[{x,0},3,{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,161},[{x,1},{atom,receive_stacked}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,161}.
    {badmatch,{x,0}}.
  {label,162}.
    {line,[{location,"beam_validator_SUITE.erl",537}]}.
    {badmatch,{x,0}}.


{function, aliased_types, 1, 164}.
  {label,163}.
    {line,[{location,"beam_validator_SUITE.erl",580}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,aliased_types},1}.
  {label,164}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,5},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",581}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{y,0},{x,1}}.
    {move,{x,0},{y,0}}.
    {line,[{location,"beam_validator_SUITE.erl",582}]}.
    {call,2,{f,171}}. % aliased_types_1/2
    {test,is_eq_exact,{f,169},[{x,0},{integer,1}]}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"beam_validator_SUITE.erl",584}]}.
    {call,1,{f,174}}. % aliased_types_2/1
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{}}}]}}.
    {test,is_eq_exact,
          {f,168},
          [{tr,{x,0},{t_tuple,2,true,#{}}},{literal,{1,1}}]}.
    {move,nil,{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",585}]}.
    {call,1,{f,174}}. % aliased_types_2/1
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{2 => {t_atom,[none]}}}}]}}.
    {test,is_eq_exact,
          {f,167},
          [{tr,{x,0},{t_tuple,2,true,#{2 => {t_atom,[none]}}}},
           {literal,{42,none}}]}.
    {move,{literal,[gurka]},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",587}]}.
    {call,1,{f,179}}. % aliased_types_3/1
    {'%',{var_info,{x,0},[{type,{t_atom,[gaffel,gurka]}}]}}.
    {test,is_eq_exact,
          {f,166},
          [{tr,{x,0},{t_atom,[gaffel,gurka]}},{atom,gurka}]}.
    {move,{literal,[gaffel]},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",588}]}.
    {call,1,{f,179}}. % aliased_types_3/1
    {'%',{var_info,{x,0},[{type,{t_atom,[gaffel,gurka]}}]}}.
    {test,is_eq_exact,
          {f,165},
          [{tr,{x,0},{t_atom,[gaffel,gurka]}},{atom,gaffel}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,165}.
    {badmatch,{atom,gurka}}.
  {label,166}.
    {line,[{location,"beam_validator_SUITE.erl",587}]}.
    {badmatch,{atom,gaffel}}.
  {label,167}.
    {line,[{location,"beam_validator_SUITE.erl",585}]}.
    {badmatch,{x,0}}.
  {label,168}.
    {line,[{location,"beam_validator_SUITE.erl",584}]}.
    {badmatch,{x,0}}.
  {label,169}.
    {line,[{location,"beam_validator_SUITE.erl",582}]}.
    {badmatch,{x,0}}.


{function, aliased_types_1, 2, 171}.
  {label,170}.
    {line,[{location,"beam_validator_SUITE.erl",599}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,aliased_types_1},2}.
  {label,171}.
    {test,is_eq_exact,{f,172},[{x,1},{literal,[gurka,gaffel]}]}.
    {line,[{location,"beam_validator_SUITE.erl",600}]}.
    if_end.
  {label,172}.
    {line,[{location,"beam_validator_SUITE.erl",602}]}.
    {bif,hd,{f,0},[{x,0}],{x,1}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,5},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",603}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {get_hd,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, aliased_types_2, 1, 174}.
  {label,173}.
    {line,[{location,"beam_validator_SUITE.erl",608}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,aliased_types_2},1}.
  {label,174}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {test,is_nil,{f,175},[{x,0}]}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",610}]}.
    {call,1,{f,432}}. % id/1
    {jump,{f,176}}.
  {label,175}.
    {line,[{location,"beam_validator_SUITE.erl",611}]}.
    {bif,hd,
         {f,0},
         [{tr,{x,0},
              {t_union,{t_atom,any},
                       {t_cons,any,any},
                       {t_number,any},
                       {t_tuple,0,false,#{}},
                       other}}],
         {x,0}}.
  {label,176}.
    {test,is_nil,{f,177},[{tr,{y,0},{t_list,any,any}}]}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{x,0},{atom,none}]}}.
    {deallocate,1}.
    return.
  {label,177}.
    {test_heap,3,1}.
    {get_hd,{y,0},{x,1}}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {deallocate,1}.
    return.


{function, aliased_types_3, 1, 179}.
  {label,178}.
    {line,[{location,"beam_validator_SUITE.erl",620}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,aliased_types_3},1}.
  {label,179}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_atom,[gaffel,gurka]},nil}}]}}.
    {allocate,0,1}.
    {line,[{location,"beam_validator_SUITE.erl",621}]}.
    {call,1,{f,493}}. % '-aliased_types_3/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_cons,{t_atom,[gaffel,gurka]},nil}}]}}.
    {get_hd,{x,0},{x,0}}.
    {deallocate,0}.
    return.


{function, type_conflict, 1, 181}.
  {label,180}.
    {line,[{location,"beam_validator_SUITE.erl",638}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,type_conflict},1}.
  {label,181}.
    {test,is_list,{f,180},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,{r,e1,e2}},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",639}]}.
    {call,1,{f,184}}. % type_conflict_1/1
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{1 => {t_atom,[e1]}}}}]}}.
    {test,is_eq_exact,
          {f,182},
          [{tr,{x,0},{t_tuple,2,true,#{1 => {t_atom,[e1]}}}},
           {literal,{e1,e2}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,182}.
    {badmatch,{x,0}}.


{function, type_conflict_1, 1, 184}.
  {label,183}.
    {line,[{location,"beam_validator_SUITE.erl",642}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,type_conflict_1},1}.
  {label,184}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_atom,[r]},
                                     2 => {t_atom,[e1]},
                                     3 => {t_atom,[e2]}}}}]}}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{atom,e2},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",643}]}.
    {call,1,{f,432}}. % id/1
    {'try',{y,0},{f,185}}.
    {line,[{location,"beam_validator_SUITE.erl",644}]}.
    {call,1,{f,432}}. % id/1
    {try_end,{y,0}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,e1},{x,0}]}}.
    {deallocate,1}.
    return.
  {label,185}.
    {try_case,{y,0}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.


{function, infer_on_eq, 1, 187}.
  {label,186}.
    {line,[{location,"beam_validator_SUITE.erl",655}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,infer_on_eq},1}.
  {label,187}.
    {test,is_list,{f,186},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,{gurka}},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",656}]}.
    {call,1,{f,432}}. % id/1
    {call,1,{f,193}}. % infer_on_eq_1/1
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{1 => {t_atom,[ok]}}}}]}}.
    {test,is_eq_exact,
          {f,191},
          [{tr,{x,0},{t_tuple,2,true,#{1 => {t_atom,[ok]}}}},
           {literal,{ok,gurka}}]}.
    {move,{literal,{gaffel}},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",657}]}.
    {call,1,{f,432}}. % id/1
    {call,1,{f,196}}. % infer_on_eq_2/1
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{1 => {t_atom,[ok]}}}}]}}.
    {test,is_eq_exact,
          {f,190},
          [{tr,{x,0},{t_tuple,2,true,#{1 => {t_atom,[ok]}}}},
           {literal,{ok,gaffel}}]}.
    {move,{literal,{elefant}},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",658}]}.
    {call,1,{f,432}}. % id/1
    {call,1,{f,199}}. % infer_on_eq_3/1
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{1 => {t_atom,[ok]}}}}]}}.
    {test,is_eq_exact,
          {f,189},
          [{tr,{x,0},{t_tuple,2,true,#{1 => {t_atom,[ok]}}}},
           {literal,{ok,elefant}}]}.
    {move,{literal,{myra}},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",659}]}.
    {call,1,{f,432}}. % id/1
    {call,1,{f,202}}. % infer_on_eq_4/1
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{1 => {t_atom,[ok]}}}}]}}.
    {test,is_eq_exact,
          {f,188},
          [{tr,{x,0},{t_tuple,2,true,#{1 => {t_atom,[ok]}}}},
           {literal,{ok,myra}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,188}.
    {badmatch,{x,0}}.
  {label,189}.
    {line,[{location,"beam_validator_SUITE.erl",658}]}.
    {badmatch,{x,0}}.
  {label,190}.
    {line,[{location,"beam_validator_SUITE.erl",657}]}.
    {badmatch,{x,0}}.
  {label,191}.
    {line,[{location,"beam_validator_SUITE.erl",656}]}.
    {badmatch,{x,0}}.


{function, infer_on_eq_1, 1, 193}.
  {label,192}.
    {line,[{location,"beam_validator_SUITE.erl",662}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,infer_on_eq_1},1}.
  {label,193}.
    {line,[{location,"beam_validator_SUITE.erl",663}]}.
    {bif,tuple_size,{f,0},[{x,0}],{x,1}}.
    {test,is_eq_exact,
          {f,194},
          [{tr,{x,1},{t_integer,{0,16777215}}},{integer,1}]}.
    {test_heap,3,1}.
    {get_tuple_element,{x,0},0,{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,ok},{x,0}]}}.
    return.
  {label,194}.
    {badmatch,{x,1}}.


{function, infer_on_eq_2, 1, 196}.
  {label,195}.
    {line,[{location,"beam_validator_SUITE.erl",666}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,infer_on_eq_2},1}.
  {label,196}.
    {line,[{location,"beam_validator_SUITE.erl",667}]}.
    {bif,tuple_size,{f,0},[{x,0}],{x,1}}.
    {test,is_eq_exact,
          {f,197},
          [{tr,{x,1},{t_integer,{0,16777215}}},{integer,1}]}.
    {test_heap,3,1}.
    {get_tuple_element,{x,0},0,{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,ok},{x,0}]}}.
    return.
  {label,197}.
    {line,[{location,"beam_validator_SUITE.erl",668}]}.
    {badmatch,{integer,1}}.


{function, infer_on_eq_3, 1, 199}.
  {label,198}.
    {line,[{location,"beam_validator_SUITE.erl",671}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,infer_on_eq_3},1}.
  {label,199}.
    {line,[{location,"beam_validator_SUITE.erl",672}]}.
    {bif,tuple_size,{f,0},[{x,0}],{x,1}}.
    {test,is_eq_exact,
          {f,200},
          [{tr,{x,1},{t_integer,{0,16777215}}},{integer,1}]}.
    {test_heap,3,1}.
    {get_tuple_element,{x,0},0,{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,ok},{x,0}]}}.
    return.
  {label,200}.
    {badmatch,{atom,false}}.


{function, infer_on_eq_4, 1, 202}.
  {label,201}.
    {line,[{location,"beam_validator_SUITE.erl",675}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,infer_on_eq_4},1}.
  {label,202}.
    {line,[{location,"beam_validator_SUITE.erl",676}]}.
    {bif,tuple_size,{f,0},[{x,0}],{x,1}}.
    {test,is_eq_exact,
          {f,203},
          [{tr,{x,1},{t_integer,{0,16777215}}},{integer,1}]}.
    {test_heap,3,1}.
    {get_tuple_element,{x,0},0,{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,ok},{x,0}]}}.
    return.
  {label,203}.
    {badmatch,{atom,false}}.


{function, infer_dead_value, 1, 205}.
  {label,204}.
    {line,[{location,"beam_validator_SUITE.erl",683}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,infer_dead_value},1}.
  {label,205}.
    {test,is_list,{f,204},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,{0,0,0,0,0,0,0}},{x,1}}.
    {move,{literal,{a,b,c,d,e,f,g}},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",684}]}.
    {call,2,{f,210}}. % idv_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a,c,error]}}]}}.
    {test,is_eq_exact,{f,208},[{tr,{x,0},{t_atom,[a,c,error]}},{atom,a}]}.
    {move,{literal,{a,b,c,d,0,0,0}},{x,1}}.
    {move,{literal,{a,b,c,d,0,0,0}},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",685}]}.
    {call,2,{f,210}}. % idv_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[b,error]}}]}}.
    {test,is_eq_exact,{f,207},[{tr,{x,0},{t_atom,[b,error]}},{atom,b}]}.
    {move,{literal,{0,0,0,0,0,f,g}},{x,1}}.
    {move,{literal,{0,0,0,0,0,f,g}},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",686}]}.
    {call,2,{f,210}}. % idv_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[c,error]}}]}}.
    {test,is_eq_exact,{f,206},[{tr,{x,0},{t_atom,[c,error]}},{atom,c}]}.
    {move,{atom,gaffel},{x,1}}.
    {move,{atom,gurka},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",687}]}.
    {call,2,{f,210}}. % idv_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,{idv,undefined}},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",689}]}.
    {call,1,{f,432}}. % id/1
    {call_last,1,{f,226},0}. % idv_2/1
  {label,206}.
    {line,[{location,"beam_validator_SUITE.erl",686}]}.
    {badmatch,{atom,error}}.
  {label,207}.
    {line,[{location,"beam_validator_SUITE.erl",685}]}.
    {badmatch,{atom,error}}.
  {label,208}.
    {line,[{location,"beam_validator_SUITE.erl",684}]}.
    {badmatch,{x,0}}.


{function, idv_1, 2, 210}.
  {label,209}.
    {line,[{location,"beam_validator_SUITE.erl",693}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,idv_1},2}.
  {label,210}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[gurka]},
                     none,none,
                     [{{7,{t_atom,[a]}},
                       {t_tuple,7,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]},
                             4 => {t_atom,[d]},
                             5 =>
                                 {t_union,
                                     {t_atom,[e]},
                                     none,
                                     {t_integer,{0,0}},
                                     none,none},
                             6 =>
                                 {t_union,
                                     {t_atom,[f]},
                                     none,
                                     {t_integer,{0,0}},
                                     none,none},
                             7 =>
                                 {t_union,
                                     {t_atom,[g]},
                                     none,
                                     {t_integer,{0,0}},
                                     none,none}}}},
                      {{7,{t_integer,{0,0}}},
                       {t_tuple,7,true,
                           #{1 => {t_integer,{0,0}},
                             2 => {t_integer,{0,0}},
                             3 => {t_integer,{0,0}},
                             4 => {t_integer,{0,0}},
                             5 => {t_integer,{0,0}},
                             6 => {t_atom,[f]},
                             7 => {t_atom,[g]}}}}],
                     none}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_union,
                     {t_atom,[gaffel]},
                     none,none,
                     [{{7,{t_atom,[a]}},
                       {t_tuple,7,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]},
                             4 => {t_atom,[d]},
                             5 => {t_integer,{0,0}},
                             6 => {t_integer,{0,0}},
                             7 => {t_integer,{0,0}}}}},
                      {{7,{t_integer,{0,0}}},
                       {t_tuple,7,true,
                           #{1 => {t_integer,{0,0}},
                             2 => {t_integer,{0,0}},
                             3 => {t_integer,{0,0}},
                             4 => {t_integer,{0,0}},
                             5 => {t_integer,{0,0}},
                             6 =>
                                 {t_union,
                                     {t_atom,[f]},
                                     none,
                                     {t_integer,{0,0}},
                                     none,none},
                             7 =>
                                 {t_union,
                                     {t_atom,[g]},
                                     none,
                                     {t_integer,{0,0}},
                                     none,none}}}}],
                     none}}]}}.
    {test,is_tuple,
        {f,213},
        [{tr,{x,0},
             {t_union,
                 {t_atom,[gurka]},
                 none,none,
                 [{{7,{t_atom,[a]}},
                   {t_tuple,7,true,
                       #{1 => {t_atom,[a]},
                         2 => {t_atom,[b]},
                         3 => {t_atom,[c]},
                         4 => {t_atom,[d]},
                         5 =>
                             {t_union,
                                 {t_atom,[e]},
                                 none,
                                 {t_integer,{0,0}},
                                 none,none},
                         6 =>
                             {t_union,
                                 {t_atom,[f]},
                                 none,
                                 {t_integer,{0,0}},
                                 none,none},
                         7 =>
                             {t_union,
                                 {t_atom,[g]},
                                 none,
                                 {t_integer,{0,0}},
                                 none,none}}}},
                  {{7,{t_integer,{0,0}}},
                   {t_tuple,7,true,
                       #{1 => {t_integer,{0,0}},
                         2 => {t_integer,{0,0}},
                         3 => {t_integer,{0,0}},
                         4 => {t_integer,{0,0}},
                         5 => {t_integer,{0,0}},
                         6 => {t_atom,[f]},
                         7 => {t_atom,[g]}}}}],
                 none}}]}.
    {test,is_tuple,
        {f,213},
        [{tr,{x,1},
             {t_union,
                 {t_atom,[gaffel]},
                 none,none,
                 [{{7,{t_atom,[a]}},
                   {t_tuple,7,true,
                       #{1 => {t_atom,[a]},
                         2 => {t_atom,[b]},
                         3 => {t_atom,[c]},
                         4 => {t_atom,[d]},
                         5 => {t_integer,{0,0}},
                         6 => {t_integer,{0,0}},
                         7 => {t_integer,{0,0}}}}},
                  {{7,{t_integer,{0,0}}},
                   {t_tuple,7,true,
                       #{1 => {t_integer,{0,0}},
                         2 => {t_integer,{0,0}},
                         3 => {t_integer,{0,0}},
                         4 => {t_integer,{0,0}},
                         5 => {t_integer,{0,0}},
                         6 =>
                             {t_union,
                                 {t_atom,[f]},
                                 none,
                                 {t_integer,{0,0}},
                                 none,none},
                         7 =>
                             {t_union,
                                 {t_atom,[g]},
                                 none,
                                 {t_integer,{0,0}},
                                 none,none}}}}],
                 none}}]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {get_tuple_element,{x,1},5,{x,3}}.
    {get_tuple_element,{x,1},6,{x,1}}.
    {test,is_eq_exact,
          {f,211},
          [{tr,{x,2},{t_union,{t_atom,[a]},none,{t_integer,{0,0}},none,none}},
           {integer,0}]}.
    {test,is_eq_exact,
          {f,212},
          [{tr,{x,3},{t_union,{t_atom,[f]},none,{t_integer,{0,0}},none,none}},
           {integer,0}]}.
    {test,is_eq_exact,
          {f,212},
          [{tr,{x,1},{t_union,{t_atom,[g]},none,{t_integer,{0,0}},none,none}},
           {integer,0}]}.
    {move,{atom,a},{x,0}}.
    return.
  {label,211}.
    {get_tuple_element,{x,0},0,{x,4}}.
    {test,is_eq_exact,
          {f,212},
          [{tr,{x,4},{t_union,{t_atom,[a]},none,{t_integer,{0,0}},none,none}},
           {atom,a}]}.
    {move,{atom,b},{x,0}}.
    return.
  {label,212}.
    {test,is_eq_exact,
          {f,213},
          [{tr,{x,2},{t_union,{t_atom,[a]},none,{t_integer,{0,0}},none,none}},
           {integer,0}]}.
    {get_tuple_element,{x,0},5,{x,2}}.
    {test,is_eq_exact,
          {f,213},
          [{tr,{x,3},{t_union,{t_atom,[f]},none,{t_integer,{0,0}},none,none}},
           {tr,{x,2},
               {t_union,{t_atom,[f]},none,{t_integer,{0,0}},none,none}}]}.
    {get_tuple_element,{x,0},6,{x,0}}.
    {test,is_eq_exact,
          {f,213},
          [{tr,{x,1},{t_union,{t_atom,[g]},none,{t_integer,{0,0}},none,none}},
           {tr,{x,0},
               {t_union,{t_atom,[g]},none,{t_integer,{0,0}},none,none}}]}.
    {move,{atom,c},{x,0}}.
    return.
  {label,213}.
    {move,{atom,error},{x,0}}.
    return.


{function, infer_on_ne, 1, 215}.
  {label,214}.
    {line,[{location,"beam_validator_SUITE.erl",711}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,infer_on_ne},1}.
  {label,215}.
    {test,is_list,{f,214},[{x,0}]}.
    {allocate,0,0}.
    {move,{atom,open},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",712}]}.
    {call,1,{f,432}}. % id/1
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,ion},{x,0}]}}.
    {call,1,{f,218}}. % ion_1/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[ok]},
                     none,none,
                     [{{2,{t_atom,[ion]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[ion]},2 => {t_atom,[closing]}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,216},
          [{tr,{x,0},
               {t_union,{t_atom,[ok]},
                        none,none,
                        [{{2,{t_atom,[ion]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[ion]},
                                     2 => {t_atom,[closing]}}}}],
                        none}},
           {literal,{ion,closing}}]}.
    {move,{literal,{ion,open}},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",713}]}.
    {call,1,{f,224}}. % ion_close/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[ion]},
                                     2 => {t_atom,[closing]}}}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,216}.
    {line,[{location,"beam_validator_SUITE.erl",712}]}.
    {badmatch,{atom,ok}}.


{function, ion_1, 1, 218}.
  {label,217}.
    {line,[{location,"beam_validator_SUITE.erl",716}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,ion_1},1}.
  {label,218}.
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{1 => {t_atom,[ion]}}}}]}}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {select_val,{x,1},
                {f,217},
                {list,[{atom,closing},{f,219},{atom,open},{f,219}]}}.
  {label,219}.
    {call_only,1,{f,221}}. % ion_2/1


{function, ion_2, 1, 221}.
  {label,220}.
    {line,[{location,"beam_validator_SUITE.erl",719}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,ion_2},1}.
  {label,221}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[ion]},
                                     2 => {t_atom,[closing,open]}}}}]}}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_eq_exact,{f,222},[{x,0},{atom,open}]}.
    {move,{literal,{ion,open}},{x,0}}.
    {call_only,1,{f,224}}. % ion_close/1
  {label,222}.
    {move,{atom,ok},{x,0}}.
    return.


{function, ion_close, 1, 224}.
  {label,223}.
    {line,[{location,"beam_validator_SUITE.erl",722}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,ion_close},1}.
  {label,224}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[ion]},
                                     2 => {t_atom,[open]}}}}]}}.
    {move,{literal,{ion,closing}},{x,0}}.
    return.


{function, idv_2, 1, 226}.
  {label,225}.
    {line,[{location,"beam_validator_SUITE.erl",728}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,idv_2},1}.
  {label,226}.
    {test,is_tagged_tuple,{f,229},[{x,0},2,{atom,idv}]}.
    {allocate,1,1}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {bif,'=:=',{f,0},[{x,0},{atom,undefined}],{y,0}}.
    {move,{atom,gurka},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",730}]}.
    {call,1,{f,432}}. % id/1
    {test,is_tuple,{f,227},[{x,0}]}.
    {test,test_arity,{f,227},[{x,0},1]}.
    {test_heap,2,0}.
    {put_list,{y,0},nil,{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",731}]}.
    {call,1,{f,432}}. % id/1
  {label,227}.
    {test,is_eq_exact,{f,228},[{y,0},{atom,true}]}.
    {move,{literal,{idv,undefined}},{x,0}}.
    {call_last,1,{f,231},1}. % idv_called_once/1
  {label,228}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,229}.
    {line,[{location,"beam_validator_SUITE.erl",729}]}.
    {badrecord,{x,0}}.


{function, idv_called_once, 1, 231}.
  {label,230}.
    {line,[{location,"beam_validator_SUITE.erl",739}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,idv_called_once},1}.
  {label,231}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[idv]},
                                     2 => {t_atom,[undefined]}}}}]}}.
    {move,{atom,ok},{x,0}}.
    return.


{function, branch_to_try_handler, 1, 233}.
  {label,232}.
    {line,[{location,"beam_validator_SUITE.erl",744}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,branch_to_try_handler},1}.
  {label,233}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{atom,branch_to_try_handler},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",745}]}.
    {call,2,{f,261}}. % do_val/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,234},
          [{tr,{x,0},{t_list,any,nil}},
           {literal,[{{branch_to_try_handler,main,1},
                      {{bif,tuple_size,{f,3},[{y,0}],{x,0}},
                       13,
                       {illegal_branch,try_handler,3}}}]}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,234}.
    {line,[{location,"beam_validator_SUITE.erl",746}]}.
    {badmatch,{x,0}}.


{function, receive_marker, 1, 236}.
  {label,235}.
    {line,[{location,"beam_validator_SUITE.erl",752}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,receive_marker},1}.
  {label,236}.
    {test,is_list,{f,235},[{x,0}]}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{atom,receive_marker},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",753}]}.
    {call,2,{f,261}}. % do_val/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_nonempty_list,{f,237},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_tuple,{f,237},[{x,1}]}.
    {test,test_arity,{f,237},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_eq_exact,{f,237},[{x,3},{literal,{receive_marker,t1,1}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tagged_tuple,{f,237},[{x,1},3,{atom,return}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_eq_exact,
          {f,237},
          [{x,1},{literal,{return_in_receive,entered_loop}}]}.
    {test,is_nonempty_list,{f,237},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tuple,{f,237},[{x,1}]}.
    {test,test_arity,{f,237},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_eq_exact,{f,237},[{x,3},{literal,{receive_marker,t2,1}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tuple,{f,237},[{x,1}]}.
    {test,test_arity,{f,237},[{x,1},3]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_eq_exact,{f,237},[{x,3},{literal,{call_last,1,{f,2},1}}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_eq_exact,
          {f,237},
          [{x,1},{literal,{return_in_receive,entered_loop}}]}.
    {test,is_nonempty_list,{f,237},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tuple,{f,237},[{x,1}]}.
    {test,test_arity,{f,237},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_eq_exact,{f,237},[{x,3},{literal,{receive_marker,t3,1}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tagged_tuple,{f,237},[{x,1},3,{atom,return}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_eq_exact,
          {f,237},
          [{x,1},{literal,{return_in_receive,entered_loop}}]}.
    {test,is_nil,{f,237},[{tr,{x,2},{t_list,any,nil}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,237}.
    {line,[{location,"beam_validator_SUITE.erl",755}]}.
    {badmatch,{x,0}}.


{function, safe_instructions, 1, 239}.
  {label,238}.
    {line,[{location,"beam_validator_SUITE.erl",769}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,safe_instructions},1}.
  {label,239}.
    {test,is_list,{f,238},[{x,0}]}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{atom,safe_instructions},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",770}]}.
    {call,2,{f,261}}. % do_val/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_nil,{f,240},[{tr,{x,0},{t_list,any,nil}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,240}.
    {line,[{location,"beam_validator_SUITE.erl",772}]}.
    {badmatch,{x,0}}.


{function, missing_return_type, 1, 242}.
  {label,241}.
    {line,[{location,"beam_validator_SUITE.erl",776}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,missing_return_type},1}.
  {label,242}.
    {test,is_list,{f,241},[{x,0}]}.
    {allocate,0,0}.
    {move,{atom,true},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",780}]}.
    {call,1,{f,248}}. % mrt_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,246},[{x,0},{atom,true}]}.
    {move,{atom,false},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",781}]}.
    {call,1,{f,248}}. % mrt_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,243},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,243}.
    {move,{atom,hello},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",782}]}.
    {call,1,{f,432}}. % id/1
    {bif,is_map_key,{f,0},[{x,0},{literal,#{hello => there}}],{x,0}}.
    {call,1,{f,248}}. % mrt_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,245},[{x,0},{atom,true}]}.
    {move,{atom,there},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",783}]}.
    {call,1,{f,432}}. % id/1
    {bif,is_map_key,{f,0},[{x,0},{literal,#{hello => there}}],{x,0}}.
    {call,1,{f,248}}. % mrt_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,244},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,244}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,245}.
    {line,[{location,"beam_validator_SUITE.erl",782}]}.
    {badmatch,{atom,false}}.
  {label,246}.
    {line,[{location,"beam_validator_SUITE.erl",780}]}.
    {badmatch,{atom,false}}.


{function, mrt_1, 1, 248}.
  {label,247}.
    {line,[{location,"beam_validator_SUITE.erl",787}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,mrt_1},1}.
  {label,248}.
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    return.


{function, bs_saved_position_units, 1, 250}.
  {label,249}.
    {line,[{location,"beam_validator_SUITE.erl",792}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,bs_saved_position_units},1}.
  {label,250}.
    {test,is_list,{f,249},[{x,0}]}.
    {allocate,0,0}.
    {move,
        {literal,
            {bs_saved_position_units,
                [{no_errors,1},{some_errors,1}],
                [],
                [{function,ctx_test_8,1,2,
                     [{label,1},
                      {func_info,
                          {atom,bs_saved_position_units},
                          {atom,ctx_test_8},
                          1},
                      {label,2},
                      {'%',
                          {var_info,
                              {x,0},
                              [{type,{t_bs_context,8}},
                               accepts_match_context]}},
                      {move,nil,{x,0}},
                      return]},
                 {function,no_errors,1,4,
                     [{label,3},
                      {func_info,
                          {atom,bs_saved_position_units},
                          {atom,no_errors},
                          1},
                      {label,4},
                      {'%',{var_info,{x,0},[accepts_match_context]}},
                      {test,bs_start_match3,{f,3},1,[{x,0}],{x,1}},
                      {bs_get_position,{x,1},{x,0},2},
                      {test,bs_test_unit,{f,5},[{x,1},8]},
                      {bs_set_position,{x,1},{x,0}},
                      {test,bs_get_binary2,
                          {f,5},
                          2,
                          [{x,1},{atom,all},1,{field_flags,[unsigned,big]}],
                          {x,2}},
                      {bs_set_position,{x,1},{x,0}},
                      {bs_get_tail,{x,1},{x,0},3},
                      {test,is_eq_exact,{f,5},[{x,2},{x,0}]},
                      {move,{x,1},{x,0}},
                      {call_only,1,{f,2}},
                      {label,5},
                      {bs_get_tail,{x,1},{x,0},2},
                      {jump,{f,3}}]},
                 {function,some_errors,1,7,
                     [{label,6},
                      {func_info,
                          {atom,bs_saved_position_units},
                          {atom,some_errors},
                          1},
                      {label,7},
                      {'%',{var_info,{x,0},[accepts_match_context]}},
                      {test,bs_start_match3,{f,6},1,[{x,0}],{x,1}},
                      {bs_get_position,{x,1},{x,0},2},
                      {test,bs_get_binary2,
                          {f,8},
                          2,
                          [{x,1},{atom,all},4,{field_flags,[unsigned,big]}],
                          {x,2}},
                      {bs_set_position,{x,1},{x,0}},
                      {test,bs_test_unit,{f,9},[{x,1},3]},
                      {bs_set_position,{x,1},{x,0}},
                      {bs_get_tail,{x,1},{x,0},3},
                      {test,is_eq_exact,{f,8},[{x,2},{x,0}]},
                      {move,{x,1},{x,0}},
                      {call_only,1,{f,2}},
                      {label,8},
                      {bs_get_tail,{x,1},{x,0},2},
                      {jump,{f,6}},
                      {label,9},
                      {move,nil,{x,0}},
                      return]}],
                10}},
        {x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",858}]}.
    {call,1,{f,267}}. % beam_val/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,251},
          [{tr,{x,0},{t_list,any,nil}},
           {literal,[{{bs_saved_position_units,some_errors,1},
                      {{call_only,1,{f,2}},
                       14,
                       {bad_arg_type,{x,0},
                                     {t_bs_context,12},
                                     {t_bs_context,8}}}}]}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,251}.
    {line,[{location,"beam_validator_SUITE.erl",860}]}.
    {badmatch,{x,0}}.


{function, transform_remove, 2, 253}.
  {label,252}.
    {line,[{location,"beam_validator_SUITE.erl",871}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,transform_remove},2}.
  {label,253}.
    {'%',{var_info,{x,0},[{type,{t_fun,1,any,{t_atom,[false,true]}}}]}}.
    {test_heap,{alloc,[{words,1},{floats,0},{funs,1}]},2}.
    {make_fun3,{f,486},0,0,{x,0},{list,[{x,0}]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_list,any,nil}}]}}.
    {call_only,2,{f,257}}. % transform_is/2


{function, transform_i, 2, 255}.
  {label,254}.
    {line,[{location,"beam_validator_SUITE.erl",874}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,transform_i},2}.
  {label,255}.
    {'%',{var_info,{x,0},[{type,{t_fun,1,any,any}}]}}.
    {test_heap,{alloc,[{words,1},{floats,0},{funs,1}]},2}.
    {make_fun3,{f,480},0,0,{x,0},{list,[{x,0}]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_list,any,nil}}]}}.
    {call_only,2,{f,257}}. % transform_is/2


{function, transform_is, 2, 257}.
  {label,256}.
    {line,[{location,"beam_validator_SUITE.erl",877}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,transform_is},2}.
  {label,257}.
    {'%',{var_info,{x,0},[{type,{t_fun,1,any,{t_list,any,nil}}}]}}.
    {test,is_tuple,{f,256},[{x,1}]}.
    {test,test_arity,{f,256},[{x,1},5]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {get_tuple_element,{x,1},3,{x,1}}.
    {swap,{x,0},{x,1}}.
    {line,[{location,"beam_validator_SUITE.erl",878}]}.
    {call,2,{f,476}}. % '-transform_is/2-lc$^0/1-0-'/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,5,true,
                         #{1 => {t_atom,[function]},5 => {t_list,any,nil}}},
                     nil}}]}}.
    {test_heap,6,1}.
    {get_tuple_element,{y,0},0,{x,1}}.
    {get_tuple_element,{y,0},1,{x,2}}.
    {get_tuple_element,{y,0},2,{x,3}}.
    {get_tuple_element,{y,0},4,{x,4}}.
    {put_tuple2,{x,0},{list,[{x,1},{x,2},{x,3},{x,0},{x,4}]}}.
    {deallocate,1}.
    return.


{function, transform_is_1, 2, 259}.
  {label,258}.
    {line,[{location,"beam_validator_SUITE.erl",881}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,transform_is_1},2}.
  {label,259}.
    {'%',{var_info,{x,0},[{type,{t_fun,1,any,{t_list,any,nil}}}]}}.
    {test,is_tagged_tuple,{f,258},[{x,1},5,{atom,function}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {get_tuple_element,{x,1},4,{x,1}}.
    {swap,{x,0},{x,1}}.
    {line,[{location,"beam_validator_SUITE.erl",882}]}.
    {call_fun2,{atom,safe},1,{tr,{x,1},{t_fun,1,any,{t_list,any,nil}}}}.
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,6,1}.
    {get_tuple_element,{y,0},1,{x,1}}.
    {get_tuple_element,{y,0},2,{x,2}}.
    {get_tuple_element,{y,0},3,{x,3}}.
    {put_tuple2,{x,0},{list,[{atom,function},{x,1},{x,2},{x,3},{x,0}]}}.
    {deallocate,1}.
    return.


{function, do_val, 2, 261}.
  {label,260}.
    {line,[{location,"beam_validator_SUITE.erl",885}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,do_val},2}.
  {label,261}.
    {'%',{var_info,{x,0},[{type,{t_atom,any}}]}}.
    {allocate,2,2}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {move,{atom,data_dir},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",886}]}.
    {call_ext,2,{extfunc,proplists,get_value,2}}.
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",887}]}.
    {call_ext,1,{extfunc,erlang,atom_to_list,1}}.
    {move,{y,0},{x,1}}.
    {move,{x,0},{y,0}}.
    {swap,{x,0},{x,1}}.
    {line,[{location,"beam_validator_SUITE.erl",888}]}.
    {call_ext,2,{extfunc,filename,join,2}}.
    {move,{literal,[from_asm,no_postopt,return_errors]},{x,1}}.
    {line,[{location,"beam_validator_SUITE.erl",889}]}.
    {call_ext,2,{extfunc,compile,file,2}}.
    {test,is_tuple,{f,265},[{x,0}]}.
    {select_tuple_arity,{tr,{x,0},{t_tuple,0,false,#{}}},
                        {f,265},
                        {list,[2,{f,263},3,{f,262}]}}.
  {label,262}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,265},[{x,1},{atom,error}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_nil,{f,265},[{x,1}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_nonempty_list,{f,264},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_tuple,{f,264},[{x,1}]}.
    {test,test_arity,{f,264},[{x,1},2]}.
    {test,is_nil,{f,264},[{x,2}]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,
          {f,264},
          [{x,2},{tr,{y,0},{t_list,{t_integer,{0,1114111}},nil}}]}.
    {get_tuple_element,{x,1},1,{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {trim,1,1}.
    {line,[{location,"beam_validator_SUITE.erl",892}]}.
    {call,1,{f,471}}. % '-do_val/2-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {move,{x,0},{y,0}}.
    {line,[{location,"beam_validator_SUITE.erl",894}]}.
    {call,1,{f,468}}. % '-do_val/2-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,263}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,265},[{x,1},{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,265},[{x,1},{tr,{y,1},{t_atom,any}}]}.
    {move,nil,{x,0}}.
    {deallocate,2}.
    return.
  {label,264}.
    {line,[{location,"beam_validator_SUITE.erl",891}]}.
    {badmatch,{x,0}}.
  {label,265}.
    {line,[{location,"beam_validator_SUITE.erl",889}]}.
    {case_end,{x,0}}.


{function, beam_val, 1, 267}.
  {label,266}.
    {line,[{location,"beam_validator_SUITE.erl",900}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,beam_val},1}.
  {label,267}.
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,none,none,none,
         [{{5,{t_atom,[bs_saved_position_units]}},
           {t_tuple,5,true,
            #{1 => {t_atom,[bs_saved_position_units]},
              2 =>
               {t_cons,
                {t_union,none,none,none,
                 [{{2,{t_atom,[no_errors]}},
                   {t_tuple,2,true,
                    #{1 => {t_atom,[no_errors]},2 => {t_integer,{1,1}}}}},
                  {{2,{t_atom,[some_errors]}},
                   {t_tuple,2,true,
                    #{1 => {t_atom,[some_errors]},2 => {t_integer,{1,1}}}}}],
                 none},
                nil},
              3 => nil,
              4 =>
               {t_cons,
                {t_tuple,5,true,
                 #{1 => {t_atom,[function]},
                   2 => {t_atom,[ctx_test_8,no_errors,some_errors]},
                   3 => {t_integer,{1,1}},
                   4 => {t_integer,{2,7}},
                   5 =>
                    {t_cons,
                     {t_union,
                      {t_atom,[return]},
                      none,none,
                      {t_tuple,2,false,#{}},
                      none},
                     nil}}},
                nil},
              5 => {t_integer,{10,10}}}}},
          {{5,{t_atom,[illegal_instruction]}},
           {t_tuple,5,true,
            #{1 => {t_atom,[illegal_instruction]},
              2 =>
               {t_cons,
                {t_union,none,none,none,
                 [{{2,{t_atom,[t]}},
                   {t_tuple,2,true,
                    #{1 => {t_atom,[t]},2 => {t_integer,{1,1}}}}},
                  {{2,{t_atom,[x]}},
                   {t_tuple,2,true,
                    #{1 => {t_atom,[x]},2 => {t_integer,{1,1}}}}},
                  {{2,{t_atom,[y]}},
                   {t_tuple,2,true,
                    #{1 => {t_atom,[y]},2 => {t_integer,{0,0}}}}}],
                 none},
                nil},
              3 => nil,
              4 =>
               {t_cons,
                {t_tuple,5,true,
                 #{1 => {t_atom,[function]},
                   2 => {t_atom,[t,x,y]},
                   3 => {t_integer,{0,1}},
                   4 => {t_integer,{2,17}},
                   5 =>
                    {t_list,
                     {t_union,
                      {t_atom,[bad_func_info,return]},
                      none,none,
                      {t_tuple,2,false,#{}},
                      none},
                     nil}}},
                nil},
              5 => {t_integer,{5,5}}}}},
          {{5,{t_atom,[undef_label]}},
           {t_tuple,5,true,
            #{1 => {t_atom,[undef_label]},
              2 =>
               {t_cons,
                {t_tuple,2,true,#{1 => {t_atom,[t]},2 => {t_integer,{1,1}}}},
                nil},
              3 => nil,
              4 =>
               {t_cons,
                {t_tuple,5,true,
                 #{1 => {t_atom,[function]},
                   2 => {t_atom,[t,x]},
                   3 => {t_integer,{1,1}},
                   4 => {t_integer,{2,17}},
                   5 =>
                    {t_cons,
                     {t_union,
                      {t_atom,[return]},
                      none,none,
                      {t_tuple,2,false,#{}},
                      none},
                     nil}}},
                nil},
              5 => {t_integer,{5,5}}}}}],
         none}}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {get_tuple_element,{x,0},0,{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",901}]}.
    {call_ext,1,{extfunc,erlang,atom_to_list,1}}.
    {swap,{y,0},{x,0}}.
    {move,{atom,strong},{x,1}}.
    {line,[{location,"beam_validator_SUITE.erl",902}]}.
    {call_ext,2,{extfunc,beam_validator,validate,2}}.
    {test,is_tagged_tuple,{f,268},[{x,0},2,{atom,error}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_nonempty_list,{f,268},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_tuple,{f,268},[{x,2}]}.
    {test,test_arity,{f,268},[{x,2},2]}.
    {test,is_nil,{f,268},[{x,1}]}.
    {get_tuple_element,{x,2},0,{x,1}}.
    {test,is_eq_exact,
          {f,268},
          [{x,1},{tr,{y,0},{t_list,{t_integer,{0,1114111}},nil}}]}.
    {get_tuple_element,{x,2},1,{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"beam_validator_SUITE.erl",903}]}.
    {call,1,{f,463}}. % '-beam_val/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {move,{x,0},{y,0}}.
    {line,[{location,"beam_validator_SUITE.erl",905}]}.
    {call,1,{f,460}}. % '-beam_val/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,268}.
    {line,[{location,"beam_validator_SUITE.erl",902}]}.
    {badmatch,{x,0}}.


{function, val_dsetel, 1, 270}.
  {label,269}.
    {line,[{location,"beam_validator_SUITE.erl",910}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,val_dsetel},1}.
  {label,270}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{integer,13},{x,1}}.
    {line,[{location,"beam_validator_SUITE.erl",911}]}.
    send.
    {'catch',{y,0},{f,271}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",912}]}.
    {call,1,{f,274}}. % night/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,271}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,272},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,272},[{x,1}]}.
    {test,test_arity,{f,272},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,272},[{x,1},{literal,{try_clause,participating}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,272}.
    {line,[{scope,[0]},{location,"beam_validator_SUITE.erl",912}]}.
    {badmatch,{x,0}}.


{function, night, 1, 274}.
  {label,273}.
    {line,[{location,"beam_validator_SUITE.erl",915}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,night},1}.
  {label,274}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,0}}}]}}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
  {label,275}.
    {loop_rec,{f,278},{x,0}}.
    {test,is_eq_exact,{f,277},[{x,0},{integer,13}]}.
    remove_message.
    {'try',{y,0},{f,276}}.
    {line,[{scope,[3]},{location,"beam_validator_SUITE.erl",918}]}.
    {try_case_end,{atom,participating}}.
  {label,276}.
    {try_case,{y,0}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.
  {label,277}.
    {loop_rec_end,{f,275}}.
  {label,278}.
    {wait,{f,275}}.


{function, will_succeed, 1, 280}.
  {label,279}.
    {line,[{location,"beam_validator_SUITE.erl",928}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,will_succeed},1}.
  {label,280}.
    {allocate,0,0}.
    {move,{atom,body},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",929}]}.
    {call,1,{f,282}}. % will_succeed_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{atom,whatever},{x,1}}.
    {line,[{location,"beam_validator_SUITE.erl",931}]}.
    send.
    {line,[{location,"beam_validator_SUITE.erl",932}]}.
    {call,0,{f,284}}. % will_succeed_2/0
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{atom,whatever},{x,1}}.
    {line,[{location,"beam_validator_SUITE.erl",934}]}.
    send.
    {line,[{location,"beam_validator_SUITE.erl",935}]}.
    {call,0,{f,289}}. % will_succeed_3/0
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, will_succeed_1, 1, 282}.
  {label,281}.
    {line,[{location,"beam_validator_SUITE.erl",944}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,will_succeed_1},1}.
  {label,282}.
    {'%',{var_info,{x,0},[{type,{t_atom,[body]}}]}}.
    {move,{atom,ok},{x,0}}.
    return.


{function, will_succeed_2, 0, 284}.
  {label,283}.
    {line,[{location,"beam_validator_SUITE.erl",957}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,will_succeed_2},0}.
  {label,284}.
    {allocate,1,0}.
    {'try',{y,0},{f,287}}.
  {label,285}.
    {loop_rec,{f,286},{x,0}}.
    remove_message.
    {move,{atom,name},{x,1}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[1]},{location,"beam_validator_SUITE.erl",959}]}.
    {apply,0}.
    {jump,{f,287}}.
  {label,286}.
    {wait,{f,285}}.
  {label,287}.
    {try_case,{y,0}}.
    {move,{atom,error},{x,0}}.
    {deallocate,1}.
    return.


{function, will_succeed_3, 0, 289}.
  {label,288}.
    {line,[{location,"beam_validator_SUITE.erl",968}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,will_succeed_3},0}.
  {label,289}.
    {allocate,1,0}.
    {'try',{y,0},{f,292}}.
  {label,290}.
    {loop_rec,{f,291},{x,0}}.
    remove_message.
    {move,{integer,42},{x,2}}.
    {move,{atom,b},{x,1}}.
    {move,{atom,name},{x,3}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[1]},{location,"beam_validator_SUITE.erl",970}]}.
    {apply,2}.
    {jump,{f,292}}.
  {label,291}.
    {wait,{f,290}}.
  {label,292}.
    {try_case,{y,0}}.
    {move,{atom,error},{x,0}}.
    {deallocate,1}.
    return.


{function, parent_container, 1, 294}.
  {label,293}.
    {line,[{location,"beam_validator_SUITE.erl",984}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,parent_container},1}.
  {label,294}.
    {allocate,0,0}.
    {move,{literal,{pc,true}},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",985}]}.
    {call,1,{f,432}}. % id/1
    {call_last,1,{f,296},0}. % pc_1/1


{function, pc_1, 1, 296}.
  {label,295}.
    {line,[{location,"beam_validator_SUITE.erl",987}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,pc_1},1}.
  {label,296}.
    {test,is_tagged_tuple,{f,295},[{x,0},2,{atom,pc}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_boolean,{f,297},[{x,1}]}.
    {call_only,1,{f,299}}. % pc_2/1
  {label,297}.
    {line,[{location,"beam_validator_SUITE.erl",988}]}.
    {case_end,{x,1}}.


{function, pc_2, 1, 299}.
  {label,298}.
    {line,[{location,"beam_validator_SUITE.erl",994}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,pc_2},1}.
  {label,299}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[pc]},
                                     2 => {t_atom,[false,true]}}}}]}}.
    {move,{atom,ok},{x,0}}.
    return.


{function, container_performance, 1, 301}.
  {label,300}.
    {line,[{location,"beam_validator_SUITE.erl",998}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,container_performance},1}.
  {label,301}.
    {test,is_tuple,{f,360},[{x,0}]}.
    {test,test_arity,{f,360},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {select_val,{x,1},{f,360},{list,[{atom,a},{f,303},{atom,b},{f,302}]}}.
  {label,302}.
    {move,{literal,{k1}},{x,0}}.
    return.
  {label,303}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_tuple,{f,360},[{x,0}]}.
    {test,test_arity,{f,360},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {select_val,{x,1},{f,360},{list,[{atom,a},{f,305},{atom,b},{f,304}]}}.
  {label,304}.
    {move,{literal,{k2}},{x,0}}.
    return.
  {label,305}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_tuple,{f,360},[{x,0}]}.
    {test,test_arity,{f,360},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {select_val,{x,1},{f,360},{list,[{atom,a},{f,307},{atom,b},{f,306}]}}.
  {label,306}.
    {move,{literal,{k3}},{x,0}}.
    return.
  {label,307}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_tuple,{f,360},[{x,0}]}.
    {test,test_arity,{f,360},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {select_val,{x,1},{f,360},{list,[{atom,a},{f,309},{atom,b},{f,308}]}}.
  {label,308}.
    {move,{literal,{k4}},{x,0}}.
    return.
  {label,309}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_tuple,{f,360},[{x,0}]}.
    {test,test_arity,{f,360},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {select_val,{x,1},{f,360},{list,[{atom,a},{f,311},{atom,b},{f,310}]}}.
  {label,310}.
    {move,{literal,{k5}},{x,0}}.
    return.
  {label,311}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_tuple,{f,360},[{x,0}]}.
    {test,test_arity,{f,360},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {select_val,{x,1},{f,360},{list,[{atom,a},{f,313},{atom,b},{f,312}]}}.
  {label,312}.
    {move,{literal,{k6}},{x,0}}.
    return.
  {label,313}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_tuple,{f,360},[{x,0}]}.
    {test,test_arity,{f,360},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {select_val,{x,1},{f,360},{list,[{atom,a},{f,315},{atom,b},{f,314}]}}.
  {label,314}.
    {move,{literal,{k7}},{x,0}}.
    return.
  {label,315}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_tuple,{f,360},[{x,0}]}.
    {test,test_arity,{f,360},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {select_val,{x,1},{f,360},{list,[{atom,a},{f,317},{atom,b},{f,316}]}}.
  {label,316}.
    {move,{literal,{k8}},{x,0}}.
    return.
  {label,317}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_tuple,{f,360},[{x,0}]}.
    {test,test_arity,{f,360},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {select_val,{x,1},{f,360},{list,[{atom,a},{f,319},{atom,b},{f,318}]}}.
  {label,318}.
    {move,{literal,{k9}},{x,0}}.
    return.
  {label,319}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_tuple,{f,360},[{x,0}]}.
    {test,test_arity,{f,360},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {select_val,{x,1},{f,360},{list,[{atom,a},{f,321},{atom,b},{f,320}]}}.
  {label,320}.
    {move,{literal,{k10}},{x,0}}.
    return.
  {label,321}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_tuple,{f,360},[{x,0}]}.
    {test,test_arity,{f,360},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {select_val,{x,1},{f,360},{list,[{atom,a},{f,323},{atom,b},{f,322}]}}.
  {label,322}.
    {move,{literal,{k11}},{x,0}}.
    return.
  {label,323}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_tuple,{f,360},[{x,0}]}.
    {test,test_arity,{f,360},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {select_val,{x,1},{f,360},{list,[{atom,a},{f,325},{atom,b},{f,324}]}}.
  {label,324}.
    {move,{literal,{k12}},{x,0}}.
    return.
  {label,325}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_tuple,{f,360},[{x,0}]}.
    {test,test_arity,{f,360},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {select_val,{x,1},{f,360},{list,[{atom,a},{f,327},{atom,b},{f,326}]}}.
  {label,326}.
    {move,{literal,{k13}},{x,0}}.
    return.
  {label,327}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_tuple,{f,360},[{x,0}]}.
    {test,test_arity,{f,360},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {select_val,{x,1},{f,360},{list,[{atom,a},{f,329},{atom,b},{f,328}]}}.
  {label,328}.
    {move,{literal,{k14}},{x,0}}.
    return.
  {label,329}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_tuple,{f,360},[{x,0}]}.
    {test,test_arity,{f,360},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {select_val,{x,1},{f,360},{list,[{atom,a},{f,331},{atom,b},{f,330}]}}.
  {label,330}.
    {move,{literal,{k15}},{x,0}}.
    return.
  {label,331}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_tuple,{f,360},[{x,0}]}.
    {test,test_arity,{f,360},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {select_val,{x,1},{f,360},{list,[{atom,a},{f,333},{atom,b},{f,332}]}}.
  {label,332}.
    {move,{literal,{k16}},{x,0}}.
    return.
  {label,333}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_tuple,{f,360},[{x,0}]}.
    {test,test_arity,{f,360},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {select_val,{x,1},{f,360},{list,[{atom,a},{f,335},{atom,b},{f,334}]}}.
  {label,334}.
    {move,{literal,{k17}},{x,0}}.
    return.
  {label,335}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_tuple,{f,360},[{x,0}]}.
    {test,test_arity,{f,360},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {select_val,{x,1},{f,360},{list,[{atom,a},{f,337},{atom,b},{f,336}]}}.
  {label,336}.
    {move,{literal,{k18}},{x,0}}.
    return.
  {label,337}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_tuple,{f,360},[{x,0}]}.
    {test,test_arity,{f,360},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {select_val,{x,1},{f,360},{list,[{atom,a},{f,339},{atom,b},{f,338}]}}.
  {label,338}.
    {move,{literal,{k19}},{x,0}}.
    return.
  {label,339}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_tuple,{f,360},[{x,0}]}.
    {test,test_arity,{f,360},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {select_val,{x,1},{f,360},{list,[{atom,a},{f,341},{atom,b},{f,340}]}}.
  {label,340}.
    {move,{literal,{k20}},{x,0}}.
    return.
  {label,341}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_tuple,{f,360},[{x,0}]}.
    {test,test_arity,{f,360},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {select_val,{x,1},{f,360},{list,[{atom,a},{f,343},{atom,b},{f,342}]}}.
  {label,342}.
    {move,{literal,{k21}},{x,0}}.
    return.
  {label,343}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_tuple,{f,360},[{x,0}]}.
    {test,test_arity,{f,360},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {select_val,{x,1},{f,360},{list,[{atom,a},{f,345},{atom,b},{f,344}]}}.
  {label,344}.
    {move,{literal,{k22}},{x,0}}.
    return.
  {label,345}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_tuple,{f,360},[{x,0}]}.
    {test,test_arity,{f,360},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {select_val,{x,1},{f,360},{list,[{atom,a},{f,347},{atom,b},{f,346}]}}.
  {label,346}.
    {move,{literal,{k23}},{x,0}}.
    return.
  {label,347}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_tuple,{f,360},[{x,0}]}.
    {test,test_arity,{f,360},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {select_val,{x,1},{f,360},{list,[{atom,a},{f,349},{atom,b},{f,348}]}}.
  {label,348}.
    {move,{literal,{k24}},{x,0}}.
    return.
  {label,349}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_tuple,{f,360},[{x,0}]}.
    {test,test_arity,{f,360},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {select_val,{x,1},{f,360},{list,[{atom,a},{f,351},{atom,b},{f,350}]}}.
  {label,350}.
    {move,{literal,{k25}},{x,0}}.
    return.
  {label,351}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_tuple,{f,360},[{x,0}]}.
    {test,test_arity,{f,360},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {select_val,{x,1},{f,360},{list,[{atom,a},{f,353},{atom,b},{f,352}]}}.
  {label,352}.
    {move,{literal,{k26}},{x,0}}.
    return.
  {label,353}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_tuple,{f,360},[{x,0}]}.
    {test,test_arity,{f,360},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {select_val,{x,1},{f,360},{list,[{atom,a},{f,355},{atom,b},{f,354}]}}.
  {label,354}.
    {move,{literal,{k27}},{x,0}}.
    return.
  {label,355}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_tuple,{f,360},[{x,0}]}.
    {test,test_arity,{f,360},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {select_val,{x,1},{f,360},{list,[{atom,a},{f,357},{atom,b},{f,356}]}}.
  {label,356}.
    {move,{literal,{k28}},{x,0}}.
    return.
  {label,357}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_tuple,{f,360},[{x,0}]}.
    {test,test_arity,{f,360},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,0}}.
    {select_val,{x,0},{f,360},{list,[{atom,a},{f,359},{atom,b},{f,358}]}}.
  {label,358}.
    {move,{literal,{k29}},{x,0}}.
    return.
  {label,359}.
    {move,{literal,{k30}},{x,0}}.
    return.
  {label,360}.
    {move,{atom,ok},{x,0}}.
    return.


{function, infer_relops, 1, 362}.
  {label,361}.
    {line,[{location,"beam_validator_SUITE.erl",1035}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,infer_relops},1}.
  {label,362}.
    {allocate,0,0}.
    {move,{integer,3},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",1036}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {call,1,{f,455}}. % '-infer_relops/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{integer,7},{x,1}}.
    {move,{integer,4},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",1037}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {call,1,{f,450}}. % '-infer_relops/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, infer_relops_1, 1, 364}.
  {label,363}.
    {line,[{location,"beam_validator_SUITE.erl",1040}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,infer_relops_1},1}.
  {label,364}.
    {test,is_ge,{f,366},[{x,0},{integer,0}]}.
    {allocate,2,1}.
    {move,{x,0},{y,1}}.
    {bif,'<',
         {f,0},
         [{tr,{x,0},
              {t_union,{t_atom,any},
                       {t_list,any,any},
                       {t_number,{0,'+inf'}},
                       {t_tuple,0,false,#{}},
                       other}},
          {integer,4}],
         {y,0}}.
    {line,[{location,"beam_validator_SUITE.erl",1043}]}.
    {call,1,{f,432}}. % id/1
    {test,is_eq_exact,{f,365},[{y,0},{atom,true}]}.
    {move,{y,1},{x,1}}.
    {move,{atom,true},{x,0}}.
    {call_last,2,{f,368},2}. % infer_relops_true/2
  {label,365}.
    {move,{y,1},{x,1}}.
    {move,{atom,false},{x,0}}.
    {call_last,2,{f,370},2}. % infer_relops_false/2
  {label,366}.
    {line,[{location,"beam_validator_SUITE.erl",1041}]}.
    {badmatch,{atom,false}}.


{function, infer_relops_true, 2, 368}.
  {label,367}.
    {line,[{location,"beam_validator_SUITE.erl",1049}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,infer_relops_true},2}.
  {label,368}.
    {'%',{var_info,{x,0},[{type,{t_atom,[true]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_number,{0,4}}}]}}.
    {move,{atom,lt},{x,0}}.
    return.


{function, infer_relops_false, 2, 370}.
  {label,369}.
    {line,[{location,"beam_validator_SUITE.erl",1050}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,infer_relops_false},2}.
  {label,370}.
    {'%',{var_info,{x,0},[{type,{t_atom,[false]}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_union,{t_atom,any},
                                   {t_list,any,any},
                                   {t_number,{4,'+inf'}},
                                   {t_tuple,0,false,#{}},
                                   other}}]}}.
    {move,{atom,ge},{x,0}}.
    return.


{function, not_equal_inference, 1, 372}.
  {label,371}.
    {line,[{location,"beam_validator_SUITE.erl",1053}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,not_equal_inference},1}.
  {label,372}.
    {allocate,1,0}.
    {'catch',{y,0},{f,373}}.
    {move,{literal,[0]},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",1054}]}.
    {call,1,{f,432}}. % id/1
    {call,1,{f,376}}. % not_equal_inference_1/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,373}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,374},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,374},[{x,1},2,{atom,function_clause}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,374}.
    {line,[{scope,[0]},{location,"beam_validator_SUITE.erl",1054}]}.
    {badmatch,{x,0}}.


{function, not_equal_inference_1, 1, 376}.
  {label,375}.
    {line,[{location,"beam_validator_SUITE.erl",1057}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,not_equal_inference_1},1}.
  {label,376}.
    {jump,{f,375}}.


{function, bad_bin_unit, 1, 378}.
  {label,377}.
    {line,[{location,"beam_validator_SUITE.erl",1060}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,bad_bin_unit},1}.
  {label,378}.
    {allocate,1,0}.
    {'catch',{y,0},{f,379}}.
    {move,{literal,<<1:1>>},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",1061}]}.
    {call,1,{f,382}}. % bad_bin_unit_1/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,379}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,380},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,380},[{x,1},2,{atom,function_clause}]}.
    {line,[{scope,[1,2]},{location,"beam_validator_SUITE.erl",1062}]}.
    {call,0,{f,391}}. % bad_bin_unit_2/0
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,380}.
    {line,[{scope,[0]},{location,"beam_validator_SUITE.erl",1061}]}.
    {badmatch,{x,0}}.


{function, bad_bin_unit_1, 1, 382}.
  {label,381}.
    {line,[{location,"beam_validator_SUITE.erl",1065}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,bad_bin_unit_1},1}.
  {label,382}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,1,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_create_bin,{f,384},
                   2,2,8,
                   {x,2},
                   {list,[{atom,integer},1,1,nil,{atom,ok},{integer,8}]}}.
    {put_tuple2,{x,2},{list,[{x,2}]}}.
    {test,is_lt,
          {f,383},
          [{tr,{x,2},{t_tuple,1,true,#{1 => {t_bitstring,8,false}}}},
           {atom,ok}]}.
    {move,{atom,true},{x,2}}.
    {jump,{f,385}}.
  {label,383}.
    {move,{integer,1},{x,2}}.
    {jump,{f,385}}.
  {label,384}.
    {move,{atom,bad_size},{x,2}}.
  {label,385}.
    {test,bs_get_integer2,
          {f,387},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},
               {t_union,{t_atom,[bad_size,true]},
                        none,
                        {t_integer,{1,1}},
                        none,none}},
           1,
           {field_flags,[{anno,[1065,{file,"beam_validator_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,387},{x,0},{commands,[{ensure_exactly,0}]}}.
    {allocate,2,3}.
    {move,{x,2},{y,0}}.
    {'try',{y,1},{f,386}}.
    {line,[{scope,[3]},{location,"beam_validator_SUITE.erl",1067}]}.
    {call,0,{f,389}}. % bad_bin_unit_1_a/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {try_end,{y,1}}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,448},2}. % '-bad_bin_unit_1/1-after$^0/0-0-'/1
  {label,386}.
    {try_case,{y,1}}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,448},2}. % '-bad_bin_unit_1/1-after$^0/0-0-'/1
  {label,387}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,381}}.


{function, bad_bin_unit_1_a, 0, 389}.
  {label,388}.
    {line,[{location,"beam_validator_SUITE.erl",1088}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,bad_bin_unit_1_a},0}.
  {label,389}.
    {move,{atom,ok},{x,0}}.
    return.


{function, bad_bin_unit_2, 0, 391}.
  {label,390}.
    {line,[{location,"beam_validator_SUITE.erl",1091}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,bad_bin_unit_2},0}.
  {label,391}.
    {move,{literal,<<>>},{x,0}}.
    {call_only,1,{f,438}}. % '-bad_bin_unit_2/0-lc$^0/1-0-'/1


{function, singleton_inference, 1, 393}.
  {label,392}.
    {line,[{location,"beam_validator_SUITE.erl",1100}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,singleton_inference},1}.
  {label,393}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{atom,data_dir},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",1103}]}.
    {call_ext,2,{extfunc,proplists,get_value,2}}.
    {move,{literal,"singleton_inference.erl"},{x,1}}.
    {line,[{location,"beam_validator_SUITE.erl",1104}]}.
    {call_ext,2,{extfunc,filename,join,2}}.
    {move,{literal,[no_copt,no_bool_opt,no_ssa_opt]},{x,1}}.
    {line,[{location,"beam_validator_SUITE.erl",1106}]}.
    {call_ext,2,{extfunc,compile,file,2}}.
    {test,is_tagged_tuple,{f,395},[{x,0},2,{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,395},[{x,1},{atom,singleton_inference}]}.
    {line,[{location,"beam_validator_SUITE.erl",1108}]}.
    {call_ext,0,{extfunc,singleton_inference,test,0}}.
    {test,is_eq_exact,{f,394},[{x,0},{atom,ok}]}.
    {deallocate,0}.
    return.
  {label,394}.
    {badmatch,{x,0}}.
  {label,395}.
    {line,[{location,"beam_validator_SUITE.erl",1106}]}.
    {badmatch,{x,0}}.


{function, inert_update_type, 1, 397}.
  {label,396}.
    {line,[{location,"beam_validator_SUITE.erl",1114}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,inert_update_type},1}.
  {label,397}.
    {allocate,0,0}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",1115}]}.
    {call,1,{f,432}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{literal,<<"string">>},{x,0}}.
    {call_last,2,{f,399},0}. % hello/2


{function, hello, 2, 399}.
  {label,398}.
    {line,[{location,"beam_validator_SUITE.erl",1117}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,hello},2}.
  {label,399}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {test_heap,13,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,1},{list,[{atom,some_atom},{x,1}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_tuple2,{x,0},{list,[{atom,sys_period},{x,0}]}}.
    {put_list,{x,0},{x,1},{x,0}}.
    {call_only,1,{f,401}}. % mike/1


{function, mike, 1, 401}.
  {label,400}.
    {line,[{location,"beam_validator_SUITE.erl",1120}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,mike},1}.
  {label,401}.
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_cons,
         {t_union,none,none,none,
          [{{2,{t_atom,[some_atom]}},
            {t_tuple,2,true,#{1 => {t_atom,[some_atom]}}}},
           {{2,{t_atom,[sys_period]}},
            {t_tuple,2,true,
             #{1 => {t_atom,[sys_period]},
               2 => {t_tuple,2,true,#{1 => {t_bitstring,16,false}}}}}}],
          none},
         nil}}]}}.
    {get_hd,{x,0},{x,0}}.
    {call_only,1,{f,403}}. % joe/1


{function, joe, 1, 403}.
  {label,402}.
    {line,[{location,"beam_validator_SUITE.erl",1122}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,joe},1}.
  {label,403}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_atom,[some_atom]}},
                       {t_tuple,2,true,#{1 => {t_atom,[some_atom]}}}},
                      {{2,{t_atom,[sys_period]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[sys_period]},
                             2 =>
                                 {t_tuple,2,true,
                                     #{1 => {t_bitstring,16,false}}}}}}],
                     none}}]}}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,404},[{x,1},{integer,42}]}.
    {move,{atom,some_atom},{x,0}}.
    return.
  {label,404}.
    {get_tuple_element,{x,0},0,{x,2}}.
    {test,is_eq_exact,
          {f,402},
          [{tr,{x,2},{t_atom,[some_atom,sys_period]}},{atom,sys_period}]}.
    {test_heap,4,2}.
    {get_tuple_element,{x,1},0,{x,0}}.
    {put_tuple2,{x,0},{list,[{integer,41},{integer,42},{x,0}]}}.
    return.


{function, range_inference, 1, 406}.
  {label,405}.
    {line,[{location,"beam_validator_SUITE.erl",1125}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,range_inference},1}.
  {label,406}.
    {allocate,0,0}.
    {move,{literal,<<"a">>},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",1126}]}.
    {call,1,{f,432}}. % id/1
    {call,1,{f,408}}. % range_inference_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",1127}]}.
    {call,1,{f,432}}. % id/1
    {call,1,{f,408}}. % range_inference_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<244,143,191,191>>},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",1128}]}.
    {call,1,{f,432}}. % id/1
    {call_last,1,{f,408},0}. % range_inference_1/1


{function, range_inference_1, 1, 408}.
  {label,407}.
    {line,[{location,"beam_validator_SUITE.erl",1132}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,range_inference_1},1}.
  {label,408}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,407},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_utf8,
          {f,410},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {field_flags,[{anno,[1132,{file,"beam_validator_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,410},{x,1},{commands,[{ensure_exactly,0}]}}.
    {line,[{location,"beam_validator_SUITE.erl",1133}]}.
    {gc_bif,abs,{f,0},3,[{tr,{x,2},{t_integer,{0,1114111}}}],{x,0}}.
    {gc_bif,'-',
            {f,0},
            3,
            [{integer,9223372036854775807},{tr,{x,0},{t_integer,{0,1114111}}}],
            {x,0}}.
    {test,is_ge,
          {f,409},
          [{tr,{x,2},{t_integer,{0,1114111}}},
           {tr,{x,0},{t_integer,{9223372036853661696,9223372036854775807}}}]}.
    {test,is_eq_exact,
          {f,411},
          [{tr,{x,0},{t_integer,{9223372036853661696,9223372036854775807}}},
           {integer,-2147483648}]}.
  {label,409}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,410}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,407}}.
  {label,411}.
    {case_end,{x,0}}.


{function, bif_inference, 1, 413}.
  {label,412}.
    {line,[{location,"beam_validator_SUITE.erl",1142}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,bif_inference},1}.
  {label,413}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",1143}]}.
    {call,1,{f,432}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{literal,<<>>},{x,0}}.
    {call,1,{f,432}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {call,2,{f,421}}. % bif_inference_is_bitstring/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,419},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{atom,a},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",1144}]}.
    {call,1,{f,432}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{atom,a},{x,0}}.
    {call,1,{f,432}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {call,2,{f,421}}. % bif_inference_is_bitstring/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,418},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,432},0,0,{x,0},{list,[]}}.
    {line,[{location,"beam_validator_SUITE.erl",1146}]}.
    {call,1,{f,432}}. % id/1
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},1}.
    {make_fun3,{f,432},0,0,{x,1},{list,[]}}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {call,1,{f,432}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {call,2,{f,424}}. % bif_inference_is_function/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,417},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{atom,true},{x,1}}.
    {move,{atom,true},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",1147}]}.
    {call,2,{f,424}}. % bif_inference_is_function/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,416},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,432},0,0,{x,0},{list,[]}}.
    {line,[{location,"beam_validator_SUITE.erl",1148}]}.
    {call,1,{f,432}}. % id/1
    {move,{atom,a},{x,1}}.
    {call,2,{f,424}}. % bif_inference_is_function/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,415},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{atom,a},{x,1}}.
    {move,{atom,a},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",1149}]}.
    {call,2,{f,424}}. % bif_inference_is_function/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,414},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,414}.
    {badmatch,{atom,ok}}.
  {label,415}.
    {line,[{location,"beam_validator_SUITE.erl",1148}]}.
    {badmatch,{atom,ok}}.
  {label,416}.
    {line,[{location,"beam_validator_SUITE.erl",1147}]}.
    {badmatch,{atom,error}}.
  {label,417}.
    {line,[{location,"beam_validator_SUITE.erl",1146}]}.
    {badmatch,{atom,error}}.
  {label,418}.
    {line,[{location,"beam_validator_SUITE.erl",1144}]}.
    {badmatch,{atom,ok}}.
  {label,419}.
    {line,[{location,"beam_validator_SUITE.erl",1143}]}.
    {badmatch,{atom,error}}.


{function, bif_inference_is_bitstring, 2, 421}.
  {label,420}.
    {line,[{location,"beam_validator_SUITE.erl",1153}]}.
    {func_info,{atom,beam_validator_SUITE},
               {atom,bif_inference_is_bitstring},
               2}.
  {label,421}.
    {bif,'=:=',{f,0},[{x,1},{x,0}],{x,1}}.
    {bif,is_bitstring,{f,0},[{x,0}],{x,0}}.
    {test,is_eq_exact,{f,422},[{tr,{x,1},{t_atom,[false,true]}},{atom,true}]}.
    {test,is_eq_exact,{f,422},[{tr,{x,0},{t_atom,[false,true]}},{atom,true}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,422}.
    {move,{atom,error},{x,0}}.
    return.


{function, bif_inference_is_function, 2, 424}.
  {label,423}.
    {line,[{location,"beam_validator_SUITE.erl",1158}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,bif_inference_is_function},2}.
  {label,424}.
    {bif,'=:=',{f,0},[{x,1},{x,0}],{x,1}}.
    {select_val,{x,0},
                {f,428},
                {list,[{atom,false},{f,426},{atom,true},{f,425}]}}.
  {label,425}.
    {move,{atom,true},{x,2}}.
    {jump,{f,427}}.
  {label,426}.
    {move,{atom,ok},{x,2}}.
  {label,427}.
    {bif,'=:=',{f,0},[{tr,{x,2},{t_atom,[ok,true]}},{atom,true}],{x,2}}.
    {jump,{f,429}}.
  {label,428}.
    {move,{atom,false},{x,2}}.
  {label,429}.
    {bif,is_function,{f,0},[{x,0}],{x,0}}.
    {bif,'or',
         {f,0},
         [{tr,{x,2},{t_atom,[false,true]}},{tr,{x,0},{t_atom,[false,true]}}],
         {x,0}}.
    {test,is_eq_exact,{f,430},[{tr,{x,1},{t_atom,[false,true]}},{atom,true}]}.
    {test,is_eq_exact,{f,430},[{tr,{x,0},{t_atom,[false,true]}},{atom,true}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,430}.
    {move,{atom,error},{x,0}}.
    return.


{function, id, 1, 432}.
  {label,431}.
    {line,[{location,"beam_validator_SUITE.erl",1163}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,id},1}.
  {label,432}.
    return.


{function, module_info, 0, 434}.
  {label,433}.
    {line,[]}.
    {func_info,{atom,beam_validator_SUITE},{atom,module_info},0}.
  {label,434}.
    {move,{atom,beam_validator_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 436}.
  {label,435}.
    {line,[]}.
    {func_info,{atom,beam_validator_SUITE},{atom,module_info},1}.
  {label,436}.
    {move,{x,0},{x,1}}.
    {move,{atom,beam_validator_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-bad_bin_unit_2/0-lc$^0/1-0-', 1, 438}.
  {label,437}.
    {line,[{location,"beam_validator_SUITE.erl",1094}]}.
    {func_info,{atom,beam_validator_SUITE},
               {atom,'-bad_bin_unit_2/0-lc$^0/1-0-'},
               1}.
  {label,438}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_create_bin,{f,439},
                   0,1,8,
                   {x,1},
                   {list,[{atom,integer},
                          1,1,nil,
                          {literal,<<0>>},
                          {integer,8}]}}.
    {move,{integer,1},{x,1}}.
    {jump,{f,440}}.
  {label,439}.
    {move,{atom,bad_size},{x,1}}.
  {label,440}.
    {test,bs_get_integer2,
          {f,441},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,1},
               {t_union,{t_atom,[bad_size]},none,{t_integer,{1,1}},none,none}},
           1,
           {field_flags,[{anno,[1092,{file,"beam_validator_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {bs_get_tail,{x,0},{x,2},2}.
    {move,{atom,ok},{x,0}}.
    {call_only,3,{f,446}}. % '-bad_bin_unit_2/0-lc$^1/1-1-'/3
  {label,441}.
    {bs_create_bin,{f,442},
                   0,1,8,
                   {x,1},
                   {list,[{atom,integer},
                          1,1,nil,
                          {literal,<<0>>},
                          {integer,8}]}}.
    {move,{integer,1},{x,1}}.
    {jump,{f,443}}.
  {label,442}.
    {move,{atom,bad_size},{x,1}}.
  {label,443}.
    {test,bs_skip_bits2,
          {f,444},
          [{x,0},
           {x,1},
           1,
           {field_flags,[{anno,[1092,{file,"beam_validator_SUITE.erl"}]},
                         unsigned,big]}]}.
    {call_only,1,{f,438}}. % '-bad_bin_unit_2/0-lc$^0/1-0-'/1
  {label,444}.
    {move,nil,{x,0}}.
    return.


{function, '-bad_bin_unit_2/0-lc$^1/1-1-', 3, 446}.
  {label,445}.
    {line,[{location,"beam_validator_SUITE.erl",1095}]}.
    {func_info,{atom,beam_validator_SUITE},
               {atom,'-bad_bin_unit_2/0-lc$^1/1-1-'},
               3}.
  {label,446}.
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,1}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,1,false}}]}}.
    {move,{literal,{bad_generator,ok}},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bad_bin_unit_1/1-after$^0/0-0-', 1, 448}.
  {label,447}.
    {line,[{location,"beam_validator_SUITE.erl",1066}]}.
    {func_info,{atom,beam_validator_SUITE},
               {atom,'-bad_bin_unit_1/1-after$^0/0-0-'},
               1}.
  {label,448}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,1}}}]}}.
    {bif,'not',{f,0},[{atom,ok}],{x,0}}.
    return.


{function, '-infer_relops/1-lc$^1/1-1-', 1, 450}.
  {label,449}.
    {line,[{location,"beam_validator_SUITE.erl",1037}]}.
    {func_info,{atom,beam_validator_SUITE},
               {atom,'-infer_relops/1-lc$^1/1-1-'},
               1}.
  {label,450}.
    {test,is_nonempty_list,{f,451},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{x,0},{y,0}}.
    {call,1,{f,364}}. % infer_relops_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ge,lt]}}]}}.
    {test,is_eq_exact,{f,453},[{tr,{x,0},{t_atom,[ge,lt]}},{atom,ge}]}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,450},1}. % '-infer_relops/1-lc$^1/1-1-'/1
  {label,451}.
    {test,is_nil,{f,452},[{x,0}]}.
    return.
  {label,452}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,453}.
    {badmatch,{atom,lt}}.


{function, '-infer_relops/1-lc$^0/1-0-', 1, 455}.
  {label,454}.
    {line,[{location,"beam_validator_SUITE.erl",1036}]}.
    {func_info,{atom,beam_validator_SUITE},
               {atom,'-infer_relops/1-lc$^0/1-0-'},
               1}.
  {label,455}.
    {test,is_nonempty_list,{f,456},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{x,0},{y,0}}.
    {call,1,{f,364}}. % infer_relops_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ge,lt]}}]}}.
    {test,is_eq_exact,{f,458},[{tr,{x,0},{t_atom,[ge,lt]}},{atom,lt}]}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,455},1}. % '-infer_relops/1-lc$^0/1-0-'/1
  {label,456}.
    {test,is_nil,{f,457},[{x,0}]}.
    return.
  {label,457}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,458}.
    {badmatch,{atom,ge}}.


{function, '-beam_val/1-lc$^1/1-1-', 1, 460}.
  {label,459}.
    {line,[{location,"beam_validator_SUITE.erl",905}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,'-beam_val/1-lc$^1/1-1-'},1}.
  {label,460}.
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_nonempty_list,{f,461},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{x,0},{y,0}}.
    {line,[{location,"beam_validator_SUITE.erl",904}]}.
    {call_ext,1,{extfunc,beam_validator,format_error,1}}.
    {call_ext,1,{extfunc,io,put_chars,1}}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,460},1}. % '-beam_val/1-lc$^1/1-1-'/1
  {label,461}.
    return.


{function, '-beam_val/1-lc$^0/1-0-', 1, 463}.
  {label,462}.
    {line,[{location,"beam_validator_SUITE.erl",903}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,'-beam_val/1-lc$^0/1-0-'},1}.
  {label,463}.
    {test,is_nonempty_list,{f,465},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tuple,{f,464},[{x,1}]}.
    {test,test_arity,{f,464},[{x,1},3]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_eq_exact,{f,464},[{x,2},{atom,beam_validator}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,463}}. % '-beam_val/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,464}.
    {call_only,1,{f,463}}. % '-beam_val/1-lc$^0/1-0-'/1
  {label,465}.
    {test,is_nil,{f,466},[{x,0}]}.
    return.
  {label,466}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-do_val/2-lc$^1/1-1-', 1, 468}.
  {label,467}.
    {line,[{location,"beam_validator_SUITE.erl",894}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,'-do_val/2-lc$^1/1-1-'},1}.
  {label,468}.
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_nonempty_list,{f,469},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{x,0},{y,0}}.
    {line,[{location,"beam_validator_SUITE.erl",893}]}.
    {call_ext,1,{extfunc,beam_validator,format_error,1}}.
    {call_ext,1,{extfunc,io,put_chars,1}}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,468},1}. % '-do_val/2-lc$^1/1-1-'/1
  {label,469}.
    return.


{function, '-do_val/2-lc$^0/1-0-', 1, 471}.
  {label,470}.
    {line,[{location,"beam_validator_SUITE.erl",892}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,'-do_val/2-lc$^0/1-0-'},1}.
  {label,471}.
    {test,is_nonempty_list,{f,473},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tuple,{f,472},[{x,1}]}.
    {test,test_arity,{f,472},[{x,1},3]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_eq_exact,{f,472},[{x,2},{atom,beam_validator}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,471}}. % '-do_val/2-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,472}.
    {call_only,1,{f,471}}. % '-do_val/2-lc$^0/1-0-'/1
  {label,473}.
    {test,is_nil,{f,474},[{x,0}]}.
    return.
  {label,474}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-transform_is/2-lc$^0/1-0-', 2, 476}.
  {label,475}.
    {line,[{location,"beam_validator_SUITE.erl",878}]}.
    {func_info,{atom,beam_validator_SUITE},
               {atom,'-transform_is/2-lc$^0/1-0-'},
               2}.
  {label,476}.
    {'%',{var_info,{x,1},[{type,{t_fun,1,any,{t_list,any,nil}}}]}}.
    {test,is_nonempty_list,{f,477},[{x,0}]}.
    {allocate,2,2}.
    {move,{x,1},{y,1}}.
    {get_list,{x,0},{x,1},{y,0}}.
    {move,{y,1},{x,0}}.
    {call,2,{f,259}}. % transform_is_1/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,5,true,
                                   #{1 => {t_atom,[function]},
                                     5 => {t_list,any,nil}}}}]}}.
    {move,{y,0},{x,2}}.
    {move,{y,1},{x,1}}.
    {move,{x,0},{y,1}}.
    {trim,1,1}.
    {move,{x,2},{x,0}}.
    {call,2,{f,476}}. % '-transform_is/2-lc$^0/1-0-'/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,5,true,
                         #{1 => {t_atom,[function]},5 => {t_list,any,nil}}},
                     nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,477}.
    {test,is_nil,{f,478},[{x,0}]}.
    return.
  {label,478}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-transform_i/2-fun-1-', 2, 480}.
  {label,479}.
    {line,[{location,"beam_validator_SUITE.erl",875}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,'-transform_i/2-fun-1-'},2}.
  {label,480}.
    {'%',{var_info,{x,1},[{type,{t_fun,1,any,any}}]}}.
    {call_only,2,{f,482}}. % '-transform_i/2-lc$^0/1-0-'/2


{function, '-transform_i/2-lc$^0/1-0-', 2, 482}.
  {label,481}.
    {line,[{location,"beam_validator_SUITE.erl",875}]}.
    {func_info,{atom,beam_validator_SUITE},
               {atom,'-transform_i/2-lc$^0/1-0-'},
               2}.
  {label,482}.
    {'%',{var_info,{x,1},[{type,{t_fun,1,any,any}}]}}.
    {test,is_nonempty_list,{f,483},[{x,0}]}.
    {allocate,2,2}.
    {move,{x,1},{y,1}}.
    {get_list,{x,0},{x,0},{y,0}}.
    {call_fun2,{atom,safe},1,{tr,{x,1},{t_fun,1,any,any}}}.
    {move,{y,0},{x,2}}.
    {move,{y,1},{x,1}}.
    {move,{x,0},{y,1}}.
    {trim,1,1}.
    {move,{x,2},{x,0}}.
    {call,2,{f,482}}. % '-transform_i/2-lc$^0/1-0-'/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,483}.
    {test,is_nil,{f,484},[{x,0}]}.
    return.
  {label,484}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-transform_remove/2-fun-1-', 2, 486}.
  {label,485}.
    {line,[{location,"beam_validator_SUITE.erl",872}]}.
    {func_info,{atom,beam_validator_SUITE},
               {atom,'-transform_remove/2-fun-1-'},
               2}.
  {label,486}.
    {'%',{var_info,{x,1},[{type,{t_fun,1,any,{t_atom,[false,true]}}}]}}.
    {call_only,2,{f,488}}. % '-transform_remove/2-lc$^0/1-0-'/2


{function, '-transform_remove/2-lc$^0/1-0-', 2, 488}.
  {label,487}.
    {line,[{location,"beam_validator_SUITE.erl",872}]}.
    {func_info,{atom,beam_validator_SUITE},
               {atom,'-transform_remove/2-lc$^0/1-0-'},
               2}.
  {label,488}.
    {'%',{var_info,{x,1},[{type,{t_fun,1,any,{t_atom,[false,true]}}}]}}.
    {test,is_nonempty_list,{f,490},[{x,0}]}.
    {allocate,3,2}.
    {move,{x,1},{y,2}}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{y,1},{x,0}}.
    {call_fun2,{atom,safe},1,{tr,{x,1},{t_fun,1,any,{t_atom,[false,true]}}}}.
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,489},[{x,0},{atom,true}]}.
    {move,{y,2},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,488},3}. % '-transform_remove/2-lc$^0/1-0-'/2
  {label,489}.
    {move,{y,2},{x,1}}.
    {move,{y,0},{x,0}}.
    {move,{y,1},{y,2}}.
    {trim,2,1}.
    {call,2,{f,488}}. % '-transform_remove/2-lc$^0/1-0-'/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,490}.
    {test,is_nil,{f,491},[{x,0}]}.
    return.
  {label,491}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-aliased_types_3/1-lc$^0/1-0-', 1, 493}.
  {label,492}.
    {line,[{location,"beam_validator_SUITE.erl",621}]}.
    {func_info,{atom,beam_validator_SUITE},
               {atom,'-aliased_types_3/1-lc$^0/1-0-'},
               1}.
  {label,493}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[gaffel,gurka]},nil}}]}}.
    {test,is_nonempty_list,{f,494},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,1,{f,493}}. % '-aliased_types_3/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[gaffel,gurka]},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,494}.
    return.


{function, '-remove_bs_save/1-fun-0-', 1, 496}.
  {label,495}.
    {line,[{location,"beam_validator_SUITE.erl",485}]}.
    {func_info,{atom,beam_validator_SUITE},
               {atom,'-remove_bs_save/1-fun-0-'},
               1}.
  {label,496}.
    {test,is_tagged_tuple,{f,497},[{x,0},3,{atom,bs_save2}]}.
    {move,{atom,true},{x,0}}.
    return.
  {label,497}.
    {move,{atom,false},{x,0}}.
    return.


{function, '-remove_bs_start_match/1-fun-0-', 1, 499}.
  {label,498}.
    {line,[{location,"beam_validator_SUITE.erl",480}]}.
    {func_info,{atom,beam_validator_SUITE},
               {atom,'-remove_bs_start_match/1-fun-0-'},
               1}.
  {label,499}.
    {test,is_tagged_tuple,{f,500},[{x,0},6,{atom,test}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {bif,'=:=',{f,0},[{x,0},{atom,bs_start_match2}],{x,0}}.
    return.
  {label,500}.
    {move,{atom,false},{x,0}}.
    return.


{function, '-do_bin_opt/3-lc$^0/1-0-', 1, 502}.
  {label,501}.
    {line,[{location,"beam_validator_SUITE.erl",462}]}.
    {func_info,{atom,beam_validator_SUITE},
               {atom,'-do_bin_opt/3-lc$^0/1-0-'},
               1}.
  {label,502}.
    {test,is_nonempty_list,{f,503},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{x,0},{y,0}}.
    {call,1,{f,124}}. % verify_bin_opt_error/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,502},1}. % '-do_bin_opt/3-lc$^0/1-0-'/1
  {label,503}.
    {test,is_nil,{f,504},[{x,0}]}.
    return.
  {label,504}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
