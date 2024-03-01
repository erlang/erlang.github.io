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
           {unsafe_catch,1},
           {val_dsetel,1},
           {will_succeed,1},
           {xrange,1},
           {yrange,1}]}.

{attributes, []}.

{labels, 491}.


{function, init_per_testcase, 2, 2}.
  {label,1}.
    {line,[{location,"beam_validator_SUITE.erl",50}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,init_per_testcase},2}.
  {label,2}.
    {test,is_atom,{f,1},[{x,0}]}.
    {test,is_list,{f,1},[{x,1}]}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_testcase, 2, 4}.
  {label,3}.
    {line,[{location,"beam_validator_SUITE.erl",53}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,end_per_testcase},2}.
  {label,4}.
    {test,is_atom,{f,3},[{x,0}]}.
    {test,is_list,{f,3},[{x,1}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, suite, 0, 6}.
  {label,5}.
    {line,[{location,"beam_validator_SUITE.erl",56}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,suite},0}.
  {label,6}.
    {move,{literal,[{ct_hooks,[ts_install_cth]},{timetrap,{minutes,10}}]},
          {x,0}}.
    return.


{function, all, 0, 8}.
  {label,7}.
    {line,[{location,"beam_validator_SUITE.erl",60}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,all},0}.
  {label,8}.
    {move,{literal,[{group,p}]},{x,0}}.
    return.


{function, groups, 0, 10}.
  {label,9}.
    {line,[{location,"beam_validator_SUITE.erl",63}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,groups},0}.
  {label,10}.
    {allocate,0,0}.
    {line,[{location,"beam_validator_SUITE.erl",64}]}.
    {call_ext,0,{extfunc,test_lib,parallel,0}}.
    {test_heap,6,1}.
    {put_tuple2,{x,0},
                {list,[{atom,p},
                       {x,0},
                       {literal,[compiler_bug,stupid_but_valid,xrange,yrange,
                                 stack,call_last,merge_undefined,uninit,
                                 unsafe_catch,dead_code,overwrite_catchtag,
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
                                 range_inference]}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {deallocate,0}.
    return.


{function, init_per_suite, 1, 12}.
  {label,11}.
    {line,[{location,"beam_validator_SUITE.erl",85}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,init_per_suite},1}.
  {label,12}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{atom,beam_validator_SUITE},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",86}]}.
    {call_ext,1,{extfunc,test_lib,recompile,1}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, end_per_suite, 1, 14}.
  {label,13}.
    {line,[{location,"beam_validator_SUITE.erl",89}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,end_per_suite},1}.
  {label,14}.
    {move,{atom,ok},{x,0}}.
    return.


{function, init_per_group, 2, 16}.
  {label,15}.
    {line,[{location,"beam_validator_SUITE.erl",92}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,init_per_group},2}.
  {label,16}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_group, 2, 18}.
  {label,17}.
    {line,[{location,"beam_validator_SUITE.erl",95}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,end_per_group},2}.
  {label,18}.
    {move,{x,1},{x,0}}.
    return.


{function, compiler_bug, 1, 20}.
  {label,19}.
    {line,[{location,"beam_validator_SUITE.erl",98}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,compiler_bug},1}.
  {label,20}.
    {test,is_list,{f,19},[{x,0}]}.
    {allocate,1,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{x,1}}.
    {move,{atom,data_dir},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",101}]}.
    {call_ext,2,{extfunc,proplists,get_value,2}}.
    {move,{literal,"compiler_bug"},{x,1}}.
    {line,[{location,"beam_validator_SUITE.erl",102}]}.
    {call_ext,2,{extfunc,filename,join,2}}.
    {move,{x,0},{y,0}}.
    {move,{literal,[from_asm,report_errors,time]},{x,1}}.
    {line,[{location,"beam_validator_SUITE.erl",103}]}.
    {call_ext,2,{extfunc,compile,file,2}}.
    {test,is_eq_exact,{f,22},[{x,0},{atom,error}]}.
    {move,{literal,[from_asm,return_errors,time]},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"beam_validator_SUITE.erl",110}]}.
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
    {line,[{location,"beam_validator_SUITE.erl",107}]}.
    {badmatch,{x,0}}.
  {label,22}.
    {line,[{location,"beam_validator_SUITE.erl",103}]}.
    {badmatch,{x,0}}.


{function, stupid_but_valid, 1, 24}.
  {label,23}.
    {line,[{location,"beam_validator_SUITE.erl",114}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,stupid_but_valid},1}.
  {label,24}.
    {test,is_list,{f,23},[{x,0}]}.
    {allocate,1,0}.
    {'try',{y,0},{f,25}}.
    {move,{atom,nisse},{x,1}}.
    {move,{atom,value},{x,2}}.
    {move,{integer,6},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",116}]}.
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
    {line,[{location,"beam_validator_SUITE.erl",123}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,xrange},1}.
  {label,28}.
    {test,is_list,{f,27},[{x,0}]}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{atom,xrange},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",124}]}.
    {call,2,{f,264}}. % do_val/2
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
    {line,[{location,"beam_validator_SUITE.erl",125}]}.
    {badmatch,{x,0}}.


{function, yrange, 1, 31}.
  {label,30}.
    {line,[{location,"beam_validator_SUITE.erl",137}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,yrange},1}.
  {label,31}.
    {test,is_list,{f,30},[{x,0}]}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{atom,yrange},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",138}]}.
    {call,2,{f,264}}. % do_val/2
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
    {line,[{location,"beam_validator_SUITE.erl",139}]}.
    {badmatch,{x,0}}.


{function, stack, 1, 34}.
  {label,33}.
    {line,[{location,"beam_validator_SUITE.erl",152}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,stack},1}.
  {label,34}.
    {test,is_list,{f,33},[{x,0}]}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{atom,stack},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",153}]}.
    {call,2,{f,264}}. % do_val/2
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
    {line,[{location,"beam_validator_SUITE.erl",154}]}.
    {badmatch,{x,0}}.


{function, call_last, 1, 37}.
  {label,36}.
    {line,[{location,"beam_validator_SUITE.erl",164}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,call_last},1}.
  {label,37}.
    {test,is_list,{f,36},[{x,0}]}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{atom,call_last},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",165}]}.
    {call,2,{f,264}}. % do_val/2
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
    {line,[{location,"beam_validator_SUITE.erl",166}]}.
    {badmatch,{x,0}}.


{function, call_without_stack, 1, 40}.
  {label,39}.
    {line,[{location,"beam_validator_SUITE.erl",176}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,call_without_stack},1}.
  {label,40}.
    {test,is_list,{f,39},[{x,0}]}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{atom,call_without_stack},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",177}]}.
    {call,2,{f,264}}. % do_val/2
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
    {line,[{location,"beam_validator_SUITE.erl",178}]}.
    {badmatch,{x,0}}.


{function, merge_undefined, 1, 43}.
  {label,42}.
    {line,[{location,"beam_validator_SUITE.erl",184}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,merge_undefined},1}.
  {label,43}.
    {test,is_list,{f,42},[{x,0}]}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{atom,merge_undefined},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",185}]}.
    {call,2,{f,264}}. % do_val/2
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
    {line,[{location,"beam_validator_SUITE.erl",186}]}.
    {badmatch,{x,0}}.


{function, uninit, 1, 46}.
  {label,45}.
    {line,[{location,"beam_validator_SUITE.erl",198}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,uninit},1}.
  {label,46}.
    {test,is_list,{f,45},[{x,0}]}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{atom,uninit},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",199}]}.
    {call,2,{f,264}}. % do_val/2
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
    {line,[{location,"beam_validator_SUITE.erl",200}]}.
    {badmatch,{x,0}}.


{function, unsafe_catch, 1, 49}.
  {label,48}.
    {line,[{location,"beam_validator_SUITE.erl",210}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,unsafe_catch},1}.
  {label,49}.
    {test,is_list,{f,48},[{x,0}]}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{atom,unsafe_catch},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",211}]}.
    {call,2,{f,264}}. % do_val/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
        {f,50},
        [{tr,{x,0},{t_list,any,nil}},
         {literal,
             [{{t,small,2},
               {{bs_put_integer,
                    {f,0},
                    {integer,16},
                    1,
                    {field_flags,[unsigned,big]},
                    {y,0}},
                21,
                {unassigned,{y,0}}}}]}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,50}.
    {line,[{location,"beam_validator_SUITE.erl",212}]}.
    {badmatch,{x,0}}.


{function, dead_code, 1, 52}.
  {label,51}.
    {line,[{location,"beam_validator_SUITE.erl",219}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,dead_code},1}.
  {label,52}.
    {test,is_list,{f,51},[{x,0}]}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{atom,dead_code},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",220}]}.
    {call,2,{f,264}}. % do_val/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_nil,{f,53},[{tr,{x,0},{t_list,any,nil}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,53}.
    {badmatch,{x,0}}.


{function, overwrite_catchtag, 1, 55}.
  {label,54}.
    {line,[{location,"beam_validator_SUITE.erl",223}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,overwrite_catchtag},1}.
  {label,55}.
    {test,is_list,{f,54},[{x,0}]}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{atom,overwrite_catchtag},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",224}]}.
    {call,2,{f,264}}. % do_val/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_nonempty_list,{f,56},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_tuple,{f,56},[{x,1}]}.
    {test,test_arity,{f,56},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_eq_exact,{f,56},[{x,3},{literal,{overwrite_catchtag,foo,1}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tuple,{f,56},[{x,1}]}.
    {test,test_arity,{f,56},[{x,1},3]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_eq_exact,{f,56},[{x,3},{literal,{move,{x,0},{y,0}}}]}.
    {get_tuple_element,{x,1},1,{x,3}}.
    {test,is_eq_exact,{f,56},[{x,3},{integer,6}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_tagged_tuple,{f,56},[{x,1},2,{atom,catchtag}]}.
    {test,is_nil,{f,56},[{tr,{x,2},{t_list,any,nil}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,56}.
    {line,[{location,"beam_validator_SUITE.erl",225}]}.
    {badmatch,{x,0}}.


{function, overwrite_trytag, 1, 58}.
  {label,57}.
    {line,[{location,"beam_validator_SUITE.erl",229}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,overwrite_trytag},1}.
  {label,58}.
    {test,is_list,{f,57},[{x,0}]}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{atom,overwrite_trytag},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",230}]}.
    {call,2,{f,264}}. % do_val/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_nonempty_list,{f,59},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_tuple,{f,59},[{x,1}]}.
    {test,test_arity,{f,59},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_eq_exact,{f,59},[{x,3},{literal,{overwrite_trytag,foo,1}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tuple,{f,59},[{x,1}]}.
    {test,test_arity,{f,59},[{x,1},3]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_eq_exact,{f,59},[{x,3},{literal,{init_yregs,{list,[{y,2}]}}}]}.
    {get_tuple_element,{x,1},1,{x,3}}.
    {test,is_eq_exact,{f,59},[{x,3},{integer,9}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_tagged_tuple,{f,59},[{x,1},2,{atom,trytag}]}.
    {test,is_nil,{f,59},[{tr,{x,2},{t_list,any,nil}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,59}.
    {line,[{location,"beam_validator_SUITE.erl",231}]}.
    {badmatch,{x,0}}.


{function, accessing_tags, 1, 61}.
  {label,60}.
    {line,[{location,"beam_validator_SUITE.erl",235}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,accessing_tags},1}.
  {label,61}.
    {test,is_list,{f,60},[{x,0}]}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{atom,accessing_tags},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",236}]}.
    {call,2,{f,264}}. % do_val/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_nonempty_list,{f,62},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_tuple,{f,62},[{x,1}]}.
    {test,test_arity,{f,62},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_eq_exact,{f,62},[{x,3},{literal,{accessing_tags,bar,1}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tuple,{f,62},[{x,1}]}.
    {test,test_arity,{f,62},[{x,1},3]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_eq_exact,{f,62},[{x,3},{literal,{move,{y,0},{x,0}}}]}.
    {get_tuple_element,{x,1},1,{x,3}}.
    {test,is_eq_exact,{f,62},[{x,3},{integer,6}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_tagged_tuple,{f,62},[{x,1},2,{atom,trytag}]}.
    {test,is_nonempty_list,{f,62},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tuple,{f,62},[{x,1}]}.
    {test,test_arity,{f,62},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_eq_exact,{f,62},[{x,3},{literal,{accessing_tags,foo,1}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tuple,{f,62},[{x,1}]}.
    {test,test_arity,{f,62},[{x,1},3]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_eq_exact,{f,62},[{x,3},{literal,{move,{y,0},{x,0}}}]}.
    {get_tuple_element,{x,1},1,{x,3}}.
    {test,is_eq_exact,{f,62},[{x,3},{integer,6}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_tagged_tuple,{f,62},[{x,1},2,{atom,catchtag}]}.
    {test,is_nil,{f,62},[{tr,{x,2},{t_list,any,nil}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,62}.
    {line,[{location,"beam_validator_SUITE.erl",237}]}.
    {badmatch,{x,0}}.


{function, bad_catch_try, 1, 64}.
  {label,63}.
    {line,[{location,"beam_validator_SUITE.erl",243}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,bad_catch_try},1}.
  {label,64}.
    {test,is_list,{f,63},[{x,0}]}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{atom,bad_catch_try},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",244}]}.
    {call,2,{f,264}}. % do_val/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,65},
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
  {label,65}.
    {line,[{location,"beam_validator_SUITE.erl",245}]}.
    {badmatch,{x,0}}.


{function, cons_guard, 1, 67}.
  {label,66}.
    {line,[{location,"beam_validator_SUITE.erl",262}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,cons_guard},1}.
  {label,67}.
    {test,is_list,{f,66},[{x,0}]}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{atom,cons},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",263}]}.
    {call,2,{f,264}}. % do_val/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,68},
          [{tr,{x,0},{t_list,any,nil}},
           {literal,[{{cons,foo,1},
                      {{get_list,{x,0},{x,1},{x,2}},
                       5,
                       {bad_type,{needed,{t_cons,any,any}},{actual,any}}}}]}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,68}.
    {line,[{location,"beam_validator_SUITE.erl",264}]}.
    {badmatch,{x,0}}.


{function, freg_range, 1, 70}.
  {label,69}.
    {line,[{location,"beam_validator_SUITE.erl",270}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,freg_range},1}.
  {label,70}.
    {test,is_list,{f,69},[{x,0}]}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{atom,freg_range},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",271}]}.
    {call,2,{f,264}}. % do_val/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,71},
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
  {label,71}.
    {line,[{location,"beam_validator_SUITE.erl",272}]}.
    {badmatch,{x,0}}.


{function, freg_uninit, 1, 73}.
  {label,72}.
    {line,[{location,"beam_validator_SUITE.erl",290}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,freg_uninit},1}.
  {label,73}.
    {test,is_list,{f,72},[{x,0}]}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{atom,freg_uninit},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",291}]}.
    {call,2,{f,264}}. % do_val/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,74},
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
  {label,74}.
    {line,[{location,"beam_validator_SUITE.erl",292}]}.
    {badmatch,{x,0}}.


{function, bad_bin_match, 1, 76}.
  {label,75}.
    {line,[{location,"beam_validator_SUITE.erl",302}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,bad_bin_match},1}.
  {label,76}.
    {test,is_list,{f,75},[{x,0}]}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{atom,bad_bin_match},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",304}]}.
    {call,2,{f,264}}. % do_val/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,77},
          [{tr,{x,0},{t_list,any,nil}},
           {literal,[{{t,t,1},{return,5,{match_context,{x,0}}}}]}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,77}.
    {line,[{location,"beam_validator_SUITE.erl",303}]}.
    {badmatch,{x,0}}.


{function, bad_dsetel, 1, 79}.
  {label,78}.
    {line,[{location,"beam_validator_SUITE.erl",307}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,bad_dsetel},1}.
  {label,79}.
    {test,is_list,{f,78},[{x,0}]}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{atom,bad_dsetel},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",308}]}.
    {call,2,{f,264}}. % do_val/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,80},
          [{tr,{x,0},{t_list,any,nil}},
           {literal,[{{t,t,1},
                      {{set_tuple_element,{x,1},{x,0},1},
                       17,illegal_context_for_set_tuple_element}}]}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,80}.
    {line,[{location,"beam_validator_SUITE.erl",309}]}.
    {badmatch,{x,0}}.


{function, state_after_fault_in_catch, 1, 82}.
  {label,81}.
    {line,[{location,"beam_validator_SUITE.erl",315}]}.
    {func_info,{atom,beam_validator_SUITE},
               {atom,state_after_fault_in_catch},
               1}.
  {label,82}.
    {test,is_list,{f,81},[{x,0}]}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{atom,state_after_fault_in_catch},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",316}]}.
    {call,2,{f,264}}. % do_val/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,83},
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
  {label,83}.
    {line,[{location,"beam_validator_SUITE.erl",317}]}.
    {badmatch,{x,0}}.


{function, no_exception_in_catch, 1, 85}.
  {label,84}.
    {line,[{location,"beam_validator_SUITE.erl",327}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,no_exception_in_catch},1}.
  {label,85}.
    {test,is_list,{f,84},[{x,0}]}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{atom,no_exception_in_catch},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",328}]}.
    {call,2,{f,264}}. % do_val/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,86},
          [{tr,{x,0},{t_list,any,nil}},
           {literal,[{{no_exception_in_catch,nested_of_1,4},
                      {{try_case_end,{x,0}},
                       152,ambiguous_catch_try_state}}]}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,86}.
    {line,[{location,"beam_validator_SUITE.erl",329}]}.
    {badmatch,{x,0}}.


{function, undef_label, 1, 88}.
  {label,87}.
    {line,[{location,"beam_validator_SUITE.erl",333}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,undef_label},1}.
  {label,88}.
    {test,is_list,{f,87},[{x,0}]}.
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
    {line,[{location,"beam_validator_SUITE.erl",350}]}.
    {call,1,{f,270}}. % beam_val/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,89},
          [{tr,{x,0},{t_list,any,nil}},
           {literal,[{{undef_label,t,1},{undef_labels,"*"}},
                     {{undef_label,x,1},no_entry_label}]}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,89}.
    {line,[{location,"beam_validator_SUITE.erl",351}]}.
    {badmatch,{x,0}}.


{function, illegal_instruction, 1, 91}.
  {label,90}.
    {line,[{location,"beam_validator_SUITE.erl",355}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,illegal_instruction},1}.
  {label,91}.
    {test,is_list,{f,90},[{x,0}]}.
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
    {line,[{location,"beam_validator_SUITE.erl",373}]}.
    {call,1,{f,270}}. % beam_val/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,92},
          [{tr,{x,0},{t_list,any,nil}},
           {literal,[{{illegal_instruction,t,1},
                      {{my_illegal_instruction,{x,0}},4,unknown_instruction}},
                     {{illegal_instruction,x,1},invalid_function_header},
                     {{illegal_instruction,y,0},invalid_function_header}]}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,92}.
    {line,[{location,"beam_validator_SUITE.erl",374}]}.
    {badmatch,{x,0}}.


{function, failing_gc_guard_bif, 1, 94}.
  {label,93}.
    {line,[{location,"beam_validator_SUITE.erl",387}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,failing_gc_guard_bif},1}.
  {label,94}.
    {test,is_list,{f,93},[{x,0}]}.
    {allocate,0,0}.
    {move,{integer,36},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",388}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {call,1,{f,99}}. % process_request/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,97},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,nil,{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",389}]}.
    {call,1,{f,99}}. % process_request/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,96},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{atom,not_a_list},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",390}]}.
    {call,1,{f,99}}. % process_request/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,95},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,95}.
    {badmatch,{atom,ok}}.
  {label,96}.
    {line,[{location,"beam_validator_SUITE.erl",389}]}.
    {badmatch,{atom,ok}}.
  {label,97}.
    {line,[{location,"beam_validator_SUITE.erl",388}]}.
    {badmatch,{atom,error}}.


{function, process_request, 1, 99}.
  {label,98}.
    {line,[{location,"beam_validator_SUITE.erl",393}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,process_request},1}.
  {label,99}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {line,[{location,"beam_validator_SUITE.erl",394}]}.
    {call,1,{f,103}}. % process_request_foo/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false]}}]}}.
    {gc_bif,length,{f,100},0,[{y,0}],{x,0}}.
    {test,is_eq_exact,
          {f,100},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},{integer,36}]}.
    {move,{atom,ok},{x,0}}.
    {jump,{f,101}}.
  {label,100}.
    {move,{atom,error},{x,0}}.
  {label,101}.
    {test_heap,2,1}.
    {bif,self,{f,0},[],{x,1}}.
    {put_list,{x,0},nil,{x,0}}.
    {swap,{x,0},{x,1}}.
    {call_last,2,{f,105},1}. % process_request_bar/2


{function, process_request_foo, 1, 103}.
  {label,102}.
    {line,[{location,"beam_validator_SUITE.erl",405}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,process_request_foo},1}.
  {label,103}.
    {move,{atom,false},{x,0}}.
    return.


{function, process_request_bar, 2, 105}.
  {label,104}.
    {line,[{location,"beam_validator_SUITE.erl",408}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,process_request_bar},2}.
  {label,105}.
    {'%',{var_info,{x,0},[{type,pid}]}}.
    {'%',{var_info,{x,1},[{type,{t_cons,{t_atom,[error,ok]},nil}}]}}.
    {get_list,{x,1},{x,2},{x,3}}.
    {test,is_nil,{f,104},[{tr,{x,3},{t_list,{t_atom,[error,ok]},nil}}]}.
    {move,{x,2},{x,0}}.
    return.


{function, map_field_lists, 1, 107}.
  {label,106}.
    {line,[{location,"beam_validator_SUITE.erl",411}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,map_field_lists},1}.
  {label,107}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{atom,map_field_lists},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",412}]}.
    {call,2,{f,264}}. % do_val/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,108},
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
  {label,108}.
    {line,[{location,"beam_validator_SUITE.erl",413}]}.
    {badmatch,{x,0}}.


{function, cover_bin_opt, 1, 110}.
  {label,109}.
    {line,[{location,"beam_validator_SUITE.erl",424}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,cover_bin_opt},1}.
  {label,110}.
    {allocate_heap,0,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,112},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[error,ok]}}]}}.
    {move,{literal,[beam_utils_SUITE,bs_match_SUITE,bs_bincomp_SUITE,
                    bs_bit_binaries_SUITE,bs_utf_SUITE]},
          {x,1}}.
    {line,[{location,"beam_validator_SUITE.erl",430}]}.
    {call_ext,2,{extfunc,test_lib,p_run,2}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, try_bin_opt, 1, 112}.
  {label,111}.
    {line,[{location,"beam_validator_SUITE.erl",433}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,try_bin_opt},1}.
  {label,112}.
    {allocate,4,1}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{x,0},{y,2}}.
    {'try',{y,3},{f,113}}.
    {line,[{location,"beam_validator_SUITE.erl",435}]}.
    {call,1,{f,115}}. % do_bin_opt/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {try_end,{y,3}}.
    {deallocate,4}.
    return.
  {label,113}.
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
    {line,[{scope,[3]},{location,"beam_validator_SUITE.erl",438}]}.
    {call_ext,2,{extfunc,io,format,2}}.
    {move,{atom,error},{x,0}}.
    {deallocate,0}.
    return.


{function, do_bin_opt, 1, 115}.
  {label,114}.
    {line,[{location,"beam_validator_SUITE.erl",443}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,do_bin_opt},1}.
  {label,115}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {line,[{location,"beam_validator_SUITE.erl",444}]}.
    {call_ext,1,{extfunc,code,which,1}}.
    {move,{literal,[abstract_code]},{x,1}}.
    {line,[{location,"beam_validator_SUITE.erl",447}]}.
    {call_ext,2,{extfunc,beam_lib,chunks,2}}.
    {test,is_tagged_tuple,{f,117},[{x,0},2,{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,117},[{x,1}]}.
    {test,test_arity,{f,117},[{x,1},2]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_nonempty_list,{f,117},[{x,2}]}.
    {get_list,{x,2},{x,3},{x,2}}.
    {test,is_tagged_tuple,{f,117},[{x,3},2,{atom,abstract_code}]}.
    {get_tuple_element,{x,3},1,{x,3}}.
    {test,is_tagged_tuple,{f,117},[{x,3},2,{atom,raw_abstract_v1}]}.
    {test,is_nil,{f,117},[{x,2}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,117},[{x,1},{y,0}]}.
    {get_tuple_element,{x,3},1,{x,0}}.
    {move,{literal,['S']},{x,1}}.
    {line,[{location,"beam_validator_SUITE.erl",448}]}.
    {call_ext,2,{extfunc,compile,forms,2}}.
    {test,is_tagged_tuple,{f,116},[{x,0},3,{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,116},[{x,1},{y,0}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,119},1}. % do_bin_opt/2
  {label,116}.
    {badmatch,{x,0}}.
  {label,117}.
    {line,[{location,"beam_validator_SUITE.erl",445}]}.
    {badmatch,{x,0}}.


{function, do_bin_opt, 2, 119}.
  {label,118}.
    {line,[{location,"beam_validator_SUITE.erl",451}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,do_bin_opt},2}.
  {label,119}.
    {allocate_heap,2,{alloc,[{words,0},{floats,0},{funs,1}]},2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {make_fun3,{f,129},0,0,{x,0},{list,[]}}.
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
    {line,[{location,"beam_validator_SUITE.erl",452}]}.
    {call,3,{f,121}}. % do_bin_opt/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,135},0,0,{x,0},{list,[]}}.
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
    {line,[{location,"beam_validator_SUITE.erl",453}]}.
    {call,3,{f,121}}. % do_bin_opt/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,137},0,0,{x,0},{list,[]}}.
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
    {line,[{location,"beam_validator_SUITE.erl",454}]}.
    {call,3,{f,121}}. % do_bin_opt/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,145},0,0,{x,0},{list,[]}}.
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
    {line,[{location,"beam_validator_SUITE.erl",455}]}.
    {call,3,{f,121}}. % do_bin_opt/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,139},0,0,{x,0},{list,[]}}.
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
    {call_last,3,{f,121},2}. % do_bin_opt/3


{function, do_bin_opt, 3, 121}.
  {label,120}.
    {line,[{location,"beam_validator_SUITE.erl",459}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,do_bin_opt},3}.
  {label,121}.
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
    {line,[{location,"beam_validator_SUITE.erl",460}]}.
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
    {line,[{location,"beam_validator_SUITE.erl",461}]}.
    {call_ext,2,{extfunc,compile,forms,2}}.
    {move,{x,0},{y,0}}.
    {test,is_tuple,{f,125},[{x,0}]}.
    {select_tuple_arity,{tr,{x,0},{t_tuple,0,false,#{}}},
                        {f,125},
                        {list,[3,{f,123},4,{f,122}]}}.
  {label,122}.
    {get_tuple_element,{x,0},0,{x,0}}.
    {test,is_eq_exact,{f,125},[{x,0},{atom,ok}]}.
    {get_tuple_element,{y,0},1,{x,0}}.
    {test,is_eq_exact,{f,125},[{x,0},{y,1}]}.
    {get_tuple_element,{y,0},2,{x,0}}.
    {test,is_binary,{f,125},[{x,0}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,123}.
    {get_tuple_element,{x,0},0,{x,0}}.
    {test,is_eq_exact,{f,125},[{x,0},{atom,error}]}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {line,[{location,"beam_validator_SUITE.erl",467}]}.
    {call_ext,1,{extfunc,erlang,atom_to_list,1}}.
    {get_tuple_element,{y,0},1,{x,1}}.
    {test,is_nonempty_list,{f,124},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,3}}.
    {test,is_tuple,{f,124},[{x,2}]}.
    {test,test_arity,{f,124},[{x,2},2]}.
    {test,is_nil,{f,124},[{x,3}]}.
    {get_tuple_element,{x,2},0,{x,3}}.
    {test,is_eq_exact,
          {f,124},
          [{x,3},{tr,{x,0},{t_list,{t_integer,{0,1114111}},nil}}]}.
    {get_tuple_element,{x,2},1,{x,0}}.
    {trim,2,0}.
    {line,[{location,"beam_validator_SUITE.erl",469}]}.
    {call,1,{f,488}}. % '-do_bin_opt/3-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,124}.
    {line,[{location,"beam_validator_SUITE.erl",468}]}.
    {badmatch,{x,1}}.
  {label,125}.
    {line,[{location,"beam_validator_SUITE.erl",461}]}.
    {case_end,{y,0}}.


{function, verify_bin_opt_error, 1, 127}.
  {label,126}.
    {line,[{location,"beam_validator_SUITE.erl",473}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,verify_bin_opt_error},1}.
  {label,127}.
    {test,is_tagged_tuple,{f,126},[{x,0},2,{atom,beam_validator}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, enable_bin_opt, 1, 129}.
  {label,128}.
    {line,[{location,"beam_validator_SUITE.erl",476}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,enable_bin_opt},1}.
  {label,129}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},1}.
    {make_fun3,{f,131},0,0,{x,1},{list,[]}}.
    {'%',{var_info,{x,1},[{fun_type,{t_list,any,nil}}]}}.
    {swap,{x,0},{x,1}}.
    {call_only,2,{f,260}}. % transform_is/2


{function, enable_bin_opt_body, 1, 131}.
  {label,130}.
    {line,[{location,"beam_validator_SUITE.erl",479}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,enable_bin_opt_body},1}.
  {label,131}.
    {test,is_nonempty_list,{f,133},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_nonempty_list,{f,132},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,3}}.
    {test,is_tagged_tuple,{f,132},[{x,2},2,{atom,'%'}]}.
    {get_tuple_element,{x,2},1,{x,2}}.
    {test,is_tagged_tuple,{f,132},[{x,2},3,{atom,no_bin_opt}]}.
    {move,{x,3},{x,0}}.
    {call_only,1,{f,131}}. % enable_bin_opt_body/1
  {label,132}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {line,[{location,"beam_validator_SUITE.erl",482}]}.
    {call,1,{f,131}}. % enable_bin_opt_body/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,133}.
    {test,is_nil,{f,130},[{x,0}]}.
    return.


{function, remove_bs_start_match, 1, 135}.
  {label,134}.
    {line,[{location,"beam_validator_SUITE.erl",486}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,remove_bs_start_match},1}.
  {label,135}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},1}.
    {make_fun3,{f,485},0,0,{x,1},{list,[]}}.
    {'%',{var_info,{x,1},[{fun_type,{t_atom,[false,true]}}]}}.
    {swap,{x,0},{x,1}}.
    {call_only,2,{f,256}}. % transform_remove/2


{function, remove_bs_save, 1, 137}.
  {label,136}.
    {line,[{location,"beam_validator_SUITE.erl",491}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,remove_bs_save},1}.
  {label,137}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},1}.
    {make_fun3,{f,482},0,0,{x,1},{list,[]}}.
    {'%',{var_info,{x,1},[{fun_type,{t_atom,[false,true]}}]}}.
    {swap,{x,0},{x,1}}.
    {call_only,2,{f,256}}. % transform_remove/2


{function, destroy_save_point, 1, 139}.
  {label,138}.
    {line,[{location,"beam_validator_SUITE.erl",496}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,destroy_save_point},1}.
  {label,139}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},1}.
    {make_fun3,{f,141},0,0,{x,1},{list,[]}}.
    {swap,{x,0},{x,1}}.
    {call_only,2,{f,258}}. % transform_i/2


{function, do_destroy_save_point, 1, 141}.
  {label,140}.
    {line,[{location,"beam_validator_SUITE.erl",499}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,do_destroy_save_point},1}.
  {label,141}.
    {test,is_tuple,{f,143},[{x,0}]}.
    {test,test_arity,{f,143},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {select_val,{x,1},
                {f,143},
                {list,[{atom,bs_restore2},{f,142},{atom,bs_save2},{f,142}]}}.
  {label,142}.
    {test_heap,4,2}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {put_tuple2,{x,0},{list,[{x,1},{x,0},{integer,42}]}}.
    return.
  {label,143}.
    return.


{function, destroy_ctxt, 1, 145}.
  {label,144}.
    {line,[{location,"beam_validator_SUITE.erl",505}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,destroy_ctxt},1}.
  {label,145}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},1}.
    {make_fun3,{f,147},0,0,{x,1},{list,[]}}.
    {swap,{x,0},{x,1}}.
    {call_only,2,{f,258}}. % transform_i/2


{function, do_destroy_ctxt, 1, 147}.
  {label,146}.
    {line,[{location,"beam_validator_SUITE.erl",508}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,do_destroy_ctxt},1}.
  {label,147}.
    {test,is_tuple,{f,152},[{x,0}]}.
    {select_tuple_arity,{tr,{x,0},{t_tuple,0,false,#{}}},
                        {f,152},
                        {list,[2,{f,151},3,{f,148}]}}.
  {label,148}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {get_tuple_element,{x,0},2,{x,3}}.
    {select_val,{x,1},
                {f,152},
                {list,[{atom,bs_restore2},{f,150},{atom,bs_save2},{f,149}]}}.
  {label,149}.
    {allocate,1,4}.
    {move,{x,3},{y,0}}.
    {move,{x,2},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",509}]}.
    {call,1,{f,154}}. % destroy_reg/1
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{2 => {t_number,any}}}}]}}.
    {test_heap,4,1}.
    {put_tuple2,{x,0},{list,[{atom,bs_save2},{x,0},{y,0}]}}.
    {deallocate,1}.
    return.
  {label,150}.
    {allocate,1,4}.
    {move,{x,3},{y,0}}.
    {move,{x,2},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",511}]}.
    {call,1,{f,154}}. % destroy_reg/1
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{2 => {t_number,any}}}}]}}.
    {test_heap,4,1}.
    {put_tuple2,{x,0},{list,[{atom,bs_restore2},{x,0},{y,0}]}}.
    {deallocate,1}.
    return.
  {label,151}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,152},[{x,1},{atom,bs_context_to_binary}]}.
    {allocate,0,1}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",513}]}.
    {call,1,{f,154}}. % destroy_reg/1
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{2 => {t_number,any}}}}]}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bs_context_to_binary},{x,0}]}}.
    {deallocate,0}.
    return.
  {label,152}.
    return.


{function, destroy_reg, 1, 154}.
  {label,153}.
    {line,[{location,"beam_validator_SUITE.erl",517}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,destroy_reg},1}.
  {label,154}.
    {test,is_tuple,{f,153},[{x,0}]}.
    {test,test_arity,{f,153},[{x,0},2]}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {line,[{location,"beam_validator_SUITE.erl",518}]}.
    {call_ext,0,{extfunc,rand,uniform,0}}.
    {get_tuple_element,{y,0},1,{x,1}}.
    {test,is_lt,{f,155},[{x,0},{float,0.6}]}.
    {line,[{location,"beam_validator_SUITE.erl",520}]}.
    {gc_bif,'+',{f,0},2,[{x,1},{integer,1}],{x,0}}.
    {test_heap,3,1}.
    {get_tuple_element,{y,0},0,{x,1}}.
    {put_tuple2,{x,0},{list,[{x,1},{x,0}]}}.
    {deallocate,1}.
    return.
  {label,155}.
    {line,[{location,"beam_validator_SUITE.erl",522}]}.
    {gc_bif,'+',{f,0},2,[{x,1},{integer,1}],{x,0}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,y},{x,0}]}}.
    {deallocate,1}.
    return.


{function, bad_tuples, 1, 157}.
  {label,156}.
    {line,[{location,"beam_validator_SUITE.erl",525}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,bad_tuples},1}.
  {label,157}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{atom,bad_tuples},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",526}]}.
    {call,2,{f,264}}. % do_val/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,158},
          [{tr,{x,0},{t_list,any,nil}},
           {literal,[{{bad_tuples,heap_overflow,1},
                      {{put_tuple2,{x,0},{list,[{atom,ok},{x,0}]}},
                       6,
                       {heap_overflow,{left,2},{wanted,3}}}}]}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,158}.
    {line,[{location,"beam_validator_SUITE.erl",527}]}.
    {badmatch,{x,0}}.


{function, bad_try_catch_nesting, 1, 160}.
  {label,159}.
    {line,[{location,"beam_validator_SUITE.erl",533}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,bad_try_catch_nesting},1}.
  {label,160}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{atom,bad_try_catch_nesting},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",534}]}.
    {call,2,{f,264}}. % do_val/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
        {f,161},
        [{tr,{x,0},{t_list,any,nil}},
         {literal,
             [{{bad_try_catch_nesting,main,2},
               {{'try',{y,2},{f,3}},
                9,
                {bad_try_catch_nesting,{y,2},[{{y,1},{trytag,[5]}}]}}}]}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,161}.
    {line,[{location,"beam_validator_SUITE.erl",535}]}.
    {badmatch,{x,0}}.


{function, receive_stacked, 1, 163}.
  {label,162}.
    {line,[{location,"beam_validator_SUITE.erl",541}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,receive_stacked},1}.
  {label,163}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{x,0},{x,1}}.
    {move,{atom,receive_stacked},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",543}]}.
    {call,2,{f,264}}. % do_val/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_nonempty_list,{f,165},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_tuple,{f,165},[{x,1}]}.
    {test,test_arity,{f,165},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_eq_exact,{f,165},[{x,3},{literal,{receive_stacked,f1,0}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tuple,{f,165},[{x,1}]}.
    {test,test_arity,{f,165},[{x,1},3]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_eq_exact,{f,165},[{x,3},{literal,{loop_rec_end,{f,3}}}]}.
    {get_tuple_element,{x,1},1,{x,3}}.
    {test,is_eq_exact,{f,165},[{x,3},{integer,19}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_tagged_tuple,{f,165},[{x,1},2,{atom,fragile_message_reference}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tagged_tuple,{f,165},[{x,1},2,{atom,y}]}.
    {test,is_nonempty_list,{f,165},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tuple,{f,165},[{x,1}]}.
    {test,test_arity,{f,165},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_eq_exact,{f,165},[{x,3},{literal,{receive_stacked,f2,0}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tuple,{f,165},[{x,1}]}.
    {test,test_arity,{f,165},[{x,1},3]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_eq_exact,{f,165},[{x,3},{literal,{test_heap,3,0}}]}.
    {get_tuple_element,{x,1},1,{x,3}}.
    {test,is_eq_exact,{f,165},[{x,3},{integer,12}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_tagged_tuple,{f,165},[{x,1},2,{atom,fragile_message_reference}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tagged_tuple,{f,165},[{x,1},2,{atom,y}]}.
    {test,is_nonempty_list,{f,165},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tuple,{f,165},[{x,1}]}.
    {test,test_arity,{f,165},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_eq_exact,{f,165},[{x,3},{literal,{receive_stacked,f3,0}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tuple,{f,165},[{x,1}]}.
    {test,test_arity,{f,165},[{x,1},3]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_eq_exact,{f,165},[{x,3},{literal,{test_heap,3,0}}]}.
    {get_tuple_element,{x,1},1,{x,3}}.
    {test,is_eq_exact,{f,165},[{x,3},{integer,12}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_tagged_tuple,{f,165},[{x,1},2,{atom,fragile_message_reference}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tagged_tuple,{f,165},[{x,1},2,{atom,y}]}.
    {test,is_nonempty_list,{f,165},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tuple,{f,165},[{x,1}]}.
    {test,test_arity,{f,165},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_eq_exact,{f,165},[{x,3},{literal,{receive_stacked,f4,0}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tuple,{f,165},[{x,1}]}.
    {test,test_arity,{f,165},[{x,1},3]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_eq_exact,{f,165},[{x,3},{literal,{test_heap,3,0}}]}.
    {get_tuple_element,{x,1},1,{x,3}}.
    {test,is_eq_exact,{f,165},[{x,3},{integer,12}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_tagged_tuple,{f,165},[{x,1},2,{atom,fragile_message_reference}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tagged_tuple,{f,165},[{x,1},2,{atom,y}]}.
    {test,is_nonempty_list,{f,165},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tuple,{f,165},[{x,1}]}.
    {test,test_arity,{f,165},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_eq_exact,{f,165},[{x,3},{literal,{receive_stacked,f5,0}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tuple,{f,165},[{x,1}]}.
    {test,test_arity,{f,165},[{x,1},3]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_eq_exact,{f,165},[{x,3},{literal,{loop_rec_end,{f,23}}}]}.
    {get_tuple_element,{x,1},1,{x,3}}.
    {test,is_eq_exact,{f,165},[{x,3},{integer,23}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_tagged_tuple,{f,165},[{x,1},2,{atom,fragile_message_reference}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tagged_tuple,{f,165},[{x,1},2,{atom,y}]}.
    {test,is_nonempty_list,{f,165},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tuple,{f,165},[{x,1}]}.
    {test,test_arity,{f,165},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_eq_exact,{f,165},[{x,3},{literal,{receive_stacked,f6,0}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tuple,{f,165},[{x,1}]}.
    {test,test_arity,{f,165},[{x,1},3]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_tagged_tuple,{f,165},[{x,3},6,{atom,gc_bif}]}.
    {get_tuple_element,{x,3},1,{x,4}}.
    {test,is_eq_exact,{f,165},[{x,4},{atom,byte_size}]}.
    {get_tuple_element,{x,3},2,{x,4}}.
    {test,is_eq_exact,{f,165},[{x,4},{literal,{f,29}}]}.
    {get_tuple_element,{x,3},3,{x,4}}.
    {test,is_eq_exact,{f,165},[{x,4},{integer,0}]}.
    {get_tuple_element,{x,3},4,{x,4}}.
    {test,is_nonempty_list,{f,165},[{x,4}]}.
    {get_list,{x,4},{x,5},{x,4}}.
    {test,is_tagged_tuple,{f,165},[{x,5},2,{atom,y}]}.
    {test,is_nil,{f,165},[{x,4}]}.
    {get_tuple_element,{x,3},5,{x,3}}.
    {test,is_eq_exact,{f,165},[{x,3},{literal,{x,0}}]}.
    {get_tuple_element,{x,1},1,{x,3}}.
    {test,is_eq_exact,{f,165},[{x,3},{integer,14}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_tagged_tuple,{f,165},[{x,1},2,{atom,fragile_message_reference}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tagged_tuple,{f,165},[{x,1},2,{atom,y}]}.
    {test,is_nonempty_list,{f,165},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tuple,{f,165},[{x,1}]}.
    {test,test_arity,{f,165},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_eq_exact,{f,165},[{x,3},{literal,{receive_stacked,f7,0}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tuple,{f,165},[{x,1}]}.
    {test,test_arity,{f,165},[{x,1},3]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_eq_exact,{f,165},[{x,3},{literal,{loop_rec_end,{f,33}}}]}.
    {get_tuple_element,{x,1},1,{x,3}}.
    {test,is_eq_exact,{f,165},[{x,3},{integer,22}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_tagged_tuple,{f,165},[{x,1},2,{atom,fragile_message_reference}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tagged_tuple,{f,165},[{x,1},2,{atom,y}]}.
    {test,is_nonempty_list,{f,165},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tuple,{f,165},[{x,1}]}.
    {test,test_arity,{f,165},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_eq_exact,{f,165},[{x,3},{literal,{receive_stacked,f8,0}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tuple,{f,165},[{x,1}]}.
    {test,test_arity,{f,165},[{x,1},3]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_eq_exact,{f,165},[{x,3},{literal,{loop_rec_end,{f,38}}}]}.
    {get_tuple_element,{x,1},1,{x,3}}.
    {test,is_eq_exact,{f,165},[{x,3},{integer,22}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_tagged_tuple,{f,165},[{x,1},2,{atom,fragile_message_reference}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tagged_tuple,{f,165},[{x,1},2,{atom,y}]}.
    {test,is_nonempty_list,{f,165},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tuple,{f,165},[{x,1}]}.
    {test,test_arity,{f,165},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_eq_exact,{f,165},[{x,3},{literal,{receive_stacked,m1,0}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tuple,{f,165},[{x,1}]}.
    {test,test_arity,{f,165},[{x,1},3]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_eq_exact,{f,165},[{x,3},{literal,{loop_rec_end,{f,43}}}]}.
    {get_tuple_element,{x,1},1,{x,3}}.
    {test,is_eq_exact,{f,165},[{x,3},{integer,21}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_tagged_tuple,{f,165},[{x,1},2,{atom,fragile_message_reference}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tagged_tuple,{f,165},[{x,1},2,{atom,y}]}.
    {test,is_nonempty_list,{f,165},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tuple,{f,165},[{x,1}]}.
    {test,test_arity,{f,165},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_eq_exact,{f,165},[{x,3},{literal,{receive_stacked,m2,0}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tuple,{f,165},[{x,1}]}.
    {test,test_arity,{f,165},[{x,1},3]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_eq_exact,{f,165},[{x,3},{literal,{loop_rec_end,{f,48}}}]}.
    {get_tuple_element,{x,1},1,{x,3}}.
    {test,is_eq_exact,{f,165},[{x,3},{integer,32}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_tagged_tuple,{f,165},[{x,1},2,{atom,fragile_message_reference}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tagged_tuple,{f,165},[{x,1},2,{atom,y}]}.
    {test,is_nil,{f,165},[{tr,{x,2},{t_list,any,nil}}]}.
    {move,{y,0},{x,1}}.
    {trim,1,0}.
    {move,{atom,data_dir},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",580}]}.
    {call_ext,2,{extfunc,proplists,get_value,2}}.
    {move,{literal,"receive_stacked"},{x,1}}.
    {line,[{location,"beam_validator_SUITE.erl",582}]}.
    {call_ext,2,{extfunc,filename,join,2}}.
    {move,{literal,[binary]},{x,1}}.
    {line,[{location,"beam_validator_SUITE.erl",583}]}.
    {call_ext,2,{extfunc,compile,file,2}}.
    {test,is_tagged_tuple,{f,164},[{x,0},3,{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,164},[{x,1},{atom,receive_stacked}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,164}.
    {badmatch,{x,0}}.
  {label,165}.
    {line,[{location,"beam_validator_SUITE.erl",544}]}.
    {badmatch,{x,0}}.


{function, aliased_types, 1, 167}.
  {label,166}.
    {line,[{location,"beam_validator_SUITE.erl",587}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,aliased_types},1}.
  {label,167}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,5},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",588}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{y,0},{x,1}}.
    {move,{x,0},{y,0}}.
    {line,[{location,"beam_validator_SUITE.erl",589}]}.
    {call,2,{f,174}}. % aliased_types_1/2
    {test,is_eq_exact,{f,172},[{x,0},{integer,1}]}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"beam_validator_SUITE.erl",591}]}.
    {call,1,{f,177}}. % aliased_types_2/1
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{}}}]}}.
    {test,is_eq_exact,
          {f,171},
          [{tr,{x,0},{t_tuple,2,true,#{}}},{literal,{1,1}}]}.
    {move,nil,{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",592}]}.
    {call,1,{f,177}}. % aliased_types_2/1
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{2 => {t_atom,[none]}}}}]}}.
    {test,is_eq_exact,
          {f,170},
          [{tr,{x,0},{t_tuple,2,true,#{2 => {t_atom,[none]}}}},
           {literal,{42,none}}]}.
    {move,{literal,[gurka]},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",594}]}.
    {call,1,{f,182}}. % aliased_types_3/1
    {'%',{var_info,{x,0},[{type,{t_atom,[gaffel,gurka]}}]}}.
    {test,is_eq_exact,
          {f,169},
          [{tr,{x,0},{t_atom,[gaffel,gurka]}},{atom,gurka}]}.
    {move,{literal,[gaffel]},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",595}]}.
    {call,1,{f,182}}. % aliased_types_3/1
    {'%',{var_info,{x,0},[{type,{t_atom,[gaffel,gurka]}}]}}.
    {test,is_eq_exact,
          {f,168},
          [{tr,{x,0},{t_atom,[gaffel,gurka]}},{atom,gaffel}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,168}.
    {badmatch,{atom,gurka}}.
  {label,169}.
    {line,[{location,"beam_validator_SUITE.erl",594}]}.
    {badmatch,{atom,gaffel}}.
  {label,170}.
    {line,[{location,"beam_validator_SUITE.erl",592}]}.
    {badmatch,{x,0}}.
  {label,171}.
    {line,[{location,"beam_validator_SUITE.erl",591}]}.
    {badmatch,{x,0}}.
  {label,172}.
    {line,[{location,"beam_validator_SUITE.erl",589}]}.
    {badmatch,{x,0}}.


{function, aliased_types_1, 2, 174}.
  {label,173}.
    {line,[{location,"beam_validator_SUITE.erl",606}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,aliased_types_1},2}.
  {label,174}.
    {test,is_eq_exact,{f,175},[{x,1},{literal,[gurka,gaffel]}]}.
    {line,[{location,"beam_validator_SUITE.erl",607}]}.
    if_end.
  {label,175}.
    {line,[{location,"beam_validator_SUITE.erl",609}]}.
    {bif,hd,{f,0},[{x,0}],{x,1}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,5},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",610}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {get_hd,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, aliased_types_2, 1, 177}.
  {label,176}.
    {line,[{location,"beam_validator_SUITE.erl",615}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,aliased_types_2},1}.
  {label,177}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {test,is_nil,{f,178},[{x,0}]}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",617}]}.
    {call,1,{f,416}}. % id/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,any},
                                   {t_list,any,any},
                                   {t_number,{0,'+inf'}},
                                   {t_tuple,0,false,#{}},
                                   other}}]}}.
    {jump,{f,179}}.
  {label,178}.
    {line,[{location,"beam_validator_SUITE.erl",618}]}.
    {bif,hd,
         {f,0},
         [{tr,{x,0},
              {t_union,{t_atom,any},
                       {t_cons,any,any},
                       {t_number,any},
                       {t_tuple,0,false,#{}},
                       other}}],
         {x,0}}.
  {label,179}.
    {test,is_nil,{f,180},[{tr,{y,0},{t_list,any,any}}]}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{x,0},{atom,none}]}}.
    {deallocate,1}.
    return.
  {label,180}.
    {test_heap,3,1}.
    {get_hd,{y,0},{x,1}}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {deallocate,1}.
    return.


{function, aliased_types_3, 1, 182}.
  {label,181}.
    {line,[{location,"beam_validator_SUITE.erl",627}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,aliased_types_3},1}.
  {label,182}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_atom,[gaffel,gurka]},nil}}]}}.
    {allocate,0,1}.
    {line,[{location,"beam_validator_SUITE.erl",628}]}.
    {call,1,{f,479}}. % '-aliased_types_3/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_cons,{t_atom,[gaffel,gurka]},nil}}]}}.
    {get_hd,{x,0},{x,0}}.
    {deallocate,0}.
    return.


{function, type_conflict, 1, 184}.
  {label,183}.
    {line,[{location,"beam_validator_SUITE.erl",645}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,type_conflict},1}.
  {label,184}.
    {test,is_list,{f,183},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,{r,e1,e2}},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",646}]}.
    {call,1,{f,187}}. % type_conflict_1/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_atom,[e1]},
                       2 =>
                           {t_union,
                               {t_atom,any},
                               {t_list,any,any},
                               {t_number,{0,'+inf'}},
                               {t_tuple,0,false,#{}},
                               other}}}}]}}.
    {test,is_eq_exact,
        {f,185},
        [{tr,{x,0},
             {t_tuple,2,true,
                 #{1 => {t_atom,[e1]},
                   2 =>
                       {t_union,
                           {t_atom,any},
                           {t_list,any,any},
                           {t_number,{0,'+inf'}},
                           {t_tuple,0,false,#{}},
                           other}}}},
         {literal,{e1,e2}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,185}.
    {badmatch,{x,0}}.


{function, type_conflict_1, 1, 187}.
  {label,186}.
    {line,[{location,"beam_validator_SUITE.erl",649}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,type_conflict_1},1}.
  {label,187}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_atom,[r]},
                                     2 => {t_atom,[e1]},
                                     3 => {t_atom,[e2]}}}}]}}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{atom,e2},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",650}]}.
    {call,1,{f,416}}. % id/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,any},
                                   {t_list,any,any},
                                   {t_number,{0,'+inf'}},
                                   {t_tuple,0,false,#{}},
                                   other}}]}}.
    {'try',{y,0},{f,188}}.
    {line,[{location,"beam_validator_SUITE.erl",651}]}.
    {call,1,{f,416}}. % id/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,any},
                                   {t_list,any,any},
                                   {t_number,{0,'+inf'}},
                                   {t_tuple,0,false,#{}},
                                   other}}]}}.
    {try_end,{y,0}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,e1},{x,0}]}}.
    {deallocate,1}.
    return.
  {label,188}.
    {try_case,{y,0}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.


{function, infer_on_eq, 1, 190}.
  {label,189}.
    {line,[{location,"beam_validator_SUITE.erl",662}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,infer_on_eq},1}.
  {label,190}.
    {test,is_list,{f,189},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,{gurka}},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",663}]}.
    {call,1,{f,416}}. % id/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,any},
                                   {t_list,any,any},
                                   {t_number,{0,'+inf'}},
                                   {t_tuple,0,false,#{}},
                                   other}}]}}.
    {call,1,{f,196}}. % infer_on_eq_1/1
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{1 => {t_atom,[ok]}}}}]}}.
    {test,is_eq_exact,
          {f,194},
          [{tr,{x,0},{t_tuple,2,true,#{1 => {t_atom,[ok]}}}},
           {literal,{ok,gurka}}]}.
    {move,{literal,{gaffel}},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",664}]}.
    {call,1,{f,416}}. % id/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,any},
                                   {t_list,any,any},
                                   {t_number,{0,'+inf'}},
                                   {t_tuple,0,false,#{}},
                                   other}}]}}.
    {call,1,{f,199}}. % infer_on_eq_2/1
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{1 => {t_atom,[ok]}}}}]}}.
    {test,is_eq_exact,
          {f,193},
          [{tr,{x,0},{t_tuple,2,true,#{1 => {t_atom,[ok]}}}},
           {literal,{ok,gaffel}}]}.
    {move,{literal,{elefant}},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",665}]}.
    {call,1,{f,416}}. % id/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,any},
                                   {t_list,any,any},
                                   {t_number,{0,'+inf'}},
                                   {t_tuple,0,false,#{}},
                                   other}}]}}.
    {call,1,{f,202}}. % infer_on_eq_3/1
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{1 => {t_atom,[ok]}}}}]}}.
    {test,is_eq_exact,
          {f,192},
          [{tr,{x,0},{t_tuple,2,true,#{1 => {t_atom,[ok]}}}},
           {literal,{ok,elefant}}]}.
    {move,{literal,{myra}},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",666}]}.
    {call,1,{f,416}}. % id/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,any},
                                   {t_list,any,any},
                                   {t_number,{0,'+inf'}},
                                   {t_tuple,0,false,#{}},
                                   other}}]}}.
    {call,1,{f,205}}. % infer_on_eq_4/1
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{1 => {t_atom,[ok]}}}}]}}.
    {test,is_eq_exact,
          {f,191},
          [{tr,{x,0},{t_tuple,2,true,#{1 => {t_atom,[ok]}}}},
           {literal,{ok,myra}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,191}.
    {badmatch,{x,0}}.
  {label,192}.
    {line,[{location,"beam_validator_SUITE.erl",665}]}.
    {badmatch,{x,0}}.
  {label,193}.
    {line,[{location,"beam_validator_SUITE.erl",664}]}.
    {badmatch,{x,0}}.
  {label,194}.
    {line,[{location,"beam_validator_SUITE.erl",663}]}.
    {badmatch,{x,0}}.


{function, infer_on_eq_1, 1, 196}.
  {label,195}.
    {line,[{location,"beam_validator_SUITE.erl",669}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,infer_on_eq_1},1}.
  {label,196}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,any},
                                   {t_list,any,any},
                                   {t_number,{0,'+inf'}},
                                   {t_tuple,0,false,#{}},
                                   other}}]}}.
    {line,[{location,"beam_validator_SUITE.erl",670}]}.
    {bif,tuple_size,
         {f,0},
         [{tr,{x,0},
              {t_union,{t_atom,any},
                       {t_list,any,any},
                       {t_number,{0,'+inf'}},
                       {t_tuple,0,false,#{}},
                       other}}],
         {x,1}}.
    {test,is_eq_exact,
          {f,197},
          [{tr,{x,1},{t_integer,{0,16777215}}},{integer,1}]}.
    {test_heap,3,1}.
    {get_tuple_element,{x,0},0,{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,ok},{x,0}]}}.
    return.
  {label,197}.
    {badmatch,{x,1}}.


{function, infer_on_eq_2, 1, 199}.
  {label,198}.
    {line,[{location,"beam_validator_SUITE.erl",673}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,infer_on_eq_2},1}.
  {label,199}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,any},
                                   {t_list,any,any},
                                   {t_number,{0,'+inf'}},
                                   {t_tuple,0,false,#{}},
                                   other}}]}}.
    {line,[{location,"beam_validator_SUITE.erl",674}]}.
    {bif,tuple_size,
         {f,0},
         [{tr,{x,0},
              {t_union,{t_atom,any},
                       {t_list,any,any},
                       {t_number,{0,'+inf'}},
                       {t_tuple,0,false,#{}},
                       other}}],
         {x,1}}.
    {test,is_eq_exact,
          {f,200},
          [{tr,{x,1},{t_integer,{0,16777215}}},{integer,1}]}.
    {test_heap,3,1}.
    {get_tuple_element,{x,0},0,{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,ok},{x,0}]}}.
    return.
  {label,200}.
    {line,[{location,"beam_validator_SUITE.erl",675}]}.
    {badmatch,{integer,1}}.


{function, infer_on_eq_3, 1, 202}.
  {label,201}.
    {line,[{location,"beam_validator_SUITE.erl",678}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,infer_on_eq_3},1}.
  {label,202}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,any},
                                   {t_list,any,any},
                                   {t_number,{0,'+inf'}},
                                   {t_tuple,0,false,#{}},
                                   other}}]}}.
    {line,[{location,"beam_validator_SUITE.erl",679}]}.
    {bif,tuple_size,
         {f,0},
         [{tr,{x,0},
              {t_union,{t_atom,any},
                       {t_list,any,any},
                       {t_number,{0,'+inf'}},
                       {t_tuple,0,false,#{}},
                       other}}],
         {x,1}}.
    {test,is_eq_exact,
          {f,203},
          [{tr,{x,1},{t_integer,{0,16777215}}},{integer,1}]}.
    {test_heap,3,1}.
    {get_tuple_element,{x,0},0,{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,ok},{x,0}]}}.
    return.
  {label,203}.
    {badmatch,{atom,false}}.


{function, infer_on_eq_4, 1, 205}.
  {label,204}.
    {line,[{location,"beam_validator_SUITE.erl",682}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,infer_on_eq_4},1}.
  {label,205}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,any},
                                   {t_list,any,any},
                                   {t_number,{0,'+inf'}},
                                   {t_tuple,0,false,#{}},
                                   other}}]}}.
    {line,[{location,"beam_validator_SUITE.erl",683}]}.
    {bif,tuple_size,
         {f,0},
         [{tr,{x,0},
              {t_union,{t_atom,any},
                       {t_list,any,any},
                       {t_number,{0,'+inf'}},
                       {t_tuple,0,false,#{}},
                       other}}],
         {x,1}}.
    {test,is_eq_exact,
          {f,206},
          [{tr,{x,1},{t_integer,{0,16777215}}},{integer,1}]}.
    {test_heap,3,1}.
    {get_tuple_element,{x,0},0,{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,ok},{x,0}]}}.
    return.
  {label,206}.
    {badmatch,{atom,false}}.


{function, infer_dead_value, 1, 208}.
  {label,207}.
    {line,[{location,"beam_validator_SUITE.erl",690}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,infer_dead_value},1}.
  {label,208}.
    {test,is_list,{f,207},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,{0,0,0,0,0,0,0}},{x,1}}.
    {move,{literal,{a,b,c,d,e,f,g}},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",691}]}.
    {call,2,{f,213}}. % idv_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a,c,error]}}]}}.
    {test,is_eq_exact,{f,211},[{tr,{x,0},{t_atom,[a,c,error]}},{atom,a}]}.
    {move,{literal,{a,b,c,d,0,0,0}},{x,1}}.
    {move,{literal,{a,b,c,d,0,0,0}},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",692}]}.
    {call,2,{f,213}}. % idv_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[b,error]}}]}}.
    {test,is_eq_exact,{f,210},[{tr,{x,0},{t_atom,[b,error]}},{atom,b}]}.
    {move,{literal,{0,0,0,0,0,f,g}},{x,1}}.
    {move,{literal,{0,0,0,0,0,f,g}},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",693}]}.
    {call,2,{f,213}}. % idv_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[c,error]}}]}}.
    {test,is_eq_exact,{f,209},[{tr,{x,0},{t_atom,[c,error]}},{atom,c}]}.
    {move,{atom,gaffel},{x,1}}.
    {move,{atom,gurka},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",694}]}.
    {call,2,{f,213}}. % idv_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,{idv,undefined}},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",696}]}.
    {call,1,{f,416}}. % id/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,any},
                                   {t_list,any,any},
                                   {t_number,{0,'+inf'}},
                                   {t_tuple,0,false,#{}},
                                   other}}]}}.
    {call_last,1,{f,229},0}. % idv_2/1
  {label,209}.
    {line,[{location,"beam_validator_SUITE.erl",693}]}.
    {badmatch,{atom,error}}.
  {label,210}.
    {line,[{location,"beam_validator_SUITE.erl",692}]}.
    {badmatch,{atom,error}}.
  {label,211}.
    {line,[{location,"beam_validator_SUITE.erl",691}]}.
    {badmatch,{x,0}}.


{function, idv_1, 2, 213}.
  {label,212}.
    {line,[{location,"beam_validator_SUITE.erl",700}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,idv_1},2}.
  {label,213}.
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
        {f,216},
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
        {f,216},
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
          {f,214},
          [{tr,{x,2},{t_union,{t_atom,[a]},none,{t_integer,{0,0}},none,none}},
           {integer,0}]}.
    {test,is_eq_exact,
          {f,215},
          [{tr,{x,3},{t_union,{t_atom,[f]},none,{t_integer,{0,0}},none,none}},
           {integer,0}]}.
    {test,is_eq_exact,
          {f,215},
          [{tr,{x,1},{t_union,{t_atom,[g]},none,{t_integer,{0,0}},none,none}},
           {integer,0}]}.
    {move,{atom,a},{x,0}}.
    return.
  {label,214}.
    {get_tuple_element,{x,0},0,{x,4}}.
    {test,is_eq_exact,
          {f,215},
          [{tr,{x,4},{t_union,{t_atom,[a]},none,{t_integer,{0,0}},none,none}},
           {atom,a}]}.
    {move,{atom,b},{x,0}}.
    return.
  {label,215}.
    {test,is_eq_exact,
          {f,216},
          [{tr,{x,2},{t_union,{t_atom,[a]},none,{t_integer,{0,0}},none,none}},
           {integer,0}]}.
    {get_tuple_element,{x,0},5,{x,2}}.
    {test,is_eq_exact,
          {f,216},
          [{tr,{x,3},{t_union,{t_atom,[f]},none,{t_integer,{0,0}},none,none}},
           {tr,{x,2},
               {t_union,{t_atom,[f]},none,{t_integer,{0,0}},none,none}}]}.
    {get_tuple_element,{x,0},6,{x,0}}.
    {test,is_eq_exact,
          {f,216},
          [{tr,{x,1},{t_union,{t_atom,[g]},none,{t_integer,{0,0}},none,none}},
           {tr,{x,0},
               {t_union,{t_atom,[g]},none,{t_integer,{0,0}},none,none}}]}.
    {move,{atom,c},{x,0}}.
    return.
  {label,216}.
    {move,{atom,error},{x,0}}.
    return.


{function, infer_on_ne, 1, 218}.
  {label,217}.
    {line,[{location,"beam_validator_SUITE.erl",718}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,infer_on_ne},1}.
  {label,218}.
    {test,is_list,{f,217},[{x,0}]}.
    {allocate,0,0}.
    {move,{atom,open},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",719}]}.
    {call,1,{f,416}}. % id/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,any},
                                   {t_list,any,any},
                                   {t_number,{0,'+inf'}},
                                   {t_tuple,0,false,#{}},
                                   other}}]}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,ion},{x,0}]}}.
    {call,1,{f,221}}. % ion_1/1
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
          {f,219},
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
    {line,[{location,"beam_validator_SUITE.erl",720}]}.
    {call,1,{f,227}}. % ion_close/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[ion]},
                                     2 => {t_atom,[closing]}}}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,219}.
    {line,[{location,"beam_validator_SUITE.erl",719}]}.
    {badmatch,{atom,ok}}.


{function, ion_1, 1, 221}.
  {label,220}.
    {line,[{location,"beam_validator_SUITE.erl",723}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,ion_1},1}.
  {label,221}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_atom,[ion]},
                       2 =>
                           {t_union,
                               {t_atom,any},
                               {t_list,any,any},
                               {t_number,{0,'+inf'}},
                               {t_tuple,0,false,#{}},
                               other}}}}]}}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {select_val,{tr,{x,1},
                    {t_union,{t_atom,any},
                             {t_list,any,any},
                             {t_number,{0,'+inf'}},
                             {t_tuple,0,false,#{}},
                             other}},
                {f,220},
                {list,[{atom,closing},{f,222},{atom,open},{f,222}]}}.
  {label,222}.
    {call_only,1,{f,224}}. % ion_2/1


{function, ion_2, 1, 224}.
  {label,223}.
    {line,[{location,"beam_validator_SUITE.erl",726}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,ion_2},1}.
  {label,224}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[ion]},
                                     2 => {t_atom,[closing,open]}}}}]}}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_eq_exact,{f,225},[{x,0},{atom,open}]}.
    {move,{literal,{ion,open}},{x,0}}.
    {call_only,1,{f,227}}. % ion_close/1
  {label,225}.
    {move,{atom,ok},{x,0}}.
    return.


{function, ion_close, 1, 227}.
  {label,226}.
    {line,[{location,"beam_validator_SUITE.erl",729}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,ion_close},1}.
  {label,227}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[ion]},
                                     2 => {t_atom,[open]}}}}]}}.
    {move,{literal,{ion,closing}},{x,0}}.
    return.


{function, idv_2, 1, 229}.
  {label,228}.
    {line,[{location,"beam_validator_SUITE.erl",735}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,idv_2},1}.
  {label,229}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,any},
                                   {t_list,any,any},
                                   {t_number,{0,'+inf'}},
                                   {t_tuple,0,false,#{}},
                                   other}}]}}.
    {test,is_tagged_tuple,
          {f,232},
          [{tr,{x,0},
               {t_union,{t_atom,any},
                        {t_list,any,any},
                        {t_number,{0,'+inf'}},
                        {t_tuple,0,false,#{}},
                        other}},
           2,
           {atom,idv}]}.
    {allocate,1,1}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {bif,'=:=',{f,0},[{x,0},{atom,undefined}],{y,0}}.
    {move,{atom,gurka},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",737}]}.
    {call,1,{f,416}}. % id/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,any},
                                   {t_list,any,any},
                                   {t_number,{0,'+inf'}},
                                   {t_tuple,0,false,#{}},
                                   other}}]}}.
    {test,is_tuple,
          {f,230},
          [{tr,{x,0},
               {t_union,{t_atom,any},
                        {t_list,any,any},
                        {t_number,{0,'+inf'}},
                        {t_tuple,0,false,#{}},
                        other}}]}.
    {test,test_arity,{f,230},[{x,0},1]}.
    {test_heap,2,0}.
    {put_list,{y,0},nil,{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",738}]}.
    {call,1,{f,416}}. % id/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,any},
                                   {t_list,any,any},
                                   {t_number,{0,'+inf'}},
                                   {t_tuple,0,false,#{}},
                                   other}}]}}.
  {label,230}.
    {test,is_eq_exact,{f,231},[{y,0},{atom,true}]}.
    {move,{literal,{idv,undefined}},{x,0}}.
    {call_last,1,{f,234},1}. % idv_called_once/1
  {label,231}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,232}.
    {line,[{location,"beam_validator_SUITE.erl",736}]}.
    {badrecord,{x,0}}.


{function, idv_called_once, 1, 234}.
  {label,233}.
    {line,[{location,"beam_validator_SUITE.erl",746}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,idv_called_once},1}.
  {label,234}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[idv]},
                                     2 => {t_atom,[undefined]}}}}]}}.
    {move,{atom,ok},{x,0}}.
    return.


{function, branch_to_try_handler, 1, 236}.
  {label,235}.
    {line,[{location,"beam_validator_SUITE.erl",751}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,branch_to_try_handler},1}.
  {label,236}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{atom,branch_to_try_handler},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",752}]}.
    {call,2,{f,264}}. % do_val/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,237},
          [{tr,{x,0},{t_list,any,nil}},
           {literal,[{{branch_to_try_handler,main,1},
                      {{bif,tuple_size,{f,3},[{y,0}],{x,0}},
                       13,
                       {illegal_branch,try_handler,3}}}]}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,237}.
    {line,[{location,"beam_validator_SUITE.erl",753}]}.
    {badmatch,{x,0}}.


{function, receive_marker, 1, 239}.
  {label,238}.
    {line,[{location,"beam_validator_SUITE.erl",759}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,receive_marker},1}.
  {label,239}.
    {test,is_list,{f,238},[{x,0}]}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{atom,receive_marker},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",760}]}.
    {call,2,{f,264}}. % do_val/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_nonempty_list,{f,240},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_tuple,{f,240},[{x,1}]}.
    {test,test_arity,{f,240},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_eq_exact,{f,240},[{x,3},{literal,{receive_marker,t1,1}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tagged_tuple,{f,240},[{x,1},3,{atom,return}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_eq_exact,
          {f,240},
          [{x,1},{literal,{return_in_receive,entered_loop}}]}.
    {test,is_nonempty_list,{f,240},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tuple,{f,240},[{x,1}]}.
    {test,test_arity,{f,240},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_eq_exact,{f,240},[{x,3},{literal,{receive_marker,t2,1}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tuple,{f,240},[{x,1}]}.
    {test,test_arity,{f,240},[{x,1},3]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_eq_exact,{f,240},[{x,3},{literal,{call_last,1,{f,2},1}}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_eq_exact,
          {f,240},
          [{x,1},{literal,{return_in_receive,entered_loop}}]}.
    {test,is_nonempty_list,{f,240},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tuple,{f,240},[{x,1}]}.
    {test,test_arity,{f,240},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_eq_exact,{f,240},[{x,3},{literal,{receive_marker,t3,1}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_tagged_tuple,{f,240},[{x,1},3,{atom,return}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_eq_exact,
          {f,240},
          [{x,1},{literal,{return_in_receive,entered_loop}}]}.
    {test,is_nil,{f,240},[{tr,{x,2},{t_list,any,nil}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,240}.
    {line,[{location,"beam_validator_SUITE.erl",762}]}.
    {badmatch,{x,0}}.


{function, safe_instructions, 1, 242}.
  {label,241}.
    {line,[{location,"beam_validator_SUITE.erl",776}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,safe_instructions},1}.
  {label,242}.
    {test,is_list,{f,241},[{x,0}]}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{atom,safe_instructions},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",777}]}.
    {call,2,{f,264}}. % do_val/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_nil,{f,243},[{tr,{x,0},{t_list,any,nil}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,243}.
    {line,[{location,"beam_validator_SUITE.erl",779}]}.
    {badmatch,{x,0}}.


{function, missing_return_type, 1, 245}.
  {label,244}.
    {line,[{location,"beam_validator_SUITE.erl",783}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,missing_return_type},1}.
  {label,245}.
    {test,is_list,{f,244},[{x,0}]}.
    {allocate,0,0}.
    {move,{atom,true},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",787}]}.
    {call,1,{f,251}}. % mrt_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,249},[{x,0},{atom,true}]}.
    {move,{atom,false},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",788}]}.
    {call,1,{f,251}}. % mrt_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,246},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,246}.
    {move,{atom,hello},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",789}]}.
    {call,1,{f,416}}. % id/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,any},
                                   {t_list,any,any},
                                   {t_number,{0,'+inf'}},
                                   {t_tuple,0,false,#{}},
                                   other}}]}}.
    {bif,is_map_key,
         {f,0},
         [{tr,{x,0},
              {t_union,{t_atom,any},
                       {t_list,any,any},
                       {t_number,{0,'+inf'}},
                       {t_tuple,0,false,#{}},
                       other}},
          {literal,#{hello => there}}],
         {x,0}}.
    {call,1,{f,251}}. % mrt_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,248},[{x,0},{atom,true}]}.
    {move,{atom,there},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",790}]}.
    {call,1,{f,416}}. % id/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,any},
                                   {t_list,any,any},
                                   {t_number,{0,'+inf'}},
                                   {t_tuple,0,false,#{}},
                                   other}}]}}.
    {bif,is_map_key,
         {f,0},
         [{tr,{x,0},
              {t_union,{t_atom,any},
                       {t_list,any,any},
                       {t_number,{0,'+inf'}},
                       {t_tuple,0,false,#{}},
                       other}},
          {literal,#{hello => there}}],
         {x,0}}.
    {call,1,{f,251}}. % mrt_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,247},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,247}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,248}.
    {line,[{location,"beam_validator_SUITE.erl",789}]}.
    {badmatch,{atom,false}}.
  {label,249}.
    {line,[{location,"beam_validator_SUITE.erl",787}]}.
    {badmatch,{atom,false}}.


{function, mrt_1, 1, 251}.
  {label,250}.
    {line,[{location,"beam_validator_SUITE.erl",794}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,mrt_1},1}.
  {label,251}.
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    return.


{function, bs_saved_position_units, 1, 253}.
  {label,252}.
    {line,[{location,"beam_validator_SUITE.erl",799}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,bs_saved_position_units},1}.
  {label,253}.
    {test,is_list,{f,252},[{x,0}]}.
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
    {line,[{location,"beam_validator_SUITE.erl",865}]}.
    {call,1,{f,270}}. % beam_val/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,254},
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
  {label,254}.
    {line,[{location,"beam_validator_SUITE.erl",867}]}.
    {badmatch,{x,0}}.


{function, transform_remove, 2, 256}.
  {label,255}.
    {line,[{location,"beam_validator_SUITE.erl",878}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,transform_remove},2}.
  {label,256}.
    {'%',{var_info,{x,0},[{type,{t_fun,1,any,{t_atom,[false,true]}}}]}}.
    {test_heap,{alloc,[{words,1},{floats,0},{funs,1}]},2}.
    {make_fun3,{f,472},0,0,{x,0},{list,[{x,0}]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_list,any,nil}}]}}.
    {call_only,2,{f,260}}. % transform_is/2


{function, transform_i, 2, 258}.
  {label,257}.
    {line,[{location,"beam_validator_SUITE.erl",881}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,transform_i},2}.
  {label,258}.
    {'%',{var_info,{x,0},[{type,{t_fun,1,any,any}}]}}.
    {test_heap,{alloc,[{words,1},{floats,0},{funs,1}]},2}.
    {make_fun3,{f,466},0,0,{x,0},{list,[{x,0}]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_list,any,nil}}]}}.
    {call_only,2,{f,260}}. % transform_is/2


{function, transform_is, 2, 260}.
  {label,259}.
    {line,[{location,"beam_validator_SUITE.erl",884}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,transform_is},2}.
  {label,260}.
    {'%',{var_info,{x,0},[{type,{t_fun,1,any,{t_list,any,nil}}}]}}.
    {test,is_tuple,{f,259},[{x,1}]}.
    {test,test_arity,{f,259},[{x,1},5]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {get_tuple_element,{x,1},3,{x,1}}.
    {swap,{x,0},{x,1}}.
    {line,[{location,"beam_validator_SUITE.erl",885}]}.
    {call,2,{f,462}}. % '-transform_is/2-lc$^0/1-0-'/2
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


{function, transform_is_1, 2, 262}.
  {label,261}.
    {line,[{location,"beam_validator_SUITE.erl",888}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,transform_is_1},2}.
  {label,262}.
    {'%',{var_info,{x,0},[{type,{t_fun,1,any,{t_list,any,nil}}}]}}.
    {test,is_tagged_tuple,{f,261},[{x,1},5,{atom,function}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {get_tuple_element,{x,1},4,{x,1}}.
    {swap,{x,0},{x,1}}.
    {line,[{location,"beam_validator_SUITE.erl",889}]}.
    {call_fun2,{atom,safe},1,{tr,{x,1},{t_fun,1,any,{t_list,any,nil}}}}.
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,6,1}.
    {get_tuple_element,{y,0},1,{x,1}}.
    {get_tuple_element,{y,0},2,{x,2}}.
    {get_tuple_element,{y,0},3,{x,3}}.
    {put_tuple2,{x,0},{list,[{atom,function},{x,1},{x,2},{x,3},{x,0}]}}.
    {deallocate,1}.
    return.


{function, do_val, 2, 264}.
  {label,263}.
    {line,[{location,"beam_validator_SUITE.erl",892}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,do_val},2}.
  {label,264}.
    {'%',{var_info,{x,0},[{type,{t_atom,any}}]}}.
    {allocate,2,2}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {move,{atom,data_dir},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",893}]}.
    {call_ext,2,{extfunc,proplists,get_value,2}}.
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",894}]}.
    {call_ext,1,{extfunc,erlang,atom_to_list,1}}.
    {move,{y,0},{x,1}}.
    {move,{x,0},{y,0}}.
    {swap,{x,0},{x,1}}.
    {line,[{location,"beam_validator_SUITE.erl",895}]}.
    {call_ext,2,{extfunc,filename,join,2}}.
    {move,{literal,[from_asm,no_postopt,return_errors]},{x,1}}.
    {line,[{location,"beam_validator_SUITE.erl",896}]}.
    {call_ext,2,{extfunc,compile,file,2}}.
    {test,is_tuple,{f,268},[{x,0}]}.
    {select_tuple_arity,{tr,{x,0},{t_tuple,0,false,#{}}},
                        {f,268},
                        {list,[2,{f,266},3,{f,265}]}}.
  {label,265}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,268},[{x,1},{atom,error}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_nil,{f,268},[{x,1}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_nonempty_list,{f,267},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_tuple,{f,267},[{x,1}]}.
    {test,test_arity,{f,267},[{x,1},2]}.
    {test,is_nil,{f,267},[{x,2}]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,
          {f,267},
          [{x,2},{tr,{y,0},{t_list,{t_integer,{0,1114111}},nil}}]}.
    {get_tuple_element,{x,1},1,{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {trim,1,1}.
    {line,[{location,"beam_validator_SUITE.erl",899}]}.
    {call,1,{f,457}}. % '-do_val/2-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {move,{x,0},{y,0}}.
    {line,[{location,"beam_validator_SUITE.erl",901}]}.
    {call,1,{f,454}}. % '-do_val/2-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,266}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,268},[{x,1},{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,268},[{x,1},{tr,{y,1},{t_atom,any}}]}.
    {move,nil,{x,0}}.
    {deallocate,2}.
    return.
  {label,267}.
    {line,[{location,"beam_validator_SUITE.erl",898}]}.
    {badmatch,{x,0}}.
  {label,268}.
    {line,[{location,"beam_validator_SUITE.erl",896}]}.
    {case_end,{x,0}}.


{function, beam_val, 1, 270}.
  {label,269}.
    {line,[{location,"beam_validator_SUITE.erl",907}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,beam_val},1}.
  {label,270}.
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
    {line,[{location,"beam_validator_SUITE.erl",908}]}.
    {call_ext,1,{extfunc,erlang,atom_to_list,1}}.
    {swap,{y,0},{x,0}}.
    {move,{atom,strong},{x,1}}.
    {line,[{location,"beam_validator_SUITE.erl",909}]}.
    {call_ext,2,{extfunc,beam_validator,validate,2}}.
    {test,is_tagged_tuple,{f,271},[{x,0},2,{atom,error}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_nonempty_list,{f,271},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_tuple,{f,271},[{x,2}]}.
    {test,test_arity,{f,271},[{x,2},2]}.
    {test,is_nil,{f,271},[{x,1}]}.
    {get_tuple_element,{x,2},0,{x,1}}.
    {test,is_eq_exact,
          {f,271},
          [{x,1},{tr,{y,0},{t_list,{t_integer,{0,1114111}},nil}}]}.
    {get_tuple_element,{x,2},1,{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"beam_validator_SUITE.erl",910}]}.
    {call,1,{f,449}}. % '-beam_val/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {move,{x,0},{y,0}}.
    {line,[{location,"beam_validator_SUITE.erl",912}]}.
    {call,1,{f,446}}. % '-beam_val/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,271}.
    {line,[{location,"beam_validator_SUITE.erl",909}]}.
    {badmatch,{x,0}}.


{function, val_dsetel, 1, 273}.
  {label,272}.
    {line,[{location,"beam_validator_SUITE.erl",917}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,val_dsetel},1}.
  {label,273}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{integer,13},{x,1}}.
    {line,[{location,"beam_validator_SUITE.erl",918}]}.
    send.
    {'catch',{y,0},{f,274}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",919}]}.
    {call,1,{f,277}}. % night/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,274}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,275},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,275},[{x,1}]}.
    {test,test_arity,{f,275},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,275},[{x,1},{literal,{try_clause,participating}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,275}.
    {line,[{scope,[0]},{location,"beam_validator_SUITE.erl",919}]}.
    {badmatch,{x,0}}.


{function, night, 1, 277}.
  {label,276}.
    {line,[{location,"beam_validator_SUITE.erl",922}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,night},1}.
  {label,277}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,0}}}]}}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
  {label,278}.
    {loop_rec,{f,281},{x,0}}.
    {test,is_eq_exact,{f,280},[{x,0},{integer,13}]}.
    remove_message.
    {'try',{y,0},{f,279}}.
    {line,[{scope,[3]},{location,"beam_validator_SUITE.erl",925}]}.
    {try_case_end,{atom,participating}}.
  {label,279}.
    {try_case,{y,0}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.
  {label,280}.
    {loop_rec_end,{f,278}}.
  {label,281}.
    {wait,{f,278}}.


{function, will_succeed, 1, 283}.
  {label,282}.
    {line,[{location,"beam_validator_SUITE.erl",935}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,will_succeed},1}.
  {label,283}.
    {allocate,0,0}.
    {move,{atom,body},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",936}]}.
    {call,1,{f,285}}. % will_succeed_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{atom,whatever},{x,1}}.
    {line,[{location,"beam_validator_SUITE.erl",938}]}.
    send.
    {line,[{location,"beam_validator_SUITE.erl",939}]}.
    {call,0,{f,287}}. % will_succeed_2/0
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{atom,whatever},{x,1}}.
    {line,[{location,"beam_validator_SUITE.erl",941}]}.
    send.
    {line,[{location,"beam_validator_SUITE.erl",942}]}.
    {call,0,{f,292}}. % will_succeed_3/0
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, will_succeed_1, 1, 285}.
  {label,284}.
    {line,[{location,"beam_validator_SUITE.erl",951}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,will_succeed_1},1}.
  {label,285}.
    {'%',{var_info,{x,0},[{type,{t_atom,[body]}}]}}.
    {move,{atom,ok},{x,0}}.
    return.


{function, will_succeed_2, 0, 287}.
  {label,286}.
    {line,[{location,"beam_validator_SUITE.erl",964}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,will_succeed_2},0}.
  {label,287}.
    {allocate,1,0}.
    {'try',{y,0},{f,290}}.
  {label,288}.
    {loop_rec,{f,289},{x,0}}.
    remove_message.
    {move,{atom,name},{x,1}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[1]},{location,"beam_validator_SUITE.erl",966}]}.
    {apply,0}.
    {jump,{f,290}}.
  {label,289}.
    {wait,{f,288}}.
  {label,290}.
    {try_case,{y,0}}.
    {move,{atom,error},{x,0}}.
    {deallocate,1}.
    return.


{function, will_succeed_3, 0, 292}.
  {label,291}.
    {line,[{location,"beam_validator_SUITE.erl",975}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,will_succeed_3},0}.
  {label,292}.
    {allocate,1,0}.
    {'try',{y,0},{f,295}}.
  {label,293}.
    {loop_rec,{f,294},{x,0}}.
    remove_message.
    {move,{integer,42},{x,2}}.
    {move,{atom,b},{x,1}}.
    {move,{atom,name},{x,3}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[1]},{location,"beam_validator_SUITE.erl",977}]}.
    {apply,2}.
    {jump,{f,295}}.
  {label,294}.
    {wait,{f,293}}.
  {label,295}.
    {try_case,{y,0}}.
    {move,{atom,error},{x,0}}.
    {deallocate,1}.
    return.


{function, parent_container, 1, 297}.
  {label,296}.
    {line,[{location,"beam_validator_SUITE.erl",991}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,parent_container},1}.
  {label,297}.
    {allocate,0,0}.
    {move,{literal,{pc,true}},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",992}]}.
    {call,1,{f,416}}. % id/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,any},
                                   {t_list,any,any},
                                   {t_number,{0,'+inf'}},
                                   {t_tuple,0,false,#{}},
                                   other}}]}}.
    {call_last,1,{f,299},0}. % pc_1/1


{function, pc_1, 1, 299}.
  {label,298}.
    {line,[{location,"beam_validator_SUITE.erl",994}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,pc_1},1}.
  {label,299}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,any},
                                   {t_list,any,any},
                                   {t_number,{0,'+inf'}},
                                   {t_tuple,0,false,#{}},
                                   other}}]}}.
    {test,is_tagged_tuple,
          {f,298},
          [{tr,{x,0},
               {t_union,{t_atom,any},
                        {t_list,any,any},
                        {t_number,{0,'+inf'}},
                        {t_tuple,0,false,#{}},
                        other}},
           2,
           {atom,pc}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_boolean,{f,300},[{x,1}]}.
    {call_only,1,{f,302}}. % pc_2/1
  {label,300}.
    {line,[{location,"beam_validator_SUITE.erl",995}]}.
    {case_end,{x,1}}.


{function, pc_2, 1, 302}.
  {label,301}.
    {line,[{location,"beam_validator_SUITE.erl",1001}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,pc_2},1}.
  {label,302}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[pc]},
                                     2 => {t_atom,[false,true]}}}}]}}.
    {move,{atom,ok},{x,0}}.
    return.


{function, container_performance, 1, 304}.
  {label,303}.
    {line,[{location,"beam_validator_SUITE.erl",1005}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,container_performance},1}.
  {label,304}.
    {test,is_tuple,{f,363},[{x,0}]}.
    {test,test_arity,{f,363},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {select_val,{x,1},{f,363},{list,[{atom,a},{f,306},{atom,b},{f,305}]}}.
  {label,305}.
    {move,{literal,{k1}},{x,0}}.
    return.
  {label,306}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_tuple,{f,363},[{x,0}]}.
    {test,test_arity,{f,363},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {select_val,{x,1},{f,363},{list,[{atom,a},{f,308},{atom,b},{f,307}]}}.
  {label,307}.
    {move,{literal,{k2}},{x,0}}.
    return.
  {label,308}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_tuple,{f,363},[{x,0}]}.
    {test,test_arity,{f,363},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {select_val,{x,1},{f,363},{list,[{atom,a},{f,310},{atom,b},{f,309}]}}.
  {label,309}.
    {move,{literal,{k3}},{x,0}}.
    return.
  {label,310}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_tuple,{f,363},[{x,0}]}.
    {test,test_arity,{f,363},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {select_val,{x,1},{f,363},{list,[{atom,a},{f,312},{atom,b},{f,311}]}}.
  {label,311}.
    {move,{literal,{k4}},{x,0}}.
    return.
  {label,312}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_tuple,{f,363},[{x,0}]}.
    {test,test_arity,{f,363},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {select_val,{x,1},{f,363},{list,[{atom,a},{f,314},{atom,b},{f,313}]}}.
  {label,313}.
    {move,{literal,{k5}},{x,0}}.
    return.
  {label,314}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_tuple,{f,363},[{x,0}]}.
    {test,test_arity,{f,363},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {select_val,{x,1},{f,363},{list,[{atom,a},{f,316},{atom,b},{f,315}]}}.
  {label,315}.
    {move,{literal,{k6}},{x,0}}.
    return.
  {label,316}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_tuple,{f,363},[{x,0}]}.
    {test,test_arity,{f,363},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {select_val,{x,1},{f,363},{list,[{atom,a},{f,318},{atom,b},{f,317}]}}.
  {label,317}.
    {move,{literal,{k7}},{x,0}}.
    return.
  {label,318}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_tuple,{f,363},[{x,0}]}.
    {test,test_arity,{f,363},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {select_val,{x,1},{f,363},{list,[{atom,a},{f,320},{atom,b},{f,319}]}}.
  {label,319}.
    {move,{literal,{k8}},{x,0}}.
    return.
  {label,320}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_tuple,{f,363},[{x,0}]}.
    {test,test_arity,{f,363},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {select_val,{x,1},{f,363},{list,[{atom,a},{f,322},{atom,b},{f,321}]}}.
  {label,321}.
    {move,{literal,{k9}},{x,0}}.
    return.
  {label,322}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_tuple,{f,363},[{x,0}]}.
    {test,test_arity,{f,363},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {select_val,{x,1},{f,363},{list,[{atom,a},{f,324},{atom,b},{f,323}]}}.
  {label,323}.
    {move,{literal,{k10}},{x,0}}.
    return.
  {label,324}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_tuple,{f,363},[{x,0}]}.
    {test,test_arity,{f,363},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {select_val,{x,1},{f,363},{list,[{atom,a},{f,326},{atom,b},{f,325}]}}.
  {label,325}.
    {move,{literal,{k11}},{x,0}}.
    return.
  {label,326}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_tuple,{f,363},[{x,0}]}.
    {test,test_arity,{f,363},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {select_val,{x,1},{f,363},{list,[{atom,a},{f,328},{atom,b},{f,327}]}}.
  {label,327}.
    {move,{literal,{k12}},{x,0}}.
    return.
  {label,328}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_tuple,{f,363},[{x,0}]}.
    {test,test_arity,{f,363},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {select_val,{x,1},{f,363},{list,[{atom,a},{f,330},{atom,b},{f,329}]}}.
  {label,329}.
    {move,{literal,{k13}},{x,0}}.
    return.
  {label,330}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_tuple,{f,363},[{x,0}]}.
    {test,test_arity,{f,363},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {select_val,{x,1},{f,363},{list,[{atom,a},{f,332},{atom,b},{f,331}]}}.
  {label,331}.
    {move,{literal,{k14}},{x,0}}.
    return.
  {label,332}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_tuple,{f,363},[{x,0}]}.
    {test,test_arity,{f,363},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {select_val,{x,1},{f,363},{list,[{atom,a},{f,334},{atom,b},{f,333}]}}.
  {label,333}.
    {move,{literal,{k15}},{x,0}}.
    return.
  {label,334}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_tuple,{f,363},[{x,0}]}.
    {test,test_arity,{f,363},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {select_val,{x,1},{f,363},{list,[{atom,a},{f,336},{atom,b},{f,335}]}}.
  {label,335}.
    {move,{literal,{k16}},{x,0}}.
    return.
  {label,336}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_tuple,{f,363},[{x,0}]}.
    {test,test_arity,{f,363},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {select_val,{x,1},{f,363},{list,[{atom,a},{f,338},{atom,b},{f,337}]}}.
  {label,337}.
    {move,{literal,{k17}},{x,0}}.
    return.
  {label,338}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_tuple,{f,363},[{x,0}]}.
    {test,test_arity,{f,363},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {select_val,{x,1},{f,363},{list,[{atom,a},{f,340},{atom,b},{f,339}]}}.
  {label,339}.
    {move,{literal,{k18}},{x,0}}.
    return.
  {label,340}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_tuple,{f,363},[{x,0}]}.
    {test,test_arity,{f,363},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {select_val,{x,1},{f,363},{list,[{atom,a},{f,342},{atom,b},{f,341}]}}.
  {label,341}.
    {move,{literal,{k19}},{x,0}}.
    return.
  {label,342}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_tuple,{f,363},[{x,0}]}.
    {test,test_arity,{f,363},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {select_val,{x,1},{f,363},{list,[{atom,a},{f,344},{atom,b},{f,343}]}}.
  {label,343}.
    {move,{literal,{k20}},{x,0}}.
    return.
  {label,344}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_tuple,{f,363},[{x,0}]}.
    {test,test_arity,{f,363},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {select_val,{x,1},{f,363},{list,[{atom,a},{f,346},{atom,b},{f,345}]}}.
  {label,345}.
    {move,{literal,{k21}},{x,0}}.
    return.
  {label,346}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_tuple,{f,363},[{x,0}]}.
    {test,test_arity,{f,363},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {select_val,{x,1},{f,363},{list,[{atom,a},{f,348},{atom,b},{f,347}]}}.
  {label,347}.
    {move,{literal,{k22}},{x,0}}.
    return.
  {label,348}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_tuple,{f,363},[{x,0}]}.
    {test,test_arity,{f,363},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {select_val,{x,1},{f,363},{list,[{atom,a},{f,350},{atom,b},{f,349}]}}.
  {label,349}.
    {move,{literal,{k23}},{x,0}}.
    return.
  {label,350}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_tuple,{f,363},[{x,0}]}.
    {test,test_arity,{f,363},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {select_val,{x,1},{f,363},{list,[{atom,a},{f,352},{atom,b},{f,351}]}}.
  {label,351}.
    {move,{literal,{k24}},{x,0}}.
    return.
  {label,352}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_tuple,{f,363},[{x,0}]}.
    {test,test_arity,{f,363},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {select_val,{x,1},{f,363},{list,[{atom,a},{f,354},{atom,b},{f,353}]}}.
  {label,353}.
    {move,{literal,{k25}},{x,0}}.
    return.
  {label,354}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_tuple,{f,363},[{x,0}]}.
    {test,test_arity,{f,363},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {select_val,{x,1},{f,363},{list,[{atom,a},{f,356},{atom,b},{f,355}]}}.
  {label,355}.
    {move,{literal,{k26}},{x,0}}.
    return.
  {label,356}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_tuple,{f,363},[{x,0}]}.
    {test,test_arity,{f,363},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {select_val,{x,1},{f,363},{list,[{atom,a},{f,358},{atom,b},{f,357}]}}.
  {label,357}.
    {move,{literal,{k27}},{x,0}}.
    return.
  {label,358}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_tuple,{f,363},[{x,0}]}.
    {test,test_arity,{f,363},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {select_val,{x,1},{f,363},{list,[{atom,a},{f,360},{atom,b},{f,359}]}}.
  {label,359}.
    {move,{literal,{k28}},{x,0}}.
    return.
  {label,360}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_tuple,{f,363},[{x,0}]}.
    {test,test_arity,{f,363},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,0}}.
    {select_val,{x,0},{f,363},{list,[{atom,a},{f,362},{atom,b},{f,361}]}}.
  {label,361}.
    {move,{literal,{k29}},{x,0}}.
    return.
  {label,362}.
    {move,{literal,{k30}},{x,0}}.
    return.
  {label,363}.
    {move,{atom,ok},{x,0}}.
    return.


{function, infer_relops, 1, 365}.
  {label,364}.
    {line,[{location,"beam_validator_SUITE.erl",1042}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,infer_relops},1}.
  {label,365}.
    {allocate,0,0}.
    {move,{integer,3},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",1043}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {call,1,{f,441}}. % '-infer_relops/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{integer,7},{x,1}}.
    {move,{integer,4},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",1044}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {call,1,{f,436}}. % '-infer_relops/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, infer_relops_1, 1, 367}.
  {label,366}.
    {line,[{location,"beam_validator_SUITE.erl",1047}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,infer_relops_1},1}.
  {label,367}.
    {test,is_ge,{f,369},[{x,0},{integer,0}]}.
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
    {line,[{location,"beam_validator_SUITE.erl",1050}]}.
    {call,1,{f,416}}. % id/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,any},
                                   {t_list,any,any},
                                   {t_number,{0,'+inf'}},
                                   {t_tuple,0,false,#{}},
                                   other}}]}}.
    {test,is_eq_exact,{f,368},[{y,0},{atom,true}]}.
    {move,{y,1},{x,1}}.
    {move,{atom,true},{x,0}}.
    {call_last,2,{f,371},2}. % infer_relops_true/2
  {label,368}.
    {move,{y,1},{x,1}}.
    {move,{atom,false},{x,0}}.
    {call_last,2,{f,373},2}. % infer_relops_false/2
  {label,369}.
    {line,[{location,"beam_validator_SUITE.erl",1048}]}.
    {badmatch,{atom,false}}.


{function, infer_relops_true, 2, 371}.
  {label,370}.
    {line,[{location,"beam_validator_SUITE.erl",1056}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,infer_relops_true},2}.
  {label,371}.
    {'%',{var_info,{x,0},[{type,{t_atom,[true]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_number,{0,4}}}]}}.
    {move,{atom,lt},{x,0}}.
    return.


{function, infer_relops_false, 2, 373}.
  {label,372}.
    {line,[{location,"beam_validator_SUITE.erl",1057}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,infer_relops_false},2}.
  {label,373}.
    {'%',{var_info,{x,0},[{type,{t_atom,[false]}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_union,{t_atom,any},
                                   {t_list,any,any},
                                   {t_number,{4,'+inf'}},
                                   {t_tuple,0,false,#{}},
                                   other}}]}}.
    {move,{atom,ge},{x,0}}.
    return.


{function, not_equal_inference, 1, 375}.
  {label,374}.
    {line,[{location,"beam_validator_SUITE.erl",1060}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,not_equal_inference},1}.
  {label,375}.
    {allocate,1,0}.
    {'catch',{y,0},{f,376}}.
    {move,{literal,[0]},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",1061}]}.
    {call,1,{f,416}}. % id/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,any},
                                   {t_list,any,any},
                                   {t_number,{0,'+inf'}},
                                   {t_tuple,0,false,#{}},
                                   other}}]}}.
    {call,1,{f,379}}. % not_equal_inference_1/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
  {label,376}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,377},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,377},[{x,1},2,{atom,function_clause}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,377}.
    {line,[{scope,[0]},{location,"beam_validator_SUITE.erl",1061}]}.
    {badmatch,{x,0}}.


{function, not_equal_inference_1, 1, 379}.
  {label,378}.
    {line,[{location,"beam_validator_SUITE.erl",1064}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,not_equal_inference_1},1}.
  {label,379}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,any},
                                   {t_list,any,any},
                                   {t_number,{0,'+inf'}},
                                   {t_tuple,0,false,#{}},
                                   other}}]}}.
    {bif,'=/=',
         {f,0},
         [{tr,{x,0},
              {t_union,{t_atom,any},
                       {t_list,any,any},
                       {t_number,{0,'+inf'}},
                       {t_tuple,0,false,#{}},
                       other}},
          nil],
         {x,1}}.
    {gc_bif,'div',{f,378},2,[{integer,0},{integer,0}],{x,2}}.
    {test,is_eq_exact,{f,378},[{x,1},{atom,true}]}.
    {move,{x,0},{x,1}}.
    {move,nil,{x,0}}.
    {call_only,2,{f,434}}. % '-not_equal_inference_1/1-lc$^0/1-0-'/2


{function, bad_bin_unit, 1, 381}.
  {label,380}.
    {line,[{location,"beam_validator_SUITE.erl",1067}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,bad_bin_unit},1}.
  {label,381}.
    {allocate,1,0}.
    {'catch',{y,0},{f,382}}.
    {move,{literal,<<1:1>>},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",1068}]}.
    {call,1,{f,385}}. % bad_bin_unit_1/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,382}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,383},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,383},[{x,1},2,{atom,function_clause}]}.
    {line,[{scope,[1,2]},{location,"beam_validator_SUITE.erl",1069}]}.
    {call,0,{f,394}}. % bad_bin_unit_2/0
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,383}.
    {line,[{scope,[0]},{location,"beam_validator_SUITE.erl",1068}]}.
    {badmatch,{x,0}}.


{function, bad_bin_unit_1, 1, 385}.
  {label,384}.
    {line,[{location,"beam_validator_SUITE.erl",1072}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,bad_bin_unit_1},1}.
  {label,385}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,1,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_create_bin,{f,387},
                   2,2,8,
                   {x,2},
                   {list,[{atom,integer},1,1,nil,{atom,ok},{integer,8}]}}.
    {put_tuple2,{x,2},{list,[{x,2}]}}.
    {test,is_lt,
          {f,386},
          [{tr,{x,2},{t_tuple,1,true,#{1 => {t_bitstring,8,false}}}},
           {atom,ok}]}.
    {move,{atom,true},{x,2}}.
    {jump,{f,388}}.
  {label,386}.
    {move,{integer,1},{x,2}}.
    {jump,{f,388}}.
  {label,387}.
    {move,{atom,bad_size},{x,2}}.
  {label,388}.
    {test,bs_get_integer2,
          {f,390},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},
               {t_union,{t_atom,[bad_size,true]},
                        none,
                        {t_integer,{1,1}},
                        none,none}},
           1,
           {field_flags,[{anno,[1072,{file,"beam_validator_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,390},{x,0},{commands,[{ensure_exactly,0}]}}.
    {allocate,2,3}.
    {move,{x,2},{y,0}}.
    {'try',{y,1},{f,389}}.
    {line,[{scope,[3]},{location,"beam_validator_SUITE.erl",1074}]}.
    {call,0,{f,392}}. % bad_bin_unit_1_a/0
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {try_end,{y,1}}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,432},2}. % '-bad_bin_unit_1/1-after$^0/0-0-'/1
  {label,389}.
    {try_case,{y,1}}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,432},2}. % '-bad_bin_unit_1/1-after$^0/0-0-'/1
  {label,390}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,384}}.


{function, bad_bin_unit_1_a, 0, 392}.
  {label,391}.
    {line,[{location,"beam_validator_SUITE.erl",1095}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,bad_bin_unit_1_a},0}.
  {label,392}.
    {move,{atom,ok},{x,0}}.
    return.


{function, bad_bin_unit_2, 0, 394}.
  {label,393}.
    {line,[{location,"beam_validator_SUITE.erl",1098}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,bad_bin_unit_2},0}.
  {label,394}.
    {move,{literal,<<>>},{x,0}}.
    {call_only,1,{f,422}}. % '-bad_bin_unit_2/0-lc$^0/1-0-'/1


{function, singleton_inference, 1, 396}.
  {label,395}.
    {line,[{location,"beam_validator_SUITE.erl",1107}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,singleton_inference},1}.
  {label,396}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {move,{atom,data_dir},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",1110}]}.
    {call_ext,2,{extfunc,proplists,get_value,2}}.
    {move,{literal,"singleton_inference.erl"},{x,1}}.
    {line,[{location,"beam_validator_SUITE.erl",1111}]}.
    {call_ext,2,{extfunc,filename,join,2}}.
    {move,{literal,[no_copt,no_bool_opt,no_ssa_opt]},{x,1}}.
    {line,[{location,"beam_validator_SUITE.erl",1113}]}.
    {call_ext,2,{extfunc,compile,file,2}}.
    {test,is_tagged_tuple,{f,398},[{x,0},2,{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,398},[{x,1},{atom,singleton_inference}]}.
    {line,[{location,"beam_validator_SUITE.erl",1115}]}.
    {call_ext,0,{extfunc,singleton_inference,test,0}}.
    {test,is_eq_exact,{f,397},[{x,0},{atom,ok}]}.
    {deallocate,0}.
    return.
  {label,397}.
    {badmatch,{x,0}}.
  {label,398}.
    {line,[{location,"beam_validator_SUITE.erl",1113}]}.
    {badmatch,{x,0}}.


{function, inert_update_type, 1, 400}.
  {label,399}.
    {line,[{location,"beam_validator_SUITE.erl",1121}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,inert_update_type},1}.
  {label,400}.
    {allocate,0,0}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",1122}]}.
    {call,1,{f,416}}. % id/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,any},
                                   {t_list,any,any},
                                   {t_number,{0,'+inf'}},
                                   {t_tuple,0,false,#{}},
                                   other}}]}}.
    {move,{x,0},{x,1}}.
    {move,{literal,<<"string">>},{x,0}}.
    {call_last,2,{f,402},0}. % hello/2


{function, hello, 2, 402}.
  {label,401}.
    {line,[{location,"beam_validator_SUITE.erl",1124}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,hello},2}.
  {label,402}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_union,{t_atom,any},
                                   {t_list,any,any},
                                   {t_number,{0,'+inf'}},
                                   {t_tuple,0,false,#{}},
                                   other}}]}}.
    {test_heap,13,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {put_tuple2,{x,1},{list,[{atom,some_atom},{x,1}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_tuple2,{x,0},{list,[{atom,sys_period},{x,0}]}}.
    {put_list,{x,0},{x,1},{x,0}}.
    {call_only,1,{f,404}}. % mike/1


{function, mike, 1, 404}.
  {label,403}.
    {line,[{location,"beam_validator_SUITE.erl",1127}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,mike},1}.
  {label,404}.
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_cons,
         {t_union,none,none,none,
          [{{2,{t_atom,[some_atom]}},
            {t_tuple,2,true,
             #{1 => {t_atom,[some_atom]},
               2 =>
                {t_union,
                 {t_atom,any},
                 {t_list,any,any},
                 {t_number,{0,'+inf'}},
                 {t_tuple,0,false,#{}},
                 other}}}},
           {{2,{t_atom,[sys_period]}},
            {t_tuple,2,true,
             #{1 => {t_atom,[sys_period]},
               2 =>
                {t_tuple,2,true,
                 #{1 => {t_bitstring,16,false},
                   2 =>
                    {t_union,
                     {t_atom,any},
                     {t_list,any,any},
                     {t_number,{0,'+inf'}},
                     {t_tuple,0,false,#{}},
                     other}}}}}}],
          none},
         nil}}]}}.
    {get_hd,{x,0},{x,0}}.
    {call_only,1,{f,406}}. % joe/1


{function, joe, 1, 406}.
  {label,405}.
    {line,[{location,"beam_validator_SUITE.erl",1129}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,joe},1}.
  {label,406}.
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,none,none,none,
         [{{2,{t_atom,[some_atom]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[some_atom]},
              2 =>
               {t_union,
                {t_atom,any},
                {t_list,any,any},
                {t_number,{0,'+inf'}},
                {t_tuple,0,false,#{}},
                other}}}},
          {{2,{t_atom,[sys_period]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[sys_period]},
              2 =>
               {t_tuple,2,true,
                #{1 => {t_bitstring,16,false},
                  2 =>
                   {t_union,
                    {t_atom,any},
                    {t_list,any,any},
                    {t_number,{0,'+inf'}},
                    {t_tuple,0,false,#{}},
                    other}}}}}}],
         none}}]}}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,
          {f,407},
          [{tr,{x,1},
               {t_union,{t_atom,any},
                        {t_list,any,any},
                        {t_number,{0,'+inf'}},
                        {t_tuple,0,false,#{}},
                        other}},
           {integer,42}]}.
    {move,{atom,some_atom},{x,0}}.
    return.
  {label,407}.
    {get_tuple_element,{x,0},0,{x,2}}.
    {test,is_eq_exact,
          {f,405},
          [{tr,{x,2},{t_atom,[some_atom,sys_period]}},{atom,sys_period}]}.
    {test_heap,4,2}.
    {get_tuple_element,{x,1},0,{x,0}}.
    {put_tuple2,{x,0},{list,[{integer,41},{integer,42},{x,0}]}}.
    return.


{function, range_inference, 1, 409}.
  {label,408}.
    {line,[{location,"beam_validator_SUITE.erl",1132}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,range_inference},1}.
  {label,409}.
    {allocate,0,0}.
    {move,{literal,<<"a">>},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",1133}]}.
    {call,1,{f,416}}. % id/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,any},
                                   {t_list,any,any},
                                   {t_number,{0,'+inf'}},
                                   {t_tuple,0,false,#{}},
                                   other}}]}}.
    {call,1,{f,411}}. % range_inference_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",1134}]}.
    {call,1,{f,416}}. % id/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,any},
                                   {t_list,any,any},
                                   {t_number,{0,'+inf'}},
                                   {t_tuple,0,false,#{}},
                                   other}}]}}.
    {call,1,{f,411}}. % range_inference_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<244,143,191,191>>},{x,0}}.
    {line,[{location,"beam_validator_SUITE.erl",1135}]}.
    {call,1,{f,416}}. % id/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,any},
                                   {t_list,any,any},
                                   {t_number,{0,'+inf'}},
                                   {t_tuple,0,false,#{}},
                                   other}}]}}.
    {call_last,1,{f,411},0}. % range_inference_1/1


{function, range_inference_1, 1, 411}.
  {label,410}.
    {line,[{location,"beam_validator_SUITE.erl",1139}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,range_inference_1},1}.
  {label,411}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,any},
                                   {t_list,any,any},
                                   {t_number,{0,'+inf'}},
                                   {t_tuple,0,false,#{}},
                                   other}},
                    accepts_match_context]}}.
    {test,bs_start_match3,{f,410},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_utf8,
          {f,413},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {field_flags,[{anno,[1139,{file,"beam_validator_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,413},{x,1},{commands,[{ensure_exactly,0}]}}.
    {line,[{location,"beam_validator_SUITE.erl",1140}]}.
    {gc_bif,abs,{f,0},3,[{tr,{x,2},{t_integer,{0,1114111}}}],{x,0}}.
    {gc_bif,'-',
            {f,0},
            3,
            [{integer,9223372036854775807},{tr,{x,0},{t_integer,{0,1114111}}}],
            {x,0}}.
    {test,is_ge,
          {f,412},
          [{tr,{x,2},{t_integer,{0,1114111}}},
           {tr,{x,0},{t_integer,{9223372036853661696,9223372036854775807}}}]}.
    {test,is_eq_exact,
          {f,414},
          [{tr,{x,0},{t_integer,{9223372036853661696,9223372036854775807}}},
           {integer,-2147483648}]}.
  {label,412}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,413}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,410}}.
  {label,414}.
    {case_end,{x,0}}.


{function, id, 1, 416}.
  {label,415}.
    {line,[{location,"beam_validator_SUITE.erl",1149}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,id},1}.
  {label,416}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,any},
                                   {t_list,any,any},
                                   {t_number,{0,'+inf'}},
                                   {t_tuple,0,false,#{}},
                                   other}}]}}.
    return.


{function, module_info, 0, 418}.
  {label,417}.
    {line,[]}.
    {func_info,{atom,beam_validator_SUITE},{atom,module_info},0}.
  {label,418}.
    {move,{atom,beam_validator_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 420}.
  {label,419}.
    {line,[]}.
    {func_info,{atom,beam_validator_SUITE},{atom,module_info},1}.
  {label,420}.
    {move,{x,0},{x,1}}.
    {move,{atom,beam_validator_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-bad_bin_unit_2/0-lc$^0/1-0-', 1, 422}.
  {label,421}.
    {line,[{location,"beam_validator_SUITE.erl",1101}]}.
    {func_info,{atom,beam_validator_SUITE},
               {atom,'-bad_bin_unit_2/0-lc$^0/1-0-'},
               1}.
  {label,422}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_create_bin,{f,423},
                   0,1,8,
                   {x,1},
                   {list,[{atom,integer},
                          1,1,nil,
                          {literal,<<0>>},
                          {integer,8}]}}.
    {move,{integer,1},{x,1}}.
    {jump,{f,424}}.
  {label,423}.
    {move,{atom,bad_size},{x,1}}.
  {label,424}.
    {test,bs_get_integer2,
          {f,425},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,1},
               {t_union,{t_atom,[bad_size]},none,{t_integer,{1,1}},none,none}},
           1,
           {field_flags,[{anno,[1099,{file,"beam_validator_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {bs_get_tail,{x,0},{x,2},2}.
    {move,{atom,ok},{x,0}}.
    {call_only,3,{f,430}}. % '-bad_bin_unit_2/0-lc$^1/1-1-'/3
  {label,425}.
    {bs_create_bin,{f,426},
                   0,1,8,
                   {x,1},
                   {list,[{atom,integer},
                          1,1,nil,
                          {literal,<<0>>},
                          {integer,8}]}}.
    {move,{integer,1},{x,1}}.
    {jump,{f,427}}.
  {label,426}.
    {move,{atom,bad_size},{x,1}}.
  {label,427}.
    {test,bs_skip_bits2,
          {f,428},
          [{x,0},
           {x,1},
           1,
           {field_flags,[{anno,[1099,{file,"beam_validator_SUITE.erl"}]},
                         unsigned,big]}]}.
    {call_only,1,{f,422}}. % '-bad_bin_unit_2/0-lc$^0/1-0-'/1
  {label,428}.
    {move,nil,{x,0}}.
    return.


{function, '-bad_bin_unit_2/0-lc$^1/1-1-', 3, 430}.
  {label,429}.
    {line,[{location,"beam_validator_SUITE.erl",1102}]}.
    {func_info,{atom,beam_validator_SUITE},
               {atom,'-bad_bin_unit_2/0-lc$^1/1-1-'},
               3}.
  {label,430}.
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,1}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,1,false}}]}}.
    {move,{literal,{bad_generator,ok}},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bad_bin_unit_1/1-after$^0/0-0-', 1, 432}.
  {label,431}.
    {line,[{location,"beam_validator_SUITE.erl",1073}]}.
    {func_info,{atom,beam_validator_SUITE},
               {atom,'-bad_bin_unit_1/1-after$^0/0-0-'},
               1}.
  {label,432}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,1}}}]}}.
    {bif,'not',{f,0},[{atom,ok}],{x,0}}.
    return.


{function, '-not_equal_inference_1/1-lc$^0/1-0-', 2, 434}.
  {label,433}.
    {line,[{location,"beam_validator_SUITE.erl",1065}]}.
    {func_info,{atom,beam_validator_SUITE},
               {atom,'-not_equal_inference_1/1-lc$^0/1-0-'},
               2}.
  {label,434}.
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_union,{t_atom,any},
                                   {t_cons,any,any},
                                   {t_number,{0,'+inf'}},
                                   {t_tuple,0,false,#{}},
                                   other}}]}}.
    {move,nil,{x,0}}.
    return.


{function, '-infer_relops/1-lc$^1/1-1-', 1, 436}.
  {label,435}.
    {line,[{location,"beam_validator_SUITE.erl",1044}]}.
    {func_info,{atom,beam_validator_SUITE},
               {atom,'-infer_relops/1-lc$^1/1-1-'},
               1}.
  {label,436}.
    {test,is_nonempty_list,{f,437},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{x,0},{y,0}}.
    {call,1,{f,367}}. % infer_relops_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ge,lt]}}]}}.
    {test,is_eq_exact,{f,439},[{tr,{x,0},{t_atom,[ge,lt]}},{atom,ge}]}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,436},1}. % '-infer_relops/1-lc$^1/1-1-'/1
  {label,437}.
    {test,is_nil,{f,438},[{x,0}]}.
    return.
  {label,438}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,439}.
    {badmatch,{atom,lt}}.


{function, '-infer_relops/1-lc$^0/1-0-', 1, 441}.
  {label,440}.
    {line,[{location,"beam_validator_SUITE.erl",1043}]}.
    {func_info,{atom,beam_validator_SUITE},
               {atom,'-infer_relops/1-lc$^0/1-0-'},
               1}.
  {label,441}.
    {test,is_nonempty_list,{f,442},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{x,0},{y,0}}.
    {call,1,{f,367}}. % infer_relops_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ge,lt]}}]}}.
    {test,is_eq_exact,{f,444},[{tr,{x,0},{t_atom,[ge,lt]}},{atom,lt}]}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,441},1}. % '-infer_relops/1-lc$^0/1-0-'/1
  {label,442}.
    {test,is_nil,{f,443},[{x,0}]}.
    return.
  {label,443}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,444}.
    {badmatch,{atom,ge}}.


{function, '-beam_val/1-lc$^1/1-1-', 1, 446}.
  {label,445}.
    {line,[{location,"beam_validator_SUITE.erl",912}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,'-beam_val/1-lc$^1/1-1-'},1}.
  {label,446}.
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_nonempty_list,{f,447},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{x,0},{y,0}}.
    {line,[{location,"beam_validator_SUITE.erl",911}]}.
    {call_ext,1,{extfunc,beam_validator,format_error,1}}.
    {call_ext,1,{extfunc,io,put_chars,1}}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,446},1}. % '-beam_val/1-lc$^1/1-1-'/1
  {label,447}.
    return.


{function, '-beam_val/1-lc$^0/1-0-', 1, 449}.
  {label,448}.
    {line,[{location,"beam_validator_SUITE.erl",910}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,'-beam_val/1-lc$^0/1-0-'},1}.
  {label,449}.
    {test,is_nonempty_list,{f,451},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tuple,{f,450},[{x,1}]}.
    {test,test_arity,{f,450},[{x,1},3]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_eq_exact,{f,450},[{x,2},{atom,beam_validator}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,449}}. % '-beam_val/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,450}.
    {call_only,1,{f,449}}. % '-beam_val/1-lc$^0/1-0-'/1
  {label,451}.
    {test,is_nil,{f,452},[{x,0}]}.
    return.
  {label,452}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-do_val/2-lc$^1/1-1-', 1, 454}.
  {label,453}.
    {line,[{location,"beam_validator_SUITE.erl",901}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,'-do_val/2-lc$^1/1-1-'},1}.
  {label,454}.
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_nonempty_list,{f,455},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{x,0},{y,0}}.
    {line,[{location,"beam_validator_SUITE.erl",900}]}.
    {call_ext,1,{extfunc,beam_validator,format_error,1}}.
    {call_ext,1,{extfunc,io,put_chars,1}}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,454},1}. % '-do_val/2-lc$^1/1-1-'/1
  {label,455}.
    return.


{function, '-do_val/2-lc$^0/1-0-', 1, 457}.
  {label,456}.
    {line,[{location,"beam_validator_SUITE.erl",899}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,'-do_val/2-lc$^0/1-0-'},1}.
  {label,457}.
    {test,is_nonempty_list,{f,459},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tuple,{f,458},[{x,1}]}.
    {test,test_arity,{f,458},[{x,1},3]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_eq_exact,{f,458},[{x,2},{atom,beam_validator}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,457}}. % '-do_val/2-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,458}.
    {call_only,1,{f,457}}. % '-do_val/2-lc$^0/1-0-'/1
  {label,459}.
    {test,is_nil,{f,460},[{x,0}]}.
    return.
  {label,460}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-transform_is/2-lc$^0/1-0-', 2, 462}.
  {label,461}.
    {line,[{location,"beam_validator_SUITE.erl",885}]}.
    {func_info,{atom,beam_validator_SUITE},
               {atom,'-transform_is/2-lc$^0/1-0-'},
               2}.
  {label,462}.
    {'%',{var_info,{x,1},[{type,{t_fun,1,any,{t_list,any,nil}}}]}}.
    {test,is_nonempty_list,{f,463},[{x,0}]}.
    {allocate,2,2}.
    {move,{x,1},{y,1}}.
    {get_list,{x,0},{x,1},{y,0}}.
    {move,{y,1},{x,0}}.
    {call,2,{f,262}}. % transform_is_1/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,5,true,
                                   #{1 => {t_atom,[function]},
                                     5 => {t_list,any,nil}}}}]}}.
    {move,{y,0},{x,2}}.
    {move,{y,1},{x,1}}.
    {move,{x,0},{y,1}}.
    {trim,1,1}.
    {move,{x,2},{x,0}}.
    {call,2,{f,462}}. % '-transform_is/2-lc$^0/1-0-'/2
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
  {label,463}.
    {test,is_nil,{f,464},[{x,0}]}.
    return.
  {label,464}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-transform_i/2-fun-1-', 2, 466}.
  {label,465}.
    {line,[{location,"beam_validator_SUITE.erl",882}]}.
    {func_info,{atom,beam_validator_SUITE},{atom,'-transform_i/2-fun-1-'},2}.
  {label,466}.
    {'%',{var_info,{x,1},[{type,{t_fun,1,any,any}}]}}.
    {call_only,2,{f,468}}. % '-transform_i/2-lc$^0/1-0-'/2


{function, '-transform_i/2-lc$^0/1-0-', 2, 468}.
  {label,467}.
    {line,[{location,"beam_validator_SUITE.erl",882}]}.
    {func_info,{atom,beam_validator_SUITE},
               {atom,'-transform_i/2-lc$^0/1-0-'},
               2}.
  {label,468}.
    {'%',{var_info,{x,1},[{type,{t_fun,1,any,any}}]}}.
    {test,is_nonempty_list,{f,469},[{x,0}]}.
    {allocate,2,2}.
    {move,{x,1},{y,1}}.
    {get_list,{x,0},{x,0},{y,0}}.
    {call_fun2,{atom,safe},1,{tr,{x,1},{t_fun,1,any,any}}}.
    {move,{y,0},{x,2}}.
    {move,{y,1},{x,1}}.
    {move,{x,0},{y,1}}.
    {trim,1,1}.
    {move,{x,2},{x,0}}.
    {call,2,{f,468}}. % '-transform_i/2-lc$^0/1-0-'/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,469}.
    {test,is_nil,{f,470},[{x,0}]}.
    return.
  {label,470}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-transform_remove/2-fun-1-', 2, 472}.
  {label,471}.
    {line,[{location,"beam_validator_SUITE.erl",879}]}.
    {func_info,{atom,beam_validator_SUITE},
               {atom,'-transform_remove/2-fun-1-'},
               2}.
  {label,472}.
    {'%',{var_info,{x,1},[{type,{t_fun,1,any,{t_atom,[false,true]}}}]}}.
    {call_only,2,{f,474}}. % '-transform_remove/2-lc$^0/1-0-'/2


{function, '-transform_remove/2-lc$^0/1-0-', 2, 474}.
  {label,473}.
    {line,[{location,"beam_validator_SUITE.erl",879}]}.
    {func_info,{atom,beam_validator_SUITE},
               {atom,'-transform_remove/2-lc$^0/1-0-'},
               2}.
  {label,474}.
    {'%',{var_info,{x,1},[{type,{t_fun,1,any,{t_atom,[false,true]}}}]}}.
    {test,is_nonempty_list,{f,476},[{x,0}]}.
    {allocate,3,2}.
    {move,{x,1},{y,2}}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{y,1},{x,0}}.
    {call_fun2,{atom,safe},1,{tr,{x,1},{t_fun,1,any,{t_atom,[false,true]}}}}.
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,475},[{x,0},{atom,true}]}.
    {move,{y,2},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,474},3}. % '-transform_remove/2-lc$^0/1-0-'/2
  {label,475}.
    {move,{y,2},{x,1}}.
    {move,{y,0},{x,0}}.
    {move,{y,1},{y,2}}.
    {trim,2,1}.
    {call,2,{f,474}}. % '-transform_remove/2-lc$^0/1-0-'/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,476}.
    {test,is_nil,{f,477},[{x,0}]}.
    return.
  {label,477}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-aliased_types_3/1-lc$^0/1-0-', 1, 479}.
  {label,478}.
    {line,[{location,"beam_validator_SUITE.erl",628}]}.
    {func_info,{atom,beam_validator_SUITE},
               {atom,'-aliased_types_3/1-lc$^0/1-0-'},
               1}.
  {label,479}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[gaffel,gurka]},nil}}]}}.
    {test,is_nonempty_list,{f,480},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,1,{f,479}}. % '-aliased_types_3/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_atom,[gaffel,gurka]},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,480}.
    return.


{function, '-remove_bs_save/1-fun-0-', 1, 482}.
  {label,481}.
    {line,[{location,"beam_validator_SUITE.erl",492}]}.
    {func_info,{atom,beam_validator_SUITE},
               {atom,'-remove_bs_save/1-fun-0-'},
               1}.
  {label,482}.
    {test,is_tagged_tuple,{f,483},[{x,0},3,{atom,bs_save2}]}.
    {move,{atom,true},{x,0}}.
    return.
  {label,483}.
    {move,{atom,false},{x,0}}.
    return.


{function, '-remove_bs_start_match/1-fun-0-', 1, 485}.
  {label,484}.
    {line,[{location,"beam_validator_SUITE.erl",487}]}.
    {func_info,{atom,beam_validator_SUITE},
               {atom,'-remove_bs_start_match/1-fun-0-'},
               1}.
  {label,485}.
    {test,is_tagged_tuple,{f,486},[{x,0},6,{atom,test}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {bif,'=:=',{f,0},[{x,0},{atom,bs_start_match2}],{x,0}}.
    return.
  {label,486}.
    {move,{atom,false},{x,0}}.
    return.


{function, '-do_bin_opt/3-lc$^0/1-0-', 1, 488}.
  {label,487}.
    {line,[{location,"beam_validator_SUITE.erl",469}]}.
    {func_info,{atom,beam_validator_SUITE},
               {atom,'-do_bin_opt/3-lc$^0/1-0-'},
               1}.
  {label,488}.
    {test,is_nonempty_list,{f,489},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{x,0},{y,0}}.
    {call,1,{f,127}}. % verify_bin_opt_error/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,488},1}. % '-do_bin_opt/3-lc$^0/1-0-'/1
  {label,489}.
    {test,is_nil,{f,490},[{x,0}]}.
    return.
  {label,490}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
