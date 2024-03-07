{module, bs_match_dialyzer_SUITE}.  %% version = 0

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

{labels, 2067}.


{function, suite, 0, 2}.
  {label,1}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",66}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,suite},0}.
  {label,2}.
    {move,{literal,[{ct_hooks,[ts_install_cth]},{timetrap,{minutes,1}}]},
          {x,0}}.
    return.


{function, all, 0, 4}.
  {label,3}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",70}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,all},0}.
  {label,4}.
    {move,{literal,[{group,p}]},{x,0}}.
    return.


{function, groups, 0, 6}.
  {label,5}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",73}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,groups},0}.
  {label,6}.
    {allocate,0,0}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",74}]}.
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
    {line,[{location,"bs_match_dialyzer_SUITE.erl",103}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,init_per_suite},1}.
  {label,8}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{atom,bs_match_dialyzer_SUITE},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",104}]}.
    {call_ext,1,{extfunc,test_lib,recompile,1}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, end_per_suite, 1, 10}.
  {label,9}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",107}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,end_per_suite},1}.
  {label,10}.
    {move,{atom,ok},{x,0}}.
    return.


{function, init_per_group, 2, 12}.
  {label,11}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",110}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,init_per_group},2}.
  {label,12}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_group, 2, 14}.
  {label,13}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",113}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,end_per_group},2}.
  {label,14}.
    {move,{x,1},{x,0}}.
    return.


{function, init_per_testcase, 2, 16}.
  {label,15}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",117}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,init_per_testcase},2}.
  {label,16}.
    {test,is_atom,{f,15},[{x,0}]}.
    {test,is_list,{f,15},[{x,1}]}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_testcase, 2, 18}.
  {label,17}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",120}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,end_per_testcase},2}.
  {label,18}.
    {test,is_atom,{f,17},[{x,0}]}.
    {test,is_list,{f,17},[{x,1}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, verify_highest_opcode, 1, 20}.
  {label,19}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",123}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,verify_highest_opcode},1}.
  {label,20}.
    {move,{atom,ok},{x,0}}.
    return.


{function, size_shadow, 1, 22}.
  {label,21}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",141}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,size_shadow},1}.
  {label,22}.
    {test,is_list,{f,21},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",143}]}.
    {call,0,{f,33}}. % size_shadow_1/0
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
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",144}]}.
    {call,1,{f,35}}. % size_shadow_2/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[no]},
                                   none,
                                   {t_integer,{0,'+inf'}},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,30},
          [{tr,{x,0},
               {t_union,{t_atom,[no]},none,{t_integer,{0,'+inf'}},none,none}},
           {integer,7}]}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",145}]}.
    {call,0,{f,37}}. % size_shadow_3/0
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[no]},
                                   none,
                                   {t_integer,{0,'+inf'}},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,29},
          [{tr,{x,0},
               {t_union,{t_atom,[no]},none,{t_integer,{0,'+inf'}},none,none}},
           {integer,7}]}.
    {move,{integer,8},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",146}]}.
    {call,1,{f,39}}. % size_shadow_4/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[no]},
                                   none,
                                   {t_integer,{0,'+inf'}},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,28},
          [{tr,{x,0},
               {t_union,{t_atom,[no]},none,{t_integer,{0,'+inf'}},none,none}},
           {atom,no}]}.
    {move,{integer,12},{x,1}}.
    {move,{literal,{any,term,goes}},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",149}]}.
    {call,2,{f,41}}. % size_shadow_5/2
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
        {f,1993},
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
    {test,is_eq_exact,{f,27},[{tr,{x,1},{t_integer,{0,8191}}},{integer,2577}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,{f,27},[{x,1},{integer,-175}]}.
    {get_tuple_element,{x,0},3,{x,1}}.
    {test,is_eq_exact,{f,27},[{x,1},{atom,whatever}]}.
    {move,{integer,13},{x,1}}.
    {move,{literal,{any,term,goes}},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",151}]}.
    {call,2,{f,43}}. % size_shadow_6/2
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
        {f,1989},
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
    {test,is_eq_exact,{f,26},[{tr,{x,1},{t_integer,{0,8191}}},{integer,7777}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,{f,26},[{x,1},{integer,42}]}.
    {get_tuple_element,{x,0},3,{x,1}}.
    {test,is_eq_exact,{f,26},[{x,1},{atom,whatever}]}.
    {move,{literal,<<0,1,45>>},{x,1}}.
    {move,{literal,{int,1}},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",152}]}.
    {call,2,{f,47}}. % size_shadow_7/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_bitstring,8,false},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
          {f,25},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_bitstring,8,false},
                          2 => {t_bitstring,8,false}}}},
           {literal,{<<"-">>,<<>>}}]}.
    {'catch',{y,0},{f,23}}.
    {move,{literal,<<0,1,45>>},{x,1}}.
    {move,{literal,{int,42}},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",154}]}.
    {call,2,{f,47}}. % size_shadow_7/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_bitstring,8,false},
                                     2 => {t_bitstring,8,false}}}}]}}.
  {label,23}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,24},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,24},[{x,1},2,{atom,function_clause}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,24}.
    {line,[{scope,[0]},{location,"bs_match_dialyzer_SUITE.erl",153}]}.
    {badmatch,{x,0}}.
  {label,25}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",152}]}.
    {badmatch,{x,0}}.
  {label,26}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",150}]}.
    {badmatch,{x,0}}.
  {label,27}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",148}]}.
    {badmatch,{x,0}}.
  {label,28}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",146}]}.
    {badmatch,{x,0}}.
  {label,29}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",145}]}.
    {badmatch,{x,0}}.
  {label,30}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",144}]}.
    {badmatch,{x,0}}.
  {label,31}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",143}]}.
    {badmatch,{x,0}}.


{function, size_shadow_1, 0, 33}.
  {label,32}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",157}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,size_shadow_1},0}.
  {label,33}.
    {test_heap,{alloc,[{words,8},{floats,0},{funs,4}]},0}.
    {make_fun3,{f,2037},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {make_fun3,{f,2034},0,0,{x,1},{list,[]}}.
    {'%',{var_info,{x,1},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {make_fun3,{f,2031},0,0,{x,2},{list,[]}}.
    {'%',{var_info,{x,2},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {make_fun3,{f,2025},0,0,{x,3},{list,[]}}.
    {'%',{var_info,{x,3},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {put_list,{x,3},nil,{x,3}}.
    {put_list,{x,2},{x,3},{x,2}}.
    {put_list,{x,1},{x,2},{x,1}}.
    {put_list,{x,0},{x,1},{x,0}}.
    {move,{literal,<<16,0,7>>},{x,1}}.
    {call_only,2,{f,50}}. % size_shadow_apply/2


{function, size_shadow_2, 1, 35}.
  {label,34}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",174}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,size_shadow_2},1}.
  {label,35}.
    {'%',{var_info,{x,0},[{type,{t_integer,{8,8}}}]}}.
    {test_heap,{alloc,[{words,9},{floats,0},{funs,3}]},0}.
    {make_fun3,{f,2021},0,0,{x,0},{list,[{integer,8}]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {make_fun3,{f,2018},0,0,{x,1},{list,[{integer,8}]}}.
    {'%',{var_info,{x,1},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {make_fun3,{f,2015},0,0,{x,2},{list,[{integer,8}]}}.
    {'%',{var_info,{x,2},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {put_list,{x,2},nil,{x,2}}.
    {put_list,{x,1},{x,2},{x,1}}.
    {put_list,{x,0},{x,1},{x,0}}.
    {move,{literal,<<16,0,7>>},{x,1}}.
    {call_only,2,{f,50}}. % size_shadow_apply/2


{function, size_shadow_3, 0, 37}.
  {label,36}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",184}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,size_shadow_3},0}.
  {label,37}.
    {test_heap,{alloc,[{words,6},{floats,0},{funs,3}]},0}.
    {make_fun3,{f,2012},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {make_fun3,{f,2009},0,0,{x,1},{list,[]}}.
    {'%',{var_info,{x,1},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {make_fun3,{f,2006},0,0,{x,2},{list,[]}}.
    {'%',{var_info,{x,2},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {put_list,{x,2},nil,{x,2}}.
    {put_list,{x,1},{x,2},{x,1}}.
    {put_list,{x,0},{x,1},{x,0}}.
    {move,{literal,<<16,0,7,0,16>>},{x,1}}.
    {call_only,2,{f,50}}. % size_shadow_apply/2


{function, size_shadow_4, 1, 39}.
  {label,38}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",195}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,size_shadow_4},1}.
  {label,39}.
    {'%',{var_info,{x,0},[{type,{t_integer,{8,8}}}]}}.
    {test_heap,{alloc,[{words,9},{floats,0},{funs,3}]},0}.
    {make_fun3,{f,2003},0,0,{x,0},{list,[{integer,8}]}}.
    {'%',
        {var_info,
            {x,0},
            [{fun_type,
                 {t_union,
                     {t_atom,[no]},
                     none,
                     {t_integer,{0,'+inf'}},
                     none,none}}]}}.
    {make_fun3,{f,2000},0,0,{x,1},{list,[{integer,8}]}}.
    {'%',
        {var_info,
            {x,1},
            [{fun_type,
                 {t_union,
                     {t_atom,[no]},
                     none,
                     {t_integer,{0,'+inf'}},
                     none,none}}]}}.
    {make_fun3,{f,1997},0,0,{x,2},{list,[{integer,8}]}}.
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
    {call_only,2,{f,50}}. % size_shadow_apply/2


{function, size_shadow_5, 2, 41}.
  {label,40}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",213}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,size_shadow_5},2}.
  {label,41}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_atom,[any]},
                                     2 => {t_atom,[term]},
                                     3 => {t_atom,[goes]}}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{12,12}}}]}}.
    {test_heap,{alloc,[{words,2},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1993},
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


{function, size_shadow_6, 2, 43}.
  {label,42}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",216}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,size_shadow_6},2}.
  {label,43}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_atom,[any]},
                                     2 => {t_atom,[term]},
                                     3 => {t_atom,[goes]}}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{13,13}}}]}}.
    {test_heap,{alloc,[{words,2},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1989},
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


{function, fum, 4, 45}.
  {label,44}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",219}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,fum},4}.
  {label,45}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,8191}}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_atom,[any]},
                                     2 => {t_atom,[term]},
                                     3 => {t_atom,[goes]}}}}]}}.
    {test_heap,5,4}.
    {put_tuple2,{x,0},{list,[{x,0},{literal,{any,term,goes}},{x,2},{x,3}]}}.
    return.


{function, size_shadow_7, 2, 47}.
  {label,46}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",222}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,size_shadow_7},2}.
  {label,47}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[int]},
                                     2 => {t_integer,{1,42}}}}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {bs_match,{f,48},
              {x,1},
              {commands,[{ensure_at_least,16,1},
                         {integer,3,{literal,[]},16,1,{x,3}}]}}.
    {test,bs_get_binary2,
          {f,48},
          4,
          [{tr,{x,1},{t_bs_context,8}},
           {tr,{x,3},{t_integer,{0,65535}}},
           8,
           {field_flags,[{anno,[222,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {bs_get_tail,{x,1},{x,5},5}.
    {get_tuple_element,{x,0},1,{x,6}}.
    {test,is_eq_exact,
          {f,48},
          [{tr,{x,3},{t_integer,{0,65535}}},{tr,{x,6},{t_integer,{1,42}}}]}.
    {test_heap,3,6}.
    {put_tuple2,{x,0},{list,[{x,4},{x,5}]}}.
    return.
  {label,48}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_get_tail,{x,1},{x,1},2}.
    {jump,{f,46}}.


{function, size_shadow_apply, 2, 50}.
  {label,49}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",225}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,size_shadow_apply},2}.
  {label,50}.
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
    {line,[{location,"bs_match_dialyzer_SUITE.erl",226}]}.
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
    {call_last,3,{f,52},2}. % size_shadow_apply/3


{function, size_shadow_apply, 3, 52}.
  {label,51}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",228}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,size_shadow_apply},3}.
  {label,52}.
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
    {test,is_nonempty_list,{f,53},[{x,0}]}.
    {allocate,3,3}.
    {move,{x,2},{y,1}}.
    {move,{x,1},{y,2}}.
    {get_list,{x,0},{x,0},{y,0}}.
    {swap,{x,0},{x,1}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",229}]}.
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
          {f,54},
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
    {call_last,3,{f,52},3}. % size_shadow_apply/3
  {label,53}.
    {move,{x,2},{x,0}}.
    return.
  {label,54}.
    {badmatch,{x,0}}.


{function, int_float, 1, 56}.
  {label,55}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",234}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,int_float},1}.
  {label,56}.
    {test,is_list,{f,55},[{x,0}]}.
    {move,{literal,<<64,249,45,208,0,0,0,0>>},{x,0}}.
    {bs_start_match4,{atom,no_fail},0,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {test,bs_get_float2,
          {f,63},
          2,
          [{tr,{x,0},{t_bs_context,64}},
           {integer,64},
           1,
           {field_flags,[{anno,[236,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,63},[{tr,{x,2},{t_float,any}},{float,103133.0}]}.
    {bs_match,{f,63},{x,0},{commands,[{ensure_exactly,0}]}}.
    {bs_set_position,{x,0},{x,1}}.
    {test,bs_get_float2,
          {f,62},
          1,
          [{tr,{x,0},{t_bs_context,64}},
           {integer,64},
           1,
           {field_flags,[{anno,[237,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,is_eq_exact,{f,62},[{tr,{x,1},{t_float,any}},{float,103133.0}]}.
    {bs_match,{f,62},{x,0},{commands,[{ensure_exactly,0}]}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",240}]}.
    {bs_create_bin,{f,0},
                   0,0,64,
                   {x,0},
                   {list,[{atom,float},
                          1,1,
                          {literal,[native]},
                          {integer,42},
                          {integer,64}]}}.
    {allocate,0,1}.
    {call,1,{f,1776}}. % id/1
    {test,bs_start_match3,{f,61},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {test,bs_get_float2,
          {f,61},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[241,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,native]}],
          {x,3}}.
    {test,is_eq_exact,{f,61},[{tr,{x,3},{t_float,any}},{float,42.0}]}.
    {bs_match,{f,61},{x,1},{commands,[{ensure_exactly,0}]}}.
    {bs_set_position,{x,1},{x,2}}.
    {test,bs_get_float2,
          {f,60},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[242,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,native]}],
          {x,2}}.
    {test,is_eq_exact,{f,60},[{tr,{x,2},{t_float,any}},{float,42.0}]}.
    {bs_match,{f,60},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{literal,<<64,80,0,0,0,0,0,0>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",245}]}.
    {call,1,{f,1776}}. % id/1
    {test,bs_start_match3,{f,59},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {test,bs_get_float2,
          {f,59},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[246,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,59},[{tr,{x,3},{t_float,any}},{float,64.0}]}.
    {bs_match,{f,59},{x,1},{commands,[{ensure_exactly,0}]}}.
    {bs_set_position,{x,1},{x,2}}.
    {test,bs_get_float2,
          {f,58},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[247,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,58},[{tr,{x,2},{t_float,any}},{float,64.0}]}.
    {bs_match,{f,58},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{atom,default},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",250}]}.
    {call,1,{f,1776}}. % id/1
    {test,is_eq_exact,{f,57},[{x,0},{atom,default}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,57}.
    {case_end,{x,0}}.
  {label,58}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",247}]}.
    {badmatch,{x,0}}.
  {label,59}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",246}]}.
    {badmatch,{x,0}}.
  {label,60}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",242}]}.
    {badmatch,{x,0}}.
  {label,61}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",241}]}.
    {badmatch,{x,0}}.
  {label,62}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",237}]}.
    {badmatch,{literal,<<64,249,45,208,0,0,0,0>>}}.
  {label,63}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",236}]}.
    {badmatch,{literal,<<64,249,45,208,0,0,0,0>>}}.


{function, otp_5269, 1, 65}.
  {label,64}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",259}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,otp_5269},1}.
  {label,65}.
    {test,is_list,{f,64},[{x,0}]}.
    {allocate_heap,0,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1986},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {move,{integer,7},{x,1}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",260}]}.
    {call,2,{f,1322}}. % check/2
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
    {make_fun3,{f,1983},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {move,{integer,7},{x,1}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",265}]}.
    {call,2,{f,1322}}. % check/2
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
    {make_fun3,{f,1980},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_integer,{0,255}}}]}}.
    {move,{integer,32},{x,1}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",267}]}.
    {call,2,{f,1322}}. % check/2
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
    {make_fun3,{f,1974},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_list,{t_integer,{0,255}},nil}}]}}.
    {move,{literal," "},{x,1}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",269}]}.
    {call,2,{f,1322}}. % check/2
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
    {'%',{var_info,{x,0},[{fun_type,{t_list,{t_integer,{0,255}},nil}}]}}.
    {move,{literal,[19]},{x,1}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",271}]}.
    {call,2,{f,1322}}. % check/2
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
    {make_fun3,{f,1962},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_integer,{28,28}}}]}}.
    {move,{integer,28},{x,1}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",275}]}.
    {call,2,{f,1322}}. % check/2
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
    {make_fun3,{f,1959},0,0,{x,0},{list,[]}}.
    {'%',
        {var_info,
            {x,0},
            [{fun_type,
                 {t_tuple,3,true,
                     #{1 => {t_integer,{0,255}},
                       2 => {t_bitstring,8,false},
                       3 => {t_bitstring,8,false}}}}]}}.
    {move,{literal,{2,<<"AB">>,<<"CD">>}},{x,1}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",277}]}.
    {call,2,{f,1322}}. % check/2
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
    {make_fun3,{f,1953},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},
                   [{fun_type,{t_list,{t_integer,{0,4294967295}},nil}}]}}.
    {move,{literal,[1,2]},{x,1}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",282}]}.
    {call,2,{f,1322}}. % check/2
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
    {make_fun3,{f,1950},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[ok]}}]}}.
    {move,{atom,ok},{x,1}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",286}]}.
    {call,2,{f,1322}}. % check/2
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


{function, null_fields, 1, 67}.
  {label,66}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",296}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,null_fields},1}.
  {label,67}.
    {test,is_list,{f,66},[{x,0}]}.
    {allocate_heap,0,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1946},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[empty,tail]}}]}}.
    {move,{atom,tail},{x,1}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",297}]}.
    {call,2,{f,1322}}. % check/2
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
    {make_fun3,{f,1944},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[tail]}}]}}.
    {move,{atom,tail},{x,1}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",304}]}.
    {call,2,{f,1322}}. % check/2
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


{function, wiger, 1, 69}.
  {label,68}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",312}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,wiger},1}.
  {label,69}.
    {test,is_list,{f,68},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<3>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",313}]}.
    {call,1,{f,76}}. % wcheck/1
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
           {atom,ok1}]}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",314}]}.
    {call,1,{f,76}}. % wcheck/1
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
           {atom,ok2}]}.
    {move,{literal,<<4>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",315}]}.
    {call,1,{f,76}}. % wcheck/1
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
           {atom,ok3}]}.
    {move,{literal,<<1,2,3,4>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",316}]}.
    {call,1,{f,76}}. % wcheck/1
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
          {f,71},
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
    {line,[{location,"bs_match_dialyzer_SUITE.erl",317}]}.
    {call,1,{f,76}}. % wcheck/1
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
          {f,70},
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
  {label,70}.
    {badmatch,{x,0}}.
  {label,71}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",316}]}.
    {badmatch,{x,0}}.
  {label,72}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",315}]}.
    {badmatch,{x,0}}.
  {label,73}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",314}]}.
    {badmatch,{x,0}}.
  {label,74}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",313}]}.
    {badmatch,{x,0}}.


{function, wcheck, 1, 76}.
  {label,75}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",320}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,wcheck},1}.
  {label,76}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,79},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {bs_match,{f,77},{x,0},{commands,[{ensure_exactly,0}]}}.
    {test,is_eq_exact,{f,77},[{tr,{x,2},{t_integer,{0,255}}},{integer,3}]}.
    {move,{atom,ok1},{x,0}}.
    return.
  {label,77}.
    {bs_match,{f,78},{x,0},{commands,[{ensure_exactly,16}]}}.
    {move,{atom,ok2},{x,0}}.
    return.
  {label,78}.
    {bs_match,{f,79},{x,0},{commands,[{ensure_exactly,0}]}}.
    {move,{atom,ok3},{x,0}}.
    return.
  {label,79}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,error},{x,0}]}}.
    return.


{function, bin_tail, 1, 81}.
  {label,80}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",329}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,bin_tail},1}.
  {label,81}.
    {test,is_list,{f,80},[{x,0}]}.
    {allocate,7,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3},{y,4},{y,5},{y,6}]}}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",331}]}.
    {call,2,{f,109}}. % bin_tail_c/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,107},[{tr,{x,0},{t_integer,{0,255}}},{integer,97}]}.
    {move,{integer,2},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_dialyzer_SUITE.erl",332}]}.
    {call,2,{f,109}}. % bin_tail_c/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,106},[{tr,{x,0},{t_integer,{0,255}}},{integer,99}]}.
    {move,{integer,4},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_dialyzer_SUITE.erl",333}]}.
    {call,2,{f,109}}. % bin_tail_c/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,105},[{tr,{x,0},{t_integer,{0,255}}},{integer,101}]}.
    {'catch',{y,6},{f,82}}.
    {move,{integer,5},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_dialyzer_SUITE.erl",334}]}.
    {call,2,{f,109}}. % bin_tail_c/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
  {label,82}.
    {catch_end,{y,6}}.
    {test,is_tagged_tuple,{f,104},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,5},{f,83}}.
    {move,{integer,5},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,[13,14]},{location,"bs_match_dialyzer_SUITE.erl",335}]}.
    {call,2,{f,116}}. % bin_tail_c_var/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_bitstring,8,false}}}}]}}.
  {label,83}.
    {catch_end,{y,5}}.
    {test,is_tagged_tuple,{f,103},[{x,0},2,{atom,'EXIT'}]}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,"\v\f"},{location,"bs_match_dialyzer_SUITE.erl",337}]}.
    {call,2,{f,119}}. % bin_tail_d/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,102},[{tr,{x,0},{t_integer,{0,255}}},{integer,97}]}.
    {move,{integer,8},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,"\n"},{location,"bs_match_dialyzer_SUITE.erl",338}]}.
    {call,2,{f,119}}. % bin_tail_d/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,101},[{tr,{x,0},{t_integer,{0,255}}},{integer,98}]}.
    {move,{integer,24},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,"\n"},{location,"bs_match_dialyzer_SUITE.erl",339}]}.
    {call,2,{f,119}}. % bin_tail_d/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,100},[{tr,{x,0},{t_integer,{0,255}}},{integer,100}]}.
    {'catch',{y,4},{f,84}}.
    {move,{integer,1},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,"\n"},{location,"bs_match_dialyzer_SUITE.erl",340}]}.
    {call,2,{f,123}}. % bin_tail_d_dead/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
  {label,84}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,99},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,3},{f,85}}.
    {move,{integer,9},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,"\t\n"},{location,"bs_match_dialyzer_SUITE.erl",341}]}.
    {call,2,{f,123}}. % bin_tail_d_dead/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
  {label,85}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,98},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,2},{f,86}}.
    {move,{integer,40},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_dialyzer_SUITE.erl",342}]}.
    {call,2,{f,123}}. % bin_tail_d_dead/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
  {label,86}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,97},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,1},{f,87}}.
    {move,{integer,1},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_dialyzer_SUITE.erl",343}]}.
    {call,2,{f,126}}. % bin_tail_d_var/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_bitstring,8,false}}}}]}}.
  {label,87}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,96},[{x,0},2,{atom,'EXIT'}]}.
    {move,{literal,<<129>>},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_dialyzer_SUITE.erl",345}]}.
    {call,1,{f,129}}. % bin_tail_e/1
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
           {atom,ok}]}.
    {move,{literal,<<161,0,0,0,0,0,0,0,42>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",346}]}.
    {call,1,{f,129}}. % bin_tail_e/1
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
           {atom,ok}]}.
    {move,{literal,<<225,0,0,0,0,0,0,0,42>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",347}]}.
    {call,1,{f,129}}. % bin_tail_e/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[error,ok]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,93},
          [{tr,{x,0},
               {t_union,{t_atom,[error,ok]},
                        none,none,none,
                        {t_bitstring,8,false}}},
           {atom,error}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",348}]}.
    {call,1,{f,129}}. % bin_tail_e/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[error,ok]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,92},
          [{tr,{x,0},
               {t_union,{t_atom,[error,ok]},
                        none,none,none,
                        {t_bitstring,8,false}}},
           {atom,error}]}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",350}]}.
    {call_ext,1,{extfunc,erlang,md5,1}}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",351}]}.
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
    {call,3,{f,140}}. % bin_tail_f/3
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[error]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,91},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,none,none,
                        {t_bitstring,8,false}}},
           {literal,<<"abc">>}]}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",352}]}.
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
    {call,3,{f,140}}. % bin_tail_f/3
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[error]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,90},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,none,none,
                        {t_bitstring,8,false}}},
           {atom,error}]}.
    {'catch',{y,0},{f,88}}.
    {move,{y,6},{x,1}}.
    {move,{integer,0},{x,2}}.
    {init_yregs,{list,[{y,6}]}}.
    {move,{literal,<<0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",353}]}.
    {call,3,{f,140}}. % bin_tail_f/3
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[error]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
  {label,88}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,89},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,89},[{x,1}]}.
    {test,test_arity,{f,89},[{x,1},2]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,7}.
    return.
  {label,89}.
    {line,[{scope,[0]},{location,"bs_match_dialyzer_SUITE.erl",353}]}.
    {badmatch,{x,0}}.
  {label,90}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",352}]}.
    {badmatch,{x,0}}.
  {label,91}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",351}]}.
    {badmatch,{x,0}}.
  {label,92}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",348}]}.
    {badmatch,{x,0}}.
  {label,93}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",347}]}.
    {badmatch,{x,0}}.
  {label,94}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",346}]}.
    {badmatch,{x,0}}.
  {label,95}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",345}]}.
    {badmatch,{x,0}}.
  {label,96}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",343}]}.
    {badmatch,{x,0}}.
  {label,97}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",342}]}.
    {badmatch,{x,0}}.
  {label,98}.
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",341}]}.
    {badmatch,{x,0}}.
  {label,99}.
    {line,[{scope,"\b"},{location,"bs_match_dialyzer_SUITE.erl",340}]}.
    {badmatch,{x,0}}.
  {label,100}.
    {line,[{scope,"\n"},{location,"bs_match_dialyzer_SUITE.erl",339}]}.
    {badmatch,{x,0}}.
  {label,101}.
    {line,[{scope,"\n"},{location,"bs_match_dialyzer_SUITE.erl",338}]}.
    {badmatch,{x,0}}.
  {label,102}.
    {line,[{scope,"\n"},{location,"bs_match_dialyzer_SUITE.erl",337}]}.
    {badmatch,{x,0}}.
  {label,103}.
    {line,[{scope,"\n"},{location,"bs_match_dialyzer_SUITE.erl",335}]}.
    {badmatch,{x,0}}.
  {label,104}.
    {line,[{scope,"\f"},{location,"bs_match_dialyzer_SUITE.erl",334}]}.
    {badmatch,{x,0}}.
  {label,105}.
    {line,[{scope,[14]},{location,"bs_match_dialyzer_SUITE.erl",333}]}.
    {badmatch,{x,0}}.
  {label,106}.
    {line,[{scope,[14]},{location,"bs_match_dialyzer_SUITE.erl",332}]}.
    {badmatch,{x,0}}.
  {label,107}.
    {line,[{scope,[14]},{location,"bs_match_dialyzer_SUITE.erl",331}]}.
    {badmatch,{x,0}}.


{function, bin_tail_c, 2, 109}.
  {label,108}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",357}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,bin_tail_c},2}.
  {label,109}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,5}}}]}}.
    {allocate,4,2}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{x,1},{y,2}}.
    {move,{x,0},{y,3}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",358}]}.
    {call,2,{f,113}}. % bin_tail_c_dead/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {bs_start_match4,{atom,no_fail},1,{y,3},{x,1}}.
    {move,{x,0},{y,1}}.
    {test,bs_skip_bits2,
          {f,111},
          [{x,1},
           {y,2},
           8,
           {field_flags,[{anno,[359,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_match,{f,111},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {skip,8},
                         {get_tail,2,1,{y,0}}]}}.
    {move,{y,2},{x,1}}.
    {move,{y,3},{x,0}}.
    {move,{y,0},{y,3}}.
    {move,{y,1},{y,2}}.
    {trim,2,2}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",360}]}.
    {call,2,{f,116}}. % bin_tail_c_var/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,
          {f,110},
          [{tr,{x,1},{t_integer,{0,255}}},{tr,{y,0},{t_integer,{0,255}}}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,
          {f,110},
          [{tr,{x,1},{t_bitstring,8,false}},{tr,{y,1},{t_bitstring,8,false}}]}.
    {move,{y,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,110}.
    {badmatch,{x,0}}.
  {label,111}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",359}]}.
    {badmatch,{y,3}}.


{function, bin_tail_c_dead, 2, 113}.
  {label,112}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",363}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,bin_tail_c_dead},2}.
  {label,113}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,5}}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {test,bs_skip_bits2,
          {f,114},
          [{x,0},
           {x,1},
           8,
           {field_flags,[{anno,[364,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_match,{f,114},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,1,{literal,[]},8,1,{x,0}}]}}.
    return.
  {label,114}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",364}]}.
    {badmatch,{x,0}}.


{function, bin_tail_c_var, 2, 116}.
  {label,115}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",367}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,bin_tail_c_var},2}.
  {label,116}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,5}}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {test,bs_skip_bits2,
          {f,117},
          [{x,0},
           {x,1},
           8,
           {field_flags,[{anno,[368,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_match,{f,117},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,1,{literal,[]},8,1,{x,1}},
                         {get_tail,2,1,{x,0}}]}}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,1},{x,0}]}}.
    return.
  {label,117}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",368}]}.
    {badmatch,{x,0}}.


{function, bin_tail_d, 2, 119}.
  {label,118}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",372}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,bin_tail_d},2}.
  {label,119}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,24}}}]}}.
    {allocate,4,2}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{x,1},{y,2}}.
    {move,{x,0},{y,3}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",373}]}.
    {call,2,{f,123}}. % bin_tail_d_dead/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {bs_start_match4,{atom,no_fail},1,{y,3},{x,1}}.
    {move,{x,0},{y,1}}.
    {test,bs_skip_bits2,
          {f,121},
          [{x,1},
           {y,2},
           1,
           {field_flags,[{anno,[374,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_match,{f,121},
              {x,1},
              {commands,[{ensure_at_least,8,8},
                         {skip,8},
                         {get_tail,2,8,{y,0}}]}}.
    {move,{y,2},{x,1}}.
    {move,{y,3},{x,0}}.
    {move,{y,0},{y,3}}.
    {move,{y,1},{y,2}}.
    {trim,2,2}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",375}]}.
    {call,2,{f,126}}. % bin_tail_d_var/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,
          {f,120},
          [{tr,{x,1},{t_integer,{0,255}}},{tr,{y,0},{t_integer,{0,255}}}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,
          {f,120},
          [{tr,{x,1},{t_bitstring,8,false}},{tr,{y,1},{t_bitstring,8,false}}]}.
    {move,{y,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,120}.
    {badmatch,{x,0}}.
  {label,121}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",374}]}.
    {badmatch,{y,3}}.


{function, bin_tail_d_dead, 2, 123}.
  {label,122}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",378}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,bin_tail_d_dead},2}.
  {label,123}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,40}}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {test,bs_skip_bits2,
          {f,124},
          [{x,0},
           {x,1},
           1,
           {field_flags,[{anno,[379,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_match,{f,124},
              {x,0},
              {commands,[{ensure_at_least,8,8},
                         {integer,1,{literal,[]},8,1,{x,1}}]}}.
    {move,{x,1},{x,0}}.
    return.
  {label,124}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",379}]}.
    {badmatch,{x,0}}.


{function, bin_tail_d_var, 2, 126}.
  {label,125}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",382}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,bin_tail_d_var},2}.
  {label,126}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,24}}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {test,bs_skip_bits2,
          {f,127},
          [{x,0},
           {x,1},
           1,
           {field_flags,[{anno,[383,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_match,{f,127},
              {x,0},
              {commands,[{ensure_at_least,8,8},
                         {integer,1,{literal,[]},8,1,{x,1}},
                         {get_tail,2,8,{x,0}}]}}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,1},{x,0}]}}.
    return.
  {label,127}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",383}]}.
    {badmatch,{x,0}}.


{function, bin_tail_e, 1, 129}.
  {label,128}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",386}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,bin_tail_e},1}.
  {label,129}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",387}]}.
    {call,1,{f,134}}. % bin_tail_e_dead/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,130},[{x,0},{atom,ok}]}.
    {bs_start_match4,{atom,no_fail},0,{y,1},{x,0}}.
    {bs_match,{f,132},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {skip,8},
                         {get_tail,1,1,{y,0}}]}}.
    {move,{y,1},{x,0}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",390}]}.
    {call,1,{f,137}}. % bin_tail_e_var/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[error]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,131},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,none,none,
                        {t_bitstring,8,false}}},
           {tr,{y,0},{t_bitstring,8,false}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,130}.
    {move,{y,1},{x,0}}.
    {call_last,1,{f,137},2}. % bin_tail_e_var/1
  {label,131}.
    {badmatch,{x,0}}.
  {label,132}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",389}]}.
    {badmatch,{y,1}}.


{function, bin_tail_e_dead, 1, 134}.
  {label,133}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",396}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,bin_tail_e_dead},1}.
  {label,134}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_match,{f,135},
              {x,0},
              {commands,[{ensure_at_least,8,8},
                         {'=:=',nil,2,2},
                         {skip,1},
                         {'=:=',nil,5,1}]}}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,135}.
    {move,{atom,error},{x,0}}.
    return.


{function, bin_tail_e_var, 1, 137}.
  {label,136}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",404}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,bin_tail_e_var},1}.
  {label,137}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_match,{f,138},
              {x,0},
              {commands,[{ensure_at_least,8,8},
                         {'=:=',nil,2,2},
                         {skip,1},
                         {'=:=',nil,5,1},
                         {get_tail,1,8,{x,0}}]}}.
    return.
  {label,138}.
    {move,{atom,error},{x,0}}.
    return.


{function, bin_tail_f, 3, 140}.
  {label,139}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",412}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,bin_tail_f},3}.
  {label,140}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{0,999}}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,3},3}.
    {bs_match,{f,142},
              {x,0},
              {commands,[{ensure_at_least,128,1},
                         {binary,4,{literal,[]},16,8,{x,4}}]}}.
    {test,bs_get_binary2,
          {f,141},
          5,
          [{tr,{x,0},{t_bs_context,8}},
           {tr,{x,2},{t_integer,{0,999}}},
           8,
           {field_flags,[{anno,[414,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,141},{x,0},{commands,[{ensure_exactly,0}]}}.
    {test,is_eq_exact,{f,142},[{tr,{x,4},{t_bitstring,8,false}},{x,1}]}.
    {move,{x,2},{x,0}}.
    return.
  {label,141}.
    {test,is_eq_exact,{f,142},[{tr,{x,4},{t_bitstring,8,false}},{x,1}]}.
    {move,{atom,error},{x,0}}.
    return.
  {label,142}.
    {bs_set_position,{x,0},{x,3}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",413}]}.
    {case_end,{x,0}}.


{function, save_restore, 1, 144}.
  {label,143}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",420}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,save_restore},1}.
  {label,144}.
    {test,is_list,{f,143},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",421}]}.
    {call,1,{f,167}}. % save_restore_1/1
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
         {integer,0}]}.
    {move,{literal,<<77,128>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",422}]}.
    {call,1,{f,167}}. % save_restore_1/1
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
         {literal,{1,3456}}]}.
    {move,{literal,<<128,121,200,178>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",423}]}.
    {call,1,{f,167}}. % save_restore_1/1
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
        {f,163},
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
    {line,[{location,"bs_match_dialyzer_SUITE.erl",424}]}.
    {call,1,{f,167}}. % save_restore_1/1
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
        {f,162},
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
    {line,[{location,"bs_match_dialyzer_SUITE.erl",430}]}.
    {call,1,{f,174}}. % lll/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_cons,{t_integer,{0,255}},nil},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
          {f,161},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_cons,{t_integer,{0,255}},nil},
                          2 => {t_bitstring,8,false}}}},
           {literal,{" ",<<"x">>}}]}.
    {move,{literal,<<" x">>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",431}]}.
    {call,1,{f,177}}. % mmm/1
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
    {move,{literal,<<" x">>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",432}]}.
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
          {f,159},
          [{tr,{x,0},
               {t_union,none,none,none,
                        {t_tuple,2,true,
                                 #{1 => {t_cons,{t_integer,{0,255}},nil},
                                   2 => {t_bitstring,8,false}}},
                        {t_bitstring,8,false}}},
           {literal,{" ",<<"x">>}}]}.
    {move,{literal,<<" x">>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",433}]}.
    {call,1,{f,189}}. % ooo/1
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
           {literal,{" ",<<"x">>}}]}.
    {move,{literal,<<".x">>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",435}]}.
    {call,1,{f,174}}. % lll/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_cons,{t_integer,{0,255}},nil},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
          {f,157},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_cons,{t_integer,{0,255}},nil},
                          2 => {t_bitstring,8,false}}}},
           {literal,{".",<<"x">>}}]}.
    {move,{literal,<<".x">>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",436}]}.
    {call,1,{f,177}}. % mmm/1
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
    {move,{literal,<<".x">>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",437}]}.
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
          {f,155},
          [{tr,{x,0},
               {t_union,none,none,none,
                        {t_tuple,2,true,
                                 #{1 => {t_cons,{t_integer,{0,255}},nil},
                                   2 => {t_bitstring,8,false}}},
                        {t_bitstring,8,false}}},
           {literal,{".",<<"x">>}}]}.
    {move,{literal,<<".x">>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",438}]}.
    {call,1,{f,189}}. % ooo/1
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
           {literal,{".",<<"x">>}}]}.
    {move,{literal,<<"-x">>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",440}]}.
    {call,1,{f,174}}. % lll/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_cons,{t_integer,{0,255}},nil},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
          {f,153},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_cons,{t_integer,{0,255}},nil},
                          2 => {t_bitstring,8,false}}}},
           {literal,{"-",<<"x">>}}]}.
    {move,{literal,<<"-x">>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",441}]}.
    {call,1,{f,177}}. % mmm/1
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
    {move,{literal,<<"-x">>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",442}]}.
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
          {f,151},
          [{tr,{x,0},
               {t_union,none,none,none,
                        {t_tuple,2,true,
                                 #{1 => {t_cons,{t_integer,{0,255}},nil},
                                   2 => {t_bitstring,8,false}}},
                        {t_bitstring,8,false}}},
           {literal,{"-",<<"x">>}}]}.
    {move,{literal,<<"-x">>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",443}]}.
    {call,1,{f,189}}. % ooo/1
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
          {f,150},
          [{tr,{x,0},
               {t_union,none,none,none,
                        {t_tuple,2,true,
                                 #{1 => {t_cons,{t_integer,{0,255}},nil},
                                   2 => {t_bitstring,8,false}}},
                        {t_bitstring,8,false}}},
           {literal,{"-",<<"x">>}}]}.
    {move,{literal,<<3,9>>},{x,1}}.
    {move,{literal,<<3,9>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",445}]}.
    {call,2,{f,193}}. % multiple_matches/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b,c,d]}}]}}.
    {test,is_eq_exact,{f,149},[{tr,{x,0},{t_atom,[a,b,c,d]}},{atom,a}]}.
    {move,{literal,<<3,231>>},{x,1}}.
    {move,{literal,<<3,9>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",446}]}.
    {call,2,{f,193}}. % multiple_matches/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b,c,d]}}]}}.
    {test,is_eq_exact,{f,148},[{tr,{x,0},{t_atom,[a,b,c,d]}},{atom,b}]}.
    {move,{literal,<<"9">>},{x,1}}.
    {move,{literal,<<3,9>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",447}]}.
    {call,2,{f,193}}. % multiple_matches/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b,c,d]}}]}}.
    {test,is_eq_exact,{f,147},[{tr,{x,0},{t_atom,[a,b,c,d]}},{atom,c}]}.
    {move,{literal,<<4,87>>},{x,1}}.
    {move,{literal,<<17>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",448}]}.
    {call,2,{f,193}}. % multiple_matches/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b,c,d]}}]}}.
    {test,is_eq_exact,{f,146},[{tr,{x,0},{t_atom,[a,b,c,d]}},{atom,d}]}.
    {move,{literal,<<"ÿÿÿÿÿÿÿÿ">>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",451}]}.
    {call,1,{f,199}}. % bad_float_unpack_match/1
    {'%',{var_info,{x,0},[{type,{t_number,any}}]}}.
    {test,is_eq_exact,{f,145},[{tr,{x,0},{t_number,any}},{integer,-1}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,145}.
    {move,{atom,bad_return_value_probably_NaN},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",453}]}.
    {call_ext_last,1,{extfunc,ct,fail,1},0}.
  {label,146}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",448}]}.
    {badmatch,{x,0}}.
  {label,147}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",447}]}.
    {badmatch,{x,0}}.
  {label,148}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",446}]}.
    {badmatch,{x,0}}.
  {label,149}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",445}]}.
    {badmatch,{x,0}}.
  {label,150}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",443}]}.
    {badmatch,{x,0}}.
  {label,151}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",442}]}.
    {badmatch,{x,0}}.
  {label,152}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",441}]}.
    {badmatch,{x,0}}.
  {label,153}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",440}]}.
    {badmatch,{x,0}}.
  {label,154}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",438}]}.
    {badmatch,{x,0}}.
  {label,155}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",437}]}.
    {badmatch,{x,0}}.
  {label,156}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",436}]}.
    {badmatch,{x,0}}.
  {label,157}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",435}]}.
    {badmatch,{x,0}}.
  {label,158}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",433}]}.
    {badmatch,{x,0}}.
  {label,159}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",432}]}.
    {badmatch,{x,0}}.
  {label,160}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",431}]}.
    {badmatch,{x,0}}.
  {label,161}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",430}]}.
    {badmatch,{x,0}}.
  {label,162}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",424}]}.
    {badmatch,{x,0}}.
  {label,163}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",423}]}.
    {badmatch,{x,0}}.
  {label,164}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",422}]}.
    {badmatch,{x,0}}.
  {label,165}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",421}]}.
    {badmatch,{x,0}}.


{function, save_restore_1, 1, 167}.
  {label,166}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",456}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,save_restore_1},1}.
  {label,167}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,171},
              {x,0},
              {commands,[{ensure_at_least,2,1},
                         {integer,2,{literal,[]},2,1,{x,2}}]}}.
    {select_val,{tr,{x,2},{t_integer,{0,3}}},
                {f,171},
                {list,[{integer,0},
                       {f,170},
                       {integer,1},
                       {f,169},
                       {integer,2},
                       {f,168}]}}.
  {label,168}.
    {bs_match,{f,171},
              {x,0},
              {commands,[{ensure_exactly,30},
                         {integer,2,{literal,[]},30,1,{x,2}}]}}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{integer,2},{x,2}]}}.
    return.
  {label,169}.
    {bs_match,{f,171},
              {x,0},
              {commands,[{ensure_exactly,14},
                         {integer,2,{literal,[]},14,1,{x,2}}]}}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{integer,1},{x,2}]}}.
    return.
  {label,170}.
    {bs_match,{f,171},{x,0},{commands,[{ensure_exactly,6}]}}.
    {move,{integer,0},{x,0}}.
    return.
  {label,171}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_match,{f,172},
              {x,0},
              {commands,[{ensure_exactly,64},
                         {integer,2,{literal,[]},64,1,{x,2}}]}}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{integer,3},{x,2}]}}.
    return.
  {label,172}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",457}]}.
    {case_end,{x,0}}.


{function, lll, 1, 174}.
  {label,173}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",464}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,lll},1}.
  {label,174}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,16,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,175},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,1,{literal,[]},8,1,{x,1}},
                         {get_tail,2,1,{x,0}}]}}.
    {test_heap,5,2}.
    {put_list,{x,1},nil,{x,1}}.
    {put_tuple2,{x,0},{list,[{x,1},{x,0}]}}.
    return.
  {label,175}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,173}}.


{function, mmm, 1, 177}.
  {label,176}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",466}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,mmm},1}.
  {label,177}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,16,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,181},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,1,{literal,[]},8,1,{x,1}}]}}.
    {bs_get_position,{x,0},{x,2},2}.
    {select_val,{tr,{x,1},{t_integer,{0,255}}},
                {f,180},
                {list,[{integer,32},{f,179},{integer,46},{f,178}]}}.
  {label,178}.
    {bs_match,{f,180},
              {x,0},
              {commands,[{ensure_at_least,16,1},
                         {'=:=',nil,16,11822},
                         {get_tail,1,1,{x,0}}]}}.
    return.
  {label,179}.
    {bs_match,{f,180},
              {x,0},
              {commands,[{ensure_at_least,16,1},
                         {'=:=',nil,16,11552},
                         {get_tail,1,1,{x,0}}]}}.
    return.
  {label,180}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {test_heap,5,2}.
    {put_list,{x,1},nil,{x,1}}.
    {put_tuple2,{x,0},{list,[{x,1},{x,0}]}}.
    return.
  {label,181}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,176}}.


{function, nnn, 1, 183}.
  {label,182}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",470}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,nnn},1}.
  {label,183}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,16,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,187},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,1,{literal,[]},8,1,{x,1}}]}}.
    {bs_get_position,{x,0},{x,2},2}.
    {select_val,{tr,{x,1},{t_integer,{0,255}}},
                {f,186},
                {list,[{integer,32},{f,185},{integer,46},{f,184}]}}.
  {label,184}.
    {bs_match,{f,186},
              {x,0},
              {commands,[{ensure_at_least,16,1},
                         {'=:=',nil,16,11822},
                         {get_tail,1,1,{x,0}}]}}.
    return.
  {label,185}.
    {bs_match,{f,186},
              {x,0},
              {commands,[{ensure_at_least,16,1},
                         {'=:=',nil,16,11552},
                         {get_tail,1,1,{x,0}}]}}.
    return.
  {label,186}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {test_heap,5,2}.
    {put_list,{x,1},nil,{x,1}}.
    {put_tuple2,{x,0},{list,[{x,1},{x,0}]}}.
    return.
  {label,187}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,182}}.


{function, ooo, 1, 189}.
  {label,188}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",474}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,ooo},1}.
  {label,189}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,16,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,191},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,1,{literal,[]},8,1,{x,1}}]}}.
    {bs_get_position,{x,0},{x,2},2}.
    {test,is_eq_exact,{f,190},[{tr,{x,1},{t_integer,{0,255}}},{integer,32}]}.
    {bs_match,{f,190},
              {x,0},
              {commands,[{ensure_at_least,16,1},
                         {'=:=',nil,16,11552},
                         {get_tail,1,1,{x,0}}]}}.
    return.
  {label,190}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {test_heap,5,2}.
    {put_list,{x,1},nil,{x,1}}.
    {put_tuple2,{x,0},{list,[{x,1},{x,0}]}}.
    return.
  {label,191}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,188}}.


{function, multiple_matches, 2, 193}.
  {label,192}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",477}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,multiple_matches},2}.
  {label,193}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {bs_match,{f,196},
              {x,0},
              {commands,[{ensure_exactly,16},
                         {integer,3,{literal,[]},16,1,{x,3}}]}}.
    {bs_start_match4,{atom,no_fail},4,{x,1},{x,4}}.
    {bs_get_position,{x,4},{x,5},5}.
    {bs_match,{f,195},
              {x,4},
              {commands,[{ensure_exactly,16},
                         {integer,6,{literal,[]},16,1,{x,6}}]}}.
    {test,is_eq_exact,
          {f,194},
          [{tr,{x,6},{t_integer,{0,65535}}},{tr,{x,3},{t_integer,{0,65535}}}]}.
    {move,{atom,a},{x,0}}.
    return.
  {label,194}.
    {move,{atom,b},{x,0}}.
    return.
  {label,195}.
    {bs_set_position,{x,4},{x,5}}.
    {bs_match,{f,196},{x,4},{commands,[{ensure_exactly,8}]}}.
    {move,{atom,c},{x,0}}.
    return.
  {label,196}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_match,{f,197},{x,0},{commands,[{ensure_exactly,8}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,2}}.
    {bs_match,{f,197},{x,2},{commands,[{ensure_exactly,16}]}}.
    {move,{atom,d},{x,0}}.
    return.
  {label,197}.
    {bs_get_tail,{x,0},{x,0},2}.
    {jump,{f,192}}.


{function, bad_float_unpack_match, 1, 199}.
  {label,198}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",482}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,bad_float_unpack_match},1}.
  {label,199}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,64,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {test,bs_get_float2,
          {f,200},
          2,
          [{tr,{x,0},{t_bs_context,64}},
           {integer,64},
           1,
           {field_flags,[{anno,[482,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,200},{x,0},{commands,[{ensure_exactly,0}]}}.
    {move,{x,2},{x,0}}.
    return.
  {label,200}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_match,{f,201},
              {x,0},
              {commands,[{ensure_exactly,64},
                         {integer,2,{literal,[signed]},64,1,{x,2}}]}}.
    {move,{x,2},{x,0}}.
    return.
  {label,201}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,198}}.


{function, partitioned_bs_match, 1, 203}.
  {label,202}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",486}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,partitioned_bs_match},1}.
  {label,203}.
    {test,is_list,{f,202},[{x,0}]}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{literal,<<42,1,2,3>>},{x,1}}.
    {move,{atom,blurf},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",487}]}.
    {call,2,{f,214}}. % partitioned_bs_match/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[error]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,212},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,none,none,
                        {t_bitstring,8,false}}},
           {literal,<<1,2,3>>}]}.
    {move,{literal,<<7,8,15,13>>},{x,1}}.
    {move,{integer,10},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",488}]}.
    {call,2,{f,214}}. % partitioned_bs_match/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[error]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,211},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,none,none,
                        {t_bitstring,8,false}}},
           {atom,error}]}.
    {move,{literal,{a,tuple,is,'not',a,binary}},{x,1}}.
    {move,{integer,100},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",489}]}.
    {call,2,{f,214}}. % partitioned_bs_match/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,<<>>},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",490}]}.
    {call,2,{f,214}}. % partitioned_bs_match/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[error,ok]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,210},
          [{tr,{x,0},
               {t_union,{t_atom,[error,ok]},
                        none,none,none,
                        {t_bitstring,8,false}}},
           {atom,ok}]}.
    {'catch',{y,2},{f,204}}.
    {move,{atom,blurf},{x,1}}.
    {move,{integer,-1},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",492}]}.
    {call,2,{f,214}}. % partitioned_bs_match/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,204}.
    {catch_end,{y,2}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[-1,blurf]},{x,1}}.
    {move,{atom,partitioned_bs_match},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_dialyzer_SUITE.erl",491}]}.
    {call,3,{f,885}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,1},{f,205}}.
    {move,{literal,<<1,2,3>>},{x,1}}.
    {move,{integer,-1},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_dialyzer_SUITE.erl",494}]}.
    {call,2,{f,214}}. % partitioned_bs_match/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[ok]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
  {label,205}.
    {catch_end,{y,1}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[-1,<<1,2,3>>]},{x,1}}.
    {move,{atom,partitioned_bs_match},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_dialyzer_SUITE.erl",493}]}.
    {call,3,{f,885}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<17,1,2,3>>},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_dialyzer_SUITE.erl",495}]}.
    {call,2,{f,219}}. % partitioned_bs_match_2/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
          {f,209},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,255}},
                          2 => {t_bitstring,8,false}}}},
           {literal,{17,<<1,2,3>>}}]}.
    {move,{literal,<<17,1,2,3>>},{x,1}}.
    {move,{integer,7},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",496}]}.
    {call,2,{f,219}}. % partitioned_bs_match_2/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{2,7}},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
          {f,208},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{2,7}},2 => {t_bitstring,8,false}}}},
           {literal,{7,<<1,2,3>>}}]}.
    {'catch',{y,0},{f,206}}.
    {move,{literal,<<0,0,0:1>>},{x,1}}.
    {move,{integer,4},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",499}]}.
    {call,2,{f,219}}. % partitioned_bs_match_2/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{2,7}},
                                     2 => {t_bitstring,8,false}}}}]}}.
  {label,206}.
    {catch_end,{y,0}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[4,<<0,0,0:1>>]},{x,1}}.
    {move,{atom,partitioned_bs_match_2},{x,0}}.
    {line,[{scope,[1,2]},{location,"bs_match_dialyzer_SUITE.erl",498}]}.
    {call,3,{f,885}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<"*">>},{x,1}}.
    {move,{atom,anything},{x,0}}.
    {line,[{scope,[1,2]},{location,"bs_match_dialyzer_SUITE.erl",501}]}.
    {call,2,{f,223}}. % partitioned_bs_match_3/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[anything]},
                                   none,
                                   {t_integer,{1,1}},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,207},
          [{tr,{x,0},
               {t_union,{t_atom,[anything]},none,{t_integer,{1,1}},none,none}},
           {atom,anything}]}.
    {move,{integer,2},{x,1}}.
    {move,{integer,1},{x,0}}.
    {call_last,2,{f,223},3}. % partitioned_bs_match_3/2
  {label,207}.
    {line,[{scope,[0]},{location,"bs_match_dialyzer_SUITE.erl",501}]}.
    {badmatch,{integer,1}}.
  {label,208}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",496}]}.
    {badmatch,{x,0}}.
  {label,209}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",495}]}.
    {badmatch,{x,0}}.
  {label,210}.
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",490}]}.
    {badmatch,{x,0}}.
  {label,211}.
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",488}]}.
    {badmatch,{x,0}}.
  {label,212}.
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",487}]}.
    {badmatch,{x,0}}.


{function, partitioned_bs_match, 2, 214}.
  {label,213}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",506}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,partitioned_bs_match},2}.
  {label,214}.
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
    {test,bs_start_match3,{f,216},2,[{x,1}],{x,2}}.
    {bs_get_position,{x,2},{x,1},3}.
    {bs_match,{f,215},
              {x,2},
              {commands,[{ensure_at_least,8,1},
                         {'=:=',nil,8,42},
                         {get_tail,3,1,{x,0}}]}}.
    return.
  {label,215}.
    {test,is_ge,
          {f,217},
          [{integer,0},
           {tr,{x,0},
               {t_union,{t_atom,[blurf]},
                        none,
                        {t_integer,{-1,100}},
                        none,none}}]}.
    {bs_set_position,{x,2},{x,1}}.
    {bs_get_tail,{x,2},{x,1},3}.
    {test,is_eq_exact,
          {f,213},
          [{tr,{x,1},{t_bitstring,8,false}},{literal,<<>>}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,216}.
    {test,is_lt,
          {f,213},
          [{integer,0},
           {tr,{x,0},
               {t_union,{t_atom,[blurf]},
                        none,
                        {t_integer,{-1,100}},
                        none,none}}]}.
  {label,217}.
    {move,{atom,error},{x,0}}.
    return.


{function, partitioned_bs_match_2, 2, 219}.
  {label,218}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",513}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,partitioned_bs_match_2},2}.
  {label,219}.
    {'%',{var_info,{x,0},[{type,{t_integer,{1,7}}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_bitstring,1,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {bs_match,{f,221},
              {x,1},
              {commands,[{ensure_at_least,8,8},
                         {integer,2,{literal,[]},8,1,{x,2}},
                         {get_tail,3,8,{x,1}}]}}.
    {test,is_eq_exact,{f,220},[{tr,{x,0},{t_integer,{1,7}}},{integer,1}]}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{x,2},{x,1}]}}.
    return.
  {label,220}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    return.
  {label,221}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_get_tail,{x,1},{x,1},2}.
    {jump,{f,218}}.


{function, partitioned_bs_match_3, 2, 223}.
  {label,222}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",518}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,partitioned_bs_match_3},2}.
  {label,223}.
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
    {test,bs_start_match3,{f,225},2,[{x,1}],{x,1}}.
    {bs_match,{f,224},{x,1},{commands,[{ensure_exactly,8}]}}.
    return.
  {label,224}.
    {bs_get_tail,{x,1},{x,1},2}.
    {jump,{f,222}}.
  {label,225}.
    {test,is_eq_exact,
          {f,226},
          [{tr,{x,0},
               {t_union,{t_atom,[anything]},none,{t_integer,{1,1}},none,none}},
           {integer,1}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,226}.
    {move,{integer,2},{x,1}}.
    {move,{atom,anything},{x,0}}.
    {jump,{f,222}}.


{function, function_clause, 1, 228}.
  {label,227}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",521}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,function_clause},1}.
  {label,228}.
    {test,is_list,{f,227},[{x,0}]}.
    {allocate,4,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3}]}}.
    {move,{literal,<<0,7,0,7,42>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",522}]}.
    {call,1,{f,234}}. % function_clause_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,3},{f,229}}.
    {move,{literal,<<0,1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",524}]}.
    {call,1,{f,234}}. % function_clause_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,229}.
    {catch_end,{y,3}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<0,1,2,3>>]},{x,1}}.
    {move,{atom,function_clause_1},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_dialyzer_SUITE.erl",523}]}.
    {call,3,{f,885}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,2},{f,230}}.
    {move,{literal,<<0,7,0,1,2,3>>},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_dialyzer_SUITE.erl",526}]}.
    {call,1,{f,234}}. % function_clause_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,230}.
    {catch_end,{y,2}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<0,1,2,3>>]},{x,1}}.
    {move,{atom,function_clause_1},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_dialyzer_SUITE.erl",525}]}.
    {call,3,{f,885}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<0,7,0,7,42>>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_dialyzer_SUITE.erl",528}]}.
    {call,1,{f,238}}. % function_clause_2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<"ÿ">>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_dialyzer_SUITE.erl",529}]}.
    {call,1,{f,238}}. % function_clause_2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<13:4>>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_dialyzer_SUITE.erl",530}]}.
    {call,1,{f,238}}. % function_clause_2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,1},{f,231}}.
    {move,{literal,<<0,1,2,3>>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_dialyzer_SUITE.erl",532}]}.
    {call,1,{f,238}}. % function_clause_2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,231}.
    {catch_end,{y,1}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<0,1,2,3>>]},{x,1}}.
    {move,{atom,function_clause_2},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_dialyzer_SUITE.erl",531}]}.
    {call,3,{f,885}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,0},{f,232}}.
    {move,{literal,<<0,7,0,1,2,3>>},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_dialyzer_SUITE.erl",534}]}.
    {call,1,{f,238}}. % function_clause_2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,232}.
    {catch_end,{y,0}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<0,1,2,3>>]},{x,1}}.
    {move,{atom,function_clause_2},{x,0}}.
    {call_last,3,{f,885},4}. % fc/3


{function, function_clause_1, 1, 234}.
  {label,233}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",538}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,function_clause_1},1}.
  {label,234}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,236},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {bs_get_position,{x,0},{x,3},3}.
    {test,is_eq_exact,{f,235},[{tr,{x,2},{t_integer,{0,255}}},{integer,0}]}.
    {bs_match,{f,235},
              {x,0},
              {commands,[{ensure_at_least,8,1},{'=:=',nil,8,7}]}}.
    {call_only,1,{f,234}}. % function_clause_1/1
  {label,235}.
    {bs_set_position,{x,0},{x,3}}.
    {bs_match,{f,236},{x,0},{commands,[{ensure_exactly,0}]}}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,236}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,233}}.


{function, function_clause_2, 1, 238}.
  {label,237}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",543}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,function_clause_2},1}.
  {label,238}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,4}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,240},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {bs_get_position,{x,0},{x,3},3}.
    {test,is_eq_exact,{f,239},[{tr,{x,2},{t_integer,{0,255}}},{integer,0}]}.
    {bs_match,{f,239},
              {x,0},
              {commands,[{ensure_at_least,8,1},{'=:=',nil,8,7}]}}.
    {bs_match,{f,240},{x,0},{commands,[{ensure_at_least,0,8}]}}.
    {call_only,1,{f,238}}. % function_clause_2/1
  {label,239}.
    {bs_set_position,{x,0},{x,3}}.
    {bs_match,{f,240},{x,0},{commands,[{ensure_exactly,0}]}}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,240}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_match,{f,241},{x,0},{commands,[{ensure_exactly,4}]}}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,241}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,237}}.


{function, unit, 1, 243}.
  {label,242}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",550}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,unit},1}.
  {label,243}.
    {test,is_list,{f,242},[{x,0}]}.
    {allocate,7,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3},{y,4},{y,5},{y,6}]}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",551}]}.
    {call,1,{f,271}}. % peek1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,269},[{tr,{x,0},{t_integer,{0,255}}},{integer,42}]}.
    {move,{literal,<<43,1,2>>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_dialyzer_SUITE.erl",552}]}.
    {call,1,{f,271}}. % peek1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,268},[{tr,{x,0},{t_integer,{0,255}}},{integer,43}]}.
    {move,{literal,<<43,1,2,1:1>>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_dialyzer_SUITE.erl",553}]}.
    {call,1,{f,271}}. % peek1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,267},[{tr,{x,0},{t_integer,{0,255}}},{integer,43}]}.
    {move,{literal,<<43,1,2,3:2>>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_dialyzer_SUITE.erl",554}]}.
    {call,1,{f,271}}. % peek1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,266},[{tr,{x,0},{t_integer,{0,255}}},{integer,43}]}.
    {move,{literal,<<43,1,2,127:7>>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_dialyzer_SUITE.erl",555}]}.
    {call,1,{f,271}}. % peek1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,265},[{tr,{x,0},{t_integer,{0,255}}},{integer,43}]}.
    {move,{literal,<<"c">>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_dialyzer_SUITE.erl",557}]}.
    {call,1,{f,277}}. % peek8/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,264},[{tr,{x,0},{t_integer,{0,255}}},{integer,99}]}.
    {move,{literal,<<"de">>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_dialyzer_SUITE.erl",558}]}.
    {call,1,{f,277}}. % peek8/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,263},[{tr,{x,0},{t_integer,{0,255}}},{integer,100}]}.
    {'catch',{y,6},{f,244}}.
    {move,{literal,<<100,101,0:1>>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_dialyzer_SUITE.erl",559}]}.
    {call,1,{f,277}}. % peek8/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
  {label,244}.
    {catch_end,{y,6}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<100,101,0:1>>]},{x,1}}.
    {move,{atom,peek8},{x,0}}.
    {line,[{scope,[13,14]},{location,"bs_match_dialyzer_SUITE.erl",559}]}.
    {call,3,{f,885}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<146,108>>},{x,0}}.
    {line,[{scope,[13,14]},{location,"bs_match_dialyzer_SUITE.erl",561}]}.
    {call,1,{f,280}}. % peek16/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,65535}}}]}}.
    {test,is_eq_exact,
          {f,262},
          [{tr,{x,0},{t_integer,{0,65535}}},{integer,37484}]}.
    {move,{literal,<<146,113,21,190>>},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_match_dialyzer_SUITE.erl",562}]}.
    {call,1,{f,280}}. % peek16/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,65535}}}]}}.
    {test,is_eq_exact,
          {f,261},
          [{tr,{x,0},{t_integer,{0,65535}}},{integer,37489}]}.
    {'catch',{y,5},{f,245}}.
    {move,{literal,<<"\b">>},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_match_dialyzer_SUITE.erl",563}]}.
    {call,1,{f,280}}. % peek16/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,65535}}}]}}.
  {label,245}.
    {catch_end,{y,5}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<"\b">>]},{x,1}}.
    {move,{atom,peek16},{x,0}}.
    {line,[{scope,"\v\f"},{location,"bs_match_dialyzer_SUITE.erl",563}]}.
    {call,3,{f,885}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,4},{f,246}}.
    {move,{literal,<<0,42:7>>},{x,0}}.
    {line,[{scope,"\v\f"},{location,"bs_match_dialyzer_SUITE.erl",564}]}.
    {call,1,{f,280}}. % peek16/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,65535}}}]}}.
  {label,246}.
    {catch_end,{y,4}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<0,42:7>>]},{x,1}}.
    {move,{atom,peek16},{x,0}}.
    {line,[{scope,"\t\n"},{location,"bs_match_dialyzer_SUITE.erl",564}]}.
    {call,3,{f,885}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,3},{f,247}}.
    {move,{literal,<<1,2,3,4,5>>},{x,0}}.
    {line,[{scope,"\t\n"},{location,"bs_match_dialyzer_SUITE.erl",565}]}.
    {call,1,{f,280}}. % peek16/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,65535}}}]}}.
  {label,247}.
    {catch_end,{y,3}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<1,2,3,4,5>>]},{x,1}}.
    {move,{atom,peek16},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_dialyzer_SUITE.erl",565}]}.
    {call,3,{f,885}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<127:7>>},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_dialyzer_SUITE.erl",567}]}.
    {call,1,{f,274}}. % peek7/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,127}}}]}}.
    {test,is_eq_exact,{f,260},[{tr,{x,0},{t_integer,{0,127}}},{integer,127}]}.
    {move,{literal,<<200,19:6>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",568}]}.
    {call,1,{f,274}}. % peek7/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,127}}}]}}.
    {test,is_eq_exact,{f,259},[{tr,{x,0},{t_integer,{0,127}}},{integer,100}]}.
    {'catch',{y,2},{f,248}}.
    {move,{literal,<<1,2>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",569}]}.
    {call,1,{f,274}}. % peek7/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,127}}}]}}.
  {label,248}.
    {catch_end,{y,2}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<1,2>>]},{x,1}}.
    {move,{atom,peek7},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_dialyzer_SUITE.erl",569}]}.
    {call,3,{f,885}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,-1},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_dialyzer_SUITE.erl",571}]}.
    {call,2,{f,283}}. % unit_opt/2
    {'%',{var_info,{x,0},[{type,{t_integer,{1,8}}}]}}.
    {test,is_eq_exact,{f,258},[{tr,{x,0},{t_integer,{1,8}}},{integer,1}]}.
    {move,{integer,-1},{x,1}}.
    {move,{integer,8},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",572}]}.
    {call,2,{f,283}}. % unit_opt/2
    {'%',{var_info,{x,0},[{type,{t_integer,{1,8}}}]}}.
    {test,is_eq_exact,{f,257},[{tr,{x,0},{t_integer,{1,8}}},{integer,8}]}.
    {move,{literal,<<0,0,0,1,97,98,99>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",574}]}.
    {call,1,{f,290}}. % unit_opt_2/1
    {test,is_eq_exact,{f,256},[{x,0},{literal,<<0,0,0,1,97,98,99>>}]}.
    {move,{literal,<<0,0,0,2,100,101,102>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",575}]}.
    {call,1,{f,290}}. % unit_opt_2/1
    {test,is_eq_exact,{f,255},[{x,0},{literal,<<"def">>}]}.
    {'catch',{y,1},{f,249}}.
    {move,{literal,<<0,0,0,1,33:7>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",576}]}.
    {call,1,{f,290}}. % unit_opt_2/1
  {label,249}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,254},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,0},{f,250}}.
    {move,{literal,<<0,0,0,2,55:7>>},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_dialyzer_SUITE.erl",577}]}.
    {call,1,{f,290}}. % unit_opt_2/1
  {label,250}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,253},[{x,0},2,{atom,'EXIT'}]}.
    {move,{literal,<<0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1>>},{x,0}}.
    {line,[{scope,[1,2]},{location,"bs_match_dialyzer_SUITE.erl",579}]}.
    {call,1,{f,297}}. % unit_opt_3/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,252},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<0,0,0,0,0,0,0,0>>}]}.
    {move,{literal,<<0,0,0,0,0,0,0,1>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_dialyzer_SUITE.erl",580}]}.
    {call,1,{f,297}}. % unit_opt_3/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,251},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<0,0,0,0,0,0,0,1>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,7}.
    return.
  {label,251}.
    {badmatch,{x,0}}.
  {label,252}.
    {line,[{scope,[0]},{location,"bs_match_dialyzer_SUITE.erl",579}]}.
    {badmatch,{x,0}}.
  {label,253}.
    {line,[{scope,[0]},{location,"bs_match_dialyzer_SUITE.erl",577}]}.
    {badmatch,{x,0}}.
  {label,254}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",576}]}.
    {badmatch,{x,0}}.
  {label,255}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",575}]}.
    {badmatch,{x,0}}.
  {label,256}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",574}]}.
    {badmatch,{x,0}}.
  {label,257}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",572}]}.
    {badmatch,{x,0}}.
  {label,258}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",571}]}.
    {badmatch,{x,0}}.
  {label,259}.
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",568}]}.
    {badmatch,{x,0}}.
  {label,260}.
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",567}]}.
    {badmatch,{x,0}}.
  {label,261}.
    {line,[{scope,"\f"},{location,"bs_match_dialyzer_SUITE.erl",562}]}.
    {badmatch,{x,0}}.
  {label,262}.
    {line,[{scope,"\f"},{location,"bs_match_dialyzer_SUITE.erl",561}]}.
    {badmatch,{x,0}}.
  {label,263}.
    {line,[{scope,[14]},{location,"bs_match_dialyzer_SUITE.erl",558}]}.
    {badmatch,{x,0}}.
  {label,264}.
    {line,[{scope,[14]},{location,"bs_match_dialyzer_SUITE.erl",557}]}.
    {badmatch,{x,0}}.
  {label,265}.
    {line,[{scope,[14]},{location,"bs_match_dialyzer_SUITE.erl",555}]}.
    {badmatch,{x,0}}.
  {label,266}.
    {line,[{scope,[14]},{location,"bs_match_dialyzer_SUITE.erl",554}]}.
    {badmatch,{x,0}}.
  {label,267}.
    {line,[{scope,[14]},{location,"bs_match_dialyzer_SUITE.erl",553}]}.
    {badmatch,{x,0}}.
  {label,268}.
    {line,[{scope,[14]},{location,"bs_match_dialyzer_SUITE.erl",552}]}.
    {badmatch,{x,0}}.
  {label,269}.
    {line,[{scope,[14]},{location,"bs_match_dialyzer_SUITE.erl",551}]}.
    {badmatch,{x,0}}.


{function, peek1, 1, 271}.
  {label,270}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",584}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,peek1},1}.
  {label,271}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,1,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,272},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,1,{literal,[]},8,1,{x,0}}]}}.
    return.
  {label,272}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,270}}.


{function, peek7, 1, 274}.
  {label,273}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",586}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,peek7},1}.
  {label,274}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,1,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,275},
              {x,0},
              {commands,[{ensure_at_least,7,7},
                         {integer,1,{literal,[]},7,1,{x,1}}]}}.
    {move,{x,1},{x,0}}.
    return.
  {label,275}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,273}}.


{function, peek8, 1, 277}.
  {label,276}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",588}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,peek8},1}.
  {label,277}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,1,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,278},
              {x,0},
              {commands,[{ensure_at_least,8,8},
                         {integer,1,{literal,[]},8,1,{x,1}}]}}.
    {move,{x,1},{x,0}}.
    return.
  {label,278}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,276}}.


{function, peek16, 1, 280}.
  {label,279}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",590}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,peek16},1}.
  {label,280}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,1,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,281},
              {x,0},
              {commands,[{ensure_at_least,16,16},
                         {integer,1,{literal,[]},16,1,{x,1}}]}}.
    {move,{x,1},{x,0}}.
    return.
  {label,281}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,279}}.


{function, unit_opt, 2, 283}.
  {label,282}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",592}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,unit_opt},2}.
  {label,283}.
    {'%',{var_info,{x,0},[{type,{t_integer,{1,8}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{-1,-1}}}]}}.
    {select_val,{tr,{x,0},{t_integer,{1,8}}},
                {f,288},
                {list,[{integer,1},{f,285},{integer,8},{f,284}]}}.
  {label,284}.
    {move,{literal,<<"ÿ">>},{x,0}}.
    {jump,{f,286}}.
  {label,285}.
    {move,{literal,<<127:7>>},{x,0}}.
  {label,286}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_match,{f,287},{x,0},{commands,[{ensure_at_least,0,8}]}}.
    {move,{integer,8},{x,0}}.
    return.
  {label,287}.
    {move,{integer,1},{x,0}}.
    return.
  {label,288}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",594}]}.
    {case_end,{x,0}}.


{function, unit_opt_2, 1, 290}.
  {label,289}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",604}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,unit_opt_2},1}.
  {label,290}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,1,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,294},
              {x,0},
              {commands,[{ensure_at_least,32,8},
                         {integer,2,{literal,[]},32,1,{x,2}},
                         {get_tail,3,8,{x,3}}]}}.
    {select_val,{tr,{x,2},{t_integer,{0,4294967295}}},
                {f,295},
                {list,[{integer,1},{f,292},{integer,2},{f,291}]}}.
  {label,291}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",609}]}.
    {bs_create_bin,{f,0},
                   0,4,8,
                   {x,0},
                   {list,[{atom,append},
                          1,8,nil,
                          {tr,{x,3},{t_bitstring,8,false}},
                          {atom,all}]}}.
    {jump,{f,293}}.
  {label,292}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
  {label,293}.
    {call_only,1,{f,1776}}. % id/1
  {label,294}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,289}}.
  {label,295}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",605}]}.
    if_end.


{function, unit_opt_3, 1, 297}.
  {label,296}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",613}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,unit_opt_3},1}.
  {label,297}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,64,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_match,{f,298},
              {x,1},
              {commands,[{ensure_at_least,64,1},
                         {binary,2,{literal,[]},8,8,{x,0}}]}}.
    return.
  {label,298}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",617}]}.
    {badmatch,{x,0}}.


{function, shared_sub_bins, 1, 300}.
  {label,299}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",620}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,shared_sub_bins},1}.
  {label,300}.
    {test,is_list,{f,299},[{x,0}]}.
    {allocate,0,0}.
    {move,nil,{x,1}}.
    {move,{integer,0},{x,2}}.
    {move,{literal,<<1,2,3,4,5>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",621}]}.
    {call,3,{f,303}}. % sum/3
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_integer,{0,'+inf'}},
                       2 => {t_list,{t_bitstring,8,false},nil}}}}]}}.
    {test,is_eq_exact,
          {f,301},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_list,{t_bitstring,8,false},nil}}}},
           {literal,{15,[<<>>,<<5>>,<<4,5>>,<<3,4,5>>,<<2,3,4,5>>]}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,301}.
    {badmatch,{x,0}}.


{function, sum, 3, 303}.
  {label,302}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",624}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,sum},3}.
  {label,303}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{0,'+inf'}}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {bs_match,{f,304},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",625}]}.
    {gc_bif,'+',
            {f,0},
            4,
            [{tr,{x,2},{t_integer,{0,'+inf'}}},{tr,{x,3},{t_integer,{0,255}}}],
            {x,2}}.
    {bs_get_tail,{x,0},{x,3},3}.
    {test_heap,2,4}.
    {put_list,{x,3},{x,1},{x,1}}.
    {call_only,3,{f,303}}. % sum/3
  {label,304}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{x,2},{x,1}]}}.
    return.


{function, bin_and_float, 1, 306}.
  {label,305}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",629}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,bin_and_float},1}.
  {label,306}.
    {test,is_list,{f,305},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{float,0.0},{x,1}}.
    {move,{literal,<<63,240,0,0,0,0,0,0,64,0,0,0,0,0,0,0,64,8,0,0,0,0,0,0>>},
          {x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",630}]}.
    {call,2,{f,310}}. % bin_and_float/2
    {'%',{var_info,{x,0},[{type,{t_float,any}}]}}.
    {test,is_eq_exact,{f,308},[{tr,{x,0},{t_float,any}},{float,14.0}]}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",632}]}.
    {call,1,{f,1776}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,2}}.
    {trim,1,0}.
    {move,{literal,<<0,0,0,2:6>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",633}]}.
    {call,3,{f,1940}}. % '-bin_and_float/1-lbc$^0/2-0-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {test,is_eq_exact,
          {f,307},
          [{tr,{x,0},{t_bitstring,8,true}},{literal,<<>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,307}.
    {badmatch,{x,0}}.
  {label,308}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",630}]}.
    {badmatch,{x,0}}.


{function, bin_and_float, 2, 310}.
  {label,309}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",637}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,bin_and_float},2}.
  {label,310}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,64}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_float,any}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {test,bs_get_float2,
          {f,311},
          3,
          [{tr,{x,0},{t_bs_context,64}},
           {integer,64},
           1,
           {field_flags,[{anno,[637,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_float2,
          {f,311},
          4,
          [{tr,{x,0},{t_bs_context,64}},
           {integer,64},
           1,
           {field_flags,[{anno,[637,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_float2,
          {f,311},
          5,
          [{tr,{x,0},{t_bs_context,64}},
           {integer,64},
           1,
           {field_flags,[{anno,[637,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {fmove,{x,3},{fr,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",640}]}.
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
    {call_only,2,{f,310}}. % bin_and_float/2
  {label,311}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_match,{f,312},{x,0},{commands,[{ensure_exactly,0}]}}.
    {move,{x,1},{x,0}}.
    return.
  {label,312}.
    {bs_get_tail,{x,0},{x,0},2}.
    {jump,{f,309}}.


{function, dec_subidentifiers, 1, 314}.
  {label,313}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",643}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,dec_subidentifiers},1}.
  {label,314}.
    {test,is_list,{f,313},[{x,0}]}.
    {allocate,0,0}.
    {move,nil,{x,2}}.
    {move,{integer,0},{x,1}}.
    {move,{integer,2},{x,3}}.
    {move,{literal,<<170,227,1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",645}]}.
    {call,4,{f,319}}. % do_dec_subidentifiers/4
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_list,{t_integer,any},nil},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
          {f,317},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_list,{t_integer,any},nil},
                          2 => {t_bitstring,8,false}}}},
           {literal,{[],<<1,2,3>>}}]}.
    {move,nil,{x,2}}.
    {move,{integer,0},{x,1}}.
    {move,{integer,2},{x,3}}.
    {move,{literal,<<170,13,1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",646}]}.
    {call,4,{f,319}}. % do_dec_subidentifiers/4
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_list,{t_integer,any},nil},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
          {f,316},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_list,{t_integer,any},nil},
                          2 => {t_bitstring,8,false}}}},
           {literal,{[5389],<<1,2,3>>}}]}.
    {move,{literal,[1,2,3]},{x,2}}.
    {move,{atom,any},{x,1}}.
    {move,{integer,0},{x,3}}.
    {move,{atom,not_a_binary},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",647}]}.
    {call,4,{f,324}}. % dec_subidentifiers/4
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
        {f,315},
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
  {label,315}.
    {badmatch,{x,0}}.
  {label,316}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",646}]}.
    {badmatch,{x,0}}.
  {label,317}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",644}]}.
    {badmatch,{x,0}}.


{function, do_dec_subidentifiers, 4, 319}.
  {label,318}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",650}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,do_dec_subidentifiers},4}.
  {label,319}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,0}}}]}}.
    {'%',{var_info,{x,2},[{type,nil}]}}.
    {'%',{var_info,{x,3},[{type,{t_integer,{2,2}}}]}}.
    {allocate,2,4}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",651}]}.
    {call,4,{f,324}}. % dec_subidentifiers/4
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
    {line,[{location,"bs_match_dialyzer_SUITE.erl",652}]}.
    {call,4,{f,328}}. % dec_subidentifiers2/4
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_list,{t_integer,any},nil},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
        {f,322},
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
    {line,[{location,"bs_match_dialyzer_SUITE.erl",653}]}.
    {call,4,{f,337}}. % dec_subidentifiers4/4
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_list,{t_integer,any},nil},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
          {f,321},
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
    {line,[{location,"bs_match_dialyzer_SUITE.erl",654}]}.
    {call,4,{f,333}}. % dec_subidentifiers3/4
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
           {tr,{y,0},
               {t_tuple,2,true,
                        #{1 => {t_list,{t_integer,any},nil},
                          2 => {t_bitstring,8,false}}}}]}.
    {deallocate,1}.
    return.
  {label,320}.
    {badmatch,{x,0}}.
  {label,321}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",653}]}.
    {badmatch,{x,0}}.
  {label,322}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",652}]}.
    {badmatch,{x,0}}.


{function, dec_subidentifiers, 4, 324}.
  {label,323}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",656}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,dec_subidentifiers},4}.
  {label,324}.
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
    {test,is_eq_exact,{f,325},[{tr,{x,3},{t_integer,{'-inf',2}}},{integer,0}]}.
    {allocate,1,3}.
    {move,{x,0},{y,0}}.
    {move,{x,2},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",657}]}.
    {call_ext,1,{extfunc,lists,reverse,1}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{x,0},{y,0}]}}.
    {deallocate,1}.
    return.
  {label,325}.
    {test,bs_start_match3,{f,323},4,[{x,0}],{x,4}}.
    {bs_get_position,{x,4},{x,5},5}.
    {bs_match,{f,326},
              {x,4},
              {commands,[{ensure_at_least,1,1},
                         {integer,6,{literal,[]},1,1,{x,6}}]}}.
    {test,is_eq_exact,{f,326},[{tr,{x,6},{t_integer,{0,1}}},{integer,1}]}.
    {bs_match,{f,326},
              {x,4},
              {commands,[{ensure_at_least,7,8},
                         {integer,5,{literal,[]},7,1,{x,0}},
                         {get_tail,5,8,{x,4}}]}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",659}]}.
    {gc_bif,'bsl',
            {f,0},
            5,
            [{tr,{x,1},
                 {t_union,{t_atom,[any]},none,{t_integer,any},none,none}},
             {integer,7}],
            {x,1}}.
    {gc_bif,'bor',
            {f,0},
            5,
            [{tr,{x,1},{t_integer,any}},{tr,{x,0},{t_integer,{0,127}}}],
            {x,0}}.
    {gc_bif,'-',{f,0},5,[{tr,{x,3},{t_integer,{'-inf',2}}},{integer,1}],{x,3}}.
    {move,{x,0},{x,1}}.
    {move,{x,4},{x,0}}.
    {call_only,4,{f,324}}. % dec_subidentifiers/4
  {label,326}.
    {bs_set_position,{x,4},{x,5}}.
    {bs_match,{f,323},
              {x,4},
              {commands,[{ensure_at_least,8,1},
                         {integer,5,{literal,[]},8,1,{x,0}},
                         {get_tail,5,1,{x,4}}]}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",661}]}.
    {gc_bif,'bsl',
            {f,0},
            5,
            [{tr,{x,1},
                 {t_union,{t_atom,[any]},none,{t_integer,any},none,none}},
             {integer,7}],
            {x,1}}.
    {gc_bif,'bor',
            {f,0},
            5,
            [{tr,{x,1},{t_integer,any}},{tr,{x,0},{t_integer,{0,255}}}],
            {x,0}}.
    {gc_bif,'-',{f,0},5,[{tr,{x,3},{t_integer,{'-inf',2}}},{integer,1}],{x,1}}.
    {test_heap,2,5}.
    {put_list,{x,0},{x,2},{x,2}}.
    {move,{x,1},{x,3}}.
    {move,{integer,0},{x,1}}.
    {move,{x,4},{x,0}}.
    {call_only,4,{f,324}}. % dec_subidentifiers/4


{function, dec_subidentifiers2, 4, 328}.
  {label,327}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",663}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,dec_subidentifiers2},4}.
  {label,328}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,any}}]}}.
    {'%',{var_info,{x,2},[{type,{t_list,{t_integer,any},nil}}]}}.
    {'%',{var_info,{x,3},[{type,{t_integer,{'-inf',2}}}]}}.
    {bs_start_match4,{atom,no_fail},4,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,4},4}.
    {bs_get_tail,{x,0},{x,5},5}.
    {test,is_eq_exact,{f,329},[{tr,{x,3},{t_integer,{'-inf',2}}},{integer,0}]}.
    {allocate,1,6}.
    {move,{x,5},{y,0}}.
    {move,{x,2},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",664}]}.
    {call_ext,1,{extfunc,lists,reverse,1}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{x,0},{y,0}]}}.
    {deallocate,1}.
    return.
  {label,329}.
    {bs_match,{f,330},
              {x,0},
              {commands,[{ensure_at_least,1,1},
                         {integer,5,{literal,[]},1,1,{x,5}}]}}.
    {test,is_eq_exact,{f,330},[{tr,{x,5},{t_integer,{0,1}}},{integer,1}]}.
    {bs_match,{f,330},
              {x,0},
              {commands,[{ensure_at_least,7,8},
                         {integer,4,{literal,[]},7,1,{x,4}}]}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",666}]}.
    {gc_bif,'bsl',{f,0},5,[{tr,{x,1},{t_integer,any}},{integer,7}],{x,1}}.
    {gc_bif,'bor',
            {f,0},
            5,
            [{tr,{x,1},{t_integer,any}},{tr,{x,4},{t_integer,{0,127}}}],
            {x,1}}.
    {gc_bif,'-',{f,0},4,[{tr,{x,3},{t_integer,{'-inf',2}}},{integer,1}],{x,3}}.
    {call_only,4,{f,328}}. % dec_subidentifiers2/4
  {label,330}.
    {bs_set_position,{x,0},{x,4}}.
    {bs_match,{f,331},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,4,{literal,[]},8,1,{x,4}}]}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",668}]}.
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
    {call_only,4,{f,328}}. % dec_subidentifiers2/4
  {label,331}.
    {bs_set_position,{x,0},{x,4}}.
    {bs_get_tail,{x,0},{x,0},4}.
    {jump,{f,327}}.


{function, dec_subidentifiers3, 4, 333}.
  {label,332}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",670}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,dec_subidentifiers3},4}.
  {label,333}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,any}}]}}.
    {'%',{var_info,{x,2},[{type,{t_list,{t_integer,any},nil}}]}}.
    {'%',{var_info,{x,3},[{type,{t_integer,{'-inf',2}}}]}}.
    {test,is_eq_exact,{f,334},[{tr,{x,3},{t_integer,{'-inf',2}}},{integer,0}]}.
    {allocate,1,3}.
    {move,{x,0},{y,0}}.
    {move,{x,2},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",671}]}.
    {call_ext,1,{extfunc,lists,reverse,1}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{x,0},{y,0}]}}.
    {deallocate,1}.
    return.
  {label,334}.
    {bs_start_match4,{atom,no_fail},4,{x,0},{x,4}}.
    {bs_get_position,{x,4},{x,5},5}.
    {bs_match,{f,335},
              {x,4},
              {commands,[{ensure_at_least,1,1},
                         {integer,6,{literal,[]},1,1,{x,6}}]}}.
    {test,is_eq_exact,{f,335},[{tr,{x,6},{t_integer,{0,1}}},{integer,1}]}.
    {bs_match,{f,335},
              {x,4},
              {commands,[{ensure_at_least,7,8},
                         {integer,5,{literal,[]},7,1,{x,0}},
                         {get_tail,5,8,{x,4}}]}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",673}]}.
    {gc_bif,'bsl',{f,0},5,[{tr,{x,1},{t_integer,any}},{integer,7}],{x,1}}.
    {gc_bif,'bor',
            {f,0},
            5,
            [{tr,{x,1},{t_integer,any}},{tr,{x,0},{t_integer,{0,127}}}],
            {x,0}}.
    {gc_bif,'-',{f,0},5,[{tr,{x,3},{t_integer,{'-inf',2}}},{integer,1}],{x,3}}.
    {move,{x,0},{x,1}}.
    {move,{x,4},{x,0}}.
    {call_only,4,{f,333}}. % dec_subidentifiers3/4
  {label,335}.
    {bs_set_position,{x,4},{x,5}}.
    {bs_match,{f,332},
              {x,4},
              {commands,[{ensure_at_least,8,1},
                         {integer,5,{literal,[]},8,1,{x,0}},
                         {get_tail,5,1,{x,4}}]}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",675}]}.
    {gc_bif,'bsl',{f,0},5,[{tr,{x,1},{t_integer,any}},{integer,7}],{x,1}}.
    {gc_bif,'bor',
            {f,0},
            5,
            [{tr,{x,1},{t_integer,any}},{tr,{x,0},{t_integer,{0,255}}}],
            {x,0}}.
    {gc_bif,'-',{f,0},5,[{tr,{x,3},{t_integer,{'-inf',2}}},{integer,1}],{x,1}}.
    {test_heap,2,5}.
    {put_list,{x,0},{x,2},{x,2}}.
    {move,{x,1},{x,3}}.
    {move,{integer,0},{x,1}}.
    {move,{x,4},{x,0}}.
    {call_only,4,{f,333}}. % dec_subidentifiers3/4


{function, dec_subidentifiers4, 4, 337}.
  {label,336}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",677}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,dec_subidentifiers4},4}.
  {label,337}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,any}}]}}.
    {'%',{var_info,{x,2},[{type,{t_list,{t_integer,any},nil}}]}}.
    {'%',{var_info,{x,3},[{type,{t_integer,{'-inf',2}}}]}}.
    {bs_start_match4,{atom,no_fail},4,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,4},4}.
    {bs_match,{f,338},
              {x,0},
              {commands,[{ensure_at_least,1,1},
                         {integer,5,{literal,[]},1,1,{x,5}}]}}.
    {test,is_eq_exact,{f,338},[{tr,{x,5},{t_integer,{0,1}}},{integer,1}]}.
    {bs_match,{f,338},
              {x,0},
              {commands,[{ensure_at_least,7,8},
                         {integer,5,{literal,[]},7,1,{x,5}}]}}.
    {test,is_ne_exact,{f,340},[{tr,{x,3},{t_integer,{'-inf',2}}},{integer,0}]}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",678}]}.
    {gc_bif,'bsl',{f,0},6,[{tr,{x,1},{t_integer,any}},{integer,7}],{x,1}}.
    {gc_bif,'bor',
            {f,0},
            6,
            [{tr,{x,1},{t_integer,any}},{tr,{x,5},{t_integer,{0,127}}}],
            {x,1}}.
    {gc_bif,'-',{f,0},4,[{tr,{x,3},{t_integer,{'-inf',2}}},{integer,1}],{x,3}}.
    {call_only,4,{f,337}}. % dec_subidentifiers4/4
  {label,338}.
    {bs_set_position,{x,0},{x,4}}.
    {bs_match,{f,339},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,5,{literal,[]},8,1,{x,5}}]}}.
    {test,is_ne_exact,{f,340},[{tr,{x,3},{t_integer,{'-inf',2}}},{integer,0}]}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",680}]}.
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
    {call_only,4,{f,337}}. % dec_subidentifiers4/4
  {label,339}.
    {test,is_eq_exact,{f,341},[{tr,{x,3},{t_integer,{'-inf',2}}},{integer,0}]}.
  {label,340}.
    {allocate,2,5}.
    {move,{x,4},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{x,2},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",682}]}.
    {call_ext,1,{extfunc,lists,reverse,1}}.
    {bs_set_position,{y,1},{y,0}}.
    {bs_get_tail,{y,1},{x,1},1}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {deallocate,2}.
    return.
  {label,341}.
    {bs_set_position,{x,0},{x,4}}.
    {bs_get_tail,{x,0},{x,0},4}.
    {jump,{f,336}}.


{function, skip_optional_tag, 1, 343}.
  {label,342}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",685}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,skip_optional_tag},1}.
  {label,343}.
    {test,is_list,{f,342},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<"*">>},{x,1}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",686}]}.
    {call,2,{f,349}}. % skip_optional_tag/2
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
         {literal,{ok,<<>>}}]}.
    {move,{literal,<<42,1>>},{x,1}}.
    {move,{literal,<<42,1>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",687}]}.
    {call,2,{f,349}}. % skip_optional_tag/2
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
        {f,346},
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
    {line,[{location,"bs_match_dialyzer_SUITE.erl",688}]}.
    {call,2,{f,349}}. % skip_optional_tag/2
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
        {f,345},
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
    {line,[{location,"bs_match_dialyzer_SUITE.erl",689}]}.
    {call,2,{f,349}}. % skip_optional_tag/2
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
        {f,344},
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
  {label,344}.
    {badmatch,{x,0}}.
  {label,345}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",688}]}.
    {badmatch,{x,0}}.
  {label,346}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",687}]}.
    {badmatch,{x,0}}.
  {label,347}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",686}]}.
    {badmatch,{x,0}}.


{function, skip_optional_tag, 2, 349}.
  {label,348}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",692}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,skip_optional_tag},2}.
  {label,349}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_union,{t_atom,[blurf]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,350},{x,0},{commands,[{ensure_exactly,0}]}}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{atom,ok},{x,1}]}}.
    return.
  {label,350}.
    {bs_match,{f,351},
              {x,0},
              {commands,[{ensure_at_least,8,8},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_start_match3,{f,351},3,[{x,1}],{x,1}}.
    {bs_match,{f,351},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}},
                         {get_tail,4,1,{x,1}}]}}.
    {test,is_eq_exact,
          {f,351},
          [{tr,{x,3},{t_integer,{0,255}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {call_only,2,{f,349}}. % skip_optional_tag/2
  {label,351}.
    {move,{atom,missing},{x,0}}.
    return.


{function, decode_integer, 1, 353}.
  {label,352}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",698}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,decode_integer},1}.
  {label,353}.
    {allocate,0,0}.
    {move,{literal,<<"*+">>},{x,1}}.
    {move,{atom,whatever},{x,2}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",699}]}.
    {call,3,{f,357}}. % decode_integer/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,any},
                                     2 => {t_bitstring,8,false},
                                     3 => {t_atom,[whatever]}}}}]}}.
    {test,is_eq_exact,
          {f,355},
          [{tr,{x,0},
               {t_tuple,3,true,
                        #{1 => {t_integer,any},
                          2 => {t_bitstring,8,false},
                          3 => {t_atom,[whatever]}}}},
           {literal,{10795,<<"+">>,whatever}}]}.
    {move,{literal,<<143,19>>},{x,1}}.
    {move,{atom,whatever},{x,2}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",700}]}.
    {call,3,{f,357}}. % decode_integer/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,any},
                                     2 => {t_bitstring,8,false},
                                     3 => {t_atom,[whatever]}}}}]}}.
    {test,is_eq_exact,
          {f,354},
          [{tr,{x,0},
               {t_tuple,3,true,
                        #{1 => {t_integer,any},
                          2 => {t_bitstring,8,false},
                          3 => {t_atom,[whatever]}}}},
           {literal,{-28909,<<19>>,whatever}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,354}.
    {badmatch,{x,0}}.
  {label,355}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",699}]}.
    {badmatch,{x,0}}.


{function, decode_integer, 3, 357}.
  {label,356}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",703}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,decode_integer},3}.
  {label,357}.
    {'%',{var_info,{x,0},[{type,{t_integer,{1,1}}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_bitstring,16,false}},accepts_match_context]}}.
    {'%',{var_info,{x,2},[{type,{t_atom,[whatever]}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,3},3}.
    {bs_match,{f,359},
              {x,1},
              {commands,[{ensure_at_least,8,8},
                         {integer,2,{literal,[]},1,1,{x,0}},
                         {integer,2,{literal,[]},7,1,{x,2}},
                         {get_tail,3,8,{x,1}}]}}.
    {test,is_eq_exact,{f,358},[{tr,{x,0},{t_integer,{0,1}}},{integer,0}]}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",704}]}.
    {bs_create_bin,{f,0},
                   0,3,8,
                   {x,0},
                   {list,[{atom,integer},
                          0,1,nil,
                          {integer,0},
                          {integer,1},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,2},{t_integer,{0,127}}},
                          {integer,7},
                          {atom,binary},
                          3,8,nil,
                          {tr,{x,1},{t_bitstring,8,false}},
                          {atom,all}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {bs_match,{f,361},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {skip,8},
                         {get_tail,3,1,{x,3}}]}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",705}]}.
    {gc_bif,byte_size,{f,0},4,[{tr,{x,0},{t_bitstring,8,false}}],{x,4}}.
    {bs_set_position,{x,1},{x,2}}.
    {test,bs_get_integer2,
          {f,360},
          5,
          [{tr,{x,1},{t_bs_context,8}},
           {tr,{x,4},{t_integer,{0,288230376151711743}}},
           8,
           {field_flags,[{anno,[706,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,360},{x,1},{commands,[{ensure_exactly,0}]}}.
    {test_heap,4,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3},{atom,whatever}]}}.
    return.
  {label,358}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",709}]}.
    {bs_create_bin,{f,0},
                   0,3,8,
                   {x,0},
                   {list,[{atom,integer},
                          0,1,nil,
                          {integer,1},
                          {integer,1},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,2},{t_integer,{0,127}}},
                          {integer,7},
                          {atom,binary},
                          3,8,nil,
                          {tr,{x,1},{t_bitstring,8,false}},
                          {atom,all}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,3}}.
    {bs_match,{f,363},
              {x,3},
              {commands,[{ensure_at_least,8,1},
                         {skip,8},
                         {get_tail,4,1,{x,3}}]}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",710}]}.
    {gc_bif,byte_size,{f,0},4,[{tr,{x,0},{t_bitstring,8,false}}],{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",711}]}.
    {bs_create_bin,{f,0},
                   0,4,8,
                   {x,1},
                   {list,[{atom,integer},
                          1,1,nil,
                          {tr,{x,2},{t_integer,{0,127}}},
                          {integer,8},
                          {atom,binary},
                          2,8,nil,
                          {tr,{x,1},{t_bitstring,8,false}},
                          {atom,all}]}}.
    {bs_start_match4,{atom,no_fail},4,{x,1},{x,2}}.
    {test,bs_get_integer2,
          {f,362},
          4,
          [{tr,{x,2},{t_bs_context,8}},
           {tr,{x,0},{t_integer,{0,288230376151711743}}},
           8,
           {field_flags,[{anno,[711,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {bs_match,{f,362},{x,2},{commands,[{ensure_exactly,0}]}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",712}]}.
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
    {test_heap,4,4}.
    {put_tuple2,{x,0},{list,[{x,0},{x,3},{atom,whatever}]}}.
    return.
  {label,359}.
    {bs_set_position,{x,1},{x,3}}.
    {bs_get_tail,{x,1},{x,1},3}.
    {jump,{f,356}}.
  {label,360}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",706}]}.
    {badmatch,{x,0}}.
  {label,361}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",704}]}.
    {badmatch,{x,0}}.
  {label,362}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",711}]}.
    {badmatch,{x,1}}.
  {label,363}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",709}]}.
    {badmatch,{x,0}}.


{function, wfbm, 1, 365}.
  {label,364}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",717}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,wfbm},1}.
  {label,365}.
    {test,is_list,{f,364},[{x,0}]}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{literal,<<" ">>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",720}]}.
    {call,1,{f,380}}. % check_for_dot_or_space/1
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
    {move,{literal,<<" abc">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",721}]}.
    {call,1,{f,380}}. % check_for_dot_or_space/1
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
           {literal,{nomatch,0}}]}.
    {move,{literal,<<"abcde 34555">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",722}]}.
    {call,1,{f,380}}. % check_for_dot_or_space/1
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
          {f,376},
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
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",723}]}.
    {call,1,{f,380}}. % check_for_dot_or_space/1
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
          {f,375},
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
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",724}]}.
    {call,1,{f,380}}. % check_for_dot_or_space/1
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
          {f,374},
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
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",726}]}.
    {call,1,{f,388}}. % get_tail/1
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
    {move,{literal,<<"200x/2007/10/23/blurf ">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",727}]}.
    {call,1,{f,388}}. % get_tail/1
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
          {f,372},
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
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",728}]}.
    {call,1,{f,388}}. % get_tail/1
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
          {f,371},
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
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",729}]}.
    {call,1,{f,388}}. % get_tail/1
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
          {f,370},
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
    {'catch',{y,1},{f,366}}.
    {move,{literal,{no,binary,at,all}},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",730}]}.
    {call,1,{f,388}}. % get_tail/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,366}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,369},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,0},{f,367}}.
    {move,{atom,no_binary},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_dialyzer_SUITE.erl",731}]}.
    {call,1,{f,388}}. % get_tail/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,367}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,368},[{x,0},2,{atom,'EXIT'}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,368}.
    {line,[{scope,[0]},{location,"bs_match_dialyzer_SUITE.erl",731}]}.
    {badmatch,{x,0}}.
  {label,369}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",730}]}.
    {badmatch,{x,0}}.
  {label,370}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",729}]}.
    {badmatch,{x,0}}.
  {label,371}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",728}]}.
    {badmatch,{x,0}}.
  {label,372}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",727}]}.
    {badmatch,{x,0}}.
  {label,373}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",726}]}.
    {badmatch,{x,0}}.
  {label,374}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",724}]}.
    {badmatch,{x,0}}.
  {label,375}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",723}]}.
    {badmatch,{x,0}}.
  {label,376}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",722}]}.
    {badmatch,{x,0}}.
  {label,377}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",721}]}.
    {badmatch,{x,0}}.
  {label,378}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",720}]}.
    {badmatch,{x,0}}.


{function, check_for_dot_or_space, 1, 380}.
  {label,379}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",734}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,check_for_dot_or_space},1}.
  {label,380}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {move,{integer,0},{x,1}}.
    {call_only,2,{f,382}}. % check_for_dot_or_space/2


{function, check_for_dot_or_space, 2, 382}.
  {label,381}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",737}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,check_for_dot_or_space},2}.
  {label,382}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,'+inf'}}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {bs_match,{f,383},
              {x,0},
              {commands,[{ensure_at_least,8,1},{'=:=',nil,8,32}]}}.
    {test,is_eq_exact,{f,383},[{tr,{x,1},{t_integer,{0,'+inf'}}},{integer,0}]}.
    {move,{literal,{nomatch,0}},{x,0}}.
    return.
  {label,383}.
    {bs_set_position,{x,0},{x,2}}.
    {test,bs_get_binary2,
          {f,386},
          3,
          [{tr,{x,0},{t_bs_context,8}},
           {tr,{x,1},{t_integer,{0,'+inf'}}},
           8,
           {field_flags,[{anno,[741,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_match,{f,386},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,4,{literal,[]},8,1,{x,4}}]}}.
    {select_val,{tr,{x,4},{t_integer,{0,255}}},
                {f,386},
                {list,[{integer,32},{f,385},{integer,46},{f,384}]}}.
  {label,384}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{atom,nomatch},{x,1}]}}.
    return.
  {label,385}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{atom,ok},{x,3}]}}.
    return.
  {label,386}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",746}]}.
    {gc_bif,'+',{f,0},3,[{tr,{x,1},{t_integer,{0,'+inf'}}},{integer,1}],{x,1}}.
    {bs_set_position,{x,0},{x,2}}.
    {call_only,2,{f,382}}. % check_for_dot_or_space/2


{function, get_tail, 1, 388}.
  {label,387}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",749}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,get_tail},1}.
  {label,388}.
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
          {f,390},
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
    {test,bs_start_match3,{f,391},1,[{x,0}],{x,1}}.
    {bs_match,{f,391},
              {x,1},
              {commands,[{ensure_at_least,128,1},
                         {binary,2,{literal,[]},16,8,{x,0}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,390},
              {x,0},
              {commands,[{ensure_exactly,128},
                         {skip,24},
                         {'=:=',nil,16,30767},
                         {binary,2,{literal,[]},4,8,{x,2}},
                         {'=:=',nil,8,47},
                         {binary,3,{literal,[]},2,8,{x,3}},
                         {'=:=',nil,8,47},
                         {binary,4,{literal,[]},2,8,{x,4}},
                         {'=:=',nil,8,47}]}}.
    {allocate,3,5}.
    {move,{x,4},{y,0}}.
    {move,{x,3},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",755}]}.
    {call,1,{f,380}}. % check_for_dot_or_space/1
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
    {test,is_eq_exact,{f,389},[{x,1},{atom,ok}]}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",757}]}.
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
  {label,389}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",758}]}.
    {gc_bif,'+',
            {f,0},
            1,
            [{tr,{x,0},{t_integer,{0,'+inf'}}},{integer,16}],
            {x,0}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,skip},{x,0}]}}.
    {deallocate,3}.
    return.
  {label,390}.
    {move,{atom,nomatch},{x,0}}.
    return.
  {label,391}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",752}]}.
    {badmatch,{x,0}}.


{function, degenerated_match, 1, 393}.
  {label,392}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",763}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,degenerated_match},1}.
  {label,393}.
    {test,is_list,{f,392},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",764}]}.
    {call,1,{f,401}}. % degenerated_match_1/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[error]},
                                   none,
                                   {t_integer,{0,288230376151711743}},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,399},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,
                        {t_integer,{0,288230376151711743}},
                        none,none}},
           {atom,error}]}.
    {move,{literal,<<1:1>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",765}]}.
    {call,1,{f,401}}. % degenerated_match_1/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[error]},
                                   none,
                                   {t_integer,{0,288230376151711743}},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,398},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,
                        {t_integer,{0,288230376151711743}},
                        none,none}},
           {integer,1}]}.
    {move,{literal,<<"*+">>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",766}]}.
    {call,1,{f,401}}. % degenerated_match_1/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[error]},
                                   none,
                                   {t_integer,{0,288230376151711743}},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,397},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,
                        {t_integer,{0,288230376151711743}},
                        none,none}},
           {integer,2}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",768}]}.
    {call,1,{f,404}}. % degenerated_match_2/1
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
          {f,396},
          [{tr,{x,0},
               {t_union,{t_atom,[error,no_split]},
                        none,none,
                        {t_tuple,2,true,
                                 #{1 => {t_bitstring,8,false},
                                   2 => {t_bitstring,1,false}}},
                        none}},
           {atom,error}]}.
    {move,{literal,<<1,2>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",769}]}.
    {call,1,{f,404}}. % degenerated_match_2/1
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
          {f,395},
          [{tr,{x,0},
               {t_union,{t_atom,[error,no_split]},
                        none,none,
                        {t_tuple,2,true,
                                 #{1 => {t_bitstring,8,false},
                                   2 => {t_bitstring,1,false}}},
                        none}},
           {atom,no_split}]}.
    {move,{literal,<<1,2,3,4,5>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",770}]}.
    {call,1,{f,404}}. % degenerated_match_2/1
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
          {f,394},
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
  {label,394}.
    {badmatch,{x,0}}.
  {label,395}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",769}]}.
    {badmatch,{x,0}}.
  {label,396}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",768}]}.
    {badmatch,{x,0}}.
  {label,397}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",766}]}.
    {badmatch,{x,0}}.
  {label,398}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",765}]}.
    {badmatch,{x,0}}.
  {label,399}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",764}]}.
    {badmatch,{x,0}}.


{function, degenerated_match_1, 1, 401}.
  {label,400}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",774}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,degenerated_match_1},1}.
  {label,401}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {test,is_eq_exact,
          {f,402},
          [{tr,{x,0},{t_bitstring,1,false}},{literal,<<>>}]}.
    {move,{atom,error},{x,0}}.
    return.
  {label,402}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",775}]}.
    {gc_bif,byte_size,{f,0},1,[{tr,{x,0},{t_bitstring,1,false}}],{x,0}}.
    return.


{function, degenerated_match_2, 1, 404}.
  {label,403}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",777}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,degenerated_match_2},1}.
  {label,404}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,405},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<>>}]}.
    {move,{atom,error},{x,0}}.
    return.
  {label,405}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",779}]}.
    {gc_bif,byte_size,{f,0},1,[{tr,{x,0},{t_bitstring,8,false}}],{x,1}}.
    {test,is_ge,
          {f,406},
          [{tr,{x,1},{t_integer,{0,288230376151711743}}},{integer,5}]}.
    {move,{integer,4},{x,1}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",781}]}.
    {call_ext_only,2,{extfunc,erlang,split_binary,2}}.
  {label,406}.
    {move,{atom,no_split},{x,0}}.
    return.


{function, bs_sum, 1, 408}.
  {label,407}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",786}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,bs_sum},1}.
  {label,408}.
    {test,is_list,{f,407},[{x,0}]}.
    {allocate,4,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3}]}}.
    {move,nil,{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",787}]}.
    {call,1,{f,426}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,0}}}]}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",788}]}.
    {call,1,{f,426}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,'+inf'}}}]}}.
    {test,is_eq_exact,{f,424},[{tr,{x,0},{t_integer,{0,'+inf'}}},{integer,0}]}.
    {move,{literal,"*"},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_dialyzer_SUITE.erl",789}]}.
    {call,1,{f,426}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{1,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,423},
          [{tr,{x,0},{t_integer,{1,'+inf'}}},{integer,42}]}.
    {move,{literal,<<1>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_dialyzer_SUITE.erl",790}]}.
    {call,1,{f,426}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,'+inf'}}}]}}.
    {test,is_eq_exact,{f,422},[{tr,{x,0},{t_integer,{0,'+inf'}}},{integer,1}]}.
    {move,{literal,[1,2,3,4]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_dialyzer_SUITE.erl",791}]}.
    {call,1,{f,426}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{1,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,421},
          [{tr,{x,0},{t_integer,{1,'+inf'}}},{integer,10}]}.
    {move,{literal,<<1,2,3,4,5>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_dialyzer_SUITE.erl",792}]}.
    {call,1,{f,426}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,420},
          [{tr,{x,0},{t_integer,{0,'+inf'}}},{integer,15}]}.
    {move,{literal,[1,2,3|<<4,5,6>>]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_dialyzer_SUITE.erl",793}]}.
    {call,1,{f,426}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{1,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,419},
          [{tr,{x,0},{t_integer,{1,'+inf'}}},{integer,21}]}.
    {move,{literal,[1,2,3|{4,5}]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_dialyzer_SUITE.erl",794}]}.
    {call,1,{f,426}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{1,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,418},
          [{tr,{x,0},{t_integer,{1,'+inf'}}},{integer,15}]}.
    {move,{literal,[1,2,3|zero]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_dialyzer_SUITE.erl",795}]}.
    {call,1,{f,426}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{1,'+inf'}}}]}}.
    {test,is_eq_exact,{f,417},[{tr,{x,0},{t_integer,{1,'+inf'}}},{integer,6}]}.
    {move,{literal,[1,2,3|0]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_dialyzer_SUITE.erl",796}]}.
    {call,1,{f,426}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{1,'+inf'}}}]}}.
    {test,is_eq_exact,{f,416},[{tr,{x,0},{t_integer,{1,'+inf'}}},{integer,6}]}.
    {move,{literal,[1,2,3|one]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_dialyzer_SUITE.erl",797}]}.
    {call,1,{f,426}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{1,'+inf'}}}]}}.
    {test,is_eq_exact,{f,415},[{tr,{x,0},{t_integer,{1,'+inf'}}},{integer,7}]}.
    {'catch',{y,3},{f,409}}.
    {move,{literal,{too,big,tuple}},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_dialyzer_SUITE.erl",799}]}.
    {call,1,{f,426}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,409}.
    {catch_end,{y,3}}.
    {line,[{scope,[7,8]},{location,"bs_match_dialyzer_SUITE.erl",799}]}.
    {call,1,{f,883}}. % fc/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,2},{f,410}}.
    {move,{literal,[1,2,3|{too,big,tuple}]},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_dialyzer_SUITE.erl",800}]}.
    {call,1,{f,426}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{1,'+inf'}}}]}}.
  {label,410}.
    {catch_end,{y,2}}.
    {line,[{scope,[5,6]},{location,"bs_match_dialyzer_SUITE.erl",800}]}.
    {call,1,{f,883}}. % fc/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_dialyzer_SUITE.erl",802}]}.
    {call,1,{f,435}}. % sneaky_alias/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_nil,{f,414},[{tr,{x,0},{t_list,any,nil}}]}.
    {move,{literal,<<0,0,2,47,0,5,234,71>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",803}]}.
    {call,1,{f,1776}}. % id/1
    {call,1,{f,435}}. % sneaky_alias/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,413},
          [{tr,{x,0},{t_list,any,nil}},{literal,[559,387655]}]}.
    {'catch',{y,1},{f,411}}.
    {move,{literal,<<1>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",804}]}.
    {call,1,{f,1776}}. % id/1
    {call,1,{f,435}}. % sneaky_alias/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
  {label,411}.
    {catch_end,{y,1}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<1>>]},{x,1}}.
    {move,{atom,sneaky_alias},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_dialyzer_SUITE.erl",804}]}.
    {call,3,{f,885}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,0},{f,412}}.
    {move,{integer,4},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_dialyzer_SUITE.erl",805}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {call,1,{f,435}}. % sneaky_alias/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
  {label,412}.
    {catch_end,{y,0}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[[1,2,3,4]]},{x,1}}.
    {move,{atom,sneaky_alias},{x,0}}.
    {call_last,3,{f,885},4}. % fc/3
  {label,413}.
    {line,[{scope,[0,4]},{location,"bs_match_dialyzer_SUITE.erl",803}]}.
    {badmatch,{x,0}}.
  {label,414}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",802}]}.
    {badmatch,{x,0}}.
  {label,415}.
    {line,[{scope,"\b"},{location,"bs_match_dialyzer_SUITE.erl",797}]}.
    {badmatch,{x,0}}.
  {label,416}.
    {line,[{scope,"\b"},{location,"bs_match_dialyzer_SUITE.erl",796}]}.
    {badmatch,{x,0}}.
  {label,417}.
    {line,[{scope,"\b"},{location,"bs_match_dialyzer_SUITE.erl",795}]}.
    {badmatch,{x,0}}.
  {label,418}.
    {line,[{scope,"\b"},{location,"bs_match_dialyzer_SUITE.erl",794}]}.
    {badmatch,{x,0}}.
  {label,419}.
    {line,[{scope,"\b"},{location,"bs_match_dialyzer_SUITE.erl",793}]}.
    {badmatch,{x,0}}.
  {label,420}.
    {line,[{scope,"\b"},{location,"bs_match_dialyzer_SUITE.erl",792}]}.
    {badmatch,{x,0}}.
  {label,421}.
    {line,[{scope,"\b"},{location,"bs_match_dialyzer_SUITE.erl",791}]}.
    {badmatch,{x,0}}.
  {label,422}.
    {line,[{scope,"\b"},{location,"bs_match_dialyzer_SUITE.erl",790}]}.
    {badmatch,{x,0}}.
  {label,423}.
    {line,[{scope,"\b"},{location,"bs_match_dialyzer_SUITE.erl",789}]}.
    {badmatch,{x,0}}.
  {label,424}.
    {line,[{scope,"\b"},{location,"bs_match_dialyzer_SUITE.erl",788}]}.
    {badmatch,{x,0}}.


{function, bs_sum_1, 1, 426}.
  {label,425}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",808}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,bs_sum_1},1}.
  {label,426}.
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
    {test,bs_start_match3,{f,429},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {bs_match,{f,427},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,0}}]}}.
    {allocate,1,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {call,1,{f,426}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,'+inf'}}}]}}.
    {gc_bif,'+',
            {f,0},
            1,
            [{tr,{y,0},{t_integer,{0,255}}},{tr,{x,0},{t_integer,{0,'+inf'}}}],
            {x,0}}.
    {deallocate,1}.
    return.
  {label,427}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_match,{f,428},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{integer,0},{x,0}}.
    return.
  {label,428}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,425}}.
  {label,429}.
    {test,is_nonempty_list,{f,430},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",809}]}.
    {call,1,{f,426}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,'+inf'}}}]}}.
    {gc_bif,'+',
            {f,0},
            1,
            [{tr,{y,0},{t_integer,{1,42}}},{tr,{x,0},{t_integer,{0,'+inf'}}}],
            {x,0}}.
    {deallocate,1}.
    return.
  {label,430}.
    {test,is_tuple,
          {f,432},
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
    {test,test_arity,{f,431},[{x,0},2]}.
    {move,{integer,9},{x,0}}.
    return.
  {label,431}.
    {move,{literal,{too,big,tuple}},{x,0}}.
    {jump,{f,425}}.
  {label,432}.
    {test,is_atom,
          {f,433},
          [{tr,{x,0},
               {t_union,{t_atom,[one,zero]},
                        nil,
                        {t_integer,{0,0}},
                        none,none}}]}.
    {test,is_ne_exact,{f,433},[{x,0},{atom,zero}]}.
    {move,{integer,1},{x,0}}.
    return.
  {label,433}.
    {move,{integer,0},{x,0}}.
    return.


{function, sneaky_alias, 1, 435}.
  {label,434}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",817}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,sneaky_alias},1}.
  {label,435}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,434},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {bs_match,{f,436},
              {x,1},
              {commands,[{ensure_exactly,0},{get_tail,2,1,{x,0}}]}}.
    {call_ext_only,1,{extfunc,erlang,binary_to_list,1}}.
  {label,436}.
    {bs_match,{f,437},
              {x,1},
              {commands,[{ensure_at_least,32,8},
                         {integer,2,{literal,[]},32,1,{x,0}}]}}.
    {allocate,1,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",818}]}.
    {call,1,{f,435}}. % sneaky_alias/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,437}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,434}}.


{function, coverage, 1, 439}.
  {label,438}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",820}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,coverage},1}.
  {label,439}.
    {test,is_list,{f,438},[{x,0}]}.
    {allocate_heap,4,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3}]}}.
    {make_fun3,{f,1938},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_number,any}}]}}.
    {move,{literal,<<>>},{x,2}}.
    {move,{integer,0},{x,1}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",821}]}.
    {call,3,{f,471}}. % coverage_fold/3
    {'%',{var_info,{x,0},[{type,{t_number,any}}]}}.
    {test,is_eq_exact,{f,469},[{tr,{x,0},{t_number,any}},{integer,0}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1936},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_number,any}}]}}.
    {move,{literal,<<1,2,3>>},{x,2}}.
    {move,{integer,0},{x,1}}.
    {line,[{scope,"\b"},{location,"bs_match_dialyzer_SUITE.erl",822}]}.
    {call,3,{f,471}}. % coverage_fold/3
    {'%',{var_info,{x,0},[{type,{t_number,any}}]}}.
    {test,is_eq_exact,{f,468},[{tr,{x,0},{t_number,any}},{integer,6}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1934},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_number,any}}]}}.
    {'catch',{y,3},{f,440}}.
    {move,{literal,[a,b,c]},{x,2}}.
    {move,{integer,0},{x,1}}.
    {line,[{scope,"\b"},{location,"bs_match_dialyzer_SUITE.erl",823}]}.
    {call,3,{f,471}}. % coverage_fold/3
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,440}.
    {catch_end,{y,3}}.
    {line,[{scope,[7,8]},{location,"bs_match_dialyzer_SUITE.erl",823}]}.
    {call,1,{f,883}}. % fc/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<"*">>},{x,1}}.
    {move,{atom,float},{x,2}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_dialyzer_SUITE.erl",827}]}.
    {call,3,{f,475}}. % coverage_build/3
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
          {f,467},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[827,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,467},[{tr,{x,2},{t_float,any}},{float,42.0}]}.
    {bs_match,{f,467},{x,1},{commands,[{ensure_exactly,0}]}}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,
        {f,467},
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
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",828}]}.
    {call,3,{f,475}}. % coverage_build/3
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
     {f,466},
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
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",830}]}.
    {call,3,{f,475}}. % coverage_build/3
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
     {f,465},
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
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",832}]}.
    {call,2,{f,480}}. % coverage_bc/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_bitstring,8,true},nil}}]}}.
    {test,is_eq_exact,
          {f,464},
          [{tr,{x,0},{t_list,{t_bitstring,8,true},nil}},
           {literal,[<<2>>,<<1>>]}]}.
    {move,{literal,{x,y,z}},{x,1}}.
    {move,{literal,<<2,97,98,99>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",834}]}.
    {call,2,{f,483}}. % coverage_setelement/2
    {'%',{var_info,{x,0},[{type,{t_tuple,3,true,#{}}}]}}.
    {test,is_eq_exact,
          {f,463},
          [{tr,{x,0},{t_tuple,3,true,#{}}},{literal,{x,<<"abc">>,z}}]}.
    {move,{literal,[coverage_id]},{x,1}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",836}]}.
    {call,2,{f,486}}. % coverage_apply/2
    {'%',{var_info,{x,0},[{type,{t_cons,any,nil}}]}}.
    {test,is_eq_exact,{f,462},[{tr,{x,0},{t_cons,any,nil}},{literal,"*"}]}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",837}]}.
    {call,1,{f,490}}. % coverage_external/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,461},[{tr,{x,0},{t_integer,{0,255}}},{integer,42}]}.
    {move,nil,{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",839}]}.
    {call,1,{f,497}}. % do_coverage_bin_to_term_list/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {move,{integer,10},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",840}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {test_heap,2,1}.
    {put_list,{x,0},{literal,[{a,b,c},<<0,0,0,0,5,3:2>>]},{x,0}}.
    {call,1,{f,497}}. % do_coverage_bin_to_term_list/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {'catch',{y,2},{f,441}}.
    {move,{literal,<<0,0,0,7>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",842}]}.
    {call,1,{f,502}}. % do_coverage_bin_to_term_list_1/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
  {label,441}.
    {catch_end,{y,2}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<0,0,0,7>>]},{x,1}}.
    {move,{atom,coverage_bin_to_term_list},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_dialyzer_SUITE.erl",841}]}.
    {call,3,{f,885}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<0,0,0,4>>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_dialyzer_SUITE.erl",844}]}.
    {call,1,{f,527}}. % coverage_per_key/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,460},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<>>}]}.
    {move,{literal,<<0,0,0,7,97,98,99>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",845}]}.
    {call,1,{f,527}}. % coverage_per_key/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,459},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<"abc">>}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",847}]}.
    {call,1,{f,531}}. % coverage_bitstring/1
    {'%',{var_info,{x,0},[{type,{t_atom,[binary,bitstring]}}]}}.
    {test,is_eq_exact,
          {f,458},
          [{tr,{x,0},{t_atom,[binary,bitstring]}},{atom,binary}]}.
    {move,{literal,<<7>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",848}]}.
    {call,1,{f,531}}. % coverage_bitstring/1
    {'%',{var_info,{x,0},[{type,{t_atom,[binary,bitstring]}}]}}.
    {test,is_eq_exact,
          {f,457},
          [{tr,{x,0},{t_atom,[binary,bitstring]}},{atom,binary}]}.
    {move,{literal,<<7:4>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",849}]}.
    {call,1,{f,531}}. % coverage_bitstring/1
    {'%',{var_info,{x,0},[{type,{t_atom,[binary,bitstring]}}]}}.
    {test,is_eq_exact,
          {f,456},
          [{tr,{x,0},{t_atom,[binary,bitstring]}},{atom,bitstring}]}.
    {move,{literal,[a]},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",850}]}.
    {call,1,{f,531}}. % coverage_bitstring/1
    {'%',{var_info,{x,0},[{type,{t_atom,[other]}}]}}.
    {move,{atom,e2},{x,3}}.
    {move,{atom,e1},{x,2}}.
    {move,{atom,e3},{x,4}}.
    {move,{atom,e0},{x,1}}.
    {move,nil,{x,5}}.
    {move,{literal,<<253,155,200,17,53>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",855}]}.
    {call,6,{f,535}}. % coverage_trim/6
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,3,true,
                     #{1 => {t_atom,[done]},
                       2 => {t_bitstring,8,false},
                       3 => {t_list,{t_integer,{0,255}},nil}}}}]}}.
    {test,is_eq_exact,
          {f,455},
          [{tr,{x,0},
               {t_tuple,3,true,
                        #{1 => {t_atom,[done]},
                          2 => {t_bitstring,8,false},
                          3 => {t_list,{t_integer,{0,255}},nil}}}},
           {literal,{done,<<17,53>>,[253,155,200]}}]}.
    {move,{literal,<<"right">>},{x,1}}.
    {move,{literal,<<"linux">>},{x,2}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",857}]}.
    {call,3,{f,541}}. % coverage_trim_1/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,454},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<"(right|linux)">>}]}.
    {move,{literal,<<"right">>},{x,1}}.
    {move,{literal,<<"linux">>},{x,2}}.
    {move,{literal,<<"/">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",858}]}.
    {call,3,{f,541}}. % coverage_trim_1/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,453},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<"/(right|linux)">>}]}.
    {move,{literal,<<"right">>},{x,1}}.
    {move,{literal,<<"linux">>},{x,2}}.
    {move,{literal,<<"left">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",860}]}.
    {call,3,{f,541}}. % coverage_trim_1/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,452},
          [{tr,{x,0},{t_bitstring,8,false}},
           {literal,<<"(left|linux)/(right|linux)">>}]}.
    {move,{integer,10},{x,1}}.
    {move,nil,{x,2}}.
    {move,{literal,<<"-">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",862}]}.
    {call,3,{f,547}}. % coverage_trim_2/3
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
           {literal,{10,<<"-">>,[]}}]}.
    {move,{integer,10},{x,1}}.
    {move,nil,{x,2}}.
    {move,{literal,<<"aa-">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",863}]}.
    {call,3,{f,547}}. % coverage_trim_2/3
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,3,true,
                     #{1 => {t_integer,{'-inf',10}},
                       2 => {t_bitstring,8,false},
                       3 => {t_list,{t_integer,{0,1114111}},nil}}}}]}}.
    {test,is_eq_exact,
          {f,450},
          [{tr,{x,0},
               {t_tuple,3,true,
                        #{1 => {t_integer,{'-inf',10}},
                          2 => {t_bitstring,8,false},
                          3 => {t_list,{t_integer,{0,1114111}},nil}}}},
           {literal,{8,<<"-">>,"aa"}}]}.
    {move,{integer,3},{x,1}}.
    {move,{literal,[<<"abctag">>]},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",865}]}.
    {call,2,{f,551}}. % coverage_trim_3/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_bitstring,8,false},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
          {f,449},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_bitstring,8,false},
                          2 => {t_bitstring,8,false}}}},
           {literal,{<<"abc">>,<<"tag">>}}]}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",867}]}.
    {call,1,{f,554}}. % coverage_trim_4/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[error]},
                                   none,none,none,
                                   {t_bitstring,16,false}}}]}}.
    {test,bs_start_match3,{f,448},1,[{x,0}],{x,1}}.
    {bs_match,{f,448},
              {x,1},
              {commands,[{ensure_at_least,16,1},
                         {integer,2,{literal,[native]},16,1,{x,2}}]}}.
    {test,is_eq_exact,
          {f,448},
          [{tr,{x,2},{t_integer,{0,65535}}},{integer,57348}]}.
    {bs_match,{f,448},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{literal,<<2>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",870}]}.
    {call,1,{f,559}}. % coverage_beam_ssa_codegen/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,1},{f,442}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",873}]}.
    {call,1,{f,562}}. % coverage_beam_ssa_pre_codegen/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,442}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,447},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,447},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,0},{f,443}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_dialyzer_SUITE.erl",876}]}.
    {call,1,{f,1776}}. % id/1
    {call,1,{f,564}}. % coverage_beam_ssa_bsm_error/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,443}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,446},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,446},[{x,1}]}.
    {test,test_arity,{f,446},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,446},[{x,1},{literal,{badarg,<<>>}}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1932},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_integer,{42,42}}}]}}.
    {line,[{scope,[0]},{location,"bs_match_dialyzer_SUITE.erl",879}]}.
    {call,1,{f,1776}}. % id/1
    {call,1,{f,566}}. % coverage_beam_validator/1
    {test,is_eq_exact,{f,445},[{x,0},{integer,42}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1930},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,none}]}}.
    {line,[{scope,[0]},{location,"bs_match_dialyzer_SUITE.erl",880}]}.
    {call,1,{f,1776}}. % id/1
    {call,1,{f,566}}. % coverage_beam_validator/1
    {test,is_eq_exact,{f,444},[{x,0},{atom,ok}]}.
    {deallocate,4}.
    return.
  {label,444}.
    {badmatch,{x,0}}.
  {label,445}.
    {line,[{scope,[0]},{location,"bs_match_dialyzer_SUITE.erl",879}]}.
    {badmatch,{x,0}}.
  {label,446}.
    {line,[{scope,[0]},{location,"bs_match_dialyzer_SUITE.erl",876}]}.
    {badmatch,{x,0}}.
  {label,447}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",873}]}.
    {badmatch,{x,0}}.
  {label,448}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",867}]}.
    {badmatch,{x,0}}.
  {label,449}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",865}]}.
    {badmatch,{x,0}}.
  {label,450}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",863}]}.
    {badmatch,{x,0}}.
  {label,451}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",862}]}.
    {badmatch,{x,0}}.
  {label,452}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",859}]}.
    {badmatch,{x,0}}.
  {label,453}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",858}]}.
    {badmatch,{x,0}}.
  {label,454}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",857}]}.
    {badmatch,{x,0}}.
  {label,455}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",854}]}.
    {badmatch,{x,0}}.
  {label,456}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",849}]}.
    {badmatch,{atom,binary}}.
  {label,457}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",848}]}.
    {badmatch,{atom,bitstring}}.
  {label,458}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",847}]}.
    {badmatch,{atom,bitstring}}.
  {label,459}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",845}]}.
    {badmatch,{x,0}}.
  {label,460}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",844}]}.
    {badmatch,{x,0}}.
  {label,461}.
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",837}]}.
    {badmatch,{x,0}}.
  {label,462}.
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",836}]}.
    {badmatch,{x,0}}.
  {label,463}.
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",834}]}.
    {badmatch,{x,0}}.
  {label,464}.
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",832}]}.
    {badmatch,{x,0}}.
  {label,465}.
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",829}]}.
    {badmatch,{x,0}}.
  {label,466}.
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",828}]}.
    {badmatch,{x,0}}.
  {label,467}.
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",827}]}.
    {badmatch,{x,0}}.
  {label,468}.
    {line,[{scope,"\b"},{location,"bs_match_dialyzer_SUITE.erl",822}]}.
    {badmatch,{x,0}}.
  {label,469}.
    {line,[{scope,"\b"},{location,"bs_match_dialyzer_SUITE.erl",821}]}.
    {badmatch,{x,0}}.


{function, coverage_fold, 3, 471}.
  {label,470}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",884}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,coverage_fold},3}.
  {label,471}.
    {'%',{var_info,{x,0},[{type,{t_fun,2,any,{t_number,any}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_number,any}}]}}.
    {'%',{var_info,{x,2},
                   [{type,{t_union,none,
                                   {t_cons,{t_atom,[a,b,c]},nil},
                                   none,none,
                                   {t_bs_matchable,8}}},
                    accepts_match_context]}}.
    {test,bs_start_match3,{f,470},3,[{x,2}],{x,3}}.
    {bs_get_position,{x,3},{x,2},4}.
    {bs_match,{f,472},
              {x,3},
              {commands,[{ensure_at_least,8,1},
                         {integer,4,{literal,[]},8,1,{x,2}}]}}.
    {allocate,3,4}.
    {move,{x,3},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
    {move,{x,2},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",886}]}.
    {call,1,{f,1776}}. % id/1
    {swap,{y,1},{x,0}}.
    {call,1,{f,1776}}. % id/1
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
    {call_last,3,{f,471},2}. % coverage_fold/3
  {label,472}.
    {bs_set_position,{x,3},{x,2}}.
    {bs_match,{f,473},{x,3},{commands,[{ensure_exactly,0}]}}.
    {move,{x,1},{x,0}}.
    return.
  {label,473}.
    {bs_get_tail,{x,3},{x,2},4}.
    {jump,{f,470}}.


{function, coverage_build, 3, 475}.
  {label,474}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",889}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,coverage_build},3}.
  {label,475}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}}]}}.
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
    {bs_match,{f,477},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,is_eq_exact,
        {f,476},
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
    {line,[{location,"bs_match_dialyzer_SUITE.erl",890}]}.
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
    {call,1,{f,1776}}. % id/1
    {line,[{location,"bs_match_dialyzer_SUITE.erl",891}]}.
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
    {call_last,3,{f,475},2}. % coverage_build/3
  {label,476}.
    {allocate,4,4}.
    {move,{x,3},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,0},{y,3}}.
    {move,{integer,4},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",894}]}.
    {call,1,{f,1776}}. % id/1
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
    {call,1,{f,1776}}. % id/1
    {line,[{location,"bs_match_dialyzer_SUITE.erl",895}]}.
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
    {call,1,{f,1776}}. % id/1
    {move,{x,0},{y,2}}.
    {move,{y,1},{x,1}}.
    {move,{integer,43},{x,2}}.
    {move,{integer,3},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",896}]}.
    {call_ext,3,{extfunc,erlang,setelement,3}}.
    {move,{y,1},{x,1}}.
    {move,{integer,43},{x,2}}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{integer,3},{x,0}}.
    {call_ext,3,{extfunc,erlang,setelement,3}}.
    {set_tuple_element,{integer,42},{x,0},1}.
    {gc_bif,byte_size,{f,478},0,[{y,2}],{x,0}}.
    {test,is_ge,
          {f,478},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},{integer,1}]}.
    {move,{y,0},{x,1}}.
    {move,{literal,{x,42,43}},{x,2}}.
    {move,{y,2},{x,0}}.
    {call_last,3,{f,475},3}. % coverage_build/3
  {label,477}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{x,0},{x,2}]}}.
    return.
  {label,478}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",897}]}.
    if_end.


{function, coverage_bc, 2, 480}.
  {label,479}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",903}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,coverage_bc},2}.
  {label,480}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_bitstring,8,true},nil}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,481},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {allocate,3,3}.
    {move,{x,2},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{x,1},{y,2}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {test_heap,2,1}.
    {move,{x,0},{x,1}}.
    {put_list,{y,0},nil,{x,0}}.
    {trim,1,2}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",904}]}.
    {call,2,{f,1927}}. % '-coverage_bc/2-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {test_heap,2,1}.
    {put_list,{x,0},{y,1},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,480},2}. % coverage_bc/2
  {label,481}.
    {move,{x,1},{x,0}}.
    return.


{function, coverage_setelement, 2, 483}.
  {label,482}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",908}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,coverage_setelement},2}.
  {label,483}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,32,false}},accepts_match_context]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_atom,[x]},
                                     2 => {t_atom,[y]},
                                     3 => {t_atom,[z]}}}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {bs_match,{f,484},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}},
                         {get_tail,3,1,{x,0}}]}}.
    {swap,{x,0},{x,2}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",909}]}.
    {call_ext_only,3,{extfunc,erlang,setelement,3}}.
  {label,484}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {jump,{f,482}}.


{function, coverage_apply, 2, 486}.
  {label,485}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",911}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,coverage_apply},2}.
  {label,486}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_atom,[coverage_id]},nil}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {bs_match,{f,487},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,is_nonempty_list,{f,487},[{x,1}]}.
    {allocate,2,4}.
    {move,{x,0},{y,1}}.
    {get_tl,{x,1},{y,0}}.
    {move,{x,3},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",912}]}.
    {call_ext,1,{extfunc,bs_match_dialyzer_SUITE,coverage_id,1}}.
    {swap,{y,1},{x,0}}.
    {move,{y,0},{x,1}}.
    {trim,1,1}.
    {call,2,{f,486}}. % coverage_apply/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,487}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_match,{f,488},{x,0},{commands,[{ensure_exactly,0}]}}.
    {test,is_nil,{f,488},[{tr,{x,1},{t_list,{t_atom,[coverage_id]},nil}}]}.
    {move,nil,{x,0}}.
    return.
  {label,488}.
    {bs_get_tail,{x,0},{x,0},2}.
    {jump,{f,485}}.


{function, coverage_external, 1, 490}.
  {label,489}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",915}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,coverage_external},1}.
  {label,490}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,491},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,1,{literal,[]},8,1,{x,1}}]}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {bs_get_tail,{x,0},{x,1},1}.
    {move,{x,1},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",916}]}.
    {call_ext,2,{extfunc,bs_match_dialyzer_SUITE,coverage_external_ignore,2}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,491}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,489}}.


{function, coverage_external_ignore, 2, 493}.
  {label,492}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",919}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,coverage_external_ignore},
               2}.
  {label,493}.
    {move,{atom,ok},{x,0}}.
    return.


{function, coverage_id, 1, 495}.
  {label,494}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",922}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,coverage_id},1}.
  {label,495}.
    {call_only,1,{f,1776}}. % id/1


{function, do_coverage_bin_to_term_list, 1, 497}.
  {label,496}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",924}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,do_coverage_bin_to_term_list},
               1}.
  {label,497}.
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",925}]}.
    {call,2,{f,1924}}. % '-do_coverage_bin_to_term_list/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {move,{x,0},{y,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",928}]}.
    {call,1,{f,502}}. % do_coverage_bin_to_term_list_1/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,500},
          [{tr,{x,0},{t_list,any,nil}},{tr,{y,1},{t_list,any,nil}}]}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",929}]}.
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
    {call,1,{f,502}}. % do_coverage_bin_to_term_list_1/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,499},
          [{tr,{x,0},{t_list,any,nil}},{tr,{y,1},{t_list,any,nil}}]}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",930}]}.
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
    {call,1,{f,502}}. % do_coverage_bin_to_term_list_1/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,498},
          [{tr,{x,0},{t_list,any,nil}},{tr,{y,0},{t_list,any,nil}}]}.
    {deallocate,1}.
    return.
  {label,498}.
    {badmatch,{x,0}}.
  {label,499}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",929}]}.
    {badmatch,{x,0}}.
  {label,500}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",928}]}.
    {badmatch,{x,0}}.


{function, do_coverage_bin_to_term_list_1, 1, 502}.
  {label,501}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",932}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,do_coverage_bin_to_term_list_1},
               1}.
  {label,502}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",933}]}.
    {call,1,{f,507}}. % coverage_bin_to_term_list/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,0}}.
    {move,nil,{x,1}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",934}]}.
    {call,2,{f,512}}. % coverage_bin_to_term_list/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,505},
          [{tr,{x,0},{t_list,any,nil}},{tr,{y,0},{t_list,any,nil}}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",935}]}.
    {call,1,{f,517}}. % coverage_bin_to_term_list_catch/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,504},
          [{tr,{x,0},{t_list,any,nil}},{tr,{y,0},{t_list,any,nil}}]}.
    {move,nil,{x,1}}.
    {move,{y,1},{x,0}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",936}]}.
    {call,2,{f,522}}. % coverage_bin_to_term_list_catch/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,503},
          [{tr,{x,0},{t_list,any,nil}},{tr,{y,0},{t_list,any,nil}}]}.
    {deallocate,1}.
    return.
  {label,503}.
    {badmatch,{x,0}}.
  {label,504}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",935}]}.
    {badmatch,{x,0}}.
  {label,505}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",934}]}.
    {badmatch,{x,0}}.


{function, coverage_bin_to_term_list, 1, 507}.
  {label,506}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",938}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,coverage_bin_to_term_list},
               1}.
  {label,507}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,510},
              {x,0},
              {commands,[{ensure_at_least,32,1},
                         {integer,2,{literal,[]},32,1,{x,2}}]}}.
    {test,bs_get_binary2,
          {f,510},
          3,
          [{tr,{x,0},{t_bs_context,8}},
           {tr,{x,2},{t_integer,{0,4294967295}}},
           8,
           {field_flags,[{anno,[938,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {allocate,3,3}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {'try',{y,2},{f,508}}.
    {move,{x,2},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",939}]}.
    {call_ext,1,{extfunc,erlang,binary_to_term,1}}.
    {move,{x,0},{y,0}}.
    {try_end,{y,2}}.
    {move,{y,1},{x,0}}.
    {move,{y,0},{y,2}}.
    {trim,2,1}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",940}]}.
    {call,1,{f,507}}. % coverage_bin_to_term_list/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,508}.
    {try_case,{y,2}}.
    {test,is_eq_exact,
          {f,509},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,error}]}.
    {test,is_eq_exact,{f,509},[{x,1},{atom,badarg}]}.
    {move,{y,1},{x,0}}.
    {call_last,1,{f,507},3}. % coverage_bin_to_term_list/1
  {label,509}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.
  {label,510}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {test,is_eq_exact,
          {f,506},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<>>}]}.
    {move,nil,{x,0}}.
    return.


{function, coverage_bin_to_term_list, 2, 512}.
  {label,511}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",946}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,coverage_bin_to_term_list},
               2}.
  {label,512}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_list,any,nil}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {bs_match,{f,515},
              {x,0},
              {commands,[{ensure_at_least,32,1},
                         {integer,3,{literal,[]},32,1,{x,3}}]}}.
    {test,bs_get_binary2,
          {f,515},
          4,
          [{tr,{x,0},{t_bs_context,8}},
           {tr,{x,3},{t_integer,{0,4294967295}}},
           8,
           {field_flags,[{anno,[946,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {allocate,3,4}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {'try',{y,2},{f,513}}.
    {move,{x,3},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",947}]}.
    {call_ext,1,{extfunc,erlang,binary_to_term,1}}.
    {try_end,{y,2}}.
    {test_heap,2,1}.
    {put_list,{x,0},{y,1},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,512},3}. % coverage_bin_to_term_list/2
  {label,513}.
    {try_case,{y,2}}.
    {test,is_eq_exact,
          {f,514},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,error}]}.
    {test,is_eq_exact,{f,514},[{x,1},{atom,badarg}]}.
    {move,{y,1},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,512},3}. % coverage_bin_to_term_list/2
  {label,514}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.
  {label,515}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {test,is_eq_exact,
          {f,511},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<>>}]}.
    {move,{x,1},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_dialyzer_SUITE.erl",952}]}.
    {call_ext_only,1,{extfunc,lists,reverse,1}}.


{function, coverage_bin_to_term_list_catch, 1, 517}.
  {label,516}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",954}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,coverage_bin_to_term_list_catch},
               1}.
  {label,517}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,520},
              {x,0},
              {commands,[{ensure_at_least,32,1},
                         {integer,2,{literal,[]},32,1,{x,2}}]}}.
    {test,bs_get_binary2,
          {f,520},
          3,
          [{tr,{x,0},{t_bs_context,8}},
           {tr,{x,2},{t_integer,{0,4294967295}}},
           8,
           {field_flags,[{anno,[954,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {allocate,2,3}.
    {move,{x,0},{y,0}}.
    {'catch',{y,1},{f,518}}.
    {move,{x,2},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",955}]}.
    {call_ext,1,{extfunc,erlang,binary_to_term,1}}.
  {label,518}.
    {catch_end,{y,1}}.
    {move,{x,0},{y,1}}.
    {test,is_tagged_tuple,{f,519},[{y,1},2,{atom,'EXIT'}]}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,517},2}. % coverage_bin_to_term_list_catch/1
  {label,519}.
    {move,{y,0},{x,0}}.
    {trim,1,1}.
    {line,[{scope,[0]},{location,"bs_match_dialyzer_SUITE.erl",957}]}.
    {call,1,{f,517}}. % coverage_bin_to_term_list_catch/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,520}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {test,is_eq_exact,
          {f,516},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<>>}]}.
    {move,nil,{x,0}}.
    return.


{function, coverage_bin_to_term_list_catch, 2, 522}.
  {label,521}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",961}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,coverage_bin_to_term_list_catch},
               2}.
  {label,522}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_list,any,nil}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {bs_match,{f,525},
              {x,0},
              {commands,[{ensure_at_least,32,1},
                         {integer,3,{literal,[]},32,1,{x,3}}]}}.
    {test,bs_get_binary2,
          {f,525},
          4,
          [{tr,{x,0},{t_bs_context,8}},
           {tr,{x,3},{t_integer,{0,4294967295}}},
           8,
           {field_flags,[{anno,[961,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {allocate,3,4}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {'catch',{y,2},{f,523}}.
    {move,{x,3},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",962}]}.
    {call_ext,1,{extfunc,erlang,binary_to_term,1}}.
  {label,523}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,524},[{x,0},2,{atom,'EXIT'}]}.
    {move,{y,1},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,522},3}. % coverage_bin_to_term_list_catch/2
  {label,524}.
    {test_heap,2,1}.
    {put_list,{x,0},{y,1},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,522},3}. % coverage_bin_to_term_list_catch/2
  {label,525}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {test,is_eq_exact,
          {f,521},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<>>}]}.
    {move,{x,1},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_dialyzer_SUITE.erl",966}]}.
    {call_ext_only,1,{extfunc,lists,reverse,1}}.


{function, coverage_per_key, 1, 527}.
  {label,526}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",968}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,coverage_per_key},1}.
  {label,527}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,528},
              {x,0},
              {commands,[{ensure_at_least,32,1},
                         {integer,2,{literal,[]},32,1,{x,2}},
                         {get_tail,3,1,{x,3}}]}}.
    {bs_set_position,{x,0},{x,1}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",969}]}.
    {gc_bif,byte_size,{f,0},4,[{tr,{x,0},{t_bs_context,8}}],{x,0}}.
    {test,is_eq_exact,
          {f,529},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},
           {tr,{x,2},{t_integer,{0,4294967295}}}]}.
    {move,{x,3},{x,0}}.
    return.
  {label,528}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,526}}.
  {label,529}.
    {badmatch,{atom,false}}.


{function, coverage_bitstring, 1, 531}.
  {label,530}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",972}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,coverage_bitstring},1}.
  {label,531}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,
                                   {t_cons,{t_atom,[a]},nil},
                                   none,none,
                                   {t_bitstring,4,false}}}]}}.
    {test,is_binary,
          {f,532},
          [{tr,{x,0},
               {t_union,none,
                        {t_cons,{t_atom,[a]},nil},
                        none,none,
                        {t_bitstring,4,false}}}]}.
    {move,{atom,binary},{x,0}}.
    return.
  {label,532}.
    {test,is_bitstr,
          {f,533},
          [{tr,{x,0},
               {t_union,none,
                        {t_cons,{t_atom,[a]},nil},
                        none,none,
                        {t_bitstring,4,false}}}]}.
    {move,{atom,bitstring},{x,0}}.
    return.
  {label,533}.
    {move,{atom,other},{x,0}}.
    return.


{function, coverage_trim, 6, 535}.
  {label,534}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",976}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,coverage_trim},6}.
  {label,535}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[e0]}}]}}.
    {'%',{var_info,{x,2},[{type,{t_atom,[e1]}}]}}.
    {'%',{var_info,{x,3},[{type,{t_atom,[e2]}}]}}.
    {'%',{var_info,{x,4},[{type,{t_atom,[e3]}}]}}.
    {'%',{var_info,{x,5},[{type,{t_list,{t_integer,{0,255}},nil}}]}}.
    {bs_start_match4,{atom,no_fail},6,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,6},6}.
    {bs_match,{f,538},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,7,{literal,[]},8,1,{x,1}}]}}.
    {allocate,4,7}.
    {move,{x,6},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
    {move,{x,5},{y,3}}.
    {bif,'>=',{f,0},[{tr,{x,1},{t_integer,{0,255}}},{integer,129}],{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",977}]}.
    {call,1,{f,1776}}. % id/1
    {select_val,{x,0},
                {f,539},
                {list,[{atom,false},{f,537},{atom,true},{f,536}]}}.
  {label,536}.
    {test_heap,2,0}.
    {put_list,{y,1},{y,3},{x,5}}.
    {move,{atom,e1},{x,2}}.
    {move,{atom,e2},{x,3}}.
    {move,{atom,e0},{x,1}}.
    {move,{atom,e3},{x,4}}.
    {move,{y,2},{x,0}}.
    {call_last,6,{f,535},4}. % coverage_trim/6
  {label,537}.
    {move,{y,3},{x,0}}.
    {move,{y,0},{y,3}}.
    {trim,2,2}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",981}]}.
    {call_ext,1,{extfunc,lists,reverse,1}}.
    {bs_set_position,{y,0},{y,1}}.
    {bs_get_tail,{y,0},{x,1},1}.
    {test_heap,4,2}.
    {put_tuple2,{x,0},{list,[{atom,done},{x,1},{x,0}]}}.
    {deallocate,2}.
    return.
  {label,538}.
    {bs_set_position,{x,0},{x,6}}.
    {bs_get_tail,{x,0},{x,0},6}.
    {jump,{f,534}}.
  {label,539}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",977}]}.
    {case_end,{x,0}}.


{function, coverage_trim_1, 3, 541}.
  {label,540}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",984}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,coverage_trim_1},3}.
  {label,541}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,3},3}.
    {bs_match,{f,542},{x,0},{commands,[{ensure_exactly,8},{'=:=',nil,8,47}]}}.
    {allocate,0,3}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",987}]}.
    {call,2,{f,545}}. % do_coverage_trim_1/2
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
  {label,542}.
    {bs_set_position,{x,0},{x,3}}.
    {bs_match,{f,543},{x,0},{commands,[{ensure_exactly,0}]}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {call_only,2,{f,545}}. % do_coverage_trim_1/2
  {label,543}.
    {allocate,2,3}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{y,1}}.
    {bs_get_tail,{x,0},{x,0},3}.
    {move,{x,2},{x,1}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",989}]}.
    {call,2,{f,545}}. % do_coverage_trim_1/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {swap,{y,1},{x,0}}.
    {move,{y,0},{x,1}}.
    {trim,1,1}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",991}]}.
    {call,2,{f,545}}. % do_coverage_trim_1/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",989}]}.
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


{function, do_coverage_trim_1, 2, 545}.
  {label,544}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",993}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,do_coverage_trim_1},2}.
  {label,545}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",994}]}.
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


{function, coverage_trim_2, 3, 547}.
  {label,546}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",996}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,coverage_trim_2},3}.
  {label,547}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{'-inf',10}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_list,{t_integer,{0,1114111}},nil}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,3},3}.
    {test,bs_get_utf8,
          {f,549},
          4,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[996,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {allocate,5,5}.
    {move,{x,3},{y,0}}.
    {move,{x,4},{y,1}}.
    {move,{x,0},{y,2}}.
    {move,{x,2},{y,3}}.
    {move,{x,1},{y,4}}.
    {move,{x,4},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",997}]}.
    {call,1,{f,557}}. % printable_char/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,548},[{x,0},{atom,true}]}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",999}]}.
    {gc_bif,'-',
            {f,0},
            0,
            [{tr,{y,4},{t_integer,{'-inf',10}}},{integer,1}],
            {x,0}}.
    {test_heap,2,1}.
    {put_list,{y,1},{y,3},{x,2}}.
    {move,{x,0},{x,1}}.
    {move,{y,2},{x,0}}.
    {call_last,3,{f,547},5}. % coverage_trim_2/3
  {label,548}.
    {move,{y,3},{x,0}}.
    {move,{y,0},{y,3}}.
    {trim,2,3}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1001}]}.
    {call_ext,1,{extfunc,lists,reverse,1}}.
    {bs_set_position,{y,0},{y,1}}.
    {bs_get_tail,{y,0},{x,1},1}.
    {test_heap,4,2}.
    {put_tuple2,{x,0},{list,[{y,2},{x,1},{x,0}]}}.
    {deallocate,3}.
    return.
  {label,549}.
    {bs_get_tail,{x,0},{x,0},3}.
    {jump,{f,546}}.


{function, coverage_trim_3, 2, 551}.
  {label,550}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1004}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,coverage_trim_3},2}.
  {label,551}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_bitstring,16,false},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{3,3}}}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1005}]}.
    {call_ext,1,{extfunc,erlang,iolist_size,1}}.
    {gc_bif,'-',{f,0},1,[{tr,{x,0},{t_integer,{0,'+inf'}}},{integer,3}],{y,0}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1007}]}.
    {call_ext,1,{extfunc,erlang,iolist_to_binary,1}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_binary2,
          {f,552},
          2,
          [{tr,{x,1},{t_bs_context,8}},
           {tr,{y,0},{t_integer,{-3,'+inf'}}},
           8,
           {field_flags,[{anno,[1006,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,552},
              {x,1},
              {commands,[{ensure_exactly,24},
                         {binary,3,{literal,[]},3,8,{x,3}}]}}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    {deallocate,2}.
    return.
  {label,552}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1006}]}.
    {badmatch,{x,0}}.


{function, coverage_trim_4, 1, 554}.
  {label,553}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1010}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,coverage_trim_4},1}.
  {label,554}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1011}]}.
    {call,2,{f,1921}}. % '-coverage_trim_4/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1013}]}.
    {bs_create_bin,{f,555},
                   0,0,16,
                   {x,0},
                   {list,[{atom,integer},
                          1,1,
                          {literal,[native]},
                          {integer,57348},
                          {integer,16}]}}.
    {deallocate,1}.
    return.
  {label,555}.
    {move,{atom,error},{x,0}}.
    {deallocate,1}.
    return.


{function, printable_char, 1, 557}.
  {label,556}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1019}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,printable_char},1}.
  {label,557}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,1114111}}}]}}.
    {bif,'=:=',{f,0},[{tr,{x,0},{t_integer,{0,1114111}}},{integer,97}],{x,0}}.
    return.


{function, coverage_beam_ssa_codegen, 1, 559}.
  {label,558}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1022}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,coverage_beam_ssa_codegen},
               1}.
  {label,559}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,has_map_fields,{f,560},{literal,#{1 => 42}},{list,[{integer,1}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,1917},1}. % '-coverage_beam_ssa_codegen/1-lbc$^0/2-0-'/2
  {label,560}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1026}]}.
    {case_end,{literal,#{1 => 42}}}.


{function, coverage_beam_ssa_pre_codegen, 1, 562}.
  {label,561}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1032}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,coverage_beam_ssa_pre_codegen},
               1}.
  {label,562}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,256,true}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,561}}.


{function, coverage_beam_ssa_bsm_error, 1, 564}.
  {label,563}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1035}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,coverage_beam_ssa_bsm_error},
               1}.
  {label,564}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,563},1,[{x,0}],{x,1}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,badarg},{x,0}]}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1036}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, coverage_beam_validator, 1, 566}.
  {label,565}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1038}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,coverage_beam_validator},
               1}.
  {label,566}.
    {allocate,1,1}.
    {'try',{y,0},{f,567}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1041}]}.
    {call_fun,0}.
    {try_end,{y,0}}.
    {move,{x,0},{x,3}}.
    {jump,{f,568}}.
  {label,567}.
    {try_case,{y,0}}.
    {test,is_eq_exact,
          {f,569},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,throw}]}.
    {move,{atom,ok},{x,3}}.
  {label,568}.
    {move,{atom,ok},{x,1}}.
    {move,{atom,ok},{x,2}}.
    {move,{atom,ok},{x,0}}.
    {call_last,4,{f,571},1}. % coverage_beam_validator/4
  {label,569}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.


{function, coverage_beam_validator, 4, 571}.
  {label,570}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1049}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,coverage_beam_validator},
               4}.
  {label,571}.
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[ok]}}]}}.
    {'%',{var_info,{x,2},[{type,{t_atom,[ok]}}]}}.
    {move,{x,3},{x,0}}.
    return.


{function, multiple_uses, 1, 573}.
  {label,572}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1051}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,multiple_uses},1}.
  {label,573}.
    {test,is_list,{f,572},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<1,88,245,159,1,89>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1052}]}.
    {call,1,{f,581}}. % multiple_uses_1/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,4,true,
                                   #{1 => {t_integer,{0,65535}},
                                     2 => {t_integer,{0,65535}},
                                     3 => {t_integer,{0,65535}},
                                     4 => {t_bitstring,16,false}}}}]}}.
    {test,is_eq_exact,
          {f,579},
          [{tr,{x,0},
               {t_tuple,4,true,
                        #{1 => {t_integer,{0,65535}},
                          2 => {t_integer,{0,65535}},
                          3 => {t_integer,{0,65535}},
                          4 => {t_bitstring,16,false}}}},
           {literal,{344,62879,345,<<245,159,1,89>>}}]}.
    {move,{literal,<<0,0,197,18>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1053}]}.
    {call,1,{f,584}}. % multiple_uses_2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,578},[{x,0},{atom,true}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1776},0,0,{x,1},{list,[]}}.
    {move,{literal,<<0,0,42,43>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1054}]}.
    {call,2,{f,587}}. % multiple_uses_3/2
    {test,is_eq_exact,{f,577},[{x,0},{literal,<<"*+">>}]}.
    {move,{integer,42},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1056}]}.
    {call,2,{f,596}}. % first_after/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[ok]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,576},
          [{tr,{x,0},
               {t_union,{t_atom,[ok]},none,none,none,{t_bitstring,8,false}}},
           {atom,ok}]}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1057}]}.
    {call,2,{f,596}}. % first_after/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[ok]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,575},
          [{tr,{x,0},
               {t_union,{t_atom,[ok]},none,none,none,{t_bitstring,8,false}}},
           {literal,<<1>>}]}.
    {move,{integer,1},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1058}]}.
    {call,2,{f,596}}. % first_after/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[ok]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,574},
          [{tr,{x,0},
               {t_union,{t_atom,[ok]},none,none,none,{t_bitstring,8,false}}},
           {literal,<<2>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,574}.
    {badmatch,{x,0}}.
  {label,575}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1057}]}.
    {badmatch,{x,0}}.
  {label,576}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1056}]}.
    {badmatch,{x,0}}.
  {label,577}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1054}]}.
    {badmatch,{x,0}}.
  {label,578}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1053}]}.
    {badmatch,{atom,false}}.
  {label,579}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1052}]}.
    {badmatch,{x,0}}.


{function, multiple_uses_1, 1, 581}.
  {label,580}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1062}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,multiple_uses_1},1}.
  {label,581}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,16,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,582},
              {x,0},
              {commands,[{ensure_at_least,16,1},
                         {integer,1,{literal,[]},16,1,{x,1}}]}}.
    {allocate,3,2}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
    {bs_get_position,{x,0},{y,0},1}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1064}]}.
    {call,1,{f,590}}. % multiple_uses_match/1
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
  {label,582}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,580}}.


{function, multiple_uses_2, 1, 584}.
  {label,583}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1067}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,multiple_uses_2},1}.
  {label,584}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,32,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,585},
              {x,0},
              {commands,[{ensure_at_least,16,1},
                         {skip,16},
                         {get_tail,1,1,{x,1}}]}}.
    {move,{x,1},{x,0}}.
    {call_only,2,{f,593}}. % multiple_uses_cmp/2
  {label,585}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,583}}.


{function, multiple_uses_3, 2, 587}.
  {label,586}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1071}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,multiple_uses_3},2}.
  {label,587}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,32,false}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_fun,1,{id,1},any}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {bs_match,{f,588},
              {x,0},
              {commands,[{ensure_at_least,16,1},
                         {skip,16},
                         {get_tail,1,1,{x,0}}]}}.
    {call_only,1,{f,1776}}. % id/1
  {label,588}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {jump,{f,586}}.


{function, multiple_uses_match, 1, 590}.
  {label,589}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1075}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,multiple_uses_match},1}.
  {label,590}.
    {'%',{var_info,{x,0},[{type,{t_bs_context,16}},accepts_match_context]}}.
    {bs_start_match4,{atom,resume},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,591},
              {x,0},
              {commands,[{ensure_exactly,32},
                         {integer,2,{literal,[]},16,1,{x,2}},
                         {integer,3,{literal,[]},16,1,{x,3}}]}}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,591}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,589}}.


{function, multiple_uses_cmp, 2, 593}.
  {label,592}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1078}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,multiple_uses_cmp},2}.
  {label,593}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,16,false}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,16,false}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {bs_match,{f,594},
              {x,0},
              {commands,[{ensure_exactly,16},
                         {integer,3,{literal,[]},16,1,{x,3}}]}}.
    {bs_start_match4,{atom,no_fail},4,{x,1},{x,4}}.
    {bs_match,{f,594},
              {x,4},
              {commands,[{ensure_exactly,16},
                         {integer,5,{literal,[]},16,1,{x,5}}]}}.
    {bif,'=:=',
         {f,0},
         [{tr,{x,5},{t_integer,{0,65535}}},{tr,{x,3},{t_integer,{0,65535}}}],
         {x,0}}.
    return.
  {label,594}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {jump,{f,592}}.


{function, first_after, 2, 596}.
  {label,595}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1081}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,first_after},2}.
  {label,596}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,42}}}]}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1082}]}.
    {gc_bif,byte_size,{f,0},2,[{tr,{x,0},{t_bitstring,8,false}}],{x,2}}.
    {test,is_lt,
          {f,597},
          [{tr,{x,1},{t_integer,{0,42}}},
           {tr,{x,2},{t_integer,{0,288230376151711743}}}]}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,2}}.
    {test,bs_skip_bits2,
          {f,598},
          [{x,2},
           {x,1},
           8,
           {field_flags,[{anno,[1087,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}]}.
    {allocate,0,3}.
    {move,{x,2},{x,1}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1089}]}.
    {call,2,{f,600}}. % match_first/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_bitstring,8,false},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {get_tuple_element,{x,0},0,{x,0}}.
    {deallocate,0}.
    return.
  {label,597}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,598}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1087}]}.
    {badmatch,{x,0}}.


{function, match_first, 2, 600}.
  {label,599}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1096}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,match_first},2}.
  {label,600}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bs_context,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,resume},2,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {bs_match,{f,601},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {binary,2,{literal,[]},1,8,{x,0}},
                         {get_tail,2,1,{x,1}}]}}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    return.
  {label,601}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_get_tail,{x,1},{x,1},2}.
    {jump,{f,599}}.


{function, zero_label, 1, 603}.
  {label,602}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1099}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,zero_label},1}.
  {label,603}.
    {test,is_list,{f,602},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<"FACEnosemouth">>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1100}]}.
    {call,1,{f,607}}. % read_pols/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,605},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<"nosemouth">>}]}.
    {move,{literal,<<"noFACE">>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1101}]}.
    {call,1,{f,607}}. % read_pols/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,604},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<"CE">>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,604}.
    {badmatch,{x,0}}.
  {label,605}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1100}]}.
    {badmatch,{x,0}}.


{function, read_pols, 1, 607}.
  {label,606}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1104}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,read_pols},1}.
  {label,607}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,608},
              {x,0},
              {commands,[{ensure_at_least,32,1},
                         {skip,32},
                         {get_tail,1,1,{x,0}}]}}.
    return.
  {label,608}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1105}]}.
    {badmatch,{x,0}}.


{function, followed_by_catch, 1, 610}.
  {label,609}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1110}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,followed_by_catch},1}.
  {label,610}.
    {test,is_list,{f,609},[{x,0}]}.
    {move,{literal,<<0,1,2,3,4,5>>},{x,0}}.
    {call_only,1,{f,612}}. % handle/1


{function, handle, 1, 612}.
  {label,611}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1114}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,handle},1}.
  {label,612}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {test,is_eq_exact,
          {f,613},
          [{tr,{x,0},{t_bitstring,16,false}},{literal,<<>>}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,613}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_match,{f,617},{x,1},{commands,[{ensure_at_least,16,1},{skip,16}]}}.
    {allocate,2,2}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {bs_get_tail,{x,1},{y,0},2}.
    {'catch',{y,1},{f,614}}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",1117}]}.
    {call_ext,0,{extfunc,fooX,func,0}}.
  {label,614}.
    {catch_end,{y,1}}.
    {test,is_nonempty_list,{f,615},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_nil,{f,615},[{x,0}]}.
    {test,is_tagged_tuple,{f,616},[{x,1},2,{atom,rec}]}.
  {label,615}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,612},2}. % handle/1
  {label,616}.
    {line,[{scope,[0]},{location,"bs_match_dialyzer_SUITE.erl",1119}]}.
    {badrecord,{x,1}}.
  {label,617}.
    {line,[{scope,[0,2]},{location,"bs_match_dialyzer_SUITE.erl",1116}]}.
    {badmatch,{x,0}}.


{function, matching_meets_construction, 1, 619}.
  {label,618}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1125}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,matching_meets_construction},
               1}.
  {label,619}.
    {test,is_list,{f,618},[{x,0}]}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1126}]}.
    {call,1,{f,1776}}. % id/1
    {move,{x,0},{y,1}}.
    {move,{integer,2},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1127}]}.
    {call,1,{f,1776}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{literal,<<1,2,3,4,5>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1128}]}.
    {call,1,{f,1776}}. % id/1
    {test,bs_start_match3,{f,627},1,[{x,0}],{x,1}}.
    {test,bs_skip_bits2,
          {f,627},
          [{x,1},
           {y,0},
           8,
           {field_flags,[{anno,[1129,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_match,{f,627},
              {x,1},
              {commands,[{ensure_at_least,0,8},{get_tail,2,8,{x,0}}]}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1130}]}.
    {bs_create_bin,{f,0},
                   0,1,8,
                   {x,0},
                   {list,[{atom,append},
                          1,8,nil,
                          {tr,{x,0},{t_bitstring,8,false}},
                          {atom,all},
                          {atom,binary},
                          2,8,nil,
                          {y,1},
                          {atom,all}]}}.
    {test,is_eq_exact,
          {f,626},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<3,4,5,97,98,99>>}]}.
    {'catch',{y,1},{f,620}}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,<<"Abc">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",1132}]}.
    {call,1,{f,629}}. % matching_meets_construction_1/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
  {label,620}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,625},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,625},[{x,1},2,{atom,badarg}]}.
    {'catch',{y,0},{f,621}}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{literal,<<"Abc">>},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_dialyzer_SUITE.erl",1133}]}.
    {call,1,{f,632}}. % matching_meets_construction_2/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
  {label,621}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,624},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,624},[{x,1},2,{atom,badarg}]}.
    {move,{literal,<<"Abc">>},{x,0}}.
    {line,[{scope,[1,2]},{location,"bs_match_dialyzer_SUITE.erl",1134}]}.
    {call,1,{f,635}}. % matching_meets_construction_3/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,623},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<"Bbc">>}]}.
    {move,{integer,2},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_dialyzer_SUITE.erl",1136}]}.
    {call,2,{f,638}}. % encode_octet_string/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {test,is_eq_exact,
          {f,622},
          [{tr,{x,0},{t_bitstring,16,false}},{literal,<<1,2>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,622}.
    {badmatch,{x,0}}.
  {label,623}.
    {line,[{scope,[0]},{location,"bs_match_dialyzer_SUITE.erl",1134}]}.
    {badmatch,{x,0}}.
  {label,624}.
    {line,[{scope,[0]},{location,"bs_match_dialyzer_SUITE.erl",1133}]}.
    {badmatch,{x,0}}.
  {label,625}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",1132}]}.
    {badmatch,{x,0}}.
  {label,626}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",1131}]}.
    {badmatch,{x,0}}.
  {label,627}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",1129}]}.
    {badmatch,{x,0}}.


{function, matching_meets_construction_1, 1, 629}.
  {label,628}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1139}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,matching_meets_construction_1},
               1}.
  {label,629}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,630},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {'=:=',nil,8,65},
                         {get_tail,1,1,{x,0}}]}}.
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
  {label,630}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,628}}.


{function, matching_meets_construction_2, 1, 632}.
  {label,631}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1141}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,matching_meets_construction_2},
               1}.
  {label,632}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,633},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {'=:=',nil,8,65},
                         {get_tail,1,1,{x,0}}]}}.
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
  {label,633}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,631}}.


{function, matching_meets_construction_3, 1, 635}.
  {label,634}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1143}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,matching_meets_construction_3},
               1}.
  {label,635}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,636},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {'=:=',nil,8,65},
                         {get_tail,1,1,{x,0}}]}}.
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
  {label,636}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,634}}.


{function, encode_octet_string, 2, 638}.
  {label,637}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1145}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,encode_octet_string},2}.
  {label,638}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{2,2}}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1146}]}.
    {bs_create_bin,{f,0},
                   0,1,16,
                   {x,0},
                   {list,[{atom,binary},
                          1,8,nil,
                          {tr,{x,0},{t_bitstring,8,false}},
                          {integer,2}]}}.
    return.


{function, simon, 1, 640}.
  {label,639}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1148}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,simon},1}.
  {label,640}.
    {test,is_list,{f,639},[{x,0}]}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{literal,<<>>},{x,1}}.
    {move,{atom,blurf},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1149}]}.
    {call,2,{f,647}}. % simon/2
    {'%',{var_info,{x,0},[{type,{t_atom,[one]}}]}}.
    {move,{literal,<<"*">>},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1150}]}.
    {call,2,{f,647}}. % simon/2
    {'%',{var_info,{x,0},[{type,{t_atom,[one,two]}}]}}.
    {test,is_eq_exact,{f,645},[{tr,{x,0},{t_atom,[one,two]}},{atom,two}]}.
    {'catch',{y,2},{f,641}}.
    {move,{literal,<<1>>},{x,1}}.
    {move,{integer,17},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",1151}]}.
    {call,2,{f,647}}. % simon/2
    {'%',{var_info,{x,0},[{type,{t_atom,[one]}}]}}.
  {label,641}.
    {catch_end,{y,2}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[17,<<1>>]},{x,1}}.
    {move,{atom,simon},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_dialyzer_SUITE.erl",1151}]}.
    {call,3,{f,885}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,1},{f,642}}.
    {move,{literal,<<1,2,3>>},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_dialyzer_SUITE.erl",1152}]}.
    {call,2,{f,647}}. % simon/2
    {'%',{var_info,{x,0},[{type,{t_atom,[one,two]}}]}}.
  {label,642}.
    {catch_end,{y,1}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[0,<<1,2,3>>]},{x,1}}.
    {move,{atom,simon},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_dialyzer_SUITE.erl",1152}]}.
    {call,3,{f,885}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<"\t">>},{x,1}}.
    {move,{atom,blurf},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_dialyzer_SUITE.erl",1154}]}.
    {call,2,{f,651}}. % simon2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[one]}}]}}.
    {move,{literal,<<9,1>>},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_dialyzer_SUITE.erl",1155}]}.
    {call,2,{f,651}}. % simon2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[one,two]}}]}}.
    {test,is_eq_exact,{f,644},[{tr,{x,0},{t_atom,[one,two]}},{atom,two}]}.
    {'catch',{y,0},{f,643}}.
    {move,{literal,<<"\t\n\v">>},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",1156}]}.
    {call,2,{f,651}}. % simon2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[one,two]}}]}}.
  {label,643}.
    {catch_end,{y,0}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[0,<<"\t\n\v">>]},{x,1}}.
    {move,{atom,simon2},{x,0}}.
    {call_last,3,{f,885},3}. % fc/3
  {label,644}.
    {line,[{scope,[0,2]},{location,"bs_match_dialyzer_SUITE.erl",1155}]}.
    {badmatch,{atom,one}}.
  {label,645}.
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",1150}]}.
    {badmatch,{atom,one}}.


{function, simon, 2, 647}.
  {label,646}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1159}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,simon},2}.
  {label,647}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[blurf]},
                                   none,
                                   {t_integer,{0,17}},
                                   none,none}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_match,{f,648},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{atom,one},{x,0}}.
    return.
  {label,648}.
    {bs_match,{f,649},{x,1},{commands,[{ensure_exactly,8}]}}.
    {test,is_eq_exact,
          {f,649},
          [{tr,{x,0},
               {t_union,{t_atom,[blurf]},none,{t_integer,{0,17}},none,none}},
           {integer,0}]}.
    {move,{atom,two},{x,0}}.
    return.
  {label,649}.
    {bs_get_tail,{x,1},{x,1},2}.
    {jump,{f,646}}.


{function, simon2, 2, 651}.
  {label,650}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1162}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,simon2},2}.
  {label,651}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[blurf]},
                                   none,
                                   {t_integer,{0,0}},
                                   none,none}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {bs_match,{f,652},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,is_eq_exact,{f,652},[{tr,{x,3},{t_integer,{0,255}}},{integer,9}]}.
    {bs_match,{f,652},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{atom,one},{x,0}}.
    return.
  {label,652}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_match,{f,653},{x,1},{commands,[{ensure_exactly,16}]}}.
    {test,is_eq_exact,
          {f,653},
          [{tr,{x,0},
               {t_union,{t_atom,[blurf]},none,{t_integer,{0,0}},none,none}},
           {integer,0}]}.
    {move,{atom,two},{x,0}}.
    return.
  {label,653}.
    {bs_get_tail,{x,1},{x,1},2}.
    {jump,{f,650}}.


{function, matching_and_andalso, 1, 655}.
  {label,654}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1167}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,matching_and_andalso},1}.
  {label,655}.
    {test,is_list,{f,654},[{x,0}]}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{integer,3},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1168}]}.
    {call,2,{f,673}}. % matching_and_andalso_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,2},{f,656}}.
    {move,{integer,-8},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1169}]}.
    {call,2,{f,673}}. % matching_and_andalso_1/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,656}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,671},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,671},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,1},{f,657}}.
    {move,{atom,blurf},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_dialyzer_SUITE.erl",1170}]}.
    {call,2,{f,673}}. % matching_and_andalso_1/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,657}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,670},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,670},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,0},{f,658}}.
    {move,{integer,19},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_dialyzer_SUITE.erl",1171}]}.
    {call,2,{f,673}}. % matching_and_andalso_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,658}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,669},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,669},[{x,1},2,{atom,function_clause}]}.
    {move,{literal,<<"-xyz">>},{x,1}}.
    {move,{literal,"abc"},{x,0}}.
    {line,[{scope,[1,2]},{location,"bs_match_dialyzer_SUITE.erl",1173}]}.
    {call,2,{f,676}}. % matching_and_andalso_23/2
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
           {literal,{"abc",<<"xyz">>}}]}.
    {move,{literal,<<"`">>},{x,1}}.
    {move,{literal,"abc"},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_dialyzer_SUITE.erl",1174}]}.
    {call,2,{f,676}}. % matching_and_andalso_23/2
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
    {move,{literal,<<"{">>},{x,1}}.
    {move,{literal,"abc"},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_dialyzer_SUITE.erl",1175}]}.
    {call,2,{f,676}}. % matching_and_andalso_23/2
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
    {move,{literal,<<"@">>},{x,1}}.
    {move,{literal,"abc"},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_dialyzer_SUITE.erl",1176}]}.
    {call,2,{f,676}}. % matching_and_andalso_23/2
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
    {move,{literal,<<"[">>},{x,1}}.
    {move,{literal,"abc"},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_dialyzer_SUITE.erl",1177}]}.
    {call,2,{f,676}}. % matching_and_andalso_23/2
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
           {literal,{"abc",<<>>}}]}.
    {move,{literal,<<>>},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_dialyzer_SUITE.erl",1178}]}.
    {call,2,{f,676}}. % matching_and_andalso_23/2
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
    {move,{literal,<<"A">>},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_dialyzer_SUITE.erl",1179}]}.
    {call,2,{f,676}}. % matching_and_andalso_23/2
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
    {move,{literal,<<"Z">>},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_dialyzer_SUITE.erl",1180}]}.
    {call,2,{f,676}}. % matching_and_andalso_23/2
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
    {move,{literal,<<"a">>},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_dialyzer_SUITE.erl",1181}]}.
    {call,2,{f,676}}. % matching_and_andalso_23/2
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
    {move,{literal,<<"z">>},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_dialyzer_SUITE.erl",1182}]}.
    {call,2,{f,676}}. % matching_and_andalso_23/2
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
          {f,659},
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
  {label,659}.
    {badmatch,{x,0}}.
  {label,660}.
    {line,[{scope,[0]},{location,"bs_match_dialyzer_SUITE.erl",1181}]}.
    {badmatch,{x,0}}.
  {label,661}.
    {line,[{scope,[0]},{location,"bs_match_dialyzer_SUITE.erl",1180}]}.
    {badmatch,{x,0}}.
  {label,662}.
    {line,[{scope,[0]},{location,"bs_match_dialyzer_SUITE.erl",1179}]}.
    {badmatch,{x,0}}.
  {label,663}.
    {line,[{scope,[0]},{location,"bs_match_dialyzer_SUITE.erl",1178}]}.
    {badmatch,{x,0}}.
  {label,664}.
    {line,[{scope,[0]},{location,"bs_match_dialyzer_SUITE.erl",1177}]}.
    {badmatch,{x,0}}.
  {label,665}.
    {line,[{scope,[0]},{location,"bs_match_dialyzer_SUITE.erl",1176}]}.
    {badmatch,{x,0}}.
  {label,666}.
    {line,[{scope,[0]},{location,"bs_match_dialyzer_SUITE.erl",1175}]}.
    {badmatch,{x,0}}.
  {label,667}.
    {line,[{scope,[0]},{location,"bs_match_dialyzer_SUITE.erl",1174}]}.
    {badmatch,{x,0}}.
  {label,668}.
    {line,[{scope,[0]},{location,"bs_match_dialyzer_SUITE.erl",1173}]}.
    {badmatch,{x,0}}.
  {label,669}.
    {line,[{scope,[0]},{location,"bs_match_dialyzer_SUITE.erl",1171}]}.
    {badmatch,{x,0}}.
  {label,670}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",1170}]}.
    {badmatch,{x,0}}.
  {label,671}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",1169}]}.
    {badmatch,{x,0}}.


{function, matching_and_andalso_1, 2, 673}.
  {label,672}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1185}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,matching_and_andalso_1},2}.
  {label,673}.
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
          {f,674},
          [{tr,{x,1},
               {t_union,{t_atom,[blurf]},
                        none,
                        {t_integer,{-8,19}},
                        none,none}}]}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1186}]}.
    {gc_bif,byte_size,{f,0},3,[{tr,{x,2},{t_bitstring,8,false}}],{x,2}}.
    {test,is_ge,
          {f,674},
          [{tr,{x,2},{t_integer,{0,288230376151711743}}},
           {tr,{x,1},{t_integer,{-8,19}}}]}.
    {test,is_ge,{f,674},[{tr,{x,1},{t_integer,{-8,19}}},{integer,1}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,674}.
    {bs_get_tail,{x,0},{x,0},2}.
    {jump,{f,672}}.


{function, matching_and_andalso_23, 2, 676}.
  {label,675}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1189}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,matching_and_andalso_23},
               2}.
  {label,676}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{97,99}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {allocate,2,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1190}]}.
    {call,2,{f,679}}. % matching_and_andalso_2/2
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
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1191}]}.
    {call,2,{f,684}}. % matching_and_andalso_3/2
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
          {f,677},
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
  {label,677}.
    {badmatch,{x,0}}.


{function, matching_and_andalso_2, 2, 679}.
  {label,678}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1194}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,matching_and_andalso_2},2}.
  {label,679}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{97,99}},nil}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_match,{f,682},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}},
                         {get_tail,3,1,{x,1}}]}}.
    {test,is_ge,{f,680},[{tr,{x,2},{t_integer,{0,255}}},{integer,97}]}.
    {test,is_ge,{f,681},[{integer,122},{tr,{x,2},{t_integer,{97,255}}}]}.
    {jump,{f,682}}.
  {label,680}.
    {test,is_ge,{f,681},[{tr,{x,2},{t_integer,{0,96}}},{integer,65}]}.
    {test,is_ge,{f,682},[{tr,{x,2},{t_integer,{65,96}}},{integer,91}]}.
  {label,681}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    return.
  {label,682}.
    {move,{atom,error},{x,0}}.
    return.


{function, matching_and_andalso_3, 2, 684}.
  {label,683}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1202}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,matching_and_andalso_3},2}.
  {label,684}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{97,99}},nil}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_match,{f,687},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}},
                         {get_tail,3,1,{x,1}}]}}.
    {gc_bif,abs,{f,687},3,[{tr,{x,2},{t_integer,{0,255}}}],{x,2}}.
    {test,is_ge,{f,685},[{tr,{x,2},{t_integer,{0,255}}},{integer,97}]}.
    {test,is_ge,{f,686},[{integer,122},{tr,{x,2},{t_integer,{97,255}}}]}.
    {jump,{f,687}}.
  {label,685}.
    {test,is_ge,{f,686},[{tr,{x,2},{t_integer,{0,96}}},{integer,65}]}.
    {test,is_ge,{f,687},[{tr,{x,2},{t_integer,{65,96}}},{integer,91}]}.
  {label,686}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    return.
  {label,687}.
    {move,{atom,error},{x,0}}.
    return.


{function, otp_7188, 1, 689}.
  {label,688}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1209}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,otp_7188},1}.
  {label,689}.
    {test,is_list,{f,688},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<84,65,71,68,117,154,105,232,107,121,0,0,0,0,0,0,0,0,0,0,
                     0,0,0,0,0,0,0,0,0,0,0,0,0,68,97,110,105,101,108,32,76,97,
                     110,100,97,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,66,101,
                     115,116,32,79,102,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
                     0,0,0,0,50,48,48,48,50,48,48,48,32,45,32,66,101,115,116,
                     32,79,102,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,
                     32,12>>},
          {x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1220}]}.
    {call,1,{f,692}}. % parse_v1_or_v11_tag/1
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
     {f,690},
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
  {label,690}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1217}]}.
    {badmatch,{x,0}}.


{function, parse_v1_or_v11_tag, 1, 692}.
  {label,691}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1222}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,parse_v1_or_v11_tag},1}.
  {label,692}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,256,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_match,{f,694},
              {x,0},
              {commands,[{ensure_at_least,776,1},
                         {'=:=',nil,24,5521735},
                         {binary,1,{literal,[]},30,8,{x,1}},
                         {binary,2,{literal,[]},30,8,{x,2}},
                         {binary,3,{literal,[]},30,8,{x,3}},
                         {skip,32}]}}.
    {bs_get_position,{x,0},{x,4},4}.
    {bs_match,{f,693},
              {x,0},
              {commands,[{ensure_exactly,248},
                         {skip,224},
                         {'=:=',nil,8,0},
                         {integer,5,{literal,[]},8,1,{x,5}}]}}.
    {allocate,3,6}.
    {move,{x,5},{y,0}}.
    {move,{x,3},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1228}]}.
    {call,1,{f,696}}. % trim/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {swap,{y,2},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1229}]}.
    {call,1,{f,696}}. % trim/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {swap,{y,1},{x,0}}.
    {call,1,{f,696}}. % trim/1
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
  {label,693}.
    {bs_set_position,{x,0},{x,4}}.
    {bs_match,{f,694},{x,0},{commands,[{ensure_exactly,248}]}}.
    {allocate,2,4}.
    {move,{x,3},{y,0}}.
    {move,{x,2},{y,1}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1236}]}.
    {call,1,{f,696}}. % trim/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {swap,{y,1},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1237}]}.
    {call,1,{f,696}}. % trim/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {swap,{y,0},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1238}]}.
    {call,1,{f,696}}. % trim/1
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
  {label,694}.
    {move,{atom,error},{x,0}}.
    return.


{function, trim, 1, 696}.
  {label,695}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1242}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,trim},1}.
  {label,696}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {allocate,0,1}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1243}]}.
    {call_ext,1,{extfunc,erlang,binary_to_list,1}}.
    {call,1,{f,698}}. % trim_blanks/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {call_ext_last,1,{extfunc,erlang,list_to_binary,1},0}.


{function, trim_blanks, 1, 698}.
  {label,697}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1245}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,trim_blanks},1}.
  {label,698}.
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {allocate,0,1}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1246}]}.
    {call_ext,1,{extfunc,lists,reverse,1}}.
    {call,1,{f,700}}. % skip_blanks_and_zero/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {call_ext_last,1,{extfunc,lists,reverse,1},0}.


{function, skip_blanks_and_zero, 1, 700}.
  {label,699}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1248}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,skip_blanks_and_zero},1}.
  {label,700}.
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_nonempty_list,{f,702},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {select_val,{x,1},
                {f,702},
                {list,[{integer,0},{f,701},{integer,32},{f,701}]}}.
  {label,701}.
    {move,{x,2},{x,0}}.
    {call_only,1,{f,700}}. % skip_blanks_and_zero/1
  {label,702}.
    return.


{function, otp_7233, 1, 704}.
  {label,703}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1260}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,otp_7233},1}.
  {label,704}.
    {test,is_list,{f,703},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,{rec_otp_7233,<<"XXabcde">>,[{"xxxxxxxx",42}]}},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1261}]}.
    {call,1,{f,708}}. % otp_7233_1/1
    {bif,get,{f,0},[{atom,io_format}],{x,0}}.
    {test,is_eq_exact,
          {f,706},
          [{x,0},{literal,[<<"XXabcde">>,{"xxxxxxxx",42}]}]}.
    {move,{atom,io_format},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1263}]}.
    {call_ext,1,{extfunc,erlang,erase,1}}.
    {move,{literal,{rec_otp_7233,<<"XXabcde">>,[]}},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1264}]}.
    {call,1,{f,708}}. % otp_7233_1/1
    {bif,get,{f,0},[{atom,io_format}],{x,0}}.
    {test,is_eq_exact,{f,705},[{x,0},{atom,undefined}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,705}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1265}]}.
    {badmatch,{x,0}}.
  {label,706}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1262}]}.
    {badmatch,{x,0}}.


{function, otp_7233_1, 1, 708}.
  {label,707}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1268}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,otp_7233_1},1}.
  {label,708}.
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
    {bs_match,{f,711},
              {x,2},
              {commands,[{ensure_exactly,56},
                         {binary,3,{literal,[]},2,8,{x,3}}]}}.
    {test,is_eq_exact,
          {f,710},
          [{tr,{x,3},{t_bitstring,8,false}},{literal,<<"XX">>}]}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {get_tuple_element,{x,0},2,{x,2}}.
    {move,{integer,1},{x,1}}.
    {move,{literal,"xxxxxxxx"},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1273}]}.
    {call_ext,3,{extfunc,lists,keyfind,3}}.
    {test,is_eq_exact,
          {f,709},
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
  {label,709}.
    {test_heap,4,1}.
    {get_tuple_element,{y,0},1,{x,1}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,1},{x,0},{x,1}}.
    {move,{atom,io_format},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1277}]}.
    {call_ext_last,2,{extfunc,erlang,put,2},1}.
  {label,710}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,711}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1269}]}.
    {badmatch,{x,1}}.


{function, otp_7240, 1, 713}.
  {label,712}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1283}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,otp_7240},1}.
  {label,713}.
    {test,is_list,{f,712},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<>>},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1284}]}.
    {call,2,{f,718}}. % otp_7240_a/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
    {move,{integer,2},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1285}]}.
    {call,2,{f,718}}. % otp_7240_a/2
    {'%',{var_info,{x,0},[{type,{t_atom,[b]}}]}}.
    {move,{literal,<<>>},{x,1}}.
    {move,{atom,anything},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1287}]}.
    {call,2,{f,721}}. % otp_7240_b/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
    {move,{literal,{x,y}},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1288}]}.
    {call,2,{f,721}}. % otp_7240_b/2
    {'%',{var_info,{x,0},[{type,{t_atom,[b]}}]}}.
    {move,{literal,<<>>},{x,1}}.
    {move,{atom,anything},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1290}]}.
    {call,2,{f,724}}. % otp_7240_c/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
    {move,{literal,<<2>>},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1291}]}.
    {call,2,{f,724}}. % otp_7240_c/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b]}}]}}.
    {test,is_eq_exact,{f,716},[{tr,{x,0},{t_atom,[a,b]}},{atom,b}]}.
    {move,{literal,<<>>},{x,1}}.
    {move,{atom,anything},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1293}]}.
    {call,2,{f,728}}. % otp_7240_d/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b]}}]}}.
    {test,is_eq_exact,{f,715},[{tr,{x,0},{t_atom,[a,b]}},{atom,a}]}.
    {move,{literal,<<2>>},{x,1}}.
    {move,{atom,again},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1294}]}.
    {call,2,{f,728}}. % otp_7240_d/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b]}}]}}.
    {test,is_eq_exact,{f,714},[{tr,{x,0},{t_atom,[a,b]}},{atom,b}]}.
    {move,{literal,<<>>},{x,1}}.
    {move,{atom,anything},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1296}]}.
    {call,2,{f,732}}. % otp_7240_e/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
    {move,{integer,41},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1297}]}.
    {call,2,{f,732}}. % otp_7240_e/2
    {'%',{var_info,{x,0},[{type,{t_atom,[b]}}]}}.
    {move,{literal,<<>>},{x,1}}.
    {move,{atom,anything},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1299}]}.
    {call,2,{f,735}}. % otp_7240_f/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
    {move,{literal,{}},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1300}]}.
    {call,2,{f,735}}. % otp_7240_f/2
    {'%',{var_info,{x,0},[{type,{t_atom,[b]}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,714}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1294}]}.
    {badmatch,{atom,a}}.
  {label,715}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1293}]}.
    {badmatch,{atom,b}}.
  {label,716}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1291}]}.
    {badmatch,{atom,a}}.


{function, otp_7240_a, 2, 718}.
  {label,717}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1304}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,otp_7240_a},2}.
  {label,718}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,1}}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_union,none,none,
                                   {t_integer,{2,2}},
                                   none,
                                   {t_bitstring,256,true}}}]}}.
    {test,is_eq_exact,
          {f,719},
          [{tr,{x,1},
               {t_union,none,none,
                        {t_integer,{2,2}},
                        none,
                        {t_bitstring,256,true}}},
           {literal,<<>>}]}.
    {move,{atom,a},{x,0}}.
    return.
  {label,719}.
    {test,is_eq_exact,{f,717},[{tr,{x,0},{t_integer,{0,1}}},{integer,1}]}.
    {test,is_eq_exact,
          {f,717},
          [{tr,{x,1},
               {t_union,none,none,
                        {t_integer,{2,2}},
                        none,
                        {t_bitstring,256,true}}},
           {integer,2}]}.
    {move,{atom,b},{x,0}}.
    return.


{function, otp_7240_b, 2, 721}.
  {label,720}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1307}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,otp_7240_b},2}.
  {label,721}.
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
          {f,722},
          [{tr,{x,1},
               {t_union,none,none,none,
                        [{{2,{t_atom,[x]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[x]},2 => {t_atom,[y]}}}}],
                        {t_bitstring,256,true}}},
           {literal,<<>>}]}.
    {move,{atom,a},{x,0}}.
    return.
  {label,722}.
    {test,is_eq_exact,
          {f,720},
          [{tr,{x,0},
               {t_union,{t_atom,[anything]},none,{t_integer,{1,1}},none,none}},
           {integer,1}]}.
    {test,is_tuple,
          {f,720},
          [{tr,{x,1},
               {t_union,none,none,none,
                        [{{2,{t_atom,[x]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[x]},2 => {t_atom,[y]}}}}],
                        {t_bitstring,256,true}}}]}.
    {move,{atom,b},{x,0}}.
    return.


{function, otp_7240_c, 2, 724}.
  {label,723}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1310}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,otp_7240_c},2}.
  {label,724}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[anything]},
                                   none,
                                   {t_integer,{1,1}},
                                   none,none}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {bs_match,{f,725},{x,1},{commands,[{ensure_exactly,8},{'=:=',nil,8,2}]}}.
    {test,is_eq_exact,
          {f,725},
          [{tr,{x,0},
               {t_union,{t_atom,[anything]},none,{t_integer,{1,1}},none,none}},
           {integer,1}]}.
    {move,{atom,b},{x,0}}.
    return.
  {label,725}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_match,{f,726},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{atom,a},{x,0}}.
    return.
  {label,726}.
    {bs_get_tail,{x,1},{x,1},2}.
    {jump,{f,723}}.


{function, otp_7240_d, 2, 728}.
  {label,727}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1313}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,otp_7240_d},2}.
  {label,728}.
    {'%',{var_info,{x,0},[{type,{t_atom,[again,anything]}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {bs_match,{f,729},{x,1},{commands,[{ensure_exactly,8},{'=:=',nil,8,2}]}}.
    {move,{atom,b},{x,0}}.
    return.
  {label,729}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_match,{f,730},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{atom,a},{x,0}}.
    return.
  {label,730}.
    {bs_get_tail,{x,1},{x,1},2}.
    {jump,{f,727}}.


{function, otp_7240_e, 2, 732}.
  {label,731}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1316}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,otp_7240_e},2}.
  {label,732}.
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
          {f,733},
          [{tr,{x,1},
               {t_union,none,none,
                        {t_integer,{41,41}},
                        none,
                        {t_bitstring,256,true}}},
           {literal,<<>>}]}.
    {move,{atom,a},{x,0}}.
    return.
  {label,733}.
    {test,is_eq_exact,
          {f,731},
          [{tr,{x,0},
               {t_union,{t_atom,[anything]},none,{t_integer,{1,1}},none,none}},
           {integer,1}]}.
    {test,is_lt,
          {f,731},
          [{tr,{x,1},
               {t_union,none,none,
                        {t_integer,{41,41}},
                        none,
                        {t_bitstring,256,true}}},
           {integer,42}]}.
    {move,{atom,b},{x,0}}.
    return.


{function, otp_7240_f, 2, 735}.
  {label,734}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1319}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,otp_7240_f},2}.
  {label,735}.
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
          {f,736},
          [{tr,{x,1},
               {t_union,none,none,none,
                        {t_tuple,0,true,#{}},
                        {t_bitstring,256,true}}},
           {literal,<<>>}]}.
    {move,{atom,a},{x,0}}.
    return.
  {label,736}.
    {test,is_eq_exact,
          {f,734},
          [{tr,{x,0},
               {t_union,{t_atom,[anything]},none,{t_integer,{1,1}},none,none}},
           {integer,1}]}.
    {test,is_tuple,
          {f,734},
          [{tr,{x,1},
               {t_union,none,none,none,
                        {t_tuple,0,true,#{}},
                        {t_bitstring,256,true}}}]}.
    {move,{atom,b},{x,0}}.
    return.


{function, otp_7498, 1, 738}.
  {label,737}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1322}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,otp_7498},1}.
  {label,738}.
    {test,is_list,{f,737},[{x,0}]}.
    {allocate,0,0}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1323}]}.
    {call,2,{f,748}}. % otp_7498_foo/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,746},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<1,2,3>>}]}.
    {move,{integer,1},{x,1}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1324}]}.
    {call,2,{f,748}}. % otp_7498_foo/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,745},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<2,3>>}]}.
    {move,{integer,2},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1325}]}.
    {call,2,{f,748}}. % otp_7498_foo/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,744},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<1,2,3>>}]}.
    {move,{integer,0},{x,1}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1327}]}.
    {call,2,{f,752}}. % otp_7498_bar/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,743},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<1,2,3>>}]}.
    {move,{integer,1},{x,1}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1328}]}.
    {call,2,{f,752}}. % otp_7498_bar/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,742},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<2,3>>}]}.
    {move,{integer,2},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1329}]}.
    {call,2,{f,752}}. % otp_7498_bar/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,741},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<1,2,3>>}]}.
    {move,{integer,2},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1330}]}.
    {call,2,{f,752}}. % otp_7498_bar/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,740},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<>>}]}.
    {move,{integer,3},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1331}]}.
    {call,2,{f,752}}. % otp_7498_bar/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,739},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<1,2,3>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,739}.
    {badmatch,{x,0}}.
  {label,740}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1330}]}.
    {badmatch,{x,0}}.
  {label,741}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1329}]}.
    {badmatch,{x,0}}.
  {label,742}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1328}]}.
    {badmatch,{x,0}}.
  {label,743}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1327}]}.
    {badmatch,{x,0}}.
  {label,744}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1325}]}.
    {badmatch,{x,0}}.
  {label,745}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1324}]}.
    {badmatch,{x,0}}.
  {label,746}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1323}]}.
    {badmatch,{x,0}}.


{function, otp_7498_foo, 2, 748}.
  {label,747}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1335}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,otp_7498_foo},2}.
  {label,748}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,43}}}]}}.
    {test,is_eq_exact,{f,749},[{tr,{x,1},{t_integer,{0,43}}},{integer,0}]}.
    {move,{integer,42},{x,1}}.
    {call_only,2,{f,748}}. % otp_7498_foo/2
  {label,749}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,2}}.
    {bs_match,{f,750},
              {x,2},
              {commands,[{ensure_at_least,8,1},
                         {skip,8},
                         {get_tail,3,1,{x,2}}]}}.
    {test,is_eq_exact,{f,750},[{tr,{x,1},{t_integer,{1,43}}},{integer,1}]}.
    {move,{integer,43},{x,1}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,748}}. % otp_7498_foo/2
  {label,750}.
    return.


{function, otp_7498_bar, 2, 752}.
  {label,751}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1342}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,otp_7498_bar},2}.
  {label,752}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,44}}}]}}.
    {test,is_eq_exact,{f,753},[{tr,{x,1},{t_integer,{0,44}}},{integer,0}]}.
    {move,{integer,42},{x,1}}.
    {call_only,2,{f,752}}. % otp_7498_bar/2
  {label,753}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,2}}.
    {bs_get_position,{x,2},{x,3},3}.
    {bs_match,{f,754},
              {x,2},
              {commands,[{ensure_at_least,8,1},
                         {skip,8},
                         {get_tail,4,1,{x,4}}]}}.
    {test,is_eq_exact,{f,754},[{tr,{x,1},{t_integer,{1,44}}},{integer,1}]}.
    {move,{integer,43},{x,1}}.
    {move,{x,4},{x,0}}.
    {call_only,2,{f,752}}. % otp_7498_bar/2
  {label,754}.
    {bs_set_position,{x,2},{x,3}}.
    {bs_match,{f,755},{x,2},{commands,[{ensure_exactly,0}]}}.
    {test,is_eq_exact,{f,755},[{tr,{x,1},{t_integer,{1,44}}},{integer,2}]}.
    {move,{integer,44},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {call_only,2,{f,752}}. % otp_7498_bar/2
  {label,755}.
    return.


{function, match_string, 1, 757}.
  {label,756}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1352}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,match_string},1}.
  {label,757}.
    {test,is_list,{f,756},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{atom,endian},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1358}]}.
    {call_ext,1,{extfunc,erlang,system_info,1}}.
    {select_val,{x,0},
                {f,769},
                {list,[{atom,big},{f,759},{atom,little},{f,758}]}}.
  {label,758}.
    {move,{literal,<<97,0,98,0>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1360}]}.
    {call,1,{f,771}}. % do_match_string_native/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {jump,{f,760}}.
  {label,759}.
    {move,{literal,<<0,97,0,98>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1362}]}.
    {call,1,{f,771}}. % do_match_string_native/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,760}.
    {move,{literal,<<0,97,0,98>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1365}]}.
    {call,1,{f,774}}. % do_match_string_big/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<97,0,98,0>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1366}]}.
    {call,1,{f,776}}. % do_match_string_little/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<"ÿÿ">>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1368}]}.
    {call,1,{f,779}}. % do_match_string_big_signed/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<"ÿÿ">>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1369}]}.
    {call,1,{f,782}}. % do_match_string_little_signed/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1371}]}.
    {call,1,{f,785}}. % no_match_string_opt/1
    {'%',{var_info,{x,0},[{type,{t_atom,[plain,strange]}}]}}.
    {test,is_eq_exact,
          {f,768},
          [{tr,{x,0},{t_atom,[plain,strange]}},{atom,plain}]}.
    {move,{literal,<<48,152,140,3:3>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1372}]}.
    {call,1,{f,785}}. % no_match_string_opt/1
    {'%',{var_info,{x,0},[{type,{t_atom,[plain,strange]}}]}}.
    {test,is_eq_exact,
          {f,767},
          [{tr,{x,0},{t_atom,[plain,strange]}},{atom,strange}]}.
    {move,{literal,<<"d">>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1374}]}.
    {call,1,{f,1776}}. % id/1
    {call,1,{f,790}}. % do_match_string_tail/1
    {'%',{var_info,{x,0},[{type,{t_atom,[d,dd]}}]}}.
    {test,is_eq_exact,{f,766},[{tr,{x,0},{t_atom,[d,dd]}},{atom,d}]}.
    {move,{literal,<<"dd">>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1375}]}.
    {call,1,{f,1776}}. % id/1
    {call,1,{f,790}}. % do_match_string_tail/1
    {'%',{var_info,{x,0},[{type,{t_atom,[d,dd]}}]}}.
    {test,is_eq_exact,{f,765},[{tr,{x,0},{t_atom,[d,dd]}},{atom,dd}]}.
    {move,{literal,<<"a">>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1377}]}.
    {call,1,{f,1776}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,0},{x,0}}.
    {call,1,{f,1776}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {call,2,{f,794}}. % do_match_string_var_size/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a,ab]}}]}}.
    {test,is_eq_exact,{f,764},[{tr,{x,0},{t_atom,[a,ab]}},{atom,a}]}.
    {move,{literal,<<"ab">>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1378}]}.
    {call,1,{f,1776}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,8},{x,0}}.
    {call,1,{f,1776}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {call,2,{f,794}}. % do_match_string_var_size/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a,ab]}}]}}.
    {test,is_eq_exact,{f,763},[{tr,{x,0},{t_atom,[a,ab]}},{atom,a}]}.
    {move,{literal,<<"ab">>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1379}]}.
    {call,1,{f,1776}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,0},{x,0}}.
    {call,1,{f,1776}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {call,2,{f,794}}. % do_match_string_var_size/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a,ab]}}]}}.
    {test,is_eq_exact,{f,762},[{tr,{x,0},{t_atom,[a,ab]}},{atom,ab}]}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1380}]}.
    {call,1,{f,1776}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,8},{x,0}}.
    {call,1,{f,1776}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {call,2,{f,794}}. % do_match_string_var_size/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a,ab]}}]}}.
    {test,is_eq_exact,{f,761},[{tr,{x,0},{t_atom,[a,ab]}},{atom,ab}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,761}.
    {badmatch,{atom,a}}.
  {label,762}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1379}]}.
    {badmatch,{atom,a}}.
  {label,763}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1378}]}.
    {badmatch,{atom,ab}}.
  {label,764}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1377}]}.
    {badmatch,{atom,ab}}.
  {label,765}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1375}]}.
    {badmatch,{atom,d}}.
  {label,766}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1374}]}.
    {badmatch,{atom,dd}}.
  {label,767}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1372}]}.
    {badmatch,{atom,plain}}.
  {label,768}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1371}]}.
    {badmatch,{atom,strange}}.
  {label,769}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1358}]}.
    {case_end,{x,0}}.


{function, do_match_string_native, 1, 771}.
  {label,770}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1384}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,do_match_string_native},1}.
  {label,771}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,32,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,772},
              {x,0},
              {commands,[{ensure_at_least,16,1},
                         {integer,2,{literal,[native]},16,1,{x,2}}]}}.
    {test,is_eq_exact,{f,772},[{tr,{x,2},{t_integer,{0,65535}}},{integer,97}]}.
    {bs_match,{f,772},
              {x,0},
              {commands,[{ensure_at_least,16,1},
                         {integer,2,{literal,[native]},16,1,{x,2}}]}}.
    {test,is_eq_exact,{f,772},[{tr,{x,2},{t_integer,{0,65535}}},{integer,98}]}.
    {bs_match,{f,772},{x,0},{commands,[{ensure_exactly,0}]}}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,772}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,770}}.


{function, do_match_string_big, 1, 774}.
  {label,773}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1386}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,do_match_string_big},1}.
  {label,774}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,false}}]}}.
    {test,is_eq_exact,
          {f,773},
          [{tr,{x,0},{t_bitstring,32,false}},{literal,<<0,97,0,98>>}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, do_match_string_little, 1, 776}.
  {label,775}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1388}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,do_match_string_little},1}.
  {label,776}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,32,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,777},
              {x,0},
              {commands,[{ensure_exactly,32},
                         {'=:=',nil,31,813707520},
                         {'=:=',nil,1,0}]}}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,777}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,775}}.


{function, do_match_string_big_signed, 1, 779}.
  {label,778}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1390}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,do_match_string_big_signed},
               1}.
  {label,779}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,16,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,780},
              {x,0},
              {commands,[{ensure_exactly,16},{'=:=',nil,16,65535}]}}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,780}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,778}}.


{function, do_match_string_little_signed, 1, 782}.
  {label,781}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1392}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,do_match_string_little_signed},
               1}.
  {label,782}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,16,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,783},
              {x,0},
              {commands,[{ensure_exactly,16},{'=:=',nil,16,65535}]}}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,783}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,781}}.


{function, no_match_string_opt, 1, 785}.
  {label,784}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1394}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,no_match_string_opt},1}.
  {label,785}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,1,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,788},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {select_val,{tr,{x,2},{t_integer,{0,255}}},
                {f,788},
                {list,[{integer,48},{f,787},{integer,97},{f,786}]}}.
  {label,786}.
    {bs_match,{f,788},
              {x,0},
              {commands,[{ensure_exactly,16},{'=:=',nil,16,25187}]}}.
    {move,{atom,plain},{x,0}}.
    return.
  {label,787}.
    {bs_match,{f,788},
              {x,0},
              {commands,[{ensure_exactly,19},{'=:=',nil,19,312419}]}}.
    {move,{atom,strange},{x,0}}.
    return.
  {label,788}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,784}}.


{function, do_match_string_tail, 1, 790}.
  {label,789}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1399}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,do_match_string_tail},1}.
  {label,790}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,789},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {bs_match,{f,792},
              {x,1},
              {commands,[{ensure_at_least,8,1},{'=:=',nil,8,100}]}}.
    {bs_get_position,{x,1},{x,2},2}.
    {bs_match,{f,791},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,is_eq_exact,{f,791},[{tr,{x,3},{t_integer,{0,255}}},{integer,100}]}.
    {bs_match,{f,791},{x,1},{commands,[{ensure_at_least,0,8}]}}.
    {move,{atom,dd},{x,0}}.
    return.
  {label,791}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_match,{f,792},{x,1},{commands,[{ensure_at_least,0,8}]}}.
    {move,{atom,d},{x,0}}.
    return.
  {label,792}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,789}}.


{function, do_match_string_var_size, 2, 794}.
  {label,793}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1401}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,do_match_string_var_size},
               2}.
  {label,794}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,797},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {bs_match,{f,796},
              {x,2},
              {commands,[{ensure_at_least,8,1},{'=:=',nil,8,97}]}}.
    {bs_get_position,{x,2},{x,3},3}.
    {bs_match,{f,795},
              {x,2},
              {commands,[{ensure_at_least,8,1},
                         {integer,4,{literal,[]},8,1,{x,4}}]}}.
    {test,is_eq_exact,{f,795},[{tr,{x,4},{t_integer,{0,255}}},{integer,98}]}.
    {test,bs_skip_bits2,
          {f,795},
          [{x,2},
           {x,1},
           1,
           {field_flags,[{anno,[1402,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_match,{f,795},{x,2},{commands,[{ensure_exactly,0}]}}.
    {move,{atom,ab},{x,0}}.
    return.
  {label,795}.
    {bs_set_position,{x,2},{x,3}}.
    {test,bs_skip_bits2,
          {f,796},
          [{x,2},
           {x,1},
           1,
           {field_flags,[{anno,[1402,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_match,{f,796},{x,2},{commands,[{ensure_exactly,0}]}}.
    {move,{atom,a},{x,0}}.
    return.
  {label,796}.
    {bs_set_position,{x,2},{x,0}}.
    {bs_get_tail,{x,2},{x,0},3}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1402}]}.
    {case_end,{x,0}}.
  {label,797}.
    {case_end,{x,0}}.


{function, zero_width, 1, 799}.
  {label,798}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1406}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,zero_width},1}.
  {label,799}.
    {test,is_list,{f,798},[{x,0}]}.
    {move,{literal,<<2,0,104,105>>},{x,0}}.
    {bs_start_match4,{atom,no_fail},0,{x,0},{x,0}}.
    {bs_match,{f,805},
              {x,0},
              {commands,[{ensure_at_least,16,1},
                         {integer,1,{literal,[little]},16,1,{x,1}}]}}.
    {test,bs_get_binary2,
          {f,805},
          2,
          [{tr,{x,0},{t_bs_context,16}},
           {tr,{x,1},{t_integer,{0,65535}}},
           8,
           {field_flags,[{anno,[1407,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,805},{x,0},{commands,[{ensure_exactly,0}]}}.
    {test,is_eq_exact,{f,804},[{tr,{x,1},{t_integer,{0,65535}}},{integer,2}]}.
    {test,is_eq_exact,
          {f,803},
          [{tr,{x,2},{t_bitstring,8,false}},{literal,<<"hi">>}]}.
    {allocate,0,0}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1412}]}.
    {call,1,{f,1776}}. % id/1
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1422}]}.
    {call,1,{f,1913}}. % '-zero_width/1-fun-0-'/1
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
           {atom,star}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1423}]}.
    {call,1,{f,1913}}. % '-zero_width/1-fun-0-'/1
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
           {integer,0}]}.
    {move,{literal,<<1>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1424}]}.
    {call,1,{f,1913}}. % '-zero_width/1-fun-0-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[no_match,star]},
                                   none,
                                   {t_integer,{0,0}},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,800},
          [{tr,{x,0},
               {t_union,{t_atom,[no_match,star]},
                        none,
                        {t_integer,{0,0}},
                        none,none}},
           {atom,no_match}]}.
    {move,{atom,whatever},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1425}]}.
    {call,1,{f,1913}}. % '-zero_width/1-fun-0-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[no_match]}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,800}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1424}]}.
    {badmatch,{x,0}}.
  {label,801}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1423}]}.
    {badmatch,{x,0}}.
  {label,802}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1422}]}.
    {badmatch,{x,0}}.
  {label,803}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1409}]}.
    {badmatch,{literal,<<"hi">>}}.
  {label,804}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1408}]}.
    {badmatch,{x,1}}.
  {label,805}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1407}]}.
    {badmatch,{literal,<<2,0,104,105>>}}.


{function, bad_size, 1, 807}.
  {label,806}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1431}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,bad_size},1}.
  {label,807}.
    {test,is_list,{f,806},[{x,0}]}.
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
    {'catch',{y,18},{f,808}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1437}]}.
    {call,1,{f,1776}}. % id/1
    {badmatch,{x,0}}.
  {label,808}.
    {catch_end,{y,18}}.
    {test,is_tagged_tuple,{f,852},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,852},[{x,1}]}.
    {test,test_arity,{f,852},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,852},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,17},{f,809}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,"$"},{location,"bs_match_dialyzer_SUITE.erl",1438}]}.
    {call,1,{f,1776}}. % id/1
    {badmatch,{x,0}}.
  {label,809}.
    {catch_end,{y,17}}.
    {test,is_tagged_tuple,{f,851},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,851},[{x,1}]}.
    {test,test_arity,{f,851},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,851},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,16},{f,810}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,"\""},{location,"bs_match_dialyzer_SUITE.erl",1439}]}.
    {call,1,{f,1776}}. % id/1
    {badmatch,{x,0}}.
  {label,810}.
    {catch_end,{y,16}}.
    {test,is_tagged_tuple,{f,850},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,850},[{x,1}]}.
    {test,test_arity,{f,850},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,850},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,15},{f,811}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope," "},{location,"bs_match_dialyzer_SUITE.erl",1440}]}.
    {call,1,{f,1776}}. % id/1
    {badmatch,{x,0}}.
  {label,811}.
    {catch_end,{y,15}}.
    {test,is_tagged_tuple,{f,849},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,849},[{x,1}]}.
    {test,test_arity,{f,849},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,849},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,14},{f,812}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[30]},{location,"bs_match_dialyzer_SUITE.erl",1441}]}.
    {call,1,{f,1776}}. % id/1
    {badmatch,{x,0}}.
  {label,812}.
    {catch_end,{y,14}}.
    {test,is_tagged_tuple,{f,848},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,848},[{x,1}]}.
    {test,test_arity,{f,848},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,848},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,13},{f,813}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[28]},{location,"bs_match_dialyzer_SUITE.erl",1442}]}.
    {call,1,{f,1776}}. % id/1
    {badmatch,{x,0}}.
  {label,813}.
    {catch_end,{y,13}}.
    {test,is_tagged_tuple,{f,847},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,847},[{x,1}]}.
    {test,test_arity,{f,847},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,847},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,12},{f,814}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[26]},{location,"bs_match_dialyzer_SUITE.erl",1444}]}.
    {call,1,{f,1776}}. % id/1
    {badmatch,{x,0}}.
  {label,814}.
    {catch_end,{y,12}}.
    {test,is_tagged_tuple,{f,846},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,846},[{x,1}]}.
    {test,test_arity,{f,846},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,846},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,11},{f,815}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[24]},{location,"bs_match_dialyzer_SUITE.erl",1445}]}.
    {call,1,{f,1776}}. % id/1
    {badmatch,{x,0}}.
  {label,815}.
    {catch_end,{y,11}}.
    {test,is_tagged_tuple,{f,845},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,845},[{x,1}]}.
    {test,test_arity,{f,845},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,845},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,10},{f,816}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_dialyzer_SUITE.erl",1446}]}.
    {call,1,{f,1776}}. % id/1
    {badmatch,{x,0}}.
  {label,816}.
    {catch_end,{y,10}}.
    {test,is_tagged_tuple,{f,844},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,844},[{x,1}]}.
    {test,test_arity,{f,844},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,844},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,9},{f,817}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[20]},{location,"bs_match_dialyzer_SUITE.erl",1447}]}.
    {call,1,{f,1776}}. % id/1
    {badmatch,{x,0}}.
  {label,817}.
    {catch_end,{y,9}}.
    {test,is_tagged_tuple,{f,843},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,843},[{x,1}]}.
    {test,test_arity,{f,843},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,843},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,8},{f,818}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[18]},{location,"bs_match_dialyzer_SUITE.erl",1448}]}.
    {call,1,{f,1776}}. % id/1
    {test,bs_start_match3,{f,827},1,[{x,0}],{x,1}}.
    {test,bs_get_float2,
          {f,827},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,1},
           1,
           {field_flags,[{anno,[1448,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,827},[{tr,{x,2},{t_float,any}},{float,42.0}]}.
    {bs_match,{f,827},{x,1},{commands,[{ensure_exactly,0}]}}.
  {label,818}.
    {catch_end,{y,8}}.
    {test,is_tagged_tuple,{f,842},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,842},[{x,1}]}.
    {test,test_arity,{f,842},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,842},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,7},{f,819}}.
    {move,{literal,<<"ÿÿÿÿ">>},{x,0}}.
    {line,[{scope,[16]},{location,"bs_match_dialyzer_SUITE.erl",1449}]}.
    {call,1,{f,1776}}. % id/1
    {test,bs_start_match3,{f,828},1,[{x,0}],{x,1}}.
    {test,bs_get_float2,
          {f,828},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[1449,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,828},[{tr,{x,2},{t_float,any}},{float,42.0}]}.
    {bs_match,{f,828},{x,1},{commands,[{ensure_exactly,0}]}}.
  {label,819}.
    {catch_end,{y,7}}.
    {test,is_tagged_tuple,{f,841},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,841},[{x,1}]}.
    {test,test_arity,{f,841},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,841},[{x,1},2,{atom,badmatch}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,{f,841},[{x,1},{literal,<<"ÿÿÿÿ">>}]}.
    {'catch',{y,6},{f,820}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_dialyzer_SUITE.erl",1452}]}.
    {call,1,{f,1776}}. % id/1
    {badmatch,{x,0}}.
  {label,820}.
    {catch_end,{y,6}}.
    {test,is_tagged_tuple,{f,840},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,840},[{x,1}]}.
    {test,test_arity,{f,840},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,840},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,5},{f,821}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_match_dialyzer_SUITE.erl",1453}]}.
    {call,1,{f,1776}}. % id/1
    {badmatch,{x,0}}.
  {label,821}.
    {catch_end,{y,5}}.
    {test,is_tagged_tuple,{f,839},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,839},[{x,1}]}.
    {test,test_arity,{f,839},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,839},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,4},{f,822}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,"\n"},{location,"bs_match_dialyzer_SUITE.erl",1454}]}.
    {call,1,{f,1776}}. % id/1
    {badmatch,{x,0}}.
  {label,822}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,838},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,838},[{x,1}]}.
    {test,test_arity,{f,838},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,838},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,3},{f,823}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_dialyzer_SUITE.erl",1455}]}.
    {call,1,{f,1776}}. % id/1
    {badmatch,{x,0}}.
  {label,823}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,837},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,837},[{x,1}]}.
    {test,test_arity,{f,837},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,837},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,2},{f,824}}.
    {move,{literal,<<1:1>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",1456}]}.
    {call,1,{f,1776}}. % id/1
    {test,bs_start_match3,{f,829},1,[{x,0}],{x,1}}.
    {test,bs_get_float2,
          {f,829},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,1},
           1,
           {field_flags,[{anno,[1456,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,829},{x,1},{commands,[{ensure_exactly,0}]}}.
  {label,824}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,836},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,836},[{x,1}]}.
    {test,test_arity,{f,836},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,836},[{x,1},2,{atom,badmatch}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,bs_start_match3,{f,836},2,[{x,1}],{x,1}}.
    {bs_match,{f,836},{x,1},{commands,[{ensure_exactly,1},{'=:=',nil,1,1}]}}.
    {'catch',{y,1},{f,825}}.
    {move,{literal,<<"ÿÿÿÿ">>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_dialyzer_SUITE.erl",1457}]}.
    {call,1,{f,1776}}. % id/1
    {test,bs_start_match3,{f,830},1,[{x,0}],{x,1}}.
    {test,bs_get_float2,
          {f,830},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[1457,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,830},{x,1},{commands,[{ensure_exactly,0}]}}.
  {label,825}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,835},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,835},[{x,1}]}.
    {test,test_arity,{f,835},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,835},[{x,1},2,{atom,badmatch}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,{f,835},[{x,1},{literal,<<"ÿÿÿÿ">>}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",1459}]}.
    {call,1,{f,854}}. % bad_all_size/1
    {'%',{var_info,{x,0},[{type,{t_atom,[no_match]}}]}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",1460}]}.
    {call,1,{f,854}}. % bad_all_size/1
    {'%',{var_info,{x,0},[{type,{t_atom,[no_match]}}]}}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",1462}]}.
    {call,1,{f,868}}. % bad_size_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,true]}}]}}.
    {test,is_eq_exact,{f,834},[{tr,{x,0},{t_atom,[error,true]}},{atom,true}]}.
    {move,{literal,<<0,1>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",1463}]}.
    {call,1,{f,868}}. % bad_size_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,true]}}]}}.
    {test,is_eq_exact,{f,833},[{tr,{x,0},{t_atom,[error,true]}},{atom,error}]}.
    {move,{literal,[a]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",1465}]}.
    {call,1,{f,871}}. % bad_size_2/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{literal,[<<1,2,3>>]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",1466}]}.
    {call,1,{f,871}}. % bad_size_2/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {'catch',{y,0},{f,826}}.
    {move,{atom,no_list},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",1467}]}.
    {call,1,{f,871}}. % bad_size_2/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
  {label,826}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,832},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,832},[{x,1}]}.
    {test,test_arity,{f,832},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,832},[{x,1},{literal,{bad_generator,no_list}}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_dialyzer_SUITE.erl",1469}]}.
    {call,1,{f,873}}. % bad_size_3/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_dialyzer_SUITE.erl",1470}]}.
    {call,1,{f,873}}. % bad_size_3/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_dialyzer_SUITE.erl",1472}]}.
    {call,2,{f,1911}}. % '-bad_size/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {call,1,{f,1776}}. % id/1
    {test,is_eq_exact,{f,831},[{x,0},{literal,<<>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,19}.
    return.
  {label,827}.
    {line,[{scope,[17]},{location,"bs_match_dialyzer_SUITE.erl",1448}]}.
    {badmatch,{x,0}}.
  {label,828}.
    {line,[{scope,[15]},{location,"bs_match_dialyzer_SUITE.erl",1449}]}.
    {badmatch,{x,0}}.
  {label,829}.
    {line,[{scope,[5]},{location,"bs_match_dialyzer_SUITE.erl",1456}]}.
    {badmatch,{x,0}}.
  {label,830}.
    {line,[{scope,[3]},{location,"bs_match_dialyzer_SUITE.erl",1457}]}.
    {badmatch,{x,0}}.
  {label,831}.
    {line,[{scope,[0]},{location,"bs_match_dialyzer_SUITE.erl",1472}]}.
    {badmatch,{x,0}}.
  {label,832}.
    {line,[{scope,[0]},{location,"bs_match_dialyzer_SUITE.erl",1467}]}.
    {badmatch,{x,0}}.
  {label,833}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",1463}]}.
    {badmatch,{atom,true}}.
  {label,834}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",1462}]}.
    {badmatch,{atom,error}}.
  {label,835}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",1457}]}.
    {badmatch,{x,0}}.
  {label,836}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",1456}]}.
    {badmatch,{x,0}}.
  {label,837}.
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",1455}]}.
    {badmatch,{x,0}}.
  {label,838}.
    {line,[{scope,"\b"},{location,"bs_match_dialyzer_SUITE.erl",1454}]}.
    {badmatch,{x,0}}.
  {label,839}.
    {line,[{scope,"\n"},{location,"bs_match_dialyzer_SUITE.erl",1453}]}.
    {badmatch,{x,0}}.
  {label,840}.
    {line,[{scope,"\f"},{location,"bs_match_dialyzer_SUITE.erl",1452}]}.
    {badmatch,{x,0}}.
  {label,841}.
    {line,[{scope,[14]},{location,"bs_match_dialyzer_SUITE.erl",1449}]}.
    {badmatch,{x,0}}.
  {label,842}.
    {line,[{scope,[16]},{location,"bs_match_dialyzer_SUITE.erl",1448}]}.
    {badmatch,{x,0}}.
  {label,843}.
    {line,[{scope,[18]},{location,"bs_match_dialyzer_SUITE.erl",1447}]}.
    {badmatch,{x,0}}.
  {label,844}.
    {line,[{scope,[20]},{location,"bs_match_dialyzer_SUITE.erl",1446}]}.
    {badmatch,{x,0}}.
  {label,845}.
    {line,[{scope,[22]},{location,"bs_match_dialyzer_SUITE.erl",1445}]}.
    {badmatch,{x,0}}.
  {label,846}.
    {line,[{scope,[24]},{location,"bs_match_dialyzer_SUITE.erl",1444}]}.
    {badmatch,{x,0}}.
  {label,847}.
    {line,[{scope,[26]},{location,"bs_match_dialyzer_SUITE.erl",1442}]}.
    {badmatch,{x,0}}.
  {label,848}.
    {line,[{scope,[28]},{location,"bs_match_dialyzer_SUITE.erl",1441}]}.
    {badmatch,{x,0}}.
  {label,849}.
    {line,[{scope,[30]},{location,"bs_match_dialyzer_SUITE.erl",1440}]}.
    {badmatch,{x,0}}.
  {label,850}.
    {line,[{scope," "},{location,"bs_match_dialyzer_SUITE.erl",1439}]}.
    {badmatch,{x,0}}.
  {label,851}.
    {line,[{scope,"\""},{location,"bs_match_dialyzer_SUITE.erl",1438}]}.
    {badmatch,{x,0}}.
  {label,852}.
    {line,[{scope,"$"},{location,"bs_match_dialyzer_SUITE.erl",1437}]}.
    {badmatch,{x,0}}.


{function, bad_all_size, 1, 854}.
  {label,853}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1476}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,bad_all_size},1}.
  {label,854}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1477}]}.
    {call,1,{f,856}}. % bad_all_size_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[no_match]}}]}}.
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1478}]}.
    {call,1,{f,858}}. % bad_all_size_2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[no_match]}}]}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1479}]}.
    {call,1,{f,860}}. % bad_all_size_3/1
    {'%',{var_info,{x,0},[{type,{t_atom,[no_match]}}]}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1480}]}.
    {call,1,{f,862}}. % bad_all_size_4/1
    {'%',{var_info,{x,0},[{type,{t_atom,[no_match]}}]}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1481}]}.
    {call,1,{f,864}}. % bad_all_size_5/1
    {'%',{var_info,{x,0},[{type,{t_atom,[no_match]}}]}}.
    {move,{y,1},{x,0}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1482}]}.
    {call,1,{f,866}}. % bad_all_size_6/1
    {'%',{var_info,{x,0},[{type,{t_atom,[no_match]}}]}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, bad_all_size_1, 1, 856}.
  {label,855}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1485}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,bad_all_size_1},1}.
  {label,856}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {move,{atom,no_match},{x,0}}.
    return.


{function, bad_all_size_2, 1, 858}.
  {label,857}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1491}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,bad_all_size_2},1}.
  {label,858}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {move,{atom,no_match},{x,0}}.
    return.


{function, bad_all_size_3, 1, 860}.
  {label,859}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1497}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,bad_all_size_3},1}.
  {label,860}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {move,{atom,no_match},{x,0}}.
    return.


{function, bad_all_size_4, 1, 862}.
  {label,861}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1504}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,bad_all_size_4},1}.
  {label,862}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {move,{atom,no_match},{x,0}}.
    return.


{function, bad_all_size_5, 1, 864}.
  {label,863}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1511}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,bad_all_size_5},1}.
  {label,864}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {move,{atom,no_match},{x,0}}.
    return.


{function, bad_all_size_6, 1, 866}.
  {label,865}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1520}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,bad_all_size_6},1}.
  {label,866}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {move,{atom,no_match},{x,0}}.
    return.


{function, bad_size_1, 1, 868}.
  {label,867}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1529}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,bad_size_1},1}.
  {label,868}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,869},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<0>>}]}.
    {move,{atom,true},{x,0}}.
    return.
  {label,869}.
    {move,{atom,error},{x,0}}.
    return.


{function, bad_size_2, 1, 871}.
  {label,870}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1535}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,bad_size_2},1}.
  {label,871}.
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
    {call_only,1,{f,1907}}. % '-bad_size_2/1-lc$^0/1-0-'/1


{function, bad_size_3, 1, 873}.
  {label,872}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1541}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,bad_size_3},1}.
  {label,873}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {move,{atom,error},{x,0}}.
    return.


{function, haystack, 1, 875}.
  {label,874}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1546}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,haystack},1}.
  {label,875}.
    {test,is_list,{f,874},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<0,0,0,0,0,0,0,0,0,0>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1547}]}.
    {call,1,{f,879}}. % haystack_1/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {test,is_eq_exact,
          {f,877},
          [{tr,{x,0},{t_bitstring,16,false}},
           {literal,<<0,0,0,0,0,0,0,0,0,0>>}]}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1549}]}.
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
    {call,1,{f,881}}. % haystack_2/1
    {'%',{var_info,{x,0},[{type,{t_cons,{t_bitstring,8,false},nil}}]}}.
    {test,is_eq_exact,
          {f,876},
          [{tr,{x,0},{t_cons,{t_bitstring,8,false},nil}},
           {literal,[<<0,0,0,0,0,0,0,0,0,0>>,
                     <<0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0>>]}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,876}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1548}]}.
    {badmatch,{x,0}}.
  {label,877}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1547}]}.
    {badmatch,{x,0}}.


{function, haystack_1, 1, 879}.
  {label,878}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1553}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,haystack_1},1}.
  {label,879}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{x,0},{x,1}}.
    {move,{literal,"\n"},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1558}]}.
    {call,2,{f,1903}}. % '-haystack_1/1-lc$^0/1-0-'/2
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, haystack_2, 1, 881}.
  {label,880}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1562}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,haystack_2},1}.
  {label,881}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,false}}]}}.
    {move,{x,0},{x,1}}.
    {move,{literal,[{687,10},{369,20}]},{x,0}}.
    {call_only,2,{f,1899}}. % '-haystack_2/1-lc$^0/1-0-'/2


{function, fc, 1, 883}.
  {label,882}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1569}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,fc},1}.
  {label,883}.
    {test,is_tagged_tuple,{f,882},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,882},[{x,1},2,{atom,function_clause}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, fc, 3, 885}.
  {label,884}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1572}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,fc},3}.
  {label,885}.
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
    {test,is_tagged_tuple,{f,884},[{x,2},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,2},1,{x,3}}.
    {test,is_tagged_tuple,{f,884},[{x,3},2,{atom,function_clause}]}.
    {get_tuple_element,{x,3},1,{x,3}}.
    {test,is_nonempty_list,{f,884},[{x,3}]}.
    {get_hd,{x,3},{x,3}}.
    {test,is_tagged_tuple,{f,884},[{x,3},4,{atom,bs_match_dialyzer_SUITE}]}.
    {get_tuple_element,{x,3},1,{x,4}}.
    {test,is_eq_exact,{f,884},[{x,4},{tr,{x,0},{t_atom,any}}]}.
    {get_tuple_element,{x,3},2,{x,3}}.
    {test,is_eq_exact,
          {f,884},
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


{function, cover_beam_bool, 1, 887}.
  {label,886}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1580}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,cover_beam_bool},1}.
  {label,887}.
    {test,is_list,{f,886},[{x,0}]}.
    {allocate,0,0}.
    {move,{integer,3},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1581}]}.
    {call,2,{f,892}}. % do_cover_beam_bool/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,2},{x,1}}.
    {move,{literal,<<19>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1582}]}.
    {call,2,{f,892}}. % do_cover_beam_bool/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,890},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<19>>}]}.
    {move,{integer,1},{x,1}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1583}]}.
    {call,2,{f,892}}. % do_cover_beam_bool/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,889},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<"*">>}]}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<13,17>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1584}]}.
    {call,2,{f,892}}. % do_cover_beam_bool/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,888},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<17>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,888}.
    {badmatch,{x,0}}.
  {label,889}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1583}]}.
    {badmatch,{x,0}}.
  {label,890}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1582}]}.
    {badmatch,{x,0}}.


{function, do_cover_beam_bool, 2, 892}.
  {label,891}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1587}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,do_cover_beam_bool},2}.
  {label,892}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,3}}}]}}.
    {test,is_ge,{f,895},[{tr,{x,1},{t_integer,{0,3}}},{integer,1}]}.
    {select_val,{tr,{x,1},{t_integer,{1,3}}},
                {f,894},
                {list,[{integer,1},{f,893},{integer,2},{f,893}]}}.
  {label,893}.
    return.
  {label,894}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,895}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_match,{f,896},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {skip,8},
                         {get_tail,2,1,{x,0}}]}}.
    {move,{integer,1},{x,1}}.
    {call_only,2,{f,892}}. % do_cover_beam_bool/2
  {label,896}.
    {move,{integer,0},{x,1}}.
    {jump,{f,891}}.


{function, matched_out_size, 1, 898}.
  {label,897}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1597}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,matched_out_size},1}.
  {label,898}.
    {test,is_list,{f,897},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<"\býÞ­¾ï">>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1598}]}.
    {call,1,{f,910}}. % mos_int/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_integer,{0,'+inf'}},
                       2 => {t_integer,{0,18446744073709551615}}}}}]}}.
    {test,is_eq_exact,
          {f,908},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}},
           {literal,{253,3735928559}}]}.
    {move,{literal,<<3,215,221,251,213,5:3>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1599}]}.
    {call,1,{f,910}}. % mos_int/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_integer,{0,'+inf'}},
                       2 => {t_integer,{0,18446744073709551615}}}}}]}}.
    {test,is_eq_exact,
          {f,907},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}},
           {literal,{6,3203391149}}]}.
    {move,{literal,<<16,0,53,202,254,222,173,190,239,202,254>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1600}]}.
    {call,1,{f,910}}. % mos_int/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_integer,{0,'+inf'}},
                       2 => {t_integer,{0,18446744073709551615}}}}}]}}.
    {test,is_eq_exact,
          {f,906},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}},
           {literal,{53,14627373477560044286}}]}.
    {move,{literal,<<5,190,87,246,245,109,247,126,87,30:5>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1601}]}.
    {call,1,{f,910}}. % mos_int/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_integer,{0,'+inf'}},
                       2 => {t_integer,{0,18446744073709551615}}}}}]}}.
    {test,is_eq_exact,
          {f,905},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}},
           {literal,{23,14627373477560044286}}]}.
    {move,{literal,<<3,1,2,3,4,3>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1603}]}.
    {call,1,{f,1003}}. % mos_bin/1
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
          {f,904},
          [{tr,{x,0},
               {t_union,none,none,none,
                        {t_tuple,2,false,
                                 #{1 => {t_bitstring,8,false},
                                   2 => {t_integer,{0,255}}}},
                        {t_bitstring,8,false}}},
           {literal,{<<1,2,3>>,4}}]}.
    {move,{literal,<<4,1,2,3,7,19,4,42>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1604}]}.
    {call,1,{f,1003}}. % mos_bin/1
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
          {f,903},
          [{tr,{x,0},
               {t_union,none,none,none,
                        {t_tuple,2,false,
                                 #{1 => {t_bitstring,8,false},
                                   2 => {t_integer,{0,255}}}},
                        {t_bitstring,8,false}}},
           {literal,{<<1,2,3,7>>,19,42}}]}.
    {move,{literal,<<4,1,2,3,7,97,98,99,100,101,102,103,104,105,106>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1605}]}.
    {call,1,{f,1003}}. % mos_bin/1
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
          {f,902},
          [{tr,{x,0},
               {t_union,none,none,none,
                        {t_tuple,2,false,
                                 #{1 => {t_bitstring,8,false},
                                   2 => {t_integer,{0,255}}}},
                        {t_bitstring,8,false}}},
           {literal,<<1,2,3,7>>}]}.
    {move,{atom,not_a_binary},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1607}]}.
    {call,1,{f,1021}}. % mos_verify_sig/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false]}}]}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1608}]}.
    {call,1,{f,1021}}. % mos_verify_sig/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[false]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,901},
          [{tr,{x,0},
               {t_union,{t_atom,[false]},
                        none,none,none,
                        {t_bitstring,8,false}}},
           {atom,false}]}.
    {move,{literal,<<0,0,0,42>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1609}]}.
    {call,1,{f,1021}}. % mos_verify_sig/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[false]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,900},
          [{tr,{x,0},
               {t_union,{t_atom,[false]},
                        none,none,none,
                        {t_bitstring,8,false}}},
           {atom,false}]}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1610}]}.
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
    {call,1,{f,1021}}. % mos_verify_sig/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[false]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,899},
          [{tr,{x,0},
               {t_union,{t_atom,[false]},
                        none,none,none,
                        {t_bitstring,8,false}}},
           {literal,<<"123456789">>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,899}.
    {badmatch,{x,0}}.
  {label,900}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1609}]}.
    {badmatch,{x,0}}.
  {label,901}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1608}]}.
    {badmatch,{x,0}}.
  {label,902}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1605}]}.
    {badmatch,{x,0}}.
  {label,903}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1604}]}.
    {badmatch,{x,0}}.
  {label,904}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1603}]}.
    {badmatch,{x,0}}.
  {label,905}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1601}]}.
    {badmatch,{x,0}}.
  {label,906}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1600}]}.
    {badmatch,{x,0}}.
  {label,907}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1599}]}.
    {badmatch,{x,0}}.
  {label,908}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1598}]}.
    {badmatch,{x,0}}.


{function, mos_int, 1, 910}.
  {label,909}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1614}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,mos_int},1}.
  {label,910}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {allocate,4,1}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{x,0},{y,3}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1615}]}.
    {call,1,{f,929}}. % mos_int_plain/1
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
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1616}]}.
    {call,1,{f,933}}. % mos_int_list/1
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
    {test_heap,6,0}.
    {put_list,{y,3},nil,{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,a},{x,0},{atom,z}]}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1617}]}.
    {call,1,{f,936}}. % mos_int_tuple/1
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
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1619}]}.
    {call,1,{f,939}}. % mos_int_mixed/1
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
          {f,925},
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
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1620}]}.
    {call,1,{f,939}}. % mos_int_mixed/1
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
          {f,924},
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
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1621}]}.
    {call,1,{f,939}}. % mos_int_mixed/1
    {'%',{var_info,{x,0},[{type,{t_integer,{42,42}}}]}}.
    {test_heap,6,0}.
    {put_list,{y,3},nil,{x,0}}.
    {put_list,{y,3},{x,0},{x,0}}.
    {put_list,{y,3},{x,0},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1622}]}.
    {call,1,{f,939}}. % mos_int_mixed/1
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
          {f,923},
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
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1624}]}.
    {call,2,{f,946}}. % mos_int_pats1/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_integer,{0,'+inf'}},
                       2 => {t_integer,{0,18446744073709551615}}}}}]}}.
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
    {test_heap,5,0}.
    {put_list,{y,3},nil,{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,tag},{x,0}]}}.
    {move,{literal,[z]},{x,2}}.
    {move,{literal,{a,a,a,a,a,a,a,a,a,a}},{x,1}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1625}]}.
    {call,3,{f,949}}. % mos_int_pats2/3
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
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1627}]}.
    {call,2,{f,952}}. % mos_int_pats3/2
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
           {tr,{y,2},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}}]}.
    {test_heap,2,0}.
    {put_list,{y,3},nil,{x,0}}.
    {put_map_assoc,{f,0},{literal,#{}},{x,0},1,{list,[{atom,key},{x,0}]}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1628}]}.
    {call,1,{f,955}}. % mos_int_map/1
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
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1630}]}.
    {call,2,{f,958}}. % mos_int_map/2
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
           {tr,{y,2},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}}]}.
    {test_heap,4,0}.
    {put_list,{y,3},nil,{x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1631}]}.
    {call,1,{f,962}}. % mos_int_alias/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,{0,'+inf'}},
                                     2 => {t_integer,{0,18446744073709551615}},
                                     3 => {t_bitstring,1,false}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,
          {f,917},
          [{tr,{x,1},{t_integer,{0,'+inf'}}},
           {tr,{y,1},{t_integer,{0,'+inf'}}}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,
          {f,917},
          [{tr,{x,1},{t_integer,{0,18446744073709551615}}},
           {tr,{y,0},{t_integer,{0,18446744073709551615}}}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,
          {f,917},
          [{tr,{x,1},{t_bitstring,1,false}},{tr,{y,3},{t_bitstring,1,false}}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{y,1},{y,0}]}}.
    {test,is_eq_exact,
          {f,916},
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
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1633}]}.
    {call,1,{f,965}}. % mos_int_try/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_integer,{0,'+inf'}},
                       2 => {t_integer,{0,18446744073709551615}}}}}]}}.
    {test,is_eq_exact,
          {f,915},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}},
           {tr,{y,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1634}]}.
    {call,1,{f,972}}. % mos_int_receive/1
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
           {tr,{y,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}}]}.
    {test_heap,2,0}.
    {put_list,{y,1},nil,{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1635}]}.
    {call,1,{f,991}}. % mos_int_fun/1
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
           {tr,{y,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1636}]}.
    {call,1,{f,995}}. % mos_int_exported/1
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
           {tr,{y,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}}]}.
    {move,{y,1},{x,0}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1637}]}.
    {call,1,{f,999}}. % mos_int_utf/1
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
           {tr,{y,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}}]}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,911}.
    {badmatch,{x,0}}.
  {label,912}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1636}]}.
    {badmatch,{x,0}}.
  {label,913}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1635}]}.
    {badmatch,{x,0}}.
  {label,914}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1634}]}.
    {badmatch,{x,0}}.
  {label,915}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1633}]}.
    {badmatch,{x,0}}.
  {label,916}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1632}]}.
    {badmatch,{x,0}}.
  {label,917}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1631}]}.
    {badmatch,{x,0}}.
  {label,918}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1630}]}.
    {badmatch,{x,0}}.
  {label,919}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1628}]}.
    {badmatch,{x,0}}.
  {label,920}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1627}]}.
    {badmatch,{x,0}}.
  {label,921}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1625}]}.
    {badmatch,{x,0}}.
  {label,922}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1624}]}.
    {badmatch,{x,0}}.
  {label,923}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1622}]}.
    {badmatch,{x,0}}.
  {label,924}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1620}]}.
    {badmatch,{x,0}}.
  {label,925}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1619}]}.
    {badmatch,{x,0}}.
  {label,926}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1617}]}.
    {badmatch,{x,0}}.
  {label,927}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1616}]}.
    {badmatch,{x,0}}.


{function, mos_int_plain, 1, 929}.
  {label,928}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1640}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,mos_int_plain},1}.
  {label,929}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,1,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,930},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,930},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1640,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,930},
              {x,0},
              {commands,[{ensure_exactly,32},
                         {integer,3,{literal,[]},32,1,{x,3}}]}}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,930}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_match,{f,931},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,931},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1642,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,931},
              {x,0},
              {commands,[{ensure_exactly,64},
                         {integer,3,{literal,[]},64,1,{x,3}}]}}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,931}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,928}}.


{function, mos_int_list, 1, 933}.
  {label,932}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1645}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,mos_int_list},1}.
  {label,933}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_bitstring,1,false},nil}}]}}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_nil,{f,932},[{tr,{x,2},{t_list,{t_bitstring,1,false},nil}}]}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,2}}.
    {bs_match,{f,934},
              {x,2},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,bs_get_integer2,
          {f,934},
          4,
          [{tr,{x,2},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1645,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_match,{f,934},
              {x,2},
              {commands,[{ensure_exactly,32},
                         {integer,4,{literal,[]},32,1,{x,4}}]}}.
    {test_heap,3,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4}]}}.
    return.
  {label,934}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_match,{f,932},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,932},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1647,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,932},
              {x,1},
              {commands,[{ensure_exactly,64},
                         {integer,3,{literal,[]},64,1,{x,3}}]}}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.


{function, mos_int_tuple, 1, 936}.
  {label,935}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1650}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,mos_int_tuple},1}.
  {label,936}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_atom,[a]},
                                     2 => {t_cons,{t_bitstring,1,false},nil},
                                     3 => {t_atom,[z]}}}}]}}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_nil,{f,935},[{tr,{x,1},{t_list,{t_bitstring,1,false},nil}}]}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,1}}.
    {bs_match,{f,937},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,bs_get_integer2,
          {f,937},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1650,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_match,{f,937},
              {x,1},
              {commands,[{ensure_exactly,32},
                         {integer,4,{literal,[]},32,1,{x,4}}]}}.
    {test_heap,3,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4}]}}.
    return.
  {label,937}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,1}}.
    {bs_match,{f,935},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,935},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1652,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,935},
              {x,1},
              {commands,[{ensure_exactly,64},
                         {integer,3,{literal,[]},64,1,{x,3}}]}}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.


{function, mos_int_mixed, 1, 939}.
  {label,938}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1655}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,mos_int_mixed},1}.
  {label,939}.
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
    {test,is_tuple,{f,941},[{x,0}]}.
    {test,test_arity,{f,941},[{x,0},3]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_nil,{f,941},[{tr,{x,1},{t_list,{t_bitstring,1,false},nil}}]}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,1}}.
    {bs_match,{f,940},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,bs_get_integer2,
          {f,940},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1655,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_match,{f,940},
              {x,1},
              {commands,[{ensure_exactly,32},
                         {integer,4,{literal,[]},32,1,{x,4}}]}}.
    {test_heap,3,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4}]}}.
    return.
  {label,940}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,1}}.
    {bs_match,{f,941},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,941},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1657,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,941},
              {x,1},
              {commands,[{ensure_exactly,64},
                         {integer,3,{literal,[]},64,1,{x,3}}]}}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,941}.
    {test,is_nonempty_list,{f,943},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_nil,{f,943},[{tr,{x,2},{t_list,{t_bitstring,1,false},nil}}]}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,2}}.
    {bs_match,{f,942},
              {x,2},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,bs_get_integer2,
          {f,942},
          4,
          [{tr,{x,2},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1659,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_match,{f,942},
              {x,2},
              {commands,[{ensure_exactly,32},
                         {integer,4,{literal,[]},32,1,{x,4}}]}}.
    {test_heap,3,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4}]}}.
    return.
  {label,942}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_match,{f,943},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,943},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1661,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,943},
              {x,1},
              {commands,[{ensure_exactly,64},
                         {integer,3,{literal,[]},64,1,{x,3}}]}}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,943}.
    {test,is_tuple,
          {f,944},
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
    {test,test_arity,{f,944},[{x,0},2]}.
    {move,{integer,42},{x,0}}.
    return.
  {label,944}.
    {move,{atom,no_match},{x,0}}.
    return.


{function, mos_int_pats1, 2, 946}.
  {label,945}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1668}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,mos_int_pats1},2}.
  {label,946}.
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
    {test,is_nil,{f,945},[{tr,{x,2},{t_list,{t_bitstring,1,false},nil}}]}.
    {bs_start_match4,{atom,no_fail},4,{x,3},{x,2}}.
    {bs_match,{f,947},
              {x,2},
              {commands,[{ensure_at_least,8,1},
                         {integer,4,{literal,[]},8,1,{x,4}}]}}.
    {test,bs_get_integer2,
          {f,947},
          5,
          [{tr,{x,2},{t_bs_context,1}},
           {tr,{x,4},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1668,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {bs_match,{f,947},
              {x,2},
              {commands,[{ensure_exactly,32},
                         {integer,5,{literal,[]},32,1,{x,5}}]}}.
    {test_heap,3,6}.
    {put_tuple2,{x,0},{list,[{x,4},{x,5}]}}.
    return.
  {label,947}.
    {bs_start_match4,{atom,no_fail},4,{x,3},{x,2}}.
    {bs_match,{f,945},
              {x,2},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,bs_get_integer2,
          {f,945},
          4,
          [{tr,{x,2},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1670,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_match,{f,945},
              {x,2},
              {commands,[{ensure_exactly,64},
                         {integer,4,{literal,[]},64,1,{x,4}}]}}.
    {test_heap,3,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4}]}}.
    return.


{function, mos_int_pats2, 3, 949}.
  {label,948}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1673}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,mos_int_pats2},3}.
  {label,949}.
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
    {test,is_nil,{f,948},[{tr,{x,3},{t_list,{t_bitstring,1,false},nil}}]}.
    {bs_start_match4,{atom,no_fail},5,{x,4},{x,3}}.
    {bs_match,{f,950},
              {x,3},
              {commands,[{ensure_at_least,8,1},
                         {integer,5,{literal,[]},8,1,{x,5}}]}}.
    {test,bs_get_integer2,
          {f,950},
          6,
          [{tr,{x,3},{t_bs_context,1}},
           {tr,{x,5},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1673,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {bs_match,{f,950},
              {x,3},
              {commands,[{ensure_exactly,32},
                         {integer,6,{literal,[]},32,1,{x,6}}]}}.
    {test_heap,3,7}.
    {put_tuple2,{x,0},{list,[{x,5},{x,6}]}}.
    return.
  {label,950}.
    {bs_start_match4,{atom,no_fail},5,{x,4},{x,3}}.
    {bs_match,{f,948},
              {x,3},
              {commands,[{ensure_at_least,8,1},
                         {integer,4,{literal,[]},8,1,{x,4}}]}}.
    {test,bs_get_integer2,
          {f,948},
          5,
          [{tr,{x,3},{t_bs_context,1}},
           {tr,{x,4},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1675,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {bs_match,{f,948},
              {x,3},
              {commands,[{ensure_exactly,64},
                         {integer,5,{literal,[]},64,1,{x,5}}]}}.
    {test_heap,3,6}.
    {put_tuple2,{x,0},{list,[{x,4},{x,5}]}}.
    return.


{function, mos_int_pats3, 2, 952}.
  {label,951}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1678}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,mos_int_pats3},2}.
  {label,952}.
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
    {test,is_nil,{f,951},[{tr,{x,4},{t_list,{t_bitstring,1,false},nil}}]}.
    {bs_start_match4,{atom,no_fail},6,{x,5},{x,4}}.
    {bs_match,{f,953},
              {x,4},
              {commands,[{ensure_at_least,8,1},
                         {integer,6,{literal,[]},8,1,{x,6}}]}}.
    {test,bs_get_integer2,
          {f,953},
          7,
          [{tr,{x,4},{t_bs_context,1}},
           {tr,{x,6},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1678,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,7}}.
    {bs_match,{f,953},
              {x,4},
              {commands,[{ensure_exactly,32},
                         {integer,8,{literal,[]},32,1,{x,8}}]}}.
    {test,is_nonempty_list,{f,951},[{x,3}]}.
    {get_list,{x,3},{x,4},{x,9}}.
    {test,is_nonempty_list,{f,953},[{x,9}]}.
    {get_list,{x,9},{x,10},{x,9}}.
    {test,is_nil,
        {f,953},
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
          {f,953},
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
    {bs_match,{f,953},
              {x,9},
              {commands,[{ensure_at_least,8,1},
                         {integer,11,{literal,[]},8,1,{x,11}}]}}.
    {test,bs_get_integer2,
          {f,953},
          12,
          [{tr,{x,9},{t_bs_context,1}},
           {tr,{x,11},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1678,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,12}}.
    {bs_match,{f,953},
              {x,9},
              {commands,[{ensure_exactly,32},
                         {integer,13,{literal,[]},32,1,{x,13}}]}}.
    {test,is_eq_exact,
          {f,953},
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
          {f,953},
          [{tr,{x,9},{t_integer,{0,18446744073709551615}}},
           {tr,{x,8},{t_integer,{0,4294967295}}}]}.
    {test,is_eq_exact,
          {f,953},
          [{tr,{x,11},{t_integer,{0,255}}},{tr,{x,6},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,953},
          [{tr,{x,12},{t_integer,{0,'+inf'}}},
           {tr,{x,7},{t_integer,{0,'+inf'}}}]}.
    {test,is_eq_exact,
          {f,953},
          [{tr,{x,13},{t_integer,{0,4294967295}}},
           {tr,{x,8},{t_integer,{0,4294967295}}}]}.
    {get_tuple_element,{x,4},2,{x,4}}.
    {test,is_eq_exact,
          {f,953},
          [{tr,{x,4},{t_integer,{0,18446744073709551615}}},
           {tr,{x,8},{t_integer,{0,4294967295}}}]}.
    {test,is_eq_exact,
          {f,953},
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
  {label,953}.
    {bs_start_match4,{atom,no_fail},6,{x,5},{x,4}}.
    {bs_match,{f,951},
              {x,4},
              {commands,[{ensure_at_least,8,1},
                         {integer,5,{literal,[]},8,1,{x,5}}]}}.
    {test,bs_get_integer2,
          {f,951},
          6,
          [{tr,{x,4},{t_bs_context,1}},
           {tr,{x,5},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1680,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {bs_match,{f,951},
              {x,4},
              {commands,[{ensure_exactly,64},
                         {integer,7,{literal,[]},64,1,{x,7}}]}}.
    {test,is_nonempty_list,{f,951},[{x,3}]}.
    {get_list,{x,3},{x,4},{x,3}}.
    {test,is_nonempty_list,{f,951},[{x,3}]}.
    {get_list,{x,3},{x,8},{x,3}}.
    {test,is_nil,
        {f,951},
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
          {f,951},
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
    {bs_match,{f,951},
              {x,3},
              {commands,[{ensure_at_least,8,1},
                         {integer,9,{literal,[]},8,1,{x,9}}]}}.
    {test,bs_get_integer2,
          {f,951},
          10,
          [{tr,{x,3},{t_bs_context,1}},
           {tr,{x,9},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1680,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,10}}.
    {bs_match,{f,951},
              {x,3},
              {commands,[{ensure_exactly,64},
                         {integer,11,{literal,[]},64,1,{x,11}}]}}.
    {test,is_eq_exact,
          {f,951},
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
          {f,951},
          [{tr,{x,2},{t_integer,{0,18446744073709551615}}},
           {tr,{x,7},{t_integer,{0,18446744073709551615}}}]}.
    {test,is_eq_exact,
          {f,951},
          [{tr,{x,9},{t_integer,{0,255}}},{tr,{x,5},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,951},
          [{tr,{x,10},{t_integer,{0,'+inf'}}},
           {tr,{x,6},{t_integer,{0,'+inf'}}}]}.
    {test,is_eq_exact,
          {f,951},
          [{tr,{x,11},{t_integer,{0,18446744073709551615}}},
           {tr,{x,7},{t_integer,{0,18446744073709551615}}}]}.
    {get_tuple_element,{x,4},2,{x,2}}.
    {test,is_eq_exact,
          {f,951},
          [{tr,{x,2},{t_integer,{0,18446744073709551615}}},
           {tr,{x,7},{t_integer,{0,18446744073709551615}}}]}.
    {test,is_eq_exact,
          {f,951},
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


{function, mos_int_map, 1, 955}.
  {label,954}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1683}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,mos_int_map},1}.
  {label,955}.
    {'%',{var_info,{x,0},
                   [{type,{t_map,{t_atom,[key]},
                                 {t_cons,{t_bitstring,1,false},nil}}}]}}.
    {get_map_elements,{f,956},
                      {tr,{x,0},
                          {t_map,{t_atom,[key]},
                                 {t_cons,{t_bitstring,1,false},nil}}},
                      {list,[{atom,key},{x,1}]}}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_nil,{f,956},[{tr,{x,1},{t_list,{t_bitstring,1,false},nil}}]}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,1}}.
    {bs_match,{f,956},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,956},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1683,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,956},
              {x,1},
              {commands,[{ensure_exactly,32},
                         {integer,3,{literal,[]},32,1,{x,3}}]}}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,956}.
    {get_map_elements,{f,954},
                      {tr,{x,0},
                          {t_map,{t_atom,[key]},
                                 {t_cons,{t_bitstring,1,false},nil}}},
                      {list,[{atom,key},{x,1}]}}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_nil,{f,954},[{tr,{x,1},{t_list,{t_bitstring,1,false},nil}}]}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,1}}.
    {bs_match,{f,954},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,954},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1685,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,954},
              {x,1},
              {commands,[{ensure_exactly,64},
                         {integer,3,{literal,[]},64,1,{x,3}}]}}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.


{function, mos_int_map, 2, 958}.
  {label,957}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1688}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,mos_int_map},2}.
  {label,958}.
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
        {f,959},
        {tr,{x,1},
            {t_map,
                {t_tuple,2,true,#{1 => {t_atom,[my]},2 => {t_atom,[key]}}},
                {t_cons,{t_bitstring,1,false},nil}}},
        {list,[{literal,{my,key}},{x,0}]}}.
    {get_list,{x,0},{x,2},{x,0}}.
    {test,is_nil,{f,959},[{tr,{x,0},{t_list,{t_bitstring,1,false},nil}}]}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,0}}.
    {bs_match,{f,959},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,959},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1690,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,959},
              {x,0},
              {commands,[{ensure_exactly,32},
                         {integer,3,{literal,[]},32,1,{x,3}}]}}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,959}.
    {get_map_elements,
        {f,960},
        {tr,{x,1},
            {t_map,
                {t_tuple,2,true,#{1 => {t_atom,[my]},2 => {t_atom,[key]}}},
                {t_cons,{t_bitstring,1,false},nil}}},
        {list,[{literal,{my,key}},{x,0}]}}.
    {get_list,{x,0},{x,2},{x,0}}.
    {test,is_nil,{f,960},[{tr,{x,0},{t_list,{t_bitstring,1,false},nil}}]}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,0}}.
    {bs_match,{f,960},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,960},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1691,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,960},
              {x,0},
              {commands,[{ensure_exactly,64},
                         {integer,3,{literal,[]},64,1,{x,3}}]}}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,960}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1689}]}.
    {case_end,{x,1}}.


{function, mos_int_alias, 1, 962}.
  {label,961}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1694}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,mos_int_alias},1}.
  {label,962}.
    {'%',{var_info,{x,0},
                   [{type,{t_cons,{t_cons,{t_bitstring,1,false},nil},nil}}]}}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_nil,
          {f,961},
          [{tr,{x,2},{t_list,{t_cons,{t_bitstring,1,false},nil},nil}}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_nil,{f,961},[{tr,{x,1},{t_list,{t_bitstring,1,false},nil}}]}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,1}}.
    {bs_match,{f,963},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,bs_get_integer2,
          {f,963},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1694,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_match,{f,963},
              {x,1},
              {commands,[{ensure_exactly,32},
                         {integer,4,{literal,[]},32,1,{x,4}}]}}.
    {test_heap,4,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4},{x,2}]}}.
    return.
  {label,963}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,1}}.
    {bs_match,{f,961},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,bs_get_integer2,
          {f,961},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1696,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_match,{f,961},
              {x,1},
              {commands,[{ensure_exactly,64},
                         {integer,4,{literal,[]},64,1,{x,4}}]}}.
    {test_heap,4,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4},{x,2}]}}.
    return.


{function, mos_int_try, 1, 965}.
  {label,964}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1699}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,mos_int_try},1}.
  {label,965}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_bitstring,1,false},nil}}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {'try',{y,1},{f,969}}.
    {'try',{y,0},{f,968}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1700}]}.
    {call,1,{f,1776}}. % id/1
    {try_end,{y,0}}.
    {test,is_nonempty_list,{f,970},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_nil,{f,970},[{x,2}]}.
    {test,bs_start_match3,{f,966},2,[{x,1}],{x,2}}.
    {bs_match,{f,966},
              {x,2},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,bs_get_integer2,
          {f,966},
          4,
          [{tr,{x,2},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1701,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_match,{f,966},
              {x,2},
              {commands,[{ensure_exactly,32},
                         {integer,4,{literal,[]},32,1,{x,4}}]}}.
    {test_heap,3,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4}]}}.
    {jump,{f,967}}.
  {label,966}.
    {test,bs_start_match3,{f,970},2,[{x,1}],{x,1}}.
    {bs_match,{f,970},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,970},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1702,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,970},
              {x,1},
              {commands,[{ensure_exactly,64},
                         {integer,3,{literal,[]},64,1,{x,3}}]}}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
  {label,967}.
    {try_end,{y,1}}.
    {deallocate,2}.
    return.
  {label,968}.
    {try_case,{y,0}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.
  {label,969}.
    {try_case,{y,1}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.
  {label,970}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",1700}]}.
    {try_case_end,{x,0}}.


{function, mos_int_receive, 1, 972}.
  {label,971}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1707}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,mos_int_receive},1}.
  {label,972}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {allocate,5,1}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3}]}}.
    {move,{x,0},{y,4}}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{y,4},{x,1}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1709}]}.
    send.
  {label,973}.
    {loop_rec,{f,987},{x,0}}.
    {test,bs_start_match3,{f,974},1,[{x,0}],{x,1}}.
    {bs_match,{f,974},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,974},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1711,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,974},
              {x,1},
              {commands,[{ensure_exactly,32},
                         {integer,3,{literal,[]},32,1,{x,3}}]}}.
    {test_heap,3,4}.
    {move,{x,3},{x,1}}.
    {move,{x,2},{x,0}}.
    remove_message.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {move,{x,0},{y,3}}.
    {jump,{f,975}}.
  {label,974}.
    {test,bs_start_match3,{f,986},1,[{x,0}],{x,0}}.
    {bs_match,{f,986},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,1,{literal,[]},8,1,{x,1}}]}}.
    {test,bs_get_integer2,
          {f,986},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,1},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1712,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {bs_match,{f,986},
              {x,0},
              {commands,[{ensure_exactly,64},
                         {integer,2,{literal,[]},64,1,{x,2}}]}}.
    {test_heap,3,3}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    remove_message.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {move,{x,0},{y,3}}.
  {label,975}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{y,4},{x,1}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1715}]}.
    send.
  {label,976}.
    {loop_rec,{f,985},{x,0}}.
    {test,bs_start_match3,{f,977},1,[{x,0}],{x,1}}.
    {bs_match,{f,977},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,977},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1717,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_match,{f,977},
              {x,1},
              {commands,[{ensure_exactly,32},
                         {integer,4,{literal,[]},32,1,{x,4}}]}}.
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
    {jump,{f,978}}.
  {label,977}.
    {test,bs_start_match3,{f,984},1,[{x,0}],{x,0}}.
    {bs_match,{f,984},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,1,{literal,[]},8,1,{x,1}}]}}.
    {test,bs_get_integer2,
          {f,984},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,1},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1718,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,984},
              {x,0},
              {commands,[{ensure_exactly,64},
                         {integer,3,{literal,[]},64,1,{x,3}}]}}.
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
  {label,978}.
    {test,is_eq_exact,
          {f,989},
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
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1720}]}.
    send.
  {label,979}.
    {loop_rec,{f,983},{x,0}}.
    {test,is_tagged_tuple,{f,982},[{x,0},2,{atom,tag}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_nonempty_list,{f,982},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_nil,{f,982},[{x,0}]}.
    {test,bs_start_match3,{f,980},2,[{x,1}],{x,0}}.
    {bs_match,{f,980},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,980},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1722,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_match,{f,980},
              {x,0},
              {commands,[{ensure_exactly,32},
                         {integer,4,{literal,[]},32,1,{x,4}}]}}.
    {test,is_eq_exact,
          {f,980},
          [{tr,{x,2},{t_integer,{0,255}}},{tr,{y,1},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,980},
          [{tr,{x,3},{t_integer,{0,'+inf'}}},
           {tr,{y,0},{t_integer,{0,'+inf'}}}]}.
    {test,is_ne_exact,
          {f,981},
          [{tr,{x,4},{t_integer,{0,4294967295}}},
           {tr,{y,2},{t_integer,{0,18446744073709551615}}}]}.
  {label,980}.
    {test,bs_start_match3,{f,982},2,[{x,1}],{x,0}}.
    {bs_match,{f,982},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,1,{literal,[]},8,1,{x,1}}]}}.
    {test,bs_get_integer2,
          {f,982},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,1},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1723,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,982},
              {x,0},
              {commands,[{ensure_exactly,64},
                         {integer,3,{literal,[]},64,1,{x,3}}]}}.
    {test,is_eq_exact,
          {f,982},
          [{tr,{x,1},{t_integer,{0,255}}},{tr,{y,1},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,982},
          [{tr,{x,2},{t_integer,{0,'+inf'}}},
           {tr,{y,0},{t_integer,{0,'+inf'}}}]}.
    {test,is_eq_exact,
          {f,982},
          [{tr,{x,3},{t_integer,{0,18446744073709551615}}},
           {tr,{y,2},{t_integer,{0,18446744073709551615}}}]}.
  {label,981}.
    {test_heap,3,0}.
    remove_message.
    {put_tuple2,{x,0},{list,[{y,0},{y,2}]}}.
    {test,is_eq_exact,
          {f,988},
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
  {label,982}.
    {loop_rec_end,{f,979}}.
  {label,983}.
    {wait,{f,979}}.
  {label,984}.
    {loop_rec_end,{f,976}}.
  {label,985}.
    {wait,{f,976}}.
  {label,986}.
    {loop_rec_end,{f,973}}.
  {label,987}.
    {wait,{f,973}}.
  {label,988}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1721}]}.
    {badmatch,{x,0}}.
  {label,989}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1716}]}.
    {badmatch,{x,0}}.


{function, mos_int_fun, 1, 991}.
  {label,990}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1727}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,mos_int_fun},1}.
  {label,991}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_bitstring,1,false},nil}}]}}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_nil,{f,993},[{tr,{x,2},{t_list,{t_bitstring,1,false},nil}}]}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,2}}.
    {bs_match,{f,992},
              {x,2},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,bs_get_integer2,
          {f,992},
          4,
          [{tr,{x,2},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1729,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_match,{f,992},
              {x,2},
              {commands,[{ensure_exactly,32},
                         {integer,4,{literal,[]},32,1,{x,4}}]}}.
    {test_heap,3,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4}]}}.
    return.
  {label,992}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_match,{f,993},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,993},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1730,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,993},
              {x,1},
              {commands,[{ensure_exactly,64},
                         {integer,3,{literal,[]},64,1,{x,3}}]}}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,993}.
    {call_only,1,{f,2040}}. % '-mos_int_fun/1-inlined-0-'/1


{function, mos_int_exported, 1, 995}.
  {label,994}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1734}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,mos_int_exported},1}.
  {label,995}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,1,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,996},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,996},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1736,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,996},
              {x,0},
              {commands,[{ensure_exactly,32},
                         {integer,3,{literal,[]},32,1,{x,3}}]}}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,996}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_match,{f,997},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,997},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1737,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,997},
              {x,0},
              {commands,[{ensure_exactly,64},
                         {integer,3,{literal,[]},64,1,{x,3}}]}}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,997}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1735}]}.
    {case_end,{x,0}}.


{function, mos_int_utf, 1, 999}.
  {label,998}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1741}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,mos_int_utf},1}.
  {label,999}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1742}]}.
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
    {call,1,{f,1776}}. % id/1
    {test,bs_start_match3,{f,1000},1,[{x,0}],{x,1}}.
    {bs_match,{f,1000},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,1000},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1744,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,1000},
              {x,1},
              {commands,[{ensure_at_least,48,1},
                         {integer,3,{literal,[]},32,1,{x,3}},
                         {'=:=',nil,16,52361}]}}.
    {test,bs_get_utf16,
          {f,1000},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {field_flags,[{anno,[1744,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,is_eq_exact,
          {f,1000},
          [{tr,{x,4},{t_integer,{0,1114111}}},{integer,7777}]}.
    {test,bs_get_utf32,
          {f,1000},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {field_flags,[{anno,[1744,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,is_eq_exact,
          {f,1000},
          [{tr,{x,4},{t_integer,{0,1114111}}},{integer,9999}]}.
    {bs_match,{f,1000},{x,1},{commands,[{ensure_exactly,0}]}}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    {deallocate,0}.
    return.
  {label,1000}.
    {test,bs_start_match3,{f,1001},1,[{x,0}],{x,1}}.
    {bs_match,{f,1001},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,1001},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1745,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,1001},
              {x,1},
              {commands,[{ensure_at_least,80,1},
                         {integer,3,{literal,[]},64,1,{x,3}},
                         {'=:=',nil,16,52361}]}}.
    {test,bs_get_utf16,
          {f,1001},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {field_flags,[{anno,[1745,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,is_eq_exact,
          {f,1001},
          [{tr,{x,4},{t_integer,{0,1114111}}},{integer,7777}]}.
    {test,bs_get_utf32,
          {f,1001},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {field_flags,[{anno,[1745,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,is_eq_exact,
          {f,1001},
          [{tr,{x,4},{t_integer,{0,1114111}}},{integer,9999}]}.
    {bs_match,{f,1001},{x,1},{commands,[{ensure_exactly,0}]}}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    {deallocate,0}.
    return.
  {label,1001}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1743}]}.
    {case_end,{x,0}}.


{function, mos_bin, 1, 1003}.
  {label,1002}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1748}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,mos_bin},1}.
  {label,1003}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1749}]}.
    {call,1,{f,1006}}. % mos_bin_plain/1
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
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1750}]}.
    {call,1,{f,1014}}. % mos_bin_tuple/1
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
          {f,1004},
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
  {label,1004}.
    {badmatch,{x,0}}.


{function, mos_bin_plain, 1, 1006}.
  {label,1005}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1753}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,mos_bin_plain},1}.
  {label,1006}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,1007},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_binary2,
          {f,1007},
          3,
          [{tr,{x,0},{t_bs_context,8}},
           {tr,{x,2},{t_integer,{0,255}}},
           8,
           {field_flags,[{anno,[1753,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_match,{f,1007},
              {x,0},
              {commands,[{ensure_exactly,16},
                         {integer,4,{literal,[]},8,1,{x,4}},
                         {integer,5,{literal,[]},8,1,{x,5}}]}}.
    {test,is_eq_exact,
          {f,1007},
          [{tr,{x,5},{t_integer,{0,255}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1754}]}.
    {gc_bif,byte_size,{f,0},5,[{tr,{x,3},{t_bitstring,8,false}}],{x,0}}.
    {test,is_eq_exact,
          {f,1010},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},
           {tr,{x,2},{t_integer,{0,255}}}]}.
    {test_heap,3,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4}]}}.
    return.
  {label,1007}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_match,{f,1008},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_binary2,
          {f,1008},
          3,
          [{tr,{x,0},{t_bs_context,8}},
           {tr,{x,2},{t_integer,{0,255}}},
           8,
           {field_flags,[{anno,[1756,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_match,{f,1008},
              {x,0},
              {commands,[{ensure_exactly,24},
                         {integer,4,{literal,[]},8,1,{x,4}},
                         {integer,5,{literal,[]},8,1,{x,5}},
                         {integer,6,{literal,[]},8,1,{x,6}}]}}.
    {test,is_eq_exact,
          {f,1008},
          [{tr,{x,5},{t_integer,{0,255}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1757}]}.
    {gc_bif,byte_size,{f,0},7,[{tr,{x,3},{t_bitstring,8,false}}],{x,0}}.
    {test,is_eq_exact,
          {f,1011},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},
           {tr,{x,2},{t_integer,{0,255}}}]}.
    {test_heap,4,7}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4},{x,6}]}}.
    return.
  {label,1008}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_match,{f,1009},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_binary2,
          {f,1009},
          3,
          [{tr,{x,0},{t_bs_context,8}},
           {tr,{x,2},{t_integer,{0,255}}},
           8,
           {field_flags,[{anno,[1759,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_match_string,{f,1009},[{x,0},80,{string,<<"abcdefghij">>}]}.
    {bs_match,{f,1009},{x,0},{commands,[{ensure_exactly,0}]}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1760}]}.
    {gc_bif,byte_size,{f,0},4,[{tr,{x,3},{t_bitstring,8,false}}],{x,0}}.
    {test,is_eq_exact,
          {f,1012},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},
           {tr,{x,2},{t_integer,{0,255}}}]}.
    {move,{x,3},{x,0}}.
    return.
  {label,1009}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,1005}}.
  {label,1010}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1754}]}.
    {badmatch,{x,0}}.
  {label,1011}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1757}]}.
    {badmatch,{x,0}}.
  {label,1012}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1760}]}.
    {badmatch,{x,0}}.


{function, mos_bin_tuple, 1, 1014}.
  {label,1013}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1763}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,mos_bin_tuple},1}.
  {label,1014}.
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
    {bs_match,{f,1015},
              {x,2},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,bs_get_binary2,
          {f,1015},
          4,
          [{tr,{x,2},{t_bs_context,8}},
           {tr,{x,3},{t_integer,{0,255}}},
           8,
           {field_flags,[{anno,[1763,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {bs_match,{f,1015},
              {x,2},
              {commands,[{ensure_exactly,16},
                         {integer,5,{literal,[]},8,1,{x,5}},
                         {integer,6,{literal,[]},8,1,{x,6}}]}}.
    {test,is_eq_exact,
          {f,1015},
          [{tr,{x,6},{t_integer,{0,255}}},{tr,{x,3},{t_integer,{0,255}}}]}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1764}]}.
    {gc_bif,byte_size,{f,0},6,[{tr,{x,4},{t_bitstring,8,false}}],{x,0}}.
    {test,is_eq_exact,
          {f,1017},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},
           {tr,{x,3},{t_integer,{0,255}}}]}.
    {test_heap,3,6}.
    {put_tuple2,{x,0},{list,[{x,4},{x,5}]}}.
    return.
  {label,1015}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,2}}.
    {bs_match,{f,1016},
              {x,2},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,bs_get_binary2,
          {f,1016},
          4,
          [{tr,{x,2},{t_bs_context,8}},
           {tr,{x,3},{t_integer,{0,255}}},
           8,
           {field_flags,[{anno,[1766,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {bs_match,{f,1016},
              {x,2},
              {commands,[{ensure_exactly,24},
                         {integer,5,{literal,[]},8,1,{x,5}},
                         {integer,6,{literal,[]},8,1,{x,6}},
                         {integer,7,{literal,[]},8,1,{x,7}}]}}.
    {test,is_eq_exact,
          {f,1016},
          [{tr,{x,6},{t_integer,{0,255}}},{tr,{x,3},{t_integer,{0,255}}}]}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1767}]}.
    {gc_bif,byte_size,{f,0},8,[{tr,{x,4},{t_bitstring,8,false}}],{x,0}}.
    {test,is_eq_exact,
          {f,1018},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},
           {tr,{x,3},{t_integer,{0,255}}}]}.
    {test_heap,4,8}.
    {put_tuple2,{x,0},{list,[{x,4},{x,5},{x,7}]}}.
    return.
  {label,1016}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_match,{f,1013},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_binary2,
          {f,1013},
          3,
          [{tr,{x,1},{t_bs_context,8}},
           {tr,{x,2},{t_integer,{0,255}}},
           8,
           {field_flags,[{anno,[1769,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_match_string,{f,1013},[{x,1},80,{string,<<"abcdefghij">>}]}.
    {bs_match,{f,1013},{x,1},{commands,[{ensure_exactly,0}]}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1770}]}.
    {gc_bif,byte_size,{f,0},4,[{tr,{x,3},{t_bitstring,8,false}}],{x,0}}.
    {test,is_eq_exact,
          {f,1019},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},
           {tr,{x,2},{t_integer,{0,255}}}]}.
    {move,{x,3},{x,0}}.
    return.
  {label,1017}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1764}]}.
    {badmatch,{x,0}}.
  {label,1018}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1767}]}.
    {badmatch,{x,0}}.
  {label,1019}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1770}]}.
    {badmatch,{x,0}}.


{function, mos_verify_sig, 1, 1021}.
  {label,1020}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1773}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,mos_verify_sig},1}.
  {label,1021}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[not_a_binary]},
                                   none,none,none,
                                   {t_bitstring,16,false}}}]}}.
    {test,bs_start_match3,{f,1022},1,[{x,0}],{x,0}}.
    {bs_match,{f,1022},
              {x,0},
              {commands,[{ensure_at_least,32,1},
                         {integer,1,{literal,[]},32,1,{x,1}}]}}.
    {test,bs_skip_bits2,
          {f,1022},
          [{x,0},
           {x,1},
           8,
           {field_flags,[{anno,[1775,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_match,{f,1022},
              {x,0},
              {commands,[{ensure_at_least,32,1},
                         {integer,1,{literal,[]},32,1,{x,1}}]}}.
    {test,bs_get_binary2,
          {f,1022},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {tr,{x,1},{t_integer,{0,4294967295}}},
           8,
           {field_flags,[{anno,[1775,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {bs_match,{f,1022},{x,0},{commands,[{ensure_exactly,0}]}}.
    {move,{x,1},{x,0}}.
    return.
  {label,1022}.
    {move,{atom,false},{x,0}}.
    return.


{function, follow_fail_branch, 1, 1024}.
  {label,1023}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1783}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,follow_fail_branch},1}.
  {label,1024}.
    {allocate,0,0}.
    {move,{literal,<<0>>},{x,1}}.
    {move,{literal,<<0,1>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1784}]}.
    {call,2,{f,1028}}. % ffb_1/2
    {'%',{var_info,{x,0},[{type,{t_integer,{42,42}}}]}}.
    {move,{literal,[a]},{x,1}}.
    {move,{literal,<<0,1>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1785}]}.
    {call,2,{f,1028}}. % ffb_1/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,288230376151711743}}}]}}.
    {test,is_eq_exact,
          {f,1026},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},{integer,8}]}.
    {move,{literal,<<0>>},{x,1}}.
    {move,{integer,17},{x,2}}.
    {move,{literal,<<0,1>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1786}]}.
    {call,3,{f,1033}}. % ffb_2/3
    {'%',{var_info,{x,0},[{type,{t_integer,{42,42}}}]}}.
    {move,{literal,[a]},{x,1}}.
    {move,{integer,0},{x,2}}.
    {move,{literal,<<0,1>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1787}]}.
    {call,3,{f,1033}}. % ffb_2/3
    {'%',{var_info,{x,0},[{type,{t_integer,{0,288230376151711743}}}]}}.
    {test,is_eq_exact,
          {f,1025},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},{integer,8}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1025}.
    {badmatch,{x,0}}.
  {label,1026}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1785}]}.
    {badmatch,{x,0}}.


{function, ffb_1, 2, 1028}.
  {label,1027}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1790}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,ffb_1},2}.
  {label,1028}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,16,false}},accepts_match_context]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_union,none,
                                   {t_cons,{t_atom,[a]},nil},
                                   none,none,
                                   {t_bitstring,8,false}}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {bs_match,{f,1030},{x,0},{commands,[{ensure_at_least,8,1},{skip,8}]}}.
    {test,bs_start_match3,{f,1029},2,[{x,1}],{x,2}}.
    {bs_match,{f,1031},{x,2},{commands,[{ensure_exactly,8}]}}.
    {move,{integer,42},{x,0}}.
    return.
  {label,1029}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1799}]}.
    {gc_bif,bit_size,{f,0},1,[{tr,{x,0},{t_bs_context,8}}],{x,0}}.
    return.
  {label,1030}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {jump,{f,1027}}.
  {label,1031}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1791}]}.
    {case_end,{x,1}}.


{function, ffb_2, 3, 1033}.
  {label,1032}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1802}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,ffb_2},3}.
  {label,1033}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,16,false}},accepts_match_context]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_union,none,
                                   {t_cons,{t_atom,[a]},nil},
                                   none,none,
                                   {t_bitstring,8,false}}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{0,17}}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,3},3}.
    {bs_match,{f,1035},{x,0},{commands,[{ensure_at_least,8,1},{skip,8}]}}.
    {test,bs_start_match3,{f,1034},3,[{x,1}],{x,3}}.
    {bs_match,{f,1036},{x,3},{commands,[{ensure_exactly,8}]}}.
    {test,is_eq_exact,{f,1036},[{tr,{x,2},{t_integer,{0,17}}},{integer,17}]}.
    {move,{integer,42},{x,0}}.
    return.
  {label,1034}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1805}]}.
    {gc_bif,bit_size,{f,0},1,[{tr,{x,0},{t_bs_context,8}}],{x,0}}.
    return.
  {label,1035}.
    {bs_set_position,{x,0},{x,3}}.
    {bs_get_tail,{x,0},{x,0},3}.
    {jump,{f,1032}}.
  {label,1036}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1803}]}.
    {case_end,{x,1}}.


{function, no_partition, 1, 1038}.
  {label,1037}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1808}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,no_partition},1}.
  {label,1038}.
    {allocate,0,0}.
    {move,{atom,a1},{x,1}}.
    {move,{literal,<<"string">>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1809}]}.
    {call,2,{f,1044}}. % no_partition_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[one]}}]}}.
    {move,{atom,a2},{x,1}}.
    {move,{literal,<<"string">>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1810}]}.
    {call,2,{f,1044}}. % no_partition_1/2
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
        {f,1042},
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
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1811}]}.
    {call,2,{f,1044}}. % no_partition_1/2
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
        {f,1041},
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
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1812}]}.
    {call,2,{f,1044}}. % no_partition_1/2
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
        {f,1040},
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
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1813}]}.
    {call,2,{f,1044}}. % no_partition_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[three]}}]}}.
    {move,{atom,a4},{x,1}}.
    {move,{literal,[a]},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1814}]}.
    {call,2,{f,1044}}. % no_partition_1/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_atom,[four]},
                                     2 => {t_atom,[a]},
                                     3 => {t_list,{t_atom,[a]},nil}}}}]}}.
    {test,is_eq_exact,
          {f,1039},
          [{tr,{x,0},
               {t_tuple,3,true,
                        #{1 => {t_atom,[four]},
                          2 => {t_atom,[a]},
                          3 => {t_list,{t_atom,[a]},nil}}}},
           {literal,{four,a,[]}}]}.
    {move,{atom,a5},{x,1}}.
    {move,{literal,{a,b}},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1815}]}.
    {call,2,{f,1044}}. % no_partition_1/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_atom,[five]},
                                     2 => {t_atom,[a]},
                                     3 => {t_atom,[b]}}}}]}}.
    {move,{atom,a1},{x,1}}.
    {move,{literal,<<"string">>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1817}]}.
    {call,2,{f,1052}}. % no_partition_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[one]}}]}}.
    {move,{atom,a2},{x,1}}.
    {move,{literal,<<"string">>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1818}]}.
    {call,2,{f,1052}}. % no_partition_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[two]}}]}}.
    {move,{atom,a2},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1819}]}.
    {call,2,{f,1052}}. % no_partition_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[two]}}]}}.
    {move,{atom,a2},{x,1}}.
    {move,{atom,a},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1820}]}.
    {call,2,{f,1052}}. % no_partition_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[two]}}]}}.
    {move,{atom,a3},{x,1}}.
    {move,{atom,undefined},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1821}]}.
    {call,2,{f,1052}}. % no_partition_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[three]}}]}}.
    {move,{atom,a4},{x,1}}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1822}]}.
    {call,2,{f,1052}}. % no_partition_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[four]}}]}}.
    {move,{atom,a5},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1823}]}.
    {call,2,{f,1052}}. % no_partition_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[five]}}]}}.
    {move,{atom,a6},{x,1}}.
    {move,{float,42.0},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1824}]}.
    {call,2,{f,1052}}. % no_partition_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[six]}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1039}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1814}]}.
    {badmatch,{x,0}}.
  {label,1040}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1812}]}.
    {badmatch,{x,0}}.
  {label,1041}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1811}]}.
    {badmatch,{x,0}}.
  {label,1042}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1810}]}.
    {badmatch,{x,0}}.


{function, no_partition_1, 2, 1044}.
  {label,1043}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1827}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,no_partition_1},2}.
  {label,1044}.
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
          {f,1046},
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
                {f,1048},
                {list,[{atom,a1},{f,1045},{atom,a2},{f,1047}]}}.
  {label,1045}.
    {move,{atom,one},{x,0}}.
    return.
  {label,1046}.
    {test,is_eq_exact,
          {f,1048},
          [{tr,{x,1},{t_atom,[a1,a2,a3,a4,a5]}},{atom,a2}]}.
  {label,1047}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,two},{x,0}]}}.
    return.
  {label,1048}.
    {test,is_nonempty_list,{f,1049},[{x,0}]}.
    {get_tl,{x,0},{x,2}}.
    {test,is_eq_exact,{f,1043},[{tr,{x,1},{t_atom,[a1,a3,a4,a5]}},{atom,a4}]}.
    {test_heap,4,3}.
    {put_tuple2,{x,0},{list,[{atom,four},{atom,a},{x,2}]}}.
    return.
  {label,1049}.
    {test,is_tuple,
          {f,1050},
          [{tr,{x,0},
               {t_union,{t_atom,[a,undefined]},
                        none,none,
                        [{{2,{t_atom,[a]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                        {t_bitstring,16,false}}}]}.
    {test,is_eq_exact,{f,1043},[{tr,{x,1},{t_atom,[a1,a3,a4,a5]}},{atom,a5}]}.
    {move,{literal,{five,a,b}},{x,0}}.
    return.
  {label,1050}.
    {test,is_eq_exact,
          {f,1043},
          [{tr,{x,0},
               {t_union,{t_atom,[a,undefined]},
                        none,none,none,
                        {t_bitstring,16,false}}},
           {atom,undefined}]}.
    {test,is_eq_exact,{f,1043},[{tr,{x,1},{t_atom,[a1,a3,a4,a5]}},{atom,a3}]}.
    {move,{atom,three},{x,0}}.
    return.


{function, no_partition_2, 2, 1052}.
  {label,1051}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1838}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,no_partition_2},2}.
  {label,1052}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[a,undefined]},
                                   nil,
                                   {t_number,{42,42}},
                                   none,
                                   {t_bitstring,16,false}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,any}}]}}.
    {test,is_eq_exact,
          {f,1054},
          [{tr,{x,0},
               {t_union,{t_atom,[a,undefined]},
                        nil,
                        {t_number,{42,42}},
                        none,
                        {t_bitstring,16,false}}},
           {literal,<<"string">>}]}.
    {select_val,{tr,{x,1},{t_atom,any}},
                {f,1056},
                {list,[{atom,a1},{f,1053},{atom,a2},{f,1055}]}}.
  {label,1053}.
    {move,{atom,one},{x,0}}.
    return.
  {label,1054}.
    {test,is_eq_exact,{f,1056},[{tr,{x,1},{t_atom,any}},{atom,a2}]}.
  {label,1055}.
    {move,{atom,two},{x,0}}.
    return.
  {label,1056}.
    {test,is_atom,
          {f,1057},
          [{tr,{x,0},
               {t_union,{t_atom,[a,undefined]},
                        nil,
                        {t_number,{42,42}},
                        none,
                        {t_bitstring,16,false}}}]}.
    {test,is_eq_exact,
          {f,1051},
          [{tr,{x,0},{t_atom,[a,undefined]}},{atom,undefined}]}.
    {test,is_eq_exact,{f,1051},[{tr,{x,1},{t_atom,any}},{atom,a3}]}.
    {move,{atom,three},{x,0}}.
    return.
  {label,1057}.
    {test,is_float,
          {f,1058},
          [{tr,{x,0},
               {t_union,none,nil,
                        {t_number,{42,42}},
                        none,
                        {t_bitstring,16,false}}}]}.
    {test,is_eq_exact,{f,1051},[{tr,{x,1},{t_atom,any}},{atom,a6}]}.
    {move,{atom,six},{x,0}}.
    return.
  {label,1058}.
    {test,is_integer,
          {f,1059},
          [{tr,{x,0},
               {t_union,none,nil,
                        {t_integer,{42,42}},
                        none,
                        {t_bitstring,16,false}}}]}.
    {test,is_eq_exact,{f,1051},[{tr,{x,1},{t_atom,any}},{atom,a4}]}.
    {move,{atom,four},{x,0}}.
    return.
  {label,1059}.
    {test,is_nil,
          {f,1051},
          [{tr,{x,0},{t_union,none,nil,none,none,{t_bitstring,16,false}}}]}.
    {test,is_eq_exact,{f,1051},[{tr,{x,1},{t_atom,any}},{atom,a5}]}.
    {move,{atom,five},{x,0}}.
    return.


{function, calling_a_binary, 1, 1061}.
  {label,1060}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1851}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,calling_a_binary},1}.
  {label,1061}.
    {test,is_list,{f,1060},[{x,0}]}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,nil,{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1852}]}.
    {call,2,{f,1067}}. % call_binary/2
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {'catch',{y,1},{f,1062}}.
    {move,nil,{x,1}}.
    {move,{literal,<<1>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1853}]}.
    {call,2,{f,1067}}. % call_binary/2
    {'%',{var_info,{x,0},[{type,nil}]}}.
  {label,1062}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,1065},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1065},[{x,1},2,{atom,badarg}]}.
    {'catch',{y,0},{f,1063}}.
    {move,nil,{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_dialyzer_SUITE.erl",1854}]}.
    {call,2,{f,1067}}. % call_binary/2
    {'%',{var_info,{x,0},[{type,nil}]}}.
  {label,1063}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1064},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1064},[{x,1},2,{atom,badarg}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,1064}.
    {line,[{scope,[0]},{location,"bs_match_dialyzer_SUITE.erl",1854}]}.
    {badmatch,{x,0}}.
  {label,1065}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",1853}]}.
    {badmatch,{x,0}}.


{function, call_binary, 2, 1067}.
  {label,1066}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1857}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,call_binary},2}.
  {label,1067}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,nil}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {bs_match,{f,1068},{x,0},{commands,[{ensure_exactly,0}]}}.
    {move,{x,1},{x,0}}.
    return.
  {label,1068}.
    {bs_match,{f,1069},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,1,{literal,[]},8,1,{x,1}},
                         {get_tail,2,1,{x,0}}]}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1860}]}.
    {bs_create_bin,{f,0},
                   0,2,8,
                   {x,1},
                   {list,[{atom,append},
                          1,8,nil,nil,
                          {atom,all},
                          {atom,integer},
                          2,1,nil,
                          {tr,{x,1},{t_integer,{0,255}}},
                          {integer,8}]}}.
    {allocate,0,2}.
    {swap,{x,0},{x,1}}.
    {call_fun2,{atom,unsafe},1,{tr,{x,1},{t_bitstring,8,false}}}.
    {deallocate,0}.
    return.
  {label,1069}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {jump,{f,1066}}.


{function, binary_in_map, 1, 1071}.
  {label,1070}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1862}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,binary_in_map},1}.
  {label,1071}.
    {test,is_list,{f,1070},[{x,0}]}.
    {allocate,4,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3}]}}.
    {move,{literal,#{key => <<"*">>}},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1863}]}.
    {call,1,{f,1081}}. % match_binary_in_map/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,3},{f,1072}}.
    {move,{literal,#{key => 1}},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1865}]}.
    {call,1,{f,1081}}. % match_binary_in_map/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1072}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,1079},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1079},[{x,1}]}.
    {test,test_arity,{f,1079},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,1079},[{x,1},2,{atom,badmatch}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_map,{f,1079},[{x,1}]}.
    {get_map_elements,{f,1079},
                      {tr,{x,1},{t_map,any,any}},
                      {list,[{atom,key},{x,1}]}}.
    {test,is_eq_exact,{f,1079},[{x,1},{integer,1}]}.
    {'catch',{y,2},{f,1073}}.
    {move,{literal,#{key => <<3,255>>}},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",1867}]}.
    {call,1,{f,1081}}. % match_binary_in_map/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1073}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,1078},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1078},[{x,1}]}.
    {test,test_arity,{f,1078},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,1078},[{x,1},2,{atom,badmatch}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_map,{f,1078},[{x,1}]}.
    {get_map_elements,{f,1078},
                      {tr,{x,1},{t_map,any,any}},
                      {list,[{atom,key},{x,1}]}}.
    {test,is_eq_exact,{f,1078},[{x,1},{literal,<<3,255>>}]}.
    {'catch',{y,1},{f,1074}}.
    {move,{literal,#{key => <<1>>}},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",1869}]}.
    {call,1,{f,1081}}. % match_binary_in_map/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1074}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,1077},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1077},[{x,1}]}.
    {test,test_arity,{f,1077},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,1077},[{x,1},2,{atom,badmatch}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_map,{f,1077},[{x,1}]}.
    {get_map_elements,{f,1077},
                      {tr,{x,1},{t_map,any,any}},
                      {list,[{atom,key},{x,1}]}}.
    {test,is_eq_exact,{f,1077},[{x,1},{literal,<<1>>}]}.
    {'catch',{y,0},{f,1075}}.
    {move,{atom,not_a_map},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",1871}]}.
    {call,1,{f,1081}}. % match_binary_in_map/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1075}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1076},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1076},[{x,1}]}.
    {test,test_arity,{f,1076},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1076},[{x,1},{literal,{badmatch,not_a_map}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,4}.
    return.
  {label,1076}.
    {line,[{scope,[0]},{location,"bs_match_dialyzer_SUITE.erl",1870}]}.
    {badmatch,{x,0}}.
  {label,1077}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",1868}]}.
    {badmatch,{x,0}}.
  {label,1078}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",1866}]}.
    {badmatch,{x,0}}.
  {label,1079}.
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",1864}]}.
    {badmatch,{x,0}}.


{function, match_binary_in_map, 1, 1081}.
  {label,1080}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1874}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,match_binary_in_map},1}.
  {label,1081}.
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
        {f,1082},
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
        {f,1082},
        {tr,{x,0},
            {t_map,
                {t_atom,[key]},
                {t_union,none,none,
                    {t_integer,{1,1}},
                    none,
                    {t_bitstring,8,false}}}},
        {list,[{atom,key},{x,1}]}}.
    {test,is_eq_exact,
          {f,1082},
          [{tr,{x,1},
               {t_union,none,none,
                        {t_integer,{1,1}},
                        none,
                        {t_bitstring,8,false}}},
           {literal,<<"*">>}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1082}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1877}]}.
    {badmatch,{x,0}}.


{function, match_string_opt, 1, 1084}.
  {label,1083}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1881}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,match_string_opt},1}.
  {label,1084}.
    {test,is_list,{f,1083},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,{<<1>>,{v,<<1,2,3>>}}},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1883}]}.
    {call,1,{f,1087}}. % do_match_string_opt/1
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
        {f,1085},
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
  {label,1085}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1882}]}.
    {badmatch,{x,0}}.


{function, do_match_string_opt, 1, 1087}.
  {label,1086}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1886}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,do_match_string_opt},1}.
  {label,1087}.
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
          {f,1086},
          [{tr,{x,1},{t_bitstring,8,false}},{literal,<<1>>}]}.
    {test_heap,4,1}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {put_tuple2,{x,0},{list,[{atom,x},{x,1},{x,0}]}}.
    return.


{function, select_on_integer, 1, 1089}.
  {label,1088}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1889}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,select_on_integer},1}.
  {label,1089}.
    {test,is_list,{f,1088},[{x,0}]}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1890}]}.
    {call,1,{f,1099}}. % do_select_on_integer/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,none,
                                   {t_integer,{0,127}},
                                   none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,1097},
          [{tr,{x,0},
               {t_union,none,none,
                        {t_integer,{0,127}},
                        none,
                        {t_bitstring,8,false}}},
           {integer,42}]}.
    {move,{literal,<<128,97,98,99>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",1891}]}.
    {call,1,{f,1099}}. % do_select_on_integer/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,none,
                                   {t_integer,{0,127}},
                                   none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,1096},
          [{tr,{x,0},
               {t_union,none,none,
                        {t_integer,{0,127}},
                        none,
                        {t_bitstring,8,false}}},
           {literal,<<"abc">>}]}.
    {'catch',{y,2},{f,1090}}.
    {move,{literal,<<0:1>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",1893}]}.
    {call,1,{f,1099}}. % do_select_on_integer/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,none,
                                   {t_integer,{0,127}},
                                   none,
                                   {t_bitstring,8,false}}}]}}.
  {label,1090}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,1095},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,1},{f,1091}}.
    {move,{literal,<<1:1>>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_dialyzer_SUITE.erl",1894}]}.
    {call,1,{f,1099}}. % do_select_on_integer/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,none,
                                   {t_integer,{0,127}},
                                   none,
                                   {t_bitstring,8,false}}}]}}.
  {label,1091}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,1094},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,0},{f,1092}}.
    {move,{literal,<<0,0>>},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_dialyzer_SUITE.erl",1895}]}.
    {call,1,{f,1099}}. % do_select_on_integer/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,none,
                                   {t_integer,{0,127}},
                                   none,
                                   {t_bitstring,8,false}}}]}}.
  {label,1092}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1093},[{x,0},2,{atom,'EXIT'}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,3}.
    return.
  {label,1093}.
    {line,[{scope,[0]},{location,"bs_match_dialyzer_SUITE.erl",1895}]}.
    {badmatch,{x,0}}.
  {label,1094}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",1894}]}.
    {badmatch,{x,0}}.
  {label,1095}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",1893}]}.
    {badmatch,{x,0}}.
  {label,1096}.
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",1891}]}.
    {badmatch,{x,0}}.
  {label,1097}.
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",1890}]}.
    {badmatch,{x,0}}.


{function, do_select_on_integer, 1, 1099}.
  {label,1098}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1899}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,do_select_on_integer},1}.
  {label,1099}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,1,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,1101},
              {x,0},
              {commands,[{ensure_at_least,1,1},
                         {integer,2,{literal,[]},1,1,{x,2}}]}}.
    {test,is_eq_exact,{f,1100},[{x,2},{integer,0}]}.
    {bs_match,{f,1101},
              {x,0},
              {commands,[{ensure_exactly,7},
                         {integer,2,{literal,[]},7,1,{x,2}}]}}.
    {move,{x,2},{x,0}}.
    return.
  {label,1100}.
    {bs_match,{f,1101},
              {x,0},
              {commands,[{ensure_at_least,7,8},
                         {skip,7},
                         {get_tail,1,8,{x,0}}]}}.
    return.
  {label,1101}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,1098}}.


{function, map_and_binary, 1, 1103}.
  {label,1102}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1907}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,map_and_binary},1}.
  {label,1103}.
    {allocate,0,0}.
    {move,{literal,<<"10:37am">>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1908}]}.
    {call,1,{f,1108}}. % do_map_and_binary/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_bitstring,8,false},
                                     2 => {t_bitstring,8,false},
                                     3 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
          {f,1106},
          [{tr,{x,0},
               {t_tuple,3,true,
                        #{1 => {t_bitstring,8,false},
                          2 => {t_bitstring,8,false},
                          3 => {t_bitstring,8,false}}}},
           {literal,{<<"10">>,<<"37">>,<<"am">>}}]}.
    {move,{literal,#{time => "noon"}},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1910}]}.
    {call,1,{f,1108}}. % do_map_and_binary/1
    {'%',{var_info,{x,0},[{type,{t_tuple,2,false,#{}}}]}}.
    {test,is_tagged_tuple,
          {f,1105},
          [{tr,{x,0},{t_tuple,2,false,#{}}},2,{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,1105},[{x,1},{literal,#{time => "noon"}}]}.
    {move,{literal,#{hour => 8,min => 42}},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1912}]}.
    {call,1,{f,1108}}. % do_map_and_binary/1
    {'%',{var_info,{x,0},[{type,{t_tuple,2,false,#{}}}]}}.
    {test,test_arity,{f,1104},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1104},[{x,1},{integer,8}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,1104},[{x,1},{integer,42}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,{f,1104},[{x,1},{literal,#{hour => 8,min => 42}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1104}.
    {badmatch,{x,0}}.
  {label,1105}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1910}]}.
    {badmatch,{x,0}}.
  {label,1106}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1908}]}.
    {badmatch,{x,0}}.


{function, do_map_and_binary, 1, 1108}.
  {label,1107}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1915}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,do_map_and_binary},1}.
  {label,1108}.
    {'%',{var_info,{x,0},[{type,other},accepts_match_context]}}.
    {test,bs_start_match3,{f,1110},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {bs_match,{f,1109},
              {x,1},
              {commands,[{ensure_at_least,40,8},
                         {binary,2,{literal,[]},2,8,{x,2}},
                         {'=:=',nil,8,58},
                         {binary,3,{literal,[]},2,8,{x,0}},
                         {get_tail,3,8,{x,1}}]}}.
    {test_heap,4,3}.
    {put_tuple2,{x,0},{list,[{x,2},{x,0},{x,1}]}}.
    return.
  {label,1109}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,1107}}.
  {label,1110}.
    {test,is_map,{f,1107},[{tr,{x,0},other}]}.
    {test,has_map_fields,{f,1111},{x,0},{list,[{atom,time}]}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,ok},{x,0}]}}.
    return.
  {label,1111}.
    {get_map_elements,{f,1107},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{atom,min},{x,2},{atom,hour},{x,1}]}}.
    {test_heap,4,3}.
    {put_tuple2,{x,0},{list,[{x,1},{x,2},{x,0}]}}.
    return.


{function, unsafe_branch_caching, 1, 1113}.
  {label,1112}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1926}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,unsafe_branch_caching},1}.
  {label,1113}.
    {allocate,0,0}.
    {move,{literal,<<42,1>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1927}]}.
    {call,1,{f,1120}}. % do_unsafe_branch_caching/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,1118},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<>>}]}.
    {move,{literal,<<42,2>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1928}]}.
    {call,1,{f,1120}}. % do_unsafe_branch_caching/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,1117},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<>>}]}.
    {move,{literal,<<42,3>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1929}]}.
    {call,1,{f,1120}}. % do_unsafe_branch_caching/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,1116},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<>>}]}.
    {move,{literal,<<42,3,17,18>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1930}]}.
    {call,1,{f,1120}}. % do_unsafe_branch_caching/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,1115},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<17,18>>}]}.
    {move,{literal,<<1,3,42,2>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1931}]}.
    {call,1,{f,1120}}. % do_unsafe_branch_caching/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,1114},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1114}.
    {badmatch,{x,0}}.
  {label,1115}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1930}]}.
    {badmatch,{x,0}}.
  {label,1116}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1929}]}.
    {badmatch,{x,0}}.
  {label,1117}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1928}]}.
    {badmatch,{x,0}}.
  {label,1118}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1927}]}.
    {badmatch,{x,0}}.


{function, do_unsafe_branch_caching, 1, 1120}.
  {label,1119}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1935}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,do_unsafe_branch_caching},
               1}.
  {label,1120}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,1125},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,1,{literal,[]},8,1,{x,1}}]}}.
    {bs_get_position,{x,0},{x,2},2}.
    {bs_match,{f,1124},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}},
                         {get_tail,3,1,{x,0}}]}}.
    {select_val,{tr,{x,2},{t_integer,{0,255}}},
                {f,1122},
                {list,[{integer,1},{f,1121},{integer,2},{f,1121}]}}.
  {label,1121}.
    {move,{literal,<<>>},{x,0}}.
  {label,1122}.
    {test,is_eq_exact,{f,1123},[{tr,{x,1},{t_integer,{0,255}}},{integer,1}]}.
    {call_only,1,{f,1120}}. % do_unsafe_branch_caching/1
  {label,1123}.
    return.
  {label,1124}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1936}]}.
    {badmatch,{x,0}}.
  {label,1125}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,1119}}.


{function, bad_literals, 1, 1127}.
  {label,1126}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1948}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,bad_literals},1}.
  {label,1127}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{integer,1114116},{x,1}}.
    {move,{integer,1114108},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1956}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {test_heap,10,1}.
    {put_list,{integer,2},{x,0},{x,0}}.
    {put_list,{integer,1},{x,0},{x,0}}.
    {put_list,{integer,0},{x,0},{x,0}}.
    {put_list,{integer,-1},{x,0},{x,0}}.
    {put_list,{integer,-100},{x,0},{x,0}}.
    {call,1,{f,1895}}. % '-bad_literals/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_cons,any,nil}}]}}.
    {move,{x,0},{y,1}}.
    {move,{integer,8},{x,1}}.
    {move,{integer,-2},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1953}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{y,1},{x,1}}.
    {init_yregs,{list,[{y,1}]}}.
    {call,2,{f,1888}}. % '-bad_literals/1-lc$^1/1-1-'/2
    {'%',{var_info,{x,0},[{type,{t_cons,any,nil}}]}}.
    {move,{x,0},{y,1}}.
    {move,{integer,8},{x,1}}.
    {move,{integer,-8},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1951}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{y,1},{x,1}}.
    {init_yregs,{list,[{y,1}]}}.
    {call,2,{f,1881}}. % '-bad_literals/1-lc$^3/1-3-'/2
    {'%',{var_info,{x,0},[{type,{t_cons,any,nil}}]}}.
    {move,{x,0},{y,1}}.
    {move,{atom,bs_match_dialyzer_SUITE_bad_literals},{x,0}}.
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
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1957}]}.
    {call_ext,1,{extfunc,merl,tree,1}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1962}]}.
    {call_ext,1,{extfunc,merl,print,1}}.
    {move,{atom,bs_match_dialyzer_SUITE},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1963}]}.
    {call_ext,1,{extfunc,test_lib,opt_opts,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1964}]}.
    {call_ext,2,{extfunc,merl,compile_and_load,2}}.
    {test,is_tagged_tuple,{f,1132},[{x,0},2,{atom,ok}]}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1965}]}.
    {call_ext,0,{extfunc,bs_match_dialyzer_SUITE_bad_literals,f,0}}.
    {'catch',{y,1},{f,1128}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1967}]}.
    {call,0,{f,1134}}. % bad_literals_1/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1128}.
    {catch_end,{y,1}}.
    {test,is_eq_exact,{f,1131},[{x,0},{literal,{'EXIT',<<"*">>}}]}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",1968}]}.
    {call,1,{f,1136}}. % bad_literals_2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[no_match]}}]}}.
    {move,{integer,8},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",1970}]}.
    {call,1,{f,1776}}. % id/1
    {'catch',{y,0},{f,1129}}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",1971}]}.
    {badmatch,{literal,<<"ÿ">>}}.
  {label,1129}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1130},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1130},[{x,1}]}.
    {test,test_arity,{f,1130},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,1130},[{x,1},2,{atom,badmatch}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,1130}.
    {line,[{scope,[0]},{location,"bs_match_dialyzer_SUITE.erl",1971}]}.
    {badmatch,{x,0}}.
  {label,1131}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",1967}]}.
    {badmatch,{x,0}}.
  {label,1132}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",1964}]}.
    {badmatch,{x,0}}.


{function, bad_literals_1, 0, 1134}.
  {label,1133}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1974}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,bad_literals_1},0}.
  {label,1134}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1978}]}.
    {call_ext_only,1,{extfunc,erlang,exit,1}}.


{function, bad_literals_2, 1, 1136}.
  {label,1135}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1984}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,bad_literals_2},1}.
  {label,1136}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {move,{atom,no_match},{x,0}}.
    return.


{function, signed_lit_match, 2, 1138}.
  {label,1137}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1991}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,signed_lit_match},2}.
  {label,1138}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,3}}}]}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1992}]}.
    {bs_create_bin,{f,0},
                   0,2,1,
                   {x,2},
                   {list,[{atom,integer},
                          1,1,nil,
                          {x,0},
                          {tr,{x,1},{t_integer,{0,3}}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,2}}.
    {test,bs_get_integer2,
          {f,1139},
          3,
          [{tr,{x,2},{t_bs_context,1}},
           {tr,{x,1},{t_integer,{0,3}}},
           1,
           {field_flags,[{anno,[1993,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         signed,big]}],
          {x,3}}.
    {bs_match,{f,1139},{x,2},{commands,[{ensure_exactly,0}]}}.
    {test,is_eq_exact,{f,1139},[{tr,{x,3},{t_integer,{-4,3}}},{x,0}]}.
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
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1994}]}.
    {call_ext_last,1,{extfunc,merl,tree,1},3}.
  {label,1139}.
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
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1996}]}.
    {call_ext_last,1,{extfunc,merl,tree,1},3}.


{function, unsigned_lit_match, 2, 1141}.
  {label,1140}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2004}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,unsigned_lit_match},2}.
  {label,1141}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,2}}}]}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2005}]}.
    {bs_create_bin,{f,0},
                   0,2,1,
                   {x,2},
                   {list,[{atom,integer},
                          1,1,nil,
                          {x,0},
                          {tr,{x,1},{t_integer,{0,2}}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,2}}.
    {test,bs_get_integer2,
          {f,1142},
          3,
          [{tr,{x,2},{t_bs_context,1}},
           {tr,{x,1},{t_integer,{0,2}}},
           1,
           {field_flags,[{anno,[2006,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_match,{f,1142},{x,2},{commands,[{ensure_exactly,0}]}}.
    {test,is_eq_exact,{f,1142},[{tr,{x,3},{t_integer,{0,3}}},{x,0}]}.
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
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2007}]}.
    {call_ext_last,1,{extfunc,merl,tree,1},3}.
  {label,1142}.
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
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2009}]}.
    {call_ext_last,1,{extfunc,merl,tree,1},3}.


{function, unicode_match, 1, 1144}.
  {label,1143}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2017}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,unicode_match},1}.
  {label,1144}.
    {allocate,5,1}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{x,0},{y,3}}.
    {'try',{y,4},{f,1145}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2018}]}.
    {bs_create_bin,{f,0},
                   0,1,8,
                   {x,0},
                   {list,[{atom,utf8},1,0,nil,{x,0},{atom,undefined}]}}.
    {try_end,{y,4}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_utf8,
          {f,1147},
          2,
          [{tr,{x,1},{t_bs_context,8}},
           {field_flags,[{anno,[2019,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,1147},{x,1},{commands,[{ensure_exactly,0}]}}.
    {test,is_eq_exact,{f,1147},[{tr,{x,2},{t_integer,{0,1114111}}},{y,3}]}.
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
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",2020}]}.
    {call_ext_last,1,{extfunc,merl,tree,1},5}.
  {label,1145}.
    {try_case,{y,4}}.
    {test,is_eq_exact,
          {f,1146},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,error}]}.
    {test,is_eq_exact,{f,1146},[{x,1},{atom,badarg}]}.
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
    {line,[{scope,[0]},{location,"bs_match_dialyzer_SUITE.erl",2025}]}.
    {call_ext_last,1,{extfunc,merl,tree,1},1}.
  {label,1146}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.
  {label,1147}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",2018}]}.
    {try_case_end,{x,0}}.


{function, good_literals, 1, 1149}.
  {label,1148}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2035}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,good_literals},1}.
  {label,1149}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{integer,64},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2036}]}.
    {call,1,{f,1776}}. % id/1
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2039}]}.
    {bs_create_bin,{f,0},
                   0,1,1,
                   {x,1},
                   {list,[{atom,integer},1,1,nil,{integer,42},{x,0}]}}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {call,1,{f,1776}}. % id/1
    {test,bs_start_match3,{f,1152},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,1152},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {y,0},
           1,
           {field_flags,[{anno,[2039,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,1152},
          [{tr,{x,2},{t_integer,{0,'+inf'}}},{integer,42}]}.
    {bs_match,{f,1152},{x,1},{commands,[{ensure_exactly,0}]}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2040}]}.
    {bs_create_bin,{f,0},
                   0,0,1,
                   {x,0},
                   {list,[{atom,float},1,1,nil,{integer,42},{y,0}]}}.
    {call,1,{f,1776}}. % id/1
    {test,bs_start_match3,{f,1151},1,[{x,0}],{x,1}}.
    {test,bs_get_float2,
          {f,1151},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {y,0},
           1,
           {field_flags,[{anno,[2040,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,1151},[{tr,{x,2},{t_float,any}},{float,42.0}]}.
    {bs_match,{f,1151},{x,1},{commands,[{ensure_exactly,0}]}}.
    {trim,1,0}.
    {move,{literal,<<"Êþ¾ï">>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2043}]}.
    {call,1,{f,1776}}. % id/1
    {test,is_eq_exact,{f,1150},[{x,0},{literal,<<"Êþ¾ï">>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1150}.
    {badmatch,{x,0}}.
  {label,1151}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2040}]}.
    {badmatch,{x,0}}.
  {label,1152}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2039}]}.
    {badmatch,{x,0}}.


{function, constant_propagation, 1, 1154}.
  {label,1153}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2046}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,constant_propagation},1}.
  {label,1154}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,<<5>>},{x,1}}.
    {move,{atom,a},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2047}]}.
    {call,2,{f,1161}}. % constant_propagation_a/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,1159},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<5>>}]}.
    {'catch',{y,0},{f,1155}}.
    {move,{literal,<<5>>},{x,1}}.
    {move,{atom,b},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",2048}]}.
    {call,2,{f,1161}}. % constant_propagation_a/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1155}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1158},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1158},[{x,1}]}.
    {test,test_arity,{f,1158},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1158},[{x,1},{literal,{case_clause,b}}]}.
    {move,{literal,<<1,2>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_dialyzer_SUITE.erl",2049}]}.
    {call,1,{f,1165}}. % constant_propagation_b/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,65535}}}]}}.
    {test,is_eq_exact,
          {f,1157},
          [{tr,{x,0},{t_integer,{0,65535}}},{integer,258}]}.
    {line,[{scope,[0]},{location,"bs_match_dialyzer_SUITE.erl",2050}]}.
    {call,0,{f,1168}}. % constant_propagation_c/0
    {'%',{var_info,{x,0},
                   [{type,{t_fun,1,
                                 {'-constant_propagation_c/0-fun-0-',1},
                                 {t_integer,{0,65535}}}}]}}.
    {move,{literal,<<1,3>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_dialyzer_SUITE.erl",2051}]}.
    {call,1,{f,1877}}. % '-constant_propagation_c/0-fun-0-'/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,65535}}}]}}.
    {test,is_eq_exact,
          {f,1156},
          [{tr,{x,0},{t_integer,{0,65535}}},{integer,259}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,1156}.
    {badmatch,{x,0}}.
  {label,1157}.
    {line,[{scope,[0]},{location,"bs_match_dialyzer_SUITE.erl",2049}]}.
    {badmatch,{x,0}}.
  {label,1158}.
    {line,[{scope,[0]},{location,"bs_match_dialyzer_SUITE.erl",2048}]}.
    {badmatch,{x,0}}.
  {label,1159}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",2047}]}.
    {badmatch,{x,0}}.


{function, constant_propagation_a, 2, 1161}.
  {label,1160}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2054}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,constant_propagation_a},2}.
  {label,1161}.
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,{f,1163},[{tr,{x,0},{t_atom,[a,b]}},{atom,a}]}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,0}}.
    {bs_match,{f,1162},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,is_eq_exact,{f,1162},[{tr,{x,2},{t_integer,{0,255}}},{integer,5}]}.
    {bs_match,{f,1162},{x,0},{commands,[{ensure_exactly,0}]}}.
    {move,{x,1},{x,0}}.
    return.
  {label,1162}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2058}]}.
    {badmatch,{x,1}}.
  {label,1163}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2055}]}.
    {case_end,{atom,b}}.


{function, constant_propagation_b, 1, 1165}.
  {label,1164}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2060}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,constant_propagation_b},1}.
  {label,1165}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,16,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,1166},
              {x,0},
              {commands,[{ensure_exactly,16},
                         {integer,2,{literal,[]},16,1,{x,2}}]}}.
    {move,{x,2},{x,0}}.
    return.
  {label,1166}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2062}]}.
    {badmatch,{x,0}}.


{function, constant_propagation_c, 0, 1168}.
  {label,1167}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2065}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,constant_propagation_c},0}.
  {label,1168}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1877},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_integer,{0,65535}}}]}}.
    return.


{function, parse_xml, 1, 1170}.
  {label,1169}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2072}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,parse_xml},1}.
  {label,1170}.
    {allocate,0,0}.
    {move,{literal,<<"<?xmlX">>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2073}]}.
    {call,1,{f,1174}}. % do_parse_xml/1
    {test,is_eq_exact,{f,1172},[{x,0},{literal,<<"<?xmlX">>}]}.
    {move,{literal,<<"<?xml ">>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2074}]}.
    {call,1,{f,1174}}. % do_parse_xml/1
    {test,is_eq_exact,{f,1171},[{x,0},{literal,<<" ">>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1171}.
    {badmatch,{x,0}}.
  {label,1172}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2073}]}.
    {badmatch,{x,0}}.


{function, do_parse_xml, 1, 1174}.
  {label,1173}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2077}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,do_parse_xml},1}.
  {label,1174}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,16,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,1177},
              {x,0},
              {commands,[{ensure_at_least,40,1},
                         {'=:=',nil,31,505396278},
                         {'=:=',nil,9,364}]}}.
    {allocate,3,2}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
    {bs_get_position,{x,0},{y,0},1}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2081}]}.
    {call,1,{f,1179}}. % is_next_char_whitespace/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1175},[{x,0},{atom,true}]}.
    {bs_set_position,{y,2},{y,0}}.
    {bs_get_tail,{y,2},{x,0},0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2085}]}.
    {call,1,{f,1776}}. % id/1
    {jump,{f,1176}}.
  {label,1175}.
    {bs_set_position,{y,2},{y,1}}.
    {bs_get_tail,{y,2},{x,0},0}.
  {label,1176}.
    {call_last,1,{f,1776},3}. % id/1
  {label,1177}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,1173}}.


{function, is_next_char_whitespace, 1, 1179}.
  {label,1178}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2089}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,is_next_char_whitespace},
               1}.
  {label,1179}.
    {'%',{var_info,{x,0},[{type,{t_bs_context,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,resume},1,{x,0},{x,0}}.
    {test,bs_get_utf8,
          {f,1180},
          1,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[2089,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {bif,'=:=',{f,0},[{tr,{x,1},{t_integer,{0,1114111}}},{integer,32}],{x,0}}.
    return.
  {label,1180}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,1178}}.


{function, get_payload, 1, 1182}.
  {label,1181}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2096}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,get_payload},1}.
  {label,1182}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,{ext_header,17,<<0,0,0,0,13,117>>}},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2097}]}.
    {call,1,{f,1187}}. % do_get_payload/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {test,is_eq_exact,
          {f,1185},
          [{tr,{x,0},{t_bitstring,16,false}},{literal,<<0,0,0,0,13,117>>}]}.
    {'catch',{y,0},{f,1183}}.
    {move,{literal,{ext_header,17,undefined}},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",2098}]}.
    {call,1,{f,1187}}. % do_get_payload/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
  {label,1183}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1184},[{x,0},2,{atom,'EXIT'}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,1184}.
    {line,[{scope,[0]},{location,"bs_match_dialyzer_SUITE.erl",2098}]}.
    {badmatch,{x,0}}.
  {label,1185}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",2097}]}.
    {badmatch,{x,0}}.


{function, do_get_payload, 1, 1187}.
  {label,1186}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2101}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,do_get_payload},1}.
  {label,1187}.
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
    {test,bs_start_match3,{f,1188},1,[{x,0}],{x,1}}.
    {bs_match,{f,1188},{x,1},{commands,[{ensure_exactly,48}]}}.
    return.
  {label,1188}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2104}]}.
    {badmatch,{x,0}}.


{function, escape, 1, 1190}.
  {label,1189}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2107}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,escape},1}.
  {label,1190}.
    {allocate,0,0}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2108}]}.
    {call,2,{f,1197}}. % escape/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,1195},
          [{tr,{x,0},{t_integer,{0,'+inf'}}},{integer,0}]}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<128>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2109}]}.
    {call,2,{f,1197}}. % escape/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,1194},
          [{tr,{x,0},{t_integer,{0,'+inf'}}},{integer,1}]}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<128,255>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2110}]}.
    {call,2,{f,1197}}. % escape/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,1193},
          [{tr,{x,0},{t_integer,{0,'+inf'}}},{integer,2}]}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2111}]}.
    {call,2,{f,1197}}. % escape/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,1192},
          [{tr,{x,0},{t_integer,{0,'+inf'}}},{integer,42}]}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<"*\b">>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2112}]}.
    {call,2,{f,1197}}. % escape/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,1191},
          [{tr,{x,0},{t_integer,{0,'+inf'}}},{integer,50}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1191}.
    {badmatch,{x,0}}.
  {label,1192}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2111}]}.
    {badmatch,{x,0}}.
  {label,1193}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2110}]}.
    {badmatch,{x,0}}.
  {label,1194}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2109}]}.
    {badmatch,{x,0}}.
  {label,1195}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2108}]}.
    {badmatch,{x,0}}.


{function, escape, 2, 1197}.
  {label,1196}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2115}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,escape},2}.
  {label,1197}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,'+inf'}}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,1199},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,is_ge,{f,1198},[{tr,{x,2},{t_integer,{0,255}}},{integer,127}]}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2116}]}.
    {gc_bif,'+',{f,0},2,[{tr,{x,1},{t_integer,{0,'+inf'}}},{integer,1}],{x,1}}.
    {call_only,2,{f,1197}}. % escape/2
  {label,1198}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2118}]}.
    {gc_bif,'+',
            {f,0},
            3,
            [{tr,{x,1},{t_integer,{0,'+inf'}}},{tr,{x,2},{t_integer,{0,126}}}],
            {x,1}}.
    {call_only,2,{f,1197}}. % escape/2
  {label,1199}.
    {move,{x,1},{x,0}}.
    return.


{function, num_slots_different, 1, 1201}.
  {label,1200}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2123}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,num_slots_different},1}.
  {label,1201}.
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
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2131}]}.
    {call,1,{f,1873}}. % '-num_slots_different/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {'catch',{y,3},{f,1202}}.
    {move,{literal,<<"default">>},{x,1}}.
    {move,{literal,<<"Remove">>},{x,2}}.
    {move,{literal,<<"d">>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2133}]}.
    {call,3,{f,1211}}. % lgettext/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[ok]},
                                     2 => {t_bitstring,8,false}}}}]}}.
  {label,1202}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,1209},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,2},{f,1203}}.
    {move,{literal,<<"default">>},{x,1}}.
    {move,{literal,<<"Remove">>},{x,2}}.
    {move,nil,{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_dialyzer_SUITE.erl",2134}]}.
    {call,3,{f,1211}}. % lgettext/3
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1203}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,1208},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,1},{f,1204}}.
    {move,{literal,<<"def">>},{x,1}}.
    {move,{literal,<<"Remove">>},{x,2}}.
    {move,{literal,<<"de">>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_dialyzer_SUITE.erl",2135}]}.
    {call,3,{f,1211}}. % lgettext/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[ok]},
                                     2 => {t_bitstring,8,false}}}}]}}.
  {label,1204}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,1207},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,0},{f,1205}}.
    {move,{literal,<<"default">>},{x,1}}.
    {move,{literal,<<"Res">>},{x,2}}.
    {move,{literal,<<"de">>},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_dialyzer_SUITE.erl",2136}]}.
    {call,3,{f,1211}}. % lgettext/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[ok]},
                                     2 => {t_bitstring,8,false}}}}]}}.
  {label,1205}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1206},[{x,0},2,{atom,'EXIT'}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,4}.
    return.
  {label,1206}.
    {line,[{scope,[0]},{location,"bs_match_dialyzer_SUITE.erl",2136}]}.
    {badmatch,{x,0}}.
  {label,1207}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",2135}]}.
    {badmatch,{x,0}}.
  {label,1208}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",2134}]}.
    {badmatch,{x,0}}.
  {label,1209}.
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",2133}]}.
    {badmatch,{x,0}}.


{function, lgettext, 3, 1211}.
  {label,1210}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2140}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,lgettext},3}.
  {label,1211}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,nil,none,none,{t_bitstring,8,false}}},
                    accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,8,false}}]}}.
    {test,bs_start_match3,{f,1222},3,[{x,0}],{x,0}}.
    {bs_get_position,{x,0},{x,3},3}.
    {bs_match,{f,1221},
              {x,0},
              {commands,[{ensure_exactly,16},{'=:=',nil,16,25701}]}}.
    {bs_start_match4,{atom,no_fail},4,{x,1},{x,4}}.
    {bs_match,{f,1221},
              {x,4},
              {commands,[{ensure_at_least,16,1},
                         {integer,5,{literal,[]},16,1,{x,5}}]}}.
    {select_val,{tr,{x,5},{t_integer,{0,65535}}},
                {f,1221},
                {list,[{integer,25701},{f,1214},{integer,28257},{f,1212}]}}.
  {label,1212}.
    {bs_match,{f,1221},
              {x,4},
              {commands,[{ensure_exactly,64},
                         {'=:=',nil,31,993309616},
                         {'=:=',nil,31,1562008539},
                         {'=:=',nil,2,2}]}}.
    {bs_start_match4,{atom,no_fail},4,{x,2},{x,4}}.
    {bs_match,{f,1221},
              {x,4},
              {commands,[{ensure_at_least,32,1},
                         {'=:=',nil,16,21093},
                         {integer,5,{literal,[]},16,1,{x,5}}]}}.
    {select_val,{tr,{x,5},{t_integer,{0,65535}}},
                {f,1221},
                {list,[{integer,29551},{f,1213},{integer,29557},{f,1215}]}}.
  {label,1213}.
    {bs_match,{f,1221},
              {x,4},
              {commands,[{ensure_exactly,40},
                         {'=:=',nil,31,985215410},
                         {'=:=',nil,9,371}]}}.
    {move,{literal,{ok,<<"Ressourcen">>}},{x,0}}.
    return.
  {label,1214}.
    {bs_match,{f,1221},
              {x,4},
              {commands,[{ensure_exactly,40},
                         {'=:=',nil,31,858831542},
                         {'=:=',nil,9,116}]}}.
    {bs_start_match4,{atom,no_fail},4,{x,2},{x,4}}.
    {bs_match,{f,1221},
              {x,4},
              {commands,[{ensure_at_least,32,1},
                         {'=:=',nil,16,21093},
                         {integer,5,{literal,[]},16,1,{x,5}}]}}.
    {select_val,{tr,{x,5},{t_integer,{0,65535}}},
                {f,1221},
                {list,[{integer,28015},
                       {f,1217},
                       {integer,29541},
                       {f,1216},
                       {integer,29557},
                       {f,1215}]}}.
  {label,1215}.
    {bs_match,{f,1221},
              {x,4},
              {commands,[{ensure_exactly,24},{'=:=',nil,24,7107699}]}}.
    {move,{literal,{ok,<<"Ergebnisse">>}},{x,0}}.
    return.
  {label,1216}.
    {bs_match,{f,1221},
              {x,4},
              {commands,[{ensure_exactly,48},
                         {'=:=',nil,31,960180410},
                         {'=:=',nil,17,26991}]}}.
    {move,{literal,{ok,<<"a">>}},{x,0}}.
    return.
  {label,1217}.
    {bs_match,{f,1221},
              {x,4},
              {commands,[{ensure_at_least,16,1},{'=:=',nil,16,30309}]}}.
    {bs_get_position,{x,4},{x,5},5}.
    {bs_match,{f,1220},
              {x,4},
              {commands,[{ensure_at_least,48,1},
                         {'=:=',nil,31,271792439},
                         {'=:=',nil,17,93472}]}}.
    {bs_match,{f,1221},
              {x,4},
              {commands,[{ensure_at_least,16,1},
                         {integer,6,{literal,[]},16,1,{x,6}}]}}.
    {select_val,{tr,{x,6},{t_integer,{0,65535}}},
                {f,1220},
                {list,[{integer,27753},{f,1219},{integer,29800},{f,1218}]}}.
  {label,1218}.
    {bs_match,{f,1221},
              {x,4},
              {commands,[{ensure_at_least,48,1},
                         {'=:=',nil,31,848311860},
                         {'=:=',nil,17,95092}]}}.
    {bs_match,{f,1220},{x,4},{commands,[{ensure_exactly,0}]}}.
    {move,{literal,{ok,<<"a">>}},{x,0}}.
    return.
  {label,1219}.
    {bs_match,{f,1221},
              {x,4},
              {commands,[{ensure_at_least,16,1},{'=:=',nil,16,29556}]}}.
    {bs_match,{f,1220},{x,4},{commands,[{ensure_exactly,0}]}}.
    {move,{literal,{ok,<<"a">>}},{x,0}}.
    return.
  {label,1220}.
    {bs_set_position,{x,4},{x,5}}.
    {bs_match,{f,1221},{x,4},{commands,[{ensure_exactly,0}]}}.
    {move,{literal,{ok,<<"a">>}},{x,0}}.
    return.
  {label,1221}.
    {bs_set_position,{x,0},{x,3}}.
    {bs_get_tail,{x,0},{x,0},3}.
    {jump,{f,1210}}.
  {label,1222}.
    {move,nil,{x,0}}.
    {jump,{f,1210}}.


{function, beam_bsm, 1, 1224}.
  {label,1223}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2156}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,beam_bsm},1}.
  {label,1224}.
    {allocate,0,0}.
    {move,{literal,[1,0,1,1]},{x,1}}.
    {move,{literal,<<11:4>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2157}]}.
    {call,2,{f,1235}}. % check_bitstring_list/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1233},[{x,0},{atom,true}]}.
    {move,{literal,[0]},{x,1}}.
    {move,{literal,<<11:4>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2158}]}.
    {call,2,{f,1235}}. % check_bitstring_list/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1225},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,1225}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2160}]}.
    {call,1,{f,1239}}. % bsm_validate_scheme/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1232},[{x,0},{atom,true}]}.
    {move,{literal,<<5,10>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2161}]}.
    {call,1,{f,1239}}. % bsm_validate_scheme/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1231},[{x,0},{atom,true}]}.
    {move,{literal,<<5,10,11,12>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2162}]}.
    {call,1,{f,1239}}. % bsm_validate_scheme/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1226},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,1226}.
    {move,nil,{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2163}]}.
    {call,1,{f,1239}}. % bsm_validate_scheme/1
    {'%',{var_info,{x,0},[{type,{t_atom,[true]}}]}}.
    {move,{literal,[5,10]},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2164}]}.
    {call,1,{f,1239}}. % bsm_validate_scheme/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1230},[{x,0},{atom,true}]}.
    {move,{literal,[5,6,7]},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2165}]}.
    {call,1,{f,1239}}. % bsm_validate_scheme/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1227},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,1227}.
    {move,nil,{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2167}]}.
    {call,2,{f,1249}}. % bsm_must_save_and_not_save/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,1229},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<1,2,3>>}]}.
    {test_heap,{alloc,[{words,4},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1871},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_number,any}}]}}.
    {put_list,{x,0},nil,{x,1}}.
    {put_list,{x,0},{x,1},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2169}]}.
    {call,2,{f,1249}}. % bsm_must_save_and_not_save/2
    {'%',{var_info,{x,0},
                   [{type,{t_cons,{t_number,any},{t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,1228},
          [{tr,{x,0},{t_cons,{t_number,any},{t_bitstring,8,false}}},
           {literal,[2,4|<<3>>]}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1228}.
    {badmatch,{x,0}}.
  {label,1229}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2167}]}.
    {badmatch,{x,0}}.
  {label,1230}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2164}]}.
    {badmatch,{atom,false}}.
  {label,1231}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2161}]}.
    {badmatch,{atom,false}}.
  {label,1232}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2160}]}.
    {badmatch,{atom,false}}.
  {label,1233}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2157}]}.
    {badmatch,{atom,false}}.


{function, check_bitstring_list, 2, 1235}.
  {label,1234}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2173}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,check_bitstring_list},2}.
  {label,1235}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{0,1}},nil}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {bs_match,{f,1236},
              {x,0},
              {commands,[{ensure_at_least,1,1},
                         {integer,3,{literal,[]},1,1,{x,3}}]}}.
    {test,is_nonempty_list,{f,1236},[{x,1}]}.
    {get_list,{x,1},{x,4},{x,5}}.
    {test,is_eq_exact,
          {f,1236},
          [{tr,{x,4},{t_integer,{0,1}}},{tr,{x,3},{t_integer,{0,1}}}]}.
    {move,{x,5},{x,1}}.
    {call_only,2,{f,1235}}. % check_bitstring_list/2
  {label,1236}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_match,{f,1237},{x,0},{commands,[{ensure_exactly,0}]}}.
    {bif,'=:=',{f,0},[{tr,{x,1},{t_list,{t_integer,{0,1}},nil}},nil],{x,0}}.
    return.
  {label,1237}.
    {move,{atom,false},{x,0}}.
    return.


{function, bsm_validate_scheme, 1, 1239}.
  {label,1238}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2180}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,bsm_validate_scheme},1}.
  {label,1239}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,
                                   {t_list,{t_integer,{5,10}},nil},
                                   none,none,
                                   {t_bs_matchable,8}}},
                    accepts_match_context]}}.
    {test,bs_start_match3,{f,1242},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {bs_match,{f,1240},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{atom,true},{x,0}}.
    return.
  {label,1240}.
    {bs_match,{f,1241},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,0}}]}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2188}]}.
    {call,1,{f,1247}}. % bsm_is_scheme/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1244},[{x,0},{atom,true}]}.
    {jump,{f,1243}}.
  {label,1241}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,1238}}.
  {label,1242}.
    {test,is_nonempty_list,{f,1245},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{x,0},{y,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2182}]}.
    {call,1,{f,1247}}. % bsm_is_scheme/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1244},[{x,0},{atom,true}]}.
  {label,1243}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,1239},1}. % bsm_validate_scheme/1
  {label,1244}.
    {move,{atom,false},{x,0}}.
    {deallocate,1}.
    return.
  {label,1245}.
    {move,{atom,true},{x,0}}.
    return.


{function, bsm_is_scheme, 1, 1247}.
  {label,1246}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2193}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,bsm_is_scheme},1}.
  {label,1247}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2194}]}.
    {gc_bif,'rem',{f,0},1,[{tr,{x,0},{t_integer,{0,255}}},{integer,5}],{x,0}}.
    {bif,'=:=',{f,0},[{tr,{x,0},{t_integer,{0,4}}},{integer,0}],{x,0}}.
    return.


{function, bsm_must_save_and_not_save, 2, 1249}.
  {label,1248}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2197}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,bsm_must_save_and_not_save},
               2}.
  {label,1249}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_list,
                     {t_fun,1,{'-beam_bsm/1-fun-0-',1},{t_number,any}},
                     nil}}]}}.
    {test,is_nil,
          {f,1250},
          [{tr,{x,1},
               {t_list,{t_fun,1,{'-beam_bsm/1-fun-0-',1},{t_number,any}},
                       nil}}]}.
    return.
  {label,1250}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,2}}.
    {bs_match,{f,1248},
              {x,2},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,0}}]}}.
    {allocate,2,3}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {bs_get_tail,{x,2},{y,1},3}.
    {get_tl,{x,1},{y,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2200}]}.
    {call,1,{f,1871}}. % '-beam_bsm/1-fun-0-'/1
    {'%',{var_info,{x,0},[{type,{t_number,any}}]}}.
    {swap,{y,1},{x,0}}.
    {move,{y,0},{x,1}}.
    {trim,1,1}.
    {call,2,{f,1249}}. % bsm_must_save_and_not_save/2
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


{function, guard, 1, 1252}.
  {label,1251}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2204}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,guard},1}.
  {label,1252}.
    {allocate,0,0}.
    {move,{literal,{a,b}},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2205}]}.
    {call,1,{f,1776}}. % id/1
    {move,{literal,{1,2,3}},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2206}]}.
    {call,2,{f,1254}}. % guard_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,#{}},{x,1}}.
    {move,{literal,<<"*">>},{x,0}}.
    {call_last,2,{f,1257},0}. % guard_2/2


{function, guard_1, 2, 1254}.
  {label,1253}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2211}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,guard_1},2}.
  {label,1254}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,{1,1}},
                                     2 => {t_integer,{2,2}},
                                     3 => {t_integer,{3,3}}}}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {bs_match,{f,1255},
              {x,0},
              {commands,[{ensure_exactly,24},
                         {integer,3,{literal,[]},8,1,{x,3}},
                         {integer,4,{literal,[]},8,1,{x,4}},
                         {integer,5,{literal,[]},8,1,{x,5}}]}}.
    {test_heap,4,6}.
    {put_tuple2,{x,3},{list,[{x,3},{x,4},{x,5}]}}.
    {test,is_eq_exact,
          {f,1255},
          [{tr,{x,3},
               {t_tuple,3,true,
                        #{1 => {t_integer,{0,255}},
                          2 => {t_integer,{0,255}},
                          3 => {t_integer,{0,255}}}}},
           {literal,{1,2,3}}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1255}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {jump,{f,1253}}.


{function, guard_2, 2, 1257}.
  {label,1256}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2215}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,guard_2},2}.
  {label,1257}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_map,none,none}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,1258},{x,0},{commands,[{ensure_exactly,8}]}}.
    {put_map_assoc,{f,0},{literal,#{}},{x,2},2,{list,[nil,{literal,#{}}]}}.
    {test,is_eq_exact,
          {f,1258},
          [{tr,{x,2},{t_map,nil,{t_map,none,none}}},{literal,#{[] => #{}}}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1258}.
    {bs_get_tail,{x,0},{x,0},2}.
    {jump,{f,1256}}.


{function, is_ascii, 1, 1260}.
  {label,1259}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2218}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,is_ascii},1}.
  {label,1260}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2219}]}.
    {call,1,{f,1269}}. % do_is_ascii/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1267},[{x,0},{atom,true}]}.
    {move,{literal,<<"string">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",2220}]}.
    {call,1,{f,1269}}. % do_is_ascii/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1266},[{x,0},{atom,true}]}.
    {move,{literal,<<208,128>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",2221}]}.
    {call,1,{f,1269}}. % do_is_ascii/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1261},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,1261}.
    {'catch',{y,1},{f,1262}}.
    {move,{literal,<<65,0:3>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",2222}]}.
    {call,1,{f,1269}}. % do_is_ascii/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
  {label,1262}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,1265},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1265},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,0},{f,1263}}.
    {move,{literal,<<128,0:3>>},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_dialyzer_SUITE.erl",2223}]}.
    {call,1,{f,1269}}. % do_is_ascii/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
  {label,1263}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1264},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1264},[{x,1},2,{atom,function_clause}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,1264}.
    {line,[{scope,[0]},{location,"bs_match_dialyzer_SUITE.erl",2223}]}.
    {badmatch,{x,0}}.
  {label,1265}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",2222}]}.
    {badmatch,{x,0}}.
  {label,1266}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",2220}]}.
    {badmatch,{atom,false}}.
  {label,1267}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",2219}]}.
    {badmatch,{atom,false}}.


{function, do_is_ascii, 1, 1269}.
  {label,1268}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2226}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,do_is_ascii},1}.
  {label,1269}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,1270},{x,0},{commands,[{ensure_exactly,0}]}}.
    {move,{atom,true},{x,0}}.
    return.
  {label,1270}.
    {bs_match,{f,1272},
              {x,0},
              {commands,[{ensure_at_least,8,8},
                         {integer,1,{literal,[]},8,1,{x,1}}]}}.
    {test,is_ge,{f,1271},[{tr,{x,1},{t_integer,{0,255}}},{integer,128}]}.
    {move,{atom,false},{x,0}}.
    return.
  {label,1271}.
    {call_only,1,{f,1269}}. % do_is_ascii/1
  {label,1272}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,1268}}.


{function, non_opt_eq, 1, 1274}.
  {label,1273}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2235}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,non_opt_eq},1}.
  {label,1274}.
    {allocate,0,0}.
    {move,{literal,<<>>},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2236}]}.
    {call,2,{f,1278}}. % non_opt_eq/2
    {'%',{var_info,{x,0},[{type,{t_atom,[true]}}]}}.
    {move,{literal,<<"a">>},{x,1}}.
    {move,{literal,"a"},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2237}]}.
    {call,2,{f,1278}}. % non_opt_eq/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1276},[{x,0},{atom,true}]}.
    {move,{literal,<<"b">>},{x,1}}.
    {move,{literal,"a"},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2238}]}.
    {call,2,{f,1278}}. % non_opt_eq/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1275},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,1275}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1276}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2237}]}.
    {badmatch,{atom,false}}.


{function, non_opt_eq, 2, 1278}.
  {label,1277}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2244}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,non_opt_eq},2}.
  {label,1278}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{97,97}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {bs_match,{f,1280},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,is_nonempty_list,{f,1280},[{x,0}]}.
    {get_tl,{x,0},{x,0}}.
    {test,is_eq_exact,{f,1279},[{tr,{x,3},{t_integer,{0,255}}},{integer,97}]}.
    {call_only,2,{f,1278}}. % non_opt_eq/2
  {label,1279}.
    {move,{atom,false},{x,0}}.
    return.
  {label,1280}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_match,{f,1281},{x,1},{commands,[{ensure_exactly,0}]}}.
    {test,is_nil,{f,1281},[{tr,{x,0},{t_list,{t_integer,{97,97}},nil}}]}.
    {move,{atom,true},{x,0}}.
    return.
  {label,1281}.
    {bs_get_tail,{x,1},{x,1},2}.
    {jump,{f,1277}}.


{function, erl_689, 1, 1283}.
  {label,1282}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2253}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,erl_689},1}.
  {label,1283}.
    {allocate,0,0}.
    {move,{atom,bs_match_dialyzer_SUITE},{x,1}}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2254}]}.
    {call,2,{f,1289}}. % do_erl_689_1/2
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
        {f,1287},
        [{tr,{x,0},
             {t_tuple,2,true,
                 #{1 =>
                       {t_tuple,3,true,
                           #{1 => {t_integer,{0,65535}},
                             2 => {t_integer,{0,255}},
                             3 => {t_integer,{0,255}}}},
                   2 => {t_bitstring,8,false}}}},
         {literal,{{0,0,0},<<>>}}]}.
    {move,{atom,bs_match_dialyzer_SUITE},{x,1}}.
    {move,{literal,<<4,226,7,8,7>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2255}]}.
    {call,2,{f,1289}}. % do_erl_689_1/2
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
        {f,1286},
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
    {move,{atom,bs_match_dialyzer_SUITE},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2256}]}.
    {call,2,{f,1292}}. % do_erl_689_2/2
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
        {f,1285},
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
    {move,{atom,bs_match_dialyzer_SUITE},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2257}]}.
    {call,2,{f,1292}}. % do_erl_689_2/2
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
        {f,1284},
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
  {label,1284}.
    {badmatch,{x,0}}.
  {label,1285}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2256}]}.
    {badmatch,{x,0}}.
  {label,1286}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2255}]}.
    {badmatch,{x,0}}.
  {label,1287}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2254}]}.
    {badmatch,{x,0}}.


{function, do_erl_689_1, 2, 1289}.
  {label,1288}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2260}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,do_erl_689_1},2}.
  {label,1289}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[bs_match_dialyzer_SUITE]}}]}}.
    {allocate,1,2}.
    {move,{x,0},{y,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2261}]}.
    {call,2,{f,1295}}. % do_erl_689_1a/2
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
    {move,{atom,bs_match_dialyzer_SUITE},{x,1}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2262}]}.
    {call,2,{f,1300}}. % do_erl_689_1b/2
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
  {label,1290}.
    {badmatch,{x,0}}.


{function, do_erl_689_2, 2, 1292}.
  {label,1291}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2264}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,do_erl_689_2},2}.
  {label,1292}.
    {'%',{var_info,{x,0},[{type,{t_atom,[bs_match_dialyzer_SUITE]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2265}]}.
    {call,2,{f,1305}}. % do_erl_689_2a/2
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
    {move,{atom,bs_match_dialyzer_SUITE},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2266}]}.
    {call,2,{f,1310}}. % do_erl_689_2b/2
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
  {label,1293}.
    {badmatch,{x,0}}.


{function, do_erl_689_1a, 2, 1295}.
  {label,1294}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2268}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,do_erl_689_1a},2}.
  {label,1295}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[bs_match_dialyzer_SUITE]}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {bs_match,{f,1298},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,1,{literal,[]},8,1,{x,1}}]}}.
    {bs_get_position,{x,0},{x,2},2}.
    {test,is_eq_exact,{f,1296},[{tr,{x,1},{t_integer,{0,255}}},{integer,0}]}.
    {bs_get_tail,{x,0},{x,0},1}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{literal,{0,0,0}},{x,0}]}}.
    return.
  {label,1296}.
    {bs_match,{f,1297},
              {x,0},
              {commands,[{ensure_at_least,32,1},
                         {integer,3,{literal,[little]},16,1,{x,3}},
                         {integer,4,{literal,[]},8,1,{x,4}},
                         {integer,5,{literal,[]},8,1,{x,5}},
                         {get_tail,6,1,{x,6}}]}}.
    {test,is_eq_exact,{f,1297},[{tr,{x,1},{t_integer,{1,255}}},{integer,4}]}.
    {test_heap,7,7}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4},{x,5}]}}.
    {put_tuple2,{x,0},{list,[{x,0},{x,6}]}}.
    return.
  {label,1297}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2269}]}.
    {case_end,{x,0}}.
  {label,1298}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {jump,{f,1294}}.


{function, do_erl_689_1b, 2, 1300}.
  {label,1299}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2278}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,do_erl_689_1b},2}.
  {label,1300}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[bs_match_dialyzer_SUITE]}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {bs_match,{f,1303},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,1,{literal,[]},8,1,{x,1}}]}}.
    {bs_get_position,{x,0},{x,2},2}.
    {test,is_eq_exact,{f,1301},[{tr,{x,1},{t_integer,{0,255}}},{integer,0}]}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2283}]}.
    {call,1,{f,1776}}. % id/1
    {bs_get_tail,{y,0},{x,0},0}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{literal,{0,0,0}},{x,0}]}}.
    {deallocate,1}.
    return.
  {label,1301}.
    {bs_match,{f,1302},
              {x,0},
              {commands,[{ensure_at_least,32,1},
                         {integer,3,{literal,[little]},16,1,{x,3}},
                         {integer,4,{literal,[]},8,1,{x,4}},
                         {integer,5,{literal,[]},8,1,{x,5}},
                         {get_tail,6,1,{x,6}}]}}.
    {test,is_eq_exact,{f,1302},[{tr,{x,1},{t_integer,{1,255}}},{integer,4}]}.
    {allocate,4,7}.
    {move,{x,6},{y,0}}.
    {move,{x,5},{y,1}}.
    {move,{x,4},{y,2}}.
    {move,{x,3},{y,3}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2286}]}.
    {call,1,{f,1776}}. % id/1
    {test_heap,7,0}.
    {put_tuple2,{x,0},{list,[{y,3},{y,2},{y,1}]}}.
    {put_tuple2,{x,0},{list,[{x,0},{y,0}]}}.
    {deallocate,4}.
    return.
  {label,1302}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2279}]}.
    {case_end,{x,0}}.
  {label,1303}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {jump,{f,1299}}.


{function, do_erl_689_2a, 2, 1305}.
  {label,1304}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2290}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,do_erl_689_2a},2}.
  {label,1305}.
    {'%',{var_info,{x,0},[{type,{t_atom,[bs_match_dialyzer_SUITE]}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {bs_match,{f,1308},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,0}}]}}.
    {bs_get_position,{x,1},{x,2},2}.
    {test,is_eq_exact,{f,1306},[{tr,{x,0},{t_integer,{0,255}}},{integer,0}]}.
    {bs_get_tail,{x,1},{x,0},2}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{literal,{0,0,0}},{x,0}]}}.
    return.
  {label,1306}.
    {bs_match,{f,1307},
              {x,1},
              {commands,[{ensure_at_least,32,1},
                         {integer,3,{literal,[little]},16,1,{x,3}},
                         {integer,4,{literal,[]},8,1,{x,4}},
                         {integer,5,{literal,[]},8,1,{x,5}},
                         {get_tail,6,1,{x,6}}]}}.
    {test,is_eq_exact,{f,1307},[{tr,{x,0},{t_integer,{1,255}}},{integer,4}]}.
    {test_heap,7,7}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4},{x,5}]}}.
    {put_tuple2,{x,0},{list,[{x,0},{x,6}]}}.
    return.
  {label,1307}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_get_tail,{x,1},{x,1},2}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2291}]}.
    {case_end,{x,0}}.
  {label,1308}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_get_tail,{x,1},{x,1},2}.
    {jump,{f,1304}}.


{function, do_erl_689_2b, 2, 1310}.
  {label,1309}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2300}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,do_erl_689_2b},2}.
  {label,1310}.
    {'%',{var_info,{x,0},[{type,{t_atom,[bs_match_dialyzer_SUITE]}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {bs_match,{f,1313},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,0}}]}}.
    {bs_get_position,{x,1},{x,2},2}.
    {test,is_eq_exact,{f,1311},[{tr,{x,0},{t_integer,{0,255}}},{integer,0}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2305}]}.
    {call,1,{f,1776}}. % id/1
    {bs_get_tail,{y,0},{x,0},0}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{literal,{0,0,0}},{x,0}]}}.
    {deallocate,1}.
    return.
  {label,1311}.
    {bs_match,{f,1312},
              {x,1},
              {commands,[{ensure_at_least,32,1},
                         {integer,3,{literal,[little]},16,1,{x,3}},
                         {integer,4,{literal,[]},8,1,{x,4}},
                         {integer,5,{literal,[]},8,1,{x,5}},
                         {get_tail,6,1,{x,6}}]}}.
    {test,is_eq_exact,{f,1312},[{tr,{x,0},{t_integer,{1,255}}},{integer,4}]}.
    {allocate,4,7}.
    {move,{x,6},{y,0}}.
    {move,{x,5},{y,1}}.
    {move,{x,4},{y,2}}.
    {move,{x,3},{y,3}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2308}]}.
    {call,1,{f,1776}}. % id/1
    {test_heap,7,0}.
    {put_tuple2,{x,0},{list,[{y,3},{y,2},{y,1}]}}.
    {put_tuple2,{x,0},{list,[{x,0},{y,0}]}}.
    {deallocate,4}.
    return.
  {label,1312}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_get_tail,{x,1},{x,1},2}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2301}]}.
    {case_end,{x,0}}.
  {label,1313}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_get_tail,{x,1},{x,1},2}.
    {jump,{f,1309}}.


{function, bs_start_match2_defs, 1, 1315}.
  {label,1314}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2314}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,bs_start_match2_defs},1}.
  {label,1315}.
    {allocate,0,0}.
    {move,{literal,<<"hello">>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2315}]}.
    {call,1,{f,1319}}. % api_url/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,1,true,#{1 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
          {f,1317},
          [{tr,{x,0},{t_tuple,1,true,#{1 => {t_bitstring,8,false}}}},
           {literal,{<<"http://127.0.0.1:1234/vsaas/hello">>}}]}.
    {move,{literal,{https,"hello"}},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2316}]}.
    {call,1,{f,1319}}. % api_url/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,1,true,
                     #{1 => {t_cons,{t_integer,{46,118}},nil}}}}]}}.
    {test,is_eq_exact,
          {f,1316},
          [{tr,{x,0},
               {t_tuple,1,true,#{1 => {t_cons,{t_integer,{46,118}},nil}}}},
           {literal,{"https://127.0.0.1:4321/vsaas/hello"}}]}.
    {deallocate,0}.
    return.
  {label,1316}.
    {badmatch,{x,0}}.
  {label,1317}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2315}]}.
    {badmatch,{x,0}}.


{function, api_url, 1, 1319}.
  {label,1318}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2318}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,api_url},1}.
  {label,1319}.
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
    {test,bs_start_match3,{f,1320},1,[{x,0}],{x,1}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2320}]}.
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
  {label,1320}.
    {allocate,0,1}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {move,{literal,"https://127.0.0.1:4321/vsaas/"},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2321}]}.
    {call_ext,2,{extfunc,erlang,'++',2}}.
    {test_heap,2,1}.
    {put_tuple2,{x,0},{list,[{x,0}]}}.
    {deallocate,0}.
    return.


{function, check, 2, 1322}.
  {label,1321}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2324}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,check},2}.
  {label,1322}.
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
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2325}]}.
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
          {f,1323},
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
  {label,1323}.
    {badmatch,{x,0}}.


{function, expression_before_match, 1, 1325}.
  {label,1324}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2329}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,expression_before_match},
               1}.
  {label,1325}.
    {test,is_list,{f,1324},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<0,1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2330}]}.
    {call,1,{f,1776}}. % id/1
    {test,bs_start_match3,{f,1327},1,[{x,0}],{x,1}}.
    {bs_match,{f,1327},
              {x,1},
              {commands,[{ensure_at_least,8,8},
                         {skip,8},
                         {get_tail,2,8,{x,0}}]}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2331}]}.
    {call,1,{f,1329}}. % expression_before_match_1/1
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
        {f,1326},
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
  {label,1326}.
    {badmatch,{x,0}}.
  {label,1327}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2330}]}.
    {badmatch,{x,0}}.


{function, expression_before_match_1, 1, 1329}.
  {label,1328}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2334}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,expression_before_match_1},
               1}.
  {label,1329}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2335}]}.
    {call,1,{f,1776}}. % id/1
    {bs_start_match4,{atom,no_fail},1,{y,0},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {bs_match,{f,1330},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {'=:=',nil,8,1},
                         {get_tail,2,1,{x,1}}]}}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {deallocate,1}.
    return.
  {label,1330}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_match,{f,1331},{x,1},{commands,[{ensure_exactly,0}]}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{x,0},{atom,baz}]}}.
    {deallocate,1}.
    return.
  {label,1331}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2336}]}.
    {case_end,{y,0}}.


{function, restore_on_call, 1, 1333}.
  {label,1332}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2342}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,restore_on_call},1}.
  {label,1333}.
    {test,is_list,{f,1332},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<0,1,2>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2343}]}.
    {call,1,{f,1336}}. % restore_on_call_plain/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<0,120>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2344}]}.
    {call,1,{f,1344}}. % restore_on_call_match/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,1334},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<"x">>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1334}.
    {badmatch,{x,0}}.


{function, restore_on_call_plain, 1, 1336}.
  {label,1335}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2347}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,restore_on_call_plain},1}.
  {label,1336}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,1337},
              {x,0},
              {commands,[{ensure_at_least,8,1},{'=:=',nil,8,0}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {bs_get_position,{x,0},{y,0},1}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2348}]}.
    {call,1,{f,1341}}. % restore_on_call_plain_1/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,1339},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<2>>}]}.
    {bs_set_position,{y,1},{y,0}}.
    {move,{y,1},{x,0}}.
    {trim,2,0}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2350}]}.
    {call,1,{f,1341}}. % restore_on_call_plain_1/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,1338},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<2>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1337}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,1335}}.
  {label,1338}.
    {badmatch,{x,0}}.
  {label,1339}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2348}]}.
    {badmatch,{x,0}}.


{function, restore_on_call_plain_1, 1, 1341}.
  {label,1340}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2353}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,restore_on_call_plain_1},
               1}.
  {label,1341}.
    {'%',{var_info,{x,0},[{type,{t_bs_context,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,resume},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,1342},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {'=:=',nil,8,1},
                         {get_tail,1,1,{x,0}}]}}.
    return.
  {label,1342}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    return.


{function, restore_on_call_match, 1, 1344}.
  {label,1343}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2358}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,restore_on_call_match},1}.
  {label,1344}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,16,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,1346},
              {x,0},
              {commands,[{ensure_at_least,8,1},{'=:=',nil,8,0}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {bs_get_position,{x,0},{y,0},1}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2359}]}.
    {call,1,{f,1348}}. % skip_until_zero/1
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
          {f,1345},
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
  {label,1345}.
    {bs_set_position,{y,1},{y,0}}.
    {bs_get_tail,{y,1},{x,0},0}.
    {deallocate,2}.
    return.
  {label,1346}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,1343}}.


{function, skip_until_zero, 1, 1348}.
  {label,1347}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2368}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,skip_until_zero},1}.
  {label,1348}.
    {'%',{var_info,{x,0},[{type,{t_bs_context,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,resume},1,{x,0},{x,0}}.
    {bs_match,{f,1350},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,1,{literal,[]},8,1,{x,1}}]}}.
    {test,is_eq_exact,{f,1349},[{tr,{x,1},{t_integer,{0,255}}},{integer,0}]}.
    {bs_get_tail,{x,0},{x,0},1}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,skipped},{x,0}]}}.
    return.
  {label,1349}.
    {call_only,1,{f,1348}}. % skip_until_zero/1
  {label,1350}.
    {move,{atom,not_found},{x,0}}.
    return.


{function, restore_after_catch, 1, 1352}.
  {label,1351}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2376}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,restore_after_catch},1}.
  {label,1352}.
    {test,is_list,{f,1351},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<0,1>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2377}]}.
    {call,1,{f,1355}}. % restore_after_catch_1/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {test,is_eq_exact,
          {f,1353},
          [{tr,{x,0},{t_bitstring,16,false}},{literal,<<0,1>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1353}.
    {badmatch,{x,0}}.


{function, restore_after_catch_1, 1, 1355}.
  {label,1354}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2380}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,restore_after_catch_1},1}.
  {label,1355}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,16,false}},accepts_match_context]}}.
    {allocate,3,1}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{y,1}}.
    {bs_get_position,{y,1},{y,0},0}.
    {'try',{y,2},{f,1356}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2381}]}.
    {call,1,{f,1359}}. % throw_after_byte/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1356}.
    {try_case,{y,2}}.
    {test,is_eq_exact,
          {f,1357},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,throw}]}.
    {bs_set_position,{y,1},{y,0}}.
    {bs_get_tail,{y,1},{x,0},0}.
    {deallocate,3}.
    return.
  {label,1357}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.


{function, throw_after_byte, 1, 1359}.
  {label,1358}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2389}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,throw_after_byte},1}.
  {label,1359}.
    {'%',{var_info,{x,0},[{type,{t_bs_context,16}},accepts_match_context]}}.
    {bs_start_match4,{atom,resume},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,1360},{x,0},{commands,[{ensure_at_least,8,1},{skip,8}]}}.
    {move,{atom,away},{x,1}}.
    {move,nil,{x,2}}.
    {move,{atom,throw},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2390}]}.
    {call_ext_only,3,{extfunc,erlang,raise,3}}.
  {label,1360}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,1358}}.


{function, matches_on_parameter, 1, 1362}.
  {label,1361}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2392}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,matches_on_parameter},1}.
  {label,1362}.
    {test,is_list,{f,1361},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,<<"gurka">>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2394}]}.
    {call,1,{f,1367}}. % matches_on_parameter_1/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_bitstring,8,false},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
          {f,1365},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_bitstring,8,false},
                          2 => {t_bitstring,8,false}}}},
           {literal,{<<"urka">>,<<"a">>}}]}.
    {'catch',{y,0},{f,1363}}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<"10001110101">>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",2395}]}.
    {call,2,{f,1371}}. % matches_on_parameter_2/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1363}.
    {catch_end,{y,0}}.
    {test,is_eq_exact,{f,1364},[{x,0},{atom,ok}]}.
    {deallocate,1}.
    return.
  {label,1364}.
    {line,[{scope,[0]},{location,"bs_match_dialyzer_SUITE.erl",2395}]}.
    {badmatch,{x,0}}.
  {label,1365}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",2394}]}.
    {badmatch,{x,0}}.


{function, matches_on_parameter_1, 1, 1367}.
  {label,1366}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2397}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,matches_on_parameter_1},1}.
  {label,1367}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,1369},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {'=:=',nil,8,103},
                         {get_tail,2,1,{x,2}}]}}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_match,{f,1368},
              {x,0},
              {commands,[{ensure_at_least,32,1},
                         {skip,16},
                         {'=:=',nil,16,29291},
                         {get_tail,3,1,{x,0}}]}}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{x,2},{x,0}]}}.
    return.
  {label,1368}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2399}]}.
    {badmatch,{x,0}}.
  {label,1369}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2398}]}.
    {badmatch,{x,0}}.


{function, matches_on_parameter_2, 2, 1371}.
  {label,1370}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2402}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,matches_on_parameter_2},2}.
  {label,1371}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,'+inf'}}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {test,bs_skip_bits2,
          {f,1373},
          [{x,0},
           {x,1},
           1,
           {field_flags,[{anno,[2403,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_match,{f,1373},{x,0},{commands,[{ensure_at_least,1,1},{skip,1}]}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2404}]}.
    {gc_bif,bit_size,{f,0},3,[{tr,{x,0},{t_bs_context,1}}],{x,3}}.
    {test,is_eq_exact,
          {f,1372},
          [{tr,{x,3},{t_integer,{0,288230376151711743}}},{integer,0}]}.
    {move,{atom,ok},{x,1}}.
    {move,nil,{x,2}}.
    {move,{atom,throw},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2405}]}.
    {call_ext_only,3,{extfunc,erlang,raise,3}}.
  {label,1372}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2406}]}.
    {gc_bif,'+',{f,0},3,[{tr,{x,1},{t_integer,{0,'+inf'}}},{integer,1}],{x,1}}.
    {bs_set_position,{x,0},{x,2}}.
    {call_only,2,{f,1371}}. % matches_on_parameter_2/2
  {label,1373}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2403}]}.
    {badmatch,{x,0}}.


{function, big_positions, 1, 1375}.
  {label,1374}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2409}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,big_positions},1}.
  {label,1375}.
    {test,is_list,{f,1374},[{x,0}]}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2413}]}.
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
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2414}]}.
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
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2416}]}.
    {call,1,{f,1381}}. % bp_start_match/1
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
          {f,1379},
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
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2417}]}.
    {call,1,{f,1381}}. % bp_start_match/1
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
          {f,1378},
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
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2418}]}.
    {call,1,{f,1386}}. % bp_getpos/1
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
          {f,1377},
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
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2419}]}.
    {call,1,{f,1386}}. % bp_getpos/1
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
          {f,1376},
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
  {label,1376}.
    {badmatch,{x,0}}.
  {label,1377}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2418}]}.
    {badmatch,{x,0}}.
  {label,1378}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2417}]}.
    {badmatch,{x,0}}.
  {label,1379}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2416}]}.
    {badmatch,{x,0}}.


{function, bp_start_match, 1, 1381}.
  {label,1380}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2427}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,bp_start_match},1}.
  {label,1381}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {test,bs_skip_bits2,
          {f,1382},
          [{x,0},
           {integer,134217728},
           1,
           {field_flags,[{anno,[2427,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}]}.
    {call_only,1,{f,1381}}. % bp_start_match/1
  {label,1382}.
    {bs_match,{f,1383},
              {x,0},
              {commands,[{ensure_at_least,1,1},
                         {integer,2,{literal,[]},1,1,{x,2}}]}}.
    {test,is_eq_exact,{f,1383},[{tr,{x,2},{t_integer,{0,1}}},{integer,1}]}.
    {bs_match,{f,1383},
              {x,0},
              {commands,[{ensure_exactly,48},
                         {'=:=',nil,31,867875125},
                         {'=:=',nil,9,353},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{atom,a},{x,2}]}}.
    return.
  {label,1383}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_match,{f,1384},
              {x,0},
              {commands,[{ensure_at_least,16,1},
                         {integer,2,{literal,[]},16,1,{x,2}}]}}.
    {test,is_eq_exact,
          {f,1384},
          [{tr,{x,2},{t_integer,{0,65535}}},{integer,26725}]}.
    {bs_match,{f,1384},
              {x,0},
              {commands,[{ensure_exactly,32},
                         {'=:=',nil,24,7105647},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{atom,b},{x,2}]}}.
    return.
  {label,1384}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,1380}}.


{function, bp_getpos, 1, 1386}.
  {label,1385}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2434}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,bp_getpos},1}.
  {label,1386}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {test,bs_skip_bits2,
          {f,1387},
          [{x,0},
           {integer,134217720},
           1,
           {field_flags,[{anno,[2434,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}]}.
    {call_only,1,{f,1386}}. % bp_getpos/1
  {label,1387}.
    {bs_match,{f,1389},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {bs_get_position,{x,0},{x,3},3}.
    {bs_match,{f,1388},
              {x,0},
              {commands,[{ensure_at_least,1,1},
                         {integer,4,{literal,[]},1,1,{x,4}}]}}.
    {test,is_eq_exact,{f,1388},[{tr,{x,4},{t_integer,{0,1}}},{integer,1}]}.
    {bs_match,{f,1388},
              {x,0},
              {commands,[{ensure_exactly,48},
                         {'=:=',nil,31,867875125},
                         {'=:=',nil,9,353},
                         {integer,4,{literal,[]},8,1,{x,4}}]}}.
    {test,is_eq_exact,
          {f,1388},
          [{tr,{x,4},{t_integer,{0,255}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{atom,a},{x,2}]}}.
    return.
  {label,1388}.
    {bs_set_position,{x,0},{x,3}}.
    {bs_match,{f,1389},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,is_eq_exact,{f,1389},[{tr,{x,3},{t_integer,{0,255}}},{integer,104}]}.
    {bs_match,{f,1389},
              {x,0},
              {commands,[{ensure_exactly,40},
                         {'=:=',nil,31,850802231},
                         {'=:=',nil,1,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,is_eq_exact,
          {f,1389},
          [{tr,{x,3},{t_integer,{0,255}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{atom,b},{x,2}]}}.
    return.
  {label,1389}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,1385}}.


{function, matching_meets_apply, 1, 1391}.
  {label,1390}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2438}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,matching_meets_apply},1}.
  {label,1391}.
    {allocate,0,0}.
    {move,nil,{x,1}}.
    {move,{literal,<<"/abc">>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2439}]}.
    {call,2,{f,1396}}. % do_matching_meets_apply/2
    {test,is_eq_exact,{f,1394},[{x,0},{literal,<<"abc">>}]}.
    {move,{literal,{erlang,-42}},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2440}]}.
    {call,2,{f,1396}}. % do_matching_meets_apply/2
    {test,is_eq_exact,{f,1393},[{x,0},{integer,42}]}.
    {move,{literal,{erlang,-100}},{x,1}}.
    {move,{atom,no_binary},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2441}]}.
    {call,2,{f,1396}}. % do_matching_meets_apply/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,100}}}]}}.
    {test,is_eq_exact,{f,1392},[{tr,{x,0},{t_integer,{0,100}}},{integer,100}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1392}.
    {badmatch,{x,0}}.
  {label,1393}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2440}]}.
    {badmatch,{x,0}}.
  {label,1394}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2439}]}.
    {badmatch,{x,0}}.


{function, do_matching_meets_apply, 2, 1396}.
  {label,1395}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2444}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,do_matching_meets_apply},
               2}.
  {label,1396}.
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
    {test,bs_start_match3,{f,1399},2,[{x,0}],{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {bs_match,{f,1397},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,is_eq_exact,{f,1397},[{tr,{x,3},{t_integer,{0,255}}},{integer,47}]}.
    {bs_get_tail,{x,0},{x,0},1}.
    {call_only,1,{f,1776}}. % id/1
  {label,1397}.
    {test,is_tuple,
          {f,1398},
          [{tr,{x,1},
               {t_union,none,nil,none,
                        [{{2,{t_atom,[erlang]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[erlang]},
                                     2 => {t_integer,{-100,-42}}}}}],
                        none}}]}.
    {get_tuple_element,{x,1},1,{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2455}]}.
    {call_ext_only,1,{extfunc,erlang,abs,1}}.
  {label,1398}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {move,nil,{x,1}}.
    {jump,{f,1395}}.
  {label,1399}.
    {test,is_tuple,
          {f,1400},
          [{tr,{x,1},
               {t_union,none,nil,none,
                        [{{2,{t_atom,[erlang]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[erlang]},
                                     2 => {t_integer,{-100,-42}}}}}],
                        none}}]}.
    {get_tuple_element,{x,1},1,{x,0}}.
    {call_ext_only,1,{extfunc,erlang,abs,1}}.
  {label,1400}.
    {move,nil,{x,1}}.
    {move,{atom,no_binary},{x,0}}.
    {jump,{f,1395}}.


{function, exceptions_after_match_failure, 1, 1402}.
  {label,1401}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2459}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,exceptions_after_match_failure},
               1}.
  {label,1402}.
    {allocate,1,0}.
    {'catch',{y,0},{f,1403}}.
    {move,{atom,atom},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2460}]}.
    {call,1,{f,1406}}. % do_exceptions_after_match_failure/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1403}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1404},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1404},[{x,1},2,{atom,badarith}]}.
    {move,{literal,<<0,1,103,117,114,107,97>>},{x,0}}.
    {line,[{scope,[1,2]},{location,"bs_match_dialyzer_SUITE.erl",2461}]}.
    {call,1,{f,1406}}. % do_exceptions_after_match_failure/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{float,2.0},{x,0}}.
    {call_last,1,{f,1406},1}. % do_exceptions_after_match_failure/1
  {label,1404}.
    {line,[{scope,[0]},{location,"bs_match_dialyzer_SUITE.erl",2460}]}.
    {badmatch,{x,0}}.


{function, do_exceptions_after_match_failure, 1, 1406}.
  {label,1405}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2464}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,do_exceptions_after_match_failure},
               1}.
  {label,1406}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[atom]},
                                   none,
                                   {t_float,{2.0,2.0}},
                                   none,
                                   {t_bitstring,8,false}}},
                    accepts_match_context]}}.
    {test,bs_start_match3,{f,1408},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {bs_match,{f,1407},
              {x,1},
              {commands,[{ensure_exactly,56},
                         {skip,16},
                         {'=:=',nil,31,867875125},
                         {'=:=',nil,9,353}]}}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1407}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2467}]}.
    {gc_bif,'/',{f,0},1,[{tr,{x,0},{t_bitstring,8,false}},{float,2.0}],{x,0}}.
    return.
  {label,1408}.
    {fconv,{tr,{x,0},
               {t_union,{t_atom,[atom]},none,{t_float,{2.0,2.0}},none,none}},
           {fr,0}}.
    {fmove,{float,2.0},{fr,1}}.
    {bif,fdiv,{f,0},[{fr,0},{fr,1}],{fr,0}}.
    {move,{atom,ok},{x,0}}.
    return.


{function, bad_phi_paths, 1, 1410}.
  {label,1409}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2472}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,bad_phi_paths},1}.
  {label,1410}.
    {allocate,0,0}.
    {move,{literal,<<"gurka">>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2473}]}.
    {call,1,{f,1776}}. % id/1
    {call,1,{f,1413}}. % bad_phi_paths_1/1
    {test,is_eq_exact,{f,1411},[{x,0},{literal,<<"gurka">>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1411}.
    {badmatch,{x,0}}.


{function, bad_phi_paths_1, 1, 1413}.
  {label,1412}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2476}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,bad_phi_paths_1},1}.
  {label,1413}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1415},1,[{x,0}],{x,1}}.
    {bs_match,{f,1414},
              {x,1},
              {commands,[{ensure_at_least,0,8},{get_tail,2,1,{x,0}}]}}.
    {call_only,1,{f,1776}}. % id/1
  {label,1414}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2477}]}.
    {case_end,{x,0}}.
  {label,1415}.
    {test,is_map,{f,1416},[{x,0}]}.
    {allocate,0,1}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2479}]}.
    {call,1,{f,1776}}. % id/1
    {call_last,1,{f,1776},0}. % id/1
  {label,1416}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2477}]}.
    {case_end,{x,0}}.


{function, combine_empty_segments, 1, 1418}.
  {label,1417}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2483}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,combine_empty_segments},1}.
  {label,1418}.
    {allocate,0,0}.
    {move,{literal,<<0,1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2484}]}.
    {call,1,{f,1421}}. % combine_empty_segments_1/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,false}}]}}.
    {test,is_eq_exact,
          {f,1419},
          [{tr,{x,0},{t_bitstring,32,false}},{literal,<<0,1,2,3>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1419}.
    {badmatch,{x,0}}.


{function, combine_empty_segments_1, 1, 1421}.
  {label,1420}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2487}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,combine_empty_segments_1},
               1}.
  {label,1421}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,32,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_tail,{x,0},{x,0},1}.
    return.


{function, hangs_forever, 1, 1423}.
  {label,1422}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2494}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,hangs_forever},1}.
  {label,1423}.
    {allocate_heap,0,{alloc,[{words,1},{floats,0},{funs,1}]},1}.
    {make_fun3,{f,1869},0,0,{x,0},{list,[{x,0}]}}.
    {'%',{var_info,{x,0},[{fun_type,none}]}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2495}]}.
    {call,1,{f,1776}}. % id/1
    {test,is_function,{f,1424},[{x,0}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1424}.
    {badmatch,{atom,false}}.


{function, hangs_forever_1, 1, 1426}.
  {label,1425}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2498}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,hangs_forever_1},1}.
  {label,1426}.
    {call_only,1,{f,1426}}. % hangs_forever_1/1


{function, bs_saved_position_units, 1, 1428}.
  {label,1427}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2505}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,bs_saved_position_units},
               1}.
  {label,1428}.
    {test,is_list,{f,1427},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<0,1,2,3,4,5,6,7,8,9>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2506}]}.
    {call,1,{f,1776}}. % id/1
    {call,1,{f,1432}}. % bspu_1/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {test,is_eq_exact,
          {f,1430},
          [{tr,{x,0},{t_list,{t_bitstring,8,false},nil}},
           {literal,[<<0,1,2,3,4>>,<<5,6,7,8,9>>]}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2507}]}.
    {call,1,{f,1776}}. % id/1
    {call,1,{f,1432}}. % bspu_1/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {test,is_nil,{f,1429},[{tr,{x,0},{t_list,{t_bitstring,8,false},nil}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1429}.
    {badmatch,{x,0}}.
  {label,1430}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2506}]}.
    {badmatch,{x,0}}.


{function, bspu_1, 1, 1432}.
  {label,1431}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2511}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,bspu_1},1}.
  {label,1432}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1431},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {bs_match,{f,1433},
              {x,1},
              {commands,[{ensure_at_least,0,8},{get_tail,2,8,{x,2}}]}}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,3},3}.
    {test,is_eq_exact,
          {f,1433},
          [{tr,{x,2},{t_bitstring,8,false}},{tr,{x,3},{t_bitstring,8,false}}]}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,1866}}. % '-bspu_1/1-lc$^0/1-0-'/1
  {label,1433}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,1431}}.


{function, empty_matches, 1, 1435}.
  {label,1434}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2515}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,empty_matches},1}.
  {label,1435}.
    {test,is_list,{f,1434},[{x,0}]}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{literal,<<1,2,3,4:4>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2516}]}.
    {call,1,{f,1452}}. % em_1/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,#{2 => {t_bitstring,4,false}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1450},[{x,1},{literal,<<>>}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_match,{f,1450},
              {x,1},
              {commands,[{ensure_exactly,28},{'=:=',nil,28,1056820}]}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",2517}]}.
    {call,1,{f,1452}}. % em_1/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,#{2 => {t_bitstring,4,false}}}}]}}.
    {test,is_eq_exact,
          {f,1449},
          [{tr,{x,0},{t_tuple,2,true,#{2 => {t_bitstring,4,false}}}},
           {literal,{<<>>,<<1,2,3>>}}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",2518}]}.
    {call,1,{f,1452}}. % em_1/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,#{2 => {t_bitstring,4,false}}}}]}}.
    {test,is_eq_exact,
          {f,1448},
          [{tr,{x,0},{t_tuple,2,true,#{2 => {t_bitstring,4,false}}}},
           {literal,{<<>>,<<>>}}]}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",2520}]}.
    {call,1,{f,1776}}. % id/1
    {call,1,{f,1456}}. % em_2/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,true}}]}}.
    {test,is_eq_exact,
          {f,1447},
          [{tr,{x,0},{t_bitstring,16,true}},{literal,<<0,1,0,2,0,3>>}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",2521}]}.
    {call,1,{f,1776}}. % id/1
    {call,1,{f,1456}}. % em_2/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,true}}]}}.
    {test,is_eq_exact,
          {f,1446},
          [{tr,{x,0},{t_bitstring,16,true}},{literal,<<>>}]}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",2523}]}.
    {call,1,{f,1776}}. % id/1
    {call,1,{f,1458}}. % em_3/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {test,is_eq_exact,
          {f,1445},
          [{tr,{x,0},{t_bitstring,1,false}},{literal,<<1,2,3>>}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",2524}]}.
    {call,1,{f,1776}}. % id/1
    {call,1,{f,1458}}. % em_3/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {test,is_eq_exact,
          {f,1444},
          [{tr,{x,0},{t_bitstring,1,false}},{literal,<<>>}]}.
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",2526}]}.
    {call,1,{f,1776}}. % id/1
    {test,bs_start_match3,{f,1443},1,[{x,0}],{x,1}}.
    {bs_match,{f,1443},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",2527}]}.
    {call,1,{f,1776}}. % id/1
    {test,is_eq_exact,{f,1442},[{x,0},{integer,0}]}.
    {move,{literal,<<>>},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",2529}]}.
    {call,2,{f,1463}}. % em_4/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,2},{f,1436}}.
    {move,{literal,<<0:1>>},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",2530}]}.
    {call,2,{f,1463}}. % em_4/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1436}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,1441},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1441},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,1441},[{x,1}]}.
    {'catch',{y,1},{f,1437}}.
    {move,{literal,<<>>},{x,1}}.
    {move,{literal,<<0:1>>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_dialyzer_SUITE.erl",2531}]}.
    {call,2,{f,1463}}. % em_4/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1437}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,1440},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1440},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,1440},[{x,1}]}.
    {'catch',{y,0},{f,1438}}.
    {move,{literal,<<0:1>>},{x,1}}.
    {move,{literal,<<0:1>>},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_dialyzer_SUITE.erl",2532}]}.
    {call,2,{f,1463}}. % em_4/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1438}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1439},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1439},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,1439},[{x,1}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,3}.
    return.
  {label,1439}.
    {line,[{scope,[0]},{location,"bs_match_dialyzer_SUITE.erl",2532}]}.
    {badmatch,{x,0}}.
  {label,1440}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",2531}]}.
    {badmatch,{x,0}}.
  {label,1441}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",2530}]}.
    {badmatch,{x,0}}.
  {label,1442}.
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",2527}]}.
    {badmatch,{x,0}}.
  {label,1443}.
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",2526}]}.
    {badmatch,{x,0}}.
  {label,1444}.
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",2524}]}.
    {badmatch,{x,0}}.
  {label,1445}.
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",2523}]}.
    {badmatch,{x,0}}.
  {label,1446}.
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",2521}]}.
    {badmatch,{x,0}}.
  {label,1447}.
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",2520}]}.
    {badmatch,{x,0}}.
  {label,1448}.
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",2518}]}.
    {badmatch,{x,0}}.
  {label,1449}.
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",2517}]}.
    {badmatch,{x,0}}.
  {label,1450}.
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",2516}]}.
    {badmatch,{x,0}}.


{function, em_1, 1, 1452}.
  {label,1451}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2536}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,em_1},1}.
  {label,1452}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,4,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,1453},
              {x,0},
              {commands,[{ensure_at_least,0,1},
                         {binary,2,{literal,[]},0,8,{x,2}}]}}.
    {allocate,3,3}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
    {bs_get_tail,{x,0},{y,0},3}.
    {move,{x,2},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2539}]}.
    {call_ext,1,{extfunc,binary,copy,1}}.
    {bs_set_position,{y,2},{y,1}}.
    {bs_get_tail,{y,2},{x,1},1}.
    {test,is_eq_exact,
          {f,1454},
          [{tr,{y,0},{t_bitstring,4,false}},{tr,{x,1},{t_bitstring,4,false}}]}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {deallocate,3}.
    return.
  {label,1453}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2538}]}.
    {badmatch,{x,0}}.
  {label,1454}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{x,0},{y,0}]}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2537}]}.
    {badmatch,{x,0}}.


{function, em_2, 1, 1456}.
  {label,1455}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2544}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,em_2},1}.
  {label,1456}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,1862},1}. % '-em_2/1-lbc$^0/2-0-'/2


{function, em_3, 1, 1458}.
  {label,1457}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2551}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,em_3},1}.
  {label,1458}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1457},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {bs_match,{f,1459},
              {x,1},
              {commands,[{ensure_at_least,0,1},
                         {binary,2,{literal,[]},0,8,{x,0}}]}}.
    {allocate,1,2}.
    {init_yregs,{list,[{y,0}]}}.
    {bs_get_tail,{x,1},{y,0},2}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2552}]}.
    {call,1,{f,1461}}. % em_3_1/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1459}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,1457}}.


{function, em_3_1, 1, 1461}.
  {label,1460}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2555}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,em_3_1},1}.
  {label,1461}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    return.


{function, em_4, 2, 1463}.
  {label,1462}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2558}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,em_4},2}.
  {label,1463}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,1,false}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,false}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {bs_match,{f,1464},{x,0},{commands,[{ensure_at_least,0,1},{skip,0}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,3}}.
    {bs_match,{f,1464},{x,3},{commands,[{ensure_at_least,0,1},{skip,0}]}}.
    {bs_match,{f,1464},{x,0},{commands,[{ensure_exactly,0}]}}.
    {bs_match,{f,1464},{x,3},{commands,[{ensure_exactly,0}]}}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1464}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {jump,{f,1462}}.


{function, trim_bs_start_match_resume, 1, 1466}.
  {label,1465}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2563}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,trim_bs_start_match_resume},
               1}.
  {label,1466}.
    {test,is_list,{f,1465},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2564}]}.
    {call,1,{f,1776}}. % id/1
    {test,bs_start_match3,{f,1468},1,[{x,0}],{x,1}}.
    {bs_match,{f,1468},{x,1},{commands,[{ensure_at_least,0,8}]}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2565}]}.
    {call,1,{f,1470}}. % trim_bs_start_match_resume_1/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,1467},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1467}.
    {badmatch,{x,0}}.
  {label,1468}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2564}]}.
    {badmatch,{x,0}}.


{function, trim_bs_start_match_resume_1, 1, 1470}.
  {label,1469}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2568}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,trim_bs_start_match_resume_1},
               1}.
  {label,1470}.
    {'%',{var_info,{x,0},[{type,{t_bs_context,8}},accepts_match_context]}}.
    {allocate,1,1}.
    {init_yregs,{list,[{y,0}]}}.
    {bs_start_match4,{atom,resume},1,{x,0},{x,0}}.
    {bs_get_tail,{x,0},{y,0},1}.
    {move,{y,0},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2569}]}.
    {call,1,{f,1776}}. % id/1
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, expand_and_squeeze, 1, 1472}.
  {label,1471}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2572}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,expand_and_squeeze},1}.
  {label,1472}.
    {test,is_list,{f,1471},[{x,0}]}.
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
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2574}]}.
    {call,2,{f,1476}}. % ensure_squeezed/2
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
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2578}]}.
    {call,2,{f,1476}}. % ensure_squeezed/2
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
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2582}]}.
    {call,2,{f,1476}}. % ensure_squeezed/2
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
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2586}]}.
    {call,2,{f,1476}}. % ensure_squeezed/2
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
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2591}]}.
    {call,2,{f,1476}}. % ensure_squeezed/2
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
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2596}]}.
    {call,2,{f,1476}}. % ensure_squeezed/2
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
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2604}]}.
    {call,1,{f,1479}}. % binary_match_to_asm/1
    {test,is_nonempty_list,{f,1474},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_tagged_tuple,{f,1474},[{x,1},4,{atom,bs_match}]}.
    {get_tuple_element,{x,1},1,{x,3}}.
    {test,is_tagged_tuple,{f,1474},[{x,3},2,{atom,f}]}.
    {get_tuple_element,{x,1},3,{x,1}}.
    {test,is_tagged_tuple,{f,1474},[{x,1},2,{atom,commands}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,1474},[{x,1}]}.
    {get_list,{x,1},{x,3},{x,1}}.
    {test,is_tagged_tuple,{f,1474},[{x,3},3,{atom,ensure_at_least}]}.
    {get_tuple_element,{x,3},2,{x,4}}.
    {test,is_eq_exact,{f,1474},[{x,4},{integer,1}]}.
    {test,is_nonempty_list,{f,1474},[{x,1}]}.
    {get_list,{x,1},{x,4},{x,1}}.
    {test,is_tagged_tuple,{f,1474},[{x,4},6,{atom,integer}]}.
    {get_tuple_element,{x,4},4,{x,5}}.
    {test,is_eq_exact,{f,1474},[{x,5},{integer,1}]}.
    {test,is_nil,{f,1474},[{x,1}]}.
    {get_tuple_element,{x,4},3,{x,1}}.
    {get_tuple_element,{x,3},1,{x,3}}.
    {test,is_eq_exact,{f,1474},[{x,1},{x,3}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},3}.
    {make_fun3,{f,1859},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[false,true]}}]}}.
    {move,{x,2},{x,1}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2615}]}.
    {call_ext,2,{extfunc,lists,any,2}}.
    {test,is_eq_exact,{f,1473},[{x,0},{atom,true}]}.
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
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2618}]}.
    {call,2,{f,1476}}. % ensure_squeezed/2
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
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2622}]}.
    {call,2,{f,1476}}. % ensure_squeezed/2
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
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2627}]}.
    {call,2,{f,1476}}. % ensure_squeezed/2
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
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2632}]}.
    {call,2,{f,1476}}. % ensure_squeezed/2
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
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2637}]}.
    {call,2,{f,1476}}. % ensure_squeezed/2
    {'%',{var_info,{x,0},[{type,{t_cons,any,any}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1473}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2615}]}.
    {badmatch,{atom,false}}.
  {label,1474}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2601}]}.
    {badmatch,{x,0}}.


{function, ensure_squeezed, 2, 1476}.
  {label,1475}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2656}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,ensure_squeezed},2}.
  {label,1476}.
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
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2660}]}.
    {call,1,{f,1479}}. % binary_match_to_asm/1
    {test,is_nonempty_list,{f,1477},[{x,0}]}.
    {get_hd,{x,0},{x,1}}.
    {test,is_tagged_tuple,{f,1477},[{x,1},4,{atom,bs_match}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_tagged_tuple,{f,1477},[{x,2},2,{atom,f}]}.
    {get_tuple_element,{x,1},3,{x,1}}.
    {test,is_tagged_tuple,{f,1477},[{x,1},2,{atom,commands}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,1477},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_tagged_tuple,{f,1477},[{x,2},3,{atom,ensure_at_least}]}.
    {get_tuple_element,{x,2},2,{x,3}}.
    {test,is_eq_exact,{f,1477},[{x,3},{integer,1}]}.
    {test,is_nonempty_list,{f,1477},[{x,1}]}.
    {get_list,{x,1},{x,3},{x,1}}.
    {test,is_tagged_tuple,{f,1477},[{x,3},6,{atom,integer}]}.
    {get_tuple_element,{x,3},4,{x,4}}.
    {test,is_eq_exact,{f,1477},[{x,4},{integer,1}]}.
    {test,is_nil,{f,1477},[{x,1}]}.
    {get_tuple_element,{x,2},1,{x,1}}.
    {test,is_eq_exact,{f,1477},[{x,1},{tr,{y,0},{t_integer,{8,64}}}]}.
    {get_tuple_element,{x,3},3,{x,1}}.
    {test,is_eq_exact,{f,1477},[{x,1},{tr,{y,0},{t_integer,{8,64}}}]}.
    {deallocate,1}.
    return.
  {label,1477}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2657}]}.
    {badmatch,{x,0}}.


{function, binary_match_to_asm, 1, 1479}.
  {label,1478}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2662}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,binary_match_to_asm},1}.
  {label,1479}.
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
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2667}]}.
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
    {call,1,{f,1856}}. % '-binary_match_to_asm/1-lc$^0/1-0-'/1
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
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2671}]}.
    {call_ext,1,{extfunc,erl_anno,new,1}}.
    {move,{x,0},{y,1}}.
    {move,{integer,2},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2672}]}.
    {call_ext,1,{extfunc,erl_anno,new,1}}.
    {move,{x,0},{y,0}}.
    {move,{integer,3},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2673}]}.
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
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2677}]}.
    {call_ext,2,{extfunc,compile,forms,2}}.
    {test,is_tagged_tuple,{f,1482},[{x,0},4,{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,1482},[{x,1},{atom,match_to_asm}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_tagged_tuple,{f,1482},[{x,1},5,{atom,match_to_asm}]}.
    {get_tuple_element,{x,1},3,{x,0}}.
    {test,is_nonempty_list,{f,1481},[{x,0}]}.
    {get_hd,{x,0},{x,1}}.
    {test,is_tagged_tuple,{f,1481},[{x,1},5,{atom,function}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,1481},[{x,2},{atom,example}]}.
    {get_tuple_element,{x,1},2,{x,2}}.
    {test,is_eq_exact,{f,1481},[{x,2},{integer,1}]}.
    {get_tuple_element,{x,1},3,{x,2}}.
    {test,is_eq_exact,{f,1481},[{x,2},{integer,2}]}.
    {get_tuple_element,{x,1},4,{x,0}}.
    {test,is_nonempty_list,{f,1480},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_tagged_tuple,{f,1480},[{x,1},2,{atom,label}]}.
    {test,is_nonempty_list,{f,1480},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tagged_tuple,{f,1480},[{x,1},2,{atom,line}]}.
    {test,is_nonempty_list,{f,1480},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tagged_tuple,{f,1480},[{x,1},4,{atom,func_info}]}.
    {test,is_nonempty_list,{f,1480},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tagged_tuple,{f,1480},[{x,1},2,{atom,label}]}.
    {test,is_nonempty_list,{f,1480},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tagged_tuple,{f,1480},[{x,1},2,{atom,'%'}]}.
    {test,is_nonempty_list,{f,1480},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tagged_tuple,{f,1480},[{x,1},6,{atom,test}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,{f,1480},[{x,1},{atom,bs_start_match3}]}.
    {test,is_nonempty_list,{f,1480},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tagged_tuple,{f,1480},[{x,1},4,{atom,bs_get_position}]}.
    {move,{x,2},{x,0}}.
    {deallocate,0}.
    return.
  {label,1480}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2680}]}.
    {badmatch,{x,0}}.
  {label,1481}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2679}]}.
    {badmatch,{x,0}}.
  {label,1482}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2676}]}.
    {badmatch,{x,0}}.


{function, many_clauses, 1, 1484}.
  {label,1483}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2684}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,many_clauses},1}.
  {label,1484}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{integer,200},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2687}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2688}]}.
    {call,1,{f,1852}}. % '-many_clauses/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {move,{x,0},{y,0}}.
    {move,{atom,bs_match_dialyzer_SUITE_many_clauses},{x,0}}.
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
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2689}]}.
    {call_ext,1,{extfunc,merl,tree,1}}.
    {move,{x,0},{y,0}}.
    {move,{atom,bs_match_dialyzer_SUITE},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2696}]}.
    {call_ext,1,{extfunc,test_lib,opt_opts,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,1}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2697}]}.
    {call_ext,2,{extfunc,merl,compile_and_load,2}}.
    {test,is_tagged_tuple,{f,1485},[{x,0},2,{atom,ok}]}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2704}]}.
    {call,1,{f,1846}}. % '-many_clauses/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1485}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2697}]}.
    {badmatch,{x,0}}.


{function, one_clause, 1, 1487}.
  {label,1486}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2707}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,one_clause},1}.
  {label,1487}.
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
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2708}]}.
    {call_ext_last,1,{extfunc,merl,tree,1},1}.


{function, gh_6410, 1, 1489}.
  {label,1488}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2711}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,gh_6410},1}.
  {label,1489}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2712}]}.
    {call,1,{f,1497}}. % do_gh_6410/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,0}}}]}}.
    {'catch',{y,2},{f,1490}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2713}]}.
    {call,1,{f,1497}}. % do_gh_6410/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,0}}}]}}.
  {label,1490}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,1495},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1495},[{x,1}]}.
    {test,test_arity,{f,1495},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,1495},[{x,2},{literal,{case_clause,<<>>}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,1495},[{x,1}]}.
    {'catch',{y,1},{f,1491}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",2714}]}.
    {call,1,{f,1497}}. % do_gh_6410/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1491}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,1494},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1494},[{x,1}]}.
    {test,test_arity,{f,1494},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,1494},[{x,2},{literal,{case_clause,a}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,1494},[{x,1}]}.
    {'catch',{y,0},{f,1492}}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",2715}]}.
    {call,1,{f,1497}}. % do_gh_6410/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1492}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1493},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1493},[{x,1},2,{atom,badarith}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,1493},[{x,1}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,3}.
    return.
  {label,1493}.
    {line,[{scope,[0]},{location,"bs_match_dialyzer_SUITE.erl",2715}]}.
    {badmatch,{x,0}}.
  {label,1494}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",2714}]}.
    {badmatch,{x,0}}.
  {label,1495}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",2713}]}.
    {badmatch,{x,0}}.


{function, do_gh_6410, 1, 1497}.
  {label,1496}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2719}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,do_gh_6410},1}.
  {label,1497}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[a]},
                                   nil,none,none,
                                   {t_bitstring,8,false}}},
                    accepts_match_context]}}.
    {test,bs_start_match3,{f,1500},1,[{x,0}],{x,1}}.
    {bs_match,{f,1498},{x,1},{commands,[{ensure_exactly,8}]}}.
    {move,{integer,0},{x,0}}.
    return.
  {label,1498}.
    {bs_match,{f,1499},
              {x,1},
              {commands,[{ensure_exactly,8},{get_tail,2,1,{x,0}}]}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2722}]}.
    {gc_bif,'+',{f,0},1,[{tr,{x,0},{t_bitstring,8,false}}],{x,0}}.
    return.
  {label,1499}.
    {bs_get_tail,{x,1},{x,0},2}.
    {case_end,{x,0}}.
  {label,1500}.
    {test,is_nil,
          {f,1501},
          [{tr,{x,0},{t_union,{t_atom,[a]},nil,none,none,none}}]}.
    {gc_bif,'+',{f,0},0,[nil],{x,0}}.
    return.
  {label,1501}.
    {case_end,{atom,a}}.


{function, bs_match, 1, 1503}.
  {label,1502}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2729}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,bs_match},1}.
  {label,1503}.
    {allocate,4,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3}]}}.
    {move,{literal,<<1,0>>},{x,1}}.
    {move,{atom,whatever},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2730}]}.
    {call,2,{f,1520}}. % do_bs_match_1/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {test,is_eq_exact,
          {f,1518},
          [{tr,{x,0},{t_bitstring,16,false}},{literal,<<1,0>>}]}.
    {move,{literal,<<1,1>>},{x,1}}.
    {move,{atom,whatever},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_dialyzer_SUITE.erl",2731}]}.
    {call,2,{f,1520}}. % do_bs_match_1/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {test,is_eq_exact,
          {f,1517},
          [{tr,{x,0},{t_bitstring,16,false}},{literal,<<1,1>>}]}.
    {move,{literal,{a,b,c}},{x,1}}.
    {move,{atom,whatever},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_dialyzer_SUITE.erl",2732}]}.
    {call,2,{f,1520}}. % do_bs_match_1/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_atom,[a]},
                                     2 => {t_atom,[b]},
                                     3 => {t_atom,[c]}}}}]}}.
    {'catch',{y,3},{f,1504}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_dialyzer_SUITE.erl",2734}]}.
    {call,1,{f,1524}}. % do_bs_match_gh_6551a/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
  {label,1504}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,1516},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1516},[{x,1},2,{atom,badarg}]}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_dialyzer_SUITE.erl",2735}]}.
    {call,1,{f,1524}}. % do_bs_match_gh_6551a/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1505},[{x,0},{atom,true}]}.
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",2735}]}.
    {badmatch,{atom,true}}.
  {label,1505}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",2737}]}.
    {call,1,{f,1528}}. % do_bs_match_gh_6551b/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,0}},
                                     2 => {t_integer,{0,0}}}}}]}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",2738}]}.
    {call,1,{f,1528}}. % do_bs_match_gh_6551b/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_bitstring,8,false},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
          {f,1515},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_bitstring,8,false},
                          2 => {t_bitstring,8,false}}}},
           {literal,{<<"*">>,<<"*">>}}]}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",2740}]}.
    {call,1,{f,1532}}. % do_bs_match_gh_6613/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[ok]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,1514},
          [{tr,{x,0},
               {t_union,{t_atom,[ok]},none,none,none,{t_bitstring,8,false}}},
           {atom,ok}]}.
    {move,{literal,<<0,0>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",2741}]}.
    {call,1,{f,1532}}. % do_bs_match_gh_6613/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[ok]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,1513},
          [{tr,{x,0},
               {t_union,{t_atom,[ok]},none,none,none,{t_bitstring,8,false}}},
           {literal,<<0,0>>}]}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",2743}]}.
    {call,1,{f,1776}}. % id/1
    {call,1,{f,1540}}. % do_bs_match_gh_6660/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,1512},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<"abc">>}]}.
    {'catch',{y,2},{f,1506}}.
    {move,{atom,abc},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",2744}]}.
    {call,1,{f,1776}}. % id/1
    {call,1,{f,1540}}. % do_bs_match_gh_6660/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
  {label,1506}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,1511},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1511},[{x,1}]}.
    {test,test_arity,{f,1511},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1511},[{x,1},{literal,{try_clause,abc}}]}.
    {'catch',{y,1},{f,1507}}.
    {move,{literal,<<"1000">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",2746}]}.
    {call,1,{f,1776}}. % id/1
    {call,1,{f,1544}}. % do_bs_match_gh_6755/1
    {'%',{var_info,{x,0},[{type,{t_atom,[b]}}]}}.
  {label,1507}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,1510},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1510},[{x,1}]}.
    {test,test_arity,{f,1510},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,1510},[{x,1},2,{atom,case_clause}]}.
    {'catch',{y,0},{f,1508}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_dialyzer_SUITE.erl",2748}]}.
    {call,1,{f,1552}}. % do_bs_match_gh_7467/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1508}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1509},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1509},[{x,1}]}.
    {test,test_arity,{f,1509},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1509},[{x,1},{literal,{badmatch,<<>>}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,4}.
    return.
  {label,1509}.
    {line,[{scope,[0]},{location,"bs_match_dialyzer_SUITE.erl",2748}]}.
    {badmatch,{x,0}}.
  {label,1510}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",2746}]}.
    {badmatch,{x,0}}.
  {label,1511}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",2744}]}.
    {badmatch,{x,0}}.
  {label,1512}.
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",2743}]}.
    {badmatch,{x,0}}.
  {label,1513}.
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",2741}]}.
    {badmatch,{x,0}}.
  {label,1514}.
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",2740}]}.
    {badmatch,{x,0}}.
  {label,1515}.
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",2738}]}.
    {badmatch,{x,0}}.
  {label,1516}.
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",2734}]}.
    {badmatch,{x,0}}.
  {label,1517}.
    {line,[{scope,"\b"},{location,"bs_match_dialyzer_SUITE.erl",2731}]}.
    {badmatch,{x,0}}.
  {label,1518}.
    {line,[{scope,"\b"},{location,"bs_match_dialyzer_SUITE.erl",2730}]}.
    {badmatch,{x,0}}.


{function, do_bs_match_1, 2, 1520}.
  {label,1519}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2752}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,do_bs_match_1},2}.
  {label,1520}.
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
    {test,bs_start_match3,{f,1522},2,[{x,1}],{x,0}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {bs_get_position,{x,0},{y,0},1}.
    {bs_match,{f,1521},
              {y,1},
              {commands,[{ensure_at_least,16,1},{skip,8},{'=:=',nil,8,0}]}}.
    {bs_match,{f,1521},{x,0},{commands,[{ensure_exactly,0}]}}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2755}]}.
    {call,1,{f,1776}}. % id/1
  {label,1521}.
    {bs_set_position,{y,1},{y,0}}.
    {bs_get_tail,{y,1},{x,0},0}.
    {deallocate,2}.
    return.
  {label,1522}.
    {move,{x,1},{x,0}}.
    return.


{function, do_bs_match_gh_6551a, 1, 1524}.
  {label,1523}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2761}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,do_bs_match_gh_6551a},1}.
  {label,1524}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_match,{f,1525},{x,0},{commands,[{ensure_exactly,0}]}}.
    {move,nil,{x,1}}.
    {move,{atom,true},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2764}]}.
    {call_ext_only,2,{extfunc,erlang,'--',2}}.
  {label,1525}.
    {bs_match,{f,1526},
              {x,0},
              {commands,[{ensure_exactly,8},
                         {get_tail,1,1,{x,1}},
                         {get_tail,2,1,{x,0}}]}}.
    {bif,'=/=',
         {f,0},
         [{tr,{x,1},{t_bitstring,8,false}},{tr,{x,0},{t_bitstring,8,false}}],
         {x,0}}.
    return.
  {label,1526}.
    {bs_get_tail,{x,0},{x,0},1}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2762}]}.
    {case_end,{x,0}}.


{function, do_bs_match_gh_6551b, 1, 1528}.
  {label,1527}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2770}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,do_bs_match_gh_6551b},1}.
  {label,1528}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,none,
                                   {t_integer,{0,0}},
                                   none,
                                   {t_bitstring,8,false}}},
                    accepts_match_context]}}.
    {test,bs_start_match3,{f,1530},1,[{x,0}],{x,0}}.
    {bs_match,{f,1529},
              {x,0},
              {commands,[{ensure_exactly,8},
                         {get_tail,1,1,{x,1}},
                         {get_tail,2,1,{x,0}}]}}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    return.
  {label,1529}.
    {bs_get_tail,{x,0},{x,0},1}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2772}]}.
    {case_end,{x,0}}.
  {label,1530}.
    {move,{literal,{0,0}},{x,0}}.
    return.


{function, do_bs_match_gh_6613, 1, 1532}.
  {label,1531}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2779}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,do_bs_match_gh_6613},1}.
  {label,1532}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,1533},{x,0},{commands,[{ensure_exactly,8}]}}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1533}.
    {allocate,4,2}.
    {init_yregs,{list,[{y,2},{y,3}]}}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {'try',{y,3},{f,1535}}.
    {'try',{y,2},{f,1534}}.
    {bs_match,{f,1538},
              {y,1},
              {commands,[{ensure_exactly,16},
                         {integer,1,{literal,[]},8,1,{x,1}},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,is_eq_exact,
          {f,1538},
          [{tr,{x,2},{t_integer,{0,255}}},{tr,{x,1},{t_integer,{0,255}}}]}.
    {try_end,{y,2}}.
    {try_end,{y,3}}.
    {jump,{f,1536}}.
  {label,1534}.
    {try_case,{y,2}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.
  {label,1535}.
    {try_case,{y,3}}.
    {test,is_eq_exact,
          {f,1537},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,throw}]}.
  {label,1536}.
    {bs_set_position,{y,1},{y,0}}.
    {bs_get_tail,{y,1},{x,0},0}.
    {deallocate,4}.
    return.
  {label,1537}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.
  {label,1538}.
    {line,[{scope,[5]},{location,"bs_match_dialyzer_SUITE.erl",2783}]}.
    {try_case_end,{x,0}}.


{function, do_bs_match_gh_6660, 1, 1540}.
  {label,1539}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2797}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,do_bs_match_gh_6660},1}.
  {label,1540}.
    {allocate,1,1}.
    {'try',{y,0},{f,1541}}.
    {test,bs_start_match3,{f,1542},1,[{x,0}],{x,1}}.
    {bs_match,{f,1542},
              {x,1},
              {commands,[{ensure_at_least,0,8},{get_tail,2,8,{x,0}}]}}.
    {try_end,{y,0}}.
    {deallocate,1}.
    return.
  {label,1541}.
    {try_case,{y,0}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.
  {label,1542}.
    {line,[{scope,[3]},{location,"bs_match_dialyzer_SUITE.erl",2798}]}.
    {try_case_end,{x,0}}.


{function, do_bs_match_gh_6755, 1, 1544}.
  {label,1543}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2809}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,do_bs_match_gh_6755},1}.
  {label,1544}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1550},1,[{x,0}],{x,1}}.
    {allocate,2,2}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,1}}.
    {bs_get_position,{x,1},{y,0},2}.
    {bs_match,{f,1548},
              {y,1},
              {commands,[{ensure_at_least,32,1},
                         {'=:=',nil,16,12592},
                         {integer,2,{literal,[]},16,1,{x,0}}]}}.
    {select_val,{tr,{x,0},{t_integer,{0,65535}}},
                {f,1548},
                {list,[{integer,12336},{f,1546},{integer,12337},{f,1545}]}}.
  {label,1545}.
    {bs_match,{f,1548},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{atom,test2},{x,0}}.
    {jump,{f,1547}}.
  {label,1546}.
    {bs_match,{f,1548},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{atom,test},{x,0}}.
  {label,1547}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2815}]}.
    {call_ext,1,{extfunc,erlang,atom_to_list,1}}.
    {bs_set_position,{y,1},{y,0}}.
    {bs_get_tail,{y,1},{x,0},0}.
    {test,is_eq_exact,
          {f,1549},
          [{tr,{x,0},{t_bitstring,1,false}},{literal,<<"b">>}]}.
    {move,{atom,b},{x,0}}.
    {deallocate,2}.
    return.
  {label,1548}.
    {bs_set_position,{x,1},{y,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2810}]}.
    {case_end,{x,0}}.
  {label,1549}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2817}]}.
    {case_end,{x,0}}.
  {label,1550}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2810}]}.
    {case_end,{x,0}}.


{function, do_bs_match_gh_7467, 1, 1552}.
  {label,1551}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2821}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,do_bs_match_gh_7467},1}.
  {label,1552}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,256}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_match,{f,1553},{x,0},{commands,[{ensure_exactly,1}]}}.
    {call_only,1,{f,1552}}. % do_bs_match_gh_7467/1
  {label,1553}.
    {bs_get_tail,{x,0},{x,0},1}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2822}]}.
    {badmatch,{x,0}}.


{function, binary_aliases, 1, 1555}.
  {label,1554}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2827}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,binary_aliases},1}.
  {label,1555}.
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
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2829}]}.
    {call,1,{f,1776}}. % id/1
    {call,1,{f,1843}}. % '-binary_aliases/1-fun-0-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,255}}}}}]}}.
    {test,is_eq_exact,
          {f,1650},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,255}},2 => {t_integer,{0,255}}}}},
           {literal,{42,42}}]}.
    {move,{literal,<<"c">>},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_dialyzer_SUITE.erl",2830}]}.
    {call,1,{f,1776}}. % id/1
    {call,1,{f,1843}}. % '-binary_aliases/1-fun-0-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,255}}}}}]}}.
    {test,is_eq_exact,
          {f,1649},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,255}},2 => {t_integer,{0,255}}}}},
           {literal,{99,99}}]}.
    {move,{literal,{ba_foo,<<"ÿ">>,undefined,undefined}},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_dialyzer_SUITE.erl",2833}]}.
    {call,1,{f,1776}}. % id/1
    {call,1,{f,1841}}. % '-binary_aliases/1-fun-1-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,255}}}}}]}}.
    {test,is_eq_exact,
          {f,1648},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,255}},2 => {t_integer,{0,255}}}}},
           {literal,{255,255}}]}.
    {move,{literal,{ba_foo,<<"k">>,undefined,undefined}},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_dialyzer_SUITE.erl",2834}]}.
    {call,1,{f,1776}}. % id/1
    {call,1,{f,1841}}. % '-binary_aliases/1-fun-1-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,255}}}}}]}}.
    {test,is_eq_exact,
          {f,1647},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,255}},2 => {t_integer,{0,255}}}}},
           {literal,{107,107}}]}.
    {move,{literal,{ba_foo,<<"ÿ">>,undefined,undefined}},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_dialyzer_SUITE.erl",2837}]}.
    {call,1,{f,1776}}. % id/1
    {call,1,{f,1839}}. % '-binary_aliases/1-fun-2-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,15}},
                                     3 => {t_integer,{0,15}}}}}]}}.
    {test,is_eq_exact,
          {f,1646},
          [{tr,{x,0},
               {t_tuple,3,true,
                        #{1 => {t_integer,{0,255}},
                          2 => {t_integer,{0,15}},
                          3 => {t_integer,{0,15}}}}},
           {literal,{255,15,15}}]}.
    {move,{literal,{ba_foo,<<"\\">>,undefined,undefined}},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_dialyzer_SUITE.erl",2838}]}.
    {call,1,{f,1776}}. % id/1
    {call,1,{f,1839}}. % '-binary_aliases/1-fun-2-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,15}},
                                     3 => {t_integer,{0,15}}}}}]}}.
    {test,is_eq_exact,
          {f,1645},
          [{tr,{x,0},
               {t_tuple,3,true,
                        #{1 => {t_integer,{0,255}},
                          2 => {t_integer,{0,15}},
                          3 => {t_integer,{0,15}}}}},
           {literal,{92,5,12}}]}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_dialyzer_SUITE.erl",2845}]}.
    {call,1,{f,1776}}. % id/1
    {call,1,{f,1837}}. % '-binary_aliases/1-fun-3-'/1
    {test,is_eq_exact,{f,1644},[{x,0},{integer,6}]}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_dialyzer_SUITE.erl",2851}]}.
    {call,1,{f,1776}}. % id/1
    {call,1,{f,1833}}. % '-binary_aliases/1-fun-4-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,255}},
                                     3 => {t_bitstring,1,false}}}}]}}.
    {test,is_eq_exact,
          {f,1643},
          [{tr,{x,0},
               {t_tuple,3,true,
                        #{1 => {t_integer,{0,255}},
                          2 => {t_integer,{0,255}},
                          3 => {t_bitstring,1,false}}}},
           {literal,{42,42,<<"*">>}}]}.
    {move,{integer,12},{x,1}}.
    {move,{integer,7},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_dialyzer_SUITE.erl",2857}]}.
    {call,2,{f,1830}}. % '-binary_aliases/1-fun-5-'/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,1642},[{tr,{x,0},{t_integer,{0,255}}},{integer,124}]}.
    {move,{integer,13},{x,1}}.
    {move,{integer,14},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_dialyzer_SUITE.erl",2858}]}.
    {call,2,{f,1830}}. % '-binary_aliases/1-fun-5-'/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,1641},[{tr,{x,0},{t_integer,{0,255}}},{integer,237}]}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_dialyzer_SUITE.erl",2864}]}.
    {call,1,{f,1776}}. % id/1
    {call,1,{f,1826}}. % '-binary_aliases/1-fun-6-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,{0,15}},
                                     2 => {t_integer,{0,15}},
                                     3 => {t_bitstring,1,false}}}}]}}.
    {test,is_eq_exact,
          {f,1640},
          [{tr,{x,0},
               {t_tuple,3,true,
                        #{1 => {t_integer,{0,15}},
                          2 => {t_integer,{0,15}},
                          3 => {t_bitstring,1,false}}}},
           {literal,{0,0,<<0>>}}]}.
    {'catch',{y,25},{f,1556}}.
    {move,{literal,<<1>>},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_dialyzer_SUITE.erl",2865}]}.
    {call,1,{f,1826}}. % '-binary_aliases/1-fun-6-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,{0,15}},
                                     2 => {t_integer,{0,15}},
                                     3 => {t_bitstring,1,false}}}}]}}.
  {label,1556}.
    {catch_end,{y,25}}.
    {test,is_tagged_tuple,{f,1639},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1639},[{x,1}]}.
    {test,test_arity,{f,1639},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1639},[{x,1},{literal,{badmatch,<<1>>}}]}.
    {move,{literal,<<"ý">>},{x,0}}.
    {line,[{scope,"2"},{location,"bs_match_dialyzer_SUITE.erl",2871}]}.
    {call,1,{f,1776}}. % id/1
    {call,1,{f,1822}}. % '-binary_aliases/1-fun-7-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,4,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,255}},
                                     3 => {t_bitstring,1,false},
                                     4 => {t_bitstring,1,false}}}}]}}.
    {test,is_eq_exact,
          {f,1638},
          [{tr,{x,0},
               {t_tuple,4,true,
                        #{1 => {t_integer,{0,255}},
                          2 => {t_integer,{0,255}},
                          3 => {t_bitstring,1,false},
                          4 => {t_bitstring,1,false}}}},
           {literal,{253,253,<<"ý">>,<<"ý">>}}]}.
    {move,{literal,<<"É">>},{x,0}}.
    {line,[{scope,"2"},{location,"bs_match_dialyzer_SUITE.erl",2877}]}.
    {call,1,{f,1776}}. % id/1
    {call,1,{f,1818}}. % '-binary_aliases/1-fun-8-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,6,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,255}},
                                     3 => {t_bitstring,1,false},
                                     4 => {t_bitstring,1,false},
                                     5 => {t_bitstring,1,false},
                                     6 => {t_bitstring,1,false}}}}]}}.
    {test,is_eq_exact,
          {f,1637},
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
    {line,[{scope,"2"},{location,"bs_match_dialyzer_SUITE.erl",2882}]}.
    {call,1,{f,1776}}. % id/1
    {call,1,{f,1815}}. % '-binary_aliases/1-fun-9-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,1636},
          [{tr,{x,0},{t_bitstring,256,true}},{literal,<<>>}]}.
    {'catch',{y,24},{f,1557}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,"2"},{location,"bs_match_dialyzer_SUITE.erl",2883}]}.
    {call,1,{f,1776}}. % id/1
    {call,1,{f,1815}}. % '-binary_aliases/1-fun-9-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
  {label,1557}.
    {catch_end,{y,24}}.
    {test,is_tagged_tuple,{f,1635},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1635},[{x,1}]}.
    {test,test_arity,{f,1635},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1635},[{x,1},{literal,{badmatch,42}}]}.
    {move,{literal,<<0,0,0,0>>},{x,0}}.
    {line,[{scope,"0"},{location,"bs_match_dialyzer_SUITE.erl",2889}]}.
    {call,1,{f,1776}}. % id/1
    {call,1,{f,1811}}. % '-binary_aliases/1-fun-10-'/1
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
          {f,1634},
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
    {line,[{scope,"0"},{location,"bs_match_dialyzer_SUITE.erl",2891}]}.
    {call,1,{f,1776}}. % id/1
    {call,1,{f,1811}}. % '-binary_aliases/1-fun-10-'/1
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
          {f,1633},
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
    {line,[{scope,"0"},{location,"bs_match_dialyzer_SUITE.erl",2894}]}.
    {call,1,{f,1776}}. % id/1
    {call,1,{f,1809}}. % '-binary_aliases/1-fun-11-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,255}}}}}]}}.
    {test,is_eq_exact,
          {f,1632},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,255}},2 => {t_integer,{0,255}}}}},
           {literal,{255,255}}]}.
    {move,{literal,#{key => <<"Ñ">>}},{x,0}}.
    {line,[{scope,"0"},{location,"bs_match_dialyzer_SUITE.erl",2895}]}.
    {call,1,{f,1776}}. % id/1
    {call,1,{f,1809}}. % '-binary_aliases/1-fun-11-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,255}}}}}]}}.
    {test,is_eq_exact,
          {f,1631},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,255}},2 => {t_integer,{0,255}}}}},
           {literal,{209,209}}]}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{scope,"0"},{location,"bs_match_dialyzer_SUITE.erl",2901}]}.
    {call,1,{f,1776}}. % id/1
    {call,1,{f,1805}}. % '-binary_aliases/1-fun-12-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,'+inf'}},
                                     3 => {t_bitstring,1,false}}}}]}}.
    {test,is_eq_exact,
          {f,1630},
          [{tr,{x,0},
               {t_tuple,3,true,
                        #{1 => {t_integer,{0,255}},
                          2 => {t_integer,{0,'+inf'}},
                          3 => {t_bitstring,1,false}}}},
           {literal,{0,0,<<>>}}]}.
    {move,{literal,<<1,1:1>>},{x,0}}.
    {line,[{scope,"0"},{location,"bs_match_dialyzer_SUITE.erl",2902}]}.
    {call,1,{f,1776}}. % id/1
    {call,1,{f,1805}}. % '-binary_aliases/1-fun-12-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,'+inf'}},
                                     3 => {t_bitstring,1,false}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1629},[{tr,{x,1},{t_integer,{0,255}}},{integer,1}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,
          {f,1629},
          [{tr,{x,1},{t_integer,{0,'+inf'}}},{integer,1}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_match,{f,1629},{x,1},{commands,[{ensure_exactly,1},{'=:=',nil,1,1}]}}.
    {move,{literal,<<"\b*">>},{x,0}}.
    {line,[{scope,"0"},{location,"bs_match_dialyzer_SUITE.erl",2903}]}.
    {call,1,{f,1776}}. % id/1
    {call,1,{f,1805}}. % '-binary_aliases/1-fun-12-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,'+inf'}},
                                     3 => {t_bitstring,1,false}}}}]}}.
    {test,is_eq_exact,
          {f,1628},
          [{tr,{x,0},
               {t_tuple,3,true,
                        #{1 => {t_integer,{0,255}},
                          2 => {t_integer,{0,'+inf'}},
                          3 => {t_bitstring,1,false}}}},
           {literal,{8,42,<<"*">>}}]}.
    {move,{literal,[<<>>|0]},{x,0}}.
    {line,[{scope,"0"},{location,"bs_match_dialyzer_SUITE.erl",2909}]}.
    {call,1,{f,1802}}. % '-binary_aliases/1-fun-13-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,[<<"ÿÿÿÿ">>|32]},{x,0}}.
    {line,[{scope,"0"},{location,"bs_match_dialyzer_SUITE.erl",2910}]}.
    {call,1,{f,1802}}. % '-binary_aliases/1-fun-13-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,23},{f,1558}}.
    {move,{literal,[<<0,0>>|0]},{x,0}}.
    {line,[{scope,"0"},{location,"bs_match_dialyzer_SUITE.erl",2911}]}.
    {call,1,{f,1802}}. % '-binary_aliases/1-fun-13-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1558}.
    {catch_end,{y,23}}.
    {test,is_tagged_tuple,{f,1627},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1627},[{x,1}]}.
    {test,test_arity,{f,1627},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1627},[{x,1},{literal,{badmatch,[<<0,0>>|0]}}]}.
    {'catch',{y,22},{f,1559}}.
    {move,{literal,[<<0,0>>|atom]},{x,0}}.
    {line,[{scope,"."},{location,"bs_match_dialyzer_SUITE.erl",2912}]}.
    {call,1,{f,1802}}. % '-binary_aliases/1-fun-13-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1559}.
    {catch_end,{y,22}}.
    {test,is_tagged_tuple,{f,1626},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1626},[{x,1}]}.
    {test,test_arity,{f,1626},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1626},[{x,1},{literal,{badmatch,[<<0,0>>|atom]}}]}.
    {move,{literal,{<<>>,0}},{x,0}}.
    {line,[{scope,","},{location,"bs_match_dialyzer_SUITE.erl",2918}]}.
    {call,1,{f,1799}}. % '-binary_aliases/1-fun-14-'/1
    {test,is_eq_exact,{f,1625},[{x,0},{integer,0}]}.
    {move,{literal,{<<"ÿÿÿÿ">>,32}},{x,0}}.
    {line,[{scope,","},{location,"bs_match_dialyzer_SUITE.erl",2919}]}.
    {call,1,{f,1799}}. % '-binary_aliases/1-fun-14-'/1
    {test,is_eq_exact,{f,1624},[{x,0},{integer,32}]}.
    {'catch',{y,21},{f,1560}}.
    {move,{literal,{<<0,0>>,0}},{x,0}}.
    {line,[{scope,","},{location,"bs_match_dialyzer_SUITE.erl",2920}]}.
    {call,1,{f,1799}}. % '-binary_aliases/1-fun-14-'/1
  {label,1560}.
    {catch_end,{y,21}}.
    {test,is_tagged_tuple,{f,1623},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1623},[{x,1}]}.
    {test,test_arity,{f,1623},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1623},[{x,1},{literal,{badmatch,{<<0,0>>,0}}}]}.
    {'catch',{y,20},{f,1561}}.
    {move,{literal,{<<0,0>>,atom}},{x,0}}.
    {line,[{scope,"*"},{location,"bs_match_dialyzer_SUITE.erl",2921}]}.
    {call,1,{f,1799}}. % '-binary_aliases/1-fun-14-'/1
  {label,1561}.
    {catch_end,{y,20}}.
    {test,is_tagged_tuple,{f,1622},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1622},[{x,1}]}.
    {test,test_arity,{f,1622},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1622},[{x,1},{literal,{badmatch,{<<0,0>>,atom}}}]}.
    {move,{literal,[{<<>>,0}]},{x,0}}.
    {line,[{scope,"("},{location,"bs_match_dialyzer_SUITE.erl",2927}]}.
    {call,1,{f,1796}}. % '-binary_aliases/1-fun-15-'/1
    {test,is_eq_exact,{f,1621},[{x,0},{integer,0}]}.
    {move,{literal,[{<<"ÿÿÿÿ">>,32}]},{x,0}}.
    {line,[{scope,"("},{location,"bs_match_dialyzer_SUITE.erl",2928}]}.
    {call,1,{f,1796}}. % '-binary_aliases/1-fun-15-'/1
    {test,is_eq_exact,{f,1620},[{x,0},{integer,32}]}.
    {'catch',{y,19},{f,1562}}.
    {move,{literal,[{<<0,0>>,0}]},{x,0}}.
    {line,[{scope,"("},{location,"bs_match_dialyzer_SUITE.erl",2929}]}.
    {call,1,{f,1796}}. % '-binary_aliases/1-fun-15-'/1
  {label,1562}.
    {catch_end,{y,19}}.
    {test,is_tagged_tuple,{f,1619},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1619},[{x,1}]}.
    {test,test_arity,{f,1619},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1619},[{x,1},{literal,{badmatch,[{<<0,0>>,0}]}}]}.
    {'catch',{y,18},{f,1563}}.
    {move,{literal,[{<<0,0>>,atom}]},{x,0}}.
    {line,[{scope,"&"},{location,"bs_match_dialyzer_SUITE.erl",2930}]}.
    {call,1,{f,1796}}. % '-binary_aliases/1-fun-15-'/1
  {label,1563}.
    {catch_end,{y,18}}.
    {test,is_tagged_tuple,{f,1618},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1618},[{x,1}]}.
    {test,test_arity,{f,1618},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1618},[{x,1},{literal,{badmatch,[{<<0,0>>,atom}]}}]}.
    {move,{literal,#{[] => <<"*">>}},{x,0}}.
    {line,[{scope,"$"},{location,"bs_match_dialyzer_SUITE.erl",2933}]}.
    {call,1,{f,1776}}. % id/1
    {call,1,{f,1794}}. % '-binary_aliases/1-fun-16-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,17},{f,1564}}.
    {move,{literal,#{[] => <<>>}},{x,0}}.
    {line,[{scope,"$"},{location,"bs_match_dialyzer_SUITE.erl",2934}]}.
    {call,1,{f,1776}}. % id/1
    {call,1,{f,1794}}. % '-binary_aliases/1-fun-16-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1564}.
    {catch_end,{y,17}}.
    {test,is_tagged_tuple,{f,1617},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1617},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,16},{f,1565}}.
    {move,{atom,atom},{x,0}}.
    {line,[{scope,"#$"},{location,"bs_match_dialyzer_SUITE.erl",2935}]}.
    {call,1,{f,1776}}. % id/1
    {call,1,{f,1794}}. % '-binary_aliases/1-fun-16-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1565}.
    {catch_end,{y,16}}.
    {test,is_tagged_tuple,{f,1616},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1616},[{x,1},2,{atom,function_clause}]}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,"!\""},{location,"bs_match_dialyzer_SUITE.erl",2944}]}.
    {call,1,{f,1776}}. % id/1
    {call,1,{f,1791}}. % '-binary_aliases/1-fun-17-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1615},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope," "},{location,"bs_match_dialyzer_SUITE.erl",2945}]}.
    {call,1,{f,1791}}. % '-binary_aliases/1-fun-17-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1614},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{literal,<<1:1>>},{x,0}}.
    {line,[{scope," "},{location,"bs_match_dialyzer_SUITE.erl",2946}]}.
    {call,1,{f,1791}}. % '-binary_aliases/1-fun-17-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1613},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{atom,atom},{x,0}}.
    {line,[{scope," "},{location,"bs_match_dialyzer_SUITE.erl",2947}]}.
    {call,1,{f,1791}}. % '-binary_aliases/1-fun-17-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {'catch',{y,15},{f,1566}}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{scope," "},{location,"bs_match_dialyzer_SUITE.erl",2952}]}.
    {call,1,{f,1787}}. % '-binary_aliases/1-fun-18-'/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1566}.
    {catch_end,{y,15}}.
    {test,is_tagged_tuple,{f,1612},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1612},[{x,1}]}.
    {test,test_arity,{f,1612},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1612},[{x,1},{literal,{badmatch,<<0>>}}]}.
    {'catch',{y,14},{f,1567}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[30]},{location,"bs_match_dialyzer_SUITE.erl",2953}]}.
    {call,1,{f,1787}}. % '-binary_aliases/1-fun-18-'/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1567}.
    {catch_end,{y,14}}.
    {test,is_tagged_tuple,{f,1611},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1611},[{x,1}]}.
    {test,test_arity,{f,1611},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1611},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,13},{f,1568}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[28]},{location,"bs_match_dialyzer_SUITE.erl",2954}]}.
    {call,1,{f,1787}}. % '-binary_aliases/1-fun-18-'/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1568}.
    {catch_end,{y,13}}.
    {test,is_tagged_tuple,{f,1610},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1610},[{x,1}]}.
    {test,test_arity,{f,1610},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1610},[{x,1},{literal,{badmatch,0}}]}.
    {move,{literal,[<<>>]},{x,0}}.
    {line,[{scope,[26]},{location,"bs_match_dialyzer_SUITE.erl",2957}]}.
    {call,1,{f,1785}}. % '-binary_aliases/1-fun-19-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[26]},{location,"bs_match_dialyzer_SUITE.erl",2959}]}.
    {call,1,{f,1776}}. % id/1
    {move,{x,0},{y,25}}.
    {move,{literal,<<0>>},{x,0}}.
    {call,1,{f,1776}}. % id/1
    {move,{x,0},{y,24}}.
    {move,{integer,0},{x,0}}.
    {call,1,{f,1776}}. % id/1
    {move,{y,24},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{y,25},{x,0}}.
    {init_yregs,{list,[{y,24},{y,25}]}}.
    {call,3,{f,1652}}. % gh_6467/3
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
    {'catch',{y,12},{f,1569}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[26]},{location,"bs_match_dialyzer_SUITE.erl",2960}]}.
    {call,1,{f,1776}}. % id/1
    {move,{x,0},{y,25}}.
    {move,{literal,<<0>>},{x,0}}.
    {call,1,{f,1776}}. % id/1
    {move,{x,0},{y,24}}.
    {move,nil,{x,0}}.
    {call,1,{f,1776}}. % id/1
    {move,{y,24},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{y,25},{x,0}}.
    {init_yregs,{list,[{y,24},{y,25}]}}.
    {call,3,{f,1652}}. % gh_6467/3
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
  {label,1569}.
    {catch_end,{y,12}}.
    {test,is_tagged_tuple,{f,1609},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1609},[{x,1}]}.
    {test,test_arity,{f,1609},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1609},[{x,1},{literal,{badmatch,0}}]}.
    {'catch',{y,11},{f,1570}}.
    {move,{literal,<<7>>},{x,0}}.
    {line,[{scope,[24]},{location,"bs_match_dialyzer_SUITE.erl",2961}]}.
    {call,1,{f,1776}}. % id/1
    {move,{x,0},{y,25}}.
    {move,{literal,<<"!">>},{x,0}}.
    {call,1,{f,1776}}. % id/1
    {move,{x,0},{y,24}}.
    {move,nil,{x,0}}.
    {call,1,{f,1776}}. % id/1
    {move,{y,24},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{y,25},{x,0}}.
    {init_yregs,{list,[{y,24},{y,25}]}}.
    {call,3,{f,1652}}. % gh_6467/3
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
  {label,1570}.
    {catch_end,{y,11}}.
    {test,is_tagged_tuple,{f,1608},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1608},[{x,1}]}.
    {test,test_arity,{f,1608},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1608},[{x,1},{literal,{badmatch,<<7>>}}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_dialyzer_SUITE.erl",2966}]}.
    {call,1,{f,1782}}. % '-binary_aliases/1-fun-20-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1607},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_dialyzer_SUITE.erl",2967}]}.
    {call,1,{f,1782}}. % '-binary_aliases/1-fun-20-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1606},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_dialyzer_SUITE.erl",2968}]}.
    {call,1,{f,1782}}. % '-binary_aliases/1-fun-20-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,true},{x,1}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_dialyzer_SUITE.erl",2970}]}.
    {call,2,{f,1655}}. % gh6415_a/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,true]}}]}}.
    {test,is_eq_exact,{f,1605},[{tr,{x,0},{t_atom,[error,true]}},{atom,true}]}.
    {move,{atom,false},{x,1}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_dialyzer_SUITE.erl",2971}]}.
    {call,2,{f,1655}}. % gh6415_a/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,false},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_dialyzer_SUITE.erl",2972}]}.
    {call,2,{f,1655}}. % gh6415_a/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,not_bool},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_dialyzer_SUITE.erl",2973}]}.
    {call,2,{f,1655}}. % gh6415_a/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,true},{x,1}}.
    {move,{atom,any},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_dialyzer_SUITE.erl",2974}]}.
    {call,2,{f,1655}}. % gh6415_a/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,false},{x,1}}.
    {move,{atom,any},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_dialyzer_SUITE.erl",2975}]}.
    {call,2,{f,1655}}. % gh6415_a/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,<<"c">>},{x,1}}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_dialyzer_SUITE.erl",2977}]}.
    {call,2,{f,1658}}. % gh6415_b/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1604},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{literal,<<"c">>},{x,1}}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_dialyzer_SUITE.erl",2978}]}.
    {call,2,{f,1658}}. % gh6415_b/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1603},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{literal,<<>>},{x,1}}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_dialyzer_SUITE.erl",2979}]}.
    {call,2,{f,1658}}. % gh6415_b/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1602},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{literal,<<>>},{x,1}}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_dialyzer_SUITE.erl",2980}]}.
    {call,2,{f,1658}}. % gh6415_b/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1601},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{atom,true},{x,1}}.
    {move,{literal,<<"\n">>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_dialyzer_SUITE.erl",2982}]}.
    {call,2,{f,1662}}. % gh6415_c/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1600},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{atom,false},{x,1}}.
    {move,{literal,<<"\n">>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_dialyzer_SUITE.erl",2983}]}.
    {call,2,{f,1662}}. % gh6415_c/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,true},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_dialyzer_SUITE.erl",2984}]}.
    {call,2,{f,1662}}. % gh6415_c/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1599},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{atom,true},{x,1}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_dialyzer_SUITE.erl",2985}]}.
    {call,2,{f,1662}}. % gh6415_c/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_dialyzer_SUITE.erl",2987}]}.
    {call,1,{f,1665}}. % gh6415_case_clause/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_dialyzer_SUITE.erl",2988}]}.
    {call,1,{f,1665}}. % gh6415_case_clause/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_dialyzer_SUITE.erl",2989}]}.
    {call,1,{f,1665}}. % gh6415_case_clause/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_dialyzer_SUITE.erl",2991}]}.
    {call,1,{f,1683}}. % gh6415_nomatch/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_dialyzer_SUITE.erl",2992}]}.
    {call,1,{f,1683}}. % gh6415_nomatch/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,<<"ab">>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_dialyzer_SUITE.erl",2993}]}.
    {call,1,{f,1683}}. % gh6415_nomatch/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,#{0 => <<>>}},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_dialyzer_SUITE.erl",2994}]}.
    {call,1,{f,1683}}. % gh6415_nomatch/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,#{0 => <<"*">>}},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_dialyzer_SUITE.erl",2995}]}.
    {call,1,{f,1683}}. % gh6415_nomatch/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,#{0 => 42}},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_dialyzer_SUITE.erl",2996}]}.
    {call,1,{f,1683}}. % gh6415_nomatch/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,#{}},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_dialyzer_SUITE.erl",2997}]}.
    {call,1,{f,1683}}. % gh6415_nomatch/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,{a,tuple}},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_dialyzer_SUITE.erl",2998}]}.
    {call,1,{f,1683}}. % gh6415_nomatch/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,an_atom},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_dialyzer_SUITE.erl",2999}]}.
    {call,1,{f,1683}}. % gh6415_nomatch/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_dialyzer_SUITE.erl",3001}]}.
    {call,1,{f,1776}}. % id/1
    {call,1,{f,1724}}. % gh6415_match_a/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,1598},[{tr,{x,0},{t_integer,{0,255}}},{integer,42}]}.
    {'catch',{y,10},{f,1571}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_dialyzer_SUITE.erl",3002}]}.
    {call,1,{f,1776}}. % id/1
    {call,1,{f,1724}}. % gh6415_match_a/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
  {label,1571}.
    {catch_end,{y,10}}.
    {test,is_tagged_tuple,{f,1597},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1597},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,9},{f,1572}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[21,22]},{location,"bs_match_dialyzer_SUITE.erl",3003}]}.
    {call,1,{f,1776}}. % id/1
    {call,1,{f,1724}}. % gh6415_match_a/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
  {label,1572}.
    {catch_end,{y,9}}.
    {test,is_tagged_tuple,{f,1596},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1596},[{x,1},2,{atom,function_clause}]}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[19,20]},{location,"bs_match_dialyzer_SUITE.erl",3005}]}.
    {call,1,{f,1776}}. % id/1
    {call,1,{f,1727}}. % gh6415_match_b/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
          {f,1595},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,255}},
                          2 => {t_bitstring,8,false}}}},
           {literal,{42,<<>>}}]}.
    {'catch',{y,8},{f,1573}}.
    {move,{literal,<<1,2>>},{x,0}}.
    {line,[{scope,[18]},{location,"bs_match_dialyzer_SUITE.erl",3006}]}.
    {call,1,{f,1776}}. % id/1
    {call,1,{f,1727}}. % gh6415_match_b/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_bitstring,8,false}}}}]}}.
  {label,1573}.
    {catch_end,{y,8}}.
    {test,is_tagged_tuple,{f,1594},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1594},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,7},{f,1574}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[17,18]},{location,"bs_match_dialyzer_SUITE.erl",3007}]}.
    {call,1,{f,1776}}. % id/1
    {call,1,{f,1727}}. % gh6415_match_b/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_bitstring,8,false}}}}]}}.
  {label,1574}.
    {catch_end,{y,7}}.
    {test,is_tagged_tuple,{f,1593},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1593},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,6},{f,1575}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[15,16]},{location,"bs_match_dialyzer_SUITE.erl",3008}]}.
    {call,1,{f,1776}}. % id/1
    {call,1,{f,1727}}. % gh6415_match_b/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_bitstring,8,false}}}}]}}.
  {label,1575}.
    {catch_end,{y,6}}.
    {test,is_tagged_tuple,{f,1592},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1592},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,5},{f,1576}}.
    {line,[{scope,[13,14]},{location,"bs_match_dialyzer_SUITE.erl",3010}]}.
    {call,0,{f,1730}}. % gh6415_match_c/0
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
  {label,1576}.
    {catch_end,{y,5}}.
    {test,is_tagged_tuple,{f,1591},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1591},[{x,1}]}.
    {test,test_arity,{f,1591},[{x,1},2]}.
    {move,{literal,<<"£">>},{x,0}}.
    {line,[{scope,"\v\f"},{location,"bs_match_dialyzer_SUITE.erl",3012}]}.
    {call,1,{f,1776}}. % id/1
    {call,1,{f,1734}}. % gh6415_match_d/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,4},{f,1577}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,"\v\f"},{location,"bs_match_dialyzer_SUITE.erl",3013}]}.
    {call,1,{f,1776}}. % id/1
    {call,1,{f,1734}}. % gh6415_match_d/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1577}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,1590},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1590},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,3},{f,1578}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,"\t\n"},{location,"bs_match_dialyzer_SUITE.erl",3014}]}.
    {call,1,{f,1776}}. % id/1
    {call,1,{f,1734}}. % gh6415_match_d/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1578}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,1589},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1589},[{x,1},2,{atom,function_clause}]}.
    {move,{literal,<<163,0>>},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_dialyzer_SUITE.erl",3016}]}.
    {call,1,{f,1776}}. % id/1
    {call,1,{f,1737}}. % gh6415_match_e/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<"c\b*">>},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_dialyzer_SUITE.erl",3017}]}.
    {call,1,{f,1776}}. % id/1
    {call,1,{f,1737}}. % gh6415_match_e/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<99,17,255,255,1:1>>},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_dialyzer_SUITE.erl",3018}]}.
    {call,1,{f,1776}}. % id/1
    {call,1,{f,1737}}. % gh6415_match_e/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,2},{f,1579}}.
    {move,{literal,<<"£">>},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_dialyzer_SUITE.erl",3019}]}.
    {call,1,{f,1776}}. % id/1
    {call,1,{f,1737}}. % gh6415_match_e/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1579}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,1588},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1588},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,1},{f,1580}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_dialyzer_SUITE.erl",3020}]}.
    {call,1,{f,1776}}. % id/1
    {call,1,{f,1737}}. % gh6415_match_e/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1580}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,1587},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1587},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,0},{f,1581}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_dialyzer_SUITE.erl",3021}]}.
    {call,1,{f,1776}}. % id/1
    {call,1,{f,1737}}. % gh6415_match_e/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1581}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1586},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1586},[{x,1},2,{atom,function_clause}]}.
    {move,{literal,<<17,15,48,1:1>>},{x,0}}.
    {line,[{scope,[1,2]},{location,"bs_match_dialyzer_SUITE.erl",3023}]}.
    {call,1,{f,1776}}. % id/1
    {call,1,{f,1740}}. % gh6415_match_f/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[error]},
                                   none,
                                   {t_integer,{0,131071}},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,1585},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,
                        {t_integer,{0,131071}},
                        none,none}},
           {integer,7777}]}.
    {move,{literal,<<17,2,105,0:1>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_dialyzer_SUITE.erl",3024}]}.
    {call,1,{f,1776}}. % id/1
    {call,1,{f,1740}}. % gh6415_match_f/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[error]},
                                   none,
                                   {t_integer,{0,131071}},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,1584},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,
                        {t_integer,{0,131071}},
                        none,none}},
           {integer,1234}]}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_dialyzer_SUITE.erl",3025}]}.
    {call,1,{f,1776}}. % id/1
    {call,1,{f,1740}}. % gh6415_match_f/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[error]},
                                   none,
                                   {t_integer,{0,131071}},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,1583},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,
                        {t_integer,{0,131071}},
                        none,none}},
           {atom,error}]}.
    {move,{literal,<<"\b*">>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_dialyzer_SUITE.erl",3026}]}.
    {call,1,{f,1776}}. % id/1
    {call,1,{f,1740}}. % gh6415_match_f/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[error]},
                                   none,
                                   {t_integer,{0,131071}},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,1582},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,
                        {t_integer,{0,131071}},
                        none,none}},
           {atom,error}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,26}.
    return.
  {label,1582}.
    {badmatch,{x,0}}.
  {label,1583}.
    {line,[{scope,[0]},{location,"bs_match_dialyzer_SUITE.erl",3025}]}.
    {badmatch,{x,0}}.
  {label,1584}.
    {line,[{scope,[0]},{location,"bs_match_dialyzer_SUITE.erl",3024}]}.
    {badmatch,{x,0}}.
  {label,1585}.
    {line,[{scope,[0]},{location,"bs_match_dialyzer_SUITE.erl",3023}]}.
    {badmatch,{x,0}}.
  {label,1586}.
    {line,[{scope,[0]},{location,"bs_match_dialyzer_SUITE.erl",3021}]}.
    {badmatch,{x,0}}.
  {label,1587}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",3020}]}.
    {badmatch,{x,0}}.
  {label,1588}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",3019}]}.
    {badmatch,{x,0}}.
  {label,1589}.
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",3014}]}.
    {badmatch,{x,0}}.
  {label,1590}.
    {line,[{scope,"\b"},{location,"bs_match_dialyzer_SUITE.erl",3013}]}.
    {badmatch,{x,0}}.
  {label,1591}.
    {line,[{scope,"\n"},{location,"bs_match_dialyzer_SUITE.erl",3010}]}.
    {badmatch,{x,0}}.
  {label,1592}.
    {line,[{scope,"\f"},{location,"bs_match_dialyzer_SUITE.erl",3008}]}.
    {badmatch,{x,0}}.
  {label,1593}.
    {line,[{scope,[14]},{location,"bs_match_dialyzer_SUITE.erl",3007}]}.
    {badmatch,{x,0}}.
  {label,1594}.
    {line,[{scope,[16]},{location,"bs_match_dialyzer_SUITE.erl",3006}]}.
    {badmatch,{x,0}}.
  {label,1595}.
    {line,[{scope,[18]},{location,"bs_match_dialyzer_SUITE.erl",3005}]}.
    {badmatch,{x,0}}.
  {label,1596}.
    {line,[{scope,[18]},{location,"bs_match_dialyzer_SUITE.erl",3003}]}.
    {badmatch,{x,0}}.
  {label,1597}.
    {line,[{scope,[20]},{location,"bs_match_dialyzer_SUITE.erl",3002}]}.
    {badmatch,{x,0}}.
  {label,1598}.
    {line,[{scope,[22]},{location,"bs_match_dialyzer_SUITE.erl",3001}]}.
    {badmatch,{x,0}}.
  {label,1599}.
    {line,[{scope,[22]},{location,"bs_match_dialyzer_SUITE.erl",2984}]}.
    {badmatch,{atom,ok}}.
  {label,1600}.
    {line,[{scope,[22]},{location,"bs_match_dialyzer_SUITE.erl",2982}]}.
    {badmatch,{atom,error}}.
  {label,1601}.
    {line,[{scope,[22]},{location,"bs_match_dialyzer_SUITE.erl",2980}]}.
    {badmatch,{atom,ok}}.
  {label,1602}.
    {line,[{scope,[22]},{location,"bs_match_dialyzer_SUITE.erl",2979}]}.
    {badmatch,{atom,ok}}.
  {label,1603}.
    {line,[{scope,[22]},{location,"bs_match_dialyzer_SUITE.erl",2978}]}.
    {badmatch,{atom,error}}.
  {label,1604}.
    {line,[{scope,[22]},{location,"bs_match_dialyzer_SUITE.erl",2977}]}.
    {badmatch,{atom,error}}.
  {label,1605}.
    {line,[{scope,[22]},{location,"bs_match_dialyzer_SUITE.erl",2970}]}.
    {badmatch,{atom,error}}.
  {label,1606}.
    {line,[{scope,[22]},{location,"bs_match_dialyzer_SUITE.erl",2967}]}.
    {badmatch,{atom,ok}}.
  {label,1607}.
    {line,[{scope,[22]},{location,"bs_match_dialyzer_SUITE.erl",2966}]}.
    {badmatch,{atom,error}}.
  {label,1608}.
    {line,[{scope,[22]},{location,"bs_match_dialyzer_SUITE.erl",2961}]}.
    {badmatch,{x,0}}.
  {label,1609}.
    {line,[{scope,[24]},{location,"bs_match_dialyzer_SUITE.erl",2960}]}.
    {badmatch,{x,0}}.
  {label,1610}.
    {line,[{scope,[26]},{location,"bs_match_dialyzer_SUITE.erl",2954}]}.
    {badmatch,{x,0}}.
  {label,1611}.
    {line,[{scope,[28]},{location,"bs_match_dialyzer_SUITE.erl",2953}]}.
    {badmatch,{x,0}}.
  {label,1612}.
    {line,[{scope,[30]},{location,"bs_match_dialyzer_SUITE.erl",2952}]}.
    {badmatch,{x,0}}.
  {label,1613}.
    {line,[{scope," "},{location,"bs_match_dialyzer_SUITE.erl",2946}]}.
    {badmatch,{atom,ok}}.
  {label,1614}.
    {line,[{scope," "},{location,"bs_match_dialyzer_SUITE.erl",2945}]}.
    {badmatch,{atom,ok}}.
  {label,1615}.
    {line,[{scope," "},{location,"bs_match_dialyzer_SUITE.erl",2944}]}.
    {badmatch,{atom,error}}.
  {label,1616}.
    {line,[{scope," "},{location,"bs_match_dialyzer_SUITE.erl",2935}]}.
    {badmatch,{x,0}}.
  {label,1617}.
    {line,[{scope,"\""},{location,"bs_match_dialyzer_SUITE.erl",2934}]}.
    {badmatch,{x,0}}.
  {label,1618}.
    {line,[{scope,"$"},{location,"bs_match_dialyzer_SUITE.erl",2930}]}.
    {badmatch,{x,0}}.
  {label,1619}.
    {line,[{scope,"&"},{location,"bs_match_dialyzer_SUITE.erl",2929}]}.
    {badmatch,{x,0}}.
  {label,1620}.
    {line,[{scope,"("},{location,"bs_match_dialyzer_SUITE.erl",2928}]}.
    {badmatch,{x,0}}.
  {label,1621}.
    {line,[{scope,"("},{location,"bs_match_dialyzer_SUITE.erl",2927}]}.
    {badmatch,{x,0}}.
  {label,1622}.
    {line,[{scope,"("},{location,"bs_match_dialyzer_SUITE.erl",2921}]}.
    {badmatch,{x,0}}.
  {label,1623}.
    {line,[{scope,"*"},{location,"bs_match_dialyzer_SUITE.erl",2920}]}.
    {badmatch,{x,0}}.
  {label,1624}.
    {line,[{scope,","},{location,"bs_match_dialyzer_SUITE.erl",2919}]}.
    {badmatch,{x,0}}.
  {label,1625}.
    {line,[{scope,","},{location,"bs_match_dialyzer_SUITE.erl",2918}]}.
    {badmatch,{x,0}}.
  {label,1626}.
    {line,[{scope,","},{location,"bs_match_dialyzer_SUITE.erl",2912}]}.
    {badmatch,{x,0}}.
  {label,1627}.
    {line,[{scope,"."},{location,"bs_match_dialyzer_SUITE.erl",2911}]}.
    {badmatch,{x,0}}.
  {label,1628}.
    {line,[{scope,"0"},{location,"bs_match_dialyzer_SUITE.erl",2903}]}.
    {badmatch,{x,0}}.
  {label,1629}.
    {line,[{scope,"0"},{location,"bs_match_dialyzer_SUITE.erl",2902}]}.
    {badmatch,{x,0}}.
  {label,1630}.
    {line,[{scope,"0"},{location,"bs_match_dialyzer_SUITE.erl",2901}]}.
    {badmatch,{x,0}}.
  {label,1631}.
    {line,[{scope,"0"},{location,"bs_match_dialyzer_SUITE.erl",2895}]}.
    {badmatch,{x,0}}.
  {label,1632}.
    {line,[{scope,"0"},{location,"bs_match_dialyzer_SUITE.erl",2894}]}.
    {badmatch,{x,0}}.
  {label,1633}.
    {line,[{scope,"0"},{location,"bs_match_dialyzer_SUITE.erl",2890}]}.
    {badmatch,{x,0}}.
  {label,1634}.
    {line,[{scope,"0"},{location,"bs_match_dialyzer_SUITE.erl",2889}]}.
    {badmatch,{x,0}}.
  {label,1635}.
    {line,[{scope,"0"},{location,"bs_match_dialyzer_SUITE.erl",2883}]}.
    {badmatch,{x,0}}.
  {label,1636}.
    {line,[{scope,"2"},{location,"bs_match_dialyzer_SUITE.erl",2882}]}.
    {badmatch,{x,0}}.
  {label,1637}.
    {line,[{scope,"2"},{location,"bs_match_dialyzer_SUITE.erl",2877}]}.
    {badmatch,{x,0}}.
  {label,1638}.
    {line,[{scope,"2"},{location,"bs_match_dialyzer_SUITE.erl",2871}]}.
    {badmatch,{x,0}}.
  {label,1639}.
    {line,[{scope,"2"},{location,"bs_match_dialyzer_SUITE.erl",2865}]}.
    {badmatch,{x,0}}.
  {label,1640}.
    {line,[{scope,"4"},{location,"bs_match_dialyzer_SUITE.erl",2864}]}.
    {badmatch,{x,0}}.
  {label,1641}.
    {line,[{scope,"4"},{location,"bs_match_dialyzer_SUITE.erl",2858}]}.
    {badmatch,{x,0}}.
  {label,1642}.
    {line,[{scope,"4"},{location,"bs_match_dialyzer_SUITE.erl",2857}]}.
    {badmatch,{x,0}}.
  {label,1643}.
    {line,[{scope,"4"},{location,"bs_match_dialyzer_SUITE.erl",2851}]}.
    {badmatch,{x,0}}.
  {label,1644}.
    {line,[{scope,"4"},{location,"bs_match_dialyzer_SUITE.erl",2845}]}.
    {badmatch,{x,0}}.
  {label,1645}.
    {line,[{scope,"4"},{location,"bs_match_dialyzer_SUITE.erl",2838}]}.
    {badmatch,{x,0}}.
  {label,1646}.
    {line,[{scope,"4"},{location,"bs_match_dialyzer_SUITE.erl",2837}]}.
    {badmatch,{x,0}}.
  {label,1647}.
    {line,[{scope,"4"},{location,"bs_match_dialyzer_SUITE.erl",2834}]}.
    {badmatch,{x,0}}.
  {label,1648}.
    {line,[{scope,"4"},{location,"bs_match_dialyzer_SUITE.erl",2833}]}.
    {badmatch,{x,0}}.
  {label,1649}.
    {line,[{scope,"4"},{location,"bs_match_dialyzer_SUITE.erl",2830}]}.
    {badmatch,{x,0}}.
  {label,1650}.
    {line,[{scope,"4"},{location,"bs_match_dialyzer_SUITE.erl",2829}]}.
    {badmatch,{x,0}}.


{function, gh_6467, 3, 1652}.
  {label,1651}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3033}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,gh_6467},3}.
  {label,1652}.
    {test,is_nil,{f,1653},[{x,2}]}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3034}]}.
    {badmatch,{x,0}}.
  {label,1653}.
    {test,bs_start_match3,{f,1651},3,[{x,1}],{x,3}}.
    {bs_match,{f,1651},{x,3},{commands,[{ensure_exactly,8}]}}.
    {move,{atom,a},{x,0}}.
    return.


{function, gh6415_a, 2, 1655}.
  {label,1654}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3038}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,gh6415_a},2}.
  {label,1655}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[any]},
                                   none,none,none,
                                   {t_bitstring,8,false}}},
                    accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[false,not_bool,true]}}]}}.
    {test,bs_start_match3,{f,1656},2,[{x,0}],{x,0}}.
    {bs_match,{f,1656},{x,0},{commands,[{ensure_exactly,8}]}}.
    {test,is_eq_exact,{f,1656},[{x,1},{atom,true}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,1656}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_b, 2, 1658}.
  {label,1657}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3043}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,gh6415_b},2}.
  {label,1658}.
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_match,{f,1660},
              {x,1},
              {commands,[{ensure_exactly,8},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
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
          {f,1659},
          [{tr,{x,1},{t_atom,[false,true]}},{atom,false}]}.
    {test,is_eq_exact,{f,1660},[{tr,{x,0},{t_atom,[false,true]}},{atom,true}]}.
  {label,1659}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1660}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_c, 2, 1662}.
  {label,1661}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3048}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,gh6415_c},2}.
  {label,1662}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,none,
                                   {t_integer,{42,42}},
                                   none,
                                   {t_bitstring,8,false}}},
                    accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[false,true]}}]}}.
    {test,bs_start_match3,{f,1663},2,[{x,0}],{x,0}}.
    {bs_match,{f,1663},{x,0},{commands,[{ensure_exactly,8}]}}.
    {test,is_eq_exact,{f,1663},[{x,1},{atom,true}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1663}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_case_clause, 1, 1665}.
  {label,1664}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3053}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,gh6415_case_clause},1}.
  {label,1665}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[a]},
                                   none,
                                   {t_integer,{42,42}},
                                   none,
                                   {t_bitstring,8,false}}}]}}.
    {allocate,5,1}.
    {init_yregs,{list,[{y,1},{y,2},{y,3}]}}.
    {move,{x,0},{y,0}}.
    {'catch',{y,4},{f,1666}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3054}]}.
    {call,1,{f,1675}}. % gh6415_case_clause_a/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1666}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,1673},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1673},[{x,1}]}.
    {test,test_arity,{f,1673},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1673},[{x,1},{literal,{case_clause,0}}]}.
    {'catch',{y,3},{f,1667}}.
    {move,{y,0},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",3055}]}.
    {call,1,{f,1677}}. % gh6415_case_clause_b/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1667}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,1672},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1672},[{x,1}]}.
    {test,test_arity,{f,1672},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1672},[{x,1},{literal,{case_clause,0}}]}.
    {'catch',{y,2},{f,1668}}.
    {move,{y,0},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",3056}]}.
    {call,1,{f,1679}}. % gh6415_case_clause_c/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1668}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,1671},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1671},[{x,1}]}.
    {test,test_arity,{f,1671},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1671},[{x,1},{literal,{case_clause,0}}]}.
    {'catch',{y,1},{f,1669}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",3057}]}.
    {call,1,{f,1681}}. % gh6415_case_clause_d/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1669}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,1670},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1670},[{x,1}]}.
    {test,test_arity,{f,1670},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1670},[{x,1},{literal,{case_clause,0}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,5}.
    return.
  {label,1670}.
    {line,[{scope,[0]},{location,"bs_match_dialyzer_SUITE.erl",3057}]}.
    {badmatch,{x,0}}.
  {label,1671}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",3056}]}.
    {badmatch,{x,0}}.
  {label,1672}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",3055}]}.
    {badmatch,{x,0}}.
  {label,1673}.
    {line,[{scope,[6]},{location,"bs_match_dialyzer_SUITE.erl",3054}]}.
    {badmatch,{x,0}}.


{function, gh6415_case_clause_a, 1, 1675}.
  {label,1674}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3060}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,gh6415_case_clause_a},1}.
  {label,1675}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[a]},
                                   none,
                                   {t_integer,{42,42}},
                                   none,
                                   {t_bitstring,8,false}}}]}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3061}]}.
    {case_end,{integer,0}}.


{function, gh6415_case_clause_b, 1, 1677}.
  {label,1676}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3067}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,gh6415_case_clause_b},1}.
  {label,1677}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[a]},
                                   none,
                                   {t_integer,{42,42}},
                                   none,
                                   {t_bitstring,8,false}}}]}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3068}]}.
    {case_end,{integer,0}}.


{function, gh6415_case_clause_c, 1, 1679}.
  {label,1678}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3074}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,gh6415_case_clause_c},1}.
  {label,1679}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[a]},
                                   none,
                                   {t_integer,{42,42}},
                                   none,
                                   {t_bitstring,8,false}}}]}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3075}]}.
    {case_end,{integer,0}}.


{function, gh6415_case_clause_d, 1, 1681}.
  {label,1680}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3081}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,gh6415_case_clause_d},1}.
  {label,1681}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[a]},
                                   none,
                                   {t_integer,{42,42}},
                                   none,
                                   {t_bitstring,8,false}}}]}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3082}]}.
    {case_end,{integer,0}}.


{function, gh6415_nomatch, 1, 1683}.
  {label,1682}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3088}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,gh6415_nomatch},1}.
  {label,1683}.
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
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3089}]}.
    {call,1,{f,1776}}. % id/1
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3090}]}.
    {call,1,{f,1695}}. % gh6415_nomatch_a/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3091}]}.
    {call,1,{f,1697}}. % gh6415_nomatch_b/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,
          {f,1693},
          [{tr,{x,0},{t_atom,[error,ok]}},{tr,{y,0},{t_atom,[error,ok]}}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3092}]}.
    {call,1,{f,1699}}. % gh6415_nomatch_c/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {test,is_eq_exact,{f,1692},[{tr,{y,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3093}]}.
    {call,1,{f,1701}}. % gh6415_nomatch_d/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1691},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3094}]}.
    {call,1,{f,1703}}. % gh6415_nomatch_e/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1690},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3095}]}.
    {call,1,{f,1706}}. % gh6415_nomatch_f/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1689},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3096}]}.
    {call,1,{f,1708}}. % gh6415_nomatch_g/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1688},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3097}]}.
    {call,1,{f,1711}}. % gh6415_nomatch_h/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1687},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3098}]}.
    {call,1,{f,1714}}. % gh6415_nomatch_i/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1686},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3099}]}.
    {call,1,{f,1717}}. % gh6415_nomatch_j/1
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
          {f,1685},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,none,
                        {t_tuple,2,true,
                                 #{1 => {t_integer,{0,65535}},
                                   2 => {t_bitstring,8,false}}},
                        none}},
           {atom,error}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3100}]}.
    {call,1,{f,1720}}. % gh6415_nomatch_k/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{y,1},{x,0}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3101}]}.
    {call,1,{f,1722}}. % gh6415_nomatch_l/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1684},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1684}.
    {badmatch,{atom,ok}}.
  {label,1685}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3099}]}.
    {badmatch,{x,0}}.
  {label,1686}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3098}]}.
    {badmatch,{atom,ok}}.
  {label,1687}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3097}]}.
    {badmatch,{atom,ok}}.
  {label,1688}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3096}]}.
    {badmatch,{atom,ok}}.
  {label,1689}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3095}]}.
    {badmatch,{atom,ok}}.
  {label,1690}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3094}]}.
    {badmatch,{atom,ok}}.
  {label,1691}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3093}]}.
    {badmatch,{atom,ok}}.
  {label,1692}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3092}]}.
    {badmatch,{atom,error}}.
  {label,1693}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3091}]}.
    {badmatch,{x,0}}.


{function, gh6415_nomatch_a, 1, 1695}.
  {label,1694}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3104}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,gh6415_nomatch_a},1}.
  {label,1695}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_b, 1, 1697}.
  {label,1696}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3107}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,gh6415_nomatch_b},1}.
  {label,1697}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_c, 1, 1699}.
  {label,1698}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3110}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,gh6415_nomatch_c},1}.
  {label,1699}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_d, 1, 1701}.
  {label,1700}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3113}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,gh6415_nomatch_d},1}.
  {label,1701}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_e, 1, 1703}.
  {label,1702}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3116}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,gh6415_nomatch_e},1}.
  {label,1703}.
    {test,is_map,{f,1704},[{x,0}]}.
    {get_map_elements,{f,1704},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{integer,0},{x,0}]}}.
    {test,is_eq_exact,{f,1704},[{x,0},{literal,<<>>}]}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_match,{f,1704},{x,0},{commands,[{ensure_exactly,8}]}}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1704}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_f, 1, 1706}.
  {label,1705}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3119}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,gh6415_nomatch_f},1}.
  {label,1706}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_g, 1, 1708}.
  {label,1707}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3122}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,gh6415_nomatch_g},1}.
  {label,1708}.
    {test,is_map,{f,1709},[{x,0}]}.
    {get_map_elements,{f,1709},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{integer,0},{x,0}]}}.
    {test,bs_start_match3,{f,1709},1,[{x,0}],{x,0}}.
    {bs_match,{f,1709},
              {x,0},
              {commands,[{ensure_exactly,8},
                         {ensure_exactly,16},
                         {skip,8},
                         {'=:=',nil,8,0}]}}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1709}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_h, 1, 1711}.
  {label,1710}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3125}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,gh6415_nomatch_h},1}.
  {label,1711}.
    {test,is_map,{f,1712},[{x,0}]}.
    {get_map_elements,{f,1712},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{integer,0},{x,0}]}}.
    {test,bs_start_match3,{f,1712},1,[{x,0}],{x,0}}.
    {bs_match,{f,1712},
              {x,0},
              {commands,[{ensure_exactly,0},
                         {ensure_exactly,8},
                         {integer,1,{literal,[]},8,1,{x,1}}]}}.
    {test,is_eq_exact,{f,1712},[{tr,{x,1},{t_integer,{0,255}}},{integer,0}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1712}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_i, 1, 1714}.
  {label,1713}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3128}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,gh6415_nomatch_i},1}.
  {label,1714}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1715},1,[{x,0}],{x,0}}.
    {bs_match,{f,1715},
              {x,0},
              {commands,[{ensure_exactly,8},
                         {ensure_at_least,16,8},
                         {skip,16},
                         {get_tail,1,8,{x,0}}]}}.
    {allocate,0,1}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3129}]}.
    {call_ext,1,{extfunc,erlang,binary_to_list,1}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1715}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_j, 1, 1717}.
  {label,1716}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3134}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,gh6415_nomatch_j},1}.
  {label,1717}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1718},1,[{x,0}],{x,0}}.
    {bs_match,{f,1718},
              {x,0},
              {commands,[{ensure_exactly,8},
                         {ensure_at_least,16,8},
                         {integer,1,{literal,[]},16,1,{x,1}},
                         {get_tail,2,8,{x,0}}]}}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,1},{x,0}]}}.
    return.
  {label,1718}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_k, 1, 1720}.
  {label,1719}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3139}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,gh6415_nomatch_k},1}.
  {label,1720}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_l, 1, 1722}.
  {label,1721}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3144}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,gh6415_nomatch_l},1}.
  {label,1722}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_match_a, 1, 1724}.
  {label,1723}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3152}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,gh6415_match_a},1}.
  {label,1724}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1723},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {bs_match,{f,1725},
              {x,1},
              {commands,[{ensure_exactly,8},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {move,{x,2},{x,0}}.
    return.
  {label,1725}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,1723}}.


{function, gh6415_match_b, 1, 1727}.
  {label,1726}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3155}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,gh6415_match_b},1}.
  {label,1727}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1726},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {bs_match,{f,1728},
              {x,1},
              {commands,[{ensure_exactly,8},
                         {integer,2,{literal,[]},8,1,{x,0}},
                         {get_tail,2,8,{x,1}}]}}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    return.
  {label,1728}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,1726}}.


{function, gh6415_match_c, 0, 1730}.
  {label,1729}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3158}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,gh6415_match_c},0}.
  {label,1730}.
    {allocate,1,0}.
    {'catch',{y,0},{f,1731}}.
    {move,{atom,badarg},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3159}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,1731}.
    {catch_end,{y,0}}.
    {test,is_map,{f,1732},[{x,0}]}.
    {get_map_elements,{f,1732},{tr,{x,0},{t_map,any,any}},{list,[nil,{x,1}]}}.
    {test,bs_start_match3,{f,1732},2,[{x,1}],{x,1}}.
    {bs_match,{f,1732},
              {x,1},
              {commands,[{ensure_exactly,8},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {move,{x,2},{x,0}}.
    {deallocate,1}.
    return.
  {label,1732}.
    {line,[{scope,[0]},{location,"bs_match_dialyzer_SUITE.erl",3159}]}.
    {case_end,{x,0}}.


{function, gh6415_match_d, 1, 1734}.
  {label,1733}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3164}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,gh6415_match_d},1}.
  {label,1734}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1733},1,[{x,0}],{x,1}}.
    {bs_match,{f,1735},{x,1},{commands,[{ensure_exactly,8}]}}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1735}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,1733}}.


{function, gh6415_match_e, 1, 1737}.
  {label,1736}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3167}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,gh6415_match_e},1}.
  {label,1737}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1736},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {bs_match,{f,1738},
              {x,1},
              {commands,[{ensure_at_least,16,1},
                         {skip,8},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_skip_bits2,
          {f,1738},
          [{x,1},
           {x,2},
           1,
           {field_flags,[{anno,[3167,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_match,{f,1738},{x,1},{commands,[{ensure_exactly,0}]}}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_match,{f,1738},
              {x,1},
              {commands,[{ensure_at_least,16,1},
                         {skip,8},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,bs_skip_bits2,
          {f,1738},
          [{x,1},
           {x,3},
           1,
           {field_flags,[{anno,[3167,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_match,{f,1738},{x,1},{commands,[{ensure_exactly,0}]}}.
    {test,is_eq_exact,
          {f,1738},
          [{tr,{x,3},{t_integer,{0,255}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1738}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,1736}}.


{function, gh6415_match_f, 1, 1740}.
  {label,1739}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3170}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,gh6415_match_f},1}.
  {label,1740}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1741},1,[{x,0}],{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,1741},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {skip,0},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,1741},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[3170,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_match,{f,1741},{x,0},{commands,[{ensure_exactly,0}]}}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_match,{f,1741},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,4,{literal,[]},8,1,{x,4}},
                         {ensure_at_least,0,1},
                         {skip,0}]}}.
    {test,bs_get_integer2,
          {f,1741},
          5,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,4},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[3170,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {bs_match,{f,1741},{x,0},{commands,[{ensure_exactly,0}]}}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_match,{f,1741},
              {x,0},
              {commands,[{ensure_exactly,25},
                         {'=:=',nil,8,17},
                         {integer,6,{literal,[]},17,1,{x,1}}]}}.
    {test,is_eq_exact,
          {f,1741},
          [{tr,{x,4},{t_integer,{0,255}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,1741},
          [{tr,{x,5},{t_integer,{0,'+inf'}}},
           {tr,{x,3},{t_integer,{0,'+inf'}}}]}.
    {test,is_eq_exact,
          {f,1741},
          [{tr,{x,1},{t_integer,{0,131071}}},
           {tr,{x,3},{t_integer,{0,'+inf'}}}]}.
    {move,{x,3},{x,0}}.
    return.
  {label,1741}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh_6923, 1, 1743}.
  {label,1742}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3177}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,gh_6923},1}.
  {label,1743}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{atom,bs_match_dialyzer_SUITE},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3208}]}.
    {call_ext,1,{extfunc,test_lib,opt_opts,1}}.
    {move,{x,0},{x,1}}.
    {move,
     {literal,
      [{attribute,29,module,bs_match_dialyzer_SUITE_gh_6923},
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
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3209}]}.
    {call_ext,2,{extfunc,compile,forms,2}}.
    {test,is_tagged_tuple,{f,1749},[{x,0},3,{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,1749},[{x,1},{atom,bs_match_dialyzer_SUITE_gh_6923}]}.
    {get_tuple_element,{x,0},2,{x,2}}.
    {move,nil,{x,1}}.
    {move,{atom,bs_match_dialyzer_SUITE_gh_6923},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3210}]}.
    {call_ext,3,{extfunc,code,load_binary,3}}.
    {test,is_tagged_tuple,{f,1748},[{x,0},2,{atom,module}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,1748},[{x,1},{atom,bs_match_dialyzer_SUITE_gh_6923}]}.
    {move,{literal,[<<"prefix">>,<<"action">>]},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3211}]}.
    {call_ext,1,{extfunc,bs_match_dialyzer_SUITE_gh_6923,match_route,1}}.
    {test,is_eq_exact,{f,1747},[{x,0},{atom,first}]}.
    {move,{literal,[<<"prefix">>,whatever]},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3212}]}.
    {call_ext,1,{extfunc,bs_match_dialyzer_SUITE_gh_6923,match_route,1}}.
    {test,is_eq_exact,{f,1746},[{x,0},{atom,second}]}.
    {move,{atom,bs_match_dialyzer_SUITE_gh_6923},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3213}]}.
    {call_ext,1,{extfunc,code,delete,1}}.
    {move,{atom,bs_match_dialyzer_SUITE_gh_6923},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3214}]}.
    {call_ext,1,{extfunc,code,purge,1}}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3217}]}.
    {call,1,{f,1776}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,42},{x,0}}.
    {call,1,{f,1776}}. % id/1
    {test_heap,4,1}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{y,0},{x,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {call,1,{f,1751}}. % do_gh_6923/1
    {'%',{var_info,{x,0},[{type,{t_atom,[first,second]}}]}}.
    {test,is_eq_exact,
          {f,1745},
          [{tr,{x,0},{t_atom,[first,second]}},{atom,first}]}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3218}]}.
    {call,1,{f,1776}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{literal,{a,b,c}},{x,0}}.
    {call,1,{f,1776}}. % id/1
    {test_heap,4,1}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{y,0},{x,0},{x,0}}.
    {trim,1,0}.
    {call,1,{f,1751}}. % do_gh_6923/1
    {'%',{var_info,{x,0},[{type,{t_atom,[first,second]}}]}}.
    {test,is_eq_exact,
          {f,1744},
          [{tr,{x,0},{t_atom,[first,second]}},{atom,second}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1744}.
    {badmatch,{atom,first}}.
  {label,1745}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3217}]}.
    {badmatch,{atom,second}}.
  {label,1746}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3212}]}.
    {badmatch,{x,0}}.
  {label,1747}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3211}]}.
    {badmatch,{x,0}}.
  {label,1748}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3210}]}.
    {badmatch,{x,0}}.
  {label,1749}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3209}]}.
    {badmatch,{x,0}}.


{function, do_gh_6923, 1, 1751}.
  {label,1750}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3222}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,do_gh_6923},1}.
  {label,1751}.
    {'%',{var_info,{x,0},[{type,{t_cons,any,nil}}]}}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,bs_start_match3,{f,1750},3,[{x,1}],{x,1}}.
    {bs_match,{f,1750},
              {x,1},
              {commands,[{ensure_exactly,24},{'=:=',nil,24,6382179}]}}.
    {test,is_nonempty_list,{f,1750},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_nil,{f,1750},[{tr,{x,2},{t_list,any,nil}}]}.
    {test,is_integer,{f,1752},[{x,1}]}.
    {move,{atom,first},{x,0}}.
    return.
  {label,1752}.
    {test,is_tuple,{f,1750},[{x,1}]}.
    {move,{atom,second},{x,0}}.
    return.


{function, bs_test_tail, 1, 1754}.
  {label,1753}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3225}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,bs_test_tail},1}.
  {label,1754}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {call_ext,1,{extfunc,erlang,term_to_binary,1}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3228}]}.
    {call,1,{f,1762}}. % bs_test_tail_skip/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3230}]}.
    {call,1,{f,1776}}. % id/1
    {bs_create_bin,{f,0},
                   0,1,8,
                   {x,0},
                   {list,[{atom,append},1,8,nil,{x,0},{atom,all}]}}.
    {call,1,{f,1765}}. % bs_test_tail_int/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,255}},nil}}]}}.
    {test,is_eq_exact,
          {f,1760},
          [{tr,{x,0},{t_list,{t_integer,{0,255}},nil}},{literal,"abc"}]}.
    {move,{float,2.0},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",3232}]}.
    {call,1,{f,1776}}. % id/1
    {move,{x,0},{y,1}}.
    {move,{float,3.0},{x,0}}.
    {call,1,{f,1776}}. % id/1
    {bs_create_bin,{f,0},
                   0,1,128,
                   {x,0},
                   {list,[{atom,float},
                          1,1,nil,
                          {y,1},
                          {integer,64},
                          {atom,float},
                          2,1,nil,
                          {x,0},
                          {integer,64}]}}.
    {init_yregs,{list,[{y,1}]}}.
    {call,1,{f,1768}}. % bs_test_tail_float/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_float,any},nil}}]}}.
    {test,is_eq_exact,
          {f,1759},
          [{tr,{x,0},{t_list,{t_float,any},nil}},{literal,[2.0,3.0]}]}.
    {'catch',{y,1},{f,1755}}.
    {move,{integer,-1},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",3233}]}.
    {call,1,{f,1776}}. % id/1
    {bs_create_bin,{f,0},
                   0,1,128,
                   {x,0},
                   {list,[{atom,integer},1,1,nil,{x,0},{integer,128}]}}.
    {call,1,{f,1768}}. % bs_test_tail_float/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_float,any},nil}}]}}.
  {label,1755}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,1758},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1758},[{x,1},2,{atom,function_clause}]}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_dialyzer_SUITE.erl",3235}]}.
    {call,1,{f,1776}}. % id/1
    {bs_create_bin,{f,0},
                   0,1,8,
                   {x,0},
                   {list,[{atom,integer},1,1,nil,{x,0},{integer,8}]}}.
    {call,1,{f,1772}}. % bs_test_partial_tail/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,0},{f,1756}}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_dialyzer_SUITE.erl",3236}]}.
    {call,1,{f,1776}}. % id/1
    {bs_create_bin,{f,0},
                   0,1,8,
                   {x,0},
                   {list,[{atom,integer},1,1,nil,{x,0},{integer,8}]}}.
    {call,1,{f,1772}}. % bs_test_partial_tail/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1756}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1757},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1757},[{x,1},2,{atom,function_clause}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,1757}.
    {line,[{scope,[0]},{location,"bs_match_dialyzer_SUITE.erl",3236}]}.
    {badmatch,{x,0}}.
  {label,1758}.
    {line,[{scope,[2]},{location,"bs_match_dialyzer_SUITE.erl",3233}]}.
    {badmatch,{x,0}}.
  {label,1759}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",3232}]}.
    {badmatch,{x,0}}.
  {label,1760}.
    {line,[{scope,[4]},{location,"bs_match_dialyzer_SUITE.erl",3230}]}.
    {badmatch,{x,0}}.


{function, bs_test_tail_skip, 1, 1762}.
  {label,1761}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3241}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,bs_test_tail_skip},1}.
  {label,1762}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_match,{f,1763},{x,0},{commands,[{ensure_at_least,8,1},{skip,8}]}}.
    {call_only,1,{f,1762}}. % bs_test_tail_skip/1
  {label,1763}.
    {move,{atom,ok},{x,0}}.
    return.


{function, bs_test_tail_int, 1, 1765}.
  {label,1764}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3245}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,bs_test_tail_int},1}.
  {label,1765}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_match,{f,1766},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,1,{literal,[]},8,1,{x,1}}]}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3246}]}.
    {call,1,{f,1765}}. % bs_test_tail_int/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,255}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1766}.
    {move,nil,{x,0}}.
    return.


{function, bs_test_tail_float, 1, 1768}.
  {label,1767}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3250}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,bs_test_tail_float},1}.
  {label,1768}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,64}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_get_float2,
          {f,1769},
          1,
          [{tr,{x,0},{t_bs_context,64}},
           {integer,64},
           1,
           {field_flags,[{anno,[3250,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3251}]}.
    {call,1,{f,1768}}. % bs_test_tail_float/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_float,any},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1769}.
    {bs_match,{f,1770},{x,0},{commands,[{ensure_exactly,0}]}}.
    {move,nil,{x,0}}.
    return.
  {label,1770}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,1767}}.


{function, bs_test_partial_tail, 1, 1772}.
  {label,1771}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3255}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,bs_test_partial_tail},1}.
  {label,1772}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,1773},
              {x,0},
              {commands,[{ensure_at_least,8,1},{'=:=',nil,8,0}]}}.
    {call_only,1,{f,1772}}. % bs_test_partial_tail/1
  {label,1773}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_match,{f,1774},{x,0},{commands,[{ensure_exactly,0}]}}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1774}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,1771}}.


{function, id, 1, 1776}.
  {label,1775}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",3260}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,id},1}.
  {label,1776}.
    return.


{function, module_info, 0, 1778}.
  {label,1777}.
    {line,[]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,module_info},0}.
  {label,1778}.
    {move,{atom,bs_match_dialyzer_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 1780}.
  {label,1779}.
    {line,[]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,module_info},1}.
  {label,1780}.
    {move,{x,0},{x,1}}.
    {move,{atom,bs_match_dialyzer_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-binary_aliases/1-fun-20-', 1, 1782}.
  {label,1781}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2963}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-binary_aliases/1-fun-20-'},
               1}.
  {label,1782}.
    {test,is_eq_exact,{f,1783},[{x,0},{literal,<<>>}]}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_match,{f,1783},{x,0},{commands,[{ensure_exactly,0}]}}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1783}.
    {move,{atom,error},{x,0}}.
    return.


{function, '-binary_aliases/1-fun-19-', 1, 1785}.
  {label,1784}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2956}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-binary_aliases/1-fun-19-'},
               1}.
  {label,1785}.
    {test,is_eq_exact,{f,1784},[{x,0},{literal,[<<>>]}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, '-binary_aliases/1-fun-18-', 1, 1787}.
  {label,1786}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2949}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-binary_aliases/1-fun-18-'},
               1}.
  {label,1787}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1789},1,[{x,0}],{x,1}}.
    {bs_match,{f,1788},
              {x,1},
              {commands,[{ensure_exactly,8},{get_tail,2,1,{x,0}}]}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2950}]}.
    {badmatch,{x,0}}.
  {label,1788}.
    {bs_get_tail,{x,1},{x,0},2}.
    {badmatch,{x,0}}.
  {label,1789}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-17-', 1, 1791}.
  {label,1790}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2937}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-binary_aliases/1-fun-17-'},
               1}.
  {label,1791}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1792},1,[{x,0}],{x,0}}.
    {bs_match,{f,1792},{x,0},{commands,[{ensure_exactly,8}]}}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1792}.
    {move,{atom,error},{x,0}}.
    return.


{function, '-binary_aliases/1-fun-16-', 1, 1794}.
  {label,1793}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2932}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-binary_aliases/1-fun-16-'},
               1}.
  {label,1794}.
    {test,is_map,{f,1793},[{x,0}]}.
    {get_map_elements,{f,1793},{tr,{x,0},{t_map,any,any}},{list,[nil,{x,1}]}}.
    {test,bs_start_match3,{f,1793},2,[{x,1}],{x,1}}.
    {bs_match,{f,1793},{x,1},{commands,[{ensure_exactly,8}]}}.
    {move,{atom,ok},{x,0}}.
    return.


{function, '-binary_aliases/1-fun-15-', 1, 1796}.
  {label,1795}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2923}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-binary_aliases/1-fun-15-'},
               1}.
  {label,1796}.
    {allocate,0,1}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2924}]}.
    {call,1,{f,1776}}. % id/1
    {test,is_nonempty_list,{f,1797},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_tuple,{f,1797},[{x,1}]}.
    {test,test_arity,{f,1797},[{x,1},2]}.
    {test,is_nil,{f,1797},[{x,2}]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,bs_start_match3,{f,1797},3,[{x,2}],{x,2}}.
    {test,bs_skip_bits2,
          {f,1797},
          [{x,2},
           {x,1},
           1,
           {field_flags,[{anno,[2924,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_match,{f,1797},{x,2},{commands,[{ensure_exactly,0}]}}.
    {move,{x,1},{x,0}}.
    {deallocate,0}.
    return.
  {label,1797}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-14-', 1, 1799}.
  {label,1798}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2914}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-binary_aliases/1-fun-14-'},
               1}.
  {label,1799}.
    {allocate,0,1}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2915}]}.
    {call,1,{f,1776}}. % id/1
    {test,is_tuple,{f,1800},[{x,0}]}.
    {test,test_arity,{f,1800},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {test,bs_start_match3,{f,1800},3,[{x,1}],{x,1}}.
    {test,bs_skip_bits2,
          {f,1800},
          [{x,1},
           {x,2},
           1,
           {field_flags,[{anno,[2915,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_match,{f,1800},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{x,2},{x,0}}.
    {deallocate,0}.
    return.
  {label,1800}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-13-', 1, 1802}.
  {label,1801}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2905}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-binary_aliases/1-fun-13-'},
               1}.
  {label,1802}.
    {allocate,0,1}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2906}]}.
    {call,1,{f,1776}}. % id/1
    {test,is_nonempty_list,{f,1803},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,bs_start_match3,{f,1803},3,[{x,1}],{x,1}}.
    {test,bs_skip_bits2,
          {f,1803},
          [{x,1},
           {x,2},
           1,
           {field_flags,[{anno,[2906,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_match,{f,1803},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1803}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-12-', 1, 1805}.
  {label,1804}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2897}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-binary_aliases/1-fun-12-'},
               1}.
  {label,1805}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1807},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {bs_match,{f,1806},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_match,{f,1806},{x,1},{commands,[{ensure_at_least,8,1},{skip,8}]}}.
    {test,bs_get_binary2,
          {f,1806},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[2898,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_match,{f,1806},{x,1},{commands,[{ensure_exactly,0}]}}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_match,{f,1806},{x,1},{commands,[{ensure_at_least,8,1},{skip,8}]}}.
    {test,bs_get_integer2,
          {f,1806},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[2898,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {bs_match,{f,1806},{x,1},{commands,[{ensure_exactly,0}]}}.
    {test_heap,4,5}.
    {put_tuple2,{x,0},{list,[{x,2},{x,4},{x,3}]}}.
    return.
  {label,1806}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2898}]}.
    {badmatch,{x,0}}.
  {label,1807}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-11-', 1, 1809}.
  {label,1808}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2893}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-binary_aliases/1-fun-11-'},
               1}.
  {label,1809}.
    {test,is_map,{f,1808},[{x,0}]}.
    {get_map_elements,{f,1808},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{atom,key},{x,1}]}}.
    {test,bs_start_match3,{f,1808},2,[{x,1}],{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {bs_match,{f,1808},
              {x,1},
              {commands,[{ensure_exactly,8},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_match,{f,1808},
              {x,1},
              {commands,[{ensure_exactly,8},
                         {integer,4,{literal,[]},8,1,{x,2}}]}}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,3},{x,2}]}}.
    return.


{function, '-binary_aliases/1-fun-10-', 1, 1811}.
  {label,1810}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2885}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-binary_aliases/1-fun-10-'},
               1}.
  {label,1811}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1813},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {bs_match,{f,1812},
              {x,1},
              {commands,[{ensure_exactly,32},
                         {integer,2,{literal,[]},8,1,{x,2}},
                         {integer,3,{literal,[]},8,1,{x,3}},
                         {integer,4,{literal,[]},8,1,{x,4}},
                         {integer,5,{literal,[]},8,1,{x,5}}]}}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_match,{f,1812},
              {x,1},
              {commands,[{ensure_exactly,32},
                         {integer,6,{literal,[]},16,1,{x,6}},
                         {integer,7,{literal,[]},16,1,{x,7}}]}}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_match,{f,1812},
              {x,1},
              {commands,[{ensure_exactly,32},
                         {binary,8,{literal,[]},8,1,{x,8}},
                         {binary,9,{literal,[]},24,1,{x,9}}]}}.
    {test_heap,9,10}.
    {put_tuple2,{x,0},
                {list,[{x,8},{x,9},{x,6},{x,7},{x,2},{x,3},{x,4},{x,5}]}}.
    return.
  {label,1812}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2886}]}.
    {badmatch,{x,0}}.
  {label,1813}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-9-', 1, 1815}.
  {label,1814}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2879}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-binary_aliases/1-fun-9-'},
               1}.
  {label,1815}.
    {test,is_eq_exact,{f,1816},[{x,0},{literal,<<>>}]}.
    return.
  {label,1816}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2880}]}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-8-', 1, 1818}.
  {label,1817}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2873}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-binary_aliases/1-fun-8-'},
               1}.
  {label,1818}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1820},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {bs_match,{f,1819},
              {x,1},
              {commands,[{ensure_exactly,8},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_match,{f,1819},
              {x,1},
              {commands,[{ensure_exactly,8},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},4}.
    {test_heap,7,4}.
    {put_tuple2,{x,0},{list,[{x,3},{x,2},{x,0},{x,0},{x,0},{x,0}]}}.
    return.
  {label,1819}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2874}]}.
    {badmatch,{x,0}}.
  {label,1820}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-7-', 1, 1822}.
  {label,1821}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2867}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-binary_aliases/1-fun-7-'},
               1}.
  {label,1822}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1824},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {bs_match,{f,1823},
              {x,1},
              {commands,[{ensure_exactly,8},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_match,{f,1823},
              {x,1},
              {commands,[{ensure_exactly,8},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},4}.
    {test_heap,5,4}.
    {put_tuple2,{x,0},{list,[{x,3},{x,2},{x,0},{x,0}]}}.
    return.
  {label,1823}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2868}]}.
    {badmatch,{x,0}}.
  {label,1824}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-6-', 1, 1826}.
  {label,1825}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2860}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-binary_aliases/1-fun-6-'},
               1}.
  {label,1826}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1828},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {bs_match,{f,1827},
              {x,1},
              {commands,[{ensure_exactly,8},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_match,{f,1827},
              {x,1},
              {commands,[{ensure_exactly,8},
                         {integer,3,{literal,[]},4,1,{x,3}},
                         {integer,4,{literal,[]},4,1,{x,4}}]}}.
    {test,is_eq_exact,
          {f,1827},
          [{tr,{x,4},{t_integer,{0,15}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_match,{f,1827},
              {x,1},
              {commands,[{ensure_exactly,8},
                         {integer,4,{literal,[]},8,1,{x,4}}]}}.
    {test,is_eq_exact,
          {f,1827},
          [{tr,{x,4},{t_integer,{0,255}}},{tr,{x,3},{t_integer,{0,15}}}]}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},4}.
    {test_heap,4,4}.
    {put_tuple2,{x,0},{list,[{x,3},{x,2},{x,0}]}}.
    return.
  {label,1827}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2861}]}.
    {badmatch,{x,0}}.
  {label,1828}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-5-', 2, 1830}.
  {label,1829}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2853}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-binary_aliases/1-fun-5-'},
               2}.
  {label,1830}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2854}]}.
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
    {bs_match,{f,1831},
              {x,1},
              {commands,[{ensure_exactly,8},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {move,{x,2},{x,0}}.
    return.
  {label,1831}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-4-', 1, 1833}.
  {label,1832}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2847}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-binary_aliases/1-fun-4-'},
               1}.
  {label,1833}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1835},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {bs_match,{f,1834},
              {x,1},
              {commands,[{ensure_exactly,8},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_match,{f,1834},
              {x,1},
              {commands,[{ensure_exactly,8},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},4}.
    {test_heap,4,4}.
    {put_tuple2,{x,0},{list,[{x,3},{x,2},{x,0}]}}.
    return.
  {label,1834}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2848}]}.
    {badmatch,{x,0}}.
  {label,1835}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-3-', 1, 1837}.
  {label,1836}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2840}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-binary_aliases/1-fun-3-'},
               1}.
  {label,1837}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2843}]}.
    {call_ext_only,1,{extfunc,lists,sum,1}}.


{function, '-binary_aliases/1-fun-2-', 1, 1839}.
  {label,1838}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2836}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-binary_aliases/1-fun-2-'},
               1}.
  {label,1839}.
    {test,is_tagged_tuple,{f,1838},[{x,0},4,{atom,ba_foo}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,bs_start_match3,{f,1838},2,[{x,1}],{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {bs_match,{f,1838},
              {x,1},
              {commands,[{ensure_exactly,8},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_match,{f,1838},
              {x,1},
              {commands,[{ensure_exactly,8},
                         {integer,4,{literal,[]},4,1,{x,2}},
                         {integer,4,{literal,[]},4,1,{x,4}}]}}.
    {test_heap,4,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,2},{x,4}]}}.
    return.


{function, '-binary_aliases/1-fun-1-', 1, 1841}.
  {label,1840}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2832}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-binary_aliases/1-fun-1-'},
               1}.
  {label,1841}.
    {test,is_tagged_tuple,{f,1840},[{x,0},4,{atom,ba_foo}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,bs_start_match3,{f,1840},2,[{x,1}],{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {bs_match,{f,1840},
              {x,1},
              {commands,[{ensure_exactly,8},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_match,{f,1840},
              {x,1},
              {commands,[{ensure_exactly,8},
                         {integer,4,{literal,[]},8,1,{x,2}}]}}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,3},{x,2}]}}.
    return.


{function, '-binary_aliases/1-fun-0-', 1, 1843}.
  {label,1842}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2828}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-binary_aliases/1-fun-0-'},
               1}.
  {label,1843}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1842},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {bs_match,{f,1844},
              {x,1},
              {commands,[{ensure_exactly,8},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_match,{f,1844},
              {x,1},
              {commands,[{ensure_exactly,8},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,1844}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,1842}}.


{function, '-many_clauses/1-lc$^1/1-1-', 1, 1846}.
  {label,1845}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2704}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-many_clauses/1-lc$^1/1-1-'},
               1}.
  {label,1846}.
    {test,is_nonempty_list,{f,1847},[{x,0}]}.
    {allocate,3,1}.
    {init_yregs,{list,[{y,0}]}}.
    {get_list,{x,0},{y,2},{y,1}}.
    {move,{y,2},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2699}]}.
    {call_ext,1,{extfunc,erlang,phash2,1}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2701}]}.
    {bs_create_bin,{f,0},
                   0,1,16,
                   {x,1},
                   {list,[{atom,integer},
                          1,1,nil,
                          {tr,{x,0},{t_integer,{0,134217727}}},
                          {integer,16}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,2}}.
    {bs_match,{f,1850},
              {x,2},
              {commands,[{ensure_exactly,16},
                         {integer,3,{literal,[]},16,1,{x,3}}]}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2702}]}.
    {gc_bif,'+',{f,0},4,[{y,2},{tr,{x,3},{t_integer,{0,65535}}}],{y,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2703}]}.
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
    {call_ext,1,{extfunc,bs_match_dialyzer_SUITE_many_clauses,f,1}}.
    {test,is_eq_exact,{f,1849},[{x,0},{tr,{y,1},{t_number,any}}]}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,1846},2}. % '-many_clauses/1-lc$^1/1-1-'/1
  {label,1847}.
    {test,is_nil,{f,1848},[{x,0}]}.
    return.
  {label,1848}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2704}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,1849}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2703}]}.
    {badmatch,{x,0}}.
  {label,1850}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2701}]}.
    {badmatch,{x,1}}.


{function, '-many_clauses/1-lc$^0/1-0-', 1, 1852}.
  {label,1851}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2688}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-many_clauses/1-lc$^0/1-0-'},
               1}.
  {label,1852}.
    {test,is_nonempty_list,{f,1853},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{x,0},{y,0}}.
    {call,1,{f,1487}}. % one_clause/1
    {swap,{y,0},{x,0}}.
    {call,1,{f,1852}}. % '-many_clauses/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1853}.
    {test,is_nil,{f,1854},[{x,0}]}.
    return.
  {label,1854}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-binary_match_to_asm/1-lc$^0/1-0-', 1, 1856}.
  {label,1855}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2667}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-binary_match_to_asm/1-lc$^0/1-0-'},
               1}.
  {label,1856}.
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
    {test,is_nonempty_list,{f,1857},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,1,{f,1856}}. % '-binary_match_to_asm/1-lc$^0/1-0-'/1
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
  {label,1857}.
    return.


{function, '-expand_and_squeeze/1-fun-0-', 1, 1859}.
  {label,1858}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2609}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-expand_and_squeeze/1-fun-0-'},
               1}.
  {label,1859}.
    {test,is_tagged_tuple,{f,1860},[{x,0},4,{atom,bs_match}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1860},[{x,1},2,{atom,f}]}.
    {get_tuple_element,{x,0},3,{x,0}}.
    {test,is_tagged_tuple,{f,1860},[{x,0},2,{atom,commands}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_nonempty_list,{f,1860},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_eq_exact,{f,1860},[{x,1},{literal,{ensure_at_least,16,1}}]}.
    {test,is_nonempty_list,{f,1860},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tagged_tuple,{f,1860},[{x,1},6,{atom,integer}]}.
    {get_tuple_element,{x,1},3,{x,2}}.
    {test,is_eq_exact,{f,1860},[{x,2},{integer,16}]}.
    {get_tuple_element,{x,1},4,{x,1}}.
    {test,is_eq_exact,{f,1860},[{x,1},{integer,1}]}.
    {bif,'=:=',{f,0},[{x,0},nil],{x,0}}.
    return.
  {label,1860}.
    {move,{atom,false},{x,0}}.
    return.


{function, '-em_2/1-lbc$^0/2-0-', 2, 1862}.
  {label,1861}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2545}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,'-em_2/1-lbc$^0/2-0-'},2}.
  {label,1862}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,16,true}}]}}.
    {test,bs_start_match3,{f,1864},2,[{x,0}],{x,2}}.
    {bs_match,{f,1863},
              {x,2},
              {commands,[{ensure_at_least,8,1},
                         {skip,0},
                         {integer,3,{literal,[]},8,1,{x,0}}]}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2546}]}.
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
    {call_only,2,{f,1862}}. % '-em_2/1-lbc$^0/2-0-'/2
  {label,1863}.
    {move,{x,1},{x,0}}.
    return.
  {label,1864}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bspu_1/1-lc$^0/1-0-', 1, 1866}.
  {label,1865}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2512}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,'-bspu_1/1-lc$^0/1-0-'},1}.
  {label,1866}.
    {'%',{var_info,{x,0},[{type,{t_bs_context,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,resume},1,{x,0},{x,0}}.
    {bs_match,{f,1867},
              {x,0},
              {commands,[{ensure_at_least,40,1},
                         {binary,1,{literal,[]},5,8,{x,1}}]}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,1866}}. % '-bspu_1/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1867}.
    {move,nil,{x,0}}.
    return.


{function, '-hangs_forever/1-fun-0-', 1, 1869}.
  {label,1868}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2495}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-hangs_forever/1-fun-0-'},
               1}.
  {label,1869}.
    {call_only,1,{f,1426}}. % hangs_forever_1/1


{function, '-beam_bsm/1-fun-0-', 1, 1871}.
  {label,1870}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2168}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,'-beam_bsm/1-fun-0-'},1}.
  {label,1871}.
    {gc_bif,'*',{f,0},1,[{x,0},{integer,2}],{x,0}}.
    return.


{function, '-num_slots_different/1-lc$^0/1-0-', 1, 1873}.
  {label,1872}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2131}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-num_slots_different/1-lc$^0/1-0-'},
               1}.
  {label,1873}.
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
    {test,is_nonempty_list,{f,1874},[{x,0}]}.
    {allocate,2,1}.
    {get_list,{x,0},{x,0},{y,1}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {get_tuple_element,{x,0},2,{x,3}}.
    {get_tuple_element,{x,0},3,{y,0}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {move,{x,3},{x,2}}.
    {call,3,{f,1211}}. % lgettext/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[ok]},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,
          {f,1875},
          [{tr,{x,1},{t_bitstring,8,false}},{tr,{y,0},{t_bitstring,8,false}}]}.
    {move,{y,1},{x,0}}.
    {call_last,1,{f,1873},2}. % '-num_slots_different/1-lc$^0/1-0-'/1
  {label,1874}.
    return.
  {label,1875}.
    {badmatch,{x,0}}.


{function, '-constant_propagation_c/0-fun-0-', 1, 1877}.
  {label,1876}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2067}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-constant_propagation_c/0-fun-0-'},
               1}.
  {label,1877}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1879},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {bs_match,{f,1878},
              {x,1},
              {commands,[{ensure_exactly,16},
                         {integer,2,{literal,[]},16,1,{x,2}}]}}.
    {move,{x,2},{x,0}}.
    return.
  {label,1878}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",2068}]}.
    {badmatch,{x,0}}.
  {label,1879}.
    {badmatch,{x,0}}.


{function, '-bad_literals/1-lc$^3/1-3-', 2, 1881}.
  {label,1880}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1951}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-bad_literals/1-lc$^3/1-3-'},
               2}.
  {label,1881}.
    {'%',{var_info,{x,1},[{type,{t_cons,any,nil}}]}}.
    {test,is_nonempty_list,{f,1882},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,2}}.
    {move,{literal,[0,1,2,3]},{x,0}}.
    {call_only,4,{f,1885}}. % '-bad_literals/1-lc$^4/1-4-'/4
  {label,1882}.
    {test,is_nil,{f,1883},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,1883}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bad_literals/1-lc$^4/1-4-', 4, 1885}.
  {label,1884}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1952}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-bad_literals/1-lc$^4/1-4-'},
               4}.
  {label,1885}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_cons,any,nil}}]}}.
    {test,is_nonempty_list,{f,1886},[{x,0}]}.
    {allocate,4,4}.
    {move,{x,3},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,1},{y,3}}.
    {get_list,{x,0},{x,1},{y,0}}.
    {move,{x,3},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1951}]}.
    {call,2,{f,1138}}. % signed_lit_match/2
    {move,{y,0},{x,4}}.
    {move,{y,2},{x,2}}.
    {move,{y,3},{x,1}}.
    {move,{x,0},{y,3}}.
    {move,{y,1},{x,3}}.
    {trim,3,1}.
    {move,{x,4},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1952}]}.
    {call,4,{f,1885}}. % '-bad_literals/1-lc$^4/1-4-'/4
    {'%',{var_info,{x,0},[{type,{t_cons,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1886}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,1881}}. % '-bad_literals/1-lc$^3/1-3-'/2


{function, '-bad_literals/1-lc$^1/1-1-', 2, 1888}.
  {label,1887}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1953}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-bad_literals/1-lc$^1/1-1-'},
               2}.
  {label,1888}.
    {'%',{var_info,{x,1},[{type,{t_cons,any,nil}}]}}.
    {test,is_nonempty_list,{f,1889},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,2}}.
    {move,{literal,[0,1,2]},{x,0}}.
    {call_only,4,{f,1892}}. % '-bad_literals/1-lc$^2/1-2-'/4
  {label,1889}.
    {test,is_nil,{f,1890},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,1890}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bad_literals/1-lc$^2/1-2-', 4, 1892}.
  {label,1891}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1954}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-bad_literals/1-lc$^2/1-2-'},
               4}.
  {label,1892}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,2}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_cons,any,nil}}]}}.
    {test,is_nonempty_list,{f,1893},[{x,0}]}.
    {allocate,4,4}.
    {move,{x,3},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,1},{y,3}}.
    {get_list,{x,0},{x,1},{y,0}}.
    {move,{x,3},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1953}]}.
    {call,2,{f,1141}}. % unsigned_lit_match/2
    {move,{y,0},{x,4}}.
    {move,{y,2},{x,2}}.
    {move,{y,3},{x,1}}.
    {move,{x,0},{y,3}}.
    {move,{y,1},{x,3}}.
    {trim,3,1}.
    {move,{x,4},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1954}]}.
    {call,4,{f,1892}}. % '-bad_literals/1-lc$^2/1-2-'/4
    {'%',{var_info,{x,0},[{type,{t_cons,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1893}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,1888}}. % '-bad_literals/1-lc$^1/1-1-'/2


{function, '-bad_literals/1-lc$^0/1-0-', 1, 1895}.
  {label,1894}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1956}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-bad_literals/1-lc$^0/1-0-'},
               1}.
  {label,1895}.
    {test,is_nonempty_list,{f,1896},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{x,0},{y,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1955}]}.
    {call,1,{f,1144}}. % unicode_match/1
    {swap,{y,0},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1956}]}.
    {call,1,{f,1895}}. % '-bad_literals/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1896}.
    {test,is_nil,{f,1897},[{x,0}]}.
    return.
  {label,1897}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-haystack_2/1-lc$^0/1-0-', 2, 1899}.
  {label,1898}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1567}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-haystack_2/1-lc$^0/1-0-'},
               2}.
  {label,1899}.
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
    {test,is_nonempty_list,{f,1900},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {get_tuple_element,{x,2},0,{x,3}}.
    {get_tuple_element,{x,2},1,{x,2}}.
    {bs_start_match4,{atom,no_fail},4,{x,1},{x,4}}.
    {test,bs_skip_bits2,
          {f,1901},
          [{x,4},
           {x,3},
           8,
           {field_flags,[{anno,[1565,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,1901},
          5,
          [{tr,{x,4},{t_bs_context,8}},
           {tr,{x,2},{t_integer,{10,20}}},
           8,
           {field_flags,[{anno,[1565,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {call,2,{f,1899}}. % '-haystack_2/1-lc$^0/1-0-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1900}.
    return.
  {label,1901}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1565}]}.
    {badmatch,{x,1}}.


{function, '-haystack_1/1-lc$^0/1-0-', 2, 1903}.
  {label,1902}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1558}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-haystack_1/1-lc$^0/1-0-'},
               2}.
  {label,1903}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{10,10}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,16,false}}]}}.
    {test,is_nonempty_list,{f,1904},[{x,0}]}.
    {get_tl,{x,0},{x,0}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,2}}.
    {bs_match,{f,1905},{x,2},{commands,[{ensure_exactly,80}]}}.
    {call_only,2,{f,1903}}. % '-haystack_1/1-lc$^0/1-0-'/2
  {label,1904}.
    return.
  {label,1905}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1556}]}.
    {badmatch,{x,1}}.


{function, '-bad_size_2/1-lc$^0/1-0-', 1, 1907}.
  {label,1906}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1538}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-bad_size_2/1-lc$^0/1-0-'},
               1}.
  {label,1907}.
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
    {test,is_nonempty_list,{f,1908},[{x,0}]}.
    {get_tl,{x,0},{x,0}}.
    {call_only,1,{f,1907}}. % '-bad_size_2/1-lc$^0/1-0-'/1
  {label,1908}.
    {test,is_nil,
          {f,1909},
          [{tr,{x,0},{t_union,{t_atom,[no_list]},nil,none,none,none}}]}.
    return.
  {label,1909}.
    {move,{literal,{bad_generator,no_list}},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bad_size/1-lbc$^0/2-0-', 2, 1911}.
  {label,1910}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1472}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-bad_size/1-lbc$^0/2-0-'},
               2}.
  {label,1911}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,256,true}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {move,{x,1},{x,0}}.
    return.


{function, '-zero_width/1-fun-0-', 1, 1913}.
  {label,1912}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1418}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,'-zero_width/1-fun-0-'},1}.
  {label,1913}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1915},1,[{x,0}],{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,1914},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,is_eq_exact,{f,1914},[{tr,{x,2},{t_integer,{0,255}}},{integer,42}]}.
    {bs_match,{f,1914},{x,0},{commands,[{ensure_exactly,0}]}}.
    {move,{atom,star},{x,0}}.
    return.
  {label,1914}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_match,{f,1915},{x,0},{commands,[{ensure_exactly,0}]}}.
    {move,{integer,0},{x,0}}.
    return.
  {label,1915}.
    {move,{atom,no_match},{x,0}}.
    return.


{function, '-coverage_beam_ssa_codegen/1-lbc$^0/2-0-', 2, 1917}.
  {label,1916}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1028}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-coverage_beam_ssa_codegen/1-lbc$^0/2-0-'},
               2}.
  {label,1917}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,1919},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,is_eq_exact,{f,1918},[{tr,{x,2},{t_integer,{0,255}}},{integer,2}]}.
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
    {call_only,2,{f,1917}}. % '-coverage_beam_ssa_codegen/1-lbc$^0/2-0-'/2
  {label,1918}.
    {call_only,2,{f,1917}}. % '-coverage_beam_ssa_codegen/1-lbc$^0/2-0-'/2
  {label,1919}.
    {move,{atom,ok},{x,0}}.
    return.


{function, '-coverage_trim_4/1-lbc$^0/2-0-', 2, 1921}.
  {label,1920}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1011}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-coverage_trim_4/1-lbc$^0/2-0-'},
               2}.
  {label,1921}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,16,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,1922},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
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
    {call_only,2,{f,1921}}. % '-coverage_trim_4/1-lbc$^0/2-0-'/2
  {label,1922}.
    {move,{atom,ok},{x,0}}.
    return.


{function, '-do_coverage_bin_to_term_list/1-lbc$^0/2-0-', 2, 1924}.
  {label,1923}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",925}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-do_coverage_bin_to_term_list/1-lbc$^0/2-0-'},
               2}.
  {label,1924}.
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,1925},[{x,0}]}.
    {allocate,2,2}.
    {move,{x,1},{y,1}}.
    {get_list,{x,0},{x,0},{y,0}}.
    {call_ext,1,{extfunc,erlang,term_to_binary,1}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",926}]}.
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
    {line,[{location,"bs_match_dialyzer_SUITE.erl",925}]}.
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
    {call_last,2,{f,1924},2}. % '-do_coverage_bin_to_term_list/1-lbc$^0/2-0-'/2
  {label,1925}.
    {move,{x,1},{x,0}}.
    return.


{function, '-coverage_bc/2-lbc$^0/2-0-', 2, 1927}.
  {label,1926}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",904}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-coverage_bc/2-lbc$^0/2-0-'},
               2}.
  {label,1927}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,255}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,1928},[{x,0}]}.
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
    {call_only,2,{f,1927}}. % '-coverage_bc/2-lbc$^0/2-0-'/2
  {label,1928}.
    {move,{x,1},{x,0}}.
    return.


{function, '-coverage/1-fun-4-', 0, 1930}.
  {label,1929}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",880}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,'-coverage/1-fun-4-'},0}.
  {label,1930}.
    {move,{atom,whatever},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,throw,1}}.


{function, '-coverage/1-fun-3-', 0, 1932}.
  {label,1931}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",879}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,'-coverage/1-fun-3-'},0}.
  {label,1932}.
    {move,{integer,42},{x,0}}.
    return.


{function, '-coverage/1-fun-2-', 2, 1934}.
  {label,1933}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",823}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,'-coverage/1-fun-2-'},2}.
  {label,1934}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",824}]}.
    {gc_bif,'+',{f,0},2,[{x,1},{x,0}],{x,0}}.
    return.


{function, '-coverage/1-fun-1-', 2, 1936}.
  {label,1935}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",822}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,'-coverage/1-fun-1-'},2}.
  {label,1936}.
    {gc_bif,'+',{f,0},2,[{x,1},{x,0}],{x,0}}.
    return.


{function, '-coverage/1-fun-0-', 2, 1938}.
  {label,1937}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",821}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,'-coverage/1-fun-0-'},2}.
  {label,1938}.
    {gc_bif,'+',{f,0},2,[{x,1},{x,0}],{x,0}}.
    return.


{function, '-bin_and_float/1-lbc$^0/2-0-', 3, 1940}.
  {label,1939}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",633}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-bin_and_float/1-lbc$^0/2-0-'},
               3}.
  {label,1940}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {test,bs_get_float2,
          {f,1942},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {x,2},
           63,
           {field_flags,[{anno,[633,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,1941},[{tr,{x,3},{t_float,any}},{float,1.0}]}.
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
    {call_only,3,{f,1940}}. % '-bin_and_float/1-lbc$^0/2-0-'/3
  {label,1941}.
    {call_only,3,{f,1940}}. % '-bin_and_float/1-lbc$^0/2-0-'/3
  {label,1942}.
    {move,{x,1},{x,0}}.
    return.


{function, '-null_fields/1-fun-3-', 0, 1944}.
  {label,1943}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",304}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-null_fields/1-fun-3-'},
               0}.
  {label,1944}.
    {move,{atom,tail},{x,0}}.
    return.


{function, '-null_fields/1-fun-1-', 0, 1946}.
  {label,1945}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",297}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-null_fields/1-fun-1-'},
               0}.
  {label,1946}.
    {allocate,0,0}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",298}]}.
    {call,1,{f,1776}}. % id/1
    {move,{literal,<<>>},{x,1}}.
    {bs_start_match4,{atom,no_fail},1,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {test,bs_skip_bits2,
          {f,1947},
          [{x,1},
           {x,0},
           1,
           {field_flags,[{anno,[299,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_match,{f,1947},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{atom,tail},{x,0}}.
    {deallocate,0}.
    return.
  {label,1947}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_match,{f,1948},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{atom,empty},{x,0}}.
    {deallocate,0}.
    return.
  {label,1948}.
    {move,{literal,<<>>},{x,0}}.
    {call_last,1,{f,2042},0}. % '-null_fields/1-inlined-0-'/1


{function, '-otp_5269/1-fun-15-', 0, 1950}.
  {label,1949}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",286}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,'-otp_5269/1-fun-15-'},0}.
  {label,1950}.
    {move,{literal,<<1,2,3,4>>},{x,0}}.
    {bs_start_match4,{atom,no_fail},0,{x,0},{x,0}}.
    {bs_match,{f,1951},
              {x,0},
              {commands,[{ensure_at_least,16,1},
                         {skip,8},
                         {integer,1,{literal,[]},8,1,{x,1}}]}}.
    {test,bs_skip_bits2,
          {f,1951},
          [{x,0},
           {x,1},
           8,
           {field_flags,[{anno,[287,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_match,{f,1951},{x,0},{commands,[{ensure_exactly,0}]}}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1951}.
    {move,{literal,<<1,2,3,4>>},{x,0}}.
    {call_only,1,{f,2048}}. % '-otp_5269/1-inlined-6-'/1


{function, '-otp_5269/1-fun-13-', 0, 1953}.
  {label,1952}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",282}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,'-otp_5269/1-fun-13-'},0}.
  {label,1953}.
    {move,{literal,[<<0,0,0,1>>,<<0,0,0,2>>,<<3>>]},{x,0}}.
    {call_only,1,{f,1955}}. % '-otp_5269/1-lc$^12/1-5-'/1


{function, '-otp_5269/1-lc$^12/1-5-', 1, 1955}.
  {label,1954}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",283}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-otp_5269/1-lc$^12/1-5-'},
               1}.
  {label,1955}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {test,is_nonempty_list,{f,1957},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_match,{f,1956},
              {x,1},
              {commands,[{ensure_exactly,32},
                         {integer,2,{literal,[]},32,1,{x,2}}]}}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {call,1,{f,1955}}. % '-otp_5269/1-lc$^12/1-5-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,4294967295}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1956}.
    {call_only,1,{f,1955}}. % '-otp_5269/1-lc$^12/1-5-'/1
  {label,1957}.
    return.


{function, '-otp_5269/1-fun-11-', 0, 1959}.
  {label,1958}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",277}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,'-otp_5269/1-fun-11-'},0}.
  {label,1959}.
    {move,{literal,<<2,65,66,67,68>>},{x,0}}.
    {bs_start_match4,{atom,no_fail},0,{x,0},{x,0}}.
    {bs_match,{f,1960},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,1,{literal,[]},8,1,{x,1}}]}}.
    {test,bs_get_binary2,
          {f,1960},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {tr,{x,1},{t_integer,{0,255}}},
           8,
           {field_flags,[{anno,[278,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,0},{x,0},3}.
    {test_heap,4,3}.
    {put_tuple2,{x,0},{list,[{x,1},{x,2},{x,0}]}}.
    return.
  {label,1960}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",278}]}.
    {badmatch,{literal,<<2,65,66,67,68>>}}.


{function, '-otp_5269/1-fun-10-', 0, 1962}.
  {label,1961}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",275}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,'-otp_5269/1-fun-10-'},0}.
  {label,1962}.
    {move,{integer,28},{x,0}}.
    return.


{function, '-otp_5269/1-fun-9-', 0, 1964}.
  {label,1963}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",271}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,'-otp_5269/1-fun-9-'},0}.
  {label,1964}.
    {move,{literal,[<<16,0,19>>]},{x,0}}.
    {call_only,1,{f,1966}}. % '-otp_5269/1-lc$^7/1-3-'/1


{function, '-otp_5269/1-lc$^7/1-3-', 1, 1966}.
  {label,1965}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",272}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-otp_5269/1-lc$^7/1-3-'},
               1}.
  {label,1966}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {test,is_nonempty_list,{f,1968},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_match,{f,1967},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,1967},
          3,
          [{tr,{x,1},{t_bs_context,8}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[271,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,1967},{x,1},{commands,[{ensure_exactly,0}]}}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",273}]}.
    {bs_create_bin,{f,0},
                   2,3,8,
                   {x,1},
                   {list,[{atom,integer},
                          1,1,nil,
                          {tr,{x,2},{t_integer,{0,'+inf'}}},
                          {integer,8}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {swap,{x,0},{x,1}}.
    {call_only,2,{f,1970}}. % '-otp_5269/1-lc$^8/1-4-'/2
  {label,1967}.
    {call_only,1,{f,1966}}. % '-otp_5269/1-lc$^7/1-3-'/1
  {label,1968}.
    return.


{function, '-otp_5269/1-lc$^8/1-4-', 2, 1970}.
  {label,1969}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",273}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-otp_5269/1-lc$^8/1-4-'},
               2}.
  {label,1970}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {test,is_nonempty_list,{f,1972},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,2}}.
    {bs_match,{f,1971},
              {x,2},
              {commands,[{ensure_exactly,8},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {allocate,1,4}.
    {move,{x,3},{y,0}}.
    {call,2,{f,1970}}. % '-otp_5269/1-lc$^8/1-4-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,255}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1971}.
    {call_only,2,{f,1970}}. % '-otp_5269/1-lc$^8/1-4-'/2
  {label,1972}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,1966}}. % '-otp_5269/1-lc$^7/1-3-'/1


{function, '-otp_5269/1-fun-6-', 0, 1974}.
  {label,1973}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",269}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,'-otp_5269/1-fun-6-'},0}.
  {label,1974}.
    {move,{literal,[<<" ">>]},{x,0}}.
    {call_only,1,{f,1976}}. % '-otp_5269/1-lc$^5/1-2-'/1


{function, '-otp_5269/1-lc$^5/1-2-', 1, 1976}.
  {label,1975}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",269}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-otp_5269/1-lc$^5/1-2-'},
               1}.
  {label,1976}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {test,is_nonempty_list,{f,1978},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_match,{f,1977},
              {x,1},
              {commands,[{ensure_exactly,8},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {call,1,{f,1976}}. % '-otp_5269/1-lc$^5/1-2-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,255}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1977}.
    {call_only,1,{f,1976}}. % '-otp_5269/1-lc$^5/1-2-'/1
  {label,1978}.
    return.


{function, '-otp_5269/1-fun-4-', 0, 1980}.
  {label,1979}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",267}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,'-otp_5269/1-fun-4-'},0}.
  {label,1980}.
    {move,{literal,<<" ">>},{x,0}}.
    {bs_start_match4,{atom,no_fail},0,{x,0},{x,0}}.
    {bs_match,{f,1981},
              {x,0},
              {commands,[{ensure_exactly,8},
                         {integer,1,{literal,[]},8,1,{x,1}}]}}.
    {move,{x,1},{x,0}}.
    return.
  {label,1981}.
    {move,{literal,<<" ">>},{x,0}}.
    {call_only,1,{f,2046}}. % '-otp_5269/1-inlined-1-'/1


{function, '-otp_5269/1-fun-2-', 0, 1983}.
  {label,1982}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",265}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,'-otp_5269/1-fun-2-'},0}.
  {label,1983}.
    {move,{literal,<<16,0,7>>},{x,0}}.
    {bs_start_match4,{atom,no_fail},0,{x,0},{x,0}}.
    {bs_match,{f,1984},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,1,{literal,[]},8,1,{x,1}}]}}.
    {test,bs_get_integer2,
          {f,1984},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {tr,{x,1},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[265,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {bs_match,{f,1984},{x,0},{commands,[{ensure_exactly,0}]}}.
    {move,{x,1},{x,0}}.
    return.
  {label,1984}.
    {badmatch,{literal,<<16,0,7>>}}.


{function, '-otp_5269/1-fun-1-', 0, 1986}.
  {label,1985}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",260}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},{atom,'-otp_5269/1-fun-1-'},0}.
  {label,1986}.
    {move,{literal,<<16,0,7>>},{x,0}}.
    {bs_start_match4,{atom,no_fail},0,{x,0},{x,0}}.
    {bs_match,{f,1987},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,1,{literal,[]},8,1,{x,1}}]}}.
    {test,bs_get_integer2,
          {f,1987},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {tr,{x,1},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[261,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {bs_match,{f,1987},{x,0},{commands,[{ensure_exactly,0}]}}.
    {move,{x,1},{x,0}}.
    return.
  {label,1987}.
    {move,{literal,<<16,0,7>>},{x,0}}.
    {call_only,1,{f,2044}}. % '-otp_5269/1-inlined-0-'/1


{function, '-size_shadow_6/2-fun-0-', 5, 1989}.
  {label,1988}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",217}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-size_shadow_6/2-fun-0-'},
               5}.
  {label,1989}.
    {'%',{var_info,{x,1},[accepts_match_context]}}.
    {'%',{var_info,{x,3},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_atom,[any]},
                                     2 => {t_atom,[term]},
                                     3 => {t_atom,[goes]}}}}]}}.
    {'%',{var_info,{x,4},[{type,{t_integer,{13,13}}}]}}.
    {test,bs_start_match3,{f,1991},3,[{x,1}],{x,3}}.
    {bs_get_position,{x,3},{x,1},4}.
    {bs_match,{f,1990},
              {x,3},
              {commands,[{ensure_exactly,13},
                         {integer,4,{literal,[]},13,1,{x,4}}]}}.
    {move,{literal,{any,term,goes}},{x,1}}.
    {move,{x,2},{x,3}}.
    {move,{x,0},{x,2}}.
    {move,{x,4},{x,0}}.
    {call_only,4,{f,45}}. % fum/4
  {label,1990}.
    {bs_set_position,{x,3},{x,1}}.
    {bs_get_tail,{x,3},{x,1},4}.
    {call_only,3,{f,2066}}. % '-size_shadow_6/2-inlined-0-'/3
  {label,1991}.
    {call_only,3,{f,2066}}. % '-size_shadow_6/2-inlined-0-'/3


{function, '-size_shadow_5/2-fun-0-', 5, 1993}.
  {label,1992}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",214}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-size_shadow_5/2-fun-0-'},
               5}.
  {label,1993}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {'%',{var_info,{x,3},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_atom,[any]},
                                     2 => {t_atom,[term]},
                                     3 => {t_atom,[goes]}}}}]}}.
    {'%',{var_info,{x,4},[{type,{t_integer,{12,12}}}]}}.
    {test,bs_start_match3,{f,1995},3,[{x,0}],{x,3}}.
    {bs_get_position,{x,3},{x,0},4}.
    {bs_match,{f,1994},
              {x,3},
              {commands,[{ensure_exactly,12},
                         {integer,4,{literal,[]},12,1,{x,4}}]}}.
    {move,{x,2},{x,3}}.
    {move,{x,1},{x,2}}.
    {move,{literal,{any,term,goes}},{x,1}}.
    {move,{x,4},{x,0}}.
    {call_only,4,{f,45}}. % fum/4
  {label,1994}.
    {bs_set_position,{x,3},{x,0}}.
    {bs_get_tail,{x,3},{x,0},4}.
    {call_only,3,{f,2064}}. % '-size_shadow_5/2-inlined-0-'/3
  {label,1995}.
    {call_only,3,{f,2064}}. % '-size_shadow_5/2-inlined-0-'/3


{function, '-size_shadow_4/1-fun-1-', 2, 1997}.
  {label,1996}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",205}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-size_shadow_4/1-fun-1-'},
               2}.
  {label,1997}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{8,8}}}]}}.
    {test,bs_start_match3,{f,1998},1,[{x,0}],{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,1998},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,1998},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[206,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,1998},
          4,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[206,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {bs_match,{f,1998},{x,0},{commands,[{ensure_exactly,0}]}}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_match,{f,1998},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,5,{literal,[]},8,1,{x,1}}]}}.
    {test,bs_get_integer2,
          {f,1998},
          5,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,1},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[206,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_get_integer2,
          {f,1998},
          6,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,1},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[206,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {bs_match,{f,1998},{x,0},{commands,[{ensure_exactly,0}]}}.
    {test,is_eq_exact,
          {f,1998},
          [{tr,{x,6},{t_integer,{0,'+inf'}}},{tr,{x,1},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,1998},
          [{tr,{x,2},{t_integer,{0,255}}},{tr,{x,1},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,1998},
          [{tr,{x,3},{t_integer,{0,'+inf'}}},
           {tr,{x,5},{t_integer,{0,'+inf'}}}]}.
    {test,is_eq_exact,
          {f,1998},
          [{tr,{x,4},{t_integer,{0,'+inf'}}},{tr,{x,1},{t_integer,{0,255}}}]}.
    {move,{x,5},{x,0}}.
    return.
  {label,1998}.
    {move,{atom,no},{x,0}}.
    return.


{function, '-size_shadow_4/1-fun-3-', 2, 2000}.
  {label,1999}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",199}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-size_shadow_4/1-fun-3-'},
               2}.
  {label,2000}.
    {'%',{var_info,{x,1},[{type,{t_integer,{8,8}}}]}}.
    {test,bs_start_match3,{f,2001},1,[{x,0}],{x,0}}.
    {bs_match,{f,2001},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,1,{literal,[]},8,1,{x,1}}]}}.
    {test,bs_get_integer2,
          {f,2001},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,1},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[200,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,2001},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,1},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[200,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_match,{f,2001},{x,0},{commands,[{ensure_exactly,0}]}}.
    {test,is_eq_exact,
          {f,2001},
          [{tr,{x,3},{t_integer,{0,'+inf'}}},{tr,{x,1},{t_integer,{0,255}}}]}.
    {move,{x,2},{x,0}}.
    return.
  {label,2001}.
    {move,{atom,no},{x,0}}.
    return.


{function, '-size_shadow_4/1-fun-4-', 2, 2003}.
  {label,2002}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",196}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-size_shadow_4/1-fun-4-'},
               2}.
  {label,2003}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{8,8}}}]}}.
    {test,bs_start_match3,{f,2004},1,[{x,0}],{x,0}}.
    {bs_match,{f,2004},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,1,{literal,[]},8,1,{x,1}}]}}.
    {test,bs_get_integer2,
          {f,2004},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,1},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[196,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,2004},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,1},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[196,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_match,{f,2004},{x,0},{commands,[{ensure_exactly,0}]}}.
    {test,is_eq_exact,
          {f,2004},
          [{tr,{x,3},{t_integer,{0,'+inf'}}},{tr,{x,1},{t_integer,{0,255}}}]}.
    {move,{x,2},{x,0}}.
    return.
  {label,2004}.
    {move,{atom,no},{x,0}}.
    return.


{function, '-size_shadow_3/0-fun-1-', 1, 2006}.
  {label,2005}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",190}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-size_shadow_3/0-fun-1-'},
               1}.
  {label,2006}.
    {test_heap,4,1}.
    {put_tuple2,{x,1},{list,[{atom,tag},{x,0},{x,0}]}}.
    {test,bs_start_match3,{f,2007},2,[{x,0}],{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {bs_match,{f,2007},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,bs_get_integer2,
          {f,2007},
          4,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[191,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_integer2,
          {f,2007},
          5,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[191,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {bs_match,{f,2007},{x,0},{commands,[{ensure_exactly,0}]}}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_match,{f,2007},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,6,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,2007},
          6,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[191,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,bs_get_integer2,
          {f,2007},
          7,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[191,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,7}}.
    {bs_match,{f,2007},{x,0},{commands,[{ensure_exactly,0}]}}.
    {test,is_eq_exact,
          {f,2007},
          [{tr,{x,7},{t_integer,{0,'+inf'}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,2007},
          [{tr,{x,3},{t_integer,{0,255}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,2007},
          [{tr,{x,4},{t_integer,{0,'+inf'}}},
           {tr,{x,6},{t_integer,{0,'+inf'}}}]}.
    {test,is_eq_exact,
          {f,2007},
          [{tr,{x,5},{t_integer,{0,'+inf'}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {move,{x,6},{x,0}}.
    return.
  {label,2007}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,2062}}. % '-size_shadow_3/0-inlined-2-'/1


{function, '-size_shadow_3/0-fun-3-', 1, 2009}.
  {label,2008}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",187}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-size_shadow_3/0-fun-3-'},
               1}.
  {label,2009}.
    {test_heap,5,1}.
    {put_list,{x,0},nil,{x,1}}.
    {put_tuple2,{x,1},{list,[{atom,tag},{x,1}]}}.
    {test,bs_start_match3,{f,2010},2,[{x,0}],{x,0}}.
    {bs_match,{f,2010},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,2010},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[188,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,2010},
          4,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[188,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {bs_match,{f,2010},{x,0},{commands,[{ensure_exactly,0}]}}.
    {test,is_eq_exact,
          {f,2010},
          [{tr,{x,4},{t_integer,{0,'+inf'}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {move,{x,3},{x,0}}.
    return.
  {label,2010}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,2060}}. % '-size_shadow_3/0-inlined-1-'/1


{function, '-size_shadow_3/0-fun-4-', 1, 2012}.
  {label,2011}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",186}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-size_shadow_3/0-fun-4-'},
               1}.
  {label,2012}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,2011},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {bs_match,{f,2013},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,2013},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[186,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,2013},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[186,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {bs_match,{f,2013},{x,1},{commands,[{ensure_exactly,0}]}}.
    {test,is_eq_exact,
          {f,2013},
          [{tr,{x,4},{t_integer,{0,'+inf'}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {move,{x,3},{x,0}}.
    return.
  {label,2013}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,2011}}.


{function, '-size_shadow_2/1-fun-1-', 2, 2015}.
  {label,2014}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",179}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-size_shadow_2/1-fun-1-'},
               2}.
  {label,2015}.
    {'%',{var_info,{x,1},[{type,{t_integer,{8,8}}}]}}.
    {test_heap,3,1}.
    {put_tuple2,{x,1},{list,[{x,0},{x,0}]}}.
    {test,bs_start_match3,{f,2016},2,[{x,0}],{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {bs_match,{f,2016},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,bs_get_integer2,
          {f,2016},
          4,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[180,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {bs_match,{f,2016},{x,0},{commands,[{ensure_exactly,0}]}}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_match,{f,2016},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,5,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,2016},
          5,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[180,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {bs_match,{f,2016},{x,0},{commands,[{ensure_exactly,0}]}}.
    {test,is_eq_exact,
          {f,2016},
          [{tr,{x,3},{t_integer,{0,255}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,2016},
          [{tr,{x,4},{t_integer,{0,'+inf'}}},
           {tr,{x,5},{t_integer,{0,'+inf'}}}]}.
    {move,{x,5},{x,0}}.
    return.
  {label,2016}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,2058}}. % '-size_shadow_2/1-inlined-2-'/1


{function, '-size_shadow_2/1-fun-3-', 2, 2018}.
  {label,2017}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",176}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-size_shadow_2/1-fun-3-'},
               2}.
  {label,2018}.
    {'%',{var_info,{x,1},[{type,{t_integer,{8,8}}}]}}.
    {test_heap,2,1}.
    {put_list,{x,0},nil,{x,1}}.
    {test,bs_start_match3,{f,2019},2,[{x,0}],{x,0}}.
    {bs_match,{f,2019},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,2019},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[177,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,2019},{x,0},{commands,[{ensure_exactly,0}]}}.
    {move,{x,2},{x,0}}.
    return.
  {label,2019}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,2056}}. % '-size_shadow_2/1-inlined-1-'/1


{function, '-size_shadow_2/1-fun-4-', 2, 2021}.
  {label,2020}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",175}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-size_shadow_2/1-fun-4-'},
               2}.
  {label,2021}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{8,8}}}]}}.
    {test,bs_start_match3,{f,2023},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {bs_match,{f,2022},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,2022},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[175,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,2022},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{x,2},{x,0}}.
    return.
  {label,2022}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {call_only,1,{f,2054}}. % '-size_shadow_2/1-inlined-0-'/1
  {label,2023}.
    {call_only,1,{f,2054}}. % '-size_shadow_2/1-inlined-0-'/1


{function, '-size_shadow_1/0-fun-1-', 1, 2025}.
  {label,2024}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",166}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-size_shadow_1/0-fun-1-'},
               1}.
  {label,2025}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,2027},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {bs_match,{f,2026},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
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
    {call_only,2,{f,2029}}. % '-size_shadow_1/0-fun-0-'/2
  {label,2026}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",167}]}.
    {badmatch,{x,0}}.
  {label,2027}.
    {badmatch,{x,0}}.


{function, '-size_shadow_1/0-fun-0-', 2, 2029}.
  {label,2028}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",168}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-size_shadow_1/0-fun-0-'},
               2}.
  {label,2029}.
    {test,is_nonempty_list,{f,2028},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,3}}.
    {test,is_nil,{f,2028},[{x,3}]}.
    {test,is_tuple,{f,2028},[{x,1}]}.
    {test,test_arity,{f,2028},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_map,{f,2028},[{x,3}]}.
    {get_map_elements,{f,2028},
                      {tr,{x,3},{t_map,any,any}},
                      {list,[{atom,key2},{x,3},{atom,key1},{x,4}]}}.
    {test,bs_start_match3,{f,2028},5,[{x,3}],{x,3}}.
    {bs_match,{f,2028},
              {x,3},
              {commands,[{ensure_at_least,8,1},
                         {integer,5,{literal,[]},8,1,{x,5}}]}}.
    {test,bs_get_integer2,
          {f,2028},
          6,
          [{tr,{x,3},{t_bs_context,1}},
           {tr,{x,5},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[168,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {bs_match,{f,2028},{x,3},{commands,[{ensure_exactly,0}]}}.
    {test,bs_start_match3,{f,2028},7,[{x,4}],{x,3}}.
    {bs_match,{f,2028},
              {x,3},
              {commands,[{ensure_at_least,8,1},
                         {integer,7,{literal,[]},8,1,{x,4}}]}}.
    {test,bs_get_integer2,
          {f,2028},
          7,
          [{tr,{x,3},{t_bs_context,1}},
           {tr,{x,4},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[168,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,7}}.
    {bs_match,{f,2028},{x,3},{commands,[{ensure_exactly,0}]}}.
    {test,is_eq_exact,{f,2028},[{tr,{x,4},{t_integer,{0,255}}},{x,2}]}.
    {test,is_eq_exact,
          {f,2028},
          [{tr,{x,5},{t_integer,{0,255}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,2028},
          [{tr,{x,6},{t_integer,{0,'+inf'}}},
           {tr,{x,7},{t_integer,{0,'+inf'}}}]}.
    {get_tuple_element,{x,1},1,{x,3}}.
    {test,is_eq_exact,{f,2028},[{x,3},{tr,{x,2},{t_integer,{0,255}}}]}.
    {move,{x,7},{x,0}}.
    return.


{function, '-size_shadow_1/0-fun-3-', 1, 2031}.
  {label,2030}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",163}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-size_shadow_1/0-fun-3-'},
               1}.
  {label,2031}.
    {test_heap,4,1}.
    {put_list,{x,0},nil,{x,1}}.
    {put_list,{x,0},{x,1},{x,1}}.
    {test,bs_start_match3,{f,2032},2,[{x,0}],{x,2}}.
    {bs_match,{f,2032},
              {x,2},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,bs_get_integer2,
          {f,2032},
          4,
          [{tr,{x,2},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[164,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {bs_match,{f,2032},{x,2},{commands,[{ensure_exactly,0}]}}.
    {bs_start_match4,{atom,no_fail},5,{x,0},{x,0}}.
    {bs_match,{f,2032},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,5,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,2032},
          5,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[164,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {bs_match,{f,2032},{x,0},{commands,[{ensure_exactly,0}]}}.
    {test,is_eq_exact,
          {f,2032},
          [{tr,{x,3},{t_integer,{0,255}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,2032},
          [{tr,{x,4},{t_integer,{0,'+inf'}}},
           {tr,{x,5},{t_integer,{0,'+inf'}}}]}.
    {move,{x,5},{x,0}}.
    return.
  {label,2032}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,2052}}. % '-size_shadow_1/0-inlined-2-'/1


{function, '-size_shadow_1/0-fun-5-', 1, 2034}.
  {label,2033}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",160}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-size_shadow_1/0-fun-5-'},
               1}.
  {label,2034}.
    {test_heap,2,1}.
    {put_list,{x,0},nil,{x,1}}.
    {test,bs_start_match3,{f,2035},2,[{x,0}],{x,0}}.
    {bs_match,{f,2035},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,2035},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[161,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,2035},{x,0},{commands,[{ensure_exactly,0}]}}.
    {move,{x,2},{x,0}}.
    return.
  {label,2035}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,2050}}. % '-size_shadow_1/0-inlined-1-'/1


{function, '-size_shadow_1/0-fun-6-', 1, 2037}.
  {label,2036}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",159}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-size_shadow_1/0-fun-6-'},
               1}.
  {label,2037}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,2036},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {bs_match,{f,2038},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,2038},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[159,{file,"bs_match_dialyzer_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,2038},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{x,2},{x,0}}.
    return.
  {label,2038}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,2036}}.


{function, '-mos_int_fun/1-inlined-0-', 1, 2040}.
  {label,2039}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",1729}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-mos_int_fun/1-inlined-0-'},
               1}.
  {label,2040}.
    {jump,{f,2039}}.


{function, '-null_fields/1-inlined-0-', 1, 2042}.
  {label,2041}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",299}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-null_fields/1-inlined-0-'},
               1}.
  {label,2042}.
    {jump,{f,2041}}.


{function, '-otp_5269/1-inlined-0-', 1, 2044}.
  {label,2043}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",261}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-otp_5269/1-inlined-0-'},
               1}.
  {label,2044}.
    {jump,{f,2043}}.


{function, '-otp_5269/1-inlined-1-', 1, 2046}.
  {label,2045}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",267}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-otp_5269/1-inlined-1-'},
               1}.
  {label,2046}.
    {jump,{f,2045}}.


{function, '-otp_5269/1-inlined-6-', 1, 2048}.
  {label,2047}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",287}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-otp_5269/1-inlined-6-'},
               1}.
  {label,2048}.
    {jump,{f,2047}}.


{function, '-size_shadow_1/0-inlined-1-', 1, 2050}.
  {label,2049}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",161}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-size_shadow_1/0-inlined-1-'},
               1}.
  {label,2050}.
    {jump,{f,2049}}.


{function, '-size_shadow_1/0-inlined-2-', 1, 2052}.
  {label,2051}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",164}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-size_shadow_1/0-inlined-2-'},
               1}.
  {label,2052}.
    {jump,{f,2051}}.


{function, '-size_shadow_2/1-inlined-0-', 1, 2054}.
  {label,2053}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",175}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-size_shadow_2/1-inlined-0-'},
               1}.
  {label,2054}.
    {jump,{f,2053}}.


{function, '-size_shadow_2/1-inlined-1-', 1, 2056}.
  {label,2055}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",177}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-size_shadow_2/1-inlined-1-'},
               1}.
  {label,2056}.
    {jump,{f,2055}}.


{function, '-size_shadow_2/1-inlined-2-', 1, 2058}.
  {label,2057}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",180}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-size_shadow_2/1-inlined-2-'},
               1}.
  {label,2058}.
    {jump,{f,2057}}.


{function, '-size_shadow_3/0-inlined-1-', 1, 2060}.
  {label,2059}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",188}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-size_shadow_3/0-inlined-1-'},
               1}.
  {label,2060}.
    {jump,{f,2059}}.


{function, '-size_shadow_3/0-inlined-2-', 1, 2062}.
  {label,2061}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",191}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-size_shadow_3/0-inlined-2-'},
               1}.
  {label,2062}.
    {jump,{f,2061}}.


{function, '-size_shadow_5/2-inlined-0-', 3, 2064}.
  {label,2063}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",214}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-size_shadow_5/2-inlined-0-'},
               3}.
  {label,2064}.
    {jump,{f,2063}}.


{function, '-size_shadow_6/2-inlined-0-', 3, 2066}.
  {label,2065}.
    {line,[{location,"bs_match_dialyzer_SUITE.erl",217}]}.
    {func_info,{atom,bs_match_dialyzer_SUITE},
               {atom,'-size_shadow_6/2-inlined-0-'},
               3}.
  {label,2066}.
    {jump,{f,2065}}.
