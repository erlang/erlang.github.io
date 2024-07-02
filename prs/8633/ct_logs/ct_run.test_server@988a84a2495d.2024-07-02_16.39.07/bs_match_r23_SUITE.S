{module, bs_match_r23_SUITE}.  %% version = 0

{exports, [{all,0},
           {bad_literals,1},
           {bad_phi_paths,1},
           {bad_size,1},
           {beam_bsm,1},
           {big_positions,1},
           {bin_and_float,1},
           {bin_tail,1},
           {binary_aliases,1},
           {binary_in_map,1},
           {bs_match,1},
           {bs_saved_position_units,1},
           {bs_start_match2_defs,1},
           {bs_sum,1},
           {calling_a_binary,1},
           {combine_empty_segments,1},
           {constant_propagation,1},
           {cover_beam_bool,1},
           {coverage,1},
           {coverage_external_ignore,2},
           {coverage_id,1},
           {dec_subidentifiers,1},
           {decode_integer,1},
           {degenerated_match,1},
           {empty_matches,1},
           {end_per_group,2},
           {end_per_suite,1},
           {end_per_testcase,2},
           {erl_689,1},
           {escape,1},
           {exceptions_after_match_failure,1},
           {expand_and_squeeze,1},
           {expression_before_match,1},
           {follow_fail_branch,1},
           {followed_by_catch,1},
           {function_clause,1},
           {get_payload,1},
           {gh_6410,1},
           {gh_6923,1},
           {good_literals,1},
           {groups,0},
           {guard,1},
           {hangs_forever,1},
           {haystack,1},
           {init_per_group,2},
           {init_per_suite,1},
           {init_per_testcase,2},
           {int_float,1},
           {is_ascii,1},
           {many_clauses,1},
           {map_and_binary,1},
           {match_string,1},
           {match_string_opt,1},
           {matched_out_size,1},
           {matches_on_parameter,1},
           {matching_and_andalso,1},
           {matching_meets_apply,1},
           {matching_meets_construction,1},
           {module_info,0},
           {module_info,1},
           {multiple_uses,1},
           {no_partition,1},
           {non_opt_eq,1},
           {null_fields,1},
           {num_slots_different,1},
           {otp_19019,1},
           {otp_5269,1},
           {otp_7188,1},
           {otp_7233,1},
           {otp_7240,1},
           {otp_7498,1},
           {parse_xml,1},
           {partitioned_bs_match,1},
           {restore_after_catch,1},
           {restore_on_call,1},
           {save_restore,1},
           {select_on_integer,1},
           {shared_sub_bins,1},
           {simon,1},
           {size_shadow,1},
           {skip_optional_tag,1},
           {suite,0},
           {trim_bs_start_match_resume,1},
           {unit,1},
           {unsafe_branch_caching,1},
           {verify_highest_opcode,1},
           {wfbm,1},
           {wiger,1},
           {zero_label,1},
           {zero_width,1}]}.

{attributes, []}.

{labels, 2292}.


{function, suite, 0, 2}.
  {label,1}.
    {line,[{location,"bs_match_r23_SUITE.erl",66}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,suite},0}.
  {label,2}.
    {move,{literal,[{ct_hooks,[ts_install_cth]},{timetrap,{minutes,1}}]},
          {x,0}}.
    return.


{function, all, 0, 4}.
  {label,3}.
    {line,[{location,"bs_match_r23_SUITE.erl",70}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,all},0}.
  {label,4}.
    {move,{literal,[{group,p}]},{x,0}}.
    return.


{function, groups, 0, 6}.
  {label,5}.
    {line,[{location,"bs_match_r23_SUITE.erl",73}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,groups},0}.
  {label,6}.
    {allocate,0,0}.
    {line,[{location,"bs_match_r23_SUITE.erl",74}]}.
    {call_ext,0,{extfunc,test_lib,parallel,0}}.
    {test_heap,6,1}.
    {put_tuple2,{x,0},
                {list,[{atom,p},
                       {x,0},
                       {literal,[verify_highest_opcode,size_shadow,int_float,
                                 otp_5269,null_fields,wiger,bin_tail,
                                 save_restore,expand_and_squeeze,
                                 partitioned_bs_match,function_clause,unit,
                                 shared_sub_bins,bin_and_float,
                                 dec_subidentifiers,skip_optional_tag,
                                 decode_integer,wfbm,degenerated_match,bs_sum,
                                 coverage,multiple_uses,zero_label,
                                 followed_by_catch,
                                 matching_meets_construction,simon,
                                 matching_and_andalso,otp_7188,otp_7233,
                                 otp_7240,otp_7498,match_string,zero_width,
                                 bad_size,haystack,cover_beam_bool,
                                 matched_out_size,follow_fail_branch,
                                 no_partition,calling_a_binary,binary_in_map,
                                 match_string_opt,select_on_integer,
                                 map_and_binary,unsafe_branch_caching,
                                 bad_literals,good_literals,
                                 constant_propagation,parse_xml,get_payload,
                                 escape,num_slots_different,beam_bsm,guard,
                                 is_ascii,non_opt_eq,expression_before_match,
                                 erl_689,restore_on_call,matches_on_parameter,
                                 big_positions,matching_meets_apply,
                                 bs_start_match2_defs,
                                 exceptions_after_match_failure,bad_phi_paths,
                                 many_clauses,combine_empty_segments,
                                 hangs_forever,bs_saved_position_units,
                                 empty_matches,trim_bs_start_match_resume,
                                 gh_6410,bs_match,binary_aliases,gh_6923,
                                 otp_19019]}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {deallocate,0}.
    return.


{function, init_per_suite, 1, 8}.
  {label,7}.
    {line,[{location,"bs_match_r23_SUITE.erl",103}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,init_per_suite},1}.
  {label,8}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{atom,bs_match_r23_SUITE},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",104}]}.
    {call_ext,1,{extfunc,test_lib,recompile,1}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, end_per_suite, 1, 10}.
  {label,9}.
    {line,[{location,"bs_match_r23_SUITE.erl",107}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,end_per_suite},1}.
  {label,10}.
    {move,{atom,ok},{x,0}}.
    return.


{function, init_per_group, 2, 12}.
  {label,11}.
    {line,[{location,"bs_match_r23_SUITE.erl",110}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,init_per_group},2}.
  {label,12}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_group, 2, 14}.
  {label,13}.
    {line,[{location,"bs_match_r23_SUITE.erl",113}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,end_per_group},2}.
  {label,14}.
    {move,{x,1},{x,0}}.
    return.


{function, init_per_testcase, 2, 16}.
  {label,15}.
    {line,[{location,"bs_match_r23_SUITE.erl",117}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,init_per_testcase},2}.
  {label,16}.
    {test,is_atom,{f,15},[{x,0}]}.
    {test,is_list,{f,15},[{x,1}]}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_testcase, 2, 18}.
  {label,17}.
    {line,[{location,"bs_match_r23_SUITE.erl",120}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,end_per_testcase},2}.
  {label,18}.
    {test,is_atom,{f,17},[{x,0}]}.
    {test,is_list,{f,17},[{x,1}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, verify_highest_opcode, 1, 20}.
  {label,19}.
    {line,[{location,"bs_match_r23_SUITE.erl",123}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,verify_highest_opcode},1}.
  {label,20}.
    {move,{atom,ok},{x,0}}.
    return.


{function, size_shadow, 1, 22}.
  {label,21}.
    {line,[{location,"bs_match_r23_SUITE.erl",137}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,size_shadow},1}.
  {label,22}.
    {test,is_list,{f,21},[{x,0}]}.
    {allocate_zero,1,0}.
    {line,[{location,"bs_match_r23_SUITE.erl",139}]}.
    {call,0,{f,33}}. % size_shadow_1/0
    {test,is_eq_exact,{f,31},[{x,0},{integer,7}]}.
    {move,{integer,8},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",140}]}.
    {call,1,{f,35}}. % size_shadow_2/1
    {test,is_eq_exact,{f,30},[{x,0},{integer,7}]}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",141}]}.
    {call,0,{f,37}}. % size_shadow_3/0
    {test,is_eq_exact,{f,29},[{x,0},{integer,7}]}.
    {move,{integer,8},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",142}]}.
    {call,1,{f,39}}. % size_shadow_4/1
    {test,is_eq_exact,{f,28},[{x,0},{atom,no}]}.
    {move,{integer,12},{x,1}}.
    {move,{literal,{any,term,goes}},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",145}]}.
    {call,2,{f,41}}. % size_shadow_5/2
    {move,{atom,whatever},{x,2}}.
    {move,{integer,-175},{x,1}}.
    {move,{x,0},{x,3}}.
    {move,{literal,<<161,1:4>>},{x,0}}.
    {call_fun,3}.
    {test,is_tuple,{f,27},[{x,0}]}.
    {test,test_arity,{f,27},[{x,0},4]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,27},[{x,1},{integer,2577}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,{f,27},[{x,1},{integer,-175}]}.
    {get_tuple_element,{x,0},3,{x,1}}.
    {test,is_eq_exact,{f,27},[{x,1},{atom,whatever}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,27},[{x,1},{literal,{any,term,goes}}]}.
    {move,{integer,13},{x,1}}.
    {move,{literal,{any,term,goes}},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",147}]}.
    {call,2,{f,43}}. % size_shadow_6/2
    {move,{atom,whatever},{x,2}}.
    {move,{literal,<<243,1:5>>},{x,1}}.
    {move,{x,0},{x,3}}.
    {move,{integer,42},{x,0}}.
    {call_fun,3}.
    {test,is_tuple,{f,26},[{x,0}]}.
    {test,test_arity,{f,26},[{x,0},4]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,26},[{x,1},{integer,7777}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,{f,26},[{x,1},{integer,42}]}.
    {get_tuple_element,{x,0},3,{x,1}}.
    {test,is_eq_exact,{f,26},[{x,1},{atom,whatever}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,26},[{x,1},{literal,{any,term,goes}}]}.
    {move,{literal,<<0,1,45>>},{x,1}}.
    {move,{literal,{int,1}},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",148}]}.
    {call,2,{f,47}}. % size_shadow_7/2
    {test,is_eq_exact,{f,25},[{x,0},{literal,{<<"-">>,<<>>}}]}.
    {'catch',{y,0},{f,23}}.
    {move,{literal,<<0,1,45>>},{x,1}}.
    {move,{literal,{int,42}},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",150}]}.
    {call,2,{f,47}}. % size_shadow_7/2
  {label,23}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,24},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,24},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,24},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,24},[{x,1},{atom,function_clause}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,24}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",149}]}.
    {badmatch,{x,0}}.
  {label,25}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",148}]}.
    {badmatch,{x,0}}.
  {label,26}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",146}]}.
    {badmatch,{x,0}}.
  {label,27}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",144}]}.
    {badmatch,{x,0}}.
  {label,28}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",142}]}.
    {badmatch,{x,0}}.
  {label,29}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",141}]}.
    {badmatch,{x,0}}.
  {label,30}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",140}]}.
    {badmatch,{x,0}}.
  {label,31}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",139}]}.
    {badmatch,{x,0}}.


{function, size_shadow_1, 0, 33}.
  {label,32}.
    {line,[{location,"bs_match_r23_SUITE.erl",153}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,size_shadow_1},0}.
  {label,33}.
    {allocate_zero,3,0}.
    {make_fun2,{f,2260},0,0,0}.
    {move,{x,0},{y,2}}.
    {make_fun2,{f,2257},0,0,0}.
    {move,{x,0},{y,1}}.
    {make_fun2,{f,2254},0,0,0}.
    {move,{x,0},{y,0}}.
    {make_fun2,{f,2248},0,0,0}.
    {test_heap,8,1}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{y,0},{x,0},{x,0}}.
    {put_list,{y,1},{x,0},{x,0}}.
    {put_list,{y,2},{x,0},{x,0}}.
    {move,{literal,<<16,0,7>>},{x,1}}.
    {call_last,2,{f,50},3}. % size_shadow_apply/2


{function, size_shadow_2, 1, 35}.
  {label,34}.
    {line,[{location,"bs_match_r23_SUITE.erl",170}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,size_shadow_2},1}.
  {label,35}.
    {allocate_zero,2,1}.
    {move,{x,0},{y,1}}.
    {make_fun2,{f,2244},0,0,1}.
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,0}}.
    {make_fun2,{f,2241},0,0,1}.
    {swap,{y,1},{x,0}}.
    {make_fun2,{f,2238},0,0,1}.
    {test_heap,6,1}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{y,1},{x,0},{x,0}}.
    {put_list,{y,0},{x,0},{x,0}}.
    {move,{literal,<<16,0,7>>},{x,1}}.
    {call_last,2,{f,50},2}. % size_shadow_apply/2


{function, size_shadow_3, 0, 37}.
  {label,36}.
    {line,[{location,"bs_match_r23_SUITE.erl",180}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,size_shadow_3},0}.
  {label,37}.
    {allocate_zero,2,0}.
    {make_fun2,{f,2235},0,0,0}.
    {move,{x,0},{y,1}}.
    {make_fun2,{f,2232},0,0,0}.
    {move,{x,0},{y,0}}.
    {make_fun2,{f,2229},0,0,0}.
    {test_heap,6,1}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{y,0},{x,0},{x,0}}.
    {put_list,{y,1},{x,0},{x,0}}.
    {move,{literal,<<16,0,7,0,16>>},{x,1}}.
    {call_last,2,{f,50},2}. % size_shadow_apply/2


{function, size_shadow_4, 1, 39}.
  {label,38}.
    {line,[{location,"bs_match_r23_SUITE.erl",191}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,size_shadow_4},1}.
  {label,39}.
    {allocate_zero,2,1}.
    {move,{x,0},{y,1}}.
    {make_fun2,{f,2226},0,0,1}.
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,0}}.
    {make_fun2,{f,2223},0,0,1}.
    {swap,{y,1},{x,0}}.
    {make_fun2,{f,2220},0,0,1}.
    {test_heap,6,1}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{y,1},{x,0},{x,0}}.
    {put_list,{y,0},{x,0},{x,0}}.
    {move,{literal,<<16,0,7,0,15>>},{x,1}}.
    {call_last,2,{f,50},2}. % size_shadow_apply/2


{function, size_shadow_5, 2, 41}.
  {label,40}.
    {line,[{location,"bs_match_r23_SUITE.erl",209}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,size_shadow_5},2}.
  {label,41}.
    {make_fun2,{f,2216},0,0,2}.
    return.


{function, size_shadow_6, 2, 43}.
  {label,42}.
    {line,[{location,"bs_match_r23_SUITE.erl",212}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,size_shadow_6},2}.
  {label,43}.
    {make_fun2,{f,2212},0,0,2}.
    return.


{function, fum, 4, 45}.
  {label,44}.
    {line,[{location,"bs_match_r23_SUITE.erl",215}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,fum},4}.
  {label,45}.
    {test_heap,5,4}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1},{x,2},{x,3}]}}.
    return.


{function, size_shadow_7, 2, 47}.
  {label,46}.
    {line,[{location,"bs_match_r23_SUITE.erl",218}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,size_shadow_7},2}.
  {label,47}.
    {'%',{var_info,{x,1},[accepts_match_context]}}.
    {test,bs_start_match3,{f,46},2,[{x,1}],{x,2}}.
    {bs_get_position,{x,2},{x,1},3}.
    {test,bs_get_integer2,
          {f,48},
          3,
          [{x,2},
           {integer,16},
           1,
           {field_flags,[{anno,[218,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_tagged_tuple,{f,48},[{x,0},2,{atom,int}]}.
    {get_tuple_element,{x,0},0,{x,4}}.
    {get_tuple_element,{x,0},1,{x,5}}.
    {test,is_eq_exact,{f,48},[{x,4},{atom,int}]}.
    {test,bs_get_binary2,
          {f,48},
          6,
          [{x,2},
           {x,3},
           8,
           {field_flags,[{anno,[218,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_binary2,
          {f,48},
          6,
          [{x,2},
           {atom,all},
           8,
           {field_flags,[{anno,[218,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,is_eq_exact,{f,48},[{x,3},{x,5}]}.
    {test_heap,3,7}.
    {put_tuple2,{x,0},{list,[{x,4},{x,6}]}}.
    return.
  {label,48}.
    {bs_set_position,{x,2},{x,1}}.
    {bs_get_tail,{x,2},{x,1},3}.
    {jump,{f,46}}.


{function, size_shadow_apply, 2, 50}.
  {label,49}.
    {line,[{location,"bs_match_r23_SUITE.erl",221}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,size_shadow_apply},2}.
  {label,50}.
    {test,is_nonempty_list,{f,49},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,3}}.
    {test,is_function2,{f,49},[{x,2},{integer,1}]}.
    {allocate,2,4}.
    {move,{x,3},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {line,[{location,"bs_match_r23_SUITE.erl",222}]}.
    {call_fun,1}.
    {move,{y,1},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{y,0},{x,0}}.
    {call_last,3,{f,52},2}. % size_shadow_apply/3


{function, size_shadow_apply, 3, 52}.
  {label,51}.
    {line,[{location,"bs_match_r23_SUITE.erl",224}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,size_shadow_apply},3}.
  {label,52}.
    {test,is_nonempty_list,{f,53},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,4}}.
    {test,is_function2,{f,51},[{x,3},{integer,1}]}.
    {allocate,3,5}.
    {move,{x,4},{y,0}}.
    {move,{x,2},{y,1}}.
    {move,{x,1},{y,2}}.
    {move,{x,1},{x,0}}.
    {move,{x,3},{x,1}}.
    {line,[{location,"bs_match_r23_SUITE.erl",225}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,54},[{x,0},{y,1}]}.
    {move,{y,1},{x,2}}.
    {move,{y,2},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,3,{f,52},3}. % size_shadow_apply/3
  {label,53}.
    {test,is_nil,{f,51},[{x,0}]}.
    {move,{x,2},{x,0}}.
    return.
  {label,54}.
    {badmatch,{x,0}}.


{function, int_float, 1, 56}.
  {label,55}.
    {line,[{location,"bs_match_r23_SUITE.erl",230}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,int_float},1}.
  {label,56}.
    {test,is_list,{f,55},[{x,0}]}.
    {move,{literal,<<64,249,45,208,0,0,0,0>>},{x,0}}.
    {test,bs_start_match3,{f,63},0,[{x,0}],{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {test,bs_get_float2,
          {f,63},
          2,
          [{x,0},
           {integer,64},
           1,
           {field_flags,[{anno,[232,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,63},[{x,2},{float,103133.0}]}.
    {test,bs_test_tail2,{f,63},[{x,0},0]}.
    {bs_set_position,{x,0},{x,1}}.
    {test,bs_get_float2,
          {f,62},
          1,
          [{x,0},
           {integer,64},
           1,
           {field_flags,[{anno,[233,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,is_eq_exact,{f,62},[{x,1},{float,103133.0}]}.
    {test,bs_test_tail2,{f,62},[{x,0},0]}.
    {line,[{location,"bs_match_r23_SUITE.erl",236}]}.
    {move,{integer,0},{x,0}}.
    {bs_add,{f,0},[{x,0},{integer,8},8],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_float,{f,0},{integer,64},1,{field_flags,[native]},{integer,42}}.
    {move,{x,0},{x,0}}.
    {allocate,0,1}.
    {call,1,{f,1968}}. % id/1
    {test,bs_start_match3,{f,61},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {test,bs_get_float2,
          {f,61},
          3,
          [{x,1},
           {integer,64},
           1,
           {field_flags,[{anno,[237,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,native]}],
          {x,3}}.
    {test,is_eq_exact,{f,61},[{x,3},{float,42.0}]}.
    {test,bs_test_tail2,{f,61},[{x,1},0]}.
    {bs_set_position,{x,1},{x,2}}.
    {test,bs_get_float2,
          {f,60},
          2,
          [{x,1},
           {integer,64},
           1,
           {field_flags,[{anno,[238,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,native]}],
          {x,2}}.
    {test,is_eq_exact,{f,60},[{x,2},{float,42.0}]}.
    {test,bs_test_tail2,{f,60},[{x,1},0]}.
    {move,{literal,<<64,80,0,0,0,0,0,0>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",241}]}.
    {call,1,{f,1968}}. % id/1
    {test,bs_start_match3,{f,59},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {test,bs_get_float2,
          {f,59},
          3,
          [{x,1},
           {integer,64},
           1,
           {field_flags,[{anno,[242,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,59},[{x,3},{float,64.0}]}.
    {test,bs_test_tail2,{f,59},[{x,1},0]}.
    {bs_set_position,{x,1},{x,2}}.
    {test,bs_get_float2,
          {f,58},
          2,
          [{x,1},
           {integer,64},
           1,
           {field_flags,[{anno,[243,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,58},[{x,2},{float,64.0}]}.
    {test,bs_test_tail2,{f,58},[{x,1},0]}.
    {move,{atom,default},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",246}]}.
    {call,1,{f,1968}}. % id/1
    {test,is_eq_exact,{f,57},[{x,0},{atom,default}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,57}.
    {case_end,{x,0}}.
  {label,58}.
    {line,[{location,"bs_match_r23_SUITE.erl",243}]}.
    {badmatch,{x,0}}.
  {label,59}.
    {line,[{location,"bs_match_r23_SUITE.erl",242}]}.
    {badmatch,{x,0}}.
  {label,60}.
    {line,[{location,"bs_match_r23_SUITE.erl",238}]}.
    {badmatch,{x,0}}.
  {label,61}.
    {line,[{location,"bs_match_r23_SUITE.erl",237}]}.
    {badmatch,{x,0}}.
  {label,62}.
    {line,[{location,"bs_match_r23_SUITE.erl",233}]}.
    {badmatch,{literal,<<64,249,45,208,0,0,0,0>>}}.
  {label,63}.
    {line,[{location,"bs_match_r23_SUITE.erl",232}]}.
    {badmatch,{literal,<<64,249,45,208,0,0,0,0>>}}.


{function, otp_5269, 1, 65}.
  {label,64}.
    {line,[{location,"bs_match_r23_SUITE.erl",255}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,otp_5269},1}.
  {label,65}.
    {test,is_list,{f,64},[{x,0}]}.
    {allocate,0,0}.
    {make_fun2,{f,2209},0,0,0}.
    {move,{integer,7},{x,1}}.
    {line,[{location,"bs_match_r23_SUITE.erl",256}]}.
    {call,2,{f,1443}}. % check/2
    {make_fun2,{f,2206},0,0,0}.
    {move,{integer,7},{x,1}}.
    {line,[{location,"bs_match_r23_SUITE.erl",261}]}.
    {call,2,{f,1443}}. % check/2
    {make_fun2,{f,2203},0,0,0}.
    {move,{integer,32},{x,1}}.
    {line,[{location,"bs_match_r23_SUITE.erl",263}]}.
    {call,2,{f,1443}}. % check/2
    {make_fun2,{f,2196},0,0,0}.
    {move,{literal," "},{x,1}}.
    {line,[{location,"bs_match_r23_SUITE.erl",265}]}.
    {call,2,{f,1443}}. % check/2
    {make_fun2,{f,2184},0,0,0}.
    {move,{literal,[19]},{x,1}}.
    {line,[{location,"bs_match_r23_SUITE.erl",267}]}.
    {call,2,{f,1443}}. % check/2
    {make_fun2,{f,2182},0,0,0}.
    {move,{integer,28},{x,1}}.
    {line,[{location,"bs_match_r23_SUITE.erl",271}]}.
    {call,2,{f,1443}}. % check/2
    {make_fun2,{f,2179},0,0,0}.
    {move,{literal,{2,<<"AB">>,<<"CD">>}},{x,1}}.
    {line,[{location,"bs_match_r23_SUITE.erl",273}]}.
    {call,2,{f,1443}}. % check/2
    {make_fun2,{f,2172},0,0,0}.
    {move,{literal,[1,2]},{x,1}}.
    {line,[{location,"bs_match_r23_SUITE.erl",278}]}.
    {call,2,{f,1443}}. % check/2
    {make_fun2,{f,2168},0,0,0}.
    {move,{atom,ok},{x,1}}.
    {line,[{location,"bs_match_r23_SUITE.erl",282}]}.
    {call,2,{f,1443}}. % check/2
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, null_fields, 1, 67}.
  {label,66}.
    {line,[{location,"bs_match_r23_SUITE.erl",292}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,null_fields},1}.
  {label,67}.
    {test,is_list,{f,66},[{x,0}]}.
    {allocate,0,0}.
    {make_fun2,{f,2164},0,0,0}.
    {move,{atom,tail},{x,1}}.
    {line,[{location,"bs_match_r23_SUITE.erl",293}]}.
    {call,2,{f,1443}}. % check/2
    {make_fun2,{f,2160},0,0,0}.
    {move,{atom,tail},{x,1}}.
    {line,[{location,"bs_match_r23_SUITE.erl",300}]}.
    {call,2,{f,1443}}. % check/2
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, wiger, 1, 69}.
  {label,68}.
    {line,[{location,"bs_match_r23_SUITE.erl",308}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,wiger},1}.
  {label,69}.
    {test,is_list,{f,68},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<3>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",309}]}.
    {call,1,{f,76}}. % wcheck/1
    {test,is_eq_exact,{f,74},[{x,0},{atom,ok1}]}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",310}]}.
    {call,1,{f,76}}. % wcheck/1
    {test,is_eq_exact,{f,73},[{x,0},{atom,ok2}]}.
    {move,{literal,<<4>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",311}]}.
    {call,1,{f,76}}. % wcheck/1
    {test,is_eq_exact,{f,72},[{x,0},{atom,ok3}]}.
    {move,{literal,<<1,2,3,4>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",312}]}.
    {call,1,{f,76}}. % wcheck/1
    {test,is_eq_exact,{f,71},[{x,0},{literal,{error,<<1,2,3,4>>}}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",313}]}.
    {call,1,{f,76}}. % wcheck/1
    {test,is_eq_exact,{f,70},[{x,0},{literal,{error,<<>>}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,70}.
    {badmatch,{x,0}}.
  {label,71}.
    {line,[{location,"bs_match_r23_SUITE.erl",312}]}.
    {badmatch,{x,0}}.
  {label,72}.
    {line,[{location,"bs_match_r23_SUITE.erl",311}]}.
    {badmatch,{x,0}}.
  {label,73}.
    {line,[{location,"bs_match_r23_SUITE.erl",310}]}.
    {badmatch,{x,0}}.
  {label,74}.
    {line,[{location,"bs_match_r23_SUITE.erl",309}]}.
    {badmatch,{x,0}}.


{function, wcheck, 1, 76}.
  {label,75}.
    {line,[{location,"bs_match_r23_SUITE.erl",316}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,wcheck},1}.
  {label,76}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,80},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_integer2,
          {f,79},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[316,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,77},[{x,1},0]}.
    {test,is_eq,{f,77},[{x,2},{integer,3}]}.
    {move,{atom,ok1},{x,0}}.
    return.
  {label,77}.
    {test,bs_test_tail2,{f,78},[{x,1},16]}.
    {move,{atom,ok2},{x,0}}.
    return.
  {label,78}.
    {test,bs_test_tail2,{f,79},[{x,1},0]}.
    {move,{atom,ok3},{x,0}}.
    return.
  {label,79}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,error},{x,0}]}}.
    return.
  {label,80}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,error},{x,0}]}}.
    return.


{function, bin_tail, 1, 82}.
  {label,81}.
    {line,[{location,"bs_match_r23_SUITE.erl",325}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,bin_tail},1}.
  {label,82}.
    {test,is_list,{f,81},[{x,0}]}.
    {allocate_zero,7,0}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",327}]}.
    {call,2,{f,110}}. % bin_tail_c/2
    {test,is_eq_exact,{f,108},[{x,0},{integer,97}]}.
    {move,{integer,2},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_r23_SUITE.erl",328}]}.
    {call,2,{f,110}}. % bin_tail_c/2
    {test,is_eq_exact,{f,107},[{x,0},{integer,99}]}.
    {move,{integer,4},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_r23_SUITE.erl",329}]}.
    {call,2,{f,110}}. % bin_tail_c/2
    {test,is_eq_exact,{f,106},[{x,0},{integer,101}]}.
    {'catch',{y,6},{f,83}}.
    {move,{integer,5},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_r23_SUITE.erl",330}]}.
    {call,2,{f,110}}. % bin_tail_c/2
  {label,83}.
    {catch_end,{y,6}}.
    {test,is_tagged_tuple,{f,105},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,105},[{x,1},{atom,'EXIT'}]}.
    {'catch',{y,5},{f,84}}.
    {move,{integer,5},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_match_r23_SUITE.erl",331}]}.
    {call,2,{f,118}}. % bin_tail_c_var/2
  {label,84}.
    {catch_end,{y,5}}.
    {test,is_tagged_tuple,{f,104},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,104},[{x,1},{atom,'EXIT'}]}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,"\n"},{location,"bs_match_r23_SUITE.erl",333}]}.
    {call,2,{f,122}}. % bin_tail_d/2
    {test,is_eq_exact,{f,103},[{x,0},{integer,97}]}.
    {move,{integer,8},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,"\n"},{location,"bs_match_r23_SUITE.erl",334}]}.
    {call,2,{f,122}}. % bin_tail_d/2
    {test,is_eq_exact,{f,102},[{x,0},{integer,98}]}.
    {move,{integer,24},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,"\n"},{location,"bs_match_r23_SUITE.erl",335}]}.
    {call,2,{f,122}}. % bin_tail_d/2
    {test,is_eq_exact,{f,101},[{x,0},{integer,100}]}.
    {'catch',{y,4},{f,85}}.
    {move,{integer,1},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,"\n"},{location,"bs_match_r23_SUITE.erl",336}]}.
    {call,2,{f,126}}. % bin_tail_d_dead/2
  {label,85}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,100},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,100},[{x,1},{atom,'EXIT'}]}.
    {'catch',{y,3},{f,86}}.
    {move,{integer,9},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_r23_SUITE.erl",337}]}.
    {call,2,{f,126}}. % bin_tail_d_dead/2
  {label,86}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,99},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,99},[{x,1},{atom,'EXIT'}]}.
    {'catch',{y,2},{f,87}}.
    {move,{integer,40},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",338}]}.
    {call,2,{f,126}}. % bin_tail_d_dead/2
  {label,87}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,98},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,98},[{x,1},{atom,'EXIT'}]}.
    {'catch',{y,1},{f,88}}.
    {move,{integer,1},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",339}]}.
    {call,2,{f,130}}. % bin_tail_d_var/2
  {label,88}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,97},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,97},[{x,1},{atom,'EXIT'}]}.
    {move,{literal,<<129>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",341}]}.
    {call,1,{f,134}}. % bin_tail_e/1
    {test,is_eq_exact,{f,96},[{x,0},{atom,ok}]}.
    {move,{literal,<<161,0,0,0,0,0,0,0,42>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",342}]}.
    {call,1,{f,134}}. % bin_tail_e/1
    {test,is_eq_exact,{f,95},[{x,0},{atom,ok}]}.
    {move,{literal,<<225,0,0,0,0,0,0,0,42>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",343}]}.
    {call,1,{f,134}}. % bin_tail_e/1
    {test,is_eq_exact,{f,94},[{x,0},{atom,error}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",344}]}.
    {call,1,{f,134}}. % bin_tail_e/1
    {test,is_eq_exact,{f,93},[{x,0},{atom,error}]}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",346}]}.
    {call_ext,1,{extfunc,erlang,md5,1}}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",347}]}.
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{integer,3},8],{x,1}}.
    {bs_append,{f,0},{x,1},0,2,8,{x,0},{field_flags,[]},{x,1}}.
    {bs_put_string,3,{string,<<"abc">>}}.
    {move,{x,1},{x,1}}.
    {move,{x,0},{y,6}}.
    {move,{integer,3},{x,2}}.
    {swap,{x,0},{x,1}}.
    {call,3,{f,147}}. % bin_tail_f/3
    {test,is_eq_exact,{f,92},[{x,0},{literal,<<"abc">>}]}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",348}]}.
    {move,{integer,0},{x,0}}.
    {bs_add,{f,0},[{x,0},{integer,3},8],{x,0}}.
    {bs_append,{f,0},{x,0},0,1,8,{y,6},{field_flags,[]},{x,0}}.
    {bs_put_string,3,{string,<<"abc">>}}.
    {move,{x,0},{x,0}}.
    {move,{integer,999},{x,2}}.
    {move,{y,6},{x,1}}.
    {call,3,{f,147}}. % bin_tail_f/3
    {test,is_eq_exact,{f,91},[{x,0},{atom,error}]}.
    {'catch',{y,0},{f,89}}.
    {move,{y,6},{x,1}}.
    {move,{integer,0},{x,2}}.
    {init,{y,6}}.
    {move,{literal,<<0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",349}]}.
    {call,3,{f,147}}. % bin_tail_f/3
  {label,89}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,90},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,90},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,90},[{x,1}]}.
    {test,test_arity,{f,90},[{x,1},2]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,7}.
    return.
  {label,90}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",349}]}.
    {badmatch,{x,0}}.
  {label,91}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",348}]}.
    {badmatch,{x,0}}.
  {label,92}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",347}]}.
    {badmatch,{x,0}}.
  {label,93}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",344}]}.
    {badmatch,{x,0}}.
  {label,94}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",343}]}.
    {badmatch,{x,0}}.
  {label,95}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",342}]}.
    {badmatch,{x,0}}.
  {label,96}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",341}]}.
    {badmatch,{x,0}}.
  {label,97}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",339}]}.
    {badmatch,{x,0}}.
  {label,98}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",338}]}.
    {badmatch,{x,0}}.
  {label,99}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",337}]}.
    {badmatch,{x,0}}.
  {label,100}.
    {line,[{scope,"\b"},{location,"bs_match_r23_SUITE.erl",336}]}.
    {badmatch,{x,0}}.
  {label,101}.
    {line,[{scope,"\n"},{location,"bs_match_r23_SUITE.erl",335}]}.
    {badmatch,{x,0}}.
  {label,102}.
    {line,[{scope,"\n"},{location,"bs_match_r23_SUITE.erl",334}]}.
    {badmatch,{x,0}}.
  {label,103}.
    {line,[{scope,"\n"},{location,"bs_match_r23_SUITE.erl",333}]}.
    {badmatch,{x,0}}.
  {label,104}.
    {line,[{scope,"\n"},{location,"bs_match_r23_SUITE.erl",331}]}.
    {badmatch,{x,0}}.
  {label,105}.
    {line,[{scope,"\f"},{location,"bs_match_r23_SUITE.erl",330}]}.
    {badmatch,{x,0}}.
  {label,106}.
    {line,[{scope,[14]},{location,"bs_match_r23_SUITE.erl",329}]}.
    {badmatch,{x,0}}.
  {label,107}.
    {line,[{scope,[14]},{location,"bs_match_r23_SUITE.erl",328}]}.
    {badmatch,{x,0}}.
  {label,108}.
    {line,[{scope,[14]},{location,"bs_match_r23_SUITE.erl",327}]}.
    {badmatch,{x,0}}.


{function, bin_tail_c, 2, 110}.
  {label,109}.
    {line,[{location,"bs_match_r23_SUITE.erl",353}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,bin_tail_c},2}.
  {label,110}.
    {allocate_zero,4,2}.
    {move,{x,1},{y,2}}.
    {move,{x,0},{y,3}}.
    {line,[{location,"bs_match_r23_SUITE.erl",354}]}.
    {call,2,{f,114}}. % bin_tail_c_dead/2
    {move,{x,0},{y,1}}.
    {test,bs_start_match3,{f,112},0,[{y,3}],{x,0}}.
    {test,bs_skip_bits2,
          {f,112},
          [{x,0},
           {y,2},
           8,
           {field_flags,[{anno,[355,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_skip_bits2,
          {f,112},
          [{x,0},
           {integer,8},
           1,
           {field_flags,[{anno,[355,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,112},
          1,
          [{x,0},
           {atom,all},
           8,
           {field_flags,[{anno,[355,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {y,0}}.
    {move,{y,2},{x,1}}.
    {move,{y,3},{x,0}}.
    {move,{y,0},{y,3}}.
    {move,{y,1},{y,2}}.
    {trim,2,2}.
    {line,[{location,"bs_match_r23_SUITE.erl",356}]}.
    {call,2,{f,118}}. % bin_tail_c_var/2
    {test,is_tuple,{f,111},[{x,0}]}.
    {test,test_arity,{f,111},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,111},[{x,1},{y,0}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,111},[{x,1},{y,1}]}.
    {move,{y,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,111}.
    {badmatch,{x,0}}.
  {label,112}.
    {line,[{location,"bs_match_r23_SUITE.erl",355}]}.
    {badmatch,{y,3}}.


{function, bin_tail_c_dead, 2, 114}.
  {label,113}.
    {line,[{location,"bs_match_r23_SUITE.erl",359}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,bin_tail_c_dead},2}.
  {label,114}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,116},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_skip_bits2,
          {f,115},
          [{x,2},
           {x,1},
           8,
           {field_flags,[{anno,[360,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_integer2,
          {f,115},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[360,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_test_unit,{f,115},[{x,2},8]}.
    {move,{x,1},{x,0}}.
    return.
  {label,115}.
    {bs_set_position,{x,2},{x,0}}.
    {bs_get_tail,{x,2},{x,0},3}.
    {line,[{location,"bs_match_r23_SUITE.erl",360}]}.
    {badmatch,{x,0}}.
  {label,116}.
    {badmatch,{x,0}}.


{function, bin_tail_c_var, 2, 118}.
  {label,117}.
    {line,[{location,"bs_match_r23_SUITE.erl",363}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,bin_tail_c_var},2}.
  {label,118}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,120},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_skip_bits2,
          {f,119},
          [{x,2},
           {x,1},
           8,
           {field_flags,[{anno,[364,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_integer2,
          {f,119},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[364,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_get_binary2,
          {f,119},
          3,
          [{x,2},
           {atom,all},
           8,
           {field_flags,[{anno,[364,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,1},{x,3}]}}.
    return.
  {label,119}.
    {bs_set_position,{x,2},{x,0}}.
    {bs_get_tail,{x,2},{x,0},3}.
    {line,[{location,"bs_match_r23_SUITE.erl",364}]}.
    {badmatch,{x,0}}.
  {label,120}.
    {badmatch,{x,0}}.


{function, bin_tail_d, 2, 122}.
  {label,121}.
    {line,[{location,"bs_match_r23_SUITE.erl",368}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,bin_tail_d},2}.
  {label,122}.
    {allocate_zero,4,2}.
    {move,{x,1},{y,2}}.
    {move,{x,0},{y,3}}.
    {line,[{location,"bs_match_r23_SUITE.erl",369}]}.
    {call,2,{f,126}}. % bin_tail_d_dead/2
    {move,{x,0},{y,1}}.
    {test,bs_start_match3,{f,124},0,[{y,3}],{x,0}}.
    {test,bs_skip_bits2,
          {f,124},
          [{x,0},
           {y,2},
           1,
           {field_flags,[{anno,[370,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_skip_bits2,
          {f,124},
          [{x,0},
           {integer,8},
           1,
           {field_flags,[{anno,[370,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,124},
          1,
          [{x,0},
           {atom,all},
           8,
           {field_flags,[{anno,[370,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {y,0}}.
    {move,{y,2},{x,1}}.
    {move,{y,3},{x,0}}.
    {move,{y,0},{y,3}}.
    {move,{y,1},{y,2}}.
    {trim,2,2}.
    {line,[{location,"bs_match_r23_SUITE.erl",371}]}.
    {call,2,{f,130}}. % bin_tail_d_var/2
    {test,is_tuple,{f,123},[{x,0}]}.
    {test,test_arity,{f,123},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,123},[{x,1},{y,0}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,123},[{x,1},{y,1}]}.
    {move,{y,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,123}.
    {badmatch,{x,0}}.
  {label,124}.
    {line,[{location,"bs_match_r23_SUITE.erl",370}]}.
    {badmatch,{y,3}}.


{function, bin_tail_d_dead, 2, 126}.
  {label,125}.
    {line,[{location,"bs_match_r23_SUITE.erl",374}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,bin_tail_d_dead},2}.
  {label,126}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,128},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_skip_bits2,
          {f,127},
          [{x,2},
           {x,1},
           1,
           {field_flags,[{anno,[375,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_integer2,
          {f,127},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[375,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_test_unit,{f,127},[{x,2},8]}.
    {move,{x,1},{x,0}}.
    return.
  {label,127}.
    {bs_set_position,{x,2},{x,0}}.
    {bs_get_tail,{x,2},{x,0},3}.
    {line,[{location,"bs_match_r23_SUITE.erl",375}]}.
    {badmatch,{x,0}}.
  {label,128}.
    {badmatch,{x,0}}.


{function, bin_tail_d_var, 2, 130}.
  {label,129}.
    {line,[{location,"bs_match_r23_SUITE.erl",378}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,bin_tail_d_var},2}.
  {label,130}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,132},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_skip_bits2,
          {f,131},
          [{x,2},
           {x,1},
           1,
           {field_flags,[{anno,[379,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_integer2,
          {f,131},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[379,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_get_binary2,
          {f,131},
          3,
          [{x,2},
           {atom,all},
           8,
           {field_flags,[{anno,[379,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,1},{x,3}]}}.
    return.
  {label,131}.
    {bs_set_position,{x,2},{x,0}}.
    {bs_get_tail,{x,2},{x,0},3}.
    {line,[{location,"bs_match_r23_SUITE.erl",379}]}.
    {badmatch,{x,0}}.
  {label,132}.
    {badmatch,{x,0}}.


{function, bin_tail_e, 1, 134}.
  {label,133}.
    {line,[{location,"bs_match_r23_SUITE.erl",382}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,bin_tail_e},1}.
  {label,134}.
    {allocate_zero,2,1}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_match_r23_SUITE.erl",383}]}.
    {call,1,{f,141}}. % bin_tail_e_dead/1
    {select_val,{x,0},{f,139},{list,[{atom,error},{f,136},{atom,ok},{f,135}]}}.
  {label,135}.
    {test,bs_start_match3,{f,138},0,[{y,1}],{x,0}}.
    {test,bs_skip_bits2,
          {f,138},
          [{x,0},
           {integer,8},
           1,
           {field_flags,[{anno,[385,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,138},
          1,
          [{x,0},
           {atom,all},
           8,
           {field_flags,[{anno,[385,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {y,0}}.
    {move,{y,1},{x,0}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {line,[{location,"bs_match_r23_SUITE.erl",386}]}.
    {call,1,{f,144}}. % bin_tail_e_var/1
    {test,is_eq_exact,{f,137},[{x,0},{y,0}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,136}.
    {move,{y,1},{x,0}}.
    {call_last,1,{f,144},2}. % bin_tail_e_var/1
  {label,137}.
    {badmatch,{x,0}}.
  {label,138}.
    {line,[{location,"bs_match_r23_SUITE.erl",385}]}.
    {badmatch,{y,1}}.
  {label,139}.
    {line,[{location,"bs_match_r23_SUITE.erl",383}]}.
    {case_end,{x,0}}.


{function, bin_tail_e_dead, 1, 141}.
  {label,140}.
    {line,[{location,"bs_match_r23_SUITE.erl",392}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,bin_tail_e_dead},1}.
  {label,141}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,142},1,[{x,0}],{x,0}}.
    {test,bs_match_string,{f,142},[{x,0},2,{string,<<128>>}]}.
    {test,bs_skip_bits2,
          {f,142},
          [{x,0},
           {integer,1},
           1,
           {field_flags,[{anno,[396,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_match_string,{f,142},[{x,0},5,{string,<<"\b">>}]}.
    {test,bs_test_unit,{f,142},[{x,0},8]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,142}.
    {move,{atom,error},{x,0}}.
    return.


{function, bin_tail_e_var, 1, 144}.
  {label,143}.
    {line,[{location,"bs_match_r23_SUITE.erl",400}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,bin_tail_e_var},1}.
  {label,144}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,145},1,[{x,0}],{x,0}}.
    {test,bs_match_string,{f,145},[{x,0},2,{string,<<128>>}]}.
    {test,bs_skip_bits2,
          {f,145},
          [{x,0},
           {integer,1},
           1,
           {field_flags,[{anno,[404,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_match_string,{f,145},[{x,0},5,{string,<<"\b">>}]}.
    {test,bs_get_binary2,
          {f,145},
          1,
          [{x,0},
           {atom,all},
           8,
           {field_flags,[{anno,[404,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,0}}.
    return.
  {label,145}.
    {move,{atom,error},{x,0}}.
    return.


{function, bin_tail_f, 3, 147}.
  {label,146}.
    {line,[{location,"bs_match_r23_SUITE.erl",408}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,bin_tail_f},3}.
  {label,147}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,150},3,[{x,0}],{x,3}}.
    {bs_get_position,{x,3},{x,0},4}.
    {test,bs_get_binary2,
          {f,149},
          4,
          [{x,3},
           {integer,16},
           8,
           {field_flags,[{anno,[410,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {bs_get_position,{x,3},{x,5},5}.
    {test,bs_get_binary2,
          {f,148},
          6,
          [{x,3},
           {x,2},
           8,
           {field_flags,[{anno,[410,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,148},[{x,3},0]}.
    {test,is_eq_exact,{f,149},[{x,4},{x,1}]}.
    {move,{x,2},{x,0}}.
    return.
  {label,148}.
    {bs_set_position,{x,3},{x,5}}.
    {test,bs_test_unit,{f,149},[{x,3},8]}.
    {test,is_eq_exact,{f,149},[{x,4},{x,1}]}.
    {move,{atom,error},{x,0}}.
    return.
  {label,149}.
    {bs_set_position,{x,3},{x,0}}.
    {bs_get_tail,{x,3},{x,0},4}.
    {line,[{location,"bs_match_r23_SUITE.erl",409}]}.
    {case_end,{x,0}}.
  {label,150}.
    {case_end,{x,0}}.


{function, save_restore, 1, 152}.
  {label,151}.
    {line,[{location,"bs_match_r23_SUITE.erl",416}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,save_restore},1}.
  {label,152}.
    {test,is_list,{f,151},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",417}]}.
    {call,1,{f,175}}. % save_restore_1/1
    {test,is_eq_exact,{f,173},[{x,0},{integer,0}]}.
    {move,{literal,<<77,128>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",418}]}.
    {call,1,{f,175}}. % save_restore_1/1
    {test,is_eq_exact,{f,172},[{x,0},{literal,{1,3456}}]}.
    {move,{literal,<<128,121,200,178>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",419}]}.
    {call,1,{f,175}}. % save_restore_1/1
    {test,is_eq_exact,{f,171},[{x,0},{literal,{2,7981234}}]}.
    {move,{literal,<<0,0,0,177,224,2,214,206>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",420}]}.
    {call,1,{f,175}}. % save_restore_1/1
    {test,is_eq_exact,{f,170},[{x,0},{literal,{3,763967493838}}]}.
    {move,{literal,<<" x">>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",426}]}.
    {call,1,{f,183}}. % lll/1
    {test,is_eq_exact,{f,169},[{x,0},{literal,{" ",<<"x">>}}]}.
    {move,{literal,<<" x">>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",427}]}.
    {call,1,{f,186}}. % mmm/1
    {test,is_eq_exact,{f,168},[{x,0},{literal,{" ",<<"x">>}}]}.
    {move,{literal,<<" x">>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",428}]}.
    {call,1,{f,192}}. % nnn/1
    {test,is_eq_exact,{f,167},[{x,0},{literal,{" ",<<"x">>}}]}.
    {move,{literal,<<" x">>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",429}]}.
    {call,1,{f,198}}. % ooo/1
    {test,is_eq_exact,{f,166},[{x,0},{literal,{" ",<<"x">>}}]}.
    {move,{literal,<<".x">>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",431}]}.
    {call,1,{f,183}}. % lll/1
    {test,is_eq_exact,{f,165},[{x,0},{literal,{".",<<"x">>}}]}.
    {move,{literal,<<".x">>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",432}]}.
    {call,1,{f,186}}. % mmm/1
    {test,is_eq_exact,{f,164},[{x,0},{literal,{".",<<"x">>}}]}.
    {move,{literal,<<".x">>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",433}]}.
    {call,1,{f,192}}. % nnn/1
    {test,is_eq_exact,{f,163},[{x,0},{literal,{".",<<"x">>}}]}.
    {move,{literal,<<".x">>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",434}]}.
    {call,1,{f,198}}. % ooo/1
    {test,is_eq_exact,{f,162},[{x,0},{literal,{".",<<"x">>}}]}.
    {move,{literal,<<"-x">>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",436}]}.
    {call,1,{f,183}}. % lll/1
    {test,is_eq_exact,{f,161},[{x,0},{literal,{"-",<<"x">>}}]}.
    {move,{literal,<<"-x">>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",437}]}.
    {call,1,{f,186}}. % mmm/1
    {test,is_eq_exact,{f,160},[{x,0},{literal,{"-",<<"x">>}}]}.
    {move,{literal,<<"-x">>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",438}]}.
    {call,1,{f,192}}. % nnn/1
    {test,is_eq_exact,{f,159},[{x,0},{literal,{"-",<<"x">>}}]}.
    {move,{literal,<<"-x">>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",439}]}.
    {call,1,{f,198}}. % ooo/1
    {test,is_eq_exact,{f,158},[{x,0},{literal,{"-",<<"x">>}}]}.
    {move,{literal,<<3,9>>},{x,1}}.
    {move,{literal,<<3,9>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",441}]}.
    {call,2,{f,202}}. % multiple_matches/2
    {test,is_eq_exact,{f,157},[{x,0},{atom,a}]}.
    {move,{literal,<<3,231>>},{x,1}}.
    {move,{literal,<<3,9>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",442}]}.
    {call,2,{f,202}}. % multiple_matches/2
    {test,is_eq_exact,{f,156},[{x,0},{atom,b}]}.
    {move,{literal,<<"9">>},{x,1}}.
    {move,{literal,<<3,9>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",443}]}.
    {call,2,{f,202}}. % multiple_matches/2
    {test,is_eq_exact,{f,155},[{x,0},{atom,c}]}.
    {move,{literal,<<4,87>>},{x,1}}.
    {move,{literal,<<17>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",444}]}.
    {call,2,{f,202}}. % multiple_matches/2
    {test,is_eq_exact,{f,154},[{x,0},{atom,d}]}.
    {move,{literal,<<"ÿÿÿÿÿÿÿÿ">>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",447}]}.
    {call,1,{f,208}}. % bad_float_unpack_match/1
    {test,is_eq_exact,{f,153},[{x,0},{integer,-1}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,153}.
    {move,{atom,bad_return_value_probably_NaN},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",449}]}.
    {call_ext_last,1,{extfunc,ct,fail,1},0}.
  {label,154}.
    {line,[{location,"bs_match_r23_SUITE.erl",444}]}.
    {badmatch,{x,0}}.
  {label,155}.
    {line,[{location,"bs_match_r23_SUITE.erl",443}]}.
    {badmatch,{x,0}}.
  {label,156}.
    {line,[{location,"bs_match_r23_SUITE.erl",442}]}.
    {badmatch,{x,0}}.
  {label,157}.
    {line,[{location,"bs_match_r23_SUITE.erl",441}]}.
    {badmatch,{x,0}}.
  {label,158}.
    {line,[{location,"bs_match_r23_SUITE.erl",439}]}.
    {badmatch,{x,0}}.
  {label,159}.
    {line,[{location,"bs_match_r23_SUITE.erl",438}]}.
    {badmatch,{x,0}}.
  {label,160}.
    {line,[{location,"bs_match_r23_SUITE.erl",437}]}.
    {badmatch,{x,0}}.
  {label,161}.
    {line,[{location,"bs_match_r23_SUITE.erl",436}]}.
    {badmatch,{x,0}}.
  {label,162}.
    {line,[{location,"bs_match_r23_SUITE.erl",434}]}.
    {badmatch,{x,0}}.
  {label,163}.
    {line,[{location,"bs_match_r23_SUITE.erl",433}]}.
    {badmatch,{x,0}}.
  {label,164}.
    {line,[{location,"bs_match_r23_SUITE.erl",432}]}.
    {badmatch,{x,0}}.
  {label,165}.
    {line,[{location,"bs_match_r23_SUITE.erl",431}]}.
    {badmatch,{x,0}}.
  {label,166}.
    {line,[{location,"bs_match_r23_SUITE.erl",429}]}.
    {badmatch,{x,0}}.
  {label,167}.
    {line,[{location,"bs_match_r23_SUITE.erl",428}]}.
    {badmatch,{x,0}}.
  {label,168}.
    {line,[{location,"bs_match_r23_SUITE.erl",427}]}.
    {badmatch,{x,0}}.
  {label,169}.
    {line,[{location,"bs_match_r23_SUITE.erl",426}]}.
    {badmatch,{x,0}}.
  {label,170}.
    {line,[{location,"bs_match_r23_SUITE.erl",420}]}.
    {badmatch,{x,0}}.
  {label,171}.
    {line,[{location,"bs_match_r23_SUITE.erl",419}]}.
    {badmatch,{x,0}}.
  {label,172}.
    {line,[{location,"bs_match_r23_SUITE.erl",418}]}.
    {badmatch,{x,0}}.
  {label,173}.
    {line,[{location,"bs_match_r23_SUITE.erl",417}]}.
    {badmatch,{x,0}}.


{function, save_restore_1, 1, 175}.
  {label,174}.
    {line,[{location,"bs_match_r23_SUITE.erl",452}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,save_restore_1},1}.
  {label,175}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,181},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_integer2,
          {f,179},
          2,
          [{x,1},
           {integer,2},
           1,
           {field_flags,[{anno,[454,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {select_val,{x,2},
                {f,179},
                {list,[{integer,0},
                       {f,178},
                       {integer,1},
                       {f,177},
                       {integer,2},
                       {f,176}]}}.
  {label,176}.
    {test,bs_get_integer2,
          {f,179},
          2,
          [{x,1},
           {integer,30},
           1,
           {field_flags,[{anno,[456,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,179},[{x,1},0]}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{integer,2},{x,2}]}}.
    return.
  {label,177}.
    {test,bs_get_integer2,
          {f,179},
          2,
          [{x,1},
           {integer,14},
           1,
           {field_flags,[{anno,[455,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,179},[{x,1},0]}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{integer,1},{x,2}]}}.
    return.
  {label,178}.
    {test,bs_test_tail2,{f,179},[{x,1},6]}.
    {move,{integer,0},{x,0}}.
    return.
  {label,179}.
    {bs_set_position,{x,1},{x,0}}.
    {test,bs_get_integer2,
          {f,180},
          2,
          [{x,1},
           {integer,64},
           1,
           {field_flags,[{anno,[457,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,180},[{x,1},0]}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{integer,3},{x,2}]}}.
    return.
  {label,180}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_r23_SUITE.erl",453}]}.
    {case_end,{x,0}}.
  {label,181}.
    {case_end,{x,0}}.


{function, lll, 1, 183}.
  {label,182}.
    {line,[{location,"bs_match_r23_SUITE.erl",460}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,lll},1}.
  {label,183}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,182},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_integer2,
          {f,184},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[460,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,184},
          3,
          [{x,1},
           {atom,all},
           8,
           {field_flags,[{anno,[460,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test_heap,5,4}.
    {put_list,{x,2},nil,{x,0}}.
    {put_tuple2,{x,0},{list,[{x,0},{x,3}]}}.
    return.
  {label,184}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,182}}.


{function, mmm, 1, 186}.
  {label,185}.
    {line,[{location,"bs_match_r23_SUITE.erl",462}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,mmm},1}.
  {label,186}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,185},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_integer2,
          {f,190},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[462,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_position,{x,1},{x,3},3}.
    {select_val,{x,2},
                {f,189},
                {list,[{integer,32},{f,188},{integer,46},{f,187}]}}.
  {label,187}.
    {test,bs_match_string,{f,189},[{x,1},16,{string,<<"..">>}]}.
    {test,bs_get_binary2,
          {f,189},
          4,
          [{x,1},
           {atom,all},
           8,
           {field_flags,[{anno,[462,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {move,{x,4},{x,0}}.
    return.
  {label,188}.
    {test,bs_match_string,{f,189},[{x,1},16,{string,<<"- ">>}]}.
    {test,bs_get_binary2,
          {f,189},
          4,
          [{x,1},
           {atom,all},
           8,
           {field_flags,[{anno,[463,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {move,{x,4},{x,0}}.
    return.
  {label,189}.
    {bs_set_position,{x,1},{x,3}}.
    {test,bs_get_binary2,
          {f,190},
          3,
          [{x,1},
           {atom,all},
           8,
           {field_flags,[{anno,[464,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test_heap,5,4}.
    {put_list,{x,2},nil,{x,0}}.
    {put_tuple2,{x,0},{list,[{x,0},{x,3}]}}.
    return.
  {label,190}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,185}}.


{function, nnn, 1, 192}.
  {label,191}.
    {line,[{location,"bs_match_r23_SUITE.erl",466}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,nnn},1}.
  {label,192}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,191},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_integer2,
          {f,196},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[466,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_position,{x,1},{x,3},3}.
    {select_val,{x,2},
                {f,195},
                {list,[{integer,32},{f,194},{integer,46},{f,193}]}}.
  {label,193}.
    {test,bs_match_string,{f,195},[{x,1},16,{string,<<"..">>}]}.
    {test,bs_get_binary2,
          {f,195},
          4,
          [{x,1},
           {atom,all},
           8,
           {field_flags,[{anno,[466,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {move,{x,4},{x,0}}.
    return.
  {label,194}.
    {test,bs_match_string,{f,195},[{x,1},16,{string,<<"- ">>}]}.
    {test,bs_get_binary2,
          {f,195},
          4,
          [{x,1},
           {atom,all},
           8,
           {field_flags,[{anno,[467,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {move,{x,4},{x,0}}.
    return.
  {label,195}.
    {bs_set_position,{x,1},{x,3}}.
    {test,bs_get_binary2,
          {f,196},
          3,
          [{x,1},
           {atom,all},
           8,
           {field_flags,[{anno,[468,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test_heap,5,4}.
    {put_list,{x,2},nil,{x,0}}.
    {put_tuple2,{x,0},{list,[{x,0},{x,3}]}}.
    return.
  {label,196}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,191}}.


{function, ooo, 1, 198}.
  {label,197}.
    {line,[{location,"bs_match_r23_SUITE.erl",470}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,ooo},1}.
  {label,198}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,197},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_integer2,
          {f,200},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[470,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_position,{x,1},{x,3},3}.
    {test,is_eq_exact,{f,199},[{x,2},{integer,32}]}.
    {test,bs_match_string,{f,199},[{x,1},16,{string,<<"- ">>}]}.
    {test,bs_get_binary2,
          {f,199},
          4,
          [{x,1},
           {atom,all},
           8,
           {field_flags,[{anno,[470,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {move,{x,4},{x,0}}.
    return.
  {label,199}.
    {bs_set_position,{x,1},{x,3}}.
    {test,bs_get_binary2,
          {f,200},
          3,
          [{x,1},
           {atom,all},
           8,
           {field_flags,[{anno,[471,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test_heap,5,4}.
    {put_list,{x,2},nil,{x,0}}.
    {put_tuple2,{x,0},{list,[{x,0},{x,3}]}}.
    return.
  {label,200}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,197}}.


{function, multiple_matches, 2, 202}.
  {label,201}.
    {line,[{location,"bs_match_r23_SUITE.erl",473}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,multiple_matches},2}.
  {label,202}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,201},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_get_integer2,
          {f,205},
          3,
          [{x,2},
           {integer,16},
           1,
           {field_flags,[{anno,[473,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,205},[{x,2},0]}.
    {test,bs_start_match3,{f,205},4,[{x,1}],{x,4}}.
    {bs_get_position,{x,4},{x,5},5}.
    {test,bs_get_integer2,
          {f,204},
          6,
          [{x,4},
           {integer,16},
           1,
           {field_flags,[{anno,[473,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,bs_test_tail2,{f,204},[{x,4},0]}.
    {test,is_eq_exact,{f,203},[{x,6},{x,3}]}.
    {move,{atom,a},{x,0}}.
    return.
  {label,203}.
    {move,{atom,b},{x,0}}.
    return.
  {label,204}.
    {bs_set_position,{x,4},{x,5}}.
    {test,bs_test_tail2,{f,205},[{x,4},8]}.
    {move,{atom,c},{x,0}}.
    return.
  {label,205}.
    {bs_set_position,{x,2},{x,0}}.
    {test,bs_test_tail2,{f,206},[{x,2},8]}.
    {test,bs_start_match3,{f,206},3,[{x,1}],{x,0}}.
    {test,bs_test_tail2,{f,206},[{x,0},16]}.
    {move,{atom,d},{x,0}}.
    return.
  {label,206}.
    {bs_get_tail,{x,2},{x,0},3}.
    {jump,{f,201}}.


{function, bad_float_unpack_match, 1, 208}.
  {label,207}.
    {line,[{location,"bs_match_r23_SUITE.erl",478}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,bad_float_unpack_match},1}.
  {label,208}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,207},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_float2,
          {f,209},
          2,
          [{x,1},
           {integer,64},
           1,
           {field_flags,[{anno,[478,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,209},[{x,1},0]}.
    {move,{x,2},{x,0}}.
    return.
  {label,209}.
    {bs_set_position,{x,1},{x,0}}.
    {test,bs_get_integer2,
          {f,210},
          2,
          [{x,1},
           {integer,64},
           1,
           {field_flags,[{anno,[479,{file,"bs_match_r23_SUITE.erl"}]},
                         signed,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,210},[{x,1},0]}.
    {move,{x,2},{x,0}}.
    return.
  {label,210}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,207}}.


{function, partitioned_bs_match, 1, 212}.
  {label,211}.
    {line,[{location,"bs_match_r23_SUITE.erl",482}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,partitioned_bs_match},1}.
  {label,212}.
    {test,is_list,{f,211},[{x,0}]}.
    {allocate_zero,3,0}.
    {move,{literal,<<42,1,2,3>>},{x,1}}.
    {move,{atom,blurf},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",483}]}.
    {call,2,{f,225}}. % partitioned_bs_match/2
    {test,is_eq_exact,{f,223},[{x,0},{literal,<<1,2,3>>}]}.
    {move,{literal,<<7,8,15,13>>},{x,1}}.
    {move,{integer,10},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",484}]}.
    {call,2,{f,225}}. % partitioned_bs_match/2
    {test,is_eq_exact,{f,222},[{x,0},{atom,error}]}.
    {move,{literal,{a,tuple,is,'not',a,binary}},{x,1}}.
    {move,{integer,100},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",485}]}.
    {call,2,{f,225}}. % partitioned_bs_match/2
    {test,is_eq_exact,{f,221},[{x,0},{atom,error}]}.
    {move,{literal,<<>>},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",486}]}.
    {call,2,{f,225}}. % partitioned_bs_match/2
    {test,is_eq_exact,{f,220},[{x,0},{atom,ok}]}.
    {'catch',{y,2},{f,213}}.
    {move,{atom,blurf},{x,1}}.
    {move,{integer,-1},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",488}]}.
    {call,2,{f,225}}. % partitioned_bs_match/2
  {label,213}.
    {catch_end,{y,2}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[-1,blurf]},{x,1}}.
    {move,{atom,partitioned_bs_match},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r23_SUITE.erl",487}]}.
    {call,3,{f,963}}. % fc/3
    {'catch',{y,1},{f,214}}.
    {move,{literal,<<1,2,3>>},{x,1}}.
    {move,{integer,-1},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r23_SUITE.erl",490}]}.
    {call,2,{f,225}}. % partitioned_bs_match/2
  {label,214}.
    {catch_end,{y,1}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[-1,<<1,2,3>>]},{x,1}}.
    {move,{atom,partitioned_bs_match},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r23_SUITE.erl",489}]}.
    {call,3,{f,963}}. % fc/3
    {move,{literal,<<17,1,2,3>>},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r23_SUITE.erl",491}]}.
    {call,2,{f,232}}. % partitioned_bs_match_2/2
    {test,is_eq_exact,{f,219},[{x,0},{literal,{17,<<1,2,3>>}}]}.
    {move,{literal,<<17,1,2,3>>},{x,1}}.
    {move,{integer,7},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",492}]}.
    {call,2,{f,232}}. % partitioned_bs_match_2/2
    {test,is_eq_exact,{f,218},[{x,0},{literal,{7,<<1,2,3>>}}]}.
    {'catch',{y,0},{f,215}}.
    {move,{literal,<<0,0,0:1>>},{x,1}}.
    {move,{integer,4},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",495}]}.
    {call,2,{f,232}}. % partitioned_bs_match_2/2
  {label,215}.
    {catch_end,{y,0}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[4,<<0,0,0:1>>]},{x,1}}.
    {move,{atom,partitioned_bs_match_2},{x,0}}.
    {line,[{scope,[1,2]},{location,"bs_match_r23_SUITE.erl",494}]}.
    {call,3,{f,963}}. % fc/3
    {move,{literal,<<"*">>},{x,1}}.
    {move,{atom,anything},{x,0}}.
    {line,[{scope,[1,2]},{location,"bs_match_r23_SUITE.erl",497}]}.
    {call,2,{f,236}}. % partitioned_bs_match_3/2
    {test,is_eq_exact,{f,217},[{x,0},{atom,anything}]}.
    {move,{integer,2},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",498}]}.
    {call,2,{f,236}}. % partitioned_bs_match_3/2
    {test,is_eq_exact,{f,216},[{x,0},{atom,ok}]}.
    {deallocate,3}.
    return.
  {label,216}.
    {badmatch,{x,0}}.
  {label,217}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",497}]}.
    {badmatch,{x,0}}.
  {label,218}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",492}]}.
    {badmatch,{x,0}}.
  {label,219}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",491}]}.
    {badmatch,{x,0}}.
  {label,220}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",486}]}.
    {badmatch,{x,0}}.
  {label,221}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",485}]}.
    {badmatch,{x,0}}.
  {label,222}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",484}]}.
    {badmatch,{x,0}}.
  {label,223}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",483}]}.
    {badmatch,{x,0}}.


{function, partitioned_bs_match, 2, 225}.
  {label,224}.
    {line,[{location,"bs_match_r23_SUITE.erl",502}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,partitioned_bs_match},2}.
  {label,225}.
    {'%',{var_info,{x,1},[accepts_match_context]}}.
    {test,bs_start_match3,{f,227},2,[{x,1}],{x,2}}.
    {bs_get_position,{x,2},{x,1},3}.
    {test,bs_match_string,{f,226},[{x,2},8,{string,<<"*">>}]}.
    {test,bs_get_binary2,
          {f,226},
          3,
          [{x,2},
           {atom,all},
           8,
           {field_flags,[{anno,[502,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {move,{x,3},{x,0}}.
    return.
  {label,226}.
    {test,is_ge,{f,228},[{integer,0},{x,0}]}.
    {bs_set_position,{x,2},{x,1}}.
    {bs_get_tail,{x,2},{x,1},3}.
    {test,is_eq_exact,{f,224},[{x,1},{literal,<<>>}]}.
    {jump,{f,230}}.
  {label,227}.
    {test,is_lt,{f,229},[{integer,0},{x,0}]}.
  {label,228}.
    {move,{atom,error},{x,0}}.
    return.
  {label,229}.
    {test,is_eq_exact,{f,224},[{x,1},{literal,<<>>}]}.
  {label,230}.
    {move,{atom,ok},{x,0}}.
    return.


{function, partitioned_bs_match_2, 2, 232}.
  {label,231}.
    {line,[{location,"bs_match_r23_SUITE.erl",509}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,partitioned_bs_match_2},2}.
  {label,232}.
    {'%',{var_info,{x,1},[accepts_match_context]}}.
    {test,bs_start_match3,{f,231},2,[{x,1}],{x,2}}.
    {bs_get_position,{x,2},{x,1},3}.
    {test,bs_get_integer2,
          {f,234},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[509,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,234},
          4,
          [{x,2},
           {atom,all},
           8,
           {field_flags,[{anno,[509,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,is_eq_exact,{f,233},[{x,0},{integer,1}]}.
    {test_heap,3,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4}]}}.
    return.
  {label,233}.
    {test_heap,3,5}.
    {put_tuple2,{x,0},{list,[{x,0},{x,4}]}}.
    return.
  {label,234}.
    {bs_set_position,{x,2},{x,1}}.
    {bs_get_tail,{x,2},{x,1},3}.
    {jump,{f,231}}.


{function, partitioned_bs_match_3, 2, 236}.
  {label,235}.
    {line,[{location,"bs_match_r23_SUITE.erl",514}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,partitioned_bs_match_3},2}.
  {label,236}.
    {'%',{var_info,{x,1},[accepts_match_context]}}.
    {test,bs_start_match3,{f,238},2,[{x,1}],{x,2}}.
    {test,bs_test_tail2,{f,237},[{x,2},8]}.
    return.
  {label,237}.
    {bs_get_tail,{x,2},{x,1},3}.
    {jump,{f,235}}.
  {label,238}.
    {test,is_eq_exact,{f,235},[{x,1},{integer,2}]}.
    {test,is_eq_exact,{f,235},[{x,0},{integer,1}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, function_clause, 1, 240}.
  {label,239}.
    {line,[{location,"bs_match_r23_SUITE.erl",517}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,function_clause},1}.
  {label,240}.
    {test,is_list,{f,239},[{x,0}]}.
    {allocate_zero,4,0}.
    {move,{literal,<<0,7,0,7,42>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",518}]}.
    {call,1,{f,250}}. % function_clause_1/1
    {test,is_eq_exact,{f,248},[{x,0},{atom,ok}]}.
    {'catch',{y,3},{f,241}}.
    {move,{literal,<<0,1,2,3>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_r23_SUITE.erl",520}]}.
    {call,1,{f,250}}. % function_clause_1/1
  {label,241}.
    {catch_end,{y,3}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<0,1,2,3>>]},{x,1}}.
    {move,{atom,function_clause_1},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_r23_SUITE.erl",519}]}.
    {call,3,{f,963}}. % fc/3
    {'catch',{y,2},{f,242}}.
    {move,{literal,<<0,7,0,1,2,3>>},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_r23_SUITE.erl",522}]}.
    {call,1,{f,250}}. % function_clause_1/1
  {label,242}.
    {catch_end,{y,2}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<0,1,2,3>>]},{x,1}}.
    {move,{atom,function_clause_1},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r23_SUITE.erl",521}]}.
    {call,3,{f,963}}. % fc/3
    {move,{literal,<<0,7,0,7,42>>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r23_SUITE.erl",524}]}.
    {call,1,{f,254}}. % function_clause_2/1
    {test,is_eq_exact,{f,247},[{x,0},{atom,ok}]}.
    {move,{literal,<<"ÿ">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",525}]}.
    {call,1,{f,254}}. % function_clause_2/1
    {test,is_eq_exact,{f,246},[{x,0},{atom,ok}]}.
    {move,{literal,<<13:4>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",526}]}.
    {call,1,{f,254}}. % function_clause_2/1
    {test,is_eq_exact,{f,245},[{x,0},{atom,ok}]}.
    {'catch',{y,1},{f,243}}.
    {move,{literal,<<0,1,2,3>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",528}]}.
    {call,1,{f,254}}. % function_clause_2/1
  {label,243}.
    {catch_end,{y,1}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<0,1,2,3>>]},{x,1}}.
    {move,{atom,function_clause_2},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r23_SUITE.erl",527}]}.
    {call,3,{f,963}}. % fc/3
    {'catch',{y,0},{f,244}}.
    {move,{literal,<<0,7,0,1,2,3>>},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r23_SUITE.erl",530}]}.
    {call,1,{f,254}}. % function_clause_2/1
  {label,244}.
    {catch_end,{y,0}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<0,1,2,3>>]},{x,1}}.
    {move,{atom,function_clause_2},{x,0}}.
    {line,[{scope,[1,2]},{location,"bs_match_r23_SUITE.erl",529}]}.
    {call,3,{f,963}}. % fc/3
    {move,{atom,ok},{x,0}}.
    {deallocate,4}.
    return.
  {label,245}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",526}]}.
    {badmatch,{x,0}}.
  {label,246}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",525}]}.
    {badmatch,{x,0}}.
  {label,247}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",524}]}.
    {badmatch,{x,0}}.
  {label,248}.
    {line,[{scope,"\b"},{location,"bs_match_r23_SUITE.erl",518}]}.
    {badmatch,{x,0}}.


{function, function_clause_1, 1, 250}.
  {label,249}.
    {line,[{location,"bs_match_r23_SUITE.erl",534}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,function_clause_1},1}.
  {label,250}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,249},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_integer2,
          {f,252},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[534,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,251},[{x,2},{integer,0}]}.
    {test,bs_match_string,{f,251},[{x,1},8,{string,<<7>>}]}.
    {test,bs_test_unit,{f,252},[{x,1},8]}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,250}}. % function_clause_1/1
  {label,251}.
    {test,bs_test_tail2,{f,252},[{x,1},0]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,252}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,249}}.


{function, function_clause_2, 1, 254}.
  {label,253}.
    {line,[{location,"bs_match_r23_SUITE.erl",539}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,function_clause_2},1}.
  {label,254}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,253},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_integer2,
          {f,256},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[539,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,255},[{x,2},{integer,0}]}.
    {test,bs_match_string,{f,255},[{x,1},8,{string,<<7>>}]}.
    {test,bs_test_unit,{f,256},[{x,1},8]}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,254}}. % function_clause_2/1
  {label,255}.
    {test,bs_test_tail2,{f,256},[{x,1},0]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,256}.
    {bs_set_position,{x,1},{x,0}}.
    {test,bs_test_tail2,{f,257},[{x,1},4]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,257}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,253}}.


{function, unit, 1, 259}.
  {label,258}.
    {line,[{location,"bs_match_r23_SUITE.erl",546}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,unit},1}.
  {label,259}.
    {test,is_list,{f,258},[{x,0}]}.
    {allocate_zero,7,0}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",547}]}.
    {call,1,{f,287}}. % peek1/1
    {test,is_eq_exact,{f,285},[{x,0},{integer,42}]}.
    {move,{literal,<<43,1,2>>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_r23_SUITE.erl",548}]}.
    {call,1,{f,287}}. % peek1/1
    {test,is_eq_exact,{f,284},[{x,0},{integer,43}]}.
    {move,{literal,<<43,1,2,1:1>>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_r23_SUITE.erl",549}]}.
    {call,1,{f,287}}. % peek1/1
    {test,is_eq_exact,{f,283},[{x,0},{integer,43}]}.
    {move,{literal,<<43,1,2,3:2>>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_r23_SUITE.erl",550}]}.
    {call,1,{f,287}}. % peek1/1
    {test,is_eq_exact,{f,282},[{x,0},{integer,43}]}.
    {move,{literal,<<43,1,2,127:7>>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_r23_SUITE.erl",551}]}.
    {call,1,{f,287}}. % peek1/1
    {test,is_eq_exact,{f,281},[{x,0},{integer,43}]}.
    {move,{literal,<<"c">>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_r23_SUITE.erl",553}]}.
    {call,1,{f,293}}. % peek8/1
    {test,is_eq_exact,{f,280},[{x,0},{integer,99}]}.
    {move,{literal,<<"de">>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_r23_SUITE.erl",554}]}.
    {call,1,{f,293}}. % peek8/1
    {test,is_eq_exact,{f,279},[{x,0},{integer,100}]}.
    {'catch',{y,6},{f,260}}.
    {move,{literal,<<100,101,0:1>>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_r23_SUITE.erl",555}]}.
    {call,1,{f,293}}. % peek8/1
  {label,260}.
    {catch_end,{y,6}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<100,101,0:1>>]},{x,1}}.
    {move,{atom,peek8},{x,0}}.
    {line,[{scope,[13,14]},{location,"bs_match_r23_SUITE.erl",555}]}.
    {call,3,{f,963}}. % fc/3
    {move,{literal,<<146,108>>},{x,0}}.
    {line,[{scope,[13,14]},{location,"bs_match_r23_SUITE.erl",557}]}.
    {call,1,{f,296}}. % peek16/1
    {test,is_eq_exact,{f,278},[{x,0},{integer,37484}]}.
    {move,{literal,<<146,113,21,190>>},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_match_r23_SUITE.erl",558}]}.
    {call,1,{f,296}}. % peek16/1
    {test,is_eq_exact,{f,277},[{x,0},{integer,37489}]}.
    {'catch',{y,5},{f,261}}.
    {move,{literal,<<"\b">>},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_match_r23_SUITE.erl",559}]}.
    {call,1,{f,296}}. % peek16/1
  {label,261}.
    {catch_end,{y,5}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<"\b">>]},{x,1}}.
    {move,{atom,peek16},{x,0}}.
    {line,[{scope,"\v\f"},{location,"bs_match_r23_SUITE.erl",559}]}.
    {call,3,{f,963}}. % fc/3
    {'catch',{y,4},{f,262}}.
    {move,{literal,<<0,42:7>>},{x,0}}.
    {line,[{scope,"\v\f"},{location,"bs_match_r23_SUITE.erl",560}]}.
    {call,1,{f,296}}. % peek16/1
  {label,262}.
    {catch_end,{y,4}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<0,42:7>>]},{x,1}}.
    {move,{atom,peek16},{x,0}}.
    {line,[{scope,"\t\n"},{location,"bs_match_r23_SUITE.erl",560}]}.
    {call,3,{f,963}}. % fc/3
    {'catch',{y,3},{f,263}}.
    {move,{literal,<<1,2,3,4,5>>},{x,0}}.
    {line,[{scope,"\t\n"},{location,"bs_match_r23_SUITE.erl",561}]}.
    {call,1,{f,296}}. % peek16/1
  {label,263}.
    {catch_end,{y,3}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<1,2,3,4,5>>]},{x,1}}.
    {move,{atom,peek16},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_r23_SUITE.erl",561}]}.
    {call,3,{f,963}}. % fc/3
    {move,{literal,<<127:7>>},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_r23_SUITE.erl",563}]}.
    {call,1,{f,290}}. % peek7/1
    {test,is_eq_exact,{f,276},[{x,0},{integer,127}]}.
    {move,{literal,<<200,19:6>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",564}]}.
    {call,1,{f,290}}. % peek7/1
    {test,is_eq_exact,{f,275},[{x,0},{integer,100}]}.
    {'catch',{y,2},{f,264}}.
    {move,{literal,<<1,2>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",565}]}.
    {call,1,{f,290}}. % peek7/1
  {label,264}.
    {catch_end,{y,2}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<1,2>>]},{x,1}}.
    {move,{atom,peek7},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r23_SUITE.erl",565}]}.
    {call,3,{f,963}}. % fc/3
    {move,{integer,-1},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r23_SUITE.erl",567}]}.
    {call,2,{f,299}}. % unit_opt/2
    {test,is_eq_exact,{f,274},[{x,0},{integer,1}]}.
    {move,{integer,-1},{x,1}}.
    {move,{integer,8},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",568}]}.
    {call,2,{f,299}}. % unit_opt/2
    {test,is_eq_exact,{f,273},[{x,0},{integer,8}]}.
    {move,{literal,<<0,0,0,1,97,98,99>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",570}]}.
    {call,1,{f,307}}. % unit_opt_2/1
    {test,is_eq_exact,{f,272},[{x,0},{literal,<<0,0,0,1,97,98,99>>}]}.
    {move,{literal,<<0,0,0,2,100,101,102>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",571}]}.
    {call,1,{f,307}}. % unit_opt_2/1
    {test,is_eq_exact,{f,271},[{x,0},{literal,<<"def">>}]}.
    {'catch',{y,1},{f,265}}.
    {move,{literal,<<0,0,0,1,33:7>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",572}]}.
    {call,1,{f,307}}. % unit_opt_2/1
  {label,265}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,270},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,270},[{x,1},{atom,'EXIT'}]}.
    {'catch',{y,0},{f,266}}.
    {move,{literal,<<0,0,0,2,55:7>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",573}]}.
    {call,1,{f,307}}. % unit_opt_2/1
  {label,266}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,269},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,269},[{x,1},{atom,'EXIT'}]}.
    {move,{literal,<<0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",575}]}.
    {call,1,{f,314}}. % unit_opt_3/1
    {test,is_eq_exact,{f,268},[{x,0},{literal,<<0,0,0,0,0,0,0,0>>}]}.
    {move,{literal,<<0,0,0,0,0,0,0,1>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",576}]}.
    {call,1,{f,314}}. % unit_opt_3/1
    {test,is_eq_exact,{f,267},[{x,0},{literal,<<0,0,0,0,0,0,0,1>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,7}.
    return.
  {label,267}.
    {badmatch,{x,0}}.
  {label,268}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",575}]}.
    {badmatch,{x,0}}.
  {label,269}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",573}]}.
    {badmatch,{x,0}}.
  {label,270}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",572}]}.
    {badmatch,{x,0}}.
  {label,271}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",571}]}.
    {badmatch,{x,0}}.
  {label,272}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",570}]}.
    {badmatch,{x,0}}.
  {label,273}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",568}]}.
    {badmatch,{x,0}}.
  {label,274}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",567}]}.
    {badmatch,{x,0}}.
  {label,275}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",564}]}.
    {badmatch,{x,0}}.
  {label,276}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",563}]}.
    {badmatch,{x,0}}.
  {label,277}.
    {line,[{scope,"\f"},{location,"bs_match_r23_SUITE.erl",558}]}.
    {badmatch,{x,0}}.
  {label,278}.
    {line,[{scope,"\f"},{location,"bs_match_r23_SUITE.erl",557}]}.
    {badmatch,{x,0}}.
  {label,279}.
    {line,[{scope,[14]},{location,"bs_match_r23_SUITE.erl",554}]}.
    {badmatch,{x,0}}.
  {label,280}.
    {line,[{scope,[14]},{location,"bs_match_r23_SUITE.erl",553}]}.
    {badmatch,{x,0}}.
  {label,281}.
    {line,[{scope,[14]},{location,"bs_match_r23_SUITE.erl",551}]}.
    {badmatch,{x,0}}.
  {label,282}.
    {line,[{scope,[14]},{location,"bs_match_r23_SUITE.erl",550}]}.
    {badmatch,{x,0}}.
  {label,283}.
    {line,[{scope,[14]},{location,"bs_match_r23_SUITE.erl",549}]}.
    {badmatch,{x,0}}.
  {label,284}.
    {line,[{scope,[14]},{location,"bs_match_r23_SUITE.erl",548}]}.
    {badmatch,{x,0}}.
  {label,285}.
    {line,[{scope,[14]},{location,"bs_match_r23_SUITE.erl",547}]}.
    {badmatch,{x,0}}.


{function, peek1, 1, 287}.
  {label,286}.
    {line,[{location,"bs_match_r23_SUITE.erl",580}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,peek1},1}.
  {label,287}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,286},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_integer2,
          {f,288},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[580,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {move,{x,2},{x,0}}.
    return.
  {label,288}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,286}}.


{function, peek7, 1, 290}.
  {label,289}.
    {line,[{location,"bs_match_r23_SUITE.erl",582}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,peek7},1}.
  {label,290}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,289},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_integer2,
          {f,291},
          2,
          [{x,1},
           {integer,7},
           1,
           {field_flags,[{anno,[582,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_unit,{f,291},[{x,1},7]}.
    {move,{x,2},{x,0}}.
    return.
  {label,291}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,289}}.


{function, peek8, 1, 293}.
  {label,292}.
    {line,[{location,"bs_match_r23_SUITE.erl",584}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,peek8},1}.
  {label,293}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,292},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_integer2,
          {f,294},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[584,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_unit,{f,294},[{x,1},8]}.
    {move,{x,2},{x,0}}.
    return.
  {label,294}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,292}}.


{function, peek16, 1, 296}.
  {label,295}.
    {line,[{location,"bs_match_r23_SUITE.erl",586}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,peek16},1}.
  {label,296}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,295},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_integer2,
          {f,297},
          2,
          [{x,1},
           {integer,16},
           1,
           {field_flags,[{anno,[586,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_unit,{f,297},[{x,1},16]}.
    {move,{x,2},{x,0}}.
    return.
  {label,297}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,295}}.


{function, unit_opt, 2, 299}.
  {label,298}.
    {line,[{location,"bs_match_r23_SUITE.erl",588}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,unit_opt},2}.
  {label,299}.
    {select_val,{x,0},
                {f,305},
                {list,[{integer,1},{f,301},{integer,8},{f,300}]}}.
  {label,300}.
    {line,[{location,"bs_match_r23_SUITE.erl",592}]}.
    {move,{integer,0},{x,2}}.
    {bs_add,{f,0},[{x,2},{integer,1},8],{x,2}}.
    {bs_init_bits,{f,0},{x,2},0,3,{field_flags,[]},{x,2}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,1}}.
    {move,{x,2},{x,0}}.
    {jump,{f,302}}.
  {label,301}.
    {line,[{location,"bs_match_r23_SUITE.erl",591}]}.
    {move,{integer,0},{x,2}}.
    {bs_add,{f,0},[{x,2},{integer,7},1],{x,2}}.
    {bs_init_bits,{f,0},{x,2},0,3,{field_flags,[]},{x,2}}.
    {bs_put_integer,{f,0},{integer,7},1,{field_flags,[]},{x,1}}.
    {move,{x,2},{x,0}}.
  {label,302}.
    {test,bs_start_match3,{f,304},1,[{x,0}],{x,1}}.
    {test,bs_test_unit,{f,303},[{x,1},8]}.
    {move,{integer,8},{x,0}}.
    return.
  {label,303}.
    {move,{integer,1},{x,0}}.
    return.
  {label,304}.
    {line,[{location,"bs_match_r23_SUITE.erl",595}]}.
    {case_end,{x,0}}.
  {label,305}.
    {line,[{location,"bs_match_r23_SUITE.erl",590}]}.
    {case_end,{x,0}}.


{function, unit_opt_2, 1, 307}.
  {label,306}.
    {line,[{location,"bs_match_r23_SUITE.erl",600}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,unit_opt_2},1}.
  {label,307}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,306},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_integer2,
          {f,311},
          2,
          [{x,1},
           {integer,32},
           1,
           {field_flags,[{anno,[600,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,311},
          3,
          [{x,1},
           {atom,all},
           8,
           {field_flags,[{anno,[600,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {select_val,{x,2},
                {f,312},
                {list,[{integer,1},{f,309},{integer,2},{f,308}]}}.
  {label,308}.
    {line,[{location,"bs_match_r23_SUITE.erl",605}]}.
    {move,{integer,0},{x,4}}.
    {bs_append,{f,0},{x,4},0,5,8,{x,3},{field_flags,[]},{x,4}}.
    {move,{x,4},{x,0}}.
    {jump,{f,310}}.
  {label,309}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
  {label,310}.
    {call_only,1,{f,1968}}. % id/1
  {label,311}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,306}}.
  {label,312}.
    {line,[{location,"bs_match_r23_SUITE.erl",601}]}.
    if_end.


{function, unit_opt_3, 1, 314}.
  {label,313}.
    {line,[{location,"bs_match_r23_SUITE.erl",609}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,unit_opt_3},1}.
  {label,314}.
    {test,is_binary,{f,313},[{x,0}]}.
    {test,bs_start_match3,{f,315},1,[{x,0}],{x,1}}.
    {test,bs_get_binary2,
          {f,315},
          2,
          [{x,1},
           {integer,8},
           8,
           {field_flags,[{anno,[613,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_unit,{f,315},[{x,1},8]}.
    {move,{x,2},{x,0}}.
    return.
  {label,315}.
    {line,[{location,"bs_match_r23_SUITE.erl",613}]}.
    {badmatch,{x,0}}.


{function, shared_sub_bins, 1, 317}.
  {label,316}.
    {line,[{location,"bs_match_r23_SUITE.erl",616}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,shared_sub_bins},1}.
  {label,317}.
    {test,is_list,{f,316},[{x,0}]}.
    {allocate,0,0}.
    {move,nil,{x,1}}.
    {move,{integer,0},{x,2}}.
    {move,{literal,<<1,2,3,4,5>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",617}]}.
    {call,3,{f,320}}. % sum/3
    {test,is_eq_exact,
          {f,318},
          [{x,0},{literal,{15,[<<>>,<<5>>,<<4,5>>,<<3,4,5>>,<<2,3,4,5>>]}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,318}.
    {badmatch,{x,0}}.


{function, sum, 3, 320}.
  {label,319}.
    {line,[{location,"bs_match_r23_SUITE.erl",620}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,sum},3}.
  {label,320}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,319},3,[{x,0}],{x,3}}.
    {bs_get_position,{x,3},{x,0},4}.
    {test,bs_get_integer2,
          {f,321},
          4,
          [{x,3},
           {integer,8},
           1,
           {field_flags,[{anno,[620,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_unit,{f,321},[{x,3},8]}.
    {line,[{location,"bs_match_r23_SUITE.erl",621}]}.
    {gc_bif,'+',{f,0},5,[{x,2},{x,4}],{x,2}}.
    {bs_get_tail,{x,3},{x,0},4}.
    {test_heap,2,4}.
    {put_list,{x,0},{x,1},{x,1}}.
    {move,{x,3},{x,0}}.
    {call_only,3,{f,320}}. % sum/3
  {label,321}.
    {bs_set_position,{x,3},{x,0}}.
    {test,bs_test_tail2,{f,322},[{x,3},0]}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{x,2},{x,1}]}}.
    return.
  {label,322}.
    {bs_get_tail,{x,3},{x,0},4}.
    {jump,{f,319}}.


{function, bin_and_float, 1, 324}.
  {label,323}.
    {line,[{location,"bs_match_r23_SUITE.erl",625}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,bin_and_float},1}.
  {label,324}.
    {test,is_list,{f,323},[{x,0}]}.
    {allocate_zero,1,0}.
    {move,{float,0.0},{x,1}}.
    {move,{literal,<<63,240,0,0,0,0,0,0,64,0,0,0,0,0,0,0,64,8,0,0,0,0,0,0>>},
          {x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",626}]}.
    {call,2,{f,328}}. % bin_and_float/2
    {test,is_eq_exact,{f,326},[{x,0},{float,14.0}]}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",628}]}.
    {call,1,{f,1968}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,2}}.
    {trim,1,0}.
    {move,{literal,<<0,0,0,2:6>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",629}]}.
    {call,3,{f,2155}}. % '-bin_and_float/1-lbc$^0/2-0-'/3
    {test,is_eq_exact,{f,325},[{x,0},{literal,<<>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,325}.
    {badmatch,{x,0}}.
  {label,326}.
    {line,[{location,"bs_match_r23_SUITE.erl",626}]}.
    {badmatch,{x,0}}.


{function, bin_and_float, 2, 328}.
  {label,327}.
    {line,[{location,"bs_match_r23_SUITE.erl",633}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,bin_and_float},2}.
  {label,328}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,327},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_get_float2,
          {f,329},
          3,
          [{x,2},
           {integer,64},
           1,
           {field_flags,[{anno,[633,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_float2,
          {f,329},
          4,
          [{x,2},
           {integer,64},
           1,
           {field_flags,[{anno,[633,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_float2,
          {f,329},
          5,
          [{x,2},
           {integer,64},
           1,
           {field_flags,[{anno,[633,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_test_unit,{f,329},[{x,2},8]}.
    {test,is_float,{f,329},[{x,3}]}.
    {test,is_float,{f,329},[{x,4}]}.
    {test,is_float,{f,329},[{x,5}]}.
    {line,[{location,"bs_match_r23_SUITE.erl",636}]}.
    {gc_bif,'*',{f,0},6,[{x,3},{x,3}],{x,0}}.
    {gc_bif,'+',{f,0},6,[{x,1},{x,0}],{x,0}}.
    {gc_bif,'*',{f,0},6,[{x,4},{x,4}],{x,1}}.
    {gc_bif,'+',{f,0},6,[{x,0},{x,1}],{x,0}}.
    {gc_bif,'*',{f,0},6,[{x,5},{x,5}],{x,1}}.
    {gc_bif,'+',{f,0},3,[{x,0},{x,1}],{x,1}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,328}}. % bin_and_float/2
  {label,329}.
    {bs_set_position,{x,2},{x,0}}.
    {test,bs_test_tail2,{f,330},[{x,2},0]}.
    {move,{x,1},{x,0}}.
    return.
  {label,330}.
    {bs_get_tail,{x,2},{x,0},3}.
    {jump,{f,327}}.


{function, dec_subidentifiers, 1, 332}.
  {label,331}.
    {line,[{location,"bs_match_r23_SUITE.erl",639}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,dec_subidentifiers},1}.
  {label,332}.
    {test,is_list,{f,331},[{x,0}]}.
    {allocate,0,0}.
    {move,nil,{x,2}}.
    {move,{integer,0},{x,1}}.
    {move,{integer,2},{x,3}}.
    {move,{literal,<<170,227,1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",641}]}.
    {call,4,{f,337}}. % do_dec_subidentifiers/4
    {test,is_eq_exact,{f,335},[{x,0},{literal,{[],<<1,2,3>>}}]}.
    {move,nil,{x,2}}.
    {move,{integer,0},{x,1}}.
    {move,{integer,2},{x,3}}.
    {move,{literal,<<170,13,1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",642}]}.
    {call,4,{f,337}}. % do_dec_subidentifiers/4
    {test,is_eq_exact,{f,334},[{x,0},{literal,{[5389],<<1,2,3>>}}]}.
    {move,{literal,[1,2,3]},{x,2}}.
    {move,{atom,any},{x,1}}.
    {move,{integer,0},{x,3}}.
    {move,{atom,not_a_binary},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",643}]}.
    {call,4,{f,342}}. % dec_subidentifiers/4
    {test,is_eq_exact,{f,333},[{x,0},{literal,{[3,2,1],not_a_binary}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,333}.
    {badmatch,{x,0}}.
  {label,334}.
    {line,[{location,"bs_match_r23_SUITE.erl",642}]}.
    {badmatch,{x,0}}.
  {label,335}.
    {line,[{location,"bs_match_r23_SUITE.erl",640}]}.
    {badmatch,{x,0}}.


{function, do_dec_subidentifiers, 4, 337}.
  {label,336}.
    {line,[{location,"bs_match_r23_SUITE.erl",646}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,do_dec_subidentifiers},4}.
  {label,337}.
    {allocate_zero,5,4}.
    {move,{x,3},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,1},{y,3}}.
    {move,{x,0},{y,4}}.
    {line,[{location,"bs_match_r23_SUITE.erl",647}]}.
    {call,4,{f,342}}. % dec_subidentifiers/4
    {move,{y,2},{x,2}}.
    {move,{y,3},{x,1}}.
    {move,{y,4},{x,4}}.
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,3}}.
    {move,{x,4},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",648}]}.
    {call,4,{f,346}}. % dec_subidentifiers2/4
    {test,is_eq_exact,{f,340},[{x,0},{y,0}]}.
    {move,{y,1},{x,3}}.
    {move,{y,2},{x,2}}.
    {move,{y,3},{x,1}}.
    {move,{y,4},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",649}]}.
    {call,4,{f,355}}. % dec_subidentifiers4/4
    {test,is_eq_exact,{f,339},[{x,0},{y,0}]}.
    {move,{y,1},{x,3}}.
    {move,{y,2},{x,2}}.
    {move,{y,3},{x,1}}.
    {move,{y,4},{x,0}}.
    {move,{y,0},{y,4}}.
    {trim,4,1}.
    {line,[{location,"bs_match_r23_SUITE.erl",650}]}.
    {call,4,{f,351}}. % dec_subidentifiers3/4
    {test,is_eq_exact,{f,338},[{x,0},{y,0}]}.
    {deallocate,1}.
    return.
  {label,338}.
    {badmatch,{x,0}}.
  {label,339}.
    {line,[{location,"bs_match_r23_SUITE.erl",649}]}.
    {badmatch,{x,0}}.
  {label,340}.
    {line,[{location,"bs_match_r23_SUITE.erl",648}]}.
    {badmatch,{x,0}}.


{function, dec_subidentifiers, 4, 342}.
  {label,341}.
    {line,[{location,"bs_match_r23_SUITE.erl",652}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,dec_subidentifiers},4}.
  {label,342}.
    {test,is_eq_exact,{f,343},[{x,3},{integer,0}]}.
    {allocate,1,3}.
    {move,{x,0},{y,0}}.
    {move,{x,2},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",653}]}.
    {call_ext,1,{extfunc,lists,reverse,1}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{x,0},{y,0}]}}.
    {deallocate,1}.
    return.
  {label,343}.
    {test,bs_start_match3,{f,341},4,[{x,0}],{x,4}}.
    {bs_get_position,{x,4},{x,5},5}.
    {test,bs_get_integer2,
          {f,344},
          6,
          [{x,4},
           {integer,1},
           1,
           {field_flags,[{anno,[654,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,is_eq_exact,{f,344},[{x,6},{integer,1}]}.
    {test,bs_get_integer2,
          {f,344},
          6,
          [{x,4},
           {integer,7},
           1,
           {field_flags,[{anno,[654,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,bs_get_binary2,
          {f,344},
          7,
          [{x,4},
           {atom,all},
           8,
           {field_flags,[{anno,[654,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,7}}.
    {line,[{location,"bs_match_r23_SUITE.erl",655}]}.
    {gc_bif,'bsl',{f,0},8,[{x,1},{integer,7}],{x,0}}.
    {gc_bif,'bor',{f,0},8,[{x,0},{x,6}],{x,0}}.
    {gc_bif,'-',{f,0},8,[{x,3},{integer,1}],{x,3}}.
    {move,{x,0},{x,1}}.
    {move,{x,7},{x,0}}.
    {call_only,4,{f,342}}. % dec_subidentifiers/4
  {label,344}.
    {bs_set_position,{x,4},{x,5}}.
    {test,bs_get_integer2,
          {f,341},
          5,
          [{x,4},
           {integer,8},
           1,
           {field_flags,[{anno,[656,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_get_binary2,
          {f,341},
          6,
          [{x,4},
           {atom,all},
           8,
           {field_flags,[{anno,[656,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {line,[{location,"bs_match_r23_SUITE.erl",657}]}.
    {gc_bif,'bsl',{f,0},6,[{x,1},{integer,7}],{x,0}}.
    {gc_bif,'bor',{f,0},6,[{x,0},{x,5}],{x,0}}.
    {gc_bif,'-',{f,0},5,[{x,3},{integer,1}],{x,1}}.
    {test_heap,2,5}.
    {put_list,{x,0},{x,2},{x,2}}.
    {move,{x,1},{x,3}}.
    {move,{integer,0},{x,1}}.
    {move,{x,4},{x,0}}.
    {call_only,4,{f,342}}. % dec_subidentifiers/4


{function, dec_subidentifiers2, 4, 346}.
  {label,345}.
    {line,[{location,"bs_match_r23_SUITE.erl",659}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,dec_subidentifiers2},4}.
  {label,346}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,345},4,[{x,0}],{x,4}}.
    {bs_get_position,{x,4},{x,0},5}.
    {test,bs_get_binary2,
          {f,347},
          5,
          [{x,4},
           {atom,all},
           8,
           {field_flags,[{anno,[659,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,is_eq_exact,{f,347},[{x,3},{integer,0}]}.
    {allocate,1,6}.
    {move,{x,5},{y,0}}.
    {move,{x,2},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",660}]}.
    {call_ext,1,{extfunc,lists,reverse,1}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{x,0},{y,0}]}}.
    {deallocate,1}.
    return.
  {label,347}.
    {bs_set_position,{x,4},{x,0}}.
    {test,bs_get_integer2,
          {f,348},
          5,
          [{x,4},
           {integer,1},
           1,
           {field_flags,[{anno,[661,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,is_eq_exact,{f,348},[{x,5},{integer,1}]}.
    {test,bs_get_integer2,
          {f,348},
          5,
          [{x,4},
           {integer,7},
           1,
           {field_flags,[{anno,[661,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_test_unit,{f,348},[{x,4},8]}.
    {line,[{location,"bs_match_r23_SUITE.erl",662}]}.
    {gc_bif,'bsl',{f,0},6,[{x,1},{integer,7}],{x,0}}.
    {gc_bif,'bor',{f,0},6,[{x,0},{x,5}],{x,0}}.
    {gc_bif,'-',{f,0},5,[{x,3},{integer,1}],{x,3}}.
    {move,{x,0},{x,1}}.
    {move,{x,4},{x,0}}.
    {call_only,4,{f,346}}. % dec_subidentifiers2/4
  {label,348}.
    {bs_set_position,{x,4},{x,0}}.
    {test,bs_get_integer2,
          {f,349},
          5,
          [{x,4},
           {integer,8},
           1,
           {field_flags,[{anno,[663,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_test_unit,{f,349},[{x,4},8]}.
    {line,[{location,"bs_match_r23_SUITE.erl",664}]}.
    {gc_bif,'bsl',{f,0},6,[{x,1},{integer,7}],{x,0}}.
    {gc_bif,'bor',{f,0},6,[{x,0},{x,5}],{x,0}}.
    {gc_bif,'-',{f,0},5,[{x,3},{integer,1}],{x,1}}.
    {test_heap,2,5}.
    {put_list,{x,0},{x,2},{x,2}}.
    {move,{x,1},{x,3}}.
    {move,{integer,0},{x,1}}.
    {move,{x,4},{x,0}}.
    {call_only,4,{f,346}}. % dec_subidentifiers2/4
  {label,349}.
    {bs_set_position,{x,4},{x,0}}.
    {bs_get_tail,{x,4},{x,0},5}.
    {jump,{f,345}}.


{function, dec_subidentifiers3, 4, 351}.
  {label,350}.
    {line,[{location,"bs_match_r23_SUITE.erl",666}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,dec_subidentifiers3},4}.
  {label,351}.
    {test,is_eq_exact,{f,352},[{x,3},{integer,0}]}.
    {test,is_binary,{f,352},[{x,0}]}.
    {allocate,1,3}.
    {move,{x,0},{y,0}}.
    {move,{x,2},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",667}]}.
    {call_ext,1,{extfunc,lists,reverse,1}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{x,0},{y,0}]}}.
    {deallocate,1}.
    return.
  {label,352}.
    {test,bs_start_match3,{f,350},4,[{x,0}],{x,4}}.
    {bs_get_position,{x,4},{x,5},5}.
    {test,bs_get_integer2,
          {f,353},
          6,
          [{x,4},
           {integer,1},
           1,
           {field_flags,[{anno,[668,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,is_eq_exact,{f,353},[{x,6},{integer,1}]}.
    {test,bs_get_integer2,
          {f,353},
          6,
          [{x,4},
           {integer,7},
           1,
           {field_flags,[{anno,[668,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,bs_get_binary2,
          {f,353},
          7,
          [{x,4},
           {atom,all},
           8,
           {field_flags,[{anno,[668,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,7}}.
    {line,[{location,"bs_match_r23_SUITE.erl",669}]}.
    {gc_bif,'bsl',{f,0},8,[{x,1},{integer,7}],{x,0}}.
    {gc_bif,'bor',{f,0},8,[{x,0},{x,6}],{x,0}}.
    {gc_bif,'-',{f,0},8,[{x,3},{integer,1}],{x,3}}.
    {move,{x,0},{x,1}}.
    {move,{x,7},{x,0}}.
    {call_only,4,{f,351}}. % dec_subidentifiers3/4
  {label,353}.
    {bs_set_position,{x,4},{x,5}}.
    {test,bs_get_integer2,
          {f,350},
          5,
          [{x,4},
           {integer,8},
           1,
           {field_flags,[{anno,[670,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_get_binary2,
          {f,350},
          6,
          [{x,4},
           {atom,all},
           8,
           {field_flags,[{anno,[670,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {line,[{location,"bs_match_r23_SUITE.erl",671}]}.
    {gc_bif,'bsl',{f,0},6,[{x,1},{integer,7}],{x,0}}.
    {gc_bif,'bor',{f,0},6,[{x,0},{x,5}],{x,0}}.
    {gc_bif,'-',{f,0},5,[{x,3},{integer,1}],{x,1}}.
    {test_heap,2,5}.
    {put_list,{x,0},{x,2},{x,2}}.
    {move,{x,1},{x,3}}.
    {move,{integer,0},{x,1}}.
    {move,{x,4},{x,0}}.
    {call_only,4,{f,351}}. % dec_subidentifiers3/4


{function, dec_subidentifiers4, 4, 355}.
  {label,354}.
    {line,[{location,"bs_match_r23_SUITE.erl",673}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,dec_subidentifiers4},4}.
  {label,355}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,360},4,[{x,0}],{x,4}}.
    {bs_get_position,{x,4},{x,0},5}.
    {test,bs_get_integer2,
          {f,356},
          5,
          [{x,4},
           {integer,1},
           1,
           {field_flags,[{anno,[673,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,is_eq_exact,{f,356},[{x,5},{integer,1}]}.
    {test,bs_get_integer2,
          {f,356},
          5,
          [{x,4},
           {integer,7},
           1,
           {field_flags,[{anno,[673,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_test_unit,{f,356},[{x,4},8]}.
    {test,is_ne_exact,{f,358},[{x,3},{integer,0}]}.
    {line,[{location,"bs_match_r23_SUITE.erl",674}]}.
    {gc_bif,'bsl',{f,0},6,[{x,1},{integer,7}],{x,0}}.
    {gc_bif,'bor',{f,0},6,[{x,0},{x,5}],{x,0}}.
    {gc_bif,'-',{f,0},5,[{x,3},{integer,1}],{x,3}}.
    {move,{x,0},{x,1}}.
    {move,{x,4},{x,0}}.
    {call_only,4,{f,355}}. % dec_subidentifiers4/4
  {label,356}.
    {bs_set_position,{x,4},{x,0}}.
    {test,bs_get_integer2,
          {f,357},
          5,
          [{x,4},
           {integer,8},
           1,
           {field_flags,[{anno,[675,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_test_unit,{f,357},[{x,4},8]}.
    {test,is_ne_exact,{f,358},[{x,3},{integer,0}]}.
    {line,[{location,"bs_match_r23_SUITE.erl",676}]}.
    {gc_bif,'bsl',{f,0},6,[{x,1},{integer,7}],{x,0}}.
    {gc_bif,'bor',{f,0},6,[{x,0},{x,5}],{x,0}}.
    {gc_bif,'-',{f,0},5,[{x,3},{integer,1}],{x,1}}.
    {test_heap,2,5}.
    {put_list,{x,0},{x,2},{x,2}}.
    {move,{x,1},{x,3}}.
    {move,{integer,0},{x,1}}.
    {move,{x,4},{x,0}}.
    {call_only,4,{f,355}}. % dec_subidentifiers4/4
  {label,357}.
    {test,is_eq_exact,{f,359},[{x,3},{integer,0}]}.
  {label,358}.
    {allocate,2,5}.
    {move,{x,0},{y,0}}.
    {move,{x,4},{y,1}}.
    {move,{x,2},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",678}]}.
    {call_ext,1,{extfunc,lists,reverse,1}}.
    {bs_set_position,{y,1},{y,0}}.
    {bs_get_tail,{y,1},{x,1},1}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {deallocate,2}.
    return.
  {label,359}.
    {bs_set_position,{x,4},{x,0}}.
    {bs_get_tail,{x,4},{x,0},5}.
    {jump,{f,354}}.
  {label,360}.
    {test,is_eq_exact,{f,354},[{x,3},{integer,0}]}.
    {allocate,1,3}.
    {move,{x,0},{y,0}}.
    {move,{x,2},{x,0}}.
    {call_ext,1,{extfunc,lists,reverse,1}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{x,0},{y,0}]}}.
    {deallocate,1}.
    return.


{function, skip_optional_tag, 1, 362}.
  {label,361}.
    {line,[{location,"bs_match_r23_SUITE.erl",681}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,skip_optional_tag},1}.
  {label,362}.
    {test,is_list,{f,361},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<"*">>},{x,1}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",682}]}.
    {call,2,{f,368}}. % skip_optional_tag/2
    {test,is_eq_exact,{f,366},[{x,0},{literal,{ok,<<>>}}]}.
    {move,{literal,<<42,1>>},{x,1}}.
    {move,{literal,<<42,1>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",683}]}.
    {call,2,{f,368}}. % skip_optional_tag/2
    {test,is_eq_exact,{f,365},[{x,0},{literal,{ok,<<>>}}]}.
    {move,{literal,<<42,1,2,3>>},{x,1}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",684}]}.
    {call,2,{f,368}}. % skip_optional_tag/2
    {test,is_eq_exact,{f,364},[{x,0},{literal,{ok,<<1,2,3>>}}]}.
    {move,{atom,blurf},{x,1}}.
    {move,{literal,<<2:3>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",685}]}.
    {call,2,{f,368}}. % skip_optional_tag/2
    {test,is_eq_exact,{f,363},[{x,0},{atom,missing}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,363}.
    {badmatch,{x,0}}.
  {label,364}.
    {line,[{location,"bs_match_r23_SUITE.erl",684}]}.
    {badmatch,{x,0}}.
  {label,365}.
    {line,[{location,"bs_match_r23_SUITE.erl",683}]}.
    {badmatch,{x,0}}.
  {label,366}.
    {line,[{location,"bs_match_r23_SUITE.erl",682}]}.
    {badmatch,{x,0}}.


{function, skip_optional_tag, 2, 368}.
  {label,367}.
    {line,[{location,"bs_match_r23_SUITE.erl",688}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,skip_optional_tag},2}.
  {label,368}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,370},2,[{x,0}],{x,0}}.
    {test,bs_test_tail2,{f,369},[{x,0},0]}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{atom,ok},{x,1}]}}.
    return.
  {label,369}.
    {test,bs_get_integer2,
          {f,370},
          2,
          [{x,0},
           {integer,8},
           1,
           {field_flags,[{anno,[690,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_unit,{f,370},[{x,0},8]}.
    {test,bs_start_match3,{f,370},3,[{x,1}],{x,1}}.
    {test,bs_get_integer2,
          {f,370},
          3,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[690,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,370},
          4,
          [{x,1},
           {atom,all},
           8,
           {field_flags,[{anno,[690,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,is_eq_exact,{f,370},[{x,3},{x,2}]}.
    {call_only,2,{f,368}}. % skip_optional_tag/2
  {label,370}.
    {move,{atom,missing},{x,0}}.
    return.


{function, decode_integer, 1, 372}.
  {label,371}.
    {line,[{location,"bs_match_r23_SUITE.erl",694}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,decode_integer},1}.
  {label,372}.
    {allocate,0,0}.
    {move,{literal,<<"*+">>},{x,1}}.
    {move,{atom,whatever},{x,2}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",695}]}.
    {call,3,{f,376}}. % decode_integer/3
    {test,is_eq_exact,{f,374},[{x,0},{literal,{10795,<<"+">>,whatever}}]}.
    {move,{literal,<<143,19>>},{x,1}}.
    {move,{atom,whatever},{x,2}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",696}]}.
    {call,3,{f,376}}. % decode_integer/3
    {test,is_eq_exact,{f,373},[{x,0},{literal,{-28909,<<19>>,whatever}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,373}.
    {badmatch,{x,0}}.
  {label,374}.
    {line,[{location,"bs_match_r23_SUITE.erl",695}]}.
    {badmatch,{x,0}}.


{function, decode_integer, 3, 376}.
  {label,375}.
    {line,[{location,"bs_match_r23_SUITE.erl",699}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,decode_integer},3}.
  {label,376}.
    {'%',{var_info,{x,1},[accepts_match_context]}}.
    {test,bs_start_match3,{f,375},3,[{x,1}],{x,3}}.
    {bs_get_position,{x,3},{x,1},4}.
    {test,bs_get_integer2,
          {f,378},
          4,
          [{x,3},
           {integer,1},
           1,
           {field_flags,[{anno,[699,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_integer2,
          {f,378},
          5,
          [{x,3},
           {integer,7},
           1,
           {field_flags,[{anno,[699,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_get_binary2,
          {f,378},
          6,
          [{x,3},
           {atom,all},
           8,
           {field_flags,[{anno,[699,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,is_eq,{f,377},[{x,4},{integer,0}]}.
    {line,[{location,"bs_match_r23_SUITE.erl",700}]}.
    {move,{integer,0},{x,7}}.
    {bs_add,{f,0},[{x,7},{integer,1},8],{x,7}}.
    {gc_bif,byte_size,{f,0},8,[{x,6}],{x,8}}.
    {bs_add,{f,0},[{x,7},{x,8},8],{x,7}}.
    {bs_init_bits,{f,0},{x,7},0,8,{field_flags,[]},{x,7}}.
    {bs_put_integer,{f,0},{integer,1},1,{field_flags,[]},{x,4}}.
    {bs_put_integer,{f,0},{integer,7},1,{field_flags,[]},{x,5}}.
    {bs_put_binary,{f,0},{atom,all},8,{field_flags,[]},{x,6}}.
    {move,{x,7},{x,1}}.
    {test,bs_start_match3,{f,380},3,[{x,1}],{x,3}}.
    {bs_get_position,{x,3},{x,4},4}.
    {test,bs_skip_bits2,
          {f,380},
          [{x,3},
           {x,0},
           8,
           {field_flags,[{anno,[700,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,380},
          5,
          [{x,3},
           {atom,all},
           8,
           {field_flags,[{anno,[700,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",701}]}.
    {gc_bif,byte_size,{f,0},5,[{x,1}],{x,5}}.
    {bs_set_position,{x,3},{x,4}}.
    {test,bs_get_integer2,
          {f,379},
          6,
          [{x,3},
           {x,5},
           8,
           {field_flags,[{anno,[702,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,379},[{x,3},0]}.
    {test_heap,4,5}.
    {put_tuple2,{x,0},{list,[{x,4},{x,0},{x,2}]}}.
    return.
  {label,377}.
    {line,[{location,"bs_match_r23_SUITE.erl",705}]}.
    {move,{integer,0},{x,7}}.
    {bs_add,{f,0},[{x,7},{integer,1},8],{x,7}}.
    {gc_bif,byte_size,{f,0},8,[{x,6}],{x,8}}.
    {bs_add,{f,0},[{x,7},{x,8},8],{x,7}}.
    {bs_init_bits,{f,0},{x,7},0,8,{field_flags,[]},{x,7}}.
    {bs_put_integer,{f,0},{integer,1},1,{field_flags,[]},{x,4}}.
    {bs_put_integer,{f,0},{integer,7},1,{field_flags,[]},{x,5}}.
    {bs_put_binary,{f,0},{atom,all},8,{field_flags,[]},{x,6}}.
    {move,{x,7},{x,1}}.
    {test,bs_start_match3,{f,382},7,[{x,1}],{x,3}}.
    {test,bs_skip_bits2,
          {f,382},
          [{x,3},
           {x,0},
           8,
           {field_flags,[{anno,[705,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,382},
          7,
          [{x,3},
           {atom,all},
           8,
           {field_flags,[{anno,[705,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",706}]}.
    {gc_bif,byte_size,{f,0},7,[{x,1}],{x,3}}.
    {line,[{location,"bs_match_r23_SUITE.erl",707}]}.
    {move,{integer,0},{x,7}}.
    {bs_add,{f,0},[{x,7},{integer,1},8],{x,7}}.
    {gc_bif,byte_size,{f,0},8,[{x,6}],{x,8}}.
    {bs_add,{f,0},[{x,7},{x,8},8],{x,7}}.
    {bs_init_bits,{f,0},{x,7},0,8,{field_flags,[]},{x,7}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,5}}.
    {bs_put_binary,{f,0},{atom,all},8,{field_flags,[]},{x,6}}.
    {move,{x,7},{x,4}}.
    {test,bs_start_match3,{f,381},5,[{x,4}],{x,5}}.
    {test,bs_get_integer2,
          {f,381},
          6,
          [{x,5},
           {x,3},
           8,
           {field_flags,[{anno,[707,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,381},[{x,5},0]}.
    {line,[{location,"bs_match_r23_SUITE.erl",708}]}.
    {gc_bif,size,{f,0},4,[{x,1}],{x,1}}.
    {gc_bif,'*',{f,0},4,[{x,1},{integer,8}],{x,1}}.
    {gc_bif,'-',{f,0},4,[{x,1},{integer,1}],{x,1}}.
    {gc_bif,'bsl',{f,0},4,[{integer,1},{x,1}],{x,1}}.
    {gc_bif,'-',{f,0},4,[{x,3},{x,1}],{x,1}}.
    {test_heap,4,3}.
    {put_tuple2,{x,0},{list,[{x,1},{x,0},{x,2}]}}.
    return.
  {label,378}.
    {bs_set_position,{x,3},{x,1}}.
    {bs_get_tail,{x,3},{x,1},4}.
    {jump,{f,375}}.
  {label,379}.
    {line,[{location,"bs_match_r23_SUITE.erl",702}]}.
    {badmatch,{x,1}}.
  {label,380}.
    {line,[{location,"bs_match_r23_SUITE.erl",700}]}.
    {badmatch,{x,1}}.
  {label,381}.
    {line,[{location,"bs_match_r23_SUITE.erl",707}]}.
    {badmatch,{x,4}}.
  {label,382}.
    {line,[{location,"bs_match_r23_SUITE.erl",705}]}.
    {badmatch,{x,1}}.


{function, wfbm, 1, 384}.
  {label,383}.
    {line,[{location,"bs_match_r23_SUITE.erl",713}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,wfbm},1}.
  {label,384}.
    {test,is_list,{f,383},[{x,0}]}.
    {allocate_zero,2,0}.
    {move,{literal,<<" ">>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",716}]}.
    {call,1,{f,399}}. % check_for_dot_or_space/1
    {test,is_eq_exact,{f,397},[{x,0},{literal,{nomatch,0}}]}.
    {move,{literal,<<" abc">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",717}]}.
    {call,1,{f,399}}. % check_for_dot_or_space/1
    {test,is_eq_exact,{f,396},[{x,0},{literal,{nomatch,0}}]}.
    {move,{literal,<<"abcde 34555">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",718}]}.
    {call,1,{f,399}}. % check_for_dot_or_space/1
    {test,is_eq_exact,{f,395},[{x,0},{literal,{ok,<<"abcde">>}}]}.
    {move,{literal,<<".gurka">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",719}]}.
    {call,1,{f,399}}. % check_for_dot_or_space/1
    {test,is_eq_exact,{f,394},[{x,0},{literal,{nomatch,0}}]}.
    {move,{literal,<<"g.urka">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",720}]}.
    {call,1,{f,399}}. % check_for_dot_or_space/1
    {test,is_eq_exact,{f,393},[{x,0},{literal,{nomatch,1}}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",722}]}.
    {call,1,{f,411}}. % get_tail/1
    {test,is_eq_exact,{f,392},[{x,0},{atom,nomatch}]}.
    {move,{literal,<<"200x/2007/10/23/blurf ">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",723}]}.
    {call,1,{f,411}}. % get_tail/1
    {test,is_eq_exact,{f,391},[{x,0},{literal,{ok,<<"2007/10/23/blurf">>}}]}.
    {move,{literal,<<"200x/2007/10/23/blurf.">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",724}]}.
    {call,1,{f,411}}. % get_tail/1
    {test,is_eq_exact,{f,390},[{x,0},{literal,{skip,21}}]}.
    {move,{literal,<<"200y.2007.10.23.blurf ">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",725}]}.
    {call,1,{f,411}}. % get_tail/1
    {test,is_eq_exact,{f,389},[{x,0},{atom,nomatch}]}.
    {'catch',{y,1},{f,385}}.
    {move,{literal,{no,binary,at,all}},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",726}]}.
    {call,1,{f,411}}. % get_tail/1
  {label,385}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,388},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,388},[{x,1},{atom,'EXIT'}]}.
    {'catch',{y,0},{f,386}}.
    {move,{atom,no_binary},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",727}]}.
    {call,1,{f,411}}. % get_tail/1
  {label,386}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,387},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,387},[{x,1},{atom,'EXIT'}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,387}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",727}]}.
    {badmatch,{x,0}}.
  {label,388}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",726}]}.
    {badmatch,{x,0}}.
  {label,389}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",725}]}.
    {badmatch,{x,0}}.
  {label,390}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",724}]}.
    {badmatch,{x,0}}.
  {label,391}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",723}]}.
    {badmatch,{x,0}}.
  {label,392}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",722}]}.
    {badmatch,{x,0}}.
  {label,393}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",720}]}.
    {badmatch,{x,0}}.
  {label,394}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",719}]}.
    {badmatch,{x,0}}.
  {label,395}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",718}]}.
    {badmatch,{x,0}}.
  {label,396}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",717}]}.
    {badmatch,{x,0}}.
  {label,397}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",716}]}.
    {badmatch,{x,0}}.


{function, check_for_dot_or_space, 1, 399}.
  {label,398}.
    {line,[{location,"bs_match_r23_SUITE.erl",730}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,check_for_dot_or_space},1}.
  {label,399}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {move,{integer,0},{x,1}}.
    {call_only,2,{f,401}}. % check_for_dot_or_space/2


{function, check_for_dot_or_space, 2, 401}.
  {label,400}.
    {line,[{location,"bs_match_r23_SUITE.erl",733}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,check_for_dot_or_space},2}.
  {label,401}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,406},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_match_string,{f,402},[{x,2},8,{string,<<" ">>}]}.
    {test,bs_test_unit,{f,402},[{x,2},8]}.
    {test,is_eq_exact,{f,402},[{x,1},{integer,0}]}.
    {move,{literal,{nomatch,0}},{x,0}}.
    return.
  {label,402}.
    {bs_set_position,{x,2},{x,0}}.
    {test,bs_get_binary2,
          {f,405},
          3,
          [{x,2},
           {x,1},
           8,
           {field_flags,[{anno,[737,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,405},
          4,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[737,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {select_val,{x,4},
                {f,405},
                {list,[{integer,32},{f,404},{integer,46},{f,403}]}}.
  {label,403}.
    {test,bs_test_unit,{f,405},[{x,2},8]}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{atom,nomatch},{x,1}]}}.
    return.
  {label,404}.
    {test,bs_test_unit,{f,405},[{x,2},8]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{atom,ok},{x,3}]}}.
    return.
  {label,405}.
    {line,[{location,"bs_match_r23_SUITE.erl",742}]}.
    {gc_bif,'+',{f,0},3,[{x,1},{integer,1}],{x,1}}.
    {bs_set_position,{x,2},{x,0}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,401}}. % check_for_dot_or_space/2
  {label,406}.
    {test,bs_start_match3,{f,409},2,[{x,0}],{x,2}}.
    {test,bs_get_binary2,
          {f,409},
          3,
          [{x,2},
           {x,1},
           8,
           {field_flags,[{anno,[737,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,409},
          4,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[737,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {select_val,{x,4},
                {f,409},
                {list,[{integer,32},{f,408},{integer,46},{f,407}]}}.
  {label,407}.
    {test,bs_test_unit,{f,409},[{x,2},8]}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{atom,nomatch},{x,1}]}}.
    return.
  {label,408}.
    {test,bs_test_unit,{f,409},[{x,2},8]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{atom,ok},{x,3}]}}.
    return.
  {label,409}.
    {gc_bif,'+',{f,0},2,[{x,1},{integer,1}],{x,1}}.
    {call_only,2,{f,401}}. % check_for_dot_or_space/2


{function, get_tail, 1, 411}.
  {label,410}.
    {line,[{location,"bs_match_r23_SUITE.erl",745}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,get_tail},1}.
  {label,411}.
    {test,is_ne_exact,{f,414},[{x,0},{literal,<<>>}]}.
    {test,bs_start_match3,{f,416},1,[{x,0}],{x,1}}.
    {test,bs_get_binary2,
          {f,416},
          2,
          [{x,1},
           {integer,16},
           8,
           {field_flags,[{anno,[748,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_unit,{f,416},[{x,1},8]}.
    {test,bs_start_match3,{f,414},3,[{x,2}],{x,0}}.
    {test,bs_skip_bits2,
          {f,414},
          [{x,0},
           {integer,3},
           8,
           {field_flags,[{anno,[750,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_match_string,{f,414},[{x,0},16,{string,<<"x/">>}]}.
    {test,bs_get_binary2,
          {f,414},
          2,
          [{x,0},
           {integer,4},
           8,
           {field_flags,[{anno,[750,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_match_string,{f,414},[{x,0},8,{string,<<"/">>}]}.
    {test,bs_get_binary2,
          {f,414},
          3,
          [{x,0},
           {integer,2},
           8,
           {field_flags,[{anno,[750,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_match_string,{f,414},[{x,0},8,{string,<<"/">>}]}.
    {test,bs_get_binary2,
          {f,414},
          4,
          [{x,0},
           {integer,2},
           8,
           {field_flags,[{anno,[750,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_match_string,{f,414},[{x,0},8,{string,<<"/">>}]}.
    {test,bs_test_tail2,{f,414},[{x,0},0]}.
    {allocate,3,5}.
    {move,{x,4},{y,0}}.
    {move,{x,3},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",751}]}.
    {call,1,{f,399}}. % check_for_dot_or_space/1
    {test,is_tuple,{f,415},[{x,0}]}.
    {test,test_arity,{f,415},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {select_val,{x,1},
                {f,415},
                {list,[{atom,nomatch},{f,413},{atom,ok},{f,412}]}}.
  {label,412}.
    {line,[{location,"bs_match_r23_SUITE.erl",753}]}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,3},8],{x,3}}.
    {gc_bif,byte_size,{f,0},4,[{x,2}],{x,4}}.
    {bs_add,{f,0},[{x,3},{x,4},8],{x,3}}.
    {gc_bif,byte_size,{f,0},4,[{y,0}],{x,4}}.
    {bs_add,{f,0},[{x,3},{x,4},8],{x,3}}.
    {gc_bif,byte_size,{f,0},4,[{y,1}],{x,4}}.
    {bs_add,{f,0},[{x,3},{x,4},8],{x,3}}.
    {bs_append,{f,0},{x,3},3,4,8,{y,2},{field_flags,[]},{x,3}}.
    {bs_put_string,1,{string,<<"/">>}}.
    {bs_put_binary,{f,0},{atom,all},8,{field_flags,[]},{y,1}}.
    {bs_put_string,1,{string,<<"/">>}}.
    {bs_put_binary,{f,0},{atom,all},8,{field_flags,[]},{y,0}}.
    {bs_put_string,1,{string,<<"/">>}}.
    {bs_put_binary,{f,0},{atom,all},8,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,ok},{x,0}]}}.
    {deallocate,3}.
    return.
  {label,413}.
    {line,[{location,"bs_match_r23_SUITE.erl",754}]}.
    {gc_bif,'+',{f,0},3,[{x,2},{integer,16}],{x,0}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,skip},{x,0}]}}.
    {deallocate,3}.
    return.
  {label,414}.
    {move,{atom,nomatch},{x,0}}.
    return.
  {label,415}.
    {line,[{location,"bs_match_r23_SUITE.erl",751}]}.
    {case_end,{x,0}}.
  {label,416}.
    {line,[{location,"bs_match_r23_SUITE.erl",748}]}.
    {badmatch,{x,0}}.


{function, degenerated_match, 1, 418}.
  {label,417}.
    {line,[{location,"bs_match_r23_SUITE.erl",759}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,degenerated_match},1}.
  {label,418}.
    {test,is_list,{f,417},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",760}]}.
    {call,1,{f,426}}. % degenerated_match_1/1
    {test,is_eq_exact,{f,424},[{x,0},{atom,error}]}.
    {move,{literal,<<1:1>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",761}]}.
    {call,1,{f,426}}. % degenerated_match_1/1
    {test,is_eq_exact,{f,423},[{x,0},{integer,1}]}.
    {move,{literal,<<"*+">>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",762}]}.
    {call,1,{f,426}}. % degenerated_match_1/1
    {test,is_eq_exact,{f,422},[{x,0},{integer,2}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",764}]}.
    {call,1,{f,429}}. % degenerated_match_2/1
    {test,is_eq_exact,{f,421},[{x,0},{atom,error}]}.
    {move,{literal,<<1,2>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",765}]}.
    {call,1,{f,429}}. % degenerated_match_2/1
    {test,is_eq_exact,{f,420},[{x,0},{atom,no_split}]}.
    {move,{literal,<<1,2,3,4,5>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",766}]}.
    {call,1,{f,429}}. % degenerated_match_2/1
    {test,is_eq_exact,{f,419},[{x,0},{literal,{<<1,2,3,4>>,<<5>>}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,419}.
    {badmatch,{x,0}}.
  {label,420}.
    {line,[{location,"bs_match_r23_SUITE.erl",765}]}.
    {badmatch,{x,0}}.
  {label,421}.
    {line,[{location,"bs_match_r23_SUITE.erl",764}]}.
    {badmatch,{x,0}}.
  {label,422}.
    {line,[{location,"bs_match_r23_SUITE.erl",762}]}.
    {badmatch,{x,0}}.
  {label,423}.
    {line,[{location,"bs_match_r23_SUITE.erl",761}]}.
    {badmatch,{x,0}}.
  {label,424}.
    {line,[{location,"bs_match_r23_SUITE.erl",760}]}.
    {badmatch,{x,0}}.


{function, degenerated_match_1, 1, 426}.
  {label,425}.
    {line,[{location,"bs_match_r23_SUITE.erl",770}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,degenerated_match_1},1}.
  {label,426}.
    {test,is_eq_exact,{f,427},[{x,0},{literal,<<>>}]}.
    {move,{atom,error},{x,0}}.
    return.
  {label,427}.
    {line,[{location,"bs_match_r23_SUITE.erl",771}]}.
    {gc_bif,byte_size,{f,0},1,[{x,0}],{x,0}}.
    return.


{function, degenerated_match_2, 1, 429}.
  {label,428}.
    {line,[{location,"bs_match_r23_SUITE.erl",773}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,degenerated_match_2},1}.
  {label,429}.
    {test,is_eq_exact,{f,430},[{x,0},{literal,<<>>}]}.
    {move,{atom,error},{x,0}}.
    return.
  {label,430}.
    {line,[{location,"bs_match_r23_SUITE.erl",775}]}.
    {gc_bif,byte_size,{f,0},1,[{x,0}],{x,1}}.
    {test,is_lt,{f,431},[{integer,4},{x,1}]}.
    {move,{integer,4},{x,1}}.
    {line,[{location,"bs_match_r23_SUITE.erl",777}]}.
    {call_ext_only,2,{extfunc,erlang,split_binary,2}}.
  {label,431}.
    {move,{atom,no_split},{x,0}}.
    return.


{function, bs_sum, 1, 433}.
  {label,432}.
    {line,[{location,"bs_match_r23_SUITE.erl",782}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,bs_sum},1}.
  {label,433}.
    {test,is_list,{f,432},[{x,0}]}.
    {allocate_zero,4,0}.
    {move,nil,{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",783}]}.
    {call,1,{f,452}}. % bs_sum_1/1
    {test,is_eq_exact,{f,450},[{x,0},{integer,0}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_r23_SUITE.erl",784}]}.
    {call,1,{f,452}}. % bs_sum_1/1
    {test,is_eq_exact,{f,449},[{x,0},{integer,0}]}.
    {move,{literal,"*"},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_r23_SUITE.erl",785}]}.
    {call,1,{f,452}}. % bs_sum_1/1
    {test,is_eq_exact,{f,448},[{x,0},{integer,42}]}.
    {move,{literal,<<1>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_r23_SUITE.erl",786}]}.
    {call,1,{f,452}}. % bs_sum_1/1
    {test,is_eq_exact,{f,447},[{x,0},{integer,1}]}.
    {move,{literal,[1,2,3,4]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_r23_SUITE.erl",787}]}.
    {call,1,{f,452}}. % bs_sum_1/1
    {test,is_eq_exact,{f,446},[{x,0},{integer,10}]}.
    {move,{literal,<<1,2,3,4,5>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_r23_SUITE.erl",788}]}.
    {call,1,{f,452}}. % bs_sum_1/1
    {test,is_eq_exact,{f,445},[{x,0},{integer,15}]}.
    {move,{literal,[1,2,3|<<4,5,6>>]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_r23_SUITE.erl",789}]}.
    {call,1,{f,452}}. % bs_sum_1/1
    {test,is_eq_exact,{f,444},[{x,0},{integer,21}]}.
    {move,{literal,[1,2,3|{4,5}]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_r23_SUITE.erl",790}]}.
    {call,1,{f,452}}. % bs_sum_1/1
    {test,is_eq_exact,{f,443},[{x,0},{integer,15}]}.
    {move,{literal,[1,2,3|zero]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_r23_SUITE.erl",791}]}.
    {call,1,{f,452}}. % bs_sum_1/1
    {test,is_eq_exact,{f,442},[{x,0},{integer,6}]}.
    {move,{literal,[1,2,3|0]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_r23_SUITE.erl",792}]}.
    {call,1,{f,452}}. % bs_sum_1/1
    {test,is_eq_exact,{f,441},[{x,0},{integer,6}]}.
    {move,{literal,[1,2,3|one]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_r23_SUITE.erl",793}]}.
    {call,1,{f,452}}. % bs_sum_1/1
    {test,is_eq_exact,{f,440},[{x,0},{integer,7}]}.
    {'catch',{y,3},{f,434}}.
    {move,{literal,{too,big,tuple}},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_r23_SUITE.erl",795}]}.
    {call,1,{f,452}}. % bs_sum_1/1
  {label,434}.
    {catch_end,{y,3}}.
    {line,[{scope,[7,8]},{location,"bs_match_r23_SUITE.erl",795}]}.
    {call,1,{f,961}}. % fc/1
    {'catch',{y,2},{f,435}}.
    {move,{literal,[1,2,3|{too,big,tuple}]},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_r23_SUITE.erl",796}]}.
    {call,1,{f,452}}. % bs_sum_1/1
  {label,435}.
    {catch_end,{y,2}}.
    {line,[{scope,[5,6]},{location,"bs_match_r23_SUITE.erl",796}]}.
    {call,1,{f,961}}. % fc/1
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r23_SUITE.erl",798}]}.
    {call,1,{f,463}}. % sneaky_alias/1
    {test,is_nil,{f,439},[{x,0}]}.
    {move,{literal,<<0,0,2,47,0,5,234,71>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",799}]}.
    {call,1,{f,1968}}. % id/1
    {call,1,{f,463}}. % sneaky_alias/1
    {test,is_eq_exact,{f,438},[{x,0},{literal,[559,387655]}]}.
    {'catch',{y,1},{f,436}}.
    {move,{literal,<<1>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",800}]}.
    {call,1,{f,1968}}. % id/1
    {call,1,{f,463}}. % sneaky_alias/1
  {label,436}.
    {catch_end,{y,1}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<1>>]},{x,1}}.
    {move,{atom,sneaky_alias},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r23_SUITE.erl",800}]}.
    {call,3,{f,963}}. % fc/3
    {'catch',{y,0},{f,437}}.
    {move,{integer,4},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r23_SUITE.erl",801}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {call,1,{f,463}}. % sneaky_alias/1
  {label,437}.
    {catch_end,{y,0}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[[1,2,3,4]]},{x,1}}.
    {move,{atom,sneaky_alias},{x,0}}.
    {line,[{scope,[1,2]},{location,"bs_match_r23_SUITE.erl",801}]}.
    {call,3,{f,963}}. % fc/3
    {move,{atom,ok},{x,0}}.
    {deallocate,4}.
    return.
  {label,438}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",799}]}.
    {badmatch,{x,0}}.
  {label,439}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",798}]}.
    {badmatch,{x,0}}.
  {label,440}.
    {line,[{scope,"\b"},{location,"bs_match_r23_SUITE.erl",793}]}.
    {badmatch,{x,0}}.
  {label,441}.
    {line,[{scope,"\b"},{location,"bs_match_r23_SUITE.erl",792}]}.
    {badmatch,{x,0}}.
  {label,442}.
    {line,[{scope,"\b"},{location,"bs_match_r23_SUITE.erl",791}]}.
    {badmatch,{x,0}}.
  {label,443}.
    {line,[{scope,"\b"},{location,"bs_match_r23_SUITE.erl",790}]}.
    {badmatch,{x,0}}.
  {label,444}.
    {line,[{scope,"\b"},{location,"bs_match_r23_SUITE.erl",789}]}.
    {badmatch,{x,0}}.
  {label,445}.
    {line,[{scope,"\b"},{location,"bs_match_r23_SUITE.erl",788}]}.
    {badmatch,{x,0}}.
  {label,446}.
    {line,[{scope,"\b"},{location,"bs_match_r23_SUITE.erl",787}]}.
    {badmatch,{x,0}}.
  {label,447}.
    {line,[{scope,"\b"},{location,"bs_match_r23_SUITE.erl",786}]}.
    {badmatch,{x,0}}.
  {label,448}.
    {line,[{scope,"\b"},{location,"bs_match_r23_SUITE.erl",785}]}.
    {badmatch,{x,0}}.
  {label,449}.
    {line,[{scope,"\b"},{location,"bs_match_r23_SUITE.erl",784}]}.
    {badmatch,{x,0}}.
  {label,450}.
    {line,[{scope,"\b"},{location,"bs_match_r23_SUITE.erl",783}]}.
    {badmatch,{x,0}}.


{function, bs_sum_1, 1, 452}.
  {label,451}.
    {line,[{location,"bs_match_r23_SUITE.erl",804}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,bs_sum_1},1}.
  {label,452}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,455},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_integer2,
          {f,453},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[804,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_unit,{f,453},[{x,1},8]}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{x,0}}.
    {call,1,{f,452}}. % bs_sum_1/1
    {gc_bif,'+',{f,0},1,[{y,0},{x,0}],{x,0}}.
    {deallocate,1}.
    return.
  {label,453}.
    {bs_set_position,{x,1},{x,0}}.
    {test,bs_test_tail2,{f,454},[{x,1},0]}.
    {move,{integer,0},{x,0}}.
    return.
  {label,454}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,451}}.
  {label,455}.
    {test,is_nonempty_list,{f,456},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",805}]}.
    {call,1,{f,452}}. % bs_sum_1/1
    {gc_bif,'+',{f,0},1,[{y,0},{x,0}],{x,0}}.
    {deallocate,1}.
    return.
  {label,456}.
    {test,is_tuple,{f,457},[{x,0}]}.
    {test,test_arity,{f,451},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",806}]}.
    {gc_bif,'+',{f,0},2,[{x,1},{x,0}],{x,0}}.
    return.
  {label,457}.
    {test,is_atom,{f,459},[{x,0}]}.
    {select_val,{x,0},{f,451},{list,[{atom,one},{f,458},{atom,zero},{f,461}]}}.
  {label,458}.
    {move,{integer,1},{x,0}}.
    return.
  {label,459}.
    {test,is_integer,{f,460},[{x,0}]}.
    {test,is_eq_exact,{f,451},[{x,0},{integer,0}]}.
    return.
  {label,460}.
    {test,is_nil,{f,451},[{x,0}]}.
  {label,461}.
    {move,{integer,0},{x,0}}.
    return.


{function, sneaky_alias, 1, 463}.
  {label,462}.
    {line,[{location,"bs_match_r23_SUITE.erl",813}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,sneaky_alias},1}.
  {label,463}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,462},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_test_tail2,{f,464},[{x,1},0]}.
    {bs_get_tail,{x,1},{x,0},2}.
    {call_ext_only,1,{extfunc,erlang,binary_to_list,1}}.
  {label,464}.
    {test,bs_get_integer2,
          {f,465},
          2,
          [{x,1},
           {integer,32},
           1,
           {field_flags,[{anno,[814,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_unit,{f,465},[{x,1},8]}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",814}]}.
    {call,1,{f,463}}. % sneaky_alias/1
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,465}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,462}}.


{function, coverage, 1, 467}.
  {label,466}.
    {line,[{location,"bs_match_r23_SUITE.erl",816}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,coverage},1}.
  {label,467}.
    {test,is_list,{f,466},[{x,0}]}.
    {allocate_zero,4,0}.
    {make_fun2,{f,2153},0,0,0}.
    {move,{literal,<<>>},{x,2}}.
    {move,{integer,0},{x,1}}.
    {line,[{location,"bs_match_r23_SUITE.erl",817}]}.
    {call,3,{f,499}}. % coverage_fold/3
    {test,is_eq_exact,{f,497},[{x,0},{integer,0}]}.
    {make_fun2,{f,2151},0,0,0}.
    {move,{literal,<<1,2,3>>},{x,2}}.
    {move,{integer,0},{x,1}}.
    {line,[{scope,"\b"},{location,"bs_match_r23_SUITE.erl",818}]}.
    {call,3,{f,499}}. % coverage_fold/3
    {test,is_eq_exact,{f,496},[{x,0},{integer,6}]}.
    {make_fun2,{f,2149},0,0,0}.
    {'catch',{y,3},{f,468}}.
    {move,{literal,[a,b,c]},{x,2}}.
    {move,{integer,0},{x,1}}.
    {line,[{scope,"\b"},{location,"bs_match_r23_SUITE.erl",819}]}.
    {call,3,{f,499}}. % coverage_fold/3
  {label,468}.
    {catch_end,{y,3}}.
    {line,[{scope,[7,8]},{location,"bs_match_r23_SUITE.erl",819}]}.
    {call,1,{f,961}}. % fc/1
    {move,{literal,<<"*">>},{x,1}}.
    {move,{atom,float},{x,2}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_r23_SUITE.erl",823}]}.
    {call,3,{f,503}}. % coverage_build/3
    {test,is_tuple,{f,495},[{x,0}]}.
    {test,test_arity,{f,495},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,bs_start_match3,{f,495},2,[{x,1}],{x,1}}.
    {test,bs_get_float2,
          {f,495},
          2,
          [{x,1},
           {integer,64},
           1,
           {field_flags,[{anno,[823,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,495},[{x,2},{float,42.0}]}.
    {test,bs_test_tail2,{f,495},[{x,1},0]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,495},[{x,1},{atom,float}]}.
    {move,{literal,<<>>},{x,1}}.
    {move,{atom,not_a_tuple},{x,2}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",824}]}.
    {call,3,{f,503}}. % coverage_build/3
    {test,is_eq_exact,{f,494},[{x,0},{literal,{<<>>,not_a_tuple}}]}.
    {move,{literal,<<7,10>>},{x,1}}.
    {move,{literal,{x,y,z}},{x,2}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",826}]}.
    {call,3,{f,503}}. % coverage_build/3
    {test,is_eq_exact,{f,493},[{x,0},{literal,{<<"vabc©abc">>,{x,42,43}}}]}.
    {move,nil,{x,1}}.
    {move,{literal,<<1,2>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",828}]}.
    {call,2,{f,509}}. % coverage_bc/2
    {test,is_eq_exact,{f,492},[{x,0},{literal,[<<2>>,<<1>>]}]}.
    {move,{literal,{x,y,z}},{x,1}}.
    {move,{literal,<<2,97,98,99>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",830}]}.
    {call,2,{f,513}}. % coverage_setelement/2
    {test,is_eq_exact,{f,491},[{x,0},{literal,{x,<<"abc">>,z}}]}.
    {move,{literal,[coverage_id]},{x,1}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",832}]}.
    {call,2,{f,516}}. % coverage_apply/2
    {test,is_eq_exact,{f,490},[{x,0},{literal,"*"}]}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",833}]}.
    {call,1,{f,520}}. % coverage_external/1
    {test,is_eq_exact,{f,489},[{x,0},{integer,42}]}.
    {move,nil,{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",835}]}.
    {call,1,{f,527}}. % do_coverage_bin_to_term_list/1
    {move,{integer,10},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",836}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {test_heap,2,1}.
    {put_list,{x,0},{literal,[{a,b,c},<<0,0,0,0,5,3:2>>]},{x,0}}.
    {call,1,{f,527}}. % do_coverage_bin_to_term_list/1
    {'catch',{y,2},{f,469}}.
    {move,{literal,<<0,0,0,7>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",838}]}.
    {call,1,{f,532}}. % do_coverage_bin_to_term_list_1/1
  {label,469}.
    {catch_end,{y,2}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<0,0,0,7>>]},{x,1}}.
    {move,{atom,coverage_bin_to_term_list},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r23_SUITE.erl",837}]}.
    {call,3,{f,963}}. % fc/3
    {move,{literal,<<0,0,0,4>>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r23_SUITE.erl",840}]}.
    {call,1,{f,565}}. % coverage_per_key/1
    {test,is_eq_exact,{f,488},[{x,0},{literal,<<>>}]}.
    {move,{literal,<<0,0,0,7,97,98,99>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",841}]}.
    {call,1,{f,565}}. % coverage_per_key/1
    {test,is_eq_exact,{f,487},[{x,0},{literal,<<"abc">>}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",843}]}.
    {call,1,{f,569}}. % coverage_bitstring/1
    {test,is_eq_exact,{f,486},[{x,0},{atom,binary}]}.
    {move,{literal,<<7>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",844}]}.
    {call,1,{f,569}}. % coverage_bitstring/1
    {test,is_eq_exact,{f,485},[{x,0},{atom,binary}]}.
    {move,{literal,<<7:4>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",845}]}.
    {call,1,{f,569}}. % coverage_bitstring/1
    {test,is_eq_exact,{f,484},[{x,0},{atom,bitstring}]}.
    {move,{literal,[a]},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",846}]}.
    {call,1,{f,569}}. % coverage_bitstring/1
    {test,is_eq_exact,{f,483},[{x,0},{atom,other}]}.
    {move,{atom,e2},{x,3}}.
    {move,{atom,e1},{x,2}}.
    {move,{atom,e3},{x,4}}.
    {move,{atom,e0},{x,1}}.
    {move,nil,{x,5}}.
    {move,{literal,<<253,155,200,17,53>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",851}]}.
    {call,6,{f,573}}. % coverage_trim/6
    {test,is_eq_exact,
          {f,482},
          [{x,0},{literal,{done,<<17,53>>,[253,155,200]}}]}.
    {move,{literal,<<"right">>},{x,1}}.
    {move,{literal,<<"linux">>},{x,2}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",853}]}.
    {call,3,{f,579}}. % coverage_trim_1/3
    {test,is_eq_exact,{f,481},[{x,0},{literal,<<"(right|linux)">>}]}.
    {move,{literal,<<"right">>},{x,1}}.
    {move,{literal,<<"linux">>},{x,2}}.
    {move,{literal,<<"/">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",854}]}.
    {call,3,{f,579}}. % coverage_trim_1/3
    {test,is_eq_exact,{f,480},[{x,0},{literal,<<"/(right|linux)">>}]}.
    {move,{literal,<<"right">>},{x,1}}.
    {move,{literal,<<"linux">>},{x,2}}.
    {move,{literal,<<"left">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",856}]}.
    {call,3,{f,579}}. % coverage_trim_1/3
    {test,is_eq_exact,
          {f,479},
          [{x,0},{literal,<<"(left|linux)/(right|linux)">>}]}.
    {move,{integer,10},{x,1}}.
    {move,nil,{x,2}}.
    {move,{literal,<<"-">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",858}]}.
    {call,3,{f,586}}. % coverage_trim_2/3
    {test,is_eq_exact,{f,478},[{x,0},{literal,{10,<<"-">>,[]}}]}.
    {move,{integer,10},{x,1}}.
    {move,nil,{x,2}}.
    {move,{literal,<<"aa-">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",859}]}.
    {call,3,{f,586}}. % coverage_trim_2/3
    {test,is_eq_exact,{f,477},[{x,0},{literal,{8,<<"-">>,"aa"}}]}.
    {move,{integer,3},{x,1}}.
    {move,{literal,[<<"abctag">>]},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",861}]}.
    {call,2,{f,592}}. % coverage_trim_3/2
    {test,is_eq_exact,{f,476},[{x,0},{literal,{<<"abc">>,<<"tag">>}}]}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",863}]}.
    {call,1,{f,595}}. % coverage_trim_4/1
    {test,bs_start_match3,{f,475},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,475},
          2,
          [{x,1},
           {integer,16},
           1,
           {field_flags,[{anno,[863,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,native]}],
          {x,2}}.
    {test,is_eq_exact,{f,475},[{x,2},{integer,57348}]}.
    {test,bs_test_tail2,{f,475},[{x,1},0]}.
    {move,{literal,<<2>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",866}]}.
    {call,1,{f,600}}. % coverage_beam_ssa_codegen/1
    {test,is_eq_exact,{f,474},[{x,0},{atom,ok}]}.
    {'catch',{y,1},{f,470}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",869}]}.
    {call,1,{f,603}}. % coverage_beam_ssa_pre_codegen/1
  {label,470}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,473},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,473},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,473},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,473},[{x,1},{atom,function_clause}]}.
    {'catch',{y,0},{f,471}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",872}]}.
    {call,1,{f,1968}}. % id/1
    {call,1,{f,610}}. % coverage_beam_ssa_bsm_error/1
  {label,471}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,472},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,472},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,472},[{x,1}]}.
    {test,test_arity,{f,472},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,472},[{x,1},{literal,{badarg,<<>>}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,4}.
    return.
  {label,472}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",872}]}.
    {badmatch,{x,0}}.
  {label,473}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",869}]}.
    {badmatch,{x,0}}.
  {label,474}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",866}]}.
    {badmatch,{x,0}}.
  {label,475}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",863}]}.
    {badmatch,{x,0}}.
  {label,476}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",861}]}.
    {badmatch,{x,0}}.
  {label,477}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",859}]}.
    {badmatch,{x,0}}.
  {label,478}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",858}]}.
    {badmatch,{x,0}}.
  {label,479}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",855}]}.
    {badmatch,{x,0}}.
  {label,480}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",854}]}.
    {badmatch,{x,0}}.
  {label,481}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",853}]}.
    {badmatch,{x,0}}.
  {label,482}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",850}]}.
    {badmatch,{x,0}}.
  {label,483}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",846}]}.
    {badmatch,{x,0}}.
  {label,484}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",845}]}.
    {badmatch,{x,0}}.
  {label,485}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",844}]}.
    {badmatch,{x,0}}.
  {label,486}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",843}]}.
    {badmatch,{x,0}}.
  {label,487}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",841}]}.
    {badmatch,{x,0}}.
  {label,488}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",840}]}.
    {badmatch,{x,0}}.
  {label,489}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",833}]}.
    {badmatch,{x,0}}.
  {label,490}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",832}]}.
    {badmatch,{x,0}}.
  {label,491}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",830}]}.
    {badmatch,{x,0}}.
  {label,492}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",828}]}.
    {badmatch,{x,0}}.
  {label,493}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",825}]}.
    {badmatch,{x,0}}.
  {label,494}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",824}]}.
    {badmatch,{x,0}}.
  {label,495}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",823}]}.
    {badmatch,{x,0}}.
  {label,496}.
    {line,[{scope,"\b"},{location,"bs_match_r23_SUITE.erl",818}]}.
    {badmatch,{x,0}}.
  {label,497}.
    {line,[{scope,"\b"},{location,"bs_match_r23_SUITE.erl",817}]}.
    {badmatch,{x,0}}.


{function, coverage_fold, 3, 499}.
  {label,498}.
    {line,[{location,"bs_match_r23_SUITE.erl",876}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,coverage_fold},3}.
  {label,499}.
    {'%',{var_info,{x,2},[accepts_match_context]}}.
    {test,bs_start_match3,{f,498},3,[{x,2}],{x,3}}.
    {bs_get_position,{x,3},{x,2},4}.
    {test,bs_get_integer2,
          {f,500},
          4,
          [{x,3},
           {integer,8},
           1,
           {field_flags,[{anno,[876,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_unit,{f,500},[{x,3},8]}.
    {allocate,4,5}.
    {move,{x,4},{y,0}}.
    {move,{x,3},{y,1}}.
    {move,{x,1},{y,2}}.
    {move,{x,0},{y,3}}.
    {make_fun2,{f,1968},0,0,0}.
    {move,{y,0},{x,1}}.
    {move,{x,0},{y,0}}.
    {swap,{x,0},{x,1}}.
    {line,[{location,"bs_match_r23_SUITE.erl",878}]}.
    {call_fun,1}.
    {swap,{y,2},{x,0}}.
    {move,{y,0},{x,1}}.
    {trim,1,3}.
    {call_fun,1}.
    {move,{x,0},{x,1}}.
    {move,{y,2},{x,2}}.
    {move,{y,1},{x,0}}.
    {move,{y,0},{y,1}}.
    {trim,1,2}.
    {call_fun,2}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,2}}.
    {move,{y,1},{x,0}}.
    {call_last,3,{f,499},2}. % coverage_fold/3
  {label,500}.
    {bs_set_position,{x,3},{x,2}}.
    {test,bs_test_tail2,{f,501},[{x,3},0]}.
    {test,is_function2,{f,501},[{x,0},{integer,2}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,501}.
    {bs_get_tail,{x,3},{x,2},4}.
    {jump,{f,498}}.


{function, coverage_build, 3, 503}.
  {label,502}.
    {line,[{location,"bs_match_r23_SUITE.erl",881}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,coverage_build},3}.
  {label,503}.
    {'%',{var_info,{x,1},[accepts_match_context]}}.
    {test,bs_start_match3,{f,502},3,[{x,1}],{x,3}}.
    {bs_get_position,{x,3},{x,1},4}.
    {test,bs_get_integer2,
          {f,505},
          4,
          [{x,3},
           {integer,8},
           1,
           {field_flags,[{anno,[881,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_unit,{f,505},[{x,3},8]}.
    {test,is_eq_exact,{f,504},[{x,2},{atom,float}]}.
    {line,[{location,"bs_match_r23_SUITE.erl",882}]}.
    {move,{integer,0},{x,5}}.
    {bs_add,{f,0},[{x,5},{integer,8},8],{x,5}}.
    {bs_init_bits,{f,0},{x,5},0,6,{field_flags,[]},{x,5}}.
    {bs_put_float,{f,0},{integer,64},1,{field_flags,[]},{x,4}}.
    {move,{x,5},{x,1}}.
    {allocate,2,4}.
    {move,{x,3},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{x,1},{x,0}}.
    {call,1,{f,1968}}. % id/1
    {line,[{location,"bs_match_r23_SUITE.erl",883}]}.
    {move,{integer,0},{x,1}}.
    {gc_bif,byte_size,{f,0},2,[{x,0}],{x,2}}.
    {bs_add,{f,0},[{x,1},{x,2},8],{x,1}}.
    {bs_append,{f,0},{x,1},0,2,8,{y,1},{field_flags,[]},{x,1}}.
    {bs_put_binary,{f,0},{atom,all},8,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,0}}.
    {move,{atom,float},{x,2}}.
    {move,{y,0},{x,1}}.
    {call_last,3,{f,503},2}. % coverage_build/3
  {label,504}.
    {allocate,4,5}.
    {move,{x,4},{y,0}}.
    {move,{x,3},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,0},{y,3}}.
    {move,{integer,4},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",886}]}.
    {call,1,{f,1968}}. % id/1
    {gc_bif,'-',{f,0},1,[{y,0},{integer,1}],{x,1}}.
    {move,{integer,0},{x,2}}.
    {bs_add,{f,0},[{x,2},{integer,4},1],{x,2}}.
    {bs_add,{f,0},[{x,2},{integer,3},8],{x,2}}.
    {bs_add,{f,0},[{x,2},{x,0},1],{x,2}}.
    {bs_init_bits,{f,0},{x,2},0,3,{field_flags,[]},{x,2}}.
    {bs_put_integer,{f,0},{x,0},1,{field_flags,[]},{y,0}}.
    {bs_put_integer,{f,0},{integer,4},1,{field_flags,[]},{x,1}}.
    {bs_put_string,3,{string,<<"abc">>}}.
    {move,{x,2},{x,0}}.
    {init,{y,0}}.
    {call,1,{f,1968}}. % id/1
    {line,[{location,"bs_match_r23_SUITE.erl",887}]}.
    {move,{integer,0},{x,1}}.
    {gc_bif,bit_size,{f,0},2,[{x,0}],{x,2}}.
    {bs_add,{f,0},[{x,1},{x,2},1],{x,1}}.
    {bs_append,{f,0},{x,1},0,2,1,{y,3},{field_flags,[]},{x,1}}.
    {bs_put_binary,{f,0},{atom,all},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,0}}.
    {init,{y,3}}.
    {trim,1,3}.
    {call,1,{f,1968}}. % id/1
    {move,{x,0},{y,2}}.
    {move,{y,1},{x,1}}.
    {move,{integer,43},{x,2}}.
    {move,{integer,3},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",888}]}.
    {call_ext,3,{extfunc,erlang,setelement,3}}.
    {move,{y,1},{x,1}}.
    {move,{integer,43},{x,2}}.
    {init,{y,1}}.
    {move,{integer,3},{x,0}}.
    {call_ext,3,{extfunc,erlang,setelement,3}}.
    {set_tuple_element,{integer,42},{x,0},1}.
    {gc_bif,byte_size,{f,507},1,[{y,2}],{x,1}}.
    {test,is_lt,{f,507},[{integer,0},{x,1}]}.
    {move,{y,0},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{y,2},{x,0}}.
    {call_last,3,{f,503},3}. % coverage_build/3
  {label,505}.
    {bs_set_position,{x,3},{x,1}}.
    {test,bs_test_tail2,{f,506},[{x,3},0]}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{x,0},{x,2}]}}.
    return.
  {label,506}.
    {bs_get_tail,{x,3},{x,1},4}.
    {jump,{f,502}}.
  {label,507}.
    {line,[{location,"bs_match_r23_SUITE.erl",889}]}.
    if_end.


{function, coverage_bc, 2, 509}.
  {label,508}.
    {line,[{location,"bs_match_r23_SUITE.erl",895}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,coverage_bc},2}.
  {label,509}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,508},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_get_integer2,
          {f,510},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[895,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_unit,{f,510},[{x,2},8]}.
    {allocate,3,4}.
    {move,{x,3},{y,0}}.
    {move,{x,2},{y,1}}.
    {move,{x,1},{y,2}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {test_heap,2,1}.
    {put_list,{y,0},nil,{x,1}}.
    {swap,{x,0},{x,1}}.
    {trim,1,2}.
    {line,[{location,"bs_match_r23_SUITE.erl",896}]}.
    {call,2,{f,2145}}. % '-coverage_bc/2-lbc$^0/2-0-'/2
    {test_heap,2,1}.
    {put_list,{x,0},{y,1},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,509},2}. % coverage_bc/2
  {label,510}.
    {bs_set_position,{x,2},{x,0}}.
    {test,bs_test_tail2,{f,511},[{x,2},0]}.
    {move,{x,1},{x,0}}.
    return.
  {label,511}.
    {bs_get_tail,{x,2},{x,0},3}.
    {jump,{f,508}}.


{function, coverage_setelement, 2, 513}.
  {label,512}.
    {line,[{location,"bs_match_r23_SUITE.erl",900}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,coverage_setelement},2}.
  {label,513}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,512},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_get_integer2,
          {f,514},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[900,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,514},
          4,
          [{x,2},
           {atom,all},
           8,
           {field_flags,[{anno,[900,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {bif,element,{f,514},[{integer,1},{x,1}],{x,5}}.
    {test,is_eq_exact,{f,514},[{x,5},{atom,x}]}.
    {move,{x,4},{x,2}}.
    {move,{x,3},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",901}]}.
    {call_ext_only,3,{extfunc,erlang,setelement,3}}.
  {label,514}.
    {bs_set_position,{x,2},{x,0}}.
    {bs_get_tail,{x,2},{x,0},3}.
    {jump,{f,512}}.


{function, coverage_apply, 2, 516}.
  {label,515}.
    {line,[{location,"bs_match_r23_SUITE.erl",903}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,coverage_apply},2}.
  {label,516}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,515},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_get_integer2,
          {f,517},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[903,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_unit,{f,517},[{x,2},8]}.
    {test,is_nonempty_list,{f,517},[{x,1}]}.
    {allocate,2,4}.
    {move,{x,2},{y,1}}.
    {get_list,{x,1},{x,0},{y,0}}.
    {move,{atom,bs_match_r23_SUITE},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{x,3},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",904}]}.
    {apply,1}.
    {swap,{y,1},{x,0}}.
    {move,{y,0},{x,1}}.
    {trim,1,1}.
    {call,2,{f,516}}. % coverage_apply/2
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,517}.
    {bs_set_position,{x,2},{x,0}}.
    {test,bs_test_tail2,{f,518},[{x,2},0]}.
    {test,is_nil,{f,518},[{x,1}]}.
    {move,nil,{x,0}}.
    return.
  {label,518}.
    {bs_get_tail,{x,2},{x,0},3}.
    {jump,{f,515}}.


{function, coverage_external, 1, 520}.
  {label,519}.
    {line,[{location,"bs_match_r23_SUITE.erl",907}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,coverage_external},1}.
  {label,520}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,519},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_integer2,
          {f,521},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[907,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,521},
          3,
          [{x,1},
           {atom,all},
           8,
           {field_flags,[{anno,[907,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {allocate,1,4}.
    {move,{x,2},{y,0}}.
    {move,{x,3},{x,1}}.
    {move,{x,3},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",908}]}.
    {call_ext,2,{extfunc,bs_match_r23_SUITE,coverage_external_ignore,2}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,521}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,519}}.


{function, coverage_external_ignore, 2, 523}.
  {label,522}.
    {line,[{location,"bs_match_r23_SUITE.erl",911}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,coverage_external_ignore},2}.
  {label,523}.
    {move,{atom,ok},{x,0}}.
    return.


{function, coverage_id, 1, 525}.
  {label,524}.
    {line,[{location,"bs_match_r23_SUITE.erl",914}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,coverage_id},1}.
  {label,525}.
    {call_only,1,{f,1968}}. % id/1


{function, do_coverage_bin_to_term_list, 1, 527}.
  {label,526}.
    {line,[{location,"bs_match_r23_SUITE.erl",916}]}.
    {func_info,{atom,bs_match_r23_SUITE},
               {atom,do_coverage_bin_to_term_list},
               1}.
  {label,527}.
    {allocate_zero,2,1}.
    {move,{x,0},{y,1}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",917}]}.
    {call,2,{f,2141}}. % '-do_coverage_bin_to_term_list/1-lbc$^0/2-0-'/2
    {move,{x,0},{y,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",920}]}.
    {call,1,{f,532}}. % do_coverage_bin_to_term_list_1/1
    {test,is_eq_exact,{f,530},[{x,0},{y,1}]}.
    {line,[{location,"bs_match_r23_SUITE.erl",921}]}.
    {move,{integer,0},{x,0}}.
    {bs_add,{f,0},[{x,0},{integer,11},8],{x,0}}.
    {bs_append,{f,0},{x,0},0,1,8,{y,0},{field_flags,[]},{x,0}}.
    {bs_put_string,11,{string,<<0,0,0,7,103,97,114,98,97,103,101>>}}.
    {move,{x,0},{x,0}}.
    {call,1,{f,532}}. % do_coverage_bin_to_term_list_1/1
    {test,is_eq_exact,{f,529},[{x,0},{y,1}]}.
    {line,[{location,"bs_match_r23_SUITE.erl",922}]}.
    {move,{integer,0},{x,0}}.
    {bs_add,{f,0},[{x,0},{integer,11},8],{x,0}}.
    {gc_bif,byte_size,{f,0},1,[{y,0}],{x,1}}.
    {bs_add,{f,0},[{x,0},{x,1},8],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_string,11,{string,<<0,0,0,7,103,97,114,98,97,103,101>>}}.
    {bs_put_binary,{f,0},{atom,all},8,{field_flags,[]},{y,0}}.
    {move,{x,0},{x,0}}.
    {trim,1,1}.
    {call,1,{f,532}}. % do_coverage_bin_to_term_list_1/1
    {test,is_eq_exact,{f,528},[{x,0},{y,0}]}.
    {deallocate,1}.
    return.
  {label,528}.
    {badmatch,{x,0}}.
  {label,529}.
    {line,[{location,"bs_match_r23_SUITE.erl",921}]}.
    {badmatch,{x,0}}.
  {label,530}.
    {line,[{location,"bs_match_r23_SUITE.erl",920}]}.
    {badmatch,{x,0}}.


{function, do_coverage_bin_to_term_list_1, 1, 532}.
  {label,531}.
    {line,[{location,"bs_match_r23_SUITE.erl",924}]}.
    {func_info,{atom,bs_match_r23_SUITE},
               {atom,do_coverage_bin_to_term_list_1},
               1}.
  {label,532}.
    {allocate_zero,2,1}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_match_r23_SUITE.erl",925}]}.
    {call,1,{f,537}}. % coverage_bin_to_term_list/1
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,0}}.
    {move,nil,{x,1}}.
    {line,[{location,"bs_match_r23_SUITE.erl",926}]}.
    {call,2,{f,544}}. % coverage_bin_to_term_list/2
    {test,is_eq_exact,{f,535},[{x,0},{y,0}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",927}]}.
    {call,1,{f,551}}. % coverage_bin_to_term_list_catch/1
    {test,is_eq_exact,{f,534},[{x,0},{y,0}]}.
    {move,nil,{x,1}}.
    {move,{y,1},{x,0}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {line,[{location,"bs_match_r23_SUITE.erl",928}]}.
    {call,2,{f,558}}. % coverage_bin_to_term_list_catch/2
    {test,is_eq_exact,{f,533},[{x,0},{y,0}]}.
    {deallocate,1}.
    return.
  {label,533}.
    {badmatch,{x,0}}.
  {label,534}.
    {line,[{location,"bs_match_r23_SUITE.erl",927}]}.
    {badmatch,{x,0}}.
  {label,535}.
    {line,[{location,"bs_match_r23_SUITE.erl",926}]}.
    {badmatch,{x,0}}.


{function, coverage_bin_to_term_list, 1, 537}.
  {label,536}.
    {line,[{location,"bs_match_r23_SUITE.erl",930}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,coverage_bin_to_term_list},1}.
  {label,537}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,541},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_integer2,
          {f,540},
          2,
          [{x,1},
           {integer,32},
           1,
           {field_flags,[{anno,[930,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,540},
          3,
          [{x,1},
           {x,2},
           8,
           {field_flags,[{anno,[930,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_unit,{f,540},[{x,1},8]}.
    {allocate_zero,3,3}.
    {move,{x,1},{y,1}}.
    {'try',{y,2},{f,538}}.
    {move,{x,2},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",931}]}.
    {call_ext,1,{extfunc,erlang,binary_to_term,1}}.
    {move,{x,0},{y,0}}.
    {try_end,{y,2}}.
    {move,{y,1},{x,0}}.
    {move,{y,0},{y,2}}.
    {trim,2,1}.
    {line,[{location,"bs_match_r23_SUITE.erl",932}]}.
    {call,1,{f,537}}. % coverage_bin_to_term_list/1
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,538}.
    {try_case,{y,2}}.
    {test,is_eq_exact,{f,539},[{x,0},{atom,error}]}.
    {test,is_eq_exact,{f,539},[{x,1},{atom,badarg}]}.
    {move,{y,1},{x,0}}.
    {call_last,1,{f,537},3}. % coverage_bin_to_term_list/1
  {label,539}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.
  {label,540}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {test,is_eq_exact,{f,536},[{x,0},{literal,<<>>}]}.
    {jump,{f,542}}.
  {label,541}.
    {test,is_eq_exact,{f,536},[{x,0},{literal,<<>>}]}.
  {label,542}.
    {move,nil,{x,0}}.
    return.


{function, coverage_bin_to_term_list, 2, 544}.
  {label,543}.
    {line,[{location,"bs_match_r23_SUITE.erl",938}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,coverage_bin_to_term_list},2}.
  {label,544}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,548},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_get_integer2,
          {f,547},
          3,
          [{x,2},
           {integer,32},
           1,
           {field_flags,[{anno,[938,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,547},
          4,
          [{x,2},
           {x,3},
           8,
           {field_flags,[{anno,[938,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_unit,{f,547},[{x,2},8]}.
    {allocate,3,4}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{y,1}}.
    {'try',{y,2},{f,545}}.
    {move,{x,3},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",939}]}.
    {call_ext,1,{extfunc,erlang,binary_to_term,1}}.
    {try_end,{y,2}}.
    {test_heap,2,1}.
    {put_list,{x,0},{y,1},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,544},3}. % coverage_bin_to_term_list/2
  {label,545}.
    {try_case,{y,2}}.
    {test,is_eq_exact,{f,546},[{x,0},{atom,error}]}.
    {test,is_eq_exact,{f,546},[{x,1},{atom,badarg}]}.
    {move,{y,1},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,544},3}. % coverage_bin_to_term_list/2
  {label,546}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.
  {label,547}.
    {bs_set_position,{x,2},{x,0}}.
    {bs_get_tail,{x,2},{x,0},3}.
    {test,is_eq_exact,{f,543},[{x,0},{literal,<<>>}]}.
    {jump,{f,549}}.
  {label,548}.
    {test,is_eq_exact,{f,543},[{x,0},{literal,<<>>}]}.
  {label,549}.
    {move,{x,1},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",944}]}.
    {call_ext_only,1,{extfunc,lists,reverse,1}}.


{function, coverage_bin_to_term_list_catch, 1, 551}.
  {label,550}.
    {line,[{location,"bs_match_r23_SUITE.erl",946}]}.
    {func_info,{atom,bs_match_r23_SUITE},
               {atom,coverage_bin_to_term_list_catch},
               1}.
  {label,551}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,555},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_integer2,
          {f,554},
          2,
          [{x,1},
           {integer,32},
           1,
           {field_flags,[{anno,[946,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,554},
          3,
          [{x,1},
           {x,2},
           8,
           {field_flags,[{anno,[946,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_unit,{f,554},[{x,1},8]}.
    {allocate,2,3}.
    {move,{x,1},{y,0}}.
    {'catch',{y,1},{f,552}}.
    {move,{x,2},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",947}]}.
    {call_ext,1,{extfunc,erlang,binary_to_term,1}}.
  {label,552}.
    {catch_end,{y,1}}.
    {move,{x,0},{y,1}}.
    {test,is_tagged_tuple,{f,553},[{y,1},2,{atom,'EXIT'}]}.
    {get_tuple_element,{y,1},0,{x,0}}.
    {test,is_eq_exact,{f,553},[{x,0},{atom,'EXIT'}]}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,551},2}. % coverage_bin_to_term_list_catch/1
  {label,553}.
    {move,{y,0},{x,0}}.
    {trim,1,1}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",949}]}.
    {call,1,{f,551}}. % coverage_bin_to_term_list_catch/1
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,554}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {test,is_eq_exact,{f,550},[{x,0},{literal,<<>>}]}.
    {jump,{f,556}}.
  {label,555}.
    {test,is_eq_exact,{f,550},[{x,0},{literal,<<>>}]}.
  {label,556}.
    {move,nil,{x,0}}.
    return.


{function, coverage_bin_to_term_list_catch, 2, 558}.
  {label,557}.
    {line,[{location,"bs_match_r23_SUITE.erl",953}]}.
    {func_info,{atom,bs_match_r23_SUITE},
               {atom,coverage_bin_to_term_list_catch},
               2}.
  {label,558}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,562},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_get_integer2,
          {f,561},
          3,
          [{x,2},
           {integer,32},
           1,
           {field_flags,[{anno,[953,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,561},
          4,
          [{x,2},
           {x,3},
           8,
           {field_flags,[{anno,[953,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_unit,{f,561},[{x,2},8]}.
    {allocate,3,4}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{y,1}}.
    {'catch',{y,2},{f,559}}.
    {move,{x,3},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",954}]}.
    {call_ext,1,{extfunc,erlang,binary_to_term,1}}.
  {label,559}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,560},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,560},[{x,1},{atom,'EXIT'}]}.
    {move,{y,1},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,558},3}. % coverage_bin_to_term_list_catch/2
  {label,560}.
    {test_heap,2,1}.
    {put_list,{x,0},{y,1},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,558},3}. % coverage_bin_to_term_list_catch/2
  {label,561}.
    {bs_set_position,{x,2},{x,0}}.
    {bs_get_tail,{x,2},{x,0},3}.
    {test,is_eq_exact,{f,557},[{x,0},{literal,<<>>}]}.
    {jump,{f,563}}.
  {label,562}.
    {test,is_eq_exact,{f,557},[{x,0},{literal,<<>>}]}.
  {label,563}.
    {move,{x,1},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",958}]}.
    {call_ext_only,1,{extfunc,lists,reverse,1}}.


{function, coverage_per_key, 1, 565}.
  {label,564}.
    {line,[{location,"bs_match_r23_SUITE.erl",960}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,coverage_per_key},1}.
  {label,565}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,564},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_integer2,
          {f,566},
          2,
          [{x,1},
           {integer,32},
           1,
           {field_flags,[{anno,[960,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,566},
          3,
          [{x,1},
           {atom,all},
           8,
           {field_flags,[{anno,[960,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},4}.
    {line,[{location,"bs_match_r23_SUITE.erl",961}]}.
    {gc_bif,byte_size,{f,0},4,[{x,0}],{x,0}}.
    {test,is_eq_exact,{f,567},[{x,0},{x,2}]}.
    {move,{x,3},{x,0}}.
    return.
  {label,566}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,564}}.
  {label,567}.
    {badmatch,{atom,false}}.


{function, coverage_bitstring, 1, 569}.
  {label,568}.
    {line,[{location,"bs_match_r23_SUITE.erl",964}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,coverage_bitstring},1}.
  {label,569}.
    {test,is_binary,{f,570},[{x,0}]}.
    {move,{atom,binary},{x,0}}.
    return.
  {label,570}.
    {test,bs_start_match3,{f,571},1,[{x,0}],{x,0}}.
    {move,{atom,bitstring},{x,0}}.
    return.
  {label,571}.
    {move,{atom,other},{x,0}}.
    return.


{function, coverage_trim, 6, 573}.
  {label,572}.
    {line,[{location,"bs_match_r23_SUITE.erl",968}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,coverage_trim},6}.
  {label,573}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,572},6,[{x,0}],{x,6}}.
    {bs_get_position,{x,6},{x,0},7}.
    {test,bs_get_integer2,
          {f,576},
          7,
          [{x,6},
           {integer,8},
           1,
           {field_flags,[{anno,[968,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,7}}.
    {test,bs_test_unit,{f,576},[{x,6},8]}.
    {allocate,8,8}.
    {move,{x,0},{y,0}}.
    {move,{x,7},{y,1}}.
    {move,{x,6},{y,2}}.
    {move,{x,5},{y,3}}.
    {move,{x,4},{y,4}}.
    {move,{x,3},{y,5}}.
    {move,{x,2},{y,6}}.
    {move,{x,1},{y,7}}.
    {bif,'<',{f,0},[{integer,128},{x,7}],{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",969}]}.
    {call,1,{f,1968}}. % id/1
    {select_val,{x,0},
                {f,577},
                {list,[{atom,false},{f,575},{atom,true},{f,574}]}}.
  {label,574}.
    {test_heap,2,0}.
    {put_list,{y,1},{y,3},{x,5}}.
    {move,{y,4},{x,4}}.
    {move,{y,5},{x,3}}.
    {move,{y,6},{x,2}}.
    {move,{y,7},{x,1}}.
    {move,{y,2},{x,0}}.
    {call_last,6,{f,573},8}. % coverage_trim/6
  {label,575}.
    {move,{y,3},{x,0}}.
    {move,{y,0},{y,7}}.
    {move,{y,2},{y,6}}.
    {trim,6,2}.
    {line,[{location,"bs_match_r23_SUITE.erl",973}]}.
    {call_ext,1,{extfunc,lists,reverse,1}}.
    {bs_set_position,{y,0},{y,1}}.
    {bs_get_tail,{y,0},{x,1},1}.
    {test_heap,4,2}.
    {put_tuple2,{x,0},{list,[{atom,done},{x,1},{x,0}]}}.
    {deallocate,2}.
    return.
  {label,576}.
    {bs_set_position,{x,6},{x,0}}.
    {bs_get_tail,{x,6},{x,0},7}.
    {jump,{f,572}}.
  {label,577}.
    {line,[{location,"bs_match_r23_SUITE.erl",969}]}.
    {case_end,{x,0}}.


{function, coverage_trim_1, 3, 579}.
  {label,578}.
    {line,[{location,"bs_match_r23_SUITE.erl",976}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,coverage_trim_1},3}.
  {label,579}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,582},3,[{x,0}],{x,3}}.
    {bs_get_position,{x,3},{x,0},4}.
    {test,bs_match_string,{f,580},[{x,3},8,{string,<<"/">>}]}.
    {test,bs_test_tail2,{f,580},[{x,3},0]}.
    {allocate,0,3}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {line,[{location,"bs_match_r23_SUITE.erl",979}]}.
    {call,2,{f,584}}. % do_coverage_trim_1/2
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{integer,1},8],{x,1}}.
    {gc_bif,byte_size,{f,0},2,[{x,0}],{x,2}}.
    {bs_add,{f,0},[{x,1},{x,2},8],{x,1}}.
    {bs_init_bits,{f,0},{x,1},0,2,{field_flags,[]},{x,1}}.
    {bs_put_string,1,{string,<<"/">>}}.
    {bs_put_binary,{f,0},{atom,all},8,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,0}}.
    {deallocate,0}.
    return.
  {label,580}.
    {bs_set_position,{x,3},{x,0}}.
    {test,bs_test_tail2,{f,581},[{x,3},0]}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {call_only,2,{f,584}}. % do_coverage_trim_1/2
  {label,581}.
    {allocate,2,4}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{y,1}}.
    {bs_get_tail,{x,3},{x,0},4}.
    {move,{x,2},{x,1}}.
    {line,[{location,"bs_match_r23_SUITE.erl",981}]}.
    {call,2,{f,584}}. % do_coverage_trim_1/2
    {swap,{y,1},{x,0}}.
    {move,{y,0},{x,1}}.
    {init,{y,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",983}]}.
    {call,2,{f,584}}. % do_coverage_trim_1/2
    {line,[{location,"bs_match_r23_SUITE.erl",981}]}.
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{integer,1},8],{x,1}}.
    {gc_bif,byte_size,{f,0},2,[{x,0}],{x,2}}.
    {bs_add,{f,0},[{x,1},{x,2},8],{x,1}}.
    {bs_append,{f,0},{x,1},0,2,8,{y,1},{field_flags,[]},{x,1}}.
    {bs_put_string,1,{string,<<"/">>}}.
    {bs_put_binary,{f,0},{atom,all},8,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,0}}.
    {deallocate,2}.
    return.
  {label,582}.
    {allocate,2,3}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{x,2},{x,1}}.
    {call,2,{f,584}}. % do_coverage_trim_1/2
    {swap,{y,1},{x,0}}.
    {move,{y,0},{x,1}}.
    {init,{y,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",983}]}.
    {call,2,{f,584}}. % do_coverage_trim_1/2
    {line,[{location,"bs_match_r23_SUITE.erl",981}]}.
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{integer,1},8],{x,1}}.
    {gc_bif,byte_size,{f,0},2,[{x,0}],{x,2}}.
    {bs_add,{f,0},[{x,1},{x,2},8],{x,1}}.
    {bs_append,{f,0},{x,1},0,2,8,{y,1},{field_flags,[]},{x,1}}.
    {bs_put_string,1,{string,<<"/">>}}.
    {bs_put_binary,{f,0},{atom,all},8,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,0}}.
    {deallocate,2}.
    return.


{function, do_coverage_trim_1, 2, 584}.
  {label,583}.
    {line,[{location,"bs_match_r23_SUITE.erl",985}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,do_coverage_trim_1},2}.
  {label,584}.
    {line,[{location,"bs_match_r23_SUITE.erl",986}]}.
    {move,{integer,0},{x,2}}.
    {bs_add,{f,0},[{x,2},{integer,3},8],{x,2}}.
    {gc_bif,byte_size,{f,0},3,[{x,1}],{x,3}}.
    {bs_add,{f,0},[{x,2},{x,3},8],{x,2}}.
    {gc_bif,byte_size,{f,0},3,[{x,0}],{x,3}}.
    {bs_add,{f,0},[{x,2},{x,3},8],{x,2}}.
    {bs_init_bits,{f,0},{x,2},0,3,{field_flags,[]},{x,2}}.
    {bs_put_string,1,{string,<<"(">>}}.
    {bs_put_binary,{f,0},{atom,all},8,{field_flags,[]},{x,0}}.
    {bs_put_string,1,{string,<<"|">>}}.
    {bs_put_binary,{f,0},{atom,all},8,{field_flags,[]},{x,1}}.
    {bs_put_string,1,{string,<<")">>}}.
    {move,{x,2},{x,0}}.
    return.


{function, coverage_trim_2, 3, 586}.
  {label,585}.
    {line,[{location,"bs_match_r23_SUITE.erl",988}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,coverage_trim_2},3}.
  {label,586}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,585},3,[{x,0}],{x,3}}.
    {bs_get_position,{x,3},{x,0},4}.
    {test,bs_get_utf8,
          {f,589},
          4,
          [{x,3},
           {field_flags,[{anno,[988,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_unit,{f,589},[{x,3},8]}.
    {allocate,5,5}.
    {move,{x,0},{y,0}}.
    {move,{x,4},{y,1}}.
    {move,{x,3},{y,2}}.
    {move,{x,2},{y,3}}.
    {move,{x,1},{y,4}}.
    {move,{x,4},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",989}]}.
    {call,1,{f,598}}. % printable_char/1
    {select_val,{x,0},
                {f,590},
                {list,[{atom,false},{f,588},{atom,true},{f,587}]}}.
  {label,587}.
    {line,[{location,"bs_match_r23_SUITE.erl",991}]}.
    {gc_bif,'-',{f,0},0,[{y,4},{integer,1}],{x,0}}.
    {test_heap,2,1}.
    {put_list,{y,1},{y,3},{x,2}}.
    {move,{x,0},{x,1}}.
    {move,{y,2},{x,0}}.
    {call_last,3,{f,586},5}. % coverage_trim_2/3
  {label,588}.
    {move,{y,3},{x,0}}.
    {move,{y,0},{y,3}}.
    {trim,2,3}.
    {line,[{location,"bs_match_r23_SUITE.erl",993}]}.
    {call_ext,1,{extfunc,lists,reverse,1}}.
    {bs_set_position,{y,0},{y,1}}.
    {bs_get_tail,{y,0},{x,1},1}.
    {test_heap,4,2}.
    {put_tuple2,{x,0},{list,[{y,2},{x,1},{x,0}]}}.
    {deallocate,3}.
    return.
  {label,589}.
    {bs_set_position,{x,3},{x,0}}.
    {bs_get_tail,{x,3},{x,0},4}.
    {jump,{f,585}}.
  {label,590}.
    {line,[{location,"bs_match_r23_SUITE.erl",989}]}.
    {case_end,{x,0}}.


{function, coverage_trim_3, 2, 592}.
  {label,591}.
    {line,[{location,"bs_match_r23_SUITE.erl",996}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,coverage_trim_3},2}.
  {label,592}.
    {allocate_zero,3,2}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
    {line,[{location,"bs_match_r23_SUITE.erl",997}]}.
    {call_ext,1,{extfunc,erlang,iolist_size,1}}.
    {gc_bif,'-',{f,0},1,[{x,0},{y,1}],{y,0}}.
    {move,{y,2},{x,0}}.
    {move,{y,0},{y,2}}.
    {trim,1,2}.
    {line,[{location,"bs_match_r23_SUITE.erl",999}]}.
    {call_ext,1,{extfunc,erlang,iolist_to_binary,1}}.
    {test,bs_start_match3,{f,593},1,[{x,0}],{x,1}}.
    {test,bs_get_binary2,
          {f,593},
          2,
          [{x,1},
           {y,1},
           8,
           {field_flags,[{anno,[998,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,593},
          3,
          [{x,1},
           {y,0},
           8,
           {field_flags,[{anno,[998,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,593},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    {deallocate,2}.
    return.
  {label,593}.
    {line,[{location,"bs_match_r23_SUITE.erl",998}]}.
    {badmatch,{x,0}}.


{function, coverage_trim_4, 1, 595}.
  {label,594}.
    {line,[{location,"bs_match_r23_SUITE.erl",1002}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,coverage_trim_4},1}.
  {label,595}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {init,{y,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1003}]}.
    {call,2,{f,2137}}. % '-coverage_trim_4/1-lbc$^0/2-0-'/2
    {line,[{location,"bs_match_r23_SUITE.erl",1005}]}.
    {move,{integer,0},{x,0}}.
    {bs_add,{f,596},[{x,0},{integer,2},8],{x,0}}.
    {bs_init_bits,{f,596},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_integer,{f,596},
                    {integer,16},
                    1,
                    {field_flags,[native]},
                    {integer,57348}}.
    {move,{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,596}.
    {move,{atom,error},{x,0}}.
    {deallocate,1}.
    return.


{function, printable_char, 1, 598}.
  {label,597}.
    {line,[{location,"bs_match_r23_SUITE.erl",1011}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,printable_char},1}.
  {label,598}.
    {bif,'=:=',{f,0},[{x,0},{integer,97}],{x,0}}.
    return.


{function, coverage_beam_ssa_codegen, 1, 600}.
  {label,599}.
    {line,[{location,"bs_match_r23_SUITE.erl",1014}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,coverage_beam_ssa_codegen},1}.
  {label,600}.
    {move,{literal,#{1 => 42}},{x,1}}.
    {get_map_elements,{f,601},{x,1},{list,[{integer,1},{x,1}]}}.
    {test,is_eq_exact,{f,601},[{x,1},{integer,42}]}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_match_r23_SUITE.erl",1020}]}.
    {call,2,{f,2132}}. % '-coverage_beam_ssa_codegen/1-lbc$^0/2-0-'/2
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,601}.
    {line,[{location,"bs_match_r23_SUITE.erl",1018}]}.
    {case_end,{literal,#{1 => 42}}}.


{function, coverage_beam_ssa_pre_codegen, 1, 603}.
  {label,602}.
    {line,[{location,"bs_match_r23_SUITE.erl",1024}]}.
    {func_info,{atom,bs_match_r23_SUITE},
               {atom,coverage_beam_ssa_pre_codegen},
               1}.
  {label,603}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,602},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_integer2,
          {f,608},
          2,
          [{x,1},
           {integer,0},
           1,
           {field_flags,[{anno,[1024,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {gc_bif,'div',{f,604},3,[{x,2},{x,2}],{x,3}}.
    {jump,{f,605}}.
  {label,604}.
    {move,{atom,bad_size},{x,3}}.
  {label,605}.
    {test,bs_get_integer2,
          {f,608},
          4,
          [{x,1},
           {x,3},
           1,
           {field_flags,[{anno,[1024,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {gc_bif,'bsl',{f,606},4,[{x,2},{x,3}],{x,2}}.
    {jump,{f,607}}.
  {label,606}.
    {move,{atom,bad_size},{x,2}}.
  {label,607}.
    {test,bs_skip_bits2,
          {f,608},
          [{x,1},
           {x,2},
           1,
           {field_flags,[{anno,[1024,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_test_tail2,{f,608},[{x,1},0]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,608}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,602}}.


{function, coverage_beam_ssa_bsm_error, 1, 610}.
  {label,609}.
    {line,[{location,"bs_match_r23_SUITE.erl",1027}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,coverage_beam_ssa_bsm_error},1}.
  {label,610}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,609},1,[{x,0}],{x,1}}.
    {test,bs_get_binary2,
          {f,614},
          2,
          [{x,1},
           {atom,all},
           1,
           {field_flags,[{anno,[1027,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,0}}.
    {select_val,{x,0},
                {f,613},
                {list,[{atom,false},{f,612},{atom,true},{f,611}]}}.
  {label,611}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,612}.
    return.
  {label,613}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,badarg},{x,0}]}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1028}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,614}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,609}}.


{function, multiple_uses, 1, 616}.
  {label,615}.
    {line,[{location,"bs_match_r23_SUITE.erl",1030}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,multiple_uses},1}.
  {label,616}.
    {test,is_list,{f,615},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<1,88,245,159,1,89>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1031}]}.
    {call,1,{f,624}}. % multiple_uses_1/1
    {test,is_eq_exact,
          {f,622},
          [{x,0},{literal,{344,62879,345,<<245,159,1,89>>}}]}.
    {move,{literal,<<0,0,197,18>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1032}]}.
    {call,1,{f,628}}. % multiple_uses_2/1
    {test,is_eq_exact,{f,621},[{x,0},{atom,true}]}.
    {make_fun2,{f,1968},0,0,0}.
    {move,{x,0},{x,1}}.
    {move,{literal,<<0,0,42,43>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1033}]}.
    {call,2,{f,631}}. % multiple_uses_3/2
    {test,is_eq_exact,{f,620},[{x,0},{literal,<<"*+">>}]}.
    {move,{integer,42},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1035}]}.
    {call,2,{f,640}}. % first_after/2
    {test,is_eq_exact,{f,619},[{x,0},{atom,ok}]}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1036}]}.
    {call,2,{f,640}}. % first_after/2
    {test,is_eq_exact,{f,618},[{x,0},{literal,<<1>>}]}.
    {move,{integer,1},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1037}]}.
    {call,2,{f,640}}. % first_after/2
    {test,is_eq_exact,{f,617},[{x,0},{literal,<<2>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,617}.
    {badmatch,{x,0}}.
  {label,618}.
    {line,[{location,"bs_match_r23_SUITE.erl",1036}]}.
    {badmatch,{x,0}}.
  {label,619}.
    {line,[{location,"bs_match_r23_SUITE.erl",1035}]}.
    {badmatch,{x,0}}.
  {label,620}.
    {line,[{location,"bs_match_r23_SUITE.erl",1033}]}.
    {badmatch,{x,0}}.
  {label,621}.
    {line,[{location,"bs_match_r23_SUITE.erl",1032}]}.
    {badmatch,{x,0}}.
  {label,622}.
    {line,[{location,"bs_match_r23_SUITE.erl",1031}]}.
    {badmatch,{x,0}}.


{function, multiple_uses_1, 1, 624}.
  {label,623}.
    {line,[{location,"bs_match_r23_SUITE.erl",1041}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,multiple_uses_1},1}.
  {label,624}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,623},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_integer2,
          {f,625},
          2,
          [{x,1},
           {integer,16},
           1,
           {field_flags,[{anno,[1041,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_position,{x,1},{x,3},3}.
    {test,bs_test_unit,{f,625},[{x,1},8]}.
    {allocate,3,4}.
    {move,{x,3},{y,0}}.
    {move,{x,2},{y,1}}.
    {move,{x,1},{y,2}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1043}]}.
    {call,1,{f,634}}. % multiple_uses_match/1
    {test,is_tuple,{f,626},[{x,0}]}.
    {test,test_arity,{f,626},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {bs_set_position,{y,2},{y,0}}.
    {bs_get_tail,{y,2},{x,2},2}.
    {test_heap,5,3}.
    {put_tuple2,{x,0},{list,[{y,1},{x,1},{x,0},{x,2}]}}.
    {deallocate,3}.
    return.
  {label,625}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,623}}.
  {label,626}.
    {badmatch,{x,0}}.


{function, multiple_uses_2, 1, 628}.
  {label,627}.
    {line,[{location,"bs_match_r23_SUITE.erl",1046}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,multiple_uses_2},1}.
  {label,628}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,627},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_skip_bits2,
          {f,629},
          [{x,1},
           {integer,16},
           1,
           {field_flags,[{anno,[1046,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,629},
          2,
          [{x,1},
           {atom,all},
           8,
           {field_flags,[{anno,[1046,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {move,{x,2},{x,1}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,637}}. % multiple_uses_cmp/2
  {label,629}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,627}}.


{function, multiple_uses_3, 2, 631}.
  {label,630}.
    {line,[{location,"bs_match_r23_SUITE.erl",1050}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,multiple_uses_3},2}.
  {label,631}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,630},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_skip_bits2,
          {f,632},
          [{x,2},
           {integer,16},
           1,
           {field_flags,[{anno,[1050,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,632},
          3,
          [{x,2},
           {atom,all},
           8,
           {field_flags,[{anno,[1050,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {allocate,0,4}.
    {move,{x,3},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1052}]}.
    {call_fun,1}.
    {deallocate,0}.
    return.
  {label,632}.
    {bs_set_position,{x,2},{x,0}}.
    {bs_get_tail,{x,2},{x,0},3}.
    {jump,{f,630}}.


{function, multiple_uses_match, 1, 634}.
  {label,633}.
    {line,[{location,"bs_match_r23_SUITE.erl",1054}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,multiple_uses_match},1}.
  {label,634}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,633},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_integer2,
          {f,635},
          2,
          [{x,1},
           {integer,16},
           1,
           {field_flags,[{anno,[1054,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,635},
          3,
          [{x,1},
           {integer,16},
           1,
           {field_flags,[{anno,[1054,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,635},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,635}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,633}}.


{function, multiple_uses_cmp, 2, 637}.
  {label,636}.
    {line,[{location,"bs_match_r23_SUITE.erl",1057}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,multiple_uses_cmp},2}.
  {label,637}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,636},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_get_integer2,
          {f,638},
          3,
          [{x,2},
           {integer,16},
           1,
           {field_flags,[{anno,[1057,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,638},[{x,2},0]}.
    {test,bs_start_match3,{f,638},4,[{x,1}],{x,4}}.
    {test,bs_get_integer2,
          {f,638},
          5,
          [{x,4},
           {integer,16},
           1,
           {field_flags,[{anno,[1057,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_test_tail2,{f,638},[{x,4},0]}.
    {bif,'=:=',{f,0},[{x,5},{x,3}],{x,0}}.
    return.
  {label,638}.
    {bs_set_position,{x,2},{x,0}}.
    {bs_get_tail,{x,2},{x,0},3}.
    {jump,{f,636}}.


{function, first_after, 2, 640}.
  {label,639}.
    {line,[{location,"bs_match_r23_SUITE.erl",1060}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,first_after},2}.
  {label,640}.
    {line,[{location,"bs_match_r23_SUITE.erl",1061}]}.
    {gc_bif,byte_size,{f,0},2,[{x,0}],{x,2}}.
    {test,is_lt,{f,641},[{x,1},{x,2}]}.
    {test,bs_start_match3,{f,643},2,[{x,0}],{x,2}}.
    {test,bs_skip_bits2,
          {f,643},
          [{x,2},
           {x,1},
           8,
           {field_flags,[{anno,[1066,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_get_position,{x,2},{x,1},3}.
    {test,bs_test_unit,{f,643},[{x,2},8]}.
    {allocate,2,3}.
    {move,{x,1},{y,0}}.
    {move,{x,2},{y,1}}.
    {move,{x,2},{x,1}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1068}]}.
    {call,2,{f,645}}. % match_first/2
    {test,is_tuple,{f,642},[{x,0}]}.
    {test,test_arity,{f,642},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,0}}.
    {bs_set_position,{y,1},{y,0}}.
    {bs_get_tail,{y,1},{x,1},1}.
    {deallocate,2}.
    return.
  {label,641}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,642}.
    {badmatch,{x,0}}.
  {label,643}.
    {line,[{location,"bs_match_r23_SUITE.erl",1066}]}.
    {badmatch,{x,0}}.


{function, match_first, 2, 645}.
  {label,644}.
    {line,[{location,"bs_match_r23_SUITE.erl",1075}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,match_first},2}.
  {label,645}.
    {'%',{var_info,{x,1},[accepts_match_context]}}.
    {test,bs_start_match3,{f,644},2,[{x,1}],{x,2}}.
    {bs_get_position,{x,2},{x,1},3}.
    {test,bs_get_binary2,
          {f,646},
          3,
          [{x,2},
           {integer,1},
           8,
           {field_flags,[{anno,[1075,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,646},
          4,
          [{x,2},
           {atom,all},
           8,
           {field_flags,[{anno,[1075,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test_heap,3,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4}]}}.
    return.
  {label,646}.
    {bs_set_position,{x,2},{x,1}}.
    {bs_get_tail,{x,2},{x,1},3}.
    {jump,{f,644}}.


{function, zero_label, 1, 648}.
  {label,647}.
    {line,[{location,"bs_match_r23_SUITE.erl",1078}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,zero_label},1}.
  {label,648}.
    {test,is_list,{f,647},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<"FACEnosemouth">>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1079}]}.
    {call,1,{f,652}}. % read_pols/1
    {test,is_eq_exact,{f,650},[{x,0},{literal,<<"nosemouth">>}]}.
    {move,{literal,<<"noFACE">>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1080}]}.
    {call,1,{f,652}}. % read_pols/1
    {test,is_eq_exact,{f,649},[{x,0},{literal,<<"CE">>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,649}.
    {badmatch,{x,0}}.
  {label,650}.
    {line,[{location,"bs_match_r23_SUITE.erl",1079}]}.
    {badmatch,{x,0}}.


{function, read_pols, 1, 652}.
  {label,651}.
    {line,[{location,"bs_match_r23_SUITE.erl",1083}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,read_pols},1}.
  {label,652}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,654},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_skip_bits2,
          {f,653},
          [{x,1},
           {integer,4},
           8,
           {field_flags,[{anno,[1084,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,653},
          2,
          [{x,1},
           {atom,all},
           8,
           {field_flags,[{anno,[1084,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {move,{x,2},{x,0}}.
    return.
  {label,653}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_r23_SUITE.erl",1084}]}.
    {badmatch,{x,0}}.
  {label,654}.
    {badmatch,{x,0}}.


{function, followed_by_catch, 1, 656}.
  {label,655}.
    {line,[{location,"bs_match_r23_SUITE.erl",1089}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,followed_by_catch},1}.
  {label,656}.
    {test,is_list,{f,655},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<0,1,2,3,4,5>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1090}]}.
    {call,1,{f,659}}. % handle/1
    {test,is_eq_exact,{f,657},[{x,0},{atom,ok}]}.
    {deallocate,0}.
    return.
  {label,657}.
    {badmatch,{x,0}}.


{function, handle, 1, 659}.
  {label,658}.
    {line,[{location,"bs_match_r23_SUITE.erl",1093}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,handle},1}.
  {label,659}.
    {test,is_eq_exact,{f,660},[{x,0},{literal,<<>>}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,660}.
    {test,bs_start_match3,{f,664},1,[{x,0}],{x,1}}.
    {test,bs_skip_bits2,
          {f,664},
          [{x,1},
           {integer,16},
           1,
           {field_flags,[{anno,[1095,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,664},
          2,
          [{x,1},
           {atom,all},
           8,
           {field_flags,[{anno,[1095,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {allocate,2,2}.
    {move,{x,1},{y,0}}.
    {'catch',{y,1},{f,661}}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",1096}]}.
    {call_ext,0,{extfunc,fooX,func,0}}.
  {label,661}.
    {catch_end,{y,1}}.
    {test,is_nonempty_list,{f,662},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_nil,{f,662},[{x,0}]}.
    {test,is_tagged_tuple,{f,663},[{x,1},2,{atom,rec}]}.
    {get_tuple_element,{x,1},0,{x,0}}.
    {test,is_eq_exact,{f,663},[{x,0},{atom,rec}]}.
  {label,662}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,659},2}. % handle/1
  {label,663}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",1098}]}.
    {badrecord,{x,1}}.
  {label,664}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",1095}]}.
    {badmatch,{x,0}}.


{function, matching_meets_construction, 1, 666}.
  {label,665}.
    {line,[{location,"bs_match_r23_SUITE.erl",1104}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,matching_meets_construction},1}.
  {label,666}.
    {test,is_list,{f,665},[{x,0}]}.
    {allocate_zero,2,0}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1105}]}.
    {call,1,{f,1968}}. % id/1
    {move,{x,0},{y,1}}.
    {move,{integer,2},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1106}]}.
    {call,1,{f,1968}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{literal,<<1,2,3,4,5>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1107}]}.
    {call,1,{f,1968}}. % id/1
    {test,bs_start_match3,{f,674},1,[{x,0}],{x,1}}.
    {test,bs_skip_bits2,
          {f,674},
          [{x,1},
           {y,0},
           8,
           {field_flags,[{anno,[1108,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,674},
          2,
          [{x,1},
           {atom,all},
           8,
           {field_flags,[{anno,[1108,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1109}]}.
    {move,{integer,0},{x,2}}.
    {gc_bif,byte_size,{f,0},3,[{y,1}],{x,3}}.
    {bs_add,{f,0},[{x,2},{x,3},8],{x,2}}.
    {bs_append,{f,0},{x,2},0,3,8,{x,1},{field_flags,[]},{x,2}}.
    {bs_put_binary,{f,0},{atom,all},8,{field_flags,[]},{y,1}}.
    {move,{x,2},{x,0}}.
    {test,is_eq_exact,{f,673},[{x,0},{literal,<<3,4,5,97,98,99>>}]}.
    {'catch',{y,1},{f,667}}.
    {init,{y,0}}.
    {move,{literal,<<"Abc">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",1111}]}.
    {call,1,{f,676}}. % matching_meets_construction_1/1
  {label,667}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,672},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,672},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,672},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,672},[{x,1},{atom,badarg}]}.
    {'catch',{y,0},{f,668}}.
    {init,{y,1}}.
    {move,{literal,<<"Abc">>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",1112}]}.
    {call,1,{f,679}}. % matching_meets_construction_2/1
  {label,668}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,671},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,671},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,671},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,671},[{x,1},{atom,badarg}]}.
    {move,{literal,<<"Abc">>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",1113}]}.
    {call,1,{f,682}}. % matching_meets_construction_3/1
    {test,is_eq_exact,{f,670},[{x,0},{literal,<<"Bbc">>}]}.
    {move,{integer,2},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",1115}]}.
    {call,2,{f,685}}. % encode_octet_string/2
    {test,is_eq_exact,{f,669},[{x,0},{literal,<<1,2>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,669}.
    {badmatch,{x,0}}.
  {label,670}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",1113}]}.
    {badmatch,{x,0}}.
  {label,671}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",1112}]}.
    {badmatch,{x,0}}.
  {label,672}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",1111}]}.
    {badmatch,{x,0}}.
  {label,673}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",1110}]}.
    {badmatch,{x,0}}.
  {label,674}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",1108}]}.
    {badmatch,{x,0}}.


{function, matching_meets_construction_1, 1, 676}.
  {label,675}.
    {line,[{location,"bs_match_r23_SUITE.erl",1118}]}.
    {func_info,{atom,bs_match_r23_SUITE},
               {atom,matching_meets_construction_1},
               1}.
  {label,676}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,675},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_match_string,{f,677},[{x,1},8,{string,<<"A">>}]}.
    {test,bs_get_binary2,
          {f,677},
          2,
          [{x,1},
           {atom,all},
           8,
           {field_flags,[{anno,[1118,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,2},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_string,1,{string,<<"B">>}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,0}}.
    return.
  {label,677}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,675}}.


{function, matching_meets_construction_2, 1, 679}.
  {label,678}.
    {line,[{location,"bs_match_r23_SUITE.erl",1120}]}.
    {func_info,{atom,bs_match_r23_SUITE},
               {atom,matching_meets_construction_2},
               1}.
  {label,679}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,678},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_match_string,{f,680},[{x,1},8,{string,<<"A">>}]}.
    {test,bs_get_binary2,
          {f,680},
          2,
          [{x,1},
           {atom,all},
           8,
           {field_flags,[{anno,[1120,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,9},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_string,1,{string,<<"B">>}}.
    {bs_put_float,{f,0},{integer,64},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,0}}.
    return.
  {label,680}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,678}}.


{function, matching_meets_construction_3, 1, 682}.
  {label,681}.
    {line,[{location,"bs_match_r23_SUITE.erl",1122}]}.
    {func_info,{atom,bs_match_r23_SUITE},
               {atom,matching_meets_construction_3},
               1}.
  {label,682}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,681},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_match_string,{f,683},[{x,1},8,{string,<<"A">>}]}.
    {test,bs_get_binary2,
          {f,683},
          2,
          [{x,1},
           {atom,all},
           8,
           {field_flags,[{anno,[1122,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,1},8],{x,3}}.
    {gc_bif,byte_size,{f,0},4,[{x,2}],{x,4}}.
    {bs_add,{f,0},[{x,3},{x,4},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_string,1,{string,<<"B">>}}.
    {bs_put_binary,{f,0},{atom,all},8,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,0}}.
    return.
  {label,683}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,681}}.


{function, encode_octet_string, 2, 685}.
  {label,684}.
    {line,[{location,"bs_match_r23_SUITE.erl",1124}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,encode_octet_string},2}.
  {label,685}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,684},2,[{x,0}],{x,2}}.
    {test,bs_get_binary2,
          {f,686},
          3,
          [{x,2},
           {atom,all},
           8,
           {field_flags,[{anno,[1124,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1125}]}.
    {move,{integer,0},{x,2}}.
    {bs_add,{f,0},[{x,2},{x,1},8],{x,2}}.
    {bs_init_bits,{f,0},{x,2},0,3,{field_flags,[]},{x,2}}.
    {bs_put_binary,{f,0},{x,1},8,{field_flags,[]},{x,0}}.
    {move,{x,2},{x,0}}.
    return.
  {label,686}.
    {bs_get_tail,{x,2},{x,0},3}.
    {jump,{f,684}}.


{function, simon, 1, 688}.
  {label,687}.
    {line,[{location,"bs_match_r23_SUITE.erl",1127}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,simon},1}.
  {label,688}.
    {test,is_list,{f,687},[{x,0}]}.
    {allocate_zero,3,0}.
    {move,{literal,<<>>},{x,1}}.
    {move,{atom,blurf},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1128}]}.
    {call,2,{f,697}}. % simon/2
    {test,is_eq_exact,{f,695},[{x,0},{atom,one}]}.
    {move,{literal,<<"*">>},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",1129}]}.
    {call,2,{f,697}}. % simon/2
    {test,is_eq_exact,{f,694},[{x,0},{atom,two}]}.
    {'catch',{y,2},{f,689}}.
    {move,{literal,<<1>>},{x,1}}.
    {move,{integer,17},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",1130}]}.
    {call,2,{f,697}}. % simon/2
  {label,689}.
    {catch_end,{y,2}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[17,<<1>>]},{x,1}}.
    {move,{atom,simon},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r23_SUITE.erl",1130}]}.
    {call,3,{f,963}}. % fc/3
    {'catch',{y,1},{f,690}}.
    {move,{literal,<<1,2,3>>},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r23_SUITE.erl",1131}]}.
    {call,2,{f,697}}. % simon/2
  {label,690}.
    {catch_end,{y,1}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[0,<<1,2,3>>]},{x,1}}.
    {move,{atom,simon},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r23_SUITE.erl",1131}]}.
    {call,3,{f,963}}. % fc/3
    {move,{literal,<<"\t">>},{x,1}}.
    {move,{atom,blurf},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r23_SUITE.erl",1133}]}.
    {call,2,{f,701}}. % simon2/2
    {test,is_eq_exact,{f,693},[{x,0},{atom,one}]}.
    {move,{literal,<<9,1>>},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",1134}]}.
    {call,2,{f,701}}. % simon2/2
    {test,is_eq_exact,{f,692},[{x,0},{atom,two}]}.
    {'catch',{y,0},{f,691}}.
    {move,{literal,<<"\t\n\v">>},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",1135}]}.
    {call,2,{f,701}}. % simon2/2
  {label,691}.
    {catch_end,{y,0}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[0,<<"\t\n\v">>]},{x,1}}.
    {move,{atom,simon2},{x,0}}.
    {line,[{scope,[1,2]},{location,"bs_match_r23_SUITE.erl",1135}]}.
    {call,3,{f,963}}. % fc/3
    {move,{atom,ok},{x,0}}.
    {deallocate,3}.
    return.
  {label,692}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",1134}]}.
    {badmatch,{x,0}}.
  {label,693}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",1133}]}.
    {badmatch,{x,0}}.
  {label,694}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",1129}]}.
    {badmatch,{x,0}}.
  {label,695}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",1128}]}.
    {badmatch,{x,0}}.


{function, simon, 2, 697}.
  {label,696}.
    {line,[{location,"bs_match_r23_SUITE.erl",1138}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,simon},2}.
  {label,697}.
    {'%',{var_info,{x,1},[accepts_match_context]}}.
    {test,bs_start_match3,{f,696},2,[{x,1}],{x,2}}.
    {test,bs_test_tail2,{f,698},[{x,2},0]}.
    {move,{atom,one},{x,0}}.
    return.
  {label,698}.
    {test,bs_test_tail2,{f,699},[{x,2},8]}.
    {test,is_eq_exact,{f,699},[{x,0},{integer,0}]}.
    {move,{atom,two},{x,0}}.
    return.
  {label,699}.
    {bs_get_tail,{x,2},{x,1},3}.
    {jump,{f,696}}.


{function, simon2, 2, 701}.
  {label,700}.
    {line,[{location,"bs_match_r23_SUITE.erl",1141}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,simon2},2}.
  {label,701}.
    {'%',{var_info,{x,1},[accepts_match_context]}}.
    {test,bs_start_match3,{f,700},2,[{x,1}],{x,2}}.
    {bs_get_position,{x,2},{x,1},3}.
    {test,bs_get_integer2,
          {f,702},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[1141,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,702},[{x,3},{integer,9}]}.
    {test,bs_test_tail2,{f,702},[{x,2},0]}.
    {move,{atom,one},{x,0}}.
    return.
  {label,702}.
    {bs_set_position,{x,2},{x,1}}.
    {test,bs_test_tail2,{f,703},[{x,2},16]}.
    {test,is_eq_exact,{f,703},[{x,0},{integer,0}]}.
    {move,{atom,two},{x,0}}.
    return.
  {label,703}.
    {bs_get_tail,{x,2},{x,1},3}.
    {jump,{f,700}}.


{function, matching_and_andalso, 1, 705}.
  {label,704}.
    {line,[{location,"bs_match_r23_SUITE.erl",1146}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,matching_and_andalso},1}.
  {label,705}.
    {test,is_list,{f,704},[{x,0}]}.
    {allocate_zero,3,0}.
    {move,{integer,3},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1147}]}.
    {call,2,{f,724}}. % matching_and_andalso_1/2
    {test,is_eq_exact,{f,722},[{x,0},{atom,ok}]}.
    {'catch',{y,2},{f,706}}.
    {move,{integer,-8},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",1148}]}.
    {call,2,{f,724}}. % matching_and_andalso_1/2
  {label,706}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,721},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,721},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,721},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,721},[{x,1},{atom,function_clause}]}.
    {'catch',{y,1},{f,707}}.
    {move,{atom,blurf},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",1149}]}.
    {call,2,{f,724}}. % matching_and_andalso_1/2
  {label,707}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,720},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,720},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,720},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,720},[{x,1},{atom,function_clause}]}.
    {'catch',{y,0},{f,708}}.
    {move,{integer,19},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",1150}]}.
    {call,2,{f,724}}. % matching_and_andalso_1/2
  {label,708}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,719},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,719},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,719},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,719},[{x,1},{atom,function_clause}]}.
    {move,{literal,<<"-xyz">>},{x,1}}.
    {move,{literal,"abc"},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",1152}]}.
    {call,2,{f,727}}. % matching_and_andalso_23/2
    {test,is_eq_exact,{f,718},[{x,0},{literal,{"abc",<<"xyz">>}}]}.
    {move,{literal,<<"`">>},{x,1}}.
    {move,{literal,"abc"},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",1153}]}.
    {call,2,{f,727}}. % matching_and_andalso_23/2
    {test,is_eq_exact,{f,717},[{x,0},{literal,{"abc",<<>>}}]}.
    {move,{literal,<<"{">>},{x,1}}.
    {move,{literal,"abc"},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",1154}]}.
    {call,2,{f,727}}. % matching_and_andalso_23/2
    {test,is_eq_exact,{f,716},[{x,0},{literal,{"abc",<<>>}}]}.
    {move,{literal,<<"@">>},{x,1}}.
    {move,{literal,"abc"},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",1155}]}.
    {call,2,{f,727}}. % matching_and_andalso_23/2
    {test,is_eq_exact,{f,715},[{x,0},{literal,{"abc",<<>>}}]}.
    {move,{literal,<<"[">>},{x,1}}.
    {move,{literal,"abc"},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",1156}]}.
    {call,2,{f,727}}. % matching_and_andalso_23/2
    {test,is_eq_exact,{f,714},[{x,0},{literal,{"abc",<<>>}}]}.
    {move,{literal,<<>>},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",1157}]}.
    {call,2,{f,727}}. % matching_and_andalso_23/2
    {test,is_eq_exact,{f,713},[{x,0},{atom,error}]}.
    {move,{literal,<<"A">>},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",1158}]}.
    {call,2,{f,727}}. % matching_and_andalso_23/2
    {test,is_eq_exact,{f,712},[{x,0},{atom,error}]}.
    {move,{literal,<<"Z">>},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",1159}]}.
    {call,2,{f,727}}. % matching_and_andalso_23/2
    {test,is_eq_exact,{f,711},[{x,0},{atom,error}]}.
    {move,{literal,<<"a">>},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",1160}]}.
    {call,2,{f,727}}. % matching_and_andalso_23/2
    {test,is_eq_exact,{f,710},[{x,0},{atom,error}]}.
    {move,{literal,<<"z">>},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",1161}]}.
    {call,2,{f,727}}. % matching_and_andalso_23/2
    {test,is_eq_exact,{f,709},[{x,0},{atom,error}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,3}.
    return.
  {label,709}.
    {badmatch,{x,0}}.
  {label,710}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",1160}]}.
    {badmatch,{x,0}}.
  {label,711}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",1159}]}.
    {badmatch,{x,0}}.
  {label,712}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",1158}]}.
    {badmatch,{x,0}}.
  {label,713}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",1157}]}.
    {badmatch,{x,0}}.
  {label,714}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",1156}]}.
    {badmatch,{x,0}}.
  {label,715}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",1155}]}.
    {badmatch,{x,0}}.
  {label,716}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",1154}]}.
    {badmatch,{x,0}}.
  {label,717}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",1153}]}.
    {badmatch,{x,0}}.
  {label,718}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",1152}]}.
    {badmatch,{x,0}}.
  {label,719}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",1150}]}.
    {badmatch,{x,0}}.
  {label,720}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",1149}]}.
    {badmatch,{x,0}}.
  {label,721}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",1148}]}.
    {badmatch,{x,0}}.
  {label,722}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",1147}]}.
    {badmatch,{x,0}}.


{function, matching_and_andalso_1, 2, 724}.
  {label,723}.
    {line,[{location,"bs_match_r23_SUITE.erl",1164}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,matching_and_andalso_1},2}.
  {label,724}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,723},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_get_binary2,
          {f,725},
          3,
          [{x,2},
           {atom,all},
           8,
           {field_flags,[{anno,[1164,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_integer,{f,725},[{x,1}]}.
    {gc_bif,size,{f,725},4,[{x,3}],{x,3}}.
    {test,is_ge,{f,725},[{x,3},{x,1}]}.
    {test,is_lt,{f,725},[{integer,0},{x,1}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,725}.
    {bs_set_position,{x,2},{x,0}}.
    {bs_get_tail,{x,2},{x,0},3}.
    {jump,{f,723}}.


{function, matching_and_andalso_23, 2, 727}.
  {label,726}.
    {line,[{location,"bs_match_r23_SUITE.erl",1168}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,matching_and_andalso_23},2}.
  {label,727}.
    {allocate,2,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1169}]}.
    {call,2,{f,730}}. % matching_and_andalso_2/2
    {swap,{y,1},{x,0}}.
    {move,{y,0},{x,1}}.
    {trim,1,1}.
    {line,[{location,"bs_match_r23_SUITE.erl",1170}]}.
    {call,2,{f,735}}. % matching_and_andalso_3/2
    {test,is_eq_exact,{f,728},[{x,0},{y,0}]}.
    {deallocate,1}.
    return.
  {label,728}.
    {badmatch,{x,0}}.


{function, matching_and_andalso_2, 2, 730}.
  {label,729}.
    {line,[{location,"bs_match_r23_SUITE.erl",1173}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,matching_and_andalso_2},2}.
  {label,730}.
    {'%',{var_info,{x,1},[accepts_match_context]}}.
    {test,bs_start_match3,{f,733},2,[{x,1}],{x,1}}.
    {test,bs_get_integer2,
          {f,733},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[1173,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,733},
          3,
          [{x,1},
           {atom,all},
           8,
           {field_flags,[{anno,[1173,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,is_ge,{f,731},[{x,2},{integer,97}]}.
    {bif,'>=',{f,0},[{integer,122},{x,2}],{x,3}}.
    {test,is_eq_exact,{f,733},[{x,3},{atom,false}]}.
  {label,731}.
    {test,is_ge,{f,732},[{x,2},{integer,65}]}.
    {test,is_lt,{f,733},[{integer,90},{x,2}]}.
  {label,732}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    return.
  {label,733}.
    {move,{atom,error},{x,0}}.
    return.


{function, matching_and_andalso_3, 2, 735}.
  {label,734}.
    {line,[{location,"bs_match_r23_SUITE.erl",1181}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,matching_and_andalso_3},2}.
  {label,735}.
    {'%',{var_info,{x,1},[accepts_match_context]}}.
    {test,bs_start_match3,{f,738},2,[{x,1}],{x,1}}.
    {test,bs_get_integer2,
          {f,738},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[1181,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,738},
          3,
          [{x,1},
           {atom,all},
           8,
           {field_flags,[{anno,[1181,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {gc_bif,abs,{f,738},3,[{x,2}],{x,2}}.
    {test,is_ge,{f,736},[{x,2},{integer,97}]}.
    {bif,'>=',{f,0},[{integer,122},{x,2}],{x,3}}.
    {test,is_eq_exact,{f,738},[{x,3},{atom,false}]}.
  {label,736}.
    {test,is_ge,{f,737},[{x,2},{integer,65}]}.
    {bif,'>=',{f,0},[{integer,90},{x,2}],{x,2}}.
    {test,is_eq_exact,{f,738},[{x,2},{atom,false}]}.
  {label,737}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    return.
  {label,738}.
    {move,{atom,error},{x,0}}.
    return.


{function, otp_7188, 1, 740}.
  {label,739}.
    {line,[{location,"bs_match_r23_SUITE.erl",1188}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,otp_7188},1}.
  {label,740}.
    {test,is_list,{f,739},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<84,65,71,68,117,154,105,232,107,121,0,0,0,0,0,0,0,0,0,0,
                     0,0,0,0,0,0,0,0,0,0,0,0,0,68,97,110,105,101,108,32,76,97,
                     110,100,97,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,66,101,
                     115,116,32,79,102,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
                     0,0,0,0,50,48,48,48,50,48,48,48,32,45,32,66,101,115,116,
                     32,79,102,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,
                     32,12>>},
          {x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1199}]}.
    {call,1,{f,743}}. % parse_v1_or_v11_tag/1
    {test,is_eq_exact,
          {f,741},
          [{x,0},
           {literal,{ok,{"ID3v1",
                         [{title,<<68,117,154,105,232,107,121>>},
                          {artist,<<"Daniel Landa">>},
                          {album,<<"Best Of">>}]}}}]}.
    {deallocate,0}.
    return.
  {label,741}.
    {line,[{location,"bs_match_r23_SUITE.erl",1196}]}.
    {badmatch,{x,0}}.


{function, parse_v1_or_v11_tag, 1, 743}.
  {label,742}.
    {line,[{location,"bs_match_r23_SUITE.erl",1201}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,parse_v1_or_v11_tag},1}.
  {label,743}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,745},1,[{x,0}],{x,0}}.
    {test,bs_match_string,{f,745},[{x,0},24,{string,<<"TAG">>}]}.
    {test,bs_get_binary2,
          {f,745},
          1,
          [{x,0},
           {integer,30},
           8,
           {field_flags,[{anno,[1201,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_get_binary2,
          {f,745},
          2,
          [{x,0},
           {integer,30},
           8,
           {field_flags,[{anno,[1201,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,745},
          3,
          [{x,0},
           {integer,30},
           8,
           {field_flags,[{anno,[1201,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_skip_bits2,
          {f,745},
          [{x,0},
           {integer,4},
           8,
           {field_flags,[{anno,[1201,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_get_position,{x,0},{x,4},4}.
    {test,bs_skip_bits2,
          {f,744},
          [{x,0},
           {integer,28},
           8,
           {field_flags,[{anno,[1201,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_match_string,{f,744},[{x,0},8,{string,<<0>>}]}.
    {test,bs_get_integer2,
          {f,744},
          5,
          [{x,0},
           {integer,8},
           1,
           {field_flags,[{anno,[1201,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_test_tail2,{f,744},[{x,0},8]}.
    {allocate,3,6}.
    {move,{x,5},{y,0}}.
    {move,{x,3},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1207}]}.
    {call,1,{f,747}}. % trim/1
    {swap,{y,2},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1208}]}.
    {call,1,{f,747}}. % trim/1
    {swap,{y,1},{x,0}}.
    {call,1,{f,747}}. % trim/1
    {test_heap,26,1}.
    {put_tuple2,{x,0},{list,[{atom,album},{x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_tuple2,{x,1},{list,[{atom,artist},{y,1}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_tuple2,{x,1},{list,[{atom,title},{y,2}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_tuple2,{x,1},{list,[{atom,track},{y,0}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_tuple2,{x,0},{list,[{literal,"ID3v1.1"},{x,0}]}}.
    {put_tuple2,{x,0},{list,[{atom,ok},{x,0}]}}.
    {deallocate,3}.
    return.
  {label,744}.
    {bs_set_position,{x,0},{x,4}}.
    {test,bs_test_tail2,{f,745},[{x,0},248]}.
    {allocate,2,4}.
    {move,{x,3},{y,0}}.
    {move,{x,2},{y,1}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1215}]}.
    {call,1,{f,747}}. % trim/1
    {swap,{y,1},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1216}]}.
    {call,1,{f,747}}. % trim/1
    {swap,{y,0},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1217}]}.
    {call,1,{f,747}}. % trim/1
    {test_heap,21,1}.
    {put_tuple2,{x,0},{list,[{atom,album},{x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_tuple2,{x,1},{list,[{atom,artist},{y,0}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_tuple2,{x,1},{list,[{atom,title},{y,1}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_tuple2,{x,0},{list,[{literal,"ID3v1"},{x,0}]}}.
    {put_tuple2,{x,0},{list,[{atom,ok},{x,0}]}}.
    {deallocate,2}.
    return.
  {label,745}.
    {move,{atom,error},{x,0}}.
    return.


{function, trim, 1, 747}.
  {label,746}.
    {line,[{location,"bs_match_r23_SUITE.erl",1221}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,trim},1}.
  {label,747}.
    {allocate,0,1}.
    {line,[{location,"bs_match_r23_SUITE.erl",1222}]}.
    {call_ext,1,{extfunc,erlang,binary_to_list,1}}.
    {call,1,{f,749}}. % trim_blanks/1
    {call_ext_last,1,{extfunc,erlang,list_to_binary,1},0}.


{function, trim_blanks, 1, 749}.
  {label,748}.
    {line,[{location,"bs_match_r23_SUITE.erl",1224}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,trim_blanks},1}.
  {label,749}.
    {allocate,0,1}.
    {line,[{location,"bs_match_r23_SUITE.erl",1225}]}.
    {call_ext,1,{extfunc,lists,reverse,1}}.
    {call,1,{f,751}}. % skip_blanks_and_zero/1
    {call_ext_last,1,{extfunc,lists,reverse,1},0}.


{function, skip_blanks_and_zero, 1, 751}.
  {label,750}.
    {line,[{location,"bs_match_r23_SUITE.erl",1227}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,skip_blanks_and_zero},1}.
  {label,751}.
    {test,is_nonempty_list,{f,753},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {select_val,{x,1},
                {f,753},
                {list,[{integer,0},{f,752},{integer,32},{f,752}]}}.
  {label,752}.
    {move,{x,2},{x,0}}.
    {call_only,1,{f,751}}. % skip_blanks_and_zero/1
  {label,753}.
    return.


{function, otp_7233, 1, 755}.
  {label,754}.
    {line,[{location,"bs_match_r23_SUITE.erl",1239}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,otp_7233},1}.
  {label,755}.
    {test,is_list,{f,754},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,{rec_otp_7233,<<"XXabcde">>,[{"xxxxxxxx",42}]}},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1240}]}.
    {call,1,{f,759}}. % otp_7233_1/1
    {bif,get,{f,0},[{atom,io_format}],{x,0}}.
    {test,is_eq_exact,
          {f,757},
          [{x,0},{literal,[<<"XXabcde">>,{"xxxxxxxx",42}]}]}.
    {move,{atom,io_format},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1242}]}.
    {call_ext,1,{extfunc,erlang,erase,1}}.
    {move,{literal,{rec_otp_7233,<<"XXabcde">>,[]}},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1243}]}.
    {call,1,{f,759}}. % otp_7233_1/1
    {bif,get,{f,0},[{atom,io_format}],{x,0}}.
    {test,is_eq_exact,{f,756},[{x,0},{atom,undefined}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,756}.
    {line,[{location,"bs_match_r23_SUITE.erl",1244}]}.
    {badmatch,{x,0}}.
  {label,757}.
    {line,[{location,"bs_match_r23_SUITE.erl",1241}]}.
    {badmatch,{x,0}}.


{function, otp_7233_1, 1, 759}.
  {label,758}.
    {line,[{location,"bs_match_r23_SUITE.erl",1247}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,otp_7233_1},1}.
  {label,759}.
    {test,is_tagged_tuple,{f,765},[{x,0},3,{atom,rec_otp_7233}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {test,is_eq_exact,{f,765},[{x,1},{atom,rec_otp_7233}]}.
    {test,bs_start_match3,{f,764},3,[{x,2}],{x,1}}.
    {test,bs_get_binary2,
          {f,764},
          3,
          [{x,1},
           {integer,2},
           8,
           {field_flags,[{anno,[1248,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,764},[{x,1},40]}.
    {test,is_eq_exact,{f,761},[{x,3},{literal,<<"XX">>}]}.
    {test,is_tagged_tuple,{f,763},[{x,0},3,{atom,rec_otp_7233}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},2,{x,2}}.
    {test,is_eq_exact,{f,763},[{x,1},{atom,rec_otp_7233}]}.
    {allocate,1,3}.
    {move,{x,0},{y,0}}.
    {move,{integer,1},{x,1}}.
    {move,{literal,"xxxxxxxx"},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1252}]}.
    {call_ext,3,{extfunc,lists,keyfind,3}}.
    {test,is_eq_exact,{f,760},[{x,0},{atom,false}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,760}.
    {test,is_tagged_tuple,{f,762},[{y,0},3,{atom,rec_otp_7233}]}.
    {get_tuple_element,{y,0},0,{x,1}}.
    {get_tuple_element,{y,0},1,{x,2}}.
    {test,is_eq_exact,{f,762},[{x,1},{atom,rec_otp_7233}]}.
    {test_heap,4,3}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,2},{x,0},{x,1}}.
    {move,{atom,io_format},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1256}]}.
    {call_ext_last,2,{extfunc,erlang,put,2},1}.
  {label,761}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,762}.
    {badrecord,{y,0}}.
  {label,763}.
    {line,[{location,"bs_match_r23_SUITE.erl",1251}]}.
    {badrecord,{x,0}}.
  {label,764}.
    {line,[{location,"bs_match_r23_SUITE.erl",1248}]}.
    {badmatch,{x,2}}.
  {label,765}.
    {badrecord,{x,0}}.


{function, otp_7240, 1, 767}.
  {label,766}.
    {line,[{location,"bs_match_r23_SUITE.erl",1262}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,otp_7240},1}.
  {label,767}.
    {test,is_list,{f,766},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<>>},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1263}]}.
    {call,2,{f,781}}. % otp_7240_a/2
    {test,is_eq_exact,{f,779},[{x,0},{atom,a}]}.
    {move,{integer,2},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1264}]}.
    {call,2,{f,781}}. % otp_7240_a/2
    {test,is_eq_exact,{f,778},[{x,0},{atom,b}]}.
    {move,{literal,<<>>},{x,1}}.
    {move,{atom,anything},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1266}]}.
    {call,2,{f,784}}. % otp_7240_b/2
    {test,is_eq_exact,{f,777},[{x,0},{atom,a}]}.
    {move,{literal,{x,y}},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1267}]}.
    {call,2,{f,784}}. % otp_7240_b/2
    {test,is_eq_exact,{f,776},[{x,0},{atom,b}]}.
    {move,{literal,<<>>},{x,1}}.
    {move,{atom,anything},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1269}]}.
    {call,2,{f,787}}. % otp_7240_c/2
    {test,is_eq_exact,{f,775},[{x,0},{atom,a}]}.
    {move,{literal,<<2>>},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1270}]}.
    {call,2,{f,787}}. % otp_7240_c/2
    {test,is_eq_exact,{f,774},[{x,0},{atom,b}]}.
    {move,{literal,<<>>},{x,1}}.
    {move,{atom,anything},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1272}]}.
    {call,2,{f,791}}. % otp_7240_d/2
    {test,is_eq_exact,{f,773},[{x,0},{atom,a}]}.
    {move,{literal,<<2>>},{x,1}}.
    {move,{atom,again},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1273}]}.
    {call,2,{f,791}}. % otp_7240_d/2
    {test,is_eq_exact,{f,772},[{x,0},{atom,b}]}.
    {move,{literal,<<>>},{x,1}}.
    {move,{atom,anything},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1275}]}.
    {call,2,{f,795}}. % otp_7240_e/2
    {test,is_eq_exact,{f,771},[{x,0},{atom,a}]}.
    {move,{integer,41},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1276}]}.
    {call,2,{f,795}}. % otp_7240_e/2
    {test,is_eq_exact,{f,770},[{x,0},{atom,b}]}.
    {move,{literal,<<>>},{x,1}}.
    {move,{atom,anything},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1278}]}.
    {call,2,{f,798}}. % otp_7240_f/2
    {test,is_eq_exact,{f,769},[{x,0},{atom,a}]}.
    {move,{literal,{}},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1279}]}.
    {call,2,{f,798}}. % otp_7240_f/2
    {test,is_eq_exact,{f,768},[{x,0},{atom,b}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,768}.
    {badmatch,{x,0}}.
  {label,769}.
    {line,[{location,"bs_match_r23_SUITE.erl",1278}]}.
    {badmatch,{x,0}}.
  {label,770}.
    {line,[{location,"bs_match_r23_SUITE.erl",1276}]}.
    {badmatch,{x,0}}.
  {label,771}.
    {line,[{location,"bs_match_r23_SUITE.erl",1275}]}.
    {badmatch,{x,0}}.
  {label,772}.
    {line,[{location,"bs_match_r23_SUITE.erl",1273}]}.
    {badmatch,{x,0}}.
  {label,773}.
    {line,[{location,"bs_match_r23_SUITE.erl",1272}]}.
    {badmatch,{x,0}}.
  {label,774}.
    {line,[{location,"bs_match_r23_SUITE.erl",1270}]}.
    {badmatch,{x,0}}.
  {label,775}.
    {line,[{location,"bs_match_r23_SUITE.erl",1269}]}.
    {badmatch,{x,0}}.
  {label,776}.
    {line,[{location,"bs_match_r23_SUITE.erl",1267}]}.
    {badmatch,{x,0}}.
  {label,777}.
    {line,[{location,"bs_match_r23_SUITE.erl",1266}]}.
    {badmatch,{x,0}}.
  {label,778}.
    {line,[{location,"bs_match_r23_SUITE.erl",1264}]}.
    {badmatch,{x,0}}.
  {label,779}.
    {line,[{location,"bs_match_r23_SUITE.erl",1263}]}.
    {badmatch,{x,0}}.


{function, otp_7240_a, 2, 781}.
  {label,780}.
    {line,[{location,"bs_match_r23_SUITE.erl",1283}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,otp_7240_a},2}.
  {label,781}.
    {test,is_eq_exact,{f,782},[{x,1},{literal,<<>>}]}.
    {move,{atom,a},{x,0}}.
    return.
  {label,782}.
    {test,is_eq_exact,{f,780},[{x,0},{integer,1}]}.
    {test,is_eq_exact,{f,780},[{x,1},{integer,2}]}.
    {move,{atom,b},{x,0}}.
    return.


{function, otp_7240_b, 2, 784}.
  {label,783}.
    {line,[{location,"bs_match_r23_SUITE.erl",1286}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,otp_7240_b},2}.
  {label,784}.
    {test,is_eq_exact,{f,785},[{x,1},{literal,<<>>}]}.
    {move,{atom,a},{x,0}}.
    return.
  {label,785}.
    {test,is_eq_exact,{f,783},[{x,0},{integer,1}]}.
    {test,is_tuple,{f,783},[{x,1}]}.
    {test,test_arity,{f,783},[{x,1},2]}.
    {move,{atom,b},{x,0}}.
    return.


{function, otp_7240_c, 2, 787}.
  {label,786}.
    {line,[{location,"bs_match_r23_SUITE.erl",1289}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,otp_7240_c},2}.
  {label,787}.
    {'%',{var_info,{x,1},[accepts_match_context]}}.
    {test,bs_start_match3,{f,786},2,[{x,1}],{x,2}}.
    {bs_get_position,{x,2},{x,1},3}.
    {test,bs_match_string,{f,788},[{x,2},8,{string,<<2>>}]}.
    {test,bs_test_tail2,{f,788},[{x,2},0]}.
    {test,is_eq_exact,{f,788},[{x,0},{integer,1}]}.
    {move,{atom,b},{x,0}}.
    return.
  {label,788}.
    {bs_set_position,{x,2},{x,1}}.
    {test,bs_test_tail2,{f,789},[{x,2},0]}.
    {move,{atom,a},{x,0}}.
    return.
  {label,789}.
    {bs_get_tail,{x,2},{x,1},3}.
    {jump,{f,786}}.


{function, otp_7240_d, 2, 791}.
  {label,790}.
    {line,[{location,"bs_match_r23_SUITE.erl",1292}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,otp_7240_d},2}.
  {label,791}.
    {'%',{var_info,{x,1},[accepts_match_context]}}.
    {test,bs_start_match3,{f,790},2,[{x,1}],{x,2}}.
    {bs_get_position,{x,2},{x,1},3}.
    {test,bs_match_string,{f,792},[{x,2},8,{string,<<2>>}]}.
    {test,bs_test_tail2,{f,792},[{x,2},0]}.
    {move,{atom,b},{x,0}}.
    return.
  {label,792}.
    {bs_set_position,{x,2},{x,1}}.
    {test,bs_test_tail2,{f,793},[{x,2},0]}.
    {move,{atom,a},{x,0}}.
    return.
  {label,793}.
    {bs_get_tail,{x,2},{x,1},3}.
    {jump,{f,790}}.


{function, otp_7240_e, 2, 795}.
  {label,794}.
    {line,[{location,"bs_match_r23_SUITE.erl",1295}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,otp_7240_e},2}.
  {label,795}.
    {test,is_eq_exact,{f,796},[{x,1},{literal,<<>>}]}.
    {move,{atom,a},{x,0}}.
    return.
  {label,796}.
    {test,is_eq_exact,{f,794},[{x,0},{integer,1}]}.
    {test,is_lt,{f,794},[{x,1},{integer,42}]}.
    {move,{atom,b},{x,0}}.
    return.


{function, otp_7240_f, 2, 798}.
  {label,797}.
    {line,[{location,"bs_match_r23_SUITE.erl",1298}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,otp_7240_f},2}.
  {label,798}.
    {test,is_eq_exact,{f,799},[{x,1},{literal,<<>>}]}.
    {move,{atom,a},{x,0}}.
    return.
  {label,799}.
    {test,is_eq_exact,{f,797},[{x,0},{integer,1}]}.
    {test,is_tuple,{f,797},[{x,1}]}.
    {move,{atom,b},{x,0}}.
    return.


{function, otp_7498, 1, 801}.
  {label,800}.
    {line,[{location,"bs_match_r23_SUITE.erl",1301}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,otp_7498},1}.
  {label,801}.
    {test,is_list,{f,800},[{x,0}]}.
    {allocate,0,0}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1302}]}.
    {call,2,{f,811}}. % otp_7498_foo/2
    {test,is_eq_exact,{f,809},[{x,0},{literal,<<1,2,3>>}]}.
    {move,{integer,1},{x,1}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1303}]}.
    {call,2,{f,811}}. % otp_7498_foo/2
    {test,is_eq_exact,{f,808},[{x,0},{literal,<<2,3>>}]}.
    {move,{integer,2},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1304}]}.
    {call,2,{f,811}}. % otp_7498_foo/2
    {test,is_eq_exact,{f,807},[{x,0},{literal,<<1,2,3>>}]}.
    {move,{integer,0},{x,1}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1306}]}.
    {call,2,{f,815}}. % otp_7498_bar/2
    {test,is_eq_exact,{f,806},[{x,0},{literal,<<1,2,3>>}]}.
    {move,{integer,1},{x,1}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1307}]}.
    {call,2,{f,815}}. % otp_7498_bar/2
    {test,is_eq_exact,{f,805},[{x,0},{literal,<<2,3>>}]}.
    {move,{integer,2},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1308}]}.
    {call,2,{f,815}}. % otp_7498_bar/2
    {test,is_eq_exact,{f,804},[{x,0},{literal,<<1,2,3>>}]}.
    {move,{integer,2},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1309}]}.
    {call,2,{f,815}}. % otp_7498_bar/2
    {test,is_eq_exact,{f,803},[{x,0},{literal,<<>>}]}.
    {move,{integer,3},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1310}]}.
    {call,2,{f,815}}. % otp_7498_bar/2
    {test,is_eq_exact,{f,802},[{x,0},{literal,<<1,2,3>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,802}.
    {badmatch,{x,0}}.
  {label,803}.
    {line,[{location,"bs_match_r23_SUITE.erl",1309}]}.
    {badmatch,{x,0}}.
  {label,804}.
    {line,[{location,"bs_match_r23_SUITE.erl",1308}]}.
    {badmatch,{x,0}}.
  {label,805}.
    {line,[{location,"bs_match_r23_SUITE.erl",1307}]}.
    {badmatch,{x,0}}.
  {label,806}.
    {line,[{location,"bs_match_r23_SUITE.erl",1306}]}.
    {badmatch,{x,0}}.
  {label,807}.
    {line,[{location,"bs_match_r23_SUITE.erl",1304}]}.
    {badmatch,{x,0}}.
  {label,808}.
    {line,[{location,"bs_match_r23_SUITE.erl",1303}]}.
    {badmatch,{x,0}}.
  {label,809}.
    {line,[{location,"bs_match_r23_SUITE.erl",1302}]}.
    {badmatch,{x,0}}.


{function, otp_7498_foo, 2, 811}.
  {label,810}.
    {line,[{location,"bs_match_r23_SUITE.erl",1314}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,otp_7498_foo},2}.
  {label,811}.
    {test,is_eq_exact,{f,812},[{x,1},{integer,0}]}.
    {move,{integer,42},{x,1}}.
    {call_only,2,{f,811}}. % otp_7498_foo/2
  {label,812}.
    {test,bs_start_match3,{f,813},2,[{x,0}],{x,2}}.
    {test,bs_skip_bits2,
          {f,813},
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[1316,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,813},
          3,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[1316,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,813},[{x,1},{integer,1}]}.
    {move,{integer,43},{x,1}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,811}}. % otp_7498_foo/2
  {label,813}.
    return.


{function, otp_7498_bar, 2, 815}.
  {label,814}.
    {line,[{location,"bs_match_r23_SUITE.erl",1321}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,otp_7498_bar},2}.
  {label,815}.
    {test,is_eq_exact,{f,816},[{x,1},{integer,0}]}.
    {move,{integer,42},{x,1}}.
    {call_only,2,{f,815}}. % otp_7498_bar/2
  {label,816}.
    {test,bs_start_match3,{f,818},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,3},3}.
    {test,bs_skip_bits2,
          {f,817},
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[1323,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,817},
          4,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[1323,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,is_eq_exact,{f,817},[{x,1},{integer,1}]}.
    {move,{integer,43},{x,1}}.
    {move,{x,4},{x,0}}.
    {call_only,2,{f,815}}. % otp_7498_bar/2
  {label,817}.
    {bs_set_position,{x,2},{x,3}}.
    {test,bs_test_tail2,{f,818},[{x,2},0]}.
    {test,is_eq_exact,{f,818},[{x,1},{integer,2}]}.
    {move,{integer,44},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {call_only,2,{f,815}}. % otp_7498_bar/2
  {label,818}.
    return.


{function, match_string, 1, 820}.
  {label,819}.
    {line,[{location,"bs_match_r23_SUITE.erl",1331}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,match_string},1}.
  {label,820}.
    {test,is_list,{f,819},[{x,0}]}.
    {allocate_zero,1,0}.
    {move,{atom,endian},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1337}]}.
    {call_ext,1,{extfunc,erlang,system_info,1}}.
    {select_val,{x,0},
                {f,832},
                {list,[{atom,big},{f,822},{atom,little},{f,821}]}}.
  {label,821}.
    {move,{literal,<<97,0,98,0>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1339}]}.
    {call,1,{f,834}}. % do_match_string_native/1
    {jump,{f,823}}.
  {label,822}.
    {move,{literal,<<0,97,0,98>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1341}]}.
    {call,1,{f,834}}. % do_match_string_native/1
  {label,823}.
    {move,{literal,<<0,97,0,98>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1344}]}.
    {call,1,{f,837}}. % do_match_string_big/1
    {move,{literal,<<97,0,98,0>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1345}]}.
    {call,1,{f,839}}. % do_match_string_little/1
    {move,{literal,<<"ÿÿ">>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1347}]}.
    {call,1,{f,842}}. % do_match_string_big_signed/1
    {move,{literal,<<"ÿÿ">>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1348}]}.
    {call,1,{f,845}}. % do_match_string_little_signed/1
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1350}]}.
    {call,1,{f,848}}. % no_match_string_opt/1
    {test,is_eq_exact,{f,831},[{x,0},{atom,plain}]}.
    {move,{literal,<<48,152,140,3:3>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1351}]}.
    {call,1,{f,848}}. % no_match_string_opt/1
    {test,is_eq_exact,{f,830},[{x,0},{atom,strange}]}.
    {move,{literal,<<"d">>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1353}]}.
    {call,1,{f,1968}}. % id/1
    {call,1,{f,853}}. % do_match_string_tail/1
    {test,is_eq_exact,{f,829},[{x,0},{atom,d}]}.
    {move,{literal,<<"dd">>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1354}]}.
    {call,1,{f,1968}}. % id/1
    {call,1,{f,853}}. % do_match_string_tail/1
    {test,is_eq_exact,{f,828},[{x,0},{atom,dd}]}.
    {move,{literal,<<"a">>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1356}]}.
    {call,1,{f,1968}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,0},{x,0}}.
    {call,1,{f,1968}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {init,{y,0}}.
    {call,2,{f,857}}. % do_match_string_var_size/2
    {test,is_eq_exact,{f,827},[{x,0},{atom,a}]}.
    {move,{literal,<<"ab">>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1357}]}.
    {call,1,{f,1968}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,8},{x,0}}.
    {call,1,{f,1968}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {init,{y,0}}.
    {call,2,{f,857}}. % do_match_string_var_size/2
    {test,is_eq_exact,{f,826},[{x,0},{atom,a}]}.
    {move,{literal,<<"ab">>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1358}]}.
    {call,1,{f,1968}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,0},{x,0}}.
    {call,1,{f,1968}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {init,{y,0}}.
    {call,2,{f,857}}. % do_match_string_var_size/2
    {test,is_eq_exact,{f,825},[{x,0},{atom,ab}]}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1359}]}.
    {call,1,{f,1968}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,8},{x,0}}.
    {call,1,{f,1968}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {call,2,{f,857}}. % do_match_string_var_size/2
    {test,is_eq_exact,{f,824},[{x,0},{atom,ab}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,824}.
    {badmatch,{x,0}}.
  {label,825}.
    {line,[{location,"bs_match_r23_SUITE.erl",1358}]}.
    {badmatch,{x,0}}.
  {label,826}.
    {line,[{location,"bs_match_r23_SUITE.erl",1357}]}.
    {badmatch,{x,0}}.
  {label,827}.
    {line,[{location,"bs_match_r23_SUITE.erl",1356}]}.
    {badmatch,{x,0}}.
  {label,828}.
    {line,[{location,"bs_match_r23_SUITE.erl",1354}]}.
    {badmatch,{x,0}}.
  {label,829}.
    {line,[{location,"bs_match_r23_SUITE.erl",1353}]}.
    {badmatch,{x,0}}.
  {label,830}.
    {line,[{location,"bs_match_r23_SUITE.erl",1351}]}.
    {badmatch,{x,0}}.
  {label,831}.
    {line,[{location,"bs_match_r23_SUITE.erl",1350}]}.
    {badmatch,{x,0}}.
  {label,832}.
    {line,[{location,"bs_match_r23_SUITE.erl",1337}]}.
    {case_end,{x,0}}.


{function, do_match_string_native, 1, 834}.
  {label,833}.
    {line,[{location,"bs_match_r23_SUITE.erl",1363}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,do_match_string_native},1}.
  {label,834}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,833},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_integer2,
          {f,835},
          2,
          [{x,1},
           {integer,16},
           1,
           {field_flags,[{anno,[1363,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,native]}],
          {x,2}}.
    {test,is_eq_exact,{f,835},[{x,2},{integer,97}]}.
    {test,bs_get_integer2,
          {f,835},
          2,
          [{x,1},
           {integer,16},
           1,
           {field_flags,[{anno,[1363,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,native]}],
          {x,2}}.
    {test,is_eq_exact,{f,835},[{x,2},{integer,98}]}.
    {test,bs_test_tail2,{f,835},[{x,1},0]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,835}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,833}}.


{function, do_match_string_big, 1, 837}.
  {label,836}.
    {line,[{location,"bs_match_r23_SUITE.erl",1365}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,do_match_string_big},1}.
  {label,837}.
    {test,is_eq_exact,{f,836},[{x,0},{literal,<<0,97,0,98>>}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, do_match_string_little, 1, 839}.
  {label,838}.
    {line,[{location,"bs_match_r23_SUITE.erl",1367}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,do_match_string_little},1}.
  {label,839}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,838},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_match_string,{f,840},[{x,1},32,{string,<<97,0,98,0>>}]}.
    {test,bs_test_tail2,{f,840},[{x,1},0]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,840}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,838}}.


{function, do_match_string_big_signed, 1, 842}.
  {label,841}.
    {line,[{location,"bs_match_r23_SUITE.erl",1369}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,do_match_string_big_signed},1}.
  {label,842}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,841},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_match_string,{f,843},[{x,1},16,{string,<<"ÿÿ">>}]}.
    {test,bs_test_tail2,{f,843},[{x,1},0]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,843}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,841}}.


{function, do_match_string_little_signed, 1, 845}.
  {label,844}.
    {line,[{location,"bs_match_r23_SUITE.erl",1371}]}.
    {func_info,{atom,bs_match_r23_SUITE},
               {atom,do_match_string_little_signed},
               1}.
  {label,845}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,844},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_match_string,{f,846},[{x,1},16,{string,<<"ÿÿ">>}]}.
    {test,bs_test_tail2,{f,846},[{x,1},0]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,846}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,844}}.


{function, no_match_string_opt, 1, 848}.
  {label,847}.
    {line,[{location,"bs_match_r23_SUITE.erl",1373}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,no_match_string_opt},1}.
  {label,848}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,847},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_integer2,
          {f,851},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[1373,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {select_val,{x,2},
                {f,851},
                {list,[{integer,48},{f,850},{integer,97},{f,849}]}}.
  {label,849}.
    {test,bs_match_string,{f,851},[{x,1},16,{string,<<"bc">>}]}.
    {test,bs_test_tail2,{f,851},[{x,1},0]}.
    {move,{atom,plain},{x,0}}.
    return.
  {label,850}.
    {test,bs_match_string,{f,851},[{x,1},19,{string,<<152,140,96>>}]}.
    {test,bs_test_tail2,{f,851},[{x,1},0]}.
    {move,{atom,strange},{x,0}}.
    return.
  {label,851}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,847}}.


{function, do_match_string_tail, 1, 853}.
  {label,852}.
    {line,[{location,"bs_match_r23_SUITE.erl",1378}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,do_match_string_tail},1}.
  {label,853}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,852},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_match_string,{f,855},[{x,1},8,{string,<<"d">>}]}.
    {bs_get_position,{x,1},{x,2},2}.
    {test,bs_get_integer2,
          {f,854},
          3,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[1378,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,854},[{x,3},{integer,100}]}.
    {test,bs_test_unit,{f,854},[{x,1},8]}.
    {move,{atom,dd},{x,0}}.
    return.
  {label,854}.
    {bs_set_position,{x,1},{x,2}}.
    {test,bs_test_unit,{f,855},[{x,1},8]}.
    {move,{atom,d},{x,0}}.
    return.
  {label,855}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,852}}.


{function, do_match_string_var_size, 2, 857}.
  {label,856}.
    {line,[{location,"bs_match_r23_SUITE.erl",1380}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,do_match_string_var_size},2}.
  {label,857}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,860},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_match_string,{f,859},[{x,2},8,{string,<<"a">>}]}.
    {bs_get_position,{x,2},{x,3},3}.
    {test,bs_get_integer2,
          {f,858},
          4,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[1381,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,is_eq_exact,{f,858},[{x,4},{integer,98}]}.
    {test,bs_skip_bits2,
          {f,858},
          [{x,2},
           {x,1},
           1,
           {field_flags,[{anno,[1381,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_test_tail2,{f,858},[{x,2},0]}.
    {move,{atom,ab},{x,0}}.
    return.
  {label,858}.
    {bs_set_position,{x,2},{x,3}}.
    {test,bs_skip_bits2,
          {f,859},
          [{x,2},
           {x,1},
           1,
           {field_flags,[{anno,[1381,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_test_tail2,{f,859},[{x,2},0]}.
    {move,{atom,a},{x,0}}.
    return.
  {label,859}.
    {bs_set_position,{x,2},{x,0}}.
    {bs_get_tail,{x,2},{x,0},3}.
    {line,[{location,"bs_match_r23_SUITE.erl",1381}]}.
    {case_end,{x,0}}.
  {label,860}.
    {case_end,{x,0}}.


{function, zero_width, 1, 862}.
  {label,861}.
    {line,[{location,"bs_match_r23_SUITE.erl",1385}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,zero_width},1}.
  {label,862}.
    {test,is_list,{f,861},[{x,0}]}.
    {move,{literal,<<2,0,104,105>>},{x,0}}.
    {test,bs_start_match3,{f,869},0,[{x,0}],{x,0}}.
    {test,bs_get_integer2,
          {f,869},
          1,
          [{x,0},
           {integer,16},
           1,
           {field_flags,[{anno,[1386,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,little]}],
          {x,1}}.
    {test,bs_get_binary2,
          {f,869},
          2,
          [{x,0},
           {x,1},
           8,
           {field_flags,[{anno,[1386,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,869},[{x,0},0]}.
    {test,is_eq_exact,{f,868},[{x,1},{integer,2}]}.
    {test,is_eq_exact,{f,867},[{x,2},{literal,<<"hi">>}]}.
    {allocate_zero,1,0}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1391}]}.
    {call,1,{f,1968}}. % id/1
    {make_fun2,{f,2128},0,0,0}.
    {move,{x,0},{y,0}}.
    {move,{x,0},{x,1}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1401}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,866},[{x,0},{atom,star}]}.
    {move,{y,0},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1402}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,865},[{x,0},{integer,0}]}.
    {move,{y,0},{x,1}}.
    {move,{literal,<<1>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1403}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,864},[{x,0},{atom,no_match}]}.
    {move,{y,0},{x,1}}.
    {trim,1,0}.
    {move,{atom,whatever},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1404}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,863},[{x,0},{atom,no_match}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,863}.
    {badmatch,{x,0}}.
  {label,864}.
    {line,[{location,"bs_match_r23_SUITE.erl",1403}]}.
    {badmatch,{x,0}}.
  {label,865}.
    {line,[{location,"bs_match_r23_SUITE.erl",1402}]}.
    {badmatch,{x,0}}.
  {label,866}.
    {line,[{location,"bs_match_r23_SUITE.erl",1401}]}.
    {badmatch,{x,0}}.
  {label,867}.
    {line,[{location,"bs_match_r23_SUITE.erl",1388}]}.
    {badmatch,{literal,<<"hi">>}}.
  {label,868}.
    {line,[{location,"bs_match_r23_SUITE.erl",1387}]}.
    {badmatch,{x,1}}.
  {label,869}.
    {line,[{location,"bs_match_r23_SUITE.erl",1386}]}.
    {badmatch,{literal,<<2,0,104,105>>}}.


{function, bad_size, 1, 871}.
  {label,870}.
    {line,[{location,"bs_match_r23_SUITE.erl",1410}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,bad_size},1}.
  {label,871}.
    {test,is_list,{f,870},[{x,0}]}.
    {allocate_zero,19,0}.
    {'catch',{y,18},{f,872}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1416}]}.
    {call,1,{f,1968}}. % id/1
    {badmatch,{x,0}}.
  {label,872}.
    {catch_end,{y,18}}.
    {test,is_tagged_tuple,{f,922},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,922},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,922},[{x,1}]}.
    {test,test_arity,{f,922},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,922},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,17},{f,873}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,"$"},{location,"bs_match_r23_SUITE.erl",1417}]}.
    {call,1,{f,1968}}. % id/1
    {badmatch,{x,0}}.
  {label,873}.
    {catch_end,{y,17}}.
    {test,is_tagged_tuple,{f,921},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,921},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,921},[{x,1}]}.
    {test,test_arity,{f,921},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,921},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,16},{f,874}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,"\""},{location,"bs_match_r23_SUITE.erl",1418}]}.
    {call,1,{f,1968}}. % id/1
    {badmatch,{x,0}}.
  {label,874}.
    {catch_end,{y,16}}.
    {test,is_tagged_tuple,{f,920},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,920},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,920},[{x,1}]}.
    {test,test_arity,{f,920},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,920},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,15},{f,875}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope," "},{location,"bs_match_r23_SUITE.erl",1419}]}.
    {call,1,{f,1968}}. % id/1
    {badmatch,{x,0}}.
  {label,875}.
    {catch_end,{y,15}}.
    {test,is_tagged_tuple,{f,919},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,919},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,919},[{x,1}]}.
    {test,test_arity,{f,919},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,919},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,14},{f,876}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[30]},{location,"bs_match_r23_SUITE.erl",1420}]}.
    {call,1,{f,1968}}. % id/1
    {badmatch,{x,0}}.
  {label,876}.
    {catch_end,{y,14}}.
    {test,is_tagged_tuple,{f,918},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,918},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,918},[{x,1}]}.
    {test,test_arity,{f,918},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,918},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,13},{f,877}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[28]},{location,"bs_match_r23_SUITE.erl",1421}]}.
    {call,1,{f,1968}}. % id/1
    {badmatch,{x,0}}.
  {label,877}.
    {catch_end,{y,13}}.
    {test,is_tagged_tuple,{f,917},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,917},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,917},[{x,1}]}.
    {test,test_arity,{f,917},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,917},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,12},{f,878}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[26]},{location,"bs_match_r23_SUITE.erl",1423}]}.
    {call,1,{f,1968}}. % id/1
    {badmatch,{x,0}}.
  {label,878}.
    {catch_end,{y,12}}.
    {test,is_tagged_tuple,{f,916},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,916},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,916},[{x,1}]}.
    {test,test_arity,{f,916},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,916},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,11},{f,879}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[24]},{location,"bs_match_r23_SUITE.erl",1424}]}.
    {call,1,{f,1968}}. % id/1
    {badmatch,{x,0}}.
  {label,879}.
    {catch_end,{y,11}}.
    {test,is_tagged_tuple,{f,915},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,915},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,915},[{x,1}]}.
    {test,test_arity,{f,915},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,915},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,10},{f,880}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r23_SUITE.erl",1425}]}.
    {call,1,{f,1968}}. % id/1
    {badmatch,{x,0}}.
  {label,880}.
    {catch_end,{y,10}}.
    {test,is_tagged_tuple,{f,914},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,914},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,914},[{x,1}]}.
    {test,test_arity,{f,914},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,914},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,9},{f,881}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[20]},{location,"bs_match_r23_SUITE.erl",1426}]}.
    {call,1,{f,1968}}. % id/1
    {badmatch,{x,0}}.
  {label,881}.
    {catch_end,{y,9}}.
    {test,is_tagged_tuple,{f,913},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,913},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,913},[{x,1}]}.
    {test,test_arity,{f,913},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,913},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,8},{f,882}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[18]},{location,"bs_match_r23_SUITE.erl",1427}]}.
    {call,1,{f,1968}}. % id/1
    {test,bs_start_match3,{f,891},1,[{x,0}],{x,1}}.
    {test,bs_get_float2,
          {f,891},
          2,
          [{x,1},
           {integer,1},
           1,
           {field_flags,[{anno,[1427,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,891},[{x,2},{float,42.0}]}.
    {test,bs_test_tail2,{f,891},[{x,1},0]}.
  {label,882}.
    {catch_end,{y,8}}.
    {test,is_tagged_tuple,{f,912},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,912},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,912},[{x,1}]}.
    {test,test_arity,{f,912},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,912},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,7},{f,883}}.
    {move,{literal,<<"ÿÿÿÿ">>},{x,0}}.
    {line,[{scope,[16]},{location,"bs_match_r23_SUITE.erl",1428}]}.
    {call,1,{f,1968}}. % id/1
    {test,bs_start_match3,{f,892},1,[{x,0}],{x,1}}.
    {test,bs_get_float2,
          {f,892},
          2,
          [{x,1},
           {integer,32},
           1,
           {field_flags,[{anno,[1428,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,892},[{x,2},{float,42.0}]}.
    {test,bs_test_tail2,{f,892},[{x,1},0]}.
  {label,883}.
    {catch_end,{y,7}}.
    {test,is_tagged_tuple,{f,911},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,911},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,911},[{x,1}]}.
    {test,test_arity,{f,911},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,911},[{x,1},2,{atom,badmatch}]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,911},[{x,2},{atom,badmatch}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,{f,911},[{x,1},{literal,<<"ÿÿÿÿ">>}]}.
    {'catch',{y,6},{f,884}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_r23_SUITE.erl",1431}]}.
    {call,1,{f,1968}}. % id/1
    {badmatch,{x,0}}.
  {label,884}.
    {catch_end,{y,6}}.
    {test,is_tagged_tuple,{f,910},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,910},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,910},[{x,1}]}.
    {test,test_arity,{f,910},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,910},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,5},{f,885}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_match_r23_SUITE.erl",1432}]}.
    {call,1,{f,1968}}. % id/1
    {badmatch,{x,0}}.
  {label,885}.
    {catch_end,{y,5}}.
    {test,is_tagged_tuple,{f,909},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,909},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,909},[{x,1}]}.
    {test,test_arity,{f,909},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,909},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,4},{f,886}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,"\n"},{location,"bs_match_r23_SUITE.erl",1433}]}.
    {call,1,{f,1968}}. % id/1
    {badmatch,{x,0}}.
  {label,886}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,908},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,908},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,908},[{x,1}]}.
    {test,test_arity,{f,908},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,908},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,3},{f,887}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_r23_SUITE.erl",1434}]}.
    {call,1,{f,1968}}. % id/1
    {badmatch,{x,0}}.
  {label,887}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,907},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,907},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,907},[{x,1}]}.
    {test,test_arity,{f,907},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,907},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,2},{f,888}}.
    {move,{literal,<<1:1>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",1435}]}.
    {call,1,{f,1968}}. % id/1
    {test,bs_start_match3,{f,893},1,[{x,0}],{x,1}}.
    {test,bs_get_float2,
          {f,893},
          2,
          [{x,1},
           {integer,1},
           1,
           {field_flags,[{anno,[1435,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,893},[{x,1},0]}.
  {label,888}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,906},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,906},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,906},[{x,1}]}.
    {test,test_arity,{f,906},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,906},[{x,1},2,{atom,badmatch}]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,906},[{x,2},{atom,badmatch}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,bs_start_match3,{f,906},2,[{x,1}],{x,1}}.
    {test,bs_match_string,{f,906},[{x,1},1,{string,<<128>>}]}.
    {test,bs_test_tail2,{f,906},[{x,1},0]}.
    {'catch',{y,1},{f,889}}.
    {move,{literal,<<"ÿÿÿÿ">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",1436}]}.
    {call,1,{f,1968}}. % id/1
    {test,bs_start_match3,{f,894},1,[{x,0}],{x,1}}.
    {test,bs_get_float2,
          {f,894},
          2,
          [{x,1},
           {integer,32},
           1,
           {field_flags,[{anno,[1436,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,894},[{x,1},0]}.
  {label,889}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,905},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,905},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,905},[{x,1}]}.
    {test,test_arity,{f,905},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,905},[{x,1},2,{atom,badmatch}]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,905},[{x,2},{atom,badmatch}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,{f,905},[{x,1},{literal,<<"ÿÿÿÿ">>}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",1438}]}.
    {call,1,{f,924}}. % bad_all_size/1
    {test,is_eq_exact,{f,904},[{x,0},{atom,no_match}]}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",1439}]}.
    {call,1,{f,924}}. % bad_all_size/1
    {test,is_eq_exact,{f,903},[{x,0},{atom,no_match}]}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",1441}]}.
    {call,1,{f,943}}. % bad_size_1/1
    {test,is_eq_exact,{f,902},[{x,0},{atom,true}]}.
    {move,{literal,<<0,1>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",1442}]}.
    {call,1,{f,943}}. % bad_size_1/1
    {test,is_eq_exact,{f,901},[{x,0},{atom,error}]}.
    {move,{literal,[a]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",1444}]}.
    {call,1,{f,946}}. % bad_size_2/1
    {test,is_nil,{f,900},[{x,0}]}.
    {move,{literal,[<<1,2,3>>]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",1445}]}.
    {call,1,{f,946}}. % bad_size_2/1
    {test,is_nil,{f,899},[{x,0}]}.
    {'catch',{y,0},{f,890}}.
    {move,{atom,no_list},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",1446}]}.
    {call,1,{f,946}}. % bad_size_2/1
  {label,890}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,898},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,898},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,898},[{x,1}]}.
    {test,test_arity,{f,898},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,898},[{x,1},{literal,{bad_generator,no_list}}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",1448}]}.
    {call,1,{f,948}}. % bad_size_3/1
    {test,is_eq_exact,{f,897},[{x,0},{atom,error}]}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",1449}]}.
    {call,1,{f,948}}. % bad_size_3/1
    {test,is_eq_exact,{f,896},[{x,0},{atom,error}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",1451}]}.
    {call,2,{f,2121}}. % '-bad_size/1-lbc$^0/2-0-'/2
    {call,1,{f,1968}}. % id/1
    {test,is_eq_exact,{f,895},[{x,0},{literal,<<>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,19}.
    return.
  {label,891}.
    {line,[{scope,[17]},{location,"bs_match_r23_SUITE.erl",1427}]}.
    {badmatch,{x,0}}.
  {label,892}.
    {line,[{scope,[15]},{location,"bs_match_r23_SUITE.erl",1428}]}.
    {badmatch,{x,0}}.
  {label,893}.
    {line,[{scope,[5]},{location,"bs_match_r23_SUITE.erl",1435}]}.
    {badmatch,{x,0}}.
  {label,894}.
    {line,[{scope,[3]},{location,"bs_match_r23_SUITE.erl",1436}]}.
    {badmatch,{x,0}}.
  {label,895}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",1451}]}.
    {badmatch,{x,0}}.
  {label,896}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",1449}]}.
    {badmatch,{x,0}}.
  {label,897}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",1448}]}.
    {badmatch,{x,0}}.
  {label,898}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",1446}]}.
    {badmatch,{x,0}}.
  {label,899}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",1445}]}.
    {badmatch,{x,0}}.
  {label,900}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",1444}]}.
    {badmatch,{x,0}}.
  {label,901}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",1442}]}.
    {badmatch,{x,0}}.
  {label,902}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",1441}]}.
    {badmatch,{x,0}}.
  {label,903}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",1439}]}.
    {badmatch,{x,0}}.
  {label,904}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",1438}]}.
    {badmatch,{x,0}}.
  {label,905}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",1436}]}.
    {badmatch,{x,0}}.
  {label,906}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",1435}]}.
    {badmatch,{x,0}}.
  {label,907}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",1434}]}.
    {badmatch,{x,0}}.
  {label,908}.
    {line,[{scope,"\b"},{location,"bs_match_r23_SUITE.erl",1433}]}.
    {badmatch,{x,0}}.
  {label,909}.
    {line,[{scope,"\n"},{location,"bs_match_r23_SUITE.erl",1432}]}.
    {badmatch,{x,0}}.
  {label,910}.
    {line,[{scope,"\f"},{location,"bs_match_r23_SUITE.erl",1431}]}.
    {badmatch,{x,0}}.
  {label,911}.
    {line,[{scope,[14]},{location,"bs_match_r23_SUITE.erl",1428}]}.
    {badmatch,{x,0}}.
  {label,912}.
    {line,[{scope,[16]},{location,"bs_match_r23_SUITE.erl",1427}]}.
    {badmatch,{x,0}}.
  {label,913}.
    {line,[{scope,[18]},{location,"bs_match_r23_SUITE.erl",1426}]}.
    {badmatch,{x,0}}.
  {label,914}.
    {line,[{scope,[20]},{location,"bs_match_r23_SUITE.erl",1425}]}.
    {badmatch,{x,0}}.
  {label,915}.
    {line,[{scope,[22]},{location,"bs_match_r23_SUITE.erl",1424}]}.
    {badmatch,{x,0}}.
  {label,916}.
    {line,[{scope,[24]},{location,"bs_match_r23_SUITE.erl",1423}]}.
    {badmatch,{x,0}}.
  {label,917}.
    {line,[{scope,[26]},{location,"bs_match_r23_SUITE.erl",1421}]}.
    {badmatch,{x,0}}.
  {label,918}.
    {line,[{scope,[28]},{location,"bs_match_r23_SUITE.erl",1420}]}.
    {badmatch,{x,0}}.
  {label,919}.
    {line,[{scope,[30]},{location,"bs_match_r23_SUITE.erl",1419}]}.
    {badmatch,{x,0}}.
  {label,920}.
    {line,[{scope," "},{location,"bs_match_r23_SUITE.erl",1418}]}.
    {badmatch,{x,0}}.
  {label,921}.
    {line,[{scope,"\""},{location,"bs_match_r23_SUITE.erl",1417}]}.
    {badmatch,{x,0}}.
  {label,922}.
    {line,[{scope,"$"},{location,"bs_match_r23_SUITE.erl",1416}]}.
    {badmatch,{x,0}}.


{function, bad_all_size, 1, 924}.
  {label,923}.
    {line,[{location,"bs_match_r23_SUITE.erl",1455}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,bad_all_size},1}.
  {label,924}.
    {allocate_zero,2,1}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1456}]}.
    {call,1,{f,931}}. % bad_all_size_1/1
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1457}]}.
    {call,1,{f,933}}. % bad_all_size_2/1
    {test,is_eq_exact,{f,929},[{x,0},{y,0}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1458}]}.
    {call,1,{f,935}}. % bad_all_size_3/1
    {test,is_eq_exact,{f,928},[{x,0},{y,0}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1459}]}.
    {call,1,{f,937}}. % bad_all_size_4/1
    {test,is_eq_exact,{f,927},[{x,0},{y,0}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1460}]}.
    {call,1,{f,939}}. % bad_all_size_5/1
    {test,is_eq_exact,{f,926},[{x,0},{y,0}]}.
    {move,{y,1},{x,0}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {line,[{location,"bs_match_r23_SUITE.erl",1461}]}.
    {call,1,{f,941}}. % bad_all_size_6/1
    {test,is_eq_exact,{f,925},[{x,0},{y,0}]}.
    {deallocate,1}.
    return.
  {label,925}.
    {badmatch,{x,0}}.
  {label,926}.
    {line,[{location,"bs_match_r23_SUITE.erl",1460}]}.
    {badmatch,{x,0}}.
  {label,927}.
    {line,[{location,"bs_match_r23_SUITE.erl",1459}]}.
    {badmatch,{x,0}}.
  {label,928}.
    {line,[{location,"bs_match_r23_SUITE.erl",1458}]}.
    {badmatch,{x,0}}.
  {label,929}.
    {line,[{location,"bs_match_r23_SUITE.erl",1457}]}.
    {badmatch,{x,0}}.


{function, bad_all_size_1, 1, 931}.
  {label,930}.
    {line,[{location,"bs_match_r23_SUITE.erl",1464}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,bad_all_size_1},1}.
  {label,931}.
    {move,{atom,no_match},{x,0}}.
    return.


{function, bad_all_size_2, 1, 933}.
  {label,932}.
    {line,[{location,"bs_match_r23_SUITE.erl",1470}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,bad_all_size_2},1}.
  {label,933}.
    {move,{atom,no_match},{x,0}}.
    return.


{function, bad_all_size_3, 1, 935}.
  {label,934}.
    {line,[{location,"bs_match_r23_SUITE.erl",1476}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,bad_all_size_3},1}.
  {label,935}.
    {move,{atom,no_match},{x,0}}.
    return.


{function, bad_all_size_4, 1, 937}.
  {label,936}.
    {line,[{location,"bs_match_r23_SUITE.erl",1483}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,bad_all_size_4},1}.
  {label,937}.
    {move,{atom,no_match},{x,0}}.
    return.


{function, bad_all_size_5, 1, 939}.
  {label,938}.
    {line,[{location,"bs_match_r23_SUITE.erl",1490}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,bad_all_size_5},1}.
  {label,939}.
    {move,{atom,no_match},{x,0}}.
    return.


{function, bad_all_size_6, 1, 941}.
  {label,940}.
    {line,[{location,"bs_match_r23_SUITE.erl",1499}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,bad_all_size_6},1}.
  {label,941}.
    {move,{atom,no_match},{x,0}}.
    return.


{function, bad_size_1, 1, 943}.
  {label,942}.
    {line,[{location,"bs_match_r23_SUITE.erl",1508}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,bad_size_1},1}.
  {label,943}.
    {test,is_eq_exact,{f,944},[{x,0},{literal,<<0>>}]}.
    {move,{atom,true},{x,0}}.
    return.
  {label,944}.
    {move,{atom,error},{x,0}}.
    return.


{function, bad_size_2, 1, 946}.
  {label,945}.
    {line,[{location,"bs_match_r23_SUITE.erl",1514}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,bad_size_2},1}.
  {label,946}.
    {call_only,1,{f,2116}}. % '-bad_size_2/1-lc$^0/1-0-'/1


{function, bad_size_3, 1, 948}.
  {label,947}.
    {line,[{location,"bs_match_r23_SUITE.erl",1520}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,bad_size_3},1}.
  {label,948}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,951},1,[{x,0}],{x,0}}.
    {gc_bif,'div',{f,949},1,[{integer,1},{integer,0}],{x,1}}.
    {gc_bif,'bnot',{f,949},2,[{x,1}],{x,1}}.
    {jump,{f,950}}.
  {label,949}.
    {move,{atom,bad_size},{x,1}}.
  {label,950}.
    {test,bs_get_integer2,
          {f,951},
          2,
          [{x,0},
           {x,1},
           1,
           {field_flags,[{anno,[1520,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,is_eq_exact,{f,951},[{x,1},{integer,0}]}.
    {test,bs_test_tail2,{f,951},[{x,0},0]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,951}.
    {move,{atom,error},{x,0}}.
    return.


{function, haystack, 1, 953}.
  {label,952}.
    {line,[{location,"bs_match_r23_SUITE.erl",1525}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,haystack},1}.
  {label,953}.
    {test,is_list,{f,952},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<0,0,0,0,0,0,0,0,0,0>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1526}]}.
    {call,1,{f,957}}. % haystack_1/1
    {test,is_eq_exact,{f,955},[{x,0},{literal,<<0,0,0,0,0,0,0,0,0,0>>}]}.
    {line,[{location,"bs_match_r23_SUITE.erl",1528}]}.
    {move,{integer,0},{x,0}}.
    {bs_add,{f,0},[{x,0},{integer,1024},8],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_integer,{f,0},{integer,8184},1,{field_flags,[]},{integer,0}}.
    {bs_put_string,1,{string,<<1>>}}.
    {move,{x,0},{x,0}}.
    {call,1,{f,959}}. % haystack_2/1
    {test,is_eq_exact,
          {f,954},
          [{x,0},
           {literal,[<<0,0,0,0,0,0,0,0,0,0>>,
                     <<0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0>>]}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,954}.
    {line,[{location,"bs_match_r23_SUITE.erl",1527}]}.
    {badmatch,{x,0}}.
  {label,955}.
    {line,[{location,"bs_match_r23_SUITE.erl",1526}]}.
    {badmatch,{x,0}}.


{function, haystack_1, 1, 957}.
  {label,956}.
    {line,[{location,"bs_match_r23_SUITE.erl",1532}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,haystack_1},1}.
  {label,957}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{x,0},{x,1}}.
    {move,{literal,"\n"},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1537}]}.
    {call,2,{f,2111}}. % '-haystack_1/1-lc$^0/1-0-'/2
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, haystack_2, 1, 959}.
  {label,958}.
    {line,[{location,"bs_match_r23_SUITE.erl",1541}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,haystack_2},1}.
  {label,959}.
    {move,{x,0},{x,1}}.
    {move,{literal,[{687,10},{369,20}]},{x,0}}.
    {call_only,2,{f,2105}}. % '-haystack_2/1-lc$^0/1-0-'/2


{function, fc, 1, 961}.
  {label,960}.
    {line,[{location,"bs_match_r23_SUITE.erl",1548}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,fc},1}.
  {label,961}.
    {test,is_tagged_tuple,{f,960},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,960},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,960},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,960},[{x,1},{atom,function_clause}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, fc, 3, 963}.
  {label,962}.
    {line,[{location,"bs_match_r23_SUITE.erl",1551}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,fc},3}.
  {label,963}.
    {test,is_tagged_tuple,{f,962},[{x,2},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,2},0,{x,3}}.
    {test,is_eq_exact,{f,962},[{x,3},{atom,'EXIT'}]}.
    {get_tuple_element,{x,2},1,{x,3}}.
    {test,is_tagged_tuple,{f,962},[{x,3},2,{atom,function_clause}]}.
    {get_tuple_element,{x,3},0,{x,4}}.
    {test,is_eq_exact,{f,962},[{x,4},{atom,function_clause}]}.
    {get_tuple_element,{x,3},1,{x,3}}.
    {test,is_nonempty_list,{f,962},[{x,3}]}.
    {get_hd,{x,3},{x,3}}.
    {test,is_tagged_tuple,{f,962},[{x,3},4,{atom,bs_match_r23_SUITE}]}.
    {get_tuple_element,{x,3},0,{x,4}}.
    {test,is_eq_exact,{f,962},[{x,4},{atom,bs_match_r23_SUITE}]}.
    {get_tuple_element,{x,3},1,{x,4}}.
    {test,is_eq_exact,{f,962},[{x,4},{x,0}]}.
    {get_tuple_element,{x,3},2,{x,3}}.
    {test,is_eq_exact,{f,962},[{x,3},{x,1}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, cover_beam_bool, 1, 965}.
  {label,964}.
    {line,[{location,"bs_match_r23_SUITE.erl",1559}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,cover_beam_bool},1}.
  {label,965}.
    {test,is_list,{f,964},[{x,0}]}.
    {allocate,0,0}.
    {move,{integer,3},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1560}]}.
    {call,2,{f,971}}. % do_cover_beam_bool/2
    {test,is_eq_exact,{f,969},[{x,0},{atom,ok}]}.
    {move,{integer,2},{x,1}}.
    {move,{literal,<<19>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1561}]}.
    {call,2,{f,971}}. % do_cover_beam_bool/2
    {test,is_eq_exact,{f,968},[{x,0},{literal,<<19>>}]}.
    {move,{integer,1},{x,1}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1562}]}.
    {call,2,{f,971}}. % do_cover_beam_bool/2
    {test,is_eq_exact,{f,967},[{x,0},{literal,<<"*">>}]}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<13,17>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1563}]}.
    {call,2,{f,971}}. % do_cover_beam_bool/2
    {test,is_eq_exact,{f,966},[{x,0},{literal,<<17>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,966}.
    {badmatch,{x,0}}.
  {label,967}.
    {line,[{location,"bs_match_r23_SUITE.erl",1562}]}.
    {badmatch,{x,0}}.
  {label,968}.
    {line,[{location,"bs_match_r23_SUITE.erl",1561}]}.
    {badmatch,{x,0}}.
  {label,969}.
    {line,[{location,"bs_match_r23_SUITE.erl",1560}]}.
    {badmatch,{x,0}}.


{function, do_cover_beam_bool, 2, 971}.
  {label,970}.
    {line,[{location,"bs_match_r23_SUITE.erl",1566}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,do_cover_beam_bool},2}.
  {label,971}.
    {test,is_lt,{f,974},[{integer,0},{x,1}]}.
    {select_val,{x,1},
                {f,973},
                {list,[{integer,1},{f,972},{integer,2},{f,972}]}}.
  {label,972}.
    return.
  {label,973}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,974}.
    {test,bs_start_match3,{f,970},2,[{x,0}],{x,2}}.
    {test,bs_skip_bits2,
          {f,970},
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[1573,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,970},
          3,
          [{x,2},
           {atom,all},
           8,
           {field_flags,[{anno,[1573,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1574}]}.
    {gc_bif,'+',{f,0},3,[{x,1},{integer,1}],{x,1}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,971}}. % do_cover_beam_bool/2


{function, matched_out_size, 1, 976}.
  {label,975}.
    {line,[{location,"bs_match_r23_SUITE.erl",1576}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,matched_out_size},1}.
  {label,976}.
    {test,is_list,{f,975},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<"\býÞ­¾ï">>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1577}]}.
    {call,1,{f,989}}. % mos_int/1
    {test,is_eq_exact,{f,987},[{x,0},{literal,{253,3735928559}}]}.
    {move,{literal,<<3,215,221,251,213,5:3>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1578}]}.
    {call,1,{f,989}}. % mos_int/1
    {test,is_eq_exact,{f,986},[{x,0},{literal,{6,3203391149}}]}.
    {move,{literal,<<16,0,53,202,254,222,173,190,239,202,254>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1579}]}.
    {call,1,{f,989}}. % mos_int/1
    {test,is_eq_exact,{f,985},[{x,0},{literal,{53,14627373477560044286}}]}.
    {move,{literal,<<5,190,87,246,245,109,247,126,87,30:5>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1580}]}.
    {call,1,{f,989}}. % mos_int/1
    {test,is_eq_exact,{f,984},[{x,0},{literal,{23,14627373477560044286}}]}.
    {move,{literal,<<3,1,2,3,4,3>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1582}]}.
    {call,1,{f,1089}}. % mos_bin/1
    {test,is_eq_exact,{f,983},[{x,0},{literal,{<<1,2,3>>,4}}]}.
    {move,{literal,<<4,1,2,3,7,19,4,42>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1583}]}.
    {call,1,{f,1089}}. % mos_bin/1
    {test,is_eq_exact,{f,982},[{x,0},{literal,{<<1,2,3,7>>,19,42}}]}.
    {move,{literal,<<4,1,2,3,7,97,98,99,100,101,102,103,104,105,106>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1584}]}.
    {call,1,{f,1089}}. % mos_bin/1
    {test,is_eq_exact,{f,981},[{x,0},{literal,<<1,2,3,7>>}]}.
    {move,{atom,not_a_binary},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1586}]}.
    {call,1,{f,1111}}. % mos_verify_sig/1
    {test,is_eq_exact,{f,980},[{x,0},{atom,false}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1587}]}.
    {call,1,{f,1111}}. % mos_verify_sig/1
    {test,is_eq_exact,{f,979},[{x,0},{atom,false}]}.
    {move,{literal,<<0,0,0,42>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1588}]}.
    {call,1,{f,1111}}. % mos_verify_sig/1
    {test,is_eq_exact,{f,978},[{x,0},{atom,false}]}.
    {line,[{location,"bs_match_r23_SUITE.erl",1589}]}.
    {move,{integer,0},{x,0}}.
    {bs_add,{f,0},[{x,0},{integer,94},8],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_string,4,{string,<<0,0,0,77>>}}.
    {bs_put_integer,{f,0},{integer,77},8,{field_flags,[]},{integer,0}}.
    {bs_put_string,13,{string,<<0,0,0,9,49,50,51,52,53,54,55,56,57>>}}.
    {move,{x,0},{x,0}}.
    {call,1,{f,1111}}. % mos_verify_sig/1
    {test,is_eq_exact,{f,977},[{x,0},{literal,<<"123456789">>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,977}.
    {badmatch,{x,0}}.
  {label,978}.
    {line,[{location,"bs_match_r23_SUITE.erl",1588}]}.
    {badmatch,{x,0}}.
  {label,979}.
    {line,[{location,"bs_match_r23_SUITE.erl",1587}]}.
    {badmatch,{x,0}}.
  {label,980}.
    {line,[{location,"bs_match_r23_SUITE.erl",1586}]}.
    {badmatch,{x,0}}.
  {label,981}.
    {line,[{location,"bs_match_r23_SUITE.erl",1584}]}.
    {badmatch,{x,0}}.
  {label,982}.
    {line,[{location,"bs_match_r23_SUITE.erl",1583}]}.
    {badmatch,{x,0}}.
  {label,983}.
    {line,[{location,"bs_match_r23_SUITE.erl",1582}]}.
    {badmatch,{x,0}}.
  {label,984}.
    {line,[{location,"bs_match_r23_SUITE.erl",1580}]}.
    {badmatch,{x,0}}.
  {label,985}.
    {line,[{location,"bs_match_r23_SUITE.erl",1579}]}.
    {badmatch,{x,0}}.
  {label,986}.
    {line,[{location,"bs_match_r23_SUITE.erl",1578}]}.
    {badmatch,{x,0}}.
  {label,987}.
    {line,[{location,"bs_match_r23_SUITE.erl",1577}]}.
    {badmatch,{x,0}}.


{function, mos_int, 1, 989}.
  {label,988}.
    {line,[{location,"bs_match_r23_SUITE.erl",1593}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,mos_int},1}.
  {label,989}.
    {allocate_zero,4,1}.
    {move,{x,0},{y,3}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1594}]}.
    {call,1,{f,1010}}. % mos_int_plain/1
    {test_heap,2,1}.
    {put_list,{y,3},nil,{x,1}}.
    {move,{x,0},{y,2}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1595}]}.
    {call,1,{f,1015}}. % mos_int_list/1
    {test,is_eq_exact,{f,1008},[{x,0},{y,2}]}.
    {test_heap,6,0}.
    {put_list,{y,3},nil,{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,a},{x,0},{atom,z}]}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1596}]}.
    {call,1,{f,1018}}. % mos_int_tuple/1
    {test,is_eq_exact,{f,1007},[{x,0},{y,2}]}.
    {test_heap,2,0}.
    {put_list,{y,3},nil,{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1598}]}.
    {call,1,{f,1021}}. % mos_int_mixed/1
    {test,is_eq_exact,{f,1006},[{x,0},{y,2}]}.
    {test_heap,6,0}.
    {put_list,{y,3},nil,{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,a},{x,0},{atom,z}]}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1599}]}.
    {call,1,{f,1021}}. % mos_int_mixed/1
    {test,is_eq_exact,{f,1005},[{x,0},{y,2}]}.
    {move,{literal,{30,12}},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1600}]}.
    {call,1,{f,1021}}. % mos_int_mixed/1
    {test,is_eq_exact,{f,1004},[{x,0},{integer,42}]}.
    {test_heap,6,0}.
    {put_list,{y,3},nil,{x,0}}.
    {put_list,{y,3},{x,0},{x,0}}.
    {put_list,{y,3},{x,0},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1601}]}.
    {call,1,{f,1021}}. % mos_int_mixed/1
    {test,is_eq_exact,{f,1003},[{x,0},{atom,no_match}]}.
    {test_heap,5,0}.
    {put_list,{y,3},nil,{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,tag},{x,0}]}}.
    {move,{literal,{0,1,2,3,4,5,6,7,8,9}},{x,1}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1603}]}.
    {call,2,{f,1028}}. % mos_int_pats1/2
    {test,is_eq_exact,{f,1002},[{x,0},{y,2}]}.
    {test_heap,5,0}.
    {put_list,{y,3},nil,{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,tag},{x,0}]}}.
    {move,{literal,[z]},{x,2}}.
    {move,{literal,{a,a,a,a,a,a,a,a,a,a}},{x,1}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1604}]}.
    {call,3,{f,1031}}. % mos_int_pats2/3
    {test,is_eq_exact,{f,1001},[{x,0},{y,2}]}.
    {test,is_tuple,{f,1000},[{y,2}]}.
    {test,test_arity,{f,1000},[{y,2},2]}.
    {test_heap,15,0}.
    {get_tuple_element,{y,2},0,{y,1}}.
    {get_tuple_element,{y,2},1,{y,0}}.
    {put_list,{y,3},nil,{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,tag},{x,0}]}}.
    {put_list,{y,1},nil,{x,1}}.
    {put_tuple2,{x,2},{list,[{y,0},{y,3},{y,0}]}}.
    {put_list,{x,2},{x,1},{x,1}}.
    {put_list,{y,1},{x,1},{x,1}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1606}]}.
    {call,2,{f,1034}}. % mos_int_pats3/2
    {test,is_eq_exact,{f,999},[{x,0},{y,2}]}.
    {test_heap,2,0}.
    {put_list,{y,3},nil,{x,0}}.
    {put_map_assoc,{f,0},{literal,#{}},{x,0},1,{list,[{atom,key},{x,0}]}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1607}]}.
    {call,1,{f,1037}}. % mos_int_map/1
    {test,is_eq_exact,{f,998},[{x,0},{y,2}]}.
    {test_heap,2,0}.
    {put_list,{y,3},nil,{x,0}}.
    {put_map_assoc,{f,0},
                   {literal,#{}},
                   {x,1},
                   1,
                   {list,[{literal,{my,key}},{x,0}]}}.
    {move,{literal,{my,key}},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1609}]}.
    {call,2,{f,1040}}. % mos_int_map/2
    {test,is_eq_exact,{f,997},[{x,0},{y,2}]}.
    {test_heap,4,0}.
    {put_list,{y,3},nil,{x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1610}]}.
    {call,1,{f,1044}}. % mos_int_alias/1
    {test,is_tuple,{f,996},[{x,0}]}.
    {test,test_arity,{f,996},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,996},[{x,1},{y,1}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,996},[{x,1},{y,0}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,{f,996},[{x,1},{y,3}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{y,1},{y,0}]}}.
    {test,is_eq_exact,{f,995},[{x,0},{y,2}]}.
    {test_heap,2,0}.
    {put_list,{y,3},nil,{x,0}}.
    {trim,2,2}.
    {line,[{location,"bs_match_r23_SUITE.erl",1612}]}.
    {call,1,{f,1047}}. % mos_int_try/1
    {test,is_eq_exact,{f,994},[{x,0},{y,0}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1613}]}.
    {call,1,{f,1054}}. % mos_int_receive/1
    {test,is_eq_exact,{f,993},[{x,0},{y,0}]}.
    {test_heap,2,0}.
    {put_list,{y,1},nil,{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1614}]}.
    {call,1,{f,1075}}. % mos_int_fun/1
    {test,is_eq_exact,{f,992},[{x,0},{y,0}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1615}]}.
    {call,1,{f,1079}}. % mos_int_exported/1
    {test,is_eq_exact,{f,991},[{x,0},{y,0}]}.
    {move,{y,1},{x,0}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {line,[{location,"bs_match_r23_SUITE.erl",1616}]}.
    {call,1,{f,1085}}. % mos_int_utf/1
    {test,is_eq_exact,{f,990},[{x,0},{y,0}]}.
    {deallocate,1}.
    return.
  {label,990}.
    {badmatch,{x,0}}.
  {label,991}.
    {line,[{location,"bs_match_r23_SUITE.erl",1615}]}.
    {badmatch,{x,0}}.
  {label,992}.
    {line,[{location,"bs_match_r23_SUITE.erl",1614}]}.
    {badmatch,{x,0}}.
  {label,993}.
    {line,[{location,"bs_match_r23_SUITE.erl",1613}]}.
    {badmatch,{x,0}}.
  {label,994}.
    {line,[{location,"bs_match_r23_SUITE.erl",1612}]}.
    {badmatch,{x,0}}.
  {label,995}.
    {line,[{location,"bs_match_r23_SUITE.erl",1611}]}.
    {badmatch,{x,0}}.
  {label,996}.
    {line,[{location,"bs_match_r23_SUITE.erl",1610}]}.
    {badmatch,{x,0}}.
  {label,997}.
    {line,[{location,"bs_match_r23_SUITE.erl",1609}]}.
    {badmatch,{x,0}}.
  {label,998}.
    {line,[{location,"bs_match_r23_SUITE.erl",1607}]}.
    {badmatch,{x,0}}.
  {label,999}.
    {line,[{location,"bs_match_r23_SUITE.erl",1606}]}.
    {badmatch,{x,0}}.
  {label,1000}.
    {line,[{location,"bs_match_r23_SUITE.erl",1605}]}.
    {badmatch,{y,2}}.
  {label,1001}.
    {line,[{location,"bs_match_r23_SUITE.erl",1604}]}.
    {badmatch,{x,0}}.
  {label,1002}.
    {line,[{location,"bs_match_r23_SUITE.erl",1603}]}.
    {badmatch,{x,0}}.
  {label,1003}.
    {line,[{location,"bs_match_r23_SUITE.erl",1601}]}.
    {badmatch,{x,0}}.
  {label,1004}.
    {line,[{location,"bs_match_r23_SUITE.erl",1600}]}.
    {badmatch,{x,0}}.
  {label,1005}.
    {line,[{location,"bs_match_r23_SUITE.erl",1599}]}.
    {badmatch,{x,0}}.
  {label,1006}.
    {line,[{location,"bs_match_r23_SUITE.erl",1598}]}.
    {badmatch,{x,0}}.
  {label,1007}.
    {line,[{location,"bs_match_r23_SUITE.erl",1596}]}.
    {badmatch,{x,0}}.
  {label,1008}.
    {line,[{location,"bs_match_r23_SUITE.erl",1595}]}.
    {badmatch,{x,0}}.


{function, mos_int_plain, 1, 1010}.
  {label,1009}.
    {line,[{location,"bs_match_r23_SUITE.erl",1619}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,mos_int_plain},1}.
  {label,1010}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1013},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_integer2,
          {f,1011},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[1619,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1011},
          3,
          [{x,1},
           {x,2},
           1,
           {field_flags,[{anno,[1619,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1011},
          3,
          [{x,1},
           {integer,32},
           1,
           {field_flags,[{anno,[1619,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1011},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,1011}.
    {bs_set_position,{x,1},{x,0}}.
    {test,bs_get_integer2,
          {f,1012},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[1621,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1012},
          3,
          [{x,1},
           {x,2},
           1,
           {field_flags,[{anno,[1621,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1012},
          3,
          [{x,1},
           {integer,64},
           1,
           {field_flags,[{anno,[1621,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1012},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,1012}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,1009}}.
  {label,1013}.
    {test,bs_start_match3,{f,1009},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,1009},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[1621,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1009},
          3,
          [{x,1},
           {x,2},
           1,
           {field_flags,[{anno,[1621,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1009},
          3,
          [{x,1},
           {integer,64},
           1,
           {field_flags,[{anno,[1621,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1009},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.


{function, mos_int_list, 1, 1015}.
  {label,1014}.
    {line,[{location,"bs_match_r23_SUITE.erl",1624}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,mos_int_list},1}.
  {label,1015}.
    {test,is_nonempty_list,{f,1014},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_nil,{f,1014},[{x,2}]}.
    {test,bs_start_match3,{f,1016},2,[{x,1}],{x,2}}.
    {test,bs_get_integer2,
          {f,1016},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[1624,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,1016},
          4,
          [{x,2},
           {x,3},
           1,
           {field_flags,[{anno,[1624,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,1016},
          4,
          [{x,2},
           {integer,32},
           1,
           {field_flags,[{anno,[1624,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,1016},[{x,2},0]}.
    {test_heap,3,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4}]}}.
    return.
  {label,1016}.
    {test,bs_start_match3,{f,1014},2,[{x,1}],{x,1}}.
    {test,bs_get_integer2,
          {f,1014},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[1626,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1014},
          3,
          [{x,1},
           {x,2},
           1,
           {field_flags,[{anno,[1626,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1014},
          3,
          [{x,1},
           {integer,64},
           1,
           {field_flags,[{anno,[1626,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1014},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.


{function, mos_int_tuple, 1, 1018}.
  {label,1017}.
    {line,[{location,"bs_match_r23_SUITE.erl",1629}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,mos_int_tuple},1}.
  {label,1018}.
    {test,is_tagged_tuple,{f,1017},[{x,0},3,{atom,a}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1017},[{x,1},{atom,a}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,{f,1017},[{x,1},{atom,z}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_nonempty_list,{f,1017},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_nil,{f,1017},[{x,1}]}.
    {test,bs_start_match3,{f,1019},3,[{x,2}],{x,1}}.
    {test,bs_get_integer2,
          {f,1019},
          3,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[1629,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,1019},
          4,
          [{x,1},
           {x,3},
           1,
           {field_flags,[{anno,[1629,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,1019},
          4,
          [{x,1},
           {integer,32},
           1,
           {field_flags,[{anno,[1629,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,1019},[{x,1},0]}.
    {test_heap,3,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4}]}}.
    return.
  {label,1019}.
    {test,bs_start_match3,{f,1017},3,[{x,2}],{x,1}}.
    {test,bs_get_integer2,
          {f,1017},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[1631,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1017},
          3,
          [{x,1},
           {x,2},
           1,
           {field_flags,[{anno,[1631,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1017},
          3,
          [{x,1},
           {integer,64},
           1,
           {field_flags,[{anno,[1631,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1017},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.


{function, mos_int_mixed, 1, 1021}.
  {label,1020}.
    {line,[{location,"bs_match_r23_SUITE.erl",1634}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,mos_int_mixed},1}.
  {label,1021}.
    {test,is_tagged_tuple,{f,1023},[{x,0},3,{atom,a}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1023},[{x,1},{atom,a}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,{f,1023},[{x,1},{atom,z}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_nonempty_list,{f,1023},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_nil,{f,1023},[{x,1}]}.
    {test,bs_start_match3,{f,1022},3,[{x,2}],{x,1}}.
    {test,bs_get_integer2,
          {f,1022},
          3,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[1634,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,1022},
          4,
          [{x,1},
           {x,3},
           1,
           {field_flags,[{anno,[1634,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,1022},
          4,
          [{x,1},
           {integer,32},
           1,
           {field_flags,[{anno,[1634,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,1022},[{x,1},0]}.
    {test_heap,3,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4}]}}.
    return.
  {label,1022}.
    {test,bs_start_match3,{f,1023},3,[{x,2}],{x,1}}.
    {test,bs_get_integer2,
          {f,1023},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[1636,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1023},
          3,
          [{x,1},
           {x,2},
           1,
           {field_flags,[{anno,[1636,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1023},
          3,
          [{x,1},
           {integer,64},
           1,
           {field_flags,[{anno,[1636,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1023},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,1023}.
    {test,is_nonempty_list,{f,1025},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_nil,{f,1025},[{x,2}]}.
    {test,bs_start_match3,{f,1024},2,[{x,1}],{x,2}}.
    {test,bs_get_integer2,
          {f,1024},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[1638,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,1024},
          4,
          [{x,2},
           {x,3},
           1,
           {field_flags,[{anno,[1638,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,1024},
          4,
          [{x,2},
           {integer,32},
           1,
           {field_flags,[{anno,[1638,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,1024},[{x,2},0]}.
    {test_heap,3,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4}]}}.
    return.
  {label,1024}.
    {test,bs_start_match3,{f,1025},2,[{x,1}],{x,1}}.
    {test,bs_get_integer2,
          {f,1025},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[1640,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1025},
          3,
          [{x,1},
           {x,2},
           1,
           {field_flags,[{anno,[1640,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1025},
          3,
          [{x,1},
           {integer,64},
           1,
           {field_flags,[{anno,[1640,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1025},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,1025}.
    {test,is_tuple,{f,1026},[{x,0}]}.
    {test,test_arity,{f,1026},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_integer,{f,1026},[{x,1}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_integer,{f,1026},[{x,0}]}.
    {line,[{location,"bs_match_r23_SUITE.erl",1643}]}.
    {gc_bif,'+',{f,0},2,[{x,1},{x,0}],{x,0}}.
    return.
  {label,1026}.
    {move,{atom,no_match},{x,0}}.
    return.


{function, mos_int_pats1, 2, 1028}.
  {label,1027}.
    {line,[{location,"bs_match_r23_SUITE.erl",1647}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,mos_int_pats1},2}.
  {label,1028}.
    {test,is_tagged_tuple,{f,1027},[{x,0},2,{atom,tag}]}.
    {get_tuple_element,{x,0},0,{x,2}}.
    {test,is_eq_exact,{f,1027},[{x,2},{atom,tag}]}.
    {test,is_tuple,{f,1027},[{x,1}]}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {test,test_arity,{f,1029},[{x,1},10]}.
    {test,is_nonempty_list,{f,1027},[{x,2}]}.
    {get_list,{x,2},{x,3},{x,4}}.
    {test,is_nil,{f,1029},[{x,4}]}.
    {test,bs_start_match3,{f,1029},4,[{x,3}],{x,3}}.
    {test,bs_get_integer2,
          {f,1029},
          4,
          [{x,3},
           {integer,8},
           1,
           {field_flags,[{anno,[1647,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_integer2,
          {f,1029},
          5,
          [{x,3},
           {x,4},
           1,
           {field_flags,[{anno,[1647,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_integer2,
          {f,1029},
          5,
          [{x,3},
           {integer,32},
           1,
           {field_flags,[{anno,[1647,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_test_tail2,{f,1029},[{x,3},0]}.
    {test_heap,3,6}.
    {put_tuple2,{x,0},{list,[{x,4},{x,5}]}}.
    return.
  {label,1029}.
    {test,test_arity,{f,1027},[{x,1},10]}.
    {test,is_nonempty_list,{f,1027},[{x,2}]}.
    {get_list,{x,2},{x,3},{x,2}}.
    {test,is_nil,{f,1027},[{x,2}]}.
    {test,bs_start_match3,{f,1027},4,[{x,3}],{x,2}}.
    {test,bs_get_integer2,
          {f,1027},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[1649,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,1027},
          4,
          [{x,2},
           {x,3},
           1,
           {field_flags,[{anno,[1649,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,1027},
          4,
          [{x,2},
           {integer,64},
           1,
           {field_flags,[{anno,[1649,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,1027},[{x,2},0]}.
    {test_heap,3,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4}]}}.
    return.


{function, mos_int_pats2, 3, 1031}.
  {label,1030}.
    {line,[{location,"bs_match_r23_SUITE.erl",1652}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,mos_int_pats2},3}.
  {label,1031}.
    {test,is_tagged_tuple,{f,1030},[{x,0},2,{atom,tag}]}.
    {get_tuple_element,{x,0},0,{x,3}}.
    {test,is_eq_exact,{f,1030},[{x,3},{atom,tag}]}.
    {test,is_tuple,{f,1030},[{x,1}]}.
    {get_tuple_element,{x,0},1,{x,3}}.
    {test,test_arity,{f,1032},[{x,1},10]}.
    {test,is_nonempty_list,{f,1030},[{x,2}]}.
    {test,is_nonempty_list,{f,1030},[{x,3}]}.
    {get_list,{x,3},{x,4},{x,5}}.
    {test,is_nil,{f,1032},[{x,5}]}.
    {test,bs_start_match3,{f,1032},5,[{x,4}],{x,4}}.
    {test,bs_get_integer2,
          {f,1032},
          5,
          [{x,4},
           {integer,8},
           1,
           {field_flags,[{anno,[1652,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_get_integer2,
          {f,1032},
          6,
          [{x,4},
           {x,5},
           1,
           {field_flags,[{anno,[1652,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_get_integer2,
          {f,1032},
          6,
          [{x,4},
           {integer,32},
           1,
           {field_flags,[{anno,[1652,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,bs_test_tail2,{f,1032},[{x,4},0]}.
    {get_tuple_element,{x,1},0,{x,4}}.
    {get_tuple_element,{x,1},1,{x,7}}.
    {test,is_eq_exact,{f,1032},[{x,7},{x,4}]}.
    {get_tuple_element,{x,1},2,{x,7}}.
    {test,is_eq_exact,{f,1032},[{x,7},{x,4}]}.
    {get_tuple_element,{x,1},3,{x,7}}.
    {test,is_eq_exact,{f,1032},[{x,7},{x,4}]}.
    {get_tuple_element,{x,1},4,{x,7}}.
    {test,is_eq_exact,{f,1032},[{x,7},{x,4}]}.
    {get_tuple_element,{x,1},5,{x,7}}.
    {test,is_eq_exact,{f,1032},[{x,7},{x,4}]}.
    {get_tuple_element,{x,1},6,{x,7}}.
    {test,is_eq_exact,{f,1032},[{x,7},{x,4}]}.
    {get_tuple_element,{x,1},7,{x,7}}.
    {test,is_eq_exact,{f,1032},[{x,7},{x,4}]}.
    {get_tuple_element,{x,1},8,{x,7}}.
    {test,is_eq_exact,{f,1032},[{x,7},{x,4}]}.
    {get_tuple_element,{x,1},9,{x,7}}.
    {test,is_eq_exact,{f,1032},[{x,7},{x,4}]}.
    {test_heap,3,7}.
    {put_tuple2,{x,0},{list,[{x,5},{x,6}]}}.
    return.
  {label,1032}.
    {test,test_arity,{f,1030},[{x,1},10]}.
    {test,is_nonempty_list,{f,1030},[{x,2}]}.
    {test,is_nonempty_list,{f,1030},[{x,3}]}.
    {get_list,{x,3},{x,4},{x,3}}.
    {test,is_nil,{f,1030},[{x,3}]}.
    {test,bs_start_match3,{f,1030},5,[{x,4}],{x,3}}.
    {test,bs_get_integer2,
          {f,1030},
          4,
          [{x,3},
           {integer,8},
           1,
           {field_flags,[{anno,[1654,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_integer2,
          {f,1030},
          5,
          [{x,3},
           {x,4},
           1,
           {field_flags,[{anno,[1654,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_integer2,
          {f,1030},
          5,
          [{x,3},
           {integer,64},
           1,
           {field_flags,[{anno,[1654,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_test_tail2,{f,1030},[{x,3},0]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {get_tuple_element,{x,1},1,{x,6}}.
    {test,is_eq_exact,{f,1030},[{x,6},{x,3}]}.
    {get_tuple_element,{x,1},2,{x,6}}.
    {test,is_eq_exact,{f,1030},[{x,6},{x,3}]}.
    {get_tuple_element,{x,1},3,{x,6}}.
    {test,is_eq_exact,{f,1030},[{x,6},{x,3}]}.
    {get_tuple_element,{x,1},4,{x,6}}.
    {test,is_eq_exact,{f,1030},[{x,6},{x,3}]}.
    {get_tuple_element,{x,1},5,{x,6}}.
    {test,is_eq_exact,{f,1030},[{x,6},{x,3}]}.
    {get_tuple_element,{x,1},6,{x,6}}.
    {test,is_eq_exact,{f,1030},[{x,6},{x,3}]}.
    {get_tuple_element,{x,1},7,{x,6}}.
    {test,is_eq_exact,{f,1030},[{x,6},{x,3}]}.
    {get_tuple_element,{x,1},8,{x,6}}.
    {test,is_eq_exact,{f,1030},[{x,6},{x,3}]}.
    {get_tuple_element,{x,1},9,{x,6}}.
    {test,is_eq_exact,{f,1030},[{x,6},{x,3}]}.
    {test_heap,3,6}.
    {put_tuple2,{x,0},{list,[{x,4},{x,5}]}}.
    return.


{function, mos_int_pats3, 2, 1034}.
  {label,1033}.
    {line,[{location,"bs_match_r23_SUITE.erl",1657}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,mos_int_pats3},2}.
  {label,1034}.
    {test,is_tagged_tuple,{f,1033},[{x,0},2,{atom,tag}]}.
    {get_tuple_element,{x,0},0,{x,2}}.
    {test,is_eq_exact,{f,1033},[{x,2},{atom,tag}]}.
    {test,is_nonempty_list,{f,1033},[{x,1}]}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {get_list,{x,1},{x,3},{x,4}}.
    {test,is_nonempty_list,{f,1033},[{x,2}]}.
    {get_list,{x,2},{x,5},{x,2}}.
    {test,is_nil,{f,1033},[{x,2}]}.
    {test,bs_start_match3,{f,1035},6,[{x,5}],{x,2}}.
    {test,bs_get_integer2,
          {f,1035},
          6,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[1657,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,bs_get_integer2,
          {f,1035},
          7,
          [{x,2},
           {x,6},
           1,
           {field_flags,[{anno,[1657,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,7}}.
    {test,bs_get_integer2,
          {f,1035},
          8,
          [{x,2},
           {integer,32},
           1,
           {field_flags,[{anno,[1657,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,8}}.
    {test,bs_test_tail2,{f,1035},[{x,2},0]}.
    {test,is_nonempty_list,{f,1033},[{x,4}]}.
    {get_list,{x,4},{x,2},{x,9}}.
    {test,is_nonempty_list,{f,1035},[{x,9}]}.
    {get_list,{x,9},{x,10},{x,9}}.
    {test,is_nil,{f,1035},[{x,9}]}.
    {test,is_tuple,{f,1035},[{x,2}]}.
    {test,test_arity,{f,1035},[{x,2},3]}.
    {get_tuple_element,{x,2},1,{x,9}}.
    {test,bs_start_match3,{f,1035},11,[{x,9}],{x,9}}.
    {test,bs_get_integer2,
          {f,1035},
          11,
          [{x,9},
           {integer,8},
           1,
           {field_flags,[{anno,[1657,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,11}}.
    {test,bs_get_integer2,
          {f,1035},
          12,
          [{x,9},
           {x,11},
           1,
           {field_flags,[{anno,[1657,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,12}}.
    {test,bs_get_integer2,
          {f,1035},
          13,
          [{x,9},
           {integer,32},
           1,
           {field_flags,[{anno,[1657,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,13}}.
    {test,bs_test_tail2,{f,1035},[{x,9},0]}.
    {test,is_eq_exact,{f,1035},[{x,3},{x,7}]}.
    {get_tuple_element,{x,2},0,{x,9}}.
    {test,is_eq_exact,{f,1035},[{x,9},{x,8}]}.
    {test,is_eq_exact,{f,1035},[{x,11},{x,6}]}.
    {test,is_eq_exact,{f,1035},[{x,12},{x,7}]}.
    {test,is_eq_exact,{f,1035},[{x,13},{x,8}]}.
    {get_tuple_element,{x,2},2,{x,2}}.
    {test,is_eq_exact,{f,1035},[{x,2},{x,8}]}.
    {test,is_eq_exact,{f,1035},[{x,10},{x,7}]}.
    {test_heap,3,9}.
    {put_tuple2,{x,0},{list,[{x,7},{x,8}]}}.
    return.
  {label,1035}.
    {test,bs_start_match3,{f,1033},6,[{x,5}],{x,2}}.
    {test,bs_get_integer2,
          {f,1033},
          5,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[1659,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_get_integer2,
          {f,1033},
          6,
          [{x,2},
           {x,5},
           1,
           {field_flags,[{anno,[1659,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,bs_get_integer2,
          {f,1033},
          7,
          [{x,2},
           {integer,64},
           1,
           {field_flags,[{anno,[1659,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,7}}.
    {test,bs_test_tail2,{f,1033},[{x,2},0]}.
    {test,is_nonempty_list,{f,1033},[{x,4}]}.
    {get_list,{x,4},{x,2},{x,4}}.
    {test,is_nonempty_list,{f,1033},[{x,4}]}.
    {get_list,{x,4},{x,8},{x,4}}.
    {test,is_nil,{f,1033},[{x,4}]}.
    {test,is_tuple,{f,1033},[{x,2}]}.
    {test,test_arity,{f,1033},[{x,2},3]}.
    {get_tuple_element,{x,2},1,{x,4}}.
    {test,bs_start_match3,{f,1033},9,[{x,4}],{x,4}}.
    {test,bs_get_integer2,
          {f,1033},
          9,
          [{x,4},
           {integer,8},
           1,
           {field_flags,[{anno,[1659,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,9}}.
    {test,bs_get_integer2,
          {f,1033},
          10,
          [{x,4},
           {x,9},
           1,
           {field_flags,[{anno,[1659,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,10}}.
    {test,bs_get_integer2,
          {f,1033},
          11,
          [{x,4},
           {integer,64},
           1,
           {field_flags,[{anno,[1659,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,11}}.
    {test,bs_test_tail2,{f,1033},[{x,4},0]}.
    {test,is_eq_exact,{f,1033},[{x,3},{x,6}]}.
    {get_tuple_element,{x,2},0,{x,3}}.
    {test,is_eq_exact,{f,1033},[{x,3},{x,7}]}.
    {test,is_eq_exact,{f,1033},[{x,9},{x,5}]}.
    {test,is_eq_exact,{f,1033},[{x,10},{x,6}]}.
    {test,is_eq_exact,{f,1033},[{x,11},{x,7}]}.
    {get_tuple_element,{x,2},2,{x,2}}.
    {test,is_eq_exact,{f,1033},[{x,2},{x,7}]}.
    {test,is_eq_exact,{f,1033},[{x,8},{x,6}]}.
    {test_heap,3,8}.
    {put_tuple2,{x,0},{list,[{x,6},{x,7}]}}.
    return.


{function, mos_int_map, 1, 1037}.
  {label,1036}.
    {line,[{location,"bs_match_r23_SUITE.erl",1662}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,mos_int_map},1}.
  {label,1037}.
    {test,is_map,{f,1036},[{x,0}]}.
    {get_map_elements,{f,1038},{x,0},{list,[{atom,key},{x,1}]}}.
    {test,is_nonempty_list,{f,1038},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_nil,{f,1038},[{x,1}]}.
    {test,bs_start_match3,{f,1038},3,[{x,2}],{x,1}}.
    {test,bs_get_integer2,
          {f,1038},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[1662,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1038},
          3,
          [{x,1},
           {x,2},
           1,
           {field_flags,[{anno,[1662,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1038},
          3,
          [{x,1},
           {integer,32},
           1,
           {field_flags,[{anno,[1662,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1038},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,1038}.
    {get_map_elements,{f,1036},{x,0},{list,[{atom,key},{x,1}]}}.
    {test,is_nonempty_list,{f,1036},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_nil,{f,1036},[{x,1}]}.
    {test,bs_start_match3,{f,1036},3,[{x,2}],{x,1}}.
    {test,bs_get_integer2,
          {f,1036},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[1664,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1036},
          3,
          [{x,1},
           {x,2},
           1,
           {field_flags,[{anno,[1664,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1036},
          3,
          [{x,1},
           {integer,64},
           1,
           {field_flags,[{anno,[1664,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1036},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.


{function, mos_int_map, 2, 1040}.
  {label,1039}.
    {line,[{location,"bs_match_r23_SUITE.erl",1667}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,mos_int_map},2}.
  {label,1040}.
    {test,is_map,{f,1042},[{x,1}]}.
    {get_map_elements,{f,1041},{x,1},{list,[{x,0},{x,2}]}}.
    {test,is_nonempty_list,{f,1041},[{x,2}]}.
    {get_list,{x,2},{x,3},{x,2}}.
    {test,is_nil,{f,1041},[{x,2}]}.
    {test,bs_start_match3,{f,1041},4,[{x,3}],{x,2}}.
    {test,bs_get_integer2,
          {f,1041},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[1669,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,1041},
          4,
          [{x,2},
           {x,3},
           1,
           {field_flags,[{anno,[1669,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,1041},
          4,
          [{x,2},
           {integer,32},
           1,
           {field_flags,[{anno,[1669,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,1041},[{x,2},0]}.
    {test_heap,3,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4}]}}.
    return.
  {label,1041}.
    {get_map_elements,{f,1042},{x,1},{list,[{x,0},{x,0}]}}.
    {test,is_nonempty_list,{f,1042},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {test,is_nil,{f,1042},[{x,0}]}.
    {test,bs_start_match3,{f,1042},3,[{x,2}],{x,0}}.
    {test,bs_get_integer2,
          {f,1042},
          2,
          [{x,0},
           {integer,8},
           1,
           {field_flags,[{anno,[1670,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1042},
          3,
          [{x,0},
           {x,2},
           1,
           {field_flags,[{anno,[1670,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1042},
          3,
          [{x,0},
           {integer,64},
           1,
           {field_flags,[{anno,[1670,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1042},[{x,0},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,1042}.
    {line,[{location,"bs_match_r23_SUITE.erl",1668}]}.
    {case_end,{x,1}}.


{function, mos_int_alias, 1, 1044}.
  {label,1043}.
    {line,[{location,"bs_match_r23_SUITE.erl",1673}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,mos_int_alias},1}.
  {label,1044}.
    {test,is_nonempty_list,{f,1043},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_nil,{f,1043},[{x,2}]}.
    {test,is_nonempty_list,{f,1043},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_nil,{f,1043},[{x,1}]}.
    {test,bs_start_match3,{f,1045},3,[{x,2}],{x,1}}.
    {test,bs_get_integer2,
          {f,1045},
          3,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[1673,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,1045},
          4,
          [{x,1},
           {x,3},
           1,
           {field_flags,[{anno,[1673,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,1045},
          4,
          [{x,1},
           {integer,32},
           1,
           {field_flags,[{anno,[1673,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,1045},[{x,1},0]}.
    {test_heap,4,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4},{x,2}]}}.
    return.
  {label,1045}.
    {test,bs_start_match3,{f,1043},3,[{x,2}],{x,1}}.
    {test,bs_get_integer2,
          {f,1043},
          3,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[1675,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,1043},
          4,
          [{x,1},
           {x,3},
           1,
           {field_flags,[{anno,[1675,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,1043},
          4,
          [{x,1},
           {integer,64},
           1,
           {field_flags,[{anno,[1675,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,1043},[{x,1},0]}.
    {test_heap,4,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4},{x,2}]}}.
    return.


{function, mos_int_try, 1, 1047}.
  {label,1046}.
    {line,[{location,"bs_match_r23_SUITE.erl",1678}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,mos_int_try},1}.
  {label,1047}.
    {allocate_zero,2,1}.
    {'try',{y,1},{f,1051}}.
    {'try',{y,0},{f,1049}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1679}]}.
    {call,1,{f,1968}}. % id/1
    {try_end,{y,0}}.
    {test,is_nonempty_list,{f,1052},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_nil,{f,1052},[{x,2}]}.
    {test,bs_start_match3,{f,1048},2,[{x,1}],{x,2}}.
    {test,bs_get_integer2,
          {f,1048},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[1680,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,1048},
          4,
          [{x,2},
           {x,3},
           1,
           {field_flags,[{anno,[1680,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,1048},
          4,
          [{x,2},
           {integer,32},
           1,
           {field_flags,[{anno,[1680,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,1048},[{x,2},0]}.
    {test_heap,3,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4}]}}.
    {jump,{f,1050}}.
  {label,1048}.
    {test,bs_start_match3,{f,1052},2,[{x,1}],{x,1}}.
    {test,bs_get_integer2,
          {f,1052},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[1681,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1052},
          3,
          [{x,1},
           {x,2},
           1,
           {field_flags,[{anno,[1681,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1052},
          3,
          [{x,1},
           {integer,64},
           1,
           {field_flags,[{anno,[1681,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1052},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    {jump,{f,1050}}.
  {label,1049}.
    {try_case,{y,0}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.
  {label,1050}.
    {try_end,{y,1}}.
    {deallocate,2}.
    return.
  {label,1051}.
    {try_case,{y,1}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.
  {label,1052}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",1679}]}.
    {try_case_end,{x,0}}.


{function, mos_int_receive, 1, 1054}.
  {label,1053}.
    {line,[{location,"bs_match_r23_SUITE.erl",1686}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,mos_int_receive},1}.
  {label,1054}.
    {allocate_zero,5,1}.
    {move,{x,0},{y,4}}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{y,4},{x,1}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1688}]}.
    send.
  {label,1055}.
    {loop_rec,{f,1058},{x,0}}.
    {test,bs_start_match3,{f,1056},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,1056},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[1690,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1056},
          3,
          [{x,1},
           {x,2},
           1,
           {field_flags,[{anno,[1690,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1056},
          3,
          [{x,1},
           {integer,32},
           1,
           {field_flags,[{anno,[1690,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1056},[{x,1},0]}.
    {test_heap,3,4}.
    {move,{x,3},{x,1}}.
    {move,{x,2},{x,0}}.
    remove_message.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {move,{x,0},{y,3}}.
    {jump,{f,1059}}.
  {label,1056}.
    {test,bs_start_match3,{f,1057},1,[{x,0}],{x,0}}.
    {test,bs_get_integer2,
          {f,1057},
          1,
          [{x,0},
           {integer,8},
           1,
           {field_flags,[{anno,[1691,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_get_integer2,
          {f,1057},
          2,
          [{x,0},
           {x,1},
           1,
           {field_flags,[{anno,[1691,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_get_integer2,
          {f,1057},
          2,
          [{x,0},
           {integer,64},
           1,
           {field_flags,[{anno,[1691,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1057},[{x,0},0]}.
    {test_heap,3,3}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    remove_message.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {move,{x,0},{y,3}}.
    {jump,{f,1059}}.
  {label,1057}.
    {loop_rec_end,{f,1055}}.
  {label,1058}.
    {wait,{f,1055}}.
  {label,1059}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{y,4},{x,1}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1694}]}.
    send.
  {label,1060}.
    {loop_rec,{f,1064},{x,0}}.
    {test,bs_start_match3,{f,1061},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,1061},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[1696,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1061},
          3,
          [{x,1},
           {x,2},
           1,
           {field_flags,[{anno,[1696,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,1061},
          4,
          [{x,1},
           {integer,32},
           1,
           {field_flags,[{anno,[1696,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,1061},[{x,1},0]}.
    {test_heap,3,5}.
    {move,{x,3},{x,1}}.
    {move,{x,2},{x,0}}.
    {move,{x,4},{x,2}}.
    remove_message.
    {put_tuple2,{x,3},{list,[{x,1},{x,2}]}}.
    {swap,{x,0},{x,1}}.
    {swap,{x,2},{x,0}}.
    {jump,{f,1062}}.
  {label,1061}.
    {test,bs_start_match3,{f,1063},1,[{x,0}],{x,0}}.
    {test,bs_get_integer2,
          {f,1063},
          1,
          [{x,0},
           {integer,8},
           1,
           {field_flags,[{anno,[1697,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_get_integer2,
          {f,1063},
          2,
          [{x,0},
           {x,1},
           1,
           {field_flags,[{anno,[1697,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1063},
          3,
          [{x,0},
           {integer,64},
           1,
           {field_flags,[{anno,[1697,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1063},[{x,0},0]}.
    {test_heap,3,4}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {move,{x,3},{x,2}}.
    remove_message.
    {put_tuple2,{x,3},{list,[{x,1},{x,2}]}}.
    {swap,{x,0},{x,1}}.
    {swap,{x,2},{x,0}}.
  {label,1062}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
    {move,{x,3},{x,0}}.
    {jump,{f,1065}}.
  {label,1063}.
    {loop_rec_end,{f,1060}}.
  {label,1064}.
    {wait,{f,1060}}.
  {label,1065}.
    {test,is_eq_exact,{f,1073},[{x,0},{y,3}]}.
    {test_heap,5,0}.
    {bif,self,{f,0},[],{x,0}}.
    {put_list,{y,4},nil,{x,1}}.
    {put_tuple2,{x,1},{list,[{atom,tag},{x,1}]}}.
    {init,{y,4}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1699}]}.
    send.
  {label,1066}.
    {loop_rec,{f,1070},{x,0}}.
    {test,is_tagged_tuple,{f,1069},[{x,0},2,{atom,tag}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_eq_exact,{f,1069},[{x,1},{atom,tag}]}.
    {test,is_nonempty_list,{f,1069},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_nil,{f,1069},[{x,0}]}.
    {test,bs_start_match3,{f,1067},2,[{x,1}],{x,0}}.
    {test,bs_get_integer2,
          {f,1067},
          2,
          [{x,0},
           {integer,8},
           1,
           {field_flags,[{anno,[1701,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1067},
          3,
          [{x,0},
           {x,2},
           1,
           {field_flags,[{anno,[1701,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,1067},
          4,
          [{x,0},
           {integer,32},
           1,
           {field_flags,[{anno,[1701,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,1067},[{x,0},0]}.
    {test,is_eq_exact,{f,1067},[{x,2},{y,1}]}.
    {test,is_eq_exact,{f,1067},[{x,3},{y,0}]}.
    {test,is_ne_exact,{f,1068},[{x,4},{y,2}]}.
  {label,1067}.
    {test,bs_start_match3,{f,1069},2,[{x,1}],{x,0}}.
    {test,bs_get_integer2,
          {f,1069},
          1,
          [{x,0},
           {integer,8},
           1,
           {field_flags,[{anno,[1702,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_get_integer2,
          {f,1069},
          2,
          [{x,0},
           {x,1},
           1,
           {field_flags,[{anno,[1702,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1069},
          3,
          [{x,0},
           {integer,64},
           1,
           {field_flags,[{anno,[1702,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1069},[{x,0},0]}.
    {test,is_eq_exact,{f,1069},[{x,1},{y,1}]}.
    {test,is_eq_exact,{f,1069},[{x,2},{y,0}]}.
    {test,is_eq_exact,{f,1069},[{x,3},{y,2}]}.
  {label,1068}.
    {test_heap,3,0}.
    remove_message.
    {put_tuple2,{x,0},{list,[{y,0},{y,2}]}}.
    {jump,{f,1071}}.
  {label,1069}.
    {loop_rec_end,{f,1066}}.
  {label,1070}.
    {wait,{f,1066}}.
  {label,1071}.
    {test,is_eq_exact,{f,1072},[{x,0},{y,3}]}.
    {deallocate,5}.
    return.
  {label,1072}.
    {line,[{location,"bs_match_r23_SUITE.erl",1700}]}.
    {badmatch,{x,0}}.
  {label,1073}.
    {line,[{location,"bs_match_r23_SUITE.erl",1695}]}.
    {badmatch,{x,0}}.


{function, mos_int_fun, 1, 1075}.
  {label,1074}.
    {line,[{location,"bs_match_r23_SUITE.erl",1706}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,mos_int_fun},1}.
  {label,1075}.
    {test,is_nonempty_list,{f,1077},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_nil,{f,1077},[{x,2}]}.
    {test,bs_start_match3,{f,1076},2,[{x,1}],{x,2}}.
    {test,bs_get_integer2,
          {f,1076},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[1708,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,1076},
          4,
          [{x,2},
           {x,3},
           1,
           {field_flags,[{anno,[1708,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,1076},
          4,
          [{x,2},
           {integer,32},
           1,
           {field_flags,[{anno,[1708,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,1076},[{x,2},0]}.
    {test_heap,3,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4}]}}.
    return.
  {label,1076}.
    {test,bs_start_match3,{f,1077},2,[{x,1}],{x,1}}.
    {test,bs_get_integer2,
          {f,1077},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[1709,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1077},
          3,
          [{x,1},
           {x,2},
           1,
           {field_flags,[{anno,[1709,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1077},
          3,
          [{x,1},
           {integer,64},
           1,
           {field_flags,[{anno,[1709,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1077},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,1077}.
    {call_only,1,{f,2263}}. % '-mos_int_fun/1-inlined-0-'/1


{function, mos_int_exported, 1, 1079}.
  {label,1078}.
    {line,[{location,"bs_match_r23_SUITE.erl",1713}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,mos_int_exported},1}.
  {label,1079}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1082},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_integer2,
          {f,1080},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[1715,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1080},
          3,
          [{x,1},
           {x,2},
           1,
           {field_flags,[{anno,[1715,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1080},
          3,
          [{x,1},
           {integer,32},
           1,
           {field_flags,[{anno,[1715,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1080},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,1080}.
    {bs_set_position,{x,1},{x,0}}.
    {test,bs_get_integer2,
          {f,1081},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[1716,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1081},
          3,
          [{x,1},
           {x,2},
           1,
           {field_flags,[{anno,[1716,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1081},
          3,
          [{x,1},
           {integer,64},
           1,
           {field_flags,[{anno,[1716,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1081},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,1081}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_r23_SUITE.erl",1714}]}.
    {case_end,{x,0}}.
  {label,1082}.
    {test,bs_start_match3,{f,1083},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,1083},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[1716,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1083},
          3,
          [{x,1},
           {x,2},
           1,
           {field_flags,[{anno,[1716,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1083},
          3,
          [{x,1},
           {integer,64},
           1,
           {field_flags,[{anno,[1716,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1083},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,1083}.
    {case_end,{x,0}}.


{function, mos_int_utf, 1, 1085}.
  {label,1084}.
    {line,[{location,"bs_match_r23_SUITE.erl",1720}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,mos_int_utf},1}.
  {label,1085}.
    {line,[{location,"bs_match_r23_SUITE.erl",1721}]}.
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{integer,8},8],{x,1}}.
    {bs_append,{f,0},{x,1},0,2,1,{x,0},{field_flags,[]},{x,1}}.
    {bs_put_string,8,{string,<<204,137,30,97,0,0,39,15>>}}.
    {move,{x,1},{x,0}}.
    {allocate,0,1}.
    {call,1,{f,1968}}. % id/1
    {test,bs_start_match3,{f,1086},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,1086},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[1723,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1086},
          3,
          [{x,1},
           {x,2},
           1,
           {field_flags,[{anno,[1723,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1086},
          3,
          [{x,1},
           {integer,32},
           1,
           {field_flags,[{anno,[1723,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_match_string,{f,1086},[{x,1},16,{string,<<204,137>>}]}.
    {test,bs_get_utf16,
          {f,1086},
          4,
          [{x,1},
           {field_flags,[{anno,[1723,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,is_eq_exact,{f,1086},[{x,4},{integer,7777}]}.
    {test,bs_get_utf32,
          {f,1086},
          4,
          [{x,1},
           {field_flags,[{anno,[1723,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,is_eq_exact,{f,1086},[{x,4},{integer,9999}]}.
    {test,bs_test_tail2,{f,1086},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    {deallocate,0}.
    return.
  {label,1086}.
    {test,bs_start_match3,{f,1087},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,1087},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[1724,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1087},
          3,
          [{x,1},
           {x,2},
           1,
           {field_flags,[{anno,[1724,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1087},
          3,
          [{x,1},
           {integer,64},
           1,
           {field_flags,[{anno,[1724,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_match_string,{f,1087},[{x,1},16,{string,<<204,137>>}]}.
    {test,bs_get_utf16,
          {f,1087},
          4,
          [{x,1},
           {field_flags,[{anno,[1724,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,is_eq_exact,{f,1087},[{x,4},{integer,7777}]}.
    {test,bs_get_utf32,
          {f,1087},
          4,
          [{x,1},
           {field_flags,[{anno,[1724,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,is_eq_exact,{f,1087},[{x,4},{integer,9999}]}.
    {test,bs_test_tail2,{f,1087},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    {deallocate,0}.
    return.
  {label,1087}.
    {line,[{location,"bs_match_r23_SUITE.erl",1722}]}.
    {case_end,{x,0}}.


{function, mos_bin, 1, 1089}.
  {label,1088}.
    {line,[{location,"bs_match_r23_SUITE.erl",1727}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,mos_bin},1}.
  {label,1089}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1728}]}.
    {call,1,{f,1092}}. % mos_bin_plain/1
    {test_heap,6,1}.
    {put_tuple2,{x,1},{list,[{atom,inner},{y,0}]}}.
    {put_tuple2,{x,1},{list,[{atom,outer},{x,1}]}}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1729}]}.
    {call,1,{f,1104}}. % mos_bin_tuple/1
    {test,is_eq_exact,{f,1090},[{x,0},{y,0}]}.
    {deallocate,1}.
    return.
  {label,1090}.
    {badmatch,{x,0}}.


{function, mos_bin_plain, 1, 1092}.
  {label,1091}.
    {line,[{location,"bs_match_r23_SUITE.erl",1732}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,mos_bin_plain},1}.
  {label,1092}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1096},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_integer2,
          {f,1093},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[1732,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,1093},
          3,
          [{x,1},
           {x,2},
           8,
           {field_flags,[{anno,[1732,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,1093},
          4,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[1732,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_integer2,
          {f,1093},
          5,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[1732,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_test_tail2,{f,1093},[{x,1},0]}.
    {test,is_eq_exact,{f,1093},[{x,5},{x,2}]}.
    {line,[{location,"bs_match_r23_SUITE.erl",1733}]}.
    {gc_bif,byte_size,{f,0},5,[{x,3}],{x,0}}.
    {test,is_eq_exact,{f,1100},[{x,0},{x,2}]}.
    {test_heap,3,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4}]}}.
    return.
  {label,1093}.
    {bs_set_position,{x,1},{x,0}}.
    {test,bs_get_integer2,
          {f,1094},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[1735,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,1094},
          3,
          [{x,1},
           {x,2},
           8,
           {field_flags,[{anno,[1735,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,1094},
          4,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[1735,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_integer2,
          {f,1094},
          5,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[1735,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_get_integer2,
          {f,1094},
          6,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[1735,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,bs_test_tail2,{f,1094},[{x,1},0]}.
    {test,is_ne_exact,{f,1097},[{x,5},{x,2}]}.
  {label,1094}.
    {bs_set_position,{x,1},{x,0}}.
    {test,bs_get_integer2,
          {f,1095},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[1738,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,1095},
          3,
          [{x,1},
           {x,2},
           8,
           {field_flags,[{anno,[1738,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_match_string,{f,1095},[{x,1},80,{string,<<"abcdefghij">>}]}.
    {test,bs_test_tail2,{f,1095},[{x,1},0]}.
    {line,[{location,"bs_match_r23_SUITE.erl",1739}]}.
    {gc_bif,byte_size,{f,0},4,[{x,3}],{x,0}}.
    {test,is_eq_exact,{f,1102},[{x,0},{x,2}]}.
    {jump,{f,1099}}.
  {label,1095}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,1091}}.
  {label,1096}.
    {test,bs_start_match3,{f,1098},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,1098},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[1735,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,1098},
          3,
          [{x,1},
           {x,2},
           8,
           {field_flags,[{anno,[1735,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,1098},
          4,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[1735,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_integer2,
          {f,1098},
          5,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[1735,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_get_integer2,
          {f,1098},
          6,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[1735,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,bs_test_tail2,{f,1098},[{x,1},0]}.
    {test,is_eq_exact,{f,1098},[{x,5},{x,2}]}.
  {label,1097}.
    {line,[{location,"bs_match_r23_SUITE.erl",1736}]}.
    {gc_bif,byte_size,{f,0},7,[{x,3}],{x,0}}.
    {test,is_eq_exact,{f,1101},[{x,0},{x,2}]}.
    {test_heap,4,7}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4},{x,6}]}}.
    return.
  {label,1098}.
    {test,bs_start_match3,{f,1091},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,1091},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[1738,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,1091},
          3,
          [{x,1},
           {x,2},
           8,
           {field_flags,[{anno,[1738,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_match_string,{f,1091},[{x,1},80,{string,<<"abcdefghij">>}]}.
    {test,bs_test_tail2,{f,1091},[{x,1},0]}.
    {line,[{location,"bs_match_r23_SUITE.erl",1739}]}.
    {gc_bif,byte_size,{f,0},4,[{x,3}],{x,0}}.
    {test,is_eq_exact,{f,1102},[{x,0},{x,2}]}.
  {label,1099}.
    {move,{x,3},{x,0}}.
    return.
  {label,1100}.
    {line,[{location,"bs_match_r23_SUITE.erl",1733}]}.
    {badmatch,{x,0}}.
  {label,1101}.
    {line,[{location,"bs_match_r23_SUITE.erl",1736}]}.
    {badmatch,{x,0}}.
  {label,1102}.
    {line,[{location,"bs_match_r23_SUITE.erl",1739}]}.
    {badmatch,{x,0}}.


{function, mos_bin_tuple, 1, 1104}.
  {label,1103}.
    {line,[{location,"bs_match_r23_SUITE.erl",1742}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,mos_bin_tuple},1}.
  {label,1104}.
    {test,is_tagged_tuple,{f,1103},[{x,0},2,{atom,outer}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1103},[{x,1},{atom,outer}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1103},[{x,1},2,{atom,inner}]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,1103},[{x,2},{atom,inner}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,bs_start_match3,{f,1105},2,[{x,1}],{x,2}}.
    {test,bs_get_integer2,
          {f,1105},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[1742,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,1105},
          4,
          [{x,2},
           {x,3},
           8,
           {field_flags,[{anno,[1742,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_integer2,
          {f,1105},
          5,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[1742,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_get_integer2,
          {f,1105},
          6,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[1742,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,bs_test_tail2,{f,1105},[{x,2},0]}.
    {test,is_eq_exact,{f,1105},[{x,6},{x,3}]}.
    {line,[{location,"bs_match_r23_SUITE.erl",1743}]}.
    {gc_bif,byte_size,{f,0},6,[{x,4}],{x,0}}.
    {test,is_eq_exact,{f,1107},[{x,0},{x,3}]}.
    {test_heap,3,6}.
    {put_tuple2,{x,0},{list,[{x,4},{x,5}]}}.
    return.
  {label,1105}.
    {test,bs_start_match3,{f,1106},2,[{x,1}],{x,2}}.
    {test,bs_get_integer2,
          {f,1106},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[1745,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,1106},
          4,
          [{x,2},
           {x,3},
           8,
           {field_flags,[{anno,[1745,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_integer2,
          {f,1106},
          5,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[1745,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_get_integer2,
          {f,1106},
          6,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[1745,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,bs_get_integer2,
          {f,1106},
          7,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[1745,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,7}}.
    {test,bs_test_tail2,{f,1106},[{x,2},0]}.
    {test,is_eq_exact,{f,1106},[{x,6},{x,3}]}.
    {line,[{location,"bs_match_r23_SUITE.erl",1746}]}.
    {gc_bif,byte_size,{f,0},8,[{x,4}],{x,0}}.
    {test,is_eq_exact,{f,1108},[{x,0},{x,3}]}.
    {test_heap,4,8}.
    {put_tuple2,{x,0},{list,[{x,4},{x,5},{x,7}]}}.
    return.
  {label,1106}.
    {test,bs_start_match3,{f,1103},2,[{x,1}],{x,1}}.
    {test,bs_get_integer2,
          {f,1103},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[1748,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,1103},
          3,
          [{x,1},
           {x,2},
           8,
           {field_flags,[{anno,[1748,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_match_string,{f,1103},[{x,1},80,{string,<<"abcdefghij">>}]}.
    {test,bs_test_tail2,{f,1103},[{x,1},0]}.
    {line,[{location,"bs_match_r23_SUITE.erl",1749}]}.
    {gc_bif,byte_size,{f,0},4,[{x,3}],{x,0}}.
    {test,is_eq_exact,{f,1109},[{x,0},{x,2}]}.
    {move,{x,3},{x,0}}.
    return.
  {label,1107}.
    {line,[{location,"bs_match_r23_SUITE.erl",1743}]}.
    {badmatch,{x,0}}.
  {label,1108}.
    {line,[{location,"bs_match_r23_SUITE.erl",1746}]}.
    {badmatch,{x,0}}.
  {label,1109}.
    {line,[{location,"bs_match_r23_SUITE.erl",1749}]}.
    {badmatch,{x,0}}.


{function, mos_verify_sig, 1, 1111}.
  {label,1110}.
    {line,[{location,"bs_match_r23_SUITE.erl",1752}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,mos_verify_sig},1}.
  {label,1111}.
    {test,bs_start_match3,{f,1112},1,[{x,0}],{x,0}}.
    {test,bs_get_integer2,
          {f,1112},
          1,
          [{x,0},
           {integer,32},
           1,
           {field_flags,[{anno,[1754,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_skip_bits2,
          {f,1112},
          [{x,0},
           {x,1},
           8,
           {field_flags,[{anno,[1754,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_integer2,
          {f,1112},
          1,
          [{x,0},
           {integer,32},
           1,
           {field_flags,[{anno,[1754,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_get_binary2,
          {f,1112},
          2,
          [{x,0},
           {x,1},
           8,
           {field_flags,[{anno,[1754,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_test_tail2,{f,1112},[{x,0},0]}.
    {move,{x,1},{x,0}}.
    return.
  {label,1112}.
    {move,{atom,false},{x,0}}.
    return.


{function, follow_fail_branch, 1, 1114}.
  {label,1113}.
    {line,[{location,"bs_match_r23_SUITE.erl",1762}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,follow_fail_branch},1}.
  {label,1114}.
    {allocate,0,0}.
    {move,{literal,<<0>>},{x,1}}.
    {move,{literal,<<0,1>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1763}]}.
    {call,2,{f,1120}}. % ffb_1/2
    {test,is_eq_exact,{f,1118},[{x,0},{integer,42}]}.
    {move,{literal,[a]},{x,1}}.
    {move,{literal,<<0,1>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1764}]}.
    {call,2,{f,1120}}. % ffb_1/2
    {test,is_eq_exact,{f,1117},[{x,0},{integer,8}]}.
    {move,{literal,<<0>>},{x,1}}.
    {move,{integer,17},{x,2}}.
    {move,{literal,<<0,1>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1765}]}.
    {call,3,{f,1125}}. % ffb_2/3
    {test,is_eq_exact,{f,1116},[{x,0},{integer,42}]}.
    {move,{literal,[a]},{x,1}}.
    {move,{integer,0},{x,2}}.
    {move,{literal,<<0,1>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1766}]}.
    {call,3,{f,1125}}. % ffb_2/3
    {test,is_eq_exact,{f,1115},[{x,0},{integer,8}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1115}.
    {badmatch,{x,0}}.
  {label,1116}.
    {line,[{location,"bs_match_r23_SUITE.erl",1765}]}.
    {badmatch,{x,0}}.
  {label,1117}.
    {line,[{location,"bs_match_r23_SUITE.erl",1764}]}.
    {badmatch,{x,0}}.
  {label,1118}.
    {line,[{location,"bs_match_r23_SUITE.erl",1763}]}.
    {badmatch,{x,0}}.


{function, ffb_1, 2, 1120}.
  {label,1119}.
    {line,[{location,"bs_match_r23_SUITE.erl",1769}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,ffb_1},2}.
  {label,1120}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1119},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_skip_bits2,
          {f,1122},
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[1769,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,1122},
          3,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[1769,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_start_match3,{f,1121},4,[{x,1}],{x,0}}.
    {test,bs_test_tail2,{f,1123},[{x,0},8]}.
    {move,{integer,42},{x,0}}.
    return.
  {label,1121}.
    {test,is_nonempty_list,{f,1123},[{x,1}]}.
    {line,[{location,"bs_match_r23_SUITE.erl",1778}]}.
    {gc_bif,bit_size,{f,0},4,[{x,3}],{x,0}}.
    return.
  {label,1122}.
    {bs_set_position,{x,2},{x,0}}.
    {bs_get_tail,{x,2},{x,0},3}.
    {jump,{f,1119}}.
  {label,1123}.
    {line,[{location,"bs_match_r23_SUITE.erl",1770}]}.
    {case_end,{x,1}}.


{function, ffb_2, 3, 1125}.
  {label,1124}.
    {line,[{location,"bs_match_r23_SUITE.erl",1781}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,ffb_2},3}.
  {label,1125}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1124},3,[{x,0}],{x,3}}.
    {bs_get_position,{x,3},{x,0},4}.
    {test,bs_skip_bits2,
          {f,1127},
          [{x,3},
           {integer,8},
           1,
           {field_flags,[{anno,[1781,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,1127},
          4,
          [{x,3},
           {atom,all},
           1,
           {field_flags,[{anno,[1781,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_start_match3,{f,1126},5,[{x,1}],{x,0}}.
    {test,bs_test_tail2,{f,1128},[{x,0},8]}.
    {test,is_eq_exact,{f,1128},[{x,2},{integer,17}]}.
    {move,{integer,42},{x,0}}.
    return.
  {label,1126}.
    {test,is_nonempty_list,{f,1128},[{x,1}]}.
    {line,[{location,"bs_match_r23_SUITE.erl",1784}]}.
    {gc_bif,bit_size,{f,0},5,[{x,4}],{x,0}}.
    return.
  {label,1127}.
    {bs_set_position,{x,3},{x,0}}.
    {bs_get_tail,{x,3},{x,0},4}.
    {jump,{f,1124}}.
  {label,1128}.
    {line,[{location,"bs_match_r23_SUITE.erl",1782}]}.
    {case_end,{x,1}}.


{function, no_partition, 1, 1130}.
  {label,1129}.
    {line,[{location,"bs_match_r23_SUITE.erl",1787}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,no_partition},1}.
  {label,1130}.
    {allocate,0,0}.
    {move,{atom,a1},{x,1}}.
    {move,{literal,<<"string">>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1788}]}.
    {call,2,{f,1147}}. % no_partition_1/2
    {test,is_eq_exact,{f,1145},[{x,0},{atom,one}]}.
    {move,{atom,a2},{x,1}}.
    {move,{literal,<<"string">>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1789}]}.
    {call,2,{f,1147}}. % no_partition_1/2
    {test,is_eq_exact,{f,1144},[{x,0},{literal,{two,<<"string">>}}]}.
    {move,{atom,a2},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1790}]}.
    {call,2,{f,1147}}. % no_partition_1/2
    {test,is_eq_exact,{f,1143},[{x,0},{literal,{two,<<>>}}]}.
    {move,{atom,a2},{x,1}}.
    {move,{atom,a},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1791}]}.
    {call,2,{f,1147}}. % no_partition_1/2
    {test,is_eq_exact,{f,1142},[{x,0},{literal,{two,a}}]}.
    {move,{atom,a3},{x,1}}.
    {move,{atom,undefined},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1792}]}.
    {call,2,{f,1147}}. % no_partition_1/2
    {test,is_eq_exact,{f,1141},[{x,0},{atom,three}]}.
    {move,{atom,a4},{x,1}}.
    {move,{literal,[a]},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1793}]}.
    {call,2,{f,1147}}. % no_partition_1/2
    {test,is_eq_exact,{f,1140},[{x,0},{literal,{four,a,[]}}]}.
    {move,{atom,a5},{x,1}}.
    {move,{literal,{a,b}},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1794}]}.
    {call,2,{f,1147}}. % no_partition_1/2
    {test,is_eq_exact,{f,1139},[{x,0},{literal,{five,a,b}}]}.
    {move,{atom,a1},{x,1}}.
    {move,{literal,<<"string">>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1796}]}.
    {call,2,{f,1155}}. % no_partition_2/2
    {test,is_eq_exact,{f,1138},[{x,0},{atom,one}]}.
    {move,{atom,a2},{x,1}}.
    {move,{literal,<<"string">>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1797}]}.
    {call,2,{f,1155}}. % no_partition_2/2
    {test,is_eq_exact,{f,1137},[{x,0},{atom,two}]}.
    {move,{atom,a2},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1798}]}.
    {call,2,{f,1155}}. % no_partition_2/2
    {test,is_eq_exact,{f,1136},[{x,0},{atom,two}]}.
    {move,{atom,a2},{x,1}}.
    {move,{atom,a},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1799}]}.
    {call,2,{f,1155}}. % no_partition_2/2
    {test,is_eq_exact,{f,1135},[{x,0},{atom,two}]}.
    {move,{atom,a3},{x,1}}.
    {move,{atom,undefined},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1800}]}.
    {call,2,{f,1155}}. % no_partition_2/2
    {test,is_eq_exact,{f,1134},[{x,0},{atom,three}]}.
    {move,{atom,a4},{x,1}}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1801}]}.
    {call,2,{f,1155}}. % no_partition_2/2
    {test,is_eq_exact,{f,1133},[{x,0},{atom,four}]}.
    {move,{atom,a5},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1802}]}.
    {call,2,{f,1155}}. % no_partition_2/2
    {test,is_eq_exact,{f,1132},[{x,0},{atom,five}]}.
    {move,{atom,a6},{x,1}}.
    {move,{float,42.0},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1803}]}.
    {call,2,{f,1155}}. % no_partition_2/2
    {test,is_eq_exact,{f,1131},[{x,0},{atom,six}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1131}.
    {badmatch,{x,0}}.
  {label,1132}.
    {line,[{location,"bs_match_r23_SUITE.erl",1802}]}.
    {badmatch,{x,0}}.
  {label,1133}.
    {line,[{location,"bs_match_r23_SUITE.erl",1801}]}.
    {badmatch,{x,0}}.
  {label,1134}.
    {line,[{location,"bs_match_r23_SUITE.erl",1800}]}.
    {badmatch,{x,0}}.
  {label,1135}.
    {line,[{location,"bs_match_r23_SUITE.erl",1799}]}.
    {badmatch,{x,0}}.
  {label,1136}.
    {line,[{location,"bs_match_r23_SUITE.erl",1798}]}.
    {badmatch,{x,0}}.
  {label,1137}.
    {line,[{location,"bs_match_r23_SUITE.erl",1797}]}.
    {badmatch,{x,0}}.
  {label,1138}.
    {line,[{location,"bs_match_r23_SUITE.erl",1796}]}.
    {badmatch,{x,0}}.
  {label,1139}.
    {line,[{location,"bs_match_r23_SUITE.erl",1794}]}.
    {badmatch,{x,0}}.
  {label,1140}.
    {line,[{location,"bs_match_r23_SUITE.erl",1793}]}.
    {badmatch,{x,0}}.
  {label,1141}.
    {line,[{location,"bs_match_r23_SUITE.erl",1792}]}.
    {badmatch,{x,0}}.
  {label,1142}.
    {line,[{location,"bs_match_r23_SUITE.erl",1791}]}.
    {badmatch,{x,0}}.
  {label,1143}.
    {line,[{location,"bs_match_r23_SUITE.erl",1790}]}.
    {badmatch,{x,0}}.
  {label,1144}.
    {line,[{location,"bs_match_r23_SUITE.erl",1789}]}.
    {badmatch,{x,0}}.
  {label,1145}.
    {line,[{location,"bs_match_r23_SUITE.erl",1788}]}.
    {badmatch,{x,0}}.


{function, no_partition_1, 2, 1147}.
  {label,1146}.
    {line,[{location,"bs_match_r23_SUITE.erl",1806}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,no_partition_1},2}.
  {label,1147}.
    {test,is_eq_exact,{f,1149},[{x,0},{literal,<<"string">>}]}.
    {select_val,{x,1},{f,1151},{list,[{atom,a1},{f,1148},{atom,a2},{f,1150}]}}.
  {label,1148}.
    {move,{atom,one},{x,0}}.
    return.
  {label,1149}.
    {test,is_eq_exact,{f,1151},[{x,1},{atom,a2}]}.
  {label,1150}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,two},{x,0}]}}.
    return.
  {label,1151}.
    {test,is_nonempty_list,{f,1152},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,3}}.
    {test,is_eq_exact,{f,1146},[{x,1},{atom,a4}]}.
    {test_heap,4,4}.
    {put_tuple2,{x,0},{list,[{atom,four},{x,2},{x,3}]}}.
    return.
  {label,1152}.
    {test,is_tuple,{f,1153},[{x,0}]}.
    {test,test_arity,{f,1146},[{x,0},2]}.
    {test,is_eq_exact,{f,1146},[{x,1},{atom,a5}]}.
    {test_heap,4,1}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,five},{x,1},{x,0}]}}.
    return.
  {label,1153}.
    {test,is_eq_exact,{f,1146},[{x,0},{atom,undefined}]}.
    {test,is_eq_exact,{f,1146},[{x,1},{atom,a3}]}.
    {move,{atom,three},{x,0}}.
    return.


{function, no_partition_2, 2, 1155}.
  {label,1154}.
    {line,[{location,"bs_match_r23_SUITE.erl",1817}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,no_partition_2},2}.
  {label,1155}.
    {test,is_eq_exact,{f,1157},[{x,0},{literal,<<"string">>}]}.
    {select_val,{x,1},{f,1159},{list,[{atom,a1},{f,1156},{atom,a2},{f,1158}]}}.
  {label,1156}.
    {move,{atom,one},{x,0}}.
    return.
  {label,1157}.
    {test,is_eq_exact,{f,1159},[{x,1},{atom,a2}]}.
  {label,1158}.
    {move,{atom,two},{x,0}}.
    return.
  {label,1159}.
    {test,is_atom,{f,1160},[{x,0}]}.
    {test,is_eq_exact,{f,1154},[{x,0},{atom,undefined}]}.
    {test,is_eq_exact,{f,1154},[{x,1},{atom,a3}]}.
    {move,{atom,three},{x,0}}.
    return.
  {label,1160}.
    {test,is_float,{f,1161},[{x,0}]}.
    {test,is_eq_exact,{f,1154},[{x,0},{float,42.0}]}.
    {test,is_eq_exact,{f,1154},[{x,1},{atom,a6}]}.
    {move,{atom,six},{x,0}}.
    return.
  {label,1161}.
    {test,is_integer,{f,1162},[{x,0}]}.
    {test,is_eq_exact,{f,1154},[{x,0},{integer,42}]}.
    {test,is_eq_exact,{f,1154},[{x,1},{atom,a4}]}.
    {move,{atom,four},{x,0}}.
    return.
  {label,1162}.
    {test,is_nil,{f,1154},[{x,0}]}.
    {test,is_eq_exact,{f,1154},[{x,1},{atom,a5}]}.
    {move,{atom,five},{x,0}}.
    return.


{function, calling_a_binary, 1, 1164}.
  {label,1163}.
    {line,[{location,"bs_match_r23_SUITE.erl",1830}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,calling_a_binary},1}.
  {label,1164}.
    {test,is_list,{f,1163},[{x,0}]}.
    {allocate_zero,2,0}.
    {move,nil,{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1831}]}.
    {call,2,{f,1171}}. % call_binary/2
    {test,is_nil,{f,1169},[{x,0}]}.
    {'catch',{y,1},{f,1165}}.
    {move,nil,{x,1}}.
    {move,{literal,<<1>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",1832}]}.
    {call,2,{f,1171}}. % call_binary/2
  {label,1165}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,1168},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1168},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1168},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1168},[{x,1},{atom,badarg}]}.
    {'catch',{y,0},{f,1166}}.
    {move,nil,{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",1833}]}.
    {call,2,{f,1171}}. % call_binary/2
  {label,1166}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1167},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1167},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1167},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1167},[{x,1},{atom,badarg}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,1167}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",1833}]}.
    {badmatch,{x,0}}.
  {label,1168}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",1832}]}.
    {badmatch,{x,0}}.
  {label,1169}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",1831}]}.
    {badmatch,{x,0}}.


{function, call_binary, 2, 1171}.
  {label,1170}.
    {line,[{location,"bs_match_r23_SUITE.erl",1836}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,call_binary},2}.
  {label,1171}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1170},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_test_tail2,{f,1172},[{x,2},0]}.
    {move,{x,1},{x,0}}.
    return.
  {label,1172}.
    {test,bs_get_integer2,
          {f,1173},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[1838,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,1173},
          4,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[1838,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1839}]}.
    {move,{integer,0},{x,5}}.
    {bs_add,{f,0},[{x,5},{integer,1},8],{x,5}}.
    {bs_append,{f,0},{x,5},0,6,8,{x,1},{field_flags,[]},{x,5}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,3}}.
    {move,{x,5},{x,0}}.
    {allocate,0,5}.
    {move,{x,4},{x,1}}.
    {call_fun,1}.
    {deallocate,0}.
    return.
  {label,1173}.
    {bs_set_position,{x,2},{x,0}}.
    {bs_get_tail,{x,2},{x,0},3}.
    {jump,{f,1170}}.


{function, binary_in_map, 1, 1175}.
  {label,1174}.
    {line,[{location,"bs_match_r23_SUITE.erl",1841}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,binary_in_map},1}.
  {label,1175}.
    {test,is_list,{f,1174},[{x,0}]}.
    {allocate_zero,4,0}.
    {move,{literal,#{key => <<"*">>}},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1842}]}.
    {call,1,{f,1186}}. % match_binary_in_map/1
    {test,is_eq_exact,{f,1184},[{x,0},{atom,ok}]}.
    {'catch',{y,3},{f,1176}}.
    {move,{literal,#{key => 1}},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_r23_SUITE.erl",1844}]}.
    {call,1,{f,1186}}. % match_binary_in_map/1
  {label,1176}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,1183},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1183},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1183},[{x,1}]}.
    {test,test_arity,{f,1183},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,1183},[{x,1},2,{atom,badmatch}]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,1183},[{x,2},{atom,badmatch}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_map,{f,1183},[{x,1}]}.
    {get_map_elements,{f,1183},{x,1},{list,[{atom,key},{x,1}]}}.
    {test,is_eq_exact,{f,1183},[{x,1},{integer,1}]}.
    {'catch',{y,2},{f,1177}}.
    {move,{literal,#{key => <<3,255>>}},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",1846}]}.
    {call,1,{f,1186}}. % match_binary_in_map/1
  {label,1177}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,1182},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1182},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1182},[{x,1}]}.
    {test,test_arity,{f,1182},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,1182},[{x,1},2,{atom,badmatch}]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,1182},[{x,2},{atom,badmatch}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_map,{f,1182},[{x,1}]}.
    {get_map_elements,{f,1182},{x,1},{list,[{atom,key},{x,1}]}}.
    {test,is_eq_exact,{f,1182},[{x,1},{literal,<<3,255>>}]}.
    {'catch',{y,1},{f,1178}}.
    {move,{literal,#{key => <<1>>}},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",1848}]}.
    {call,1,{f,1186}}. % match_binary_in_map/1
  {label,1178}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,1181},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1181},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1181},[{x,1}]}.
    {test,test_arity,{f,1181},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,1181},[{x,1},2,{atom,badmatch}]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,1181},[{x,2},{atom,badmatch}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_map,{f,1181},[{x,1}]}.
    {get_map_elements,{f,1181},{x,1},{list,[{atom,key},{x,1}]}}.
    {test,is_eq_exact,{f,1181},[{x,1},{literal,<<1>>}]}.
    {'catch',{y,0},{f,1179}}.
    {move,{atom,not_a_map},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",1850}]}.
    {call,1,{f,1186}}. % match_binary_in_map/1
  {label,1179}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1180},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1180},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1180},[{x,1}]}.
    {test,test_arity,{f,1180},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1180},[{x,1},{literal,{badmatch,not_a_map}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,4}.
    return.
  {label,1180}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",1849}]}.
    {badmatch,{x,0}}.
  {label,1181}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",1847}]}.
    {badmatch,{x,0}}.
  {label,1182}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",1845}]}.
    {badmatch,{x,0}}.
  {label,1183}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",1843}]}.
    {badmatch,{x,0}}.
  {label,1184}.
    {line,[{scope,"\b"},{location,"bs_match_r23_SUITE.erl",1842}]}.
    {badmatch,{x,0}}.


{function, match_binary_in_map, 1, 1186}.
  {label,1185}.
    {line,[{location,"bs_match_r23_SUITE.erl",1853}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,match_binary_in_map},1}.
  {label,1186}.
    {test,is_map,{f,1187},[{x,0}]}.
    {get_map_elements,{f,1187},{x,0},{list,[{atom,key},{x,1}]}}.
    {test,is_eq_exact,{f,1187},[{x,1},{literal,<<"*">>}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1187}.
    {line,[{location,"bs_match_r23_SUITE.erl",1856}]}.
    {badmatch,{x,0}}.


{function, match_string_opt, 1, 1189}.
  {label,1188}.
    {line,[{location,"bs_match_r23_SUITE.erl",1860}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,match_string_opt},1}.
  {label,1189}.
    {test,is_list,{f,1188},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,{<<1>>,{v,<<1,2,3>>}}},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1862}]}.
    {call,1,{f,1192}}. % do_match_string_opt/1
    {test,is_eq_exact,
          {f,1190},
          [{x,0},{literal,{x,<<1,2,3>>,{<<1>>,{v,<<1,2,3>>}}}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1190}.
    {line,[{location,"bs_match_r23_SUITE.erl",1861}]}.
    {badmatch,{x,0}}.


{function, do_match_string_opt, 1, 1192}.
  {label,1191}.
    {line,[{location,"bs_match_r23_SUITE.erl",1865}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,do_match_string_opt},1}.
  {label,1192}.
    {test,is_tuple,{f,1191},[{x,0}]}.
    {test,test_arity,{f,1191},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1191},[{x,1},{literal,<<1>>}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1191},[{x,1},2,{atom,v}]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,1191},[{x,2},{atom,v}]}.
    {test_heap,4,2}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {put_tuple2,{x,0},{list,[{atom,x},{x,1},{x,0}]}}.
    return.


{function, select_on_integer, 1, 1194}.
  {label,1193}.
    {line,[{location,"bs_match_r23_SUITE.erl",1868}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,select_on_integer},1}.
  {label,1194}.
    {test,is_list,{f,1193},[{x,0}]}.
    {allocate_zero,3,0}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1869}]}.
    {call,1,{f,1204}}. % do_select_on_integer/1
    {test,is_eq_exact,{f,1202},[{x,0},{integer,42}]}.
    {move,{literal,<<128,97,98,99>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",1870}]}.
    {call,1,{f,1204}}. % do_select_on_integer/1
    {test,is_eq_exact,{f,1201},[{x,0},{literal,<<"abc">>}]}.
    {'catch',{y,2},{f,1195}}.
    {move,{literal,<<0:1>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",1872}]}.
    {call,1,{f,1204}}. % do_select_on_integer/1
  {label,1195}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,1200},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1200},[{x,1},{atom,'EXIT'}]}.
    {'catch',{y,1},{f,1196}}.
    {move,{literal,<<1:1>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",1873}]}.
    {call,1,{f,1204}}. % do_select_on_integer/1
  {label,1196}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,1199},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1199},[{x,1},{atom,'EXIT'}]}.
    {'catch',{y,0},{f,1197}}.
    {move,{literal,<<0,0>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",1874}]}.
    {call,1,{f,1204}}. % do_select_on_integer/1
  {label,1197}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1198},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1198},[{x,1},{atom,'EXIT'}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,3}.
    return.
  {label,1198}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",1874}]}.
    {badmatch,{x,0}}.
  {label,1199}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",1873}]}.
    {badmatch,{x,0}}.
  {label,1200}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",1872}]}.
    {badmatch,{x,0}}.
  {label,1201}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",1870}]}.
    {badmatch,{x,0}}.
  {label,1202}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",1869}]}.
    {badmatch,{x,0}}.


{function, do_select_on_integer, 1, 1204}.
  {label,1203}.
    {line,[{location,"bs_match_r23_SUITE.erl",1878}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,do_select_on_integer},1}.
  {label,1204}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1203},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_integer2,
          {f,1207},
          2,
          [{x,1},
           {integer,1},
           1,
           {field_flags,[{anno,[1878,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {select_val,{x,2},
                {f,1207},
                {list,[{integer,0},{f,1206},{integer,1},{f,1205}]}}.
  {label,1205}.
    {test,bs_skip_bits2,
          {f,1207},
          [{x,1},
           {integer,7},
           1,
           {field_flags,[{anno,[1880,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,1207},
          2,
          [{x,1},
           {atom,all},
           8,
           {field_flags,[{anno,[1880,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {move,{x,2},{x,0}}.
    return.
  {label,1206}.
    {test,bs_get_integer2,
          {f,1207},
          2,
          [{x,1},
           {integer,7},
           1,
           {field_flags,[{anno,[1878,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1207},[{x,1},0]}.
    {move,{x,2},{x,0}}.
    return.
  {label,1207}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,1203}}.


{function, map_and_binary, 1, 1209}.
  {label,1208}.
    {line,[{location,"bs_match_r23_SUITE.erl",1886}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,map_and_binary},1}.
  {label,1209}.
    {allocate,0,0}.
    {move,{literal,<<"10:37am">>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1887}]}.
    {call,1,{f,1214}}. % do_map_and_binary/1
    {test,is_eq_exact,{f,1212},[{x,0},{literal,{<<"10">>,<<"37">>,<<"am">>}}]}.
    {move,{literal,#{time => "noon"}},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1889}]}.
    {call,1,{f,1214}}. % do_map_and_binary/1
    {test,is_tagged_tuple,{f,1211},[{x,0},2,{atom,ok}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1211},[{x,1},{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,1211},[{x,1},{literal,#{time => "noon"}}]}.
    {move,{literal,#{hour => 8,min => 42}},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1891}]}.
    {call,1,{f,1214}}. % do_map_and_binary/1
    {test,is_tuple,{f,1210},[{x,0}]}.
    {test,test_arity,{f,1210},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1210},[{x,1},{integer,8}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,1210},[{x,1},{integer,42}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,{f,1210},[{x,1},{literal,#{hour => 8,min => 42}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1210}.
    {badmatch,{x,0}}.
  {label,1211}.
    {line,[{location,"bs_match_r23_SUITE.erl",1889}]}.
    {badmatch,{x,0}}.
  {label,1212}.
    {line,[{location,"bs_match_r23_SUITE.erl",1887}]}.
    {badmatch,{x,0}}.


{function, do_map_and_binary, 1, 1214}.
  {label,1213}.
    {line,[{location,"bs_match_r23_SUITE.erl",1894}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,do_map_and_binary},1}.
  {label,1214}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1216},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_binary2,
          {f,1215},
          2,
          [{x,1},
           {integer,2},
           8,
           {field_flags,[{anno,[1894,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_match_string,{f,1215},[{x,1},8,{string,<<":">>}]}.
    {test,bs_get_binary2,
          {f,1215},
          3,
          [{x,1},
           {integer,2},
           8,
           {field_flags,[{anno,[1894,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,1215},
          4,
          [{x,1},
           {atom,all},
           8,
           {field_flags,[{anno,[1894,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test_heap,4,5}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3},{x,4}]}}.
    return.
  {label,1215}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,1213}}.
  {label,1216}.
    {test,is_map,{f,1213},[{x,0}]}.
    {test,has_map_fields,{f,1217},{x,0},{list,[{atom,time}]}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,ok},{x,0}]}}.
    return.
  {label,1217}.
    {get_map_elements,{f,1213},
                      {x,0},
                      {list,[{atom,min},{x,2},{atom,hour},{x,1}]}}.
    {test_heap,4,3}.
    {put_tuple2,{x,0},{list,[{x,1},{x,2},{x,0}]}}.
    return.


{function, unsafe_branch_caching, 1, 1219}.
  {label,1218}.
    {line,[{location,"bs_match_r23_SUITE.erl",1905}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,unsafe_branch_caching},1}.
  {label,1219}.
    {allocate,0,0}.
    {move,{literal,<<42,1>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1906}]}.
    {call,1,{f,1226}}. % do_unsafe_branch_caching/1
    {test,is_eq_exact,{f,1224},[{x,0},{literal,<<>>}]}.
    {move,{literal,<<42,2>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1907}]}.
    {call,1,{f,1226}}. % do_unsafe_branch_caching/1
    {test,is_eq_exact,{f,1223},[{x,0},{literal,<<>>}]}.
    {move,{literal,<<42,3>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1908}]}.
    {call,1,{f,1226}}. % do_unsafe_branch_caching/1
    {test,is_eq_exact,{f,1222},[{x,0},{literal,<<>>}]}.
    {move,{literal,<<42,3,17,18>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1909}]}.
    {call,1,{f,1226}}. % do_unsafe_branch_caching/1
    {test,is_eq_exact,{f,1221},[{x,0},{literal,<<17,18>>}]}.
    {move,{literal,<<1,3,42,2>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1910}]}.
    {call,1,{f,1226}}. % do_unsafe_branch_caching/1
    {test,is_eq_exact,{f,1220},[{x,0},{literal,<<>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1220}.
    {badmatch,{x,0}}.
  {label,1221}.
    {line,[{location,"bs_match_r23_SUITE.erl",1909}]}.
    {badmatch,{x,0}}.
  {label,1222}.
    {line,[{location,"bs_match_r23_SUITE.erl",1908}]}.
    {badmatch,{x,0}}.
  {label,1223}.
    {line,[{location,"bs_match_r23_SUITE.erl",1907}]}.
    {badmatch,{x,0}}.
  {label,1224}.
    {line,[{location,"bs_match_r23_SUITE.erl",1906}]}.
    {badmatch,{x,0}}.


{function, do_unsafe_branch_caching, 1, 1226}.
  {label,1225}.
    {line,[{location,"bs_match_r23_SUITE.erl",1914}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,do_unsafe_branch_caching},1}.
  {label,1226}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1225},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_integer2,
          {f,1232},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[1914,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_position,{x,1},{x,3},3}.
    {test,bs_test_unit,{f,1232},[{x,1},8]}.
    {test,bs_get_integer2,
          {f,1231},
          4,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[1915,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,0}}.
    {test,bs_get_binary2,
          {f,1231},
          4,
          [{x,1},
           {atom,all},
           8,
           {field_flags,[{anno,[1915,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {select_val,{x,0},
                {f,1228},
                {list,[{integer,1},{f,1227},{integer,2},{f,1227}]}}.
  {label,1227}.
    {move,{literal,<<>>},{x,0}}.
    {jump,{f,1229}}.
  {label,1228}.
    {move,{x,4},{x,0}}.
  {label,1229}.
    {test,is_eq_exact,{f,1230},[{x,2},{integer,1}]}.
    {call_only,1,{f,1226}}. % do_unsafe_branch_caching/1
  {label,1230}.
    return.
  {label,1231}.
    {bs_set_position,{x,1},{x,3}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_r23_SUITE.erl",1915}]}.
    {badmatch,{x,0}}.
  {label,1232}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,1225}}.


{function, bad_literals, 1, 1234}.
  {label,1233}.
    {line,[{location,"bs_match_r23_SUITE.erl",1927}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,bad_literals},1}.
  {label,1234}.
    {allocate_zero,2,0}.
    {move,{integer,1114116},{x,1}}.
    {move,{integer,1114108},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1935}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {test_heap,10,1}.
    {put_list,{integer,2},{x,0},{x,0}}.
    {put_list,{integer,1},{x,0},{x,0}}.
    {put_list,{integer,0},{x,0},{x,0}}.
    {put_list,{integer,-1},{x,0},{x,0}}.
    {put_list,{integer,-100},{x,0},{x,0}}.
    {call,1,{f,2101}}. % '-bad_literals/1-lc$^0/1-0-'/1
    {move,{x,0},{y,1}}.
    {move,{integer,8},{x,1}}.
    {move,{integer,-2},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1932}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{y,1},{x,1}}.
    {init,{y,1}}.
    {call,2,{f,2093}}. % '-bad_literals/1-lc$^1/1-1-'/2
    {move,{x,0},{y,1}}.
    {move,{integer,8},{x,1}}.
    {move,{integer,-8},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1930}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{y,1},{x,1}}.
    {init,{y,1}}.
    {call,2,{f,2085}}. % '-bad_literals/1-lc$^3/1-3-'/2
    {move,{x,0},{y,1}}.
    {move,{atom,bs_match_r23_SUITE_bad_literals},{x,0}}.
    {line,[]}.
    {call_ext,1,{extfunc,merl,term,1}}.
    {test_heap,41,1}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{literal,[{tree,atom,{attr,1936,[],none},module}]},{x,0},{x,0}}.
    {put_list,{y,1},{literal,[{atom,1940,ok}]},{x,1}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,nil,{x,1},{x,1}}.
    {put_list,nil,{x,1},{x,1}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,clause},
                       {literal,{attr,1938,[],none}},
                       {x,1}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{literal,[{tree,atom,{attr,1938,[],none},f}]},{x,1},{x,1}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,function},
                       {literal,{attr,1938,[],none}},
                       {x,1}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{literal,{attribute,1937,export,[{f,0}]}},{x,1},{x,1}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,attribute},
                       {literal,{attr,1936,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},{x,1},{x,0}}.
    {init,{y,1}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1936}]}.
    {call_ext,1,{extfunc,merl,tree,1}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1941}]}.
    {call_ext,1,{extfunc,merl,print,1}}.
    {move,{atom,bs_match_r23_SUITE},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1942}]}.
    {call_ext,1,{extfunc,test_lib,opt_opts,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {init,{y,1}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1943}]}.
    {call_ext,2,{extfunc,merl,compile_and_load,2}}.
    {test,is_tagged_tuple,{f,1240},[{x,0},2,{atom,ok}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1240},[{x,1},{atom,ok}]}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",1944}]}.
    {call_ext,0,{extfunc,bs_match_r23_SUITE_bad_literals,f,0}}.
    {'catch',{y,1},{f,1235}}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",1946}]}.
    {call,0,{f,1242}}. % bad_literals_1/0
  {label,1235}.
    {catch_end,{y,1}}.
    {test,is_eq_exact,{f,1239},[{x,0},{literal,{'EXIT',<<"*">>}}]}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",1947}]}.
    {call,1,{f,1244}}. % bad_literals_2/1
    {test,is_eq_exact,{f,1238},[{x,0},{atom,no_match}]}.
    {move,{integer,8},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",1949}]}.
    {call,1,{f,1968}}. % id/1
    {'catch',{y,0},{f,1236}}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",1950}]}.
    {badmatch,{literal,<<"ÿ">>}}.
  {label,1236}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1237},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1237},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1237},[{x,1}]}.
    {test,test_arity,{f,1237},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,1237},[{x,1},2,{atom,badmatch}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1237},[{x,1},{atom,badmatch}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,1237}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",1950}]}.
    {badmatch,{x,0}}.
  {label,1238}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",1947}]}.
    {badmatch,{x,0}}.
  {label,1239}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",1946}]}.
    {badmatch,{x,0}}.
  {label,1240}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",1943}]}.
    {badmatch,{x,0}}.


{function, bad_literals_1, 0, 1242}.
  {label,1241}.
    {line,[{location,"bs_match_r23_SUITE.erl",1953}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,bad_literals_1},0}.
  {label,1242}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1957}]}.
    {call_ext_only,1,{extfunc,erlang,exit,1}}.


{function, bad_literals_2, 1, 1244}.
  {label,1243}.
    {line,[{location,"bs_match_r23_SUITE.erl",1963}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,bad_literals_2},1}.
  {label,1244}.
    {move,{atom,no_match},{x,0}}.
    return.


{function, signed_lit_match, 2, 1246}.
  {label,1245}.
    {line,[{location,"bs_match_r23_SUITE.erl",1970}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,signed_lit_match},2}.
  {label,1246}.
    {line,[{location,"bs_match_r23_SUITE.erl",1971}]}.
    {move,{integer,0},{x,2}}.
    {bs_add,{f,0},[{x,2},{x,1},1],{x,2}}.
    {bs_init_bits,{f,0},{x,2},0,3,{field_flags,[]},{x,2}}.
    {bs_put_integer,{f,0},{x,1},1,{field_flags,[]},{x,0}}.
    {move,{x,2},{x,2}}.
    {test,bs_start_match3,{f,1247},3,[{x,2}],{x,2}}.
    {test,bs_get_integer2,
          {f,1247},
          3,
          [{x,2},
           {x,1},
           1,
           {field_flags,[{anno,[1972,{file,"bs_match_r23_SUITE.erl"}]},
                         signed,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1247},[{x,2},0]}.
    {test,is_eq_exact,{f,1247},[{x,3},{x,0}]}.
    {allocate_zero,3,2}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
    {line,[]}.
    {call_ext,1,{extfunc,merl,term,1}}.
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,0}}.
    {call_ext,1,{extfunc,merl,term,1}}.
    {swap,{y,2},{x,0}}.
    {call_ext,1,{extfunc,merl,term,1}}.
    {swap,{y,1},{x,0}}.
    {call_ext,1,{extfunc,merl,term,1}}.
    {test_heap,75,1}.
    {put_list,{y,2},nil,{x,1}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{y,0},nil,{x,2}}.
    {put_list,{x,2},{x,1},{x,1}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,size_qualifier},
                       {literal,{attr,0,[],none}},
                       {x,1}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},
              {literal,[[{tree,atom,{attr,1973,[],none},signed}]]},
              {x,1}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,binary_field},
                       {literal,{attr,1973,[],none}},
                       {x,1}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,binary},
                       {literal,{attr,1973,[],none}},
                       {x,1}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{y,1},nil,{x,2}}.
    {put_list,{x,2},{x,0},{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,size_qualifier},
                       {literal,{attr,0,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},{literal,[[]]},{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,binary_field},
                       {literal,{attr,1973,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,binary},
                       {literal,{attr,1973,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,match_expr},
                       {literal,{attr,1973,[],none}},
                       {x,0}]}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1973}]}.
    {call_ext_last,1,{extfunc,merl,tree,1},3}.
  {label,1247}.
    {allocate_zero,3,2}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
    {line,[]}.
    {call_ext,1,{extfunc,merl,term,1}}.
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,0}}.
    {call_ext,1,{extfunc,merl,term,1}}.
    {swap,{y,2},{x,0}}.
    {call_ext,1,{extfunc,merl,term,1}}.
    {swap,{y,1},{x,0}}.
    {call_ext,1,{extfunc,merl,term,1}}.
    {test_heap,84,1}.
    {put_list,{y,2},nil,{x,1}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{y,0},nil,{x,2}}.
    {put_list,{x,2},{x,1},{x,1}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,size_qualifier},
                       {literal,{attr,0,[],none}},
                       {x,1}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},{literal,[[]]},{x,1}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,binary_field},
                       {literal,{attr,1975,[],none}},
                       {x,1}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,binary},
                       {literal,{attr,1975,[],none}},
                       {x,1}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{y,1},nil,{x,2}}.
    {put_list,{x,2},{x,0},{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,size_qualifier},
                       {literal,{attr,0,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},
              {literal,[[{tree,atom,{attr,1977,[],none},signed}]]},
              {x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,binary_field},
                       {literal,{attr,1977,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,binary},
                       {literal,{attr,1977,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},
              {literal,[[],
                        [{call,1979,
                               {remote,1979,{atom,1979,ct},{atom,1979,fail}},
                               [{atom,1979,should_not_match}]}]]},
              {x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,clause},
                       {literal,{attr,1977,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},
              {literal,[{clause,1981,[{var,1981,'_'}],[],[{atom,1983,ok}]}]},
              {x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,case_expr},
                       {literal,{attr,1975,[],none}},
                       {x,0}]}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1975}]}.
    {call_ext_last,1,{extfunc,merl,tree,1},3}.


{function, unsigned_lit_match, 2, 1249}.
  {label,1248}.
    {line,[{location,"bs_match_r23_SUITE.erl",1983}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,unsigned_lit_match},2}.
  {label,1249}.
    {line,[{location,"bs_match_r23_SUITE.erl",1984}]}.
    {move,{integer,0},{x,2}}.
    {bs_add,{f,0},[{x,2},{x,1},1],{x,2}}.
    {bs_init_bits,{f,0},{x,2},0,3,{field_flags,[]},{x,2}}.
    {bs_put_integer,{f,0},{x,1},1,{field_flags,[]},{x,0}}.
    {move,{x,2},{x,2}}.
    {test,bs_start_match3,{f,1250},3,[{x,2}],{x,2}}.
    {test,bs_get_integer2,
          {f,1250},
          3,
          [{x,2},
           {x,1},
           1,
           {field_flags,[{anno,[1985,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1250},[{x,2},0]}.
    {test,is_eq_exact,{f,1250},[{x,3},{x,0}]}.
    {allocate_zero,3,2}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
    {line,[]}.
    {call_ext,1,{extfunc,merl,term,1}}.
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,0}}.
    {call_ext,1,{extfunc,merl,term,1}}.
    {swap,{y,2},{x,0}}.
    {call_ext,1,{extfunc,merl,term,1}}.
    {swap,{y,1},{x,0}}.
    {call_ext,1,{extfunc,merl,term,1}}.
    {test_heap,75,1}.
    {put_list,{y,2},nil,{x,1}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{y,0},nil,{x,2}}.
    {put_list,{x,2},{x,1},{x,1}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,size_qualifier},
                       {literal,{attr,0,[],none}},
                       {x,1}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},{literal,[[]]},{x,1}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,binary_field},
                       {literal,{attr,1986,[],none}},
                       {x,1}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,binary},
                       {literal,{attr,1986,[],none}},
                       {x,1}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{y,1},nil,{x,2}}.
    {put_list,{x,2},{x,0},{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,size_qualifier},
                       {literal,{attr,0,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},{literal,[[]]},{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,binary_field},
                       {literal,{attr,1986,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,binary},
                       {literal,{attr,1986,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,match_expr},
                       {literal,{attr,1986,[],none}},
                       {x,0}]}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1986}]}.
    {call_ext_last,1,{extfunc,merl,tree,1},3}.
  {label,1250}.
    {allocate_zero,3,2}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
    {line,[]}.
    {call_ext,1,{extfunc,merl,term,1}}.
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,0}}.
    {call_ext,1,{extfunc,merl,term,1}}.
    {swap,{y,2},{x,0}}.
    {call_ext,1,{extfunc,merl,term,1}}.
    {swap,{y,1},{x,0}}.
    {call_ext,1,{extfunc,merl,term,1}}.
    {test_heap,84,1}.
    {put_list,{y,2},nil,{x,1}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{y,0},nil,{x,2}}.
    {put_list,{x,2},{x,1},{x,1}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,size_qualifier},
                       {literal,{attr,0,[],none}},
                       {x,1}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},{literal,[[]]},{x,1}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,binary_field},
                       {literal,{attr,1988,[],none}},
                       {x,1}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,binary},
                       {literal,{attr,1988,[],none}},
                       {x,1}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{y,1},nil,{x,2}}.
    {put_list,{x,2},{x,0},{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,size_qualifier},
                       {literal,{attr,0,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},
              {literal,[[{tree,atom,{attr,1990,[],none},unsigned}]]},
              {x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,binary_field},
                       {literal,{attr,1990,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,binary},
                       {literal,{attr,1990,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},
              {literal,[[],
                        [{call,1992,
                               {remote,1992,{atom,1992,ct},{atom,1992,fail}},
                               [{atom,1992,should_not_match}]}]]},
              {x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,clause},
                       {literal,{attr,1990,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},
              {literal,[{clause,1994,[{var,1994,'_'}],[],[{atom,1996,ok}]}]},
              {x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,case_expr},
                       {literal,{attr,1988,[],none}},
                       {x,0}]}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1988}]}.
    {call_ext_last,1,{extfunc,merl,tree,1},3}.


{function, unicode_match, 1, 1252}.
  {label,1251}.
    {line,[{location,"bs_match_r23_SUITE.erl",1996}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,unicode_match},1}.
  {label,1252}.
    {allocate_zero,5,1}.
    {move,{x,0},{y,3}}.
    {'try',{y,4},{f,1253}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1997}]}.
    {move,{integer,0},{x,1}}.
    {bs_utf8_size,{f,0},{x,0},{x,2}}.
    {bs_add,{f,0},[{x,1},{x,2},8],{x,1}}.
    {bs_init_bits,{f,0},{x,1},0,2,{field_flags,[]},{x,1}}.
    {bs_put_utf8,{f,0},{field_flags,[]},{x,0}}.
    {move,{x,1},{x,0}}.
    {try_end,{y,4}}.
    {test,bs_start_match3,{f,1255},1,[{x,0}],{x,1}}.
    {test,bs_get_utf8,
          {f,1255},
          2,
          [{x,1},
           {field_flags,[{anno,[1998,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1255},[{x,1},0]}.
    {test,is_eq_exact,{f,1255},[{x,2},{y,3}]}.
    {move,{y,3},{x,0}}.
    {line,[{scope,[2]}]}.
    {call_ext,1,{extfunc,merl,term,1}}.
    {move,{x,0},{y,4}}.
    {move,{y,3},{x,0}}.
    {call_ext,1,{extfunc,merl,term,1}}.
    {move,{x,0},{y,2}}.
    {move,{y,3},{x,0}}.
    {call_ext,1,{extfunc,merl,term,1}}.
    {move,{x,0},{y,1}}.
    {move,{y,3},{x,0}}.
    {call_ext,1,{extfunc,merl,term,1}}.
    {move,{x,0},{y,0}}.
    {move,{y,3},{x,0}}.
    {call_ext,1,{extfunc,merl,term,1}}.
    {swap,{y,3},{x,0}}.
    {call_ext,1,{extfunc,merl,term,1}}.
    {test_heap,153,1}.
    {put_list,{y,4},nil,{x,1}}.
    {put_list,{x,1},{literal,[[{tree,atom,{attr,1999,[],none},utf8}]]},{x,1}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,binary_field},
                       {literal,{attr,1999,[],none}},
                       {x,1}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,binary},
                       {literal,{attr,1999,[],none}},
                       {x,1}]}}.
    {put_list,{y,2},nil,{x,2}}.
    {put_list,{x,2},{literal,[[{tree,atom,{attr,1999,[],none},utf8}]]},{x,2}}.
    {put_tuple2,{x,2},
                {list,[{atom,template},
                       {atom,binary_field},
                       {literal,{attr,1999,[],none}},
                       {x,2}]}}.
    {put_list,{x,2},nil,{x,2}}.
    {put_list,{x,2},nil,{x,2}}.
    {put_tuple2,{x,2},
                {list,[{atom,template},
                       {atom,binary},
                       {literal,{attr,1999,[],none}},
                       {x,2}]}}.
    {put_list,{x,2},nil,{x,2}}.
    {put_list,{x,2},nil,{x,2}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},{x,2},{x,1}}.
    {put_list,{y,1},nil,{x,2}}.
    {put_list,{x,2},{literal,[[{tree,atom,{attr,2001,[],none},utf16}]]},{x,2}}.
    {put_tuple2,{x,2},
                {list,[{atom,template},
                       {atom,binary_field},
                       {literal,{attr,2001,[],none}},
                       {x,2}]}}.
    {put_list,{x,2},nil,{x,2}}.
    {put_list,{x,2},nil,{x,2}}.
    {put_tuple2,{x,2},
                {list,[{atom,template},
                       {atom,binary},
                       {literal,{attr,2001,[],none}},
                       {x,2}]}}.
    {put_list,{y,0},nil,{x,3}}.
    {put_list,{x,3},{literal,[[{tree,atom,{attr,2001,[],none},utf16}]]},{x,3}}.
    {put_tuple2,{x,3},
                {list,[{atom,template},
                       {atom,binary_field},
                       {literal,{attr,2001,[],none}},
                       {x,3}]}}.
    {put_list,{x,3},nil,{x,3}}.
    {put_list,{x,3},nil,{x,3}}.
    {put_tuple2,{x,3},
                {list,[{atom,template},
                       {atom,binary},
                       {literal,{attr,2001,[],none}},
                       {x,3}]}}.
    {put_list,{x,3},nil,{x,3}}.
    {put_list,{x,3},nil,{x,3}}.
    {put_list,{x,2},nil,{x,2}}.
    {put_list,{x,2},{x,3},{x,2}}.
    {put_list,{y,3},nil,{x,3}}.
    {put_list,{x,3},{literal,[[{tree,atom,{attr,2003,[],none},utf32}]]},{x,3}}.
    {put_tuple2,{x,3},
                {list,[{atom,template},
                       {atom,binary_field},
                       {literal,{attr,2003,[],none}},
                       {x,3}]}}.
    {put_list,{x,3},nil,{x,3}}.
    {put_list,{x,3},nil,{x,3}}.
    {put_tuple2,{x,3},
                {list,[{atom,template},
                       {atom,binary},
                       {literal,{attr,2003,[],none}},
                       {x,3}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},{literal,[[{tree,atom,{attr,2003,[],none},utf32}]]},{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,binary_field},
                       {literal,{attr,2003,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,binary},
                       {literal,{attr,2003,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,3},nil,{x,3}}.
    {put_list,{x,3},{x,0},{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,match_expr},
                       {literal,{attr,2003,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_tuple2,{x,2},
                {list,[{atom,template},
                       {atom,match_expr},
                       {literal,{attr,2001,[],none}},
                       {x,2}]}}.
    {put_list,{x,2},{x,0},{x,0}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,match_expr},
                       {literal,{attr,1999,[],none}},
                       {x,1}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",1999}]}.
    {call_ext_last,1,{extfunc,merl,tree,1},5}.
  {label,1253}.
    {try_case,{y,4}}.
    {test,is_eq_exact,{f,1254},[{x,0},{atom,error}]}.
    {test,is_eq_exact,{f,1254},[{x,1},{atom,badarg}]}.
    {move,{y,3},{x,0}}.
    {line,[{scope,[0]}]}.
    {call_ext,1,{extfunc,merl,term,1}}.
    {move,{x,0},{y,4}}.
    {move,{y,3},{x,0}}.
    {trim,4,1}.
    {call_ext,1,{extfunc,merl,term,1}}.
    {test_heap,67,1}.
    {put_list,{y,0},nil,{x,1}}.
    {put_list,{x,1},{literal,[[{integer,2004,32}]]},{x,1}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,size_qualifier},
                       {literal,{attr,0,[],none}},
                       {x,1}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},{literal,[[]]},{x,1}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,binary_field},
                       {literal,{attr,2004,[],none}},
                       {x,1}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,binary},
                       {literal,{attr,2004,[],none}},
                       {x,1}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},{literal,[[{tree,atom,{attr,2006,[],none},utf32}]]},{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,binary_field},
                       {literal,{attr,2006,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,binary},
                       {literal,{attr,2006,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},
              {literal,[[],
                        [{call,2008,
                               {remote,2008,{atom,2008,ct},{atom,2008,fail}},
                               [{atom,2008,should_not_match}]}]]},
              {x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,clause},
                       {literal,{attr,2006,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},
              {literal,[{clause,2010,[{var,2010,'_'}],[],[{atom,2012,ok}]}]},
              {x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,case_expr},
                       {literal,{attr,2004,[],none}},
                       {x,0}]}}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",2004}]}.
    {call_ext_last,1,{extfunc,merl,tree,1},1}.
  {label,1254}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.
  {label,1255}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",1997}]}.
    {try_case_end,{x,0}}.


{function, good_literals, 1, 1257}.
  {label,1256}.
    {line,[{location,"bs_match_r23_SUITE.erl",2014}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,good_literals},1}.
  {label,1257}.
    {allocate_zero,1,0}.
    {move,{integer,64},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2015}]}.
    {call,1,{f,1968}}. % id/1
    {line,[{location,"bs_match_r23_SUITE.erl",2018}]}.
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{x,0},1],{x,1}}.
    {bs_init_bits,{f,0},{x,1},0,2,{field_flags,[]},{x,1}}.
    {bs_put_integer,{f,0},{x,0},1,{field_flags,[]},{integer,42}}.
    {move,{x,1},{x,1}}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {call,1,{f,1968}}. % id/1
    {test,bs_start_match3,{f,1260},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,1260},
          2,
          [{x,1},
           {y,0},
           1,
           {field_flags,[{anno,[2018,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,1260},[{x,2},{integer,42}]}.
    {test,bs_test_tail2,{f,1260},[{x,1},0]}.
    {line,[{location,"bs_match_r23_SUITE.erl",2019}]}.
    {move,{integer,0},{x,0}}.
    {bs_add,{f,0},[{x,0},{y,0},1],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_float,{f,0},{y,0},1,{field_flags,[]},{integer,42}}.
    {move,{x,0},{x,0}}.
    {call,1,{f,1968}}. % id/1
    {test,bs_start_match3,{f,1259},1,[{x,0}],{x,1}}.
    {test,bs_get_float2,
          {f,1259},
          2,
          [{x,1},
           {y,0},
           1,
           {field_flags,[{anno,[2019,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,1259},[{x,2},{float,42.0}]}.
    {test,bs_test_tail2,{f,1259},[{x,1},0]}.
    {trim,1,0}.
    {move,{literal,<<"Êþ¾ï">>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2022}]}.
    {call,1,{f,1968}}. % id/1
    {test,is_eq_exact,{f,1258},[{x,0},{literal,<<"Êþ¾ï">>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1258}.
    {badmatch,{x,0}}.
  {label,1259}.
    {line,[{location,"bs_match_r23_SUITE.erl",2019}]}.
    {badmatch,{x,0}}.
  {label,1260}.
    {line,[{location,"bs_match_r23_SUITE.erl",2018}]}.
    {badmatch,{x,0}}.


{function, constant_propagation, 1, 1262}.
  {label,1261}.
    {line,[{location,"bs_match_r23_SUITE.erl",2025}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,constant_propagation},1}.
  {label,1262}.
    {allocate_zero,1,0}.
    {move,{literal,<<5>>},{x,1}}.
    {move,{atom,a},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2026}]}.
    {call,2,{f,1269}}. % constant_propagation_a/2
    {test,is_eq_exact,{f,1267},[{x,0},{literal,<<5>>}]}.
    {'catch',{y,0},{f,1263}}.
    {move,{literal,<<5>>},{x,1}}.
    {move,{atom,b},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",2027}]}.
    {call,2,{f,1269}}. % constant_propagation_a/2
  {label,1263}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1266},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1266},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1266},[{x,1}]}.
    {test,test_arity,{f,1266},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1266},[{x,1},{literal,{case_clause,b}}]}.
    {move,{literal,<<1,2>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",2028}]}.
    {call,1,{f,1273}}. % constant_propagation_b/1
    {test,is_eq_exact,{f,1265},[{x,0},{integer,258}]}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",2029}]}.
    {call,0,{f,1277}}. % constant_propagation_c/0
    {move,{x,0},{x,1}}.
    {move,{literal,<<1,3>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",2030}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,1264},[{x,0},{integer,259}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,1264}.
    {badmatch,{x,0}}.
  {label,1265}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",2028}]}.
    {badmatch,{x,0}}.
  {label,1266}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",2027}]}.
    {badmatch,{x,0}}.
  {label,1267}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",2026}]}.
    {badmatch,{x,0}}.


{function, constant_propagation_a, 2, 1269}.
  {label,1268}.
    {line,[{location,"bs_match_r23_SUITE.erl",2033}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,constant_propagation_a},2}.
  {label,1269}.
    {test,is_eq_exact,{f,1271},[{x,0},{atom,a}]}.
    {test,bs_start_match3,{f,1270},2,[{x,1}],{x,0}}.
    {test,bs_get_integer2,
          {f,1270},
          2,
          [{x,0},
           {integer,8},
           1,
           {field_flags,[{anno,[2037,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,1270},[{x,2},{integer,5}]}.
    {test,bs_test_tail2,{f,1270},[{x,0},0]}.
    {move,{x,1},{x,0}}.
    return.
  {label,1270}.
    {line,[{location,"bs_match_r23_SUITE.erl",2037}]}.
    {badmatch,{x,1}}.
  {label,1271}.
    {line,[{location,"bs_match_r23_SUITE.erl",2034}]}.
    {case_end,{x,0}}.


{function, constant_propagation_b, 1, 1273}.
  {label,1272}.
    {line,[{location,"bs_match_r23_SUITE.erl",2039}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,constant_propagation_b},1}.
  {label,1273}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1275},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_integer2,
          {f,1274},
          2,
          [{x,1},
           {integer,16},
           1,
           {field_flags,[{anno,[2041,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1274},[{x,1},0]}.
    {move,{x,2},{x,0}}.
    return.
  {label,1274}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_r23_SUITE.erl",2041}]}.
    {badmatch,{x,0}}.
  {label,1275}.
    {badmatch,{x,0}}.


{function, constant_propagation_c, 0, 1277}.
  {label,1276}.
    {line,[{location,"bs_match_r23_SUITE.erl",2044}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,constant_propagation_c},0}.
  {label,1277}.
    {make_fun2,{f,2081},0,0,0}.
    return.


{function, parse_xml, 1, 1279}.
  {label,1278}.
    {line,[{location,"bs_match_r23_SUITE.erl",2051}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,parse_xml},1}.
  {label,1279}.
    {allocate,0,0}.
    {move,{literal,<<"<?xmlX">>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2052}]}.
    {call,1,{f,1283}}. % do_parse_xml/1
    {test,is_eq_exact,{f,1281},[{x,0},{literal,<<"<?xmlX">>}]}.
    {move,{literal,<<"<?xml ">>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2053}]}.
    {call,1,{f,1283}}. % do_parse_xml/1
    {test,is_eq_exact,{f,1280},[{x,0},{literal,<<" ">>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1280}.
    {badmatch,{x,0}}.
  {label,1281}.
    {line,[{location,"bs_match_r23_SUITE.erl",2052}]}.
    {badmatch,{x,0}}.


{function, do_parse_xml, 1, 1283}.
  {label,1282}.
    {line,[{location,"bs_match_r23_SUITE.erl",2056}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,do_parse_xml},1}.
  {label,1283}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1282},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_match_string,{f,1287},[{x,1},40,{string,<<"<?xml">>}]}.
    {bs_get_position,{x,1},{x,2},2}.
    {test,bs_test_unit,{f,1287},[{x,1},8]}.
    {allocate,3,3}.
    {move,{x,2},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{x,1},{y,2}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2060}]}.
    {call,1,{f,1290}}. % is_next_char_whitespace/1
    {select_val,{x,0},
                {f,1288},
                {list,[{atom,false},{f,1285},{atom,true},{f,1284}]}}.
  {label,1284}.
    {bs_set_position,{y,2},{y,0}}.
    {bs_get_tail,{y,2},{x,0},0}.
    {init,{y,0}}.
    {init,{y,1}}.
    {init,{y,2}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2064}]}.
    {call,1,{f,1968}}. % id/1
    {jump,{f,1286}}.
  {label,1285}.
    {bs_set_position,{y,2},{y,1}}.
    {bs_get_tail,{y,2},{x,0},0}.
  {label,1286}.
    {call_last,1,{f,1968},3}. % id/1
  {label,1287}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,1282}}.
  {label,1288}.
    {line,[{location,"bs_match_r23_SUITE.erl",2060}]}.
    {case_end,{x,0}}.


{function, is_next_char_whitespace, 1, 1290}.
  {label,1289}.
    {line,[{location,"bs_match_r23_SUITE.erl",2068}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,is_next_char_whitespace},1}.
  {label,1290}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1289},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_utf8,
          {f,1291},
          2,
          [{x,1},
           {field_flags,[{anno,[2068,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_unit,{f,1291},[{x,1},8]}.
    {bif,'=:=',{f,0},[{x,2},{integer,32}],{x,0}}.
    return.
  {label,1291}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,1289}}.


{function, get_payload, 1, 1293}.
  {label,1292}.
    {line,[{location,"bs_match_r23_SUITE.erl",2075}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,get_payload},1}.
  {label,1293}.
    {allocate_zero,1,0}.
    {move,{literal,{ext_header,17,<<0,0,0,0,13,117>>}},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2076}]}.
    {call,1,{f,1298}}. % do_get_payload/1
    {test,is_eq_exact,{f,1296},[{x,0},{literal,<<0,0,0,0,13,117>>}]}.
    {'catch',{y,0},{f,1294}}.
    {move,{literal,{ext_header,17,undefined}},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",2077}]}.
    {call,1,{f,1298}}. % do_get_payload/1
  {label,1294}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1295},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1295},[{x,1},{atom,'EXIT'}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,1295}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",2077}]}.
    {badmatch,{x,0}}.
  {label,1296}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",2076}]}.
    {badmatch,{x,0}}.


{function, do_get_payload, 1, 1298}.
  {label,1297}.
    {line,[{location,"bs_match_r23_SUITE.erl",2080}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,do_get_payload},1}.
  {label,1298}.
    {test,is_tagged_tuple,{f,1302},[{x,0},3,{atom,ext_header}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1302},[{x,1},{atom,ext_header}]}.
    {test,is_tagged_tuple,{f,1301},[{x,0},3,{atom,ext_header}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},2,{x,2}}.
    {test,is_eq_exact,{f,1301},[{x,1},{atom,ext_header}]}.
    {test,is_tagged_tuple,{f,1300},[{x,0},3,{atom,ext_header}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},2,{x,3}}.
    {test,is_eq_exact,{f,1300},[{x,1},{atom,ext_header}]}.
    {test,bs_start_match3,{f,1299},4,[{x,3}],{x,0}}.
    {test,bs_test_tail2,{f,1299},[{x,0},48]}.
    {move,{x,2},{x,0}}.
    return.
  {label,1299}.
    {line,[{location,"bs_match_r23_SUITE.erl",2083}]}.
    {badmatch,{x,3}}.
  {label,1300}.
    {badrecord,{x,0}}.
  {label,1301}.
    {line,[{location,"bs_match_r23_SUITE.erl",2082}]}.
    {badrecord,{x,0}}.
  {label,1302}.
    {line,[{location,"bs_match_r23_SUITE.erl",2081}]}.
    {badrecord,{x,0}}.


{function, escape, 1, 1304}.
  {label,1303}.
    {line,[{location,"bs_match_r23_SUITE.erl",2086}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,escape},1}.
  {label,1304}.
    {allocate,0,0}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2087}]}.
    {call,2,{f,1311}}. % escape/2
    {test,is_eq_exact,{f,1309},[{x,0},{integer,0}]}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<128>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2088}]}.
    {call,2,{f,1311}}. % escape/2
    {test,is_eq_exact,{f,1308},[{x,0},{integer,1}]}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<128,255>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2089}]}.
    {call,2,{f,1311}}. % escape/2
    {test,is_eq_exact,{f,1307},[{x,0},{integer,2}]}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2090}]}.
    {call,2,{f,1311}}. % escape/2
    {test,is_eq_exact,{f,1306},[{x,0},{integer,42}]}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<"*\b">>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2091}]}.
    {call,2,{f,1311}}. % escape/2
    {test,is_eq_exact,{f,1305},[{x,0},{integer,50}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1305}.
    {badmatch,{x,0}}.
  {label,1306}.
    {line,[{location,"bs_match_r23_SUITE.erl",2090}]}.
    {badmatch,{x,0}}.
  {label,1307}.
    {line,[{location,"bs_match_r23_SUITE.erl",2089}]}.
    {badmatch,{x,0}}.
  {label,1308}.
    {line,[{location,"bs_match_r23_SUITE.erl",2088}]}.
    {badmatch,{x,0}}.
  {label,1309}.
    {line,[{location,"bs_match_r23_SUITE.erl",2087}]}.
    {badmatch,{x,0}}.


{function, escape, 2, 1311}.
  {label,1310}.
    {line,[{location,"bs_match_r23_SUITE.erl",2094}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,escape},2}.
  {label,1311}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1310},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_get_integer2,
          {f,1313},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[2094,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_ge,{f,1312},[{x,3},{integer,127}]}.
    {line,[{location,"bs_match_r23_SUITE.erl",2095}]}.
    {gc_bif,'+',{f,0},3,[{x,1},{integer,1}],{x,1}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,1311}}. % escape/2
  {label,1312}.
    {line,[{location,"bs_match_r23_SUITE.erl",2097}]}.
    {gc_bif,'+',{f,0},4,[{x,1},{x,3}],{x,1}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,1311}}. % escape/2
  {label,1313}.
    {move,{x,1},{x,0}}.
    return.


{function, num_slots_different, 1, 1315}.
  {label,1314}.
    {line,[{location,"bs_match_r23_SUITE.erl",2102}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,num_slots_different},1}.
  {label,1315}.
    {allocate_zero,4,0}.
    {move,{literal,[{<<"de">>,<<"default">>,<<"Remove">>,<<"a">>},
                    {<<"de">>,<<"default">>,<<"Remove from list">>,<<"a">>},
                    {<<"de">>,<<"default">>,<<"Remove from the list">>,
                     <<"a">>},
                    {<<"de">>,<<"default">>,<<"Results">>,<<"Ergebnisse">>},
                    {<<"de">>,<<"default">>,<<"Reservatio">>,<<"a">>},
                    {<<"de">>,<<"navigation">>,<<"Results">>,<<"Ergebnisse">>},
                    {<<"de">>,<<"navigation">>,<<"Resources">>,
                     <<"Ressourcen">>}]},
          {x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2110}]}.
    {call,1,{f,2075}}. % '-num_slots_different/1-lc$^0/1-0-'/1
    {'catch',{y,3},{f,1316}}.
    {move,{literal,<<"default">>},{x,1}}.
    {move,{literal,<<"Remove">>},{x,2}}.
    {move,{literal,<<"d">>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2112}]}.
    {call,3,{f,1325}}. % lgettext/3
  {label,1316}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,1323},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1323},[{x,1},{atom,'EXIT'}]}.
    {'catch',{y,2},{f,1317}}.
    {move,{literal,<<"default">>},{x,1}}.
    {move,{literal,<<"Remove">>},{x,2}}.
    {move,nil,{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",2113}]}.
    {call,3,{f,1325}}. % lgettext/3
  {label,1317}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,1322},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1322},[{x,1},{atom,'EXIT'}]}.
    {'catch',{y,1},{f,1318}}.
    {move,{literal,<<"def">>},{x,1}}.
    {move,{literal,<<"Remove">>},{x,2}}.
    {move,{literal,<<"de">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",2114}]}.
    {call,3,{f,1325}}. % lgettext/3
  {label,1318}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,1321},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1321},[{x,1},{atom,'EXIT'}]}.
    {'catch',{y,0},{f,1319}}.
    {move,{literal,<<"default">>},{x,1}}.
    {move,{literal,<<"Res">>},{x,2}}.
    {move,{literal,<<"de">>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",2115}]}.
    {call,3,{f,1325}}. % lgettext/3
  {label,1319}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1320},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1320},[{x,1},{atom,'EXIT'}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,4}.
    return.
  {label,1320}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",2115}]}.
    {badmatch,{x,0}}.
  {label,1321}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",2114}]}.
    {badmatch,{x,0}}.
  {label,1322}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",2113}]}.
    {badmatch,{x,0}}.
  {label,1323}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",2112}]}.
    {badmatch,{x,0}}.


{function, lgettext, 3, 1325}.
  {label,1324}.
    {line,[{location,"bs_match_r23_SUITE.erl",2119}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,lgettext},3}.
  {label,1325}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1324},3,[{x,0}],{x,3}}.
    {bs_get_position,{x,3},{x,0},4}.
    {test,bs_match_string,{f,1335},[{x,3},16,{string,<<"de">>}]}.
    {test,bs_test_tail2,{f,1335},[{x,3},0]}.
    {test,bs_start_match3,{f,1335},4,[{x,1}],{x,4}}.
    {test,bs_get_integer2,
          {f,1335},
          5,
          [{x,4},
           {integer,16},
           1,
           {field_flags,[{anno,[2119,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {select_val,{x,5},
                {f,1335},
                {list,[{integer,25701},{f,1328},{integer,28257},{f,1326}]}}.
  {label,1326}.
    {test,bs_match_string,{f,1335},[{x,4},64,{string,<<"vigation">>}]}.
    {test,bs_test_tail2,{f,1335},[{x,4},0]}.
    {test,bs_start_match3,{f,1335},4,[{x,2}],{x,4}}.
    {test,bs_match_string,{f,1335},[{x,4},16,{string,<<"Re">>}]}.
    {test,bs_get_integer2,
          {f,1335},
          5,
          [{x,4},
           {integer,16},
           1,
           {field_flags,[{anno,[2129,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {select_val,{x,5},
                {f,1335},
                {list,[{integer,29551},{f,1327},{integer,29557},{f,1329}]}}.
  {label,1327}.
    {test,bs_match_string,{f,1335},[{x,4},40,{string,<<"urces">>}]}.
    {test,bs_test_tail2,{f,1335},[{x,4},0]}.
    {move,{literal,{ok,<<"Ressourcen">>}},{x,0}}.
    return.
  {label,1328}.
    {test,bs_match_string,{f,1335},[{x,4},40,{string,<<"fault">>}]}.
    {test,bs_test_tail2,{f,1335},[{x,4},0]}.
    {test,bs_start_match3,{f,1335},4,[{x,2}],{x,4}}.
    {test,bs_match_string,{f,1335},[{x,4},16,{string,<<"Re">>}]}.
    {test,bs_get_integer2,
          {f,1335},
          5,
          [{x,4},
           {integer,16},
           1,
           {field_flags,[{anno,[2119,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {select_val,{x,5},
                {f,1335},
                {list,[{integer,28015},
                       {f,1331},
                       {integer,29541},
                       {f,1330},
                       {integer,29557},
                       {f,1329}]}}.
  {label,1329}.
    {test,bs_match_string,{f,1335},[{x,4},24,{string,<<"lts">>}]}.
    {test,bs_test_tail2,{f,1335},[{x,4},0]}.
    {move,{literal,{ok,<<"Ergebnisse">>}},{x,0}}.
    return.
  {label,1330}.
    {test,bs_match_string,{f,1335},[{x,4},48,{string,<<"rvatio">>}]}.
    {test,bs_test_tail2,{f,1335},[{x,4},0]}.
    {move,{literal,{ok,<<"a">>}},{x,0}}.
    return.
  {label,1331}.
    {test,bs_match_string,{f,1335},[{x,4},16,{string,<<"ve">>}]}.
    {bs_get_position,{x,4},{x,5},5}.
    {test,bs_match_string,{f,1334},[{x,4},48,{string,<<" from ">>}]}.
    {test,bs_get_integer2,
          {f,1335},
          6,
          [{x,4},
           {integer,16},
           1,
           {field_flags,[{anno,[2121,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {select_val,{x,6},
                {f,1334},
                {list,[{integer,27753},{f,1333},{integer,29800},{f,1332}]}}.
  {label,1332}.
    {test,bs_match_string,{f,1335},[{x,4},48,{string,<<"e list">>}]}.
    {test,bs_test_tail2,{f,1334},[{x,4},0]}.
    {move,{literal,{ok,<<"a">>}},{x,0}}.
    return.
  {label,1333}.
    {test,bs_match_string,{f,1335},[{x,4},16,{string,<<"st">>}]}.
    {test,bs_test_tail2,{f,1334},[{x,4},0]}.
    {move,{literal,{ok,<<"a">>}},{x,0}}.
    return.
  {label,1334}.
    {bs_set_position,{x,4},{x,5}}.
    {test,bs_test_tail2,{f,1335},[{x,4},0]}.
    {move,{literal,{ok,<<"a">>}},{x,0}}.
    return.
  {label,1335}.
    {bs_set_position,{x,3},{x,0}}.
    {bs_get_tail,{x,3},{x,0},4}.
    {jump,{f,1324}}.


{function, beam_bsm, 1, 1337}.
  {label,1336}.
    {line,[{location,"bs_match_r23_SUITE.erl",2135}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,beam_bsm},1}.
  {label,1337}.
    {allocate,0,0}.
    {move,{literal,[1,0,1,1]},{x,1}}.
    {move,{literal,<<11:4>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2136}]}.
    {call,2,{f,1349}}. % check_bitstring_list/2
    {test,is_eq_exact,{f,1347},[{x,0},{atom,true}]}.
    {move,{literal,[0]},{x,1}}.
    {move,{literal,<<11:4>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2137}]}.
    {call,2,{f,1349}}. % check_bitstring_list/2
    {test,is_eq_exact,{f,1346},[{x,0},{atom,false}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2139}]}.
    {call,1,{f,1353}}. % bsm_validate_scheme/1
    {test,is_eq_exact,{f,1345},[{x,0},{atom,true}]}.
    {move,{literal,<<5,10>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2140}]}.
    {call,1,{f,1353}}. % bsm_validate_scheme/1
    {test,is_eq_exact,{f,1344},[{x,0},{atom,true}]}.
    {move,{literal,<<5,10,11,12>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2141}]}.
    {call,1,{f,1353}}. % bsm_validate_scheme/1
    {test,is_eq_exact,{f,1343},[{x,0},{atom,false}]}.
    {move,nil,{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2142}]}.
    {call,1,{f,1353}}. % bsm_validate_scheme/1
    {test,is_eq_exact,{f,1342},[{x,0},{atom,true}]}.
    {move,{literal,[5,10]},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2143}]}.
    {call,1,{f,1353}}. % bsm_validate_scheme/1
    {test,is_eq_exact,{f,1341},[{x,0},{atom,true}]}.
    {move,{literal,[5,6,7]},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2144}]}.
    {call,1,{f,1353}}. % bsm_validate_scheme/1
    {test,is_eq_exact,{f,1340},[{x,0},{atom,false}]}.
    {move,nil,{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2146}]}.
    {call,2,{f,1365}}. % bsm_must_save_and_not_save/2
    {test,is_eq_exact,{f,1339},[{x,0},{literal,<<1,2,3>>}]}.
    {make_fun2,{f,2073},0,0,0}.
    {test_heap,4,1}.
    {put_list,{x,0},nil,{x,1}}.
    {put_list,{x,0},{x,1},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2148}]}.
    {call,2,{f,1365}}. % bsm_must_save_and_not_save/2
    {test,is_eq_exact,{f,1338},[{x,0},{literal,[2,4|<<3>>]}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1338}.
    {badmatch,{x,0}}.
  {label,1339}.
    {line,[{location,"bs_match_r23_SUITE.erl",2146}]}.
    {badmatch,{x,0}}.
  {label,1340}.
    {line,[{location,"bs_match_r23_SUITE.erl",2144}]}.
    {badmatch,{x,0}}.
  {label,1341}.
    {line,[{location,"bs_match_r23_SUITE.erl",2143}]}.
    {badmatch,{x,0}}.
  {label,1342}.
    {line,[{location,"bs_match_r23_SUITE.erl",2142}]}.
    {badmatch,{x,0}}.
  {label,1343}.
    {line,[{location,"bs_match_r23_SUITE.erl",2141}]}.
    {badmatch,{x,0}}.
  {label,1344}.
    {line,[{location,"bs_match_r23_SUITE.erl",2140}]}.
    {badmatch,{x,0}}.
  {label,1345}.
    {line,[{location,"bs_match_r23_SUITE.erl",2139}]}.
    {badmatch,{x,0}}.
  {label,1346}.
    {line,[{location,"bs_match_r23_SUITE.erl",2137}]}.
    {badmatch,{x,0}}.
  {label,1347}.
    {line,[{location,"bs_match_r23_SUITE.erl",2136}]}.
    {badmatch,{x,0}}.


{function, check_bitstring_list, 2, 1349}.
  {label,1348}.
    {line,[{location,"bs_match_r23_SUITE.erl",2152}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,check_bitstring_list},2}.
  {label,1349}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1351},2,[{x,0}],{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {test,bs_get_integer2,
          {f,1350},
          3,
          [{x,0},
           {integer,1},
           1,
           {field_flags,[{anno,[2152,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_nonempty_list,{f,1350},[{x,1}]}.
    {get_list,{x,1},{x,4},{x,5}}.
    {test,is_eq_exact,{f,1350},[{x,4},{x,3}]}.
    {move,{x,5},{x,1}}.
    {call_only,2,{f,1349}}. % check_bitstring_list/2
  {label,1350}.
    {bs_set_position,{x,0},{x,2}}.
    {test,bs_test_tail2,{f,1351},[{x,0},0]}.
    {bif,'=:=',{f,0},[{x,1},nil],{x,0}}.
    return.
  {label,1351}.
    {move,{atom,false},{x,0}}.
    return.


{function, bsm_validate_scheme, 1, 1353}.
  {label,1352}.
    {line,[{location,"bs_match_r23_SUITE.erl",2159}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,bsm_validate_scheme},1}.
  {label,1353}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1356},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_test_tail2,{f,1354},[{x,1},0]}.
    {move,{atom,true},{x,0}}.
    return.
  {label,1354}.
    {test,bs_get_integer2,
          {f,1355},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[2166,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_unit,{f,1355},[{x,1},8]}.
    {allocate,1,3}.
    {move,{x,1},{y,0}}.
    {move,{x,2},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2167}]}.
    {call,1,{f,1363}}. % bsm_is_scheme/1
    {select_val,{x,0},
                {f,1360},
                {list,[{atom,false},{f,1358},{atom,true},{f,1357}]}}.
  {label,1355}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,1352}}.
  {label,1356}.
    {test,is_nonempty_list,{f,1359},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{x,0},{y,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2161}]}.
    {call,1,{f,1363}}. % bsm_is_scheme/1
    {select_val,{x,0},
                {f,1361},
                {list,[{atom,false},{f,1358},{atom,true},{f,1357}]}}.
  {label,1357}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,1353},1}. % bsm_validate_scheme/1
  {label,1358}.
    {deallocate,1}.
    return.
  {label,1359}.
    {test,is_nil,{f,1352},[{x,0}]}.
    {move,{atom,true},{x,0}}.
    return.
  {label,1360}.
    {line,[{location,"bs_match_r23_SUITE.erl",2167}]}.
    {case_end,{x,0}}.
  {label,1361}.
    {line,[{location,"bs_match_r23_SUITE.erl",2161}]}.
    {case_end,{x,0}}.


{function, bsm_is_scheme, 1, 1363}.
  {label,1362}.
    {line,[{location,"bs_match_r23_SUITE.erl",2172}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,bsm_is_scheme},1}.
  {label,1363}.
    {line,[{location,"bs_match_r23_SUITE.erl",2173}]}.
    {gc_bif,'rem',{f,0},1,[{x,0},{integer,5}],{x,0}}.
    {bif,'=:=',{f,0},[{x,0},{integer,0}],{x,0}}.
    return.


{function, bsm_must_save_and_not_save, 2, 1365}.
  {label,1364}.
    {line,[{location,"bs_match_r23_SUITE.erl",2176}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,bsm_must_save_and_not_save},2}.
  {label,1365}.
    {test,is_nil,{f,1366},[{x,1}]}.
    return.
  {label,1366}.
    {test,bs_start_match3,{f,1364},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,1364},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[2178,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,1364},
          4,
          [{x,2},
           {atom,all},
           8,
           {field_flags,[{anno,[2178,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_nonempty_list,{f,1364},[{x,1}]}.
    {allocate,2,4}.
    {move,{x,2},{y,1}}.
    {get_list,{x,1},{x,0},{y,0}}.
    {move,{x,0},{x,1}}.
    {move,{x,3},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2179}]}.
    {call_fun,1}.
    {swap,{y,1},{x,0}}.
    {move,{y,0},{x,1}}.
    {trim,1,1}.
    {call,2,{f,1365}}. % bsm_must_save_and_not_save/2
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.


{function, guard, 1, 1368}.
  {label,1367}.
    {line,[{location,"bs_match_r23_SUITE.erl",2183}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,guard},1}.
  {label,1368}.
    {allocate,0,0}.
    {move,{literal,{a,b}},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2184}]}.
    {call,1,{f,1968}}. % id/1
    {move,{literal,{1,2,3}},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2185}]}.
    {call,2,{f,1372}}. % guard_1/2
    {test,is_eq_exact,{f,1370},[{x,0},{atom,ok}]}.
    {move,{literal,#{}},{x,1}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2186}]}.
    {call,2,{f,1375}}. % guard_2/2
    {test,is_eq_exact,{f,1369},[{x,0},{atom,ok}]}.
    {deallocate,0}.
    return.
  {label,1369}.
    {badmatch,{x,0}}.
  {label,1370}.
    {line,[{location,"bs_match_r23_SUITE.erl",2185}]}.
    {badmatch,{x,0}}.


{function, guard_1, 2, 1372}.
  {label,1371}.
    {line,[{location,"bs_match_r23_SUITE.erl",2190}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,guard_1},2}.
  {label,1372}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1371},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_get_integer2,
          {f,1373},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[2190,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,1373},
          4,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[2190,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_integer2,
          {f,1373},
          5,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[2190,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_test_tail2,{f,1373},[{x,2},0]}.
    {test_heap,4,6}.
    {put_tuple2,{x,3},{list,[{x,3},{x,4},{x,5}]}}.
    {test,is_eq_exact,{f,1373},[{x,1},{x,3}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1373}.
    {bs_set_position,{x,2},{x,0}}.
    {bs_get_tail,{x,2},{x,0},3}.
    {jump,{f,1371}}.


{function, guard_2, 2, 1375}.
  {label,1374}.
    {line,[{location,"bs_match_r23_SUITE.erl",2194}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,guard_2},2}.
  {label,1375}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1374},2,[{x,0}],{x,2}}.
    {test,bs_test_tail2,{f,1376},[{x,2},8]}.
    {test,is_map,{f,1376},[{x,1}]}.
    {put_map_assoc,{f,0},{x,1},{x,0},3,{list,[nil,{x,1}]}}.
    {test,is_eq_exact,{f,1376},[{x,0},{literal,#{[] => #{}}}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1376}.
    {bs_get_tail,{x,2},{x,0},3}.
    {jump,{f,1374}}.


{function, is_ascii, 1, 1378}.
  {label,1377}.
    {line,[{location,"bs_match_r23_SUITE.erl",2197}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,is_ascii},1}.
  {label,1378}.
    {allocate_zero,2,0}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2198}]}.
    {call,1,{f,1387}}. % do_is_ascii/1
    {test,is_eq_exact,{f,1385},[{x,0},{atom,true}]}.
    {move,{literal,<<"string">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",2199}]}.
    {call,1,{f,1387}}. % do_is_ascii/1
    {test,is_eq_exact,{f,1384},[{x,0},{atom,true}]}.
    {move,{literal,<<208,128>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",2200}]}.
    {call,1,{f,1387}}. % do_is_ascii/1
    {test,is_eq_exact,{f,1383},[{x,0},{atom,false}]}.
    {'catch',{y,1},{f,1379}}.
    {move,{literal,<<65,0:3>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",2201}]}.
    {call,1,{f,1387}}. % do_is_ascii/1
  {label,1379}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,1382},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1382},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1382},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1382},[{x,1},{atom,function_clause}]}.
    {'catch',{y,0},{f,1380}}.
    {move,{literal,<<128,0:3>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",2202}]}.
    {call,1,{f,1387}}. % do_is_ascii/1
  {label,1380}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1381},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1381},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1381},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1381},[{x,1},{atom,function_clause}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,1381}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",2202}]}.
    {badmatch,{x,0}}.
  {label,1382}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",2201}]}.
    {badmatch,{x,0}}.
  {label,1383}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",2200}]}.
    {badmatch,{x,0}}.
  {label,1384}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",2199}]}.
    {badmatch,{x,0}}.
  {label,1385}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",2198}]}.
    {badmatch,{x,0}}.


{function, do_is_ascii, 1, 1387}.
  {label,1386}.
    {line,[{location,"bs_match_r23_SUITE.erl",2205}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,do_is_ascii},1}.
  {label,1387}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1386},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_test_tail2,{f,1388},[{x,1},0]}.
    {move,{atom,true},{x,0}}.
    return.
  {label,1388}.
    {test,bs_get_integer2,
          {f,1390},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[2207,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_unit,{f,1390},[{x,1},8]}.
    {test,is_ge,{f,1389},[{x,2},{integer,128}]}.
    {move,{atom,false},{x,0}}.
    return.
  {label,1389}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,1387}}. % do_is_ascii/1
  {label,1390}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,1386}}.


{function, non_opt_eq, 1, 1392}.
  {label,1391}.
    {line,[{location,"bs_match_r23_SUITE.erl",2214}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,non_opt_eq},1}.
  {label,1392}.
    {allocate,0,0}.
    {move,{literal,<<>>},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2215}]}.
    {call,2,{f,1397}}. % non_opt_eq/2
    {test,is_eq_exact,{f,1395},[{x,0},{atom,true}]}.
    {move,{literal,<<"a">>},{x,1}}.
    {move,{literal,"a"},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2216}]}.
    {call,2,{f,1397}}. % non_opt_eq/2
    {test,is_eq_exact,{f,1394},[{x,0},{atom,true}]}.
    {move,{literal,<<"b">>},{x,1}}.
    {move,{literal,"a"},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2217}]}.
    {call,2,{f,1397}}. % non_opt_eq/2
    {test,is_eq_exact,{f,1393},[{x,0},{atom,false}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1393}.
    {badmatch,{x,0}}.
  {label,1394}.
    {line,[{location,"bs_match_r23_SUITE.erl",2216}]}.
    {badmatch,{x,0}}.
  {label,1395}.
    {line,[{location,"bs_match_r23_SUITE.erl",2215}]}.
    {badmatch,{x,0}}.


{function, non_opt_eq, 2, 1397}.
  {label,1396}.
    {line,[{location,"bs_match_r23_SUITE.erl",2223}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,non_opt_eq},2}.
  {label,1397}.
    {'%',{var_info,{x,1},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1396},2,[{x,1}],{x,2}}.
    {bs_get_position,{x,2},{x,1},3}.
    {test,bs_get_integer2,
          {f,1399},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[2223,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_unit,{f,1399},[{x,2},8]}.
    {test,is_nonempty_list,{f,1399},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_eq_exact,{f,1398},[{x,3},{x,1}]}.
    {move,{x,2},{x,1}}.
    {call_only,2,{f,1397}}. % non_opt_eq/2
  {label,1398}.
    {move,{atom,false},{x,0}}.
    return.
  {label,1399}.
    {bs_set_position,{x,2},{x,1}}.
    {test,bs_test_tail2,{f,1400},[{x,2},0]}.
    {test,is_nil,{f,1400},[{x,0}]}.
    {move,{atom,true},{x,0}}.
    return.
  {label,1400}.
    {bs_get_tail,{x,2},{x,1},3}.
    {jump,{f,1396}}.


{function, erl_689, 1, 1402}.
  {label,1401}.
    {line,[{location,"bs_match_r23_SUITE.erl",2232}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,erl_689},1}.
  {label,1402}.
    {allocate,0,0}.
    {move,{atom,bs_match_r23_SUITE},{x,1}}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2233}]}.
    {call,2,{f,1408}}. % do_erl_689_1/2
    {test,is_eq_exact,{f,1406},[{x,0},{literal,{{0,0,0},<<>>}}]}.
    {move,{atom,bs_match_r23_SUITE},{x,1}}.
    {move,{literal,<<4,226,7,8,7>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2234}]}.
    {call,2,{f,1408}}. % do_erl_689_1/2
    {test,is_eq_exact,{f,1405},[{x,0},{literal,{{2018,8,7},<<>>}}]}.
    {move,{literal,<<0>>},{x,1}}.
    {move,{atom,bs_match_r23_SUITE},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2235}]}.
    {call,2,{f,1411}}. % do_erl_689_2/2
    {test,is_eq_exact,{f,1404},[{x,0},{literal,{{0,0,0},<<>>}}]}.
    {move,{literal,<<4,226,7,8,7>>},{x,1}}.
    {move,{atom,bs_match_r23_SUITE},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2236}]}.
    {call,2,{f,1411}}. % do_erl_689_2/2
    {test,is_eq_exact,{f,1403},[{x,0},{literal,{{2018,8,7},<<>>}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1403}.
    {badmatch,{x,0}}.
  {label,1404}.
    {line,[{location,"bs_match_r23_SUITE.erl",2235}]}.
    {badmatch,{x,0}}.
  {label,1405}.
    {line,[{location,"bs_match_r23_SUITE.erl",2234}]}.
    {badmatch,{x,0}}.
  {label,1406}.
    {line,[{location,"bs_match_r23_SUITE.erl",2233}]}.
    {badmatch,{x,0}}.


{function, do_erl_689_1, 2, 1408}.
  {label,1407}.
    {line,[{location,"bs_match_r23_SUITE.erl",2239}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,do_erl_689_1},2}.
  {label,1408}.
    {allocate,2,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2240}]}.
    {call,2,{f,1414}}. % do_erl_689_1a/2
    {swap,{y,1},{x,0}}.
    {move,{y,0},{x,1}}.
    {trim,1,1}.
    {line,[{location,"bs_match_r23_SUITE.erl",2241}]}.
    {call,2,{f,1419}}. % do_erl_689_1b/2
    {test,is_eq_exact,{f,1409},[{x,0},{y,0}]}.
    {deallocate,1}.
    return.
  {label,1409}.
    {badmatch,{x,0}}.


{function, do_erl_689_2, 2, 1411}.
  {label,1410}.
    {line,[{location,"bs_match_r23_SUITE.erl",2243}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,do_erl_689_2},2}.
  {label,1411}.
    {allocate,2,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2244}]}.
    {call,2,{f,1424}}. % do_erl_689_2a/2
    {swap,{y,1},{x,0}}.
    {move,{y,0},{x,1}}.
    {trim,1,1}.
    {line,[{location,"bs_match_r23_SUITE.erl",2245}]}.
    {call,2,{f,1429}}. % do_erl_689_2b/2
    {test,is_eq_exact,{f,1412},[{x,0},{y,0}]}.
    {deallocate,1}.
    return.
  {label,1412}.
    {badmatch,{x,0}}.


{function, do_erl_689_1a, 2, 1414}.
  {label,1413}.
    {line,[{location,"bs_match_r23_SUITE.erl",2247}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,do_erl_689_1a},2}.
  {label,1414}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1413},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_get_integer2,
          {f,1417},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[2247,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_position,{x,2},{x,4},4}.
    {test,bs_test_unit,{f,1417},[{x,2},8]}.
    {test,is_eq_exact,{f,1415},[{x,3},{integer,0}]}.
    {bs_get_tail,{x,2},{x,0},3}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{literal,{0,0,0}},{x,0}]}}.
    return.
  {label,1415}.
    {test,bs_get_integer2,
          {f,1416},
          5,
          [{x,2},
           {integer,16},
           1,
           {field_flags,[{anno,[2253,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,little]}],
          {x,0}}.
    {test,bs_get_integer2,
          {f,1416},
          5,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[2253,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_get_integer2,
          {f,1416},
          5,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[2253,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_get_binary2,
          {f,1416},
          6,
          [{x,2},
           {atom,all},
           8,
           {field_flags,[{anno,[2253,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,is_eq_exact,{f,1416},[{x,3},{integer,4}]}.
    {test_heap,7,7}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1},{x,5}]}}.
    {put_tuple2,{x,0},{list,[{x,0},{x,6}]}}.
    return.
  {label,1416}.
    {bs_set_position,{x,2},{x,4}}.
    {bs_get_tail,{x,2},{x,0},4}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,0},{x,3}]}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2248}]}.
    {case_end,{x,0}}.
  {label,1417}.
    {bs_set_position,{x,2},{x,0}}.
    {bs_get_tail,{x,2},{x,0},3}.
    {jump,{f,1413}}.


{function, do_erl_689_1b, 2, 1419}.
  {label,1418}.
    {line,[{location,"bs_match_r23_SUITE.erl",2257}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,do_erl_689_1b},2}.
  {label,1419}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1418},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_get_integer2,
          {f,1422},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[2257,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_position,{x,2},{x,4},4}.
    {test,bs_test_unit,{f,1422},[{x,2},8]}.
    {test,is_eq_exact,{f,1420},[{x,3},{integer,0}]}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2262}]}.
    {call,1,{f,1968}}. % id/1
    {bs_get_tail,{y,0},{x,0},0}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{literal,{0,0,0}},{x,0}]}}.
    {deallocate,1}.
    return.
  {label,1420}.
    {test,bs_get_integer2,
          {f,1421},
          5,
          [{x,2},
           {integer,16},
           1,
           {field_flags,[{anno,[2264,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,little]}],
          {x,0}}.
    {test,bs_get_integer2,
          {f,1421},
          5,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[2264,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_get_integer2,
          {f,1421},
          5,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[2264,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_get_binary2,
          {f,1421},
          6,
          [{x,2},
           {atom,all},
           8,
           {field_flags,[{anno,[2264,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,is_eq_exact,{f,1421},[{x,3},{integer,4}]}.
    {allocate,4,7}.
    {move,{x,6},{y,0}}.
    {move,{x,5},{y,1}}.
    {move,{x,1},{y,2}}.
    {move,{x,0},{y,3}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2265}]}.
    {call,1,{f,1968}}. % id/1
    {test_heap,7,0}.
    {put_tuple2,{x,0},{list,[{y,3},{y,2},{y,1}]}}.
    {put_tuple2,{x,0},{list,[{x,0},{y,0}]}}.
    {deallocate,4}.
    return.
  {label,1421}.
    {bs_set_position,{x,2},{x,4}}.
    {bs_get_tail,{x,2},{x,0},4}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,0},{x,3}]}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2258}]}.
    {case_end,{x,0}}.
  {label,1422}.
    {bs_set_position,{x,2},{x,0}}.
    {bs_get_tail,{x,2},{x,0},3}.
    {jump,{f,1418}}.


{function, do_erl_689_2a, 2, 1424}.
  {label,1423}.
    {line,[{location,"bs_match_r23_SUITE.erl",2269}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,do_erl_689_2a},2}.
  {label,1424}.
    {'%',{var_info,{x,1},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1423},2,[{x,1}],{x,2}}.
    {bs_get_position,{x,2},{x,1},3}.
    {test,bs_get_integer2,
          {f,1427},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[2269,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_position,{x,2},{x,4},4}.
    {test,bs_test_unit,{f,1427},[{x,2},8]}.
    {test,is_eq_exact,{f,1425},[{x,3},{integer,0}]}.
    {bs_get_tail,{x,2},{x,0},3}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{literal,{0,0,0}},{x,0}]}}.
    return.
  {label,1425}.
    {test,bs_get_integer2,
          {f,1426},
          5,
          [{x,2},
           {integer,16},
           1,
           {field_flags,[{anno,[2275,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,little]}],
          {x,0}}.
    {test,bs_get_integer2,
          {f,1426},
          5,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[2275,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_get_integer2,
          {f,1426},
          5,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[2275,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_get_binary2,
          {f,1426},
          6,
          [{x,2},
           {atom,all},
           8,
           {field_flags,[{anno,[2275,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,is_eq_exact,{f,1426},[{x,3},{integer,4}]}.
    {test_heap,7,7}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1},{x,5}]}}.
    {put_tuple2,{x,0},{list,[{x,0},{x,6}]}}.
    return.
  {label,1426}.
    {bs_set_position,{x,2},{x,4}}.
    {bs_get_tail,{x,2},{x,0},4}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,3},{x,0}]}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2270}]}.
    {case_end,{x,0}}.
  {label,1427}.
    {bs_set_position,{x,2},{x,1}}.
    {bs_get_tail,{x,2},{x,1},3}.
    {jump,{f,1423}}.


{function, do_erl_689_2b, 2, 1429}.
  {label,1428}.
    {line,[{location,"bs_match_r23_SUITE.erl",2279}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,do_erl_689_2b},2}.
  {label,1429}.
    {'%',{var_info,{x,1},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1428},2,[{x,1}],{x,2}}.
    {bs_get_position,{x,2},{x,1},3}.
    {test,bs_get_integer2,
          {f,1432},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[2279,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_position,{x,2},{x,4},4}.
    {test,bs_test_unit,{f,1432},[{x,2},8]}.
    {test,is_eq_exact,{f,1430},[{x,3},{integer,0}]}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2284}]}.
    {call,1,{f,1968}}. % id/1
    {bs_get_tail,{y,0},{x,0},0}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{literal,{0,0,0}},{x,0}]}}.
    {deallocate,1}.
    return.
  {label,1430}.
    {test,bs_get_integer2,
          {f,1431},
          5,
          [{x,2},
           {integer,16},
           1,
           {field_flags,[{anno,[2286,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,little]}],
          {x,0}}.
    {test,bs_get_integer2,
          {f,1431},
          5,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[2286,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_get_integer2,
          {f,1431},
          5,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[2286,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_get_binary2,
          {f,1431},
          6,
          [{x,2},
           {atom,all},
           8,
           {field_flags,[{anno,[2286,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,is_eq_exact,{f,1431},[{x,3},{integer,4}]}.
    {allocate,4,7}.
    {move,{x,6},{y,0}}.
    {move,{x,5},{y,1}}.
    {move,{x,1},{y,2}}.
    {move,{x,0},{y,3}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2287}]}.
    {call,1,{f,1968}}. % id/1
    {test_heap,7,0}.
    {put_tuple2,{x,0},{list,[{y,3},{y,2},{y,1}]}}.
    {put_tuple2,{x,0},{list,[{x,0},{y,0}]}}.
    {deallocate,4}.
    return.
  {label,1431}.
    {bs_set_position,{x,2},{x,4}}.
    {bs_get_tail,{x,2},{x,0},4}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,3},{x,0}]}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2280}]}.
    {case_end,{x,0}}.
  {label,1432}.
    {bs_set_position,{x,2},{x,1}}.
    {bs_get_tail,{x,2},{x,1},3}.
    {jump,{f,1428}}.


{function, bs_start_match2_defs, 1, 1434}.
  {label,1433}.
    {line,[{location,"bs_match_r23_SUITE.erl",2293}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,bs_start_match2_defs},1}.
  {label,1434}.
    {allocate,0,0}.
    {move,{literal,<<"hello">>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2294}]}.
    {call,1,{f,1438}}. % api_url/1
    {test,is_eq_exact,
          {f,1436},
          [{x,0},{literal,{<<"http://127.0.0.1:1234/vsaas/hello">>}}]}.
    {move,{literal,{https,"hello"}},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2295}]}.
    {call,1,{f,1438}}. % api_url/1
    {test,is_eq_exact,
          {f,1435},
          [{x,0},{literal,{"https://127.0.0.1:4321/vsaas/hello"}}]}.
    {deallocate,0}.
    return.
  {label,1435}.
    {badmatch,{x,0}}.
  {label,1436}.
    {line,[{location,"bs_match_r23_SUITE.erl",2294}]}.
    {badmatch,{x,0}}.


{function, api_url, 1, 1438}.
  {label,1437}.
    {line,[{location,"bs_match_r23_SUITE.erl",2297}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,api_url},1}.
  {label,1438}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1440},1,[{x,0}],{x,1}}.
    {test,bs_test_unit,{f,1439},[{x,1},8]}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_r23_SUITE.erl",2299}]}.
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{integer,28},8],{x,1}}.
    {gc_bif,byte_size,{f,0},2,[{x,0}],{x,2}}.
    {bs_add,{f,0},[{x,1},{x,2},8],{x,1}}.
    {bs_init_bits,{f,0},{x,1},2,2,{field_flags,[]},{x,1}}.
    {bs_put_string,28,{string,<<"http://127.0.0.1:1234/vsaas/">>}}.
    {bs_put_binary,{f,0},{atom,all},8,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,0}}.
    {put_tuple2,{x,0},{list,[{x,0}]}}.
    return.
  {label,1439}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_r23_SUITE.erl",2298}]}.
    {case_end,{x,0}}.
  {label,1440}.
    {test,is_tagged_tuple,{f,1441},[{x,0},2,{atom,https}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1441},[{x,1},{atom,https}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_nonempty_list,{f,1441},[{x,1}]}.
    {allocate,0,2}.
    {move,{literal,"https://127.0.0.1:4321/vsaas/"},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2300}]}.
    {call_ext,2,{extfunc,erlang,'++',2}}.
    {test_heap,2,1}.
    {put_tuple2,{x,0},{list,[{x,0}]}}.
    {deallocate,0}.
    return.
  {label,1441}.
    {line,[{location,"bs_match_r23_SUITE.erl",2298}]}.
    {case_end,{x,0}}.


{function, check, 2, 1443}.
  {label,1442}.
    {line,[{location,"bs_match_r23_SUITE.erl",2303}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,check},2}.
  {label,1443}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2304}]}.
    {call_fun,0}.
    {test,is_eq_exact,{f,1444},[{x,0},{y,0}]}.
    {deallocate,1}.
    return.
  {label,1444}.
    {badmatch,{x,0}}.


{function, expression_before_match, 1, 1446}.
  {label,1445}.
    {line,[{location,"bs_match_r23_SUITE.erl",2308}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,expression_before_match},1}.
  {label,1446}.
    {test,is_list,{f,1445},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<0,1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2309}]}.
    {call,1,{f,1968}}. % id/1
    {test,bs_start_match3,{f,1448},1,[{x,0}],{x,1}}.
    {test,bs_skip_bits2,
          {f,1448},
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[2309,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,1448},
          2,
          [{x,1},
           {atom,all},
           8,
           {field_flags,[{anno,[2309,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2310}]}.
    {call,1,{f,1450}}. % expression_before_match_1/1
    {test,is_eq_exact,{f,1447},[{x,0},{literal,{1,<<2,3>>}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1447}.
    {badmatch,{x,0}}.
  {label,1448}.
    {line,[{location,"bs_match_r23_SUITE.erl",2309}]}.
    {badmatch,{x,0}}.


{function, expression_before_match_1, 1, 1450}.
  {label,1449}.
    {line,[{location,"bs_match_r23_SUITE.erl",2313}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,expression_before_match_1},1}.
  {label,1450}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2314}]}.
    {call,1,{f,1968}}. % id/1
    {test,bs_start_match3,{f,1452},1,[{y,0}],{x,1}}.
    {test,bs_match_string,{f,1451},[{x,1},8,{string,<<1>>}]}.
    {test,bs_get_binary2,
          {f,1452},
          2,
          [{x,1},
           {atom,all},
           8,
           {field_flags,[{anno,[2316,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {deallocate,1}.
    return.
  {label,1451}.
    {test,bs_test_tail2,{f,1452},[{x,1},0]}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{x,0},{atom,baz}]}}.
    {deallocate,1}.
    return.
  {label,1452}.
    {line,[{location,"bs_match_r23_SUITE.erl",2315}]}.
    {case_end,{y,0}}.


{function, restore_on_call, 1, 1454}.
  {label,1453}.
    {line,[{location,"bs_match_r23_SUITE.erl",2321}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,restore_on_call},1}.
  {label,1454}.
    {test,is_list,{f,1453},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<0,1,2>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2322}]}.
    {call,1,{f,1458}}. % restore_on_call_plain/1
    {test,is_eq_exact,{f,1456},[{x,0},{atom,ok}]}.
    {move,{literal,<<0,120>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2323}]}.
    {call,1,{f,1467}}. % restore_on_call_match/1
    {test,is_eq_exact,{f,1455},[{x,0},{literal,<<"x">>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1455}.
    {badmatch,{x,0}}.
  {label,1456}.
    {line,[{location,"bs_match_r23_SUITE.erl",2322}]}.
    {badmatch,{x,0}}.


{function, restore_on_call_plain, 1, 1458}.
  {label,1457}.
    {line,[{location,"bs_match_r23_SUITE.erl",2326}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,restore_on_call_plain},1}.
  {label,1458}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1457},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_match_string,{f,1459},[{x,1},8,{string,<<0>>}]}.
    {bs_get_position,{x,1},{x,2},2}.
    {test,bs_test_unit,{f,1459},[{x,1},8]}.
    {allocate,2,3}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2327}]}.
    {call,1,{f,1463}}. % restore_on_call_plain_1/1
    {test,is_eq_exact,{f,1461},[{x,0},{literal,<<2>>}]}.
    {bs_set_position,{y,1},{y,0}}.
    {move,{y,1},{x,0}}.
    {trim,2,0}.
    {line,[{location,"bs_match_r23_SUITE.erl",2329}]}.
    {call,1,{f,1463}}. % restore_on_call_plain_1/1
    {test,is_eq_exact,{f,1460},[{x,0},{literal,<<2>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1459}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,1457}}.
  {label,1460}.
    {badmatch,{x,0}}.
  {label,1461}.
    {line,[{location,"bs_match_r23_SUITE.erl",2327}]}.
    {badmatch,{x,0}}.


{function, restore_on_call_plain_1, 1, 1463}.
  {label,1462}.
    {line,[{location,"bs_match_r23_SUITE.erl",2332}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,restore_on_call_plain_1},1}.
  {label,1463}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1465},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_match_string,{f,1464},[{x,1},8,{string,<<1>>}]}.
    {test,bs_get_binary2,
          {f,1464},
          2,
          [{x,1},
           {atom,all},
           8,
           {field_flags,[{anno,[2332,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {move,{x,2},{x,0}}.
    return.
  {label,1464}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    return.
  {label,1465}.
    return.


{function, restore_on_call_match, 1, 1467}.
  {label,1466}.
    {line,[{location,"bs_match_r23_SUITE.erl",2337}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,restore_on_call_match},1}.
  {label,1467}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1466},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_match_string,{f,1469},[{x,1},8,{string,<<0>>}]}.
    {bs_get_position,{x,1},{x,2},2}.
    {test,bs_test_unit,{f,1469},[{x,1},8]}.
    {allocate,2,3}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2338}]}.
    {call,1,{f,1472}}. % skip_until_zero/1
    {test,is_tuple,{f,1468},[{x,0}]}.
    {test,is_tagged_tuple,{f,1470},[{x,0},2,{atom,skipped}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1470},[{x,1},{atom,skipped}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {deallocate,2}.
    return.
  {label,1468}.
    {test,is_eq_exact,{f,1470},[{x,0},{atom,not_found}]}.
    {bs_set_position,{y,1},{y,0}}.
    {bs_get_tail,{y,1},{x,0},0}.
    {deallocate,2}.
    return.
  {label,1469}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,1466}}.
  {label,1470}.
    {case_end,{x,0}}.


{function, skip_until_zero, 1, 1472}.
  {label,1471}.
    {line,[{location,"bs_match_r23_SUITE.erl",2347}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,skip_until_zero},1}.
  {label,1472}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1474},1,[{x,0}],{x,0}}.
    {test,bs_get_integer2,
          {f,1474},
          1,
          [{x,0},
           {integer,8},
           1,
           {field_flags,[{anno,[2347,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,is_eq_exact,{f,1473},[{x,1},{integer,0}]}.
    {test,bs_get_binary2,
          {f,1473},
          1,
          [{x,0},
           {atom,all},
           8,
           {field_flags,[{anno,[2347,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{atom,skipped},{x,1}]}}.
    return.
  {label,1473}.
    {test,bs_test_unit,{f,1474},[{x,0},8]}.
    {call_only,1,{f,1472}}. % skip_until_zero/1
  {label,1474}.
    {move,{atom,not_found},{x,0}}.
    return.


{function, restore_after_catch, 1, 1476}.
  {label,1475}.
    {line,[{location,"bs_match_r23_SUITE.erl",2355}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,restore_after_catch},1}.
  {label,1476}.
    {test,is_list,{f,1475},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<0,1>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2356}]}.
    {call,1,{f,1479}}. % restore_after_catch_1/1
    {test,is_eq_exact,{f,1477},[{x,0},{literal,<<0,1>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1477}.
    {badmatch,{x,0}}.


{function, restore_after_catch_1, 1, 1479}.
  {label,1478}.
    {line,[{location,"bs_match_r23_SUITE.erl",2359}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,restore_after_catch_1},1}.
  {label,1479}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1478},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_test_unit,{f,1482},[{x,1},8]}.
    {allocate,3,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {'try',{y,2},{f,1480}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2360}]}.
    {call,1,{f,1484}}. % throw_after_byte/1
    {try_end,{y,2}}.
    {move,{atom,impossible},{x,0}}.
    {deallocate,3}.
    return.
  {label,1480}.
    {try_case,{y,2}}.
    {test,is_eq_exact,{f,1481},[{x,0},{atom,throw}]}.
    {bs_set_position,{y,1},{y,0}}.
    {bs_get_tail,{y,1},{x,0},0}.
    {deallocate,3}.
    return.
  {label,1481}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.
  {label,1482}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,1478}}.


{function, throw_after_byte, 1, 1484}.
  {label,1483}.
    {line,[{location,"bs_match_r23_SUITE.erl",2368}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,throw_after_byte},1}.
  {label,1484}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1483},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_skip_bits2,
          {f,1485},
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[2368,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_test_unit,{f,1485},[{x,1},8]}.
    {move,{atom,away},{x,1}}.
    {move,nil,{x,2}}.
    {move,{atom,throw},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2369}]}.
    {call_ext_only,3,{extfunc,erlang,raise,3}}.
  {label,1485}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,1483}}.


{function, matches_on_parameter, 1, 1487}.
  {label,1486}.
    {line,[{location,"bs_match_r23_SUITE.erl",2371}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,matches_on_parameter},1}.
  {label,1487}.
    {test,is_list,{f,1486},[{x,0}]}.
    {allocate_zero,1,0}.
    {move,{literal,<<"gurka">>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2373}]}.
    {call,1,{f,1492}}. % matches_on_parameter_1/1
    {test,is_eq_exact,{f,1490},[{x,0},{literal,{<<"urka">>,<<"a">>}}]}.
    {'catch',{y,0},{f,1488}}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<"10001110101">>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",2374}]}.
    {call,2,{f,1497}}. % matches_on_parameter_2/2
  {label,1488}.
    {catch_end,{y,0}}.
    {test,is_eq_exact,{f,1489},[{x,0},{atom,ok}]}.
    {deallocate,1}.
    return.
  {label,1489}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",2374}]}.
    {badmatch,{x,0}}.
  {label,1490}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",2373}]}.
    {badmatch,{x,0}}.


{function, matches_on_parameter_1, 1, 1492}.
  {label,1491}.
    {line,[{location,"bs_match_r23_SUITE.erl",2376}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,matches_on_parameter_1},1}.
  {label,1492}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1495},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_match_string,{f,1494},[{x,1},8,{string,<<"g">>}]}.
    {test,bs_get_binary2,
          {f,1494},
          2,
          [{x,1},
           {atom,all},
           8,
           {field_flags,[{anno,[2377,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_set_position,{x,1},{x,0}}.
    {test,bs_skip_bits2,
          {f,1493},
          [{x,1},
           {integer,16},
           1,
           {field_flags,[{anno,[2378,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_match_string,{f,1493},[{x,1},16,{string,<<"rk">>}]}.
    {test,bs_get_binary2,
          {f,1493},
          3,
          [{x,1},
           {atom,all},
           8,
           {field_flags,[{anno,[2378,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,1493}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_r23_SUITE.erl",2378}]}.
    {badmatch,{x,0}}.
  {label,1494}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_r23_SUITE.erl",2377}]}.
    {badmatch,{x,0}}.
  {label,1495}.
    {badmatch,{x,0}}.


{function, matches_on_parameter_2, 2, 1497}.
  {label,1496}.
    {line,[{location,"bs_match_r23_SUITE.erl",2381}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,matches_on_parameter_2},2}.
  {label,1497}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1500},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_skip_bits2,
          {f,1499},
          [{x,2},
           {x,1},
           1,
           {field_flags,[{anno,[2382,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_integer2,
          {f,1499},
          3,
          [{x,2},
           {integer,1},
           1,
           {field_flags,[{anno,[2382,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,1499},
          4,
          [{x,2},
           {atom,all},
           1,
           {field_flags,[{anno,[2382,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2383}]}.
    {gc_bif,bit_size,{f,0},5,[{x,4}],{x,4}}.
    {test,is_eq_exact,{f,1498},[{x,4},{integer,0}]}.
    {move,{atom,ok},{x,1}}.
    {move,nil,{x,2}}.
    {move,{atom,throw},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2384}]}.
    {call_ext_only,3,{extfunc,erlang,raise,3}}.
  {label,1498}.
    {line,[{location,"bs_match_r23_SUITE.erl",2385}]}.
    {gc_bif,'+',{f,0},4,[{x,1},{integer,1}],{x,1}}.
    {allocate,1,4}.
    {move,{x,3},{y,0}}.
    {bs_set_position,{x,2},{x,0}}.
    {move,{x,2},{x,0}}.
    {call,2,{f,1497}}. % matches_on_parameter_2/2
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1499}.
    {bs_set_position,{x,2},{x,0}}.
    {bs_get_tail,{x,2},{x,0},3}.
    {line,[{location,"bs_match_r23_SUITE.erl",2382}]}.
    {badmatch,{x,0}}.
  {label,1500}.
    {badmatch,{x,0}}.


{function, big_positions, 1, 1502}.
  {label,1501}.
    {line,[{location,"bs_match_r23_SUITE.erl",2388}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,big_positions},1}.
  {label,1502}.
    {test,is_list,{f,1501},[{x,0}]}.
    {line,[{location,"bs_match_r23_SUITE.erl",2392}]}.
    {move,{integer,0},{x,0}}.
    {bs_add,{f,0},[{x,0},{integer,1},1],{x,0}}.
    {bs_add,{f,0},[{x,0},{integer,16777222},8],{x,0}}.
    {bs_init_bits,{f,0},{x,0},0,1,{field_flags,[]},{x,0}}.
    {bs_put_integer,{f,0},{integer,134217720},1,{field_flags,[]},{integer,0}}.
    {bs_put_string,7,{string,<<"A³º¹5° ">>}}.
    {bs_put_integer,{f,0},{integer,1},1,{field_flags,[]},{integer,1}}.
    {move,{x,0},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2393}]}.
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{integer,16777222},8],{x,1}}.
    {bs_init_bits,{f,0},{x,1},0,2,{field_flags,[]},{x,1}}.
    {bs_put_integer,{f,0},{integer,134217720},1,{field_flags,[]},{integer,0}}.
    {bs_put_string,7,{string,<<"BhelloB">>}}.
    {move,{x,1},{x,1}}.
    {allocate,2,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2395}]}.
    {call,1,{f,1508}}. % bp_start_match/1
    {test,is_eq_exact,{f,1506},[{x,0},{literal,{a,65}}]}.
    {move,{y,0},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2396}]}.
    {call,1,{f,1508}}. % bp_start_match/1
    {test,is_eq_exact,{f,1505},[{x,0},{literal,{b,66}}]}.
    {move,{y,1},{x,0}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {line,[{location,"bs_match_r23_SUITE.erl",2397}]}.
    {call,1,{f,1513}}. % bp_getpos/1
    {test,is_eq_exact,{f,1504},[{x,0},{literal,{a,65}}]}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_match_r23_SUITE.erl",2398}]}.
    {call,1,{f,1513}}. % bp_getpos/1
    {test,is_eq_exact,{f,1503},[{x,0},{literal,{b,66}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1503}.
    {badmatch,{x,0}}.
  {label,1504}.
    {line,[{location,"bs_match_r23_SUITE.erl",2397}]}.
    {badmatch,{x,0}}.
  {label,1505}.
    {line,[{location,"bs_match_r23_SUITE.erl",2396}]}.
    {badmatch,{x,0}}.
  {label,1506}.
    {line,[{location,"bs_match_r23_SUITE.erl",2395}]}.
    {badmatch,{x,0}}.


{function, bp_start_match, 1, 1508}.
  {label,1507}.
    {line,[{location,"bs_match_r23_SUITE.erl",2406}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,bp_start_match},1}.
  {label,1508}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1507},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_skip_bits2,
          {f,1509},
          [{x,1},
           {integer,134217728},
           1,
           {field_flags,[{anno,[2406,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}]}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,1508}}. % bp_start_match/1
  {label,1509}.
    {bs_set_position,{x,1},{x,0}}.
    {test,bs_get_integer2,
          {f,1510},
          2,
          [{x,1},
           {integer,1},
           1,
           {field_flags,[{anno,[2407,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,1510},[{x,2},{integer,1}]}.
    {test,bs_match_string,{f,1510},[{x,1},40,{string,<<"gurka">>}]}.
    {test,bs_get_integer2,
          {f,1510},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[2407,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1510},[{x,1},0]}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{atom,a},{x,2}]}}.
    return.
  {label,1510}.
    {bs_set_position,{x,1},{x,0}}.
    {test,bs_get_integer2,
          {f,1511},
          2,
          [{x,1},
           {integer,16},
           1,
           {field_flags,[{anno,[2408,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,1511},[{x,2},{integer,26725}]}.
    {test,bs_match_string,{f,1511},[{x,1},24,{string,<<"llo">>}]}.
    {test,bs_get_integer2,
          {f,1511},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[2408,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1511},[{x,1},0]}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{atom,b},{x,2}]}}.
    return.
  {label,1511}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,1507}}.


{function, bp_getpos, 1, 1513}.
  {label,1512}.
    {line,[{location,"bs_match_r23_SUITE.erl",2413}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,bp_getpos},1}.
  {label,1513}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1512},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_skip_bits2,
          {f,1514},
          [{x,1},
           {integer,134217720},
           1,
           {field_flags,[{anno,[2413,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}]}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,1513}}. % bp_getpos/1
  {label,1514}.
    {bs_set_position,{x,1},{x,0}}.
    {test,bs_get_integer2,
          {f,1516},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[2414,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_position,{x,1},{x,3},3}.
    {test,bs_get_integer2,
          {f,1515},
          4,
          [{x,1},
           {integer,1},
           1,
           {field_flags,[{anno,[2414,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,is_eq_exact,{f,1515},[{x,4},{integer,1}]}.
    {test,bs_match_string,{f,1515},[{x,1},40,{string,<<"gurka">>}]}.
    {test,bs_get_integer2,
          {f,1515},
          4,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[2414,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,1515},[{x,1},0]}.
    {test,is_eq_exact,{f,1515},[{x,4},{x,2}]}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{atom,a},{x,2}]}}.
    return.
  {label,1515}.
    {bs_set_position,{x,1},{x,3}}.
    {test,bs_get_integer2,
          {f,1516},
          3,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[2415,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,1516},[{x,3},{integer,104}]}.
    {test,bs_match_string,{f,1516},[{x,1},32,{string,<<"ello">>}]}.
    {test,bs_get_integer2,
          {f,1516},
          3,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[2415,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1516},[{x,1},0]}.
    {test,is_eq_exact,{f,1516},[{x,3},{x,2}]}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{atom,b},{x,2}]}}.
    return.
  {label,1516}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,1512}}.


{function, matching_meets_apply, 1, 1518}.
  {label,1517}.
    {line,[{location,"bs_match_r23_SUITE.erl",2417}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,matching_meets_apply},1}.
  {label,1518}.
    {allocate,0,0}.
    {move,nil,{x,1}}.
    {move,{literal,<<"/abc">>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2418}]}.
    {call,2,{f,1523}}. % do_matching_meets_apply/2
    {test,is_eq_exact,{f,1521},[{x,0},{literal,<<"abc">>}]}.
    {move,{literal,{erlang,-42}},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2419}]}.
    {call,2,{f,1523}}. % do_matching_meets_apply/2
    {test,is_eq_exact,{f,1520},[{x,0},{integer,42}]}.
    {move,{literal,{erlang,-100}},{x,1}}.
    {move,{atom,no_binary},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2420}]}.
    {call,2,{f,1523}}. % do_matching_meets_apply/2
    {test,is_eq_exact,{f,1519},[{x,0},{integer,100}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1519}.
    {badmatch,{x,0}}.
  {label,1520}.
    {line,[{location,"bs_match_r23_SUITE.erl",2419}]}.
    {badmatch,{x,0}}.
  {label,1521}.
    {line,[{location,"bs_match_r23_SUITE.erl",2418}]}.
    {badmatch,{x,0}}.


{function, do_matching_meets_apply, 2, 1523}.
  {label,1522}.
    {line,[{location,"bs_match_r23_SUITE.erl",2423}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,do_matching_meets_apply},2}.
  {label,1523}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1529},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_get_integer2,
          {f,1524},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[2423,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,1524},[{x,3},{integer,47}]}.
    {test,bs_get_binary2,
          {f,1524},
          3,
          [{x,2},
           {atom,all},
           8,
           {field_flags,[{anno,[2423,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {move,{x,3},{x,0}}.
    {call_only,1,{f,1968}}. % id/1
  {label,1524}.
    {bs_set_position,{x,2},{x,0}}.
    {test,bs_test_unit,{f,1527},[{x,2},8]}.
    {select_val,{x,1},
                {f,1527},
                {list,[{atom,never_matches_a},
                       {f,1526},
                       {atom,never_matches_b},
                       {f,1525}]}}.
  {label,1525}.
    {allocate,0,3}.
    {bs_get_tail,{x,2},{x,0},3}.
    {move,{atom,foo},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{atom,gurka},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2431}]}.
    {apply_last,1,0}.
  {label,1526}.
    {allocate,0,3}.
    {bs_get_tail,{x,2},{x,0},3}.
    {move,{x,0},{x,1}}.
    {move,{atom,foo},{x,2}}.
    {move,{atom,gurka},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2428}]}.
    {apply_last,1,0}.
  {label,1527}.
    {test,is_tuple,{f,1528},[{x,1}]}.
    {test,test_arity,{f,1528},[{x,1},2]}.
    {allocate,0,2}.
    {get_tuple_element,{x,1},0,{x,0}}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {move,{atom,abs},{x,2}}.
    {swap,{x,0},{x,1}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2434}]}.
    {apply_last,1,0}.
  {label,1528}.
    {bs_get_tail,{x,2},{x,0},3}.
    {jump,{f,1522}}.
  {label,1529}.
    {test,is_tuple,{f,1522},[{x,1}]}.
    {test,test_arity,{f,1522},[{x,1},2]}.
    {allocate,0,2}.
    {get_tuple_element,{x,1},0,{x,0}}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {move,{atom,abs},{x,2}}.
    {swap,{x,0},{x,1}}.
    {apply_last,1,0}.


{function, exceptions_after_match_failure, 1, 1531}.
  {label,1530}.
    {line,[{location,"bs_match_r23_SUITE.erl",2438}]}.
    {func_info,{atom,bs_match_r23_SUITE},
               {atom,exceptions_after_match_failure},
               1}.
  {label,1531}.
    {allocate,1,0}.
    {'catch',{y,0},{f,1532}}.
    {move,{atom,atom},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2439}]}.
    {call,1,{f,1537}}. % do_exceptions_after_match_failure/1
  {label,1532}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1535},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1535},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1535},[{x,1},2,{atom,badarith}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1535},[{x,1},{atom,badarith}]}.
    {move,{literal,<<0,1,103,117,114,107,97>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",2440}]}.
    {call,1,{f,1537}}. % do_exceptions_after_match_failure/1
    {test,is_eq_exact,{f,1534},[{x,0},{atom,ok}]}.
    {move,{float,2.0},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",2441}]}.
    {call,1,{f,1537}}. % do_exceptions_after_match_failure/1
    {test,is_eq_exact,{f,1533},[{x,0},{atom,ok}]}.
    {deallocate,1}.
    return.
  {label,1533}.
    {badmatch,{x,0}}.
  {label,1534}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",2440}]}.
    {badmatch,{x,0}}.
  {label,1535}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",2439}]}.
    {badmatch,{x,0}}.


{function, do_exceptions_after_match_failure, 1, 1537}.
  {label,1536}.
    {line,[{location,"bs_match_r23_SUITE.erl",2443}]}.
    {func_info,{atom,bs_match_r23_SUITE},
               {atom,do_exceptions_after_match_failure},
               1}.
  {label,1537}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1539},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_skip_bits2,
          {f,1538},
          [{x,1},
           {integer,16},
           1,
           {field_flags,[{anno,[2443,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_match_string,{f,1538},[{x,1},40,{string,<<"gurka">>}]}.
    {test,bs_test_tail2,{f,1538},[{x,1},0]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1538}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_r23_SUITE.erl",2446}]}.
    {gc_bif,'/',{f,0},1,[{x,0},{float,2.0}],{x,0}}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1539}.
    {gc_bif,'/',{f,0},1,[{x,0},{float,2.0}],{x,0}}.
    {move,{atom,ok},{x,0}}.
    return.


{function, bad_phi_paths, 1, 1541}.
  {label,1540}.
    {line,[{location,"bs_match_r23_SUITE.erl",2451}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,bad_phi_paths},1}.
  {label,1541}.
    {allocate,0,0}.
    {move,{literal,<<"gurka">>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2452}]}.
    {call,1,{f,1968}}. % id/1
    {call,1,{f,1544}}. % bad_phi_paths_1/1
    {test,is_eq_exact,{f,1542},[{x,0},{literal,<<"gurka">>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1542}.
    {badmatch,{x,0}}.


{function, bad_phi_paths_1, 1, 1544}.
  {label,1543}.
    {line,[{location,"bs_match_r23_SUITE.erl",2455}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,bad_phi_paths_1},1}.
  {label,1544}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1546},1,[{x,0}],{x,1}}.
    {test,bs_test_unit,{f,1545},[{x,1},8]}.
    {bs_get_tail,{x,1},{x,0},2}.
    {call_only,1,{f,1968}}. % id/1
  {label,1545}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_r23_SUITE.erl",2456}]}.
    {case_end,{x,0}}.
  {label,1546}.
    {test,is_map,{f,1547},[{x,0}]}.
    {allocate,0,1}.
    {line,[{location,"bs_match_r23_SUITE.erl",2458}]}.
    {call,1,{f,1968}}. % id/1
    {call_last,1,{f,1968},0}. % id/1
  {label,1547}.
    {line,[{location,"bs_match_r23_SUITE.erl",2456}]}.
    {case_end,{x,0}}.


{function, combine_empty_segments, 1, 1549}.
  {label,1548}.
    {line,[{location,"bs_match_r23_SUITE.erl",2462}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,combine_empty_segments},1}.
  {label,1549}.
    {allocate,0,0}.
    {move,{literal,<<0,1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2463}]}.
    {call,1,{f,1552}}. % combine_empty_segments_1/1
    {test,is_eq_exact,{f,1550},[{x,0},{literal,<<0,1,2,3>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1550}.
    {badmatch,{x,0}}.


{function, combine_empty_segments_1, 1, 1552}.
  {label,1551}.
    {line,[{location,"bs_match_r23_SUITE.erl",2466}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,combine_empty_segments_1},1}.
  {label,1552}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1554},1,[{x,0}],{x,1}}.
    {test,bs_get_binary2,
          {f,1553},
          2,
          [{x,1},
           {atom,all},
           1,
           {field_flags,[{anno,[2469,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,0}}.
    return.
  {label,1553}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_r23_SUITE.erl",2469}]}.
    {badmatch,{x,0}}.
  {label,1554}.
    {line,[{location,"bs_match_r23_SUITE.erl",2467}]}.
    {badmatch,{x,0}}.


{function, hangs_forever, 1, 1556}.
  {label,1555}.
    {line,[{location,"bs_match_r23_SUITE.erl",2473}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,hangs_forever},1}.
  {label,1556}.
    {allocate,0,1}.
    {make_fun2,{f,2071},0,0,1}.
    {line,[{location,"bs_match_r23_SUITE.erl",2474}]}.
    {call,1,{f,1968}}. % id/1
    {test,is_function,{f,1557},[{x,0}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1557}.
    {badmatch,{atom,false}}.


{function, hangs_forever_1, 1, 1559}.
  {label,1558}.
    {line,[{location,"bs_match_r23_SUITE.erl",2477}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,hangs_forever_1},1}.
  {label,1559}.
    {allocate,0,1}.
    {line,[{location,"bs_match_r23_SUITE.erl",2478}]}.
    {call,1,{f,1559}}. % hangs_forever_1/1
    {test,bs_start_match3,{f,1560},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,1560},
          2,
          [{x,1},
           {integer,1},
           1,
           {field_flags,[{anno,[2479,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1560},[{x,1},0]}.
    {move,{x,2},{x,0}}.
    {deallocate,0}.
    return.
  {label,1560}.
    {case_end,{x,0}}.


{function, bs_saved_position_units, 1, 1562}.
  {label,1561}.
    {line,[{location,"bs_match_r23_SUITE.erl",2484}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,bs_saved_position_units},1}.
  {label,1562}.
    {test,is_list,{f,1561},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<0,1,2,3,4,5,6,7,8,9>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2485}]}.
    {call,1,{f,1968}}. % id/1
    {call,1,{f,1566}}. % bspu_1/1
    {test,is_eq_exact,
          {f,1564},
          [{x,0},{literal,[<<0,1,2,3,4>>,<<5,6,7,8,9>>]}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2486}]}.
    {call,1,{f,1968}}. % id/1
    {call,1,{f,1566}}. % bspu_1/1
    {test,is_nil,{f,1563},[{x,0}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1563}.
    {badmatch,{x,0}}.
  {label,1564}.
    {line,[{location,"bs_match_r23_SUITE.erl",2485}]}.
    {badmatch,{x,0}}.


{function, bspu_1, 1, 1566}.
  {label,1565}.
    {line,[{location,"bs_match_r23_SUITE.erl",2490}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,bspu_1},1}.
  {label,1566}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1565},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_binary2,
          {f,1567},
          2,
          [{x,1},
           {atom,all},
           8,
           {field_flags,[{anno,[2490,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},3}.
    {test,is_eq_exact,{f,1567},[{x,2},{x,0}]}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,2067}}. % '-bspu_1/1-lc$^0/1-0-'/1
  {label,1567}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,1565}}.


{function, empty_matches, 1, 1569}.
  {label,1568}.
    {line,[{location,"bs_match_r23_SUITE.erl",2494}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,empty_matches},1}.
  {label,1569}.
    {test,is_list,{f,1568},[{x,0}]}.
    {allocate_zero,3,0}.
    {move,{literal,<<1,2,3,4:4>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2495}]}.
    {call,1,{f,1587}}. % em_1/1
    {test,is_tuple,{f,1585},[{x,0}]}.
    {test,test_arity,{f,1585},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1585},[{x,1},{literal,<<>>}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,bs_start_match3,{f,1585},2,[{x,1}],{x,1}}.
    {test,bs_match_string,{f,1585},[{x,1},28,{string,<<1,2,3,64>>}]}.
    {test,bs_test_tail2,{f,1585},[{x,1},0]}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",2496}]}.
    {call,1,{f,1587}}. % em_1/1
    {test,is_eq_exact,{f,1584},[{x,0},{literal,{<<>>,<<1,2,3>>}}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",2497}]}.
    {call,1,{f,1587}}. % em_1/1
    {test,is_eq_exact,{f,1583},[{x,0},{literal,{<<>>,<<>>}}]}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",2499}]}.
    {call,1,{f,1968}}. % id/1
    {call,1,{f,1592}}. % em_2/1
    {test,is_eq_exact,{f,1582},[{x,0},{literal,<<0,1,0,2,0,3>>}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",2500}]}.
    {call,1,{f,1968}}. % id/1
    {call,1,{f,1592}}. % em_2/1
    {test,is_eq_exact,{f,1581},[{x,0},{literal,<<>>}]}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",2502}]}.
    {call,1,{f,1968}}. % id/1
    {call,1,{f,1594}}. % em_3/1
    {test,is_eq_exact,{f,1580},[{x,0},{literal,<<1,2,3>>}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",2503}]}.
    {call,1,{f,1968}}. % id/1
    {call,1,{f,1594}}. % em_3/1
    {test,is_eq_exact,{f,1579},[{x,0},{literal,<<>>}]}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",2505}]}.
    {call,1,{f,1968}}. % id/1
    {test,bs_start_match3,{f,1578},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,1578},
          2,
          [{x,1},
           {integer,0},
           1,
           {field_flags,[{anno,[2505,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1578},[{x,1},0]}.
    {move,{x,2},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",2506}]}.
    {call,1,{f,1968}}. % id/1
    {test,is_eq_exact,{f,1577},[{x,0},{integer,0}]}.
    {move,{literal,<<>>},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",2508}]}.
    {call,2,{f,1599}}. % em_4/2
    {test,is_eq_exact,{f,1576},[{x,0},{atom,ok}]}.
    {'catch',{y,2},{f,1570}}.
    {move,{literal,<<0:1>>},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",2509}]}.
    {call,2,{f,1599}}. % em_4/2
  {label,1570}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,1575},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1575},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1575},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,1575},[{x,2},{atom,function_clause}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,1575},[{x,1}]}.
    {'catch',{y,1},{f,1571}}.
    {move,{literal,<<>>},{x,1}}.
    {move,{literal,<<0:1>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",2510}]}.
    {call,2,{f,1599}}. % em_4/2
  {label,1571}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,1574},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1574},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1574},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,1574},[{x,2},{atom,function_clause}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,1574},[{x,1}]}.
    {'catch',{y,0},{f,1572}}.
    {move,{literal,<<0:1>>},{x,1}}.
    {move,{literal,<<0:1>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",2511}]}.
    {call,2,{f,1599}}. % em_4/2
  {label,1572}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1573},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1573},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1573},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,1573},[{x,2},{atom,function_clause}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,1573},[{x,1}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,3}.
    return.
  {label,1573}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",2511}]}.
    {badmatch,{x,0}}.
  {label,1574}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",2510}]}.
    {badmatch,{x,0}}.
  {label,1575}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",2509}]}.
    {badmatch,{x,0}}.
  {label,1576}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",2508}]}.
    {badmatch,{x,0}}.
  {label,1577}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",2506}]}.
    {badmatch,{x,0}}.
  {label,1578}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",2505}]}.
    {badmatch,{x,0}}.
  {label,1579}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",2503}]}.
    {badmatch,{x,0}}.
  {label,1580}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",2502}]}.
    {badmatch,{x,0}}.
  {label,1581}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",2500}]}.
    {badmatch,{x,0}}.
  {label,1582}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",2499}]}.
    {badmatch,{x,0}}.
  {label,1583}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",2497}]}.
    {badmatch,{x,0}}.
  {label,1584}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",2496}]}.
    {badmatch,{x,0}}.
  {label,1585}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",2495}]}.
    {badmatch,{x,0}}.


{function, em_1, 1, 1587}.
  {label,1586}.
    {line,[{location,"bs_match_r23_SUITE.erl",2515}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,em_1},1}.
  {label,1587}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1590},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_binary2,
          {f,1588},
          2,
          [{x,1},
           {integer,0},
           8,
           {field_flags,[{anno,[2517,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,1588},
          3,
          [{x,1},
           {atom,all},
           1,
           {field_flags,[{anno,[2517,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {allocate,3,4}.
    {move,{x,0},{y,0}}.
    {move,{x,3},{y,1}}.
    {move,{x,1},{y,2}}.
    {move,{x,2},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2518}]}.
    {call_ext,1,{extfunc,binary,copy,1}}.
    {bs_set_position,{y,2},{y,0}}.
    {bs_get_tail,{y,2},{x,1},1}.
    {test,is_eq_exact,{f,1589},[{y,1},{x,1}]}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {deallocate,3}.
    return.
  {label,1588}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_r23_SUITE.erl",2517}]}.
    {badmatch,{x,0}}.
  {label,1589}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{x,0},{y,1}]}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2516}]}.
    {badmatch,{x,0}}.
  {label,1590}.
    {line,[{location,"bs_match_r23_SUITE.erl",2517}]}.
    {badmatch,{x,0}}.


{function, em_2, 1, 1592}.
  {label,1591}.
    {line,[{location,"bs_match_r23_SUITE.erl",2523}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,em_2},1}.
  {label,1592}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,2063},1}. % '-em_2/1-lbc$^0/2-0-'/2


{function, em_3, 1, 1594}.
  {label,1593}.
    {line,[{location,"bs_match_r23_SUITE.erl",2530}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,em_3},1}.
  {label,1594}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1593},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_binary2,
          {f,1595},
          2,
          [{x,1},
           {integer,0},
           8,
           {field_flags,[{anno,[2530,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,1595},
          3,
          [{x,1},
           {atom,all},
           1,
           {field_flags,[{anno,[2530,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {allocate,1,4}.
    {move,{x,3},{y,0}}.
    {move,{x,2},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2531}]}.
    {call,1,{f,1597}}. % em_3_1/1
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1595}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,1593}}.


{function, em_3_1, 1, 1597}.
  {label,1596}.
    {line,[{location,"bs_match_r23_SUITE.erl",2534}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,em_3_1},1}.
  {label,1597}.
    return.


{function, em_4, 2, 1599}.
  {label,1598}.
    {line,[{location,"bs_match_r23_SUITE.erl",2537}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,em_4},2}.
  {label,1599}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1598},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_get_integer2,
          {f,1600},
          3,
          [{x,2},
           {integer,0},
           1,
           {field_flags,[{anno,[2537,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_start_match3,{f,1600},4,[{x,1}],{x,4}}.
    {test,bs_get_integer2,
          {f,1600},
          5,
          [{x,4},
           {integer,0},
           1,
           {field_flags,[{anno,[2537,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_skip_bits2,
          {f,1600},
          [{x,2},
           {x,3},
           1,
           {field_flags,[{anno,[2537,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_test_tail2,{f,1600},[{x,2},0]}.
    {test,bs_skip_bits2,
          {f,1600},
          [{x,4},
           {x,5},
           1,
           {field_flags,[{anno,[2537,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_test_tail2,{f,1600},[{x,4},0]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1600}.
    {bs_set_position,{x,2},{x,0}}.
    {bs_get_tail,{x,2},{x,0},3}.
    {jump,{f,1598}}.


{function, trim_bs_start_match_resume, 1, 1602}.
  {label,1601}.
    {line,[{location,"bs_match_r23_SUITE.erl",2542}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,trim_bs_start_match_resume},1}.
  {label,1602}.
    {test,is_list,{f,1601},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2543}]}.
    {call,1,{f,1968}}. % id/1
    {test,bs_start_match3,{f,1604},1,[{x,0}],{x,1}}.
    {test,bs_test_unit,{f,1604},[{x,1},8]}.
    {move,{x,1},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2544}]}.
    {call,1,{f,1606}}. % trim_bs_start_match_resume_1/1
    {test,is_eq_exact,{f,1603},[{x,0},{literal,<<>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1603}.
    {badmatch,{x,0}}.
  {label,1604}.
    {line,[{location,"bs_match_r23_SUITE.erl",2543}]}.
    {badmatch,{x,0}}.


{function, trim_bs_start_match_resume_1, 1, 1606}.
  {label,1605}.
    {line,[{location,"bs_match_r23_SUITE.erl",2547}]}.
    {func_info,{atom,bs_match_r23_SUITE},
               {atom,trim_bs_start_match_resume_1},
               1}.
  {label,1606}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1605},1,[{x,0}],{x,1}}.
    {test,bs_get_binary2,
          {f,1607},
          2,
          [{x,1},
           {atom,all},
           8,
           {field_flags,[{anno,[2547,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,0}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2548}]}.
    {call,1,{f,1968}}. % id/1
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1607}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,1605}}.


{function, expand_and_squeeze, 1, 1609}.
  {label,1608}.
    {line,[{location,"bs_match_r23_SUITE.erl",2551}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,expand_and_squeeze},1}.
  {label,1609}.
    {test,is_list,{f,1608},[{x,0}]}.
    {allocate_zero,1,0}.
    {move,
        {literal,
            [{bin,2553,
                 [{bin_element,2553,{char,2553,225},default,[utf8]},
                  {bin_element,2553,{var,2553,'_'},default,[binary]}]},
             {bin,2554,
                 [{bin_element,2554,{char,2554,233},default,[utf8]},
                  {bin_element,2554,{var,2554,'_'},default,[binary]}]}]},
        {x,1}}.
    {move,{integer,16},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2553}]}.
    {call,2,{f,1613}}. % ensure_squeezed/2
    {move,
        {literal,
            [{bin,2557,
                 [{bin_element,2557,
                      {integer,2557,0},
                      {integer,2557,32},
                      default},
                  {bin_element,2557,{var,2557,'_'},default,[binary]}]},
             {bin,2558,
                 [{bin_element,2558,{string,2558,"bbbb"},default,default},
                  {bin_element,2558,{var,2558,'_'},default,[binary]}]}]},
        {x,1}}.
    {move,{integer,16},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2557}]}.
    {call,2,{f,1613}}. % ensure_squeezed/2
    {move,
        {literal,
            [{bin,2561,
                 [{bin_element,2561,{string,2561,"aaaa"},default,default},
                  {bin_element,2561,{var,2561,'_'},default,[binary]}]},
             {bin,2562,
                 [{bin_element,2562,{string,2562,"bbbb"},default,default},
                  {bin_element,2562,{var,2562,'_'},default,[binary]}]}]},
        {x,1}}.
    {move,{integer,16},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2561}]}.
    {call,2,{f,1613}}. % ensure_squeezed/2
    {move,
        {literal,
            [{bin,2565,
                 [{bin_element,2565,{string,2565,"aaaa"},default,default},
                  {bin_element,2565,{var,2565,'_'},default,[binary]}]},
             {bin,2566,
                 [{bin_element,2566,{string,2566,"bbbb"},default,default},
                  {bin_element,2566,{var,2566,'_'},default,[binary]}]},
             {bin,2567,[]}]},
        {x,1}}.
    {move,{integer,16},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2565}]}.
    {call,2,{f,1613}}. % ensure_squeezed/2
    {move,
        {literal,
            [{bin,2570,
                 [{bin_element,2570,{string,2570,"aaaa"},default,default},
                  {bin_element,2570,{var,2570,'_'},default,[binary]}]},
             {bin,2571,
                 [{bin_element,2571,{string,2571,"bbbb"},default,default},
                  {bin_element,2571,{var,2571,'_'},default,[binary]}]},
             {bin,2572,[{bin_element,2572,{var,2572,'_'},default,[float]}]}]},
        {x,1}}.
    {move,{integer,8},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2570}]}.
    {call,2,{f,1613}}. % ensure_squeezed/2
    {move,
        {literal,
            [{bin,2575,
                 [{bin_element,2575,{string,2575,"aa"},default,default},
                  {bin_element,2575,{var,2575,'_'},default,[binary]}]},
             {bin,2576,
                 [{bin_element,2576,{string,2576,"bb"},default,default},
                  {bin_element,2576,{var,2576,'_'},default,[binary]}]},
             {bin,2577,
                 [{bin_element,2577,{string,2577,"c"},default,default},
                  {bin_element,2577,{var,2577,'_'},default,[binary]}]}]},
        {x,1}}.
    {move,{integer,8},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2575}]}.
    {call,2,{f,1613}}. % ensure_squeezed/2
    {move,
        {literal,
            [{bin,2583,
                 [{bin_element,2583,{string,2583,"aaa"},default,default},
                  {bin_element,2583,{var,2583,'_'},default,[binary]}]},
             {bin,2584,
                 [{bin_element,2584,{string,2584,"abb"},default,default},
                  {bin_element,2584,{var,2584,'_'},default,[binary]}]},
             {bin,2585,
                 [{bin_element,2585,{string,2585,"c"},default,default},
                  {bin_element,2585,{var,2585,'_'},default,[binary]}]}]},
        {x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2583}]}.
    {call,1,{f,1616}}. % binary_match_to_asm/1
    {test,is_nonempty_list,{f,1611},[{x,0}]}.
    {get_list,{x,0},{x,1},{y,0}}.
    {test,is_tagged_tuple,{f,1611},[{x,1},4,{atom,bs_match}]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,1611},[{x,2},{atom,bs_match}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_tagged_tuple,{f,1611},[{x,2},2,{atom,f}]}.
    {get_tuple_element,{x,2},0,{x,2}}.
    {test,is_eq_exact,{f,1611},[{x,2},{atom,f}]}.
    {get_tuple_element,{x,1},3,{x,1}}.
    {test,is_tagged_tuple,{f,1611},[{x,1},2,{atom,commands}]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,1611},[{x,2},{atom,commands}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,1611},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_tagged_tuple,{f,1611},[{x,2},3,{atom,ensure_at_least}]}.
    {get_tuple_element,{x,2},0,{x,3}}.
    {test,is_eq_exact,{f,1611},[{x,3},{atom,ensure_at_least}]}.
    {get_tuple_element,{x,2},2,{x,3}}.
    {test,is_eq_exact,{f,1611},[{x,3},{integer,1}]}.
    {test,is_nonempty_list,{f,1611},[{x,1}]}.
    {get_list,{x,1},{x,3},{x,1}}.
    {test,is_tagged_tuple,{f,1611},[{x,3},6,{atom,integer}]}.
    {get_tuple_element,{x,3},0,{x,4}}.
    {test,is_eq_exact,{f,1611},[{x,4},{atom,integer}]}.
    {get_tuple_element,{x,3},4,{x,4}}.
    {test,is_eq_exact,{f,1611},[{x,4},{integer,1}]}.
    {test,is_nil,{f,1611},[{x,1}]}.
    {get_tuple_element,{x,3},3,{x,1}}.
    {get_tuple_element,{x,2},1,{x,2}}.
    {test,is_eq_exact,{f,1611},[{x,1},{x,2}]}.
    {make_fun2,{f,2060},0,0,0}.
    {move,{y,0},{x,1}}.
    {trim,1,0}.
    {line,[{location,"bs_match_r23_SUITE.erl",2594}]}.
    {call_ext,2,{extfunc,lists,any,2}}.
    {test,is_eq_exact,{f,1610},[{x,0},{atom,true}]}.
    {move,
        {literal,
            [{bin,2597,
                 [{bin_element,2597,{integer,2597,255},default,default},
                  {bin_element,2597,{integer,2597,255},default,default},
                  {bin_element,2597,{integer,2597,255},default,default},
                  {bin_element,2597,{integer,2597,255},default,default},
                  {bin_element,2597,{integer,2597,255},default,default},
                  {bin_element,2597,{integer,2597,255},default,default},
                  {bin_element,2597,{integer,2597,255},default,default},
                  {bin_element,2597,{integer,2597,255},default,default}]},
             {bin,2598,
                 [{bin_element,2598,
                      {var,2598,'_'},
                      {integer,2598,64},
                      default}]}]},
        {x,1}}.
    {move,{integer,64},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2597}]}.
    {call,2,{f,1613}}. % ensure_squeezed/2
    {move,
        {literal,
            [{bin,2601,
                 [{bin_element,2601,{var,2601,'A'},{integer,2601,32},default},
                  {bin_element,2601,{var,2601,'_'},{var,2601,'A'},default}]},
             {bin,2602,
                 [{bin_element,2602,
                      {integer,2602,0},
                      {integer,2602,32},
                      default}]},
             {bin,2603,
                 [{bin_element,2603,
                      {var,2603,'_'},
                      {integer,2603,32},
                      default}]}]},
        {x,1}}.
    {move,{integer,32},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2601}]}.
    {call,2,{f,1613}}. % ensure_squeezed/2
    {move,
        {literal,
            [{bin,2606,
                 [{bin_element,2606,{var,2606,'A'},{integer,2606,32},default},
                  {bin_element,2606,{var,2606,'_'},{var,2606,'A'},default}]},
             {bin,2607,
                 [{bin_element,2607,{integer,2607,0},default,default},
                  {bin_element,2607,{integer,2607,0},default,default},
                  {bin_element,2607,{integer,2607,0},default,default},
                  {bin_element,2607,{integer,2607,0},default,default}]},
             {bin,2608,
                 [{bin_element,2608,
                      {var,2608,'_'},
                      {integer,2608,32},
                      default}]}]},
        {x,1}}.
    {move,{integer,32},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2606}]}.
    {call,2,{f,1613}}. % ensure_squeezed/2
    {move,
        {literal,
            [{bin,2611,
                 [{bin_element,2611,{var,2611,'A'},{integer,2611,32},default},
                  {bin_element,2611,{var,2611,'_'},{var,2611,'A'},default}]},
             {bin,2612,
                 [{bin_element,2612,
                      {integer,2612,0},
                      {integer,2612,64},
                      default}]},
             {bin,2613,
                 [{bin_element,2613,
                      {var,2613,'_'},
                      {integer,2613,32},
                      default}]}]},
        {x,1}}.
    {move,{integer,32},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2611}]}.
    {call,2,{f,1613}}. % ensure_squeezed/2
    {move,
        {literal,
            [{bin,2616,
                 [{bin_element,2616,{string,2616,"aa"},default,default},
                  {bin_element,2616,{var,2616,'_'},default,[binary]}]},
             {bin,2617,
                 [{bin_element,2617,{string,2617,"bb"},default,default},
                  {bin_element,2617,{var,2617,'_'},default,[binary]}]},
             {bin,2618,
                 [{bin_element,2618,{string,2618,"cc"},default,default},
                  {bin_element,2618,{var,2618,'_'},default,[binary]}]},
             {bin,2619,
                 [{bin_element,2619,{string,2619,"dd"},default,default},
                  {bin_element,2619,{var,2619,'_'},default,[binary]}]},
             {bin,2620,
                 [{bin_element,2620,{string,2620,"ee"},default,default},
                  {bin_element,2620,{var,2620,'_'},default,[binary]}]},
             {bin,2621,
                 [{bin_element,2621,{string,2621,"ff"},default,default},
                  {bin_element,2621,{var,2621,'_'},default,[binary]}]},
             {bin,2622,
                 [{bin_element,2622,{string,2622,"gg"},default,default},
                  {bin_element,2622,{var,2622,'_'},default,[binary]}]},
             {bin,2623,
                 [{bin_element,2623,{string,2623,"hh"},default,default},
                  {bin_element,2623,{var,2623,'_'},default,[binary]}]},
             {bin,2624,
                 [{bin_element,2624,{string,2624,"ii"},default,default},
                  {bin_element,2624,{var,2624,'_'},default,[binary]}]},
             {bin,2625,
                 [{bin_element,2625,{string,2625,"jj"},default,default},
                  {bin_element,2625,{var,2625,'_'},default,[binary]}]},
             {bin,2626,
                 [{bin_element,2626,{string,2626,"kk"},default,default},
                  {bin_element,2626,{var,2626,'_'},default,[binary]}]},
             {bin,2627,
                 [{bin_element,2627,{string,2627,"ll"},default,default},
                  {bin_element,2627,{var,2627,'_'},default,[binary]}]},
             {bin,2628,
                 [{bin_element,2628,{string,2628,"mm"},default,default},
                  {bin_element,2628,{var,2628,'_'},default,[binary]}]},
             {bin,2629,
                 [{bin_element,2629,{string,2629,"nn"},default,default},
                  {bin_element,2629,{var,2629,'_'},default,[binary]}]},
             {bin,2630,
                 [{bin_element,2630,{string,2630,"oo"},default,default},
                  {bin_element,2630,{var,2630,'_'},default,[binary]}]},
             {bin,2631,
                 [{bin_element,2631,{string,2631,"pp"},default,default},
                  {bin_element,2631,{var,2631,'_'},default,[binary]}]}]},
        {x,1}}.
    {move,{integer,8},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2616}]}.
    {call,2,{f,1613}}. % ensure_squeezed/2
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1610}.
    {line,[{location,"bs_match_r23_SUITE.erl",2594}]}.
    {badmatch,{x,0}}.
  {label,1611}.
    {line,[{location,"bs_match_r23_SUITE.erl",2580}]}.
    {badmatch,{x,0}}.


{function, ensure_squeezed, 2, 1613}.
  {label,1612}.
    {line,[{location,"bs_match_r23_SUITE.erl",2635}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,ensure_squeezed},2}.
  {label,1613}.
    {allocate,1,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2639}]}.
    {call,1,{f,1616}}. % binary_match_to_asm/1
    {test,is_nonempty_list,{f,1614},[{x,0}]}.
    {get_hd,{x,0},{x,1}}.
    {test,is_tagged_tuple,{f,1614},[{x,1},4,{atom,bs_match}]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,1614},[{x,2},{atom,bs_match}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_tagged_tuple,{f,1614},[{x,2},2,{atom,f}]}.
    {get_tuple_element,{x,2},0,{x,2}}.
    {test,is_eq_exact,{f,1614},[{x,2},{atom,f}]}.
    {get_tuple_element,{x,1},3,{x,1}}.
    {test,is_tagged_tuple,{f,1614},[{x,1},2,{atom,commands}]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,1614},[{x,2},{atom,commands}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,1614},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_tagged_tuple,{f,1614},[{x,2},3,{atom,ensure_at_least}]}.
    {get_tuple_element,{x,2},0,{x,3}}.
    {test,is_eq_exact,{f,1614},[{x,3},{atom,ensure_at_least}]}.
    {get_tuple_element,{x,2},2,{x,3}}.
    {test,is_eq_exact,{f,1614},[{x,3},{integer,1}]}.
    {test,is_nonempty_list,{f,1614},[{x,1}]}.
    {get_list,{x,1},{x,3},{x,1}}.
    {test,is_tagged_tuple,{f,1614},[{x,3},6,{atom,integer}]}.
    {get_tuple_element,{x,3},0,{x,4}}.
    {test,is_eq_exact,{f,1614},[{x,4},{atom,integer}]}.
    {get_tuple_element,{x,3},4,{x,4}}.
    {test,is_eq_exact,{f,1614},[{x,4},{integer,1}]}.
    {test,is_nil,{f,1614},[{x,1}]}.
    {get_tuple_element,{x,2},1,{x,1}}.
    {test,is_eq_exact,{f,1614},[{x,1},{y,0}]}.
    {get_tuple_element,{x,3},3,{x,1}}.
    {test,is_eq_exact,{f,1614},[{x,1},{y,0}]}.
    {deallocate,1}.
    return.
  {label,1614}.
    {line,[{location,"bs_match_r23_SUITE.erl",2636}]}.
    {badmatch,{x,0}}.


{function, binary_match_to_asm, 1, 1616}.
  {label,1615}.
    {line,[{location,"bs_match_r23_SUITE.erl",2641}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,binary_match_to_asm},1}.
  {label,1616}.
    {line,[{location,"bs_match_r23_SUITE.erl",2646}]}.
    {gc_bif,length,{f,0},1,[{x,0}],{x,1}}.
    {allocate_zero,3,2}.
    {move,{x,0},{y,2}}.
    {move,{integer,1},{x,0}}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{x,0},{x,1}}.
    {move,{y,2},{x,0}}.
    {init,{y,2}}.
    {call_ext,2,{extfunc,lists,zip,2}}.
    {call,1,{f,2055}}. % '-binary_match_to_asm/1-lc$^0/1-0-'/1
    {move,{x,0},{y,2}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2650}]}.
    {call_ext,1,{extfunc,erl_anno,new,1}}.
    {move,{x,0},{y,1}}.
    {move,{integer,2},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2651}]}.
    {call_ext,1,{extfunc,erl_anno,new,1}}.
    {move,{x,0},{y,0}}.
    {move,{integer,3},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2652}]}.
    {call_ext,1,{extfunc,erl_anno,new,1}}.
    {test_heap,22,1}.
    {put_tuple2,{x,0},
                {list,[{atom,function},
                       {x,0},
                       {atom,example},
                       {integer,1},
                       {y,2}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_tuple2,{x,1},
                {list,[{atom,attribute},
                       {y,0},
                       {atom,export},
                       {literal,[{example,1}]}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_tuple2,{x,1},
                {list,[{atom,attribute},
                       {y,1},
                       {atom,module},
                       {atom,match_to_asm}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {move,{literal,[return,to_asm]},{x,1}}.
    {trim,3,0}.
    {line,[{location,"bs_match_r23_SUITE.erl",2656}]}.
    {call_ext,2,{extfunc,compile,forms,2}}.
    {test,is_tagged_tuple,{f,1619},[{x,0},4,{atom,ok}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1619},[{x,1},{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,1619},[{x,1},{atom,match_to_asm}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_tagged_tuple,{f,1619},[{x,1},5,{atom,match_to_asm}]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,1619},[{x,2},{atom,match_to_asm}]}.
    {get_tuple_element,{x,1},3,{x,0}}.
    {test,is_nonempty_list,{f,1618},[{x,0}]}.
    {get_hd,{x,0},{x,1}}.
    {test,is_tagged_tuple,{f,1618},[{x,1},5,{atom,function}]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,1618},[{x,2},{atom,function}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,1618},[{x,2},{atom,example}]}.
    {get_tuple_element,{x,1},2,{x,2}}.
    {test,is_eq_exact,{f,1618},[{x,2},{integer,1}]}.
    {get_tuple_element,{x,1},3,{x,2}}.
    {test,is_eq_exact,{f,1618},[{x,2},{integer,2}]}.
    {get_tuple_element,{x,1},4,{x,0}}.
    {test,is_nonempty_list,{f,1617},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_tagged_tuple,{f,1617},[{x,1},2,{atom,label}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1617},[{x,1},{atom,label}]}.
    {test,is_nonempty_list,{f,1617},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tagged_tuple,{f,1617},[{x,1},2,{atom,line}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1617},[{x,1},{atom,line}]}.
    {test,is_nonempty_list,{f,1617},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tagged_tuple,{f,1617},[{x,1},4,{atom,func_info}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1617},[{x,1},{atom,func_info}]}.
    {test,is_nonempty_list,{f,1617},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tagged_tuple,{f,1617},[{x,1},2,{atom,label}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1617},[{x,1},{atom,label}]}.
    {test,is_nonempty_list,{f,1617},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tagged_tuple,{f,1617},[{x,1},2,{atom,'%'}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1617},[{x,1},{atom,'%'}]}.
    {test,is_nonempty_list,{f,1617},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tagged_tuple,{f,1617},[{x,1},6,{atom,test}]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_eq_exact,{f,1617},[{x,3},{atom,test}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,{f,1617},[{x,1},{atom,bs_start_match3}]}.
    {test,is_nonempty_list,{f,1617},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tagged_tuple,{f,1617},[{x,1},4,{atom,bs_get_position}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1617},[{x,1},{atom,bs_get_position}]}.
    {move,{x,2},{x,0}}.
    {deallocate,0}.
    return.
  {label,1617}.
    {line,[{location,"bs_match_r23_SUITE.erl",2659}]}.
    {badmatch,{x,0}}.
  {label,1618}.
    {line,[{location,"bs_match_r23_SUITE.erl",2658}]}.
    {badmatch,{x,0}}.
  {label,1619}.
    {line,[{location,"bs_match_r23_SUITE.erl",2655}]}.
    {badmatch,{x,0}}.


{function, many_clauses, 1, 1621}.
  {label,1620}.
    {line,[{location,"bs_match_r23_SUITE.erl",2663}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,many_clauses},1}.
  {label,1621}.
    {allocate_zero,2,0}.
    {move,{integer,200},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2666}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2667}]}.
    {call,1,{f,2051}}. % '-many_clauses/1-lc$^0/1-0-'/1
    {move,{x,0},{y,0}}.
    {move,{atom,bs_match_r23_SUITE_many_clauses},{x,0}}.
    {line,[]}.
    {call_ext,1,{extfunc,merl,term,1}}.
    {test_heap,52,1}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{literal,[{tree,atom,{attr,2668,[],none},module}]},{x,0},{x,0}}.
    {put_list,{y,0},nil,{x,1}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{literal,[{var,2671,'Bin'}]},{x,1},{x,1}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,case_expr},
                       {literal,{attr,2671,[],none}},
                       {x,1}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,nil,{x,1},{x,1}}.
    {put_list,{literal,[{var,2670,'Bin'}]},{x,1},{x,1}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,clause},
                       {literal,{attr,2670,[],none}},
                       {x,1}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{literal,[{tree,atom,{attr,2670,[],none},f}]},{x,1},{x,1}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,function},
                       {literal,{attr,2670,[],none}},
                       {x,1}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{literal,{attribute,2669,export,[{f,1}]}},{x,1},{x,1}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,attribute},
                       {literal,{attr,2668,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},{x,1},{x,0}}.
    {init,{y,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2668}]}.
    {call_ext,1,{extfunc,merl,tree,1}}.
    {move,{x,0},{y,0}}.
    {move,{atom,bs_match_r23_SUITE},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2675}]}.
    {call_ext,1,{extfunc,test_lib,opt_opts,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,1}.
    {line,[{location,"bs_match_r23_SUITE.erl",2676}]}.
    {call_ext,2,{extfunc,merl,compile_and_load,2}}.
    {test,is_tagged_tuple,{f,1622},[{x,0},2,{atom,ok}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1622},[{x,1},{atom,ok}]}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_match_r23_SUITE.erl",2683}]}.
    {call,1,{f,2045}}. % '-many_clauses/1-lc$^1/1-1-'/1
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1622}.
    {line,[{location,"bs_match_r23_SUITE.erl",2676}]}.
    {badmatch,{x,0}}.


{function, one_clause, 1, 1624}.
  {label,1623}.
    {line,[{location,"bs_match_r23_SUITE.erl",2686}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,one_clause},1}.
  {label,1624}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {line,[]}.
    {call_ext,1,{extfunc,merl,term,1}}.
    {swap,{y,0},{x,0}}.
    {call_ext,1,{extfunc,merl,term,1}}.
    {test_heap,33,1}.
    {put_list,
        {y,0},
        {literal,
            [{bin,2687,
                 [{bin_element,2687,{var,2687,'L'},{integer,2687,8},default},
                  {bin_element,2687,
                      {var,2687,'Val'},
                      {var,2687,'L'},
                      default}]}]},
        {x,1}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,tuple},
                       {literal,{attr,2687,[],none}},
                       {x,1}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},
              {literal,[[{tree,operator,{attr,2687,[],none},'+'}],
                        [{var,2687,'Val'}]]},
              {x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,infix_expr},
                       {literal,{attr,2687,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,nil,{x,0},{x,0}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,clause},
                       {literal,{attr,2687,[],none}},
                       {x,0}]}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2687}]}.
    {call_ext_last,1,{extfunc,merl,tree,1},1}.


{function, gh_6410, 1, 1626}.
  {label,1625}.
    {line,[{location,"bs_match_r23_SUITE.erl",2690}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,gh_6410},1}.
  {label,1626}.
    {allocate_zero,3,0}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2691}]}.
    {call,1,{f,1635}}. % do_gh_6410/1
    {test,is_eq_exact,{f,1633},[{x,0},{integer,0}]}.
    {'catch',{y,2},{f,1627}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",2692}]}.
    {call,1,{f,1635}}. % do_gh_6410/1
  {label,1627}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,1632},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1632},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1632},[{x,1}]}.
    {test,test_arity,{f,1632},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,1632},[{x,2},{literal,{case_clause,<<>>}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,1632},[{x,1}]}.
    {'catch',{y,1},{f,1628}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",2693}]}.
    {call,1,{f,1635}}. % do_gh_6410/1
  {label,1628}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,1631},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1631},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1631},[{x,1}]}.
    {test,test_arity,{f,1631},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,1631},[{x,2},{literal,{case_clause,a}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,1631},[{x,1}]}.
    {'catch',{y,0},{f,1629}}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",2694}]}.
    {call,1,{f,1635}}. % do_gh_6410/1
  {label,1629}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1630},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1630},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1630},[{x,1},2,{atom,badarith}]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,1630},[{x,2},{atom,badarith}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,1630},[{x,1}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,3}.
    return.
  {label,1630}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",2694}]}.
    {badmatch,{x,0}}.
  {label,1631}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",2693}]}.
    {badmatch,{x,0}}.
  {label,1632}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",2692}]}.
    {badmatch,{x,0}}.
  {label,1633}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",2691}]}.
    {badmatch,{x,0}}.


{function, do_gh_6410, 1, 1635}.
  {label,1634}.
    {line,[{location,"bs_match_r23_SUITE.erl",2698}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,do_gh_6410},1}.
  {label,1635}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1638},1,[{x,0}],{x,1}}.
    {test,bs_test_tail2,{f,1636},[{x,1},8]}.
    {move,{integer,0},{x,0}}.
    return.
  {label,1636}.
    {test,bs_test_tail2,{f,1637},[{x,1},8]}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_r23_SUITE.erl",2701}]}.
    {gc_bif,'+',{f,0},1,[{x,0}],{x,0}}.
    return.
  {label,1637}.
    {bs_get_tail,{x,1},{x,0},2}.
    {case_end,{x,0}}.
  {label,1638}.
    {test,bs_start_match3,{f,1639},1,[{x,0}],{x,1}}.
    {test,bs_test_tail2,{f,1641},[{x,1},8]}.
    {jump,{f,1640}}.
  {label,1639}.
    {test,is_nil,{f,1641},[{x,0}]}.
  {label,1640}.
    {gc_bif,'+',{f,0},1,[{x,0}],{x,0}}.
    return.
  {label,1641}.
    {case_end,{x,0}}.


{function, bs_match, 1, 1643}.
  {label,1642}.
    {line,[{location,"bs_match_r23_SUITE.erl",2708}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,bs_match},1}.
  {label,1643}.
    {allocate_zero,4,0}.
    {move,{literal,<<1,0>>},{x,1}}.
    {move,{atom,whatever},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2709}]}.
    {call,2,{f,1663}}. % do_bs_match_1/2
    {test,is_eq_exact,{f,1661},[{x,0},{literal,<<1,0>>}]}.
    {move,{literal,<<1,1>>},{x,1}}.
    {move,{atom,whatever},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_r23_SUITE.erl",2710}]}.
    {call,2,{f,1663}}. % do_bs_match_1/2
    {test,is_eq_exact,{f,1660},[{x,0},{literal,<<1,1>>}]}.
    {move,{literal,{a,b,c}},{x,1}}.
    {move,{atom,whatever},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_r23_SUITE.erl",2711}]}.
    {call,2,{f,1663}}. % do_bs_match_1/2
    {test,is_eq_exact,{f,1659},[{x,0},{literal,{a,b,c}}]}.
    {'catch',{y,3},{f,1644}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_r23_SUITE.erl",2713}]}.
    {call,1,{f,1667}}. % do_bs_match_gh_6551a/1
  {label,1644}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,1658},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1658},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1658},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1658},[{x,1},{atom,badarg}]}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",2714}]}.
    {call,1,{f,1667}}. % do_bs_match_gh_6551a/1
    {test,is_eq_exact,{f,1657},[{x,0},{atom,false}]}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",2716}]}.
    {call,1,{f,1673}}. % do_bs_match_gh_6551b/1
    {test,is_eq_exact,{f,1656},[{x,0},{literal,{0,0}}]}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",2717}]}.
    {call,1,{f,1673}}. % do_bs_match_gh_6551b/1
    {test,is_eq_exact,{f,1655},[{x,0},{literal,{<<"*">>,<<"*">>}}]}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",2719}]}.
    {call,1,{f,1678}}. % do_bs_match_gh_6613/1
    {test,is_eq_exact,{f,1654},[{x,0},{atom,ok}]}.
    {move,{literal,<<0,0>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",2720}]}.
    {call,1,{f,1678}}. % do_bs_match_gh_6613/1
    {test,is_eq_exact,{f,1653},[{x,0},{literal,<<0,0>>}]}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",2722}]}.
    {call,1,{f,1968}}. % id/1
    {call,1,{f,1698}}. % do_bs_match_gh_6660/1
    {test,is_eq_exact,{f,1652},[{x,0},{literal,<<"abc">>}]}.
    {'catch',{y,2},{f,1645}}.
    {move,{atom,abc},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",2723}]}.
    {call,1,{f,1968}}. % id/1
    {call,1,{f,1698}}. % do_bs_match_gh_6660/1
  {label,1645}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,1651},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1651},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1651},[{x,1}]}.
    {test,test_arity,{f,1651},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1651},[{x,1},{literal,{try_clause,abc}}]}.
    {'catch',{y,1},{f,1646}}.
    {move,{literal,<<"1000">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",2725}]}.
    {call,1,{f,1968}}. % id/1
    {call,1,{f,1702}}. % do_bs_match_gh_6755/1
  {label,1646}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,1650},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1650},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1650},[{x,1}]}.
    {test,test_arity,{f,1650},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,1650},[{x,1},2,{atom,case_clause}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1650},[{x,1},{atom,case_clause}]}.
    {'catch',{y,0},{f,1647}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",2727}]}.
    {call,1,{f,1710}}. % do_bs_match_gh_7467/1
  {label,1647}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1649},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1649},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1649},[{x,1}]}.
    {test,test_arity,{f,1649},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1649},[{x,1},{literal,{badmatch,<<>>}}]}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",2729}]}.
    {call,0,{f,1714}}. % do_bs_match_gh_8280/0
    {test,is_eq_exact,{f,1648},[{x,0},{literal,{0,<<1,2,3>>}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,4}.
    return.
  {label,1648}.
    {badmatch,{x,0}}.
  {label,1649}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",2727}]}.
    {badmatch,{x,0}}.
  {label,1650}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",2725}]}.
    {badmatch,{x,0}}.
  {label,1651}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",2723}]}.
    {badmatch,{x,0}}.
  {label,1652}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",2722}]}.
    {badmatch,{x,0}}.
  {label,1653}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",2720}]}.
    {badmatch,{x,0}}.
  {label,1654}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",2719}]}.
    {badmatch,{x,0}}.
  {label,1655}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",2717}]}.
    {badmatch,{x,0}}.
  {label,1656}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",2716}]}.
    {badmatch,{x,0}}.
  {label,1657}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",2714}]}.
    {badmatch,{x,0}}.
  {label,1658}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",2713}]}.
    {badmatch,{x,0}}.
  {label,1659}.
    {line,[{scope,"\b"},{location,"bs_match_r23_SUITE.erl",2711}]}.
    {badmatch,{x,0}}.
  {label,1660}.
    {line,[{scope,"\b"},{location,"bs_match_r23_SUITE.erl",2710}]}.
    {badmatch,{x,0}}.
  {label,1661}.
    {line,[{scope,"\b"},{location,"bs_match_r23_SUITE.erl",2709}]}.
    {badmatch,{x,0}}.


{function, do_bs_match_1, 2, 1663}.
  {label,1662}.
    {line,[{location,"bs_match_r23_SUITE.erl",2733}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,do_bs_match_1},2}.
  {label,1663}.
    {'%',{var_info,{x,1},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1665},2,[{x,1}],{x,0}}.
    {allocate_zero,2,1}.
    {move,{x,0},{y,1}}.
    {bs_get_position,{x,0},{y,0},1}.
    {test,bs_skip_bits2,
          {f,1664},
          [{x,0},
           {integer,8},
           1,
           {field_flags,[{anno,[2735,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_match_string,{f,1664},[{y,1},8,{string,<<0>>}]}.
    {test,bs_test_tail2,{f,1664},[{y,1},0]}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2736}]}.
    {call,1,{f,1968}}. % id/1
  {label,1664}.
    {bs_set_position,{y,1},{y,0}}.
    {bs_get_tail,{y,1},{x,0},0}.
    {deallocate,2}.
    return.
  {label,1665}.
    {move,{x,1},{x,0}}.
    return.


{function, do_bs_match_gh_6551a, 1, 1667}.
  {label,1666}.
    {line,[{location,"bs_match_r23_SUITE.erl",2742}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,do_bs_match_gh_6551a},1}.
  {label,1667}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1671},1,[{x,0}],{x,1}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {test,bs_test_tail2,{f,1668},[{x,1},0]}.
    {move,nil,{x,1}}.
    {move,{atom,true},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2745}]}.
    {call_ext,2,{extfunc,erlang,'--',2}}.
    {jump,{f,1669}}.
  {label,1668}.
    {test,bs_test_tail2,{f,1670},[{x,1},8]}.
    {bs_get_tail,{x,1},{x,0},2}.
  {label,1669}.
    {bs_get_tail,{y,0},{x,1},1}.
    {bif,'/=',{f,0},[{x,0},{x,1}],{x,0}}.
    {deallocate,1}.
    return.
  {label,1670}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_r23_SUITE.erl",2743}]}.
    {case_end,{x,0}}.
  {label,1671}.
    {case_end,{x,0}}.


{function, do_bs_match_gh_6551b, 1, 1673}.
  {label,1672}.
    {line,[{location,"bs_match_r23_SUITE.erl",2751}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,do_bs_match_gh_6551b},1}.
  {label,1673}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1675},1,[{x,0}],{x,1}}.
    {test,bs_test_tail2,{f,1674},[{x,1},8]}.
    {bs_get_tail,{x,1},{x,0},2}.
    {bs_get_tail,{x,1},{x,1},2}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,1},{x,0}]}}.
    return.
  {label,1674}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_r23_SUITE.erl",2753}]}.
    {case_end,{x,0}}.
  {label,1675}.
    {test,is_eq_exact,{f,1676},[{x,0},{integer,0}]}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{x,0},{integer,0}]}}.
    return.
  {label,1676}.
    {case_end,{x,0}}.


{function, do_bs_match_gh_6613, 1, 1678}.
  {label,1677}.
    {line,[{location,"bs_match_r23_SUITE.erl",2760}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,do_bs_match_gh_6613},1}.
  {label,1678}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1687},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_test_tail2,{f,1679},[{x,1},8]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1679}.
    {allocate_zero,4,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {'try',{y,3},{f,1684}}.
    {'try',{y,2},{f,1682}}.
    {test,is_map,{f,1680},[{x,0}]}.
    {bif,'not',{f,1680},[{atom,ok}],{x,1}}.
    {test,has_map_fields,{f,1680},{x,0},{list,[{x,1}]}}.
    {jump,{f,1681}}.
  {label,1680}.
    {test,bs_get_integer2,
          {f,1695},
          1,
          [{y,1},
           {integer,8},
           1,
           {field_flags,[{anno,[2767,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_get_integer2,
          {f,1695},
          2,
          [{y,1},
           {integer,8},
           1,
           {field_flags,[{anno,[2767,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1695},[{y,1},0]}.
    {test,is_eq_exact,{f,1695},[{x,2},{x,1}]}.
  {label,1681}.
    {try_end,{y,2}}.
    {jump,{f,1683}}.
  {label,1682}.
    {try_case,{y,2}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.
  {label,1683}.
    {try_end,{y,3}}.
    {jump,{f,1685}}.
  {label,1684}.
    {try_case,{y,3}}.
    {test,is_eq_exact,{f,1686},[{x,0},{atom,throw}]}.
  {label,1685}.
    {bs_set_position,{y,1},{y,0}}.
    {bs_get_tail,{y,1},{x,0},0}.
    {deallocate,4}.
    return.
  {label,1686}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.
  {label,1687}.
    {allocate_zero,3,1}.
    {move,{x,0},{y,0}}.
    {'try',{y,2},{f,1692}}.
    {'try',{y,1},{f,1690}}.
    {test,is_map,{f,1688},[{x,0}]}.
    {bif,'not',{f,1688},[{atom,ok}],{x,0}}.
    {test,has_map_fields,{f,1688},{y,0},{list,[{x,0}]}}.
    {jump,{f,1689}}.
  {label,1688}.
    {test,bs_start_match3,{f,1696},0,[{y,0}],{x,0}}.
    {test,bs_get_integer2,
          {f,1696},
          1,
          [{x,0},
           {integer,8},
           1,
           {field_flags,[{anno,[2767,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_get_integer2,
          {f,1696},
          2,
          [{x,0},
           {integer,8},
           1,
           {field_flags,[{anno,[2767,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1696},[{x,0},0]}.
    {test,is_eq_exact,{f,1696},[{x,2},{x,1}]}.
  {label,1689}.
    {try_end,{y,1}}.
    {jump,{f,1691}}.
  {label,1690}.
    {try_case,{y,1}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.
  {label,1691}.
    {try_end,{y,2}}.
    {jump,{f,1693}}.
  {label,1692}.
    {try_case,{y,2}}.
    {test,is_eq_exact,{f,1694},[{x,0},{atom,throw}]}.
  {label,1693}.
    {move,{y,0},{x,0}}.
    {deallocate,3}.
    return.
  {label,1694}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.
  {label,1695}.
    {line,[{scope,"\f"},{location,"bs_match_r23_SUITE.erl",2764}]}.
    {try_case_end,{x,0}}.
  {label,1696}.
    {line,[{scope,[5]},{location,"bs_match_r23_SUITE.erl",2764}]}.
    {try_case_end,{y,0}}.


{function, do_bs_match_gh_6660, 1, 1698}.
  {label,1697}.
    {line,[{location,"bs_match_r23_SUITE.erl",2778}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,do_bs_match_gh_6660},1}.
  {label,1698}.
    {allocate,1,1}.
    {'try',{y,0},{f,1699}}.
    {test,bs_start_match3,{f,1700},1,[{x,0}],{x,1}}.
    {test,bs_get_binary2,
          {f,1700},
          2,
          [{x,1},
           {atom,all},
           8,
           {field_flags,[{anno,[2780,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {move,{x,1},{x,0}}.
    {try_end,{y,0}}.
    {deallocate,1}.
    return.
  {label,1699}.
    {try_case,{y,0}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.
  {label,1700}.
    {line,[{scope,[3]},{location,"bs_match_r23_SUITE.erl",2779}]}.
    {try_case_end,{x,0}}.


{function, do_bs_match_gh_6755, 1, 1702}.
  {label,1701}.
    {line,[{location,"bs_match_r23_SUITE.erl",2790}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,do_bs_match_gh_6755},1}.
  {label,1702}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1708},1,[{x,0}],{x,1}}.
    {allocate_zero,2,2}.
    {move,{x,1},{y,1}}.
    {bs_get_position,{x,1},{y,0},2}.
    {test,bs_match_string,{f,1706},[{y,1},16,{string,<<"10">>}]}.
    {test,bs_get_integer2,
          {f,1706},
          2,
          [{x,1},
           {integer,16},
           1,
           {field_flags,[{anno,[2792,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,0}}.
    {select_val,{x,0},
                {f,1706},
                {list,[{integer,12336},{f,1704},{integer,12337},{f,1703}]}}.
  {label,1703}.
    {test,bs_test_tail2,{f,1706},[{x,1},0]}.
    {move,{atom,test2},{x,0}}.
    {jump,{f,1705}}.
  {label,1704}.
    {test,bs_test_tail2,{f,1706},[{x,1},0]}.
    {move,{atom,test},{x,0}}.
  {label,1705}.
    {line,[{location,"bs_match_r23_SUITE.erl",2796}]}.
    {call_ext,1,{extfunc,erlang,atom_to_list,1}}.
    {bs_set_position,{y,1},{y,0}}.
    {bs_get_tail,{y,1},{x,0},0}.
    {test,is_eq_exact,{f,1707},[{x,0},{literal,<<"b">>}]}.
    {move,{atom,b},{x,0}}.
    {deallocate,2}.
    return.
  {label,1706}.
    {bs_set_position,{x,1},{y,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_r23_SUITE.erl",2791}]}.
    {case_end,{x,0}}.
  {label,1707}.
    {line,[{location,"bs_match_r23_SUITE.erl",2798}]}.
    {case_end,{x,0}}.
  {label,1708}.
    {line,[{location,"bs_match_r23_SUITE.erl",2791}]}.
    {case_end,{x,0}}.


{function, do_bs_match_gh_7467, 1, 1710}.
  {label,1709}.
    {line,[{location,"bs_match_r23_SUITE.erl",2802}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,do_bs_match_gh_7467},1}.
  {label,1710}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1712},1,[{x,0}],{x,1}}.
    {test,bs_test_tail2,{f,1711},[{x,1},1]}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,1710}}. % do_bs_match_gh_7467/1
  {label,1711}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_r23_SUITE.erl",2803}]}.
    {badmatch,{x,0}}.
  {label,1712}.
    {badmatch,{x,0}}.


{function, do_bs_match_gh_8280, 0, 1714}.
  {label,1713}.
    {line,[{location,"bs_match_r23_SUITE.erl",2805}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,do_bs_match_gh_8280},0}.
  {label,1714}.
    {allocate,0,0}.
    {move,{literal,<<0,1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2808}]}.
    {call,1,{f,1968}}. % id/1
    {test,bs_start_match3,{f,1715},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,1715},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[2808,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,1715},
          3,
          [{x,1},
           {integer,3},
           8,
           {field_flags,[{anno,[2808,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1715},[{x,1},0]}.
    {test,is_eq_exact,{f,1715},[{x,2},{integer,0}]}.
    {test,is_eq_exact,{f,1715},[{x,3},{literal,<<1,2,3>>}]}.
    {move,{literal,{0,<<1,2,3>>}},{x,0}}.
    {deallocate,0}.
    return.
  {label,1715}.
    {badmatch,{x,0}}.


{function, binary_aliases, 1, 1717}.
  {label,1716}.
    {line,[{location,"bs_match_r23_SUITE.erl",2814}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,binary_aliases},1}.
  {label,1717}.
    {allocate_zero,26,0}.
    {make_fun2,{f,2042},0,0,0}.
    {move,{x,0},{y,25}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2816}]}.
    {call,1,{f,1968}}. % id/1
    {move,{y,25},{x,1}}.
    {call_fun,1}.
    {test,is_eq_exact,{f,1839},[{x,0},{literal,{42,42}}]}.
    {move,{literal,<<"c">>},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_r23_SUITE.erl",2817}]}.
    {call,1,{f,1968}}. % id/1
    {move,{y,25},{x,1}}.
    {init,{y,25}}.
    {call_fun,1}.
    {test,is_eq_exact,{f,1838},[{x,0},{literal,{99,99}}]}.
    {make_fun2,{f,2040},0,0,0}.
    {move,{x,0},{y,25}}.
    {move,{literal,{ba_foo,<<"ÿ">>,undefined,undefined}},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_r23_SUITE.erl",2820}]}.
    {call,1,{f,1968}}. % id/1
    {move,{y,25},{x,1}}.
    {call_fun,1}.
    {test,is_eq_exact,{f,1837},[{x,0},{literal,{255,255}}]}.
    {move,{literal,{ba_foo,<<"k">>,undefined,undefined}},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_r23_SUITE.erl",2821}]}.
    {call,1,{f,1968}}. % id/1
    {move,{y,25},{x,1}}.
    {init,{y,25}}.
    {call_fun,1}.
    {test,is_eq_exact,{f,1836},[{x,0},{literal,{107,107}}]}.
    {make_fun2,{f,2038},0,0,0}.
    {move,{x,0},{y,25}}.
    {move,{literal,{ba_foo,<<"ÿ">>,undefined,undefined}},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_r23_SUITE.erl",2824}]}.
    {call,1,{f,1968}}. % id/1
    {move,{y,25},{x,1}}.
    {call_fun,1}.
    {test,is_eq_exact,{f,1835},[{x,0},{literal,{255,15,15}}]}.
    {move,{literal,{ba_foo,<<"\\">>,undefined,undefined}},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_r23_SUITE.erl",2825}]}.
    {call,1,{f,1968}}. % id/1
    {move,{y,25},{x,1}}.
    {init,{y,25}}.
    {call_fun,1}.
    {test,is_eq_exact,{f,1834},[{x,0},{literal,{92,5,12}}]}.
    {make_fun2,{f,2036},0,0,0}.
    {move,{x,0},{y,25}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_r23_SUITE.erl",2832}]}.
    {call,1,{f,1968}}. % id/1
    {move,{y,25},{x,1}}.
    {init,{y,25}}.
    {call_fun,1}.
    {test,is_eq_exact,{f,1833},[{x,0},{integer,6}]}.
    {make_fun2,{f,2032},0,0,0}.
    {move,{x,0},{y,25}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_r23_SUITE.erl",2838}]}.
    {call,1,{f,1968}}. % id/1
    {move,{y,25},{x,1}}.
    {init,{y,25}}.
    {call_fun,1}.
    {test,is_eq_exact,{f,1832},[{x,0},{literal,{42,42,<<"*">>}}]}.
    {make_fun2,{f,2029},0,0,0}.
    {move,{x,0},{y,25}}.
    {move,{integer,12},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{integer,7},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_r23_SUITE.erl",2844}]}.
    {call_fun,2}.
    {test,is_eq_exact,{f,1831},[{x,0},{integer,124}]}.
    {move,{integer,13},{x,1}}.
    {move,{y,25},{x,2}}.
    {init,{y,25}}.
    {move,{integer,14},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_r23_SUITE.erl",2845}]}.
    {call_fun,2}.
    {test,is_eq_exact,{f,1830},[{x,0},{integer,237}]}.
    {make_fun2,{f,2025},0,0,0}.
    {move,{x,0},{y,24}}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_r23_SUITE.erl",2851}]}.
    {call,1,{f,1968}}. % id/1
    {move,{y,24},{x,1}}.
    {call_fun,1}.
    {test,is_eq_exact,{f,1829},[{x,0},{literal,{0,0,<<0>>}}]}.
    {'catch',{y,25},{f,1718}}.
    {move,{y,24},{x,1}}.
    {init,{y,24}}.
    {move,{literal,<<1>>},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_r23_SUITE.erl",2852}]}.
    {call_fun,1}.
  {label,1718}.
    {catch_end,{y,25}}.
    {test,is_tagged_tuple,{f,1828},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1828},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1828},[{x,1}]}.
    {test,test_arity,{f,1828},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1828},[{x,1},{literal,{badmatch,<<1>>}}]}.
    {make_fun2,{f,2021},0,0,0}.
    {move,{x,0},{y,25}}.
    {move,{literal,<<"ý">>},{x,0}}.
    {line,[{scope,"2"},{location,"bs_match_r23_SUITE.erl",2858}]}.
    {call,1,{f,1968}}. % id/1
    {move,{y,25},{x,1}}.
    {init,{y,25}}.
    {call_fun,1}.
    {test,is_eq_exact,{f,1827},[{x,0},{literal,{253,253,<<"ý">>,<<"ý">>}}]}.
    {make_fun2,{f,2017},0,0,0}.
    {move,{x,0},{y,25}}.
    {move,{literal,<<"É">>},{x,0}}.
    {line,[{scope,"2"},{location,"bs_match_r23_SUITE.erl",2864}]}.
    {call,1,{f,1968}}. % id/1
    {move,{y,25},{x,1}}.
    {init,{y,25}}.
    {call_fun,1}.
    {test,is_eq_exact,
          {f,1826},
          [{x,0},{literal,{201,201,<<"É">>,<<"É">>,<<"É">>,<<"É">>}}]}.
    {make_fun2,{f,2014},0,0,0}.
    {move,{x,0},{y,25}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,"2"},{location,"bs_match_r23_SUITE.erl",2869}]}.
    {call,1,{f,1968}}. % id/1
    {move,{y,25},{x,1}}.
    {call_fun,1}.
    {test,is_eq_exact,{f,1825},[{x,0},{literal,<<>>}]}.
    {'catch',{y,24},{f,1719}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,"2"},{location,"bs_match_r23_SUITE.erl",2870}]}.
    {call,1,{f,1968}}. % id/1
    {move,{y,25},{x,1}}.
    {init,{y,25}}.
    {call_fun,1}.
  {label,1719}.
    {catch_end,{y,24}}.
    {test,is_tagged_tuple,{f,1824},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1824},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1824},[{x,1}]}.
    {test,test_arity,{f,1824},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1824},[{x,1},{literal,{badmatch,42}}]}.
    {make_fun2,{f,2010},0,0,0}.
    {move,{x,0},{y,25}}.
    {move,{literal,<<0,0,0,0>>},{x,0}}.
    {line,[{scope,"0"},{location,"bs_match_r23_SUITE.erl",2876}]}.
    {call,1,{f,1968}}. % id/1
    {move,{y,25},{x,1}}.
    {call_fun,1}.
    {test,is_eq_exact,
          {f,1823},
          [{x,0},{literal,{<<0>>,<<0,0,0>>,0,0,0,0,0,0}}]}.
    {move,{literal,<<"«ÍïW">>},{x,0}}.
    {line,[{scope,"0"},{location,"bs_match_r23_SUITE.erl",2878}]}.
    {call,1,{f,1968}}. % id/1
    {move,{y,25},{x,1}}.
    {init,{y,25}}.
    {call_fun,1}.
    {test,is_eq_exact,
          {f,1822},
          [{x,0},{literal,{<<"«">>,<<"ÍïW">>,43981,61271,171,205,239,87}}]}.
    {make_fun2,{f,2008},0,0,0}.
    {move,{x,0},{y,25}}.
    {move,{literal,#{key => <<"ÿ">>}},{x,0}}.
    {line,[{scope,"0"},{location,"bs_match_r23_SUITE.erl",2881}]}.
    {call,1,{f,1968}}. % id/1
    {move,{y,25},{x,1}}.
    {call_fun,1}.
    {test,is_eq_exact,{f,1821},[{x,0},{literal,{255,255}}]}.
    {move,{literal,#{key => <<"Ñ">>}},{x,0}}.
    {line,[{scope,"0"},{location,"bs_match_r23_SUITE.erl",2882}]}.
    {call,1,{f,1968}}. % id/1
    {move,{y,25},{x,1}}.
    {init,{y,25}}.
    {call_fun,1}.
    {test,is_eq_exact,{f,1820},[{x,0},{literal,{209,209}}]}.
    {make_fun2,{f,2004},0,0,0}.
    {move,{x,0},{y,25}}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{scope,"0"},{location,"bs_match_r23_SUITE.erl",2888}]}.
    {call,1,{f,1968}}. % id/1
    {move,{y,25},{x,1}}.
    {call_fun,1}.
    {test,is_eq_exact,{f,1819},[{x,0},{literal,{0,0,<<>>}}]}.
    {move,{literal,<<1,1:1>>},{x,0}}.
    {line,[{scope,"0"},{location,"bs_match_r23_SUITE.erl",2889}]}.
    {call,1,{f,1968}}. % id/1
    {move,{y,25},{x,1}}.
    {call_fun,1}.
    {test,is_tuple,{f,1818},[{x,0}]}.
    {test,test_arity,{f,1818},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1818},[{x,1},{integer,1}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,1818},[{x,1},{integer,1}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,bs_start_match3,{f,1818},2,[{x,1}],{x,1}}.
    {test,bs_match_string,{f,1818},[{x,1},1,{string,<<128>>}]}.
    {test,bs_test_tail2,{f,1818},[{x,1},0]}.
    {move,{literal,<<"\b*">>},{x,0}}.
    {line,[{scope,"0"},{location,"bs_match_r23_SUITE.erl",2890}]}.
    {call,1,{f,1968}}. % id/1
    {move,{y,25},{x,1}}.
    {init,{y,25}}.
    {call_fun,1}.
    {test,is_eq_exact,{f,1817},[{x,0},{literal,{8,42,<<"*">>}}]}.
    {make_fun2,{f,2001},0,0,0}.
    {move,{x,0},{y,25}}.
    {move,{x,0},{x,1}}.
    {move,{literal,[<<>>|0]},{x,0}}.
    {line,[{scope,"0"},{location,"bs_match_r23_SUITE.erl",2896}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,1816},[{x,0},{atom,ok}]}.
    {move,{y,25},{x,1}}.
    {move,{literal,[<<"ÿÿÿÿ">>|32]},{x,0}}.
    {line,[{scope,"0"},{location,"bs_match_r23_SUITE.erl",2897}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,1815},[{x,0},{atom,ok}]}.
    {'catch',{y,23},{f,1720}}.
    {move,{y,25},{x,1}}.
    {move,{literal,[<<0,0>>|0]},{x,0}}.
    {line,[{scope,"0"},{location,"bs_match_r23_SUITE.erl",2898}]}.
    {call_fun,1}.
  {label,1720}.
    {catch_end,{y,23}}.
    {test,is_tagged_tuple,{f,1814},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1814},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1814},[{x,1}]}.
    {test,test_arity,{f,1814},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1814},[{x,1},{literal,{badmatch,[<<0,0>>|0]}}]}.
    {'catch',{y,22},{f,1721}}.
    {move,{y,25},{x,1}}.
    {init,{y,25}}.
    {move,{literal,[<<0,0>>|atom]},{x,0}}.
    {line,[{scope,"."},{location,"bs_match_r23_SUITE.erl",2899}]}.
    {call_fun,1}.
  {label,1721}.
    {catch_end,{y,22}}.
    {test,is_tagged_tuple,{f,1813},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1813},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1813},[{x,1}]}.
    {test,test_arity,{f,1813},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1813},[{x,1},{literal,{badmatch,[<<0,0>>|atom]}}]}.
    {make_fun2,{f,1998},0,0,0}.
    {move,{x,0},{y,25}}.
    {move,{x,0},{x,1}}.
    {move,{literal,{<<>>,0}},{x,0}}.
    {line,[{scope,","},{location,"bs_match_r23_SUITE.erl",2905}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,1812},[{x,0},{integer,0}]}.
    {move,{y,25},{x,1}}.
    {move,{literal,{<<"ÿÿÿÿ">>,32}},{x,0}}.
    {line,[{scope,","},{location,"bs_match_r23_SUITE.erl",2906}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,1811},[{x,0},{integer,32}]}.
    {'catch',{y,21},{f,1722}}.
    {move,{y,25},{x,1}}.
    {move,{literal,{<<0,0>>,0}},{x,0}}.
    {line,[{scope,","},{location,"bs_match_r23_SUITE.erl",2907}]}.
    {call_fun,1}.
  {label,1722}.
    {catch_end,{y,21}}.
    {test,is_tagged_tuple,{f,1810},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1810},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1810},[{x,1}]}.
    {test,test_arity,{f,1810},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1810},[{x,1},{literal,{badmatch,{<<0,0>>,0}}}]}.
    {'catch',{y,20},{f,1723}}.
    {move,{y,25},{x,1}}.
    {init,{y,25}}.
    {move,{literal,{<<0,0>>,atom}},{x,0}}.
    {line,[{scope,"*"},{location,"bs_match_r23_SUITE.erl",2908}]}.
    {call_fun,1}.
  {label,1723}.
    {catch_end,{y,20}}.
    {test,is_tagged_tuple,{f,1809},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1809},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1809},[{x,1}]}.
    {test,test_arity,{f,1809},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1809},[{x,1},{literal,{badmatch,{<<0,0>>,atom}}}]}.
    {make_fun2,{f,1995},0,0,0}.
    {move,{x,0},{y,25}}.
    {move,{x,0},{x,1}}.
    {move,{literal,[{<<>>,0}]},{x,0}}.
    {line,[{scope,"("},{location,"bs_match_r23_SUITE.erl",2914}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,1808},[{x,0},{integer,0}]}.
    {move,{y,25},{x,1}}.
    {move,{literal,[{<<"ÿÿÿÿ">>,32}]},{x,0}}.
    {line,[{scope,"("},{location,"bs_match_r23_SUITE.erl",2915}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,1807},[{x,0},{integer,32}]}.
    {'catch',{y,19},{f,1724}}.
    {move,{y,25},{x,1}}.
    {move,{literal,[{<<0,0>>,0}]},{x,0}}.
    {line,[{scope,"("},{location,"bs_match_r23_SUITE.erl",2916}]}.
    {call_fun,1}.
  {label,1724}.
    {catch_end,{y,19}}.
    {test,is_tagged_tuple,{f,1806},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1806},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1806},[{x,1}]}.
    {test,test_arity,{f,1806},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1806},[{x,1},{literal,{badmatch,[{<<0,0>>,0}]}}]}.
    {'catch',{y,18},{f,1725}}.
    {move,{y,25},{x,1}}.
    {init,{y,25}}.
    {move,{literal,[{<<0,0>>,atom}]},{x,0}}.
    {line,[{scope,"&"},{location,"bs_match_r23_SUITE.erl",2917}]}.
    {call_fun,1}.
  {label,1725}.
    {catch_end,{y,18}}.
    {test,is_tagged_tuple,{f,1805},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1805},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1805},[{x,1}]}.
    {test,test_arity,{f,1805},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1805},[{x,1},{literal,{badmatch,[{<<0,0>>,atom}]}}]}.
    {make_fun2,{f,1993},0,0,0}.
    {move,{x,0},{y,25}}.
    {move,{literal,#{[] => <<"*">>}},{x,0}}.
    {line,[{scope,"$"},{location,"bs_match_r23_SUITE.erl",2920}]}.
    {call,1,{f,1968}}. % id/1
    {move,{y,25},{x,1}}.
    {call_fun,1}.
    {test,is_eq_exact,{f,1804},[{x,0},{atom,ok}]}.
    {'catch',{y,17},{f,1726}}.
    {move,{literal,#{[] => <<>>}},{x,0}}.
    {line,[{scope,"$"},{location,"bs_match_r23_SUITE.erl",2921}]}.
    {call,1,{f,1968}}. % id/1
    {move,{y,25},{x,1}}.
    {call_fun,1}.
  {label,1726}.
    {catch_end,{y,17}}.
    {test,is_tagged_tuple,{f,1803},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1803},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1803},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1803},[{x,1},{atom,function_clause}]}.
    {'catch',{y,16},{f,1727}}.
    {move,{atom,atom},{x,0}}.
    {line,[{scope,"\""},{location,"bs_match_r23_SUITE.erl",2922}]}.
    {call,1,{f,1968}}. % id/1
    {move,{y,25},{x,1}}.
    {init,{y,25}}.
    {call_fun,1}.
  {label,1727}.
    {catch_end,{y,16}}.
    {test,is_tagged_tuple,{f,1802},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1802},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1802},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1802},[{x,1},{atom,function_clause}]}.
    {make_fun2,{f,1990},0,0,0}.
    {move,{x,0},{y,25}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope," "},{location,"bs_match_r23_SUITE.erl",2931}]}.
    {call,1,{f,1968}}. % id/1
    {move,{y,25},{x,1}}.
    {call_fun,1}.
    {test,is_eq_exact,{f,1801},[{x,0},{atom,ok}]}.
    {move,{y,25},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope," "},{location,"bs_match_r23_SUITE.erl",2932}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,1800},[{x,0},{atom,error}]}.
    {move,{y,25},{x,1}}.
    {move,{literal,<<1:1>>},{x,0}}.
    {line,[{scope," "},{location,"bs_match_r23_SUITE.erl",2933}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,1799},[{x,0},{atom,error}]}.
    {move,{y,25},{x,1}}.
    {init,{y,25}}.
    {move,{atom,atom},{x,0}}.
    {line,[{scope," "},{location,"bs_match_r23_SUITE.erl",2934}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,1798},[{x,0},{atom,error}]}.
    {make_fun2,{f,1986},0,0,0}.
    {move,{x,0},{y,25}}.
    {'catch',{y,15},{f,1728}}.
    {move,{x,0},{x,1}}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{scope," "},{location,"bs_match_r23_SUITE.erl",2939}]}.
    {call_fun,1}.
  {label,1728}.
    {catch_end,{y,15}}.
    {test,is_tagged_tuple,{f,1797},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1797},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1797},[{x,1}]}.
    {test,test_arity,{f,1797},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1797},[{x,1},{literal,{badmatch,<<0>>}}]}.
    {'catch',{y,14},{f,1729}}.
    {move,{y,25},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[30]},{location,"bs_match_r23_SUITE.erl",2940}]}.
    {call_fun,1}.
  {label,1729}.
    {catch_end,{y,14}}.
    {test,is_tagged_tuple,{f,1796},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1796},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1796},[{x,1}]}.
    {test,test_arity,{f,1796},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1796},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,13},{f,1730}}.
    {move,{y,25},{x,1}}.
    {init,{y,25}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[28]},{location,"bs_match_r23_SUITE.erl",2941}]}.
    {call_fun,1}.
  {label,1730}.
    {catch_end,{y,13}}.
    {test,is_tagged_tuple,{f,1795},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1795},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1795},[{x,1}]}.
    {test,test_arity,{f,1795},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1795},[{x,1},{literal,{badmatch,0}}]}.
    {make_fun2,{f,1984},0,0,0}.
    {move,{x,0},{x,1}}.
    {move,{literal,[<<>>]},{x,0}}.
    {line,[{scope,[26]},{location,"bs_match_r23_SUITE.erl",2944}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,1794},[{x,0},{atom,ok}]}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[26]},{location,"bs_match_r23_SUITE.erl",2946}]}.
    {call,1,{f,1968}}. % id/1
    {move,{x,0},{y,25}}.
    {move,{literal,<<0>>},{x,0}}.
    {call,1,{f,1968}}. % id/1
    {move,{x,0},{y,24}}.
    {move,{integer,0},{x,0}}.
    {call,1,{f,1968}}. % id/1
    {move,{y,24},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{y,25},{x,0}}.
    {init,{y,24}}.
    {init,{y,25}}.
    {call,3,{f,1841}}. % gh_6467/3
    {test,is_eq_exact,{f,1793},[{x,0},{atom,a}]}.
    {'catch',{y,12},{f,1731}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[26]},{location,"bs_match_r23_SUITE.erl",2947}]}.
    {call,1,{f,1968}}. % id/1
    {move,{x,0},{y,25}}.
    {move,{literal,<<0>>},{x,0}}.
    {call,1,{f,1968}}. % id/1
    {move,{x,0},{y,24}}.
    {move,nil,{x,0}}.
    {call,1,{f,1968}}. % id/1
    {move,{y,24},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{y,25},{x,0}}.
    {init,{y,24}}.
    {init,{y,25}}.
    {call,3,{f,1841}}. % gh_6467/3
  {label,1731}.
    {catch_end,{y,12}}.
    {test,is_tagged_tuple,{f,1792},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1792},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1792},[{x,1}]}.
    {test,test_arity,{f,1792},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1792},[{x,1},{literal,{badmatch,0}}]}.
    {'catch',{y,11},{f,1732}}.
    {move,{literal,<<7>>},{x,0}}.
    {line,[{scope,[24]},{location,"bs_match_r23_SUITE.erl",2948}]}.
    {call,1,{f,1968}}. % id/1
    {move,{x,0},{y,25}}.
    {move,{literal,<<"!">>},{x,0}}.
    {call,1,{f,1968}}. % id/1
    {move,{x,0},{y,24}}.
    {move,nil,{x,0}}.
    {call,1,{f,1968}}. % id/1
    {move,{y,24},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{y,25},{x,0}}.
    {init,{y,24}}.
    {init,{y,25}}.
    {call,3,{f,1841}}. % gh_6467/3
  {label,1732}.
    {catch_end,{y,11}}.
    {test,is_tagged_tuple,{f,1791},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1791},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1791},[{x,1}]}.
    {test,test_arity,{f,1791},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1791},[{x,1},{literal,{badmatch,<<7>>}}]}.
    {make_fun2,{f,1981},0,0,0}.
    {move,{x,0},{y,25}}.
    {move,{x,0},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r23_SUITE.erl",2953}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,1790},[{x,0},{atom,ok}]}.
    {move,{y,25},{x,1}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r23_SUITE.erl",2954}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,1789},[{x,0},{atom,error}]}.
    {move,{y,25},{x,1}}.
    {init,{y,25}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r23_SUITE.erl",2955}]}.
    {call_fun,1}.
    {test,is_eq_exact,{f,1788},[{x,0},{atom,error}]}.
    {move,{atom,true},{x,1}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r23_SUITE.erl",2957}]}.
    {call,2,{f,1845}}. % gh6415_a/2
    {test,is_eq_exact,{f,1787},[{x,0},{atom,true}]}.
    {move,{atom,false},{x,1}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r23_SUITE.erl",2958}]}.
    {call,2,{f,1845}}. % gh6415_a/2
    {test,is_eq_exact,{f,1786},[{x,0},{atom,error}]}.
    {move,{atom,false},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r23_SUITE.erl",2959}]}.
    {call,2,{f,1845}}. % gh6415_a/2
    {test,is_eq_exact,{f,1785},[{x,0},{atom,error}]}.
    {move,{atom,not_bool},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r23_SUITE.erl",2960}]}.
    {call,2,{f,1845}}. % gh6415_a/2
    {test,is_eq_exact,{f,1784},[{x,0},{atom,error}]}.
    {move,{atom,true},{x,1}}.
    {move,{atom,any},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r23_SUITE.erl",2961}]}.
    {call,2,{f,1845}}. % gh6415_a/2
    {test,is_eq_exact,{f,1783},[{x,0},{atom,error}]}.
    {move,{atom,false},{x,1}}.
    {move,{atom,any},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r23_SUITE.erl",2962}]}.
    {call,2,{f,1845}}. % gh6415_a/2
    {test,is_eq_exact,{f,1782},[{x,0},{atom,error}]}.
    {move,{literal,<<"c">>},{x,1}}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r23_SUITE.erl",2964}]}.
    {call,2,{f,1852}}. % gh6415_b/2
    {test,is_eq_exact,{f,1781},[{x,0},{atom,ok}]}.
    {move,{literal,<<"c">>},{x,1}}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r23_SUITE.erl",2965}]}.
    {call,2,{f,1852}}. % gh6415_b/2
    {test,is_eq_exact,{f,1780},[{x,0},{atom,ok}]}.
    {move,{literal,<<>>},{x,1}}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r23_SUITE.erl",2966}]}.
    {call,2,{f,1852}}. % gh6415_b/2
    {test,is_eq_exact,{f,1779},[{x,0},{atom,error}]}.
    {move,{literal,<<>>},{x,1}}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r23_SUITE.erl",2967}]}.
    {call,2,{f,1852}}. % gh6415_b/2
    {test,is_eq_exact,{f,1778},[{x,0},{atom,error}]}.
    {move,{atom,true},{x,1}}.
    {move,{literal,<<"\n">>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r23_SUITE.erl",2969}]}.
    {call,2,{f,1856}}. % gh6415_c/2
    {test,is_eq_exact,{f,1777},[{x,0},{atom,ok}]}.
    {move,{atom,false},{x,1}}.
    {move,{literal,<<"\n">>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r23_SUITE.erl",2970}]}.
    {call,2,{f,1856}}. % gh6415_c/2
    {test,is_eq_exact,{f,1776},[{x,0},{atom,error}]}.
    {move,{atom,true},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r23_SUITE.erl",2971}]}.
    {call,2,{f,1856}}. % gh6415_c/2
    {test,is_eq_exact,{f,1775},[{x,0},{atom,error}]}.
    {move,{atom,true},{x,1}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r23_SUITE.erl",2972}]}.
    {call,2,{f,1856}}. % gh6415_c/2
    {test,is_eq_exact,{f,1774},[{x,0},{atom,error}]}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r23_SUITE.erl",2974}]}.
    {call,1,{f,1864}}. % gh6415_case_clause/1
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r23_SUITE.erl",2975}]}.
    {call,1,{f,1864}}. % gh6415_case_clause/1
    {move,{atom,a},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r23_SUITE.erl",2976}]}.
    {call,1,{f,1864}}. % gh6415_case_clause/1
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r23_SUITE.erl",2978}]}.
    {call,1,{f,1882}}. % gh6415_nomatch/1
    {test,is_eq_exact,{f,1773},[{x,0},{atom,error}]}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r23_SUITE.erl",2979}]}.
    {call,1,{f,1882}}. % gh6415_nomatch/1
    {test,is_eq_exact,{f,1772},[{x,0},{atom,error}]}.
    {move,{literal,<<"ab">>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r23_SUITE.erl",2980}]}.
    {call,1,{f,1882}}. % gh6415_nomatch/1
    {test,is_eq_exact,{f,1771},[{x,0},{atom,error}]}.
    {move,{literal,#{0 => <<>>}},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r23_SUITE.erl",2981}]}.
    {call,1,{f,1882}}. % gh6415_nomatch/1
    {test,is_eq_exact,{f,1770},[{x,0},{atom,error}]}.
    {move,{literal,#{0 => <<"*">>}},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r23_SUITE.erl",2982}]}.
    {call,1,{f,1882}}. % gh6415_nomatch/1
    {test,is_eq_exact,{f,1769},[{x,0},{atom,error}]}.
    {move,{literal,#{0 => 42}},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r23_SUITE.erl",2983}]}.
    {call,1,{f,1882}}. % gh6415_nomatch/1
    {test,is_eq_exact,{f,1768},[{x,0},{atom,error}]}.
    {move,{literal,#{}},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r23_SUITE.erl",2984}]}.
    {call,1,{f,1882}}. % gh6415_nomatch/1
    {test,is_eq_exact,{f,1767},[{x,0},{atom,error}]}.
    {move,{literal,{a,tuple}},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r23_SUITE.erl",2985}]}.
    {call,1,{f,1882}}. % gh6415_nomatch/1
    {test,is_eq_exact,{f,1766},[{x,0},{atom,error}]}.
    {move,{atom,an_atom},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r23_SUITE.erl",2986}]}.
    {call,1,{f,1882}}. % gh6415_nomatch/1
    {test,is_eq_exact,{f,1765},[{x,0},{atom,error}]}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r23_SUITE.erl",2988}]}.
    {call,1,{f,1968}}. % id/1
    {call,1,{f,1928}}. % gh6415_match_a/1
    {test,is_eq_exact,{f,1764},[{x,0},{integer,42}]}.
    {'catch',{y,10},{f,1733}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r23_SUITE.erl",2989}]}.
    {call,1,{f,1968}}. % id/1
    {call,1,{f,1928}}. % gh6415_match_a/1
  {label,1733}.
    {catch_end,{y,10}}.
    {test,is_tagged_tuple,{f,1763},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1763},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1763},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1763},[{x,1},{atom,function_clause}]}.
    {'catch',{y,9},{f,1734}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[20]},{location,"bs_match_r23_SUITE.erl",2990}]}.
    {call,1,{f,1968}}. % id/1
    {call,1,{f,1928}}. % gh6415_match_a/1
  {label,1734}.
    {catch_end,{y,9}}.
    {test,is_tagged_tuple,{f,1762},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1762},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1762},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1762},[{x,1},{atom,function_clause}]}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[18]},{location,"bs_match_r23_SUITE.erl",2992}]}.
    {call,1,{f,1968}}. % id/1
    {call,1,{f,1931}}. % gh6415_match_b/1
    {test,is_eq_exact,{f,1761},[{x,0},{literal,{42,<<>>}}]}.
    {'catch',{y,8},{f,1735}}.
    {move,{literal,<<1,2>>},{x,0}}.
    {line,[{scope,[18]},{location,"bs_match_r23_SUITE.erl",2993}]}.
    {call,1,{f,1968}}. % id/1
    {call,1,{f,1931}}. % gh6415_match_b/1
  {label,1735}.
    {catch_end,{y,8}}.
    {test,is_tagged_tuple,{f,1760},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1760},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1760},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1760},[{x,1},{atom,function_clause}]}.
    {'catch',{y,7},{f,1736}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[16]},{location,"bs_match_r23_SUITE.erl",2994}]}.
    {call,1,{f,1968}}. % id/1
    {call,1,{f,1931}}. % gh6415_match_b/1
  {label,1736}.
    {catch_end,{y,7}}.
    {test,is_tagged_tuple,{f,1759},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1759},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1759},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1759},[{x,1},{atom,function_clause}]}.
    {'catch',{y,6},{f,1737}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_r23_SUITE.erl",2995}]}.
    {call,1,{f,1968}}. % id/1
    {call,1,{f,1931}}. % gh6415_match_b/1
  {label,1737}.
    {catch_end,{y,6}}.
    {test,is_tagged_tuple,{f,1758},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1758},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1758},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1758},[{x,1},{atom,function_clause}]}.
    {'catch',{y,5},{f,1738}}.
    {line,[{scope,"\f"},{location,"bs_match_r23_SUITE.erl",2997}]}.
    {call,0,{f,1934}}. % gh6415_match_c/0
  {label,1738}.
    {catch_end,{y,5}}.
    {test,is_tagged_tuple,{f,1757},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1757},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1757},[{x,1}]}.
    {test,test_arity,{f,1757},[{x,1},2]}.
    {move,{literal,<<"£">>},{x,0}}.
    {line,[{scope,"\n"},{location,"bs_match_r23_SUITE.erl",2999}]}.
    {call,1,{f,1968}}. % id/1
    {call,1,{f,1938}}. % gh6415_match_d/1
    {test,is_eq_exact,{f,1756},[{x,0},{atom,ok}]}.
    {'catch',{y,4},{f,1739}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,"\n"},{location,"bs_match_r23_SUITE.erl",3000}]}.
    {call,1,{f,1968}}. % id/1
    {call,1,{f,1938}}. % gh6415_match_d/1
  {label,1739}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,1755},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1755},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1755},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1755},[{x,1},{atom,function_clause}]}.
    {'catch',{y,3},{f,1740}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_r23_SUITE.erl",3001}]}.
    {call,1,{f,1968}}. % id/1
    {call,1,{f,1938}}. % gh6415_match_d/1
  {label,1740}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,1754},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1754},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1754},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1754},[{x,1},{atom,function_clause}]}.
    {move,{literal,<<163,0>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",3003}]}.
    {call,1,{f,1968}}. % id/1
    {call,1,{f,1941}}. % gh6415_match_e/1
    {test,is_eq_exact,{f,1753},[{x,0},{atom,ok}]}.
    {move,{literal,<<"c\b*">>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",3004}]}.
    {call,1,{f,1968}}. % id/1
    {call,1,{f,1941}}. % gh6415_match_e/1
    {test,is_eq_exact,{f,1752},[{x,0},{atom,ok}]}.
    {move,{literal,<<99,17,255,255,1:1>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",3005}]}.
    {call,1,{f,1968}}. % id/1
    {call,1,{f,1941}}. % gh6415_match_e/1
    {test,is_eq_exact,{f,1751},[{x,0},{atom,ok}]}.
    {'catch',{y,2},{f,1741}}.
    {move,{literal,<<"£">>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",3006}]}.
    {call,1,{f,1968}}. % id/1
    {call,1,{f,1941}}. % gh6415_match_e/1
  {label,1741}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,1750},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1750},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1750},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1750},[{x,1},{atom,function_clause}]}.
    {'catch',{y,1},{f,1742}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",3007}]}.
    {call,1,{f,1968}}. % id/1
    {call,1,{f,1941}}. % gh6415_match_e/1
  {label,1742}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,1749},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1749},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1749},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1749},[{x,1},{atom,function_clause}]}.
    {'catch',{y,0},{f,1743}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",3008}]}.
    {call,1,{f,1968}}. % id/1
    {call,1,{f,1941}}. % gh6415_match_e/1
  {label,1743}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1748},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1748},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1748},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1748},[{x,1},{atom,function_clause}]}.
    {move,{literal,<<17,15,48,1:1>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",3010}]}.
    {call,1,{f,1968}}. % id/1
    {call,1,{f,1944}}. % gh6415_match_f/1
    {test,is_eq_exact,{f,1747},[{x,0},{integer,7777}]}.
    {move,{literal,<<17,2,105,0:1>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",3011}]}.
    {call,1,{f,1968}}. % id/1
    {call,1,{f,1944}}. % gh6415_match_f/1
    {test,is_eq_exact,{f,1746},[{x,0},{integer,1234}]}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",3012}]}.
    {call,1,{f,1968}}. % id/1
    {call,1,{f,1944}}. % gh6415_match_f/1
    {test,is_eq_exact,{f,1745},[{x,0},{atom,error}]}.
    {move,{literal,<<"\b*">>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",3013}]}.
    {call,1,{f,1968}}. % id/1
    {call,1,{f,1944}}. % gh6415_match_f/1
    {test,is_eq_exact,{f,1744},[{x,0},{atom,error}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,26}.
    return.
  {label,1744}.
    {badmatch,{x,0}}.
  {label,1745}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",3012}]}.
    {badmatch,{x,0}}.
  {label,1746}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",3011}]}.
    {badmatch,{x,0}}.
  {label,1747}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",3010}]}.
    {badmatch,{x,0}}.
  {label,1748}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",3008}]}.
    {badmatch,{x,0}}.
  {label,1749}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",3007}]}.
    {badmatch,{x,0}}.
  {label,1750}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",3006}]}.
    {badmatch,{x,0}}.
  {label,1751}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",3005}]}.
    {badmatch,{x,0}}.
  {label,1752}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",3004}]}.
    {badmatch,{x,0}}.
  {label,1753}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",3003}]}.
    {badmatch,{x,0}}.
  {label,1754}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",3001}]}.
    {badmatch,{x,0}}.
  {label,1755}.
    {line,[{scope,"\b"},{location,"bs_match_r23_SUITE.erl",3000}]}.
    {badmatch,{x,0}}.
  {label,1756}.
    {line,[{scope,"\n"},{location,"bs_match_r23_SUITE.erl",2999}]}.
    {badmatch,{x,0}}.
  {label,1757}.
    {line,[{scope,"\n"},{location,"bs_match_r23_SUITE.erl",2997}]}.
    {badmatch,{x,0}}.
  {label,1758}.
    {line,[{scope,"\f"},{location,"bs_match_r23_SUITE.erl",2995}]}.
    {badmatch,{x,0}}.
  {label,1759}.
    {line,[{scope,[14]},{location,"bs_match_r23_SUITE.erl",2994}]}.
    {badmatch,{x,0}}.
  {label,1760}.
    {line,[{scope,[16]},{location,"bs_match_r23_SUITE.erl",2993}]}.
    {badmatch,{x,0}}.
  {label,1761}.
    {line,[{scope,[18]},{location,"bs_match_r23_SUITE.erl",2992}]}.
    {badmatch,{x,0}}.
  {label,1762}.
    {line,[{scope,[18]},{location,"bs_match_r23_SUITE.erl",2990}]}.
    {badmatch,{x,0}}.
  {label,1763}.
    {line,[{scope,[20]},{location,"bs_match_r23_SUITE.erl",2989}]}.
    {badmatch,{x,0}}.
  {label,1764}.
    {line,[{scope,[22]},{location,"bs_match_r23_SUITE.erl",2988}]}.
    {badmatch,{x,0}}.
  {label,1765}.
    {line,[{scope,[22]},{location,"bs_match_r23_SUITE.erl",2986}]}.
    {badmatch,{x,0}}.
  {label,1766}.
    {line,[{scope,[22]},{location,"bs_match_r23_SUITE.erl",2985}]}.
    {badmatch,{x,0}}.
  {label,1767}.
    {line,[{scope,[22]},{location,"bs_match_r23_SUITE.erl",2984}]}.
    {badmatch,{x,0}}.
  {label,1768}.
    {line,[{scope,[22]},{location,"bs_match_r23_SUITE.erl",2983}]}.
    {badmatch,{x,0}}.
  {label,1769}.
    {line,[{scope,[22]},{location,"bs_match_r23_SUITE.erl",2982}]}.
    {badmatch,{x,0}}.
  {label,1770}.
    {line,[{scope,[22]},{location,"bs_match_r23_SUITE.erl",2981}]}.
    {badmatch,{x,0}}.
  {label,1771}.
    {line,[{scope,[22]},{location,"bs_match_r23_SUITE.erl",2980}]}.
    {badmatch,{x,0}}.
  {label,1772}.
    {line,[{scope,[22]},{location,"bs_match_r23_SUITE.erl",2979}]}.
    {badmatch,{x,0}}.
  {label,1773}.
    {line,[{scope,[22]},{location,"bs_match_r23_SUITE.erl",2978}]}.
    {badmatch,{x,0}}.
  {label,1774}.
    {line,[{scope,[22]},{location,"bs_match_r23_SUITE.erl",2972}]}.
    {badmatch,{x,0}}.
  {label,1775}.
    {line,[{scope,[22]},{location,"bs_match_r23_SUITE.erl",2971}]}.
    {badmatch,{x,0}}.
  {label,1776}.
    {line,[{scope,[22]},{location,"bs_match_r23_SUITE.erl",2970}]}.
    {badmatch,{x,0}}.
  {label,1777}.
    {line,[{scope,[22]},{location,"bs_match_r23_SUITE.erl",2969}]}.
    {badmatch,{x,0}}.
  {label,1778}.
    {line,[{scope,[22]},{location,"bs_match_r23_SUITE.erl",2967}]}.
    {badmatch,{x,0}}.
  {label,1779}.
    {line,[{scope,[22]},{location,"bs_match_r23_SUITE.erl",2966}]}.
    {badmatch,{x,0}}.
  {label,1780}.
    {line,[{scope,[22]},{location,"bs_match_r23_SUITE.erl",2965}]}.
    {badmatch,{x,0}}.
  {label,1781}.
    {line,[{scope,[22]},{location,"bs_match_r23_SUITE.erl",2964}]}.
    {badmatch,{x,0}}.
  {label,1782}.
    {line,[{scope,[22]},{location,"bs_match_r23_SUITE.erl",2962}]}.
    {badmatch,{x,0}}.
  {label,1783}.
    {line,[{scope,[22]},{location,"bs_match_r23_SUITE.erl",2961}]}.
    {badmatch,{x,0}}.
  {label,1784}.
    {line,[{scope,[22]},{location,"bs_match_r23_SUITE.erl",2960}]}.
    {badmatch,{x,0}}.
  {label,1785}.
    {line,[{scope,[22]},{location,"bs_match_r23_SUITE.erl",2959}]}.
    {badmatch,{x,0}}.
  {label,1786}.
    {line,[{scope,[22]},{location,"bs_match_r23_SUITE.erl",2958}]}.
    {badmatch,{x,0}}.
  {label,1787}.
    {line,[{scope,[22]},{location,"bs_match_r23_SUITE.erl",2957}]}.
    {badmatch,{x,0}}.
  {label,1788}.
    {line,[{scope,[22]},{location,"bs_match_r23_SUITE.erl",2955}]}.
    {badmatch,{x,0}}.
  {label,1789}.
    {line,[{scope,[22]},{location,"bs_match_r23_SUITE.erl",2954}]}.
    {badmatch,{x,0}}.
  {label,1790}.
    {line,[{scope,[22]},{location,"bs_match_r23_SUITE.erl",2953}]}.
    {badmatch,{x,0}}.
  {label,1791}.
    {line,[{scope,[22]},{location,"bs_match_r23_SUITE.erl",2948}]}.
    {badmatch,{x,0}}.
  {label,1792}.
    {line,[{scope,[24]},{location,"bs_match_r23_SUITE.erl",2947}]}.
    {badmatch,{x,0}}.
  {label,1793}.
    {line,[{scope,[26]},{location,"bs_match_r23_SUITE.erl",2946}]}.
    {badmatch,{x,0}}.
  {label,1794}.
    {line,[{scope,[26]},{location,"bs_match_r23_SUITE.erl",2944}]}.
    {badmatch,{x,0}}.
  {label,1795}.
    {line,[{scope,[26]},{location,"bs_match_r23_SUITE.erl",2941}]}.
    {badmatch,{x,0}}.
  {label,1796}.
    {line,[{scope,[28]},{location,"bs_match_r23_SUITE.erl",2940}]}.
    {badmatch,{x,0}}.
  {label,1797}.
    {line,[{scope,[30]},{location,"bs_match_r23_SUITE.erl",2939}]}.
    {badmatch,{x,0}}.
  {label,1798}.
    {line,[{scope," "},{location,"bs_match_r23_SUITE.erl",2934}]}.
    {badmatch,{x,0}}.
  {label,1799}.
    {line,[{scope," "},{location,"bs_match_r23_SUITE.erl",2933}]}.
    {badmatch,{x,0}}.
  {label,1800}.
    {line,[{scope," "},{location,"bs_match_r23_SUITE.erl",2932}]}.
    {badmatch,{x,0}}.
  {label,1801}.
    {line,[{scope," "},{location,"bs_match_r23_SUITE.erl",2931}]}.
    {badmatch,{x,0}}.
  {label,1802}.
    {line,[{scope," "},{location,"bs_match_r23_SUITE.erl",2922}]}.
    {badmatch,{x,0}}.
  {label,1803}.
    {line,[{scope,"\""},{location,"bs_match_r23_SUITE.erl",2921}]}.
    {badmatch,{x,0}}.
  {label,1804}.
    {line,[{scope,"$"},{location,"bs_match_r23_SUITE.erl",2920}]}.
    {badmatch,{x,0}}.
  {label,1805}.
    {line,[{scope,"$"},{location,"bs_match_r23_SUITE.erl",2917}]}.
    {badmatch,{x,0}}.
  {label,1806}.
    {line,[{scope,"&"},{location,"bs_match_r23_SUITE.erl",2916}]}.
    {badmatch,{x,0}}.
  {label,1807}.
    {line,[{scope,"("},{location,"bs_match_r23_SUITE.erl",2915}]}.
    {badmatch,{x,0}}.
  {label,1808}.
    {line,[{scope,"("},{location,"bs_match_r23_SUITE.erl",2914}]}.
    {badmatch,{x,0}}.
  {label,1809}.
    {line,[{scope,"("},{location,"bs_match_r23_SUITE.erl",2908}]}.
    {badmatch,{x,0}}.
  {label,1810}.
    {line,[{scope,"*"},{location,"bs_match_r23_SUITE.erl",2907}]}.
    {badmatch,{x,0}}.
  {label,1811}.
    {line,[{scope,","},{location,"bs_match_r23_SUITE.erl",2906}]}.
    {badmatch,{x,0}}.
  {label,1812}.
    {line,[{scope,","},{location,"bs_match_r23_SUITE.erl",2905}]}.
    {badmatch,{x,0}}.
  {label,1813}.
    {line,[{scope,","},{location,"bs_match_r23_SUITE.erl",2899}]}.
    {badmatch,{x,0}}.
  {label,1814}.
    {line,[{scope,"."},{location,"bs_match_r23_SUITE.erl",2898}]}.
    {badmatch,{x,0}}.
  {label,1815}.
    {line,[{scope,"0"},{location,"bs_match_r23_SUITE.erl",2897}]}.
    {badmatch,{x,0}}.
  {label,1816}.
    {line,[{scope,"0"},{location,"bs_match_r23_SUITE.erl",2896}]}.
    {badmatch,{x,0}}.
  {label,1817}.
    {line,[{scope,"0"},{location,"bs_match_r23_SUITE.erl",2890}]}.
    {badmatch,{x,0}}.
  {label,1818}.
    {line,[{scope,"0"},{location,"bs_match_r23_SUITE.erl",2889}]}.
    {badmatch,{x,0}}.
  {label,1819}.
    {line,[{scope,"0"},{location,"bs_match_r23_SUITE.erl",2888}]}.
    {badmatch,{x,0}}.
  {label,1820}.
    {line,[{scope,"0"},{location,"bs_match_r23_SUITE.erl",2882}]}.
    {badmatch,{x,0}}.
  {label,1821}.
    {line,[{scope,"0"},{location,"bs_match_r23_SUITE.erl",2881}]}.
    {badmatch,{x,0}}.
  {label,1822}.
    {line,[{scope,"0"},{location,"bs_match_r23_SUITE.erl",2877}]}.
    {badmatch,{x,0}}.
  {label,1823}.
    {line,[{scope,"0"},{location,"bs_match_r23_SUITE.erl",2876}]}.
    {badmatch,{x,0}}.
  {label,1824}.
    {line,[{scope,"0"},{location,"bs_match_r23_SUITE.erl",2870}]}.
    {badmatch,{x,0}}.
  {label,1825}.
    {line,[{scope,"2"},{location,"bs_match_r23_SUITE.erl",2869}]}.
    {badmatch,{x,0}}.
  {label,1826}.
    {line,[{scope,"2"},{location,"bs_match_r23_SUITE.erl",2864}]}.
    {badmatch,{x,0}}.
  {label,1827}.
    {line,[{scope,"2"},{location,"bs_match_r23_SUITE.erl",2858}]}.
    {badmatch,{x,0}}.
  {label,1828}.
    {line,[{scope,"2"},{location,"bs_match_r23_SUITE.erl",2852}]}.
    {badmatch,{x,0}}.
  {label,1829}.
    {line,[{scope,"4"},{location,"bs_match_r23_SUITE.erl",2851}]}.
    {badmatch,{x,0}}.
  {label,1830}.
    {line,[{scope,"4"},{location,"bs_match_r23_SUITE.erl",2845}]}.
    {badmatch,{x,0}}.
  {label,1831}.
    {line,[{scope,"4"},{location,"bs_match_r23_SUITE.erl",2844}]}.
    {badmatch,{x,0}}.
  {label,1832}.
    {line,[{scope,"4"},{location,"bs_match_r23_SUITE.erl",2838}]}.
    {badmatch,{x,0}}.
  {label,1833}.
    {line,[{scope,"4"},{location,"bs_match_r23_SUITE.erl",2832}]}.
    {badmatch,{x,0}}.
  {label,1834}.
    {line,[{scope,"4"},{location,"bs_match_r23_SUITE.erl",2825}]}.
    {badmatch,{x,0}}.
  {label,1835}.
    {line,[{scope,"4"},{location,"bs_match_r23_SUITE.erl",2824}]}.
    {badmatch,{x,0}}.
  {label,1836}.
    {line,[{scope,"4"},{location,"bs_match_r23_SUITE.erl",2821}]}.
    {badmatch,{x,0}}.
  {label,1837}.
    {line,[{scope,"4"},{location,"bs_match_r23_SUITE.erl",2820}]}.
    {badmatch,{x,0}}.
  {label,1838}.
    {line,[{scope,"4"},{location,"bs_match_r23_SUITE.erl",2817}]}.
    {badmatch,{x,0}}.
  {label,1839}.
    {line,[{scope,"4"},{location,"bs_match_r23_SUITE.erl",2816}]}.
    {badmatch,{x,0}}.


{function, gh_6467, 3, 1841}.
  {label,1840}.
    {line,[{location,"bs_match_r23_SUITE.erl",3020}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,gh_6467},3}.
  {label,1841}.
    {test,is_nil,{f,1842},[{x,2}]}.
    {test,bs_start_match3,{f,1843},1,[{x,0}],{x,1}}.
    {test,bs_skip_bits2,
          {f,1843},
          [{x,1},
           {x,0},
           1,
           {field_flags,[{anno,[3021,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_test_tail2,{f,1843},[{x,1},0]}.
    {call_only,1,{f,1977}}. % '-gh_6467/3-lc$^0/1-0-'/1
  {label,1842}.
    {test,bs_start_match3,{f,1840},3,[{x,1}],{x,3}}.
    {test,bs_test_tail2,{f,1840},[{x,3},8]}.
    {move,{atom,a},{x,0}}.
    return.
  {label,1843}.
    {line,[{location,"bs_match_r23_SUITE.erl",3021}]}.
    {badmatch,{x,0}}.


{function, gh6415_a, 2, 1845}.
  {label,1844}.
    {line,[{location,"bs_match_r23_SUITE.erl",3025}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,gh6415_a},2}.
  {label,1845}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1850},2,[{x,0}],{x,0}}.
    {test,bs_get_integer2,
          {f,1850},
          2,
          [{x,0},
           {integer,8},
           1,
           {field_flags,[{anno,[3025,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1850},[{x,0},0]}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,1847},[{x,3},{integer,1},8],{x,3}}.
    {bs_init_bits,{f,1847},{x,3},0,4,{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,1847},{integer,8},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,0}}.
    {test,is_eq,{f,1846},[{x,0},{atom,false}]}.
    {move,{atom,true},{x,0}}.
    {jump,{f,1848}}.
  {label,1846}.
    {test,is_eq_exact,{f,1850},[{x,1},{atom,true}]}.
    {jump,{f,1849}}.
  {label,1847}.
    {move,{atom,false},{x,0}}.
  {label,1848}.
    {bif,'=:=',{f,0},[{x,1},{atom,true}],{x,2}}.
    {bif,'or',{f,0},[{x,0},{x,2}],{x,0}}.
    {test,is_eq_exact,{f,1850},[{x,0},{atom,true}]}.
  {label,1849}.
    {move,{x,1},{x,0}}.
    return.
  {label,1850}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_b, 2, 1852}.
  {label,1851}.
    {line,[{location,"bs_match_r23_SUITE.erl",3030}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,gh6415_b},2}.
  {label,1852}.
    {'%',{var_info,{x,1},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1854},2,[{x,1}],{x,1}}.
    {test,bs_get_integer2,
          {f,1854},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[3030,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1854},[{x,1},0]}.
    {bif,'<',{f,0},[{x,0},{x,2}],{x,1}}.
    {bif,'=:=',{f,0},[{x,0},{atom,true}],{x,2}}.
    {bif,'xor',{f,0},[{x,1},{x,2}],{x,1}}.
    {bif,is_boolean,{f,0},[{x,0}],{x,2}}.
    {bif,'and',{f,0},[{x,1},{x,2}],{x,1}}.
    {bif,'=:=',{f,0},[{x,0},{atom,false}],{x,2}}.
    {bif,'=:=',{f,0},[{x,0},{atom,true}],{x,0}}.
    {bif,'or',{f,0},[{x,2},{x,0}],{x,0}}.
    {test,is_eq_exact,{f,1853},[{x,1},{atom,false}]}.
    {test,is_eq_exact,{f,1854},[{x,0},{atom,true}]}.
  {label,1853}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1854}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_c, 2, 1856}.
  {label,1855}.
    {line,[{location,"bs_match_r23_SUITE.erl",3035}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,gh6415_c},2}.
  {label,1856}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1862},2,[{x,0}],{x,0}}.
    {test,bs_get_integer2,
          {f,1862},
          2,
          [{x,0},
           {integer,8},
           1,
           {field_flags,[{anno,[3035,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1862},[{x,0},0]}.
    {gc_bif,'/',{f,1860},3,[{x,2},{integer,1}],{x,0}}.
    {select_val,{x,1},
                {f,1862},
                {list,[{atom,false},{f,1858},{atom,true},{f,1857}]}}.
  {label,1857}.
    {move,{atom,true},{x,2}}.
    {jump,{f,1859}}.
  {label,1858}.
    {move,{atom,false},{x,2}}.
  {label,1859}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{x,0},{x,2}]}}.
    {bif,'=:=',{f,0},[{x,0},{atom,true}],{x,0}}.
    {jump,{f,1861}}.
  {label,1860}.
    {move,{atom,false},{x,0}}.
  {label,1861}.
    {bif,'=:=',{f,0},[{x,1},{atom,true}],{x,1}}.
    {bif,'or',{f,0},[{x,0},{x,1}],{x,0}}.
    {test,is_eq_exact,{f,1862},[{x,0},{atom,true}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1862}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_case_clause, 1, 1864}.
  {label,1863}.
    {line,[{location,"bs_match_r23_SUITE.erl",3040}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,gh6415_case_clause},1}.
  {label,1864}.
    {allocate_zero,5,1}.
    {move,{x,0},{y,0}}.
    {'catch',{y,4},{f,1865}}.
    {line,[{location,"bs_match_r23_SUITE.erl",3041}]}.
    {call,1,{f,1874}}. % gh6415_case_clause_a/1
  {label,1865}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,1872},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1872},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1872},[{x,1}]}.
    {test,test_arity,{f,1872},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1872},[{x,1},{literal,{case_clause,0}}]}.
    {'catch',{y,3},{f,1866}}.
    {move,{y,0},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",3042}]}.
    {call,1,{f,1876}}. % gh6415_case_clause_b/1
  {label,1866}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,1871},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1871},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1871},[{x,1}]}.
    {test,test_arity,{f,1871},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1871},[{x,1},{literal,{case_clause,0}}]}.
    {'catch',{y,2},{f,1867}}.
    {move,{y,0},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",3043}]}.
    {call,1,{f,1878}}. % gh6415_case_clause_c/1
  {label,1867}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,1870},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1870},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1870},[{x,1}]}.
    {test,test_arity,{f,1870},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1870},[{x,1},{literal,{case_clause,0}}]}.
    {'catch',{y,1},{f,1868}}.
    {move,{y,0},{x,0}}.
    {init,{y,0}}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",3044}]}.
    {call,1,{f,1880}}. % gh6415_case_clause_d/1
  {label,1868}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,1869},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1869},[{x,1},{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1869},[{x,1}]}.
    {test,test_arity,{f,1869},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1869},[{x,1},{literal,{case_clause,0}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,5}.
    return.
  {label,1869}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",3044}]}.
    {badmatch,{x,0}}.
  {label,1870}.
    {line,[{scope,[2]},{location,"bs_match_r23_SUITE.erl",3043}]}.
    {badmatch,{x,0}}.
  {label,1871}.
    {line,[{scope,[4]},{location,"bs_match_r23_SUITE.erl",3042}]}.
    {badmatch,{x,0}}.
  {label,1872}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",3041}]}.
    {badmatch,{x,0}}.


{function, gh6415_case_clause_a, 1, 1874}.
  {label,1873}.
    {line,[{location,"bs_match_r23_SUITE.erl",3047}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,gh6415_case_clause_a},1}.
  {label,1874}.
    {line,[{location,"bs_match_r23_SUITE.erl",3048}]}.
    {case_end,{integer,0}}.


{function, gh6415_case_clause_b, 1, 1876}.
  {label,1875}.
    {line,[{location,"bs_match_r23_SUITE.erl",3054}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,gh6415_case_clause_b},1}.
  {label,1876}.
    {line,[{location,"bs_match_r23_SUITE.erl",3055}]}.
    {case_end,{integer,0}}.


{function, gh6415_case_clause_c, 1, 1878}.
  {label,1877}.
    {line,[{location,"bs_match_r23_SUITE.erl",3061}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,gh6415_case_clause_c},1}.
  {label,1878}.
    {line,[{location,"bs_match_r23_SUITE.erl",3062}]}.
    {case_end,{integer,0}}.


{function, gh6415_case_clause_d, 1, 1880}.
  {label,1879}.
    {line,[{location,"bs_match_r23_SUITE.erl",3068}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,gh6415_case_clause_d},1}.
  {label,1880}.
    {line,[{location,"bs_match_r23_SUITE.erl",3069}]}.
    {case_end,{integer,0}}.


{function, gh6415_nomatch, 1, 1882}.
  {label,1881}.
    {line,[{location,"bs_match_r23_SUITE.erl",3075}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,gh6415_nomatch},1}.
  {label,1882}.
    {allocate_zero,2,1}.
    {line,[{location,"bs_match_r23_SUITE.erl",3076}]}.
    {call,1,{f,1968}}. % id/1
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_match_r23_SUITE.erl",3077}]}.
    {call,1,{f,1895}}. % gh6415_nomatch_a/1
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",3078}]}.
    {call,1,{f,1897}}. % gh6415_nomatch_b/1
    {test,is_eq_exact,{f,1893},[{x,0},{y,0}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",3079}]}.
    {call,1,{f,1899}}. % gh6415_nomatch_c/1
    {test,is_eq_exact,{f,1892},[{x,0},{y,0}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",3080}]}.
    {call,1,{f,1901}}. % gh6415_nomatch_d/1
    {test,is_eq_exact,{f,1891},[{x,0},{y,0}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",3081}]}.
    {call,1,{f,1903}}. % gh6415_nomatch_e/1
    {test,is_eq_exact,{f,1890},[{x,0},{y,0}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",3082}]}.
    {call,1,{f,1906}}. % gh6415_nomatch_f/1
    {test,is_eq_exact,{f,1889},[{x,0},{y,0}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",3083}]}.
    {call,1,{f,1908}}. % gh6415_nomatch_g/1
    {test,is_eq_exact,{f,1888},[{x,0},{y,0}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",3084}]}.
    {call,1,{f,1911}}. % gh6415_nomatch_h/1
    {test,is_eq_exact,{f,1887},[{x,0},{y,0}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",3085}]}.
    {call,1,{f,1914}}. % gh6415_nomatch_i/1
    {test,is_eq_exact,{f,1886},[{x,0},{y,0}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",3086}]}.
    {call,1,{f,1917}}. % gh6415_nomatch_j/1
    {test,is_eq_exact,{f,1885},[{x,0},{y,0}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",3087}]}.
    {call,1,{f,1920}}. % gh6415_nomatch_k/1
    {test,is_eq_exact,{f,1884},[{x,0},{y,0}]}.
    {move,{y,1},{x,0}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {line,[{location,"bs_match_r23_SUITE.erl",3088}]}.
    {call,1,{f,1925}}. % gh6415_nomatch_l/1
    {test,is_eq_exact,{f,1883},[{x,0},{y,0}]}.
    {deallocate,1}.
    return.
  {label,1883}.
    {badmatch,{x,0}}.
  {label,1884}.
    {line,[{location,"bs_match_r23_SUITE.erl",3087}]}.
    {badmatch,{x,0}}.
  {label,1885}.
    {line,[{location,"bs_match_r23_SUITE.erl",3086}]}.
    {badmatch,{x,0}}.
  {label,1886}.
    {line,[{location,"bs_match_r23_SUITE.erl",3085}]}.
    {badmatch,{x,0}}.
  {label,1887}.
    {line,[{location,"bs_match_r23_SUITE.erl",3084}]}.
    {badmatch,{x,0}}.
  {label,1888}.
    {line,[{location,"bs_match_r23_SUITE.erl",3083}]}.
    {badmatch,{x,0}}.
  {label,1889}.
    {line,[{location,"bs_match_r23_SUITE.erl",3082}]}.
    {badmatch,{x,0}}.
  {label,1890}.
    {line,[{location,"bs_match_r23_SUITE.erl",3081}]}.
    {badmatch,{x,0}}.
  {label,1891}.
    {line,[{location,"bs_match_r23_SUITE.erl",3080}]}.
    {badmatch,{x,0}}.
  {label,1892}.
    {line,[{location,"bs_match_r23_SUITE.erl",3079}]}.
    {badmatch,{x,0}}.
  {label,1893}.
    {line,[{location,"bs_match_r23_SUITE.erl",3078}]}.
    {badmatch,{x,0}}.


{function, gh6415_nomatch_a, 1, 1895}.
  {label,1894}.
    {line,[{location,"bs_match_r23_SUITE.erl",3091}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,gh6415_nomatch_a},1}.
  {label,1895}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_b, 1, 1897}.
  {label,1896}.
    {line,[{location,"bs_match_r23_SUITE.erl",3094}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,gh6415_nomatch_b},1}.
  {label,1897}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_c, 1, 1899}.
  {label,1898}.
    {line,[{location,"bs_match_r23_SUITE.erl",3097}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,gh6415_nomatch_c},1}.
  {label,1899}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_d, 1, 1901}.
  {label,1900}.
    {line,[{location,"bs_match_r23_SUITE.erl",3100}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,gh6415_nomatch_d},1}.
  {label,1901}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_e, 1, 1903}.
  {label,1902}.
    {line,[{location,"bs_match_r23_SUITE.erl",3103}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,gh6415_nomatch_e},1}.
  {label,1903}.
    {test,is_map,{f,1904},[{x,0}]}.
    {get_map_elements,{f,1904},{x,0},{list,[{integer,0},{x,0}]}}.
    {test,is_eq_exact,{f,1904},[{x,0},{literal,<<>>}]}.
    {test,bs_start_match3,{f,1904},1,[{x,0}],{x,0}}.
    {test,bs_test_tail2,{f,1904},[{x,0},8]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1904}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_f, 1, 1906}.
  {label,1905}.
    {line,[{location,"bs_match_r23_SUITE.erl",3106}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,gh6415_nomatch_f},1}.
  {label,1906}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_g, 1, 1908}.
  {label,1907}.
    {line,[{location,"bs_match_r23_SUITE.erl",3109}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,gh6415_nomatch_g},1}.
  {label,1908}.
    {test,is_map,{f,1909},[{x,0}]}.
    {get_map_elements,{f,1909},{x,0},{list,[{integer,0},{x,0}]}}.
    {test,bs_start_match3,{f,1909},1,[{x,0}],{x,0}}.
    {test,bs_test_tail2,{f,1909},[{x,0},8]}.
    {test,bs_skip_bits2,
          {f,1909},
          [{x,0},
           {integer,8},
           1,
           {field_flags,[{anno,[3109,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_match_string,{f,1909},[{x,0},8,{string,<<0>>}]}.
    {test,bs_test_tail2,{f,1909},[{x,0},0]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1909}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_h, 1, 1911}.
  {label,1910}.
    {line,[{location,"bs_match_r23_SUITE.erl",3112}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,gh6415_nomatch_h},1}.
  {label,1911}.
    {test,is_map,{f,1912},[{x,0}]}.
    {get_map_elements,{f,1912},{x,0},{list,[{integer,0},{x,0}]}}.
    {test,bs_start_match3,{f,1912},1,[{x,0}],{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {test,bs_get_integer2,
          {f,1912},
          2,
          [{x,0},
           {integer,0},
           1,
           {field_flags,[{anno,[3112,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1912},[{x,0},0]}.
    {bs_set_position,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,1912},
          3,
          [{x,0},
           {integer,8},
           1,
           {field_flags,[{anno,[3112,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_test_tail2,{f,1912},[{x,0},0]}.
    {test,is_eq_exact,{f,1912},[{x,1},{x,2}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1912}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_i, 1, 1914}.
  {label,1913}.
    {line,[{location,"bs_match_r23_SUITE.erl",3115}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,gh6415_nomatch_i},1}.
  {label,1914}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1915},1,[{x,0}],{x,0}}.
    {test,bs_test_tail2,{f,1915},[{x,0},8]}.
    {test,bs_skip_bits2,
          {f,1915},
          [{x,0},
           {integer,16},
           1,
           {field_flags,[{anno,[3115,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,1915},
          1,
          [{x,0},
           {atom,all},
           8,
           {field_flags,[{anno,[3115,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,0}}.
    {allocate,0,1}.
    {line,[{location,"bs_match_r23_SUITE.erl",3116}]}.
    {call_ext,1,{extfunc,erlang,binary_to_list,1}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1915}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_j, 1, 1917}.
  {label,1916}.
    {line,[{location,"bs_match_r23_SUITE.erl",3121}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,gh6415_nomatch_j},1}.
  {label,1917}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1918},1,[{x,0}],{x,0}}.
    {test,bs_test_tail2,{f,1918},[{x,0},8]}.
    {test,bs_get_integer2,
          {f,1918},
          1,
          [{x,0},
           {integer,16},
           1,
           {field_flags,[{anno,[3121,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_get_binary2,
          {f,1918},
          2,
          [{x,0},
           {atom,all},
           8,
           {field_flags,[{anno,[3121,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,0}}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,1},{x,0}]}}.
    return.
  {label,1918}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_k, 1, 1920}.
  {label,1919}.
    {line,[{location,"bs_match_r23_SUITE.erl",3126}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,gh6415_nomatch_k},1}.
  {label,1920}.
    {test,is_map,{f,1923},[{x,0}]}.
    {get_map_elements,{f,1923},{x,0},{list,[{integer,0},{x,0}]}}.
    {test,bs_start_match3,{f,1923},1,[{x,0}],{x,0}}.
    {test,bs_test_tail2,{f,1923},[{x,0},8]}.
    {test,bs_skip_bits2,
          {f,1923},
          [{x,0},
           {integer,8},
           1,
           {field_flags,[{anno,[3126,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}]}.
    {gc_bif,'div',{f,1921},1,[{integer,0},{integer,0}],{x,1}}.
    {jump,{f,1922}}.
  {label,1921}.
    {move,{atom,bad_size},{x,1}}.
  {label,1922}.
    {test,bs_skip_bits2,
          {f,1923},
          [{x,0},
           {x,1},
           1,
           {field_flags,[{anno,[3126,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_test_tail2,{f,1923},[{x,0},0]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1923}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_l, 1, 1925}.
  {label,1924}.
    {line,[{location,"bs_match_r23_SUITE.erl",3131}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,gh6415_nomatch_l},1}.
  {label,1925}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1926},1,[{x,0}],{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {test,bs_get_integer2,
          {f,1926},
          2,
          [{x,0},
           {integer,0},
           1,
           {field_flags,[{anno,[3133,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_skip_bits2,
          {f,1926},
          [{x,0},
           {x,2},
           1,
           {field_flags,[{anno,[3133,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_test_tail2,{f,1926},[{x,0},0]}.
    {bs_set_position,{x,0},{x,1}}.
    {test,bs_test_tail2,{f,1926},[{x,0},8]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1926}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_match_a, 1, 1928}.
  {label,1927}.
    {line,[{location,"bs_match_r23_SUITE.erl",3139}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,gh6415_match_a},1}.
  {label,1928}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1927},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_test_tail2,{f,1929},[{x,1},8]}.
    {test,bs_get_integer2,
          {f,1929},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[3139,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1929},[{x,1},0]}.
    {move,{x,2},{x,0}}.
    return.
  {label,1929}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,1927}}.


{function, gh6415_match_b, 1, 1931}.
  {label,1930}.
    {line,[{location,"bs_match_r23_SUITE.erl",3142}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,gh6415_match_b},1}.
  {label,1931}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1930},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_test_tail2,{f,1932},[{x,1},8]}.
    {test,bs_get_integer2,
          {f,1932},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[3142,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,1932},
          3,
          [{x,1},
           {atom,all},
           8,
           {field_flags,[{anno,[3142,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,1932}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,1930}}.


{function, gh6415_match_c, 0, 1934}.
  {label,1933}.
    {line,[{location,"bs_match_r23_SUITE.erl",3145}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,gh6415_match_c},0}.
  {label,1934}.
    {allocate,1,0}.
    {'catch',{y,0},{f,1935}}.
    {move,{atom,badarg},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",3146}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,1935}.
    {catch_end,{y,0}}.
    {test,is_map,{f,1936},[{x,0}]}.
    {get_map_elements,{f,1936},{x,0},{list,[nil,{x,1}]}}.
    {test,bs_start_match3,{f,1936},2,[{x,1}],{x,1}}.
    {test,bs_test_tail2,{f,1936},[{x,1},8]}.
    {test,bs_get_integer2,
          {f,1936},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[3147,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1936},[{x,1},0]}.
    {move,{x,2},{x,0}}.
    {deallocate,1}.
    return.
  {label,1936}.
    {line,[{scope,[0]},{location,"bs_match_r23_SUITE.erl",3146}]}.
    {case_end,{x,0}}.


{function, gh6415_match_d, 1, 1938}.
  {label,1937}.
    {line,[{location,"bs_match_r23_SUITE.erl",3151}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,gh6415_match_d},1}.
  {label,1938}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1937},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_skip_bits2,
          {f,1939},
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[3151,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_test_tail2,{f,1939},[{x,1},0]}.
    {bs_set_position,{x,1},{x,0}}.
    {test,bs_test_tail2,{f,1939},[{x,1},8]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1939}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,1937}}.


{function, gh6415_match_e, 1, 1941}.
  {label,1940}.
    {line,[{location,"bs_match_r23_SUITE.erl",3154}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,gh6415_match_e},1}.
  {label,1941}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1940},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_skip_bits2,
          {f,1942},
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[3154,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_skip_bits2,
          {f,1942},
          [{x,1},
           {integer,0},
           1,
           {field_flags,[{anno,[3154,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_integer2,
          {f,1942},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[3154,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_skip_bits2,
          {f,1942},
          [{x,1},
           {x,2},
           1,
           {field_flags,[{anno,[3154,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_test_tail2,{f,1942},[{x,1},0]}.
    {bs_set_position,{x,1},{x,0}}.
    {test,bs_skip_bits2,
          {f,1942},
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[3154,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_integer2,
          {f,1942},
          3,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[3154,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_skip_bits2,
          {f,1942},
          [{x,1},
           {x,3},
           1,
           {field_flags,[{anno,[3154,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_test_tail2,{f,1942},[{x,1},0]}.
    {test,is_eq_exact,{f,1942},[{x,3},{x,2}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1942}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,1940}}.


{function, gh6415_match_f, 1, 1944}.
  {label,1943}.
    {line,[{location,"bs_match_r23_SUITE.erl",3157}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,gh6415_match_f},1}.
  {label,1944}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1945},1,[{x,0}],{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {test,bs_skip_bits2,
          {f,1945},
          [{x,0},
           {integer,0},
           1,
           {field_flags,[{anno,[3157,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_integer2,
          {f,1945},
          2,
          [{x,0},
           {integer,8},
           1,
           {field_flags,[{anno,[3157,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1945},
          3,
          [{x,0},
           {x,2},
           1,
           {field_flags,[{anno,[3157,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1945},[{x,0},0]}.
    {bs_set_position,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,1945},
          4,
          [{x,0},
           {integer,8},
           1,
           {field_flags,[{anno,[3157,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_skip_bits2,
          {f,1945},
          [{x,0},
           {integer,0},
           1,
           {field_flags,[{anno,[3157,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_integer2,
          {f,1945},
          5,
          [{x,0},
           {x,4},
           1,
           {field_flags,[{anno,[3157,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_test_tail2,{f,1945},[{x,0},0]}.
    {bs_set_position,{x,0},{x,1}}.
    {test,bs_match_string,{f,1945},[{x,0},8,{string,<<17>>}]}.
    {test,bs_get_integer2,
          {f,1945},
          6,
          [{x,0},
           {integer,17},
           1,
           {field_flags,[{anno,[3157,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_test_tail2,{f,1945},[{x,0},0]}.
    {test,is_eq_exact,{f,1945},[{x,4},{x,2}]}.
    {test,is_eq_exact,{f,1945},[{x,5},{x,3}]}.
    {test,is_eq_exact,{f,1945},[{x,1},{x,3}]}.
    {move,{x,3},{x,0}}.
    return.
  {label,1945}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh_6923, 1, 1947}.
  {label,1946}.
    {line,[{location,"bs_match_r23_SUITE.erl",3164}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,gh_6923},1}.
  {label,1947}.
    {allocate_zero,1,0}.
    {move,{atom,bs_match_r23_SUITE},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",3195}]}.
    {call_ext,1,{extfunc,test_lib,opt_opts,1}}.
    {move,{x,0},{x,1}}.
    {move,
     {literal,
      [{attribute,29,module,bs_match_r23_SUITE_gh_6923},
       {attribute,29,export,[{match_route,1}]},
       {function,4,match_route,1,
        [{clause,4,
          [{cons,4,
            {bin,4,[{bin_element,4,{string,4,"prefix"},default,default}]},
            {cons,4,
             {bin,4,[{bin_element,4,{string,4,"action"},default,default}]},
             {nil,4}}}],
          [],
          [{atom,4,first}]},
         {clause,2,
          [{cons,2,
            {bin,2,[{bin_element,2,{string,2,"prefix"},default,default}]},
            {cons,2,{var,2,'_Ignore'},{nil,2}}}],
          [],
          [{atom,2,second}]}]}]},
     {x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",3196}]}.
    {call_ext,2,{extfunc,compile,forms,2}}.
    {test,is_tagged_tuple,{f,1953},[{x,0},3,{atom,ok}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1953},[{x,1},{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,1953},[{x,1},{atom,bs_match_r23_SUITE_gh_6923}]}.
    {get_tuple_element,{x,0},2,{x,2}}.
    {move,nil,{x,1}}.
    {move,{atom,bs_match_r23_SUITE_gh_6923},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",3197}]}.
    {call_ext,3,{extfunc,code,load_binary,3}}.
    {test,is_tagged_tuple,{f,1952},[{x,0},2,{atom,module}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1952},[{x,1},{atom,module}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,1952},[{x,1},{atom,bs_match_r23_SUITE_gh_6923}]}.
    {move,{literal,[<<"prefix">>,<<"action">>]},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",3198}]}.
    {call_ext,1,{extfunc,bs_match_r23_SUITE_gh_6923,match_route,1}}.
    {test,is_eq_exact,{f,1951},[{x,0},{atom,first}]}.
    {move,{literal,[<<"prefix">>,whatever]},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",3199}]}.
    {call_ext,1,{extfunc,bs_match_r23_SUITE_gh_6923,match_route,1}}.
    {test,is_eq_exact,{f,1950},[{x,0},{atom,second}]}.
    {move,{atom,bs_match_r23_SUITE_gh_6923},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",3200}]}.
    {call_ext,1,{extfunc,code,delete,1}}.
    {move,{atom,bs_match_r23_SUITE_gh_6923},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",3201}]}.
    {call_ext,1,{extfunc,code,purge,1}}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",3204}]}.
    {call,1,{f,1968}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,42},{x,0}}.
    {call,1,{f,1968}}. % id/1
    {test_heap,4,1}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{y,0},{x,0},{x,0}}.
    {init,{y,0}}.
    {call,1,{f,1955}}. % do_gh_6923/1
    {test,is_eq_exact,{f,1949},[{x,0},{atom,first}]}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",3205}]}.
    {call,1,{f,1968}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{literal,{a,b,c}},{x,0}}.
    {call,1,{f,1968}}. % id/1
    {test_heap,4,1}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{y,0},{x,0},{x,0}}.
    {trim,1,0}.
    {call,1,{f,1955}}. % do_gh_6923/1
    {test,is_eq_exact,{f,1948},[{x,0},{atom,second}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1948}.
    {badmatch,{x,0}}.
  {label,1949}.
    {line,[{location,"bs_match_r23_SUITE.erl",3204}]}.
    {badmatch,{x,0}}.
  {label,1950}.
    {line,[{location,"bs_match_r23_SUITE.erl",3199}]}.
    {badmatch,{x,0}}.
  {label,1951}.
    {line,[{location,"bs_match_r23_SUITE.erl",3198}]}.
    {badmatch,{x,0}}.
  {label,1952}.
    {line,[{location,"bs_match_r23_SUITE.erl",3197}]}.
    {badmatch,{x,0}}.
  {label,1953}.
    {line,[{location,"bs_match_r23_SUITE.erl",3196}]}.
    {badmatch,{x,0}}.


{function, do_gh_6923, 1, 1955}.
  {label,1954}.
    {line,[{location,"bs_match_r23_SUITE.erl",3209}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,do_gh_6923},1}.
  {label,1955}.
    {test,is_nonempty_list,{f,1954},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,bs_start_match3,{f,1954},3,[{x,1}],{x,1}}.
    {test,bs_match_string,{f,1954},[{x,1},24,{string,<<"abc">>}]}.
    {test,bs_test_tail2,{f,1954},[{x,1},0]}.
    {test,is_nonempty_list,{f,1954},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_nil,{f,1954},[{x,2}]}.
    {test,is_integer,{f,1956},[{x,1}]}.
    {move,{atom,first},{x,0}}.
    return.
  {label,1956}.
    {test,is_tuple,{f,1954},[{x,1}]}.
    {move,{atom,second},{x,0}}.
    return.


{function, otp_19019, 1, 1958}.
  {label,1957}.
    {line,[{location,"bs_match_r23_SUITE.erl",3212}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,otp_19019},1}.
  {label,1958}.
    {allocate,0,0}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",3213}]}.
    {call,1,{f,1968}}. % id/1
    {call,1,{f,1962}}. % do_otp_19019/1
    {test,is_eq_exact,{f,1960},[{x,0},{atom,ok}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",3214}]}.
    {call,1,{f,1968}}. % id/1
    {call,1,{f,1962}}. % do_otp_19019/1
    {test,is_eq_exact,{f,1959},[{x,0},{literal,<<>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1959}.
    {badmatch,{x,0}}.
  {label,1960}.
    {line,[{location,"bs_match_r23_SUITE.erl",3213}]}.
    {badmatch,{x,0}}.


{function, do_otp_19019, 1, 1962}.
  {label,1961}.
    {line,[{location,"bs_match_r23_SUITE.erl",3218}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,do_otp_19019},1}.
  {label,1962}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1965},1,[{x,0}],{x,1}}.
    {test,bs_test_tail2,{f,1963},[{x,1},8]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1963}.
    {allocate_zero,2,2}.
    {move,{x,1},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {'try',{y,1},{f,1964}}.
    {move,{y,0},{x,0}}.
    {init,{y,0}}.
    {line,[{scope,[6]},{location,"bs_match_r23_SUITE.erl",3225}]}.
    {call,2,{f,1974}}. % '-do_otp_19019/1-lbc$^0/2-0-'/2
    {try_end,{y,1}}.
    {deallocate,2}.
    return.
  {label,1964}.
    {try_case,{y,1}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.
  {label,1965}.
    {allocate_zero,2,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {'try',{y,1},{f,1966}}.
    {move,{y,0},{x,0}}.
    {init,{y,0}}.
    {call,2,{f,1974}}. % '-do_otp_19019/1-lbc$^0/2-0-'/2
    {try_end,{y,1}}.
    {deallocate,2}.
    return.
  {label,1966}.
    {try_case,{y,1}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.


{function, id, 1, 1968}.
  {label,1967}.
    {line,[{location,"bs_match_r23_SUITE.erl",3233}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,id},1}.
  {label,1968}.
    return.


{function, module_info, 0, 1970}.
  {label,1969}.
    {line,[]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,module_info},0}.
  {label,1970}.
    {move,{atom,bs_match_r23_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 1972}.
  {label,1971}.
    {line,[]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,module_info},1}.
  {label,1972}.
    {move,{x,0},{x,1}}.
    {move,{atom,bs_match_r23_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-do_otp_19019/1-lbc$^0/2-0-', 2, 1974}.
  {label,1973}.
    {line,[{location,"bs_match_r23_SUITE.erl",3225}]}.
    {func_info,{atom,bs_match_r23_SUITE},
               {atom,'-do_otp_19019/1-lbc$^0/2-0-'},
               2}.
  {label,1974}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1975},2,[{x,0}],{x,2}}.
    {move,{x,1},{x,0}}.
    return.
  {label,1975}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-gh_6467/3-lc$^0/1-0-', 1, 1977}.
  {label,1976}.
    {line,[{location,"bs_match_r23_SUITE.erl",3021}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-gh_6467/3-lc$^0/1-0-'},1}.
  {label,1977}.
    {test,is_nonempty_list,{f,1978},[{x,0}]}.
    {allocate,0,1}.
    {get_tl,{x,0},{x,0}}.
    {call,1,{f,1977}}. % '-gh_6467/3-lc$^0/1-0-'/1
    {test_heap,2,1}.
    {put_list,{integer,0},{x,0},{x,0}}.
    {deallocate,0}.
    return.
  {label,1978}.
    {test,is_nil,{f,1979},[{x,0}]}.
    return.
  {label,1979}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-binary_aliases/1-fun-20-', 1, 1981}.
  {label,1980}.
    {line,[{location,"bs_match_r23_SUITE.erl",2950}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-binary_aliases/1-fun-20-'},1}.
  {label,1981}.
    {test,is_eq_exact,{f,1982},[{x,0},{literal,<<>>}]}.
    {test,bs_start_match3,{f,1982},1,[{x,0}],{x,0}}.
    {test,bs_test_tail2,{f,1982},[{x,0},0]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1982}.
    {move,{atom,error},{x,0}}.
    return.


{function, '-binary_aliases/1-fun-19-', 1, 1984}.
  {label,1983}.
    {line,[{location,"bs_match_r23_SUITE.erl",2943}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-binary_aliases/1-fun-19-'},1}.
  {label,1984}.
    {test,is_eq_exact,{f,1983},[{x,0},{literal,[<<>>]}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, '-binary_aliases/1-fun-18-', 1, 1986}.
  {label,1985}.
    {line,[{location,"bs_match_r23_SUITE.erl",2936}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-binary_aliases/1-fun-18-'},1}.
  {label,1986}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1988},1,[{x,0}],{x,1}}.
    {test,bs_test_tail2,{f,1987},[{x,1},8]}.
    {bs_get_tail,{x,1},{x,0},2}.
    {test,bs_get_integer2,
          {f,1988},
          2,
          [{x,1},
           {x,0},
           1,
           {field_flags,[{anno,[2937,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,1988},[{x,2},{integer,42}]}.
    {test,bs_test_tail2,{f,1988},[{x,1},0]}.
    return.
  {label,1987}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_r23_SUITE.erl",2937}]}.
    {badmatch,{x,0}}.
  {label,1988}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-17-', 1, 1990}.
  {label,1989}.
    {line,[{location,"bs_match_r23_SUITE.erl",2924}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-binary_aliases/1-fun-17-'},1}.
  {label,1990}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1991},1,[{x,0}],{x,0}}.
    {test,bs_test_tail2,{f,1991},[{x,0},8]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1991}.
    {move,{atom,error},{x,0}}.
    return.


{function, '-binary_aliases/1-fun-16-', 1, 1993}.
  {label,1992}.
    {line,[{location,"bs_match_r23_SUITE.erl",2919}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-binary_aliases/1-fun-16-'},1}.
  {label,1993}.
    {test,is_map,{f,1992},[{x,0}]}.
    {get_map_elements,{f,1992},{x,0},{list,[nil,{x,1}]}}.
    {test,bs_start_match3,{f,1992},2,[{x,1}],{x,1}}.
    {test,bs_test_tail2,{f,1992},[{x,1},8]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, '-binary_aliases/1-fun-15-', 1, 1995}.
  {label,1994}.
    {line,[{location,"bs_match_r23_SUITE.erl",2910}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-binary_aliases/1-fun-15-'},1}.
  {label,1995}.
    {allocate,0,1}.
    {line,[{location,"bs_match_r23_SUITE.erl",2911}]}.
    {call,1,{f,1968}}. % id/1
    {test,is_nonempty_list,{f,1996},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_tuple,{f,1996},[{x,1}]}.
    {test,test_arity,{f,1996},[{x,1},2]}.
    {test,is_nil,{f,1996},[{x,2}]}.
    {test,test_arity,{f,1996},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,bs_start_match3,{f,1996},3,[{x,2}],{x,2}}.
    {test,bs_skip_bits2,
          {f,1996},
          [{x,2},
           {x,1},
           1,
           {field_flags,[{anno,[2911,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_test_tail2,{f,1996},[{x,2},0]}.
    {move,{x,1},{x,0}}.
    {deallocate,0}.
    return.
  {label,1996}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-14-', 1, 1998}.
  {label,1997}.
    {line,[{location,"bs_match_r23_SUITE.erl",2901}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-binary_aliases/1-fun-14-'},1}.
  {label,1998}.
    {allocate,0,1}.
    {line,[{location,"bs_match_r23_SUITE.erl",2902}]}.
    {call,1,{f,1968}}. % id/1
    {test,is_tuple,{f,1999},[{x,0}]}.
    {test,test_arity,{f,1999},[{x,0},2]}.
    {test,test_arity,{f,1999},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {test,bs_start_match3,{f,1999},3,[{x,1}],{x,1}}.
    {test,bs_skip_bits2,
          {f,1999},
          [{x,1},
           {x,2},
           1,
           {field_flags,[{anno,[2902,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_test_tail2,{f,1999},[{x,1},0]}.
    {move,{x,2},{x,0}}.
    {deallocate,0}.
    return.
  {label,1999}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-13-', 1, 2001}.
  {label,2000}.
    {line,[{location,"bs_match_r23_SUITE.erl",2892}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-binary_aliases/1-fun-13-'},1}.
  {label,2001}.
    {allocate,0,1}.
    {line,[{location,"bs_match_r23_SUITE.erl",2893}]}.
    {call,1,{f,1968}}. % id/1
    {test,is_nonempty_list,{f,2002},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,bs_start_match3,{f,2002},3,[{x,1}],{x,1}}.
    {test,bs_skip_bits2,
          {f,2002},
          [{x,1},
           {x,2},
           1,
           {field_flags,[{anno,[2893,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_test_tail2,{f,2002},[{x,1},0]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,2002}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-12-', 1, 2004}.
  {label,2003}.
    {line,[{location,"bs_match_r23_SUITE.erl",2884}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-binary_aliases/1-fun-12-'},1}.
  {label,2004}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,2006},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_integer2,
          {f,2005},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[2885,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_set_position,{x,1},{x,0}}.
    {test,bs_skip_bits2,
          {f,2005},
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[2885,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,2005},
          3,
          [{x,1},
           {x,2},
           1,
           {field_flags,[{anno,[2885,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,2005},[{x,1},0]}.
    {bs_set_position,{x,1},{x,0}}.
    {test,bs_skip_bits2,
          {f,2005},
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[2885,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_integer2,
          {f,2005},
          4,
          [{x,1},
           {x,2},
           1,
           {field_flags,[{anno,[2885,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,2005},[{x,1},0]}.
    {test_heap,4,5}.
    {put_tuple2,{x,0},{list,[{x,2},{x,4},{x,3}]}}.
    return.
  {label,2005}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_r23_SUITE.erl",2885}]}.
    {badmatch,{x,0}}.
  {label,2006}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-11-', 1, 2008}.
  {label,2007}.
    {line,[{location,"bs_match_r23_SUITE.erl",2880}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-binary_aliases/1-fun-11-'},1}.
  {label,2008}.
    {test,is_map,{f,2007},[{x,0}]}.
    {get_map_elements,{f,2007},{x,0},{list,[{atom,key},{x,1}]}}.
    {test,bs_start_match3,{f,2007},2,[{x,1}],{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {test,bs_get_integer2,
          {f,2007},
          3,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[2880,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,2007},[{x,1},0]}.
    {bs_set_position,{x,1},{x,2}}.
    {test,bs_get_integer2,
          {f,2007},
          4,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[2880,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,2007},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,3},{x,2}]}}.
    return.


{function, '-binary_aliases/1-fun-10-', 1, 2010}.
  {label,2009}.
    {line,[{location,"bs_match_r23_SUITE.erl",2872}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-binary_aliases/1-fun-10-'},1}.
  {label,2010}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,2012},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_integer2,
          {f,2011},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[2873,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,2011},
          3,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[2873,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,2011},
          4,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[2873,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_integer2,
          {f,2011},
          5,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[2873,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_test_tail2,{f,2011},[{x,1},0]}.
    {bs_set_position,{x,1},{x,0}}.
    {test,bs_get_integer2,
          {f,2011},
          6,
          [{x,1},
           {integer,16},
           1,
           {field_flags,[{anno,[2873,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,bs_get_integer2,
          {f,2011},
          7,
          [{x,1},
           {integer,16},
           1,
           {field_flags,[{anno,[2873,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,7}}.
    {test,bs_test_tail2,{f,2011},[{x,1},0]}.
    {bs_set_position,{x,1},{x,0}}.
    {test,bs_get_binary2,
          {f,2011},
          8,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[2873,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,8}}.
    {test,bs_get_binary2,
          {f,2011},
          9,
          [{x,1},
           {integer,24},
           1,
           {field_flags,[{anno,[2873,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,9}}.
    {test,bs_test_tail2,{f,2011},[{x,1},0]}.
    {test_heap,9,10}.
    {put_tuple2,{x,0},
                {list,[{x,8},{x,9},{x,6},{x,7},{x,2},{x,3},{x,4},{x,5}]}}.
    return.
  {label,2011}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_r23_SUITE.erl",2873}]}.
    {badmatch,{x,0}}.
  {label,2012}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-9-', 1, 2014}.
  {label,2013}.
    {line,[{location,"bs_match_r23_SUITE.erl",2866}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-binary_aliases/1-fun-9-'},1}.
  {label,2014}.
    {test,is_eq_exact,{f,2015},[{x,0},{literal,<<>>}]}.
    return.
  {label,2015}.
    {line,[{location,"bs_match_r23_SUITE.erl",2867}]}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-8-', 1, 2017}.
  {label,2016}.
    {line,[{location,"bs_match_r23_SUITE.erl",2860}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-binary_aliases/1-fun-8-'},1}.
  {label,2017}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,2019},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_integer2,
          {f,2018},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[2861,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,2018},[{x,1},0]}.
    {bs_set_position,{x,1},{x,0}}.
    {test,bs_get_integer2,
          {f,2018},
          3,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[2861,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,2018},[{x,1},0]}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},4}.
    {test_heap,7,4}.
    {put_tuple2,{x,0},{list,[{x,3},{x,2},{x,0},{x,0},{x,0},{x,0}]}}.
    return.
  {label,2018}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_r23_SUITE.erl",2861}]}.
    {badmatch,{x,0}}.
  {label,2019}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-7-', 1, 2021}.
  {label,2020}.
    {line,[{location,"bs_match_r23_SUITE.erl",2854}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-binary_aliases/1-fun-7-'},1}.
  {label,2021}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,2023},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_integer2,
          {f,2022},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[2855,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,2022},[{x,1},0]}.
    {bs_set_position,{x,1},{x,0}}.
    {test,bs_get_integer2,
          {f,2022},
          3,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[2855,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,2022},[{x,1},0]}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},4}.
    {test_heap,5,4}.
    {put_tuple2,{x,0},{list,[{x,3},{x,2},{x,0},{x,0}]}}.
    return.
  {label,2022}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_r23_SUITE.erl",2855}]}.
    {badmatch,{x,0}}.
  {label,2023}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-6-', 1, 2025}.
  {label,2024}.
    {line,[{location,"bs_match_r23_SUITE.erl",2847}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-binary_aliases/1-fun-6-'},1}.
  {label,2025}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,2027},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_integer2,
          {f,2026},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[2848,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,2026},[{x,1},0]}.
    {bs_set_position,{x,1},{x,0}}.
    {test,bs_get_integer2,
          {f,2026},
          3,
          [{x,1},
           {integer,4},
           1,
           {field_flags,[{anno,[2848,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,2026},
          4,
          [{x,1},
           {integer,4},
           1,
           {field_flags,[{anno,[2848,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,2026},[{x,1},0]}.
    {test,is_eq_exact,{f,2026},[{x,4},{x,2}]}.
    {bs_set_position,{x,1},{x,0}}.
    {test,bs_get_integer2,
          {f,2026},
          4,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[2848,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,2026},[{x,1},0]}.
    {test,is_eq_exact,{f,2026},[{x,4},{x,3}]}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},4}.
    {test_heap,4,4}.
    {put_tuple2,{x,0},{list,[{x,3},{x,2},{x,0}]}}.
    return.
  {label,2026}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_r23_SUITE.erl",2848}]}.
    {badmatch,{x,0}}.
  {label,2027}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-5-', 2, 2029}.
  {label,2028}.
    {line,[{location,"bs_match_r23_SUITE.erl",2840}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-binary_aliases/1-fun-5-'},2}.
  {label,2029}.
    {line,[{location,"bs_match_r23_SUITE.erl",2841}]}.
    {move,{integer,0},{x,2}}.
    {bs_add,{f,0},[{x,2},{integer,1},8],{x,2}}.
    {bs_init_bits,{f,0},{x,2},0,3,{field_flags,[]},{x,2}}.
    {bs_put_integer,{f,0},{integer,4},1,{field_flags,[]},{x,0}}.
    {bs_put_integer,{f,0},{integer,4},1,{field_flags,[]},{x,1}}.
    {move,{x,2},{x,0}}.
    {test,bs_start_match3,{f,2030},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,2030},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[2841,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,2030},[{x,1},0]}.
    {move,{x,2},{x,0}}.
    return.
  {label,2030}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-4-', 1, 2032}.
  {label,2031}.
    {line,[{location,"bs_match_r23_SUITE.erl",2834}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-binary_aliases/1-fun-4-'},1}.
  {label,2032}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,2034},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_integer2,
          {f,2033},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[2835,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,2033},[{x,1},0]}.
    {bs_set_position,{x,1},{x,0}}.
    {test,bs_get_integer2,
          {f,2033},
          3,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[2835,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,2033},[{x,1},0]}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},4}.
    {test_heap,4,4}.
    {put_tuple2,{x,0},{list,[{x,3},{x,2},{x,0}]}}.
    return.
  {label,2033}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_r23_SUITE.erl",2835}]}.
    {badmatch,{x,0}}.
  {label,2034}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-3-', 1, 2036}.
  {label,2035}.
    {line,[{location,"bs_match_r23_SUITE.erl",2827}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-binary_aliases/1-fun-3-'},1}.
  {label,2036}.
    {line,[{location,"bs_match_r23_SUITE.erl",2830}]}.
    {call_ext_only,1,{extfunc,lists,sum,1}}.


{function, '-binary_aliases/1-fun-2-', 1, 2038}.
  {label,2037}.
    {line,[{location,"bs_match_r23_SUITE.erl",2823}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-binary_aliases/1-fun-2-'},1}.
  {label,2038}.
    {test,is_tagged_tuple,{f,2037},[{x,0},4,{atom,ba_foo}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,2037},[{x,1},{atom,ba_foo}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,bs_start_match3,{f,2037},2,[{x,1}],{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {test,bs_get_integer2,
          {f,2037},
          3,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[2823,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,2037},[{x,1},0]}.
    {bs_set_position,{x,1},{x,2}}.
    {test,bs_get_integer2,
          {f,2037},
          4,
          [{x,1},
           {integer,4},
           1,
           {field_flags,[{anno,[2823,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,2037},
          4,
          [{x,1},
           {integer,4},
           1,
           {field_flags,[{anno,[2823,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,2037},[{x,1},0]}.
    {test_heap,4,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,2},{x,4}]}}.
    return.


{function, '-binary_aliases/1-fun-1-', 1, 2040}.
  {label,2039}.
    {line,[{location,"bs_match_r23_SUITE.erl",2819}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-binary_aliases/1-fun-1-'},1}.
  {label,2040}.
    {test,is_tagged_tuple,{f,2039},[{x,0},4,{atom,ba_foo}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,2039},[{x,1},{atom,ba_foo}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,bs_start_match3,{f,2039},2,[{x,1}],{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {test,bs_get_integer2,
          {f,2039},
          3,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[2819,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,2039},[{x,1},0]}.
    {bs_set_position,{x,1},{x,2}}.
    {test,bs_get_integer2,
          {f,2039},
          4,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[2819,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,2039},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,3},{x,2}]}}.
    return.


{function, '-binary_aliases/1-fun-0-', 1, 2042}.
  {label,2041}.
    {line,[{location,"bs_match_r23_SUITE.erl",2815}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-binary_aliases/1-fun-0-'},1}.
  {label,2042}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,2041},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_integer2,
          {f,2043},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[2815,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,2043},[{x,1},0]}.
    {bs_set_position,{x,1},{x,0}}.
    {test,bs_get_integer2,
          {f,2043},
          3,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[2815,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,2043},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,2043}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,2041}}.


{function, '-many_clauses/1-lc$^1/1-1-', 1, 2045}.
  {label,2044}.
    {line,[{location,"bs_match_r23_SUITE.erl",2683}]}.
    {func_info,{atom,bs_match_r23_SUITE},
               {atom,'-many_clauses/1-lc$^1/1-1-'},
               1}.
  {label,2045}.
    {test,is_nonempty_list,{f,2046},[{x,0}]}.
    {allocate_zero,3,1}.
    {get_list,{x,0},{y,2},{y,1}}.
    {move,{y,2},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2678}]}.
    {call_ext,1,{extfunc,erlang,phash2,1}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2680}]}.
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{integer,2},8],{x,1}}.
    {bs_init_bits,{f,0},{x,1},0,2,{field_flags,[]},{x,1}}.
    {bs_put_integer,{f,0},{integer,16},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,1}}.
    {test,bs_start_match3,{f,2049},2,[{x,1}],{x,2}}.
    {test,bs_get_integer2,
          {f,2049},
          3,
          [{x,2},
           {integer,16},
           1,
           {field_flags,[{anno,[2680,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,2049},[{x,2},0]}.
    {line,[{location,"bs_match_r23_SUITE.erl",2681}]}.
    {gc_bif,'+',{f,0},4,[{y,2},{x,3}],{y,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2682}]}.
    {move,{integer,0},{x,1}}.
    {bs_add,{f,0},[{x,1},{integer,3},8],{x,1}}.
    {bs_init_bits,{f,0},{x,1},3,2,{field_flags,[]},{x,1}}.
    {bs_put_string,1,{string,<<16>>}}.
    {bs_put_integer,{f,0},{integer,16},1,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,0}}.
    {put_tuple2,{x,0},{list,[{y,2},{x,0}]}}.
    {move,{y,0},{y,2}}.
    {trim,1,2}.
    {call_ext,1,{extfunc,bs_match_r23_SUITE_many_clauses,f,1}}.
    {test,is_eq_exact,{f,2048},[{x,0},{y,1}]}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,2045},2}. % '-many_clauses/1-lc$^1/1-1-'/1
  {label,2046}.
    {test,is_nil,{f,2047},[{x,0}]}.
    return.
  {label,2047}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2683}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,2048}.
    {line,[{location,"bs_match_r23_SUITE.erl",2682}]}.
    {badmatch,{x,0}}.
  {label,2049}.
    {line,[{location,"bs_match_r23_SUITE.erl",2680}]}.
    {badmatch,{x,1}}.


{function, '-many_clauses/1-lc$^0/1-0-', 1, 2051}.
  {label,2050}.
    {line,[{location,"bs_match_r23_SUITE.erl",2667}]}.
    {func_info,{atom,bs_match_r23_SUITE},
               {atom,'-many_clauses/1-lc$^0/1-0-'},
               1}.
  {label,2051}.
    {test,is_nonempty_list,{f,2052},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{x,0},{y,0}}.
    {call,1,{f,1624}}. % one_clause/1
    {swap,{y,0},{x,0}}.
    {call,1,{f,2051}}. % '-many_clauses/1-lc$^0/1-0-'/1
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,2052}.
    {test,is_nil,{f,2053},[{x,0}]}.
    return.
  {label,2053}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-binary_match_to_asm/1-lc$^0/1-0-', 1, 2055}.
  {label,2054}.
    {line,[{location,"bs_match_r23_SUITE.erl",2646}]}.
    {func_info,{atom,bs_match_r23_SUITE},
               {atom,'-binary_match_to_asm/1-lc$^0/1-0-'},
               1}.
  {label,2055}.
    {test,is_nonempty_list,{f,2057},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tuple,{f,2056},[{x,1}]}.
    {test,test_arity,{f,2056},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2644}]}.
    {bif,element,{f,0},[{integer,2},{x,2}],{x,3}}.
    {allocate,3,4}.
    {move,{x,3},{y,0}}.
    {move,{x,2},{y,1}}.
    {move,{x,1},{y,2}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2646}]}.
    {call,1,{f,2055}}. % '-binary_match_to_asm/1-lc$^0/1-0-'/1
    {test_heap,16,1}.
    {put_list,{y,1},nil,{x,1}}.
    {put_tuple2,{x,2},{list,[{atom,integer},{y,0},{y,2}]}}.
    {put_list,{x,2},nil,{x,2}}.
    {put_tuple2,{x,1},{list,[{atom,clause},{y,0},{x,1},nil,{x,2}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,3}.
    return.
  {label,2056}.
    {call_only,1,{f,2055}}. % '-binary_match_to_asm/1-lc$^0/1-0-'/1
  {label,2057}.
    {test,is_nil,{f,2058},[{x,0}]}.
    return.
  {label,2058}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-expand_and_squeeze/1-fun-0-', 1, 2060}.
  {label,2059}.
    {line,[{location,"bs_match_r23_SUITE.erl",2588}]}.
    {func_info,{atom,bs_match_r23_SUITE},
               {atom,'-expand_and_squeeze/1-fun-0-'},
               1}.
  {label,2060}.
    {test,is_tagged_tuple,{f,2061},[{x,0},4,{atom,bs_match}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,2061},[{x,1},{atom,bs_match}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,2061},[{x,1},2,{atom,f}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,2061},[{x,1},{atom,f}]}.
    {get_tuple_element,{x,0},3,{x,0}}.
    {test,is_tagged_tuple,{f,2061},[{x,0},2,{atom,commands}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,2061},[{x,1},{atom,commands}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_nonempty_list,{f,2061},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_eq_exact,{f,2061},[{x,1},{literal,{ensure_at_least,16,1}}]}.
    {test,is_nonempty_list,{f,2061},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tagged_tuple,{f,2061},[{x,1},6,{atom,integer}]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,2061},[{x,2},{atom,integer}]}.
    {get_tuple_element,{x,1},3,{x,2}}.
    {test,is_eq_exact,{f,2061},[{x,2},{integer,16}]}.
    {get_tuple_element,{x,1},4,{x,1}}.
    {test,is_eq_exact,{f,2061},[{x,1},{integer,1}]}.
    {bif,'=:=',{f,0},[{x,0},nil],{x,0}}.
    return.
  {label,2061}.
    {move,{atom,false},{x,0}}.
    return.


{function, '-em_2/1-lbc$^0/2-0-', 2, 2063}.
  {label,2062}.
    {line,[{location,"bs_match_r23_SUITE.erl",2524}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-em_2/1-lbc$^0/2-0-'},2}.
  {label,2063}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,2065},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_get_integer2,
          {f,2064},
          3,
          [{x,2},
           {integer,0},
           1,
           {field_flags,[{anno,[2524,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,2064},
          4,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[2524,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {line,[{location,"bs_match_r23_SUITE.erl",2525}]}.
    {move,{integer,0},{x,5}}.
    {bs_add,{f,0},[{x,5},{integer,2},8],{x,5}}.
    {test_heap,0,6}.
    {bs_private_append,{f,0},{x,5},1,{x,1},{field_flags,[]},{x,5}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,4}}.
    {move,{x,5},{x,1}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,2063}}. % '-em_2/1-lbc$^0/2-0-'/2
  {label,2064}.
    {move,{x,1},{x,0}}.
    return.
  {label,2065}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bspu_1/1-lc$^0/1-0-', 1, 2067}.
  {label,2066}.
    {line,[{location,"bs_match_r23_SUITE.erl",2491}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-bspu_1/1-lc$^0/1-0-'},1}.
  {label,2067}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,2069},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_binary2,
          {f,2068},
          2,
          [{x,1},
           {integer,5},
           8,
           {field_flags,[{anno,[2491,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{x,0}}.
    {call,1,{f,2067}}. % '-bspu_1/1-lc$^0/1-0-'/1
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,2068}.
    {move,nil,{x,0}}.
    return.
  {label,2069}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-hangs_forever/1-fun-0-', 1, 2071}.
  {label,2070}.
    {line,[{location,"bs_match_r23_SUITE.erl",2474}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-hangs_forever/1-fun-0-'},1}.
  {label,2071}.
    {call_only,1,{f,1559}}. % hangs_forever_1/1


{function, '-beam_bsm/1-fun-0-', 1, 2073}.
  {label,2072}.
    {line,[{location,"bs_match_r23_SUITE.erl",2147}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-beam_bsm/1-fun-0-'},1}.
  {label,2073}.
    {gc_bif,'*',{f,0},1,[{x,0},{integer,2}],{x,0}}.
    return.


{function, '-num_slots_different/1-lc$^0/1-0-', 1, 2075}.
  {label,2074}.
    {line,[{location,"bs_match_r23_SUITE.erl",2110}]}.
    {func_info,{atom,bs_match_r23_SUITE},
               {atom,'-num_slots_different/1-lc$^0/1-0-'},
               1}.
  {label,2075}.
    {test,is_nonempty_list,{f,2077},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tuple,{f,2076},[{x,1}]}.
    {test,test_arity,{f,2076},[{x,1},4]}.
    {allocate,2,2}.
    {move,{x,0},{y,1}}.
    {get_tuple_element,{x,1},0,{x,0}}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {get_tuple_element,{x,1},2,{x,3}}.
    {get_tuple_element,{x,1},3,{y,0}}.
    {move,{x,2},{x,1}}.
    {move,{x,3},{x,2}}.
    {call,3,{f,1325}}. % lgettext/3
    {test,is_tagged_tuple,{f,2079},[{x,0},2,{atom,ok}]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,2079},[{x,1},{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,2079},[{x,1},{y,0}]}.
    {move,{y,1},{x,0}}.
    {call_last,1,{f,2075},2}. % '-num_slots_different/1-lc$^0/1-0-'/1
  {label,2076}.
    {call_only,1,{f,2075}}. % '-num_slots_different/1-lc$^0/1-0-'/1
  {label,2077}.
    {test,is_nil,{f,2078},[{x,0}]}.
    return.
  {label,2078}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,2079}.
    {badmatch,{x,0}}.


{function, '-constant_propagation_c/0-fun-0-', 1, 2081}.
  {label,2080}.
    {line,[{location,"bs_match_r23_SUITE.erl",2046}]}.
    {func_info,{atom,bs_match_r23_SUITE},
               {atom,'-constant_propagation_c/0-fun-0-'},
               1}.
  {label,2081}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,2083},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_integer2,
          {f,2082},
          2,
          [{x,1},
           {integer,16},
           1,
           {field_flags,[{anno,[2047,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,2082},[{x,1},0]}.
    {move,{x,2},{x,0}}.
    return.
  {label,2082}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_r23_SUITE.erl",2047}]}.
    {badmatch,{x,0}}.
  {label,2083}.
    {badmatch,{x,0}}.


{function, '-bad_literals/1-lc$^3/1-3-', 2, 2085}.
  {label,2084}.
    {line,[{location,"bs_match_r23_SUITE.erl",1930}]}.
    {func_info,{atom,bs_match_r23_SUITE},
               {atom,'-bad_literals/1-lc$^3/1-3-'},
               2}.
  {label,2085}.
    {test,is_nonempty_list,{f,2086},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,2}}.
    {move,{literal,[0,1,2,3]},{x,0}}.
    {call_only,4,{f,2089}}. % '-bad_literals/1-lc$^4/1-4-'/4
  {label,2086}.
    {test,is_nil,{f,2087},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,2087}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bad_literals/1-lc$^4/1-4-', 4, 2089}.
  {label,2088}.
    {line,[{location,"bs_match_r23_SUITE.erl",1931}]}.
    {func_info,{atom,bs_match_r23_SUITE},
               {atom,'-bad_literals/1-lc$^4/1-4-'},
               4}.
  {label,2089}.
    {test,is_nonempty_list,{f,2090},[{x,0}]}.
    {allocate,4,4}.
    {move,{x,3},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,1},{y,3}}.
    {get_list,{x,0},{x,1},{y,0}}.
    {move,{x,3},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1930}]}.
    {call,2,{f,1246}}. % signed_lit_match/2
    {move,{y,0},{x,4}}.
    {move,{y,2},{x,2}}.
    {move,{y,3},{x,1}}.
    {move,{x,0},{y,3}}.
    {move,{y,1},{x,3}}.
    {trim,3,1}.
    {move,{x,4},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1931}]}.
    {call,4,{f,2089}}. % '-bad_literals/1-lc$^4/1-4-'/4
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,2090}.
    {test,is_nil,{f,2091},[{x,0}]}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,2085}}. % '-bad_literals/1-lc$^3/1-3-'/2
  {label,2091}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bad_literals/1-lc$^1/1-1-', 2, 2093}.
  {label,2092}.
    {line,[{location,"bs_match_r23_SUITE.erl",1932}]}.
    {func_info,{atom,bs_match_r23_SUITE},
               {atom,'-bad_literals/1-lc$^1/1-1-'},
               2}.
  {label,2093}.
    {test,is_nonempty_list,{f,2094},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,2}}.
    {move,{literal,[0,1,2]},{x,0}}.
    {call_only,4,{f,2097}}. % '-bad_literals/1-lc$^2/1-2-'/4
  {label,2094}.
    {test,is_nil,{f,2095},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,2095}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bad_literals/1-lc$^2/1-2-', 4, 2097}.
  {label,2096}.
    {line,[{location,"bs_match_r23_SUITE.erl",1933}]}.
    {func_info,{atom,bs_match_r23_SUITE},
               {atom,'-bad_literals/1-lc$^2/1-2-'},
               4}.
  {label,2097}.
    {test,is_nonempty_list,{f,2098},[{x,0}]}.
    {allocate,4,4}.
    {move,{x,3},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,1},{y,3}}.
    {get_list,{x,0},{x,1},{y,0}}.
    {move,{x,3},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1932}]}.
    {call,2,{f,1249}}. % unsigned_lit_match/2
    {move,{y,0},{x,4}}.
    {move,{y,2},{x,2}}.
    {move,{y,3},{x,1}}.
    {move,{x,0},{y,3}}.
    {move,{y,1},{x,3}}.
    {trim,3,1}.
    {move,{x,4},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1933}]}.
    {call,4,{f,2097}}. % '-bad_literals/1-lc$^2/1-2-'/4
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,2098}.
    {test,is_nil,{f,2099},[{x,0}]}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,2093}}. % '-bad_literals/1-lc$^1/1-1-'/2
  {label,2099}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bad_literals/1-lc$^0/1-0-', 1, 2101}.
  {label,2100}.
    {line,[{location,"bs_match_r23_SUITE.erl",1935}]}.
    {func_info,{atom,bs_match_r23_SUITE},
               {atom,'-bad_literals/1-lc$^0/1-0-'},
               1}.
  {label,2101}.
    {test,is_nonempty_list,{f,2102},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{x,0},{y,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1934}]}.
    {call,1,{f,1252}}. % unicode_match/1
    {swap,{y,0},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",1935}]}.
    {call,1,{f,2101}}. % '-bad_literals/1-lc$^0/1-0-'/1
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,2102}.
    {test,is_nil,{f,2103},[{x,0}]}.
    return.
  {label,2103}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-haystack_2/1-lc$^0/1-0-', 2, 2105}.
  {label,2104}.
    {line,[{location,"bs_match_r23_SUITE.erl",1546}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-haystack_2/1-lc$^0/1-0-'},2}.
  {label,2105}.
    {test,is_nonempty_list,{f,2107},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {test,is_tuple,{f,2106},[{x,2}]}.
    {test,test_arity,{f,2106},[{x,2},2]}.
    {get_tuple_element,{x,2},0,{x,3}}.
    {get_tuple_element,{x,2},1,{x,2}}.
    {test,bs_start_match3,{f,2109},4,[{x,1}],{x,4}}.
    {test,bs_skip_bits2,
          {f,2109},
          [{x,4},
           {x,3},
           8,
           {field_flags,[{anno,[1544,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,2109},
          5,
          [{x,4},
           {x,2},
           8,
           {field_flags,[{anno,[1544,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_unit,{f,2109},[{x,4},8]}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {call,2,{f,2105}}. % '-haystack_2/1-lc$^0/1-0-'/2
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,2106}.
    {call_only,2,{f,2105}}. % '-haystack_2/1-lc$^0/1-0-'/2
  {label,2107}.
    {test,is_nil,{f,2108},[{x,0}]}.
    return.
  {label,2108}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,2109}.
    {line,[{location,"bs_match_r23_SUITE.erl",1544}]}.
    {badmatch,{x,1}}.


{function, '-haystack_1/1-lc$^0/1-0-', 2, 2111}.
  {label,2110}.
    {line,[{location,"bs_match_r23_SUITE.erl",1537}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-haystack_1/1-lc$^0/1-0-'},2}.
  {label,2111}.
    {test,is_nonempty_list,{f,2112},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {test,bs_start_match3,{f,2114},3,[{x,1}],{x,3}}.
    {test,bs_skip_bits2,
          {f,2114},
          [{x,3},
           {x,2},
           8,
           {field_flags,[{anno,[1535,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_test_tail2,{f,2114},[{x,3},0]}.
    {call_only,2,{f,2111}}. % '-haystack_1/1-lc$^0/1-0-'/2
  {label,2112}.
    {test,is_nil,{f,2113},[{x,0}]}.
    return.
  {label,2113}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,2114}.
    {line,[{location,"bs_match_r23_SUITE.erl",1535}]}.
    {badmatch,{x,1}}.


{function, '-bad_size_2/1-lc$^0/1-0-', 1, 2116}.
  {label,2115}.
    {line,[{location,"bs_match_r23_SUITE.erl",1517}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-bad_size_2/1-lc$^0/1-0-'},1}.
  {label,2116}.
    {test,is_nonempty_list,{f,2118},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,bs_start_match3,{f,2117},2,[{x,1}],{x,1}}.
    {test,bs_get_float2,
          {f,2117},
          2,
          [{x,1},
           {atom,bad_size},
           1,
           {field_flags,[{anno,[1515,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,2117},[{x,1},0]}.
    {allocate,0,1}.
    {call,1,{f,2116}}. % '-bad_size_2/1-lc$^0/1-0-'/1
    {test_heap,2,1}.
    {put_list,{atom,ok},{x,0},{x,0}}.
    {deallocate,0}.
    return.
  {label,2117}.
    {call_only,1,{f,2116}}. % '-bad_size_2/1-lc$^0/1-0-'/1
  {label,2118}.
    {test,is_nil,{f,2119},[{x,0}]}.
    return.
  {label,2119}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bad_size/1-lbc$^0/2-0-', 2, 2121}.
  {label,2120}.
    {line,[{location,"bs_match_r23_SUITE.erl",1451}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-bad_size/1-lbc$^0/2-0-'},2}.
  {label,2121}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,2124},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_get_float2,
          {f,2122},
          3,
          [{x,2},
           {integer,64},
           1,
           {field_flags,[{anno,[1451,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,2122},
          4,
          [{x,2},
           {x,3},
           1,
           {field_flags,[{anno,[1451,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {move,{integer,0},{x,4}}.
    {gc_bif,bit_size,{f,0},5,[{x,3}],{x,5}}.
    {bs_add,{f,0},[{x,4},{x,5},1],{x,4}}.
    {test_heap,0,5}.
    {bs_private_append,{f,0},{x,4},1,{x,1},{field_flags,[]},{x,4}}.
    {bs_put_binary,{f,0},{atom,all},1,{field_flags,[]},{x,3}}.
    {move,{x,4},{x,1}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,2121}}. % '-bad_size/1-lbc$^0/2-0-'/2
  {label,2122}.
    {bs_set_position,{x,2},{x,0}}.
    {test,bs_get_float2,
          {f,2123},
          3,
          [{x,2},
           {integer,64},
           1,
           {field_flags,[{anno,[1451,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_skip_bits2,
          {f,2123},
          [{x,2},
           {x,3},
           1,
           {field_flags,[{anno,[1451,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}]}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,2121}}. % '-bad_size/1-lbc$^0/2-0-'/2
  {label,2123}.
    {move,{x,1},{x,0}}.
    return.
  {label,2124}.
    {test,bs_start_match3,{f,2125},2,[{x,0}],{x,2}}.
    {test,bs_get_float2,
          {f,2125},
          3,
          [{x,2},
           {integer,64},
           1,
           {field_flags,[{anno,[1451,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_skip_bits2,
          {f,2125},
          [{x,2},
           {x,3},
           1,
           {field_flags,[{anno,[1451,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}]}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,2121}}. % '-bad_size/1-lbc$^0/2-0-'/2
  {label,2125}.
    {test,bs_start_match3,{f,2126},2,[{x,0}],{x,2}}.
    {move,{x,1},{x,0}}.
    return.
  {label,2126}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-zero_width/1-fun-0-', 1, 2128}.
  {label,2127}.
    {line,[{location,"bs_match_r23_SUITE.erl",1397}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-zero_width/1-fun-0-'},1}.
  {label,2128}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,2130},1,[{x,0}],{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {test,bs_get_integer2,
          {f,2129},
          2,
          [{x,0},
           {integer,8},
           1,
           {field_flags,[{anno,[1397,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,2129},[{x,2},{integer,42}]}.
    {test,bs_test_tail2,{f,2129},[{x,0},0]}.
    {move,{atom,star},{x,0}}.
    return.
  {label,2129}.
    {bs_set_position,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,2130},
          1,
          [{x,0},
           {integer,0},
           1,
           {field_flags,[{anno,[1398,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_test_tail2,{f,2130},[{x,0},0]}.
    {move,{x,1},{x,0}}.
    return.
  {label,2130}.
    {move,{atom,no_match},{x,0}}.
    return.


{function, '-coverage_beam_ssa_codegen/1-lbc$^0/2-0-', 2, 2132}.
  {label,2131}.
    {line,[{location,"bs_match_r23_SUITE.erl",1020}]}.
    {func_info,{atom,bs_match_r23_SUITE},
               {atom,'-coverage_beam_ssa_codegen/1-lbc$^0/2-0-'},
               2}.
  {label,2132}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,2135},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_get_integer2,
          {f,2134},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[1020,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,2133},[{x,3},{integer,2}]}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,1},8],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_string,1,{string,<<0>>}}.
    {move,{x,3},{x,1}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,2132}}. % '-coverage_beam_ssa_codegen/1-lbc$^0/2-0-'/2
  {label,2133}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,2132}}. % '-coverage_beam_ssa_codegen/1-lbc$^0/2-0-'/2
  {label,2134}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,2135}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-coverage_trim_4/1-lbc$^0/2-0-', 2, 2137}.
  {label,2136}.
    {line,[{location,"bs_match_r23_SUITE.erl",1003}]}.
    {func_info,{atom,bs_match_r23_SUITE},
               {atom,'-coverage_trim_4/1-lbc$^0/2-0-'},
               2}.
  {label,2137}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,2139},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_get_integer2,
          {f,2138},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[1003,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {move,{integer,0},{x,4}}.
    {bs_add,{f,0},[{x,4},{integer,2},8],{x,4}}.
    {test_heap,0,5}.
    {bs_private_append,{f,0},{x,4},1,{x,1},{field_flags,[]},{x,4}}.
    {bs_put_integer,{f,0},{integer,16},1,{field_flags,[]},{x,3}}.
    {move,{x,4},{x,1}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,2137}}. % '-coverage_trim_4/1-lbc$^0/2-0-'/2
  {label,2138}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,2139}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-do_coverage_bin_to_term_list/1-lbc$^0/2-0-', 2, 2141}.
  {label,2140}.
    {line,[{location,"bs_match_r23_SUITE.erl",917}]}.
    {func_info,{atom,bs_match_r23_SUITE},
               {atom,'-do_coverage_bin_to_term_list/1-lbc$^0/2-0-'},
               2}.
  {label,2141}.
    {test,is_nonempty_list,{f,2142},[{x,0}]}.
    {allocate,2,2}.
    {move,{x,1},{y,1}}.
    {get_list,{x,0},{x,0},{y,0}}.
    {call_ext,1,{extfunc,erlang,term_to_binary,1}}.
    {line,[{location,"bs_match_r23_SUITE.erl",918}]}.
    {gc_bif,byte_size,{f,0},1,[{x,0}],{x,1}}.
    {move,{integer,0},{x,2}}.
    {bs_add,{f,0},[{x,2},{integer,4},8],{x,2}}.
    {gc_bif,byte_size,{f,0},3,[{x,0}],{x,3}}.
    {bs_add,{f,0},[{x,2},{x,3},8],{x,2}}.
    {bs_init_bits,{f,0},{x,2},0,3,{field_flags,[]},{x,2}}.
    {bs_put_integer,{f,0},{integer,32},1,{field_flags,[]},{x,1}}.
    {bs_put_binary,{f,0},{atom,all},8,{field_flags,[]},{x,0}}.
    {move,{x,2},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",917}]}.
    {move,{integer,0},{x,1}}.
    {gc_bif,byte_size,{f,0},2,[{x,0}],{x,2}}.
    {bs_add,{f,0},[{x,1},{x,2},8],{x,1}}.
    {test_heap,0,2}.
    {bs_private_append,{f,0},{x,1},1,{y,1},{field_flags,[]},{x,1}}.
    {bs_put_binary,{f,0},{atom,all},8,{field_flags,[]},{x,0}}.
    {move,{x,1},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,2141},2}. % '-do_coverage_bin_to_term_list/1-lbc$^0/2-0-'/2
  {label,2142}.
    {test,is_nil,{f,2143},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,2143}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_match_r23_SUITE.erl",919}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-coverage_bc/2-lbc$^0/2-0-', 2, 2145}.
  {label,2144}.
    {line,[{location,"bs_match_r23_SUITE.erl",896}]}.
    {func_info,{atom,bs_match_r23_SUITE},
               {atom,'-coverage_bc/2-lbc$^0/2-0-'},
               2}.
  {label,2145}.
    {test,is_nonempty_list,{f,2146},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,1},8],{x,3}}.
    {test_heap,0,4}.
    {bs_private_append,{f,0},{x,3},1,{x,1},{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,2145}}. % '-coverage_bc/2-lbc$^0/2-0-'/2
  {label,2146}.
    {test,is_nil,{f,2147},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,2147}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-coverage/1-fun-2-', 2, 2149}.
  {label,2148}.
    {line,[{location,"bs_match_r23_SUITE.erl",819}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-coverage/1-fun-2-'},2}.
  {label,2149}.
    {line,[{location,"bs_match_r23_SUITE.erl",820}]}.
    {gc_bif,'+',{f,0},2,[{x,1},{x,0}],{x,0}}.
    return.


{function, '-coverage/1-fun-1-', 2, 2151}.
  {label,2150}.
    {line,[{location,"bs_match_r23_SUITE.erl",818}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-coverage/1-fun-1-'},2}.
  {label,2151}.
    {gc_bif,'+',{f,0},2,[{x,1},{x,0}],{x,0}}.
    return.


{function, '-coverage/1-fun-0-', 2, 2153}.
  {label,2152}.
    {line,[{location,"bs_match_r23_SUITE.erl",817}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-coverage/1-fun-0-'},2}.
  {label,2153}.
    {gc_bif,'+',{f,0},2,[{x,1},{x,0}],{x,0}}.
    return.


{function, '-bin_and_float/1-lbc$^0/2-0-', 3, 2155}.
  {label,2154}.
    {line,[{location,"bs_match_r23_SUITE.erl",629}]}.
    {func_info,{atom,bs_match_r23_SUITE},
               {atom,'-bin_and_float/1-lbc$^0/2-0-'},
               3}.
  {label,2155}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,2158},3,[{x,0}],{x,3}}.
    {bs_get_position,{x,3},{x,0},4}.
    {test,bs_get_float2,
          {f,2157},
          4,
          [{x,3},
           {x,2},
           63,
           {field_flags,[{anno,[629,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,is_eq_exact,{f,2156},[{x,4},{float,1.0}]}.
    {move,{integer,0},{x,4}}.
    {bs_add,{f,0},[{x,4},{integer,1},8],{x,4}}.
    {test_heap,0,5}.
    {bs_private_append,{f,0},{x,4},1,{x,1},{field_flags,[]},{x,4}}.
    {bs_put_string,1,{string,<<0>>}}.
    {move,{x,4},{x,1}}.
    {move,{x,3},{x,0}}.
    {call_only,3,{f,2155}}. % '-bin_and_float/1-lbc$^0/2-0-'/3
  {label,2156}.
    {move,{x,3},{x,0}}.
    {call_only,3,{f,2155}}. % '-bin_and_float/1-lbc$^0/2-0-'/3
  {label,2157}.
    {move,{x,1},{x,0}}.
    return.
  {label,2158}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-null_fields/1-fun-3-', 0, 2160}.
  {label,2159}.
    {line,[{location,"bs_match_r23_SUITE.erl",300}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-null_fields/1-fun-3-'},0}.
  {label,2160}.
    {move,{literal,<<>>},{x,0}}.
    {test,bs_start_match3,{f,2162},0,[{x,0}],{x,0}}.
    {test,bs_test_unit,{f,2161},[{x,0},8]}.
    {move,{atom,tail},{x,0}}.
    return.
  {label,2161}.
    {test,bs_test_tail2,{f,2162},[{x,0},0]}.
    {move,{atom,empty},{x,0}}.
    return.
  {label,2162}.
    {move,{literal,<<>>},{x,0}}.
    {call_only,1,{f,2267}}. % '-null_fields/1-inlined-1-'/1


{function, '-null_fields/1-fun-1-', 0, 2164}.
  {label,2163}.
    {line,[{location,"bs_match_r23_SUITE.erl",293}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-null_fields/1-fun-1-'},0}.
  {label,2164}.
    {allocate,0,0}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"bs_match_r23_SUITE.erl",294}]}.
    {call,1,{f,1968}}. % id/1
    {move,{literal,<<>>},{x,1}}.
    {test,bs_start_match3,{f,2166},1,[{x,1}],{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {test,bs_skip_bits2,
          {f,2165},
          [{x,1},
           {x,0},
           1,
           {field_flags,[{anno,[295,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_test_tail2,{f,2165},[{x,1},0]}.
    {move,{atom,tail},{x,0}}.
    {deallocate,0}.
    return.
  {label,2165}.
    {bs_set_position,{x,1},{x,2}}.
    {test,bs_test_tail2,{f,2166},[{x,1},0]}.
    {move,{atom,empty},{x,0}}.
    {deallocate,0}.
    return.
  {label,2166}.
    {move,{literal,<<>>},{x,0}}.
    {call_last,1,{f,2265},0}. % '-null_fields/1-inlined-0-'/1


{function, '-otp_5269/1-fun-15-', 0, 2168}.
  {label,2167}.
    {line,[{location,"bs_match_r23_SUITE.erl",282}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-otp_5269/1-fun-15-'},0}.
  {label,2168}.
    {move,{literal,<<1,2,3,4>>},{x,0}}.
    {test,bs_start_match3,{f,2170},0,[{x,0}],{x,0}}.
    {test,bs_get_binary2,
          {f,2170},
          1,
          [{x,0},
           {integer,1},
           8,
           {field_flags,[{anno,[283,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_get_integer2,
          {f,2170},
          2,
          [{x,0},
           {integer,8},
           1,
           {field_flags,[{anno,[283,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_skip_bits2,
          {f,2170},
          [{x,0},
           {x,2},
           8,
           {field_flags,[{anno,[283,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_test_tail2,{f,2170},[{x,0},0]}.
    {test,is_eq_exact,{f,2169},[{x,1},{x,2}]}.
    {move,{atom,wrong},{x,0}}.
    return.
  {label,2169}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,2170}.
    {move,{literal,<<1,2,3,4>>},{x,0}}.
    {call_only,1,{f,2273}}. % '-otp_5269/1-inlined-6-'/1


{function, '-otp_5269/1-fun-13-', 0, 2172}.
  {label,2171}.
    {line,[{location,"bs_match_r23_SUITE.erl",278}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-otp_5269/1-fun-13-'},0}.
  {label,2172}.
    {move,{literal,[<<0,0,0,1>>,<<0,0,0,2>>,<<3>>]},{x,0}}.
    {call_only,1,{f,2174}}. % '-otp_5269/1-lc$^12/1-5-'/1


{function, '-otp_5269/1-lc$^12/1-5-', 1, 2174}.
  {label,2173}.
    {line,[{location,"bs_match_r23_SUITE.erl",279}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-otp_5269/1-lc$^12/1-5-'},1}.
  {label,2174}.
    {test,is_nonempty_list,{f,2176},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,bs_start_match3,{f,2175},2,[{x,1}],{x,1}}.
    {test,bs_get_integer2,
          {f,2175},
          2,
          [{x,1},
           {integer,32},
           1,
           {field_flags,[{anno,[279,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,2175},[{x,1},0]}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {call,1,{f,2174}}. % '-otp_5269/1-lc$^12/1-5-'/1
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,2175}.
    {call_only,1,{f,2174}}. % '-otp_5269/1-lc$^12/1-5-'/1
  {label,2176}.
    {test,is_nil,{f,2177},[{x,0}]}.
    return.
  {label,2177}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-otp_5269/1-fun-11-', 0, 2179}.
  {label,2178}.
    {line,[{location,"bs_match_r23_SUITE.erl",273}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-otp_5269/1-fun-11-'},0}.
  {label,2179}.
    {move,{literal,<<2,65,66,67,68>>},{x,0}}.
    {test,bs_start_match3,{f,2180},0,[{x,0}],{x,0}}.
    {test,bs_get_integer2,
          {f,2180},
          1,
          [{x,0},
           {integer,8},
           1,
           {field_flags,[{anno,[274,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_get_binary2,
          {f,2180},
          2,
          [{x,0},
           {x,1},
           8,
           {field_flags,[{anno,[274,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,2180},
          3,
          [{x,0},
           {atom,all},
           8,
           {field_flags,[{anno,[274,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,0}}.
    {test_heap,4,3}.
    {put_tuple2,{x,0},{list,[{x,1},{x,2},{x,0}]}}.
    return.
  {label,2180}.
    {line,[{location,"bs_match_r23_SUITE.erl",274}]}.
    {badmatch,{literal,<<2,65,66,67,68>>}}.


{function, '-otp_5269/1-fun-10-', 0, 2182}.
  {label,2181}.
    {line,[{location,"bs_match_r23_SUITE.erl",271}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-otp_5269/1-fun-10-'},0}.
  {label,2182}.
    {move,{integer,28},{x,0}}.
    return.


{function, '-otp_5269/1-fun-9-', 0, 2184}.
  {label,2183}.
    {line,[{location,"bs_match_r23_SUITE.erl",267}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-otp_5269/1-fun-9-'},0}.
  {label,2184}.
    {move,{literal,[<<16,0,19>>]},{x,0}}.
    {call_only,1,{f,2186}}. % '-otp_5269/1-lc$^7/1-3-'/1


{function, '-otp_5269/1-lc$^7/1-3-', 1, 2186}.
  {label,2185}.
    {line,[{location,"bs_match_r23_SUITE.erl",268}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-otp_5269/1-lc$^7/1-3-'},1}.
  {label,2186}.
    {test,is_nonempty_list,{f,2188},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,bs_start_match3,{f,2187},2,[{x,1}],{x,1}}.
    {test,bs_get_integer2,
          {f,2187},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[267,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,2187},
          3,
          [{x,1},
           {x,2},
           1,
           {field_flags,[{anno,[267,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,2187},[{x,1},0]}.
    {line,[{location,"bs_match_r23_SUITE.erl",269}]}.
    {move,{integer,0},{x,3}}.
    {bs_add,{f,0},[{x,3},{integer,1},8],{x,3}}.
    {bs_init_bits,{f,0},{x,3},2,4,{field_flags,[]},{x,3}}.
    {bs_put_integer,{f,0},{integer,8},1,{field_flags,[]},{x,2}}.
    {move,{x,3},{x,1}}.
    {put_list,{x,1},nil,{x,1}}.
    {swap,{x,0},{x,1}}.
    {call_only,2,{f,2191}}. % '-otp_5269/1-lc$^8/1-4-'/2
  {label,2187}.
    {call_only,1,{f,2186}}. % '-otp_5269/1-lc$^7/1-3-'/1
  {label,2188}.
    {test,is_nil,{f,2189},[{x,0}]}.
    return.
  {label,2189}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_match_r23_SUITE.erl",268}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-otp_5269/1-lc$^8/1-4-', 2, 2191}.
  {label,2190}.
    {line,[{location,"bs_match_r23_SUITE.erl",269}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-otp_5269/1-lc$^8/1-4-'},2}.
  {label,2191}.
    {test,is_nonempty_list,{f,2193},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {test,bs_start_match3,{f,2192},3,[{x,2}],{x,2}}.
    {test,bs_get_integer2,
          {f,2192},
          3,
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[267,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,2192},[{x,2},0]}.
    {allocate,1,4}.
    {move,{x,3},{y,0}}.
    {call,2,{f,2191}}. % '-otp_5269/1-lc$^8/1-4-'/2
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,2192}.
    {call_only,2,{f,2191}}. % '-otp_5269/1-lc$^8/1-4-'/2
  {label,2193}.
    {test,is_nil,{f,2194},[{x,0}]}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,2186}}. % '-otp_5269/1-lc$^7/1-3-'/1
  {label,2194}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-otp_5269/1-fun-6-', 0, 2196}.
  {label,2195}.
    {line,[{location,"bs_match_r23_SUITE.erl",265}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-otp_5269/1-fun-6-'},0}.
  {label,2196}.
    {move,{literal,[<<" ">>]},{x,0}}.
    {call_only,1,{f,2198}}. % '-otp_5269/1-lc$^5/1-2-'/1


{function, '-otp_5269/1-lc$^5/1-2-', 1, 2198}.
  {label,2197}.
    {line,[{location,"bs_match_r23_SUITE.erl",265}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-otp_5269/1-lc$^5/1-2-'},1}.
  {label,2198}.
    {test,is_nonempty_list,{f,2200},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,bs_start_match3,{f,2199},2,[{x,1}],{x,1}}.
    {test,bs_get_integer2,
          {f,2199},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[265,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,2199},[{x,1},0]}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {call,1,{f,2198}}. % '-otp_5269/1-lc$^5/1-2-'/1
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,2199}.
    {call_only,1,{f,2198}}. % '-otp_5269/1-lc$^5/1-2-'/1
  {label,2200}.
    {test,is_nil,{f,2201},[{x,0}]}.
    return.
  {label,2201}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-otp_5269/1-fun-4-', 0, 2203}.
  {label,2202}.
    {line,[{location,"bs_match_r23_SUITE.erl",263}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-otp_5269/1-fun-4-'},0}.
  {label,2203}.
    {move,{literal,<<" ">>},{x,0}}.
    {test,bs_start_match3,{f,2204},0,[{x,0}],{x,0}}.
    {test,bs_get_integer2,
          {f,2204},
          1,
          [{x,0},
           {integer,8},
           1,
           {field_flags,[{anno,[263,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_test_tail2,{f,2204},[{x,0},0]}.
    {move,{x,1},{x,0}}.
    return.
  {label,2204}.
    {move,{literal,<<" ">>},{x,0}}.
    {call_only,1,{f,2271}}. % '-otp_5269/1-inlined-1-'/1


{function, '-otp_5269/1-fun-2-', 0, 2206}.
  {label,2205}.
    {line,[{location,"bs_match_r23_SUITE.erl",261}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-otp_5269/1-fun-2-'},0}.
  {label,2206}.
    {move,{literal,<<16,0,7>>},{x,0}}.
    {test,bs_start_match3,{f,2207},0,[{x,0}],{x,0}}.
    {test,bs_get_integer2,
          {f,2207},
          1,
          [{x,0},
           {integer,8},
           1,
           {field_flags,[{anno,[261,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_get_integer2,
          {f,2207},
          2,
          [{x,0},
           {x,1},
           1,
           {field_flags,[{anno,[261,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_test_tail2,{f,2207},[{x,0},0]}.
    {move,{x,1},{x,0}}.
    return.
  {label,2207}.
    {badmatch,{literal,<<16,0,7>>}}.


{function, '-otp_5269/1-fun-1-', 0, 2209}.
  {label,2208}.
    {line,[{location,"bs_match_r23_SUITE.erl",256}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-otp_5269/1-fun-1-'},0}.
  {label,2209}.
    {move,{literal,<<16,0,7>>},{x,0}}.
    {test,bs_start_match3,{f,2210},0,[{x,0}],{x,0}}.
    {test,bs_get_integer2,
          {f,2210},
          1,
          [{x,0},
           {integer,8},
           1,
           {field_flags,[{anno,[257,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_get_integer2,
          {f,2210},
          2,
          [{x,0},
           {x,1},
           1,
           {field_flags,[{anno,[257,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_test_tail2,{f,2210},[{x,0},0]}.
    {move,{x,1},{x,0}}.
    return.
  {label,2210}.
    {move,{literal,<<16,0,7>>},{x,0}}.
    {call_only,1,{f,2269}}. % '-otp_5269/1-inlined-0-'/1


{function, '-size_shadow_6/2-fun-0-', 5, 2212}.
  {label,2211}.
    {line,[{location,"bs_match_r23_SUITE.erl",213}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-size_shadow_6/2-fun-0-'},5}.
  {label,2212}.
    {'%',{var_info,{x,1},[accepts_match_context]}}.
    {test,bs_start_match3,{f,2214},5,[{x,1}],{x,5}}.
    {bs_get_position,{x,5},{x,1},6}.
    {test,bs_get_integer2,
          {f,2213},
          6,
          [{x,5},
           {x,4},
           1,
           {field_flags,[{anno,[213,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,2213},[{x,5},0]}.
    {move,{x,3},{x,1}}.
    {move,{x,2},{x,3}}.
    {move,{x,0},{x,2}}.
    {move,{x,4},{x,0}}.
    {call_only,4,{f,45}}. % fum/4
  {label,2213}.
    {bs_set_position,{x,5},{x,1}}.
    {bs_get_tail,{x,5},{x,1},6}.
    {call_only,3,{f,2291}}. % '-size_shadow_6/2-inlined-0-'/3
  {label,2214}.
    {call_only,3,{f,2291}}. % '-size_shadow_6/2-inlined-0-'/3


{function, '-size_shadow_5/2-fun-0-', 5, 2216}.
  {label,2215}.
    {line,[{location,"bs_match_r23_SUITE.erl",210}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-size_shadow_5/2-fun-0-'},5}.
  {label,2216}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,2218},5,[{x,0}],{x,5}}.
    {bs_get_position,{x,5},{x,0},6}.
    {test,bs_get_integer2,
          {f,2217},
          6,
          [{x,5},
           {x,4},
           1,
           {field_flags,[{anno,[210,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,2217},[{x,5},0]}.
    {swap,{x,1},{x,2}}.
    {swap,{x,3},{x,1}}.
    {move,{x,4},{x,0}}.
    {call_only,4,{f,45}}. % fum/4
  {label,2217}.
    {bs_set_position,{x,5},{x,0}}.
    {bs_get_tail,{x,5},{x,0},6}.
    {call_only,3,{f,2289}}. % '-size_shadow_5/2-inlined-0-'/3
  {label,2218}.
    {call_only,3,{f,2289}}. % '-size_shadow_5/2-inlined-0-'/3


{function, '-size_shadow_4/1-fun-1-', 2, 2220}.
  {label,2219}.
    {line,[{location,"bs_match_r23_SUITE.erl",201}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-size_shadow_4/1-fun-1-'},2}.
  {label,2220}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,2221},2,[{x,0}],{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {test,bs_get_integer2,
          {f,2221},
          3,
          [{x,0},
           {x,1},
           1,
           {field_flags,[{anno,[202,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,2221},
          4,
          [{x,0},
           {x,3},
           1,
           {field_flags,[{anno,[202,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_integer2,
          {f,2221},
          5,
          [{x,0},
           {x,3},
           1,
           {field_flags,[{anno,[202,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_test_tail2,{f,2221},[{x,0},0]}.
    {bs_set_position,{x,0},{x,2}}.
    {test,bs_get_integer2,
          {f,2221},
          6,
          [{x,0},
           {x,1},
           1,
           {field_flags,[{anno,[202,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_get_integer2,
          {f,2221},
          6,
          [{x,0},
           {x,1},
           1,
           {field_flags,[{anno,[202,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,2221},
          6,
          [{x,0},
           {x,1},
           1,
           {field_flags,[{anno,[202,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,bs_test_tail2,{f,2221},[{x,0},0]}.
    {test,is_eq_exact,{f,2221},[{x,6},{x,1}]}.
    {test,is_eq_exact,{f,2221},[{x,3},{x,1}]}.
    {test,is_eq_exact,{f,2221},[{x,4},{x,2}]}.
    {test,is_eq_exact,{f,2221},[{x,5},{x,1}]}.
    {move,{x,2},{x,0}}.
    return.
  {label,2221}.
    {move,{atom,no},{x,0}}.
    return.


{function, '-size_shadow_4/1-fun-3-', 2, 2223}.
  {label,2222}.
    {line,[{location,"bs_match_r23_SUITE.erl",195}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-size_shadow_4/1-fun-3-'},2}.
  {label,2223}.
    {test_heap,2,2}.
    {put_list,{x,0},nil,{x,2}}.
    {test,is_nonempty_list,{f,2224},[{x,2}]}.
    {test,bs_start_match3,{f,2224},2,[{x,0}],{x,0}}.
    {test,bs_get_integer2,
          {f,2224},
          2,
          [{x,0},
           {x,1},
           1,
           {field_flags,[{anno,[196,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_get_integer2,
          {f,2224},
          2,
          [{x,0},
           {x,1},
           1,
           {field_flags,[{anno,[196,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,2224},
          3,
          [{x,0},
           {x,1},
           1,
           {field_flags,[{anno,[196,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,2224},[{x,0},0]}.
    {test,is_eq_exact,{f,2224},[{x,3},{x,1}]}.
    {move,{x,2},{x,0}}.
    return.
  {label,2224}.
    {move,{atom,no},{x,0}}.
    return.


{function, '-size_shadow_4/1-fun-4-', 2, 2226}.
  {label,2225}.
    {line,[{location,"bs_match_r23_SUITE.erl",192}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-size_shadow_4/1-fun-4-'},2}.
  {label,2226}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,2227},2,[{x,0}],{x,0}}.
    {test,bs_get_integer2,
          {f,2227},
          2,
          [{x,0},
           {x,1},
           1,
           {field_flags,[{anno,[192,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_get_integer2,
          {f,2227},
          2,
          [{x,0},
           {x,1},
           1,
           {field_flags,[{anno,[192,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,2227},
          3,
          [{x,0},
           {x,1},
           1,
           {field_flags,[{anno,[192,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,2227},[{x,0},0]}.
    {test,is_eq_exact,{f,2227},[{x,3},{x,1}]}.
    {move,{x,2},{x,0}}.
    return.
  {label,2227}.
    {move,{atom,no},{x,0}}.
    return.


{function, '-size_shadow_3/0-fun-1-', 1, 2229}.
  {label,2228}.
    {line,[{location,"bs_match_r23_SUITE.erl",186}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-size_shadow_3/0-fun-1-'},1}.
  {label,2229}.
    {test_heap,4,1}.
    {put_tuple2,{x,1},{list,[{atom,tag},{x,0},{x,0}]}}.
    {test,bs_start_match3,{f,2230},2,[{x,0}],{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {test,bs_get_integer2,
          {f,2230},
          3,
          [{x,0},
           {integer,8},
           1,
           {field_flags,[{anno,[187,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,2230},
          4,
          [{x,0},
           {x,3},
           1,
           {field_flags,[{anno,[187,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_integer2,
          {f,2230},
          5,
          [{x,0},
           {x,3},
           1,
           {field_flags,[{anno,[187,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_test_tail2,{f,2230},[{x,0},0]}.
    {bs_set_position,{x,0},{x,2}}.
    {test,bs_get_integer2,
          {f,2230},
          6,
          [{x,0},
           {integer,8},
           1,
           {field_flags,[{anno,[187,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,2230},
          6,
          [{x,0},
           {x,2},
           1,
           {field_flags,[{anno,[187,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,bs_get_integer2,
          {f,2230},
          7,
          [{x,0},
           {x,2},
           1,
           {field_flags,[{anno,[187,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,7}}.
    {test,bs_test_tail2,{f,2230},[{x,0},0]}.
    {test,is_eq_exact,{f,2230},[{x,7},{x,2}]}.
    {test,is_eq_exact,{f,2230},[{x,3},{x,2}]}.
    {test,is_eq_exact,{f,2230},[{x,4},{x,6}]}.
    {test,is_eq_exact,{f,2230},[{x,5},{x,2}]}.
    {move,{x,6},{x,0}}.
    return.
  {label,2230}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,2287}}. % '-size_shadow_3/0-inlined-2-'/1


{function, '-size_shadow_3/0-fun-3-', 1, 2232}.
  {label,2231}.
    {line,[{location,"bs_match_r23_SUITE.erl",183}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-size_shadow_3/0-fun-3-'},1}.
  {label,2232}.
    {test_heap,5,1}.
    {put_list,{x,0},nil,{x,1}}.
    {put_tuple2,{x,1},{list,[{atom,tag},{x,1}]}}.
    {test,bs_start_match3,{f,2233},2,[{x,0}],{x,0}}.
    {test,bs_get_integer2,
          {f,2233},
          2,
          [{x,0},
           {integer,8},
           1,
           {field_flags,[{anno,[184,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,2233},
          3,
          [{x,0},
           {x,2},
           1,
           {field_flags,[{anno,[184,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,2233},
          4,
          [{x,0},
           {x,2},
           1,
           {field_flags,[{anno,[184,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,2233},[{x,0},0]}.
    {test,is_eq_exact,{f,2233},[{x,4},{x,2}]}.
    {move,{x,3},{x,0}}.
    return.
  {label,2233}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,2285}}. % '-size_shadow_3/0-inlined-1-'/1


{function, '-size_shadow_3/0-fun-4-', 1, 2235}.
  {label,2234}.
    {line,[{location,"bs_match_r23_SUITE.erl",182}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-size_shadow_3/0-fun-4-'},1}.
  {label,2235}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,2234},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_integer2,
          {f,2236},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[182,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,2236},
          3,
          [{x,1},
           {x,2},
           1,
           {field_flags,[{anno,[182,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,2236},
          4,
          [{x,1},
           {x,2},
           1,
           {field_flags,[{anno,[182,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,2236},[{x,1},0]}.
    {test,is_eq_exact,{f,2236},[{x,4},{x,2}]}.
    {move,{x,3},{x,0}}.
    return.
  {label,2236}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,2234}}.


{function, '-size_shadow_2/1-fun-1-', 2, 2238}.
  {label,2237}.
    {line,[{location,"bs_match_r23_SUITE.erl",175}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-size_shadow_2/1-fun-1-'},2}.
  {label,2238}.
    {test_heap,3,2}.
    {put_tuple2,{x,2},{list,[{x,0},{x,0}]}}.
    {test,bs_start_match3,{f,2239},3,[{x,0}],{x,0}}.
    {bs_get_position,{x,0},{x,3},3}.
    {test,bs_get_integer2,
          {f,2239},
          4,
          [{x,0},
           {x,1},
           1,
           {field_flags,[{anno,[176,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_integer2,
          {f,2239},
          5,
          [{x,0},
           {x,4},
           1,
           {field_flags,[{anno,[176,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_test_tail2,{f,2239},[{x,0},0]}.
    {bs_set_position,{x,0},{x,3}}.
    {test,bs_get_integer2,
          {f,2239},
          6,
          [{x,0},
           {x,1},
           1,
           {field_flags,[{anno,[176,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_get_integer2,
          {f,2239},
          6,
          [{x,0},
           {x,1},
           1,
           {field_flags,[{anno,[176,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,2239},[{x,0},0]}.
    {test,is_eq_exact,{f,2239},[{x,4},{x,1}]}.
    {test,is_eq_exact,{f,2239},[{x,5},{x,3}]}.
    {move,{x,3},{x,0}}.
    return.
  {label,2239}.
    {move,{x,2},{x,0}}.
    {call_only,1,{f,2283}}. % '-size_shadow_2/1-inlined-2-'/1


{function, '-size_shadow_2/1-fun-3-', 2, 2241}.
  {label,2240}.
    {line,[{location,"bs_match_r23_SUITE.erl",172}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-size_shadow_2/1-fun-3-'},2}.
  {label,2241}.
    {test_heap,2,2}.
    {put_list,{x,0},nil,{x,2}}.
    {test,is_nonempty_list,{f,2242},[{x,2}]}.
    {test,bs_start_match3,{f,2242},3,[{x,0}],{x,0}}.
    {test,bs_get_integer2,
          {f,2242},
          3,
          [{x,0},
           {x,1},
           1,
           {field_flags,[{anno,[173,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_get_integer2,
          {f,2242},
          3,
          [{x,0},
           {x,1},
           1,
           {field_flags,[{anno,[173,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_test_tail2,{f,2242},[{x,0},0]}.
    {move,{x,1},{x,0}}.
    return.
  {label,2242}.
    {move,{x,2},{x,0}}.
    {call_only,1,{f,2281}}. % '-size_shadow_2/1-inlined-1-'/1


{function, '-size_shadow_2/1-fun-4-', 2, 2244}.
  {label,2243}.
    {line,[{location,"bs_match_r23_SUITE.erl",171}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-size_shadow_2/1-fun-4-'},2}.
  {label,2244}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,2246},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_get_integer2,
          {f,2245},
          3,
          [{x,2},
           {x,1},
           1,
           {field_flags,[{anno,[171,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_get_integer2,
          {f,2245},
          3,
          [{x,2},
           {x,1},
           1,
           {field_flags,[{anno,[171,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_test_tail2,{f,2245},[{x,2},0]}.
    {move,{x,1},{x,0}}.
    return.
  {label,2245}.
    {bs_set_position,{x,2},{x,0}}.
    {bs_get_tail,{x,2},{x,0},3}.
    {call_only,1,{f,2279}}. % '-size_shadow_2/1-inlined-0-'/1
  {label,2246}.
    {call_only,1,{f,2279}}. % '-size_shadow_2/1-inlined-0-'/1


{function, '-size_shadow_1/0-fun-1-', 1, 2248}.
  {label,2247}.
    {line,[{location,"bs_match_r23_SUITE.erl",162}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-size_shadow_1/0-fun-1-'},1}.
  {label,2248}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,2250},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_integer2,
          {f,2249},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[163,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {allocate,3,3}.
    {move,{x,0},{y,0}}.
    {move,{x,2},{y,1}}.
    {move,{x,1},{y,2}}.
    {make_fun2,{f,2252},0,0,0}.
    {bs_set_position,{y,2},{y,0}}.
    {bs_get_tail,{y,2},{x,1},1}.
    {put_map_assoc,{f,0},
                   {literal,#{}},
                   {x,1},
                   2,
                   {list,[{atom,key1},{x,1},{atom,key2},{x,1}]}}.
    {test_heap,5,2}.
    {put_list,{y,1},nil,{x,2}}.
    {put_tuple2,{x,1},{list,[{x,1},{y,1}]}}.
    {swap,{x,0},{x,2}}.
    {line,[{location,"bs_match_r23_SUITE.erl",166}]}.
    {call_fun,2}.
    {deallocate,3}.
    return.
  {label,2249}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_r23_SUITE.erl",163}]}.
    {badmatch,{x,0}}.
  {label,2250}.
    {badmatch,{x,0}}.


{function, '-size_shadow_1/0-fun-0-', 2, 2252}.
  {label,2251}.
    {line,[{location,"bs_match_r23_SUITE.erl",164}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-size_shadow_1/0-fun-0-'},2}.
  {label,2252}.
    {test,is_nonempty_list,{f,2251},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,3}}.
    {test,is_nil,{f,2251},[{x,3}]}.
    {test,is_tuple,{f,2251},[{x,1}]}.
    {test,test_arity,{f,2251},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_map,{f,2251},[{x,3}]}.
    {get_map_elements,{f,2251},
                      {x,3},
                      {list,[{atom,key2},{x,3},{atom,key1},{x,4}]}}.
    {test,bs_start_match3,{f,2251},5,[{x,3}],{x,3}}.
    {test,bs_get_integer2,
          {f,2251},
          5,
          [{x,3},
           {integer,8},
           1,
           {field_flags,[{anno,[164,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_get_integer2,
          {f,2251},
          6,
          [{x,3},
           {x,5},
           1,
           {field_flags,[{anno,[164,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,bs_test_tail2,{f,2251},[{x,3},0]}.
    {test,bs_start_match3,{f,2251},7,[{x,4}],{x,3}}.
    {test,bs_get_integer2,
          {f,2251},
          7,
          [{x,3},
           {integer,8},
           1,
           {field_flags,[{anno,[164,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_integer2,
          {f,2251},
          7,
          [{x,3},
           {x,4},
           1,
           {field_flags,[{anno,[164,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,7}}.
    {test,bs_test_tail2,{f,2251},[{x,3},0]}.
    {test,is_eq_exact,{f,2251},[{x,4},{x,2}]}.
    {test,is_eq_exact,{f,2251},[{x,5},{x,2}]}.
    {test,is_eq_exact,{f,2251},[{x,6},{x,7}]}.
    {get_tuple_element,{x,1},1,{x,3}}.
    {test,is_eq_exact,{f,2251},[{x,3},{x,2}]}.
    {move,{x,7},{x,0}}.
    return.


{function, '-size_shadow_1/0-fun-3-', 1, 2254}.
  {label,2253}.
    {line,[{location,"bs_match_r23_SUITE.erl",159}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-size_shadow_1/0-fun-3-'},1}.
  {label,2254}.
    {test_heap,4,1}.
    {put_list,{x,0},nil,{x,1}}.
    {put_list,{x,0},{x,1},{x,2}}.
    {test,is_nonempty_list,{f,2255},[{x,2}]}.
    {test,is_nonempty_list,{f,2255},[{x,1}]}.
    {test,bs_start_match3,{f,2255},3,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,2255},
          3,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[160,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,2255},
          4,
          [{x,1},
           {x,3},
           1,
           {field_flags,[{anno,[160,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,2255},[{x,1},0]}.
    {test,bs_start_match3,{f,2255},5,[{x,0}],{x,0}}.
    {test,bs_get_integer2,
          {f,2255},
          5,
          [{x,0},
           {integer,8},
           1,
           {field_flags,[{anno,[160,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_get_integer2,
          {f,2255},
          5,
          [{x,0},
           {x,1},
           1,
           {field_flags,[{anno,[160,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_test_tail2,{f,2255},[{x,0},0]}.
    {test,is_eq_exact,{f,2255},[{x,3},{x,1}]}.
    {test,is_eq_exact,{f,2255},[{x,4},{x,5}]}.
    {move,{x,5},{x,0}}.
    return.
  {label,2255}.
    {move,{x,2},{x,0}}.
    {call_only,1,{f,2277}}. % '-size_shadow_1/0-inlined-2-'/1


{function, '-size_shadow_1/0-fun-5-', 1, 2257}.
  {label,2256}.
    {line,[{location,"bs_match_r23_SUITE.erl",156}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-size_shadow_1/0-fun-5-'},1}.
  {label,2257}.
    {test_heap,2,1}.
    {put_list,{x,0},nil,{x,1}}.
    {test,is_nonempty_list,{f,2258},[{x,1}]}.
    {test,bs_start_match3,{f,2258},2,[{x,0}],{x,0}}.
    {test,bs_get_integer2,
          {f,2258},
          2,
          [{x,0},
           {integer,8},
           1,
           {field_flags,[{anno,[157,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,2258},
          3,
          [{x,0},
           {x,2},
           1,
           {field_flags,[{anno,[157,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,2258},[{x,0},0]}.
    {move,{x,2},{x,0}}.
    return.
  {label,2258}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,2275}}. % '-size_shadow_1/0-inlined-1-'/1


{function, '-size_shadow_1/0-fun-6-', 1, 2260}.
  {label,2259}.
    {line,[{location,"bs_match_r23_SUITE.erl",155}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-size_shadow_1/0-fun-6-'},1}.
  {label,2260}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,2259},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_integer2,
          {f,2261},
          2,
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[155,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,2261},
          3,
          [{x,1},
           {x,2},
           1,
           {field_flags,[{anno,[155,{file,"bs_match_r23_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,2261},[{x,1},0]}.
    {move,{x,2},{x,0}}.
    return.
  {label,2261}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,2259}}.


{function, '-mos_int_fun/1-inlined-0-', 1, 2263}.
  {label,2262}.
    {line,[{location,"bs_match_r23_SUITE.erl",1708}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-mos_int_fun/1-inlined-0-'},1}.
  {label,2263}.
    {jump,{f,2262}}.


{function, '-null_fields/1-inlined-0-', 1, 2265}.
  {label,2264}.
    {line,[{location,"bs_match_r23_SUITE.erl",295}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-null_fields/1-inlined-0-'},1}.
  {label,2265}.
    {jump,{f,2264}}.


{function, '-null_fields/1-inlined-1-', 1, 2267}.
  {label,2266}.
    {line,[{location,"bs_match_r23_SUITE.erl",301}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-null_fields/1-inlined-1-'},1}.
  {label,2267}.
    {jump,{f,2266}}.


{function, '-otp_5269/1-inlined-0-', 1, 2269}.
  {label,2268}.
    {line,[{location,"bs_match_r23_SUITE.erl",257}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-otp_5269/1-inlined-0-'},1}.
  {label,2269}.
    {jump,{f,2268}}.


{function, '-otp_5269/1-inlined-1-', 1, 2271}.
  {label,2270}.
    {line,[{location,"bs_match_r23_SUITE.erl",263}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-otp_5269/1-inlined-1-'},1}.
  {label,2271}.
    {jump,{f,2270}}.


{function, '-otp_5269/1-inlined-6-', 1, 2273}.
  {label,2272}.
    {line,[{location,"bs_match_r23_SUITE.erl",283}]}.
    {func_info,{atom,bs_match_r23_SUITE},{atom,'-otp_5269/1-inlined-6-'},1}.
  {label,2273}.
    {jump,{f,2272}}.


{function, '-size_shadow_1/0-inlined-1-', 1, 2275}.
  {label,2274}.
    {line,[{location,"bs_match_r23_SUITE.erl",157}]}.
    {func_info,{atom,bs_match_r23_SUITE},
               {atom,'-size_shadow_1/0-inlined-1-'},
               1}.
  {label,2275}.
    {jump,{f,2274}}.


{function, '-size_shadow_1/0-inlined-2-', 1, 2277}.
  {label,2276}.
    {line,[{location,"bs_match_r23_SUITE.erl",160}]}.
    {func_info,{atom,bs_match_r23_SUITE},
               {atom,'-size_shadow_1/0-inlined-2-'},
               1}.
  {label,2277}.
    {jump,{f,2276}}.


{function, '-size_shadow_2/1-inlined-0-', 1, 2279}.
  {label,2278}.
    {line,[{location,"bs_match_r23_SUITE.erl",171}]}.
    {func_info,{atom,bs_match_r23_SUITE},
               {atom,'-size_shadow_2/1-inlined-0-'},
               1}.
  {label,2279}.
    {jump,{f,2278}}.


{function, '-size_shadow_2/1-inlined-1-', 1, 2281}.
  {label,2280}.
    {line,[{location,"bs_match_r23_SUITE.erl",173}]}.
    {func_info,{atom,bs_match_r23_SUITE},
               {atom,'-size_shadow_2/1-inlined-1-'},
               1}.
  {label,2281}.
    {jump,{f,2280}}.


{function, '-size_shadow_2/1-inlined-2-', 1, 2283}.
  {label,2282}.
    {line,[{location,"bs_match_r23_SUITE.erl",176}]}.
    {func_info,{atom,bs_match_r23_SUITE},
               {atom,'-size_shadow_2/1-inlined-2-'},
               1}.
  {label,2283}.
    {jump,{f,2282}}.


{function, '-size_shadow_3/0-inlined-1-', 1, 2285}.
  {label,2284}.
    {line,[{location,"bs_match_r23_SUITE.erl",184}]}.
    {func_info,{atom,bs_match_r23_SUITE},
               {atom,'-size_shadow_3/0-inlined-1-'},
               1}.
  {label,2285}.
    {jump,{f,2284}}.


{function, '-size_shadow_3/0-inlined-2-', 1, 2287}.
  {label,2286}.
    {line,[{location,"bs_match_r23_SUITE.erl",187}]}.
    {func_info,{atom,bs_match_r23_SUITE},
               {atom,'-size_shadow_3/0-inlined-2-'},
               1}.
  {label,2287}.
    {jump,{f,2286}}.


{function, '-size_shadow_5/2-inlined-0-', 3, 2289}.
  {label,2288}.
    {line,[{location,"bs_match_r23_SUITE.erl",210}]}.
    {func_info,{atom,bs_match_r23_SUITE},
               {atom,'-size_shadow_5/2-inlined-0-'},
               3}.
  {label,2289}.
    {jump,{f,2288}}.


{function, '-size_shadow_6/2-inlined-0-', 3, 2291}.
  {label,2290}.
    {line,[{location,"bs_match_r23_SUITE.erl",213}]}.
    {func_info,{atom,bs_match_r23_SUITE},
               {atom,'-size_shadow_6/2-inlined-0-'},
               3}.
  {label,2291}.
    {jump,{f,2290}}.
