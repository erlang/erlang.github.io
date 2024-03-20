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

{labels, 2069}.


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
                                 otp_19019]}]}}.
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
    {test,is_tagged_tuple,{f,22},[{x,0},2,{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",127}]}.
    {call_ext,1,{extfunc,test_lib,highest_opcode,1}}.
    {test,is_ge,{f,21},[{integer,180},{x,0}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,21}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,too_high_opcode_for_21},{x,0}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",131}]}.
    {call_ext_last,1,{extfunc,ct,fail,1},0}.
  {label,22}.
    {line,[{location,"bs_match_r25_SUITE.erl",126}]}.
    {badmatch,{x,0}}.


{function, size_shadow, 1, 24}.
  {label,23}.
    {line,[{location,"bs_match_r25_SUITE.erl",137}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,size_shadow},1}.
  {label,24}.
    {test,is_list,{f,23},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",139}]}.
    {call,0,{f,35}}. % size_shadow_1/0
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
    {move,{integer,8},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",140}]}.
    {call,1,{f,37}}. % size_shadow_2/1
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
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",141}]}.
    {call,0,{f,39}}. % size_shadow_3/0
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[no]},
                                   none,
                                   {t_integer,{0,'+inf'}},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,31},
          [{tr,{x,0},
               {t_union,{t_atom,[no]},none,{t_integer,{0,'+inf'}},none,none}},
           {integer,7}]}.
    {move,{integer,8},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",142}]}.
    {call,1,{f,41}}. % size_shadow_4/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[no]},
                                   none,
                                   {t_integer,{0,'+inf'}},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,30},
          [{tr,{x,0},
               {t_union,{t_atom,[no]},none,{t_integer,{0,'+inf'}},none,none}},
           {atom,no}]}.
    {move,{integer,12},{x,1}}.
    {move,{literal,{any,term,goes}},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",145}]}.
    {call,2,{f,43}}. % size_shadow_5/2
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
        {f,1995},
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
    {test,is_eq_exact,{f,29},[{tr,{x,1},{t_integer,{0,8191}}},{integer,2577}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,{f,29},[{x,1},{integer,-175}]}.
    {get_tuple_element,{x,0},3,{x,1}}.
    {test,is_eq_exact,{f,29},[{x,1},{atom,whatever}]}.
    {move,{integer,13},{x,1}}.
    {move,{literal,{any,term,goes}},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",147}]}.
    {call,2,{f,45}}. % size_shadow_6/2
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
        {f,1991},
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
    {test,is_eq_exact,{f,28},[{tr,{x,1},{t_integer,{0,8191}}},{integer,7777}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,{f,28},[{x,1},{integer,42}]}.
    {get_tuple_element,{x,0},3,{x,1}}.
    {test,is_eq_exact,{f,28},[{x,1},{atom,whatever}]}.
    {move,{literal,<<0,1,45>>},{x,1}}.
    {move,{literal,{int,1}},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",148}]}.
    {call,2,{f,49}}. % size_shadow_7/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_bitstring,8,false},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
          {f,27},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_bitstring,8,false},
                          2 => {t_bitstring,8,false}}}},
           {literal,{<<"-">>,<<>>}}]}.
    {'catch',{y,0},{f,25}}.
    {move,{literal,<<0,1,45>>},{x,1}}.
    {move,{literal,{int,42}},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",150}]}.
    {call,2,{f,49}}. % size_shadow_7/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_bitstring,8,false},
                                     2 => {t_bitstring,8,false}}}}]}}.
  {label,25}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,26},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,26},[{x,1},2,{atom,function_clause}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,26}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",149}]}.
    {badmatch,{x,0}}.
  {label,27}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",148}]}.
    {badmatch,{x,0}}.
  {label,28}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",146}]}.
    {badmatch,{x,0}}.
  {label,29}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",144}]}.
    {badmatch,{x,0}}.
  {label,30}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",142}]}.
    {badmatch,{x,0}}.
  {label,31}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",141}]}.
    {badmatch,{x,0}}.
  {label,32}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",140}]}.
    {badmatch,{x,0}}.
  {label,33}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",139}]}.
    {badmatch,{x,0}}.


{function, size_shadow_1, 0, 35}.
  {label,34}.
    {line,[{location,"bs_match_r25_SUITE.erl",153}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,size_shadow_1},0}.
  {label,35}.
    {test_heap,{alloc,[{words,8},{floats,0},{funs,4}]},0}.
    {make_fun3,{f,2039},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {make_fun3,{f,2036},0,0,{x,1},{list,[]}}.
    {'%',{var_info,{x,1},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {make_fun3,{f,2033},0,0,{x,2},{list,[]}}.
    {'%',{var_info,{x,2},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {make_fun3,{f,2027},0,0,{x,3},{list,[]}}.
    {'%',{var_info,{x,3},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {put_list,{x,3},nil,{x,3}}.
    {put_list,{x,2},{x,3},{x,2}}.
    {put_list,{x,1},{x,2},{x,1}}.
    {put_list,{x,0},{x,1},{x,0}}.
    {move,{literal,<<16,0,7>>},{x,1}}.
    {call_only,2,{f,52}}. % size_shadow_apply/2


{function, size_shadow_2, 1, 37}.
  {label,36}.
    {line,[{location,"bs_match_r25_SUITE.erl",170}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,size_shadow_2},1}.
  {label,37}.
    {'%',{var_info,{x,0},[{type,{t_integer,{8,8}}}]}}.
    {test_heap,{alloc,[{words,9},{floats,0},{funs,3}]},0}.
    {make_fun3,{f,2023},0,0,{x,0},{list,[{integer,8}]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {make_fun3,{f,2020},0,0,{x,1},{list,[{integer,8}]}}.
    {'%',{var_info,{x,1},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {make_fun3,{f,2017},0,0,{x,2},{list,[{integer,8}]}}.
    {'%',{var_info,{x,2},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {put_list,{x,2},nil,{x,2}}.
    {put_list,{x,1},{x,2},{x,1}}.
    {put_list,{x,0},{x,1},{x,0}}.
    {move,{literal,<<16,0,7>>},{x,1}}.
    {call_only,2,{f,52}}. % size_shadow_apply/2


{function, size_shadow_3, 0, 39}.
  {label,38}.
    {line,[{location,"bs_match_r25_SUITE.erl",180}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,size_shadow_3},0}.
  {label,39}.
    {test_heap,{alloc,[{words,6},{floats,0},{funs,3}]},0}.
    {make_fun3,{f,2014},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {make_fun3,{f,2011},0,0,{x,1},{list,[]}}.
    {'%',{var_info,{x,1},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {make_fun3,{f,2008},0,0,{x,2},{list,[]}}.
    {'%',{var_info,{x,2},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {put_list,{x,2},nil,{x,2}}.
    {put_list,{x,1},{x,2},{x,1}}.
    {put_list,{x,0},{x,1},{x,0}}.
    {move,{literal,<<16,0,7,0,16>>},{x,1}}.
    {call_only,2,{f,52}}. % size_shadow_apply/2


{function, size_shadow_4, 1, 41}.
  {label,40}.
    {line,[{location,"bs_match_r25_SUITE.erl",191}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,size_shadow_4},1}.
  {label,41}.
    {'%',{var_info,{x,0},[{type,{t_integer,{8,8}}}]}}.
    {test_heap,{alloc,[{words,9},{floats,0},{funs,3}]},0}.
    {make_fun3,{f,2005},0,0,{x,0},{list,[{integer,8}]}}.
    {'%',
        {var_info,
            {x,0},
            [{fun_type,
                 {t_union,
                     {t_atom,[no]},
                     none,
                     {t_integer,{0,'+inf'}},
                     none,none}}]}}.
    {make_fun3,{f,2002},0,0,{x,1},{list,[{integer,8}]}}.
    {'%',
        {var_info,
            {x,1},
            [{fun_type,
                 {t_union,
                     {t_atom,[no]},
                     none,
                     {t_integer,{0,'+inf'}},
                     none,none}}]}}.
    {make_fun3,{f,1999},0,0,{x,2},{list,[{integer,8}]}}.
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


{function, size_shadow_5, 2, 43}.
  {label,42}.
    {line,[{location,"bs_match_r25_SUITE.erl",209}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,size_shadow_5},2}.
  {label,43}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_atom,[any]},
                                     2 => {t_atom,[term]},
                                     3 => {t_atom,[goes]}}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{12,12}}}]}}.
    {test_heap,{alloc,[{words,2},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1995},
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


{function, size_shadow_6, 2, 45}.
  {label,44}.
    {line,[{location,"bs_match_r25_SUITE.erl",212}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,size_shadow_6},2}.
  {label,45}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_atom,[any]},
                                     2 => {t_atom,[term]},
                                     3 => {t_atom,[goes]}}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{13,13}}}]}}.
    {test_heap,{alloc,[{words,2},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1991},
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


{function, fum, 4, 47}.
  {label,46}.
    {line,[{location,"bs_match_r25_SUITE.erl",215}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,fum},4}.
  {label,47}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,8191}}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_atom,[any]},
                                     2 => {t_atom,[term]},
                                     3 => {t_atom,[goes]}}}}]}}.
    {test_heap,5,4}.
    {put_tuple2,{x,0},{list,[{x,0},{literal,{any,term,goes}},{x,2},{x,3}]}}.
    return.


{function, size_shadow_7, 2, 49}.
  {label,48}.
    {line,[{location,"bs_match_r25_SUITE.erl",218}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,size_shadow_7},2}.
  {label,49}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[int]},
                                     2 => {t_integer,{1,42}}}}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {test,bs_get_integer2,
          {f,50},
          3,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,16},
           1,
           {field_flags,[{anno,[218,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,50},
          4,
          [{tr,{x,1},{t_bs_context,8}},
           {tr,{x,3},{t_integer,{0,65535}}},
           8,
           {field_flags,[{anno,[218,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {bs_get_tail,{x,1},{x,5},5}.
    {get_tuple_element,{x,0},1,{x,6}}.
    {test,is_eq_exact,
          {f,50},
          [{tr,{x,3},{t_integer,{0,65535}}},{tr,{x,6},{t_integer,{1,42}}}]}.
    {test_heap,3,6}.
    {put_tuple2,{x,0},{list,[{x,4},{x,5}]}}.
    return.
  {label,50}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_get_tail,{x,1},{x,1},2}.
    {jump,{f,48}}.


{function, size_shadow_apply, 2, 52}.
  {label,51}.
    {line,[{location,"bs_match_r25_SUITE.erl",221}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",222}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",224}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",225}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",230}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,int_float},1}.
  {label,58}.
    {test,is_list,{f,57},[{x,0}]}.
    {move,{literal,<<64,249,45,208,0,0,0,0>>},{x,0}}.
    {bs_start_match4,{atom,no_fail},0,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {test,bs_get_float2,
          {f,65},
          2,
          [{tr,{x,0},{t_bs_context,64}},
           {integer,64},
           1,
           {field_flags,[{anno,[232,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,65},[{tr,{x,2},{t_float,any}},{float,103133.0}]}.
    {test,bs_test_tail2,{f,65},[{x,0},0]}.
    {bs_set_position,{x,0},{x,1}}.
    {test,bs_get_float2,
          {f,64},
          1,
          [{tr,{x,0},{t_bs_context,64}},
           {integer,64},
           1,
           {field_flags,[{anno,[233,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,is_eq_exact,{f,64},[{tr,{x,1},{t_float,any}},{float,103133.0}]}.
    {test,bs_test_tail2,{f,64},[{x,0},0]}.
    {line,[{location,"bs_match_r25_SUITE.erl",236}]}.
    {bs_create_bin,{f,0},
                   0,0,64,
                   {x,0},
                   {list,[{atom,float},
                          1,1,
                          {literal,[native]},
                          {integer,42},
                          {integer,64}]}}.
    {allocate,0,1}.
    {call,1,{f,1778}}. % id/1
    {test,bs_start_match3,{f,63},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {test,bs_get_float2,
          {f,63},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[237,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,native]}],
          {x,3}}.
    {test,is_eq_exact,{f,63},[{tr,{x,3},{t_float,any}},{float,42.0}]}.
    {test,bs_test_tail2,{f,63},[{x,1},0]}.
    {bs_set_position,{x,1},{x,2}}.
    {test,bs_get_float2,
          {f,62},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[238,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,native]}],
          {x,2}}.
    {test,is_eq_exact,{f,62},[{tr,{x,2},{t_float,any}},{float,42.0}]}.
    {test,bs_test_tail2,{f,62},[{x,1},0]}.
    {move,{literal,<<64,80,0,0,0,0,0,0>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",241}]}.
    {call,1,{f,1778}}. % id/1
    {test,bs_start_match3,{f,61},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {test,bs_get_float2,
          {f,61},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[242,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,61},[{tr,{x,3},{t_float,any}},{float,64.0}]}.
    {test,bs_test_tail2,{f,61},[{x,1},0]}.
    {bs_set_position,{x,1},{x,2}}.
    {test,bs_get_float2,
          {f,60},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[243,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,60},[{tr,{x,2},{t_float,any}},{float,64.0}]}.
    {test,bs_test_tail2,{f,60},[{x,1},0]}.
    {move,{atom,default},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",246}]}.
    {call,1,{f,1778}}. % id/1
    {test,is_eq_exact,{f,59},[{x,0},{atom,default}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,59}.
    {case_end,{x,0}}.
  {label,60}.
    {line,[{location,"bs_match_r25_SUITE.erl",243}]}.
    {badmatch,{x,0}}.
  {label,61}.
    {line,[{location,"bs_match_r25_SUITE.erl",242}]}.
    {badmatch,{x,0}}.
  {label,62}.
    {line,[{location,"bs_match_r25_SUITE.erl",238}]}.
    {badmatch,{x,0}}.
  {label,63}.
    {line,[{location,"bs_match_r25_SUITE.erl",237}]}.
    {badmatch,{x,0}}.
  {label,64}.
    {line,[{location,"bs_match_r25_SUITE.erl",233}]}.
    {badmatch,{literal,<<64,249,45,208,0,0,0,0>>}}.
  {label,65}.
    {line,[{location,"bs_match_r25_SUITE.erl",232}]}.
    {badmatch,{literal,<<64,249,45,208,0,0,0,0>>}}.


{function, otp_5269, 1, 67}.
  {label,66}.
    {line,[{location,"bs_match_r25_SUITE.erl",255}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,otp_5269},1}.
  {label,67}.
    {test,is_list,{f,66},[{x,0}]}.
    {allocate_heap,0,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1988},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {move,{integer,7},{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",256}]}.
    {call,2,{f,1328}}. % check/2
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
    {make_fun3,{f,1985},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {move,{integer,7},{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",261}]}.
    {call,2,{f,1328}}. % check/2
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
    {make_fun3,{f,1982},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_integer,{0,255}}}]}}.
    {move,{integer,32},{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",263}]}.
    {call,2,{f,1328}}. % check/2
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
    {make_fun3,{f,1976},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_list,{t_integer,{0,255}},nil}}]}}.
    {move,{literal," "},{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",265}]}.
    {call,2,{f,1328}}. % check/2
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
    {make_fun3,{f,1966},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_list,{t_integer,{0,255}},nil}}]}}.
    {move,{literal,[19]},{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",267}]}.
    {call,2,{f,1328}}. % check/2
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
    {make_fun3,{f,1964},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_integer,{28,28}}}]}}.
    {move,{integer,28},{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",271}]}.
    {call,2,{f,1328}}. % check/2
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
    {make_fun3,{f,1961},0,0,{x,0},{list,[]}}.
    {'%',
        {var_info,
            {x,0},
            [{fun_type,
                 {t_tuple,3,true,
                     #{1 => {t_integer,{0,255}},
                       2 => {t_bitstring,8,false},
                       3 => {t_bitstring,8,false}}}}]}}.
    {move,{literal,{2,<<"AB">>,<<"CD">>}},{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",273}]}.
    {call,2,{f,1328}}. % check/2
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
    {make_fun3,{f,1955},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},
                   [{fun_type,{t_list,{t_integer,{0,4294967295}},nil}}]}}.
    {move,{literal,[1,2]},{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",278}]}.
    {call,2,{f,1328}}. % check/2
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
    {make_fun3,{f,1952},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[ok]}}]}}.
    {move,{atom,ok},{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",282}]}.
    {call,2,{f,1328}}. % check/2
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
    {line,[{location,"bs_match_r25_SUITE.erl",292}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,null_fields},1}.
  {label,69}.
    {test,is_list,{f,68},[{x,0}]}.
    {allocate_heap,0,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1948},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[empty,tail]}}]}}.
    {move,{atom,tail},{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",293}]}.
    {call,2,{f,1328}}. % check/2
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
    {make_fun3,{f,1946},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[tail]}}]}}.
    {move,{atom,tail},{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",300}]}.
    {call,2,{f,1328}}. % check/2
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
    {line,[{location,"bs_match_r25_SUITE.erl",308}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,wiger},1}.
  {label,71}.
    {test,is_list,{f,70},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<3>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",309}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",310}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",312}]}.
    {badmatch,{x,0}}.
  {label,74}.
    {line,[{location,"bs_match_r25_SUITE.erl",311}]}.
    {badmatch,{x,0}}.
  {label,75}.
    {line,[{location,"bs_match_r25_SUITE.erl",310}]}.
    {badmatch,{x,0}}.
  {label,76}.
    {line,[{location,"bs_match_r25_SUITE.erl",309}]}.
    {badmatch,{x,0}}.


{function, wcheck, 1, 78}.
  {label,77}.
    {line,[{location,"bs_match_r25_SUITE.erl",316}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,wcheck},1}.
  {label,78}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {test,bs_get_integer2,
          {f,81},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[316,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,79},[{x,0},0]}.
    {test,is_eq_exact,{f,79},[{tr,{x,2},{t_integer,{0,255}}},{integer,3}]}.
    {move,{atom,ok1},{x,0}}.
    return.
  {label,79}.
    {test,bs_test_tail2,{f,80},[{x,0},16]}.
    {move,{atom,ok2},{x,0}}.
    return.
  {label,80}.
    {test,bs_test_tail2,{f,81},[{x,0},0]}.
    {move,{atom,ok3},{x,0}}.
    return.
  {label,81}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,error},{x,0}]}}.
    return.


{function, bin_tail, 1, 83}.
  {label,82}.
    {line,[{location,"bs_match_r25_SUITE.erl",325}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bin_tail},1}.
  {label,83}.
    {test,is_list,{f,82},[{x,0}]}.
    {allocate,7,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3},{y,4},{y,5},{y,6}]}}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",327}]}.
    {call,2,{f,111}}. % bin_tail_c/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,109},[{tr,{x,0},{t_integer,{0,255}}},{integer,97}]}.
    {move,{integer,2},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_r25_SUITE.erl",328}]}.
    {call,2,{f,111}}. % bin_tail_c/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,108},[{tr,{x,0},{t_integer,{0,255}}},{integer,99}]}.
    {move,{integer,4},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_r25_SUITE.erl",329}]}.
    {call,2,{f,111}}. % bin_tail_c/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,107},[{tr,{x,0},{t_integer,{0,255}}},{integer,101}]}.
    {'catch',{y,6},{f,84}}.
    {move,{integer,5},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_r25_SUITE.erl",330}]}.
    {call,2,{f,111}}. % bin_tail_c/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
  {label,84}.
    {catch_end,{y,6}}.
    {test,is_tagged_tuple,{f,106},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,5},{f,85}}.
    {move,{integer,5},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,[13,14]},{location,"bs_match_r25_SUITE.erl",331}]}.
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
    {line,[{scope,"\v\f"},{location,"bs_match_r25_SUITE.erl",333}]}.
    {call,2,{f,121}}. % bin_tail_d/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,104},[{tr,{x,0},{t_integer,{0,255}}},{integer,97}]}.
    {move,{integer,8},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,"\n"},{location,"bs_match_r25_SUITE.erl",334}]}.
    {call,2,{f,121}}. % bin_tail_d/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,103},[{tr,{x,0},{t_integer,{0,255}}},{integer,98}]}.
    {move,{integer,24},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,"\n"},{location,"bs_match_r25_SUITE.erl",335}]}.
    {call,2,{f,121}}. % bin_tail_d/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,102},[{tr,{x,0},{t_integer,{0,255}}},{integer,100}]}.
    {'catch',{y,4},{f,86}}.
    {move,{integer,1},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,"\n"},{location,"bs_match_r25_SUITE.erl",336}]}.
    {call,2,{f,125}}. % bin_tail_d_dead/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
  {label,86}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,101},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,3},{f,87}}.
    {move,{integer,9},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,"\t\n"},{location,"bs_match_r25_SUITE.erl",337}]}.
    {call,2,{f,125}}. % bin_tail_d_dead/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
  {label,87}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,100},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,2},{f,88}}.
    {move,{integer,40},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_r25_SUITE.erl",338}]}.
    {call,2,{f,125}}. % bin_tail_d_dead/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
  {label,88}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,99},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,1},{f,89}}.
    {move,{integer,1},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r25_SUITE.erl",339}]}.
    {call,2,{f,128}}. % bin_tail_d_var/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_bitstring,8,false}}}}]}}.
  {label,89}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,98},[{x,0},2,{atom,'EXIT'}]}.
    {move,{literal,<<129>>},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r25_SUITE.erl",341}]}.
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
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",342}]}.
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
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",343}]}.
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
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",344}]}.
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
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",346}]}.
    {call_ext,1,{extfunc,erlang,md5,1}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",347}]}.
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
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",348}]}.
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
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",349}]}.
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
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",349}]}.
    {badmatch,{x,0}}.
  {label,92}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",348}]}.
    {badmatch,{x,0}}.
  {label,93}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",347}]}.
    {badmatch,{x,0}}.
  {label,94}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",344}]}.
    {badmatch,{x,0}}.
  {label,95}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",343}]}.
    {badmatch,{x,0}}.
  {label,96}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",342}]}.
    {badmatch,{x,0}}.
  {label,97}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",341}]}.
    {badmatch,{x,0}}.
  {label,98}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",339}]}.
    {badmatch,{x,0}}.
  {label,99}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",338}]}.
    {badmatch,{x,0}}.
  {label,100}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",337}]}.
    {badmatch,{x,0}}.
  {label,101}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",336}]}.
    {badmatch,{x,0}}.
  {label,102}.
    {line,[{scope,"\n"},{location,"bs_match_r25_SUITE.erl",335}]}.
    {badmatch,{x,0}}.
  {label,103}.
    {line,[{scope,"\n"},{location,"bs_match_r25_SUITE.erl",334}]}.
    {badmatch,{x,0}}.
  {label,104}.
    {line,[{scope,"\n"},{location,"bs_match_r25_SUITE.erl",333}]}.
    {badmatch,{x,0}}.
  {label,105}.
    {line,[{scope,"\n"},{location,"bs_match_r25_SUITE.erl",331}]}.
    {badmatch,{x,0}}.
  {label,106}.
    {line,[{scope,"\f"},{location,"bs_match_r25_SUITE.erl",330}]}.
    {badmatch,{x,0}}.
  {label,107}.
    {line,[{scope,[14]},{location,"bs_match_r25_SUITE.erl",329}]}.
    {badmatch,{x,0}}.
  {label,108}.
    {line,[{scope,[14]},{location,"bs_match_r25_SUITE.erl",328}]}.
    {badmatch,{x,0}}.
  {label,109}.
    {line,[{scope,[14]},{location,"bs_match_r25_SUITE.erl",327}]}.
    {badmatch,{x,0}}.


{function, bin_tail_c, 2, 111}.
  {label,110}.
    {line,[{location,"bs_match_r25_SUITE.erl",353}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bin_tail_c},2}.
  {label,111}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,5}}}]}}.
    {allocate,4,2}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{x,1},{y,2}}.
    {move,{x,0},{y,3}}.
    {line,[{location,"bs_match_r25_SUITE.erl",354}]}.
    {call,2,{f,115}}. % bin_tail_c_dead/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {bs_start_match4,{atom,no_fail},1,{y,3},{x,1}}.
    {move,{x,0},{y,1}}.
    {test,bs_skip_bits2,
          {f,113},
          [{x,1},
           {y,2},
           8,
           {field_flags,[{anno,[355,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_skip_bits2,
          {f,113},
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[355,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_get_tail,{x,1},{y,0},2}.
    {move,{y,2},{x,1}}.
    {move,{y,3},{x,0}}.
    {move,{y,0},{y,3}}.
    {move,{y,1},{y,2}}.
    {trim,2,2}.
    {line,[{location,"bs_match_r25_SUITE.erl",356}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",355}]}.
    {badmatch,{y,3}}.


{function, bin_tail_c_dead, 2, 115}.
  {label,114}.
    {line,[{location,"bs_match_r25_SUITE.erl",359}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bin_tail_c_dead},2}.
  {label,115}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,5}}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {test,bs_skip_bits2,
          {f,116},
          [{x,0},
           {x,1},
           8,
           {field_flags,[{anno,[360,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_integer2,
          {f,116},
          3,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[360,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {move,{x,1},{x,0}}.
    return.
  {label,116}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {line,[{location,"bs_match_r25_SUITE.erl",360}]}.
    {badmatch,{x,0}}.


{function, bin_tail_c_var, 2, 118}.
  {label,117}.
    {line,[{location,"bs_match_r25_SUITE.erl",363}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bin_tail_c_var},2}.
  {label,118}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,5}}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {test,bs_skip_bits2,
          {f,119},
          [{x,0},
           {x,1},
           8,
           {field_flags,[{anno,[364,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_integer2,
          {f,119},
          3,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[364,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,1},{x,0}]}}.
    return.
  {label,119}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {line,[{location,"bs_match_r25_SUITE.erl",364}]}.
    {badmatch,{x,0}}.


{function, bin_tail_d, 2, 121}.
  {label,120}.
    {line,[{location,"bs_match_r25_SUITE.erl",368}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bin_tail_d},2}.
  {label,121}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,24}}}]}}.
    {allocate,4,2}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{x,1},{y,2}}.
    {move,{x,0},{y,3}}.
    {line,[{location,"bs_match_r25_SUITE.erl",369}]}.
    {call,2,{f,125}}. % bin_tail_d_dead/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {bs_start_match4,{atom,no_fail},1,{y,3},{x,1}}.
    {move,{x,0},{y,1}}.
    {test,bs_skip_bits2,
          {f,123},
          [{x,1},
           {y,2},
           1,
           {field_flags,[{anno,[370,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_skip_bits2,
          {f,123},
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[370,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,123},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {atom,all},
           8,
           {field_flags,[{anno,[370,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {y,0}}.
    {move,{y,2},{x,1}}.
    {move,{y,3},{x,0}}.
    {move,{y,0},{y,3}}.
    {move,{y,1},{y,2}}.
    {trim,2,2}.
    {line,[{location,"bs_match_r25_SUITE.erl",371}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",370}]}.
    {badmatch,{y,3}}.


{function, bin_tail_d_dead, 2, 125}.
  {label,124}.
    {line,[{location,"bs_match_r25_SUITE.erl",374}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bin_tail_d_dead},2}.
  {label,125}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,40}}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {test,bs_skip_bits2,
          {f,126},
          [{x,0},
           {x,1},
           1,
           {field_flags,[{anno,[375,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_integer2,
          {f,126},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[375,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_test_unit,{f,126},[{x,0},8]}.
    {move,{x,1},{x,0}}.
    return.
  {label,126}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {line,[{location,"bs_match_r25_SUITE.erl",375}]}.
    {badmatch,{x,0}}.


{function, bin_tail_d_var, 2, 128}.
  {label,127}.
    {line,[{location,"bs_match_r25_SUITE.erl",378}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bin_tail_d_var},2}.
  {label,128}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,24}}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {test,bs_skip_bits2,
          {f,129},
          [{x,0},
           {x,1},
           1,
           {field_flags,[{anno,[379,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_integer2,
          {f,129},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[379,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_get_binary2,
          {f,129},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {atom,all},
           8,
           {field_flags,[{anno,[379,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,1},{x,3}]}}.
    return.
  {label,129}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {line,[{location,"bs_match_r25_SUITE.erl",379}]}.
    {badmatch,{x,0}}.


{function, bin_tail_e, 1, 131}.
  {label,130}.
    {line,[{location,"bs_match_r25_SUITE.erl",382}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bin_tail_e},1}.
  {label,131}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",383}]}.
    {call,1,{f,136}}. % bin_tail_e_dead/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,132},[{x,0},{atom,ok}]}.
    {bs_start_match4,{atom,no_fail},0,{y,1},{x,0}}.
    {test,bs_skip_bits2,
          {f,134},
          [{x,0},
           {integer,8},
           1,
           {field_flags,[{anno,[385,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_get_tail,{x,0},{y,0},1}.
    {move,{y,1},{x,0}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {line,[{location,"bs_match_r25_SUITE.erl",386}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",385}]}.
    {badmatch,{y,1}}.


{function, bin_tail_e_dead, 1, 136}.
  {label,135}.
    {line,[{location,"bs_match_r25_SUITE.erl",392}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bin_tail_e_dead},1}.
  {label,136}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_match_string,{f,137},[{x,0},2,{string,<<128>>}]}.
    {test,bs_skip_bits2,
          {f,137},
          [{x,0},
           {integer,1},
           1,
           {field_flags,[{anno,[396,{file,"bs_match_r25_SUITE.erl"}]},
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
    {line,[{location,"bs_match_r25_SUITE.erl",400}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bin_tail_e_var},1}.
  {label,139}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_match_string,{f,140},[{x,0},2,{string,<<128>>}]}.
    {test,bs_skip_bits2,
          {f,140},
          [{x,0},
           {integer,1},
           1,
           {field_flags,[{anno,[404,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_match_string,{f,140},[{x,0},5,{string,<<"\b">>}]}.
    {test,bs_get_binary2,
          {f,140},
          1,
          [{tr,{x,0},{t_bs_context,1}},
           {atom,all},
           8,
           {field_flags,[{anno,[404,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,0}}.
    return.
  {label,140}.
    {move,{atom,error},{x,0}}.
    return.


{function, bin_tail_f, 3, 142}.
  {label,141}.
    {line,[{location,"bs_match_r25_SUITE.erl",408}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bin_tail_f},3}.
  {label,142}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{0,999}}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,3},3}.
    {test,bs_get_binary2,
          {f,144},
          4,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,16},
           8,
           {field_flags,[{anno,[410,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_binary2,
          {f,143},
          5,
          [{tr,{x,0},{t_bs_context,8}},
           {tr,{x,2},{t_integer,{0,999}}},
           8,
           {field_flags,[{anno,[410,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,143},[{x,0},0]}.
    {test,is_eq_exact,{f,144},[{tr,{x,4},{t_bitstring,8,false}},{x,1}]}.
    {move,{x,2},{x,0}}.
    return.
  {label,143}.
    {test,is_eq_exact,{f,144},[{tr,{x,4},{t_bitstring,8,false}},{x,1}]}.
    {move,{atom,error},{x,0}}.
    return.
  {label,144}.
    {bs_set_position,{x,0},{x,3}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {line,[{location,"bs_match_r25_SUITE.erl",409}]}.
    {case_end,{x,0}}.


{function, save_restore, 1, 146}.
  {label,145}.
    {line,[{location,"bs_match_r25_SUITE.erl",416}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,save_restore},1}.
  {label,146}.
    {test,is_list,{f,145},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",417}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",418}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",426}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",427}]}.
    {call,1,{f,179}}. % mmm/1
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
    {line,[{location,"bs_match_r25_SUITE.erl",428}]}.
    {call,1,{f,185}}. % nnn/1
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
    {line,[{location,"bs_match_r25_SUITE.erl",429}]}.
    {call,1,{f,191}}. % ooo/1
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
    {line,[{location,"bs_match_r25_SUITE.erl",431}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",432}]}.
    {call,1,{f,179}}. % mmm/1
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
    {line,[{location,"bs_match_r25_SUITE.erl",433}]}.
    {call,1,{f,185}}. % nnn/1
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
    {line,[{location,"bs_match_r25_SUITE.erl",434}]}.
    {call,1,{f,191}}. % ooo/1
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
    {line,[{location,"bs_match_r25_SUITE.erl",436}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",437}]}.
    {call,1,{f,179}}. % mmm/1
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
    {line,[{location,"bs_match_r25_SUITE.erl",438}]}.
    {call,1,{f,185}}. % nnn/1
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
    {line,[{location,"bs_match_r25_SUITE.erl",439}]}.
    {call,1,{f,191}}. % ooo/1
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
    {line,[{location,"bs_match_r25_SUITE.erl",441}]}.
    {call,2,{f,195}}. % multiple_matches/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b,c,d]}}]}}.
    {test,is_eq_exact,{f,151},[{tr,{x,0},{t_atom,[a,b,c,d]}},{atom,a}]}.
    {move,{literal,<<3,231>>},{x,1}}.
    {move,{literal,<<3,9>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",442}]}.
    {call,2,{f,195}}. % multiple_matches/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b,c,d]}}]}}.
    {test,is_eq_exact,{f,150},[{tr,{x,0},{t_atom,[a,b,c,d]}},{atom,b}]}.
    {move,{literal,<<"9">>},{x,1}}.
    {move,{literal,<<3,9>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",443}]}.
    {call,2,{f,195}}. % multiple_matches/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b,c,d]}}]}}.
    {test,is_eq_exact,{f,149},[{tr,{x,0},{t_atom,[a,b,c,d]}},{atom,c}]}.
    {move,{literal,<<4,87>>},{x,1}}.
    {move,{literal,<<17>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",444}]}.
    {call,2,{f,195}}. % multiple_matches/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b,c,d]}}]}}.
    {test,is_eq_exact,{f,148},[{tr,{x,0},{t_atom,[a,b,c,d]}},{atom,d}]}.
    {move,{literal,<<"ÿÿÿÿÿÿÿÿ">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",447}]}.
    {call,1,{f,201}}. % bad_float_unpack_match/1
    {'%',{var_info,{x,0},[{type,{t_number,any}}]}}.
    {test,is_eq_exact,{f,147},[{tr,{x,0},{t_number,any}},{integer,-1}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,147}.
    {move,{atom,bad_return_value_probably_NaN},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",449}]}.
    {call_ext_last,1,{extfunc,ct,fail,1},0}.
  {label,148}.
    {line,[{location,"bs_match_r25_SUITE.erl",444}]}.
    {badmatch,{x,0}}.
  {label,149}.
    {line,[{location,"bs_match_r25_SUITE.erl",443}]}.
    {badmatch,{x,0}}.
  {label,150}.
    {line,[{location,"bs_match_r25_SUITE.erl",442}]}.
    {badmatch,{x,0}}.
  {label,151}.
    {line,[{location,"bs_match_r25_SUITE.erl",441}]}.
    {badmatch,{x,0}}.
  {label,152}.
    {line,[{location,"bs_match_r25_SUITE.erl",439}]}.
    {badmatch,{x,0}}.
  {label,153}.
    {line,[{location,"bs_match_r25_SUITE.erl",438}]}.
    {badmatch,{x,0}}.
  {label,154}.
    {line,[{location,"bs_match_r25_SUITE.erl",437}]}.
    {badmatch,{x,0}}.
  {label,155}.
    {line,[{location,"bs_match_r25_SUITE.erl",436}]}.
    {badmatch,{x,0}}.
  {label,156}.
    {line,[{location,"bs_match_r25_SUITE.erl",434}]}.
    {badmatch,{x,0}}.
  {label,157}.
    {line,[{location,"bs_match_r25_SUITE.erl",433}]}.
    {badmatch,{x,0}}.
  {label,158}.
    {line,[{location,"bs_match_r25_SUITE.erl",432}]}.
    {badmatch,{x,0}}.
  {label,159}.
    {line,[{location,"bs_match_r25_SUITE.erl",431}]}.
    {badmatch,{x,0}}.
  {label,160}.
    {line,[{location,"bs_match_r25_SUITE.erl",429}]}.
    {badmatch,{x,0}}.
  {label,161}.
    {line,[{location,"bs_match_r25_SUITE.erl",428}]}.
    {badmatch,{x,0}}.
  {label,162}.
    {line,[{location,"bs_match_r25_SUITE.erl",427}]}.
    {badmatch,{x,0}}.
  {label,163}.
    {line,[{location,"bs_match_r25_SUITE.erl",426}]}.
    {badmatch,{x,0}}.
  {label,164}.
    {line,[{location,"bs_match_r25_SUITE.erl",420}]}.
    {badmatch,{x,0}}.
  {label,165}.
    {line,[{location,"bs_match_r25_SUITE.erl",419}]}.
    {badmatch,{x,0}}.
  {label,166}.
    {line,[{location,"bs_match_r25_SUITE.erl",418}]}.
    {badmatch,{x,0}}.
  {label,167}.
    {line,[{location,"bs_match_r25_SUITE.erl",417}]}.
    {badmatch,{x,0}}.


{function, save_restore_1, 1, 169}.
  {label,168}.
    {line,[{location,"bs_match_r25_SUITE.erl",452}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,save_restore_1},1}.
  {label,169}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {test,bs_get_integer2,
          {f,173},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,2},
           1,
           {field_flags,[{anno,[454,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {select_val,{tr,{x,2},{t_integer,{0,3}}},
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
          2,
          [{tr,{x,0},{t_bs_context,2}},
           {integer,30},
           1,
           {field_flags,[{anno,[456,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,173},[{x,0},0]}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{integer,2},{x,2}]}}.
    return.
  {label,171}.
    {test,bs_get_integer2,
          {f,173},
          2,
          [{tr,{x,0},{t_bs_context,2}},
           {integer,14},
           1,
           {field_flags,[{anno,[455,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,173},[{x,0},0]}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{integer,1},{x,2}]}}.
    return.
  {label,172}.
    {test,bs_test_tail2,{f,173},[{x,0},6]}.
    {move,{integer,0},{x,0}}.
    return.
  {label,173}.
    {bs_set_position,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,174},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,64},
           1,
           {field_flags,[{anno,[457,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,174},[{x,0},0]}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{integer,3},{x,2}]}}.
    return.
  {label,174}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {line,[{location,"bs_match_r25_SUITE.erl",453}]}.
    {case_end,{x,0}}.


{function, lll, 1, 176}.
  {label,175}.
    {line,[{location,"bs_match_r25_SUITE.erl",460}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,lll},1}.
  {label,176}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,16,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,177},
          1,
          [{tr,{x,0},{t_bs_context,16}},
           {integer,8},
           1,
           {field_flags,[{anno,[460,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {test_heap,5,2}.
    {put_list,{x,1},nil,{x,1}}.
    {put_tuple2,{x,0},{list,[{x,1},{x,0}]}}.
    return.
  {label,177}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,175}}.


{function, mmm, 1, 179}.
  {label,178}.
    {line,[{location,"bs_match_r25_SUITE.erl",462}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,mmm},1}.
  {label,179}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,16,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,183},
          1,
          [{tr,{x,0},{t_bs_context,16}},
           {integer,8},
           1,
           {field_flags,[{anno,[462,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {select_val,{tr,{x,1},{t_integer,{0,255}}},
                {f,182},
                {list,[{integer,32},{f,181},{integer,46},{f,180}]}}.
  {label,180}.
    {test,bs_match_string,{f,182},[{x,0},16,{string,<<"..">>}]}.
    {bs_get_tail,{x,0},{x,0},1}.
    return.
  {label,181}.
    {test,bs_match_string,{f,182},[{x,0},16,{string,<<"- ">>}]}.
    {bs_get_tail,{x,0},{x,0},1}.
    return.
  {label,182}.
    {bs_get_tail,{x,0},{x,0},2}.
    {test_heap,5,2}.
    {put_list,{x,1},nil,{x,1}}.
    {put_tuple2,{x,0},{list,[{x,1},{x,0}]}}.
    return.
  {label,183}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,178}}.


{function, nnn, 1, 185}.
  {label,184}.
    {line,[{location,"bs_match_r25_SUITE.erl",466}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,nnn},1}.
  {label,185}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,16,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,189},
          1,
          [{tr,{x,0},{t_bs_context,16}},
           {integer,8},
           1,
           {field_flags,[{anno,[466,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {select_val,{tr,{x,1},{t_integer,{0,255}}},
                {f,188},
                {list,[{integer,32},{f,187},{integer,46},{f,186}]}}.
  {label,186}.
    {test,bs_match_string,{f,188},[{x,0},16,{string,<<"..">>}]}.
    {bs_get_tail,{x,0},{x,0},1}.
    return.
  {label,187}.
    {test,bs_match_string,{f,188},[{x,0},16,{string,<<"- ">>}]}.
    {bs_get_tail,{x,0},{x,0},1}.
    return.
  {label,188}.
    {bs_get_tail,{x,0},{x,0},2}.
    {test_heap,5,2}.
    {put_list,{x,1},nil,{x,1}}.
    {put_tuple2,{x,0},{list,[{x,1},{x,0}]}}.
    return.
  {label,189}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,184}}.


{function, ooo, 1, 191}.
  {label,190}.
    {line,[{location,"bs_match_r25_SUITE.erl",470}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,ooo},1}.
  {label,191}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,16,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,193},
          1,
          [{tr,{x,0},{t_bs_context,16}},
           {integer,8},
           1,
           {field_flags,[{anno,[470,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,is_eq_exact,{f,192},[{tr,{x,1},{t_integer,{0,255}}},{integer,32}]}.
    {test,bs_match_string,{f,192},[{x,0},16,{string,<<"- ">>}]}.
    {bs_get_tail,{x,0},{x,0},1}.
    return.
  {label,192}.
    {bs_get_tail,{x,0},{x,0},2}.
    {test_heap,5,2}.
    {put_list,{x,1},nil,{x,1}}.
    {put_tuple2,{x,0},{list,[{x,1},{x,0}]}}.
    return.
  {label,193}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,190}}.


{function, multiple_matches, 2, 195}.
  {label,194}.
    {line,[{location,"bs_match_r25_SUITE.erl",473}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,multiple_matches},2}.
  {label,195}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {test,bs_get_integer2,
          {f,198},
          3,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,16},
           1,
           {field_flags,[{anno,[473,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,198},[{x,0},0]}.
    {bs_start_match4,{atom,no_fail},4,{x,1},{x,4}}.
    {bs_get_position,{x,4},{x,5},5}.
    {test,bs_get_integer2,
          {f,197},
          6,
          [{tr,{x,4},{t_bs_context,8}},
           {integer,16},
           1,
           {field_flags,[{anno,[473,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,bs_test_tail2,{f,197},[{x,4},0]}.
    {test,is_eq_exact,
          {f,196},
          [{tr,{x,6},{t_integer,{0,65535}}},{tr,{x,3},{t_integer,{0,65535}}}]}.
    {move,{atom,a},{x,0}}.
    return.
  {label,196}.
    {move,{atom,b},{x,0}}.
    return.
  {label,197}.
    {bs_set_position,{x,4},{x,5}}.
    {test,bs_test_tail2,{f,198},[{x,4},8]}.
    {move,{atom,c},{x,0}}.
    return.
  {label,198}.
    {bs_set_position,{x,0},{x,2}}.
    {test,bs_test_tail2,{f,199},[{x,0},8]}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,2}}.
    {test,bs_test_tail2,{f,199},[{x,2},16]}.
    {move,{atom,d},{x,0}}.
    return.
  {label,199}.
    {bs_get_tail,{x,0},{x,0},2}.
    {jump,{f,194}}.


{function, bad_float_unpack_match, 1, 201}.
  {label,200}.
    {line,[{location,"bs_match_r25_SUITE.erl",478}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bad_float_unpack_match},1}.
  {label,201}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,64,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {test,bs_get_float2,
          {f,202},
          2,
          [{tr,{x,0},{t_bs_context,64}},
           {integer,64},
           1,
           {field_flags,[{anno,[478,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,202},[{x,0},0]}.
    {move,{x,2},{x,0}}.
    return.
  {label,202}.
    {bs_set_position,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,203},
          2,
          [{tr,{x,0},{t_bs_context,64}},
           {integer,64},
           1,
           {field_flags,[{anno,[479,{file,"bs_match_r25_SUITE.erl"}]},
                         signed,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,203},[{x,0},0]}.
    {move,{x,2},{x,0}}.
    return.
  {label,203}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,200}}.


{function, partitioned_bs_match, 1, 205}.
  {label,204}.
    {line,[{location,"bs_match_r25_SUITE.erl",482}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,partitioned_bs_match},1}.
  {label,205}.
    {test,is_list,{f,204},[{x,0}]}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{literal,<<42,1,2,3>>},{x,1}}.
    {move,{atom,blurf},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",483}]}.
    {call,2,{f,216}}. % partitioned_bs_match/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[error]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,214},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,none,none,
                        {t_bitstring,8,false}}},
           {literal,<<1,2,3>>}]}.
    {move,{literal,<<7,8,15,13>>},{x,1}}.
    {move,{integer,10},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",484}]}.
    {call,2,{f,216}}. % partitioned_bs_match/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[error]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,213},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,none,none,
                        {t_bitstring,8,false}}},
           {atom,error}]}.
    {move,{literal,{a,tuple,is,'not',a,binary}},{x,1}}.
    {move,{integer,100},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",485}]}.
    {call,2,{f,216}}. % partitioned_bs_match/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,<<>>},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",486}]}.
    {call,2,{f,216}}. % partitioned_bs_match/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[error,ok]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,212},
          [{tr,{x,0},
               {t_union,{t_atom,[error,ok]},
                        none,none,none,
                        {t_bitstring,8,false}}},
           {atom,ok}]}.
    {'catch',{y,2},{f,206}}.
    {move,{atom,blurf},{x,1}}.
    {move,{integer,-1},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",488}]}.
    {call,2,{f,216}}. % partitioned_bs_match/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,206}.
    {catch_end,{y,2}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[-1,blurf]},{x,1}}.
    {move,{atom,partitioned_bs_match},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r25_SUITE.erl",487}]}.
    {call,3,{f,891}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,1},{f,207}}.
    {move,{literal,<<1,2,3>>},{x,1}}.
    {move,{integer,-1},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r25_SUITE.erl",490}]}.
    {call,2,{f,216}}. % partitioned_bs_match/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[ok]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
  {label,207}.
    {catch_end,{y,1}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[-1,<<1,2,3>>]},{x,1}}.
    {move,{atom,partitioned_bs_match},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r25_SUITE.erl",489}]}.
    {call,3,{f,891}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<17,1,2,3>>},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r25_SUITE.erl",491}]}.
    {call,2,{f,221}}. % partitioned_bs_match_2/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
          {f,211},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,255}},
                          2 => {t_bitstring,8,false}}}},
           {literal,{17,<<1,2,3>>}}]}.
    {move,{literal,<<17,1,2,3>>},{x,1}}.
    {move,{integer,7},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",492}]}.
    {call,2,{f,221}}. % partitioned_bs_match_2/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{2,7}},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
          {f,210},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{2,7}},2 => {t_bitstring,8,false}}}},
           {literal,{7,<<1,2,3>>}}]}.
    {'catch',{y,0},{f,208}}.
    {move,{literal,<<0,0,0:1>>},{x,1}}.
    {move,{integer,4},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",495}]}.
    {call,2,{f,221}}. % partitioned_bs_match_2/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{2,7}},
                                     2 => {t_bitstring,8,false}}}}]}}.
  {label,208}.
    {catch_end,{y,0}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[4,<<0,0,0:1>>]},{x,1}}.
    {move,{atom,partitioned_bs_match_2},{x,0}}.
    {line,[{scope,[1,2]},{location,"bs_match_r25_SUITE.erl",494}]}.
    {call,3,{f,891}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<"*">>},{x,1}}.
    {move,{atom,anything},{x,0}}.
    {line,[{scope,[1,2]},{location,"bs_match_r25_SUITE.erl",497}]}.
    {call,2,{f,225}}. % partitioned_bs_match_3/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[anything]},
                                   none,
                                   {t_integer,{1,1}},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,209},
          [{tr,{x,0},
               {t_union,{t_atom,[anything]},none,{t_integer,{1,1}},none,none}},
           {atom,anything}]}.
    {move,{integer,2},{x,1}}.
    {move,{integer,1},{x,0}}.
    {call_last,2,{f,225},3}. % partitioned_bs_match_3/2
  {label,209}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",497}]}.
    {badmatch,{integer,1}}.
  {label,210}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",492}]}.
    {badmatch,{x,0}}.
  {label,211}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",491}]}.
    {badmatch,{x,0}}.
  {label,212}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",486}]}.
    {badmatch,{x,0}}.
  {label,213}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",484}]}.
    {badmatch,{x,0}}.
  {label,214}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",483}]}.
    {badmatch,{x,0}}.


{function, partitioned_bs_match, 2, 216}.
  {label,215}.
    {line,[{location,"bs_match_r25_SUITE.erl",502}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,partitioned_bs_match},2}.
  {label,216}.
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
                     {t_bitstring,8,false}}},
             accepts_match_context]}}.
    {test,bs_start_match3,{f,218},2,[{x,1}],{x,2}}.
    {test,bs_match_string,{f,217},[{x,2},8,{string,<<"*">>}]}.
    {bs_get_tail,{x,2},{x,0},3}.
    return.
  {label,217}.
    {test,is_ge,
          {f,219},
          [{integer,0},
           {tr,{x,0},
               {t_union,{t_atom,[blurf]},
                        none,
                        {t_integer,{-1,100}},
                        none,none}}]}.
    {bs_get_tail,{x,2},{x,1},3}.
    {test,is_eq_exact,
          {f,215},
          [{tr,{x,1},{t_bitstring,8,false}},{literal,<<>>}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,218}.
    {test,is_lt,
          {f,215},
          [{integer,0},
           {tr,{x,0},
               {t_union,{t_atom,[blurf]},
                        none,
                        {t_integer,{-1,100}},
                        none,none}}]}.
  {label,219}.
    {move,{atom,error},{x,0}}.
    return.


{function, partitioned_bs_match_2, 2, 221}.
  {label,220}.
    {line,[{location,"bs_match_r25_SUITE.erl",509}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,partitioned_bs_match_2},2}.
  {label,221}.
    {'%',{var_info,{x,0},[{type,{t_integer,{1,7}}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_bitstring,1,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {test,bs_get_integer2,
          {f,223},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[509,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,223},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {atom,all},
           8,
           {field_flags,[{anno,[509,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,is_eq_exact,{f,222},[{tr,{x,0},{t_integer,{1,7}}},{integer,1}]}.
    {test_heap,3,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4}]}}.
    return.
  {label,222}.
    {test_heap,3,5}.
    {put_tuple2,{x,0},{list,[{x,0},{x,4}]}}.
    return.
  {label,223}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_get_tail,{x,1},{x,1},2}.
    {jump,{f,220}}.


{function, partitioned_bs_match_3, 2, 225}.
  {label,224}.
    {line,[{location,"bs_match_r25_SUITE.erl",514}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,partitioned_bs_match_3},2}.
  {label,225}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[anything]},
                                   none,
                                   {t_integer,{1,1}},
                                   none,none}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_union,none,none,
                                   {t_integer,{2,2}},
                                   none,
                                   {t_bitstring,8,false}}},
                    accepts_match_context]}}.
    {test,bs_start_match3,{f,227},2,[{x,1}],{x,1}}.
    {test,bs_test_tail2,{f,226},[{x,1},8]}.
    return.
  {label,226}.
    {bs_get_tail,{x,1},{x,1},2}.
    {jump,{f,224}}.
  {label,227}.
    {test,is_eq_exact,
          {f,228},
          [{tr,{x,0},
               {t_union,{t_atom,[anything]},none,{t_integer,{1,1}},none,none}},
           {integer,1}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,228}.
    {move,{integer,2},{x,1}}.
    {move,{atom,anything},{x,0}}.
    {jump,{f,224}}.


{function, function_clause, 1, 230}.
  {label,229}.
    {line,[{location,"bs_match_r25_SUITE.erl",517}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,function_clause},1}.
  {label,230}.
    {test,is_list,{f,229},[{x,0}]}.
    {allocate,4,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3}]}}.
    {move,{literal,<<0,7,0,7,42>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",518}]}.
    {call,1,{f,236}}. % function_clause_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,3},{f,231}}.
    {move,{literal,<<0,1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",520}]}.
    {call,1,{f,236}}. % function_clause_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,231}.
    {catch_end,{y,3}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<0,1,2,3>>]},{x,1}}.
    {move,{atom,function_clause_1},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_r25_SUITE.erl",519}]}.
    {call,3,{f,891}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,2},{f,232}}.
    {move,{literal,<<0,7,0,1,2,3>>},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_r25_SUITE.erl",522}]}.
    {call,1,{f,236}}. % function_clause_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,232}.
    {catch_end,{y,2}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<0,1,2,3>>]},{x,1}}.
    {move,{atom,function_clause_1},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r25_SUITE.erl",521}]}.
    {call,3,{f,891}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<0,7,0,7,42>>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r25_SUITE.erl",524}]}.
    {call,1,{f,240}}. % function_clause_2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<"ÿ">>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r25_SUITE.erl",525}]}.
    {call,1,{f,240}}. % function_clause_2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<13:4>>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r25_SUITE.erl",526}]}.
    {call,1,{f,240}}. % function_clause_2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,1},{f,233}}.
    {move,{literal,<<0,1,2,3>>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r25_SUITE.erl",528}]}.
    {call,1,{f,240}}. % function_clause_2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,233}.
    {catch_end,{y,1}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<0,1,2,3>>]},{x,1}}.
    {move,{atom,function_clause_2},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r25_SUITE.erl",527}]}.
    {call,3,{f,891}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,0},{f,234}}.
    {move,{literal,<<0,7,0,1,2,3>>},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r25_SUITE.erl",530}]}.
    {call,1,{f,240}}. % function_clause_2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,234}.
    {catch_end,{y,0}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<0,1,2,3>>]},{x,1}}.
    {move,{atom,function_clause_2},{x,0}}.
    {call_last,3,{f,891},4}. % fc/3


{function, function_clause_1, 1, 236}.
  {label,235}.
    {line,[{location,"bs_match_r25_SUITE.erl",534}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,function_clause_1},1}.
  {label,236}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {test,bs_get_integer2,
          {f,238},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[534,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,237},[{tr,{x,2},{t_integer,{0,255}}},{integer,0}]}.
    {test,bs_match_string,{f,237},[{x,0},8,{string,<<7>>}]}.
    {call_only,1,{f,236}}. % function_clause_1/1
  {label,237}.
    {test,bs_test_tail2,{f,238},[{x,0},0]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,238}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,235}}.


{function, function_clause_2, 1, 240}.
  {label,239}.
    {line,[{location,"bs_match_r25_SUITE.erl",539}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,function_clause_2},1}.
  {label,240}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,4}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {test,bs_get_integer2,
          {f,242},
          2,
          [{tr,{x,0},{t_bs_context,4}},
           {integer,8},
           1,
           {field_flags,[{anno,[539,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,241},[{tr,{x,2},{t_integer,{0,255}}},{integer,0}]}.
    {test,bs_match_string,{f,241},[{x,0},8,{string,<<7>>}]}.
    {test,bs_test_unit,{f,242},[{x,0},8]}.
    {call_only,1,{f,240}}. % function_clause_2/1
  {label,241}.
    {test,bs_test_tail2,{f,242},[{x,0},0]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,242}.
    {bs_set_position,{x,0},{x,1}}.
    {test,bs_test_tail2,{f,243},[{x,0},4]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,243}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,239}}.


{function, unit, 1, 245}.
  {label,244}.
    {line,[{location,"bs_match_r25_SUITE.erl",546}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,unit},1}.
  {label,245}.
    {test,is_list,{f,244},[{x,0}]}.
    {allocate,7,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3},{y,4},{y,5},{y,6}]}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",547}]}.
    {call,1,{f,273}}. % peek1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,271},[{tr,{x,0},{t_integer,{0,255}}},{integer,42}]}.
    {move,{literal,<<43,1,2>>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_r25_SUITE.erl",548}]}.
    {call,1,{f,273}}. % peek1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,270},[{tr,{x,0},{t_integer,{0,255}}},{integer,43}]}.
    {move,{literal,<<43,1,2,1:1>>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_r25_SUITE.erl",549}]}.
    {call,1,{f,273}}. % peek1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,269},[{tr,{x,0},{t_integer,{0,255}}},{integer,43}]}.
    {move,{literal,<<43,1,2,3:2>>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_r25_SUITE.erl",550}]}.
    {call,1,{f,273}}. % peek1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,268},[{tr,{x,0},{t_integer,{0,255}}},{integer,43}]}.
    {move,{literal,<<43,1,2,127:7>>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_r25_SUITE.erl",551}]}.
    {call,1,{f,273}}. % peek1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,267},[{tr,{x,0},{t_integer,{0,255}}},{integer,43}]}.
    {move,{literal,<<"c">>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_r25_SUITE.erl",553}]}.
    {call,1,{f,279}}. % peek8/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,266},[{tr,{x,0},{t_integer,{0,255}}},{integer,99}]}.
    {move,{literal,<<"de">>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_r25_SUITE.erl",554}]}.
    {call,1,{f,279}}. % peek8/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,265},[{tr,{x,0},{t_integer,{0,255}}},{integer,100}]}.
    {'catch',{y,6},{f,246}}.
    {move,{literal,<<100,101,0:1>>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_r25_SUITE.erl",555}]}.
    {call,1,{f,279}}. % peek8/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
  {label,246}.
    {catch_end,{y,6}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<100,101,0:1>>]},{x,1}}.
    {move,{atom,peek8},{x,0}}.
    {line,[{scope,[13,14]},{location,"bs_match_r25_SUITE.erl",555}]}.
    {call,3,{f,891}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<146,108>>},{x,0}}.
    {line,[{scope,[13,14]},{location,"bs_match_r25_SUITE.erl",557}]}.
    {call,1,{f,282}}. % peek16/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,65535}}}]}}.
    {test,is_eq_exact,
          {f,264},
          [{tr,{x,0},{t_integer,{0,65535}}},{integer,37484}]}.
    {move,{literal,<<146,113,21,190>>},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_match_r25_SUITE.erl",558}]}.
    {call,1,{f,282}}. % peek16/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,65535}}}]}}.
    {test,is_eq_exact,
          {f,263},
          [{tr,{x,0},{t_integer,{0,65535}}},{integer,37489}]}.
    {'catch',{y,5},{f,247}}.
    {move,{literal,<<"\b">>},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_match_r25_SUITE.erl",559}]}.
    {call,1,{f,282}}. % peek16/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,65535}}}]}}.
  {label,247}.
    {catch_end,{y,5}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<"\b">>]},{x,1}}.
    {move,{atom,peek16},{x,0}}.
    {line,[{scope,"\v\f"},{location,"bs_match_r25_SUITE.erl",559}]}.
    {call,3,{f,891}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,4},{f,248}}.
    {move,{literal,<<0,42:7>>},{x,0}}.
    {line,[{scope,"\v\f"},{location,"bs_match_r25_SUITE.erl",560}]}.
    {call,1,{f,282}}. % peek16/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,65535}}}]}}.
  {label,248}.
    {catch_end,{y,4}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<0,42:7>>]},{x,1}}.
    {move,{atom,peek16},{x,0}}.
    {line,[{scope,"\t\n"},{location,"bs_match_r25_SUITE.erl",560}]}.
    {call,3,{f,891}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,3},{f,249}}.
    {move,{literal,<<1,2,3,4,5>>},{x,0}}.
    {line,[{scope,"\t\n"},{location,"bs_match_r25_SUITE.erl",561}]}.
    {call,1,{f,282}}. % peek16/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,65535}}}]}}.
  {label,249}.
    {catch_end,{y,3}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<1,2,3,4,5>>]},{x,1}}.
    {move,{atom,peek16},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_r25_SUITE.erl",561}]}.
    {call,3,{f,891}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<127:7>>},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_r25_SUITE.erl",563}]}.
    {call,1,{f,276}}. % peek7/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,127}}}]}}.
    {test,is_eq_exact,{f,262},[{tr,{x,0},{t_integer,{0,127}}},{integer,127}]}.
    {move,{literal,<<200,19:6>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",564}]}.
    {call,1,{f,276}}. % peek7/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,127}}}]}}.
    {test,is_eq_exact,{f,261},[{tr,{x,0},{t_integer,{0,127}}},{integer,100}]}.
    {'catch',{y,2},{f,250}}.
    {move,{literal,<<1,2>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",565}]}.
    {call,1,{f,276}}. % peek7/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,127}}}]}}.
  {label,250}.
    {catch_end,{y,2}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<1,2>>]},{x,1}}.
    {move,{atom,peek7},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r25_SUITE.erl",565}]}.
    {call,3,{f,891}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,-1},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r25_SUITE.erl",567}]}.
    {call,2,{f,285}}. % unit_opt/2
    {'%',{var_info,{x,0},[{type,{t_integer,{1,8}}}]}}.
    {test,is_eq_exact,{f,260},[{tr,{x,0},{t_integer,{1,8}}},{integer,1}]}.
    {move,{integer,-1},{x,1}}.
    {move,{integer,8},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",568}]}.
    {call,2,{f,285}}. % unit_opt/2
    {'%',{var_info,{x,0},[{type,{t_integer,{1,8}}}]}}.
    {test,is_eq_exact,{f,259},[{tr,{x,0},{t_integer,{1,8}}},{integer,8}]}.
    {move,{literal,<<0,0,0,1,97,98,99>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",570}]}.
    {call,1,{f,292}}. % unit_opt_2/1
    {test,is_eq_exact,{f,258},[{x,0},{literal,<<0,0,0,1,97,98,99>>}]}.
    {move,{literal,<<0,0,0,2,100,101,102>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",571}]}.
    {call,1,{f,292}}. % unit_opt_2/1
    {test,is_eq_exact,{f,257},[{x,0},{literal,<<"def">>}]}.
    {'catch',{y,1},{f,251}}.
    {move,{literal,<<0,0,0,1,33:7>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",572}]}.
    {call,1,{f,292}}. % unit_opt_2/1
  {label,251}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,256},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,0},{f,252}}.
    {move,{literal,<<0,0,0,2,55:7>>},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r25_SUITE.erl",573}]}.
    {call,1,{f,292}}. % unit_opt_2/1
  {label,252}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,255},[{x,0},2,{atom,'EXIT'}]}.
    {move,{literal,<<0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1>>},{x,0}}.
    {line,[{scope,[1,2]},{location,"bs_match_r25_SUITE.erl",575}]}.
    {call,1,{f,299}}. % unit_opt_3/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,254},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<0,0,0,0,0,0,0,0>>}]}.
    {move,{literal,<<0,0,0,0,0,0,0,1>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",576}]}.
    {call,1,{f,299}}. % unit_opt_3/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,253},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<0,0,0,0,0,0,0,1>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,7}.
    return.
  {label,253}.
    {badmatch,{x,0}}.
  {label,254}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",575}]}.
    {badmatch,{x,0}}.
  {label,255}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",573}]}.
    {badmatch,{x,0}}.
  {label,256}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",572}]}.
    {badmatch,{x,0}}.
  {label,257}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",571}]}.
    {badmatch,{x,0}}.
  {label,258}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",570}]}.
    {badmatch,{x,0}}.
  {label,259}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",568}]}.
    {badmatch,{x,0}}.
  {label,260}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",567}]}.
    {badmatch,{x,0}}.
  {label,261}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",564}]}.
    {badmatch,{x,0}}.
  {label,262}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",563}]}.
    {badmatch,{x,0}}.
  {label,263}.
    {line,[{scope,"\f"},{location,"bs_match_r25_SUITE.erl",558}]}.
    {badmatch,{x,0}}.
  {label,264}.
    {line,[{scope,"\f"},{location,"bs_match_r25_SUITE.erl",557}]}.
    {badmatch,{x,0}}.
  {label,265}.
    {line,[{scope,[14]},{location,"bs_match_r25_SUITE.erl",554}]}.
    {badmatch,{x,0}}.
  {label,266}.
    {line,[{scope,[14]},{location,"bs_match_r25_SUITE.erl",553}]}.
    {badmatch,{x,0}}.
  {label,267}.
    {line,[{scope,[14]},{location,"bs_match_r25_SUITE.erl",551}]}.
    {badmatch,{x,0}}.
  {label,268}.
    {line,[{scope,[14]},{location,"bs_match_r25_SUITE.erl",550}]}.
    {badmatch,{x,0}}.
  {label,269}.
    {line,[{scope,[14]},{location,"bs_match_r25_SUITE.erl",549}]}.
    {badmatch,{x,0}}.
  {label,270}.
    {line,[{scope,[14]},{location,"bs_match_r25_SUITE.erl",548}]}.
    {badmatch,{x,0}}.
  {label,271}.
    {line,[{scope,[14]},{location,"bs_match_r25_SUITE.erl",547}]}.
    {badmatch,{x,0}}.


{function, peek1, 1, 273}.
  {label,272}.
    {line,[{location,"bs_match_r25_SUITE.erl",580}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,peek1},1}.
  {label,273}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,1,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,274},
          1,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[580,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {move,{x,1},{x,0}}.
    return.
  {label,274}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,272}}.


{function, peek7, 1, 276}.
  {label,275}.
    {line,[{location,"bs_match_r25_SUITE.erl",582}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,peek7},1}.
  {label,276}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,1,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {test,bs_get_integer2,
          {f,277},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,7},
           1,
           {field_flags,[{anno,[582,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_unit,{f,277},[{x,0},7]}.
    {move,{x,2},{x,0}}.
    return.
  {label,277}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,275}}.


{function, peek8, 1, 279}.
  {label,278}.
    {line,[{location,"bs_match_r25_SUITE.erl",584}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,peek8},1}.
  {label,279}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,1,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {test,bs_get_integer2,
          {f,280},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[584,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_unit,{f,280},[{x,0},8]}.
    {move,{x,2},{x,0}}.
    return.
  {label,280}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,278}}.


{function, peek16, 1, 282}.
  {label,281}.
    {line,[{location,"bs_match_r25_SUITE.erl",586}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,peek16},1}.
  {label,282}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,1,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {test,bs_get_integer2,
          {f,283},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,16},
           1,
           {field_flags,[{anno,[586,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_unit,{f,283},[{x,0},16]}.
    {move,{x,2},{x,0}}.
    return.
  {label,283}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,281}}.


{function, unit_opt, 2, 285}.
  {label,284}.
    {line,[{location,"bs_match_r25_SUITE.erl",588}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,unit_opt},2}.
  {label,285}.
    {'%',{var_info,{x,0},[{type,{t_integer,{1,8}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{-1,-1}}}]}}.
    {select_val,{tr,{x,0},{t_integer,{1,8}}},
                {f,290},
                {list,[{integer,1},{f,287},{integer,8},{f,286}]}}.
  {label,286}.
    {line,[{location,"bs_match_r25_SUITE.erl",592}]}.
    {bs_create_bin,{f,0},
                   0,0,8,
                   {x,0},
                   {list,[{atom,string},
                          0,8,nil,
                          {string,<<"ÿ">>},
                          {integer,1}]}}.
    {jump,{f,288}}.
  {label,287}.
    {line,[{location,"bs_match_r25_SUITE.erl",591}]}.
    {bs_create_bin,{f,0},
                   0,0,1,
                   {x,0},
                   {list,[{atom,integer},0,1,nil,{integer,127},{integer,7}]}}.
  {label,288}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_test_unit,{f,289},[{x,0},8]}.
    {move,{integer,8},{x,0}}.
    return.
  {label,289}.
    {move,{integer,1},{x,0}}.
    return.
  {label,290}.
    {line,[{location,"bs_match_r25_SUITE.erl",590}]}.
    {case_end,{x,0}}.


{function, unit_opt_2, 1, 292}.
  {label,291}.
    {line,[{location,"bs_match_r25_SUITE.erl",600}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,unit_opt_2},1}.
  {label,292}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,1,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {test,bs_get_integer2,
          {f,296},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[600,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,296},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {atom,all},
           8,
           {field_flags,[{anno,[600,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {select_val,{tr,{x,2},{t_integer,{0,4294967295}}},
                {f,297},
                {list,[{integer,1},{f,294},{integer,2},{f,293}]}}.
  {label,293}.
    {line,[{location,"bs_match_r25_SUITE.erl",605}]}.
    {bs_create_bin,{f,0},
                   0,4,8,
                   {x,0},
                   {list,[{atom,append},
                          1,8,nil,
                          {tr,{x,3},{t_bitstring,8,false}},
                          {atom,all}]}}.
    {jump,{f,295}}.
  {label,294}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
  {label,295}.
    {call_only,1,{f,1778}}. % id/1
  {label,296}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,291}}.
  {label,297}.
    {line,[{location,"bs_match_r25_SUITE.erl",601}]}.
    if_end.


{function, unit_opt_3, 1, 299}.
  {label,298}.
    {line,[{location,"bs_match_r25_SUITE.erl",609}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,unit_opt_3},1}.
  {label,299}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,64,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_binary2,
          {f,300},
          2,
          [{tr,{x,1},{t_bs_context,64}},
           {integer,8},
           8,
           {field_flags,[{anno,[613,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {move,{x,1},{x,0}}.
    return.
  {label,300}.
    {line,[{location,"bs_match_r25_SUITE.erl",613}]}.
    {badmatch,{x,0}}.


{function, shared_sub_bins, 1, 302}.
  {label,301}.
    {line,[{location,"bs_match_r25_SUITE.erl",616}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,shared_sub_bins},1}.
  {label,302}.
    {test,is_list,{f,301},[{x,0}]}.
    {allocate,0,0}.
    {move,nil,{x,1}}.
    {move,{integer,0},{x,2}}.
    {move,{literal,<<1,2,3,4,5>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",617}]}.
    {call,3,{f,305}}. % sum/3
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_integer,{0,'+inf'}},
                       2 => {t_list,{t_bitstring,8,false},nil}}}}]}}.
    {test,is_eq_exact,
          {f,303},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_list,{t_bitstring,8,false},nil}}}},
           {literal,{15,[<<>>,<<5>>,<<4,5>>,<<3,4,5>>,<<2,3,4,5>>]}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,303}.
    {badmatch,{x,0}}.


{function, sum, 3, 305}.
  {label,304}.
    {line,[{location,"bs_match_r25_SUITE.erl",620}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,sum},3}.
  {label,305}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{0,'+inf'}}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,306},
          3,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[620,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {line,[{location,"bs_match_r25_SUITE.erl",621}]}.
    {gc_bif,'+',
            {f,0},
            4,
            [{tr,{x,2},{t_integer,{0,'+inf'}}},{tr,{x,3},{t_integer,{0,255}}}],
            {x,2}}.
    {bs_get_tail,{x,0},{x,3},3}.
    {test_heap,2,4}.
    {put_list,{x,3},{x,1},{x,1}}.
    {call_only,3,{f,305}}. % sum/3
  {label,306}.
    {test,bs_test_tail2,{f,307},[{x,0},0]}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{x,2},{x,1}]}}.
    return.
  {label,307}.
    {bs_get_tail,{x,0},{x,0},3}.
    {jump,{f,304}}.


{function, bin_and_float, 1, 309}.
  {label,308}.
    {line,[{location,"bs_match_r25_SUITE.erl",625}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bin_and_float},1}.
  {label,309}.
    {test,is_list,{f,308},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{float,0.0},{x,1}}.
    {move,{literal,<<63,240,0,0,0,0,0,0,64,0,0,0,0,0,0,0,64,8,0,0,0,0,0,0>>},
          {x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",626}]}.
    {call,2,{f,313}}. % bin_and_float/2
    {'%',{var_info,{x,0},[{type,{t_float,any}}]}}.
    {test,is_eq_exact,{f,311},[{tr,{x,0},{t_float,any}},{float,14.0}]}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",628}]}.
    {call,1,{f,1778}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,2}}.
    {trim,1,0}.
    {move,{literal,<<0,0,0,2:6>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",629}]}.
    {call,3,{f,1942}}. % '-bin_and_float/1-lbc$^0/2-0-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {test,is_eq_exact,
          {f,310},
          [{tr,{x,0},{t_bitstring,8,true}},{literal,<<>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,310}.
    {badmatch,{x,0}}.
  {label,311}.
    {line,[{location,"bs_match_r25_SUITE.erl",626}]}.
    {badmatch,{x,0}}.


{function, bin_and_float, 2, 313}.
  {label,312}.
    {line,[{location,"bs_match_r25_SUITE.erl",633}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bin_and_float},2}.
  {label,313}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,64}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_float,any}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {test,bs_get_float2,
          {f,314},
          3,
          [{tr,{x,0},{t_bs_context,64}},
           {integer,64},
           1,
           {field_flags,[{anno,[633,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_float2,
          {f,314},
          4,
          [{tr,{x,0},{t_bs_context,64}},
           {integer,64},
           1,
           {field_flags,[{anno,[633,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_float2,
          {f,314},
          5,
          [{tr,{x,0},{t_bs_context,64}},
           {integer,64},
           1,
           {field_flags,[{anno,[633,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {fmove,{x,3},{fr,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",636}]}.
    {bif,fmul,{f,0},[{fr,0},{fr,0}],{fr,0}}.
    {fmove,{x,1},{fr,1}}.
    {bif,fadd,{f,0},[{fr,1},{fr,0}],{fr,0}}.
    {fmove,{x,4},{fr,1}}.
    {bif,fmul,{f,0},[{fr,1},{fr,1}],{fr,1}}.
    {bif,fadd,{f,0},[{fr,0},{fr,1}],{fr,0}}.
    {fmove,{x,5},{fr,1}}.
    {bif,fmul,{f,0},[{fr,1},{fr,1}],{fr,1}}.
    {bif,fadd,{f,0},[{fr,0},{fr,1}],{fr,0}}.
    {test_heap,{alloc,[{words,0},{floats,1},{funs,0}]},1}.
    {fmove,{fr,0},{x,1}}.
    {call_only,2,{f,313}}. % bin_and_float/2
  {label,314}.
    {bs_set_position,{x,0},{x,2}}.
    {test,bs_test_tail2,{f,315},[{x,0},0]}.
    {move,{x,1},{x,0}}.
    return.
  {label,315}.
    {bs_get_tail,{x,0},{x,0},2}.
    {jump,{f,312}}.


{function, dec_subidentifiers, 1, 317}.
  {label,316}.
    {line,[{location,"bs_match_r25_SUITE.erl",639}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,dec_subidentifiers},1}.
  {label,317}.
    {test,is_list,{f,316},[{x,0}]}.
    {allocate,0,0}.
    {move,nil,{x,2}}.
    {move,{integer,0},{x,1}}.
    {move,{integer,2},{x,3}}.
    {move,{literal,<<170,227,1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",641}]}.
    {call,4,{f,322}}. % do_dec_subidentifiers/4
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_list,{t_integer,any},nil},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
          {f,320},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_list,{t_integer,any},nil},
                          2 => {t_bitstring,8,false}}}},
           {literal,{[],<<1,2,3>>}}]}.
    {move,nil,{x,2}}.
    {move,{integer,0},{x,1}}.
    {move,{integer,2},{x,3}}.
    {move,{literal,<<170,13,1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",642}]}.
    {call,4,{f,322}}. % do_dec_subidentifiers/4
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_list,{t_integer,any},nil},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
          {f,319},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_list,{t_integer,any},nil},
                          2 => {t_bitstring,8,false}}}},
           {literal,{[5389],<<1,2,3>>}}]}.
    {move,{literal,[1,2,3]},{x,2}}.
    {move,{atom,any},{x,1}}.
    {move,{integer,0},{x,3}}.
    {move,{atom,not_a_binary},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",643}]}.
    {call,4,{f,327}}. % dec_subidentifiers/4
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
        {f,318},
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
  {label,318}.
    {badmatch,{x,0}}.
  {label,319}.
    {line,[{location,"bs_match_r25_SUITE.erl",642}]}.
    {badmatch,{x,0}}.
  {label,320}.
    {line,[{location,"bs_match_r25_SUITE.erl",640}]}.
    {badmatch,{x,0}}.


{function, do_dec_subidentifiers, 4, 322}.
  {label,321}.
    {line,[{location,"bs_match_r25_SUITE.erl",646}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_dec_subidentifiers},4}.
  {label,322}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,0}}}]}}.
    {'%',{var_info,{x,2},[{type,nil}]}}.
    {'%',{var_info,{x,3},[{type,{t_integer,{2,2}}}]}}.
    {allocate,2,4}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",647}]}.
    {call,4,{f,327}}. % dec_subidentifiers/4
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
    {line,[{location,"bs_match_r25_SUITE.erl",648}]}.
    {call,4,{f,331}}. % dec_subidentifiers2/4
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_list,{t_integer,any},nil},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
        {f,325},
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
    {line,[{location,"bs_match_r25_SUITE.erl",649}]}.
    {call,4,{f,340}}. % dec_subidentifiers4/4
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_list,{t_integer,any},nil},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
          {f,324},
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
    {line,[{location,"bs_match_r25_SUITE.erl",650}]}.
    {call,4,{f,336}}. % dec_subidentifiers3/4
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_list,{t_integer,any},nil},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
          {f,323},
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
  {label,323}.
    {badmatch,{x,0}}.
  {label,324}.
    {line,[{location,"bs_match_r25_SUITE.erl",649}]}.
    {badmatch,{x,0}}.
  {label,325}.
    {line,[{location,"bs_match_r25_SUITE.erl",648}]}.
    {badmatch,{x,0}}.


{function, dec_subidentifiers, 4, 327}.
  {label,326}.
    {line,[{location,"bs_match_r25_SUITE.erl",652}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,dec_subidentifiers},4}.
  {label,327}.
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
    {test,is_eq_exact,{f,328},[{tr,{x,3},{t_integer,{'-inf',2}}},{integer,0}]}.
    {allocate,1,3}.
    {move,{x,0},{y,0}}.
    {move,{x,2},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",653}]}.
    {call_ext,1,{extfunc,lists,reverse,1}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{x,0},{y,0}]}}.
    {deallocate,1}.
    return.
  {label,328}.
    {test,bs_start_match3,{f,326},4,[{x,0}],{x,4}}.
    {bs_get_position,{x,4},{x,5},5}.
    {test,bs_get_integer2,
          {f,329},
          6,
          [{tr,{x,4},{t_bs_context,8}},
           {integer,1},
           1,
           {field_flags,[{anno,[654,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,is_eq_exact,{f,329},[{tr,{x,6},{t_integer,{0,1}}},{integer,1}]}.
    {test,bs_get_integer2,
          {f,329},
          6,
          [{tr,{x,4},{t_bs_context,1}},
           {integer,7},
           1,
           {field_flags,[{anno,[654,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,bs_get_binary2,
          {f,329},
          7,
          [{tr,{x,4},{t_bs_context,1}},
           {atom,all},
           8,
           {field_flags,[{anno,[654,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,7}}.
    {line,[{location,"bs_match_r25_SUITE.erl",655}]}.
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
    {call_only,4,{f,327}}. % dec_subidentifiers/4
  {label,329}.
    {bs_set_position,{x,4},{x,5}}.
    {test,bs_get_integer2,
          {f,326},
          5,
          [{tr,{x,4},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[656,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {bs_get_tail,{x,4},{x,0},6}.
    {line,[{location,"bs_match_r25_SUITE.erl",657}]}.
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
    {call_only,4,{f,327}}. % dec_subidentifiers/4


{function, dec_subidentifiers2, 4, 331}.
  {label,330}.
    {line,[{location,"bs_match_r25_SUITE.erl",659}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,dec_subidentifiers2},4}.
  {label,331}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,any}}]}}.
    {'%',{var_info,{x,2},[{type,{t_list,{t_integer,any},nil}}]}}.
    {'%',{var_info,{x,3},[{type,{t_integer,{'-inf',2}}}]}}.
    {bs_start_match4,{atom,no_fail},4,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,4},4}.
    {bs_get_tail,{x,0},{x,5},5}.
    {test,is_eq_exact,{f,332},[{tr,{x,3},{t_integer,{'-inf',2}}},{integer,0}]}.
    {allocate,1,6}.
    {move,{x,5},{y,0}}.
    {move,{x,2},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",660}]}.
    {call_ext,1,{extfunc,lists,reverse,1}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{x,0},{y,0}]}}.
    {deallocate,1}.
    return.
  {label,332}.
    {test,bs_get_integer2,
          {f,333},
          5,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,1},
           1,
           {field_flags,[{anno,[661,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,is_eq_exact,{f,333},[{tr,{x,5},{t_integer,{0,1}}},{integer,1}]}.
    {test,bs_get_integer2,
          {f,333},
          5,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,7},
           1,
           {field_flags,[{anno,[661,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_test_unit,{f,333},[{x,0},8]}.
    {line,[{location,"bs_match_r25_SUITE.erl",662}]}.
    {gc_bif,'bsl',{f,0},6,[{tr,{x,1},{t_integer,any}},{integer,7}],{x,1}}.
    {gc_bif,'bor',
            {f,0},
            6,
            [{tr,{x,1},{t_integer,any}},{tr,{x,5},{t_integer,{0,127}}}],
            {x,1}}.
    {gc_bif,'-',{f,0},4,[{tr,{x,3},{t_integer,{'-inf',2}}},{integer,1}],{x,3}}.
    {call_only,4,{f,331}}. % dec_subidentifiers2/4
  {label,333}.
    {bs_set_position,{x,0},{x,4}}.
    {test,bs_get_integer2,
          {f,334},
          4,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[663,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {line,[{location,"bs_match_r25_SUITE.erl",664}]}.
    {gc_bif,'bsl',{f,0},5,[{tr,{x,1},{t_integer,any}},{integer,7}],{x,1}}.
    {gc_bif,'bor',
            {f,0},
            5,
            [{tr,{x,1},{t_integer,any}},{tr,{x,4},{t_integer,{0,255}}}],
            {x,1}}.
    {gc_bif,'-',{f,0},4,[{tr,{x,3},{t_integer,{'-inf',2}}},{integer,1}],{x,3}}.
    {test_heap,2,4}.
    {put_list,{x,1},{x,2},{x,2}}.
    {move,{integer,0},{x,1}}.
    {call_only,4,{f,331}}. % dec_subidentifiers2/4
  {label,334}.
    {bs_get_tail,{x,0},{x,0},4}.
    {jump,{f,330}}.


{function, dec_subidentifiers3, 4, 336}.
  {label,335}.
    {line,[{location,"bs_match_r25_SUITE.erl",666}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,dec_subidentifiers3},4}.
  {label,336}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,any}}]}}.
    {'%',{var_info,{x,2},[{type,{t_list,{t_integer,any},nil}}]}}.
    {'%',{var_info,{x,3},[{type,{t_integer,{'-inf',2}}}]}}.
    {test,is_eq_exact,{f,337},[{tr,{x,3},{t_integer,{'-inf',2}}},{integer,0}]}.
    {allocate,1,3}.
    {move,{x,0},{y,0}}.
    {move,{x,2},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",667}]}.
    {call_ext,1,{extfunc,lists,reverse,1}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{x,0},{y,0}]}}.
    {deallocate,1}.
    return.
  {label,337}.
    {bs_start_match4,{atom,no_fail},4,{x,0},{x,4}}.
    {bs_get_position,{x,4},{x,5},5}.
    {test,bs_get_integer2,
          {f,338},
          6,
          [{tr,{x,4},{t_bs_context,8}},
           {integer,1},
           1,
           {field_flags,[{anno,[668,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,is_eq_exact,{f,338},[{tr,{x,6},{t_integer,{0,1}}},{integer,1}]}.
    {test,bs_get_integer2,
          {f,338},
          6,
          [{tr,{x,4},{t_bs_context,1}},
           {integer,7},
           1,
           {field_flags,[{anno,[668,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,bs_get_binary2,
          {f,338},
          7,
          [{tr,{x,4},{t_bs_context,1}},
           {atom,all},
           8,
           {field_flags,[{anno,[668,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,7}}.
    {line,[{location,"bs_match_r25_SUITE.erl",669}]}.
    {gc_bif,'bsl',{f,0},8,[{tr,{x,1},{t_integer,any}},{integer,7}],{x,0}}.
    {gc_bif,'bor',
            {f,0},
            8,
            [{tr,{x,0},{t_integer,any}},{tr,{x,6},{t_integer,{0,127}}}],
            {x,0}}.
    {gc_bif,'-',{f,0},8,[{tr,{x,3},{t_integer,{'-inf',2}}},{integer,1}],{x,3}}.
    {move,{x,0},{x,1}}.
    {move,{x,7},{x,0}}.
    {call_only,4,{f,336}}. % dec_subidentifiers3/4
  {label,338}.
    {bs_set_position,{x,4},{x,5}}.
    {test,bs_get_integer2,
          {f,335},
          5,
          [{tr,{x,4},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[670,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {bs_get_tail,{x,4},{x,0},6}.
    {line,[{location,"bs_match_r25_SUITE.erl",671}]}.
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
    {call_only,4,{f,336}}. % dec_subidentifiers3/4


{function, dec_subidentifiers4, 4, 340}.
  {label,339}.
    {line,[{location,"bs_match_r25_SUITE.erl",673}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,dec_subidentifiers4},4}.
  {label,340}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,any}}]}}.
    {'%',{var_info,{x,2},[{type,{t_list,{t_integer,any},nil}}]}}.
    {'%',{var_info,{x,3},[{type,{t_integer,{'-inf',2}}}]}}.
    {bs_start_match4,{atom,no_fail},4,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,4},4}.
    {test,bs_get_integer2,
          {f,341},
          5,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,1},
           1,
           {field_flags,[{anno,[673,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,is_eq_exact,{f,341},[{tr,{x,5},{t_integer,{0,1}}},{integer,1}]}.
    {test,bs_get_integer2,
          {f,341},
          5,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,7},
           1,
           {field_flags,[{anno,[673,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_test_unit,{f,341},[{x,0},8]}.
    {test,is_ne_exact,{f,343},[{tr,{x,3},{t_integer,{'-inf',2}}},{integer,0}]}.
    {line,[{location,"bs_match_r25_SUITE.erl",674}]}.
    {gc_bif,'bsl',{f,0},6,[{tr,{x,1},{t_integer,any}},{integer,7}],{x,1}}.
    {gc_bif,'bor',
            {f,0},
            6,
            [{tr,{x,1},{t_integer,any}},{tr,{x,5},{t_integer,{0,127}}}],
            {x,1}}.
    {gc_bif,'-',{f,0},4,[{tr,{x,3},{t_integer,{'-inf',2}}},{integer,1}],{x,3}}.
    {call_only,4,{f,340}}. % dec_subidentifiers4/4
  {label,341}.
    {bs_set_position,{x,0},{x,4}}.
    {test,bs_get_integer2,
          {f,342},
          5,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[675,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,is_ne_exact,{f,343},[{tr,{x,3},{t_integer,{'-inf',2}}},{integer,0}]}.
    {line,[{location,"bs_match_r25_SUITE.erl",676}]}.
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
    {call_only,4,{f,340}}. % dec_subidentifiers4/4
  {label,342}.
    {test,is_eq_exact,{f,344},[{tr,{x,3},{t_integer,{'-inf',2}}},{integer,0}]}.
  {label,343}.
    {allocate,2,5}.
    {move,{x,4},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{x,2},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",678}]}.
    {call_ext,1,{extfunc,lists,reverse,1}}.
    {bs_set_position,{y,1},{y,0}}.
    {bs_get_tail,{y,1},{x,1},1}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {deallocate,2}.
    return.
  {label,344}.
    {bs_get_tail,{x,0},{x,0},4}.
    {jump,{f,339}}.


{function, skip_optional_tag, 1, 346}.
  {label,345}.
    {line,[{location,"bs_match_r25_SUITE.erl",681}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,skip_optional_tag},1}.
  {label,346}.
    {test,is_list,{f,345},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<"*">>},{x,1}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",682}]}.
    {call,2,{f,352}}. % skip_optional_tag/2
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
        {f,350},
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
    {line,[{location,"bs_match_r25_SUITE.erl",683}]}.
    {call,2,{f,352}}. % skip_optional_tag/2
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
        {f,349},
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
    {line,[{location,"bs_match_r25_SUITE.erl",684}]}.
    {call,2,{f,352}}. % skip_optional_tag/2
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
        {f,348},
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
    {line,[{location,"bs_match_r25_SUITE.erl",685}]}.
    {call,2,{f,352}}. % skip_optional_tag/2
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
        {f,347},
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
  {label,347}.
    {badmatch,{x,0}}.
  {label,348}.
    {line,[{location,"bs_match_r25_SUITE.erl",684}]}.
    {badmatch,{x,0}}.
  {label,349}.
    {line,[{location,"bs_match_r25_SUITE.erl",683}]}.
    {badmatch,{x,0}}.
  {label,350}.
    {line,[{location,"bs_match_r25_SUITE.erl",682}]}.
    {badmatch,{x,0}}.


{function, skip_optional_tag, 2, 352}.
  {label,351}.
    {line,[{location,"bs_match_r25_SUITE.erl",688}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,skip_optional_tag},2}.
  {label,352}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_union,{t_atom,[blurf]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_test_tail2,{f,353},[{x,0},0]}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{atom,ok},{x,1}]}}.
    return.
  {label,353}.
    {test,bs_get_integer2,
          {f,354},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[690,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_unit,{f,354},[{x,0},8]}.
    {test,bs_start_match3,{f,354},3,[{x,1}],{x,1}}.
    {test,bs_get_integer2,
          {f,354},
          3,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[690,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_get_tail,{x,1},{x,1},4}.
    {test,is_eq_exact,
          {f,354},
          [{tr,{x,3},{t_integer,{0,255}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {call_only,2,{f,352}}. % skip_optional_tag/2
  {label,354}.
    {move,{atom,missing},{x,0}}.
    return.


{function, decode_integer, 1, 356}.
  {label,355}.
    {line,[{location,"bs_match_r25_SUITE.erl",694}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,decode_integer},1}.
  {label,356}.
    {allocate,0,0}.
    {move,{literal,<<"*+">>},{x,1}}.
    {move,{atom,whatever},{x,2}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",695}]}.
    {call,3,{f,360}}. % decode_integer/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,any},
                                     2 => {t_bitstring,8,false},
                                     3 => {t_atom,[whatever]}}}}]}}.
    {test,is_eq_exact,
          {f,358},
          [{tr,{x,0},
               {t_tuple,3,true,
                        #{1 => {t_integer,any},
                          2 => {t_bitstring,8,false},
                          3 => {t_atom,[whatever]}}}},
           {literal,{10795,<<"+">>,whatever}}]}.
    {move,{literal,<<143,19>>},{x,1}}.
    {move,{atom,whatever},{x,2}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",696}]}.
    {call,3,{f,360}}. % decode_integer/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,any},
                                     2 => {t_bitstring,8,false},
                                     3 => {t_atom,[whatever]}}}}]}}.
    {test,is_eq_exact,
          {f,357},
          [{tr,{x,0},
               {t_tuple,3,true,
                        #{1 => {t_integer,any},
                          2 => {t_bitstring,8,false},
                          3 => {t_atom,[whatever]}}}},
           {literal,{-28909,<<19>>,whatever}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,357}.
    {badmatch,{x,0}}.
  {label,358}.
    {line,[{location,"bs_match_r25_SUITE.erl",695}]}.
    {badmatch,{x,0}}.


{function, decode_integer, 3, 360}.
  {label,359}.
    {line,[{location,"bs_match_r25_SUITE.erl",699}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,decode_integer},3}.
  {label,360}.
    {'%',{var_info,{x,0},[{type,{t_integer,{1,1}}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_bitstring,16,false}},accepts_match_context]}}.
    {'%',{var_info,{x,2},[{type,{t_atom,[whatever]}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,3},3}.
    {test,bs_get_integer2,
          {f,362},
          4,
          [{tr,{x,1},{t_bs_context,16}},
           {integer,1},
           1,
           {field_flags,[{anno,[699,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_integer2,
          {f,362},
          5,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,7},
           1,
           {field_flags,[{anno,[699,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_get_binary2,
          {f,362},
          6,
          [{tr,{x,1},{t_bs_context,1}},
           {atom,all},
           8,
           {field_flags,[{anno,[699,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,is_eq_exact,{f,361},[{tr,{x,4},{t_integer,{0,1}}},{integer,0}]}.
    {line,[{location,"bs_match_r25_SUITE.erl",700}]}.
    {bs_create_bin,{f,0},
                   0,7,8,
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
                          {tr,{x,6},{t_bitstring,8,false}},
                          {atom,all}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {test,bs_skip_bits2,
          {f,364},
          [{x,1},
           {integer,1},
           8,
           {field_flags,[{anno,[700,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_get_tail,{x,1},{x,3},3}.
    {line,[{location,"bs_match_r25_SUITE.erl",701}]}.
    {gc_bif,byte_size,{f,0},4,[{tr,{x,0},{t_bitstring,8,false}}],{x,4}}.
    {bs_set_position,{x,1},{x,2}}.
    {test,bs_get_integer2,
          {f,363},
          5,
          [{tr,{x,1},{t_bs_context,8}},
           {tr,{x,4},{t_integer,{0,288230376151711743}}},
           8,
           {field_flags,[{anno,[702,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,363},[{x,1},0]}.
    {test_heap,4,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3},{atom,whatever}]}}.
    return.
  {label,361}.
    {line,[{location,"bs_match_r25_SUITE.erl",705}]}.
    {bs_create_bin,{f,0},
                   0,7,8,
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
                          {tr,{x,6},{t_bitstring,8,false}},
                          {atom,all}]}}.
    {bs_start_match4,{atom,no_fail},7,{x,0},{x,1}}.
    {test,bs_skip_bits2,
          {f,366},
          [{x,1},
           {integer,1},
           8,
           {field_flags,[{anno,[705,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_get_tail,{x,1},{x,1},7}.
    {line,[{location,"bs_match_r25_SUITE.erl",706}]}.
    {gc_bif,byte_size,{f,0},7,[{tr,{x,0},{t_bitstring,8,false}}],{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",707}]}.
    {bs_create_bin,{f,0},
                   0,7,8,
                   {x,2},
                   {list,[{atom,integer},
                          1,1,nil,
                          {tr,{x,5},{t_integer,{0,127}}},
                          {integer,8},
                          {atom,binary},
                          2,8,nil,
                          {tr,{x,6},{t_bitstring,8,false}},
                          {atom,all}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,3}}.
    {test,bs_get_integer2,
          {f,365},
          4,
          [{tr,{x,3},{t_bs_context,8}},
           {tr,{x,0},{t_integer,{0,288230376151711743}}},
           8,
           {field_flags,[{anno,[707,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,365},[{x,3},0]}.
    {line,[{location,"bs_match_r25_SUITE.erl",708}]}.
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
  {label,362}.
    {bs_set_position,{x,1},{x,3}}.
    {bs_get_tail,{x,1},{x,1},3}.
    {jump,{f,359}}.
  {label,363}.
    {line,[{location,"bs_match_r25_SUITE.erl",702}]}.
    {badmatch,{x,0}}.
  {label,364}.
    {line,[{location,"bs_match_r25_SUITE.erl",700}]}.
    {badmatch,{x,0}}.
  {label,365}.
    {line,[{location,"bs_match_r25_SUITE.erl",707}]}.
    {badmatch,{x,2}}.
  {label,366}.
    {line,[{location,"bs_match_r25_SUITE.erl",705}]}.
    {badmatch,{x,0}}.


{function, wfbm, 1, 368}.
  {label,367}.
    {line,[{location,"bs_match_r25_SUITE.erl",713}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,wfbm},1}.
  {label,368}.
    {test,is_list,{f,367},[{x,0}]}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{literal,<<" ">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",716}]}.
    {call,1,{f,383}}. % check_for_dot_or_space/1
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
          {f,381},
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
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",717}]}.
    {call,1,{f,383}}. % check_for_dot_or_space/1
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
          {f,380},
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
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",718}]}.
    {call,1,{f,383}}. % check_for_dot_or_space/1
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
          {f,379},
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
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",719}]}.
    {call,1,{f,383}}. % check_for_dot_or_space/1
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
          {f,378},
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
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",720}]}.
    {call,1,{f,383}}. % check_for_dot_or_space/1
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
          {f,377},
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
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",722}]}.
    {call,1,{f,391}}. % get_tail/1
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
          {f,376},
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
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",723}]}.
    {call,1,{f,391}}. % get_tail/1
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
          {f,375},
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
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",724}]}.
    {call,1,{f,391}}. % get_tail/1
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
          {f,374},
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
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",725}]}.
    {call,1,{f,391}}. % get_tail/1
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
          {f,373},
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
    {'catch',{y,1},{f,369}}.
    {move,{literal,{no,binary,at,all}},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",726}]}.
    {call,1,{f,391}}. % get_tail/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,369}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,372},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,0},{f,370}}.
    {move,{atom,no_binary},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r25_SUITE.erl",727}]}.
    {call,1,{f,391}}. % get_tail/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,370}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,371},[{x,0},2,{atom,'EXIT'}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,371}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",727}]}.
    {badmatch,{x,0}}.
  {label,372}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",726}]}.
    {badmatch,{x,0}}.
  {label,373}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",725}]}.
    {badmatch,{x,0}}.
  {label,374}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",724}]}.
    {badmatch,{x,0}}.
  {label,375}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",723}]}.
    {badmatch,{x,0}}.
  {label,376}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",722}]}.
    {badmatch,{x,0}}.
  {label,377}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",720}]}.
    {badmatch,{x,0}}.
  {label,378}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",719}]}.
    {badmatch,{x,0}}.
  {label,379}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",718}]}.
    {badmatch,{x,0}}.
  {label,380}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",717}]}.
    {badmatch,{x,0}}.
  {label,381}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",716}]}.
    {badmatch,{x,0}}.


{function, check_for_dot_or_space, 1, 383}.
  {label,382}.
    {line,[{location,"bs_match_r25_SUITE.erl",730}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,check_for_dot_or_space},1}.
  {label,383}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {move,{integer,0},{x,1}}.
    {call_only,2,{f,385}}. % check_for_dot_or_space/2


{function, check_for_dot_or_space, 2, 385}.
  {label,384}.
    {line,[{location,"bs_match_r25_SUITE.erl",733}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,check_for_dot_or_space},2}.
  {label,385}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,'+inf'}}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {test,bs_match_string,{f,386},[{x,0},8,{string,<<" ">>}]}.
    {test,is_eq_exact,{f,386},[{tr,{x,1},{t_integer,{0,'+inf'}}},{integer,0}]}.
    {move,{literal,{nomatch,0}},{x,0}}.
    return.
  {label,386}.
    {bs_set_position,{x,0},{x,2}}.
    {test,bs_get_binary2,
          {f,389},
          3,
          [{tr,{x,0},{t_bs_context,8}},
           {tr,{x,1},{t_integer,{0,'+inf'}}},
           8,
           {field_flags,[{anno,[737,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,389},
          4,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[737,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {select_val,{tr,{x,4},{t_integer,{0,255}}},
                {f,389},
                {list,[{integer,32},{f,388},{integer,46},{f,387}]}}.
  {label,387}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{atom,nomatch},{x,1}]}}.
    return.
  {label,388}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{atom,ok},{x,3}]}}.
    return.
  {label,389}.
    {line,[{location,"bs_match_r25_SUITE.erl",742}]}.
    {gc_bif,'+',{f,0},3,[{tr,{x,1},{t_integer,{0,'+inf'}}},{integer,1}],{x,1}}.
    {bs_set_position,{x,0},{x,2}}.
    {call_only,2,{f,385}}. % check_for_dot_or_space/2


{function, get_tail, 1, 391}.
  {label,390}.
    {line,[{location,"bs_match_r25_SUITE.erl",745}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,get_tail},1}.
  {label,391}.
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
          {f,393},
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
    {test,bs_start_match3,{f,394},1,[{x,0}],{x,1}}.
    {test,bs_get_binary2,
          {f,394},
          2,
          [{tr,{x,1},{t_bs_context,16}},
           {integer,16},
           8,
           {field_flags,[{anno,[748,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,0}}.
    {test,bs_skip_bits2,
          {f,393},
          [{x,0},
           {integer,3},
           8,
           {field_flags,[{anno,[750,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_match_string,{f,393},[{x,0},16,{string,<<"x/">>}]}.
    {test,bs_get_binary2,
          {f,393},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,4},
           8,
           {field_flags,[{anno,[750,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_match_string,{f,393},[{x,0},8,{string,<<"/">>}]}.
    {test,bs_get_binary2,
          {f,393},
          3,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,2},
           8,
           {field_flags,[{anno,[750,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_match_string,{f,393},[{x,0},8,{string,<<"/">>}]}.
    {test,bs_get_binary2,
          {f,393},
          4,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,2},
           8,
           {field_flags,[{anno,[750,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_match_string,{f,393},[{x,0},8,{string,<<"/">>}]}.
    {test,bs_test_tail2,{f,393},[{x,0},0]}.
    {allocate,3,5}.
    {move,{x,4},{y,0}}.
    {move,{x,3},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",751}]}.
    {call,1,{f,383}}. % check_for_dot_or_space/1
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
    {test,is_eq_exact,{f,392},[{x,1},{atom,ok}]}.
    {line,[{location,"bs_match_r25_SUITE.erl",753}]}.
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
  {label,392}.
    {line,[{location,"bs_match_r25_SUITE.erl",754}]}.
    {gc_bif,'+',
            {f,0},
            1,
            [{tr,{x,0},{t_integer,{0,'+inf'}}},{integer,16}],
            {x,0}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,skip},{x,0}]}}.
    {deallocate,3}.
    return.
  {label,393}.
    {move,{atom,nomatch},{x,0}}.
    return.
  {label,394}.
    {line,[{location,"bs_match_r25_SUITE.erl",748}]}.
    {badmatch,{x,0}}.


{function, degenerated_match, 1, 396}.
  {label,395}.
    {line,[{location,"bs_match_r25_SUITE.erl",759}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,degenerated_match},1}.
  {label,396}.
    {test,is_list,{f,395},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",760}]}.
    {call,1,{f,404}}. % degenerated_match_1/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[error]},
                                   none,
                                   {t_integer,{0,288230376151711743}},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,402},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,
                        {t_integer,{0,288230376151711743}},
                        none,none}},
           {atom,error}]}.
    {move,{literal,<<1:1>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",761}]}.
    {call,1,{f,404}}. % degenerated_match_1/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[error]},
                                   none,
                                   {t_integer,{0,288230376151711743}},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,401},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,
                        {t_integer,{0,288230376151711743}},
                        none,none}},
           {integer,1}]}.
    {move,{literal,<<"*+">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",762}]}.
    {call,1,{f,404}}. % degenerated_match_1/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[error]},
                                   none,
                                   {t_integer,{0,288230376151711743}},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,400},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,
                        {t_integer,{0,288230376151711743}},
                        none,none}},
           {integer,2}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",764}]}.
    {call,1,{f,407}}. % degenerated_match_2/1
    {test,is_eq_exact,{f,399},[{x,0},{atom,error}]}.
    {move,{literal,<<1,2>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",765}]}.
    {call,1,{f,407}}. % degenerated_match_2/1
    {test,is_eq_exact,{f,398},[{x,0},{atom,no_split}]}.
    {move,{literal,<<1,2,3,4,5>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",766}]}.
    {call,1,{f,407}}. % degenerated_match_2/1
    {test,is_eq_exact,{f,397},[{x,0},{literal,{<<1,2,3,4>>,<<5>>}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,397}.
    {badmatch,{x,0}}.
  {label,398}.
    {line,[{location,"bs_match_r25_SUITE.erl",765}]}.
    {badmatch,{x,0}}.
  {label,399}.
    {line,[{location,"bs_match_r25_SUITE.erl",764}]}.
    {badmatch,{x,0}}.
  {label,400}.
    {line,[{location,"bs_match_r25_SUITE.erl",762}]}.
    {badmatch,{x,0}}.
  {label,401}.
    {line,[{location,"bs_match_r25_SUITE.erl",761}]}.
    {badmatch,{x,0}}.
  {label,402}.
    {line,[{location,"bs_match_r25_SUITE.erl",760}]}.
    {badmatch,{x,0}}.


{function, degenerated_match_1, 1, 404}.
  {label,403}.
    {line,[{location,"bs_match_r25_SUITE.erl",770}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,degenerated_match_1},1}.
  {label,404}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {test,is_eq_exact,
          {f,405},
          [{tr,{x,0},{t_bitstring,1,false}},{literal,<<>>}]}.
    {move,{atom,error},{x,0}}.
    return.
  {label,405}.
    {line,[{location,"bs_match_r25_SUITE.erl",771}]}.
    {gc_bif,byte_size,{f,0},1,[{tr,{x,0},{t_bitstring,1,false}}],{x,0}}.
    return.


{function, degenerated_match_2, 1, 407}.
  {label,406}.
    {line,[{location,"bs_match_r25_SUITE.erl",773}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,degenerated_match_2},1}.
  {label,407}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,408},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<>>}]}.
    {move,{atom,error},{x,0}}.
    return.
  {label,408}.
    {line,[{location,"bs_match_r25_SUITE.erl",775}]}.
    {gc_bif,byte_size,{f,0},1,[{tr,{x,0},{t_bitstring,8,false}}],{x,1}}.
    {test,is_ge,
          {f,409},
          [{tr,{x,1},{t_integer,{0,288230376151711743}}},{integer,5}]}.
    {move,{integer,4},{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",777}]}.
    {call_ext_only,2,{extfunc,erlang,split_binary,2}}.
  {label,409}.
    {move,{atom,no_split},{x,0}}.
    return.


{function, bs_sum, 1, 411}.
  {label,410}.
    {line,[{location,"bs_match_r25_SUITE.erl",782}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bs_sum},1}.
  {label,411}.
    {test,is_list,{f,410},[{x,0}]}.
    {allocate,4,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3}]}}.
    {move,nil,{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",783}]}.
    {call,1,{f,429}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,0}}}]}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",784}]}.
    {call,1,{f,429}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,'+inf'}}}]}}.
    {test,is_eq_exact,{f,427},[{tr,{x,0},{t_integer,{0,'+inf'}}},{integer,0}]}.
    {move,{literal,"*"},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",785}]}.
    {call,1,{f,429}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{1,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,426},
          [{tr,{x,0},{t_integer,{1,'+inf'}}},{integer,42}]}.
    {move,{literal,<<1>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",786}]}.
    {call,1,{f,429}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,'+inf'}}}]}}.
    {test,is_eq_exact,{f,425},[{tr,{x,0},{t_integer,{0,'+inf'}}},{integer,1}]}.
    {move,{literal,[1,2,3,4]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",787}]}.
    {call,1,{f,429}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{1,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,424},
          [{tr,{x,0},{t_integer,{1,'+inf'}}},{integer,10}]}.
    {move,{literal,<<1,2,3,4,5>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",788}]}.
    {call,1,{f,429}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,423},
          [{tr,{x,0},{t_integer,{0,'+inf'}}},{integer,15}]}.
    {move,{literal,[1,2,3|<<4,5,6>>]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",789}]}.
    {call,1,{f,429}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{1,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,422},
          [{tr,{x,0},{t_integer,{1,'+inf'}}},{integer,21}]}.
    {move,{literal,[1,2,3|{4,5}]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",790}]}.
    {call,1,{f,429}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{1,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,421},
          [{tr,{x,0},{t_integer,{1,'+inf'}}},{integer,15}]}.
    {move,{literal,[1,2,3|zero]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",791}]}.
    {call,1,{f,429}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{1,'+inf'}}}]}}.
    {test,is_eq_exact,{f,420},[{tr,{x,0},{t_integer,{1,'+inf'}}},{integer,6}]}.
    {move,{literal,[1,2,3|0]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",792}]}.
    {call,1,{f,429}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{1,'+inf'}}}]}}.
    {test,is_eq_exact,{f,419},[{tr,{x,0},{t_integer,{1,'+inf'}}},{integer,6}]}.
    {move,{literal,[1,2,3|one]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",793}]}.
    {call,1,{f,429}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{1,'+inf'}}}]}}.
    {test,is_eq_exact,{f,418},[{tr,{x,0},{t_integer,{1,'+inf'}}},{integer,7}]}.
    {'catch',{y,3},{f,412}}.
    {move,{literal,{too,big,tuple}},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",795}]}.
    {call,1,{f,429}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,412}.
    {catch_end,{y,3}}.
    {line,[{scope,[7,8]},{location,"bs_match_r25_SUITE.erl",795}]}.
    {call,1,{f,889}}. % fc/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,2},{f,413}}.
    {move,{literal,[1,2,3|{too,big,tuple}]},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_r25_SUITE.erl",796}]}.
    {call,1,{f,429}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{1,'+inf'}}}]}}.
  {label,413}.
    {catch_end,{y,2}}.
    {line,[{scope,[5,6]},{location,"bs_match_r25_SUITE.erl",796}]}.
    {call,1,{f,889}}. % fc/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r25_SUITE.erl",798}]}.
    {call,1,{f,438}}. % sneaky_alias/1
    {test,is_nil,{f,417},[{x,0}]}.
    {move,{literal,<<0,0,2,47,0,5,234,71>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",799}]}.
    {call,1,{f,1778}}. % id/1
    {call,1,{f,438}}. % sneaky_alias/1
    {test,is_eq_exact,{f,416},[{x,0},{literal,[559,387655]}]}.
    {'catch',{y,1},{f,414}}.
    {move,{literal,<<1>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",800}]}.
    {call,1,{f,1778}}. % id/1
    {call,1,{f,438}}. % sneaky_alias/1
  {label,414}.
    {catch_end,{y,1}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<1>>]},{x,1}}.
    {move,{atom,sneaky_alias},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r25_SUITE.erl",800}]}.
    {call,3,{f,891}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,0},{f,415}}.
    {move,{integer,4},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r25_SUITE.erl",801}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {call,1,{f,438}}. % sneaky_alias/1
  {label,415}.
    {catch_end,{y,0}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[[1,2,3,4]]},{x,1}}.
    {move,{atom,sneaky_alias},{x,0}}.
    {call_last,3,{f,891},4}. % fc/3
  {label,416}.
    {line,[{scope,[0,4]},{location,"bs_match_r25_SUITE.erl",799}]}.
    {badmatch,{x,0}}.
  {label,417}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",798}]}.
    {badmatch,{x,0}}.
  {label,418}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",793}]}.
    {badmatch,{x,0}}.
  {label,419}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",792}]}.
    {badmatch,{x,0}}.
  {label,420}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",791}]}.
    {badmatch,{x,0}}.
  {label,421}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",790}]}.
    {badmatch,{x,0}}.
  {label,422}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",789}]}.
    {badmatch,{x,0}}.
  {label,423}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",788}]}.
    {badmatch,{x,0}}.
  {label,424}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",787}]}.
    {badmatch,{x,0}}.
  {label,425}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",786}]}.
    {badmatch,{x,0}}.
  {label,426}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",785}]}.
    {badmatch,{x,0}}.
  {label,427}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",784}]}.
    {badmatch,{x,0}}.


{function, bs_sum_1, 1, 429}.
  {label,428}.
    {line,[{location,"bs_match_r25_SUITE.erl",804}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bs_sum_1},1}.
  {label,429}.
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
                     {t_bs_matchable,8}}},
             accepts_match_context]}}.
    {test,bs_start_match3,{f,432},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,430},
          2,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[804,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,0}}.
    {allocate,1,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {call,1,{f,429}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,'+inf'}}}]}}.
    {gc_bif,'+',
            {f,0},
            1,
            [{tr,{y,0},{t_integer,{0,255}}},{tr,{x,0},{t_integer,{0,'+inf'}}}],
            {x,0}}.
    {deallocate,1}.
    return.
  {label,430}.
    {test,bs_test_tail2,{f,431},[{x,1},0]}.
    {move,{integer,0},{x,0}}.
    return.
  {label,431}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,428}}.
  {label,432}.
    {test,is_nonempty_list,{f,433},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",805}]}.
    {call,1,{f,429}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,'+inf'}}}]}}.
    {gc_bif,'+',
            {f,0},
            1,
            [{tr,{y,0},{t_integer,{1,42}}},{tr,{x,0},{t_integer,{0,'+inf'}}}],
            {x,0}}.
    {deallocate,1}.
    return.
  {label,433}.
    {test,is_tuple,
          {f,435},
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
    {test,test_arity,{f,434},[{x,0},2]}.
    {move,{integer,9},{x,0}}.
    return.
  {label,434}.
    {move,{literal,{too,big,tuple}},{x,0}}.
    {jump,{f,428}}.
  {label,435}.
    {test,is_atom,
          {f,436},
          [{tr,{x,0},
               {t_union,{t_atom,[one,zero]},
                        nil,
                        {t_integer,{0,0}},
                        none,none}}]}.
    {test,is_ne_exact,{f,436},[{x,0},{atom,zero}]}.
    {move,{integer,1},{x,0}}.
    return.
  {label,436}.
    {move,{integer,0},{x,0}}.
    return.


{function, sneaky_alias, 1, 438}.
  {label,437}.
    {line,[{location,"bs_match_r25_SUITE.erl",813}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,sneaky_alias},1}.
  {label,438}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,437},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_test_tail2,{f,439},[{x,1},0]}.
    {bs_get_tail,{x,1},{x,0},2}.
    {call_ext_only,1,{extfunc,erlang,binary_to_list,1}}.
  {label,439}.
    {test,bs_get_integer2,
          {f,440},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[814,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_unit,{f,440},[{x,1},8]}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",814}]}.
    {call,1,{f,438}}. % sneaky_alias/1
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,440}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,437}}.


{function, coverage, 1, 442}.
  {label,441}.
    {line,[{location,"bs_match_r25_SUITE.erl",816}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,coverage},1}.
  {label,442}.
    {test,is_list,{f,441},[{x,0}]}.
    {allocate_heap,4,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3}]}}.
    {make_fun3,{f,1940},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_number,any}}]}}.
    {move,{literal,<<>>},{x,2}}.
    {move,{integer,0},{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",817}]}.
    {call,3,{f,472}}. % coverage_fold/3
    {'%',{var_info,{x,0},[{type,{t_number,any}}]}}.
    {test,is_eq_exact,{f,470},[{tr,{x,0},{t_number,any}},{integer,0}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1938},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_number,any}}]}}.
    {move,{literal,<<1,2,3>>},{x,2}}.
    {move,{integer,0},{x,1}}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",818}]}.
    {call,3,{f,472}}. % coverage_fold/3
    {'%',{var_info,{x,0},[{type,{t_number,any}}]}}.
    {test,is_eq_exact,{f,469},[{tr,{x,0},{t_number,any}},{integer,6}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1936},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_number,any}}]}}.
    {'catch',{y,3},{f,443}}.
    {move,{literal,[a,b,c]},{x,2}}.
    {move,{integer,0},{x,1}}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",819}]}.
    {call,3,{f,472}}. % coverage_fold/3
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,443}.
    {catch_end,{y,3}}.
    {line,[{scope,[7,8]},{location,"bs_match_r25_SUITE.erl",819}]}.
    {call,1,{f,889}}. % fc/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<"*">>},{x,1}}.
    {move,{atom,float},{x,2}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_r25_SUITE.erl",823}]}.
    {call,3,{f,476}}. % coverage_build/3
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,2,true,
         #{1 => {t_bitstring,1,false},
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
          {f,468},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[823,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,468},[{tr,{x,2},{t_float,any}},{float,42.0}]}.
    {test,bs_test_tail2,{f,468},[{x,1},0]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,
        {f,468},
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
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",824}]}.
    {call,3,{f,476}}. % coverage_build/3
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,2,true,
         #{1 => {t_bitstring,1,false},
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
     {f,467},
     [{tr,
       {x,0},
       {t_tuple,2,true,
        #{1 => {t_bitstring,1,false},
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
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",826}]}.
    {call,3,{f,476}}. % coverage_build/3
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_tuple,2,true,
         #{1 => {t_bitstring,1,false},
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
     {f,466},
     [{tr,
       {x,0},
       {t_tuple,2,true,
        #{1 => {t_bitstring,1,false},
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
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",828}]}.
    {call,2,{f,482}}. % coverage_bc/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_bitstring,8,true},nil}}]}}.
    {test,is_eq_exact,
          {f,465},
          [{tr,{x,0},{t_list,{t_bitstring,8,true},nil}},
           {literal,[<<2>>,<<1>>]}]}.
    {move,{literal,{x,y,z}},{x,1}}.
    {move,{literal,<<2,97,98,99>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",830}]}.
    {call,2,{f,486}}. % coverage_setelement/2
    {'%',{var_info,{x,0},[{type,{t_tuple,3,true,#{}}}]}}.
    {test,is_eq_exact,
          {f,464},
          [{tr,{x,0},{t_tuple,3,true,#{}}},{literal,{x,<<"abc">>,z}}]}.
    {move,{literal,[coverage_id]},{x,1}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",832}]}.
    {call,2,{f,489}}. % coverage_apply/2
    {'%',{var_info,{x,0},[{type,{t_cons,any,nil}}]}}.
    {test,is_eq_exact,{f,463},[{tr,{x,0},{t_cons,any,nil}},{literal,"*"}]}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",833}]}.
    {call,1,{f,493}}. % coverage_external/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,462},[{tr,{x,0},{t_integer,{0,255}}},{integer,42}]}.
    {move,nil,{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",835}]}.
    {call,1,{f,500}}. % do_coverage_bin_to_term_list/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {move,{integer,10},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",836}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {test_heap,2,1}.
    {put_list,{x,0},{literal,[{a,b,c},<<0,0,0,0,5,3:2>>]},{x,0}}.
    {call,1,{f,500}}. % do_coverage_bin_to_term_list/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {'catch',{y,2},{f,444}}.
    {move,{literal,<<0,0,0,7>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",838}]}.
    {call,1,{f,505}}. % do_coverage_bin_to_term_list_1/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
  {label,444}.
    {catch_end,{y,2}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<0,0,0,7>>]},{x,1}}.
    {move,{atom,coverage_bin_to_term_list},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r25_SUITE.erl",837}]}.
    {call,3,{f,891}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<0,0,0,4>>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r25_SUITE.erl",840}]}.
    {call,1,{f,530}}. % coverage_per_key/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,461},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<>>}]}.
    {move,{literal,<<0,0,0,7,97,98,99>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",841}]}.
    {call,1,{f,530}}. % coverage_per_key/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,460},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<"abc">>}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",843}]}.
    {call,1,{f,534}}. % coverage_bitstring/1
    {'%',{var_info,{x,0},[{type,{t_atom,[binary,bitstring]}}]}}.
    {test,is_eq_exact,
          {f,459},
          [{tr,{x,0},{t_atom,[binary,bitstring]}},{atom,binary}]}.
    {move,{literal,<<7>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",844}]}.
    {call,1,{f,534}}. % coverage_bitstring/1
    {'%',{var_info,{x,0},[{type,{t_atom,[binary,bitstring]}}]}}.
    {test,is_eq_exact,
          {f,458},
          [{tr,{x,0},{t_atom,[binary,bitstring]}},{atom,binary}]}.
    {move,{literal,<<7:4>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",845}]}.
    {call,1,{f,534}}. % coverage_bitstring/1
    {'%',{var_info,{x,0},[{type,{t_atom,[binary,bitstring]}}]}}.
    {test,is_eq_exact,
          {f,457},
          [{tr,{x,0},{t_atom,[binary,bitstring]}},{atom,bitstring}]}.
    {move,{literal,[a]},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",846}]}.
    {call,1,{f,534}}. % coverage_bitstring/1
    {'%',{var_info,{x,0},[{type,{t_atom,[other]}}]}}.
    {move,{atom,e2},{x,3}}.
    {move,{atom,e1},{x,2}}.
    {move,{atom,e3},{x,4}}.
    {move,{atom,e0},{x,1}}.
    {move,nil,{x,5}}.
    {move,{literal,<<253,155,200,17,53>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",851}]}.
    {call,6,{f,538}}. % coverage_trim/6
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,3,true,
                     #{1 => {t_atom,[done]},
                       2 => {t_bitstring,8,false},
                       3 => {t_list,{t_integer,{0,255}},nil}}}}]}}.
    {test,is_eq_exact,
          {f,456},
          [{tr,{x,0},
               {t_tuple,3,true,
                        #{1 => {t_atom,[done]},
                          2 => {t_bitstring,8,false},
                          3 => {t_list,{t_integer,{0,255}},nil}}}},
           {literal,{done,<<17,53>>,[253,155,200]}}]}.
    {move,{literal,<<"right">>},{x,1}}.
    {move,{literal,<<"linux">>},{x,2}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",853}]}.
    {call,3,{f,544}}. % coverage_trim_1/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,455},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<"(right|linux)">>}]}.
    {move,{literal,<<"right">>},{x,1}}.
    {move,{literal,<<"linux">>},{x,2}}.
    {move,{literal,<<"/">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",854}]}.
    {call,3,{f,544}}. % coverage_trim_1/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,454},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<"/(right|linux)">>}]}.
    {move,{literal,<<"right">>},{x,1}}.
    {move,{literal,<<"linux">>},{x,2}}.
    {move,{literal,<<"left">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",856}]}.
    {call,3,{f,544}}. % coverage_trim_1/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,453},
          [{tr,{x,0},{t_bitstring,8,false}},
           {literal,<<"(left|linux)/(right|linux)">>}]}.
    {move,{integer,10},{x,1}}.
    {move,nil,{x,2}}.
    {move,{literal,<<"-">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",858}]}.
    {call,3,{f,550}}. % coverage_trim_2/3
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,3,true,
                     #{1 => {t_integer,{'-inf',10}},
                       2 => {t_bitstring,8,false},
                       3 => {t_list,{t_integer,{0,1114111}},nil}}}}]}}.
    {test,is_eq_exact,
          {f,452},
          [{tr,{x,0},
               {t_tuple,3,true,
                        #{1 => {t_integer,{'-inf',10}},
                          2 => {t_bitstring,8,false},
                          3 => {t_list,{t_integer,{0,1114111}},nil}}}},
           {literal,{10,<<"-">>,[]}}]}.
    {move,{integer,10},{x,1}}.
    {move,nil,{x,2}}.
    {move,{literal,<<"aa-">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",859}]}.
    {call,3,{f,550}}. % coverage_trim_2/3
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,3,true,
                     #{1 => {t_integer,{'-inf',10}},
                       2 => {t_bitstring,8,false},
                       3 => {t_list,{t_integer,{0,1114111}},nil}}}}]}}.
    {test,is_eq_exact,
          {f,451},
          [{tr,{x,0},
               {t_tuple,3,true,
                        #{1 => {t_integer,{'-inf',10}},
                          2 => {t_bitstring,8,false},
                          3 => {t_list,{t_integer,{0,1114111}},nil}}}},
           {literal,{8,<<"-">>,"aa"}}]}.
    {move,{integer,3},{x,1}}.
    {move,{literal,[<<"abctag">>]},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",861}]}.
    {call,2,{f,554}}. % coverage_trim_3/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_bitstring,8,false},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
          {f,450},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_bitstring,8,false},
                          2 => {t_bitstring,8,false}}}},
           {literal,{<<"abc">>,<<"tag">>}}]}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",863}]}.
    {call,1,{f,557}}. % coverage_trim_4/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[error]},
                                   none,none,none,
                                   {t_bitstring,16,false}}}]}}.
    {test,bs_start_match3,{f,449},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,449},
          2,
          [{tr,{x,1},{t_bs_context,16}},
           {integer,16},
           1,
           {field_flags,[{anno,[863,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,native]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,449},
          [{tr,{x,2},{t_integer,{0,65535}}},{integer,57348}]}.
    {test,bs_test_tail2,{f,449},[{x,1},0]}.
    {move,{literal,<<2>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",866}]}.
    {call,1,{f,562}}. % coverage_beam_ssa_codegen/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,1},{f,445}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",869}]}.
    {call,1,{f,565}}. % coverage_beam_ssa_pre_codegen/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,445}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,448},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,448},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,0},{f,446}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r25_SUITE.erl",872}]}.
    {call,1,{f,1778}}. % id/1
    {call,1,{f,572}}. % coverage_beam_ssa_bsm_error/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,446}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,447},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,447},[{x,1}]}.
    {test,test_arity,{f,447},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,447},[{x,1},{literal,{badarg,<<>>}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,4}.
    return.
  {label,447}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",872}]}.
    {badmatch,{x,0}}.
  {label,448}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",869}]}.
    {badmatch,{x,0}}.
  {label,449}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",863}]}.
    {badmatch,{x,0}}.
  {label,450}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",861}]}.
    {badmatch,{x,0}}.
  {label,451}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",859}]}.
    {badmatch,{x,0}}.
  {label,452}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",858}]}.
    {badmatch,{x,0}}.
  {label,453}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",855}]}.
    {badmatch,{x,0}}.
  {label,454}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",854}]}.
    {badmatch,{x,0}}.
  {label,455}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",853}]}.
    {badmatch,{x,0}}.
  {label,456}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",850}]}.
    {badmatch,{x,0}}.
  {label,457}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",845}]}.
    {badmatch,{atom,binary}}.
  {label,458}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",844}]}.
    {badmatch,{atom,bitstring}}.
  {label,459}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",843}]}.
    {badmatch,{atom,bitstring}}.
  {label,460}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",841}]}.
    {badmatch,{x,0}}.
  {label,461}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",840}]}.
    {badmatch,{x,0}}.
  {label,462}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",833}]}.
    {badmatch,{x,0}}.
  {label,463}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",832}]}.
    {badmatch,{x,0}}.
  {label,464}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",830}]}.
    {badmatch,{x,0}}.
  {label,465}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",828}]}.
    {badmatch,{x,0}}.
  {label,466}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",825}]}.
    {badmatch,{x,0}}.
  {label,467}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",824}]}.
    {badmatch,{x,0}}.
  {label,468}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",823}]}.
    {badmatch,{x,0}}.
  {label,469}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",818}]}.
    {badmatch,{x,0}}.
  {label,470}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",817}]}.
    {badmatch,{x,0}}.


{function, coverage_fold, 3, 472}.
  {label,471}.
    {line,[{location,"bs_match_r25_SUITE.erl",876}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,coverage_fold},3}.
  {label,472}.
    {'%',{var_info,{x,0},[{type,{t_fun,2,any,{t_number,any}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_number,any}}]}}.
    {'%',{var_info,{x,2},
                   [{type,{t_union,none,
                                   {t_cons,{t_atom,[a,b,c]},nil},
                                   none,none,
                                   {t_bs_matchable,8}}},
                    accepts_match_context]}}.
    {test,bs_start_match3,{f,471},3,[{x,2}],{x,3}}.
    {test,bs_get_integer2,
          {f,473},
          4,
          [{tr,{x,3},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[876,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {allocate,3,4}.
    {move,{x,3},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
    {move,{x,2},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",878}]}.
    {call,1,{f,1778}}. % id/1
    {swap,{y,1},{x,0}}.
    {call,1,{f,1778}}. % id/1
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
    {call_last,3,{f,472},2}. % coverage_fold/3
  {label,473}.
    {test,bs_test_tail2,{f,474},[{x,3},0]}.
    {move,{x,1},{x,0}}.
    return.
  {label,474}.
    {bs_get_tail,{x,3},{x,2},4}.
    {jump,{f,471}}.


{function, coverage_build, 3, 476}.
  {label,475}.
    {line,[{location,"bs_match_r25_SUITE.erl",881}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,coverage_build},3}.
  {label,476}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
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
          {f,478},
          3,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[881,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,
        {f,477},
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
    {line,[{location,"bs_match_r25_SUITE.erl",882}]}.
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
    {call,1,{f,1778}}. % id/1
    {line,[{location,"bs_match_r25_SUITE.erl",883}]}.
    {bs_create_bin,{f,0},
                   0,1,8,
                   {x,0},
                   {list,[{atom,append},
                          1,8,nil,
                          {tr,{y,1},{t_bitstring,1,false}},
                          {atom,all},
                          {atom,binary},
                          2,8,nil,
                          {x,0},
                          {atom,all}]}}.
    {move,{atom,float},{x,2}}.
    {move,{y,0},{x,1}}.
    {call_last,3,{f,476},2}. % coverage_build/3
  {label,477}.
    {allocate,4,4}.
    {move,{x,3},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,0},{y,3}}.
    {move,{integer,4},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",886}]}.
    {call,1,{f,1778}}. % id/1
    {gc_bif,'-',{f,0},1,[{tr,{y,0},{t_integer,{0,255}}},{integer,1}],{x,1}}.
    {bs_create_bin,{f,0},
                   0,2,1,
                   {x,0},
                   {list,[{atom,integer},
                          1,1,nil,
                          {tr,{y,0},{t_integer,{0,255}}},
                          {x,0},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,1},{t_integer,{-1,254}}},
                          {integer,4},
                          {atom,string},
                          0,8,nil,
                          {string,<<"abc">>},
                          {integer,3}]}}.
    {trim,1,3}.
    {call,1,{f,1778}}. % id/1
    {line,[{location,"bs_match_r25_SUITE.erl",887}]}.
    {bs_create_bin,{f,0},
                   0,1,1,
                   {x,0},
                   {list,[{atom,append},
                          1,1,nil,
                          {tr,{y,2},{t_bitstring,1,false}},
                          {atom,all},
                          {atom,binary},
                          2,1,nil,
                          {x,0},
                          {atom,all}]}}.
    {init_yregs,{list,[{y,2}]}}.
    {call,1,{f,1778}}. % id/1
    {move,{x,0},{y,2}}.
    {move,{y,1},{x,1}}.
    {move,{integer,43},{x,2}}.
    {move,{integer,3},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",888}]}.
    {call_ext,3,{extfunc,erlang,setelement,3}}.
    {move,{y,1},{x,1}}.
    {move,{integer,43},{x,2}}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{integer,3},{x,0}}.
    {call_ext,3,{extfunc,erlang,setelement,3}}.
    {set_tuple_element,{integer,42},{x,0},1}.
    {gc_bif,byte_size,{f,480},0,[{y,2}],{x,0}}.
    {test,is_ge,
          {f,480},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},{integer,1}]}.
    {move,{y,0},{x,1}}.
    {move,{literal,{x,42,43}},{x,2}}.
    {move,{y,2},{x,0}}.
    {call_last,3,{f,476},3}. % coverage_build/3
  {label,478}.
    {test,bs_test_tail2,{f,479},[{x,1},0]}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{x,0},{x,2}]}}.
    return.
  {label,479}.
    {bs_get_tail,{x,1},{x,1},3}.
    {jump,{f,475}}.
  {label,480}.
    {line,[{location,"bs_match_r25_SUITE.erl",889}]}.
    if_end.


{function, coverage_bc, 2, 482}.
  {label,481}.
    {line,[{location,"bs_match_r25_SUITE.erl",895}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,coverage_bc},2}.
  {label,482}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_bitstring,8,true},nil}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,483},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[895,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {allocate,3,3}.
    {move,{x,2},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{x,1},{y,2}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {test_heap,2,1}.
    {put_list,{y,0},nil,{x,1}}.
    {swap,{x,0},{x,1}}.
    {trim,1,2}.
    {line,[{location,"bs_match_r25_SUITE.erl",896}]}.
    {call,2,{f,1933}}. % '-coverage_bc/2-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {test_heap,2,1}.
    {put_list,{x,0},{y,1},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,482},2}. % coverage_bc/2
  {label,483}.
    {test,bs_test_tail2,{f,484},[{x,0},0]}.
    {move,{x,1},{x,0}}.
    return.
  {label,484}.
    {bs_get_tail,{x,0},{x,0},2}.
    {jump,{f,481}}.


{function, coverage_setelement, 2, 486}.
  {label,485}.
    {line,[{location,"bs_match_r25_SUITE.erl",900}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,coverage_setelement},2}.
  {label,486}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,32,false}},accepts_match_context]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_atom,[x]},
                                     2 => {t_atom,[y]},
                                     3 => {t_atom,[z]}}}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,487},
          2,
          [{tr,{x,0},{t_bs_context,32}},
           {integer,8},
           1,
           {field_flags,[{anno,[900,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,0},{x,0},3}.
    {swap,{x,0},{x,2}}.
    {line,[{location,"bs_match_r25_SUITE.erl",901}]}.
    {call_ext_only,3,{extfunc,erlang,setelement,3}}.
  {label,487}.
    {bs_get_tail,{x,0},{x,0},2}.
    {jump,{f,485}}.


{function, coverage_apply, 2, 489}.
  {label,488}.
    {line,[{location,"bs_match_r25_SUITE.erl",903}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,coverage_apply},2}.
  {label,489}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_atom,[coverage_id]},nil}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {test,bs_get_integer2,
          {f,490},
          3,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[903,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_nonempty_list,{f,490},[{x,1}]}.
    {allocate,2,4}.
    {move,{x,0},{y,1}}.
    {get_tl,{x,1},{y,0}}.
    {move,{x,3},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",904}]}.
    {call_ext,1,{extfunc,bs_match_r25_SUITE,coverage_id,1}}.
    {swap,{y,1},{x,0}}.
    {move,{y,0},{x,1}}.
    {trim,1,1}.
    {call,2,{f,489}}. % coverage_apply/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,490}.
    {bs_set_position,{x,0},{x,2}}.
    {test,bs_test_tail2,{f,491},[{x,0},0]}.
    {test,is_nil,{f,491},[{tr,{x,1},{t_list,{t_atom,[coverage_id]},nil}}]}.
    {move,nil,{x,0}}.
    return.
  {label,491}.
    {bs_get_tail,{x,0},{x,0},2}.
    {jump,{f,488}}.


{function, coverage_external, 1, 493}.
  {label,492}.
    {line,[{location,"bs_match_r25_SUITE.erl",907}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,coverage_external},1}.
  {label,493}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,494},
          1,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[907,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {bs_get_tail,{x,0},{x,1},1}.
    {move,{x,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",908}]}.
    {call_ext,2,{extfunc,bs_match_r25_SUITE,coverage_external_ignore,2}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,494}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,492}}.


{function, coverage_external_ignore, 2, 496}.
  {label,495}.
    {line,[{location,"bs_match_r25_SUITE.erl",911}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,coverage_external_ignore},2}.
  {label,496}.
    {move,{atom,ok},{x,0}}.
    return.


{function, coverage_id, 1, 498}.
  {label,497}.
    {line,[{location,"bs_match_r25_SUITE.erl",914}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,coverage_id},1}.
  {label,498}.
    {call_only,1,{f,1778}}. % id/1


{function, do_coverage_bin_to_term_list, 1, 500}.
  {label,499}.
    {line,[{location,"bs_match_r25_SUITE.erl",916}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,do_coverage_bin_to_term_list},
               1}.
  {label,500}.
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",917}]}.
    {call,2,{f,1930}}. % '-do_coverage_bin_to_term_list/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {move,{x,0},{y,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",920}]}.
    {call,1,{f,505}}. % do_coverage_bin_to_term_list_1/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,503},
          [{tr,{x,0},{t_list,any,nil}},{tr,{y,1},{t_list,any,nil}}]}.
    {line,[{location,"bs_match_r25_SUITE.erl",921}]}.
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
    {call,1,{f,505}}. % do_coverage_bin_to_term_list_1/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,502},
          [{tr,{x,0},{t_list,any,nil}},{tr,{y,1},{t_list,any,nil}}]}.
    {line,[{location,"bs_match_r25_SUITE.erl",922}]}.
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
    {call,1,{f,505}}. % do_coverage_bin_to_term_list_1/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,501},
          [{tr,{x,0},{t_list,any,nil}},{tr,{y,0},{t_list,any,nil}}]}.
    {deallocate,1}.
    return.
  {label,501}.
    {badmatch,{x,0}}.
  {label,502}.
    {line,[{location,"bs_match_r25_SUITE.erl",921}]}.
    {badmatch,{x,0}}.
  {label,503}.
    {line,[{location,"bs_match_r25_SUITE.erl",920}]}.
    {badmatch,{x,0}}.


{function, do_coverage_bin_to_term_list_1, 1, 505}.
  {label,504}.
    {line,[{location,"bs_match_r25_SUITE.erl",924}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,do_coverage_bin_to_term_list_1},
               1}.
  {label,505}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",925}]}.
    {call,1,{f,510}}. % coverage_bin_to_term_list/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,0}}.
    {move,nil,{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",926}]}.
    {call,2,{f,515}}. % coverage_bin_to_term_list/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,508},
          [{tr,{x,0},{t_list,any,nil}},{tr,{y,0},{t_list,any,nil}}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",927}]}.
    {call,1,{f,520}}. % coverage_bin_to_term_list_catch/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,507},
          [{tr,{x,0},{t_list,any,nil}},{tr,{y,0},{t_list,any,nil}}]}.
    {move,nil,{x,1}}.
    {move,{y,1},{x,0}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {line,[{location,"bs_match_r25_SUITE.erl",928}]}.
    {call,2,{f,525}}. % coverage_bin_to_term_list_catch/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,506},
          [{tr,{x,0},{t_list,any,nil}},{tr,{y,0},{t_list,any,nil}}]}.
    {deallocate,1}.
    return.
  {label,506}.
    {badmatch,{x,0}}.
  {label,507}.
    {line,[{location,"bs_match_r25_SUITE.erl",927}]}.
    {badmatch,{x,0}}.
  {label,508}.
    {line,[{location,"bs_match_r25_SUITE.erl",926}]}.
    {badmatch,{x,0}}.


{function, coverage_bin_to_term_list, 1, 510}.
  {label,509}.
    {line,[{location,"bs_match_r25_SUITE.erl",930}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,coverage_bin_to_term_list},1}.
  {label,510}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {test,bs_get_integer2,
          {f,513},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,32},
           1,
           {field_flags,[{anno,[930,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,513},
          3,
          [{tr,{x,0},{t_bs_context,8}},
           {tr,{x,2},{t_integer,{0,4294967295}}},
           8,
           {field_flags,[{anno,[930,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {allocate,3,3}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {'try',{y,2},{f,511}}.
    {move,{x,2},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",931}]}.
    {call_ext,1,{extfunc,erlang,binary_to_term,1}}.
    {move,{x,0},{y,0}}.
    {try_end,{y,2}}.
    {move,{y,1},{x,0}}.
    {move,{y,0},{y,2}}.
    {trim,2,1}.
    {line,[{location,"bs_match_r25_SUITE.erl",932}]}.
    {call,1,{f,510}}. % coverage_bin_to_term_list/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,511}.
    {try_case,{y,2}}.
    {test,is_eq_exact,
          {f,512},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,error}]}.
    {test,is_eq_exact,{f,512},[{x,1},{atom,badarg}]}.
    {move,{y,1},{x,0}}.
    {call_last,1,{f,510},3}. % coverage_bin_to_term_list/1
  {label,512}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.
  {label,513}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {test,is_eq_exact,
          {f,509},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<>>}]}.
    {move,nil,{x,0}}.
    return.


{function, coverage_bin_to_term_list, 2, 515}.
  {label,514}.
    {line,[{location,"bs_match_r25_SUITE.erl",938}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,coverage_bin_to_term_list},2}.
  {label,515}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_list,any,nil}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {test,bs_get_integer2,
          {f,518},
          3,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,32},
           1,
           {field_flags,[{anno,[938,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,518},
          4,
          [{tr,{x,0},{t_bs_context,8}},
           {tr,{x,3},{t_integer,{0,4294967295}}},
           8,
           {field_flags,[{anno,[938,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {allocate,3,4}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {'try',{y,2},{f,516}}.
    {move,{x,3},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",939}]}.
    {call_ext,1,{extfunc,erlang,binary_to_term,1}}.
    {try_end,{y,2}}.
    {test_heap,2,1}.
    {put_list,{x,0},{y,1},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,515},3}. % coverage_bin_to_term_list/2
  {label,516}.
    {try_case,{y,2}}.
    {test,is_eq_exact,
          {f,517},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,error}]}.
    {test,is_eq_exact,{f,517},[{x,1},{atom,badarg}]}.
    {move,{y,1},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,515},3}. % coverage_bin_to_term_list/2
  {label,517}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.
  {label,518}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {test,is_eq_exact,
          {f,514},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<>>}]}.
    {move,{x,1},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",944}]}.
    {call_ext_only,1,{extfunc,lists,reverse,1}}.


{function, coverage_bin_to_term_list_catch, 1, 520}.
  {label,519}.
    {line,[{location,"bs_match_r25_SUITE.erl",946}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,coverage_bin_to_term_list_catch},
               1}.
  {label,520}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {test,bs_get_integer2,
          {f,523},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,32},
           1,
           {field_flags,[{anno,[946,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,523},
          3,
          [{tr,{x,0},{t_bs_context,8}},
           {tr,{x,2},{t_integer,{0,4294967295}}},
           8,
           {field_flags,[{anno,[946,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {allocate,2,3}.
    {move,{x,0},{y,0}}.
    {'catch',{y,1},{f,521}}.
    {move,{x,2},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",947}]}.
    {call_ext,1,{extfunc,erlang,binary_to_term,1}}.
  {label,521}.
    {catch_end,{y,1}}.
    {move,{x,0},{y,1}}.
    {test,is_tagged_tuple,{f,522},[{y,1},2,{atom,'EXIT'}]}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,520},2}. % coverage_bin_to_term_list_catch/1
  {label,522}.
    {move,{y,0},{x,0}}.
    {trim,1,1}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",949}]}.
    {call,1,{f,520}}. % coverage_bin_to_term_list_catch/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,523}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {test,is_eq_exact,
          {f,519},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<>>}]}.
    {move,nil,{x,0}}.
    return.


{function, coverage_bin_to_term_list_catch, 2, 525}.
  {label,524}.
    {line,[{location,"bs_match_r25_SUITE.erl",953}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,coverage_bin_to_term_list_catch},
               2}.
  {label,525}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_list,any,nil}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {test,bs_get_integer2,
          {f,528},
          3,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,32},
           1,
           {field_flags,[{anno,[953,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,528},
          4,
          [{tr,{x,0},{t_bs_context,8}},
           {tr,{x,3},{t_integer,{0,4294967295}}},
           8,
           {field_flags,[{anno,[953,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {allocate,3,4}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {'catch',{y,2},{f,526}}.
    {move,{x,3},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",954}]}.
    {call_ext,1,{extfunc,erlang,binary_to_term,1}}.
  {label,526}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,527},[{x,0},2,{atom,'EXIT'}]}.
    {move,{y,1},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,525},3}. % coverage_bin_to_term_list_catch/2
  {label,527}.
    {test_heap,2,1}.
    {put_list,{x,0},{y,1},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,525},3}. % coverage_bin_to_term_list_catch/2
  {label,528}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {test,is_eq_exact,
          {f,524},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<>>}]}.
    {move,{x,1},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",958}]}.
    {call_ext_only,1,{extfunc,lists,reverse,1}}.


{function, coverage_per_key, 1, 530}.
  {label,529}.
    {line,[{location,"bs_match_r25_SUITE.erl",960}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,coverage_per_key},1}.
  {label,530}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {test,bs_get_integer2,
          {f,531},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,32},
           1,
           {field_flags,[{anno,[960,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,0},{x,3},3}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},4}.
    {line,[{location,"bs_match_r25_SUITE.erl",961}]}.
    {gc_bif,byte_size,{f,0},4,[{tr,{x,0},{t_bitstring,8,false}}],{x,0}}.
    {test,is_eq_exact,
          {f,532},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},
           {tr,{x,2},{t_integer,{0,4294967295}}}]}.
    {move,{x,3},{x,0}}.
    return.
  {label,531}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,529}}.
  {label,532}.
    {badmatch,{atom,false}}.


{function, coverage_bitstring, 1, 534}.
  {label,533}.
    {line,[{location,"bs_match_r25_SUITE.erl",964}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,coverage_bitstring},1}.
  {label,534}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,
                                   {t_cons,{t_atom,[a]},nil},
                                   none,none,
                                   {t_bitstring,4,false}}}]}}.
    {test,is_binary,
          {f,535},
          [{tr,{x,0},
               {t_union,none,
                        {t_cons,{t_atom,[a]},nil},
                        none,none,
                        {t_bitstring,4,false}}}]}.
    {move,{atom,binary},{x,0}}.
    return.
  {label,535}.
    {test,bs_start_match3,{f,536},1,[{x,0}],{x,0}}.
    {move,{atom,bitstring},{x,0}}.
    return.
  {label,536}.
    {move,{atom,other},{x,0}}.
    return.


{function, coverage_trim, 6, 538}.
  {label,537}.
    {line,[{location,"bs_match_r25_SUITE.erl",968}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,coverage_trim},6}.
  {label,538}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[e0]}}]}}.
    {'%',{var_info,{x,2},[{type,{t_atom,[e1]}}]}}.
    {'%',{var_info,{x,3},[{type,{t_atom,[e2]}}]}}.
    {'%',{var_info,{x,4},[{type,{t_atom,[e3]}}]}}.
    {'%',{var_info,{x,5},[{type,{t_list,{t_integer,{0,255}},nil}}]}}.
    {bs_start_match4,{atom,no_fail},6,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,6},6}.
    {test,bs_get_integer2,
          {f,541},
          7,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[968,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,7}}.
    {allocate,4,8}.
    {move,{x,6},{y,0}}.
    {move,{x,7},{y,1}}.
    {move,{x,0},{y,2}}.
    {move,{x,5},{y,3}}.
    {bif,'>=',{f,0},[{tr,{x,7},{t_integer,{0,255}}},{integer,129}],{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",969}]}.
    {call,1,{f,1778}}. % id/1
    {select_val,{x,0},
                {f,542},
                {list,[{atom,false},{f,540},{atom,true},{f,539}]}}.
  {label,539}.
    {test_heap,2,0}.
    {put_list,{y,1},{y,3},{x,5}}.
    {move,{atom,e1},{x,2}}.
    {move,{atom,e2},{x,3}}.
    {move,{atom,e0},{x,1}}.
    {move,{atom,e3},{x,4}}.
    {move,{y,2},{x,0}}.
    {call_last,6,{f,538},4}. % coverage_trim/6
  {label,540}.
    {move,{y,3},{x,0}}.
    {move,{y,0},{y,3}}.
    {trim,2,2}.
    {line,[{location,"bs_match_r25_SUITE.erl",973}]}.
    {call_ext,1,{extfunc,lists,reverse,1}}.
    {bs_set_position,{y,0},{y,1}}.
    {bs_get_tail,{y,0},{x,1},1}.
    {test_heap,4,2}.
    {put_tuple2,{x,0},{list,[{atom,done},{x,1},{x,0}]}}.
    {deallocate,2}.
    return.
  {label,541}.
    {bs_get_tail,{x,0},{x,0},6}.
    {jump,{f,537}}.
  {label,542}.
    {line,[{location,"bs_match_r25_SUITE.erl",969}]}.
    {case_end,{x,0}}.


{function, coverage_trim_1, 3, 544}.
  {label,543}.
    {line,[{location,"bs_match_r25_SUITE.erl",976}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,coverage_trim_1},3}.
  {label,544}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,3},3}.
    {test,bs_match_string,{f,545},[{x,0},8,{string,<<"/">>}]}.
    {test,bs_test_tail2,{f,545},[{x,0},0]}.
    {allocate,0,3}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",979}]}.
    {call,2,{f,548}}. % do_coverage_trim_1/2
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
  {label,545}.
    {bs_set_position,{x,0},{x,3}}.
    {test,bs_test_tail2,{f,546},[{x,0},0]}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {call_only,2,{f,548}}. % do_coverage_trim_1/2
  {label,546}.
    {allocate,2,3}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{y,1}}.
    {bs_get_tail,{x,0},{x,0},3}.
    {move,{x,2},{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",981}]}.
    {call,2,{f,548}}. % do_coverage_trim_1/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {swap,{y,1},{x,0}}.
    {move,{y,0},{x,1}}.
    {trim,1,1}.
    {line,[{location,"bs_match_r25_SUITE.erl",983}]}.
    {call,2,{f,548}}. % do_coverage_trim_1/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",981}]}.
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


{function, do_coverage_trim_1, 2, 548}.
  {label,547}.
    {line,[{location,"bs_match_r25_SUITE.erl",985}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_coverage_trim_1},2}.
  {label,548}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",986}]}.
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


{function, coverage_trim_2, 3, 550}.
  {label,549}.
    {line,[{location,"bs_match_r25_SUITE.erl",988}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,coverage_trim_2},3}.
  {label,550}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{'-inf',10}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_list,{t_integer,{0,1114111}},nil}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,3},3}.
    {test,bs_get_utf8,
          {f,552},
          4,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[988,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {allocate,5,5}.
    {move,{x,3},{y,0}}.
    {move,{x,4},{y,1}}.
    {move,{x,0},{y,2}}.
    {move,{x,2},{y,3}}.
    {move,{x,1},{y,4}}.
    {move,{x,4},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",989}]}.
    {call,1,{f,560}}. % printable_char/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,551},[{x,0},{atom,true}]}.
    {line,[{location,"bs_match_r25_SUITE.erl",991}]}.
    {gc_bif,'-',
            {f,0},
            0,
            [{tr,{y,4},{t_integer,{'-inf',10}}},{integer,1}],
            {x,0}}.
    {test_heap,2,1}.
    {put_list,{y,1},{y,3},{x,2}}.
    {move,{x,0},{x,1}}.
    {move,{y,2},{x,0}}.
    {call_last,3,{f,550},5}. % coverage_trim_2/3
  {label,551}.
    {move,{y,3},{x,0}}.
    {move,{y,0},{y,3}}.
    {trim,2,3}.
    {line,[{location,"bs_match_r25_SUITE.erl",993}]}.
    {call_ext,1,{extfunc,lists,reverse,1}}.
    {bs_set_position,{y,0},{y,1}}.
    {bs_get_tail,{y,0},{x,1},1}.
    {test_heap,4,2}.
    {put_tuple2,{x,0},{list,[{y,2},{x,1},{x,0}]}}.
    {deallocate,3}.
    return.
  {label,552}.
    {bs_get_tail,{x,0},{x,0},3}.
    {jump,{f,549}}.


{function, coverage_trim_3, 2, 554}.
  {label,553}.
    {line,[{location,"bs_match_r25_SUITE.erl",996}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,coverage_trim_3},2}.
  {label,554}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_bitstring,16,false},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{3,3}}}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",997}]}.
    {call_ext,1,{extfunc,erlang,iolist_size,1}}.
    {gc_bif,'-',{f,0},1,[{tr,{x,0},{t_integer,{0,'+inf'}}},{integer,3}],{y,0}}.
    {move,{y,1},{x,0}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {line,[{location,"bs_match_r25_SUITE.erl",999}]}.
    {call_ext,1,{extfunc,erlang,iolist_to_binary,1}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_binary2,
          {f,555},
          2,
          [{tr,{x,1},{t_bs_context,8}},
           {tr,{y,0},{t_integer,{-3,'+inf'}}},
           8,
           {field_flags,[{anno,[998,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,555},
          3,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,3},
           8,
           {field_flags,[{anno,[998,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,555},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    {deallocate,1}.
    return.
  {label,555}.
    {line,[{location,"bs_match_r25_SUITE.erl",998}]}.
    {badmatch,{x,0}}.


{function, coverage_trim_4, 1, 557}.
  {label,556}.
    {line,[{location,"bs_match_r25_SUITE.erl",1002}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,coverage_trim_4},1}.
  {label,557}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1003}]}.
    {call,2,{f,1927}}. % '-coverage_trim_4/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1005}]}.
    {bs_create_bin,{f,558},
                   0,0,16,
                   {x,0},
                   {list,[{atom,integer},
                          1,1,
                          {literal,[native]},
                          {integer,57348},
                          {integer,16}]}}.
    {deallocate,1}.
    return.
  {label,558}.
    {move,{atom,error},{x,0}}.
    {deallocate,1}.
    return.


{function, printable_char, 1, 560}.
  {label,559}.
    {line,[{location,"bs_match_r25_SUITE.erl",1011}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,printable_char},1}.
  {label,560}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,1114111}}}]}}.
    {bif,'=:=',{f,0},[{tr,{x,0},{t_integer,{0,1114111}}},{integer,97}],{x,0}}.
    return.


{function, coverage_beam_ssa_codegen, 1, 562}.
  {label,561}.
    {line,[{location,"bs_match_r25_SUITE.erl",1014}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,coverage_beam_ssa_codegen},1}.
  {label,562}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,has_map_fields,{f,563},{literal,#{1 => 42}},{list,[{integer,1}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,1923},1}. % '-coverage_beam_ssa_codegen/1-lbc$^0/2-0-'/2
  {label,563}.
    {line,[{location,"bs_match_r25_SUITE.erl",1018}]}.
    {case_end,{literal,#{1 => 42}}}.


{function, coverage_beam_ssa_pre_codegen, 1, 565}.
  {label,564}.
    {line,[{location,"bs_match_r25_SUITE.erl",1024}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,coverage_beam_ssa_pre_codegen},
               1}.
  {label,565}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,256,true}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {test,bs_skip_bits2,
          {f,570},
          [{x,0},
           {integer,0},
           1,
           {field_flags,[{anno,[1024,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {gc_bif,'div',{f,566},2,[{integer,0},{integer,0}],{x,2}}.
    {jump,{f,567}}.
  {label,566}.
    {move,{atom,bad_size},{x,2}}.
  {label,567}.
    {test,bs_get_integer2,
          {f,570},
          3,
          [{tr,{x,0},{t_bs_context,256}},
           {tr,{x,2},
               {t_union,{t_atom,[bad_size]},none,{t_integer,any},none,none}},
           1,
           {field_flags,[{anno,[1024,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {gc_bif,'bsl',
            {f,568},
            3,
            [{integer,0},{tr,{x,2},{t_integer,{0,'+inf'}}}],
            {x,2}}.
    {jump,{f,569}}.
  {label,568}.
    {move,{atom,bad_size},{x,2}}.
  {label,569}.
    {test,bs_skip_bits2,
          {f,570},
          [{x,0},
           {x,2},
           1,
           {field_flags,[{anno,[1024,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_test_tail2,{f,570},[{x,0},0]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,570}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,564}}.


{function, coverage_beam_ssa_bsm_error, 1, 572}.
  {label,571}.
    {line,[{location,"bs_match_r25_SUITE.erl",1027}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,coverage_beam_ssa_bsm_error},1}.
  {label,572}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,571},1,[{x,0}],{x,1}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,badarg},{x,0}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1028}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, multiple_uses, 1, 574}.
  {label,573}.
    {line,[{location,"bs_match_r25_SUITE.erl",1030}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,multiple_uses},1}.
  {label,574}.
    {test,is_list,{f,573},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<1,88,245,159,1,89>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1031}]}.
    {call,1,{f,582}}. % multiple_uses_1/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,4,true,
                                   #{1 => {t_integer,{0,65535}},
                                     2 => {t_integer,{0,65535}},
                                     3 => {t_integer,{0,65535}},
                                     4 => {t_bitstring,16,false}}}}]}}.
    {test,is_eq_exact,
          {f,580},
          [{tr,{x,0},
               {t_tuple,4,true,
                        #{1 => {t_integer,{0,65535}},
                          2 => {t_integer,{0,65535}},
                          3 => {t_integer,{0,65535}},
                          4 => {t_bitstring,16,false}}}},
           {literal,{344,62879,345,<<245,159,1,89>>}}]}.
    {move,{literal,<<0,0,197,18>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1032}]}.
    {call,1,{f,585}}. % multiple_uses_2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,579},[{x,0},{atom,true}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1778},0,0,{x,1},{list,[]}}.
    {move,{literal,<<0,0,42,43>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1033}]}.
    {call,2,{f,588}}. % multiple_uses_3/2
    {test,is_eq_exact,{f,578},[{x,0},{literal,<<"*+">>}]}.
    {move,{integer,42},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1035}]}.
    {call,2,{f,597}}. % first_after/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[ok]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,577},
          [{tr,{x,0},
               {t_union,{t_atom,[ok]},none,none,none,{t_bitstring,8,false}}},
           {atom,ok}]}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1036}]}.
    {call,2,{f,597}}. % first_after/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[ok]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,576},
          [{tr,{x,0},
               {t_union,{t_atom,[ok]},none,none,none,{t_bitstring,8,false}}},
           {literal,<<1>>}]}.
    {move,{integer,1},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1037}]}.
    {call,2,{f,597}}. % first_after/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[ok]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,575},
          [{tr,{x,0},
               {t_union,{t_atom,[ok]},none,none,none,{t_bitstring,8,false}}},
           {literal,<<2>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,575}.
    {badmatch,{x,0}}.
  {label,576}.
    {line,[{location,"bs_match_r25_SUITE.erl",1036}]}.
    {badmatch,{x,0}}.
  {label,577}.
    {line,[{location,"bs_match_r25_SUITE.erl",1035}]}.
    {badmatch,{x,0}}.
  {label,578}.
    {line,[{location,"bs_match_r25_SUITE.erl",1033}]}.
    {badmatch,{x,0}}.
  {label,579}.
    {line,[{location,"bs_match_r25_SUITE.erl",1032}]}.
    {badmatch,{atom,false}}.
  {label,580}.
    {line,[{location,"bs_match_r25_SUITE.erl",1031}]}.
    {badmatch,{x,0}}.


{function, multiple_uses_1, 1, 582}.
  {label,581}.
    {line,[{location,"bs_match_r25_SUITE.erl",1041}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,multiple_uses_1},1}.
  {label,582}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,16,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,583},
          1,
          [{tr,{x,0},{t_bs_context,16}},
           {integer,16},
           1,
           {field_flags,[{anno,[1041,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {allocate,3,2}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
    {bs_get_position,{x,0},{y,0},1}.
    {line,[{location,"bs_match_r25_SUITE.erl",1043}]}.
    {call,1,{f,591}}. % multiple_uses_match/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,65535}},
                                     2 => {t_integer,{0,65535}}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {bs_set_position,{y,2},{y,0}}.
    {bs_get_tail,{y,2},{x,2},2}.
    {test_heap,5,3}.
    {put_tuple2,{x,0},{list,[{y,1},{x,1},{x,0},{x,2}]}}.
    {deallocate,3}.
    return.
  {label,583}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,581}}.


{function, multiple_uses_2, 1, 585}.
  {label,584}.
    {line,[{location,"bs_match_r25_SUITE.erl",1046}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,multiple_uses_2},1}.
  {label,585}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,32,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_skip_bits2,
          {f,586},
          [{x,0},
           {integer,16},
           1,
           {field_flags,[{anno,[1046,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_get_tail,{x,0},{x,1},1}.
    {move,{x,1},{x,0}}.
    {call_only,2,{f,594}}. % multiple_uses_cmp/2
  {label,586}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,584}}.


{function, multiple_uses_3, 2, 588}.
  {label,587}.
    {line,[{location,"bs_match_r25_SUITE.erl",1050}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,multiple_uses_3},2}.
  {label,588}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,32,false}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_fun,1,{id,1},any}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_skip_bits2,
          {f,589},
          [{x,0},
           {integer,16},
           1,
           {field_flags,[{anno,[1050,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_get_tail,{x,0},{x,0},1}.
    {call_only,1,{f,1778}}. % id/1
  {label,589}.
    {bs_get_tail,{x,0},{x,0},2}.
    {jump,{f,587}}.


{function, multiple_uses_match, 1, 591}.
  {label,590}.
    {line,[{location,"bs_match_r25_SUITE.erl",1054}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,multiple_uses_match},1}.
  {label,591}.
    {'%',{var_info,{x,0},[{type,{t_bs_context,16}},accepts_match_context]}}.
    {bs_start_match4,{atom,resume},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {test,bs_get_integer2,
          {f,592},
          2,
          [{tr,{x,0},{t_bs_context,16}},
           {integer,16},
           1,
           {field_flags,[{anno,[1054,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,592},
          3,
          [{tr,{x,0},{t_bs_context,16}},
           {integer,16},
           1,
           {field_flags,[{anno,[1054,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,592},[{x,0},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,592}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,590}}.


{function, multiple_uses_cmp, 2, 594}.
  {label,593}.
    {line,[{location,"bs_match_r25_SUITE.erl",1057}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,multiple_uses_cmp},2}.
  {label,594}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,16,false}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,16,false}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {test,bs_get_integer2,
          {f,595},
          3,
          [{tr,{x,0},{t_bs_context,16}},
           {integer,16},
           1,
           {field_flags,[{anno,[1057,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,595},[{x,0},0]}.
    {bs_start_match4,{atom,no_fail},4,{x,1},{x,4}}.
    {test,bs_get_integer2,
          {f,595},
          5,
          [{tr,{x,4},{t_bs_context,16}},
           {integer,16},
           1,
           {field_flags,[{anno,[1057,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_test_tail2,{f,595},[{x,4},0]}.
    {bif,'=:=',
         {f,0},
         [{tr,{x,5},{t_integer,{0,65535}}},{tr,{x,3},{t_integer,{0,65535}}}],
         {x,0}}.
    return.
  {label,595}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {jump,{f,593}}.


{function, first_after, 2, 597}.
  {label,596}.
    {line,[{location,"bs_match_r25_SUITE.erl",1060}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,first_after},2}.
  {label,597}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,42}}}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1061}]}.
    {gc_bif,byte_size,{f,0},2,[{tr,{x,0},{t_bitstring,8,false}}],{x,2}}.
    {test,is_lt,
          {f,598},
          [{tr,{x,1},{t_integer,{0,42}}},
           {tr,{x,2},{t_integer,{0,288230376151711743}}}]}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,2}}.
    {test,bs_skip_bits2,
          {f,599},
          [{x,2},
           {x,1},
           8,
           {field_flags,[{anno,[1066,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {allocate,0,3}.
    {move,{x,2},{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1068}]}.
    {call,2,{f,601}}. % match_first/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_bitstring,8,false},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {get_tuple_element,{x,0},0,{x,0}}.
    {deallocate,0}.
    return.
  {label,598}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,599}.
    {line,[{location,"bs_match_r25_SUITE.erl",1066}]}.
    {badmatch,{x,0}}.


{function, match_first, 2, 601}.
  {label,600}.
    {line,[{location,"bs_match_r25_SUITE.erl",1075}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,match_first},2}.
  {label,601}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bs_context,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,resume},2,{x,1},{x,1}}.
    {test,bs_get_binary2,
          {f,602},
          2,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,1},
           8,
           {field_flags,[{anno,[1075,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{x,0},3}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{x,2},{x,0}]}}.
    return.
  {label,602}.
    {bs_get_tail,{x,1},{x,1},2}.
    {jump,{f,600}}.


{function, zero_label, 1, 604}.
  {label,603}.
    {line,[{location,"bs_match_r25_SUITE.erl",1078}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,zero_label},1}.
  {label,604}.
    {test,is_list,{f,603},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<"FACEnosemouth">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1079}]}.
    {call,1,{f,608}}. % read_pols/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,606},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<"nosemouth">>}]}.
    {move,{literal,<<"noFACE">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1080}]}.
    {call,1,{f,608}}. % read_pols/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,605},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<"CE">>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,605}.
    {badmatch,{x,0}}.
  {label,606}.
    {line,[{location,"bs_match_r25_SUITE.erl",1079}]}.
    {badmatch,{x,0}}.


{function, read_pols, 1, 608}.
  {label,607}.
    {line,[{location,"bs_match_r25_SUITE.erl",1083}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,read_pols},1}.
  {label,608}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_skip_bits2,
          {f,609},
          [{x,0},
           {integer,4},
           8,
           {field_flags,[{anno,[1084,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_get_tail,{x,0},{x,0},1}.
    return.
  {label,609}.
    {bs_get_tail,{x,0},{x,0},1}.
    {line,[{location,"bs_match_r25_SUITE.erl",1084}]}.
    {badmatch,{x,0}}.


{function, followed_by_catch, 1, 611}.
  {label,610}.
    {line,[{location,"bs_match_r25_SUITE.erl",1089}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,followed_by_catch},1}.
  {label,611}.
    {test,is_list,{f,610},[{x,0}]}.
    {move,{literal,<<0,1,2,3,4,5>>},{x,0}}.
    {call_only,1,{f,613}}. % handle/1


{function, handle, 1, 613}.
  {label,612}.
    {line,[{location,"bs_match_r25_SUITE.erl",1093}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,handle},1}.
  {label,613}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {test,is_eq_exact,
          {f,614},
          [{tr,{x,0},{t_bitstring,16,false}},{literal,<<>>}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,614}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_skip_bits2,
          {f,618},
          [{x,1},
           {integer,16},
           1,
           {field_flags,[{anno,[1095,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {allocate,2,2}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {bs_get_tail,{x,1},{y,0},2}.
    {'catch',{y,1},{f,615}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",1096}]}.
    {call_ext,0,{extfunc,fooX,func,0}}.
  {label,615}.
    {catch_end,{y,1}}.
    {test,is_nonempty_list,{f,616},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_nil,{f,616},[{x,0}]}.
    {test,is_tagged_tuple,{f,617},[{x,1},2,{atom,rec}]}.
  {label,616}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,613},2}. % handle/1
  {label,617}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1098}]}.
    {badrecord,{x,1}}.
  {label,618}.
    {line,[{scope,[0,2]},{location,"bs_match_r25_SUITE.erl",1095}]}.
    {badmatch,{x,0}}.


{function, matching_meets_construction, 1, 620}.
  {label,619}.
    {line,[{location,"bs_match_r25_SUITE.erl",1104}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,matching_meets_construction},1}.
  {label,620}.
    {test,is_list,{f,619},[{x,0}]}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1105}]}.
    {call,1,{f,1778}}. % id/1
    {move,{x,0},{y,1}}.
    {move,{integer,2},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1106}]}.
    {call,1,{f,1778}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{literal,<<1,2,3,4,5>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1107}]}.
    {call,1,{f,1778}}. % id/1
    {test,bs_start_match3,{f,628},1,[{x,0}],{x,1}}.
    {test,bs_skip_bits2,
          {f,628},
          [{x,1},
           {y,0},
           8,
           {field_flags,[{anno,[1108,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,628},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {atom,all},
           8,
           {field_flags,[{anno,[1108,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1109}]}.
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
          {f,627},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<3,4,5,97,98,99>>}]}.
    {'catch',{y,1},{f,621}}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,<<"Abc">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",1111}]}.
    {call,1,{f,630}}. % matching_meets_construction_1/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
  {label,621}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,626},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,626},[{x,1},2,{atom,badarg}]}.
    {'catch',{y,0},{f,622}}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{literal,<<"Abc">>},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r25_SUITE.erl",1112}]}.
    {call,1,{f,633}}. % matching_meets_construction_2/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
  {label,622}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,625},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,625},[{x,1},2,{atom,badarg}]}.
    {move,{literal,<<"Abc">>},{x,0}}.
    {line,[{scope,[1,2]},{location,"bs_match_r25_SUITE.erl",1113}]}.
    {call,1,{f,636}}. % matching_meets_construction_3/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,624},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<"Bbc">>}]}.
    {move,{integer,2},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1115}]}.
    {call,2,{f,639}}. % encode_octet_string/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {test,is_eq_exact,
          {f,623},
          [{tr,{x,0},{t_bitstring,16,false}},{literal,<<1,2>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,623}.
    {badmatch,{x,0}}.
  {label,624}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1113}]}.
    {badmatch,{x,0}}.
  {label,625}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1112}]}.
    {badmatch,{x,0}}.
  {label,626}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",1111}]}.
    {badmatch,{x,0}}.
  {label,627}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",1110}]}.
    {badmatch,{x,0}}.
  {label,628}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",1108}]}.
    {badmatch,{x,0}}.


{function, matching_meets_construction_1, 1, 630}.
  {label,629}.
    {line,[{location,"bs_match_r25_SUITE.erl",1118}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,matching_meets_construction_1},
               1}.
  {label,630}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_match_string,{f,631},[{x,0},8,{string,<<"A">>}]}.
    {bs_get_tail,{x,0},{x,0},1}.
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
  {label,631}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,629}}.


{function, matching_meets_construction_2, 1, 633}.
  {label,632}.
    {line,[{location,"bs_match_r25_SUITE.erl",1120}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,matching_meets_construction_2},
               1}.
  {label,633}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_match_string,{f,634},[{x,0},8,{string,<<"A">>}]}.
    {bs_get_tail,{x,0},{x,0},1}.
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
  {label,634}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,632}}.


{function, matching_meets_construction_3, 1, 636}.
  {label,635}.
    {line,[{location,"bs_match_r25_SUITE.erl",1122}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,matching_meets_construction_3},
               1}.
  {label,636}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_match_string,{f,637},[{x,0},8,{string,<<"A">>}]}.
    {bs_get_tail,{x,0},{x,0},1}.
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
  {label,637}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,635}}.


{function, encode_octet_string, 2, 639}.
  {label,638}.
    {line,[{location,"bs_match_r25_SUITE.erl",1124}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,encode_octet_string},2}.
  {label,639}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{2,2}}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {line,[{location,"bs_match_r25_SUITE.erl",1125}]}.
    {bs_create_bin,{f,0},
                   0,1,16,
                   {x,0},
                   {list,[{atom,binary},
                          1,8,nil,
                          {tr,{x,0},{t_bitstring,8,false}},
                          {integer,2}]}}.
    return.


{function, simon, 1, 641}.
  {label,640}.
    {line,[{location,"bs_match_r25_SUITE.erl",1127}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,simon},1}.
  {label,641}.
    {test,is_list,{f,640},[{x,0}]}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{literal,<<>>},{x,1}}.
    {move,{atom,blurf},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1128}]}.
    {call,2,{f,648}}. % simon/2
    {'%',{var_info,{x,0},[{type,{t_atom,[one]}}]}}.
    {move,{literal,<<"*">>},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1129}]}.
    {call,2,{f,648}}. % simon/2
    {'%',{var_info,{x,0},[{type,{t_atom,[one,two]}}]}}.
    {test,is_eq_exact,{f,646},[{tr,{x,0},{t_atom,[one,two]}},{atom,two}]}.
    {'catch',{y,2},{f,642}}.
    {move,{literal,<<1>>},{x,1}}.
    {move,{integer,17},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",1130}]}.
    {call,2,{f,648}}. % simon/2
    {'%',{var_info,{x,0},[{type,{t_atom,[one]}}]}}.
  {label,642}.
    {catch_end,{y,2}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[17,<<1>>]},{x,1}}.
    {move,{atom,simon},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r25_SUITE.erl",1130}]}.
    {call,3,{f,891}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,1},{f,643}}.
    {move,{literal,<<1,2,3>>},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r25_SUITE.erl",1131}]}.
    {call,2,{f,648}}. % simon/2
    {'%',{var_info,{x,0},[{type,{t_atom,[one,two]}}]}}.
  {label,643}.
    {catch_end,{y,1}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[0,<<1,2,3>>]},{x,1}}.
    {move,{atom,simon},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r25_SUITE.erl",1131}]}.
    {call,3,{f,891}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<"\t">>},{x,1}}.
    {move,{atom,blurf},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r25_SUITE.erl",1133}]}.
    {call,2,{f,652}}. % simon2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[one]}}]}}.
    {move,{literal,<<9,1>>},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r25_SUITE.erl",1134}]}.
    {call,2,{f,652}}. % simon2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[one,two]}}]}}.
    {test,is_eq_exact,{f,645},[{tr,{x,0},{t_atom,[one,two]}},{atom,two}]}.
    {'catch',{y,0},{f,644}}.
    {move,{literal,<<"\t\n\v">>},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",1135}]}.
    {call,2,{f,652}}. % simon2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[one,two]}}]}}.
  {label,644}.
    {catch_end,{y,0}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[0,<<"\t\n\v">>]},{x,1}}.
    {move,{atom,simon2},{x,0}}.
    {call_last,3,{f,891},3}. % fc/3
  {label,645}.
    {line,[{scope,[0,2]},{location,"bs_match_r25_SUITE.erl",1134}]}.
    {badmatch,{atom,one}}.
  {label,646}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",1129}]}.
    {badmatch,{atom,one}}.


{function, simon, 2, 648}.
  {label,647}.
    {line,[{location,"bs_match_r25_SUITE.erl",1138}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,simon},2}.
  {label,648}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[blurf]},
                                   none,
                                   {t_integer,{0,17}},
                                   none,none}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {test,bs_test_tail2,{f,649},[{x,1},0]}.
    {move,{atom,one},{x,0}}.
    return.
  {label,649}.
    {test,bs_test_tail2,{f,650},[{x,1},8]}.
    {test,is_eq_exact,
          {f,650},
          [{tr,{x,0},
               {t_union,{t_atom,[blurf]},none,{t_integer,{0,17}},none,none}},
           {integer,0}]}.
    {move,{atom,two},{x,0}}.
    return.
  {label,650}.
    {bs_get_tail,{x,1},{x,1},2}.
    {jump,{f,647}}.


{function, simon2, 2, 652}.
  {label,651}.
    {line,[{location,"bs_match_r25_SUITE.erl",1141}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,simon2},2}.
  {label,652}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[blurf]},
                                   none,
                                   {t_integer,{0,0}},
                                   none,none}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {test,bs_get_integer2,
          {f,653},
          3,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1141,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,653},[{tr,{x,3},{t_integer,{0,255}}},{integer,9}]}.
    {test,bs_test_tail2,{f,653},[{x,1},0]}.
    {move,{atom,one},{x,0}}.
    return.
  {label,653}.
    {bs_set_position,{x,1},{x,2}}.
    {test,bs_test_tail2,{f,654},[{x,1},16]}.
    {test,is_eq_exact,
          {f,654},
          [{tr,{x,0},
               {t_union,{t_atom,[blurf]},none,{t_integer,{0,0}},none,none}},
           {integer,0}]}.
    {move,{atom,two},{x,0}}.
    return.
  {label,654}.
    {bs_get_tail,{x,1},{x,1},2}.
    {jump,{f,651}}.


{function, matching_and_andalso, 1, 656}.
  {label,655}.
    {line,[{location,"bs_match_r25_SUITE.erl",1146}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,matching_and_andalso},1}.
  {label,656}.
    {test,is_list,{f,655},[{x,0}]}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{integer,3},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1147}]}.
    {call,2,{f,674}}. % matching_and_andalso_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,2},{f,657}}.
    {move,{integer,-8},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1148}]}.
    {call,2,{f,674}}. % matching_and_andalso_1/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,657}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,672},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,672},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,1},{f,658}}.
    {move,{atom,blurf},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r25_SUITE.erl",1149}]}.
    {call,2,{f,674}}. % matching_and_andalso_1/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,658}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,671},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,671},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,0},{f,659}}.
    {move,{integer,19},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r25_SUITE.erl",1150}]}.
    {call,2,{f,674}}. % matching_and_andalso_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,659}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,670},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,670},[{x,1},2,{atom,function_clause}]}.
    {move,{literal,<<"-xyz">>},{x,1}}.
    {move,{literal,"abc"},{x,0}}.
    {line,[{scope,[1,2]},{location,"bs_match_r25_SUITE.erl",1152}]}.
    {call,2,{f,677}}. % matching_and_andalso_23/2
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
          {f,669},
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
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1153}]}.
    {call,2,{f,677}}. % matching_and_andalso_23/2
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
          {f,668},
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
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1154}]}.
    {call,2,{f,677}}. % matching_and_andalso_23/2
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
          {f,667},
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
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1155}]}.
    {call,2,{f,677}}. % matching_and_andalso_23/2
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
          {f,666},
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
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1156}]}.
    {call,2,{f,677}}. % matching_and_andalso_23/2
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
          {f,665},
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
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1157}]}.
    {call,2,{f,677}}. % matching_and_andalso_23/2
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
          {f,664},
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
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1158}]}.
    {call,2,{f,677}}. % matching_and_andalso_23/2
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
          {f,663},
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
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1159}]}.
    {call,2,{f,677}}. % matching_and_andalso_23/2
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
          {f,662},
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
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1160}]}.
    {call,2,{f,677}}. % matching_and_andalso_23/2
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
          {f,661},
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
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1161}]}.
    {call,2,{f,677}}. % matching_and_andalso_23/2
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
          {f,660},
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
  {label,660}.
    {badmatch,{x,0}}.
  {label,661}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1160}]}.
    {badmatch,{x,0}}.
  {label,662}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1159}]}.
    {badmatch,{x,0}}.
  {label,663}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1158}]}.
    {badmatch,{x,0}}.
  {label,664}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1157}]}.
    {badmatch,{x,0}}.
  {label,665}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1156}]}.
    {badmatch,{x,0}}.
  {label,666}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1155}]}.
    {badmatch,{x,0}}.
  {label,667}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1154}]}.
    {badmatch,{x,0}}.
  {label,668}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1153}]}.
    {badmatch,{x,0}}.
  {label,669}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1152}]}.
    {badmatch,{x,0}}.
  {label,670}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1150}]}.
    {badmatch,{x,0}}.
  {label,671}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",1149}]}.
    {badmatch,{x,0}}.
  {label,672}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",1148}]}.
    {badmatch,{x,0}}.


{function, matching_and_andalso_1, 2, 674}.
  {label,673}.
    {line,[{location,"bs_match_r25_SUITE.erl",1164}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,matching_and_andalso_1},2}.
  {label,674}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_union,{t_atom,[blurf]},
                                   none,
                                   {t_integer,{-8,19}},
                                   none,none}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_tail,{x,0},{x,2},2}.
    {test,is_integer,
          {f,675},
          [{tr,{x,1},
               {t_union,{t_atom,[blurf]},
                        none,
                        {t_integer,{-8,19}},
                        none,none}}]}.
    {line,[{location,"bs_match_r25_SUITE.erl",1165}]}.
    {gc_bif,byte_size,{f,0},3,[{tr,{x,2},{t_bitstring,8,false}}],{x,2}}.
    {test,is_ge,
          {f,675},
          [{tr,{x,2},{t_integer,{0,288230376151711743}}},
           {tr,{x,1},{t_integer,{-8,19}}}]}.
    {test,is_ge,{f,675},[{tr,{x,1},{t_integer,{-8,19}}},{integer,1}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,675}.
    {bs_get_tail,{x,0},{x,0},2}.
    {jump,{f,673}}.


{function, matching_and_andalso_23, 2, 677}.
  {label,676}.
    {line,[{location,"bs_match_r25_SUITE.erl",1168}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,matching_and_andalso_23},2}.
  {label,677}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{97,99}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {allocate,2,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1169}]}.
    {call,2,{f,680}}. % matching_and_andalso_2/2
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
    {line,[{location,"bs_match_r25_SUITE.erl",1170}]}.
    {call,2,{f,685}}. % matching_and_andalso_3/2
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
          {f,678},
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
  {label,678}.
    {badmatch,{x,0}}.


{function, matching_and_andalso_2, 2, 680}.
  {label,679}.
    {line,[{location,"bs_match_r25_SUITE.erl",1173}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,matching_and_andalso_2},2}.
  {label,680}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{97,99}},nil}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,683},
          2,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1173,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{x,1},3}.
    {test,is_ge,{f,681},[{tr,{x,2},{t_integer,{0,255}}},{integer,97}]}.
    {test,is_ge,{f,682},[{integer,122},{tr,{x,2},{t_integer,{97,255}}}]}.
    {jump,{f,683}}.
  {label,681}.
    {test,is_ge,{f,682},[{tr,{x,2},{t_integer,{0,96}}},{integer,65}]}.
    {test,is_ge,{f,683},[{tr,{x,2},{t_integer,{65,96}}},{integer,91}]}.
  {label,682}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    return.
  {label,683}.
    {move,{atom,error},{x,0}}.
    return.


{function, matching_and_andalso_3, 2, 685}.
  {label,684}.
    {line,[{location,"bs_match_r25_SUITE.erl",1181}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,matching_and_andalso_3},2}.
  {label,685}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{97,99}},nil}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,688},
          2,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1181,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,1},{x,1},3}.
    {gc_bif,abs,{f,688},3,[{tr,{x,2},{t_integer,{0,255}}}],{x,2}}.
    {test,is_ge,{f,686},[{tr,{x,2},{t_integer,{0,255}}},{integer,97}]}.
    {test,is_ge,{f,687},[{integer,122},{tr,{x,2},{t_integer,{97,255}}}]}.
    {jump,{f,688}}.
  {label,686}.
    {test,is_ge,{f,687},[{tr,{x,2},{t_integer,{0,96}}},{integer,65}]}.
    {test,is_ge,{f,688},[{tr,{x,2},{t_integer,{65,96}}},{integer,91}]}.
  {label,687}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    return.
  {label,688}.
    {move,{atom,error},{x,0}}.
    return.


{function, otp_7188, 1, 690}.
  {label,689}.
    {line,[{location,"bs_match_r25_SUITE.erl",1188}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,otp_7188},1}.
  {label,690}.
    {test,is_list,{f,689},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<84,65,71,68,117,154,105,232,107,121,0,0,0,0,0,0,0,0,0,0,
                     0,0,0,0,0,0,0,0,0,0,0,0,0,68,97,110,105,101,108,32,76,97,
                     110,100,97,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,66,101,
                     115,116,32,79,102,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
                     0,0,0,0,50,48,48,48,50,48,48,48,32,45,32,66,101,115,116,
                     32,79,102,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,
                     32,12>>},
          {x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1199}]}.
    {call,1,{f,693}}. % parse_v1_or_v11_tag/1
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
     {f,691},
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
  {label,691}.
    {line,[{location,"bs_match_r25_SUITE.erl",1196}]}.
    {badmatch,{x,0}}.


{function, parse_v1_or_v11_tag, 1, 693}.
  {label,692}.
    {line,[{location,"bs_match_r25_SUITE.erl",1201}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,parse_v1_or_v11_tag},1}.
  {label,693}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,256,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_match_string,{f,695},[{x,0},24,{string,<<"TAG">>}]}.
    {test,bs_get_binary2,
          {f,695},
          1,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,30},
           8,
           {field_flags,[{anno,[1201,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_get_binary2,
          {f,695},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,30},
           8,
           {field_flags,[{anno,[1201,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,695},
          3,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,30},
           8,
           {field_flags,[{anno,[1201,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_skip_bits2,
          {f,695},
          [{x,0},
           {integer,4},
           8,
           {field_flags,[{anno,[1201,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_get_position,{x,0},{x,4},4}.
    {test,bs_skip_bits2,
          {f,694},
          [{x,0},
           {integer,28},
           8,
           {field_flags,[{anno,[1201,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_match_string,{f,694},[{x,0},8,{string,<<0>>}]}.
    {test,bs_get_integer2,
          {f,694},
          5,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1201,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_test_tail2,{f,694},[{x,0},8]}.
    {allocate,3,6}.
    {move,{x,5},{y,0}}.
    {move,{x,3},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1207}]}.
    {call,1,{f,697}}. % trim/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {swap,{y,2},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1208}]}.
    {call,1,{f,697}}. % trim/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {swap,{y,1},{x,0}}.
    {call,1,{f,697}}. % trim/1
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
  {label,694}.
    {bs_set_position,{x,0},{x,4}}.
    {test,bs_test_tail2,{f,695},[{x,0},248]}.
    {allocate,2,4}.
    {move,{x,3},{y,0}}.
    {move,{x,2},{y,1}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1215}]}.
    {call,1,{f,697}}. % trim/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {swap,{y,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1216}]}.
    {call,1,{f,697}}. % trim/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {swap,{y,0},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1217}]}.
    {call,1,{f,697}}. % trim/1
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
  {label,695}.
    {move,{atom,error},{x,0}}.
    return.


{function, trim, 1, 697}.
  {label,696}.
    {line,[{location,"bs_match_r25_SUITE.erl",1221}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,trim},1}.
  {label,697}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {allocate,0,1}.
    {line,[{location,"bs_match_r25_SUITE.erl",1222}]}.
    {call_ext,1,{extfunc,erlang,binary_to_list,1}}.
    {call,1,{f,699}}. % trim_blanks/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {call_ext_last,1,{extfunc,erlang,list_to_binary,1},0}.


{function, trim_blanks, 1, 699}.
  {label,698}.
    {line,[{location,"bs_match_r25_SUITE.erl",1224}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,trim_blanks},1}.
  {label,699}.
    {allocate,0,1}.
    {line,[{location,"bs_match_r25_SUITE.erl",1225}]}.
    {call_ext,1,{extfunc,lists,reverse,1}}.
    {call,1,{f,701}}. % skip_blanks_and_zero/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {call_ext_last,1,{extfunc,lists,reverse,1},0}.


{function, skip_blanks_and_zero, 1, 701}.
  {label,700}.
    {line,[{location,"bs_match_r25_SUITE.erl",1227}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,skip_blanks_and_zero},1}.
  {label,701}.
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_nonempty_list,{f,703},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {select_val,{x,1},
                {f,703},
                {list,[{integer,0},{f,702},{integer,32},{f,702}]}}.
  {label,702}.
    {move,{x,2},{x,0}}.
    {call_only,1,{f,701}}. % skip_blanks_and_zero/1
  {label,703}.
    return.


{function, otp_7233, 1, 705}.
  {label,704}.
    {line,[{location,"bs_match_r25_SUITE.erl",1239}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,otp_7233},1}.
  {label,705}.
    {test,is_list,{f,704},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,{rec_otp_7233,<<"XXabcde">>,[{"xxxxxxxx",42}]}},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1240}]}.
    {call,1,{f,709}}. % otp_7233_1/1
    {bif,get,{f,0},[{atom,io_format}],{x,0}}.
    {test,is_eq_exact,
          {f,707},
          [{x,0},{literal,[<<"XXabcde">>,{"xxxxxxxx",42}]}]}.
    {move,{atom,io_format},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1242}]}.
    {call_ext,1,{extfunc,erlang,erase,1}}.
    {move,{literal,{rec_otp_7233,<<"XXabcde">>,[]}},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1243}]}.
    {call,1,{f,709}}. % otp_7233_1/1
    {bif,get,{f,0},[{atom,io_format}],{x,0}}.
    {test,is_eq_exact,{f,706},[{x,0},{atom,undefined}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,706}.
    {line,[{location,"bs_match_r25_SUITE.erl",1244}]}.
    {badmatch,{x,0}}.
  {label,707}.
    {line,[{location,"bs_match_r25_SUITE.erl",1241}]}.
    {badmatch,{x,0}}.


{function, otp_7233_1, 1, 709}.
  {label,708}.
    {line,[{location,"bs_match_r25_SUITE.erl",1247}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,otp_7233_1},1}.
  {label,709}.
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
          {f,712},
          3,
          [{tr,{x,2},{t_bs_context,8}},
           {integer,2},
           8,
           {field_flags,[{anno,[1248,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,712},[{x,2},40]}.
    {test,is_eq_exact,
          {f,711},
          [{tr,{x,3},{t_bitstring,8,false}},{literal,<<"XX">>}]}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {get_tuple_element,{x,0},2,{x,2}}.
    {move,{integer,1},{x,1}}.
    {move,{literal,"xxxxxxxx"},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1252}]}.
    {call_ext,3,{extfunc,lists,keyfind,3}}.
    {test,is_eq_exact,
          {f,710},
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
  {label,710}.
    {test_heap,4,1}.
    {get_tuple_element,{y,0},1,{x,1}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,1},{x,0},{x,1}}.
    {move,{atom,io_format},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1256}]}.
    {call_ext_last,2,{extfunc,erlang,put,2},1}.
  {label,711}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,712}.
    {line,[{location,"bs_match_r25_SUITE.erl",1248}]}.
    {badmatch,{x,1}}.


{function, otp_7240, 1, 714}.
  {label,713}.
    {line,[{location,"bs_match_r25_SUITE.erl",1262}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,otp_7240},1}.
  {label,714}.
    {test,is_list,{f,713},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<>>},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1263}]}.
    {call,2,{f,719}}. % otp_7240_a/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
    {move,{integer,2},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1264}]}.
    {call,2,{f,719}}. % otp_7240_a/2
    {'%',{var_info,{x,0},[{type,{t_atom,[b]}}]}}.
    {move,{literal,<<>>},{x,1}}.
    {move,{atom,anything},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1266}]}.
    {call,2,{f,722}}. % otp_7240_b/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
    {move,{literal,{x,y}},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1267}]}.
    {call,2,{f,722}}. % otp_7240_b/2
    {'%',{var_info,{x,0},[{type,{t_atom,[b]}}]}}.
    {move,{literal,<<>>},{x,1}}.
    {move,{atom,anything},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1269}]}.
    {call,2,{f,725}}. % otp_7240_c/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
    {move,{literal,<<2>>},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1270}]}.
    {call,2,{f,725}}. % otp_7240_c/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b]}}]}}.
    {test,is_eq_exact,{f,717},[{tr,{x,0},{t_atom,[a,b]}},{atom,b}]}.
    {move,{literal,<<>>},{x,1}}.
    {move,{atom,anything},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1272}]}.
    {call,2,{f,729}}. % otp_7240_d/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b]}}]}}.
    {test,is_eq_exact,{f,716},[{tr,{x,0},{t_atom,[a,b]}},{atom,a}]}.
    {move,{literal,<<2>>},{x,1}}.
    {move,{atom,again},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1273}]}.
    {call,2,{f,729}}. % otp_7240_d/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b]}}]}}.
    {test,is_eq_exact,{f,715},[{tr,{x,0},{t_atom,[a,b]}},{atom,b}]}.
    {move,{literal,<<>>},{x,1}}.
    {move,{atom,anything},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1275}]}.
    {call,2,{f,733}}. % otp_7240_e/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
    {move,{integer,41},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1276}]}.
    {call,2,{f,733}}. % otp_7240_e/2
    {'%',{var_info,{x,0},[{type,{t_atom,[b]}}]}}.
    {move,{literal,<<>>},{x,1}}.
    {move,{atom,anything},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1278}]}.
    {call,2,{f,736}}. % otp_7240_f/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
    {move,{literal,{}},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1279}]}.
    {call,2,{f,736}}. % otp_7240_f/2
    {'%',{var_info,{x,0},[{type,{t_atom,[b]}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,715}.
    {line,[{location,"bs_match_r25_SUITE.erl",1273}]}.
    {badmatch,{atom,a}}.
  {label,716}.
    {line,[{location,"bs_match_r25_SUITE.erl",1272}]}.
    {badmatch,{atom,b}}.
  {label,717}.
    {line,[{location,"bs_match_r25_SUITE.erl",1270}]}.
    {badmatch,{atom,a}}.


{function, otp_7240_a, 2, 719}.
  {label,718}.
    {line,[{location,"bs_match_r25_SUITE.erl",1283}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,otp_7240_a},2}.
  {label,719}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,1}}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_union,none,none,
                                   {t_integer,{2,2}},
                                   none,
                                   {t_bitstring,256,true}}}]}}.
    {test,is_eq_exact,
          {f,720},
          [{tr,{x,1},
               {t_union,none,none,
                        {t_integer,{2,2}},
                        none,
                        {t_bitstring,256,true}}},
           {literal,<<>>}]}.
    {move,{atom,a},{x,0}}.
    return.
  {label,720}.
    {test,is_eq_exact,{f,718},[{tr,{x,0},{t_integer,{0,1}}},{integer,1}]}.
    {test,is_eq_exact,
          {f,718},
          [{tr,{x,1},
               {t_union,none,none,
                        {t_integer,{2,2}},
                        none,
                        {t_bitstring,256,true}}},
           {integer,2}]}.
    {move,{atom,b},{x,0}}.
    return.


{function, otp_7240_b, 2, 722}.
  {label,721}.
    {line,[{location,"bs_match_r25_SUITE.erl",1286}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,otp_7240_b},2}.
  {label,722}.
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
          {f,723},
          [{tr,{x,1},
               {t_union,none,none,none,
                        [{{2,{t_atom,[x]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[x]},2 => {t_atom,[y]}}}}],
                        {t_bitstring,256,true}}},
           {literal,<<>>}]}.
    {move,{atom,a},{x,0}}.
    return.
  {label,723}.
    {test,is_eq_exact,
          {f,721},
          [{tr,{x,0},
               {t_union,{t_atom,[anything]},none,{t_integer,{1,1}},none,none}},
           {integer,1}]}.
    {test,is_tuple,
          {f,721},
          [{tr,{x,1},
               {t_union,none,none,none,
                        [{{2,{t_atom,[x]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[x]},2 => {t_atom,[y]}}}}],
                        {t_bitstring,256,true}}}]}.
    {move,{atom,b},{x,0}}.
    return.


{function, otp_7240_c, 2, 725}.
  {label,724}.
    {line,[{location,"bs_match_r25_SUITE.erl",1289}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,otp_7240_c},2}.
  {label,725}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[anything]},
                                   none,
                                   {t_integer,{1,1}},
                                   none,none}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {test,bs_match_string,{f,726},[{x,1},8,{string,<<2>>}]}.
    {test,bs_test_tail2,{f,726},[{x,1},0]}.
    {test,is_eq_exact,
          {f,726},
          [{tr,{x,0},
               {t_union,{t_atom,[anything]},none,{t_integer,{1,1}},none,none}},
           {integer,1}]}.
    {move,{atom,b},{x,0}}.
    return.
  {label,726}.
    {bs_set_position,{x,1},{x,2}}.
    {test,bs_test_tail2,{f,727},[{x,1},0]}.
    {move,{atom,a},{x,0}}.
    return.
  {label,727}.
    {bs_get_tail,{x,1},{x,1},2}.
    {jump,{f,724}}.


{function, otp_7240_d, 2, 729}.
  {label,728}.
    {line,[{location,"bs_match_r25_SUITE.erl",1292}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,otp_7240_d},2}.
  {label,729}.
    {'%',{var_info,{x,0},[{type,{t_atom,[again,anything]}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {test,bs_match_string,{f,730},[{x,1},8,{string,<<2>>}]}.
    {test,bs_test_tail2,{f,730},[{x,1},0]}.
    {move,{atom,b},{x,0}}.
    return.
  {label,730}.
    {bs_set_position,{x,1},{x,2}}.
    {test,bs_test_tail2,{f,731},[{x,1},0]}.
    {move,{atom,a},{x,0}}.
    return.
  {label,731}.
    {bs_get_tail,{x,1},{x,1},2}.
    {jump,{f,728}}.


{function, otp_7240_e, 2, 733}.
  {label,732}.
    {line,[{location,"bs_match_r25_SUITE.erl",1295}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,otp_7240_e},2}.
  {label,733}.
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
          {f,734},
          [{tr,{x,1},
               {t_union,none,none,
                        {t_integer,{41,41}},
                        none,
                        {t_bitstring,256,true}}},
           {literal,<<>>}]}.
    {move,{atom,a},{x,0}}.
    return.
  {label,734}.
    {test,is_eq_exact,
          {f,732},
          [{tr,{x,0},
               {t_union,{t_atom,[anything]},none,{t_integer,{1,1}},none,none}},
           {integer,1}]}.
    {test,is_lt,
          {f,732},
          [{tr,{x,1},
               {t_union,none,none,
                        {t_integer,{41,41}},
                        none,
                        {t_bitstring,256,true}}},
           {integer,42}]}.
    {move,{atom,b},{x,0}}.
    return.


{function, otp_7240_f, 2, 736}.
  {label,735}.
    {line,[{location,"bs_match_r25_SUITE.erl",1298}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,otp_7240_f},2}.
  {label,736}.
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
          {f,737},
          [{tr,{x,1},
               {t_union,none,none,none,
                        {t_tuple,0,true,#{}},
                        {t_bitstring,256,true}}},
           {literal,<<>>}]}.
    {move,{atom,a},{x,0}}.
    return.
  {label,737}.
    {test,is_eq_exact,
          {f,735},
          [{tr,{x,0},
               {t_union,{t_atom,[anything]},none,{t_integer,{1,1}},none,none}},
           {integer,1}]}.
    {test,is_tuple,
          {f,735},
          [{tr,{x,1},
               {t_union,none,none,none,
                        {t_tuple,0,true,#{}},
                        {t_bitstring,256,true}}}]}.
    {move,{atom,b},{x,0}}.
    return.


{function, otp_7498, 1, 739}.
  {label,738}.
    {line,[{location,"bs_match_r25_SUITE.erl",1301}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,otp_7498},1}.
  {label,739}.
    {test,is_list,{f,738},[{x,0}]}.
    {allocate,0,0}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1302}]}.
    {call,2,{f,749}}. % otp_7498_foo/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,747},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<1,2,3>>}]}.
    {move,{integer,1},{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1303}]}.
    {call,2,{f,749}}. % otp_7498_foo/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,746},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<2,3>>}]}.
    {move,{integer,2},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1304}]}.
    {call,2,{f,749}}. % otp_7498_foo/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,745},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<1,2,3>>}]}.
    {move,{integer,0},{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1306}]}.
    {call,2,{f,753}}. % otp_7498_bar/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,744},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<1,2,3>>}]}.
    {move,{integer,1},{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1307}]}.
    {call,2,{f,753}}. % otp_7498_bar/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,743},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<2,3>>}]}.
    {move,{integer,2},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1308}]}.
    {call,2,{f,753}}. % otp_7498_bar/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,742},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<1,2,3>>}]}.
    {move,{integer,2},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1309}]}.
    {call,2,{f,753}}. % otp_7498_bar/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,741},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<>>}]}.
    {move,{integer,3},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1310}]}.
    {call,2,{f,753}}. % otp_7498_bar/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,740},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<1,2,3>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,740}.
    {badmatch,{x,0}}.
  {label,741}.
    {line,[{location,"bs_match_r25_SUITE.erl",1309}]}.
    {badmatch,{x,0}}.
  {label,742}.
    {line,[{location,"bs_match_r25_SUITE.erl",1308}]}.
    {badmatch,{x,0}}.
  {label,743}.
    {line,[{location,"bs_match_r25_SUITE.erl",1307}]}.
    {badmatch,{x,0}}.
  {label,744}.
    {line,[{location,"bs_match_r25_SUITE.erl",1306}]}.
    {badmatch,{x,0}}.
  {label,745}.
    {line,[{location,"bs_match_r25_SUITE.erl",1304}]}.
    {badmatch,{x,0}}.
  {label,746}.
    {line,[{location,"bs_match_r25_SUITE.erl",1303}]}.
    {badmatch,{x,0}}.
  {label,747}.
    {line,[{location,"bs_match_r25_SUITE.erl",1302}]}.
    {badmatch,{x,0}}.


{function, otp_7498_foo, 2, 749}.
  {label,748}.
    {line,[{location,"bs_match_r25_SUITE.erl",1314}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,otp_7498_foo},2}.
  {label,749}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,43}}}]}}.
    {test,is_eq_exact,{f,750},[{tr,{x,1},{t_integer,{0,43}}},{integer,0}]}.
    {move,{integer,42},{x,1}}.
    {call_only,2,{f,749}}. % otp_7498_foo/2
  {label,750}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,2}}.
    {test,bs_skip_bits2,
          {f,751},
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[1316,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_get_tail,{x,2},{x,2},3}.
    {test,is_eq_exact,{f,751},[{tr,{x,1},{t_integer,{1,43}}},{integer,1}]}.
    {move,{integer,43},{x,1}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,749}}. % otp_7498_foo/2
  {label,751}.
    return.


{function, otp_7498_bar, 2, 753}.
  {label,752}.
    {line,[{location,"bs_match_r25_SUITE.erl",1321}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,otp_7498_bar},2}.
  {label,753}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,44}}}]}}.
    {test,is_eq_exact,{f,754},[{tr,{x,1},{t_integer,{0,44}}},{integer,0}]}.
    {move,{integer,42},{x,1}}.
    {call_only,2,{f,753}}. % otp_7498_bar/2
  {label,754}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,2}}.
    {bs_get_position,{x,2},{x,3},3}.
    {test,bs_skip_bits2,
          {f,755},
          [{x,2},
           {integer,8},
           1,
           {field_flags,[{anno,[1323,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_get_tail,{x,2},{x,4},4}.
    {test,is_eq_exact,{f,755},[{tr,{x,1},{t_integer,{1,44}}},{integer,1}]}.
    {move,{integer,43},{x,1}}.
    {move,{x,4},{x,0}}.
    {call_only,2,{f,753}}. % otp_7498_bar/2
  {label,755}.
    {bs_set_position,{x,2},{x,3}}.
    {test,bs_test_tail2,{f,756},[{x,2},0]}.
    {test,is_eq_exact,{f,756},[{tr,{x,1},{t_integer,{1,44}}},{integer,2}]}.
    {move,{integer,44},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {call_only,2,{f,753}}. % otp_7498_bar/2
  {label,756}.
    return.


{function, match_string, 1, 758}.
  {label,757}.
    {line,[{location,"bs_match_r25_SUITE.erl",1331}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,match_string},1}.
  {label,758}.
    {test,is_list,{f,757},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{atom,endian},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1337}]}.
    {call_ext,1,{extfunc,erlang,system_info,1}}.
    {select_val,{x,0},
                {f,770},
                {list,[{atom,big},{f,760},{atom,little},{f,759}]}}.
  {label,759}.
    {move,{literal,<<97,0,98,0>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1339}]}.
    {call,1,{f,772}}. % do_match_string_native/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {jump,{f,761}}.
  {label,760}.
    {move,{literal,<<0,97,0,98>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1341}]}.
    {call,1,{f,772}}. % do_match_string_native/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,761}.
    {move,{literal,<<0,97,0,98>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1344}]}.
    {call,1,{f,775}}. % do_match_string_big/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<97,0,98,0>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1345}]}.
    {call,1,{f,777}}. % do_match_string_little/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<"ÿÿ">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1347}]}.
    {call,1,{f,780}}. % do_match_string_big_signed/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<"ÿÿ">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1348}]}.
    {call,1,{f,783}}. % do_match_string_little_signed/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1350}]}.
    {call,1,{f,786}}. % no_match_string_opt/1
    {'%',{var_info,{x,0},[{type,{t_atom,[plain,strange]}}]}}.
    {test,is_eq_exact,
          {f,769},
          [{tr,{x,0},{t_atom,[plain,strange]}},{atom,plain}]}.
    {move,{literal,<<48,152,140,3:3>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1351}]}.
    {call,1,{f,786}}. % no_match_string_opt/1
    {'%',{var_info,{x,0},[{type,{t_atom,[plain,strange]}}]}}.
    {test,is_eq_exact,
          {f,768},
          [{tr,{x,0},{t_atom,[plain,strange]}},{atom,strange}]}.
    {move,{literal,<<"d">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1353}]}.
    {call,1,{f,1778}}. % id/1
    {call,1,{f,791}}. % do_match_string_tail/1
    {'%',{var_info,{x,0},[{type,{t_atom,[d,dd]}}]}}.
    {test,is_eq_exact,{f,767},[{tr,{x,0},{t_atom,[d,dd]}},{atom,d}]}.
    {move,{literal,<<"dd">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1354}]}.
    {call,1,{f,1778}}. % id/1
    {call,1,{f,791}}. % do_match_string_tail/1
    {'%',{var_info,{x,0},[{type,{t_atom,[d,dd]}}]}}.
    {test,is_eq_exact,{f,766},[{tr,{x,0},{t_atom,[d,dd]}},{atom,dd}]}.
    {move,{literal,<<"a">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1356}]}.
    {call,1,{f,1778}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,0},{x,0}}.
    {call,1,{f,1778}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {call,2,{f,795}}. % do_match_string_var_size/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a,ab]}}]}}.
    {test,is_eq_exact,{f,765},[{tr,{x,0},{t_atom,[a,ab]}},{atom,a}]}.
    {move,{literal,<<"ab">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1357}]}.
    {call,1,{f,1778}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,8},{x,0}}.
    {call,1,{f,1778}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {call,2,{f,795}}. % do_match_string_var_size/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a,ab]}}]}}.
    {test,is_eq_exact,{f,764},[{tr,{x,0},{t_atom,[a,ab]}},{atom,a}]}.
    {move,{literal,<<"ab">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1358}]}.
    {call,1,{f,1778}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,0},{x,0}}.
    {call,1,{f,1778}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {call,2,{f,795}}. % do_match_string_var_size/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a,ab]}}]}}.
    {test,is_eq_exact,{f,763},[{tr,{x,0},{t_atom,[a,ab]}},{atom,ab}]}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1359}]}.
    {call,1,{f,1778}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,8},{x,0}}.
    {call,1,{f,1778}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {call,2,{f,795}}. % do_match_string_var_size/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a,ab]}}]}}.
    {test,is_eq_exact,{f,762},[{tr,{x,0},{t_atom,[a,ab]}},{atom,ab}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,762}.
    {badmatch,{atom,a}}.
  {label,763}.
    {line,[{location,"bs_match_r25_SUITE.erl",1358}]}.
    {badmatch,{atom,a}}.
  {label,764}.
    {line,[{location,"bs_match_r25_SUITE.erl",1357}]}.
    {badmatch,{atom,ab}}.
  {label,765}.
    {line,[{location,"bs_match_r25_SUITE.erl",1356}]}.
    {badmatch,{atom,ab}}.
  {label,766}.
    {line,[{location,"bs_match_r25_SUITE.erl",1354}]}.
    {badmatch,{atom,d}}.
  {label,767}.
    {line,[{location,"bs_match_r25_SUITE.erl",1353}]}.
    {badmatch,{atom,dd}}.
  {label,768}.
    {line,[{location,"bs_match_r25_SUITE.erl",1351}]}.
    {badmatch,{atom,plain}}.
  {label,769}.
    {line,[{location,"bs_match_r25_SUITE.erl",1350}]}.
    {badmatch,{atom,strange}}.
  {label,770}.
    {line,[{location,"bs_match_r25_SUITE.erl",1337}]}.
    {case_end,{x,0}}.


{function, do_match_string_native, 1, 772}.
  {label,771}.
    {line,[{location,"bs_match_r25_SUITE.erl",1363}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_match_string_native},1}.
  {label,772}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,32,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {test,bs_get_integer2,
          {f,773},
          2,
          [{tr,{x,0},{t_bs_context,32}},
           {integer,16},
           1,
           {field_flags,[{anno,[1363,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,native]}],
          {x,2}}.
    {test,is_eq_exact,{f,773},[{tr,{x,2},{t_integer,{0,65535}}},{integer,97}]}.
    {test,bs_get_integer2,
          {f,773},
          2,
          [{tr,{x,0},{t_bs_context,16}},
           {integer,16},
           1,
           {field_flags,[{anno,[1363,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,native]}],
          {x,2}}.
    {test,is_eq_exact,{f,773},[{tr,{x,2},{t_integer,{0,65535}}},{integer,98}]}.
    {test,bs_test_tail2,{f,773},[{x,0},0]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,773}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,771}}.


{function, do_match_string_big, 1, 775}.
  {label,774}.
    {line,[{location,"bs_match_r25_SUITE.erl",1365}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_match_string_big},1}.
  {label,775}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,false}}]}}.
    {test,is_eq_exact,
          {f,774},
          [{tr,{x,0},{t_bitstring,32,false}},{literal,<<0,97,0,98>>}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, do_match_string_little, 1, 777}.
  {label,776}.
    {line,[{location,"bs_match_r25_SUITE.erl",1367}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_match_string_little},1}.
  {label,777}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,32,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {test,bs_match_string,{f,778},[{x,0},32,{string,<<97,0,98,0>>}]}.
    {test,bs_test_tail2,{f,778},[{x,0},0]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,778}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,776}}.


{function, do_match_string_big_signed, 1, 780}.
  {label,779}.
    {line,[{location,"bs_match_r25_SUITE.erl",1369}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_match_string_big_signed},1}.
  {label,780}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,16,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {test,bs_match_string,{f,781},[{x,0},16,{string,<<"ÿÿ">>}]}.
    {test,bs_test_tail2,{f,781},[{x,0},0]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,781}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,779}}.


{function, do_match_string_little_signed, 1, 783}.
  {label,782}.
    {line,[{location,"bs_match_r25_SUITE.erl",1371}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,do_match_string_little_signed},
               1}.
  {label,783}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,16,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {test,bs_match_string,{f,784},[{x,0},16,{string,<<"ÿÿ">>}]}.
    {test,bs_test_tail2,{f,784},[{x,0},0]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,784}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,782}}.


{function, no_match_string_opt, 1, 786}.
  {label,785}.
    {line,[{location,"bs_match_r25_SUITE.erl",1373}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,no_match_string_opt},1}.
  {label,786}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,1,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {test,bs_get_integer2,
          {f,789},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1373,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {select_val,{tr,{x,2},{t_integer,{0,255}}},
                {f,789},
                {list,[{integer,48},{f,788},{integer,97},{f,787}]}}.
  {label,787}.
    {test,bs_match_string,{f,789},[{x,0},16,{string,<<"bc">>}]}.
    {test,bs_test_tail2,{f,789},[{x,0},0]}.
    {move,{atom,plain},{x,0}}.
    return.
  {label,788}.
    {test,bs_match_string,{f,789},[{x,0},19,{string,<<152,140,96>>}]}.
    {test,bs_test_tail2,{f,789},[{x,0},0]}.
    {move,{atom,strange},{x,0}}.
    return.
  {label,789}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,785}}.


{function, do_match_string_tail, 1, 791}.
  {label,790}.
    {line,[{location,"bs_match_r25_SUITE.erl",1378}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_match_string_tail},1}.
  {label,791}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,790},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_match_string,{f,793},[{x,1},8,{string,<<"d">>}]}.
    {bs_get_position,{x,1},{x,2},2}.
    {test,bs_get_integer2,
          {f,792},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1378,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,792},[{tr,{x,3},{t_integer,{0,255}}},{integer,100}]}.
    {test,bs_test_unit,{f,792},[{x,1},8]}.
    {move,{atom,dd},{x,0}}.
    return.
  {label,792}.
    {bs_set_position,{x,1},{x,2}}.
    {test,bs_test_unit,{f,793},[{x,1},8]}.
    {move,{atom,d},{x,0}}.
    return.
  {label,793}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,790}}.


{function, do_match_string_var_size, 2, 795}.
  {label,794}.
    {line,[{location,"bs_match_r25_SUITE.erl",1380}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_match_string_var_size},2}.
  {label,795}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,798},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {test,bs_match_string,{f,797},[{x,2},8,{string,<<"a">>}]}.
    {bs_get_position,{x,2},{x,3},3}.
    {test,bs_get_integer2,
          {f,796},
          4,
          [{tr,{x,2},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1381,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,is_eq_exact,{f,796},[{tr,{x,4},{t_integer,{0,255}}},{integer,98}]}.
    {test,bs_skip_bits2,
          {f,796},
          [{x,2},
           {x,1},
           1,
           {field_flags,[{anno,[1381,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_test_tail2,{f,796},[{x,2},0]}.
    {move,{atom,ab},{x,0}}.
    return.
  {label,796}.
    {bs_set_position,{x,2},{x,3}}.
    {test,bs_skip_bits2,
          {f,797},
          [{x,2},
           {x,1},
           1,
           {field_flags,[{anno,[1381,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_test_tail2,{f,797},[{x,2},0]}.
    {move,{atom,a},{x,0}}.
    return.
  {label,797}.
    {bs_set_position,{x,2},{x,0}}.
    {bs_get_tail,{x,2},{x,0},3}.
    {line,[{location,"bs_match_r25_SUITE.erl",1381}]}.
    {case_end,{x,0}}.
  {label,798}.
    {case_end,{x,0}}.


{function, zero_width, 1, 800}.
  {label,799}.
    {line,[{location,"bs_match_r25_SUITE.erl",1385}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,zero_width},1}.
  {label,800}.
    {test,is_list,{f,799},[{x,0}]}.
    {move,{literal,<<2,0,104,105>>},{x,0}}.
    {bs_start_match4,{atom,no_fail},0,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,806},
          1,
          [{tr,{x,0},{t_bs_context,32}},
           {integer,16},
           1,
           {field_flags,[{anno,[1386,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,little]}],
          {x,1}}.
    {test,bs_get_binary2,
          {f,806},
          2,
          [{tr,{x,0},{t_bs_context,16}},
           {tr,{x,1},{t_integer,{0,65535}}},
           8,
           {field_flags,[{anno,[1386,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,806},[{x,0},0]}.
    {test,is_eq_exact,{f,805},[{tr,{x,1},{t_integer,{0,65535}}},{integer,2}]}.
    {test,is_eq_exact,
          {f,804},
          [{tr,{x,2},{t_bitstring,8,false}},{literal,<<"hi">>}]}.
    {allocate,0,0}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1391}]}.
    {call,1,{f,1778}}. % id/1
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1401}]}.
    {call,1,{f,1919}}. % '-zero_width/1-fun-0-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[no_match,star]},
                                   none,
                                   {t_integer,{0,0}},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,803},
          [{tr,{x,0},
               {t_union,{t_atom,[no_match,star]},
                        none,
                        {t_integer,{0,0}},
                        none,none}},
           {atom,star}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1402}]}.
    {call,1,{f,1919}}. % '-zero_width/1-fun-0-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[no_match,star]},
                                   none,
                                   {t_integer,{0,0}},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,802},
          [{tr,{x,0},
               {t_union,{t_atom,[no_match,star]},
                        none,
                        {t_integer,{0,0}},
                        none,none}},
           {integer,0}]}.
    {move,{literal,<<1>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1403}]}.
    {call,1,{f,1919}}. % '-zero_width/1-fun-0-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[no_match,star]},
                                   none,
                                   {t_integer,{0,0}},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,801},
          [{tr,{x,0},
               {t_union,{t_atom,[no_match,star]},
                        none,
                        {t_integer,{0,0}},
                        none,none}},
           {atom,no_match}]}.
    {move,{atom,whatever},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1404}]}.
    {call,1,{f,1919}}. % '-zero_width/1-fun-0-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[no_match]}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,801}.
    {line,[{location,"bs_match_r25_SUITE.erl",1403}]}.
    {badmatch,{x,0}}.
  {label,802}.
    {line,[{location,"bs_match_r25_SUITE.erl",1402}]}.
    {badmatch,{x,0}}.
  {label,803}.
    {line,[{location,"bs_match_r25_SUITE.erl",1401}]}.
    {badmatch,{x,0}}.
  {label,804}.
    {line,[{location,"bs_match_r25_SUITE.erl",1388}]}.
    {badmatch,{literal,<<"hi">>}}.
  {label,805}.
    {line,[{location,"bs_match_r25_SUITE.erl",1387}]}.
    {badmatch,{x,1}}.
  {label,806}.
    {line,[{location,"bs_match_r25_SUITE.erl",1386}]}.
    {badmatch,{literal,<<2,0,104,105>>}}.


{function, bad_size, 1, 808}.
  {label,807}.
    {line,[{location,"bs_match_r25_SUITE.erl",1410}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bad_size},1}.
  {label,808}.
    {test,is_list,{f,807},[{x,0}]}.
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
    {'catch',{y,18},{f,809}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1416}]}.
    {call,1,{f,1778}}. % id/1
    {badmatch,{x,0}}.
  {label,809}.
    {catch_end,{y,18}}.
    {test,is_tagged_tuple,{f,855},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,855},[{x,1}]}.
    {test,test_arity,{f,855},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,855},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,17},{f,810}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,"$"},{location,"bs_match_r25_SUITE.erl",1417}]}.
    {call,1,{f,1778}}. % id/1
    {badmatch,{x,0}}.
  {label,810}.
    {catch_end,{y,17}}.
    {test,is_tagged_tuple,{f,854},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,854},[{x,1}]}.
    {test,test_arity,{f,854},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,854},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,16},{f,811}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,"\""},{location,"bs_match_r25_SUITE.erl",1418}]}.
    {call,1,{f,1778}}. % id/1
    {badmatch,{x,0}}.
  {label,811}.
    {catch_end,{y,16}}.
    {test,is_tagged_tuple,{f,853},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,853},[{x,1}]}.
    {test,test_arity,{f,853},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,853},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,15},{f,812}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope," "},{location,"bs_match_r25_SUITE.erl",1419}]}.
    {call,1,{f,1778}}. % id/1
    {badmatch,{x,0}}.
  {label,812}.
    {catch_end,{y,15}}.
    {test,is_tagged_tuple,{f,852},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,852},[{x,1}]}.
    {test,test_arity,{f,852},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,852},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,14},{f,813}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[30]},{location,"bs_match_r25_SUITE.erl",1420}]}.
    {call,1,{f,1778}}. % id/1
    {badmatch,{x,0}}.
  {label,813}.
    {catch_end,{y,14}}.
    {test,is_tagged_tuple,{f,851},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,851},[{x,1}]}.
    {test,test_arity,{f,851},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,851},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,13},{f,814}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[28]},{location,"bs_match_r25_SUITE.erl",1421}]}.
    {call,1,{f,1778}}. % id/1
    {badmatch,{x,0}}.
  {label,814}.
    {catch_end,{y,13}}.
    {test,is_tagged_tuple,{f,850},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,850},[{x,1}]}.
    {test,test_arity,{f,850},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,850},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,12},{f,815}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[26]},{location,"bs_match_r25_SUITE.erl",1423}]}.
    {call,1,{f,1778}}. % id/1
    {badmatch,{x,0}}.
  {label,815}.
    {catch_end,{y,12}}.
    {test,is_tagged_tuple,{f,849},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,849},[{x,1}]}.
    {test,test_arity,{f,849},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,849},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,11},{f,816}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[24]},{location,"bs_match_r25_SUITE.erl",1424}]}.
    {call,1,{f,1778}}. % id/1
    {badmatch,{x,0}}.
  {label,816}.
    {catch_end,{y,11}}.
    {test,is_tagged_tuple,{f,848},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,848},[{x,1}]}.
    {test,test_arity,{f,848},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,848},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,10},{f,817}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",1425}]}.
    {call,1,{f,1778}}. % id/1
    {badmatch,{x,0}}.
  {label,817}.
    {catch_end,{y,10}}.
    {test,is_tagged_tuple,{f,847},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,847},[{x,1}]}.
    {test,test_arity,{f,847},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,847},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,9},{f,818}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[20]},{location,"bs_match_r25_SUITE.erl",1426}]}.
    {call,1,{f,1778}}. % id/1
    {badmatch,{x,0}}.
  {label,818}.
    {catch_end,{y,9}}.
    {test,is_tagged_tuple,{f,846},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,846},[{x,1}]}.
    {test,test_arity,{f,846},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,846},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,8},{f,819}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[18]},{location,"bs_match_r25_SUITE.erl",1427}]}.
    {call,1,{f,1778}}. % id/1
    {test,bs_start_match3,{f,828},1,[{x,0}],{x,1}}.
    {test,bs_get_float2,
          {f,828},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,1},
           1,
           {field_flags,[{anno,[1427,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,828},[{tr,{x,2},{t_float,any}},{float,42.0}]}.
    {test,bs_test_tail2,{f,828},[{x,1},0]}.
  {label,819}.
    {catch_end,{y,8}}.
    {test,is_tagged_tuple,{f,845},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,845},[{x,1}]}.
    {test,test_arity,{f,845},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,845},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,7},{f,820}}.
    {move,{literal,<<"ÿÿÿÿ">>},{x,0}}.
    {line,[{scope,[16]},{location,"bs_match_r25_SUITE.erl",1428}]}.
    {call,1,{f,1778}}. % id/1
    {test,bs_start_match3,{f,829},1,[{x,0}],{x,1}}.
    {test,bs_get_float2,
          {f,829},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[1428,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,829},[{tr,{x,2},{t_float,any}},{float,42.0}]}.
    {test,bs_test_tail2,{f,829},[{x,1},0]}.
  {label,820}.
    {catch_end,{y,7}}.
    {test,is_tagged_tuple,{f,844},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,844},[{x,1}]}.
    {test,test_arity,{f,844},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,844},[{x,1},2,{atom,badmatch}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,{f,844},[{x,1},{literal,<<"ÿÿÿÿ">>}]}.
    {'catch',{y,6},{f,821}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_r25_SUITE.erl",1431}]}.
    {call,1,{f,1778}}. % id/1
    {badmatch,{x,0}}.
  {label,821}.
    {catch_end,{y,6}}.
    {test,is_tagged_tuple,{f,843},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,843},[{x,1}]}.
    {test,test_arity,{f,843},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,843},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,5},{f,822}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_match_r25_SUITE.erl",1432}]}.
    {call,1,{f,1778}}. % id/1
    {badmatch,{x,0}}.
  {label,822}.
    {catch_end,{y,5}}.
    {test,is_tagged_tuple,{f,842},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,842},[{x,1}]}.
    {test,test_arity,{f,842},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,842},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,4},{f,823}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,"\n"},{location,"bs_match_r25_SUITE.erl",1433}]}.
    {call,1,{f,1778}}. % id/1
    {badmatch,{x,0}}.
  {label,823}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,841},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,841},[{x,1}]}.
    {test,test_arity,{f,841},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,841},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,3},{f,824}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",1434}]}.
    {call,1,{f,1778}}. % id/1
    {badmatch,{x,0}}.
  {label,824}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,840},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,840},[{x,1}]}.
    {test,test_arity,{f,840},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,840},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,2},{f,825}}.
    {move,{literal,<<1:1>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",1435}]}.
    {call,1,{f,1778}}. % id/1
    {test,bs_start_match3,{f,830},1,[{x,0}],{x,1}}.
    {test,bs_get_float2,
          {f,830},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,1},
           1,
           {field_flags,[{anno,[1435,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,830},[{x,1},0]}.
  {label,825}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,839},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,839},[{x,1}]}.
    {test,test_arity,{f,839},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,839},[{x,1},2,{atom,badmatch}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,bs_start_match3,{f,839},2,[{x,1}],{x,1}}.
    {test,bs_match_string,{f,839},[{x,1},1,{string,<<128>>}]}.
    {test,bs_test_tail2,{f,839},[{x,1},0]}.
    {'catch',{y,1},{f,826}}.
    {move,{literal,<<"ÿÿÿÿ">>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r25_SUITE.erl",1436}]}.
    {call,1,{f,1778}}. % id/1
    {test,bs_start_match3,{f,831},1,[{x,0}],{x,1}}.
    {test,bs_get_float2,
          {f,831},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[1436,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,831},[{x,1},0]}.
  {label,826}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,838},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,838},[{x,1}]}.
    {test,test_arity,{f,838},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,838},[{x,1},2,{atom,badmatch}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,{f,838},[{x,1},{literal,<<"ÿÿÿÿ">>}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",1438}]}.
    {call,1,{f,857}}. % bad_all_size/1
    {'%',{var_info,{x,0},[{type,{t_atom,[no_match]}}]}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",1439}]}.
    {call,1,{f,857}}. % bad_all_size/1
    {'%',{var_info,{x,0},[{type,{t_atom,[no_match]}}]}}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",1441}]}.
    {call,1,{f,871}}. % bad_size_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,true]}}]}}.
    {test,is_eq_exact,{f,837},[{tr,{x,0},{t_atom,[error,true]}},{atom,true}]}.
    {move,{literal,<<0,1>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",1442}]}.
    {call,1,{f,871}}. % bad_size_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,true]}}]}}.
    {test,is_eq_exact,{f,836},[{tr,{x,0},{t_atom,[error,true]}},{atom,error}]}.
    {move,{literal,[a]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",1444}]}.
    {call,1,{f,874}}. % bad_size_2/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{literal,[<<1,2,3>>]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",1445}]}.
    {call,1,{f,874}}. % bad_size_2/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {'catch',{y,0},{f,827}}.
    {move,{atom,no_list},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",1446}]}.
    {call,1,{f,874}}. % bad_size_2/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
  {label,827}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,835},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,835},[{x,1}]}.
    {test,test_arity,{f,835},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,835},[{x,1},{literal,{bad_generator,no_list}}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1448}]}.
    {call,1,{f,876}}. % bad_size_3/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,834},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1449}]}.
    {call,1,{f,876}}. % bad_size_3/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,833},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1451}]}.
    {call,2,{f,1917}}. % '-bad_size/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {call,1,{f,1778}}. % id/1
    {test,is_eq_exact,{f,832},[{x,0},{literal,<<>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,19}.
    return.
  {label,828}.
    {line,[{scope,[17]},{location,"bs_match_r25_SUITE.erl",1427}]}.
    {badmatch,{x,0}}.
  {label,829}.
    {line,[{scope,[15]},{location,"bs_match_r25_SUITE.erl",1428}]}.
    {badmatch,{x,0}}.
  {label,830}.
    {line,[{scope,[5]},{location,"bs_match_r25_SUITE.erl",1435}]}.
    {badmatch,{x,0}}.
  {label,831}.
    {line,[{scope,[3]},{location,"bs_match_r25_SUITE.erl",1436}]}.
    {badmatch,{x,0}}.
  {label,832}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1451}]}.
    {badmatch,{x,0}}.
  {label,833}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1449}]}.
    {badmatch,{atom,ok}}.
  {label,834}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1448}]}.
    {badmatch,{atom,ok}}.
  {label,835}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1446}]}.
    {badmatch,{x,0}}.
  {label,836}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",1442}]}.
    {badmatch,{atom,true}}.
  {label,837}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",1441}]}.
    {badmatch,{atom,error}}.
  {label,838}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",1436}]}.
    {badmatch,{x,0}}.
  {label,839}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",1435}]}.
    {badmatch,{x,0}}.
  {label,840}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",1434}]}.
    {badmatch,{x,0}}.
  {label,841}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",1433}]}.
    {badmatch,{x,0}}.
  {label,842}.
    {line,[{scope,"\n"},{location,"bs_match_r25_SUITE.erl",1432}]}.
    {badmatch,{x,0}}.
  {label,843}.
    {line,[{scope,"\f"},{location,"bs_match_r25_SUITE.erl",1431}]}.
    {badmatch,{x,0}}.
  {label,844}.
    {line,[{scope,[14]},{location,"bs_match_r25_SUITE.erl",1428}]}.
    {badmatch,{x,0}}.
  {label,845}.
    {line,[{scope,[16]},{location,"bs_match_r25_SUITE.erl",1427}]}.
    {badmatch,{x,0}}.
  {label,846}.
    {line,[{scope,[18]},{location,"bs_match_r25_SUITE.erl",1426}]}.
    {badmatch,{x,0}}.
  {label,847}.
    {line,[{scope,[20]},{location,"bs_match_r25_SUITE.erl",1425}]}.
    {badmatch,{x,0}}.
  {label,848}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",1424}]}.
    {badmatch,{x,0}}.
  {label,849}.
    {line,[{scope,[24]},{location,"bs_match_r25_SUITE.erl",1423}]}.
    {badmatch,{x,0}}.
  {label,850}.
    {line,[{scope,[26]},{location,"bs_match_r25_SUITE.erl",1421}]}.
    {badmatch,{x,0}}.
  {label,851}.
    {line,[{scope,[28]},{location,"bs_match_r25_SUITE.erl",1420}]}.
    {badmatch,{x,0}}.
  {label,852}.
    {line,[{scope,[30]},{location,"bs_match_r25_SUITE.erl",1419}]}.
    {badmatch,{x,0}}.
  {label,853}.
    {line,[{scope," "},{location,"bs_match_r25_SUITE.erl",1418}]}.
    {badmatch,{x,0}}.
  {label,854}.
    {line,[{scope,"\""},{location,"bs_match_r25_SUITE.erl",1417}]}.
    {badmatch,{x,0}}.
  {label,855}.
    {line,[{scope,"$"},{location,"bs_match_r25_SUITE.erl",1416}]}.
    {badmatch,{x,0}}.


{function, bad_all_size, 1, 857}.
  {label,856}.
    {line,[{location,"bs_match_r25_SUITE.erl",1455}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bad_all_size},1}.
  {label,857}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1456}]}.
    {call,1,{f,859}}. % bad_all_size_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[no_match]}}]}}.
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1457}]}.
    {call,1,{f,861}}. % bad_all_size_2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[no_match]}}]}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1458}]}.
    {call,1,{f,863}}. % bad_all_size_3/1
    {'%',{var_info,{x,0},[{type,{t_atom,[no_match]}}]}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1459}]}.
    {call,1,{f,865}}. % bad_all_size_4/1
    {'%',{var_info,{x,0},[{type,{t_atom,[no_match]}}]}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1460}]}.
    {call,1,{f,867}}. % bad_all_size_5/1
    {'%',{var_info,{x,0},[{type,{t_atom,[no_match]}}]}}.
    {move,{y,1},{x,0}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {line,[{location,"bs_match_r25_SUITE.erl",1461}]}.
    {call,1,{f,869}}. % bad_all_size_6/1
    {'%',{var_info,{x,0},[{type,{t_atom,[no_match]}}]}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, bad_all_size_1, 1, 859}.
  {label,858}.
    {line,[{location,"bs_match_r25_SUITE.erl",1464}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bad_all_size_1},1}.
  {label,859}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {move,{atom,no_match},{x,0}}.
    return.


{function, bad_all_size_2, 1, 861}.
  {label,860}.
    {line,[{location,"bs_match_r25_SUITE.erl",1470}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bad_all_size_2},1}.
  {label,861}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {move,{atom,no_match},{x,0}}.
    return.


{function, bad_all_size_3, 1, 863}.
  {label,862}.
    {line,[{location,"bs_match_r25_SUITE.erl",1476}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bad_all_size_3},1}.
  {label,863}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {move,{atom,no_match},{x,0}}.
    return.


{function, bad_all_size_4, 1, 865}.
  {label,864}.
    {line,[{location,"bs_match_r25_SUITE.erl",1483}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bad_all_size_4},1}.
  {label,865}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {move,{atom,no_match},{x,0}}.
    return.


{function, bad_all_size_5, 1, 867}.
  {label,866}.
    {line,[{location,"bs_match_r25_SUITE.erl",1490}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bad_all_size_5},1}.
  {label,867}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {move,{atom,no_match},{x,0}}.
    return.


{function, bad_all_size_6, 1, 869}.
  {label,868}.
    {line,[{location,"bs_match_r25_SUITE.erl",1499}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bad_all_size_6},1}.
  {label,869}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {move,{atom,no_match},{x,0}}.
    return.


{function, bad_size_1, 1, 871}.
  {label,870}.
    {line,[{location,"bs_match_r25_SUITE.erl",1508}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bad_size_1},1}.
  {label,871}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,872},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<0>>}]}.
    {move,{atom,true},{x,0}}.
    return.
  {label,872}.
    {move,{atom,error},{x,0}}.
    return.


{function, bad_size_2, 1, 874}.
  {label,873}.
    {line,[{location,"bs_match_r25_SUITE.erl",1514}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bad_size_2},1}.
  {label,874}.
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
    {call_only,1,{f,1913}}. % '-bad_size_2/1-lc$^0/1-0-'/1


{function, bad_size_3, 1, 876}.
  {label,875}.
    {line,[{location,"bs_match_r25_SUITE.erl",1520}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bad_size_3},1}.
  {label,876}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {gc_bif,'div',{f,877},1,[{integer,1},{integer,0}],{x,1}}.
    {gc_bif,'bnot',{f,877},2,[{tr,{x,1},{t_integer,any}}],{x,1}}.
    {jump,{f,878}}.
  {label,877}.
    {move,{atom,bad_size},{x,1}}.
  {label,878}.
    {test,bs_get_integer2,
          {f,879},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {tr,{x,1},
               {t_union,{t_atom,[bad_size]},none,{t_integer,any},none,none}},
           1,
           {field_flags,[{anno,[1520,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,is_eq_exact,{f,879},[{tr,{x,1},{t_integer,{0,'+inf'}}},{integer,0}]}.
    {test,bs_test_tail2,{f,879},[{x,0},0]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,879}.
    {move,{atom,error},{x,0}}.
    return.


{function, haystack, 1, 881}.
  {label,880}.
    {line,[{location,"bs_match_r25_SUITE.erl",1525}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,haystack},1}.
  {label,881}.
    {test,is_list,{f,880},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<0,0,0,0,0,0,0,0,0,0>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1526}]}.
    {call,1,{f,885}}. % haystack_1/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {test,is_eq_exact,
          {f,883},
          [{tr,{x,0},{t_bitstring,16,false}},
           {literal,<<0,0,0,0,0,0,0,0,0,0>>}]}.
    {line,[{location,"bs_match_r25_SUITE.erl",1528}]}.
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
    {call,1,{f,887}}. % haystack_2/1
    {'%',{var_info,{x,0},[{type,{t_cons,{t_bitstring,8,false},nil}}]}}.
    {test,is_eq_exact,
          {f,882},
          [{tr,{x,0},{t_cons,{t_bitstring,8,false},nil}},
           {literal,[<<0,0,0,0,0,0,0,0,0,0>>,
                     <<0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0>>]}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,882}.
    {line,[{location,"bs_match_r25_SUITE.erl",1527}]}.
    {badmatch,{x,0}}.
  {label,883}.
    {line,[{location,"bs_match_r25_SUITE.erl",1526}]}.
    {badmatch,{x,0}}.


{function, haystack_1, 1, 885}.
  {label,884}.
    {line,[{location,"bs_match_r25_SUITE.erl",1532}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,haystack_1},1}.
  {label,885}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{x,0},{x,1}}.
    {move,{literal,"\n"},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1537}]}.
    {call,2,{f,1909}}. % '-haystack_1/1-lc$^0/1-0-'/2
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, haystack_2, 1, 887}.
  {label,886}.
    {line,[{location,"bs_match_r25_SUITE.erl",1541}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,haystack_2},1}.
  {label,887}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,false}}]}}.
    {move,{x,0},{x,1}}.
    {move,{literal,[{687,10},{369,20}]},{x,0}}.
    {call_only,2,{f,1905}}. % '-haystack_2/1-lc$^0/1-0-'/2


{function, fc, 1, 889}.
  {label,888}.
    {line,[{location,"bs_match_r25_SUITE.erl",1548}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,fc},1}.
  {label,889}.
    {test,is_tagged_tuple,{f,888},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,888},[{x,1},2,{atom,function_clause}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, fc, 3, 891}.
  {label,890}.
    {line,[{location,"bs_match_r25_SUITE.erl",1551}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,fc},3}.
  {label,891}.
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
    {test,is_tagged_tuple,{f,890},[{x,2},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,2},1,{x,3}}.
    {test,is_tagged_tuple,{f,890},[{x,3},2,{atom,function_clause}]}.
    {get_tuple_element,{x,3},1,{x,3}}.
    {test,is_nonempty_list,{f,890},[{x,3}]}.
    {get_hd,{x,3},{x,3}}.
    {test,is_tagged_tuple,{f,890},[{x,3},4,{atom,bs_match_r25_SUITE}]}.
    {get_tuple_element,{x,3},1,{x,4}}.
    {test,is_eq_exact,{f,890},[{x,4},{tr,{x,0},{t_atom,any}}]}.
    {get_tuple_element,{x,3},2,{x,3}}.
    {test,is_eq_exact,
          {f,890},
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


{function, cover_beam_bool, 1, 893}.
  {label,892}.
    {line,[{location,"bs_match_r25_SUITE.erl",1559}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,cover_beam_bool},1}.
  {label,893}.
    {test,is_list,{f,892},[{x,0}]}.
    {allocate,0,0}.
    {move,{integer,3},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1560}]}.
    {call,2,{f,898}}. % do_cover_beam_bool/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,2},{x,1}}.
    {move,{literal,<<19>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1561}]}.
    {call,2,{f,898}}. % do_cover_beam_bool/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,896},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<19>>}]}.
    {move,{integer,1},{x,1}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1562}]}.
    {call,2,{f,898}}. % do_cover_beam_bool/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,895},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<"*">>}]}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<13,17>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1563}]}.
    {call,2,{f,898}}. % do_cover_beam_bool/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,894},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<17>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,894}.
    {badmatch,{x,0}}.
  {label,895}.
    {line,[{location,"bs_match_r25_SUITE.erl",1562}]}.
    {badmatch,{x,0}}.
  {label,896}.
    {line,[{location,"bs_match_r25_SUITE.erl",1561}]}.
    {badmatch,{x,0}}.


{function, do_cover_beam_bool, 2, 898}.
  {label,897}.
    {line,[{location,"bs_match_r25_SUITE.erl",1566}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_cover_beam_bool},2}.
  {label,898}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,3}}}]}}.
    {test,is_ge,{f,901},[{tr,{x,1},{t_integer,{0,3}}},{integer,1}]}.
    {select_val,{tr,{x,1},{t_integer,{1,3}}},
                {f,900},
                {list,[{integer,1},{f,899},{integer,2},{f,899}]}}.
  {label,899}.
    return.
  {label,900}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,901}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_skip_bits2,
          {f,902},
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[1573,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_get_tail,{x,1},{x,0},2}.
    {move,{integer,1},{x,1}}.
    {call_only,2,{f,898}}. % do_cover_beam_bool/2
  {label,902}.
    {move,{integer,0},{x,1}}.
    {jump,{f,897}}.


{function, matched_out_size, 1, 904}.
  {label,903}.
    {line,[{location,"bs_match_r25_SUITE.erl",1576}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,matched_out_size},1}.
  {label,904}.
    {test,is_list,{f,903},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<"\býÞ­¾ï">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1577}]}.
    {call,1,{f,916}}. % mos_int/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_integer,{0,'+inf'}},
                       2 => {t_integer,{0,18446744073709551615}}}}}]}}.
    {test,is_eq_exact,
          {f,914},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}},
           {literal,{253,3735928559}}]}.
    {move,{literal,<<3,215,221,251,213,5:3>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1578}]}.
    {call,1,{f,916}}. % mos_int/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_integer,{0,'+inf'}},
                       2 => {t_integer,{0,18446744073709551615}}}}}]}}.
    {test,is_eq_exact,
          {f,913},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}},
           {literal,{6,3203391149}}]}.
    {move,{literal,<<16,0,53,202,254,222,173,190,239,202,254>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1579}]}.
    {call,1,{f,916}}. % mos_int/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_integer,{0,'+inf'}},
                       2 => {t_integer,{0,18446744073709551615}}}}}]}}.
    {test,is_eq_exact,
          {f,912},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}},
           {literal,{53,14627373477560044286}}]}.
    {move,{literal,<<5,190,87,246,245,109,247,126,87,30:5>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1580}]}.
    {call,1,{f,916}}. % mos_int/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_integer,{0,'+inf'}},
                       2 => {t_integer,{0,18446744073709551615}}}}}]}}.
    {test,is_eq_exact,
          {f,911},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}},
           {literal,{23,14627373477560044286}}]}.
    {move,{literal,<<3,1,2,3,4,3>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1582}]}.
    {call,1,{f,1009}}. % mos_bin/1
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
          {f,910},
          [{tr,{x,0},
               {t_union,none,none,none,
                        {t_tuple,2,false,
                                 #{1 => {t_bitstring,8,false},
                                   2 => {t_integer,{0,255}}}},
                        {t_bitstring,8,false}}},
           {literal,{<<1,2,3>>,4}}]}.
    {move,{literal,<<4,1,2,3,7,19,4,42>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1583}]}.
    {call,1,{f,1009}}. % mos_bin/1
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
          {f,909},
          [{tr,{x,0},
               {t_union,none,none,none,
                        {t_tuple,2,false,
                                 #{1 => {t_bitstring,8,false},
                                   2 => {t_integer,{0,255}}}},
                        {t_bitstring,8,false}}},
           {literal,{<<1,2,3,7>>,19,42}}]}.
    {move,{literal,<<4,1,2,3,7,97,98,99,100,101,102,103,104,105,106>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1584}]}.
    {call,1,{f,1009}}. % mos_bin/1
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
          {f,908},
          [{tr,{x,0},
               {t_union,none,none,none,
                        {t_tuple,2,false,
                                 #{1 => {t_bitstring,8,false},
                                   2 => {t_integer,{0,255}}}},
                        {t_bitstring,8,false}}},
           {literal,<<1,2,3,7>>}]}.
    {move,{atom,not_a_binary},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1586}]}.
    {call,1,{f,1027}}. % mos_verify_sig/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false]}}]}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1587}]}.
    {call,1,{f,1027}}. % mos_verify_sig/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[false]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,907},
          [{tr,{x,0},
               {t_union,{t_atom,[false]},
                        none,none,none,
                        {t_bitstring,8,false}}},
           {atom,false}]}.
    {move,{literal,<<0,0,0,42>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1588}]}.
    {call,1,{f,1027}}. % mos_verify_sig/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[false]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,906},
          [{tr,{x,0},
               {t_union,{t_atom,[false]},
                        none,none,none,
                        {t_bitstring,8,false}}},
           {atom,false}]}.
    {line,[{location,"bs_match_r25_SUITE.erl",1589}]}.
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
    {call,1,{f,1027}}. % mos_verify_sig/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[false]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,905},
          [{tr,{x,0},
               {t_union,{t_atom,[false]},
                        none,none,none,
                        {t_bitstring,8,false}}},
           {literal,<<"123456789">>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,905}.
    {badmatch,{x,0}}.
  {label,906}.
    {line,[{location,"bs_match_r25_SUITE.erl",1588}]}.
    {badmatch,{x,0}}.
  {label,907}.
    {line,[{location,"bs_match_r25_SUITE.erl",1587}]}.
    {badmatch,{x,0}}.
  {label,908}.
    {line,[{location,"bs_match_r25_SUITE.erl",1584}]}.
    {badmatch,{x,0}}.
  {label,909}.
    {line,[{location,"bs_match_r25_SUITE.erl",1583}]}.
    {badmatch,{x,0}}.
  {label,910}.
    {line,[{location,"bs_match_r25_SUITE.erl",1582}]}.
    {badmatch,{x,0}}.
  {label,911}.
    {line,[{location,"bs_match_r25_SUITE.erl",1580}]}.
    {badmatch,{x,0}}.
  {label,912}.
    {line,[{location,"bs_match_r25_SUITE.erl",1579}]}.
    {badmatch,{x,0}}.
  {label,913}.
    {line,[{location,"bs_match_r25_SUITE.erl",1578}]}.
    {badmatch,{x,0}}.
  {label,914}.
    {line,[{location,"bs_match_r25_SUITE.erl",1577}]}.
    {badmatch,{x,0}}.


{function, mos_int, 1, 916}.
  {label,915}.
    {line,[{location,"bs_match_r25_SUITE.erl",1593}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,mos_int},1}.
  {label,916}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {allocate,4,1}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{x,0},{y,3}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1594}]}.
    {call,1,{f,935}}. % mos_int_plain/1
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
    {line,[{location,"bs_match_r25_SUITE.erl",1595}]}.
    {call,1,{f,939}}. % mos_int_list/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_integer,{0,'+inf'}},
                       2 => {t_integer,{0,18446744073709551615}}}}}]}}.
    {test,is_eq_exact,
          {f,933},
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
    {line,[{location,"bs_match_r25_SUITE.erl",1596}]}.
    {call,1,{f,942}}. % mos_int_tuple/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_integer,{0,'+inf'}},
                       2 => {t_integer,{0,18446744073709551615}}}}}]}}.
    {test,is_eq_exact,
          {f,932},
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
    {line,[{location,"bs_match_r25_SUITE.erl",1598}]}.
    {call,1,{f,945}}. % mos_int_mixed/1
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
          {f,931},
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
    {line,[{location,"bs_match_r25_SUITE.erl",1599}]}.
    {call,1,{f,945}}. % mos_int_mixed/1
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
          {f,930},
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
    {line,[{location,"bs_match_r25_SUITE.erl",1600}]}.
    {call,1,{f,945}}. % mos_int_mixed/1
    {'%',{var_info,{x,0},[{type,{t_integer,{42,42}}}]}}.
    {test_heap,6,0}.
    {put_list,{y,3},nil,{x,0}}.
    {put_list,{y,3},{x,0},{x,0}}.
    {put_list,{y,3},{x,0},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1601}]}.
    {call,1,{f,945}}. % mos_int_mixed/1
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
          {f,929},
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
    {line,[{location,"bs_match_r25_SUITE.erl",1603}]}.
    {call,2,{f,952}}. % mos_int_pats1/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_integer,{0,'+inf'}},
                       2 => {t_integer,{0,18446744073709551615}}}}}]}}.
    {test,is_eq_exact,
          {f,928},
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
    {line,[{location,"bs_match_r25_SUITE.erl",1604}]}.
    {call,3,{f,955}}. % mos_int_pats2/3
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_integer,{0,'+inf'}},
                       2 => {t_integer,{0,18446744073709551615}}}}}]}}.
    {test,is_eq_exact,
          {f,927},
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
    {line,[{location,"bs_match_r25_SUITE.erl",1606}]}.
    {call,2,{f,958}}. % mos_int_pats3/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_integer,{0,'+inf'}},
                       2 => {t_integer,{0,18446744073709551615}}}}}]}}.
    {test,is_eq_exact,
          {f,926},
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
    {line,[{location,"bs_match_r25_SUITE.erl",1607}]}.
    {call,1,{f,961}}. % mos_int_map/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_integer,{0,'+inf'}},
                       2 => {t_integer,{0,18446744073709551615}}}}}]}}.
    {test,is_eq_exact,
          {f,925},
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
    {line,[{location,"bs_match_r25_SUITE.erl",1609}]}.
    {call,2,{f,964}}. % mos_int_map/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_integer,{0,'+inf'}},
                       2 => {t_integer,{0,18446744073709551615}}}}}]}}.
    {test,is_eq_exact,
          {f,924},
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
    {line,[{location,"bs_match_r25_SUITE.erl",1610}]}.
    {call,1,{f,968}}. % mos_int_alias/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,{0,'+inf'}},
                                     2 => {t_integer,{0,18446744073709551615}},
                                     3 => {t_bitstring,1,false}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,
          {f,923},
          [{tr,{x,1},{t_integer,{0,'+inf'}}},
           {tr,{y,1},{t_integer,{0,'+inf'}}}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,
          {f,923},
          [{tr,{x,1},{t_integer,{0,18446744073709551615}}},
           {tr,{y,0},{t_integer,{0,18446744073709551615}}}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,
          {f,923},
          [{tr,{x,1},{t_bitstring,1,false}},{tr,{y,3},{t_bitstring,1,false}}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{y,1},{y,0}]}}.
    {test,is_eq_exact,
          {f,922},
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
    {line,[{location,"bs_match_r25_SUITE.erl",1612}]}.
    {call,1,{f,971}}. % mos_int_try/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_integer,{0,'+inf'}},
                       2 => {t_integer,{0,18446744073709551615}}}}}]}}.
    {test,is_eq_exact,
          {f,921},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}},
           {tr,{y,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1613}]}.
    {call,1,{f,978}}. % mos_int_receive/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_integer,{0,'+inf'}},
                       2 => {t_integer,{0,18446744073709551615}}}}}]}}.
    {test,is_eq_exact,
          {f,920},
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
    {line,[{location,"bs_match_r25_SUITE.erl",1614}]}.
    {call,1,{f,997}}. % mos_int_fun/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_integer,{0,'+inf'}},
                       2 => {t_integer,{0,18446744073709551615}}}}}]}}.
    {test,is_eq_exact,
          {f,919},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}},
           {tr,{y,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1615}]}.
    {call,1,{f,1001}}. % mos_int_exported/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_integer,{0,'+inf'}},
                       2 => {t_integer,{0,18446744073709551615}}}}}]}}.
    {test,is_eq_exact,
          {f,918},
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
    {line,[{location,"bs_match_r25_SUITE.erl",1616}]}.
    {call,1,{f,1005}}. % mos_int_utf/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_integer,{0,'+inf'}},
                       2 => {t_integer,{0,18446744073709551615}}}}}]}}.
    {test,is_eq_exact,
          {f,917},
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
  {label,917}.
    {badmatch,{x,0}}.
  {label,918}.
    {line,[{location,"bs_match_r25_SUITE.erl",1615}]}.
    {badmatch,{x,0}}.
  {label,919}.
    {line,[{location,"bs_match_r25_SUITE.erl",1614}]}.
    {badmatch,{x,0}}.
  {label,920}.
    {line,[{location,"bs_match_r25_SUITE.erl",1613}]}.
    {badmatch,{x,0}}.
  {label,921}.
    {line,[{location,"bs_match_r25_SUITE.erl",1612}]}.
    {badmatch,{x,0}}.
  {label,922}.
    {line,[{location,"bs_match_r25_SUITE.erl",1611}]}.
    {badmatch,{x,0}}.
  {label,923}.
    {line,[{location,"bs_match_r25_SUITE.erl",1610}]}.
    {badmatch,{x,0}}.
  {label,924}.
    {line,[{location,"bs_match_r25_SUITE.erl",1609}]}.
    {badmatch,{x,0}}.
  {label,925}.
    {line,[{location,"bs_match_r25_SUITE.erl",1607}]}.
    {badmatch,{x,0}}.
  {label,926}.
    {line,[{location,"bs_match_r25_SUITE.erl",1606}]}.
    {badmatch,{x,0}}.
  {label,927}.
    {line,[{location,"bs_match_r25_SUITE.erl",1604}]}.
    {badmatch,{x,0}}.
  {label,928}.
    {line,[{location,"bs_match_r25_SUITE.erl",1603}]}.
    {badmatch,{x,0}}.
  {label,929}.
    {line,[{location,"bs_match_r25_SUITE.erl",1601}]}.
    {badmatch,{x,0}}.
  {label,930}.
    {line,[{location,"bs_match_r25_SUITE.erl",1599}]}.
    {badmatch,{x,0}}.
  {label,931}.
    {line,[{location,"bs_match_r25_SUITE.erl",1598}]}.
    {badmatch,{x,0}}.
  {label,932}.
    {line,[{location,"bs_match_r25_SUITE.erl",1596}]}.
    {badmatch,{x,0}}.
  {label,933}.
    {line,[{location,"bs_match_r25_SUITE.erl",1595}]}.
    {badmatch,{x,0}}.


{function, mos_int_plain, 1, 935}.
  {label,934}.
    {line,[{location,"bs_match_r25_SUITE.erl",1619}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,mos_int_plain},1}.
  {label,935}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,1,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {test,bs_get_integer2,
          {f,936},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1619,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,936},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1619,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,936},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[1619,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,936},[{x,0},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,936}.
    {bs_set_position,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,937},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1621,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,937},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1621,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,937},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[1621,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,937},[{x,0},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,937}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,934}}.


{function, mos_int_list, 1, 939}.
  {label,938}.
    {line,[{location,"bs_match_r25_SUITE.erl",1624}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,mos_int_list},1}.
  {label,939}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_bitstring,1,false},nil}}]}}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_nil,{f,938},[{tr,{x,2},{t_list,{t_bitstring,1,false},nil}}]}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,2}}.
    {test,bs_get_integer2,
          {f,940},
          3,
          [{tr,{x,2},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1624,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,940},
          4,
          [{tr,{x,2},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1624,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,940},
          4,
          [{tr,{x,2},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[1624,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,940},[{x,2},0]}.
    {test_heap,3,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4}]}}.
    return.
  {label,940}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,938},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1626,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,938},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1626,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,938},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[1626,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,938},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.


{function, mos_int_tuple, 1, 942}.
  {label,941}.
    {line,[{location,"bs_match_r25_SUITE.erl",1629}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,mos_int_tuple},1}.
  {label,942}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_atom,[a]},
                                     2 => {t_cons,{t_bitstring,1,false},nil},
                                     3 => {t_atom,[z]}}}}]}}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_nil,{f,941},[{tr,{x,1},{t_list,{t_bitstring,1,false},nil}}]}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,1}}.
    {test,bs_get_integer2,
          {f,943},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1629,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,943},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1629,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,943},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[1629,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,943},[{x,1},0]}.
    {test_heap,3,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4}]}}.
    return.
  {label,943}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,1}}.
    {test,bs_get_integer2,
          {f,941},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1631,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,941},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1631,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,941},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[1631,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,941},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.


{function, mos_int_mixed, 1, 945}.
  {label,944}.
    {line,[{location,"bs_match_r25_SUITE.erl",1634}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,mos_int_mixed},1}.
  {label,945}.
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
    {test,is_tuple,{f,947},[{x,0}]}.
    {test,test_arity,{f,947},[{x,0},3]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_nil,{f,947},[{tr,{x,1},{t_list,{t_bitstring,1,false},nil}}]}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,1}}.
    {test,bs_get_integer2,
          {f,946},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1634,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,946},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1634,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,946},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[1634,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,946},[{x,1},0]}.
    {test_heap,3,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4}]}}.
    return.
  {label,946}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,1}}.
    {test,bs_get_integer2,
          {f,947},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1636,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,947},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1636,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,947},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[1636,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,947},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,947}.
    {test,is_nonempty_list,{f,949},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_nil,{f,949},[{tr,{x,2},{t_list,{t_bitstring,1,false},nil}}]}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,2}}.
    {test,bs_get_integer2,
          {f,948},
          3,
          [{tr,{x,2},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1638,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,948},
          4,
          [{tr,{x,2},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1638,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,948},
          4,
          [{tr,{x,2},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[1638,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,948},[{x,2},0]}.
    {test_heap,3,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4}]}}.
    return.
  {label,948}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,949},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1640,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,949},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1640,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,949},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[1640,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,949},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,949}.
    {test,is_tuple,
          {f,950},
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
    {test,test_arity,{f,950},[{x,0},2]}.
    {move,{integer,42},{x,0}}.
    return.
  {label,950}.
    {move,{atom,no_match},{x,0}}.
    return.


{function, mos_int_pats1, 2, 952}.
  {label,951}.
    {line,[{location,"bs_match_r25_SUITE.erl",1647}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,mos_int_pats1},2}.
  {label,952}.
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
    {test,is_nil,{f,951},[{tr,{x,2},{t_list,{t_bitstring,1,false},nil}}]}.
    {bs_start_match4,{atom,no_fail},4,{x,3},{x,2}}.
    {test,bs_get_integer2,
          {f,953},
          4,
          [{tr,{x,2},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1647,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_integer2,
          {f,953},
          5,
          [{tr,{x,2},{t_bs_context,1}},
           {tr,{x,4},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1647,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_integer2,
          {f,953},
          5,
          [{tr,{x,2},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[1647,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_test_tail2,{f,953},[{x,2},0]}.
    {test_heap,3,6}.
    {put_tuple2,{x,0},{list,[{x,4},{x,5}]}}.
    return.
  {label,953}.
    {bs_start_match4,{atom,no_fail},4,{x,3},{x,2}}.
    {test,bs_get_integer2,
          {f,951},
          3,
          [{tr,{x,2},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1649,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,951},
          4,
          [{tr,{x,2},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1649,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,951},
          4,
          [{tr,{x,2},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[1649,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,951},[{x,2},0]}.
    {test_heap,3,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4}]}}.
    return.


{function, mos_int_pats2, 3, 955}.
  {label,954}.
    {line,[{location,"bs_match_r25_SUITE.erl",1652}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,mos_int_pats2},3}.
  {label,955}.
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
    {test,is_nil,{f,954},[{tr,{x,3},{t_list,{t_bitstring,1,false},nil}}]}.
    {bs_start_match4,{atom,no_fail},5,{x,4},{x,3}}.
    {test,bs_get_integer2,
          {f,956},
          5,
          [{tr,{x,3},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1652,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_get_integer2,
          {f,956},
          6,
          [{tr,{x,3},{t_bs_context,1}},
           {tr,{x,5},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1652,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_get_integer2,
          {f,956},
          6,
          [{tr,{x,3},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[1652,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,bs_test_tail2,{f,956},[{x,3},0]}.
    {test_heap,3,7}.
    {put_tuple2,{x,0},{list,[{x,5},{x,6}]}}.
    return.
  {label,956}.
    {bs_start_match4,{atom,no_fail},5,{x,4},{x,3}}.
    {test,bs_get_integer2,
          {f,954},
          4,
          [{tr,{x,3},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1654,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_integer2,
          {f,954},
          5,
          [{tr,{x,3},{t_bs_context,1}},
           {tr,{x,4},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1654,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_integer2,
          {f,954},
          5,
          [{tr,{x,3},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[1654,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_test_tail2,{f,954},[{x,3},0]}.
    {test_heap,3,6}.
    {put_tuple2,{x,0},{list,[{x,4},{x,5}]}}.
    return.


{function, mos_int_pats3, 2, 958}.
  {label,957}.
    {line,[{location,"bs_match_r25_SUITE.erl",1657}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,mos_int_pats3},2}.
  {label,958}.
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
    {test,is_nil,{f,957},[{tr,{x,4},{t_list,{t_bitstring,1,false},nil}}]}.
    {bs_start_match4,{atom,no_fail},6,{x,5},{x,4}}.
    {test,bs_get_integer2,
          {f,959},
          6,
          [{tr,{x,4},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1657,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,bs_get_integer2,
          {f,959},
          7,
          [{tr,{x,4},{t_bs_context,1}},
           {tr,{x,6},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1657,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,7}}.
    {test,bs_get_integer2,
          {f,959},
          8,
          [{tr,{x,4},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[1657,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,8}}.
    {test,bs_test_tail2,{f,959},[{x,4},0]}.
    {test,is_nonempty_list,{f,957},[{x,3}]}.
    {get_list,{x,3},{x,4},{x,9}}.
    {test,is_nonempty_list,{f,959},[{x,9}]}.
    {get_list,{x,9},{x,10},{x,9}}.
    {test,is_nil,
        {f,959},
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
          {f,959},
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
          {f,959},
          11,
          [{tr,{x,9},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1657,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,11}}.
    {test,bs_get_integer2,
          {f,959},
          12,
          [{tr,{x,9},{t_bs_context,1}},
           {tr,{x,11},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1657,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,12}}.
    {test,bs_get_integer2,
          {f,959},
          13,
          [{tr,{x,9},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[1657,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,13}}.
    {test,bs_test_tail2,{f,959},[{x,9},0]}.
    {test,is_eq_exact,
          {f,959},
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
          {f,959},
          [{tr,{x,9},{t_integer,{0,18446744073709551615}}},
           {tr,{x,8},{t_integer,{0,4294967295}}}]}.
    {test,is_eq_exact,
          {f,959},
          [{tr,{x,11},{t_integer,{0,255}}},{tr,{x,6},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,959},
          [{tr,{x,12},{t_integer,{0,'+inf'}}},
           {tr,{x,7},{t_integer,{0,'+inf'}}}]}.
    {test,is_eq_exact,
          {f,959},
          [{tr,{x,13},{t_integer,{0,4294967295}}},
           {tr,{x,8},{t_integer,{0,4294967295}}}]}.
    {get_tuple_element,{x,4},2,{x,4}}.
    {test,is_eq_exact,
          {f,959},
          [{tr,{x,4},{t_integer,{0,18446744073709551615}}},
           {tr,{x,8},{t_integer,{0,4294967295}}}]}.
    {test,is_eq_exact,
          {f,959},
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
  {label,959}.
    {bs_start_match4,{atom,no_fail},6,{x,5},{x,4}}.
    {test,bs_get_integer2,
          {f,957},
          5,
          [{tr,{x,4},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1659,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_get_integer2,
          {f,957},
          6,
          [{tr,{x,4},{t_bs_context,1}},
           {tr,{x,5},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1659,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,bs_get_integer2,
          {f,957},
          7,
          [{tr,{x,4},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[1659,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,7}}.
    {test,bs_test_tail2,{f,957},[{x,4},0]}.
    {test,is_nonempty_list,{f,957},[{x,3}]}.
    {get_list,{x,3},{x,4},{x,3}}.
    {test,is_nonempty_list,{f,957},[{x,3}]}.
    {get_list,{x,3},{x,8},{x,3}}.
    {test,is_nil,
        {f,957},
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
          {f,957},
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
          {f,957},
          9,
          [{tr,{x,3},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1659,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,9}}.
    {test,bs_get_integer2,
          {f,957},
          10,
          [{tr,{x,3},{t_bs_context,1}},
           {tr,{x,9},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1659,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,10}}.
    {test,bs_get_integer2,
          {f,957},
          11,
          [{tr,{x,3},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[1659,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,11}}.
    {test,bs_test_tail2,{f,957},[{x,3},0]}.
    {test,is_eq_exact,
          {f,957},
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
          {f,957},
          [{tr,{x,2},{t_integer,{0,18446744073709551615}}},
           {tr,{x,7},{t_integer,{0,18446744073709551615}}}]}.
    {test,is_eq_exact,
          {f,957},
          [{tr,{x,9},{t_integer,{0,255}}},{tr,{x,5},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,957},
          [{tr,{x,10},{t_integer,{0,'+inf'}}},
           {tr,{x,6},{t_integer,{0,'+inf'}}}]}.
    {test,is_eq_exact,
          {f,957},
          [{tr,{x,11},{t_integer,{0,18446744073709551615}}},
           {tr,{x,7},{t_integer,{0,18446744073709551615}}}]}.
    {get_tuple_element,{x,4},2,{x,2}}.
    {test,is_eq_exact,
          {f,957},
          [{tr,{x,2},{t_integer,{0,18446744073709551615}}},
           {tr,{x,7},{t_integer,{0,18446744073709551615}}}]}.
    {test,is_eq_exact,
          {f,957},
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


{function, mos_int_map, 1, 961}.
  {label,960}.
    {line,[{location,"bs_match_r25_SUITE.erl",1662}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,mos_int_map},1}.
  {label,961}.
    {'%',{var_info,{x,0},
                   [{type,{t_map,{t_atom,[key]},
                                 {t_cons,{t_bitstring,1,false},nil}}}]}}.
    {get_map_elements,{f,962},
                      {tr,{x,0},
                          {t_map,{t_atom,[key]},
                                 {t_cons,{t_bitstring,1,false},nil}}},
                      {list,[{atom,key},{x,1}]}}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_nil,{f,962},[{tr,{x,1},{t_list,{t_bitstring,1,false},nil}}]}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,1}}.
    {test,bs_get_integer2,
          {f,962},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1662,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,962},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1662,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,962},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[1662,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,962},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,962}.
    {get_map_elements,{f,960},
                      {tr,{x,0},
                          {t_map,{t_atom,[key]},
                                 {t_cons,{t_bitstring,1,false},nil}}},
                      {list,[{atom,key},{x,1}]}}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_nil,{f,960},[{tr,{x,1},{t_list,{t_bitstring,1,false},nil}}]}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,1}}.
    {test,bs_get_integer2,
          {f,960},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1664,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,960},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1664,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,960},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[1664,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,960},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.


{function, mos_int_map, 2, 964}.
  {label,963}.
    {line,[{location,"bs_match_r25_SUITE.erl",1667}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,mos_int_map},2}.
  {label,964}.
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
        {f,965},
        {tr,{x,1},
            {t_map,
                {t_tuple,2,true,#{1 => {t_atom,[my]},2 => {t_atom,[key]}}},
                {t_cons,{t_bitstring,1,false},nil}}},
        {list,[{literal,{my,key}},{x,0}]}}.
    {get_list,{x,0},{x,2},{x,0}}.
    {test,is_nil,{f,965},[{tr,{x,0},{t_list,{t_bitstring,1,false},nil}}]}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,0}}.
    {test,bs_get_integer2,
          {f,965},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1669,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,965},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1669,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,965},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[1669,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,965},[{x,0},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,965}.
    {get_map_elements,
        {f,966},
        {tr,{x,1},
            {t_map,
                {t_tuple,2,true,#{1 => {t_atom,[my]},2 => {t_atom,[key]}}},
                {t_cons,{t_bitstring,1,false},nil}}},
        {list,[{literal,{my,key}},{x,0}]}}.
    {get_list,{x,0},{x,2},{x,0}}.
    {test,is_nil,{f,966},[{tr,{x,0},{t_list,{t_bitstring,1,false},nil}}]}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,0}}.
    {test,bs_get_integer2,
          {f,966},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1670,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,966},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1670,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,966},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[1670,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,966},[{x,0},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,966}.
    {line,[{location,"bs_match_r25_SUITE.erl",1668}]}.
    {case_end,{x,1}}.


{function, mos_int_alias, 1, 968}.
  {label,967}.
    {line,[{location,"bs_match_r25_SUITE.erl",1673}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,mos_int_alias},1}.
  {label,968}.
    {'%',{var_info,{x,0},
                   [{type,{t_cons,{t_cons,{t_bitstring,1,false},nil},nil}}]}}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_nil,
          {f,967},
          [{tr,{x,2},{t_list,{t_cons,{t_bitstring,1,false},nil},nil}}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_nil,{f,967},[{tr,{x,1},{t_list,{t_bitstring,1,false},nil}}]}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,1}}.
    {test,bs_get_integer2,
          {f,969},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1673,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,969},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1673,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,969},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[1673,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,969},[{x,1},0]}.
    {test_heap,4,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4},{x,2}]}}.
    return.
  {label,969}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,1}}.
    {test,bs_get_integer2,
          {f,967},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1675,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,967},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1675,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,967},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[1675,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,967},[{x,1},0]}.
    {test_heap,4,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4},{x,2}]}}.
    return.


{function, mos_int_try, 1, 971}.
  {label,970}.
    {line,[{location,"bs_match_r25_SUITE.erl",1678}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,mos_int_try},1}.
  {label,971}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_bitstring,1,false},nil}}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {'try',{y,1},{f,975}}.
    {'try',{y,0},{f,974}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1679}]}.
    {call,1,{f,1778}}. % id/1
    {try_end,{y,0}}.
    {test,is_nonempty_list,{f,976},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_nil,{f,976},[{x,2}]}.
    {test,bs_start_match3,{f,972},2,[{x,1}],{x,2}}.
    {test,bs_get_integer2,
          {f,972},
          3,
          [{tr,{x,2},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1680,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,972},
          4,
          [{tr,{x,2},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1680,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,972},
          4,
          [{tr,{x,2},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[1680,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,972},[{x,2},0]}.
    {test_heap,3,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4}]}}.
    {jump,{f,973}}.
  {label,972}.
    {test,bs_start_match3,{f,976},2,[{x,1}],{x,1}}.
    {test,bs_get_integer2,
          {f,976},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1681,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,976},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1681,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,976},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[1681,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,976},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
  {label,973}.
    {try_end,{y,1}}.
    {deallocate,2}.
    return.
  {label,974}.
    {try_case,{y,0}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.
  {label,975}.
    {try_case,{y,1}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.
  {label,976}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",1679}]}.
    {try_case_end,{x,0}}.


{function, mos_int_receive, 1, 978}.
  {label,977}.
    {line,[{location,"bs_match_r25_SUITE.erl",1686}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,mos_int_receive},1}.
  {label,978}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {allocate,5,1}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3}]}}.
    {move,{x,0},{y,4}}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{y,4},{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1688}]}.
    send.
  {label,979}.
    {loop_rec,{f,993},{x,0}}.
    {test,bs_start_match3,{f,980},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,980},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1690,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,980},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1690,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,980},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[1690,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,980},[{x,1},0]}.
    {test_heap,3,4}.
    {move,{x,3},{x,1}}.
    {move,{x,2},{x,0}}.
    remove_message.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {move,{x,0},{y,3}}.
    {jump,{f,981}}.
  {label,980}.
    {test,bs_start_match3,{f,992},1,[{x,0}],{x,0}}.
    {test,bs_get_integer2,
          {f,992},
          1,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1691,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_get_integer2,
          {f,992},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,1},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1691,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_get_integer2,
          {f,992},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[1691,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,992},[{x,0},0]}.
    {test_heap,3,3}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    remove_message.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {move,{x,0},{y,3}}.
  {label,981}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{y,4},{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1694}]}.
    send.
  {label,982}.
    {loop_rec,{f,991},{x,0}}.
    {test,bs_start_match3,{f,983},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,983},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1696,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,983},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1696,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,983},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[1696,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,983},[{x,1},0]}.
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
    {jump,{f,984}}.
  {label,983}.
    {test,bs_start_match3,{f,990},1,[{x,0}],{x,0}}.
    {test,bs_get_integer2,
          {f,990},
          1,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1697,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_get_integer2,
          {f,990},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,1},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1697,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,990},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[1697,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,990},[{x,0},0]}.
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
  {label,984}.
    {test,is_eq_exact,
          {f,995},
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
    {line,[{location,"bs_match_r25_SUITE.erl",1699}]}.
    send.
  {label,985}.
    {loop_rec,{f,989},{x,0}}.
    {test,is_tagged_tuple,{f,988},[{x,0},2,{atom,tag}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_nonempty_list,{f,988},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_nil,{f,988},[{x,0}]}.
    {test,bs_start_match3,{f,986},2,[{x,1}],{x,0}}.
    {test,bs_get_integer2,
          {f,986},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1701,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,986},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1701,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,986},
          4,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[1701,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,986},[{x,0},0]}.
    {test,is_eq_exact,
          {f,986},
          [{tr,{x,2},{t_integer,{0,255}}},{tr,{y,1},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,986},
          [{tr,{x,3},{t_integer,{0,'+inf'}}},
           {tr,{y,0},{t_integer,{0,'+inf'}}}]}.
    {test,is_ne_exact,
          {f,987},
          [{tr,{x,4},{t_integer,{0,4294967295}}},
           {tr,{y,2},{t_integer,{0,18446744073709551615}}}]}.
  {label,986}.
    {test,bs_start_match3,{f,988},2,[{x,1}],{x,0}}.
    {test,bs_get_integer2,
          {f,988},
          1,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1702,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_get_integer2,
          {f,988},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,1},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1702,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,988},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[1702,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,988},[{x,0},0]}.
    {test,is_eq_exact,
          {f,988},
          [{tr,{x,1},{t_integer,{0,255}}},{tr,{y,1},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,988},
          [{tr,{x,2},{t_integer,{0,'+inf'}}},
           {tr,{y,0},{t_integer,{0,'+inf'}}}]}.
    {test,is_eq_exact,
          {f,988},
          [{tr,{x,3},{t_integer,{0,18446744073709551615}}},
           {tr,{y,2},{t_integer,{0,18446744073709551615}}}]}.
  {label,987}.
    {test_heap,3,0}.
    remove_message.
    {put_tuple2,{x,0},{list,[{y,0},{y,2}]}}.
    {test,is_eq_exact,
          {f,994},
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
  {label,988}.
    {loop_rec_end,{f,985}}.
  {label,989}.
    {wait,{f,985}}.
  {label,990}.
    {loop_rec_end,{f,982}}.
  {label,991}.
    {wait,{f,982}}.
  {label,992}.
    {loop_rec_end,{f,979}}.
  {label,993}.
    {wait,{f,979}}.
  {label,994}.
    {line,[{location,"bs_match_r25_SUITE.erl",1700}]}.
    {badmatch,{x,0}}.
  {label,995}.
    {line,[{location,"bs_match_r25_SUITE.erl",1695}]}.
    {badmatch,{x,0}}.


{function, mos_int_fun, 1, 997}.
  {label,996}.
    {line,[{location,"bs_match_r25_SUITE.erl",1706}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,mos_int_fun},1}.
  {label,997}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_bitstring,1,false},nil}}]}}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_nil,{f,999},[{tr,{x,2},{t_list,{t_bitstring,1,false},nil}}]}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,2}}.
    {test,bs_get_integer2,
          {f,998},
          3,
          [{tr,{x,2},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1708,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,998},
          4,
          [{tr,{x,2},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1708,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,998},
          4,
          [{tr,{x,2},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[1708,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,998},[{x,2},0]}.
    {test_heap,3,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4}]}}.
    return.
  {label,998}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,999},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1709,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,999},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1709,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,999},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[1709,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,999},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,999}.
    {call_only,1,{f,2042}}. % '-mos_int_fun/1-inlined-0-'/1


{function, mos_int_exported, 1, 1001}.
  {label,1000}.
    {line,[{location,"bs_match_r25_SUITE.erl",1713}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,mos_int_exported},1}.
  {label,1001}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,1,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {test,bs_get_integer2,
          {f,1002},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1715,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1002},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1715,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1002},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[1715,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1002},[{x,0},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,1002}.
    {bs_set_position,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,1003},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1716,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1003},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1716,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1003},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[1716,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1003},[{x,0},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,1003}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {line,[{location,"bs_match_r25_SUITE.erl",1714}]}.
    {case_end,{x,0}}.


{function, mos_int_utf, 1, 1005}.
  {label,1004}.
    {line,[{location,"bs_match_r25_SUITE.erl",1720}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,mos_int_utf},1}.
  {label,1005}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1721}]}.
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
    {call,1,{f,1778}}. % id/1
    {test,bs_start_match3,{f,1006},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,1006},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1723,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1006},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1723,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1006},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[1723,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_match_string,{f,1006},[{x,1},16,{string,<<204,137>>}]}.
    {test,bs_get_utf16,
          {f,1006},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {field_flags,[{anno,[1723,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,is_eq_exact,
          {f,1006},
          [{tr,{x,4},{t_integer,{0,1114111}}},{integer,7777}]}.
    {test,bs_get_utf32,
          {f,1006},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {field_flags,[{anno,[1723,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,is_eq_exact,
          {f,1006},
          [{tr,{x,4},{t_integer,{0,1114111}}},{integer,9999}]}.
    {test,bs_test_tail2,{f,1006},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    {deallocate,0}.
    return.
  {label,1006}.
    {test,bs_start_match3,{f,1007},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,1007},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1724,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1007},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1724,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1007},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[1724,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_match_string,{f,1007},[{x,1},16,{string,<<204,137>>}]}.
    {test,bs_get_utf16,
          {f,1007},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {field_flags,[{anno,[1724,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,is_eq_exact,
          {f,1007},
          [{tr,{x,4},{t_integer,{0,1114111}}},{integer,7777}]}.
    {test,bs_get_utf32,
          {f,1007},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {field_flags,[{anno,[1724,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,is_eq_exact,
          {f,1007},
          [{tr,{x,4},{t_integer,{0,1114111}}},{integer,9999}]}.
    {test,bs_test_tail2,{f,1007},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    {deallocate,0}.
    return.
  {label,1007}.
    {line,[{location,"bs_match_r25_SUITE.erl",1722}]}.
    {case_end,{x,0}}.


{function, mos_bin, 1, 1009}.
  {label,1008}.
    {line,[{location,"bs_match_r25_SUITE.erl",1727}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,mos_bin},1}.
  {label,1009}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1728}]}.
    {call,1,{f,1012}}. % mos_bin_plain/1
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
    {line,[{location,"bs_match_r25_SUITE.erl",1729}]}.
    {call,1,{f,1020}}. % mos_bin_tuple/1
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
          {f,1010},
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
  {label,1010}.
    {badmatch,{x,0}}.


{function, mos_bin_plain, 1, 1012}.
  {label,1011}.
    {line,[{location,"bs_match_r25_SUITE.erl",1732}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,mos_bin_plain},1}.
  {label,1012}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {test,bs_get_integer2,
          {f,1013},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1732,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,1013},
          3,
          [{tr,{x,0},{t_bs_context,8}},
           {tr,{x,2},{t_integer,{0,255}}},
           8,
           {field_flags,[{anno,[1732,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,1013},
          4,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1732,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_integer2,
          {f,1013},
          5,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1732,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_test_tail2,{f,1013},[{x,0},0]}.
    {test,is_eq_exact,
          {f,1013},
          [{tr,{x,5},{t_integer,{0,255}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {line,[{location,"bs_match_r25_SUITE.erl",1733}]}.
    {gc_bif,byte_size,{f,0},5,[{tr,{x,3},{t_bitstring,8,false}}],{x,0}}.
    {test,is_eq_exact,
          {f,1016},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},
           {tr,{x,2},{t_integer,{0,255}}}]}.
    {test_heap,3,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4}]}}.
    return.
  {label,1013}.
    {bs_set_position,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,1014},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1735,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,1014},
          3,
          [{tr,{x,0},{t_bs_context,8}},
           {tr,{x,2},{t_integer,{0,255}}},
           8,
           {field_flags,[{anno,[1735,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,1014},
          4,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1735,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_integer2,
          {f,1014},
          5,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1735,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_get_integer2,
          {f,1014},
          6,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1735,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,bs_test_tail2,{f,1014},[{x,0},0]}.
    {test,is_eq_exact,
          {f,1014},
          [{tr,{x,5},{t_integer,{0,255}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {line,[{location,"bs_match_r25_SUITE.erl",1736}]}.
    {gc_bif,byte_size,{f,0},7,[{tr,{x,3},{t_bitstring,8,false}}],{x,0}}.
    {test,is_eq_exact,
          {f,1017},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},
           {tr,{x,2},{t_integer,{0,255}}}]}.
    {test_heap,4,7}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4},{x,6}]}}.
    return.
  {label,1014}.
    {bs_set_position,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,1015},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1738,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,1015},
          3,
          [{tr,{x,0},{t_bs_context,8}},
           {tr,{x,2},{t_integer,{0,255}}},
           8,
           {field_flags,[{anno,[1738,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_match_string,{f,1015},[{x,0},80,{string,<<"abcdefghij">>}]}.
    {test,bs_test_tail2,{f,1015},[{x,0},0]}.
    {line,[{location,"bs_match_r25_SUITE.erl",1739}]}.
    {gc_bif,byte_size,{f,0},4,[{tr,{x,3},{t_bitstring,8,false}}],{x,0}}.
    {test,is_eq_exact,
          {f,1018},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},
           {tr,{x,2},{t_integer,{0,255}}}]}.
    {move,{x,3},{x,0}}.
    return.
  {label,1015}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,1011}}.
  {label,1016}.
    {line,[{location,"bs_match_r25_SUITE.erl",1733}]}.
    {badmatch,{x,0}}.
  {label,1017}.
    {line,[{location,"bs_match_r25_SUITE.erl",1736}]}.
    {badmatch,{x,0}}.
  {label,1018}.
    {line,[{location,"bs_match_r25_SUITE.erl",1739}]}.
    {badmatch,{x,0}}.


{function, mos_bin_tuple, 1, 1020}.
  {label,1019}.
    {line,[{location,"bs_match_r25_SUITE.erl",1742}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,mos_bin_tuple},1}.
  {label,1020}.
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
          {f,1021},
          3,
          [{tr,{x,2},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1742,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,1021},
          4,
          [{tr,{x,2},{t_bs_context,8}},
           {tr,{x,3},{t_integer,{0,255}}},
           8,
           {field_flags,[{anno,[1742,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_integer2,
          {f,1021},
          5,
          [{tr,{x,2},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1742,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_get_integer2,
          {f,1021},
          6,
          [{tr,{x,2},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1742,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,bs_test_tail2,{f,1021},[{x,2},0]}.
    {test,is_eq_exact,
          {f,1021},
          [{tr,{x,6},{t_integer,{0,255}}},{tr,{x,3},{t_integer,{0,255}}}]}.
    {line,[{location,"bs_match_r25_SUITE.erl",1743}]}.
    {gc_bif,byte_size,{f,0},6,[{tr,{x,4},{t_bitstring,8,false}}],{x,0}}.
    {test,is_eq_exact,
          {f,1023},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},
           {tr,{x,3},{t_integer,{0,255}}}]}.
    {test_heap,3,6}.
    {put_tuple2,{x,0},{list,[{x,4},{x,5}]}}.
    return.
  {label,1021}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,2}}.
    {test,bs_get_integer2,
          {f,1022},
          3,
          [{tr,{x,2},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1745,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,1022},
          4,
          [{tr,{x,2},{t_bs_context,8}},
           {tr,{x,3},{t_integer,{0,255}}},
           8,
           {field_flags,[{anno,[1745,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_integer2,
          {f,1022},
          5,
          [{tr,{x,2},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1745,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_get_integer2,
          {f,1022},
          6,
          [{tr,{x,2},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1745,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,bs_get_integer2,
          {f,1022},
          7,
          [{tr,{x,2},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1745,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,7}}.
    {test,bs_test_tail2,{f,1022},[{x,2},0]}.
    {test,is_eq_exact,
          {f,1022},
          [{tr,{x,6},{t_integer,{0,255}}},{tr,{x,3},{t_integer,{0,255}}}]}.
    {line,[{location,"bs_match_r25_SUITE.erl",1746}]}.
    {gc_bif,byte_size,{f,0},8,[{tr,{x,4},{t_bitstring,8,false}}],{x,0}}.
    {test,is_eq_exact,
          {f,1024},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},
           {tr,{x,3},{t_integer,{0,255}}}]}.
    {test_heap,4,8}.
    {put_tuple2,{x,0},{list,[{x,4},{x,5},{x,7}]}}.
    return.
  {label,1022}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,1019},
          2,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1748,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,1019},
          3,
          [{tr,{x,1},{t_bs_context,8}},
           {tr,{x,2},{t_integer,{0,255}}},
           8,
           {field_flags,[{anno,[1748,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_match_string,{f,1019},[{x,1},80,{string,<<"abcdefghij">>}]}.
    {test,bs_test_tail2,{f,1019},[{x,1},0]}.
    {line,[{location,"bs_match_r25_SUITE.erl",1749}]}.
    {gc_bif,byte_size,{f,0},4,[{tr,{x,3},{t_bitstring,8,false}}],{x,0}}.
    {test,is_eq_exact,
          {f,1025},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},
           {tr,{x,2},{t_integer,{0,255}}}]}.
    {move,{x,3},{x,0}}.
    return.
  {label,1023}.
    {line,[{location,"bs_match_r25_SUITE.erl",1743}]}.
    {badmatch,{x,0}}.
  {label,1024}.
    {line,[{location,"bs_match_r25_SUITE.erl",1746}]}.
    {badmatch,{x,0}}.
  {label,1025}.
    {line,[{location,"bs_match_r25_SUITE.erl",1749}]}.
    {badmatch,{x,0}}.


{function, mos_verify_sig, 1, 1027}.
  {label,1026}.
    {line,[{location,"bs_match_r25_SUITE.erl",1752}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,mos_verify_sig},1}.
  {label,1027}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[not_a_binary]},
                                   none,none,none,
                                   {t_bitstring,16,false}}}]}}.
    {test,bs_start_match3,{f,1028},1,[{x,0}],{x,0}}.
    {test,bs_get_integer2,
          {f,1028},
          1,
          [{tr,{x,0},{t_bs_context,16}},
           {integer,32},
           1,
           {field_flags,[{anno,[1754,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_skip_bits2,
          {f,1028},
          [{x,0},
           {x,1},
           8,
           {field_flags,[{anno,[1754,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_integer2,
          {f,1028},
          1,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,32},
           1,
           {field_flags,[{anno,[1754,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_get_binary2,
          {f,1028},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {tr,{x,1},{t_integer,{0,4294967295}}},
           8,
           {field_flags,[{anno,[1754,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_test_tail2,{f,1028},[{x,0},0]}.
    {move,{x,1},{x,0}}.
    return.
  {label,1028}.
    {move,{atom,false},{x,0}}.
    return.


{function, follow_fail_branch, 1, 1030}.
  {label,1029}.
    {line,[{location,"bs_match_r25_SUITE.erl",1762}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,follow_fail_branch},1}.
  {label,1030}.
    {allocate,0,0}.
    {move,{literal,<<0>>},{x,1}}.
    {move,{literal,<<0,1>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1763}]}.
    {call,2,{f,1034}}. % ffb_1/2
    {'%',{var_info,{x,0},[{type,{t_integer,{42,42}}}]}}.
    {move,{literal,[a]},{x,1}}.
    {move,{literal,<<0,1>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1764}]}.
    {call,2,{f,1034}}. % ffb_1/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,288230376151711743}}}]}}.
    {test,is_eq_exact,
          {f,1032},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},{integer,8}]}.
    {move,{literal,<<0>>},{x,1}}.
    {move,{integer,17},{x,2}}.
    {move,{literal,<<0,1>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1765}]}.
    {call,3,{f,1039}}. % ffb_2/3
    {'%',{var_info,{x,0},[{type,{t_integer,{42,42}}}]}}.
    {move,{literal,[a]},{x,1}}.
    {move,{integer,0},{x,2}}.
    {move,{literal,<<0,1>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1766}]}.
    {call,3,{f,1039}}. % ffb_2/3
    {'%',{var_info,{x,0},[{type,{t_integer,{0,288230376151711743}}}]}}.
    {test,is_eq_exact,
          {f,1031},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},{integer,8}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1031}.
    {badmatch,{x,0}}.
  {label,1032}.
    {line,[{location,"bs_match_r25_SUITE.erl",1764}]}.
    {badmatch,{x,0}}.


{function, ffb_1, 2, 1034}.
  {label,1033}.
    {line,[{location,"bs_match_r25_SUITE.erl",1769}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,ffb_1},2}.
  {label,1034}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,16,false}},accepts_match_context]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_union,none,
                                   {t_cons,{t_atom,[a]},nil},
                                   none,none,
                                   {t_bitstring,8,false}}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_skip_bits2,
          {f,1036},
          [{x,0},
           {integer,8},
           1,
           {field_flags,[{anno,[1769,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_get_tail,{x,0},{x,0},2}.
    {test,bs_start_match3,{f,1035},2,[{x,1}],{x,2}}.
    {test,bs_test_tail2,{f,1037},[{x,2},8]}.
    {move,{integer,42},{x,0}}.
    return.
  {label,1035}.
    {line,[{location,"bs_match_r25_SUITE.erl",1778}]}.
    {gc_bif,bit_size,{f,0},1,[{tr,{x,0},{t_bitstring,8,false}}],{x,0}}.
    return.
  {label,1036}.
    {bs_get_tail,{x,0},{x,0},2}.
    {jump,{f,1033}}.
  {label,1037}.
    {line,[{location,"bs_match_r25_SUITE.erl",1770}]}.
    {case_end,{x,1}}.


{function, ffb_2, 3, 1039}.
  {label,1038}.
    {line,[{location,"bs_match_r25_SUITE.erl",1781}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,ffb_2},3}.
  {label,1039}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,16,false}},accepts_match_context]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_union,none,
                                   {t_cons,{t_atom,[a]},nil},
                                   none,none,
                                   {t_bitstring,8,false}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{0,17}}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {test,bs_skip_bits2,
          {f,1041},
          [{x,0},
           {integer,8},
           1,
           {field_flags,[{anno,[1781,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_get_tail,{x,0},{x,0},3}.
    {test,bs_start_match3,{f,1040},3,[{x,1}],{x,3}}.
    {test,bs_test_tail2,{f,1042},[{x,3},8]}.
    {test,is_eq_exact,{f,1042},[{tr,{x,2},{t_integer,{0,17}}},{integer,17}]}.
    {move,{integer,42},{x,0}}.
    return.
  {label,1040}.
    {line,[{location,"bs_match_r25_SUITE.erl",1784}]}.
    {gc_bif,bit_size,{f,0},1,[{tr,{x,0},{t_bitstring,8,false}}],{x,0}}.
    return.
  {label,1041}.
    {bs_get_tail,{x,0},{x,0},3}.
    {jump,{f,1038}}.
  {label,1042}.
    {line,[{location,"bs_match_r25_SUITE.erl",1782}]}.
    {case_end,{x,1}}.


{function, no_partition, 1, 1044}.
  {label,1043}.
    {line,[{location,"bs_match_r25_SUITE.erl",1787}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,no_partition},1}.
  {label,1044}.
    {allocate,0,0}.
    {move,{atom,a1},{x,1}}.
    {move,{literal,<<"string">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1788}]}.
    {call,2,{f,1050}}. % no_partition_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[one]}}]}}.
    {move,{atom,a2},{x,1}}.
    {move,{literal,<<"string">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1789}]}.
    {call,2,{f,1050}}. % no_partition_1/2
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
        {f,1048},
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
    {line,[{location,"bs_match_r25_SUITE.erl",1790}]}.
    {call,2,{f,1050}}. % no_partition_1/2
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
        {f,1047},
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
    {line,[{location,"bs_match_r25_SUITE.erl",1791}]}.
    {call,2,{f,1050}}. % no_partition_1/2
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
        {f,1046},
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
    {line,[{location,"bs_match_r25_SUITE.erl",1792}]}.
    {call,2,{f,1050}}. % no_partition_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[three]}}]}}.
    {move,{atom,a4},{x,1}}.
    {move,{literal,[a]},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1793}]}.
    {call,2,{f,1050}}. % no_partition_1/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_atom,[four]},
                                     2 => {t_atom,[a]},
                                     3 => {t_list,{t_atom,[a]},nil}}}}]}}.
    {test,is_eq_exact,
          {f,1045},
          [{tr,{x,0},
               {t_tuple,3,true,
                        #{1 => {t_atom,[four]},
                          2 => {t_atom,[a]},
                          3 => {t_list,{t_atom,[a]},nil}}}},
           {literal,{four,a,[]}}]}.
    {move,{atom,a5},{x,1}}.
    {move,{literal,{a,b}},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1794}]}.
    {call,2,{f,1050}}. % no_partition_1/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_atom,[five]},
                                     2 => {t_atom,[a]},
                                     3 => {t_atom,[b]}}}}]}}.
    {move,{atom,a1},{x,1}}.
    {move,{literal,<<"string">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1796}]}.
    {call,2,{f,1058}}. % no_partition_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[one]}}]}}.
    {move,{atom,a2},{x,1}}.
    {move,{literal,<<"string">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1797}]}.
    {call,2,{f,1058}}. % no_partition_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[two]}}]}}.
    {move,{atom,a2},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1798}]}.
    {call,2,{f,1058}}. % no_partition_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[two]}}]}}.
    {move,{atom,a2},{x,1}}.
    {move,{atom,a},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1799}]}.
    {call,2,{f,1058}}. % no_partition_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[two]}}]}}.
    {move,{atom,a3},{x,1}}.
    {move,{atom,undefined},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1800}]}.
    {call,2,{f,1058}}. % no_partition_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[three]}}]}}.
    {move,{atom,a4},{x,1}}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1801}]}.
    {call,2,{f,1058}}. % no_partition_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[four]}}]}}.
    {move,{atom,a5},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1802}]}.
    {call,2,{f,1058}}. % no_partition_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[five]}}]}}.
    {move,{atom,a6},{x,1}}.
    {move,{float,42.0},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1803}]}.
    {call,2,{f,1058}}. % no_partition_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[six]}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1045}.
    {line,[{location,"bs_match_r25_SUITE.erl",1793}]}.
    {badmatch,{x,0}}.
  {label,1046}.
    {line,[{location,"bs_match_r25_SUITE.erl",1791}]}.
    {badmatch,{x,0}}.
  {label,1047}.
    {line,[{location,"bs_match_r25_SUITE.erl",1790}]}.
    {badmatch,{x,0}}.
  {label,1048}.
    {line,[{location,"bs_match_r25_SUITE.erl",1789}]}.
    {badmatch,{x,0}}.


{function, no_partition_1, 2, 1050}.
  {label,1049}.
    {line,[{location,"bs_match_r25_SUITE.erl",1806}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,no_partition_1},2}.
  {label,1050}.
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
          {f,1052},
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
                {f,1054},
                {list,[{atom,a1},{f,1051},{atom,a2},{f,1053}]}}.
  {label,1051}.
    {move,{atom,one},{x,0}}.
    return.
  {label,1052}.
    {test,is_eq_exact,
          {f,1054},
          [{tr,{x,1},{t_atom,[a1,a2,a3,a4,a5]}},{atom,a2}]}.
  {label,1053}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,two},{x,0}]}}.
    return.
  {label,1054}.
    {test,is_nonempty_list,{f,1055},[{x,0}]}.
    {get_tl,{x,0},{x,2}}.
    {test,is_eq_exact,{f,1049},[{tr,{x,1},{t_atom,[a1,a3,a4,a5]}},{atom,a4}]}.
    {test_heap,4,3}.
    {put_tuple2,{x,0},{list,[{atom,four},{atom,a},{x,2}]}}.
    return.
  {label,1055}.
    {test,is_tuple,
          {f,1056},
          [{tr,{x,0},
               {t_union,{t_atom,[a,undefined]},
                        none,none,
                        [{{2,{t_atom,[a]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                        {t_bitstring,16,false}}}]}.
    {test,is_eq_exact,{f,1049},[{tr,{x,1},{t_atom,[a1,a3,a4,a5]}},{atom,a5}]}.
    {move,{literal,{five,a,b}},{x,0}}.
    return.
  {label,1056}.
    {test,is_eq_exact,
          {f,1049},
          [{tr,{x,0},
               {t_union,{t_atom,[a,undefined]},
                        none,none,none,
                        {t_bitstring,16,false}}},
           {atom,undefined}]}.
    {test,is_eq_exact,{f,1049},[{tr,{x,1},{t_atom,[a1,a3,a4,a5]}},{atom,a3}]}.
    {move,{atom,three},{x,0}}.
    return.


{function, no_partition_2, 2, 1058}.
  {label,1057}.
    {line,[{location,"bs_match_r25_SUITE.erl",1817}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,no_partition_2},2}.
  {label,1058}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[a,undefined]},
                                   nil,
                                   {t_number,{42,42}},
                                   none,
                                   {t_bitstring,16,false}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,any}}]}}.
    {test,is_eq_exact,
          {f,1060},
          [{tr,{x,0},
               {t_union,{t_atom,[a,undefined]},
                        nil,
                        {t_number,{42,42}},
                        none,
                        {t_bitstring,16,false}}},
           {literal,<<"string">>}]}.
    {select_val,{tr,{x,1},{t_atom,any}},
                {f,1062},
                {list,[{atom,a1},{f,1059},{atom,a2},{f,1061}]}}.
  {label,1059}.
    {move,{atom,one},{x,0}}.
    return.
  {label,1060}.
    {test,is_eq_exact,{f,1062},[{tr,{x,1},{t_atom,any}},{atom,a2}]}.
  {label,1061}.
    {move,{atom,two},{x,0}}.
    return.
  {label,1062}.
    {test,is_atom,
          {f,1063},
          [{tr,{x,0},
               {t_union,{t_atom,[a,undefined]},
                        nil,
                        {t_number,{42,42}},
                        none,
                        {t_bitstring,16,false}}}]}.
    {test,is_eq_exact,
          {f,1057},
          [{tr,{x,0},{t_atom,[a,undefined]}},{atom,undefined}]}.
    {test,is_eq_exact,{f,1057},[{tr,{x,1},{t_atom,any}},{atom,a3}]}.
    {move,{atom,three},{x,0}}.
    return.
  {label,1063}.
    {test,is_float,
          {f,1064},
          [{tr,{x,0},
               {t_union,none,nil,
                        {t_number,{42,42}},
                        none,
                        {t_bitstring,16,false}}}]}.
    {test,is_eq_exact,{f,1057},[{tr,{x,1},{t_atom,any}},{atom,a6}]}.
    {move,{atom,six},{x,0}}.
    return.
  {label,1064}.
    {test,is_integer,
          {f,1065},
          [{tr,{x,0},
               {t_union,none,nil,
                        {t_integer,{42,42}},
                        none,
                        {t_bitstring,16,false}}}]}.
    {test,is_eq_exact,{f,1057},[{tr,{x,1},{t_atom,any}},{atom,a4}]}.
    {move,{atom,four},{x,0}}.
    return.
  {label,1065}.
    {test,is_nil,
          {f,1057},
          [{tr,{x,0},{t_union,none,nil,none,none,{t_bitstring,16,false}}}]}.
    {test,is_eq_exact,{f,1057},[{tr,{x,1},{t_atom,any}},{atom,a5}]}.
    {move,{atom,five},{x,0}}.
    return.


{function, calling_a_binary, 1, 1067}.
  {label,1066}.
    {line,[{location,"bs_match_r25_SUITE.erl",1830}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,calling_a_binary},1}.
  {label,1067}.
    {test,is_list,{f,1066},[{x,0}]}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,nil,{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1831}]}.
    {call,2,{f,1073}}. % call_binary/2
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {'catch',{y,1},{f,1068}}.
    {move,nil,{x,1}}.
    {move,{literal,<<1>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1832}]}.
    {call,2,{f,1073}}. % call_binary/2
    {'%',{var_info,{x,0},[{type,nil}]}}.
  {label,1068}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,1071},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1071},[{x,1},2,{atom,badarg}]}.
    {'catch',{y,0},{f,1069}}.
    {move,nil,{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r25_SUITE.erl",1833}]}.
    {call,2,{f,1073}}. % call_binary/2
    {'%',{var_info,{x,0},[{type,nil}]}}.
  {label,1069}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1070},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1070},[{x,1},2,{atom,badarg}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,1070}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1833}]}.
    {badmatch,{x,0}}.
  {label,1071}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",1832}]}.
    {badmatch,{x,0}}.


{function, call_binary, 2, 1073}.
  {label,1072}.
    {line,[{location,"bs_match_r25_SUITE.erl",1836}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,call_binary},2}.
  {label,1073}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,nil}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_test_tail2,{f,1074},[{x,0},0]}.
    {move,{x,1},{x,0}}.
    return.
  {label,1074}.
    {test,bs_get_integer2,
          {f,1075},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1838,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,0},{x,0},3}.
    {line,[{location,"bs_match_r25_SUITE.erl",1839}]}.
    {bs_create_bin,{f,0},
                   0,3,8,
                   {x,1},
                   {list,[{atom,append},
                          1,8,nil,nil,
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,2},{t_integer,{0,255}}},
                          {integer,8}]}}.
    {allocate,0,2}.
    {swap,{x,0},{x,1}}.
    {call_fun2,{atom,unsafe},1,{tr,{x,1},{t_bitstring,8,false}}}.
    {deallocate,0}.
    return.
  {label,1075}.
    {bs_get_tail,{x,0},{x,0},2}.
    {jump,{f,1072}}.


{function, binary_in_map, 1, 1077}.
  {label,1076}.
    {line,[{location,"bs_match_r25_SUITE.erl",1841}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,binary_in_map},1}.
  {label,1077}.
    {test,is_list,{f,1076},[{x,0}]}.
    {allocate,4,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3}]}}.
    {move,{literal,#{key => <<"*">>}},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1842}]}.
    {call,1,{f,1087}}. % match_binary_in_map/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,3},{f,1078}}.
    {move,{literal,#{key => 1}},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1844}]}.
    {call,1,{f,1087}}. % match_binary_in_map/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1078}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,1085},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1085},[{x,1}]}.
    {test,test_arity,{f,1085},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,1085},[{x,1},2,{atom,badmatch}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_map,{f,1085},[{x,1}]}.
    {get_map_elements,{f,1085},
                      {tr,{x,1},{t_map,any,any}},
                      {list,[{atom,key},{x,1}]}}.
    {test,is_eq_exact,{f,1085},[{x,1},{integer,1}]}.
    {'catch',{y,2},{f,1079}}.
    {move,{literal,#{key => <<3,255>>}},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",1846}]}.
    {call,1,{f,1087}}. % match_binary_in_map/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1079}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,1084},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1084},[{x,1}]}.
    {test,test_arity,{f,1084},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,1084},[{x,1},2,{atom,badmatch}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_map,{f,1084},[{x,1}]}.
    {get_map_elements,{f,1084},
                      {tr,{x,1},{t_map,any,any}},
                      {list,[{atom,key},{x,1}]}}.
    {test,is_eq_exact,{f,1084},[{x,1},{literal,<<3,255>>}]}.
    {'catch',{y,1},{f,1080}}.
    {move,{literal,#{key => <<1>>}},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",1848}]}.
    {call,1,{f,1087}}. % match_binary_in_map/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1080}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,1083},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1083},[{x,1}]}.
    {test,test_arity,{f,1083},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,1083},[{x,1},2,{atom,badmatch}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_map,{f,1083},[{x,1}]}.
    {get_map_elements,{f,1083},
                      {tr,{x,1},{t_map,any,any}},
                      {list,[{atom,key},{x,1}]}}.
    {test,is_eq_exact,{f,1083},[{x,1},{literal,<<1>>}]}.
    {'catch',{y,0},{f,1081}}.
    {move,{atom,not_a_map},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",1850}]}.
    {call,1,{f,1087}}. % match_binary_in_map/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1081}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1082},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1082},[{x,1}]}.
    {test,test_arity,{f,1082},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1082},[{x,1},{literal,{badmatch,not_a_map}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,4}.
    return.
  {label,1082}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1849}]}.
    {badmatch,{x,0}}.
  {label,1083}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",1847}]}.
    {badmatch,{x,0}}.
  {label,1084}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",1845}]}.
    {badmatch,{x,0}}.
  {label,1085}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",1843}]}.
    {badmatch,{x,0}}.


{function, match_binary_in_map, 1, 1087}.
  {label,1086}.
    {line,[{location,"bs_match_r25_SUITE.erl",1853}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,match_binary_in_map},1}.
  {label,1087}.
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
        {f,1088},
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
        {f,1088},
        {tr,{x,0},
            {t_map,
                {t_atom,[key]},
                {t_union,none,none,
                    {t_integer,{1,1}},
                    none,
                    {t_bitstring,8,false}}}},
        {list,[{atom,key},{x,1}]}}.
    {test,is_eq_exact,
          {f,1088},
          [{tr,{x,1},
               {t_union,none,none,
                        {t_integer,{1,1}},
                        none,
                        {t_bitstring,8,false}}},
           {literal,<<"*">>}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1088}.
    {line,[{location,"bs_match_r25_SUITE.erl",1856}]}.
    {badmatch,{x,0}}.


{function, match_string_opt, 1, 1090}.
  {label,1089}.
    {line,[{location,"bs_match_r25_SUITE.erl",1860}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,match_string_opt},1}.
  {label,1090}.
    {test,is_list,{f,1089},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,{<<1>>,{v,<<1,2,3>>}}},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1862}]}.
    {call,1,{f,1093}}. % do_match_string_opt/1
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
        {f,1091},
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
  {label,1091}.
    {line,[{location,"bs_match_r25_SUITE.erl",1861}]}.
    {badmatch,{x,0}}.


{function, do_match_string_opt, 1, 1093}.
  {label,1092}.
    {line,[{location,"bs_match_r25_SUITE.erl",1865}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_match_string_opt},1}.
  {label,1093}.
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
          {f,1092},
          [{tr,{x,1},{t_bitstring,8,false}},{literal,<<1>>}]}.
    {test_heap,4,1}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {put_tuple2,{x,0},{list,[{atom,x},{x,1},{x,0}]}}.
    return.


{function, select_on_integer, 1, 1095}.
  {label,1094}.
    {line,[{location,"bs_match_r25_SUITE.erl",1868}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,select_on_integer},1}.
  {label,1095}.
    {test,is_list,{f,1094},[{x,0}]}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1869}]}.
    {call,1,{f,1105}}. % do_select_on_integer/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,none,
                                   {t_integer,{0,127}},
                                   none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,1103},
          [{tr,{x,0},
               {t_union,none,none,
                        {t_integer,{0,127}},
                        none,
                        {t_bitstring,8,false}}},
           {integer,42}]}.
    {move,{literal,<<128,97,98,99>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",1870}]}.
    {call,1,{f,1105}}. % do_select_on_integer/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,none,
                                   {t_integer,{0,127}},
                                   none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,1102},
          [{tr,{x,0},
               {t_union,none,none,
                        {t_integer,{0,127}},
                        none,
                        {t_bitstring,8,false}}},
           {literal,<<"abc">>}]}.
    {'catch',{y,2},{f,1096}}.
    {move,{literal,<<0:1>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",1872}]}.
    {call,1,{f,1105}}. % do_select_on_integer/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,none,
                                   {t_integer,{0,127}},
                                   none,
                                   {t_bitstring,8,false}}}]}}.
  {label,1096}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,1101},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,1},{f,1097}}.
    {move,{literal,<<1:1>>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r25_SUITE.erl",1873}]}.
    {call,1,{f,1105}}. % do_select_on_integer/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,none,
                                   {t_integer,{0,127}},
                                   none,
                                   {t_bitstring,8,false}}}]}}.
  {label,1097}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,1100},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,0},{f,1098}}.
    {move,{literal,<<0,0>>},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r25_SUITE.erl",1874}]}.
    {call,1,{f,1105}}. % do_select_on_integer/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,none,
                                   {t_integer,{0,127}},
                                   none,
                                   {t_bitstring,8,false}}}]}}.
  {label,1098}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1099},[{x,0},2,{atom,'EXIT'}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,3}.
    return.
  {label,1099}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1874}]}.
    {badmatch,{x,0}}.
  {label,1100}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",1873}]}.
    {badmatch,{x,0}}.
  {label,1101}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",1872}]}.
    {badmatch,{x,0}}.
  {label,1102}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",1870}]}.
    {badmatch,{x,0}}.
  {label,1103}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",1869}]}.
    {badmatch,{x,0}}.


{function, do_select_on_integer, 1, 1105}.
  {label,1104}.
    {line,[{location,"bs_match_r25_SUITE.erl",1878}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_select_on_integer},1}.
  {label,1105}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,1,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {test,bs_get_integer2,
          {f,1107},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,1},
           1,
           {field_flags,[{anno,[1878,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,1106},[{x,2},{integer,0}]}.
    {test,bs_get_integer2,
          {f,1107},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,7},
           1,
           {field_flags,[{anno,[1878,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1107},[{x,0},0]}.
    {move,{x,2},{x,0}}.
    return.
  {label,1106}.
    {test,bs_skip_bits2,
          {f,1107},
          [{x,0},
           {integer,7},
           1,
           {field_flags,[{anno,[1880,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,1107},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {atom,all},
           8,
           {field_flags,[{anno,[1880,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {move,{x,2},{x,0}}.
    return.
  {label,1107}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,1104}}.


{function, map_and_binary, 1, 1109}.
  {label,1108}.
    {line,[{location,"bs_match_r25_SUITE.erl",1886}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,map_and_binary},1}.
  {label,1109}.
    {allocate,0,0}.
    {move,{literal,<<"10:37am">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1887}]}.
    {call,1,{f,1114}}. % do_map_and_binary/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_bitstring,8,false},
                                     2 => {t_bitstring,8,false},
                                     3 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
          {f,1112},
          [{tr,{x,0},
               {t_tuple,3,true,
                        #{1 => {t_bitstring,8,false},
                          2 => {t_bitstring,8,false},
                          3 => {t_bitstring,8,false}}}},
           {literal,{<<"10">>,<<"37">>,<<"am">>}}]}.
    {move,{literal,#{time => "noon"}},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1889}]}.
    {call,1,{f,1114}}. % do_map_and_binary/1
    {'%',{var_info,{x,0},[{type,{t_tuple,2,false,#{}}}]}}.
    {test,is_tagged_tuple,
          {f,1111},
          [{tr,{x,0},{t_tuple,2,false,#{}}},2,{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,1111},[{x,1},{literal,#{time => "noon"}}]}.
    {move,{literal,#{hour => 8,min => 42}},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1891}]}.
    {call,1,{f,1114}}. % do_map_and_binary/1
    {'%',{var_info,{x,0},[{type,{t_tuple,2,false,#{}}}]}}.
    {test,test_arity,{f,1110},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1110},[{x,1},{integer,8}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,1110},[{x,1},{integer,42}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,{f,1110},[{x,1},{literal,#{hour => 8,min => 42}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1110}.
    {badmatch,{x,0}}.
  {label,1111}.
    {line,[{location,"bs_match_r25_SUITE.erl",1889}]}.
    {badmatch,{x,0}}.
  {label,1112}.
    {line,[{location,"bs_match_r25_SUITE.erl",1887}]}.
    {badmatch,{x,0}}.


{function, do_map_and_binary, 1, 1114}.
  {label,1113}.
    {line,[{location,"bs_match_r25_SUITE.erl",1894}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_map_and_binary},1}.
  {label,1114}.
    {'%',{var_info,{x,0},[{type,other},accepts_match_context]}}.
    {test,bs_start_match3,{f,1116},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_binary2,
          {f,1115},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,2},
           8,
           {field_flags,[{anno,[1894,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_match_string,{f,1115},[{x,1},8,{string,<<":">>}]}.
    {test,bs_get_binary2,
          {f,1115},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,2},
           8,
           {field_flags,[{anno,[1894,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_binary2,
          {f,1115},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {atom,all},
           8,
           {field_flags,[{anno,[1894,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test_heap,4,5}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3},{x,4}]}}.
    return.
  {label,1115}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,1113}}.
  {label,1116}.
    {test,is_map,{f,1113},[{tr,{x,0},other}]}.
    {test,has_map_fields,{f,1117},{x,0},{list,[{atom,time}]}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,ok},{x,0}]}}.
    return.
  {label,1117}.
    {get_map_elements,{f,1113},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{atom,min},{x,2},{atom,hour},{x,1}]}}.
    {test_heap,4,3}.
    {put_tuple2,{x,0},{list,[{x,1},{x,2},{x,0}]}}.
    return.


{function, unsafe_branch_caching, 1, 1119}.
  {label,1118}.
    {line,[{location,"bs_match_r25_SUITE.erl",1905}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,unsafe_branch_caching},1}.
  {label,1119}.
    {allocate,0,0}.
    {move,{literal,<<42,1>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1906}]}.
    {call,1,{f,1126}}. % do_unsafe_branch_caching/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,1124},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<>>}]}.
    {move,{literal,<<42,2>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1907}]}.
    {call,1,{f,1126}}. % do_unsafe_branch_caching/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,1123},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<>>}]}.
    {move,{literal,<<42,3>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1908}]}.
    {call,1,{f,1126}}. % do_unsafe_branch_caching/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,1122},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<>>}]}.
    {move,{literal,<<42,3,17,18>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1909}]}.
    {call,1,{f,1126}}. % do_unsafe_branch_caching/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,1121},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<17,18>>}]}.
    {move,{literal,<<1,3,42,2>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1910}]}.
    {call,1,{f,1126}}. % do_unsafe_branch_caching/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,1120},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1120}.
    {badmatch,{x,0}}.
  {label,1121}.
    {line,[{location,"bs_match_r25_SUITE.erl",1909}]}.
    {badmatch,{x,0}}.
  {label,1122}.
    {line,[{location,"bs_match_r25_SUITE.erl",1908}]}.
    {badmatch,{x,0}}.
  {label,1123}.
    {line,[{location,"bs_match_r25_SUITE.erl",1907}]}.
    {badmatch,{x,0}}.
  {label,1124}.
    {line,[{location,"bs_match_r25_SUITE.erl",1906}]}.
    {badmatch,{x,0}}.


{function, do_unsafe_branch_caching, 1, 1126}.
  {label,1125}.
    {line,[{location,"bs_match_r25_SUITE.erl",1914}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_unsafe_branch_caching},1}.
  {label,1126}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,1131},
          1,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1914,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_get_integer2,
          {f,1130},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1915,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,0},{x,0},3}.
    {select_val,{tr,{x,2},{t_integer,{0,255}}},
                {f,1128},
                {list,[{integer,1},{f,1127},{integer,2},{f,1127}]}}.
  {label,1127}.
    {move,{literal,<<>>},{x,0}}.
  {label,1128}.
    {test,is_eq_exact,{f,1129},[{tr,{x,1},{t_integer,{0,255}}},{integer,1}]}.
    {call_only,1,{f,1126}}. % do_unsafe_branch_caching/1
  {label,1129}.
    return.
  {label,1130}.
    {bs_get_tail,{x,0},{x,0},1}.
    {line,[{location,"bs_match_r25_SUITE.erl",1915}]}.
    {badmatch,{x,0}}.
  {label,1131}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,1125}}.


{function, bad_literals, 1, 1133}.
  {label,1132}.
    {line,[{location,"bs_match_r25_SUITE.erl",1927}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bad_literals},1}.
  {label,1133}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{integer,1114116},{x,1}}.
    {move,{integer,1114108},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1935}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {test_heap,10,1}.
    {put_list,{integer,2},{x,0},{x,0}}.
    {put_list,{integer,1},{x,0},{x,0}}.
    {put_list,{integer,0},{x,0},{x,0}}.
    {put_list,{integer,-1},{x,0},{x,0}}.
    {put_list,{integer,-100},{x,0},{x,0}}.
    {call,1,{f,1901}}. % '-bad_literals/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_cons,any,nil}}]}}.
    {move,{x,0},{y,1}}.
    {move,{integer,8},{x,1}}.
    {move,{integer,-2},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1932}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{y,1},{x,1}}.
    {init_yregs,{list,[{y,1}]}}.
    {call,2,{f,1894}}. % '-bad_literals/1-lc$^1/1-1-'/2
    {'%',{var_info,{x,0},[{type,{t_cons,any,nil}}]}}.
    {move,{x,0},{y,1}}.
    {move,{integer,8},{x,1}}.
    {move,{integer,-8},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1930}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{y,1},{x,1}}.
    {init_yregs,{list,[{y,1}]}}.
    {call,2,{f,1887}}. % '-bad_literals/1-lc$^3/1-3-'/2
    {'%',{var_info,{x,0},[{type,{t_cons,any,nil}}]}}.
    {move,{x,0},{y,1}}.
    {move,{atom,bs_match_r25_SUITE_bad_literals},{x,0}}.
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
    {init_yregs,{list,[{y,1}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1936}]}.
    {call_ext,1,{extfunc,merl,tree,1}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1941}]}.
    {call_ext,1,{extfunc,merl,print,1}}.
    {move,{atom,bs_match_r25_SUITE},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1942}]}.
    {call_ext,1,{extfunc,test_lib,opt_opts,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1943}]}.
    {call_ext,2,{extfunc,merl,compile_and_load,2}}.
    {test,is_tagged_tuple,{f,1138},[{x,0},2,{atom,ok}]}.
    {line,[{location,"bs_match_r25_SUITE.erl",1944}]}.
    {call_ext,0,{extfunc,bs_match_r25_SUITE_bad_literals,f,0}}.
    {'catch',{y,1},{f,1134}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1946}]}.
    {call,0,{f,1140}}. % bad_literals_1/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1134}.
    {catch_end,{y,1}}.
    {test,is_eq_exact,{f,1137},[{x,0},{literal,{'EXIT',<<"*">>}}]}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",1947}]}.
    {call,1,{f,1142}}. % bad_literals_2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[no_match]}}]}}.
    {move,{integer,8},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",1949}]}.
    {call,1,{f,1778}}. % id/1
    {'catch',{y,0},{f,1135}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",1950}]}.
    {badmatch,{literal,<<"ÿ">>}}.
  {label,1135}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1136},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1136},[{x,1}]}.
    {test,test_arity,{f,1136},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,1136},[{x,1},2,{atom,badmatch}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,1136}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",1950}]}.
    {badmatch,{x,0}}.
  {label,1137}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",1946}]}.
    {badmatch,{x,0}}.
  {label,1138}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",1943}]}.
    {badmatch,{x,0}}.


{function, bad_literals_1, 0, 1140}.
  {label,1139}.
    {line,[{location,"bs_match_r25_SUITE.erl",1953}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bad_literals_1},0}.
  {label,1140}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1957}]}.
    {call_ext_only,1,{extfunc,erlang,exit,1}}.


{function, bad_literals_2, 1, 1142}.
  {label,1141}.
    {line,[{location,"bs_match_r25_SUITE.erl",1963}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bad_literals_2},1}.
  {label,1142}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {move,{atom,no_match},{x,0}}.
    return.


{function, signed_lit_match, 2, 1144}.
  {label,1143}.
    {line,[{location,"bs_match_r25_SUITE.erl",1970}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,signed_lit_match},2}.
  {label,1144}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,3}}}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1971}]}.
    {bs_create_bin,{f,0},
                   0,2,1,
                   {x,2},
                   {list,[{atom,integer},
                          1,1,nil,
                          {x,0},
                          {tr,{x,1},{t_integer,{0,3}}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,2}}.
    {test,bs_get_integer2,
          {f,1145},
          3,
          [{tr,{x,2},{t_bs_context,1}},
           {tr,{x,1},{t_integer,{0,3}}},
           1,
           {field_flags,[{anno,[1972,{file,"bs_match_r25_SUITE.erl"}]},
                         signed,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1145},[{x,2},0]}.
    {test,is_eq_exact,{f,1145},[{tr,{x,3},{t_integer,{-4,3}}},{x,0}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",1973}]}.
    {call_ext_last,1,{extfunc,merl,tree,1},3}.
  {label,1145}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",1975}]}.
    {call_ext_last,1,{extfunc,merl,tree,1},3}.


{function, unsigned_lit_match, 2, 1147}.
  {label,1146}.
    {line,[{location,"bs_match_r25_SUITE.erl",1983}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,unsigned_lit_match},2}.
  {label,1147}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,2}}}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1984}]}.
    {bs_create_bin,{f,0},
                   0,2,1,
                   {x,2},
                   {list,[{atom,integer},
                          1,1,nil,
                          {x,0},
                          {tr,{x,1},{t_integer,{0,2}}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,2}}.
    {test,bs_get_integer2,
          {f,1148},
          3,
          [{tr,{x,2},{t_bs_context,1}},
           {tr,{x,1},{t_integer,{0,2}}},
           1,
           {field_flags,[{anno,[1985,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1148},[{x,2},0]}.
    {test,is_eq_exact,{f,1148},[{tr,{x,3},{t_integer,{0,3}}},{x,0}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",1986}]}.
    {call_ext_last,1,{extfunc,merl,tree,1},3}.
  {label,1148}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",1988}]}.
    {call_ext_last,1,{extfunc,merl,tree,1},3}.


{function, unicode_match, 1, 1150}.
  {label,1149}.
    {line,[{location,"bs_match_r25_SUITE.erl",1996}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,unicode_match},1}.
  {label,1150}.
    {allocate,5,1}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{x,0},{y,3}}.
    {'try',{y,4},{f,1151}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1997}]}.
    {bs_create_bin,{f,0},
                   0,1,8,
                   {x,0},
                   {list,[{atom,utf8},1,0,nil,{x,0},{atom,undefined}]}}.
    {try_end,{y,4}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_utf8,
          {f,1153},
          2,
          [{tr,{x,1},{t_bs_context,8}},
           {field_flags,[{anno,[1998,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1153},[{x,1},0]}.
    {test,is_eq_exact,{f,1153},[{tr,{x,2},{t_integer,{0,1114111}}},{y,3}]}.
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
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",1999}]}.
    {call_ext_last,1,{extfunc,merl,tree,1},5}.
  {label,1151}.
    {try_case,{y,4}}.
    {test,is_eq_exact,
          {f,1152},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,error}]}.
    {test,is_eq_exact,{f,1152},[{x,1},{atom,badarg}]}.
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
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",2004}]}.
    {call_ext_last,1,{extfunc,merl,tree,1},1}.
  {label,1152}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.
  {label,1153}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",1997}]}.
    {try_case_end,{x,0}}.


{function, good_literals, 1, 1155}.
  {label,1154}.
    {line,[{location,"bs_match_r25_SUITE.erl",2014}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,good_literals},1}.
  {label,1155}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{integer,64},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2015}]}.
    {call,1,{f,1778}}. % id/1
    {line,[{location,"bs_match_r25_SUITE.erl",2018}]}.
    {bs_create_bin,{f,0},
                   0,1,1,
                   {x,1},
                   {list,[{atom,integer},1,1,nil,{integer,42},{x,0}]}}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {call,1,{f,1778}}. % id/1
    {test,bs_start_match3,{f,1158},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,1158},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {y,0},
           1,
           {field_flags,[{anno,[2018,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,1158},
          [{tr,{x,2},{t_integer,{0,'+inf'}}},{integer,42}]}.
    {test,bs_test_tail2,{f,1158},[{x,1},0]}.
    {line,[{location,"bs_match_r25_SUITE.erl",2019}]}.
    {bs_create_bin,{f,0},
                   0,0,1,
                   {x,0},
                   {list,[{atom,float},1,1,nil,{integer,42},{y,0}]}}.
    {call,1,{f,1778}}. % id/1
    {test,bs_start_match3,{f,1157},1,[{x,0}],{x,1}}.
    {test,bs_get_float2,
          {f,1157},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {y,0},
           1,
           {field_flags,[{anno,[2019,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,1157},[{tr,{x,2},{t_float,any}},{float,42.0}]}.
    {test,bs_test_tail2,{f,1157},[{x,1},0]}.
    {trim,1,0}.
    {move,{literal,<<"Êþ¾ï">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2022}]}.
    {call,1,{f,1778}}. % id/1
    {test,is_eq_exact,{f,1156},[{x,0},{literal,<<"Êþ¾ï">>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1156}.
    {badmatch,{x,0}}.
  {label,1157}.
    {line,[{location,"bs_match_r25_SUITE.erl",2019}]}.
    {badmatch,{x,0}}.
  {label,1158}.
    {line,[{location,"bs_match_r25_SUITE.erl",2018}]}.
    {badmatch,{x,0}}.


{function, constant_propagation, 1, 1160}.
  {label,1159}.
    {line,[{location,"bs_match_r25_SUITE.erl",2025}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,constant_propagation},1}.
  {label,1160}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,<<5>>},{x,1}}.
    {move,{atom,a},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2026}]}.
    {call,2,{f,1167}}. % constant_propagation_a/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,1165},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<5>>}]}.
    {'catch',{y,0},{f,1161}}.
    {move,{literal,<<5>>},{x,1}}.
    {move,{atom,b},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",2027}]}.
    {call,2,{f,1167}}. % constant_propagation_a/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1161}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1164},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1164},[{x,1}]}.
    {test,test_arity,{f,1164},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1164},[{x,1},{literal,{case_clause,b}}]}.
    {move,{literal,<<1,2>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",2028}]}.
    {call,1,{f,1171}}. % constant_propagation_b/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,65535}}}]}}.
    {test,is_eq_exact,
          {f,1163},
          [{tr,{x,0},{t_integer,{0,65535}}},{integer,258}]}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",2029}]}.
    {call,0,{f,1174}}. % constant_propagation_c/0
    {'%',{var_info,{x,0},
                   [{type,{t_fun,1,
                                 {'-constant_propagation_c/0-fun-0-',1},
                                 {t_integer,{0,65535}}}}]}}.
    {move,{literal,<<1,3>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",2030}]}.
    {call,1,{f,1883}}. % '-constant_propagation_c/0-fun-0-'/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,65535}}}]}}.
    {test,is_eq_exact,
          {f,1162},
          [{tr,{x,0},{t_integer,{0,65535}}},{integer,259}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,1162}.
    {badmatch,{x,0}}.
  {label,1163}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",2028}]}.
    {badmatch,{x,0}}.
  {label,1164}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",2027}]}.
    {badmatch,{x,0}}.
  {label,1165}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",2026}]}.
    {badmatch,{x,0}}.


{function, constant_propagation_a, 2, 1167}.
  {label,1166}.
    {line,[{location,"bs_match_r25_SUITE.erl",2033}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,constant_propagation_a},2}.
  {label,1167}.
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,{f,1169},[{tr,{x,0},{t_atom,[a,b]}},{atom,a}]}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,0}}.
    {test,bs_get_integer2,
          {f,1168},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2037,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,1168},[{tr,{x,2},{t_integer,{0,255}}},{integer,5}]}.
    {test,bs_test_tail2,{f,1168},[{x,0},0]}.
    {move,{x,1},{x,0}}.
    return.
  {label,1168}.
    {line,[{location,"bs_match_r25_SUITE.erl",2037}]}.
    {badmatch,{x,1}}.
  {label,1169}.
    {line,[{location,"bs_match_r25_SUITE.erl",2034}]}.
    {case_end,{atom,b}}.


{function, constant_propagation_b, 1, 1171}.
  {label,1170}.
    {line,[{location,"bs_match_r25_SUITE.erl",2039}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,constant_propagation_b},1}.
  {label,1171}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,16,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {test,bs_get_integer2,
          {f,1172},
          2,
          [{tr,{x,0},{t_bs_context,16}},
           {integer,16},
           1,
           {field_flags,[{anno,[2041,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1172},[{x,0},0]}.
    {move,{x,2},{x,0}}.
    return.
  {label,1172}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {line,[{location,"bs_match_r25_SUITE.erl",2041}]}.
    {badmatch,{x,0}}.


{function, constant_propagation_c, 0, 1174}.
  {label,1173}.
    {line,[{location,"bs_match_r25_SUITE.erl",2044}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,constant_propagation_c},0}.
  {label,1174}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1883},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_integer,{0,65535}}}]}}.
    return.


{function, parse_xml, 1, 1176}.
  {label,1175}.
    {line,[{location,"bs_match_r25_SUITE.erl",2051}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,parse_xml},1}.
  {label,1176}.
    {allocate,0,0}.
    {move,{literal,<<"<?xmlX">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2052}]}.
    {call,1,{f,1180}}. % do_parse_xml/1
    {test,is_eq_exact,{f,1178},[{x,0},{literal,<<"<?xmlX">>}]}.
    {move,{literal,<<"<?xml ">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2053}]}.
    {call,1,{f,1180}}. % do_parse_xml/1
    {test,is_eq_exact,{f,1177},[{x,0},{literal,<<" ">>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1177}.
    {badmatch,{x,0}}.
  {label,1178}.
    {line,[{location,"bs_match_r25_SUITE.erl",2052}]}.
    {badmatch,{x,0}}.


{function, do_parse_xml, 1, 1180}.
  {label,1179}.
    {line,[{location,"bs_match_r25_SUITE.erl",2056}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_parse_xml},1}.
  {label,1180}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,16,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {test,bs_match_string,{f,1183},[{x,0},40,{string,<<"<?xml">>}]}.
    {allocate,3,2}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
    {bs_get_position,{x,0},{y,0},1}.
    {line,[{location,"bs_match_r25_SUITE.erl",2060}]}.
    {call,1,{f,1185}}. % is_next_char_whitespace/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1181},[{x,0},{atom,true}]}.
    {bs_set_position,{y,2},{y,0}}.
    {bs_get_tail,{y,2},{x,0},0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2064}]}.
    {call,1,{f,1778}}. % id/1
    {jump,{f,1182}}.
  {label,1181}.
    {bs_set_position,{y,2},{y,1}}.
    {bs_get_tail,{y,2},{x,0},0}.
  {label,1182}.
    {call_last,1,{f,1778},3}. % id/1
  {label,1183}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,1179}}.


{function, is_next_char_whitespace, 1, 1185}.
  {label,1184}.
    {line,[{location,"bs_match_r25_SUITE.erl",2068}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,is_next_char_whitespace},1}.
  {label,1185}.
    {'%',{var_info,{x,0},[{type,{t_bs_context,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,resume},1,{x,0},{x,0}}.
    {test,bs_get_utf8,
          {f,1186},
          1,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[2068,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {bif,'=:=',{f,0},[{tr,{x,1},{t_integer,{0,1114111}}},{integer,32}],{x,0}}.
    return.
  {label,1186}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,1184}}.


{function, get_payload, 1, 1188}.
  {label,1187}.
    {line,[{location,"bs_match_r25_SUITE.erl",2075}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,get_payload},1}.
  {label,1188}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,{ext_header,17,<<0,0,0,0,13,117>>}},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2076}]}.
    {call,1,{f,1193}}. % do_get_payload/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {test,is_eq_exact,
          {f,1191},
          [{tr,{x,0},{t_bitstring,16,false}},{literal,<<0,0,0,0,13,117>>}]}.
    {'catch',{y,0},{f,1189}}.
    {move,{literal,{ext_header,17,undefined}},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",2077}]}.
    {call,1,{f,1193}}. % do_get_payload/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
  {label,1189}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1190},[{x,0},2,{atom,'EXIT'}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,1190}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",2077}]}.
    {badmatch,{x,0}}.
  {label,1191}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",2076}]}.
    {badmatch,{x,0}}.


{function, do_get_payload, 1, 1193}.
  {label,1192}.
    {line,[{location,"bs_match_r25_SUITE.erl",2080}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_get_payload},1}.
  {label,1193}.
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
    {test,bs_start_match3,{f,1194},1,[{x,0}],{x,1}}.
    {test,bs_test_tail2,{f,1194},[{x,1},48]}.
    return.
  {label,1194}.
    {line,[{location,"bs_match_r25_SUITE.erl",2083}]}.
    {badmatch,{x,0}}.


{function, escape, 1, 1196}.
  {label,1195}.
    {line,[{location,"bs_match_r25_SUITE.erl",2086}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,escape},1}.
  {label,1196}.
    {allocate,0,0}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2087}]}.
    {call,2,{f,1203}}. % escape/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,1201},
          [{tr,{x,0},{t_integer,{0,'+inf'}}},{integer,0}]}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<128>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2088}]}.
    {call,2,{f,1203}}. % escape/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,1200},
          [{tr,{x,0},{t_integer,{0,'+inf'}}},{integer,1}]}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<128,255>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2089}]}.
    {call,2,{f,1203}}. % escape/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,1199},
          [{tr,{x,0},{t_integer,{0,'+inf'}}},{integer,2}]}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2090}]}.
    {call,2,{f,1203}}. % escape/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,1198},
          [{tr,{x,0},{t_integer,{0,'+inf'}}},{integer,42}]}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<"*\b">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2091}]}.
    {call,2,{f,1203}}. % escape/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,1197},
          [{tr,{x,0},{t_integer,{0,'+inf'}}},{integer,50}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1197}.
    {badmatch,{x,0}}.
  {label,1198}.
    {line,[{location,"bs_match_r25_SUITE.erl",2090}]}.
    {badmatch,{x,0}}.
  {label,1199}.
    {line,[{location,"bs_match_r25_SUITE.erl",2089}]}.
    {badmatch,{x,0}}.
  {label,1200}.
    {line,[{location,"bs_match_r25_SUITE.erl",2088}]}.
    {badmatch,{x,0}}.
  {label,1201}.
    {line,[{location,"bs_match_r25_SUITE.erl",2087}]}.
    {badmatch,{x,0}}.


{function, escape, 2, 1203}.
  {label,1202}.
    {line,[{location,"bs_match_r25_SUITE.erl",2094}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,escape},2}.
  {label,1203}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,'+inf'}}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,1205},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2094,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_ge,{f,1204},[{tr,{x,2},{t_integer,{0,255}}},{integer,127}]}.
    {line,[{location,"bs_match_r25_SUITE.erl",2095}]}.
    {gc_bif,'+',{f,0},2,[{tr,{x,1},{t_integer,{0,'+inf'}}},{integer,1}],{x,1}}.
    {call_only,2,{f,1203}}. % escape/2
  {label,1204}.
    {line,[{location,"bs_match_r25_SUITE.erl",2097}]}.
    {gc_bif,'+',
            {f,0},
            3,
            [{tr,{x,1},{t_integer,{0,'+inf'}}},{tr,{x,2},{t_integer,{0,126}}}],
            {x,1}}.
    {call_only,2,{f,1203}}. % escape/2
  {label,1205}.
    {move,{x,1},{x,0}}.
    return.


{function, num_slots_different, 1, 1207}.
  {label,1206}.
    {line,[{location,"bs_match_r25_SUITE.erl",2102}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,num_slots_different},1}.
  {label,1207}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",2110}]}.
    {call,1,{f,1879}}. % '-num_slots_different/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {'catch',{y,3},{f,1208}}.
    {move,{literal,<<"default">>},{x,1}}.
    {move,{literal,<<"Remove">>},{x,2}}.
    {move,{literal,<<"d">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2112}]}.
    {call,3,{f,1217}}. % lgettext/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[ok]},
                                     2 => {t_bitstring,8,false}}}}]}}.
  {label,1208}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,1215},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,2},{f,1209}}.
    {move,{literal,<<"default">>},{x,1}}.
    {move,{literal,<<"Remove">>},{x,2}}.
    {move,nil,{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_r25_SUITE.erl",2113}]}.
    {call,3,{f,1217}}. % lgettext/3
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1209}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,1214},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,1},{f,1210}}.
    {move,{literal,<<"def">>},{x,1}}.
    {move,{literal,<<"Remove">>},{x,2}}.
    {move,{literal,<<"de">>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r25_SUITE.erl",2114}]}.
    {call,3,{f,1217}}. % lgettext/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[ok]},
                                     2 => {t_bitstring,8,false}}}}]}}.
  {label,1210}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,1213},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,0},{f,1211}}.
    {move,{literal,<<"default">>},{x,1}}.
    {move,{literal,<<"Res">>},{x,2}}.
    {move,{literal,<<"de">>},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r25_SUITE.erl",2115}]}.
    {call,3,{f,1217}}. % lgettext/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[ok]},
                                     2 => {t_bitstring,8,false}}}}]}}.
  {label,1211}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1212},[{x,0},2,{atom,'EXIT'}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,4}.
    return.
  {label,1212}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",2115}]}.
    {badmatch,{x,0}}.
  {label,1213}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",2114}]}.
    {badmatch,{x,0}}.
  {label,1214}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",2113}]}.
    {badmatch,{x,0}}.
  {label,1215}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2112}]}.
    {badmatch,{x,0}}.


{function, lgettext, 3, 1217}.
  {label,1216}.
    {line,[{location,"bs_match_r25_SUITE.erl",2119}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,lgettext},3}.
  {label,1217}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,nil,none,none,{t_bitstring,8,false}}},
                    accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,8,false}}]}}.
    {test,bs_start_match3,{f,1228},3,[{x,0}],{x,0}}.
    {bs_get_position,{x,0},{x,3},3}.
    {test,bs_match_string,{f,1227},[{x,0},16,{string,<<"de">>}]}.
    {test,bs_test_tail2,{f,1227},[{x,0},0]}.
    {bs_start_match4,{atom,no_fail},4,{x,1},{x,4}}.
    {test,bs_get_integer2,
          {f,1227},
          5,
          [{tr,{x,4},{t_bs_context,8}},
           {integer,16},
           1,
           {field_flags,[{anno,[2119,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {select_val,{tr,{x,5},{t_integer,{0,65535}}},
                {f,1227},
                {list,[{integer,25701},{f,1220},{integer,28257},{f,1218}]}}.
  {label,1218}.
    {test,bs_match_string,{f,1227},[{x,4},64,{string,<<"vigation">>}]}.
    {test,bs_test_tail2,{f,1227},[{x,4},0]}.
    {bs_start_match4,{atom,no_fail},4,{x,2},{x,4}}.
    {test,bs_match_string,{f,1227},[{x,4},16,{string,<<"Re">>}]}.
    {test,bs_get_integer2,
          {f,1227},
          5,
          [{tr,{x,4},{t_bs_context,8}},
           {integer,16},
           1,
           {field_flags,[{anno,[2129,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {select_val,{tr,{x,5},{t_integer,{0,65535}}},
                {f,1227},
                {list,[{integer,29551},{f,1219},{integer,29557},{f,1221}]}}.
  {label,1219}.
    {test,bs_match_string,{f,1227},[{x,4},40,{string,<<"urces">>}]}.
    {test,bs_test_tail2,{f,1227},[{x,4},0]}.
    {move,{literal,{ok,<<"Ressourcen">>}},{x,0}}.
    return.
  {label,1220}.
    {test,bs_match_string,{f,1227},[{x,4},40,{string,<<"fault">>}]}.
    {test,bs_test_tail2,{f,1227},[{x,4},0]}.
    {bs_start_match4,{atom,no_fail},4,{x,2},{x,4}}.
    {test,bs_match_string,{f,1227},[{x,4},16,{string,<<"Re">>}]}.
    {test,bs_get_integer2,
          {f,1227},
          5,
          [{tr,{x,4},{t_bs_context,8}},
           {integer,16},
           1,
           {field_flags,[{anno,[2119,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {select_val,{tr,{x,5},{t_integer,{0,65535}}},
                {f,1227},
                {list,[{integer,28015},
                       {f,1223},
                       {integer,29541},
                       {f,1222},
                       {integer,29557},
                       {f,1221}]}}.
  {label,1221}.
    {test,bs_match_string,{f,1227},[{x,4},24,{string,<<"lts">>}]}.
    {test,bs_test_tail2,{f,1227},[{x,4},0]}.
    {move,{literal,{ok,<<"Ergebnisse">>}},{x,0}}.
    return.
  {label,1222}.
    {test,bs_match_string,{f,1227},[{x,4},48,{string,<<"rvatio">>}]}.
    {test,bs_test_tail2,{f,1227},[{x,4},0]}.
    {move,{literal,{ok,<<"a">>}},{x,0}}.
    return.
  {label,1223}.
    {test,bs_match_string,{f,1227},[{x,4},16,{string,<<"ve">>}]}.
    {bs_get_position,{x,4},{x,5},5}.
    {test,bs_match_string,{f,1226},[{x,4},48,{string,<<" from ">>}]}.
    {test,bs_get_integer2,
          {f,1227},
          6,
          [{tr,{x,4},{t_bs_context,8}},
           {integer,16},
           1,
           {field_flags,[{anno,[2121,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {select_val,{tr,{x,6},{t_integer,{0,65535}}},
                {f,1226},
                {list,[{integer,27753},{f,1225},{integer,29800},{f,1224}]}}.
  {label,1224}.
    {test,bs_match_string,{f,1227},[{x,4},48,{string,<<"e list">>}]}.
    {test,bs_test_tail2,{f,1226},[{x,4},0]}.
    {move,{literal,{ok,<<"a">>}},{x,0}}.
    return.
  {label,1225}.
    {test,bs_match_string,{f,1227},[{x,4},16,{string,<<"st">>}]}.
    {test,bs_test_tail2,{f,1226},[{x,4},0]}.
    {move,{literal,{ok,<<"a">>}},{x,0}}.
    return.
  {label,1226}.
    {bs_set_position,{x,4},{x,5}}.
    {test,bs_test_tail2,{f,1227},[{x,4},0]}.
    {move,{literal,{ok,<<"a">>}},{x,0}}.
    return.
  {label,1227}.
    {bs_set_position,{x,0},{x,3}}.
    {bs_get_tail,{x,0},{x,0},3}.
    {jump,{f,1216}}.
  {label,1228}.
    {move,nil,{x,0}}.
    {jump,{f,1216}}.


{function, beam_bsm, 1, 1230}.
  {label,1229}.
    {line,[{location,"bs_match_r25_SUITE.erl",2135}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,beam_bsm},1}.
  {label,1230}.
    {allocate,0,0}.
    {move,{literal,[1,0,1,1]},{x,1}}.
    {move,{literal,<<11:4>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2136}]}.
    {call,2,{f,1241}}. % check_bitstring_list/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1239},[{x,0},{atom,true}]}.
    {move,{literal,[0]},{x,1}}.
    {move,{literal,<<11:4>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2137}]}.
    {call,2,{f,1241}}. % check_bitstring_list/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1231},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,1231}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2139}]}.
    {call,1,{f,1245}}. % bsm_validate_scheme/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1238},[{x,0},{atom,true}]}.
    {move,{literal,<<5,10>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2140}]}.
    {call,1,{f,1245}}. % bsm_validate_scheme/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1237},[{x,0},{atom,true}]}.
    {move,{literal,<<5,10,11,12>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2141}]}.
    {call,1,{f,1245}}. % bsm_validate_scheme/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1232},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,1232}.
    {move,nil,{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2142}]}.
    {call,1,{f,1245}}. % bsm_validate_scheme/1
    {'%',{var_info,{x,0},[{type,{t_atom,[true]}}]}}.
    {move,{literal,[5,10]},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2143}]}.
    {call,1,{f,1245}}. % bsm_validate_scheme/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1236},[{x,0},{atom,true}]}.
    {move,{literal,[5,6,7]},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2144}]}.
    {call,1,{f,1245}}. % bsm_validate_scheme/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1233},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,1233}.
    {move,nil,{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2146}]}.
    {call,2,{f,1255}}. % bsm_must_save_and_not_save/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,1235},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<1,2,3>>}]}.
    {test_heap,{alloc,[{words,4},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1877},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_number,any}}]}}.
    {put_list,{x,0},nil,{x,1}}.
    {put_list,{x,0},{x,1},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2148}]}.
    {call,2,{f,1255}}. % bsm_must_save_and_not_save/2
    {'%',{var_info,{x,0},
                   [{type,{t_cons,{t_number,any},{t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,1234},
          [{tr,{x,0},{t_cons,{t_number,any},{t_bitstring,8,false}}},
           {literal,[2,4|<<3>>]}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1234}.
    {badmatch,{x,0}}.
  {label,1235}.
    {line,[{location,"bs_match_r25_SUITE.erl",2146}]}.
    {badmatch,{x,0}}.
  {label,1236}.
    {line,[{location,"bs_match_r25_SUITE.erl",2143}]}.
    {badmatch,{atom,false}}.
  {label,1237}.
    {line,[{location,"bs_match_r25_SUITE.erl",2140}]}.
    {badmatch,{atom,false}}.
  {label,1238}.
    {line,[{location,"bs_match_r25_SUITE.erl",2139}]}.
    {badmatch,{atom,false}}.
  {label,1239}.
    {line,[{location,"bs_match_r25_SUITE.erl",2136}]}.
    {badmatch,{atom,false}}.


{function, check_bitstring_list, 2, 1241}.
  {label,1240}.
    {line,[{location,"bs_match_r25_SUITE.erl",2152}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,check_bitstring_list},2}.
  {label,1241}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{0,1}},nil}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {test,bs_get_integer2,
          {f,1242},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,1},
           1,
           {field_flags,[{anno,[2152,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_nonempty_list,{f,1242},[{x,1}]}.
    {get_list,{x,1},{x,4},{x,5}}.
    {test,is_eq_exact,
          {f,1242},
          [{tr,{x,4},{t_integer,{0,1}}},{tr,{x,3},{t_integer,{0,1}}}]}.
    {move,{x,5},{x,1}}.
    {call_only,2,{f,1241}}. % check_bitstring_list/2
  {label,1242}.
    {bs_set_position,{x,0},{x,2}}.
    {test,bs_test_tail2,{f,1243},[{x,0},0]}.
    {bif,'=:=',{f,0},[{tr,{x,1},{t_list,{t_integer,{0,1}},nil}},nil],{x,0}}.
    return.
  {label,1243}.
    {move,{atom,false},{x,0}}.
    return.


{function, bsm_validate_scheme, 1, 1245}.
  {label,1244}.
    {line,[{location,"bs_match_r25_SUITE.erl",2159}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bsm_validate_scheme},1}.
  {label,1245}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,
                                   {t_list,{t_integer,{5,10}},nil},
                                   none,none,
                                   {t_bs_matchable,8}}},
                    accepts_match_context]}}.
    {test,bs_start_match3,{f,1248},1,[{x,0}],{x,1}}.
    {test,bs_test_tail2,{f,1246},[{x,1},0]}.
    {move,{atom,true},{x,0}}.
    return.
  {label,1246}.
    {test,bs_get_integer2,
          {f,1247},
          2,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2166,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,0}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2167}]}.
    {call,1,{f,1253}}. % bsm_is_scheme/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1250},[{x,0},{atom,true}]}.
    {jump,{f,1249}}.
  {label,1247}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,1244}}.
  {label,1248}.
    {test,is_nonempty_list,{f,1251},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{x,0},{y,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2161}]}.
    {call,1,{f,1253}}. % bsm_is_scheme/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1250},[{x,0},{atom,true}]}.
  {label,1249}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,1245},1}. % bsm_validate_scheme/1
  {label,1250}.
    {move,{atom,false},{x,0}}.
    {deallocate,1}.
    return.
  {label,1251}.
    {move,{atom,true},{x,0}}.
    return.


{function, bsm_is_scheme, 1, 1253}.
  {label,1252}.
    {line,[{location,"bs_match_r25_SUITE.erl",2172}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bsm_is_scheme},1}.
  {label,1253}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2173}]}.
    {gc_bif,'rem',{f,0},1,[{tr,{x,0},{t_integer,{0,255}}},{integer,5}],{x,0}}.
    {bif,'=:=',{f,0},[{tr,{x,0},{t_integer,{0,4}}},{integer,0}],{x,0}}.
    return.


{function, bsm_must_save_and_not_save, 2, 1255}.
  {label,1254}.
    {line,[{location,"bs_match_r25_SUITE.erl",2176}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bsm_must_save_and_not_save},2}.
  {label,1255}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_list,
                     {t_fun,1,{'-beam_bsm/1-fun-0-',1},{t_number,any}},
                     nil}}]}}.
    {test,is_nil,
          {f,1256},
          [{tr,{x,1},
               {t_list,{t_fun,1,{'-beam_bsm/1-fun-0-',1},{t_number,any}},
                       nil}}]}.
    return.
  {label,1256}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,2}}.
    {test,bs_get_integer2,
          {f,1254},
          3,
          [{tr,{x,2},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2178,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {allocate,2,4}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {bs_get_tail,{x,2},{y,1},4}.
    {get_tl,{x,1},{y,0}}.
    {move,{x,3},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2179}]}.
    {call,1,{f,1877}}. % '-beam_bsm/1-fun-0-'/1
    {'%',{var_info,{x,0},[{type,{t_number,any}}]}}.
    {swap,{y,1},{x,0}}.
    {move,{y,0},{x,1}}.
    {trim,1,1}.
    {call,2,{f,1255}}. % bsm_must_save_and_not_save/2
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


{function, guard, 1, 1258}.
  {label,1257}.
    {line,[{location,"bs_match_r25_SUITE.erl",2183}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,guard},1}.
  {label,1258}.
    {allocate,0,0}.
    {move,{literal,{a,b}},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2184}]}.
    {call,1,{f,1778}}. % id/1
    {move,{literal,{1,2,3}},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2185}]}.
    {call,2,{f,1260}}. % guard_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,#{}},{x,1}}.
    {move,{literal,<<"*">>},{x,0}}.
    {call_last,2,{f,1263},0}. % guard_2/2


{function, guard_1, 2, 1260}.
  {label,1259}.
    {line,[{location,"bs_match_r25_SUITE.erl",2190}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,guard_1},2}.
  {label,1260}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,{1,1}},
                                     2 => {t_integer,{2,2}},
                                     3 => {t_integer,{3,3}}}}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {test,bs_get_integer2,
          {f,1261},
          3,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2190,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,1261},
          4,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2190,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_integer2,
          {f,1261},
          5,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2190,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_test_tail2,{f,1261},[{x,0},0]}.
    {test_heap,4,6}.
    {put_tuple2,{x,3},{list,[{x,3},{x,4},{x,5}]}}.
    {test,is_eq_exact,
          {f,1261},
          [{tr,{x,3},
               {t_tuple,3,true,
                        #{1 => {t_integer,{0,255}},
                          2 => {t_integer,{0,255}},
                          3 => {t_integer,{0,255}}}}},
           {literal,{1,2,3}}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1261}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {jump,{f,1259}}.


{function, guard_2, 2, 1263}.
  {label,1262}.
    {line,[{location,"bs_match_r25_SUITE.erl",2194}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,guard_2},2}.
  {label,1263}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_map,none,none}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_test_tail2,{f,1264},[{x,0},8]}.
    {put_map_assoc,{f,0},{literal,#{}},{x,2},2,{list,[nil,{literal,#{}}]}}.
    {test,is_eq_exact,
          {f,1264},
          [{tr,{x,2},{t_map,nil,{t_map,none,none}}},{literal,#{[] => #{}}}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1264}.
    {bs_get_tail,{x,0},{x,0},2}.
    {jump,{f,1262}}.


{function, is_ascii, 1, 1266}.
  {label,1265}.
    {line,[{location,"bs_match_r25_SUITE.erl",2197}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,is_ascii},1}.
  {label,1266}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2198}]}.
    {call,1,{f,1275}}. % do_is_ascii/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1273},[{x,0},{atom,true}]}.
    {move,{literal,<<"string">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",2199}]}.
    {call,1,{f,1275}}. % do_is_ascii/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1272},[{x,0},{atom,true}]}.
    {move,{literal,<<208,128>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",2200}]}.
    {call,1,{f,1275}}. % do_is_ascii/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1267},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,1267}.
    {'catch',{y,1},{f,1268}}.
    {move,{literal,<<65,0:3>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",2201}]}.
    {call,1,{f,1275}}. % do_is_ascii/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
  {label,1268}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,1271},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1271},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,0},{f,1269}}.
    {move,{literal,<<128,0:3>>},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r25_SUITE.erl",2202}]}.
    {call,1,{f,1275}}. % do_is_ascii/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
  {label,1269}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1270},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1270},[{x,1},2,{atom,function_clause}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,1270}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",2202}]}.
    {badmatch,{x,0}}.
  {label,1271}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",2201}]}.
    {badmatch,{x,0}}.
  {label,1272}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",2199}]}.
    {badmatch,{atom,false}}.
  {label,1273}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",2198}]}.
    {badmatch,{atom,false}}.


{function, do_is_ascii, 1, 1275}.
  {label,1274}.
    {line,[{location,"bs_match_r25_SUITE.erl",2205}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_is_ascii},1}.
  {label,1275}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {test,bs_test_tail2,{f,1276},[{x,0},0]}.
    {move,{atom,true},{x,0}}.
    return.
  {label,1276}.
    {test,bs_get_integer2,
          {f,1278},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2207,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_unit,{f,1278},[{x,0},8]}.
    {test,is_ge,{f,1277},[{tr,{x,2},{t_integer,{0,255}}},{integer,128}]}.
    {move,{atom,false},{x,0}}.
    return.
  {label,1277}.
    {call_only,1,{f,1275}}. % do_is_ascii/1
  {label,1278}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,1274}}.


{function, non_opt_eq, 1, 1280}.
  {label,1279}.
    {line,[{location,"bs_match_r25_SUITE.erl",2214}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,non_opt_eq},1}.
  {label,1280}.
    {allocate,0,0}.
    {move,{literal,<<>>},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2215}]}.
    {call,2,{f,1284}}. % non_opt_eq/2
    {'%',{var_info,{x,0},[{type,{t_atom,[true]}}]}}.
    {move,{literal,<<"a">>},{x,1}}.
    {move,{literal,"a"},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2216}]}.
    {call,2,{f,1284}}. % non_opt_eq/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1282},[{x,0},{atom,true}]}.
    {move,{literal,<<"b">>},{x,1}}.
    {move,{literal,"a"},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2217}]}.
    {call,2,{f,1284}}. % non_opt_eq/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1281},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,1281}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1282}.
    {line,[{location,"bs_match_r25_SUITE.erl",2216}]}.
    {badmatch,{atom,false}}.


{function, non_opt_eq, 2, 1284}.
  {label,1283}.
    {line,[{location,"bs_match_r25_SUITE.erl",2223}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,non_opt_eq},2}.
  {label,1284}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{97,97}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {test,bs_get_integer2,
          {f,1286},
          3,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2223,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_nonempty_list,{f,1286},[{x,0}]}.
    {get_tl,{x,0},{x,0}}.
    {test,is_eq_exact,{f,1285},[{tr,{x,3},{t_integer,{0,255}}},{integer,97}]}.
    {call_only,2,{f,1284}}. % non_opt_eq/2
  {label,1285}.
    {move,{atom,false},{x,0}}.
    return.
  {label,1286}.
    {bs_set_position,{x,1},{x,2}}.
    {test,bs_test_tail2,{f,1287},[{x,1},0]}.
    {test,is_nil,{f,1287},[{tr,{x,0},{t_list,{t_integer,{97,97}},nil}}]}.
    {move,{atom,true},{x,0}}.
    return.
  {label,1287}.
    {bs_get_tail,{x,1},{x,1},2}.
    {jump,{f,1283}}.


{function, erl_689, 1, 1289}.
  {label,1288}.
    {line,[{location,"bs_match_r25_SUITE.erl",2232}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,erl_689},1}.
  {label,1289}.
    {allocate,0,0}.
    {move,{atom,bs_match_r25_SUITE},{x,1}}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2233}]}.
    {call,2,{f,1295}}. % do_erl_689_1/2
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
        {f,1293},
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
    {line,[{location,"bs_match_r25_SUITE.erl",2234}]}.
    {call,2,{f,1295}}. % do_erl_689_1/2
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
        {f,1292},
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
    {line,[{location,"bs_match_r25_SUITE.erl",2235}]}.
    {call,2,{f,1298}}. % do_erl_689_2/2
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
        {f,1291},
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
    {line,[{location,"bs_match_r25_SUITE.erl",2236}]}.
    {call,2,{f,1298}}. % do_erl_689_2/2
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
        {f,1290},
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
  {label,1290}.
    {badmatch,{x,0}}.
  {label,1291}.
    {line,[{location,"bs_match_r25_SUITE.erl",2235}]}.
    {badmatch,{x,0}}.
  {label,1292}.
    {line,[{location,"bs_match_r25_SUITE.erl",2234}]}.
    {badmatch,{x,0}}.
  {label,1293}.
    {line,[{location,"bs_match_r25_SUITE.erl",2233}]}.
    {badmatch,{x,0}}.


{function, do_erl_689_1, 2, 1295}.
  {label,1294}.
    {line,[{location,"bs_match_r25_SUITE.erl",2239}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_erl_689_1},2}.
  {label,1295}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[bs_match_r25_SUITE]}}]}}.
    {allocate,1,2}.
    {move,{x,0},{y,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2240}]}.
    {call,2,{f,1301}}. % do_erl_689_1a/2
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
    {line,[{location,"bs_match_r25_SUITE.erl",2241}]}.
    {call,2,{f,1306}}. % do_erl_689_1b/2
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
        {f,1296},
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
  {label,1296}.
    {badmatch,{x,0}}.


{function, do_erl_689_2, 2, 1298}.
  {label,1297}.
    {line,[{location,"bs_match_r25_SUITE.erl",2243}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_erl_689_2},2}.
  {label,1298}.
    {'%',{var_info,{x,0},[{type,{t_atom,[bs_match_r25_SUITE]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2244}]}.
    {call,2,{f,1311}}. % do_erl_689_2a/2
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
    {line,[{location,"bs_match_r25_SUITE.erl",2245}]}.
    {call,2,{f,1316}}. % do_erl_689_2b/2
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
        {f,1299},
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
  {label,1299}.
    {badmatch,{x,0}}.


{function, do_erl_689_1a, 2, 1301}.
  {label,1300}.
    {line,[{location,"bs_match_r25_SUITE.erl",2247}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_erl_689_1a},2}.
  {label,1301}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[bs_match_r25_SUITE]}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,1304},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2247,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_position,{x,0},{x,1},3}.
    {test,is_eq_exact,{f,1302},[{tr,{x,2},{t_integer,{0,255}}},{integer,0}]}.
    {bs_get_tail,{x,0},{x,0},1}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{literal,{0,0,0}},{x,0}]}}.
    return.
  {label,1302}.
    {test,bs_get_integer2,
          {f,1303},
          3,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,16},
           1,
           {field_flags,[{anno,[2253,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,little]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,1303},
          4,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2253,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_integer2,
          {f,1303},
          5,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2253,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {bs_get_tail,{x,0},{x,6},6}.
    {test,is_eq_exact,{f,1303},[{tr,{x,2},{t_integer,{1,255}}},{integer,4}]}.
    {test_heap,7,7}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4},{x,5}]}}.
    {put_tuple2,{x,0},{list,[{x,0},{x,6}]}}.
    return.
  {label,1303}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},3}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{x,0},{x,2}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2248}]}.
    {case_end,{x,0}}.
  {label,1304}.
    {bs_get_tail,{x,0},{x,0},2}.
    {jump,{f,1300}}.


{function, do_erl_689_1b, 2, 1306}.
  {label,1305}.
    {line,[{location,"bs_match_r25_SUITE.erl",2257}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_erl_689_1b},2}.
  {label,1306}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[bs_match_r25_SUITE]}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,1309},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2257,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_position,{x,0},{x,1},3}.
    {test,is_eq_exact,{f,1307},[{tr,{x,2},{t_integer,{0,255}}},{integer,0}]}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2262}]}.
    {call,1,{f,1778}}. % id/1
    {bs_get_tail,{y,0},{x,0},0}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{literal,{0,0,0}},{x,0}]}}.
    {deallocate,1}.
    return.
  {label,1307}.
    {test,bs_get_integer2,
          {f,1308},
          3,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,16},
           1,
           {field_flags,[{anno,[2264,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,little]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,1308},
          4,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2264,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_integer2,
          {f,1308},
          5,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2264,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {bs_get_tail,{x,0},{x,6},6}.
    {test,is_eq_exact,{f,1308},[{tr,{x,2},{t_integer,{1,255}}},{integer,4}]}.
    {allocate,4,7}.
    {move,{x,6},{y,0}}.
    {move,{x,5},{y,1}}.
    {move,{x,4},{y,2}}.
    {move,{x,3},{y,3}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2265}]}.
    {call,1,{f,1778}}. % id/1
    {test_heap,7,0}.
    {put_tuple2,{x,0},{list,[{y,3},{y,2},{y,1}]}}.
    {put_tuple2,{x,0},{list,[{x,0},{y,0}]}}.
    {deallocate,4}.
    return.
  {label,1308}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},3}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{x,0},{x,2}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2258}]}.
    {case_end,{x,0}}.
  {label,1309}.
    {bs_get_tail,{x,0},{x,0},2}.
    {jump,{f,1305}}.


{function, do_erl_689_2a, 2, 1311}.
  {label,1310}.
    {line,[{location,"bs_match_r25_SUITE.erl",2269}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_erl_689_2a},2}.
  {label,1311}.
    {'%',{var_info,{x,0},[{type,{t_atom,[bs_match_r25_SUITE]}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,1314},
          2,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2269,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_position,{x,1},{x,0},3}.
    {test,is_eq_exact,{f,1312},[{tr,{x,2},{t_integer,{0,255}}},{integer,0}]}.
    {bs_get_tail,{x,1},{x,0},2}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{literal,{0,0,0}},{x,0}]}}.
    return.
  {label,1312}.
    {test,bs_get_integer2,
          {f,1313},
          3,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,16},
           1,
           {field_flags,[{anno,[2275,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,little]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,1313},
          4,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2275,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_integer2,
          {f,1313},
          5,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2275,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {bs_get_tail,{x,1},{x,6},6}.
    {test,is_eq_exact,{f,1313},[{tr,{x,2},{t_integer,{1,255}}},{integer,4}]}.
    {test_heap,7,7}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4},{x,5}]}}.
    {put_tuple2,{x,0},{list,[{x,0},{x,6}]}}.
    return.
  {label,1313}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},3}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{x,2},{x,0}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2270}]}.
    {case_end,{x,0}}.
  {label,1314}.
    {bs_get_tail,{x,1},{x,1},2}.
    {jump,{f,1310}}.


{function, do_erl_689_2b, 2, 1316}.
  {label,1315}.
    {line,[{location,"bs_match_r25_SUITE.erl",2279}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_erl_689_2b},2}.
  {label,1316}.
    {'%',{var_info,{x,0},[{type,{t_atom,[bs_match_r25_SUITE]}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,1319},
          2,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2279,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_position,{x,1},{x,0},3}.
    {test,is_eq_exact,{f,1317},[{tr,{x,2},{t_integer,{0,255}}},{integer,0}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2284}]}.
    {call,1,{f,1778}}. % id/1
    {bs_get_tail,{y,0},{x,0},0}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{literal,{0,0,0}},{x,0}]}}.
    {deallocate,1}.
    return.
  {label,1317}.
    {test,bs_get_integer2,
          {f,1318},
          3,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,16},
           1,
           {field_flags,[{anno,[2286,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,little]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,1318},
          4,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2286,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_integer2,
          {f,1318},
          5,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2286,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {bs_get_tail,{x,1},{x,6},6}.
    {test,is_eq_exact,{f,1318},[{tr,{x,2},{t_integer,{1,255}}},{integer,4}]}.
    {allocate,4,7}.
    {move,{x,6},{y,0}}.
    {move,{x,5},{y,1}}.
    {move,{x,4},{y,2}}.
    {move,{x,3},{y,3}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2287}]}.
    {call,1,{f,1778}}. % id/1
    {test_heap,7,0}.
    {put_tuple2,{x,0},{list,[{y,3},{y,2},{y,1}]}}.
    {put_tuple2,{x,0},{list,[{x,0},{y,0}]}}.
    {deallocate,4}.
    return.
  {label,1318}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},3}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{x,2},{x,0}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2280}]}.
    {case_end,{x,0}}.
  {label,1319}.
    {bs_get_tail,{x,1},{x,1},2}.
    {jump,{f,1315}}.


{function, bs_start_match2_defs, 1, 1321}.
  {label,1320}.
    {line,[{location,"bs_match_r25_SUITE.erl",2293}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bs_start_match2_defs},1}.
  {label,1321}.
    {allocate,0,0}.
    {move,{literal,<<"hello">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2294}]}.
    {call,1,{f,1325}}. % api_url/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,1,true,#{1 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
          {f,1323},
          [{tr,{x,0},{t_tuple,1,true,#{1 => {t_bitstring,8,false}}}},
           {literal,{<<"http://127.0.0.1:1234/vsaas/hello">>}}]}.
    {move,{literal,{https,"hello"}},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2295}]}.
    {call,1,{f,1325}}. % api_url/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,1,true,
                     #{1 => {t_cons,{t_integer,{46,118}},nil}}}}]}}.
    {test,is_eq_exact,
          {f,1322},
          [{tr,{x,0},
               {t_tuple,1,true,#{1 => {t_cons,{t_integer,{46,118}},nil}}}},
           {literal,{"https://127.0.0.1:4321/vsaas/hello"}}]}.
    {deallocate,0}.
    return.
  {label,1322}.
    {badmatch,{x,0}}.
  {label,1323}.
    {line,[{location,"bs_match_r25_SUITE.erl",2294}]}.
    {badmatch,{x,0}}.


{function, api_url, 1, 1325}.
  {label,1324}.
    {line,[{location,"bs_match_r25_SUITE.erl",2297}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,api_url},1}.
  {label,1325}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_atom,[https]}},
                       {t_tuple,2,true,
                           #{1 => {t_atom,[https]},
                             2 => {t_cons,{t_integer,{101,111}},nil}}}}],
                     {t_bitstring,8,false}}},
             accepts_match_context]}}.
    {test,bs_start_match3,{f,1326},1,[{x,0}],{x,1}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_r25_SUITE.erl",2299}]}.
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
  {label,1326}.
    {allocate,0,1}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {move,{literal,"https://127.0.0.1:4321/vsaas/"},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2300}]}.
    {call_ext,2,{extfunc,erlang,'++',2}}.
    {test_heap,2,1}.
    {put_tuple2,{x,0},{list,[{x,0}]}}.
    {deallocate,0}.
    return.


{function, check, 2, 1328}.
  {label,1327}.
    {line,[{location,"bs_match_r25_SUITE.erl",2303}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,check},2}.
  {label,1328}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",2304}]}.
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
          {f,1329},
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
  {label,1329}.
    {badmatch,{x,0}}.


{function, expression_before_match, 1, 1331}.
  {label,1330}.
    {line,[{location,"bs_match_r25_SUITE.erl",2308}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,expression_before_match},1}.
  {label,1331}.
    {test,is_list,{f,1330},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<0,1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2309}]}.
    {call,1,{f,1778}}. % id/1
    {test,bs_start_match3,{f,1333},1,[{x,0}],{x,1}}.
    {test,bs_skip_bits2,
          {f,1333},
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[2309,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,1333},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {atom,all},
           8,
           {field_flags,[{anno,[2309,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2310}]}.
    {call,1,{f,1335}}. % expression_before_match_1/1
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
        {f,1332},
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
  {label,1332}.
    {badmatch,{x,0}}.
  {label,1333}.
    {line,[{location,"bs_match_r25_SUITE.erl",2309}]}.
    {badmatch,{x,0}}.


{function, expression_before_match_1, 1, 1335}.
  {label,1334}.
    {line,[{location,"bs_match_r25_SUITE.erl",2313}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,expression_before_match_1},1}.
  {label,1335}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2314}]}.
    {call,1,{f,1778}}. % id/1
    {bs_start_match4,{atom,no_fail},1,{y,0},{x,1}}.
    {test,bs_match_string,{f,1336},[{x,1},8,{string,<<1>>}]}.
    {bs_get_tail,{x,1},{x,1},2}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {deallocate,1}.
    return.
  {label,1336}.
    {test,bs_test_tail2,{f,1337},[{x,1},0]}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{x,0},{atom,baz}]}}.
    {deallocate,1}.
    return.
  {label,1337}.
    {line,[{location,"bs_match_r25_SUITE.erl",2315}]}.
    {case_end,{y,0}}.


{function, restore_on_call, 1, 1339}.
  {label,1338}.
    {line,[{location,"bs_match_r25_SUITE.erl",2321}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,restore_on_call},1}.
  {label,1339}.
    {test,is_list,{f,1338},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<0,1,2>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2322}]}.
    {call,1,{f,1342}}. % restore_on_call_plain/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<0,120>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2323}]}.
    {call,1,{f,1350}}. % restore_on_call_match/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,1340},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<"x">>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1340}.
    {badmatch,{x,0}}.


{function, restore_on_call_plain, 1, 1342}.
  {label,1341}.
    {line,[{location,"bs_match_r25_SUITE.erl",2326}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,restore_on_call_plain},1}.
  {label,1342}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_match_string,{f,1343},[{x,0},8,{string,<<0>>}]}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {bs_get_position,{x,0},{y,0},1}.
    {line,[{location,"bs_match_r25_SUITE.erl",2327}]}.
    {call,1,{f,1347}}. % restore_on_call_plain_1/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,1345},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<2>>}]}.
    {bs_set_position,{y,1},{y,0}}.
    {move,{y,1},{x,0}}.
    {trim,2,0}.
    {line,[{location,"bs_match_r25_SUITE.erl",2329}]}.
    {call,1,{f,1347}}. % restore_on_call_plain_1/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,1344},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<2>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1343}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,1341}}.
  {label,1344}.
    {badmatch,{x,0}}.
  {label,1345}.
    {line,[{location,"bs_match_r25_SUITE.erl",2327}]}.
    {badmatch,{x,0}}.


{function, restore_on_call_plain_1, 1, 1347}.
  {label,1346}.
    {line,[{location,"bs_match_r25_SUITE.erl",2332}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,restore_on_call_plain_1},1}.
  {label,1347}.
    {'%',{var_info,{x,0},[{type,{t_bs_context,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,resume},1,{x,0},{x,0}}.
    {test,bs_match_string,{f,1348},[{x,0},8,{string,<<1>>}]}.
    {bs_get_tail,{x,0},{x,0},1}.
    return.
  {label,1348}.
    {bs_get_tail,{x,0},{x,0},1}.
    return.


{function, restore_on_call_match, 1, 1350}.
  {label,1349}.
    {line,[{location,"bs_match_r25_SUITE.erl",2337}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,restore_on_call_match},1}.
  {label,1350}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,16,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_match_string,{f,1352},[{x,0},8,{string,<<0>>}]}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {bs_get_position,{x,0},{y,0},1}.
    {line,[{location,"bs_match_r25_SUITE.erl",2338}]}.
    {call,1,{f,1354}}. % skip_until_zero/1
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
          {f,1351},
          [{tr,{x,0},
               {t_union,{t_atom,[not_found]},
                        none,none,
                        [{{2,{t_atom,[skipped]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[skipped]},
                                     2 => {t_bitstring,8,false}}}}],
                        none}}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {deallocate,2}.
    return.
  {label,1351}.
    {bs_set_position,{y,1},{y,0}}.
    {bs_get_tail,{y,1},{x,0},0}.
    {deallocate,2}.
    return.
  {label,1352}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,1349}}.


{function, skip_until_zero, 1, 1354}.
  {label,1353}.
    {line,[{location,"bs_match_r25_SUITE.erl",2347}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,skip_until_zero},1}.
  {label,1354}.
    {'%',{var_info,{x,0},[{type,{t_bs_context,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,resume},1,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,1356},
          1,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2347,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,is_eq_exact,{f,1355},[{tr,{x,1},{t_integer,{0,255}}},{integer,0}]}.
    {bs_get_tail,{x,0},{x,0},1}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,skipped},{x,0}]}}.
    return.
  {label,1355}.
    {call_only,1,{f,1354}}. % skip_until_zero/1
  {label,1356}.
    {move,{atom,not_found},{x,0}}.
    return.


{function, restore_after_catch, 1, 1358}.
  {label,1357}.
    {line,[{location,"bs_match_r25_SUITE.erl",2355}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,restore_after_catch},1}.
  {label,1358}.
    {test,is_list,{f,1357},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<0,1>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2356}]}.
    {call,1,{f,1361}}. % restore_after_catch_1/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {test,is_eq_exact,
          {f,1359},
          [{tr,{x,0},{t_bitstring,16,false}},{literal,<<0,1>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1359}.
    {badmatch,{x,0}}.


{function, restore_after_catch_1, 1, 1361}.
  {label,1360}.
    {line,[{location,"bs_match_r25_SUITE.erl",2359}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,restore_after_catch_1},1}.
  {label,1361}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,16,false}},accepts_match_context]}}.
    {allocate,3,1}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{y,1}}.
    {bs_get_position,{y,1},{y,0},0}.
    {'try',{y,2},{f,1362}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2360}]}.
    {call,1,{f,1365}}. % throw_after_byte/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1362}.
    {try_case,{y,2}}.
    {test,is_eq_exact,
          {f,1363},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,throw}]}.
    {bs_set_position,{y,1},{y,0}}.
    {bs_get_tail,{y,1},{x,0},0}.
    {deallocate,3}.
    return.
  {label,1363}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.


{function, throw_after_byte, 1, 1365}.
  {label,1364}.
    {line,[{location,"bs_match_r25_SUITE.erl",2368}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,throw_after_byte},1}.
  {label,1365}.
    {'%',{var_info,{x,0},[{type,{t_bs_context,16}},accepts_match_context]}}.
    {bs_start_match4,{atom,resume},1,{x,0},{x,0}}.
    {test,bs_skip_bits2,
          {f,1366},
          [{x,0},
           {integer,8},
           1,
           {field_flags,[{anno,[2368,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {move,{atom,away},{x,1}}.
    {move,nil,{x,2}}.
    {move,{atom,throw},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2369}]}.
    {call_ext_only,3,{extfunc,erlang,raise,3}}.
  {label,1366}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,1364}}.


{function, matches_on_parameter, 1, 1368}.
  {label,1367}.
    {line,[{location,"bs_match_r25_SUITE.erl",2371}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,matches_on_parameter},1}.
  {label,1368}.
    {test,is_list,{f,1367},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,<<"gurka">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2373}]}.
    {call,1,{f,1373}}. % matches_on_parameter_1/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_bitstring,8,false},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
          {f,1371},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_bitstring,8,false},
                          2 => {t_bitstring,8,false}}}},
           {literal,{<<"urka">>,<<"a">>}}]}.
    {'catch',{y,0},{f,1369}}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<"10001110101">>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",2374}]}.
    {call,2,{f,1377}}. % matches_on_parameter_2/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1369}.
    {catch_end,{y,0}}.
    {test,is_eq_exact,{f,1370},[{x,0},{atom,ok}]}.
    {deallocate,1}.
    return.
  {label,1370}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",2374}]}.
    {badmatch,{x,0}}.
  {label,1371}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",2373}]}.
    {badmatch,{x,0}}.


{function, matches_on_parameter_1, 1, 1373}.
  {label,1372}.
    {line,[{location,"bs_match_r25_SUITE.erl",2376}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,matches_on_parameter_1},1}.
  {label,1373}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {test,bs_match_string,{f,1375},[{x,0},8,{string,<<"g">>}]}.
    {bs_get_tail,{x,0},{x,2},2}.
    {bs_set_position,{x,0},{x,1}}.
    {test,bs_skip_bits2,
          {f,1374},
          [{x,0},
           {integer,16},
           1,
           {field_flags,[{anno,[2378,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_match_string,{f,1374},[{x,0},16,{string,<<"rk">>}]}.
    {bs_get_tail,{x,0},{x,0},3}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{x,2},{x,0}]}}.
    return.
  {label,1374}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {line,[{location,"bs_match_r25_SUITE.erl",2378}]}.
    {badmatch,{x,0}}.
  {label,1375}.
    {bs_get_tail,{x,0},{x,0},1}.
    {line,[{location,"bs_match_r25_SUITE.erl",2377}]}.
    {badmatch,{x,0}}.


{function, matches_on_parameter_2, 2, 1377}.
  {label,1376}.
    {line,[{location,"bs_match_r25_SUITE.erl",2381}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,matches_on_parameter_2},2}.
  {label,1377}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,'+inf'}}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {test,bs_skip_bits2,
          {f,1379},
          [{x,0},
           {x,1},
           1,
           {field_flags,[{anno,[2382,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_skip_bits2,
          {f,1379},
          [{x,0},
           {integer,1},
           1,
           {field_flags,[{anno,[2382,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_get_tail,{x,0},{x,3},3}.
    {line,[{location,"bs_match_r25_SUITE.erl",2383}]}.
    {gc_bif,bit_size,{f,0},4,[{tr,{x,3},{t_bitstring,1,false}}],{x,3}}.
    {test,is_eq_exact,
          {f,1378},
          [{tr,{x,3},{t_integer,{0,288230376151711743}}},{integer,0}]}.
    {move,{atom,ok},{x,1}}.
    {move,nil,{x,2}}.
    {move,{atom,throw},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2384}]}.
    {call_ext_only,3,{extfunc,erlang,raise,3}}.
  {label,1378}.
    {line,[{location,"bs_match_r25_SUITE.erl",2385}]}.
    {gc_bif,'+',{f,0},3,[{tr,{x,1},{t_integer,{0,'+inf'}}},{integer,1}],{x,1}}.
    {bs_set_position,{x,0},{x,2}}.
    {call_only,2,{f,1377}}. % matches_on_parameter_2/2
  {label,1379}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {line,[{location,"bs_match_r25_SUITE.erl",2382}]}.
    {badmatch,{x,0}}.


{function, big_positions, 1, 1381}.
  {label,1380}.
    {line,[{location,"bs_match_r25_SUITE.erl",2388}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,big_positions},1}.
  {label,1381}.
    {test,is_list,{f,1380},[{x,0}]}.
    {line,[{location,"bs_match_r25_SUITE.erl",2392}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",2393}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",2395}]}.
    {call,1,{f,1387}}. % bp_start_match/1
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
          {f,1385},
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
    {line,[{location,"bs_match_r25_SUITE.erl",2396}]}.
    {call,1,{f,1387}}. % bp_start_match/1
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
          {f,1384},
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
    {line,[{location,"bs_match_r25_SUITE.erl",2397}]}.
    {call,1,{f,1392}}. % bp_getpos/1
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
          {f,1383},
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
    {line,[{location,"bs_match_r25_SUITE.erl",2398}]}.
    {call,1,{f,1392}}. % bp_getpos/1
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
          {f,1382},
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
  {label,1382}.
    {badmatch,{x,0}}.
  {label,1383}.
    {line,[{location,"bs_match_r25_SUITE.erl",2397}]}.
    {badmatch,{x,0}}.
  {label,1384}.
    {line,[{location,"bs_match_r25_SUITE.erl",2396}]}.
    {badmatch,{x,0}}.
  {label,1385}.
    {line,[{location,"bs_match_r25_SUITE.erl",2395}]}.
    {badmatch,{x,0}}.


{function, bp_start_match, 1, 1387}.
  {label,1386}.
    {line,[{location,"bs_match_r25_SUITE.erl",2406}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bp_start_match},1}.
  {label,1387}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {test,bs_skip_bits2,
          {f,1388},
          [{x,0},
           {integer,134217728},
           1,
           {field_flags,[{anno,[2406,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {call_only,1,{f,1387}}. % bp_start_match/1
  {label,1388}.
    {test,bs_get_integer2,
          {f,1389},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,1},
           1,
           {field_flags,[{anno,[2407,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,1389},[{tr,{x,2},{t_integer,{0,1}}},{integer,1}]}.
    {test,bs_match_string,{f,1389},[{x,0},40,{string,<<"gurka">>}]}.
    {test,bs_get_integer2,
          {f,1389},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2407,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1389},[{x,0},0]}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{atom,a},{x,2}]}}.
    return.
  {label,1389}.
    {bs_set_position,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,1390},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,16},
           1,
           {field_flags,[{anno,[2408,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,1390},
          [{tr,{x,2},{t_integer,{0,65535}}},{integer,26725}]}.
    {test,bs_match_string,{f,1390},[{x,0},24,{string,<<"llo">>}]}.
    {test,bs_get_integer2,
          {f,1390},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2408,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1390},[{x,0},0]}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{atom,b},{x,2}]}}.
    return.
  {label,1390}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,1386}}.


{function, bp_getpos, 1, 1392}.
  {label,1391}.
    {line,[{location,"bs_match_r25_SUITE.erl",2413}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bp_getpos},1}.
  {label,1392}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {test,bs_skip_bits2,
          {f,1393},
          [{x,0},
           {integer,134217720},
           1,
           {field_flags,[{anno,[2413,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {call_only,1,{f,1392}}. % bp_getpos/1
  {label,1393}.
    {test,bs_get_integer2,
          {f,1395},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2414,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_position,{x,0},{x,3},3}.
    {test,bs_get_integer2,
          {f,1394},
          4,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,1},
           1,
           {field_flags,[{anno,[2414,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,is_eq_exact,{f,1394},[{tr,{x,4},{t_integer,{0,1}}},{integer,1}]}.
    {test,bs_match_string,{f,1394},[{x,0},40,{string,<<"gurka">>}]}.
    {test,bs_get_integer2,
          {f,1394},
          4,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2414,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,1394},[{x,0},0]}.
    {test,is_eq_exact,
          {f,1394},
          [{tr,{x,4},{t_integer,{0,255}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{atom,a},{x,2}]}}.
    return.
  {label,1394}.
    {bs_set_position,{x,0},{x,3}}.
    {test,bs_get_integer2,
          {f,1395},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2415,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,1395},[{tr,{x,3},{t_integer,{0,255}}},{integer,104}]}.
    {test,bs_match_string,{f,1395},[{x,0},32,{string,<<"ello">>}]}.
    {test,bs_get_integer2,
          {f,1395},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2415,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1395},[{x,0},0]}.
    {test,is_eq_exact,
          {f,1395},
          [{tr,{x,3},{t_integer,{0,255}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{atom,b},{x,2}]}}.
    return.
  {label,1395}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,1391}}.


{function, matching_meets_apply, 1, 1397}.
  {label,1396}.
    {line,[{location,"bs_match_r25_SUITE.erl",2417}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,matching_meets_apply},1}.
  {label,1397}.
    {allocate,0,0}.
    {move,nil,{x,1}}.
    {move,{literal,<<"/abc">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2418}]}.
    {call,2,{f,1402}}. % do_matching_meets_apply/2
    {test,is_eq_exact,{f,1400},[{x,0},{literal,<<"abc">>}]}.
    {move,{literal,{erlang,-42}},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2419}]}.
    {call,2,{f,1402}}. % do_matching_meets_apply/2
    {test,is_eq_exact,{f,1399},[{x,0},{integer,42}]}.
    {move,{literal,{erlang,-100}},{x,1}}.
    {move,{atom,no_binary},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2420}]}.
    {call,2,{f,1402}}. % do_matching_meets_apply/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,100}}}]}}.
    {test,is_eq_exact,{f,1398},[{tr,{x,0},{t_integer,{0,100}}},{integer,100}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1398}.
    {badmatch,{x,0}}.
  {label,1399}.
    {line,[{location,"bs_match_r25_SUITE.erl",2419}]}.
    {badmatch,{x,0}}.
  {label,1400}.
    {line,[{location,"bs_match_r25_SUITE.erl",2418}]}.
    {badmatch,{x,0}}.


{function, do_matching_meets_apply, 2, 1402}.
  {label,1401}.
    {line,[{location,"bs_match_r25_SUITE.erl",2423}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_matching_meets_apply},2}.
  {label,1402}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[no_binary]},
                                   none,none,none,
                                   {t_bitstring,32,false}}},
                    accepts_match_context]}}.
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
    {test,bs_start_match3,{f,1405},2,[{x,0}],{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {test,bs_get_integer2,
          {f,1403},
          3,
          [{tr,{x,0},{t_bs_context,32}},
           {integer,8},
           1,
           {field_flags,[{anno,[2423,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,1403},[{tr,{x,3},{t_integer,{0,255}}},{integer,47}]}.
    {bs_get_tail,{x,0},{x,0},1}.
    {call_only,1,{f,1778}}. % id/1
  {label,1403}.
    {test,is_tuple,
          {f,1404},
          [{tr,{x,1},
               {t_union,none,nil,none,
                        [{{2,{t_atom,[erlang]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[erlang]},
                                     2 => {t_integer,{-100,-42}}}}}],
                        none}}]}.
    {get_tuple_element,{x,1},1,{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2434}]}.
    {call_ext_only,1,{extfunc,erlang,abs,1}}.
  {label,1404}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {move,nil,{x,1}}.
    {jump,{f,1401}}.
  {label,1405}.
    {test,is_tuple,
          {f,1406},
          [{tr,{x,1},
               {t_union,none,nil,none,
                        [{{2,{t_atom,[erlang]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[erlang]},
                                     2 => {t_integer,{-100,-42}}}}}],
                        none}}]}.
    {get_tuple_element,{x,1},1,{x,0}}.
    {call_ext_only,1,{extfunc,erlang,abs,1}}.
  {label,1406}.
    {move,nil,{x,1}}.
    {move,{atom,no_binary},{x,0}}.
    {jump,{f,1401}}.


{function, exceptions_after_match_failure, 1, 1408}.
  {label,1407}.
    {line,[{location,"bs_match_r25_SUITE.erl",2438}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,exceptions_after_match_failure},
               1}.
  {label,1408}.
    {allocate,1,0}.
    {'catch',{y,0},{f,1409}}.
    {move,{atom,atom},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2439}]}.
    {call,1,{f,1412}}. % do_exceptions_after_match_failure/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1409}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1410},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1410},[{x,1},2,{atom,badarith}]}.
    {move,{literal,<<0,1,103,117,114,107,97>>},{x,0}}.
    {line,[{scope,[1,2]},{location,"bs_match_r25_SUITE.erl",2440}]}.
    {call,1,{f,1412}}. % do_exceptions_after_match_failure/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{float,2.0},{x,0}}.
    {call_last,1,{f,1412},1}. % do_exceptions_after_match_failure/1
  {label,1410}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",2439}]}.
    {badmatch,{x,0}}.


{function, do_exceptions_after_match_failure, 1, 1412}.
  {label,1411}.
    {line,[{location,"bs_match_r25_SUITE.erl",2443}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,do_exceptions_after_match_failure},
               1}.
  {label,1412}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[atom]},
                                   none,
                                   {t_float,{2.0,2.0}},
                                   none,
                                   {t_bitstring,8,false}}},
                    accepts_match_context]}}.
    {test,bs_start_match3,{f,1414},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_skip_bits2,
          {f,1413},
          [{x,1},
           {integer,16},
           1,
           {field_flags,[{anno,[2443,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_match_string,{f,1413},[{x,1},40,{string,<<"gurka">>}]}.
    {test,bs_test_tail2,{f,1413},[{x,1},0]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1413}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_r25_SUITE.erl",2446}]}.
    {gc_bif,'/',{f,0},1,[{tr,{x,0},{t_bitstring,8,false}},{float,2.0}],{x,0}}.
    return.
  {label,1414}.
    {fconv,{tr,{x,0},
               {t_union,{t_atom,[atom]},none,{t_float,{2.0,2.0}},none,none}},
           {fr,0}}.
    {fmove,{float,2.0},{fr,1}}.
    {bif,fdiv,{f,0},[{fr,0},{fr,1}],{fr,0}}.
    {move,{atom,ok},{x,0}}.
    return.


{function, bad_phi_paths, 1, 1416}.
  {label,1415}.
    {line,[{location,"bs_match_r25_SUITE.erl",2451}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bad_phi_paths},1}.
  {label,1416}.
    {allocate,0,0}.
    {move,{literal,<<"gurka">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2452}]}.
    {call,1,{f,1778}}. % id/1
    {call,1,{f,1419}}. % bad_phi_paths_1/1
    {test,is_eq_exact,{f,1417},[{x,0},{literal,<<"gurka">>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1417}.
    {badmatch,{x,0}}.


{function, bad_phi_paths_1, 1, 1419}.
  {label,1418}.
    {line,[{location,"bs_match_r25_SUITE.erl",2455}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bad_phi_paths_1},1}.
  {label,1419}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1421},1,[{x,0}],{x,1}}.
    {test,bs_test_unit,{f,1420},[{x,1},8]}.
    {bs_get_tail,{x,1},{x,0},2}.
    {call_only,1,{f,1778}}. % id/1
  {label,1420}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_r25_SUITE.erl",2456}]}.
    {case_end,{x,0}}.
  {label,1421}.
    {test,is_map,{f,1422},[{x,0}]}.
    {allocate,0,1}.
    {line,[{location,"bs_match_r25_SUITE.erl",2458}]}.
    {call,1,{f,1778}}. % id/1
    {call_last,1,{f,1778},0}. % id/1
  {label,1422}.
    {line,[{location,"bs_match_r25_SUITE.erl",2456}]}.
    {case_end,{x,0}}.


{function, combine_empty_segments, 1, 1424}.
  {label,1423}.
    {line,[{location,"bs_match_r25_SUITE.erl",2462}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,combine_empty_segments},1}.
  {label,1424}.
    {allocate,0,0}.
    {move,{literal,<<0,1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2463}]}.
    {call,1,{f,1427}}. % combine_empty_segments_1/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,false}}]}}.
    {test,is_eq_exact,
          {f,1425},
          [{tr,{x,0},{t_bitstring,32,false}},{literal,<<0,1,2,3>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1425}.
    {badmatch,{x,0}}.


{function, combine_empty_segments_1, 1, 1427}.
  {label,1426}.
    {line,[{location,"bs_match_r25_SUITE.erl",2466}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,combine_empty_segments_1},1}.
  {label,1427}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,32,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_tail,{x,0},{x,0},1}.
    return.


{function, hangs_forever, 1, 1429}.
  {label,1428}.
    {line,[{location,"bs_match_r25_SUITE.erl",2473}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,hangs_forever},1}.
  {label,1429}.
    {allocate_heap,0,{alloc,[{words,1},{floats,0},{funs,1}]},1}.
    {make_fun3,{f,1875},0,0,{x,0},{list,[{x,0}]}}.
    {'%',{var_info,{x,0},[{fun_type,none}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2474}]}.
    {call,1,{f,1778}}. % id/1
    {test,is_function,{f,1430},[{x,0}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1430}.
    {badmatch,{atom,false}}.


{function, hangs_forever_1, 1, 1432}.
  {label,1431}.
    {line,[{location,"bs_match_r25_SUITE.erl",2477}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,hangs_forever_1},1}.
  {label,1432}.
    {call_only,1,{f,1432}}. % hangs_forever_1/1


{function, bs_saved_position_units, 1, 1434}.
  {label,1433}.
    {line,[{location,"bs_match_r25_SUITE.erl",2484}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bs_saved_position_units},1}.
  {label,1434}.
    {test,is_list,{f,1433},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<0,1,2,3,4,5,6,7,8,9>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2485}]}.
    {call,1,{f,1778}}. % id/1
    {call,1,{f,1438}}. % bspu_1/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {test,is_eq_exact,
          {f,1436},
          [{tr,{x,0},{t_list,{t_bitstring,8,false},nil}},
           {literal,[<<0,1,2,3,4>>,<<5,6,7,8,9>>]}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2486}]}.
    {call,1,{f,1778}}. % id/1
    {call,1,{f,1438}}. % bspu_1/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {test,is_nil,{f,1435},[{tr,{x,0},{t_list,{t_bitstring,8,false},nil}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1435}.
    {badmatch,{x,0}}.
  {label,1436}.
    {line,[{location,"bs_match_r25_SUITE.erl",2485}]}.
    {badmatch,{x,0}}.


{function, bspu_1, 1, 1438}.
  {label,1437}.
    {line,[{location,"bs_match_r25_SUITE.erl",2490}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bspu_1},1}.
  {label,1438}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1437},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_binary2,
          {f,1439},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {atom,all},
           8,
           {field_flags,[{anno,[2490,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},3}.
    {test,is_eq_exact,
          {f,1439},
          [{tr,{x,2},{t_bitstring,8,false}},{tr,{x,0},{t_bitstring,8,false}}]}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,1872}}. % '-bspu_1/1-lc$^0/1-0-'/1
  {label,1439}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,1437}}.


{function, empty_matches, 1, 1441}.
  {label,1440}.
    {line,[{location,"bs_match_r25_SUITE.erl",2494}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,empty_matches},1}.
  {label,1441}.
    {test,is_list,{f,1440},[{x,0}]}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{literal,<<1,2,3,4:4>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2495}]}.
    {call,1,{f,1458}}. % em_1/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,#{2 => {t_bitstring,4,false}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1456},[{x,1},{literal,<<>>}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {test,bs_match_string,{f,1456},[{x,1},28,{string,<<1,2,3,64>>}]}.
    {test,bs_test_tail2,{f,1456},[{x,1},0]}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2496}]}.
    {call,1,{f,1458}}. % em_1/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,#{2 => {t_bitstring,4,false}}}}]}}.
    {test,is_eq_exact,
          {f,1455},
          [{tr,{x,0},{t_tuple,2,true,#{2 => {t_bitstring,4,false}}}},
           {literal,{<<>>,<<1,2,3>>}}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2497}]}.
    {call,1,{f,1458}}. % em_1/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,#{2 => {t_bitstring,4,false}}}}]}}.
    {test,is_eq_exact,
          {f,1454},
          [{tr,{x,0},{t_tuple,2,true,#{2 => {t_bitstring,4,false}}}},
           {literal,{<<>>,<<>>}}]}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2499}]}.
    {call,1,{f,1778}}. % id/1
    {call,1,{f,1462}}. % em_2/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,true}}]}}.
    {test,is_eq_exact,
          {f,1453},
          [{tr,{x,0},{t_bitstring,16,true}},{literal,<<0,1,0,2,0,3>>}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2500}]}.
    {call,1,{f,1778}}. % id/1
    {call,1,{f,1462}}. % em_2/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,true}}]}}.
    {test,is_eq_exact,
          {f,1452},
          [{tr,{x,0},{t_bitstring,16,true}},{literal,<<>>}]}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2502}]}.
    {call,1,{f,1778}}. % id/1
    {call,1,{f,1464}}. % em_3/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {test,is_eq_exact,
          {f,1451},
          [{tr,{x,0},{t_bitstring,1,false}},{literal,<<1,2,3>>}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2503}]}.
    {call,1,{f,1778}}. % id/1
    {call,1,{f,1464}}. % em_3/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {test,is_eq_exact,
          {f,1450},
          [{tr,{x,0},{t_bitstring,1,false}},{literal,<<>>}]}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2505}]}.
    {call,1,{f,1778}}. % id/1
    {test,bs_start_match3,{f,1449},1,[{x,0}],{x,1}}.
    {test,bs_test_tail2,{f,1449},[{x,1},0]}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2506}]}.
    {call,1,{f,1778}}. % id/1
    {test,is_eq_exact,{f,1448},[{x,0},{integer,0}]}.
    {move,{literal,<<>>},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2508}]}.
    {call,2,{f,1469}}. % em_4/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,2},{f,1442}}.
    {move,{literal,<<0:1>>},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2509}]}.
    {call,2,{f,1469}}. % em_4/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1442}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,1447},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1447},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,1447},[{x,1}]}.
    {'catch',{y,1},{f,1443}}.
    {move,{literal,<<>>},{x,1}}.
    {move,{literal,<<0:1>>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r25_SUITE.erl",2510}]}.
    {call,2,{f,1469}}. % em_4/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1443}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,1446},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1446},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,1446},[{x,1}]}.
    {'catch',{y,0},{f,1444}}.
    {move,{literal,<<0:1>>},{x,1}}.
    {move,{literal,<<0:1>>},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r25_SUITE.erl",2511}]}.
    {call,2,{f,1469}}. % em_4/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1444}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1445},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1445},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,1445},[{x,1}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,3}.
    return.
  {label,1445}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",2511}]}.
    {badmatch,{x,0}}.
  {label,1446}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",2510}]}.
    {badmatch,{x,0}}.
  {label,1447}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",2509}]}.
    {badmatch,{x,0}}.
  {label,1448}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2506}]}.
    {badmatch,{x,0}}.
  {label,1449}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2505}]}.
    {badmatch,{x,0}}.
  {label,1450}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2503}]}.
    {badmatch,{x,0}}.
  {label,1451}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2502}]}.
    {badmatch,{x,0}}.
  {label,1452}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2500}]}.
    {badmatch,{x,0}}.
  {label,1453}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2499}]}.
    {badmatch,{x,0}}.
  {label,1454}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2497}]}.
    {badmatch,{x,0}}.
  {label,1455}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2496}]}.
    {badmatch,{x,0}}.
  {label,1456}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2495}]}.
    {badmatch,{x,0}}.


{function, em_1, 1, 1458}.
  {label,1457}.
    {line,[{location,"bs_match_r25_SUITE.erl",2515}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,em_1},1}.
  {label,1458}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,4,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {test,bs_get_binary2,
          {f,1459},
          2,
          [{tr,{x,0},{t_bs_context,4}},
           {integer,0},
           8,
           {field_flags,[{anno,[2517,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {allocate,3,3}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
    {bs_get_tail,{x,0},{y,0},3}.
    {move,{x,2},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2518}]}.
    {call_ext,1,{extfunc,binary,copy,1}}.
    {bs_set_position,{y,2},{y,1}}.
    {bs_get_tail,{y,2},{x,1},1}.
    {test,is_eq_exact,
          {f,1460},
          [{tr,{y,0},{t_bitstring,4,false}},{tr,{x,1},{t_bitstring,4,false}}]}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {deallocate,3}.
    return.
  {label,1459}.
    {bs_get_tail,{x,0},{x,0},1}.
    {line,[{location,"bs_match_r25_SUITE.erl",2517}]}.
    {badmatch,{x,0}}.
  {label,1460}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{x,0},{y,0}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2516}]}.
    {badmatch,{x,0}}.


{function, em_2, 1, 1462}.
  {label,1461}.
    {line,[{location,"bs_match_r25_SUITE.erl",2523}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,em_2},1}.
  {label,1462}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,1868},1}. % '-em_2/1-lbc$^0/2-0-'/2


{function, em_3, 1, 1464}.
  {label,1463}.
    {line,[{location,"bs_match_r25_SUITE.erl",2530}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,em_3},1}.
  {label,1464}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1463},1,[{x,0}],{x,1}}.
    {test,bs_get_binary2,
          {f,1465},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,0},
           8,
           {field_flags,[{anno,[2530,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,0}}.
    {allocate,1,2}.
    {init_yregs,{list,[{y,0}]}}.
    {bs_get_tail,{x,1},{y,0},2}.
    {line,[{location,"bs_match_r25_SUITE.erl",2531}]}.
    {call,1,{f,1467}}. % em_3_1/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1465}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,1463}}.


{function, em_3_1, 1, 1467}.
  {label,1466}.
    {line,[{location,"bs_match_r25_SUITE.erl",2534}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,em_3_1},1}.
  {label,1467}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    return.


{function, em_4, 2, 1469}.
  {label,1468}.
    {line,[{location,"bs_match_r25_SUITE.erl",2537}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,em_4},2}.
  {label,1469}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,1,false}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,false}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {test,bs_skip_bits2,
          {f,1470},
          [{x,0},
           {integer,0},
           1,
           {field_flags,[{anno,[2537,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,3}}.
    {test,bs_skip_bits2,
          {f,1470},
          [{x,3},
           {integer,0},
           1,
           {field_flags,[{anno,[2537,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_test_tail2,{f,1470},[{x,0},0]}.
    {test,bs_test_tail2,{f,1470},[{x,3},0]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1470}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {jump,{f,1468}}.


{function, trim_bs_start_match_resume, 1, 1472}.
  {label,1471}.
    {line,[{location,"bs_match_r25_SUITE.erl",2542}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,trim_bs_start_match_resume},1}.
  {label,1472}.
    {test,is_list,{f,1471},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2543}]}.
    {call,1,{f,1778}}. % id/1
    {test,bs_start_match3,{f,1474},1,[{x,0}],{x,1}}.
    {test,bs_test_unit,{f,1474},[{x,1},8]}.
    {move,{x,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2544}]}.
    {call,1,{f,1476}}. % trim_bs_start_match_resume_1/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,1473},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1473}.
    {badmatch,{x,0}}.
  {label,1474}.
    {line,[{location,"bs_match_r25_SUITE.erl",2543}]}.
    {badmatch,{x,0}}.


{function, trim_bs_start_match_resume_1, 1, 1476}.
  {label,1475}.
    {line,[{location,"bs_match_r25_SUITE.erl",2547}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,trim_bs_start_match_resume_1},
               1}.
  {label,1476}.
    {'%',{var_info,{x,0},[{type,{t_bs_context,8}},accepts_match_context]}}.
    {allocate,1,1}.
    {init_yregs,{list,[{y,0}]}}.
    {bs_start_match4,{atom,resume},1,{x,0},{x,0}}.
    {bs_get_tail,{x,0},{y,0},1}.
    {move,{y,0},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2548}]}.
    {call,1,{f,1778}}. % id/1
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, expand_and_squeeze, 1, 1478}.
  {label,1477}.
    {line,[{location,"bs_match_r25_SUITE.erl",2551}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,expand_and_squeeze},1}.
  {label,1478}.
    {test,is_list,{f,1477},[{x,0}]}.
    {allocate,0,0}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",2553}]}.
    {call,2,{f,1482}}. % ensure_squeezed/2
    {'%',{var_info,{x,0},[{type,{t_cons,any,any}}]}}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",2557}]}.
    {call,2,{f,1482}}. % ensure_squeezed/2
    {'%',{var_info,{x,0},[{type,{t_cons,any,any}}]}}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",2561}]}.
    {call,2,{f,1482}}. % ensure_squeezed/2
    {'%',{var_info,{x,0},[{type,{t_cons,any,any}}]}}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",2565}]}.
    {call,2,{f,1482}}. % ensure_squeezed/2
    {'%',{var_info,{x,0},[{type,{t_cons,any,any}}]}}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",2570}]}.
    {call,2,{f,1482}}. % ensure_squeezed/2
    {'%',{var_info,{x,0},[{type,{t_cons,any,any}}]}}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",2575}]}.
    {call,2,{f,1482}}. % ensure_squeezed/2
    {'%',{var_info,{x,0},[{type,{t_cons,any,any}}]}}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",2583}]}.
    {call,1,{f,1485}}. % binary_match_to_asm/1
    {test,is_nonempty_list,{f,1480},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_tagged_tuple,{f,1480},[{x,1},4,{atom,bs_match}]}.
    {get_tuple_element,{x,1},1,{x,3}}.
    {test,is_tagged_tuple,{f,1480},[{x,3},2,{atom,f}]}.
    {get_tuple_element,{x,1},3,{x,1}}.
    {test,is_tagged_tuple,{f,1480},[{x,1},2,{atom,commands}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,1480},[{x,1}]}.
    {get_list,{x,1},{x,3},{x,1}}.
    {test,is_tagged_tuple,{f,1480},[{x,3},3,{atom,ensure_at_least}]}.
    {get_tuple_element,{x,3},2,{x,4}}.
    {test,is_eq_exact,{f,1480},[{x,4},{integer,1}]}.
    {test,is_nonempty_list,{f,1480},[{x,1}]}.
    {get_list,{x,1},{x,4},{x,1}}.
    {test,is_tagged_tuple,{f,1480},[{x,4},6,{atom,integer}]}.
    {get_tuple_element,{x,4},4,{x,5}}.
    {test,is_eq_exact,{f,1480},[{x,5},{integer,1}]}.
    {test,is_nil,{f,1480},[{x,1}]}.
    {get_tuple_element,{x,4},3,{x,1}}.
    {get_tuple_element,{x,3},1,{x,3}}.
    {test,is_eq_exact,{f,1480},[{x,1},{x,3}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},3}.
    {make_fun3,{f,1865},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[false,true]}}]}}.
    {move,{x,2},{x,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2594}]}.
    {call_ext,2,{extfunc,lists,any,2}}.
    {test,is_eq_exact,{f,1479},[{x,0},{atom,true}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",2597}]}.
    {call,2,{f,1482}}. % ensure_squeezed/2
    {'%',{var_info,{x,0},[{type,{t_cons,any,any}}]}}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",2601}]}.
    {call,2,{f,1482}}. % ensure_squeezed/2
    {'%',{var_info,{x,0},[{type,{t_cons,any,any}}]}}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",2606}]}.
    {call,2,{f,1482}}. % ensure_squeezed/2
    {'%',{var_info,{x,0},[{type,{t_cons,any,any}}]}}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",2611}]}.
    {call,2,{f,1482}}. % ensure_squeezed/2
    {'%',{var_info,{x,0},[{type,{t_cons,any,any}}]}}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",2616}]}.
    {call,2,{f,1482}}. % ensure_squeezed/2
    {'%',{var_info,{x,0},[{type,{t_cons,any,any}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1479}.
    {line,[{location,"bs_match_r25_SUITE.erl",2594}]}.
    {badmatch,{atom,false}}.
  {label,1480}.
    {line,[{location,"bs_match_r25_SUITE.erl",2580}]}.
    {badmatch,{x,0}}.


{function, ensure_squeezed, 2, 1482}.
  {label,1481}.
    {line,[{location,"bs_match_r25_SUITE.erl",2635}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,ensure_squeezed},2}.
  {label,1482}.
    {'%',{var_info,{x,0},[{type,{t_integer,{8,64}}}]}}.
    {'%',
     {var_info,
      {x,1},
      [{type,
        {t_cons,
         {t_tuple,3,true,
          #{1 => {t_atom,[bin]},
            2 => {t_integer,{2553,2631}},
            3 =>
             {t_list,
              {t_tuple,5,true,
               #{1 => {t_atom,[bin_element]},
                 2 => {t_integer,{2553,2631}},
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
    {line,[{location,"bs_match_r25_SUITE.erl",2639}]}.
    {call,1,{f,1485}}. % binary_match_to_asm/1
    {test,is_nonempty_list,{f,1483},[{x,0}]}.
    {get_hd,{x,0},{x,1}}.
    {test,is_tagged_tuple,{f,1483},[{x,1},4,{atom,bs_match}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_tagged_tuple,{f,1483},[{x,2},2,{atom,f}]}.
    {get_tuple_element,{x,1},3,{x,1}}.
    {test,is_tagged_tuple,{f,1483},[{x,1},2,{atom,commands}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,1483},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_tagged_tuple,{f,1483},[{x,2},3,{atom,ensure_at_least}]}.
    {get_tuple_element,{x,2},2,{x,3}}.
    {test,is_eq_exact,{f,1483},[{x,3},{integer,1}]}.
    {test,is_nonempty_list,{f,1483},[{x,1}]}.
    {get_list,{x,1},{x,3},{x,1}}.
    {test,is_tagged_tuple,{f,1483},[{x,3},6,{atom,integer}]}.
    {get_tuple_element,{x,3},4,{x,4}}.
    {test,is_eq_exact,{f,1483},[{x,4},{integer,1}]}.
    {test,is_nil,{f,1483},[{x,1}]}.
    {get_tuple_element,{x,2},1,{x,1}}.
    {test,is_eq_exact,{f,1483},[{x,1},{tr,{y,0},{t_integer,{8,64}}}]}.
    {get_tuple_element,{x,3},3,{x,1}}.
    {test,is_eq_exact,{f,1483},[{x,1},{tr,{y,0},{t_integer,{8,64}}}]}.
    {deallocate,1}.
    return.
  {label,1483}.
    {line,[{location,"bs_match_r25_SUITE.erl",2636}]}.
    {badmatch,{x,0}}.


{function, binary_match_to_asm, 1, 1485}.
  {label,1484}.
    {line,[{location,"bs_match_r25_SUITE.erl",2641}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,binary_match_to_asm},1}.
  {label,1485}.
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_cons,
         {t_tuple,3,true,
          #{1 => {t_atom,[bin]},
            2 => {t_integer,{2553,2631}},
            3 =>
             {t_list,
              {t_tuple,5,true,
               #{1 => {t_atom,[bin_element]},
                 2 => {t_integer,{2553,2631}},
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
    {line,[{location,"bs_match_r25_SUITE.erl",2646}]}.
    {gc_bif,length,
     {f,0},
     1,
     [{tr,
       {x,0},
       {t_cons,
        {t_tuple,3,true,
         #{1 => {t_atom,[bin]},
           2 => {t_integer,{2553,2631}},
           3 =>
            {t_list,
             {t_tuple,5,true,
              #{1 => {t_atom,[bin_element]},
                2 => {t_integer,{2553,2631}},
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
    {call,1,{f,1862}}. % '-binary_match_to_asm/1-lc$^0/1-0-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_cons,
                     {t_tuple,5,true,
                         #{1 => {t_atom,[clause]},
                           2 => {t_integer,{2553,2631}},
                           3 =>
                               {t_cons,
                                   {t_tuple,3,true,
                                       #{1 => {t_atom,[bin]},
                                         2 => {t_integer,{2553,2631}},
                                         3 => {t_list,any,any}}},
                                   nil},
                           4 => nil,
                           5 =>
                               {t_cons,
                                   {t_tuple,3,true,
                                       #{1 => {t_atom,[integer]},
                                         2 => {t_integer,{2553,2631}}}},
                                   nil}}},
                     nil}}]}}.
    {move,{x,0},{y,2}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2650}]}.
    {call_ext,1,{extfunc,erl_anno,new,1}}.
    {move,{x,0},{y,1}}.
    {move,{integer,2},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2651}]}.
    {call_ext,1,{extfunc,erl_anno,new,1}}.
    {move,{x,0},{y,0}}.
    {move,{integer,3},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2652}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",2656}]}.
    {call_ext,2,{extfunc,compile,forms,2}}.
    {test,is_tagged_tuple,{f,1488},[{x,0},4,{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,1488},[{x,1},{atom,match_to_asm}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_tagged_tuple,{f,1488},[{x,1},5,{atom,match_to_asm}]}.
    {get_tuple_element,{x,1},3,{x,0}}.
    {test,is_nonempty_list,{f,1487},[{x,0}]}.
    {get_hd,{x,0},{x,1}}.
    {test,is_tagged_tuple,{f,1487},[{x,1},5,{atom,function}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,1487},[{x,2},{atom,example}]}.
    {get_tuple_element,{x,1},2,{x,2}}.
    {test,is_eq_exact,{f,1487},[{x,2},{integer,1}]}.
    {get_tuple_element,{x,1},3,{x,2}}.
    {test,is_eq_exact,{f,1487},[{x,2},{integer,2}]}.
    {get_tuple_element,{x,1},4,{x,0}}.
    {test,is_nonempty_list,{f,1486},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_tagged_tuple,{f,1486},[{x,1},2,{atom,label}]}.
    {test,is_nonempty_list,{f,1486},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tagged_tuple,{f,1486},[{x,1},2,{atom,line}]}.
    {test,is_nonempty_list,{f,1486},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tagged_tuple,{f,1486},[{x,1},4,{atom,func_info}]}.
    {test,is_nonempty_list,{f,1486},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tagged_tuple,{f,1486},[{x,1},2,{atom,label}]}.
    {test,is_nonempty_list,{f,1486},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tagged_tuple,{f,1486},[{x,1},2,{atom,'%'}]}.
    {test,is_nonempty_list,{f,1486},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tagged_tuple,{f,1486},[{x,1},6,{atom,test}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,{f,1486},[{x,1},{atom,bs_start_match3}]}.
    {test,is_nonempty_list,{f,1486},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tagged_tuple,{f,1486},[{x,1},4,{atom,bs_get_position}]}.
    {move,{x,2},{x,0}}.
    {deallocate,0}.
    return.
  {label,1486}.
    {line,[{location,"bs_match_r25_SUITE.erl",2659}]}.
    {badmatch,{x,0}}.
  {label,1487}.
    {line,[{location,"bs_match_r25_SUITE.erl",2658}]}.
    {badmatch,{x,0}}.
  {label,1488}.
    {line,[{location,"bs_match_r25_SUITE.erl",2655}]}.
    {badmatch,{x,0}}.


{function, many_clauses, 1, 1490}.
  {label,1489}.
    {line,[{location,"bs_match_r25_SUITE.erl",2663}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,many_clauses},1}.
  {label,1490}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{integer,200},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2666}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2667}]}.
    {call,1,{f,1858}}. % '-many_clauses/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {move,{x,0},{y,0}}.
    {move,{atom,bs_match_r25_SUITE_many_clauses},{x,0}}.
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
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2668}]}.
    {call_ext,1,{extfunc,merl,tree,1}}.
    {move,{x,0},{y,0}}.
    {move,{atom,bs_match_r25_SUITE},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2675}]}.
    {call_ext,1,{extfunc,test_lib,opt_opts,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,1}.
    {line,[{location,"bs_match_r25_SUITE.erl",2676}]}.
    {call_ext,2,{extfunc,merl,compile_and_load,2}}.
    {test,is_tagged_tuple,{f,1491},[{x,0},2,{atom,ok}]}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_match_r25_SUITE.erl",2683}]}.
    {call,1,{f,1852}}. % '-many_clauses/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1491}.
    {line,[{location,"bs_match_r25_SUITE.erl",2676}]}.
    {badmatch,{x,0}}.


{function, one_clause, 1, 1493}.
  {label,1492}.
    {line,[{location,"bs_match_r25_SUITE.erl",2686}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,one_clause},1}.
  {label,1493}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",2687}]}.
    {call_ext_last,1,{extfunc,merl,tree,1},1}.


{function, gh_6410, 1, 1495}.
  {label,1494}.
    {line,[{location,"bs_match_r25_SUITE.erl",2690}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh_6410},1}.
  {label,1495}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2691}]}.
    {call,1,{f,1503}}. % do_gh_6410/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,0}}}]}}.
    {'catch',{y,2},{f,1496}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2692}]}.
    {call,1,{f,1503}}. % do_gh_6410/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,0}}}]}}.
  {label,1496}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,1501},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1501},[{x,1}]}.
    {test,test_arity,{f,1501},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,1501},[{x,2},{literal,{case_clause,<<>>}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,1501},[{x,1}]}.
    {'catch',{y,1},{f,1497}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",2693}]}.
    {call,1,{f,1503}}. % do_gh_6410/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1497}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,1500},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1500},[{x,1}]}.
    {test,test_arity,{f,1500},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,1500},[{x,2},{literal,{case_clause,a}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,1500},[{x,1}]}.
    {'catch',{y,0},{f,1498}}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",2694}]}.
    {call,1,{f,1503}}. % do_gh_6410/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1498}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1499},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1499},[{x,1},2,{atom,badarith}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,1499},[{x,1}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,3}.
    return.
  {label,1499}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",2694}]}.
    {badmatch,{x,0}}.
  {label,1500}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",2693}]}.
    {badmatch,{x,0}}.
  {label,1501}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",2692}]}.
    {badmatch,{x,0}}.


{function, do_gh_6410, 1, 1503}.
  {label,1502}.
    {line,[{location,"bs_match_r25_SUITE.erl",2698}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_gh_6410},1}.
  {label,1503}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[a]},
                                   nil,none,none,
                                   {t_bitstring,8,false}}},
                    accepts_match_context]}}.
    {test,bs_start_match3,{f,1506},1,[{x,0}],{x,1}}.
    {test,bs_test_tail2,{f,1504},[{x,1},8]}.
    {move,{integer,0},{x,0}}.
    return.
  {label,1504}.
    {test,bs_test_tail2,{f,1505},[{x,1},8]}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_r25_SUITE.erl",2701}]}.
    {gc_bif,'+',{f,0},1,[{tr,{x,0},{t_bitstring,8,false}}],{x,0}}.
    return.
  {label,1505}.
    {bs_get_tail,{x,1},{x,0},2}.
    {case_end,{x,0}}.
  {label,1506}.
    {test,is_nil,
          {f,1507},
          [{tr,{x,0},{t_union,{t_atom,[a]},nil,none,none,none}}]}.
    {gc_bif,'+',{f,0},0,[nil],{x,0}}.
    return.
  {label,1507}.
    {case_end,{atom,a}}.


{function, bs_match, 1, 1509}.
  {label,1508}.
    {line,[{location,"bs_match_r25_SUITE.erl",2708}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,bs_match},1}.
  {label,1509}.
    {allocate,4,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3}]}}.
    {move,{literal,<<1,0>>},{x,1}}.
    {move,{atom,whatever},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2709}]}.
    {call,2,{f,1527}}. % do_bs_match_1/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {test,is_eq_exact,
          {f,1525},
          [{tr,{x,0},{t_bitstring,16,false}},{literal,<<1,0>>}]}.
    {move,{literal,<<1,1>>},{x,1}}.
    {move,{atom,whatever},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",2710}]}.
    {call,2,{f,1527}}. % do_bs_match_1/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {test,is_eq_exact,
          {f,1524},
          [{tr,{x,0},{t_bitstring,16,false}},{literal,<<1,1>>}]}.
    {move,{literal,{a,b,c}},{x,1}}.
    {move,{atom,whatever},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",2711}]}.
    {call,2,{f,1527}}. % do_bs_match_1/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_atom,[a]},
                                     2 => {t_atom,[b]},
                                     3 => {t_atom,[c]}}}}]}}.
    {'catch',{y,3},{f,1510}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",2713}]}.
    {call,1,{f,1531}}. % do_bs_match_gh_6551a/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
  {label,1510}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,1523},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1523},[{x,1},2,{atom,badarg}]}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_r25_SUITE.erl",2714}]}.
    {call,1,{f,1531}}. % do_bs_match_gh_6551a/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1511},[{x,0},{atom,true}]}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2714}]}.
    {badmatch,{atom,true}}.
  {label,1511}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2716}]}.
    {call,1,{f,1535}}. % do_bs_match_gh_6551b/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,0}},
                                     2 => {t_integer,{0,0}}}}}]}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2717}]}.
    {call,1,{f,1535}}. % do_bs_match_gh_6551b/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_bitstring,8,false},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
          {f,1522},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_bitstring,8,false},
                          2 => {t_bitstring,8,false}}}},
           {literal,{<<"*">>,<<"*">>}}]}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2719}]}.
    {call,1,{f,1539}}. % do_bs_match_gh_6613/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[ok]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,1521},
          [{tr,{x,0},
               {t_union,{t_atom,[ok]},none,none,none,{t_bitstring,8,false}}},
           {atom,ok}]}.
    {move,{literal,<<0,0>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2720}]}.
    {call,1,{f,1539}}. % do_bs_match_gh_6613/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[ok]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,1520},
          [{tr,{x,0},
               {t_union,{t_atom,[ok]},none,none,none,{t_bitstring,8,false}}},
           {literal,<<0,0>>}]}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2722}]}.
    {call,1,{f,1778}}. % id/1
    {call,1,{f,1547}}. % do_bs_match_gh_6660/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,1519},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<"abc">>}]}.
    {'catch',{y,2},{f,1512}}.
    {move,{atom,abc},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2723}]}.
    {call,1,{f,1778}}. % id/1
    {call,1,{f,1547}}. % do_bs_match_gh_6660/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
  {label,1512}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,1518},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1518},[{x,1}]}.
    {test,test_arity,{f,1518},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1518},[{x,1},{literal,{try_clause,abc}}]}.
    {'catch',{y,1},{f,1513}}.
    {move,{literal,<<"1000">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",2725}]}.
    {call,1,{f,1778}}. % id/1
    {call,1,{f,1551}}. % do_bs_match_gh_6755/1
    {'%',{var_info,{x,0},[{type,{t_atom,[b]}}]}}.
  {label,1513}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,1517},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1517},[{x,1}]}.
    {test,test_arity,{f,1517},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,1517},[{x,1},2,{atom,case_clause}]}.
    {'catch',{y,0},{f,1514}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r25_SUITE.erl",2727}]}.
    {call,1,{f,1559}}. % do_bs_match_gh_7467/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1514}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1516},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1516},[{x,1}]}.
    {test,test_arity,{f,1516},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1516},[{x,1},{literal,{badmatch,<<>>}}]}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",2729}]}.
    {call,0,{f,1562}}. % do_bs_match_gh_8280/0
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,0}},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
          {f,1515},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,0}},2 => {t_bitstring,8,false}}}},
           {literal,{0,<<1,2,3>>}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,4}.
    return.
  {label,1515}.
    {badmatch,{x,0}}.
  {label,1516}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",2727}]}.
    {badmatch,{x,0}}.
  {label,1517}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",2725}]}.
    {badmatch,{x,0}}.
  {label,1518}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",2723}]}.
    {badmatch,{x,0}}.
  {label,1519}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2722}]}.
    {badmatch,{x,0}}.
  {label,1520}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2720}]}.
    {badmatch,{x,0}}.
  {label,1521}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2719}]}.
    {badmatch,{x,0}}.
  {label,1522}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2717}]}.
    {badmatch,{x,0}}.
  {label,1523}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",2713}]}.
    {badmatch,{x,0}}.
  {label,1524}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",2710}]}.
    {badmatch,{x,0}}.
  {label,1525}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",2709}]}.
    {badmatch,{x,0}}.


{function, do_bs_match_1, 2, 1527}.
  {label,1526}.
    {line,[{location,"bs_match_r25_SUITE.erl",2733}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_bs_match_1},2}.
  {label,1527}.
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
                     {t_bitstring,16,false}}},
             accepts_match_context]}}.
    {test,bs_start_match3,{f,1529},2,[{x,1}],{x,0}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {bs_get_position,{x,0},{y,0},1}.
    {test,bs_skip_bits2,
          {f,1528},
          [{x,0},
           {integer,8},
           1,
           {field_flags,[{anno,[2735,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_match_string,{f,1528},[{y,1},8,{string,<<0>>}]}.
    {test,bs_test_tail2,{f,1528},[{y,1},0]}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2736}]}.
    {call,1,{f,1778}}. % id/1
  {label,1528}.
    {bs_set_position,{y,1},{y,0}}.
    {bs_get_tail,{y,1},{x,0},0}.
    {deallocate,2}.
    return.
  {label,1529}.
    {move,{x,1},{x,0}}.
    return.


{function, do_bs_match_gh_6551a, 1, 1531}.
  {label,1530}.
    {line,[{location,"bs_match_r25_SUITE.erl",2742}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_bs_match_gh_6551a},1}.
  {label,1531}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_test_tail2,{f,1532},[{x,0},0]}.
    {move,nil,{x,1}}.
    {move,{atom,true},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2745}]}.
    {call_ext_only,2,{extfunc,erlang,'--',2}}.
  {label,1532}.
    {test,bs_test_tail2,{f,1533},[{x,0},8]}.
    {bs_get_tail,{x,0},{x,1},1}.
    {bs_get_tail,{x,0},{x,0},2}.
    {bif,'=/=',
         {f,0},
         [{tr,{x,1},{t_bitstring,8,false}},{tr,{x,0},{t_bitstring,8,false}}],
         {x,0}}.
    return.
  {label,1533}.
    {bs_get_tail,{x,0},{x,0},1}.
    {line,[{location,"bs_match_r25_SUITE.erl",2743}]}.
    {case_end,{x,0}}.


{function, do_bs_match_gh_6551b, 1, 1535}.
  {label,1534}.
    {line,[{location,"bs_match_r25_SUITE.erl",2751}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_bs_match_gh_6551b},1}.
  {label,1535}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,none,
                                   {t_integer,{0,0}},
                                   none,
                                   {t_bitstring,8,false}}},
                    accepts_match_context]}}.
    {test,bs_start_match3,{f,1537},1,[{x,0}],{x,0}}.
    {test,bs_test_tail2,{f,1536},[{x,0},8]}.
    {bs_get_tail,{x,0},{x,1},1}.
    {bs_get_tail,{x,0},{x,0},2}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    return.
  {label,1536}.
    {bs_get_tail,{x,0},{x,0},1}.
    {line,[{location,"bs_match_r25_SUITE.erl",2753}]}.
    {case_end,{x,0}}.
  {label,1537}.
    {move,{literal,{0,0}},{x,0}}.
    return.


{function, do_bs_match_gh_6613, 1, 1539}.
  {label,1538}.
    {line,[{location,"bs_match_r25_SUITE.erl",2760}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_bs_match_gh_6613},1}.
  {label,1539}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {test,bs_test_tail2,{f,1540},[{x,0},8]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1540}.
    {allocate,4,2}.
    {init_yregs,{list,[{y,2},{y,3}]}}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {'try',{y,3},{f,1542}}.
    {'try',{y,2},{f,1541}}.
    {test,bs_get_integer2,
          {f,1545},
          1,
          [{tr,{y,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2767,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_get_integer2,
          {f,1545},
          2,
          [{tr,{y,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2767,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1545},[{y,1},0]}.
    {test,is_eq_exact,
          {f,1545},
          [{tr,{x,2},{t_integer,{0,255}}},{tr,{x,1},{t_integer,{0,255}}}]}.
    {try_end,{y,2}}.
    {try_end,{y,3}}.
    {jump,{f,1543}}.
  {label,1541}.
    {try_case,{y,2}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.
  {label,1542}.
    {try_case,{y,3}}.
    {test,is_eq_exact,
          {f,1544},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,throw}]}.
  {label,1543}.
    {bs_set_position,{y,1},{y,0}}.
    {bs_get_tail,{y,1},{x,0},0}.
    {deallocate,4}.
    return.
  {label,1544}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.
  {label,1545}.
    {line,[{scope,[5]},{location,"bs_match_r25_SUITE.erl",2764}]}.
    {try_case_end,{x,0}}.


{function, do_bs_match_gh_6660, 1, 1547}.
  {label,1546}.
    {line,[{location,"bs_match_r25_SUITE.erl",2778}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_bs_match_gh_6660},1}.
  {label,1547}.
    {allocate,1,1}.
    {'try',{y,0},{f,1548}}.
    {test,bs_start_match3,{f,1549},1,[{x,0}],{x,1}}.
    {test,bs_get_binary2,
          {f,1549},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {atom,all},
           8,
           {field_flags,[{anno,[2780,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {try_end,{y,0}}.
    {move,{x,1},{x,0}}.
    {deallocate,1}.
    return.
  {label,1548}.
    {try_case,{y,0}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.
  {label,1549}.
    {line,[{scope,[3]},{location,"bs_match_r25_SUITE.erl",2779}]}.
    {try_case_end,{x,0}}.


{function, do_bs_match_gh_6755, 1, 1551}.
  {label,1550}.
    {line,[{location,"bs_match_r25_SUITE.erl",2790}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_bs_match_gh_6755},1}.
  {label,1551}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1557},1,[{x,0}],{x,1}}.
    {allocate,2,2}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,1}}.
    {bs_get_position,{x,1},{y,0},2}.
    {test,bs_match_string,{f,1555},[{y,1},16,{string,<<"10">>}]}.
    {test,bs_get_integer2,
          {f,1555},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,16},
           1,
           {field_flags,[{anno,[2792,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,0}}.
    {select_val,{tr,{x,0},{t_integer,{0,65535}}},
                {f,1555},
                {list,[{integer,12336},{f,1553},{integer,12337},{f,1552}]}}.
  {label,1552}.
    {test,bs_test_tail2,{f,1555},[{x,1},0]}.
    {move,{atom,test2},{x,0}}.
    {jump,{f,1554}}.
  {label,1553}.
    {test,bs_test_tail2,{f,1555},[{x,1},0]}.
    {move,{atom,test},{x,0}}.
  {label,1554}.
    {line,[{location,"bs_match_r25_SUITE.erl",2796}]}.
    {call_ext,1,{extfunc,erlang,atom_to_list,1}}.
    {bs_set_position,{y,1},{y,0}}.
    {bs_get_tail,{y,1},{x,0},0}.
    {test,is_eq_exact,
          {f,1556},
          [{tr,{x,0},{t_bitstring,1,false}},{literal,<<"b">>}]}.
    {move,{atom,b},{x,0}}.
    {deallocate,2}.
    return.
  {label,1555}.
    {bs_set_position,{x,1},{y,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_r25_SUITE.erl",2791}]}.
    {case_end,{x,0}}.
  {label,1556}.
    {line,[{location,"bs_match_r25_SUITE.erl",2798}]}.
    {case_end,{x,0}}.
  {label,1557}.
    {line,[{location,"bs_match_r25_SUITE.erl",2791}]}.
    {case_end,{x,0}}.


{function, do_bs_match_gh_7467, 1, 1559}.
  {label,1558}.
    {line,[{location,"bs_match_r25_SUITE.erl",2802}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_bs_match_gh_7467},1}.
  {label,1559}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,256}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_test_tail2,{f,1560},[{x,0},1]}.
    {call_only,1,{f,1559}}. % do_bs_match_gh_7467/1
  {label,1560}.
    {bs_get_tail,{x,0},{x,0},1}.
    {line,[{location,"bs_match_r25_SUITE.erl",2803}]}.
    {badmatch,{x,0}}.


{function, do_bs_match_gh_8280, 0, 1562}.
  {label,1561}.
    {line,[{location,"bs_match_r25_SUITE.erl",2805}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_bs_match_gh_8280},0}.
  {label,1562}.
    {allocate,0,0}.
    {move,{literal,<<0,1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2808}]}.
    {call,1,{f,1778}}. % id/1
    {test,bs_start_match3,{f,1563},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,1563},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2808,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,1563},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,3},
           8,
           {field_flags,[{anno,[2808,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1563},[{x,1},0]}.
    {test,is_eq_exact,{f,1563},[{tr,{x,2},{t_integer,{0,255}}},{integer,0}]}.
    {test,is_eq_exact,
          {f,1563},
          [{tr,{x,3},{t_bitstring,8,false}},{literal,<<1,2,3>>}]}.
    {move,{literal,{0,<<1,2,3>>}},{x,0}}.
    {deallocate,0}.
    return.
  {label,1563}.
    {badmatch,{x,0}}.


{function, binary_aliases, 1, 1565}.
  {label,1564}.
    {line,[{location,"bs_match_r25_SUITE.erl",2814}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,binary_aliases},1}.
  {label,1565}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",2816}]}.
    {call,1,{f,1778}}. % id/1
    {call,1,{f,1849}}. % '-binary_aliases/1-fun-0-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,255}}}}}]}}.
    {test,is_eq_exact,
          {f,1660},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,255}},2 => {t_integer,{0,255}}}}},
           {literal,{42,42}}]}.
    {move,{literal,<<"c">>},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_r25_SUITE.erl",2817}]}.
    {call,1,{f,1778}}. % id/1
    {call,1,{f,1849}}. % '-binary_aliases/1-fun-0-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,255}}}}}]}}.
    {test,is_eq_exact,
          {f,1659},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,255}},2 => {t_integer,{0,255}}}}},
           {literal,{99,99}}]}.
    {move,{literal,{ba_foo,<<"ÿ">>,undefined,undefined}},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_r25_SUITE.erl",2820}]}.
    {call,1,{f,1778}}. % id/1
    {call,1,{f,1847}}. % '-binary_aliases/1-fun-1-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,255}}}}}]}}.
    {test,is_eq_exact,
          {f,1658},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,255}},2 => {t_integer,{0,255}}}}},
           {literal,{255,255}}]}.
    {move,{literal,{ba_foo,<<"k">>,undefined,undefined}},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_r25_SUITE.erl",2821}]}.
    {call,1,{f,1778}}. % id/1
    {call,1,{f,1847}}. % '-binary_aliases/1-fun-1-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,255}}}}}]}}.
    {test,is_eq_exact,
          {f,1657},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,255}},2 => {t_integer,{0,255}}}}},
           {literal,{107,107}}]}.
    {move,{literal,{ba_foo,<<"ÿ">>,undefined,undefined}},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_r25_SUITE.erl",2824}]}.
    {call,1,{f,1778}}. % id/1
    {call,1,{f,1845}}. % '-binary_aliases/1-fun-2-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,15}},
                                     3 => {t_integer,{0,15}}}}}]}}.
    {test,is_eq_exact,
          {f,1656},
          [{tr,{x,0},
               {t_tuple,3,true,
                        #{1 => {t_integer,{0,255}},
                          2 => {t_integer,{0,15}},
                          3 => {t_integer,{0,15}}}}},
           {literal,{255,15,15}}]}.
    {move,{literal,{ba_foo,<<"\\">>,undefined,undefined}},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_r25_SUITE.erl",2825}]}.
    {call,1,{f,1778}}. % id/1
    {call,1,{f,1845}}. % '-binary_aliases/1-fun-2-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,15}},
                                     3 => {t_integer,{0,15}}}}}]}}.
    {test,is_eq_exact,
          {f,1655},
          [{tr,{x,0},
               {t_tuple,3,true,
                        #{1 => {t_integer,{0,255}},
                          2 => {t_integer,{0,15}},
                          3 => {t_integer,{0,15}}}}},
           {literal,{92,5,12}}]}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_r25_SUITE.erl",2832}]}.
    {call,1,{f,1778}}. % id/1
    {call,1,{f,1843}}. % '-binary_aliases/1-fun-3-'/1
    {test,is_eq_exact,{f,1654},[{x,0},{integer,6}]}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_r25_SUITE.erl",2838}]}.
    {call,1,{f,1778}}. % id/1
    {call,1,{f,1839}}. % '-binary_aliases/1-fun-4-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,255}},
                                     3 => {t_bitstring,1,false}}}}]}}.
    {test,is_eq_exact,
          {f,1653},
          [{tr,{x,0},
               {t_tuple,3,true,
                        #{1 => {t_integer,{0,255}},
                          2 => {t_integer,{0,255}},
                          3 => {t_bitstring,1,false}}}},
           {literal,{42,42,<<"*">>}}]}.
    {move,{integer,12},{x,1}}.
    {move,{integer,7},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_r25_SUITE.erl",2844}]}.
    {call,2,{f,1836}}. % '-binary_aliases/1-fun-5-'/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,1652},[{tr,{x,0},{t_integer,{0,255}}},{integer,124}]}.
    {move,{integer,13},{x,1}}.
    {move,{integer,14},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_r25_SUITE.erl",2845}]}.
    {call,2,{f,1836}}. % '-binary_aliases/1-fun-5-'/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,1651},[{tr,{x,0},{t_integer,{0,255}}},{integer,237}]}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_r25_SUITE.erl",2851}]}.
    {call,1,{f,1778}}. % id/1
    {call,1,{f,1832}}. % '-binary_aliases/1-fun-6-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,{0,15}},
                                     2 => {t_integer,{0,15}},
                                     3 => {t_bitstring,1,false}}}}]}}.
    {test,is_eq_exact,
          {f,1650},
          [{tr,{x,0},
               {t_tuple,3,true,
                        #{1 => {t_integer,{0,15}},
                          2 => {t_integer,{0,15}},
                          3 => {t_bitstring,1,false}}}},
           {literal,{0,0,<<0>>}}]}.
    {'catch',{y,25},{f,1566}}.
    {move,{literal,<<1>>},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_r25_SUITE.erl",2852}]}.
    {call,1,{f,1832}}. % '-binary_aliases/1-fun-6-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,{0,15}},
                                     2 => {t_integer,{0,15}},
                                     3 => {t_bitstring,1,false}}}}]}}.
  {label,1566}.
    {catch_end,{y,25}}.
    {test,is_tagged_tuple,{f,1649},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1649},[{x,1}]}.
    {test,test_arity,{f,1649},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1649},[{x,1},{literal,{badmatch,<<1>>}}]}.
    {move,{literal,<<"ý">>},{x,0}}.
    {line,[{scope,"2"},{location,"bs_match_r25_SUITE.erl",2858}]}.
    {call,1,{f,1778}}. % id/1
    {call,1,{f,1828}}. % '-binary_aliases/1-fun-7-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,4,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,255}},
                                     3 => {t_bitstring,1,false},
                                     4 => {t_bitstring,1,false}}}}]}}.
    {test,is_eq_exact,
          {f,1648},
          [{tr,{x,0},
               {t_tuple,4,true,
                        #{1 => {t_integer,{0,255}},
                          2 => {t_integer,{0,255}},
                          3 => {t_bitstring,1,false},
                          4 => {t_bitstring,1,false}}}},
           {literal,{253,253,<<"ý">>,<<"ý">>}}]}.
    {move,{literal,<<"É">>},{x,0}}.
    {line,[{scope,"2"},{location,"bs_match_r25_SUITE.erl",2864}]}.
    {call,1,{f,1778}}. % id/1
    {call,1,{f,1824}}. % '-binary_aliases/1-fun-8-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,6,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,255}},
                                     3 => {t_bitstring,1,false},
                                     4 => {t_bitstring,1,false},
                                     5 => {t_bitstring,1,false},
                                     6 => {t_bitstring,1,false}}}}]}}.
    {test,is_eq_exact,
          {f,1647},
          [{tr,{x,0},
               {t_tuple,6,true,
                        #{1 => {t_integer,{0,255}},
                          2 => {t_integer,{0,255}},
                          3 => {t_bitstring,1,false},
                          4 => {t_bitstring,1,false},
                          5 => {t_bitstring,1,false},
                          6 => {t_bitstring,1,false}}}},
           {literal,{201,201,<<"É">>,<<"É">>,<<"É">>,<<"É">>}}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,"2"},{location,"bs_match_r25_SUITE.erl",2869}]}.
    {call,1,{f,1778}}. % id/1
    {call,1,{f,1821}}. % '-binary_aliases/1-fun-9-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,1646},
          [{tr,{x,0},{t_bitstring,256,true}},{literal,<<>>}]}.
    {'catch',{y,24},{f,1567}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,"2"},{location,"bs_match_r25_SUITE.erl",2870}]}.
    {call,1,{f,1778}}. % id/1
    {call,1,{f,1821}}. % '-binary_aliases/1-fun-9-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
  {label,1567}.
    {catch_end,{y,24}}.
    {test,is_tagged_tuple,{f,1645},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1645},[{x,1}]}.
    {test,test_arity,{f,1645},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1645},[{x,1},{literal,{badmatch,42}}]}.
    {move,{literal,<<0,0,0,0>>},{x,0}}.
    {line,[{scope,"0"},{location,"bs_match_r25_SUITE.erl",2876}]}.
    {call,1,{f,1778}}. % id/1
    {call,1,{f,1817}}. % '-binary_aliases/1-fun-10-'/1
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
          {f,1644},
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
    {line,[{scope,"0"},{location,"bs_match_r25_SUITE.erl",2878}]}.
    {call,1,{f,1778}}. % id/1
    {call,1,{f,1817}}. % '-binary_aliases/1-fun-10-'/1
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
          {f,1643},
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
    {line,[{scope,"0"},{location,"bs_match_r25_SUITE.erl",2881}]}.
    {call,1,{f,1778}}. % id/1
    {call,1,{f,1815}}. % '-binary_aliases/1-fun-11-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,255}}}}}]}}.
    {test,is_eq_exact,
          {f,1642},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,255}},2 => {t_integer,{0,255}}}}},
           {literal,{255,255}}]}.
    {move,{literal,#{key => <<"Ñ">>}},{x,0}}.
    {line,[{scope,"0"},{location,"bs_match_r25_SUITE.erl",2882}]}.
    {call,1,{f,1778}}. % id/1
    {call,1,{f,1815}}. % '-binary_aliases/1-fun-11-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,255}}}}}]}}.
    {test,is_eq_exact,
          {f,1641},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,255}},2 => {t_integer,{0,255}}}}},
           {literal,{209,209}}]}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{scope,"0"},{location,"bs_match_r25_SUITE.erl",2888}]}.
    {call,1,{f,1778}}. % id/1
    {call,1,{f,1810}}. % '-binary_aliases/1-fun-12-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,'+inf'}},
                                     3 => {t_bitstring,1,false}}}}]}}.
    {test,is_eq_exact,
          {f,1640},
          [{tr,{x,0},
               {t_tuple,3,true,
                        #{1 => {t_integer,{0,255}},
                          2 => {t_integer,{0,'+inf'}},
                          3 => {t_bitstring,1,false}}}},
           {literal,{0,0,<<>>}}]}.
    {move,{literal,<<1,1:1>>},{x,0}}.
    {line,[{scope,"0"},{location,"bs_match_r25_SUITE.erl",2889}]}.
    {call,1,{f,1778}}. % id/1
    {call,1,{f,1810}}. % '-binary_aliases/1-fun-12-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,'+inf'}},
                                     3 => {t_bitstring,1,false}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1639},[{tr,{x,1},{t_integer,{0,255}}},{integer,1}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,
          {f,1639},
          [{tr,{x,1},{t_integer,{0,'+inf'}}},{integer,1}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {test,bs_match_string,{f,1639},[{x,1},1,{string,<<128>>}]}.
    {test,bs_test_tail2,{f,1639},[{x,1},0]}.
    {move,{literal,<<"\b*">>},{x,0}}.
    {line,[{scope,"0"},{location,"bs_match_r25_SUITE.erl",2890}]}.
    {call,1,{f,1778}}. % id/1
    {call,1,{f,1810}}. % '-binary_aliases/1-fun-12-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,'+inf'}},
                                     3 => {t_bitstring,1,false}}}}]}}.
    {test,is_eq_exact,
          {f,1638},
          [{tr,{x,0},
               {t_tuple,3,true,
                        #{1 => {t_integer,{0,255}},
                          2 => {t_integer,{0,'+inf'}},
                          3 => {t_bitstring,1,false}}}},
           {literal,{8,42,<<"*">>}}]}.
    {move,{literal,[<<>>|0]},{x,0}}.
    {line,[{scope,"0"},{location,"bs_match_r25_SUITE.erl",2896}]}.
    {call,1,{f,1807}}. % '-binary_aliases/1-fun-13-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,[<<"ÿÿÿÿ">>|32]},{x,0}}.
    {line,[{scope,"0"},{location,"bs_match_r25_SUITE.erl",2897}]}.
    {call,1,{f,1807}}. % '-binary_aliases/1-fun-13-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,23},{f,1568}}.
    {move,{literal,[<<0,0>>|0]},{x,0}}.
    {line,[{scope,"0"},{location,"bs_match_r25_SUITE.erl",2898}]}.
    {call,1,{f,1807}}. % '-binary_aliases/1-fun-13-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1568}.
    {catch_end,{y,23}}.
    {test,is_tagged_tuple,{f,1637},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1637},[{x,1}]}.
    {test,test_arity,{f,1637},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1637},[{x,1},{literal,{badmatch,[<<0,0>>|0]}}]}.
    {'catch',{y,22},{f,1569}}.
    {move,{literal,[<<0,0>>|atom]},{x,0}}.
    {line,[{scope,"."},{location,"bs_match_r25_SUITE.erl",2899}]}.
    {call,1,{f,1807}}. % '-binary_aliases/1-fun-13-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1569}.
    {catch_end,{y,22}}.
    {test,is_tagged_tuple,{f,1636},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1636},[{x,1}]}.
    {test,test_arity,{f,1636},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1636},[{x,1},{literal,{badmatch,[<<0,0>>|atom]}}]}.
    {move,{literal,{<<>>,0}},{x,0}}.
    {line,[{scope,","},{location,"bs_match_r25_SUITE.erl",2905}]}.
    {call,1,{f,1804}}. % '-binary_aliases/1-fun-14-'/1
    {test,is_eq_exact,{f,1635},[{x,0},{integer,0}]}.
    {move,{literal,{<<"ÿÿÿÿ">>,32}},{x,0}}.
    {line,[{scope,","},{location,"bs_match_r25_SUITE.erl",2906}]}.
    {call,1,{f,1804}}. % '-binary_aliases/1-fun-14-'/1
    {test,is_eq_exact,{f,1634},[{x,0},{integer,32}]}.
    {'catch',{y,21},{f,1570}}.
    {move,{literal,{<<0,0>>,0}},{x,0}}.
    {line,[{scope,","},{location,"bs_match_r25_SUITE.erl",2907}]}.
    {call,1,{f,1804}}. % '-binary_aliases/1-fun-14-'/1
  {label,1570}.
    {catch_end,{y,21}}.
    {test,is_tagged_tuple,{f,1633},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1633},[{x,1}]}.
    {test,test_arity,{f,1633},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1633},[{x,1},{literal,{badmatch,{<<0,0>>,0}}}]}.
    {'catch',{y,20},{f,1571}}.
    {move,{literal,{<<0,0>>,atom}},{x,0}}.
    {line,[{scope,"*"},{location,"bs_match_r25_SUITE.erl",2908}]}.
    {call,1,{f,1804}}. % '-binary_aliases/1-fun-14-'/1
  {label,1571}.
    {catch_end,{y,20}}.
    {test,is_tagged_tuple,{f,1632},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1632},[{x,1}]}.
    {test,test_arity,{f,1632},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1632},[{x,1},{literal,{badmatch,{<<0,0>>,atom}}}]}.
    {move,{literal,[{<<>>,0}]},{x,0}}.
    {line,[{scope,"("},{location,"bs_match_r25_SUITE.erl",2914}]}.
    {call,1,{f,1801}}. % '-binary_aliases/1-fun-15-'/1
    {test,is_eq_exact,{f,1631},[{x,0},{integer,0}]}.
    {move,{literal,[{<<"ÿÿÿÿ">>,32}]},{x,0}}.
    {line,[{scope,"("},{location,"bs_match_r25_SUITE.erl",2915}]}.
    {call,1,{f,1801}}. % '-binary_aliases/1-fun-15-'/1
    {test,is_eq_exact,{f,1630},[{x,0},{integer,32}]}.
    {'catch',{y,19},{f,1572}}.
    {move,{literal,[{<<0,0>>,0}]},{x,0}}.
    {line,[{scope,"("},{location,"bs_match_r25_SUITE.erl",2916}]}.
    {call,1,{f,1801}}. % '-binary_aliases/1-fun-15-'/1
  {label,1572}.
    {catch_end,{y,19}}.
    {test,is_tagged_tuple,{f,1629},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1629},[{x,1}]}.
    {test,test_arity,{f,1629},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1629},[{x,1},{literal,{badmatch,[{<<0,0>>,0}]}}]}.
    {'catch',{y,18},{f,1573}}.
    {move,{literal,[{<<0,0>>,atom}]},{x,0}}.
    {line,[{scope,"&"},{location,"bs_match_r25_SUITE.erl",2917}]}.
    {call,1,{f,1801}}. % '-binary_aliases/1-fun-15-'/1
  {label,1573}.
    {catch_end,{y,18}}.
    {test,is_tagged_tuple,{f,1628},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1628},[{x,1}]}.
    {test,test_arity,{f,1628},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1628},[{x,1},{literal,{badmatch,[{<<0,0>>,atom}]}}]}.
    {move,{literal,#{[] => <<"*">>}},{x,0}}.
    {line,[{scope,"$"},{location,"bs_match_r25_SUITE.erl",2920}]}.
    {call,1,{f,1778}}. % id/1
    {call,1,{f,1799}}. % '-binary_aliases/1-fun-16-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,17},{f,1574}}.
    {move,{literal,#{[] => <<>>}},{x,0}}.
    {line,[{scope,"$"},{location,"bs_match_r25_SUITE.erl",2921}]}.
    {call,1,{f,1778}}. % id/1
    {call,1,{f,1799}}. % '-binary_aliases/1-fun-16-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1574}.
    {catch_end,{y,17}}.
    {test,is_tagged_tuple,{f,1627},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1627},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,16},{f,1575}}.
    {move,{atom,atom},{x,0}}.
    {line,[{scope,"#$"},{location,"bs_match_r25_SUITE.erl",2922}]}.
    {call,1,{f,1778}}. % id/1
    {call,1,{f,1799}}. % '-binary_aliases/1-fun-16-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1575}.
    {catch_end,{y,16}}.
    {test,is_tagged_tuple,{f,1626},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1626},[{x,1},2,{atom,function_clause}]}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,"!\""},{location,"bs_match_r25_SUITE.erl",2931}]}.
    {call,1,{f,1778}}. % id/1
    {call,1,{f,1796}}. % '-binary_aliases/1-fun-17-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1625},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope," "},{location,"bs_match_r25_SUITE.erl",2932}]}.
    {call,1,{f,1796}}. % '-binary_aliases/1-fun-17-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1624},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{literal,<<1:1>>},{x,0}}.
    {line,[{scope," "},{location,"bs_match_r25_SUITE.erl",2933}]}.
    {call,1,{f,1796}}. % '-binary_aliases/1-fun-17-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1623},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{atom,atom},{x,0}}.
    {line,[{scope," "},{location,"bs_match_r25_SUITE.erl",2934}]}.
    {call,1,{f,1796}}. % '-binary_aliases/1-fun-17-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {'catch',{y,15},{f,1576}}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{scope," "},{location,"bs_match_r25_SUITE.erl",2939}]}.
    {call,1,{f,1792}}. % '-binary_aliases/1-fun-18-'/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1576}.
    {catch_end,{y,15}}.
    {test,is_tagged_tuple,{f,1622},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1622},[{x,1}]}.
    {test,test_arity,{f,1622},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1622},[{x,1},{literal,{badmatch,<<0>>}}]}.
    {'catch',{y,14},{f,1577}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[30]},{location,"bs_match_r25_SUITE.erl",2940}]}.
    {call,1,{f,1792}}. % '-binary_aliases/1-fun-18-'/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1577}.
    {catch_end,{y,14}}.
    {test,is_tagged_tuple,{f,1621},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1621},[{x,1}]}.
    {test,test_arity,{f,1621},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1621},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,13},{f,1578}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[28]},{location,"bs_match_r25_SUITE.erl",2941}]}.
    {call,1,{f,1792}}. % '-binary_aliases/1-fun-18-'/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1578}.
    {catch_end,{y,13}}.
    {test,is_tagged_tuple,{f,1620},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1620},[{x,1}]}.
    {test,test_arity,{f,1620},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1620},[{x,1},{literal,{badmatch,0}}]}.
    {move,{literal,[<<>>]},{x,0}}.
    {line,[{scope,[26]},{location,"bs_match_r25_SUITE.erl",2944}]}.
    {call,1,{f,1790}}. % '-binary_aliases/1-fun-19-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[26]},{location,"bs_match_r25_SUITE.erl",2946}]}.
    {call,1,{f,1778}}. % id/1
    {move,{x,0},{y,25}}.
    {move,{literal,<<0>>},{x,0}}.
    {call,1,{f,1778}}. % id/1
    {move,{x,0},{y,24}}.
    {move,{integer,0},{x,0}}.
    {call,1,{f,1778}}. % id/1
    {move,{y,24},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{y,25},{x,0}}.
    {init_yregs,{list,[{y,24},{y,25}]}}.
    {call,3,{f,1662}}. % gh_6467/3
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
    {'catch',{y,12},{f,1579}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[26]},{location,"bs_match_r25_SUITE.erl",2947}]}.
    {call,1,{f,1778}}. % id/1
    {move,{x,0},{y,25}}.
    {move,{literal,<<0>>},{x,0}}.
    {call,1,{f,1778}}. % id/1
    {move,{x,0},{y,24}}.
    {move,nil,{x,0}}.
    {call,1,{f,1778}}. % id/1
    {move,{y,24},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{y,25},{x,0}}.
    {init_yregs,{list,[{y,24},{y,25}]}}.
    {call,3,{f,1662}}. % gh_6467/3
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
  {label,1579}.
    {catch_end,{y,12}}.
    {test,is_tagged_tuple,{f,1619},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1619},[{x,1}]}.
    {test,test_arity,{f,1619},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1619},[{x,1},{literal,{badmatch,0}}]}.
    {'catch',{y,11},{f,1580}}.
    {move,{literal,<<7>>},{x,0}}.
    {line,[{scope,[24]},{location,"bs_match_r25_SUITE.erl",2948}]}.
    {call,1,{f,1778}}. % id/1
    {move,{x,0},{y,25}}.
    {move,{literal,<<"!">>},{x,0}}.
    {call,1,{f,1778}}. % id/1
    {move,{x,0},{y,24}}.
    {move,nil,{x,0}}.
    {call,1,{f,1778}}. % id/1
    {move,{y,24},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{y,25},{x,0}}.
    {init_yregs,{list,[{y,24},{y,25}]}}.
    {call,3,{f,1662}}. % gh_6467/3
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
  {label,1580}.
    {catch_end,{y,11}}.
    {test,is_tagged_tuple,{f,1618},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1618},[{x,1}]}.
    {test,test_arity,{f,1618},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1618},[{x,1},{literal,{badmatch,<<7>>}}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2953}]}.
    {call,1,{f,1787}}. % '-binary_aliases/1-fun-20-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1617},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2954}]}.
    {call,1,{f,1787}}. % '-binary_aliases/1-fun-20-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1616},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2955}]}.
    {call,1,{f,1787}}. % '-binary_aliases/1-fun-20-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,true},{x,1}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2957}]}.
    {call,2,{f,1665}}. % gh6415_a/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,true]}}]}}.
    {test,is_eq_exact,{f,1615},[{tr,{x,0},{t_atom,[error,true]}},{atom,true}]}.
    {move,{atom,false},{x,1}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2958}]}.
    {call,2,{f,1665}}. % gh6415_a/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,false},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2959}]}.
    {call,2,{f,1665}}. % gh6415_a/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,not_bool},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2960}]}.
    {call,2,{f,1665}}. % gh6415_a/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,true},{x,1}}.
    {move,{atom,any},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2961}]}.
    {call,2,{f,1665}}. % gh6415_a/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,false},{x,1}}.
    {move,{atom,any},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2962}]}.
    {call,2,{f,1665}}. % gh6415_a/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,<<"c">>},{x,1}}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2964}]}.
    {call,2,{f,1668}}. % gh6415_b/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1614},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{literal,<<"c">>},{x,1}}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2965}]}.
    {call,2,{f,1668}}. % gh6415_b/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1613},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{literal,<<>>},{x,1}}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2966}]}.
    {call,2,{f,1668}}. % gh6415_b/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1612},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{literal,<<>>},{x,1}}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2967}]}.
    {call,2,{f,1668}}. % gh6415_b/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1611},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{atom,true},{x,1}}.
    {move,{literal,<<"\n">>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2969}]}.
    {call,2,{f,1672}}. % gh6415_c/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1610},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{atom,false},{x,1}}.
    {move,{literal,<<"\n">>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2970}]}.
    {call,2,{f,1672}}. % gh6415_c/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,true},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2971}]}.
    {call,2,{f,1672}}. % gh6415_c/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1609},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{atom,true},{x,1}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2972}]}.
    {call,2,{f,1672}}. % gh6415_c/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2974}]}.
    {call,1,{f,1675}}. % gh6415_case_clause/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2975}]}.
    {call,1,{f,1675}}. % gh6415_case_clause/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2976}]}.
    {call,1,{f,1675}}. % gh6415_case_clause/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2978}]}.
    {call,1,{f,1693}}. % gh6415_nomatch/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2979}]}.
    {call,1,{f,1693}}. % gh6415_nomatch/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,<<"ab">>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2980}]}.
    {call,1,{f,1693}}. % gh6415_nomatch/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,#{0 => <<>>}},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2981}]}.
    {call,1,{f,1693}}. % gh6415_nomatch/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,#{0 => <<"*">>}},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2982}]}.
    {call,1,{f,1693}}. % gh6415_nomatch/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,#{0 => 42}},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2983}]}.
    {call,1,{f,1693}}. % gh6415_nomatch/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,#{}},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2984}]}.
    {call,1,{f,1693}}. % gh6415_nomatch/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,{a,tuple}},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2985}]}.
    {call,1,{f,1693}}. % gh6415_nomatch/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,an_atom},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2986}]}.
    {call,1,{f,1693}}. % gh6415_nomatch/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2988}]}.
    {call,1,{f,1778}}. % id/1
    {call,1,{f,1738}}. % gh6415_match_a/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,1608},[{tr,{x,0},{t_integer,{0,255}}},{integer,42}]}.
    {'catch',{y,10},{f,1581}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2989}]}.
    {call,1,{f,1778}}. % id/1
    {call,1,{f,1738}}. % gh6415_match_a/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
  {label,1581}.
    {catch_end,{y,10}}.
    {test,is_tagged_tuple,{f,1607},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1607},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,9},{f,1582}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[21,22]},{location,"bs_match_r25_SUITE.erl",2990}]}.
    {call,1,{f,1778}}. % id/1
    {call,1,{f,1738}}. % gh6415_match_a/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
  {label,1582}.
    {catch_end,{y,9}}.
    {test,is_tagged_tuple,{f,1606},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1606},[{x,1},2,{atom,function_clause}]}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[19,20]},{location,"bs_match_r25_SUITE.erl",2992}]}.
    {call,1,{f,1778}}. % id/1
    {call,1,{f,1741}}. % gh6415_match_b/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
          {f,1605},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,255}},
                          2 => {t_bitstring,8,false}}}},
           {literal,{42,<<>>}}]}.
    {'catch',{y,8},{f,1583}}.
    {move,{literal,<<1,2>>},{x,0}}.
    {line,[{scope,[18]},{location,"bs_match_r25_SUITE.erl",2993}]}.
    {call,1,{f,1778}}. % id/1
    {call,1,{f,1741}}. % gh6415_match_b/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_bitstring,8,false}}}}]}}.
  {label,1583}.
    {catch_end,{y,8}}.
    {test,is_tagged_tuple,{f,1604},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1604},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,7},{f,1584}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[17,18]},{location,"bs_match_r25_SUITE.erl",2994}]}.
    {call,1,{f,1778}}. % id/1
    {call,1,{f,1741}}. % gh6415_match_b/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_bitstring,8,false}}}}]}}.
  {label,1584}.
    {catch_end,{y,7}}.
    {test,is_tagged_tuple,{f,1603},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1603},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,6},{f,1585}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[15,16]},{location,"bs_match_r25_SUITE.erl",2995}]}.
    {call,1,{f,1778}}. % id/1
    {call,1,{f,1741}}. % gh6415_match_b/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_bitstring,8,false}}}}]}}.
  {label,1585}.
    {catch_end,{y,6}}.
    {test,is_tagged_tuple,{f,1602},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1602},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,5},{f,1586}}.
    {line,[{scope,[13,14]},{location,"bs_match_r25_SUITE.erl",2997}]}.
    {call,0,{f,1744}}. % gh6415_match_c/0
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
  {label,1586}.
    {catch_end,{y,5}}.
    {test,is_tagged_tuple,{f,1601},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1601},[{x,1}]}.
    {test,test_arity,{f,1601},[{x,1},2]}.
    {move,{literal,<<"£">>},{x,0}}.
    {line,[{scope,"\v\f"},{location,"bs_match_r25_SUITE.erl",2999}]}.
    {call,1,{f,1778}}. % id/1
    {call,1,{f,1748}}. % gh6415_match_d/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,4},{f,1587}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,"\v\f"},{location,"bs_match_r25_SUITE.erl",3000}]}.
    {call,1,{f,1778}}. % id/1
    {call,1,{f,1748}}. % gh6415_match_d/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1587}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,1600},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1600},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,3},{f,1588}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,"\t\n"},{location,"bs_match_r25_SUITE.erl",3001}]}.
    {call,1,{f,1778}}. % id/1
    {call,1,{f,1748}}. % gh6415_match_d/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1588}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,1599},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1599},[{x,1},2,{atom,function_clause}]}.
    {move,{literal,<<163,0>>},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_r25_SUITE.erl",3003}]}.
    {call,1,{f,1778}}. % id/1
    {call,1,{f,1751}}. % gh6415_match_e/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<"c\b*">>},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_r25_SUITE.erl",3004}]}.
    {call,1,{f,1778}}. % id/1
    {call,1,{f,1751}}. % gh6415_match_e/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<99,17,255,255,1:1>>},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_r25_SUITE.erl",3005}]}.
    {call,1,{f,1778}}. % id/1
    {call,1,{f,1751}}. % gh6415_match_e/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,2},{f,1589}}.
    {move,{literal,<<"£">>},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_r25_SUITE.erl",3006}]}.
    {call,1,{f,1778}}. % id/1
    {call,1,{f,1751}}. % gh6415_match_e/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1589}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,1598},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1598},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,1},{f,1590}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_r25_SUITE.erl",3007}]}.
    {call,1,{f,1778}}. % id/1
    {call,1,{f,1751}}. % gh6415_match_e/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1590}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,1597},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1597},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,0},{f,1591}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_r25_SUITE.erl",3008}]}.
    {call,1,{f,1778}}. % id/1
    {call,1,{f,1751}}. % gh6415_match_e/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1591}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1596},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1596},[{x,1},2,{atom,function_clause}]}.
    {move,{literal,<<17,15,48,1:1>>},{x,0}}.
    {line,[{scope,[1,2]},{location,"bs_match_r25_SUITE.erl",3010}]}.
    {call,1,{f,1778}}. % id/1
    {call,1,{f,1754}}. % gh6415_match_f/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[error]},
                                   none,
                                   {t_integer,{0,131071}},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,1595},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,
                        {t_integer,{0,131071}},
                        none,none}},
           {integer,7777}]}.
    {move,{literal,<<17,2,105,0:1>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",3011}]}.
    {call,1,{f,1778}}. % id/1
    {call,1,{f,1754}}. % gh6415_match_f/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[error]},
                                   none,
                                   {t_integer,{0,131071}},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,1594},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,
                        {t_integer,{0,131071}},
                        none,none}},
           {integer,1234}]}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",3012}]}.
    {call,1,{f,1778}}. % id/1
    {call,1,{f,1754}}. % gh6415_match_f/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[error]},
                                   none,
                                   {t_integer,{0,131071}},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,1593},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,
                        {t_integer,{0,131071}},
                        none,none}},
           {atom,error}]}.
    {move,{literal,<<"\b*">>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",3013}]}.
    {call,1,{f,1778}}. % id/1
    {call,1,{f,1754}}. % gh6415_match_f/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[error]},
                                   none,
                                   {t_integer,{0,131071}},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,1592},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,
                        {t_integer,{0,131071}},
                        none,none}},
           {atom,error}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,26}.
    return.
  {label,1592}.
    {badmatch,{x,0}}.
  {label,1593}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",3012}]}.
    {badmatch,{x,0}}.
  {label,1594}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",3011}]}.
    {badmatch,{x,0}}.
  {label,1595}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",3010}]}.
    {badmatch,{x,0}}.
  {label,1596}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",3008}]}.
    {badmatch,{x,0}}.
  {label,1597}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",3007}]}.
    {badmatch,{x,0}}.
  {label,1598}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",3006}]}.
    {badmatch,{x,0}}.
  {label,1599}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",3001}]}.
    {badmatch,{x,0}}.
  {label,1600}.
    {line,[{scope,"\b"},{location,"bs_match_r25_SUITE.erl",3000}]}.
    {badmatch,{x,0}}.
  {label,1601}.
    {line,[{scope,"\n"},{location,"bs_match_r25_SUITE.erl",2997}]}.
    {badmatch,{x,0}}.
  {label,1602}.
    {line,[{scope,"\f"},{location,"bs_match_r25_SUITE.erl",2995}]}.
    {badmatch,{x,0}}.
  {label,1603}.
    {line,[{scope,[14]},{location,"bs_match_r25_SUITE.erl",2994}]}.
    {badmatch,{x,0}}.
  {label,1604}.
    {line,[{scope,[16]},{location,"bs_match_r25_SUITE.erl",2993}]}.
    {badmatch,{x,0}}.
  {label,1605}.
    {line,[{scope,[18]},{location,"bs_match_r25_SUITE.erl",2992}]}.
    {badmatch,{x,0}}.
  {label,1606}.
    {line,[{scope,[18]},{location,"bs_match_r25_SUITE.erl",2990}]}.
    {badmatch,{x,0}}.
  {label,1607}.
    {line,[{scope,[20]},{location,"bs_match_r25_SUITE.erl",2989}]}.
    {badmatch,{x,0}}.
  {label,1608}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2988}]}.
    {badmatch,{x,0}}.
  {label,1609}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2971}]}.
    {badmatch,{atom,ok}}.
  {label,1610}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2969}]}.
    {badmatch,{atom,error}}.
  {label,1611}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2967}]}.
    {badmatch,{atom,ok}}.
  {label,1612}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2966}]}.
    {badmatch,{atom,ok}}.
  {label,1613}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2965}]}.
    {badmatch,{atom,error}}.
  {label,1614}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2964}]}.
    {badmatch,{atom,error}}.
  {label,1615}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2957}]}.
    {badmatch,{atom,error}}.
  {label,1616}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2954}]}.
    {badmatch,{atom,ok}}.
  {label,1617}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2953}]}.
    {badmatch,{atom,error}}.
  {label,1618}.
    {line,[{scope,[22]},{location,"bs_match_r25_SUITE.erl",2948}]}.
    {badmatch,{x,0}}.
  {label,1619}.
    {line,[{scope,[24]},{location,"bs_match_r25_SUITE.erl",2947}]}.
    {badmatch,{x,0}}.
  {label,1620}.
    {line,[{scope,[26]},{location,"bs_match_r25_SUITE.erl",2941}]}.
    {badmatch,{x,0}}.
  {label,1621}.
    {line,[{scope,[28]},{location,"bs_match_r25_SUITE.erl",2940}]}.
    {badmatch,{x,0}}.
  {label,1622}.
    {line,[{scope,[30]},{location,"bs_match_r25_SUITE.erl",2939}]}.
    {badmatch,{x,0}}.
  {label,1623}.
    {line,[{scope," "},{location,"bs_match_r25_SUITE.erl",2933}]}.
    {badmatch,{atom,ok}}.
  {label,1624}.
    {line,[{scope," "},{location,"bs_match_r25_SUITE.erl",2932}]}.
    {badmatch,{atom,ok}}.
  {label,1625}.
    {line,[{scope," "},{location,"bs_match_r25_SUITE.erl",2931}]}.
    {badmatch,{atom,error}}.
  {label,1626}.
    {line,[{scope," "},{location,"bs_match_r25_SUITE.erl",2922}]}.
    {badmatch,{x,0}}.
  {label,1627}.
    {line,[{scope,"\""},{location,"bs_match_r25_SUITE.erl",2921}]}.
    {badmatch,{x,0}}.
  {label,1628}.
    {line,[{scope,"$"},{location,"bs_match_r25_SUITE.erl",2917}]}.
    {badmatch,{x,0}}.
  {label,1629}.
    {line,[{scope,"&"},{location,"bs_match_r25_SUITE.erl",2916}]}.
    {badmatch,{x,0}}.
  {label,1630}.
    {line,[{scope,"("},{location,"bs_match_r25_SUITE.erl",2915}]}.
    {badmatch,{x,0}}.
  {label,1631}.
    {line,[{scope,"("},{location,"bs_match_r25_SUITE.erl",2914}]}.
    {badmatch,{x,0}}.
  {label,1632}.
    {line,[{scope,"("},{location,"bs_match_r25_SUITE.erl",2908}]}.
    {badmatch,{x,0}}.
  {label,1633}.
    {line,[{scope,"*"},{location,"bs_match_r25_SUITE.erl",2907}]}.
    {badmatch,{x,0}}.
  {label,1634}.
    {line,[{scope,","},{location,"bs_match_r25_SUITE.erl",2906}]}.
    {badmatch,{x,0}}.
  {label,1635}.
    {line,[{scope,","},{location,"bs_match_r25_SUITE.erl",2905}]}.
    {badmatch,{x,0}}.
  {label,1636}.
    {line,[{scope,","},{location,"bs_match_r25_SUITE.erl",2899}]}.
    {badmatch,{x,0}}.
  {label,1637}.
    {line,[{scope,"."},{location,"bs_match_r25_SUITE.erl",2898}]}.
    {badmatch,{x,0}}.
  {label,1638}.
    {line,[{scope,"0"},{location,"bs_match_r25_SUITE.erl",2890}]}.
    {badmatch,{x,0}}.
  {label,1639}.
    {line,[{scope,"0"},{location,"bs_match_r25_SUITE.erl",2889}]}.
    {badmatch,{x,0}}.
  {label,1640}.
    {line,[{scope,"0"},{location,"bs_match_r25_SUITE.erl",2888}]}.
    {badmatch,{x,0}}.
  {label,1641}.
    {line,[{scope,"0"},{location,"bs_match_r25_SUITE.erl",2882}]}.
    {badmatch,{x,0}}.
  {label,1642}.
    {line,[{scope,"0"},{location,"bs_match_r25_SUITE.erl",2881}]}.
    {badmatch,{x,0}}.
  {label,1643}.
    {line,[{scope,"0"},{location,"bs_match_r25_SUITE.erl",2877}]}.
    {badmatch,{x,0}}.
  {label,1644}.
    {line,[{scope,"0"},{location,"bs_match_r25_SUITE.erl",2876}]}.
    {badmatch,{x,0}}.
  {label,1645}.
    {line,[{scope,"0"},{location,"bs_match_r25_SUITE.erl",2870}]}.
    {badmatch,{x,0}}.
  {label,1646}.
    {line,[{scope,"2"},{location,"bs_match_r25_SUITE.erl",2869}]}.
    {badmatch,{x,0}}.
  {label,1647}.
    {line,[{scope,"2"},{location,"bs_match_r25_SUITE.erl",2864}]}.
    {badmatch,{x,0}}.
  {label,1648}.
    {line,[{scope,"2"},{location,"bs_match_r25_SUITE.erl",2858}]}.
    {badmatch,{x,0}}.
  {label,1649}.
    {line,[{scope,"2"},{location,"bs_match_r25_SUITE.erl",2852}]}.
    {badmatch,{x,0}}.
  {label,1650}.
    {line,[{scope,"4"},{location,"bs_match_r25_SUITE.erl",2851}]}.
    {badmatch,{x,0}}.
  {label,1651}.
    {line,[{scope,"4"},{location,"bs_match_r25_SUITE.erl",2845}]}.
    {badmatch,{x,0}}.
  {label,1652}.
    {line,[{scope,"4"},{location,"bs_match_r25_SUITE.erl",2844}]}.
    {badmatch,{x,0}}.
  {label,1653}.
    {line,[{scope,"4"},{location,"bs_match_r25_SUITE.erl",2838}]}.
    {badmatch,{x,0}}.
  {label,1654}.
    {line,[{scope,"4"},{location,"bs_match_r25_SUITE.erl",2832}]}.
    {badmatch,{x,0}}.
  {label,1655}.
    {line,[{scope,"4"},{location,"bs_match_r25_SUITE.erl",2825}]}.
    {badmatch,{x,0}}.
  {label,1656}.
    {line,[{scope,"4"},{location,"bs_match_r25_SUITE.erl",2824}]}.
    {badmatch,{x,0}}.
  {label,1657}.
    {line,[{scope,"4"},{location,"bs_match_r25_SUITE.erl",2821}]}.
    {badmatch,{x,0}}.
  {label,1658}.
    {line,[{scope,"4"},{location,"bs_match_r25_SUITE.erl",2820}]}.
    {badmatch,{x,0}}.
  {label,1659}.
    {line,[{scope,"4"},{location,"bs_match_r25_SUITE.erl",2817}]}.
    {badmatch,{x,0}}.
  {label,1660}.
    {line,[{scope,"4"},{location,"bs_match_r25_SUITE.erl",2816}]}.
    {badmatch,{x,0}}.


{function, gh_6467, 3, 1662}.
  {label,1661}.
    {line,[{location,"bs_match_r25_SUITE.erl",3020}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh_6467},3}.
  {label,1662}.
    {test,is_nil,{f,1663},[{x,2}]}.
    {line,[{location,"bs_match_r25_SUITE.erl",3021}]}.
    {badmatch,{x,0}}.
  {label,1663}.
    {test,bs_start_match3,{f,1661},3,[{x,1}],{x,3}}.
    {test,bs_test_tail2,{f,1661},[{x,3},8]}.
    {move,{atom,a},{x,0}}.
    return.


{function, gh6415_a, 2, 1665}.
  {label,1664}.
    {line,[{location,"bs_match_r25_SUITE.erl",3025}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_a},2}.
  {label,1665}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[any]},
                                   none,none,none,
                                   {t_bitstring,8,false}}},
                    accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[false,not_bool,true]}}]}}.
    {test,bs_start_match3,{f,1666},2,[{x,0}],{x,0}}.
    {test,bs_test_tail2,{f,1666},[{x,0},8]}.
    {test,is_eq_exact,{f,1666},[{x,1},{atom,true}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,1666}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_b, 2, 1668}.
  {label,1667}.
    {line,[{location,"bs_match_r25_SUITE.erl",3030}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_b},2}.
  {label,1668}.
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,1670},
          2,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[3030,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1670},[{x,1},0]}.
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
          {f,1669},
          [{tr,{x,1},{t_atom,[false,true]}},{atom,false}]}.
    {test,is_eq_exact,{f,1670},[{tr,{x,0},{t_atom,[false,true]}},{atom,true}]}.
  {label,1669}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1670}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_c, 2, 1672}.
  {label,1671}.
    {line,[{location,"bs_match_r25_SUITE.erl",3035}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_c},2}.
  {label,1672}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,none,
                                   {t_integer,{42,42}},
                                   none,
                                   {t_bitstring,8,false}}},
                    accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[false,true]}}]}}.
    {test,bs_start_match3,{f,1673},2,[{x,0}],{x,0}}.
    {test,bs_test_tail2,{f,1673},[{x,0},8]}.
    {test,is_eq_exact,{f,1673},[{x,1},{atom,true}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1673}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_case_clause, 1, 1675}.
  {label,1674}.
    {line,[{location,"bs_match_r25_SUITE.erl",3040}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_case_clause},1}.
  {label,1675}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[a]},
                                   none,
                                   {t_integer,{42,42}},
                                   none,
                                   {t_bitstring,8,false}}}]}}.
    {allocate,5,1}.
    {init_yregs,{list,[{y,1},{y,2},{y,3}]}}.
    {move,{x,0},{y,0}}.
    {'catch',{y,4},{f,1676}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3041}]}.
    {call,1,{f,1685}}. % gh6415_case_clause_a/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1676}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,1683},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1683},[{x,1}]}.
    {test,test_arity,{f,1683},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1683},[{x,1},{literal,{case_clause,0}}]}.
    {'catch',{y,3},{f,1677}}.
    {move,{y,0},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",3042}]}.
    {call,1,{f,1687}}. % gh6415_case_clause_b/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1677}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,1682},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1682},[{x,1}]}.
    {test,test_arity,{f,1682},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1682},[{x,1},{literal,{case_clause,0}}]}.
    {'catch',{y,2},{f,1678}}.
    {move,{y,0},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",3043}]}.
    {call,1,{f,1689}}. % gh6415_case_clause_c/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1678}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,1681},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1681},[{x,1}]}.
    {test,test_arity,{f,1681},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1681},[{x,1},{literal,{case_clause,0}}]}.
    {'catch',{y,1},{f,1679}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",3044}]}.
    {call,1,{f,1691}}. % gh6415_case_clause_d/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1679}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,1680},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1680},[{x,1}]}.
    {test,test_arity,{f,1680},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1680},[{x,1},{literal,{case_clause,0}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,5}.
    return.
  {label,1680}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",3044}]}.
    {badmatch,{x,0}}.
  {label,1681}.
    {line,[{scope,[2]},{location,"bs_match_r25_SUITE.erl",3043}]}.
    {badmatch,{x,0}}.
  {label,1682}.
    {line,[{scope,[4]},{location,"bs_match_r25_SUITE.erl",3042}]}.
    {badmatch,{x,0}}.
  {label,1683}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",3041}]}.
    {badmatch,{x,0}}.


{function, gh6415_case_clause_a, 1, 1685}.
  {label,1684}.
    {line,[{location,"bs_match_r25_SUITE.erl",3047}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_case_clause_a},1}.
  {label,1685}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[a]},
                                   none,
                                   {t_integer,{42,42}},
                                   none,
                                   {t_bitstring,8,false}}}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3048}]}.
    {case_end,{integer,0}}.


{function, gh6415_case_clause_b, 1, 1687}.
  {label,1686}.
    {line,[{location,"bs_match_r25_SUITE.erl",3054}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_case_clause_b},1}.
  {label,1687}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[a]},
                                   none,
                                   {t_integer,{42,42}},
                                   none,
                                   {t_bitstring,8,false}}}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3055}]}.
    {case_end,{integer,0}}.


{function, gh6415_case_clause_c, 1, 1689}.
  {label,1688}.
    {line,[{location,"bs_match_r25_SUITE.erl",3061}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_case_clause_c},1}.
  {label,1689}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[a]},
                                   none,
                                   {t_integer,{42,42}},
                                   none,
                                   {t_bitstring,8,false}}}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3062}]}.
    {case_end,{integer,0}}.


{function, gh6415_case_clause_d, 1, 1691}.
  {label,1690}.
    {line,[{location,"bs_match_r25_SUITE.erl",3068}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_case_clause_d},1}.
  {label,1691}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[a]},
                                   none,
                                   {t_integer,{42,42}},
                                   none,
                                   {t_bitstring,8,false}}}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3069}]}.
    {case_end,{integer,0}}.


{function, gh6415_nomatch, 1, 1693}.
  {label,1692}.
    {line,[{location,"bs_match_r25_SUITE.erl",3075}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_nomatch},1}.
  {label,1693}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",3076}]}.
    {call,1,{f,1778}}. % id/1
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3077}]}.
    {call,1,{f,1706}}. % gh6415_nomatch_a/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3078}]}.
    {call,1,{f,1708}}. % gh6415_nomatch_b/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,
          {f,1704},
          [{tr,{x,0},{t_atom,[error,ok]}},{tr,{y,0},{t_atom,[error,ok]}}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3079}]}.
    {call,1,{f,1710}}. % gh6415_nomatch_c/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {test,is_eq_exact,{f,1703},[{tr,{y,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3080}]}.
    {call,1,{f,1712}}. % gh6415_nomatch_d/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1702},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3081}]}.
    {call,1,{f,1714}}. % gh6415_nomatch_e/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1701},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3082}]}.
    {call,1,{f,1717}}. % gh6415_nomatch_f/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1700},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3083}]}.
    {call,1,{f,1719}}. % gh6415_nomatch_g/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1699},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3084}]}.
    {call,1,{f,1722}}. % gh6415_nomatch_h/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1698},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3085}]}.
    {call,1,{f,1725}}. % gh6415_nomatch_i/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1697},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3086}]}.
    {call,1,{f,1728}}. % gh6415_nomatch_j/1
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
          {f,1696},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,none,
                        {t_tuple,2,true,
                                 #{1 => {t_integer,{0,65535}},
                                   2 => {t_bitstring,8,false}}},
                        none}},
           {atom,error}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3087}]}.
    {call,1,{f,1731}}. % gh6415_nomatch_k/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1695},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{y,1},{x,0}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {line,[{location,"bs_match_r25_SUITE.erl",3088}]}.
    {call,1,{f,1736}}. % gh6415_nomatch_l/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1694},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1694}.
    {badmatch,{atom,ok}}.
  {label,1695}.
    {line,[{location,"bs_match_r25_SUITE.erl",3087}]}.
    {badmatch,{atom,ok}}.
  {label,1696}.
    {line,[{location,"bs_match_r25_SUITE.erl",3086}]}.
    {badmatch,{x,0}}.
  {label,1697}.
    {line,[{location,"bs_match_r25_SUITE.erl",3085}]}.
    {badmatch,{atom,ok}}.
  {label,1698}.
    {line,[{location,"bs_match_r25_SUITE.erl",3084}]}.
    {badmatch,{atom,ok}}.
  {label,1699}.
    {line,[{location,"bs_match_r25_SUITE.erl",3083}]}.
    {badmatch,{atom,ok}}.
  {label,1700}.
    {line,[{location,"bs_match_r25_SUITE.erl",3082}]}.
    {badmatch,{atom,ok}}.
  {label,1701}.
    {line,[{location,"bs_match_r25_SUITE.erl",3081}]}.
    {badmatch,{atom,ok}}.
  {label,1702}.
    {line,[{location,"bs_match_r25_SUITE.erl",3080}]}.
    {badmatch,{atom,ok}}.
  {label,1703}.
    {line,[{location,"bs_match_r25_SUITE.erl",3079}]}.
    {badmatch,{atom,error}}.
  {label,1704}.
    {line,[{location,"bs_match_r25_SUITE.erl",3078}]}.
    {badmatch,{x,0}}.


{function, gh6415_nomatch_a, 1, 1706}.
  {label,1705}.
    {line,[{location,"bs_match_r25_SUITE.erl",3091}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_nomatch_a},1}.
  {label,1706}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_b, 1, 1708}.
  {label,1707}.
    {line,[{location,"bs_match_r25_SUITE.erl",3094}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_nomatch_b},1}.
  {label,1708}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_c, 1, 1710}.
  {label,1709}.
    {line,[{location,"bs_match_r25_SUITE.erl",3097}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_nomatch_c},1}.
  {label,1710}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_d, 1, 1712}.
  {label,1711}.
    {line,[{location,"bs_match_r25_SUITE.erl",3100}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_nomatch_d},1}.
  {label,1712}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_e, 1, 1714}.
  {label,1713}.
    {line,[{location,"bs_match_r25_SUITE.erl",3103}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_nomatch_e},1}.
  {label,1714}.
    {test,is_map,{f,1715},[{x,0}]}.
    {get_map_elements,{f,1715},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{integer,0},{x,0}]}}.
    {test,is_eq_exact,{f,1715},[{x,0},{literal,<<>>}]}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_test_tail2,{f,1715},[{x,0},8]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1715}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_f, 1, 1717}.
  {label,1716}.
    {line,[{location,"bs_match_r25_SUITE.erl",3106}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_nomatch_f},1}.
  {label,1717}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_g, 1, 1719}.
  {label,1718}.
    {line,[{location,"bs_match_r25_SUITE.erl",3109}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_nomatch_g},1}.
  {label,1719}.
    {test,is_map,{f,1720},[{x,0}]}.
    {get_map_elements,{f,1720},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{integer,0},{x,0}]}}.
    {test,bs_start_match3,{f,1720},1,[{x,0}],{x,0}}.
    {test,bs_test_tail2,{f,1720},[{x,0},8]}.
    {test,bs_skip_bits2,
          {f,1720},
          [{x,0},
           {integer,8},
           1,
           {field_flags,[{anno,[3109,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_match_string,{f,1720},[{x,0},8,{string,<<0>>}]}.
    {test,bs_test_tail2,{f,1720},[{x,0},0]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1720}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_h, 1, 1722}.
  {label,1721}.
    {line,[{location,"bs_match_r25_SUITE.erl",3112}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_nomatch_h},1}.
  {label,1722}.
    {test,is_map,{f,1723},[{x,0}]}.
    {get_map_elements,{f,1723},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{integer,0},{x,0}]}}.
    {test,bs_start_match3,{f,1723},1,[{x,0}],{x,0}}.
    {test,bs_test_tail2,{f,1723},[{x,0},0]}.
    {test,bs_get_integer2,
          {f,1723},
          1,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[3112,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_test_tail2,{f,1723},[{x,0},0]}.
    {test,is_eq_exact,{f,1723},[{tr,{x,1},{t_integer,{0,255}}},{integer,0}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1723}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_i, 1, 1725}.
  {label,1724}.
    {line,[{location,"bs_match_r25_SUITE.erl",3115}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_nomatch_i},1}.
  {label,1725}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1726},1,[{x,0}],{x,0}}.
    {test,bs_test_tail2,{f,1726},[{x,0},8]}.
    {test,bs_skip_bits2,
          {f,1726},
          [{x,0},
           {integer,16},
           1,
           {field_flags,[{anno,[3115,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,1726},
          1,
          [{tr,{x,0},{t_bs_context,1}},
           {atom,all},
           8,
           {field_flags,[{anno,[3115,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,0}}.
    {allocate,0,1}.
    {line,[{location,"bs_match_r25_SUITE.erl",3116}]}.
    {call_ext,1,{extfunc,erlang,binary_to_list,1}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1726}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_j, 1, 1728}.
  {label,1727}.
    {line,[{location,"bs_match_r25_SUITE.erl",3121}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_nomatch_j},1}.
  {label,1728}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1729},1,[{x,0}],{x,0}}.
    {test,bs_test_tail2,{f,1729},[{x,0},8]}.
    {test,bs_get_integer2,
          {f,1729},
          1,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,16},
           1,
           {field_flags,[{anno,[3121,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_get_binary2,
          {f,1729},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {atom,all},
           8,
           {field_flags,[{anno,[3121,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,0}}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,1},{x,0}]}}.
    return.
  {label,1729}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_k, 1, 1731}.
  {label,1730}.
    {line,[{location,"bs_match_r25_SUITE.erl",3126}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_nomatch_k},1}.
  {label,1731}.
    {test,is_map,{f,1734},[{x,0}]}.
    {get_map_elements,{f,1734},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{integer,0},{x,0}]}}.
    {test,bs_start_match3,{f,1734},1,[{x,0}],{x,0}}.
    {test,bs_test_tail2,{f,1734},[{x,0},8]}.
    {test,bs_skip_bits2,
          {f,1734},
          [{x,0},
           {integer,8},
           1,
           {field_flags,[{anno,[3126,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {gc_bif,'div',{f,1732},1,[{integer,0},{integer,0}],{x,1}}.
    {jump,{f,1733}}.
  {label,1732}.
    {move,{atom,bad_size},{x,1}}.
  {label,1733}.
    {test,bs_skip_bits2,
          {f,1734},
          [{x,0},
           {x,1},
           1,
           {field_flags,[{anno,[3126,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_test_tail2,{f,1734},[{x,0},0]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1734}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_l, 1, 1736}.
  {label,1735}.
    {line,[{location,"bs_match_r25_SUITE.erl",3131}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_nomatch_l},1}.
  {label,1736}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_match_a, 1, 1738}.
  {label,1737}.
    {line,[{location,"bs_match_r25_SUITE.erl",3139}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_match_a},1}.
  {label,1738}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1737},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_test_tail2,{f,1739},[{x,1},8]}.
    {test,bs_get_integer2,
          {f,1739},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[3139,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1739},[{x,1},0]}.
    {move,{x,2},{x,0}}.
    return.
  {label,1739}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,1737}}.


{function, gh6415_match_b, 1, 1741}.
  {label,1740}.
    {line,[{location,"bs_match_r25_SUITE.erl",3142}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_match_b},1}.
  {label,1741}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1740},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_test_tail2,{f,1742},[{x,1},8]}.
    {test,bs_get_integer2,
          {f,1742},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[3142,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_binary2,
          {f,1742},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {atom,all},
           8,
           {field_flags,[{anno,[3142,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,1742}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,1740}}.


{function, gh6415_match_c, 0, 1744}.
  {label,1743}.
    {line,[{location,"bs_match_r25_SUITE.erl",3145}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_match_c},0}.
  {label,1744}.
    {allocate,1,0}.
    {'catch',{y,0},{f,1745}}.
    {move,{atom,badarg},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3146}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,1745}.
    {catch_end,{y,0}}.
    {test,is_map,{f,1746},[{x,0}]}.
    {get_map_elements,{f,1746},{tr,{x,0},{t_map,any,any}},{list,[nil,{x,1}]}}.
    {test,bs_start_match3,{f,1746},2,[{x,1}],{x,1}}.
    {test,bs_test_tail2,{f,1746},[{x,1},8]}.
    {test,bs_get_integer2,
          {f,1746},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[3147,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1746},[{x,1},0]}.
    {move,{x,2},{x,0}}.
    {deallocate,1}.
    return.
  {label,1746}.
    {line,[{scope,[0]},{location,"bs_match_r25_SUITE.erl",3146}]}.
    {case_end,{x,0}}.


{function, gh6415_match_d, 1, 1748}.
  {label,1747}.
    {line,[{location,"bs_match_r25_SUITE.erl",3151}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_match_d},1}.
  {label,1748}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1747},1,[{x,0}],{x,1}}.
    {test,bs_test_tail2,{f,1749},[{x,1},8]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1749}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,1747}}.


{function, gh6415_match_e, 1, 1751}.
  {label,1750}.
    {line,[{location,"bs_match_r25_SUITE.erl",3154}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_match_e},1}.
  {label,1751}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1750},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_skip_bits2,
          {f,1752},
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[3154,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_integer2,
          {f,1752},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[3154,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_skip_bits2,
          {f,1752},
          [{x,1},
           {x,2},
           1,
           {field_flags,[{anno,[3154,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_test_tail2,{f,1752},[{x,1},0]}.
    {bs_set_position,{x,1},{x,0}}.
    {test,bs_skip_bits2,
          {f,1752},
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[3154,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_integer2,
          {f,1752},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[3154,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_skip_bits2,
          {f,1752},
          [{x,1},
           {x,3},
           1,
           {field_flags,[{anno,[3154,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_test_tail2,{f,1752},[{x,1},0]}.
    {test,is_eq_exact,
          {f,1752},
          [{tr,{x,3},{t_integer,{0,255}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1752}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,1750}}.


{function, gh6415_match_f, 1, 1754}.
  {label,1753}.
    {line,[{location,"bs_match_r25_SUITE.erl",3157}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh6415_match_f},1}.
  {label,1754}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1755},1,[{x,0}],{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {test,bs_skip_bits2,
          {f,1755},
          [{x,0},
           {integer,0},
           1,
           {field_flags,[{anno,[3157,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_integer2,
          {f,1755},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[3157,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1755},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[3157,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1755},[{x,0},0]}.
    {bs_set_position,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,1755},
          4,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[3157,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_skip_bits2,
          {f,1755},
          [{x,0},
           {integer,0},
           1,
           {field_flags,[{anno,[3157,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_integer2,
          {f,1755},
          5,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,4},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[3157,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_test_tail2,{f,1755},[{x,0},0]}.
    {bs_set_position,{x,0},{x,1}}.
    {test,bs_match_string,{f,1755},[{x,0},8,{string,<<17>>}]}.
    {test,bs_get_integer2,
          {f,1755},
          6,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,17},
           1,
           {field_flags,[{anno,[3157,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_test_tail2,{f,1755},[{x,0},0]}.
    {test,is_eq_exact,
          {f,1755},
          [{tr,{x,4},{t_integer,{0,255}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,1755},
          [{tr,{x,5},{t_integer,{0,'+inf'}}},
           {tr,{x,3},{t_integer,{0,'+inf'}}}]}.
    {test,is_eq_exact,
          {f,1755},
          [{tr,{x,1},{t_integer,{0,131071}}},
           {tr,{x,3},{t_integer,{0,'+inf'}}}]}.
    {move,{x,3},{x,0}}.
    return.
  {label,1755}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh_6923, 1, 1757}.
  {label,1756}.
    {line,[{location,"bs_match_r25_SUITE.erl",3164}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,gh_6923},1}.
  {label,1757}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{atom,bs_match_r25_SUITE},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3195}]}.
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
    {line,[{location,"bs_match_r25_SUITE.erl",3196}]}.
    {call_ext,2,{extfunc,compile,forms,2}}.
    {test,is_tagged_tuple,{f,1763},[{x,0},3,{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,1763},[{x,1},{atom,bs_match_r25_SUITE_gh_6923}]}.
    {get_tuple_element,{x,0},2,{x,2}}.
    {move,nil,{x,1}}.
    {move,{atom,bs_match_r25_SUITE_gh_6923},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3197}]}.
    {call_ext,3,{extfunc,code,load_binary,3}}.
    {test,is_tagged_tuple,{f,1762},[{x,0},2,{atom,module}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,1762},[{x,1},{atom,bs_match_r25_SUITE_gh_6923}]}.
    {move,{literal,[<<"prefix">>,<<"action">>]},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3198}]}.
    {call_ext,1,{extfunc,bs_match_r25_SUITE_gh_6923,match_route,1}}.
    {test,is_eq_exact,{f,1761},[{x,0},{atom,first}]}.
    {move,{literal,[<<"prefix">>,whatever]},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3199}]}.
    {call_ext,1,{extfunc,bs_match_r25_SUITE_gh_6923,match_route,1}}.
    {test,is_eq_exact,{f,1760},[{x,0},{atom,second}]}.
    {move,{atom,bs_match_r25_SUITE_gh_6923},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3200}]}.
    {call_ext,1,{extfunc,code,delete,1}}.
    {move,{atom,bs_match_r25_SUITE_gh_6923},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3201}]}.
    {call_ext,1,{extfunc,code,purge,1}}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3204}]}.
    {call,1,{f,1778}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,42},{x,0}}.
    {call,1,{f,1778}}. % id/1
    {test_heap,4,1}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{y,0},{x,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {call,1,{f,1765}}. % do_gh_6923/1
    {'%',{var_info,{x,0},[{type,{t_atom,[first,second]}}]}}.
    {test,is_eq_exact,
          {f,1759},
          [{tr,{x,0},{t_atom,[first,second]}},{atom,first}]}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3205}]}.
    {call,1,{f,1778}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{literal,{a,b,c}},{x,0}}.
    {call,1,{f,1778}}. % id/1
    {test_heap,4,1}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{y,0},{x,0},{x,0}}.
    {trim,1,0}.
    {call,1,{f,1765}}. % do_gh_6923/1
    {'%',{var_info,{x,0},[{type,{t_atom,[first,second]}}]}}.
    {test,is_eq_exact,
          {f,1758},
          [{tr,{x,0},{t_atom,[first,second]}},{atom,second}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1758}.
    {badmatch,{atom,first}}.
  {label,1759}.
    {line,[{location,"bs_match_r25_SUITE.erl",3204}]}.
    {badmatch,{atom,second}}.
  {label,1760}.
    {line,[{location,"bs_match_r25_SUITE.erl",3199}]}.
    {badmatch,{x,0}}.
  {label,1761}.
    {line,[{location,"bs_match_r25_SUITE.erl",3198}]}.
    {badmatch,{x,0}}.
  {label,1762}.
    {line,[{location,"bs_match_r25_SUITE.erl",3197}]}.
    {badmatch,{x,0}}.
  {label,1763}.
    {line,[{location,"bs_match_r25_SUITE.erl",3196}]}.
    {badmatch,{x,0}}.


{function, do_gh_6923, 1, 1765}.
  {label,1764}.
    {line,[{location,"bs_match_r25_SUITE.erl",3209}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_gh_6923},1}.
  {label,1765}.
    {'%',{var_info,{x,0},[{type,{t_cons,any,nil}}]}}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,bs_start_match3,{f,1764},3,[{x,1}],{x,1}}.
    {test,bs_match_string,{f,1764},[{x,1},24,{string,<<"abc">>}]}.
    {test,bs_test_tail2,{f,1764},[{x,1},0]}.
    {test,is_nonempty_list,{f,1764},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_nil,{f,1764},[{tr,{x,2},{t_list,any,nil}}]}.
    {test,is_integer,{f,1766},[{x,1}]}.
    {move,{atom,first},{x,0}}.
    return.
  {label,1766}.
    {test,is_tuple,{f,1764},[{x,1}]}.
    {move,{atom,second},{x,0}}.
    return.


{function, otp_19019, 1, 1768}.
  {label,1767}.
    {line,[{location,"bs_match_r25_SUITE.erl",3212}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,otp_19019},1}.
  {label,1768}.
    {allocate,0,0}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3213}]}.
    {call,1,{f,1778}}. % id/1
    {call,1,{f,1772}}. % do_otp_19019/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[ok]},
                                   none,none,none,
                                   {t_bitstring,256,true}}}]}}.
    {test,is_eq_exact,
          {f,1770},
          [{tr,{x,0},
               {t_union,{t_atom,[ok]},none,none,none,{t_bitstring,256,true}}},
           {atom,ok}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",3214}]}.
    {call,1,{f,1778}}. % id/1
    {call,1,{f,1772}}. % do_otp_19019/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[ok]},
                                   none,none,none,
                                   {t_bitstring,256,true}}}]}}.
    {test,is_eq_exact,
          {f,1769},
          [{tr,{x,0},
               {t_union,{t_atom,[ok]},none,none,none,{t_bitstring,256,true}}},
           {literal,<<>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1769}.
    {badmatch,{x,0}}.
  {label,1770}.
    {line,[{location,"bs_match_r25_SUITE.erl",3213}]}.
    {badmatch,{x,0}}.


{function, do_otp_19019, 1, 1772}.
  {label,1771}.
    {line,[{location,"bs_match_r25_SUITE.erl",3218}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,do_otp_19019},1}.
  {label,1772}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1775},1,[{x,0}],{x,1}}.
    {test,bs_test_tail2,{f,1773},[{x,1},8]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1773}.
    {allocate,2,2}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{x,1},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {'try',{y,1},{f,1774}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{scope,[6]},{location,"bs_match_r25_SUITE.erl",3225}]}.
    {call,2,{f,1784}}. % '-do_otp_19019/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {try_end,{y,1}}.
    {deallocate,2}.
    return.
  {label,1774}.
    {try_case,{y,1}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.
  {label,1775}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {'try',{y,1},{f,1776}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {call,2,{f,1784}}. % '-do_otp_19019/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {try_end,{y,1}}.
    {deallocate,2}.
    return.
  {label,1776}.
    {try_case,{y,1}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.


{function, id, 1, 1778}.
  {label,1777}.
    {line,[{location,"bs_match_r25_SUITE.erl",3233}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,id},1}.
  {label,1778}.
    return.


{function, module_info, 0, 1780}.
  {label,1779}.
    {line,[]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,module_info},0}.
  {label,1780}.
    {move,{atom,bs_match_r25_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 1782}.
  {label,1781}.
    {line,[]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,module_info},1}.
  {label,1782}.
    {move,{x,0},{x,1}}.
    {move,{atom,bs_match_r25_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-do_otp_19019/1-lbc$^0/2-0-', 2, 1784}.
  {label,1783}.
    {line,[{location,"bs_match_r25_SUITE.erl",3225}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-do_otp_19019/1-lbc$^0/2-0-'},
               2}.
  {label,1784}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {test,bs_start_match3,{f,1785},2,[{x,0}],{x,2}}.
    {move,{x,1},{x,0}}.
    return.
  {label,1785}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-binary_aliases/1-fun-20-', 1, 1787}.
  {label,1786}.
    {line,[{location,"bs_match_r25_SUITE.erl",2950}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-binary_aliases/1-fun-20-'},1}.
  {label,1787}.
    {test,is_eq_exact,{f,1788},[{x,0},{literal,<<>>}]}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_test_tail2,{f,1788},[{x,0},0]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1788}.
    {move,{atom,error},{x,0}}.
    return.


{function, '-binary_aliases/1-fun-19-', 1, 1790}.
  {label,1789}.
    {line,[{location,"bs_match_r25_SUITE.erl",2943}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-binary_aliases/1-fun-19-'},1}.
  {label,1790}.
    {test,is_eq_exact,{f,1789},[{x,0},{literal,[<<>>]}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, '-binary_aliases/1-fun-18-', 1, 1792}.
  {label,1791}.
    {line,[{location,"bs_match_r25_SUITE.erl",2936}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-binary_aliases/1-fun-18-'},1}.
  {label,1792}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1794},1,[{x,0}],{x,1}}.
    {test,bs_test_tail2,{f,1793},[{x,1},8]}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_r25_SUITE.erl",2937}]}.
    {badmatch,{x,0}}.
  {label,1793}.
    {bs_get_tail,{x,1},{x,0},2}.
    {badmatch,{x,0}}.
  {label,1794}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-17-', 1, 1796}.
  {label,1795}.
    {line,[{location,"bs_match_r25_SUITE.erl",2924}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-binary_aliases/1-fun-17-'},1}.
  {label,1796}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1797},1,[{x,0}],{x,0}}.
    {test,bs_test_tail2,{f,1797},[{x,0},8]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1797}.
    {move,{atom,error},{x,0}}.
    return.


{function, '-binary_aliases/1-fun-16-', 1, 1799}.
  {label,1798}.
    {line,[{location,"bs_match_r25_SUITE.erl",2919}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-binary_aliases/1-fun-16-'},1}.
  {label,1799}.
    {test,is_map,{f,1798},[{x,0}]}.
    {get_map_elements,{f,1798},{tr,{x,0},{t_map,any,any}},{list,[nil,{x,1}]}}.
    {test,bs_start_match3,{f,1798},2,[{x,1}],{x,1}}.
    {test,bs_test_tail2,{f,1798},[{x,1},8]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, '-binary_aliases/1-fun-15-', 1, 1801}.
  {label,1800}.
    {line,[{location,"bs_match_r25_SUITE.erl",2910}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-binary_aliases/1-fun-15-'},1}.
  {label,1801}.
    {allocate,0,1}.
    {line,[{location,"bs_match_r25_SUITE.erl",2911}]}.
    {call,1,{f,1778}}. % id/1
    {test,is_nonempty_list,{f,1802},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_tuple,{f,1802},[{x,1}]}.
    {test,test_arity,{f,1802},[{x,1},2]}.
    {test,is_nil,{f,1802},[{x,2}]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,bs_start_match3,{f,1802},3,[{x,2}],{x,2}}.
    {test,bs_skip_bits2,
          {f,1802},
          [{x,2},
           {x,1},
           1,
           {field_flags,[{anno,[2911,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_test_tail2,{f,1802},[{x,2},0]}.
    {move,{x,1},{x,0}}.
    {deallocate,0}.
    return.
  {label,1802}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-14-', 1, 1804}.
  {label,1803}.
    {line,[{location,"bs_match_r25_SUITE.erl",2901}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-binary_aliases/1-fun-14-'},1}.
  {label,1804}.
    {allocate,0,1}.
    {line,[{location,"bs_match_r25_SUITE.erl",2902}]}.
    {call,1,{f,1778}}. % id/1
    {test,is_tuple,{f,1805},[{x,0}]}.
    {test,test_arity,{f,1805},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {test,bs_start_match3,{f,1805},3,[{x,1}],{x,1}}.
    {test,bs_skip_bits2,
          {f,1805},
          [{x,1},
           {x,2},
           1,
           {field_flags,[{anno,[2902,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_test_tail2,{f,1805},[{x,1},0]}.
    {move,{x,2},{x,0}}.
    {deallocate,0}.
    return.
  {label,1805}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-13-', 1, 1807}.
  {label,1806}.
    {line,[{location,"bs_match_r25_SUITE.erl",2892}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-binary_aliases/1-fun-13-'},1}.
  {label,1807}.
    {allocate,0,1}.
    {line,[{location,"bs_match_r25_SUITE.erl",2893}]}.
    {call,1,{f,1778}}. % id/1
    {test,is_nonempty_list,{f,1808},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,bs_start_match3,{f,1808},3,[{x,1}],{x,1}}.
    {test,bs_skip_bits2,
          {f,1808},
          [{x,1},
           {x,2},
           1,
           {field_flags,[{anno,[2893,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_test_tail2,{f,1808},[{x,1},0]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1808}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-12-', 1, 1810}.
  {label,1809}.
    {line,[{location,"bs_match_r25_SUITE.erl",2884}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-binary_aliases/1-fun-12-'},1}.
  {label,1810}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1813},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_integer2,
          {f,1812},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2885,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_set_position,{x,1},{x,0}}.
    {test,bs_skip_bits2,
          {f,1811},
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[2885,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,1811},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[2885,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1811},[{x,1},0]}.
    {bs_set_position,{x,1},{x,0}}.
    {test,bs_skip_bits2,
          {f,1811},
          [{x,1},
           {integer,8},
           1,
           {field_flags,[{anno,[2885,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_integer2,
          {f,1811},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[2885,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,1811},[{x,1},0]}.
    {test_heap,4,5}.
    {put_tuple2,{x,0},{list,[{x,2},{x,4},{x,3}]}}.
    return.
  {label,1811}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_r25_SUITE.erl",2885}]}.
    {badmatch,{x,0}}.
  {label,1812}.
    {bs_get_tail,{x,1},{x,0},2}.
    {badmatch,{x,0}}.
  {label,1813}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-11-', 1, 1815}.
  {label,1814}.
    {line,[{location,"bs_match_r25_SUITE.erl",2880}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-binary_aliases/1-fun-11-'},1}.
  {label,1815}.
    {test,is_map,{f,1814},[{x,0}]}.
    {get_map_elements,{f,1814},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{atom,key},{x,1}]}}.
    {test,bs_start_match3,{f,1814},2,[{x,1}],{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {test,bs_get_integer2,
          {f,1814},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2880,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1814},[{x,1},0]}.
    {bs_set_position,{x,1},{x,2}}.
    {test,bs_get_integer2,
          {f,1814},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2880,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1814},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,3},{x,2}]}}.
    return.


{function, '-binary_aliases/1-fun-10-', 1, 1817}.
  {label,1816}.
    {line,[{location,"bs_match_r25_SUITE.erl",2872}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-binary_aliases/1-fun-10-'},1}.
  {label,1817}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1819},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_integer2,
          {f,1818},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2873,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1818},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2873,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,1818},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2873,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_integer2,
          {f,1818},
          5,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2873,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_test_tail2,{f,1818},[{x,1},0]}.
    {bs_set_position,{x,1},{x,0}}.
    {test,bs_get_integer2,
          {f,1818},
          6,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,16},
           1,
           {field_flags,[{anno,[2873,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,bs_get_integer2,
          {f,1818},
          7,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,16},
           1,
           {field_flags,[{anno,[2873,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,7}}.
    {test,bs_test_tail2,{f,1818},[{x,1},0]}.
    {bs_set_position,{x,1},{x,0}}.
    {test,bs_get_binary2,
          {f,1818},
          8,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2873,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,8}}.
    {test,bs_get_binary2,
          {f,1818},
          9,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,24},
           1,
           {field_flags,[{anno,[2873,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,9}}.
    {test,bs_test_tail2,{f,1818},[{x,1},0]}.
    {test_heap,9,10}.
    {put_tuple2,{x,0},
                {list,[{x,8},{x,9},{x,6},{x,7},{x,2},{x,3},{x,4},{x,5}]}}.
    return.
  {label,1818}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_r25_SUITE.erl",2873}]}.
    {badmatch,{x,0}}.
  {label,1819}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-9-', 1, 1821}.
  {label,1820}.
    {line,[{location,"bs_match_r25_SUITE.erl",2866}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-binary_aliases/1-fun-9-'},1}.
  {label,1821}.
    {test,is_eq_exact,{f,1822},[{x,0},{literal,<<>>}]}.
    return.
  {label,1822}.
    {line,[{location,"bs_match_r25_SUITE.erl",2867}]}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-8-', 1, 1824}.
  {label,1823}.
    {line,[{location,"bs_match_r25_SUITE.erl",2860}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-binary_aliases/1-fun-8-'},1}.
  {label,1824}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1826},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_integer2,
          {f,1825},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2861,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1825},[{x,1},0]}.
    {bs_set_position,{x,1},{x,0}}.
    {test,bs_get_integer2,
          {f,1825},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2861,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1825},[{x,1},0]}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},4}.
    {test_heap,7,4}.
    {put_tuple2,{x,0},{list,[{x,3},{x,2},{x,0},{x,0},{x,0},{x,0}]}}.
    return.
  {label,1825}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_r25_SUITE.erl",2861}]}.
    {badmatch,{x,0}}.
  {label,1826}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-7-', 1, 1828}.
  {label,1827}.
    {line,[{location,"bs_match_r25_SUITE.erl",2854}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-binary_aliases/1-fun-7-'},1}.
  {label,1828}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1830},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_integer2,
          {f,1829},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2855,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1829},[{x,1},0]}.
    {bs_set_position,{x,1},{x,0}}.
    {test,bs_get_integer2,
          {f,1829},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2855,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1829},[{x,1},0]}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},4}.
    {test_heap,5,4}.
    {put_tuple2,{x,0},{list,[{x,3},{x,2},{x,0},{x,0}]}}.
    return.
  {label,1829}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_r25_SUITE.erl",2855}]}.
    {badmatch,{x,0}}.
  {label,1830}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-6-', 1, 1832}.
  {label,1831}.
    {line,[{location,"bs_match_r25_SUITE.erl",2847}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-binary_aliases/1-fun-6-'},1}.
  {label,1832}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1834},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_integer2,
          {f,1833},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2848,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1833},[{x,1},0]}.
    {bs_set_position,{x,1},{x,0}}.
    {test,bs_get_integer2,
          {f,1833},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,4},
           1,
           {field_flags,[{anno,[2848,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,1833},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,4},
           1,
           {field_flags,[{anno,[2848,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,1833},[{x,1},0]}.
    {test,is_eq_exact,
          {f,1833},
          [{tr,{x,4},{t_integer,{0,15}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {bs_set_position,{x,1},{x,0}}.
    {test,bs_get_integer2,
          {f,1833},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2848,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,1833},[{x,1},0]}.
    {test,is_eq_exact,
          {f,1833},
          [{tr,{x,4},{t_integer,{0,255}}},{tr,{x,3},{t_integer,{0,15}}}]}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},4}.
    {test_heap,4,4}.
    {put_tuple2,{x,0},{list,[{x,3},{x,2},{x,0}]}}.
    return.
  {label,1833}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_r25_SUITE.erl",2848}]}.
    {badmatch,{x,0}}.
  {label,1834}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-5-', 2, 1836}.
  {label,1835}.
    {line,[{location,"bs_match_r25_SUITE.erl",2840}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-binary_aliases/1-fun-5-'},2}.
  {label,1836}.
    {line,[{location,"bs_match_r25_SUITE.erl",2841}]}.
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
          {f,1837},
          2,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[2841,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1837},[{x,1},0]}.
    {move,{x,2},{x,0}}.
    return.
  {label,1837}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-4-', 1, 1839}.
  {label,1838}.
    {line,[{location,"bs_match_r25_SUITE.erl",2834}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-binary_aliases/1-fun-4-'},1}.
  {label,1839}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1841},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_integer2,
          {f,1840},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2835,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1840},[{x,1},0]}.
    {bs_set_position,{x,1},{x,0}}.
    {test,bs_get_integer2,
          {f,1840},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2835,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1840},[{x,1},0]}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},4}.
    {test_heap,4,4}.
    {put_tuple2,{x,0},{list,[{x,3},{x,2},{x,0}]}}.
    return.
  {label,1840}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_r25_SUITE.erl",2835}]}.
    {badmatch,{x,0}}.
  {label,1841}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-3-', 1, 1843}.
  {label,1842}.
    {line,[{location,"bs_match_r25_SUITE.erl",2827}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-binary_aliases/1-fun-3-'},1}.
  {label,1843}.
    {line,[{location,"bs_match_r25_SUITE.erl",2830}]}.
    {call_ext_only,1,{extfunc,lists,sum,1}}.


{function, '-binary_aliases/1-fun-2-', 1, 1845}.
  {label,1844}.
    {line,[{location,"bs_match_r25_SUITE.erl",2823}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-binary_aliases/1-fun-2-'},1}.
  {label,1845}.
    {test,is_tagged_tuple,{f,1844},[{x,0},4,{atom,ba_foo}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,bs_start_match3,{f,1844},2,[{x,1}],{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {test,bs_get_integer2,
          {f,1844},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2823,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1844},[{x,1},0]}.
    {bs_set_position,{x,1},{x,2}}.
    {test,bs_get_integer2,
          {f,1844},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,4},
           1,
           {field_flags,[{anno,[2823,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1844},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,4},
           1,
           {field_flags,[{anno,[2823,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,1844},[{x,1},0]}.
    {test_heap,4,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,2},{x,4}]}}.
    return.


{function, '-binary_aliases/1-fun-1-', 1, 1847}.
  {label,1846}.
    {line,[{location,"bs_match_r25_SUITE.erl",2819}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-binary_aliases/1-fun-1-'},1}.
  {label,1847}.
    {test,is_tagged_tuple,{f,1846},[{x,0},4,{atom,ba_foo}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,bs_start_match3,{f,1846},2,[{x,1}],{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {test,bs_get_integer2,
          {f,1846},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2819,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1846},[{x,1},0]}.
    {bs_set_position,{x,1},{x,2}}.
    {test,bs_get_integer2,
          {f,1846},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2819,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1846},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,3},{x,2}]}}.
    return.


{function, '-binary_aliases/1-fun-0-', 1, 1849}.
  {label,1848}.
    {line,[{location,"bs_match_r25_SUITE.erl",2815}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-binary_aliases/1-fun-0-'},1}.
  {label,1849}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1848},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_integer2,
          {f,1850},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2815,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1850},[{x,1},0]}.
    {bs_set_position,{x,1},{x,0}}.
    {test,bs_get_integer2,
          {f,1850},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2815,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1850},[{x,1},0]}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,1850}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,1848}}.


{function, '-many_clauses/1-lc$^1/1-1-', 1, 1852}.
  {label,1851}.
    {line,[{location,"bs_match_r25_SUITE.erl",2683}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-many_clauses/1-lc$^1/1-1-'},
               1}.
  {label,1852}.
    {test,is_nonempty_list,{f,1853},[{x,0}]}.
    {allocate,3,1}.
    {init_yregs,{list,[{y,0}]}}.
    {get_list,{x,0},{y,2},{y,1}}.
    {move,{y,2},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2678}]}.
    {call_ext,1,{extfunc,erlang,phash2,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2680}]}.
    {bs_create_bin,{f,0},
                   0,1,16,
                   {x,1},
                   {list,[{atom,integer},1,1,nil,{x,0},{integer,16}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,2}}.
    {test,bs_get_integer2,
          {f,1856},
          3,
          [{tr,{x,2},{t_bs_context,16}},
           {integer,16},
           1,
           {field_flags,[{anno,[2680,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1856},[{x,2},0]}.
    {line,[{location,"bs_match_r25_SUITE.erl",2681}]}.
    {gc_bif,'+',{f,0},4,[{y,2},{tr,{x,3},{t_integer,{0,65535}}}],{y,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2682}]}.
    {bs_create_bin,{f,0},
                   3,1,8,
                   {x,0},
                   {list,[{atom,string},
                          0,8,nil,
                          {string,<<16>>},
                          {integer,1},
                          {atom,integer},
                          2,1,nil,
                          {x,0},
                          {integer,16}]}}.
    {put_tuple2,{x,0},{list,[{y,2},{x,0}]}}.
    {move,{y,0},{y,2}}.
    {trim,1,2}.
    {call_ext,1,{extfunc,bs_match_r25_SUITE_many_clauses,f,1}}.
    {test,is_eq_exact,{f,1855},[{x,0},{tr,{y,1},{t_number,any}}]}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,1852},2}. % '-many_clauses/1-lc$^1/1-1-'/1
  {label,1853}.
    {test,is_nil,{f,1854},[{x,0}]}.
    return.
  {label,1854}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2683}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,1855}.
    {line,[{location,"bs_match_r25_SUITE.erl",2682}]}.
    {badmatch,{x,0}}.
  {label,1856}.
    {line,[{location,"bs_match_r25_SUITE.erl",2680}]}.
    {badmatch,{x,1}}.


{function, '-many_clauses/1-lc$^0/1-0-', 1, 1858}.
  {label,1857}.
    {line,[{location,"bs_match_r25_SUITE.erl",2667}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-many_clauses/1-lc$^0/1-0-'},
               1}.
  {label,1858}.
    {test,is_nonempty_list,{f,1859},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{x,0},{y,0}}.
    {call,1,{f,1493}}. % one_clause/1
    {swap,{y,0},{x,0}}.
    {call,1,{f,1858}}. % '-many_clauses/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1859}.
    {test,is_nil,{f,1860},[{x,0}]}.
    return.
  {label,1860}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-binary_match_to_asm/1-lc$^0/1-0-', 1, 1862}.
  {label,1861}.
    {line,[{location,"bs_match_r25_SUITE.erl",2646}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-binary_match_to_asm/1-lc$^0/1-0-'},
               1}.
  {label,1862}.
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_list,
         {t_tuple,2,true,
          #{1 =>
             {t_tuple,3,true,
              #{1 => {t_atom,[bin]},
                2 => {t_integer,{2553,2631}},
                3 => {t_list,{t_tuple,0,false,#{}},nil}}}}},
         nil}}]}}.
    {test,is_nonempty_list,{f,1863},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,1,{f,1862}}. % '-binary_match_to_asm/1-lc$^0/1-0-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,5,true,
                         #{1 => {t_atom,[clause]},
                           2 => {t_integer,{2553,2631}},
                           3 =>
                               {t_cons,
                                   {t_tuple,3,true,
                                       #{1 => {t_atom,[bin]},
                                         2 => {t_integer,{2553,2631}},
                                         3 => {t_list,any,any}}},
                                   nil},
                           4 => nil,
                           5 =>
                               {t_cons,
                                   {t_tuple,3,true,
                                       #{1 => {t_atom,[integer]},
                                         2 => {t_integer,{2553,2631}}}},
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
  {label,1863}.
    return.


{function, '-expand_and_squeeze/1-fun-0-', 1, 1865}.
  {label,1864}.
    {line,[{location,"bs_match_r25_SUITE.erl",2588}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-expand_and_squeeze/1-fun-0-'},
               1}.
  {label,1865}.
    {test,is_tagged_tuple,{f,1866},[{x,0},4,{atom,bs_match}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1866},[{x,1},2,{atom,f}]}.
    {get_tuple_element,{x,0},3,{x,0}}.
    {test,is_tagged_tuple,{f,1866},[{x,0},2,{atom,commands}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_nonempty_list,{f,1866},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_eq_exact,{f,1866},[{x,1},{literal,{ensure_at_least,16,1}}]}.
    {test,is_nonempty_list,{f,1866},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tagged_tuple,{f,1866},[{x,1},6,{atom,integer}]}.
    {get_tuple_element,{x,1},3,{x,2}}.
    {test,is_eq_exact,{f,1866},[{x,2},{integer,16}]}.
    {get_tuple_element,{x,1},4,{x,1}}.
    {test,is_eq_exact,{f,1866},[{x,1},{integer,1}]}.
    {bif,'=:=',{f,0},[{x,0},nil],{x,0}}.
    return.
  {label,1866}.
    {move,{atom,false},{x,0}}.
    return.


{function, '-em_2/1-lbc$^0/2-0-', 2, 1868}.
  {label,1867}.
    {line,[{location,"bs_match_r25_SUITE.erl",2524}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-em_2/1-lbc$^0/2-0-'},2}.
  {label,1868}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,16,true}}]}}.
    {test,bs_start_match3,{f,1870},2,[{x,0}],{x,2}}.
    {test,bs_skip_bits2,
          {f,1869},
          [{x,2},
           {integer,0},
           1,
           {field_flags,[{anno,[2524,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_integer2,
          {f,1869},
          3,
          [{tr,{x,2},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[2524,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",2525}]}.
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
    {call_only,2,{f,1868}}. % '-em_2/1-lbc$^0/2-0-'/2
  {label,1869}.
    {move,{x,1},{x,0}}.
    return.
  {label,1870}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bspu_1/1-lc$^0/1-0-', 1, 1872}.
  {label,1871}.
    {line,[{location,"bs_match_r25_SUITE.erl",2491}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-bspu_1/1-lc$^0/1-0-'},1}.
  {label,1872}.
    {'%',{var_info,{x,0},[{type,{t_bs_context,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,resume},1,{x,0},{x,0}}.
    {test,bs_get_binary2,
          {f,1873},
          1,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,5},
           8,
           {field_flags,[{anno,[2491,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,1872}}. % '-bspu_1/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1873}.
    {move,nil,{x,0}}.
    return.


{function, '-hangs_forever/1-fun-0-', 1, 1875}.
  {label,1874}.
    {line,[{location,"bs_match_r25_SUITE.erl",2474}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-hangs_forever/1-fun-0-'},1}.
  {label,1875}.
    {call_only,1,{f,1432}}. % hangs_forever_1/1


{function, '-beam_bsm/1-fun-0-', 1, 1877}.
  {label,1876}.
    {line,[{location,"bs_match_r25_SUITE.erl",2147}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-beam_bsm/1-fun-0-'},1}.
  {label,1877}.
    {gc_bif,'*',{f,0},1,[{x,0},{integer,2}],{x,0}}.
    return.


{function, '-num_slots_different/1-lc$^0/1-0-', 1, 1879}.
  {label,1878}.
    {line,[{location,"bs_match_r25_SUITE.erl",2110}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-num_slots_different/1-lc$^0/1-0-'},
               1}.
  {label,1879}.
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
    {test,is_nonempty_list,{f,1880},[{x,0}]}.
    {allocate,2,1}.
    {get_list,{x,0},{x,0},{y,1}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {get_tuple_element,{x,0},2,{x,3}}.
    {get_tuple_element,{x,0},3,{y,0}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {move,{x,3},{x,2}}.
    {call,3,{f,1217}}. % lgettext/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[ok]},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,
          {f,1881},
          [{tr,{x,1},{t_bitstring,8,false}},{tr,{y,0},{t_bitstring,8,false}}]}.
    {move,{y,1},{x,0}}.
    {call_last,1,{f,1879},2}. % '-num_slots_different/1-lc$^0/1-0-'/1
  {label,1880}.
    return.
  {label,1881}.
    {badmatch,{x,0}}.


{function, '-constant_propagation_c/0-fun-0-', 1, 1883}.
  {label,1882}.
    {line,[{location,"bs_match_r25_SUITE.erl",2046}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-constant_propagation_c/0-fun-0-'},
               1}.
  {label,1883}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1885},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_integer2,
          {f,1884},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,16},
           1,
           {field_flags,[{anno,[2047,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1884},[{x,1},0]}.
    {move,{x,2},{x,0}}.
    return.
  {label,1884}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_r25_SUITE.erl",2047}]}.
    {badmatch,{x,0}}.
  {label,1885}.
    {badmatch,{x,0}}.


{function, '-bad_literals/1-lc$^3/1-3-', 2, 1887}.
  {label,1886}.
    {line,[{location,"bs_match_r25_SUITE.erl",1930}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-bad_literals/1-lc$^3/1-3-'},
               2}.
  {label,1887}.
    {'%',{var_info,{x,1},[{type,{t_cons,any,nil}}]}}.
    {test,is_nonempty_list,{f,1888},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,2}}.
    {move,{literal,[0,1,2,3]},{x,0}}.
    {call_only,4,{f,1891}}. % '-bad_literals/1-lc$^4/1-4-'/4
  {label,1888}.
    {test,is_nil,{f,1889},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,1889}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bad_literals/1-lc$^4/1-4-', 4, 1891}.
  {label,1890}.
    {line,[{location,"bs_match_r25_SUITE.erl",1931}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-bad_literals/1-lc$^4/1-4-'},
               4}.
  {label,1891}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_cons,any,nil}}]}}.
    {test,is_nonempty_list,{f,1892},[{x,0}]}.
    {allocate,4,4}.
    {move,{x,3},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,1},{y,3}}.
    {get_list,{x,0},{x,1},{y,0}}.
    {move,{x,3},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1930}]}.
    {call,2,{f,1144}}. % signed_lit_match/2
    {move,{y,0},{x,4}}.
    {move,{y,2},{x,2}}.
    {move,{y,3},{x,1}}.
    {move,{x,0},{y,3}}.
    {move,{y,1},{x,3}}.
    {trim,3,1}.
    {move,{x,4},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1931}]}.
    {call,4,{f,1891}}. % '-bad_literals/1-lc$^4/1-4-'/4
    {'%',{var_info,{x,0},[{type,{t_cons,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1892}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,1887}}. % '-bad_literals/1-lc$^3/1-3-'/2


{function, '-bad_literals/1-lc$^1/1-1-', 2, 1894}.
  {label,1893}.
    {line,[{location,"bs_match_r25_SUITE.erl",1932}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-bad_literals/1-lc$^1/1-1-'},
               2}.
  {label,1894}.
    {'%',{var_info,{x,1},[{type,{t_cons,any,nil}}]}}.
    {test,is_nonempty_list,{f,1895},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,2}}.
    {move,{literal,[0,1,2]},{x,0}}.
    {call_only,4,{f,1898}}. % '-bad_literals/1-lc$^2/1-2-'/4
  {label,1895}.
    {test,is_nil,{f,1896},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,1896}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bad_literals/1-lc$^2/1-2-', 4, 1898}.
  {label,1897}.
    {line,[{location,"bs_match_r25_SUITE.erl",1933}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-bad_literals/1-lc$^2/1-2-'},
               4}.
  {label,1898}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,2}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_cons,any,nil}}]}}.
    {test,is_nonempty_list,{f,1899},[{x,0}]}.
    {allocate,4,4}.
    {move,{x,3},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,1},{y,3}}.
    {get_list,{x,0},{x,1},{y,0}}.
    {move,{x,3},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1932}]}.
    {call,2,{f,1147}}. % unsigned_lit_match/2
    {move,{y,0},{x,4}}.
    {move,{y,2},{x,2}}.
    {move,{y,3},{x,1}}.
    {move,{x,0},{y,3}}.
    {move,{y,1},{x,3}}.
    {trim,3,1}.
    {move,{x,4},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1933}]}.
    {call,4,{f,1898}}. % '-bad_literals/1-lc$^2/1-2-'/4
    {'%',{var_info,{x,0},[{type,{t_cons,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1899}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,1894}}. % '-bad_literals/1-lc$^1/1-1-'/2


{function, '-bad_literals/1-lc$^0/1-0-', 1, 1901}.
  {label,1900}.
    {line,[{location,"bs_match_r25_SUITE.erl",1935}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-bad_literals/1-lc$^0/1-0-'},
               1}.
  {label,1901}.
    {test,is_nonempty_list,{f,1902},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{x,0},{y,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1934}]}.
    {call,1,{f,1150}}. % unicode_match/1
    {swap,{y,0},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",1935}]}.
    {call,1,{f,1901}}. % '-bad_literals/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1902}.
    {test,is_nil,{f,1903},[{x,0}]}.
    return.
  {label,1903}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-haystack_2/1-lc$^0/1-0-', 2, 1905}.
  {label,1904}.
    {line,[{location,"bs_match_r25_SUITE.erl",1546}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-haystack_2/1-lc$^0/1-0-'},2}.
  {label,1905}.
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
    {test,is_nonempty_list,{f,1906},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {get_tuple_element,{x,2},0,{x,3}}.
    {get_tuple_element,{x,2},1,{x,2}}.
    {bs_start_match4,{atom,no_fail},4,{x,1},{x,4}}.
    {test,bs_skip_bits2,
          {f,1907},
          [{x,4},
           {x,3},
           8,
           {field_flags,[{anno,[1544,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,1907},
          5,
          [{tr,{x,4},{t_bs_context,8}},
           {tr,{x,2},{t_integer,{10,20}}},
           8,
           {field_flags,[{anno,[1544,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {call,2,{f,1905}}. % '-haystack_2/1-lc$^0/1-0-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1906}.
    return.
  {label,1907}.
    {line,[{location,"bs_match_r25_SUITE.erl",1544}]}.
    {badmatch,{x,1}}.


{function, '-haystack_1/1-lc$^0/1-0-', 2, 1909}.
  {label,1908}.
    {line,[{location,"bs_match_r25_SUITE.erl",1537}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-haystack_1/1-lc$^0/1-0-'},2}.
  {label,1909}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{10,10}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,16,false}}]}}.
    {test,is_nonempty_list,{f,1910},[{x,0}]}.
    {get_tl,{x,0},{x,0}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,2}}.
    {test,bs_test_tail2,{f,1911},[{x,2},80]}.
    {call_only,2,{f,1909}}. % '-haystack_1/1-lc$^0/1-0-'/2
  {label,1910}.
    return.
  {label,1911}.
    {line,[{location,"bs_match_r25_SUITE.erl",1535}]}.
    {badmatch,{x,1}}.


{function, '-bad_size_2/1-lc$^0/1-0-', 1, 1913}.
  {label,1912}.
    {line,[{location,"bs_match_r25_SUITE.erl",1517}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-bad_size_2/1-lc$^0/1-0-'},1}.
  {label,1913}.
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
    {test,is_nonempty_list,{f,1914},[{x,0}]}.
    {get_tl,{x,0},{x,0}}.
    {call_only,1,{f,1913}}. % '-bad_size_2/1-lc$^0/1-0-'/1
  {label,1914}.
    {test,is_nil,
          {f,1915},
          [{tr,{x,0},{t_union,{t_atom,[no_list]},nil,none,none,none}}]}.
    return.
  {label,1915}.
    {move,{literal,{bad_generator,no_list}},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bad_size/1-lbc$^0/2-0-', 2, 1917}.
  {label,1916}.
    {line,[{location,"bs_match_r25_SUITE.erl",1451}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-bad_size/1-lbc$^0/2-0-'},2}.
  {label,1917}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,256,true}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {move,{x,1},{x,0}}.
    return.


{function, '-zero_width/1-fun-0-', 1, 1919}.
  {label,1918}.
    {line,[{location,"bs_match_r25_SUITE.erl",1397}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-zero_width/1-fun-0-'},1}.
  {label,1919}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1921},1,[{x,0}],{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {test,bs_get_integer2,
          {f,1920},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[1397,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,1920},[{tr,{x,2},{t_integer,{0,255}}},{integer,42}]}.
    {test,bs_test_tail2,{f,1920},[{x,0},0]}.
    {move,{atom,star},{x,0}}.
    return.
  {label,1920}.
    {bs_set_position,{x,0},{x,1}}.
    {test,bs_test_tail2,{f,1921},[{x,0},0]}.
    {move,{integer,0},{x,0}}.
    return.
  {label,1921}.
    {move,{atom,no_match},{x,0}}.
    return.


{function, '-coverage_beam_ssa_codegen/1-lbc$^0/2-0-', 2, 1923}.
  {label,1922}.
    {line,[{location,"bs_match_r25_SUITE.erl",1020}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-coverage_beam_ssa_codegen/1-lbc$^0/2-0-'},
               2}.
  {label,1923}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,1925},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1020,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,1924},[{tr,{x,2},{t_integer,{0,255}}},{integer,2}]}.
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
    {call_only,2,{f,1923}}. % '-coverage_beam_ssa_codegen/1-lbc$^0/2-0-'/2
  {label,1924}.
    {call_only,2,{f,1923}}. % '-coverage_beam_ssa_codegen/1-lbc$^0/2-0-'/2
  {label,1925}.
    {move,{atom,ok},{x,0}}.
    return.


{function, '-coverage_trim_4/1-lbc$^0/2-0-', 2, 1927}.
  {label,1926}.
    {line,[{location,"bs_match_r25_SUITE.erl",1003}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-coverage_trim_4/1-lbc$^0/2-0-'},
               2}.
  {label,1927}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,16,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,1928},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[1003,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
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
    {call_only,2,{f,1927}}. % '-coverage_trim_4/1-lbc$^0/2-0-'/2
  {label,1928}.
    {move,{atom,ok},{x,0}}.
    return.


{function, '-do_coverage_bin_to_term_list/1-lbc$^0/2-0-', 2, 1930}.
  {label,1929}.
    {line,[{location,"bs_match_r25_SUITE.erl",917}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-do_coverage_bin_to_term_list/1-lbc$^0/2-0-'},
               2}.
  {label,1930}.
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,1931},[{x,0}]}.
    {allocate,2,2}.
    {move,{x,1},{y,1}}.
    {get_list,{x,0},{x,0},{y,0}}.
    {call_ext,1,{extfunc,erlang,term_to_binary,1}}.
    {line,[{location,"bs_match_r25_SUITE.erl",918}]}.
    {gc_bif,byte_size,{f,0},1,[{x,0}],{x,1}}.
    {bs_create_bin,{f,0},
                   0,2,8,
                   {x,0},
                   {list,[{atom,integer},
                          1,1,nil,
                          {tr,{x,1},{t_integer,{0,288230376151711743}}},
                          {integer,32},
                          {atom,binary},
                          2,8,nil,
                          {tr,{x,0},{t_bitstring,1,false}},
                          {atom,all}]}}.
    {line,[{location,"bs_match_r25_SUITE.erl",917}]}.
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
    {call_last,2,{f,1930},2}. % '-do_coverage_bin_to_term_list/1-lbc$^0/2-0-'/2
  {label,1931}.
    {move,{x,1},{x,0}}.
    return.


{function, '-coverage_bc/2-lbc$^0/2-0-', 2, 1933}.
  {label,1932}.
    {line,[{location,"bs_match_r25_SUITE.erl",896}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-coverage_bc/2-lbc$^0/2-0-'},
               2}.
  {label,1933}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,255}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,1934},[{x,0}]}.
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
    {call_only,2,{f,1933}}. % '-coverage_bc/2-lbc$^0/2-0-'/2
  {label,1934}.
    {move,{x,1},{x,0}}.
    return.


{function, '-coverage/1-fun-2-', 2, 1936}.
  {label,1935}.
    {line,[{location,"bs_match_r25_SUITE.erl",819}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-coverage/1-fun-2-'},2}.
  {label,1936}.
    {line,[{location,"bs_match_r25_SUITE.erl",820}]}.
    {gc_bif,'+',{f,0},2,[{x,1},{x,0}],{x,0}}.
    return.


{function, '-coverage/1-fun-1-', 2, 1938}.
  {label,1937}.
    {line,[{location,"bs_match_r25_SUITE.erl",818}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-coverage/1-fun-1-'},2}.
  {label,1938}.
    {gc_bif,'+',{f,0},2,[{x,1},{x,0}],{x,0}}.
    return.


{function, '-coverage/1-fun-0-', 2, 1940}.
  {label,1939}.
    {line,[{location,"bs_match_r25_SUITE.erl",817}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-coverage/1-fun-0-'},2}.
  {label,1940}.
    {gc_bif,'+',{f,0},2,[{x,1},{x,0}],{x,0}}.
    return.


{function, '-bin_and_float/1-lbc$^0/2-0-', 3, 1942}.
  {label,1941}.
    {line,[{location,"bs_match_r25_SUITE.erl",629}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-bin_and_float/1-lbc$^0/2-0-'},
               3}.
  {label,1942}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {test,bs_get_float2,
          {f,1944},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {x,2},
           63,
           {field_flags,[{anno,[629,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,1943},[{tr,{x,3},{t_float,any}},{float,1.0}]}.
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
    {call_only,3,{f,1942}}. % '-bin_and_float/1-lbc$^0/2-0-'/3
  {label,1943}.
    {call_only,3,{f,1942}}. % '-bin_and_float/1-lbc$^0/2-0-'/3
  {label,1944}.
    {move,{x,1},{x,0}}.
    return.


{function, '-null_fields/1-fun-3-', 0, 1946}.
  {label,1945}.
    {line,[{location,"bs_match_r25_SUITE.erl",300}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-null_fields/1-fun-3-'},0}.
  {label,1946}.
    {move,{atom,tail},{x,0}}.
    return.


{function, '-null_fields/1-fun-1-', 0, 1948}.
  {label,1947}.
    {line,[{location,"bs_match_r25_SUITE.erl",293}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-null_fields/1-fun-1-'},0}.
  {label,1948}.
    {allocate,0,0}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"bs_match_r25_SUITE.erl",294}]}.
    {call,1,{f,1778}}. % id/1
    {move,{literal,<<>>},{x,1}}.
    {bs_start_match4,{atom,no_fail},1,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {test,bs_skip_bits2,
          {f,1949},
          [{x,1},
           {x,0},
           1,
           {field_flags,[{anno,[295,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_test_tail2,{f,1949},[{x,1},0]}.
    {move,{atom,tail},{x,0}}.
    {deallocate,0}.
    return.
  {label,1949}.
    {bs_set_position,{x,1},{x,2}}.
    {test,bs_test_tail2,{f,1950},[{x,1},0]}.
    {move,{atom,empty},{x,0}}.
    {deallocate,0}.
    return.
  {label,1950}.
    {move,{literal,<<>>},{x,0}}.
    {call_last,1,{f,2044},0}. % '-null_fields/1-inlined-0-'/1


{function, '-otp_5269/1-fun-15-', 0, 1952}.
  {label,1951}.
    {line,[{location,"bs_match_r25_SUITE.erl",282}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-otp_5269/1-fun-15-'},0}.
  {label,1952}.
    {move,{literal,<<1,2,3,4>>},{x,0}}.
    {bs_start_match4,{atom,no_fail},0,{x,0},{x,0}}.
    {test,bs_skip_bits2,
          {f,1953},
          [{x,0},
           {integer,1},
           8,
           {field_flags,[{anno,[283,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_integer2,
          {f,1953},
          1,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[283,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_skip_bits2,
          {f,1953},
          [{x,0},
           {x,1},
           8,
           {field_flags,[{anno,[283,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_test_tail2,{f,1953},[{x,0},0]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1953}.
    {move,{literal,<<1,2,3,4>>},{x,0}}.
    {call_only,1,{f,2050}}. % '-otp_5269/1-inlined-6-'/1


{function, '-otp_5269/1-fun-13-', 0, 1955}.
  {label,1954}.
    {line,[{location,"bs_match_r25_SUITE.erl",278}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-otp_5269/1-fun-13-'},0}.
  {label,1955}.
    {move,{literal,[<<0,0,0,1>>,<<0,0,0,2>>,<<3>>]},{x,0}}.
    {call_only,1,{f,1957}}. % '-otp_5269/1-lc$^12/1-5-'/1


{function, '-otp_5269/1-lc$^12/1-5-', 1, 1957}.
  {label,1956}.
    {line,[{location,"bs_match_r25_SUITE.erl",279}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-otp_5269/1-lc$^12/1-5-'},1}.
  {label,1957}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {test,is_nonempty_list,{f,1959},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,1958},
          2,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,32},
           1,
           {field_flags,[{anno,[279,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1958},[{x,1},0]}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {call,1,{f,1957}}. % '-otp_5269/1-lc$^12/1-5-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,4294967295}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1958}.
    {call_only,1,{f,1957}}. % '-otp_5269/1-lc$^12/1-5-'/1
  {label,1959}.
    return.


{function, '-otp_5269/1-fun-11-', 0, 1961}.
  {label,1960}.
    {line,[{location,"bs_match_r25_SUITE.erl",273}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-otp_5269/1-fun-11-'},0}.
  {label,1961}.
    {move,{literal,<<2,65,66,67,68>>},{x,0}}.
    {bs_start_match4,{atom,no_fail},0,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,1962},
          1,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[274,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_get_binary2,
          {f,1962},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {tr,{x,1},{t_integer,{0,255}}},
           8,
           {field_flags,[{anno,[274,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,0},{x,0},3}.
    {test_heap,4,3}.
    {put_tuple2,{x,0},{list,[{x,1},{x,2},{x,0}]}}.
    return.
  {label,1962}.
    {line,[{location,"bs_match_r25_SUITE.erl",274}]}.
    {badmatch,{literal,<<2,65,66,67,68>>}}.


{function, '-otp_5269/1-fun-10-', 0, 1964}.
  {label,1963}.
    {line,[{location,"bs_match_r25_SUITE.erl",271}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-otp_5269/1-fun-10-'},0}.
  {label,1964}.
    {move,{integer,28},{x,0}}.
    return.


{function, '-otp_5269/1-fun-9-', 0, 1966}.
  {label,1965}.
    {line,[{location,"bs_match_r25_SUITE.erl",267}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-otp_5269/1-fun-9-'},0}.
  {label,1966}.
    {move,{literal,[<<16,0,19>>]},{x,0}}.
    {call_only,1,{f,1968}}. % '-otp_5269/1-lc$^7/1-3-'/1


{function, '-otp_5269/1-lc$^7/1-3-', 1, 1968}.
  {label,1967}.
    {line,[{location,"bs_match_r25_SUITE.erl",268}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-otp_5269/1-lc$^7/1-3-'},1}.
  {label,1968}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {test,is_nonempty_list,{f,1970},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,1969},
          2,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[267,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1969},
          3,
          [{tr,{x,1},{t_bs_context,8}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[267,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1969},[{x,1},0]}.
    {line,[{location,"bs_match_r25_SUITE.erl",269}]}.
    {bs_create_bin,{f,0},
                   2,3,8,
                   {x,1},
                   {list,[{atom,integer},
                          1,1,nil,
                          {tr,{x,2},{t_integer,{0,'+inf'}}},
                          {integer,8}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {swap,{x,0},{x,1}}.
    {call_only,2,{f,1972}}. % '-otp_5269/1-lc$^8/1-4-'/2
  {label,1969}.
    {call_only,1,{f,1968}}. % '-otp_5269/1-lc$^7/1-3-'/1
  {label,1970}.
    return.


{function, '-otp_5269/1-lc$^8/1-4-', 2, 1972}.
  {label,1971}.
    {line,[{location,"bs_match_r25_SUITE.erl",269}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-otp_5269/1-lc$^8/1-4-'},2}.
  {label,1972}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {test,is_nonempty_list,{f,1974},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,2}}.
    {test,bs_get_integer2,
          {f,1973},
          3,
          [{tr,{x,2},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[267,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,1973},[{x,2},0]}.
    {allocate,1,4}.
    {move,{x,3},{y,0}}.
    {call,2,{f,1972}}. % '-otp_5269/1-lc$^8/1-4-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,255}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1973}.
    {call_only,2,{f,1972}}. % '-otp_5269/1-lc$^8/1-4-'/2
  {label,1974}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,1968}}. % '-otp_5269/1-lc$^7/1-3-'/1


{function, '-otp_5269/1-fun-6-', 0, 1976}.
  {label,1975}.
    {line,[{location,"bs_match_r25_SUITE.erl",265}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-otp_5269/1-fun-6-'},0}.
  {label,1976}.
    {move,{literal,[<<" ">>]},{x,0}}.
    {call_only,1,{f,1978}}. % '-otp_5269/1-lc$^5/1-2-'/1


{function, '-otp_5269/1-lc$^5/1-2-', 1, 1978}.
  {label,1977}.
    {line,[{location,"bs_match_r25_SUITE.erl",265}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-otp_5269/1-lc$^5/1-2-'},1}.
  {label,1978}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {test,is_nonempty_list,{f,1980},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {test,bs_get_integer2,
          {f,1979},
          2,
          [{tr,{x,1},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[265,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,1979},[{x,1},0]}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {call,1,{f,1978}}. % '-otp_5269/1-lc$^5/1-2-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,255}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1979}.
    {call_only,1,{f,1978}}. % '-otp_5269/1-lc$^5/1-2-'/1
  {label,1980}.
    return.


{function, '-otp_5269/1-fun-4-', 0, 1982}.
  {label,1981}.
    {line,[{location,"bs_match_r25_SUITE.erl",263}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-otp_5269/1-fun-4-'},0}.
  {label,1982}.
    {move,{literal,<<" ">>},{x,0}}.
    {bs_start_match4,{atom,no_fail},0,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,1983},
          1,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[263,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_test_tail2,{f,1983},[{x,0},0]}.
    {move,{x,1},{x,0}}.
    return.
  {label,1983}.
    {move,{literal,<<" ">>},{x,0}}.
    {call_only,1,{f,2048}}. % '-otp_5269/1-inlined-1-'/1


{function, '-otp_5269/1-fun-2-', 0, 1985}.
  {label,1984}.
    {line,[{location,"bs_match_r25_SUITE.erl",261}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-otp_5269/1-fun-2-'},0}.
  {label,1985}.
    {move,{literal,<<16,0,7>>},{x,0}}.
    {bs_start_match4,{atom,no_fail},0,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,1986},
          1,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[261,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_get_integer2,
          {f,1986},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {tr,{x,1},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[261,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_test_tail2,{f,1986},[{x,0},0]}.
    {move,{x,1},{x,0}}.
    return.
  {label,1986}.
    {badmatch,{literal,<<16,0,7>>}}.


{function, '-otp_5269/1-fun-1-', 0, 1988}.
  {label,1987}.
    {line,[{location,"bs_match_r25_SUITE.erl",256}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-otp_5269/1-fun-1-'},0}.
  {label,1988}.
    {move,{literal,<<16,0,7>>},{x,0}}.
    {bs_start_match4,{atom,no_fail},0,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,1989},
          1,
          [{tr,{x,0},{t_bs_context,8}},
           {integer,8},
           1,
           {field_flags,[{anno,[257,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_get_integer2,
          {f,1989},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {tr,{x,1},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[257,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_test_tail2,{f,1989},[{x,0},0]}.
    {move,{x,1},{x,0}}.
    return.
  {label,1989}.
    {move,{literal,<<16,0,7>>},{x,0}}.
    {call_only,1,{f,2046}}. % '-otp_5269/1-inlined-0-'/1


{function, '-size_shadow_6/2-fun-0-', 5, 1991}.
  {label,1990}.
    {line,[{location,"bs_match_r25_SUITE.erl",213}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-size_shadow_6/2-fun-0-'},5}.
  {label,1991}.
    {'%',{var_info,{x,1},[accepts_match_context]}}.
    {'%',{var_info,{x,3},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_atom,[any]},
                                     2 => {t_atom,[term]},
                                     3 => {t_atom,[goes]}}}}]}}.
    {'%',{var_info,{x,4},[{type,{t_integer,{13,13}}}]}}.
    {test,bs_start_match3,{f,1993},3,[{x,1}],{x,3}}.
    {bs_get_position,{x,3},{x,1},4}.
    {test,bs_get_integer2,
          {f,1992},
          4,
          [{tr,{x,3},{t_bs_context,1}},
           {integer,13},
           1,
           {field_flags,[{anno,[213,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,1992},[{x,3},0]}.
    {move,{literal,{any,term,goes}},{x,1}}.
    {move,{x,2},{x,3}}.
    {move,{x,0},{x,2}}.
    {move,{x,4},{x,0}}.
    {call_only,4,{f,47}}. % fum/4
  {label,1992}.
    {bs_set_position,{x,3},{x,1}}.
    {bs_get_tail,{x,3},{x,1},4}.
    {call_only,3,{f,2068}}. % '-size_shadow_6/2-inlined-0-'/3
  {label,1993}.
    {call_only,3,{f,2068}}. % '-size_shadow_6/2-inlined-0-'/3


{function, '-size_shadow_5/2-fun-0-', 5, 1995}.
  {label,1994}.
    {line,[{location,"bs_match_r25_SUITE.erl",210}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-size_shadow_5/2-fun-0-'},5}.
  {label,1995}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {'%',{var_info,{x,3},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_atom,[any]},
                                     2 => {t_atom,[term]},
                                     3 => {t_atom,[goes]}}}}]}}.
    {'%',{var_info,{x,4},[{type,{t_integer,{12,12}}}]}}.
    {test,bs_start_match3,{f,1997},3,[{x,0}],{x,3}}.
    {bs_get_position,{x,3},{x,0},4}.
    {test,bs_get_integer2,
          {f,1996},
          4,
          [{tr,{x,3},{t_bs_context,1}},
           {integer,12},
           1,
           {field_flags,[{anno,[210,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,1996},[{x,3},0]}.
    {move,{x,2},{x,3}}.
    {move,{x,1},{x,2}}.
    {move,{literal,{any,term,goes}},{x,1}}.
    {move,{x,4},{x,0}}.
    {call_only,4,{f,47}}. % fum/4
  {label,1996}.
    {bs_set_position,{x,3},{x,0}}.
    {bs_get_tail,{x,3},{x,0},4}.
    {call_only,3,{f,2066}}. % '-size_shadow_5/2-inlined-0-'/3
  {label,1997}.
    {call_only,3,{f,2066}}. % '-size_shadow_5/2-inlined-0-'/3


{function, '-size_shadow_4/1-fun-1-', 2, 1999}.
  {label,1998}.
    {line,[{location,"bs_match_r25_SUITE.erl",201}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-size_shadow_4/1-fun-1-'},2}.
  {label,1999}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{8,8}}}]}}.
    {test,bs_start_match3,{f,2000},1,[{x,0}],{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {test,bs_get_integer2,
          {f,2000},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[202,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,2000},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[202,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,2000},
          4,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[202,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,2000},[{x,0},0]}.
    {bs_set_position,{x,0},{x,1}}.
    {test,bs_get_integer2,
          {f,2000},
          5,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[202,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_get_integer2,
          {f,2000},
          5,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,1},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[202,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_get_integer2,
          {f,2000},
          6,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,1},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[202,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,bs_test_tail2,{f,2000},[{x,0},0]}.
    {test,is_eq_exact,
          {f,2000},
          [{tr,{x,6},{t_integer,{0,'+inf'}}},{tr,{x,1},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,2000},
          [{tr,{x,2},{t_integer,{0,255}}},{tr,{x,1},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,2000},
          [{tr,{x,3},{t_integer,{0,'+inf'}}},
           {tr,{x,5},{t_integer,{0,'+inf'}}}]}.
    {test,is_eq_exact,
          {f,2000},
          [{tr,{x,4},{t_integer,{0,'+inf'}}},{tr,{x,1},{t_integer,{0,255}}}]}.
    {move,{x,5},{x,0}}.
    return.
  {label,2000}.
    {move,{atom,no},{x,0}}.
    return.


{function, '-size_shadow_4/1-fun-3-', 2, 2002}.
  {label,2001}.
    {line,[{location,"bs_match_r25_SUITE.erl",195}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-size_shadow_4/1-fun-3-'},2}.
  {label,2002}.
    {'%',{var_info,{x,1},[{type,{t_integer,{8,8}}}]}}.
    {test,bs_start_match3,{f,2003},1,[{x,0}],{x,0}}.
    {test,bs_get_integer2,
          {f,2003},
          1,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[196,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_get_integer2,
          {f,2003},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,1},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[196,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,2003},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,1},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[196,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,2003},[{x,0},0]}.
    {test,is_eq_exact,
          {f,2003},
          [{tr,{x,3},{t_integer,{0,'+inf'}}},{tr,{x,1},{t_integer,{0,255}}}]}.
    {move,{x,2},{x,0}}.
    return.
  {label,2003}.
    {move,{atom,no},{x,0}}.
    return.


{function, '-size_shadow_4/1-fun-4-', 2, 2005}.
  {label,2004}.
    {line,[{location,"bs_match_r25_SUITE.erl",192}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-size_shadow_4/1-fun-4-'},2}.
  {label,2005}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{8,8}}}]}}.
    {test,bs_start_match3,{f,2006},1,[{x,0}],{x,0}}.
    {test,bs_get_integer2,
          {f,2006},
          1,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[192,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,bs_get_integer2,
          {f,2006},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,1},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[192,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,2006},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,1},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[192,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_test_tail2,{f,2006},[{x,0},0]}.
    {test,is_eq_exact,
          {f,2006},
          [{tr,{x,3},{t_integer,{0,'+inf'}}},{tr,{x,1},{t_integer,{0,255}}}]}.
    {move,{x,2},{x,0}}.
    return.
  {label,2006}.
    {move,{atom,no},{x,0}}.
    return.


{function, '-size_shadow_3/0-fun-1-', 1, 2008}.
  {label,2007}.
    {line,[{location,"bs_match_r25_SUITE.erl",186}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-size_shadow_3/0-fun-1-'},1}.
  {label,2008}.
    {test_heap,4,1}.
    {put_tuple2,{x,1},{list,[{atom,tag},{x,0},{x,0}]}}.
    {test,bs_start_match3,{f,2009},2,[{x,0}],{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {test,bs_get_integer2,
          {f,2009},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[187,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,2009},
          4,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[187,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_integer2,
          {f,2009},
          5,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[187,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_test_tail2,{f,2009},[{x,0},0]}.
    {bs_set_position,{x,0},{x,2}}.
    {test,bs_get_integer2,
          {f,2009},
          6,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[187,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,2009},
          6,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[187,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,bs_get_integer2,
          {f,2009},
          7,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[187,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,7}}.
    {test,bs_test_tail2,{f,2009},[{x,0},0]}.
    {test,is_eq_exact,
          {f,2009},
          [{tr,{x,7},{t_integer,{0,'+inf'}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,2009},
          [{tr,{x,3},{t_integer,{0,255}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,2009},
          [{tr,{x,4},{t_integer,{0,'+inf'}}},
           {tr,{x,6},{t_integer,{0,'+inf'}}}]}.
    {test,is_eq_exact,
          {f,2009},
          [{tr,{x,5},{t_integer,{0,'+inf'}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {move,{x,6},{x,0}}.
    return.
  {label,2009}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,2064}}. % '-size_shadow_3/0-inlined-2-'/1


{function, '-size_shadow_3/0-fun-3-', 1, 2011}.
  {label,2010}.
    {line,[{location,"bs_match_r25_SUITE.erl",183}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-size_shadow_3/0-fun-3-'},1}.
  {label,2011}.
    {test_heap,5,1}.
    {put_list,{x,0},nil,{x,1}}.
    {put_tuple2,{x,1},{list,[{atom,tag},{x,1}]}}.
    {test,bs_start_match3,{f,2012},2,[{x,0}],{x,0}}.
    {test,bs_get_integer2,
          {f,2012},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[184,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,2012},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[184,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,2012},
          4,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[184,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,2012},[{x,0},0]}.
    {test,is_eq_exact,
          {f,2012},
          [{tr,{x,4},{t_integer,{0,'+inf'}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {move,{x,3},{x,0}}.
    return.
  {label,2012}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,2062}}. % '-size_shadow_3/0-inlined-1-'/1


{function, '-size_shadow_3/0-fun-4-', 1, 2014}.
  {label,2013}.
    {line,[{location,"bs_match_r25_SUITE.erl",182}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-size_shadow_3/0-fun-4-'},1}.
  {label,2014}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,2013},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_integer2,
          {f,2015},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[182,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,2015},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[182,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,2015},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[182,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,2015},[{x,1},0]}.
    {test,is_eq_exact,
          {f,2015},
          [{tr,{x,4},{t_integer,{0,'+inf'}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {move,{x,3},{x,0}}.
    return.
  {label,2015}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,2013}}.


{function, '-size_shadow_2/1-fun-1-', 2, 2017}.
  {label,2016}.
    {line,[{location,"bs_match_r25_SUITE.erl",175}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-size_shadow_2/1-fun-1-'},2}.
  {label,2017}.
    {'%',{var_info,{x,1},[{type,{t_integer,{8,8}}}]}}.
    {test_heap,3,1}.
    {put_tuple2,{x,1},{list,[{x,0},{x,0}]}}.
    {test,bs_start_match3,{f,2018},2,[{x,0}],{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {test,bs_get_integer2,
          {f,2018},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[176,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,2018},
          4,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[176,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,2018},[{x,0},0]}.
    {bs_set_position,{x,0},{x,2}}.
    {test,bs_get_integer2,
          {f,2018},
          5,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[176,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,2018},
          5,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[176,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_test_tail2,{f,2018},[{x,0},0]}.
    {test,is_eq_exact,
          {f,2018},
          [{tr,{x,3},{t_integer,{0,255}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,2018},
          [{tr,{x,4},{t_integer,{0,'+inf'}}},
           {tr,{x,5},{t_integer,{0,'+inf'}}}]}.
    {move,{x,5},{x,0}}.
    return.
  {label,2018}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,2060}}. % '-size_shadow_2/1-inlined-2-'/1


{function, '-size_shadow_2/1-fun-3-', 2, 2020}.
  {label,2019}.
    {line,[{location,"bs_match_r25_SUITE.erl",172}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-size_shadow_2/1-fun-3-'},2}.
  {label,2020}.
    {'%',{var_info,{x,1},[{type,{t_integer,{8,8}}}]}}.
    {test_heap,2,1}.
    {put_list,{x,0},nil,{x,1}}.
    {test,bs_start_match3,{f,2021},2,[{x,0}],{x,0}}.
    {test,bs_get_integer2,
          {f,2021},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[173,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,2021},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[173,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,2021},[{x,0},0]}.
    {move,{x,2},{x,0}}.
    return.
  {label,2021}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,2058}}. % '-size_shadow_2/1-inlined-1-'/1


{function, '-size_shadow_2/1-fun-4-', 2, 2023}.
  {label,2022}.
    {line,[{location,"bs_match_r25_SUITE.erl",171}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-size_shadow_2/1-fun-4-'},2}.
  {label,2023}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{8,8}}}]}}.
    {test,bs_start_match3,{f,2025},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_integer2,
          {f,2024},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[171,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,2024},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[171,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,2024},[{x,1},0]}.
    {move,{x,2},{x,0}}.
    return.
  {label,2024}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {call_only,1,{f,2056}}. % '-size_shadow_2/1-inlined-0-'/1
  {label,2025}.
    {call_only,1,{f,2056}}. % '-size_shadow_2/1-inlined-0-'/1


{function, '-size_shadow_1/0-fun-1-', 1, 2027}.
  {label,2026}.
    {line,[{location,"bs_match_r25_SUITE.erl",162}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-size_shadow_1/0-fun-1-'},1}.
  {label,2027}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,2029},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_integer2,
          {f,2028},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[163,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},3}.
    {put_map_assoc,{f,0},
                   {literal,#{}},
                   {x,0},
                   3,
                   {list,[{atom,key1},{x,0},{atom,key2},{x,0}]}}.
    {test_heap,5,3}.
    {put_list,{x,2},nil,{x,1}}.
    {put_tuple2,{x,0},{list,[{x,0},{x,2}]}}.
    {swap,{x,0},{x,1}}.
    {call_only,2,{f,2031}}. % '-size_shadow_1/0-fun-0-'/2
  {label,2028}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_r25_SUITE.erl",163}]}.
    {badmatch,{x,0}}.
  {label,2029}.
    {badmatch,{x,0}}.


{function, '-size_shadow_1/0-fun-0-', 2, 2031}.
  {label,2030}.
    {line,[{location,"bs_match_r25_SUITE.erl",164}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-size_shadow_1/0-fun-0-'},2}.
  {label,2031}.
    {test,is_nonempty_list,{f,2030},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,3}}.
    {test,is_nil,{f,2030},[{x,3}]}.
    {test,is_tuple,{f,2030},[{x,1}]}.
    {test,test_arity,{f,2030},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_map,{f,2030},[{x,3}]}.
    {get_map_elements,{f,2030},
                      {tr,{x,3},{t_map,any,any}},
                      {list,[{atom,key2},{x,3},{atom,key1},{x,4}]}}.
    {test,bs_start_match3,{f,2030},5,[{x,3}],{x,3}}.
    {test,bs_get_integer2,
          {f,2030},
          5,
          [{tr,{x,3},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[164,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_get_integer2,
          {f,2030},
          6,
          [{tr,{x,3},{t_bs_context,1}},
           {tr,{x,5},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[164,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,bs_test_tail2,{f,2030},[{x,3},0]}.
    {test,bs_start_match3,{f,2030},7,[{x,4}],{x,3}}.
    {test,bs_get_integer2,
          {f,2030},
          7,
          [{tr,{x,3},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[164,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_integer2,
          {f,2030},
          7,
          [{tr,{x,3},{t_bs_context,1}},
           {tr,{x,4},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[164,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,7}}.
    {test,bs_test_tail2,{f,2030},[{x,3},0]}.
    {test,is_eq_exact,{f,2030},[{tr,{x,4},{t_integer,{0,255}}},{x,2}]}.
    {test,is_eq_exact,
          {f,2030},
          [{tr,{x,5},{t_integer,{0,255}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,2030},
          [{tr,{x,6},{t_integer,{0,'+inf'}}},
           {tr,{x,7},{t_integer,{0,'+inf'}}}]}.
    {get_tuple_element,{x,1},1,{x,3}}.
    {test,is_eq_exact,{f,2030},[{x,3},{tr,{x,2},{t_integer,{0,255}}}]}.
    {move,{x,7},{x,0}}.
    return.


{function, '-size_shadow_1/0-fun-3-', 1, 2033}.
  {label,2032}.
    {line,[{location,"bs_match_r25_SUITE.erl",159}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-size_shadow_1/0-fun-3-'},1}.
  {label,2033}.
    {test_heap,4,1}.
    {put_list,{x,0},nil,{x,1}}.
    {put_list,{x,0},{x,1},{x,1}}.
    {test,bs_start_match3,{f,2034},2,[{x,0}],{x,2}}.
    {test,bs_get_integer2,
          {f,2034},
          3,
          [{tr,{x,2},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[160,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,2034},
          4,
          [{tr,{x,2},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[160,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_test_tail2,{f,2034},[{x,2},0]}.
    {bs_start_match4,{atom,no_fail},5,{x,0},{x,0}}.
    {test,bs_get_integer2,
          {f,2034},
          5,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[160,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,2034},
          5,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[160,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_test_tail2,{f,2034},[{x,0},0]}.
    {test,is_eq_exact,
          {f,2034},
          [{tr,{x,3},{t_integer,{0,255}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,2034},
          [{tr,{x,4},{t_integer,{0,'+inf'}}},
           {tr,{x,5},{t_integer,{0,'+inf'}}}]}.
    {move,{x,5},{x,0}}.
    return.
  {label,2034}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,2054}}. % '-size_shadow_1/0-inlined-2-'/1


{function, '-size_shadow_1/0-fun-5-', 1, 2036}.
  {label,2035}.
    {line,[{location,"bs_match_r25_SUITE.erl",156}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-size_shadow_1/0-fun-5-'},1}.
  {label,2036}.
    {test_heap,2,1}.
    {put_list,{x,0},nil,{x,1}}.
    {test,bs_start_match3,{f,2037},2,[{x,0}],{x,0}}.
    {test,bs_get_integer2,
          {f,2037},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[157,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,2037},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[157,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,2037},[{x,0},0]}.
    {move,{x,2},{x,0}}.
    return.
  {label,2037}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,2052}}. % '-size_shadow_1/0-inlined-1-'/1


{function, '-size_shadow_1/0-fun-6-', 1, 2039}.
  {label,2038}.
    {line,[{location,"bs_match_r25_SUITE.erl",155}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-size_shadow_1/0-fun-6-'},1}.
  {label,2039}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,2038},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {test,bs_get_integer2,
          {f,2040},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,8},
           1,
           {field_flags,[{anno,[155,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,2040},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[155,{file,"bs_match_r25_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_test_tail2,{f,2040},[{x,1},0]}.
    {move,{x,2},{x,0}}.
    return.
  {label,2040}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,2038}}.


{function, '-mos_int_fun/1-inlined-0-', 1, 2042}.
  {label,2041}.
    {line,[{location,"bs_match_r25_SUITE.erl",1708}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-mos_int_fun/1-inlined-0-'},1}.
  {label,2042}.
    {jump,{f,2041}}.


{function, '-null_fields/1-inlined-0-', 1, 2044}.
  {label,2043}.
    {line,[{location,"bs_match_r25_SUITE.erl",295}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-null_fields/1-inlined-0-'},1}.
  {label,2044}.
    {jump,{f,2043}}.


{function, '-otp_5269/1-inlined-0-', 1, 2046}.
  {label,2045}.
    {line,[{location,"bs_match_r25_SUITE.erl",257}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-otp_5269/1-inlined-0-'},1}.
  {label,2046}.
    {jump,{f,2045}}.


{function, '-otp_5269/1-inlined-1-', 1, 2048}.
  {label,2047}.
    {line,[{location,"bs_match_r25_SUITE.erl",263}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-otp_5269/1-inlined-1-'},1}.
  {label,2048}.
    {jump,{f,2047}}.


{function, '-otp_5269/1-inlined-6-', 1, 2050}.
  {label,2049}.
    {line,[{location,"bs_match_r25_SUITE.erl",283}]}.
    {func_info,{atom,bs_match_r25_SUITE},{atom,'-otp_5269/1-inlined-6-'},1}.
  {label,2050}.
    {jump,{f,2049}}.


{function, '-size_shadow_1/0-inlined-1-', 1, 2052}.
  {label,2051}.
    {line,[{location,"bs_match_r25_SUITE.erl",157}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-size_shadow_1/0-inlined-1-'},
               1}.
  {label,2052}.
    {jump,{f,2051}}.


{function, '-size_shadow_1/0-inlined-2-', 1, 2054}.
  {label,2053}.
    {line,[{location,"bs_match_r25_SUITE.erl",160}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-size_shadow_1/0-inlined-2-'},
               1}.
  {label,2054}.
    {jump,{f,2053}}.


{function, '-size_shadow_2/1-inlined-0-', 1, 2056}.
  {label,2055}.
    {line,[{location,"bs_match_r25_SUITE.erl",171}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-size_shadow_2/1-inlined-0-'},
               1}.
  {label,2056}.
    {jump,{f,2055}}.


{function, '-size_shadow_2/1-inlined-1-', 1, 2058}.
  {label,2057}.
    {line,[{location,"bs_match_r25_SUITE.erl",173}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-size_shadow_2/1-inlined-1-'},
               1}.
  {label,2058}.
    {jump,{f,2057}}.


{function, '-size_shadow_2/1-inlined-2-', 1, 2060}.
  {label,2059}.
    {line,[{location,"bs_match_r25_SUITE.erl",176}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-size_shadow_2/1-inlined-2-'},
               1}.
  {label,2060}.
    {jump,{f,2059}}.


{function, '-size_shadow_3/0-inlined-1-', 1, 2062}.
  {label,2061}.
    {line,[{location,"bs_match_r25_SUITE.erl",184}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-size_shadow_3/0-inlined-1-'},
               1}.
  {label,2062}.
    {jump,{f,2061}}.


{function, '-size_shadow_3/0-inlined-2-', 1, 2064}.
  {label,2063}.
    {line,[{location,"bs_match_r25_SUITE.erl",187}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-size_shadow_3/0-inlined-2-'},
               1}.
  {label,2064}.
    {jump,{f,2063}}.


{function, '-size_shadow_5/2-inlined-0-', 3, 2066}.
  {label,2065}.
    {line,[{location,"bs_match_r25_SUITE.erl",210}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-size_shadow_5/2-inlined-0-'},
               3}.
  {label,2066}.
    {jump,{f,2065}}.


{function, '-size_shadow_6/2-inlined-0-', 3, 2068}.
  {label,2067}.
    {line,[{location,"bs_match_r25_SUITE.erl",213}]}.
    {func_info,{atom,bs_match_r25_SUITE},
               {atom,'-size_shadow_6/2-inlined-0-'},
               3}.
  {label,2068}.
    {jump,{f,2067}}.
