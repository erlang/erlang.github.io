{module, bs_match_r25_SUITE}.  %% version = 0

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

{labels, 1959}.


{function, suite, 0, 2}.
  {label,1}.
    {line,[{location,"bs_match_r25_SUITE.erl",65}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,suite},0}.
  {label,2}.
    {move,{literal,[{ct_hooks,[ts_install_cth]},{timetrap,{minutes,1}}]},
          {x,0}}.
    return.


{function, all, 0, 4}.
  {label,3}.
    {line,[{location,"bs_match_r25_SUITE.erl",69}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,all},0}.
  {label,4}.
    {move,{literal,[{group,p}]},{x,0}}.
    return.


{function, groups, 0, 6}.
  {label,5}.
    {line,[{location,"bs_match_r25_SUITE.erl",72}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,groups},0}.
  {label,6}.
    {allocate,0,0}.
    {line,[{location,"bs_match_r25_SUITE.erl",73}]}.
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
                                 gh_6410,bs_match,binary_aliases,gh_6923]}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {deallocate,0}.
    return.


{function, init_per_suite, 1, 8}.
  {label,7}.
    {line,[{location,"bs_match_r25_SUITE.erl",101}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,init_per_suite},1}.
  {label,8}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{atom,bs_match_r25_SUITE},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",102}]}.
    {call_ext,1,{extfunc,test_lib,recompile,1}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, end_per_suite, 1, 10}.
  {label,9}.
    {line,[{location,"bs_match_r25_SUITE.erl",105}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,end_per_suite},1}.
  {label,10}.
    {move,{atom,ok},{x,0}}.
    return.


{function, init_per_group, 2, 12}.
  {label,11}.
    {line,[{location,"bs_match_r25_SUITE.erl",108}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,init_per_group},2}.
  {label,12}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_group, 2, 14}.
  {label,13}.
    {line,[{location,"bs_match_r25_SUITE.erl",111}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,end_per_group},2}.
  {label,14}.
    {move,{x,1},{x,0}}.
    return.


{function, init_per_testcase, 2, 16}.
  {label,15}.
    {line,[{location,"bs_match_r25_SUITE.erl",115}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,init_per_testcase},2}.
  {label,16}.
    {test,is_atom,{f,15},[{x,0}]}.
    {test,is_list,{f,15},[{x,1}]}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_testcase, 2, 18}.
  {label,17}.
    {line,[{location,"bs_match_r25_SUITE.erl",118}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,end_per_testcase},2}.
  {label,18}.
    {test,is_atom,{f,17},[{x,0}]}.
    {test,is_list,{f,17},[{x,1}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, verify_highest_opcode, 1, 20}.
  {label,19}.
    {line,[{location,"bs_match_r25_SUITE.erl",121}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,verify_highest_opcode},1}.
  {label,20}.
    {allocate,0,0}.
    {move,{atom,bs_match_r25_SUITE},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",124}]}.
    {call_ext,1,{extfunc,code,which,1}}.
    {call_ext,1,{extfunc,file,read_file,1}}.
    {test,is_tagged_tuple,{f,23},[{x,0},2,{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",125}]}.
    {call_ext,1,{extfunc,test_lib,highest_opcode,1}}.
    {test,is_lt,{f,21},[{integer,180},{x,0}]}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,too_high_opcode_for_21},{x,0}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",129}]}.
    {call_ext,1,{extfunc,ct,fail,1}}.
  {label,21}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",133}]}.
    {call,1,{f,1684}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{integer,10},{x,0}}.
    {call_ext,2,{extfunc,erlang,min,2}}.
    {move,{x,0},{x,1}}.
    {move,{integer,0},{x,0}}.
    {call_ext,2,{extfunc,erlang,max,2}}.
    {test,is_eq_exact,{f,22},[{tr,{x,0},{t_number,{0,10}}},{integer,10}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,22}.
    {badmatch,{x,0}}.
  {label,23}.
    {line,[{location,"bs_match_r25_SUITE.erl",124}]}.
    {badmatch,{x,0}}.


{function, size_shadow, 1, 25}.
  {label,24}.
    {line,[{location,"bs_match_r25_SUITE.erl",139}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,size_shadow},1}.
  {label,25}.
    {test,is_list,{f,24},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",141}]}.
    {call,0,{f,36}}. % size_shadow_1/0
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[no]},
                                   none,
                                   {t_integer,{0,'+inf'}},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,34},
          [{tr,{x,0},
               {t_union,{t_atom,[no]},none,{t_integer,{0,'+inf'}},none,none}},
           {integer,7}]}.
    {move,{integer,8},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",142}]}.
    {call,1,{f,38}}. % size_shadow_2/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[no]},
                                   none,
                                   {t_integer,{0,'+inf'}},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,33},
          [{tr,{x,0},
               {t_union,{t_atom,[no]},none,{t_integer,{0,'+inf'}},none,none}},
           {integer,7}]}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",143}]}.
    {call,0,{f,40}}. % size_shadow_3/0
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[no]},
                                   none,
                                   {t_integer,{0,'+inf'}},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,32},
          [{tr,{x,0},
               {t_union,{t_atom,[no]},none,{t_integer,{0,'+inf'}},none,none}},
           {integer,7}]}.
    {move,{integer,8},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",144}]}.
    {call,1,{f,42}}. % size_shadow_4/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[no]},
                                   none,
                                   {t_integer,{0,'+inf'}},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,31},
          [{tr,{x,0},
               {t_union,{t_atom,[no]},none,{t_integer,{0,'+inf'}},none,none}},
           {atom,no}]}.
    {move,{integer,12},{x,1}}.
    {move,{literal,{any,term,goes}},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",147}]}.
    {call,2,{f,44}}. % size_shadow_5/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_fun,3,
                     {'-size_shadow_5/2-fun-0-',5},
                     {t_tuple,4,true,
                         #{1 => {t_integer,{0,8191}},
                           2 =>
                               {t_tuple,3,true,
                                   #{1 => {t_atom,[any]},
                                     2 => {t_atom,[term]},
                                     3 => {t_atom,[goes]}}}}}}}]}}.
    {move,{atom,whatever},{x,2}}.
    {move,{integer,-175},{x,1}}.
    {move,{x,0},{x,3}}.
    {move,{literal,<<161,1:4>>},{x,0}}.
    {call_fun2,
        {f,1890},
        3,
        {tr,{x,3},
            {t_fun,3,
                {'-size_shadow_5/2-fun-0-',5},
                {t_tuple,4,true,
                    #{1 => {t_integer,{0,8191}},
                      2 =>
                          {t_tuple,3,true,
                              #{1 => {t_atom,[any]},
                                2 => {t_atom,[term]},
                                3 => {t_atom,[goes]}}}}}}}}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,4,true,
                     #{1 => {t_integer,{0,8191}},
                       2 =>
                           {t_tuple,3,true,
                               #{1 => {t_atom,[any]},
                                 2 => {t_atom,[term]},
                                 3 => {t_atom,[goes]}}}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,30},[{tr,{x,1},{t_integer,{0,8191}}},{integer,2577}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,{f,30},[{x,1},{integer,-175}]}.
    {get_tuple_element,{x,0},3,{x,1}}.
    {test,is_eq_exact,{f,30},[{x,1},{atom,whatever}]}.
    {move,{integer,13},{x,1}}.
    {move,{literal,{any,term,goes}},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",149}]}.
    {call,2,{f,46}}. % size_shadow_6/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_fun,3,
                     {'-size_shadow_6/2-fun-0-',5},
                     {t_tuple,4,true,
                         #{1 => {t_integer,{0,8191}},
                           2 =>
                               {t_tuple,3,true,
                                   #{1 => {t_atom,[any]},
                                     2 => {t_atom,[term]},
                                     3 => {t_atom,[goes]}}}}}}}]}}.
    {move,{atom,whatever},{x,2}}.
    {move,{literal,<<243,1:5>>},{x,1}}.
    {move,{x,0},{x,3}}.
    {move,{integer,42},{x,0}}.
    {call_fun2,
        {f,1887},
        3,
        {tr,{x,3},
            {t_fun,3,
                {'-size_shadow_6/2-fun-0-',5},
                {t_tuple,4,true,
                    #{1 => {t_integer,{0,8191}},
                      2 =>
                          {t_tuple,3,true,
                              #{1 => {t_atom,[any]},
                                2 => {t_atom,[term]},
                                3 => {t_atom,[goes]}}}}}}}}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,4,true,
                     #{1 => {t_integer,{0,8191}},
                       2 =>
                           {t_tuple,3,true,
                               #{1 => {t_atom,[any]},
                                 2 => {t_atom,[term]},
                                 3 => {t_atom,[goes]}}}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,29},[{tr,{x,1},{t_integer,{0,8191}}},{integer,7777}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,{f,29},[{x,1},{integer,42}]}.
    {get_tuple_element,{x,0},3,{x,1}}.
    {test,is_eq_exact,{f,29},[{x,1},{atom,whatever}]}.
    {move,{literal,<<0,1,45>>},{x,1}}.
    {move,{literal,{int,1}},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",150}]}.
    {call,2,{f,50}}. % size_shadow_7/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_bitstring,8,false},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
          {f,28},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_bitstring,8,false},
                          2 => {t_bitstring,8,false}}}},
           {literal,{<<"-">>,<<>>}}]}.
    {'catch',{y,0},{f,26}}.
    {move,{literal,<<0,1,45>>},{x,1}}.
    {move,{literal,{int,42}},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",152}]}.
    {call,2,{f,50}}. % size_shadow_7/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_bitstring,8,false},
                                     2 => {t_bitstring,8,false}}}}]}}.
  {label,26}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,27},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,27},[{x,1},2,{atom,function_clause}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,27}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",151}]}.
    {badmatch,{x,0}}.
  {label,28}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",150}]}.
    {badmatch,{x,0}}.
  {label,29}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",148}]}.
    {badmatch,{x,0}}.
  {label,30}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",146}]}.
    {badmatch,{x,0}}.
  {label,31}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",144}]}.
    {badmatch,{x,0}}.
  {label,32}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",143}]}.
    {badmatch,{x,0}}.
  {label,33}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",142}]}.
    {badmatch,{x,0}}.
  {label,34}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",141}]}.
    {badmatch,{x,0}}.


{function, size_shadow_1, 0, 36}.
  {label,35}.
    {line,[{location,"bs_match_r25_SUITE.erl",155}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,size_shadow_1},0}.
  {label,36}.
    {test_heap,{alloc,[{words,8},{floats,0},{funs,4}]},0}.
    {make_fun3,{f,1930},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {make_fun3,{f,1927},0,0,{x,1},{list,[]}}.
    {'%',{var_info,{x,1},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {make_fun3,{f,1924},0,0,{x,2},{list,[]}}.
    {'%',{var_info,{x,2},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {make_fun3,{f,1919},0,0,{x,3},{list,[]}}.
    {'%',{var_info,{x,3},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {put_list,{x,3},nil,{x,3}}.
    {put_list,{x,2},{x,3},{x,2}}.
    {put_list,{x,1},{x,2},{x,1}}.
    {put_list,{x,0},{x,1},{x,0}}.
    {move,{literal,<<16,0,7>>},{x,1}}.
    {call_only,2,{f,52}}. % size_shadow_apply/2


{function, size_shadow_2, 1, 38}.
  {label,37}.
    {line,[{location,"bs_match_r25_SUITE.erl",172}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,size_shadow_2},1}.
  {label,38}.
    {'%',{var_info,{x,0},[{type,{t_integer,{8,8}}}]}}.
    {test_heap,{alloc,[{words,9},{floats,0},{funs,3}]},0}.
    {make_fun3,{f,1916},0,0,{x,0},{list,[{integer,8}]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {make_fun3,{f,1913},0,0,{x,1},{list,[{integer,8}]}}.
    {'%',{var_info,{x,1},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {make_fun3,{f,1910},0,0,{x,2},{list,[{integer,8}]}}.
    {'%',{var_info,{x,2},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {put_list,{x,2},nil,{x,2}}.
    {put_list,{x,1},{x,2},{x,1}}.
    {put_list,{x,0},{x,1},{x,0}}.
    {move,{literal,<<16,0,7>>},{x,1}}.
    {call_only,2,{f,52}}. % size_shadow_apply/2


{function, size_shadow_3, 0, 40}.
  {label,39}.
    {line,[{location,"bs_match_r25_SUITE.erl",182}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,size_shadow_3},0}.
  {label,40}.
    {test_heap,{alloc,[{words,6},{floats,0},{funs,3}]},0}.
    {make_fun3,{f,1908},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {make_fun3,{f,1905},0,0,{x,1},{list,[]}}.
    {'%',{var_info,{x,1},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {make_fun3,{f,1902},0,0,{x,2},{list,[]}}.
    {'%',{var_info,{x,2},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {put_list,{x,2},nil,{x,2}}.
    {put_list,{x,1},{x,2},{x,1}}.
    {put_list,{x,0},{x,1},{x,0}}.
    {move,{literal,<<16,0,7,0,16>>},{x,1}}.
    {call_only,2,{f,52}}. % size_shadow_apply/2


{function, size_shadow_4, 1, 42}.
  {label,41}.
    {line,[{location,"bs_match_r25_SUITE.erl",193}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,size_shadow_4},1}.
  {label,42}.
    {'%',{var_info,{x,0},[{type,{t_integer,{8,8}}}]}}.
    {test_heap,{alloc,[{words,9},{floats,0},{funs,3}]},0}.
    {make_fun3,{f,1899},0,0,{x,0},{list,[{integer,8}]}}.
    {'%',
        {var_info,
            {x,0},
            [{fun_type,
                 {t_union,
                     {t_atom,[no]},
                     none,
                     {t_integer,{0,'+inf'}},
                     none,none}}]}}.
    {make_fun3,{f,1896},0,0,{x,1},{list,[{integer,8}]}}.
    {'%',
        {var_info,
            {x,1},
            [{fun_type,
                 {t_union,
                     {t_atom,[no]},
                     none,
                     {t_integer,{0,'+inf'}},
                     none,none}}]}}.
    {make_fun3,{f,1893},0,0,{x,2},{list,[{integer,8}]}}.
    {'%',
        {var_info,
            {x,2},
            [{fun_type,
                 {t_union,
                     {t_atom,[no]},
                     none,
                     {t_integer,{0,'+inf'}},
                     none,none}}]}}.
    {put_list,{x,2},nil,{x,2}}.
    {put_list,{x,1},{x,2},{x,1}}.
    {put_list,{x,0},{x,1},{x,0}}.
    {move,{literal,<<16,0,7,0,15>>},{x,1}}.
    {call_only,2,{f,52}}. % size_shadow_apply/2


{function, size_shadow_5, 2, 44}.
  {label,43}.
    {line,[{location,"bs_match_r25_SUITE.erl",211}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,size_shadow_5},2}.
  {label,44}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_atom,[any]},
                                     2 => {t_atom,[term]},
                                     3 => {t_atom,[goes]}}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{12,12}}}]}}.
    {test_heap,{alloc,[{words,2},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1890},
               0,0,
               {x,0},
               {list,[{literal,{any,term,goes}},{integer,12}]}}.
    {'%',
        {var_info,
            {x,0},
            [{fun_type,
                 {t_tuple,4,true,
                     #{1 => {t_integer,{0,8191}},
                       2 =>
                           {t_tuple,3,true,
                               #{1 => {t_atom,[any]},
                                 2 => {t_atom,[term]},
                                 3 => {t_atom,[goes]}}}}}}]}}.
    return.


{function, size_shadow_6, 2, 46}.
  {label,45}.
    {line,[{location,"bs_match_r25_SUITE.erl",214}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,size_shadow_6},2}.
  {label,46}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_atom,[any]},
                                     2 => {t_atom,[term]},
                                     3 => {t_atom,[goes]}}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{13,13}}}]}}.
    {test_heap,{alloc,[{words,2},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1887},
               0,0,
               {x,0},
               {list,[{literal,{any,term,goes}},{integer,13}]}}.
    {'%',
        {var_info,
            {x,0},
            [{fun_type,
                 {t_tuple,4,true,
                     #{1 => {t_integer,{0,8191}},
                       2 =>
                           {t_tuple,3,true,
                               #{1 => {t_atom,[any]},
                                 2 => {t_atom,[term]},
                                 3 => {t_atom,[goes]}}}}}}]}}.
    return.


{function, fum, 4, 48}.
  {label,47}.
    {line,[{location,"bs_match_r25_SUITE.erl",217}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,fum},4}.
  {label,48}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,8191}}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_atom,[any]},
                                     2 => {t_atom,[term]},
                                     3 => {t_atom,[goes]}}}}]}}.
    {test_heap,5,4}.
    {put_tuple2,{x,0},{list,[{x,0},{literal,{any,term,goes}},{x,2},{x,3}]}}.
    return.


{function, size_shadow_7, 2, 50}.
  {label,49}.
    {line,[{location,"bs_match_r25_SUITE.erl",220}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,size_shadow_7},2}.
  {label,50}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[int]},
                                     2 => {t_integer,{1,42}}}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,2}}.
    {test,bs_get_integer2,
          {f,49},
          3,
          [{tr,{x,2},{t_bs_context,8}},
           {integer,16},
           1,
           {field_flags,[{anno,[220,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_tail,{x,2},{x,2},4}.
    {bs_start_match4,{atom,no_fail},4,{x,2},{x,2}}.
    {test,bs_get_binary2,
          {f,49},
          4,
          [{tr,{x,2},{t_bs_context,8}},
           {tr,{x,3},{t_integer,{0,65535}}},
           8,
           {field_flags,[{anno,[220,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {bs_get_tail,{x,2},{x,2},5}.
    {get_tuple_element,{x,0},1,{x,5}}.
    {test,is_eq_exact,
          {f,49},
          [{tr,{x,3},{t_integer,{0,65535}}},{tr,{x,5},{t_integer,{1,42}}}]}.
    {test_heap,3,5}.
    {put_tuple2,{x,0},{list,[{x,4},{x,2}]}}.
    return.


{function, size_shadow_apply, 2, 52}.
  {label,51}.
    {line,[{location,"bs_match_r25_SUITE.erl",223}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,size_shadow_apply},2}.
  {label,52}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_cons,
                     {t_fun,1,any,
                         {t_union,
                             {t_atom,[no]},
                             none,
                             {t_integer,{0,'+inf'}},
                             none,none}},
                     nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {allocate,2,2}.
    {move,{x,1},{y,1}}.
    {get_list,{x,0},{x,0},{y,0}}.
    {swap,{x,0},{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",224}]}.
    {call_fun2,{atom,safe},
               1,
               {tr,{x,1},
                   {t_fun,1,any,
                          {t_union,{t_atom,[no]},
                                   none,
                                   {t_integer,{0,'+inf'}},
                                   none,none}}}}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[no]},
                                   none,
                                   {t_integer,{0,'+inf'}},
                                   none,none}}]}}.
    {move,{y,1},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{y,0},{x,0}}.
    {call_last,3,{f,54},2}. % size_shadow_apply/3


{function, size_shadow_apply, 3, 54}.
  {label,53}.
    {line,[{location,"bs_match_r25_SUITE.erl",226}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,size_shadow_apply},3}.
  {label,54}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_fun,1,any,
                         {t_union,
                             {t_atom,[no]},
                             none,
                             {t_integer,{0,'+inf'}},
                             none,none}},
                     nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,2},
                   [{type,{t_union,{t_atom,[no]},
                                   none,
                                   {t_integer,{0,'+inf'}},
                                   none,none}}]}}.
    {test,is_nonempty_list,{f,55},[{x,0}]}.
    {allocate,3,3}.
    {move,{x,2},{y,1}}.
    {move,{x,1},{y,2}}.
    {get_list,{x,0},{x,0},{y,0}}.
    {swap,{x,0},{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",227}]}.
    {call_fun2,{atom,safe},
               1,
               {tr,{x,1},
                   {t_fun,1,any,
                          {t_union,{t_atom,[no]},
                                   none,
                                   {t_integer,{0,'+inf'}},
                                   none,none}}}}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[no]},
                                   none,
                                   {t_integer,{0,'+inf'}},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,56},
          [{tr,{x,0},
               {t_union,{t_atom,[no]},none,{t_integer,{0,'+inf'}},none,none}},
           {tr,{y,1},
               {t_union,{t_atom,[no]},
                        none,
                        {t_integer,{0,'+inf'}},
                        none,none}}]}.
    {move,{y,1},{x,2}}.
    {move,{y,2},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,3,{f,54},3}. % size_shadow_apply/3
  {label,55}.
    {move,{x,2},{x,0}}.
    return.
  {label,56}.
    {badmatch,{x,0}}.


{function, int_float, 1, 58}.
  {label,57}.
    {line,[{location,"bs_match_r25_SUITE.erl",232}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,int_float},1}.
  {label,58}.
    {test,is_list,{f,57},[{x,0}]}.
    {move,{literal,<<64,249,45,208,0,0,0,0>>},{x,0}}.
    {bs_start_match4,{atom,no_fail},0,{x,0},{x,0}}.
    {test,bs_get_float2,
          {f,65},
          1,
          [{tr,{x,0},{t_bs_context,64}},
           {integer,64},
           1,
           {field_flags,[{anno,[234,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,is_eq_exact,{f,65},[{tr,{x,1},{t_float,any}},{float,103133.0}]}.
    {test,bs_test_tail2,{f,65},[{x,0},0]}.
    {move,{literal,<<64,249,45,208,0,0,0,0>>},{x,0}}.
    {bs_start_match4,{atom,no_fail},0,{x,0},{x,0}}.
    {test,bs_get_float2,
          {f,64},
          1,
          [{tr,{x,0},{t_bs_context,64}},
           {integer,64},
           1,
           {field_flags,[{anno,[235,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,is_eq_exact,{f,64},[{tr,{x,1},{t_float,any}},{float,103133.0}]}.
    {test,bs_test_tail2,{f,64},[{x,0},0]}.
    {line,[{location,"bs_match_r25_SUITE.erl",238}]}.
    {bs_create_bin,{f,0},
                   0,0,64,
                   {x,0},
                   {list,[{atom,float},
                          1,1,
                          {literal,[native]},
                          {integer,42},
                          {integer,64}]}}.
    {allocate,0,1}.
    {call,1,{f,1684}}. % id/1
    {test,bs_start_match3,{f,63},1,[{x,0}],{x,1}}.
    {test,bs_get_float2,
          {f,63},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[239,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,native]}],
          {x,2}}.
    {test,is_eq_exact,{f,63},[{tr,{x,2},{t_float,any}},{float,42.0}]}.
    {test,bs_test_tail2,{f,63},[{x,1},0]}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_float2,
          {f,62},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[240,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,native]}],
          {x,2}}.
    {test,is_eq_exact,{f,62},[{tr,{x,2},{t_float,any}},{float,42.0}]}.
    {test,bs_test_tail2,{f,62},[{x,1},0]}.
    {move,{literal,<<64,80,0,0,0,0,0,0>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",243}]}.
    {call,1,{f,1684}}. % id/1
    {test,bs_start_match3,{f,61},1,[{x,0}],{x,1}}.
    {test,bs_get_float2,
          {f,61},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[244,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,61},[{tr,{x,2},{t_float,any}},{float,64.0}]}.
    {test,bs_test_tail2,{f,61},[{x,1},0]}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_float2,
          {f,60},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[245,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,60},[{tr,{x,2},{t_float,any}},{float,64.0}]}.
    {test,bs_test_tail2,{f,60},[{x,1},0]}.
    {move,{atom,default},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",248}]}.
    {call,1,{f,1684}}. % id/1
    {test,is_eq_exact,{f,59},[{x,0},{atom,default}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,59}.
    {case_end,{x,0}}.
  {label,60}.
    {line,[{location,"bs_match_r25_SUITE.erl",245}]}.
    {badmatch,{x,0}}.
  {label,61}.
    {line,[{location,"bs_match_r25_SUITE.erl",244}]}.
    {badmatch,{x,0}}.
  {label,62}.
    {line,[{location,"bs_match_r25_SUITE.erl",240}]}.
    {badmatch,{x,0}}.
  {label,63}.
    {line,[{location,"bs_match_r25_SUITE.erl",239}]}.
    {badmatch,{x,0}}.
  {label,64}.
    {line,[{location,"bs_match_r25_SUITE.erl",235}]}.
    {badmatch,{literal,<<64,249,45,208,0,0,0,0>>}}.
  {label,65}.
    {line,[{location,"bs_match_r25_SUITE.erl",234}]}.
    {badmatch,{literal,<<64,249,45,208,0,0,0,0>>}}.


{function, otp_5269, 1, 67}.
  {label,66}.
    {line,[{location,"bs_match_r25_SUITE.erl",257}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,otp_5269},1}.
  {label,67}.
    {test,is_list,{f,66},[{x,0}]}.
    {allocate_heap,0,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1884},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {move,{integer,7},{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",258}]}.
    {call,2,{f,1259}}. % check/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[ok,tail]},
                     {t_cons,{t_integer,{1,32}},nil},
                     {t_integer,{7,32}},
                     [{{3,{t_integer,{2,2}}},
                       {t_tuple,3,true,
                           #{1 => {t_integer,{2,2}},
                             2 => {t_bitstring,16,false},
                             3 => {t_bitstring,16,false}}}}],
                     none}}]}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1881},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {move,{integer,7},{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",263}]}.
    {call,2,{f,1259}}. % check/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[ok,tail]},
                     {t_cons,{t_integer,{1,32}},nil},
                     {t_integer,{7,32}},
                     [{{3,{t_integer,{2,2}}},
                       {t_tuple,3,true,
                           #{1 => {t_integer,{2,2}},
                             2 => {t_bitstring,16,false},
                             3 => {t_bitstring,16,false}}}}],
                     none}}]}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1878},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_integer,{0,255}}}]}}.
    {move,{integer,32},{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",265}]}.
    {call,2,{f,1259}}. % check/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[ok,tail]},
                     {t_cons,{t_integer,{1,32}},nil},
                     {t_integer,{7,32}},
                     [{{3,{t_integer,{2,2}}},
                       {t_tuple,3,true,
                           #{1 => {t_integer,{2,2}},
                             2 => {t_bitstring,16,false},
                             3 => {t_bitstring,16,false}}}}],
                     none}}]}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1872},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_list,{t_integer,{0,255}},nil}}]}}.
    {move,{literal," "},{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",267}]}.
    {call,2,{f,1259}}. % check/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[ok,tail]},
                     {t_cons,{t_integer,{1,32}},nil},
                     {t_integer,{7,32}},
                     [{{3,{t_integer,{2,2}}},
                       {t_tuple,3,true,
                           #{1 => {t_integer,{2,2}},
                             2 => {t_bitstring,16,false},
                             3 => {t_bitstring,16,false}}}}],
                     none}}]}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1862},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_list,{t_integer,{0,255}},nil}}]}}.
    {move,{literal,[19]},{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",269}]}.
    {call,2,{f,1259}}. % check/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[ok,tail]},
                     {t_cons,{t_integer,{1,32}},nil},
                     {t_integer,{7,32}},
                     [{{3,{t_integer,{2,2}}},
                       {t_tuple,3,true,
                           #{1 => {t_integer,{2,2}},
                             2 => {t_bitstring,16,false},
                             3 => {t_bitstring,16,false}}}}],
                     none}}]}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1860},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_integer,{28,28}}}]}}.
    {move,{integer,28},{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",273}]}.
    {call,2,{f,1259}}. % check/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[ok,tail]},
                     {t_cons,{t_integer,{1,32}},nil},
                     {t_integer,{7,32}},
                     [{{3,{t_integer,{2,2}}},
                       {t_tuple,3,true,
                           #{1 => {t_integer,{2,2}},
                             2 => {t_bitstring,16,false},
                             3 => {t_bitstring,16,false}}}}],
                     none}}]}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1857},0,0,{x,0},{list,[]}}.
    {'%',
        {var_info,
            {x,0},
            [{fun_type,
                 {t_tuple,3,true,
                     #{1 => {t_integer,{0,255}},
                       2 => {t_bitstring,8,false},
                       3 => {t_bitstring,8,false}}}}]}}.
    {move,{literal,{2,<<"AB">>,<<"CD">>}},{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",275}]}.
    {call,2,{f,1259}}. % check/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[ok,tail]},
                     {t_cons,{t_integer,{1,32}},nil},
                     {t_integer,{7,32}},
                     [{{3,{t_integer,{2,2}}},
                       {t_tuple,3,true,
                           #{1 => {t_integer,{2,2}},
                             2 => {t_bitstring,16,false},
                             3 => {t_bitstring,16,false}}}}],
                     none}}]}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1851},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},
                   [{fun_type,{t_list,{t_integer,{0,4294967295}},nil}}]}}.
    {move,{literal,[1,2]},{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",280}]}.
    {call,2,{f,1259}}. % check/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[ok,tail]},
                     {t_cons,{t_integer,{1,32}},nil},
                     {t_integer,{7,32}},
                     [{{3,{t_integer,{2,2}}},
                       {t_tuple,3,true,
                           #{1 => {t_integer,{2,2}},
                             2 => {t_bitstring,16,false},
                             3 => {t_bitstring,16,false}}}}],
                     none}}]}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1848},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[ok]}}]}}.
    {move,{atom,ok},{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",284}]}.
    {call,2,{f,1259}}. % check/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[ok,tail]},
                     {t_cons,{t_integer,{1,32}},nil},
                     {t_integer,{7,32}},
                     [{{3,{t_integer,{2,2}}},
                       {t_tuple,3,true,
                           #{1 => {t_integer,{2,2}},
                             2 => {t_bitstring,16,false},
                             3 => {t_bitstring,16,false}}}}],
                     none}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, null_fields, 1, 69}.
  {label,68}.
    {line,[{location,"bs_match_r25_SUITE.erl",294}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,null_fields},1}.
  {label,69}.
    {test,is_list,{f,68},[{x,0}]}.
    {allocate_heap,0,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1844},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[empty,tail]}}]}}.
    {move,{atom,tail},{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",295}]}.
    {call,2,{f,1259}}. % check/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[ok,tail]},
                     {t_cons,{t_integer,{1,32}},nil},
                     {t_integer,{7,32}},
                     [{{3,{t_integer,{2,2}}},
                       {t_tuple,3,true,
                           #{1 => {t_integer,{2,2}},
                             2 => {t_bitstring,16,false},
                             3 => {t_bitstring,16,false}}}}],
                     none}}]}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1842},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[tail]}}]}}.
    {move,{atom,tail},{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",302}]}.
    {call,2,{f,1259}}. % check/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[ok,tail]},
                     {t_cons,{t_integer,{1,32}},nil},
                     {t_integer,{7,32}},
                     [{{3,{t_integer,{2,2}}},
                       {t_tuple,3,true,
                           #{1 => {t_integer,{2,2}},
                             2 => {t_bitstring,16,false},
                             3 => {t_bitstring,16,false}}}}],
                     none}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, wiger, 1, 71}.
  {label,70}.
    {line,[{location,"bs_match_r25_SUITE.erl",310}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,wiger},1}.
  {label,71}.
    {test,is_list,{f,70},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<3>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",311}]}.
    {call,1,{f,78}}. % wcheck/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[ok1,ok2,ok3]},
                     none,none,
                     [{{2,{t_atom,[error]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[error]},
                             2 => {t_bitstring,8,false}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,76},
          [{tr,{x,0},
               {t_union,{t_atom,[ok1,ok2,ok3]},
                        none,none,
                        [{{2,{t_atom,[error]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[error]},
                                     2 => {t_bitstring,8,false}}}}],
                        none}},
           {atom,ok1}]}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",312}]}.
    {call,1,{f,78}}. % wcheck/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[ok1,ok2,ok3]},
                     none,none,
                     [{{2,{t_atom,[error]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[error]},
                             2 => {t_bitstring,8,false}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,75},
          [{tr,{x,0},
               {t_union,{t_atom,[ok1,ok2,ok3]},
                        none,none,
                        [{{2,{t_atom,[error]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[error]},
                                     2 => {t_bitstring,8,false}}}}],
                        none}},
           {atom,ok2}]}.
    {move,{literal,<<4>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",313}]}.
    {call,1,{f,78}}. % wcheck/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[ok1,ok2,ok3]},
                     none,none,
                     [{{2,{t_atom,[error]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[error]},
                             2 => {t_bitstring,8,false}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,74},
          [{tr,{x,0},
               {t_union,{t_atom,[ok1,ok2,ok3]},
                        none,none,
                        [{{2,{t_atom,[error]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[error]},
                                     2 => {t_bitstring,8,false}}}}],
                        none}},
           {atom,ok3}]}.
    {move,{literal,<<1,2,3,4>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",314}]}.
    {call,1,{f,78}}. % wcheck/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[ok1,ok2,ok3]},
                     none,none,
                     [{{2,{t_atom,[error]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[error]},
                             2 => {t_bitstring,8,false}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,73},
          [{tr,{x,0},
               {t_union,{t_atom,[ok1,ok2,ok3]},
                        none,none,
                        [{{2,{t_atom,[error]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[error]},
                                     2 => {t_bitstring,8,false}}}}],
                        none}},
           {literal,{error,<<1,2,3,4>>}}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",315}]}.
    {call,1,{f,78}}. % wcheck/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[ok1,ok2,ok3]},
                     none,none,
                     [{{2,{t_atom,[error]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[error]},
                             2 => {t_bitstring,8,false}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,72},
          [{tr,{x,0},
               {t_union,{t_atom,[ok1,ok2,ok3]},
                        none,none,
                        [{{2,{t_atom,[error]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[error]},
                                     2 => {t_bitstring,8,false}}}}],
                        none}},
           {literal,{error,<<>>}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,72}.
    {badmatch,{x,0}}.
  {label,73}.
    {line,[{location,"bs_match_r25_SUITE.erl",314}]}.
    {badmatch,{x,0}}.
  {label,74}.
    {line,[{location,"bs_match_r25_SUITE.erl",313}]}.
    {badmatch,{x,0}}.
  {label,75}.
    {line,[{location,"bs_match_r25_SUITE.erl",312}]}.
    {badmatch,{x,0}}.
  {label,76}.
    {line,[{location,"bs_match_r25_SUITE.erl",311}]}.
    {badmatch,{x,0}}.


{function, wcheck, 1, 78}.
  {label,77}.
    {line,[{location,"bs_match_r25_SUITE.erl",318}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,wcheck},1}.
  {label,78}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,81},
          2,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[318,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,79},[{x,1},0]}.
    {test,is_eq_exact,{f,79},[{tr,{x,2},{t_integer,{0,255}}},{integer,3}]}.
    {move,{atom,ok1},{x,0}}.
    return.
  {label,79}.
    {test,bs_test_tail2,{f,80},[{x,1},16]}.
    {move,{atom,ok2},{x,0}}.
    return.
  {label,80}.
    {test,bs_test_tail2,{f,81},[{x,1},0]}.
    {move,{atom,ok3},{x,0}}.
    return.
  {label,81}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,error},{x,0}]}}.
    return.


{function, bin_tail, 1, 83}.
  {label,82}.
    {line,[{location,"bs_match_r25_SUITE.erl",327}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bin_tail},1}.
  {label,83}.
    {test,is_list,{f,82},[{x,0}]}.
    {allocate,7,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3},{y,4},{y,5},{y,6}]}}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",329}]}.
    {call,2,{f,111}}. % bin_tail_c/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,109},[{tr,{x,0},{t_integer,{0,255}}},{integer,97}]}.
    {move,{integer,2},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_r25_SUITE.erl",330}]}.
    {call,2,{f,111}}. % bin_tail_c/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,108},[{tr,{x,0},{t_integer,{0,255}}},{integer,99}]}.
    {move,{integer,4},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_r25_SUITE.erl",331}]}.
    {call,2,{f,111}}. % bin_tail_c/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,107},[{tr,{x,0},{t_integer,{0,255}}},{integer,101}]}.
    {'catch',{y,6},{f,84}}.
    {move,{integer,5},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_r25_SUITE.erl",332}]}.
    {call,2,{f,111}}. % bin_tail_c/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
  {label,84}.
    {catch_end,{y,6}}.
    {test,is_tagged_tuple,{f,106},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,5},{f,85}}.
    {move,{integer,5},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,[13,14]},{location,"bs_match_r25_SUITE.erl",333}]}.
    {call,2,{f,118}}. % bin_tail_c_var/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_bitstring,8,false}}}}]}}.
  {label,85}.
    {catch_end,{y,5}}.
    {test,is_tagged_tuple,{f,105},[{x,0},2,{atom,'EXIT'}]}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,"\v\f"},{location,"bs_match_r25_SUITE.erl",335}]}.
    {call,2,{f,121}}. % bin_tail_d/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,104},[{tr,{x,0},{t_integer,{0,255}}},{integer,97}]}.
    {move,{integer,8},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,"\n"},{location,"bs_match_r25_SUITE.erl",336}]}.
    {call,2,{f,121}}. % bin_tail_d/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,103},[{tr,{x,0},{t_integer,{0,255}}},{integer,98}]}.
    {move,{integer,24},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,"\n"},{location,"bs_match_r25_SUITE.erl",337}]}.
    {call,2,{f,121}}. % bin_tail_d/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,102},[{tr,{x,0},{t_integer,{0,255}}},{integer,100}]}.
    {'catch',{y,4},{f,86}}.
    {move,{integer,1},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,"\n"},{location,"bs_match_r25_SUITE.erl",338}]}.
    {call,2,{f,125}}. % bin_tail_d_dead/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
  {label,86}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,101},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,3},{f,87}}.
    {move,{integer,9},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,"\t\n"},{location,"bs_match_r25_SUITE.erl",339}]}.
    {call,2,{f,125}}. % bin_tail_d_dead/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
  {label,87}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,100},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,2},{f,88}}.
    {move,{integer,40},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_r25_SUITE.erl",340}]}.
    {call,2,{f,125}}. % bin_tail_d_dead/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
  {label,88}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,99},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,1},{f,89}}.
    {move,{integer,1},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r25_SUITE.erl",341}]}.
    {call,2,{f,128}}. % bin_tail_d_var/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_bitstring,8,false}}}}]}}.
  {label,89}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,98},[{x,0},2,{atom,'EXIT'}]}.
    {move,{literal,<<129>>},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r25_SUITE.erl",343}]}.
    {call,1,{f,131}}. % bin_tail_e/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[error,ok]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,97},
          [{tr,{x,0},
               {t_union,{t_atom,[error,ok]},
                        none,none,none,
                        {t_bitstring,8,false}}},
           {atom,ok}]}.
    {move,{literal,<<161,0,0,0,0,0,0,0,42>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",344}]}.
    {call,1,{f,131}}. % bin_tail_e/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[error,ok]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,96},
          [{tr,{x,0},
               {t_union,{t_atom,[error,ok]},
                        none,none,none,
                        {t_bitstring,8,false}}},
           {atom,ok}]}.
    {move,{literal,<<225,0,0,0,0,0,0,0,42>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",345}]}.
    {call,1,{f,131}}. % bin_tail_e/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[error,ok]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,95},
          [{tr,{x,0},
               {t_union,{t_atom,[error,ok]},
                        none,none,none,
                        {t_bitstring,8,false}}},
           {atom,error}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",346}]}.
    {call,1,{f,131}}. % bin_tail_e/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[error,ok]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,94},
          [{tr,{x,0},
               {t_union,{t_atom,[error,ok]},
                        none,none,none,
                        {t_bitstring,8,false}}},
           {atom,error}]}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",348}]}.
    {call_ext,1,{extfunc,erlang,md5,1}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",349}]}.
    {bs_create_bin,{f,0},
                   0,1,8,
                   {x,1},
                   {list,[{atom,append},
                          1,8,nil,
                          {x,0},
                          {atom,all},
                          {atom,string},
                          0,8,nil,
                          {string,<<"abc">>},
                          {integer,3}]}}.
    {move,{x,0},{y,6}}.
    {move,{integer,3},{x,2}}.
    {swap,{x,0},{x,1}}.
    {call,3,{f,142}}. % bin_tail_f/3
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[error]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,93},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,none,none,
                        {t_bitstring,8,false}}},
           {literal,<<"abc">>}]}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",350}]}.
    {bs_create_bin,{f,0},
                   0,0,8,
                   {x,0},
                   {list,[{atom,append},
                          1,8,nil,
                          {y,6},
                          {atom,all},
                          {atom,string},
                          0,8,nil,
                          {string,<<"abc">>},
                          {integer,3}]}}.
    {move,{integer,999},{x,2}}.
    {move,{y,6},{x,1}}.
    {call,3,{f,142}}. % bin_tail_f/3
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[error]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,92},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,none,none,
                        {t_bitstring,8,false}}},
           {atom,error}]}.
    {'catch',{y,0},{f,90}}.
    {move,{y,6},{x,1}}.
    {move,{integer,0},{x,2}}.
    {init_yregs,{list,[{y,6}]}}.
    {move,{literal,<<0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",351}]}.
    {call,3,{f,142}}. % bin_tail_f/3
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[error]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
  {label,90}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,91},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,91},[{x,1}]}.
    {test,test_arity,{f,91},[{x,1},2]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,7}.
    return.
  {label,91}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",351}]}.
    {badmatch,{x,0}}.
  {label,92}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",350}]}.
    {badmatch,{x,0}}.
  {label,93}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",349}]}.
    {badmatch,{x,0}}.
  {label,94}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",346}]}.
    {badmatch,{x,0}}.
  {label,95}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",345}]}.
    {badmatch,{x,0}}.
  {label,96}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",344}]}.
    {badmatch,{x,0}}.
  {label,97}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",343}]}.
    {badmatch,{x,0}}.
  {label,98}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",341}]}.
    {badmatch,{x,0}}.
  {label,99}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",340}]}.
    {badmatch,{x,0}}.
  {label,100}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",339}]}.
    {badmatch,{x,0}}.
  {label,101}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",338}]}.
    {badmatch,{x,0}}.
  {label,102}.
    {line,[{scope,"\n"},{location,"bs_match_r25_SUITE.erl",337}]}.
    {badmatch,{x,0}}.
  {label,103}.
    {line,[{scope,"\n"},{location,"bs_match_r25_SUITE.erl",336}]}.
    {badmatch,{x,0}}.
  {label,104}.
    {line,[{scope,"\n"},{location,"bs_match_r25_SUITE.erl",335}]}.
    {badmatch,{x,0}}.
  {label,105}.
    {line,[{scope,"\n"},{location,"bs_match_r25_SUITE.erl",333}]}.
    {badmatch,{x,0}}.
  {label,106}.
    {line,[{scope,"\f"},{location,"bs_match_r25_SUITE.erl",332}]}.
    {badmatch,{x,0}}.
  {label,107}.
    {line,[{scope,[14]},{location,"bs_match_r25_SUITE.erl",331}]}.
    {badmatch,{x,0}}.
  {label,108}.
    {line,[{scope,[14]},{location,"bs_match_r25_SUITE.erl",330}]}.
    {badmatch,{x,0}}.
  {label,109}.
    {line,[{scope,[14]},{location,"bs_match_r25_SUITE.erl",329}]}.
    {badmatch,{x,0}}.


{function, bin_tail_c, 2, 111}.
  {label,110}.
    {line,[{location,"bs_match_r25_SUITE.erl",355}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bin_tail_c},2}.
  {label,111}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,5}}}]}}.
    {allocate,4,2}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{x,1},{y,2}}.
    {move,{x,0},{y,3}}.
    {line,[{location,"bs_match_r25_SUITE.erl",356}]}.
    {call,2,{f,115}}. % bin_tail_c_dead/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {bs_start_match4,{atom,no_fail},1,{y,3},{x,1}}.
    {move,{x,0},{y,1}}.
    {test,bs_skip_bits2,
          {f,113},
          [{x,1},
           {y,2},
           8,
           {field_flags,[{anno,[357,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_skip_bits2,
          {f,113},
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[357,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_get_tail,{x,1},{y,0},2}.
    {move,{y,2},{x,1}}.
    {move,{y,3},{x,0}}.
    {move,{y,0},{y,3}}.
    {move,{y,1},{y,2}}.
    {trim,2,2}.
    {line,[{location,"bs_match_r25_SUITE.erl",358}]}.
    {call,2,{f,118}}. % bin_tail_c_var/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,
          {f,112},
          [{tr,{x,1},{t_integer,{0,255}}},{tr,{y,0},{t_integer,{0,255}}}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,
          {f,112},
          [{tr,{x,1},{t_bitstring,8,false}},{tr,{y,1},{t_bitstring,8,false}}]}.
    {move,{y,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,112}.
    {badmatch,{x,0}}.
  {label,113}.
    {line,[{location,"bs_match_r25_SUITE.erl",357}]}.
    {badmatch,{y,3}}.


{function, bin_tail_c_dead, 2, 115}.
  {label,114}.
    {line,[{location,"bs_match_r25_SUITE.erl",361}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bin_tail_c_dead},2}.
  {label,115}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,5}}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,2}}.
    {test,bs_skip_bits2,
          {f,116},
          [{x,2},
           {x,1},
           8,
           {field_flags,[{anno,[362,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_integer2,
          {f,116},
          3,
          [{tr,{x,2},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[362,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {move,{x,1},{x,0}}.
    return.
  {label,116}.
    {line,[{location,"bs_match_r25_SUITE.erl",362}]}.
    {badmatch,{x,0}}.


{function, bin_tail_c_var, 2, 118}.
  {label,117}.
    {line,[{location,"bs_match_r25_SUITE.erl",365}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bin_tail_c_var},2}.
  {label,118}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,5}}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,2}}.
    {test,bs_skip_bits2,
          {f,119},
          [{x,2},
           {x,1},
           8,
           {field_flags,[{anno,[366,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_integer2,
          {f,119},
          3,
          [{tr,{x,2},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[366,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {bs_get_tail,{x,2},{x,0},3}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,1},{x,0}]}}.
    return.
  {label,119}.
    {line,[{location,"bs_match_r25_SUITE.erl",366}]}.
    {badmatch,{x,0}}.


{function, bin_tail_d, 2, 121}.
  {label,120}.
    {line,[{location,"bs_match_r25_SUITE.erl",370}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bin_tail_d},2}.
  {label,121}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,24}}}]}}.
    {allocate,4,2}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{x,1},{y,2}}.
    {move,{x,0},{y,3}}.
    {line,[{location,"bs_match_r25_SUITE.erl",371}]}.
    {call,2,{f,125}}. % bin_tail_d_dead/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {bs_start_match4,{atom,no_fail},1,{y,3},{x,1}}.
    {move,{x,0},{y,1}}.
    {test,bs_skip_bits2,
          {f,123},
          [{x,1},
           {y,2},
           1,
           {field_flags,[{anno,[372,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_skip_bits2,
          {f,123},
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[372,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,123},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {atom,all},
           8,
           {field_flags,[{anno,[372,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {y,0}}.
    {move,{y,2},{x,1}}.
    {move,{y,3},{x,0}}.
    {move,{y,0},{y,3}}.
    {move,{y,1},{y,2}}.
    {trim,2,2}.
    {line,[{location,"bs_match_r25_SUITE.erl",373}]}.
    {call,2,{f,128}}. % bin_tail_d_var/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,
          {f,122},
          [{tr,{x,1},{t_integer,{0,255}}},{tr,{y,0},{t_integer,{0,255}}}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,
          {f,122},
          [{tr,{x,1},{t_bitstring,8,false}},{tr,{y,1},{t_bitstring,8,false}}]}.
    {move,{y,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,122}.
    {badmatch,{x,0}}.
  {label,123}.
    {line,[{location,"bs_match_r25_SUITE.erl",372}]}.
    {badmatch,{y,3}}.


{function, bin_tail_d_dead, 2, 125}.
  {label,124}.
    {line,[{location,"bs_match_r25_SUITE.erl",376}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bin_tail_d_dead},2}.
  {label,125}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,40}}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,2}}.
    {test,bs_skip_bits2,
          {f,126},
          [{x,2},
           {x,1},
           1,
           {field_flags,[{anno,[377,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_integer2,
          {f,126},
          3,
          [{tr,{x,2},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[377,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_test_unit,{f,126},[{x,2},8]}.
    {move,{x,1},{x,0}}.
    return.
  {label,126}.
    {line,[{location,"bs_match_r25_SUITE.erl",377}]}.
    {badmatch,{x,0}}.


{function, bin_tail_d_var, 2, 128}.
  {label,127}.
    {line,[{location,"bs_match_r25_SUITE.erl",380}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bin_tail_d_var},2}.
  {label,128}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,24}}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,2}}.
    {test,bs_skip_bits2,
          {f,129},
          [{x,2},
           {x,1},
           1,
           {field_flags,[{anno,[381,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_integer2,
          {f,129},
          3,
          [{tr,{x,2},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[381,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_get_binary2,
          {f,129},
          3,
          [{tr,{x,2},{t_bs_context,1}},
           {atom,all},
           8,
           {field_flags,[{anno,[381,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{x,1},{x,2}]}}.
    return.
  {label,129}.
    {line,[{location,"bs_match_r25_SUITE.erl",381}]}.
    {badmatch,{x,0}}.


{function, bin_tail_e, 1, 131}.
  {label,130}.
    {line,[{location,"bs_match_r25_SUITE.erl",384}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bin_tail_e},1}.
  {label,131}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",385}]}.
    {call,1,{f,136}}. % bin_tail_e_dead/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,132},[{x,0},{atom,ok}]}.
    {bs_start_match4,{atom,no_fail},0,{y,1},{x,0}}.
    {test,bs_skip_bits2,
          {f,134},
          [{x,0},
           {integer,8},
           1,
           {field_flags,[{anno,[387,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_get_tail,{x,0},{y,0},1}.
    {move,{y,1},{x,0}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {line,[{location,"bs_match_r25_SUITE.erl",388}]}.
    {call,1,{f,139}}. % bin_tail_e_var/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[error]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,133},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,none,none,
                        {t_bitstring,8,false}}},
           {tr,{y,0},{t_bitstring,8,false}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,132}.
    {move,{y,1},{x,0}}.
    {call_last,1,{f,139},2}. % bin_tail_e_var/1
  {label,133}.
    {badmatch,{x,0}}.
  {label,134}.
    {line,[{location,"bs_match_r25_SUITE.erl",387}]}.
    {badmatch,{y,1}}.


{function, bin_tail_e_dead, 1, 136}.
  {label,135}.
    {line,[{location,"bs_match_r25_SUITE.erl",394}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bin_tail_e_dead},1}.
  {label,136}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_match_string,{f,137},[{x,0},2,{string,<<128>>}]}.
    {test,bs_skip_bits2,
          {f,137},
          [{x,0},
           {integer,1},
           1,
           {field_flags,[{anno,[398,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_match_string,{f,137},[{x,0},5,{string,<<"\b">>}]}.
    {test,bs_test_unit,{f,137},[{x,0},8]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,137}.
    {move,{atom,error},{x,0}}.
    return.


{function, bin_tail_e_var, 1, 139}.
  {label,138}.
    {line,[{location,"bs_match_r25_SUITE.erl",402}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bin_tail_e_var},1}.
  {label,139}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_match_string,{f,140},[{x,0},2,{string,<<128>>}]}.
    {test,bs_skip_bits2,
          {f,140},
          [{x,0},
           {integer,1},
           1,
           {field_flags,[{anno,[406,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_match_string,{f,140},[{x,0},5,{string,<<"\b">>}]}.
    {test,bs_get_binary2,
          {f,140},
          1,
          [{tr,{x,0},{t_bs_context,1}},
           {atom,all},
           8,
           {field_flags,[{anno,[406,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,0}}.
    return.
  {label,140}.
    {move,{atom,error},{x,0}}.
    return.


{function, bin_tail_f, 3, 142}.
  {label,141}.
    {line,[{location,"bs_match_r25_SUITE.erl",410}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bin_tail_f},3}.
  {label,142}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{0,999}}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,3}}.
    {test,bs_get_binary2,
          {f,144},
          4,
          [{tr,{x,3},{t_bs_context,8}},
           {integer,16},
           8,
           {field_flags,[{anno,[412,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_binary2,
          {f,143},
          5,
          [{tr,{x,3},{t_bs_context,8}},
           {tr,{x,2},{t_integer,{0,999}}},
           8,
           {field_flags,[{anno,[412,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,143},[{x,3},0]}.
    {test,is_eq_exact,{f,144},[{tr,{x,4},{t_bitstring,8,false}},{x,1}]}.
    {move,{x,2},{x,0}}.
    return.
  {label,143}.
    {test,is_eq_exact,{f,144},[{tr,{x,4},{t_bitstring,8,false}},{x,1}]}.
    {move,{atom,error},{x,0}}.
    return.
  {label,144}.
    {line,[{location,"bs_match_r25_SUITE.erl",411}]}.
    {case_end,{x,0}}.


{function, save_restore, 1, 146}.
  {label,145}.
    {line,[{location,"bs_match_r25_SUITE.erl",418}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,save_restore},1}.
  {label,146}.
    {test,is_list,{f,145},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",419}]}.
    {call,1,{f,169}}. % save_restore_1/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,
                     {t_integer,{0,0}},
                     [{{2,{t_integer,{1,1}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{1,1}},
                             2 => {t_integer,{0,16383}}}}},
                      {{2,{t_integer,{2,2}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{2,2}},
                             2 => {t_integer,{0,1073741823}}}}},
                      {{2,{t_integer,{3,3}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{3,3}},
                             2 => {t_integer,{0,18446744073709551615}}}}}],
                     none}}]}}.
    {test,is_eq_exact,
        {f,167},
        [{tr,{x,0},
             {t_union,none,none,
                 {t_integer,{0,0}},
                 [{{2,{t_integer,{1,1}}},
                   {t_tuple,2,true,
                       #{1 => {t_integer,{1,1}},2 => {t_integer,{0,16383}}}}},
                  {{2,{t_integer,{2,2}}},
                   {t_tuple,2,true,
                       #{1 => {t_integer,{2,2}},
                         2 => {t_integer,{0,1073741823}}}}},
                  {{2,{t_integer,{3,3}}},
                   {t_tuple,2,true,
                       #{1 => {t_integer,{3,3}},
                         2 => {t_integer,{0,18446744073709551615}}}}}],
                 none}},
         {integer,0}]}.
    {move,{literal,<<77,128>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",420}]}.
    {call,1,{f,169}}. % save_restore_1/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,
                     {t_integer,{0,0}},
                     [{{2,{t_integer,{1,1}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{1,1}},
                             2 => {t_integer,{0,16383}}}}},
                      {{2,{t_integer,{2,2}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{2,2}},
                             2 => {t_integer,{0,1073741823}}}}},
                      {{2,{t_integer,{3,3}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{3,3}},
                             2 => {t_integer,{0,18446744073709551615}}}}}],
                     none}}]}}.
    {test,is_eq_exact,
        {f,166},
        [{tr,{x,0},
             {t_union,none,none,
                 {t_integer,{0,0}},
                 [{{2,{t_integer,{1,1}}},
                   {t_tuple,2,true,
                       #{1 => {t_integer,{1,1}},2 => {t_integer,{0,16383}}}}},
                  {{2,{t_integer,{2,2}}},
                   {t_tuple,2,true,
                       #{1 => {t_integer,{2,2}},
                         2 => {t_integer,{0,1073741823}}}}},
                  {{2,{t_integer,{3,3}}},
                   {t_tuple,2,true,
                       #{1 => {t_integer,{3,3}},
                         2 => {t_integer,{0,18446744073709551615}}}}}],
                 none}},
         {literal,{1,3456}}]}.
    {move,{literal,<<128,121,200,178>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",421}]}.
    {call,1,{f,169}}. % save_restore_1/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,
                     {t_integer,{0,0}},
                     [{{2,{t_integer,{1,1}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{1,1}},
                             2 => {t_integer,{0,16383}}}}},
                      {{2,{t_integer,{2,2}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{2,2}},
                             2 => {t_integer,{0,1073741823}}}}},
                      {{2,{t_integer,{3,3}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{3,3}},
                             2 => {t_integer,{0,18446744073709551615}}}}}],
                     none}}]}}.
    {test,is_eq_exact,
        {f,165},
        [{tr,{x,0},
             {t_union,none,none,
                 {t_integer,{0,0}},
                 [{{2,{t_integer,{1,1}}},
                   {t_tuple,2,true,
                       #{1 => {t_integer,{1,1}},2 => {t_integer,{0,16383}}}}},
                  {{2,{t_integer,{2,2}}},
                   {t_tuple,2,true,
                       #{1 => {t_integer,{2,2}},
                         2 => {t_integer,{0,1073741823}}}}},
                  {{2,{t_integer,{3,3}}},
                   {t_tuple,2,true,
                       #{1 => {t_integer,{3,3}},
                         2 => {t_integer,{0,18446744073709551615}}}}}],
                 none}},
         {literal,{2,7981234}}]}.
    {move,{literal,<<0,0,0,177,224,2,214,206>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",422}]}.
    {call,1,{f,169}}. % save_restore_1/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,
                     {t_integer,{0,0}},
                     [{{2,{t_integer,{1,1}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{1,1}},
                             2 => {t_integer,{0,16383}}}}},
                      {{2,{t_integer,{2,2}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{2,2}},
                             2 => {t_integer,{0,1073741823}}}}},
                      {{2,{t_integer,{3,3}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{3,3}},
                             2 => {t_integer,{0,18446744073709551615}}}}}],
                     none}}]}}.
    {test,is_eq_exact,
        {f,164},
        [{tr,{x,0},
             {t_union,none,none,
                 {t_integer,{0,0}},
                 [{{2,{t_integer,{1,1}}},
                   {t_tuple,2,true,
                       #{1 => {t_integer,{1,1}},2 => {t_integer,{0,16383}}}}},
                  {{2,{t_integer,{2,2}}},
                   {t_tuple,2,true,
                       #{1 => {t_integer,{2,2}},
                         2 => {t_integer,{0,1073741823}}}}},
                  {{2,{t_integer,{3,3}}},
                   {t_tuple,2,true,
                       #{1 => {t_integer,{3,3}},
                         2 => {t_integer,{0,18446744073709551615}}}}}],
                 none}},
         {literal,{3,763967493838}}]}.
    {move,{literal,<<" x">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",428}]}.
    {call,1,{f,176}}. % lll/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_cons,{t_integer,{0,255}},nil},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
          {f,163},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_cons,{t_integer,{0,255}},nil},
                          2 => {t_bitstring,8,false}}}},
           {literal,{" ",<<"x">>}}]}.
    {move,{literal,<<" x">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",429}]}.
    {call,1,{f,178}}. % mmm/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     {t_tuple,2,true,
                         #{1 => {t_cons,{t_integer,{0,255}},nil},
                           2 => {t_bitstring,8,false}}},
                     {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,162},
          [{tr,{x,0},
               {t_union,none,none,none,
                        {t_tuple,2,true,
                                 #{1 => {t_cons,{t_integer,{0,255}},nil},
                                   2 => {t_bitstring,8,false}}},
                        {t_bitstring,8,false}}},
           {literal,{" ",<<"x">>}}]}.
    {move,{literal,<<" x">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",430}]}.
    {call,1,{f,183}}. % nnn/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     {t_tuple,2,true,
                         #{1 => {t_cons,{t_integer,{0,255}},nil},
                           2 => {t_bitstring,8,false}}},
                     {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,161},
          [{tr,{x,0},
               {t_union,none,none,none,
                        {t_tuple,2,true,
                                 #{1 => {t_cons,{t_integer,{0,255}},nil},
                                   2 => {t_bitstring,8,false}}},
                        {t_bitstring,8,false}}},
           {literal,{" ",<<"x">>}}]}.
    {move,{literal,<<" x">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",431}]}.
    {call,1,{f,188}}. % ooo/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     {t_tuple,2,true,
                         #{1 => {t_cons,{t_integer,{0,255}},nil},
                           2 => {t_bitstring,8,false}}},
                     {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,160},
          [{tr,{x,0},
               {t_union,none,none,none,
                        {t_tuple,2,true,
                                 #{1 => {t_cons,{t_integer,{0,255}},nil},
                                   2 => {t_bitstring,8,false}}},
                        {t_bitstring,8,false}}},
           {literal,{" ",<<"x">>}}]}.
    {move,{literal,<<".x">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",433}]}.
    {call,1,{f,176}}. % lll/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_cons,{t_integer,{0,255}},nil},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
          {f,159},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_cons,{t_integer,{0,255}},nil},
                          2 => {t_bitstring,8,false}}}},
           {literal,{".",<<"x">>}}]}.
    {move,{literal,<<".x">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",434}]}.
    {call,1,{f,178}}. % mmm/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     {t_tuple,2,true,
                         #{1 => {t_cons,{t_integer,{0,255}},nil},
                           2 => {t_bitstring,8,false}}},
                     {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,158},
          [{tr,{x,0},
               {t_union,none,none,none,
                        {t_tuple,2,true,
                                 #{1 => {t_cons,{t_integer,{0,255}},nil},
                                   2 => {t_bitstring,8,false}}},
                        {t_bitstring,8,false}}},
           {literal,{".",<<"x">>}}]}.
    {move,{literal,<<".x">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",435}]}.
    {call,1,{f,183}}. % nnn/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     {t_tuple,2,true,
                         #{1 => {t_cons,{t_integer,{0,255}},nil},
                           2 => {t_bitstring,8,false}}},
                     {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,157},
          [{tr,{x,0},
               {t_union,none,none,none,
                        {t_tuple,2,true,
                                 #{1 => {t_cons,{t_integer,{0,255}},nil},
                                   2 => {t_bitstring,8,false}}},
                        {t_bitstring,8,false}}},
           {literal,{".",<<"x">>}}]}.
    {move,{literal,<<".x">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",436}]}.
    {call,1,{f,188}}. % ooo/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     {t_tuple,2,true,
                         #{1 => {t_cons,{t_integer,{0,255}},nil},
                           2 => {t_bitstring,8,false}}},
                     {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,156},
          [{tr,{x,0},
               {t_union,none,none,none,
                        {t_tuple,2,true,
                                 #{1 => {t_cons,{t_integer,{0,255}},nil},
                                   2 => {t_bitstring,8,false}}},
                        {t_bitstring,8,false}}},
           {literal,{".",<<"x">>}}]}.
    {move,{literal,<<"-x">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",438}]}.
    {call,1,{f,176}}. % lll/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_cons,{t_integer,{0,255}},nil},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
          {f,155},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_cons,{t_integer,{0,255}},nil},
                          2 => {t_bitstring,8,false}}}},
           {literal,{"-",<<"x">>}}]}.
    {move,{literal,<<"-x">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",439}]}.
    {call,1,{f,178}}. % mmm/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     {t_tuple,2,true,
                         #{1 => {t_cons,{t_integer,{0,255}},nil},
                           2 => {t_bitstring,8,false}}},
                     {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,154},
          [{tr,{x,0},
               {t_union,none,none,none,
                        {t_tuple,2,true,
                                 #{1 => {t_cons,{t_integer,{0,255}},nil},
                                   2 => {t_bitstring,8,false}}},
                        {t_bitstring,8,false}}},
           {literal,{"-",<<"x">>}}]}.
    {move,{literal,<<"-x">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",440}]}.
    {call,1,{f,183}}. % nnn/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     {t_tuple,2,true,
                         #{1 => {t_cons,{t_integer,{0,255}},nil},
                           2 => {t_bitstring,8,false}}},
                     {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,153},
          [{tr,{x,0},
               {t_union,none,none,none,
                        {t_tuple,2,true,
                                 #{1 => {t_cons,{t_integer,{0,255}},nil},
                                   2 => {t_bitstring,8,false}}},
                        {t_bitstring,8,false}}},
           {literal,{"-",<<"x">>}}]}.
    {move,{literal,<<"-x">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",441}]}.
    {call,1,{f,188}}. % ooo/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     {t_tuple,2,true,
                         #{1 => {t_cons,{t_integer,{0,255}},nil},
                           2 => {t_bitstring,8,false}}},
                     {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,152},
          [{tr,{x,0},
               {t_union,none,none,none,
                        {t_tuple,2,true,
                                 #{1 => {t_cons,{t_integer,{0,255}},nil},
                                   2 => {t_bitstring,8,false}}},
                        {t_bitstring,8,false}}},
           {literal,{"-",<<"x">>}}]}.
    {move,{literal,<<3,9>>},{x,1}}.
    {move,{literal,<<3,9>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",443}]}.
    {call,2,{f,191}}. % multiple_matches/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b,c,d]}}]}}.
    {test,is_eq_exact,{f,151},[{tr,{x,0},{t_atom,[a,b,c,d]}},{atom,a}]}.
    {move,{literal,<<3,231>>},{x,1}}.
    {move,{literal,<<3,9>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",444}]}.
    {call,2,{f,191}}. % multiple_matches/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b,c,d]}}]}}.
    {test,is_eq_exact,{f,150},[{tr,{x,0},{t_atom,[a,b,c,d]}},{atom,b}]}.
    {move,{literal,<<"9">>},{x,1}}.
    {move,{literal,<<3,9>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",445}]}.
    {call,2,{f,191}}. % multiple_matches/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b,c,d]}}]}}.
    {test,is_eq_exact,{f,149},[{tr,{x,0},{t_atom,[a,b,c,d]}},{atom,c}]}.
    {move,{literal,<<4,87>>},{x,1}}.
    {move,{literal,<<17>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",446}]}.
    {call,2,{f,191}}. % multiple_matches/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b,c,d]}}]}}.
    {test,is_eq_exact,{f,148},[{tr,{x,0},{t_atom,[a,b,c,d]}},{atom,d}]}.
    {move,{literal,<<"ÿÿÿÿÿÿÿÿ">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",449}]}.
    {call,1,{f,196}}. % bad_float_unpack_match/1
    {'%',{var_info,{x,0},[{type,{t_number,any}}]}}.
    {test,is_eq_exact,{f,147},[{tr,{x,0},{t_number,any}},{integer,-1}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,147}.
    {move,{atom,bad_return_value_probably_NaN},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",451}]}.
    {call_ext_last,1,{extfunc,ct,fail,1},0}.
  {label,148}.
    {line,[{location,"bs_match_r25_SUITE.erl",446}]}.
    {badmatch,{x,0}}.
  {label,149}.
    {line,[{location,"bs_match_r25_SUITE.erl",445}]}.
    {badmatch,{x,0}}.
  {label,150}.
    {line,[{location,"bs_match_r25_SUITE.erl",444}]}.
    {badmatch,{x,0}}.
  {label,151}.
    {line,[{location,"bs_match_r25_SUITE.erl",443}]}.
    {badmatch,{x,0}}.
  {label,152}.
    {line,[{location,"bs_match_r25_SUITE.erl",441}]}.
    {badmatch,{x,0}}.
  {label,153}.
    {line,[{location,"bs_match_r25_SUITE.erl",440}]}.
    {badmatch,{x,0}}.
  {label,154}.
    {line,[{location,"bs_match_r25_SUITE.erl",439}]}.
    {badmatch,{x,0}}.
  {label,155}.
    {line,[{location,"bs_match_r25_SUITE.erl",438}]}.
    {badmatch,{x,0}}.
  {label,156}.
    {line,[{location,"bs_match_r25_SUITE.erl",436}]}.
    {badmatch,{x,0}}.
  {label,157}.
    {line,[{location,"bs_match_r25_SUITE.erl",435}]}.
    {badmatch,{x,0}}.
  {label,158}.
    {line,[{location,"bs_match_r25_SUITE.erl",434}]}.
    {badmatch,{x,0}}.
  {label,159}.
    {line,[{location,"bs_match_r25_SUITE.erl",433}]}.
    {badmatch,{x,0}}.
  {label,160}.
    {line,[{location,"bs_match_r25_SUITE.erl",431}]}.
    {badmatch,{x,0}}.
  {label,161}.
    {line,[{location,"bs_match_r25_SUITE.erl",430}]}.
    {badmatch,{x,0}}.
  {label,162}.
    {line,[{location,"bs_match_r25_SUITE.erl",429}]}.
    {badmatch,{x,0}}.
  {label,163}.
    {line,[{location,"bs_match_r25_SUITE.erl",428}]}.
    {badmatch,{x,0}}.
  {label,164}.
    {line,[{location,"bs_match_r25_SUITE.erl",422}]}.
    {badmatch,{x,0}}.
  {label,165}.
    {line,[{location,"bs_match_r25_SUITE.erl",421}]}.
    {badmatch,{x,0}}.
  {label,166}.
    {line,[{location,"bs_match_r25_SUITE.erl",420}]}.
    {badmatch,{x,0}}.
  {label,167}.
    {line,[{location,"bs_match_r25_SUITE.erl",419}]}.
    {badmatch,{x,0}}.


{function, save_restore_1, 1, 169}.
  {label,168}.
    {line,[{location,"bs_match_r25_SUITE.erl",454}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,save_restore_1},1}.
  {label,169}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {test,bs_get_integer2,
          {f,173},
          3,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,2},
           1,
           {field_flags,[{anno,[456,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {select_val,{tr,{x,3},{t_integer,{0,3}}},
                {f,173},
                {list,[{integer,0},
                       {f,172},
                       {integer,1},
                       {f,171},
                       {integer,2},
                       {f,170}]}}.
  {label,170}.
    {test,bs_get_integer2,
          {f,173},
          3,
          [{tr,{x,1},{t_bs_context,2}},
           {integer,30},
           1,
           {field_flags,[{anno,[458,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,173},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{integer,2},{x,3}]}}.
    return.
  {label,171}.
    {test,bs_get_integer2,
          {f,173},
          3,
          [{tr,{x,1},{t_bs_context,2}},
           {integer,14},
           1,
           {field_flags,[{anno,[457,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,173},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{integer,1},{x,3}]}}.
    return.
  {label,172}.
    {test,bs_test_tail2,{f,173},[{x,1},6]}.
    {move,{integer,0},{x,0}}.
    return.
  {label,173}.
    {bs_set_position,{x,1},{x,2}}.
    {test,bs_get_integer2,
          {f,174},
          2,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,64},
           1,
           {field_flags,[{anno,[459,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,174},[{x,1},0]}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{integer,3},{x,2}]}}.
    return.
  {label,174}.
    {line,[{location,"bs_match_r25_SUITE.erl",455}]}.
    {case_end,{x,0}}.


{function, lll, 1, 176}.
  {label,175}.
    {line,[{location,"bs_match_r25_SUITE.erl",462}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,lll},1}.
  {label,176}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,175},
          2,
          [{tr,{x,1},{t_bs_context,16}},
           {integer,8},
           1,
           {field_flags,[{anno,[462,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{x,0},3}.
    {test_heap,5,3}.
    {put_list,{x,2},nil,{x,1}}.
    {put_tuple2,{x,0},{list,[{x,1},{x,0}]}}.
    return.


{function, mmm, 1, 178}.
  {label,177}.
    {line,[{location,"bs_match_r25_SUITE.erl",464}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,mmm},1}.
  {label,178}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,177},
          2,
          [{tr,{x,1},{t_bs_context,16}},
           {integer,8},
           1,
           {field_flags,[{anno,[464,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {select_val,{tr,{x,2},{t_integer,{0,255}}},
                {f,181},
                {list,[{integer,32},{f,180},{integer,46},{f,179}]}}.
  {label,179}.
    {test,bs_match_string,{f,181},[{x,1},16,{string,<<"..">>}]}.
    {bs_get_tail,{x,1},{x,0},2}.
    return.
  {label,180}.
    {test,bs_match_string,{f,181},[{x,1},16,{string,<<"- ">>}]}.
    {bs_get_tail,{x,1},{x,0},2}.
    return.
  {label,181}.
    {bs_get_tail,{x,1},{x,0},3}.
    {test_heap,5,3}.
    {put_list,{x,2},nil,{x,1}}.
    {put_tuple2,{x,0},{list,[{x,1},{x,0}]}}.
    return.


{function, nnn, 1, 183}.
  {label,182}.
    {line,[{location,"bs_match_r25_SUITE.erl",468}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,nnn},1}.
  {label,183}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,182},
          2,
          [{tr,{x,1},{t_bs_context,16}},
           {integer,8},
           1,
           {field_flags,[{anno,[468,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {select_val,{tr,{x,2},{t_integer,{0,255}}},
                {f,186},
                {list,[{integer,32},{f,185},{integer,46},{f,184}]}}.
  {label,184}.
    {test,bs_match_string,{f,186},[{x,1},16,{string,<<"..">>}]}.
    {bs_get_tail,{x,1},{x,0},2}.
    return.
  {label,185}.
    {test,bs_match_string,{f,186},[{x,1},16,{string,<<"- ">>}]}.
    {bs_get_tail,{x,1},{x,0},2}.
    return.
  {label,186}.
    {bs_get_tail,{x,1},{x,0},3}.
    {test_heap,5,3}.
    {put_list,{x,2},nil,{x,1}}.
    {put_tuple2,{x,0},{list,[{x,1},{x,0}]}}.
    return.


{function, ooo, 1, 188}.
  {label,187}.
    {line,[{location,"bs_match_r25_SUITE.erl",472}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,ooo},1}.
  {label,188}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,187},
          2,
          [{tr,{x,1},{t_bs_context,16}},
           {integer,8},
           1,
           {field_flags,[{anno,[472,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,189},[{tr,{x,2},{t_integer,{0,255}}},{integer,32}]}.
    {test,bs_match_string,{f,189},[{x,1},16,{string,<<"- ">>}]}.
    {bs_get_tail,{x,1},{x,0},2}.
    return.
  {label,189}.
    {bs_get_tail,{x,1},{x,0},3}.
    {test_heap,5,3}.
    {put_list,{x,2},nil,{x,1}}.
    {put_tuple2,{x,0},{list,[{x,1},{x,0}]}}.
    return.


{function, multiple_matches, 2, 191}.
  {label,190}.
    {line,[{location,"bs_match_r25_SUITE.erl",475}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,multiple_matches},2}.
  {label,191}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,2}}.
    {bs_get_position,{x,2},{x,3},3}.
    {test,bs_get_integer2,
          {f,194},
          4,
          [{tr,{x,2},{t_bs_context,8}},
           {integer,16},
           1,
           {field_flags,[{anno,[475,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,194},[{x,2},0]}.
    {bs_start_match4,{atom,no_fail},5,{x,1},{x,5}}.
    {bs_get_position,{x,5},{x,6},6}.
    {test,bs_get_integer2,
          {f,193},
          7,
          [{tr,{x,5},{t_bs_context,8}},
           {integer,16},
           1,
           {field_flags,[{anno,[475,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,7}}.
    {test,bs_test_tail2,{f,193},[{x,5},0]}.
    {test,is_eq_exact,
          {f,192},
          [{tr,{x,7},{t_integer,{0,65535}}},{tr,{x,4},{t_integer,{0,65535}}}]}.
    {move,{atom,a},{x,0}}.
    return.
  {label,192}.
    {move,{atom,b},{x,0}}.
    return.
  {label,193}.
    {bs_set_position,{x,5},{x,6}}.
    {test,bs_test_tail2,{f,194},[{x,5},8]}.
    {move,{atom,c},{x,0}}.
    return.
  {label,194}.
    {bs_set_position,{x,2},{x,3}}.
    {test,bs_test_tail2,{f,190},[{x,2},8]}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,2}}.
    {test,bs_test_tail2,{f,190},[{x,2},16]}.
    {move,{atom,d},{x,0}}.
    return.


{function, bad_float_unpack_match, 1, 196}.
  {label,195}.
    {line,[{location,"bs_match_r25_SUITE.erl",480}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bad_float_unpack_match},1}.
  {label,196}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,64,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {test,bs_get_float2,
          {f,197},
          3,
          [{tr,{x,1},{t_bs_context,64}},
           {integer,64},
           1,
           {field_flags,[{anno,[480,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,197},[{x,1},0]}.
    {move,{x,3},{x,0}}.
    return.
  {label,197}.
    {bs_set_position,{x,1},{x,2}}.
    {test,bs_get_integer2,
          {f,195},
          2,
          [{tr,{x,1},{t_bs_context,64}},
           {integer,64},
           1,
           {field_flags,[{anno,[481,{file,"bs_match_r25_SUITE.erl"}]},
                         signed,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,195},[{x,1},0]}.
    {move,{x,2},{x,0}}.
    return.


{function, partitioned_bs_match, 1, 199}.
  {label,198}.
    {line,[{location,"bs_match_r25_SUITE.erl",484}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,partitioned_bs_match},1}.
  {label,199}.
    {test,is_list,{f,198},[{x,0}]}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{literal,<<42,1,2,3>>},{x,1}}.
    {move,{atom,blurf},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",485}]}.
    {call,2,{f,210}}. % partitioned_bs_match/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[error]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,208},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,none,none,
                        {t_bitstring,8,false}}},
           {literal,<<1,2,3>>}]}.
    {move,{literal,<<7,8,15,13>>},{x,1}}.
    {move,{integer,10},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",486}]}.
    {call,2,{f,210}}. % partitioned_bs_match/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[error]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,207},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,none,none,
                        {t_bitstring,8,false}}},
           {atom,error}]}.
    {move,{literal,{a,tuple,is,'not',a,binary}},{x,1}}.
    {move,{integer,100},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",487}]}.
    {call,2,{f,210}}. % partitioned_bs_match/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,<<>>},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",488}]}.
    {call,2,{f,210}}. % partitioned_bs_match/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[error,ok]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,206},
          [{tr,{x,0},
               {t_union,{t_atom,[error,ok]},
                        none,none,none,
                        {t_bitstring,8,false}}},
           {atom,ok}]}.
    {'catch',{y,2},{f,200}}.
    {move,{atom,blurf},{x,1}}.
    {move,{integer,-1},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",490}]}.
    {call,2,{f,210}}. % partitioned_bs_match/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,200}.
    {catch_end,{y,2}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[-1,blurf]},{x,1}}.
    {move,{atom,partitioned_bs_match},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r25_SUITE.erl",489}]}.
    {call,3,{f,843}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,1},{f,201}}.
    {move,{literal,<<1,2,3>>},{x,1}}.
    {move,{integer,-1},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r25_SUITE.erl",492}]}.
    {call,2,{f,210}}. % partitioned_bs_match/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[ok]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
  {label,201}.
    {catch_end,{y,1}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[-1,<<1,2,3>>]},{x,1}}.
    {move,{atom,partitioned_bs_match},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r25_SUITE.erl",491}]}.
    {call,3,{f,843}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<17,1,2,3>>},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r25_SUITE.erl",493}]}.
    {call,2,{f,214}}. % partitioned_bs_match_2/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
          {f,205},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,255}},
                          2 => {t_bitstring,8,false}}}},
           {literal,{17,<<1,2,3>>}}]}.
    {move,{literal,<<17,1,2,3>>},{x,1}}.
    {move,{integer,7},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",494}]}.
    {call,2,{f,214}}. % partitioned_bs_match_2/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{2,7}},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
          {f,204},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{2,7}},2 => {t_bitstring,8,false}}}},
           {literal,{7,<<1,2,3>>}}]}.
    {'catch',{y,0},{f,202}}.
    {move,{literal,<<0,0,0:1>>},{x,1}}.
    {move,{integer,4},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",497}]}.
    {call,2,{f,214}}. % partitioned_bs_match_2/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{2,7}},
                                     2 => {t_bitstring,8,false}}}}]}}.
  {label,202}.
    {catch_end,{y,0}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[4,<<0,0,0:1>>]},{x,1}}.
    {move,{atom,partitioned_bs_match_2},{x,0}}.
    {line,[{scope,[1,2]},{location,"bs_match_r25_SUITE.erl",496}]}.
    {call,3,{f,843}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<"*">>},{x,1}}.
    {move,{atom,anything},{x,0}}.
    {line,[{scope,[1,2]},{location,"bs_match_r25_SUITE.erl",499}]}.
    {call,2,{f,217}}. % partitioned_bs_match_3/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[anything]},
                                   none,
                                   {t_integer,{1,1}},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,203},
          [{tr,{x,0},
               {t_union,{t_atom,[anything]},none,{t_integer,{1,1}},none,none}},
           {atom,anything}]}.
    {move,{integer,2},{x,1}}.
    {move,{integer,1},{x,0}}.
    {call_last,2,{f,217},3}. % partitioned_bs_match_3/2
  {label,203}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",499}]}.
    {badmatch,{integer,1}}.
  {label,204}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",494}]}.
    {badmatch,{x,0}}.
  {label,205}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",493}]}.
    {badmatch,{x,0}}.
  {label,206}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",488}]}.
    {badmatch,{x,0}}.
  {label,207}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",486}]}.
    {badmatch,{x,0}}.
  {label,208}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",485}]}.
    {badmatch,{x,0}}.


{function, partitioned_bs_match, 2, 210}.
  {label,209}.
    {line,[{location,"bs_match_r25_SUITE.erl",504}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,partitioned_bs_match},2}.
  {label,210}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[blurf]},
                                   none,
                                   {t_integer,{-1,100}},
                                   none,none}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_union,
                     {t_atom,[blurf]},
                     none,none,
                     [{{6,{t_atom,[a]}},
                       {t_tuple,6,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[tuple]},
                             3 => {t_atom,[is]},
                             4 => {t_atom,['not']},
                             5 => {t_atom,[a]},
                             6 => {t_atom,[binary]}}}}],
                     {t_bitstring,8,false}}}]}}.
    {test,bs_start_match3,{f,211},2,[{x,1}],{x,2}}.
    {test,bs_match_string,{f,211},[{x,2},8,{string,<<"*">>}]}.
    {bs_get_tail,{x,2},{x,0},3}.
    return.
  {label,211}.
    {test,is_lt,
          {f,212},
          [{integer,0},
           {tr,{x,0},
               {t_union,{t_atom,[blurf]},
                        none,
                        {t_integer,{-1,100}},
                        none,none}}]}.
    {move,{atom,error},{x,0}}.
    return.
  {label,212}.
    {test,is_eq_exact,
          {f,209},
          [{tr,{x,1},
               {t_union,{t_atom,[blurf]},
                        none,none,
                        [{{6,{t_atom,[a]}},
                          {t_tuple,6,true,
                                   #{1 => {t_atom,[a]},
                                     2 => {t_atom,[tuple]},
                                     3 => {t_atom,[is]},
                                     4 => {t_atom,['not']},
                                     5 => {t_atom,[a]},
                                     6 => {t_atom,[binary]}}}}],
                        {t_bitstring,8,false}}},
           {literal,<<>>}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, partitioned_bs_match_2, 2, 214}.
  {label,213}.
    {line,[{location,"bs_match_r25_SUITE.erl",511}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,partitioned_bs_match_2},2}.
  {label,214}.
    {'%',{var_info,{x,0},[{type,{t_integer,{1,7}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,false}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,2}}.
    {test,bs_get_integer2,
          {f,213},
          3,
          [{tr,{x,2},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[511,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,213},
          4,
          [{tr,{x,2},{t_bs_context,1}},
           {atom,all},
           8,
           {field_flags,[{anno,[511,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,215},[{tr,{x,0},{t_integer,{1,7}}},{integer,1}]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,3},{x,2}]}}.
    return.
  {label,215}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{x,0},{x,2}]}}.
    return.


{function, partitioned_bs_match_3, 2, 217}.
  {label,216}.
    {line,[{location,"bs_match_r25_SUITE.erl",516}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,partitioned_bs_match_3},2}.
  {label,217}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[anything]},
                                   none,
                                   {t_integer,{1,1}},
                                   none,none}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_union,none,none,
                                   {t_integer,{2,2}},
                                   none,
                                   {t_bitstring,8,false}}}]}}.
    {test,bs_start_match3,{f,218},2,[{x,1}],{x,2}}.
    {test,bs_test_tail2,{f,216},[{x,2},8]}.
    return.
  {label,218}.
    {test,is_eq_exact,
          {f,216},
          [{tr,{x,0},
               {t_union,{t_atom,[anything]},none,{t_integer,{1,1}},none,none}},
           {integer,1}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, function_clause, 1, 220}.
  {label,219}.
    {line,[{location,"bs_match_r25_SUITE.erl",519}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,function_clause},1}.
  {label,220}.
    {test,is_list,{f,219},[{x,0}]}.
    {allocate,4,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3}]}}.
    {move,{literal,<<0,7,0,7,42>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",520}]}.
    {call,1,{f,226}}. % function_clause_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,3},{f,221}}.
    {move,{literal,<<0,1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",522}]}.
    {call,1,{f,226}}. % function_clause_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,221}.
    {catch_end,{y,3}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<0,1,2,3>>]},{x,1}}.
    {move,{atom,function_clause_1},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_r25_SUITE.erl",521}]}.
    {call,3,{f,843}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,2},{f,222}}.
    {move,{literal,<<0,7,0,1,2,3>>},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_r25_SUITE.erl",524}]}.
    {call,1,{f,226}}. % function_clause_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,222}.
    {catch_end,{y,2}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<0,1,2,3>>]},{x,1}}.
    {move,{atom,function_clause_1},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r25_SUITE.erl",523}]}.
    {call,3,{f,843}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<0,7,0,7,42>>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r25_SUITE.erl",526}]}.
    {call,1,{f,229}}. % function_clause_2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<"ÿ">>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r25_SUITE.erl",527}]}.
    {call,1,{f,229}}. % function_clause_2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<13:4>>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r25_SUITE.erl",528}]}.
    {call,1,{f,229}}. % function_clause_2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,1},{f,223}}.
    {move,{literal,<<0,1,2,3>>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r25_SUITE.erl",530}]}.
    {call,1,{f,229}}. % function_clause_2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,223}.
    {catch_end,{y,1}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<0,1,2,3>>]},{x,1}}.
    {move,{atom,function_clause_2},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r25_SUITE.erl",529}]}.
    {call,3,{f,843}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,0},{f,224}}.
    {move,{literal,<<0,7,0,1,2,3>>},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r25_SUITE.erl",532}]}.
    {call,1,{f,229}}. % function_clause_2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,224}.
    {catch_end,{y,0}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<0,1,2,3>>]},{x,1}}.
    {move,{atom,function_clause_2},{x,0}}.
    {call_last,3,{f,843},4}. % fc/3


{function, function_clause_1, 1, 226}.
  {label,225}.
    {line,[{location,"bs_match_r25_SUITE.erl",536}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,function_clause_1},1}.
  {label,226}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,225},
          2,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[536,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,227},[{tr,{x,2},{t_integer,{0,255}}},{integer,0}]}.
    {test,bs_match_string,{f,227},[{x,1},8,{string,<<7>>}]}.
    {bs_get_tail,{x,1},{x,0},2}.
    {call_only,1,{f,226}}. % function_clause_1/1
  {label,227}.
    {test,bs_test_tail2,{f,225},[{x,1},0]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, function_clause_2, 1, 229}.
  {label,228}.
    {line,[{location,"bs_match_r25_SUITE.erl",541}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,function_clause_2},1}.
  {label,229}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,4,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {test,bs_get_integer2,
          {f,231},
          3,
          [{tr,{x,1},{t_bs_context,4}},
           {integer,8},
           1,
           {field_flags,[{anno,[541,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,230},[{tr,{x,3},{t_integer,{0,255}}},{integer,0}]}.
    {test,bs_match_string,{f,230},[{x,1},8,{string,<<7>>}]}.
    {test,bs_get_binary2,
          {f,231},
          3,
          [{tr,{x,1},{t_bs_context,4}},
           {atom,all},
           8,
           {field_flags,[{anno,[541,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {move,{x,3},{x,0}}.
    {call_only,1,{f,229}}. % function_clause_2/1
  {label,230}.
    {test,bs_test_tail2,{f,231},[{x,1},0]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,231}.
    {bs_set_position,{x,1},{x,2}}.
    {test,bs_test_tail2,{f,228},[{x,1},4]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, unit, 1, 233}.
  {label,232}.
    {line,[{location,"bs_match_r25_SUITE.erl",548}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,unit},1}.
  {label,233}.
    {test,is_list,{f,232},[{x,0}]}.
    {allocate,7,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3},{y,4},{y,5},{y,6}]}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",549}]}.
    {call,1,{f,261}}. % peek1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,259},[{tr,{x,0},{t_integer,{0,255}}},{integer,42}]}.
    {move,{literal,<<43,1,2>>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_r25_SUITE.erl",550}]}.
    {call,1,{f,261}}. % peek1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,258},[{tr,{x,0},{t_integer,{0,255}}},{integer,43}]}.
    {move,{literal,<<43,1,2,1:1>>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_r25_SUITE.erl",551}]}.
    {call,1,{f,261}}. % peek1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,257},[{tr,{x,0},{t_integer,{0,255}}},{integer,43}]}.
    {move,{literal,<<43,1,2,3:2>>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_r25_SUITE.erl",552}]}.
    {call,1,{f,261}}. % peek1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,256},[{tr,{x,0},{t_integer,{0,255}}},{integer,43}]}.
    {move,{literal,<<43,1,2,127:7>>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_r25_SUITE.erl",553}]}.
    {call,1,{f,261}}. % peek1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,255},[{tr,{x,0},{t_integer,{0,255}}},{integer,43}]}.
    {move,{literal,<<"c">>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_r25_SUITE.erl",555}]}.
    {call,1,{f,265}}. % peek8/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,254},[{tr,{x,0},{t_integer,{0,255}}},{integer,99}]}.
    {move,{literal,<<"de">>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_r25_SUITE.erl",556}]}.
    {call,1,{f,265}}. % peek8/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,253},[{tr,{x,0},{t_integer,{0,255}}},{integer,100}]}.
    {'catch',{y,6},{f,234}}.
    {move,{literal,<<100,101,0:1>>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_r25_SUITE.erl",557}]}.
    {call,1,{f,265}}. % peek8/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
  {label,234}.
    {catch_end,{y,6}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<100,101,0:1>>]},{x,1}}.
    {move,{atom,peek8},{x,0}}.
    {line,[{scope,[13,14]},{location,"bs_match_r25_SUITE.erl",557}]}.
    {call,3,{f,843}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<146,108>>},{x,0}}.
    {line,[{scope,[13,14]},{location,"bs_match_r25_SUITE.erl",559}]}.
    {call,1,{f,267}}. % peek16/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,65535}}}]}}.
    {test,is_eq_exact,
          {f,252},
          [{tr,{x,0},{t_integer,{0,65535}}},{integer,37484}]}.
    {move,{literal,<<146,113,21,190>>},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_match_r25_SUITE.erl",560}]}.
    {call,1,{f,267}}. % peek16/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,65535}}}]}}.
    {test,is_eq_exact,
          {f,251},
          [{tr,{x,0},{t_integer,{0,65535}}},{integer,37489}]}.
    {'catch',{y,5},{f,235}}.
    {move,{literal,<<"\b">>},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_match_r25_SUITE.erl",561}]}.
    {call,1,{f,267}}. % peek16/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,65535}}}]}}.
  {label,235}.
    {catch_end,{y,5}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<"\b">>]},{x,1}}.
    {move,{atom,peek16},{x,0}}.
    {line,[{scope,"\v\f"},{location,"bs_match_r25_SUITE.erl",561}]}.
    {call,3,{f,843}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,4},{f,236}}.
    {move,{literal,<<0,42:7>>},{x,0}}.
    {line,[{scope,"\v\f"},{location,"bs_match_r25_SUITE.erl",562}]}.
    {call,1,{f,267}}. % peek16/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,65535}}}]}}.
  {label,236}.
    {catch_end,{y,4}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<0,42:7>>]},{x,1}}.
    {move,{atom,peek16},{x,0}}.
    {line,[{scope,"\t\n"},{location,"bs_match_r25_SUITE.erl",562}]}.
    {call,3,{f,843}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,3},{f,237}}.
    {move,{literal,<<1,2,3,4,5>>},{x,0}}.
    {line,[{scope,"\t\n"},{location,"bs_match_r25_SUITE.erl",563}]}.
    {call,1,{f,267}}. % peek16/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,65535}}}]}}.
  {label,237}.
    {catch_end,{y,3}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<1,2,3,4,5>>]},{x,1}}.
    {move,{atom,peek16},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_r25_SUITE.erl",563}]}.
    {call,3,{f,843}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<127:7>>},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_r25_SUITE.erl",565}]}.
    {call,1,{f,263}}. % peek7/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,127}}}]}}.
    {test,is_eq_exact,{f,250},[{tr,{x,0},{t_integer,{0,127}}},{integer,127}]}.
    {move,{literal,<<200,19:6>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",566}]}.
    {call,1,{f,263}}. % peek7/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,127}}}]}}.
    {test,is_eq_exact,{f,249},[{tr,{x,0},{t_integer,{0,127}}},{integer,100}]}.
    {'catch',{y,2},{f,238}}.
    {move,{literal,<<1,2>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",567}]}.
    {call,1,{f,263}}. % peek7/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,127}}}]}}.
  {label,238}.
    {catch_end,{y,2}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<1,2>>]},{x,1}}.
    {move,{atom,peek7},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r25_SUITE.erl",567}]}.
    {call,3,{f,843}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,-1},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r25_SUITE.erl",569}]}.
    {call,2,{f,269}}. % unit_opt/2
    {'%',{var_info,{x,0},[{type,{t_integer,{1,8}}}]}}.
    {test,is_eq_exact,{f,248},[{tr,{x,0},{t_integer,{1,8}}},{integer,1}]}.
    {move,{integer,-1},{x,1}}.
    {move,{integer,8},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",570}]}.
    {call,2,{f,269}}. % unit_opt/2
    {'%',{var_info,{x,0},[{type,{t_integer,{1,8}}}]}}.
    {test,is_eq_exact,{f,247},[{tr,{x,0},{t_integer,{1,8}}},{integer,8}]}.
    {move,{literal,<<0,0,0,1,97,98,99>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",572}]}.
    {call,1,{f,276}}. % unit_opt_2/1
    {test,is_eq_exact,{f,246},[{x,0},{literal,<<0,0,0,1,97,98,99>>}]}.
    {move,{literal,<<0,0,0,2,100,101,102>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",573}]}.
    {call,1,{f,276}}. % unit_opt_2/1
    {test,is_eq_exact,{f,245},[{x,0},{literal,<<"def">>}]}.
    {'catch',{y,1},{f,239}}.
    {move,{literal,<<0,0,0,1,33:7>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",574}]}.
    {call,1,{f,276}}. % unit_opt_2/1
  {label,239}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,244},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,0},{f,240}}.
    {move,{literal,<<0,0,0,2,55:7>>},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r25_SUITE.erl",575}]}.
    {call,1,{f,276}}. % unit_opt_2/1
  {label,240}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,243},[{x,0},2,{atom,'EXIT'}]}.
    {move,{literal,<<0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1>>},{x,0}}.
    {line,[{scope,[1,2]},{location,"bs_match_r25_SUITE.erl",577}]}.
    {call,1,{f,281}}. % unit_opt_3/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,242},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<0,0,0,0,0,0,0,0>>}]}.
    {move,{literal,<<0,0,0,0,0,0,0,1>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",578}]}.
    {call,1,{f,281}}. % unit_opt_3/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,241},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<0,0,0,0,0,0,0,1>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,7}.
    return.
  {label,241}.
    {badmatch,{x,0}}.
  {label,242}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",577}]}.
    {badmatch,{x,0}}.
  {label,243}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",575}]}.
    {badmatch,{x,0}}.
  {label,244}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",574}]}.
    {badmatch,{x,0}}.
  {label,245}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",573}]}.
    {badmatch,{x,0}}.
  {label,246}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",572}]}.
    {badmatch,{x,0}}.
  {label,247}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",570}]}.
    {badmatch,{x,0}}.
  {label,248}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",569}]}.
    {badmatch,{x,0}}.
  {label,249}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",566}]}.
    {badmatch,{x,0}}.
  {label,250}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",565}]}.
    {badmatch,{x,0}}.
  {label,251}.
    {line,[{scope,"\f"},{location,"bs_match_r25_SUITE.erl",560}]}.
    {badmatch,{x,0}}.
  {label,252}.
    {line,[{scope,"\f"},{location,"bs_match_r25_SUITE.erl",559}]}.
    {badmatch,{x,0}}.
  {label,253}.
    {line,[{scope,[14]},{location,"bs_match_r25_SUITE.erl",556}]}.
    {badmatch,{x,0}}.
  {label,254}.
    {line,[{scope,[14]},{location,"bs_match_r25_SUITE.erl",555}]}.
    {badmatch,{x,0}}.
  {label,255}.
    {line,[{scope,[14]},{location,"bs_match_r25_SUITE.erl",553}]}.
    {badmatch,{x,0}}.
  {label,256}.
    {line,[{scope,[14]},{location,"bs_match_r25_SUITE.erl",552}]}.
    {badmatch,{x,0}}.
  {label,257}.
    {line,[{scope,[14]},{location,"bs_match_r25_SUITE.erl",551}]}.
    {badmatch,{x,0}}.
  {label,258}.
    {line,[{scope,[14]},{location,"bs_match_r25_SUITE.erl",550}]}.
    {badmatch,{x,0}}.
  {label,259}.
    {line,[{scope,[14]},{location,"bs_match_r25_SUITE.erl",549}]}.
    {badmatch,{x,0}}.


{function, peek1, 1, 261}.
  {label,260}.
    {line,[{location,"bs_match_r25_SUITE.erl",582}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,peek1},1}.
  {label,261}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,260},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[582,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {move,{x,1},{x,0}}.
    return.


{function, peek7, 1, 263}.
  {label,262}.
    {line,[{location,"bs_match_r25_SUITE.erl",584}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,peek7},1}.
  {label,263}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,262},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,7},
           1,
           {field_flags,[{anno,[584,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_unit,{f,262},[{x,1},7]}.
    {move,{x,2},{x,0}}.
    return.


{function, peek8, 1, 265}.
  {label,264}.
    {line,[{location,"bs_match_r25_SUITE.erl",586}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,peek8},1}.
  {label,265}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,264},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[586,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_unit,{f,264},[{x,1},8]}.
    {move,{x,2},{x,0}}.
    return.


{function, peek16, 1, 267}.
  {label,266}.
    {line,[{location,"bs_match_r25_SUITE.erl",588}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,peek16},1}.
  {label,267}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,266},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,16},
           1,
           {field_flags,[{anno,[588,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_unit,{f,266},[{x,1},16]}.
    {move,{x,2},{x,0}}.
    return.


{function, unit_opt, 2, 269}.
  {label,268}.
    {line,[{location,"bs_match_r25_SUITE.erl",590}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,unit_opt},2}.
  {label,269}.
    {'%',{var_info,{x,0},[{type,{t_integer,{1,8}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{-1,-1}}}]}}.
    {select_val,{tr,{x,0},{t_integer,{1,8}}},
                {f,274},
                {list,[{integer,1},{f,271},{integer,8},{f,270}]}}.
  {label,270}.
    {move,{literal,<<"ÿ">>},{x,0}}.
    {jump,{f,272}}.
  {label,271}.
    {move,{literal,<<127:7>>},{x,0}}.
  {label,272}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_test_unit,{f,273},[{x,0},8]}.
    {move,{integer,8},{x,0}}.
    return.
  {label,273}.
    {move,{integer,1},{x,0}}.
    return.
  {label,274}.
    {line,[{location,"bs_match_r25_SUITE.erl",592}]}.
    {case_end,{x,0}}.


{function, unit_opt_2, 1, 276}.
  {label,275}.
    {line,[{location,"bs_match_r25_SUITE.erl",602}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,unit_opt_2},1}.
  {label,276}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,275},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[602,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,275},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {atom,all},
           8,
           {field_flags,[{anno,[602,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {select_val,{tr,{x,2},{t_integer,{0,4294967295}}},
                {f,279},
                {list,[{integer,1},{f,278},{integer,2},{f,277}]}}.
  {label,277}.
    {line,[{location,"bs_match_r25_SUITE.erl",607}]}.
    {bs_create_bin,{f,0},
                   0,2,8,
                   {x,0},
                   {list,[{atom,append},
                          1,8,nil,
                          {tr,{x,1},{t_bitstring,8,false}},
                          {atom,all}]}}.
  {label,278}.
    {call_only,1,{f,1684}}. % id/1
  {label,279}.
    {line,[{location,"bs_match_r25_SUITE.erl",603}]}.
    if_end.


{function, unit_opt_3, 1, 281}.
  {label,280}.
    {line,[{location,"bs_match_r25_SUITE.erl",611}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,unit_opt_3},1}.
  {label,281}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,64,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_binary2,
          {f,282},
          2,
          [{tr,{x,1},{t_bs_context,64}},
           {integer,8},
           8,
           {field_flags,[{anno,[615,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {move,{x,1},{x,0}}.
    return.
  {label,282}.
    {line,[{location,"bs_match_r25_SUITE.erl",615}]}.
    {badmatch,{x,0}}.


{function, shared_sub_bins, 1, 284}.
  {label,283}.
    {line,[{location,"bs_match_r25_SUITE.erl",618}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,shared_sub_bins},1}.
  {label,284}.
    {test,is_list,{f,283},[{x,0}]}.
    {allocate,0,0}.
    {move,nil,{x,1}}.
    {move,{integer,0},{x,2}}.
    {move,{literal,<<1,2,3,4,5>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",619}]}.
    {call,3,{f,287}}. % sum/3
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_integer,{0,'+inf'}},
                       2 => {t_list,{t_bitstring,8,false},nil}}}}]}}.
    {test,is_eq_exact,
          {f,285},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_list,{t_bitstring,8,false},nil}}}},
           {literal,{15,[<<>>,<<5>>,<<4,5>>,<<3,4,5>>,<<2,3,4,5>>]}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,285}.
    {badmatch,{x,0}}.


{function, sum, 3, 287}.
  {label,286}.
    {line,[{location,"bs_match_r25_SUITE.erl",622}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,sum},3}.
  {label,287}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{0,'+inf'}}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,3}}.
    {test,bs_get_integer2,
          {f,288},
          4,
          [{tr,{x,3},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[622,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {bs_get_tail,{x,3},{x,0},5}.
    {line,[{location,"bs_match_r25_SUITE.erl",623}]}.
    {gc_bif,'+',
            {f,0},
            5,
            [{tr,{x,2},{t_integer,{0,'+inf'}}},{tr,{x,4},{t_integer,{0,255}}}],
            {x,2}}.
    {test_heap,2,3}.
    {put_list,{x,0},{x,1},{x,1}}.
    {call_only,3,{f,287}}. % sum/3
  {label,288}.
    {test,bs_test_tail2,{f,286},[{x,3},0]}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{x,2},{x,1}]}}.
    return.


{function, bin_and_float, 1, 290}.
  {label,289}.
    {line,[{location,"bs_match_r25_SUITE.erl",627}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bin_and_float},1}.
  {label,290}.
    {test,is_list,{f,289},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{float,0.0},{x,1}}.
    {move,{literal,<<63,240,0,0,0,0,0,0,64,0,0,0,0,0,0,0,64,8,0,0,0,0,0,0>>},
          {x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",628}]}.
    {call,2,{f,294}}. % bin_and_float/2
    {'%',{var_info,{x,0},[{type,{t_float,any}}]}}.
    {test,is_eq_exact,{f,292},[{tr,{x,0},{t_float,any}},{float,14.0}]}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",630}]}.
    {call,1,{f,1684}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,2}}.
    {trim,1,0}.
    {move,{literal,<<0,0,0,2:6>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",631}]}.
    {call,3,{f,1838}}. % '-bin_and_float/1-lbc$^0/2-0-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {test,is_eq_exact,
          {f,291},
          [{tr,{x,0},{t_bitstring,8,true}},{literal,<<>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,291}.
    {badmatch,{x,0}}.
  {label,292}.
    {line,[{location,"bs_match_r25_SUITE.erl",628}]}.
    {badmatch,{x,0}}.


{function, bin_and_float, 2, 294}.
  {label,293}.
    {line,[{location,"bs_match_r25_SUITE.erl",635}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bin_and_float},2}.
  {label,294}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,64,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_float,any}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,2}}.
    {bs_get_position,{x,2},{x,3},3}.
    {test,bs_get_float2,
          {f,295},
          4,
          [{tr,{x,2},{t_bs_context,64}},
           {integer,64},
           1,
           {field_flags,[{anno,[635,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_float2,
          {f,295},
          5,
          [{tr,{x,2},{t_bs_context,64}},
           {integer,64},
           1,
           {field_flags,[{anno,[635,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_get_float2,
          {f,295},
          6,
          [{tr,{x,2},{t_bs_context,64}},
           {integer,64},
           1,
           {field_flags,[{anno,[635,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {bs_get_tail,{x,2},{x,0},7}.
    {fmove,{x,4},{fr,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",638}]}.
    {bif,fmul,{f,0},[{fr,0},{fr,0}],{fr,0}}.
    {fmove,{x,1},{fr,1}}.
    {bif,fadd,{f,0},[{fr,1},{fr,0}],{fr,0}}.
    {fmove,{x,5},{fr,1}}.
    {bif,fmul,{f,0},[{fr,1},{fr,1}],{fr,1}}.
    {bif,fadd,{f,0},[{fr,0},{fr,1}],{fr,0}}.
    {fmove,{x,6},{fr,1}}.
    {bif,fmul,{f,0},[{fr,1},{fr,1}],{fr,1}}.
    {bif,fadd,{f,0},[{fr,0},{fr,1}],{fr,0}}.
    {test_heap,{alloc,[{words,0},{floats,1},{funs,0}]},1}.
    {fmove,{fr,0},{x,1}}.
    {call_only,2,{f,294}}. % bin_and_float/2
  {label,295}.
    {bs_set_position,{x,2},{x,3}}.
    {test,bs_test_tail2,{f,293},[{x,2},0]}.
    {move,{x,1},{x,0}}.
    return.


{function, dec_subidentifiers, 1, 297}.
  {label,296}.
    {line,[{location,"bs_match_r25_SUITE.erl",641}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,dec_subidentifiers},1}.
  {label,297}.
    {test,is_list,{f,296},[{x,0}]}.
    {allocate,0,0}.
    {move,nil,{x,2}}.
    {move,{integer,0},{x,1}}.
    {move,{integer,2},{x,3}}.
    {move,{literal,<<170,227,1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",643}]}.
    {call,4,{f,302}}. % do_dec_subidentifiers/4
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_list,{t_integer,any},nil},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
          {f,300},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_list,{t_integer,any},nil},
                          2 => {t_bitstring,8,false}}}},
           {literal,{[],<<1,2,3>>}}]}.
    {move,nil,{x,2}}.
    {move,{integer,0},{x,1}}.
    {move,{integer,2},{x,3}}.
    {move,{literal,<<170,13,1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",644}]}.
    {call,4,{f,302}}. % do_dec_subidentifiers/4
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_list,{t_integer,any},nil},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
          {f,299},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_list,{t_integer,any},nil},
                          2 => {t_bitstring,8,false}}}},
           {literal,{[5389],<<1,2,3>>}}]}.
    {move,{literal,[1,2,3]},{x,2}}.
    {move,{atom,any},{x,1}}.
    {move,{integer,0},{x,3}}.
    {move,{atom,not_a_binary},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",645}]}.
    {call,4,{f,307}}. % dec_subidentifiers/4
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_list,{t_integer,any},nil},
                       2 =>
                           {t_union,
                               {t_atom,[not_a_binary]},
                               none,none,none,
                               {t_bitstring,8,false}}}}}]}}.
    {test,is_eq_exact,
        {f,298},
        [{tr,{x,0},
             {t_tuple,2,true,
                 #{1 => {t_list,{t_integer,any},nil},
                   2 =>
                       {t_union,
                           {t_atom,[not_a_binary]},
                           none,none,none,
                           {t_bitstring,8,false}}}}},
         {literal,{[3,2,1],not_a_binary}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,298}.
    {badmatch,{x,0}}.
  {label,299}.
    {line,[{location,"bs_match_r25_SUITE.erl",644}]}.
    {badmatch,{x,0}}.
  {label,300}.
    {line,[{location,"bs_match_r25_SUITE.erl",642}]}.
    {badmatch,{x,0}}.


{function, do_dec_subidentifiers, 4, 302}.
  {label,301}.
    {line,[{location,"bs_match_r25_SUITE.erl",648}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_dec_subidentifiers},4}.
  {label,302}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,0}}}]}}.
    {'%',{var_info,{x,2},[{type,nil}]}}.
    {'%',{var_info,{x,3},[{type,{t_integer,{2,2}}}]}}.
    {allocate,2,4}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",649}]}.
    {call,4,{f,307}}. % dec_subidentifiers/4
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_list,{t_integer,any},nil},
                       2 =>
                           {t_union,
                               {t_atom,[not_a_binary]},
                               none,none,none,
                               {t_bitstring,8,false}}}}}]}}.
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,1}}.
    {move,nil,{x,2}}.
    {move,{integer,2},{x,3}}.
    {move,{x,1},{x,0}}.
    {move,{integer,0},{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",650}]}.
    {call,4,{f,311}}. % dec_subidentifiers2/4
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_list,{t_integer,any},nil},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
        {f,305},
        [{tr,{x,0},
             {t_tuple,2,true,
                 #{1 => {t_list,{t_integer,any},nil},
                   2 => {t_bitstring,8,false}}}},
         {tr,{y,0},
             {t_tuple,2,true,
                 #{1 => {t_list,{t_integer,any},nil},
                   2 =>
                       {t_union,
                           {t_atom,[not_a_binary]},
                           none,none,none,
                           {t_bitstring,8,false}}}}}]}.
    {move,nil,{x,2}}.
    {move,{integer,0},{x,1}}.
    {move,{integer,2},{x,3}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",651}]}.
    {call,4,{f,319}}. % dec_subidentifiers4/4
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_list,{t_integer,any},nil},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
          {f,304},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_list,{t_integer,any},nil},
                          2 => {t_bitstring,8,false}}}},
           {tr,{y,0},
               {t_tuple,2,true,
                        #{1 => {t_list,{t_integer,any},nil},
                          2 => {t_bitstring,8,false}}}}]}.
    {move,nil,{x,2}}.
    {move,{integer,0},{x,1}}.
    {move,{integer,2},{x,3}}.
    {move,{y,1},{x,0}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {line,[{location,"bs_match_r25_SUITE.erl",652}]}.
    {call,4,{f,315}}. % dec_subidentifiers3/4
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_list,{t_integer,any},nil},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
          {f,303},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_list,{t_integer,any},nil},
                          2 => {t_bitstring,8,false}}}},
           {tr,{y,0},
               {t_tuple,2,true,
                        #{1 => {t_list,{t_integer,any},nil},
                          2 => {t_bitstring,8,false}}}}]}.
    {deallocate,1}.
    return.
  {label,303}.
    {badmatch,{x,0}}.
  {label,304}.
    {line,[{location,"bs_match_r25_SUITE.erl",651}]}.
    {badmatch,{x,0}}.
  {label,305}.
    {line,[{location,"bs_match_r25_SUITE.erl",650}]}.
    {badmatch,{x,0}}.


{function, dec_subidentifiers, 4, 307}.
  {label,306}.
    {line,[{location,"bs_match_r25_SUITE.erl",654}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,dec_subidentifiers},4}.
  {label,307}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[not_a_binary]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_union,{t_atom,[any]},
                                   none,
                                   {t_integer,any},
                                   none,none}}]}}.
    {'%',{var_info,{x,2},[{type,{t_list,{t_integer,any},nil}}]}}.
    {'%',{var_info,{x,3},[{type,{t_integer,{'-inf',2}}}]}}.
    {test,is_eq_exact,{f,308},[{tr,{x,3},{t_integer,{'-inf',2}}},{integer,0}]}.
    {allocate,1,3}.
    {move,{x,0},{y,0}}.
    {move,{x,2},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",655}]}.
    {call_ext,1,{extfunc,lists,reverse,1}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{x,0},{y,0}]}}.
    {deallocate,1}.
    return.
  {label,308}.
    {test,bs_start_match3,{f,306},4,[{x,0}],{x,4}}.
    {bs_get_position,{x,4},{x,5},5}.
    {test,bs_get_integer2,
          {f,309},
          6,
          [{tr,{x,4},{t_bs_context,8}},
           {integer,1},
           1,
           {field_flags,[{anno,[656,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,is_eq_exact,{f,309},[{tr,{x,6},{t_integer,{0,1}}},{integer,1}]}.
    {test,bs_get_integer2,
          {f,309},
          6,
          [{tr,{x,4},{t_bs_context,1}},
           {integer,7},
           1,
           {field_flags,[{anno,[656,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,bs_get_binary2,
          {f,309},
          7,
          [{tr,{x,4},{t_bs_context,1}},
           {atom,all},
           8,
           {field_flags,[{anno,[656,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,7}}.
    {line,[{location,"bs_match_r25_SUITE.erl",657}]}.
    {gc_bif,'bsl',
            {f,0},
            8,
            [{tr,{x,1},
                 {t_union,{t_atom,[any]},none,{t_integer,any},none,none}},
             {integer,7}],
            {x,0}}.
    {gc_bif,'bor',
            {f,0},
            8,
            [{tr,{x,0},{t_integer,any}},{tr,{x,6},{t_integer,{0,127}}}],
            {x,0}}.
    {gc_bif,'-',{f,0},8,[{tr,{x,3},{t_integer,{'-inf',2}}},{integer,1}],{x,3}}.
    {move,{x,0},{x,1}}.
    {move,{x,7},{x,0}}.
    {call_only,4,{f,307}}. % dec_subidentifiers/4
  {label,309}.
    {bs_set_position,{x,4},{x,5}}.
    {test,bs_get_integer2,
          {f,306},
          5,
          [{tr,{x,4},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[658,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {bs_get_tail,{x,4},{x,0},6}.
    {line,[{location,"bs_match_r25_SUITE.erl",659}]}.
    {gc_bif,'bsl',
            {f,0},
            6,
            [{tr,{x,1},
                 {t_union,{t_atom,[any]},none,{t_integer,any},none,none}},
             {integer,7}],
            {x,1}}.
    {gc_bif,'bor',
            {f,0},
            6,
            [{tr,{x,1},{t_integer,any}},{tr,{x,5},{t_integer,{0,255}}}],
            {x,1}}.
    {gc_bif,'-',{f,0},4,[{tr,{x,3},{t_integer,{'-inf',2}}},{integer,1}],{x,3}}.
    {test_heap,2,4}.
    {put_list,{x,1},{x,2},{x,2}}.
    {move,{integer,0},{x,1}}.
    {call_only,4,{f,307}}. % dec_subidentifiers/4


{function, dec_subidentifiers2, 4, 311}.
  {label,310}.
    {line,[{location,"bs_match_r25_SUITE.erl",661}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,dec_subidentifiers2},4}.
  {label,311}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,any}}]}}.
    {'%',{var_info,{x,2},[{type,{t_list,{t_integer,any},nil}}]}}.
    {'%',{var_info,{x,3},[{type,{t_integer,{'-inf',2}}}]}}.
    {bs_start_match4,{atom,no_fail},4,{x,0},{x,4}}.
    {bs_get_position,{x,4},{x,5},5}.
    {bs_get_tail,{x,4},{x,6},6}.
    {test,is_eq_exact,{f,312},[{tr,{x,3},{t_integer,{'-inf',2}}},{integer,0}]}.
    {allocate,1,7}.
    {move,{x,6},{y,0}}.
    {move,{x,2},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",662}]}.
    {call_ext,1,{extfunc,lists,reverse,1}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{x,0},{y,0}]}}.
    {deallocate,1}.
    return.
  {label,312}.
    {test,bs_get_integer2,
          {f,313},
          6,
          [{tr,{x,4},{t_bs_context,8}},
           {integer,1},
           1,
           {field_flags,[{anno,[663,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,is_eq_exact,{f,313},[{tr,{x,6},{t_integer,{0,1}}},{integer,1}]}.
    {test,bs_get_integer2,
          {f,313},
          6,
          [{tr,{x,4},{t_bs_context,1}},
           {integer,7},
           1,
           {field_flags,[{anno,[663,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,bs_get_binary2,
          {f,313},
          7,
          [{tr,{x,4},{t_bs_context,1}},
           {atom,all},
           8,
           {field_flags,[{anno,[663,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,7}}.
    {line,[{location,"bs_match_r25_SUITE.erl",664}]}.
    {gc_bif,'bsl',{f,0},8,[{tr,{x,1},{t_integer,any}},{integer,7}],{x,0}}.
    {gc_bif,'bor',
            {f,0},
            8,
            [{tr,{x,0},{t_integer,any}},{tr,{x,6},{t_integer,{0,127}}}],
            {x,0}}.
    {gc_bif,'-',{f,0},8,[{tr,{x,3},{t_integer,{'-inf',2}}},{integer,1}],{x,3}}.
    {move,{x,0},{x,1}}.
    {move,{x,7},{x,0}}.
    {call_only,4,{f,311}}. % dec_subidentifiers2/4
  {label,313}.
    {bs_set_position,{x,4},{x,5}}.
    {test,bs_get_integer2,
          {f,310},
          5,
          [{tr,{x,4},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[665,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {bs_get_tail,{x,4},{x,0},6}.
    {line,[{location,"bs_match_r25_SUITE.erl",666}]}.
    {gc_bif,'bsl',{f,0},6,[{tr,{x,1},{t_integer,any}},{integer,7}],{x,1}}.
    {gc_bif,'bor',
            {f,0},
            6,
            [{tr,{x,1},{t_integer,any}},{tr,{x,5},{t_integer,{0,255}}}],
            {x,1}}.
    {gc_bif,'-',{f,0},4,[{tr,{x,3},{t_integer,{'-inf',2}}},{integer,1}],{x,3}}.
    {test_heap,2,4}.
    {put_list,{x,1},{x,2},{x,2}}.
    {move,{integer,0},{x,1}}.
    {call_only,4,{f,311}}. % dec_subidentifiers2/4


{function, dec_subidentifiers3, 4, 315}.
  {label,314}.
    {line,[{location,"bs_match_r25_SUITE.erl",668}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,dec_subidentifiers3},4}.
  {label,315}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,any}}]}}.
    {'%',{var_info,{x,2},[{type,{t_list,{t_integer,any},nil}}]}}.
    {'%',{var_info,{x,3},[{type,{t_integer,{'-inf',2}}}]}}.
    {test,is_eq_exact,{f,316},[{tr,{x,3},{t_integer,{'-inf',2}}},{integer,0}]}.
    {allocate,1,3}.
    {move,{x,0},{y,0}}.
    {move,{x,2},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",669}]}.
    {call_ext,1,{extfunc,lists,reverse,1}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{x,0},{y,0}]}}.
    {deallocate,1}.
    return.
  {label,316}.
    {bs_start_match4,{atom,no_fail},4,{x,0},{x,4}}.
    {bs_get_position,{x,4},{x,5},5}.
    {test,bs_get_integer2,
          {f,317},
          6,
          [{tr,{x,4},{t_bs_context,8}},
           {integer,1},
           1,
           {field_flags,[{anno,[670,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,is_eq_exact,{f,317},[{tr,{x,6},{t_integer,{0,1}}},{integer,1}]}.
    {test,bs_get_integer2,
          {f,317},
          6,
          [{tr,{x,4},{t_bs_context,1}},
           {integer,7},
           1,
           {field_flags,[{anno,[670,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,bs_get_binary2,
          {f,317},
          7,
          [{tr,{x,4},{t_bs_context,1}},
           {atom,all},
           8,
           {field_flags,[{anno,[670,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,7}}.
    {line,[{location,"bs_match_r25_SUITE.erl",671}]}.
    {gc_bif,'bsl',{f,0},8,[{tr,{x,1},{t_integer,any}},{integer,7}],{x,0}}.
    {gc_bif,'bor',
            {f,0},
            8,
            [{tr,{x,0},{t_integer,any}},{tr,{x,6},{t_integer,{0,127}}}],
            {x,0}}.
    {gc_bif,'-',{f,0},8,[{tr,{x,3},{t_integer,{'-inf',2}}},{integer,1}],{x,3}}.
    {move,{x,0},{x,1}}.
    {move,{x,7},{x,0}}.
    {call_only,4,{f,315}}. % dec_subidentifiers3/4
  {label,317}.
    {bs_set_position,{x,4},{x,5}}.
    {test,bs_get_integer2,
          {f,314},
          5,
          [{tr,{x,4},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[672,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {bs_get_tail,{x,4},{x,0},6}.
    {line,[{location,"bs_match_r25_SUITE.erl",673}]}.
    {gc_bif,'bsl',{f,0},6,[{tr,{x,1},{t_integer,any}},{integer,7}],{x,1}}.
    {gc_bif,'bor',
            {f,0},
            6,
            [{tr,{x,1},{t_integer,any}},{tr,{x,5},{t_integer,{0,255}}}],
            {x,1}}.
    {gc_bif,'-',{f,0},4,[{tr,{x,3},{t_integer,{'-inf',2}}},{integer,1}],{x,3}}.
    {test_heap,2,4}.
    {put_list,{x,1},{x,2},{x,2}}.
    {move,{integer,0},{x,1}}.
    {call_only,4,{f,315}}. % dec_subidentifiers3/4


{function, dec_subidentifiers4, 4, 319}.
  {label,318}.
    {line,[{location,"bs_match_r25_SUITE.erl",675}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,dec_subidentifiers4},4}.
  {label,319}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,any}}]}}.
    {'%',{var_info,{x,2},[{type,{t_list,{t_integer,any},nil}}]}}.
    {'%',{var_info,{x,3},[{type,{t_integer,{'-inf',2}}}]}}.
    {bs_start_match4,{atom,no_fail},4,{x,0},{x,4}}.
    {bs_get_position,{x,4},{x,5},5}.
    {test,bs_get_integer2,
          {f,320},
          6,
          [{tr,{x,4},{t_bs_context,8}},
           {integer,1},
           1,
           {field_flags,[{anno,[675,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,is_eq_exact,{f,320},[{tr,{x,6},{t_integer,{0,1}}},{integer,1}]}.
    {test,bs_get_integer2,
          {f,320},
          6,
          [{tr,{x,4},{t_bs_context,1}},
           {integer,7},
           1,
           {field_flags,[{anno,[675,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,bs_get_binary2,
          {f,320},
          7,
          [{tr,{x,4},{t_bs_context,1}},
           {atom,all},
           8,
           {field_flags,[{anno,[675,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,7}}.
    {test,is_ne_exact,{f,322},[{tr,{x,3},{t_integer,{'-inf',2}}},{integer,0}]}.
    {line,[{location,"bs_match_r25_SUITE.erl",676}]}.
    {gc_bif,'bsl',{f,0},8,[{tr,{x,1},{t_integer,any}},{integer,7}],{x,0}}.
    {gc_bif,'bor',
            {f,0},
            8,
            [{tr,{x,0},{t_integer,any}},{tr,{x,6},{t_integer,{0,127}}}],
            {x,0}}.
    {gc_bif,'-',{f,0},8,[{tr,{x,3},{t_integer,{'-inf',2}}},{integer,1}],{x,3}}.
    {move,{x,0},{x,1}}.
    {move,{x,7},{x,0}}.
    {call_only,4,{f,319}}. % dec_subidentifiers4/4
  {label,320}.
    {bs_set_position,{x,4},{x,5}}.
    {test,bs_get_integer2,
          {f,321},
          5,
          [{tr,{x,4},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[677,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {bs_get_tail,{x,4},{x,4},6}.
    {test,is_ne_exact,{f,322},[{tr,{x,3},{t_integer,{'-inf',2}}},{integer,0}]}.
    {line,[{location,"bs_match_r25_SUITE.erl",678}]}.
    {gc_bif,'bsl',{f,0},6,[{tr,{x,1},{t_integer,any}},{integer,7}],{x,0}}.
    {gc_bif,'bor',
            {f,0},
            6,
            [{tr,{x,0},{t_integer,any}},{tr,{x,5},{t_integer,{0,255}}}],
            {x,0}}.
    {gc_bif,'-',{f,0},5,[{tr,{x,3},{t_integer,{'-inf',2}}},{integer,1}],{x,1}}.
    {test_heap,2,5}.
    {put_list,{x,0},{x,2},{x,2}}.
    {move,{x,1},{x,3}}.
    {move,{integer,0},{x,1}}.
    {move,{x,4},{x,0}}.
    {call_only,4,{f,319}}. % dec_subidentifiers4/4
  {label,321}.
    {test,is_eq_exact,{f,318},[{tr,{x,3},{t_integer,{'-inf',2}}},{integer,0}]}.
  {label,322}.
    {allocate,1,3}.
    {move,{x,0},{y,0}}.
    {move,{x,2},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",680}]}.
    {call_ext,1,{extfunc,lists,reverse,1}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{x,0},{y,0}]}}.
    {deallocate,1}.
    return.


{function, skip_optional_tag, 1, 324}.
  {label,323}.
    {line,[{location,"bs_match_r25_SUITE.erl",683}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,skip_optional_tag},1}.
  {label,324}.
    {test,is_list,{f,323},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<"*">>},{x,1}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",684}]}.
    {call,2,{f,330}}. % skip_optional_tag/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[missing]},
                     none,none,
                     [{{2,{t_atom,[ok]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[ok]},
                             2 =>
                                 {t_union,
                                     {t_atom,[blurf]},
                                     none,none,none,
                                     {t_bitstring,8,false}}}}}],
                     none}}]}}.
    {test,is_eq_exact,
        {f,328},
        [{tr,{x,0},
             {t_union,
                 {t_atom,[missing]},
                 none,none,
                 [{{2,{t_atom,[ok]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[ok]},
                         2 =>
                             {t_union,
                                 {t_atom,[blurf]},
                                 none,none,none,
                                 {t_bitstring,8,false}}}}}],
                 none}},
         {literal,{ok,<<>>}}]}.
    {move,{literal,<<42,1>>},{x,1}}.
    {move,{literal,<<42,1>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",685}]}.
    {call,2,{f,330}}. % skip_optional_tag/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[missing]},
                     none,none,
                     [{{2,{t_atom,[ok]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[ok]},
                             2 =>
                                 {t_union,
                                     {t_atom,[blurf]},
                                     none,none,none,
                                     {t_bitstring,8,false}}}}}],
                     none}}]}}.
    {test,is_eq_exact,
        {f,327},
        [{tr,{x,0},
             {t_union,
                 {t_atom,[missing]},
                 none,none,
                 [{{2,{t_atom,[ok]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[ok]},
                         2 =>
                             {t_union,
                                 {t_atom,[blurf]},
                                 none,none,none,
                                 {t_bitstring,8,false}}}}}],
                 none}},
         {literal,{ok,<<>>}}]}.
    {move,{literal,<<42,1,2,3>>},{x,1}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",686}]}.
    {call,2,{f,330}}. % skip_optional_tag/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[missing]},
                     none,none,
                     [{{2,{t_atom,[ok]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[ok]},
                             2 =>
                                 {t_union,
                                     {t_atom,[blurf]},
                                     none,none,none,
                                     {t_bitstring,8,false}}}}}],
                     none}}]}}.
    {test,is_eq_exact,
        {f,326},
        [{tr,{x,0},
             {t_union,
                 {t_atom,[missing]},
                 none,none,
                 [{{2,{t_atom,[ok]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[ok]},
                         2 =>
                             {t_union,
                                 {t_atom,[blurf]},
                                 none,none,none,
                                 {t_bitstring,8,false}}}}}],
                 none}},
         {literal,{ok,<<1,2,3>>}}]}.
    {move,{atom,blurf},{x,1}}.
    {move,{literal,<<2:3>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",687}]}.
    {call,2,{f,330}}. % skip_optional_tag/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[missing]},
                     none,none,
                     [{{2,{t_atom,[ok]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[ok]},
                             2 =>
                                 {t_union,
                                     {t_atom,[blurf]},
                                     none,none,none,
                                     {t_bitstring,8,false}}}}}],
                     none}}]}}.
    {test,is_eq_exact,
        {f,325},
        [{tr,{x,0},
             {t_union,
                 {t_atom,[missing]},
                 none,none,
                 [{{2,{t_atom,[ok]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[ok]},
                         2 =>
                             {t_union,
                                 {t_atom,[blurf]},
                                 none,none,none,
                                 {t_bitstring,8,false}}}}}],
                 none}},
         {atom,missing}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,325}.
    {badmatch,{x,0}}.
  {label,326}.
    {line,[{location,"bs_match_r25_SUITE.erl",686}]}.
    {badmatch,{x,0}}.
  {label,327}.
    {line,[{location,"bs_match_r25_SUITE.erl",685}]}.
    {badmatch,{x,0}}.
  {label,328}.
    {line,[{location,"bs_match_r25_SUITE.erl",684}]}.
    {badmatch,{x,0}}.


{function, skip_optional_tag, 2, 330}.
  {label,329}.
    {line,[{location,"bs_match_r25_SUITE.erl",690}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,skip_optional_tag},2}.
  {label,330}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_union,{t_atom,[blurf]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_test_tail2,{f,331},[{x,0},0]}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{atom,ok},{x,1}]}}.
    return.
  {label,331}.
    {test,bs_get_integer2,
          {f,332},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[692,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,332},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {atom,all},
           8,
           {field_flags,[{anno,[692,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,0}}.
    {test,bs_start_match3,{f,332},3,[{x,1}],{x,1}}.
    {test,bs_get_integer2,
          {f,332},
          3,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[692,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_tail,{x,1},{x,1},4}.
    {test,is_eq_exact,
          {f,332},
          [{tr,{x,3},{t_integer,{0,255}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {call_only,2,{f,330}}. % skip_optional_tag/2
  {label,332}.
    {move,{atom,missing},{x,0}}.
    return.


{function, decode_integer, 1, 334}.
  {label,333}.
    {line,[{location,"bs_match_r25_SUITE.erl",696}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,decode_integer},1}.
  {label,334}.
    {allocate,0,0}.
    {move,{literal,<<"*+">>},{x,1}}.
    {move,{atom,whatever},{x,2}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",697}]}.
    {call,3,{f,338}}. % decode_integer/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,any},
                                     2 => {t_bitstring,8,false},
                                     3 => {t_atom,[whatever]}}}}]}}.
    {test,is_eq_exact,
          {f,336},
          [{tr,{x,0},
               {t_tuple,3,true,
                        #{1 => {t_integer,any},
                          2 => {t_bitstring,8,false},
                          3 => {t_atom,[whatever]}}}},
           {literal,{10795,<<"+">>,whatever}}]}.
    {move,{literal,<<143,19>>},{x,1}}.
    {move,{atom,whatever},{x,2}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",698}]}.
    {call,3,{f,338}}. % decode_integer/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,any},
                                     2 => {t_bitstring,8,false},
                                     3 => {t_atom,[whatever]}}}}]}}.
    {test,is_eq_exact,
          {f,335},
          [{tr,{x,0},
               {t_tuple,3,true,
                        #{1 => {t_integer,any},
                          2 => {t_bitstring,8,false},
                          3 => {t_atom,[whatever]}}}},
           {literal,{-28909,<<19>>,whatever}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,335}.
    {badmatch,{x,0}}.
  {label,336}.
    {line,[{location,"bs_match_r25_SUITE.erl",697}]}.
    {badmatch,{x,0}}.


{function, decode_integer, 3, 338}.
  {label,337}.
    {line,[{location,"bs_match_r25_SUITE.erl",701}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,decode_integer},3}.
  {label,338}.
    {'%',{var_info,{x,0},[{type,{t_integer,{1,1}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,16,false}}]}}.
    {'%',{var_info,{x,2},[{type,{t_atom,[whatever]}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,3}}.
    {test,bs_get_integer2,
          {f,337},
          4,
          [{tr,{x,3},{t_bs_context,16}},
           {integer,1},
           1,
           {field_flags,[{anno,[701,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_integer2,
          {f,337},
          5,
          [{tr,{x,3},{t_bs_context,1}},
           {integer,7},
           1,
           {field_flags,[{anno,[701,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_get_binary2,
          {f,337},
          6,
          [{tr,{x,3},{t_bs_context,1}},
           {atom,all},
           8,
           {field_flags,[{anno,[701,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,339},[{tr,{x,4},{t_integer,{0,1}}},{integer,0}]}.
    {line,[{location,"bs_match_r25_SUITE.erl",702}]}.
    {bs_create_bin,{f,0},
                   0,6,8,
                   {x,0},
                   {list,[{atom,integer},
                          0,1,nil,
                          {integer,0},
                          {integer,1},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,5},{t_integer,{0,127}}},
                          {integer,7},
                          {atom,binary},
                          3,8,nil,
                          {tr,{x,3},{t_bitstring,8,false}},
                          {atom,all}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_skip_bits2,
          {f,341},
          [{x,1},
           {integer,1},
           8,
           {field_flags,[{anno,[702,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_get_tail,{x,1},{x,1},2}.
    {line,[{location,"bs_match_r25_SUITE.erl",703}]}.
    {gc_bif,byte_size,{f,0},2,[{tr,{x,0},{t_bitstring,8,false}}],{x,2}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,3}}.
    {test,bs_get_integer2,
          {f,340},
          4,
          [{tr,{x,3},{t_bs_context,8}},
           {tr,{x,2},{t_integer,{0,288230376151711743}}},
           8,
           {field_flags,[{anno,[704,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,340},[{x,3},0]}.
    {test_heap,4,3}.
    {put_tuple2,{x,0},{list,[{x,2},{x,1},{atom,whatever}]}}.
    return.
  {label,339}.
    {line,[{location,"bs_match_r25_SUITE.erl",707}]}.
    {bs_create_bin,{f,0},
                   0,6,8,
                   {x,0},
                   {list,[{atom,integer},
                          0,1,nil,
                          {integer,1},
                          {integer,1},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,5},{t_integer,{0,127}}},
                          {integer,7},
                          {atom,binary},
                          3,8,nil,
                          {tr,{x,3},{t_bitstring,8,false}},
                          {atom,all}]}}.
    {bs_start_match4,{atom,no_fail},6,{x,0},{x,1}}.
    {test,bs_skip_bits2,
          {f,343},
          [{x,1},
           {integer,1},
           8,
           {field_flags,[{anno,[707,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_get_tail,{x,1},{x,1},6}.
    {line,[{location,"bs_match_r25_SUITE.erl",708}]}.
    {gc_bif,byte_size,{f,0},6,[{tr,{x,0},{t_bitstring,8,false}}],{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",709}]}.
    {bs_create_bin,{f,0},
                   0,6,8,
                   {x,2},
                   {list,[{atom,integer},
                          1,1,nil,
                          {tr,{x,5},{t_integer,{0,127}}},
                          {integer,8},
                          {atom,binary},
                          2,8,nil,
                          {tr,{x,3},{t_bitstring,8,false}},
                          {atom,all}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,3}}.
    {test,bs_get_integer2,
          {f,342},
          4,
          [{tr,{x,3},{t_bs_context,8}},
           {tr,{x,0},{t_integer,{0,288230376151711743}}},
           8,
           {field_flags,[{anno,[709,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,342},[{x,3},0]}.
    {line,[{location,"bs_match_r25_SUITE.erl",710}]}.
    {gc_bif,'*',
            {f,0},
            5,
            [{tr,{x,0},{t_integer,{0,288230376151711743}}},{integer,8}],
            {x,0}}.
    {gc_bif,'-',
            {f,0},
            5,
            [{tr,{x,0},{t_integer,{0,2305843009213693944}}},{integer,1}],
            {x,0}}.
    {gc_bif,'bsl',
            {f,0},
            5,
            [{integer,1},{tr,{x,0},{t_integer,{-1,2305843009213693943}}}],
            {x,0}}.
    {gc_bif,'-',
            {f,0},
            5,
            [{tr,{x,4},{t_integer,{0,'+inf'}}},
             {tr,{x,0},{t_integer,{0,'+inf'}}}],
            {x,0}}.
    {test_heap,4,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1},{atom,whatever}]}}.
    return.
  {label,340}.
    {line,[{location,"bs_match_r25_SUITE.erl",704}]}.
    {badmatch,{x,0}}.
  {label,341}.
    {line,[{location,"bs_match_r25_SUITE.erl",702}]}.
    {badmatch,{x,0}}.
  {label,342}.
    {line,[{location,"bs_match_r25_SUITE.erl",709}]}.
    {badmatch,{x,2}}.
  {label,343}.
    {line,[{location,"bs_match_r25_SUITE.erl",707}]}.
    {badmatch,{x,0}}.


{function, wfbm, 1, 345}.
  {label,344}.
    {line,[{location,"bs_match_r25_SUITE.erl",715}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,wfbm},1}.
  {label,345}.
    {test,is_list,{f,344},[{x,0}]}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{literal,<<" ">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",718}]}.
    {call,1,{f,360}}. % check_for_dot_or_space/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_atom,[nomatch]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[nomatch]},
                             2 => {t_integer,{0,'+inf'}}}}},
                      {{2,{t_atom,[ok]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[ok]},2 => {t_bitstring,8,false}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,358},
          [{tr,{x,0},
               {t_union,none,none,none,
                        [{{2,{t_atom,[nomatch]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[nomatch]},
                                     2 => {t_integer,{0,'+inf'}}}}},
                         {{2,{t_atom,[ok]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[ok]},
                                     2 => {t_bitstring,8,false}}}}],
                        none}},
           {literal,{nomatch,0}}]}.
    {move,{literal,<<" abc">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",719}]}.
    {call,1,{f,360}}. % check_for_dot_or_space/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_atom,[nomatch]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[nomatch]},
                             2 => {t_integer,{0,'+inf'}}}}},
                      {{2,{t_atom,[ok]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[ok]},2 => {t_bitstring,8,false}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,357},
          [{tr,{x,0},
               {t_union,none,none,none,
                        [{{2,{t_atom,[nomatch]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[nomatch]},
                                     2 => {t_integer,{0,'+inf'}}}}},
                         {{2,{t_atom,[ok]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[ok]},
                                     2 => {t_bitstring,8,false}}}}],
                        none}},
           {literal,{nomatch,0}}]}.
    {move,{literal,<<"abcde 34555">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",720}]}.
    {call,1,{f,360}}. % check_for_dot_or_space/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_atom,[nomatch]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[nomatch]},
                             2 => {t_integer,{0,'+inf'}}}}},
                      {{2,{t_atom,[ok]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[ok]},2 => {t_bitstring,8,false}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,356},
          [{tr,{x,0},
               {t_union,none,none,none,
                        [{{2,{t_atom,[nomatch]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[nomatch]},
                                     2 => {t_integer,{0,'+inf'}}}}},
                         {{2,{t_atom,[ok]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[ok]},
                                     2 => {t_bitstring,8,false}}}}],
                        none}},
           {literal,{ok,<<"abcde">>}}]}.
    {move,{literal,<<".gurka">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",721}]}.
    {call,1,{f,360}}. % check_for_dot_or_space/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_atom,[nomatch]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[nomatch]},
                             2 => {t_integer,{0,'+inf'}}}}},
                      {{2,{t_atom,[ok]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[ok]},2 => {t_bitstring,8,false}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,355},
          [{tr,{x,0},
               {t_union,none,none,none,
                        [{{2,{t_atom,[nomatch]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[nomatch]},
                                     2 => {t_integer,{0,'+inf'}}}}},
                         {{2,{t_atom,[ok]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[ok]},
                                     2 => {t_bitstring,8,false}}}}],
                        none}},
           {literal,{nomatch,0}}]}.
    {move,{literal,<<"g.urka">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",722}]}.
    {call,1,{f,360}}. % check_for_dot_or_space/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_atom,[nomatch]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[nomatch]},
                             2 => {t_integer,{0,'+inf'}}}}},
                      {{2,{t_atom,[ok]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[ok]},2 => {t_bitstring,8,false}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,354},
          [{tr,{x,0},
               {t_union,none,none,none,
                        [{{2,{t_atom,[nomatch]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[nomatch]},
                                     2 => {t_integer,{0,'+inf'}}}}},
                         {{2,{t_atom,[ok]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[ok]},
                                     2 => {t_bitstring,8,false}}}}],
                        none}},
           {literal,{nomatch,1}}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",724}]}.
    {call,1,{f,368}}. % get_tail/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[nomatch]},
                     none,none,
                     [{{2,{t_atom,[ok]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[ok]},2 => {t_bitstring,8,false}}}},
                      {{2,{t_atom,[skip]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[skip]},
                             2 => {t_integer,{16,'+inf'}}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,353},
          [{tr,{x,0},
               {t_union,{t_atom,[nomatch]},
                        none,none,
                        [{{2,{t_atom,[ok]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[ok]},
                                     2 => {t_bitstring,8,false}}}},
                         {{2,{t_atom,[skip]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[skip]},
                                     2 => {t_integer,{16,'+inf'}}}}}],
                        none}},
           {atom,nomatch}]}.
    {move,{literal,<<"200x/2007/10/23/blurf ">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",725}]}.
    {call,1,{f,368}}. % get_tail/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[nomatch]},
                     none,none,
                     [{{2,{t_atom,[ok]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[ok]},2 => {t_bitstring,8,false}}}},
                      {{2,{t_atom,[skip]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[skip]},
                             2 => {t_integer,{16,'+inf'}}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,352},
          [{tr,{x,0},
               {t_union,{t_atom,[nomatch]},
                        none,none,
                        [{{2,{t_atom,[ok]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[ok]},
                                     2 => {t_bitstring,8,false}}}},
                         {{2,{t_atom,[skip]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[skip]},
                                     2 => {t_integer,{16,'+inf'}}}}}],
                        none}},
           {literal,{ok,<<"2007/10/23/blurf">>}}]}.
    {move,{literal,<<"200x/2007/10/23/blurf.">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",726}]}.
    {call,1,{f,368}}. % get_tail/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[nomatch]},
                     none,none,
                     [{{2,{t_atom,[ok]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[ok]},2 => {t_bitstring,8,false}}}},
                      {{2,{t_atom,[skip]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[skip]},
                             2 => {t_integer,{16,'+inf'}}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,351},
          [{tr,{x,0},
               {t_union,{t_atom,[nomatch]},
                        none,none,
                        [{{2,{t_atom,[ok]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[ok]},
                                     2 => {t_bitstring,8,false}}}},
                         {{2,{t_atom,[skip]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[skip]},
                                     2 => {t_integer,{16,'+inf'}}}}}],
                        none}},
           {literal,{skip,21}}]}.
    {move,{literal,<<"200y.2007.10.23.blurf ">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",727}]}.
    {call,1,{f,368}}. % get_tail/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[nomatch]},
                     none,none,
                     [{{2,{t_atom,[ok]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[ok]},2 => {t_bitstring,8,false}}}},
                      {{2,{t_atom,[skip]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[skip]},
                             2 => {t_integer,{16,'+inf'}}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,350},
          [{tr,{x,0},
               {t_union,{t_atom,[nomatch]},
                        none,none,
                        [{{2,{t_atom,[ok]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[ok]},
                                     2 => {t_bitstring,8,false}}}},
                         {{2,{t_atom,[skip]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[skip]},
                                     2 => {t_integer,{16,'+inf'}}}}}],
                        none}},
           {atom,nomatch}]}.
    {'catch',{y,1},{f,346}}.
    {move,{literal,{no,binary,at,all}},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",728}]}.
    {call,1,{f,368}}. % get_tail/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,346}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,349},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,0},{f,347}}.
    {move,{atom,no_binary},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r25_SUITE.erl",729}]}.
    {call,1,{f,368}}. % get_tail/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,347}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,348},[{x,0},2,{atom,'EXIT'}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,348}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",729}]}.
    {badmatch,{x,0}}.
  {label,349}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",728}]}.
    {badmatch,{x,0}}.
  {label,350}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",727}]}.
    {badmatch,{x,0}}.
  {label,351}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",726}]}.
    {badmatch,{x,0}}.
  {label,352}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",725}]}.
    {badmatch,{x,0}}.
  {label,353}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",724}]}.
    {badmatch,{x,0}}.
  {label,354}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",722}]}.
    {badmatch,{x,0}}.
  {label,355}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",721}]}.
    {badmatch,{x,0}}.
  {label,356}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",720}]}.
    {badmatch,{x,0}}.
  {label,357}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",719}]}.
    {badmatch,{x,0}}.
  {label,358}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",718}]}.
    {badmatch,{x,0}}.


{function, check_for_dot_or_space, 1, 360}.
  {label,359}.
    {line,[{location,"bs_match_r25_SUITE.erl",732}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,check_for_dot_or_space},1}.
  {label,360}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {move,{integer,0},{x,1}}.
    {call_only,2,{f,362}}. % check_for_dot_or_space/2


{function, check_for_dot_or_space, 2, 362}.
  {label,361}.
    {line,[{location,"bs_match_r25_SUITE.erl",735}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,check_for_dot_or_space},2}.
  {label,362}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,'+inf'}}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,2}}.
    {test,bs_match_string,{f,363},[{x,2},8,{string,<<" ">>}]}.
    {test,is_eq_exact,{f,363},[{tr,{x,1},{t_integer,{0,'+inf'}}},{integer,0}]}.
    {move,{literal,{nomatch,0}},{x,0}}.
    return.
  {label,363}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,2}}.
    {test,bs_get_binary2,
          {f,366},
          3,
          [{tr,{x,2},{t_bs_context,8}},
           {tr,{x,1},{t_integer,{0,'+inf'}}},
           8,
           {field_flags,[{anno,[739,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,366},
          4,
          [{tr,{x,2},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[739,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {select_val,{tr,{x,2},{t_integer,{0,255}}},
                {f,366},
                {list,[{integer,32},{f,365},{integer,46},{f,364}]}}.
  {label,364}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{atom,nomatch},{x,1}]}}.
    return.
  {label,365}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{atom,ok},{x,3}]}}.
    return.
  {label,366}.
    {line,[{location,"bs_match_r25_SUITE.erl",744}]}.
    {gc_bif,'+',{f,0},2,[{tr,{x,1},{t_integer,{0,'+inf'}}},{integer,1}],{x,1}}.
    {call_only,2,{f,362}}. % check_for_dot_or_space/2


{function, get_tail, 1, 368}.
  {label,367}.
    {line,[{location,"bs_match_r25_SUITE.erl",747}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,get_tail},1}.
  {label,368}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[no_binary]},
                     none,none,
                     [{{4,{t_atom,[no]}},
                       {t_tuple,4,true,
                           #{1 => {t_atom,[no]},
                             2 => {t_atom,[binary]},
                             3 => {t_atom,[at]},
                             4 => {t_atom,[all]}}}}],
                     {t_bitstring,16,false}}}]}}.
    {test,is_ne_exact,
          {f,370},
          [{tr,{x,0},
               {t_union,{t_atom,[no_binary]},
                        none,none,
                        [{{4,{t_atom,[no]}},
                          {t_tuple,4,true,
                                   #{1 => {t_atom,[no]},
                                     2 => {t_atom,[binary]},
                                     3 => {t_atom,[at]},
                                     4 => {t_atom,[all]}}}}],
                        {t_bitstring,16,false}}},
           {literal,<<>>}]}.
    {test,bs_start_match3,{f,371},1,[{x,0}],{x,1}}.
    {test,bs_get_binary2,
          {f,371},
          2,
          [{tr,{x,1},{t_bs_context,16}},
           {integer,16},
           8,
           {field_flags,[{anno,[750,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{x,0},3}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,1}}.
    {test,bs_skip_bits2,
          {f,370},
          [{x,1},
           {integer,3},
           8,
           {field_flags,[{anno,[752,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_match_string,{f,370},[{x,1},16,{string,<<"x/">>}]}.
    {test,bs_get_binary2,
          {f,370},
          2,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,4},
           8,
           {field_flags,[{anno,[752,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_match_string,{f,370},[{x,1},8,{string,<<"/">>}]}.
    {test,bs_get_binary2,
          {f,370},
          3,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,2},
           8,
           {field_flags,[{anno,[752,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_match_string,{f,370},[{x,1},8,{string,<<"/">>}]}.
    {test,bs_get_binary2,
          {f,370},
          4,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,2},
           8,
           {field_flags,[{anno,[752,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_match_string,{f,370},[{x,1},8,{string,<<"/">>}]}.
    {test,bs_test_tail2,{f,370},[{x,1},0]}.
    {allocate,3,5}.
    {move,{x,4},{y,0}}.
    {move,{x,3},{y,1}}.
    {move,{x,2},{y,2}}.
    {line,[{location,"bs_match_r25_SUITE.erl",753}]}.
    {call,1,{f,360}}. % check_for_dot_or_space/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_atom,[nomatch]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[nomatch]},
                             2 => {t_integer,{0,'+inf'}}}}},
                      {{2,{t_atom,[ok]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[ok]},2 => {t_bitstring,8,false}}}}],
                     none}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_eq_exact,{f,369},[{x,1},{atom,ok}]}.
    {line,[{location,"bs_match_r25_SUITE.erl",755}]}.
    {bs_create_bin,{f,0},
                   3,1,8,
                   {x,0},
                   {list,[{atom,append},
                          1,8,nil,
                          {tr,{y,2},{t_bitstring,8,false}},
                          {atom,all},
                          {atom,string},
                          0,8,nil,
                          {string,<<"/">>},
                          {integer,1},
                          {atom,binary},
                          3,8,nil,
                          {tr,{y,1},{t_bitstring,8,false}},
                          {atom,all},
                          {atom,string},
                          0,8,nil,
                          {string,<<"/">>},
                          {integer,1},
                          {atom,binary},
                          5,8,nil,
                          {tr,{y,0},{t_bitstring,8,false}},
                          {atom,all},
                          {atom,string},
                          0,8,nil,
                          {string,<<"/">>},
                          {integer,1},
                          {atom,binary},
                          7,8,nil,
                          {tr,{x,0},{t_bitstring,8,false}},
                          {atom,all}]}}.
    {put_tuple2,{x,0},{list,[{atom,ok},{x,0}]}}.
    {deallocate,3}.
    return.
  {label,369}.
    {line,[{location,"bs_match_r25_SUITE.erl",756}]}.
    {gc_bif,'+',
            {f,0},
            1,
            [{tr,{x,0},{t_integer,{0,'+inf'}}},{integer,16}],
            {x,0}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,skip},{x,0}]}}.
    {deallocate,3}.
    return.
  {label,370}.
    {move,{atom,nomatch},{x,0}}.
    return.
  {label,371}.
    {line,[{location,"bs_match_r25_SUITE.erl",750}]}.
    {badmatch,{x,0}}.


{function, degenerated_match, 1, 373}.
  {label,372}.
    {line,[{location,"bs_match_r25_SUITE.erl",761}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,degenerated_match},1}.
  {label,373}.
    {test,is_list,{f,372},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",762}]}.
    {call,1,{f,381}}. % degenerated_match_1/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[error]},
                                   none,
                                   {t_integer,{0,288230376151711743}},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,379},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,
                        {t_integer,{0,288230376151711743}},
                        none,none}},
           {atom,error}]}.
    {move,{literal,<<1:1>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",763}]}.
    {call,1,{f,381}}. % degenerated_match_1/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[error]},
                                   none,
                                   {t_integer,{0,288230376151711743}},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,378},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,
                        {t_integer,{0,288230376151711743}},
                        none,none}},
           {integer,1}]}.
    {move,{literal,<<"*+">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",764}]}.
    {call,1,{f,381}}. % degenerated_match_1/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[error]},
                                   none,
                                   {t_integer,{0,288230376151711743}},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,377},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,
                        {t_integer,{0,288230376151711743}},
                        none,none}},
           {integer,2}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",766}]}.
    {call,1,{f,384}}. % degenerated_match_2/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[error,no_split]},
                     none,none,
                     {t_tuple,2,true,
                         #{1 => {t_bitstring,8,false},
                           2 => {t_bitstring,1,false}}},
                     none}}]}}.
    {test,is_eq_exact,
          {f,376},
          [{tr,{x,0},
               {t_union,{t_atom,[error,no_split]},
                        none,none,
                        {t_tuple,2,true,
                                 #{1 => {t_bitstring,8,false},
                                   2 => {t_bitstring,1,false}}},
                        none}},
           {atom,error}]}.
    {move,{literal,<<1,2>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",767}]}.
    {call,1,{f,384}}. % degenerated_match_2/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[error,no_split]},
                     none,none,
                     {t_tuple,2,true,
                         #{1 => {t_bitstring,8,false},
                           2 => {t_bitstring,1,false}}},
                     none}}]}}.
    {test,is_eq_exact,
          {f,375},
          [{tr,{x,0},
               {t_union,{t_atom,[error,no_split]},
                        none,none,
                        {t_tuple,2,true,
                                 #{1 => {t_bitstring,8,false},
                                   2 => {t_bitstring,1,false}}},
                        none}},
           {atom,no_split}]}.
    {move,{literal,<<1,2,3,4,5>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",768}]}.
    {call,1,{f,384}}. % degenerated_match_2/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[error,no_split]},
                     none,none,
                     {t_tuple,2,true,
                         #{1 => {t_bitstring,8,false},
                           2 => {t_bitstring,1,false}}},
                     none}}]}}.
    {test,is_eq_exact,
          {f,374},
          [{tr,{x,0},
               {t_union,{t_atom,[error,no_split]},
                        none,none,
                        {t_tuple,2,true,
                                 #{1 => {t_bitstring,8,false},
                                   2 => {t_bitstring,1,false}}},
                        none}},
           {literal,{<<1,2,3,4>>,<<5>>}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,374}.
    {badmatch,{x,0}}.
  {label,375}.
    {line,[{location,"bs_match_r25_SUITE.erl",767}]}.
    {badmatch,{x,0}}.
  {label,376}.
    {line,[{location,"bs_match_r25_SUITE.erl",766}]}.
    {badmatch,{x,0}}.
  {label,377}.
    {line,[{location,"bs_match_r25_SUITE.erl",764}]}.
    {badmatch,{x,0}}.
  {label,378}.
    {line,[{location,"bs_match_r25_SUITE.erl",763}]}.
    {badmatch,{x,0}}.
  {label,379}.
    {line,[{location,"bs_match_r25_SUITE.erl",762}]}.
    {badmatch,{x,0}}.


{function, degenerated_match_1, 1, 381}.
  {label,380}.
    {line,[{location,"bs_match_r25_SUITE.erl",772}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,degenerated_match_1},1}.
  {label,381}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {test,is_eq_exact,
          {f,382},
          [{tr,{x,0},{t_bitstring,1,false}},{literal,<<>>}]}.
    {move,{atom,error},{x,0}}.
    return.
  {label,382}.
    {line,[{location,"bs_match_r25_SUITE.erl",773}]}.
    {gc_bif,byte_size,{f,0},1,[{tr,{x,0},{t_bitstring,1,false}}],{x,0}}.
    return.


{function, degenerated_match_2, 1, 384}.
  {label,383}.
    {line,[{location,"bs_match_r25_SUITE.erl",775}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,degenerated_match_2},1}.
  {label,384}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,385},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<>>}]}.
    {move,{atom,error},{x,0}}.
    return.
  {label,385}.
    {line,[{location,"bs_match_r25_SUITE.erl",777}]}.
    {gc_bif,byte_size,{f,0},1,[{tr,{x,0},{t_bitstring,8,false}}],{x,1}}.
    {test,is_ge,
          {f,386},
          [{tr,{x,1},{t_integer,{0,288230376151711743}}},{integer,5}]}.
    {move,{integer,4},{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",779}]}.
    {call_ext_only,2,{extfunc,erlang,split_binary,2}}.
  {label,386}.
    {move,{atom,no_split},{x,0}}.
    return.


{function, bs_sum, 1, 388}.
  {label,387}.
    {line,[{location,"bs_match_r25_SUITE.erl",784}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bs_sum},1}.
  {label,388}.
    {test,is_list,{f,387},[{x,0}]}.
    {allocate,4,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3}]}}.
    {move,nil,{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",785}]}.
    {call,1,{f,406}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,0}}}]}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",786}]}.
    {call,1,{f,406}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,'+inf'}}}]}}.
    {test,is_eq_exact,{f,404},[{tr,{x,0},{t_integer,{0,'+inf'}}},{integer,0}]}.
    {move,{literal,"*"},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",787}]}.
    {call,1,{f,406}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{1,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,403},
          [{tr,{x,0},{t_integer,{1,'+inf'}}},{integer,42}]}.
    {move,{literal,<<1>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",788}]}.
    {call,1,{f,406}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,'+inf'}}}]}}.
    {test,is_eq_exact,{f,402},[{tr,{x,0},{t_integer,{0,'+inf'}}},{integer,1}]}.
    {move,{literal,[1,2,3,4]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",789}]}.
    {call,1,{f,406}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{1,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,401},
          [{tr,{x,0},{t_integer,{1,'+inf'}}},{integer,10}]}.
    {move,{literal,<<1,2,3,4,5>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",790}]}.
    {call,1,{f,406}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,400},
          [{tr,{x,0},{t_integer,{0,'+inf'}}},{integer,15}]}.
    {move,{literal,[1,2,3|<<4,5,6>>]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",791}]}.
    {call,1,{f,406}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{1,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,399},
          [{tr,{x,0},{t_integer,{1,'+inf'}}},{integer,21}]}.
    {move,{literal,[1,2,3|{4,5}]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",792}]}.
    {call,1,{f,406}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{1,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,398},
          [{tr,{x,0},{t_integer,{1,'+inf'}}},{integer,15}]}.
    {move,{literal,[1,2,3|zero]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",793}]}.
    {call,1,{f,406}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{1,'+inf'}}}]}}.
    {test,is_eq_exact,{f,397},[{tr,{x,0},{t_integer,{1,'+inf'}}},{integer,6}]}.
    {move,{literal,[1,2,3|0]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",794}]}.
    {call,1,{f,406}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{1,'+inf'}}}]}}.
    {test,is_eq_exact,{f,396},[{tr,{x,0},{t_integer,{1,'+inf'}}},{integer,6}]}.
    {move,{literal,[1,2,3|one]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",795}]}.
    {call,1,{f,406}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{1,'+inf'}}}]}}.
    {test,is_eq_exact,{f,395},[{tr,{x,0},{t_integer,{1,'+inf'}}},{integer,7}]}.
    {'catch',{y,3},{f,389}}.
    {move,{literal,{too,big,tuple}},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",797}]}.
    {call,1,{f,406}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,389}.
    {catch_end,{y,3}}.
    {line,[{scope,[7,8]},{location,"bs_match_r25_SUITE.erl",797}]}.
    {call,1,{f,841}}. % fc/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,2},{f,390}}.
    {move,{literal,[1,2,3|{too,big,tuple}]},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_r25_SUITE.erl",798}]}.
    {call,1,{f,406}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{1,'+inf'}}}]}}.
  {label,390}.
    {catch_end,{y,2}}.
    {line,[{scope,[5,6]},{location,"bs_match_r25_SUITE.erl",798}]}.
    {call,1,{f,841}}. % fc/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r25_SUITE.erl",800}]}.
    {call,1,{f,413}}. % sneaky_alias/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_nil,{f,394},[{tr,{x,0},{t_list,any,nil}}]}.
    {move,{literal,<<0,0,2,47,0,5,234,71>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",801}]}.
    {call,1,{f,1684}}. % id/1
    {call,1,{f,413}}. % sneaky_alias/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,393},
          [{tr,{x,0},{t_list,any,nil}},{literal,[559,387655]}]}.
    {'catch',{y,1},{f,391}}.
    {move,{literal,<<1>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",802}]}.
    {call,1,{f,1684}}. % id/1
    {call,1,{f,413}}. % sneaky_alias/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
  {label,391}.
    {catch_end,{y,1}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<1>>]},{x,1}}.
    {move,{atom,sneaky_alias},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r25_SUITE.erl",802}]}.
    {call,3,{f,843}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,0},{f,392}}.
    {move,{integer,4},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r25_SUITE.erl",803}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {call,1,{f,413}}. % sneaky_alias/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
  {label,392}.
    {catch_end,{y,0}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[[1,2,3,4]]},{x,1}}.
    {move,{atom,sneaky_alias},{x,0}}.
    {call_last,3,{f,843},4}. % fc/3
  {label,393}.
    {line,[{scope,[0,4]},{location,"bs_match_r25_SUITE.erl",801}]}.
    {badmatch,{x,0}}.
  {label,394}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",800}]}.
    {badmatch,{x,0}}.
  {label,395}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",795}]}.
    {badmatch,{x,0}}.
  {label,396}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",794}]}.
    {badmatch,{x,0}}.
  {label,397}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",793}]}.
    {badmatch,{x,0}}.
  {label,398}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",792}]}.
    {badmatch,{x,0}}.
  {label,399}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",791}]}.
    {badmatch,{x,0}}.
  {label,400}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",790}]}.
    {badmatch,{x,0}}.
  {label,401}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",789}]}.
    {badmatch,{x,0}}.
  {label,402}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",788}]}.
    {badmatch,{x,0}}.
  {label,403}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",787}]}.
    {badmatch,{x,0}}.
  {label,404}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",786}]}.
    {badmatch,{x,0}}.


{function, bs_sum_1, 1, 406}.
  {label,405}.
    {line,[{location,"bs_match_r25_SUITE.erl",806}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bs_sum_1},1}.
  {label,406}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[one,zero]},
                     {t_list,
                         {t_integer,{1,42}},
                         {t_union,
                             {t_atom,[one,zero]},
                             nil,
                             {t_integer,{0,0}},
                             [{{2,{t_integer,{4,4}}},
                               {t_tuple,2,true,
                                   #{1 => {t_integer,{4,4}},
                                     2 => {t_integer,{5,5}}}}},
                              {{3,{t_atom,[too]}},
                               {t_tuple,3,true,
                                   #{1 => {t_atom,[too]},
                                     2 => {t_atom,[big]},
                                     3 => {t_atom,[tuple]}}}}],
                             {t_bitstring,8,false}}},
                     {t_integer,{0,0}},
                     [{{2,{t_integer,{4,4}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{4,4}},2 => {t_integer,{5,5}}}}},
                      {{3,{t_atom,[too]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[too]},
                             2 => {t_atom,[big]},
                             3 => {t_atom,[tuple]}}}}],
                     {t_bitstring,8,false}}}]}}.
    {test,bs_start_match3,{f,408},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,407},
          2,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[806,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {call,1,{f,406}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,'+inf'}}}]}}.
    {gc_bif,'+',
            {f,0},
            1,
            [{tr,{y,0},{t_integer,{0,255}}},{tr,{x,0},{t_integer,{0,'+inf'}}}],
            {x,0}}.
    {deallocate,1}.
    return.
  {label,407}.
    {test,bs_test_tail2,{f,405},[{x,1},0]}.
    {move,{integer,0},{x,0}}.
    return.
  {label,408}.
    {test,is_nonempty_list,{f,409},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",807}]}.
    {call,1,{f,406}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,'+inf'}}}]}}.
    {gc_bif,'+',
            {f,0},
            1,
            [{tr,{y,0},{t_integer,{1,42}}},{tr,{x,0},{t_integer,{0,'+inf'}}}],
            {x,0}}.
    {deallocate,1}.
    return.
  {label,409}.
    {test,is_tuple,
          {f,410},
          [{tr,{x,0},
               {t_union,{t_atom,[one,zero]},
                        nil,
                        {t_integer,{0,0}},
                        [{{2,{t_integer,{4,4}}},
                          {t_tuple,2,true,
                                   #{1 => {t_integer,{4,4}},
                                     2 => {t_integer,{5,5}}}}},
                         {{3,{t_atom,[too]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[too]},
                                     2 => {t_atom,[big]},
                                     3 => {t_atom,[tuple]}}}}],
                        none}}]}.
    {test,test_arity,{f,405},[{x,0},2]}.
    {move,{integer,9},{x,0}}.
    return.
  {label,410}.
    {test,is_atom,
          {f,411},
          [{tr,{x,0},
               {t_union,{t_atom,[one,zero]},
                        nil,
                        {t_integer,{0,0}},
                        none,none}}]}.
    {test,is_ne_exact,{f,411},[{x,0},{atom,zero}]}.
    {move,{integer,1},{x,0}}.
    return.
  {label,411}.
    {move,{integer,0},{x,0}}.
    return.


{function, sneaky_alias, 1, 413}.
  {label,412}.
    {line,[{location,"bs_match_r25_SUITE.erl",815}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,sneaky_alias},1}.
  {label,413}.
    {test,bs_start_match3,{f,412},1,[{x,0}],{x,1}}.
    {test,bs_test_tail2,{f,414},[{x,1},0]}.
    {call_ext_only,1,{extfunc,erlang,binary_to_list,1}}.
  {label,414}.
    {test,bs_get_integer2,
          {f,412},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[816,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,412},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {atom,all},
           8,
           {field_flags,[{anno,[816,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",816}]}.
    {call,1,{f,413}}. % sneaky_alias/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.


{function, coverage, 1, 416}.
  {label,415}.
    {line,[{location,"bs_match_r25_SUITE.erl",818}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,coverage},1}.
  {label,416}.
    {test,is_list,{f,415},[{x,0}]}.
    {allocate_heap,4,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3}]}}.
    {make_fun3,{f,1836},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_number,any}}]}}.
    {move,{literal,<<>>},{x,2}}.
    {move,{integer,0},{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",819}]}.
    {call,3,{f,448}}. % coverage_fold/3
    {'%',{var_info,{x,0},[{type,{t_number,any}}]}}.
    {test,is_eq_exact,{f,446},[{tr,{x,0},{t_number,any}},{integer,0}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1834},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_number,any}}]}}.
    {move,{literal,<<1,2,3>>},{x,2}}.
    {move,{integer,0},{x,1}}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",820}]}.
    {call,3,{f,448}}. % coverage_fold/3
    {'%',{var_info,{x,0},[{type,{t_number,any}}]}}.
    {test,is_eq_exact,{f,445},[{tr,{x,0},{t_number,any}},{integer,6}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1832},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_number,any}}]}}.
    {'catch',{y,3},{f,417}}.
    {move,{literal,[a,b,c]},{x,2}}.
    {move,{integer,0},{x,1}}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",821}]}.
    {call,3,{f,448}}. % coverage_fold/3
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,417}.
    {catch_end,{y,3}}.
    {line,[{scope,[7,8]},{location,"bs_match_r25_SUITE.erl",821}]}.
    {call,1,{f,841}}. % fc/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<"*">>},{x,1}}.
    {move,{atom,float},{x,2}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_r25_SUITE.erl",825}]}.
    {call,3,{f,451}}. % coverage_build/3
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,2,true,
         #{1 => {t_bs_matchable,1},
           2 =>
            {t_union,
             {t_atom,[float,not_a_tuple]},
             none,none,
             [{{3,{t_atom,[x]}},
               {t_tuple,3,true,
                #{1 => {t_atom,[x]},
                  2 =>
                   {t_union,{t_atom,[y]},none,{t_integer,{42,42}},none,none},
                  3 =>
                   {t_union,
                    {t_atom,[z]},
                    none,
                    {t_integer,{43,43}},
                    none,none}}}}],
             none}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {test,bs_get_float2,
          {f,444},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[825,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,444},[{tr,{x,2},{t_float,any}},{float,42.0}]}.
    {test,bs_test_tail2,{f,444},[{x,1},0]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,
        {f,444},
        [{tr,{x,1},
             {t_union,
                 {t_atom,[float,not_a_tuple]},
                 none,none,
                 [{{3,{t_atom,[x]}},
                   {t_tuple,3,true,
                       #{1 => {t_atom,[x]},
                         2 =>
                             {t_union,
                                 {t_atom,[y]},
                                 none,
                                 {t_integer,{42,42}},
                                 none,none},
                         3 =>
                             {t_union,
                                 {t_atom,[z]},
                                 none,
                                 {t_integer,{43,43}},
                                 none,none}}}}],
                 none}},
         {atom,float}]}.
    {move,{literal,<<>>},{x,1}}.
    {move,{atom,not_a_tuple},{x,2}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",826}]}.
    {call,3,{f,451}}. % coverage_build/3
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,2,true,
         #{1 => {t_bs_matchable,1},
           2 =>
            {t_union,
             {t_atom,[float,not_a_tuple]},
             none,none,
             [{{3,{t_atom,[x]}},
               {t_tuple,3,true,
                #{1 => {t_atom,[x]},
                  2 =>
                   {t_union,{t_atom,[y]},none,{t_integer,{42,42}},none,none},
                  3 =>
                   {t_union,
                    {t_atom,[z]},
                    none,
                    {t_integer,{43,43}},
                    none,none}}}}],
             none}}}}]}}.
    {test,is_eq_exact,
     {f,443},
     [{tr,
       {x,0},
       {t_tuple,2,true,
        #{1 => {t_bs_matchable,1},
          2 =>
           {t_union,
            {t_atom,[float,not_a_tuple]},
            none,none,
            [{{3,{t_atom,[x]}},
              {t_tuple,3,true,
               #{1 => {t_atom,[x]},
                 2 =>
                  {t_union,{t_atom,[y]},none,{t_integer,{42,42}},none,none},
                 3 =>
                  {t_union,
                   {t_atom,[z]},
                   none,
                   {t_integer,{43,43}},
                   none,none}}}}],
            none}}}},
      {literal,{<<>>,not_a_tuple}}]}.
    {move,{literal,<<7,10>>},{x,1}}.
    {move,{literal,{x,y,z}},{x,2}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",828}]}.
    {call,3,{f,451}}. % coverage_build/3
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,2,true,
         #{1 => {t_bs_matchable,1},
           2 =>
            {t_union,
             {t_atom,[float,not_a_tuple]},
             none,none,
             [{{3,{t_atom,[x]}},
               {t_tuple,3,true,
                #{1 => {t_atom,[x]},
                  2 =>
                   {t_union,{t_atom,[y]},none,{t_integer,{42,42}},none,none},
                  3 =>
                   {t_union,
                    {t_atom,[z]},
                    none,
                    {t_integer,{43,43}},
                    none,none}}}}],
             none}}}}]}}.
    {test,is_eq_exact,
     {f,442},
     [{tr,
       {x,0},
       {t_tuple,2,true,
        #{1 => {t_bs_matchable,1},
          2 =>
           {t_union,
            {t_atom,[float,not_a_tuple]},
            none,none,
            [{{3,{t_atom,[x]}},
              {t_tuple,3,true,
               #{1 => {t_atom,[x]},
                 2 =>
                  {t_union,{t_atom,[y]},none,{t_integer,{42,42}},none,none},
                 3 =>
                  {t_union,
                   {t_atom,[z]},
                   none,
                   {t_integer,{43,43}},
                   none,none}}}}],
            none}}}},
      {literal,{<<"vabc©abc">>,{x,42,43}}}]}.
    {move,nil,{x,1}}.
    {move,{literal,<<1,2>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",830}]}.
    {call,2,{f,456}}. % coverage_bc/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_bitstring,8,true},nil}}]}}.
    {test,is_eq_exact,
          {f,441},
          [{tr,{x,0},{t_list,{t_bitstring,8,true},nil}},
           {literal,[<<2>>,<<1>>]}]}.
    {move,{literal,{x,y,z}},{x,1}}.
    {move,{literal,<<2,97,98,99>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",832}]}.
    {call,2,{f,459}}. % coverage_setelement/2
    {'%',{var_info,{x,0},[{type,{t_tuple,3,true,#{}}}]}}.
    {test,is_eq_exact,
          {f,440},
          [{tr,{x,0},{t_tuple,3,true,#{}}},{literal,{x,<<"abc">>,z}}]}.
    {move,{literal,[coverage_id]},{x,1}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",834}]}.
    {call,2,{f,461}}. % coverage_apply/2
    {'%',{var_info,{x,0},[{type,{t_cons,any,nil}}]}}.
    {test,is_eq_exact,{f,439},[{tr,{x,0},{t_cons,any,nil}},{literal,"*"}]}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",835}]}.
    {call,1,{f,464}}. % coverage_external/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,438},[{tr,{x,0},{t_integer,{0,255}}},{integer,42}]}.
    {move,nil,{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",837}]}.
    {call,1,{f,470}}. % do_coverage_bin_to_term_list/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {move,{integer,10},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",838}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {test_heap,2,1}.
    {put_list,{x,0},{literal,[{a,b,c},<<0,0,0,0,5,3:2>>]},{x,0}}.
    {call,1,{f,470}}. % do_coverage_bin_to_term_list/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {'catch',{y,2},{f,418}}.
    {move,{literal,<<0,0,0,7>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",840}]}.
    {call,1,{f,475}}. % do_coverage_bin_to_term_list_1/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
  {label,418}.
    {catch_end,{y,2}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<0,0,0,7>>]},{x,1}}.
    {move,{atom,coverage_bin_to_term_list},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r25_SUITE.erl",839}]}.
    {call,3,{f,843}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<0,0,0,4>>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r25_SUITE.erl",842}]}.
    {call,1,{f,500}}. % coverage_per_key/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,437},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<>>}]}.
    {move,{literal,<<0,0,0,7,97,98,99>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",843}]}.
    {call,1,{f,500}}. % coverage_per_key/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,436},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<"abc">>}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",845}]}.
    {call,1,{f,503}}. % coverage_bitstring/1
    {'%',{var_info,{x,0},[{type,{t_atom,[binary,bitstring]}}]}}.
    {test,is_eq_exact,
          {f,435},
          [{tr,{x,0},{t_atom,[binary,bitstring]}},{atom,binary}]}.
    {move,{literal,<<7>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",846}]}.
    {call,1,{f,503}}. % coverage_bitstring/1
    {'%',{var_info,{x,0},[{type,{t_atom,[binary,bitstring]}}]}}.
    {test,is_eq_exact,
          {f,434},
          [{tr,{x,0},{t_atom,[binary,bitstring]}},{atom,binary}]}.
    {move,{literal,<<7:4>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",847}]}.
    {call,1,{f,503}}. % coverage_bitstring/1
    {'%',{var_info,{x,0},[{type,{t_atom,[binary,bitstring]}}]}}.
    {test,is_eq_exact,
          {f,433},
          [{tr,{x,0},{t_atom,[binary,bitstring]}},{atom,bitstring}]}.
    {move,{literal,[a]},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",848}]}.
    {call,1,{f,503}}. % coverage_bitstring/1
    {'%',{var_info,{x,0},[{type,{t_atom,[other]}}]}}.
    {move,{atom,e2},{x,3}}.
    {move,{atom,e1},{x,2}}.
    {move,{atom,e3},{x,4}}.
    {move,{atom,e0},{x,1}}.
    {move,nil,{x,5}}.
    {move,{literal,<<253,155,200,17,53>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",853}]}.
    {call,6,{f,507}}. % coverage_trim/6
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,3,true,
                     #{1 => {t_atom,[done]},
                       2 => {t_bitstring,8,false},
                       3 => {t_list,{t_integer,{0,255}},nil}}}}]}}.
    {test,is_eq_exact,
          {f,432},
          [{tr,{x,0},
               {t_tuple,3,true,
                        #{1 => {t_atom,[done]},
                          2 => {t_bitstring,8,false},
                          3 => {t_list,{t_integer,{0,255}},nil}}}},
           {literal,{done,<<17,53>>,[253,155,200]}}]}.
    {move,{literal,<<"right">>},{x,1}}.
    {move,{literal,<<"linux">>},{x,2}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",855}]}.
    {call,3,{f,512}}. % coverage_trim_1/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,431},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<"(right|linux)">>}]}.
    {move,{literal,<<"right">>},{x,1}}.
    {move,{literal,<<"linux">>},{x,2}}.
    {move,{literal,<<"/">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",856}]}.
    {call,3,{f,512}}. % coverage_trim_1/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,430},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<"/(right|linux)">>}]}.
    {move,{literal,<<"right">>},{x,1}}.
    {move,{literal,<<"linux">>},{x,2}}.
    {move,{literal,<<"left">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",858}]}.
    {call,3,{f,512}}. % coverage_trim_1/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,429},
          [{tr,{x,0},{t_bitstring,8,false}},
           {literal,<<"(left|linux)/(right|linux)">>}]}.
    {move,{integer,10},{x,1}}.
    {move,nil,{x,2}}.
    {move,{literal,<<"-">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",860}]}.
    {call,3,{f,518}}. % coverage_trim_2/3
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,3,true,
                     #{1 => {t_integer,{'-inf',10}},
                       2 => {t_bitstring,8,false},
                       3 => {t_list,{t_integer,{0,1114111}},nil}}}}]}}.
    {test,is_eq_exact,
          {f,428},
          [{tr,{x,0},
               {t_tuple,3,true,
                        #{1 => {t_integer,{'-inf',10}},
                          2 => {t_bitstring,8,false},
                          3 => {t_list,{t_integer,{0,1114111}},nil}}}},
           {literal,{10,<<"-">>,[]}}]}.
    {move,{integer,10},{x,1}}.
    {move,nil,{x,2}}.
    {move,{literal,<<"aa-">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",861}]}.
    {call,3,{f,518}}. % coverage_trim_2/3
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,3,true,
                     #{1 => {t_integer,{'-inf',10}},
                       2 => {t_bitstring,8,false},
                       3 => {t_list,{t_integer,{0,1114111}},nil}}}}]}}.
    {test,is_eq_exact,
          {f,427},
          [{tr,{x,0},
               {t_tuple,3,true,
                        #{1 => {t_integer,{'-inf',10}},
                          2 => {t_bitstring,8,false},
                          3 => {t_list,{t_integer,{0,1114111}},nil}}}},
           {literal,{8,<<"-">>,"aa"}}]}.
    {move,{integer,3},{x,1}}.
    {move,{literal,[<<"abctag">>]},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",863}]}.
    {call,2,{f,521}}. % coverage_trim_3/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_bitstring,8,false},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
          {f,426},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_bitstring,8,false},
                          2 => {t_bitstring,8,false}}}},
           {literal,{<<"abc">>,<<"tag">>}}]}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",865}]}.
    {call,1,{f,524}}. % coverage_trim_4/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[error]},
                                   none,none,none,
                                   {t_bitstring,16,false}}}]}}.
    {test,bs_start_match3,{f,425},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,425},
          2,
          [{tr,{x,1},{t_bs_context,16}},
           {integer,16},
           1,
           {field_flags,[{anno,[865,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,native]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,425},
          [{tr,{x,2},{t_integer,{0,65535}}},{integer,57348}]}.
    {test,bs_test_tail2,{f,425},[{x,1},0]}.
    {move,{literal,<<2>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",868}]}.
    {call,1,{f,529}}. % coverage_beam_ssa_codegen/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,1},{f,419}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",871}]}.
    {call,1,{f,532}}. % coverage_beam_ssa_pre_codegen/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,419}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,424},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,424},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,0},{f,420}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r25_SUITE.erl",874}]}.
    {call,1,{f,1684}}. % id/1
    {call,1,{f,538}}. % coverage_beam_ssa_bsm_error/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,420}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,423},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,423},[{x,1}]}.
    {test,test_arity,{f,423},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,423},[{x,1},{literal,{badarg,<<>>}}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1830},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_integer,{42,42}}}]}}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",877}]}.
    {call,1,{f,1684}}. % id/1
    {call,1,{f,540}}. % coverage_beam_validator/1
    {test,is_eq_exact,{f,422},[{x,0},{integer,42}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1828},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,none}]}}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",878}]}.
    {call,1,{f,1684}}. % id/1
    {call,1,{f,540}}. % coverage_beam_validator/1
    {test,is_eq_exact,{f,421},[{x,0},{atom,ok}]}.
    {deallocate,4}.
    return.
  {label,421}.
    {badmatch,{x,0}}.
  {label,422}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",877}]}.
    {badmatch,{x,0}}.
  {label,423}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",874}]}.
    {badmatch,{x,0}}.
  {label,424}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",871}]}.
    {badmatch,{x,0}}.
  {label,425}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",865}]}.
    {badmatch,{x,0}}.
  {label,426}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",863}]}.
    {badmatch,{x,0}}.
  {label,427}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",861}]}.
    {badmatch,{x,0}}.
  {label,428}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",860}]}.
    {badmatch,{x,0}}.
  {label,429}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",857}]}.
    {badmatch,{x,0}}.
  {label,430}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",856}]}.
    {badmatch,{x,0}}.
  {label,431}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",855}]}.
    {badmatch,{x,0}}.
  {label,432}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",852}]}.
    {badmatch,{x,0}}.
  {label,433}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",847}]}.
    {badmatch,{atom,binary}}.
  {label,434}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",846}]}.
    {badmatch,{atom,bitstring}}.
  {label,435}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",845}]}.
    {badmatch,{atom,bitstring}}.
  {label,436}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",843}]}.
    {badmatch,{x,0}}.
  {label,437}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",842}]}.
    {badmatch,{x,0}}.
  {label,438}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",835}]}.
    {badmatch,{x,0}}.
  {label,439}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",834}]}.
    {badmatch,{x,0}}.
  {label,440}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",832}]}.
    {badmatch,{x,0}}.
  {label,441}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",830}]}.
    {badmatch,{x,0}}.
  {label,442}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",827}]}.
    {badmatch,{x,0}}.
  {label,443}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",826}]}.
    {badmatch,{x,0}}.
  {label,444}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",825}]}.
    {badmatch,{x,0}}.
  {label,445}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",820}]}.
    {badmatch,{x,0}}.
  {label,446}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",819}]}.
    {badmatch,{x,0}}.


{function, coverage_fold, 3, 448}.
  {label,447}.
    {line,[{location,"bs_match_r25_SUITE.erl",882}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,coverage_fold},3}.
  {label,448}.
    {'%',{var_info,{x,0},[{type,{t_fun,2,any,{t_number,any}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_number,any}}]}}.
    {'%',{var_info,{x,2},
                   [{type,{t_union,none,
                                   {t_cons,{t_atom,[a,b,c]},nil},
                                   none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,bs_start_match3,{f,447},3,[{x,2}],{x,3}}.
    {test,bs_get_integer2,
          {f,449},
          4,
          [{tr,{x,3},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[882,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {allocate,3,5}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
    {bs_get_tail,{x,3},{y,0},5}.
    {move,{x,4},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",884}]}.
    {call,1,{f,1684}}. % id/1
    {swap,{y,1},{x,0}}.
    {call,1,{f,1684}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{y,2},{x,2}}.
    {move,{y,1},{x,0}}.
    {move,{y,0},{y,1}}.
    {trim,1,2}.
    {call_fun2,{atom,safe},2,{tr,{x,2},{t_fun,2,any,{t_number,any}}}}.
    {'%',{var_info,{x,0},[{type,{t_number,any}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,2}}.
    {move,{y,1},{x,0}}.
    {call_last,3,{f,448},2}. % coverage_fold/3
  {label,449}.
    {test,bs_test_tail2,{f,447},[{x,3},0]}.
    {move,{x,1},{x,0}}.
    return.


{function, coverage_build, 3, 451}.
  {label,450}.
    {line,[{location,"bs_match_r25_SUITE.erl",887}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,coverage_build},3}.
  {label,451}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {'%',
        {var_info,
            {x,2},
            [{type,
                 {t_union,
                     {t_atom,[float,not_a_tuple]},
                     none,none,
                     [{{3,{t_atom,[x]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[x]},
                             2 =>
                                 {t_union,
                                     {t_atom,[y]},
                                     none,
                                     {t_integer,{42,42}},
                                     none,none},
                             3 =>
                                 {t_union,
                                     {t_atom,[z]},
                                     none,
                                     {t_integer,{43,43}},
                                     none,none}}}}],
                     none}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,3}}.
    {test,bs_get_integer2,
          {f,453},
          4,
          [{tr,{x,3},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[887,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {bs_get_tail,{x,3},{x,1},5}.
    {test,is_eq_exact,
        {f,452},
        [{tr,{x,2},
             {t_union,
                 {t_atom,[float,not_a_tuple]},
                 none,none,
                 [{{3,{t_atom,[x]}},
                   {t_tuple,3,true,
                       #{1 => {t_atom,[x]},
                         2 =>
                             {t_union,
                                 {t_atom,[y]},
                                 none,
                                 {t_integer,{42,42}},
                                 none,none},
                         3 =>
                             {t_union,
                                 {t_atom,[z]},
                                 none,
                                 {t_integer,{43,43}},
                                 none,none}}}}],
                 none}},
         {atom,float}]}.
    {line,[{location,"bs_match_r25_SUITE.erl",888}]}.
    {bs_create_bin,{f,0},
                   0,5,64,
                   {x,2},
                   {list,[{atom,float},
                          1,1,nil,
                          {tr,{x,4},{t_integer,{0,255}}},
                          {integer,64}]}}.
    {allocate,2,3}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{x,2},{x,0}}.
    {call,1,{f,1684}}. % id/1
    {line,[{location,"bs_match_r25_SUITE.erl",889}]}.
    {bs_create_bin,{f,0},
                   0,1,8,
                   {x,0},
                   {list,[{atom,append},
                          1,8,nil,
                          {tr,{y,1},{t_bs_matchable,1}},
                          {atom,all},
                          {atom,binary},
                          2,8,nil,
                          {x,0},
                          {atom,all}]}}.
    {move,{atom,float},{x,2}}.
    {move,{y,0},{x,1}}.
    {call_last,3,{f,451},2}. % coverage_build/3
  {label,452}.
    {allocate,4,5}.
    {move,{x,1},{y,0}}.
    {move,{x,4},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,0},{y,3}}.
    {move,{integer,4},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",892}]}.
    {call,1,{f,1684}}. % id/1
    {gc_bif,'-',{f,0},1,[{tr,{y,1},{t_integer,{0,255}}},{integer,1}],{x,1}}.
    {bs_create_bin,{f,0},
                   0,2,1,
                   {x,0},
                   {list,[{atom,integer},
                          1,1,nil,
                          {tr,{y,1},{t_integer,{0,255}}},
                          {x,0},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,1},{t_integer,{-1,254}}},
                          {integer,4},
                          {atom,string},
                          0,8,nil,
                          {string,<<"abc">>},
                          {integer,3}]}}.
    {move,{y,0},{y,1}}.
    {trim,1,3}.
    {call,1,{f,1684}}. % id/1
    {line,[{location,"bs_match_r25_SUITE.erl",893}]}.
    {bs_create_bin,{f,0},
                   0,1,1,
                   {x,0},
                   {list,[{atom,append},
                          1,1,nil,
                          {tr,{y,2},{t_bs_matchable,1}},
                          {atom,all},
                          {atom,binary},
                          2,1,nil,
                          {x,0},
                          {atom,all}]}}.
    {init_yregs,{list,[{y,2}]}}.
    {call,1,{f,1684}}. % id/1
    {move,{x,0},{y,2}}.
    {move,{y,1},{x,1}}.
    {move,{integer,43},{x,2}}.
    {move,{integer,3},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",894}]}.
    {call_ext,3,{extfunc,erlang,setelement,3}}.
    {move,{y,1},{x,1}}.
    {move,{integer,43},{x,2}}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{integer,3},{x,0}}.
    {call_ext,3,{extfunc,erlang,setelement,3}}.
    {set_tuple_element,{integer,42},{x,0},1}.
    {gc_bif,byte_size,{f,454},0,[{y,2}],{x,0}}.
    {test,is_ge,
          {f,454},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},{integer,1}]}.
    {move,{y,0},{x,1}}.
    {move,{literal,{x,42,43}},{x,2}}.
    {move,{y,2},{x,0}}.
    {call_last,3,{f,451},3}. % coverage_build/3
  {label,453}.
    {test,bs_test_tail2,{f,450},[{x,3},0]}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{x,0},{x,2}]}}.
    return.
  {label,454}.
    {line,[{location,"bs_match_r25_SUITE.erl",895}]}.
    if_end.


{function, coverage_bc, 2, 456}.
  {label,455}.
    {line,[{location,"bs_match_r25_SUITE.erl",901}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,coverage_bc},2}.
  {label,456}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_bitstring,8,true},nil}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,2}}.
    {test,bs_get_integer2,
          {f,457},
          3,
          [{tr,{x,2},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[901,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {allocate,3,4}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,3},{y,1}}.
    {move,{x,1},{y,2}}.
    {bs_get_tail,{x,2},{y,0},3}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {test_heap,2,1}.
    {move,{x,0},{x,1}}.
    {put_list,{y,1},nil,{x,0}}.
    {move,{y,0},{y,1}}.
    {trim,1,2}.
    {line,[{location,"bs_match_r25_SUITE.erl",902}]}.
    {call,2,{f,1825}}. % '-coverage_bc/2-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {test_heap,2,1}.
    {put_list,{x,0},{y,1},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,456},2}. % coverage_bc/2
  {label,457}.
    {test,bs_test_tail2,{f,455},[{x,2},0]}.
    {move,{x,1},{x,0}}.
    return.


{function, coverage_setelement, 2, 459}.
  {label,458}.
    {line,[{location,"bs_match_r25_SUITE.erl",906}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,coverage_setelement},2}.
  {label,459}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,false}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_atom,[x]},
                                     2 => {t_atom,[y]},
                                     3 => {t_atom,[z]}}}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,2}}.
    {test,bs_get_integer2,
          {f,458},
          3,
          [{tr,{x,2},{t_bs_context,32}},
           {integer,8},
           1,
           {field_flags,[{anno,[906,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_tail,{x,2},{x,2},4}.
    {move,{x,3},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",907}]}.
    {call_ext_only,3,{extfunc,erlang,setelement,3}}.


{function, coverage_apply, 2, 461}.
  {label,460}.
    {line,[{location,"bs_match_r25_SUITE.erl",909}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,coverage_apply},2}.
  {label,461}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_atom,[coverage_id]},nil}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,2}}.
    {bs_get_position,{x,2},{x,3},3}.
    {test,bs_get_integer2,
          {f,462},
          4,
          [{tr,{x,2},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[909,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {bs_get_tail,{x,2},{x,5},5}.
    {test,is_nonempty_list,{f,462},[{x,1}]}.
    {allocate,2,6}.
    {move,{x,5},{y,1}}.
    {get_tl,{x,1},{y,0}}.
    {move,{x,4},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",910}]}.
    {call_ext,1,{extfunc,bs_match_r25_SUITE,coverage_id,1}}.
    {swap,{y,1},{x,0}}.
    {move,{y,0},{x,1}}.
    {trim,1,1}.
    {call,2,{f,461}}. % coverage_apply/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,462}.
    {bs_set_position,{x,2},{x,3}}.
    {test,bs_test_tail2,{f,460},[{x,2},0]}.
    {test,is_nil,{f,460},[{tr,{x,1},{t_list,{t_atom,[coverage_id]},nil}}]}.
    {move,nil,{x,0}}.
    return.


{function, coverage_external, 1, 464}.
  {label,463}.
    {line,[{location,"bs_match_r25_SUITE.erl",913}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,coverage_external},1}.
  {label,464}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,463},
          2,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[913,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {bs_get_tail,{x,1},{x,1},2}.
    {move,{x,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",914}]}.
    {call_ext,2,{extfunc,bs_match_r25_SUITE,coverage_external_ignore,2}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, coverage_external_ignore, 2, 466}.
  {label,465}.
    {line,[{location,"bs_match_r25_SUITE.erl",917}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,coverage_external_ignore},2}.
  {label,466}.
    {move,{atom,ok},{x,0}}.
    return.


{function, coverage_id, 1, 468}.
  {label,467}.
    {line,[{location,"bs_match_r25_SUITE.erl",920}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,coverage_id},1}.
  {label,468}.
    {call_only,1,{f,1684}}. % id/1


{function, do_coverage_bin_to_term_list, 1, 470}.
  {label,469}.
    {line,[{location,"bs_match_r25_SUITE.erl",922}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,do_coverage_bin_to_term_list},
               1}.
  {label,470}.
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",923}]}.
    {call,2,{f,1822}}. % '-do_coverage_bin_to_term_list/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {move,{x,0},{y,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",926}]}.
    {call,1,{f,475}}. % do_coverage_bin_to_term_list_1/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,473},
          [{tr,{x,0},{t_list,any,nil}},{tr,{y,1},{t_list,any,nil}}]}.
    {line,[{location,"bs_match_r25_SUITE.erl",927}]}.
    {bs_create_bin,{f,0},
                   0,0,8,
                   {x,0},
                   {list,[{atom,append},
                          1,8,nil,
                          {tr,{y,0},{t_bitstring,8,true}},
                          {atom,all},
                          {atom,string},
                          0,8,nil,
                          {string,<<0,0,0,7,103,97,114,98,97,103,101>>},
                          {integer,11}]}}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {call,1,{f,475}}. % do_coverage_bin_to_term_list_1/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,472},
          [{tr,{x,0},{t_list,any,nil}},{tr,{y,1},{t_list,any,nil}}]}.
    {line,[{location,"bs_match_r25_SUITE.erl",928}]}.
    {bs_create_bin,{f,0},
                   0,0,8,
                   {x,0},
                   {list,[{atom,string},
                          0,8,nil,
                          {string,<<0,0,0,7,103,97,114,98,97,103,101>>},
                          {integer,11},
                          {atom,binary},
                          3,8,nil,
                          {tr,{y,0},{t_bitstring,8,true}},
                          {atom,all}]}}.
    {trim,1,1}.
    {call,1,{f,475}}. % do_coverage_bin_to_term_list_1/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,471},
          [{tr,{x,0},{t_list,any,nil}},{tr,{y,0},{t_list,any,nil}}]}.
    {deallocate,1}.
    return.
  {label,471}.
    {badmatch,{x,0}}.
  {label,472}.
    {line,[{location,"bs_match_r25_SUITE.erl",927}]}.
    {badmatch,{x,0}}.
  {label,473}.
    {line,[{location,"bs_match_r25_SUITE.erl",926}]}.
    {badmatch,{x,0}}.


{function, do_coverage_bin_to_term_list_1, 1, 475}.
  {label,474}.
    {line,[{location,"bs_match_r25_SUITE.erl",930}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,do_coverage_bin_to_term_list_1},
               1}.
  {label,475}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",931}]}.
    {call,1,{f,480}}. % coverage_bin_to_term_list/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,0}}.
    {move,nil,{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",932}]}.
    {call,2,{f,485}}. % coverage_bin_to_term_list/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,478},
          [{tr,{x,0},{t_list,any,nil}},{tr,{y,0},{t_list,any,nil}}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",933}]}.
    {call,1,{f,490}}. % coverage_bin_to_term_list_catch/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,477},
          [{tr,{x,0},{t_list,any,nil}},{tr,{y,0},{t_list,any,nil}}]}.
    {move,nil,{x,1}}.
    {move,{y,1},{x,0}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {line,[{location,"bs_match_r25_SUITE.erl",934}]}.
    {call,2,{f,495}}. % coverage_bin_to_term_list_catch/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,476},
          [{tr,{x,0},{t_list,any,nil}},{tr,{y,0},{t_list,any,nil}}]}.
    {deallocate,1}.
    return.
  {label,476}.
    {badmatch,{x,0}}.
  {label,477}.
    {line,[{location,"bs_match_r25_SUITE.erl",933}]}.
    {badmatch,{x,0}}.
  {label,478}.
    {line,[{location,"bs_match_r25_SUITE.erl",932}]}.
    {badmatch,{x,0}}.


{function, coverage_bin_to_term_list, 1, 480}.
  {label,479}.
    {line,[{location,"bs_match_r25_SUITE.erl",936}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,coverage_bin_to_term_list},1}.
  {label,480}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,483},
          2,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,32},
           1,
           {field_flags,[{anno,[936,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{x,1},3}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {test,bs_get_binary2,
          {f,483},
          3,
          [{tr,{x,1},{t_bs_context,8}},
           {tr,{x,2},{t_integer,{0,4294967295}}},
           8,
           {field_flags,[{anno,[936,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {allocate,3,3}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {bs_get_tail,{x,1},{y,1},3}.
    {'try',{y,2},{f,481}}.
    {move,{x,2},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",937}]}.
    {call_ext,1,{extfunc,erlang,binary_to_term,1}}.
    {move,{x,0},{y,0}}.
    {try_end,{y,2}}.
    {move,{y,1},{x,0}}.
    {move,{y,0},{y,2}}.
    {trim,2,1}.
    {line,[{location,"bs_match_r25_SUITE.erl",938}]}.
    {call,1,{f,480}}. % coverage_bin_to_term_list/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,481}.
    {try_case,{y,2}}.
    {test,is_eq_exact,
          {f,482},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,error}]}.
    {test,is_eq_exact,{f,482},[{x,1},{atom,badarg}]}.
    {move,{y,1},{x,0}}.
    {call_last,1,{f,480},3}. % coverage_bin_to_term_list/1
  {label,482}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.
  {label,483}.
    {test,is_eq_exact,
          {f,479},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<>>}]}.
    {move,nil,{x,0}}.
    return.


{function, coverage_bin_to_term_list, 2, 485}.
  {label,484}.
    {line,[{location,"bs_match_r25_SUITE.erl",944}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,coverage_bin_to_term_list},2}.
  {label,485}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,any,nil}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,2}}.
    {test,bs_get_integer2,
          {f,488},
          3,
          [{tr,{x,2},{t_bs_context,8}},
           {integer,32},
           1,
           {field_flags,[{anno,[944,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_tail,{x,2},{x,2},4}.
    {bs_start_match4,{atom,no_fail},4,{x,2},{x,2}}.
    {test,bs_get_binary2,
          {f,488},
          4,
          [{tr,{x,2},{t_bs_context,8}},
           {tr,{x,3},{t_integer,{0,4294967295}}},
           8,
           {field_flags,[{anno,[944,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {allocate,3,4}.
    {init_yregs,{list,[{y,0},{y,2}]}}.
    {move,{x,1},{y,1}}.
    {bs_get_tail,{x,2},{y,0},4}.
    {'try',{y,2},{f,486}}.
    {move,{x,3},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",945}]}.
    {call_ext,1,{extfunc,erlang,binary_to_term,1}}.
    {try_end,{y,2}}.
    {test_heap,2,1}.
    {put_list,{x,0},{y,1},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,485},3}. % coverage_bin_to_term_list/2
  {label,486}.
    {try_case,{y,2}}.
    {test,is_eq_exact,
          {f,487},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,error}]}.
    {test,is_eq_exact,{f,487},[{x,1},{atom,badarg}]}.
    {move,{y,1},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,485},3}. % coverage_bin_to_term_list/2
  {label,487}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.
  {label,488}.
    {test,is_eq_exact,
          {f,484},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<>>}]}.
    {move,{x,1},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",950}]}.
    {call_ext_only,1,{extfunc,lists,reverse,1}}.


{function, coverage_bin_to_term_list_catch, 1, 490}.
  {label,489}.
    {line,[{location,"bs_match_r25_SUITE.erl",952}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,coverage_bin_to_term_list_catch},
               1}.
  {label,490}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,493},
          2,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,32},
           1,
           {field_flags,[{anno,[952,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{x,1},3}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {test,bs_get_binary2,
          {f,493},
          3,
          [{tr,{x,1},{t_bs_context,8}},
           {tr,{x,2},{t_integer,{0,4294967295}}},
           8,
           {field_flags,[{anno,[952,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {allocate,2,3}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {bs_get_tail,{x,1},{y,0},3}.
    {'catch',{y,1},{f,491}}.
    {move,{x,2},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",953}]}.
    {call_ext,1,{extfunc,erlang,binary_to_term,1}}.
  {label,491}.
    {catch_end,{y,1}}.
    {move,{x,0},{y,1}}.
    {test,is_tagged_tuple,{f,492},[{y,1},2,{atom,'EXIT'}]}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,490},2}. % coverage_bin_to_term_list_catch/1
  {label,492}.
    {move,{y,0},{x,0}}.
    {trim,1,1}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",955}]}.
    {call,1,{f,490}}. % coverage_bin_to_term_list_catch/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,493}.
    {test,is_eq_exact,
          {f,489},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<>>}]}.
    {move,nil,{x,0}}.
    return.


{function, coverage_bin_to_term_list_catch, 2, 495}.
  {label,494}.
    {line,[{location,"bs_match_r25_SUITE.erl",959}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,coverage_bin_to_term_list_catch},
               2}.
  {label,495}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,any,nil}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,2}}.
    {test,bs_get_integer2,
          {f,498},
          3,
          [{tr,{x,2},{t_bs_context,8}},
           {integer,32},
           1,
           {field_flags,[{anno,[959,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_tail,{x,2},{x,2},4}.
    {bs_start_match4,{atom,no_fail},4,{x,2},{x,2}}.
    {test,bs_get_binary2,
          {f,498},
          4,
          [{tr,{x,2},{t_bs_context,8}},
           {tr,{x,3},{t_integer,{0,4294967295}}},
           8,
           {field_flags,[{anno,[959,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {allocate,3,4}.
    {init_yregs,{list,[{y,0},{y,2}]}}.
    {move,{x,1},{y,1}}.
    {bs_get_tail,{x,2},{y,0},4}.
    {'catch',{y,2},{f,496}}.
    {move,{x,3},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",960}]}.
    {call_ext,1,{extfunc,erlang,binary_to_term,1}}.
  {label,496}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,497},[{x,0},2,{atom,'EXIT'}]}.
    {move,{y,1},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,495},3}. % coverage_bin_to_term_list_catch/2
  {label,497}.
    {test_heap,2,1}.
    {put_list,{x,0},{y,1},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,495},3}. % coverage_bin_to_term_list_catch/2
  {label,498}.
    {test,is_eq_exact,
          {f,494},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<>>}]}.
    {move,{x,1},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",964}]}.
    {call_ext_only,1,{extfunc,lists,reverse,1}}.


{function, coverage_per_key, 1, 500}.
  {label,499}.
    {line,[{location,"bs_match_r25_SUITE.erl",966}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,coverage_per_key},1}.
  {label,500}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,499},
          2,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,32},
           1,
           {field_flags,[{anno,[966,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{x,1},3}.
    {line,[{location,"bs_match_r25_SUITE.erl",967}]}.
    {gc_bif,byte_size,{f,0},3,[{tr,{x,0},{t_bitstring,8,false}}],{x,0}}.
    {test,is_eq_exact,
          {f,501},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},
           {tr,{x,2},{t_integer,{0,4294967295}}}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,501}.
    {badmatch,{atom,false}}.


{function, coverage_bitstring, 1, 503}.
  {label,502}.
    {line,[{location,"bs_match_r25_SUITE.erl",970}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,coverage_bitstring},1}.
  {label,503}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,
                                   {t_cons,{t_atom,[a]},nil},
                                   none,none,
                                   {t_bitstring,4,false}}}]}}.
    {test,is_binary,
          {f,504},
          [{tr,{x,0},
               {t_union,none,
                        {t_cons,{t_atom,[a]},nil},
                        none,none,
                        {t_bitstring,4,false}}}]}.
    {move,{atom,binary},{x,0}}.
    return.
  {label,504}.
    {test,is_bitstr,
          {f,505},
          [{tr,{x,0},
               {t_union,none,
                        {t_cons,{t_atom,[a]},nil},
                        none,none,
                        {t_bitstring,4,false}}}]}.
    {move,{atom,bitstring},{x,0}}.
    return.
  {label,505}.
    {move,{atom,other},{x,0}}.
    return.


{function, coverage_trim, 6, 507}.
  {label,506}.
    {line,[{location,"bs_match_r25_SUITE.erl",974}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,coverage_trim},6}.
  {label,507}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[e0]}}]}}.
    {'%',{var_info,{x,2},[{type,{t_atom,[e1]}}]}}.
    {'%',{var_info,{x,3},[{type,{t_atom,[e2]}}]}}.
    {'%',{var_info,{x,4},[{type,{t_atom,[e3]}}]}}.
    {'%',{var_info,{x,5},[{type,{t_list,{t_integer,{0,255}},nil}}]}}.
    {bs_start_match4,{atom,no_fail},6,{x,0},{x,6}}.
    {test,bs_get_integer2,
          {f,506},
          7,
          [{tr,{x,6},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[974,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,7}}.
    {allocate,4,8}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,7},{y,1}}.
    {move,{x,5},{y,2}}.
    {move,{x,0},{y,3}}.
    {bs_get_tail,{x,6},{y,0},8}.
    {bif,'>=',{f,0},[{tr,{x,7},{t_integer,{0,255}}},{integer,129}],{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",975}]}.
    {call,1,{f,1684}}. % id/1
    {select_val,{x,0},
                {f,510},
                {list,[{atom,false},{f,509},{atom,true},{f,508}]}}.
  {label,508}.
    {test_heap,2,0}.
    {put_list,{y,1},{y,2},{x,5}}.
    {move,{atom,e1},{x,2}}.
    {move,{atom,e2},{x,3}}.
    {move,{atom,e0},{x,1}}.
    {move,{atom,e3},{x,4}}.
    {move,{y,0},{x,0}}.
    {call_last,6,{f,507},4}. % coverage_trim/6
  {label,509}.
    {move,{y,2},{x,0}}.
    {trim,3,1}.
    {line,[{location,"bs_match_r25_SUITE.erl",979}]}.
    {call_ext,1,{extfunc,lists,reverse,1}}.
    {test_heap,4,1}.
    {put_tuple2,{x,0},{list,[{atom,done},{y,0},{x,0}]}}.
    {deallocate,1}.
    return.
  {label,510}.
    {line,[{location,"bs_match_r25_SUITE.erl",975}]}.
    {case_end,{x,0}}.


{function, coverage_trim_1, 3, 512}.
  {label,511}.
    {line,[{location,"bs_match_r25_SUITE.erl",982}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,coverage_trim_1},3}.
  {label,512}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,3}}.
    {bs_get_position,{x,3},{x,4},4}.
    {test,bs_match_string,{f,513},[{x,3},8,{string,<<"/">>}]}.
    {test,bs_test_tail2,{f,513},[{x,3},0]}.
    {allocate,0,3}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",985}]}.
    {call,2,{f,516}}. % do_coverage_trim_1/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {bs_create_bin,{f,0},
                   0,1,8,
                   {x,0},
                   {list,[{atom,string},
                          0,8,nil,
                          {string,<<"/">>},
                          {integer,1},
                          {atom,binary},
                          2,8,nil,
                          {tr,{x,0},{t_bitstring,8,false}},
                          {atom,all}]}}.
    {deallocate,0}.
    return.
  {label,513}.
    {bs_set_position,{x,3},{x,4}}.
    {test,bs_test_tail2,{f,514},[{x,3},0]}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {call_only,2,{f,516}}. % do_coverage_trim_1/2
  {label,514}.
    {allocate,2,3}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{x,2},{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",987}]}.
    {call,2,{f,516}}. % do_coverage_trim_1/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {swap,{y,1},{x,0}}.
    {move,{y,0},{x,1}}.
    {trim,1,1}.
    {line,[{location,"bs_match_r25_SUITE.erl",989}]}.
    {call,2,{f,516}}. % do_coverage_trim_1/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",987}]}.
    {bs_create_bin,{f,0},
                   0,1,8,
                   {x,0},
                   {list,[{atom,append},
                          1,8,nil,
                          {tr,{y,0},{t_bitstring,8,false}},
                          {atom,all},
                          {atom,string},
                          0,8,nil,
                          {string,<<"/">>},
                          {integer,1},
                          {atom,binary},
                          3,8,nil,
                          {tr,{x,0},{t_bitstring,8,false}},
                          {atom,all}]}}.
    {deallocate,1}.
    return.


{function, do_coverage_trim_1, 2, 516}.
  {label,515}.
    {line,[{location,"bs_match_r25_SUITE.erl",991}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_coverage_trim_1},2}.
  {label,516}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",992}]}.
    {bs_create_bin,{f,0},
                   0,2,8,
                   {x,0},
                   {list,[{atom,string},
                          0,8,nil,
                          {string,<<"(">>},
                          {integer,1},
                          {atom,binary},
                          2,8,nil,
                          {tr,{x,0},{t_bitstring,8,false}},
                          {atom,all},
                          {atom,string},
                          0,8,nil,
                          {string,<<"|">>},
                          {integer,1},
                          {atom,binary},
                          4,8,nil,
                          {tr,{x,1},{t_bitstring,8,false}},
                          {atom,all},
                          {atom,string},
                          0,8,nil,
                          {string,<<")">>},
                          {integer,1}]}}.
    return.


{function, coverage_trim_2, 3, 518}.
  {label,517}.
    {line,[{location,"bs_match_r25_SUITE.erl",994}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,coverage_trim_2},3}.
  {label,518}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{'-inf',10}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_list,{t_integer,{0,1114111}},nil}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,3}}.
    {test,bs_get_utf8,
          {f,517},
          4,
          [{tr,{x,3},{t_bs_context,8}},
           {field_flags,[{anno,[994,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {allocate,5,5}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,4},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,1},{y,3}}.
    {move,{x,0},{y,4}}.
    {bs_get_tail,{x,3},{y,0},5}.
    {move,{x,4},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",995}]}.
    {call,1,{f,527}}. % printable_char/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,519},[{x,0},{atom,true}]}.
    {line,[{location,"bs_match_r25_SUITE.erl",997}]}.
    {gc_bif,'-',
            {f,0},
            0,
            [{tr,{y,3},{t_integer,{'-inf',10}}},{integer,1}],
            {x,0}}.
    {test_heap,2,1}.
    {put_list,{y,1},{y,2},{x,2}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,3,{f,518},5}. % coverage_trim_2/3
  {label,519}.
    {move,{y,2},{x,0}}.
    {trim,3,2}.
    {line,[{location,"bs_match_r25_SUITE.erl",999}]}.
    {call_ext,1,{extfunc,lists,reverse,1}}.
    {test_heap,4,1}.
    {put_tuple2,{x,0},{list,[{y,0},{y,1},{x,0}]}}.
    {deallocate,2}.
    return.


{function, coverage_trim_3, 2, 521}.
  {label,520}.
    {line,[{location,"bs_match_r25_SUITE.erl",1002}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,coverage_trim_3},2}.
  {label,521}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_bitstring,16,false},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{3,3}}}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1003}]}.
    {call_ext,1,{extfunc,erlang,iolist_size,1}}.
    {gc_bif,'-',{f,0},1,[{tr,{x,0},{t_integer,{0,'+inf'}}},{integer,3}],{y,0}}.
    {move,{y,1},{x,0}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {line,[{location,"bs_match_r25_SUITE.erl",1005}]}.
    {call_ext,1,{extfunc,erlang,iolist_to_binary,1}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_binary2,
          {f,522},
          2,
          [{tr,{x,1},{t_bs_context,8}},
           {tr,{y,0},{t_integer,{-3,'+inf'}}},
           8,
           {field_flags,[{anno,[1004,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,522},
          3,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,3},
           8,
           {field_flags,[{anno,[1004,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,522},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    {deallocate,1}.
    return.
  {label,522}.
    {line,[{location,"bs_match_r25_SUITE.erl",1004}]}.
    {badmatch,{x,0}}.


{function, coverage_trim_4, 1, 524}.
  {label,523}.
    {line,[{location,"bs_match_r25_SUITE.erl",1008}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,coverage_trim_4},1}.
  {label,524}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1009}]}.
    {call,2,{f,1819}}. % '-coverage_trim_4/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1011}]}.
    {bs_create_bin,{f,525},
                   0,0,16,
                   {x,0},
                   {list,[{atom,integer},
                          1,1,
                          {literal,[native]},
                          {integer,57348},
                          {integer,16}]}}.
    {deallocate,1}.
    return.
  {label,525}.
    {move,{atom,error},{x,0}}.
    {deallocate,1}.
    return.


{function, printable_char, 1, 527}.
  {label,526}.
    {line,[{location,"bs_match_r25_SUITE.erl",1017}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,printable_char},1}.
  {label,527}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,1114111}}}]}}.
    {bif,'=:=',{f,0},[{tr,{x,0},{t_integer,{0,1114111}}},{integer,97}],{x,0}}.
    return.


{function, coverage_beam_ssa_codegen, 1, 529}.
  {label,528}.
    {line,[{location,"bs_match_r25_SUITE.erl",1020}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,coverage_beam_ssa_codegen},1}.
  {label,529}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,has_map_fields,{f,530},{literal,#{1 => 42}},{list,[{integer,1}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,1815},1}. % '-coverage_beam_ssa_codegen/1-lbc$^0/2-0-'/2
  {label,530}.
    {line,[{location,"bs_match_r25_SUITE.erl",1024}]}.
    {case_end,{literal,#{1 => 42}}}.


{function, coverage_beam_ssa_pre_codegen, 1, 532}.
  {label,531}.
    {line,[{location,"bs_match_r25_SUITE.erl",1030}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,coverage_beam_ssa_pre_codegen},
               1}.
  {label,532}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_skip_bits2,
          {f,531},
          [{x,1},
           {integer,0},
           1,
           {field_flags,[{anno,[1030,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_get_tail,{x,1},{x,1},2}.
    {gc_bif,'div',{f,533},2,[{integer,0},{integer,0}],{x,2}}.
    {jump,{f,534}}.
  {label,533}.
    {move,{atom,bad_size},{x,2}}.
  {label,534}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,531},
          3,
          [{tr,{x,1},{t_bs_context,256}},
           {tr,{x,2},
               {t_union,{t_atom,[bad_size]},none,{t_integer,any},none,none}},
           1,
           {field_flags,[{anno,[1030,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{x,1},3}.
    {gc_bif,'bsl',
            {f,535},
            3,
            [{integer,0},{tr,{x,2},{t_integer,{0,'+inf'}}}],
            {x,2}}.
    {jump,{f,536}}.
  {label,535}.
    {move,{atom,bad_size},{x,2}}.
  {label,536}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {test,bs_skip_bits2,
          {f,531},
          [{x,1},
           {x,2},
           1,
           {field_flags,[{anno,[1030,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_test_tail2,{f,531},[{x,1},0]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, coverage_beam_ssa_bsm_error, 1, 538}.
  {label,537}.
    {line,[{location,"bs_match_r25_SUITE.erl",1033}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,coverage_beam_ssa_bsm_error},1}.
  {label,538}.
    {test,bs_start_match3,{f,537},1,[{x,0}],{x,1}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,badarg},{x,0}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1034}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, coverage_beam_validator, 1, 540}.
  {label,539}.
    {line,[{location,"bs_match_r25_SUITE.erl",1036}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,coverage_beam_validator},1}.
  {label,540}.
    {allocate,1,1}.
    {'try',{y,0},{f,541}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1039}]}.
    {call_fun,0}.
    {try_end,{y,0}}.
    {move,{x,0},{x,3}}.
    {jump,{f,542}}.
  {label,541}.
    {try_case,{y,0}}.
    {test,is_eq_exact,
          {f,543},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,throw}]}.
    {move,{atom,ok},{x,3}}.
  {label,542}.
    {move,{atom,ok},{x,1}}.
    {move,{atom,ok},{x,2}}.
    {move,{atom,ok},{x,0}}.
    {call_last,4,{f,545},1}. % coverage_beam_validator/4
  {label,543}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.


{function, coverage_beam_validator, 4, 545}.
  {label,544}.
    {line,[{location,"bs_match_r25_SUITE.erl",1047}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,coverage_beam_validator},4}.
  {label,545}.
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[ok]}}]}}.
    {'%',{var_info,{x,2},[{type,{t_atom,[ok]}}]}}.
    {move,{x,3},{x,0}}.
    return.


{function, multiple_uses, 1, 547}.
  {label,546}.
    {line,[{location,"bs_match_r25_SUITE.erl",1049}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,multiple_uses},1}.
  {label,547}.
    {test,is_list,{f,546},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<1,88,245,159,1,89>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1050}]}.
    {call,1,{f,555}}. % multiple_uses_1/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,4,true,
                                   #{1 => {t_integer,{0,65535}},
                                     2 => {t_integer,{0,65535}},
                                     3 => {t_integer,{0,65535}},
                                     4 => {t_bitstring,16,false}}}}]}}.
    {test,is_eq_exact,
          {f,553},
          [{tr,{x,0},
               {t_tuple,4,true,
                        #{1 => {t_integer,{0,65535}},
                          2 => {t_integer,{0,65535}},
                          3 => {t_integer,{0,65535}},
                          4 => {t_bitstring,16,false}}}},
           {literal,{344,62879,345,<<245,159,1,89>>}}]}.
    {move,{literal,<<0,0,197,18>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1051}]}.
    {call,1,{f,557}}. % multiple_uses_2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,552},[{x,0},{atom,true}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1684},0,0,{x,1},{list,[]}}.
    {move,{literal,<<0,0,42,43>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1052}]}.
    {call,2,{f,559}}. % multiple_uses_3/2
    {test,is_eq_exact,{f,551},[{x,0},{literal,<<"*+">>}]}.
    {move,{integer,42},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1054}]}.
    {call,2,{f,565}}. % first_after/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[ok]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,550},
          [{tr,{x,0},
               {t_union,{t_atom,[ok]},none,none,none,{t_bitstring,8,false}}},
           {atom,ok}]}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1055}]}.
    {call,2,{f,565}}. % first_after/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[ok]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,549},
          [{tr,{x,0},
               {t_union,{t_atom,[ok]},none,none,none,{t_bitstring,8,false}}},
           {literal,<<1>>}]}.
    {move,{integer,1},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1056}]}.
    {call,2,{f,565}}. % first_after/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[ok]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,548},
          [{tr,{x,0},
               {t_union,{t_atom,[ok]},none,none,none,{t_bitstring,8,false}}},
           {literal,<<2>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,548}.
    {badmatch,{x,0}}.
  {label,549}.
    {line,[{location,"bs_match_r25_SUITE.erl",1055}]}.
    {badmatch,{x,0}}.
  {label,550}.
    {line,[{location,"bs_match_r25_SUITE.erl",1054}]}.
    {badmatch,{x,0}}.
  {label,551}.
    {line,[{location,"bs_match_r25_SUITE.erl",1052}]}.
    {badmatch,{x,0}}.
  {label,552}.
    {line,[{location,"bs_match_r25_SUITE.erl",1051}]}.
    {badmatch,{atom,false}}.
  {label,553}.
    {line,[{location,"bs_match_r25_SUITE.erl",1050}]}.
    {badmatch,{x,0}}.


{function, multiple_uses_1, 1, 555}.
  {label,554}.
    {line,[{location,"bs_match_r25_SUITE.erl",1060}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,multiple_uses_1},1}.
  {label,555}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,554},
          2,
          [{tr,{x,1},{t_bs_context,16}},
           {integer,16},
           1,
           {field_flags,[{anno,[1060,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {allocate,2,3}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,2},{y,1}}.
    {bs_get_tail,{x,1},{y,0},2}.
    {move,{y,0},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1062}]}.
    {call,1,{f,561}}. % multiple_uses_match/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,65535}},
                                     2 => {t_integer,{0,65535}}}}}]}}.
    {test_heap,5,1}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {put_tuple2,{x,0},{list,[{y,1},{x,1},{x,0},{y,0}]}}.
    {deallocate,2}.
    return.


{function, multiple_uses_2, 1, 557}.
  {label,556}.
    {line,[{location,"bs_match_r25_SUITE.erl",1065}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,multiple_uses_2},1}.
  {label,557}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_skip_bits2,
          {f,556},
          [{x,1},
           {integer,16},
           1,
           {field_flags,[{anno,[1065,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_get_tail,{x,1},{x,1},2}.
    {move,{x,1},{x,0}}.
    {call_only,2,{f,563}}. % multiple_uses_cmp/2


{function, multiple_uses_3, 2, 559}.
  {label,558}.
    {line,[{location,"bs_match_r25_SUITE.erl",1069}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,multiple_uses_3},2}.
  {label,559}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_fun,1,{id,1},any}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,2}}.
    {test,bs_skip_bits2,
          {f,558},
          [{x,2},
           {integer,16},
           1,
           {field_flags,[{anno,[1069,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_get_tail,{x,2},{x,0},3}.
    {call_only,1,{f,1684}}. % id/1


{function, multiple_uses_match, 1, 561}.
  {label,560}.
    {line,[{location,"bs_match_r25_SUITE.erl",1073}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,multiple_uses_match},1}.
  {label,561}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,560},
          2,
          [{tr,{x,1},{t_bs_context,16}},
           {integer,16},
           1,
           {field_flags,[{anno,[1073,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,560},
          3,
          [{tr,{x,1},{t_bs_context,16}},
           {integer,16},
           1,
           {field_flags,[{anno,[1073,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,560},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.


{function, multiple_uses_cmp, 2, 563}.
  {label,562}.
    {line,[{location,"bs_match_r25_SUITE.erl",1076}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,multiple_uses_cmp},2}.
  {label,563}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,16,false}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,2}}.
    {test,bs_get_integer2,
          {f,562},
          3,
          [{tr,{x,2},{t_bs_context,16}},
           {integer,16},
           1,
           {field_flags,[{anno,[1076,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,562},[{x,2},0]}.
    {bs_start_match4,{atom,no_fail},4,{x,1},{x,2}}.
    {test,bs_get_integer2,
          {f,562},
          4,
          [{tr,{x,2},{t_bs_context,16}},
           {integer,16},
           1,
           {field_flags,[{anno,[1076,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,562},[{x,2},0]}.
    {bif,'=:=',
         {f,0},
         [{tr,{x,4},{t_integer,{0,65535}}},{tr,{x,3},{t_integer,{0,65535}}}],
         {x,0}}.
    return.


{function, first_after, 2, 565}.
  {label,564}.
    {line,[{location,"bs_match_r25_SUITE.erl",1079}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,first_after},2}.
  {label,565}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,42}}}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1080}]}.
    {gc_bif,byte_size,{f,0},2,[{tr,{x,0},{t_bitstring,8,false}}],{x,2}}.
    {test,is_lt,
          {f,566},
          [{tr,{x,1},{t_integer,{0,42}}},
           {tr,{x,2},{t_integer,{0,288230376151711743}}}]}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,2}}.
    {test,bs_skip_bits2,
          {f,567},
          [{x,2},
           {x,1},
           8,
           {field_flags,[{anno,[1085,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {allocate,0,3}.
    {bs_get_tail,{x,2},{x,1},3}.
    {line,[{location,"bs_match_r25_SUITE.erl",1087}]}.
    {call,2,{f,569}}. % match_first/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_bitstring,8,false},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {get_tuple_element,{x,0},0,{x,0}}.
    {deallocate,0}.
    return.
  {label,566}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,567}.
    {line,[{location,"bs_match_r25_SUITE.erl",1085}]}.
    {badmatch,{x,0}}.


{function, match_first, 2, 569}.
  {label,568}.
    {line,[{location,"bs_match_r25_SUITE.erl",1094}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,match_first},2}.
  {label,569}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,2}}.
    {test,bs_get_binary2,
          {f,568},
          3,
          [{tr,{x,2},{t_bs_context,8}},
           {integer,1},
           8,
           {field_flags,[{anno,[1094,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_tail,{x,2},{x,0},4}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,3},{x,0}]}}.
    return.


{function, zero_label, 1, 571}.
  {label,570}.
    {line,[{location,"bs_match_r25_SUITE.erl",1097}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,zero_label},1}.
  {label,571}.
    {test,is_list,{f,570},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<"FACEnosemouth">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1098}]}.
    {call,1,{f,575}}. % read_pols/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,573},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<"nosemouth">>}]}.
    {move,{literal,<<"noFACE">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1099}]}.
    {call,1,{f,575}}. % read_pols/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,572},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<"CE">>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,572}.
    {badmatch,{x,0}}.
  {label,573}.
    {line,[{location,"bs_match_r25_SUITE.erl",1098}]}.
    {badmatch,{x,0}}.


{function, read_pols, 1, 575}.
  {label,574}.
    {line,[{location,"bs_match_r25_SUITE.erl",1102}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,read_pols},1}.
  {label,575}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_skip_bits2,
          {f,576},
          [{x,1},
           {integer,4},
           8,
           {field_flags,[{anno,[1103,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_get_tail,{x,1},{x,0},2}.
    return.
  {label,576}.
    {line,[{location,"bs_match_r25_SUITE.erl",1103}]}.
    {badmatch,{x,0}}.


{function, followed_by_catch, 1, 578}.
  {label,577}.
    {line,[{location,"bs_match_r25_SUITE.erl",1108}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,followed_by_catch},1}.
  {label,578}.
    {test,is_list,{f,577},[{x,0}]}.
    {move,{literal,<<0,1,2,3,4,5>>},{x,0}}.
    {call_only,1,{f,580}}. % handle/1


{function, handle, 1, 580}.
  {label,579}.
    {line,[{location,"bs_match_r25_SUITE.erl",1112}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,handle},1}.
  {label,580}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {test,is_eq_exact,
          {f,581},
          [{tr,{x,0},{t_bitstring,16,false}},{literal,<<>>}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,581}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_skip_bits2,
          {f,585},
          [{x,1},
           {integer,16},
           1,
           {field_flags,[{anno,[1114,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {allocate,2,2}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {bs_get_tail,{x,1},{y,0},2}.
    {'catch',{y,1},{f,582}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",1115}]}.
    {call_ext,0,{extfunc,fooX,func,0}}.
  {label,582}.
    {catch_end,{y,1}}.
    {test,is_nonempty_list,{f,583},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_nil,{f,583},[{x,0}]}.
    {test,is_tagged_tuple,{f,584},[{x,1},2,{atom,rec}]}.
  {label,583}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,580},2}. % handle/1
  {label,584}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1117}]}.
    {badrecord,{x,1}}.
  {label,585}.
    {line,[{scope,[0,2]},{location,"bs_match_r25_SUITE.erl",1114}]}.
    {badmatch,{x,0}}.


{function, matching_meets_construction, 1, 587}.
  {label,586}.
    {line,[{location,"bs_match_r25_SUITE.erl",1123}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,matching_meets_construction},1}.
  {label,587}.
    {test,is_list,{f,586},[{x,0}]}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1124}]}.
    {call,1,{f,1684}}. % id/1
    {move,{x,0},{y,1}}.
    {move,{integer,2},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1125}]}.
    {call,1,{f,1684}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{literal,<<1,2,3,4,5>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1126}]}.
    {call,1,{f,1684}}. % id/1
    {test,bs_start_match3,{f,595},1,[{x,0}],{x,1}}.
    {test,bs_skip_bits2,
          {f,595},
          [{x,1},
           {y,0},
           8,
           {field_flags,[{anno,[1127,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,595},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {atom,all},
           8,
           {field_flags,[{anno,[1127,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1128}]}.
    {bs_create_bin,{f,0},
                   0,2,8,
                   {x,0},
                   {list,[{atom,append},
                          1,8,nil,
                          {tr,{x,1},{t_bitstring,8,false}},
                          {atom,all},
                          {atom,binary},
                          2,8,nil,
                          {y,1},
                          {atom,all}]}}.
    {test,is_eq_exact,
          {f,594},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<3,4,5,97,98,99>>}]}.
    {'catch',{y,1},{f,588}}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,<<"Abc">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",1130}]}.
    {call,1,{f,597}}. % matching_meets_construction_1/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
  {label,588}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,593},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,593},[{x,1},2,{atom,badarg}]}.
    {'catch',{y,0},{f,589}}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{literal,<<"Abc">>},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r25_SUITE.erl",1131}]}.
    {call,1,{f,599}}. % matching_meets_construction_2/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
  {label,589}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,592},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,592},[{x,1},2,{atom,badarg}]}.
    {move,{literal,<<"Abc">>},{x,0}}.
    {line,[{scope,[1,2]},{location,"bs_match_r25_SUITE.erl",1132}]}.
    {call,1,{f,601}}. % matching_meets_construction_3/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,591},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<"Bbc">>}]}.
    {move,{integer,2},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1134}]}.
    {call,2,{f,603}}. % encode_octet_string/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {test,is_eq_exact,
          {f,590},
          [{tr,{x,0},{t_bitstring,16,false}},{literal,<<1,2>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,590}.
    {badmatch,{x,0}}.
  {label,591}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1132}]}.
    {badmatch,{x,0}}.
  {label,592}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1131}]}.
    {badmatch,{x,0}}.
  {label,593}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",1130}]}.
    {badmatch,{x,0}}.
  {label,594}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",1129}]}.
    {badmatch,{x,0}}.
  {label,595}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",1127}]}.
    {badmatch,{x,0}}.


{function, matching_meets_construction_1, 1, 597}.
  {label,596}.
    {line,[{location,"bs_match_r25_SUITE.erl",1137}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,matching_meets_construction_1},
               1}.
  {label,597}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_match_string,{f,596},[{x,1},8,{string,<<"A">>}]}.
    {bs_get_tail,{x,1},{x,0},2}.
    {bs_create_bin,{f,0},
                   0,1,16,
                   {x,0},
                   {list,[{atom,string},
                          0,8,nil,
                          {string,<<"B">>},
                          {integer,1},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,0},{t_bitstring,8,false}},
                          {integer,8}]}}.
    return.


{function, matching_meets_construction_2, 1, 599}.
  {label,598}.
    {line,[{location,"bs_match_r25_SUITE.erl",1139}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,matching_meets_construction_2},
               1}.
  {label,599}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_match_string,{f,598},[{x,1},8,{string,<<"A">>}]}.
    {bs_get_tail,{x,1},{x,0},2}.
    {bs_create_bin,{f,0},
                   0,1,8,
                   {x,0},
                   {list,[{atom,string},
                          0,8,nil,
                          {string,<<"B">>},
                          {integer,1},
                          {atom,float},
                          2,1,nil,
                          {tr,{x,0},{t_bitstring,8,false}},
                          {integer,64}]}}.
    return.


{function, matching_meets_construction_3, 1, 601}.
  {label,600}.
    {line,[{location,"bs_match_r25_SUITE.erl",1141}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,matching_meets_construction_3},
               1}.
  {label,601}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_match_string,{f,600},[{x,1},8,{string,<<"A">>}]}.
    {bs_get_tail,{x,1},{x,0},2}.
    {bs_create_bin,{f,0},
                   0,1,8,
                   {x,0},
                   {list,[{atom,string},
                          0,8,nil,
                          {string,<<"B">>},
                          {integer,1},
                          {atom,binary},
                          2,8,nil,
                          {tr,{x,0},{t_bitstring,8,false}},
                          {atom,all}]}}.
    return.


{function, encode_octet_string, 2, 603}.
  {label,602}.
    {line,[{location,"bs_match_r25_SUITE.erl",1143}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,encode_octet_string},2}.
  {label,603}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{2,2}}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {line,[{location,"bs_match_r25_SUITE.erl",1144}]}.
    {bs_create_bin,{f,0},
                   0,1,16,
                   {x,0},
                   {list,[{atom,binary},
                          1,8,nil,
                          {tr,{x,0},{t_bitstring,8,false}},
                          {integer,2}]}}.
    return.


{function, simon, 1, 605}.
  {label,604}.
    {line,[{location,"bs_match_r25_SUITE.erl",1146}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,simon},1}.
  {label,605}.
    {test,is_list,{f,604},[{x,0}]}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{literal,<<>>},{x,1}}.
    {move,{atom,blurf},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1147}]}.
    {call,2,{f,612}}. % simon/2
    {'%',{var_info,{x,0},[{type,{t_atom,[one]}}]}}.
    {move,{literal,<<"*">>},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1148}]}.
    {call,2,{f,612}}. % simon/2
    {'%',{var_info,{x,0},[{type,{t_atom,[one,two]}}]}}.
    {test,is_eq_exact,{f,610},[{tr,{x,0},{t_atom,[one,two]}},{atom,two}]}.
    {'catch',{y,2},{f,606}}.
    {move,{literal,<<1>>},{x,1}}.
    {move,{integer,17},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",1149}]}.
    {call,2,{f,612}}. % simon/2
    {'%',{var_info,{x,0},[{type,{t_atom,[one]}}]}}.
  {label,606}.
    {catch_end,{y,2}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[17,<<1>>]},{x,1}}.
    {move,{atom,simon},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r25_SUITE.erl",1149}]}.
    {call,3,{f,843}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,1},{f,607}}.
    {move,{literal,<<1,2,3>>},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r25_SUITE.erl",1150}]}.
    {call,2,{f,612}}. % simon/2
    {'%',{var_info,{x,0},[{type,{t_atom,[one,two]}}]}}.
  {label,607}.
    {catch_end,{y,1}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[0,<<1,2,3>>]},{x,1}}.
    {move,{atom,simon},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r25_SUITE.erl",1150}]}.
    {call,3,{f,843}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<"\t">>},{x,1}}.
    {move,{atom,blurf},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r25_SUITE.erl",1152}]}.
    {call,2,{f,615}}. % simon2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[one]}}]}}.
    {move,{literal,<<9,1>>},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r25_SUITE.erl",1153}]}.
    {call,2,{f,615}}. % simon2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[one,two]}}]}}.
    {test,is_eq_exact,{f,609},[{tr,{x,0},{t_atom,[one,two]}},{atom,two}]}.
    {'catch',{y,0},{f,608}}.
    {move,{literal,<<"\t\n\v">>},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",1154}]}.
    {call,2,{f,615}}. % simon2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[one,two]}}]}}.
  {label,608}.
    {catch_end,{y,0}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[0,<<"\t\n\v">>]},{x,1}}.
    {move,{atom,simon2},{x,0}}.
    {call_last,3,{f,843},3}. % fc/3
  {label,609}.
    {line,[{scope,[0,2]},{location,"bs_match_r25_SUITE.erl",1153}]}.
    {badmatch,{atom,one}}.
  {label,610}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",1148}]}.
    {badmatch,{atom,one}}.


{function, simon, 2, 612}.
  {label,611}.
    {line,[{location,"bs_match_r25_SUITE.erl",1157}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,simon},2}.
  {label,612}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[blurf]},
                                   none,
                                   {t_integer,{0,17}},
                                   none,none}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,2}}.
    {test,bs_test_tail2,{f,613},[{x,2},0]}.
    {move,{atom,one},{x,0}}.
    return.
  {label,613}.
    {test,bs_test_tail2,{f,611},[{x,2},8]}.
    {test,is_eq_exact,
          {f,611},
          [{tr,{x,0},
               {t_union,{t_atom,[blurf]},none,{t_integer,{0,17}},none,none}},
           {integer,0}]}.
    {move,{atom,two},{x,0}}.
    return.


{function, simon2, 2, 615}.
  {label,614}.
    {line,[{location,"bs_match_r25_SUITE.erl",1160}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,simon2},2}.
  {label,615}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[blurf]},
                                   none,
                                   {t_integer,{0,0}},
                                   none,none}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,2}}.
    {bs_get_position,{x,2},{x,3},3}.
    {test,bs_get_integer2,
          {f,616},
          4,
          [{tr,{x,2},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1160,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,is_eq_exact,{f,616},[{tr,{x,4},{t_integer,{0,255}}},{integer,9}]}.
    {test,bs_test_tail2,{f,616},[{x,2},0]}.
    {move,{atom,one},{x,0}}.
    return.
  {label,616}.
    {bs_set_position,{x,2},{x,3}}.
    {test,bs_test_tail2,{f,614},[{x,2},16]}.
    {test,is_eq_exact,
          {f,614},
          [{tr,{x,0},
               {t_union,{t_atom,[blurf]},none,{t_integer,{0,0}},none,none}},
           {integer,0}]}.
    {move,{atom,two},{x,0}}.
    return.


{function, matching_and_andalso, 1, 618}.
  {label,617}.
    {line,[{location,"bs_match_r25_SUITE.erl",1165}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,matching_and_andalso},1}.
  {label,618}.
    {test,is_list,{f,617},[{x,0}]}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{integer,3},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1166}]}.
    {call,2,{f,636}}. % matching_and_andalso_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,2},{f,619}}.
    {move,{integer,-8},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1167}]}.
    {call,2,{f,636}}. % matching_and_andalso_1/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,619}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,634},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,634},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,1},{f,620}}.
    {move,{atom,blurf},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r25_SUITE.erl",1168}]}.
    {call,2,{f,636}}. % matching_and_andalso_1/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,620}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,633},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,633},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,0},{f,621}}.
    {move,{integer,19},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r25_SUITE.erl",1169}]}.
    {call,2,{f,636}}. % matching_and_andalso_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,621}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,632},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,632},[{x,1},2,{atom,function_clause}]}.
    {move,{literal,<<"-xyz">>},{x,1}}.
    {move,{literal,"abc"},{x,0}}.
    {line,[{scope,[1,2]},{location,"bs_match_r25_SUITE.erl",1171}]}.
    {call,2,{f,638}}. % matching_and_andalso_23/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[error]},
                     none,none,
                     {t_tuple,2,true,
                         #{1 => {t_list,{t_integer,{97,99}},nil},
                           2 => {t_bitstring,8,false}}},
                     none}}]}}.
    {test,is_eq_exact,
          {f,631},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,none,
                        {t_tuple,2,true,
                                 #{1 => {t_list,{t_integer,{97,99}},nil},
                                   2 => {t_bitstring,8,false}}},
                        none}},
           {literal,{"abc",<<"xyz">>}}]}.
    {move,{literal,<<"`">>},{x,1}}.
    {move,{literal,"abc"},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1172}]}.
    {call,2,{f,638}}. % matching_and_andalso_23/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[error]},
                     none,none,
                     {t_tuple,2,true,
                         #{1 => {t_list,{t_integer,{97,99}},nil},
                           2 => {t_bitstring,8,false}}},
                     none}}]}}.
    {test,is_eq_exact,
          {f,630},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,none,
                        {t_tuple,2,true,
                                 #{1 => {t_list,{t_integer,{97,99}},nil},
                                   2 => {t_bitstring,8,false}}},
                        none}},
           {literal,{"abc",<<>>}}]}.
    {move,{literal,<<"{">>},{x,1}}.
    {move,{literal,"abc"},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1173}]}.
    {call,2,{f,638}}. % matching_and_andalso_23/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[error]},
                     none,none,
                     {t_tuple,2,true,
                         #{1 => {t_list,{t_integer,{97,99}},nil},
                           2 => {t_bitstring,8,false}}},
                     none}}]}}.
    {test,is_eq_exact,
          {f,629},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,none,
                        {t_tuple,2,true,
                                 #{1 => {t_list,{t_integer,{97,99}},nil},
                                   2 => {t_bitstring,8,false}}},
                        none}},
           {literal,{"abc",<<>>}}]}.
    {move,{literal,<<"@">>},{x,1}}.
    {move,{literal,"abc"},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1174}]}.
    {call,2,{f,638}}. % matching_and_andalso_23/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[error]},
                     none,none,
                     {t_tuple,2,true,
                         #{1 => {t_list,{t_integer,{97,99}},nil},
                           2 => {t_bitstring,8,false}}},
                     none}}]}}.
    {test,is_eq_exact,
          {f,628},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,none,
                        {t_tuple,2,true,
                                 #{1 => {t_list,{t_integer,{97,99}},nil},
                                   2 => {t_bitstring,8,false}}},
                        none}},
           {literal,{"abc",<<>>}}]}.
    {move,{literal,<<"[">>},{x,1}}.
    {move,{literal,"abc"},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1175}]}.
    {call,2,{f,638}}. % matching_and_andalso_23/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[error]},
                     none,none,
                     {t_tuple,2,true,
                         #{1 => {t_list,{t_integer,{97,99}},nil},
                           2 => {t_bitstring,8,false}}},
                     none}}]}}.
    {test,is_eq_exact,
          {f,627},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,none,
                        {t_tuple,2,true,
                                 #{1 => {t_list,{t_integer,{97,99}},nil},
                                   2 => {t_bitstring,8,false}}},
                        none}},
           {literal,{"abc",<<>>}}]}.
    {move,{literal,<<>>},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1176}]}.
    {call,2,{f,638}}. % matching_and_andalso_23/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[error]},
                     none,none,
                     {t_tuple,2,true,
                         #{1 => {t_list,{t_integer,{97,99}},nil},
                           2 => {t_bitstring,8,false}}},
                     none}}]}}.
    {test,is_eq_exact,
          {f,626},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,none,
                        {t_tuple,2,true,
                                 #{1 => {t_list,{t_integer,{97,99}},nil},
                                   2 => {t_bitstring,8,false}}},
                        none}},
           {atom,error}]}.
    {move,{literal,<<"A">>},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1177}]}.
    {call,2,{f,638}}. % matching_and_andalso_23/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[error]},
                     none,none,
                     {t_tuple,2,true,
                         #{1 => {t_list,{t_integer,{97,99}},nil},
                           2 => {t_bitstring,8,false}}},
                     none}}]}}.
    {test,is_eq_exact,
          {f,625},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,none,
                        {t_tuple,2,true,
                                 #{1 => {t_list,{t_integer,{97,99}},nil},
                                   2 => {t_bitstring,8,false}}},
                        none}},
           {atom,error}]}.
    {move,{literal,<<"Z">>},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1178}]}.
    {call,2,{f,638}}. % matching_and_andalso_23/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[error]},
                     none,none,
                     {t_tuple,2,true,
                         #{1 => {t_list,{t_integer,{97,99}},nil},
                           2 => {t_bitstring,8,false}}},
                     none}}]}}.
    {test,is_eq_exact,
          {f,624},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,none,
                        {t_tuple,2,true,
                                 #{1 => {t_list,{t_integer,{97,99}},nil},
                                   2 => {t_bitstring,8,false}}},
                        none}},
           {atom,error}]}.
    {move,{literal,<<"a">>},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1179}]}.
    {call,2,{f,638}}. % matching_and_andalso_23/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[error]},
                     none,none,
                     {t_tuple,2,true,
                         #{1 => {t_list,{t_integer,{97,99}},nil},
                           2 => {t_bitstring,8,false}}},
                     none}}]}}.
    {test,is_eq_exact,
          {f,623},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,none,
                        {t_tuple,2,true,
                                 #{1 => {t_list,{t_integer,{97,99}},nil},
                                   2 => {t_bitstring,8,false}}},
                        none}},
           {atom,error}]}.
    {move,{literal,<<"z">>},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1180}]}.
    {call,2,{f,638}}. % matching_and_andalso_23/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[error]},
                     none,none,
                     {t_tuple,2,true,
                         #{1 => {t_list,{t_integer,{97,99}},nil},
                           2 => {t_bitstring,8,false}}},
                     none}}]}}.
    {test,is_eq_exact,
          {f,622},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,none,
                        {t_tuple,2,true,
                                 #{1 => {t_list,{t_integer,{97,99}},nil},
                                   2 => {t_bitstring,8,false}}},
                        none}},
           {atom,error}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,3}.
    return.
  {label,622}.
    {badmatch,{x,0}}.
  {label,623}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1179}]}.
    {badmatch,{x,0}}.
  {label,624}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1178}]}.
    {badmatch,{x,0}}.
  {label,625}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1177}]}.
    {badmatch,{x,0}}.
  {label,626}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1176}]}.
    {badmatch,{x,0}}.
  {label,627}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1175}]}.
    {badmatch,{x,0}}.
  {label,628}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1174}]}.
    {badmatch,{x,0}}.
  {label,629}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1173}]}.
    {badmatch,{x,0}}.
  {label,630}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1172}]}.
    {badmatch,{x,0}}.
  {label,631}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1171}]}.
    {badmatch,{x,0}}.
  {label,632}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1169}]}.
    {badmatch,{x,0}}.
  {label,633}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",1168}]}.
    {badmatch,{x,0}}.
  {label,634}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",1167}]}.
    {badmatch,{x,0}}.


{function, matching_and_andalso_1, 2, 636}.
  {label,635}.
    {line,[{location,"bs_match_r25_SUITE.erl",1183}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,matching_and_andalso_1},2}.
  {label,636}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_union,{t_atom,[blurf]},
                                   none,
                                   {t_integer,{-8,19}},
                                   none,none}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,2}}.
    {bs_get_tail,{x,2},{x,2},3}.
    {test,is_integer,
          {f,635},
          [{tr,{x,1},
               {t_union,{t_atom,[blurf]},
                        none,
                        {t_integer,{-8,19}},
                        none,none}}]}.
    {line,[{location,"bs_match_r25_SUITE.erl",1184}]}.
    {gc_bif,byte_size,{f,0},3,[{tr,{x,2},{t_bitstring,8,false}}],{x,2}}.
    {test,is_ge,
          {f,635},
          [{tr,{x,2},{t_integer,{0,288230376151711743}}},
           {tr,{x,1},{t_integer,{-8,19}}}]}.
    {test,is_ge,{f,635},[{tr,{x,1},{t_integer,{-8,19}}},{integer,1}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, matching_and_andalso_23, 2, 638}.
  {label,637}.
    {line,[{location,"bs_match_r25_SUITE.erl",1187}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,matching_and_andalso_23},2}.
  {label,638}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{97,99}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {allocate,2,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1188}]}.
    {call,2,{f,641}}. % matching_and_andalso_2/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[error]},
                     none,none,
                     {t_tuple,2,true,
                         #{1 => {t_list,{t_integer,{97,99}},nil},
                           2 => {t_bitstring,8,false}}},
                     none}}]}}.
    {swap,{y,1},{x,0}}.
    {move,{y,0},{x,1}}.
    {trim,1,1}.
    {line,[{location,"bs_match_r25_SUITE.erl",1189}]}.
    {call,2,{f,646}}. % matching_and_andalso_3/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[error]},
                     none,none,
                     {t_tuple,2,true,
                         #{1 => {t_list,{t_integer,{97,99}},nil},
                           2 => {t_bitstring,8,false}}},
                     none}}]}}.
    {test,is_eq_exact,
          {f,639},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,none,
                        {t_tuple,2,true,
                                 #{1 => {t_list,{t_integer,{97,99}},nil},
                                   2 => {t_bitstring,8,false}}},
                        none}},
           {tr,{y,0},
               {t_union,{t_atom,[error]},
                        none,none,
                        {t_tuple,2,true,
                                 #{1 => {t_list,{t_integer,{97,99}},nil},
                                   2 => {t_bitstring,8,false}}},
                        none}}]}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,639}.
    {badmatch,{x,0}}.


{function, matching_and_andalso_2, 2, 641}.
  {label,640}.
    {line,[{location,"bs_match_r25_SUITE.erl",1192}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,matching_and_andalso_2},2}.
  {label,641}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{97,99}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,644},
          2,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1192,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{x,1},3}.
    {test,is_ge,{f,642},[{tr,{x,2},{t_integer,{0,255}}},{integer,97}]}.
    {test,is_ge,{f,643},[{integer,122},{tr,{x,2},{t_integer,{97,255}}}]}.
    {jump,{f,644}}.
  {label,642}.
    {test,is_ge,{f,643},[{tr,{x,2},{t_integer,{0,96}}},{integer,65}]}.
    {test,is_ge,{f,644},[{tr,{x,2},{t_integer,{65,96}}},{integer,91}]}.
  {label,643}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    return.
  {label,644}.
    {move,{atom,error},{x,0}}.
    return.


{function, matching_and_andalso_3, 2, 646}.
  {label,645}.
    {line,[{location,"bs_match_r25_SUITE.erl",1200}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,matching_and_andalso_3},2}.
  {label,646}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{97,99}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,649},
          2,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1200,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{x,1},3}.
    {gc_bif,abs,{f,649},3,[{tr,{x,2},{t_integer,{0,255}}}],{x,2}}.
    {test,is_ge,{f,647},[{tr,{x,2},{t_integer,{0,255}}},{integer,97}]}.
    {test,is_ge,{f,648},[{integer,122},{tr,{x,2},{t_integer,{97,255}}}]}.
    {jump,{f,649}}.
  {label,647}.
    {test,is_ge,{f,648},[{tr,{x,2},{t_integer,{0,96}}},{integer,65}]}.
    {test,is_ge,{f,649},[{tr,{x,2},{t_integer,{65,96}}},{integer,91}]}.
  {label,648}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    return.
  {label,649}.
    {move,{atom,error},{x,0}}.
    return.


{function, otp_7188, 1, 651}.
  {label,650}.
    {line,[{location,"bs_match_r25_SUITE.erl",1207}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,otp_7188},1}.
  {label,651}.
    {test,is_list,{f,650},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<84,65,71,68,117,154,105,232,107,121,0,0,0,0,0,0,0,0,0,0,
                     0,0,0,0,0,0,0,0,0,0,0,0,0,68,97,110,105,101,108,32,76,97,
                     110,100,97,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,66,101,
                     115,116,32,79,102,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
                     0,0,0,0,50,48,48,48,50,48,48,48,32,45,32,66,101,115,116,
                     32,79,102,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,
                     32,12>>},
          {x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1218}]}.
    {call,1,{f,654}}. % parse_v1_or_v11_tag/1
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_union,
         {t_atom,[error]},
         none,none,
         [{{2,{t_atom,[ok]}},
           {t_tuple,2,true,
            #{1 => {t_atom,[ok]},
              2 =>
               {t_tuple,2,true,
                #{1 => {t_cons,{t_integer,{46,118}},nil},
                  2 =>
                   {t_cons,
                    {t_union,none,none,none,
                     [{{2,{t_atom,[album]}},
                       {t_tuple,2,true,
                        #{1 => {t_atom,[album]},2 => {t_bitstring,8,false}}}},
                      {{2,{t_atom,[artist]}},
                       {t_tuple,2,true,
                        #{1 => {t_atom,[artist]},2 => {t_bitstring,8,false}}}},
                      {{2,{t_atom,[title]}},
                       {t_tuple,2,true,
                        #{1 => {t_atom,[title]},2 => {t_bitstring,8,false}}}},
                      {{2,{t_atom,[track]}},
                       {t_tuple,2,true,
                        #{1 => {t_atom,[track]},2 => {t_integer,{0,255}}}}}],
                     none},
                    nil}}}}}}],
         none}}]}}.
    {test,is_eq_exact,
     {f,652},
     [{tr,
       {x,0},
       {t_union,
        {t_atom,[error]},
        none,none,
        [{{2,{t_atom,[ok]}},
          {t_tuple,2,true,
           #{1 => {t_atom,[ok]},
             2 =>
              {t_tuple,2,true,
               #{1 => {t_cons,{t_integer,{46,118}},nil},
                 2 =>
                  {t_cons,
                   {t_union,none,none,none,
                    [{{2,{t_atom,[album]}},
                      {t_tuple,2,true,
                       #{1 => {t_atom,[album]},2 => {t_bitstring,8,false}}}},
                     {{2,{t_atom,[artist]}},
                      {t_tuple,2,true,
                       #{1 => {t_atom,[artist]},2 => {t_bitstring,8,false}}}},
                     {{2,{t_atom,[title]}},
                      {t_tuple,2,true,
                       #{1 => {t_atom,[title]},2 => {t_bitstring,8,false}}}},
                     {{2,{t_atom,[track]}},
                      {t_tuple,2,true,
                       #{1 => {t_atom,[track]},2 => {t_integer,{0,255}}}}}],
                    none},
                   nil}}}}}}],
        none}},
      {literal,
       {ok,
        {"ID3v1",
         [{title,<<68,117,154,105,232,107,121>>},
          {artist,<<"Daniel Landa">>},
          {album,<<"Best Of">>}]}}}]}.
    {deallocate,0}.
    return.
  {label,652}.
    {line,[{location,"bs_match_r25_SUITE.erl",1215}]}.
    {badmatch,{x,0}}.


{function, parse_v1_or_v11_tag, 1, 654}.
  {label,653}.
    {line,[{location,"bs_match_r25_SUITE.erl",1220}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,parse_v1_or_v11_tag},1}.
  {label,654}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_match_string,{f,656},[{x,0},24,{string,<<"TAG">>}]}.
    {test,bs_get_binary2,
          {f,656},
          1,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,30},
           8,
           {field_flags,[{anno,[1220,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_get_binary2,
          {f,656},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,30},
           8,
           {field_flags,[{anno,[1220,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,656},
          3,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,30},
           8,
           {field_flags,[{anno,[1220,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_skip_bits2,
          {f,656},
          [{x,0},
           {integer,4},
           8,
           {field_flags,[{anno,[1220,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_get_position,{x,0},{x,4},4}.
    {test,bs_skip_bits2,
          {f,655},
          [{x,0},
           {integer,28},
           8,
           {field_flags,[{anno,[1220,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_match_string,{f,655},[{x,0},8,{string,<<0>>}]}.
    {test,bs_get_integer2,
          {f,655},
          5,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1220,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_test_tail2,{f,655},[{x,0},8]}.
    {allocate,3,6}.
    {move,{x,5},{y,0}}.
    {move,{x,3},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1226}]}.
    {call,1,{f,658}}. % trim/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {swap,{y,2},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1227}]}.
    {call,1,{f,658}}. % trim/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {swap,{y,1},{x,0}}.
    {call,1,{f,658}}. % trim/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
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
  {label,655}.
    {bs_set_position,{x,0},{x,4}}.
    {test,bs_test_tail2,{f,656},[{x,0},248]}.
    {allocate,2,4}.
    {move,{x,3},{y,0}}.
    {move,{x,2},{y,1}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1234}]}.
    {call,1,{f,658}}. % trim/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {swap,{y,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1235}]}.
    {call,1,{f,658}}. % trim/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {swap,{y,0},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1236}]}.
    {call,1,{f,658}}. % trim/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
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
  {label,656}.
    {move,{atom,error},{x,0}}.
    return.


{function, trim, 1, 658}.
  {label,657}.
    {line,[{location,"bs_match_r25_SUITE.erl",1240}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,trim},1}.
  {label,658}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {allocate,0,1}.
    {line,[{location,"bs_match_r25_SUITE.erl",1241}]}.
    {call_ext,1,{extfunc,erlang,binary_to_list,1}}.
    {call,1,{f,660}}. % trim_blanks/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {call_ext_last,1,{extfunc,erlang,list_to_binary,1},0}.


{function, trim_blanks, 1, 660}.
  {label,659}.
    {line,[{location,"bs_match_r25_SUITE.erl",1243}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,trim_blanks},1}.
  {label,660}.
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {allocate,0,1}.
    {line,[{location,"bs_match_r25_SUITE.erl",1244}]}.
    {call_ext,1,{extfunc,lists,reverse,1}}.
    {call,1,{f,662}}. % skip_blanks_and_zero/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {call_ext_last,1,{extfunc,lists,reverse,1},0}.


{function, skip_blanks_and_zero, 1, 662}.
  {label,661}.
    {line,[{location,"bs_match_r25_SUITE.erl",1246}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,skip_blanks_and_zero},1}.
  {label,662}.
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_nonempty_list,{f,664},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {select_val,{x,1},
                {f,664},
                {list,[{integer,0},{f,663},{integer,32},{f,663}]}}.
  {label,663}.
    {move,{x,2},{x,0}}.
    {call_only,1,{f,662}}. % skip_blanks_and_zero/1
  {label,664}.
    return.


{function, otp_7233, 1, 666}.
  {label,665}.
    {line,[{location,"bs_match_r25_SUITE.erl",1258}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,otp_7233},1}.
  {label,666}.
    {test,is_list,{f,665},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,{rec_otp_7233,<<"XXabcde">>,[{"xxxxxxxx",42}]}},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1259}]}.
    {call,1,{f,670}}. % otp_7233_1/1
    {bif,get,{f,0},[{atom,io_format}],{x,0}}.
    {test,is_eq_exact,
          {f,668},
          [{x,0},{literal,[<<"XXabcde">>,{"xxxxxxxx",42}]}]}.
    {move,{atom,io_format},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1261}]}.
    {call_ext,1,{extfunc,erlang,erase,1}}.
    {move,{literal,{rec_otp_7233,<<"XXabcde">>,[]}},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1262}]}.
    {call,1,{f,670}}. % otp_7233_1/1
    {bif,get,{f,0},[{atom,io_format}],{x,0}}.
    {test,is_eq_exact,{f,667},[{x,0},{atom,undefined}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,667}.
    {line,[{location,"bs_match_r25_SUITE.erl",1263}]}.
    {badmatch,{x,0}}.
  {label,668}.
    {line,[{location,"bs_match_r25_SUITE.erl",1260}]}.
    {badmatch,{x,0}}.


{function, otp_7233_1, 1, 670}.
  {label,669}.
    {line,[{location,"bs_match_r25_SUITE.erl",1266}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,otp_7233_1},1}.
  {label,670}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,3,true,
                     #{1 => {t_atom,[rec_otp_7233]},
                       2 => {t_bitstring,8,false},
                       3 =>
                           {t_list,
                               {t_tuple,2,true,
                                   #{1 => {t_cons,{t_integer,{120,120}},nil},
                                     2 => {t_integer,{42,42}}}},
                               nil}}}}]}}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,2}}.
    {test,bs_get_binary2,
          {f,673},
          3,
          [{tr,{x,2},{t_bs_context,8}},
           {integer,2},
           8,
           {field_flags,[{anno,[1267,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,673},[{x,2},40]}.
    {test,is_eq_exact,
          {f,672},
          [{tr,{x,3},{t_bitstring,8,false}},{literal,<<"XX">>}]}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {get_tuple_element,{x,0},2,{x,2}}.
    {move,{integer,1},{x,1}}.
    {move,{literal,"xxxxxxxx"},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1271}]}.
    {call_ext,3,{extfunc,lists,keyfind,3}}.
    {test,is_eq_exact,
          {f,671},
          [{tr,{x,0},
               {t_union,{t_atom,[false]},
                        none,none,
                        {t_tuple,1,false,
                                 #{1 => {t_cons,{t_integer,{120,120}},nil}}},
                        none}},
           {atom,false}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,671}.
    {test_heap,4,1}.
    {get_tuple_element,{y,0},1,{x,1}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,1},{x,0},{x,1}}.
    {move,{atom,io_format},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1275}]}.
    {call_ext_last,2,{extfunc,erlang,put,2},1}.
  {label,672}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,673}.
    {line,[{location,"bs_match_r25_SUITE.erl",1267}]}.
    {badmatch,{x,1}}.


{function, otp_7240, 1, 675}.
  {label,674}.
    {line,[{location,"bs_match_r25_SUITE.erl",1281}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,otp_7240},1}.
  {label,675}.
    {test,is_list,{f,674},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<>>},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1282}]}.
    {call,2,{f,680}}. % otp_7240_a/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
    {move,{integer,2},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1283}]}.
    {call,2,{f,680}}. % otp_7240_a/2
    {'%',{var_info,{x,0},[{type,{t_atom,[b]}}]}}.
    {move,{literal,<<>>},{x,1}}.
    {move,{atom,anything},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1285}]}.
    {call,2,{f,683}}. % otp_7240_b/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
    {move,{literal,{x,y}},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1286}]}.
    {call,2,{f,683}}. % otp_7240_b/2
    {'%',{var_info,{x,0},[{type,{t_atom,[b]}}]}}.
    {move,{literal,<<>>},{x,1}}.
    {move,{atom,anything},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1288}]}.
    {call,2,{f,686}}. % otp_7240_c/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
    {move,{literal,<<2>>},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1289}]}.
    {call,2,{f,686}}. % otp_7240_c/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b]}}]}}.
    {test,is_eq_exact,{f,678},[{tr,{x,0},{t_atom,[a,b]}},{atom,b}]}.
    {move,{literal,<<>>},{x,1}}.
    {move,{atom,anything},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1291}]}.
    {call,2,{f,689}}. % otp_7240_d/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b]}}]}}.
    {test,is_eq_exact,{f,677},[{tr,{x,0},{t_atom,[a,b]}},{atom,a}]}.
    {move,{literal,<<2>>},{x,1}}.
    {move,{atom,again},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1292}]}.
    {call,2,{f,689}}. % otp_7240_d/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b]}}]}}.
    {test,is_eq_exact,{f,676},[{tr,{x,0},{t_atom,[a,b]}},{atom,b}]}.
    {move,{literal,<<>>},{x,1}}.
    {move,{atom,anything},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1294}]}.
    {call,2,{f,692}}. % otp_7240_e/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
    {move,{integer,41},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1295}]}.
    {call,2,{f,692}}. % otp_7240_e/2
    {'%',{var_info,{x,0},[{type,{t_atom,[b]}}]}}.
    {move,{literal,<<>>},{x,1}}.
    {move,{atom,anything},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1297}]}.
    {call,2,{f,695}}. % otp_7240_f/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
    {move,{literal,{}},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1298}]}.
    {call,2,{f,695}}. % otp_7240_f/2
    {'%',{var_info,{x,0},[{type,{t_atom,[b]}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,676}.
    {line,[{location,"bs_match_r25_SUITE.erl",1292}]}.
    {badmatch,{atom,a}}.
  {label,677}.
    {line,[{location,"bs_match_r25_SUITE.erl",1291}]}.
    {badmatch,{atom,b}}.
  {label,678}.
    {line,[{location,"bs_match_r25_SUITE.erl",1289}]}.
    {badmatch,{atom,a}}.


{function, otp_7240_a, 2, 680}.
  {label,679}.
    {line,[{location,"bs_match_r25_SUITE.erl",1302}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,otp_7240_a},2}.
  {label,680}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,1}}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_union,none,none,
                                   {t_integer,{2,2}},
                                   none,
                                   {t_bitstring,256,true}}}]}}.
    {test,is_eq_exact,
          {f,681},
          [{tr,{x,1},
               {t_union,none,none,
                        {t_integer,{2,2}},
                        none,
                        {t_bitstring,256,true}}},
           {literal,<<>>}]}.
    {move,{atom,a},{x,0}}.
    return.
  {label,681}.
    {test,is_eq_exact,{f,679},[{tr,{x,0},{t_integer,{0,1}}},{integer,1}]}.
    {test,is_eq_exact,
          {f,679},
          [{tr,{x,1},
               {t_union,none,none,
                        {t_integer,{2,2}},
                        none,
                        {t_bitstring,256,true}}},
           {integer,2}]}.
    {move,{atom,b},{x,0}}.
    return.


{function, otp_7240_b, 2, 683}.
  {label,682}.
    {line,[{location,"bs_match_r25_SUITE.erl",1305}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,otp_7240_b},2}.
  {label,683}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[anything]},
                                   none,
                                   {t_integer,{1,1}},
                                   none,none}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_atom,[x]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[x]},2 => {t_atom,[y]}}}}],
                     {t_bitstring,256,true}}}]}}.
    {test,is_eq_exact,
          {f,684},
          [{tr,{x,1},
               {t_union,none,none,none,
                        [{{2,{t_atom,[x]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[x]},2 => {t_atom,[y]}}}}],
                        {t_bitstring,256,true}}},
           {literal,<<>>}]}.
    {move,{atom,a},{x,0}}.
    return.
  {label,684}.
    {test,is_eq_exact,
          {f,682},
          [{tr,{x,0},
               {t_union,{t_atom,[anything]},none,{t_integer,{1,1}},none,none}},
           {integer,1}]}.
    {test,is_tuple,
          {f,682},
          [{tr,{x,1},
               {t_union,none,none,none,
                        [{{2,{t_atom,[x]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[x]},2 => {t_atom,[y]}}}}],
                        {t_bitstring,256,true}}}]}.
    {move,{atom,b},{x,0}}.
    return.


{function, otp_7240_c, 2, 686}.
  {label,685}.
    {line,[{location,"bs_match_r25_SUITE.erl",1308}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,otp_7240_c},2}.
  {label,686}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[anything]},
                                   none,
                                   {t_integer,{1,1}},
                                   none,none}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,2}}.
    {bs_get_position,{x,2},{x,3},3}.
    {test,bs_match_string,{f,687},[{x,2},8,{string,<<2>>}]}.
    {test,bs_test_tail2,{f,687},[{x,2},0]}.
    {test,is_eq_exact,
          {f,687},
          [{tr,{x,0},
               {t_union,{t_atom,[anything]},none,{t_integer,{1,1}},none,none}},
           {integer,1}]}.
    {move,{atom,b},{x,0}}.
    return.
  {label,687}.
    {bs_set_position,{x,2},{x,3}}.
    {test,bs_test_tail2,{f,685},[{x,2},0]}.
    {move,{atom,a},{x,0}}.
    return.


{function, otp_7240_d, 2, 689}.
  {label,688}.
    {line,[{location,"bs_match_r25_SUITE.erl",1311}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,otp_7240_d},2}.
  {label,689}.
    {'%',{var_info,{x,0},[{type,{t_atom,[again,anything]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,2}}.
    {bs_get_position,{x,2},{x,3},3}.
    {test,bs_match_string,{f,690},[{x,2},8,{string,<<2>>}]}.
    {test,bs_test_tail2,{f,690},[{x,2},0]}.
    {move,{atom,b},{x,0}}.
    return.
  {label,690}.
    {bs_set_position,{x,2},{x,3}}.
    {test,bs_test_tail2,{f,688},[{x,2},0]}.
    {move,{atom,a},{x,0}}.
    return.


{function, otp_7240_e, 2, 692}.
  {label,691}.
    {line,[{location,"bs_match_r25_SUITE.erl",1314}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,otp_7240_e},2}.
  {label,692}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[anything]},
                                   none,
                                   {t_integer,{1,1}},
                                   none,none}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_union,none,none,
                                   {t_integer,{41,41}},
                                   none,
                                   {t_bitstring,256,true}}}]}}.
    {test,is_eq_exact,
          {f,693},
          [{tr,{x,1},
               {t_union,none,none,
                        {t_integer,{41,41}},
                        none,
                        {t_bitstring,256,true}}},
           {literal,<<>>}]}.
    {move,{atom,a},{x,0}}.
    return.
  {label,693}.
    {test,is_eq_exact,
          {f,691},
          [{tr,{x,0},
               {t_union,{t_atom,[anything]},none,{t_integer,{1,1}},none,none}},
           {integer,1}]}.
    {test,is_lt,
          {f,691},
          [{tr,{x,1},
               {t_union,none,none,
                        {t_integer,{41,41}},
                        none,
                        {t_bitstring,256,true}}},
           {integer,42}]}.
    {move,{atom,b},{x,0}}.
    return.


{function, otp_7240_f, 2, 695}.
  {label,694}.
    {line,[{location,"bs_match_r25_SUITE.erl",1317}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,otp_7240_f},2}.
  {label,695}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[anything]},
                                   none,
                                   {t_integer,{1,1}},
                                   none,none}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_union,none,none,none,
                                   {t_tuple,0,true,#{}},
                                   {t_bitstring,256,true}}}]}}.
    {test,is_eq_exact,
          {f,696},
          [{tr,{x,1},
               {t_union,none,none,none,
                        {t_tuple,0,true,#{}},
                        {t_bitstring,256,true}}},
           {literal,<<>>}]}.
    {move,{atom,a},{x,0}}.
    return.
  {label,696}.
    {test,is_eq_exact,
          {f,694},
          [{tr,{x,0},
               {t_union,{t_atom,[anything]},none,{t_integer,{1,1}},none,none}},
           {integer,1}]}.
    {test,is_tuple,
          {f,694},
          [{tr,{x,1},
               {t_union,none,none,none,
                        {t_tuple,0,true,#{}},
                        {t_bitstring,256,true}}}]}.
    {move,{atom,b},{x,0}}.
    return.


{function, otp_7498, 1, 698}.
  {label,697}.
    {line,[{location,"bs_match_r25_SUITE.erl",1320}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,otp_7498},1}.
  {label,698}.
    {test,is_list,{f,697},[{x,0}]}.
    {allocate,0,0}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1321}]}.
    {call,2,{f,708}}. % otp_7498_foo/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,706},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<1,2,3>>}]}.
    {move,{integer,1},{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1322}]}.
    {call,2,{f,708}}. % otp_7498_foo/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,705},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<2,3>>}]}.
    {move,{integer,2},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1323}]}.
    {call,2,{f,708}}. % otp_7498_foo/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,704},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<1,2,3>>}]}.
    {move,{integer,0},{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1325}]}.
    {call,2,{f,712}}. % otp_7498_bar/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,703},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<1,2,3>>}]}.
    {move,{integer,1},{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1326}]}.
    {call,2,{f,712}}. % otp_7498_bar/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,702},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<2,3>>}]}.
    {move,{integer,2},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1327}]}.
    {call,2,{f,712}}. % otp_7498_bar/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,701},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<1,2,3>>}]}.
    {move,{integer,2},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1328}]}.
    {call,2,{f,712}}. % otp_7498_bar/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,700},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<>>}]}.
    {move,{integer,3},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1329}]}.
    {call,2,{f,712}}. % otp_7498_bar/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,699},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<1,2,3>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,699}.
    {badmatch,{x,0}}.
  {label,700}.
    {line,[{location,"bs_match_r25_SUITE.erl",1328}]}.
    {badmatch,{x,0}}.
  {label,701}.
    {line,[{location,"bs_match_r25_SUITE.erl",1327}]}.
    {badmatch,{x,0}}.
  {label,702}.
    {line,[{location,"bs_match_r25_SUITE.erl",1326}]}.
    {badmatch,{x,0}}.
  {label,703}.
    {line,[{location,"bs_match_r25_SUITE.erl",1325}]}.
    {badmatch,{x,0}}.
  {label,704}.
    {line,[{location,"bs_match_r25_SUITE.erl",1323}]}.
    {badmatch,{x,0}}.
  {label,705}.
    {line,[{location,"bs_match_r25_SUITE.erl",1322}]}.
    {badmatch,{x,0}}.
  {label,706}.
    {line,[{location,"bs_match_r25_SUITE.erl",1321}]}.
    {badmatch,{x,0}}.


{function, otp_7498_foo, 2, 708}.
  {label,707}.
    {line,[{location,"bs_match_r25_SUITE.erl",1333}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,otp_7498_foo},2}.
  {label,708}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,43}}}]}}.
    {test,is_eq_exact,{f,709},[{tr,{x,1},{t_integer,{0,43}}},{integer,0}]}.
    {move,{integer,42},{x,1}}.
    {call_only,2,{f,708}}. % otp_7498_foo/2
  {label,709}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,2}}.
    {test,bs_skip_bits2,
          {f,710},
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[1335,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_get_tail,{x,2},{x,2},3}.
    {test,is_eq_exact,{f,710},[{tr,{x,1},{t_integer,{1,43}}},{integer,1}]}.
    {move,{integer,43},{x,1}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,708}}. % otp_7498_foo/2
  {label,710}.
    return.


{function, otp_7498_bar, 2, 712}.
  {label,711}.
    {line,[{location,"bs_match_r25_SUITE.erl",1340}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,otp_7498_bar},2}.
  {label,712}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,44}}}]}}.
    {test,is_eq_exact,{f,713},[{tr,{x,1},{t_integer,{0,44}}},{integer,0}]}.
    {move,{integer,42},{x,1}}.
    {call_only,2,{f,712}}. % otp_7498_bar/2
  {label,713}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,2}}.
    {bs_get_position,{x,2},{x,3},3}.
    {test,bs_skip_bits2,
          {f,714},
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[1342,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_get_tail,{x,2},{x,4},4}.
    {test,is_eq_exact,{f,714},[{tr,{x,1},{t_integer,{1,44}}},{integer,1}]}.
    {move,{integer,43},{x,1}}.
    {move,{x,4},{x,0}}.
    {call_only,2,{f,712}}. % otp_7498_bar/2
  {label,714}.
    {bs_set_position,{x,2},{x,3}}.
    {test,bs_test_tail2,{f,715},[{x,2},0]}.
    {test,is_eq_exact,{f,715},[{tr,{x,1},{t_integer,{1,44}}},{integer,2}]}.
    {move,{integer,44},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {call_only,2,{f,712}}. % otp_7498_bar/2
  {label,715}.
    return.


{function, match_string, 1, 717}.
  {label,716}.
    {line,[{location,"bs_match_r25_SUITE.erl",1350}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,match_string},1}.
  {label,717}.
    {test,is_list,{f,716},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{atom,endian},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1356}]}.
    {call_ext,1,{extfunc,erlang,system_info,1}}.
    {select_val,{x,0},
                {f,729},
                {list,[{atom,big},{f,719},{atom,little},{f,718}]}}.
  {label,718}.
    {move,{literal,<<97,0,98,0>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1358}]}.
    {call,1,{f,731}}. % do_match_string_native/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {jump,{f,720}}.
  {label,719}.
    {move,{literal,<<0,97,0,98>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1360}]}.
    {call,1,{f,731}}. % do_match_string_native/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,720}.
    {move,{literal,<<0,97,0,98>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1363}]}.
    {call,1,{f,733}}. % do_match_string_big/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<97,0,98,0>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1364}]}.
    {call,1,{f,735}}. % do_match_string_little/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<"ÿÿ">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1366}]}.
    {call,1,{f,737}}. % do_match_string_big_signed/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<"ÿÿ">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1367}]}.
    {call,1,{f,739}}. % do_match_string_little_signed/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1369}]}.
    {call,1,{f,741}}. % no_match_string_opt/1
    {'%',{var_info,{x,0},[{type,{t_atom,[plain,strange]}}]}}.
    {test,is_eq_exact,
          {f,728},
          [{tr,{x,0},{t_atom,[plain,strange]}},{atom,plain}]}.
    {move,{literal,<<48,152,140,3:3>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1370}]}.
    {call,1,{f,741}}. % no_match_string_opt/1
    {'%',{var_info,{x,0},[{type,{t_atom,[plain,strange]}}]}}.
    {test,is_eq_exact,
          {f,727},
          [{tr,{x,0},{t_atom,[plain,strange]}},{atom,strange}]}.
    {move,{literal,<<"d">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1372}]}.
    {call,1,{f,1684}}. % id/1
    {call,1,{f,745}}. % do_match_string_tail/1
    {'%',{var_info,{x,0},[{type,{t_atom,[d,dd]}}]}}.
    {test,is_eq_exact,{f,726},[{tr,{x,0},{t_atom,[d,dd]}},{atom,d}]}.
    {move,{literal,<<"dd">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1373}]}.
    {call,1,{f,1684}}. % id/1
    {call,1,{f,745}}. % do_match_string_tail/1
    {'%',{var_info,{x,0},[{type,{t_atom,[d,dd]}}]}}.
    {test,is_eq_exact,{f,725},[{tr,{x,0},{t_atom,[d,dd]}},{atom,dd}]}.
    {move,{literal,<<"a">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1375}]}.
    {call,1,{f,1684}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,0},{x,0}}.
    {call,1,{f,1684}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {call,2,{f,748}}. % do_match_string_var_size/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a,ab]}}]}}.
    {test,is_eq_exact,{f,724},[{tr,{x,0},{t_atom,[a,ab]}},{atom,a}]}.
    {move,{literal,<<"ab">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1376}]}.
    {call,1,{f,1684}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,8},{x,0}}.
    {call,1,{f,1684}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {call,2,{f,748}}. % do_match_string_var_size/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a,ab]}}]}}.
    {test,is_eq_exact,{f,723},[{tr,{x,0},{t_atom,[a,ab]}},{atom,a}]}.
    {move,{literal,<<"ab">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1377}]}.
    {call,1,{f,1684}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,0},{x,0}}.
    {call,1,{f,1684}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {call,2,{f,748}}. % do_match_string_var_size/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a,ab]}}]}}.
    {test,is_eq_exact,{f,722},[{tr,{x,0},{t_atom,[a,ab]}},{atom,ab}]}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1378}]}.
    {call,1,{f,1684}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,8},{x,0}}.
    {call,1,{f,1684}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {call,2,{f,748}}. % do_match_string_var_size/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a,ab]}}]}}.
    {test,is_eq_exact,{f,721},[{tr,{x,0},{t_atom,[a,ab]}},{atom,ab}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,721}.
    {badmatch,{atom,a}}.
  {label,722}.
    {line,[{location,"bs_match_r25_SUITE.erl",1377}]}.
    {badmatch,{atom,a}}.
  {label,723}.
    {line,[{location,"bs_match_r25_SUITE.erl",1376}]}.
    {badmatch,{atom,ab}}.
  {label,724}.
    {line,[{location,"bs_match_r25_SUITE.erl",1375}]}.
    {badmatch,{atom,ab}}.
  {label,725}.
    {line,[{location,"bs_match_r25_SUITE.erl",1373}]}.
    {badmatch,{atom,d}}.
  {label,726}.
    {line,[{location,"bs_match_r25_SUITE.erl",1372}]}.
    {badmatch,{atom,dd}}.
  {label,727}.
    {line,[{location,"bs_match_r25_SUITE.erl",1370}]}.
    {badmatch,{atom,plain}}.
  {label,728}.
    {line,[{location,"bs_match_r25_SUITE.erl",1369}]}.
    {badmatch,{atom,strange}}.
  {label,729}.
    {line,[{location,"bs_match_r25_SUITE.erl",1356}]}.
    {case_end,{x,0}}.


{function, do_match_string_native, 1, 731}.
  {label,730}.
    {line,[{location,"bs_match_r25_SUITE.erl",1382}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_match_string_native},1}.
  {label,731}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,730},
          2,
          [{tr,{x,1},{t_bs_context,32}},
           {integer,16},
           1,
           {field_flags,[{anno,[1382,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,native]}],
          {x,2}}.
    {test,is_eq_exact,{f,730},[{tr,{x,2},{t_integer,{0,65535}}},{integer,97}]}.
    {test,bs_get_integer2,
          {f,730},
          2,
          [{tr,{x,1},{t_bs_context,16}},
           {integer,16},
           1,
           {field_flags,[{anno,[1382,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,native]}],
          {x,2}}.
    {test,is_eq_exact,{f,730},[{tr,{x,2},{t_integer,{0,65535}}},{integer,98}]}.
    {test,bs_test_tail2,{f,730},[{x,1},0]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, do_match_string_big, 1, 733}.
  {label,732}.
    {line,[{location,"bs_match_r25_SUITE.erl",1384}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_match_string_big},1}.
  {label,733}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,false}}]}}.
    {test,is_eq_exact,
          {f,732},
          [{tr,{x,0},{t_bitstring,32,false}},{literal,<<0,97,0,98>>}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, do_match_string_little, 1, 735}.
  {label,734}.
    {line,[{location,"bs_match_r25_SUITE.erl",1386}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_match_string_little},1}.
  {label,735}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_match_string,{f,734},[{x,1},32,{string,<<97,0,98,0>>}]}.
    {test,bs_test_tail2,{f,734},[{x,1},0]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, do_match_string_big_signed, 1, 737}.
  {label,736}.
    {line,[{location,"bs_match_r25_SUITE.erl",1388}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_match_string_big_signed},1}.
  {label,737}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_match_string,{f,736},[{x,1},16,{string,<<"ÿÿ">>}]}.
    {test,bs_test_tail2,{f,736},[{x,1},0]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, do_match_string_little_signed, 1, 739}.
  {label,738}.
    {line,[{location,"bs_match_r25_SUITE.erl",1390}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,do_match_string_little_signed},
               1}.
  {label,739}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_match_string,{f,738},[{x,1},16,{string,<<"ÿÿ">>}]}.
    {test,bs_test_tail2,{f,738},[{x,1},0]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, no_match_string_opt, 1, 741}.
  {label,740}.
    {line,[{location,"bs_match_r25_SUITE.erl",1392}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,no_match_string_opt},1}.
  {label,741}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,740},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1392,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {select_val,{tr,{x,2},{t_integer,{0,255}}},
                {f,740},
                {list,[{integer,48},{f,743},{integer,97},{f,742}]}}.
  {label,742}.
    {test,bs_match_string,{f,740},[{x,1},16,{string,<<"bc">>}]}.
    {test,bs_test_tail2,{f,740},[{x,1},0]}.
    {move,{atom,plain},{x,0}}.
    return.
  {label,743}.
    {test,bs_match_string,{f,740},[{x,1},19,{string,<<152,140,96>>}]}.
    {test,bs_test_tail2,{f,740},[{x,1},0]}.
    {move,{atom,strange},{x,0}}.
    return.


{function, do_match_string_tail, 1, 745}.
  {label,744}.
    {line,[{location,"bs_match_r25_SUITE.erl",1397}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_match_string_tail},1}.
  {label,745}.
    {test,bs_start_match3,{f,744},1,[{x,0}],{x,1}}.
    {test,bs_match_string,{f,744},[{x,1},8,{string,<<"d">>}]}.
    {bs_get_position,{x,1},{x,2},2}.
    {test,bs_get_integer2,
          {f,746},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1397,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,746},[{tr,{x,3},{t_integer,{0,255}}},{integer,100}]}.
    {test,bs_test_unit,{f,746},[{x,1},8]}.
    {move,{atom,dd},{x,0}}.
    return.
  {label,746}.
    {bs_set_position,{x,1},{x,2}}.
    {test,bs_test_unit,{f,744},[{x,1},8]}.
    {move,{atom,d},{x,0}}.
    return.


{function, do_match_string_var_size, 2, 748}.
  {label,747}.
    {line,[{location,"bs_match_r25_SUITE.erl",1399}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_match_string_var_size},2}.
  {label,748}.
    {test,bs_start_match3,{f,750},2,[{x,0}],{x,2}}.
    {test,bs_match_string,{f,750},[{x,2},8,{string,<<"a">>}]}.
    {bs_get_position,{x,2},{x,3},3}.
    {test,bs_get_integer2,
          {f,749},
          4,
          [{tr,{x,2},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1400,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,is_eq_exact,{f,749},[{tr,{x,4},{t_integer,{0,255}}},{integer,98}]}.
    {test,bs_skip_bits2,
          {f,749},
          [{x,2},
           {x,1},
           1,
           {field_flags,[{anno,[1400,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_test_tail2,{f,749},[{x,2},0]}.
    {move,{atom,ab},{x,0}}.
    return.
  {label,749}.
    {bs_set_position,{x,2},{x,3}}.
    {test,bs_skip_bits2,
          {f,750},
          [{x,2},
           {x,1},
           1,
           {field_flags,[{anno,[1400,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_test_tail2,{f,750},[{x,2},0]}.
    {move,{atom,a},{x,0}}.
    return.
  {label,750}.
    {line,[{location,"bs_match_r25_SUITE.erl",1400}]}.
    {case_end,{x,0}}.


{function, zero_width, 1, 752}.
  {label,751}.
    {line,[{location,"bs_match_r25_SUITE.erl",1404}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,zero_width},1}.
  {label,752}.
    {test,is_list,{f,751},[{x,0}]}.
    {move,{literal,<<2,0,104,105>>},{x,0}}.
    {bs_start_match4,{atom,no_fail},0,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,758},
          1,
          [{tr,{x,0},{t_bs_context,32}},
           {integer,16},
           1,
           {field_flags,[{anno,[1405,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,little]}],
          {x,1}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_binary2,
          {f,758},
          2,
          [{tr,{x,0},{t_bs_context,16}},
           {tr,{x,1},{t_integer,{0,65535}}},
           8,
           {field_flags,[{anno,[1405,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,758},[{x,0},0]}.
    {test,is_eq_exact,{f,757},[{tr,{x,1},{t_integer,{0,65535}}},{integer,2}]}.
    {test,is_eq_exact,
          {f,756},
          [{tr,{x,2},{t_bitstring,8,false}},{literal,<<"hi">>}]}.
    {allocate,0,0}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1410}]}.
    {call,1,{f,1684}}. % id/1
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1420}]}.
    {call,1,{f,1811}}. % '-zero_width/1-fun-0-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[no_match,star]},
                                   none,
                                   {t_integer,{0,0}},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,755},
          [{tr,{x,0},
               {t_union,{t_atom,[no_match,star]},
                        none,
                        {t_integer,{0,0}},
                        none,none}},
           {atom,star}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1421}]}.
    {call,1,{f,1811}}. % '-zero_width/1-fun-0-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[no_match,star]},
                                   none,
                                   {t_integer,{0,0}},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,754},
          [{tr,{x,0},
               {t_union,{t_atom,[no_match,star]},
                        none,
                        {t_integer,{0,0}},
                        none,none}},
           {integer,0}]}.
    {move,{literal,<<1>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1422}]}.
    {call,1,{f,1811}}. % '-zero_width/1-fun-0-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[no_match,star]},
                                   none,
                                   {t_integer,{0,0}},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,753},
          [{tr,{x,0},
               {t_union,{t_atom,[no_match,star]},
                        none,
                        {t_integer,{0,0}},
                        none,none}},
           {atom,no_match}]}.
    {move,{atom,whatever},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1423}]}.
    {call,1,{f,1811}}. % '-zero_width/1-fun-0-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[no_match]}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,753}.
    {line,[{location,"bs_match_r25_SUITE.erl",1422}]}.
    {badmatch,{x,0}}.
  {label,754}.
    {line,[{location,"bs_match_r25_SUITE.erl",1421}]}.
    {badmatch,{x,0}}.
  {label,755}.
    {line,[{location,"bs_match_r25_SUITE.erl",1420}]}.
    {badmatch,{x,0}}.
  {label,756}.
    {line,[{location,"bs_match_r25_SUITE.erl",1407}]}.
    {badmatch,{literal,<<"hi">>}}.
  {label,757}.
    {line,[{location,"bs_match_r25_SUITE.erl",1406}]}.
    {badmatch,{x,1}}.
  {label,758}.
    {line,[{location,"bs_match_r25_SUITE.erl",1405}]}.
    {badmatch,{literal,<<2,0,104,105>>}}.


{function, bad_size, 1, 760}.
  {label,759}.
    {line,[{location,"bs_match_r25_SUITE.erl",1429}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bad_size},1}.
  {label,760}.
    {test,is_list,{f,759},[{x,0}]}.
    {allocate,19,0}.
    {init_yregs,{list,[{y,0},
                       {y,1},
                       {y,2},
                       {y,3},
                       {y,4},
                       {y,5},
                       {y,6},
                       {y,7},
                       {y,8},
                       {y,9},
                       {y,10},
                       {y,11},
                       {y,12},
                       {y,13},
                       {y,14},
                       {y,15},
                       {y,16},
                       {y,17}]}}.
    {'catch',{y,18},{f,761}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1435}]}.
    {call,1,{f,1684}}. % id/1
    {badmatch,{x,0}}.
  {label,761}.
    {catch_end,{y,18}}.
    {test,is_tagged_tuple,{f,807},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,807},[{x,1}]}.
    {test,test_arity,{f,807},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,807},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,17},{f,762}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,"$"},{location,"bs_match_r25_SUITE.erl",1436}]}.
    {call,1,{f,1684}}. % id/1
    {badmatch,{x,0}}.
  {label,762}.
    {catch_end,{y,17}}.
    {test,is_tagged_tuple,{f,806},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,806},[{x,1}]}.
    {test,test_arity,{f,806},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,806},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,16},{f,763}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,"\""},{location,"bs_match_r25_SUITE.erl",1437}]}.
    {call,1,{f,1684}}. % id/1
    {badmatch,{x,0}}.
  {label,763}.
    {catch_end,{y,16}}.
    {test,is_tagged_tuple,{f,805},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,805},[{x,1}]}.
    {test,test_arity,{f,805},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,805},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,15},{f,764}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope," "},{location,"bs_match_r25_SUITE.erl",1438}]}.
    {call,1,{f,1684}}. % id/1
    {badmatch,{x,0}}.
  {label,764}.
    {catch_end,{y,15}}.
    {test,is_tagged_tuple,{f,804},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,804},[{x,1}]}.
    {test,test_arity,{f,804},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,804},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,14},{f,765}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[30]},{location,"bs_match_r25_SUITE.erl",1439}]}.
    {call,1,{f,1684}}. % id/1
    {badmatch,{x,0}}.
  {label,765}.
    {catch_end,{y,14}}.
    {test,is_tagged_tuple,{f,803},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,803},[{x,1}]}.
    {test,test_arity,{f,803},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,803},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,13},{f,766}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[28]},{location,"bs_match_r25_SUITE.erl",1440}]}.
    {call,1,{f,1684}}. % id/1
    {badmatch,{x,0}}.
  {label,766}.
    {catch_end,{y,13}}.
    {test,is_tagged_tuple,{f,802},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,802},[{x,1}]}.
    {test,test_arity,{f,802},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,802},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,12},{f,767}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[26]},{location,"bs_match_r25_SUITE.erl",1442}]}.
    {call,1,{f,1684}}. % id/1
    {badmatch,{x,0}}.
  {label,767}.
    {catch_end,{y,12}}.
    {test,is_tagged_tuple,{f,801},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,801},[{x,1}]}.
    {test,test_arity,{f,801},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,801},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,11},{f,768}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[24]},{location,"bs_match_r25_SUITE.erl",1443}]}.
    {call,1,{f,1684}}. % id/1
    {badmatch,{x,0}}.
  {label,768}.
    {catch_end,{y,11}}.
    {test,is_tagged_tuple,{f,800},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,800},[{x,1}]}.
    {test,test_arity,{f,800},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,800},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,10},{f,769}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",1444}]}.
    {call,1,{f,1684}}. % id/1
    {badmatch,{x,0}}.
  {label,769}.
    {catch_end,{y,10}}.
    {test,is_tagged_tuple,{f,799},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,799},[{x,1}]}.
    {test,test_arity,{f,799},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,799},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,9},{f,770}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[20]},{location,"bs_match_r25_SUITE.erl",1445}]}.
    {call,1,{f,1684}}. % id/1
    {badmatch,{x,0}}.
  {label,770}.
    {catch_end,{y,9}}.
    {test,is_tagged_tuple,{f,798},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,798},[{x,1}]}.
    {test,test_arity,{f,798},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,798},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,8},{f,771}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[18]},{location,"bs_match_r25_SUITE.erl",1446}]}.
    {call,1,{f,1684}}. % id/1
    {test,bs_start_match3,{f,780},1,[{x,0}],{x,1}}.
    {test,bs_get_float2,
          {f,780},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,1},
           1,
           {field_flags,[{anno,[1446,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,780},[{tr,{x,2},{t_float,any}},{float,42.0}]}.
    {test,bs_test_tail2,{f,780},[{x,1},0]}.
  {label,771}.
    {catch_end,{y,8}}.
    {test,is_tagged_tuple,{f,797},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,797},[{x,1}]}.
    {test,test_arity,{f,797},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,797},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,7},{f,772}}.
    {move,{literal,<<"ÿÿÿÿ">>},{x,0}}.
    {line,[{scope,[16]},{location,"bs_match_r25_SUITE.erl",1447}]}.
    {call,1,{f,1684}}. % id/1
    {test,bs_start_match3,{f,781},1,[{x,0}],{x,1}}.
    {test,bs_get_float2,
          {f,781},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[1447,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,781},[{tr,{x,2},{t_float,any}},{float,42.0}]}.
    {test,bs_test_tail2,{f,781},[{x,1},0]}.
  {label,772}.
    {catch_end,{y,7}}.
    {test,is_tagged_tuple,{f,796},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,796},[{x,1}]}.
    {test,test_arity,{f,796},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,796},[{x,1},2,{atom,badmatch}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,{f,796},[{x,1},{literal,<<"ÿÿÿÿ">>}]}.
    {'catch',{y,6},{f,773}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_r25_SUITE.erl",1450}]}.
    {call,1,{f,1684}}. % id/1
    {badmatch,{x,0}}.
  {label,773}.
    {catch_end,{y,6}}.
    {test,is_tagged_tuple,{f,795},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,795},[{x,1}]}.
    {test,test_arity,{f,795},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,795},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,5},{f,774}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_match_r25_SUITE.erl",1451}]}.
    {call,1,{f,1684}}. % id/1
    {badmatch,{x,0}}.
  {label,774}.
    {catch_end,{y,5}}.
    {test,is_tagged_tuple,{f,794},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,794},[{x,1}]}.
    {test,test_arity,{f,794},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,794},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,4},{f,775}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,"\n"},{location,"bs_match_r25_SUITE.erl",1452}]}.
    {call,1,{f,1684}}. % id/1
    {badmatch,{x,0}}.
  {label,775}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,793},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,793},[{x,1}]}.
    {test,test_arity,{f,793},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,793},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,3},{f,776}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",1453}]}.
    {call,1,{f,1684}}. % id/1
    {badmatch,{x,0}}.
  {label,776}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,792},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,792},[{x,1}]}.
    {test,test_arity,{f,792},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,792},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,2},{f,777}}.
    {move,{literal,<<1:1>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",1454}]}.
    {call,1,{f,1684}}. % id/1
    {test,bs_start_match3,{f,782},1,[{x,0}],{x,1}}.
    {test,bs_get_float2,
          {f,782},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,1},
           1,
           {field_flags,[{anno,[1454,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,782},[{x,1},0]}.
  {label,777}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,791},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,791},[{x,1}]}.
    {test,test_arity,{f,791},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,791},[{x,1},2,{atom,badmatch}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,bs_start_match3,{f,791},2,[{x,1}],{x,1}}.
    {test,bs_match_string,{f,791},[{x,1},1,{string,<<128>>}]}.
    {test,bs_test_tail2,{f,791},[{x,1},0]}.
    {'catch',{y,1},{f,778}}.
    {move,{literal,<<"ÿÿÿÿ">>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r25_SUITE.erl",1455}]}.
    {call,1,{f,1684}}. % id/1
    {test,bs_start_match3,{f,783},1,[{x,0}],{x,1}}.
    {test,bs_get_float2,
          {f,783},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[1455,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,783},[{x,1},0]}.
  {label,778}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,790},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,790},[{x,1}]}.
    {test,test_arity,{f,790},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,790},[{x,1},2,{atom,badmatch}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,{f,790},[{x,1},{literal,<<"ÿÿÿÿ">>}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",1457}]}.
    {call,1,{f,809}}. % bad_all_size/1
    {'%',{var_info,{x,0},[{type,{t_atom,[no_match]}}]}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",1458}]}.
    {call,1,{f,809}}. % bad_all_size/1
    {'%',{var_info,{x,0},[{type,{t_atom,[no_match]}}]}}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",1460}]}.
    {call,1,{f,823}}. % bad_size_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,true]}}]}}.
    {test,is_eq_exact,{f,789},[{tr,{x,0},{t_atom,[error,true]}},{atom,true}]}.
    {move,{literal,<<0,1>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",1461}]}.
    {call,1,{f,823}}. % bad_size_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,true]}}]}}.
    {test,is_eq_exact,{f,788},[{tr,{x,0},{t_atom,[error,true]}},{atom,error}]}.
    {move,{literal,[a]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",1463}]}.
    {call,1,{f,826}}. % bad_size_2/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{literal,[<<1,2,3>>]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",1464}]}.
    {call,1,{f,826}}. % bad_size_2/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {'catch',{y,0},{f,779}}.
    {move,{atom,no_list},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",1465}]}.
    {call,1,{f,826}}. % bad_size_2/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
  {label,779}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,787},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,787},[{x,1}]}.
    {test,test_arity,{f,787},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,787},[{x,1},{literal,{bad_generator,no_list}}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1467}]}.
    {call,1,{f,828}}. % bad_size_3/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,786},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1468}]}.
    {call,1,{f,828}}. % bad_size_3/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,785},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1470}]}.
    {call,2,{f,1809}}. % '-bad_size/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {call,1,{f,1684}}. % id/1
    {test,is_eq_exact,{f,784},[{x,0},{literal,<<>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,19}.
    return.
  {label,780}.
    {line,[{scope,[17]},{location,"bs_match_r25_SUITE.erl",1446}]}.
    {badmatch,{x,0}}.
  {label,781}.
    {line,[{scope,[15]},{location,"bs_match_r25_SUITE.erl",1447}]}.
    {badmatch,{x,0}}.
  {label,782}.
    {line,[{scope,[5]},{location,"bs_match_r25_SUITE.erl",1454}]}.
    {badmatch,{x,0}}.
  {label,783}.
    {line,[{scope,[3]},{location,"bs_match_r25_SUITE.erl",1455}]}.
    {badmatch,{x,0}}.
  {label,784}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1470}]}.
    {badmatch,{x,0}}.
  {label,785}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1468}]}.
    {badmatch,{atom,ok}}.
  {label,786}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1467}]}.
    {badmatch,{atom,ok}}.
  {label,787}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1465}]}.
    {badmatch,{x,0}}.
  {label,788}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",1461}]}.
    {badmatch,{atom,true}}.
  {label,789}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",1460}]}.
    {badmatch,{atom,error}}.
  {label,790}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",1455}]}.
    {badmatch,{x,0}}.
  {label,791}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",1454}]}.
    {badmatch,{x,0}}.
  {label,792}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",1453}]}.
    {badmatch,{x,0}}.
  {label,793}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",1452}]}.
    {badmatch,{x,0}}.
  {label,794}.
    {line,[{scope,"\n"},{location,"bs_match_r25_SUITE.erl",1451}]}.
    {badmatch,{x,0}}.
  {label,795}.
    {line,[{scope,"\f"},{location,"bs_match_r25_SUITE.erl",1450}]}.
    {badmatch,{x,0}}.
  {label,796}.
    {line,[{scope,[14]},{location,"bs_match_r25_SUITE.erl",1447}]}.
    {badmatch,{x,0}}.
  {label,797}.
    {line,[{scope,[16]},{location,"bs_match_r25_SUITE.erl",1446}]}.
    {badmatch,{x,0}}.
  {label,798}.
    {line,[{scope,[18]},{location,"bs_match_r25_SUITE.erl",1445}]}.
    {badmatch,{x,0}}.
  {label,799}.
    {line,[{scope,[20]},{location,"bs_match_r25_SUITE.erl",1444}]}.
    {badmatch,{x,0}}.
  {label,800}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",1443}]}.
    {badmatch,{x,0}}.
  {label,801}.
    {line,[{scope,[24]},{location,"bs_match_r25_SUITE.erl",1442}]}.
    {badmatch,{x,0}}.
  {label,802}.
    {line,[{scope,[26]},{location,"bs_match_r25_SUITE.erl",1440}]}.
    {badmatch,{x,0}}.
  {label,803}.
    {line,[{scope,[28]},{location,"bs_match_r25_SUITE.erl",1439}]}.
    {badmatch,{x,0}}.
  {label,804}.
    {line,[{scope,[30]},{location,"bs_match_r25_SUITE.erl",1438}]}.
    {badmatch,{x,0}}.
  {label,805}.
    {line,[{scope," "},{location,"bs_match_r25_SUITE.erl",1437}]}.
    {badmatch,{x,0}}.
  {label,806}.
    {line,[{scope,"\""},{location,"bs_match_r25_SUITE.erl",1436}]}.
    {badmatch,{x,0}}.
  {label,807}.
    {line,[{scope,"$"},{location,"bs_match_r25_SUITE.erl",1435}]}.
    {badmatch,{x,0}}.


{function, bad_all_size, 1, 809}.
  {label,808}.
    {line,[{location,"bs_match_r25_SUITE.erl",1474}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bad_all_size},1}.
  {label,809}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1475}]}.
    {call,1,{f,811}}. % bad_all_size_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[no_match]}}]}}.
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1476}]}.
    {call,1,{f,813}}. % bad_all_size_2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[no_match]}}]}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1477}]}.
    {call,1,{f,815}}. % bad_all_size_3/1
    {'%',{var_info,{x,0},[{type,{t_atom,[no_match]}}]}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1478}]}.
    {call,1,{f,817}}. % bad_all_size_4/1
    {'%',{var_info,{x,0},[{type,{t_atom,[no_match]}}]}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1479}]}.
    {call,1,{f,819}}. % bad_all_size_5/1
    {'%',{var_info,{x,0},[{type,{t_atom,[no_match]}}]}}.
    {move,{y,1},{x,0}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {line,[{location,"bs_match_r25_SUITE.erl",1480}]}.
    {call,1,{f,821}}. % bad_all_size_6/1
    {'%',{var_info,{x,0},[{type,{t_atom,[no_match]}}]}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, bad_all_size_1, 1, 811}.
  {label,810}.
    {line,[{location,"bs_match_r25_SUITE.erl",1483}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bad_all_size_1},1}.
  {label,811}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {move,{atom,no_match},{x,0}}.
    return.


{function, bad_all_size_2, 1, 813}.
  {label,812}.
    {line,[{location,"bs_match_r25_SUITE.erl",1489}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bad_all_size_2},1}.
  {label,813}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {move,{atom,no_match},{x,0}}.
    return.


{function, bad_all_size_3, 1, 815}.
  {label,814}.
    {line,[{location,"bs_match_r25_SUITE.erl",1495}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bad_all_size_3},1}.
  {label,815}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {move,{atom,no_match},{x,0}}.
    return.


{function, bad_all_size_4, 1, 817}.
  {label,816}.
    {line,[{location,"bs_match_r25_SUITE.erl",1502}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bad_all_size_4},1}.
  {label,817}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {move,{atom,no_match},{x,0}}.
    return.


{function, bad_all_size_5, 1, 819}.
  {label,818}.
    {line,[{location,"bs_match_r25_SUITE.erl",1509}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bad_all_size_5},1}.
  {label,819}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {move,{atom,no_match},{x,0}}.
    return.


{function, bad_all_size_6, 1, 821}.
  {label,820}.
    {line,[{location,"bs_match_r25_SUITE.erl",1518}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bad_all_size_6},1}.
  {label,821}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {move,{atom,no_match},{x,0}}.
    return.


{function, bad_size_1, 1, 823}.
  {label,822}.
    {line,[{location,"bs_match_r25_SUITE.erl",1527}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bad_size_1},1}.
  {label,823}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,824},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<0>>}]}.
    {move,{atom,true},{x,0}}.
    return.
  {label,824}.
    {move,{atom,error},{x,0}}.
    return.


{function, bad_size_2, 1, 826}.
  {label,825}.
    {line,[{location,"bs_match_r25_SUITE.erl",1533}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bad_size_2},1}.
  {label,826}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[no_list]},
                     {t_cons,
                         {t_union,
                             {t_atom,[a]},
                             none,none,none,
                             {t_bitstring,8,false}},
                         nil},
                     none,none,none}}]}}.
    {call_only,1,{f,1805}}. % '-bad_size_2/1-lc$^0/1-0-'/1


{function, bad_size_3, 1, 828}.
  {label,827}.
    {line,[{location,"bs_match_r25_SUITE.erl",1539}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bad_size_3},1}.
  {label,828}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {gc_bif,'div',{f,829},1,[{integer,1},{integer,0}],{x,1}}.
    {gc_bif,'bnot',{f,829},2,[{tr,{x,1},{t_integer,any}}],{x,1}}.
    {jump,{f,830}}.
  {label,829}.
    {move,{atom,bad_size},{x,1}}.
  {label,830}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,831},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {tr,{x,1},
               {t_union,{t_atom,[bad_size]},none,{t_integer,any},none,none}},
           1,
           {field_flags,[{anno,[1539,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,is_eq_exact,{f,831},[{tr,{x,1},{t_integer,{0,'+inf'}}},{integer,0}]}.
    {test,bs_test_tail2,{f,831},[{x,0},0]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,831}.
    {move,{atom,error},{x,0}}.
    return.


{function, haystack, 1, 833}.
  {label,832}.
    {line,[{location,"bs_match_r25_SUITE.erl",1544}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,haystack},1}.
  {label,833}.
    {test,is_list,{f,832},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<0,0,0,0,0,0,0,0,0,0>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1545}]}.
    {call,1,{f,837}}. % haystack_1/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {test,is_eq_exact,
          {f,835},
          [{tr,{x,0},{t_bitstring,16,false}},
           {literal,<<0,0,0,0,0,0,0,0,0,0>>}]}.
    {line,[{location,"bs_match_r25_SUITE.erl",1547}]}.
    {bs_create_bin,{f,0},
                   0,0,256,
                   {x,0},
                   {list,[{atom,integer},
                          1,1,nil,
                          {integer,0},
                          {integer,8184},
                          {atom,string},
                          0,8,nil,
                          {string,<<1>>},
                          {integer,1}]}}.
    {call,1,{f,839}}. % haystack_2/1
    {'%',{var_info,{x,0},[{type,{t_cons,{t_bitstring,8,false},nil}}]}}.
    {test,is_eq_exact,
          {f,834},
          [{tr,{x,0},{t_cons,{t_bitstring,8,false},nil}},
           {literal,[<<0,0,0,0,0,0,0,0,0,0>>,
                     <<0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0>>]}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,834}.
    {line,[{location,"bs_match_r25_SUITE.erl",1546}]}.
    {badmatch,{x,0}}.
  {label,835}.
    {line,[{location,"bs_match_r25_SUITE.erl",1545}]}.
    {badmatch,{x,0}}.


{function, haystack_1, 1, 837}.
  {label,836}.
    {line,[{location,"bs_match_r25_SUITE.erl",1551}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,haystack_1},1}.
  {label,837}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{x,0},{x,1}}.
    {move,{literal,"\n"},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1556}]}.
    {call,2,{f,1801}}. % '-haystack_1/1-lc$^0/1-0-'/2
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, haystack_2, 1, 839}.
  {label,838}.
    {line,[{location,"bs_match_r25_SUITE.erl",1560}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,haystack_2},1}.
  {label,839}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,false}}]}}.
    {move,{x,0},{x,1}}.
    {move,{literal,[{687,10},{369,20}]},{x,0}}.
    {call_only,2,{f,1797}}. % '-haystack_2/1-lc$^0/1-0-'/2


{function, fc, 1, 841}.
  {label,840}.
    {line,[{location,"bs_match_r25_SUITE.erl",1567}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,fc},1}.
  {label,841}.
    {test,is_tagged_tuple,{f,840},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,840},[{x,1},2,{atom,function_clause}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, fc, 3, 843}.
  {label,842}.
    {line,[{location,"bs_match_r25_SUITE.erl",1570}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,fc},3}.
  {label,843}.
    {'%',{var_info,{x,0},[{type,{t_atom,any}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_cons,
                     {t_union,
                         {t_atom,[blurf]},
                         {t_cons,{t_integer,{1,4}},nil},
                         {t_integer,{-1,17}},
                         none,
                         {t_bitstring,1,false}},
                     nil}}]}}.
    {test,is_tagged_tuple,{f,842},[{x,2},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,2},1,{x,3}}.
    {test,is_tagged_tuple,{f,842},[{x,3},2,{atom,function_clause}]}.
    {get_tuple_element,{x,3},1,{x,3}}.
    {test,is_nonempty_list,{f,842},[{x,3}]}.
    {get_hd,{x,3},{x,3}}.
    {test,is_tagged_tuple,{f,842},[{x,3},4,{atom,bs_match_r25_SUITE}]}.
    {get_tuple_element,{x,3},1,{x,4}}.
    {test,is_eq_exact,{f,842},[{x,4},{tr,{x,0},{t_atom,any}}]}.
    {get_tuple_element,{x,3},2,{x,3}}.
    {test,is_eq_exact,
          {f,842},
          [{x,3},
           {tr,{x,1},
               {t_cons,{t_union,{t_atom,[blurf]},
                                {t_cons,{t_integer,{1,4}},nil},
                                {t_integer,{-1,17}},
                                none,
                                {t_bitstring,1,false}},
                       nil}}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, cover_beam_bool, 1, 845}.
  {label,844}.
    {line,[{location,"bs_match_r25_SUITE.erl",1578}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,cover_beam_bool},1}.
  {label,845}.
    {test,is_list,{f,844},[{x,0}]}.
    {allocate,0,0}.
    {move,{integer,3},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1579}]}.
    {call,2,{f,850}}. % do_cover_beam_bool/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,2},{x,1}}.
    {move,{literal,<<19>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1580}]}.
    {call,2,{f,850}}. % do_cover_beam_bool/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,848},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<19>>}]}.
    {move,{integer,1},{x,1}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1581}]}.
    {call,2,{f,850}}. % do_cover_beam_bool/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,847},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<"*">>}]}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<13,17>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1582}]}.
    {call,2,{f,850}}. % do_cover_beam_bool/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,846},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<17>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,846}.
    {badmatch,{x,0}}.
  {label,847}.
    {line,[{location,"bs_match_r25_SUITE.erl",1581}]}.
    {badmatch,{x,0}}.
  {label,848}.
    {line,[{location,"bs_match_r25_SUITE.erl",1580}]}.
    {badmatch,{x,0}}.


{function, do_cover_beam_bool, 2, 850}.
  {label,849}.
    {line,[{location,"bs_match_r25_SUITE.erl",1585}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_cover_beam_bool},2}.
  {label,850}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,3}}}]}}.
    {test,is_ge,{f,853},[{tr,{x,1},{t_integer,{0,3}}},{integer,1}]}.
    {select_val,{tr,{x,1},{t_integer,{1,3}}},
                {f,852},
                {list,[{integer,1},{f,851},{integer,2},{f,851}]}}.
  {label,851}.
    return.
  {label,852}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,853}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_skip_bits2,
          {f,854},
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[1592,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_get_tail,{x,1},{x,0},2}.
    {move,{integer,1},{x,1}}.
    {call_only,2,{f,850}}. % do_cover_beam_bool/2
  {label,854}.
    {move,{integer,0},{x,1}}.
    {jump,{f,849}}.


{function, matched_out_size, 1, 856}.
  {label,855}.
    {line,[{location,"bs_match_r25_SUITE.erl",1595}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,matched_out_size},1}.
  {label,856}.
    {test,is_list,{f,855},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<"\býÞ­¾ï">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1596}]}.
    {call,1,{f,868}}. % mos_int/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_integer,{0,'+inf'}},
                       2 => {t_integer,{0,18446744073709551615}}}}}]}}.
    {test,is_eq_exact,
          {f,866},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}},
           {literal,{253,3735928559}}]}.
    {move,{literal,<<3,215,221,251,213,5:3>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1597}]}.
    {call,1,{f,868}}. % mos_int/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_integer,{0,'+inf'}},
                       2 => {t_integer,{0,18446744073709551615}}}}}]}}.
    {test,is_eq_exact,
          {f,865},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}},
           {literal,{6,3203391149}}]}.
    {move,{literal,<<16,0,53,202,254,222,173,190,239,202,254>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1598}]}.
    {call,1,{f,868}}. % mos_int/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_integer,{0,'+inf'}},
                       2 => {t_integer,{0,18446744073709551615}}}}}]}}.
    {test,is_eq_exact,
          {f,864},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}},
           {literal,{53,14627373477560044286}}]}.
    {move,{literal,<<5,190,87,246,245,109,247,126,87,30:5>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1599}]}.
    {call,1,{f,868}}. % mos_int/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_integer,{0,'+inf'}},
                       2 => {t_integer,{0,18446744073709551615}}}}}]}}.
    {test,is_eq_exact,
          {f,863},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}},
           {literal,{23,14627373477560044286}}]}.
    {move,{literal,<<3,1,2,3,4,3>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1601}]}.
    {call,1,{f,960}}. % mos_bin/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     {t_tuple,2,false,
                         #{1 => {t_bitstring,8,false},
                           2 => {t_integer,{0,255}}}},
                     {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,862},
          [{tr,{x,0},
               {t_union,none,none,none,
                        {t_tuple,2,false,
                                 #{1 => {t_bitstring,8,false},
                                   2 => {t_integer,{0,255}}}},
                        {t_bitstring,8,false}}},
           {literal,{<<1,2,3>>,4}}]}.
    {move,{literal,<<4,1,2,3,7,19,4,42>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1602}]}.
    {call,1,{f,960}}. % mos_bin/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     {t_tuple,2,false,
                         #{1 => {t_bitstring,8,false},
                           2 => {t_integer,{0,255}}}},
                     {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,861},
          [{tr,{x,0},
               {t_union,none,none,none,
                        {t_tuple,2,false,
                                 #{1 => {t_bitstring,8,false},
                                   2 => {t_integer,{0,255}}}},
                        {t_bitstring,8,false}}},
           {literal,{<<1,2,3,7>>,19,42}}]}.
    {move,{literal,<<4,1,2,3,7,97,98,99,100,101,102,103,104,105,106>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1603}]}.
    {call,1,{f,960}}. % mos_bin/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     {t_tuple,2,false,
                         #{1 => {t_bitstring,8,false},
                           2 => {t_integer,{0,255}}}},
                     {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,860},
          [{tr,{x,0},
               {t_union,none,none,none,
                        {t_tuple,2,false,
                                 #{1 => {t_bitstring,8,false},
                                   2 => {t_integer,{0,255}}}},
                        {t_bitstring,8,false}}},
           {literal,<<1,2,3,7>>}]}.
    {move,{atom,not_a_binary},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1605}]}.
    {call,1,{f,977}}. % mos_verify_sig/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false]}}]}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1606}]}.
    {call,1,{f,977}}. % mos_verify_sig/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[false]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,859},
          [{tr,{x,0},
               {t_union,{t_atom,[false]},
                        none,none,none,
                        {t_bitstring,8,false}}},
           {atom,false}]}.
    {move,{literal,<<0,0,0,42>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1607}]}.
    {call,1,{f,977}}. % mos_verify_sig/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[false]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,858},
          [{tr,{x,0},
               {t_union,{t_atom,[false]},
                        none,none,none,
                        {t_bitstring,8,false}}},
           {atom,false}]}.
    {line,[{location,"bs_match_r25_SUITE.erl",1608}]}.
    {bs_create_bin,{f,0},
                   0,0,16,
                   {x,0},
                   {list,[{atom,string},
                          0,8,nil,
                          {string,<<0,0,0,77>>},
                          {integer,4},
                          {atom,integer},
                          2,8,nil,
                          {integer,0},
                          {integer,77},
                          {atom,string},
                          0,8,nil,
                          {string,<<0,0,0,9,49,50,51,52,53,54,55,56,57>>},
                          {integer,13}]}}.
    {call,1,{f,977}}. % mos_verify_sig/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[false]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,857},
          [{tr,{x,0},
               {t_union,{t_atom,[false]},
                        none,none,none,
                        {t_bitstring,8,false}}},
           {literal,<<"123456789">>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,857}.
    {badmatch,{x,0}}.
  {label,858}.
    {line,[{location,"bs_match_r25_SUITE.erl",1607}]}.
    {badmatch,{x,0}}.
  {label,859}.
    {line,[{location,"bs_match_r25_SUITE.erl",1606}]}.
    {badmatch,{x,0}}.
  {label,860}.
    {line,[{location,"bs_match_r25_SUITE.erl",1603}]}.
    {badmatch,{x,0}}.
  {label,861}.
    {line,[{location,"bs_match_r25_SUITE.erl",1602}]}.
    {badmatch,{x,0}}.
  {label,862}.
    {line,[{location,"bs_match_r25_SUITE.erl",1601}]}.
    {badmatch,{x,0}}.
  {label,863}.
    {line,[{location,"bs_match_r25_SUITE.erl",1599}]}.
    {badmatch,{x,0}}.
  {label,864}.
    {line,[{location,"bs_match_r25_SUITE.erl",1598}]}.
    {badmatch,{x,0}}.
  {label,865}.
    {line,[{location,"bs_match_r25_SUITE.erl",1597}]}.
    {badmatch,{x,0}}.
  {label,866}.
    {line,[{location,"bs_match_r25_SUITE.erl",1596}]}.
    {badmatch,{x,0}}.


{function, mos_int, 1, 868}.
  {label,867}.
    {line,[{location,"bs_match_r25_SUITE.erl",1612}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,mos_int},1}.
  {label,868}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {allocate,4,1}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{x,0},{y,3}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1613}]}.
    {call,1,{f,887}}. % mos_int_plain/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_integer,{0,'+inf'}},
                       2 => {t_integer,{0,18446744073709551615}}}}}]}}.
    {test_heap,2,1}.
    {put_list,{y,3},nil,{x,1}}.
    {move,{x,0},{y,2}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1614}]}.
    {call,1,{f,890}}. % mos_int_list/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_integer,{0,'+inf'}},
                       2 => {t_integer,{0,18446744073709551615}}}}}]}}.
    {test,is_eq_exact,
          {f,885},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}},
           {tr,{y,2},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}}]}.
    {test_heap,6,0}.
    {put_list,{y,3},nil,{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,a},{x,0},{atom,z}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1615}]}.
    {call,1,{f,893}}. % mos_int_tuple/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_integer,{0,'+inf'}},
                       2 => {t_integer,{0,18446744073709551615}}}}}]}}.
    {test,is_eq_exact,
          {f,884},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}},
           {tr,{y,2},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}}]}.
    {test_heap,2,0}.
    {put_list,{y,3},nil,{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1617}]}.
    {call,1,{f,896}}. % mos_int_mixed/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[no_match]},
                     none,none,
                     {t_tuple,2,true,
                         #{1 => {t_integer,{0,'+inf'}},
                           2 => {t_integer,{0,18446744073709551615}}}},
                     none}}]}}.
    {test,is_eq_exact,
          {f,883},
          [{tr,{x,0},
               {t_union,{t_atom,[no_match]},
                        none,none,
                        {t_tuple,2,true,
                                 #{1 => {t_integer,{0,'+inf'}},
                                   2 => {t_integer,{0,18446744073709551615}}}},
                        none}},
           {tr,{y,2},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}}]}.
    {test_heap,6,0}.
    {put_list,{y,3},nil,{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,a},{x,0},{atom,z}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1618}]}.
    {call,1,{f,896}}. % mos_int_mixed/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[no_match]},
                     none,none,
                     {t_tuple,2,true,
                         #{1 => {t_integer,{0,'+inf'}},
                           2 => {t_integer,{0,18446744073709551615}}}},
                     none}}]}}.
    {test,is_eq_exact,
          {f,882},
          [{tr,{x,0},
               {t_union,{t_atom,[no_match]},
                        none,none,
                        {t_tuple,2,true,
                                 #{1 => {t_integer,{0,'+inf'}},
                                   2 => {t_integer,{0,18446744073709551615}}}},
                        none}},
           {tr,{y,2},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}}]}.
    {move,{literal,{30,12}},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1619}]}.
    {call,1,{f,896}}. % mos_int_mixed/1
    {'%',{var_info,{x,0},[{type,{t_integer,{42,42}}}]}}.
    {test_heap,6,0}.
    {put_list,{y,3},nil,{x,0}}.
    {put_list,{y,3},{x,0},{x,0}}.
    {put_list,{y,3},{x,0},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1620}]}.
    {call,1,{f,896}}. % mos_int_mixed/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[no_match]},
                     none,none,
                     {t_tuple,2,true,
                         #{1 => {t_integer,{0,'+inf'}},
                           2 => {t_integer,{0,18446744073709551615}}}},
                     none}}]}}.
    {test,is_eq_exact,
          {f,881},
          [{tr,{x,0},
               {t_union,{t_atom,[no_match]},
                        none,none,
                        {t_tuple,2,true,
                                 #{1 => {t_integer,{0,'+inf'}},
                                   2 => {t_integer,{0,18446744073709551615}}}},
                        none}},
           {atom,no_match}]}.
    {test_heap,5,0}.
    {put_list,{y,3},nil,{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,tag},{x,0}]}}.
    {move,{literal,{0,1,2,3,4,5,6,7,8,9}},{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1622}]}.
    {call,2,{f,903}}. % mos_int_pats1/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_integer,{0,'+inf'}},
                       2 => {t_integer,{0,18446744073709551615}}}}}]}}.
    {test,is_eq_exact,
          {f,880},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}},
           {tr,{y,2},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}}]}.
    {test_heap,5,0}.
    {put_list,{y,3},nil,{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,tag},{x,0}]}}.
    {move,{literal,[z]},{x,2}}.
    {move,{literal,{a,a,a,a,a,a,a,a,a,a}},{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1623}]}.
    {call,3,{f,906}}. % mos_int_pats2/3
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_integer,{0,'+inf'}},
                       2 => {t_integer,{0,18446744073709551615}}}}}]}}.
    {test,is_eq_exact,
          {f,879},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}},
           {tr,{y,2},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}}]}.
    {test_heap,15,0}.
    {get_tuple_element,{y,2},0,{y,1}}.
    {get_tuple_element,{y,2},1,{y,0}}.
    {put_list,{y,3},nil,{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,tag},{x,0}]}}.
    {put_list,{y,1},nil,{x,1}}.
    {put_tuple2,{x,2},{list,[{y,0},{y,3},{y,0}]}}.
    {put_list,{x,2},{x,1},{x,1}}.
    {put_list,{y,1},{x,1},{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1625}]}.
    {call,2,{f,909}}. % mos_int_pats3/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_integer,{0,'+inf'}},
                       2 => {t_integer,{0,18446744073709551615}}}}}]}}.
    {test,is_eq_exact,
          {f,878},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}},
           {tr,{y,2},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}}]}.
    {test_heap,2,0}.
    {put_list,{y,3},nil,{x,0}}.
    {put_map_assoc,{f,0},{literal,#{}},{x,0},1,{list,[{atom,key},{x,0}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1626}]}.
    {call,1,{f,912}}. % mos_int_map/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_integer,{0,'+inf'}},
                       2 => {t_integer,{0,18446744073709551615}}}}}]}}.
    {test,is_eq_exact,
          {f,877},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}},
           {tr,{y,2},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}}]}.
    {test_heap,2,0}.
    {put_list,{y,3},nil,{x,0}}.
    {put_map_assoc,{f,0},
                   {literal,#{}},
                   {x,1},
                   1,
                   {list,[{literal,{my,key}},{x,0}]}}.
    {move,{literal,{my,key}},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1628}]}.
    {call,2,{f,915}}. % mos_int_map/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_integer,{0,'+inf'}},
                       2 => {t_integer,{0,18446744073709551615}}}}}]}}.
    {test,is_eq_exact,
          {f,876},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}},
           {tr,{y,2},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}}]}.
    {test_heap,4,0}.
    {put_list,{y,3},nil,{x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1629}]}.
    {call,1,{f,919}}. % mos_int_alias/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,{0,'+inf'}},
                                     2 => {t_integer,{0,18446744073709551615}},
                                     3 => {t_bitstring,1,false}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,
          {f,875},
          [{tr,{x,1},{t_integer,{0,'+inf'}}},
           {tr,{y,1},{t_integer,{0,'+inf'}}}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,
          {f,875},
          [{tr,{x,1},{t_integer,{0,18446744073709551615}}},
           {tr,{y,0},{t_integer,{0,18446744073709551615}}}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,
          {f,875},
          [{tr,{x,1},{t_bitstring,1,false}},{tr,{y,3},{t_bitstring,1,false}}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{y,1},{y,0}]}}.
    {test,is_eq_exact,
          {f,874},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}},
           {tr,{y,2},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}}]}.
    {test_heap,2,0}.
    {put_list,{y,3},nil,{x,0}}.
    {trim,2,2}.
    {line,[{location,"bs_match_r25_SUITE.erl",1631}]}.
    {call,1,{f,922}}. % mos_int_try/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_integer,{0,'+inf'}},
                       2 => {t_integer,{0,18446744073709551615}}}}}]}}.
    {test,is_eq_exact,
          {f,873},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}},
           {tr,{y,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1632}]}.
    {call,1,{f,929}}. % mos_int_receive/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_integer,{0,'+inf'}},
                       2 => {t_integer,{0,18446744073709551615}}}}}]}}.
    {test,is_eq_exact,
          {f,872},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}},
           {tr,{y,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}}]}.
    {test_heap,2,0}.
    {put_list,{y,1},nil,{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1633}]}.
    {call,1,{f,948}}. % mos_int_fun/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_integer,{0,'+inf'}},
                       2 => {t_integer,{0,18446744073709551615}}}}}]}}.
    {test,is_eq_exact,
          {f,871},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}},
           {tr,{y,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1634}]}.
    {call,1,{f,952}}. % mos_int_exported/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_integer,{0,'+inf'}},
                       2 => {t_integer,{0,18446744073709551615}}}}}]}}.
    {test,is_eq_exact,
          {f,870},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}},
           {tr,{y,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}}]}.
    {move,{y,1},{x,0}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {line,[{location,"bs_match_r25_SUITE.erl",1635}]}.
    {call,1,{f,956}}. % mos_int_utf/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_integer,{0,'+inf'}},
                       2 => {t_integer,{0,18446744073709551615}}}}}]}}.
    {test,is_eq_exact,
          {f,869},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}},
           {tr,{y,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}}]}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,869}.
    {badmatch,{x,0}}.
  {label,870}.
    {line,[{location,"bs_match_r25_SUITE.erl",1634}]}.
    {badmatch,{x,0}}.
  {label,871}.
    {line,[{location,"bs_match_r25_SUITE.erl",1633}]}.
    {badmatch,{x,0}}.
  {label,872}.
    {line,[{location,"bs_match_r25_SUITE.erl",1632}]}.
    {badmatch,{x,0}}.
  {label,873}.
    {line,[{location,"bs_match_r25_SUITE.erl",1631}]}.
    {badmatch,{x,0}}.
  {label,874}.
    {line,[{location,"bs_match_r25_SUITE.erl",1630}]}.
    {badmatch,{x,0}}.
  {label,875}.
    {line,[{location,"bs_match_r25_SUITE.erl",1629}]}.
    {badmatch,{x,0}}.
  {label,876}.
    {line,[{location,"bs_match_r25_SUITE.erl",1628}]}.
    {badmatch,{x,0}}.
  {label,877}.
    {line,[{location,"bs_match_r25_SUITE.erl",1626}]}.
    {badmatch,{x,0}}.
  {label,878}.
    {line,[{location,"bs_match_r25_SUITE.erl",1625}]}.
    {badmatch,{x,0}}.
  {label,879}.
    {line,[{location,"bs_match_r25_SUITE.erl",1623}]}.
    {badmatch,{x,0}}.
  {label,880}.
    {line,[{location,"bs_match_r25_SUITE.erl",1622}]}.
    {badmatch,{x,0}}.
  {label,881}.
    {line,[{location,"bs_match_r25_SUITE.erl",1620}]}.
    {badmatch,{x,0}}.
  {label,882}.
    {line,[{location,"bs_match_r25_SUITE.erl",1618}]}.
    {badmatch,{x,0}}.
  {label,883}.
    {line,[{location,"bs_match_r25_SUITE.erl",1617}]}.
    {badmatch,{x,0}}.
  {label,884}.
    {line,[{location,"bs_match_r25_SUITE.erl",1615}]}.
    {badmatch,{x,0}}.
  {label,885}.
    {line,[{location,"bs_match_r25_SUITE.erl",1614}]}.
    {badmatch,{x,0}}.


{function, mos_int_plain, 1, 887}.
  {label,886}.
    {line,[{location,"bs_match_r25_SUITE.erl",1638}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,mos_int_plain},1}.
  {label,887}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,888},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1638,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{x,1},3}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,888},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1638,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,888},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[1638,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,888},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,888}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,886},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1640,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{x,1},3}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,886},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1640,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,886},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[1640,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,886},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.


{function, mos_int_list, 1, 890}.
  {label,889}.
    {line,[{location,"bs_match_r25_SUITE.erl",1643}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,mos_int_list},1}.
  {label,890}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_bitstring,1,false},nil}}]}}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_nil,{f,889},[{tr,{x,2},{t_list,{t_bitstring,1,false},nil}}]}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,2}}.
    {test,bs_get_integer2,
          {f,891},
          3,
          [{tr,{x,2},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1643,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_tail,{x,2},{x,2},4}.
    {bs_start_match4,{atom,no_fail},4,{x,2},{x,2}}.
    {test,bs_get_integer2,
          {f,891},
          4,
          [{tr,{x,2},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1643,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,891},
          4,
          [{tr,{x,2},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[1643,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,891},[{x,2},0]}.
    {test_heap,3,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4}]}}.
    return.
  {label,891}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,889},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1645,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{x,1},3}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,889},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1645,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,889},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[1645,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,889},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.


{function, mos_int_tuple, 1, 893}.
  {label,892}.
    {line,[{location,"bs_match_r25_SUITE.erl",1648}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,mos_int_tuple},1}.
  {label,893}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_atom,[a]},
                                     2 => {t_cons,{t_bitstring,1,false},nil},
                                     3 => {t_atom,[z]}}}}]}}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_nil,{f,892},[{tr,{x,1},{t_list,{t_bitstring,1,false},nil}}]}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,1}}.
    {test,bs_get_integer2,
          {f,894},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1648,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_tail,{x,1},{x,1},4}.
    {bs_start_match4,{atom,no_fail},4,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,894},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1648,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,894},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[1648,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,894},[{x,1},0]}.
    {test_heap,3,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4}]}}.
    return.
  {label,894}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,1}}.
    {test,bs_get_integer2,
          {f,892},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1650,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{x,1},3}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,892},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1650,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,892},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[1650,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,892},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.


{function, mos_int_mixed, 1, 896}.
  {label,895}.
    {line,[{location,"bs_match_r25_SUITE.erl",1653}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,mos_int_mixed},1}.
  {label,896}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,
                     {t_cons,{t_bitstring,1,false},nil},
                     none,
                     [{{2,{t_integer,{30,30}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{30,30}},
                             2 => {t_integer,{12,12}}}}},
                      {{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_cons,{t_bitstring,1,false},nil},
                             3 => {t_atom,[z]}}}}],
                     none}}]}}.
    {test,is_tuple,{f,898},[{x,0}]}.
    {test,test_arity,{f,898},[{x,0},3]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_nil,{f,898},[{tr,{x,1},{t_list,{t_bitstring,1,false},nil}}]}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,1}}.
    {test,bs_get_integer2,
          {f,897},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1653,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_tail,{x,1},{x,1},4}.
    {bs_start_match4,{atom,no_fail},4,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,897},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1653,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,897},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[1653,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,897},[{x,1},0]}.
    {test_heap,3,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4}]}}.
    return.
  {label,897}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,1}}.
    {test,bs_get_integer2,
          {f,898},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1655,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{x,1},3}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,898},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1655,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,898},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[1655,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,898},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,898}.
    {test,is_nonempty_list,{f,900},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_nil,{f,900},[{tr,{x,2},{t_list,{t_bitstring,1,false},nil}}]}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,2}}.
    {test,bs_get_integer2,
          {f,899},
          3,
          [{tr,{x,2},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1657,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_tail,{x,2},{x,2},4}.
    {bs_start_match4,{atom,no_fail},4,{x,2},{x,2}}.
    {test,bs_get_integer2,
          {f,899},
          4,
          [{tr,{x,2},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1657,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,899},
          4,
          [{tr,{x,2},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[1657,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,899},[{x,2},0]}.
    {test_heap,3,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4}]}}.
    return.
  {label,899}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,900},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1659,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{x,1},3}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,900},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1659,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,900},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[1659,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,900},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,900}.
    {test,is_tuple,
          {f,901},
          [{tr,{x,0},
               {t_union,none,
                        {t_cons,{t_bitstring,1,false},nil},
                        none,
                        [{{2,{t_integer,{30,30}}},
                          {t_tuple,2,true,
                                   #{1 => {t_integer,{30,30}},
                                     2 => {t_integer,{12,12}}}}},
                         {{3,{t_atom,[a]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[a]},
                                     2 => {t_cons,{t_bitstring,1,false},nil},
                                     3 => {t_atom,[z]}}}}],
                        none}}]}.
    {test,test_arity,{f,901},[{x,0},2]}.
    {move,{integer,42},{x,0}}.
    return.
  {label,901}.
    {move,{atom,no_match},{x,0}}.
    return.


{function, mos_int_pats1, 2, 903}.
  {label,902}.
    {line,[{location,"bs_match_r25_SUITE.erl",1666}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,mos_int_pats1},2}.
  {label,903}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_atom,[tag]},
                       2 => {t_cons,{t_bitstring,1,false},nil}}}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_tuple,10,true,
                                   #{1 => {t_integer,{0,0}},
                                     2 => {t_integer,{1,1}},
                                     3 => {t_integer,{2,2}},
                                     4 => {t_integer,{3,3}},
                                     5 => {t_integer,{4,4}},
                                     6 => {t_integer,{5,5}},
                                     7 => {t_integer,{6,6}},
                                     8 => {t_integer,{7,7}},
                                     9 => {t_integer,{8,8}},
                                     10 => {t_integer,{9,9}}}}}]}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {get_list,{x,2},{x,3},{x,2}}.
    {test,is_nil,{f,902},[{tr,{x,2},{t_list,{t_bitstring,1,false},nil}}]}.
    {bs_start_match4,{atom,no_fail},4,{x,3},{x,2}}.
    {test,bs_get_integer2,
          {f,904},
          4,
          [{tr,{x,2},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1666,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {bs_get_tail,{x,2},{x,2},5}.
    {bs_start_match4,{atom,no_fail},5,{x,2},{x,2}}.
    {test,bs_get_integer2,
          {f,904},
          5,
          [{tr,{x,2},{t_bs_context,1}},
           {tr,{x,4},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1666,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_integer2,
          {f,904},
          5,
          [{tr,{x,2},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[1666,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_test_tail2,{f,904},[{x,2},0]}.
    {test_heap,3,6}.
    {put_tuple2,{x,0},{list,[{x,4},{x,5}]}}.
    return.
  {label,904}.
    {bs_start_match4,{atom,no_fail},4,{x,3},{x,2}}.
    {test,bs_get_integer2,
          {f,902},
          3,
          [{tr,{x,2},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1668,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_tail,{x,2},{x,2},4}.
    {bs_start_match4,{atom,no_fail},4,{x,2},{x,2}}.
    {test,bs_get_integer2,
          {f,902},
          4,
          [{tr,{x,2},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1668,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,902},
          4,
          [{tr,{x,2},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[1668,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,902},[{x,2},0]}.
    {test_heap,3,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4}]}}.
    return.


{function, mos_int_pats2, 3, 906}.
  {label,905}.
    {line,[{location,"bs_match_r25_SUITE.erl",1671}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,mos_int_pats2},3}.
  {label,906}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_atom,[tag]},
                       2 => {t_cons,{t_bitstring,1,false},nil}}}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_tuple,10,true,
                                   #{1 => {t_atom,[a]},
                                     2 => {t_atom,[a]},
                                     3 => {t_atom,[a]},
                                     4 => {t_atom,[a]},
                                     5 => {t_atom,[a]},
                                     6 => {t_atom,[a]},
                                     7 => {t_atom,[a]},
                                     8 => {t_atom,[a]},
                                     9 => {t_atom,[a]},
                                     10 => {t_atom,[a]}}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_cons,{t_atom,[z]},nil}}]}}.
    {get_tuple_element,{x,0},1,{x,3}}.
    {get_list,{x,3},{x,4},{x,3}}.
    {test,is_nil,{f,905},[{tr,{x,3},{t_list,{t_bitstring,1,false},nil}}]}.
    {bs_start_match4,{atom,no_fail},5,{x,4},{x,3}}.
    {test,bs_get_integer2,
          {f,907},
          5,
          [{tr,{x,3},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1671,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {bs_get_tail,{x,3},{x,3},6}.
    {bs_start_match4,{atom,no_fail},6,{x,3},{x,3}}.
    {test,bs_get_integer2,
          {f,907},
          6,
          [{tr,{x,3},{t_bs_context,1}},
           {tr,{x,5},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1671,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_get_integer2,
          {f,907},
          6,
          [{tr,{x,3},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[1671,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,bs_test_tail2,{f,907},[{x,3},0]}.
    {test_heap,3,7}.
    {put_tuple2,{x,0},{list,[{x,5},{x,6}]}}.
    return.
  {label,907}.
    {bs_start_match4,{atom,no_fail},5,{x,4},{x,3}}.
    {test,bs_get_integer2,
          {f,905},
          4,
          [{tr,{x,3},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1673,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {bs_get_tail,{x,3},{x,3},5}.
    {bs_start_match4,{atom,no_fail},5,{x,3},{x,3}}.
    {test,bs_get_integer2,
          {f,905},
          5,
          [{tr,{x,3},{t_bs_context,1}},
           {tr,{x,4},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1673,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_integer2,
          {f,905},
          5,
          [{tr,{x,3},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[1673,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_test_tail2,{f,905},[{x,3},0]}.
    {test_heap,3,6}.
    {put_tuple2,{x,0},{list,[{x,4},{x,5}]}}.
    return.


{function, mos_int_pats3, 2, 909}.
  {label,908}.
    {line,[{location,"bs_match_r25_SUITE.erl",1676}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,mos_int_pats3},2}.
  {label,909}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_atom,[tag]},
                       2 => {t_cons,{t_bitstring,1,false},nil}}}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_cons,
                     {t_union,none,none,
                         {t_integer,{0,'+inf'}},
                         {t_tuple,3,true,
                             #{1 => {t_integer,{0,18446744073709551615}},
                               2 => {t_bitstring,1,false},
                               3 => {t_integer,{0,18446744073709551615}}}},
                         none},
                     nil}}]}}.
    {get_list,{x,1},{x,2},{x,3}}.
    {get_tuple_element,{x,0},1,{x,4}}.
    {get_list,{x,4},{x,5},{x,4}}.
    {test,is_nil,{f,908},[{tr,{x,4},{t_list,{t_bitstring,1,false},nil}}]}.
    {bs_start_match4,{atom,no_fail},6,{x,5},{x,4}}.
    {test,bs_get_integer2,
          {f,910},
          6,
          [{tr,{x,4},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1676,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {bs_get_tail,{x,4},{x,4},7}.
    {bs_start_match4,{atom,no_fail},7,{x,4},{x,4}}.
    {test,bs_get_integer2,
          {f,910},
          7,
          [{tr,{x,4},{t_bs_context,1}},
           {tr,{x,6},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1676,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,7}}.
    {test,bs_get_integer2,
          {f,910},
          8,
          [{tr,{x,4},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[1676,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,8}}.
    {test,bs_test_tail2,{f,910},[{x,4},0]}.
    {test,is_nonempty_list,{f,908},[{x,3}]}.
    {get_list,{x,3},{x,4},{x,9}}.
    {test,is_nonempty_list,{f,910},[{x,9}]}.
    {get_list,{x,9},{x,10},{x,9}}.
    {test,is_nil,
        {f,910},
        [{tr,{x,9},
             {t_list,
                 {t_union,none,none,
                     {t_integer,{0,'+inf'}},
                     {t_tuple,3,true,
                         #{1 => {t_integer,{0,18446744073709551615}},
                           2 => {t_bitstring,1,false},
                           3 => {t_integer,{0,18446744073709551615}}}},
                     none},
                 nil}}]}.
    {test,is_tuple,
          {f,910},
          [{tr,{x,4},
               {t_union,none,none,
                        {t_integer,{0,'+inf'}},
                        {t_tuple,3,true,
                                 #{1 => {t_integer,{0,18446744073709551615}},
                                   2 => {t_bitstring,1,false},
                                   3 => {t_integer,{0,18446744073709551615}}}},
                        none}}]}.
    {get_tuple_element,{x,4},1,{x,9}}.
    {bs_start_match4,{atom,no_fail},11,{x,9},{x,9}}.
    {test,bs_get_integer2,
          {f,910},
          11,
          [{tr,{x,9},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1676,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,11}}.
    {bs_get_tail,{x,9},{x,9},12}.
    {bs_start_match4,{atom,no_fail},12,{x,9},{x,9}}.
    {test,bs_get_integer2,
          {f,910},
          12,
          [{tr,{x,9},{t_bs_context,1}},
           {tr,{x,11},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1676,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,12}}.
    {test,bs_get_integer2,
          {f,910},
          13,
          [{tr,{x,9},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[1676,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,13}}.
    {test,bs_test_tail2,{f,910},[{x,9},0]}.
    {test,is_eq_exact,
          {f,910},
          [{tr,{x,2},
               {t_union,none,none,
                        {t_integer,{0,'+inf'}},
                        {t_tuple,3,true,
                                 #{1 => {t_integer,{0,18446744073709551615}},
                                   2 => {t_bitstring,1,false},
                                   3 => {t_integer,{0,18446744073709551615}}}},
                        none}},
           {tr,{x,7},{t_integer,{0,'+inf'}}}]}.
    {get_tuple_element,{x,4},0,{x,9}}.
    {test,is_eq_exact,
          {f,910},
          [{tr,{x,9},{t_integer,{0,18446744073709551615}}},
           {tr,{x,8},{t_integer,{0,4294967295}}}]}.
    {test,is_eq_exact,
          {f,910},
          [{tr,{x,11},{t_integer,{0,255}}},{tr,{x,6},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,910},
          [{tr,{x,12},{t_integer,{0,'+inf'}}},
           {tr,{x,7},{t_integer,{0,'+inf'}}}]}.
    {test,is_eq_exact,
          {f,910},
          [{tr,{x,13},{t_integer,{0,4294967295}}},
           {tr,{x,8},{t_integer,{0,4294967295}}}]}.
    {get_tuple_element,{x,4},2,{x,4}}.
    {test,is_eq_exact,
          {f,910},
          [{tr,{x,4},{t_integer,{0,18446744073709551615}}},
           {tr,{x,8},{t_integer,{0,4294967295}}}]}.
    {test,is_eq_exact,
          {f,910},
          [{tr,{x,10},
               {t_union,none,none,
                        {t_integer,{0,'+inf'}},
                        {t_tuple,3,true,
                                 #{1 => {t_integer,{0,18446744073709551615}},
                                   2 => {t_bitstring,1,false},
                                   3 => {t_integer,{0,18446744073709551615}}}},
                        none}},
           {tr,{x,7},{t_integer,{0,'+inf'}}}]}.
    {test_heap,3,9}.
    {put_tuple2,{x,0},{list,[{x,7},{x,8}]}}.
    return.
  {label,910}.
    {bs_start_match4,{atom,no_fail},6,{x,5},{x,4}}.
    {test,bs_get_integer2,
          {f,908},
          5,
          [{tr,{x,4},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1678,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {bs_get_tail,{x,4},{x,4},6}.
    {bs_start_match4,{atom,no_fail},6,{x,4},{x,4}}.
    {test,bs_get_integer2,
          {f,908},
          6,
          [{tr,{x,4},{t_bs_context,1}},
           {tr,{x,5},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1678,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,bs_get_integer2,
          {f,908},
          7,
          [{tr,{x,4},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[1678,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,7}}.
    {test,bs_test_tail2,{f,908},[{x,4},0]}.
    {test,is_nonempty_list,{f,908},[{x,3}]}.
    {get_list,{x,3},{x,4},{x,3}}.
    {test,is_nonempty_list,{f,908},[{x,3}]}.
    {get_list,{x,3},{x,8},{x,3}}.
    {test,is_nil,
        {f,908},
        [{tr,{x,3},
             {t_list,
                 {t_union,none,none,
                     {t_integer,{0,'+inf'}},
                     {t_tuple,3,true,
                         #{1 => {t_integer,{0,18446744073709551615}},
                           2 => {t_bitstring,1,false},
                           3 => {t_integer,{0,18446744073709551615}}}},
                     none},
                 nil}}]}.
    {test,is_tuple,
          {f,908},
          [{tr,{x,4},
               {t_union,none,none,
                        {t_integer,{0,'+inf'}},
                        {t_tuple,3,true,
                                 #{1 => {t_integer,{0,18446744073709551615}},
                                   2 => {t_bitstring,1,false},
                                   3 => {t_integer,{0,18446744073709551615}}}},
                        none}}]}.
    {get_tuple_element,{x,4},1,{x,3}}.
    {bs_start_match4,{atom,no_fail},9,{x,3},{x,3}}.
    {test,bs_get_integer2,
          {f,908},
          9,
          [{tr,{x,3},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1678,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,9}}.
    {bs_get_tail,{x,3},{x,3},10}.
    {bs_start_match4,{atom,no_fail},10,{x,3},{x,3}}.
    {test,bs_get_integer2,
          {f,908},
          10,
          [{tr,{x,3},{t_bs_context,1}},
           {tr,{x,9},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1678,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,10}}.
    {test,bs_get_integer2,
          {f,908},
          11,
          [{tr,{x,3},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[1678,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,11}}.
    {test,bs_test_tail2,{f,908},[{x,3},0]}.
    {test,is_eq_exact,
          {f,908},
          [{tr,{x,2},
               {t_union,none,none,
                        {t_integer,{0,'+inf'}},
                        {t_tuple,3,true,
                                 #{1 => {t_integer,{0,18446744073709551615}},
                                   2 => {t_bitstring,1,false},
                                   3 => {t_integer,{0,18446744073709551615}}}},
                        none}},
           {tr,{x,6},{t_integer,{0,'+inf'}}}]}.
    {get_tuple_element,{x,4},0,{x,2}}.
    {test,is_eq_exact,
          {f,908},
          [{tr,{x,2},{t_integer,{0,18446744073709551615}}},
           {tr,{x,7},{t_integer,{0,18446744073709551615}}}]}.
    {test,is_eq_exact,
          {f,908},
          [{tr,{x,9},{t_integer,{0,255}}},{tr,{x,5},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,908},
          [{tr,{x,10},{t_integer,{0,'+inf'}}},
           {tr,{x,6},{t_integer,{0,'+inf'}}}]}.
    {test,is_eq_exact,
          {f,908},
          [{tr,{x,11},{t_integer,{0,18446744073709551615}}},
           {tr,{x,7},{t_integer,{0,18446744073709551615}}}]}.
    {get_tuple_element,{x,4},2,{x,2}}.
    {test,is_eq_exact,
          {f,908},
          [{tr,{x,2},{t_integer,{0,18446744073709551615}}},
           {tr,{x,7},{t_integer,{0,18446744073709551615}}}]}.
    {test,is_eq_exact,
          {f,908},
          [{tr,{x,8},
               {t_union,none,none,
                        {t_integer,{0,'+inf'}},
                        {t_tuple,3,true,
                                 #{1 => {t_integer,{0,18446744073709551615}},
                                   2 => {t_bitstring,1,false},
                                   3 => {t_integer,{0,18446744073709551615}}}},
                        none}},
           {tr,{x,6},{t_integer,{0,'+inf'}}}]}.
    {test_heap,3,8}.
    {put_tuple2,{x,0},{list,[{x,6},{x,7}]}}.
    return.


{function, mos_int_map, 1, 912}.
  {label,911}.
    {line,[{location,"bs_match_r25_SUITE.erl",1681}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,mos_int_map},1}.
  {label,912}.
    {'%',{var_info,{x,0},
                   [{type,{t_map,{t_atom,[key]},
                                 {t_cons,{t_bitstring,1,false},nil}}}]}}.
    {get_map_elements,{f,913},
                      {tr,{x,0},
                          {t_map,{t_atom,[key]},
                                 {t_cons,{t_bitstring,1,false},nil}}},
                      {list,[{atom,key},{x,1}]}}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_nil,{f,913},[{tr,{x,1},{t_list,{t_bitstring,1,false},nil}}]}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,1}}.
    {test,bs_get_integer2,
          {f,913},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1681,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{x,1},3}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,913},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1681,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,913},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[1681,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,913},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,913}.
    {get_map_elements,{f,911},
                      {tr,{x,0},
                          {t_map,{t_atom,[key]},
                                 {t_cons,{t_bitstring,1,false},nil}}},
                      {list,[{atom,key},{x,1}]}}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_nil,{f,911},[{tr,{x,1},{t_list,{t_bitstring,1,false},nil}}]}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,1}}.
    {test,bs_get_integer2,
          {f,911},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1683,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{x,1},3}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,911},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1683,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,911},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[1683,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,911},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.


{function, mos_int_map, 2, 915}.
  {label,914}.
    {line,[{location,"bs_match_r25_SUITE.erl",1686}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,mos_int_map},2}.
  {label,915}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[my]},
                                     2 => {t_atom,[key]}}}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_map,
                     {t_tuple,2,true,
                         #{1 => {t_atom,[my]},2 => {t_atom,[key]}}},
                     {t_cons,{t_bitstring,1,false},nil}}}]}}.
    {get_map_elements,
        {f,916},
        {tr,{x,1},
            {t_map,
                {t_tuple,2,true,#{1 => {t_atom,[my]},2 => {t_atom,[key]}}},
                {t_cons,{t_bitstring,1,false},nil}}},
        {list,[{literal,{my,key}},{x,0}]}}.
    {get_list,{x,0},{x,2},{x,0}}.
    {test,is_nil,{f,916},[{tr,{x,0},{t_list,{t_bitstring,1,false},nil}}]}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,0}}.
    {test,bs_get_integer2,
          {f,916},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1688,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,0},{x,0},3}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,916},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1688,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,916},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[1688,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,916},[{x,0},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,916}.
    {get_map_elements,
        {f,917},
        {tr,{x,1},
            {t_map,
                {t_tuple,2,true,#{1 => {t_atom,[my]},2 => {t_atom,[key]}}},
                {t_cons,{t_bitstring,1,false},nil}}},
        {list,[{literal,{my,key}},{x,0}]}}.
    {get_list,{x,0},{x,2},{x,0}}.
    {test,is_nil,{f,917},[{tr,{x,0},{t_list,{t_bitstring,1,false},nil}}]}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,0}}.
    {test,bs_get_integer2,
          {f,917},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1689,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,0},{x,0},3}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,917},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1689,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,917},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[1689,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,917},[{x,0},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,917}.
    {line,[{location,"bs_match_r25_SUITE.erl",1687}]}.
    {case_end,{x,1}}.


{function, mos_int_alias, 1, 919}.
  {label,918}.
    {line,[{location,"bs_match_r25_SUITE.erl",1692}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,mos_int_alias},1}.
  {label,919}.
    {'%',{var_info,{x,0},
                   [{type,{t_cons,{t_cons,{t_bitstring,1,false},nil},nil}}]}}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_nil,
          {f,918},
          [{tr,{x,2},{t_list,{t_cons,{t_bitstring,1,false},nil},nil}}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_nil,{f,918},[{tr,{x,1},{t_list,{t_bitstring,1,false},nil}}]}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,1}}.
    {test,bs_get_integer2,
          {f,920},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1692,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_tail,{x,1},{x,1},4}.
    {bs_start_match4,{atom,no_fail},4,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,920},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1692,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,920},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[1692,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,920},[{x,1},0]}.
    {test_heap,4,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4},{x,2}]}}.
    return.
  {label,920}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,1}}.
    {test,bs_get_integer2,
          {f,918},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1694,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_tail,{x,1},{x,1},4}.
    {bs_start_match4,{atom,no_fail},4,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,918},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1694,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,918},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[1694,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,918},[{x,1},0]}.
    {test_heap,4,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4},{x,2}]}}.
    return.


{function, mos_int_try, 1, 922}.
  {label,921}.
    {line,[{location,"bs_match_r25_SUITE.erl",1697}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,mos_int_try},1}.
  {label,922}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_bitstring,1,false},nil}}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {'try',{y,1},{f,926}}.
    {'try',{y,0},{f,925}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1698}]}.
    {call,1,{f,1684}}. % id/1
    {try_end,{y,0}}.
    {test,is_nonempty_list,{f,927},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_nil,{f,927},[{x,2}]}.
    {test,bs_start_match3,{f,923},2,[{x,1}],{x,2}}.
    {test,bs_get_integer2,
          {f,923},
          3,
          [{tr,{x,2},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1699,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_tail,{x,2},{x,2},4}.
    {bs_start_match4,{atom,no_fail},4,{x,2},{x,2}}.
    {test,bs_get_integer2,
          {f,923},
          4,
          [{tr,{x,2},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1699,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,923},
          4,
          [{tr,{x,2},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[1699,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,923},[{x,2},0]}.
    {test_heap,3,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4}]}}.
    {jump,{f,924}}.
  {label,923}.
    {test,bs_start_match3,{f,927},2,[{x,1}],{x,1}}.
    {test,bs_get_integer2,
          {f,927},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1700,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{x,1},3}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,927},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1700,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,927},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[1700,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,927},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
  {label,924}.
    {try_end,{y,1}}.
    {deallocate,2}.
    return.
  {label,925}.
    {try_case,{y,0}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.
  {label,926}.
    {try_case,{y,1}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.
  {label,927}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",1698}]}.
    {try_case_end,{x,0}}.


{function, mos_int_receive, 1, 929}.
  {label,928}.
    {line,[{location,"bs_match_r25_SUITE.erl",1705}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,mos_int_receive},1}.
  {label,929}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {allocate,5,1}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3}]}}.
    {move,{x,0},{y,4}}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{y,4},{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1707}]}.
    send.
  {label,930}.
    {loop_rec,{f,944},{x,0}}.
    {test,bs_start_match3,{f,931},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,931},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1709,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{x,1},3}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,931},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1709,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,931},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[1709,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,931},[{x,1},0]}.
    {test_heap,3,4}.
    {move,{x,3},{x,1}}.
    {move,{x,2},{x,0}}.
    remove_message.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {move,{x,0},{y,3}}.
    {jump,{f,932}}.
  {label,931}.
    {test,bs_start_match3,{f,943},1,[{x,0}],{x,0}}.
    {test,bs_get_integer2,
          {f,943},
          1,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1710,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,943},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,1},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1710,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_get_integer2,
          {f,943},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[1710,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,943},[{x,0},0]}.
    {test_heap,3,3}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    remove_message.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {move,{x,0},{y,3}}.
  {label,932}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{y,4},{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1713}]}.
    send.
  {label,933}.
    {loop_rec,{f,942},{x,0}}.
    {test,bs_start_match3,{f,934},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,934},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1715,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{x,1},3}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,934},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1715,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,934},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[1715,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,934},[{x,1},0]}.
    {test_heap,3,5}.
    {move,{x,3},{x,1}}.
    {move,{x,2},{x,0}}.
    {move,{x,4},{x,2}}.
    remove_message.
    {put_tuple2,{x,3},{list,[{x,1},{x,2}]}}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,3},{x,0}}.
    {jump,{f,935}}.
  {label,934}.
    {test,bs_start_match3,{f,941},1,[{x,0}],{x,0}}.
    {test,bs_get_integer2,
          {f,941},
          1,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1716,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,941},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,1},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1716,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,941},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[1716,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,941},[{x,0},0]}.
    {test_heap,3,4}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {move,{x,3},{x,2}}.
    remove_message.
    {put_tuple2,{x,3},{list,[{x,1},{x,2}]}}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,3},{x,0}}.
  {label,935}.
    {test,is_eq_exact,
          {f,946},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}},
           {tr,{y,3},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}}]}.
    {test_heap,5,0}.
    {bif,self,{f,0},[],{x,0}}.
    {put_list,{y,4},nil,{x,1}}.
    {put_tuple2,{x,1},{list,[{atom,tag},{x,1}]}}.
    {init_yregs,{list,[{y,4}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1718}]}.
    send.
  {label,936}.
    {loop_rec,{f,940},{x,0}}.
    {test,is_tagged_tuple,{f,939},[{x,0},2,{atom,tag}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_nonempty_list,{f,939},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_nil,{f,939},[{x,0}]}.
    {test,bs_start_match3,{f,937},2,[{x,1}],{x,0}}.
    {test,bs_get_integer2,
          {f,937},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1720,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,0},{x,0},3}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,937},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1720,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,937},
          4,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[1720,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,937},[{x,0},0]}.
    {test,is_eq_exact,
          {f,937},
          [{tr,{x,2},{t_integer,{0,255}}},{tr,{y,1},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,937},
          [{tr,{x,3},{t_integer,{0,'+inf'}}},
           {tr,{y,0},{t_integer,{0,'+inf'}}}]}.
    {test,is_ne_exact,
          {f,938},
          [{tr,{x,4},{t_integer,{0,4294967295}}},
           {tr,{y,2},{t_integer,{0,18446744073709551615}}}]}.
  {label,937}.
    {test,bs_start_match3,{f,939},2,[{x,1}],{x,0}}.
    {test,bs_get_integer2,
          {f,939},
          1,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1721,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,939},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,1},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1721,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,939},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[1721,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,939},[{x,0},0]}.
    {test,is_eq_exact,
          {f,939},
          [{tr,{x,1},{t_integer,{0,255}}},{tr,{y,1},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,939},
          [{tr,{x,2},{t_integer,{0,'+inf'}}},
           {tr,{y,0},{t_integer,{0,'+inf'}}}]}.
    {test,is_eq_exact,
          {f,939},
          [{tr,{x,3},{t_integer,{0,18446744073709551615}}},
           {tr,{y,2},{t_integer,{0,18446744073709551615}}}]}.
  {label,938}.
    {test_heap,3,0}.
    remove_message.
    {put_tuple2,{x,0},{list,[{y,0},{y,2}]}}.
    {test,is_eq_exact,
          {f,945},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}},
           {tr,{y,3},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}}]}.
    {move,{y,3},{x,0}}.
    {deallocate,5}.
    return.
  {label,939}.
    {loop_rec_end,{f,936}}.
  {label,940}.
    {wait,{f,936}}.
  {label,941}.
    {loop_rec_end,{f,933}}.
  {label,942}.
    {wait,{f,933}}.
  {label,943}.
    {loop_rec_end,{f,930}}.
  {label,944}.
    {wait,{f,930}}.
  {label,945}.
    {line,[{location,"bs_match_r25_SUITE.erl",1719}]}.
    {badmatch,{x,0}}.
  {label,946}.
    {line,[{location,"bs_match_r25_SUITE.erl",1714}]}.
    {badmatch,{x,0}}.


{function, mos_int_fun, 1, 948}.
  {label,947}.
    {line,[{location,"bs_match_r25_SUITE.erl",1725}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,mos_int_fun},1}.
  {label,948}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_bitstring,1,false},nil}}]}}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_nil,{f,950},[{tr,{x,2},{t_list,{t_bitstring,1,false},nil}}]}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,2}}.
    {test,bs_get_integer2,
          {f,949},
          3,
          [{tr,{x,2},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1727,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_tail,{x,2},{x,2},4}.
    {bs_start_match4,{atom,no_fail},4,{x,2},{x,2}}.
    {test,bs_get_integer2,
          {f,949},
          4,
          [{tr,{x,2},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1727,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,949},
          4,
          [{tr,{x,2},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[1727,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,949},[{x,2},0]}.
    {test_heap,3,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4}]}}.
    return.
  {label,949}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,950},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1728,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{x,1},3}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,950},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1728,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,950},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[1728,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,950},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,950}.
    {call_only,1,{f,1932}}. % '-mos_int_fun/1-inlined-0-'/1


{function, mos_int_exported, 1, 952}.
  {label,951}.
    {line,[{location,"bs_match_r25_SUITE.erl",1732}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,mos_int_exported},1}.
  {label,952}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,953},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1734,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{x,1},3}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,953},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1734,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,953},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[1734,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,953},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,953}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,954},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1735,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{x,1},3}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,954},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1735,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,954},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[1735,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,954},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,954}.
    {line,[{location,"bs_match_r25_SUITE.erl",1733}]}.
    {case_end,{x,0}}.


{function, mos_int_utf, 1, 956}.
  {label,955}.
    {line,[{location,"bs_match_r25_SUITE.erl",1739}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,mos_int_utf},1}.
  {label,956}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1740}]}.
    {bs_create_bin,{f,0},
                   0,1,1,
                   {x,0},
                   {list,[{atom,append},
                          1,1,nil,
                          {tr,{x,0},{t_bitstring,1,false}},
                          {atom,all},
                          {atom,string},
                          0,8,nil,
                          {string,<<204,137,30,97,0,0,39,15>>},
                          {integer,8}]}}.
    {allocate,0,1}.
    {call,1,{f,1684}}. % id/1
    {test,bs_start_match3,{f,957},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,957},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1742,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{x,1},3}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,957},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1742,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,957},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[1742,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_match_string,{f,957},[{x,1},16,{string,<<204,137>>}]}.
    {test,bs_get_utf16,
          {f,957},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {field_flags,[{anno,[1742,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,is_eq_exact,
          {f,957},
          [{tr,{x,4},{t_integer,{0,1114111}}},{integer,7777}]}.
    {test,bs_get_utf32,
          {f,957},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {field_flags,[{anno,[1742,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,is_eq_exact,
          {f,957},
          [{tr,{x,4},{t_integer,{0,1114111}}},{integer,9999}]}.
    {test,bs_test_tail2,{f,957},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    {deallocate,0}.
    return.
  {label,957}.
    {test,bs_start_match3,{f,958},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,958},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1743,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{x,1},3}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,958},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1743,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,958},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[1743,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_match_string,{f,958},[{x,1},16,{string,<<204,137>>}]}.
    {test,bs_get_utf16,
          {f,958},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {field_flags,[{anno,[1743,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,is_eq_exact,
          {f,958},
          [{tr,{x,4},{t_integer,{0,1114111}}},{integer,7777}]}.
    {test,bs_get_utf32,
          {f,958},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {field_flags,[{anno,[1743,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,is_eq_exact,
          {f,958},
          [{tr,{x,4},{t_integer,{0,1114111}}},{integer,9999}]}.
    {test,bs_test_tail2,{f,958},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    {deallocate,0}.
    return.
  {label,958}.
    {line,[{location,"bs_match_r25_SUITE.erl",1741}]}.
    {case_end,{x,0}}.


{function, mos_bin, 1, 960}.
  {label,959}.
    {line,[{location,"bs_match_r25_SUITE.erl",1746}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,mos_bin},1}.
  {label,960}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1747}]}.
    {call,1,{f,963}}. % mos_bin_plain/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     {t_tuple,2,false,
                         #{1 => {t_bitstring,8,false},
                           2 => {t_integer,{0,255}}}},
                     {t_bitstring,8,false}}}]}}.
    {test_heap,6,1}.
    {put_tuple2,{x,1},{list,[{atom,inner},{y,0}]}}.
    {put_tuple2,{x,1},{list,[{atom,outer},{x,1}]}}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1748}]}.
    {call,1,{f,970}}. % mos_bin_tuple/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     {t_tuple,2,false,
                         #{1 => {t_bitstring,8,false},
                           2 => {t_integer,{0,255}}}},
                     {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,961},
          [{tr,{x,0},
               {t_union,none,none,none,
                        {t_tuple,2,false,
                                 #{1 => {t_bitstring,8,false},
                                   2 => {t_integer,{0,255}}}},
                        {t_bitstring,8,false}}},
           {tr,{y,0},
               {t_union,none,none,none,
                        {t_tuple,2,false,
                                 #{1 => {t_bitstring,8,false},
                                   2 => {t_integer,{0,255}}}},
                        {t_bitstring,8,false}}}]}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,961}.
    {badmatch,{x,0}}.


{function, mos_bin_plain, 1, 963}.
  {label,962}.
    {line,[{location,"bs_match_r25_SUITE.erl",1751}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,mos_bin_plain},1}.
  {label,963}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,964},
          2,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1751,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{x,1},3}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {test,bs_get_binary2,
          {f,964},
          3,
          [{tr,{x,1},{t_bs_context,8}},
           {tr,{x,2},{t_integer,{0,255}}},
           8,
           {field_flags,[{anno,[1751,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,964},
          4,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1751,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_integer2,
          {f,964},
          5,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1751,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_test_tail2,{f,964},[{x,1},0]}.
    {test,is_eq_exact,
          {f,964},
          [{tr,{x,5},{t_integer,{0,255}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {line,[{location,"bs_match_r25_SUITE.erl",1752}]}.
    {gc_bif,byte_size,{f,0},5,[{tr,{x,3},{t_bitstring,8,false}}],{x,0}}.
    {test,is_eq_exact,
          {f,966},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},
           {tr,{x,2},{t_integer,{0,255}}}]}.
    {test_heap,3,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4}]}}.
    return.
  {label,964}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,965},
          2,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1754,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{x,1},3}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {test,bs_get_binary2,
          {f,965},
          3,
          [{tr,{x,1},{t_bs_context,8}},
           {tr,{x,2},{t_integer,{0,255}}},
           8,
           {field_flags,[{anno,[1754,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,965},
          4,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1754,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_integer2,
          {f,965},
          5,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1754,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_get_integer2,
          {f,965},
          6,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1754,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,bs_test_tail2,{f,965},[{x,1},0]}.
    {test,is_eq_exact,
          {f,965},
          [{tr,{x,5},{t_integer,{0,255}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {line,[{location,"bs_match_r25_SUITE.erl",1755}]}.
    {gc_bif,byte_size,{f,0},7,[{tr,{x,3},{t_bitstring,8,false}}],{x,0}}.
    {test,is_eq_exact,
          {f,967},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},
           {tr,{x,2},{t_integer,{0,255}}}]}.
    {test_heap,4,7}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4},{x,6}]}}.
    return.
  {label,965}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,962},
          2,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1757,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{x,1},3}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {test,bs_get_binary2,
          {f,962},
          3,
          [{tr,{x,1},{t_bs_context,8}},
           {tr,{x,2},{t_integer,{0,255}}},
           8,
           {field_flags,[{anno,[1757,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_match_string,{f,962},[{x,1},80,{string,<<"abcdefghij">>}]}.
    {test,bs_test_tail2,{f,962},[{x,1},0]}.
    {line,[{location,"bs_match_r25_SUITE.erl",1758}]}.
    {gc_bif,byte_size,{f,0},4,[{tr,{x,3},{t_bitstring,8,false}}],{x,0}}.
    {test,is_eq_exact,
          {f,968},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},
           {tr,{x,2},{t_integer,{0,255}}}]}.
    {move,{x,3},{x,0}}.
    return.
  {label,966}.
    {line,[{location,"bs_match_r25_SUITE.erl",1752}]}.
    {badmatch,{x,0}}.
  {label,967}.
    {line,[{location,"bs_match_r25_SUITE.erl",1755}]}.
    {badmatch,{x,0}}.
  {label,968}.
    {line,[{location,"bs_match_r25_SUITE.erl",1758}]}.
    {badmatch,{x,0}}.


{function, mos_bin_tuple, 1, 970}.
  {label,969}.
    {line,[{location,"bs_match_r25_SUITE.erl",1761}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,mos_bin_tuple},1}.
  {label,970}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_atom,[outer]},
                       2 =>
                           {t_tuple,2,true,
                               #{1 => {t_atom,[inner]},
                                 2 => {t_bitstring,8,false}}}}}}]}}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,2}}.
    {test,bs_get_integer2,
          {f,971},
          3,
          [{tr,{x,2},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1761,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_tail,{x,2},{x,2},4}.
    {bs_start_match4,{atom,no_fail},4,{x,2},{x,2}}.
    {test,bs_get_binary2,
          {f,971},
          4,
          [{tr,{x,2},{t_bs_context,8}},
           {tr,{x,3},{t_integer,{0,255}}},
           8,
           {field_flags,[{anno,[1761,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_integer2,
          {f,971},
          5,
          [{tr,{x,2},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1761,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_get_integer2,
          {f,971},
          6,
          [{tr,{x,2},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1761,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,bs_test_tail2,{f,971},[{x,2},0]}.
    {test,is_eq_exact,
          {f,971},
          [{tr,{x,6},{t_integer,{0,255}}},{tr,{x,3},{t_integer,{0,255}}}]}.
    {line,[{location,"bs_match_r25_SUITE.erl",1762}]}.
    {gc_bif,byte_size,{f,0},6,[{tr,{x,4},{t_bitstring,8,false}}],{x,0}}.
    {test,is_eq_exact,
          {f,973},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},
           {tr,{x,3},{t_integer,{0,255}}}]}.
    {test_heap,3,6}.
    {put_tuple2,{x,0},{list,[{x,4},{x,5}]}}.
    return.
  {label,971}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,2}}.
    {test,bs_get_integer2,
          {f,972},
          3,
          [{tr,{x,2},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1764,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_tail,{x,2},{x,2},4}.
    {bs_start_match4,{atom,no_fail},4,{x,2},{x,2}}.
    {test,bs_get_binary2,
          {f,972},
          4,
          [{tr,{x,2},{t_bs_context,8}},
           {tr,{x,3},{t_integer,{0,255}}},
           8,
           {field_flags,[{anno,[1764,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_integer2,
          {f,972},
          5,
          [{tr,{x,2},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1764,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_get_integer2,
          {f,972},
          6,
          [{tr,{x,2},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1764,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,bs_get_integer2,
          {f,972},
          7,
          [{tr,{x,2},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1764,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,7}}.
    {test,bs_test_tail2,{f,972},[{x,2},0]}.
    {test,is_eq_exact,
          {f,972},
          [{tr,{x,6},{t_integer,{0,255}}},{tr,{x,3},{t_integer,{0,255}}}]}.
    {line,[{location,"bs_match_r25_SUITE.erl",1765}]}.
    {gc_bif,byte_size,{f,0},8,[{tr,{x,4},{t_bitstring,8,false}}],{x,0}}.
    {test,is_eq_exact,
          {f,974},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},
           {tr,{x,3},{t_integer,{0,255}}}]}.
    {test_heap,4,8}.
    {put_tuple2,{x,0},{list,[{x,4},{x,5},{x,7}]}}.
    return.
  {label,972}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,969},
          2,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1767,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{x,1},3}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {test,bs_get_binary2,
          {f,969},
          3,
          [{tr,{x,1},{t_bs_context,8}},
           {tr,{x,2},{t_integer,{0,255}}},
           8,
           {field_flags,[{anno,[1767,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_match_string,{f,969},[{x,1},80,{string,<<"abcdefghij">>}]}.
    {test,bs_test_tail2,{f,969},[{x,1},0]}.
    {line,[{location,"bs_match_r25_SUITE.erl",1768}]}.
    {gc_bif,byte_size,{f,0},4,[{tr,{x,3},{t_bitstring,8,false}}],{x,0}}.
    {test,is_eq_exact,
          {f,975},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},
           {tr,{x,2},{t_integer,{0,255}}}]}.
    {move,{x,3},{x,0}}.
    return.
  {label,973}.
    {line,[{location,"bs_match_r25_SUITE.erl",1762}]}.
    {badmatch,{x,0}}.
  {label,974}.
    {line,[{location,"bs_match_r25_SUITE.erl",1765}]}.
    {badmatch,{x,0}}.
  {label,975}.
    {line,[{location,"bs_match_r25_SUITE.erl",1768}]}.
    {badmatch,{x,0}}.


{function, mos_verify_sig, 1, 977}.
  {label,976}.
    {line,[{location,"bs_match_r25_SUITE.erl",1771}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,mos_verify_sig},1}.
  {label,977}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[not_a_binary]},
                                   none,none,none,
                                   {t_bitstring,16,false}}}]}}.
    {test,bs_start_match3,{f,978},1,[{x,0}],{x,0}}.
    {test,bs_get_integer2,
          {f,978},
          1,
          [{tr,{x,0},{t_bs_context,16}},
           {integer,32},
           1,
           {field_flags,[{anno,[1773,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_skip_bits2,
          {f,978},
          [{x,0},
           {x,1},
           8,
           {field_flags,[{anno,[1773,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_integer2,
          {f,978},
          1,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,32},
           1,
           {field_flags,[{anno,[1773,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_binary2,
          {f,978},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {tr,{x,1},{t_integer,{0,4294967295}}},
           8,
           {field_flags,[{anno,[1773,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_test_tail2,{f,978},[{x,0},0]}.
    {move,{x,1},{x,0}}.
    return.
  {label,978}.
    {move,{atom,false},{x,0}}.
    return.


{function, follow_fail_branch, 1, 980}.
  {label,979}.
    {line,[{location,"bs_match_r25_SUITE.erl",1781}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,follow_fail_branch},1}.
  {label,980}.
    {allocate,0,0}.
    {move,{literal,<<0>>},{x,1}}.
    {move,{literal,<<0,1>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1782}]}.
    {call,2,{f,984}}. % ffb_1/2
    {'%',{var_info,{x,0},[{type,{t_integer,{42,42}}}]}}.
    {move,{literal,[a]},{x,1}}.
    {move,{literal,<<0,1>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1783}]}.
    {call,2,{f,984}}. % ffb_1/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,288230376151711743}}}]}}.
    {test,is_eq_exact,
          {f,982},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},{integer,8}]}.
    {move,{literal,<<0>>},{x,1}}.
    {move,{integer,17},{x,2}}.
    {move,{literal,<<0,1>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1784}]}.
    {call,3,{f,988}}. % ffb_2/3
    {'%',{var_info,{x,0},[{type,{t_integer,{42,42}}}]}}.
    {move,{literal,[a]},{x,1}}.
    {move,{integer,0},{x,2}}.
    {move,{literal,<<0,1>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1785}]}.
    {call,3,{f,988}}. % ffb_2/3
    {'%',{var_info,{x,0},[{type,{t_integer,{0,288230376151711743}}}]}}.
    {test,is_eq_exact,
          {f,981},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},{integer,8}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,981}.
    {badmatch,{x,0}}.
  {label,982}.
    {line,[{location,"bs_match_r25_SUITE.erl",1783}]}.
    {badmatch,{x,0}}.


{function, ffb_1, 2, 984}.
  {label,983}.
    {line,[{location,"bs_match_r25_SUITE.erl",1788}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,ffb_1},2}.
  {label,984}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_union,none,
                                   {t_cons,{t_atom,[a]},nil},
                                   none,none,
                                   {t_bitstring,8,false}}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,2}}.
    {test,bs_skip_bits2,
          {f,983},
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[1788,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_get_tail,{x,2},{x,0},3}.
    {test,bs_start_match3,{f,985},2,[{x,1}],{x,2}}.
    {test,bs_test_tail2,{f,986},[{x,2},8]}.
    {move,{integer,42},{x,0}}.
    return.
  {label,985}.
    {line,[{location,"bs_match_r25_SUITE.erl",1797}]}.
    {gc_bif,bit_size,{f,0},1,[{tr,{x,0},{t_bitstring,8,false}}],{x,0}}.
    return.
  {label,986}.
    {line,[{location,"bs_match_r25_SUITE.erl",1789}]}.
    {case_end,{x,1}}.


{function, ffb_2, 3, 988}.
  {label,987}.
    {line,[{location,"bs_match_r25_SUITE.erl",1800}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,ffb_2},3}.
  {label,988}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_union,none,
                                   {t_cons,{t_atom,[a]},nil},
                                   none,none,
                                   {t_bitstring,8,false}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{0,17}}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,3}}.
    {test,bs_skip_bits2,
          {f,987},
          [{x,3},
           {integer,8},
           1,
           {field_flags,[{anno,[1800,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_get_tail,{x,3},{x,0},4}.
    {test,bs_start_match3,{f,989},3,[{x,1}],{x,3}}.
    {test,bs_test_tail2,{f,990},[{x,3},8]}.
    {test,is_eq_exact,{f,990},[{tr,{x,2},{t_integer,{0,17}}},{integer,17}]}.
    {move,{integer,42},{x,0}}.
    return.
  {label,989}.
    {line,[{location,"bs_match_r25_SUITE.erl",1803}]}.
    {gc_bif,bit_size,{f,0},1,[{tr,{x,0},{t_bitstring,8,false}}],{x,0}}.
    return.
  {label,990}.
    {line,[{location,"bs_match_r25_SUITE.erl",1801}]}.
    {case_end,{x,1}}.


{function, no_partition, 1, 992}.
  {label,991}.
    {line,[{location,"bs_match_r25_SUITE.erl",1806}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,no_partition},1}.
  {label,992}.
    {allocate,0,0}.
    {move,{atom,a1},{x,1}}.
    {move,{literal,<<"string">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1807}]}.
    {call,2,{f,998}}. % no_partition_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[one]}}]}}.
    {move,{atom,a2},{x,1}}.
    {move,{literal,<<"string">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1808}]}.
    {call,2,{f,998}}. % no_partition_1/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_atom,[two]},
                       2 =>
                           {t_union,
                               {t_atom,[a,undefined]},
                               {t_cons,{t_atom,[a]},nil},
                               none,
                               [{{2,{t_atom,[a]}},
                                 {t_tuple,2,true,
                                     #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                               {t_bitstring,16,false}}}}}]}}.
    {test,is_eq_exact,
        {f,996},
        [{tr,{x,0},
             {t_tuple,2,true,
                 #{1 => {t_atom,[two]},
                   2 =>
                       {t_union,
                           {t_atom,[a,undefined]},
                           {t_cons,{t_atom,[a]},nil},
                           none,
                           [{{2,{t_atom,[a]}},
                             {t_tuple,2,true,
                                 #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                           {t_bitstring,16,false}}}}},
         {literal,{two,<<"string">>}}]}.
    {move,{atom,a2},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1809}]}.
    {call,2,{f,998}}. % no_partition_1/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_atom,[two]},
                       2 =>
                           {t_union,
                               {t_atom,[a,undefined]},
                               {t_cons,{t_atom,[a]},nil},
                               none,
                               [{{2,{t_atom,[a]}},
                                 {t_tuple,2,true,
                                     #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                               {t_bitstring,16,false}}}}}]}}.
    {test,is_eq_exact,
        {f,995},
        [{tr,{x,0},
             {t_tuple,2,true,
                 #{1 => {t_atom,[two]},
                   2 =>
                       {t_union,
                           {t_atom,[a,undefined]},
                           {t_cons,{t_atom,[a]},nil},
                           none,
                           [{{2,{t_atom,[a]}},
                             {t_tuple,2,true,
                                 #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                           {t_bitstring,16,false}}}}},
         {literal,{two,<<>>}}]}.
    {move,{atom,a2},{x,1}}.
    {move,{atom,a},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1810}]}.
    {call,2,{f,998}}. % no_partition_1/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_atom,[two]},
                       2 =>
                           {t_union,
                               {t_atom,[a,undefined]},
                               {t_cons,{t_atom,[a]},nil},
                               none,
                               [{{2,{t_atom,[a]}},
                                 {t_tuple,2,true,
                                     #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                               {t_bitstring,16,false}}}}}]}}.
    {test,is_eq_exact,
        {f,994},
        [{tr,{x,0},
             {t_tuple,2,true,
                 #{1 => {t_atom,[two]},
                   2 =>
                       {t_union,
                           {t_atom,[a,undefined]},
                           {t_cons,{t_atom,[a]},nil},
                           none,
                           [{{2,{t_atom,[a]}},
                             {t_tuple,2,true,
                                 #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                           {t_bitstring,16,false}}}}},
         {literal,{two,a}}]}.
    {move,{atom,a3},{x,1}}.
    {move,{atom,undefined},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1811}]}.
    {call,2,{f,998}}. % no_partition_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[three]}}]}}.
    {move,{atom,a4},{x,1}}.
    {move,{literal,[a]},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1812}]}.
    {call,2,{f,998}}. % no_partition_1/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_atom,[four]},
                                     2 => {t_atom,[a]},
                                     3 => {t_list,{t_atom,[a]},nil}}}}]}}.
    {test,is_eq_exact,
          {f,993},
          [{tr,{x,0},
               {t_tuple,3,true,
                        #{1 => {t_atom,[four]},
                          2 => {t_atom,[a]},
                          3 => {t_list,{t_atom,[a]},nil}}}},
           {literal,{four,a,[]}}]}.
    {move,{atom,a5},{x,1}}.
    {move,{literal,{a,b}},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1813}]}.
    {call,2,{f,998}}. % no_partition_1/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_atom,[five]},
                                     2 => {t_atom,[a]},
                                     3 => {t_atom,[b]}}}}]}}.
    {move,{atom,a1},{x,1}}.
    {move,{literal,<<"string">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1815}]}.
    {call,2,{f,1006}}. % no_partition_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[one]}}]}}.
    {move,{atom,a2},{x,1}}.
    {move,{literal,<<"string">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1816}]}.
    {call,2,{f,1006}}. % no_partition_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[two]}}]}}.
    {move,{atom,a2},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1817}]}.
    {call,2,{f,1006}}. % no_partition_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[two]}}]}}.
    {move,{atom,a2},{x,1}}.
    {move,{atom,a},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1818}]}.
    {call,2,{f,1006}}. % no_partition_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[two]}}]}}.
    {move,{atom,a3},{x,1}}.
    {move,{atom,undefined},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1819}]}.
    {call,2,{f,1006}}. % no_partition_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[three]}}]}}.
    {move,{atom,a4},{x,1}}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1820}]}.
    {call,2,{f,1006}}. % no_partition_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[four]}}]}}.
    {move,{atom,a5},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1821}]}.
    {call,2,{f,1006}}. % no_partition_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[five]}}]}}.
    {move,{atom,a6},{x,1}}.
    {move,{float,42.0},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1822}]}.
    {call,2,{f,1006}}. % no_partition_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[six]}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,993}.
    {line,[{location,"bs_match_r25_SUITE.erl",1812}]}.
    {badmatch,{x,0}}.
  {label,994}.
    {line,[{location,"bs_match_r25_SUITE.erl",1810}]}.
    {badmatch,{x,0}}.
  {label,995}.
    {line,[{location,"bs_match_r25_SUITE.erl",1809}]}.
    {badmatch,{x,0}}.
  {label,996}.
    {line,[{location,"bs_match_r25_SUITE.erl",1808}]}.
    {badmatch,{x,0}}.


{function, no_partition_1, 2, 998}.
  {label,997}.
    {line,[{location,"bs_match_r25_SUITE.erl",1825}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,no_partition_1},2}.
  {label,998}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[a,undefined]},
                     {t_cons,{t_atom,[a]},nil},
                     none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                     {t_bitstring,16,false}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[a1,a2,a3,a4,a5]}}]}}.
    {test,is_eq_exact,
          {f,1000},
          [{tr,{x,0},
               {t_union,{t_atom,[a,undefined]},
                        {t_cons,{t_atom,[a]},nil},
                        none,
                        [{{2,{t_atom,[a]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                        {t_bitstring,16,false}}},
           {literal,<<"string">>}]}.
    {select_val,{tr,{x,1},{t_atom,[a1,a2,a3,a4,a5]}},
                {f,1002},
                {list,[{atom,a1},{f,999},{atom,a2},{f,1001}]}}.
  {label,999}.
    {move,{atom,one},{x,0}}.
    return.
  {label,1000}.
    {test,is_eq_exact,
          {f,1002},
          [{tr,{x,1},{t_atom,[a1,a2,a3,a4,a5]}},{atom,a2}]}.
  {label,1001}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,two},{x,0}]}}.
    return.
  {label,1002}.
    {test,is_nonempty_list,{f,1003},[{x,0}]}.
    {get_tl,{x,0},{x,2}}.
    {test,is_eq_exact,{f,997},[{tr,{x,1},{t_atom,[a1,a3,a4,a5]}},{atom,a4}]}.
    {test_heap,4,3}.
    {put_tuple2,{x,0},{list,[{atom,four},{atom,a},{x,2}]}}.
    return.
  {label,1003}.
    {test,is_tuple,
          {f,1004},
          [{tr,{x,0},
               {t_union,{t_atom,[a,undefined]},
                        none,none,
                        [{{2,{t_atom,[a]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                        {t_bitstring,16,false}}}]}.
    {test,is_eq_exact,{f,997},[{tr,{x,1},{t_atom,[a1,a3,a4,a5]}},{atom,a5}]}.
    {move,{literal,{five,a,b}},{x,0}}.
    return.
  {label,1004}.
    {test,is_eq_exact,
          {f,997},
          [{tr,{x,0},
               {t_union,{t_atom,[a,undefined]},
                        none,none,none,
                        {t_bitstring,16,false}}},
           {atom,undefined}]}.
    {test,is_eq_exact,{f,997},[{tr,{x,1},{t_atom,[a1,a3,a4,a5]}},{atom,a3}]}.
    {move,{atom,three},{x,0}}.
    return.


{function, no_partition_2, 2, 1006}.
  {label,1005}.
    {line,[{location,"bs_match_r25_SUITE.erl",1836}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,no_partition_2},2}.
  {label,1006}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[a,undefined]},
                                   nil,
                                   {t_number,{42,42}},
                                   none,
                                   {t_bitstring,16,false}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,any}}]}}.
    {test,is_eq_exact,
          {f,1008},
          [{tr,{x,0},
               {t_union,{t_atom,[a,undefined]},
                        nil,
                        {t_number,{42,42}},
                        none,
                        {t_bitstring,16,false}}},
           {literal,<<"string">>}]}.
    {select_val,{tr,{x,1},{t_atom,any}},
                {f,1010},
                {list,[{atom,a1},{f,1007},{atom,a2},{f,1009}]}}.
  {label,1007}.
    {move,{atom,one},{x,0}}.
    return.
  {label,1008}.
    {test,is_eq_exact,{f,1010},[{tr,{x,1},{t_atom,any}},{atom,a2}]}.
  {label,1009}.
    {move,{atom,two},{x,0}}.
    return.
  {label,1010}.
    {test,is_atom,
          {f,1011},
          [{tr,{x,0},
               {t_union,{t_atom,[a,undefined]},
                        nil,
                        {t_number,{42,42}},
                        none,
                        {t_bitstring,16,false}}}]}.
    {test,is_eq_exact,
          {f,1005},
          [{tr,{x,0},{t_atom,[a,undefined]}},{atom,undefined}]}.
    {test,is_eq_exact,{f,1005},[{tr,{x,1},{t_atom,any}},{atom,a3}]}.
    {move,{atom,three},{x,0}}.
    return.
  {label,1011}.
    {test,is_float,
          {f,1012},
          [{tr,{x,0},
               {t_union,none,nil,
                        {t_number,{42,42}},
                        none,
                        {t_bitstring,16,false}}}]}.
    {test,is_eq_exact,{f,1005},[{tr,{x,1},{t_atom,any}},{atom,a6}]}.
    {move,{atom,six},{x,0}}.
    return.
  {label,1012}.
    {test,is_integer,
          {f,1013},
          [{tr,{x,0},
               {t_union,none,nil,
                        {t_integer,{42,42}},
                        none,
                        {t_bitstring,16,false}}}]}.
    {test,is_eq_exact,{f,1005},[{tr,{x,1},{t_atom,any}},{atom,a4}]}.
    {move,{atom,four},{x,0}}.
    return.
  {label,1013}.
    {test,is_nil,
          {f,1005},
          [{tr,{x,0},{t_union,none,nil,none,none,{t_bitstring,16,false}}}]}.
    {test,is_eq_exact,{f,1005},[{tr,{x,1},{t_atom,any}},{atom,a5}]}.
    {move,{atom,five},{x,0}}.
    return.


{function, calling_a_binary, 1, 1015}.
  {label,1014}.
    {line,[{location,"bs_match_r25_SUITE.erl",1849}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,calling_a_binary},1}.
  {label,1015}.
    {test,is_list,{f,1014},[{x,0}]}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,nil,{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1850}]}.
    {call,2,{f,1021}}. % call_binary/2
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {'catch',{y,1},{f,1016}}.
    {move,nil,{x,1}}.
    {move,{literal,<<1>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1851}]}.
    {call,2,{f,1021}}. % call_binary/2
    {'%',{var_info,{x,0},[{type,nil}]}}.
  {label,1016}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,1019},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1019},[{x,1},2,{atom,badarg}]}.
    {'catch',{y,0},{f,1017}}.
    {move,nil,{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r25_SUITE.erl",1852}]}.
    {call,2,{f,1021}}. % call_binary/2
    {'%',{var_info,{x,0},[{type,nil}]}}.
  {label,1017}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1018},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1018},[{x,1},2,{atom,badarg}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,1018}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1852}]}.
    {badmatch,{x,0}}.
  {label,1019}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",1851}]}.
    {badmatch,{x,0}}.


{function, call_binary, 2, 1021}.
  {label,1020}.
    {line,[{location,"bs_match_r25_SUITE.erl",1855}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,call_binary},2}.
  {label,1021}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,nil}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,2}}.
    {test,bs_test_tail2,{f,1022},[{x,2},0]}.
    {move,{x,1},{x,0}}.
    return.
  {label,1022}.
    {test,bs_get_integer2,
          {f,1020},
          3,
          [{tr,{x,2},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1857,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_tail,{x,2},{x,0},4}.
    {line,[{location,"bs_match_r25_SUITE.erl",1858}]}.
    {bs_create_bin,{f,0},
                   0,4,8,
                   {x,1},
                   {list,[{atom,append},
                          1,8,nil,nil,
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,3},{t_integer,{0,255}}},
                          {integer,8}]}}.
    {allocate,0,2}.
    {swap,{x,0},{x,1}}.
    {call_fun2,{atom,unsafe},1,{tr,{x,1},{t_bitstring,8,false}}}.
    {deallocate,0}.
    return.


{function, binary_in_map, 1, 1024}.
  {label,1023}.
    {line,[{location,"bs_match_r25_SUITE.erl",1860}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,binary_in_map},1}.
  {label,1024}.
    {test,is_list,{f,1023},[{x,0}]}.
    {allocate,4,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3}]}}.
    {move,{literal,#{key => <<"*">>}},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1861}]}.
    {call,1,{f,1034}}. % match_binary_in_map/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,3},{f,1025}}.
    {move,{literal,#{key => 1}},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1863}]}.
    {call,1,{f,1034}}. % match_binary_in_map/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1025}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,1032},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1032},[{x,1}]}.
    {test,test_arity,{f,1032},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,1032},[{x,1},2,{atom,badmatch}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_map,{f,1032},[{x,1}]}.
    {get_map_elements,{f,1032},
                      {tr,{x,1},{t_map,any,any}},
                      {list,[{atom,key},{x,1}]}}.
    {test,is_eq_exact,{f,1032},[{x,1},{integer,1}]}.
    {'catch',{y,2},{f,1026}}.
    {move,{literal,#{key => <<3,255>>}},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",1865}]}.
    {call,1,{f,1034}}. % match_binary_in_map/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1026}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,1031},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1031},[{x,1}]}.
    {test,test_arity,{f,1031},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,1031},[{x,1},2,{atom,badmatch}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_map,{f,1031},[{x,1}]}.
    {get_map_elements,{f,1031},
                      {tr,{x,1},{t_map,any,any}},
                      {list,[{atom,key},{x,1}]}}.
    {test,is_eq_exact,{f,1031},[{x,1},{literal,<<3,255>>}]}.
    {'catch',{y,1},{f,1027}}.
    {move,{literal,#{key => <<1>>}},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",1867}]}.
    {call,1,{f,1034}}. % match_binary_in_map/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1027}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,1030},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1030},[{x,1}]}.
    {test,test_arity,{f,1030},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,1030},[{x,1},2,{atom,badmatch}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_map,{f,1030},[{x,1}]}.
    {get_map_elements,{f,1030},
                      {tr,{x,1},{t_map,any,any}},
                      {list,[{atom,key},{x,1}]}}.
    {test,is_eq_exact,{f,1030},[{x,1},{literal,<<1>>}]}.
    {'catch',{y,0},{f,1028}}.
    {move,{atom,not_a_map},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",1869}]}.
    {call,1,{f,1034}}. % match_binary_in_map/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1028}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1029},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1029},[{x,1}]}.
    {test,test_arity,{f,1029},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1029},[{x,1},{literal,{badmatch,not_a_map}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,4}.
    return.
  {label,1029}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1868}]}.
    {badmatch,{x,0}}.
  {label,1030}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",1866}]}.
    {badmatch,{x,0}}.
  {label,1031}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",1864}]}.
    {badmatch,{x,0}}.
  {label,1032}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",1862}]}.
    {badmatch,{x,0}}.


{function, match_binary_in_map, 1, 1034}.
  {label,1033}.
    {line,[{location,"bs_match_r25_SUITE.erl",1872}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,match_binary_in_map},1}.
  {label,1034}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[not_a_map]},
                     none,none,none,
                     {t_map,
                         {t_atom,[key]},
                         {t_union,none,none,
                             {t_integer,{1,1}},
                             none,
                             {t_bitstring,8,false}}}}}]}}.
    {test,is_map,
        {f,1035},
        [{tr,{x,0},
             {t_union,
                 {t_atom,[not_a_map]},
                 none,none,none,
                 {t_map,
                     {t_atom,[key]},
                     {t_union,none,none,
                         {t_integer,{1,1}},
                         none,
                         {t_bitstring,8,false}}}}}]}.
    {get_map_elements,
        {f,1035},
        {tr,{x,0},
            {t_map,
                {t_atom,[key]},
                {t_union,none,none,
                    {t_integer,{1,1}},
                    none,
                    {t_bitstring,8,false}}}},
        {list,[{atom,key},{x,1}]}}.
    {test,is_eq_exact,
          {f,1035},
          [{tr,{x,1},
               {t_union,none,none,
                        {t_integer,{1,1}},
                        none,
                        {t_bitstring,8,false}}},
           {literal,<<"*">>}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1035}.
    {line,[{location,"bs_match_r25_SUITE.erl",1875}]}.
    {badmatch,{x,0}}.


{function, match_string_opt, 1, 1037}.
  {label,1036}.
    {line,[{location,"bs_match_r25_SUITE.erl",1879}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,match_string_opt},1}.
  {label,1037}.
    {test,is_list,{f,1036},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,{<<1>>,{v,<<1,2,3>>}}},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1881}]}.
    {call,1,{f,1040}}. % do_match_string_opt/1
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,3,true,
         #{1 => {t_atom,[x]},
           2 => {t_bitstring,8,false},
           3 =>
            {t_tuple,2,true,
             #{1 => {t_bitstring,8,false},
               2 =>
                {t_tuple,2,true,
                 #{1 => {t_atom,[v]},2 => {t_bitstring,8,false}}}}}}}}]}}.
    {test,is_eq_exact,
        {f,1038},
        [{tr,{x,0},
             {t_tuple,3,true,
                 #{1 => {t_atom,[x]},
                   2 => {t_bitstring,8,false},
                   3 =>
                       {t_tuple,2,true,
                           #{1 => {t_bitstring,8,false},
                             2 =>
                                 {t_tuple,2,true,
                                     #{1 => {t_atom,[v]},
                                       2 => {t_bitstring,8,false}}}}}}}},
         {literal,{x,<<1,2,3>>,{<<1>>,{v,<<1,2,3>>}}}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1038}.
    {line,[{location,"bs_match_r25_SUITE.erl",1880}]}.
    {badmatch,{x,0}}.


{function, do_match_string_opt, 1, 1040}.
  {label,1039}.
    {line,[{location,"bs_match_r25_SUITE.erl",1884}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_match_string_opt},1}.
  {label,1040}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_bitstring,8,false},
                       2 =>
                           {t_tuple,2,true,
                               #{1 => {t_atom,[v]},
                                 2 => {t_bitstring,8,false}}}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,
          {f,1039},
          [{tr,{x,1},{t_bitstring,8,false}},{literal,<<1>>}]}.
    {test_heap,4,1}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {put_tuple2,{x,0},{list,[{atom,x},{x,1},{x,0}]}}.
    return.


{function, select_on_integer, 1, 1042}.
  {label,1041}.
    {line,[{location,"bs_match_r25_SUITE.erl",1887}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,select_on_integer},1}.
  {label,1042}.
    {test,is_list,{f,1041},[{x,0}]}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1888}]}.
    {call,1,{f,1052}}. % do_select_on_integer/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,none,
                                   {t_integer,{0,127}},
                                   none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,1050},
          [{tr,{x,0},
               {t_union,none,none,
                        {t_integer,{0,127}},
                        none,
                        {t_bitstring,8,false}}},
           {integer,42}]}.
    {move,{literal,<<128,97,98,99>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",1889}]}.
    {call,1,{f,1052}}. % do_select_on_integer/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,none,
                                   {t_integer,{0,127}},
                                   none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,1049},
          [{tr,{x,0},
               {t_union,none,none,
                        {t_integer,{0,127}},
                        none,
                        {t_bitstring,8,false}}},
           {literal,<<"abc">>}]}.
    {'catch',{y,2},{f,1043}}.
    {move,{literal,<<0:1>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",1891}]}.
    {call,1,{f,1052}}. % do_select_on_integer/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,none,
                                   {t_integer,{0,127}},
                                   none,
                                   {t_bitstring,8,false}}}]}}.
  {label,1043}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,1048},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,1},{f,1044}}.
    {move,{literal,<<1:1>>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r25_SUITE.erl",1892}]}.
    {call,1,{f,1052}}. % do_select_on_integer/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,none,
                                   {t_integer,{0,127}},
                                   none,
                                   {t_bitstring,8,false}}}]}}.
  {label,1044}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,1047},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,0},{f,1045}}.
    {move,{literal,<<0,0>>},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r25_SUITE.erl",1893}]}.
    {call,1,{f,1052}}. % do_select_on_integer/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,none,
                                   {t_integer,{0,127}},
                                   none,
                                   {t_bitstring,8,false}}}]}}.
  {label,1045}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1046},[{x,0},2,{atom,'EXIT'}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,3}.
    return.
  {label,1046}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1893}]}.
    {badmatch,{x,0}}.
  {label,1047}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",1892}]}.
    {badmatch,{x,0}}.
  {label,1048}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",1891}]}.
    {badmatch,{x,0}}.
  {label,1049}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",1889}]}.
    {badmatch,{x,0}}.
  {label,1050}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",1888}]}.
    {badmatch,{x,0}}.


{function, do_select_on_integer, 1, 1052}.
  {label,1051}.
    {line,[{location,"bs_match_r25_SUITE.erl",1897}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_select_on_integer},1}.
  {label,1052}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,1051},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,1},
           1,
           {field_flags,[{anno,[1897,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,1053},[{x,2},{integer,0}]}.
    {test,bs_get_integer2,
          {f,1051},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,7},
           1,
           {field_flags,[{anno,[1897,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1051},[{x,1},0]}.
    {move,{x,2},{x,0}}.
    return.
  {label,1053}.
    {test,bs_skip_bits2,
          {f,1051},
          [{x,1},
           {integer,7},
           1,
           {field_flags,[{anno,[1899,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,1051},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {atom,all},
           8,
           {field_flags,[{anno,[1899,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {move,{x,1},{x,0}}.
    return.


{function, map_and_binary, 1, 1055}.
  {label,1054}.
    {line,[{location,"bs_match_r25_SUITE.erl",1905}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,map_and_binary},1}.
  {label,1055}.
    {allocate,0,0}.
    {move,{literal,<<"10:37am">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1906}]}.
    {call,1,{f,1060}}. % do_map_and_binary/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_bitstring,8,false},
                                     2 => {t_bitstring,8,false},
                                     3 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
          {f,1058},
          [{tr,{x,0},
               {t_tuple,3,true,
                        #{1 => {t_bitstring,8,false},
                          2 => {t_bitstring,8,false},
                          3 => {t_bitstring,8,false}}}},
           {literal,{<<"10">>,<<"37">>,<<"am">>}}]}.
    {move,{literal,#{time => "noon"}},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1908}]}.
    {call,1,{f,1060}}. % do_map_and_binary/1
    {'%',{var_info,{x,0},[{type,{t_tuple,2,false,#{}}}]}}.
    {test,is_tagged_tuple,
          {f,1057},
          [{tr,{x,0},{t_tuple,2,false,#{}}},2,{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,1057},[{x,1},{literal,#{time => "noon"}}]}.
    {move,{literal,#{hour => 8,min => 42}},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1910}]}.
    {call,1,{f,1060}}. % do_map_and_binary/1
    {'%',{var_info,{x,0},[{type,{t_tuple,2,false,#{}}}]}}.
    {test,test_arity,{f,1056},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1056},[{x,1},{integer,8}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,1056},[{x,1},{integer,42}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,{f,1056},[{x,1},{literal,#{hour => 8,min => 42}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1056}.
    {badmatch,{x,0}}.
  {label,1057}.
    {line,[{location,"bs_match_r25_SUITE.erl",1908}]}.
    {badmatch,{x,0}}.
  {label,1058}.
    {line,[{location,"bs_match_r25_SUITE.erl",1906}]}.
    {badmatch,{x,0}}.


{function, do_map_and_binary, 1, 1060}.
  {label,1059}.
    {line,[{location,"bs_match_r25_SUITE.erl",1913}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_map_and_binary},1}.
  {label,1060}.
    {'%',{var_info,{x,0},[{type,other}]}}.
    {test,bs_start_match3,{f,1061},1,[{x,0}],{x,1}}.
    {test,bs_get_binary2,
          {f,1059},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,2},
           8,
           {field_flags,[{anno,[1913,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_match_string,{f,1059},[{x,1},8,{string,<<":">>}]}.
    {test,bs_get_binary2,
          {f,1059},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,2},
           8,
           {field_flags,[{anno,[1913,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,1059},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {atom,all},
           8,
           {field_flags,[{anno,[1913,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test_heap,4,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3},{x,1}]}}.
    return.
  {label,1061}.
    {test,is_map,{f,1059},[{tr,{x,0},other}]}.
    {test,has_map_fields,{f,1062},{x,0},{list,[{atom,time}]}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,ok},{x,0}]}}.
    return.
  {label,1062}.
    {get_map_elements,{f,1059},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{atom,min},{x,2},{atom,hour},{x,1}]}}.
    {test_heap,4,3}.
    {put_tuple2,{x,0},{list,[{x,1},{x,2},{x,0}]}}.
    return.


{function, unsafe_branch_caching, 1, 1064}.
  {label,1063}.
    {line,[{location,"bs_match_r25_SUITE.erl",1924}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,unsafe_branch_caching},1}.
  {label,1064}.
    {allocate,0,0}.
    {move,{literal,<<42,1>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1925}]}.
    {call,1,{f,1071}}. % do_unsafe_branch_caching/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,1069},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<>>}]}.
    {move,{literal,<<42,2>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1926}]}.
    {call,1,{f,1071}}. % do_unsafe_branch_caching/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,1068},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<>>}]}.
    {move,{literal,<<42,3>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1927}]}.
    {call,1,{f,1071}}. % do_unsafe_branch_caching/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,1067},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<>>}]}.
    {move,{literal,<<42,3,17,18>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1928}]}.
    {call,1,{f,1071}}. % do_unsafe_branch_caching/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,1066},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<17,18>>}]}.
    {move,{literal,<<1,3,42,2>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1929}]}.
    {call,1,{f,1071}}. % do_unsafe_branch_caching/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,1065},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1065}.
    {badmatch,{x,0}}.
  {label,1066}.
    {line,[{location,"bs_match_r25_SUITE.erl",1928}]}.
    {badmatch,{x,0}}.
  {label,1067}.
    {line,[{location,"bs_match_r25_SUITE.erl",1927}]}.
    {badmatch,{x,0}}.
  {label,1068}.
    {line,[{location,"bs_match_r25_SUITE.erl",1926}]}.
    {badmatch,{x,0}}.
  {label,1069}.
    {line,[{location,"bs_match_r25_SUITE.erl",1925}]}.
    {badmatch,{x,0}}.


{function, do_unsafe_branch_caching, 1, 1071}.
  {label,1070}.
    {line,[{location,"bs_match_r25_SUITE.erl",1933}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_unsafe_branch_caching},1}.
  {label,1071}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,1070},
          2,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1933,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{x,0},3}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,1075},
          3,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1934,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_tail,{x,1},{x,0},4}.
    {select_val,{tr,{x,3},{t_integer,{0,255}}},
                {f,1073},
                {list,[{integer,1},{f,1072},{integer,2},{f,1072}]}}.
  {label,1072}.
    {move,{literal,<<>>},{x,0}}.
  {label,1073}.
    {test,is_eq_exact,{f,1074},[{tr,{x,2},{t_integer,{0,255}}},{integer,1}]}.
    {call_only,1,{f,1071}}. % do_unsafe_branch_caching/1
  {label,1074}.
    return.
  {label,1075}.
    {line,[{location,"bs_match_r25_SUITE.erl",1934}]}.
    {badmatch,{x,0}}.


{function, bad_literals, 1, 1077}.
  {label,1076}.
    {line,[{location,"bs_match_r25_SUITE.erl",1946}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bad_literals},1}.
  {label,1077}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{integer,1114116},{x,1}}.
    {move,{integer,1114108},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1954}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {test_heap,10,1}.
    {put_list,{integer,2},{x,0},{x,0}}.
    {put_list,{integer,1},{x,0},{x,0}}.
    {put_list,{integer,0},{x,0},{x,0}}.
    {put_list,{integer,-1},{x,0},{x,0}}.
    {put_list,{integer,-100},{x,0},{x,0}}.
    {call,1,{f,1793}}. % '-bad_literals/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_cons,any,nil}}]}}.
    {move,{x,0},{y,1}}.
    {move,{integer,8},{x,1}}.
    {move,{integer,-2},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1951}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{y,1},{x,1}}.
    {init_yregs,{list,[{y,1}]}}.
    {call,2,{f,1786}}. % '-bad_literals/1-lc$^1/1-1-'/2
    {'%',{var_info,{x,0},[{type,{t_cons,any,nil}}]}}.
    {move,{x,0},{y,1}}.
    {move,{integer,8},{x,1}}.
    {move,{integer,-8},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1949}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{y,1},{x,1}}.
    {init_yregs,{list,[{y,1}]}}.
    {call,2,{f,1779}}. % '-bad_literals/1-lc$^3/1-3-'/2
    {'%',{var_info,{x,0},[{type,{t_cons,any,nil}}]}}.
    {move,{x,0},{y,1}}.
    {move,{atom,bs_match_r25_SUITE_bad_literals},{x,0}}.
    {line,[]}.
    {call_ext,1,{extfunc,merl,term,1}}.
    {test_heap,41,1}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{literal,[{tree,atom,{attr,1955,[],none},module}]},{x,0},{x,0}}.
    {put_list,{y,1},{literal,[{atom,1959,ok}]},{x,1}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,nil,{x,1},{x,1}}.
    {put_list,nil,{x,1},{x,1}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,clause},
                       {literal,{attr,1957,[],none}},
                       {x,1}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{literal,[{tree,atom,{attr,1957,[],none},f}]},{x,1},{x,1}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,function},
                       {literal,{attr,1957,[],none}},
                       {x,1}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{literal,{attribute,1956,export,[{f,0}]}},{x,1},{x,1}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,attribute},
                       {literal,{attr,1955,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},{x,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1955}]}.
    {call_ext,1,{extfunc,merl,tree,1}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1960}]}.
    {call_ext,1,{extfunc,merl,print,1}}.
    {move,{atom,bs_match_r25_SUITE},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1961}]}.
    {call_ext,1,{extfunc,test_lib,opt_opts,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1962}]}.
    {call_ext,2,{extfunc,merl,compile_and_load,2}}.
    {test,is_tagged_tuple,{f,1082},[{x,0},2,{atom,ok}]}.
    {line,[{location,"bs_match_r25_SUITE.erl",1963}]}.
    {call_ext,0,{extfunc,bs_match_r25_SUITE_bad_literals,f,0}}.
    {'catch',{y,1},{f,1078}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1965}]}.
    {call,0,{f,1084}}. % bad_literals_1/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1078}.
    {catch_end,{y,1}}.
    {test,is_eq_exact,{f,1081},[{x,0},{literal,{'EXIT',<<"*">>}}]}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",1966}]}.
    {call,1,{f,1086}}. % bad_literals_2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[no_match]}}]}}.
    {move,{integer,8},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",1968}]}.
    {call,1,{f,1684}}. % id/1
    {'catch',{y,0},{f,1079}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",1969}]}.
    {badmatch,{literal,<<"ÿ">>}}.
  {label,1079}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1080},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1080},[{x,1}]}.
    {test,test_arity,{f,1080},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,1080},[{x,1},2,{atom,badmatch}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,1080}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1969}]}.
    {badmatch,{x,0}}.
  {label,1081}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",1965}]}.
    {badmatch,{x,0}}.
  {label,1082}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",1962}]}.
    {badmatch,{x,0}}.


{function, bad_literals_1, 0, 1084}.
  {label,1083}.
    {line,[{location,"bs_match_r25_SUITE.erl",1972}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bad_literals_1},0}.
  {label,1084}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1976}]}.
    {call_ext_only,1,{extfunc,erlang,exit,1}}.


{function, bad_literals_2, 1, 1086}.
  {label,1085}.
    {line,[{location,"bs_match_r25_SUITE.erl",1982}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bad_literals_2},1}.
  {label,1086}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {move,{atom,no_match},{x,0}}.
    return.


{function, signed_lit_match, 2, 1088}.
  {label,1087}.
    {line,[{location,"bs_match_r25_SUITE.erl",1989}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,signed_lit_match},2}.
  {label,1088}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,3}}}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1990}]}.
    {bs_create_bin,{f,0},
                   0,2,1,
                   {x,2},
                   {list,[{atom,integer},
                          1,1,nil,
                          {x,0},
                          {tr,{x,1},{t_integer,{0,3}}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,2}}.
    {test,bs_get_integer2,
          {f,1089},
          3,
          [{tr,{x,2},{t_bs_context,1}},
           {tr,{x,1},{t_integer,{0,3}}},
           1,
           {field_flags,[{anno,[1991,{file,"bs_match_r25_SUITE.erl"}]},
                         signed,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1089},[{x,2},0]}.
    {test,is_eq_exact,{f,1089},[{tr,{x,3},{t_integer,{-4,3}}},{x,0}]}.
    {allocate,3,2}.
    {init_yregs,{list,[{y,0}]}}.
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
              {literal,[[{tree,atom,{attr,1992,[],none},signed}]]},
              {x,1}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,binary_field},
                       {literal,{attr,1992,[],none}},
                       {x,1}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,binary},
                       {literal,{attr,1992,[],none}},
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
                       {literal,{attr,1992,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,binary},
                       {literal,{attr,1992,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,match_expr},
                       {literal,{attr,1992,[],none}},
                       {x,0}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1992}]}.
    {call_ext_last,1,{extfunc,merl,tree,1},3}.
  {label,1089}.
    {allocate,3,2}.
    {init_yregs,{list,[{y,0}]}}.
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
                       {literal,{attr,1994,[],none}},
                       {x,1}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,binary},
                       {literal,{attr,1994,[],none}},
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
              {literal,[[{tree,atom,{attr,1996,[],none},signed}]]},
              {x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,binary_field},
                       {literal,{attr,1996,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,binary},
                       {literal,{attr,1996,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},
              {literal,[[],
                        [{call,1998,
                               {remote,1998,{atom,1998,ct},{atom,1998,fail}},
                               [{atom,1998,should_not_match}]}]]},
              {x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,clause},
                       {literal,{attr,1996,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},
              {literal,[{clause,2000,[{var,2000,'_'}],[],[{atom,2002,ok}]}]},
              {x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,case_expr},
                       {literal,{attr,1994,[],none}},
                       {x,0}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1994}]}.
    {call_ext_last,1,{extfunc,merl,tree,1},3}.


{function, unsigned_lit_match, 2, 1091}.
  {label,1090}.
    {line,[{location,"bs_match_r25_SUITE.erl",2002}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,unsigned_lit_match},2}.
  {label,1091}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,2}}}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2003}]}.
    {bs_create_bin,{f,0},
                   0,2,1,
                   {x,2},
                   {list,[{atom,integer},
                          1,1,nil,
                          {x,0},
                          {tr,{x,1},{t_integer,{0,2}}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,2}}.
    {test,bs_get_integer2,
          {f,1092},
          3,
          [{tr,{x,2},{t_bs_context,1}},
           {tr,{x,1},{t_integer,{0,2}}},
           1,
           {field_flags,[{anno,[2004,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1092},[{x,2},0]}.
    {test,is_eq_exact,{f,1092},[{tr,{x,3},{t_integer,{0,3}}},{x,0}]}.
    {allocate,3,2}.
    {init_yregs,{list,[{y,0}]}}.
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
                       {literal,{attr,2005,[],none}},
                       {x,1}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,binary},
                       {literal,{attr,2005,[],none}},
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
                       {literal,{attr,2005,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,binary},
                       {literal,{attr,2005,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,match_expr},
                       {literal,{attr,2005,[],none}},
                       {x,0}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2005}]}.
    {call_ext_last,1,{extfunc,merl,tree,1},3}.
  {label,1092}.
    {allocate,3,2}.
    {init_yregs,{list,[{y,0}]}}.
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
                       {literal,{attr,2007,[],none}},
                       {x,1}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,binary},
                       {literal,{attr,2007,[],none}},
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
              {literal,[[{tree,atom,{attr,2009,[],none},unsigned}]]},
              {x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,binary_field},
                       {literal,{attr,2009,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,binary},
                       {literal,{attr,2009,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},
              {literal,[[],
                        [{call,2011,
                               {remote,2011,{atom,2011,ct},{atom,2011,fail}},
                               [{atom,2011,should_not_match}]}]]},
              {x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,clause},
                       {literal,{attr,2009,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},
              {literal,[{clause,2013,[{var,2013,'_'}],[],[{atom,2015,ok}]}]},
              {x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,case_expr},
                       {literal,{attr,2007,[],none}},
                       {x,0}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2007}]}.
    {call_ext_last,1,{extfunc,merl,tree,1},3}.


{function, unicode_match, 1, 1094}.
  {label,1093}.
    {line,[{location,"bs_match_r25_SUITE.erl",2015}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,unicode_match},1}.
  {label,1094}.
    {allocate,5,1}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{x,0},{y,3}}.
    {'try',{y,4},{f,1095}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2016}]}.
    {bs_create_bin,{f,0},
                   0,1,8,
                   {x,0},
                   {list,[{atom,utf8},1,0,nil,{x,0},{atom,undefined}]}}.
    {try_end,{y,4}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_utf8,
          {f,1097},
          2,
          [{tr,{x,1},{t_bs_context,8}},
           {field_flags,[{anno,[2017,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1097},[{x,1},0]}.
    {test,is_eq_exact,{f,1097},[{tr,{x,2},{t_integer,{0,1114111}}},{y,3}]}.
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
    {put_list,{x,1},{literal,[[{tree,atom,{attr,2018,[],none},utf8}]]},{x,1}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,binary_field},
                       {literal,{attr,2018,[],none}},
                       {x,1}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,binary},
                       {literal,{attr,2018,[],none}},
                       {x,1}]}}.
    {put_list,{y,2},nil,{x,2}}.
    {put_list,{x,2},{literal,[[{tree,atom,{attr,2018,[],none},utf8}]]},{x,2}}.
    {put_tuple2,{x,2},
                {list,[{atom,template},
                       {atom,binary_field},
                       {literal,{attr,2018,[],none}},
                       {x,2}]}}.
    {put_list,{x,2},nil,{x,2}}.
    {put_list,{x,2},nil,{x,2}}.
    {put_tuple2,{x,2},
                {list,[{atom,template},
                       {atom,binary},
                       {literal,{attr,2018,[],none}},
                       {x,2}]}}.
    {put_list,{x,2},nil,{x,2}}.
    {put_list,{x,2},nil,{x,2}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},{x,2},{x,1}}.
    {put_list,{y,1},nil,{x,2}}.
    {put_list,{x,2},{literal,[[{tree,atom,{attr,2020,[],none},utf16}]]},{x,2}}.
    {put_tuple2,{x,2},
                {list,[{atom,template},
                       {atom,binary_field},
                       {literal,{attr,2020,[],none}},
                       {x,2}]}}.
    {put_list,{x,2},nil,{x,2}}.
    {put_list,{x,2},nil,{x,2}}.
    {put_tuple2,{x,2},
                {list,[{atom,template},
                       {atom,binary},
                       {literal,{attr,2020,[],none}},
                       {x,2}]}}.
    {put_list,{y,0},nil,{x,3}}.
    {put_list,{x,3},{literal,[[{tree,atom,{attr,2020,[],none},utf16}]]},{x,3}}.
    {put_tuple2,{x,3},
                {list,[{atom,template},
                       {atom,binary_field},
                       {literal,{attr,2020,[],none}},
                       {x,3}]}}.
    {put_list,{x,3},nil,{x,3}}.
    {put_list,{x,3},nil,{x,3}}.
    {put_tuple2,{x,3},
                {list,[{atom,template},
                       {atom,binary},
                       {literal,{attr,2020,[],none}},
                       {x,3}]}}.
    {put_list,{x,3},nil,{x,3}}.
    {put_list,{x,3},nil,{x,3}}.
    {put_list,{x,2},nil,{x,2}}.
    {put_list,{x,2},{x,3},{x,2}}.
    {put_list,{y,3},nil,{x,3}}.
    {put_list,{x,3},{literal,[[{tree,atom,{attr,2022,[],none},utf32}]]},{x,3}}.
    {put_tuple2,{x,3},
                {list,[{atom,template},
                       {atom,binary_field},
                       {literal,{attr,2022,[],none}},
                       {x,3}]}}.
    {put_list,{x,3},nil,{x,3}}.
    {put_list,{x,3},nil,{x,3}}.
    {put_tuple2,{x,3},
                {list,[{atom,template},
                       {atom,binary},
                       {literal,{attr,2022,[],none}},
                       {x,3}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},{literal,[[{tree,atom,{attr,2022,[],none},utf32}]]},{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,binary_field},
                       {literal,{attr,2022,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,binary},
                       {literal,{attr,2022,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,3},nil,{x,3}}.
    {put_list,{x,3},{x,0},{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,match_expr},
                       {literal,{attr,2022,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_tuple2,{x,2},
                {list,[{atom,template},
                       {atom,match_expr},
                       {literal,{attr,2020,[],none}},
                       {x,2}]}}.
    {put_list,{x,2},{x,0},{x,0}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,match_expr},
                       {literal,{attr,2018,[],none}},
                       {x,1}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",2018}]}.
    {call_ext_last,1,{extfunc,merl,tree,1},5}.
  {label,1095}.
    {try_case,{y,4}}.
    {test,is_eq_exact,
          {f,1096},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,error}]}.
    {test,is_eq_exact,{f,1096},[{x,1},{atom,badarg}]}.
    {move,{y,3},{x,0}}.
    {line,[{scope,[0]}]}.
    {call_ext,1,{extfunc,merl,term,1}}.
    {move,{x,0},{y,4}}.
    {move,{y,3},{x,0}}.
    {trim,4,1}.
    {call_ext,1,{extfunc,merl,term,1}}.
    {test_heap,67,1}.
    {put_list,{y,0},nil,{x,1}}.
    {put_list,{x,1},{literal,[[{integer,2023,32}]]},{x,1}}.
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
                       {literal,{attr,2023,[],none}},
                       {x,1}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,binary},
                       {literal,{attr,2023,[],none}},
                       {x,1}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},{literal,[[{tree,atom,{attr,2025,[],none},utf32}]]},{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,binary_field},
                       {literal,{attr,2025,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,binary},
                       {literal,{attr,2025,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},
              {literal,[[],
                        [{call,2027,
                               {remote,2027,{atom,2027,ct},{atom,2027,fail}},
                               [{atom,2027,should_not_match}]}]]},
              {x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,clause},
                       {literal,{attr,2025,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},
              {literal,[{clause,2029,[{var,2029,'_'}],[],[{atom,2031,ok}]}]},
              {x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,case_expr},
                       {literal,{attr,2023,[],none}},
                       {x,0}]}}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",2023}]}.
    {call_ext_last,1,{extfunc,merl,tree,1},1}.
  {label,1096}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.
  {label,1097}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",2016}]}.
    {try_case_end,{x,0}}.


{function, good_literals, 1, 1099}.
  {label,1098}.
    {line,[{location,"bs_match_r25_SUITE.erl",2033}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,good_literals},1}.
  {label,1099}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{integer,64},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2034}]}.
    {call,1,{f,1684}}. % id/1
    {line,[{location,"bs_match_r25_SUITE.erl",2037}]}.
    {bs_create_bin,{f,0},
                   0,1,1,
                   {x,1},
                   {list,[{atom,integer},1,1,nil,{integer,42},{x,0}]}}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {call,1,{f,1684}}. % id/1
    {test,bs_start_match3,{f,1102},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,1102},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {y,0},
           1,
           {field_flags,[{anno,[2037,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,1102},
          [{tr,{x,2},{t_integer,{0,'+inf'}}},{integer,42}]}.
    {test,bs_test_tail2,{f,1102},[{x,1},0]}.
    {line,[{location,"bs_match_r25_SUITE.erl",2038}]}.
    {bs_create_bin,{f,0},
                   0,0,1,
                   {x,0},
                   {list,[{atom,float},1,1,nil,{integer,42},{y,0}]}}.
    {call,1,{f,1684}}. % id/1
    {test,bs_start_match3,{f,1101},1,[{x,0}],{x,1}}.
    {test,bs_get_float2,
          {f,1101},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {y,0},
           1,
           {field_flags,[{anno,[2038,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,1101},[{tr,{x,2},{t_float,any}},{float,42.0}]}.
    {test,bs_test_tail2,{f,1101},[{x,1},0]}.
    {trim,1,0}.
    {move,{literal,<<"Êþ¾ï">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2041}]}.
    {call,1,{f,1684}}. % id/1
    {test,is_eq_exact,{f,1100},[{x,0},{literal,<<"Êþ¾ï">>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1100}.
    {badmatch,{x,0}}.
  {label,1101}.
    {line,[{location,"bs_match_r25_SUITE.erl",2038}]}.
    {badmatch,{x,0}}.
  {label,1102}.
    {line,[{location,"bs_match_r25_SUITE.erl",2037}]}.
    {badmatch,{x,0}}.


{function, constant_propagation, 1, 1104}.
  {label,1103}.
    {line,[{location,"bs_match_r25_SUITE.erl",2044}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,constant_propagation},1}.
  {label,1104}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,<<5>>},{x,1}}.
    {move,{atom,a},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2045}]}.
    {call,2,{f,1111}}. % constant_propagation_a/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,1109},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<5>>}]}.
    {'catch',{y,0},{f,1105}}.
    {move,{literal,<<5>>},{x,1}}.
    {move,{atom,b},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",2046}]}.
    {call,2,{f,1111}}. % constant_propagation_a/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1105}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1108},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1108},[{x,1}]}.
    {test,test_arity,{f,1108},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1108},[{x,1},{literal,{case_clause,b}}]}.
    {move,{literal,<<1,2>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",2047}]}.
    {call,1,{f,1115}}. % constant_propagation_b/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,65535}}}]}}.
    {test,is_eq_exact,
          {f,1107},
          [{tr,{x,0},{t_integer,{0,65535}}},{integer,258}]}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",2048}]}.
    {call,0,{f,1118}}. % constant_propagation_c/0
    {'%',{var_info,{x,0},
                   [{type,{t_fun,1,
                                 {'-constant_propagation_c/0-fun-0-',1},
                                 {t_integer,{0,65535}}}}]}}.
    {move,{literal,<<1,3>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",2049}]}.
    {call,1,{f,1776}}. % '-constant_propagation_c/0-fun-0-'/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,65535}}}]}}.
    {test,is_eq_exact,
          {f,1106},
          [{tr,{x,0},{t_integer,{0,65535}}},{integer,259}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,1106}.
    {badmatch,{x,0}}.
  {label,1107}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",2047}]}.
    {badmatch,{x,0}}.
  {label,1108}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",2046}]}.
    {badmatch,{x,0}}.
  {label,1109}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",2045}]}.
    {badmatch,{x,0}}.


{function, constant_propagation_a, 2, 1111}.
  {label,1110}.
    {line,[{location,"bs_match_r25_SUITE.erl",2052}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,constant_propagation_a},2}.
  {label,1111}.
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,{f,1113},[{tr,{x,0},{t_atom,[a,b]}},{atom,a}]}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,0}}.
    {test,bs_get_integer2,
          {f,1112},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2056,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,1112},[{tr,{x,2},{t_integer,{0,255}}},{integer,5}]}.
    {test,bs_test_tail2,{f,1112},[{x,0},0]}.
    {move,{x,1},{x,0}}.
    return.
  {label,1112}.
    {line,[{location,"bs_match_r25_SUITE.erl",2056}]}.
    {badmatch,{x,1}}.
  {label,1113}.
    {line,[{location,"bs_match_r25_SUITE.erl",2053}]}.
    {case_end,{atom,b}}.


{function, constant_propagation_b, 1, 1115}.
  {label,1114}.
    {line,[{location,"bs_match_r25_SUITE.erl",2058}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,constant_propagation_b},1}.
  {label,1115}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,1116},
          2,
          [{tr,{x,1},{t_bs_context,16}},
           {integer,16},
           1,
           {field_flags,[{anno,[2060,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1116},[{x,1},0]}.
    {move,{x,2},{x,0}}.
    return.
  {label,1116}.
    {line,[{location,"bs_match_r25_SUITE.erl",2060}]}.
    {badmatch,{x,0}}.


{function, constant_propagation_c, 0, 1118}.
  {label,1117}.
    {line,[{location,"bs_match_r25_SUITE.erl",2063}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,constant_propagation_c},0}.
  {label,1118}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1776},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_integer,{0,65535}}}]}}.
    return.


{function, parse_xml, 1, 1120}.
  {label,1119}.
    {line,[{location,"bs_match_r25_SUITE.erl",2070}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,parse_xml},1}.
  {label,1120}.
    {allocate,0,0}.
    {move,{literal,<<"<?xmlX">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2071}]}.
    {call,1,{f,1124}}. % do_parse_xml/1
    {test,is_eq_exact,{f,1122},[{x,0},{literal,<<"<?xmlX">>}]}.
    {move,{literal,<<"<?xml ">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2072}]}.
    {call,1,{f,1124}}. % do_parse_xml/1
    {test,is_eq_exact,{f,1121},[{x,0},{literal,<<" ">>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1121}.
    {badmatch,{x,0}}.
  {label,1122}.
    {line,[{location,"bs_match_r25_SUITE.erl",2071}]}.
    {badmatch,{x,0}}.


{function, do_parse_xml, 1, 1124}.
  {label,1123}.
    {line,[{location,"bs_match_r25_SUITE.erl",2075}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_parse_xml},1}.
  {label,1124}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_match_string,{f,1123},[{x,1},40,{string,<<"<?xml">>}]}.
    {allocate,2,2}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {bs_get_tail,{x,1},{y,0},2}.
    {move,{y,0},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2079}]}.
    {call,1,{f,1128}}. % is_next_char_whitespace/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1125},[{x,0},{atom,true}]}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2083}]}.
    {call,1,{f,1684}}. % id/1
    {jump,{f,1126}}.
  {label,1125}.
    {move,{y,1},{x,0}}.
  {label,1126}.
    {call_last,1,{f,1684},2}. % id/1


{function, is_next_char_whitespace, 1, 1128}.
  {label,1127}.
    {line,[{location,"bs_match_r25_SUITE.erl",2087}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,is_next_char_whitespace},1}.
  {label,1128}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_utf8,
          {f,1127},
          2,
          [{tr,{x,1},{t_bs_context,8}},
           {field_flags,[{anno,[2087,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {bif,'=:=',{f,0},[{tr,{x,1},{t_integer,{0,1114111}}},{integer,32}],{x,0}}.
    return.


{function, get_payload, 1, 1130}.
  {label,1129}.
    {line,[{location,"bs_match_r25_SUITE.erl",2094}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,get_payload},1}.
  {label,1130}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,{ext_header,17,<<0,0,0,0,13,117>>}},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2095}]}.
    {call,1,{f,1135}}. % do_get_payload/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {test,is_eq_exact,
          {f,1133},
          [{tr,{x,0},{t_bitstring,16,false}},{literal,<<0,0,0,0,13,117>>}]}.
    {'catch',{y,0},{f,1131}}.
    {move,{literal,{ext_header,17,undefined}},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",2096}]}.
    {call,1,{f,1135}}. % do_get_payload/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
  {label,1131}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1132},[{x,0},2,{atom,'EXIT'}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,1132}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",2096}]}.
    {badmatch,{x,0}}.
  {label,1133}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",2095}]}.
    {badmatch,{x,0}}.


{function, do_get_payload, 1, 1135}.
  {label,1134}.
    {line,[{location,"bs_match_r25_SUITE.erl",2099}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_get_payload},1}.
  {label,1135}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,3,true,
                     #{1 => {t_atom,[ext_header]},
                       2 => {t_integer,{17,17}},
                       3 =>
                           {t_union,
                               {t_atom,[undefined]},
                               none,none,none,
                               {t_bitstring,16,false}}}}}]}}.
    {get_tuple_element,{x,0},2,{x,0}}.
    {test,bs_start_match3,{f,1136},1,[{x,0}],{x,1}}.
    {test,bs_test_tail2,{f,1136},[{x,1},48]}.
    return.
  {label,1136}.
    {line,[{location,"bs_match_r25_SUITE.erl",2102}]}.
    {badmatch,{x,0}}.


{function, escape, 1, 1138}.
  {label,1137}.
    {line,[{location,"bs_match_r25_SUITE.erl",2105}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,escape},1}.
  {label,1138}.
    {allocate,0,0}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2106}]}.
    {call,2,{f,1145}}. % escape/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,1143},
          [{tr,{x,0},{t_integer,{0,'+inf'}}},{integer,0}]}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<128>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2107}]}.
    {call,2,{f,1145}}. % escape/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,1142},
          [{tr,{x,0},{t_integer,{0,'+inf'}}},{integer,1}]}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<128,255>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2108}]}.
    {call,2,{f,1145}}. % escape/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,1141},
          [{tr,{x,0},{t_integer,{0,'+inf'}}},{integer,2}]}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2109}]}.
    {call,2,{f,1145}}. % escape/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,1140},
          [{tr,{x,0},{t_integer,{0,'+inf'}}},{integer,42}]}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<"*\b">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2110}]}.
    {call,2,{f,1145}}. % escape/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,1139},
          [{tr,{x,0},{t_integer,{0,'+inf'}}},{integer,50}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1139}.
    {badmatch,{x,0}}.
  {label,1140}.
    {line,[{location,"bs_match_r25_SUITE.erl",2109}]}.
    {badmatch,{x,0}}.
  {label,1141}.
    {line,[{location,"bs_match_r25_SUITE.erl",2108}]}.
    {badmatch,{x,0}}.
  {label,1142}.
    {line,[{location,"bs_match_r25_SUITE.erl",2107}]}.
    {badmatch,{x,0}}.
  {label,1143}.
    {line,[{location,"bs_match_r25_SUITE.erl",2106}]}.
    {badmatch,{x,0}}.


{function, escape, 2, 1145}.
  {label,1144}.
    {line,[{location,"bs_match_r25_SUITE.erl",2113}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,escape},2}.
  {label,1145}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,'+inf'}}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,1147},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2113,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,0},{x,0},3}.
    {test,is_ge,{f,1146},[{tr,{x,2},{t_integer,{0,255}}},{integer,127}]}.
    {line,[{location,"bs_match_r25_SUITE.erl",2114}]}.
    {gc_bif,'+',{f,0},2,[{tr,{x,1},{t_integer,{0,'+inf'}}},{integer,1}],{x,1}}.
    {call_only,2,{f,1145}}. % escape/2
  {label,1146}.
    {line,[{location,"bs_match_r25_SUITE.erl",2116}]}.
    {gc_bif,'+',
            {f,0},
            3,
            [{tr,{x,1},{t_integer,{0,'+inf'}}},{tr,{x,2},{t_integer,{0,126}}}],
            {x,1}}.
    {call_only,2,{f,1145}}. % escape/2
  {label,1147}.
    {move,{x,1},{x,0}}.
    return.


{function, num_slots_different, 1, 1149}.
  {label,1148}.
    {line,[{location,"bs_match_r25_SUITE.erl",2121}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,num_slots_different},1}.
  {label,1149}.
    {allocate,4,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3}]}}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",2129}]}.
    {call,1,{f,1772}}. % '-num_slots_different/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {'catch',{y,3},{f,1150}}.
    {move,{literal,<<"default">>},{x,1}}.
    {move,{literal,<<"Remove">>},{x,2}}.
    {move,{literal,<<"d">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2131}]}.
    {call,3,{f,1159}}. % lgettext/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[ok]},
                                     2 => {t_bitstring,8,false}}}}]}}.
  {label,1150}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,1157},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,2},{f,1151}}.
    {move,{literal,<<"default">>},{x,1}}.
    {move,{literal,<<"Remove">>},{x,2}}.
    {move,nil,{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_r25_SUITE.erl",2132}]}.
    {call,3,{f,1159}}. % lgettext/3
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1151}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,1156},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,1},{f,1152}}.
    {move,{literal,<<"def">>},{x,1}}.
    {move,{literal,<<"Remove">>},{x,2}}.
    {move,{literal,<<"de">>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r25_SUITE.erl",2133}]}.
    {call,3,{f,1159}}. % lgettext/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[ok]},
                                     2 => {t_bitstring,8,false}}}}]}}.
  {label,1152}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,1155},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,0},{f,1153}}.
    {move,{literal,<<"default">>},{x,1}}.
    {move,{literal,<<"Res">>},{x,2}}.
    {move,{literal,<<"de">>},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r25_SUITE.erl",2134}]}.
    {call,3,{f,1159}}. % lgettext/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[ok]},
                                     2 => {t_bitstring,8,false}}}}]}}.
  {label,1153}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1154},[{x,0},2,{atom,'EXIT'}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,4}.
    return.
  {label,1154}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",2134}]}.
    {badmatch,{x,0}}.
  {label,1155}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",2133}]}.
    {badmatch,{x,0}}.
  {label,1156}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",2132}]}.
    {badmatch,{x,0}}.
  {label,1157}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2131}]}.
    {badmatch,{x,0}}.


{function, lgettext, 3, 1159}.
  {label,1158}.
    {line,[{location,"bs_match_r25_SUITE.erl",2138}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,lgettext},3}.
  {label,1159}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,nil,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,8,false}}]}}.
    {test,bs_start_match3,{f,1158},3,[{x,0}],{x,3}}.
    {test,bs_match_string,{f,1158},[{x,3},16,{string,<<"de">>}]}.
    {test,bs_test_tail2,{f,1158},[{x,3},0]}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,3}}.
    {test,bs_get_integer2,
          {f,1158},
          4,
          [{tr,{x,3},{t_bs_context,8}},
           {integer,16},
           1,
           {field_flags,[{anno,[2138,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {select_val,{tr,{x,4},{t_integer,{0,65535}}},
                {f,1158},
                {list,[{integer,25701},{f,1162},{integer,28257},{f,1160}]}}.
  {label,1160}.
    {test,bs_match_string,{f,1158},[{x,3},64,{string,<<"vigation">>}]}.
    {test,bs_test_tail2,{f,1158},[{x,3},0]}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,3}}.
    {test,bs_match_string,{f,1158},[{x,3},16,{string,<<"Re">>}]}.
    {test,bs_get_integer2,
          {f,1158},
          4,
          [{tr,{x,3},{t_bs_context,8}},
           {integer,16},
           1,
           {field_flags,[{anno,[2148,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {select_val,{tr,{x,4},{t_integer,{0,65535}}},
                {f,1158},
                {list,[{integer,29551},{f,1161},{integer,29557},{f,1163}]}}.
  {label,1161}.
    {test,bs_match_string,{f,1158},[{x,3},40,{string,<<"urces">>}]}.
    {test,bs_test_tail2,{f,1158},[{x,3},0]}.
    {move,{literal,{ok,<<"Ressourcen">>}},{x,0}}.
    return.
  {label,1162}.
    {test,bs_match_string,{f,1158},[{x,3},40,{string,<<"fault">>}]}.
    {test,bs_test_tail2,{f,1158},[{x,3},0]}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,3}}.
    {test,bs_match_string,{f,1158},[{x,3},16,{string,<<"Re">>}]}.
    {test,bs_get_integer2,
          {f,1158},
          4,
          [{tr,{x,3},{t_bs_context,8}},
           {integer,16},
           1,
           {field_flags,[{anno,[2138,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {select_val,{tr,{x,4},{t_integer,{0,65535}}},
                {f,1158},
                {list,[{integer,28015},
                       {f,1165},
                       {integer,29541},
                       {f,1164},
                       {integer,29557},
                       {f,1163}]}}.
  {label,1163}.
    {test,bs_match_string,{f,1158},[{x,3},24,{string,<<"lts">>}]}.
    {test,bs_test_tail2,{f,1158},[{x,3},0]}.
    {move,{literal,{ok,<<"Ergebnisse">>}},{x,0}}.
    return.
  {label,1164}.
    {test,bs_match_string,{f,1158},[{x,3},48,{string,<<"rvatio">>}]}.
    {test,bs_test_tail2,{f,1158},[{x,3},0]}.
    {move,{literal,{ok,<<"a">>}},{x,0}}.
    return.
  {label,1165}.
    {test,bs_match_string,{f,1158},[{x,3},16,{string,<<"ve">>}]}.
    {bs_get_position,{x,3},{x,4},4}.
    {test,bs_match_string,{f,1168},[{x,3},48,{string,<<" from ">>}]}.
    {test,bs_get_integer2,
          {f,1158},
          5,
          [{tr,{x,3},{t_bs_context,8}},
           {integer,16},
           1,
           {field_flags,[{anno,[2140,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {select_val,{tr,{x,5},{t_integer,{0,65535}}},
                {f,1168},
                {list,[{integer,27753},{f,1167},{integer,29800},{f,1166}]}}.
  {label,1166}.
    {test,bs_match_string,{f,1158},[{x,3},48,{string,<<"e list">>}]}.
    {test,bs_test_tail2,{f,1168},[{x,3},0]}.
    {move,{literal,{ok,<<"a">>}},{x,0}}.
    return.
  {label,1167}.
    {test,bs_match_string,{f,1158},[{x,3},16,{string,<<"st">>}]}.
    {test,bs_test_tail2,{f,1168},[{x,3},0]}.
    {move,{literal,{ok,<<"a">>}},{x,0}}.
    return.
  {label,1168}.
    {bs_set_position,{x,3},{x,4}}.
    {test,bs_test_tail2,{f,1158},[{x,3},0]}.
    {move,{literal,{ok,<<"a">>}},{x,0}}.
    return.


{function, beam_bsm, 1, 1170}.
  {label,1169}.
    {line,[{location,"bs_match_r25_SUITE.erl",2154}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,beam_bsm},1}.
  {label,1170}.
    {allocate,0,0}.
    {move,{literal,[1,0,1,1]},{x,1}}.
    {move,{literal,<<11:4>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2155}]}.
    {call,2,{f,1181}}. % check_bitstring_list/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1179},[{x,0},{atom,true}]}.
    {move,{literal,[0]},{x,1}}.
    {move,{literal,<<11:4>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2156}]}.
    {call,2,{f,1181}}. % check_bitstring_list/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1171},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,1171}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2158}]}.
    {call,1,{f,1185}}. % bsm_validate_scheme/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1178},[{x,0},{atom,true}]}.
    {move,{literal,<<5,10>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2159}]}.
    {call,1,{f,1185}}. % bsm_validate_scheme/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1177},[{x,0},{atom,true}]}.
    {move,{literal,<<5,10,11,12>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2160}]}.
    {call,1,{f,1185}}. % bsm_validate_scheme/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1172},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,1172}.
    {move,nil,{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2161}]}.
    {call,1,{f,1185}}. % bsm_validate_scheme/1
    {'%',{var_info,{x,0},[{type,{t_atom,[true]}}]}}.
    {move,{literal,[5,10]},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2162}]}.
    {call,1,{f,1185}}. % bsm_validate_scheme/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1176},[{x,0},{atom,true}]}.
    {move,{literal,[5,6,7]},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2163}]}.
    {call,1,{f,1185}}. % bsm_validate_scheme/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1173},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,1173}.
    {move,nil,{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2165}]}.
    {call,2,{f,1194}}. % bsm_must_save_and_not_save/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,1175},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<1,2,3>>}]}.
    {test_heap,{alloc,[{words,4},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1770},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_number,any}}]}}.
    {put_list,{x,0},nil,{x,1}}.
    {put_list,{x,0},{x,1},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2167}]}.
    {call,2,{f,1194}}. % bsm_must_save_and_not_save/2
    {'%',{var_info,{x,0},
                   [{type,{t_cons,{t_number,any},{t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,1174},
          [{tr,{x,0},{t_cons,{t_number,any},{t_bitstring,8,false}}},
           {literal,[2,4|<<3>>]}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1174}.
    {badmatch,{x,0}}.
  {label,1175}.
    {line,[{location,"bs_match_r25_SUITE.erl",2165}]}.
    {badmatch,{x,0}}.
  {label,1176}.
    {line,[{location,"bs_match_r25_SUITE.erl",2162}]}.
    {badmatch,{atom,false}}.
  {label,1177}.
    {line,[{location,"bs_match_r25_SUITE.erl",2159}]}.
    {badmatch,{atom,false}}.
  {label,1178}.
    {line,[{location,"bs_match_r25_SUITE.erl",2158}]}.
    {badmatch,{atom,false}}.
  {label,1179}.
    {line,[{location,"bs_match_r25_SUITE.erl",2155}]}.
    {badmatch,{atom,false}}.


{function, check_bitstring_list, 2, 1181}.
  {label,1180}.
    {line,[{location,"bs_match_r25_SUITE.erl",2171}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,check_bitstring_list},2}.
  {label,1181}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{0,1}},nil}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {test,bs_get_integer2,
          {f,1182},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,1},
           1,
           {field_flags,[{anno,[2171,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_tail,{x,0},{x,4},4}.
    {test,is_nonempty_list,{f,1182},[{x,1}]}.
    {get_list,{x,1},{x,5},{x,6}}.
    {test,is_eq_exact,
          {f,1182},
          [{tr,{x,5},{t_integer,{0,1}}},{tr,{x,3},{t_integer,{0,1}}}]}.
    {move,{x,6},{x,1}}.
    {move,{x,4},{x,0}}.
    {call_only,2,{f,1181}}. % check_bitstring_list/2
  {label,1182}.
    {bs_set_position,{x,0},{x,2}}.
    {test,bs_test_tail2,{f,1183},[{x,0},0]}.
    {bif,'=:=',{f,0},[{tr,{x,1},{t_list,{t_integer,{0,1}},nil}},nil],{x,0}}.
    return.
  {label,1183}.
    {move,{atom,false},{x,0}}.
    return.


{function, bsm_validate_scheme, 1, 1185}.
  {label,1184}.
    {line,[{location,"bs_match_r25_SUITE.erl",2178}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bsm_validate_scheme},1}.
  {label,1185}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,
                                   {t_list,{t_integer,{5,10}},nil},
                                   none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,bs_start_match3,{f,1187},1,[{x,0}],{x,1}}.
    {test,bs_test_tail2,{f,1186},[{x,1},0]}.
    {move,{atom,true},{x,0}}.
    return.
  {label,1186}.
    {test,bs_get_integer2,
          {f,1184},
          2,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2185,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {allocate,1,3}.
    {init_yregs,{list,[{y,0}]}}.
    {bs_get_tail,{x,1},{y,0},3}.
    {move,{x,2},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2186}]}.
    {call,1,{f,1192}}. % bsm_is_scheme/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1189},[{x,0},{atom,true}]}.
    {jump,{f,1188}}.
  {label,1187}.
    {test,is_nonempty_list,{f,1190},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{x,0},{y,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2180}]}.
    {call,1,{f,1192}}. % bsm_is_scheme/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1189},[{x,0},{atom,true}]}.
  {label,1188}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,1185},1}. % bsm_validate_scheme/1
  {label,1189}.
    {move,{atom,false},{x,0}}.
    {deallocate,1}.
    return.
  {label,1190}.
    {move,{atom,true},{x,0}}.
    return.


{function, bsm_is_scheme, 1, 1192}.
  {label,1191}.
    {line,[{location,"bs_match_r25_SUITE.erl",2191}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bsm_is_scheme},1}.
  {label,1192}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2192}]}.
    {gc_bif,'rem',{f,0},1,[{tr,{x,0},{t_integer,{0,255}}},{integer,5}],{x,0}}.
    {bif,'=:=',{f,0},[{tr,{x,0},{t_integer,{0,4}}},{integer,0}],{x,0}}.
    return.


{function, bsm_must_save_and_not_save, 2, 1194}.
  {label,1193}.
    {line,[{location,"bs_match_r25_SUITE.erl",2195}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bsm_must_save_and_not_save},2}.
  {label,1194}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_list,
                     {t_fun,1,{'-beam_bsm/1-fun-0-',1},{t_number,any}},
                     nil}}]}}.
    {test,is_nil,
          {f,1195},
          [{tr,{x,1},
               {t_list,{t_fun,1,{'-beam_bsm/1-fun-0-',1},{t_number,any}},
                       nil}}]}.
    return.
  {label,1195}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,2}}.
    {test,bs_get_integer2,
          {f,1193},
          3,
          [{tr,{x,2},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2197,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {allocate,2,4}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {bs_get_tail,{x,2},{y,1},4}.
    {get_tl,{x,1},{y,0}}.
    {move,{x,3},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2198}]}.
    {call,1,{f,1770}}. % '-beam_bsm/1-fun-0-'/1
    {'%',{var_info,{x,0},[{type,{t_number,any}}]}}.
    {swap,{y,1},{x,0}}.
    {move,{y,0},{x,1}}.
    {trim,1,1}.
    {call,2,{f,1194}}. % bsm_must_save_and_not_save/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,
                     {t_cons,{t_number,any},{t_bitstring,8,false}},
                     none,none,
                     {t_bitstring,8,false}}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.


{function, guard, 1, 1197}.
  {label,1196}.
    {line,[{location,"bs_match_r25_SUITE.erl",2202}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,guard},1}.
  {label,1197}.
    {allocate,0,0}.
    {move,{literal,{a,b}},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2203}]}.
    {call,1,{f,1684}}. % id/1
    {move,{literal,{1,2,3}},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2204}]}.
    {call,2,{f,1199}}. % guard_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,#{}},{x,1}}.
    {move,{literal,<<"*">>},{x,0}}.
    {call_last,2,{f,1201},0}. % guard_2/2


{function, guard_1, 2, 1199}.
  {label,1198}.
    {line,[{location,"bs_match_r25_SUITE.erl",2209}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,guard_1},2}.
  {label,1199}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,{1,1}},
                                     2 => {t_integer,{2,2}},
                                     3 => {t_integer,{3,3}}}}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,2}}.
    {test,bs_get_integer2,
          {f,1198},
          3,
          [{tr,{x,2},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2209,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,1198},
          4,
          [{tr,{x,2},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2209,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_integer2,
          {f,1198},
          5,
          [{tr,{x,2},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2209,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_test_tail2,{f,1198},[{x,2},0]}.
    {test_heap,4,6}.
    {put_tuple2,{x,2},{list,[{x,3},{x,4},{x,5}]}}.
    {test,is_eq_exact,
          {f,1198},
          [{tr,{x,2},
               {t_tuple,3,true,
                        #{1 => {t_integer,{0,255}},
                          2 => {t_integer,{0,255}},
                          3 => {t_integer,{0,255}}}}},
           {literal,{1,2,3}}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, guard_2, 2, 1201}.
  {label,1200}.
    {line,[{location,"bs_match_r25_SUITE.erl",2213}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,guard_2},2}.
  {label,1201}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_map,none,none}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,2}}.
    {test,bs_test_tail2,{f,1200},[{x,2},8]}.
    {put_map_assoc,{f,0},{literal,#{}},{x,2},2,{list,[nil,{literal,#{}}]}}.
    {test,is_eq_exact,
          {f,1200},
          [{tr,{x,2},{t_map,nil,{t_map,none,none}}},{literal,#{[] => #{}}}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, is_ascii, 1, 1203}.
  {label,1202}.
    {line,[{location,"bs_match_r25_SUITE.erl",2216}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,is_ascii},1}.
  {label,1203}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2217}]}.
    {call,1,{f,1212}}. % do_is_ascii/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1210},[{x,0},{atom,true}]}.
    {move,{literal,<<"string">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",2218}]}.
    {call,1,{f,1212}}. % do_is_ascii/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1209},[{x,0},{atom,true}]}.
    {move,{literal,<<208,128>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",2219}]}.
    {call,1,{f,1212}}. % do_is_ascii/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1204},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,1204}.
    {'catch',{y,1},{f,1205}}.
    {move,{literal,<<65,0:3>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",2220}]}.
    {call,1,{f,1212}}. % do_is_ascii/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
  {label,1205}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,1208},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1208},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,0},{f,1206}}.
    {move,{literal,<<128,0:3>>},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r25_SUITE.erl",2221}]}.
    {call,1,{f,1212}}. % do_is_ascii/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
  {label,1206}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1207},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1207},[{x,1},2,{atom,function_clause}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,1207}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",2221}]}.
    {badmatch,{x,0}}.
  {label,1208}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",2220}]}.
    {badmatch,{x,0}}.
  {label,1209}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",2218}]}.
    {badmatch,{atom,false}}.
  {label,1210}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",2217}]}.
    {badmatch,{atom,false}}.


{function, do_is_ascii, 1, 1212}.
  {label,1211}.
    {line,[{location,"bs_match_r25_SUITE.erl",2224}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_is_ascii},1}.
  {label,1212}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_test_tail2,{f,1213},[{x,1},0]}.
    {move,{atom,true},{x,0}}.
    return.
  {label,1213}.
    {test,bs_get_integer2,
          {f,1211},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2226,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,1211},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {atom,all},
           8,
           {field_flags,[{anno,[2226,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,is_ge,{f,1214},[{tr,{x,2},{t_integer,{0,255}}},{integer,128}]}.
    {move,{atom,false},{x,0}}.
    return.
  {label,1214}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,1212}}. % do_is_ascii/1


{function, non_opt_eq, 1, 1216}.
  {label,1215}.
    {line,[{location,"bs_match_r25_SUITE.erl",2233}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,non_opt_eq},1}.
  {label,1216}.
    {allocate,0,0}.
    {move,{literal,<<>>},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2234}]}.
    {call,2,{f,1220}}. % non_opt_eq/2
    {'%',{var_info,{x,0},[{type,{t_atom,[true]}}]}}.
    {move,{literal,<<"a">>},{x,1}}.
    {move,{literal,"a"},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2235}]}.
    {call,2,{f,1220}}. % non_opt_eq/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1218},[{x,0},{atom,true}]}.
    {move,{literal,<<"b">>},{x,1}}.
    {move,{literal,"a"},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2236}]}.
    {call,2,{f,1220}}. % non_opt_eq/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1217},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,1217}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1218}.
    {line,[{location,"bs_match_r25_SUITE.erl",2235}]}.
    {badmatch,{atom,false}}.


{function, non_opt_eq, 2, 1220}.
  {label,1219}.
    {line,[{location,"bs_match_r25_SUITE.erl",2242}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,non_opt_eq},2}.
  {label,1220}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{97,97}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,2}}.
    {bs_get_position,{x,2},{x,3},3}.
    {test,bs_get_integer2,
          {f,1222},
          4,
          [{tr,{x,2},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2242,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {bs_get_tail,{x,2},{x,5},5}.
    {test,is_nonempty_list,{f,1222},[{x,0}]}.
    {get_tl,{x,0},{x,0}}.
    {test,is_eq_exact,{f,1221},[{tr,{x,4},{t_integer,{0,255}}},{integer,97}]}.
    {move,{x,5},{x,1}}.
    {call_only,2,{f,1220}}. % non_opt_eq/2
  {label,1221}.
    {move,{atom,false},{x,0}}.
    return.
  {label,1222}.
    {bs_set_position,{x,2},{x,3}}.
    {test,bs_test_tail2,{f,1219},[{x,2},0]}.
    {test,is_nil,{f,1219},[{tr,{x,0},{t_list,{t_integer,{97,97}},nil}}]}.
    {move,{atom,true},{x,0}}.
    return.


{function, erl_689, 1, 1224}.
  {label,1223}.
    {line,[{location,"bs_match_r25_SUITE.erl",2251}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,erl_689},1}.
  {label,1224}.
    {allocate,0,0}.
    {move,{atom,bs_match_r25_SUITE},{x,1}}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2252}]}.
    {call,2,{f,1230}}. % do_erl_689_1/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 =>
                           {t_tuple,3,true,
                               #{1 => {t_integer,{0,65535}},
                                 2 => {t_integer,{0,255}},
                                 3 => {t_integer,{0,255}}}},
                       2 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
        {f,1228},
        [{tr,{x,0},
             {t_tuple,2,true,
                 #{1 =>
                       {t_tuple,3,true,
                           #{1 => {t_integer,{0,65535}},
                             2 => {t_integer,{0,255}},
                             3 => {t_integer,{0,255}}}},
                   2 => {t_bitstring,8,false}}}},
         {literal,{{0,0,0},<<>>}}]}.
    {move,{atom,bs_match_r25_SUITE},{x,1}}.
    {move,{literal,<<4,226,7,8,7>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2253}]}.
    {call,2,{f,1230}}. % do_erl_689_1/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 =>
                           {t_tuple,3,true,
                               #{1 => {t_integer,{0,65535}},
                                 2 => {t_integer,{0,255}},
                                 3 => {t_integer,{0,255}}}},
                       2 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
        {f,1227},
        [{tr,{x,0},
             {t_tuple,2,true,
                 #{1 =>
                       {t_tuple,3,true,
                           #{1 => {t_integer,{0,65535}},
                             2 => {t_integer,{0,255}},
                             3 => {t_integer,{0,255}}}},
                   2 => {t_bitstring,8,false}}}},
         {literal,{{2018,8,7},<<>>}}]}.
    {move,{literal,<<0>>},{x,1}}.
    {move,{atom,bs_match_r25_SUITE},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2254}]}.
    {call,2,{f,1233}}. % do_erl_689_2/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 =>
                           {t_tuple,3,true,
                               #{1 => {t_integer,{0,65535}},
                                 2 => {t_integer,{0,255}},
                                 3 => {t_integer,{0,255}}}},
                       2 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
        {f,1226},
        [{tr,{x,0},
             {t_tuple,2,true,
                 #{1 =>
                       {t_tuple,3,true,
                           #{1 => {t_integer,{0,65535}},
                             2 => {t_integer,{0,255}},
                             3 => {t_integer,{0,255}}}},
                   2 => {t_bitstring,8,false}}}},
         {literal,{{0,0,0},<<>>}}]}.
    {move,{literal,<<4,226,7,8,7>>},{x,1}}.
    {move,{atom,bs_match_r25_SUITE},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2255}]}.
    {call,2,{f,1233}}. % do_erl_689_2/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 =>
                           {t_tuple,3,true,
                               #{1 => {t_integer,{0,65535}},
                                 2 => {t_integer,{0,255}},
                                 3 => {t_integer,{0,255}}}},
                       2 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
        {f,1225},
        [{tr,{x,0},
             {t_tuple,2,true,
                 #{1 =>
                       {t_tuple,3,true,
                           #{1 => {t_integer,{0,65535}},
                             2 => {t_integer,{0,255}},
                             3 => {t_integer,{0,255}}}},
                   2 => {t_bitstring,8,false}}}},
         {literal,{{2018,8,7},<<>>}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1225}.
    {badmatch,{x,0}}.
  {label,1226}.
    {line,[{location,"bs_match_r25_SUITE.erl",2254}]}.
    {badmatch,{x,0}}.
  {label,1227}.
    {line,[{location,"bs_match_r25_SUITE.erl",2253}]}.
    {badmatch,{x,0}}.
  {label,1228}.
    {line,[{location,"bs_match_r25_SUITE.erl",2252}]}.
    {badmatch,{x,0}}.


{function, do_erl_689_1, 2, 1230}.
  {label,1229}.
    {line,[{location,"bs_match_r25_SUITE.erl",2258}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_erl_689_1},2}.
  {label,1230}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[bs_match_r25_SUITE]}}]}}.
    {allocate,1,2}.
    {move,{x,0},{y,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2259}]}.
    {call,2,{f,1236}}. % do_erl_689_1a/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 =>
                           {t_tuple,3,true,
                               #{1 => {t_integer,{0,65535}},
                                 2 => {t_integer,{0,255}},
                                 3 => {t_integer,{0,255}}}},
                       2 => {t_bitstring,8,false}}}}]}}.
    {swap,{y,0},{x,0}}.
    {move,{atom,bs_match_r25_SUITE},{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2260}]}.
    {call,2,{f,1240}}. % do_erl_689_1b/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 =>
                           {t_tuple,3,true,
                               #{1 => {t_integer,{0,65535}},
                                 2 => {t_integer,{0,255}},
                                 3 => {t_integer,{0,255}}}},
                       2 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
        {f,1231},
        [{tr,{x,0},
             {t_tuple,2,true,
                 #{1 =>
                       {t_tuple,3,true,
                           #{1 => {t_integer,{0,65535}},
                             2 => {t_integer,{0,255}},
                             3 => {t_integer,{0,255}}}},
                   2 => {t_bitstring,8,false}}}},
         {tr,{y,0},
             {t_tuple,2,true,
                 #{1 =>
                       {t_tuple,3,true,
                           #{1 => {t_integer,{0,65535}},
                             2 => {t_integer,{0,255}},
                             3 => {t_integer,{0,255}}}},
                   2 => {t_bitstring,8,false}}}}]}.
    {deallocate,1}.
    return.
  {label,1231}.
    {badmatch,{x,0}}.


{function, do_erl_689_2, 2, 1233}.
  {label,1232}.
    {line,[{location,"bs_match_r25_SUITE.erl",2262}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_erl_689_2},2}.
  {label,1233}.
    {'%',{var_info,{x,0},[{type,{t_atom,[bs_match_r25_SUITE]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2263}]}.
    {call,2,{f,1244}}. % do_erl_689_2a/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 =>
                           {t_tuple,3,true,
                               #{1 => {t_integer,{0,65535}},
                                 2 => {t_integer,{0,255}},
                                 3 => {t_integer,{0,255}}}},
                       2 => {t_bitstring,8,false}}}}]}}.
    {move,{y,0},{x,1}}.
    {move,{x,0},{y,0}}.
    {move,{atom,bs_match_r25_SUITE},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2264}]}.
    {call,2,{f,1248}}. % do_erl_689_2b/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 =>
                           {t_tuple,3,true,
                               #{1 => {t_integer,{0,65535}},
                                 2 => {t_integer,{0,255}},
                                 3 => {t_integer,{0,255}}}},
                       2 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
        {f,1234},
        [{tr,{x,0},
             {t_tuple,2,true,
                 #{1 =>
                       {t_tuple,3,true,
                           #{1 => {t_integer,{0,65535}},
                             2 => {t_integer,{0,255}},
                             3 => {t_integer,{0,255}}}},
                   2 => {t_bitstring,8,false}}}},
         {tr,{y,0},
             {t_tuple,2,true,
                 #{1 =>
                       {t_tuple,3,true,
                           #{1 => {t_integer,{0,65535}},
                             2 => {t_integer,{0,255}},
                             3 => {t_integer,{0,255}}}},
                   2 => {t_bitstring,8,false}}}}]}.
    {deallocate,1}.
    return.
  {label,1234}.
    {badmatch,{x,0}}.


{function, do_erl_689_1a, 2, 1236}.
  {label,1235}.
    {line,[{location,"bs_match_r25_SUITE.erl",2266}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_erl_689_1a},2}.
  {label,1236}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[bs_match_r25_SUITE]}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,2}}.
    {test,bs_get_integer2,
          {f,1235},
          3,
          [{tr,{x,2},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2266,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_tail,{x,2},{x,0},4}.
    {test,is_eq_exact,{f,1237},[{tr,{x,3},{t_integer,{0,255}}},{integer,0}]}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{literal,{0,0,0}},{x,0}]}}.
    return.
  {label,1237}.
    {bs_start_match4,{atom,no_fail},4,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,1238},
          4,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,16},
           1,
           {field_flags,[{anno,[2272,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,little]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1238},
          4,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2272,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_integer2,
          {f,1238},
          5,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2272,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {bs_get_tail,{x,1},{x,1},6}.
    {test,is_eq_exact,{f,1238},[{tr,{x,3},{t_integer,{1,255}}},{integer,4}]}.
    {test_heap,7,6}.
    {put_tuple2,{x,0},{list,[{x,2},{x,4},{x,5}]}}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    return.
  {label,1238}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,0},{x,3}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2267}]}.
    {case_end,{x,0}}.


{function, do_erl_689_1b, 2, 1240}.
  {label,1239}.
    {line,[{location,"bs_match_r25_SUITE.erl",2276}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_erl_689_1b},2}.
  {label,1240}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[bs_match_r25_SUITE]}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,2}}.
    {test,bs_get_integer2,
          {f,1239},
          3,
          [{tr,{x,2},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2276,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_tail,{x,2},{x,0},4}.
    {test,is_eq_exact,{f,1241},[{tr,{x,3},{t_integer,{0,255}}},{integer,0}]}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2281}]}.
    {call,1,{f,1684}}. % id/1
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{literal,{0,0,0}},{y,0}]}}.
    {deallocate,1}.
    return.
  {label,1241}.
    {bs_start_match4,{atom,no_fail},4,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,1242},
          4,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,16},
           1,
           {field_flags,[{anno,[2283,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,little]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1242},
          4,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2283,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_integer2,
          {f,1242},
          5,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2283,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {bs_get_tail,{x,1},{x,1},6}.
    {test,is_eq_exact,{f,1242},[{tr,{x,3},{t_integer,{1,255}}},{integer,4}]}.
    {allocate,4,6}.
    {move,{x,1},{y,0}}.
    {move,{x,5},{y,1}}.
    {move,{x,4},{y,2}}.
    {move,{x,2},{y,3}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2284}]}.
    {call,1,{f,1684}}. % id/1
    {test_heap,7,0}.
    {put_tuple2,{x,0},{list,[{y,3},{y,2},{y,1}]}}.
    {put_tuple2,{x,0},{list,[{x,0},{y,0}]}}.
    {deallocate,4}.
    return.
  {label,1242}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,0},{x,3}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2277}]}.
    {case_end,{x,0}}.


{function, do_erl_689_2a, 2, 1244}.
  {label,1243}.
    {line,[{location,"bs_match_r25_SUITE.erl",2288}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_erl_689_2a},2}.
  {label,1244}.
    {'%',{var_info,{x,0},[{type,{t_atom,[bs_match_r25_SUITE]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,2}}.
    {test,bs_get_integer2,
          {f,1243},
          3,
          [{tr,{x,2},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2288,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_tail,{x,2},{x,0},4}.
    {test,is_eq_exact,{f,1245},[{tr,{x,3},{t_integer,{0,255}}},{integer,0}]}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{literal,{0,0,0}},{x,0}]}}.
    return.
  {label,1245}.
    {bs_start_match4,{atom,no_fail},4,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,1246},
          4,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,16},
           1,
           {field_flags,[{anno,[2294,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,little]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1246},
          4,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2294,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_integer2,
          {f,1246},
          5,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2294,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {bs_get_tail,{x,1},{x,1},6}.
    {test,is_eq_exact,{f,1246},[{tr,{x,3},{t_integer,{1,255}}},{integer,4}]}.
    {test_heap,7,6}.
    {put_tuple2,{x,0},{list,[{x,2},{x,4},{x,5}]}}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    return.
  {label,1246}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,3},{x,0}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2289}]}.
    {case_end,{x,0}}.


{function, do_erl_689_2b, 2, 1248}.
  {label,1247}.
    {line,[{location,"bs_match_r25_SUITE.erl",2298}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_erl_689_2b},2}.
  {label,1248}.
    {'%',{var_info,{x,0},[{type,{t_atom,[bs_match_r25_SUITE]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,2}}.
    {test,bs_get_integer2,
          {f,1247},
          3,
          [{tr,{x,2},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2298,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_tail,{x,2},{x,0},4}.
    {test,is_eq_exact,{f,1249},[{tr,{x,3},{t_integer,{0,255}}},{integer,0}]}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2303}]}.
    {call,1,{f,1684}}. % id/1
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{literal,{0,0,0}},{y,0}]}}.
    {deallocate,1}.
    return.
  {label,1249}.
    {bs_start_match4,{atom,no_fail},4,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,1250},
          4,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,16},
           1,
           {field_flags,[{anno,[2305,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,little]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1250},
          4,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2305,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_integer2,
          {f,1250},
          5,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2305,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {bs_get_tail,{x,1},{x,1},6}.
    {test,is_eq_exact,{f,1250},[{tr,{x,3},{t_integer,{1,255}}},{integer,4}]}.
    {allocate,4,6}.
    {move,{x,1},{y,0}}.
    {move,{x,5},{y,1}}.
    {move,{x,4},{y,2}}.
    {move,{x,2},{y,3}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2306}]}.
    {call,1,{f,1684}}. % id/1
    {test_heap,7,0}.
    {put_tuple2,{x,0},{list,[{y,3},{y,2},{y,1}]}}.
    {put_tuple2,{x,0},{list,[{x,0},{y,0}]}}.
    {deallocate,4}.
    return.
  {label,1250}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,3},{x,0}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2299}]}.
    {case_end,{x,0}}.


{function, bs_start_match2_defs, 1, 1252}.
  {label,1251}.
    {line,[{location,"bs_match_r25_SUITE.erl",2312}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bs_start_match2_defs},1}.
  {label,1252}.
    {allocate,0,0}.
    {move,{literal,<<"hello">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2313}]}.
    {call,1,{f,1256}}. % api_url/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,1,true,#{1 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
          {f,1254},
          [{tr,{x,0},{t_tuple,1,true,#{1 => {t_bitstring,8,false}}}},
           {literal,{<<"http://127.0.0.1:1234/vsaas/hello">>}}]}.
    {move,{literal,{https,"hello"}},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2314}]}.
    {call,1,{f,1256}}. % api_url/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,1,true,
                     #{1 => {t_cons,{t_integer,{46,118}},nil}}}}]}}.
    {test,is_eq_exact,
          {f,1253},
          [{tr,{x,0},
               {t_tuple,1,true,#{1 => {t_cons,{t_integer,{46,118}},nil}}}},
           {literal,{"https://127.0.0.1:4321/vsaas/hello"}}]}.
    {deallocate,0}.
    return.
  {label,1253}.
    {badmatch,{x,0}}.
  {label,1254}.
    {line,[{location,"bs_match_r25_SUITE.erl",2313}]}.
    {badmatch,{x,0}}.


{function, api_url, 1, 1256}.
  {label,1255}.
    {line,[{location,"bs_match_r25_SUITE.erl",2316}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,api_url},1}.
  {label,1256}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_atom,[https]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[https]},
                             2 => {t_cons,{t_integer,{101,111}},nil}}}}],
                     {t_bitstring,8,false}}}]}}.
    {test,is_bitstr,
        {f,1257},
        [{tr,{x,0},
             {t_union,none,none,none,
                 [{{2,{t_atom,[https]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[https]},
                         2 => {t_cons,{t_integer,{101,111}},nil}}}}],
                 {t_bitstring,8,false}}}]}.
    {line,[{location,"bs_match_r25_SUITE.erl",2318}]}.
    {bs_create_bin,{f,0},
                   2,1,8,
                   {x,0},
                   {list,[{atom,string},
                          0,8,nil,
                          {string,<<"http://127.0.0.1:1234/vsaas/">>},
                          {integer,28},
                          {atom,binary},
                          2,8,nil,
                          {tr,{x,0},{t_bitstring,8,false}},
                          {atom,all}]}}.
    {put_tuple2,{x,0},{list,[{x,0}]}}.
    return.
  {label,1257}.
    {allocate,0,1}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {move,{literal,"https://127.0.0.1:4321/vsaas/"},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2319}]}.
    {call_ext,2,{extfunc,erlang,'++',2}}.
    {test_heap,2,1}.
    {put_tuple2,{x,0},{list,[{x,0}]}}.
    {deallocate,0}.
    return.


{function, check, 2, 1259}.
  {label,1258}.
    {line,[{location,"bs_match_r25_SUITE.erl",2322}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,check},2}.
  {label,1259}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_fun,0,any,
                     {t_union,
                         {t_atom,[empty,ok,tail]},
                         {t_list,{t_integer,{0,4294967295}},nil},
                         {t_integer,{0,'+inf'}},
                         {t_tuple,3,true,
                             #{1 => {t_integer,{0,255}},
                               2 => {t_bitstring,8,false},
                               3 => {t_bitstring,8,false}}},
                         none}}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_union,
                     {t_atom,[ok,tail]},
                     {t_cons,{t_integer,{1,32}},nil},
                     {t_integer,{7,32}},
                     [{{3,{t_integer,{2,2}}},
                       {t_tuple,3,true,
                           #{1 => {t_integer,{2,2}},
                             2 => {t_bitstring,16,false},
                             3 => {t_bitstring,16,false}}}}],
                     none}}]}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2323}]}.
    {call_fun2,
        {atom,safe},
        0,
        {tr,{x,0},
            {t_fun,0,any,
                {t_union,
                    {t_atom,[empty,ok,tail]},
                    {t_list,{t_integer,{0,4294967295}},nil},
                    {t_integer,{0,'+inf'}},
                    {t_tuple,3,true,
                        #{1 => {t_integer,{0,255}},
                          2 => {t_bitstring,8,false},
                          3 => {t_bitstring,8,false}}},
                    none}}}}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[empty,ok,tail]},
                     {t_list,{t_integer,{0,4294967295}},nil},
                     {t_integer,{0,'+inf'}},
                     {t_tuple,3,true,
                         #{1 => {t_integer,{0,255}},
                           2 => {t_bitstring,8,false},
                           3 => {t_bitstring,8,false}}},
                     none}}]}}.
    {test,is_eq_exact,
          {f,1260},
          [{tr,{x,0},
               {t_union,{t_atom,[empty,ok,tail]},
                        {t_list,{t_integer,{0,4294967295}},nil},
                        {t_integer,{0,'+inf'}},
                        {t_tuple,3,true,
                                 #{1 => {t_integer,{0,255}},
                                   2 => {t_bitstring,8,false},
                                   3 => {t_bitstring,8,false}}},
                        none}},
           {tr,{y,0},
               {t_union,{t_atom,[ok,tail]},
                        {t_cons,{t_integer,{1,32}},nil},
                        {t_integer,{7,32}},
                        [{{3,{t_integer,{2,2}}},
                          {t_tuple,3,true,
                                   #{1 => {t_integer,{2,2}},
                                     2 => {t_bitstring,16,false},
                                     3 => {t_bitstring,16,false}}}}],
                        none}}]}.
    {deallocate,1}.
    return.
  {label,1260}.
    {badmatch,{x,0}}.


{function, expression_before_match, 1, 1262}.
  {label,1261}.
    {line,[{location,"bs_match_r25_SUITE.erl",2327}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,expression_before_match},1}.
  {label,1262}.
    {test,is_list,{f,1261},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<0,1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2328}]}.
    {call,1,{f,1684}}. % id/1
    {test,bs_start_match3,{f,1264},1,[{x,0}],{x,1}}.
    {test,bs_skip_bits2,
          {f,1264},
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[2328,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,1264},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {atom,all},
           8,
           {field_flags,[{anno,[2328,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2329}]}.
    {call,1,{f,1266}}. % expression_before_match_1/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{2 =>
                           {t_union,
                               {t_atom,[baz]},
                               none,none,none,
                               {t_bitstring,8,false}}}}}]}}.
    {test,is_eq_exact,
        {f,1263},
        [{tr,{x,0},
             {t_tuple,2,true,
                 #{2 =>
                       {t_union,
                           {t_atom,[baz]},
                           none,none,none,
                           {t_bitstring,8,false}}}}},
         {literal,{1,<<2,3>>}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1263}.
    {badmatch,{x,0}}.
  {label,1264}.
    {line,[{location,"bs_match_r25_SUITE.erl",2328}]}.
    {badmatch,{x,0}}.


{function, expression_before_match_1, 1, 1266}.
  {label,1265}.
    {line,[{location,"bs_match_r25_SUITE.erl",2332}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,expression_before_match_1},1}.
  {label,1266}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2333}]}.
    {call,1,{f,1684}}. % id/1
    {bs_start_match4,{atom,no_fail},1,{y,0},{x,1}}.
    {test,bs_match_string,{f,1267},[{x,1},8,{string,<<1>>}]}.
    {bs_get_tail,{x,1},{x,1},2}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {deallocate,1}.
    return.
  {label,1267}.
    {test,bs_test_tail2,{f,1268},[{x,1},0]}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{x,0},{atom,baz}]}}.
    {deallocate,1}.
    return.
  {label,1268}.
    {line,[{location,"bs_match_r25_SUITE.erl",2334}]}.
    {case_end,{y,0}}.


{function, restore_on_call, 1, 1270}.
  {label,1269}.
    {line,[{location,"bs_match_r25_SUITE.erl",2340}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,restore_on_call},1}.
  {label,1270}.
    {test,is_list,{f,1269},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<0,1,2>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2341}]}.
    {call,1,{f,1273}}. % restore_on_call_plain/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<0,120>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2342}]}.
    {call,1,{f,1280}}. % restore_on_call_match/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,1271},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<"x">>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1271}.
    {badmatch,{x,0}}.


{function, restore_on_call_plain, 1, 1273}.
  {label,1272}.
    {line,[{location,"bs_match_r25_SUITE.erl",2345}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,restore_on_call_plain},1}.
  {label,1273}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_match_string,{f,1272},[{x,1},8,{string,<<0>>}]}.
    {allocate,1,2}.
    {init_yregs,{list,[{y,0}]}}.
    {bs_get_tail,{x,1},{y,0},2}.
    {move,{y,0},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2346}]}.
    {call,1,{f,1277}}. % restore_on_call_plain_1/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,1275},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<2>>}]}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_match_r25_SUITE.erl",2348}]}.
    {call,1,{f,1277}}. % restore_on_call_plain_1/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,1274},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<2>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1274}.
    {badmatch,{x,0}}.
  {label,1275}.
    {line,[{location,"bs_match_r25_SUITE.erl",2346}]}.
    {badmatch,{x,0}}.


{function, restore_on_call_plain_1, 1, 1277}.
  {label,1276}.
    {line,[{location,"bs_match_r25_SUITE.erl",2351}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,restore_on_call_plain_1},1}.
  {label,1277}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_match_string,{f,1278},[{x,1},8,{string,<<1>>}]}.
    {bs_get_tail,{x,1},{x,0},2}.
    return.
  {label,1278}.
    return.


{function, restore_on_call_match, 1, 1280}.
  {label,1279}.
    {line,[{location,"bs_match_r25_SUITE.erl",2356}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,restore_on_call_match},1}.
  {label,1280}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_match_string,{f,1279},[{x,1},8,{string,<<0>>}]}.
    {allocate,1,2}.
    {init_yregs,{list,[{y,0}]}}.
    {bs_get_tail,{x,1},{y,0},2}.
    {move,{y,0},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2357}]}.
    {call,1,{f,1283}}. % skip_until_zero/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[not_found]},
                     none,none,
                     [{{2,{t_atom,[skipped]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[skipped]},
                             2 => {t_bitstring,8,false}}}}],
                     none}}]}}.
    {test,is_tuple,
          {f,1281},
          [{tr,{x,0},
               {t_union,{t_atom,[not_found]},
                        none,none,
                        [{{2,{t_atom,[skipped]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[skipped]},
                                     2 => {t_bitstring,8,false}}}}],
                        none}}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {deallocate,1}.
    return.
  {label,1281}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, skip_until_zero, 1, 1283}.
  {label,1282}.
    {line,[{location,"bs_match_r25_SUITE.erl",2366}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,skip_until_zero},1}.
  {label,1283}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,1285},
          1,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2366,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,is_eq_exact,{f,1284},[{tr,{x,1},{t_integer,{0,255}}},{integer,0}]}.
    {bs_get_tail,{x,0},{x,0},1}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,skipped},{x,0}]}}.
    return.
  {label,1284}.
    {bs_get_tail,{x,0},{x,0},1}.
    {call_only,1,{f,1283}}. % skip_until_zero/1
  {label,1285}.
    {move,{atom,not_found},{x,0}}.
    return.


{function, restore_after_catch, 1, 1287}.
  {label,1286}.
    {line,[{location,"bs_match_r25_SUITE.erl",2374}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,restore_after_catch},1}.
  {label,1287}.
    {test,is_list,{f,1286},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<0,1>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2375}]}.
    {call,1,{f,1290}}. % restore_after_catch_1/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {test,is_eq_exact,
          {f,1288},
          [{tr,{x,0},{t_bitstring,16,false}},{literal,<<0,1>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1288}.
    {badmatch,{x,0}}.


{function, restore_after_catch_1, 1, 1290}.
  {label,1289}.
    {line,[{location,"bs_match_r25_SUITE.erl",2378}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,restore_after_catch_1},1}.
  {label,1290}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_tail,{x,0},{y,0},1}.
    {'try',{y,1},{f,1291}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2379}]}.
    {call,1,{f,1294}}. % throw_after_byte/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1291}.
    {try_case,{y,1}}.
    {test,is_eq_exact,
          {f,1292},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,throw}]}.
    {move,{y,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,1292}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.


{function, throw_after_byte, 1, 1294}.
  {label,1293}.
    {line,[{location,"bs_match_r25_SUITE.erl",2387}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,throw_after_byte},1}.
  {label,1294}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_skip_bits2,
          {f,1293},
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[2387,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {move,{atom,away},{x,1}}.
    {move,nil,{x,2}}.
    {move,{atom,throw},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2388}]}.
    {call_ext_only,3,{extfunc,erlang,raise,3}}.


{function, matches_on_parameter, 1, 1296}.
  {label,1295}.
    {line,[{location,"bs_match_r25_SUITE.erl",2390}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,matches_on_parameter},1}.
  {label,1296}.
    {test,is_list,{f,1295},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,<<"gurka">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2392}]}.
    {call,1,{f,1301}}. % matches_on_parameter_1/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_bitstring,8,false},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
          {f,1299},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_bitstring,8,false},
                          2 => {t_bitstring,8,false}}}},
           {literal,{<<"urka">>,<<"a">>}}]}.
    {'catch',{y,0},{f,1297}}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<"10001110101">>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",2393}]}.
    {call,2,{f,1305}}. % matches_on_parameter_2/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1297}.
    {catch_end,{y,0}}.
    {test,is_eq_exact,{f,1298},[{x,0},{atom,ok}]}.
    {deallocate,1}.
    return.
  {label,1298}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",2393}]}.
    {badmatch,{x,0}}.
  {label,1299}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",2392}]}.
    {badmatch,{x,0}}.


{function, matches_on_parameter_1, 1, 1301}.
  {label,1300}.
    {line,[{location,"bs_match_r25_SUITE.erl",2395}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,matches_on_parameter_1},1}.
  {label,1301}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_match_string,{f,1303},[{x,1},8,{string,<<"g">>}]}.
    {bs_get_tail,{x,1},{x,1},2}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,2}}.
    {test,bs_skip_bits2,
          {f,1302},
          [{x,2},
           {integer,16},
           1,
           {field_flags,[{anno,[2397,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_match_string,{f,1302},[{x,2},16,{string,<<"rk">>}]}.
    {bs_get_tail,{x,2},{x,0},3}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,1},{x,0}]}}.
    return.
  {label,1302}.
    {line,[{location,"bs_match_r25_SUITE.erl",2397}]}.
    {badmatch,{x,0}}.
  {label,1303}.
    {line,[{location,"bs_match_r25_SUITE.erl",2396}]}.
    {badmatch,{x,0}}.


{function, matches_on_parameter_2, 2, 1305}.
  {label,1304}.
    {line,[{location,"bs_match_r25_SUITE.erl",2400}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,matches_on_parameter_2},2}.
  {label,1305}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,'+inf'}}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,2}}.
    {test,bs_skip_bits2,
          {f,1307},
          [{x,2},
           {x,1},
           1,
           {field_flags,[{anno,[2401,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_skip_bits2,
          {f,1307},
          [{x,2},
           {integer,1},
           1,
           {field_flags,[{anno,[2401,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_get_tail,{x,2},{x,2},3}.
    {line,[{location,"bs_match_r25_SUITE.erl",2402}]}.
    {gc_bif,bit_size,{f,0},3,[{tr,{x,2},{t_bitstring,1,false}}],{x,2}}.
    {test,is_eq_exact,
          {f,1306},
          [{tr,{x,2},{t_integer,{0,288230376151711743}}},{integer,0}]}.
    {move,{atom,ok},{x,1}}.
    {move,nil,{x,2}}.
    {move,{atom,throw},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2403}]}.
    {call_ext_only,3,{extfunc,erlang,raise,3}}.
  {label,1306}.
    {line,[{location,"bs_match_r25_SUITE.erl",2404}]}.
    {gc_bif,'+',{f,0},2,[{tr,{x,1},{t_integer,{0,'+inf'}}},{integer,1}],{x,1}}.
    {call_only,2,{f,1305}}. % matches_on_parameter_2/2
  {label,1307}.
    {line,[{location,"bs_match_r25_SUITE.erl",2401}]}.
    {badmatch,{x,0}}.


{function, big_positions, 1, 1309}.
  {label,1308}.
    {line,[{location,"bs_match_r25_SUITE.erl",2407}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,big_positions},1}.
  {label,1309}.
    {test,is_list,{f,1308},[{x,0}]}.
    {line,[{location,"bs_match_r25_SUITE.erl",2411}]}.
    {bs_create_bin,{f,0},
                   0,0,1,
                   {x,0},
                   {list,[{atom,integer},
                          1,1,nil,
                          {integer,0},
                          {integer,134217720},
                          {atom,string},
                          0,8,nil,
                          {string,<<"A³º¹5° ">>},
                          {integer,7},
                          {atom,integer},
                          0,1,nil,
                          {integer,1},
                          {integer,1}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2412}]}.
    {bs_create_bin,{f,0},
                   0,1,16,
                   {x,1},
                   {list,[{atom,integer},
                          1,1,nil,
                          {integer,0},
                          {integer,134217720},
                          {atom,string},
                          0,8,nil,
                          {string,<<"BhelloB">>},
                          {integer,7}]}}.
    {allocate,2,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2414}]}.
    {call,1,{f,1315}}. % bp_start_match/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_integer,{0,255}}}}},
                      {{2,{t_atom,[b]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[b]},2 => {t_integer,{0,255}}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,1313},
          [{tr,{x,0},
               {t_union,none,none,none,
                        [{{2,{t_atom,[a]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[a]},
                                     2 => {t_integer,{0,255}}}}},
                         {{2,{t_atom,[b]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[b]},
                                     2 => {t_integer,{0,255}}}}}],
                        none}},
           {literal,{a,65}}]}.
    {move,{y,0},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2415}]}.
    {call,1,{f,1315}}. % bp_start_match/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_integer,{0,255}}}}},
                      {{2,{t_atom,[b]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[b]},2 => {t_integer,{0,255}}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,1312},
          [{tr,{x,0},
               {t_union,none,none,none,
                        [{{2,{t_atom,[a]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[a]},
                                     2 => {t_integer,{0,255}}}}},
                         {{2,{t_atom,[b]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[b]},
                                     2 => {t_integer,{0,255}}}}}],
                        none}},
           {literal,{b,66}}]}.
    {move,{y,1},{x,0}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {line,[{location,"bs_match_r25_SUITE.erl",2416}]}.
    {call,1,{f,1319}}. % bp_getpos/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_integer,{0,255}}}}},
                      {{2,{t_atom,[b]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[b]},2 => {t_integer,{0,255}}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,1311},
          [{tr,{x,0},
               {t_union,none,none,none,
                        [{{2,{t_atom,[a]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[a]},
                                     2 => {t_integer,{0,255}}}}},
                         {{2,{t_atom,[b]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[b]},
                                     2 => {t_integer,{0,255}}}}}],
                        none}},
           {literal,{a,65}}]}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_match_r25_SUITE.erl",2417}]}.
    {call,1,{f,1319}}. % bp_getpos/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_integer,{0,255}}}}},
                      {{2,{t_atom,[b]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[b]},2 => {t_integer,{0,255}}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,1310},
          [{tr,{x,0},
               {t_union,none,none,none,
                        [{{2,{t_atom,[a]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[a]},
                                     2 => {t_integer,{0,255}}}}},
                         {{2,{t_atom,[b]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[b]},
                                     2 => {t_integer,{0,255}}}}}],
                        none}},
           {literal,{b,66}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1310}.
    {badmatch,{x,0}}.
  {label,1311}.
    {line,[{location,"bs_match_r25_SUITE.erl",2416}]}.
    {badmatch,{x,0}}.
  {label,1312}.
    {line,[{location,"bs_match_r25_SUITE.erl",2415}]}.
    {badmatch,{x,0}}.
  {label,1313}.
    {line,[{location,"bs_match_r25_SUITE.erl",2414}]}.
    {badmatch,{x,0}}.


{function, bp_start_match, 1, 1315}.
  {label,1314}.
    {line,[{location,"bs_match_r25_SUITE.erl",2425}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bp_start_match},1}.
  {label,1315}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {test,bs_skip_bits2,
          {f,1316},
          [{x,1},
           {integer,134217728},
           1,
           {field_flags,[{anno,[2425,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_get_tail,{x,1},{x,0},2}.
    {call_only,1,{f,1315}}. % bp_start_match/1
  {label,1316}.
    {test,bs_get_integer2,
          {f,1317},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,1},
           1,
           {field_flags,[{anno,[2426,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,1317},[{tr,{x,3},{t_integer,{0,1}}},{integer,1}]}.
    {test,bs_match_string,{f,1317},[{x,1},40,{string,<<"gurka">>}]}.
    {test,bs_get_integer2,
          {f,1317},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2426,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1317},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{atom,a},{x,3}]}}.
    return.
  {label,1317}.
    {bs_set_position,{x,1},{x,2}}.
    {test,bs_get_integer2,
          {f,1314},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,16},
           1,
           {field_flags,[{anno,[2427,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,1314},
          [{tr,{x,2},{t_integer,{0,65535}}},{integer,26725}]}.
    {test,bs_match_string,{f,1314},[{x,1},24,{string,<<"llo">>}]}.
    {test,bs_get_integer2,
          {f,1314},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2427,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1314},[{x,1},0]}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{atom,b},{x,2}]}}.
    return.


{function, bp_getpos, 1, 1319}.
  {label,1318}.
    {line,[{location,"bs_match_r25_SUITE.erl",2432}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bp_getpos},1}.
  {label,1319}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_skip_bits2,
          {f,1320},
          [{x,1},
           {integer,134217720},
           1,
           {field_flags,[{anno,[2432,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_get_tail,{x,1},{x,0},2}.
    {call_only,1,{f,1319}}. % bp_getpos/1
  {label,1320}.
    {test,bs_get_integer2,
          {f,1318},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2433,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_position,{x,1},{x,3},3}.
    {test,bs_get_integer2,
          {f,1321},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,1},
           1,
           {field_flags,[{anno,[2433,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,is_eq_exact,{f,1321},[{tr,{x,4},{t_integer,{0,1}}},{integer,1}]}.
    {test,bs_match_string,{f,1321},[{x,1},40,{string,<<"gurka">>}]}.
    {test,bs_get_integer2,
          {f,1321},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2433,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,1321},[{x,1},0]}.
    {test,is_eq_exact,
          {f,1321},
          [{tr,{x,4},{t_integer,{0,255}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{atom,a},{x,2}]}}.
    return.
  {label,1321}.
    {bs_set_position,{x,1},{x,3}}.
    {test,bs_get_integer2,
          {f,1318},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2434,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,1318},[{tr,{x,3},{t_integer,{0,255}}},{integer,104}]}.
    {test,bs_match_string,{f,1318},[{x,1},32,{string,<<"ello">>}]}.
    {test,bs_get_integer2,
          {f,1318},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2434,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1318},[{x,1},0]}.
    {test,is_eq_exact,
          {f,1318},
          [{tr,{x,3},{t_integer,{0,255}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{atom,b},{x,2}]}}.
    return.


{function, matching_meets_apply, 1, 1323}.
  {label,1322}.
    {line,[{location,"bs_match_r25_SUITE.erl",2436}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,matching_meets_apply},1}.
  {label,1323}.
    {allocate,0,0}.
    {move,nil,{x,1}}.
    {move,{literal,<<"/abc">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2437}]}.
    {call,2,{f,1328}}. % do_matching_meets_apply/2
    {test,is_eq_exact,{f,1326},[{x,0},{literal,<<"abc">>}]}.
    {move,{literal,{erlang,-42}},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2438}]}.
    {call,2,{f,1328}}. % do_matching_meets_apply/2
    {test,is_eq_exact,{f,1325},[{x,0},{integer,42}]}.
    {move,{literal,{erlang,-100}},{x,1}}.
    {move,{atom,no_binary},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2439}]}.
    {call,2,{f,1328}}. % do_matching_meets_apply/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,100}}}]}}.
    {test,is_eq_exact,{f,1324},[{tr,{x,0},{t_integer,{0,100}}},{integer,100}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1324}.
    {badmatch,{x,0}}.
  {label,1325}.
    {line,[{location,"bs_match_r25_SUITE.erl",2438}]}.
    {badmatch,{x,0}}.
  {label,1326}.
    {line,[{location,"bs_match_r25_SUITE.erl",2437}]}.
    {badmatch,{x,0}}.


{function, do_matching_meets_apply, 2, 1328}.
  {label,1327}.
    {line,[{location,"bs_match_r25_SUITE.erl",2442}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_matching_meets_apply},2}.
  {label,1328}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[no_binary]},
                                   none,none,none,
                                   {t_bitstring,32,false}}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_union,none,nil,none,
                     [{{2,{t_atom,[erlang]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[erlang]},
                             2 => {t_integer,{-100,-42}}}}}],
                     none}}]}}.
    {test,bs_start_match3,{f,1329},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,1329},
          3,
          [{tr,{x,2},{t_bs_context,32}},
           {integer,8},
           1,
           {field_flags,[{anno,[2442,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,1329},[{tr,{x,3},{t_integer,{0,255}}},{integer,47}]}.
    {bs_get_tail,{x,2},{x,0},3}.
    {call_only,1,{f,1684}}. % id/1
  {label,1329}.
    {test,is_tuple,
          {f,1330},
          [{tr,{x,1},
               {t_union,none,nil,none,
                        [{{2,{t_atom,[erlang]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[erlang]},
                                     2 => {t_integer,{-100,-42}}}}}],
                        none}}]}.
    {get_tuple_element,{x,1},1,{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2453}]}.
    {call_ext_only,1,{extfunc,erlang,abs,1}}.
  {label,1330}.
    {move,nil,{x,1}}.
    {jump,{f,1327}}.


{function, exceptions_after_match_failure, 1, 1332}.
  {label,1331}.
    {line,[{location,"bs_match_r25_SUITE.erl",2457}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,exceptions_after_match_failure},
               1}.
  {label,1332}.
    {allocate,1,0}.
    {'catch',{y,0},{f,1333}}.
    {move,{atom,atom},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2458}]}.
    {call,1,{f,1336}}. % do_exceptions_after_match_failure/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1333}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1334},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1334},[{x,1},2,{atom,badarith}]}.
    {move,{literal,<<0,1,103,117,114,107,97>>},{x,0}}.
    {line,[{scope,[1,2]},{location,"bs_match_r25_SUITE.erl",2459}]}.
    {call,1,{f,1336}}. % do_exceptions_after_match_failure/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{float,2.0},{x,0}}.
    {call_last,1,{f,1336},1}. % do_exceptions_after_match_failure/1
  {label,1334}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",2458}]}.
    {badmatch,{x,0}}.


{function, do_exceptions_after_match_failure, 1, 1336}.
  {label,1335}.
    {line,[{location,"bs_match_r25_SUITE.erl",2462}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,do_exceptions_after_match_failure},
               1}.
  {label,1336}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[atom]},
                                   none,
                                   {t_float,{2.0,2.0}},
                                   none,
                                   {t_bitstring,8,false}}}]}}.
    {test,bs_start_match3,{f,1337},1,[{x,0}],{x,1}}.
    {test,bs_skip_bits2,
          {f,1337},
          [{x,1},
           {integer,16},
           1,
           {field_flags,[{anno,[2462,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_match_string,{f,1337},[{x,1},40,{string,<<"gurka">>}]}.
    {test,bs_test_tail2,{f,1337},[{x,1},0]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1337}.
    {line,[{location,"bs_match_r25_SUITE.erl",2465}]}.
    {fconv,{tr,{x,0},
               {t_union,{t_atom,[atom]},
                        none,
                        {t_float,{2.0,2.0}},
                        none,
                        {t_bitstring,8,false}}},
           {fr,0}}.
    {fmove,{float,2.0},{fr,1}}.
    {bif,fdiv,{f,0},[{fr,0},{fr,1}],{fr,0}}.
    {move,{atom,ok},{x,0}}.
    return.


{function, bad_phi_paths, 1, 1339}.
  {label,1338}.
    {line,[{location,"bs_match_r25_SUITE.erl",2470}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bad_phi_paths},1}.
  {label,1339}.
    {allocate,0,0}.
    {move,{literal,<<"gurka">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2471}]}.
    {call,1,{f,1684}}. % id/1
    {call,1,{f,1342}}. % bad_phi_paths_1/1
    {test,is_eq_exact,{f,1340},[{x,0},{literal,<<"gurka">>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1340}.
    {badmatch,{x,0}}.


{function, bad_phi_paths_1, 1, 1342}.
  {label,1341}.
    {line,[{location,"bs_match_r25_SUITE.erl",2474}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bad_phi_paths_1},1}.
  {label,1342}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {test,bs_start_match3,{f,1343},1,[{x,0}],{x,0}}.
    {test,bs_test_unit,{f,1345},[{x,0},8]}.
    {move,{y,0},{x,0}}.
    {jump,{f,1344}}.
  {label,1343}.
    {test,is_map,{f,1345},[{y,0}]}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2477}]}.
    {call,1,{f,1684}}. % id/1
  {label,1344}.
    {call_last,1,{f,1684},1}. % id/1
  {label,1345}.
    {line,[{location,"bs_match_r25_SUITE.erl",2475}]}.
    {case_end,{y,0}}.


{function, combine_empty_segments, 1, 1347}.
  {label,1346}.
    {line,[{location,"bs_match_r25_SUITE.erl",2481}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,combine_empty_segments},1}.
  {label,1347}.
    {allocate,0,0}.
    {move,{literal,<<0,1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2482}]}.
    {call,1,{f,1350}}. % combine_empty_segments_1/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,false}}]}}.
    {test,is_eq_exact,
          {f,1348},
          [{tr,{x,0},{t_bitstring,32,false}},{literal,<<0,1,2,3>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1348}.
    {badmatch,{x,0}}.


{function, combine_empty_segments_1, 1, 1350}.
  {label,1349}.
    {line,[{location,"bs_match_r25_SUITE.erl",2485}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,combine_empty_segments_1},1}.
  {label,1350}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_tail,{x,0},{x,0},1}.
    return.


{function, hangs_forever, 1, 1352}.
  {label,1351}.
    {line,[{location,"bs_match_r25_SUITE.erl",2492}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,hangs_forever},1}.
  {label,1352}.
    {allocate_heap,0,{alloc,[{words,1},{floats,0},{funs,1}]},1}.
    {make_fun3,{f,1768},0,0,{x,0},{list,[{x,0}]}}.
    {'%',{var_info,{x,0},[{fun_type,none}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2493}]}.
    {call,1,{f,1684}}. % id/1
    {test,is_function,{f,1353},[{x,0}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1353}.
    {badmatch,{atom,false}}.


{function, hangs_forever_1, 1, 1355}.
  {label,1354}.
    {line,[{location,"bs_match_r25_SUITE.erl",2496}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,hangs_forever_1},1}.
  {label,1355}.
    {call_only,1,{f,1355}}. % hangs_forever_1/1


{function, bs_saved_position_units, 1, 1357}.
  {label,1356}.
    {line,[{location,"bs_match_r25_SUITE.erl",2503}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bs_saved_position_units},1}.
  {label,1357}.
    {test,is_list,{f,1356},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<0,1,2,3,4,5,6,7,8,9>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2504}]}.
    {call,1,{f,1684}}. % id/1
    {call,1,{f,1361}}. % bspu_1/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {test,is_eq_exact,
          {f,1359},
          [{tr,{x,0},{t_list,{t_bitstring,8,false},nil}},
           {literal,[<<0,1,2,3,4>>,<<5,6,7,8,9>>]}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2505}]}.
    {call,1,{f,1684}}. % id/1
    {call,1,{f,1361}}. % bspu_1/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {test,is_nil,{f,1358},[{tr,{x,0},{t_list,{t_bitstring,8,false},nil}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1358}.
    {badmatch,{x,0}}.
  {label,1359}.
    {line,[{location,"bs_match_r25_SUITE.erl",2504}]}.
    {badmatch,{x,0}}.


{function, bspu_1, 1, 1361}.
  {label,1360}.
    {line,[{location,"bs_match_r25_SUITE.erl",2509}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bspu_1},1}.
  {label,1361}.
    {test,bs_start_match3,{f,1360},1,[{x,0}],{x,1}}.
    {test,bs_get_binary2,
          {f,1360},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {atom,all},
           8,
           {field_flags,[{anno,[2509,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,is_eq_exact,
          {f,1360},
          [{tr,{x,1},{t_bitstring,8,false}},{tr,{x,0},{t_bs_matchable,1}}]}.
    {call_only,1,{f,1765}}. % '-bspu_1/1-lc$^0/1-0-'/1


{function, empty_matches, 1, 1363}.
  {label,1362}.
    {line,[{location,"bs_match_r25_SUITE.erl",2513}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,empty_matches},1}.
  {label,1363}.
    {test,is_list,{f,1362},[{x,0}]}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{literal,<<1,2,3,4:4>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2514}]}.
    {call,1,{f,1380}}. % em_1/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,#{2 => {t_bitstring,4,false}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1378},[{x,1},{literal,<<>>}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {test,bs_match_string,{f,1378},[{x,1},28,{string,<<1,2,3,64>>}]}.
    {test,bs_test_tail2,{f,1378},[{x,1},0]}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2515}]}.
    {call,1,{f,1380}}. % em_1/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,#{2 => {t_bitstring,4,false}}}}]}}.
    {test,is_eq_exact,
          {f,1377},
          [{tr,{x,0},{t_tuple,2,true,#{2 => {t_bitstring,4,false}}}},
           {literal,{<<>>,<<1,2,3>>}}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2516}]}.
    {call,1,{f,1380}}. % em_1/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,#{2 => {t_bitstring,4,false}}}}]}}.
    {test,is_eq_exact,
          {f,1376},
          [{tr,{x,0},{t_tuple,2,true,#{2 => {t_bitstring,4,false}}}},
           {literal,{<<>>,<<>>}}]}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2518}]}.
    {call,1,{f,1684}}. % id/1
    {call,1,{f,1384}}. % em_2/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,true}}]}}.
    {test,is_eq_exact,
          {f,1375},
          [{tr,{x,0},{t_bitstring,16,true}},{literal,<<0,1,0,2,0,3>>}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2519}]}.
    {call,1,{f,1684}}. % id/1
    {call,1,{f,1384}}. % em_2/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,true}}]}}.
    {test,is_eq_exact,
          {f,1374},
          [{tr,{x,0},{t_bitstring,16,true}},{literal,<<>>}]}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2521}]}.
    {call,1,{f,1684}}. % id/1
    {call,1,{f,1386}}. % em_3/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {test,is_eq_exact,
          {f,1373},
          [{tr,{x,0},{t_bitstring,1,false}},{literal,<<1,2,3>>}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2522}]}.
    {call,1,{f,1684}}. % id/1
    {call,1,{f,1386}}. % em_3/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {test,is_eq_exact,
          {f,1372},
          [{tr,{x,0},{t_bitstring,1,false}},{literal,<<>>}]}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2524}]}.
    {call,1,{f,1684}}. % id/1
    {test,bs_start_match3,{f,1371},1,[{x,0}],{x,1}}.
    {test,bs_test_tail2,{f,1371},[{x,1},0]}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2525}]}.
    {call,1,{f,1684}}. % id/1
    {test,is_eq_exact,{f,1370},[{x,0},{integer,0}]}.
    {move,{literal,<<>>},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2527}]}.
    {call,2,{f,1390}}. % em_4/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,2},{f,1364}}.
    {move,{literal,<<0:1>>},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2528}]}.
    {call,2,{f,1390}}. % em_4/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1364}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,1369},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1369},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,1369},[{x,1}]}.
    {'catch',{y,1},{f,1365}}.
    {move,{literal,<<>>},{x,1}}.
    {move,{literal,<<0:1>>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r25_SUITE.erl",2529}]}.
    {call,2,{f,1390}}. % em_4/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1365}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,1368},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1368},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,1368},[{x,1}]}.
    {'catch',{y,0},{f,1366}}.
    {move,{literal,<<0:1>>},{x,1}}.
    {move,{literal,<<0:1>>},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r25_SUITE.erl",2530}]}.
    {call,2,{f,1390}}. % em_4/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1366}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1367},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1367},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,1367},[{x,1}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,3}.
    return.
  {label,1367}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",2530}]}.
    {badmatch,{x,0}}.
  {label,1368}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",2529}]}.
    {badmatch,{x,0}}.
  {label,1369}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",2528}]}.
    {badmatch,{x,0}}.
  {label,1370}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2525}]}.
    {badmatch,{x,0}}.
  {label,1371}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2524}]}.
    {badmatch,{x,0}}.
  {label,1372}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2522}]}.
    {badmatch,{x,0}}.
  {label,1373}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2521}]}.
    {badmatch,{x,0}}.
  {label,1374}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2519}]}.
    {badmatch,{x,0}}.
  {label,1375}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2518}]}.
    {badmatch,{x,0}}.
  {label,1376}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2516}]}.
    {badmatch,{x,0}}.
  {label,1377}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2515}]}.
    {badmatch,{x,0}}.
  {label,1378}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2514}]}.
    {badmatch,{x,0}}.


{function, em_1, 1, 1380}.
  {label,1379}.
    {line,[{location,"bs_match_r25_SUITE.erl",2534}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,em_1},1}.
  {label,1380}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,4,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_binary2,
          {f,1382},
          2,
          [{tr,{x,1},{t_bs_context,4}},
           {integer,0},
           8,
           {field_flags,[{anno,[2536,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {allocate,2,3}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {bs_get_tail,{x,1},{y,0},3}.
    {move,{x,2},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2537}]}.
    {call_ext,1,{extfunc,binary,copy,1}}.
    {test,is_eq_exact,
          {f,1381},
          [{tr,{y,0},{t_bitstring,4,false}},{tr,{y,1},{t_bitstring,4,false}}]}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{x,0},{y,1}]}}.
    {deallocate,2}.
    return.
  {label,1381}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{x,0},{y,0}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2535}]}.
    {badmatch,{x,0}}.
  {label,1382}.
    {line,[{location,"bs_match_r25_SUITE.erl",2536}]}.
    {badmatch,{x,0}}.


{function, em_2, 1, 1384}.
  {label,1383}.
    {line,[{location,"bs_match_r25_SUITE.erl",2542}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,em_2},1}.
  {label,1384}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,1761},1}. % '-em_2/1-lbc$^0/2-0-'/2


{function, em_3, 1, 1386}.
  {label,1385}.
    {line,[{location,"bs_match_r25_SUITE.erl",2549}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,em_3},1}.
  {label,1386}.
    {test,bs_start_match3,{f,1385},1,[{x,0}],{x,1}}.
    {test,bs_get_binary2,
          {f,1385},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,0},
           8,
           {field_flags,[{anno,[2549,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {allocate,1,3}.
    {init_yregs,{list,[{y,0}]}}.
    {bs_get_tail,{x,1},{y,0},3}.
    {move,{x,2},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2550}]}.
    {call,1,{f,1388}}. % em_3_1/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, em_3_1, 1, 1388}.
  {label,1387}.
    {line,[{location,"bs_match_r25_SUITE.erl",2553}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,em_3_1},1}.
  {label,1388}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    return.


{function, em_4, 2, 1390}.
  {label,1389}.
    {line,[{location,"bs_match_r25_SUITE.erl",2556}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,em_4},2}.
  {label,1390}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,false}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,2}}.
    {test,bs_skip_bits2,
          {f,1389},
          [{x,2},
           {integer,0},
           1,
           {field_flags,[{anno,[2556,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_get_tail,{x,2},{x,2},3}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,3}}.
    {test,bs_skip_bits2,
          {f,1389},
          [{x,3},
           {integer,0},
           1,
           {field_flags,[{anno,[2556,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_get_tail,{x,3},{x,3},4}.
    {bs_start_match4,{atom,no_fail},4,{x,2},{x,2}}.
    {test,bs_test_tail2,{f,1389},[{x,2},0]}.
    {bs_start_match4,{atom,no_fail},4,{x,3},{x,2}}.
    {test,bs_test_tail2,{f,1389},[{x,2},0]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, trim_bs_start_match_resume, 1, 1392}.
  {label,1391}.
    {line,[{location,"bs_match_r25_SUITE.erl",2561}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,trim_bs_start_match_resume},1}.
  {label,1392}.
    {test,is_list,{f,1391},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2562}]}.
    {call,1,{f,1684}}. % id/1
    {test,bs_start_match3,{f,1394},1,[{x,0}],{x,1}}.
    {test,bs_get_binary2,
          {f,1394},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {atom,all},
           8,
           {field_flags,[{anno,[2562,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2563}]}.
    {call,1,{f,1396}}. % trim_bs_start_match_resume_1/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,1393},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1393}.
    {badmatch,{x,0}}.
  {label,1394}.
    {line,[{location,"bs_match_r25_SUITE.erl",2562}]}.
    {badmatch,{x,0}}.


{function, trim_bs_start_match_resume_1, 1, 1396}.
  {label,1395}.
    {line,[{location,"bs_match_r25_SUITE.erl",2566}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,trim_bs_start_match_resume_1},
               1}.
  {label,1396}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {allocate,1,1}.
    {init_yregs,{list,[{y,0}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_tail,{x,0},{y,0},1}.
    {move,{y,0},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2567}]}.
    {call,1,{f,1684}}. % id/1
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, expand_and_squeeze, 1, 1398}.
  {label,1397}.
    {line,[{location,"bs_match_r25_SUITE.erl",2570}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,expand_and_squeeze},1}.
  {label,1398}.
    {test,is_list,{f,1397},[{x,0}]}.
    {allocate,0,0}.
    {move,
        {literal,
            [{bin,2572,
                 [{bin_element,2572,{char,2572,225},default,[utf8]},
                  {bin_element,2572,{var,2572,'_'},default,[binary]}]},
             {bin,2573,
                 [{bin_element,2573,{char,2573,233},default,[utf8]},
                  {bin_element,2573,{var,2573,'_'},default,[binary]}]}]},
        {x,1}}.
    {move,{integer,16},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2572}]}.
    {call,2,{f,1402}}. % ensure_squeezed/2
    {'%',{var_info,{x,0},[{type,{t_cons,any,any}}]}}.
    {move,
        {literal,
            [{bin,2576,
                 [{bin_element,2576,
                      {integer,2576,0},
                      {integer,2576,32},
                      default},
                  {bin_element,2576,{var,2576,'_'},default,[binary]}]},
             {bin,2577,
                 [{bin_element,2577,{string,2577,"bbbb"},default,default},
                  {bin_element,2577,{var,2577,'_'},default,[binary]}]}]},
        {x,1}}.
    {move,{integer,16},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2576}]}.
    {call,2,{f,1402}}. % ensure_squeezed/2
    {'%',{var_info,{x,0},[{type,{t_cons,any,any}}]}}.
    {move,
        {literal,
            [{bin,2580,
                 [{bin_element,2580,{string,2580,"aaaa"},default,default},
                  {bin_element,2580,{var,2580,'_'},default,[binary]}]},
             {bin,2581,
                 [{bin_element,2581,{string,2581,"bbbb"},default,default},
                  {bin_element,2581,{var,2581,'_'},default,[binary]}]}]},
        {x,1}}.
    {move,{integer,16},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2580}]}.
    {call,2,{f,1402}}. % ensure_squeezed/2
    {'%',{var_info,{x,0},[{type,{t_cons,any,any}}]}}.
    {move,
        {literal,
            [{bin,2584,
                 [{bin_element,2584,{string,2584,"aaaa"},default,default},
                  {bin_element,2584,{var,2584,'_'},default,[binary]}]},
             {bin,2585,
                 [{bin_element,2585,{string,2585,"bbbb"},default,default},
                  {bin_element,2585,{var,2585,'_'},default,[binary]}]},
             {bin,2586,[]}]},
        {x,1}}.
    {move,{integer,16},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2584}]}.
    {call,2,{f,1402}}. % ensure_squeezed/2
    {'%',{var_info,{x,0},[{type,{t_cons,any,any}}]}}.
    {move,
        {literal,
            [{bin,2589,
                 [{bin_element,2589,{string,2589,"aaaa"},default,default},
                  {bin_element,2589,{var,2589,'_'},default,[binary]}]},
             {bin,2590,
                 [{bin_element,2590,{string,2590,"bbbb"},default,default},
                  {bin_element,2590,{var,2590,'_'},default,[binary]}]},
             {bin,2591,[{bin_element,2591,{var,2591,'_'},default,[float]}]}]},
        {x,1}}.
    {move,{integer,8},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2589}]}.
    {call,2,{f,1402}}. % ensure_squeezed/2
    {'%',{var_info,{x,0},[{type,{t_cons,any,any}}]}}.
    {move,
        {literal,
            [{bin,2594,
                 [{bin_element,2594,{string,2594,"aa"},default,default},
                  {bin_element,2594,{var,2594,'_'},default,[binary]}]},
             {bin,2595,
                 [{bin_element,2595,{string,2595,"bb"},default,default},
                  {bin_element,2595,{var,2595,'_'},default,[binary]}]},
             {bin,2596,
                 [{bin_element,2596,{string,2596,"c"},default,default},
                  {bin_element,2596,{var,2596,'_'},default,[binary]}]}]},
        {x,1}}.
    {move,{integer,8},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2594}]}.
    {call,2,{f,1402}}. % ensure_squeezed/2
    {'%',{var_info,{x,0},[{type,{t_cons,any,any}}]}}.
    {move,
        {literal,
            [{bin,2602,
                 [{bin_element,2602,{string,2602,"aaa"},default,default},
                  {bin_element,2602,{var,2602,'_'},default,[binary]}]},
             {bin,2603,
                 [{bin_element,2603,{string,2603,"abb"},default,default},
                  {bin_element,2603,{var,2603,'_'},default,[binary]}]},
             {bin,2604,
                 [{bin_element,2604,{string,2604,"c"},default,default},
                  {bin_element,2604,{var,2604,'_'},default,[binary]}]}]},
        {x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2602}]}.
    {call,1,{f,1405}}. % binary_match_to_asm/1
    {test,is_nonempty_list,{f,1400},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_tagged_tuple,{f,1400},[{x,1},4,{atom,bs_match}]}.
    {get_tuple_element,{x,1},1,{x,3}}.
    {test,is_tagged_tuple,{f,1400},[{x,3},2,{atom,f}]}.
    {get_tuple_element,{x,1},3,{x,1}}.
    {test,is_tagged_tuple,{f,1400},[{x,1},2,{atom,commands}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,1400},[{x,1}]}.
    {get_list,{x,1},{x,3},{x,1}}.
    {test,is_tagged_tuple,{f,1400},[{x,3},3,{atom,ensure_at_least}]}.
    {get_tuple_element,{x,3},2,{x,4}}.
    {test,is_eq_exact,{f,1400},[{x,4},{integer,1}]}.
    {test,is_nonempty_list,{f,1400},[{x,1}]}.
    {get_list,{x,1},{x,4},{x,1}}.
    {test,is_tagged_tuple,{f,1400},[{x,4},6,{atom,integer}]}.
    {get_tuple_element,{x,4},4,{x,5}}.
    {test,is_eq_exact,{f,1400},[{x,5},{integer,1}]}.
    {test,is_nil,{f,1400},[{x,1}]}.
    {get_tuple_element,{x,4},3,{x,1}}.
    {get_tuple_element,{x,3},1,{x,3}}.
    {test,is_eq_exact,{f,1400},[{x,1},{x,3}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},3}.
    {make_fun3,{f,1758},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[false,true]}}]}}.
    {move,{x,2},{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2613}]}.
    {call_ext,2,{extfunc,lists,any,2}}.
    {test,is_eq_exact,{f,1399},[{x,0},{atom,true}]}.
    {move,
        {literal,
            [{bin,2616,
                 [{bin_element,2616,{integer,2616,255},default,default},
                  {bin_element,2616,{integer,2616,255},default,default},
                  {bin_element,2616,{integer,2616,255},default,default},
                  {bin_element,2616,{integer,2616,255},default,default},
                  {bin_element,2616,{integer,2616,255},default,default},
                  {bin_element,2616,{integer,2616,255},default,default},
                  {bin_element,2616,{integer,2616,255},default,default},
                  {bin_element,2616,{integer,2616,255},default,default}]},
             {bin,2617,
                 [{bin_element,2617,
                      {var,2617,'_'},
                      {integer,2617,64},
                      default}]}]},
        {x,1}}.
    {move,{integer,64},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2616}]}.
    {call,2,{f,1402}}. % ensure_squeezed/2
    {'%',{var_info,{x,0},[{type,{t_cons,any,any}}]}}.
    {move,
        {literal,
            [{bin,2620,
                 [{bin_element,2620,{var,2620,'A'},{integer,2620,32},default},
                  {bin_element,2620,{var,2620,'_'},{var,2620,'A'},default}]},
             {bin,2621,
                 [{bin_element,2621,
                      {integer,2621,0},
                      {integer,2621,32},
                      default}]},
             {bin,2622,
                 [{bin_element,2622,
                      {var,2622,'_'},
                      {integer,2622,32},
                      default}]}]},
        {x,1}}.
    {move,{integer,32},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2620}]}.
    {call,2,{f,1402}}. % ensure_squeezed/2
    {'%',{var_info,{x,0},[{type,{t_cons,any,any}}]}}.
    {move,
        {literal,
            [{bin,2625,
                 [{bin_element,2625,{var,2625,'A'},{integer,2625,32},default},
                  {bin_element,2625,{var,2625,'_'},{var,2625,'A'},default}]},
             {bin,2626,
                 [{bin_element,2626,{integer,2626,0},default,default},
                  {bin_element,2626,{integer,2626,0},default,default},
                  {bin_element,2626,{integer,2626,0},default,default},
                  {bin_element,2626,{integer,2626,0},default,default}]},
             {bin,2627,
                 [{bin_element,2627,
                      {var,2627,'_'},
                      {integer,2627,32},
                      default}]}]},
        {x,1}}.
    {move,{integer,32},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2625}]}.
    {call,2,{f,1402}}. % ensure_squeezed/2
    {'%',{var_info,{x,0},[{type,{t_cons,any,any}}]}}.
    {move,
        {literal,
            [{bin,2630,
                 [{bin_element,2630,{var,2630,'A'},{integer,2630,32},default},
                  {bin_element,2630,{var,2630,'_'},{var,2630,'A'},default}]},
             {bin,2631,
                 [{bin_element,2631,
                      {integer,2631,0},
                      {integer,2631,64},
                      default}]},
             {bin,2632,
                 [{bin_element,2632,
                      {var,2632,'_'},
                      {integer,2632,32},
                      default}]}]},
        {x,1}}.
    {move,{integer,32},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2630}]}.
    {call,2,{f,1402}}. % ensure_squeezed/2
    {'%',{var_info,{x,0},[{type,{t_cons,any,any}}]}}.
    {move,
        {literal,
            [{bin,2635,
                 [{bin_element,2635,{string,2635,"aa"},default,default},
                  {bin_element,2635,{var,2635,'_'},default,[binary]}]},
             {bin,2636,
                 [{bin_element,2636,{string,2636,"bb"},default,default},
                  {bin_element,2636,{var,2636,'_'},default,[binary]}]},
             {bin,2637,
                 [{bin_element,2637,{string,2637,"cc"},default,default},
                  {bin_element,2637,{var,2637,'_'},default,[binary]}]},
             {bin,2638,
                 [{bin_element,2638,{string,2638,"dd"},default,default},
                  {bin_element,2638,{var,2638,'_'},default,[binary]}]},
             {bin,2639,
                 [{bin_element,2639,{string,2639,"ee"},default,default},
                  {bin_element,2639,{var,2639,'_'},default,[binary]}]},
             {bin,2640,
                 [{bin_element,2640,{string,2640,"ff"},default,default},
                  {bin_element,2640,{var,2640,'_'},default,[binary]}]},
             {bin,2641,
                 [{bin_element,2641,{string,2641,"gg"},default,default},
                  {bin_element,2641,{var,2641,'_'},default,[binary]}]},
             {bin,2642,
                 [{bin_element,2642,{string,2642,"hh"},default,default},
                  {bin_element,2642,{var,2642,'_'},default,[binary]}]},
             {bin,2643,
                 [{bin_element,2643,{string,2643,"ii"},default,default},
                  {bin_element,2643,{var,2643,'_'},default,[binary]}]},
             {bin,2644,
                 [{bin_element,2644,{string,2644,"jj"},default,default},
                  {bin_element,2644,{var,2644,'_'},default,[binary]}]},
             {bin,2645,
                 [{bin_element,2645,{string,2645,"kk"},default,default},
                  {bin_element,2645,{var,2645,'_'},default,[binary]}]},
             {bin,2646,
                 [{bin_element,2646,{string,2646,"ll"},default,default},
                  {bin_element,2646,{var,2646,'_'},default,[binary]}]},
             {bin,2647,
                 [{bin_element,2647,{string,2647,"mm"},default,default},
                  {bin_element,2647,{var,2647,'_'},default,[binary]}]},
             {bin,2648,
                 [{bin_element,2648,{string,2648,"nn"},default,default},
                  {bin_element,2648,{var,2648,'_'},default,[binary]}]},
             {bin,2649,
                 [{bin_element,2649,{string,2649,"oo"},default,default},
                  {bin_element,2649,{var,2649,'_'},default,[binary]}]},
             {bin,2650,
                 [{bin_element,2650,{string,2650,"pp"},default,default},
                  {bin_element,2650,{var,2650,'_'},default,[binary]}]}]},
        {x,1}}.
    {move,{integer,8},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2635}]}.
    {call,2,{f,1402}}. % ensure_squeezed/2
    {'%',{var_info,{x,0},[{type,{t_cons,any,any}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1399}.
    {line,[{location,"bs_match_r25_SUITE.erl",2613}]}.
    {badmatch,{atom,false}}.
  {label,1400}.
    {line,[{location,"bs_match_r25_SUITE.erl",2599}]}.
    {badmatch,{x,0}}.


{function, ensure_squeezed, 2, 1402}.
  {label,1401}.
    {line,[{location,"bs_match_r25_SUITE.erl",2654}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,ensure_squeezed},2}.
  {label,1402}.
    {'%',{var_info,{x,0},[{type,{t_integer,{8,64}}}]}}.
    {'%',
     {var_info,
      {x,1},
      [{type,
        {t_cons,
         {t_tuple,3,true,
          #{1 => {t_atom,[bin]},
            2 => {t_integer,{2572,2650}},
            3 =>
             {t_list,
              {t_tuple,5,true,
               #{1 => {t_atom,[bin_element]},
                 2 => {t_integer,{2572,2650}},
                 3 => {t_tuple,3,false,#{}},
                 4 =>
                  {t_union,
                   {t_atom,[default]},
                   none,none,
                   {t_tuple,3,false,#{}},
                   none},
                 5 =>
                  {t_union,
                   {t_atom,[default]},
                   {t_cons,any,any},
                   none,none,none}}},
              nil}}},
         nil}}]}}.
    {allocate,1,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2658}]}.
    {call,1,{f,1405}}. % binary_match_to_asm/1
    {test,is_nonempty_list,{f,1403},[{x,0}]}.
    {get_hd,{x,0},{x,1}}.
    {test,is_tagged_tuple,{f,1403},[{x,1},4,{atom,bs_match}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_tagged_tuple,{f,1403},[{x,2},2,{atom,f}]}.
    {get_tuple_element,{x,1},3,{x,1}}.
    {test,is_tagged_tuple,{f,1403},[{x,1},2,{atom,commands}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,1403},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_tagged_tuple,{f,1403},[{x,2},3,{atom,ensure_at_least}]}.
    {get_tuple_element,{x,2},2,{x,3}}.
    {test,is_eq_exact,{f,1403},[{x,3},{integer,1}]}.
    {test,is_nonempty_list,{f,1403},[{x,1}]}.
    {get_list,{x,1},{x,3},{x,1}}.
    {test,is_tagged_tuple,{f,1403},[{x,3},6,{atom,integer}]}.
    {get_tuple_element,{x,3},4,{x,4}}.
    {test,is_eq_exact,{f,1403},[{x,4},{integer,1}]}.
    {test,is_nil,{f,1403},[{x,1}]}.
    {get_tuple_element,{x,2},1,{x,1}}.
    {test,is_eq_exact,{f,1403},[{x,1},{tr,{y,0},{t_integer,{8,64}}}]}.
    {get_tuple_element,{x,3},3,{x,1}}.
    {test,is_eq_exact,{f,1403},[{x,1},{tr,{y,0},{t_integer,{8,64}}}]}.
    {deallocate,1}.
    return.
  {label,1403}.
    {line,[{location,"bs_match_r25_SUITE.erl",2655}]}.
    {badmatch,{x,0}}.


{function, binary_match_to_asm, 1, 1405}.
  {label,1404}.
    {line,[{location,"bs_match_r25_SUITE.erl",2660}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,binary_match_to_asm},1}.
  {label,1405}.
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_cons,
         {t_tuple,3,true,
          #{1 => {t_atom,[bin]},
            2 => {t_integer,{2572,2650}},
            3 =>
             {t_list,
              {t_tuple,5,true,
               #{1 => {t_atom,[bin_element]},
                 2 => {t_integer,{2572,2650}},
                 3 => {t_tuple,0,false,#{}},
                 4 =>
                  {t_union,
                   {t_atom,[default]},
                   none,none,
                   {t_tuple,0,false,#{}},
                   none},
                 5 =>
                  {t_union,
                   {t_atom,[default]},
                   {t_cons,any,any},
                   none,none,none}}},
              nil}}},
         nil}}]}}.
    {allocate,3,1}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{x,0},{y,2}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2665}]}.
    {gc_bif,length,
     {f,0},
     1,
     [{tr,
       {x,0},
       {t_cons,
        {t_tuple,3,true,
         #{1 => {t_atom,[bin]},
           2 => {t_integer,{2572,2650}},
           3 =>
            {t_list,
             {t_tuple,5,true,
              #{1 => {t_atom,[bin_element]},
                2 => {t_integer,{2572,2650}},
                3 => {t_tuple,0,false,#{}},
                4 =>
                 {t_union,
                  {t_atom,[default]},
                  none,none,
                  {t_tuple,0,false,#{}},
                  none},
                5 =>
                 {t_union,
                  {t_atom,[default]},
                  {t_cons,any,any},
                  none,none,none}}},
             nil}}},
        nil}}],
     {x,1}}.
    {move,{integer,1},{x,0}}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{x,0},{x,1}}.
    {move,{y,2},{x,0}}.
    {init_yregs,{list,[{y,2}]}}.
    {call_ext,2,{extfunc,lists,zip,2}}.
    {call,1,{f,1755}}. % '-binary_match_to_asm/1-lc$^0/1-0-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_cons,
                     {t_tuple,5,true,
                         #{1 => {t_atom,[clause]},
                           2 => {t_integer,{2572,2650}},
                           3 =>
                               {t_cons,
                                   {t_tuple,3,true,
                                       #{1 => {t_atom,[bin]},
                                         2 => {t_integer,{2572,2650}},
                                         3 => {t_list,any,any}}},
                                   nil},
                           4 => nil,
                           5 =>
                               {t_cons,
                                   {t_tuple,3,true,
                                       #{1 => {t_atom,[integer]},
                                         2 => {t_integer,{2572,2650}}}},
                                   nil}}},
                     nil}}]}}.
    {move,{x,0},{y,2}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2669}]}.
    {call_ext,1,{extfunc,erl_anno,new,1}}.
    {move,{x,0},{y,1}}.
    {move,{integer,2},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2670}]}.
    {call_ext,1,{extfunc,erl_anno,new,1}}.
    {move,{x,0},{y,0}}.
    {move,{integer,3},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2671}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",2675}]}.
    {call_ext,2,{extfunc,compile,forms,2}}.
    {test,is_tagged_tuple,{f,1408},[{x,0},4,{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,1408},[{x,1},{atom,match_to_asm}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_tagged_tuple,{f,1408},[{x,1},5,{atom,match_to_asm}]}.
    {get_tuple_element,{x,1},3,{x,0}}.
    {test,is_nonempty_list,{f,1407},[{x,0}]}.
    {get_hd,{x,0},{x,1}}.
    {test,is_tagged_tuple,{f,1407},[{x,1},5,{atom,function}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,1407},[{x,2},{atom,example}]}.
    {get_tuple_element,{x,1},2,{x,2}}.
    {test,is_eq_exact,{f,1407},[{x,2},{integer,1}]}.
    {get_tuple_element,{x,1},3,{x,2}}.
    {test,is_eq_exact,{f,1407},[{x,2},{integer,2}]}.
    {get_tuple_element,{x,1},4,{x,0}}.
    {test,is_nonempty_list,{f,1406},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_tagged_tuple,{f,1406},[{x,1},2,{atom,label}]}.
    {test,is_nonempty_list,{f,1406},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tagged_tuple,{f,1406},[{x,1},2,{atom,line}]}.
    {test,is_nonempty_list,{f,1406},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tagged_tuple,{f,1406},[{x,1},4,{atom,func_info}]}.
    {test,is_nonempty_list,{f,1406},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tagged_tuple,{f,1406},[{x,1},2,{atom,label}]}.
    {test,is_nonempty_list,{f,1406},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tagged_tuple,{f,1406},[{x,1},2,{atom,'%'}]}.
    {test,is_nonempty_list,{f,1406},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tagged_tuple,{f,1406},[{x,1},6,{atom,test}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,{f,1406},[{x,1},{atom,bs_start_match3}]}.
    {test,is_nonempty_list,{f,1406},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tagged_tuple,{f,1406},[{x,1},4,{atom,bs_get_position}]}.
    {move,{x,2},{x,0}}.
    {deallocate,0}.
    return.
  {label,1406}.
    {line,[{location,"bs_match_r25_SUITE.erl",2678}]}.
    {badmatch,{x,0}}.
  {label,1407}.
    {line,[{location,"bs_match_r25_SUITE.erl",2677}]}.
    {badmatch,{x,0}}.
  {label,1408}.
    {line,[{location,"bs_match_r25_SUITE.erl",2674}]}.
    {badmatch,{x,0}}.


{function, many_clauses, 1, 1410}.
  {label,1409}.
    {line,[{location,"bs_match_r25_SUITE.erl",2682}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,many_clauses},1}.
  {label,1410}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{integer,200},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2685}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2686}]}.
    {call,1,{f,1751}}. % '-many_clauses/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {move,{x,0},{y,0}}.
    {move,{atom,bs_match_r25_SUITE_many_clauses},{x,0}}.
    {line,[]}.
    {call_ext,1,{extfunc,merl,term,1}}.
    {test_heap,52,1}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{literal,[{tree,atom,{attr,2687,[],none},module}]},{x,0},{x,0}}.
    {put_list,{y,0},nil,{x,1}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{literal,[{var,2690,'Bin'}]},{x,1},{x,1}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,case_expr},
                       {literal,{attr,2690,[],none}},
                       {x,1}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,nil,{x,1},{x,1}}.
    {put_list,{literal,[{var,2689,'Bin'}]},{x,1},{x,1}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,clause},
                       {literal,{attr,2689,[],none}},
                       {x,1}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{literal,[{tree,atom,{attr,2689,[],none},f}]},{x,1},{x,1}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,function},
                       {literal,{attr,2689,[],none}},
                       {x,1}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{literal,{attribute,2688,export,[{f,1}]}},{x,1},{x,1}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,attribute},
                       {literal,{attr,2687,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},{x,1},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2687}]}.
    {call_ext,1,{extfunc,merl,tree,1}}.
    {move,{x,0},{y,0}}.
    {move,{atom,bs_match_r25_SUITE},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2694}]}.
    {call_ext,1,{extfunc,test_lib,opt_opts,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,1}.
    {line,[{location,"bs_match_r25_SUITE.erl",2695}]}.
    {call_ext,2,{extfunc,merl,compile_and_load,2}}.
    {test,is_tagged_tuple,{f,1411},[{x,0},2,{atom,ok}]}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_match_r25_SUITE.erl",2702}]}.
    {call,1,{f,1745}}. % '-many_clauses/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1411}.
    {line,[{location,"bs_match_r25_SUITE.erl",2695}]}.
    {badmatch,{x,0}}.


{function, one_clause, 1, 1413}.
  {label,1412}.
    {line,[{location,"bs_match_r25_SUITE.erl",2705}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,one_clause},1}.
  {label,1413}.
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
            [{bin,2706,
                 [{bin_element,2706,{var,2706,'L'},{integer,2706,8},default},
                  {bin_element,2706,
                      {var,2706,'Val'},
                      {var,2706,'L'},
                      default}]}]},
        {x,1}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,tuple},
                       {literal,{attr,2706,[],none}},
                       {x,1}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},
              {literal,[[{tree,operator,{attr,2706,[],none},'+'}],
                        [{var,2706,'Val'}]]},
              {x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,infix_expr},
                       {literal,{attr,2706,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,nil,{x,0},{x,0}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,clause},
                       {literal,{attr,2706,[],none}},
                       {x,0}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2706}]}.
    {call_ext_last,1,{extfunc,merl,tree,1},1}.


{function, gh_6410, 1, 1415}.
  {label,1414}.
    {line,[{location,"bs_match_r25_SUITE.erl",2709}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh_6410},1}.
  {label,1415}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2710}]}.
    {call,1,{f,1423}}. % do_gh_6410/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,0}}}]}}.
    {'catch',{y,2},{f,1416}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2711}]}.
    {call,1,{f,1423}}. % do_gh_6410/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,0}}}]}}.
  {label,1416}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,1421},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1421},[{x,1}]}.
    {test,test_arity,{f,1421},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,1421},[{x,2},{literal,{case_clause,<<>>}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,1421},[{x,1}]}.
    {'catch',{y,1},{f,1417}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",2712}]}.
    {call,1,{f,1423}}. % do_gh_6410/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1417}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,1420},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1420},[{x,1}]}.
    {test,test_arity,{f,1420},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,1420},[{x,2},{literal,{case_clause,a}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,1420},[{x,1}]}.
    {'catch',{y,0},{f,1418}}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",2713}]}.
    {call,1,{f,1423}}. % do_gh_6410/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1418}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1419},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1419},[{x,1},2,{atom,badarith}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,1419},[{x,1}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,3}.
    return.
  {label,1419}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",2713}]}.
    {badmatch,{x,0}}.
  {label,1420}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",2712}]}.
    {badmatch,{x,0}}.
  {label,1421}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",2711}]}.
    {badmatch,{x,0}}.


{function, do_gh_6410, 1, 1423}.
  {label,1422}.
    {line,[{location,"bs_match_r25_SUITE.erl",2717}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_gh_6410},1}.
  {label,1423}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[a]},
                                   nil,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,bs_start_match3,{f,1424},1,[{x,0}],{x,1}}.
    {test,bs_test_tail2,{f,1424},[{x,1},8]}.
    {move,{integer,0},{x,0}}.
    return.
  {label,1424}.
    {test,bs_start_match3,{f,1425},1,[{x,0}],{x,1}}.
    {test,bs_test_tail2,{f,1427},[{x,1},8]}.
    {jump,{f,1426}}.
  {label,1425}.
    {test,is_nil,
          {f,1427},
          [{tr,{x,0},{t_union,{t_atom,[a]},nil,none,none,none}}]}.
  {label,1426}.
    {line,[{location,"bs_match_r25_SUITE.erl",2720}]}.
    {gc_bif,'+',
            {f,0},
            1,
            [{tr,{x,0},{t_union,none,nil,none,none,{t_bitstring,8,false}}}],
            {x,0}}.
    return.
  {label,1427}.
    {case_end,{x,0}}.


{function, bs_match, 1, 1429}.
  {label,1428}.
    {line,[{location,"bs_match_r25_SUITE.erl",2727}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bs_match},1}.
  {label,1429}.
    {allocate,4,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3}]}}.
    {move,{literal,<<1,0>>},{x,1}}.
    {move,{atom,whatever},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2728}]}.
    {call,2,{f,1447}}. % do_bs_match_1/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     {t_bitstring,16,false}}}]}}.
    {test,is_eq_exact,
          {f,1445},
          [{tr,{x,0},
               {t_union,none,none,none,
                        [{{3,{t_atom,[a]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[a]},
                                     2 => {t_atom,[b]},
                                     3 => {t_atom,[c]}}}}],
                        {t_bitstring,16,false}}},
           {literal,<<1,0>>}]}.
    {move,{literal,<<1,1>>},{x,1}}.
    {move,{atom,whatever},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",2729}]}.
    {call,2,{f,1447}}. % do_bs_match_1/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     {t_bitstring,16,false}}}]}}.
    {test,is_eq_exact,
          {f,1444},
          [{tr,{x,0},
               {t_union,none,none,none,
                        [{{3,{t_atom,[a]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[a]},
                                     2 => {t_atom,[b]},
                                     3 => {t_atom,[c]}}}}],
                        {t_bitstring,16,false}}},
           {literal,<<1,1>>}]}.
    {move,{literal,{a,b,c}},{x,1}}.
    {move,{atom,whatever},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",2730}]}.
    {call,2,{f,1447}}. % do_bs_match_1/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     {t_bitstring,16,false}}}]}}.
    {test,is_eq_exact,
          {f,1443},
          [{tr,{x,0},
               {t_union,none,none,none,
                        [{{3,{t_atom,[a]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[a]},
                                     2 => {t_atom,[b]},
                                     3 => {t_atom,[c]}}}}],
                        {t_bitstring,16,false}}},
           {literal,{a,b,c}}]}.
    {'catch',{y,3},{f,1430}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",2732}]}.
    {call,1,{f,1450}}. % do_bs_match_gh_6551a/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
  {label,1430}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,1442},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1442},[{x,1},2,{atom,badarg}]}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_r25_SUITE.erl",2733}]}.
    {call,1,{f,1450}}. % do_bs_match_gh_6551a/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1431},[{x,0},{atom,true}]}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2733}]}.
    {badmatch,{atom,true}}.
  {label,1431}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2735}]}.
    {call,1,{f,1454}}. % do_bs_match_gh_6551b/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,0}},
                                     2 => {t_integer,{0,0}}}}}]}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2736}]}.
    {call,1,{f,1454}}. % do_bs_match_gh_6551b/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_bitstring,8,false},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
          {f,1441},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_bitstring,8,false},
                          2 => {t_bitstring,8,false}}}},
           {literal,{<<"*">>,<<"*">>}}]}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2738}]}.
    {call,1,{f,1458}}. % do_bs_match_gh_6613/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[ok]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,1440},
          [{tr,{x,0},
               {t_union,{t_atom,[ok]},none,none,none,{t_bitstring,8,false}}},
           {atom,ok}]}.
    {move,{literal,<<0,0>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2739}]}.
    {call,1,{f,1458}}. % do_bs_match_gh_6613/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[ok]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,1439},
          [{tr,{x,0},
               {t_union,{t_atom,[ok]},none,none,none,{t_bitstring,8,false}}},
           {literal,<<0,0>>}]}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2741}]}.
    {call,1,{f,1684}}. % id/1
    {call,1,{f,1466}}. % do_bs_match_gh_6660/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,1438},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<"abc">>}]}.
    {'catch',{y,2},{f,1432}}.
    {move,{atom,abc},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2742}]}.
    {call,1,{f,1684}}. % id/1
    {call,1,{f,1466}}. % do_bs_match_gh_6660/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
  {label,1432}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,1437},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1437},[{x,1}]}.
    {test,test_arity,{f,1437},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1437},[{x,1},{literal,{try_clause,abc}}]}.
    {'catch',{y,1},{f,1433}}.
    {move,{literal,<<"1000">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",2744}]}.
    {call,1,{f,1684}}. % id/1
    {call,1,{f,1470}}. % do_bs_match_gh_6755/1
    {'%',{var_info,{x,0},[{type,{t_atom,[b]}}]}}.
  {label,1433}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,1436},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1436},[{x,1}]}.
    {test,test_arity,{f,1436},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,1436},[{x,1},2,{atom,case_clause}]}.
    {'catch',{y,0},{f,1434}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r25_SUITE.erl",2746}]}.
    {call,1,{f,1477}}. % do_bs_match_gh_7467/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1434}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1435},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1435},[{x,1}]}.
    {test,test_arity,{f,1435},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1435},[{x,1},{literal,{badmatch,<<>>}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,4}.
    return.
  {label,1435}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",2746}]}.
    {badmatch,{x,0}}.
  {label,1436}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",2744}]}.
    {badmatch,{x,0}}.
  {label,1437}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",2742}]}.
    {badmatch,{x,0}}.
  {label,1438}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2741}]}.
    {badmatch,{x,0}}.
  {label,1439}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2739}]}.
    {badmatch,{x,0}}.
  {label,1440}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2738}]}.
    {badmatch,{x,0}}.
  {label,1441}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2736}]}.
    {badmatch,{x,0}}.
  {label,1442}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2732}]}.
    {badmatch,{x,0}}.
  {label,1443}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",2730}]}.
    {badmatch,{x,0}}.
  {label,1444}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",2729}]}.
    {badmatch,{x,0}}.
  {label,1445}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",2728}]}.
    {badmatch,{x,0}}.


{function, do_bs_match_1, 2, 1447}.
  {label,1446}.
    {line,[{location,"bs_match_r25_SUITE.erl",2750}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_bs_match_1},2}.
  {label,1447}.
    {'%',{var_info,{x,0},[{type,{t_atom,[whatever]}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_union,none,none,none,
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     {t_bitstring,16,false}}}]}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {test,bs_start_match3,{f,1448},2,[{x,1}],{x,0}}.
    {test,bs_skip_bits2,
          {f,1448},
          [{x,0},
           {integer,8},
           1,
           {field_flags,[{anno,[2752,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_match_string,{f,1448},[{x,0},8,{string,<<0>>}]}.
    {test,bs_test_tail2,{f,1448},[{x,0},0]}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2753}]}.
    {call,1,{f,1684}}. % id/1
  {label,1448}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, do_bs_match_gh_6551a, 1, 1450}.
  {label,1449}.
    {line,[{location,"bs_match_r25_SUITE.erl",2759}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_bs_match_gh_6551a},1}.
  {label,1450}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_test_tail2,{f,1451},[{x,1},0]}.
    {move,nil,{x,1}}.
    {move,{atom,true},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2762}]}.
    {call_ext_only,2,{extfunc,erlang,'--',2}}.
  {label,1451}.
    {test,bs_test_tail2,{f,1452},[{x,1},8]}.
    {bif,'=/=',
         {f,0},
         [{tr,{x,0},{t_bitstring,8,false}},{tr,{x,0},{t_bitstring,8,false}}],
         {x,0}}.
    return.
  {label,1452}.
    {line,[{location,"bs_match_r25_SUITE.erl",2760}]}.
    {case_end,{x,0}}.


{function, do_bs_match_gh_6551b, 1, 1454}.
  {label,1453}.
    {line,[{location,"bs_match_r25_SUITE.erl",2768}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_bs_match_gh_6551b},1}.
  {label,1454}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,none,
                                   {t_integer,{0,0}},
                                   none,
                                   {t_bitstring,8,false}}}]}}.
    {test,bs_start_match3,{f,1455},1,[{x,0}],{x,1}}.
    {test,bs_test_tail2,{f,1456},[{x,1},8]}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{x,0},{x,0}]}}.
    return.
  {label,1455}.
    {move,{literal,{0,0}},{x,0}}.
    return.
  {label,1456}.
    {line,[{location,"bs_match_r25_SUITE.erl",2770}]}.
    {case_end,{x,0}}.


{function, do_bs_match_gh_6613, 1, 1458}.
  {label,1457}.
    {line,[{location,"bs_match_r25_SUITE.erl",2777}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_bs_match_gh_6613},1}.
  {label,1458}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_test_tail2,{f,1459},[{x,1},8]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1459}.
    {allocate,3,1}.
    {init_yregs,{list,[{y,1},{y,2}]}}.
    {move,{x,0},{y,0}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {'try',{y,2},{f,1461}}.
    {'try',{y,1},{f,1460}}.
    {test,bs_get_integer2,
          {f,1464},
          1,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2784,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_get_integer2,
          {f,1464},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2784,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1464},[{x,0},0]}.
    {test,is_eq_exact,
          {f,1464},
          [{tr,{x,2},{t_integer,{0,255}}},{tr,{x,1},{t_integer,{0,255}}}]}.
    {try_end,{y,1}}.
    {try_end,{y,2}}.
    {jump,{f,1462}}.
  {label,1460}.
    {try_case,{y,1}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.
  {label,1461}.
    {try_case,{y,2}}.
    {test,is_eq_exact,
          {f,1463},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,throw}]}.
  {label,1462}.
    {move,{y,0},{x,0}}.
    {deallocate,3}.
    return.
  {label,1463}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.
  {label,1464}.
    {line,[{scope,[5]},{location,"bs_match_r25_SUITE.erl",2781}]}.
    {try_case_end,{y,0}}.


{function, do_bs_match_gh_6660, 1, 1466}.
  {label,1465}.
    {line,[{location,"bs_match_r25_SUITE.erl",2795}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_bs_match_gh_6660},1}.
  {label,1466}.
    {allocate,1,1}.
    {'try',{y,0},{f,1467}}.
    {test,bs_start_match3,{f,1468},1,[{x,0}],{x,1}}.
    {test,bs_get_binary2,
          {f,1468},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {atom,all},
           8,
           {field_flags,[{anno,[2797,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {try_end,{y,0}}.
    {move,{x,1},{x,0}}.
    {deallocate,1}.
    return.
  {label,1467}.
    {try_case,{y,0}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.
  {label,1468}.
    {line,[{scope,[3]},{location,"bs_match_r25_SUITE.erl",2796}]}.
    {try_case_end,{x,0}}.


{function, do_bs_match_gh_6755, 1, 1470}.
  {label,1469}.
    {line,[{location,"bs_match_r25_SUITE.erl",2807}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_bs_match_gh_6755},1}.
  {label,1470}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {test,bs_start_match3,{f,1475},1,[{x,0}],{x,0}}.
    {test,bs_match_string,{f,1475},[{x,0},16,{string,<<"10">>}]}.
    {test,bs_get_integer2,
          {f,1475},
          1,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,16},
           1,
           {field_flags,[{anno,[2809,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {select_val,{tr,{x,1},{t_integer,{0,65535}}},
                {f,1475},
                {list,[{integer,12336},{f,1472},{integer,12337},{f,1471}]}}.
  {label,1471}.
    {test,bs_test_tail2,{f,1475},[{x,0},0]}.
    {move,{atom,test2},{x,0}}.
    {jump,{f,1473}}.
  {label,1472}.
    {test,bs_test_tail2,{f,1475},[{x,0},0]}.
    {move,{atom,test},{x,0}}.
  {label,1473}.
    {line,[{location,"bs_match_r25_SUITE.erl",2813}]}.
    {call_ext,1,{extfunc,erlang,atom_to_list,1}}.
    {test,is_eq_exact,
          {f,1474},
          [{tr,{y,0},{t_bs_matchable,1}},{literal,<<"b">>}]}.
    {move,{atom,b},{x,0}}.
    {deallocate,1}.
    return.
  {label,1474}.
    {line,[{location,"bs_match_r25_SUITE.erl",2815}]}.
    {case_end,{y,0}}.
  {label,1475}.
    {line,[{location,"bs_match_r25_SUITE.erl",2808}]}.
    {case_end,{y,0}}.


{function, do_bs_match_gh_7467, 1, 1477}.
  {label,1476}.
    {line,[{location,"bs_match_r25_SUITE.erl",2819}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_bs_match_gh_7467},1}.
  {label,1477}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_test_tail2,{f,1478},[{x,1},1]}.
    {call_only,1,{f,1477}}. % do_bs_match_gh_7467/1
  {label,1478}.
    {line,[{location,"bs_match_r25_SUITE.erl",2820}]}.
    {badmatch,{x,0}}.


{function, binary_aliases, 1, 1480}.
  {label,1479}.
    {line,[{location,"bs_match_r25_SUITE.erl",2825}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,binary_aliases},1}.
  {label,1480}.
    {allocate,26,0}.
    {init_yregs,{list,[{y,0},
                       {y,1},
                       {y,2},
                       {y,3},
                       {y,4},
                       {y,5},
                       {y,6},
                       {y,7},
                       {y,8},
                       {y,9},
                       {y,10},
                       {y,11},
                       {y,12},
                       {y,13},
                       {y,14},
                       {y,15},
                       {y,16},
                       {y,17},
                       {y,18},
                       {y,19},
                       {y,20},
                       {y,21},
                       {y,22},
                       {y,23},
                       {y,24},
                       {y,25}]}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2827}]}.
    {call,1,{f,1684}}. % id/1
    {call,1,{f,1743}}. % '-binary_aliases/1-fun-0-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,255}}}}}]}}.
    {test,is_eq_exact,
          {f,1575},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,255}},2 => {t_integer,{0,255}}}}},
           {literal,{42,42}}]}.
    {move,{literal,<<"c">>},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_r25_SUITE.erl",2828}]}.
    {call,1,{f,1684}}. % id/1
    {call,1,{f,1743}}. % '-binary_aliases/1-fun-0-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,255}}}}}]}}.
    {test,is_eq_exact,
          {f,1574},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,255}},2 => {t_integer,{0,255}}}}},
           {literal,{99,99}}]}.
    {move,{literal,{ba_foo,<<"ÿ">>,undefined,undefined}},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_r25_SUITE.erl",2831}]}.
    {call,1,{f,1684}}. % id/1
    {call,1,{f,1741}}. % '-binary_aliases/1-fun-1-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,255}}}}}]}}.
    {test,is_eq_exact,
          {f,1573},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,255}},2 => {t_integer,{0,255}}}}},
           {literal,{255,255}}]}.
    {move,{literal,{ba_foo,<<"k">>,undefined,undefined}},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_r25_SUITE.erl",2832}]}.
    {call,1,{f,1684}}. % id/1
    {call,1,{f,1741}}. % '-binary_aliases/1-fun-1-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,255}}}}}]}}.
    {test,is_eq_exact,
          {f,1572},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,255}},2 => {t_integer,{0,255}}}}},
           {literal,{107,107}}]}.
    {move,{literal,{ba_foo,<<"ÿ">>,undefined,undefined}},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_r25_SUITE.erl",2835}]}.
    {call,1,{f,1684}}. % id/1
    {call,1,{f,1739}}. % '-binary_aliases/1-fun-2-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,15}},
                                     3 => {t_integer,{0,15}}}}}]}}.
    {test,is_eq_exact,
          {f,1571},
          [{tr,{x,0},
               {t_tuple,3,true,
                        #{1 => {t_integer,{0,255}},
                          2 => {t_integer,{0,15}},
                          3 => {t_integer,{0,15}}}}},
           {literal,{255,15,15}}]}.
    {move,{literal,{ba_foo,<<"\\">>,undefined,undefined}},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_r25_SUITE.erl",2836}]}.
    {call,1,{f,1684}}. % id/1
    {call,1,{f,1739}}. % '-binary_aliases/1-fun-2-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,15}},
                                     3 => {t_integer,{0,15}}}}}]}}.
    {test,is_eq_exact,
          {f,1570},
          [{tr,{x,0},
               {t_tuple,3,true,
                        #{1 => {t_integer,{0,255}},
                          2 => {t_integer,{0,15}},
                          3 => {t_integer,{0,15}}}}},
           {literal,{92,5,12}}]}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_r25_SUITE.erl",2843}]}.
    {call,1,{f,1684}}. % id/1
    {call,1,{f,1737}}. % '-binary_aliases/1-fun-3-'/1
    {test,is_eq_exact,{f,1569},[{x,0},{integer,6}]}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_r25_SUITE.erl",2849}]}.
    {call,1,{f,1684}}. % id/1
    {call,1,{f,1734}}. % '-binary_aliases/1-fun-4-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,255}},
                                     3 => {t_bs_matchable,1}}}}]}}.
    {test,is_eq_exact,
          {f,1568},
          [{tr,{x,0},
               {t_tuple,3,true,
                        #{1 => {t_integer,{0,255}},
                          2 => {t_integer,{0,255}},
                          3 => {t_bs_matchable,1}}}},
           {literal,{42,42,<<"*">>}}]}.
    {move,{integer,12},{x,1}}.
    {move,{integer,7},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_r25_SUITE.erl",2855}]}.
    {call,2,{f,1731}}. % '-binary_aliases/1-fun-5-'/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,1567},[{tr,{x,0},{t_integer,{0,255}}},{integer,124}]}.
    {move,{integer,13},{x,1}}.
    {move,{integer,14},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_r25_SUITE.erl",2856}]}.
    {call,2,{f,1731}}. % '-binary_aliases/1-fun-5-'/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,1566},[{tr,{x,0},{t_integer,{0,255}}},{integer,237}]}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_r25_SUITE.erl",2862}]}.
    {call,1,{f,1684}}. % id/1
    {call,1,{f,1728}}. % '-binary_aliases/1-fun-6-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,{0,15}},
                                     2 => {t_integer,{0,15}},
                                     3 => {t_bs_matchable,1}}}}]}}.
    {test,is_eq_exact,
          {f,1565},
          [{tr,{x,0},
               {t_tuple,3,true,
                        #{1 => {t_integer,{0,15}},
                          2 => {t_integer,{0,15}},
                          3 => {t_bs_matchable,1}}}},
           {literal,{0,0,<<0>>}}]}.
    {'catch',{y,25},{f,1481}}.
    {move,{literal,<<1>>},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_r25_SUITE.erl",2863}]}.
    {call,1,{f,1728}}. % '-binary_aliases/1-fun-6-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,{0,15}},
                                     2 => {t_integer,{0,15}},
                                     3 => {t_bs_matchable,1}}}}]}}.
  {label,1481}.
    {catch_end,{y,25}}.
    {test,is_tagged_tuple,{f,1564},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1564},[{x,1}]}.
    {test,test_arity,{f,1564},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1564},[{x,1},{literal,{badmatch,<<1>>}}]}.
    {move,{literal,<<"ý">>},{x,0}}.
    {line,[{scope,"2"},{location,"bs_match_r25_SUITE.erl",2869}]}.
    {call,1,{f,1684}}. % id/1
    {call,1,{f,1725}}. % '-binary_aliases/1-fun-7-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,4,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,255}},
                                     3 => {t_bs_matchable,1},
                                     4 => {t_bs_matchable,1}}}}]}}.
    {test,is_eq_exact,
          {f,1563},
          [{tr,{x,0},
               {t_tuple,4,true,
                        #{1 => {t_integer,{0,255}},
                          2 => {t_integer,{0,255}},
                          3 => {t_bs_matchable,1},
                          4 => {t_bs_matchable,1}}}},
           {literal,{253,253,<<"ý">>,<<"ý">>}}]}.
    {move,{literal,<<"É">>},{x,0}}.
    {line,[{scope,"2"},{location,"bs_match_r25_SUITE.erl",2875}]}.
    {call,1,{f,1684}}. % id/1
    {call,1,{f,1722}}. % '-binary_aliases/1-fun-8-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,6,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,255}},
                                     3 => {t_bs_matchable,1},
                                     4 => {t_bs_matchable,1},
                                     5 => {t_bs_matchable,1},
                                     6 => {t_bs_matchable,1}}}}]}}.
    {test,is_eq_exact,
          {f,1562},
          [{tr,{x,0},
               {t_tuple,6,true,
                        #{1 => {t_integer,{0,255}},
                          2 => {t_integer,{0,255}},
                          3 => {t_bs_matchable,1},
                          4 => {t_bs_matchable,1},
                          5 => {t_bs_matchable,1},
                          6 => {t_bs_matchable,1}}}},
           {literal,{201,201,<<"É">>,<<"É">>,<<"É">>,<<"É">>}}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,"2"},{location,"bs_match_r25_SUITE.erl",2880}]}.
    {call,1,{f,1684}}. % id/1
    {call,1,{f,1719}}. % '-binary_aliases/1-fun-9-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,1561},
          [{tr,{x,0},{t_bitstring,256,true}},{literal,<<>>}]}.
    {'catch',{y,24},{f,1482}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,"2"},{location,"bs_match_r25_SUITE.erl",2881}]}.
    {call,1,{f,1684}}. % id/1
    {call,1,{f,1719}}. % '-binary_aliases/1-fun-9-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
  {label,1482}.
    {catch_end,{y,24}}.
    {test,is_tagged_tuple,{f,1560},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1560},[{x,1}]}.
    {test,test_arity,{f,1560},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1560},[{x,1},{literal,{badmatch,42}}]}.
    {move,{literal,<<0,0,0,0>>},{x,0}}.
    {line,[{scope,"0"},{location,"bs_match_r25_SUITE.erl",2887}]}.
    {call,1,{f,1684}}. % id/1
    {call,1,{f,1716}}. % '-binary_aliases/1-fun-10-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,8,true,
                                   #{1 => {t_bitstring,1,false},
                                     2 => {t_bitstring,1,false},
                                     3 => {t_integer,{0,65535}},
                                     4 => {t_integer,{0,65535}},
                                     5 => {t_integer,{0,255}},
                                     6 => {t_integer,{0,255}},
                                     7 => {t_integer,{0,255}},
                                     8 => {t_integer,{0,255}}}}}]}}.
    {test,is_eq_exact,
          {f,1559},
          [{tr,{x,0},
               {t_tuple,8,true,
                        #{1 => {t_bitstring,1,false},
                          2 => {t_bitstring,1,false},
                          3 => {t_integer,{0,65535}},
                          4 => {t_integer,{0,65535}},
                          5 => {t_integer,{0,255}},
                          6 => {t_integer,{0,255}},
                          7 => {t_integer,{0,255}},
                          8 => {t_integer,{0,255}}}}},
           {literal,{<<0>>,<<0,0,0>>,0,0,0,0,0,0}}]}.
    {move,{literal,<<"«ÍïW">>},{x,0}}.
    {line,[{scope,"0"},{location,"bs_match_r25_SUITE.erl",2889}]}.
    {call,1,{f,1684}}. % id/1
    {call,1,{f,1716}}. % '-binary_aliases/1-fun-10-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,8,true,
                                   #{1 => {t_bitstring,1,false},
                                     2 => {t_bitstring,1,false},
                                     3 => {t_integer,{0,65535}},
                                     4 => {t_integer,{0,65535}},
                                     5 => {t_integer,{0,255}},
                                     6 => {t_integer,{0,255}},
                                     7 => {t_integer,{0,255}},
                                     8 => {t_integer,{0,255}}}}}]}}.
    {test,is_eq_exact,
          {f,1558},
          [{tr,{x,0},
               {t_tuple,8,true,
                        #{1 => {t_bitstring,1,false},
                          2 => {t_bitstring,1,false},
                          3 => {t_integer,{0,65535}},
                          4 => {t_integer,{0,65535}},
                          5 => {t_integer,{0,255}},
                          6 => {t_integer,{0,255}},
                          7 => {t_integer,{0,255}},
                          8 => {t_integer,{0,255}}}}},
           {literal,{<<"«">>,<<"ÍïW">>,43981,61271,171,205,239,87}}]}.
    {move,{literal,#{key => <<"ÿ">>}},{x,0}}.
    {line,[{scope,"0"},{location,"bs_match_r25_SUITE.erl",2892}]}.
    {call,1,{f,1684}}. % id/1
    {call,1,{f,1714}}. % '-binary_aliases/1-fun-11-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,255}}}}}]}}.
    {test,is_eq_exact,
          {f,1557},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,255}},2 => {t_integer,{0,255}}}}},
           {literal,{255,255}}]}.
    {move,{literal,#{key => <<"Ñ">>}},{x,0}}.
    {line,[{scope,"0"},{location,"bs_match_r25_SUITE.erl",2893}]}.
    {call,1,{f,1684}}. % id/1
    {call,1,{f,1714}}. % '-binary_aliases/1-fun-11-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,255}}}}}]}}.
    {test,is_eq_exact,
          {f,1556},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,255}},2 => {t_integer,{0,255}}}}},
           {literal,{209,209}}]}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{scope,"0"},{location,"bs_match_r25_SUITE.erl",2899}]}.
    {call,1,{f,1684}}. % id/1
    {call,1,{f,1711}}. % '-binary_aliases/1-fun-12-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,'+inf'}},
                                     3 => {t_bitstring,1,false}}}}]}}.
    {test,is_eq_exact,
          {f,1555},
          [{tr,{x,0},
               {t_tuple,3,true,
                        #{1 => {t_integer,{0,255}},
                          2 => {t_integer,{0,'+inf'}},
                          3 => {t_bitstring,1,false}}}},
           {literal,{0,0,<<>>}}]}.
    {move,{literal,<<1,1:1>>},{x,0}}.
    {line,[{scope,"0"},{location,"bs_match_r25_SUITE.erl",2900}]}.
    {call,1,{f,1684}}. % id/1
    {call,1,{f,1711}}. % '-binary_aliases/1-fun-12-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,'+inf'}},
                                     3 => {t_bitstring,1,false}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1554},[{tr,{x,1},{t_integer,{0,255}}},{integer,1}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,
          {f,1554},
          [{tr,{x,1},{t_integer,{0,'+inf'}}},{integer,1}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {test,bs_match_string,{f,1554},[{x,1},1,{string,<<128>>}]}.
    {test,bs_test_tail2,{f,1554},[{x,1},0]}.
    {move,{literal,<<"\b*">>},{x,0}}.
    {line,[{scope,"0"},{location,"bs_match_r25_SUITE.erl",2901}]}.
    {call,1,{f,1684}}. % id/1
    {call,1,{f,1711}}. % '-binary_aliases/1-fun-12-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,'+inf'}},
                                     3 => {t_bitstring,1,false}}}}]}}.
    {test,is_eq_exact,
          {f,1553},
          [{tr,{x,0},
               {t_tuple,3,true,
                        #{1 => {t_integer,{0,255}},
                          2 => {t_integer,{0,'+inf'}},
                          3 => {t_bitstring,1,false}}}},
           {literal,{8,42,<<"*">>}}]}.
    {move,{literal,[<<>>|0]},{x,0}}.
    {line,[{scope,"0"},{location,"bs_match_r25_SUITE.erl",2907}]}.
    {call,1,{f,1708}}. % '-binary_aliases/1-fun-13-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,[<<"ÿÿÿÿ">>|32]},{x,0}}.
    {line,[{scope,"0"},{location,"bs_match_r25_SUITE.erl",2908}]}.
    {call,1,{f,1708}}. % '-binary_aliases/1-fun-13-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,23},{f,1483}}.
    {move,{literal,[<<0,0>>|0]},{x,0}}.
    {line,[{scope,"0"},{location,"bs_match_r25_SUITE.erl",2909}]}.
    {call,1,{f,1708}}. % '-binary_aliases/1-fun-13-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1483}.
    {catch_end,{y,23}}.
    {test,is_tagged_tuple,{f,1552},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1552},[{x,1}]}.
    {test,test_arity,{f,1552},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1552},[{x,1},{literal,{badmatch,[<<0,0>>|0]}}]}.
    {'catch',{y,22},{f,1484}}.
    {move,{literal,[<<0,0>>|atom]},{x,0}}.
    {line,[{scope,"."},{location,"bs_match_r25_SUITE.erl",2910}]}.
    {call,1,{f,1708}}. % '-binary_aliases/1-fun-13-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1484}.
    {catch_end,{y,22}}.
    {test,is_tagged_tuple,{f,1551},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1551},[{x,1}]}.
    {test,test_arity,{f,1551},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1551},[{x,1},{literal,{badmatch,[<<0,0>>|atom]}}]}.
    {move,{literal,{<<>>,0}},{x,0}}.
    {line,[{scope,","},{location,"bs_match_r25_SUITE.erl",2916}]}.
    {call,1,{f,1705}}. % '-binary_aliases/1-fun-14-'/1
    {test,is_eq_exact,{f,1550},[{x,0},{integer,0}]}.
    {move,{literal,{<<"ÿÿÿÿ">>,32}},{x,0}}.
    {line,[{scope,","},{location,"bs_match_r25_SUITE.erl",2917}]}.
    {call,1,{f,1705}}. % '-binary_aliases/1-fun-14-'/1
    {test,is_eq_exact,{f,1549},[{x,0},{integer,32}]}.
    {'catch',{y,21},{f,1485}}.
    {move,{literal,{<<0,0>>,0}},{x,0}}.
    {line,[{scope,","},{location,"bs_match_r25_SUITE.erl",2918}]}.
    {call,1,{f,1705}}. % '-binary_aliases/1-fun-14-'/1
  {label,1485}.
    {catch_end,{y,21}}.
    {test,is_tagged_tuple,{f,1548},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1548},[{x,1}]}.
    {test,test_arity,{f,1548},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1548},[{x,1},{literal,{badmatch,{<<0,0>>,0}}}]}.
    {'catch',{y,20},{f,1486}}.
    {move,{literal,{<<0,0>>,atom}},{x,0}}.
    {line,[{scope,"*"},{location,"bs_match_r25_SUITE.erl",2919}]}.
    {call,1,{f,1705}}. % '-binary_aliases/1-fun-14-'/1
  {label,1486}.
    {catch_end,{y,20}}.
    {test,is_tagged_tuple,{f,1547},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1547},[{x,1}]}.
    {test,test_arity,{f,1547},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1547},[{x,1},{literal,{badmatch,{<<0,0>>,atom}}}]}.
    {move,{literal,[{<<>>,0}]},{x,0}}.
    {line,[{scope,"("},{location,"bs_match_r25_SUITE.erl",2925}]}.
    {call,1,{f,1702}}. % '-binary_aliases/1-fun-15-'/1
    {test,is_eq_exact,{f,1546},[{x,0},{integer,0}]}.
    {move,{literal,[{<<"ÿÿÿÿ">>,32}]},{x,0}}.
    {line,[{scope,"("},{location,"bs_match_r25_SUITE.erl",2926}]}.
    {call,1,{f,1702}}. % '-binary_aliases/1-fun-15-'/1
    {test,is_eq_exact,{f,1545},[{x,0},{integer,32}]}.
    {'catch',{y,19},{f,1487}}.
    {move,{literal,[{<<0,0>>,0}]},{x,0}}.
    {line,[{scope,"("},{location,"bs_match_r25_SUITE.erl",2927}]}.
    {call,1,{f,1702}}. % '-binary_aliases/1-fun-15-'/1
  {label,1487}.
    {catch_end,{y,19}}.
    {test,is_tagged_tuple,{f,1544},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1544},[{x,1}]}.
    {test,test_arity,{f,1544},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1544},[{x,1},{literal,{badmatch,[{<<0,0>>,0}]}}]}.
    {'catch',{y,18},{f,1488}}.
    {move,{literal,[{<<0,0>>,atom}]},{x,0}}.
    {line,[{scope,"&"},{location,"bs_match_r25_SUITE.erl",2928}]}.
    {call,1,{f,1702}}. % '-binary_aliases/1-fun-15-'/1
  {label,1488}.
    {catch_end,{y,18}}.
    {test,is_tagged_tuple,{f,1543},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1543},[{x,1}]}.
    {test,test_arity,{f,1543},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1543},[{x,1},{literal,{badmatch,[{<<0,0>>,atom}]}}]}.
    {move,{literal,#{[] => <<"*">>}},{x,0}}.
    {line,[{scope,"$"},{location,"bs_match_r25_SUITE.erl",2931}]}.
    {call,1,{f,1684}}. % id/1
    {call,1,{f,1700}}. % '-binary_aliases/1-fun-16-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,17},{f,1489}}.
    {move,{literal,#{[] => <<>>}},{x,0}}.
    {line,[{scope,"$"},{location,"bs_match_r25_SUITE.erl",2932}]}.
    {call,1,{f,1684}}. % id/1
    {call,1,{f,1700}}. % '-binary_aliases/1-fun-16-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1489}.
    {catch_end,{y,17}}.
    {test,is_tagged_tuple,{f,1542},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1542},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,16},{f,1490}}.
    {move,{atom,atom},{x,0}}.
    {line,[{scope,"#$"},{location,"bs_match_r25_SUITE.erl",2933}]}.
    {call,1,{f,1684}}. % id/1
    {call,1,{f,1700}}. % '-binary_aliases/1-fun-16-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1490}.
    {catch_end,{y,16}}.
    {test,is_tagged_tuple,{f,1541},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1541},[{x,1},2,{atom,function_clause}]}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,"!\""},{location,"bs_match_r25_SUITE.erl",2942}]}.
    {call,1,{f,1684}}. % id/1
    {call,1,{f,1697}}. % '-binary_aliases/1-fun-17-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1540},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope," "},{location,"bs_match_r25_SUITE.erl",2943}]}.
    {call,1,{f,1697}}. % '-binary_aliases/1-fun-17-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1539},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{literal,<<1:1>>},{x,0}}.
    {line,[{scope," "},{location,"bs_match_r25_SUITE.erl",2944}]}.
    {call,1,{f,1697}}. % '-binary_aliases/1-fun-17-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1538},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{atom,atom},{x,0}}.
    {line,[{scope," "},{location,"bs_match_r25_SUITE.erl",2945}]}.
    {call,1,{f,1697}}. % '-binary_aliases/1-fun-17-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {'catch',{y,15},{f,1491}}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{scope," "},{location,"bs_match_r25_SUITE.erl",2950}]}.
    {call,1,{f,1695}}. % '-binary_aliases/1-fun-18-'/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1491}.
    {catch_end,{y,15}}.
    {test,is_tagged_tuple,{f,1537},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1537},[{x,1}]}.
    {test,test_arity,{f,1537},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1537},[{x,1},{literal,{badmatch,<<0>>}}]}.
    {'catch',{y,14},{f,1492}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[30]},{location,"bs_match_r25_SUITE.erl",2951}]}.
    {call,1,{f,1695}}. % '-binary_aliases/1-fun-18-'/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1492}.
    {catch_end,{y,14}}.
    {test,is_tagged_tuple,{f,1536},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1536},[{x,1}]}.
    {test,test_arity,{f,1536},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1536},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,13},{f,1493}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[28]},{location,"bs_match_r25_SUITE.erl",2952}]}.
    {call,1,{f,1695}}. % '-binary_aliases/1-fun-18-'/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1493}.
    {catch_end,{y,13}}.
    {test,is_tagged_tuple,{f,1535},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1535},[{x,1}]}.
    {test,test_arity,{f,1535},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1535},[{x,1},{literal,{badmatch,0}}]}.
    {move,{literal,[<<>>]},{x,0}}.
    {line,[{scope,[26]},{location,"bs_match_r25_SUITE.erl",2955}]}.
    {call,1,{f,1693}}. % '-binary_aliases/1-fun-19-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[26]},{location,"bs_match_r25_SUITE.erl",2957}]}.
    {call,1,{f,1684}}. % id/1
    {move,{x,0},{y,25}}.
    {move,{literal,<<0>>},{x,0}}.
    {call,1,{f,1684}}. % id/1
    {move,{x,0},{y,24}}.
    {move,{integer,0},{x,0}}.
    {call,1,{f,1684}}. % id/1
    {move,{y,24},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{y,25},{x,0}}.
    {init_yregs,{list,[{y,24},{y,25}]}}.
    {call,3,{f,1577}}. % gh_6467/3
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
    {'catch',{y,12},{f,1494}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[26]},{location,"bs_match_r25_SUITE.erl",2958}]}.
    {call,1,{f,1684}}. % id/1
    {move,{x,0},{y,25}}.
    {move,{literal,<<0>>},{x,0}}.
    {call,1,{f,1684}}. % id/1
    {move,{x,0},{y,24}}.
    {move,nil,{x,0}}.
    {call,1,{f,1684}}. % id/1
    {move,{y,24},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{y,25},{x,0}}.
    {init_yregs,{list,[{y,24},{y,25}]}}.
    {call,3,{f,1577}}. % gh_6467/3
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
  {label,1494}.
    {catch_end,{y,12}}.
    {test,is_tagged_tuple,{f,1534},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1534},[{x,1}]}.
    {test,test_arity,{f,1534},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1534},[{x,1},{literal,{badmatch,0}}]}.
    {'catch',{y,11},{f,1495}}.
    {move,{literal,<<7>>},{x,0}}.
    {line,[{scope,[24]},{location,"bs_match_r25_SUITE.erl",2959}]}.
    {call,1,{f,1684}}. % id/1
    {move,{x,0},{y,25}}.
    {move,{literal,<<"!">>},{x,0}}.
    {call,1,{f,1684}}. % id/1
    {move,{x,0},{y,24}}.
    {move,nil,{x,0}}.
    {call,1,{f,1684}}. % id/1
    {move,{y,24},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{y,25},{x,0}}.
    {init_yregs,{list,[{y,24},{y,25}]}}.
    {call,3,{f,1577}}. % gh_6467/3
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
  {label,1495}.
    {catch_end,{y,11}}.
    {test,is_tagged_tuple,{f,1533},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1533},[{x,1}]}.
    {test,test_arity,{f,1533},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1533},[{x,1},{literal,{badmatch,<<7>>}}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2964}]}.
    {call,1,{f,1690}}. % '-binary_aliases/1-fun-20-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1532},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2965}]}.
    {call,1,{f,1690}}. % '-binary_aliases/1-fun-20-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1531},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2966}]}.
    {call,1,{f,1690}}. % '-binary_aliases/1-fun-20-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,true},{x,1}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2968}]}.
    {call,2,{f,1580}}. % gh6415_a/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,true]}}]}}.
    {test,is_eq_exact,{f,1530},[{tr,{x,0},{t_atom,[error,true]}},{atom,true}]}.
    {move,{atom,false},{x,1}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2969}]}.
    {call,2,{f,1580}}. % gh6415_a/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,false},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2970}]}.
    {call,2,{f,1580}}. % gh6415_a/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,not_bool},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2971}]}.
    {call,2,{f,1580}}. % gh6415_a/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,true},{x,1}}.
    {move,{atom,any},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2972}]}.
    {call,2,{f,1580}}. % gh6415_a/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,false},{x,1}}.
    {move,{atom,any},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2973}]}.
    {call,2,{f,1580}}. % gh6415_a/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,<<"c">>},{x,1}}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2975}]}.
    {call,2,{f,1583}}. % gh6415_b/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1529},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{literal,<<"c">>},{x,1}}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2976}]}.
    {call,2,{f,1583}}. % gh6415_b/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1528},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{literal,<<>>},{x,1}}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2977}]}.
    {call,2,{f,1583}}. % gh6415_b/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1527},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{literal,<<>>},{x,1}}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2978}]}.
    {call,2,{f,1583}}. % gh6415_b/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1526},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{atom,true},{x,1}}.
    {move,{literal,<<"\n">>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2980}]}.
    {call,2,{f,1587}}. % gh6415_c/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1525},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{atom,false},{x,1}}.
    {move,{literal,<<"\n">>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2981}]}.
    {call,2,{f,1587}}. % gh6415_c/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,true},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2982}]}.
    {call,2,{f,1587}}. % gh6415_c/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1524},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{atom,true},{x,1}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2983}]}.
    {call,2,{f,1587}}. % gh6415_c/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2985}]}.
    {call,1,{f,1590}}. % gh6415_case_clause/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2986}]}.
    {call,1,{f,1590}}. % gh6415_case_clause/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2987}]}.
    {call,1,{f,1590}}. % gh6415_case_clause/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2989}]}.
    {call,1,{f,1608}}. % gh6415_nomatch/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2990}]}.
    {call,1,{f,1608}}. % gh6415_nomatch/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,<<"ab">>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2991}]}.
    {call,1,{f,1608}}. % gh6415_nomatch/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,#{0 => <<>>}},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2992}]}.
    {call,1,{f,1608}}. % gh6415_nomatch/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,#{0 => <<"*">>}},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2993}]}.
    {call,1,{f,1608}}. % gh6415_nomatch/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,#{0 => 42}},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2994}]}.
    {call,1,{f,1608}}. % gh6415_nomatch/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,#{}},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2995}]}.
    {call,1,{f,1608}}. % gh6415_nomatch/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,{a,tuple}},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2996}]}.
    {call,1,{f,1608}}. % gh6415_nomatch/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,an_atom},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2997}]}.
    {call,1,{f,1608}}. % gh6415_nomatch/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2999}]}.
    {call,1,{f,1684}}. % id/1
    {call,1,{f,1658}}. % gh6415_match_a/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,1523},[{tr,{x,0},{t_integer,{0,255}}},{integer,42}]}.
    {'catch',{y,10},{f,1496}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",3000}]}.
    {call,1,{f,1684}}. % id/1
    {call,1,{f,1658}}. % gh6415_match_a/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
  {label,1496}.
    {catch_end,{y,10}}.
    {test,is_tagged_tuple,{f,1522},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1522},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,9},{f,1497}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[21,22]},{location,"bs_match_r25_SUITE.erl",3001}]}.
    {call,1,{f,1684}}. % id/1
    {call,1,{f,1658}}. % gh6415_match_a/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
  {label,1497}.
    {catch_end,{y,9}}.
    {test,is_tagged_tuple,{f,1521},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1521},[{x,1},2,{atom,function_clause}]}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[19,20]},{location,"bs_match_r25_SUITE.erl",3003}]}.
    {call,1,{f,1684}}. % id/1
    {call,1,{f,1660}}. % gh6415_match_b/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
          {f,1520},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,255}},
                          2 => {t_bitstring,8,false}}}},
           {literal,{42,<<>>}}]}.
    {'catch',{y,8},{f,1498}}.
    {move,{literal,<<1,2>>},{x,0}}.
    {line,[{scope,[18]},{location,"bs_match_r25_SUITE.erl",3004}]}.
    {call,1,{f,1684}}. % id/1
    {call,1,{f,1660}}. % gh6415_match_b/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_bitstring,8,false}}}}]}}.
  {label,1498}.
    {catch_end,{y,8}}.
    {test,is_tagged_tuple,{f,1519},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1519},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,7},{f,1499}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[17,18]},{location,"bs_match_r25_SUITE.erl",3005}]}.
    {call,1,{f,1684}}. % id/1
    {call,1,{f,1660}}. % gh6415_match_b/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_bitstring,8,false}}}}]}}.
  {label,1499}.
    {catch_end,{y,7}}.
    {test,is_tagged_tuple,{f,1518},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1518},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,6},{f,1500}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[15,16]},{location,"bs_match_r25_SUITE.erl",3006}]}.
    {call,1,{f,1684}}. % id/1
    {call,1,{f,1660}}. % gh6415_match_b/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_bitstring,8,false}}}}]}}.
  {label,1500}.
    {catch_end,{y,6}}.
    {test,is_tagged_tuple,{f,1517},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1517},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,5},{f,1501}}.
    {line,[{scope,[13,14]},{location,"bs_match_r25_SUITE.erl",3008}]}.
    {call,0,{f,1662}}. % gh6415_match_c/0
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
  {label,1501}.
    {catch_end,{y,5}}.
    {test,is_tagged_tuple,{f,1516},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1516},[{x,1}]}.
    {test,test_arity,{f,1516},[{x,1},2]}.
    {move,{literal,<<"£">>},{x,0}}.
    {line,[{scope,"\v\f"},{location,"bs_match_r25_SUITE.erl",3010}]}.
    {call,1,{f,1684}}. % id/1
    {call,1,{f,1666}}. % gh6415_match_d/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,4},{f,1502}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,"\v\f"},{location,"bs_match_r25_SUITE.erl",3011}]}.
    {call,1,{f,1684}}. % id/1
    {call,1,{f,1666}}. % gh6415_match_d/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1502}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,1515},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1515},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,3},{f,1503}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,"\t\n"},{location,"bs_match_r25_SUITE.erl",3012}]}.
    {call,1,{f,1684}}. % id/1
    {call,1,{f,1666}}. % gh6415_match_d/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1503}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,1514},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1514},[{x,1},2,{atom,function_clause}]}.
    {move,{literal,<<163,0>>},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_r25_SUITE.erl",3014}]}.
    {call,1,{f,1684}}. % id/1
    {call,1,{f,1668}}. % gh6415_match_e/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<"c\b*">>},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_r25_SUITE.erl",3015}]}.
    {call,1,{f,1684}}. % id/1
    {call,1,{f,1668}}. % gh6415_match_e/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<99,17,255,255,1:1>>},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_r25_SUITE.erl",3016}]}.
    {call,1,{f,1684}}. % id/1
    {call,1,{f,1668}}. % gh6415_match_e/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,2},{f,1504}}.
    {move,{literal,<<"£">>},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_r25_SUITE.erl",3017}]}.
    {call,1,{f,1684}}. % id/1
    {call,1,{f,1668}}. % gh6415_match_e/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1504}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,1513},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1513},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,1},{f,1505}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r25_SUITE.erl",3018}]}.
    {call,1,{f,1684}}. % id/1
    {call,1,{f,1668}}. % gh6415_match_e/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1505}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,1512},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1512},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,0},{f,1506}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r25_SUITE.erl",3019}]}.
    {call,1,{f,1684}}. % id/1
    {call,1,{f,1668}}. % gh6415_match_e/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1506}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1511},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1511},[{x,1},2,{atom,function_clause}]}.
    {move,{literal,<<17,15,48,1:1>>},{x,0}}.
    {line,[{scope,[1,2]},{location,"bs_match_r25_SUITE.erl",3021}]}.
    {call,1,{f,1684}}. % id/1
    {call,1,{f,1670}}. % gh6415_match_f/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[error]},
                                   none,
                                   {t_integer,{0,131071}},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,1510},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,
                        {t_integer,{0,131071}},
                        none,none}},
           {integer,7777}]}.
    {move,{literal,<<17,2,105,0:1>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",3022}]}.
    {call,1,{f,1684}}. % id/1
    {call,1,{f,1670}}. % gh6415_match_f/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[error]},
                                   none,
                                   {t_integer,{0,131071}},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,1509},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,
                        {t_integer,{0,131071}},
                        none,none}},
           {integer,1234}]}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",3023}]}.
    {call,1,{f,1684}}. % id/1
    {call,1,{f,1670}}. % gh6415_match_f/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[error]},
                                   none,
                                   {t_integer,{0,131071}},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,1508},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,
                        {t_integer,{0,131071}},
                        none,none}},
           {atom,error}]}.
    {move,{literal,<<"\b*">>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",3024}]}.
    {call,1,{f,1684}}. % id/1
    {call,1,{f,1670}}. % gh6415_match_f/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[error]},
                                   none,
                                   {t_integer,{0,131071}},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,1507},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,
                        {t_integer,{0,131071}},
                        none,none}},
           {atom,error}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,26}.
    return.
  {label,1507}.
    {badmatch,{x,0}}.
  {label,1508}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",3023}]}.
    {badmatch,{x,0}}.
  {label,1509}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",3022}]}.
    {badmatch,{x,0}}.
  {label,1510}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",3021}]}.
    {badmatch,{x,0}}.
  {label,1511}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",3019}]}.
    {badmatch,{x,0}}.
  {label,1512}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",3018}]}.
    {badmatch,{x,0}}.
  {label,1513}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",3017}]}.
    {badmatch,{x,0}}.
  {label,1514}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",3012}]}.
    {badmatch,{x,0}}.
  {label,1515}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",3011}]}.
    {badmatch,{x,0}}.
  {label,1516}.
    {line,[{scope,"\n"},{location,"bs_match_r25_SUITE.erl",3008}]}.
    {badmatch,{x,0}}.
  {label,1517}.
    {line,[{scope,"\f"},{location,"bs_match_r25_SUITE.erl",3006}]}.
    {badmatch,{x,0}}.
  {label,1518}.
    {line,[{scope,[14]},{location,"bs_match_r25_SUITE.erl",3005}]}.
    {badmatch,{x,0}}.
  {label,1519}.
    {line,[{scope,[16]},{location,"bs_match_r25_SUITE.erl",3004}]}.
    {badmatch,{x,0}}.
  {label,1520}.
    {line,[{scope,[18]},{location,"bs_match_r25_SUITE.erl",3003}]}.
    {badmatch,{x,0}}.
  {label,1521}.
    {line,[{scope,[18]},{location,"bs_match_r25_SUITE.erl",3001}]}.
    {badmatch,{x,0}}.
  {label,1522}.
    {line,[{scope,[20]},{location,"bs_match_r25_SUITE.erl",3000}]}.
    {badmatch,{x,0}}.
  {label,1523}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2999}]}.
    {badmatch,{x,0}}.
  {label,1524}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2982}]}.
    {badmatch,{atom,ok}}.
  {label,1525}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2980}]}.
    {badmatch,{atom,error}}.
  {label,1526}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2978}]}.
    {badmatch,{atom,ok}}.
  {label,1527}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2977}]}.
    {badmatch,{atom,ok}}.
  {label,1528}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2976}]}.
    {badmatch,{atom,error}}.
  {label,1529}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2975}]}.
    {badmatch,{atom,error}}.
  {label,1530}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2968}]}.
    {badmatch,{atom,error}}.
  {label,1531}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2965}]}.
    {badmatch,{atom,ok}}.
  {label,1532}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2964}]}.
    {badmatch,{atom,error}}.
  {label,1533}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2959}]}.
    {badmatch,{x,0}}.
  {label,1534}.
    {line,[{scope,[24]},{location,"bs_match_r25_SUITE.erl",2958}]}.
    {badmatch,{x,0}}.
  {label,1535}.
    {line,[{scope,[26]},{location,"bs_match_r25_SUITE.erl",2952}]}.
    {badmatch,{x,0}}.
  {label,1536}.
    {line,[{scope,[28]},{location,"bs_match_r25_SUITE.erl",2951}]}.
    {badmatch,{x,0}}.
  {label,1537}.
    {line,[{scope,[30]},{location,"bs_match_r25_SUITE.erl",2950}]}.
    {badmatch,{x,0}}.
  {label,1538}.
    {line,[{scope," "},{location,"bs_match_r25_SUITE.erl",2944}]}.
    {badmatch,{atom,ok}}.
  {label,1539}.
    {line,[{scope," "},{location,"bs_match_r25_SUITE.erl",2943}]}.
    {badmatch,{atom,ok}}.
  {label,1540}.
    {line,[{scope," "},{location,"bs_match_r25_SUITE.erl",2942}]}.
    {badmatch,{atom,error}}.
  {label,1541}.
    {line,[{scope," "},{location,"bs_match_r25_SUITE.erl",2933}]}.
    {badmatch,{x,0}}.
  {label,1542}.
    {line,[{scope,"\""},{location,"bs_match_r25_SUITE.erl",2932}]}.
    {badmatch,{x,0}}.
  {label,1543}.
    {line,[{scope,"$"},{location,"bs_match_r25_SUITE.erl",2928}]}.
    {badmatch,{x,0}}.
  {label,1544}.
    {line,[{scope,"&"},{location,"bs_match_r25_SUITE.erl",2927}]}.
    {badmatch,{x,0}}.
  {label,1545}.
    {line,[{scope,"("},{location,"bs_match_r25_SUITE.erl",2926}]}.
    {badmatch,{x,0}}.
  {label,1546}.
    {line,[{scope,"("},{location,"bs_match_r25_SUITE.erl",2925}]}.
    {badmatch,{x,0}}.
  {label,1547}.
    {line,[{scope,"("},{location,"bs_match_r25_SUITE.erl",2919}]}.
    {badmatch,{x,0}}.
  {label,1548}.
    {line,[{scope,"*"},{location,"bs_match_r25_SUITE.erl",2918}]}.
    {badmatch,{x,0}}.
  {label,1549}.
    {line,[{scope,","},{location,"bs_match_r25_SUITE.erl",2917}]}.
    {badmatch,{x,0}}.
  {label,1550}.
    {line,[{scope,","},{location,"bs_match_r25_SUITE.erl",2916}]}.
    {badmatch,{x,0}}.
  {label,1551}.
    {line,[{scope,","},{location,"bs_match_r25_SUITE.erl",2910}]}.
    {badmatch,{x,0}}.
  {label,1552}.
    {line,[{scope,"."},{location,"bs_match_r25_SUITE.erl",2909}]}.
    {badmatch,{x,0}}.
  {label,1553}.
    {line,[{scope,"0"},{location,"bs_match_r25_SUITE.erl",2901}]}.
    {badmatch,{x,0}}.
  {label,1554}.
    {line,[{scope,"0"},{location,"bs_match_r25_SUITE.erl",2900}]}.
    {badmatch,{x,0}}.
  {label,1555}.
    {line,[{scope,"0"},{location,"bs_match_r25_SUITE.erl",2899}]}.
    {badmatch,{x,0}}.
  {label,1556}.
    {line,[{scope,"0"},{location,"bs_match_r25_SUITE.erl",2893}]}.
    {badmatch,{x,0}}.
  {label,1557}.
    {line,[{scope,"0"},{location,"bs_match_r25_SUITE.erl",2892}]}.
    {badmatch,{x,0}}.
  {label,1558}.
    {line,[{scope,"0"},{location,"bs_match_r25_SUITE.erl",2888}]}.
    {badmatch,{x,0}}.
  {label,1559}.
    {line,[{scope,"0"},{location,"bs_match_r25_SUITE.erl",2887}]}.
    {badmatch,{x,0}}.
  {label,1560}.
    {line,[{scope,"0"},{location,"bs_match_r25_SUITE.erl",2881}]}.
    {badmatch,{x,0}}.
  {label,1561}.
    {line,[{scope,"2"},{location,"bs_match_r25_SUITE.erl",2880}]}.
    {badmatch,{x,0}}.
  {label,1562}.
    {line,[{scope,"2"},{location,"bs_match_r25_SUITE.erl",2875}]}.
    {badmatch,{x,0}}.
  {label,1563}.
    {line,[{scope,"2"},{location,"bs_match_r25_SUITE.erl",2869}]}.
    {badmatch,{x,0}}.
  {label,1564}.
    {line,[{scope,"2"},{location,"bs_match_r25_SUITE.erl",2863}]}.
    {badmatch,{x,0}}.
  {label,1565}.
    {line,[{scope,"4"},{location,"bs_match_r25_SUITE.erl",2862}]}.
    {badmatch,{x,0}}.
  {label,1566}.
    {line,[{scope,"4"},{location,"bs_match_r25_SUITE.erl",2856}]}.
    {badmatch,{x,0}}.
  {label,1567}.
    {line,[{scope,"4"},{location,"bs_match_r25_SUITE.erl",2855}]}.
    {badmatch,{x,0}}.
  {label,1568}.
    {line,[{scope,"4"},{location,"bs_match_r25_SUITE.erl",2849}]}.
    {badmatch,{x,0}}.
  {label,1569}.
    {line,[{scope,"4"},{location,"bs_match_r25_SUITE.erl",2843}]}.
    {badmatch,{x,0}}.
  {label,1570}.
    {line,[{scope,"4"},{location,"bs_match_r25_SUITE.erl",2836}]}.
    {badmatch,{x,0}}.
  {label,1571}.
    {line,[{scope,"4"},{location,"bs_match_r25_SUITE.erl",2835}]}.
    {badmatch,{x,0}}.
  {label,1572}.
    {line,[{scope,"4"},{location,"bs_match_r25_SUITE.erl",2832}]}.
    {badmatch,{x,0}}.
  {label,1573}.
    {line,[{scope,"4"},{location,"bs_match_r25_SUITE.erl",2831}]}.
    {badmatch,{x,0}}.
  {label,1574}.
    {line,[{scope,"4"},{location,"bs_match_r25_SUITE.erl",2828}]}.
    {badmatch,{x,0}}.
  {label,1575}.
    {line,[{scope,"4"},{location,"bs_match_r25_SUITE.erl",2827}]}.
    {badmatch,{x,0}}.


{function, gh_6467, 3, 1577}.
  {label,1576}.
    {line,[{location,"bs_match_r25_SUITE.erl",3031}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh_6467},3}.
  {label,1577}.
    {test,is_nil,{f,1578},[{x,2}]}.
    {line,[{location,"bs_match_r25_SUITE.erl",3032}]}.
    {badmatch,{x,0}}.
  {label,1578}.
    {test,bs_start_match3,{f,1576},3,[{x,1}],{x,3}}.
    {test,bs_test_tail2,{f,1576},[{x,3},8]}.
    {move,{atom,a},{x,0}}.
    return.


{function, gh6415_a, 2, 1580}.
  {label,1579}.
    {line,[{location,"bs_match_r25_SUITE.erl",3036}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_a},2}.
  {label,1580}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[any]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[false,not_bool,true]}}]}}.
    {test,bs_start_match3,{f,1581},2,[{x,0}],{x,0}}.
    {test,bs_test_tail2,{f,1581},[{x,0},8]}.
    {test,is_eq_exact,{f,1581},[{x,1},{atom,true}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,1581}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_b, 2, 1583}.
  {label,1582}.
    {line,[{location,"bs_match_r25_SUITE.erl",3041}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_b},2}.
  {label,1583}.
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,1585},
          2,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[3041,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1585},[{x,1},0]}.
    {bif,'<',
         {f,0},
         [{tr,{x,0},{t_atom,[false,true]}},{tr,{x,2},{t_integer,{0,255}}}],
         {x,1}}.
    {bif,'xor',
         {f,0},
         [{tr,{x,1},{t_atom,[false,true]}},{tr,{x,0},{t_atom,[false,true]}}],
         {x,1}}.
    {bif,'=:=',{f,0},[{tr,{x,0},{t_atom,[false,true]}},{atom,false}],{x,2}}.
    {bif,'or',
         {f,0},
         [{tr,{x,2},{t_atom,[false,true]}},{tr,{x,0},{t_atom,[false,true]}}],
         {x,0}}.
    {test,is_eq_exact,
          {f,1584},
          [{tr,{x,1},{t_atom,[false,true]}},{atom,false}]}.
    {test,is_eq_exact,{f,1585},[{tr,{x,0},{t_atom,[false,true]}},{atom,true}]}.
  {label,1584}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1585}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_c, 2, 1587}.
  {label,1586}.
    {line,[{location,"bs_match_r25_SUITE.erl",3046}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_c},2}.
  {label,1587}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,none,
                                   {t_integer,{42,42}},
                                   none,
                                   {t_bitstring,8,false}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[false,true]}}]}}.
    {test,bs_start_match3,{f,1588},2,[{x,0}],{x,0}}.
    {test,bs_test_tail2,{f,1588},[{x,0},8]}.
    {test,is_eq_exact,{f,1588},[{x,1},{atom,true}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1588}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_case_clause, 1, 1590}.
  {label,1589}.
    {line,[{location,"bs_match_r25_SUITE.erl",3051}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_case_clause},1}.
  {label,1590}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[a]},
                                   none,
                                   {t_integer,{42,42}},
                                   none,
                                   {t_bitstring,8,false}}}]}}.
    {allocate,5,1}.
    {init_yregs,{list,[{y,1},{y,2},{y,3}]}}.
    {move,{x,0},{y,0}}.
    {'catch',{y,4},{f,1591}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3052}]}.
    {call,1,{f,1600}}. % gh6415_case_clause_a/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1591}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,1598},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1598},[{x,1}]}.
    {test,test_arity,{f,1598},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1598},[{x,1},{literal,{case_clause,0}}]}.
    {'catch',{y,3},{f,1592}}.
    {move,{y,0},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",3053}]}.
    {call,1,{f,1602}}. % gh6415_case_clause_b/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1592}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,1597},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1597},[{x,1}]}.
    {test,test_arity,{f,1597},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1597},[{x,1},{literal,{case_clause,0}}]}.
    {'catch',{y,2},{f,1593}}.
    {move,{y,0},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",3054}]}.
    {call,1,{f,1604}}. % gh6415_case_clause_c/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1593}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,1596},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1596},[{x,1}]}.
    {test,test_arity,{f,1596},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1596},[{x,1},{literal,{case_clause,0}}]}.
    {'catch',{y,1},{f,1594}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",3055}]}.
    {call,1,{f,1606}}. % gh6415_case_clause_d/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1594}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,1595},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1595},[{x,1}]}.
    {test,test_arity,{f,1595},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1595},[{x,1},{literal,{case_clause,0}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,5}.
    return.
  {label,1595}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",3055}]}.
    {badmatch,{x,0}}.
  {label,1596}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",3054}]}.
    {badmatch,{x,0}}.
  {label,1597}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",3053}]}.
    {badmatch,{x,0}}.
  {label,1598}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",3052}]}.
    {badmatch,{x,0}}.


{function, gh6415_case_clause_a, 1, 1600}.
  {label,1599}.
    {line,[{location,"bs_match_r25_SUITE.erl",3058}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_case_clause_a},1}.
  {label,1600}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[a]},
                                   none,
                                   {t_integer,{42,42}},
                                   none,
                                   {t_bitstring,8,false}}}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3059}]}.
    {case_end,{integer,0}}.


{function, gh6415_case_clause_b, 1, 1602}.
  {label,1601}.
    {line,[{location,"bs_match_r25_SUITE.erl",3065}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_case_clause_b},1}.
  {label,1602}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[a]},
                                   none,
                                   {t_integer,{42,42}},
                                   none,
                                   {t_bitstring,8,false}}}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3066}]}.
    {case_end,{integer,0}}.


{function, gh6415_case_clause_c, 1, 1604}.
  {label,1603}.
    {line,[{location,"bs_match_r25_SUITE.erl",3072}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_case_clause_c},1}.
  {label,1604}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[a]},
                                   none,
                                   {t_integer,{42,42}},
                                   none,
                                   {t_bitstring,8,false}}}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3073}]}.
    {case_end,{integer,0}}.


{function, gh6415_case_clause_d, 1, 1606}.
  {label,1605}.
    {line,[{location,"bs_match_r25_SUITE.erl",3079}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_case_clause_d},1}.
  {label,1606}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[a]},
                                   none,
                                   {t_integer,{42,42}},
                                   none,
                                   {t_bitstring,8,false}}}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3080}]}.
    {case_end,{integer,0}}.


{function, gh6415_nomatch, 1, 1608}.
  {label,1607}.
    {line,[{location,"bs_match_r25_SUITE.erl",3086}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_nomatch},1}.
  {label,1608}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[an_atom]},
                     none,none,
                     [{{2,{t_atom,[a]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[a]},2 => {t_atom,[tuple]}}}}],
                     other}}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3087}]}.
    {call,1,{f,1684}}. % id/1
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3088}]}.
    {call,1,{f,1621}}. % gh6415_nomatch_a/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3089}]}.
    {call,1,{f,1624}}. % gh6415_nomatch_b/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,
          {f,1619},
          [{tr,{x,0},{t_atom,[error,ok]}},{tr,{y,0},{t_atom,[error,ok]}}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3090}]}.
    {call,1,{f,1627}}. % gh6415_nomatch_c/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {test,is_eq_exact,{f,1618},[{tr,{y,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3091}]}.
    {call,1,{f,1629}}. % gh6415_nomatch_d/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1617},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3092}]}.
    {call,1,{f,1632}}. % gh6415_nomatch_e/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1616},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3093}]}.
    {call,1,{f,1635}}. % gh6415_nomatch_f/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1615},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3094}]}.
    {call,1,{f,1638}}. % gh6415_nomatch_g/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1614},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3095}]}.
    {call,1,{f,1641}}. % gh6415_nomatch_h/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1613},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3096}]}.
    {call,1,{f,1644}}. % gh6415_nomatch_i/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1612},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3097}]}.
    {call,1,{f,1647}}. % gh6415_nomatch_j/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[error]},
                     none,none,
                     {t_tuple,2,true,
                         #{1 => {t_integer,{0,65535}},
                           2 => {t_bitstring,8,false}}},
                     none}}]}}.
    {test,is_eq_exact,
          {f,1611},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,none,
                        {t_tuple,2,true,
                                 #{1 => {t_integer,{0,65535}},
                                   2 => {t_bitstring,8,false}}},
                        none}},
           {atom,error}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3098}]}.
    {call,1,{f,1650}}. % gh6415_nomatch_k/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1610},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{y,1},{x,0}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {line,[{location,"bs_match_r25_SUITE.erl",3099}]}.
    {call,1,{f,1655}}. % gh6415_nomatch_l/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1609},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1609}.
    {badmatch,{atom,ok}}.
  {label,1610}.
    {line,[{location,"bs_match_r25_SUITE.erl",3098}]}.
    {badmatch,{atom,ok}}.
  {label,1611}.
    {line,[{location,"bs_match_r25_SUITE.erl",3097}]}.
    {badmatch,{x,0}}.
  {label,1612}.
    {line,[{location,"bs_match_r25_SUITE.erl",3096}]}.
    {badmatch,{atom,ok}}.
  {label,1613}.
    {line,[{location,"bs_match_r25_SUITE.erl",3095}]}.
    {badmatch,{atom,ok}}.
  {label,1614}.
    {line,[{location,"bs_match_r25_SUITE.erl",3094}]}.
    {badmatch,{atom,ok}}.
  {label,1615}.
    {line,[{location,"bs_match_r25_SUITE.erl",3093}]}.
    {badmatch,{atom,ok}}.
  {label,1616}.
    {line,[{location,"bs_match_r25_SUITE.erl",3092}]}.
    {badmatch,{atom,ok}}.
  {label,1617}.
    {line,[{location,"bs_match_r25_SUITE.erl",3091}]}.
    {badmatch,{atom,ok}}.
  {label,1618}.
    {line,[{location,"bs_match_r25_SUITE.erl",3090}]}.
    {badmatch,{atom,error}}.
  {label,1619}.
    {line,[{location,"bs_match_r25_SUITE.erl",3089}]}.
    {badmatch,{x,0}}.


{function, gh6415_nomatch_a, 1, 1621}.
  {label,1620}.
    {line,[{location,"bs_match_r25_SUITE.erl",3102}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_nomatch_a},1}.
  {label,1621}.
    {test,is_map,{f,1622},[{x,0}]}.
    {get_map_elements,{f,1622},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{integer,0},{x,0}]}}.
    {test,bs_start_match3,{f,1622},1,[{x,0}],{x,1}}.
    {test,bs_test_tail2,{f,1622},[{x,1},0]}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_test_tail2,{f,1622},[{x,0},8]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1622}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_b, 1, 1624}.
  {label,1623}.
    {line,[{location,"bs_match_r25_SUITE.erl",3105}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_nomatch_b},1}.
  {label,1624}.
    {test,is_map,{f,1625},[{x,0}]}.
    {get_map_elements,{f,1625},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{integer,0},{x,0}]}}.
    {test,bs_start_match3,{f,1625},1,[{x,0}],{x,1}}.
    {test,bs_test_tail2,{f,1625},[{x,1},16]}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_test_tail2,{f,1625},[{x,0},8]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1625}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_c, 1, 1627}.
  {label,1626}.
    {line,[{location,"bs_match_r25_SUITE.erl",3108}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_nomatch_c},1}.
  {label,1627}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_d, 1, 1629}.
  {label,1628}.
    {line,[{location,"bs_match_r25_SUITE.erl",3111}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_nomatch_d},1}.
  {label,1629}.
    {test,is_map,{f,1630},[{x,0}]}.
    {get_map_elements,{f,1630},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{integer,0},{x,0}]}}.
    {test,bs_start_match3,{f,1630},1,[{x,0}],{x,1}}.
    {test,bs_test_tail2,{f,1630},[{x,1},8]}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_test_tail2,{f,1630},[{x,0},0]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1630}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_e, 1, 1632}.
  {label,1631}.
    {line,[{location,"bs_match_r25_SUITE.erl",3114}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_nomatch_e},1}.
  {label,1632}.
    {test,is_map,{f,1633},[{x,0}]}.
    {get_map_elements,{f,1633},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{integer,0},{x,0}]}}.
    {test,is_eq_exact,{f,1633},[{x,0},{literal,<<>>}]}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_test_tail2,{f,1633},[{x,0},8]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1633}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_f, 1, 1635}.
  {label,1634}.
    {line,[{location,"bs_match_r25_SUITE.erl",3117}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_nomatch_f},1}.
  {label,1635}.
    {test,is_map,{f,1636},[{x,0}]}.
    {get_map_elements,{f,1636},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{integer,0},{x,0}]}}.
    {test,bs_start_match3,{f,1636},1,[{x,0}],{x,1}}.
    {test,bs_test_tail2,{f,1636},[{x,1},8]}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_test_tail2,{f,1636},[{x,0},16]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1636}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_g, 1, 1638}.
  {label,1637}.
    {line,[{location,"bs_match_r25_SUITE.erl",3120}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_nomatch_g},1}.
  {label,1638}.
    {test,is_map,{f,1639},[{x,0}]}.
    {get_map_elements,{f,1639},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{integer,0},{x,0}]}}.
    {test,bs_start_match3,{f,1639},1,[{x,0}],{x,1}}.
    {test,bs_test_tail2,{f,1639},[{x,1},8]}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_skip_bits2,
          {f,1639},
          [{x,0},
           {integer,8},
           1,
           {field_flags,[{anno,[3120,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_match_string,{f,1639},[{x,0},8,{string,<<0>>}]}.
    {test,bs_test_tail2,{f,1639},[{x,0},0]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1639}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_h, 1, 1641}.
  {label,1640}.
    {line,[{location,"bs_match_r25_SUITE.erl",3123}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_nomatch_h},1}.
  {label,1641}.
    {test,is_map,{f,1642},[{x,0}]}.
    {get_map_elements,{f,1642},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{integer,0},{x,0}]}}.
    {test,bs_start_match3,{f,1642},1,[{x,0}],{x,1}}.
    {test,bs_test_tail2,{f,1642},[{x,1},0]}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,1642},
          1,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[3123,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_test_tail2,{f,1642},[{x,0},0]}.
    {test,is_eq_exact,{f,1642},[{tr,{x,1},{t_integer,{0,255}}},{integer,0}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1642}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_i, 1, 1644}.
  {label,1643}.
    {line,[{location,"bs_match_r25_SUITE.erl",3126}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_nomatch_i},1}.
  {label,1644}.
    {test,bs_start_match3,{f,1645},1,[{x,0}],{x,1}}.
    {test,bs_test_tail2,{f,1645},[{x,1},8]}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_skip_bits2,
          {f,1645},
          [{x,0},
           {integer,16},
           1,
           {field_flags,[{anno,[3126,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,1645},
          1,
          [{tr,{x,0},{t_bs_context,1}},
           {atom,all},
           8,
           {field_flags,[{anno,[3126,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,0}}.
    {allocate,0,1}.
    {line,[{location,"bs_match_r25_SUITE.erl",3127}]}.
    {call_ext,1,{extfunc,erlang,binary_to_list,1}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1645}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_j, 1, 1647}.
  {label,1646}.
    {line,[{location,"bs_match_r25_SUITE.erl",3132}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_nomatch_j},1}.
  {label,1647}.
    {test,bs_start_match3,{f,1648},1,[{x,0}],{x,1}}.
    {test,bs_test_tail2,{f,1648},[{x,1},8]}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,1648},
          1,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,16},
           1,
           {field_flags,[{anno,[3132,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_get_binary2,
          {f,1648},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {atom,all},
           8,
           {field_flags,[{anno,[3132,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,0}}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,1},{x,0}]}}.
    return.
  {label,1648}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_k, 1, 1650}.
  {label,1649}.
    {line,[{location,"bs_match_r25_SUITE.erl",3137}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_nomatch_k},1}.
  {label,1650}.
    {test,is_map,{f,1653},[{x,0}]}.
    {get_map_elements,{f,1653},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{integer,0},{x,0}]}}.
    {test,bs_start_match3,{f,1653},1,[{x,0}],{x,1}}.
    {test,bs_test_tail2,{f,1653},[{x,1},8]}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_skip_bits2,
          {f,1653},
          [{x,0},
           {integer,8},
           1,
           {field_flags,[{anno,[3137,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_get_tail,{x,0},{x,0},1}.
    {gc_bif,'div',{f,1651},1,[{integer,0},{integer,0}],{x,1}}.
    {jump,{f,1652}}.
  {label,1651}.
    {move,{atom,bad_size},{x,1}}.
  {label,1652}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_skip_bits2,
          {f,1653},
          [{x,0},
           {x,1},
           1,
           {field_flags,[{anno,[3137,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_test_tail2,{f,1653},[{x,0},0]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1653}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_l, 1, 1655}.
  {label,1654}.
    {line,[{location,"bs_match_r25_SUITE.erl",3142}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_nomatch_l},1}.
  {label,1655}.
    {test,bs_start_match3,{f,1656},1,[{x,0}],{x,1}}.
    {test,bs_skip_bits2,
          {f,1656},
          [{x,1},
           {integer,0},
           1,
           {field_flags,[{anno,[3144,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_get_tail,{x,1},{x,1},2}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {test,bs_test_tail2,{f,1656},[{x,1},0]}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_test_tail2,{f,1656},[{x,0},8]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1656}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_match_a, 1, 1658}.
  {label,1657}.
    {line,[{location,"bs_match_r25_SUITE.erl",3150}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_match_a},1}.
  {label,1658}.
    {test,bs_start_match3,{f,1657},1,[{x,0}],{x,1}}.
    {test,bs_test_tail2,{f,1657},[{x,1},8]}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,1657},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[3150,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1657},[{x,1},0]}.
    {move,{x,2},{x,0}}.
    return.


{function, gh6415_match_b, 1, 1660}.
  {label,1659}.
    {line,[{location,"bs_match_r25_SUITE.erl",3153}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_match_b},1}.
  {label,1660}.
    {test,bs_start_match3,{f,1659},1,[{x,0}],{x,1}}.
    {test,bs_test_tail2,{f,1659},[{x,1},8]}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,1659},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[3153,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,1659},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {atom,all},
           8,
           {field_flags,[{anno,[3153,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{x,2},{x,1}]}}.
    return.


{function, gh6415_match_c, 0, 1662}.
  {label,1661}.
    {line,[{location,"bs_match_r25_SUITE.erl",3156}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_match_c},0}.
  {label,1662}.
    {allocate,1,0}.
    {'catch',{y,0},{f,1663}}.
    {move,{atom,badarg},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3157}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,1663}.
    {catch_end,{y,0}}.
    {test,is_map,{f,1664},[{x,0}]}.
    {get_map_elements,{f,1664},{tr,{x,0},{t_map,any,any}},{list,[nil,{x,1}]}}.
    {test,bs_start_match3,{f,1664},2,[{x,1}],{x,2}}.
    {test,bs_test_tail2,{f,1664},[{x,2},8]}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,1664},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[3158,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1664},[{x,1},0]}.
    {move,{x,2},{x,0}}.
    {deallocate,1}.
    return.
  {label,1664}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",3157}]}.
    {case_end,{x,0}}.


{function, gh6415_match_d, 1, 1666}.
  {label,1665}.
    {line,[{location,"bs_match_r25_SUITE.erl",3162}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_match_d},1}.
  {label,1666}.
    {test,bs_start_match3,{f,1665},1,[{x,0}],{x,1}}.
    {test,bs_skip_bits2,
          {f,1665},
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[3162,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_get_tail,{x,1},{x,1},2}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {test,bs_test_tail2,{f,1665},[{x,1},0]}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_test_tail2,{f,1665},[{x,1},8]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, gh6415_match_e, 1, 1668}.
  {label,1667}.
    {line,[{location,"bs_match_r25_SUITE.erl",3165}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_match_e},1}.
  {label,1668}.
    {test,bs_start_match3,{f,1667},1,[{x,0}],{x,1}}.
    {test,bs_skip_bits2,
          {f,1667},
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[3165,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_get_tail,{x,1},{x,1},2}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {test,bs_skip_bits2,
          {f,1667},
          [{x,1},
           {integer,0},
           1,
           {field_flags,[{anno,[3165,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_integer2,
          {f,1667},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[3165,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{x,1},3}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {test,bs_skip_bits2,
          {f,1667},
          [{x,1},
           {x,2},
           1,
           {field_flags,[{anno,[3165,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_test_tail2,{f,1667},[{x,1},0]}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,1}}.
    {test,bs_skip_bits2,
          {f,1667},
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[3165,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_integer2,
          {f,1667},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[3165,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_tail,{x,1},{x,1},4}.
    {bs_start_match4,{atom,no_fail},4,{x,1},{x,1}}.
    {test,bs_skip_bits2,
          {f,1667},
          [{x,1},
           {x,3},
           1,
           {field_flags,[{anno,[3165,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_test_tail2,{f,1667},[{x,1},0]}.
    {test,is_eq_exact,
          {f,1667},
          [{tr,{x,3},{t_integer,{0,255}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, gh6415_match_f, 1, 1670}.
  {label,1669}.
    {line,[{location,"bs_match_r25_SUITE.erl",3168}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_match_f},1}.
  {label,1670}.
    {test,bs_start_match3,{f,1671},1,[{x,0}],{x,1}}.
    {bs_get_tail,{x,1},{x,1},2}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {test,bs_skip_bits2,
          {f,1671},
          [{x,1},
           {integer,0},
           1,
           {field_flags,[{anno,[3168,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_integer2,
          {f,1671},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[3168,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{x,1},3}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,1671},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[3168,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1671},[{x,1},0]}.
    {bs_start_match4,{atom,no_fail},4,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,1671},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[3168,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {bs_get_tail,{x,1},{x,1},5}.
    {bs_start_match4,{atom,no_fail},5,{x,1},{x,1}}.
    {test,bs_skip_bits2,
          {f,1671},
          [{x,1},
           {integer,0},
           1,
           {field_flags,[{anno,[3168,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_integer2,
          {f,1671},
          5,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,4},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[3168,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_test_tail2,{f,1671},[{x,1},0]}.
    {bs_start_match4,{atom,no_fail},6,{x,0},{x,0}}.
    {test,bs_match_string,{f,1671},[{x,0},8,{string,<<17>>}]}.
    {test,bs_get_integer2,
          {f,1671},
          6,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,17},
           1,
           {field_flags,[{anno,[3168,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {bs_get_tail,{x,0},{x,0},6}.
    {bs_start_match4,{atom,no_fail},6,{x,0},{x,0}}.
    {test,bs_test_tail2,{f,1671},[{x,0},0]}.
    {test,is_eq_exact,
          {f,1671},
          [{tr,{x,4},{t_integer,{0,255}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,1671},
          [{tr,{x,5},{t_integer,{0,'+inf'}}},
           {tr,{x,3},{t_integer,{0,'+inf'}}}]}.
    {test,is_eq_exact,
          {f,1671},
          [{tr,{x,1},{t_integer,{0,131071}}},
           {tr,{x,3},{t_integer,{0,'+inf'}}}]}.
    {move,{x,3},{x,0}}.
    return.
  {label,1671}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh_6923, 1, 1673}.
  {label,1672}.
    {line,[{location,"bs_match_r25_SUITE.erl",3175}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh_6923},1}.
  {label,1673}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{atom,bs_match_r25_SUITE},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3206}]}.
    {call_ext,1,{extfunc,test_lib,opt_opts,1}}.
    {move,{x,0},{x,1}}.
    {move,
     {literal,
      [{attribute,29,module,bs_match_r25_SUITE_gh_6923},
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
    {line,[{location,"bs_match_r25_SUITE.erl",3207}]}.
    {call_ext,2,{extfunc,compile,forms,2}}.
    {test,is_tagged_tuple,{f,1679},[{x,0},3,{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,1679},[{x,1},{atom,bs_match_r25_SUITE_gh_6923}]}.
    {get_tuple_element,{x,0},2,{x,2}}.
    {move,nil,{x,1}}.
    {move,{atom,bs_match_r25_SUITE_gh_6923},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3208}]}.
    {call_ext,3,{extfunc,code,load_binary,3}}.
    {test,is_tagged_tuple,{f,1678},[{x,0},2,{atom,module}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,1678},[{x,1},{atom,bs_match_r25_SUITE_gh_6923}]}.
    {move,{literal,[<<"prefix">>,<<"action">>]},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3209}]}.
    {call_ext,1,{extfunc,bs_match_r25_SUITE_gh_6923,match_route,1}}.
    {test,is_eq_exact,{f,1677},[{x,0},{atom,first}]}.
    {move,{literal,[<<"prefix">>,whatever]},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3210}]}.
    {call_ext,1,{extfunc,bs_match_r25_SUITE_gh_6923,match_route,1}}.
    {test,is_eq_exact,{f,1676},[{x,0},{atom,second}]}.
    {move,{atom,bs_match_r25_SUITE_gh_6923},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3211}]}.
    {call_ext,1,{extfunc,code,delete,1}}.
    {move,{atom,bs_match_r25_SUITE_gh_6923},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3212}]}.
    {call_ext,1,{extfunc,code,purge,1}}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3215}]}.
    {call,1,{f,1684}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,42},{x,0}}.
    {call,1,{f,1684}}. % id/1
    {test_heap,4,1}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{y,0},{x,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {call,1,{f,1681}}. % do_gh_6923/1
    {'%',{var_info,{x,0},[{type,{t_atom,[first,second]}}]}}.
    {test,is_eq_exact,
          {f,1675},
          [{tr,{x,0},{t_atom,[first,second]}},{atom,first}]}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3216}]}.
    {call,1,{f,1684}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{literal,{a,b,c}},{x,0}}.
    {call,1,{f,1684}}. % id/1
    {test_heap,4,1}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{y,0},{x,0},{x,0}}.
    {trim,1,0}.
    {call,1,{f,1681}}. % do_gh_6923/1
    {'%',{var_info,{x,0},[{type,{t_atom,[first,second]}}]}}.
    {test,is_eq_exact,
          {f,1674},
          [{tr,{x,0},{t_atom,[first,second]}},{atom,second}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1674}.
    {badmatch,{atom,first}}.
  {label,1675}.
    {line,[{location,"bs_match_r25_SUITE.erl",3215}]}.
    {badmatch,{atom,second}}.
  {label,1676}.
    {line,[{location,"bs_match_r25_SUITE.erl",3210}]}.
    {badmatch,{x,0}}.
  {label,1677}.
    {line,[{location,"bs_match_r25_SUITE.erl",3209}]}.
    {badmatch,{x,0}}.
  {label,1678}.
    {line,[{location,"bs_match_r25_SUITE.erl",3208}]}.
    {badmatch,{x,0}}.
  {label,1679}.
    {line,[{location,"bs_match_r25_SUITE.erl",3207}]}.
    {badmatch,{x,0}}.


{function, do_gh_6923, 1, 1681}.
  {label,1680}.
    {line,[{location,"bs_match_r25_SUITE.erl",3220}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_gh_6923},1}.
  {label,1681}.
    {'%',{var_info,{x,0},[{type,{t_cons,any,nil}}]}}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,bs_start_match3,{f,1680},3,[{x,1}],{x,1}}.
    {test,bs_match_string,{f,1680},[{x,1},24,{string,<<"abc">>}]}.
    {test,bs_test_tail2,{f,1680},[{x,1},0]}.
    {test,is_nonempty_list,{f,1680},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_nil,{f,1680},[{tr,{x,2},{t_list,any,nil}}]}.
    {test,is_integer,{f,1682},[{x,1}]}.
    {move,{atom,first},{x,0}}.
    return.
  {label,1682}.
    {test,is_tuple,{f,1680},[{x,1}]}.
    {move,{atom,second},{x,0}}.
    return.


{function, id, 1, 1684}.
  {label,1683}.
    {line,[{location,"bs_match_r25_SUITE.erl",3225}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,id},1}.
  {label,1684}.
    return.


{function, module_info, 0, 1686}.
  {label,1685}.
    {line,[]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,module_info},0}.
  {label,1686}.
    {move,{atom,bs_match_r25_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 1688}.
  {label,1687}.
    {line,[]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,module_info},1}.
  {label,1688}.
    {move,{x,0},{x,1}}.
    {move,{atom,bs_match_r25_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-binary_aliases/1-fun-20-', 1, 1690}.
  {label,1689}.
    {line,[{location,"bs_match_r25_SUITE.erl",2961}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-binary_aliases/1-fun-20-'},1}.
  {label,1690}.
    {test,is_eq_exact,{f,1691},[{x,0},{literal,<<>>}]}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_test_tail2,{f,1691},[{x,0},0]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1691}.
    {move,{atom,error},{x,0}}.
    return.


{function, '-binary_aliases/1-fun-19-', 1, 1693}.
  {label,1692}.
    {line,[{location,"bs_match_r25_SUITE.erl",2954}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-binary_aliases/1-fun-19-'},1}.
  {label,1693}.
    {test,is_eq_exact,{f,1692},[{x,0},{literal,[<<>>]}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, '-binary_aliases/1-fun-18-', 1, 1695}.
  {label,1694}.
    {line,[{location,"bs_match_r25_SUITE.erl",2947}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-binary_aliases/1-fun-18-'},1}.
  {label,1695}.
    {line,[{location,"bs_match_r25_SUITE.erl",2948}]}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-17-', 1, 1697}.
  {label,1696}.
    {line,[{location,"bs_match_r25_SUITE.erl",2935}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-binary_aliases/1-fun-17-'},1}.
  {label,1697}.
    {test,bs_start_match3,{f,1698},1,[{x,0}],{x,1}}.
    {test,bs_test_tail2,{f,1698},[{x,1},8]}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_test_tail2,{f,1698},[{x,0},8]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1698}.
    {move,{atom,error},{x,0}}.
    return.


{function, '-binary_aliases/1-fun-16-', 1, 1700}.
  {label,1699}.
    {line,[{location,"bs_match_r25_SUITE.erl",2930}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-binary_aliases/1-fun-16-'},1}.
  {label,1700}.
    {test,is_map,{f,1699},[{x,0}]}.
    {get_map_elements,{f,1699},{tr,{x,0},{t_map,any,any}},{list,[nil,{x,1}]}}.
    {test,bs_start_match3,{f,1699},2,[{x,1}],{x,2}}.
    {test,bs_test_tail2,{f,1699},[{x,2},8]}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {test,bs_test_tail2,{f,1699},[{x,1},8]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, '-binary_aliases/1-fun-15-', 1, 1702}.
  {label,1701}.
    {line,[{location,"bs_match_r25_SUITE.erl",2921}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-binary_aliases/1-fun-15-'},1}.
  {label,1702}.
    {allocate,0,1}.
    {line,[{location,"bs_match_r25_SUITE.erl",2922}]}.
    {call,1,{f,1684}}. % id/1
    {test,is_nonempty_list,{f,1703},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_tuple,{f,1703},[{x,1}]}.
    {test,test_arity,{f,1703},[{x,1},2]}.
    {test,is_nil,{f,1703},[{x,2}]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,bs_start_match3,{f,1703},3,[{x,2}],{x,2}}.
    {test,bs_skip_bits2,
          {f,1703},
          [{x,2},
           {x,1},
           1,
           {field_flags,[{anno,[2922,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_test_tail2,{f,1703},[{x,2},0]}.
    {move,{x,1},{x,0}}.
    {deallocate,0}.
    return.
  {label,1703}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-14-', 1, 1705}.
  {label,1704}.
    {line,[{location,"bs_match_r25_SUITE.erl",2912}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-binary_aliases/1-fun-14-'},1}.
  {label,1705}.
    {allocate,0,1}.
    {line,[{location,"bs_match_r25_SUITE.erl",2913}]}.
    {call,1,{f,1684}}. % id/1
    {test,is_tuple,{f,1706},[{x,0}]}.
    {test,test_arity,{f,1706},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {test,bs_start_match3,{f,1706},3,[{x,1}],{x,1}}.
    {test,bs_skip_bits2,
          {f,1706},
          [{x,1},
           {x,2},
           1,
           {field_flags,[{anno,[2913,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_test_tail2,{f,1706},[{x,1},0]}.
    {move,{x,2},{x,0}}.
    {deallocate,0}.
    return.
  {label,1706}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-13-', 1, 1708}.
  {label,1707}.
    {line,[{location,"bs_match_r25_SUITE.erl",2903}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-binary_aliases/1-fun-13-'},1}.
  {label,1708}.
    {allocate,0,1}.
    {line,[{location,"bs_match_r25_SUITE.erl",2904}]}.
    {call,1,{f,1684}}. % id/1
    {test,is_nonempty_list,{f,1709},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,bs_start_match3,{f,1709},3,[{x,1}],{x,1}}.
    {test,bs_skip_bits2,
          {f,1709},
          [{x,1},
           {x,2},
           1,
           {field_flags,[{anno,[2904,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_test_tail2,{f,1709},[{x,1},0]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1709}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-12-', 1, 1711}.
  {label,1710}.
    {line,[{location,"bs_match_r25_SUITE.erl",2895}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-binary_aliases/1-fun-12-'},1}.
  {label,1711}.
    {test,bs_start_match3,{f,1712},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,1712},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2896,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,2}}.
    {test,bs_skip_bits2,
          {f,1712},
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[2896,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,1712},
          3,
          [{tr,{x,2},{t_bs_context,1}},
           {tr,{x,1},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[2896,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1712},[{x,2},0]}.
    {bs_start_match4,{atom,no_fail},4,{x,0},{x,2}}.
    {test,bs_skip_bits2,
          {f,1712},
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[2896,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_integer2,
          {f,1712},
          4,
          [{tr,{x,2},{t_bs_context,1}},
           {tr,{x,1},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[2896,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,1712},[{x,2},0]}.
    {test_heap,4,5}.
    {put_tuple2,{x,0},{list,[{x,1},{x,4},{x,3}]}}.
    return.
  {label,1712}.
    {line,[{location,"bs_match_r25_SUITE.erl",2896}]}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-11-', 1, 1714}.
  {label,1713}.
    {line,[{location,"bs_match_r25_SUITE.erl",2891}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-binary_aliases/1-fun-11-'},1}.
  {label,1714}.
    {test,is_map,{f,1713},[{x,0}]}.
    {get_map_elements,{f,1713},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{atom,key},{x,1}]}}.
    {test,bs_start_match3,{f,1713},2,[{x,1}],{x,2}}.
    {test,bs_get_integer2,
          {f,1713},
          3,
          [{tr,{x,2},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2891,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1713},[{x,2},0]}.
    {bs_start_match4,{atom,no_fail},4,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,1713},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2891,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1713},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,3},{x,2}]}}.
    return.


{function, '-binary_aliases/1-fun-10-', 1, 1716}.
  {label,1715}.
    {line,[{location,"bs_match_r25_SUITE.erl",2883}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-binary_aliases/1-fun-10-'},1}.
  {label,1716}.
    {test,bs_start_match3,{f,1717},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,1717},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2884,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1717},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2884,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,1717},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2884,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_integer2,
          {f,1717},
          5,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2884,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_test_tail2,{f,1717},[{x,1},0]}.
    {bs_start_match4,{atom,no_fail},6,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,1717},
          6,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,16},
           1,
           {field_flags,[{anno,[2884,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,bs_get_integer2,
          {f,1717},
          7,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,16},
           1,
           {field_flags,[{anno,[2884,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,7}}.
    {test,bs_test_tail2,{f,1717},[{x,1},0]}.
    {bs_start_match4,{atom,no_fail},8,{x,0},{x,1}}.
    {test,bs_get_binary2,
          {f,1717},
          8,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2884,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,8}}.
    {test,bs_get_binary2,
          {f,1717},
          9,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,24},
           1,
           {field_flags,[{anno,[2884,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,9}}.
    {test,bs_test_tail2,{f,1717},[{x,1},0]}.
    {test_heap,9,10}.
    {put_tuple2,{x,0},
                {list,[{x,8},{x,9},{x,6},{x,7},{x,2},{x,3},{x,4},{x,5}]}}.
    return.
  {label,1717}.
    {line,[{location,"bs_match_r25_SUITE.erl",2884}]}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-9-', 1, 1719}.
  {label,1718}.
    {line,[{location,"bs_match_r25_SUITE.erl",2877}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-binary_aliases/1-fun-9-'},1}.
  {label,1719}.
    {test,is_eq_exact,{f,1720},[{x,0},{literal,<<>>}]}.
    return.
  {label,1720}.
    {line,[{location,"bs_match_r25_SUITE.erl",2878}]}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-8-', 1, 1722}.
  {label,1721}.
    {line,[{location,"bs_match_r25_SUITE.erl",2871}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-binary_aliases/1-fun-8-'},1}.
  {label,1722}.
    {test,bs_start_match3,{f,1723},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,1723},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2872,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1723},[{x,1},0]}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,1723},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2872,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1723},[{x,1},0]}.
    {test_heap,7,4}.
    {put_tuple2,{x,0},{list,[{x,3},{x,2},{x,0},{x,0},{x,0},{x,0}]}}.
    return.
  {label,1723}.
    {line,[{location,"bs_match_r25_SUITE.erl",2872}]}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-7-', 1, 1725}.
  {label,1724}.
    {line,[{location,"bs_match_r25_SUITE.erl",2865}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-binary_aliases/1-fun-7-'},1}.
  {label,1725}.
    {test,bs_start_match3,{f,1726},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,1726},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2866,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1726},[{x,1},0]}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,1726},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2866,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1726},[{x,1},0]}.
    {test_heap,5,4}.
    {put_tuple2,{x,0},{list,[{x,3},{x,2},{x,0},{x,0}]}}.
    return.
  {label,1726}.
    {line,[{location,"bs_match_r25_SUITE.erl",2866}]}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-6-', 1, 1728}.
  {label,1727}.
    {line,[{location,"bs_match_r25_SUITE.erl",2858}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-binary_aliases/1-fun-6-'},1}.
  {label,1728}.
    {test,bs_start_match3,{f,1729},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,1729},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2859,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1729},[{x,1},0]}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,1729},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,4},
           1,
           {field_flags,[{anno,[2859,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,1729},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,4},
           1,
           {field_flags,[{anno,[2859,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,1729},[{x,1},0]}.
    {test,is_eq_exact,
          {f,1729},
          [{tr,{x,4},{t_integer,{0,15}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {bs_start_match4,{atom,no_fail},4,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,1729},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2859,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,1729},[{x,1},0]}.
    {test,is_eq_exact,
          {f,1729},
          [{tr,{x,4},{t_integer,{0,255}}},{tr,{x,3},{t_integer,{0,15}}}]}.
    {test_heap,4,4}.
    {put_tuple2,{x,0},{list,[{x,3},{x,2},{x,0}]}}.
    return.
  {label,1729}.
    {line,[{location,"bs_match_r25_SUITE.erl",2859}]}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-5-', 2, 1731}.
  {label,1730}.
    {line,[{location,"bs_match_r25_SUITE.erl",2851}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-binary_aliases/1-fun-5-'},2}.
  {label,1731}.
    {line,[{location,"bs_match_r25_SUITE.erl",2852}]}.
    {bs_create_bin,{f,0},
                   0,2,8,
                   {x,0},
                   {list,[{atom,integer},
                          1,1,nil,
                          {x,0},
                          {integer,4},
                          {atom,integer},
                          2,1,nil,
                          {x,1},
                          {integer,4}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,1732},
          2,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2852,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1732},[{x,1},0]}.
    {move,{x,2},{x,0}}.
    return.
  {label,1732}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-4-', 1, 1734}.
  {label,1733}.
    {line,[{location,"bs_match_r25_SUITE.erl",2845}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-binary_aliases/1-fun-4-'},1}.
  {label,1734}.
    {test,bs_start_match3,{f,1735},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,1735},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2846,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1735},[{x,1},0]}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,1735},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2846,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1735},[{x,1},0]}.
    {test_heap,4,4}.
    {put_tuple2,{x,0},{list,[{x,3},{x,2},{x,0}]}}.
    return.
  {label,1735}.
    {line,[{location,"bs_match_r25_SUITE.erl",2846}]}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-3-', 1, 1737}.
  {label,1736}.
    {line,[{location,"bs_match_r25_SUITE.erl",2838}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-binary_aliases/1-fun-3-'},1}.
  {label,1737}.
    {line,[{location,"bs_match_r25_SUITE.erl",2841}]}.
    {call_ext_only,1,{extfunc,lists,sum,1}}.


{function, '-binary_aliases/1-fun-2-', 1, 1739}.
  {label,1738}.
    {line,[{location,"bs_match_r25_SUITE.erl",2834}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-binary_aliases/1-fun-2-'},1}.
  {label,1739}.
    {test,is_tagged_tuple,{f,1738},[{x,0},4,{atom,ba_foo}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,bs_start_match3,{f,1738},2,[{x,1}],{x,2}}.
    {test,bs_get_integer2,
          {f,1738},
          3,
          [{tr,{x,2},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2834,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1738},[{x,2},0]}.
    {bs_start_match4,{atom,no_fail},4,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,1738},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,4},
           1,
           {field_flags,[{anno,[2834,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1738},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,4},
           1,
           {field_flags,[{anno,[2834,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,1738},[{x,1},0]}.
    {test_heap,4,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,2},{x,4}]}}.
    return.


{function, '-binary_aliases/1-fun-1-', 1, 1741}.
  {label,1740}.
    {line,[{location,"bs_match_r25_SUITE.erl",2830}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-binary_aliases/1-fun-1-'},1}.
  {label,1741}.
    {test,is_tagged_tuple,{f,1740},[{x,0},4,{atom,ba_foo}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,bs_start_match3,{f,1740},2,[{x,1}],{x,2}}.
    {test,bs_get_integer2,
          {f,1740},
          3,
          [{tr,{x,2},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2830,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1740},[{x,2},0]}.
    {bs_start_match4,{atom,no_fail},4,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,1740},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2830,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1740},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,3},{x,2}]}}.
    return.


{function, '-binary_aliases/1-fun-0-', 1, 1743}.
  {label,1742}.
    {line,[{location,"bs_match_r25_SUITE.erl",2826}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-binary_aliases/1-fun-0-'},1}.
  {label,1743}.
    {test,bs_start_match3,{f,1742},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,1742},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2826,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1742},[{x,1},0]}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,1742},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2826,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1742},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.


{function, '-many_clauses/1-lc$^1/1-1-', 1, 1745}.
  {label,1744}.
    {line,[{location,"bs_match_r25_SUITE.erl",2702}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-many_clauses/1-lc$^1/1-1-'},
               1}.
  {label,1745}.
    {test,is_nonempty_list,{f,1746},[{x,0}]}.
    {allocate,3,1}.
    {init_yregs,{list,[{y,0}]}}.
    {get_list,{x,0},{y,2},{y,1}}.
    {move,{y,2},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2697}]}.
    {call_ext,1,{extfunc,erlang,phash2,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2699}]}.
    {bs_create_bin,{f,0},
                   0,1,16,
                   {x,1},
                   {list,[{atom,integer},
                          1,1,nil,
                          {tr,{x,0},{t_integer,{0,134217727}}},
                          {integer,16}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,2}}.
    {test,bs_get_integer2,
          {f,1749},
          3,
          [{tr,{x,2},{t_bs_context,16}},
           {integer,16},
           1,
           {field_flags,[{anno,[2699,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1749},[{x,2},0]}.
    {line,[{location,"bs_match_r25_SUITE.erl",2700}]}.
    {gc_bif,'+',{f,0},4,[{y,2},{tr,{x,3},{t_integer,{0,65535}}}],{y,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2701}]}.
    {bs_create_bin,{f,0},
                   3,1,8,
                   {x,0},
                   {list,[{atom,string},
                          0,8,nil,
                          {string,<<16>>},
                          {integer,1},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,0},{t_integer,{0,134217727}}},
                          {integer,16}]}}.
    {put_tuple2,{x,0},{list,[{y,2},{x,0}]}}.
    {move,{y,0},{y,2}}.
    {trim,1,2}.
    {call_ext,1,{extfunc,bs_match_r25_SUITE_many_clauses,f,1}}.
    {test,is_eq_exact,{f,1748},[{x,0},{tr,{y,1},{t_number,any}}]}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,1745},2}. % '-many_clauses/1-lc$^1/1-1-'/1
  {label,1746}.
    {test,is_nil,{f,1747},[{x,0}]}.
    return.
  {label,1747}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2702}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,1748}.
    {line,[{location,"bs_match_r25_SUITE.erl",2701}]}.
    {badmatch,{x,0}}.
  {label,1749}.
    {line,[{location,"bs_match_r25_SUITE.erl",2699}]}.
    {badmatch,{x,1}}.


{function, '-many_clauses/1-lc$^0/1-0-', 1, 1751}.
  {label,1750}.
    {line,[{location,"bs_match_r25_SUITE.erl",2686}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-many_clauses/1-lc$^0/1-0-'},
               1}.
  {label,1751}.
    {test,is_nonempty_list,{f,1752},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{x,0},{y,0}}.
    {call,1,{f,1413}}. % one_clause/1
    {swap,{y,0},{x,0}}.
    {call,1,{f,1751}}. % '-many_clauses/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1752}.
    {test,is_nil,{f,1753},[{x,0}]}.
    return.
  {label,1753}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-binary_match_to_asm/1-lc$^0/1-0-', 1, 1755}.
  {label,1754}.
    {line,[{location,"bs_match_r25_SUITE.erl",2665}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-binary_match_to_asm/1-lc$^0/1-0-'},
               1}.
  {label,1755}.
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_list,
         {t_tuple,2,true,
          #{1 =>
             {t_tuple,3,true,
              #{1 => {t_atom,[bin]},
                2 => {t_integer,{2572,2650}},
                3 => {t_list,{t_tuple,0,false,#{}},nil}}}}},
         nil}}]}}.
    {test,is_nonempty_list,{f,1756},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,1,{f,1755}}. % '-binary_match_to_asm/1-lc$^0/1-0-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,5,true,
                         #{1 => {t_atom,[clause]},
                           2 => {t_integer,{2572,2650}},
                           3 =>
                               {t_cons,
                                   {t_tuple,3,true,
                                       #{1 => {t_atom,[bin]},
                                         2 => {t_integer,{2572,2650}},
                                         3 => {t_list,any,any}}},
                                   nil},
                           4 => nil,
                           5 =>
                               {t_cons,
                                   {t_tuple,3,true,
                                       #{1 => {t_atom,[integer]},
                                         2 => {t_integer,{2572,2650}}}},
                                   nil}}},
                     nil}}]}}.
    {test_heap,16,1}.
    {get_tuple_element,{y,0},0,{x,1}}.
    {get_tuple_element,{y,0},1,{x,2}}.
    {get_tuple_element,{x,1},1,{x,3}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_tuple2,{x,2},{list,[{atom,integer},{x,3},{x,2}]}}.
    {put_list,{x,2},nil,{x,2}}.
    {put_tuple2,{x,1},{list,[{atom,clause},{x,3},{x,1},nil,{x,2}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1756}.
    return.


{function, '-expand_and_squeeze/1-fun-0-', 1, 1758}.
  {label,1757}.
    {line,[{location,"bs_match_r25_SUITE.erl",2607}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-expand_and_squeeze/1-fun-0-'},
               1}.
  {label,1758}.
    {test,is_tagged_tuple,{f,1759},[{x,0},4,{atom,bs_match}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1759},[{x,1},2,{atom,f}]}.
    {get_tuple_element,{x,0},3,{x,0}}.
    {test,is_tagged_tuple,{f,1759},[{x,0},2,{atom,commands}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_nonempty_list,{f,1759},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_eq_exact,{f,1759},[{x,1},{literal,{ensure_at_least,16,1}}]}.
    {test,is_nonempty_list,{f,1759},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tagged_tuple,{f,1759},[{x,1},6,{atom,integer}]}.
    {get_tuple_element,{x,1},3,{x,2}}.
    {test,is_eq_exact,{f,1759},[{x,2},{integer,16}]}.
    {get_tuple_element,{x,1},4,{x,1}}.
    {test,is_eq_exact,{f,1759},[{x,1},{integer,1}]}.
    {bif,'=:=',{f,0},[{x,0},nil],{x,0}}.
    return.
  {label,1759}.
    {move,{atom,false},{x,0}}.
    return.


{function, '-em_2/1-lbc$^0/2-0-', 2, 1761}.
  {label,1760}.
    {line,[{location,"bs_match_r25_SUITE.erl",2543}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-em_2/1-lbc$^0/2-0-'},2}.
  {label,1761}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,16,true}}]}}.
    {test,bs_start_match3,{f,1763},2,[{x,0}],{x,2}}.
    {test,bs_skip_bits2,
          {f,1762},
          [{x,2},
           {integer,0},
           1,
           {field_flags,[{anno,[2543,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_integer2,
          {f,1762},
          3,
          [{tr,{x,2},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2543,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,0}}.
    {bs_get_tail,{x,2},{x,2},3}.
    {line,[{location,"bs_match_r25_SUITE.erl",2544}]}.
    {bs_create_bin,{f,0},
                   0,3,16,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,16,true}},
                          {atom,all},
                          {atom,string},
                          0,8,nil,
                          {string,<<0>>},
                          {integer,1},
                          {atom,integer},
                          3,1,nil,
                          {tr,{x,0},{t_integer,{0,255}}},
                          {integer,8}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,16,true}}]}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,1761}}. % '-em_2/1-lbc$^0/2-0-'/2
  {label,1762}.
    {move,{x,1},{x,0}}.
    return.
  {label,1763}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bspu_1/1-lc$^0/1-0-', 1, 1765}.
  {label,1764}.
    {line,[{location,"bs_match_r25_SUITE.erl",2510}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-bspu_1/1-lc$^0/1-0-'},1}.
  {label,1765}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_get_binary2,
          {f,1766},
          1,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,5},
           8,
           {field_flags,[{anno,[2510,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {call,1,{f,1765}}. % '-bspu_1/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1766}.
    {move,nil,{x,0}}.
    return.


{function, '-hangs_forever/1-fun-0-', 1, 1768}.
  {label,1767}.
    {line,[{location,"bs_match_r25_SUITE.erl",2493}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-hangs_forever/1-fun-0-'},1}.
  {label,1768}.
    {call_only,1,{f,1355}}. % hangs_forever_1/1


{function, '-beam_bsm/1-fun-0-', 1, 1770}.
  {label,1769}.
    {line,[{location,"bs_match_r25_SUITE.erl",2166}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-beam_bsm/1-fun-0-'},1}.
  {label,1770}.
    {gc_bif,'*',{f,0},1,[{x,0},{integer,2}],{x,0}}.
    return.


{function, '-num_slots_different/1-lc$^0/1-0-', 1, 1772}.
  {label,1771}.
    {line,[{location,"bs_match_r25_SUITE.erl",2129}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-num_slots_different/1-lc$^0/1-0-'},
               1}.
  {label,1772}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,4,true,
                         #{1 => {t_bitstring,16,false},
                           2 => {t_bitstring,8,false},
                           3 => {t_bitstring,8,false},
                           4 => {t_bitstring,8,false}}},
                     nil}}]}}.
    {test,is_nonempty_list,{f,1773},[{x,0}]}.
    {allocate,2,1}.
    {get_list,{x,0},{x,0},{y,1}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {get_tuple_element,{x,0},2,{x,3}}.
    {get_tuple_element,{x,0},3,{y,0}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {move,{x,3},{x,2}}.
    {call,3,{f,1159}}. % lgettext/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[ok]},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,
          {f,1774},
          [{tr,{x,1},{t_bitstring,8,false}},{tr,{y,0},{t_bitstring,8,false}}]}.
    {move,{y,1},{x,0}}.
    {call_last,1,{f,1772},2}. % '-num_slots_different/1-lc$^0/1-0-'/1
  {label,1773}.
    return.
  {label,1774}.
    {badmatch,{x,0}}.


{function, '-constant_propagation_c/0-fun-0-', 1, 1776}.
  {label,1775}.
    {line,[{location,"bs_match_r25_SUITE.erl",2065}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-constant_propagation_c/0-fun-0-'},
               1}.
  {label,1776}.
    {test,bs_start_match3,{f,1777},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,1777},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,16},
           1,
           {field_flags,[{anno,[2066,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1777},[{x,1},0]}.
    {move,{x,2},{x,0}}.
    return.
  {label,1777}.
    {line,[{location,"bs_match_r25_SUITE.erl",2066}]}.
    {badmatch,{x,0}}.


{function, '-bad_literals/1-lc$^3/1-3-', 2, 1779}.
  {label,1778}.
    {line,[{location,"bs_match_r25_SUITE.erl",1949}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-bad_literals/1-lc$^3/1-3-'},
               2}.
  {label,1779}.
    {'%',{var_info,{x,1},[{type,{t_cons,any,nil}}]}}.
    {test,is_nonempty_list,{f,1780},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,2}}.
    {move,{literal,[0,1,2,3]},{x,0}}.
    {call_only,4,{f,1783}}. % '-bad_literals/1-lc$^4/1-4-'/4
  {label,1780}.
    {test,is_nil,{f,1781},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,1781}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bad_literals/1-lc$^4/1-4-', 4, 1783}.
  {label,1782}.
    {line,[{location,"bs_match_r25_SUITE.erl",1950}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-bad_literals/1-lc$^4/1-4-'},
               4}.
  {label,1783}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_cons,any,nil}}]}}.
    {test,is_nonempty_list,{f,1784},[{x,0}]}.
    {allocate,4,4}.
    {move,{x,3},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,1},{y,3}}.
    {get_list,{x,0},{x,1},{y,0}}.
    {move,{x,3},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1949}]}.
    {call,2,{f,1088}}. % signed_lit_match/2
    {move,{y,0},{x,4}}.
    {move,{y,2},{x,2}}.
    {move,{y,3},{x,1}}.
    {move,{x,0},{y,3}}.
    {move,{y,1},{x,3}}.
    {trim,3,1}.
    {move,{x,4},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1950}]}.
    {call,4,{f,1783}}. % '-bad_literals/1-lc$^4/1-4-'/4
    {'%',{var_info,{x,0},[{type,{t_cons,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1784}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,1779}}. % '-bad_literals/1-lc$^3/1-3-'/2


{function, '-bad_literals/1-lc$^1/1-1-', 2, 1786}.
  {label,1785}.
    {line,[{location,"bs_match_r25_SUITE.erl",1951}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-bad_literals/1-lc$^1/1-1-'},
               2}.
  {label,1786}.
    {'%',{var_info,{x,1},[{type,{t_cons,any,nil}}]}}.
    {test,is_nonempty_list,{f,1787},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,2}}.
    {move,{literal,[0,1,2]},{x,0}}.
    {call_only,4,{f,1790}}. % '-bad_literals/1-lc$^2/1-2-'/4
  {label,1787}.
    {test,is_nil,{f,1788},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,1788}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bad_literals/1-lc$^2/1-2-', 4, 1790}.
  {label,1789}.
    {line,[{location,"bs_match_r25_SUITE.erl",1952}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-bad_literals/1-lc$^2/1-2-'},
               4}.
  {label,1790}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,2}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_cons,any,nil}}]}}.
    {test,is_nonempty_list,{f,1791},[{x,0}]}.
    {allocate,4,4}.
    {move,{x,3},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,1},{y,3}}.
    {get_list,{x,0},{x,1},{y,0}}.
    {move,{x,3},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1951}]}.
    {call,2,{f,1091}}. % unsigned_lit_match/2
    {move,{y,0},{x,4}}.
    {move,{y,2},{x,2}}.
    {move,{y,3},{x,1}}.
    {move,{x,0},{y,3}}.
    {move,{y,1},{x,3}}.
    {trim,3,1}.
    {move,{x,4},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1952}]}.
    {call,4,{f,1790}}. % '-bad_literals/1-lc$^2/1-2-'/4
    {'%',{var_info,{x,0},[{type,{t_cons,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1791}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,1786}}. % '-bad_literals/1-lc$^1/1-1-'/2


{function, '-bad_literals/1-lc$^0/1-0-', 1, 1793}.
  {label,1792}.
    {line,[{location,"bs_match_r25_SUITE.erl",1954}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-bad_literals/1-lc$^0/1-0-'},
               1}.
  {label,1793}.
    {test,is_nonempty_list,{f,1794},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{x,0},{y,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1953}]}.
    {call,1,{f,1094}}. % unicode_match/1
    {swap,{y,0},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1954}]}.
    {call,1,{f,1793}}. % '-bad_literals/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1794}.
    {test,is_nil,{f,1795},[{x,0}]}.
    return.
  {label,1795}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-haystack_2/1-lc$^0/1-0-', 2, 1797}.
  {label,1796}.
    {line,[{location,"bs_match_r25_SUITE.erl",1565}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-haystack_2/1-lc$^0/1-0-'},2}.
  {label,1797}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,none,none,none,
                         [{{2,{t_integer,{369,369}}},
                           {t_tuple,2,true,
                               #{1 => {t_integer,{369,369}},
                                 2 => {t_integer,{20,20}}}}},
                          {{2,{t_integer,{687,687}}},
                           {t_tuple,2,true,
                               #{1 => {t_integer,{687,687}},
                                 2 => {t_integer,{10,10}}}}}],
                         none},
                     nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,false}}]}}.
    {test,is_nonempty_list,{f,1798},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {get_tuple_element,{x,2},0,{x,3}}.
    {get_tuple_element,{x,2},1,{x,2}}.
    {bs_start_match4,{atom,no_fail},4,{x,1},{x,4}}.
    {test,bs_skip_bits2,
          {f,1799},
          [{x,4},
           {x,3},
           8,
           {field_flags,[{anno,[1563,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,1799},
          5,
          [{tr,{x,4},{t_bs_context,8}},
           {tr,{x,2},{t_integer,{10,20}}},
           8,
           {field_flags,[{anno,[1563,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {call,2,{f,1797}}. % '-haystack_2/1-lc$^0/1-0-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1798}.
    return.
  {label,1799}.
    {line,[{location,"bs_match_r25_SUITE.erl",1563}]}.
    {badmatch,{x,1}}.


{function, '-haystack_1/1-lc$^0/1-0-', 2, 1801}.
  {label,1800}.
    {line,[{location,"bs_match_r25_SUITE.erl",1556}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-haystack_1/1-lc$^0/1-0-'},2}.
  {label,1801}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{10,10}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,16,false}}]}}.
    {test,is_nonempty_list,{f,1802},[{x,0}]}.
    {get_tl,{x,0},{x,0}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,2}}.
    {test,bs_test_tail2,{f,1803},[{x,2},80]}.
    {call_only,2,{f,1801}}. % '-haystack_1/1-lc$^0/1-0-'/2
  {label,1802}.
    return.
  {label,1803}.
    {line,[{location,"bs_match_r25_SUITE.erl",1554}]}.
    {badmatch,{x,1}}.


{function, '-bad_size_2/1-lc$^0/1-0-', 1, 1805}.
  {label,1804}.
    {line,[{location,"bs_match_r25_SUITE.erl",1536}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-bad_size_2/1-lc$^0/1-0-'},1}.
  {label,1805}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[no_list]},
                     {t_list,
                         {t_union,
                             {t_atom,[a]},
                             none,none,none,
                             {t_bitstring,8,false}},
                         nil},
                     none,none,none}}]}}.
    {test,is_nonempty_list,{f,1806},[{x,0}]}.
    {get_tl,{x,0},{x,0}}.
    {call_only,1,{f,1805}}. % '-bad_size_2/1-lc$^0/1-0-'/1
  {label,1806}.
    {test,is_nil,
          {f,1807},
          [{tr,{x,0},{t_union,{t_atom,[no_list]},nil,none,none,none}}]}.
    return.
  {label,1807}.
    {move,{literal,{bad_generator,no_list}},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bad_size/1-lbc$^0/2-0-', 2, 1809}.
  {label,1808}.
    {line,[{location,"bs_match_r25_SUITE.erl",1470}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-bad_size/1-lbc$^0/2-0-'},2}.
  {label,1809}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {move,{x,1},{x,0}}.
    return.


{function, '-zero_width/1-fun-0-', 1, 1811}.
  {label,1810}.
    {line,[{location,"bs_match_r25_SUITE.erl",1416}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-zero_width/1-fun-0-'},1}.
  {label,1811}.
    {test,bs_start_match3,{f,1813},1,[{x,0}],{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {test,bs_get_integer2,
          {f,1812},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1416,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,1812},[{tr,{x,2},{t_integer,{0,255}}},{integer,42}]}.
    {test,bs_test_tail2,{f,1812},[{x,0},0]}.
    {move,{atom,star},{x,0}}.
    return.
  {label,1812}.
    {bs_set_position,{x,0},{x,1}}.
    {test,bs_test_tail2,{f,1813},[{x,0},0]}.
    {move,{integer,0},{x,0}}.
    return.
  {label,1813}.
    {move,{atom,no_match},{x,0}}.
    return.


{function, '-coverage_beam_ssa_codegen/1-lbc$^0/2-0-', 2, 1815}.
  {label,1814}.
    {line,[{location,"bs_match_r25_SUITE.erl",1026}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-coverage_beam_ssa_codegen/1-lbc$^0/2-0-'},
               2}.
  {label,1815}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,1817},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1026,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,1816},[{tr,{x,2},{t_integer,{0,255}}},{integer,2}]}.
    {bs_get_tail,{x,0},{x,0},2}.
    {bs_create_bin,{f,0},
                   0,2,8,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,8,true}},
                          {atom,all},
                          {atom,string},
                          0,8,nil,
                          {string,<<0>>},
                          {integer,1}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {call_only,2,{f,1815}}. % '-coverage_beam_ssa_codegen/1-lbc$^0/2-0-'/2
  {label,1816}.
    {bs_get_tail,{x,0},{x,0},2}.
    {call_only,2,{f,1815}}. % '-coverage_beam_ssa_codegen/1-lbc$^0/2-0-'/2
  {label,1817}.
    {move,{atom,ok},{x,0}}.
    return.


{function, '-coverage_trim_4/1-lbc$^0/2-0-', 2, 1819}.
  {label,1818}.
    {line,[{location,"bs_match_r25_SUITE.erl",1009}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-coverage_trim_4/1-lbc$^0/2-0-'},
               2}.
  {label,1819}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,16,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,1820},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1009,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,0},{x,0},3}.
    {bs_create_bin,{f,0},
                   0,3,16,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,16,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,2},{t_integer,{0,255}}},
                          {integer,16}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,16,true}}]}}.
    {call_only,2,{f,1819}}. % '-coverage_trim_4/1-lbc$^0/2-0-'/2
  {label,1820}.
    {move,{atom,ok},{x,0}}.
    return.


{function, '-do_coverage_bin_to_term_list/1-lbc$^0/2-0-', 2, 1822}.
  {label,1821}.
    {line,[{location,"bs_match_r25_SUITE.erl",923}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-do_coverage_bin_to_term_list/1-lbc$^0/2-0-'},
               2}.
  {label,1822}.
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,1823},[{x,0}]}.
    {allocate,2,2}.
    {move,{x,1},{y,1}}.
    {get_list,{x,0},{x,0},{y,0}}.
    {call_ext,1,{extfunc,erlang,term_to_binary,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",924}]}.
    {gc_bif,byte_size,{f,0},1,[{tr,{x,0},{t_bitstring,8,false}}],{x,1}}.
    {bs_create_bin,{f,0},
                   0,2,8,
                   {x,0},
                   {list,[{atom,integer},
                          1,1,nil,
                          {tr,{x,1},{t_integer,{0,288230376151711743}}},
                          {integer,32},
                          {atom,binary},
                          2,8,nil,
                          {tr,{x,0},{t_bitstring,8,false}},
                          {atom,all}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",923}]}.
    {bs_create_bin,{f,0},
                   0,1,8,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{y,1},{t_bitstring,8,true}},
                          {atom,all},
                          {atom,binary},
                          2,8,nil,
                          {tr,{x,0},{t_bitstring,8,false}},
                          {atom,all}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,1822},2}. % '-do_coverage_bin_to_term_list/1-lbc$^0/2-0-'/2
  {label,1823}.
    {move,{x,1},{x,0}}.
    return.


{function, '-coverage_bc/2-lbc$^0/2-0-', 2, 1825}.
  {label,1824}.
    {line,[{location,"bs_match_r25_SUITE.erl",902}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-coverage_bc/2-lbc$^0/2-0-'},
               2}.
  {label,1825}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,255}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,1826},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {bs_create_bin,{f,0},
                   0,3,8,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,8,true}},
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,2},{t_integer,{0,255}}},
                          {integer,8}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {call_only,2,{f,1825}}. % '-coverage_bc/2-lbc$^0/2-0-'/2
  {label,1826}.
    {move,{x,1},{x,0}}.
    return.


{function, '-coverage/1-fun-4-', 0, 1828}.
  {label,1827}.
    {line,[{location,"bs_match_r25_SUITE.erl",878}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-coverage/1-fun-4-'},0}.
  {label,1828}.
    {move,{atom,whatever},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,throw,1}}.


{function, '-coverage/1-fun-3-', 0, 1830}.
  {label,1829}.
    {line,[{location,"bs_match_r25_SUITE.erl",877}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-coverage/1-fun-3-'},0}.
  {label,1830}.
    {move,{integer,42},{x,0}}.
    return.


{function, '-coverage/1-fun-2-', 2, 1832}.
  {label,1831}.
    {line,[{location,"bs_match_r25_SUITE.erl",821}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-coverage/1-fun-2-'},2}.
  {label,1832}.
    {line,[{location,"bs_match_r25_SUITE.erl",822}]}.
    {gc_bif,'+',{f,0},2,[{x,1},{x,0}],{x,0}}.
    return.


{function, '-coverage/1-fun-1-', 2, 1834}.
  {label,1833}.
    {line,[{location,"bs_match_r25_SUITE.erl",820}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-coverage/1-fun-1-'},2}.
  {label,1834}.
    {gc_bif,'+',{f,0},2,[{x,1},{x,0}],{x,0}}.
    return.


{function, '-coverage/1-fun-0-', 2, 1836}.
  {label,1835}.
    {line,[{location,"bs_match_r25_SUITE.erl",819}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-coverage/1-fun-0-'},2}.
  {label,1836}.
    {gc_bif,'+',{f,0},2,[{x,1},{x,0}],{x,0}}.
    return.


{function, '-bin_and_float/1-lbc$^0/2-0-', 3, 1838}.
  {label,1837}.
    {line,[{location,"bs_match_r25_SUITE.erl",631}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-bin_and_float/1-lbc$^0/2-0-'},
               3}.
  {label,1838}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {test,bs_get_float2,
          {f,1840},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {x,2},
           63,
           {field_flags,[{anno,[631,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,1839},[{tr,{x,3},{t_float,any}},{float,1.0}]}.
    {bs_get_tail,{x,0},{x,0},3}.
    {bs_create_bin,{f,0},
                   0,3,8,
                   {x,1},
                   {list,[{atom,private_append},
                          1,1,nil,
                          {tr,{x,1},{t_bitstring,8,true}},
                          {atom,all},
                          {atom,string},
                          0,8,nil,
                          {string,<<0>>},
                          {integer,1}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {call_only,3,{f,1838}}. % '-bin_and_float/1-lbc$^0/2-0-'/3
  {label,1839}.
    {bs_get_tail,{x,0},{x,0},3}.
    {call_only,3,{f,1838}}. % '-bin_and_float/1-lbc$^0/2-0-'/3
  {label,1840}.
    {move,{x,1},{x,0}}.
    return.


{function, '-null_fields/1-fun-3-', 0, 1842}.
  {label,1841}.
    {line,[{location,"bs_match_r25_SUITE.erl",302}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-null_fields/1-fun-3-'},0}.
  {label,1842}.
    {move,{atom,tail},{x,0}}.
    return.


{function, '-null_fields/1-fun-1-', 0, 1844}.
  {label,1843}.
    {line,[{location,"bs_match_r25_SUITE.erl",295}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-null_fields/1-fun-1-'},0}.
  {label,1844}.
    {allocate,0,0}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",296}]}.
    {call,1,{f,1684}}. % id/1
    {move,{literal,<<>>},{x,1}}.
    {bs_start_match4,{atom,no_fail},1,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {test,bs_skip_bits2,
          {f,1845},
          [{x,1},
           {x,0},
           1,
           {field_flags,[{anno,[297,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_test_tail2,{f,1845},[{x,1},0]}.
    {move,{atom,tail},{x,0}}.
    {deallocate,0}.
    return.
  {label,1845}.
    {bs_set_position,{x,1},{x,2}}.
    {test,bs_test_tail2,{f,1846},[{x,1},0]}.
    {move,{atom,empty},{x,0}}.
    {deallocate,0}.
    return.
  {label,1846}.
    {move,{literal,<<>>},{x,0}}.
    {call_last,1,{f,1934},0}. % '-null_fields/1-inlined-0-'/1


{function, '-otp_5269/1-fun-15-', 0, 1848}.
  {label,1847}.
    {line,[{location,"bs_match_r25_SUITE.erl",284}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-otp_5269/1-fun-15-'},0}.
  {label,1848}.
    {move,{literal,<<1,2,3,4>>},{x,0}}.
    {bs_start_match4,{atom,no_fail},0,{x,0},{x,0}}.
    {test,bs_skip_bits2,
          {f,1849},
          [{x,0},
           {integer,1},
           8,
           {field_flags,[{anno,[285,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_integer2,
          {f,1849},
          1,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[285,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_skip_bits2,
          {f,1849},
          [{x,0},
           {x,1},
           8,
           {field_flags,[{anno,[285,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_test_tail2,{f,1849},[{x,0},0]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1849}.
    {move,{literal,<<1,2,3,4>>},{x,0}}.
    {call_only,1,{f,1940}}. % '-otp_5269/1-inlined-6-'/1


{function, '-otp_5269/1-fun-13-', 0, 1851}.
  {label,1850}.
    {line,[{location,"bs_match_r25_SUITE.erl",280}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-otp_5269/1-fun-13-'},0}.
  {label,1851}.
    {move,{literal,[<<0,0,0,1>>,<<0,0,0,2>>,<<3>>]},{x,0}}.
    {call_only,1,{f,1853}}. % '-otp_5269/1-lc$^12/1-5-'/1


{function, '-otp_5269/1-lc$^12/1-5-', 1, 1853}.
  {label,1852}.
    {line,[{location,"bs_match_r25_SUITE.erl",281}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-otp_5269/1-lc$^12/1-5-'},1}.
  {label,1853}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {test,is_nonempty_list,{f,1855},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,1854},
          2,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,32},
           1,
           {field_flags,[{anno,[281,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1854},[{x,1},0]}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {call,1,{f,1853}}. % '-otp_5269/1-lc$^12/1-5-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,4294967295}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1854}.
    {call_only,1,{f,1853}}. % '-otp_5269/1-lc$^12/1-5-'/1
  {label,1855}.
    return.


{function, '-otp_5269/1-fun-11-', 0, 1857}.
  {label,1856}.
    {line,[{location,"bs_match_r25_SUITE.erl",275}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-otp_5269/1-fun-11-'},0}.
  {label,1857}.
    {move,{literal,<<2,65,66,67,68>>},{x,0}}.
    {bs_start_match4,{atom,no_fail},0,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,1858},
          1,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[276,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_binary2,
          {f,1858},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {tr,{x,1},{t_integer,{0,255}}},
           8,
           {field_flags,[{anno,[276,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,0},{x,0},3}.
    {test_heap,4,3}.
    {put_tuple2,{x,0},{list,[{x,1},{x,2},{x,0}]}}.
    return.
  {label,1858}.
    {line,[{location,"bs_match_r25_SUITE.erl",276}]}.
    {badmatch,{literal,<<2,65,66,67,68>>}}.


{function, '-otp_5269/1-fun-10-', 0, 1860}.
  {label,1859}.
    {line,[{location,"bs_match_r25_SUITE.erl",273}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-otp_5269/1-fun-10-'},0}.
  {label,1860}.
    {move,{integer,28},{x,0}}.
    return.


{function, '-otp_5269/1-fun-9-', 0, 1862}.
  {label,1861}.
    {line,[{location,"bs_match_r25_SUITE.erl",269}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-otp_5269/1-fun-9-'},0}.
  {label,1862}.
    {move,{literal,[<<16,0,19>>]},{x,0}}.
    {call_only,1,{f,1864}}. % '-otp_5269/1-lc$^7/1-3-'/1


{function, '-otp_5269/1-lc$^7/1-3-', 1, 1864}.
  {label,1863}.
    {line,[{location,"bs_match_r25_SUITE.erl",270}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-otp_5269/1-lc$^7/1-3-'},1}.
  {label,1864}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {test,is_nonempty_list,{f,1866},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,1865},
          2,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[269,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{x,1},3}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,1865},
          3,
          [{tr,{x,1},{t_bs_context,8}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[269,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1865},[{x,1},0]}.
    {line,[{location,"bs_match_r25_SUITE.erl",271}]}.
    {bs_create_bin,{f,0},
                   2,3,8,
                   {x,1},
                   {list,[{atom,integer},
                          1,1,nil,
                          {tr,{x,2},{t_integer,{0,'+inf'}}},
                          {integer,8}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {swap,{x,0},{x,1}}.
    {call_only,2,{f,1868}}. % '-otp_5269/1-lc$^8/1-4-'/2
  {label,1865}.
    {call_only,1,{f,1864}}. % '-otp_5269/1-lc$^7/1-3-'/1
  {label,1866}.
    return.


{function, '-otp_5269/1-lc$^8/1-4-', 2, 1868}.
  {label,1867}.
    {line,[{location,"bs_match_r25_SUITE.erl",271}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-otp_5269/1-lc$^8/1-4-'},2}.
  {label,1868}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {test,is_nonempty_list,{f,1870},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,2}}.
    {test,bs_get_integer2,
          {f,1869},
          3,
          [{tr,{x,2},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[269,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1869},[{x,2},0]}.
    {allocate,1,4}.
    {move,{x,3},{y,0}}.
    {call,2,{f,1868}}. % '-otp_5269/1-lc$^8/1-4-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,255}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1869}.
    {call_only,2,{f,1868}}. % '-otp_5269/1-lc$^8/1-4-'/2
  {label,1870}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,1864}}. % '-otp_5269/1-lc$^7/1-3-'/1


{function, '-otp_5269/1-fun-6-', 0, 1872}.
  {label,1871}.
    {line,[{location,"bs_match_r25_SUITE.erl",267}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-otp_5269/1-fun-6-'},0}.
  {label,1872}.
    {move,{literal,[<<" ">>]},{x,0}}.
    {call_only,1,{f,1874}}. % '-otp_5269/1-lc$^5/1-2-'/1


{function, '-otp_5269/1-lc$^5/1-2-', 1, 1874}.
  {label,1873}.
    {line,[{location,"bs_match_r25_SUITE.erl",267}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-otp_5269/1-lc$^5/1-2-'},1}.
  {label,1874}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {test,is_nonempty_list,{f,1876},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,1875},
          2,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[267,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1875},[{x,1},0]}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {call,1,{f,1874}}. % '-otp_5269/1-lc$^5/1-2-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,255}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1875}.
    {call_only,1,{f,1874}}. % '-otp_5269/1-lc$^5/1-2-'/1
  {label,1876}.
    return.


{function, '-otp_5269/1-fun-4-', 0, 1878}.
  {label,1877}.
    {line,[{location,"bs_match_r25_SUITE.erl",265}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-otp_5269/1-fun-4-'},0}.
  {label,1878}.
    {move,{literal,<<" ">>},{x,0}}.
    {bs_start_match4,{atom,no_fail},0,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,1879},
          1,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[265,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_test_tail2,{f,1879},[{x,0},0]}.
    {move,{x,1},{x,0}}.
    return.
  {label,1879}.
    {move,{literal,<<" ">>},{x,0}}.
    {call_only,1,{f,1938}}. % '-otp_5269/1-inlined-1-'/1


{function, '-otp_5269/1-fun-2-', 0, 1881}.
  {label,1880}.
    {line,[{location,"bs_match_r25_SUITE.erl",263}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-otp_5269/1-fun-2-'},0}.
  {label,1881}.
    {move,{literal,<<16,0,7>>},{x,0}}.
    {bs_start_match4,{atom,no_fail},0,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,1882},
          1,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[263,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,1882},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {tr,{x,1},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[263,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_test_tail2,{f,1882},[{x,0},0]}.
    {move,{x,1},{x,0}}.
    return.
  {label,1882}.
    {badmatch,{literal,<<16,0,7>>}}.


{function, '-otp_5269/1-fun-1-', 0, 1884}.
  {label,1883}.
    {line,[{location,"bs_match_r25_SUITE.erl",258}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-otp_5269/1-fun-1-'},0}.
  {label,1884}.
    {move,{literal,<<16,0,7>>},{x,0}}.
    {bs_start_match4,{atom,no_fail},0,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,1885},
          1,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[259,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,1885},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {tr,{x,1},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[259,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_test_tail2,{f,1885},[{x,0},0]}.
    {move,{x,1},{x,0}}.
    return.
  {label,1885}.
    {move,{literal,<<16,0,7>>},{x,0}}.
    {call_only,1,{f,1936}}. % '-otp_5269/1-inlined-0-'/1


{function, '-size_shadow_6/2-fun-0-', 5, 1887}.
  {label,1886}.
    {line,[{location,"bs_match_r25_SUITE.erl",215}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-size_shadow_6/2-fun-0-'},5}.
  {label,1887}.
    {'%',{var_info,{x,3},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_atom,[any]},
                                     2 => {t_atom,[term]},
                                     3 => {t_atom,[goes]}}}}]}}.
    {'%',{var_info,{x,4},[{type,{t_integer,{13,13}}}]}}.
    {test,bs_start_match3,{f,1888},3,[{x,1}],{x,3}}.
    {test,bs_get_integer2,
          {f,1888},
          4,
          [{tr,{x,3},{t_bs_context,1}},
           {integer,13},
           1,
           {field_flags,[{anno,[215,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,1888},[{x,3},0]}.
    {move,{literal,{any,term,goes}},{x,1}}.
    {move,{x,2},{x,3}}.
    {move,{x,0},{x,2}}.
    {move,{x,4},{x,0}}.
    {call_only,4,{f,48}}. % fum/4
  {label,1888}.
    {call_only,3,{f,1958}}. % '-size_shadow_6/2-inlined-0-'/3


{function, '-size_shadow_5/2-fun-0-', 5, 1890}.
  {label,1889}.
    {line,[{location,"bs_match_r25_SUITE.erl",212}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-size_shadow_5/2-fun-0-'},5}.
  {label,1890}.
    {'%',{var_info,{x,3},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_atom,[any]},
                                     2 => {t_atom,[term]},
                                     3 => {t_atom,[goes]}}}}]}}.
    {'%',{var_info,{x,4},[{type,{t_integer,{12,12}}}]}}.
    {test,bs_start_match3,{f,1891},3,[{x,0}],{x,3}}.
    {test,bs_get_integer2,
          {f,1891},
          4,
          [{tr,{x,3},{t_bs_context,1}},
           {integer,12},
           1,
           {field_flags,[{anno,[212,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,1891},[{x,3},0]}.
    {move,{x,2},{x,3}}.
    {move,{x,1},{x,2}}.
    {move,{literal,{any,term,goes}},{x,1}}.
    {move,{x,4},{x,0}}.
    {call_only,4,{f,48}}. % fum/4
  {label,1891}.
    {call_only,3,{f,1956}}. % '-size_shadow_5/2-inlined-0-'/3


{function, '-size_shadow_4/1-fun-1-', 2, 1893}.
  {label,1892}.
    {line,[{location,"bs_match_r25_SUITE.erl",203}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-size_shadow_4/1-fun-1-'},2}.
  {label,1893}.
    {'%',{var_info,{x,1},[{type,{t_integer,{8,8}}}]}}.
    {test,bs_start_match3,{f,1894},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,1894},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[204,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{x,1},3}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,1894},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[204,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,1894},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[204,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,1894},[{x,1},0]}.
    {bs_start_match4,{atom,no_fail},5,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,1894},
          5,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[204,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {bs_get_tail,{x,0},{x,0},5}.
    {bs_start_match4,{atom,no_fail},5,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,1894},
          5,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,1},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[204,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_get_integer2,
          {f,1894},
          6,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,1},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[204,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,bs_test_tail2,{f,1894},[{x,0},0]}.
    {test,is_eq_exact,
          {f,1894},
          [{tr,{x,6},{t_integer,{0,'+inf'}}},{tr,{x,1},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,1894},
          [{tr,{x,2},{t_integer,{0,255}}},{tr,{x,1},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,1894},
          [{tr,{x,3},{t_integer,{0,'+inf'}}},
           {tr,{x,5},{t_integer,{0,'+inf'}}}]}.
    {test,is_eq_exact,
          {f,1894},
          [{tr,{x,4},{t_integer,{0,'+inf'}}},{tr,{x,1},{t_integer,{0,255}}}]}.
    {move,{x,5},{x,0}}.
    return.
  {label,1894}.
    {move,{atom,no},{x,0}}.
    return.


{function, '-size_shadow_4/1-fun-3-', 2, 1896}.
  {label,1895}.
    {line,[{location,"bs_match_r25_SUITE.erl",197}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-size_shadow_4/1-fun-3-'},2}.
  {label,1896}.
    {'%',{var_info,{x,1},[{type,{t_integer,{8,8}}}]}}.
    {test,bs_start_match3,{f,1897},1,[{x,0}],{x,0}}.
    {test,bs_get_integer2,
          {f,1897},
          1,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[198,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,1897},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,1},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[198,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1897},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,1},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[198,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1897},[{x,0},0]}.
    {test,is_eq_exact,
          {f,1897},
          [{tr,{x,3},{t_integer,{0,'+inf'}}},{tr,{x,1},{t_integer,{0,255}}}]}.
    {move,{x,2},{x,0}}.
    return.
  {label,1897}.
    {move,{atom,no},{x,0}}.
    return.


{function, '-size_shadow_4/1-fun-4-', 2, 1899}.
  {label,1898}.
    {line,[{location,"bs_match_r25_SUITE.erl",194}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-size_shadow_4/1-fun-4-'},2}.
  {label,1899}.
    {'%',{var_info,{x,1},[{type,{t_integer,{8,8}}}]}}.
    {test,bs_start_match3,{f,1900},1,[{x,0}],{x,0}}.
    {test,bs_get_integer2,
          {f,1900},
          1,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[194,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,1900},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,1},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[194,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1900},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,1},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[194,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1900},[{x,0},0]}.
    {test,is_eq_exact,
          {f,1900},
          [{tr,{x,3},{t_integer,{0,'+inf'}}},{tr,{x,1},{t_integer,{0,255}}}]}.
    {move,{x,2},{x,0}}.
    return.
  {label,1900}.
    {move,{atom,no},{x,0}}.
    return.


{function, '-size_shadow_3/0-fun-1-', 1, 1902}.
  {label,1901}.
    {line,[{location,"bs_match_r25_SUITE.erl",188}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-size_shadow_3/0-fun-1-'},1}.
  {label,1902}.
    {test_heap,4,1}.
    {put_tuple2,{x,1},{list,[{atom,tag},{x,0},{x,0}]}}.
    {test,bs_start_match3,{f,1903},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,1903},
          3,
          [{tr,{x,2},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[189,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_tail,{x,2},{x,2},4}.
    {bs_start_match4,{atom,no_fail},4,{x,2},{x,2}}.
    {test,bs_get_integer2,
          {f,1903},
          4,
          [{tr,{x,2},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[189,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_integer2,
          {f,1903},
          5,
          [{tr,{x,2},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[189,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_test_tail2,{f,1903},[{x,2},0]}.
    {bs_start_match4,{atom,no_fail},6,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,1903},
          6,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[189,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,0},{x,0},6}.
    {bs_start_match4,{atom,no_fail},6,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,1903},
          6,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[189,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,bs_get_integer2,
          {f,1903},
          7,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[189,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,7}}.
    {test,bs_test_tail2,{f,1903},[{x,0},0]}.
    {test,is_eq_exact,
          {f,1903},
          [{tr,{x,7},{t_integer,{0,'+inf'}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,1903},
          [{tr,{x,3},{t_integer,{0,255}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,1903},
          [{tr,{x,4},{t_integer,{0,'+inf'}}},
           {tr,{x,6},{t_integer,{0,'+inf'}}}]}.
    {test,is_eq_exact,
          {f,1903},
          [{tr,{x,5},{t_integer,{0,'+inf'}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {move,{x,6},{x,0}}.
    return.
  {label,1903}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,1954}}. % '-size_shadow_3/0-inlined-2-'/1


{function, '-size_shadow_3/0-fun-3-', 1, 1905}.
  {label,1904}.
    {line,[{location,"bs_match_r25_SUITE.erl",185}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-size_shadow_3/0-fun-3-'},1}.
  {label,1905}.
    {test_heap,5,1}.
    {put_list,{x,0},nil,{x,1}}.
    {put_tuple2,{x,1},{list,[{atom,tag},{x,1}]}}.
    {test,bs_start_match3,{f,1906},2,[{x,0}],{x,0}}.
    {test,bs_get_integer2,
          {f,1906},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[186,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,0},{x,0},3}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,1906},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[186,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,1906},
          4,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[186,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,1906},[{x,0},0]}.
    {test,is_eq_exact,
          {f,1906},
          [{tr,{x,4},{t_integer,{0,'+inf'}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {move,{x,3},{x,0}}.
    return.
  {label,1906}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,1952}}. % '-size_shadow_3/0-inlined-1-'/1


{function, '-size_shadow_3/0-fun-4-', 1, 1908}.
  {label,1907}.
    {line,[{location,"bs_match_r25_SUITE.erl",184}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-size_shadow_3/0-fun-4-'},1}.
  {label,1908}.
    {test,bs_start_match3,{f,1907},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,1907},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[184,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{x,1},3}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,1907},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[184,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,1907},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[184,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,1907},[{x,1},0]}.
    {test,is_eq_exact,
          {f,1907},
          [{tr,{x,4},{t_integer,{0,'+inf'}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {move,{x,3},{x,0}}.
    return.


{function, '-size_shadow_2/1-fun-1-', 2, 1910}.
  {label,1909}.
    {line,[{location,"bs_match_r25_SUITE.erl",177}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-size_shadow_2/1-fun-1-'},2}.
  {label,1910}.
    {'%',{var_info,{x,1},[{type,{t_integer,{8,8}}}]}}.
    {test_heap,3,1}.
    {put_tuple2,{x,1},{list,[{x,0},{x,0}]}}.
    {test,bs_start_match3,{f,1911},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,1911},
          3,
          [{tr,{x,2},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[178,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_tail,{x,2},{x,2},4}.
    {bs_start_match4,{atom,no_fail},4,{x,2},{x,2}}.
    {test,bs_get_integer2,
          {f,1911},
          4,
          [{tr,{x,2},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[178,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,1911},[{x,2},0]}.
    {bs_start_match4,{atom,no_fail},5,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,1911},
          5,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[178,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,0},{x,0},5}.
    {bs_start_match4,{atom,no_fail},5,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,1911},
          5,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[178,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_test_tail2,{f,1911},[{x,0},0]}.
    {test,is_eq_exact,
          {f,1911},
          [{tr,{x,3},{t_integer,{0,255}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,1911},
          [{tr,{x,4},{t_integer,{0,'+inf'}}},
           {tr,{x,5},{t_integer,{0,'+inf'}}}]}.
    {move,{x,5},{x,0}}.
    return.
  {label,1911}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,1950}}. % '-size_shadow_2/1-inlined-2-'/1


{function, '-size_shadow_2/1-fun-3-', 2, 1913}.
  {label,1912}.
    {line,[{location,"bs_match_r25_SUITE.erl",174}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-size_shadow_2/1-fun-3-'},2}.
  {label,1913}.
    {'%',{var_info,{x,1},[{type,{t_integer,{8,8}}}]}}.
    {test_heap,2,1}.
    {put_list,{x,0},nil,{x,1}}.
    {test,bs_start_match3,{f,1914},2,[{x,0}],{x,0}}.
    {test,bs_get_integer2,
          {f,1914},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[175,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,0},{x,0},3}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,1914},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[175,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1914},[{x,0},0]}.
    {move,{x,2},{x,0}}.
    return.
  {label,1914}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,1948}}. % '-size_shadow_2/1-inlined-1-'/1


{function, '-size_shadow_2/1-fun-4-', 2, 1916}.
  {label,1915}.
    {line,[{location,"bs_match_r25_SUITE.erl",173}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-size_shadow_2/1-fun-4-'},2}.
  {label,1916}.
    {'%',{var_info,{x,1},[{type,{t_integer,{8,8}}}]}}.
    {test,bs_start_match3,{f,1917},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,1917},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[173,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{x,1},3}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,1917},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[173,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1917},[{x,1},0]}.
    {move,{x,2},{x,0}}.
    return.
  {label,1917}.
    {call_only,1,{f,1946}}. % '-size_shadow_2/1-inlined-0-'/1


{function, '-size_shadow_1/0-fun-1-', 1, 1919}.
  {label,1918}.
    {line,[{location,"bs_match_r25_SUITE.erl",164}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-size_shadow_1/0-fun-1-'},1}.
  {label,1919}.
    {test,bs_start_match3,{f,1920},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,1920},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[165,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {put_map_assoc,{f,0},
                   {literal,#{}},
                   {x,0},
                   2,
                   {list,[{atom,key1},{x,0},{atom,key2},{x,0}]}}.
    {test_heap,5,2}.
    {put_list,{x,1},nil,{x,2}}.
    {put_tuple2,{x,1},{list,[{x,0},{x,1}]}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,1922}}. % '-size_shadow_1/0-fun-0-'/2
  {label,1920}.
    {line,[{location,"bs_match_r25_SUITE.erl",165}]}.
    {badmatch,{x,0}}.


{function, '-size_shadow_1/0-fun-0-', 2, 1922}.
  {label,1921}.
    {line,[{location,"bs_match_r25_SUITE.erl",166}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-size_shadow_1/0-fun-0-'},2}.
  {label,1922}.
    {test,is_nonempty_list,{f,1921},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,3}}.
    {test,is_nil,{f,1921},[{x,3}]}.
    {test,is_tuple,{f,1921},[{x,1}]}.
    {test,test_arity,{f,1921},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_map,{f,1921},[{x,3}]}.
    {get_map_elements,{f,1921},
                      {tr,{x,3},{t_map,any,any}},
                      {list,[{atom,key2},{x,3},{atom,key1},{x,4}]}}.
    {test,bs_start_match3,{f,1921},5,[{x,3}],{x,3}}.
    {test,bs_get_integer2,
          {f,1921},
          5,
          [{tr,{x,3},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[166,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {bs_get_tail,{x,3},{x,3},6}.
    {bs_start_match4,{atom,no_fail},6,{x,3},{x,3}}.
    {test,bs_get_integer2,
          {f,1921},
          6,
          [{tr,{x,3},{t_bs_context,1}},
           {tr,{x,5},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[166,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,bs_test_tail2,{f,1921},[{x,3},0]}.
    {test,bs_start_match3,{f,1921},7,[{x,4}],{x,3}}.
    {test,bs_get_integer2,
          {f,1921},
          7,
          [{tr,{x,3},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[166,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {bs_get_tail,{x,3},{x,3},7}.
    {bs_start_match4,{atom,no_fail},7,{x,3},{x,3}}.
    {test,bs_get_integer2,
          {f,1921},
          7,
          [{tr,{x,3},{t_bs_context,1}},
           {tr,{x,4},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[166,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,7}}.
    {test,bs_test_tail2,{f,1921},[{x,3},0]}.
    {test,is_eq_exact,{f,1921},[{tr,{x,4},{t_integer,{0,255}}},{x,2}]}.
    {test,is_eq_exact,
          {f,1921},
          [{tr,{x,5},{t_integer,{0,255}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,1921},
          [{tr,{x,6},{t_integer,{0,'+inf'}}},
           {tr,{x,7},{t_integer,{0,'+inf'}}}]}.
    {get_tuple_element,{x,1},1,{x,3}}.
    {test,is_eq_exact,{f,1921},[{x,3},{tr,{x,2},{t_integer,{0,255}}}]}.
    {move,{x,7},{x,0}}.
    return.


{function, '-size_shadow_1/0-fun-3-', 1, 1924}.
  {label,1923}.
    {line,[{location,"bs_match_r25_SUITE.erl",161}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-size_shadow_1/0-fun-3-'},1}.
  {label,1924}.
    {test_heap,4,1}.
    {put_list,{x,0},nil,{x,1}}.
    {put_list,{x,0},{x,1},{x,1}}.
    {test,bs_start_match3,{f,1925},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,1925},
          3,
          [{tr,{x,2},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[162,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_tail,{x,2},{x,2},4}.
    {bs_start_match4,{atom,no_fail},4,{x,2},{x,2}}.
    {test,bs_get_integer2,
          {f,1925},
          4,
          [{tr,{x,2},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[162,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,1925},[{x,2},0]}.
    {bs_start_match4,{atom,no_fail},5,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,1925},
          5,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[162,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,0},{x,0},5}.
    {bs_start_match4,{atom,no_fail},5,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,1925},
          5,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[162,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_test_tail2,{f,1925},[{x,0},0]}.
    {test,is_eq_exact,
          {f,1925},
          [{tr,{x,3},{t_integer,{0,255}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,1925},
          [{tr,{x,4},{t_integer,{0,'+inf'}}},
           {tr,{x,5},{t_integer,{0,'+inf'}}}]}.
    {move,{x,5},{x,0}}.
    return.
  {label,1925}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,1944}}. % '-size_shadow_1/0-inlined-2-'/1


{function, '-size_shadow_1/0-fun-5-', 1, 1927}.
  {label,1926}.
    {line,[{location,"bs_match_r25_SUITE.erl",158}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-size_shadow_1/0-fun-5-'},1}.
  {label,1927}.
    {test_heap,2,1}.
    {put_list,{x,0},nil,{x,1}}.
    {test,bs_start_match3,{f,1928},2,[{x,0}],{x,0}}.
    {test,bs_get_integer2,
          {f,1928},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[159,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,0},{x,0},3}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,1928},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[159,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1928},[{x,0},0]}.
    {move,{x,2},{x,0}}.
    return.
  {label,1928}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,1942}}. % '-size_shadow_1/0-inlined-1-'/1


{function, '-size_shadow_1/0-fun-6-', 1, 1930}.
  {label,1929}.
    {line,[{location,"bs_match_r25_SUITE.erl",157}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-size_shadow_1/0-fun-6-'},1}.
  {label,1930}.
    {test,bs_start_match3,{f,1929},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,1929},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[157,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{x,1},3}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,1929},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[157,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1929},[{x,1},0]}.
    {move,{x,2},{x,0}}.
    return.


{function, '-mos_int_fun/1-inlined-0-', 1, 1932}.
  {label,1931}.
    {line,[{location,"bs_match_r25_SUITE.erl",1727}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-mos_int_fun/1-inlined-0-'},1}.
  {label,1932}.
    {jump,{f,1931}}.


{function, '-null_fields/1-inlined-0-', 1, 1934}.
  {label,1933}.
    {line,[{location,"bs_match_r25_SUITE.erl",297}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-null_fields/1-inlined-0-'},1}.
  {label,1934}.
    {jump,{f,1933}}.


{function, '-otp_5269/1-inlined-0-', 1, 1936}.
  {label,1935}.
    {line,[{location,"bs_match_r25_SUITE.erl",259}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-otp_5269/1-inlined-0-'},1}.
  {label,1936}.
    {jump,{f,1935}}.


{function, '-otp_5269/1-inlined-1-', 1, 1938}.
  {label,1937}.
    {line,[{location,"bs_match_r25_SUITE.erl",265}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-otp_5269/1-inlined-1-'},1}.
  {label,1938}.
    {jump,{f,1937}}.


{function, '-otp_5269/1-inlined-6-', 1, 1940}.
  {label,1939}.
    {line,[{location,"bs_match_r25_SUITE.erl",285}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-otp_5269/1-inlined-6-'},1}.
  {label,1940}.
    {jump,{f,1939}}.


{function, '-size_shadow_1/0-inlined-1-', 1, 1942}.
  {label,1941}.
    {line,[{location,"bs_match_r25_SUITE.erl",159}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-size_shadow_1/0-inlined-1-'},
               1}.
  {label,1942}.
    {jump,{f,1941}}.


{function, '-size_shadow_1/0-inlined-2-', 1, 1944}.
  {label,1943}.
    {line,[{location,"bs_match_r25_SUITE.erl",162}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-size_shadow_1/0-inlined-2-'},
               1}.
  {label,1944}.
    {jump,{f,1943}}.


{function, '-size_shadow_2/1-inlined-0-', 1, 1946}.
  {label,1945}.
    {line,[{location,"bs_match_r25_SUITE.erl",173}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-size_shadow_2/1-inlined-0-'},
               1}.
  {label,1946}.
    {jump,{f,1945}}.


{function, '-size_shadow_2/1-inlined-1-', 1, 1948}.
  {label,1947}.
    {line,[{location,"bs_match_r25_SUITE.erl",175}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-size_shadow_2/1-inlined-1-'},
               1}.
  {label,1948}.
    {jump,{f,1947}}.


{function, '-size_shadow_2/1-inlined-2-', 1, 1950}.
  {label,1949}.
    {line,[{location,"bs_match_r25_SUITE.erl",178}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-size_shadow_2/1-inlined-2-'},
               1}.
  {label,1950}.
    {jump,{f,1949}}.


{function, '-size_shadow_3/0-inlined-1-', 1, 1952}.
  {label,1951}.
    {line,[{location,"bs_match_r25_SUITE.erl",186}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-size_shadow_3/0-inlined-1-'},
               1}.
  {label,1952}.
    {jump,{f,1951}}.


{function, '-size_shadow_3/0-inlined-2-', 1, 1954}.
  {label,1953}.
    {line,[{location,"bs_match_r25_SUITE.erl",189}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-size_shadow_3/0-inlined-2-'},
               1}.
  {label,1954}.
    {jump,{f,1953}}.


{function, '-size_shadow_5/2-inlined-0-', 3, 1956}.
  {label,1955}.
    {line,[{location,"bs_match_r25_SUITE.erl",212}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-size_shadow_5/2-inlined-0-'},
               3}.
  {label,1956}.
    {jump,{f,1955}}.


{function, '-size_shadow_6/2-inlined-0-', 3, 1958}.
  {label,1957}.
    {line,[{location,"bs_match_r25_SUITE.erl",215}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-size_shadow_6/2-inlined-0-'},
               3}.
  {label,1958}.
    {jump,{f,1957}}.
