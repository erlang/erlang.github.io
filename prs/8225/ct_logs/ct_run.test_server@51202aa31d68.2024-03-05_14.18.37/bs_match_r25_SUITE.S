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
           {bs_test_tail,1},
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

{labels, 1961}.


{function, suite, 0, 2}.
  {label,1}.
    {line,[{location,"bs_match_r25_SUITE.erl",66}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,suite},0}.
  {label,2}.
    {move,{literal,[{ct_hooks,[ts_install_cth]},{timetrap,{minutes,1}}]},
          {x,0}}.
    return.


{function, all, 0, 4}.
  {label,3}.
    {line,[{location,"bs_match_r25_SUITE.erl",70}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,all},0}.
  {label,4}.
    {move,{literal,[{group,p}]},{x,0}}.
    return.


{function, groups, 0, 6}.
  {label,5}.
    {line,[{location,"bs_match_r25_SUITE.erl",73}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,groups},0}.
  {label,6}.
    {allocate,0,0}.
    {line,[{location,"bs_match_r25_SUITE.erl",74}]}.
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
                                 bs_test_tail]}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {deallocate,0}.
    return.


{function, init_per_suite, 1, 8}.
  {label,7}.
    {line,[{location,"bs_match_r25_SUITE.erl",103}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,init_per_suite},1}.
  {label,8}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{atom,bs_match_r25_SUITE},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",104}]}.
    {call_ext,1,{extfunc,test_lib,recompile,1}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, end_per_suite, 1, 10}.
  {label,9}.
    {line,[{location,"bs_match_r25_SUITE.erl",107}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,end_per_suite},1}.
  {label,10}.
    {move,{atom,ok},{x,0}}.
    return.


{function, init_per_group, 2, 12}.
  {label,11}.
    {line,[{location,"bs_match_r25_SUITE.erl",110}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,init_per_group},2}.
  {label,12}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_group, 2, 14}.
  {label,13}.
    {line,[{location,"bs_match_r25_SUITE.erl",113}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,end_per_group},2}.
  {label,14}.
    {move,{x,1},{x,0}}.
    return.


{function, init_per_testcase, 2, 16}.
  {label,15}.
    {line,[{location,"bs_match_r25_SUITE.erl",117}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,init_per_testcase},2}.
  {label,16}.
    {test,is_atom,{f,15},[{x,0}]}.
    {test,is_list,{f,15},[{x,1}]}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_testcase, 2, 18}.
  {label,17}.
    {line,[{location,"bs_match_r25_SUITE.erl",120}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,end_per_testcase},2}.
  {label,18}.
    {test,is_atom,{f,17},[{x,0}]}.
    {test,is_list,{f,17},[{x,1}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, verify_highest_opcode, 1, 20}.
  {label,19}.
    {line,[{location,"bs_match_r25_SUITE.erl",123}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,verify_highest_opcode},1}.
  {label,20}.
    {allocate,0,0}.
    {move,{atom,bs_match_r25_SUITE},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",126}]}.
    {call_ext,1,{extfunc,code,which,1}}.
    {call_ext,1,{extfunc,file,read_file,1}}.
    {test,is_tagged_tuple,{f,23},[{x,0},2,{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",127}]}.
    {call_ext,1,{extfunc,test_lib,highest_opcode,1}}.
    {test,is_lt,{f,21},[{integer,180},{x,0}]}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,too_high_opcode_for_21},{x,0}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",131}]}.
    {call_ext,1,{extfunc,ct,fail,1}}.
  {label,21}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",135}]}.
    {call,1,{f,1686}}. % id/1
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
    {line,[{location,"bs_match_r25_SUITE.erl",126}]}.
    {badmatch,{x,0}}.


{function, size_shadow, 1, 25}.
  {label,24}.
    {line,[{location,"bs_match_r25_SUITE.erl",141}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,size_shadow},1}.
  {label,25}.
    {test,is_list,{f,24},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",143}]}.
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
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",144}]}.
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
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",145}]}.
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
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",146}]}.
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
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",149}]}.
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
        {f,1892},
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
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",151}]}.
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
        {f,1889},
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
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",152}]}.
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
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",154}]}.
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
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",153}]}.
    {badmatch,{x,0}}.
  {label,28}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",152}]}.
    {badmatch,{x,0}}.
  {label,29}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",150}]}.
    {badmatch,{x,0}}.
  {label,30}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",148}]}.
    {badmatch,{x,0}}.
  {label,31}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",146}]}.
    {badmatch,{x,0}}.
  {label,32}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",145}]}.
    {badmatch,{x,0}}.
  {label,33}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",144}]}.
    {badmatch,{x,0}}.
  {label,34}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",143}]}.
    {badmatch,{x,0}}.


{function, size_shadow_1, 0, 36}.
  {label,35}.
    {line,[{location,"bs_match_r25_SUITE.erl",157}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,size_shadow_1},0}.
  {label,36}.
    {test_heap,{alloc,[{words,8},{floats,0},{funs,4}]},0}.
    {make_fun3,{f,1932},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {make_fun3,{f,1929},0,0,{x,1},{list,[]}}.
    {'%',{var_info,{x,1},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {make_fun3,{f,1926},0,0,{x,2},{list,[]}}.
    {'%',{var_info,{x,2},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {make_fun3,{f,1921},0,0,{x,3},{list,[]}}.
    {'%',{var_info,{x,3},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {put_list,{x,3},nil,{x,3}}.
    {put_list,{x,2},{x,3},{x,2}}.
    {put_list,{x,1},{x,2},{x,1}}.
    {put_list,{x,0},{x,1},{x,0}}.
    {move,{literal,<<16,0,7>>},{x,1}}.
    {call_only,2,{f,52}}. % size_shadow_apply/2


{function, size_shadow_2, 1, 38}.
  {label,37}.
    {line,[{location,"bs_match_r25_SUITE.erl",174}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,size_shadow_2},1}.
  {label,38}.
    {'%',{var_info,{x,0},[{type,{t_integer,{8,8}}}]}}.
    {test_heap,{alloc,[{words,9},{floats,0},{funs,3}]},0}.
    {make_fun3,{f,1918},0,0,{x,0},{list,[{integer,8}]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {make_fun3,{f,1915},0,0,{x,1},{list,[{integer,8}]}}.
    {'%',{var_info,{x,1},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {make_fun3,{f,1912},0,0,{x,2},{list,[{integer,8}]}}.
    {'%',{var_info,{x,2},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {put_list,{x,2},nil,{x,2}}.
    {put_list,{x,1},{x,2},{x,1}}.
    {put_list,{x,0},{x,1},{x,0}}.
    {move,{literal,<<16,0,7>>},{x,1}}.
    {call_only,2,{f,52}}. % size_shadow_apply/2


{function, size_shadow_3, 0, 40}.
  {label,39}.
    {line,[{location,"bs_match_r25_SUITE.erl",184}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,size_shadow_3},0}.
  {label,40}.
    {test_heap,{alloc,[{words,6},{floats,0},{funs,3}]},0}.
    {make_fun3,{f,1910},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {make_fun3,{f,1907},0,0,{x,1},{list,[]}}.
    {'%',{var_info,{x,1},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {make_fun3,{f,1904},0,0,{x,2},{list,[]}}.
    {'%',{var_info,{x,2},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {put_list,{x,2},nil,{x,2}}.
    {put_list,{x,1},{x,2},{x,1}}.
    {put_list,{x,0},{x,1},{x,0}}.
    {move,{literal,<<16,0,7,0,16>>},{x,1}}.
    {call_only,2,{f,52}}. % size_shadow_apply/2


{function, size_shadow_4, 1, 42}.
  {label,41}.
    {line,[{location,"bs_match_r25_SUITE.erl",195}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,size_shadow_4},1}.
  {label,42}.
    {'%',{var_info,{x,0},[{type,{t_integer,{8,8}}}]}}.
    {test_heap,{alloc,[{words,9},{floats,0},{funs,3}]},0}.
    {make_fun3,{f,1901},0,0,{x,0},{list,[{integer,8}]}}.
    {'%',
        {var_info,
            {x,0},
            [{fun_type,
                 {t_union,
                     {t_atom,[no]},
                     none,
                     {t_integer,{0,'+inf'}},
                     none,none}}]}}.
    {make_fun3,{f,1898},0,0,{x,1},{list,[{integer,8}]}}.
    {'%',
        {var_info,
            {x,1},
            [{fun_type,
                 {t_union,
                     {t_atom,[no]},
                     none,
                     {t_integer,{0,'+inf'}},
                     none,none}}]}}.
    {make_fun3,{f,1895},0,0,{x,2},{list,[{integer,8}]}}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",213}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,size_shadow_5},2}.
  {label,44}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_atom,[any]},
                                     2 => {t_atom,[term]},
                                     3 => {t_atom,[goes]}}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{12,12}}}]}}.
    {test_heap,{alloc,[{words,2},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1892},
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
    {line,[{location,"bs_match_r25_SUITE.erl",216}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,size_shadow_6},2}.
  {label,46}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_atom,[any]},
                                     2 => {t_atom,[term]},
                                     3 => {t_atom,[goes]}}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{13,13}}}]}}.
    {test_heap,{alloc,[{words,2},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1889},
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
    {line,[{location,"bs_match_r25_SUITE.erl",219}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",222}]}.
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
           {field_flags,[{anno,[222,{file,"bs_match_r25_SUITE.erl"}]},
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
           {field_flags,[{anno,[222,{file,"bs_match_r25_SUITE.erl"}]},
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
    {line,[{location,"bs_match_r25_SUITE.erl",225}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",226}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",228}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",229}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",234}]}.
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
           {field_flags,[{anno,[236,{file,"bs_match_r25_SUITE.erl"}]},
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
           {field_flags,[{anno,[237,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,is_eq_exact,{f,64},[{tr,{x,1},{t_float,any}},{float,103133.0}]}.
    {test,bs_test_tail2,{f,64},[{x,0},0]}.
    {line,[{location,"bs_match_r25_SUITE.erl",240}]}.
    {bs_create_bin,{f,0},
                   0,0,64,
                   {x,0},
                   {list,[{atom,float},
                          1,1,
                          {literal,[native]},
                          {integer,42},
                          {integer,64}]}}.
    {allocate,0,1}.
    {call,1,{f,1686}}. % id/1
    {test,bs_start_match3,{f,63},1,[{x,0}],{x,1}}.
    {test,bs_get_float2,
          {f,63},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[241,{file,"bs_match_r25_SUITE.erl"}]},
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
           {field_flags,[{anno,[242,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,native]}],
          {x,2}}.
    {test,is_eq_exact,{f,62},[{tr,{x,2},{t_float,any}},{float,42.0}]}.
    {test,bs_test_tail2,{f,62},[{x,1},0]}.
    {move,{literal,<<64,80,0,0,0,0,0,0>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",245}]}.
    {call,1,{f,1686}}. % id/1
    {test,bs_start_match3,{f,61},1,[{x,0}],{x,1}}.
    {test,bs_get_float2,
          {f,61},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[246,{file,"bs_match_r25_SUITE.erl"}]},
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
           {field_flags,[{anno,[247,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,60},[{tr,{x,2},{t_float,any}},{float,64.0}]}.
    {test,bs_test_tail2,{f,60},[{x,1},0]}.
    {move,{atom,default},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",250}]}.
    {call,1,{f,1686}}. % id/1
    {test,is_eq_exact,{f,59},[{x,0},{atom,default}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,59}.
    {case_end,{x,0}}.
  {label,60}.
    {line,[{location,"bs_match_r25_SUITE.erl",247}]}.
    {badmatch,{x,0}}.
  {label,61}.
    {line,[{location,"bs_match_r25_SUITE.erl",246}]}.
    {badmatch,{x,0}}.
  {label,62}.
    {line,[{location,"bs_match_r25_SUITE.erl",242}]}.
    {badmatch,{x,0}}.
  {label,63}.
    {line,[{location,"bs_match_r25_SUITE.erl",241}]}.
    {badmatch,{x,0}}.
  {label,64}.
    {line,[{location,"bs_match_r25_SUITE.erl",237}]}.
    {badmatch,{literal,<<64,249,45,208,0,0,0,0>>}}.
  {label,65}.
    {line,[{location,"bs_match_r25_SUITE.erl",236}]}.
    {badmatch,{literal,<<64,249,45,208,0,0,0,0>>}}.


{function, otp_5269, 1, 67}.
  {label,66}.
    {line,[{location,"bs_match_r25_SUITE.erl",259}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,otp_5269},1}.
  {label,67}.
    {test,is_list,{f,66},[{x,0}]}.
    {allocate_heap,0,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1886},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {move,{integer,7},{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",260}]}.
    {call,2,{f,1250}}. % check/2
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
    {make_fun3,{f,1883},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {move,{integer,7},{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",265}]}.
    {call,2,{f,1250}}. % check/2
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
    {make_fun3,{f,1880},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_integer,{0,255}}}]}}.
    {move,{integer,32},{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",267}]}.
    {call,2,{f,1250}}. % check/2
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
    {make_fun3,{f,1874},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_list,{t_integer,{0,255}},nil}}]}}.
    {move,{literal," "},{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",269}]}.
    {call,2,{f,1250}}. % check/2
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
    {make_fun3,{f,1864},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_list,{t_integer,{0,255}},nil}}]}}.
    {move,{literal,[19]},{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",271}]}.
    {call,2,{f,1250}}. % check/2
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
    {'%',{var_info,{x,0},[{fun_type,{t_integer,{28,28}}}]}}.
    {move,{integer,28},{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",275}]}.
    {call,2,{f,1250}}. % check/2
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
    {make_fun3,{f,1859},0,0,{x,0},{list,[]}}.
    {'%',
        {var_info,
            {x,0},
            [{fun_type,
                 {t_tuple,3,true,
                     #{1 => {t_integer,{0,255}},
                       2 => {t_bitstring,8,false},
                       3 => {t_bitstring,8,false}}}}]}}.
    {move,{literal,{2,<<"AB">>,<<"CD">>}},{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",277}]}.
    {call,2,{f,1250}}. % check/2
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
    {make_fun3,{f,1853},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},
                   [{fun_type,{t_list,{t_integer,{0,4294967295}},nil}}]}}.
    {move,{literal,[1,2]},{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",282}]}.
    {call,2,{f,1250}}. % check/2
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
    {make_fun3,{f,1850},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[ok]}}]}}.
    {move,{atom,ok},{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",286}]}.
    {call,2,{f,1250}}. % check/2
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
    {line,[{location,"bs_match_r25_SUITE.erl",296}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,null_fields},1}.
  {label,69}.
    {test,is_list,{f,68},[{x,0}]}.
    {allocate_heap,0,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1846},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[empty,tail]}}]}}.
    {move,{atom,tail},{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",297}]}.
    {call,2,{f,1250}}. % check/2
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
    {make_fun3,{f,1844},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[tail]}}]}}.
    {move,{atom,tail},{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",304}]}.
    {call,2,{f,1250}}. % check/2
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
    {line,[{location,"bs_match_r25_SUITE.erl",312}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,wiger},1}.
  {label,71}.
    {test,is_list,{f,70},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<3>>},{x,0}}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",316}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",317}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",316}]}.
    {badmatch,{x,0}}.
  {label,74}.
    {line,[{location,"bs_match_r25_SUITE.erl",315}]}.
    {badmatch,{x,0}}.
  {label,75}.
    {line,[{location,"bs_match_r25_SUITE.erl",314}]}.
    {badmatch,{x,0}}.
  {label,76}.
    {line,[{location,"bs_match_r25_SUITE.erl",313}]}.
    {badmatch,{x,0}}.


{function, wcheck, 1, 78}.
  {label,77}.
    {line,[{location,"bs_match_r25_SUITE.erl",320}]}.
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
           {field_flags,[{anno,[320,{file,"bs_match_r25_SUITE.erl"}]},
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
    {line,[{location,"bs_match_r25_SUITE.erl",329}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bin_tail},1}.
  {label,83}.
    {test,is_list,{f,82},[{x,0}]}.
    {allocate,7,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3},{y,4},{y,5},{y,6}]}}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",331}]}.
    {call,2,{f,111}}. % bin_tail_c/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,109},[{tr,{x,0},{t_integer,{0,255}}},{integer,97}]}.
    {move,{integer,2},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_r25_SUITE.erl",332}]}.
    {call,2,{f,111}}. % bin_tail_c/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,108},[{tr,{x,0},{t_integer,{0,255}}},{integer,99}]}.
    {move,{integer,4},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_r25_SUITE.erl",333}]}.
    {call,2,{f,111}}. % bin_tail_c/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,107},[{tr,{x,0},{t_integer,{0,255}}},{integer,101}]}.
    {'catch',{y,6},{f,84}}.
    {move,{integer,5},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_r25_SUITE.erl",334}]}.
    {call,2,{f,111}}. % bin_tail_c/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
  {label,84}.
    {catch_end,{y,6}}.
    {test,is_tagged_tuple,{f,106},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,5},{f,85}}.
    {move,{integer,5},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,[13,14]},{location,"bs_match_r25_SUITE.erl",335}]}.
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
    {line,[{scope,"\v\f"},{location,"bs_match_r25_SUITE.erl",337}]}.
    {call,2,{f,121}}. % bin_tail_d/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,104},[{tr,{x,0},{t_integer,{0,255}}},{integer,97}]}.
    {move,{integer,8},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,"\n"},{location,"bs_match_r25_SUITE.erl",338}]}.
    {call,2,{f,121}}. % bin_tail_d/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,103},[{tr,{x,0},{t_integer,{0,255}}},{integer,98}]}.
    {move,{integer,24},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,"\n"},{location,"bs_match_r25_SUITE.erl",339}]}.
    {call,2,{f,121}}. % bin_tail_d/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,102},[{tr,{x,0},{t_integer,{0,255}}},{integer,100}]}.
    {'catch',{y,4},{f,86}}.
    {move,{integer,1},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,"\n"},{location,"bs_match_r25_SUITE.erl",340}]}.
    {call,2,{f,125}}. % bin_tail_d_dead/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
  {label,86}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,101},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,3},{f,87}}.
    {move,{integer,9},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,"\t\n"},{location,"bs_match_r25_SUITE.erl",341}]}.
    {call,2,{f,125}}. % bin_tail_d_dead/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
  {label,87}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,100},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,2},{f,88}}.
    {move,{integer,40},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_r25_SUITE.erl",342}]}.
    {call,2,{f,125}}. % bin_tail_d_dead/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
  {label,88}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,99},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,1},{f,89}}.
    {move,{integer,1},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r25_SUITE.erl",343}]}.
    {call,2,{f,128}}. % bin_tail_d_var/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_bitstring,8,false}}}}]}}.
  {label,89}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,98},[{x,0},2,{atom,'EXIT'}]}.
    {move,{literal,<<129>>},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r25_SUITE.erl",345}]}.
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
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",346}]}.
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
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",347}]}.
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
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",348}]}.
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
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",350}]}.
    {call_ext,1,{extfunc,erlang,md5,1}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",351}]}.
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
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",352}]}.
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
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",353}]}.
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
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",353}]}.
    {badmatch,{x,0}}.
  {label,92}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",352}]}.
    {badmatch,{x,0}}.
  {label,93}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",351}]}.
    {badmatch,{x,0}}.
  {label,94}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",348}]}.
    {badmatch,{x,0}}.
  {label,95}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",347}]}.
    {badmatch,{x,0}}.
  {label,96}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",346}]}.
    {badmatch,{x,0}}.
  {label,97}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",345}]}.
    {badmatch,{x,0}}.
  {label,98}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",343}]}.
    {badmatch,{x,0}}.
  {label,99}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",342}]}.
    {badmatch,{x,0}}.
  {label,100}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",341}]}.
    {badmatch,{x,0}}.
  {label,101}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",340}]}.
    {badmatch,{x,0}}.
  {label,102}.
    {line,[{scope,"\n"},{location,"bs_match_r25_SUITE.erl",339}]}.
    {badmatch,{x,0}}.
  {label,103}.
    {line,[{scope,"\n"},{location,"bs_match_r25_SUITE.erl",338}]}.
    {badmatch,{x,0}}.
  {label,104}.
    {line,[{scope,"\n"},{location,"bs_match_r25_SUITE.erl",337}]}.
    {badmatch,{x,0}}.
  {label,105}.
    {line,[{scope,"\n"},{location,"bs_match_r25_SUITE.erl",335}]}.
    {badmatch,{x,0}}.
  {label,106}.
    {line,[{scope,"\f"},{location,"bs_match_r25_SUITE.erl",334}]}.
    {badmatch,{x,0}}.
  {label,107}.
    {line,[{scope,[14]},{location,"bs_match_r25_SUITE.erl",333}]}.
    {badmatch,{x,0}}.
  {label,108}.
    {line,[{scope,[14]},{location,"bs_match_r25_SUITE.erl",332}]}.
    {badmatch,{x,0}}.
  {label,109}.
    {line,[{scope,[14]},{location,"bs_match_r25_SUITE.erl",331}]}.
    {badmatch,{x,0}}.


{function, bin_tail_c, 2, 111}.
  {label,110}.
    {line,[{location,"bs_match_r25_SUITE.erl",357}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bin_tail_c},2}.
  {label,111}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,5}}}]}}.
    {allocate,4,2}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{x,1},{y,2}}.
    {move,{x,0},{y,3}}.
    {line,[{location,"bs_match_r25_SUITE.erl",358}]}.
    {call,2,{f,115}}. % bin_tail_c_dead/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {bs_start_match4,{atom,no_fail},1,{y,3},{x,1}}.
    {move,{x,0},{y,1}}.
    {test,bs_skip_bits2,
          {f,113},
          [{x,1},
           {y,2},
           8,
           {field_flags,[{anno,[359,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_skip_bits2,
          {f,113},
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[359,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_get_tail,{x,1},{y,0},2}.
    {move,{y,2},{x,1}}.
    {move,{y,3},{x,0}}.
    {move,{y,0},{y,3}}.
    {move,{y,1},{y,2}}.
    {trim,2,2}.
    {line,[{location,"bs_match_r25_SUITE.erl",360}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",359}]}.
    {badmatch,{y,3}}.


{function, bin_tail_c_dead, 2, 115}.
  {label,114}.
    {line,[{location,"bs_match_r25_SUITE.erl",363}]}.
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
           {field_flags,[{anno,[364,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_integer2,
          {f,116},
          3,
          [{tr,{x,2},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[364,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {move,{x,1},{x,0}}.
    return.
  {label,116}.
    {line,[{location,"bs_match_r25_SUITE.erl",364}]}.
    {badmatch,{x,0}}.


{function, bin_tail_c_var, 2, 118}.
  {label,117}.
    {line,[{location,"bs_match_r25_SUITE.erl",367}]}.
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
           {field_flags,[{anno,[368,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_integer2,
          {f,119},
          3,
          [{tr,{x,2},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[368,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {bs_get_tail,{x,2},{x,0},3}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,1},{x,0}]}}.
    return.
  {label,119}.
    {line,[{location,"bs_match_r25_SUITE.erl",368}]}.
    {badmatch,{x,0}}.


{function, bin_tail_d, 2, 121}.
  {label,120}.
    {line,[{location,"bs_match_r25_SUITE.erl",372}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bin_tail_d},2}.
  {label,121}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,24}}}]}}.
    {allocate,4,2}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{x,1},{y,2}}.
    {move,{x,0},{y,3}}.
    {line,[{location,"bs_match_r25_SUITE.erl",373}]}.
    {call,2,{f,125}}. % bin_tail_d_dead/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {bs_start_match4,{atom,no_fail},1,{y,3},{x,1}}.
    {move,{x,0},{y,1}}.
    {test,bs_skip_bits2,
          {f,123},
          [{x,1},
           {y,2},
           1,
           {field_flags,[{anno,[374,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_skip_bits2,
          {f,123},
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[374,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,123},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {atom,all},
           8,
           {field_flags,[{anno,[374,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {y,0}}.
    {move,{y,2},{x,1}}.
    {move,{y,3},{x,0}}.
    {move,{y,0},{y,3}}.
    {move,{y,1},{y,2}}.
    {trim,2,2}.
    {line,[{location,"bs_match_r25_SUITE.erl",375}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",374}]}.
    {badmatch,{y,3}}.


{function, bin_tail_d_dead, 2, 125}.
  {label,124}.
    {line,[{location,"bs_match_r25_SUITE.erl",378}]}.
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
           {field_flags,[{anno,[379,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_integer2,
          {f,126},
          3,
          [{tr,{x,2},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[379,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_test_unit,{f,126},[{x,2},8]}.
    {move,{x,1},{x,0}}.
    return.
  {label,126}.
    {line,[{location,"bs_match_r25_SUITE.erl",379}]}.
    {badmatch,{x,0}}.


{function, bin_tail_d_var, 2, 128}.
  {label,127}.
    {line,[{location,"bs_match_r25_SUITE.erl",382}]}.
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
           {field_flags,[{anno,[383,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_integer2,
          {f,129},
          3,
          [{tr,{x,2},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[383,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_get_binary2,
          {f,129},
          3,
          [{tr,{x,2},{t_bs_context,1}},
           {atom,all},
           8,
           {field_flags,[{anno,[383,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{x,1},{x,2}]}}.
    return.
  {label,129}.
    {line,[{location,"bs_match_r25_SUITE.erl",383}]}.
    {badmatch,{x,0}}.


{function, bin_tail_e, 1, 131}.
  {label,130}.
    {line,[{location,"bs_match_r25_SUITE.erl",386}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bin_tail_e},1}.
  {label,131}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",387}]}.
    {call,1,{f,136}}. % bin_tail_e_dead/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,132},[{x,0},{atom,ok}]}.
    {bs_start_match4,{atom,no_fail},0,{y,1},{x,0}}.
    {test,bs_skip_bits2,
          {f,134},
          [{x,0},
           {integer,8},
           1,
           {field_flags,[{anno,[389,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_get_tail,{x,0},{y,0},1}.
    {move,{y,1},{x,0}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {line,[{location,"bs_match_r25_SUITE.erl",390}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",389}]}.
    {badmatch,{y,1}}.


{function, bin_tail_e_dead, 1, 136}.
  {label,135}.
    {line,[{location,"bs_match_r25_SUITE.erl",396}]}.
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
           {field_flags,[{anno,[400,{file,"bs_match_r25_SUITE.erl"}]},
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
    {line,[{location,"bs_match_r25_SUITE.erl",404}]}.
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
           {field_flags,[{anno,[408,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_match_string,{f,140},[{x,0},5,{string,<<"\b">>}]}.
    {test,bs_get_binary2,
          {f,140},
          1,
          [{tr,{x,0},{t_bs_context,1}},
           {atom,all},
           8,
           {field_flags,[{anno,[408,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,0}}.
    return.
  {label,140}.
    {move,{atom,error},{x,0}}.
    return.


{function, bin_tail_f, 3, 142}.
  {label,141}.
    {line,[{location,"bs_match_r25_SUITE.erl",412}]}.
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
           {field_flags,[{anno,[414,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_binary2,
          {f,143},
          5,
          [{tr,{x,3},{t_bs_context,8}},
           {tr,{x,2},{t_integer,{0,999}}},
           8,
           {field_flags,[{anno,[414,{file,"bs_match_r25_SUITE.erl"}]},
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
    {line,[{location,"bs_match_r25_SUITE.erl",413}]}.
    {case_end,{x,0}}.


{function, save_restore, 1, 146}.
  {label,145}.
    {line,[{location,"bs_match_r25_SUITE.erl",420}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,save_restore},1}.
  {label,146}.
    {test,is_list,{f,145},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<"*">>},{x,0}}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",423}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",424}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",430}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",431}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",432}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",433}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",435}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",436}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",437}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",438}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",440}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",441}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",442}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",443}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",445}]}.
    {call,2,{f,191}}. % multiple_matches/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b,c,d]}}]}}.
    {test,is_eq_exact,{f,151},[{tr,{x,0},{t_atom,[a,b,c,d]}},{atom,a}]}.
    {move,{literal,<<3,231>>},{x,1}}.
    {move,{literal,<<3,9>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",446}]}.
    {call,2,{f,191}}. % multiple_matches/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b,c,d]}}]}}.
    {test,is_eq_exact,{f,150},[{tr,{x,0},{t_atom,[a,b,c,d]}},{atom,b}]}.
    {move,{literal,<<"9">>},{x,1}}.
    {move,{literal,<<3,9>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",447}]}.
    {call,2,{f,191}}. % multiple_matches/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b,c,d]}}]}}.
    {test,is_eq_exact,{f,149},[{tr,{x,0},{t_atom,[a,b,c,d]}},{atom,c}]}.
    {move,{literal,<<4,87>>},{x,1}}.
    {move,{literal,<<17>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",448}]}.
    {call,2,{f,191}}. % multiple_matches/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b,c,d]}}]}}.
    {test,is_eq_exact,{f,148},[{tr,{x,0},{t_atom,[a,b,c,d]}},{atom,d}]}.
    {move,{literal,<<"ÿÿÿÿÿÿÿÿ">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",451}]}.
    {call,1,{f,196}}. % bad_float_unpack_match/1
    {'%',{var_info,{x,0},[{type,{t_number,any}}]}}.
    {test,is_eq_exact,{f,147},[{tr,{x,0},{t_number,any}},{integer,-1}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,147}.
    {move,{atom,bad_return_value_probably_NaN},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",453}]}.
    {call_ext_last,1,{extfunc,ct,fail,1},0}.
  {label,148}.
    {line,[{location,"bs_match_r25_SUITE.erl",448}]}.
    {badmatch,{x,0}}.
  {label,149}.
    {line,[{location,"bs_match_r25_SUITE.erl",447}]}.
    {badmatch,{x,0}}.
  {label,150}.
    {line,[{location,"bs_match_r25_SUITE.erl",446}]}.
    {badmatch,{x,0}}.
  {label,151}.
    {line,[{location,"bs_match_r25_SUITE.erl",445}]}.
    {badmatch,{x,0}}.
  {label,152}.
    {line,[{location,"bs_match_r25_SUITE.erl",443}]}.
    {badmatch,{x,0}}.
  {label,153}.
    {line,[{location,"bs_match_r25_SUITE.erl",442}]}.
    {badmatch,{x,0}}.
  {label,154}.
    {line,[{location,"bs_match_r25_SUITE.erl",441}]}.
    {badmatch,{x,0}}.
  {label,155}.
    {line,[{location,"bs_match_r25_SUITE.erl",440}]}.
    {badmatch,{x,0}}.
  {label,156}.
    {line,[{location,"bs_match_r25_SUITE.erl",438}]}.
    {badmatch,{x,0}}.
  {label,157}.
    {line,[{location,"bs_match_r25_SUITE.erl",437}]}.
    {badmatch,{x,0}}.
  {label,158}.
    {line,[{location,"bs_match_r25_SUITE.erl",436}]}.
    {badmatch,{x,0}}.
  {label,159}.
    {line,[{location,"bs_match_r25_SUITE.erl",435}]}.
    {badmatch,{x,0}}.
  {label,160}.
    {line,[{location,"bs_match_r25_SUITE.erl",433}]}.
    {badmatch,{x,0}}.
  {label,161}.
    {line,[{location,"bs_match_r25_SUITE.erl",432}]}.
    {badmatch,{x,0}}.
  {label,162}.
    {line,[{location,"bs_match_r25_SUITE.erl",431}]}.
    {badmatch,{x,0}}.
  {label,163}.
    {line,[{location,"bs_match_r25_SUITE.erl",430}]}.
    {badmatch,{x,0}}.
  {label,164}.
    {line,[{location,"bs_match_r25_SUITE.erl",424}]}.
    {badmatch,{x,0}}.
  {label,165}.
    {line,[{location,"bs_match_r25_SUITE.erl",423}]}.
    {badmatch,{x,0}}.
  {label,166}.
    {line,[{location,"bs_match_r25_SUITE.erl",422}]}.
    {badmatch,{x,0}}.
  {label,167}.
    {line,[{location,"bs_match_r25_SUITE.erl",421}]}.
    {badmatch,{x,0}}.


{function, save_restore_1, 1, 169}.
  {label,168}.
    {line,[{location,"bs_match_r25_SUITE.erl",456}]}.
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
           {field_flags,[{anno,[458,{file,"bs_match_r25_SUITE.erl"}]},
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
           {field_flags,[{anno,[460,{file,"bs_match_r25_SUITE.erl"}]},
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
           {field_flags,[{anno,[459,{file,"bs_match_r25_SUITE.erl"}]},
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
           {field_flags,[{anno,[461,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,174},[{x,1},0]}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{integer,3},{x,2}]}}.
    return.
  {label,174}.
    {line,[{location,"bs_match_r25_SUITE.erl",457}]}.
    {case_end,{x,0}}.


{function, lll, 1, 176}.
  {label,175}.
    {line,[{location,"bs_match_r25_SUITE.erl",464}]}.
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
           {field_flags,[{anno,[464,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{x,0},3}.
    {test_heap,5,3}.
    {put_list,{x,2},nil,{x,1}}.
    {put_tuple2,{x,0},{list,[{x,1},{x,0}]}}.
    return.


{function, mmm, 1, 178}.
  {label,177}.
    {line,[{location,"bs_match_r25_SUITE.erl",466}]}.
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
           {field_flags,[{anno,[466,{file,"bs_match_r25_SUITE.erl"}]},
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
    {line,[{location,"bs_match_r25_SUITE.erl",470}]}.
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
           {field_flags,[{anno,[470,{file,"bs_match_r25_SUITE.erl"}]},
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
    {line,[{location,"bs_match_r25_SUITE.erl",474}]}.
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
           {field_flags,[{anno,[474,{file,"bs_match_r25_SUITE.erl"}]},
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
    {line,[{location,"bs_match_r25_SUITE.erl",477}]}.
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
           {field_flags,[{anno,[477,{file,"bs_match_r25_SUITE.erl"}]},
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
           {field_flags,[{anno,[477,{file,"bs_match_r25_SUITE.erl"}]},
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
    {line,[{location,"bs_match_r25_SUITE.erl",482}]}.
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
           {field_flags,[{anno,[482,{file,"bs_match_r25_SUITE.erl"}]},
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
           {field_flags,[{anno,[483,{file,"bs_match_r25_SUITE.erl"}]},
                         signed,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,195},[{x,1},0]}.
    {move,{x,2},{x,0}}.
    return.


{function, partitioned_bs_match, 1, 199}.
  {label,198}.
    {line,[{location,"bs_match_r25_SUITE.erl",486}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,partitioned_bs_match},1}.
  {label,199}.
    {test,is_list,{f,198},[{x,0}]}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{literal,<<42,1,2,3>>},{x,1}}.
    {move,{atom,blurf},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",487}]}.
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
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",488}]}.
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
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",489}]}.
    {call,2,{f,210}}. % partitioned_bs_match/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,<<>>},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",490}]}.
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
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",492}]}.
    {call,2,{f,210}}. % partitioned_bs_match/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,200}.
    {catch_end,{y,2}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[-1,blurf]},{x,1}}.
    {move,{atom,partitioned_bs_match},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r25_SUITE.erl",491}]}.
    {call,3,{f,834}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,1},{f,201}}.
    {move,{literal,<<1,2,3>>},{x,1}}.
    {move,{integer,-1},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r25_SUITE.erl",494}]}.
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
    {line,[{scope,[3,4]},{location,"bs_match_r25_SUITE.erl",493}]}.
    {call,3,{f,834}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<17,1,2,3>>},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r25_SUITE.erl",495}]}.
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
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",496}]}.
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
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",499}]}.
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
    {line,[{scope,[1,2]},{location,"bs_match_r25_SUITE.erl",498}]}.
    {call,3,{f,834}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<"*">>},{x,1}}.
    {move,{atom,anything},{x,0}}.
    {line,[{scope,[1,2]},{location,"bs_match_r25_SUITE.erl",501}]}.
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
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",501}]}.
    {badmatch,{integer,1}}.
  {label,204}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",496}]}.
    {badmatch,{x,0}}.
  {label,205}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",495}]}.
    {badmatch,{x,0}}.
  {label,206}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",490}]}.
    {badmatch,{x,0}}.
  {label,207}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",488}]}.
    {badmatch,{x,0}}.
  {label,208}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",487}]}.
    {badmatch,{x,0}}.


{function, partitioned_bs_match, 2, 210}.
  {label,209}.
    {line,[{location,"bs_match_r25_SUITE.erl",506}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",513}]}.
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
           {field_flags,[{anno,[513,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,213},
          4,
          [{tr,{x,2},{t_bs_context,1}},
           {atom,all},
           8,
           {field_flags,[{anno,[513,{file,"bs_match_r25_SUITE.erl"}]},
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
    {line,[{location,"bs_match_r25_SUITE.erl",518}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",521}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,function_clause},1}.
  {label,220}.
    {test,is_list,{f,219},[{x,0}]}.
    {allocate,4,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3}]}}.
    {move,{literal,<<0,7,0,7,42>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",522}]}.
    {call,1,{f,226}}. % function_clause_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,3},{f,221}}.
    {move,{literal,<<0,1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",524}]}.
    {call,1,{f,226}}. % function_clause_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,221}.
    {catch_end,{y,3}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<0,1,2,3>>]},{x,1}}.
    {move,{atom,function_clause_1},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_r25_SUITE.erl",523}]}.
    {call,3,{f,834}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,2},{f,222}}.
    {move,{literal,<<0,7,0,1,2,3>>},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_r25_SUITE.erl",526}]}.
    {call,1,{f,226}}. % function_clause_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,222}.
    {catch_end,{y,2}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<0,1,2,3>>]},{x,1}}.
    {move,{atom,function_clause_1},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r25_SUITE.erl",525}]}.
    {call,3,{f,834}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<0,7,0,7,42>>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r25_SUITE.erl",528}]}.
    {call,1,{f,229}}. % function_clause_2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<"ÿ">>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r25_SUITE.erl",529}]}.
    {call,1,{f,229}}. % function_clause_2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<13:4>>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r25_SUITE.erl",530}]}.
    {call,1,{f,229}}. % function_clause_2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,1},{f,223}}.
    {move,{literal,<<0,1,2,3>>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r25_SUITE.erl",532}]}.
    {call,1,{f,229}}. % function_clause_2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,223}.
    {catch_end,{y,1}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<0,1,2,3>>]},{x,1}}.
    {move,{atom,function_clause_2},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r25_SUITE.erl",531}]}.
    {call,3,{f,834}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,0},{f,224}}.
    {move,{literal,<<0,7,0,1,2,3>>},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r25_SUITE.erl",534}]}.
    {call,1,{f,229}}. % function_clause_2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,224}.
    {catch_end,{y,0}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<0,1,2,3>>]},{x,1}}.
    {move,{atom,function_clause_2},{x,0}}.
    {call_last,3,{f,834},4}. % fc/3


{function, function_clause_1, 1, 226}.
  {label,225}.
    {line,[{location,"bs_match_r25_SUITE.erl",538}]}.
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
           {field_flags,[{anno,[538,{file,"bs_match_r25_SUITE.erl"}]},
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
    {line,[{location,"bs_match_r25_SUITE.erl",543}]}.
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
           {field_flags,[{anno,[543,{file,"bs_match_r25_SUITE.erl"}]},
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
           {field_flags,[{anno,[543,{file,"bs_match_r25_SUITE.erl"}]},
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
    {line,[{location,"bs_match_r25_SUITE.erl",550}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,unit},1}.
  {label,233}.
    {test,is_list,{f,232},[{x,0}]}.
    {allocate,7,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3},{y,4},{y,5},{y,6}]}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",551}]}.
    {call,1,{f,261}}. % peek1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,259},[{tr,{x,0},{t_integer,{0,255}}},{integer,42}]}.
    {move,{literal,<<43,1,2>>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_r25_SUITE.erl",552}]}.
    {call,1,{f,261}}. % peek1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,258},[{tr,{x,0},{t_integer,{0,255}}},{integer,43}]}.
    {move,{literal,<<43,1,2,1:1>>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_r25_SUITE.erl",553}]}.
    {call,1,{f,261}}. % peek1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,257},[{tr,{x,0},{t_integer,{0,255}}},{integer,43}]}.
    {move,{literal,<<43,1,2,3:2>>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_r25_SUITE.erl",554}]}.
    {call,1,{f,261}}. % peek1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,256},[{tr,{x,0},{t_integer,{0,255}}},{integer,43}]}.
    {move,{literal,<<43,1,2,127:7>>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_r25_SUITE.erl",555}]}.
    {call,1,{f,261}}. % peek1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,255},[{tr,{x,0},{t_integer,{0,255}}},{integer,43}]}.
    {move,{literal,<<"c">>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_r25_SUITE.erl",557}]}.
    {call,1,{f,265}}. % peek8/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,254},[{tr,{x,0},{t_integer,{0,255}}},{integer,99}]}.
    {move,{literal,<<"de">>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_r25_SUITE.erl",558}]}.
    {call,1,{f,265}}. % peek8/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,253},[{tr,{x,0},{t_integer,{0,255}}},{integer,100}]}.
    {'catch',{y,6},{f,234}}.
    {move,{literal,<<100,101,0:1>>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_r25_SUITE.erl",559}]}.
    {call,1,{f,265}}. % peek8/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
  {label,234}.
    {catch_end,{y,6}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<100,101,0:1>>]},{x,1}}.
    {move,{atom,peek8},{x,0}}.
    {line,[{scope,[13,14]},{location,"bs_match_r25_SUITE.erl",559}]}.
    {call,3,{f,834}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<146,108>>},{x,0}}.
    {line,[{scope,[13,14]},{location,"bs_match_r25_SUITE.erl",561}]}.
    {call,1,{f,267}}. % peek16/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,65535}}}]}}.
    {test,is_eq_exact,
          {f,252},
          [{tr,{x,0},{t_integer,{0,65535}}},{integer,37484}]}.
    {move,{literal,<<146,113,21,190>>},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_match_r25_SUITE.erl",562}]}.
    {call,1,{f,267}}. % peek16/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,65535}}}]}}.
    {test,is_eq_exact,
          {f,251},
          [{tr,{x,0},{t_integer,{0,65535}}},{integer,37489}]}.
    {'catch',{y,5},{f,235}}.
    {move,{literal,<<"\b">>},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_match_r25_SUITE.erl",563}]}.
    {call,1,{f,267}}. % peek16/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,65535}}}]}}.
  {label,235}.
    {catch_end,{y,5}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<"\b">>]},{x,1}}.
    {move,{atom,peek16},{x,0}}.
    {line,[{scope,"\v\f"},{location,"bs_match_r25_SUITE.erl",563}]}.
    {call,3,{f,834}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,4},{f,236}}.
    {move,{literal,<<0,42:7>>},{x,0}}.
    {line,[{scope,"\v\f"},{location,"bs_match_r25_SUITE.erl",564}]}.
    {call,1,{f,267}}. % peek16/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,65535}}}]}}.
  {label,236}.
    {catch_end,{y,4}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<0,42:7>>]},{x,1}}.
    {move,{atom,peek16},{x,0}}.
    {line,[{scope,"\t\n"},{location,"bs_match_r25_SUITE.erl",564}]}.
    {call,3,{f,834}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,3},{f,237}}.
    {move,{literal,<<1,2,3,4,5>>},{x,0}}.
    {line,[{scope,"\t\n"},{location,"bs_match_r25_SUITE.erl",565}]}.
    {call,1,{f,267}}. % peek16/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,65535}}}]}}.
  {label,237}.
    {catch_end,{y,3}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<1,2,3,4,5>>]},{x,1}}.
    {move,{atom,peek16},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_r25_SUITE.erl",565}]}.
    {call,3,{f,834}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<127:7>>},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_r25_SUITE.erl",567}]}.
    {call,1,{f,263}}. % peek7/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,127}}}]}}.
    {test,is_eq_exact,{f,250},[{tr,{x,0},{t_integer,{0,127}}},{integer,127}]}.
    {move,{literal,<<200,19:6>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",568}]}.
    {call,1,{f,263}}. % peek7/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,127}}}]}}.
    {test,is_eq_exact,{f,249},[{tr,{x,0},{t_integer,{0,127}}},{integer,100}]}.
    {'catch',{y,2},{f,238}}.
    {move,{literal,<<1,2>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",569}]}.
    {call,1,{f,263}}. % peek7/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,127}}}]}}.
  {label,238}.
    {catch_end,{y,2}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<1,2>>]},{x,1}}.
    {move,{atom,peek7},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r25_SUITE.erl",569}]}.
    {call,3,{f,834}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,-1},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r25_SUITE.erl",571}]}.
    {call,2,{f,269}}. % unit_opt/2
    {'%',{var_info,{x,0},[{type,{t_integer,{1,8}}}]}}.
    {test,is_eq_exact,{f,248},[{tr,{x,0},{t_integer,{1,8}}},{integer,1}]}.
    {move,{integer,-1},{x,1}}.
    {move,{integer,8},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",572}]}.
    {call,2,{f,269}}. % unit_opt/2
    {'%',{var_info,{x,0},[{type,{t_integer,{1,8}}}]}}.
    {test,is_eq_exact,{f,247},[{tr,{x,0},{t_integer,{1,8}}},{integer,8}]}.
    {move,{literal,<<0,0,0,1,97,98,99>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",574}]}.
    {call,1,{f,276}}. % unit_opt_2/1
    {test,is_eq_exact,{f,246},[{x,0},{literal,<<0,0,0,1,97,98,99>>}]}.
    {move,{literal,<<0,0,0,2,100,101,102>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",575}]}.
    {call,1,{f,276}}. % unit_opt_2/1
    {test,is_eq_exact,{f,245},[{x,0},{literal,<<"def">>}]}.
    {'catch',{y,1},{f,239}}.
    {move,{literal,<<0,0,0,1,33:7>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",576}]}.
    {call,1,{f,276}}. % unit_opt_2/1
  {label,239}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,244},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,0},{f,240}}.
    {move,{literal,<<0,0,0,2,55:7>>},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r25_SUITE.erl",577}]}.
    {call,1,{f,276}}. % unit_opt_2/1
  {label,240}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,243},[{x,0},2,{atom,'EXIT'}]}.
    {move,{literal,<<0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1>>},{x,0}}.
    {line,[{scope,[1,2]},{location,"bs_match_r25_SUITE.erl",579}]}.
    {call,1,{f,281}}. % unit_opt_3/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,242},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<0,0,0,0,0,0,0,0>>}]}.
    {move,{literal,<<0,0,0,0,0,0,0,1>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",580}]}.
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
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",579}]}.
    {badmatch,{x,0}}.
  {label,243}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",577}]}.
    {badmatch,{x,0}}.
  {label,244}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",576}]}.
    {badmatch,{x,0}}.
  {label,245}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",575}]}.
    {badmatch,{x,0}}.
  {label,246}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",574}]}.
    {badmatch,{x,0}}.
  {label,247}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",572}]}.
    {badmatch,{x,0}}.
  {label,248}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",571}]}.
    {badmatch,{x,0}}.
  {label,249}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",568}]}.
    {badmatch,{x,0}}.
  {label,250}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",567}]}.
    {badmatch,{x,0}}.
  {label,251}.
    {line,[{scope,"\f"},{location,"bs_match_r25_SUITE.erl",562}]}.
    {badmatch,{x,0}}.
  {label,252}.
    {line,[{scope,"\f"},{location,"bs_match_r25_SUITE.erl",561}]}.
    {badmatch,{x,0}}.
  {label,253}.
    {line,[{scope,[14]},{location,"bs_match_r25_SUITE.erl",558}]}.
    {badmatch,{x,0}}.
  {label,254}.
    {line,[{scope,[14]},{location,"bs_match_r25_SUITE.erl",557}]}.
    {badmatch,{x,0}}.
  {label,255}.
    {line,[{scope,[14]},{location,"bs_match_r25_SUITE.erl",555}]}.
    {badmatch,{x,0}}.
  {label,256}.
    {line,[{scope,[14]},{location,"bs_match_r25_SUITE.erl",554}]}.
    {badmatch,{x,0}}.
  {label,257}.
    {line,[{scope,[14]},{location,"bs_match_r25_SUITE.erl",553}]}.
    {badmatch,{x,0}}.
  {label,258}.
    {line,[{scope,[14]},{location,"bs_match_r25_SUITE.erl",552}]}.
    {badmatch,{x,0}}.
  {label,259}.
    {line,[{scope,[14]},{location,"bs_match_r25_SUITE.erl",551}]}.
    {badmatch,{x,0}}.


{function, peek1, 1, 261}.
  {label,260}.
    {line,[{location,"bs_match_r25_SUITE.erl",584}]}.
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
           {field_flags,[{anno,[584,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {move,{x,1},{x,0}}.
    return.


{function, peek7, 1, 263}.
  {label,262}.
    {line,[{location,"bs_match_r25_SUITE.erl",586}]}.
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
           {field_flags,[{anno,[586,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_unit,{f,262},[{x,1},7]}.
    {move,{x,2},{x,0}}.
    return.


{function, peek8, 1, 265}.
  {label,264}.
    {line,[{location,"bs_match_r25_SUITE.erl",588}]}.
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
           {field_flags,[{anno,[588,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_unit,{f,264},[{x,1},8]}.
    {move,{x,2},{x,0}}.
    return.


{function, peek16, 1, 267}.
  {label,266}.
    {line,[{location,"bs_match_r25_SUITE.erl",590}]}.
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
           {field_flags,[{anno,[590,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_unit,{f,266},[{x,1},16]}.
    {move,{x,2},{x,0}}.
    return.


{function, unit_opt, 2, 269}.
  {label,268}.
    {line,[{location,"bs_match_r25_SUITE.erl",592}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",594}]}.
    {case_end,{x,0}}.


{function, unit_opt_2, 1, 276}.
  {label,275}.
    {line,[{location,"bs_match_r25_SUITE.erl",604}]}.
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
           {field_flags,[{anno,[604,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,275},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {atom,all},
           8,
           {field_flags,[{anno,[604,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {select_val,{tr,{x,2},{t_integer,{0,4294967295}}},
                {f,279},
                {list,[{integer,1},{f,278},{integer,2},{f,277}]}}.
  {label,277}.
    {line,[{location,"bs_match_r25_SUITE.erl",609}]}.
    {bs_create_bin,{f,0},
                   0,2,8,
                   {x,0},
                   {list,[{atom,append},
                          1,8,nil,
                          {tr,{x,1},{t_bitstring,8,false}},
                          {atom,all}]}}.
  {label,278}.
    {call_only,1,{f,1686}}. % id/1
  {label,279}.
    {line,[{location,"bs_match_r25_SUITE.erl",605}]}.
    if_end.


{function, unit_opt_3, 1, 281}.
  {label,280}.
    {line,[{location,"bs_match_r25_SUITE.erl",613}]}.
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
           {field_flags,[{anno,[617,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {move,{x,1},{x,0}}.
    return.
  {label,282}.
    {line,[{location,"bs_match_r25_SUITE.erl",617}]}.
    {badmatch,{x,0}}.


{function, shared_sub_bins, 1, 284}.
  {label,283}.
    {line,[{location,"bs_match_r25_SUITE.erl",620}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,shared_sub_bins},1}.
  {label,284}.
    {test,is_list,{f,283},[{x,0}]}.
    {allocate,0,0}.
    {move,nil,{x,1}}.
    {move,{integer,0},{x,2}}.
    {move,{literal,<<1,2,3,4,5>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",621}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",624}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,sum},3}.
  {label,287}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{0,'+inf'}}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,288},
          3,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[624,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_tail,{x,0},{x,0},4}.
    {line,[{location,"bs_match_r25_SUITE.erl",625}]}.
    {gc_bif,'+',
            {f,0},
            4,
            [{tr,{x,2},{t_integer,{0,'+inf'}}},{tr,{x,3},{t_integer,{0,255}}}],
            {x,2}}.
    {test_heap,2,3}.
    {put_list,{x,0},{x,1},{x,1}}.
    {call_only,3,{f,287}}. % sum/3
  {label,288}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{x,2},{x,1}]}}.
    return.


{function, bin_and_float, 1, 290}.
  {label,289}.
    {line,[{location,"bs_match_r25_SUITE.erl",629}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bin_and_float},1}.
  {label,290}.
    {test,is_list,{f,289},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{float,0.0},{x,1}}.
    {move,{literal,<<63,240,0,0,0,0,0,0,64,0,0,0,0,0,0,0,64,8,0,0,0,0,0,0>>},
          {x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",630}]}.
    {call,2,{f,294}}. % bin_and_float/2
    {'%',{var_info,{x,0},[{type,{t_float,any}}]}}.
    {test,is_eq_exact,{f,292},[{tr,{x,0},{t_float,any}},{float,14.0}]}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",632}]}.
    {call,1,{f,1686}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,2}}.
    {trim,1,0}.
    {move,{literal,<<0,0,0,2:6>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",633}]}.
    {call,3,{f,1840}}. % '-bin_and_float/1-lbc$^0/2-0-'/3
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
    {line,[{location,"bs_match_r25_SUITE.erl",630}]}.
    {badmatch,{x,0}}.


{function, bin_and_float, 2, 294}.
  {label,293}.
    {line,[{location,"bs_match_r25_SUITE.erl",637}]}.
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
           {field_flags,[{anno,[637,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_float2,
          {f,295},
          5,
          [{tr,{x,2},{t_bs_context,64}},
           {integer,64},
           1,
           {field_flags,[{anno,[637,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_get_float2,
          {f,295},
          6,
          [{tr,{x,2},{t_bs_context,64}},
           {integer,64},
           1,
           {field_flags,[{anno,[637,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {bs_get_tail,{x,2},{x,0},7}.
    {fmove,{x,4},{fr,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",640}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",643}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,dec_subidentifiers},1}.
  {label,297}.
    {test,is_list,{f,296},[{x,0}]}.
    {allocate,0,0}.
    {move,nil,{x,2}}.
    {move,{integer,0},{x,1}}.
    {move,{integer,2},{x,3}}.
    {move,{literal,<<170,227,1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",645}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",646}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",647}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",646}]}.
    {badmatch,{x,0}}.
  {label,300}.
    {line,[{location,"bs_match_r25_SUITE.erl",644}]}.
    {badmatch,{x,0}}.


{function, do_dec_subidentifiers, 4, 302}.
  {label,301}.
    {line,[{location,"bs_match_r25_SUITE.erl",650}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_dec_subidentifiers},4}.
  {label,302}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,0}}}]}}.
    {'%',{var_info,{x,2},[{type,nil}]}}.
    {'%',{var_info,{x,3},[{type,{t_integer,{2,2}}}]}}.
    {allocate,2,4}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",651}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",652}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",653}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",654}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",653}]}.
    {badmatch,{x,0}}.
  {label,305}.
    {line,[{location,"bs_match_r25_SUITE.erl",652}]}.
    {badmatch,{x,0}}.


{function, dec_subidentifiers, 4, 307}.
  {label,306}.
    {line,[{location,"bs_match_r25_SUITE.erl",656}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",657}]}.
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
           {field_flags,[{anno,[658,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,is_eq_exact,{f,309},[{tr,{x,6},{t_integer,{0,1}}},{integer,1}]}.
    {test,bs_get_integer2,
          {f,309},
          6,
          [{tr,{x,4},{t_bs_context,1}},
           {integer,7},
           1,
           {field_flags,[{anno,[658,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,bs_get_binary2,
          {f,309},
          7,
          [{tr,{x,4},{t_bs_context,1}},
           {atom,all},
           8,
           {field_flags,[{anno,[658,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,7}}.
    {line,[{location,"bs_match_r25_SUITE.erl",659}]}.
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
           {field_flags,[{anno,[660,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {bs_get_tail,{x,4},{x,0},6}.
    {line,[{location,"bs_match_r25_SUITE.erl",661}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",663}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",664}]}.
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
           {field_flags,[{anno,[665,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,is_eq_exact,{f,313},[{tr,{x,6},{t_integer,{0,1}}},{integer,1}]}.
    {test,bs_get_integer2,
          {f,313},
          6,
          [{tr,{x,4},{t_bs_context,1}},
           {integer,7},
           1,
           {field_flags,[{anno,[665,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,bs_get_binary2,
          {f,313},
          7,
          [{tr,{x,4},{t_bs_context,1}},
           {atom,all},
           8,
           {field_flags,[{anno,[665,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,7}}.
    {line,[{location,"bs_match_r25_SUITE.erl",666}]}.
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
           {field_flags,[{anno,[667,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {bs_get_tail,{x,4},{x,0},6}.
    {line,[{location,"bs_match_r25_SUITE.erl",668}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",670}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",671}]}.
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
           {field_flags,[{anno,[672,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,is_eq_exact,{f,317},[{tr,{x,6},{t_integer,{0,1}}},{integer,1}]}.
    {test,bs_get_integer2,
          {f,317},
          6,
          [{tr,{x,4},{t_bs_context,1}},
           {integer,7},
           1,
           {field_flags,[{anno,[672,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,bs_get_binary2,
          {f,317},
          7,
          [{tr,{x,4},{t_bs_context,1}},
           {atom,all},
           8,
           {field_flags,[{anno,[672,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,7}}.
    {line,[{location,"bs_match_r25_SUITE.erl",673}]}.
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
           {field_flags,[{anno,[674,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {bs_get_tail,{x,4},{x,0},6}.
    {line,[{location,"bs_match_r25_SUITE.erl",675}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",677}]}.
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
           {field_flags,[{anno,[677,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,is_eq_exact,{f,320},[{tr,{x,6},{t_integer,{0,1}}},{integer,1}]}.
    {test,bs_get_integer2,
          {f,320},
          6,
          [{tr,{x,4},{t_bs_context,1}},
           {integer,7},
           1,
           {field_flags,[{anno,[677,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,bs_get_binary2,
          {f,320},
          7,
          [{tr,{x,4},{t_bs_context,1}},
           {atom,all},
           8,
           {field_flags,[{anno,[677,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,7}}.
    {test,is_ne_exact,{f,322},[{tr,{x,3},{t_integer,{'-inf',2}}},{integer,0}]}.
    {line,[{location,"bs_match_r25_SUITE.erl",678}]}.
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
           {field_flags,[{anno,[679,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {bs_get_tail,{x,4},{x,4},6}.
    {test,is_ne_exact,{f,322},[{tr,{x,3},{t_integer,{'-inf',2}}},{integer,0}]}.
    {line,[{location,"bs_match_r25_SUITE.erl",680}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",682}]}.
    {call_ext,1,{extfunc,lists,reverse,1}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{x,0},{y,0}]}}.
    {deallocate,1}.
    return.


{function, skip_optional_tag, 1, 324}.
  {label,323}.
    {line,[{location,"bs_match_r25_SUITE.erl",685}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,skip_optional_tag},1}.
  {label,324}.
    {test,is_list,{f,323},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<"*">>},{x,1}}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",688}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",689}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",688}]}.
    {badmatch,{x,0}}.
  {label,327}.
    {line,[{location,"bs_match_r25_SUITE.erl",687}]}.
    {badmatch,{x,0}}.
  {label,328}.
    {line,[{location,"bs_match_r25_SUITE.erl",686}]}.
    {badmatch,{x,0}}.


{function, skip_optional_tag, 2, 330}.
  {label,329}.
    {line,[{location,"bs_match_r25_SUITE.erl",692}]}.
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
           {field_flags,[{anno,[694,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,332},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {atom,all},
           8,
           {field_flags,[{anno,[694,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,0}}.
    {test,bs_start_match3,{f,332},3,[{x,1}],{x,1}}.
    {test,bs_get_integer2,
          {f,332},
          3,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[694,{file,"bs_match_r25_SUITE.erl"}]},
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
    {line,[{location,"bs_match_r25_SUITE.erl",698}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,decode_integer},1}.
  {label,334}.
    {allocate,0,0}.
    {move,{literal,<<"*+">>},{x,1}}.
    {move,{atom,whatever},{x,2}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",699}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",700}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",699}]}.
    {badmatch,{x,0}}.


{function, decode_integer, 3, 338}.
  {label,337}.
    {line,[{location,"bs_match_r25_SUITE.erl",703}]}.
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
           {field_flags,[{anno,[703,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_integer2,
          {f,337},
          5,
          [{tr,{x,3},{t_bs_context,1}},
           {integer,7},
           1,
           {field_flags,[{anno,[703,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_get_binary2,
          {f,337},
          6,
          [{tr,{x,3},{t_bs_context,1}},
           {atom,all},
           8,
           {field_flags,[{anno,[703,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,339},[{tr,{x,4},{t_integer,{0,1}}},{integer,0}]}.
    {line,[{location,"bs_match_r25_SUITE.erl",704}]}.
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
           {field_flags,[{anno,[704,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_get_tail,{x,1},{x,1},2}.
    {line,[{location,"bs_match_r25_SUITE.erl",705}]}.
    {gc_bif,byte_size,{f,0},2,[{tr,{x,0},{t_bitstring,8,false}}],{x,2}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,3}}.
    {test,bs_get_integer2,
          {f,340},
          4,
          [{tr,{x,3},{t_bs_context,8}},
           {tr,{x,2},{t_integer,{0,288230376151711743}}},
           8,
           {field_flags,[{anno,[706,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,340},[{x,3},0]}.
    {test_heap,4,3}.
    {put_tuple2,{x,0},{list,[{x,2},{x,1},{atom,whatever}]}}.
    return.
  {label,339}.
    {line,[{location,"bs_match_r25_SUITE.erl",709}]}.
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
           {field_flags,[{anno,[709,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_get_tail,{x,1},{x,1},6}.
    {line,[{location,"bs_match_r25_SUITE.erl",710}]}.
    {gc_bif,byte_size,{f,0},6,[{tr,{x,0},{t_bitstring,8,false}}],{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",711}]}.
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
           {field_flags,[{anno,[711,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,342},[{x,3},0]}.
    {line,[{location,"bs_match_r25_SUITE.erl",712}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",706}]}.
    {badmatch,{x,0}}.
  {label,341}.
    {line,[{location,"bs_match_r25_SUITE.erl",704}]}.
    {badmatch,{x,0}}.
  {label,342}.
    {line,[{location,"bs_match_r25_SUITE.erl",711}]}.
    {badmatch,{x,2}}.
  {label,343}.
    {line,[{location,"bs_match_r25_SUITE.erl",709}]}.
    {badmatch,{x,0}}.


{function, wfbm, 1, 345}.
  {label,344}.
    {line,[{location,"bs_match_r25_SUITE.erl",717}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,wfbm},1}.
  {label,345}.
    {test,is_list,{f,344},[{x,0}]}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{literal,<<" ">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",720}]}.
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
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",723}]}.
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
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",724}]}.
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
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",728}]}.
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
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",729}]}.
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
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",730}]}.
    {call,1,{f,368}}. % get_tail/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,346}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,349},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,0},{f,347}}.
    {move,{atom,no_binary},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r25_SUITE.erl",731}]}.
    {call,1,{f,368}}. % get_tail/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,347}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,348},[{x,0},2,{atom,'EXIT'}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,348}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",731}]}.
    {badmatch,{x,0}}.
  {label,349}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",730}]}.
    {badmatch,{x,0}}.
  {label,350}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",729}]}.
    {badmatch,{x,0}}.
  {label,351}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",728}]}.
    {badmatch,{x,0}}.
  {label,352}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",727}]}.
    {badmatch,{x,0}}.
  {label,353}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",726}]}.
    {badmatch,{x,0}}.
  {label,354}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",724}]}.
    {badmatch,{x,0}}.
  {label,355}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",723}]}.
    {badmatch,{x,0}}.
  {label,356}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",722}]}.
    {badmatch,{x,0}}.
  {label,357}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",721}]}.
    {badmatch,{x,0}}.
  {label,358}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",720}]}.
    {badmatch,{x,0}}.


{function, check_for_dot_or_space, 1, 360}.
  {label,359}.
    {line,[{location,"bs_match_r25_SUITE.erl",734}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,check_for_dot_or_space},1}.
  {label,360}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {move,{integer,0},{x,1}}.
    {call_only,2,{f,362}}. % check_for_dot_or_space/2


{function, check_for_dot_or_space, 2, 362}.
  {label,361}.
    {line,[{location,"bs_match_r25_SUITE.erl",737}]}.
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
           {field_flags,[{anno,[741,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,366},
          4,
          [{tr,{x,2},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[741,{file,"bs_match_r25_SUITE.erl"}]},
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
    {line,[{location,"bs_match_r25_SUITE.erl",746}]}.
    {gc_bif,'+',{f,0},2,[{tr,{x,1},{t_integer,{0,'+inf'}}},{integer,1}],{x,1}}.
    {call_only,2,{f,362}}. % check_for_dot_or_space/2


{function, get_tail, 1, 368}.
  {label,367}.
    {line,[{location,"bs_match_r25_SUITE.erl",749}]}.
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
           {field_flags,[{anno,[752,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{x,0},3}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,1}}.
    {test,bs_skip_bits2,
          {f,370},
          [{x,1},
           {integer,3},
           8,
           {field_flags,[{anno,[754,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_match_string,{f,370},[{x,1},16,{string,<<"x/">>}]}.
    {test,bs_get_binary2,
          {f,370},
          2,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,4},
           8,
           {field_flags,[{anno,[754,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_match_string,{f,370},[{x,1},8,{string,<<"/">>}]}.
    {test,bs_get_binary2,
          {f,370},
          3,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,2},
           8,
           {field_flags,[{anno,[754,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_match_string,{f,370},[{x,1},8,{string,<<"/">>}]}.
    {test,bs_get_binary2,
          {f,370},
          4,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,2},
           8,
           {field_flags,[{anno,[754,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_match_string,{f,370},[{x,1},8,{string,<<"/">>}]}.
    {test,bs_test_tail2,{f,370},[{x,1},0]}.
    {allocate,3,5}.
    {move,{x,4},{y,0}}.
    {move,{x,3},{y,1}}.
    {move,{x,2},{y,2}}.
    {line,[{location,"bs_match_r25_SUITE.erl",755}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",757}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",758}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",752}]}.
    {badmatch,{x,0}}.


{function, degenerated_match, 1, 373}.
  {label,372}.
    {line,[{location,"bs_match_r25_SUITE.erl",763}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,degenerated_match},1}.
  {label,373}.
    {test,is_list,{f,372},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",764}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",765}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",766}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",769}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",770}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",769}]}.
    {badmatch,{x,0}}.
  {label,376}.
    {line,[{location,"bs_match_r25_SUITE.erl",768}]}.
    {badmatch,{x,0}}.
  {label,377}.
    {line,[{location,"bs_match_r25_SUITE.erl",766}]}.
    {badmatch,{x,0}}.
  {label,378}.
    {line,[{location,"bs_match_r25_SUITE.erl",765}]}.
    {badmatch,{x,0}}.
  {label,379}.
    {line,[{location,"bs_match_r25_SUITE.erl",764}]}.
    {badmatch,{x,0}}.


{function, degenerated_match_1, 1, 381}.
  {label,380}.
    {line,[{location,"bs_match_r25_SUITE.erl",774}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,degenerated_match_1},1}.
  {label,381}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {test,is_eq_exact,
          {f,382},
          [{tr,{x,0},{t_bitstring,1,false}},{literal,<<>>}]}.
    {move,{atom,error},{x,0}}.
    return.
  {label,382}.
    {line,[{location,"bs_match_r25_SUITE.erl",775}]}.
    {gc_bif,byte_size,{f,0},1,[{tr,{x,0},{t_bitstring,1,false}}],{x,0}}.
    return.


{function, degenerated_match_2, 1, 384}.
  {label,383}.
    {line,[{location,"bs_match_r25_SUITE.erl",777}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,degenerated_match_2},1}.
  {label,384}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,385},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<>>}]}.
    {move,{atom,error},{x,0}}.
    return.
  {label,385}.
    {line,[{location,"bs_match_r25_SUITE.erl",779}]}.
    {gc_bif,byte_size,{f,0},1,[{tr,{x,0},{t_bitstring,8,false}}],{x,1}}.
    {test,is_ge,
          {f,386},
          [{tr,{x,1},{t_integer,{0,288230376151711743}}},{integer,5}]}.
    {move,{integer,4},{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",781}]}.
    {call_ext_only,2,{extfunc,erlang,split_binary,2}}.
  {label,386}.
    {move,{atom,no_split},{x,0}}.
    return.


{function, bs_sum, 1, 388}.
  {label,387}.
    {line,[{location,"bs_match_r25_SUITE.erl",786}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bs_sum},1}.
  {label,388}.
    {test,is_list,{f,387},[{x,0}]}.
    {allocate,4,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3}]}}.
    {move,nil,{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",787}]}.
    {call,1,{f,406}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,0}}}]}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",788}]}.
    {call,1,{f,406}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,'+inf'}}}]}}.
    {test,is_eq_exact,{f,404},[{tr,{x,0},{t_integer,{0,'+inf'}}},{integer,0}]}.
    {move,{literal,"*"},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",789}]}.
    {call,1,{f,406}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{1,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,403},
          [{tr,{x,0},{t_integer,{1,'+inf'}}},{integer,42}]}.
    {move,{literal,<<1>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",790}]}.
    {call,1,{f,406}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,'+inf'}}}]}}.
    {test,is_eq_exact,{f,402},[{tr,{x,0},{t_integer,{0,'+inf'}}},{integer,1}]}.
    {move,{literal,[1,2,3,4]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",791}]}.
    {call,1,{f,406}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{1,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,401},
          [{tr,{x,0},{t_integer,{1,'+inf'}}},{integer,10}]}.
    {move,{literal,<<1,2,3,4,5>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",792}]}.
    {call,1,{f,406}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,400},
          [{tr,{x,0},{t_integer,{0,'+inf'}}},{integer,15}]}.
    {move,{literal,[1,2,3|<<4,5,6>>]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",793}]}.
    {call,1,{f,406}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{1,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,399},
          [{tr,{x,0},{t_integer,{1,'+inf'}}},{integer,21}]}.
    {move,{literal,[1,2,3|{4,5}]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",794}]}.
    {call,1,{f,406}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{1,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,398},
          [{tr,{x,0},{t_integer,{1,'+inf'}}},{integer,15}]}.
    {move,{literal,[1,2,3|zero]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",795}]}.
    {call,1,{f,406}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{1,'+inf'}}}]}}.
    {test,is_eq_exact,{f,397},[{tr,{x,0},{t_integer,{1,'+inf'}}},{integer,6}]}.
    {move,{literal,[1,2,3|0]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",796}]}.
    {call,1,{f,406}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{1,'+inf'}}}]}}.
    {test,is_eq_exact,{f,396},[{tr,{x,0},{t_integer,{1,'+inf'}}},{integer,6}]}.
    {move,{literal,[1,2,3|one]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",797}]}.
    {call,1,{f,406}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{1,'+inf'}}}]}}.
    {test,is_eq_exact,{f,395},[{tr,{x,0},{t_integer,{1,'+inf'}}},{integer,7}]}.
    {'catch',{y,3},{f,389}}.
    {move,{literal,{too,big,tuple}},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",799}]}.
    {call,1,{f,406}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,389}.
    {catch_end,{y,3}}.
    {line,[{scope,[7,8]},{location,"bs_match_r25_SUITE.erl",799}]}.
    {call,1,{f,832}}. % fc/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,2},{f,390}}.
    {move,{literal,[1,2,3|{too,big,tuple}]},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_r25_SUITE.erl",800}]}.
    {call,1,{f,406}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{1,'+inf'}}}]}}.
  {label,390}.
    {catch_end,{y,2}}.
    {line,[{scope,[5,6]},{location,"bs_match_r25_SUITE.erl",800}]}.
    {call,1,{f,832}}. % fc/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r25_SUITE.erl",802}]}.
    {call,1,{f,413}}. % sneaky_alias/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_nil,{f,394},[{tr,{x,0},{t_list,any,nil}}]}.
    {move,{literal,<<0,0,2,47,0,5,234,71>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",803}]}.
    {call,1,{f,1686}}. % id/1
    {call,1,{f,413}}. % sneaky_alias/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,393},
          [{tr,{x,0},{t_list,any,nil}},{literal,[559,387655]}]}.
    {'catch',{y,1},{f,391}}.
    {move,{literal,<<1>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",804}]}.
    {call,1,{f,1686}}. % id/1
    {call,1,{f,413}}. % sneaky_alias/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
  {label,391}.
    {catch_end,{y,1}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<1>>]},{x,1}}.
    {move,{atom,sneaky_alias},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r25_SUITE.erl",804}]}.
    {call,3,{f,834}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,0},{f,392}}.
    {move,{integer,4},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r25_SUITE.erl",805}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {call,1,{f,413}}. % sneaky_alias/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
  {label,392}.
    {catch_end,{y,0}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[[1,2,3,4]]},{x,1}}.
    {move,{atom,sneaky_alias},{x,0}}.
    {call_last,3,{f,834},4}. % fc/3
  {label,393}.
    {line,[{scope,[0,4]},{location,"bs_match_r25_SUITE.erl",803}]}.
    {badmatch,{x,0}}.
  {label,394}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",802}]}.
    {badmatch,{x,0}}.
  {label,395}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",797}]}.
    {badmatch,{x,0}}.
  {label,396}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",796}]}.
    {badmatch,{x,0}}.
  {label,397}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",795}]}.
    {badmatch,{x,0}}.
  {label,398}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",794}]}.
    {badmatch,{x,0}}.
  {label,399}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",793}]}.
    {badmatch,{x,0}}.
  {label,400}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",792}]}.
    {badmatch,{x,0}}.
  {label,401}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",791}]}.
    {badmatch,{x,0}}.
  {label,402}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",790}]}.
    {badmatch,{x,0}}.
  {label,403}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",789}]}.
    {badmatch,{x,0}}.
  {label,404}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",788}]}.
    {badmatch,{x,0}}.


{function, bs_sum_1, 1, 406}.
  {label,405}.
    {line,[{location,"bs_match_r25_SUITE.erl",808}]}.
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
           {field_flags,[{anno,[808,{file,"bs_match_r25_SUITE.erl"}]},
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
    {line,[{location,"bs_match_r25_SUITE.erl",809}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",817}]}.
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
           {field_flags,[{anno,[818,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,412},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {atom,all},
           8,
           {field_flags,[{anno,[818,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",818}]}.
    {call,1,{f,413}}. % sneaky_alias/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.


{function, coverage, 1, 416}.
  {label,415}.
    {line,[{location,"bs_match_r25_SUITE.erl",820}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,coverage},1}.
  {label,416}.
    {test,is_list,{f,415},[{x,0}]}.
    {allocate_heap,4,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3}]}}.
    {make_fun3,{f,1838},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_number,any}}]}}.
    {move,{literal,<<>>},{x,2}}.
    {move,{integer,0},{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",821}]}.
    {call,3,{f,448}}. % coverage_fold/3
    {'%',{var_info,{x,0},[{type,{t_number,any}}]}}.
    {test,is_eq_exact,{f,446},[{tr,{x,0},{t_number,any}},{integer,0}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1836},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_number,any}}]}}.
    {move,{literal,<<1,2,3>>},{x,2}}.
    {move,{integer,0},{x,1}}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",822}]}.
    {call,3,{f,448}}. % coverage_fold/3
    {'%',{var_info,{x,0},[{type,{t_number,any}}]}}.
    {test,is_eq_exact,{f,445},[{tr,{x,0},{t_number,any}},{integer,6}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1834},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_number,any}}]}}.
    {'catch',{y,3},{f,417}}.
    {move,{literal,[a,b,c]},{x,2}}.
    {move,{integer,0},{x,1}}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",823}]}.
    {call,3,{f,448}}. % coverage_fold/3
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,417}.
    {catch_end,{y,3}}.
    {line,[{scope,[7,8]},{location,"bs_match_r25_SUITE.erl",823}]}.
    {call,1,{f,832}}. % fc/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<"*">>},{x,1}}.
    {move,{atom,float},{x,2}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_r25_SUITE.erl",827}]}.
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
           {field_flags,[{anno,[827,{file,"bs_match_r25_SUITE.erl"}]},
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
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",830}]}.
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
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",832}]}.
    {call,2,{f,456}}. % coverage_bc/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_bitstring,8,true},nil}}]}}.
    {test,is_eq_exact,
          {f,441},
          [{tr,{x,0},{t_list,{t_bitstring,8,true},nil}},
           {literal,[<<2>>,<<1>>]}]}.
    {move,{literal,{x,y,z}},{x,1}}.
    {move,{literal,<<2,97,98,99>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",834}]}.
    {call,2,{f,459}}. % coverage_setelement/2
    {'%',{var_info,{x,0},[{type,{t_tuple,3,true,#{}}}]}}.
    {test,is_eq_exact,
          {f,440},
          [{tr,{x,0},{t_tuple,3,true,#{}}},{literal,{x,<<"abc">>,z}}]}.
    {move,{literal,[coverage_id]},{x,1}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",836}]}.
    {call,2,{f,461}}. % coverage_apply/2
    {'%',{var_info,{x,0},[{type,{t_cons,any,nil}}]}}.
    {test,is_eq_exact,{f,439},[{tr,{x,0},{t_cons,any,nil}},{literal,"*"}]}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",837}]}.
    {call,1,{f,464}}. % coverage_external/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,438},[{tr,{x,0},{t_integer,{0,255}}},{integer,42}]}.
    {move,nil,{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",839}]}.
    {call,1,{f,470}}. % do_coverage_bin_to_term_list/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {move,{integer,10},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",840}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {test_heap,2,1}.
    {put_list,{x,0},{literal,[{a,b,c},<<0,0,0,0,5,3:2>>]},{x,0}}.
    {call,1,{f,470}}. % do_coverage_bin_to_term_list/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {'catch',{y,2},{f,418}}.
    {move,{literal,<<0,0,0,7>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",842}]}.
    {call,1,{f,475}}. % do_coverage_bin_to_term_list_1/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
  {label,418}.
    {catch_end,{y,2}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<0,0,0,7>>]},{x,1}}.
    {move,{atom,coverage_bin_to_term_list},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r25_SUITE.erl",841}]}.
    {call,3,{f,834}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<0,0,0,4>>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r25_SUITE.erl",844}]}.
    {call,1,{f,500}}. % coverage_per_key/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,437},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<>>}]}.
    {move,{literal,<<0,0,0,7,97,98,99>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",845}]}.
    {call,1,{f,500}}. % coverage_per_key/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,436},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<"abc">>}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",847}]}.
    {call,1,{f,503}}. % coverage_bitstring/1
    {'%',{var_info,{x,0},[{type,{t_atom,[binary,bitstring]}}]}}.
    {test,is_eq_exact,
          {f,435},
          [{tr,{x,0},{t_atom,[binary,bitstring]}},{atom,binary}]}.
    {move,{literal,<<7>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",848}]}.
    {call,1,{f,503}}. % coverage_bitstring/1
    {'%',{var_info,{x,0},[{type,{t_atom,[binary,bitstring]}}]}}.
    {test,is_eq_exact,
          {f,434},
          [{tr,{x,0},{t_atom,[binary,bitstring]}},{atom,binary}]}.
    {move,{literal,<<7:4>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",849}]}.
    {call,1,{f,503}}. % coverage_bitstring/1
    {'%',{var_info,{x,0},[{type,{t_atom,[binary,bitstring]}}]}}.
    {test,is_eq_exact,
          {f,433},
          [{tr,{x,0},{t_atom,[binary,bitstring]}},{atom,bitstring}]}.
    {move,{literal,[a]},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",850}]}.
    {call,1,{f,503}}. % coverage_bitstring/1
    {'%',{var_info,{x,0},[{type,{t_atom,[other]}}]}}.
    {move,{atom,e2},{x,3}}.
    {move,{atom,e1},{x,2}}.
    {move,{atom,e3},{x,4}}.
    {move,{atom,e0},{x,1}}.
    {move,nil,{x,5}}.
    {move,{literal,<<253,155,200,17,53>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",855}]}.
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
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",857}]}.
    {call,3,{f,512}}. % coverage_trim_1/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,431},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<"(right|linux)">>}]}.
    {move,{literal,<<"right">>},{x,1}}.
    {move,{literal,<<"linux">>},{x,2}}.
    {move,{literal,<<"/">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",858}]}.
    {call,3,{f,512}}. % coverage_trim_1/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,430},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<"/(right|linux)">>}]}.
    {move,{literal,<<"right">>},{x,1}}.
    {move,{literal,<<"linux">>},{x,2}}.
    {move,{literal,<<"left">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",860}]}.
    {call,3,{f,512}}. % coverage_trim_1/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,429},
          [{tr,{x,0},{t_bitstring,8,false}},
           {literal,<<"(left|linux)/(right|linux)">>}]}.
    {move,{integer,10},{x,1}}.
    {move,nil,{x,2}}.
    {move,{literal,<<"-">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",862}]}.
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
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",863}]}.
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
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",865}]}.
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
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",867}]}.
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
           {field_flags,[{anno,[867,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,native]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,425},
          [{tr,{x,2},{t_integer,{0,65535}}},{integer,57348}]}.
    {test,bs_test_tail2,{f,425},[{x,1},0]}.
    {move,{literal,<<2>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",870}]}.
    {call,1,{f,529}}. % coverage_beam_ssa_codegen/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,1},{f,419}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",873}]}.
    {call,1,{f,532}}. % coverage_beam_ssa_pre_codegen/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,419}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,424},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,424},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,0},{f,420}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r25_SUITE.erl",876}]}.
    {call,1,{f,1686}}. % id/1
    {call,1,{f,534}}. % coverage_beam_ssa_bsm_error/1
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
    {make_fun3,{f,1832},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_integer,{42,42}}}]}}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",879}]}.
    {call,1,{f,1686}}. % id/1
    {call,1,{f,536}}. % coverage_beam_validator/1
    {test,is_eq_exact,{f,422},[{x,0},{integer,42}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1830},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,none}]}}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",880}]}.
    {call,1,{f,1686}}. % id/1
    {call,1,{f,536}}. % coverage_beam_validator/1
    {test,is_eq_exact,{f,421},[{x,0},{atom,ok}]}.
    {deallocate,4}.
    return.
  {label,421}.
    {badmatch,{x,0}}.
  {label,422}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",879}]}.
    {badmatch,{x,0}}.
  {label,423}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",876}]}.
    {badmatch,{x,0}}.
  {label,424}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",873}]}.
    {badmatch,{x,0}}.
  {label,425}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",867}]}.
    {badmatch,{x,0}}.
  {label,426}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",865}]}.
    {badmatch,{x,0}}.
  {label,427}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",863}]}.
    {badmatch,{x,0}}.
  {label,428}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",862}]}.
    {badmatch,{x,0}}.
  {label,429}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",859}]}.
    {badmatch,{x,0}}.
  {label,430}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",858}]}.
    {badmatch,{x,0}}.
  {label,431}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",857}]}.
    {badmatch,{x,0}}.
  {label,432}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",854}]}.
    {badmatch,{x,0}}.
  {label,433}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",849}]}.
    {badmatch,{atom,binary}}.
  {label,434}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",848}]}.
    {badmatch,{atom,bitstring}}.
  {label,435}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",847}]}.
    {badmatch,{atom,bitstring}}.
  {label,436}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",845}]}.
    {badmatch,{x,0}}.
  {label,437}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",844}]}.
    {badmatch,{x,0}}.
  {label,438}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",837}]}.
    {badmatch,{x,0}}.
  {label,439}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",836}]}.
    {badmatch,{x,0}}.
  {label,440}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",834}]}.
    {badmatch,{x,0}}.
  {label,441}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",832}]}.
    {badmatch,{x,0}}.
  {label,442}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",829}]}.
    {badmatch,{x,0}}.
  {label,443}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",828}]}.
    {badmatch,{x,0}}.
  {label,444}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",827}]}.
    {badmatch,{x,0}}.
  {label,445}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",822}]}.
    {badmatch,{x,0}}.
  {label,446}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",821}]}.
    {badmatch,{x,0}}.


{function, coverage_fold, 3, 448}.
  {label,447}.
    {line,[{location,"bs_match_r25_SUITE.erl",884}]}.
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
           {field_flags,[{anno,[884,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {allocate,3,5}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
    {bs_get_tail,{x,3},{y,0},5}.
    {move,{x,4},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",886}]}.
    {call,1,{f,1686}}. % id/1
    {swap,{y,1},{x,0}}.
    {call,1,{f,1686}}. % id/1
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
    {line,[{location,"bs_match_r25_SUITE.erl",889}]}.
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
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,453},
          3,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[889,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_tail,{x,1},{x,1},4}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",890}]}.
    {bs_create_bin,{f,0},
                   0,4,64,
                   {x,2},
                   {list,[{atom,float},
                          1,1,nil,
                          {tr,{x,3},{t_integer,{0,255}}},
                          {integer,64}]}}.
    {allocate,2,3}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{x,2},{x,0}}.
    {call,1,{f,1686}}. % id/1
    {line,[{location,"bs_match_r25_SUITE.erl",891}]}.
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
    {allocate,4,4}.
    {move,{x,1},{y,0}}.
    {move,{x,3},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,0},{y,3}}.
    {move,{integer,4},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",894}]}.
    {call,1,{f,1686}}. % id/1
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
    {call,1,{f,1686}}. % id/1
    {line,[{location,"bs_match_r25_SUITE.erl",895}]}.
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
    {call,1,{f,1686}}. % id/1
    {move,{x,0},{y,2}}.
    {move,{y,1},{x,1}}.
    {move,{integer,43},{x,2}}.
    {move,{integer,3},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",896}]}.
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
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{x,0},{x,2}]}}.
    return.
  {label,454}.
    {line,[{location,"bs_match_r25_SUITE.erl",897}]}.
    if_end.


{function, coverage_bc, 2, 456}.
  {label,455}.
    {line,[{location,"bs_match_r25_SUITE.erl",903}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,coverage_bc},2}.
  {label,456}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_bitstring,8,true},nil}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,457},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[903,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {allocate,3,3}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,2},{y,1}}.
    {move,{x,1},{y,2}}.
    {bs_get_tail,{x,0},{y,0},1}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {test_heap,2,1}.
    {move,{x,0},{x,1}}.
    {put_list,{y,1},nil,{x,0}}.
    {move,{y,0},{y,1}}.
    {trim,1,2}.
    {line,[{location,"bs_match_r25_SUITE.erl",904}]}.
    {call,2,{f,1827}}. % '-coverage_bc/2-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {test_heap,2,1}.
    {put_list,{x,0},{y,1},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,456},2}. % coverage_bc/2
  {label,457}.
    {move,{x,1},{x,0}}.
    return.


{function, coverage_setelement, 2, 459}.
  {label,458}.
    {line,[{location,"bs_match_r25_SUITE.erl",908}]}.
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
           {field_flags,[{anno,[908,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_tail,{x,2},{x,2},4}.
    {move,{x,3},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",909}]}.
    {call_ext_only,3,{extfunc,erlang,setelement,3}}.


{function, coverage_apply, 2, 461}.
  {label,460}.
    {line,[{location,"bs_match_r25_SUITE.erl",911}]}.
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
           {field_flags,[{anno,[911,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {bs_get_tail,{x,2},{x,5},5}.
    {test,is_nonempty_list,{f,462},[{x,1}]}.
    {allocate,2,6}.
    {move,{x,5},{y,1}}.
    {get_tl,{x,1},{y,0}}.
    {move,{x,4},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",912}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",915}]}.
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
           {field_flags,[{anno,[915,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {bs_get_tail,{x,1},{x,1},2}.
    {move,{x,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",916}]}.
    {call_ext,2,{extfunc,bs_match_r25_SUITE,coverage_external_ignore,2}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, coverage_external_ignore, 2, 466}.
  {label,465}.
    {line,[{location,"bs_match_r25_SUITE.erl",919}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,coverage_external_ignore},2}.
  {label,466}.
    {move,{atom,ok},{x,0}}.
    return.


{function, coverage_id, 1, 468}.
  {label,467}.
    {line,[{location,"bs_match_r25_SUITE.erl",922}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,coverage_id},1}.
  {label,468}.
    {call_only,1,{f,1686}}. % id/1


{function, do_coverage_bin_to_term_list, 1, 470}.
  {label,469}.
    {line,[{location,"bs_match_r25_SUITE.erl",924}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",925}]}.
    {call,2,{f,1824}}. % '-do_coverage_bin_to_term_list/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {move,{x,0},{y,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",928}]}.
    {call,1,{f,475}}. % do_coverage_bin_to_term_list_1/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,473},
          [{tr,{x,0},{t_list,any,nil}},{tr,{y,1},{t_list,any,nil}}]}.
    {line,[{location,"bs_match_r25_SUITE.erl",929}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",930}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",929}]}.
    {badmatch,{x,0}}.
  {label,473}.
    {line,[{location,"bs_match_r25_SUITE.erl",928}]}.
    {badmatch,{x,0}}.


{function, do_coverage_bin_to_term_list_1, 1, 475}.
  {label,474}.
    {line,[{location,"bs_match_r25_SUITE.erl",932}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,do_coverage_bin_to_term_list_1},
               1}.
  {label,475}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",933}]}.
    {call,1,{f,480}}. % coverage_bin_to_term_list/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,0}}.
    {move,nil,{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",934}]}.
    {call,2,{f,485}}. % coverage_bin_to_term_list/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,478},
          [{tr,{x,0},{t_list,any,nil}},{tr,{y,0},{t_list,any,nil}}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",935}]}.
    {call,1,{f,490}}. % coverage_bin_to_term_list_catch/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,477},
          [{tr,{x,0},{t_list,any,nil}},{tr,{y,0},{t_list,any,nil}}]}.
    {move,nil,{x,1}}.
    {move,{y,1},{x,0}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {line,[{location,"bs_match_r25_SUITE.erl",936}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",935}]}.
    {badmatch,{x,0}}.
  {label,478}.
    {line,[{location,"bs_match_r25_SUITE.erl",934}]}.
    {badmatch,{x,0}}.


{function, coverage_bin_to_term_list, 1, 480}.
  {label,479}.
    {line,[{location,"bs_match_r25_SUITE.erl",938}]}.
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
           {field_flags,[{anno,[938,{file,"bs_match_r25_SUITE.erl"}]},
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
           {field_flags,[{anno,[938,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {allocate,3,3}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {bs_get_tail,{x,1},{y,1},3}.
    {'try',{y,2},{f,481}}.
    {move,{x,2},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",939}]}.
    {call_ext,1,{extfunc,erlang,binary_to_term,1}}.
    {move,{x,0},{y,0}}.
    {try_end,{y,2}}.
    {move,{y,1},{x,0}}.
    {move,{y,0},{y,2}}.
    {trim,2,1}.
    {line,[{location,"bs_match_r25_SUITE.erl",940}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",946}]}.
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
           {field_flags,[{anno,[946,{file,"bs_match_r25_SUITE.erl"}]},
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
           {field_flags,[{anno,[946,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {allocate,3,4}.
    {init_yregs,{list,[{y,0},{y,2}]}}.
    {move,{x,1},{y,1}}.
    {bs_get_tail,{x,2},{y,0},4}.
    {'try',{y,2},{f,486}}.
    {move,{x,3},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",947}]}.
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
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",952}]}.
    {call_ext_only,1,{extfunc,lists,reverse,1}}.


{function, coverage_bin_to_term_list_catch, 1, 490}.
  {label,489}.
    {line,[{location,"bs_match_r25_SUITE.erl",954}]}.
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
           {field_flags,[{anno,[954,{file,"bs_match_r25_SUITE.erl"}]},
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
           {field_flags,[{anno,[954,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {allocate,2,3}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {bs_get_tail,{x,1},{y,0},3}.
    {'catch',{y,1},{f,491}}.
    {move,{x,2},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",955}]}.
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
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",957}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",961}]}.
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
           {field_flags,[{anno,[961,{file,"bs_match_r25_SUITE.erl"}]},
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
           {field_flags,[{anno,[961,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {allocate,3,4}.
    {init_yregs,{list,[{y,0},{y,2}]}}.
    {move,{x,1},{y,1}}.
    {bs_get_tail,{x,2},{y,0},4}.
    {'catch',{y,2},{f,496}}.
    {move,{x,3},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",962}]}.
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
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",966}]}.
    {call_ext_only,1,{extfunc,lists,reverse,1}}.


{function, coverage_per_key, 1, 500}.
  {label,499}.
    {line,[{location,"bs_match_r25_SUITE.erl",968}]}.
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
           {field_flags,[{anno,[968,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{x,1},3}.
    {line,[{location,"bs_match_r25_SUITE.erl",969}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",972}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",976}]}.
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
           {field_flags,[{anno,[976,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,7}}.
    {allocate,4,8}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,7},{y,1}}.
    {move,{x,5},{y,2}}.
    {move,{x,0},{y,3}}.
    {bs_get_tail,{x,6},{y,0},8}.
    {bif,'>=',{f,0},[{tr,{x,7},{t_integer,{0,255}}},{integer,129}],{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",977}]}.
    {call,1,{f,1686}}. % id/1
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
    {line,[{location,"bs_match_r25_SUITE.erl",981}]}.
    {call_ext,1,{extfunc,lists,reverse,1}}.
    {test_heap,4,1}.
    {put_tuple2,{x,0},{list,[{atom,done},{y,0},{x,0}]}}.
    {deallocate,1}.
    return.
  {label,510}.
    {line,[{location,"bs_match_r25_SUITE.erl",977}]}.
    {case_end,{x,0}}.


{function, coverage_trim_1, 3, 512}.
  {label,511}.
    {line,[{location,"bs_match_r25_SUITE.erl",984}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",987}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",989}]}.
    {call,2,{f,516}}. % do_coverage_trim_1/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {swap,{y,1},{x,0}}.
    {move,{y,0},{x,1}}.
    {trim,1,1}.
    {line,[{location,"bs_match_r25_SUITE.erl",991}]}.
    {call,2,{f,516}}. % do_coverage_trim_1/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",989}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",993}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_coverage_trim_1},2}.
  {label,516}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",994}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",996}]}.
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
           {field_flags,[{anno,[996,{file,"bs_match_r25_SUITE.erl"}]},
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
    {line,[{location,"bs_match_r25_SUITE.erl",997}]}.
    {call,1,{f,527}}. % printable_char/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,519},[{x,0},{atom,true}]}.
    {line,[{location,"bs_match_r25_SUITE.erl",999}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",1001}]}.
    {call_ext,1,{extfunc,lists,reverse,1}}.
    {test_heap,4,1}.
    {put_tuple2,{x,0},{list,[{y,0},{y,1},{x,0}]}}.
    {deallocate,2}.
    return.


{function, coverage_trim_3, 2, 521}.
  {label,520}.
    {line,[{location,"bs_match_r25_SUITE.erl",1004}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,coverage_trim_3},2}.
  {label,521}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_bitstring,16,false},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{3,3}}}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1005}]}.
    {call_ext,1,{extfunc,erlang,iolist_size,1}}.
    {gc_bif,'-',{f,0},1,[{tr,{x,0},{t_integer,{0,'+inf'}}},{integer,3}],{y,0}}.
    {move,{y,1},{x,0}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {line,[{location,"bs_match_r25_SUITE.erl",1007}]}.
    {call_ext,1,{extfunc,erlang,iolist_to_binary,1}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_binary2,
          {f,522},
          2,
          [{tr,{x,1},{t_bs_context,8}},
           {tr,{y,0},{t_integer,{-3,'+inf'}}},
           8,
           {field_flags,[{anno,[1006,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,522},
          3,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,3},
           8,
           {field_flags,[{anno,[1006,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,522},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    {deallocate,1}.
    return.
  {label,522}.
    {line,[{location,"bs_match_r25_SUITE.erl",1006}]}.
    {badmatch,{x,0}}.


{function, coverage_trim_4, 1, 524}.
  {label,523}.
    {line,[{location,"bs_match_r25_SUITE.erl",1010}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",1011}]}.
    {call,2,{f,1821}}. % '-coverage_trim_4/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1013}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",1019}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,printable_char},1}.
  {label,527}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,1114111}}}]}}.
    {bif,'=:=',{f,0},[{tr,{x,0},{t_integer,{0,1114111}}},{integer,97}],{x,0}}.
    return.


{function, coverage_beam_ssa_codegen, 1, 529}.
  {label,528}.
    {line,[{location,"bs_match_r25_SUITE.erl",1022}]}.
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
    {call_last,2,{f,1817},1}. % '-coverage_beam_ssa_codegen/1-lbc$^0/2-0-'/2
  {label,530}.
    {line,[{location,"bs_match_r25_SUITE.erl",1026}]}.
    {case_end,{literal,#{1 => 42}}}.


{function, coverage_beam_ssa_pre_codegen, 1, 532}.
  {label,531}.
    {line,[{location,"bs_match_r25_SUITE.erl",1032}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,coverage_beam_ssa_pre_codegen},
               1}.
  {label,532}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {jump,{f,531}}.


{function, coverage_beam_ssa_bsm_error, 1, 534}.
  {label,533}.
    {line,[{location,"bs_match_r25_SUITE.erl",1035}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,coverage_beam_ssa_bsm_error},1}.
  {label,534}.
    {test,bs_start_match3,{f,533},1,[{x,0}],{x,1}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,badarg},{x,0}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1036}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, coverage_beam_validator, 1, 536}.
  {label,535}.
    {line,[{location,"bs_match_r25_SUITE.erl",1038}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,coverage_beam_validator},1}.
  {label,536}.
    {allocate,1,1}.
    {'try',{y,0},{f,537}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1041}]}.
    {call_fun,0}.
    {try_end,{y,0}}.
    {move,{x,0},{x,3}}.
    {jump,{f,538}}.
  {label,537}.
    {try_case,{y,0}}.
    {test,is_eq_exact,
          {f,539},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,throw}]}.
    {move,{atom,ok},{x,3}}.
  {label,538}.
    {move,{atom,ok},{x,1}}.
    {move,{atom,ok},{x,2}}.
    {move,{atom,ok},{x,0}}.
    {call_last,4,{f,541},1}. % coverage_beam_validator/4
  {label,539}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.


{function, coverage_beam_validator, 4, 541}.
  {label,540}.
    {line,[{location,"bs_match_r25_SUITE.erl",1049}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,coverage_beam_validator},4}.
  {label,541}.
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[ok]}}]}}.
    {'%',{var_info,{x,2},[{type,{t_atom,[ok]}}]}}.
    {move,{x,3},{x,0}}.
    return.


{function, multiple_uses, 1, 543}.
  {label,542}.
    {line,[{location,"bs_match_r25_SUITE.erl",1051}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,multiple_uses},1}.
  {label,543}.
    {test,is_list,{f,542},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<1,88,245,159,1,89>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1052}]}.
    {call,1,{f,551}}. % multiple_uses_1/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,4,true,
                                   #{1 => {t_integer,{0,65535}},
                                     2 => {t_integer,{0,65535}},
                                     3 => {t_integer,{0,65535}},
                                     4 => {t_bitstring,16,false}}}}]}}.
    {test,is_eq_exact,
          {f,549},
          [{tr,{x,0},
               {t_tuple,4,true,
                        #{1 => {t_integer,{0,65535}},
                          2 => {t_integer,{0,65535}},
                          3 => {t_integer,{0,65535}},
                          4 => {t_bitstring,16,false}}}},
           {literal,{344,62879,345,<<245,159,1,89>>}}]}.
    {move,{literal,<<0,0,197,18>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1053}]}.
    {call,1,{f,553}}. % multiple_uses_2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,548},[{x,0},{atom,true}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1686},0,0,{x,1},{list,[]}}.
    {move,{literal,<<0,0,42,43>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1054}]}.
    {call,2,{f,555}}. % multiple_uses_3/2
    {test,is_eq_exact,{f,547},[{x,0},{literal,<<"*+">>}]}.
    {move,{integer,42},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1056}]}.
    {call,2,{f,561}}. % first_after/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[ok]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,546},
          [{tr,{x,0},
               {t_union,{t_atom,[ok]},none,none,none,{t_bitstring,8,false}}},
           {atom,ok}]}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1057}]}.
    {call,2,{f,561}}. % first_after/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[ok]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,545},
          [{tr,{x,0},
               {t_union,{t_atom,[ok]},none,none,none,{t_bitstring,8,false}}},
           {literal,<<1>>}]}.
    {move,{integer,1},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1058}]}.
    {call,2,{f,561}}. % first_after/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[ok]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,544},
          [{tr,{x,0},
               {t_union,{t_atom,[ok]},none,none,none,{t_bitstring,8,false}}},
           {literal,<<2>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,544}.
    {badmatch,{x,0}}.
  {label,545}.
    {line,[{location,"bs_match_r25_SUITE.erl",1057}]}.
    {badmatch,{x,0}}.
  {label,546}.
    {line,[{location,"bs_match_r25_SUITE.erl",1056}]}.
    {badmatch,{x,0}}.
  {label,547}.
    {line,[{location,"bs_match_r25_SUITE.erl",1054}]}.
    {badmatch,{x,0}}.
  {label,548}.
    {line,[{location,"bs_match_r25_SUITE.erl",1053}]}.
    {badmatch,{atom,false}}.
  {label,549}.
    {line,[{location,"bs_match_r25_SUITE.erl",1052}]}.
    {badmatch,{x,0}}.


{function, multiple_uses_1, 1, 551}.
  {label,550}.
    {line,[{location,"bs_match_r25_SUITE.erl",1062}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,multiple_uses_1},1}.
  {label,551}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,550},
          2,
          [{tr,{x,1},{t_bs_context,16}},
           {integer,16},
           1,
           {field_flags,[{anno,[1062,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {allocate,2,3}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,2},{y,1}}.
    {bs_get_tail,{x,1},{y,0},2}.
    {move,{y,0},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1064}]}.
    {call,1,{f,557}}. % multiple_uses_match/1
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


{function, multiple_uses_2, 1, 553}.
  {label,552}.
    {line,[{location,"bs_match_r25_SUITE.erl",1067}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,multiple_uses_2},1}.
  {label,553}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_skip_bits2,
          {f,552},
          [{x,1},
           {integer,16},
           1,
           {field_flags,[{anno,[1067,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_get_tail,{x,1},{x,1},2}.
    {move,{x,1},{x,0}}.
    {call_only,2,{f,559}}. % multiple_uses_cmp/2


{function, multiple_uses_3, 2, 555}.
  {label,554}.
    {line,[{location,"bs_match_r25_SUITE.erl",1071}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,multiple_uses_3},2}.
  {label,555}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_fun,1,{id,1},any}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,2}}.
    {test,bs_skip_bits2,
          {f,554},
          [{x,2},
           {integer,16},
           1,
           {field_flags,[{anno,[1071,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_get_tail,{x,2},{x,0},3}.
    {call_only,1,{f,1686}}. % id/1


{function, multiple_uses_match, 1, 557}.
  {label,556}.
    {line,[{location,"bs_match_r25_SUITE.erl",1075}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,multiple_uses_match},1}.
  {label,557}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,556},
          2,
          [{tr,{x,1},{t_bs_context,16}},
           {integer,16},
           1,
           {field_flags,[{anno,[1075,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,556},
          3,
          [{tr,{x,1},{t_bs_context,16}},
           {integer,16},
           1,
           {field_flags,[{anno,[1075,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,556},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.


{function, multiple_uses_cmp, 2, 559}.
  {label,558}.
    {line,[{location,"bs_match_r25_SUITE.erl",1078}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,multiple_uses_cmp},2}.
  {label,559}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,16,false}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,2}}.
    {test,bs_get_integer2,
          {f,558},
          3,
          [{tr,{x,2},{t_bs_context,16}},
           {integer,16},
           1,
           {field_flags,[{anno,[1078,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,558},[{x,2},0]}.
    {bs_start_match4,{atom,no_fail},4,{x,1},{x,2}}.
    {test,bs_get_integer2,
          {f,558},
          4,
          [{tr,{x,2},{t_bs_context,16}},
           {integer,16},
           1,
           {field_flags,[{anno,[1078,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,558},[{x,2},0]}.
    {bif,'=:=',
         {f,0},
         [{tr,{x,4},{t_integer,{0,65535}}},{tr,{x,3},{t_integer,{0,65535}}}],
         {x,0}}.
    return.


{function, first_after, 2, 561}.
  {label,560}.
    {line,[{location,"bs_match_r25_SUITE.erl",1081}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,first_after},2}.
  {label,561}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,42}}}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1082}]}.
    {gc_bif,byte_size,{f,0},2,[{tr,{x,0},{t_bitstring,8,false}}],{x,2}}.
    {test,is_lt,
          {f,562},
          [{tr,{x,1},{t_integer,{0,42}}},
           {tr,{x,2},{t_integer,{0,288230376151711743}}}]}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,2}}.
    {test,bs_skip_bits2,
          {f,563},
          [{x,2},
           {x,1},
           8,
           {field_flags,[{anno,[1087,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {allocate,0,3}.
    {bs_get_tail,{x,2},{x,1},3}.
    {line,[{location,"bs_match_r25_SUITE.erl",1089}]}.
    {call,2,{f,565}}. % match_first/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_bitstring,8,false},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {get_tuple_element,{x,0},0,{x,0}}.
    {deallocate,0}.
    return.
  {label,562}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,563}.
    {line,[{location,"bs_match_r25_SUITE.erl",1087}]}.
    {badmatch,{x,0}}.


{function, match_first, 2, 565}.
  {label,564}.
    {line,[{location,"bs_match_r25_SUITE.erl",1096}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,match_first},2}.
  {label,565}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,2}}.
    {test,bs_get_binary2,
          {f,564},
          3,
          [{tr,{x,2},{t_bs_context,8}},
           {integer,1},
           8,
           {field_flags,[{anno,[1096,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_tail,{x,2},{x,0},4}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,3},{x,0}]}}.
    return.


{function, zero_label, 1, 567}.
  {label,566}.
    {line,[{location,"bs_match_r25_SUITE.erl",1099}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,zero_label},1}.
  {label,567}.
    {test,is_list,{f,566},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<"FACEnosemouth">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1100}]}.
    {call,1,{f,571}}. % read_pols/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,569},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<"nosemouth">>}]}.
    {move,{literal,<<"noFACE">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1101}]}.
    {call,1,{f,571}}. % read_pols/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,568},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<"CE">>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,568}.
    {badmatch,{x,0}}.
  {label,569}.
    {line,[{location,"bs_match_r25_SUITE.erl",1100}]}.
    {badmatch,{x,0}}.


{function, read_pols, 1, 571}.
  {label,570}.
    {line,[{location,"bs_match_r25_SUITE.erl",1104}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,read_pols},1}.
  {label,571}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_skip_bits2,
          {f,572},
          [{x,1},
           {integer,4},
           8,
           {field_flags,[{anno,[1105,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_get_tail,{x,1},{x,0},2}.
    return.
  {label,572}.
    {line,[{location,"bs_match_r25_SUITE.erl",1105}]}.
    {badmatch,{x,0}}.


{function, followed_by_catch, 1, 574}.
  {label,573}.
    {line,[{location,"bs_match_r25_SUITE.erl",1110}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,followed_by_catch},1}.
  {label,574}.
    {test,is_list,{f,573},[{x,0}]}.
    {move,{literal,<<0,1,2,3,4,5>>},{x,0}}.
    {call_only,1,{f,576}}. % handle/1


{function, handle, 1, 576}.
  {label,575}.
    {line,[{location,"bs_match_r25_SUITE.erl",1114}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,handle},1}.
  {label,576}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {test,is_eq_exact,
          {f,577},
          [{tr,{x,0},{t_bitstring,16,false}},{literal,<<>>}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,577}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_skip_bits2,
          {f,581},
          [{x,1},
           {integer,16},
           1,
           {field_flags,[{anno,[1116,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {allocate,2,2}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {bs_get_tail,{x,1},{y,0},2}.
    {'catch',{y,1},{f,578}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",1117}]}.
    {call_ext,0,{extfunc,fooX,func,0}}.
  {label,578}.
    {catch_end,{y,1}}.
    {test,is_nonempty_list,{f,579},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_nil,{f,579},[{x,0}]}.
    {test,is_tagged_tuple,{f,580},[{x,1},2,{atom,rec}]}.
  {label,579}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,576},2}. % handle/1
  {label,580}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1119}]}.
    {badrecord,{x,1}}.
  {label,581}.
    {line,[{scope,[0,2]},{location,"bs_match_r25_SUITE.erl",1116}]}.
    {badmatch,{x,0}}.


{function, matching_meets_construction, 1, 583}.
  {label,582}.
    {line,[{location,"bs_match_r25_SUITE.erl",1125}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,matching_meets_construction},1}.
  {label,583}.
    {test,is_list,{f,582},[{x,0}]}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1126}]}.
    {call,1,{f,1686}}. % id/1
    {move,{x,0},{y,1}}.
    {move,{integer,2},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1127}]}.
    {call,1,{f,1686}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{literal,<<1,2,3,4,5>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1128}]}.
    {call,1,{f,1686}}. % id/1
    {test,bs_start_match3,{f,591},1,[{x,0}],{x,1}}.
    {test,bs_skip_bits2,
          {f,591},
          [{x,1},
           {y,0},
           8,
           {field_flags,[{anno,[1129,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,591},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {atom,all},
           8,
           {field_flags,[{anno,[1129,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1130}]}.
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
          {f,590},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<3,4,5,97,98,99>>}]}.
    {'catch',{y,1},{f,584}}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,<<"Abc">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",1132}]}.
    {call,1,{f,593}}. % matching_meets_construction_1/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
  {label,584}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,589},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,589},[{x,1},2,{atom,badarg}]}.
    {'catch',{y,0},{f,585}}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{literal,<<"Abc">>},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r25_SUITE.erl",1133}]}.
    {call,1,{f,595}}. % matching_meets_construction_2/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
  {label,585}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,588},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,588},[{x,1},2,{atom,badarg}]}.
    {move,{literal,<<"Abc">>},{x,0}}.
    {line,[{scope,[1,2]},{location,"bs_match_r25_SUITE.erl",1134}]}.
    {call,1,{f,597}}. % matching_meets_construction_3/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,587},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<"Bbc">>}]}.
    {move,{integer,2},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1136}]}.
    {call,2,{f,599}}. % encode_octet_string/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {test,is_eq_exact,
          {f,586},
          [{tr,{x,0},{t_bitstring,16,false}},{literal,<<1,2>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,586}.
    {badmatch,{x,0}}.
  {label,587}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1134}]}.
    {badmatch,{x,0}}.
  {label,588}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1133}]}.
    {badmatch,{x,0}}.
  {label,589}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",1132}]}.
    {badmatch,{x,0}}.
  {label,590}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",1131}]}.
    {badmatch,{x,0}}.
  {label,591}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",1129}]}.
    {badmatch,{x,0}}.


{function, matching_meets_construction_1, 1, 593}.
  {label,592}.
    {line,[{location,"bs_match_r25_SUITE.erl",1139}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,matching_meets_construction_1},
               1}.
  {label,593}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_match_string,{f,592},[{x,1},8,{string,<<"A">>}]}.
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


{function, matching_meets_construction_2, 1, 595}.
  {label,594}.
    {line,[{location,"bs_match_r25_SUITE.erl",1141}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,matching_meets_construction_2},
               1}.
  {label,595}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_match_string,{f,594},[{x,1},8,{string,<<"A">>}]}.
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


{function, matching_meets_construction_3, 1, 597}.
  {label,596}.
    {line,[{location,"bs_match_r25_SUITE.erl",1143}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,matching_meets_construction_3},
               1}.
  {label,597}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_match_string,{f,596},[{x,1},8,{string,<<"A">>}]}.
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


{function, encode_octet_string, 2, 599}.
  {label,598}.
    {line,[{location,"bs_match_r25_SUITE.erl",1145}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,encode_octet_string},2}.
  {label,599}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{2,2}}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {line,[{location,"bs_match_r25_SUITE.erl",1146}]}.
    {bs_create_bin,{f,0},
                   0,1,16,
                   {x,0},
                   {list,[{atom,binary},
                          1,8,nil,
                          {tr,{x,0},{t_bitstring,8,false}},
                          {integer,2}]}}.
    return.


{function, simon, 1, 601}.
  {label,600}.
    {line,[{location,"bs_match_r25_SUITE.erl",1148}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,simon},1}.
  {label,601}.
    {test,is_list,{f,600},[{x,0}]}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{literal,<<>>},{x,1}}.
    {move,{atom,blurf},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1149}]}.
    {call,2,{f,608}}. % simon/2
    {'%',{var_info,{x,0},[{type,{t_atom,[one]}}]}}.
    {move,{literal,<<"*">>},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1150}]}.
    {call,2,{f,608}}. % simon/2
    {'%',{var_info,{x,0},[{type,{t_atom,[one,two]}}]}}.
    {test,is_eq_exact,{f,606},[{tr,{x,0},{t_atom,[one,two]}},{atom,two}]}.
    {'catch',{y,2},{f,602}}.
    {move,{literal,<<1>>},{x,1}}.
    {move,{integer,17},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",1151}]}.
    {call,2,{f,608}}. % simon/2
    {'%',{var_info,{x,0},[{type,{t_atom,[one]}}]}}.
  {label,602}.
    {catch_end,{y,2}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[17,<<1>>]},{x,1}}.
    {move,{atom,simon},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r25_SUITE.erl",1151}]}.
    {call,3,{f,834}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,1},{f,603}}.
    {move,{literal,<<1,2,3>>},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r25_SUITE.erl",1152}]}.
    {call,2,{f,608}}. % simon/2
    {'%',{var_info,{x,0},[{type,{t_atom,[one,two]}}]}}.
  {label,603}.
    {catch_end,{y,1}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[0,<<1,2,3>>]},{x,1}}.
    {move,{atom,simon},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r25_SUITE.erl",1152}]}.
    {call,3,{f,834}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<"\t">>},{x,1}}.
    {move,{atom,blurf},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r25_SUITE.erl",1154}]}.
    {call,2,{f,611}}. % simon2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[one]}}]}}.
    {move,{literal,<<9,1>>},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r25_SUITE.erl",1155}]}.
    {call,2,{f,611}}. % simon2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[one,two]}}]}}.
    {test,is_eq_exact,{f,605},[{tr,{x,0},{t_atom,[one,two]}},{atom,two}]}.
    {'catch',{y,0},{f,604}}.
    {move,{literal,<<"\t\n\v">>},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",1156}]}.
    {call,2,{f,611}}. % simon2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[one,two]}}]}}.
  {label,604}.
    {catch_end,{y,0}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[0,<<"\t\n\v">>]},{x,1}}.
    {move,{atom,simon2},{x,0}}.
    {call_last,3,{f,834},3}. % fc/3
  {label,605}.
    {line,[{scope,[0,2]},{location,"bs_match_r25_SUITE.erl",1155}]}.
    {badmatch,{atom,one}}.
  {label,606}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",1150}]}.
    {badmatch,{atom,one}}.


{function, simon, 2, 608}.
  {label,607}.
    {line,[{location,"bs_match_r25_SUITE.erl",1159}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,simon},2}.
  {label,608}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[blurf]},
                                   none,
                                   {t_integer,{0,17}},
                                   none,none}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,2}}.
    {test,bs_test_tail2,{f,609},[{x,2},0]}.
    {move,{atom,one},{x,0}}.
    return.
  {label,609}.
    {test,bs_test_tail2,{f,607},[{x,2},8]}.
    {test,is_eq_exact,
          {f,607},
          [{tr,{x,0},
               {t_union,{t_atom,[blurf]},none,{t_integer,{0,17}},none,none}},
           {integer,0}]}.
    {move,{atom,two},{x,0}}.
    return.


{function, simon2, 2, 611}.
  {label,610}.
    {line,[{location,"bs_match_r25_SUITE.erl",1162}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,simon2},2}.
  {label,611}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[blurf]},
                                   none,
                                   {t_integer,{0,0}},
                                   none,none}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,2}}.
    {bs_get_position,{x,2},{x,3},3}.
    {test,bs_get_integer2,
          {f,612},
          4,
          [{tr,{x,2},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1162,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,is_eq_exact,{f,612},[{tr,{x,4},{t_integer,{0,255}}},{integer,9}]}.
    {test,bs_test_tail2,{f,612},[{x,2},0]}.
    {move,{atom,one},{x,0}}.
    return.
  {label,612}.
    {bs_set_position,{x,2},{x,3}}.
    {test,bs_test_tail2,{f,610},[{x,2},16]}.
    {test,is_eq_exact,
          {f,610},
          [{tr,{x,0},
               {t_union,{t_atom,[blurf]},none,{t_integer,{0,0}},none,none}},
           {integer,0}]}.
    {move,{atom,two},{x,0}}.
    return.


{function, matching_and_andalso, 1, 614}.
  {label,613}.
    {line,[{location,"bs_match_r25_SUITE.erl",1167}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,matching_and_andalso},1}.
  {label,614}.
    {test,is_list,{f,613},[{x,0}]}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{integer,3},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1168}]}.
    {call,2,{f,632}}. % matching_and_andalso_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,2},{f,615}}.
    {move,{integer,-8},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1169}]}.
    {call,2,{f,632}}. % matching_and_andalso_1/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,615}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,630},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,630},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,1},{f,616}}.
    {move,{atom,blurf},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r25_SUITE.erl",1170}]}.
    {call,2,{f,632}}. % matching_and_andalso_1/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,616}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,629},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,629},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,0},{f,617}}.
    {move,{integer,19},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r25_SUITE.erl",1171}]}.
    {call,2,{f,632}}. % matching_and_andalso_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,617}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,628},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,628},[{x,1},2,{atom,function_clause}]}.
    {move,{literal,<<"-xyz">>},{x,1}}.
    {move,{literal,"abc"},{x,0}}.
    {line,[{scope,[1,2]},{location,"bs_match_r25_SUITE.erl",1173}]}.
    {call,2,{f,634}}. % matching_and_andalso_23/2
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
           {literal,{"abc",<<"xyz">>}}]}.
    {move,{literal,<<"`">>},{x,1}}.
    {move,{literal,"abc"},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1174}]}.
    {call,2,{f,634}}. % matching_and_andalso_23/2
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
           {literal,{"abc",<<>>}}]}.
    {move,{literal,<<"{">>},{x,1}}.
    {move,{literal,"abc"},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1175}]}.
    {call,2,{f,634}}. % matching_and_andalso_23/2
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
           {literal,{"abc",<<>>}}]}.
    {move,{literal,<<"@">>},{x,1}}.
    {move,{literal,"abc"},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1176}]}.
    {call,2,{f,634}}. % matching_and_andalso_23/2
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
           {literal,{"abc",<<>>}}]}.
    {move,{literal,<<"[">>},{x,1}}.
    {move,{literal,"abc"},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1177}]}.
    {call,2,{f,634}}. % matching_and_andalso_23/2
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
           {literal,{"abc",<<>>}}]}.
    {move,{literal,<<>>},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1178}]}.
    {call,2,{f,634}}. % matching_and_andalso_23/2
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
    {move,{literal,<<"A">>},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1179}]}.
    {call,2,{f,634}}. % matching_and_andalso_23/2
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
          {f,621},
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
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1180}]}.
    {call,2,{f,634}}. % matching_and_andalso_23/2
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
          {f,620},
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
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1181}]}.
    {call,2,{f,634}}. % matching_and_andalso_23/2
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
          {f,619},
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
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1182}]}.
    {call,2,{f,634}}. % matching_and_andalso_23/2
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
          {f,618},
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
  {label,618}.
    {badmatch,{x,0}}.
  {label,619}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1181}]}.
    {badmatch,{x,0}}.
  {label,620}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1180}]}.
    {badmatch,{x,0}}.
  {label,621}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1179}]}.
    {badmatch,{x,0}}.
  {label,622}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1178}]}.
    {badmatch,{x,0}}.
  {label,623}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1177}]}.
    {badmatch,{x,0}}.
  {label,624}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1176}]}.
    {badmatch,{x,0}}.
  {label,625}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1175}]}.
    {badmatch,{x,0}}.
  {label,626}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1174}]}.
    {badmatch,{x,0}}.
  {label,627}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1173}]}.
    {badmatch,{x,0}}.
  {label,628}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1171}]}.
    {badmatch,{x,0}}.
  {label,629}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",1170}]}.
    {badmatch,{x,0}}.
  {label,630}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",1169}]}.
    {badmatch,{x,0}}.


{function, matching_and_andalso_1, 2, 632}.
  {label,631}.
    {line,[{location,"bs_match_r25_SUITE.erl",1185}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,matching_and_andalso_1},2}.
  {label,632}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_union,{t_atom,[blurf]},
                                   none,
                                   {t_integer,{-8,19}},
                                   none,none}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,2}}.
    {bs_get_tail,{x,2},{x,2},3}.
    {test,is_integer,
          {f,631},
          [{tr,{x,1},
               {t_union,{t_atom,[blurf]},
                        none,
                        {t_integer,{-8,19}},
                        none,none}}]}.
    {line,[{location,"bs_match_r25_SUITE.erl",1186}]}.
    {gc_bif,byte_size,{f,0},3,[{tr,{x,2},{t_bitstring,8,false}}],{x,2}}.
    {test,is_ge,
          {f,631},
          [{tr,{x,2},{t_integer,{0,288230376151711743}}},
           {tr,{x,1},{t_integer,{-8,19}}}]}.
    {test,is_ge,{f,631},[{tr,{x,1},{t_integer,{-8,19}}},{integer,1}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, matching_and_andalso_23, 2, 634}.
  {label,633}.
    {line,[{location,"bs_match_r25_SUITE.erl",1189}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,matching_and_andalso_23},2}.
  {label,634}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{97,99}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {allocate,2,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1190}]}.
    {call,2,{f,637}}. % matching_and_andalso_2/2
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
    {line,[{location,"bs_match_r25_SUITE.erl",1191}]}.
    {call,2,{f,642}}. % matching_and_andalso_3/2
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
          {f,635},
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
  {label,635}.
    {badmatch,{x,0}}.


{function, matching_and_andalso_2, 2, 637}.
  {label,636}.
    {line,[{location,"bs_match_r25_SUITE.erl",1194}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,matching_and_andalso_2},2}.
  {label,637}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{97,99}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,640},
          2,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1194,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{x,1},3}.
    {test,is_ge,{f,638},[{tr,{x,2},{t_integer,{0,255}}},{integer,97}]}.
    {test,is_ge,{f,639},[{integer,122},{tr,{x,2},{t_integer,{97,255}}}]}.
    {jump,{f,640}}.
  {label,638}.
    {test,is_ge,{f,639},[{tr,{x,2},{t_integer,{0,96}}},{integer,65}]}.
    {test,is_ge,{f,640},[{tr,{x,2},{t_integer,{65,96}}},{integer,91}]}.
  {label,639}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    return.
  {label,640}.
    {move,{atom,error},{x,0}}.
    return.


{function, matching_and_andalso_3, 2, 642}.
  {label,641}.
    {line,[{location,"bs_match_r25_SUITE.erl",1202}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,matching_and_andalso_3},2}.
  {label,642}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{97,99}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,645},
          2,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1202,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{x,1},3}.
    {gc_bif,abs,{f,645},3,[{tr,{x,2},{t_integer,{0,255}}}],{x,2}}.
    {test,is_ge,{f,643},[{tr,{x,2},{t_integer,{0,255}}},{integer,97}]}.
    {test,is_ge,{f,644},[{integer,122},{tr,{x,2},{t_integer,{97,255}}}]}.
    {jump,{f,645}}.
  {label,643}.
    {test,is_ge,{f,644},[{tr,{x,2},{t_integer,{0,96}}},{integer,65}]}.
    {test,is_ge,{f,645},[{tr,{x,2},{t_integer,{65,96}}},{integer,91}]}.
  {label,644}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    return.
  {label,645}.
    {move,{atom,error},{x,0}}.
    return.


{function, otp_7188, 1, 647}.
  {label,646}.
    {line,[{location,"bs_match_r25_SUITE.erl",1209}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,otp_7188},1}.
  {label,647}.
    {test,is_list,{f,646},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<84,65,71,68,117,154,105,232,107,121,0,0,0,0,0,0,0,0,0,0,
                     0,0,0,0,0,0,0,0,0,0,0,0,0,68,97,110,105,101,108,32,76,97,
                     110,100,97,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,66,101,
                     115,116,32,79,102,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
                     0,0,0,0,50,48,48,48,50,48,48,48,32,45,32,66,101,115,116,
                     32,79,102,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,
                     32,12>>},
          {x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1220}]}.
    {call,1,{f,650}}. % parse_v1_or_v11_tag/1
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
     {f,648},
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
  {label,648}.
    {line,[{location,"bs_match_r25_SUITE.erl",1217}]}.
    {badmatch,{x,0}}.


{function, parse_v1_or_v11_tag, 1, 650}.
  {label,649}.
    {line,[{location,"bs_match_r25_SUITE.erl",1222}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,parse_v1_or_v11_tag},1}.
  {label,650}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_match_string,{f,652},[{x,0},24,{string,<<"TAG">>}]}.
    {test,bs_get_binary2,
          {f,652},
          1,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,30},
           8,
           {field_flags,[{anno,[1222,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_get_binary2,
          {f,652},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,30},
           8,
           {field_flags,[{anno,[1222,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,652},
          3,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,30},
           8,
           {field_flags,[{anno,[1222,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_skip_bits2,
          {f,652},
          [{x,0},
           {integer,4},
           8,
           {field_flags,[{anno,[1222,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_get_position,{x,0},{x,4},4}.
    {test,bs_skip_bits2,
          {f,651},
          [{x,0},
           {integer,28},
           8,
           {field_flags,[{anno,[1222,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_match_string,{f,651},[{x,0},8,{string,<<0>>}]}.
    {test,bs_get_integer2,
          {f,651},
          5,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1222,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_test_tail2,{f,651},[{x,0},8]}.
    {allocate,3,6}.
    {move,{x,5},{y,0}}.
    {move,{x,3},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1228}]}.
    {call,1,{f,654}}. % trim/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {swap,{y,2},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1229}]}.
    {call,1,{f,654}}. % trim/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {swap,{y,1},{x,0}}.
    {call,1,{f,654}}. % trim/1
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
  {label,651}.
    {bs_set_position,{x,0},{x,4}}.
    {test,bs_test_tail2,{f,652},[{x,0},248]}.
    {allocate,2,4}.
    {move,{x,3},{y,0}}.
    {move,{x,2},{y,1}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1236}]}.
    {call,1,{f,654}}. % trim/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {swap,{y,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1237}]}.
    {call,1,{f,654}}. % trim/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {swap,{y,0},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1238}]}.
    {call,1,{f,654}}. % trim/1
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
  {label,652}.
    {move,{atom,error},{x,0}}.
    return.


{function, trim, 1, 654}.
  {label,653}.
    {line,[{location,"bs_match_r25_SUITE.erl",1242}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,trim},1}.
  {label,654}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {allocate,0,1}.
    {line,[{location,"bs_match_r25_SUITE.erl",1243}]}.
    {call_ext,1,{extfunc,erlang,binary_to_list,1}}.
    {call,1,{f,656}}. % trim_blanks/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {call_ext_last,1,{extfunc,erlang,list_to_binary,1},0}.


{function, trim_blanks, 1, 656}.
  {label,655}.
    {line,[{location,"bs_match_r25_SUITE.erl",1245}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,trim_blanks},1}.
  {label,656}.
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {allocate,0,1}.
    {line,[{location,"bs_match_r25_SUITE.erl",1246}]}.
    {call_ext,1,{extfunc,lists,reverse,1}}.
    {call,1,{f,658}}. % skip_blanks_and_zero/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {call_ext_last,1,{extfunc,lists,reverse,1},0}.


{function, skip_blanks_and_zero, 1, 658}.
  {label,657}.
    {line,[{location,"bs_match_r25_SUITE.erl",1248}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,skip_blanks_and_zero},1}.
  {label,658}.
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_nonempty_list,{f,660},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {select_val,{x,1},
                {f,660},
                {list,[{integer,0},{f,659},{integer,32},{f,659}]}}.
  {label,659}.
    {move,{x,2},{x,0}}.
    {call_only,1,{f,658}}. % skip_blanks_and_zero/1
  {label,660}.
    return.


{function, otp_7233, 1, 662}.
  {label,661}.
    {line,[{location,"bs_match_r25_SUITE.erl",1260}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,otp_7233},1}.
  {label,662}.
    {test,is_list,{f,661},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,{rec_otp_7233,<<"XXabcde">>,[{"xxxxxxxx",42}]}},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1261}]}.
    {call,1,{f,666}}. % otp_7233_1/1
    {bif,get,{f,0},[{atom,io_format}],{x,0}}.
    {test,is_eq_exact,
          {f,664},
          [{x,0},{literal,[<<"XXabcde">>,{"xxxxxxxx",42}]}]}.
    {move,{atom,io_format},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1263}]}.
    {call_ext,1,{extfunc,erlang,erase,1}}.
    {move,{literal,{rec_otp_7233,<<"XXabcde">>,[]}},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1264}]}.
    {call,1,{f,666}}. % otp_7233_1/1
    {bif,get,{f,0},[{atom,io_format}],{x,0}}.
    {test,is_eq_exact,{f,663},[{x,0},{atom,undefined}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,663}.
    {line,[{location,"bs_match_r25_SUITE.erl",1265}]}.
    {badmatch,{x,0}}.
  {label,664}.
    {line,[{location,"bs_match_r25_SUITE.erl",1262}]}.
    {badmatch,{x,0}}.


{function, otp_7233_1, 1, 666}.
  {label,665}.
    {line,[{location,"bs_match_r25_SUITE.erl",1268}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,otp_7233_1},1}.
  {label,666}.
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
          {f,669},
          3,
          [{tr,{x,2},{t_bs_context,8}},
           {integer,2},
           8,
           {field_flags,[{anno,[1269,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,669},[{x,2},40]}.
    {test,is_eq_exact,
          {f,668},
          [{tr,{x,3},{t_bitstring,8,false}},{literal,<<"XX">>}]}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {get_tuple_element,{x,0},2,{x,2}}.
    {move,{integer,1},{x,1}}.
    {move,{literal,"xxxxxxxx"},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1273}]}.
    {call_ext,3,{extfunc,lists,keyfind,3}}.
    {test,is_eq_exact,
          {f,667},
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
  {label,667}.
    {test_heap,4,1}.
    {get_tuple_element,{y,0},1,{x,1}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,1},{x,0},{x,1}}.
    {move,{atom,io_format},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1277}]}.
    {call_ext_last,2,{extfunc,erlang,put,2},1}.
  {label,668}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,669}.
    {line,[{location,"bs_match_r25_SUITE.erl",1269}]}.
    {badmatch,{x,1}}.


{function, otp_7240, 1, 671}.
  {label,670}.
    {line,[{location,"bs_match_r25_SUITE.erl",1283}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,otp_7240},1}.
  {label,671}.
    {test,is_list,{f,670},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<>>},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1284}]}.
    {call,2,{f,676}}. % otp_7240_a/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
    {move,{integer,2},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1285}]}.
    {call,2,{f,676}}. % otp_7240_a/2
    {'%',{var_info,{x,0},[{type,{t_atom,[b]}}]}}.
    {move,{literal,<<>>},{x,1}}.
    {move,{atom,anything},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1287}]}.
    {call,2,{f,679}}. % otp_7240_b/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
    {move,{literal,{x,y}},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1288}]}.
    {call,2,{f,679}}. % otp_7240_b/2
    {'%',{var_info,{x,0},[{type,{t_atom,[b]}}]}}.
    {move,{literal,<<>>},{x,1}}.
    {move,{atom,anything},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1290}]}.
    {call,2,{f,682}}. % otp_7240_c/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
    {move,{literal,<<2>>},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1291}]}.
    {call,2,{f,682}}. % otp_7240_c/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b]}}]}}.
    {test,is_eq_exact,{f,674},[{tr,{x,0},{t_atom,[a,b]}},{atom,b}]}.
    {move,{literal,<<>>},{x,1}}.
    {move,{atom,anything},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1293}]}.
    {call,2,{f,685}}. % otp_7240_d/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b]}}]}}.
    {test,is_eq_exact,{f,673},[{tr,{x,0},{t_atom,[a,b]}},{atom,a}]}.
    {move,{literal,<<2>>},{x,1}}.
    {move,{atom,again},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1294}]}.
    {call,2,{f,685}}. % otp_7240_d/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b]}}]}}.
    {test,is_eq_exact,{f,672},[{tr,{x,0},{t_atom,[a,b]}},{atom,b}]}.
    {move,{literal,<<>>},{x,1}}.
    {move,{atom,anything},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1296}]}.
    {call,2,{f,688}}. % otp_7240_e/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
    {move,{integer,41},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1297}]}.
    {call,2,{f,688}}. % otp_7240_e/2
    {'%',{var_info,{x,0},[{type,{t_atom,[b]}}]}}.
    {move,{literal,<<>>},{x,1}}.
    {move,{atom,anything},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1299}]}.
    {call,2,{f,691}}. % otp_7240_f/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
    {move,{literal,{}},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1300}]}.
    {call,2,{f,691}}. % otp_7240_f/2
    {'%',{var_info,{x,0},[{type,{t_atom,[b]}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,672}.
    {line,[{location,"bs_match_r25_SUITE.erl",1294}]}.
    {badmatch,{atom,a}}.
  {label,673}.
    {line,[{location,"bs_match_r25_SUITE.erl",1293}]}.
    {badmatch,{atom,b}}.
  {label,674}.
    {line,[{location,"bs_match_r25_SUITE.erl",1291}]}.
    {badmatch,{atom,a}}.


{function, otp_7240_a, 2, 676}.
  {label,675}.
    {line,[{location,"bs_match_r25_SUITE.erl",1304}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,otp_7240_a},2}.
  {label,676}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,1}}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_union,none,none,
                                   {t_integer,{2,2}},
                                   none,
                                   {t_bitstring,256,true}}}]}}.
    {test,is_eq_exact,
          {f,677},
          [{tr,{x,1},
               {t_union,none,none,
                        {t_integer,{2,2}},
                        none,
                        {t_bitstring,256,true}}},
           {literal,<<>>}]}.
    {move,{atom,a},{x,0}}.
    return.
  {label,677}.
    {test,is_eq_exact,{f,675},[{tr,{x,0},{t_integer,{0,1}}},{integer,1}]}.
    {test,is_eq_exact,
          {f,675},
          [{tr,{x,1},
               {t_union,none,none,
                        {t_integer,{2,2}},
                        none,
                        {t_bitstring,256,true}}},
           {integer,2}]}.
    {move,{atom,b},{x,0}}.
    return.


{function, otp_7240_b, 2, 679}.
  {label,678}.
    {line,[{location,"bs_match_r25_SUITE.erl",1307}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,otp_7240_b},2}.
  {label,679}.
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
          {f,680},
          [{tr,{x,1},
               {t_union,none,none,none,
                        [{{2,{t_atom,[x]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[x]},2 => {t_atom,[y]}}}}],
                        {t_bitstring,256,true}}},
           {literal,<<>>}]}.
    {move,{atom,a},{x,0}}.
    return.
  {label,680}.
    {test,is_eq_exact,
          {f,678},
          [{tr,{x,0},
               {t_union,{t_atom,[anything]},none,{t_integer,{1,1}},none,none}},
           {integer,1}]}.
    {test,is_tuple,
          {f,678},
          [{tr,{x,1},
               {t_union,none,none,none,
                        [{{2,{t_atom,[x]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[x]},2 => {t_atom,[y]}}}}],
                        {t_bitstring,256,true}}}]}.
    {move,{atom,b},{x,0}}.
    return.


{function, otp_7240_c, 2, 682}.
  {label,681}.
    {line,[{location,"bs_match_r25_SUITE.erl",1310}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,otp_7240_c},2}.
  {label,682}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[anything]},
                                   none,
                                   {t_integer,{1,1}},
                                   none,none}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,2}}.
    {bs_get_position,{x,2},{x,3},3}.
    {test,bs_match_string,{f,683},[{x,2},8,{string,<<2>>}]}.
    {test,bs_test_tail2,{f,683},[{x,2},0]}.
    {test,is_eq_exact,
          {f,683},
          [{tr,{x,0},
               {t_union,{t_atom,[anything]},none,{t_integer,{1,1}},none,none}},
           {integer,1}]}.
    {move,{atom,b},{x,0}}.
    return.
  {label,683}.
    {bs_set_position,{x,2},{x,3}}.
    {test,bs_test_tail2,{f,681},[{x,2},0]}.
    {move,{atom,a},{x,0}}.
    return.


{function, otp_7240_d, 2, 685}.
  {label,684}.
    {line,[{location,"bs_match_r25_SUITE.erl",1313}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,otp_7240_d},2}.
  {label,685}.
    {'%',{var_info,{x,0},[{type,{t_atom,[again,anything]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,2}}.
    {bs_get_position,{x,2},{x,3},3}.
    {test,bs_match_string,{f,686},[{x,2},8,{string,<<2>>}]}.
    {test,bs_test_tail2,{f,686},[{x,2},0]}.
    {move,{atom,b},{x,0}}.
    return.
  {label,686}.
    {bs_set_position,{x,2},{x,3}}.
    {test,bs_test_tail2,{f,684},[{x,2},0]}.
    {move,{atom,a},{x,0}}.
    return.


{function, otp_7240_e, 2, 688}.
  {label,687}.
    {line,[{location,"bs_match_r25_SUITE.erl",1316}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,otp_7240_e},2}.
  {label,688}.
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
          {f,689},
          [{tr,{x,1},
               {t_union,none,none,
                        {t_integer,{41,41}},
                        none,
                        {t_bitstring,256,true}}},
           {literal,<<>>}]}.
    {move,{atom,a},{x,0}}.
    return.
  {label,689}.
    {test,is_eq_exact,
          {f,687},
          [{tr,{x,0},
               {t_union,{t_atom,[anything]},none,{t_integer,{1,1}},none,none}},
           {integer,1}]}.
    {test,is_lt,
          {f,687},
          [{tr,{x,1},
               {t_union,none,none,
                        {t_integer,{41,41}},
                        none,
                        {t_bitstring,256,true}}},
           {integer,42}]}.
    {move,{atom,b},{x,0}}.
    return.


{function, otp_7240_f, 2, 691}.
  {label,690}.
    {line,[{location,"bs_match_r25_SUITE.erl",1319}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,otp_7240_f},2}.
  {label,691}.
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
          {f,692},
          [{tr,{x,1},
               {t_union,none,none,none,
                        {t_tuple,0,true,#{}},
                        {t_bitstring,256,true}}},
           {literal,<<>>}]}.
    {move,{atom,a},{x,0}}.
    return.
  {label,692}.
    {test,is_eq_exact,
          {f,690},
          [{tr,{x,0},
               {t_union,{t_atom,[anything]},none,{t_integer,{1,1}},none,none}},
           {integer,1}]}.
    {test,is_tuple,
          {f,690},
          [{tr,{x,1},
               {t_union,none,none,none,
                        {t_tuple,0,true,#{}},
                        {t_bitstring,256,true}}}]}.
    {move,{atom,b},{x,0}}.
    return.


{function, otp_7498, 1, 694}.
  {label,693}.
    {line,[{location,"bs_match_r25_SUITE.erl",1322}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,otp_7498},1}.
  {label,694}.
    {test,is_list,{f,693},[{x,0}]}.
    {allocate,0,0}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1323}]}.
    {call,2,{f,704}}. % otp_7498_foo/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,702},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<1,2,3>>}]}.
    {move,{integer,1},{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1324}]}.
    {call,2,{f,704}}. % otp_7498_foo/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,701},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<2,3>>}]}.
    {move,{integer,2},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1325}]}.
    {call,2,{f,704}}. % otp_7498_foo/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,700},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<1,2,3>>}]}.
    {move,{integer,0},{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1327}]}.
    {call,2,{f,708}}. % otp_7498_bar/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,699},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<1,2,3>>}]}.
    {move,{integer,1},{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1328}]}.
    {call,2,{f,708}}. % otp_7498_bar/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,698},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<2,3>>}]}.
    {move,{integer,2},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1329}]}.
    {call,2,{f,708}}. % otp_7498_bar/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,697},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<1,2,3>>}]}.
    {move,{integer,2},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1330}]}.
    {call,2,{f,708}}. % otp_7498_bar/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,696},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<>>}]}.
    {move,{integer,3},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1331}]}.
    {call,2,{f,708}}. % otp_7498_bar/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,695},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<1,2,3>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,695}.
    {badmatch,{x,0}}.
  {label,696}.
    {line,[{location,"bs_match_r25_SUITE.erl",1330}]}.
    {badmatch,{x,0}}.
  {label,697}.
    {line,[{location,"bs_match_r25_SUITE.erl",1329}]}.
    {badmatch,{x,0}}.
  {label,698}.
    {line,[{location,"bs_match_r25_SUITE.erl",1328}]}.
    {badmatch,{x,0}}.
  {label,699}.
    {line,[{location,"bs_match_r25_SUITE.erl",1327}]}.
    {badmatch,{x,0}}.
  {label,700}.
    {line,[{location,"bs_match_r25_SUITE.erl",1325}]}.
    {badmatch,{x,0}}.
  {label,701}.
    {line,[{location,"bs_match_r25_SUITE.erl",1324}]}.
    {badmatch,{x,0}}.
  {label,702}.
    {line,[{location,"bs_match_r25_SUITE.erl",1323}]}.
    {badmatch,{x,0}}.


{function, otp_7498_foo, 2, 704}.
  {label,703}.
    {line,[{location,"bs_match_r25_SUITE.erl",1335}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,otp_7498_foo},2}.
  {label,704}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,43}}}]}}.
    {test,is_eq_exact,{f,705},[{tr,{x,1},{t_integer,{0,43}}},{integer,0}]}.
    {move,{integer,42},{x,1}}.
    {call_only,2,{f,704}}. % otp_7498_foo/2
  {label,705}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,2}}.
    {test,bs_skip_bits2,
          {f,706},
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[1337,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_get_tail,{x,2},{x,2},3}.
    {test,is_eq_exact,{f,706},[{tr,{x,1},{t_integer,{1,43}}},{integer,1}]}.
    {move,{integer,43},{x,1}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,704}}. % otp_7498_foo/2
  {label,706}.
    return.


{function, otp_7498_bar, 2, 708}.
  {label,707}.
    {line,[{location,"bs_match_r25_SUITE.erl",1342}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,otp_7498_bar},2}.
  {label,708}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,44}}}]}}.
    {test,is_eq_exact,{f,709},[{tr,{x,1},{t_integer,{0,44}}},{integer,0}]}.
    {move,{integer,42},{x,1}}.
    {call_only,2,{f,708}}. % otp_7498_bar/2
  {label,709}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,2}}.
    {bs_get_position,{x,2},{x,3},3}.
    {test,bs_skip_bits2,
          {f,710},
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[1344,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_get_tail,{x,2},{x,4},4}.
    {test,is_eq_exact,{f,710},[{tr,{x,1},{t_integer,{1,44}}},{integer,1}]}.
    {move,{integer,43},{x,1}}.
    {move,{x,4},{x,0}}.
    {call_only,2,{f,708}}. % otp_7498_bar/2
  {label,710}.
    {bs_set_position,{x,2},{x,3}}.
    {test,bs_test_tail2,{f,711},[{x,2},0]}.
    {test,is_eq_exact,{f,711},[{tr,{x,1},{t_integer,{1,44}}},{integer,2}]}.
    {move,{integer,44},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {call_only,2,{f,708}}. % otp_7498_bar/2
  {label,711}.
    return.


{function, match_string, 1, 713}.
  {label,712}.
    {line,[{location,"bs_match_r25_SUITE.erl",1352}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,match_string},1}.
  {label,713}.
    {test,is_list,{f,712},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{atom,endian},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1358}]}.
    {call_ext,1,{extfunc,erlang,system_info,1}}.
    {select_val,{x,0},
                {f,725},
                {list,[{atom,big},{f,715},{atom,little},{f,714}]}}.
  {label,714}.
    {move,{literal,<<97,0,98,0>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1360}]}.
    {call,1,{f,727}}. % do_match_string_native/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {jump,{f,716}}.
  {label,715}.
    {move,{literal,<<0,97,0,98>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1362}]}.
    {call,1,{f,727}}. % do_match_string_native/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,716}.
    {move,{literal,<<0,97,0,98>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1365}]}.
    {call,1,{f,729}}. % do_match_string_big/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<97,0,98,0>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1366}]}.
    {call,1,{f,731}}. % do_match_string_little/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<"ÿÿ">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1368}]}.
    {call,1,{f,733}}. % do_match_string_big_signed/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<"ÿÿ">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1369}]}.
    {call,1,{f,735}}. % do_match_string_little_signed/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1371}]}.
    {call,1,{f,737}}. % no_match_string_opt/1
    {'%',{var_info,{x,0},[{type,{t_atom,[plain,strange]}}]}}.
    {test,is_eq_exact,
          {f,724},
          [{tr,{x,0},{t_atom,[plain,strange]}},{atom,plain}]}.
    {move,{literal,<<48,152,140,3:3>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1372}]}.
    {call,1,{f,737}}. % no_match_string_opt/1
    {'%',{var_info,{x,0},[{type,{t_atom,[plain,strange]}}]}}.
    {test,is_eq_exact,
          {f,723},
          [{tr,{x,0},{t_atom,[plain,strange]}},{atom,strange}]}.
    {move,{literal,<<"d">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1374}]}.
    {call,1,{f,1686}}. % id/1
    {call,1,{f,741}}. % do_match_string_tail/1
    {'%',{var_info,{x,0},[{type,{t_atom,[d,dd]}}]}}.
    {test,is_eq_exact,{f,722},[{tr,{x,0},{t_atom,[d,dd]}},{atom,d}]}.
    {move,{literal,<<"dd">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1375}]}.
    {call,1,{f,1686}}. % id/1
    {call,1,{f,741}}. % do_match_string_tail/1
    {'%',{var_info,{x,0},[{type,{t_atom,[d,dd]}}]}}.
    {test,is_eq_exact,{f,721},[{tr,{x,0},{t_atom,[d,dd]}},{atom,dd}]}.
    {move,{literal,<<"a">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1377}]}.
    {call,1,{f,1686}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,0},{x,0}}.
    {call,1,{f,1686}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {call,2,{f,744}}. % do_match_string_var_size/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a,ab]}}]}}.
    {test,is_eq_exact,{f,720},[{tr,{x,0},{t_atom,[a,ab]}},{atom,a}]}.
    {move,{literal,<<"ab">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1378}]}.
    {call,1,{f,1686}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,8},{x,0}}.
    {call,1,{f,1686}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {call,2,{f,744}}. % do_match_string_var_size/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a,ab]}}]}}.
    {test,is_eq_exact,{f,719},[{tr,{x,0},{t_atom,[a,ab]}},{atom,a}]}.
    {move,{literal,<<"ab">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1379}]}.
    {call,1,{f,1686}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,0},{x,0}}.
    {call,1,{f,1686}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {call,2,{f,744}}. % do_match_string_var_size/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a,ab]}}]}}.
    {test,is_eq_exact,{f,718},[{tr,{x,0},{t_atom,[a,ab]}},{atom,ab}]}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1380}]}.
    {call,1,{f,1686}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,8},{x,0}}.
    {call,1,{f,1686}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {call,2,{f,744}}. % do_match_string_var_size/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a,ab]}}]}}.
    {test,is_eq_exact,{f,717},[{tr,{x,0},{t_atom,[a,ab]}},{atom,ab}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,717}.
    {badmatch,{atom,a}}.
  {label,718}.
    {line,[{location,"bs_match_r25_SUITE.erl",1379}]}.
    {badmatch,{atom,a}}.
  {label,719}.
    {line,[{location,"bs_match_r25_SUITE.erl",1378}]}.
    {badmatch,{atom,ab}}.
  {label,720}.
    {line,[{location,"bs_match_r25_SUITE.erl",1377}]}.
    {badmatch,{atom,ab}}.
  {label,721}.
    {line,[{location,"bs_match_r25_SUITE.erl",1375}]}.
    {badmatch,{atom,d}}.
  {label,722}.
    {line,[{location,"bs_match_r25_SUITE.erl",1374}]}.
    {badmatch,{atom,dd}}.
  {label,723}.
    {line,[{location,"bs_match_r25_SUITE.erl",1372}]}.
    {badmatch,{atom,plain}}.
  {label,724}.
    {line,[{location,"bs_match_r25_SUITE.erl",1371}]}.
    {badmatch,{atom,strange}}.
  {label,725}.
    {line,[{location,"bs_match_r25_SUITE.erl",1358}]}.
    {case_end,{x,0}}.


{function, do_match_string_native, 1, 727}.
  {label,726}.
    {line,[{location,"bs_match_r25_SUITE.erl",1384}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_match_string_native},1}.
  {label,727}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,726},
          2,
          [{tr,{x,1},{t_bs_context,32}},
           {integer,16},
           1,
           {field_flags,[{anno,[1384,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,native]}],
          {x,2}}.
    {test,is_eq_exact,{f,726},[{tr,{x,2},{t_integer,{0,65535}}},{integer,97}]}.
    {test,bs_get_integer2,
          {f,726},
          2,
          [{tr,{x,1},{t_bs_context,16}},
           {integer,16},
           1,
           {field_flags,[{anno,[1384,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,native]}],
          {x,2}}.
    {test,is_eq_exact,{f,726},[{tr,{x,2},{t_integer,{0,65535}}},{integer,98}]}.
    {test,bs_test_tail2,{f,726},[{x,1},0]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, do_match_string_big, 1, 729}.
  {label,728}.
    {line,[{location,"bs_match_r25_SUITE.erl",1386}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_match_string_big},1}.
  {label,729}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,false}}]}}.
    {test,is_eq_exact,
          {f,728},
          [{tr,{x,0},{t_bitstring,32,false}},{literal,<<0,97,0,98>>}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, do_match_string_little, 1, 731}.
  {label,730}.
    {line,[{location,"bs_match_r25_SUITE.erl",1388}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_match_string_little},1}.
  {label,731}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_match_string,{f,730},[{x,1},32,{string,<<97,0,98,0>>}]}.
    {test,bs_test_tail2,{f,730},[{x,1},0]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, do_match_string_big_signed, 1, 733}.
  {label,732}.
    {line,[{location,"bs_match_r25_SUITE.erl",1390}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_match_string_big_signed},1}.
  {label,733}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_match_string,{f,732},[{x,1},16,{string,<<"ÿÿ">>}]}.
    {test,bs_test_tail2,{f,732},[{x,1},0]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, do_match_string_little_signed, 1, 735}.
  {label,734}.
    {line,[{location,"bs_match_r25_SUITE.erl",1392}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,do_match_string_little_signed},
               1}.
  {label,735}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_match_string,{f,734},[{x,1},16,{string,<<"ÿÿ">>}]}.
    {test,bs_test_tail2,{f,734},[{x,1},0]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, no_match_string_opt, 1, 737}.
  {label,736}.
    {line,[{location,"bs_match_r25_SUITE.erl",1394}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,no_match_string_opt},1}.
  {label,737}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,736},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1394,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {select_val,{tr,{x,2},{t_integer,{0,255}}},
                {f,736},
                {list,[{integer,48},{f,739},{integer,97},{f,738}]}}.
  {label,738}.
    {test,bs_match_string,{f,736},[{x,1},16,{string,<<"bc">>}]}.
    {test,bs_test_tail2,{f,736},[{x,1},0]}.
    {move,{atom,plain},{x,0}}.
    return.
  {label,739}.
    {test,bs_match_string,{f,736},[{x,1},19,{string,<<152,140,96>>}]}.
    {test,bs_test_tail2,{f,736},[{x,1},0]}.
    {move,{atom,strange},{x,0}}.
    return.


{function, do_match_string_tail, 1, 741}.
  {label,740}.
    {line,[{location,"bs_match_r25_SUITE.erl",1399}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_match_string_tail},1}.
  {label,741}.
    {test,bs_start_match3,{f,740},1,[{x,0}],{x,1}}.
    {test,bs_match_string,{f,740},[{x,1},8,{string,<<"d">>}]}.
    {bs_get_position,{x,1},{x,2},2}.
    {test,bs_get_integer2,
          {f,742},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1399,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,742},[{tr,{x,3},{t_integer,{0,255}}},{integer,100}]}.
    {test,bs_test_unit,{f,742},[{x,1},8]}.
    {move,{atom,dd},{x,0}}.
    return.
  {label,742}.
    {bs_set_position,{x,1},{x,2}}.
    {test,bs_test_unit,{f,740},[{x,1},8]}.
    {move,{atom,d},{x,0}}.
    return.


{function, do_match_string_var_size, 2, 744}.
  {label,743}.
    {line,[{location,"bs_match_r25_SUITE.erl",1401}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_match_string_var_size},2}.
  {label,744}.
    {test,bs_start_match3,{f,746},2,[{x,0}],{x,2}}.
    {test,bs_match_string,{f,746},[{x,2},8,{string,<<"a">>}]}.
    {bs_get_position,{x,2},{x,3},3}.
    {test,bs_get_integer2,
          {f,745},
          4,
          [{tr,{x,2},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1402,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,is_eq_exact,{f,745},[{tr,{x,4},{t_integer,{0,255}}},{integer,98}]}.
    {test,bs_skip_bits2,
          {f,745},
          [{x,2},
           {x,1},
           1,
           {field_flags,[{anno,[1402,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_test_tail2,{f,745},[{x,2},0]}.
    {move,{atom,ab},{x,0}}.
    return.
  {label,745}.
    {bs_set_position,{x,2},{x,3}}.
    {test,bs_skip_bits2,
          {f,746},
          [{x,2},
           {x,1},
           1,
           {field_flags,[{anno,[1402,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_test_tail2,{f,746},[{x,2},0]}.
    {move,{atom,a},{x,0}}.
    return.
  {label,746}.
    {line,[{location,"bs_match_r25_SUITE.erl",1402}]}.
    {case_end,{x,0}}.


{function, zero_width, 1, 748}.
  {label,747}.
    {line,[{location,"bs_match_r25_SUITE.erl",1406}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,zero_width},1}.
  {label,748}.
    {test,is_list,{f,747},[{x,0}]}.
    {move,{literal,<<2,0,104,105>>},{x,0}}.
    {bs_start_match4,{atom,no_fail},0,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,754},
          1,
          [{tr,{x,0},{t_bs_context,32}},
           {integer,16},
           1,
           {field_flags,[{anno,[1407,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,little]}],
          {x,1}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_binary2,
          {f,754},
          2,
          [{tr,{x,0},{t_bs_context,16}},
           {tr,{x,1},{t_integer,{0,65535}}},
           8,
           {field_flags,[{anno,[1407,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,754},[{x,0},0]}.
    {test,is_eq_exact,{f,753},[{tr,{x,1},{t_integer,{0,65535}}},{integer,2}]}.
    {test,is_eq_exact,
          {f,752},
          [{tr,{x,2},{t_bitstring,8,false}},{literal,<<"hi">>}]}.
    {allocate,0,0}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1412}]}.
    {call,1,{f,1686}}. % id/1
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1422}]}.
    {call,1,{f,1813}}. % '-zero_width/1-fun-0-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[no_match,star]},
                                   none,
                                   {t_integer,{0,0}},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,751},
          [{tr,{x,0},
               {t_union,{t_atom,[no_match,star]},
                        none,
                        {t_integer,{0,0}},
                        none,none}},
           {atom,star}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1423}]}.
    {call,1,{f,1813}}. % '-zero_width/1-fun-0-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[no_match,star]},
                                   none,
                                   {t_integer,{0,0}},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,750},
          [{tr,{x,0},
               {t_union,{t_atom,[no_match,star]},
                        none,
                        {t_integer,{0,0}},
                        none,none}},
           {integer,0}]}.
    {move,{literal,<<1>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1424}]}.
    {call,1,{f,1813}}. % '-zero_width/1-fun-0-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[no_match,star]},
                                   none,
                                   {t_integer,{0,0}},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,749},
          [{tr,{x,0},
               {t_union,{t_atom,[no_match,star]},
                        none,
                        {t_integer,{0,0}},
                        none,none}},
           {atom,no_match}]}.
    {move,{atom,whatever},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1425}]}.
    {call,1,{f,1813}}. % '-zero_width/1-fun-0-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[no_match]}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,749}.
    {line,[{location,"bs_match_r25_SUITE.erl",1424}]}.
    {badmatch,{x,0}}.
  {label,750}.
    {line,[{location,"bs_match_r25_SUITE.erl",1423}]}.
    {badmatch,{x,0}}.
  {label,751}.
    {line,[{location,"bs_match_r25_SUITE.erl",1422}]}.
    {badmatch,{x,0}}.
  {label,752}.
    {line,[{location,"bs_match_r25_SUITE.erl",1409}]}.
    {badmatch,{literal,<<"hi">>}}.
  {label,753}.
    {line,[{location,"bs_match_r25_SUITE.erl",1408}]}.
    {badmatch,{x,1}}.
  {label,754}.
    {line,[{location,"bs_match_r25_SUITE.erl",1407}]}.
    {badmatch,{literal,<<2,0,104,105>>}}.


{function, bad_size, 1, 756}.
  {label,755}.
    {line,[{location,"bs_match_r25_SUITE.erl",1431}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bad_size},1}.
  {label,756}.
    {test,is_list,{f,755},[{x,0}]}.
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
    {'catch',{y,18},{f,757}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1437}]}.
    {call,1,{f,1686}}. % id/1
    {badmatch,{x,0}}.
  {label,757}.
    {catch_end,{y,18}}.
    {test,is_tagged_tuple,{f,801},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,801},[{x,1}]}.
    {test,test_arity,{f,801},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,801},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,17},{f,758}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,"$"},{location,"bs_match_r25_SUITE.erl",1438}]}.
    {call,1,{f,1686}}. % id/1
    {badmatch,{x,0}}.
  {label,758}.
    {catch_end,{y,17}}.
    {test,is_tagged_tuple,{f,800},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,800},[{x,1}]}.
    {test,test_arity,{f,800},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,800},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,16},{f,759}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,"\""},{location,"bs_match_r25_SUITE.erl",1439}]}.
    {call,1,{f,1686}}. % id/1
    {badmatch,{x,0}}.
  {label,759}.
    {catch_end,{y,16}}.
    {test,is_tagged_tuple,{f,799},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,799},[{x,1}]}.
    {test,test_arity,{f,799},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,799},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,15},{f,760}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope," "},{location,"bs_match_r25_SUITE.erl",1440}]}.
    {call,1,{f,1686}}. % id/1
    {badmatch,{x,0}}.
  {label,760}.
    {catch_end,{y,15}}.
    {test,is_tagged_tuple,{f,798},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,798},[{x,1}]}.
    {test,test_arity,{f,798},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,798},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,14},{f,761}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[30]},{location,"bs_match_r25_SUITE.erl",1441}]}.
    {call,1,{f,1686}}. % id/1
    {badmatch,{x,0}}.
  {label,761}.
    {catch_end,{y,14}}.
    {test,is_tagged_tuple,{f,797},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,797},[{x,1}]}.
    {test,test_arity,{f,797},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,797},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,13},{f,762}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[28]},{location,"bs_match_r25_SUITE.erl",1442}]}.
    {call,1,{f,1686}}. % id/1
    {badmatch,{x,0}}.
  {label,762}.
    {catch_end,{y,13}}.
    {test,is_tagged_tuple,{f,796},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,796},[{x,1}]}.
    {test,test_arity,{f,796},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,796},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,12},{f,763}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[26]},{location,"bs_match_r25_SUITE.erl",1444}]}.
    {call,1,{f,1686}}. % id/1
    {badmatch,{x,0}}.
  {label,763}.
    {catch_end,{y,12}}.
    {test,is_tagged_tuple,{f,795},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,795},[{x,1}]}.
    {test,test_arity,{f,795},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,795},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,11},{f,764}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[24]},{location,"bs_match_r25_SUITE.erl",1445}]}.
    {call,1,{f,1686}}. % id/1
    {badmatch,{x,0}}.
  {label,764}.
    {catch_end,{y,11}}.
    {test,is_tagged_tuple,{f,794},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,794},[{x,1}]}.
    {test,test_arity,{f,794},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,794},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,10},{f,765}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",1446}]}.
    {call,1,{f,1686}}. % id/1
    {badmatch,{x,0}}.
  {label,765}.
    {catch_end,{y,10}}.
    {test,is_tagged_tuple,{f,793},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,793},[{x,1}]}.
    {test,test_arity,{f,793},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,793},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,9},{f,766}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[20]},{location,"bs_match_r25_SUITE.erl",1447}]}.
    {call,1,{f,1686}}. % id/1
    {badmatch,{x,0}}.
  {label,766}.
    {catch_end,{y,9}}.
    {test,is_tagged_tuple,{f,792},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,792},[{x,1}]}.
    {test,test_arity,{f,792},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,792},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,8},{f,767}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[18]},{location,"bs_match_r25_SUITE.erl",1448}]}.
    {call,1,{f,1686}}. % id/1
    {test,bs_start_match3,{f,776},1,[{x,0}],{x,1}}.
    {test,bs_get_float2,
          {f,776},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,1},
           1,
           {field_flags,[{anno,[1448,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,776},[{tr,{x,2},{t_float,any}},{float,42.0}]}.
    {test,bs_test_tail2,{f,776},[{x,1},0]}.
  {label,767}.
    {catch_end,{y,8}}.
    {test,is_tagged_tuple,{f,791},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,791},[{x,1}]}.
    {test,test_arity,{f,791},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,791},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,7},{f,768}}.
    {move,{literal,<<"ÿÿÿÿ">>},{x,0}}.
    {line,[{scope,[16]},{location,"bs_match_r25_SUITE.erl",1449}]}.
    {call,1,{f,1686}}. % id/1
    {test,bs_start_match3,{f,777},1,[{x,0}],{x,1}}.
    {test,bs_get_float2,
          {f,777},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[1449,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,777},[{tr,{x,2},{t_float,any}},{float,42.0}]}.
    {test,bs_test_tail2,{f,777},[{x,1},0]}.
  {label,768}.
    {catch_end,{y,7}}.
    {test,is_tagged_tuple,{f,790},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,790},[{x,1}]}.
    {test,test_arity,{f,790},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,790},[{x,1},2,{atom,badmatch}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,{f,790},[{x,1},{literal,<<"ÿÿÿÿ">>}]}.
    {'catch',{y,6},{f,769}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_r25_SUITE.erl",1452}]}.
    {call,1,{f,1686}}. % id/1
    {badmatch,{x,0}}.
  {label,769}.
    {catch_end,{y,6}}.
    {test,is_tagged_tuple,{f,789},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,789},[{x,1}]}.
    {test,test_arity,{f,789},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,789},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,5},{f,770}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_match_r25_SUITE.erl",1453}]}.
    {call,1,{f,1686}}. % id/1
    {badmatch,{x,0}}.
  {label,770}.
    {catch_end,{y,5}}.
    {test,is_tagged_tuple,{f,788},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,788},[{x,1}]}.
    {test,test_arity,{f,788},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,788},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,4},{f,771}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,"\n"},{location,"bs_match_r25_SUITE.erl",1454}]}.
    {call,1,{f,1686}}. % id/1
    {badmatch,{x,0}}.
  {label,771}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,787},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,787},[{x,1}]}.
    {test,test_arity,{f,787},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,787},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,3},{f,772}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",1455}]}.
    {call,1,{f,1686}}. % id/1
    {badmatch,{x,0}}.
  {label,772}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,786},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,786},[{x,1}]}.
    {test,test_arity,{f,786},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,786},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,2},{f,773}}.
    {move,{literal,<<1:1>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",1456}]}.
    {call,1,{f,1686}}. % id/1
    {test,bs_start_match3,{f,778},1,[{x,0}],{x,1}}.
    {test,bs_get_float2,
          {f,778},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,1},
           1,
           {field_flags,[{anno,[1456,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,778},[{x,1},0]}.
  {label,773}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,785},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,785},[{x,1}]}.
    {test,test_arity,{f,785},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,785},[{x,1},2,{atom,badmatch}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,bs_start_match3,{f,785},2,[{x,1}],{x,1}}.
    {test,bs_match_string,{f,785},[{x,1},1,{string,<<128>>}]}.
    {test,bs_test_tail2,{f,785},[{x,1},0]}.
    {'catch',{y,1},{f,774}}.
    {move,{literal,<<"ÿÿÿÿ">>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r25_SUITE.erl",1457}]}.
    {call,1,{f,1686}}. % id/1
    {test,bs_start_match3,{f,779},1,[{x,0}],{x,1}}.
    {test,bs_get_float2,
          {f,779},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[1457,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,779},[{x,1},0]}.
  {label,774}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,784},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,784},[{x,1}]}.
    {test,test_arity,{f,784},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,784},[{x,1},2,{atom,badmatch}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,{f,784},[{x,1},{literal,<<"ÿÿÿÿ">>}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",1459}]}.
    {call,1,{f,803}}. % bad_all_size/1
    {'%',{var_info,{x,0},[{type,{t_atom,[no_match]}}]}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",1460}]}.
    {call,1,{f,803}}. % bad_all_size/1
    {'%',{var_info,{x,0},[{type,{t_atom,[no_match]}}]}}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",1462}]}.
    {call,1,{f,817}}. % bad_size_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,true]}}]}}.
    {test,is_eq_exact,{f,783},[{tr,{x,0},{t_atom,[error,true]}},{atom,true}]}.
    {move,{literal,<<0,1>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",1463}]}.
    {call,1,{f,817}}. % bad_size_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,true]}}]}}.
    {test,is_eq_exact,{f,782},[{tr,{x,0},{t_atom,[error,true]}},{atom,error}]}.
    {move,{literal,[a]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",1465}]}.
    {call,1,{f,820}}. % bad_size_2/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{literal,[<<1,2,3>>]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",1466}]}.
    {call,1,{f,820}}. % bad_size_2/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {'catch',{y,0},{f,775}}.
    {move,{atom,no_list},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",1467}]}.
    {call,1,{f,820}}. % bad_size_2/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
  {label,775}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,781},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,781},[{x,1}]}.
    {test,test_arity,{f,781},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,781},[{x,1},{literal,{bad_generator,no_list}}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1469}]}.
    {call,1,{f,822}}. % bad_size_3/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1470}]}.
    {call,1,{f,822}}. % bad_size_3/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1472}]}.
    {call,2,{f,1811}}. % '-bad_size/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {call,1,{f,1686}}. % id/1
    {test,is_eq_exact,{f,780},[{x,0},{literal,<<>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,19}.
    return.
  {label,776}.
    {line,[{scope,[17]},{location,"bs_match_r25_SUITE.erl",1448}]}.
    {badmatch,{x,0}}.
  {label,777}.
    {line,[{scope,[15]},{location,"bs_match_r25_SUITE.erl",1449}]}.
    {badmatch,{x,0}}.
  {label,778}.
    {line,[{scope,[5]},{location,"bs_match_r25_SUITE.erl",1456}]}.
    {badmatch,{x,0}}.
  {label,779}.
    {line,[{scope,[3]},{location,"bs_match_r25_SUITE.erl",1457}]}.
    {badmatch,{x,0}}.
  {label,780}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1472}]}.
    {badmatch,{x,0}}.
  {label,781}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1467}]}.
    {badmatch,{x,0}}.
  {label,782}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",1463}]}.
    {badmatch,{atom,true}}.
  {label,783}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",1462}]}.
    {badmatch,{atom,error}}.
  {label,784}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",1457}]}.
    {badmatch,{x,0}}.
  {label,785}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",1456}]}.
    {badmatch,{x,0}}.
  {label,786}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",1455}]}.
    {badmatch,{x,0}}.
  {label,787}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",1454}]}.
    {badmatch,{x,0}}.
  {label,788}.
    {line,[{scope,"\n"},{location,"bs_match_r25_SUITE.erl",1453}]}.
    {badmatch,{x,0}}.
  {label,789}.
    {line,[{scope,"\f"},{location,"bs_match_r25_SUITE.erl",1452}]}.
    {badmatch,{x,0}}.
  {label,790}.
    {line,[{scope,[14]},{location,"bs_match_r25_SUITE.erl",1449}]}.
    {badmatch,{x,0}}.
  {label,791}.
    {line,[{scope,[16]},{location,"bs_match_r25_SUITE.erl",1448}]}.
    {badmatch,{x,0}}.
  {label,792}.
    {line,[{scope,[18]},{location,"bs_match_r25_SUITE.erl",1447}]}.
    {badmatch,{x,0}}.
  {label,793}.
    {line,[{scope,[20]},{location,"bs_match_r25_SUITE.erl",1446}]}.
    {badmatch,{x,0}}.
  {label,794}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",1445}]}.
    {badmatch,{x,0}}.
  {label,795}.
    {line,[{scope,[24]},{location,"bs_match_r25_SUITE.erl",1444}]}.
    {badmatch,{x,0}}.
  {label,796}.
    {line,[{scope,[26]},{location,"bs_match_r25_SUITE.erl",1442}]}.
    {badmatch,{x,0}}.
  {label,797}.
    {line,[{scope,[28]},{location,"bs_match_r25_SUITE.erl",1441}]}.
    {badmatch,{x,0}}.
  {label,798}.
    {line,[{scope,[30]},{location,"bs_match_r25_SUITE.erl",1440}]}.
    {badmatch,{x,0}}.
  {label,799}.
    {line,[{scope," "},{location,"bs_match_r25_SUITE.erl",1439}]}.
    {badmatch,{x,0}}.
  {label,800}.
    {line,[{scope,"\""},{location,"bs_match_r25_SUITE.erl",1438}]}.
    {badmatch,{x,0}}.
  {label,801}.
    {line,[{scope,"$"},{location,"bs_match_r25_SUITE.erl",1437}]}.
    {badmatch,{x,0}}.


{function, bad_all_size, 1, 803}.
  {label,802}.
    {line,[{location,"bs_match_r25_SUITE.erl",1476}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bad_all_size},1}.
  {label,803}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1477}]}.
    {call,1,{f,805}}. % bad_all_size_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[no_match]}}]}}.
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1478}]}.
    {call,1,{f,807}}. % bad_all_size_2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[no_match]}}]}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1479}]}.
    {call,1,{f,809}}. % bad_all_size_3/1
    {'%',{var_info,{x,0},[{type,{t_atom,[no_match]}}]}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1480}]}.
    {call,1,{f,811}}. % bad_all_size_4/1
    {'%',{var_info,{x,0},[{type,{t_atom,[no_match]}}]}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1481}]}.
    {call,1,{f,813}}. % bad_all_size_5/1
    {'%',{var_info,{x,0},[{type,{t_atom,[no_match]}}]}}.
    {move,{y,1},{x,0}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {line,[{location,"bs_match_r25_SUITE.erl",1482}]}.
    {call,1,{f,815}}. % bad_all_size_6/1
    {'%',{var_info,{x,0},[{type,{t_atom,[no_match]}}]}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, bad_all_size_1, 1, 805}.
  {label,804}.
    {line,[{location,"bs_match_r25_SUITE.erl",1485}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bad_all_size_1},1}.
  {label,805}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {move,{atom,no_match},{x,0}}.
    return.


{function, bad_all_size_2, 1, 807}.
  {label,806}.
    {line,[{location,"bs_match_r25_SUITE.erl",1491}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bad_all_size_2},1}.
  {label,807}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {move,{atom,no_match},{x,0}}.
    return.


{function, bad_all_size_3, 1, 809}.
  {label,808}.
    {line,[{location,"bs_match_r25_SUITE.erl",1497}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bad_all_size_3},1}.
  {label,809}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {move,{atom,no_match},{x,0}}.
    return.


{function, bad_all_size_4, 1, 811}.
  {label,810}.
    {line,[{location,"bs_match_r25_SUITE.erl",1504}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bad_all_size_4},1}.
  {label,811}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {move,{atom,no_match},{x,0}}.
    return.


{function, bad_all_size_5, 1, 813}.
  {label,812}.
    {line,[{location,"bs_match_r25_SUITE.erl",1511}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bad_all_size_5},1}.
  {label,813}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {move,{atom,no_match},{x,0}}.
    return.


{function, bad_all_size_6, 1, 815}.
  {label,814}.
    {line,[{location,"bs_match_r25_SUITE.erl",1520}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bad_all_size_6},1}.
  {label,815}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {move,{atom,no_match},{x,0}}.
    return.


{function, bad_size_1, 1, 817}.
  {label,816}.
    {line,[{location,"bs_match_r25_SUITE.erl",1529}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bad_size_1},1}.
  {label,817}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,818},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<0>>}]}.
    {move,{atom,true},{x,0}}.
    return.
  {label,818}.
    {move,{atom,error},{x,0}}.
    return.


{function, bad_size_2, 1, 820}.
  {label,819}.
    {line,[{location,"bs_match_r25_SUITE.erl",1535}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bad_size_2},1}.
  {label,820}.
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
    {call_only,1,{f,1807}}. % '-bad_size_2/1-lc$^0/1-0-'/1


{function, bad_size_3, 1, 822}.
  {label,821}.
    {line,[{location,"bs_match_r25_SUITE.erl",1541}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bad_size_3},1}.
  {label,822}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {move,{atom,error},{x,0}}.
    return.


{function, haystack, 1, 824}.
  {label,823}.
    {line,[{location,"bs_match_r25_SUITE.erl",1546}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,haystack},1}.
  {label,824}.
    {test,is_list,{f,823},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<0,0,0,0,0,0,0,0,0,0>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1547}]}.
    {call,1,{f,828}}. % haystack_1/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {test,is_eq_exact,
          {f,826},
          [{tr,{x,0},{t_bitstring,16,false}},
           {literal,<<0,0,0,0,0,0,0,0,0,0>>}]}.
    {line,[{location,"bs_match_r25_SUITE.erl",1549}]}.
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
    {call,1,{f,830}}. % haystack_2/1
    {'%',{var_info,{x,0},[{type,{t_cons,{t_bitstring,8,false},nil}}]}}.
    {test,is_eq_exact,
          {f,825},
          [{tr,{x,0},{t_cons,{t_bitstring,8,false},nil}},
           {literal,[<<0,0,0,0,0,0,0,0,0,0>>,
                     <<0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0>>]}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,825}.
    {line,[{location,"bs_match_r25_SUITE.erl",1548}]}.
    {badmatch,{x,0}}.
  {label,826}.
    {line,[{location,"bs_match_r25_SUITE.erl",1547}]}.
    {badmatch,{x,0}}.


{function, haystack_1, 1, 828}.
  {label,827}.
    {line,[{location,"bs_match_r25_SUITE.erl",1553}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,haystack_1},1}.
  {label,828}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{x,0},{x,1}}.
    {move,{literal,"\n"},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1558}]}.
    {call,2,{f,1803}}. % '-haystack_1/1-lc$^0/1-0-'/2
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, haystack_2, 1, 830}.
  {label,829}.
    {line,[{location,"bs_match_r25_SUITE.erl",1562}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,haystack_2},1}.
  {label,830}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,false}}]}}.
    {move,{x,0},{x,1}}.
    {move,{literal,[{687,10},{369,20}]},{x,0}}.
    {call_only,2,{f,1799}}. % '-haystack_2/1-lc$^0/1-0-'/2


{function, fc, 1, 832}.
  {label,831}.
    {line,[{location,"bs_match_r25_SUITE.erl",1569}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,fc},1}.
  {label,832}.
    {test,is_tagged_tuple,{f,831},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,831},[{x,1},2,{atom,function_clause}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, fc, 3, 834}.
  {label,833}.
    {line,[{location,"bs_match_r25_SUITE.erl",1572}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,fc},3}.
  {label,834}.
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
    {test,is_tagged_tuple,{f,833},[{x,2},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,2},1,{x,3}}.
    {test,is_tagged_tuple,{f,833},[{x,3},2,{atom,function_clause}]}.
    {get_tuple_element,{x,3},1,{x,3}}.
    {test,is_nonempty_list,{f,833},[{x,3}]}.
    {get_hd,{x,3},{x,3}}.
    {test,is_tagged_tuple,{f,833},[{x,3},4,{atom,bs_match_r25_SUITE}]}.
    {get_tuple_element,{x,3},1,{x,4}}.
    {test,is_eq_exact,{f,833},[{x,4},{tr,{x,0},{t_atom,any}}]}.
    {get_tuple_element,{x,3},2,{x,3}}.
    {test,is_eq_exact,
          {f,833},
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


{function, cover_beam_bool, 1, 836}.
  {label,835}.
    {line,[{location,"bs_match_r25_SUITE.erl",1580}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,cover_beam_bool},1}.
  {label,836}.
    {test,is_list,{f,835},[{x,0}]}.
    {allocate,0,0}.
    {move,{integer,3},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1581}]}.
    {call,2,{f,841}}. % do_cover_beam_bool/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,2},{x,1}}.
    {move,{literal,<<19>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1582}]}.
    {call,2,{f,841}}. % do_cover_beam_bool/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,839},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<19>>}]}.
    {move,{integer,1},{x,1}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1583}]}.
    {call,2,{f,841}}. % do_cover_beam_bool/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,838},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<"*">>}]}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<13,17>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1584}]}.
    {call,2,{f,841}}. % do_cover_beam_bool/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,837},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<17>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,837}.
    {badmatch,{x,0}}.
  {label,838}.
    {line,[{location,"bs_match_r25_SUITE.erl",1583}]}.
    {badmatch,{x,0}}.
  {label,839}.
    {line,[{location,"bs_match_r25_SUITE.erl",1582}]}.
    {badmatch,{x,0}}.


{function, do_cover_beam_bool, 2, 841}.
  {label,840}.
    {line,[{location,"bs_match_r25_SUITE.erl",1587}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_cover_beam_bool},2}.
  {label,841}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,3}}}]}}.
    {test,is_ge,{f,844},[{tr,{x,1},{t_integer,{0,3}}},{integer,1}]}.
    {select_val,{tr,{x,1},{t_integer,{1,3}}},
                {f,843},
                {list,[{integer,1},{f,842},{integer,2},{f,842}]}}.
  {label,842}.
    return.
  {label,843}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,844}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_skip_bits2,
          {f,845},
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[1594,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_get_tail,{x,1},{x,0},2}.
    {move,{integer,1},{x,1}}.
    {call_only,2,{f,841}}. % do_cover_beam_bool/2
  {label,845}.
    {move,{integer,0},{x,1}}.
    {jump,{f,840}}.


{function, matched_out_size, 1, 847}.
  {label,846}.
    {line,[{location,"bs_match_r25_SUITE.erl",1597}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,matched_out_size},1}.
  {label,847}.
    {test,is_list,{f,846},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<"\býÞ­¾ï">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1598}]}.
    {call,1,{f,859}}. % mos_int/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_integer,{0,'+inf'}},
                       2 => {t_integer,{0,18446744073709551615}}}}}]}}.
    {test,is_eq_exact,
          {f,857},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}},
           {literal,{253,3735928559}}]}.
    {move,{literal,<<3,215,221,251,213,5:3>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1599}]}.
    {call,1,{f,859}}. % mos_int/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_integer,{0,'+inf'}},
                       2 => {t_integer,{0,18446744073709551615}}}}}]}}.
    {test,is_eq_exact,
          {f,856},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}},
           {literal,{6,3203391149}}]}.
    {move,{literal,<<16,0,53,202,254,222,173,190,239,202,254>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1600}]}.
    {call,1,{f,859}}. % mos_int/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_integer,{0,'+inf'}},
                       2 => {t_integer,{0,18446744073709551615}}}}}]}}.
    {test,is_eq_exact,
          {f,855},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}},
           {literal,{53,14627373477560044286}}]}.
    {move,{literal,<<5,190,87,246,245,109,247,126,87,30:5>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1601}]}.
    {call,1,{f,859}}. % mos_int/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_integer,{0,'+inf'}},
                       2 => {t_integer,{0,18446744073709551615}}}}}]}}.
    {test,is_eq_exact,
          {f,854},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}},
           {literal,{23,14627373477560044286}}]}.
    {move,{literal,<<3,1,2,3,4,3>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1603}]}.
    {call,1,{f,951}}. % mos_bin/1
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
          {f,853},
          [{tr,{x,0},
               {t_union,none,none,none,
                        {t_tuple,2,false,
                                 #{1 => {t_bitstring,8,false},
                                   2 => {t_integer,{0,255}}}},
                        {t_bitstring,8,false}}},
           {literal,{<<1,2,3>>,4}}]}.
    {move,{literal,<<4,1,2,3,7,19,4,42>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1604}]}.
    {call,1,{f,951}}. % mos_bin/1
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
          {f,852},
          [{tr,{x,0},
               {t_union,none,none,none,
                        {t_tuple,2,false,
                                 #{1 => {t_bitstring,8,false},
                                   2 => {t_integer,{0,255}}}},
                        {t_bitstring,8,false}}},
           {literal,{<<1,2,3,7>>,19,42}}]}.
    {move,{literal,<<4,1,2,3,7,97,98,99,100,101,102,103,104,105,106>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1605}]}.
    {call,1,{f,951}}. % mos_bin/1
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
          {f,851},
          [{tr,{x,0},
               {t_union,none,none,none,
                        {t_tuple,2,false,
                                 #{1 => {t_bitstring,8,false},
                                   2 => {t_integer,{0,255}}}},
                        {t_bitstring,8,false}}},
           {literal,<<1,2,3,7>>}]}.
    {move,{atom,not_a_binary},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1607}]}.
    {call,1,{f,968}}. % mos_verify_sig/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false]}}]}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1608}]}.
    {call,1,{f,968}}. % mos_verify_sig/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[false]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,850},
          [{tr,{x,0},
               {t_union,{t_atom,[false]},
                        none,none,none,
                        {t_bitstring,8,false}}},
           {atom,false}]}.
    {move,{literal,<<0,0,0,42>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1609}]}.
    {call,1,{f,968}}. % mos_verify_sig/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[false]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,849},
          [{tr,{x,0},
               {t_union,{t_atom,[false]},
                        none,none,none,
                        {t_bitstring,8,false}}},
           {atom,false}]}.
    {line,[{location,"bs_match_r25_SUITE.erl",1610}]}.
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
    {call,1,{f,968}}. % mos_verify_sig/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[false]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,848},
          [{tr,{x,0},
               {t_union,{t_atom,[false]},
                        none,none,none,
                        {t_bitstring,8,false}}},
           {literal,<<"123456789">>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,848}.
    {badmatch,{x,0}}.
  {label,849}.
    {line,[{location,"bs_match_r25_SUITE.erl",1609}]}.
    {badmatch,{x,0}}.
  {label,850}.
    {line,[{location,"bs_match_r25_SUITE.erl",1608}]}.
    {badmatch,{x,0}}.
  {label,851}.
    {line,[{location,"bs_match_r25_SUITE.erl",1605}]}.
    {badmatch,{x,0}}.
  {label,852}.
    {line,[{location,"bs_match_r25_SUITE.erl",1604}]}.
    {badmatch,{x,0}}.
  {label,853}.
    {line,[{location,"bs_match_r25_SUITE.erl",1603}]}.
    {badmatch,{x,0}}.
  {label,854}.
    {line,[{location,"bs_match_r25_SUITE.erl",1601}]}.
    {badmatch,{x,0}}.
  {label,855}.
    {line,[{location,"bs_match_r25_SUITE.erl",1600}]}.
    {badmatch,{x,0}}.
  {label,856}.
    {line,[{location,"bs_match_r25_SUITE.erl",1599}]}.
    {badmatch,{x,0}}.
  {label,857}.
    {line,[{location,"bs_match_r25_SUITE.erl",1598}]}.
    {badmatch,{x,0}}.


{function, mos_int, 1, 859}.
  {label,858}.
    {line,[{location,"bs_match_r25_SUITE.erl",1614}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,mos_int},1}.
  {label,859}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {allocate,4,1}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{x,0},{y,3}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1615}]}.
    {call,1,{f,878}}. % mos_int_plain/1
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
    {line,[{location,"bs_match_r25_SUITE.erl",1616}]}.
    {call,1,{f,881}}. % mos_int_list/1
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
    {test_heap,6,0}.
    {put_list,{y,3},nil,{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,a},{x,0},{atom,z}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1617}]}.
    {call,1,{f,884}}. % mos_int_tuple/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_integer,{0,'+inf'}},
                       2 => {t_integer,{0,18446744073709551615}}}}}]}}.
    {test,is_eq_exact,
          {f,875},
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
    {line,[{location,"bs_match_r25_SUITE.erl",1619}]}.
    {call,1,{f,887}}. % mos_int_mixed/1
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
          {f,874},
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
    {line,[{location,"bs_match_r25_SUITE.erl",1620}]}.
    {call,1,{f,887}}. % mos_int_mixed/1
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
          {f,873},
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
    {line,[{location,"bs_match_r25_SUITE.erl",1621}]}.
    {call,1,{f,887}}. % mos_int_mixed/1
    {'%',{var_info,{x,0},[{type,{t_integer,{42,42}}}]}}.
    {test_heap,6,0}.
    {put_list,{y,3},nil,{x,0}}.
    {put_list,{y,3},{x,0},{x,0}}.
    {put_list,{y,3},{x,0},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1622}]}.
    {call,1,{f,887}}. % mos_int_mixed/1
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
          {f,872},
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
    {line,[{location,"bs_match_r25_SUITE.erl",1624}]}.
    {call,2,{f,894}}. % mos_int_pats1/2
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
           {tr,{y,2},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}}]}.
    {test_heap,5,0}.
    {put_list,{y,3},nil,{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,tag},{x,0}]}}.
    {move,{literal,[z]},{x,2}}.
    {move,{literal,{a,a,a,a,a,a,a,a,a,a}},{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1625}]}.
    {call,3,{f,897}}. % mos_int_pats2/3
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
    {line,[{location,"bs_match_r25_SUITE.erl",1627}]}.
    {call,2,{f,900}}. % mos_int_pats3/2
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
           {tr,{y,2},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}}]}.
    {test_heap,2,0}.
    {put_list,{y,3},nil,{x,0}}.
    {put_map_assoc,{f,0},{literal,#{}},{x,0},1,{list,[{atom,key},{x,0}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1628}]}.
    {call,1,{f,903}}. % mos_int_map/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_integer,{0,'+inf'}},
                       2 => {t_integer,{0,18446744073709551615}}}}}]}}.
    {test,is_eq_exact,
          {f,868},
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
    {line,[{location,"bs_match_r25_SUITE.erl",1630}]}.
    {call,2,{f,906}}. % mos_int_map/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_integer,{0,'+inf'}},
                       2 => {t_integer,{0,18446744073709551615}}}}}]}}.
    {test,is_eq_exact,
          {f,867},
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
    {line,[{location,"bs_match_r25_SUITE.erl",1631}]}.
    {call,1,{f,910}}. % mos_int_alias/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,{0,'+inf'}},
                                     2 => {t_integer,{0,18446744073709551615}},
                                     3 => {t_bitstring,1,false}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,
          {f,866},
          [{tr,{x,1},{t_integer,{0,'+inf'}}},
           {tr,{y,1},{t_integer,{0,'+inf'}}}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,
          {f,866},
          [{tr,{x,1},{t_integer,{0,18446744073709551615}}},
           {tr,{y,0},{t_integer,{0,18446744073709551615}}}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,
          {f,866},
          [{tr,{x,1},{t_bitstring,1,false}},{tr,{y,3},{t_bitstring,1,false}}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{y,1},{y,0}]}}.
    {test,is_eq_exact,
          {f,865},
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
    {line,[{location,"bs_match_r25_SUITE.erl",1633}]}.
    {call,1,{f,913}}. % mos_int_try/1
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
           {tr,{y,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1634}]}.
    {call,1,{f,920}}. % mos_int_receive/1
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
           {tr,{y,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}}]}.
    {test_heap,2,0}.
    {put_list,{y,1},nil,{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1635}]}.
    {call,1,{f,939}}. % mos_int_fun/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_integer,{0,'+inf'}},
                       2 => {t_integer,{0,18446744073709551615}}}}}]}}.
    {test,is_eq_exact,
          {f,862},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}},
           {tr,{y,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1636}]}.
    {call,1,{f,943}}. % mos_int_exported/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_integer,{0,'+inf'}},
                       2 => {t_integer,{0,18446744073709551615}}}}}]}}.
    {test,is_eq_exact,
          {f,861},
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
    {line,[{location,"bs_match_r25_SUITE.erl",1637}]}.
    {call,1,{f,947}}. % mos_int_utf/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_integer,{0,'+inf'}},
                       2 => {t_integer,{0,18446744073709551615}}}}}]}}.
    {test,is_eq_exact,
          {f,860},
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
  {label,860}.
    {badmatch,{x,0}}.
  {label,861}.
    {line,[{location,"bs_match_r25_SUITE.erl",1636}]}.
    {badmatch,{x,0}}.
  {label,862}.
    {line,[{location,"bs_match_r25_SUITE.erl",1635}]}.
    {badmatch,{x,0}}.
  {label,863}.
    {line,[{location,"bs_match_r25_SUITE.erl",1634}]}.
    {badmatch,{x,0}}.
  {label,864}.
    {line,[{location,"bs_match_r25_SUITE.erl",1633}]}.
    {badmatch,{x,0}}.
  {label,865}.
    {line,[{location,"bs_match_r25_SUITE.erl",1632}]}.
    {badmatch,{x,0}}.
  {label,866}.
    {line,[{location,"bs_match_r25_SUITE.erl",1631}]}.
    {badmatch,{x,0}}.
  {label,867}.
    {line,[{location,"bs_match_r25_SUITE.erl",1630}]}.
    {badmatch,{x,0}}.
  {label,868}.
    {line,[{location,"bs_match_r25_SUITE.erl",1628}]}.
    {badmatch,{x,0}}.
  {label,869}.
    {line,[{location,"bs_match_r25_SUITE.erl",1627}]}.
    {badmatch,{x,0}}.
  {label,870}.
    {line,[{location,"bs_match_r25_SUITE.erl",1625}]}.
    {badmatch,{x,0}}.
  {label,871}.
    {line,[{location,"bs_match_r25_SUITE.erl",1624}]}.
    {badmatch,{x,0}}.
  {label,872}.
    {line,[{location,"bs_match_r25_SUITE.erl",1622}]}.
    {badmatch,{x,0}}.
  {label,873}.
    {line,[{location,"bs_match_r25_SUITE.erl",1620}]}.
    {badmatch,{x,0}}.
  {label,874}.
    {line,[{location,"bs_match_r25_SUITE.erl",1619}]}.
    {badmatch,{x,0}}.
  {label,875}.
    {line,[{location,"bs_match_r25_SUITE.erl",1617}]}.
    {badmatch,{x,0}}.
  {label,876}.
    {line,[{location,"bs_match_r25_SUITE.erl",1616}]}.
    {badmatch,{x,0}}.


{function, mos_int_plain, 1, 878}.
  {label,877}.
    {line,[{location,"bs_match_r25_SUITE.erl",1640}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,mos_int_plain},1}.
  {label,878}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,879},
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
          {f,879},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1640,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,879},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[1640,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,879},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,879}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,877},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1642,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{x,1},3}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,877},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1642,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,877},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[1642,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,877},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.


{function, mos_int_list, 1, 881}.
  {label,880}.
    {line,[{location,"bs_match_r25_SUITE.erl",1645}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,mos_int_list},1}.
  {label,881}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_bitstring,1,false},nil}}]}}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_nil,{f,880},[{tr,{x,2},{t_list,{t_bitstring,1,false},nil}}]}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,2}}.
    {test,bs_get_integer2,
          {f,882},
          3,
          [{tr,{x,2},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1645,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_tail,{x,2},{x,2},4}.
    {bs_start_match4,{atom,no_fail},4,{x,2},{x,2}}.
    {test,bs_get_integer2,
          {f,882},
          4,
          [{tr,{x,2},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1645,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,882},
          4,
          [{tr,{x,2},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[1645,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,882},[{x,2},0]}.
    {test_heap,3,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4}]}}.
    return.
  {label,882}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,880},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1647,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{x,1},3}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,880},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1647,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,880},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[1647,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,880},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.


{function, mos_int_tuple, 1, 884}.
  {label,883}.
    {line,[{location,"bs_match_r25_SUITE.erl",1650}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,mos_int_tuple},1}.
  {label,884}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_atom,[a]},
                                     2 => {t_cons,{t_bitstring,1,false},nil},
                                     3 => {t_atom,[z]}}}}]}}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_nil,{f,883},[{tr,{x,1},{t_list,{t_bitstring,1,false},nil}}]}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,1}}.
    {test,bs_get_integer2,
          {f,885},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1650,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_tail,{x,1},{x,1},4}.
    {bs_start_match4,{atom,no_fail},4,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,885},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1650,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,885},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[1650,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,885},[{x,1},0]}.
    {test_heap,3,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4}]}}.
    return.
  {label,885}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,1}}.
    {test,bs_get_integer2,
          {f,883},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1652,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{x,1},3}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,883},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1652,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,883},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[1652,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,883},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.


{function, mos_int_mixed, 1, 887}.
  {label,886}.
    {line,[{location,"bs_match_r25_SUITE.erl",1655}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,mos_int_mixed},1}.
  {label,887}.
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
    {test,is_tuple,{f,889},[{x,0}]}.
    {test,test_arity,{f,889},[{x,0},3]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_nil,{f,889},[{tr,{x,1},{t_list,{t_bitstring,1,false},nil}}]}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,1}}.
    {test,bs_get_integer2,
          {f,888},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1655,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_tail,{x,1},{x,1},4}.
    {bs_start_match4,{atom,no_fail},4,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,888},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1655,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,888},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[1655,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,888},[{x,1},0]}.
    {test_heap,3,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4}]}}.
    return.
  {label,888}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,1}}.
    {test,bs_get_integer2,
          {f,889},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1657,{file,"bs_match_r25_SUITE.erl"}]},
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
           {field_flags,[{anno,[1657,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,889},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[1657,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,889},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,889}.
    {test,is_nonempty_list,{f,891},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_nil,{f,891},[{tr,{x,2},{t_list,{t_bitstring,1,false},nil}}]}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,2}}.
    {test,bs_get_integer2,
          {f,890},
          3,
          [{tr,{x,2},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1659,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_tail,{x,2},{x,2},4}.
    {bs_start_match4,{atom,no_fail},4,{x,2},{x,2}}.
    {test,bs_get_integer2,
          {f,890},
          4,
          [{tr,{x,2},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1659,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,890},
          4,
          [{tr,{x,2},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[1659,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,890},[{x,2},0]}.
    {test_heap,3,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4}]}}.
    return.
  {label,890}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,891},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1661,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{x,1},3}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,891},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1661,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,891},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[1661,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,891},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,891}.
    {test,is_tuple,
          {f,892},
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
    {test,test_arity,{f,892},[{x,0},2]}.
    {move,{integer,42},{x,0}}.
    return.
  {label,892}.
    {move,{atom,no_match},{x,0}}.
    return.


{function, mos_int_pats1, 2, 894}.
  {label,893}.
    {line,[{location,"bs_match_r25_SUITE.erl",1668}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,mos_int_pats1},2}.
  {label,894}.
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
    {test,is_nil,{f,893},[{tr,{x,2},{t_list,{t_bitstring,1,false},nil}}]}.
    {bs_start_match4,{atom,no_fail},4,{x,3},{x,2}}.
    {test,bs_get_integer2,
          {f,895},
          4,
          [{tr,{x,2},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1668,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {bs_get_tail,{x,2},{x,2},5}.
    {bs_start_match4,{atom,no_fail},5,{x,2},{x,2}}.
    {test,bs_get_integer2,
          {f,895},
          5,
          [{tr,{x,2},{t_bs_context,1}},
           {tr,{x,4},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1668,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_integer2,
          {f,895},
          5,
          [{tr,{x,2},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[1668,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_test_tail2,{f,895},[{x,2},0]}.
    {test_heap,3,6}.
    {put_tuple2,{x,0},{list,[{x,4},{x,5}]}}.
    return.
  {label,895}.
    {bs_start_match4,{atom,no_fail},4,{x,3},{x,2}}.
    {test,bs_get_integer2,
          {f,893},
          3,
          [{tr,{x,2},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1670,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_tail,{x,2},{x,2},4}.
    {bs_start_match4,{atom,no_fail},4,{x,2},{x,2}}.
    {test,bs_get_integer2,
          {f,893},
          4,
          [{tr,{x,2},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1670,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,893},
          4,
          [{tr,{x,2},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[1670,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,893},[{x,2},0]}.
    {test_heap,3,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4}]}}.
    return.


{function, mos_int_pats2, 3, 897}.
  {label,896}.
    {line,[{location,"bs_match_r25_SUITE.erl",1673}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,mos_int_pats2},3}.
  {label,897}.
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
    {test,is_nil,{f,896},[{tr,{x,3},{t_list,{t_bitstring,1,false},nil}}]}.
    {bs_start_match4,{atom,no_fail},5,{x,4},{x,3}}.
    {test,bs_get_integer2,
          {f,898},
          5,
          [{tr,{x,3},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1673,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {bs_get_tail,{x,3},{x,3},6}.
    {bs_start_match4,{atom,no_fail},6,{x,3},{x,3}}.
    {test,bs_get_integer2,
          {f,898},
          6,
          [{tr,{x,3},{t_bs_context,1}},
           {tr,{x,5},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1673,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_get_integer2,
          {f,898},
          6,
          [{tr,{x,3},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[1673,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,bs_test_tail2,{f,898},[{x,3},0]}.
    {test_heap,3,7}.
    {put_tuple2,{x,0},{list,[{x,5},{x,6}]}}.
    return.
  {label,898}.
    {bs_start_match4,{atom,no_fail},5,{x,4},{x,3}}.
    {test,bs_get_integer2,
          {f,896},
          4,
          [{tr,{x,3},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1675,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {bs_get_tail,{x,3},{x,3},5}.
    {bs_start_match4,{atom,no_fail},5,{x,3},{x,3}}.
    {test,bs_get_integer2,
          {f,896},
          5,
          [{tr,{x,3},{t_bs_context,1}},
           {tr,{x,4},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1675,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_integer2,
          {f,896},
          5,
          [{tr,{x,3},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[1675,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_test_tail2,{f,896},[{x,3},0]}.
    {test_heap,3,6}.
    {put_tuple2,{x,0},{list,[{x,4},{x,5}]}}.
    return.


{function, mos_int_pats3, 2, 900}.
  {label,899}.
    {line,[{location,"bs_match_r25_SUITE.erl",1678}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,mos_int_pats3},2}.
  {label,900}.
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
    {test,is_nil,{f,899},[{tr,{x,4},{t_list,{t_bitstring,1,false},nil}}]}.
    {bs_start_match4,{atom,no_fail},6,{x,5},{x,4}}.
    {test,bs_get_integer2,
          {f,901},
          6,
          [{tr,{x,4},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1678,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {bs_get_tail,{x,4},{x,4},7}.
    {bs_start_match4,{atom,no_fail},7,{x,4},{x,4}}.
    {test,bs_get_integer2,
          {f,901},
          7,
          [{tr,{x,4},{t_bs_context,1}},
           {tr,{x,6},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1678,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,7}}.
    {test,bs_get_integer2,
          {f,901},
          8,
          [{tr,{x,4},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[1678,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,8}}.
    {test,bs_test_tail2,{f,901},[{x,4},0]}.
    {test,is_nonempty_list,{f,899},[{x,3}]}.
    {get_list,{x,3},{x,4},{x,9}}.
    {test,is_nonempty_list,{f,901},[{x,9}]}.
    {get_list,{x,9},{x,10},{x,9}}.
    {test,is_nil,
        {f,901},
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
          {f,901},
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
          {f,901},
          11,
          [{tr,{x,9},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1678,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,11}}.
    {bs_get_tail,{x,9},{x,9},12}.
    {bs_start_match4,{atom,no_fail},12,{x,9},{x,9}}.
    {test,bs_get_integer2,
          {f,901},
          12,
          [{tr,{x,9},{t_bs_context,1}},
           {tr,{x,11},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1678,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,12}}.
    {test,bs_get_integer2,
          {f,901},
          13,
          [{tr,{x,9},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[1678,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,13}}.
    {test,bs_test_tail2,{f,901},[{x,9},0]}.
    {test,is_eq_exact,
          {f,901},
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
          {f,901},
          [{tr,{x,9},{t_integer,{0,18446744073709551615}}},
           {tr,{x,8},{t_integer,{0,4294967295}}}]}.
    {test,is_eq_exact,
          {f,901},
          [{tr,{x,11},{t_integer,{0,255}}},{tr,{x,6},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,901},
          [{tr,{x,12},{t_integer,{0,'+inf'}}},
           {tr,{x,7},{t_integer,{0,'+inf'}}}]}.
    {test,is_eq_exact,
          {f,901},
          [{tr,{x,13},{t_integer,{0,4294967295}}},
           {tr,{x,8},{t_integer,{0,4294967295}}}]}.
    {get_tuple_element,{x,4},2,{x,4}}.
    {test,is_eq_exact,
          {f,901},
          [{tr,{x,4},{t_integer,{0,18446744073709551615}}},
           {tr,{x,8},{t_integer,{0,4294967295}}}]}.
    {test,is_eq_exact,
          {f,901},
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
  {label,901}.
    {bs_start_match4,{atom,no_fail},6,{x,5},{x,4}}.
    {test,bs_get_integer2,
          {f,899},
          5,
          [{tr,{x,4},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1680,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {bs_get_tail,{x,4},{x,4},6}.
    {bs_start_match4,{atom,no_fail},6,{x,4},{x,4}}.
    {test,bs_get_integer2,
          {f,899},
          6,
          [{tr,{x,4},{t_bs_context,1}},
           {tr,{x,5},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1680,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,bs_get_integer2,
          {f,899},
          7,
          [{tr,{x,4},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[1680,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,7}}.
    {test,bs_test_tail2,{f,899},[{x,4},0]}.
    {test,is_nonempty_list,{f,899},[{x,3}]}.
    {get_list,{x,3},{x,4},{x,3}}.
    {test,is_nonempty_list,{f,899},[{x,3}]}.
    {get_list,{x,3},{x,8},{x,3}}.
    {test,is_nil,
        {f,899},
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
          {f,899},
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
          {f,899},
          9,
          [{tr,{x,3},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1680,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,9}}.
    {bs_get_tail,{x,3},{x,3},10}.
    {bs_start_match4,{atom,no_fail},10,{x,3},{x,3}}.
    {test,bs_get_integer2,
          {f,899},
          10,
          [{tr,{x,3},{t_bs_context,1}},
           {tr,{x,9},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1680,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,10}}.
    {test,bs_get_integer2,
          {f,899},
          11,
          [{tr,{x,3},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[1680,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,11}}.
    {test,bs_test_tail2,{f,899},[{x,3},0]}.
    {test,is_eq_exact,
          {f,899},
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
          {f,899},
          [{tr,{x,2},{t_integer,{0,18446744073709551615}}},
           {tr,{x,7},{t_integer,{0,18446744073709551615}}}]}.
    {test,is_eq_exact,
          {f,899},
          [{tr,{x,9},{t_integer,{0,255}}},{tr,{x,5},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,899},
          [{tr,{x,10},{t_integer,{0,'+inf'}}},
           {tr,{x,6},{t_integer,{0,'+inf'}}}]}.
    {test,is_eq_exact,
          {f,899},
          [{tr,{x,11},{t_integer,{0,18446744073709551615}}},
           {tr,{x,7},{t_integer,{0,18446744073709551615}}}]}.
    {get_tuple_element,{x,4},2,{x,2}}.
    {test,is_eq_exact,
          {f,899},
          [{tr,{x,2},{t_integer,{0,18446744073709551615}}},
           {tr,{x,7},{t_integer,{0,18446744073709551615}}}]}.
    {test,is_eq_exact,
          {f,899},
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


{function, mos_int_map, 1, 903}.
  {label,902}.
    {line,[{location,"bs_match_r25_SUITE.erl",1683}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,mos_int_map},1}.
  {label,903}.
    {'%',{var_info,{x,0},
                   [{type,{t_map,{t_atom,[key]},
                                 {t_cons,{t_bitstring,1,false},nil}}}]}}.
    {get_map_elements,{f,904},
                      {tr,{x,0},
                          {t_map,{t_atom,[key]},
                                 {t_cons,{t_bitstring,1,false},nil}}},
                      {list,[{atom,key},{x,1}]}}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_nil,{f,904},[{tr,{x,1},{t_list,{t_bitstring,1,false},nil}}]}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,1}}.
    {test,bs_get_integer2,
          {f,904},
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
          {f,904},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1683,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,904},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[1683,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,904},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,904}.
    {get_map_elements,{f,902},
                      {tr,{x,0},
                          {t_map,{t_atom,[key]},
                                 {t_cons,{t_bitstring,1,false},nil}}},
                      {list,[{atom,key},{x,1}]}}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_nil,{f,902},[{tr,{x,1},{t_list,{t_bitstring,1,false},nil}}]}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,1}}.
    {test,bs_get_integer2,
          {f,902},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1685,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{x,1},3}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,902},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1685,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,902},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[1685,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,902},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.


{function, mos_int_map, 2, 906}.
  {label,905}.
    {line,[{location,"bs_match_r25_SUITE.erl",1688}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,mos_int_map},2}.
  {label,906}.
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
        {f,907},
        {tr,{x,1},
            {t_map,
                {t_tuple,2,true,#{1 => {t_atom,[my]},2 => {t_atom,[key]}}},
                {t_cons,{t_bitstring,1,false},nil}}},
        {list,[{literal,{my,key}},{x,0}]}}.
    {get_list,{x,0},{x,2},{x,0}}.
    {test,is_nil,{f,907},[{tr,{x,0},{t_list,{t_bitstring,1,false},nil}}]}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,0}}.
    {test,bs_get_integer2,
          {f,907},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1690,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,0},{x,0},3}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,907},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1690,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,907},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[1690,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,907},[{x,0},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,907}.
    {get_map_elements,
        {f,908},
        {tr,{x,1},
            {t_map,
                {t_tuple,2,true,#{1 => {t_atom,[my]},2 => {t_atom,[key]}}},
                {t_cons,{t_bitstring,1,false},nil}}},
        {list,[{literal,{my,key}},{x,0}]}}.
    {get_list,{x,0},{x,2},{x,0}}.
    {test,is_nil,{f,908},[{tr,{x,0},{t_list,{t_bitstring,1,false},nil}}]}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,0}}.
    {test,bs_get_integer2,
          {f,908},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1691,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,0},{x,0},3}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,908},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1691,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,908},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[1691,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,908},[{x,0},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,908}.
    {line,[{location,"bs_match_r25_SUITE.erl",1689}]}.
    {case_end,{x,1}}.


{function, mos_int_alias, 1, 910}.
  {label,909}.
    {line,[{location,"bs_match_r25_SUITE.erl",1694}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,mos_int_alias},1}.
  {label,910}.
    {'%',{var_info,{x,0},
                   [{type,{t_cons,{t_cons,{t_bitstring,1,false},nil},nil}}]}}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_nil,
          {f,909},
          [{tr,{x,2},{t_list,{t_cons,{t_bitstring,1,false},nil},nil}}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_nil,{f,909},[{tr,{x,1},{t_list,{t_bitstring,1,false},nil}}]}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,1}}.
    {test,bs_get_integer2,
          {f,911},
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
          {f,911},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1694,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,911},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[1694,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,911},[{x,1},0]}.
    {test_heap,4,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4},{x,2}]}}.
    return.
  {label,911}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,1}}.
    {test,bs_get_integer2,
          {f,909},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1696,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_tail,{x,1},{x,1},4}.
    {bs_start_match4,{atom,no_fail},4,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,909},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1696,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,909},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[1696,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,909},[{x,1},0]}.
    {test_heap,4,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4},{x,2}]}}.
    return.


{function, mos_int_try, 1, 913}.
  {label,912}.
    {line,[{location,"bs_match_r25_SUITE.erl",1699}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,mos_int_try},1}.
  {label,913}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_bitstring,1,false},nil}}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {'try',{y,1},{f,917}}.
    {'try',{y,0},{f,916}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1700}]}.
    {call,1,{f,1686}}. % id/1
    {try_end,{y,0}}.
    {test,is_nonempty_list,{f,918},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_nil,{f,918},[{x,2}]}.
    {test,bs_start_match3,{f,914},2,[{x,1}],{x,2}}.
    {test,bs_get_integer2,
          {f,914},
          3,
          [{tr,{x,2},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1701,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_tail,{x,2},{x,2},4}.
    {bs_start_match4,{atom,no_fail},4,{x,2},{x,2}}.
    {test,bs_get_integer2,
          {f,914},
          4,
          [{tr,{x,2},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1701,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,914},
          4,
          [{tr,{x,2},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[1701,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,914},[{x,2},0]}.
    {test_heap,3,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4}]}}.
    {jump,{f,915}}.
  {label,914}.
    {test,bs_start_match3,{f,918},2,[{x,1}],{x,1}}.
    {test,bs_get_integer2,
          {f,918},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1702,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{x,1},3}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,918},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1702,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,918},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[1702,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,918},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
  {label,915}.
    {try_end,{y,1}}.
    {deallocate,2}.
    return.
  {label,916}.
    {try_case,{y,0}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.
  {label,917}.
    {try_case,{y,1}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.
  {label,918}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",1700}]}.
    {try_case_end,{x,0}}.


{function, mos_int_receive, 1, 920}.
  {label,919}.
    {line,[{location,"bs_match_r25_SUITE.erl",1707}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,mos_int_receive},1}.
  {label,920}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {allocate,5,1}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3}]}}.
    {move,{x,0},{y,4}}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{y,4},{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1709}]}.
    send.
  {label,921}.
    {loop_rec,{f,935},{x,0}}.
    {test,bs_start_match3,{f,922},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,922},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1711,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{x,1},3}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,922},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1711,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,922},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[1711,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,922},[{x,1},0]}.
    {test_heap,3,4}.
    {move,{x,3},{x,1}}.
    {move,{x,2},{x,0}}.
    remove_message.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {move,{x,0},{y,3}}.
    {jump,{f,923}}.
  {label,922}.
    {test,bs_start_match3,{f,934},1,[{x,0}],{x,0}}.
    {test,bs_get_integer2,
          {f,934},
          1,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1712,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,934},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,1},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1712,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_get_integer2,
          {f,934},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[1712,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,934},[{x,0},0]}.
    {test_heap,3,3}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    remove_message.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {move,{x,0},{y,3}}.
  {label,923}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{y,4},{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1715}]}.
    send.
  {label,924}.
    {loop_rec,{f,933},{x,0}}.
    {test,bs_start_match3,{f,925},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,925},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1717,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{x,1},3}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,925},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1717,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,925},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[1717,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,925},[{x,1},0]}.
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
    {jump,{f,926}}.
  {label,925}.
    {test,bs_start_match3,{f,932},1,[{x,0}],{x,0}}.
    {test,bs_get_integer2,
          {f,932},
          1,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1718,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,932},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,1},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1718,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,932},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[1718,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,932},[{x,0},0]}.
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
  {label,926}.
    {test,is_eq_exact,
          {f,937},
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
    {line,[{location,"bs_match_r25_SUITE.erl",1720}]}.
    send.
  {label,927}.
    {loop_rec,{f,931},{x,0}}.
    {test,is_tagged_tuple,{f,930},[{x,0},2,{atom,tag}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_nonempty_list,{f,930},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_nil,{f,930},[{x,0}]}.
    {test,bs_start_match3,{f,928},2,[{x,1}],{x,0}}.
    {test,bs_get_integer2,
          {f,928},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1722,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,0},{x,0},3}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,928},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1722,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,928},
          4,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[1722,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,928},[{x,0},0]}.
    {test,is_eq_exact,
          {f,928},
          [{tr,{x,2},{t_integer,{0,255}}},{tr,{y,1},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,928},
          [{tr,{x,3},{t_integer,{0,'+inf'}}},
           {tr,{y,0},{t_integer,{0,'+inf'}}}]}.
    {test,is_ne_exact,
          {f,929},
          [{tr,{x,4},{t_integer,{0,4294967295}}},
           {tr,{y,2},{t_integer,{0,18446744073709551615}}}]}.
  {label,928}.
    {test,bs_start_match3,{f,930},2,[{x,1}],{x,0}}.
    {test,bs_get_integer2,
          {f,930},
          1,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1723,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,930},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,1},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1723,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,930},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[1723,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,930},[{x,0},0]}.
    {test,is_eq_exact,
          {f,930},
          [{tr,{x,1},{t_integer,{0,255}}},{tr,{y,1},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,930},
          [{tr,{x,2},{t_integer,{0,'+inf'}}},
           {tr,{y,0},{t_integer,{0,'+inf'}}}]}.
    {test,is_eq_exact,
          {f,930},
          [{tr,{x,3},{t_integer,{0,18446744073709551615}}},
           {tr,{y,2},{t_integer,{0,18446744073709551615}}}]}.
  {label,929}.
    {test_heap,3,0}.
    remove_message.
    {put_tuple2,{x,0},{list,[{y,0},{y,2}]}}.
    {test,is_eq_exact,
          {f,936},
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
  {label,930}.
    {loop_rec_end,{f,927}}.
  {label,931}.
    {wait,{f,927}}.
  {label,932}.
    {loop_rec_end,{f,924}}.
  {label,933}.
    {wait,{f,924}}.
  {label,934}.
    {loop_rec_end,{f,921}}.
  {label,935}.
    {wait,{f,921}}.
  {label,936}.
    {line,[{location,"bs_match_r25_SUITE.erl",1721}]}.
    {badmatch,{x,0}}.
  {label,937}.
    {line,[{location,"bs_match_r25_SUITE.erl",1716}]}.
    {badmatch,{x,0}}.


{function, mos_int_fun, 1, 939}.
  {label,938}.
    {line,[{location,"bs_match_r25_SUITE.erl",1727}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,mos_int_fun},1}.
  {label,939}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_bitstring,1,false},nil}}]}}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_nil,{f,941},[{tr,{x,2},{t_list,{t_bitstring,1,false},nil}}]}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,2}}.
    {test,bs_get_integer2,
          {f,940},
          3,
          [{tr,{x,2},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1729,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_tail,{x,2},{x,2},4}.
    {bs_start_match4,{atom,no_fail},4,{x,2},{x,2}}.
    {test,bs_get_integer2,
          {f,940},
          4,
          [{tr,{x,2},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1729,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,940},
          4,
          [{tr,{x,2},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[1729,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,940},[{x,2},0]}.
    {test_heap,3,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4}]}}.
    return.
  {label,940}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,941},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1730,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{x,1},3}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,941},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1730,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,941},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[1730,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,941},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,941}.
    {call_only,1,{f,1934}}. % '-mos_int_fun/1-inlined-0-'/1


{function, mos_int_exported, 1, 943}.
  {label,942}.
    {line,[{location,"bs_match_r25_SUITE.erl",1734}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,mos_int_exported},1}.
  {label,943}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,944},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1736,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{x,1},3}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,944},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1736,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,944},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[1736,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,944},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,944}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,945},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1737,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{x,1},3}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,945},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1737,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,945},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[1737,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,945},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,945}.
    {line,[{location,"bs_match_r25_SUITE.erl",1735}]}.
    {case_end,{x,0}}.


{function, mos_int_utf, 1, 947}.
  {label,946}.
    {line,[{location,"bs_match_r25_SUITE.erl",1741}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,mos_int_utf},1}.
  {label,947}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1742}]}.
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
    {call,1,{f,1686}}. % id/1
    {test,bs_start_match3,{f,948},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,948},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1744,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{x,1},3}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,948},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1744,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,948},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[1744,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_match_string,{f,948},[{x,1},16,{string,<<204,137>>}]}.
    {test,bs_get_utf16,
          {f,948},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {field_flags,[{anno,[1744,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,is_eq_exact,
          {f,948},
          [{tr,{x,4},{t_integer,{0,1114111}}},{integer,7777}]}.
    {test,bs_get_utf32,
          {f,948},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {field_flags,[{anno,[1744,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,is_eq_exact,
          {f,948},
          [{tr,{x,4},{t_integer,{0,1114111}}},{integer,9999}]}.
    {test,bs_test_tail2,{f,948},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    {deallocate,0}.
    return.
  {label,948}.
    {test,bs_start_match3,{f,949},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,949},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1745,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{x,1},3}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,949},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1745,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,949},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[1745,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_match_string,{f,949},[{x,1},16,{string,<<204,137>>}]}.
    {test,bs_get_utf16,
          {f,949},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {field_flags,[{anno,[1745,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,is_eq_exact,
          {f,949},
          [{tr,{x,4},{t_integer,{0,1114111}}},{integer,7777}]}.
    {test,bs_get_utf32,
          {f,949},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {field_flags,[{anno,[1745,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,is_eq_exact,
          {f,949},
          [{tr,{x,4},{t_integer,{0,1114111}}},{integer,9999}]}.
    {test,bs_test_tail2,{f,949},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    {deallocate,0}.
    return.
  {label,949}.
    {line,[{location,"bs_match_r25_SUITE.erl",1743}]}.
    {case_end,{x,0}}.


{function, mos_bin, 1, 951}.
  {label,950}.
    {line,[{location,"bs_match_r25_SUITE.erl",1748}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,mos_bin},1}.
  {label,951}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1749}]}.
    {call,1,{f,954}}. % mos_bin_plain/1
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
    {line,[{location,"bs_match_r25_SUITE.erl",1750}]}.
    {call,1,{f,961}}. % mos_bin_tuple/1
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
          {f,952},
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
  {label,952}.
    {badmatch,{x,0}}.


{function, mos_bin_plain, 1, 954}.
  {label,953}.
    {line,[{location,"bs_match_r25_SUITE.erl",1753}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,mos_bin_plain},1}.
  {label,954}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,955},
          2,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1753,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{x,1},3}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {test,bs_get_binary2,
          {f,955},
          3,
          [{tr,{x,1},{t_bs_context,8}},
           {tr,{x,2},{t_integer,{0,255}}},
           8,
           {field_flags,[{anno,[1753,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,955},
          4,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1753,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_integer2,
          {f,955},
          5,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1753,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_test_tail2,{f,955},[{x,1},0]}.
    {test,is_eq_exact,
          {f,955},
          [{tr,{x,5},{t_integer,{0,255}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {line,[{location,"bs_match_r25_SUITE.erl",1754}]}.
    {gc_bif,byte_size,{f,0},5,[{tr,{x,3},{t_bitstring,8,false}}],{x,0}}.
    {test,is_eq_exact,
          {f,957},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},
           {tr,{x,2},{t_integer,{0,255}}}]}.
    {test_heap,3,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4}]}}.
    return.
  {label,955}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,956},
          2,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1756,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{x,1},3}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {test,bs_get_binary2,
          {f,956},
          3,
          [{tr,{x,1},{t_bs_context,8}},
           {tr,{x,2},{t_integer,{0,255}}},
           8,
           {field_flags,[{anno,[1756,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,956},
          4,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1756,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_integer2,
          {f,956},
          5,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1756,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_get_integer2,
          {f,956},
          6,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1756,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,bs_test_tail2,{f,956},[{x,1},0]}.
    {test,is_eq_exact,
          {f,956},
          [{tr,{x,5},{t_integer,{0,255}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {line,[{location,"bs_match_r25_SUITE.erl",1757}]}.
    {gc_bif,byte_size,{f,0},7,[{tr,{x,3},{t_bitstring,8,false}}],{x,0}}.
    {test,is_eq_exact,
          {f,958},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},
           {tr,{x,2},{t_integer,{0,255}}}]}.
    {test_heap,4,7}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4},{x,6}]}}.
    return.
  {label,956}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,953},
          2,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1759,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{x,1},3}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {test,bs_get_binary2,
          {f,953},
          3,
          [{tr,{x,1},{t_bs_context,8}},
           {tr,{x,2},{t_integer,{0,255}}},
           8,
           {field_flags,[{anno,[1759,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_match_string,{f,953},[{x,1},80,{string,<<"abcdefghij">>}]}.
    {test,bs_test_tail2,{f,953},[{x,1},0]}.
    {line,[{location,"bs_match_r25_SUITE.erl",1760}]}.
    {gc_bif,byte_size,{f,0},4,[{tr,{x,3},{t_bitstring,8,false}}],{x,0}}.
    {test,is_eq_exact,
          {f,959},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},
           {tr,{x,2},{t_integer,{0,255}}}]}.
    {move,{x,3},{x,0}}.
    return.
  {label,957}.
    {line,[{location,"bs_match_r25_SUITE.erl",1754}]}.
    {badmatch,{x,0}}.
  {label,958}.
    {line,[{location,"bs_match_r25_SUITE.erl",1757}]}.
    {badmatch,{x,0}}.
  {label,959}.
    {line,[{location,"bs_match_r25_SUITE.erl",1760}]}.
    {badmatch,{x,0}}.


{function, mos_bin_tuple, 1, 961}.
  {label,960}.
    {line,[{location,"bs_match_r25_SUITE.erl",1763}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,mos_bin_tuple},1}.
  {label,961}.
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
          {f,962},
          3,
          [{tr,{x,2},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1763,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_tail,{x,2},{x,2},4}.
    {bs_start_match4,{atom,no_fail},4,{x,2},{x,2}}.
    {test,bs_get_binary2,
          {f,962},
          4,
          [{tr,{x,2},{t_bs_context,8}},
           {tr,{x,3},{t_integer,{0,255}}},
           8,
           {field_flags,[{anno,[1763,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_integer2,
          {f,962},
          5,
          [{tr,{x,2},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1763,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_get_integer2,
          {f,962},
          6,
          [{tr,{x,2},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1763,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,bs_test_tail2,{f,962},[{x,2},0]}.
    {test,is_eq_exact,
          {f,962},
          [{tr,{x,6},{t_integer,{0,255}}},{tr,{x,3},{t_integer,{0,255}}}]}.
    {line,[{location,"bs_match_r25_SUITE.erl",1764}]}.
    {gc_bif,byte_size,{f,0},6,[{tr,{x,4},{t_bitstring,8,false}}],{x,0}}.
    {test,is_eq_exact,
          {f,964},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},
           {tr,{x,3},{t_integer,{0,255}}}]}.
    {test_heap,3,6}.
    {put_tuple2,{x,0},{list,[{x,4},{x,5}]}}.
    return.
  {label,962}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,2}}.
    {test,bs_get_integer2,
          {f,963},
          3,
          [{tr,{x,2},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1766,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_tail,{x,2},{x,2},4}.
    {bs_start_match4,{atom,no_fail},4,{x,2},{x,2}}.
    {test,bs_get_binary2,
          {f,963},
          4,
          [{tr,{x,2},{t_bs_context,8}},
           {tr,{x,3},{t_integer,{0,255}}},
           8,
           {field_flags,[{anno,[1766,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_integer2,
          {f,963},
          5,
          [{tr,{x,2},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1766,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_get_integer2,
          {f,963},
          6,
          [{tr,{x,2},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1766,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,bs_get_integer2,
          {f,963},
          7,
          [{tr,{x,2},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1766,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,7}}.
    {test,bs_test_tail2,{f,963},[{x,2},0]}.
    {test,is_eq_exact,
          {f,963},
          [{tr,{x,6},{t_integer,{0,255}}},{tr,{x,3},{t_integer,{0,255}}}]}.
    {line,[{location,"bs_match_r25_SUITE.erl",1767}]}.
    {gc_bif,byte_size,{f,0},8,[{tr,{x,4},{t_bitstring,8,false}}],{x,0}}.
    {test,is_eq_exact,
          {f,965},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},
           {tr,{x,3},{t_integer,{0,255}}}]}.
    {test_heap,4,8}.
    {put_tuple2,{x,0},{list,[{x,4},{x,5},{x,7}]}}.
    return.
  {label,963}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,960},
          2,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1769,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{x,1},3}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {test,bs_get_binary2,
          {f,960},
          3,
          [{tr,{x,1},{t_bs_context,8}},
           {tr,{x,2},{t_integer,{0,255}}},
           8,
           {field_flags,[{anno,[1769,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_match_string,{f,960},[{x,1},80,{string,<<"abcdefghij">>}]}.
    {test,bs_test_tail2,{f,960},[{x,1},0]}.
    {line,[{location,"bs_match_r25_SUITE.erl",1770}]}.
    {gc_bif,byte_size,{f,0},4,[{tr,{x,3},{t_bitstring,8,false}}],{x,0}}.
    {test,is_eq_exact,
          {f,966},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},
           {tr,{x,2},{t_integer,{0,255}}}]}.
    {move,{x,3},{x,0}}.
    return.
  {label,964}.
    {line,[{location,"bs_match_r25_SUITE.erl",1764}]}.
    {badmatch,{x,0}}.
  {label,965}.
    {line,[{location,"bs_match_r25_SUITE.erl",1767}]}.
    {badmatch,{x,0}}.
  {label,966}.
    {line,[{location,"bs_match_r25_SUITE.erl",1770}]}.
    {badmatch,{x,0}}.


{function, mos_verify_sig, 1, 968}.
  {label,967}.
    {line,[{location,"bs_match_r25_SUITE.erl",1773}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,mos_verify_sig},1}.
  {label,968}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[not_a_binary]},
                                   none,none,none,
                                   {t_bitstring,16,false}}}]}}.
    {test,bs_start_match3,{f,969},1,[{x,0}],{x,0}}.
    {test,bs_get_integer2,
          {f,969},
          1,
          [{tr,{x,0},{t_bs_context,16}},
           {integer,32},
           1,
           {field_flags,[{anno,[1775,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_skip_bits2,
          {f,969},
          [{x,0},
           {x,1},
           8,
           {field_flags,[{anno,[1775,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_integer2,
          {f,969},
          1,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,32},
           1,
           {field_flags,[{anno,[1775,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_binary2,
          {f,969},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {tr,{x,1},{t_integer,{0,4294967295}}},
           8,
           {field_flags,[{anno,[1775,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_test_tail2,{f,969},[{x,0},0]}.
    {move,{x,1},{x,0}}.
    return.
  {label,969}.
    {move,{atom,false},{x,0}}.
    return.


{function, follow_fail_branch, 1, 971}.
  {label,970}.
    {line,[{location,"bs_match_r25_SUITE.erl",1783}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,follow_fail_branch},1}.
  {label,971}.
    {allocate,0,0}.
    {move,{literal,<<0>>},{x,1}}.
    {move,{literal,<<0,1>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1784}]}.
    {call,2,{f,975}}. % ffb_1/2
    {'%',{var_info,{x,0},[{type,{t_integer,{42,42}}}]}}.
    {move,{literal,[a]},{x,1}}.
    {move,{literal,<<0,1>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1785}]}.
    {call,2,{f,975}}. % ffb_1/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,288230376151711743}}}]}}.
    {test,is_eq_exact,
          {f,973},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},{integer,8}]}.
    {move,{literal,<<0>>},{x,1}}.
    {move,{integer,17},{x,2}}.
    {move,{literal,<<0,1>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1786}]}.
    {call,3,{f,979}}. % ffb_2/3
    {'%',{var_info,{x,0},[{type,{t_integer,{42,42}}}]}}.
    {move,{literal,[a]},{x,1}}.
    {move,{integer,0},{x,2}}.
    {move,{literal,<<0,1>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1787}]}.
    {call,3,{f,979}}. % ffb_2/3
    {'%',{var_info,{x,0},[{type,{t_integer,{0,288230376151711743}}}]}}.
    {test,is_eq_exact,
          {f,972},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},{integer,8}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,972}.
    {badmatch,{x,0}}.
  {label,973}.
    {line,[{location,"bs_match_r25_SUITE.erl",1785}]}.
    {badmatch,{x,0}}.


{function, ffb_1, 2, 975}.
  {label,974}.
    {line,[{location,"bs_match_r25_SUITE.erl",1790}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,ffb_1},2}.
  {label,975}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_union,none,
                                   {t_cons,{t_atom,[a]},nil},
                                   none,none,
                                   {t_bitstring,8,false}}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,2}}.
    {test,bs_skip_bits2,
          {f,974},
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[1790,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_get_tail,{x,2},{x,0},3}.
    {test,bs_start_match3,{f,976},2,[{x,1}],{x,2}}.
    {test,bs_test_tail2,{f,977},[{x,2},8]}.
    {move,{integer,42},{x,0}}.
    return.
  {label,976}.
    {line,[{location,"bs_match_r25_SUITE.erl",1799}]}.
    {gc_bif,bit_size,{f,0},1,[{tr,{x,0},{t_bitstring,8,false}}],{x,0}}.
    return.
  {label,977}.
    {line,[{location,"bs_match_r25_SUITE.erl",1791}]}.
    {case_end,{x,1}}.


{function, ffb_2, 3, 979}.
  {label,978}.
    {line,[{location,"bs_match_r25_SUITE.erl",1802}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,ffb_2},3}.
  {label,979}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_union,none,
                                   {t_cons,{t_atom,[a]},nil},
                                   none,none,
                                   {t_bitstring,8,false}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{0,17}}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,3}}.
    {test,bs_skip_bits2,
          {f,978},
          [{x,3},
           {integer,8},
           1,
           {field_flags,[{anno,[1802,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_get_tail,{x,3},{x,0},4}.
    {test,bs_start_match3,{f,980},3,[{x,1}],{x,3}}.
    {test,bs_test_tail2,{f,981},[{x,3},8]}.
    {test,is_eq_exact,{f,981},[{tr,{x,2},{t_integer,{0,17}}},{integer,17}]}.
    {move,{integer,42},{x,0}}.
    return.
  {label,980}.
    {line,[{location,"bs_match_r25_SUITE.erl",1805}]}.
    {gc_bif,bit_size,{f,0},1,[{tr,{x,0},{t_bitstring,8,false}}],{x,0}}.
    return.
  {label,981}.
    {line,[{location,"bs_match_r25_SUITE.erl",1803}]}.
    {case_end,{x,1}}.


{function, no_partition, 1, 983}.
  {label,982}.
    {line,[{location,"bs_match_r25_SUITE.erl",1808}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,no_partition},1}.
  {label,983}.
    {allocate,0,0}.
    {move,{atom,a1},{x,1}}.
    {move,{literal,<<"string">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1809}]}.
    {call,2,{f,989}}. % no_partition_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[one]}}]}}.
    {move,{atom,a2},{x,1}}.
    {move,{literal,<<"string">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1810}]}.
    {call,2,{f,989}}. % no_partition_1/2
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
        {f,987},
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
    {line,[{location,"bs_match_r25_SUITE.erl",1811}]}.
    {call,2,{f,989}}. % no_partition_1/2
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
        {f,986},
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
    {line,[{location,"bs_match_r25_SUITE.erl",1812}]}.
    {call,2,{f,989}}. % no_partition_1/2
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
        {f,985},
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
    {line,[{location,"bs_match_r25_SUITE.erl",1813}]}.
    {call,2,{f,989}}. % no_partition_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[three]}}]}}.
    {move,{atom,a4},{x,1}}.
    {move,{literal,[a]},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1814}]}.
    {call,2,{f,989}}. % no_partition_1/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_atom,[four]},
                                     2 => {t_atom,[a]},
                                     3 => {t_list,{t_atom,[a]},nil}}}}]}}.
    {test,is_eq_exact,
          {f,984},
          [{tr,{x,0},
               {t_tuple,3,true,
                        #{1 => {t_atom,[four]},
                          2 => {t_atom,[a]},
                          3 => {t_list,{t_atom,[a]},nil}}}},
           {literal,{four,a,[]}}]}.
    {move,{atom,a5},{x,1}}.
    {move,{literal,{a,b}},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1815}]}.
    {call,2,{f,989}}. % no_partition_1/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_atom,[five]},
                                     2 => {t_atom,[a]},
                                     3 => {t_atom,[b]}}}}]}}.
    {move,{atom,a1},{x,1}}.
    {move,{literal,<<"string">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1817}]}.
    {call,2,{f,997}}. % no_partition_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[one]}}]}}.
    {move,{atom,a2},{x,1}}.
    {move,{literal,<<"string">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1818}]}.
    {call,2,{f,997}}. % no_partition_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[two]}}]}}.
    {move,{atom,a2},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1819}]}.
    {call,2,{f,997}}. % no_partition_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[two]}}]}}.
    {move,{atom,a2},{x,1}}.
    {move,{atom,a},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1820}]}.
    {call,2,{f,997}}. % no_partition_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[two]}}]}}.
    {move,{atom,a3},{x,1}}.
    {move,{atom,undefined},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1821}]}.
    {call,2,{f,997}}. % no_partition_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[three]}}]}}.
    {move,{atom,a4},{x,1}}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1822}]}.
    {call,2,{f,997}}. % no_partition_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[four]}}]}}.
    {move,{atom,a5},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1823}]}.
    {call,2,{f,997}}. % no_partition_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[five]}}]}}.
    {move,{atom,a6},{x,1}}.
    {move,{float,42.0},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1824}]}.
    {call,2,{f,997}}. % no_partition_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[six]}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,984}.
    {line,[{location,"bs_match_r25_SUITE.erl",1814}]}.
    {badmatch,{x,0}}.
  {label,985}.
    {line,[{location,"bs_match_r25_SUITE.erl",1812}]}.
    {badmatch,{x,0}}.
  {label,986}.
    {line,[{location,"bs_match_r25_SUITE.erl",1811}]}.
    {badmatch,{x,0}}.
  {label,987}.
    {line,[{location,"bs_match_r25_SUITE.erl",1810}]}.
    {badmatch,{x,0}}.


{function, no_partition_1, 2, 989}.
  {label,988}.
    {line,[{location,"bs_match_r25_SUITE.erl",1827}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,no_partition_1},2}.
  {label,989}.
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
          {f,991},
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
                {f,993},
                {list,[{atom,a1},{f,990},{atom,a2},{f,992}]}}.
  {label,990}.
    {move,{atom,one},{x,0}}.
    return.
  {label,991}.
    {test,is_eq_exact,
          {f,993},
          [{tr,{x,1},{t_atom,[a1,a2,a3,a4,a5]}},{atom,a2}]}.
  {label,992}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,two},{x,0}]}}.
    return.
  {label,993}.
    {test,is_nonempty_list,{f,994},[{x,0}]}.
    {get_tl,{x,0},{x,2}}.
    {test,is_eq_exact,{f,988},[{tr,{x,1},{t_atom,[a1,a3,a4,a5]}},{atom,a4}]}.
    {test_heap,4,3}.
    {put_tuple2,{x,0},{list,[{atom,four},{atom,a},{x,2}]}}.
    return.
  {label,994}.
    {test,is_tuple,
          {f,995},
          [{tr,{x,0},
               {t_union,{t_atom,[a,undefined]},
                        none,none,
                        [{{2,{t_atom,[a]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                        {t_bitstring,16,false}}}]}.
    {test,is_eq_exact,{f,988},[{tr,{x,1},{t_atom,[a1,a3,a4,a5]}},{atom,a5}]}.
    {move,{literal,{five,a,b}},{x,0}}.
    return.
  {label,995}.
    {test,is_eq_exact,
          {f,988},
          [{tr,{x,0},
               {t_union,{t_atom,[a,undefined]},
                        none,none,none,
                        {t_bitstring,16,false}}},
           {atom,undefined}]}.
    {test,is_eq_exact,{f,988},[{tr,{x,1},{t_atom,[a1,a3,a4,a5]}},{atom,a3}]}.
    {move,{atom,three},{x,0}}.
    return.


{function, no_partition_2, 2, 997}.
  {label,996}.
    {line,[{location,"bs_match_r25_SUITE.erl",1838}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,no_partition_2},2}.
  {label,997}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[a,undefined]},
                                   nil,
                                   {t_number,{42,42}},
                                   none,
                                   {t_bitstring,16,false}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,any}}]}}.
    {test,is_eq_exact,
          {f,999},
          [{tr,{x,0},
               {t_union,{t_atom,[a,undefined]},
                        nil,
                        {t_number,{42,42}},
                        none,
                        {t_bitstring,16,false}}},
           {literal,<<"string">>}]}.
    {select_val,{tr,{x,1},{t_atom,any}},
                {f,1001},
                {list,[{atom,a1},{f,998},{atom,a2},{f,1000}]}}.
  {label,998}.
    {move,{atom,one},{x,0}}.
    return.
  {label,999}.
    {test,is_eq_exact,{f,1001},[{tr,{x,1},{t_atom,any}},{atom,a2}]}.
  {label,1000}.
    {move,{atom,two},{x,0}}.
    return.
  {label,1001}.
    {test,is_atom,
          {f,1002},
          [{tr,{x,0},
               {t_union,{t_atom,[a,undefined]},
                        nil,
                        {t_number,{42,42}},
                        none,
                        {t_bitstring,16,false}}}]}.
    {test,is_eq_exact,
          {f,996},
          [{tr,{x,0},{t_atom,[a,undefined]}},{atom,undefined}]}.
    {test,is_eq_exact,{f,996},[{tr,{x,1},{t_atom,any}},{atom,a3}]}.
    {move,{atom,three},{x,0}}.
    return.
  {label,1002}.
    {test,is_float,
          {f,1003},
          [{tr,{x,0},
               {t_union,none,nil,
                        {t_number,{42,42}},
                        none,
                        {t_bitstring,16,false}}}]}.
    {test,is_eq_exact,{f,996},[{tr,{x,1},{t_atom,any}},{atom,a6}]}.
    {move,{atom,six},{x,0}}.
    return.
  {label,1003}.
    {test,is_integer,
          {f,1004},
          [{tr,{x,0},
               {t_union,none,nil,
                        {t_integer,{42,42}},
                        none,
                        {t_bitstring,16,false}}}]}.
    {test,is_eq_exact,{f,996},[{tr,{x,1},{t_atom,any}},{atom,a4}]}.
    {move,{atom,four},{x,0}}.
    return.
  {label,1004}.
    {test,is_nil,
          {f,996},
          [{tr,{x,0},{t_union,none,nil,none,none,{t_bitstring,16,false}}}]}.
    {test,is_eq_exact,{f,996},[{tr,{x,1},{t_atom,any}},{atom,a5}]}.
    {move,{atom,five},{x,0}}.
    return.


{function, calling_a_binary, 1, 1006}.
  {label,1005}.
    {line,[{location,"bs_match_r25_SUITE.erl",1851}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,calling_a_binary},1}.
  {label,1006}.
    {test,is_list,{f,1005},[{x,0}]}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,nil,{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1852}]}.
    {call,2,{f,1012}}. % call_binary/2
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {'catch',{y,1},{f,1007}}.
    {move,nil,{x,1}}.
    {move,{literal,<<1>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1853}]}.
    {call,2,{f,1012}}. % call_binary/2
    {'%',{var_info,{x,0},[{type,nil}]}}.
  {label,1007}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,1010},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1010},[{x,1},2,{atom,badarg}]}.
    {'catch',{y,0},{f,1008}}.
    {move,nil,{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r25_SUITE.erl",1854}]}.
    {call,2,{f,1012}}. % call_binary/2
    {'%',{var_info,{x,0},[{type,nil}]}}.
  {label,1008}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1009},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1009},[{x,1},2,{atom,badarg}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,1009}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1854}]}.
    {badmatch,{x,0}}.
  {label,1010}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",1853}]}.
    {badmatch,{x,0}}.


{function, call_binary, 2, 1012}.
  {label,1011}.
    {line,[{location,"bs_match_r25_SUITE.erl",1857}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,call_binary},2}.
  {label,1012}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,nil}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,2}}.
    {test,bs_test_tail2,{f,1013},[{x,2},0]}.
    {move,{x,1},{x,0}}.
    return.
  {label,1013}.
    {test,bs_get_integer2,
          {f,1011},
          3,
          [{tr,{x,2},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1859,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_tail,{x,2},{x,0},4}.
    {line,[{location,"bs_match_r25_SUITE.erl",1860}]}.
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


{function, binary_in_map, 1, 1015}.
  {label,1014}.
    {line,[{location,"bs_match_r25_SUITE.erl",1862}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,binary_in_map},1}.
  {label,1015}.
    {test,is_list,{f,1014},[{x,0}]}.
    {allocate,4,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3}]}}.
    {move,{literal,#{key => <<"*">>}},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1863}]}.
    {call,1,{f,1025}}. % match_binary_in_map/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,3},{f,1016}}.
    {move,{literal,#{key => 1}},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1865}]}.
    {call,1,{f,1025}}. % match_binary_in_map/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1016}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,1023},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1023},[{x,1}]}.
    {test,test_arity,{f,1023},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,1023},[{x,1},2,{atom,badmatch}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_map,{f,1023},[{x,1}]}.
    {get_map_elements,{f,1023},
                      {tr,{x,1},{t_map,any,any}},
                      {list,[{atom,key},{x,1}]}}.
    {test,is_eq_exact,{f,1023},[{x,1},{integer,1}]}.
    {'catch',{y,2},{f,1017}}.
    {move,{literal,#{key => <<3,255>>}},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",1867}]}.
    {call,1,{f,1025}}. % match_binary_in_map/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1017}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,1022},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1022},[{x,1}]}.
    {test,test_arity,{f,1022},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,1022},[{x,1},2,{atom,badmatch}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_map,{f,1022},[{x,1}]}.
    {get_map_elements,{f,1022},
                      {tr,{x,1},{t_map,any,any}},
                      {list,[{atom,key},{x,1}]}}.
    {test,is_eq_exact,{f,1022},[{x,1},{literal,<<3,255>>}]}.
    {'catch',{y,1},{f,1018}}.
    {move,{literal,#{key => <<1>>}},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",1869}]}.
    {call,1,{f,1025}}. % match_binary_in_map/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1018}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,1021},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1021},[{x,1}]}.
    {test,test_arity,{f,1021},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,1021},[{x,1},2,{atom,badmatch}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_map,{f,1021},[{x,1}]}.
    {get_map_elements,{f,1021},
                      {tr,{x,1},{t_map,any,any}},
                      {list,[{atom,key},{x,1}]}}.
    {test,is_eq_exact,{f,1021},[{x,1},{literal,<<1>>}]}.
    {'catch',{y,0},{f,1019}}.
    {move,{atom,not_a_map},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",1871}]}.
    {call,1,{f,1025}}. % match_binary_in_map/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1019}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1020},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1020},[{x,1}]}.
    {test,test_arity,{f,1020},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1020},[{x,1},{literal,{badmatch,not_a_map}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,4}.
    return.
  {label,1020}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1870}]}.
    {badmatch,{x,0}}.
  {label,1021}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",1868}]}.
    {badmatch,{x,0}}.
  {label,1022}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",1866}]}.
    {badmatch,{x,0}}.
  {label,1023}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",1864}]}.
    {badmatch,{x,0}}.


{function, match_binary_in_map, 1, 1025}.
  {label,1024}.
    {line,[{location,"bs_match_r25_SUITE.erl",1874}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,match_binary_in_map},1}.
  {label,1025}.
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
        {f,1026},
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
        {f,1026},
        {tr,{x,0},
            {t_map,
                {t_atom,[key]},
                {t_union,none,none,
                    {t_integer,{1,1}},
                    none,
                    {t_bitstring,8,false}}}},
        {list,[{atom,key},{x,1}]}}.
    {test,is_eq_exact,
          {f,1026},
          [{tr,{x,1},
               {t_union,none,none,
                        {t_integer,{1,1}},
                        none,
                        {t_bitstring,8,false}}},
           {literal,<<"*">>}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1026}.
    {line,[{location,"bs_match_r25_SUITE.erl",1877}]}.
    {badmatch,{x,0}}.


{function, match_string_opt, 1, 1028}.
  {label,1027}.
    {line,[{location,"bs_match_r25_SUITE.erl",1881}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,match_string_opt},1}.
  {label,1028}.
    {test,is_list,{f,1027},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,{<<1>>,{v,<<1,2,3>>}}},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1883}]}.
    {call,1,{f,1031}}. % do_match_string_opt/1
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
        {f,1029},
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
  {label,1029}.
    {line,[{location,"bs_match_r25_SUITE.erl",1882}]}.
    {badmatch,{x,0}}.


{function, do_match_string_opt, 1, 1031}.
  {label,1030}.
    {line,[{location,"bs_match_r25_SUITE.erl",1886}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_match_string_opt},1}.
  {label,1031}.
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
          {f,1030},
          [{tr,{x,1},{t_bitstring,8,false}},{literal,<<1>>}]}.
    {test_heap,4,1}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {put_tuple2,{x,0},{list,[{atom,x},{x,1},{x,0}]}}.
    return.


{function, select_on_integer, 1, 1033}.
  {label,1032}.
    {line,[{location,"bs_match_r25_SUITE.erl",1889}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,select_on_integer},1}.
  {label,1033}.
    {test,is_list,{f,1032},[{x,0}]}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1890}]}.
    {call,1,{f,1043}}. % do_select_on_integer/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,none,
                                   {t_integer,{0,127}},
                                   none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,1041},
          [{tr,{x,0},
               {t_union,none,none,
                        {t_integer,{0,127}},
                        none,
                        {t_bitstring,8,false}}},
           {integer,42}]}.
    {move,{literal,<<128,97,98,99>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",1891}]}.
    {call,1,{f,1043}}. % do_select_on_integer/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,none,
                                   {t_integer,{0,127}},
                                   none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,1040},
          [{tr,{x,0},
               {t_union,none,none,
                        {t_integer,{0,127}},
                        none,
                        {t_bitstring,8,false}}},
           {literal,<<"abc">>}]}.
    {'catch',{y,2},{f,1034}}.
    {move,{literal,<<0:1>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",1893}]}.
    {call,1,{f,1043}}. % do_select_on_integer/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,none,
                                   {t_integer,{0,127}},
                                   none,
                                   {t_bitstring,8,false}}}]}}.
  {label,1034}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,1039},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,1},{f,1035}}.
    {move,{literal,<<1:1>>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r25_SUITE.erl",1894}]}.
    {call,1,{f,1043}}. % do_select_on_integer/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,none,
                                   {t_integer,{0,127}},
                                   none,
                                   {t_bitstring,8,false}}}]}}.
  {label,1035}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,1038},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,0},{f,1036}}.
    {move,{literal,<<0,0>>},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r25_SUITE.erl",1895}]}.
    {call,1,{f,1043}}. % do_select_on_integer/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,none,
                                   {t_integer,{0,127}},
                                   none,
                                   {t_bitstring,8,false}}}]}}.
  {label,1036}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1037},[{x,0},2,{atom,'EXIT'}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,3}.
    return.
  {label,1037}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1895}]}.
    {badmatch,{x,0}}.
  {label,1038}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",1894}]}.
    {badmatch,{x,0}}.
  {label,1039}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",1893}]}.
    {badmatch,{x,0}}.
  {label,1040}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",1891}]}.
    {badmatch,{x,0}}.
  {label,1041}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",1890}]}.
    {badmatch,{x,0}}.


{function, do_select_on_integer, 1, 1043}.
  {label,1042}.
    {line,[{location,"bs_match_r25_SUITE.erl",1899}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_select_on_integer},1}.
  {label,1043}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,1042},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,1},
           1,
           {field_flags,[{anno,[1899,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,1044},[{x,2},{integer,0}]}.
    {test,bs_get_integer2,
          {f,1042},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,7},
           1,
           {field_flags,[{anno,[1899,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1042},[{x,1},0]}.
    {move,{x,2},{x,0}}.
    return.
  {label,1044}.
    {test,bs_skip_bits2,
          {f,1042},
          [{x,1},
           {integer,7},
           1,
           {field_flags,[{anno,[1901,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,1042},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {atom,all},
           8,
           {field_flags,[{anno,[1901,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {move,{x,1},{x,0}}.
    return.


{function, map_and_binary, 1, 1046}.
  {label,1045}.
    {line,[{location,"bs_match_r25_SUITE.erl",1907}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,map_and_binary},1}.
  {label,1046}.
    {allocate,0,0}.
    {move,{literal,<<"10:37am">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1908}]}.
    {call,1,{f,1051}}. % do_map_and_binary/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_bitstring,8,false},
                                     2 => {t_bitstring,8,false},
                                     3 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
          {f,1049},
          [{tr,{x,0},
               {t_tuple,3,true,
                        #{1 => {t_bitstring,8,false},
                          2 => {t_bitstring,8,false},
                          3 => {t_bitstring,8,false}}}},
           {literal,{<<"10">>,<<"37">>,<<"am">>}}]}.
    {move,{literal,#{time => "noon"}},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1910}]}.
    {call,1,{f,1051}}. % do_map_and_binary/1
    {'%',{var_info,{x,0},[{type,{t_tuple,2,false,#{}}}]}}.
    {test,is_tagged_tuple,
          {f,1048},
          [{tr,{x,0},{t_tuple,2,false,#{}}},2,{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,1048},[{x,1},{literal,#{time => "noon"}}]}.
    {move,{literal,#{hour => 8,min => 42}},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1912}]}.
    {call,1,{f,1051}}. % do_map_and_binary/1
    {'%',{var_info,{x,0},[{type,{t_tuple,2,false,#{}}}]}}.
    {test,test_arity,{f,1047},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1047},[{x,1},{integer,8}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,1047},[{x,1},{integer,42}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,{f,1047},[{x,1},{literal,#{hour => 8,min => 42}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1047}.
    {badmatch,{x,0}}.
  {label,1048}.
    {line,[{location,"bs_match_r25_SUITE.erl",1910}]}.
    {badmatch,{x,0}}.
  {label,1049}.
    {line,[{location,"bs_match_r25_SUITE.erl",1908}]}.
    {badmatch,{x,0}}.


{function, do_map_and_binary, 1, 1051}.
  {label,1050}.
    {line,[{location,"bs_match_r25_SUITE.erl",1915}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_map_and_binary},1}.
  {label,1051}.
    {'%',{var_info,{x,0},[{type,other}]}}.
    {test,bs_start_match3,{f,1052},1,[{x,0}],{x,1}}.
    {test,bs_get_binary2,
          {f,1050},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,2},
           8,
           {field_flags,[{anno,[1915,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_match_string,{f,1050},[{x,1},8,{string,<<":">>}]}.
    {test,bs_get_binary2,
          {f,1050},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,2},
           8,
           {field_flags,[{anno,[1915,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,1050},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {atom,all},
           8,
           {field_flags,[{anno,[1915,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test_heap,4,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3},{x,1}]}}.
    return.
  {label,1052}.
    {test,is_map,{f,1050},[{tr,{x,0},other}]}.
    {test,has_map_fields,{f,1053},{x,0},{list,[{atom,time}]}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,ok},{x,0}]}}.
    return.
  {label,1053}.
    {get_map_elements,{f,1050},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{atom,min},{x,2},{atom,hour},{x,1}]}}.
    {test_heap,4,3}.
    {put_tuple2,{x,0},{list,[{x,1},{x,2},{x,0}]}}.
    return.


{function, unsafe_branch_caching, 1, 1055}.
  {label,1054}.
    {line,[{location,"bs_match_r25_SUITE.erl",1926}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,unsafe_branch_caching},1}.
  {label,1055}.
    {allocate,0,0}.
    {move,{literal,<<42,1>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1927}]}.
    {call,1,{f,1062}}. % do_unsafe_branch_caching/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,1060},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<>>}]}.
    {move,{literal,<<42,2>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1928}]}.
    {call,1,{f,1062}}. % do_unsafe_branch_caching/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,1059},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<>>}]}.
    {move,{literal,<<42,3>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1929}]}.
    {call,1,{f,1062}}. % do_unsafe_branch_caching/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,1058},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<>>}]}.
    {move,{literal,<<42,3,17,18>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1930}]}.
    {call,1,{f,1062}}. % do_unsafe_branch_caching/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,1057},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<17,18>>}]}.
    {move,{literal,<<1,3,42,2>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1931}]}.
    {call,1,{f,1062}}. % do_unsafe_branch_caching/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,1056},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1056}.
    {badmatch,{x,0}}.
  {label,1057}.
    {line,[{location,"bs_match_r25_SUITE.erl",1930}]}.
    {badmatch,{x,0}}.
  {label,1058}.
    {line,[{location,"bs_match_r25_SUITE.erl",1929}]}.
    {badmatch,{x,0}}.
  {label,1059}.
    {line,[{location,"bs_match_r25_SUITE.erl",1928}]}.
    {badmatch,{x,0}}.
  {label,1060}.
    {line,[{location,"bs_match_r25_SUITE.erl",1927}]}.
    {badmatch,{x,0}}.


{function, do_unsafe_branch_caching, 1, 1062}.
  {label,1061}.
    {line,[{location,"bs_match_r25_SUITE.erl",1935}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_unsafe_branch_caching},1}.
  {label,1062}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,1061},
          2,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1935,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{x,0},3}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,1066},
          3,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1936,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_tail,{x,1},{x,0},4}.
    {select_val,{tr,{x,3},{t_integer,{0,255}}},
                {f,1064},
                {list,[{integer,1},{f,1063},{integer,2},{f,1063}]}}.
  {label,1063}.
    {move,{literal,<<>>},{x,0}}.
  {label,1064}.
    {test,is_eq_exact,{f,1065},[{tr,{x,2},{t_integer,{0,255}}},{integer,1}]}.
    {call_only,1,{f,1062}}. % do_unsafe_branch_caching/1
  {label,1065}.
    return.
  {label,1066}.
    {line,[{location,"bs_match_r25_SUITE.erl",1936}]}.
    {badmatch,{x,0}}.


{function, bad_literals, 1, 1068}.
  {label,1067}.
    {line,[{location,"bs_match_r25_SUITE.erl",1948}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bad_literals},1}.
  {label,1068}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{integer,1114116},{x,1}}.
    {move,{integer,1114108},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1956}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {test_heap,10,1}.
    {put_list,{integer,2},{x,0},{x,0}}.
    {put_list,{integer,1},{x,0},{x,0}}.
    {put_list,{integer,0},{x,0},{x,0}}.
    {put_list,{integer,-1},{x,0},{x,0}}.
    {put_list,{integer,-100},{x,0},{x,0}}.
    {call,1,{f,1795}}. % '-bad_literals/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_cons,any,nil}}]}}.
    {move,{x,0},{y,1}}.
    {move,{integer,8},{x,1}}.
    {move,{integer,-2},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1953}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{y,1},{x,1}}.
    {init_yregs,{list,[{y,1}]}}.
    {call,2,{f,1788}}. % '-bad_literals/1-lc$^1/1-1-'/2
    {'%',{var_info,{x,0},[{type,{t_cons,any,nil}}]}}.
    {move,{x,0},{y,1}}.
    {move,{integer,8},{x,1}}.
    {move,{integer,-8},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1951}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{y,1},{x,1}}.
    {init_yregs,{list,[{y,1}]}}.
    {call,2,{f,1781}}. % '-bad_literals/1-lc$^3/1-3-'/2
    {'%',{var_info,{x,0},[{type,{t_cons,any,nil}}]}}.
    {move,{x,0},{y,1}}.
    {move,{atom,bs_match_r25_SUITE_bad_literals},{x,0}}.
    {line,[]}.
    {call_ext,1,{extfunc,merl,term,1}}.
    {test_heap,41,1}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{literal,[{tree,atom,{attr,1957,[],none},module}]},{x,0},{x,0}}.
    {put_list,{y,1},{literal,[{atom,1961,ok}]},{x,1}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,nil,{x,1},{x,1}}.
    {put_list,nil,{x,1},{x,1}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,clause},
                       {literal,{attr,1959,[],none}},
                       {x,1}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{literal,[{tree,atom,{attr,1959,[],none},f}]},{x,1},{x,1}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,function},
                       {literal,{attr,1959,[],none}},
                       {x,1}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{literal,{attribute,1958,export,[{f,0}]}},{x,1},{x,1}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,attribute},
                       {literal,{attr,1957,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},{x,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1957}]}.
    {call_ext,1,{extfunc,merl,tree,1}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1962}]}.
    {call_ext,1,{extfunc,merl,print,1}}.
    {move,{atom,bs_match_r25_SUITE},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1963}]}.
    {call_ext,1,{extfunc,test_lib,opt_opts,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1964}]}.
    {call_ext,2,{extfunc,merl,compile_and_load,2}}.
    {test,is_tagged_tuple,{f,1073},[{x,0},2,{atom,ok}]}.
    {line,[{location,"bs_match_r25_SUITE.erl",1965}]}.
    {call_ext,0,{extfunc,bs_match_r25_SUITE_bad_literals,f,0}}.
    {'catch',{y,1},{f,1069}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1967}]}.
    {call,0,{f,1075}}. % bad_literals_1/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1069}.
    {catch_end,{y,1}}.
    {test,is_eq_exact,{f,1072},[{x,0},{literal,{'EXIT',<<"*">>}}]}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",1968}]}.
    {call,1,{f,1077}}. % bad_literals_2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[no_match]}}]}}.
    {move,{integer,8},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",1970}]}.
    {call,1,{f,1686}}. % id/1
    {'catch',{y,0},{f,1070}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",1971}]}.
    {badmatch,{literal,<<"ÿ">>}}.
  {label,1070}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1071},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1071},[{x,1}]}.
    {test,test_arity,{f,1071},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,1071},[{x,1},2,{atom,badmatch}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,1071}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1971}]}.
    {badmatch,{x,0}}.
  {label,1072}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",1967}]}.
    {badmatch,{x,0}}.
  {label,1073}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",1964}]}.
    {badmatch,{x,0}}.


{function, bad_literals_1, 0, 1075}.
  {label,1074}.
    {line,[{location,"bs_match_r25_SUITE.erl",1974}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bad_literals_1},0}.
  {label,1075}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1978}]}.
    {call_ext_only,1,{extfunc,erlang,exit,1}}.


{function, bad_literals_2, 1, 1077}.
  {label,1076}.
    {line,[{location,"bs_match_r25_SUITE.erl",1984}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bad_literals_2},1}.
  {label,1077}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {move,{atom,no_match},{x,0}}.
    return.


{function, signed_lit_match, 2, 1079}.
  {label,1078}.
    {line,[{location,"bs_match_r25_SUITE.erl",1991}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,signed_lit_match},2}.
  {label,1079}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,3}}}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1992}]}.
    {bs_create_bin,{f,0},
                   0,2,1,
                   {x,2},
                   {list,[{atom,integer},
                          1,1,nil,
                          {x,0},
                          {tr,{x,1},{t_integer,{0,3}}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,2}}.
    {test,bs_get_integer2,
          {f,1080},
          3,
          [{tr,{x,2},{t_bs_context,1}},
           {tr,{x,1},{t_integer,{0,3}}},
           1,
           {field_flags,[{anno,[1993,{file,"bs_match_r25_SUITE.erl"}]},
                         signed,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1080},[{x,2},0]}.
    {test,is_eq_exact,{f,1080},[{tr,{x,3},{t_integer,{-4,3}}},{x,0}]}.
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
              {literal,[[{tree,atom,{attr,1994,[],none},signed}]]},
              {x,1}}.
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
    {put_list,{x,0},{literal,[[]]},{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,binary_field},
                       {literal,{attr,1994,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,binary},
                       {literal,{attr,1994,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,match_expr},
                       {literal,{attr,1994,[],none}},
                       {x,0}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1994}]}.
    {call_ext_last,1,{extfunc,merl,tree,1},3}.
  {label,1080}.
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
                       {literal,{attr,1996,[],none}},
                       {x,1}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,binary},
                       {literal,{attr,1996,[],none}},
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
              {literal,[[{tree,atom,{attr,1998,[],none},signed}]]},
              {x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,binary_field},
                       {literal,{attr,1998,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,binary},
                       {literal,{attr,1998,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},
              {literal,[[],
                        [{call,2000,
                               {remote,2000,{atom,2000,ct},{atom,2000,fail}},
                               [{atom,2000,should_not_match}]}]]},
              {x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,clause},
                       {literal,{attr,1998,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},
              {literal,[{clause,2002,[{var,2002,'_'}],[],[{atom,2004,ok}]}]},
              {x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,case_expr},
                       {literal,{attr,1996,[],none}},
                       {x,0}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1996}]}.
    {call_ext_last,1,{extfunc,merl,tree,1},3}.


{function, unsigned_lit_match, 2, 1082}.
  {label,1081}.
    {line,[{location,"bs_match_r25_SUITE.erl",2004}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,unsigned_lit_match},2}.
  {label,1082}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,2}}}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2005}]}.
    {bs_create_bin,{f,0},
                   0,2,1,
                   {x,2},
                   {list,[{atom,integer},
                          1,1,nil,
                          {x,0},
                          {tr,{x,1},{t_integer,{0,2}}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,2}}.
    {test,bs_get_integer2,
          {f,1083},
          3,
          [{tr,{x,2},{t_bs_context,1}},
           {tr,{x,1},{t_integer,{0,2}}},
           1,
           {field_flags,[{anno,[2006,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1083},[{x,2},0]}.
    {test,is_eq_exact,{f,1083},[{tr,{x,3},{t_integer,{0,3}}},{x,0}]}.
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
    {put_list,{x,0},{literal,[[]]},{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,binary_field},
                       {literal,{attr,2007,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,binary},
                       {literal,{attr,2007,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,match_expr},
                       {literal,{attr,2007,[],none}},
                       {x,0}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2007}]}.
    {call_ext_last,1,{extfunc,merl,tree,1},3}.
  {label,1083}.
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
                       {literal,{attr,2009,[],none}},
                       {x,1}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,binary},
                       {literal,{attr,2009,[],none}},
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
              {literal,[[{tree,atom,{attr,2011,[],none},unsigned}]]},
              {x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,binary_field},
                       {literal,{attr,2011,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,binary},
                       {literal,{attr,2011,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},
              {literal,[[],
                        [{call,2013,
                               {remote,2013,{atom,2013,ct},{atom,2013,fail}},
                               [{atom,2013,should_not_match}]}]]},
              {x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,clause},
                       {literal,{attr,2011,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},
              {literal,[{clause,2015,[{var,2015,'_'}],[],[{atom,2017,ok}]}]},
              {x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,case_expr},
                       {literal,{attr,2009,[],none}},
                       {x,0}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2009}]}.
    {call_ext_last,1,{extfunc,merl,tree,1},3}.


{function, unicode_match, 1, 1085}.
  {label,1084}.
    {line,[{location,"bs_match_r25_SUITE.erl",2017}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,unicode_match},1}.
  {label,1085}.
    {allocate,5,1}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{x,0},{y,3}}.
    {'try',{y,4},{f,1086}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2018}]}.
    {bs_create_bin,{f,0},
                   0,1,8,
                   {x,0},
                   {list,[{atom,utf8},1,0,nil,{x,0},{atom,undefined}]}}.
    {try_end,{y,4}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_utf8,
          {f,1088},
          2,
          [{tr,{x,1},{t_bs_context,8}},
           {field_flags,[{anno,[2019,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1088},[{x,1},0]}.
    {test,is_eq_exact,{f,1088},[{tr,{x,2},{t_integer,{0,1114111}}},{y,3}]}.
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
    {put_list,{x,1},{literal,[[{tree,atom,{attr,2020,[],none},utf8}]]},{x,1}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,binary_field},
                       {literal,{attr,2020,[],none}},
                       {x,1}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,binary},
                       {literal,{attr,2020,[],none}},
                       {x,1}]}}.
    {put_list,{y,2},nil,{x,2}}.
    {put_list,{x,2},{literal,[[{tree,atom,{attr,2020,[],none},utf8}]]},{x,2}}.
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
    {put_list,{x,2},nil,{x,2}}.
    {put_list,{x,2},nil,{x,2}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},{x,2},{x,1}}.
    {put_list,{y,1},nil,{x,2}}.
    {put_list,{x,2},{literal,[[{tree,atom,{attr,2022,[],none},utf16}]]},{x,2}}.
    {put_tuple2,{x,2},
                {list,[{atom,template},
                       {atom,binary_field},
                       {literal,{attr,2022,[],none}},
                       {x,2}]}}.
    {put_list,{x,2},nil,{x,2}}.
    {put_list,{x,2},nil,{x,2}}.
    {put_tuple2,{x,2},
                {list,[{atom,template},
                       {atom,binary},
                       {literal,{attr,2022,[],none}},
                       {x,2}]}}.
    {put_list,{y,0},nil,{x,3}}.
    {put_list,{x,3},{literal,[[{tree,atom,{attr,2022,[],none},utf16}]]},{x,3}}.
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
    {put_list,{x,3},nil,{x,3}}.
    {put_list,{x,3},nil,{x,3}}.
    {put_list,{x,2},nil,{x,2}}.
    {put_list,{x,2},{x,3},{x,2}}.
    {put_list,{y,3},nil,{x,3}}.
    {put_list,{x,3},{literal,[[{tree,atom,{attr,2024,[],none},utf32}]]},{x,3}}.
    {put_tuple2,{x,3},
                {list,[{atom,template},
                       {atom,binary_field},
                       {literal,{attr,2024,[],none}},
                       {x,3}]}}.
    {put_list,{x,3},nil,{x,3}}.
    {put_list,{x,3},nil,{x,3}}.
    {put_tuple2,{x,3},
                {list,[{atom,template},
                       {atom,binary},
                       {literal,{attr,2024,[],none}},
                       {x,3}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},{literal,[[{tree,atom,{attr,2024,[],none},utf32}]]},{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,binary_field},
                       {literal,{attr,2024,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,binary},
                       {literal,{attr,2024,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,3},nil,{x,3}}.
    {put_list,{x,3},{x,0},{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,match_expr},
                       {literal,{attr,2024,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_tuple2,{x,2},
                {list,[{atom,template},
                       {atom,match_expr},
                       {literal,{attr,2022,[],none}},
                       {x,2}]}}.
    {put_list,{x,2},{x,0},{x,0}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,match_expr},
                       {literal,{attr,2020,[],none}},
                       {x,1}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",2020}]}.
    {call_ext_last,1,{extfunc,merl,tree,1},5}.
  {label,1086}.
    {try_case,{y,4}}.
    {test,is_eq_exact,
          {f,1087},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,error}]}.
    {test,is_eq_exact,{f,1087},[{x,1},{atom,badarg}]}.
    {move,{y,3},{x,0}}.
    {line,[{scope,[0]}]}.
    {call_ext,1,{extfunc,merl,term,1}}.
    {move,{x,0},{y,4}}.
    {move,{y,3},{x,0}}.
    {trim,4,1}.
    {call_ext,1,{extfunc,merl,term,1}}.
    {test_heap,67,1}.
    {put_list,{y,0},nil,{x,1}}.
    {put_list,{x,1},{literal,[[{integer,2025,32}]]},{x,1}}.
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
                       {literal,{attr,2025,[],none}},
                       {x,1}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,binary},
                       {literal,{attr,2025,[],none}},
                       {x,1}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},{literal,[[{tree,atom,{attr,2027,[],none},utf32}]]},{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,binary_field},
                       {literal,{attr,2027,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,binary},
                       {literal,{attr,2027,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},
              {literal,[[],
                        [{call,2029,
                               {remote,2029,{atom,2029,ct},{atom,2029,fail}},
                               [{atom,2029,should_not_match}]}]]},
              {x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,clause},
                       {literal,{attr,2027,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},
              {literal,[{clause,2031,[{var,2031,'_'}],[],[{atom,2033,ok}]}]},
              {x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,case_expr},
                       {literal,{attr,2025,[],none}},
                       {x,0}]}}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",2025}]}.
    {call_ext_last,1,{extfunc,merl,tree,1},1}.
  {label,1087}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.
  {label,1088}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",2018}]}.
    {try_case_end,{x,0}}.


{function, good_literals, 1, 1090}.
  {label,1089}.
    {line,[{location,"bs_match_r25_SUITE.erl",2035}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,good_literals},1}.
  {label,1090}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{integer,64},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2036}]}.
    {call,1,{f,1686}}. % id/1
    {line,[{location,"bs_match_r25_SUITE.erl",2039}]}.
    {bs_create_bin,{f,0},
                   0,1,1,
                   {x,1},
                   {list,[{atom,integer},1,1,nil,{integer,42},{x,0}]}}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {call,1,{f,1686}}. % id/1
    {test,bs_start_match3,{f,1093},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,1093},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {y,0},
           1,
           {field_flags,[{anno,[2039,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,1093},
          [{tr,{x,2},{t_integer,{0,'+inf'}}},{integer,42}]}.
    {test,bs_test_tail2,{f,1093},[{x,1},0]}.
    {line,[{location,"bs_match_r25_SUITE.erl",2040}]}.
    {bs_create_bin,{f,0},
                   0,0,1,
                   {x,0},
                   {list,[{atom,float},1,1,nil,{integer,42},{y,0}]}}.
    {call,1,{f,1686}}. % id/1
    {test,bs_start_match3,{f,1092},1,[{x,0}],{x,1}}.
    {test,bs_get_float2,
          {f,1092},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {y,0},
           1,
           {field_flags,[{anno,[2040,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,1092},[{tr,{x,2},{t_float,any}},{float,42.0}]}.
    {test,bs_test_tail2,{f,1092},[{x,1},0]}.
    {trim,1,0}.
    {move,{literal,<<"Êþ¾ï">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2043}]}.
    {call,1,{f,1686}}. % id/1
    {test,is_eq_exact,{f,1091},[{x,0},{literal,<<"Êþ¾ï">>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1091}.
    {badmatch,{x,0}}.
  {label,1092}.
    {line,[{location,"bs_match_r25_SUITE.erl",2040}]}.
    {badmatch,{x,0}}.
  {label,1093}.
    {line,[{location,"bs_match_r25_SUITE.erl",2039}]}.
    {badmatch,{x,0}}.


{function, constant_propagation, 1, 1095}.
  {label,1094}.
    {line,[{location,"bs_match_r25_SUITE.erl",2046}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,constant_propagation},1}.
  {label,1095}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,<<5>>},{x,1}}.
    {move,{atom,a},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2047}]}.
    {call,2,{f,1102}}. % constant_propagation_a/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,1100},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<5>>}]}.
    {'catch',{y,0},{f,1096}}.
    {move,{literal,<<5>>},{x,1}}.
    {move,{atom,b},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",2048}]}.
    {call,2,{f,1102}}. % constant_propagation_a/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1096}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1099},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1099},[{x,1}]}.
    {test,test_arity,{f,1099},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1099},[{x,1},{literal,{case_clause,b}}]}.
    {move,{literal,<<1,2>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",2049}]}.
    {call,1,{f,1106}}. % constant_propagation_b/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,65535}}}]}}.
    {test,is_eq_exact,
          {f,1098},
          [{tr,{x,0},{t_integer,{0,65535}}},{integer,258}]}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",2050}]}.
    {call,0,{f,1109}}. % constant_propagation_c/0
    {'%',{var_info,{x,0},
                   [{type,{t_fun,1,
                                 {'-constant_propagation_c/0-fun-0-',1},
                                 {t_integer,{0,65535}}}}]}}.
    {move,{literal,<<1,3>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",2051}]}.
    {call,1,{f,1778}}. % '-constant_propagation_c/0-fun-0-'/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,65535}}}]}}.
    {test,is_eq_exact,
          {f,1097},
          [{tr,{x,0},{t_integer,{0,65535}}},{integer,259}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,1097}.
    {badmatch,{x,0}}.
  {label,1098}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",2049}]}.
    {badmatch,{x,0}}.
  {label,1099}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",2048}]}.
    {badmatch,{x,0}}.
  {label,1100}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",2047}]}.
    {badmatch,{x,0}}.


{function, constant_propagation_a, 2, 1102}.
  {label,1101}.
    {line,[{location,"bs_match_r25_SUITE.erl",2054}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,constant_propagation_a},2}.
  {label,1102}.
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,{f,1104},[{tr,{x,0},{t_atom,[a,b]}},{atom,a}]}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,0}}.
    {test,bs_get_integer2,
          {f,1103},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2058,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,1103},[{tr,{x,2},{t_integer,{0,255}}},{integer,5}]}.
    {test,bs_test_tail2,{f,1103},[{x,0},0]}.
    {move,{x,1},{x,0}}.
    return.
  {label,1103}.
    {line,[{location,"bs_match_r25_SUITE.erl",2058}]}.
    {badmatch,{x,1}}.
  {label,1104}.
    {line,[{location,"bs_match_r25_SUITE.erl",2055}]}.
    {case_end,{atom,b}}.


{function, constant_propagation_b, 1, 1106}.
  {label,1105}.
    {line,[{location,"bs_match_r25_SUITE.erl",2060}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,constant_propagation_b},1}.
  {label,1106}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,1107},
          2,
          [{tr,{x,1},{t_bs_context,16}},
           {integer,16},
           1,
           {field_flags,[{anno,[2062,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1107},[{x,1},0]}.
    {move,{x,2},{x,0}}.
    return.
  {label,1107}.
    {line,[{location,"bs_match_r25_SUITE.erl",2062}]}.
    {badmatch,{x,0}}.


{function, constant_propagation_c, 0, 1109}.
  {label,1108}.
    {line,[{location,"bs_match_r25_SUITE.erl",2065}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,constant_propagation_c},0}.
  {label,1109}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1778},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_integer,{0,65535}}}]}}.
    return.


{function, parse_xml, 1, 1111}.
  {label,1110}.
    {line,[{location,"bs_match_r25_SUITE.erl",2072}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,parse_xml},1}.
  {label,1111}.
    {allocate,0,0}.
    {move,{literal,<<"<?xmlX">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2073}]}.
    {call,1,{f,1115}}. % do_parse_xml/1
    {test,is_eq_exact,{f,1113},[{x,0},{literal,<<"<?xmlX">>}]}.
    {move,{literal,<<"<?xml ">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2074}]}.
    {call,1,{f,1115}}. % do_parse_xml/1
    {test,is_eq_exact,{f,1112},[{x,0},{literal,<<" ">>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1112}.
    {badmatch,{x,0}}.
  {label,1113}.
    {line,[{location,"bs_match_r25_SUITE.erl",2073}]}.
    {badmatch,{x,0}}.


{function, do_parse_xml, 1, 1115}.
  {label,1114}.
    {line,[{location,"bs_match_r25_SUITE.erl",2077}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_parse_xml},1}.
  {label,1115}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_match_string,{f,1114},[{x,1},40,{string,<<"<?xml">>}]}.
    {allocate,2,2}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {bs_get_tail,{x,1},{y,0},2}.
    {move,{y,0},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2081}]}.
    {call,1,{f,1119}}. % is_next_char_whitespace/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1116},[{x,0},{atom,true}]}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2085}]}.
    {call,1,{f,1686}}. % id/1
    {jump,{f,1117}}.
  {label,1116}.
    {move,{y,1},{x,0}}.
  {label,1117}.
    {call_last,1,{f,1686},2}. % id/1


{function, is_next_char_whitespace, 1, 1119}.
  {label,1118}.
    {line,[{location,"bs_match_r25_SUITE.erl",2089}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,is_next_char_whitespace},1}.
  {label,1119}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_utf8,
          {f,1118},
          2,
          [{tr,{x,1},{t_bs_context,8}},
           {field_flags,[{anno,[2089,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {bif,'=:=',{f,0},[{tr,{x,1},{t_integer,{0,1114111}}},{integer,32}],{x,0}}.
    return.


{function, get_payload, 1, 1121}.
  {label,1120}.
    {line,[{location,"bs_match_r25_SUITE.erl",2096}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,get_payload},1}.
  {label,1121}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,{ext_header,17,<<0,0,0,0,13,117>>}},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2097}]}.
    {call,1,{f,1126}}. % do_get_payload/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {test,is_eq_exact,
          {f,1124},
          [{tr,{x,0},{t_bitstring,16,false}},{literal,<<0,0,0,0,13,117>>}]}.
    {'catch',{y,0},{f,1122}}.
    {move,{literal,{ext_header,17,undefined}},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",2098}]}.
    {call,1,{f,1126}}. % do_get_payload/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
  {label,1122}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1123},[{x,0},2,{atom,'EXIT'}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,1123}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",2098}]}.
    {badmatch,{x,0}}.
  {label,1124}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",2097}]}.
    {badmatch,{x,0}}.


{function, do_get_payload, 1, 1126}.
  {label,1125}.
    {line,[{location,"bs_match_r25_SUITE.erl",2101}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_get_payload},1}.
  {label,1126}.
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
    {test,bs_start_match3,{f,1127},1,[{x,0}],{x,1}}.
    {test,bs_test_tail2,{f,1127},[{x,1},48]}.
    return.
  {label,1127}.
    {line,[{location,"bs_match_r25_SUITE.erl",2104}]}.
    {badmatch,{x,0}}.


{function, escape, 1, 1129}.
  {label,1128}.
    {line,[{location,"bs_match_r25_SUITE.erl",2107}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,escape},1}.
  {label,1129}.
    {allocate,0,0}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2108}]}.
    {call,2,{f,1136}}. % escape/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,1134},
          [{tr,{x,0},{t_integer,{0,'+inf'}}},{integer,0}]}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<128>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2109}]}.
    {call,2,{f,1136}}. % escape/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,1133},
          [{tr,{x,0},{t_integer,{0,'+inf'}}},{integer,1}]}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<128,255>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2110}]}.
    {call,2,{f,1136}}. % escape/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,1132},
          [{tr,{x,0},{t_integer,{0,'+inf'}}},{integer,2}]}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2111}]}.
    {call,2,{f,1136}}. % escape/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,1131},
          [{tr,{x,0},{t_integer,{0,'+inf'}}},{integer,42}]}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<"*\b">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2112}]}.
    {call,2,{f,1136}}. % escape/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,1130},
          [{tr,{x,0},{t_integer,{0,'+inf'}}},{integer,50}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1130}.
    {badmatch,{x,0}}.
  {label,1131}.
    {line,[{location,"bs_match_r25_SUITE.erl",2111}]}.
    {badmatch,{x,0}}.
  {label,1132}.
    {line,[{location,"bs_match_r25_SUITE.erl",2110}]}.
    {badmatch,{x,0}}.
  {label,1133}.
    {line,[{location,"bs_match_r25_SUITE.erl",2109}]}.
    {badmatch,{x,0}}.
  {label,1134}.
    {line,[{location,"bs_match_r25_SUITE.erl",2108}]}.
    {badmatch,{x,0}}.


{function, escape, 2, 1136}.
  {label,1135}.
    {line,[{location,"bs_match_r25_SUITE.erl",2115}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,escape},2}.
  {label,1136}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,'+inf'}}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,1138},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2115,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,0},{x,0},3}.
    {test,is_ge,{f,1137},[{tr,{x,2},{t_integer,{0,255}}},{integer,127}]}.
    {line,[{location,"bs_match_r25_SUITE.erl",2116}]}.
    {gc_bif,'+',{f,0},2,[{tr,{x,1},{t_integer,{0,'+inf'}}},{integer,1}],{x,1}}.
    {call_only,2,{f,1136}}. % escape/2
  {label,1137}.
    {line,[{location,"bs_match_r25_SUITE.erl",2118}]}.
    {gc_bif,'+',
            {f,0},
            3,
            [{tr,{x,1},{t_integer,{0,'+inf'}}},{tr,{x,2},{t_integer,{0,126}}}],
            {x,1}}.
    {call_only,2,{f,1136}}. % escape/2
  {label,1138}.
    {move,{x,1},{x,0}}.
    return.


{function, num_slots_different, 1, 1140}.
  {label,1139}.
    {line,[{location,"bs_match_r25_SUITE.erl",2123}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,num_slots_different},1}.
  {label,1140}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",2131}]}.
    {call,1,{f,1774}}. % '-num_slots_different/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {'catch',{y,3},{f,1141}}.
    {move,{literal,<<"default">>},{x,1}}.
    {move,{literal,<<"Remove">>},{x,2}}.
    {move,{literal,<<"d">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2133}]}.
    {call,3,{f,1150}}. % lgettext/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[ok]},
                                     2 => {t_bitstring,8,false}}}}]}}.
  {label,1141}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,1148},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,2},{f,1142}}.
    {move,{literal,<<"default">>},{x,1}}.
    {move,{literal,<<"Remove">>},{x,2}}.
    {move,nil,{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_r25_SUITE.erl",2134}]}.
    {call,3,{f,1150}}. % lgettext/3
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1142}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,1147},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,1},{f,1143}}.
    {move,{literal,<<"def">>},{x,1}}.
    {move,{literal,<<"Remove">>},{x,2}}.
    {move,{literal,<<"de">>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r25_SUITE.erl",2135}]}.
    {call,3,{f,1150}}. % lgettext/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[ok]},
                                     2 => {t_bitstring,8,false}}}}]}}.
  {label,1143}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,1146},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,0},{f,1144}}.
    {move,{literal,<<"default">>},{x,1}}.
    {move,{literal,<<"Res">>},{x,2}}.
    {move,{literal,<<"de">>},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r25_SUITE.erl",2136}]}.
    {call,3,{f,1150}}. % lgettext/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[ok]},
                                     2 => {t_bitstring,8,false}}}}]}}.
  {label,1144}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1145},[{x,0},2,{atom,'EXIT'}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,4}.
    return.
  {label,1145}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",2136}]}.
    {badmatch,{x,0}}.
  {label,1146}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",2135}]}.
    {badmatch,{x,0}}.
  {label,1147}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",2134}]}.
    {badmatch,{x,0}}.
  {label,1148}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2133}]}.
    {badmatch,{x,0}}.


{function, lgettext, 3, 1150}.
  {label,1149}.
    {line,[{location,"bs_match_r25_SUITE.erl",2140}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,lgettext},3}.
  {label,1150}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,nil,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,8,false}}]}}.
    {test,bs_start_match3,{f,1149},3,[{x,0}],{x,3}}.
    {test,bs_match_string,{f,1149},[{x,3},16,{string,<<"de">>}]}.
    {test,bs_test_tail2,{f,1149},[{x,3},0]}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,3}}.
    {test,bs_get_integer2,
          {f,1149},
          4,
          [{tr,{x,3},{t_bs_context,8}},
           {integer,16},
           1,
           {field_flags,[{anno,[2140,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {select_val,{tr,{x,4},{t_integer,{0,65535}}},
                {f,1149},
                {list,[{integer,25701},{f,1153},{integer,28257},{f,1151}]}}.
  {label,1151}.
    {test,bs_match_string,{f,1149},[{x,3},64,{string,<<"vigation">>}]}.
    {test,bs_test_tail2,{f,1149},[{x,3},0]}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,3}}.
    {test,bs_match_string,{f,1149},[{x,3},16,{string,<<"Re">>}]}.
    {test,bs_get_integer2,
          {f,1149},
          4,
          [{tr,{x,3},{t_bs_context,8}},
           {integer,16},
           1,
           {field_flags,[{anno,[2150,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {select_val,{tr,{x,4},{t_integer,{0,65535}}},
                {f,1149},
                {list,[{integer,29551},{f,1152},{integer,29557},{f,1154}]}}.
  {label,1152}.
    {test,bs_match_string,{f,1149},[{x,3},40,{string,<<"urces">>}]}.
    {test,bs_test_tail2,{f,1149},[{x,3},0]}.
    {move,{literal,{ok,<<"Ressourcen">>}},{x,0}}.
    return.
  {label,1153}.
    {test,bs_match_string,{f,1149},[{x,3},40,{string,<<"fault">>}]}.
    {test,bs_test_tail2,{f,1149},[{x,3},0]}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,3}}.
    {test,bs_match_string,{f,1149},[{x,3},16,{string,<<"Re">>}]}.
    {test,bs_get_integer2,
          {f,1149},
          4,
          [{tr,{x,3},{t_bs_context,8}},
           {integer,16},
           1,
           {field_flags,[{anno,[2140,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {select_val,{tr,{x,4},{t_integer,{0,65535}}},
                {f,1149},
                {list,[{integer,28015},
                       {f,1156},
                       {integer,29541},
                       {f,1155},
                       {integer,29557},
                       {f,1154}]}}.
  {label,1154}.
    {test,bs_match_string,{f,1149},[{x,3},24,{string,<<"lts">>}]}.
    {test,bs_test_tail2,{f,1149},[{x,3},0]}.
    {move,{literal,{ok,<<"Ergebnisse">>}},{x,0}}.
    return.
  {label,1155}.
    {test,bs_match_string,{f,1149},[{x,3},48,{string,<<"rvatio">>}]}.
    {test,bs_test_tail2,{f,1149},[{x,3},0]}.
    {move,{literal,{ok,<<"a">>}},{x,0}}.
    return.
  {label,1156}.
    {test,bs_match_string,{f,1149},[{x,3},16,{string,<<"ve">>}]}.
    {bs_get_position,{x,3},{x,4},4}.
    {test,bs_match_string,{f,1159},[{x,3},48,{string,<<" from ">>}]}.
    {test,bs_get_integer2,
          {f,1149},
          5,
          [{tr,{x,3},{t_bs_context,8}},
           {integer,16},
           1,
           {field_flags,[{anno,[2142,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {select_val,{tr,{x,5},{t_integer,{0,65535}}},
                {f,1159},
                {list,[{integer,27753},{f,1158},{integer,29800},{f,1157}]}}.
  {label,1157}.
    {test,bs_match_string,{f,1149},[{x,3},48,{string,<<"e list">>}]}.
    {test,bs_test_tail2,{f,1159},[{x,3},0]}.
    {move,{literal,{ok,<<"a">>}},{x,0}}.
    return.
  {label,1158}.
    {test,bs_match_string,{f,1149},[{x,3},16,{string,<<"st">>}]}.
    {test,bs_test_tail2,{f,1159},[{x,3},0]}.
    {move,{literal,{ok,<<"a">>}},{x,0}}.
    return.
  {label,1159}.
    {bs_set_position,{x,3},{x,4}}.
    {test,bs_test_tail2,{f,1149},[{x,3},0]}.
    {move,{literal,{ok,<<"a">>}},{x,0}}.
    return.


{function, beam_bsm, 1, 1161}.
  {label,1160}.
    {line,[{location,"bs_match_r25_SUITE.erl",2156}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,beam_bsm},1}.
  {label,1161}.
    {allocate,0,0}.
    {move,{literal,[1,0,1,1]},{x,1}}.
    {move,{literal,<<11:4>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2157}]}.
    {call,2,{f,1172}}. % check_bitstring_list/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1170},[{x,0},{atom,true}]}.
    {move,{literal,[0]},{x,1}}.
    {move,{literal,<<11:4>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2158}]}.
    {call,2,{f,1172}}. % check_bitstring_list/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1162},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,1162}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2160}]}.
    {call,1,{f,1176}}. % bsm_validate_scheme/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1169},[{x,0},{atom,true}]}.
    {move,{literal,<<5,10>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2161}]}.
    {call,1,{f,1176}}. % bsm_validate_scheme/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1168},[{x,0},{atom,true}]}.
    {move,{literal,<<5,10,11,12>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2162}]}.
    {call,1,{f,1176}}. % bsm_validate_scheme/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1163},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,1163}.
    {move,nil,{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2163}]}.
    {call,1,{f,1176}}. % bsm_validate_scheme/1
    {'%',{var_info,{x,0},[{type,{t_atom,[true]}}]}}.
    {move,{literal,[5,10]},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2164}]}.
    {call,1,{f,1176}}. % bsm_validate_scheme/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1167},[{x,0},{atom,true}]}.
    {move,{literal,[5,6,7]},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2165}]}.
    {call,1,{f,1176}}. % bsm_validate_scheme/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1164},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,1164}.
    {move,nil,{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2167}]}.
    {call,2,{f,1185}}. % bsm_must_save_and_not_save/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,1166},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<1,2,3>>}]}.
    {test_heap,{alloc,[{words,4},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1772},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_number,any}}]}}.
    {put_list,{x,0},nil,{x,1}}.
    {put_list,{x,0},{x,1},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2169}]}.
    {call,2,{f,1185}}. % bsm_must_save_and_not_save/2
    {'%',{var_info,{x,0},
                   [{type,{t_cons,{t_number,any},{t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,1165},
          [{tr,{x,0},{t_cons,{t_number,any},{t_bitstring,8,false}}},
           {literal,[2,4|<<3>>]}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1165}.
    {badmatch,{x,0}}.
  {label,1166}.
    {line,[{location,"bs_match_r25_SUITE.erl",2167}]}.
    {badmatch,{x,0}}.
  {label,1167}.
    {line,[{location,"bs_match_r25_SUITE.erl",2164}]}.
    {badmatch,{atom,false}}.
  {label,1168}.
    {line,[{location,"bs_match_r25_SUITE.erl",2161}]}.
    {badmatch,{atom,false}}.
  {label,1169}.
    {line,[{location,"bs_match_r25_SUITE.erl",2160}]}.
    {badmatch,{atom,false}}.
  {label,1170}.
    {line,[{location,"bs_match_r25_SUITE.erl",2157}]}.
    {badmatch,{atom,false}}.


{function, check_bitstring_list, 2, 1172}.
  {label,1171}.
    {line,[{location,"bs_match_r25_SUITE.erl",2173}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,check_bitstring_list},2}.
  {label,1172}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{0,1}},nil}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {test,bs_get_integer2,
          {f,1173},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,1},
           1,
           {field_flags,[{anno,[2173,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_tail,{x,0},{x,4},4}.
    {test,is_nonempty_list,{f,1173},[{x,1}]}.
    {get_list,{x,1},{x,5},{x,6}}.
    {test,is_eq_exact,
          {f,1173},
          [{tr,{x,5},{t_integer,{0,1}}},{tr,{x,3},{t_integer,{0,1}}}]}.
    {move,{x,6},{x,1}}.
    {move,{x,4},{x,0}}.
    {call_only,2,{f,1172}}. % check_bitstring_list/2
  {label,1173}.
    {bs_set_position,{x,0},{x,2}}.
    {test,bs_test_tail2,{f,1174},[{x,0},0]}.
    {bif,'=:=',{f,0},[{tr,{x,1},{t_list,{t_integer,{0,1}},nil}},nil],{x,0}}.
    return.
  {label,1174}.
    {move,{atom,false},{x,0}}.
    return.


{function, bsm_validate_scheme, 1, 1176}.
  {label,1175}.
    {line,[{location,"bs_match_r25_SUITE.erl",2180}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bsm_validate_scheme},1}.
  {label,1176}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,
                                   {t_list,{t_integer,{5,10}},nil},
                                   none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,bs_start_match3,{f,1178},1,[{x,0}],{x,1}}.
    {test,bs_test_tail2,{f,1177},[{x,1},0]}.
    {move,{atom,true},{x,0}}.
    return.
  {label,1177}.
    {test,bs_get_integer2,
          {f,1175},
          2,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2187,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {allocate,1,3}.
    {init_yregs,{list,[{y,0}]}}.
    {bs_get_tail,{x,1},{y,0},3}.
    {move,{x,2},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2188}]}.
    {call,1,{f,1183}}. % bsm_is_scheme/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1180},[{x,0},{atom,true}]}.
    {jump,{f,1179}}.
  {label,1178}.
    {test,is_nonempty_list,{f,1181},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{x,0},{y,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2182}]}.
    {call,1,{f,1183}}. % bsm_is_scheme/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1180},[{x,0},{atom,true}]}.
  {label,1179}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,1176},1}. % bsm_validate_scheme/1
  {label,1180}.
    {move,{atom,false},{x,0}}.
    {deallocate,1}.
    return.
  {label,1181}.
    {move,{atom,true},{x,0}}.
    return.


{function, bsm_is_scheme, 1, 1183}.
  {label,1182}.
    {line,[{location,"bs_match_r25_SUITE.erl",2193}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bsm_is_scheme},1}.
  {label,1183}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2194}]}.
    {gc_bif,'rem',{f,0},1,[{tr,{x,0},{t_integer,{0,255}}},{integer,5}],{x,0}}.
    {bif,'=:=',{f,0},[{tr,{x,0},{t_integer,{0,4}}},{integer,0}],{x,0}}.
    return.


{function, bsm_must_save_and_not_save, 2, 1185}.
  {label,1184}.
    {line,[{location,"bs_match_r25_SUITE.erl",2197}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bsm_must_save_and_not_save},2}.
  {label,1185}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_list,
                     {t_fun,1,{'-beam_bsm/1-fun-0-',1},{t_number,any}},
                     nil}}]}}.
    {test,is_nil,
          {f,1186},
          [{tr,{x,1},
               {t_list,{t_fun,1,{'-beam_bsm/1-fun-0-',1},{t_number,any}},
                       nil}}]}.
    return.
  {label,1186}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,2}}.
    {test,bs_get_integer2,
          {f,1184},
          3,
          [{tr,{x,2},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2199,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {allocate,2,4}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {bs_get_tail,{x,2},{y,1},4}.
    {get_tl,{x,1},{y,0}}.
    {move,{x,3},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2200}]}.
    {call,1,{f,1772}}. % '-beam_bsm/1-fun-0-'/1
    {'%',{var_info,{x,0},[{type,{t_number,any}}]}}.
    {swap,{y,1},{x,0}}.
    {move,{y,0},{x,1}}.
    {trim,1,1}.
    {call,2,{f,1185}}. % bsm_must_save_and_not_save/2
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


{function, guard, 1, 1188}.
  {label,1187}.
    {line,[{location,"bs_match_r25_SUITE.erl",2204}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,guard},1}.
  {label,1188}.
    {allocate,0,0}.
    {move,{literal,{a,b}},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2205}]}.
    {call,1,{f,1686}}. % id/1
    {move,{literal,{1,2,3}},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2206}]}.
    {call,2,{f,1190}}. % guard_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,#{}},{x,1}}.
    {move,{literal,<<"*">>},{x,0}}.
    {call_last,2,{f,1192},0}. % guard_2/2


{function, guard_1, 2, 1190}.
  {label,1189}.
    {line,[{location,"bs_match_r25_SUITE.erl",2211}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,guard_1},2}.
  {label,1190}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,{1,1}},
                                     2 => {t_integer,{2,2}},
                                     3 => {t_integer,{3,3}}}}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,2}}.
    {test,bs_get_integer2,
          {f,1189},
          3,
          [{tr,{x,2},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2211,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,1189},
          4,
          [{tr,{x,2},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2211,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_integer2,
          {f,1189},
          5,
          [{tr,{x,2},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2211,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_test_tail2,{f,1189},[{x,2},0]}.
    {test_heap,4,6}.
    {put_tuple2,{x,2},{list,[{x,3},{x,4},{x,5}]}}.
    {test,is_eq_exact,
          {f,1189},
          [{tr,{x,2},
               {t_tuple,3,true,
                        #{1 => {t_integer,{0,255}},
                          2 => {t_integer,{0,255}},
                          3 => {t_integer,{0,255}}}}},
           {literal,{1,2,3}}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, guard_2, 2, 1192}.
  {label,1191}.
    {line,[{location,"bs_match_r25_SUITE.erl",2215}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,guard_2},2}.
  {label,1192}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_map,none,none}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,2}}.
    {test,bs_test_tail2,{f,1191},[{x,2},8]}.
    {put_map_assoc,{f,0},{literal,#{}},{x,2},2,{list,[nil,{literal,#{}}]}}.
    {test,is_eq_exact,
          {f,1191},
          [{tr,{x,2},{t_map,nil,{t_map,none,none}}},{literal,#{[] => #{}}}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, is_ascii, 1, 1194}.
  {label,1193}.
    {line,[{location,"bs_match_r25_SUITE.erl",2218}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,is_ascii},1}.
  {label,1194}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2219}]}.
    {call,1,{f,1203}}. % do_is_ascii/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1201},[{x,0},{atom,true}]}.
    {move,{literal,<<"string">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",2220}]}.
    {call,1,{f,1203}}. % do_is_ascii/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1200},[{x,0},{atom,true}]}.
    {move,{literal,<<208,128>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",2221}]}.
    {call,1,{f,1203}}. % do_is_ascii/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1195},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,1195}.
    {'catch',{y,1},{f,1196}}.
    {move,{literal,<<65,0:3>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",2222}]}.
    {call,1,{f,1203}}. % do_is_ascii/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
  {label,1196}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,1199},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1199},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,0},{f,1197}}.
    {move,{literal,<<128,0:3>>},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r25_SUITE.erl",2223}]}.
    {call,1,{f,1203}}. % do_is_ascii/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
  {label,1197}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1198},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1198},[{x,1},2,{atom,function_clause}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,1198}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",2223}]}.
    {badmatch,{x,0}}.
  {label,1199}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",2222}]}.
    {badmatch,{x,0}}.
  {label,1200}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",2220}]}.
    {badmatch,{atom,false}}.
  {label,1201}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",2219}]}.
    {badmatch,{atom,false}}.


{function, do_is_ascii, 1, 1203}.
  {label,1202}.
    {line,[{location,"bs_match_r25_SUITE.erl",2226}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_is_ascii},1}.
  {label,1203}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_test_tail2,{f,1204},[{x,1},0]}.
    {move,{atom,true},{x,0}}.
    return.
  {label,1204}.
    {test,bs_get_integer2,
          {f,1202},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2228,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,1202},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {atom,all},
           8,
           {field_flags,[{anno,[2228,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,is_ge,{f,1205},[{tr,{x,2},{t_integer,{0,255}}},{integer,128}]}.
    {move,{atom,false},{x,0}}.
    return.
  {label,1205}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,1203}}. % do_is_ascii/1


{function, non_opt_eq, 1, 1207}.
  {label,1206}.
    {line,[{location,"bs_match_r25_SUITE.erl",2235}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,non_opt_eq},1}.
  {label,1207}.
    {allocate,0,0}.
    {move,{literal,<<>>},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2236}]}.
    {call,2,{f,1211}}. % non_opt_eq/2
    {'%',{var_info,{x,0},[{type,{t_atom,[true]}}]}}.
    {move,{literal,<<"a">>},{x,1}}.
    {move,{literal,"a"},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2237}]}.
    {call,2,{f,1211}}. % non_opt_eq/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1209},[{x,0},{atom,true}]}.
    {move,{literal,<<"b">>},{x,1}}.
    {move,{literal,"a"},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2238}]}.
    {call,2,{f,1211}}. % non_opt_eq/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1208},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,1208}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1209}.
    {line,[{location,"bs_match_r25_SUITE.erl",2237}]}.
    {badmatch,{atom,false}}.


{function, non_opt_eq, 2, 1211}.
  {label,1210}.
    {line,[{location,"bs_match_r25_SUITE.erl",2244}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,non_opt_eq},2}.
  {label,1211}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{97,97}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,2}}.
    {bs_get_position,{x,2},{x,3},3}.
    {test,bs_get_integer2,
          {f,1213},
          4,
          [{tr,{x,2},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2244,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {bs_get_tail,{x,2},{x,5},5}.
    {test,is_nonempty_list,{f,1213},[{x,0}]}.
    {get_tl,{x,0},{x,0}}.
    {test,is_eq_exact,{f,1212},[{tr,{x,4},{t_integer,{0,255}}},{integer,97}]}.
    {move,{x,5},{x,1}}.
    {call_only,2,{f,1211}}. % non_opt_eq/2
  {label,1212}.
    {move,{atom,false},{x,0}}.
    return.
  {label,1213}.
    {bs_set_position,{x,2},{x,3}}.
    {test,bs_test_tail2,{f,1210},[{x,2},0]}.
    {test,is_nil,{f,1210},[{tr,{x,0},{t_list,{t_integer,{97,97}},nil}}]}.
    {move,{atom,true},{x,0}}.
    return.


{function, erl_689, 1, 1215}.
  {label,1214}.
    {line,[{location,"bs_match_r25_SUITE.erl",2253}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,erl_689},1}.
  {label,1215}.
    {allocate,0,0}.
    {move,{atom,bs_match_r25_SUITE},{x,1}}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2254}]}.
    {call,2,{f,1221}}. % do_erl_689_1/2
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
        {f,1219},
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
    {line,[{location,"bs_match_r25_SUITE.erl",2255}]}.
    {call,2,{f,1221}}. % do_erl_689_1/2
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
        {f,1218},
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
    {line,[{location,"bs_match_r25_SUITE.erl",2256}]}.
    {call,2,{f,1224}}. % do_erl_689_2/2
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
        {f,1217},
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
    {line,[{location,"bs_match_r25_SUITE.erl",2257}]}.
    {call,2,{f,1224}}. % do_erl_689_2/2
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
        {f,1216},
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
  {label,1216}.
    {badmatch,{x,0}}.
  {label,1217}.
    {line,[{location,"bs_match_r25_SUITE.erl",2256}]}.
    {badmatch,{x,0}}.
  {label,1218}.
    {line,[{location,"bs_match_r25_SUITE.erl",2255}]}.
    {badmatch,{x,0}}.
  {label,1219}.
    {line,[{location,"bs_match_r25_SUITE.erl",2254}]}.
    {badmatch,{x,0}}.


{function, do_erl_689_1, 2, 1221}.
  {label,1220}.
    {line,[{location,"bs_match_r25_SUITE.erl",2260}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_erl_689_1},2}.
  {label,1221}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[bs_match_r25_SUITE]}}]}}.
    {allocate,1,2}.
    {move,{x,0},{y,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2261}]}.
    {call,2,{f,1227}}. % do_erl_689_1a/2
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
    {line,[{location,"bs_match_r25_SUITE.erl",2262}]}.
    {call,2,{f,1231}}. % do_erl_689_1b/2
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
        {f,1222},
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
  {label,1222}.
    {badmatch,{x,0}}.


{function, do_erl_689_2, 2, 1224}.
  {label,1223}.
    {line,[{location,"bs_match_r25_SUITE.erl",2264}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_erl_689_2},2}.
  {label,1224}.
    {'%',{var_info,{x,0},[{type,{t_atom,[bs_match_r25_SUITE]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2265}]}.
    {call,2,{f,1235}}. % do_erl_689_2a/2
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
    {line,[{location,"bs_match_r25_SUITE.erl",2266}]}.
    {call,2,{f,1239}}. % do_erl_689_2b/2
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
  {label,1225}.
    {badmatch,{x,0}}.


{function, do_erl_689_1a, 2, 1227}.
  {label,1226}.
    {line,[{location,"bs_match_r25_SUITE.erl",2268}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_erl_689_1a},2}.
  {label,1227}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[bs_match_r25_SUITE]}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,2}}.
    {test,bs_get_integer2,
          {f,1226},
          3,
          [{tr,{x,2},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2268,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_tail,{x,2},{x,0},4}.
    {test,is_eq_exact,{f,1228},[{tr,{x,3},{t_integer,{0,255}}},{integer,0}]}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{literal,{0,0,0}},{x,0}]}}.
    return.
  {label,1228}.
    {bs_start_match4,{atom,no_fail},4,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,1229},
          4,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,16},
           1,
           {field_flags,[{anno,[2274,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,little]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1229},
          4,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2274,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_integer2,
          {f,1229},
          5,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2274,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {bs_get_tail,{x,1},{x,1},6}.
    {test,is_eq_exact,{f,1229},[{tr,{x,3},{t_integer,{1,255}}},{integer,4}]}.
    {test_heap,7,6}.
    {put_tuple2,{x,0},{list,[{x,2},{x,4},{x,5}]}}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    return.
  {label,1229}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,0},{x,3}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2269}]}.
    {case_end,{x,0}}.


{function, do_erl_689_1b, 2, 1231}.
  {label,1230}.
    {line,[{location,"bs_match_r25_SUITE.erl",2278}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_erl_689_1b},2}.
  {label,1231}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[bs_match_r25_SUITE]}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,2}}.
    {test,bs_get_integer2,
          {f,1230},
          3,
          [{tr,{x,2},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2278,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_tail,{x,2},{x,0},4}.
    {test,is_eq_exact,{f,1232},[{tr,{x,3},{t_integer,{0,255}}},{integer,0}]}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2283}]}.
    {call,1,{f,1686}}. % id/1
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{literal,{0,0,0}},{y,0}]}}.
    {deallocate,1}.
    return.
  {label,1232}.
    {bs_start_match4,{atom,no_fail},4,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,1233},
          4,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,16},
           1,
           {field_flags,[{anno,[2285,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,little]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1233},
          4,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2285,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_integer2,
          {f,1233},
          5,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2285,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {bs_get_tail,{x,1},{x,1},6}.
    {test,is_eq_exact,{f,1233},[{tr,{x,3},{t_integer,{1,255}}},{integer,4}]}.
    {allocate,4,6}.
    {move,{x,1},{y,0}}.
    {move,{x,5},{y,1}}.
    {move,{x,4},{y,2}}.
    {move,{x,2},{y,3}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2286}]}.
    {call,1,{f,1686}}. % id/1
    {test_heap,7,0}.
    {put_tuple2,{x,0},{list,[{y,3},{y,2},{y,1}]}}.
    {put_tuple2,{x,0},{list,[{x,0},{y,0}]}}.
    {deallocate,4}.
    return.
  {label,1233}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,0},{x,3}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2279}]}.
    {case_end,{x,0}}.


{function, do_erl_689_2a, 2, 1235}.
  {label,1234}.
    {line,[{location,"bs_match_r25_SUITE.erl",2290}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_erl_689_2a},2}.
  {label,1235}.
    {'%',{var_info,{x,0},[{type,{t_atom,[bs_match_r25_SUITE]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,2}}.
    {test,bs_get_integer2,
          {f,1234},
          3,
          [{tr,{x,2},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2290,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_tail,{x,2},{x,0},4}.
    {test,is_eq_exact,{f,1236},[{tr,{x,3},{t_integer,{0,255}}},{integer,0}]}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{literal,{0,0,0}},{x,0}]}}.
    return.
  {label,1236}.
    {bs_start_match4,{atom,no_fail},4,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,1237},
          4,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,16},
           1,
           {field_flags,[{anno,[2296,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,little]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1237},
          4,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2296,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_integer2,
          {f,1237},
          5,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2296,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {bs_get_tail,{x,1},{x,1},6}.
    {test,is_eq_exact,{f,1237},[{tr,{x,3},{t_integer,{1,255}}},{integer,4}]}.
    {test_heap,7,6}.
    {put_tuple2,{x,0},{list,[{x,2},{x,4},{x,5}]}}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    return.
  {label,1237}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,3},{x,0}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2291}]}.
    {case_end,{x,0}}.


{function, do_erl_689_2b, 2, 1239}.
  {label,1238}.
    {line,[{location,"bs_match_r25_SUITE.erl",2300}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_erl_689_2b},2}.
  {label,1239}.
    {'%',{var_info,{x,0},[{type,{t_atom,[bs_match_r25_SUITE]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,2}}.
    {test,bs_get_integer2,
          {f,1238},
          3,
          [{tr,{x,2},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2300,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_tail,{x,2},{x,0},4}.
    {test,is_eq_exact,{f,1240},[{tr,{x,3},{t_integer,{0,255}}},{integer,0}]}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2305}]}.
    {call,1,{f,1686}}. % id/1
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{literal,{0,0,0}},{y,0}]}}.
    {deallocate,1}.
    return.
  {label,1240}.
    {bs_start_match4,{atom,no_fail},4,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,1241},
          4,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,16},
           1,
           {field_flags,[{anno,[2307,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,little]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1241},
          4,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2307,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_integer2,
          {f,1241},
          5,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2307,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {bs_get_tail,{x,1},{x,1},6}.
    {test,is_eq_exact,{f,1241},[{tr,{x,3},{t_integer,{1,255}}},{integer,4}]}.
    {allocate,4,6}.
    {move,{x,1},{y,0}}.
    {move,{x,5},{y,1}}.
    {move,{x,4},{y,2}}.
    {move,{x,2},{y,3}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2308}]}.
    {call,1,{f,1686}}. % id/1
    {test_heap,7,0}.
    {put_tuple2,{x,0},{list,[{y,3},{y,2},{y,1}]}}.
    {put_tuple2,{x,0},{list,[{x,0},{y,0}]}}.
    {deallocate,4}.
    return.
  {label,1241}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,3},{x,0}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2301}]}.
    {case_end,{x,0}}.


{function, bs_start_match2_defs, 1, 1243}.
  {label,1242}.
    {line,[{location,"bs_match_r25_SUITE.erl",2314}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bs_start_match2_defs},1}.
  {label,1243}.
    {allocate,0,0}.
    {move,{literal,<<"hello">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2315}]}.
    {call,1,{f,1247}}. % api_url/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,1,true,#{1 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
          {f,1245},
          [{tr,{x,0},{t_tuple,1,true,#{1 => {t_bitstring,8,false}}}},
           {literal,{<<"http://127.0.0.1:1234/vsaas/hello">>}}]}.
    {move,{literal,{https,"hello"}},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2316}]}.
    {call,1,{f,1247}}. % api_url/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,1,true,
                     #{1 => {t_cons,{t_integer,{46,118}},nil}}}}]}}.
    {test,is_eq_exact,
          {f,1244},
          [{tr,{x,0},
               {t_tuple,1,true,#{1 => {t_cons,{t_integer,{46,118}},nil}}}},
           {literal,{"https://127.0.0.1:4321/vsaas/hello"}}]}.
    {deallocate,0}.
    return.
  {label,1244}.
    {badmatch,{x,0}}.
  {label,1245}.
    {line,[{location,"bs_match_r25_SUITE.erl",2315}]}.
    {badmatch,{x,0}}.


{function, api_url, 1, 1247}.
  {label,1246}.
    {line,[{location,"bs_match_r25_SUITE.erl",2318}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,api_url},1}.
  {label,1247}.
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
        {f,1248},
        [{tr,{x,0},
             {t_union,none,none,none,
                 [{{2,{t_atom,[https]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[https]},
                         2 => {t_cons,{t_integer,{101,111}},nil}}}}],
                 {t_bitstring,8,false}}}]}.
    {line,[{location,"bs_match_r25_SUITE.erl",2320}]}.
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
  {label,1248}.
    {allocate,0,1}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {move,{literal,"https://127.0.0.1:4321/vsaas/"},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2321}]}.
    {call_ext,2,{extfunc,erlang,'++',2}}.
    {test_heap,2,1}.
    {put_tuple2,{x,0},{list,[{x,0}]}}.
    {deallocate,0}.
    return.


{function, check, 2, 1250}.
  {label,1249}.
    {line,[{location,"bs_match_r25_SUITE.erl",2324}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,check},2}.
  {label,1250}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",2325}]}.
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
          {f,1251},
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
  {label,1251}.
    {badmatch,{x,0}}.


{function, expression_before_match, 1, 1253}.
  {label,1252}.
    {line,[{location,"bs_match_r25_SUITE.erl",2329}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,expression_before_match},1}.
  {label,1253}.
    {test,is_list,{f,1252},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<0,1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2330}]}.
    {call,1,{f,1686}}. % id/1
    {test,bs_start_match3,{f,1255},1,[{x,0}],{x,1}}.
    {test,bs_skip_bits2,
          {f,1255},
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[2330,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,1255},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {atom,all},
           8,
           {field_flags,[{anno,[2330,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2331}]}.
    {call,1,{f,1257}}. % expression_before_match_1/1
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
        {f,1254},
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
  {label,1254}.
    {badmatch,{x,0}}.
  {label,1255}.
    {line,[{location,"bs_match_r25_SUITE.erl",2330}]}.
    {badmatch,{x,0}}.


{function, expression_before_match_1, 1, 1257}.
  {label,1256}.
    {line,[{location,"bs_match_r25_SUITE.erl",2334}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,expression_before_match_1},1}.
  {label,1257}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2335}]}.
    {call,1,{f,1686}}. % id/1
    {bs_start_match4,{atom,no_fail},1,{y,0},{x,1}}.
    {test,bs_match_string,{f,1258},[{x,1},8,{string,<<1>>}]}.
    {bs_get_tail,{x,1},{x,1},2}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {deallocate,1}.
    return.
  {label,1258}.
    {test,bs_test_tail2,{f,1259},[{x,1},0]}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{x,0},{atom,baz}]}}.
    {deallocate,1}.
    return.
  {label,1259}.
    {line,[{location,"bs_match_r25_SUITE.erl",2336}]}.
    {case_end,{y,0}}.


{function, restore_on_call, 1, 1261}.
  {label,1260}.
    {line,[{location,"bs_match_r25_SUITE.erl",2342}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,restore_on_call},1}.
  {label,1261}.
    {test,is_list,{f,1260},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<0,1,2>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2343}]}.
    {call,1,{f,1264}}. % restore_on_call_plain/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<0,120>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2344}]}.
    {call,1,{f,1271}}. % restore_on_call_match/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,1262},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<"x">>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1262}.
    {badmatch,{x,0}}.


{function, restore_on_call_plain, 1, 1264}.
  {label,1263}.
    {line,[{location,"bs_match_r25_SUITE.erl",2347}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,restore_on_call_plain},1}.
  {label,1264}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_match_string,{f,1263},[{x,1},8,{string,<<0>>}]}.
    {allocate,1,2}.
    {init_yregs,{list,[{y,0}]}}.
    {bs_get_tail,{x,1},{y,0},2}.
    {move,{y,0},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2348}]}.
    {call,1,{f,1268}}. % restore_on_call_plain_1/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,1266},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<2>>}]}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_match_r25_SUITE.erl",2350}]}.
    {call,1,{f,1268}}. % restore_on_call_plain_1/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,1265},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<2>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1265}.
    {badmatch,{x,0}}.
  {label,1266}.
    {line,[{location,"bs_match_r25_SUITE.erl",2348}]}.
    {badmatch,{x,0}}.


{function, restore_on_call_plain_1, 1, 1268}.
  {label,1267}.
    {line,[{location,"bs_match_r25_SUITE.erl",2353}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,restore_on_call_plain_1},1}.
  {label,1268}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_match_string,{f,1269},[{x,1},8,{string,<<1>>}]}.
    {bs_get_tail,{x,1},{x,0},2}.
    return.
  {label,1269}.
    return.


{function, restore_on_call_match, 1, 1271}.
  {label,1270}.
    {line,[{location,"bs_match_r25_SUITE.erl",2358}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,restore_on_call_match},1}.
  {label,1271}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_match_string,{f,1270},[{x,1},8,{string,<<0>>}]}.
    {allocate,1,2}.
    {init_yregs,{list,[{y,0}]}}.
    {bs_get_tail,{x,1},{y,0},2}.
    {move,{y,0},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2359}]}.
    {call,1,{f,1274}}. % skip_until_zero/1
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
          {f,1272},
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
  {label,1272}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, skip_until_zero, 1, 1274}.
  {label,1273}.
    {line,[{location,"bs_match_r25_SUITE.erl",2368}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,skip_until_zero},1}.
  {label,1274}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,1276},
          1,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2368,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,is_eq_exact,{f,1275},[{tr,{x,1},{t_integer,{0,255}}},{integer,0}]}.
    {bs_get_tail,{x,0},{x,0},1}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,skipped},{x,0}]}}.
    return.
  {label,1275}.
    {bs_get_tail,{x,0},{x,0},1}.
    {call_only,1,{f,1274}}. % skip_until_zero/1
  {label,1276}.
    {move,{atom,not_found},{x,0}}.
    return.


{function, restore_after_catch, 1, 1278}.
  {label,1277}.
    {line,[{location,"bs_match_r25_SUITE.erl",2376}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,restore_after_catch},1}.
  {label,1278}.
    {test,is_list,{f,1277},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<0,1>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2377}]}.
    {call,1,{f,1281}}. % restore_after_catch_1/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {test,is_eq_exact,
          {f,1279},
          [{tr,{x,0},{t_bitstring,16,false}},{literal,<<0,1>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1279}.
    {badmatch,{x,0}}.


{function, restore_after_catch_1, 1, 1281}.
  {label,1280}.
    {line,[{location,"bs_match_r25_SUITE.erl",2380}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,restore_after_catch_1},1}.
  {label,1281}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_tail,{x,0},{y,0},1}.
    {'try',{y,1},{f,1282}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2381}]}.
    {call,1,{f,1285}}. % throw_after_byte/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1282}.
    {try_case,{y,1}}.
    {test,is_eq_exact,
          {f,1283},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,throw}]}.
    {move,{y,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,1283}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.


{function, throw_after_byte, 1, 1285}.
  {label,1284}.
    {line,[{location,"bs_match_r25_SUITE.erl",2389}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,throw_after_byte},1}.
  {label,1285}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_skip_bits2,
          {f,1284},
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[2389,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {move,{atom,away},{x,1}}.
    {move,nil,{x,2}}.
    {move,{atom,throw},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2390}]}.
    {call_ext_only,3,{extfunc,erlang,raise,3}}.


{function, matches_on_parameter, 1, 1287}.
  {label,1286}.
    {line,[{location,"bs_match_r25_SUITE.erl",2392}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,matches_on_parameter},1}.
  {label,1287}.
    {test,is_list,{f,1286},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,<<"gurka">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2394}]}.
    {call,1,{f,1292}}. % matches_on_parameter_1/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_bitstring,8,false},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
          {f,1290},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_bitstring,8,false},
                          2 => {t_bitstring,8,false}}}},
           {literal,{<<"urka">>,<<"a">>}}]}.
    {'catch',{y,0},{f,1288}}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<"10001110101">>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",2395}]}.
    {call,2,{f,1296}}. % matches_on_parameter_2/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1288}.
    {catch_end,{y,0}}.
    {test,is_eq_exact,{f,1289},[{x,0},{atom,ok}]}.
    {deallocate,1}.
    return.
  {label,1289}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",2395}]}.
    {badmatch,{x,0}}.
  {label,1290}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",2394}]}.
    {badmatch,{x,0}}.


{function, matches_on_parameter_1, 1, 1292}.
  {label,1291}.
    {line,[{location,"bs_match_r25_SUITE.erl",2397}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,matches_on_parameter_1},1}.
  {label,1292}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_match_string,{f,1294},[{x,1},8,{string,<<"g">>}]}.
    {bs_get_tail,{x,1},{x,1},2}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,2}}.
    {test,bs_skip_bits2,
          {f,1293},
          [{x,2},
           {integer,16},
           1,
           {field_flags,[{anno,[2399,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_match_string,{f,1293},[{x,2},16,{string,<<"rk">>}]}.
    {bs_get_tail,{x,2},{x,0},3}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,1},{x,0}]}}.
    return.
  {label,1293}.
    {line,[{location,"bs_match_r25_SUITE.erl",2399}]}.
    {badmatch,{x,0}}.
  {label,1294}.
    {line,[{location,"bs_match_r25_SUITE.erl",2398}]}.
    {badmatch,{x,0}}.


{function, matches_on_parameter_2, 2, 1296}.
  {label,1295}.
    {line,[{location,"bs_match_r25_SUITE.erl",2402}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,matches_on_parameter_2},2}.
  {label,1296}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,'+inf'}}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,2}}.
    {test,bs_skip_bits2,
          {f,1298},
          [{x,2},
           {x,1},
           1,
           {field_flags,[{anno,[2403,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_skip_bits2,
          {f,1298},
          [{x,2},
           {integer,1},
           1,
           {field_flags,[{anno,[2403,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_get_tail,{x,2},{x,2},3}.
    {line,[{location,"bs_match_r25_SUITE.erl",2404}]}.
    {gc_bif,bit_size,{f,0},3,[{tr,{x,2},{t_bitstring,1,false}}],{x,2}}.
    {test,is_eq_exact,
          {f,1297},
          [{tr,{x,2},{t_integer,{0,288230376151711743}}},{integer,0}]}.
    {move,{atom,ok},{x,1}}.
    {move,nil,{x,2}}.
    {move,{atom,throw},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2405}]}.
    {call_ext_only,3,{extfunc,erlang,raise,3}}.
  {label,1297}.
    {line,[{location,"bs_match_r25_SUITE.erl",2406}]}.
    {gc_bif,'+',{f,0},2,[{tr,{x,1},{t_integer,{0,'+inf'}}},{integer,1}],{x,1}}.
    {call_only,2,{f,1296}}. % matches_on_parameter_2/2
  {label,1298}.
    {line,[{location,"bs_match_r25_SUITE.erl",2403}]}.
    {badmatch,{x,0}}.


{function, big_positions, 1, 1300}.
  {label,1299}.
    {line,[{location,"bs_match_r25_SUITE.erl",2409}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,big_positions},1}.
  {label,1300}.
    {test,is_list,{f,1299},[{x,0}]}.
    {line,[{location,"bs_match_r25_SUITE.erl",2413}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",2414}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",2416}]}.
    {call,1,{f,1306}}. % bp_start_match/1
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
          {f,1304},
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
    {line,[{location,"bs_match_r25_SUITE.erl",2417}]}.
    {call,1,{f,1306}}. % bp_start_match/1
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
          {f,1303},
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
    {line,[{location,"bs_match_r25_SUITE.erl",2418}]}.
    {call,1,{f,1310}}. % bp_getpos/1
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
          {f,1302},
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
    {line,[{location,"bs_match_r25_SUITE.erl",2419}]}.
    {call,1,{f,1310}}. % bp_getpos/1
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
          {f,1301},
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
  {label,1301}.
    {badmatch,{x,0}}.
  {label,1302}.
    {line,[{location,"bs_match_r25_SUITE.erl",2418}]}.
    {badmatch,{x,0}}.
  {label,1303}.
    {line,[{location,"bs_match_r25_SUITE.erl",2417}]}.
    {badmatch,{x,0}}.
  {label,1304}.
    {line,[{location,"bs_match_r25_SUITE.erl",2416}]}.
    {badmatch,{x,0}}.


{function, bp_start_match, 1, 1306}.
  {label,1305}.
    {line,[{location,"bs_match_r25_SUITE.erl",2427}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bp_start_match},1}.
  {label,1306}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {test,bs_skip_bits2,
          {f,1307},
          [{x,1},
           {integer,134217728},
           1,
           {field_flags,[{anno,[2427,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_get_tail,{x,1},{x,0},2}.
    {call_only,1,{f,1306}}. % bp_start_match/1
  {label,1307}.
    {test,bs_get_integer2,
          {f,1308},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,1},
           1,
           {field_flags,[{anno,[2428,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,1308},[{tr,{x,3},{t_integer,{0,1}}},{integer,1}]}.
    {test,bs_match_string,{f,1308},[{x,1},40,{string,<<"gurka">>}]}.
    {test,bs_get_integer2,
          {f,1308},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2428,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1308},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{atom,a},{x,3}]}}.
    return.
  {label,1308}.
    {bs_set_position,{x,1},{x,2}}.
    {test,bs_get_integer2,
          {f,1305},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,16},
           1,
           {field_flags,[{anno,[2429,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,1305},
          [{tr,{x,2},{t_integer,{0,65535}}},{integer,26725}]}.
    {test,bs_match_string,{f,1305},[{x,1},24,{string,<<"llo">>}]}.
    {test,bs_get_integer2,
          {f,1305},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2429,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1305},[{x,1},0]}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{atom,b},{x,2}]}}.
    return.


{function, bp_getpos, 1, 1310}.
  {label,1309}.
    {line,[{location,"bs_match_r25_SUITE.erl",2434}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bp_getpos},1}.
  {label,1310}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_skip_bits2,
          {f,1311},
          [{x,1},
           {integer,134217720},
           1,
           {field_flags,[{anno,[2434,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_get_tail,{x,1},{x,0},2}.
    {call_only,1,{f,1310}}. % bp_getpos/1
  {label,1311}.
    {test,bs_get_integer2,
          {f,1309},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2435,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_position,{x,1},{x,3},3}.
    {test,bs_get_integer2,
          {f,1312},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,1},
           1,
           {field_flags,[{anno,[2435,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,is_eq_exact,{f,1312},[{tr,{x,4},{t_integer,{0,1}}},{integer,1}]}.
    {test,bs_match_string,{f,1312},[{x,1},40,{string,<<"gurka">>}]}.
    {test,bs_get_integer2,
          {f,1312},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2435,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,1312},[{x,1},0]}.
    {test,is_eq_exact,
          {f,1312},
          [{tr,{x,4},{t_integer,{0,255}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{atom,a},{x,2}]}}.
    return.
  {label,1312}.
    {bs_set_position,{x,1},{x,3}}.
    {test,bs_get_integer2,
          {f,1309},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2436,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,1309},[{tr,{x,3},{t_integer,{0,255}}},{integer,104}]}.
    {test,bs_match_string,{f,1309},[{x,1},32,{string,<<"ello">>}]}.
    {test,bs_get_integer2,
          {f,1309},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2436,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1309},[{x,1},0]}.
    {test,is_eq_exact,
          {f,1309},
          [{tr,{x,3},{t_integer,{0,255}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{atom,b},{x,2}]}}.
    return.


{function, matching_meets_apply, 1, 1314}.
  {label,1313}.
    {line,[{location,"bs_match_r25_SUITE.erl",2438}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,matching_meets_apply},1}.
  {label,1314}.
    {allocate,0,0}.
    {move,nil,{x,1}}.
    {move,{literal,<<"/abc">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2439}]}.
    {call,2,{f,1319}}. % do_matching_meets_apply/2
    {test,is_eq_exact,{f,1317},[{x,0},{literal,<<"abc">>}]}.
    {move,{literal,{erlang,-42}},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2440}]}.
    {call,2,{f,1319}}. % do_matching_meets_apply/2
    {test,is_eq_exact,{f,1316},[{x,0},{integer,42}]}.
    {move,{literal,{erlang,-100}},{x,1}}.
    {move,{atom,no_binary},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2441}]}.
    {call,2,{f,1319}}. % do_matching_meets_apply/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,100}}}]}}.
    {test,is_eq_exact,{f,1315},[{tr,{x,0},{t_integer,{0,100}}},{integer,100}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1315}.
    {badmatch,{x,0}}.
  {label,1316}.
    {line,[{location,"bs_match_r25_SUITE.erl",2440}]}.
    {badmatch,{x,0}}.
  {label,1317}.
    {line,[{location,"bs_match_r25_SUITE.erl",2439}]}.
    {badmatch,{x,0}}.


{function, do_matching_meets_apply, 2, 1319}.
  {label,1318}.
    {line,[{location,"bs_match_r25_SUITE.erl",2444}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_matching_meets_apply},2}.
  {label,1319}.
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
    {test,bs_start_match3,{f,1320},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,1320},
          3,
          [{tr,{x,2},{t_bs_context,32}},
           {integer,8},
           1,
           {field_flags,[{anno,[2444,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,1320},[{tr,{x,3},{t_integer,{0,255}}},{integer,47}]}.
    {bs_get_tail,{x,2},{x,0},3}.
    {call_only,1,{f,1686}}. % id/1
  {label,1320}.
    {test,is_tuple,
          {f,1321},
          [{tr,{x,1},
               {t_union,none,nil,none,
                        [{{2,{t_atom,[erlang]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[erlang]},
                                     2 => {t_integer,{-100,-42}}}}}],
                        none}}]}.
    {get_tuple_element,{x,1},1,{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2455}]}.
    {call_ext_only,1,{extfunc,erlang,abs,1}}.
  {label,1321}.
    {move,nil,{x,1}}.
    {jump,{f,1318}}.


{function, exceptions_after_match_failure, 1, 1323}.
  {label,1322}.
    {line,[{location,"bs_match_r25_SUITE.erl",2459}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,exceptions_after_match_failure},
               1}.
  {label,1323}.
    {allocate,1,0}.
    {'catch',{y,0},{f,1324}}.
    {move,{atom,atom},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2460}]}.
    {call,1,{f,1327}}. % do_exceptions_after_match_failure/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1324}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1325},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1325},[{x,1},2,{atom,badarith}]}.
    {move,{literal,<<0,1,103,117,114,107,97>>},{x,0}}.
    {line,[{scope,[1,2]},{location,"bs_match_r25_SUITE.erl",2461}]}.
    {call,1,{f,1327}}. % do_exceptions_after_match_failure/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{float,2.0},{x,0}}.
    {call_last,1,{f,1327},1}. % do_exceptions_after_match_failure/1
  {label,1325}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",2460}]}.
    {badmatch,{x,0}}.


{function, do_exceptions_after_match_failure, 1, 1327}.
  {label,1326}.
    {line,[{location,"bs_match_r25_SUITE.erl",2464}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,do_exceptions_after_match_failure},
               1}.
  {label,1327}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[atom]},
                                   none,
                                   {t_float,{2.0,2.0}},
                                   none,
                                   {t_bitstring,8,false}}}]}}.
    {test,bs_start_match3,{f,1328},1,[{x,0}],{x,1}}.
    {test,bs_skip_bits2,
          {f,1328},
          [{x,1},
           {integer,16},
           1,
           {field_flags,[{anno,[2464,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_match_string,{f,1328},[{x,1},40,{string,<<"gurka">>}]}.
    {test,bs_test_tail2,{f,1328},[{x,1},0]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1328}.
    {line,[{location,"bs_match_r25_SUITE.erl",2467}]}.
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


{function, bad_phi_paths, 1, 1330}.
  {label,1329}.
    {line,[{location,"bs_match_r25_SUITE.erl",2472}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bad_phi_paths},1}.
  {label,1330}.
    {allocate,0,0}.
    {move,{literal,<<"gurka">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2473}]}.
    {call,1,{f,1686}}. % id/1
    {call,1,{f,1333}}. % bad_phi_paths_1/1
    {test,is_eq_exact,{f,1331},[{x,0},{literal,<<"gurka">>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1331}.
    {badmatch,{x,0}}.


{function, bad_phi_paths_1, 1, 1333}.
  {label,1332}.
    {line,[{location,"bs_match_r25_SUITE.erl",2476}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bad_phi_paths_1},1}.
  {label,1333}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {test,bs_start_match3,{f,1334},1,[{x,0}],{x,0}}.
    {test,bs_test_unit,{f,1336},[{x,0},8]}.
    {move,{y,0},{x,0}}.
    {jump,{f,1335}}.
  {label,1334}.
    {test,is_map,{f,1336},[{y,0}]}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2479}]}.
    {call,1,{f,1686}}. % id/1
  {label,1335}.
    {call_last,1,{f,1686},1}. % id/1
  {label,1336}.
    {line,[{location,"bs_match_r25_SUITE.erl",2477}]}.
    {case_end,{y,0}}.


{function, combine_empty_segments, 1, 1338}.
  {label,1337}.
    {line,[{location,"bs_match_r25_SUITE.erl",2483}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,combine_empty_segments},1}.
  {label,1338}.
    {allocate,0,0}.
    {move,{literal,<<0,1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2484}]}.
    {call,1,{f,1341}}. % combine_empty_segments_1/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,false}}]}}.
    {test,is_eq_exact,
          {f,1339},
          [{tr,{x,0},{t_bitstring,32,false}},{literal,<<0,1,2,3>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1339}.
    {badmatch,{x,0}}.


{function, combine_empty_segments_1, 1, 1341}.
  {label,1340}.
    {line,[{location,"bs_match_r25_SUITE.erl",2487}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,combine_empty_segments_1},1}.
  {label,1341}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_tail,{x,0},{x,0},1}.
    return.


{function, hangs_forever, 1, 1343}.
  {label,1342}.
    {line,[{location,"bs_match_r25_SUITE.erl",2494}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,hangs_forever},1}.
  {label,1343}.
    {allocate_heap,0,{alloc,[{words,1},{floats,0},{funs,1}]},1}.
    {make_fun3,{f,1770},0,0,{x,0},{list,[{x,0}]}}.
    {'%',{var_info,{x,0},[{fun_type,none}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2495}]}.
    {call,1,{f,1686}}. % id/1
    {test,is_function,{f,1344},[{x,0}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1344}.
    {badmatch,{atom,false}}.


{function, hangs_forever_1, 1, 1346}.
  {label,1345}.
    {line,[{location,"bs_match_r25_SUITE.erl",2498}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,hangs_forever_1},1}.
  {label,1346}.
    {call_only,1,{f,1346}}. % hangs_forever_1/1


{function, bs_saved_position_units, 1, 1348}.
  {label,1347}.
    {line,[{location,"bs_match_r25_SUITE.erl",2505}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bs_saved_position_units},1}.
  {label,1348}.
    {test,is_list,{f,1347},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<0,1,2,3,4,5,6,7,8,9>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2506}]}.
    {call,1,{f,1686}}. % id/1
    {call,1,{f,1352}}. % bspu_1/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {test,is_eq_exact,
          {f,1350},
          [{tr,{x,0},{t_list,{t_bitstring,8,false},nil}},
           {literal,[<<0,1,2,3,4>>,<<5,6,7,8,9>>]}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2507}]}.
    {call,1,{f,1686}}. % id/1
    {call,1,{f,1352}}. % bspu_1/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {test,is_nil,{f,1349},[{tr,{x,0},{t_list,{t_bitstring,8,false},nil}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1349}.
    {badmatch,{x,0}}.
  {label,1350}.
    {line,[{location,"bs_match_r25_SUITE.erl",2506}]}.
    {badmatch,{x,0}}.


{function, bspu_1, 1, 1352}.
  {label,1351}.
    {line,[{location,"bs_match_r25_SUITE.erl",2511}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bspu_1},1}.
  {label,1352}.
    {test,bs_start_match3,{f,1351},1,[{x,0}],{x,1}}.
    {test,bs_get_binary2,
          {f,1351},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {atom,all},
           8,
           {field_flags,[{anno,[2511,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,is_eq_exact,
          {f,1351},
          [{tr,{x,1},{t_bitstring,8,false}},{tr,{x,0},{t_bs_matchable,1}}]}.
    {call_only,1,{f,1767}}. % '-bspu_1/1-lc$^0/1-0-'/1


{function, empty_matches, 1, 1354}.
  {label,1353}.
    {line,[{location,"bs_match_r25_SUITE.erl",2515}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,empty_matches},1}.
  {label,1354}.
    {test,is_list,{f,1353},[{x,0}]}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{literal,<<1,2,3,4:4>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2516}]}.
    {call,1,{f,1371}}. % em_1/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,#{2 => {t_bitstring,4,false}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1369},[{x,1},{literal,<<>>}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {test,bs_match_string,{f,1369},[{x,1},28,{string,<<1,2,3,64>>}]}.
    {test,bs_test_tail2,{f,1369},[{x,1},0]}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2517}]}.
    {call,1,{f,1371}}. % em_1/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,#{2 => {t_bitstring,4,false}}}}]}}.
    {test,is_eq_exact,
          {f,1368},
          [{tr,{x,0},{t_tuple,2,true,#{2 => {t_bitstring,4,false}}}},
           {literal,{<<>>,<<1,2,3>>}}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2518}]}.
    {call,1,{f,1371}}. % em_1/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,#{2 => {t_bitstring,4,false}}}}]}}.
    {test,is_eq_exact,
          {f,1367},
          [{tr,{x,0},{t_tuple,2,true,#{2 => {t_bitstring,4,false}}}},
           {literal,{<<>>,<<>>}}]}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2520}]}.
    {call,1,{f,1686}}. % id/1
    {call,1,{f,1375}}. % em_2/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,true}}]}}.
    {test,is_eq_exact,
          {f,1366},
          [{tr,{x,0},{t_bitstring,16,true}},{literal,<<0,1,0,2,0,3>>}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2521}]}.
    {call,1,{f,1686}}. % id/1
    {call,1,{f,1375}}. % em_2/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,true}}]}}.
    {test,is_eq_exact,
          {f,1365},
          [{tr,{x,0},{t_bitstring,16,true}},{literal,<<>>}]}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2523}]}.
    {call,1,{f,1686}}. % id/1
    {call,1,{f,1377}}. % em_3/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {test,is_eq_exact,
          {f,1364},
          [{tr,{x,0},{t_bitstring,1,false}},{literal,<<1,2,3>>}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2524}]}.
    {call,1,{f,1686}}. % id/1
    {call,1,{f,1377}}. % em_3/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {test,is_eq_exact,
          {f,1363},
          [{tr,{x,0},{t_bitstring,1,false}},{literal,<<>>}]}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2526}]}.
    {call,1,{f,1686}}. % id/1
    {test,bs_start_match3,{f,1362},1,[{x,0}],{x,1}}.
    {test,bs_test_tail2,{f,1362},[{x,1},0]}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2527}]}.
    {call,1,{f,1686}}. % id/1
    {test,is_eq_exact,{f,1361},[{x,0},{integer,0}]}.
    {move,{literal,<<>>},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2529}]}.
    {call,2,{f,1381}}. % em_4/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,2},{f,1355}}.
    {move,{literal,<<0:1>>},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2530}]}.
    {call,2,{f,1381}}. % em_4/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1355}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,1360},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1360},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,1360},[{x,1}]}.
    {'catch',{y,1},{f,1356}}.
    {move,{literal,<<>>},{x,1}}.
    {move,{literal,<<0:1>>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r25_SUITE.erl",2531}]}.
    {call,2,{f,1381}}. % em_4/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1356}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,1359},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1359},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,1359},[{x,1}]}.
    {'catch',{y,0},{f,1357}}.
    {move,{literal,<<0:1>>},{x,1}}.
    {move,{literal,<<0:1>>},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r25_SUITE.erl",2532}]}.
    {call,2,{f,1381}}. % em_4/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1357}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1358},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1358},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,1358},[{x,1}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,3}.
    return.
  {label,1358}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",2532}]}.
    {badmatch,{x,0}}.
  {label,1359}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",2531}]}.
    {badmatch,{x,0}}.
  {label,1360}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",2530}]}.
    {badmatch,{x,0}}.
  {label,1361}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2527}]}.
    {badmatch,{x,0}}.
  {label,1362}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2526}]}.
    {badmatch,{x,0}}.
  {label,1363}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2524}]}.
    {badmatch,{x,0}}.
  {label,1364}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2523}]}.
    {badmatch,{x,0}}.
  {label,1365}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2521}]}.
    {badmatch,{x,0}}.
  {label,1366}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2520}]}.
    {badmatch,{x,0}}.
  {label,1367}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2518}]}.
    {badmatch,{x,0}}.
  {label,1368}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2517}]}.
    {badmatch,{x,0}}.
  {label,1369}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2516}]}.
    {badmatch,{x,0}}.


{function, em_1, 1, 1371}.
  {label,1370}.
    {line,[{location,"bs_match_r25_SUITE.erl",2536}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,em_1},1}.
  {label,1371}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,4,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_binary2,
          {f,1373},
          2,
          [{tr,{x,1},{t_bs_context,4}},
           {integer,0},
           8,
           {field_flags,[{anno,[2538,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {allocate,2,3}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {bs_get_tail,{x,1},{y,0},3}.
    {move,{x,2},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2539}]}.
    {call_ext,1,{extfunc,binary,copy,1}}.
    {test,is_eq_exact,
          {f,1372},
          [{tr,{y,0},{t_bitstring,4,false}},{tr,{y,1},{t_bitstring,4,false}}]}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{x,0},{y,1}]}}.
    {deallocate,2}.
    return.
  {label,1372}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{x,0},{y,0}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2537}]}.
    {badmatch,{x,0}}.
  {label,1373}.
    {line,[{location,"bs_match_r25_SUITE.erl",2538}]}.
    {badmatch,{x,0}}.


{function, em_2, 1, 1375}.
  {label,1374}.
    {line,[{location,"bs_match_r25_SUITE.erl",2544}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,em_2},1}.
  {label,1375}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,1763},1}. % '-em_2/1-lbc$^0/2-0-'/2


{function, em_3, 1, 1377}.
  {label,1376}.
    {line,[{location,"bs_match_r25_SUITE.erl",2551}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,em_3},1}.
  {label,1377}.
    {test,bs_start_match3,{f,1376},1,[{x,0}],{x,1}}.
    {test,bs_get_binary2,
          {f,1376},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,0},
           8,
           {field_flags,[{anno,[2551,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {allocate,1,3}.
    {init_yregs,{list,[{y,0}]}}.
    {bs_get_tail,{x,1},{y,0},3}.
    {move,{x,2},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2552}]}.
    {call,1,{f,1379}}. % em_3_1/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, em_3_1, 1, 1379}.
  {label,1378}.
    {line,[{location,"bs_match_r25_SUITE.erl",2555}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,em_3_1},1}.
  {label,1379}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    return.


{function, em_4, 2, 1381}.
  {label,1380}.
    {line,[{location,"bs_match_r25_SUITE.erl",2558}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,em_4},2}.
  {label,1381}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,false}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,2}}.
    {test,bs_skip_bits2,
          {f,1380},
          [{x,2},
           {integer,0},
           1,
           {field_flags,[{anno,[2558,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_get_tail,{x,2},{x,2},3}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,3}}.
    {test,bs_skip_bits2,
          {f,1380},
          [{x,3},
           {integer,0},
           1,
           {field_flags,[{anno,[2558,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_get_tail,{x,3},{x,3},4}.
    {bs_start_match4,{atom,no_fail},4,{x,2},{x,2}}.
    {test,bs_test_tail2,{f,1380},[{x,2},0]}.
    {bs_start_match4,{atom,no_fail},4,{x,3},{x,2}}.
    {test,bs_test_tail2,{f,1380},[{x,2},0]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, trim_bs_start_match_resume, 1, 1383}.
  {label,1382}.
    {line,[{location,"bs_match_r25_SUITE.erl",2563}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,trim_bs_start_match_resume},1}.
  {label,1383}.
    {test,is_list,{f,1382},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2564}]}.
    {call,1,{f,1686}}. % id/1
    {test,bs_start_match3,{f,1385},1,[{x,0}],{x,1}}.
    {test,bs_get_binary2,
          {f,1385},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {atom,all},
           8,
           {field_flags,[{anno,[2564,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2565}]}.
    {call,1,{f,1387}}. % trim_bs_start_match_resume_1/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,1384},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1384}.
    {badmatch,{x,0}}.
  {label,1385}.
    {line,[{location,"bs_match_r25_SUITE.erl",2564}]}.
    {badmatch,{x,0}}.


{function, trim_bs_start_match_resume_1, 1, 1387}.
  {label,1386}.
    {line,[{location,"bs_match_r25_SUITE.erl",2568}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,trim_bs_start_match_resume_1},
               1}.
  {label,1387}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {allocate,1,1}.
    {init_yregs,{list,[{y,0}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_tail,{x,0},{y,0},1}.
    {move,{y,0},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2569}]}.
    {call,1,{f,1686}}. % id/1
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, expand_and_squeeze, 1, 1389}.
  {label,1388}.
    {line,[{location,"bs_match_r25_SUITE.erl",2572}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,expand_and_squeeze},1}.
  {label,1389}.
    {test,is_list,{f,1388},[{x,0}]}.
    {allocate,0,0}.
    {move,
        {literal,
            [{bin,2574,
                 [{bin_element,2574,{char,2574,225},default,[utf8]},
                  {bin_element,2574,{var,2574,'_'},default,[binary]}]},
             {bin,2575,
                 [{bin_element,2575,{char,2575,233},default,[utf8]},
                  {bin_element,2575,{var,2575,'_'},default,[binary]}]}]},
        {x,1}}.
    {move,{integer,16},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2574}]}.
    {call,2,{f,1393}}. % ensure_squeezed/2
    {'%',{var_info,{x,0},[{type,{t_cons,any,any}}]}}.
    {move,
        {literal,
            [{bin,2578,
                 [{bin_element,2578,
                      {integer,2578,0},
                      {integer,2578,32},
                      default},
                  {bin_element,2578,{var,2578,'_'},default,[binary]}]},
             {bin,2579,
                 [{bin_element,2579,{string,2579,"bbbb"},default,default},
                  {bin_element,2579,{var,2579,'_'},default,[binary]}]}]},
        {x,1}}.
    {move,{integer,16},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2578}]}.
    {call,2,{f,1393}}. % ensure_squeezed/2
    {'%',{var_info,{x,0},[{type,{t_cons,any,any}}]}}.
    {move,
        {literal,
            [{bin,2582,
                 [{bin_element,2582,{string,2582,"aaaa"},default,default},
                  {bin_element,2582,{var,2582,'_'},default,[binary]}]},
             {bin,2583,
                 [{bin_element,2583,{string,2583,"bbbb"},default,default},
                  {bin_element,2583,{var,2583,'_'},default,[binary]}]}]},
        {x,1}}.
    {move,{integer,16},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2582}]}.
    {call,2,{f,1393}}. % ensure_squeezed/2
    {'%',{var_info,{x,0},[{type,{t_cons,any,any}}]}}.
    {move,
        {literal,
            [{bin,2586,
                 [{bin_element,2586,{string,2586,"aaaa"},default,default},
                  {bin_element,2586,{var,2586,'_'},default,[binary]}]},
             {bin,2587,
                 [{bin_element,2587,{string,2587,"bbbb"},default,default},
                  {bin_element,2587,{var,2587,'_'},default,[binary]}]},
             {bin,2588,[]}]},
        {x,1}}.
    {move,{integer,16},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2586}]}.
    {call,2,{f,1393}}. % ensure_squeezed/2
    {'%',{var_info,{x,0},[{type,{t_cons,any,any}}]}}.
    {move,
        {literal,
            [{bin,2591,
                 [{bin_element,2591,{string,2591,"aaaa"},default,default},
                  {bin_element,2591,{var,2591,'_'},default,[binary]}]},
             {bin,2592,
                 [{bin_element,2592,{string,2592,"bbbb"},default,default},
                  {bin_element,2592,{var,2592,'_'},default,[binary]}]},
             {bin,2593,[{bin_element,2593,{var,2593,'_'},default,[float]}]}]},
        {x,1}}.
    {move,{integer,8},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2591}]}.
    {call,2,{f,1393}}. % ensure_squeezed/2
    {'%',{var_info,{x,0},[{type,{t_cons,any,any}}]}}.
    {move,
        {literal,
            [{bin,2596,
                 [{bin_element,2596,{string,2596,"aa"},default,default},
                  {bin_element,2596,{var,2596,'_'},default,[binary]}]},
             {bin,2597,
                 [{bin_element,2597,{string,2597,"bb"},default,default},
                  {bin_element,2597,{var,2597,'_'},default,[binary]}]},
             {bin,2598,
                 [{bin_element,2598,{string,2598,"c"},default,default},
                  {bin_element,2598,{var,2598,'_'},default,[binary]}]}]},
        {x,1}}.
    {move,{integer,8},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2596}]}.
    {call,2,{f,1393}}. % ensure_squeezed/2
    {'%',{var_info,{x,0},[{type,{t_cons,any,any}}]}}.
    {move,
        {literal,
            [{bin,2604,
                 [{bin_element,2604,{string,2604,"aaa"},default,default},
                  {bin_element,2604,{var,2604,'_'},default,[binary]}]},
             {bin,2605,
                 [{bin_element,2605,{string,2605,"abb"},default,default},
                  {bin_element,2605,{var,2605,'_'},default,[binary]}]},
             {bin,2606,
                 [{bin_element,2606,{string,2606,"c"},default,default},
                  {bin_element,2606,{var,2606,'_'},default,[binary]}]}]},
        {x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2604}]}.
    {call,1,{f,1396}}. % binary_match_to_asm/1
    {test,is_nonempty_list,{f,1391},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_tagged_tuple,{f,1391},[{x,1},4,{atom,bs_match}]}.
    {get_tuple_element,{x,1},1,{x,3}}.
    {test,is_tagged_tuple,{f,1391},[{x,3},2,{atom,f}]}.
    {get_tuple_element,{x,1},3,{x,1}}.
    {test,is_tagged_tuple,{f,1391},[{x,1},2,{atom,commands}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,1391},[{x,1}]}.
    {get_list,{x,1},{x,3},{x,1}}.
    {test,is_tagged_tuple,{f,1391},[{x,3},3,{atom,ensure_at_least}]}.
    {get_tuple_element,{x,3},2,{x,4}}.
    {test,is_eq_exact,{f,1391},[{x,4},{integer,1}]}.
    {test,is_nonempty_list,{f,1391},[{x,1}]}.
    {get_list,{x,1},{x,4},{x,1}}.
    {test,is_tagged_tuple,{f,1391},[{x,4},6,{atom,integer}]}.
    {get_tuple_element,{x,4},4,{x,5}}.
    {test,is_eq_exact,{f,1391},[{x,5},{integer,1}]}.
    {test,is_nil,{f,1391},[{x,1}]}.
    {get_tuple_element,{x,4},3,{x,1}}.
    {get_tuple_element,{x,3},1,{x,3}}.
    {test,is_eq_exact,{f,1391},[{x,1},{x,3}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},3}.
    {make_fun3,{f,1760},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[false,true]}}]}}.
    {move,{x,2},{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2615}]}.
    {call_ext,2,{extfunc,lists,any,2}}.
    {test,is_eq_exact,{f,1390},[{x,0},{atom,true}]}.
    {move,
        {literal,
            [{bin,2618,
                 [{bin_element,2618,{integer,2618,255},default,default},
                  {bin_element,2618,{integer,2618,255},default,default},
                  {bin_element,2618,{integer,2618,255},default,default},
                  {bin_element,2618,{integer,2618,255},default,default},
                  {bin_element,2618,{integer,2618,255},default,default},
                  {bin_element,2618,{integer,2618,255},default,default},
                  {bin_element,2618,{integer,2618,255},default,default},
                  {bin_element,2618,{integer,2618,255},default,default}]},
             {bin,2619,
                 [{bin_element,2619,
                      {var,2619,'_'},
                      {integer,2619,64},
                      default}]}]},
        {x,1}}.
    {move,{integer,64},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2618}]}.
    {call,2,{f,1393}}. % ensure_squeezed/2
    {'%',{var_info,{x,0},[{type,{t_cons,any,any}}]}}.
    {move,
        {literal,
            [{bin,2622,
                 [{bin_element,2622,{var,2622,'A'},{integer,2622,32},default},
                  {bin_element,2622,{var,2622,'_'},{var,2622,'A'},default}]},
             {bin,2623,
                 [{bin_element,2623,
                      {integer,2623,0},
                      {integer,2623,32},
                      default}]},
             {bin,2624,
                 [{bin_element,2624,
                      {var,2624,'_'},
                      {integer,2624,32},
                      default}]}]},
        {x,1}}.
    {move,{integer,32},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2622}]}.
    {call,2,{f,1393}}. % ensure_squeezed/2
    {'%',{var_info,{x,0},[{type,{t_cons,any,any}}]}}.
    {move,
        {literal,
            [{bin,2627,
                 [{bin_element,2627,{var,2627,'A'},{integer,2627,32},default},
                  {bin_element,2627,{var,2627,'_'},{var,2627,'A'},default}]},
             {bin,2628,
                 [{bin_element,2628,{integer,2628,0},default,default},
                  {bin_element,2628,{integer,2628,0},default,default},
                  {bin_element,2628,{integer,2628,0},default,default},
                  {bin_element,2628,{integer,2628,0},default,default}]},
             {bin,2629,
                 [{bin_element,2629,
                      {var,2629,'_'},
                      {integer,2629,32},
                      default}]}]},
        {x,1}}.
    {move,{integer,32},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2627}]}.
    {call,2,{f,1393}}. % ensure_squeezed/2
    {'%',{var_info,{x,0},[{type,{t_cons,any,any}}]}}.
    {move,
        {literal,
            [{bin,2632,
                 [{bin_element,2632,{var,2632,'A'},{integer,2632,32},default},
                  {bin_element,2632,{var,2632,'_'},{var,2632,'A'},default}]},
             {bin,2633,
                 [{bin_element,2633,
                      {integer,2633,0},
                      {integer,2633,64},
                      default}]},
             {bin,2634,
                 [{bin_element,2634,
                      {var,2634,'_'},
                      {integer,2634,32},
                      default}]}]},
        {x,1}}.
    {move,{integer,32},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2632}]}.
    {call,2,{f,1393}}. % ensure_squeezed/2
    {'%',{var_info,{x,0},[{type,{t_cons,any,any}}]}}.
    {move,
        {literal,
            [{bin,2637,
                 [{bin_element,2637,{string,2637,"aa"},default,default},
                  {bin_element,2637,{var,2637,'_'},default,[binary]}]},
             {bin,2638,
                 [{bin_element,2638,{string,2638,"bb"},default,default},
                  {bin_element,2638,{var,2638,'_'},default,[binary]}]},
             {bin,2639,
                 [{bin_element,2639,{string,2639,"cc"},default,default},
                  {bin_element,2639,{var,2639,'_'},default,[binary]}]},
             {bin,2640,
                 [{bin_element,2640,{string,2640,"dd"},default,default},
                  {bin_element,2640,{var,2640,'_'},default,[binary]}]},
             {bin,2641,
                 [{bin_element,2641,{string,2641,"ee"},default,default},
                  {bin_element,2641,{var,2641,'_'},default,[binary]}]},
             {bin,2642,
                 [{bin_element,2642,{string,2642,"ff"},default,default},
                  {bin_element,2642,{var,2642,'_'},default,[binary]}]},
             {bin,2643,
                 [{bin_element,2643,{string,2643,"gg"},default,default},
                  {bin_element,2643,{var,2643,'_'},default,[binary]}]},
             {bin,2644,
                 [{bin_element,2644,{string,2644,"hh"},default,default},
                  {bin_element,2644,{var,2644,'_'},default,[binary]}]},
             {bin,2645,
                 [{bin_element,2645,{string,2645,"ii"},default,default},
                  {bin_element,2645,{var,2645,'_'},default,[binary]}]},
             {bin,2646,
                 [{bin_element,2646,{string,2646,"jj"},default,default},
                  {bin_element,2646,{var,2646,'_'},default,[binary]}]},
             {bin,2647,
                 [{bin_element,2647,{string,2647,"kk"},default,default},
                  {bin_element,2647,{var,2647,'_'},default,[binary]}]},
             {bin,2648,
                 [{bin_element,2648,{string,2648,"ll"},default,default},
                  {bin_element,2648,{var,2648,'_'},default,[binary]}]},
             {bin,2649,
                 [{bin_element,2649,{string,2649,"mm"},default,default},
                  {bin_element,2649,{var,2649,'_'},default,[binary]}]},
             {bin,2650,
                 [{bin_element,2650,{string,2650,"nn"},default,default},
                  {bin_element,2650,{var,2650,'_'},default,[binary]}]},
             {bin,2651,
                 [{bin_element,2651,{string,2651,"oo"},default,default},
                  {bin_element,2651,{var,2651,'_'},default,[binary]}]},
             {bin,2652,
                 [{bin_element,2652,{string,2652,"pp"},default,default},
                  {bin_element,2652,{var,2652,'_'},default,[binary]}]}]},
        {x,1}}.
    {move,{integer,8},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2637}]}.
    {call,2,{f,1393}}. % ensure_squeezed/2
    {'%',{var_info,{x,0},[{type,{t_cons,any,any}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1390}.
    {line,[{location,"bs_match_r25_SUITE.erl",2615}]}.
    {badmatch,{atom,false}}.
  {label,1391}.
    {line,[{location,"bs_match_r25_SUITE.erl",2601}]}.
    {badmatch,{x,0}}.


{function, ensure_squeezed, 2, 1393}.
  {label,1392}.
    {line,[{location,"bs_match_r25_SUITE.erl",2656}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,ensure_squeezed},2}.
  {label,1393}.
    {'%',{var_info,{x,0},[{type,{t_integer,{8,64}}}]}}.
    {'%',
     {var_info,
      {x,1},
      [{type,
        {t_cons,
         {t_tuple,3,true,
          #{1 => {t_atom,[bin]},
            2 => {t_integer,{2574,2652}},
            3 =>
             {t_list,
              {t_tuple,5,true,
               #{1 => {t_atom,[bin_element]},
                 2 => {t_integer,{2574,2652}},
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
    {line,[{location,"bs_match_r25_SUITE.erl",2660}]}.
    {call,1,{f,1396}}. % binary_match_to_asm/1
    {test,is_nonempty_list,{f,1394},[{x,0}]}.
    {get_hd,{x,0},{x,1}}.
    {test,is_tagged_tuple,{f,1394},[{x,1},4,{atom,bs_match}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_tagged_tuple,{f,1394},[{x,2},2,{atom,f}]}.
    {get_tuple_element,{x,1},3,{x,1}}.
    {test,is_tagged_tuple,{f,1394},[{x,1},2,{atom,commands}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,1394},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_tagged_tuple,{f,1394},[{x,2},3,{atom,ensure_at_least}]}.
    {get_tuple_element,{x,2},2,{x,3}}.
    {test,is_eq_exact,{f,1394},[{x,3},{integer,1}]}.
    {test,is_nonempty_list,{f,1394},[{x,1}]}.
    {get_list,{x,1},{x,3},{x,1}}.
    {test,is_tagged_tuple,{f,1394},[{x,3},6,{atom,integer}]}.
    {get_tuple_element,{x,3},4,{x,4}}.
    {test,is_eq_exact,{f,1394},[{x,4},{integer,1}]}.
    {test,is_nil,{f,1394},[{x,1}]}.
    {get_tuple_element,{x,2},1,{x,1}}.
    {test,is_eq_exact,{f,1394},[{x,1},{tr,{y,0},{t_integer,{8,64}}}]}.
    {get_tuple_element,{x,3},3,{x,1}}.
    {test,is_eq_exact,{f,1394},[{x,1},{tr,{y,0},{t_integer,{8,64}}}]}.
    {deallocate,1}.
    return.
  {label,1394}.
    {line,[{location,"bs_match_r25_SUITE.erl",2657}]}.
    {badmatch,{x,0}}.


{function, binary_match_to_asm, 1, 1396}.
  {label,1395}.
    {line,[{location,"bs_match_r25_SUITE.erl",2662}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,binary_match_to_asm},1}.
  {label,1396}.
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_cons,
         {t_tuple,3,true,
          #{1 => {t_atom,[bin]},
            2 => {t_integer,{2574,2652}},
            3 =>
             {t_list,
              {t_tuple,5,true,
               #{1 => {t_atom,[bin_element]},
                 2 => {t_integer,{2574,2652}},
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
    {line,[{location,"bs_match_r25_SUITE.erl",2667}]}.
    {gc_bif,length,
     {f,0},
     1,
     [{tr,
       {x,0},
       {t_cons,
        {t_tuple,3,true,
         #{1 => {t_atom,[bin]},
           2 => {t_integer,{2574,2652}},
           3 =>
            {t_list,
             {t_tuple,5,true,
              #{1 => {t_atom,[bin_element]},
                2 => {t_integer,{2574,2652}},
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
    {call,1,{f,1757}}. % '-binary_match_to_asm/1-lc$^0/1-0-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_cons,
                     {t_tuple,5,true,
                         #{1 => {t_atom,[clause]},
                           2 => {t_integer,{2574,2652}},
                           3 =>
                               {t_cons,
                                   {t_tuple,3,true,
                                       #{1 => {t_atom,[bin]},
                                         2 => {t_integer,{2574,2652}},
                                         3 => {t_list,any,any}}},
                                   nil},
                           4 => nil,
                           5 =>
                               {t_cons,
                                   {t_tuple,3,true,
                                       #{1 => {t_atom,[integer]},
                                         2 => {t_integer,{2574,2652}}}},
                                   nil}}},
                     nil}}]}}.
    {move,{x,0},{y,2}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2671}]}.
    {call_ext,1,{extfunc,erl_anno,new,1}}.
    {move,{x,0},{y,1}}.
    {move,{integer,2},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2672}]}.
    {call_ext,1,{extfunc,erl_anno,new,1}}.
    {move,{x,0},{y,0}}.
    {move,{integer,3},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2673}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",2677}]}.
    {call_ext,2,{extfunc,compile,forms,2}}.
    {test,is_tagged_tuple,{f,1399},[{x,0},4,{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,1399},[{x,1},{atom,match_to_asm}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_tagged_tuple,{f,1399},[{x,1},5,{atom,match_to_asm}]}.
    {get_tuple_element,{x,1},3,{x,0}}.
    {test,is_nonempty_list,{f,1398},[{x,0}]}.
    {get_hd,{x,0},{x,1}}.
    {test,is_tagged_tuple,{f,1398},[{x,1},5,{atom,function}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,1398},[{x,2},{atom,example}]}.
    {get_tuple_element,{x,1},2,{x,2}}.
    {test,is_eq_exact,{f,1398},[{x,2},{integer,1}]}.
    {get_tuple_element,{x,1},3,{x,2}}.
    {test,is_eq_exact,{f,1398},[{x,2},{integer,2}]}.
    {get_tuple_element,{x,1},4,{x,0}}.
    {test,is_nonempty_list,{f,1397},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_tagged_tuple,{f,1397},[{x,1},2,{atom,label}]}.
    {test,is_nonempty_list,{f,1397},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tagged_tuple,{f,1397},[{x,1},2,{atom,line}]}.
    {test,is_nonempty_list,{f,1397},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tagged_tuple,{f,1397},[{x,1},4,{atom,func_info}]}.
    {test,is_nonempty_list,{f,1397},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tagged_tuple,{f,1397},[{x,1},2,{atom,label}]}.
    {test,is_nonempty_list,{f,1397},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tagged_tuple,{f,1397},[{x,1},2,{atom,'%'}]}.
    {test,is_nonempty_list,{f,1397},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tagged_tuple,{f,1397},[{x,1},6,{atom,test}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,{f,1397},[{x,1},{atom,bs_start_match3}]}.
    {test,is_nonempty_list,{f,1397},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tagged_tuple,{f,1397},[{x,1},4,{atom,bs_get_position}]}.
    {move,{x,2},{x,0}}.
    {deallocate,0}.
    return.
  {label,1397}.
    {line,[{location,"bs_match_r25_SUITE.erl",2680}]}.
    {badmatch,{x,0}}.
  {label,1398}.
    {line,[{location,"bs_match_r25_SUITE.erl",2679}]}.
    {badmatch,{x,0}}.
  {label,1399}.
    {line,[{location,"bs_match_r25_SUITE.erl",2676}]}.
    {badmatch,{x,0}}.


{function, many_clauses, 1, 1401}.
  {label,1400}.
    {line,[{location,"bs_match_r25_SUITE.erl",2684}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,many_clauses},1}.
  {label,1401}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{integer,200},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2687}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2688}]}.
    {call,1,{f,1753}}. % '-many_clauses/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {move,{x,0},{y,0}}.
    {move,{atom,bs_match_r25_SUITE_many_clauses},{x,0}}.
    {line,[]}.
    {call_ext,1,{extfunc,merl,term,1}}.
    {test_heap,52,1}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{literal,[{tree,atom,{attr,2689,[],none},module}]},{x,0},{x,0}}.
    {put_list,{y,0},nil,{x,1}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{literal,[{var,2692,'Bin'}]},{x,1},{x,1}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,case_expr},
                       {literal,{attr,2692,[],none}},
                       {x,1}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,nil,{x,1},{x,1}}.
    {put_list,{literal,[{var,2691,'Bin'}]},{x,1},{x,1}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,clause},
                       {literal,{attr,2691,[],none}},
                       {x,1}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{literal,[{tree,atom,{attr,2691,[],none},f}]},{x,1},{x,1}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,function},
                       {literal,{attr,2691,[],none}},
                       {x,1}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{literal,{attribute,2690,export,[{f,1}]}},{x,1},{x,1}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,attribute},
                       {literal,{attr,2689,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},{x,1},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2689}]}.
    {call_ext,1,{extfunc,merl,tree,1}}.
    {move,{x,0},{y,0}}.
    {move,{atom,bs_match_r25_SUITE},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2696}]}.
    {call_ext,1,{extfunc,test_lib,opt_opts,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,1}.
    {line,[{location,"bs_match_r25_SUITE.erl",2697}]}.
    {call_ext,2,{extfunc,merl,compile_and_load,2}}.
    {test,is_tagged_tuple,{f,1402},[{x,0},2,{atom,ok}]}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_match_r25_SUITE.erl",2704}]}.
    {call,1,{f,1747}}. % '-many_clauses/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1402}.
    {line,[{location,"bs_match_r25_SUITE.erl",2697}]}.
    {badmatch,{x,0}}.


{function, one_clause, 1, 1404}.
  {label,1403}.
    {line,[{location,"bs_match_r25_SUITE.erl",2707}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,one_clause},1}.
  {label,1404}.
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
            [{bin,2708,
                 [{bin_element,2708,{var,2708,'L'},{integer,2708,8},default},
                  {bin_element,2708,
                      {var,2708,'Val'},
                      {var,2708,'L'},
                      default}]}]},
        {x,1}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,tuple},
                       {literal,{attr,2708,[],none}},
                       {x,1}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},
              {literal,[[{tree,operator,{attr,2708,[],none},'+'}],
                        [{var,2708,'Val'}]]},
              {x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,infix_expr},
                       {literal,{attr,2708,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,nil,{x,0},{x,0}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,clause},
                       {literal,{attr,2708,[],none}},
                       {x,0}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2708}]}.
    {call_ext_last,1,{extfunc,merl,tree,1},1}.


{function, gh_6410, 1, 1406}.
  {label,1405}.
    {line,[{location,"bs_match_r25_SUITE.erl",2711}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh_6410},1}.
  {label,1406}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2712}]}.
    {call,1,{f,1414}}. % do_gh_6410/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,0}}}]}}.
    {'catch',{y,2},{f,1407}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2713}]}.
    {call,1,{f,1414}}. % do_gh_6410/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,0}}}]}}.
  {label,1407}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,1412},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1412},[{x,1}]}.
    {test,test_arity,{f,1412},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,1412},[{x,2},{literal,{case_clause,<<>>}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,1412},[{x,1}]}.
    {'catch',{y,1},{f,1408}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",2714}]}.
    {call,1,{f,1414}}. % do_gh_6410/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1408}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,1411},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1411},[{x,1}]}.
    {test,test_arity,{f,1411},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,1411},[{x,2},{literal,{case_clause,a}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,1411},[{x,1}]}.
    {'catch',{y,0},{f,1409}}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",2715}]}.
    {call,1,{f,1414}}. % do_gh_6410/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1409}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1410},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1410},[{x,1},2,{atom,badarith}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,1410},[{x,1}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,3}.
    return.
  {label,1410}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",2715}]}.
    {badmatch,{x,0}}.
  {label,1411}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",2714}]}.
    {badmatch,{x,0}}.
  {label,1412}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",2713}]}.
    {badmatch,{x,0}}.


{function, do_gh_6410, 1, 1414}.
  {label,1413}.
    {line,[{location,"bs_match_r25_SUITE.erl",2719}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_gh_6410},1}.
  {label,1414}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[a]},
                                   nil,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,bs_start_match3,{f,1415},1,[{x,0}],{x,1}}.
    {test,bs_test_tail2,{f,1415},[{x,1},8]}.
    {move,{integer,0},{x,0}}.
    return.
  {label,1415}.
    {test,bs_start_match3,{f,1416},1,[{x,0}],{x,1}}.
    {test,bs_test_tail2,{f,1418},[{x,1},8]}.
    {jump,{f,1417}}.
  {label,1416}.
    {test,is_nil,
          {f,1418},
          [{tr,{x,0},{t_union,{t_atom,[a]},nil,none,none,none}}]}.
  {label,1417}.
    {line,[{location,"bs_match_r25_SUITE.erl",2722}]}.
    {gc_bif,'+',
            {f,0},
            1,
            [{tr,{x,0},{t_union,none,nil,none,none,{t_bitstring,8,false}}}],
            {x,0}}.
    return.
  {label,1418}.
    {case_end,{x,0}}.


{function, bs_match, 1, 1420}.
  {label,1419}.
    {line,[{location,"bs_match_r25_SUITE.erl",2729}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bs_match},1}.
  {label,1420}.
    {allocate,4,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3}]}}.
    {move,{literal,<<1,0>>},{x,1}}.
    {move,{atom,whatever},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2730}]}.
    {call,2,{f,1438}}. % do_bs_match_1/2
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
          {f,1436},
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
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",2731}]}.
    {call,2,{f,1438}}. % do_bs_match_1/2
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
          {f,1435},
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
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",2732}]}.
    {call,2,{f,1438}}. % do_bs_match_1/2
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
          {f,1434},
          [{tr,{x,0},
               {t_union,none,none,none,
                        [{{3,{t_atom,[a]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[a]},
                                     2 => {t_atom,[b]},
                                     3 => {t_atom,[c]}}}}],
                        {t_bitstring,16,false}}},
           {literal,{a,b,c}}]}.
    {'catch',{y,3},{f,1421}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",2734}]}.
    {call,1,{f,1441}}. % do_bs_match_gh_6551a/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
  {label,1421}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,1433},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1433},[{x,1},2,{atom,badarg}]}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_r25_SUITE.erl",2735}]}.
    {call,1,{f,1441}}. % do_bs_match_gh_6551a/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1422},[{x,0},{atom,true}]}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2735}]}.
    {badmatch,{atom,true}}.
  {label,1422}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2737}]}.
    {call,1,{f,1445}}. % do_bs_match_gh_6551b/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,0}},
                                     2 => {t_integer,{0,0}}}}}]}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2738}]}.
    {call,1,{f,1445}}. % do_bs_match_gh_6551b/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_bitstring,8,false},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
          {f,1432},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_bitstring,8,false},
                          2 => {t_bitstring,8,false}}}},
           {literal,{<<"*">>,<<"*">>}}]}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2740}]}.
    {call,1,{f,1449}}. % do_bs_match_gh_6613/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[ok]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,1431},
          [{tr,{x,0},
               {t_union,{t_atom,[ok]},none,none,none,{t_bitstring,8,false}}},
           {atom,ok}]}.
    {move,{literal,<<0,0>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2741}]}.
    {call,1,{f,1449}}. % do_bs_match_gh_6613/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[ok]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,1430},
          [{tr,{x,0},
               {t_union,{t_atom,[ok]},none,none,none,{t_bitstring,8,false}}},
           {literal,<<0,0>>}]}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2743}]}.
    {call,1,{f,1686}}. % id/1
    {call,1,{f,1457}}. % do_bs_match_gh_6660/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,1429},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<"abc">>}]}.
    {'catch',{y,2},{f,1423}}.
    {move,{atom,abc},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2744}]}.
    {call,1,{f,1686}}. % id/1
    {call,1,{f,1457}}. % do_bs_match_gh_6660/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
  {label,1423}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,1428},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1428},[{x,1}]}.
    {test,test_arity,{f,1428},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1428},[{x,1},{literal,{try_clause,abc}}]}.
    {'catch',{y,1},{f,1424}}.
    {move,{literal,<<"1000">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",2746}]}.
    {call,1,{f,1686}}. % id/1
    {call,1,{f,1461}}. % do_bs_match_gh_6755/1
    {'%',{var_info,{x,0},[{type,{t_atom,[b]}}]}}.
  {label,1424}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,1427},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1427},[{x,1}]}.
    {test,test_arity,{f,1427},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,1427},[{x,1},2,{atom,case_clause}]}.
    {'catch',{y,0},{f,1425}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r25_SUITE.erl",2748}]}.
    {call,1,{f,1468}}. % do_bs_match_gh_7467/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1425}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1426},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1426},[{x,1}]}.
    {test,test_arity,{f,1426},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1426},[{x,1},{literal,{badmatch,<<>>}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,4}.
    return.
  {label,1426}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",2748}]}.
    {badmatch,{x,0}}.
  {label,1427}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",2746}]}.
    {badmatch,{x,0}}.
  {label,1428}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",2744}]}.
    {badmatch,{x,0}}.
  {label,1429}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2743}]}.
    {badmatch,{x,0}}.
  {label,1430}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2741}]}.
    {badmatch,{x,0}}.
  {label,1431}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2740}]}.
    {badmatch,{x,0}}.
  {label,1432}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2738}]}.
    {badmatch,{x,0}}.
  {label,1433}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2734}]}.
    {badmatch,{x,0}}.
  {label,1434}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",2732}]}.
    {badmatch,{x,0}}.
  {label,1435}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",2731}]}.
    {badmatch,{x,0}}.
  {label,1436}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",2730}]}.
    {badmatch,{x,0}}.


{function, do_bs_match_1, 2, 1438}.
  {label,1437}.
    {line,[{location,"bs_match_r25_SUITE.erl",2752}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_bs_match_1},2}.
  {label,1438}.
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
    {test,bs_start_match3,{f,1439},2,[{x,1}],{x,0}}.
    {test,bs_skip_bits2,
          {f,1439},
          [{x,0},
           {integer,8},
           1,
           {field_flags,[{anno,[2754,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_match_string,{f,1439},[{x,0},8,{string,<<0>>}]}.
    {test,bs_test_tail2,{f,1439},[{x,0},0]}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2755}]}.
    {call,1,{f,1686}}. % id/1
  {label,1439}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, do_bs_match_gh_6551a, 1, 1441}.
  {label,1440}.
    {line,[{location,"bs_match_r25_SUITE.erl",2761}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_bs_match_gh_6551a},1}.
  {label,1441}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_test_tail2,{f,1442},[{x,1},0]}.
    {move,nil,{x,1}}.
    {move,{atom,true},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2764}]}.
    {call_ext_only,2,{extfunc,erlang,'--',2}}.
  {label,1442}.
    {test,bs_test_tail2,{f,1443},[{x,1},8]}.
    {bif,'=/=',
         {f,0},
         [{tr,{x,0},{t_bitstring,8,false}},{tr,{x,0},{t_bitstring,8,false}}],
         {x,0}}.
    return.
  {label,1443}.
    {line,[{location,"bs_match_r25_SUITE.erl",2762}]}.
    {case_end,{x,0}}.


{function, do_bs_match_gh_6551b, 1, 1445}.
  {label,1444}.
    {line,[{location,"bs_match_r25_SUITE.erl",2770}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_bs_match_gh_6551b},1}.
  {label,1445}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,none,
                                   {t_integer,{0,0}},
                                   none,
                                   {t_bitstring,8,false}}}]}}.
    {test,bs_start_match3,{f,1446},1,[{x,0}],{x,1}}.
    {test,bs_test_tail2,{f,1447},[{x,1},8]}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{x,0},{x,0}]}}.
    return.
  {label,1446}.
    {move,{literal,{0,0}},{x,0}}.
    return.
  {label,1447}.
    {line,[{location,"bs_match_r25_SUITE.erl",2772}]}.
    {case_end,{x,0}}.


{function, do_bs_match_gh_6613, 1, 1449}.
  {label,1448}.
    {line,[{location,"bs_match_r25_SUITE.erl",2779}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_bs_match_gh_6613},1}.
  {label,1449}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_test_tail2,{f,1450},[{x,1},8]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1450}.
    {allocate,3,1}.
    {init_yregs,{list,[{y,1},{y,2}]}}.
    {move,{x,0},{y,0}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {'try',{y,2},{f,1452}}.
    {'try',{y,1},{f,1451}}.
    {test,bs_get_integer2,
          {f,1455},
          1,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2786,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_get_integer2,
          {f,1455},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2786,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1455},[{x,0},0]}.
    {test,is_eq_exact,
          {f,1455},
          [{tr,{x,2},{t_integer,{0,255}}},{tr,{x,1},{t_integer,{0,255}}}]}.
    {try_end,{y,1}}.
    {try_end,{y,2}}.
    {jump,{f,1453}}.
  {label,1451}.
    {try_case,{y,1}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.
  {label,1452}.
    {try_case,{y,2}}.
    {test,is_eq_exact,
          {f,1454},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,throw}]}.
  {label,1453}.
    {move,{y,0},{x,0}}.
    {deallocate,3}.
    return.
  {label,1454}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.
  {label,1455}.
    {line,[{scope,[5]},{location,"bs_match_r25_SUITE.erl",2783}]}.
    {try_case_end,{y,0}}.


{function, do_bs_match_gh_6660, 1, 1457}.
  {label,1456}.
    {line,[{location,"bs_match_r25_SUITE.erl",2797}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_bs_match_gh_6660},1}.
  {label,1457}.
    {allocate,1,1}.
    {'try',{y,0},{f,1458}}.
    {test,bs_start_match3,{f,1459},1,[{x,0}],{x,1}}.
    {test,bs_get_binary2,
          {f,1459},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {atom,all},
           8,
           {field_flags,[{anno,[2799,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {try_end,{y,0}}.
    {move,{x,1},{x,0}}.
    {deallocate,1}.
    return.
  {label,1458}.
    {try_case,{y,0}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.
  {label,1459}.
    {line,[{scope,[3]},{location,"bs_match_r25_SUITE.erl",2798}]}.
    {try_case_end,{x,0}}.


{function, do_bs_match_gh_6755, 1, 1461}.
  {label,1460}.
    {line,[{location,"bs_match_r25_SUITE.erl",2809}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_bs_match_gh_6755},1}.
  {label,1461}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {test,bs_start_match3,{f,1466},1,[{x,0}],{x,0}}.
    {test,bs_match_string,{f,1466},[{x,0},16,{string,<<"10">>}]}.
    {test,bs_get_integer2,
          {f,1466},
          1,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,16},
           1,
           {field_flags,[{anno,[2811,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {select_val,{tr,{x,1},{t_integer,{0,65535}}},
                {f,1466},
                {list,[{integer,12336},{f,1463},{integer,12337},{f,1462}]}}.
  {label,1462}.
    {test,bs_test_tail2,{f,1466},[{x,0},0]}.
    {move,{atom,test2},{x,0}}.
    {jump,{f,1464}}.
  {label,1463}.
    {test,bs_test_tail2,{f,1466},[{x,0},0]}.
    {move,{atom,test},{x,0}}.
  {label,1464}.
    {line,[{location,"bs_match_r25_SUITE.erl",2815}]}.
    {call_ext,1,{extfunc,erlang,atom_to_list,1}}.
    {test,is_eq_exact,
          {f,1465},
          [{tr,{y,0},{t_bs_matchable,1}},{literal,<<"b">>}]}.
    {move,{atom,b},{x,0}}.
    {deallocate,1}.
    return.
  {label,1465}.
    {line,[{location,"bs_match_r25_SUITE.erl",2817}]}.
    {case_end,{y,0}}.
  {label,1466}.
    {line,[{location,"bs_match_r25_SUITE.erl",2810}]}.
    {case_end,{y,0}}.


{function, do_bs_match_gh_7467, 1, 1468}.
  {label,1467}.
    {line,[{location,"bs_match_r25_SUITE.erl",2821}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_bs_match_gh_7467},1}.
  {label,1468}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_test_tail2,{f,1469},[{x,1},1]}.
    {call_only,1,{f,1468}}. % do_bs_match_gh_7467/1
  {label,1469}.
    {line,[{location,"bs_match_r25_SUITE.erl",2822}]}.
    {badmatch,{x,0}}.


{function, binary_aliases, 1, 1471}.
  {label,1470}.
    {line,[{location,"bs_match_r25_SUITE.erl",2827}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,binary_aliases},1}.
  {label,1471}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",2829}]}.
    {call,1,{f,1686}}. % id/1
    {call,1,{f,1745}}. % '-binary_aliases/1-fun-0-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,255}}}}}]}}.
    {test,is_eq_exact,
          {f,1566},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,255}},2 => {t_integer,{0,255}}}}},
           {literal,{42,42}}]}.
    {move,{literal,<<"c">>},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_r25_SUITE.erl",2830}]}.
    {call,1,{f,1686}}. % id/1
    {call,1,{f,1745}}. % '-binary_aliases/1-fun-0-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,255}}}}}]}}.
    {test,is_eq_exact,
          {f,1565},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,255}},2 => {t_integer,{0,255}}}}},
           {literal,{99,99}}]}.
    {move,{literal,{ba_foo,<<"ÿ">>,undefined,undefined}},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_r25_SUITE.erl",2833}]}.
    {call,1,{f,1686}}. % id/1
    {call,1,{f,1743}}. % '-binary_aliases/1-fun-1-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,255}}}}}]}}.
    {test,is_eq_exact,
          {f,1564},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,255}},2 => {t_integer,{0,255}}}}},
           {literal,{255,255}}]}.
    {move,{literal,{ba_foo,<<"k">>,undefined,undefined}},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_r25_SUITE.erl",2834}]}.
    {call,1,{f,1686}}. % id/1
    {call,1,{f,1743}}. % '-binary_aliases/1-fun-1-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,255}}}}}]}}.
    {test,is_eq_exact,
          {f,1563},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,255}},2 => {t_integer,{0,255}}}}},
           {literal,{107,107}}]}.
    {move,{literal,{ba_foo,<<"ÿ">>,undefined,undefined}},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_r25_SUITE.erl",2837}]}.
    {call,1,{f,1686}}. % id/1
    {call,1,{f,1741}}. % '-binary_aliases/1-fun-2-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,15}},
                                     3 => {t_integer,{0,15}}}}}]}}.
    {test,is_eq_exact,
          {f,1562},
          [{tr,{x,0},
               {t_tuple,3,true,
                        #{1 => {t_integer,{0,255}},
                          2 => {t_integer,{0,15}},
                          3 => {t_integer,{0,15}}}}},
           {literal,{255,15,15}}]}.
    {move,{literal,{ba_foo,<<"\\">>,undefined,undefined}},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_r25_SUITE.erl",2838}]}.
    {call,1,{f,1686}}. % id/1
    {call,1,{f,1741}}. % '-binary_aliases/1-fun-2-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,15}},
                                     3 => {t_integer,{0,15}}}}}]}}.
    {test,is_eq_exact,
          {f,1561},
          [{tr,{x,0},
               {t_tuple,3,true,
                        #{1 => {t_integer,{0,255}},
                          2 => {t_integer,{0,15}},
                          3 => {t_integer,{0,15}}}}},
           {literal,{92,5,12}}]}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_r25_SUITE.erl",2845}]}.
    {call,1,{f,1686}}. % id/1
    {call,1,{f,1739}}. % '-binary_aliases/1-fun-3-'/1
    {test,is_eq_exact,{f,1560},[{x,0},{integer,6}]}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_r25_SUITE.erl",2851}]}.
    {call,1,{f,1686}}. % id/1
    {call,1,{f,1736}}. % '-binary_aliases/1-fun-4-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,255}},
                                     3 => {t_bs_matchable,1}}}}]}}.
    {test,is_eq_exact,
          {f,1559},
          [{tr,{x,0},
               {t_tuple,3,true,
                        #{1 => {t_integer,{0,255}},
                          2 => {t_integer,{0,255}},
                          3 => {t_bs_matchable,1}}}},
           {literal,{42,42,<<"*">>}}]}.
    {move,{integer,12},{x,1}}.
    {move,{integer,7},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_r25_SUITE.erl",2857}]}.
    {call,2,{f,1733}}. % '-binary_aliases/1-fun-5-'/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,1558},[{tr,{x,0},{t_integer,{0,255}}},{integer,124}]}.
    {move,{integer,13},{x,1}}.
    {move,{integer,14},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_r25_SUITE.erl",2858}]}.
    {call,2,{f,1733}}. % '-binary_aliases/1-fun-5-'/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,1557},[{tr,{x,0},{t_integer,{0,255}}},{integer,237}]}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_r25_SUITE.erl",2864}]}.
    {call,1,{f,1686}}. % id/1
    {call,1,{f,1730}}. % '-binary_aliases/1-fun-6-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,{0,15}},
                                     2 => {t_integer,{0,15}},
                                     3 => {t_bs_matchable,1}}}}]}}.
    {test,is_eq_exact,
          {f,1556},
          [{tr,{x,0},
               {t_tuple,3,true,
                        #{1 => {t_integer,{0,15}},
                          2 => {t_integer,{0,15}},
                          3 => {t_bs_matchable,1}}}},
           {literal,{0,0,<<0>>}}]}.
    {'catch',{y,25},{f,1472}}.
    {move,{literal,<<1>>},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_r25_SUITE.erl",2865}]}.
    {call,1,{f,1730}}. % '-binary_aliases/1-fun-6-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,{0,15}},
                                     2 => {t_integer,{0,15}},
                                     3 => {t_bs_matchable,1}}}}]}}.
  {label,1472}.
    {catch_end,{y,25}}.
    {test,is_tagged_tuple,{f,1555},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1555},[{x,1}]}.
    {test,test_arity,{f,1555},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1555},[{x,1},{literal,{badmatch,<<1>>}}]}.
    {move,{literal,<<"ý">>},{x,0}}.
    {line,[{scope,"2"},{location,"bs_match_r25_SUITE.erl",2871}]}.
    {call,1,{f,1686}}. % id/1
    {call,1,{f,1727}}. % '-binary_aliases/1-fun-7-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,4,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,255}},
                                     3 => {t_bs_matchable,1},
                                     4 => {t_bs_matchable,1}}}}]}}.
    {test,is_eq_exact,
          {f,1554},
          [{tr,{x,0},
               {t_tuple,4,true,
                        #{1 => {t_integer,{0,255}},
                          2 => {t_integer,{0,255}},
                          3 => {t_bs_matchable,1},
                          4 => {t_bs_matchable,1}}}},
           {literal,{253,253,<<"ý">>,<<"ý">>}}]}.
    {move,{literal,<<"É">>},{x,0}}.
    {line,[{scope,"2"},{location,"bs_match_r25_SUITE.erl",2877}]}.
    {call,1,{f,1686}}. % id/1
    {call,1,{f,1724}}. % '-binary_aliases/1-fun-8-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,6,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,255}},
                                     3 => {t_bs_matchable,1},
                                     4 => {t_bs_matchable,1},
                                     5 => {t_bs_matchable,1},
                                     6 => {t_bs_matchable,1}}}}]}}.
    {test,is_eq_exact,
          {f,1553},
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
    {line,[{scope,"2"},{location,"bs_match_r25_SUITE.erl",2882}]}.
    {call,1,{f,1686}}. % id/1
    {call,1,{f,1721}}. % '-binary_aliases/1-fun-9-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,1552},
          [{tr,{x,0},{t_bitstring,256,true}},{literal,<<>>}]}.
    {'catch',{y,24},{f,1473}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,"2"},{location,"bs_match_r25_SUITE.erl",2883}]}.
    {call,1,{f,1686}}. % id/1
    {call,1,{f,1721}}. % '-binary_aliases/1-fun-9-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
  {label,1473}.
    {catch_end,{y,24}}.
    {test,is_tagged_tuple,{f,1551},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1551},[{x,1}]}.
    {test,test_arity,{f,1551},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1551},[{x,1},{literal,{badmatch,42}}]}.
    {move,{literal,<<0,0,0,0>>},{x,0}}.
    {line,[{scope,"0"},{location,"bs_match_r25_SUITE.erl",2889}]}.
    {call,1,{f,1686}}. % id/1
    {call,1,{f,1718}}. % '-binary_aliases/1-fun-10-'/1
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
          {f,1550},
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
    {line,[{scope,"0"},{location,"bs_match_r25_SUITE.erl",2891}]}.
    {call,1,{f,1686}}. % id/1
    {call,1,{f,1718}}. % '-binary_aliases/1-fun-10-'/1
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
          {f,1549},
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
    {line,[{scope,"0"},{location,"bs_match_r25_SUITE.erl",2894}]}.
    {call,1,{f,1686}}. % id/1
    {call,1,{f,1716}}. % '-binary_aliases/1-fun-11-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,255}}}}}]}}.
    {test,is_eq_exact,
          {f,1548},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,255}},2 => {t_integer,{0,255}}}}},
           {literal,{255,255}}]}.
    {move,{literal,#{key => <<"Ñ">>}},{x,0}}.
    {line,[{scope,"0"},{location,"bs_match_r25_SUITE.erl",2895}]}.
    {call,1,{f,1686}}. % id/1
    {call,1,{f,1716}}. % '-binary_aliases/1-fun-11-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,255}}}}}]}}.
    {test,is_eq_exact,
          {f,1547},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,255}},2 => {t_integer,{0,255}}}}},
           {literal,{209,209}}]}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{scope,"0"},{location,"bs_match_r25_SUITE.erl",2901}]}.
    {call,1,{f,1686}}. % id/1
    {call,1,{f,1713}}. % '-binary_aliases/1-fun-12-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,'+inf'}},
                                     3 => {t_bitstring,1,false}}}}]}}.
    {test,is_eq_exact,
          {f,1546},
          [{tr,{x,0},
               {t_tuple,3,true,
                        #{1 => {t_integer,{0,255}},
                          2 => {t_integer,{0,'+inf'}},
                          3 => {t_bitstring,1,false}}}},
           {literal,{0,0,<<>>}}]}.
    {move,{literal,<<1,1:1>>},{x,0}}.
    {line,[{scope,"0"},{location,"bs_match_r25_SUITE.erl",2902}]}.
    {call,1,{f,1686}}. % id/1
    {call,1,{f,1713}}. % '-binary_aliases/1-fun-12-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,'+inf'}},
                                     3 => {t_bitstring,1,false}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1545},[{tr,{x,1},{t_integer,{0,255}}},{integer,1}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,
          {f,1545},
          [{tr,{x,1},{t_integer,{0,'+inf'}}},{integer,1}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {test,bs_match_string,{f,1545},[{x,1},1,{string,<<128>>}]}.
    {test,bs_test_tail2,{f,1545},[{x,1},0]}.
    {move,{literal,<<"\b*">>},{x,0}}.
    {line,[{scope,"0"},{location,"bs_match_r25_SUITE.erl",2903}]}.
    {call,1,{f,1686}}. % id/1
    {call,1,{f,1713}}. % '-binary_aliases/1-fun-12-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,'+inf'}},
                                     3 => {t_bitstring,1,false}}}}]}}.
    {test,is_eq_exact,
          {f,1544},
          [{tr,{x,0},
               {t_tuple,3,true,
                        #{1 => {t_integer,{0,255}},
                          2 => {t_integer,{0,'+inf'}},
                          3 => {t_bitstring,1,false}}}},
           {literal,{8,42,<<"*">>}}]}.
    {move,{literal,[<<>>|0]},{x,0}}.
    {line,[{scope,"0"},{location,"bs_match_r25_SUITE.erl",2909}]}.
    {call,1,{f,1710}}. % '-binary_aliases/1-fun-13-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,[<<"ÿÿÿÿ">>|32]},{x,0}}.
    {line,[{scope,"0"},{location,"bs_match_r25_SUITE.erl",2910}]}.
    {call,1,{f,1710}}. % '-binary_aliases/1-fun-13-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,23},{f,1474}}.
    {move,{literal,[<<0,0>>|0]},{x,0}}.
    {line,[{scope,"0"},{location,"bs_match_r25_SUITE.erl",2911}]}.
    {call,1,{f,1710}}. % '-binary_aliases/1-fun-13-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1474}.
    {catch_end,{y,23}}.
    {test,is_tagged_tuple,{f,1543},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1543},[{x,1}]}.
    {test,test_arity,{f,1543},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1543},[{x,1},{literal,{badmatch,[<<0,0>>|0]}}]}.
    {'catch',{y,22},{f,1475}}.
    {move,{literal,[<<0,0>>|atom]},{x,0}}.
    {line,[{scope,"."},{location,"bs_match_r25_SUITE.erl",2912}]}.
    {call,1,{f,1710}}. % '-binary_aliases/1-fun-13-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1475}.
    {catch_end,{y,22}}.
    {test,is_tagged_tuple,{f,1542},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1542},[{x,1}]}.
    {test,test_arity,{f,1542},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1542},[{x,1},{literal,{badmatch,[<<0,0>>|atom]}}]}.
    {move,{literal,{<<>>,0}},{x,0}}.
    {line,[{scope,","},{location,"bs_match_r25_SUITE.erl",2918}]}.
    {call,1,{f,1707}}. % '-binary_aliases/1-fun-14-'/1
    {test,is_eq_exact,{f,1541},[{x,0},{integer,0}]}.
    {move,{literal,{<<"ÿÿÿÿ">>,32}},{x,0}}.
    {line,[{scope,","},{location,"bs_match_r25_SUITE.erl",2919}]}.
    {call,1,{f,1707}}. % '-binary_aliases/1-fun-14-'/1
    {test,is_eq_exact,{f,1540},[{x,0},{integer,32}]}.
    {'catch',{y,21},{f,1476}}.
    {move,{literal,{<<0,0>>,0}},{x,0}}.
    {line,[{scope,","},{location,"bs_match_r25_SUITE.erl",2920}]}.
    {call,1,{f,1707}}. % '-binary_aliases/1-fun-14-'/1
  {label,1476}.
    {catch_end,{y,21}}.
    {test,is_tagged_tuple,{f,1539},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1539},[{x,1}]}.
    {test,test_arity,{f,1539},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1539},[{x,1},{literal,{badmatch,{<<0,0>>,0}}}]}.
    {'catch',{y,20},{f,1477}}.
    {move,{literal,{<<0,0>>,atom}},{x,0}}.
    {line,[{scope,"*"},{location,"bs_match_r25_SUITE.erl",2921}]}.
    {call,1,{f,1707}}. % '-binary_aliases/1-fun-14-'/1
  {label,1477}.
    {catch_end,{y,20}}.
    {test,is_tagged_tuple,{f,1538},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1538},[{x,1}]}.
    {test,test_arity,{f,1538},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1538},[{x,1},{literal,{badmatch,{<<0,0>>,atom}}}]}.
    {move,{literal,[{<<>>,0}]},{x,0}}.
    {line,[{scope,"("},{location,"bs_match_r25_SUITE.erl",2927}]}.
    {call,1,{f,1704}}. % '-binary_aliases/1-fun-15-'/1
    {test,is_eq_exact,{f,1537},[{x,0},{integer,0}]}.
    {move,{literal,[{<<"ÿÿÿÿ">>,32}]},{x,0}}.
    {line,[{scope,"("},{location,"bs_match_r25_SUITE.erl",2928}]}.
    {call,1,{f,1704}}. % '-binary_aliases/1-fun-15-'/1
    {test,is_eq_exact,{f,1536},[{x,0},{integer,32}]}.
    {'catch',{y,19},{f,1478}}.
    {move,{literal,[{<<0,0>>,0}]},{x,0}}.
    {line,[{scope,"("},{location,"bs_match_r25_SUITE.erl",2929}]}.
    {call,1,{f,1704}}. % '-binary_aliases/1-fun-15-'/1
  {label,1478}.
    {catch_end,{y,19}}.
    {test,is_tagged_tuple,{f,1535},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1535},[{x,1}]}.
    {test,test_arity,{f,1535},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1535},[{x,1},{literal,{badmatch,[{<<0,0>>,0}]}}]}.
    {'catch',{y,18},{f,1479}}.
    {move,{literal,[{<<0,0>>,atom}]},{x,0}}.
    {line,[{scope,"&"},{location,"bs_match_r25_SUITE.erl",2930}]}.
    {call,1,{f,1704}}. % '-binary_aliases/1-fun-15-'/1
  {label,1479}.
    {catch_end,{y,18}}.
    {test,is_tagged_tuple,{f,1534},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1534},[{x,1}]}.
    {test,test_arity,{f,1534},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1534},[{x,1},{literal,{badmatch,[{<<0,0>>,atom}]}}]}.
    {move,{literal,#{[] => <<"*">>}},{x,0}}.
    {line,[{scope,"$"},{location,"bs_match_r25_SUITE.erl",2933}]}.
    {call,1,{f,1686}}. % id/1
    {call,1,{f,1702}}. % '-binary_aliases/1-fun-16-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,17},{f,1480}}.
    {move,{literal,#{[] => <<>>}},{x,0}}.
    {line,[{scope,"$"},{location,"bs_match_r25_SUITE.erl",2934}]}.
    {call,1,{f,1686}}. % id/1
    {call,1,{f,1702}}. % '-binary_aliases/1-fun-16-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1480}.
    {catch_end,{y,17}}.
    {test,is_tagged_tuple,{f,1533},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1533},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,16},{f,1481}}.
    {move,{atom,atom},{x,0}}.
    {line,[{scope,"#$"},{location,"bs_match_r25_SUITE.erl",2935}]}.
    {call,1,{f,1686}}. % id/1
    {call,1,{f,1702}}. % '-binary_aliases/1-fun-16-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1481}.
    {catch_end,{y,16}}.
    {test,is_tagged_tuple,{f,1532},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1532},[{x,1},2,{atom,function_clause}]}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,"!\""},{location,"bs_match_r25_SUITE.erl",2944}]}.
    {call,1,{f,1686}}. % id/1
    {call,1,{f,1699}}. % '-binary_aliases/1-fun-17-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1531},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope," "},{location,"bs_match_r25_SUITE.erl",2945}]}.
    {call,1,{f,1699}}. % '-binary_aliases/1-fun-17-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1530},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{literal,<<1:1>>},{x,0}}.
    {line,[{scope," "},{location,"bs_match_r25_SUITE.erl",2946}]}.
    {call,1,{f,1699}}. % '-binary_aliases/1-fun-17-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1529},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{atom,atom},{x,0}}.
    {line,[{scope," "},{location,"bs_match_r25_SUITE.erl",2947}]}.
    {call,1,{f,1699}}. % '-binary_aliases/1-fun-17-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {'catch',{y,15},{f,1482}}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{scope," "},{location,"bs_match_r25_SUITE.erl",2952}]}.
    {call,1,{f,1697}}. % '-binary_aliases/1-fun-18-'/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1482}.
    {catch_end,{y,15}}.
    {test,is_tagged_tuple,{f,1528},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1528},[{x,1}]}.
    {test,test_arity,{f,1528},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1528},[{x,1},{literal,{badmatch,<<0>>}}]}.
    {'catch',{y,14},{f,1483}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[30]},{location,"bs_match_r25_SUITE.erl",2953}]}.
    {call,1,{f,1697}}. % '-binary_aliases/1-fun-18-'/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1483}.
    {catch_end,{y,14}}.
    {test,is_tagged_tuple,{f,1527},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1527},[{x,1}]}.
    {test,test_arity,{f,1527},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1527},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,13},{f,1484}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[28]},{location,"bs_match_r25_SUITE.erl",2954}]}.
    {call,1,{f,1697}}. % '-binary_aliases/1-fun-18-'/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1484}.
    {catch_end,{y,13}}.
    {test,is_tagged_tuple,{f,1526},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1526},[{x,1}]}.
    {test,test_arity,{f,1526},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1526},[{x,1},{literal,{badmatch,0}}]}.
    {move,{literal,[<<>>]},{x,0}}.
    {line,[{scope,[26]},{location,"bs_match_r25_SUITE.erl",2957}]}.
    {call,1,{f,1695}}. % '-binary_aliases/1-fun-19-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[26]},{location,"bs_match_r25_SUITE.erl",2959}]}.
    {call,1,{f,1686}}. % id/1
    {move,{x,0},{y,25}}.
    {move,{literal,<<0>>},{x,0}}.
    {call,1,{f,1686}}. % id/1
    {move,{x,0},{y,24}}.
    {move,{integer,0},{x,0}}.
    {call,1,{f,1686}}. % id/1
    {move,{y,24},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{y,25},{x,0}}.
    {init_yregs,{list,[{y,24},{y,25}]}}.
    {call,3,{f,1568}}. % gh_6467/3
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
    {'catch',{y,12},{f,1485}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[26]},{location,"bs_match_r25_SUITE.erl",2960}]}.
    {call,1,{f,1686}}. % id/1
    {move,{x,0},{y,25}}.
    {move,{literal,<<0>>},{x,0}}.
    {call,1,{f,1686}}. % id/1
    {move,{x,0},{y,24}}.
    {move,nil,{x,0}}.
    {call,1,{f,1686}}. % id/1
    {move,{y,24},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{y,25},{x,0}}.
    {init_yregs,{list,[{y,24},{y,25}]}}.
    {call,3,{f,1568}}. % gh_6467/3
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
  {label,1485}.
    {catch_end,{y,12}}.
    {test,is_tagged_tuple,{f,1525},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1525},[{x,1}]}.
    {test,test_arity,{f,1525},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1525},[{x,1},{literal,{badmatch,0}}]}.
    {'catch',{y,11},{f,1486}}.
    {move,{literal,<<7>>},{x,0}}.
    {line,[{scope,[24]},{location,"bs_match_r25_SUITE.erl",2961}]}.
    {call,1,{f,1686}}. % id/1
    {move,{x,0},{y,25}}.
    {move,{literal,<<"!">>},{x,0}}.
    {call,1,{f,1686}}. % id/1
    {move,{x,0},{y,24}}.
    {move,nil,{x,0}}.
    {call,1,{f,1686}}. % id/1
    {move,{y,24},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{y,25},{x,0}}.
    {init_yregs,{list,[{y,24},{y,25}]}}.
    {call,3,{f,1568}}. % gh_6467/3
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
  {label,1486}.
    {catch_end,{y,11}}.
    {test,is_tagged_tuple,{f,1524},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1524},[{x,1}]}.
    {test,test_arity,{f,1524},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1524},[{x,1},{literal,{badmatch,<<7>>}}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2966}]}.
    {call,1,{f,1692}}. % '-binary_aliases/1-fun-20-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1523},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2967}]}.
    {call,1,{f,1692}}. % '-binary_aliases/1-fun-20-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1522},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2968}]}.
    {call,1,{f,1692}}. % '-binary_aliases/1-fun-20-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,true},{x,1}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2970}]}.
    {call,2,{f,1571}}. % gh6415_a/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,true]}}]}}.
    {test,is_eq_exact,{f,1521},[{tr,{x,0},{t_atom,[error,true]}},{atom,true}]}.
    {move,{atom,false},{x,1}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2971}]}.
    {call,2,{f,1571}}. % gh6415_a/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,false},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2972}]}.
    {call,2,{f,1571}}. % gh6415_a/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,not_bool},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2973}]}.
    {call,2,{f,1571}}. % gh6415_a/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,true},{x,1}}.
    {move,{atom,any},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2974}]}.
    {call,2,{f,1571}}. % gh6415_a/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,false},{x,1}}.
    {move,{atom,any},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2975}]}.
    {call,2,{f,1571}}. % gh6415_a/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,<<"c">>},{x,1}}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2977}]}.
    {call,2,{f,1574}}. % gh6415_b/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1520},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{literal,<<"c">>},{x,1}}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2978}]}.
    {call,2,{f,1574}}. % gh6415_b/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1519},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{literal,<<>>},{x,1}}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2979}]}.
    {call,2,{f,1574}}. % gh6415_b/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1518},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{literal,<<>>},{x,1}}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2980}]}.
    {call,2,{f,1574}}. % gh6415_b/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1517},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{atom,true},{x,1}}.
    {move,{literal,<<"\n">>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2982}]}.
    {call,2,{f,1578}}. % gh6415_c/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1516},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{atom,false},{x,1}}.
    {move,{literal,<<"\n">>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2983}]}.
    {call,2,{f,1578}}. % gh6415_c/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,true},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2984}]}.
    {call,2,{f,1578}}. % gh6415_c/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1515},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{atom,true},{x,1}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2985}]}.
    {call,2,{f,1578}}. % gh6415_c/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2987}]}.
    {call,1,{f,1581}}. % gh6415_case_clause/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2988}]}.
    {call,1,{f,1581}}. % gh6415_case_clause/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2989}]}.
    {call,1,{f,1581}}. % gh6415_case_clause/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2991}]}.
    {call,1,{f,1599}}. % gh6415_nomatch/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2992}]}.
    {call,1,{f,1599}}. % gh6415_nomatch/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,<<"ab">>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2993}]}.
    {call,1,{f,1599}}. % gh6415_nomatch/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,#{0 => <<>>}},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2994}]}.
    {call,1,{f,1599}}. % gh6415_nomatch/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,#{0 => <<"*">>}},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2995}]}.
    {call,1,{f,1599}}. % gh6415_nomatch/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,#{0 => 42}},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2996}]}.
    {call,1,{f,1599}}. % gh6415_nomatch/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,#{}},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2997}]}.
    {call,1,{f,1599}}. % gh6415_nomatch/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,{a,tuple}},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2998}]}.
    {call,1,{f,1599}}. % gh6415_nomatch/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,an_atom},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2999}]}.
    {call,1,{f,1599}}. % gh6415_nomatch/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",3001}]}.
    {call,1,{f,1686}}. % id/1
    {call,1,{f,1645}}. % gh6415_match_a/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,1514},[{tr,{x,0},{t_integer,{0,255}}},{integer,42}]}.
    {'catch',{y,10},{f,1487}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",3002}]}.
    {call,1,{f,1686}}. % id/1
    {call,1,{f,1645}}. % gh6415_match_a/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
  {label,1487}.
    {catch_end,{y,10}}.
    {test,is_tagged_tuple,{f,1513},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1513},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,9},{f,1488}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[21,22]},{location,"bs_match_r25_SUITE.erl",3003}]}.
    {call,1,{f,1686}}. % id/1
    {call,1,{f,1645}}. % gh6415_match_a/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
  {label,1488}.
    {catch_end,{y,9}}.
    {test,is_tagged_tuple,{f,1512},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1512},[{x,1},2,{atom,function_clause}]}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[19,20]},{location,"bs_match_r25_SUITE.erl",3005}]}.
    {call,1,{f,1686}}. % id/1
    {call,1,{f,1647}}. % gh6415_match_b/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
          {f,1511},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,255}},
                          2 => {t_bitstring,8,false}}}},
           {literal,{42,<<>>}}]}.
    {'catch',{y,8},{f,1489}}.
    {move,{literal,<<1,2>>},{x,0}}.
    {line,[{scope,[18]},{location,"bs_match_r25_SUITE.erl",3006}]}.
    {call,1,{f,1686}}. % id/1
    {call,1,{f,1647}}. % gh6415_match_b/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_bitstring,8,false}}}}]}}.
  {label,1489}.
    {catch_end,{y,8}}.
    {test,is_tagged_tuple,{f,1510},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1510},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,7},{f,1490}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[17,18]},{location,"bs_match_r25_SUITE.erl",3007}]}.
    {call,1,{f,1686}}. % id/1
    {call,1,{f,1647}}. % gh6415_match_b/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_bitstring,8,false}}}}]}}.
  {label,1490}.
    {catch_end,{y,7}}.
    {test,is_tagged_tuple,{f,1509},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1509},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,6},{f,1491}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[15,16]},{location,"bs_match_r25_SUITE.erl",3008}]}.
    {call,1,{f,1686}}. % id/1
    {call,1,{f,1647}}. % gh6415_match_b/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_bitstring,8,false}}}}]}}.
  {label,1491}.
    {catch_end,{y,6}}.
    {test,is_tagged_tuple,{f,1508},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1508},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,5},{f,1492}}.
    {line,[{scope,[13,14]},{location,"bs_match_r25_SUITE.erl",3010}]}.
    {call,0,{f,1649}}. % gh6415_match_c/0
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
  {label,1492}.
    {catch_end,{y,5}}.
    {test,is_tagged_tuple,{f,1507},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1507},[{x,1}]}.
    {test,test_arity,{f,1507},[{x,1},2]}.
    {move,{literal,<<"£">>},{x,0}}.
    {line,[{scope,"\v\f"},{location,"bs_match_r25_SUITE.erl",3012}]}.
    {call,1,{f,1686}}. % id/1
    {call,1,{f,1653}}. % gh6415_match_d/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,4},{f,1493}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,"\v\f"},{location,"bs_match_r25_SUITE.erl",3013}]}.
    {call,1,{f,1686}}. % id/1
    {call,1,{f,1653}}. % gh6415_match_d/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1493}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,1506},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1506},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,3},{f,1494}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,"\t\n"},{location,"bs_match_r25_SUITE.erl",3014}]}.
    {call,1,{f,1686}}. % id/1
    {call,1,{f,1653}}. % gh6415_match_d/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1494}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,1505},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1505},[{x,1},2,{atom,function_clause}]}.
    {move,{literal,<<163,0>>},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_r25_SUITE.erl",3016}]}.
    {call,1,{f,1686}}. % id/1
    {call,1,{f,1655}}. % gh6415_match_e/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<"c\b*">>},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_r25_SUITE.erl",3017}]}.
    {call,1,{f,1686}}. % id/1
    {call,1,{f,1655}}. % gh6415_match_e/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<99,17,255,255,1:1>>},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_r25_SUITE.erl",3018}]}.
    {call,1,{f,1686}}. % id/1
    {call,1,{f,1655}}. % gh6415_match_e/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,2},{f,1495}}.
    {move,{literal,<<"£">>},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_r25_SUITE.erl",3019}]}.
    {call,1,{f,1686}}. % id/1
    {call,1,{f,1655}}. % gh6415_match_e/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1495}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,1504},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1504},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,1},{f,1496}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r25_SUITE.erl",3020}]}.
    {call,1,{f,1686}}. % id/1
    {call,1,{f,1655}}. % gh6415_match_e/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1496}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,1503},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1503},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,0},{f,1497}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r25_SUITE.erl",3021}]}.
    {call,1,{f,1686}}. % id/1
    {call,1,{f,1655}}. % gh6415_match_e/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1497}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1502},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1502},[{x,1},2,{atom,function_clause}]}.
    {move,{literal,<<17,15,48,1:1>>},{x,0}}.
    {line,[{scope,[1,2]},{location,"bs_match_r25_SUITE.erl",3023}]}.
    {call,1,{f,1686}}. % id/1
    {call,1,{f,1657}}. % gh6415_match_f/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[error]},
                                   none,
                                   {t_integer,{0,131071}},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,1501},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,
                        {t_integer,{0,131071}},
                        none,none}},
           {integer,7777}]}.
    {move,{literal,<<17,2,105,0:1>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",3024}]}.
    {call,1,{f,1686}}. % id/1
    {call,1,{f,1657}}. % gh6415_match_f/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[error]},
                                   none,
                                   {t_integer,{0,131071}},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,1500},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,
                        {t_integer,{0,131071}},
                        none,none}},
           {integer,1234}]}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",3025}]}.
    {call,1,{f,1686}}. % id/1
    {call,1,{f,1657}}. % gh6415_match_f/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[error]},
                                   none,
                                   {t_integer,{0,131071}},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,1499},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,
                        {t_integer,{0,131071}},
                        none,none}},
           {atom,error}]}.
    {move,{literal,<<"\b*">>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",3026}]}.
    {call,1,{f,1686}}. % id/1
    {call,1,{f,1657}}. % gh6415_match_f/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[error]},
                                   none,
                                   {t_integer,{0,131071}},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,1498},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,
                        {t_integer,{0,131071}},
                        none,none}},
           {atom,error}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,26}.
    return.
  {label,1498}.
    {badmatch,{x,0}}.
  {label,1499}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",3025}]}.
    {badmatch,{x,0}}.
  {label,1500}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",3024}]}.
    {badmatch,{x,0}}.
  {label,1501}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",3023}]}.
    {badmatch,{x,0}}.
  {label,1502}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",3021}]}.
    {badmatch,{x,0}}.
  {label,1503}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",3020}]}.
    {badmatch,{x,0}}.
  {label,1504}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",3019}]}.
    {badmatch,{x,0}}.
  {label,1505}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",3014}]}.
    {badmatch,{x,0}}.
  {label,1506}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",3013}]}.
    {badmatch,{x,0}}.
  {label,1507}.
    {line,[{scope,"\n"},{location,"bs_match_r25_SUITE.erl",3010}]}.
    {badmatch,{x,0}}.
  {label,1508}.
    {line,[{scope,"\f"},{location,"bs_match_r25_SUITE.erl",3008}]}.
    {badmatch,{x,0}}.
  {label,1509}.
    {line,[{scope,[14]},{location,"bs_match_r25_SUITE.erl",3007}]}.
    {badmatch,{x,0}}.
  {label,1510}.
    {line,[{scope,[16]},{location,"bs_match_r25_SUITE.erl",3006}]}.
    {badmatch,{x,0}}.
  {label,1511}.
    {line,[{scope,[18]},{location,"bs_match_r25_SUITE.erl",3005}]}.
    {badmatch,{x,0}}.
  {label,1512}.
    {line,[{scope,[18]},{location,"bs_match_r25_SUITE.erl",3003}]}.
    {badmatch,{x,0}}.
  {label,1513}.
    {line,[{scope,[20]},{location,"bs_match_r25_SUITE.erl",3002}]}.
    {badmatch,{x,0}}.
  {label,1514}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",3001}]}.
    {badmatch,{x,0}}.
  {label,1515}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2984}]}.
    {badmatch,{atom,ok}}.
  {label,1516}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2982}]}.
    {badmatch,{atom,error}}.
  {label,1517}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2980}]}.
    {badmatch,{atom,ok}}.
  {label,1518}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2979}]}.
    {badmatch,{atom,ok}}.
  {label,1519}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2978}]}.
    {badmatch,{atom,error}}.
  {label,1520}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2977}]}.
    {badmatch,{atom,error}}.
  {label,1521}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2970}]}.
    {badmatch,{atom,error}}.
  {label,1522}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2967}]}.
    {badmatch,{atom,ok}}.
  {label,1523}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2966}]}.
    {badmatch,{atom,error}}.
  {label,1524}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2961}]}.
    {badmatch,{x,0}}.
  {label,1525}.
    {line,[{scope,[24]},{location,"bs_match_r25_SUITE.erl",2960}]}.
    {badmatch,{x,0}}.
  {label,1526}.
    {line,[{scope,[26]},{location,"bs_match_r25_SUITE.erl",2954}]}.
    {badmatch,{x,0}}.
  {label,1527}.
    {line,[{scope,[28]},{location,"bs_match_r25_SUITE.erl",2953}]}.
    {badmatch,{x,0}}.
  {label,1528}.
    {line,[{scope,[30]},{location,"bs_match_r25_SUITE.erl",2952}]}.
    {badmatch,{x,0}}.
  {label,1529}.
    {line,[{scope," "},{location,"bs_match_r25_SUITE.erl",2946}]}.
    {badmatch,{atom,ok}}.
  {label,1530}.
    {line,[{scope," "},{location,"bs_match_r25_SUITE.erl",2945}]}.
    {badmatch,{atom,ok}}.
  {label,1531}.
    {line,[{scope," "},{location,"bs_match_r25_SUITE.erl",2944}]}.
    {badmatch,{atom,error}}.
  {label,1532}.
    {line,[{scope," "},{location,"bs_match_r25_SUITE.erl",2935}]}.
    {badmatch,{x,0}}.
  {label,1533}.
    {line,[{scope,"\""},{location,"bs_match_r25_SUITE.erl",2934}]}.
    {badmatch,{x,0}}.
  {label,1534}.
    {line,[{scope,"$"},{location,"bs_match_r25_SUITE.erl",2930}]}.
    {badmatch,{x,0}}.
  {label,1535}.
    {line,[{scope,"&"},{location,"bs_match_r25_SUITE.erl",2929}]}.
    {badmatch,{x,0}}.
  {label,1536}.
    {line,[{scope,"("},{location,"bs_match_r25_SUITE.erl",2928}]}.
    {badmatch,{x,0}}.
  {label,1537}.
    {line,[{scope,"("},{location,"bs_match_r25_SUITE.erl",2927}]}.
    {badmatch,{x,0}}.
  {label,1538}.
    {line,[{scope,"("},{location,"bs_match_r25_SUITE.erl",2921}]}.
    {badmatch,{x,0}}.
  {label,1539}.
    {line,[{scope,"*"},{location,"bs_match_r25_SUITE.erl",2920}]}.
    {badmatch,{x,0}}.
  {label,1540}.
    {line,[{scope,","},{location,"bs_match_r25_SUITE.erl",2919}]}.
    {badmatch,{x,0}}.
  {label,1541}.
    {line,[{scope,","},{location,"bs_match_r25_SUITE.erl",2918}]}.
    {badmatch,{x,0}}.
  {label,1542}.
    {line,[{scope,","},{location,"bs_match_r25_SUITE.erl",2912}]}.
    {badmatch,{x,0}}.
  {label,1543}.
    {line,[{scope,"."},{location,"bs_match_r25_SUITE.erl",2911}]}.
    {badmatch,{x,0}}.
  {label,1544}.
    {line,[{scope,"0"},{location,"bs_match_r25_SUITE.erl",2903}]}.
    {badmatch,{x,0}}.
  {label,1545}.
    {line,[{scope,"0"},{location,"bs_match_r25_SUITE.erl",2902}]}.
    {badmatch,{x,0}}.
  {label,1546}.
    {line,[{scope,"0"},{location,"bs_match_r25_SUITE.erl",2901}]}.
    {badmatch,{x,0}}.
  {label,1547}.
    {line,[{scope,"0"},{location,"bs_match_r25_SUITE.erl",2895}]}.
    {badmatch,{x,0}}.
  {label,1548}.
    {line,[{scope,"0"},{location,"bs_match_r25_SUITE.erl",2894}]}.
    {badmatch,{x,0}}.
  {label,1549}.
    {line,[{scope,"0"},{location,"bs_match_r25_SUITE.erl",2890}]}.
    {badmatch,{x,0}}.
  {label,1550}.
    {line,[{scope,"0"},{location,"bs_match_r25_SUITE.erl",2889}]}.
    {badmatch,{x,0}}.
  {label,1551}.
    {line,[{scope,"0"},{location,"bs_match_r25_SUITE.erl",2883}]}.
    {badmatch,{x,0}}.
  {label,1552}.
    {line,[{scope,"2"},{location,"bs_match_r25_SUITE.erl",2882}]}.
    {badmatch,{x,0}}.
  {label,1553}.
    {line,[{scope,"2"},{location,"bs_match_r25_SUITE.erl",2877}]}.
    {badmatch,{x,0}}.
  {label,1554}.
    {line,[{scope,"2"},{location,"bs_match_r25_SUITE.erl",2871}]}.
    {badmatch,{x,0}}.
  {label,1555}.
    {line,[{scope,"2"},{location,"bs_match_r25_SUITE.erl",2865}]}.
    {badmatch,{x,0}}.
  {label,1556}.
    {line,[{scope,"4"},{location,"bs_match_r25_SUITE.erl",2864}]}.
    {badmatch,{x,0}}.
  {label,1557}.
    {line,[{scope,"4"},{location,"bs_match_r25_SUITE.erl",2858}]}.
    {badmatch,{x,0}}.
  {label,1558}.
    {line,[{scope,"4"},{location,"bs_match_r25_SUITE.erl",2857}]}.
    {badmatch,{x,0}}.
  {label,1559}.
    {line,[{scope,"4"},{location,"bs_match_r25_SUITE.erl",2851}]}.
    {badmatch,{x,0}}.
  {label,1560}.
    {line,[{scope,"4"},{location,"bs_match_r25_SUITE.erl",2845}]}.
    {badmatch,{x,0}}.
  {label,1561}.
    {line,[{scope,"4"},{location,"bs_match_r25_SUITE.erl",2838}]}.
    {badmatch,{x,0}}.
  {label,1562}.
    {line,[{scope,"4"},{location,"bs_match_r25_SUITE.erl",2837}]}.
    {badmatch,{x,0}}.
  {label,1563}.
    {line,[{scope,"4"},{location,"bs_match_r25_SUITE.erl",2834}]}.
    {badmatch,{x,0}}.
  {label,1564}.
    {line,[{scope,"4"},{location,"bs_match_r25_SUITE.erl",2833}]}.
    {badmatch,{x,0}}.
  {label,1565}.
    {line,[{scope,"4"},{location,"bs_match_r25_SUITE.erl",2830}]}.
    {badmatch,{x,0}}.
  {label,1566}.
    {line,[{scope,"4"},{location,"bs_match_r25_SUITE.erl",2829}]}.
    {badmatch,{x,0}}.


{function, gh_6467, 3, 1568}.
  {label,1567}.
    {line,[{location,"bs_match_r25_SUITE.erl",3033}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh_6467},3}.
  {label,1568}.
    {test,is_nil,{f,1569},[{x,2}]}.
    {line,[{location,"bs_match_r25_SUITE.erl",3034}]}.
    {badmatch,{x,0}}.
  {label,1569}.
    {test,bs_start_match3,{f,1567},3,[{x,1}],{x,3}}.
    {test,bs_test_tail2,{f,1567},[{x,3},8]}.
    {move,{atom,a},{x,0}}.
    return.


{function, gh6415_a, 2, 1571}.
  {label,1570}.
    {line,[{location,"bs_match_r25_SUITE.erl",3038}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_a},2}.
  {label,1571}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[any]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[false,not_bool,true]}}]}}.
    {test,bs_start_match3,{f,1572},2,[{x,0}],{x,0}}.
    {test,bs_test_tail2,{f,1572},[{x,0},8]}.
    {test,is_eq_exact,{f,1572},[{x,1},{atom,true}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,1572}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_b, 2, 1574}.
  {label,1573}.
    {line,[{location,"bs_match_r25_SUITE.erl",3043}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_b},2}.
  {label,1574}.
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,1576},
          2,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[3043,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1576},[{x,1},0]}.
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
          {f,1575},
          [{tr,{x,1},{t_atom,[false,true]}},{atom,false}]}.
    {test,is_eq_exact,{f,1576},[{tr,{x,0},{t_atom,[false,true]}},{atom,true}]}.
  {label,1575}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1576}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_c, 2, 1578}.
  {label,1577}.
    {line,[{location,"bs_match_r25_SUITE.erl",3048}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_c},2}.
  {label,1578}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,none,
                                   {t_integer,{42,42}},
                                   none,
                                   {t_bitstring,8,false}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[false,true]}}]}}.
    {test,bs_start_match3,{f,1579},2,[{x,0}],{x,0}}.
    {test,bs_test_tail2,{f,1579},[{x,0},8]}.
    {test,is_eq_exact,{f,1579},[{x,1},{atom,true}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1579}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_case_clause, 1, 1581}.
  {label,1580}.
    {line,[{location,"bs_match_r25_SUITE.erl",3053}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_case_clause},1}.
  {label,1581}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[a]},
                                   none,
                                   {t_integer,{42,42}},
                                   none,
                                   {t_bitstring,8,false}}}]}}.
    {allocate,5,1}.
    {init_yregs,{list,[{y,1},{y,2},{y,3}]}}.
    {move,{x,0},{y,0}}.
    {'catch',{y,4},{f,1582}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3054}]}.
    {call,1,{f,1591}}. % gh6415_case_clause_a/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1582}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,1589},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1589},[{x,1}]}.
    {test,test_arity,{f,1589},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1589},[{x,1},{literal,{case_clause,0}}]}.
    {'catch',{y,3},{f,1583}}.
    {move,{y,0},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",3055}]}.
    {call,1,{f,1593}}. % gh6415_case_clause_b/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1583}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,1588},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1588},[{x,1}]}.
    {test,test_arity,{f,1588},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1588},[{x,1},{literal,{case_clause,0}}]}.
    {'catch',{y,2},{f,1584}}.
    {move,{y,0},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",3056}]}.
    {call,1,{f,1595}}. % gh6415_case_clause_c/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1584}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,1587},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1587},[{x,1}]}.
    {test,test_arity,{f,1587},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1587},[{x,1},{literal,{case_clause,0}}]}.
    {'catch',{y,1},{f,1585}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",3057}]}.
    {call,1,{f,1597}}. % gh6415_case_clause_d/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1585}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,1586},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1586},[{x,1}]}.
    {test,test_arity,{f,1586},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1586},[{x,1},{literal,{case_clause,0}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,5}.
    return.
  {label,1586}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",3057}]}.
    {badmatch,{x,0}}.
  {label,1587}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",3056}]}.
    {badmatch,{x,0}}.
  {label,1588}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",3055}]}.
    {badmatch,{x,0}}.
  {label,1589}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",3054}]}.
    {badmatch,{x,0}}.


{function, gh6415_case_clause_a, 1, 1591}.
  {label,1590}.
    {line,[{location,"bs_match_r25_SUITE.erl",3060}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_case_clause_a},1}.
  {label,1591}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[a]},
                                   none,
                                   {t_integer,{42,42}},
                                   none,
                                   {t_bitstring,8,false}}}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3061}]}.
    {case_end,{integer,0}}.


{function, gh6415_case_clause_b, 1, 1593}.
  {label,1592}.
    {line,[{location,"bs_match_r25_SUITE.erl",3067}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_case_clause_b},1}.
  {label,1593}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[a]},
                                   none,
                                   {t_integer,{42,42}},
                                   none,
                                   {t_bitstring,8,false}}}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3068}]}.
    {case_end,{integer,0}}.


{function, gh6415_case_clause_c, 1, 1595}.
  {label,1594}.
    {line,[{location,"bs_match_r25_SUITE.erl",3074}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_case_clause_c},1}.
  {label,1595}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[a]},
                                   none,
                                   {t_integer,{42,42}},
                                   none,
                                   {t_bitstring,8,false}}}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3075}]}.
    {case_end,{integer,0}}.


{function, gh6415_case_clause_d, 1, 1597}.
  {label,1596}.
    {line,[{location,"bs_match_r25_SUITE.erl",3081}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_case_clause_d},1}.
  {label,1597}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[a]},
                                   none,
                                   {t_integer,{42,42}},
                                   none,
                                   {t_bitstring,8,false}}}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3082}]}.
    {case_end,{integer,0}}.


{function, gh6415_nomatch, 1, 1599}.
  {label,1598}.
    {line,[{location,"bs_match_r25_SUITE.erl",3088}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_nomatch},1}.
  {label,1599}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",3089}]}.
    {call,1,{f,1686}}. % id/1
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3090}]}.
    {call,1,{f,1611}}. % gh6415_nomatch_a/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3091}]}.
    {call,1,{f,1614}}. % gh6415_nomatch_b/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,
          {f,1609},
          [{tr,{x,0},{t_atom,[error,ok]}},{tr,{y,0},{t_atom,[error,ok]}}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3092}]}.
    {call,1,{f,1617}}. % gh6415_nomatch_c/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {test,is_eq_exact,{f,1608},[{tr,{y,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3093}]}.
    {call,1,{f,1619}}. % gh6415_nomatch_d/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1607},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3094}]}.
    {call,1,{f,1622}}. % gh6415_nomatch_e/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1606},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3095}]}.
    {call,1,{f,1625}}. % gh6415_nomatch_f/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1605},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3096}]}.
    {call,1,{f,1628}}. % gh6415_nomatch_g/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1604},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3097}]}.
    {call,1,{f,1631}}. % gh6415_nomatch_h/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1603},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3098}]}.
    {call,1,{f,1634}}. % gh6415_nomatch_i/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1602},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3099}]}.
    {call,1,{f,1637}}. % gh6415_nomatch_j/1
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
          {f,1601},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,none,
                        {t_tuple,2,true,
                                 #{1 => {t_integer,{0,65535}},
                                   2 => {t_bitstring,8,false}}},
                        none}},
           {atom,error}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3100}]}.
    {call,1,{f,1640}}. % gh6415_nomatch_k/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{y,1},{x,0}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {line,[{location,"bs_match_r25_SUITE.erl",3101}]}.
    {call,1,{f,1642}}. % gh6415_nomatch_l/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1600},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1600}.
    {badmatch,{atom,ok}}.
  {label,1601}.
    {line,[{location,"bs_match_r25_SUITE.erl",3099}]}.
    {badmatch,{x,0}}.
  {label,1602}.
    {line,[{location,"bs_match_r25_SUITE.erl",3098}]}.
    {badmatch,{atom,ok}}.
  {label,1603}.
    {line,[{location,"bs_match_r25_SUITE.erl",3097}]}.
    {badmatch,{atom,ok}}.
  {label,1604}.
    {line,[{location,"bs_match_r25_SUITE.erl",3096}]}.
    {badmatch,{atom,ok}}.
  {label,1605}.
    {line,[{location,"bs_match_r25_SUITE.erl",3095}]}.
    {badmatch,{atom,ok}}.
  {label,1606}.
    {line,[{location,"bs_match_r25_SUITE.erl",3094}]}.
    {badmatch,{atom,ok}}.
  {label,1607}.
    {line,[{location,"bs_match_r25_SUITE.erl",3093}]}.
    {badmatch,{atom,ok}}.
  {label,1608}.
    {line,[{location,"bs_match_r25_SUITE.erl",3092}]}.
    {badmatch,{atom,error}}.
  {label,1609}.
    {line,[{location,"bs_match_r25_SUITE.erl",3091}]}.
    {badmatch,{x,0}}.


{function, gh6415_nomatch_a, 1, 1611}.
  {label,1610}.
    {line,[{location,"bs_match_r25_SUITE.erl",3104}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_nomatch_a},1}.
  {label,1611}.
    {test,is_map,{f,1612},[{x,0}]}.
    {get_map_elements,{f,1612},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{integer,0},{x,0}]}}.
    {test,bs_start_match3,{f,1612},1,[{x,0}],{x,1}}.
    {test,bs_test_tail2,{f,1612},[{x,1},0]}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_test_tail2,{f,1612},[{x,0},8]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1612}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_b, 1, 1614}.
  {label,1613}.
    {line,[{location,"bs_match_r25_SUITE.erl",3107}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_nomatch_b},1}.
  {label,1614}.
    {test,is_map,{f,1615},[{x,0}]}.
    {get_map_elements,{f,1615},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{integer,0},{x,0}]}}.
    {test,bs_start_match3,{f,1615},1,[{x,0}],{x,1}}.
    {test,bs_test_tail2,{f,1615},[{x,1},16]}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_test_tail2,{f,1615},[{x,0},8]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1615}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_c, 1, 1617}.
  {label,1616}.
    {line,[{location,"bs_match_r25_SUITE.erl",3110}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_nomatch_c},1}.
  {label,1617}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_d, 1, 1619}.
  {label,1618}.
    {line,[{location,"bs_match_r25_SUITE.erl",3113}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_nomatch_d},1}.
  {label,1619}.
    {test,is_map,{f,1620},[{x,0}]}.
    {get_map_elements,{f,1620},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{integer,0},{x,0}]}}.
    {test,bs_start_match3,{f,1620},1,[{x,0}],{x,1}}.
    {test,bs_test_tail2,{f,1620},[{x,1},8]}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_test_tail2,{f,1620},[{x,0},0]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1620}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_e, 1, 1622}.
  {label,1621}.
    {line,[{location,"bs_match_r25_SUITE.erl",3116}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_nomatch_e},1}.
  {label,1622}.
    {test,is_map,{f,1623},[{x,0}]}.
    {get_map_elements,{f,1623},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{integer,0},{x,0}]}}.
    {test,is_eq_exact,{f,1623},[{x,0},{literal,<<>>}]}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_test_tail2,{f,1623},[{x,0},8]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1623}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_f, 1, 1625}.
  {label,1624}.
    {line,[{location,"bs_match_r25_SUITE.erl",3119}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_nomatch_f},1}.
  {label,1625}.
    {test,is_map,{f,1626},[{x,0}]}.
    {get_map_elements,{f,1626},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{integer,0},{x,0}]}}.
    {test,bs_start_match3,{f,1626},1,[{x,0}],{x,1}}.
    {test,bs_test_tail2,{f,1626},[{x,1},8]}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_test_tail2,{f,1626},[{x,0},16]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1626}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_g, 1, 1628}.
  {label,1627}.
    {line,[{location,"bs_match_r25_SUITE.erl",3122}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_nomatch_g},1}.
  {label,1628}.
    {test,is_map,{f,1629},[{x,0}]}.
    {get_map_elements,{f,1629},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{integer,0},{x,0}]}}.
    {test,bs_start_match3,{f,1629},1,[{x,0}],{x,1}}.
    {test,bs_test_tail2,{f,1629},[{x,1},8]}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_skip_bits2,
          {f,1629},
          [{x,0},
           {integer,8},
           1,
           {field_flags,[{anno,[3122,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_match_string,{f,1629},[{x,0},8,{string,<<0>>}]}.
    {test,bs_test_tail2,{f,1629},[{x,0},0]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1629}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_h, 1, 1631}.
  {label,1630}.
    {line,[{location,"bs_match_r25_SUITE.erl",3125}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_nomatch_h},1}.
  {label,1631}.
    {test,is_map,{f,1632},[{x,0}]}.
    {get_map_elements,{f,1632},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{integer,0},{x,0}]}}.
    {test,bs_start_match3,{f,1632},1,[{x,0}],{x,1}}.
    {test,bs_test_tail2,{f,1632},[{x,1},0]}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,1632},
          1,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[3125,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_test_tail2,{f,1632},[{x,0},0]}.
    {test,is_eq_exact,{f,1632},[{tr,{x,1},{t_integer,{0,255}}},{integer,0}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1632}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_i, 1, 1634}.
  {label,1633}.
    {line,[{location,"bs_match_r25_SUITE.erl",3128}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_nomatch_i},1}.
  {label,1634}.
    {test,bs_start_match3,{f,1635},1,[{x,0}],{x,1}}.
    {test,bs_test_tail2,{f,1635},[{x,1},8]}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_skip_bits2,
          {f,1635},
          [{x,0},
           {integer,16},
           1,
           {field_flags,[{anno,[3128,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,1635},
          1,
          [{tr,{x,0},{t_bs_context,1}},
           {atom,all},
           8,
           {field_flags,[{anno,[3128,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,0}}.
    {allocate,0,1}.
    {line,[{location,"bs_match_r25_SUITE.erl",3129}]}.
    {call_ext,1,{extfunc,erlang,binary_to_list,1}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1635}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_j, 1, 1637}.
  {label,1636}.
    {line,[{location,"bs_match_r25_SUITE.erl",3134}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_nomatch_j},1}.
  {label,1637}.
    {test,bs_start_match3,{f,1638},1,[{x,0}],{x,1}}.
    {test,bs_test_tail2,{f,1638},[{x,1},8]}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,1638},
          1,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,16},
           1,
           {field_flags,[{anno,[3134,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_get_binary2,
          {f,1638},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {atom,all},
           8,
           {field_flags,[{anno,[3134,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,0}}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,1},{x,0}]}}.
    return.
  {label,1638}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_k, 1, 1640}.
  {label,1639}.
    {line,[{location,"bs_match_r25_SUITE.erl",3139}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_nomatch_k},1}.
  {label,1640}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_l, 1, 1642}.
  {label,1641}.
    {line,[{location,"bs_match_r25_SUITE.erl",3144}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_nomatch_l},1}.
  {label,1642}.
    {test,bs_start_match3,{f,1643},1,[{x,0}],{x,1}}.
    {test,bs_skip_bits2,
          {f,1643},
          [{x,1},
           {integer,0},
           1,
           {field_flags,[{anno,[3146,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_get_tail,{x,1},{x,1},2}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {test,bs_test_tail2,{f,1643},[{x,1},0]}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_test_tail2,{f,1643},[{x,0},8]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1643}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_match_a, 1, 1645}.
  {label,1644}.
    {line,[{location,"bs_match_r25_SUITE.erl",3152}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_match_a},1}.
  {label,1645}.
    {test,bs_start_match3,{f,1644},1,[{x,0}],{x,1}}.
    {test,bs_test_tail2,{f,1644},[{x,1},8]}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,1644},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[3152,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1644},[{x,1},0]}.
    {move,{x,2},{x,0}}.
    return.


{function, gh6415_match_b, 1, 1647}.
  {label,1646}.
    {line,[{location,"bs_match_r25_SUITE.erl",3155}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_match_b},1}.
  {label,1647}.
    {test,bs_start_match3,{f,1646},1,[{x,0}],{x,1}}.
    {test,bs_test_tail2,{f,1646},[{x,1},8]}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,1646},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[3155,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,1646},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {atom,all},
           8,
           {field_flags,[{anno,[3155,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{x,2},{x,1}]}}.
    return.


{function, gh6415_match_c, 0, 1649}.
  {label,1648}.
    {line,[{location,"bs_match_r25_SUITE.erl",3158}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_match_c},0}.
  {label,1649}.
    {allocate,1,0}.
    {'catch',{y,0},{f,1650}}.
    {move,{atom,badarg},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3159}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,1650}.
    {catch_end,{y,0}}.
    {test,is_map,{f,1651},[{x,0}]}.
    {get_map_elements,{f,1651},{tr,{x,0},{t_map,any,any}},{list,[nil,{x,1}]}}.
    {test,bs_start_match3,{f,1651},2,[{x,1}],{x,2}}.
    {test,bs_test_tail2,{f,1651},[{x,2},8]}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,1651},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[3160,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1651},[{x,1},0]}.
    {move,{x,2},{x,0}}.
    {deallocate,1}.
    return.
  {label,1651}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",3159}]}.
    {case_end,{x,0}}.


{function, gh6415_match_d, 1, 1653}.
  {label,1652}.
    {line,[{location,"bs_match_r25_SUITE.erl",3164}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_match_d},1}.
  {label,1653}.
    {test,bs_start_match3,{f,1652},1,[{x,0}],{x,1}}.
    {test,bs_skip_bits2,
          {f,1652},
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[3164,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_get_tail,{x,1},{x,1},2}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {test,bs_test_tail2,{f,1652},[{x,1},0]}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_test_tail2,{f,1652},[{x,1},8]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, gh6415_match_e, 1, 1655}.
  {label,1654}.
    {line,[{location,"bs_match_r25_SUITE.erl",3167}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_match_e},1}.
  {label,1655}.
    {test,bs_start_match3,{f,1654},1,[{x,0}],{x,1}}.
    {test,bs_skip_bits2,
          {f,1654},
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[3167,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_get_tail,{x,1},{x,1},2}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {test,bs_skip_bits2,
          {f,1654},
          [{x,1},
           {integer,0},
           1,
           {field_flags,[{anno,[3167,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_integer2,
          {f,1654},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[3167,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{x,1},3}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {test,bs_skip_bits2,
          {f,1654},
          [{x,1},
           {x,2},
           1,
           {field_flags,[{anno,[3167,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_test_tail2,{f,1654},[{x,1},0]}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,1}}.
    {test,bs_skip_bits2,
          {f,1654},
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[3167,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_integer2,
          {f,1654},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[3167,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_tail,{x,1},{x,1},4}.
    {bs_start_match4,{atom,no_fail},4,{x,1},{x,1}}.
    {test,bs_skip_bits2,
          {f,1654},
          [{x,1},
           {x,3},
           1,
           {field_flags,[{anno,[3167,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_test_tail2,{f,1654},[{x,1},0]}.
    {test,is_eq_exact,
          {f,1654},
          [{tr,{x,3},{t_integer,{0,255}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, gh6415_match_f, 1, 1657}.
  {label,1656}.
    {line,[{location,"bs_match_r25_SUITE.erl",3170}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_match_f},1}.
  {label,1657}.
    {test,bs_start_match3,{f,1658},1,[{x,0}],{x,1}}.
    {bs_get_tail,{x,1},{x,1},2}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {test,bs_skip_bits2,
          {f,1658},
          [{x,1},
           {integer,0},
           1,
           {field_flags,[{anno,[3170,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_integer2,
          {f,1658},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[3170,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{x,1},3}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,1658},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[3170,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1658},[{x,1},0]}.
    {bs_start_match4,{atom,no_fail},4,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,1658},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[3170,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {bs_get_tail,{x,1},{x,1},5}.
    {bs_start_match4,{atom,no_fail},5,{x,1},{x,1}}.
    {test,bs_skip_bits2,
          {f,1658},
          [{x,1},
           {integer,0},
           1,
           {field_flags,[{anno,[3170,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_integer2,
          {f,1658},
          5,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,4},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[3170,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_test_tail2,{f,1658},[{x,1},0]}.
    {bs_start_match4,{atom,no_fail},6,{x,0},{x,0}}.
    {test,bs_match_string,{f,1658},[{x,0},8,{string,<<17>>}]}.
    {test,bs_get_integer2,
          {f,1658},
          6,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,17},
           1,
           {field_flags,[{anno,[3170,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {bs_get_tail,{x,0},{x,0},6}.
    {bs_start_match4,{atom,no_fail},6,{x,0},{x,0}}.
    {test,bs_test_tail2,{f,1658},[{x,0},0]}.
    {test,is_eq_exact,
          {f,1658},
          [{tr,{x,4},{t_integer,{0,255}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,1658},
          [{tr,{x,5},{t_integer,{0,'+inf'}}},
           {tr,{x,3},{t_integer,{0,'+inf'}}}]}.
    {test,is_eq_exact,
          {f,1658},
          [{tr,{x,1},{t_integer,{0,131071}}},
           {tr,{x,3},{t_integer,{0,'+inf'}}}]}.
    {move,{x,3},{x,0}}.
    return.
  {label,1658}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh_6923, 1, 1660}.
  {label,1659}.
    {line,[{location,"bs_match_r25_SUITE.erl",3177}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh_6923},1}.
  {label,1660}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{atom,bs_match_r25_SUITE},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3208}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",3209}]}.
    {call_ext,2,{extfunc,compile,forms,2}}.
    {test,is_tagged_tuple,{f,1666},[{x,0},3,{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,1666},[{x,1},{atom,bs_match_r25_SUITE_gh_6923}]}.
    {get_tuple_element,{x,0},2,{x,2}}.
    {move,nil,{x,1}}.
    {move,{atom,bs_match_r25_SUITE_gh_6923},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3210}]}.
    {call_ext,3,{extfunc,code,load_binary,3}}.
    {test,is_tagged_tuple,{f,1665},[{x,0},2,{atom,module}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,1665},[{x,1},{atom,bs_match_r25_SUITE_gh_6923}]}.
    {move,{literal,[<<"prefix">>,<<"action">>]},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3211}]}.
    {call_ext,1,{extfunc,bs_match_r25_SUITE_gh_6923,match_route,1}}.
    {test,is_eq_exact,{f,1664},[{x,0},{atom,first}]}.
    {move,{literal,[<<"prefix">>,whatever]},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3212}]}.
    {call_ext,1,{extfunc,bs_match_r25_SUITE_gh_6923,match_route,1}}.
    {test,is_eq_exact,{f,1663},[{x,0},{atom,second}]}.
    {move,{atom,bs_match_r25_SUITE_gh_6923},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3213}]}.
    {call_ext,1,{extfunc,code,delete,1}}.
    {move,{atom,bs_match_r25_SUITE_gh_6923},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3214}]}.
    {call_ext,1,{extfunc,code,purge,1}}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3217}]}.
    {call,1,{f,1686}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,42},{x,0}}.
    {call,1,{f,1686}}. % id/1
    {test_heap,4,1}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{y,0},{x,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {call,1,{f,1668}}. % do_gh_6923/1
    {'%',{var_info,{x,0},[{type,{t_atom,[first,second]}}]}}.
    {test,is_eq_exact,
          {f,1662},
          [{tr,{x,0},{t_atom,[first,second]}},{atom,first}]}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3218}]}.
    {call,1,{f,1686}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{literal,{a,b,c}},{x,0}}.
    {call,1,{f,1686}}. % id/1
    {test_heap,4,1}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{y,0},{x,0},{x,0}}.
    {trim,1,0}.
    {call,1,{f,1668}}. % do_gh_6923/1
    {'%',{var_info,{x,0},[{type,{t_atom,[first,second]}}]}}.
    {test,is_eq_exact,
          {f,1661},
          [{tr,{x,0},{t_atom,[first,second]}},{atom,second}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1661}.
    {badmatch,{atom,first}}.
  {label,1662}.
    {line,[{location,"bs_match_r25_SUITE.erl",3217}]}.
    {badmatch,{atom,second}}.
  {label,1663}.
    {line,[{location,"bs_match_r25_SUITE.erl",3212}]}.
    {badmatch,{x,0}}.
  {label,1664}.
    {line,[{location,"bs_match_r25_SUITE.erl",3211}]}.
    {badmatch,{x,0}}.
  {label,1665}.
    {line,[{location,"bs_match_r25_SUITE.erl",3210}]}.
    {badmatch,{x,0}}.
  {label,1666}.
    {line,[{location,"bs_match_r25_SUITE.erl",3209}]}.
    {badmatch,{x,0}}.


{function, do_gh_6923, 1, 1668}.
  {label,1667}.
    {line,[{location,"bs_match_r25_SUITE.erl",3222}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_gh_6923},1}.
  {label,1668}.
    {'%',{var_info,{x,0},[{type,{t_cons,any,nil}}]}}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,bs_start_match3,{f,1667},3,[{x,1}],{x,1}}.
    {test,bs_match_string,{f,1667},[{x,1},24,{string,<<"abc">>}]}.
    {test,bs_test_tail2,{f,1667},[{x,1},0]}.
    {test,is_nonempty_list,{f,1667},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_nil,{f,1667},[{tr,{x,2},{t_list,any,nil}}]}.
    {test,is_integer,{f,1669},[{x,1}]}.
    {move,{atom,first},{x,0}}.
    return.
  {label,1669}.
    {test,is_tuple,{f,1667},[{x,1}]}.
    {move,{atom,second},{x,0}}.
    return.


{function, bs_test_tail, 1, 1671}.
  {label,1670}.
    {line,[{location,"bs_match_r25_SUITE.erl",3225}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bs_test_tail},1}.
  {label,1671}.
    {allocate,1,1}.
    {init_yregs,{list,[{y,0}]}}.
    {call_ext,1,{extfunc,erlang,term_to_binary,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3228}]}.
    {call,1,{f,1677}}. % bs_test_tail_skip/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3230}]}.
    {call,1,{f,1686}}. % id/1
    {bs_create_bin,{f,0},
                   0,1,8,
                   {x,0},
                   {list,[{atom,append},1,8,nil,{x,0},{atom,all}]}}.
    {call,1,{f,1680}}. % bs_test_tail_int/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,255}},nil}}]}}.
    {test,is_eq_exact,
          {f,1675},
          [{tr,{x,0},{t_list,{t_integer,{0,255}},nil}},{literal,"abc"}]}.
    {move,{float,2.0},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",3232}]}.
    {call,1,{f,1686}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{float,3.0},{x,0}}.
    {call,1,{f,1686}}. % id/1
    {bs_create_bin,{f,0},
                   0,1,128,
                   {x,0},
                   {list,[{atom,float},
                          1,1,nil,
                          {y,0},
                          {integer,64},
                          {atom,float},
                          2,1,nil,
                          {x,0},
                          {integer,64}]}}.
    {init_yregs,{list,[{y,0}]}}.
    {call,1,{f,1683}}. % bs_test_tail_float/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_float,any},nil}}]}}.
    {test,is_eq_exact,
          {f,1674},
          [{tr,{x,0},{t_list,{t_float,any},nil}},{literal,[2.0,3.0]}]}.
    {'catch',{y,0},{f,1672}}.
    {move,{integer,-1},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",3233}]}.
    {call,1,{f,1686}}. % id/1
    {bs_create_bin,{f,0},
                   0,1,128,
                   {x,0},
                   {list,[{atom,integer},1,1,nil,{x,0},{integer,128}]}}.
    {call,1,{f,1683}}. % bs_test_tail_float/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_float,any},nil}}]}}.
  {label,1672}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1673},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1673},[{x,1},2,{atom,function_clause}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,1673}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",3233}]}.
    {badmatch,{x,0}}.
  {label,1674}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",3232}]}.
    {badmatch,{x,0}}.
  {label,1675}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",3230}]}.
    {badmatch,{x,0}}.


{function, bs_test_tail_skip, 1, 1677}.
  {label,1676}.
    {line,[{location,"bs_match_r25_SUITE.erl",3237}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bs_test_tail_skip},1}.
  {label,1677}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_skip_bits2,
          {f,1678},
          [{x,0},
           {integer,8},
           1,
           {field_flags,[{anno,[3237,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_get_tail,{x,0},{x,0},1}.
    {call_only,1,{f,1677}}. % bs_test_tail_skip/1
  {label,1678}.
    {move,{atom,ok},{x,0}}.
    return.


{function, bs_test_tail_int, 1, 1680}.
  {label,1679}.
    {line,[{location,"bs_match_r25_SUITE.erl",3240}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bs_test_tail_int},1}.
  {label,1680}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,1681},
          1,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[3240,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {line,[{location,"bs_match_r25_SUITE.erl",3241}]}.
    {call,1,{f,1680}}. % bs_test_tail_int/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,255}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1681}.
    {move,nil,{x,0}}.
    return.


{function, bs_test_tail_float, 1, 1683}.
  {label,1682}.
    {line,[{location,"bs_match_r25_SUITE.erl",3244}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bs_test_tail_float},1}.
  {label,1683}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,64,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_float2,
          {f,1684},
          2,
          [{tr,{x,1},{t_bs_context,64}},
           {integer,64},
           1,
           {field_flags,[{anno,[3244,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_r25_SUITE.erl",3245}]}.
    {call,1,{f,1683}}. % bs_test_tail_float/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_float,any},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1684}.
    {test,bs_test_tail2,{f,1682},[{x,1},0]}.
    {move,nil,{x,0}}.
    return.


{function, id, 1, 1686}.
  {label,1685}.
    {line,[{location,"bs_match_r25_SUITE.erl",3250}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,id},1}.
  {label,1686}.
    return.


{function, module_info, 0, 1688}.
  {label,1687}.
    {line,[]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,module_info},0}.
  {label,1688}.
    {move,{atom,bs_match_r25_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 1690}.
  {label,1689}.
    {line,[]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,module_info},1}.
  {label,1690}.
    {move,{x,0},{x,1}}.
    {move,{atom,bs_match_r25_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-binary_aliases/1-fun-20-', 1, 1692}.
  {label,1691}.
    {line,[{location,"bs_match_r25_SUITE.erl",2963}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-binary_aliases/1-fun-20-'},1}.
  {label,1692}.
    {test,is_eq_exact,{f,1693},[{x,0},{literal,<<>>}]}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_test_tail2,{f,1693},[{x,0},0]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1693}.
    {move,{atom,error},{x,0}}.
    return.


{function, '-binary_aliases/1-fun-19-', 1, 1695}.
  {label,1694}.
    {line,[{location,"bs_match_r25_SUITE.erl",2956}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-binary_aliases/1-fun-19-'},1}.
  {label,1695}.
    {test,is_eq_exact,{f,1694},[{x,0},{literal,[<<>>]}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, '-binary_aliases/1-fun-18-', 1, 1697}.
  {label,1696}.
    {line,[{location,"bs_match_r25_SUITE.erl",2949}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-binary_aliases/1-fun-18-'},1}.
  {label,1697}.
    {line,[{location,"bs_match_r25_SUITE.erl",2950}]}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-17-', 1, 1699}.
  {label,1698}.
    {line,[{location,"bs_match_r25_SUITE.erl",2937}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-binary_aliases/1-fun-17-'},1}.
  {label,1699}.
    {test,bs_start_match3,{f,1700},1,[{x,0}],{x,1}}.
    {test,bs_test_tail2,{f,1700},[{x,1},8]}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_test_tail2,{f,1700},[{x,0},8]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1700}.
    {move,{atom,error},{x,0}}.
    return.


{function, '-binary_aliases/1-fun-16-', 1, 1702}.
  {label,1701}.
    {line,[{location,"bs_match_r25_SUITE.erl",2932}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-binary_aliases/1-fun-16-'},1}.
  {label,1702}.
    {test,is_map,{f,1701},[{x,0}]}.
    {get_map_elements,{f,1701},{tr,{x,0},{t_map,any,any}},{list,[nil,{x,1}]}}.
    {test,bs_start_match3,{f,1701},2,[{x,1}],{x,2}}.
    {test,bs_test_tail2,{f,1701},[{x,2},8]}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {test,bs_test_tail2,{f,1701},[{x,1},8]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, '-binary_aliases/1-fun-15-', 1, 1704}.
  {label,1703}.
    {line,[{location,"bs_match_r25_SUITE.erl",2923}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-binary_aliases/1-fun-15-'},1}.
  {label,1704}.
    {allocate,0,1}.
    {line,[{location,"bs_match_r25_SUITE.erl",2924}]}.
    {call,1,{f,1686}}. % id/1
    {test,is_nonempty_list,{f,1705},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_tuple,{f,1705},[{x,1}]}.
    {test,test_arity,{f,1705},[{x,1},2]}.
    {test,is_nil,{f,1705},[{x,2}]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,bs_start_match3,{f,1705},3,[{x,2}],{x,2}}.
    {test,bs_skip_bits2,
          {f,1705},
          [{x,2},
           {x,1},
           1,
           {field_flags,[{anno,[2924,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_test_tail2,{f,1705},[{x,2},0]}.
    {move,{x,1},{x,0}}.
    {deallocate,0}.
    return.
  {label,1705}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-14-', 1, 1707}.
  {label,1706}.
    {line,[{location,"bs_match_r25_SUITE.erl",2914}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-binary_aliases/1-fun-14-'},1}.
  {label,1707}.
    {allocate,0,1}.
    {line,[{location,"bs_match_r25_SUITE.erl",2915}]}.
    {call,1,{f,1686}}. % id/1
    {test,is_tuple,{f,1708},[{x,0}]}.
    {test,test_arity,{f,1708},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {test,bs_start_match3,{f,1708},3,[{x,1}],{x,1}}.
    {test,bs_skip_bits2,
          {f,1708},
          [{x,1},
           {x,2},
           1,
           {field_flags,[{anno,[2915,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_test_tail2,{f,1708},[{x,1},0]}.
    {move,{x,2},{x,0}}.
    {deallocate,0}.
    return.
  {label,1708}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-13-', 1, 1710}.
  {label,1709}.
    {line,[{location,"bs_match_r25_SUITE.erl",2905}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-binary_aliases/1-fun-13-'},1}.
  {label,1710}.
    {allocate,0,1}.
    {line,[{location,"bs_match_r25_SUITE.erl",2906}]}.
    {call,1,{f,1686}}. % id/1
    {test,is_nonempty_list,{f,1711},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,bs_start_match3,{f,1711},3,[{x,1}],{x,1}}.
    {test,bs_skip_bits2,
          {f,1711},
          [{x,1},
           {x,2},
           1,
           {field_flags,[{anno,[2906,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_test_tail2,{f,1711},[{x,1},0]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1711}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-12-', 1, 1713}.
  {label,1712}.
    {line,[{location,"bs_match_r25_SUITE.erl",2897}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-binary_aliases/1-fun-12-'},1}.
  {label,1713}.
    {test,bs_start_match3,{f,1714},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,1714},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2898,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,2}}.
    {test,bs_skip_bits2,
          {f,1714},
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[2898,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,1714},
          3,
          [{tr,{x,2},{t_bs_context,1}},
           {tr,{x,1},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[2898,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1714},[{x,2},0]}.
    {bs_start_match4,{atom,no_fail},4,{x,0},{x,2}}.
    {test,bs_skip_bits2,
          {f,1714},
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[2898,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_integer2,
          {f,1714},
          4,
          [{tr,{x,2},{t_bs_context,1}},
           {tr,{x,1},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[2898,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,1714},[{x,2},0]}.
    {test_heap,4,5}.
    {put_tuple2,{x,0},{list,[{x,1},{x,4},{x,3}]}}.
    return.
  {label,1714}.
    {line,[{location,"bs_match_r25_SUITE.erl",2898}]}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-11-', 1, 1716}.
  {label,1715}.
    {line,[{location,"bs_match_r25_SUITE.erl",2893}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-binary_aliases/1-fun-11-'},1}.
  {label,1716}.
    {test,is_map,{f,1715},[{x,0}]}.
    {get_map_elements,{f,1715},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{atom,key},{x,1}]}}.
    {test,bs_start_match3,{f,1715},2,[{x,1}],{x,2}}.
    {test,bs_get_integer2,
          {f,1715},
          3,
          [{tr,{x,2},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2893,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1715},[{x,2},0]}.
    {bs_start_match4,{atom,no_fail},4,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,1715},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2893,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1715},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,3},{x,2}]}}.
    return.


{function, '-binary_aliases/1-fun-10-', 1, 1718}.
  {label,1717}.
    {line,[{location,"bs_match_r25_SUITE.erl",2885}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-binary_aliases/1-fun-10-'},1}.
  {label,1718}.
    {test,bs_start_match3,{f,1719},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,1719},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2886,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1719},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2886,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,1719},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2886,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_integer2,
          {f,1719},
          5,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2886,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_test_tail2,{f,1719},[{x,1},0]}.
    {bs_start_match4,{atom,no_fail},6,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,1719},
          6,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,16},
           1,
           {field_flags,[{anno,[2886,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,bs_get_integer2,
          {f,1719},
          7,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,16},
           1,
           {field_flags,[{anno,[2886,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,7}}.
    {test,bs_test_tail2,{f,1719},[{x,1},0]}.
    {bs_start_match4,{atom,no_fail},8,{x,0},{x,1}}.
    {test,bs_get_binary2,
          {f,1719},
          8,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2886,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,8}}.
    {test,bs_get_binary2,
          {f,1719},
          9,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,24},
           1,
           {field_flags,[{anno,[2886,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,9}}.
    {test,bs_test_tail2,{f,1719},[{x,1},0]}.
    {test_heap,9,10}.
    {put_tuple2,{x,0},
                {list,[{x,8},{x,9},{x,6},{x,7},{x,2},{x,3},{x,4},{x,5}]}}.
    return.
  {label,1719}.
    {line,[{location,"bs_match_r25_SUITE.erl",2886}]}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-9-', 1, 1721}.
  {label,1720}.
    {line,[{location,"bs_match_r25_SUITE.erl",2879}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-binary_aliases/1-fun-9-'},1}.
  {label,1721}.
    {test,is_eq_exact,{f,1722},[{x,0},{literal,<<>>}]}.
    return.
  {label,1722}.
    {line,[{location,"bs_match_r25_SUITE.erl",2880}]}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-8-', 1, 1724}.
  {label,1723}.
    {line,[{location,"bs_match_r25_SUITE.erl",2873}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-binary_aliases/1-fun-8-'},1}.
  {label,1724}.
    {test,bs_start_match3,{f,1725},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,1725},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2874,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1725},[{x,1},0]}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,1725},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2874,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1725},[{x,1},0]}.
    {test_heap,7,4}.
    {put_tuple2,{x,0},{list,[{x,3},{x,2},{x,0},{x,0},{x,0},{x,0}]}}.
    return.
  {label,1725}.
    {line,[{location,"bs_match_r25_SUITE.erl",2874}]}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-7-', 1, 1727}.
  {label,1726}.
    {line,[{location,"bs_match_r25_SUITE.erl",2867}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-binary_aliases/1-fun-7-'},1}.
  {label,1727}.
    {test,bs_start_match3,{f,1728},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,1728},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2868,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1728},[{x,1},0]}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,1728},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2868,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1728},[{x,1},0]}.
    {test_heap,5,4}.
    {put_tuple2,{x,0},{list,[{x,3},{x,2},{x,0},{x,0}]}}.
    return.
  {label,1728}.
    {line,[{location,"bs_match_r25_SUITE.erl",2868}]}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-6-', 1, 1730}.
  {label,1729}.
    {line,[{location,"bs_match_r25_SUITE.erl",2860}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-binary_aliases/1-fun-6-'},1}.
  {label,1730}.
    {test,bs_start_match3,{f,1731},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,1731},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2861,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1731},[{x,1},0]}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,1731},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,4},
           1,
           {field_flags,[{anno,[2861,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,1731},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,4},
           1,
           {field_flags,[{anno,[2861,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,1731},[{x,1},0]}.
    {test,is_eq_exact,
          {f,1731},
          [{tr,{x,4},{t_integer,{0,15}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {bs_start_match4,{atom,no_fail},4,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,1731},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2861,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,1731},[{x,1},0]}.
    {test,is_eq_exact,
          {f,1731},
          [{tr,{x,4},{t_integer,{0,255}}},{tr,{x,3},{t_integer,{0,15}}}]}.
    {test_heap,4,4}.
    {put_tuple2,{x,0},{list,[{x,3},{x,2},{x,0}]}}.
    return.
  {label,1731}.
    {line,[{location,"bs_match_r25_SUITE.erl",2861}]}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-5-', 2, 1733}.
  {label,1732}.
    {line,[{location,"bs_match_r25_SUITE.erl",2853}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-binary_aliases/1-fun-5-'},2}.
  {label,1733}.
    {line,[{location,"bs_match_r25_SUITE.erl",2854}]}.
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
          {f,1734},
          2,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2854,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1734},[{x,1},0]}.
    {move,{x,2},{x,0}}.
    return.
  {label,1734}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-4-', 1, 1736}.
  {label,1735}.
    {line,[{location,"bs_match_r25_SUITE.erl",2847}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-binary_aliases/1-fun-4-'},1}.
  {label,1736}.
    {test,bs_start_match3,{f,1737},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,1737},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2848,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1737},[{x,1},0]}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,1737},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2848,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1737},[{x,1},0]}.
    {test_heap,4,4}.
    {put_tuple2,{x,0},{list,[{x,3},{x,2},{x,0}]}}.
    return.
  {label,1737}.
    {line,[{location,"bs_match_r25_SUITE.erl",2848}]}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-3-', 1, 1739}.
  {label,1738}.
    {line,[{location,"bs_match_r25_SUITE.erl",2840}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-binary_aliases/1-fun-3-'},1}.
  {label,1739}.
    {line,[{location,"bs_match_r25_SUITE.erl",2843}]}.
    {call_ext_only,1,{extfunc,lists,sum,1}}.


{function, '-binary_aliases/1-fun-2-', 1, 1741}.
  {label,1740}.
    {line,[{location,"bs_match_r25_SUITE.erl",2836}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-binary_aliases/1-fun-2-'},1}.
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
           {field_flags,[{anno,[2836,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1740},[{x,2},0]}.
    {bs_start_match4,{atom,no_fail},4,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,1740},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,4},
           1,
           {field_flags,[{anno,[2836,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1740},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,4},
           1,
           {field_flags,[{anno,[2836,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,1740},[{x,1},0]}.
    {test_heap,4,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,2},{x,4}]}}.
    return.


{function, '-binary_aliases/1-fun-1-', 1, 1743}.
  {label,1742}.
    {line,[{location,"bs_match_r25_SUITE.erl",2832}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-binary_aliases/1-fun-1-'},1}.
  {label,1743}.
    {test,is_tagged_tuple,{f,1742},[{x,0},4,{atom,ba_foo}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,bs_start_match3,{f,1742},2,[{x,1}],{x,2}}.
    {test,bs_get_integer2,
          {f,1742},
          3,
          [{tr,{x,2},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2832,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1742},[{x,2},0]}.
    {bs_start_match4,{atom,no_fail},4,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,1742},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2832,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1742},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,3},{x,2}]}}.
    return.


{function, '-binary_aliases/1-fun-0-', 1, 1745}.
  {label,1744}.
    {line,[{location,"bs_match_r25_SUITE.erl",2828}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-binary_aliases/1-fun-0-'},1}.
  {label,1745}.
    {test,bs_start_match3,{f,1744},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,1744},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2828,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1744},[{x,1},0]}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,1744},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2828,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1744},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.


{function, '-many_clauses/1-lc$^1/1-1-', 1, 1747}.
  {label,1746}.
    {line,[{location,"bs_match_r25_SUITE.erl",2704}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-many_clauses/1-lc$^1/1-1-'},
               1}.
  {label,1747}.
    {test,is_nonempty_list,{f,1748},[{x,0}]}.
    {allocate,3,1}.
    {init_yregs,{list,[{y,0}]}}.
    {get_list,{x,0},{y,2},{y,1}}.
    {move,{y,2},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2699}]}.
    {call_ext,1,{extfunc,erlang,phash2,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2701}]}.
    {bs_create_bin,{f,0},
                   0,1,16,
                   {x,1},
                   {list,[{atom,integer},
                          1,1,nil,
                          {tr,{x,0},{t_integer,{0,134217727}}},
                          {integer,16}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,2}}.
    {test,bs_get_integer2,
          {f,1751},
          3,
          [{tr,{x,2},{t_bs_context,16}},
           {integer,16},
           1,
           {field_flags,[{anno,[2701,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1751},[{x,2},0]}.
    {line,[{location,"bs_match_r25_SUITE.erl",2702}]}.
    {gc_bif,'+',{f,0},4,[{y,2},{tr,{x,3},{t_integer,{0,65535}}}],{y,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2703}]}.
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
    {test,is_eq_exact,{f,1750},[{x,0},{tr,{y,1},{t_number,any}}]}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,1747},2}. % '-many_clauses/1-lc$^1/1-1-'/1
  {label,1748}.
    {test,is_nil,{f,1749},[{x,0}]}.
    return.
  {label,1749}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2704}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,1750}.
    {line,[{location,"bs_match_r25_SUITE.erl",2703}]}.
    {badmatch,{x,0}}.
  {label,1751}.
    {line,[{location,"bs_match_r25_SUITE.erl",2701}]}.
    {badmatch,{x,1}}.


{function, '-many_clauses/1-lc$^0/1-0-', 1, 1753}.
  {label,1752}.
    {line,[{location,"bs_match_r25_SUITE.erl",2688}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-many_clauses/1-lc$^0/1-0-'},
               1}.
  {label,1753}.
    {test,is_nonempty_list,{f,1754},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{x,0},{y,0}}.
    {call,1,{f,1404}}. % one_clause/1
    {swap,{y,0},{x,0}}.
    {call,1,{f,1753}}. % '-many_clauses/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1754}.
    {test,is_nil,{f,1755},[{x,0}]}.
    return.
  {label,1755}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-binary_match_to_asm/1-lc$^0/1-0-', 1, 1757}.
  {label,1756}.
    {line,[{location,"bs_match_r25_SUITE.erl",2667}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-binary_match_to_asm/1-lc$^0/1-0-'},
               1}.
  {label,1757}.
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_list,
         {t_tuple,2,true,
          #{1 =>
             {t_tuple,3,true,
              #{1 => {t_atom,[bin]},
                2 => {t_integer,{2574,2652}},
                3 => {t_list,{t_tuple,0,false,#{}},nil}}}}},
         nil}}]}}.
    {test,is_nonempty_list,{f,1758},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,1,{f,1757}}. % '-binary_match_to_asm/1-lc$^0/1-0-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,5,true,
                         #{1 => {t_atom,[clause]},
                           2 => {t_integer,{2574,2652}},
                           3 =>
                               {t_cons,
                                   {t_tuple,3,true,
                                       #{1 => {t_atom,[bin]},
                                         2 => {t_integer,{2574,2652}},
                                         3 => {t_list,any,any}}},
                                   nil},
                           4 => nil,
                           5 =>
                               {t_cons,
                                   {t_tuple,3,true,
                                       #{1 => {t_atom,[integer]},
                                         2 => {t_integer,{2574,2652}}}},
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
  {label,1758}.
    return.


{function, '-expand_and_squeeze/1-fun-0-', 1, 1760}.
  {label,1759}.
    {line,[{location,"bs_match_r25_SUITE.erl",2609}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-expand_and_squeeze/1-fun-0-'},
               1}.
  {label,1760}.
    {test,is_tagged_tuple,{f,1761},[{x,0},4,{atom,bs_match}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1761},[{x,1},2,{atom,f}]}.
    {get_tuple_element,{x,0},3,{x,0}}.
    {test,is_tagged_tuple,{f,1761},[{x,0},2,{atom,commands}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_nonempty_list,{f,1761},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_eq_exact,{f,1761},[{x,1},{literal,{ensure_at_least,16,1}}]}.
    {test,is_nonempty_list,{f,1761},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tagged_tuple,{f,1761},[{x,1},6,{atom,integer}]}.
    {get_tuple_element,{x,1},3,{x,2}}.
    {test,is_eq_exact,{f,1761},[{x,2},{integer,16}]}.
    {get_tuple_element,{x,1},4,{x,1}}.
    {test,is_eq_exact,{f,1761},[{x,1},{integer,1}]}.
    {bif,'=:=',{f,0},[{x,0},nil],{x,0}}.
    return.
  {label,1761}.
    {move,{atom,false},{x,0}}.
    return.


{function, '-em_2/1-lbc$^0/2-0-', 2, 1763}.
  {label,1762}.
    {line,[{location,"bs_match_r25_SUITE.erl",2545}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-em_2/1-lbc$^0/2-0-'},2}.
  {label,1763}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,16,true}}]}}.
    {test,bs_start_match3,{f,1765},2,[{x,0}],{x,2}}.
    {test,bs_skip_bits2,
          {f,1764},
          [{x,2},
           {integer,0},
           1,
           {field_flags,[{anno,[2545,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_integer2,
          {f,1764},
          3,
          [{tr,{x,2},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2545,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,0}}.
    {bs_get_tail,{x,2},{x,2},3}.
    {line,[{location,"bs_match_r25_SUITE.erl",2546}]}.
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
    {call_only,2,{f,1763}}. % '-em_2/1-lbc$^0/2-0-'/2
  {label,1764}.
    {move,{x,1},{x,0}}.
    return.
  {label,1765}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bspu_1/1-lc$^0/1-0-', 1, 1767}.
  {label,1766}.
    {line,[{location,"bs_match_r25_SUITE.erl",2512}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-bspu_1/1-lc$^0/1-0-'},1}.
  {label,1767}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_get_binary2,
          {f,1768},
          1,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,5},
           8,
           {field_flags,[{anno,[2512,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {call,1,{f,1767}}. % '-bspu_1/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1768}.
    {move,nil,{x,0}}.
    return.


{function, '-hangs_forever/1-fun-0-', 1, 1770}.
  {label,1769}.
    {line,[{location,"bs_match_r25_SUITE.erl",2495}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-hangs_forever/1-fun-0-'},1}.
  {label,1770}.
    {call_only,1,{f,1346}}. % hangs_forever_1/1


{function, '-beam_bsm/1-fun-0-', 1, 1772}.
  {label,1771}.
    {line,[{location,"bs_match_r25_SUITE.erl",2168}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-beam_bsm/1-fun-0-'},1}.
  {label,1772}.
    {gc_bif,'*',{f,0},1,[{x,0},{integer,2}],{x,0}}.
    return.


{function, '-num_slots_different/1-lc$^0/1-0-', 1, 1774}.
  {label,1773}.
    {line,[{location,"bs_match_r25_SUITE.erl",2131}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-num_slots_different/1-lc$^0/1-0-'},
               1}.
  {label,1774}.
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
    {test,is_nonempty_list,{f,1775},[{x,0}]}.
    {allocate,2,1}.
    {get_list,{x,0},{x,0},{y,1}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {get_tuple_element,{x,0},2,{x,3}}.
    {get_tuple_element,{x,0},3,{y,0}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {move,{x,3},{x,2}}.
    {call,3,{f,1150}}. % lgettext/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[ok]},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,
          {f,1776},
          [{tr,{x,1},{t_bitstring,8,false}},{tr,{y,0},{t_bitstring,8,false}}]}.
    {move,{y,1},{x,0}}.
    {call_last,1,{f,1774},2}. % '-num_slots_different/1-lc$^0/1-0-'/1
  {label,1775}.
    return.
  {label,1776}.
    {badmatch,{x,0}}.


{function, '-constant_propagation_c/0-fun-0-', 1, 1778}.
  {label,1777}.
    {line,[{location,"bs_match_r25_SUITE.erl",2067}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-constant_propagation_c/0-fun-0-'},
               1}.
  {label,1778}.
    {test,bs_start_match3,{f,1779},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,1779},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,16},
           1,
           {field_flags,[{anno,[2068,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1779},[{x,1},0]}.
    {move,{x,2},{x,0}}.
    return.
  {label,1779}.
    {line,[{location,"bs_match_r25_SUITE.erl",2068}]}.
    {badmatch,{x,0}}.


{function, '-bad_literals/1-lc$^3/1-3-', 2, 1781}.
  {label,1780}.
    {line,[{location,"bs_match_r25_SUITE.erl",1951}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-bad_literals/1-lc$^3/1-3-'},
               2}.
  {label,1781}.
    {'%',{var_info,{x,1},[{type,{t_cons,any,nil}}]}}.
    {test,is_nonempty_list,{f,1782},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,2}}.
    {move,{literal,[0,1,2,3]},{x,0}}.
    {call_only,4,{f,1785}}. % '-bad_literals/1-lc$^4/1-4-'/4
  {label,1782}.
    {test,is_nil,{f,1783},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,1783}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bad_literals/1-lc$^4/1-4-', 4, 1785}.
  {label,1784}.
    {line,[{location,"bs_match_r25_SUITE.erl",1952}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-bad_literals/1-lc$^4/1-4-'},
               4}.
  {label,1785}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_cons,any,nil}}]}}.
    {test,is_nonempty_list,{f,1786},[{x,0}]}.
    {allocate,4,4}.
    {move,{x,3},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,1},{y,3}}.
    {get_list,{x,0},{x,1},{y,0}}.
    {move,{x,3},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1951}]}.
    {call,2,{f,1079}}. % signed_lit_match/2
    {move,{y,0},{x,4}}.
    {move,{y,2},{x,2}}.
    {move,{y,3},{x,1}}.
    {move,{x,0},{y,3}}.
    {move,{y,1},{x,3}}.
    {trim,3,1}.
    {move,{x,4},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1952}]}.
    {call,4,{f,1785}}. % '-bad_literals/1-lc$^4/1-4-'/4
    {'%',{var_info,{x,0},[{type,{t_cons,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1786}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,1781}}. % '-bad_literals/1-lc$^3/1-3-'/2


{function, '-bad_literals/1-lc$^1/1-1-', 2, 1788}.
  {label,1787}.
    {line,[{location,"bs_match_r25_SUITE.erl",1953}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-bad_literals/1-lc$^1/1-1-'},
               2}.
  {label,1788}.
    {'%',{var_info,{x,1},[{type,{t_cons,any,nil}}]}}.
    {test,is_nonempty_list,{f,1789},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,2}}.
    {move,{literal,[0,1,2]},{x,0}}.
    {call_only,4,{f,1792}}. % '-bad_literals/1-lc$^2/1-2-'/4
  {label,1789}.
    {test,is_nil,{f,1790},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,1790}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bad_literals/1-lc$^2/1-2-', 4, 1792}.
  {label,1791}.
    {line,[{location,"bs_match_r25_SUITE.erl",1954}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-bad_literals/1-lc$^2/1-2-'},
               4}.
  {label,1792}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,2}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_cons,any,nil}}]}}.
    {test,is_nonempty_list,{f,1793},[{x,0}]}.
    {allocate,4,4}.
    {move,{x,3},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,1},{y,3}}.
    {get_list,{x,0},{x,1},{y,0}}.
    {move,{x,3},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1953}]}.
    {call,2,{f,1082}}. % unsigned_lit_match/2
    {move,{y,0},{x,4}}.
    {move,{y,2},{x,2}}.
    {move,{y,3},{x,1}}.
    {move,{x,0},{y,3}}.
    {move,{y,1},{x,3}}.
    {trim,3,1}.
    {move,{x,4},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1954}]}.
    {call,4,{f,1792}}. % '-bad_literals/1-lc$^2/1-2-'/4
    {'%',{var_info,{x,0},[{type,{t_cons,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1793}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,1788}}. % '-bad_literals/1-lc$^1/1-1-'/2


{function, '-bad_literals/1-lc$^0/1-0-', 1, 1795}.
  {label,1794}.
    {line,[{location,"bs_match_r25_SUITE.erl",1956}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-bad_literals/1-lc$^0/1-0-'},
               1}.
  {label,1795}.
    {test,is_nonempty_list,{f,1796},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{x,0},{y,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1955}]}.
    {call,1,{f,1085}}. % unicode_match/1
    {swap,{y,0},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1956}]}.
    {call,1,{f,1795}}. % '-bad_literals/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1796}.
    {test,is_nil,{f,1797},[{x,0}]}.
    return.
  {label,1797}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-haystack_2/1-lc$^0/1-0-', 2, 1799}.
  {label,1798}.
    {line,[{location,"bs_match_r25_SUITE.erl",1567}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-haystack_2/1-lc$^0/1-0-'},2}.
  {label,1799}.
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
    {test,is_nonempty_list,{f,1800},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {get_tuple_element,{x,2},0,{x,3}}.
    {get_tuple_element,{x,2},1,{x,2}}.
    {bs_start_match4,{atom,no_fail},4,{x,1},{x,4}}.
    {test,bs_skip_bits2,
          {f,1801},
          [{x,4},
           {x,3},
           8,
           {field_flags,[{anno,[1565,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,1801},
          5,
          [{tr,{x,4},{t_bs_context,8}},
           {tr,{x,2},{t_integer,{10,20}}},
           8,
           {field_flags,[{anno,[1565,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {call,2,{f,1799}}. % '-haystack_2/1-lc$^0/1-0-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1800}.
    return.
  {label,1801}.
    {line,[{location,"bs_match_r25_SUITE.erl",1565}]}.
    {badmatch,{x,1}}.


{function, '-haystack_1/1-lc$^0/1-0-', 2, 1803}.
  {label,1802}.
    {line,[{location,"bs_match_r25_SUITE.erl",1558}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-haystack_1/1-lc$^0/1-0-'},2}.
  {label,1803}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{10,10}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,16,false}}]}}.
    {test,is_nonempty_list,{f,1804},[{x,0}]}.
    {get_tl,{x,0},{x,0}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,2}}.
    {test,bs_test_tail2,{f,1805},[{x,2},80]}.
    {call_only,2,{f,1803}}. % '-haystack_1/1-lc$^0/1-0-'/2
  {label,1804}.
    return.
  {label,1805}.
    {line,[{location,"bs_match_r25_SUITE.erl",1556}]}.
    {badmatch,{x,1}}.


{function, '-bad_size_2/1-lc$^0/1-0-', 1, 1807}.
  {label,1806}.
    {line,[{location,"bs_match_r25_SUITE.erl",1538}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-bad_size_2/1-lc$^0/1-0-'},1}.
  {label,1807}.
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
    {test,is_nonempty_list,{f,1808},[{x,0}]}.
    {get_tl,{x,0},{x,0}}.
    {call_only,1,{f,1807}}. % '-bad_size_2/1-lc$^0/1-0-'/1
  {label,1808}.
    {test,is_nil,
          {f,1809},
          [{tr,{x,0},{t_union,{t_atom,[no_list]},nil,none,none,none}}]}.
    return.
  {label,1809}.
    {move,{literal,{bad_generator,no_list}},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bad_size/1-lbc$^0/2-0-', 2, 1811}.
  {label,1810}.
    {line,[{location,"bs_match_r25_SUITE.erl",1472}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-bad_size/1-lbc$^0/2-0-'},2}.
  {label,1811}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {move,{x,1},{x,0}}.
    return.


{function, '-zero_width/1-fun-0-', 1, 1813}.
  {label,1812}.
    {line,[{location,"bs_match_r25_SUITE.erl",1418}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-zero_width/1-fun-0-'},1}.
  {label,1813}.
    {test,bs_start_match3,{f,1815},1,[{x,0}],{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {test,bs_get_integer2,
          {f,1814},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1418,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,1814},[{tr,{x,2},{t_integer,{0,255}}},{integer,42}]}.
    {test,bs_test_tail2,{f,1814},[{x,0},0]}.
    {move,{atom,star},{x,0}}.
    return.
  {label,1814}.
    {bs_set_position,{x,0},{x,1}}.
    {test,bs_test_tail2,{f,1815},[{x,0},0]}.
    {move,{integer,0},{x,0}}.
    return.
  {label,1815}.
    {move,{atom,no_match},{x,0}}.
    return.


{function, '-coverage_beam_ssa_codegen/1-lbc$^0/2-0-', 2, 1817}.
  {label,1816}.
    {line,[{location,"bs_match_r25_SUITE.erl",1028}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-coverage_beam_ssa_codegen/1-lbc$^0/2-0-'},
               2}.
  {label,1817}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,1819},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1028,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,1818},[{tr,{x,2},{t_integer,{0,255}}},{integer,2}]}.
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
    {call_only,2,{f,1817}}. % '-coverage_beam_ssa_codegen/1-lbc$^0/2-0-'/2
  {label,1818}.
    {bs_get_tail,{x,0},{x,0},2}.
    {call_only,2,{f,1817}}. % '-coverage_beam_ssa_codegen/1-lbc$^0/2-0-'/2
  {label,1819}.
    {move,{atom,ok},{x,0}}.
    return.


{function, '-coverage_trim_4/1-lbc$^0/2-0-', 2, 1821}.
  {label,1820}.
    {line,[{location,"bs_match_r25_SUITE.erl",1011}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-coverage_trim_4/1-lbc$^0/2-0-'},
               2}.
  {label,1821}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,16,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,1822},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1011,{file,"bs_match_r25_SUITE.erl"}]},
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
    {call_only,2,{f,1821}}. % '-coverage_trim_4/1-lbc$^0/2-0-'/2
  {label,1822}.
    {move,{atom,ok},{x,0}}.
    return.


{function, '-do_coverage_bin_to_term_list/1-lbc$^0/2-0-', 2, 1824}.
  {label,1823}.
    {line,[{location,"bs_match_r25_SUITE.erl",925}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-do_coverage_bin_to_term_list/1-lbc$^0/2-0-'},
               2}.
  {label,1824}.
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,1825},[{x,0}]}.
    {allocate,2,2}.
    {move,{x,1},{y,1}}.
    {get_list,{x,0},{x,0},{y,0}}.
    {call_ext,1,{extfunc,erlang,term_to_binary,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",926}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",925}]}.
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
    {call_last,2,{f,1824},2}. % '-do_coverage_bin_to_term_list/1-lbc$^0/2-0-'/2
  {label,1825}.
    {move,{x,1},{x,0}}.
    return.


{function, '-coverage_bc/2-lbc$^0/2-0-', 2, 1827}.
  {label,1826}.
    {line,[{location,"bs_match_r25_SUITE.erl",904}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-coverage_bc/2-lbc$^0/2-0-'},
               2}.
  {label,1827}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,255}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,1828},[{x,0}]}.
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
    {call_only,2,{f,1827}}. % '-coverage_bc/2-lbc$^0/2-0-'/2
  {label,1828}.
    {move,{x,1},{x,0}}.
    return.


{function, '-coverage/1-fun-4-', 0, 1830}.
  {label,1829}.
    {line,[{location,"bs_match_r25_SUITE.erl",880}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-coverage/1-fun-4-'},0}.
  {label,1830}.
    {move,{atom,whatever},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,throw,1}}.


{function, '-coverage/1-fun-3-', 0, 1832}.
  {label,1831}.
    {line,[{location,"bs_match_r25_SUITE.erl",879}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-coverage/1-fun-3-'},0}.
  {label,1832}.
    {move,{integer,42},{x,0}}.
    return.


{function, '-coverage/1-fun-2-', 2, 1834}.
  {label,1833}.
    {line,[{location,"bs_match_r25_SUITE.erl",823}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-coverage/1-fun-2-'},2}.
  {label,1834}.
    {line,[{location,"bs_match_r25_SUITE.erl",824}]}.
    {gc_bif,'+',{f,0},2,[{x,1},{x,0}],{x,0}}.
    return.


{function, '-coverage/1-fun-1-', 2, 1836}.
  {label,1835}.
    {line,[{location,"bs_match_r25_SUITE.erl",822}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-coverage/1-fun-1-'},2}.
  {label,1836}.
    {gc_bif,'+',{f,0},2,[{x,1},{x,0}],{x,0}}.
    return.


{function, '-coverage/1-fun-0-', 2, 1838}.
  {label,1837}.
    {line,[{location,"bs_match_r25_SUITE.erl",821}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-coverage/1-fun-0-'},2}.
  {label,1838}.
    {gc_bif,'+',{f,0},2,[{x,1},{x,0}],{x,0}}.
    return.


{function, '-bin_and_float/1-lbc$^0/2-0-', 3, 1840}.
  {label,1839}.
    {line,[{location,"bs_match_r25_SUITE.erl",633}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-bin_and_float/1-lbc$^0/2-0-'},
               3}.
  {label,1840}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {test,bs_get_float2,
          {f,1842},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {x,2},
           63,
           {field_flags,[{anno,[633,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,1841},[{tr,{x,3},{t_float,any}},{float,1.0}]}.
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
    {call_only,3,{f,1840}}. % '-bin_and_float/1-lbc$^0/2-0-'/3
  {label,1841}.
    {bs_get_tail,{x,0},{x,0},3}.
    {call_only,3,{f,1840}}. % '-bin_and_float/1-lbc$^0/2-0-'/3
  {label,1842}.
    {move,{x,1},{x,0}}.
    return.


{function, '-null_fields/1-fun-3-', 0, 1844}.
  {label,1843}.
    {line,[{location,"bs_match_r25_SUITE.erl",304}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-null_fields/1-fun-3-'},0}.
  {label,1844}.
    {move,{atom,tail},{x,0}}.
    return.


{function, '-null_fields/1-fun-1-', 0, 1846}.
  {label,1845}.
    {line,[{location,"bs_match_r25_SUITE.erl",297}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-null_fields/1-fun-1-'},0}.
  {label,1846}.
    {allocate,0,0}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",298}]}.
    {call,1,{f,1686}}. % id/1
    {move,{literal,<<>>},{x,1}}.
    {bs_start_match4,{atom,no_fail},1,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {test,bs_skip_bits2,
          {f,1847},
          [{x,1},
           {x,0},
           1,
           {field_flags,[{anno,[299,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_test_tail2,{f,1847},[{x,1},0]}.
    {move,{atom,tail},{x,0}}.
    {deallocate,0}.
    return.
  {label,1847}.
    {bs_set_position,{x,1},{x,2}}.
    {test,bs_test_tail2,{f,1848},[{x,1},0]}.
    {move,{atom,empty},{x,0}}.
    {deallocate,0}.
    return.
  {label,1848}.
    {move,{literal,<<>>},{x,0}}.
    {call_last,1,{f,1936},0}. % '-null_fields/1-inlined-0-'/1


{function, '-otp_5269/1-fun-15-', 0, 1850}.
  {label,1849}.
    {line,[{location,"bs_match_r25_SUITE.erl",286}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-otp_5269/1-fun-15-'},0}.
  {label,1850}.
    {move,{literal,<<1,2,3,4>>},{x,0}}.
    {bs_start_match4,{atom,no_fail},0,{x,0},{x,0}}.
    {test,bs_skip_bits2,
          {f,1851},
          [{x,0},
           {integer,1},
           8,
           {field_flags,[{anno,[287,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_integer2,
          {f,1851},
          1,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[287,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_skip_bits2,
          {f,1851},
          [{x,0},
           {x,1},
           8,
           {field_flags,[{anno,[287,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_test_tail2,{f,1851},[{x,0},0]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1851}.
    {move,{literal,<<1,2,3,4>>},{x,0}}.
    {call_only,1,{f,1942}}. % '-otp_5269/1-inlined-6-'/1


{function, '-otp_5269/1-fun-13-', 0, 1853}.
  {label,1852}.
    {line,[{location,"bs_match_r25_SUITE.erl",282}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-otp_5269/1-fun-13-'},0}.
  {label,1853}.
    {move,{literal,[<<0,0,0,1>>,<<0,0,0,2>>,<<3>>]},{x,0}}.
    {call_only,1,{f,1855}}. % '-otp_5269/1-lc$^12/1-5-'/1


{function, '-otp_5269/1-lc$^12/1-5-', 1, 1855}.
  {label,1854}.
    {line,[{location,"bs_match_r25_SUITE.erl",283}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-otp_5269/1-lc$^12/1-5-'},1}.
  {label,1855}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {test,is_nonempty_list,{f,1857},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,1856},
          2,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,32},
           1,
           {field_flags,[{anno,[283,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1856},[{x,1},0]}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {call,1,{f,1855}}. % '-otp_5269/1-lc$^12/1-5-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,4294967295}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1856}.
    {call_only,1,{f,1855}}. % '-otp_5269/1-lc$^12/1-5-'/1
  {label,1857}.
    return.


{function, '-otp_5269/1-fun-11-', 0, 1859}.
  {label,1858}.
    {line,[{location,"bs_match_r25_SUITE.erl",277}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-otp_5269/1-fun-11-'},0}.
  {label,1859}.
    {move,{literal,<<2,65,66,67,68>>},{x,0}}.
    {bs_start_match4,{atom,no_fail},0,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,1860},
          1,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[278,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_binary2,
          {f,1860},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {tr,{x,1},{t_integer,{0,255}}},
           8,
           {field_flags,[{anno,[278,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,0},{x,0},3}.
    {test_heap,4,3}.
    {put_tuple2,{x,0},{list,[{x,1},{x,2},{x,0}]}}.
    return.
  {label,1860}.
    {line,[{location,"bs_match_r25_SUITE.erl",278}]}.
    {badmatch,{literal,<<2,65,66,67,68>>}}.


{function, '-otp_5269/1-fun-10-', 0, 1862}.
  {label,1861}.
    {line,[{location,"bs_match_r25_SUITE.erl",275}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-otp_5269/1-fun-10-'},0}.
  {label,1862}.
    {move,{integer,28},{x,0}}.
    return.


{function, '-otp_5269/1-fun-9-', 0, 1864}.
  {label,1863}.
    {line,[{location,"bs_match_r25_SUITE.erl",271}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-otp_5269/1-fun-9-'},0}.
  {label,1864}.
    {move,{literal,[<<16,0,19>>]},{x,0}}.
    {call_only,1,{f,1866}}. % '-otp_5269/1-lc$^7/1-3-'/1


{function, '-otp_5269/1-lc$^7/1-3-', 1, 1866}.
  {label,1865}.
    {line,[{location,"bs_match_r25_SUITE.erl",272}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-otp_5269/1-lc$^7/1-3-'},1}.
  {label,1866}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {test,is_nonempty_list,{f,1868},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,1867},
          2,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[271,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{x,1},3}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,1867},
          3,
          [{tr,{x,1},{t_bs_context,8}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[271,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1867},[{x,1},0]}.
    {line,[{location,"bs_match_r25_SUITE.erl",273}]}.
    {bs_create_bin,{f,0},
                   2,3,8,
                   {x,1},
                   {list,[{atom,integer},
                          1,1,nil,
                          {tr,{x,2},{t_integer,{0,'+inf'}}},
                          {integer,8}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {swap,{x,0},{x,1}}.
    {call_only,2,{f,1870}}. % '-otp_5269/1-lc$^8/1-4-'/2
  {label,1867}.
    {call_only,1,{f,1866}}. % '-otp_5269/1-lc$^7/1-3-'/1
  {label,1868}.
    return.


{function, '-otp_5269/1-lc$^8/1-4-', 2, 1870}.
  {label,1869}.
    {line,[{location,"bs_match_r25_SUITE.erl",273}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-otp_5269/1-lc$^8/1-4-'},2}.
  {label,1870}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {test,is_nonempty_list,{f,1872},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,2}}.
    {test,bs_get_integer2,
          {f,1871},
          3,
          [{tr,{x,2},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[271,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1871},[{x,2},0]}.
    {allocate,1,4}.
    {move,{x,3},{y,0}}.
    {call,2,{f,1870}}. % '-otp_5269/1-lc$^8/1-4-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,255}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1871}.
    {call_only,2,{f,1870}}. % '-otp_5269/1-lc$^8/1-4-'/2
  {label,1872}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,1866}}. % '-otp_5269/1-lc$^7/1-3-'/1


{function, '-otp_5269/1-fun-6-', 0, 1874}.
  {label,1873}.
    {line,[{location,"bs_match_r25_SUITE.erl",269}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-otp_5269/1-fun-6-'},0}.
  {label,1874}.
    {move,{literal,[<<" ">>]},{x,0}}.
    {call_only,1,{f,1876}}. % '-otp_5269/1-lc$^5/1-2-'/1


{function, '-otp_5269/1-lc$^5/1-2-', 1, 1876}.
  {label,1875}.
    {line,[{location,"bs_match_r25_SUITE.erl",269}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-otp_5269/1-lc$^5/1-2-'},1}.
  {label,1876}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {test,is_nonempty_list,{f,1878},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,1877},
          2,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[269,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1877},[{x,1},0]}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {call,1,{f,1876}}. % '-otp_5269/1-lc$^5/1-2-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,255}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1877}.
    {call_only,1,{f,1876}}. % '-otp_5269/1-lc$^5/1-2-'/1
  {label,1878}.
    return.


{function, '-otp_5269/1-fun-4-', 0, 1880}.
  {label,1879}.
    {line,[{location,"bs_match_r25_SUITE.erl",267}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-otp_5269/1-fun-4-'},0}.
  {label,1880}.
    {move,{literal,<<" ">>},{x,0}}.
    {bs_start_match4,{atom,no_fail},0,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,1881},
          1,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[267,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_test_tail2,{f,1881},[{x,0},0]}.
    {move,{x,1},{x,0}}.
    return.
  {label,1881}.
    {move,{literal,<<" ">>},{x,0}}.
    {call_only,1,{f,1940}}. % '-otp_5269/1-inlined-1-'/1


{function, '-otp_5269/1-fun-2-', 0, 1883}.
  {label,1882}.
    {line,[{location,"bs_match_r25_SUITE.erl",265}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-otp_5269/1-fun-2-'},0}.
  {label,1883}.
    {move,{literal,<<16,0,7>>},{x,0}}.
    {bs_start_match4,{atom,no_fail},0,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,1884},
          1,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[265,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,1884},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {tr,{x,1},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[265,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_test_tail2,{f,1884},[{x,0},0]}.
    {move,{x,1},{x,0}}.
    return.
  {label,1884}.
    {badmatch,{literal,<<16,0,7>>}}.


{function, '-otp_5269/1-fun-1-', 0, 1886}.
  {label,1885}.
    {line,[{location,"bs_match_r25_SUITE.erl",260}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-otp_5269/1-fun-1-'},0}.
  {label,1886}.
    {move,{literal,<<16,0,7>>},{x,0}}.
    {bs_start_match4,{atom,no_fail},0,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,1887},
          1,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[261,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,1887},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {tr,{x,1},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[261,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_test_tail2,{f,1887},[{x,0},0]}.
    {move,{x,1},{x,0}}.
    return.
  {label,1887}.
    {move,{literal,<<16,0,7>>},{x,0}}.
    {call_only,1,{f,1938}}. % '-otp_5269/1-inlined-0-'/1


{function, '-size_shadow_6/2-fun-0-', 5, 1889}.
  {label,1888}.
    {line,[{location,"bs_match_r25_SUITE.erl",217}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-size_shadow_6/2-fun-0-'},5}.
  {label,1889}.
    {'%',{var_info,{x,3},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_atom,[any]},
                                     2 => {t_atom,[term]},
                                     3 => {t_atom,[goes]}}}}]}}.
    {'%',{var_info,{x,4},[{type,{t_integer,{13,13}}}]}}.
    {test,bs_start_match3,{f,1890},3,[{x,1}],{x,3}}.
    {test,bs_get_integer2,
          {f,1890},
          4,
          [{tr,{x,3},{t_bs_context,1}},
           {integer,13},
           1,
           {field_flags,[{anno,[217,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,1890},[{x,3},0]}.
    {move,{literal,{any,term,goes}},{x,1}}.
    {move,{x,2},{x,3}}.
    {move,{x,0},{x,2}}.
    {move,{x,4},{x,0}}.
    {call_only,4,{f,48}}. % fum/4
  {label,1890}.
    {call_only,3,{f,1960}}. % '-size_shadow_6/2-inlined-0-'/3


{function, '-size_shadow_5/2-fun-0-', 5, 1892}.
  {label,1891}.
    {line,[{location,"bs_match_r25_SUITE.erl",214}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-size_shadow_5/2-fun-0-'},5}.
  {label,1892}.
    {'%',{var_info,{x,3},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_atom,[any]},
                                     2 => {t_atom,[term]},
                                     3 => {t_atom,[goes]}}}}]}}.
    {'%',{var_info,{x,4},[{type,{t_integer,{12,12}}}]}}.
    {test,bs_start_match3,{f,1893},3,[{x,0}],{x,3}}.
    {test,bs_get_integer2,
          {f,1893},
          4,
          [{tr,{x,3},{t_bs_context,1}},
           {integer,12},
           1,
           {field_flags,[{anno,[214,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,1893},[{x,3},0]}.
    {move,{x,2},{x,3}}.
    {move,{x,1},{x,2}}.
    {move,{literal,{any,term,goes}},{x,1}}.
    {move,{x,4},{x,0}}.
    {call_only,4,{f,48}}. % fum/4
  {label,1893}.
    {call_only,3,{f,1958}}. % '-size_shadow_5/2-inlined-0-'/3


{function, '-size_shadow_4/1-fun-1-', 2, 1895}.
  {label,1894}.
    {line,[{location,"bs_match_r25_SUITE.erl",205}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-size_shadow_4/1-fun-1-'},2}.
  {label,1895}.
    {'%',{var_info,{x,1},[{type,{t_integer,{8,8}}}]}}.
    {test,bs_start_match3,{f,1896},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,1896},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[206,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{x,1},3}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,1896},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[206,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,1896},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[206,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,1896},[{x,1},0]}.
    {bs_start_match4,{atom,no_fail},5,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,1896},
          5,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[206,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {bs_get_tail,{x,0},{x,0},5}.
    {bs_start_match4,{atom,no_fail},5,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,1896},
          5,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,1},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[206,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_get_integer2,
          {f,1896},
          6,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,1},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[206,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,bs_test_tail2,{f,1896},[{x,0},0]}.
    {test,is_eq_exact,
          {f,1896},
          [{tr,{x,6},{t_integer,{0,'+inf'}}},{tr,{x,1},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,1896},
          [{tr,{x,2},{t_integer,{0,255}}},{tr,{x,1},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,1896},
          [{tr,{x,3},{t_integer,{0,'+inf'}}},
           {tr,{x,5},{t_integer,{0,'+inf'}}}]}.
    {test,is_eq_exact,
          {f,1896},
          [{tr,{x,4},{t_integer,{0,'+inf'}}},{tr,{x,1},{t_integer,{0,255}}}]}.
    {move,{x,5},{x,0}}.
    return.
  {label,1896}.
    {move,{atom,no},{x,0}}.
    return.


{function, '-size_shadow_4/1-fun-3-', 2, 1898}.
  {label,1897}.
    {line,[{location,"bs_match_r25_SUITE.erl",199}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-size_shadow_4/1-fun-3-'},2}.
  {label,1898}.
    {'%',{var_info,{x,1},[{type,{t_integer,{8,8}}}]}}.
    {test,bs_start_match3,{f,1899},1,[{x,0}],{x,0}}.
    {test,bs_get_integer2,
          {f,1899},
          1,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[200,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,1899},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,1},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[200,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1899},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,1},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[200,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1899},[{x,0},0]}.
    {test,is_eq_exact,
          {f,1899},
          [{tr,{x,3},{t_integer,{0,'+inf'}}},{tr,{x,1},{t_integer,{0,255}}}]}.
    {move,{x,2},{x,0}}.
    return.
  {label,1899}.
    {move,{atom,no},{x,0}}.
    return.


{function, '-size_shadow_4/1-fun-4-', 2, 1901}.
  {label,1900}.
    {line,[{location,"bs_match_r25_SUITE.erl",196}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-size_shadow_4/1-fun-4-'},2}.
  {label,1901}.
    {'%',{var_info,{x,1},[{type,{t_integer,{8,8}}}]}}.
    {test,bs_start_match3,{f,1902},1,[{x,0}],{x,0}}.
    {test,bs_get_integer2,
          {f,1902},
          1,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[196,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,1902},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,1},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[196,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1902},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,1},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[196,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1902},[{x,0},0]}.
    {test,is_eq_exact,
          {f,1902},
          [{tr,{x,3},{t_integer,{0,'+inf'}}},{tr,{x,1},{t_integer,{0,255}}}]}.
    {move,{x,2},{x,0}}.
    return.
  {label,1902}.
    {move,{atom,no},{x,0}}.
    return.


{function, '-size_shadow_3/0-fun-1-', 1, 1904}.
  {label,1903}.
    {line,[{location,"bs_match_r25_SUITE.erl",190}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-size_shadow_3/0-fun-1-'},1}.
  {label,1904}.
    {test_heap,4,1}.
    {put_tuple2,{x,1},{list,[{atom,tag},{x,0},{x,0}]}}.
    {test,bs_start_match3,{f,1905},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,1905},
          3,
          [{tr,{x,2},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[191,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_tail,{x,2},{x,2},4}.
    {bs_start_match4,{atom,no_fail},4,{x,2},{x,2}}.
    {test,bs_get_integer2,
          {f,1905},
          4,
          [{tr,{x,2},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[191,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_integer2,
          {f,1905},
          5,
          [{tr,{x,2},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[191,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_test_tail2,{f,1905},[{x,2},0]}.
    {bs_start_match4,{atom,no_fail},6,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,1905},
          6,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[191,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,0},{x,0},6}.
    {bs_start_match4,{atom,no_fail},6,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,1905},
          6,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[191,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,bs_get_integer2,
          {f,1905},
          7,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[191,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,7}}.
    {test,bs_test_tail2,{f,1905},[{x,0},0]}.
    {test,is_eq_exact,
          {f,1905},
          [{tr,{x,7},{t_integer,{0,'+inf'}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,1905},
          [{tr,{x,3},{t_integer,{0,255}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,1905},
          [{tr,{x,4},{t_integer,{0,'+inf'}}},
           {tr,{x,6},{t_integer,{0,'+inf'}}}]}.
    {test,is_eq_exact,
          {f,1905},
          [{tr,{x,5},{t_integer,{0,'+inf'}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {move,{x,6},{x,0}}.
    return.
  {label,1905}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,1956}}. % '-size_shadow_3/0-inlined-2-'/1


{function, '-size_shadow_3/0-fun-3-', 1, 1907}.
  {label,1906}.
    {line,[{location,"bs_match_r25_SUITE.erl",187}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-size_shadow_3/0-fun-3-'},1}.
  {label,1907}.
    {test_heap,5,1}.
    {put_list,{x,0},nil,{x,1}}.
    {put_tuple2,{x,1},{list,[{atom,tag},{x,1}]}}.
    {test,bs_start_match3,{f,1908},2,[{x,0}],{x,0}}.
    {test,bs_get_integer2,
          {f,1908},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[188,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,0},{x,0},3}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,1908},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[188,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,1908},
          4,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[188,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,1908},[{x,0},0]}.
    {test,is_eq_exact,
          {f,1908},
          [{tr,{x,4},{t_integer,{0,'+inf'}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {move,{x,3},{x,0}}.
    return.
  {label,1908}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,1954}}. % '-size_shadow_3/0-inlined-1-'/1


{function, '-size_shadow_3/0-fun-4-', 1, 1910}.
  {label,1909}.
    {line,[{location,"bs_match_r25_SUITE.erl",186}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-size_shadow_3/0-fun-4-'},1}.
  {label,1910}.
    {test,bs_start_match3,{f,1909},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,1909},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[186,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{x,1},3}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,1909},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[186,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,1909},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[186,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,1909},[{x,1},0]}.
    {test,is_eq_exact,
          {f,1909},
          [{tr,{x,4},{t_integer,{0,'+inf'}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {move,{x,3},{x,0}}.
    return.


{function, '-size_shadow_2/1-fun-1-', 2, 1912}.
  {label,1911}.
    {line,[{location,"bs_match_r25_SUITE.erl",179}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-size_shadow_2/1-fun-1-'},2}.
  {label,1912}.
    {'%',{var_info,{x,1},[{type,{t_integer,{8,8}}}]}}.
    {test_heap,3,1}.
    {put_tuple2,{x,1},{list,[{x,0},{x,0}]}}.
    {test,bs_start_match3,{f,1913},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,1913},
          3,
          [{tr,{x,2},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[180,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_tail,{x,2},{x,2},4}.
    {bs_start_match4,{atom,no_fail},4,{x,2},{x,2}}.
    {test,bs_get_integer2,
          {f,1913},
          4,
          [{tr,{x,2},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[180,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,1913},[{x,2},0]}.
    {bs_start_match4,{atom,no_fail},5,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,1913},
          5,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[180,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,0},{x,0},5}.
    {bs_start_match4,{atom,no_fail},5,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,1913},
          5,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[180,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_test_tail2,{f,1913},[{x,0},0]}.
    {test,is_eq_exact,
          {f,1913},
          [{tr,{x,3},{t_integer,{0,255}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,1913},
          [{tr,{x,4},{t_integer,{0,'+inf'}}},
           {tr,{x,5},{t_integer,{0,'+inf'}}}]}.
    {move,{x,5},{x,0}}.
    return.
  {label,1913}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,1952}}. % '-size_shadow_2/1-inlined-2-'/1


{function, '-size_shadow_2/1-fun-3-', 2, 1915}.
  {label,1914}.
    {line,[{location,"bs_match_r25_SUITE.erl",176}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-size_shadow_2/1-fun-3-'},2}.
  {label,1915}.
    {'%',{var_info,{x,1},[{type,{t_integer,{8,8}}}]}}.
    {test_heap,2,1}.
    {put_list,{x,0},nil,{x,1}}.
    {test,bs_start_match3,{f,1916},2,[{x,0}],{x,0}}.
    {test,bs_get_integer2,
          {f,1916},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[177,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,0},{x,0},3}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,1916},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[177,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1916},[{x,0},0]}.
    {move,{x,2},{x,0}}.
    return.
  {label,1916}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,1950}}. % '-size_shadow_2/1-inlined-1-'/1


{function, '-size_shadow_2/1-fun-4-', 2, 1918}.
  {label,1917}.
    {line,[{location,"bs_match_r25_SUITE.erl",175}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-size_shadow_2/1-fun-4-'},2}.
  {label,1918}.
    {'%',{var_info,{x,1},[{type,{t_integer,{8,8}}}]}}.
    {test,bs_start_match3,{f,1919},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,1919},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[175,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{x,1},3}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,1919},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[175,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1919},[{x,1},0]}.
    {move,{x,2},{x,0}}.
    return.
  {label,1919}.
    {call_only,1,{f,1948}}. % '-size_shadow_2/1-inlined-0-'/1


{function, '-size_shadow_1/0-fun-1-', 1, 1921}.
  {label,1920}.
    {line,[{location,"bs_match_r25_SUITE.erl",166}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-size_shadow_1/0-fun-1-'},1}.
  {label,1921}.
    {test,bs_start_match3,{f,1922},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,1922},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[167,{file,"bs_match_r25_SUITE.erl"}]},
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
    {call_only,2,{f,1924}}. % '-size_shadow_1/0-fun-0-'/2
  {label,1922}.
    {line,[{location,"bs_match_r25_SUITE.erl",167}]}.
    {badmatch,{x,0}}.


{function, '-size_shadow_1/0-fun-0-', 2, 1924}.
  {label,1923}.
    {line,[{location,"bs_match_r25_SUITE.erl",168}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-size_shadow_1/0-fun-0-'},2}.
  {label,1924}.
    {test,is_nonempty_list,{f,1923},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,3}}.
    {test,is_nil,{f,1923},[{x,3}]}.
    {test,is_tuple,{f,1923},[{x,1}]}.
    {test,test_arity,{f,1923},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_map,{f,1923},[{x,3}]}.
    {get_map_elements,{f,1923},
                      {tr,{x,3},{t_map,any,any}},
                      {list,[{atom,key2},{x,3},{atom,key1},{x,4}]}}.
    {test,bs_start_match3,{f,1923},5,[{x,3}],{x,3}}.
    {test,bs_get_integer2,
          {f,1923},
          5,
          [{tr,{x,3},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[168,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {bs_get_tail,{x,3},{x,3},6}.
    {bs_start_match4,{atom,no_fail},6,{x,3},{x,3}}.
    {test,bs_get_integer2,
          {f,1923},
          6,
          [{tr,{x,3},{t_bs_context,1}},
           {tr,{x,5},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[168,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,bs_test_tail2,{f,1923},[{x,3},0]}.
    {test,bs_start_match3,{f,1923},7,[{x,4}],{x,3}}.
    {test,bs_get_integer2,
          {f,1923},
          7,
          [{tr,{x,3},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[168,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {bs_get_tail,{x,3},{x,3},7}.
    {bs_start_match4,{atom,no_fail},7,{x,3},{x,3}}.
    {test,bs_get_integer2,
          {f,1923},
          7,
          [{tr,{x,3},{t_bs_context,1}},
           {tr,{x,4},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[168,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,7}}.
    {test,bs_test_tail2,{f,1923},[{x,3},0]}.
    {test,is_eq_exact,{f,1923},[{tr,{x,4},{t_integer,{0,255}}},{x,2}]}.
    {test,is_eq_exact,
          {f,1923},
          [{tr,{x,5},{t_integer,{0,255}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,1923},
          [{tr,{x,6},{t_integer,{0,'+inf'}}},
           {tr,{x,7},{t_integer,{0,'+inf'}}}]}.
    {get_tuple_element,{x,1},1,{x,3}}.
    {test,is_eq_exact,{f,1923},[{x,3},{tr,{x,2},{t_integer,{0,255}}}]}.
    {move,{x,7},{x,0}}.
    return.


{function, '-size_shadow_1/0-fun-3-', 1, 1926}.
  {label,1925}.
    {line,[{location,"bs_match_r25_SUITE.erl",163}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-size_shadow_1/0-fun-3-'},1}.
  {label,1926}.
    {test_heap,4,1}.
    {put_list,{x,0},nil,{x,1}}.
    {put_list,{x,0},{x,1},{x,1}}.
    {test,bs_start_match3,{f,1927},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,1927},
          3,
          [{tr,{x,2},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[164,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_tail,{x,2},{x,2},4}.
    {bs_start_match4,{atom,no_fail},4,{x,2},{x,2}}.
    {test,bs_get_integer2,
          {f,1927},
          4,
          [{tr,{x,2},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[164,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,1927},[{x,2},0]}.
    {bs_start_match4,{atom,no_fail},5,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,1927},
          5,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[164,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,0},{x,0},5}.
    {bs_start_match4,{atom,no_fail},5,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,1927},
          5,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[164,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_test_tail2,{f,1927},[{x,0},0]}.
    {test,is_eq_exact,
          {f,1927},
          [{tr,{x,3},{t_integer,{0,255}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,1927},
          [{tr,{x,4},{t_integer,{0,'+inf'}}},
           {tr,{x,5},{t_integer,{0,'+inf'}}}]}.
    {move,{x,5},{x,0}}.
    return.
  {label,1927}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,1946}}. % '-size_shadow_1/0-inlined-2-'/1


{function, '-size_shadow_1/0-fun-5-', 1, 1929}.
  {label,1928}.
    {line,[{location,"bs_match_r25_SUITE.erl",160}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-size_shadow_1/0-fun-5-'},1}.
  {label,1929}.
    {test_heap,2,1}.
    {put_list,{x,0},nil,{x,1}}.
    {test,bs_start_match3,{f,1930},2,[{x,0}],{x,0}}.
    {test,bs_get_integer2,
          {f,1930},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[161,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,0},{x,0},3}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,1930},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[161,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1930},[{x,0},0]}.
    {move,{x,2},{x,0}}.
    return.
  {label,1930}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,1944}}. % '-size_shadow_1/0-inlined-1-'/1


{function, '-size_shadow_1/0-fun-6-', 1, 1932}.
  {label,1931}.
    {line,[{location,"bs_match_r25_SUITE.erl",159}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-size_shadow_1/0-fun-6-'},1}.
  {label,1932}.
    {test,bs_start_match3,{f,1931},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,1931},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[159,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{x,1},3}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,1931},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[159,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1931},[{x,1},0]}.
    {move,{x,2},{x,0}}.
    return.


{function, '-mos_int_fun/1-inlined-0-', 1, 1934}.
  {label,1933}.
    {line,[{location,"bs_match_r25_SUITE.erl",1729}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-mos_int_fun/1-inlined-0-'},1}.
  {label,1934}.
    {jump,{f,1933}}.


{function, '-null_fields/1-inlined-0-', 1, 1936}.
  {label,1935}.
    {line,[{location,"bs_match_r25_SUITE.erl",299}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-null_fields/1-inlined-0-'},1}.
  {label,1936}.
    {jump,{f,1935}}.


{function, '-otp_5269/1-inlined-0-', 1, 1938}.
  {label,1937}.
    {line,[{location,"bs_match_r25_SUITE.erl",261}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-otp_5269/1-inlined-0-'},1}.
  {label,1938}.
    {jump,{f,1937}}.


{function, '-otp_5269/1-inlined-1-', 1, 1940}.
  {label,1939}.
    {line,[{location,"bs_match_r25_SUITE.erl",267}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-otp_5269/1-inlined-1-'},1}.
  {label,1940}.
    {jump,{f,1939}}.


{function, '-otp_5269/1-inlined-6-', 1, 1942}.
  {label,1941}.
    {line,[{location,"bs_match_r25_SUITE.erl",287}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-otp_5269/1-inlined-6-'},1}.
  {label,1942}.
    {jump,{f,1941}}.


{function, '-size_shadow_1/0-inlined-1-', 1, 1944}.
  {label,1943}.
    {line,[{location,"bs_match_r25_SUITE.erl",161}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-size_shadow_1/0-inlined-1-'},
               1}.
  {label,1944}.
    {jump,{f,1943}}.


{function, '-size_shadow_1/0-inlined-2-', 1, 1946}.
  {label,1945}.
    {line,[{location,"bs_match_r25_SUITE.erl",164}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-size_shadow_1/0-inlined-2-'},
               1}.
  {label,1946}.
    {jump,{f,1945}}.


{function, '-size_shadow_2/1-inlined-0-', 1, 1948}.
  {label,1947}.
    {line,[{location,"bs_match_r25_SUITE.erl",175}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-size_shadow_2/1-inlined-0-'},
               1}.
  {label,1948}.
    {jump,{f,1947}}.


{function, '-size_shadow_2/1-inlined-1-', 1, 1950}.
  {label,1949}.
    {line,[{location,"bs_match_r25_SUITE.erl",177}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-size_shadow_2/1-inlined-1-'},
               1}.
  {label,1950}.
    {jump,{f,1949}}.


{function, '-size_shadow_2/1-inlined-2-', 1, 1952}.
  {label,1951}.
    {line,[{location,"bs_match_r25_SUITE.erl",180}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-size_shadow_2/1-inlined-2-'},
               1}.
  {label,1952}.
    {jump,{f,1951}}.


{function, '-size_shadow_3/0-inlined-1-', 1, 1954}.
  {label,1953}.
    {line,[{location,"bs_match_r25_SUITE.erl",188}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-size_shadow_3/0-inlined-1-'},
               1}.
  {label,1954}.
    {jump,{f,1953}}.


{function, '-size_shadow_3/0-inlined-2-', 1, 1956}.
  {label,1955}.
    {line,[{location,"bs_match_r25_SUITE.erl",191}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-size_shadow_3/0-inlined-2-'},
               1}.
  {label,1956}.
    {jump,{f,1955}}.


{function, '-size_shadow_5/2-inlined-0-', 3, 1958}.
  {label,1957}.
    {line,[{location,"bs_match_r25_SUITE.erl",214}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-size_shadow_5/2-inlined-0-'},
               3}.
  {label,1958}.
    {jump,{f,1957}}.


{function, '-size_shadow_6/2-inlined-0-', 3, 1960}.
  {label,1959}.
    {line,[{location,"bs_match_r25_SUITE.erl",217}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-size_shadow_6/2-inlined-0-'},
               3}.
  {label,1960}.
    {jump,{f,1959}}.
