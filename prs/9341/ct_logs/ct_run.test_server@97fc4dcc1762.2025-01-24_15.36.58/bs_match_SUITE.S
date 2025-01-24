{module, bs_match_SUITE}.  %% version = 0

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

{labels, 2103}.


{function, suite, 0, 2}.
  {label,1}.
    {line,[{location,"bs_match_SUITE.erl",68}]}.
    {func_info,{atom,bs_match_SUITE},{atom,suite},0}.
  {label,2}.
    {move,{literal,[{ct_hooks,[ts_install_cth]},{timetrap,{minutes,1}}]},
          {x,0}}.
    return.


{function, all, 0, 4}.
  {label,3}.
    {line,[{location,"bs_match_SUITE.erl",72}]}.
    {func_info,{atom,bs_match_SUITE},{atom,all},0}.
  {label,4}.
    {move,{literal,[{group,p}]},{x,0}}.
    return.


{function, groups, 0, 6}.
  {label,5}.
    {line,[{location,"bs_match_SUITE.erl",75}]}.
    {func_info,{atom,bs_match_SUITE},{atom,groups},0}.
  {label,6}.
    {allocate,0,0}.
    {line,[{location,"bs_match_SUITE.erl",76}]}.
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
                                 bs_test_tail,otp_19019]}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {deallocate,0}.
    return.


{function, init_per_suite, 1, 8}.
  {label,7}.
    {line,[{location,"bs_match_SUITE.erl",106}]}.
    {func_info,{atom,bs_match_SUITE},{atom,init_per_suite},1}.
  {label,8}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{atom,bs_match_SUITE},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",107}]}.
    {call_ext,1,{extfunc,test_lib,recompile,1}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, end_per_suite, 1, 10}.
  {label,9}.
    {line,[{location,"bs_match_SUITE.erl",110}]}.
    {func_info,{atom,bs_match_SUITE},{atom,end_per_suite},1}.
  {label,10}.
    {move,{atom,ok},{x,0}}.
    return.


{function, init_per_group, 2, 12}.
  {label,11}.
    {line,[{location,"bs_match_SUITE.erl",113}]}.
    {func_info,{atom,bs_match_SUITE},{atom,init_per_group},2}.
  {label,12}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_group, 2, 14}.
  {label,13}.
    {line,[{location,"bs_match_SUITE.erl",116}]}.
    {func_info,{atom,bs_match_SUITE},{atom,end_per_group},2}.
  {label,14}.
    {move,{x,1},{x,0}}.
    return.


{function, init_per_testcase, 2, 16}.
  {label,15}.
    {line,[{location,"bs_match_SUITE.erl",120}]}.
    {func_info,{atom,bs_match_SUITE},{atom,init_per_testcase},2}.
  {label,16}.
    {test,is_atom,{f,15},[{x,0}]}.
    {test,is_list,{f,15},[{x,1}]}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_testcase, 2, 18}.
  {label,17}.
    {line,[{location,"bs_match_SUITE.erl",123}]}.
    {func_info,{atom,bs_match_SUITE},{atom,end_per_testcase},2}.
  {label,18}.
    {test,is_atom,{f,17},[{x,0}]}.
    {test,is_list,{f,17},[{x,1}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, verify_highest_opcode, 1, 20}.
  {label,19}.
    {line,[{location,"bs_match_SUITE.erl",126}]}.
    {func_info,{atom,bs_match_SUITE},{atom,verify_highest_opcode},1}.
  {label,20}.
    {move,{atom,ok},{x,0}}.
    return.


{function, size_shadow, 1, 22}.
  {label,21}.
    {line,[{location,"bs_match_SUITE.erl",144}]}.
    {func_info,{atom,bs_match_SUITE},{atom,size_shadow},1}.
  {label,22}.
    {test,is_list,{f,21},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"bs_match_SUITE.erl",146}]}.
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
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",147}]}.
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
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",148}]}.
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
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",149}]}.
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
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",152}]}.
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
        {f,2029},
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
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",154}]}.
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
        {f,2025},
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
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",155}]}.
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
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",157}]}.
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
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",156}]}.
    {badmatch,{x,0}}.
  {label,25}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",155}]}.
    {badmatch,{x,0}}.
  {label,26}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",153}]}.
    {badmatch,{x,0}}.
  {label,27}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",151}]}.
    {badmatch,{x,0}}.
  {label,28}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",149}]}.
    {badmatch,{x,0}}.
  {label,29}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",148}]}.
    {badmatch,{x,0}}.
  {label,30}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",147}]}.
    {badmatch,{x,0}}.
  {label,31}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",146}]}.
    {badmatch,{x,0}}.


{function, size_shadow_1, 0, 33}.
  {label,32}.
    {line,[{location,"bs_match_SUITE.erl",160}]}.
    {func_info,{atom,bs_match_SUITE},{atom,size_shadow_1},0}.
  {label,33}.
    {test_heap,{alloc,[{words,8},{floats,0},{funs,4}]},0}.
    {make_fun3,{f,2073},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {make_fun3,{f,2070},0,0,{x,1},{list,[]}}.
    {'%',{var_info,{x,1},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {make_fun3,{f,2067},0,0,{x,2},{list,[]}}.
    {'%',{var_info,{x,2},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {make_fun3,{f,2061},0,0,{x,3},{list,[]}}.
    {'%',{var_info,{x,3},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {put_list,{x,3},nil,{x,3}}.
    {put_list,{x,2},{x,3},{x,2}}.
    {put_list,{x,1},{x,2},{x,1}}.
    {put_list,{x,0},{x,1},{x,0}}.
    {move,{literal,<<16,0,7>>},{x,1}}.
    {call_only,2,{f,50}}. % size_shadow_apply/2


{function, size_shadow_2, 1, 35}.
  {label,34}.
    {line,[{location,"bs_match_SUITE.erl",177}]}.
    {func_info,{atom,bs_match_SUITE},{atom,size_shadow_2},1}.
  {label,35}.
    {'%',{var_info,{x,0},[{type,{t_integer,{8,8}}}]}}.
    {test_heap,{alloc,[{words,9},{floats,0},{funs,3}]},0}.
    {make_fun3,{f,2057},0,0,{x,0},{list,[{integer,8}]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {make_fun3,{f,2054},0,0,{x,1},{list,[{integer,8}]}}.
    {'%',{var_info,{x,1},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {make_fun3,{f,2051},0,0,{x,2},{list,[{integer,8}]}}.
    {'%',{var_info,{x,2},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {put_list,{x,2},nil,{x,2}}.
    {put_list,{x,1},{x,2},{x,1}}.
    {put_list,{x,0},{x,1},{x,0}}.
    {move,{literal,<<16,0,7>>},{x,1}}.
    {call_only,2,{f,50}}. % size_shadow_apply/2


{function, size_shadow_3, 0, 37}.
  {label,36}.
    {line,[{location,"bs_match_SUITE.erl",187}]}.
    {func_info,{atom,bs_match_SUITE},{atom,size_shadow_3},0}.
  {label,37}.
    {test_heap,{alloc,[{words,6},{floats,0},{funs,3}]},0}.
    {make_fun3,{f,2048},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {make_fun3,{f,2045},0,0,{x,1},{list,[]}}.
    {'%',{var_info,{x,1},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {make_fun3,{f,2042},0,0,{x,2},{list,[]}}.
    {'%',{var_info,{x,2},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {put_list,{x,2},nil,{x,2}}.
    {put_list,{x,1},{x,2},{x,1}}.
    {put_list,{x,0},{x,1},{x,0}}.
    {move,{literal,<<16,0,7,0,16>>},{x,1}}.
    {call_only,2,{f,50}}. % size_shadow_apply/2


{function, size_shadow_4, 1, 39}.
  {label,38}.
    {line,[{location,"bs_match_SUITE.erl",198}]}.
    {func_info,{atom,bs_match_SUITE},{atom,size_shadow_4},1}.
  {label,39}.
    {'%',{var_info,{x,0},[{type,{t_integer,{8,8}}}]}}.
    {test_heap,{alloc,[{words,9},{floats,0},{funs,3}]},0}.
    {make_fun3,{f,2039},0,0,{x,0},{list,[{integer,8}]}}.
    {'%',
        {var_info,
            {x,0},
            [{fun_type,
                 {t_union,
                     {t_atom,[no]},
                     none,
                     {t_integer,{0,'+inf'}},
                     none,none}}]}}.
    {make_fun3,{f,2036},0,0,{x,1},{list,[{integer,8}]}}.
    {'%',
        {var_info,
            {x,1},
            [{fun_type,
                 {t_union,
                     {t_atom,[no]},
                     none,
                     {t_integer,{0,'+inf'}},
                     none,none}}]}}.
    {make_fun3,{f,2033},0,0,{x,2},{list,[{integer,8}]}}.
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
    {line,[{location,"bs_match_SUITE.erl",216}]}.
    {func_info,{atom,bs_match_SUITE},{atom,size_shadow_5},2}.
  {label,41}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_atom,[any]},
                                     2 => {t_atom,[term]},
                                     3 => {t_atom,[goes]}}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{12,12}}}]}}.
    {test_heap,{alloc,[{words,2},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,2029},
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
    {line,[{location,"bs_match_SUITE.erl",219}]}.
    {func_info,{atom,bs_match_SUITE},{atom,size_shadow_6},2}.
  {label,43}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_atom,[any]},
                                     2 => {t_atom,[term]},
                                     3 => {t_atom,[goes]}}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{13,13}}}]}}.
    {test_heap,{alloc,[{words,2},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,2025},
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
    {line,[{location,"bs_match_SUITE.erl",222}]}.
    {func_info,{atom,bs_match_SUITE},{atom,fum},4}.
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
    {line,[{location,"bs_match_SUITE.erl",225}]}.
    {func_info,{atom,bs_match_SUITE},{atom,size_shadow_7},2}.
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
           {field_flags,[{anno,[225,{file,"bs_match_SUITE.erl"}]},
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
    {line,[{location,"bs_match_SUITE.erl",228}]}.
    {func_info,{atom,bs_match_SUITE},{atom,size_shadow_apply},2}.
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
    {line,[{location,"bs_match_SUITE.erl",229}]}.
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
    {line,[{location,"bs_match_SUITE.erl",231}]}.
    {func_info,{atom,bs_match_SUITE},{atom,size_shadow_apply},3}.
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
    {line,[{location,"bs_match_SUITE.erl",232}]}.
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
    {line,[{location,"bs_match_SUITE.erl",237}]}.
    {func_info,{atom,bs_match_SUITE},{atom,int_float},1}.
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
           {field_flags,[{anno,[239,{file,"bs_match_SUITE.erl"}]},
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
           {field_flags,[{anno,[240,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,is_eq_exact,{f,62},[{tr,{x,1},{t_float,any}},{float,103133.0}]}.
    {bs_match,{f,62},{x,0},{commands,[{ensure_exactly,0}]}}.
    {line,[{location,"bs_match_SUITE.erl",243}]}.
    {bs_create_bin,{f,0},
                   0,0,64,
                   {x,0},
                   {list,[{atom,float},
                          1,1,
                          {literal,[native]},
                          {integer,42},
                          {integer,64}]}}.
    {allocate,0,1}.
    {call,1,{f,1808}}. % id/1
    {test,bs_start_match3,{f,61},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {test,bs_get_float2,
          {f,61},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[244,{file,"bs_match_SUITE.erl"}]},
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
           {field_flags,[{anno,[245,{file,"bs_match_SUITE.erl"}]},
                         unsigned,native]}],
          {x,2}}.
    {test,is_eq_exact,{f,60},[{tr,{x,2},{t_float,any}},{float,42.0}]}.
    {bs_match,{f,60},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{literal,<<64,80,0,0,0,0,0,0>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",248}]}.
    {call,1,{f,1808}}. % id/1
    {test,bs_start_match3,{f,59},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {test,bs_get_float2,
          {f,59},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[249,{file,"bs_match_SUITE.erl"}]},
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
           {field_flags,[{anno,[250,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,58},[{tr,{x,2},{t_float,any}},{float,64.0}]}.
    {bs_match,{f,58},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{atom,default},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",253}]}.
    {call,1,{f,1808}}. % id/1
    {test,is_eq_exact,{f,57},[{x,0},{atom,default}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,57}.
    {case_end,{x,0}}.
  {label,58}.
    {line,[{location,"bs_match_SUITE.erl",250}]}.
    {badmatch,{x,0}}.
  {label,59}.
    {line,[{location,"bs_match_SUITE.erl",249}]}.
    {badmatch,{x,0}}.
  {label,60}.
    {line,[{location,"bs_match_SUITE.erl",245}]}.
    {badmatch,{x,0}}.
  {label,61}.
    {line,[{location,"bs_match_SUITE.erl",244}]}.
    {badmatch,{x,0}}.
  {label,62}.
    {line,[{location,"bs_match_SUITE.erl",240}]}.
    {badmatch,{literal,<<64,249,45,208,0,0,0,0>>}}.
  {label,63}.
    {line,[{location,"bs_match_SUITE.erl",239}]}.
    {badmatch,{literal,<<64,249,45,208,0,0,0,0>>}}.


{function, otp_5269, 1, 65}.
  {label,64}.
    {line,[{location,"bs_match_SUITE.erl",262}]}.
    {func_info,{atom,bs_match_SUITE},{atom,otp_5269},1}.
  {label,65}.
    {test,is_list,{f,64},[{x,0}]}.
    {allocate_heap,0,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,2022},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {move,{integer,7},{x,1}}.
    {line,[{location,"bs_match_SUITE.erl",263}]}.
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
    {make_fun3,{f,2019},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {move,{integer,7},{x,1}}.
    {line,[{location,"bs_match_SUITE.erl",268}]}.
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
    {make_fun3,{f,2016},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_integer,{0,255}}}]}}.
    {move,{integer,32},{x,1}}.
    {line,[{location,"bs_match_SUITE.erl",270}]}.
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
    {make_fun3,{f,2010},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_list,{t_integer,{0,255}},nil}}]}}.
    {move,{literal," "},{x,1}}.
    {line,[{location,"bs_match_SUITE.erl",272}]}.
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
    {make_fun3,{f,2000},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_list,{t_integer,{0,255}},nil}}]}}.
    {move,{literal,[19]},{x,1}}.
    {line,[{location,"bs_match_SUITE.erl",274}]}.
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
    {make_fun3,{f,1998},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_integer,{28,28}}}]}}.
    {move,{integer,28},{x,1}}.
    {line,[{location,"bs_match_SUITE.erl",278}]}.
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
    {make_fun3,{f,1995},0,0,{x,0},{list,[]}}.
    {'%',
        {var_info,
            {x,0},
            [{fun_type,
                 {t_tuple,3,true,
                     #{1 => {t_integer,{0,255}},
                       2 => {t_bitstring,8,false},
                       3 => {t_bitstring,8,false}}}}]}}.
    {move,{literal,{2,<<"AB">>,<<"CD">>}},{x,1}}.
    {line,[{location,"bs_match_SUITE.erl",280}]}.
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
    {make_fun3,{f,1989},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},
                   [{fun_type,{t_list,{t_integer,{0,4294967295}},nil}}]}}.
    {move,{literal,[1,2]},{x,1}}.
    {line,[{location,"bs_match_SUITE.erl",285}]}.
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
    {make_fun3,{f,1986},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[ok]}}]}}.
    {move,{atom,ok},{x,1}}.
    {line,[{location,"bs_match_SUITE.erl",289}]}.
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
    {line,[{location,"bs_match_SUITE.erl",299}]}.
    {func_info,{atom,bs_match_SUITE},{atom,null_fields},1}.
  {label,67}.
    {test,is_list,{f,66},[{x,0}]}.
    {allocate_heap,0,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1982},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[empty,tail]}}]}}.
    {move,{atom,tail},{x,1}}.
    {line,[{location,"bs_match_SUITE.erl",300}]}.
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
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[tail]}}]}}.
    {move,{atom,tail},{x,1}}.
    {line,[{location,"bs_match_SUITE.erl",307}]}.
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
    {line,[{location,"bs_match_SUITE.erl",315}]}.
    {func_info,{atom,bs_match_SUITE},{atom,wiger},1}.
  {label,69}.
    {test,is_list,{f,68},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<3>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",316}]}.
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
    {line,[{location,"bs_match_SUITE.erl",317}]}.
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
    {line,[{location,"bs_match_SUITE.erl",318}]}.
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
    {line,[{location,"bs_match_SUITE.erl",319}]}.
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
    {line,[{location,"bs_match_SUITE.erl",320}]}.
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
    {line,[{location,"bs_match_SUITE.erl",319}]}.
    {badmatch,{x,0}}.
  {label,72}.
    {line,[{location,"bs_match_SUITE.erl",318}]}.
    {badmatch,{x,0}}.
  {label,73}.
    {line,[{location,"bs_match_SUITE.erl",317}]}.
    {badmatch,{x,0}}.
  {label,74}.
    {line,[{location,"bs_match_SUITE.erl",316}]}.
    {badmatch,{x,0}}.


{function, wcheck, 1, 76}.
  {label,75}.
    {line,[{location,"bs_match_SUITE.erl",323}]}.
    {func_info,{atom,bs_match_SUITE},{atom,wcheck},1}.
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
    {line,[{location,"bs_match_SUITE.erl",332}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bin_tail},1}.
  {label,81}.
    {test,is_list,{f,80},[{x,0}]}.
    {allocate,7,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3},{y,4},{y,5},{y,6}]}}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",334}]}.
    {call,2,{f,109}}. % bin_tail_c/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,107},[{tr,{x,0},{t_integer,{0,255}}},{integer,97}]}.
    {move,{integer,2},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_SUITE.erl",335}]}.
    {call,2,{f,109}}. % bin_tail_c/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,106},[{tr,{x,0},{t_integer,{0,255}}},{integer,99}]}.
    {move,{integer,4},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_SUITE.erl",336}]}.
    {call,2,{f,109}}. % bin_tail_c/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,105},[{tr,{x,0},{t_integer,{0,255}}},{integer,101}]}.
    {'catch',{y,6},{f,82}}.
    {move,{integer,5},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_SUITE.erl",337}]}.
    {call,2,{f,109}}. % bin_tail_c/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
  {label,82}.
    {catch_end,{y,6}}.
    {test,is_tagged_tuple,{f,104},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,5},{f,83}}.
    {move,{integer,5},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,[13,14]},{location,"bs_match_SUITE.erl",338}]}.
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
    {line,[{scope,"\v\f"},{location,"bs_match_SUITE.erl",340}]}.
    {call,2,{f,119}}. % bin_tail_d/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,102},[{tr,{x,0},{t_integer,{0,255}}},{integer,97}]}.
    {move,{integer,8},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,"\n"},{location,"bs_match_SUITE.erl",341}]}.
    {call,2,{f,119}}. % bin_tail_d/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,101},[{tr,{x,0},{t_integer,{0,255}}},{integer,98}]}.
    {move,{integer,24},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,"\n"},{location,"bs_match_SUITE.erl",342}]}.
    {call,2,{f,119}}. % bin_tail_d/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,100},[{tr,{x,0},{t_integer,{0,255}}},{integer,100}]}.
    {'catch',{y,4},{f,84}}.
    {move,{integer,1},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,"\n"},{location,"bs_match_SUITE.erl",343}]}.
    {call,2,{f,123}}. % bin_tail_d_dead/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
  {label,84}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,99},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,3},{f,85}}.
    {move,{integer,9},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,"\t\n"},{location,"bs_match_SUITE.erl",344}]}.
    {call,2,{f,123}}. % bin_tail_d_dead/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
  {label,85}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,98},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,2},{f,86}}.
    {move,{integer,40},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_SUITE.erl",345}]}.
    {call,2,{f,123}}. % bin_tail_d_dead/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
  {label,86}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,97},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,1},{f,87}}.
    {move,{integer,1},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_SUITE.erl",346}]}.
    {call,2,{f,126}}. % bin_tail_d_var/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_bitstring,8,false}}}}]}}.
  {label,87}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,96},[{x,0},2,{atom,'EXIT'}]}.
    {move,{literal,<<129>>},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_SUITE.erl",348}]}.
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
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",349}]}.
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
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",350}]}.
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
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",351}]}.
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
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",353}]}.
    {call_ext,1,{extfunc,erlang,md5,1}}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",354}]}.
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
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",355}]}.
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
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",356}]}.
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
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",356}]}.
    {badmatch,{x,0}}.
  {label,90}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",355}]}.
    {badmatch,{x,0}}.
  {label,91}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",354}]}.
    {badmatch,{x,0}}.
  {label,92}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",351}]}.
    {badmatch,{x,0}}.
  {label,93}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",350}]}.
    {badmatch,{x,0}}.
  {label,94}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",349}]}.
    {badmatch,{x,0}}.
  {label,95}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",348}]}.
    {badmatch,{x,0}}.
  {label,96}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",346}]}.
    {badmatch,{x,0}}.
  {label,97}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",345}]}.
    {badmatch,{x,0}}.
  {label,98}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",344}]}.
    {badmatch,{x,0}}.
  {label,99}.
    {line,[{scope,"\b"},{location,"bs_match_SUITE.erl",343}]}.
    {badmatch,{x,0}}.
  {label,100}.
    {line,[{scope,"\n"},{location,"bs_match_SUITE.erl",342}]}.
    {badmatch,{x,0}}.
  {label,101}.
    {line,[{scope,"\n"},{location,"bs_match_SUITE.erl",341}]}.
    {badmatch,{x,0}}.
  {label,102}.
    {line,[{scope,"\n"},{location,"bs_match_SUITE.erl",340}]}.
    {badmatch,{x,0}}.
  {label,103}.
    {line,[{scope,"\n"},{location,"bs_match_SUITE.erl",338}]}.
    {badmatch,{x,0}}.
  {label,104}.
    {line,[{scope,"\f"},{location,"bs_match_SUITE.erl",337}]}.
    {badmatch,{x,0}}.
  {label,105}.
    {line,[{scope,[14]},{location,"bs_match_SUITE.erl",336}]}.
    {badmatch,{x,0}}.
  {label,106}.
    {line,[{scope,[14]},{location,"bs_match_SUITE.erl",335}]}.
    {badmatch,{x,0}}.
  {label,107}.
    {line,[{scope,[14]},{location,"bs_match_SUITE.erl",334}]}.
    {badmatch,{x,0}}.


{function, bin_tail_c, 2, 109}.
  {label,108}.
    {line,[{location,"bs_match_SUITE.erl",360}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bin_tail_c},2}.
  {label,109}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,5}}}]}}.
    {allocate,4,2}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{x,1},{y,2}}.
    {move,{x,0},{y,3}}.
    {line,[{location,"bs_match_SUITE.erl",361}]}.
    {call,2,{f,113}}. % bin_tail_c_dead/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {bs_start_match4,{atom,no_fail},1,{y,3},{x,1}}.
    {move,{x,0},{y,1}}.
    {test,bs_skip_bits2,
          {f,111},
          [{x,1},
           {y,2},
           8,
           {field_flags,[{anno,[362,{file,"bs_match_SUITE.erl"}]},
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
    {line,[{location,"bs_match_SUITE.erl",363}]}.
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
    {line,[{location,"bs_match_SUITE.erl",362}]}.
    {badmatch,{y,3}}.


{function, bin_tail_c_dead, 2, 113}.
  {label,112}.
    {line,[{location,"bs_match_SUITE.erl",366}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bin_tail_c_dead},2}.
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
           {field_flags,[{anno,[367,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_match,{f,114},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,1,{literal,[]},8,1,{x,0}}]}}.
    return.
  {label,114}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {line,[{location,"bs_match_SUITE.erl",367}]}.
    {badmatch,{x,0}}.


{function, bin_tail_c_var, 2, 116}.
  {label,115}.
    {line,[{location,"bs_match_SUITE.erl",370}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bin_tail_c_var},2}.
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
           {field_flags,[{anno,[371,{file,"bs_match_SUITE.erl"}]},
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
    {line,[{location,"bs_match_SUITE.erl",371}]}.
    {badmatch,{x,0}}.


{function, bin_tail_d, 2, 119}.
  {label,118}.
    {line,[{location,"bs_match_SUITE.erl",375}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bin_tail_d},2}.
  {label,119}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,24}}}]}}.
    {allocate,4,2}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{x,1},{y,2}}.
    {move,{x,0},{y,3}}.
    {line,[{location,"bs_match_SUITE.erl",376}]}.
    {call,2,{f,123}}. % bin_tail_d_dead/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {bs_start_match4,{atom,no_fail},1,{y,3},{x,1}}.
    {move,{x,0},{y,1}}.
    {test,bs_skip_bits2,
          {f,121},
          [{x,1},
           {y,2},
           1,
           {field_flags,[{anno,[377,{file,"bs_match_SUITE.erl"}]},
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
    {line,[{location,"bs_match_SUITE.erl",378}]}.
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
    {line,[{location,"bs_match_SUITE.erl",377}]}.
    {badmatch,{y,3}}.


{function, bin_tail_d_dead, 2, 123}.
  {label,122}.
    {line,[{location,"bs_match_SUITE.erl",381}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bin_tail_d_dead},2}.
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
           {field_flags,[{anno,[382,{file,"bs_match_SUITE.erl"}]},
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
    {line,[{location,"bs_match_SUITE.erl",382}]}.
    {badmatch,{x,0}}.


{function, bin_tail_d_var, 2, 126}.
  {label,125}.
    {line,[{location,"bs_match_SUITE.erl",385}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bin_tail_d_var},2}.
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
           {field_flags,[{anno,[386,{file,"bs_match_SUITE.erl"}]},
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
    {line,[{location,"bs_match_SUITE.erl",386}]}.
    {badmatch,{x,0}}.


{function, bin_tail_e, 1, 129}.
  {label,128}.
    {line,[{location,"bs_match_SUITE.erl",389}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bin_tail_e},1}.
  {label,129}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_match_SUITE.erl",390}]}.
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
    {line,[{location,"bs_match_SUITE.erl",393}]}.
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
    {line,[{location,"bs_match_SUITE.erl",392}]}.
    {badmatch,{y,1}}.


{function, bin_tail_e_dead, 1, 134}.
  {label,133}.
    {line,[{location,"bs_match_SUITE.erl",399}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bin_tail_e_dead},1}.
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
    {line,[{location,"bs_match_SUITE.erl",407}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bin_tail_e_var},1}.
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
    {line,[{location,"bs_match_SUITE.erl",415}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bin_tail_f},3}.
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
           {field_flags,[{anno,[417,{file,"bs_match_SUITE.erl"}]},
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
    {line,[{location,"bs_match_SUITE.erl",416}]}.
    {case_end,{x,0}}.


{function, save_restore, 1, 144}.
  {label,143}.
    {line,[{location,"bs_match_SUITE.erl",423}]}.
    {func_info,{atom,bs_match_SUITE},{atom,save_restore},1}.
  {label,144}.
    {test,is_list,{f,143},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",424}]}.
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
    {line,[{location,"bs_match_SUITE.erl",425}]}.
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
    {line,[{location,"bs_match_SUITE.erl",426}]}.
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
    {line,[{location,"bs_match_SUITE.erl",427}]}.
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
    {line,[{location,"bs_match_SUITE.erl",433}]}.
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
    {line,[{location,"bs_match_SUITE.erl",434}]}.
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
    {line,[{location,"bs_match_SUITE.erl",435}]}.
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
    {line,[{location,"bs_match_SUITE.erl",436}]}.
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
    {line,[{location,"bs_match_SUITE.erl",438}]}.
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
    {line,[{location,"bs_match_SUITE.erl",439}]}.
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
    {line,[{location,"bs_match_SUITE.erl",440}]}.
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
    {line,[{location,"bs_match_SUITE.erl",441}]}.
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
    {line,[{location,"bs_match_SUITE.erl",443}]}.
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
    {line,[{location,"bs_match_SUITE.erl",444}]}.
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
    {line,[{location,"bs_match_SUITE.erl",445}]}.
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
    {line,[{location,"bs_match_SUITE.erl",446}]}.
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
    {line,[{location,"bs_match_SUITE.erl",448}]}.
    {call,2,{f,193}}. % multiple_matches/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b,c,d]}}]}}.
    {test,is_eq_exact,{f,149},[{tr,{x,0},{t_atom,[a,b,c,d]}},{atom,a}]}.
    {move,{literal,<<3,231>>},{x,1}}.
    {move,{literal,<<3,9>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",449}]}.
    {call,2,{f,193}}. % multiple_matches/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b,c,d]}}]}}.
    {test,is_eq_exact,{f,148},[{tr,{x,0},{t_atom,[a,b,c,d]}},{atom,b}]}.
    {move,{literal,<<"9">>},{x,1}}.
    {move,{literal,<<3,9>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",450}]}.
    {call,2,{f,193}}. % multiple_matches/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b,c,d]}}]}}.
    {test,is_eq_exact,{f,147},[{tr,{x,0},{t_atom,[a,b,c,d]}},{atom,c}]}.
    {move,{literal,<<4,87>>},{x,1}}.
    {move,{literal,<<17>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",451}]}.
    {call,2,{f,193}}. % multiple_matches/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b,c,d]}}]}}.
    {test,is_eq_exact,{f,146},[{tr,{x,0},{t_atom,[a,b,c,d]}},{atom,d}]}.
    {move,{literal,<<"ÿÿÿÿÿÿÿÿ">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",454}]}.
    {call,1,{f,199}}. % bad_float_unpack_match/1
    {'%',{var_info,{x,0},[{type,{t_number,any}}]}}.
    {test,is_eq_exact,{f,145},[{tr,{x,0},{t_number,any}},{integer,-1}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,145}.
    {move,{atom,bad_return_value_probably_NaN},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",456}]}.
    {call_ext_last,1,{extfunc,ct,fail,1},0}.
  {label,146}.
    {line,[{location,"bs_match_SUITE.erl",451}]}.
    {badmatch,{x,0}}.
  {label,147}.
    {line,[{location,"bs_match_SUITE.erl",450}]}.
    {badmatch,{x,0}}.
  {label,148}.
    {line,[{location,"bs_match_SUITE.erl",449}]}.
    {badmatch,{x,0}}.
  {label,149}.
    {line,[{location,"bs_match_SUITE.erl",448}]}.
    {badmatch,{x,0}}.
  {label,150}.
    {line,[{location,"bs_match_SUITE.erl",446}]}.
    {badmatch,{x,0}}.
  {label,151}.
    {line,[{location,"bs_match_SUITE.erl",445}]}.
    {badmatch,{x,0}}.
  {label,152}.
    {line,[{location,"bs_match_SUITE.erl",444}]}.
    {badmatch,{x,0}}.
  {label,153}.
    {line,[{location,"bs_match_SUITE.erl",443}]}.
    {badmatch,{x,0}}.
  {label,154}.
    {line,[{location,"bs_match_SUITE.erl",441}]}.
    {badmatch,{x,0}}.
  {label,155}.
    {line,[{location,"bs_match_SUITE.erl",440}]}.
    {badmatch,{x,0}}.
  {label,156}.
    {line,[{location,"bs_match_SUITE.erl",439}]}.
    {badmatch,{x,0}}.
  {label,157}.
    {line,[{location,"bs_match_SUITE.erl",438}]}.
    {badmatch,{x,0}}.
  {label,158}.
    {line,[{location,"bs_match_SUITE.erl",436}]}.
    {badmatch,{x,0}}.
  {label,159}.
    {line,[{location,"bs_match_SUITE.erl",435}]}.
    {badmatch,{x,0}}.
  {label,160}.
    {line,[{location,"bs_match_SUITE.erl",434}]}.
    {badmatch,{x,0}}.
  {label,161}.
    {line,[{location,"bs_match_SUITE.erl",433}]}.
    {badmatch,{x,0}}.
  {label,162}.
    {line,[{location,"bs_match_SUITE.erl",427}]}.
    {badmatch,{x,0}}.
  {label,163}.
    {line,[{location,"bs_match_SUITE.erl",426}]}.
    {badmatch,{x,0}}.
  {label,164}.
    {line,[{location,"bs_match_SUITE.erl",425}]}.
    {badmatch,{x,0}}.
  {label,165}.
    {line,[{location,"bs_match_SUITE.erl",424}]}.
    {badmatch,{x,0}}.


{function, save_restore_1, 1, 167}.
  {label,166}.
    {line,[{location,"bs_match_SUITE.erl",459}]}.
    {func_info,{atom,bs_match_SUITE},{atom,save_restore_1},1}.
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
    {line,[{location,"bs_match_SUITE.erl",460}]}.
    {case_end,{x,0}}.


{function, lll, 1, 174}.
  {label,173}.
    {line,[{location,"bs_match_SUITE.erl",467}]}.
    {func_info,{atom,bs_match_SUITE},{atom,lll},1}.
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
    {line,[{location,"bs_match_SUITE.erl",469}]}.
    {func_info,{atom,bs_match_SUITE},{atom,mmm},1}.
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
    {line,[{location,"bs_match_SUITE.erl",473}]}.
    {func_info,{atom,bs_match_SUITE},{atom,nnn},1}.
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
    {line,[{location,"bs_match_SUITE.erl",477}]}.
    {func_info,{atom,bs_match_SUITE},{atom,ooo},1}.
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
    {line,[{location,"bs_match_SUITE.erl",480}]}.
    {func_info,{atom,bs_match_SUITE},{atom,multiple_matches},2}.
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
    {line,[{location,"bs_match_SUITE.erl",485}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bad_float_unpack_match},1}.
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
           {field_flags,[{anno,[485,{file,"bs_match_SUITE.erl"}]},
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
    {line,[{location,"bs_match_SUITE.erl",489}]}.
    {func_info,{atom,bs_match_SUITE},{atom,partitioned_bs_match},1}.
  {label,203}.
    {test,is_list,{f,202},[{x,0}]}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{literal,<<42,1,2,3>>},{x,1}}.
    {move,{atom,blurf},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",490}]}.
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
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",491}]}.
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
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",492}]}.
    {call,2,{f,214}}. % partitioned_bs_match/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,<<>>},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",493}]}.
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
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",495}]}.
    {call,2,{f,214}}. % partitioned_bs_match/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,204}.
    {catch_end,{y,2}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[-1,blurf]},{x,1}}.
    {move,{atom,partitioned_bs_match},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_SUITE.erl",494}]}.
    {call,3,{f,885}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,1},{f,205}}.
    {move,{literal,<<1,2,3>>},{x,1}}.
    {move,{integer,-1},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_SUITE.erl",497}]}.
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
    {line,[{scope,[3,4]},{location,"bs_match_SUITE.erl",496}]}.
    {call,3,{f,885}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<17,1,2,3>>},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_SUITE.erl",498}]}.
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
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",499}]}.
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
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",502}]}.
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
    {line,[{scope,[1,2]},{location,"bs_match_SUITE.erl",501}]}.
    {call,3,{f,885}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<"*">>},{x,1}}.
    {move,{atom,anything},{x,0}}.
    {line,[{scope,[1,2]},{location,"bs_match_SUITE.erl",504}]}.
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
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",504}]}.
    {badmatch,{integer,1}}.
  {label,208}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",499}]}.
    {badmatch,{x,0}}.
  {label,209}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",498}]}.
    {badmatch,{x,0}}.
  {label,210}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",493}]}.
    {badmatch,{x,0}}.
  {label,211}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",491}]}.
    {badmatch,{x,0}}.
  {label,212}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",490}]}.
    {badmatch,{x,0}}.


{function, partitioned_bs_match, 2, 214}.
  {label,213}.
    {line,[{location,"bs_match_SUITE.erl",509}]}.
    {func_info,{atom,bs_match_SUITE},{atom,partitioned_bs_match},2}.
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
    {line,[{location,"bs_match_SUITE.erl",516}]}.
    {func_info,{atom,bs_match_SUITE},{atom,partitioned_bs_match_2},2}.
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
    {line,[{location,"bs_match_SUITE.erl",521}]}.
    {func_info,{atom,bs_match_SUITE},{atom,partitioned_bs_match_3},2}.
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
    {line,[{location,"bs_match_SUITE.erl",524}]}.
    {func_info,{atom,bs_match_SUITE},{atom,function_clause},1}.
  {label,228}.
    {test,is_list,{f,227},[{x,0}]}.
    {allocate,4,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3}]}}.
    {move,{literal,<<0,7,0,7,42>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",525}]}.
    {call,1,{f,234}}. % function_clause_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,3},{f,229}}.
    {move,{literal,<<0,1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",527}]}.
    {call,1,{f,234}}. % function_clause_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,229}.
    {catch_end,{y,3}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<0,1,2,3>>]},{x,1}}.
    {move,{atom,function_clause_1},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_SUITE.erl",526}]}.
    {call,3,{f,885}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,2},{f,230}}.
    {move,{literal,<<0,7,0,1,2,3>>},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_SUITE.erl",529}]}.
    {call,1,{f,234}}. % function_clause_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,230}.
    {catch_end,{y,2}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<0,1,2,3>>]},{x,1}}.
    {move,{atom,function_clause_1},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_SUITE.erl",528}]}.
    {call,3,{f,885}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<0,7,0,7,42>>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_SUITE.erl",531}]}.
    {call,1,{f,238}}. % function_clause_2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<"ÿ">>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_SUITE.erl",532}]}.
    {call,1,{f,238}}. % function_clause_2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<13:4>>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_SUITE.erl",533}]}.
    {call,1,{f,238}}. % function_clause_2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,1},{f,231}}.
    {move,{literal,<<0,1,2,3>>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_SUITE.erl",535}]}.
    {call,1,{f,238}}. % function_clause_2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,231}.
    {catch_end,{y,1}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<0,1,2,3>>]},{x,1}}.
    {move,{atom,function_clause_2},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_SUITE.erl",534}]}.
    {call,3,{f,885}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,0},{f,232}}.
    {move,{literal,<<0,7,0,1,2,3>>},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_SUITE.erl",537}]}.
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
    {line,[{location,"bs_match_SUITE.erl",541}]}.
    {func_info,{atom,bs_match_SUITE},{atom,function_clause_1},1}.
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
    {line,[{location,"bs_match_SUITE.erl",546}]}.
    {func_info,{atom,bs_match_SUITE},{atom,function_clause_2},1}.
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
    {line,[{location,"bs_match_SUITE.erl",553}]}.
    {func_info,{atom,bs_match_SUITE},{atom,unit},1}.
  {label,243}.
    {test,is_list,{f,242},[{x,0}]}.
    {allocate,7,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3},{y,4},{y,5},{y,6}]}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",554}]}.
    {call,1,{f,271}}. % peek1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,269},[{tr,{x,0},{t_integer,{0,255}}},{integer,42}]}.
    {move,{literal,<<43,1,2>>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_SUITE.erl",555}]}.
    {call,1,{f,271}}. % peek1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,268},[{tr,{x,0},{t_integer,{0,255}}},{integer,43}]}.
    {move,{literal,<<43,1,2,1:1>>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_SUITE.erl",556}]}.
    {call,1,{f,271}}. % peek1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,267},[{tr,{x,0},{t_integer,{0,255}}},{integer,43}]}.
    {move,{literal,<<43,1,2,3:2>>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_SUITE.erl",557}]}.
    {call,1,{f,271}}. % peek1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,266},[{tr,{x,0},{t_integer,{0,255}}},{integer,43}]}.
    {move,{literal,<<43,1,2,127:7>>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_SUITE.erl",558}]}.
    {call,1,{f,271}}. % peek1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,265},[{tr,{x,0},{t_integer,{0,255}}},{integer,43}]}.
    {move,{literal,<<"c">>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_SUITE.erl",560}]}.
    {call,1,{f,277}}. % peek8/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,264},[{tr,{x,0},{t_integer,{0,255}}},{integer,99}]}.
    {move,{literal,<<"de">>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_SUITE.erl",561}]}.
    {call,1,{f,277}}. % peek8/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,263},[{tr,{x,0},{t_integer,{0,255}}},{integer,100}]}.
    {'catch',{y,6},{f,244}}.
    {move,{literal,<<100,101,0:1>>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_SUITE.erl",562}]}.
    {call,1,{f,277}}. % peek8/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
  {label,244}.
    {catch_end,{y,6}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<100,101,0:1>>]},{x,1}}.
    {move,{atom,peek8},{x,0}}.
    {line,[{scope,[13,14]},{location,"bs_match_SUITE.erl",562}]}.
    {call,3,{f,885}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<146,108>>},{x,0}}.
    {line,[{scope,[13,14]},{location,"bs_match_SUITE.erl",564}]}.
    {call,1,{f,280}}. % peek16/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,65535}}}]}}.
    {test,is_eq_exact,
          {f,262},
          [{tr,{x,0},{t_integer,{0,65535}}},{integer,37484}]}.
    {move,{literal,<<146,113,21,190>>},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_match_SUITE.erl",565}]}.
    {call,1,{f,280}}. % peek16/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,65535}}}]}}.
    {test,is_eq_exact,
          {f,261},
          [{tr,{x,0},{t_integer,{0,65535}}},{integer,37489}]}.
    {'catch',{y,5},{f,245}}.
    {move,{literal,<<"\b">>},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_match_SUITE.erl",566}]}.
    {call,1,{f,280}}. % peek16/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,65535}}}]}}.
  {label,245}.
    {catch_end,{y,5}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<"\b">>]},{x,1}}.
    {move,{atom,peek16},{x,0}}.
    {line,[{scope,"\v\f"},{location,"bs_match_SUITE.erl",566}]}.
    {call,3,{f,885}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,4},{f,246}}.
    {move,{literal,<<0,42:7>>},{x,0}}.
    {line,[{scope,"\v\f"},{location,"bs_match_SUITE.erl",567}]}.
    {call,1,{f,280}}. % peek16/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,65535}}}]}}.
  {label,246}.
    {catch_end,{y,4}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<0,42:7>>]},{x,1}}.
    {move,{atom,peek16},{x,0}}.
    {line,[{scope,"\t\n"},{location,"bs_match_SUITE.erl",567}]}.
    {call,3,{f,885}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,3},{f,247}}.
    {move,{literal,<<1,2,3,4,5>>},{x,0}}.
    {line,[{scope,"\t\n"},{location,"bs_match_SUITE.erl",568}]}.
    {call,1,{f,280}}. % peek16/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,65535}}}]}}.
  {label,247}.
    {catch_end,{y,3}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<1,2,3,4,5>>]},{x,1}}.
    {move,{atom,peek16},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_SUITE.erl",568}]}.
    {call,3,{f,885}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<127:7>>},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_SUITE.erl",570}]}.
    {call,1,{f,274}}. % peek7/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,127}}}]}}.
    {test,is_eq_exact,{f,260},[{tr,{x,0},{t_integer,{0,127}}},{integer,127}]}.
    {move,{literal,<<200,19:6>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",571}]}.
    {call,1,{f,274}}. % peek7/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,127}}}]}}.
    {test,is_eq_exact,{f,259},[{tr,{x,0},{t_integer,{0,127}}},{integer,100}]}.
    {'catch',{y,2},{f,248}}.
    {move,{literal,<<1,2>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",572}]}.
    {call,1,{f,274}}. % peek7/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,127}}}]}}.
  {label,248}.
    {catch_end,{y,2}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<1,2>>]},{x,1}}.
    {move,{atom,peek7},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_SUITE.erl",572}]}.
    {call,3,{f,885}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,-1},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_SUITE.erl",574}]}.
    {call,2,{f,283}}. % unit_opt/2
    {'%',{var_info,{x,0},[{type,{t_integer,{1,8}}}]}}.
    {test,is_eq_exact,{f,258},[{tr,{x,0},{t_integer,{1,8}}},{integer,1}]}.
    {move,{integer,-1},{x,1}}.
    {move,{integer,8},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",575}]}.
    {call,2,{f,283}}. % unit_opt/2
    {'%',{var_info,{x,0},[{type,{t_integer,{1,8}}}]}}.
    {test,is_eq_exact,{f,257},[{tr,{x,0},{t_integer,{1,8}}},{integer,8}]}.
    {move,{literal,<<0,0,0,1,97,98,99>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",577}]}.
    {call,1,{f,290}}. % unit_opt_2/1
    {test,is_eq_exact,{f,256},[{x,0},{literal,<<0,0,0,1,97,98,99>>}]}.
    {move,{literal,<<0,0,0,2,100,101,102>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",578}]}.
    {call,1,{f,290}}. % unit_opt_2/1
    {test,is_eq_exact,{f,255},[{x,0},{literal,<<"def">>}]}.
    {'catch',{y,1},{f,249}}.
    {move,{literal,<<0,0,0,1,33:7>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",579}]}.
    {call,1,{f,290}}. % unit_opt_2/1
  {label,249}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,254},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,0},{f,250}}.
    {move,{literal,<<0,0,0,2,55:7>>},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_SUITE.erl",580}]}.
    {call,1,{f,290}}. % unit_opt_2/1
  {label,250}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,253},[{x,0},2,{atom,'EXIT'}]}.
    {move,{literal,<<0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1>>},{x,0}}.
    {line,[{scope,[1,2]},{location,"bs_match_SUITE.erl",582}]}.
    {call,1,{f,297}}. % unit_opt_3/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,252},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<0,0,0,0,0,0,0,0>>}]}.
    {move,{literal,<<0,0,0,0,0,0,0,1>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",583}]}.
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
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",582}]}.
    {badmatch,{x,0}}.
  {label,253}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",580}]}.
    {badmatch,{x,0}}.
  {label,254}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",579}]}.
    {badmatch,{x,0}}.
  {label,255}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",578}]}.
    {badmatch,{x,0}}.
  {label,256}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",577}]}.
    {badmatch,{x,0}}.
  {label,257}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",575}]}.
    {badmatch,{x,0}}.
  {label,258}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",574}]}.
    {badmatch,{x,0}}.
  {label,259}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",571}]}.
    {badmatch,{x,0}}.
  {label,260}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",570}]}.
    {badmatch,{x,0}}.
  {label,261}.
    {line,[{scope,"\f"},{location,"bs_match_SUITE.erl",565}]}.
    {badmatch,{x,0}}.
  {label,262}.
    {line,[{scope,"\f"},{location,"bs_match_SUITE.erl",564}]}.
    {badmatch,{x,0}}.
  {label,263}.
    {line,[{scope,[14]},{location,"bs_match_SUITE.erl",561}]}.
    {badmatch,{x,0}}.
  {label,264}.
    {line,[{scope,[14]},{location,"bs_match_SUITE.erl",560}]}.
    {badmatch,{x,0}}.
  {label,265}.
    {line,[{scope,[14]},{location,"bs_match_SUITE.erl",558}]}.
    {badmatch,{x,0}}.
  {label,266}.
    {line,[{scope,[14]},{location,"bs_match_SUITE.erl",557}]}.
    {badmatch,{x,0}}.
  {label,267}.
    {line,[{scope,[14]},{location,"bs_match_SUITE.erl",556}]}.
    {badmatch,{x,0}}.
  {label,268}.
    {line,[{scope,[14]},{location,"bs_match_SUITE.erl",555}]}.
    {badmatch,{x,0}}.
  {label,269}.
    {line,[{scope,[14]},{location,"bs_match_SUITE.erl",554}]}.
    {badmatch,{x,0}}.


{function, peek1, 1, 271}.
  {label,270}.
    {line,[{location,"bs_match_SUITE.erl",587}]}.
    {func_info,{atom,bs_match_SUITE},{atom,peek1},1}.
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
    {line,[{location,"bs_match_SUITE.erl",589}]}.
    {func_info,{atom,bs_match_SUITE},{atom,peek7},1}.
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
    {line,[{location,"bs_match_SUITE.erl",591}]}.
    {func_info,{atom,bs_match_SUITE},{atom,peek8},1}.
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
    {line,[{location,"bs_match_SUITE.erl",593}]}.
    {func_info,{atom,bs_match_SUITE},{atom,peek16},1}.
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
    {line,[{location,"bs_match_SUITE.erl",595}]}.
    {func_info,{atom,bs_match_SUITE},{atom,unit_opt},2}.
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
    {line,[{location,"bs_match_SUITE.erl",597}]}.
    {case_end,{x,0}}.


{function, unit_opt_2, 1, 290}.
  {label,289}.
    {line,[{location,"bs_match_SUITE.erl",607}]}.
    {func_info,{atom,bs_match_SUITE},{atom,unit_opt_2},1}.
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
    {line,[{location,"bs_match_SUITE.erl",612}]}.
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
    {call_only,1,{f,1808}}. % id/1
  {label,294}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,289}}.
  {label,295}.
    {line,[{location,"bs_match_SUITE.erl",608}]}.
    if_end.


{function, unit_opt_3, 1, 297}.
  {label,296}.
    {line,[{location,"bs_match_SUITE.erl",616}]}.
    {func_info,{atom,bs_match_SUITE},{atom,unit_opt_3},1}.
  {label,297}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,64,false}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_match,{f,298},
              {x,1},
              {commands,[{ensure_at_least,64,1},
                         {binary,2,{literal,[]},8,8,{x,0}}]}}.
    return.
  {label,298}.
    {line,[{location,"bs_match_SUITE.erl",620}]}.
    {badmatch,{x,0}}.


{function, shared_sub_bins, 1, 300}.
  {label,299}.
    {line,[{location,"bs_match_SUITE.erl",623}]}.
    {func_info,{atom,bs_match_SUITE},{atom,shared_sub_bins},1}.
  {label,300}.
    {test,is_list,{f,299},[{x,0}]}.
    {allocate,0,0}.
    {move,nil,{x,1}}.
    {move,{integer,0},{x,2}}.
    {move,{literal,<<1,2,3,4,5>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",624}]}.
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
    {line,[{location,"bs_match_SUITE.erl",627}]}.
    {func_info,{atom,bs_match_SUITE},{atom,sum},3}.
  {label,303}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{0,'+inf'}}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {bs_match,{f,304},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {line,[{location,"bs_match_SUITE.erl",628}]}.
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
    {line,[{location,"bs_match_SUITE.erl",632}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bin_and_float},1}.
  {label,306}.
    {test,is_list,{f,305},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{float,0.0},{x,1}}.
    {move,{literal,<<63,240,0,0,0,0,0,0,64,0,0,0,0,0,0,0,64,8,0,0,0,0,0,0>>},
          {x,0}}.
    {line,[{location,"bs_match_SUITE.erl",633}]}.
    {call,2,{f,310}}. % bin_and_float/2
    {'%',{var_info,{x,0},[{type,{t_float,any}}]}}.
    {test,is_eq_exact,{f,308},[{tr,{x,0},{t_float,any}},{float,14.0}]}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",635}]}.
    {call,1,{f,1808}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,2}}.
    {trim,1,0}.
    {move,{literal,<<0,0,0,2:6>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",636}]}.
    {call,3,{f,1976}}. % '-bin_and_float/1-lbc$^0/2-0-'/3
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
    {line,[{location,"bs_match_SUITE.erl",633}]}.
    {badmatch,{x,0}}.


{function, bin_and_float, 2, 310}.
  {label,309}.
    {line,[{location,"bs_match_SUITE.erl",640}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bin_and_float},2}.
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
           {field_flags,[{anno,[640,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_float2,
          {f,311},
          4,
          [{tr,{x,0},{t_bs_context,64}},
           {integer,64},
           1,
           {field_flags,[{anno,[640,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_float2,
          {f,311},
          5,
          [{tr,{x,0},{t_bs_context,64}},
           {integer,64},
           1,
           {field_flags,[{anno,[640,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {fmove,{x,3},{fr,0}}.
    {line,[{location,"bs_match_SUITE.erl",643}]}.
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
    {line,[{location,"bs_match_SUITE.erl",646}]}.
    {func_info,{atom,bs_match_SUITE},{atom,dec_subidentifiers},1}.
  {label,314}.
    {test,is_list,{f,313},[{x,0}]}.
    {allocate,0,0}.
    {move,nil,{x,2}}.
    {move,{integer,0},{x,1}}.
    {move,{integer,2},{x,3}}.
    {move,{literal,<<170,227,1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",648}]}.
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
    {line,[{location,"bs_match_SUITE.erl",649}]}.
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
    {line,[{location,"bs_match_SUITE.erl",650}]}.
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
    {line,[{location,"bs_match_SUITE.erl",649}]}.
    {badmatch,{x,0}}.
  {label,317}.
    {line,[{location,"bs_match_SUITE.erl",647}]}.
    {badmatch,{x,0}}.


{function, do_dec_subidentifiers, 4, 319}.
  {label,318}.
    {line,[{location,"bs_match_SUITE.erl",653}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_dec_subidentifiers},4}.
  {label,319}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,0}}}]}}.
    {'%',{var_info,{x,2},[{type,nil}]}}.
    {'%',{var_info,{x,3},[{type,{t_integer,{2,2}}}]}}.
    {allocate,2,4}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_match_SUITE.erl",654}]}.
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
    {line,[{location,"bs_match_SUITE.erl",655}]}.
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
    {line,[{location,"bs_match_SUITE.erl",656}]}.
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
    {line,[{location,"bs_match_SUITE.erl",657}]}.
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
    {line,[{location,"bs_match_SUITE.erl",656}]}.
    {badmatch,{x,0}}.
  {label,322}.
    {line,[{location,"bs_match_SUITE.erl",655}]}.
    {badmatch,{x,0}}.


{function, dec_subidentifiers, 4, 324}.
  {label,323}.
    {line,[{location,"bs_match_SUITE.erl",659}]}.
    {func_info,{atom,bs_match_SUITE},{atom,dec_subidentifiers},4}.
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
    {line,[{location,"bs_match_SUITE.erl",660}]}.
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
    {line,[{location,"bs_match_SUITE.erl",662}]}.
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
    {line,[{location,"bs_match_SUITE.erl",664}]}.
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
    {line,[{location,"bs_match_SUITE.erl",666}]}.
    {func_info,{atom,bs_match_SUITE},{atom,dec_subidentifiers2},4}.
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
    {line,[{location,"bs_match_SUITE.erl",667}]}.
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
    {line,[{location,"bs_match_SUITE.erl",669}]}.
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
    {line,[{location,"bs_match_SUITE.erl",671}]}.
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
    {line,[{location,"bs_match_SUITE.erl",673}]}.
    {func_info,{atom,bs_match_SUITE},{atom,dec_subidentifiers3},4}.
  {label,333}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,any}}]}}.
    {'%',{var_info,{x,2},[{type,{t_list,{t_integer,any},nil}}]}}.
    {'%',{var_info,{x,3},[{type,{t_integer,{'-inf',2}}}]}}.
    {test,is_eq_exact,{f,334},[{tr,{x,3},{t_integer,{'-inf',2}}},{integer,0}]}.
    {allocate,1,3}.
    {move,{x,0},{y,0}}.
    {move,{x,2},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",674}]}.
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
    {line,[{location,"bs_match_SUITE.erl",676}]}.
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
    {line,[{location,"bs_match_SUITE.erl",678}]}.
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
    {line,[{location,"bs_match_SUITE.erl",680}]}.
    {func_info,{atom,bs_match_SUITE},{atom,dec_subidentifiers4},4}.
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
    {line,[{location,"bs_match_SUITE.erl",681}]}.
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
    {line,[{location,"bs_match_SUITE.erl",683}]}.
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
    {line,[{location,"bs_match_SUITE.erl",685}]}.
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
    {line,[{location,"bs_match_SUITE.erl",688}]}.
    {func_info,{atom,bs_match_SUITE},{atom,skip_optional_tag},1}.
  {label,343}.
    {test,is_list,{f,342},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<"*">>},{x,1}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",689}]}.
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
    {line,[{location,"bs_match_SUITE.erl",690}]}.
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
    {line,[{location,"bs_match_SUITE.erl",691}]}.
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
    {line,[{location,"bs_match_SUITE.erl",692}]}.
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
    {line,[{location,"bs_match_SUITE.erl",691}]}.
    {badmatch,{x,0}}.
  {label,346}.
    {line,[{location,"bs_match_SUITE.erl",690}]}.
    {badmatch,{x,0}}.
  {label,347}.
    {line,[{location,"bs_match_SUITE.erl",689}]}.
    {badmatch,{x,0}}.


{function, skip_optional_tag, 2, 349}.
  {label,348}.
    {line,[{location,"bs_match_SUITE.erl",695}]}.
    {func_info,{atom,bs_match_SUITE},{atom,skip_optional_tag},2}.
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
    {line,[{location,"bs_match_SUITE.erl",701}]}.
    {func_info,{atom,bs_match_SUITE},{atom,decode_integer},1}.
  {label,353}.
    {allocate,0,0}.
    {move,{literal,<<"*+">>},{x,1}}.
    {move,{atom,whatever},{x,2}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",702}]}.
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
    {line,[{location,"bs_match_SUITE.erl",703}]}.
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
    {line,[{location,"bs_match_SUITE.erl",702}]}.
    {badmatch,{x,0}}.


{function, decode_integer, 3, 357}.
  {label,356}.
    {line,[{location,"bs_match_SUITE.erl",706}]}.
    {func_info,{atom,bs_match_SUITE},{atom,decode_integer},3}.
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
    {line,[{location,"bs_match_SUITE.erl",707}]}.
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
    {line,[{location,"bs_match_SUITE.erl",708}]}.
    {gc_bif,byte_size,{f,0},4,[{tr,{x,0},{t_bitstring,8,false}}],{x,4}}.
    {bs_set_position,{x,1},{x,2}}.
    {test,bs_get_integer2,
          {f,360},
          5,
          [{tr,{x,1},{t_bs_context,8}},
           {tr,{x,4},{t_integer,{0,288230376151711743}}},
           8,
           {field_flags,[{anno,[709,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,360},{x,1},{commands,[{ensure_exactly,0}]}}.
    {test_heap,4,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3},{atom,whatever}]}}.
    return.
  {label,358}.
    {line,[{location,"bs_match_SUITE.erl",712}]}.
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
    {line,[{location,"bs_match_SUITE.erl",713}]}.
    {gc_bif,byte_size,{f,0},4,[{tr,{x,0},{t_bitstring,8,false}}],{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",714}]}.
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
           {field_flags,[{anno,[714,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {bs_match,{f,362},{x,2},{commands,[{ensure_exactly,0}]}}.
    {line,[{location,"bs_match_SUITE.erl",715}]}.
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
    {line,[{location,"bs_match_SUITE.erl",709}]}.
    {badmatch,{x,0}}.
  {label,361}.
    {line,[{location,"bs_match_SUITE.erl",707}]}.
    {badmatch,{x,0}}.
  {label,362}.
    {line,[{location,"bs_match_SUITE.erl",714}]}.
    {badmatch,{x,1}}.
  {label,363}.
    {line,[{location,"bs_match_SUITE.erl",712}]}.
    {badmatch,{x,0}}.


{function, wfbm, 1, 365}.
  {label,364}.
    {line,[{location,"bs_match_SUITE.erl",720}]}.
    {func_info,{atom,bs_match_SUITE},{atom,wfbm},1}.
  {label,365}.
    {test,is_list,{f,364},[{x,0}]}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{literal,<<" ">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",723}]}.
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
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",724}]}.
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
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",725}]}.
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
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",726}]}.
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
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",727}]}.
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
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",729}]}.
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
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",730}]}.
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
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",731}]}.
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
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",732}]}.
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
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",733}]}.
    {call,1,{f,388}}. % get_tail/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,366}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,369},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,0},{f,367}}.
    {move,{atom,no_binary},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_SUITE.erl",734}]}.
    {call,1,{f,388}}. % get_tail/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,367}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,368},[{x,0},2,{atom,'EXIT'}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,368}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",734}]}.
    {badmatch,{x,0}}.
  {label,369}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",733}]}.
    {badmatch,{x,0}}.
  {label,370}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",732}]}.
    {badmatch,{x,0}}.
  {label,371}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",731}]}.
    {badmatch,{x,0}}.
  {label,372}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",730}]}.
    {badmatch,{x,0}}.
  {label,373}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",729}]}.
    {badmatch,{x,0}}.
  {label,374}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",727}]}.
    {badmatch,{x,0}}.
  {label,375}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",726}]}.
    {badmatch,{x,0}}.
  {label,376}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",725}]}.
    {badmatch,{x,0}}.
  {label,377}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",724}]}.
    {badmatch,{x,0}}.
  {label,378}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",723}]}.
    {badmatch,{x,0}}.


{function, check_for_dot_or_space, 1, 380}.
  {label,379}.
    {line,[{location,"bs_match_SUITE.erl",737}]}.
    {func_info,{atom,bs_match_SUITE},{atom,check_for_dot_or_space},1}.
  {label,380}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {move,{integer,0},{x,1}}.
    {call_only,2,{f,382}}. % check_for_dot_or_space/2


{function, check_for_dot_or_space, 2, 382}.
  {label,381}.
    {line,[{location,"bs_match_SUITE.erl",740}]}.
    {func_info,{atom,bs_match_SUITE},{atom,check_for_dot_or_space},2}.
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
           {field_flags,[{anno,[744,{file,"bs_match_SUITE.erl"}]},
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
    {line,[{location,"bs_match_SUITE.erl",749}]}.
    {gc_bif,'+',{f,0},3,[{tr,{x,1},{t_integer,{0,'+inf'}}},{integer,1}],{x,1}}.
    {bs_set_position,{x,0},{x,2}}.
    {call_only,2,{f,382}}. % check_for_dot_or_space/2


{function, get_tail, 1, 388}.
  {label,387}.
    {line,[{location,"bs_match_SUITE.erl",752}]}.
    {func_info,{atom,bs_match_SUITE},{atom,get_tail},1}.
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
    {line,[{location,"bs_match_SUITE.erl",758}]}.
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
    {line,[{location,"bs_match_SUITE.erl",760}]}.
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
    {line,[{location,"bs_match_SUITE.erl",761}]}.
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
    {line,[{location,"bs_match_SUITE.erl",755}]}.
    {badmatch,{x,0}}.


{function, degenerated_match, 1, 393}.
  {label,392}.
    {line,[{location,"bs_match_SUITE.erl",766}]}.
    {func_info,{atom,bs_match_SUITE},{atom,degenerated_match},1}.
  {label,393}.
    {test,is_list,{f,392},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",767}]}.
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
    {line,[{location,"bs_match_SUITE.erl",768}]}.
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
    {line,[{location,"bs_match_SUITE.erl",769}]}.
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
    {line,[{location,"bs_match_SUITE.erl",771}]}.
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
    {line,[{location,"bs_match_SUITE.erl",772}]}.
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
    {line,[{location,"bs_match_SUITE.erl",773}]}.
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
    {line,[{location,"bs_match_SUITE.erl",772}]}.
    {badmatch,{x,0}}.
  {label,396}.
    {line,[{location,"bs_match_SUITE.erl",771}]}.
    {badmatch,{x,0}}.
  {label,397}.
    {line,[{location,"bs_match_SUITE.erl",769}]}.
    {badmatch,{x,0}}.
  {label,398}.
    {line,[{location,"bs_match_SUITE.erl",768}]}.
    {badmatch,{x,0}}.
  {label,399}.
    {line,[{location,"bs_match_SUITE.erl",767}]}.
    {badmatch,{x,0}}.


{function, degenerated_match_1, 1, 401}.
  {label,400}.
    {line,[{location,"bs_match_SUITE.erl",777}]}.
    {func_info,{atom,bs_match_SUITE},{atom,degenerated_match_1},1}.
  {label,401}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {test,is_eq_exact,
          {f,402},
          [{tr,{x,0},{t_bitstring,1,false}},{literal,<<>>}]}.
    {move,{atom,error},{x,0}}.
    return.
  {label,402}.
    {line,[{location,"bs_match_SUITE.erl",778}]}.
    {gc_bif,byte_size,{f,0},1,[{tr,{x,0},{t_bitstring,1,false}}],{x,0}}.
    return.


{function, degenerated_match_2, 1, 404}.
  {label,403}.
    {line,[{location,"bs_match_SUITE.erl",780}]}.
    {func_info,{atom,bs_match_SUITE},{atom,degenerated_match_2},1}.
  {label,404}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,405},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<>>}]}.
    {move,{atom,error},{x,0}}.
    return.
  {label,405}.
    {line,[{location,"bs_match_SUITE.erl",782}]}.
    {gc_bif,byte_size,{f,0},1,[{tr,{x,0},{t_bitstring,8,false}}],{x,1}}.
    {test,is_ge,
          {f,406},
          [{tr,{x,1},{t_integer,{0,288230376151711743}}},{integer,5}]}.
    {move,{integer,4},{x,1}}.
    {line,[{location,"bs_match_SUITE.erl",784}]}.
    {call_ext_only,2,{extfunc,erlang,split_binary,2}}.
  {label,406}.
    {move,{atom,no_split},{x,0}}.
    return.


{function, bs_sum, 1, 408}.
  {label,407}.
    {line,[{location,"bs_match_SUITE.erl",789}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bs_sum},1}.
  {label,408}.
    {test,is_list,{f,407},[{x,0}]}.
    {allocate,4,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3}]}}.
    {move,nil,{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",790}]}.
    {call,1,{f,426}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,0}}}]}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",791}]}.
    {call,1,{f,426}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,'+inf'}}}]}}.
    {test,is_eq_exact,{f,424},[{tr,{x,0},{t_integer,{0,'+inf'}}},{integer,0}]}.
    {move,{literal,"*"},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_SUITE.erl",792}]}.
    {call,1,{f,426}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{1,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,423},
          [{tr,{x,0},{t_integer,{1,'+inf'}}},{integer,42}]}.
    {move,{literal,<<1>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_SUITE.erl",793}]}.
    {call,1,{f,426}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,'+inf'}}}]}}.
    {test,is_eq_exact,{f,422},[{tr,{x,0},{t_integer,{0,'+inf'}}},{integer,1}]}.
    {move,{literal,[1,2,3,4]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_SUITE.erl",794}]}.
    {call,1,{f,426}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{1,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,421},
          [{tr,{x,0},{t_integer,{1,'+inf'}}},{integer,10}]}.
    {move,{literal,<<1,2,3,4,5>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_SUITE.erl",795}]}.
    {call,1,{f,426}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,420},
          [{tr,{x,0},{t_integer,{0,'+inf'}}},{integer,15}]}.
    {move,{literal,[1,2,3|<<4,5,6>>]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_SUITE.erl",796}]}.
    {call,1,{f,426}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{1,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,419},
          [{tr,{x,0},{t_integer,{1,'+inf'}}},{integer,21}]}.
    {move,{literal,[1,2,3|{4,5}]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_SUITE.erl",797}]}.
    {call,1,{f,426}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{1,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,418},
          [{tr,{x,0},{t_integer,{1,'+inf'}}},{integer,15}]}.
    {move,{literal,[1,2,3|zero]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_SUITE.erl",798}]}.
    {call,1,{f,426}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{1,'+inf'}}}]}}.
    {test,is_eq_exact,{f,417},[{tr,{x,0},{t_integer,{1,'+inf'}}},{integer,6}]}.
    {move,{literal,[1,2,3|0]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_SUITE.erl",799}]}.
    {call,1,{f,426}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{1,'+inf'}}}]}}.
    {test,is_eq_exact,{f,416},[{tr,{x,0},{t_integer,{1,'+inf'}}},{integer,6}]}.
    {move,{literal,[1,2,3|one]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_SUITE.erl",800}]}.
    {call,1,{f,426}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{1,'+inf'}}}]}}.
    {test,is_eq_exact,{f,415},[{tr,{x,0},{t_integer,{1,'+inf'}}},{integer,7}]}.
    {'catch',{y,3},{f,409}}.
    {move,{literal,{too,big,tuple}},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_SUITE.erl",802}]}.
    {call,1,{f,426}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,409}.
    {catch_end,{y,3}}.
    {line,[{scope,[7,8]},{location,"bs_match_SUITE.erl",802}]}.
    {call,1,{f,883}}. % fc/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,2},{f,410}}.
    {move,{literal,[1,2,3|{too,big,tuple}]},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_SUITE.erl",803}]}.
    {call,1,{f,426}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{1,'+inf'}}}]}}.
  {label,410}.
    {catch_end,{y,2}}.
    {line,[{scope,[5,6]},{location,"bs_match_SUITE.erl",803}]}.
    {call,1,{f,883}}. % fc/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_SUITE.erl",805}]}.
    {call,1,{f,435}}. % sneaky_alias/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_nil,{f,414},[{tr,{x,0},{t_list,any,nil}}]}.
    {move,{literal,<<0,0,2,47,0,5,234,71>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",806}]}.
    {call,1,{f,1808}}. % id/1
    {call,1,{f,435}}. % sneaky_alias/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,413},
          [{tr,{x,0},{t_list,any,nil}},{literal,[559,387655]}]}.
    {'catch',{y,1},{f,411}}.
    {move,{literal,<<1>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",807}]}.
    {call,1,{f,1808}}. % id/1
    {call,1,{f,435}}. % sneaky_alias/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
  {label,411}.
    {catch_end,{y,1}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<1>>]},{x,1}}.
    {move,{atom,sneaky_alias},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_SUITE.erl",807}]}.
    {call,3,{f,885}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,0},{f,412}}.
    {move,{integer,4},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_SUITE.erl",808}]}.
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
    {line,[{scope,[0,4]},{location,"bs_match_SUITE.erl",806}]}.
    {badmatch,{x,0}}.
  {label,414}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",805}]}.
    {badmatch,{x,0}}.
  {label,415}.
    {line,[{scope,"\b"},{location,"bs_match_SUITE.erl",800}]}.
    {badmatch,{x,0}}.
  {label,416}.
    {line,[{scope,"\b"},{location,"bs_match_SUITE.erl",799}]}.
    {badmatch,{x,0}}.
  {label,417}.
    {line,[{scope,"\b"},{location,"bs_match_SUITE.erl",798}]}.
    {badmatch,{x,0}}.
  {label,418}.
    {line,[{scope,"\b"},{location,"bs_match_SUITE.erl",797}]}.
    {badmatch,{x,0}}.
  {label,419}.
    {line,[{scope,"\b"},{location,"bs_match_SUITE.erl",796}]}.
    {badmatch,{x,0}}.
  {label,420}.
    {line,[{scope,"\b"},{location,"bs_match_SUITE.erl",795}]}.
    {badmatch,{x,0}}.
  {label,421}.
    {line,[{scope,"\b"},{location,"bs_match_SUITE.erl",794}]}.
    {badmatch,{x,0}}.
  {label,422}.
    {line,[{scope,"\b"},{location,"bs_match_SUITE.erl",793}]}.
    {badmatch,{x,0}}.
  {label,423}.
    {line,[{scope,"\b"},{location,"bs_match_SUITE.erl",792}]}.
    {badmatch,{x,0}}.
  {label,424}.
    {line,[{scope,"\b"},{location,"bs_match_SUITE.erl",791}]}.
    {badmatch,{x,0}}.


{function, bs_sum_1, 1, 426}.
  {label,425}.
    {line,[{location,"bs_match_SUITE.erl",811}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bs_sum_1},1}.
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
    {line,[{location,"bs_match_SUITE.erl",812}]}.
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
    {line,[{location,"bs_match_SUITE.erl",820}]}.
    {func_info,{atom,bs_match_SUITE},{atom,sneaky_alias},1}.
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
    {line,[{location,"bs_match_SUITE.erl",821}]}.
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
    {line,[{location,"bs_match_SUITE.erl",823}]}.
    {func_info,{atom,bs_match_SUITE},{atom,coverage},1}.
  {label,439}.
    {test,is_list,{f,438},[{x,0}]}.
    {allocate_heap,4,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3}]}}.
    {make_fun3,{f,1974},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_number,any}}]}}.
    {move,{literal,<<>>},{x,2}}.
    {move,{integer,0},{x,1}}.
    {line,[{location,"bs_match_SUITE.erl",824}]}.
    {call,3,{f,471}}. % coverage_fold/3
    {'%',{var_info,{x,0},[{type,{t_number,any}}]}}.
    {test,is_eq_exact,{f,469},[{tr,{x,0},{t_number,any}},{integer,0}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1972},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_number,any}}]}}.
    {move,{literal,<<1,2,3>>},{x,2}}.
    {move,{integer,0},{x,1}}.
    {line,[{scope,"\b"},{location,"bs_match_SUITE.erl",825}]}.
    {call,3,{f,471}}. % coverage_fold/3
    {'%',{var_info,{x,0},[{type,{t_number,any}}]}}.
    {test,is_eq_exact,{f,468},[{tr,{x,0},{t_number,any}},{integer,6}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1970},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_number,any}}]}}.
    {'catch',{y,3},{f,440}}.
    {move,{literal,[a,b,c]},{x,2}}.
    {move,{integer,0},{x,1}}.
    {line,[{scope,"\b"},{location,"bs_match_SUITE.erl",826}]}.
    {call,3,{f,471}}. % coverage_fold/3
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,440}.
    {catch_end,{y,3}}.
    {line,[{scope,[7,8]},{location,"bs_match_SUITE.erl",826}]}.
    {call,1,{f,883}}. % fc/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<"*">>},{x,1}}.
    {move,{atom,float},{x,2}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_SUITE.erl",830}]}.
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
           {field_flags,[{anno,[830,{file,"bs_match_SUITE.erl"}]},
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
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",831}]}.
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
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",833}]}.
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
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",835}]}.
    {call,2,{f,480}}. % coverage_bc/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_bitstring,8,true},nil}}]}}.
    {test,is_eq_exact,
          {f,464},
          [{tr,{x,0},{t_list,{t_bitstring,8,true},nil}},
           {literal,[<<2>>,<<1>>]}]}.
    {move,{literal,{x,y,z}},{x,1}}.
    {move,{literal,<<2,97,98,99>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",837}]}.
    {call,2,{f,483}}. % coverage_setelement/2
    {'%',{var_info,{x,0},[{type,{t_tuple,3,true,#{}}}]}}.
    {test,is_eq_exact,
          {f,463},
          [{tr,{x,0},{t_tuple,3,true,#{}}},{literal,{x,<<"abc">>,z}}]}.
    {move,{literal,[coverage_id]},{x,1}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",839}]}.
    {call,2,{f,486}}. % coverage_apply/2
    {'%',{var_info,{x,0},[{type,{t_cons,any,nil}}]}}.
    {test,is_eq_exact,{f,462},[{tr,{x,0},{t_cons,any,nil}},{literal,"*"}]}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",840}]}.
    {call,1,{f,490}}. % coverage_external/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,461},[{tr,{x,0},{t_integer,{0,255}}},{integer,42}]}.
    {move,nil,{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",842}]}.
    {call,1,{f,497}}. % do_coverage_bin_to_term_list/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {move,{integer,10},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",843}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {test_heap,2,1}.
    {put_list,{x,0},{literal,[{a,b,c},<<0,0,0,0,5,3:2>>]},{x,0}}.
    {call,1,{f,497}}. % do_coverage_bin_to_term_list/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {'catch',{y,2},{f,441}}.
    {move,{literal,<<0,0,0,7>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",845}]}.
    {call,1,{f,502}}. % do_coverage_bin_to_term_list_1/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
  {label,441}.
    {catch_end,{y,2}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<0,0,0,7>>]},{x,1}}.
    {move,{atom,coverage_bin_to_term_list},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_SUITE.erl",844}]}.
    {call,3,{f,885}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<0,0,0,4>>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_SUITE.erl",847}]}.
    {call,1,{f,527}}. % coverage_per_key/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,460},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<>>}]}.
    {move,{literal,<<0,0,0,7,97,98,99>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",848}]}.
    {call,1,{f,527}}. % coverage_per_key/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,459},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<"abc">>}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",850}]}.
    {call,1,{f,531}}. % coverage_bitstring/1
    {'%',{var_info,{x,0},[{type,{t_atom,[binary,bitstring]}}]}}.
    {test,is_eq_exact,
          {f,458},
          [{tr,{x,0},{t_atom,[binary,bitstring]}},{atom,binary}]}.
    {move,{literal,<<7>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",851}]}.
    {call,1,{f,531}}. % coverage_bitstring/1
    {'%',{var_info,{x,0},[{type,{t_atom,[binary,bitstring]}}]}}.
    {test,is_eq_exact,
          {f,457},
          [{tr,{x,0},{t_atom,[binary,bitstring]}},{atom,binary}]}.
    {move,{literal,<<7:4>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",852}]}.
    {call,1,{f,531}}. % coverage_bitstring/1
    {'%',{var_info,{x,0},[{type,{t_atom,[binary,bitstring]}}]}}.
    {test,is_eq_exact,
          {f,456},
          [{tr,{x,0},{t_atom,[binary,bitstring]}},{atom,bitstring}]}.
    {move,{literal,[a]},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",853}]}.
    {call,1,{f,531}}. % coverage_bitstring/1
    {'%',{var_info,{x,0},[{type,{t_atom,[other]}}]}}.
    {move,{atom,e2},{x,3}}.
    {move,{atom,e1},{x,2}}.
    {move,{atom,e3},{x,4}}.
    {move,{atom,e0},{x,1}}.
    {move,nil,{x,5}}.
    {move,{literal,<<253,155,200,17,53>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",858}]}.
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
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",860}]}.
    {call,3,{f,541}}. % coverage_trim_1/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,454},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<"(right|linux)">>}]}.
    {move,{literal,<<"right">>},{x,1}}.
    {move,{literal,<<"linux">>},{x,2}}.
    {move,{literal,<<"/">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",861}]}.
    {call,3,{f,541}}. % coverage_trim_1/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,453},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<"/(right|linux)">>}]}.
    {move,{literal,<<"right">>},{x,1}}.
    {move,{literal,<<"linux">>},{x,2}}.
    {move,{literal,<<"left">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",863}]}.
    {call,3,{f,541}}. % coverage_trim_1/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,452},
          [{tr,{x,0},{t_bitstring,8,false}},
           {literal,<<"(left|linux)/(right|linux)">>}]}.
    {move,{integer,10},{x,1}}.
    {move,nil,{x,2}}.
    {move,{literal,<<"-">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",865}]}.
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
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",866}]}.
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
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",868}]}.
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
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",870}]}.
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
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",873}]}.
    {call,1,{f,559}}. % coverage_beam_ssa_codegen/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,1},{f,442}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",876}]}.
    {call,1,{f,562}}. % coverage_beam_ssa_pre_codegen/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,442}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,447},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,447},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,0},{f,443}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_SUITE.erl",879}]}.
    {call,1,{f,1808}}. % id/1
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
    {make_fun3,{f,1968},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_integer,{42,42}}}]}}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",882}]}.
    {call,1,{f,1808}}. % id/1
    {call,1,{f,566}}. % coverage_beam_validator/1
    {test,is_eq_exact,{f,445},[{x,0},{integer,42}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1966},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,none}]}}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",883}]}.
    {call,1,{f,1808}}. % id/1
    {call,1,{f,566}}. % coverage_beam_validator/1
    {test,is_eq_exact,{f,444},[{x,0},{atom,ok}]}.
    {deallocate,4}.
    return.
  {label,444}.
    {badmatch,{x,0}}.
  {label,445}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",882}]}.
    {badmatch,{x,0}}.
  {label,446}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",879}]}.
    {badmatch,{x,0}}.
  {label,447}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",876}]}.
    {badmatch,{x,0}}.
  {label,448}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",870}]}.
    {badmatch,{x,0}}.
  {label,449}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",868}]}.
    {badmatch,{x,0}}.
  {label,450}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",866}]}.
    {badmatch,{x,0}}.
  {label,451}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",865}]}.
    {badmatch,{x,0}}.
  {label,452}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",862}]}.
    {badmatch,{x,0}}.
  {label,453}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",861}]}.
    {badmatch,{x,0}}.
  {label,454}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",860}]}.
    {badmatch,{x,0}}.
  {label,455}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",857}]}.
    {badmatch,{x,0}}.
  {label,456}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",852}]}.
    {badmatch,{atom,binary}}.
  {label,457}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",851}]}.
    {badmatch,{atom,bitstring}}.
  {label,458}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",850}]}.
    {badmatch,{atom,bitstring}}.
  {label,459}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",848}]}.
    {badmatch,{x,0}}.
  {label,460}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",847}]}.
    {badmatch,{x,0}}.
  {label,461}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",840}]}.
    {badmatch,{x,0}}.
  {label,462}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",839}]}.
    {badmatch,{x,0}}.
  {label,463}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",837}]}.
    {badmatch,{x,0}}.
  {label,464}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",835}]}.
    {badmatch,{x,0}}.
  {label,465}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",832}]}.
    {badmatch,{x,0}}.
  {label,466}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",831}]}.
    {badmatch,{x,0}}.
  {label,467}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",830}]}.
    {badmatch,{x,0}}.
  {label,468}.
    {line,[{scope,"\b"},{location,"bs_match_SUITE.erl",825}]}.
    {badmatch,{x,0}}.
  {label,469}.
    {line,[{scope,"\b"},{location,"bs_match_SUITE.erl",824}]}.
    {badmatch,{x,0}}.


{function, coverage_fold, 3, 471}.
  {label,470}.
    {line,[{location,"bs_match_SUITE.erl",887}]}.
    {func_info,{atom,bs_match_SUITE},{atom,coverage_fold},3}.
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
    {line,[{location,"bs_match_SUITE.erl",889}]}.
    {call,1,{f,1808}}. % id/1
    {swap,{y,1},{x,0}}.
    {call,1,{f,1808}}. % id/1
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
    {line,[{location,"bs_match_SUITE.erl",892}]}.
    {func_info,{atom,bs_match_SUITE},{atom,coverage_build},3}.
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
    {line,[{location,"bs_match_SUITE.erl",893}]}.
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
    {call,1,{f,1808}}. % id/1
    {line,[{location,"bs_match_SUITE.erl",894}]}.
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
    {line,[{location,"bs_match_SUITE.erl",897}]}.
    {call,1,{f,1808}}. % id/1
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
    {call,1,{f,1808}}. % id/1
    {line,[{location,"bs_match_SUITE.erl",898}]}.
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
    {call,1,{f,1808}}. % id/1
    {move,{x,0},{y,2}}.
    {move,{y,1},{x,1}}.
    {move,{integer,43},{x,2}}.
    {move,{integer,3},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",899}]}.
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
    {line,[{location,"bs_match_SUITE.erl",900}]}.
    if_end.


{function, coverage_bc, 2, 480}.
  {label,479}.
    {line,[{location,"bs_match_SUITE.erl",906}]}.
    {func_info,{atom,bs_match_SUITE},{atom,coverage_bc},2}.
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
    {line,[{location,"bs_match_SUITE.erl",907}]}.
    {call,2,{f,1963}}. % '-coverage_bc/2-lbc$^0/2-0-'/2
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
    {line,[{location,"bs_match_SUITE.erl",911}]}.
    {func_info,{atom,bs_match_SUITE},{atom,coverage_setelement},2}.
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
    {line,[{location,"bs_match_SUITE.erl",912}]}.
    {call_ext_only,3,{extfunc,erlang,setelement,3}}.
  {label,484}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {jump,{f,482}}.


{function, coverage_apply, 2, 486}.
  {label,485}.
    {line,[{location,"bs_match_SUITE.erl",914}]}.
    {func_info,{atom,bs_match_SUITE},{atom,coverage_apply},2}.
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
    {line,[{location,"bs_match_SUITE.erl",915}]}.
    {call_ext,1,{extfunc,bs_match_SUITE,coverage_id,1}}.
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
    {line,[{location,"bs_match_SUITE.erl",918}]}.
    {func_info,{atom,bs_match_SUITE},{atom,coverage_external},1}.
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
    {line,[{location,"bs_match_SUITE.erl",919}]}.
    {call_ext,2,{extfunc,bs_match_SUITE,coverage_external_ignore,2}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,491}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,489}}.


{function, coverage_external_ignore, 2, 493}.
  {label,492}.
    {line,[{location,"bs_match_SUITE.erl",922}]}.
    {func_info,{atom,bs_match_SUITE},{atom,coverage_external_ignore},2}.
  {label,493}.
    {move,{atom,ok},{x,0}}.
    return.


{function, coverage_id, 1, 495}.
  {label,494}.
    {line,[{location,"bs_match_SUITE.erl",925}]}.
    {func_info,{atom,bs_match_SUITE},{atom,coverage_id},1}.
  {label,495}.
    {call_only,1,{f,1808}}. % id/1


{function, do_coverage_bin_to_term_list, 1, 497}.
  {label,496}.
    {line,[{location,"bs_match_SUITE.erl",927}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_coverage_bin_to_term_list},1}.
  {label,497}.
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",928}]}.
    {call,2,{f,1960}}. % '-do_coverage_bin_to_term_list/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {move,{x,0},{y,0}}.
    {line,[{location,"bs_match_SUITE.erl",931}]}.
    {call,1,{f,502}}. % do_coverage_bin_to_term_list_1/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,500},
          [{tr,{x,0},{t_list,any,nil}},{tr,{y,1},{t_list,any,nil}}]}.
    {line,[{location,"bs_match_SUITE.erl",932}]}.
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
    {line,[{location,"bs_match_SUITE.erl",933}]}.
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
    {line,[{location,"bs_match_SUITE.erl",932}]}.
    {badmatch,{x,0}}.
  {label,500}.
    {line,[{location,"bs_match_SUITE.erl",931}]}.
    {badmatch,{x,0}}.


{function, do_coverage_bin_to_term_list_1, 1, 502}.
  {label,501}.
    {line,[{location,"bs_match_SUITE.erl",935}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_coverage_bin_to_term_list_1},1}.
  {label,502}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_match_SUITE.erl",936}]}.
    {call,1,{f,507}}. % coverage_bin_to_term_list/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,0}}.
    {move,nil,{x,1}}.
    {line,[{location,"bs_match_SUITE.erl",937}]}.
    {call,2,{f,512}}. % coverage_bin_to_term_list/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,505},
          [{tr,{x,0},{t_list,any,nil}},{tr,{y,0},{t_list,any,nil}}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",938}]}.
    {call,1,{f,517}}. % coverage_bin_to_term_list_catch/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,504},
          [{tr,{x,0},{t_list,any,nil}},{tr,{y,0},{t_list,any,nil}}]}.
    {move,nil,{x,1}}.
    {move,{y,1},{x,0}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {line,[{location,"bs_match_SUITE.erl",939}]}.
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
    {line,[{location,"bs_match_SUITE.erl",938}]}.
    {badmatch,{x,0}}.
  {label,505}.
    {line,[{location,"bs_match_SUITE.erl",937}]}.
    {badmatch,{x,0}}.


{function, coverage_bin_to_term_list, 1, 507}.
  {label,506}.
    {line,[{location,"bs_match_SUITE.erl",941}]}.
    {func_info,{atom,bs_match_SUITE},{atom,coverage_bin_to_term_list},1}.
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
           {field_flags,[{anno,[941,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {allocate,3,3}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {'try',{y,2},{f,508}}.
    {move,{x,2},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",942}]}.
    {call_ext,1,{extfunc,erlang,binary_to_term,1}}.
    {move,{x,0},{y,0}}.
    {try_end,{y,2}}.
    {move,{y,1},{x,0}}.
    {move,{y,0},{y,2}}.
    {trim,2,1}.
    {line,[{location,"bs_match_SUITE.erl",943}]}.
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
    {line,[{location,"bs_match_SUITE.erl",949}]}.
    {func_info,{atom,bs_match_SUITE},{atom,coverage_bin_to_term_list},2}.
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
           {field_flags,[{anno,[949,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {allocate,3,4}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {'try',{y,2},{f,513}}.
    {move,{x,3},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",950}]}.
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
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",955}]}.
    {call_ext_only,1,{extfunc,lists,reverse,1}}.


{function, coverage_bin_to_term_list_catch, 1, 517}.
  {label,516}.
    {line,[{location,"bs_match_SUITE.erl",957}]}.
    {func_info,{atom,bs_match_SUITE},{atom,coverage_bin_to_term_list_catch},1}.
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
           {field_flags,[{anno,[957,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {allocate,2,3}.
    {move,{x,0},{y,0}}.
    {'catch',{y,1},{f,518}}.
    {move,{x,2},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",958}]}.
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
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",960}]}.
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
    {line,[{location,"bs_match_SUITE.erl",964}]}.
    {func_info,{atom,bs_match_SUITE},{atom,coverage_bin_to_term_list_catch},2}.
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
           {field_flags,[{anno,[964,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {allocate,3,4}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {'catch',{y,2},{f,523}}.
    {move,{x,3},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",965}]}.
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
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",969}]}.
    {call_ext_only,1,{extfunc,lists,reverse,1}}.


{function, coverage_per_key, 1, 527}.
  {label,526}.
    {line,[{location,"bs_match_SUITE.erl",971}]}.
    {func_info,{atom,bs_match_SUITE},{atom,coverage_per_key},1}.
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
    {line,[{location,"bs_match_SUITE.erl",972}]}.
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
    {line,[{location,"bs_match_SUITE.erl",975}]}.
    {func_info,{atom,bs_match_SUITE},{atom,coverage_bitstring},1}.
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
    {line,[{location,"bs_match_SUITE.erl",979}]}.
    {func_info,{atom,bs_match_SUITE},{atom,coverage_trim},6}.
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
    {line,[{location,"bs_match_SUITE.erl",980}]}.
    {call,1,{f,1808}}. % id/1
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
    {line,[{location,"bs_match_SUITE.erl",984}]}.
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
    {line,[{location,"bs_match_SUITE.erl",980}]}.
    {case_end,{x,0}}.


{function, coverage_trim_1, 3, 541}.
  {label,540}.
    {line,[{location,"bs_match_SUITE.erl",987}]}.
    {func_info,{atom,bs_match_SUITE},{atom,coverage_trim_1},3}.
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
    {line,[{location,"bs_match_SUITE.erl",990}]}.
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
    {line,[{location,"bs_match_SUITE.erl",992}]}.
    {call,2,{f,545}}. % do_coverage_trim_1/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {swap,{y,1},{x,0}}.
    {move,{y,0},{x,1}}.
    {trim,1,1}.
    {line,[{location,"bs_match_SUITE.erl",994}]}.
    {call,2,{f,545}}. % do_coverage_trim_1/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {line,[{location,"bs_match_SUITE.erl",992}]}.
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
    {line,[{location,"bs_match_SUITE.erl",996}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_coverage_trim_1},2}.
  {label,545}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {line,[{location,"bs_match_SUITE.erl",997}]}.
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
    {line,[{location,"bs_match_SUITE.erl",999}]}.
    {func_info,{atom,bs_match_SUITE},{atom,coverage_trim_2},3}.
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
           {field_flags,[{anno,[999,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {allocate,5,5}.
    {move,{x,3},{y,0}}.
    {move,{x,4},{y,1}}.
    {move,{x,0},{y,2}}.
    {move,{x,2},{y,3}}.
    {move,{x,1},{y,4}}.
    {move,{x,4},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1000}]}.
    {call,1,{f,557}}. % printable_char/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,548},[{x,0},{atom,true}]}.
    {line,[{location,"bs_match_SUITE.erl",1002}]}.
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
    {line,[{location,"bs_match_SUITE.erl",1004}]}.
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
    {line,[{location,"bs_match_SUITE.erl",1007}]}.
    {func_info,{atom,bs_match_SUITE},{atom,coverage_trim_3},2}.
  {label,551}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_bitstring,16,false},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{3,3}}}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_match_SUITE.erl",1008}]}.
    {call_ext,1,{extfunc,erlang,iolist_size,1}}.
    {gc_bif,'-',{f,0},1,[{tr,{x,0},{t_integer,{0,'+inf'}}},{integer,3}],{y,0}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {line,[{location,"bs_match_SUITE.erl",1010}]}.
    {call_ext,1,{extfunc,erlang,iolist_to_binary,1}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_binary2,
          {f,552},
          2,
          [{tr,{x,1},{t_bs_context,8}},
           {tr,{y,0},{t_integer,{-3,'+inf'}}},
           8,
           {field_flags,[{anno,[1009,{file,"bs_match_SUITE.erl"}]},
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
    {line,[{location,"bs_match_SUITE.erl",1009}]}.
    {badmatch,{x,0}}.


{function, coverage_trim_4, 1, 554}.
  {label,553}.
    {line,[{location,"bs_match_SUITE.erl",1013}]}.
    {func_info,{atom,bs_match_SUITE},{atom,coverage_trim_4},1}.
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
    {line,[{location,"bs_match_SUITE.erl",1014}]}.
    {call,2,{f,1957}}. % '-coverage_trim_4/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {line,[{location,"bs_match_SUITE.erl",1016}]}.
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
    {line,[{location,"bs_match_SUITE.erl",1022}]}.
    {func_info,{atom,bs_match_SUITE},{atom,printable_char},1}.
  {label,557}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,1114111}}}]}}.
    {bif,'=:=',{f,0},[{tr,{x,0},{t_integer,{0,1114111}}},{integer,97}],{x,0}}.
    return.


{function, coverage_beam_ssa_codegen, 1, 559}.
  {label,558}.
    {line,[{location,"bs_match_SUITE.erl",1025}]}.
    {func_info,{atom,bs_match_SUITE},{atom,coverage_beam_ssa_codegen},1}.
  {label,559}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,has_map_fields,{f,560},{literal,#{1 => 42}},{list,[{integer,1}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,1953},1}. % '-coverage_beam_ssa_codegen/1-lbc$^0/2-0-'/2
  {label,560}.
    {line,[{location,"bs_match_SUITE.erl",1029}]}.
    {case_end,{literal,#{1 => 42}}}.


{function, coverage_beam_ssa_pre_codegen, 1, 562}.
  {label,561}.
    {line,[{location,"bs_match_SUITE.erl",1035}]}.
    {func_info,{atom,bs_match_SUITE},{atom,coverage_beam_ssa_pre_codegen},1}.
  {label,562}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,256,true}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,561}}.


{function, coverage_beam_ssa_bsm_error, 1, 564}.
  {label,563}.
    {line,[{location,"bs_match_SUITE.erl",1038}]}.
    {func_info,{atom,bs_match_SUITE},{atom,coverage_beam_ssa_bsm_error},1}.
  {label,564}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,563},1,[{x,0}],{x,1}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,badarg},{x,0}]}}.
    {line,[{location,"bs_match_SUITE.erl",1039}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, coverage_beam_validator, 1, 566}.
  {label,565}.
    {line,[{location,"bs_match_SUITE.erl",1041}]}.
    {func_info,{atom,bs_match_SUITE},{atom,coverage_beam_validator},1}.
  {label,566}.
    {allocate,1,1}.
    {'try',{y,0},{f,567}}.
    {line,[{location,"bs_match_SUITE.erl",1044}]}.
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
    {line,[{location,"bs_match_SUITE.erl",1052}]}.
    {func_info,{atom,bs_match_SUITE},{atom,coverage_beam_validator},4}.
  {label,571}.
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[ok]}}]}}.
    {'%',{var_info,{x,2},[{type,{t_atom,[ok]}}]}}.
    {move,{x,3},{x,0}}.
    return.


{function, multiple_uses, 1, 573}.
  {label,572}.
    {line,[{location,"bs_match_SUITE.erl",1054}]}.
    {func_info,{atom,bs_match_SUITE},{atom,multiple_uses},1}.
  {label,573}.
    {test,is_list,{f,572},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<1,88,245,159,1,89>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1055}]}.
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
    {line,[{location,"bs_match_SUITE.erl",1056}]}.
    {call,1,{f,584}}. % multiple_uses_2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,578},[{x,0},{atom,true}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1808},0,0,{x,1},{list,[]}}.
    {move,{literal,<<0,0,42,43>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1057}]}.
    {call,2,{f,587}}. % multiple_uses_3/2
    {test,is_eq_exact,{f,577},[{x,0},{literal,<<"*+">>}]}.
    {move,{integer,42},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1059}]}.
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
    {line,[{location,"bs_match_SUITE.erl",1060}]}.
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
    {line,[{location,"bs_match_SUITE.erl",1061}]}.
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
    {line,[{location,"bs_match_SUITE.erl",1060}]}.
    {badmatch,{x,0}}.
  {label,576}.
    {line,[{location,"bs_match_SUITE.erl",1059}]}.
    {badmatch,{x,0}}.
  {label,577}.
    {line,[{location,"bs_match_SUITE.erl",1057}]}.
    {badmatch,{x,0}}.
  {label,578}.
    {line,[{location,"bs_match_SUITE.erl",1056}]}.
    {badmatch,{atom,false}}.
  {label,579}.
    {line,[{location,"bs_match_SUITE.erl",1055}]}.
    {badmatch,{x,0}}.


{function, multiple_uses_1, 1, 581}.
  {label,580}.
    {line,[{location,"bs_match_SUITE.erl",1065}]}.
    {func_info,{atom,bs_match_SUITE},{atom,multiple_uses_1},1}.
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
    {line,[{location,"bs_match_SUITE.erl",1067}]}.
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
    {line,[{location,"bs_match_SUITE.erl",1070}]}.
    {func_info,{atom,bs_match_SUITE},{atom,multiple_uses_2},1}.
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
    {line,[{location,"bs_match_SUITE.erl",1074}]}.
    {func_info,{atom,bs_match_SUITE},{atom,multiple_uses_3},2}.
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
    {call_only,1,{f,1808}}. % id/1
  {label,588}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {jump,{f,586}}.


{function, multiple_uses_match, 1, 590}.
  {label,589}.
    {line,[{location,"bs_match_SUITE.erl",1078}]}.
    {func_info,{atom,bs_match_SUITE},{atom,multiple_uses_match},1}.
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
    {line,[{location,"bs_match_SUITE.erl",1081}]}.
    {func_info,{atom,bs_match_SUITE},{atom,multiple_uses_cmp},2}.
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
    {line,[{location,"bs_match_SUITE.erl",1084}]}.
    {func_info,{atom,bs_match_SUITE},{atom,first_after},2}.
  {label,596}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,42}}}]}}.
    {line,[{location,"bs_match_SUITE.erl",1085}]}.
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
           {field_flags,[{anno,[1090,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}]}.
    {allocate,0,3}.
    {move,{x,2},{x,1}}.
    {line,[{location,"bs_match_SUITE.erl",1092}]}.
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
    {line,[{location,"bs_match_SUITE.erl",1090}]}.
    {badmatch,{x,0}}.


{function, match_first, 2, 600}.
  {label,599}.
    {line,[{location,"bs_match_SUITE.erl",1099}]}.
    {func_info,{atom,bs_match_SUITE},{atom,match_first},2}.
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
    {line,[{location,"bs_match_SUITE.erl",1102}]}.
    {func_info,{atom,bs_match_SUITE},{atom,zero_label},1}.
  {label,603}.
    {test,is_list,{f,602},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<"FACEnosemouth">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1103}]}.
    {call,1,{f,607}}. % read_pols/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,605},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<"nosemouth">>}]}.
    {move,{literal,<<"noFACE">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1104}]}.
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
    {line,[{location,"bs_match_SUITE.erl",1103}]}.
    {badmatch,{x,0}}.


{function, read_pols, 1, 607}.
  {label,606}.
    {line,[{location,"bs_match_SUITE.erl",1107}]}.
    {func_info,{atom,bs_match_SUITE},{atom,read_pols},1}.
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
    {line,[{location,"bs_match_SUITE.erl",1108}]}.
    {badmatch,{x,0}}.


{function, followed_by_catch, 1, 610}.
  {label,609}.
    {line,[{location,"bs_match_SUITE.erl",1113}]}.
    {func_info,{atom,bs_match_SUITE},{atom,followed_by_catch},1}.
  {label,610}.
    {test,is_list,{f,609},[{x,0}]}.
    {move,{literal,<<0,1,2,3,4,5>>},{x,0}}.
    {call_only,1,{f,612}}. % handle/1


{function, handle, 1, 612}.
  {label,611}.
    {line,[{location,"bs_match_SUITE.erl",1117}]}.
    {func_info,{atom,bs_match_SUITE},{atom,handle},1}.
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
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",1120}]}.
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
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",1122}]}.
    {badrecord,{x,1}}.
  {label,617}.
    {line,[{scope,[0,2]},{location,"bs_match_SUITE.erl",1119}]}.
    {badmatch,{x,0}}.


{function, matching_meets_construction, 1, 619}.
  {label,618}.
    {line,[{location,"bs_match_SUITE.erl",1128}]}.
    {func_info,{atom,bs_match_SUITE},{atom,matching_meets_construction},1}.
  {label,619}.
    {test,is_list,{f,618},[{x,0}]}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1129}]}.
    {call,1,{f,1808}}. % id/1
    {move,{x,0},{y,1}}.
    {move,{integer,2},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1130}]}.
    {call,1,{f,1808}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{literal,<<1,2,3,4,5>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1131}]}.
    {call,1,{f,1808}}. % id/1
    {test,bs_start_match3,{f,627},1,[{x,0}],{x,1}}.
    {test,bs_skip_bits2,
          {f,627},
          [{x,1},
           {y,0},
           8,
           {field_flags,[{anno,[1132,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_match,{f,627},
              {x,1},
              {commands,[{ensure_at_least,0,8},{get_tail,2,8,{x,0}}]}}.
    {line,[{location,"bs_match_SUITE.erl",1133}]}.
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
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",1135}]}.
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
    {line,[{scope,[3,4]},{location,"bs_match_SUITE.erl",1136}]}.
    {call,1,{f,632}}. % matching_meets_construction_2/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
  {label,621}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,624},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,624},[{x,1},2,{atom,badarg}]}.
    {move,{literal,<<"Abc">>},{x,0}}.
    {line,[{scope,[1,2]},{location,"bs_match_SUITE.erl",1137}]}.
    {call,1,{f,635}}. % matching_meets_construction_3/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,623},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<"Bbc">>}]}.
    {move,{integer,2},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",1139}]}.
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
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",1137}]}.
    {badmatch,{x,0}}.
  {label,624}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",1136}]}.
    {badmatch,{x,0}}.
  {label,625}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",1135}]}.
    {badmatch,{x,0}}.
  {label,626}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",1134}]}.
    {badmatch,{x,0}}.
  {label,627}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",1132}]}.
    {badmatch,{x,0}}.


{function, matching_meets_construction_1, 1, 629}.
  {label,628}.
    {line,[{location,"bs_match_SUITE.erl",1142}]}.
    {func_info,{atom,bs_match_SUITE},{atom,matching_meets_construction_1},1}.
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
    {line,[{location,"bs_match_SUITE.erl",1144}]}.
    {func_info,{atom,bs_match_SUITE},{atom,matching_meets_construction_2},1}.
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
    {line,[{location,"bs_match_SUITE.erl",1146}]}.
    {func_info,{atom,bs_match_SUITE},{atom,matching_meets_construction_3},1}.
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
    {line,[{location,"bs_match_SUITE.erl",1148}]}.
    {func_info,{atom,bs_match_SUITE},{atom,encode_octet_string},2}.
  {label,638}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{2,2}}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {line,[{location,"bs_match_SUITE.erl",1149}]}.
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
    {line,[{location,"bs_match_SUITE.erl",1151}]}.
    {func_info,{atom,bs_match_SUITE},{atom,simon},1}.
  {label,640}.
    {test,is_list,{f,639},[{x,0}]}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{literal,<<>>},{x,1}}.
    {move,{atom,blurf},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1152}]}.
    {call,2,{f,647}}. % simon/2
    {'%',{var_info,{x,0},[{type,{t_atom,[one]}}]}}.
    {move,{literal,<<"*">>},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1153}]}.
    {call,2,{f,647}}. % simon/2
    {'%',{var_info,{x,0},[{type,{t_atom,[one,two]}}]}}.
    {test,is_eq_exact,{f,645},[{tr,{x,0},{t_atom,[one,two]}},{atom,two}]}.
    {'catch',{y,2},{f,641}}.
    {move,{literal,<<1>>},{x,1}}.
    {move,{integer,17},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",1154}]}.
    {call,2,{f,647}}. % simon/2
    {'%',{var_info,{x,0},[{type,{t_atom,[one]}}]}}.
  {label,641}.
    {catch_end,{y,2}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[17,<<1>>]},{x,1}}.
    {move,{atom,simon},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_SUITE.erl",1154}]}.
    {call,3,{f,885}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,1},{f,642}}.
    {move,{literal,<<1,2,3>>},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_SUITE.erl",1155}]}.
    {call,2,{f,647}}. % simon/2
    {'%',{var_info,{x,0},[{type,{t_atom,[one,two]}}]}}.
  {label,642}.
    {catch_end,{y,1}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[0,<<1,2,3>>]},{x,1}}.
    {move,{atom,simon},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_SUITE.erl",1155}]}.
    {call,3,{f,885}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<"\t">>},{x,1}}.
    {move,{atom,blurf},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_SUITE.erl",1157}]}.
    {call,2,{f,651}}. % simon2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[one]}}]}}.
    {move,{literal,<<9,1>>},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_SUITE.erl",1158}]}.
    {call,2,{f,651}}. % simon2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[one,two]}}]}}.
    {test,is_eq_exact,{f,644},[{tr,{x,0},{t_atom,[one,two]}},{atom,two}]}.
    {'catch',{y,0},{f,643}}.
    {move,{literal,<<"\t\n\v">>},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",1159}]}.
    {call,2,{f,651}}. % simon2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[one,two]}}]}}.
  {label,643}.
    {catch_end,{y,0}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[0,<<"\t\n\v">>]},{x,1}}.
    {move,{atom,simon2},{x,0}}.
    {call_last,3,{f,885},3}. % fc/3
  {label,644}.
    {line,[{scope,[0,2]},{location,"bs_match_SUITE.erl",1158}]}.
    {badmatch,{atom,one}}.
  {label,645}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",1153}]}.
    {badmatch,{atom,one}}.


{function, simon, 2, 647}.
  {label,646}.
    {line,[{location,"bs_match_SUITE.erl",1162}]}.
    {func_info,{atom,bs_match_SUITE},{atom,simon},2}.
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
    {line,[{location,"bs_match_SUITE.erl",1165}]}.
    {func_info,{atom,bs_match_SUITE},{atom,simon2},2}.
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
    {line,[{location,"bs_match_SUITE.erl",1170}]}.
    {func_info,{atom,bs_match_SUITE},{atom,matching_and_andalso},1}.
  {label,655}.
    {test,is_list,{f,654},[{x,0}]}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{integer,3},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1171}]}.
    {call,2,{f,673}}. % matching_and_andalso_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,2},{f,656}}.
    {move,{integer,-8},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1172}]}.
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
    {line,[{scope,[5,6]},{location,"bs_match_SUITE.erl",1173}]}.
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
    {line,[{scope,[3,4]},{location,"bs_match_SUITE.erl",1174}]}.
    {call,2,{f,673}}. % matching_and_andalso_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,658}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,669},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,669},[{x,1},2,{atom,function_clause}]}.
    {move,{literal,<<"-xyz">>},{x,1}}.
    {move,{literal,"abc"},{x,0}}.
    {line,[{scope,[1,2]},{location,"bs_match_SUITE.erl",1176}]}.
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
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",1177}]}.
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
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",1178}]}.
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
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",1179}]}.
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
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",1180}]}.
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
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",1181}]}.
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
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",1182}]}.
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
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",1183}]}.
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
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",1184}]}.
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
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",1185}]}.
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
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",1184}]}.
    {badmatch,{x,0}}.
  {label,661}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",1183}]}.
    {badmatch,{x,0}}.
  {label,662}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",1182}]}.
    {badmatch,{x,0}}.
  {label,663}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",1181}]}.
    {badmatch,{x,0}}.
  {label,664}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",1180}]}.
    {badmatch,{x,0}}.
  {label,665}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",1179}]}.
    {badmatch,{x,0}}.
  {label,666}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",1178}]}.
    {badmatch,{x,0}}.
  {label,667}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",1177}]}.
    {badmatch,{x,0}}.
  {label,668}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",1176}]}.
    {badmatch,{x,0}}.
  {label,669}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",1174}]}.
    {badmatch,{x,0}}.
  {label,670}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",1173}]}.
    {badmatch,{x,0}}.
  {label,671}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",1172}]}.
    {badmatch,{x,0}}.


{function, matching_and_andalso_1, 2, 673}.
  {label,672}.
    {line,[{location,"bs_match_SUITE.erl",1188}]}.
    {func_info,{atom,bs_match_SUITE},{atom,matching_and_andalso_1},2}.
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
    {line,[{location,"bs_match_SUITE.erl",1189}]}.
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
    {line,[{location,"bs_match_SUITE.erl",1192}]}.
    {func_info,{atom,bs_match_SUITE},{atom,matching_and_andalso_23},2}.
  {label,676}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{97,99}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {allocate,2,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_match_SUITE.erl",1193}]}.
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
    {line,[{location,"bs_match_SUITE.erl",1194}]}.
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
    {line,[{location,"bs_match_SUITE.erl",1197}]}.
    {func_info,{atom,bs_match_SUITE},{atom,matching_and_andalso_2},2}.
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
    {line,[{location,"bs_match_SUITE.erl",1205}]}.
    {func_info,{atom,bs_match_SUITE},{atom,matching_and_andalso_3},2}.
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
    {line,[{location,"bs_match_SUITE.erl",1212}]}.
    {func_info,{atom,bs_match_SUITE},{atom,otp_7188},1}.
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
    {line,[{location,"bs_match_SUITE.erl",1223}]}.
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
    {line,[{location,"bs_match_SUITE.erl",1220}]}.
    {badmatch,{x,0}}.


{function, parse_v1_or_v11_tag, 1, 692}.
  {label,691}.
    {line,[{location,"bs_match_SUITE.erl",1225}]}.
    {func_info,{atom,bs_match_SUITE},{atom,parse_v1_or_v11_tag},1}.
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
    {line,[{location,"bs_match_SUITE.erl",1231}]}.
    {call,1,{f,696}}. % trim/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {swap,{y,2},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1232}]}.
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
    {line,[{location,"bs_match_SUITE.erl",1239}]}.
    {call,1,{f,696}}. % trim/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {swap,{y,1},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1240}]}.
    {call,1,{f,696}}. % trim/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {swap,{y,0},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1241}]}.
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
    {line,[{location,"bs_match_SUITE.erl",1245}]}.
    {func_info,{atom,bs_match_SUITE},{atom,trim},1}.
  {label,696}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {allocate,0,1}.
    {line,[{location,"bs_match_SUITE.erl",1246}]}.
    {call_ext,1,{extfunc,erlang,binary_to_list,1}}.
    {call,1,{f,698}}. % trim_blanks/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {call_ext_last,1,{extfunc,erlang,list_to_binary,1},0}.


{function, trim_blanks, 1, 698}.
  {label,697}.
    {line,[{location,"bs_match_SUITE.erl",1248}]}.
    {func_info,{atom,bs_match_SUITE},{atom,trim_blanks},1}.
  {label,698}.
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {allocate,0,1}.
    {line,[{location,"bs_match_SUITE.erl",1249}]}.
    {call_ext,1,{extfunc,lists,reverse,1}}.
    {call,1,{f,700}}. % skip_blanks_and_zero/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {call_ext_last,1,{extfunc,lists,reverse,1},0}.


{function, skip_blanks_and_zero, 1, 700}.
  {label,699}.
    {line,[{location,"bs_match_SUITE.erl",1251}]}.
    {func_info,{atom,bs_match_SUITE},{atom,skip_blanks_and_zero},1}.
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
    {line,[{location,"bs_match_SUITE.erl",1263}]}.
    {func_info,{atom,bs_match_SUITE},{atom,otp_7233},1}.
  {label,704}.
    {test,is_list,{f,703},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,{rec_otp_7233,<<"XXabcde">>,[{"xxxxxxxx",42}]}},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1264}]}.
    {call,1,{f,708}}. % otp_7233_1/1
    {bif,get,{f,0},[{atom,io_format}],{x,0}}.
    {test,is_eq_exact,
          {f,706},
          [{x,0},{literal,[<<"XXabcde">>,{"xxxxxxxx",42}]}]}.
    {move,{atom,io_format},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1266}]}.
    {call_ext,1,{extfunc,erlang,erase,1}}.
    {move,{literal,{rec_otp_7233,<<"XXabcde">>,[]}},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1267}]}.
    {call,1,{f,708}}. % otp_7233_1/1
    {bif,get,{f,0},[{atom,io_format}],{x,0}}.
    {test,is_eq_exact,{f,705},[{x,0},{atom,undefined}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,705}.
    {line,[{location,"bs_match_SUITE.erl",1268}]}.
    {badmatch,{x,0}}.
  {label,706}.
    {line,[{location,"bs_match_SUITE.erl",1265}]}.
    {badmatch,{x,0}}.


{function, otp_7233_1, 1, 708}.
  {label,707}.
    {line,[{location,"bs_match_SUITE.erl",1271}]}.
    {func_info,{atom,bs_match_SUITE},{atom,otp_7233_1},1}.
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
    {line,[{location,"bs_match_SUITE.erl",1276}]}.
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
    {line,[{location,"bs_match_SUITE.erl",1280}]}.
    {call_ext_last,2,{extfunc,erlang,put,2},1}.
  {label,710}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,711}.
    {line,[{location,"bs_match_SUITE.erl",1272}]}.
    {badmatch,{x,1}}.


{function, otp_7240, 1, 713}.
  {label,712}.
    {line,[{location,"bs_match_SUITE.erl",1286}]}.
    {func_info,{atom,bs_match_SUITE},{atom,otp_7240},1}.
  {label,713}.
    {test,is_list,{f,712},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<>>},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1287}]}.
    {call,2,{f,718}}. % otp_7240_a/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
    {move,{integer,2},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1288}]}.
    {call,2,{f,718}}. % otp_7240_a/2
    {'%',{var_info,{x,0},[{type,{t_atom,[b]}}]}}.
    {move,{literal,<<>>},{x,1}}.
    {move,{atom,anything},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1290}]}.
    {call,2,{f,721}}. % otp_7240_b/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
    {move,{literal,{x,y}},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1291}]}.
    {call,2,{f,721}}. % otp_7240_b/2
    {'%',{var_info,{x,0},[{type,{t_atom,[b]}}]}}.
    {move,{literal,<<>>},{x,1}}.
    {move,{atom,anything},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1293}]}.
    {call,2,{f,724}}. % otp_7240_c/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
    {move,{literal,<<2>>},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1294}]}.
    {call,2,{f,724}}. % otp_7240_c/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b]}}]}}.
    {test,is_eq_exact,{f,716},[{tr,{x,0},{t_atom,[a,b]}},{atom,b}]}.
    {move,{literal,<<>>},{x,1}}.
    {move,{atom,anything},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1296}]}.
    {call,2,{f,728}}. % otp_7240_d/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b]}}]}}.
    {test,is_eq_exact,{f,715},[{tr,{x,0},{t_atom,[a,b]}},{atom,a}]}.
    {move,{literal,<<2>>},{x,1}}.
    {move,{atom,again},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1297}]}.
    {call,2,{f,728}}. % otp_7240_d/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b]}}]}}.
    {test,is_eq_exact,{f,714},[{tr,{x,0},{t_atom,[a,b]}},{atom,b}]}.
    {move,{literal,<<>>},{x,1}}.
    {move,{atom,anything},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1299}]}.
    {call,2,{f,732}}. % otp_7240_e/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
    {move,{integer,41},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1300}]}.
    {call,2,{f,732}}. % otp_7240_e/2
    {'%',{var_info,{x,0},[{type,{t_atom,[b]}}]}}.
    {move,{literal,<<>>},{x,1}}.
    {move,{atom,anything},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1302}]}.
    {call,2,{f,735}}. % otp_7240_f/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
    {move,{literal,{}},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1303}]}.
    {call,2,{f,735}}. % otp_7240_f/2
    {'%',{var_info,{x,0},[{type,{t_atom,[b]}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,714}.
    {line,[{location,"bs_match_SUITE.erl",1297}]}.
    {badmatch,{atom,a}}.
  {label,715}.
    {line,[{location,"bs_match_SUITE.erl",1296}]}.
    {badmatch,{atom,b}}.
  {label,716}.
    {line,[{location,"bs_match_SUITE.erl",1294}]}.
    {badmatch,{atom,a}}.


{function, otp_7240_a, 2, 718}.
  {label,717}.
    {line,[{location,"bs_match_SUITE.erl",1307}]}.
    {func_info,{atom,bs_match_SUITE},{atom,otp_7240_a},2}.
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
    {line,[{location,"bs_match_SUITE.erl",1310}]}.
    {func_info,{atom,bs_match_SUITE},{atom,otp_7240_b},2}.
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
    {line,[{location,"bs_match_SUITE.erl",1313}]}.
    {func_info,{atom,bs_match_SUITE},{atom,otp_7240_c},2}.
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
    {line,[{location,"bs_match_SUITE.erl",1316}]}.
    {func_info,{atom,bs_match_SUITE},{atom,otp_7240_d},2}.
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
    {line,[{location,"bs_match_SUITE.erl",1319}]}.
    {func_info,{atom,bs_match_SUITE},{atom,otp_7240_e},2}.
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
    {line,[{location,"bs_match_SUITE.erl",1322}]}.
    {func_info,{atom,bs_match_SUITE},{atom,otp_7240_f},2}.
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
    {line,[{location,"bs_match_SUITE.erl",1325}]}.
    {func_info,{atom,bs_match_SUITE},{atom,otp_7498},1}.
  {label,738}.
    {test,is_list,{f,737},[{x,0}]}.
    {allocate,0,0}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1326}]}.
    {call,2,{f,748}}. % otp_7498_foo/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,746},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<1,2,3>>}]}.
    {move,{integer,1},{x,1}}.
    {line,[{location,"bs_match_SUITE.erl",1327}]}.
    {call,2,{f,748}}. % otp_7498_foo/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,745},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<2,3>>}]}.
    {move,{integer,2},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1328}]}.
    {call,2,{f,748}}. % otp_7498_foo/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,744},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<1,2,3>>}]}.
    {move,{integer,0},{x,1}}.
    {line,[{location,"bs_match_SUITE.erl",1330}]}.
    {call,2,{f,752}}. % otp_7498_bar/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,743},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<1,2,3>>}]}.
    {move,{integer,1},{x,1}}.
    {line,[{location,"bs_match_SUITE.erl",1331}]}.
    {call,2,{f,752}}. % otp_7498_bar/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,742},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<2,3>>}]}.
    {move,{integer,2},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1332}]}.
    {call,2,{f,752}}. % otp_7498_bar/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,741},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<1,2,3>>}]}.
    {move,{integer,2},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1333}]}.
    {call,2,{f,752}}. % otp_7498_bar/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,740},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<>>}]}.
    {move,{integer,3},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1334}]}.
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
    {line,[{location,"bs_match_SUITE.erl",1333}]}.
    {badmatch,{x,0}}.
  {label,741}.
    {line,[{location,"bs_match_SUITE.erl",1332}]}.
    {badmatch,{x,0}}.
  {label,742}.
    {line,[{location,"bs_match_SUITE.erl",1331}]}.
    {badmatch,{x,0}}.
  {label,743}.
    {line,[{location,"bs_match_SUITE.erl",1330}]}.
    {badmatch,{x,0}}.
  {label,744}.
    {line,[{location,"bs_match_SUITE.erl",1328}]}.
    {badmatch,{x,0}}.
  {label,745}.
    {line,[{location,"bs_match_SUITE.erl",1327}]}.
    {badmatch,{x,0}}.
  {label,746}.
    {line,[{location,"bs_match_SUITE.erl",1326}]}.
    {badmatch,{x,0}}.


{function, otp_7498_foo, 2, 748}.
  {label,747}.
    {line,[{location,"bs_match_SUITE.erl",1338}]}.
    {func_info,{atom,bs_match_SUITE},{atom,otp_7498_foo},2}.
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
    {line,[{location,"bs_match_SUITE.erl",1345}]}.
    {func_info,{atom,bs_match_SUITE},{atom,otp_7498_bar},2}.
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
    {line,[{location,"bs_match_SUITE.erl",1355}]}.
    {func_info,{atom,bs_match_SUITE},{atom,match_string},1}.
  {label,757}.
    {test,is_list,{f,756},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{atom,endian},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1361}]}.
    {call_ext,1,{extfunc,erlang,system_info,1}}.
    {select_val,{x,0},
                {f,769},
                {list,[{atom,big},{f,759},{atom,little},{f,758}]}}.
  {label,758}.
    {move,{literal,<<97,0,98,0>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1363}]}.
    {call,1,{f,771}}. % do_match_string_native/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {jump,{f,760}}.
  {label,759}.
    {move,{literal,<<0,97,0,98>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1365}]}.
    {call,1,{f,771}}. % do_match_string_native/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,760}.
    {move,{literal,<<0,97,0,98>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1368}]}.
    {call,1,{f,774}}. % do_match_string_big/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<97,0,98,0>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1369}]}.
    {call,1,{f,776}}. % do_match_string_little/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<"ÿÿ">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1371}]}.
    {call,1,{f,779}}. % do_match_string_big_signed/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<"ÿÿ">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1372}]}.
    {call,1,{f,782}}. % do_match_string_little_signed/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1374}]}.
    {call,1,{f,785}}. % no_match_string_opt/1
    {'%',{var_info,{x,0},[{type,{t_atom,[plain,strange]}}]}}.
    {test,is_eq_exact,
          {f,768},
          [{tr,{x,0},{t_atom,[plain,strange]}},{atom,plain}]}.
    {move,{literal,<<48,152,140,3:3>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1375}]}.
    {call,1,{f,785}}. % no_match_string_opt/1
    {'%',{var_info,{x,0},[{type,{t_atom,[plain,strange]}}]}}.
    {test,is_eq_exact,
          {f,767},
          [{tr,{x,0},{t_atom,[plain,strange]}},{atom,strange}]}.
    {move,{literal,<<"d">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1377}]}.
    {call,1,{f,1808}}. % id/1
    {call,1,{f,790}}. % do_match_string_tail/1
    {'%',{var_info,{x,0},[{type,{t_atom,[d,dd]}}]}}.
    {test,is_eq_exact,{f,766},[{tr,{x,0},{t_atom,[d,dd]}},{atom,d}]}.
    {move,{literal,<<"dd">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1378}]}.
    {call,1,{f,1808}}. % id/1
    {call,1,{f,790}}. % do_match_string_tail/1
    {'%',{var_info,{x,0},[{type,{t_atom,[d,dd]}}]}}.
    {test,is_eq_exact,{f,765},[{tr,{x,0},{t_atom,[d,dd]}},{atom,dd}]}.
    {move,{literal,<<"a">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1380}]}.
    {call,1,{f,1808}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,0},{x,0}}.
    {call,1,{f,1808}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {call,2,{f,794}}. % do_match_string_var_size/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a,ab]}}]}}.
    {test,is_eq_exact,{f,764},[{tr,{x,0},{t_atom,[a,ab]}},{atom,a}]}.
    {move,{literal,<<"ab">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1381}]}.
    {call,1,{f,1808}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,8},{x,0}}.
    {call,1,{f,1808}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {call,2,{f,794}}. % do_match_string_var_size/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a,ab]}}]}}.
    {test,is_eq_exact,{f,763},[{tr,{x,0},{t_atom,[a,ab]}},{atom,a}]}.
    {move,{literal,<<"ab">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1382}]}.
    {call,1,{f,1808}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,0},{x,0}}.
    {call,1,{f,1808}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {call,2,{f,794}}. % do_match_string_var_size/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a,ab]}}]}}.
    {test,is_eq_exact,{f,762},[{tr,{x,0},{t_atom,[a,ab]}},{atom,ab}]}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1383}]}.
    {call,1,{f,1808}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,8},{x,0}}.
    {call,1,{f,1808}}. % id/1
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
    {line,[{location,"bs_match_SUITE.erl",1382}]}.
    {badmatch,{atom,a}}.
  {label,763}.
    {line,[{location,"bs_match_SUITE.erl",1381}]}.
    {badmatch,{atom,ab}}.
  {label,764}.
    {line,[{location,"bs_match_SUITE.erl",1380}]}.
    {badmatch,{atom,ab}}.
  {label,765}.
    {line,[{location,"bs_match_SUITE.erl",1378}]}.
    {badmatch,{atom,d}}.
  {label,766}.
    {line,[{location,"bs_match_SUITE.erl",1377}]}.
    {badmatch,{atom,dd}}.
  {label,767}.
    {line,[{location,"bs_match_SUITE.erl",1375}]}.
    {badmatch,{atom,plain}}.
  {label,768}.
    {line,[{location,"bs_match_SUITE.erl",1374}]}.
    {badmatch,{atom,strange}}.
  {label,769}.
    {line,[{location,"bs_match_SUITE.erl",1361}]}.
    {case_end,{x,0}}.


{function, do_match_string_native, 1, 771}.
  {label,770}.
    {line,[{location,"bs_match_SUITE.erl",1387}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_match_string_native},1}.
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
    {line,[{location,"bs_match_SUITE.erl",1389}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_match_string_big},1}.
  {label,774}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,false}}]}}.
    {test,is_eq_exact,
          {f,773},
          [{tr,{x,0},{t_bitstring,32,false}},{literal,<<0,97,0,98>>}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, do_match_string_little, 1, 776}.
  {label,775}.
    {line,[{location,"bs_match_SUITE.erl",1391}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_match_string_little},1}.
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
    {line,[{location,"bs_match_SUITE.erl",1393}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_match_string_big_signed},1}.
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
    {line,[{location,"bs_match_SUITE.erl",1395}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_match_string_little_signed},1}.
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
    {line,[{location,"bs_match_SUITE.erl",1397}]}.
    {func_info,{atom,bs_match_SUITE},{atom,no_match_string_opt},1}.
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
    {line,[{location,"bs_match_SUITE.erl",1402}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_match_string_tail},1}.
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
    {line,[{location,"bs_match_SUITE.erl",1404}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_match_string_var_size},2}.
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
           {field_flags,[{anno,[1405,{file,"bs_match_SUITE.erl"}]},
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
           {field_flags,[{anno,[1405,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_match,{f,796},{x,2},{commands,[{ensure_exactly,0}]}}.
    {move,{atom,a},{x,0}}.
    return.
  {label,796}.
    {bs_set_position,{x,2},{x,0}}.
    {bs_get_tail,{x,2},{x,0},3}.
    {line,[{location,"bs_match_SUITE.erl",1405}]}.
    {case_end,{x,0}}.
  {label,797}.
    {case_end,{x,0}}.


{function, zero_width, 1, 799}.
  {label,798}.
    {line,[{location,"bs_match_SUITE.erl",1409}]}.
    {func_info,{atom,bs_match_SUITE},{atom,zero_width},1}.
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
           {field_flags,[{anno,[1410,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,805},{x,0},{commands,[{ensure_exactly,0}]}}.
    {test,is_eq_exact,{f,804},[{tr,{x,1},{t_integer,{0,65535}}},{integer,2}]}.
    {test,is_eq_exact,
          {f,803},
          [{tr,{x,2},{t_bitstring,8,false}},{literal,<<"hi">>}]}.
    {allocate,0,0}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1415}]}.
    {call,1,{f,1808}}. % id/1
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1425}]}.
    {call,1,{f,1949}}. % '-zero_width/1-fun-0-'/1
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
    {line,[{location,"bs_match_SUITE.erl",1426}]}.
    {call,1,{f,1949}}. % '-zero_width/1-fun-0-'/1
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
    {line,[{location,"bs_match_SUITE.erl",1427}]}.
    {call,1,{f,1949}}. % '-zero_width/1-fun-0-'/1
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
    {line,[{location,"bs_match_SUITE.erl",1428}]}.
    {call,1,{f,1949}}. % '-zero_width/1-fun-0-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[no_match]}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,800}.
    {line,[{location,"bs_match_SUITE.erl",1427}]}.
    {badmatch,{x,0}}.
  {label,801}.
    {line,[{location,"bs_match_SUITE.erl",1426}]}.
    {badmatch,{x,0}}.
  {label,802}.
    {line,[{location,"bs_match_SUITE.erl",1425}]}.
    {badmatch,{x,0}}.
  {label,803}.
    {line,[{location,"bs_match_SUITE.erl",1412}]}.
    {badmatch,{literal,<<"hi">>}}.
  {label,804}.
    {line,[{location,"bs_match_SUITE.erl",1411}]}.
    {badmatch,{x,1}}.
  {label,805}.
    {line,[{location,"bs_match_SUITE.erl",1410}]}.
    {badmatch,{literal,<<2,0,104,105>>}}.


{function, bad_size, 1, 807}.
  {label,806}.
    {line,[{location,"bs_match_SUITE.erl",1434}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bad_size},1}.
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
    {line,[{location,"bs_match_SUITE.erl",1440}]}.
    {call,1,{f,1808}}. % id/1
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
    {line,[{scope,"$"},{location,"bs_match_SUITE.erl",1441}]}.
    {call,1,{f,1808}}. % id/1
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
    {line,[{scope,"\""},{location,"bs_match_SUITE.erl",1442}]}.
    {call,1,{f,1808}}. % id/1
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
    {line,[{scope," "},{location,"bs_match_SUITE.erl",1443}]}.
    {call,1,{f,1808}}. % id/1
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
    {line,[{scope,[30]},{location,"bs_match_SUITE.erl",1444}]}.
    {call,1,{f,1808}}. % id/1
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
    {line,[{scope,[28]},{location,"bs_match_SUITE.erl",1445}]}.
    {call,1,{f,1808}}. % id/1
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
    {line,[{scope,[26]},{location,"bs_match_SUITE.erl",1447}]}.
    {call,1,{f,1808}}. % id/1
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
    {line,[{scope,[24]},{location,"bs_match_SUITE.erl",1448}]}.
    {call,1,{f,1808}}. % id/1
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
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",1449}]}.
    {call,1,{f,1808}}. % id/1
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
    {line,[{scope,[20]},{location,"bs_match_SUITE.erl",1450}]}.
    {call,1,{f,1808}}. % id/1
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
    {line,[{scope,[18]},{location,"bs_match_SUITE.erl",1451}]}.
    {call,1,{f,1808}}. % id/1
    {test,bs_start_match3,{f,827},1,[{x,0}],{x,1}}.
    {test,bs_get_float2,
          {f,827},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,1},
           1,
           {field_flags,[{anno,[1451,{file,"bs_match_SUITE.erl"}]},
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
    {line,[{scope,[16]},{location,"bs_match_SUITE.erl",1452}]}.
    {call,1,{f,1808}}. % id/1
    {test,bs_start_match3,{f,828},1,[{x,0}],{x,1}}.
    {test,bs_get_float2,
          {f,828},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[1452,{file,"bs_match_SUITE.erl"}]},
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
    {line,[{scope,[14]},{location,"bs_match_SUITE.erl",1455}]}.
    {call,1,{f,1808}}. % id/1
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
    {line,[{scope,"\f"},{location,"bs_match_SUITE.erl",1456}]}.
    {call,1,{f,1808}}. % id/1
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
    {line,[{scope,"\n"},{location,"bs_match_SUITE.erl",1457}]}.
    {call,1,{f,1808}}. % id/1
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
    {line,[{scope,"\b"},{location,"bs_match_SUITE.erl",1458}]}.
    {call,1,{f,1808}}. % id/1
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
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",1459}]}.
    {call,1,{f,1808}}. % id/1
    {test,bs_start_match3,{f,829},1,[{x,0}],{x,1}}.
    {test,bs_get_float2,
          {f,829},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,1},
           1,
           {field_flags,[{anno,[1459,{file,"bs_match_SUITE.erl"}]},
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
    {line,[{scope,[5,6]},{location,"bs_match_SUITE.erl",1460}]}.
    {call,1,{f,1808}}. % id/1
    {test,bs_start_match3,{f,830},1,[{x,0}],{x,1}}.
    {test,bs_get_float2,
          {f,830},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[1460,{file,"bs_match_SUITE.erl"}]},
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
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",1462}]}.
    {call,1,{f,854}}. % bad_all_size/1
    {'%',{var_info,{x,0},[{type,{t_atom,[no_match]}}]}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",1463}]}.
    {call,1,{f,854}}. % bad_all_size/1
    {'%',{var_info,{x,0},[{type,{t_atom,[no_match]}}]}}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",1465}]}.
    {call,1,{f,868}}. % bad_size_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,true]}}]}}.
    {test,is_eq_exact,{f,834},[{tr,{x,0},{t_atom,[error,true]}},{atom,true}]}.
    {move,{literal,<<0,1>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",1466}]}.
    {call,1,{f,868}}. % bad_size_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,true]}}]}}.
    {test,is_eq_exact,{f,833},[{tr,{x,0},{t_atom,[error,true]}},{atom,error}]}.
    {move,{literal,[a]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",1468}]}.
    {call,1,{f,871}}. % bad_size_2/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{literal,[<<1,2,3>>]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",1469}]}.
    {call,1,{f,871}}. % bad_size_2/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {'catch',{y,0},{f,826}}.
    {move,{atom,no_list},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",1470}]}.
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
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",1472}]}.
    {call,1,{f,873}}. % bad_size_3/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",1473}]}.
    {call,1,{f,873}}. % bad_size_3/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",1475}]}.
    {call,2,{f,1946}}. % '-bad_size/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {call,1,{f,1808}}. % id/1
    {test,is_eq_exact,{f,831},[{x,0},{literal,<<>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,19}.
    return.
  {label,827}.
    {line,[{scope,[17]},{location,"bs_match_SUITE.erl",1451}]}.
    {badmatch,{x,0}}.
  {label,828}.
    {line,[{scope,[15]},{location,"bs_match_SUITE.erl",1452}]}.
    {badmatch,{x,0}}.
  {label,829}.
    {line,[{scope,[5]},{location,"bs_match_SUITE.erl",1459}]}.
    {badmatch,{x,0}}.
  {label,830}.
    {line,[{scope,[3]},{location,"bs_match_SUITE.erl",1460}]}.
    {badmatch,{x,0}}.
  {label,831}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",1475}]}.
    {badmatch,{x,0}}.
  {label,832}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",1470}]}.
    {badmatch,{x,0}}.
  {label,833}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",1466}]}.
    {badmatch,{atom,true}}.
  {label,834}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",1465}]}.
    {badmatch,{atom,error}}.
  {label,835}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",1460}]}.
    {badmatch,{x,0}}.
  {label,836}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",1459}]}.
    {badmatch,{x,0}}.
  {label,837}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",1458}]}.
    {badmatch,{x,0}}.
  {label,838}.
    {line,[{scope,"\b"},{location,"bs_match_SUITE.erl",1457}]}.
    {badmatch,{x,0}}.
  {label,839}.
    {line,[{scope,"\n"},{location,"bs_match_SUITE.erl",1456}]}.
    {badmatch,{x,0}}.
  {label,840}.
    {line,[{scope,"\f"},{location,"bs_match_SUITE.erl",1455}]}.
    {badmatch,{x,0}}.
  {label,841}.
    {line,[{scope,[14]},{location,"bs_match_SUITE.erl",1452}]}.
    {badmatch,{x,0}}.
  {label,842}.
    {line,[{scope,[16]},{location,"bs_match_SUITE.erl",1451}]}.
    {badmatch,{x,0}}.
  {label,843}.
    {line,[{scope,[18]},{location,"bs_match_SUITE.erl",1450}]}.
    {badmatch,{x,0}}.
  {label,844}.
    {line,[{scope,[20]},{location,"bs_match_SUITE.erl",1449}]}.
    {badmatch,{x,0}}.
  {label,845}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",1448}]}.
    {badmatch,{x,0}}.
  {label,846}.
    {line,[{scope,[24]},{location,"bs_match_SUITE.erl",1447}]}.
    {badmatch,{x,0}}.
  {label,847}.
    {line,[{scope,[26]},{location,"bs_match_SUITE.erl",1445}]}.
    {badmatch,{x,0}}.
  {label,848}.
    {line,[{scope,[28]},{location,"bs_match_SUITE.erl",1444}]}.
    {badmatch,{x,0}}.
  {label,849}.
    {line,[{scope,[30]},{location,"bs_match_SUITE.erl",1443}]}.
    {badmatch,{x,0}}.
  {label,850}.
    {line,[{scope," "},{location,"bs_match_SUITE.erl",1442}]}.
    {badmatch,{x,0}}.
  {label,851}.
    {line,[{scope,"\""},{location,"bs_match_SUITE.erl",1441}]}.
    {badmatch,{x,0}}.
  {label,852}.
    {line,[{scope,"$"},{location,"bs_match_SUITE.erl",1440}]}.
    {badmatch,{x,0}}.


{function, bad_all_size, 1, 854}.
  {label,853}.
    {line,[{location,"bs_match_SUITE.erl",1479}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bad_all_size},1}.
  {label,854}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_match_SUITE.erl",1480}]}.
    {call,1,{f,856}}. % bad_all_size_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[no_match]}}]}}.
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1481}]}.
    {call,1,{f,858}}. % bad_all_size_2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[no_match]}}]}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1482}]}.
    {call,1,{f,860}}. % bad_all_size_3/1
    {'%',{var_info,{x,0},[{type,{t_atom,[no_match]}}]}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1483}]}.
    {call,1,{f,862}}. % bad_all_size_4/1
    {'%',{var_info,{x,0},[{type,{t_atom,[no_match]}}]}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1484}]}.
    {call,1,{f,864}}. % bad_all_size_5/1
    {'%',{var_info,{x,0},[{type,{t_atom,[no_match]}}]}}.
    {move,{y,1},{x,0}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {line,[{location,"bs_match_SUITE.erl",1485}]}.
    {call,1,{f,866}}. % bad_all_size_6/1
    {'%',{var_info,{x,0},[{type,{t_atom,[no_match]}}]}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, bad_all_size_1, 1, 856}.
  {label,855}.
    {line,[{location,"bs_match_SUITE.erl",1488}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bad_all_size_1},1}.
  {label,856}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {move,{atom,no_match},{x,0}}.
    return.


{function, bad_all_size_2, 1, 858}.
  {label,857}.
    {line,[{location,"bs_match_SUITE.erl",1494}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bad_all_size_2},1}.
  {label,858}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {move,{atom,no_match},{x,0}}.
    return.


{function, bad_all_size_3, 1, 860}.
  {label,859}.
    {line,[{location,"bs_match_SUITE.erl",1500}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bad_all_size_3},1}.
  {label,860}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {move,{atom,no_match},{x,0}}.
    return.


{function, bad_all_size_4, 1, 862}.
  {label,861}.
    {line,[{location,"bs_match_SUITE.erl",1507}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bad_all_size_4},1}.
  {label,862}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {move,{atom,no_match},{x,0}}.
    return.


{function, bad_all_size_5, 1, 864}.
  {label,863}.
    {line,[{location,"bs_match_SUITE.erl",1514}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bad_all_size_5},1}.
  {label,864}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {move,{atom,no_match},{x,0}}.
    return.


{function, bad_all_size_6, 1, 866}.
  {label,865}.
    {line,[{location,"bs_match_SUITE.erl",1523}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bad_all_size_6},1}.
  {label,866}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {move,{atom,no_match},{x,0}}.
    return.


{function, bad_size_1, 1, 868}.
  {label,867}.
    {line,[{location,"bs_match_SUITE.erl",1532}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bad_size_1},1}.
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
    {line,[{location,"bs_match_SUITE.erl",1538}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bad_size_2},1}.
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
    {call_only,1,{f,1942}}. % '-bad_size_2/1-lc$^0/1-0-'/1


{function, bad_size_3, 1, 873}.
  {label,872}.
    {line,[{location,"bs_match_SUITE.erl",1544}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bad_size_3},1}.
  {label,873}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {move,{atom,error},{x,0}}.
    return.


{function, haystack, 1, 875}.
  {label,874}.
    {line,[{location,"bs_match_SUITE.erl",1549}]}.
    {func_info,{atom,bs_match_SUITE},{atom,haystack},1}.
  {label,875}.
    {test,is_list,{f,874},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<0,0,0,0,0,0,0,0,0,0>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1550}]}.
    {call,1,{f,879}}. % haystack_1/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {test,is_eq_exact,
          {f,877},
          [{tr,{x,0},{t_bitstring,16,false}},
           {literal,<<0,0,0,0,0,0,0,0,0,0>>}]}.
    {line,[{location,"bs_match_SUITE.erl",1552}]}.
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
    {line,[{location,"bs_match_SUITE.erl",1551}]}.
    {badmatch,{x,0}}.
  {label,877}.
    {line,[{location,"bs_match_SUITE.erl",1550}]}.
    {badmatch,{x,0}}.


{function, haystack_1, 1, 879}.
  {label,878}.
    {line,[{location,"bs_match_SUITE.erl",1556}]}.
    {func_info,{atom,bs_match_SUITE},{atom,haystack_1},1}.
  {label,879}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{x,0},{x,1}}.
    {move,{literal,"\n"},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1561}]}.
    {call,2,{f,1938}}. % '-haystack_1/1-lc$^0/1-0-'/2
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, haystack_2, 1, 881}.
  {label,880}.
    {line,[{location,"bs_match_SUITE.erl",1565}]}.
    {func_info,{atom,bs_match_SUITE},{atom,haystack_2},1}.
  {label,881}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,false}}]}}.
    {move,{x,0},{x,1}}.
    {move,{literal,[{687,10},{369,20}]},{x,0}}.
    {call_only,2,{f,1934}}. % '-haystack_2/1-lc$^0/1-0-'/2


{function, fc, 1, 883}.
  {label,882}.
    {line,[{location,"bs_match_SUITE.erl",1572}]}.
    {func_info,{atom,bs_match_SUITE},{atom,fc},1}.
  {label,883}.
    {test,is_tagged_tuple,{f,882},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,882},[{x,1},2,{atom,function_clause}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, fc, 3, 885}.
  {label,884}.
    {line,[{location,"bs_match_SUITE.erl",1575}]}.
    {func_info,{atom,bs_match_SUITE},{atom,fc},3}.
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
    {test,is_tagged_tuple,{f,884},[{x,3},4,{atom,bs_match_SUITE}]}.
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
    {line,[{location,"bs_match_SUITE.erl",1583}]}.
    {func_info,{atom,bs_match_SUITE},{atom,cover_beam_bool},1}.
  {label,887}.
    {test,is_list,{f,886},[{x,0}]}.
    {allocate,0,0}.
    {move,{integer,3},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1584}]}.
    {call,2,{f,892}}. % do_cover_beam_bool/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,2},{x,1}}.
    {move,{literal,<<19>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1585}]}.
    {call,2,{f,892}}. % do_cover_beam_bool/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,890},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<19>>}]}.
    {move,{integer,1},{x,1}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1586}]}.
    {call,2,{f,892}}. % do_cover_beam_bool/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,889},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<"*">>}]}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<13,17>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1587}]}.
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
    {line,[{location,"bs_match_SUITE.erl",1586}]}.
    {badmatch,{x,0}}.
  {label,890}.
    {line,[{location,"bs_match_SUITE.erl",1585}]}.
    {badmatch,{x,0}}.


{function, do_cover_beam_bool, 2, 892}.
  {label,891}.
    {line,[{location,"bs_match_SUITE.erl",1590}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_cover_beam_bool},2}.
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
    {line,[{location,"bs_match_SUITE.erl",1600}]}.
    {func_info,{atom,bs_match_SUITE},{atom,matched_out_size},1}.
  {label,898}.
    {test,is_list,{f,897},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<"\býÞ­¾ï">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1601}]}.
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
    {line,[{location,"bs_match_SUITE.erl",1602}]}.
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
    {line,[{location,"bs_match_SUITE.erl",1603}]}.
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
    {line,[{location,"bs_match_SUITE.erl",1604}]}.
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
    {line,[{location,"bs_match_SUITE.erl",1606}]}.
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
    {line,[{location,"bs_match_SUITE.erl",1607}]}.
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
    {line,[{location,"bs_match_SUITE.erl",1608}]}.
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
    {line,[{location,"bs_match_SUITE.erl",1610}]}.
    {call,1,{f,1021}}. % mos_verify_sig/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false]}}]}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1611}]}.
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
    {line,[{location,"bs_match_SUITE.erl",1612}]}.
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
    {line,[{location,"bs_match_SUITE.erl",1613}]}.
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
    {line,[{location,"bs_match_SUITE.erl",1612}]}.
    {badmatch,{x,0}}.
  {label,901}.
    {line,[{location,"bs_match_SUITE.erl",1611}]}.
    {badmatch,{x,0}}.
  {label,902}.
    {line,[{location,"bs_match_SUITE.erl",1608}]}.
    {badmatch,{x,0}}.
  {label,903}.
    {line,[{location,"bs_match_SUITE.erl",1607}]}.
    {badmatch,{x,0}}.
  {label,904}.
    {line,[{location,"bs_match_SUITE.erl",1606}]}.
    {badmatch,{x,0}}.
  {label,905}.
    {line,[{location,"bs_match_SUITE.erl",1604}]}.
    {badmatch,{x,0}}.
  {label,906}.
    {line,[{location,"bs_match_SUITE.erl",1603}]}.
    {badmatch,{x,0}}.
  {label,907}.
    {line,[{location,"bs_match_SUITE.erl",1602}]}.
    {badmatch,{x,0}}.
  {label,908}.
    {line,[{location,"bs_match_SUITE.erl",1601}]}.
    {badmatch,{x,0}}.


{function, mos_int, 1, 910}.
  {label,909}.
    {line,[{location,"bs_match_SUITE.erl",1617}]}.
    {func_info,{atom,bs_match_SUITE},{atom,mos_int},1}.
  {label,910}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {allocate,4,1}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{x,0},{y,3}}.
    {line,[{location,"bs_match_SUITE.erl",1618}]}.
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
    {line,[{location,"bs_match_SUITE.erl",1619}]}.
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
    {line,[{location,"bs_match_SUITE.erl",1620}]}.
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
    {line,[{location,"bs_match_SUITE.erl",1622}]}.
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
    {line,[{location,"bs_match_SUITE.erl",1623}]}.
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
    {line,[{location,"bs_match_SUITE.erl",1624}]}.
    {call,1,{f,939}}. % mos_int_mixed/1
    {'%',{var_info,{x,0},[{type,{t_integer,{42,42}}}]}}.
    {test_heap,6,0}.
    {put_list,{y,3},nil,{x,0}}.
    {put_list,{y,3},{x,0},{x,0}}.
    {put_list,{y,3},{x,0},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1625}]}.
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
    {line,[{location,"bs_match_SUITE.erl",1627}]}.
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
    {line,[{location,"bs_match_SUITE.erl",1628}]}.
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
    {line,[{location,"bs_match_SUITE.erl",1630}]}.
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
    {line,[{location,"bs_match_SUITE.erl",1631}]}.
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
    {line,[{location,"bs_match_SUITE.erl",1633}]}.
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
    {line,[{location,"bs_match_SUITE.erl",1634}]}.
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
    {line,[{location,"bs_match_SUITE.erl",1636}]}.
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
    {line,[{location,"bs_match_SUITE.erl",1637}]}.
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
    {line,[{location,"bs_match_SUITE.erl",1638}]}.
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
    {line,[{location,"bs_match_SUITE.erl",1639}]}.
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
    {line,[{location,"bs_match_SUITE.erl",1640}]}.
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
    {line,[{location,"bs_match_SUITE.erl",1639}]}.
    {badmatch,{x,0}}.
  {label,913}.
    {line,[{location,"bs_match_SUITE.erl",1638}]}.
    {badmatch,{x,0}}.
  {label,914}.
    {line,[{location,"bs_match_SUITE.erl",1637}]}.
    {badmatch,{x,0}}.
  {label,915}.
    {line,[{location,"bs_match_SUITE.erl",1636}]}.
    {badmatch,{x,0}}.
  {label,916}.
    {line,[{location,"bs_match_SUITE.erl",1635}]}.
    {badmatch,{x,0}}.
  {label,917}.
    {line,[{location,"bs_match_SUITE.erl",1634}]}.
    {badmatch,{x,0}}.
  {label,918}.
    {line,[{location,"bs_match_SUITE.erl",1633}]}.
    {badmatch,{x,0}}.
  {label,919}.
    {line,[{location,"bs_match_SUITE.erl",1631}]}.
    {badmatch,{x,0}}.
  {label,920}.
    {line,[{location,"bs_match_SUITE.erl",1630}]}.
    {badmatch,{x,0}}.
  {label,921}.
    {line,[{location,"bs_match_SUITE.erl",1628}]}.
    {badmatch,{x,0}}.
  {label,922}.
    {line,[{location,"bs_match_SUITE.erl",1627}]}.
    {badmatch,{x,0}}.
  {label,923}.
    {line,[{location,"bs_match_SUITE.erl",1625}]}.
    {badmatch,{x,0}}.
  {label,924}.
    {line,[{location,"bs_match_SUITE.erl",1623}]}.
    {badmatch,{x,0}}.
  {label,925}.
    {line,[{location,"bs_match_SUITE.erl",1622}]}.
    {badmatch,{x,0}}.
  {label,926}.
    {line,[{location,"bs_match_SUITE.erl",1620}]}.
    {badmatch,{x,0}}.
  {label,927}.
    {line,[{location,"bs_match_SUITE.erl",1619}]}.
    {badmatch,{x,0}}.


{function, mos_int_plain, 1, 929}.
  {label,928}.
    {line,[{location,"bs_match_SUITE.erl",1643}]}.
    {func_info,{atom,bs_match_SUITE},{atom,mos_int_plain},1}.
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
           {field_flags,[{anno,[1643,{file,"bs_match_SUITE.erl"}]},
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
           {field_flags,[{anno,[1645,{file,"bs_match_SUITE.erl"}]},
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
    {line,[{location,"bs_match_SUITE.erl",1648}]}.
    {func_info,{atom,bs_match_SUITE},{atom,mos_int_list},1}.
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
           {field_flags,[{anno,[1648,{file,"bs_match_SUITE.erl"}]},
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
           {field_flags,[{anno,[1650,{file,"bs_match_SUITE.erl"}]},
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
    {line,[{location,"bs_match_SUITE.erl",1653}]}.
    {func_info,{atom,bs_match_SUITE},{atom,mos_int_tuple},1}.
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
           {field_flags,[{anno,[1653,{file,"bs_match_SUITE.erl"}]},
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
           {field_flags,[{anno,[1655,{file,"bs_match_SUITE.erl"}]},
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
    {line,[{location,"bs_match_SUITE.erl",1658}]}.
    {func_info,{atom,bs_match_SUITE},{atom,mos_int_mixed},1}.
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
           {field_flags,[{anno,[1658,{file,"bs_match_SUITE.erl"}]},
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
           {field_flags,[{anno,[1660,{file,"bs_match_SUITE.erl"}]},
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
           {field_flags,[{anno,[1662,{file,"bs_match_SUITE.erl"}]},
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
           {field_flags,[{anno,[1664,{file,"bs_match_SUITE.erl"}]},
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
    {line,[{location,"bs_match_SUITE.erl",1671}]}.
    {func_info,{atom,bs_match_SUITE},{atom,mos_int_pats1},2}.
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
           {field_flags,[{anno,[1671,{file,"bs_match_SUITE.erl"}]},
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
           {field_flags,[{anno,[1673,{file,"bs_match_SUITE.erl"}]},
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
    {line,[{location,"bs_match_SUITE.erl",1676}]}.
    {func_info,{atom,bs_match_SUITE},{atom,mos_int_pats2},3}.
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
           {field_flags,[{anno,[1676,{file,"bs_match_SUITE.erl"}]},
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
           {field_flags,[{anno,[1678,{file,"bs_match_SUITE.erl"}]},
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
    {line,[{location,"bs_match_SUITE.erl",1681}]}.
    {func_info,{atom,bs_match_SUITE},{atom,mos_int_pats3},2}.
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
           {field_flags,[{anno,[1681,{file,"bs_match_SUITE.erl"}]},
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
           {field_flags,[{anno,[1681,{file,"bs_match_SUITE.erl"}]},
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
           {field_flags,[{anno,[1683,{file,"bs_match_SUITE.erl"}]},
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
           {field_flags,[{anno,[1683,{file,"bs_match_SUITE.erl"}]},
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
    {line,[{location,"bs_match_SUITE.erl",1686}]}.
    {func_info,{atom,bs_match_SUITE},{atom,mos_int_map},1}.
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
           {field_flags,[{anno,[1686,{file,"bs_match_SUITE.erl"}]},
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
           {field_flags,[{anno,[1688,{file,"bs_match_SUITE.erl"}]},
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
    {line,[{location,"bs_match_SUITE.erl",1691}]}.
    {func_info,{atom,bs_match_SUITE},{atom,mos_int_map},2}.
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
           {field_flags,[{anno,[1693,{file,"bs_match_SUITE.erl"}]},
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
           {field_flags,[{anno,[1694,{file,"bs_match_SUITE.erl"}]},
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
    {line,[{location,"bs_match_SUITE.erl",1692}]}.
    {case_end,{x,1}}.


{function, mos_int_alias, 1, 962}.
  {label,961}.
    {line,[{location,"bs_match_SUITE.erl",1697}]}.
    {func_info,{atom,bs_match_SUITE},{atom,mos_int_alias},1}.
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
           {field_flags,[{anno,[1697,{file,"bs_match_SUITE.erl"}]},
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
           {field_flags,[{anno,[1699,{file,"bs_match_SUITE.erl"}]},
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
    {line,[{location,"bs_match_SUITE.erl",1702}]}.
    {func_info,{atom,bs_match_SUITE},{atom,mos_int_try},1}.
  {label,965}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_bitstring,1,false},nil}}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {'try',{y,1},{f,969}}.
    {'try',{y,0},{f,968}}.
    {line,[{location,"bs_match_SUITE.erl",1703}]}.
    {call,1,{f,1808}}. % id/1
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
           {field_flags,[{anno,[1704,{file,"bs_match_SUITE.erl"}]},
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
           {field_flags,[{anno,[1705,{file,"bs_match_SUITE.erl"}]},
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
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",1703}]}.
    {try_case_end,{x,0}}.


{function, mos_int_receive, 1, 972}.
  {label,971}.
    {line,[{location,"bs_match_SUITE.erl",1710}]}.
    {func_info,{atom,bs_match_SUITE},{atom,mos_int_receive},1}.
  {label,972}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {allocate,5,1}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3}]}}.
    {move,{x,0},{y,4}}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{y,4},{x,1}}.
    {line,[{location,"bs_match_SUITE.erl",1712}]}.
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
           {field_flags,[{anno,[1714,{file,"bs_match_SUITE.erl"}]},
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
           {field_flags,[{anno,[1715,{file,"bs_match_SUITE.erl"}]},
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
    {line,[{location,"bs_match_SUITE.erl",1718}]}.
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
           {field_flags,[{anno,[1720,{file,"bs_match_SUITE.erl"}]},
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
           {field_flags,[{anno,[1721,{file,"bs_match_SUITE.erl"}]},
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
    {line,[{location,"bs_match_SUITE.erl",1723}]}.
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
           {field_flags,[{anno,[1725,{file,"bs_match_SUITE.erl"}]},
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
           {field_flags,[{anno,[1726,{file,"bs_match_SUITE.erl"}]},
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
    {line,[{location,"bs_match_SUITE.erl",1724}]}.
    {badmatch,{x,0}}.
  {label,989}.
    {line,[{location,"bs_match_SUITE.erl",1719}]}.
    {badmatch,{x,0}}.


{function, mos_int_fun, 1, 991}.
  {label,990}.
    {line,[{location,"bs_match_SUITE.erl",1730}]}.
    {func_info,{atom,bs_match_SUITE},{atom,mos_int_fun},1}.
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
           {field_flags,[{anno,[1732,{file,"bs_match_SUITE.erl"}]},
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
           {field_flags,[{anno,[1733,{file,"bs_match_SUITE.erl"}]},
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
    {call_only,1,{f,2076}}. % '-mos_int_fun/1-inlined-0-'/1


{function, mos_int_exported, 1, 995}.
  {label,994}.
    {line,[{location,"bs_match_SUITE.erl",1737}]}.
    {func_info,{atom,bs_match_SUITE},{atom,mos_int_exported},1}.
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
           {field_flags,[{anno,[1739,{file,"bs_match_SUITE.erl"}]},
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
           {field_flags,[{anno,[1740,{file,"bs_match_SUITE.erl"}]},
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
    {line,[{location,"bs_match_SUITE.erl",1738}]}.
    {case_end,{x,0}}.


{function, mos_int_utf, 1, 999}.
  {label,998}.
    {line,[{location,"bs_match_SUITE.erl",1744}]}.
    {func_info,{atom,bs_match_SUITE},{atom,mos_int_utf},1}.
  {label,999}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {line,[{location,"bs_match_SUITE.erl",1745}]}.
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
    {call,1,{f,1808}}. % id/1
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
           {field_flags,[{anno,[1747,{file,"bs_match_SUITE.erl"}]},
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
           {field_flags,[{anno,[1747,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,is_eq_exact,
          {f,1000},
          [{tr,{x,4},{t_integer,{0,1114111}}},{integer,7777}]}.
    {test,bs_get_utf32,
          {f,1000},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {field_flags,[{anno,[1747,{file,"bs_match_SUITE.erl"}]},
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
           {field_flags,[{anno,[1748,{file,"bs_match_SUITE.erl"}]},
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
           {field_flags,[{anno,[1748,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,is_eq_exact,
          {f,1001},
          [{tr,{x,4},{t_integer,{0,1114111}}},{integer,7777}]}.
    {test,bs_get_utf32,
          {f,1001},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {field_flags,[{anno,[1748,{file,"bs_match_SUITE.erl"}]},
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
    {line,[{location,"bs_match_SUITE.erl",1746}]}.
    {case_end,{x,0}}.


{function, mos_bin, 1, 1003}.
  {label,1002}.
    {line,[{location,"bs_match_SUITE.erl",1751}]}.
    {func_info,{atom,bs_match_SUITE},{atom,mos_bin},1}.
  {label,1003}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {line,[{location,"bs_match_SUITE.erl",1752}]}.
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
    {line,[{location,"bs_match_SUITE.erl",1753}]}.
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
    {line,[{location,"bs_match_SUITE.erl",1756}]}.
    {func_info,{atom,bs_match_SUITE},{atom,mos_bin_plain},1}.
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
           {field_flags,[{anno,[1756,{file,"bs_match_SUITE.erl"}]},
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
    {line,[{location,"bs_match_SUITE.erl",1757}]}.
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
           {field_flags,[{anno,[1759,{file,"bs_match_SUITE.erl"}]},
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
    {line,[{location,"bs_match_SUITE.erl",1760}]}.
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
           {field_flags,[{anno,[1762,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_match_string,{f,1009},[{x,0},80,{string,<<"abcdefghij">>}]}.
    {bs_match,{f,1009},{x,0},{commands,[{ensure_exactly,0}]}}.
    {line,[{location,"bs_match_SUITE.erl",1763}]}.
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
    {line,[{location,"bs_match_SUITE.erl",1757}]}.
    {badmatch,{x,0}}.
  {label,1011}.
    {line,[{location,"bs_match_SUITE.erl",1760}]}.
    {badmatch,{x,0}}.
  {label,1012}.
    {line,[{location,"bs_match_SUITE.erl",1763}]}.
    {badmatch,{x,0}}.


{function, mos_bin_tuple, 1, 1014}.
  {label,1013}.
    {line,[{location,"bs_match_SUITE.erl",1766}]}.
    {func_info,{atom,bs_match_SUITE},{atom,mos_bin_tuple},1}.
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
           {field_flags,[{anno,[1766,{file,"bs_match_SUITE.erl"}]},
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
    {line,[{location,"bs_match_SUITE.erl",1767}]}.
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
           {field_flags,[{anno,[1769,{file,"bs_match_SUITE.erl"}]},
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
    {line,[{location,"bs_match_SUITE.erl",1770}]}.
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
           {field_flags,[{anno,[1772,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_match_string,{f,1013},[{x,1},80,{string,<<"abcdefghij">>}]}.
    {bs_match,{f,1013},{x,1},{commands,[{ensure_exactly,0}]}}.
    {line,[{location,"bs_match_SUITE.erl",1773}]}.
    {gc_bif,byte_size,{f,0},4,[{tr,{x,3},{t_bitstring,8,false}}],{x,0}}.
    {test,is_eq_exact,
          {f,1019},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},
           {tr,{x,2},{t_integer,{0,255}}}]}.
    {move,{x,3},{x,0}}.
    return.
  {label,1017}.
    {line,[{location,"bs_match_SUITE.erl",1767}]}.
    {badmatch,{x,0}}.
  {label,1018}.
    {line,[{location,"bs_match_SUITE.erl",1770}]}.
    {badmatch,{x,0}}.
  {label,1019}.
    {line,[{location,"bs_match_SUITE.erl",1773}]}.
    {badmatch,{x,0}}.


{function, mos_verify_sig, 1, 1021}.
  {label,1020}.
    {line,[{location,"bs_match_SUITE.erl",1776}]}.
    {func_info,{atom,bs_match_SUITE},{atom,mos_verify_sig},1}.
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
           {field_flags,[{anno,[1778,{file,"bs_match_SUITE.erl"}]},
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
           {field_flags,[{anno,[1778,{file,"bs_match_SUITE.erl"}]},
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
    {line,[{location,"bs_match_SUITE.erl",1786}]}.
    {func_info,{atom,bs_match_SUITE},{atom,follow_fail_branch},1}.
  {label,1024}.
    {allocate,0,0}.
    {move,{literal,<<0>>},{x,1}}.
    {move,{literal,<<0,1>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1787}]}.
    {call,2,{f,1028}}. % ffb_1/2
    {'%',{var_info,{x,0},[{type,{t_integer,{42,42}}}]}}.
    {move,{literal,[a]},{x,1}}.
    {move,{literal,<<0,1>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1788}]}.
    {call,2,{f,1028}}. % ffb_1/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,288230376151711743}}}]}}.
    {test,is_eq_exact,
          {f,1026},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},{integer,8}]}.
    {move,{literal,<<0>>},{x,1}}.
    {move,{integer,17},{x,2}}.
    {move,{literal,<<0,1>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1789}]}.
    {call,3,{f,1033}}. % ffb_2/3
    {'%',{var_info,{x,0},[{type,{t_integer,{42,42}}}]}}.
    {move,{literal,[a]},{x,1}}.
    {move,{integer,0},{x,2}}.
    {move,{literal,<<0,1>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1790}]}.
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
    {line,[{location,"bs_match_SUITE.erl",1788}]}.
    {badmatch,{x,0}}.


{function, ffb_1, 2, 1028}.
  {label,1027}.
    {line,[{location,"bs_match_SUITE.erl",1793}]}.
    {func_info,{atom,bs_match_SUITE},{atom,ffb_1},2}.
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
    {line,[{location,"bs_match_SUITE.erl",1802}]}.
    {gc_bif,bit_size,{f,0},1,[{tr,{x,0},{t_bs_context,8}}],{x,0}}.
    return.
  {label,1030}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {jump,{f,1027}}.
  {label,1031}.
    {line,[{location,"bs_match_SUITE.erl",1794}]}.
    {case_end,{x,1}}.


{function, ffb_2, 3, 1033}.
  {label,1032}.
    {line,[{location,"bs_match_SUITE.erl",1805}]}.
    {func_info,{atom,bs_match_SUITE},{atom,ffb_2},3}.
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
    {line,[{location,"bs_match_SUITE.erl",1808}]}.
    {gc_bif,bit_size,{f,0},1,[{tr,{x,0},{t_bs_context,8}}],{x,0}}.
    return.
  {label,1035}.
    {bs_set_position,{x,0},{x,3}}.
    {bs_get_tail,{x,0},{x,0},3}.
    {jump,{f,1032}}.
  {label,1036}.
    {line,[{location,"bs_match_SUITE.erl",1806}]}.
    {case_end,{x,1}}.


{function, no_partition, 1, 1038}.
  {label,1037}.
    {line,[{location,"bs_match_SUITE.erl",1811}]}.
    {func_info,{atom,bs_match_SUITE},{atom,no_partition},1}.
  {label,1038}.
    {allocate,0,0}.
    {move,{atom,a1},{x,1}}.
    {move,{literal,<<"string">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1812}]}.
    {call,2,{f,1044}}. % no_partition_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[one]}}]}}.
    {move,{atom,a2},{x,1}}.
    {move,{literal,<<"string">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1813}]}.
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
    {line,[{location,"bs_match_SUITE.erl",1814}]}.
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
    {line,[{location,"bs_match_SUITE.erl",1815}]}.
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
    {line,[{location,"bs_match_SUITE.erl",1816}]}.
    {call,2,{f,1044}}. % no_partition_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[three]}}]}}.
    {move,{atom,a4},{x,1}}.
    {move,{literal,[a]},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1817}]}.
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
    {line,[{location,"bs_match_SUITE.erl",1818}]}.
    {call,2,{f,1044}}. % no_partition_1/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_atom,[five]},
                                     2 => {t_atom,[a]},
                                     3 => {t_atom,[b]}}}}]}}.
    {move,{atom,a1},{x,1}}.
    {move,{literal,<<"string">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1820}]}.
    {call,2,{f,1052}}. % no_partition_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[one]}}]}}.
    {move,{atom,a2},{x,1}}.
    {move,{literal,<<"string">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1821}]}.
    {call,2,{f,1052}}. % no_partition_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[two]}}]}}.
    {move,{atom,a2},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1822}]}.
    {call,2,{f,1052}}. % no_partition_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[two]}}]}}.
    {move,{atom,a2},{x,1}}.
    {move,{atom,a},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1823}]}.
    {call,2,{f,1052}}. % no_partition_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[two]}}]}}.
    {move,{atom,a3},{x,1}}.
    {move,{atom,undefined},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1824}]}.
    {call,2,{f,1052}}. % no_partition_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[three]}}]}}.
    {move,{atom,a4},{x,1}}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1825}]}.
    {call,2,{f,1052}}. % no_partition_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[four]}}]}}.
    {move,{atom,a5},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1826}]}.
    {call,2,{f,1052}}. % no_partition_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[five]}}]}}.
    {move,{atom,a6},{x,1}}.
    {move,{float,42.0},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1827}]}.
    {call,2,{f,1052}}. % no_partition_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[six]}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1039}.
    {line,[{location,"bs_match_SUITE.erl",1817}]}.
    {badmatch,{x,0}}.
  {label,1040}.
    {line,[{location,"bs_match_SUITE.erl",1815}]}.
    {badmatch,{x,0}}.
  {label,1041}.
    {line,[{location,"bs_match_SUITE.erl",1814}]}.
    {badmatch,{x,0}}.
  {label,1042}.
    {line,[{location,"bs_match_SUITE.erl",1813}]}.
    {badmatch,{x,0}}.


{function, no_partition_1, 2, 1044}.
  {label,1043}.
    {line,[{location,"bs_match_SUITE.erl",1830}]}.
    {func_info,{atom,bs_match_SUITE},{atom,no_partition_1},2}.
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
    {line,[{location,"bs_match_SUITE.erl",1841}]}.
    {func_info,{atom,bs_match_SUITE},{atom,no_partition_2},2}.
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
    {line,[{location,"bs_match_SUITE.erl",1854}]}.
    {func_info,{atom,bs_match_SUITE},{atom,calling_a_binary},1}.
  {label,1061}.
    {test,is_list,{f,1060},[{x,0}]}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,nil,{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1855}]}.
    {call,2,{f,1067}}. % call_binary/2
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {'catch',{y,1},{f,1062}}.
    {move,nil,{x,1}}.
    {move,{literal,<<1>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1856}]}.
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
    {line,[{scope,[3,4]},{location,"bs_match_SUITE.erl",1857}]}.
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
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",1857}]}.
    {badmatch,{x,0}}.
  {label,1065}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",1856}]}.
    {badmatch,{x,0}}.


{function, call_binary, 2, 1067}.
  {label,1066}.
    {line,[{location,"bs_match_SUITE.erl",1860}]}.
    {func_info,{atom,bs_match_SUITE},{atom,call_binary},2}.
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
    {line,[{location,"bs_match_SUITE.erl",1863}]}.
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
    {line,[{location,"bs_match_SUITE.erl",1865}]}.
    {func_info,{atom,bs_match_SUITE},{atom,binary_in_map},1}.
  {label,1071}.
    {test,is_list,{f,1070},[{x,0}]}.
    {allocate,4,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3}]}}.
    {move,{literal,#{key => <<"*">>}},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1866}]}.
    {call,1,{f,1081}}. % match_binary_in_map/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,3},{f,1072}}.
    {move,{literal,#{key => 1}},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1868}]}.
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
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",1870}]}.
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
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",1872}]}.
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
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",1874}]}.
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
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",1873}]}.
    {badmatch,{x,0}}.
  {label,1077}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",1871}]}.
    {badmatch,{x,0}}.
  {label,1078}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",1869}]}.
    {badmatch,{x,0}}.
  {label,1079}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",1867}]}.
    {badmatch,{x,0}}.


{function, match_binary_in_map, 1, 1081}.
  {label,1080}.
    {line,[{location,"bs_match_SUITE.erl",1877}]}.
    {func_info,{atom,bs_match_SUITE},{atom,match_binary_in_map},1}.
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
    {line,[{location,"bs_match_SUITE.erl",1880}]}.
    {badmatch,{x,0}}.


{function, match_string_opt, 1, 1084}.
  {label,1083}.
    {line,[{location,"bs_match_SUITE.erl",1884}]}.
    {func_info,{atom,bs_match_SUITE},{atom,match_string_opt},1}.
  {label,1084}.
    {test,is_list,{f,1083},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,{<<1>>,{v,<<1,2,3>>}}},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1886}]}.
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
    {line,[{location,"bs_match_SUITE.erl",1885}]}.
    {badmatch,{x,0}}.


{function, do_match_string_opt, 1, 1087}.
  {label,1086}.
    {line,[{location,"bs_match_SUITE.erl",1889}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_match_string_opt},1}.
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
    {line,[{location,"bs_match_SUITE.erl",1892}]}.
    {func_info,{atom,bs_match_SUITE},{atom,select_on_integer},1}.
  {label,1089}.
    {test,is_list,{f,1088},[{x,0}]}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1893}]}.
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
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",1894}]}.
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
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",1896}]}.
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
    {line,[{scope,[5,6]},{location,"bs_match_SUITE.erl",1897}]}.
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
    {line,[{scope,[3,4]},{location,"bs_match_SUITE.erl",1898}]}.
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
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",1898}]}.
    {badmatch,{x,0}}.
  {label,1094}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",1897}]}.
    {badmatch,{x,0}}.
  {label,1095}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",1896}]}.
    {badmatch,{x,0}}.
  {label,1096}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",1894}]}.
    {badmatch,{x,0}}.
  {label,1097}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",1893}]}.
    {badmatch,{x,0}}.


{function, do_select_on_integer, 1, 1099}.
  {label,1098}.
    {line,[{location,"bs_match_SUITE.erl",1902}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_select_on_integer},1}.
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
    {line,[{location,"bs_match_SUITE.erl",1910}]}.
    {func_info,{atom,bs_match_SUITE},{atom,map_and_binary},1}.
  {label,1103}.
    {allocate,0,0}.
    {move,{literal,<<"10:37am">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1911}]}.
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
    {line,[{location,"bs_match_SUITE.erl",1913}]}.
    {call,1,{f,1108}}. % do_map_and_binary/1
    {'%',{var_info,{x,0},[{type,{t_tuple,2,false,#{}}}]}}.
    {test,is_tagged_tuple,
          {f,1105},
          [{tr,{x,0},{t_tuple,2,false,#{}}},2,{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,1105},[{x,1},{literal,#{time => "noon"}}]}.
    {move,{literal,#{hour => 8,min => 42}},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1915}]}.
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
    {line,[{location,"bs_match_SUITE.erl",1913}]}.
    {badmatch,{x,0}}.
  {label,1106}.
    {line,[{location,"bs_match_SUITE.erl",1911}]}.
    {badmatch,{x,0}}.


{function, do_map_and_binary, 1, 1108}.
  {label,1107}.
    {line,[{location,"bs_match_SUITE.erl",1918}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_map_and_binary},1}.
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
    {line,[{location,"bs_match_SUITE.erl",1929}]}.
    {func_info,{atom,bs_match_SUITE},{atom,unsafe_branch_caching},1}.
  {label,1113}.
    {allocate,0,0}.
    {move,{literal,<<42,1>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1930}]}.
    {call,1,{f,1120}}. % do_unsafe_branch_caching/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,1118},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<>>}]}.
    {move,{literal,<<42,2>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1931}]}.
    {call,1,{f,1120}}. % do_unsafe_branch_caching/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,1117},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<>>}]}.
    {move,{literal,<<42,3>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1932}]}.
    {call,1,{f,1120}}. % do_unsafe_branch_caching/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,1116},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<>>}]}.
    {move,{literal,<<42,3,17,18>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1933}]}.
    {call,1,{f,1120}}. % do_unsafe_branch_caching/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,1115},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<17,18>>}]}.
    {move,{literal,<<1,3,42,2>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1934}]}.
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
    {line,[{location,"bs_match_SUITE.erl",1933}]}.
    {badmatch,{x,0}}.
  {label,1116}.
    {line,[{location,"bs_match_SUITE.erl",1932}]}.
    {badmatch,{x,0}}.
  {label,1117}.
    {line,[{location,"bs_match_SUITE.erl",1931}]}.
    {badmatch,{x,0}}.
  {label,1118}.
    {line,[{location,"bs_match_SUITE.erl",1930}]}.
    {badmatch,{x,0}}.


{function, do_unsafe_branch_caching, 1, 1120}.
  {label,1119}.
    {line,[{location,"bs_match_SUITE.erl",1938}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_unsafe_branch_caching},1}.
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
    {line,[{location,"bs_match_SUITE.erl",1939}]}.
    {badmatch,{x,0}}.
  {label,1125}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,1119}}.


{function, bad_literals, 1, 1127}.
  {label,1126}.
    {line,[{location,"bs_match_SUITE.erl",1951}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bad_literals},1}.
  {label,1127}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{integer,1114116},{x,1}}.
    {move,{integer,1114108},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1959}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {test_heap,10,1}.
    {put_list,{integer,2},{x,0},{x,0}}.
    {put_list,{integer,1},{x,0},{x,0}}.
    {put_list,{integer,0},{x,0},{x,0}}.
    {put_list,{integer,-1},{x,0},{x,0}}.
    {put_list,{integer,-100},{x,0},{x,0}}.
    {call,1,{f,1930}}. % '-bad_literals/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_cons,any,nil}}]}}.
    {move,{x,0},{y,1}}.
    {move,{integer,8},{x,1}}.
    {move,{integer,-2},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1956}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{y,1},{x,1}}.
    {init_yregs,{list,[{y,1}]}}.
    {call,2,{f,1923}}. % '-bad_literals/1-lc$^1/1-1-'/2
    {'%',{var_info,{x,0},[{type,{t_cons,any,nil}}]}}.
    {move,{x,0},{y,1}}.
    {move,{integer,8},{x,1}}.
    {move,{integer,-8},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1954}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{y,1},{x,1}}.
    {init_yregs,{list,[{y,1}]}}.
    {call,2,{f,1916}}. % '-bad_literals/1-lc$^3/1-3-'/2
    {'%',{var_info,{x,0},[{type,{t_cons,any,nil}}]}}.
    {move,{x,0},{y,1}}.
    {move,{atom,bs_match_SUITE_bad_literals},{x,0}}.
    {line,[]}.
    {call_ext,1,{extfunc,merl,term,1}}.
    {test_heap,41,1}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{literal,[{tree,atom,{attr,1960,[],none},module}]},{x,0},{x,0}}.
    {put_list,{y,1},{literal,[{atom,1964,ok}]},{x,1}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,nil,{x,1},{x,1}}.
    {put_list,nil,{x,1},{x,1}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,clause},
                       {literal,{attr,1962,[],none}},
                       {x,1}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{literal,[{tree,atom,{attr,1962,[],none},f}]},{x,1},{x,1}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,function},
                       {literal,{attr,1962,[],none}},
                       {x,1}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{literal,{attribute,1961,export,[{f,0}]}},{x,1},{x,1}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,attribute},
                       {literal,{attr,1960,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},{x,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {line,[{location,"bs_match_SUITE.erl",1960}]}.
    {call_ext,1,{extfunc,merl,tree,1}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_match_SUITE.erl",1965}]}.
    {call_ext,1,{extfunc,merl,print,1}}.
    {move,{atom,bs_match_SUITE},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1966}]}.
    {call_ext,1,{extfunc,test_lib,opt_opts,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {line,[{location,"bs_match_SUITE.erl",1967}]}.
    {call_ext,2,{extfunc,merl,compile_and_load,2}}.
    {test,is_tagged_tuple,{f,1132},[{x,0},2,{atom,ok}]}.
    {line,[{location,"bs_match_SUITE.erl",1968}]}.
    {call_ext,0,{extfunc,bs_match_SUITE_bad_literals,f,0}}.
    {'catch',{y,1},{f,1128}}.
    {line,[{location,"bs_match_SUITE.erl",1970}]}.
    {call,0,{f,1134}}. % bad_literals_1/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1128}.
    {catch_end,{y,1}}.
    {test,is_eq_exact,{f,1131},[{x,0},{literal,{'EXIT',<<"*">>}}]}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",1971}]}.
    {call,1,{f,1136}}. % bad_literals_2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[no_match]}}]}}.
    {move,{integer,8},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",1973}]}.
    {call,1,{f,1808}}. % id/1
    {'catch',{y,0},{f,1129}}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",1974}]}.
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
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",1974}]}.
    {badmatch,{x,0}}.
  {label,1131}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",1970}]}.
    {badmatch,{x,0}}.
  {label,1132}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",1967}]}.
    {badmatch,{x,0}}.


{function, bad_literals_1, 0, 1134}.
  {label,1133}.
    {line,[{location,"bs_match_SUITE.erl",1977}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bad_literals_1},0}.
  {label,1134}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1981}]}.
    {call_ext_only,1,{extfunc,erlang,exit,1}}.


{function, bad_literals_2, 1, 1136}.
  {label,1135}.
    {line,[{location,"bs_match_SUITE.erl",1987}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bad_literals_2},1}.
  {label,1136}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {move,{atom,no_match},{x,0}}.
    return.


{function, signed_lit_match, 2, 1138}.
  {label,1137}.
    {line,[{location,"bs_match_SUITE.erl",1994}]}.
    {func_info,{atom,bs_match_SUITE},{atom,signed_lit_match},2}.
  {label,1138}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,3}}}]}}.
    {line,[{location,"bs_match_SUITE.erl",1995}]}.
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
           {field_flags,[{anno,[1996,{file,"bs_match_SUITE.erl"}]},
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
              {literal,[[{tree,atom,{attr,1997,[],none},signed}]]},
              {x,1}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,binary_field},
                       {literal,{attr,1997,[],none}},
                       {x,1}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,binary},
                       {literal,{attr,1997,[],none}},
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
                       {literal,{attr,1997,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,binary},
                       {literal,{attr,1997,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,match_expr},
                       {literal,{attr,1997,[],none}},
                       {x,0}]}}.
    {line,[{location,"bs_match_SUITE.erl",1997}]}.
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
                       {literal,{attr,1999,[],none}},
                       {x,1}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,binary},
                       {literal,{attr,1999,[],none}},
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
              {literal,[[{tree,atom,{attr,2001,[],none},signed}]]},
              {x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,binary_field},
                       {literal,{attr,2001,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,binary},
                       {literal,{attr,2001,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},
              {literal,[[],
                        [{call,2003,
                               {remote,2003,{atom,2003,ct},{atom,2003,fail}},
                               [{atom,2003,should_not_match}]}]]},
              {x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,clause},
                       {literal,{attr,2001,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},
              {literal,[{clause,2005,[{var,2005,'_'}],[],[{atom,2007,ok}]}]},
              {x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,case_expr},
                       {literal,{attr,1999,[],none}},
                       {x,0}]}}.
    {line,[{location,"bs_match_SUITE.erl",1999}]}.
    {call_ext_last,1,{extfunc,merl,tree,1},3}.


{function, unsigned_lit_match, 2, 1141}.
  {label,1140}.
    {line,[{location,"bs_match_SUITE.erl",2007}]}.
    {func_info,{atom,bs_match_SUITE},{atom,unsigned_lit_match},2}.
  {label,1141}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,2}}}]}}.
    {line,[{location,"bs_match_SUITE.erl",2008}]}.
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
           {field_flags,[{anno,[2009,{file,"bs_match_SUITE.erl"}]},
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
                       {literal,{attr,2010,[],none}},
                       {x,1}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,binary},
                       {literal,{attr,2010,[],none}},
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
                       {literal,{attr,2010,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,binary},
                       {literal,{attr,2010,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,match_expr},
                       {literal,{attr,2010,[],none}},
                       {x,0}]}}.
    {line,[{location,"bs_match_SUITE.erl",2010}]}.
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
                       {literal,{attr,2012,[],none}},
                       {x,1}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,binary},
                       {literal,{attr,2012,[],none}},
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
              {literal,[[{tree,atom,{attr,2014,[],none},unsigned}]]},
              {x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,binary_field},
                       {literal,{attr,2014,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,binary},
                       {literal,{attr,2014,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},
              {literal,[[],
                        [{call,2016,
                               {remote,2016,{atom,2016,ct},{atom,2016,fail}},
                               [{atom,2016,should_not_match}]}]]},
              {x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,clause},
                       {literal,{attr,2014,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},
              {literal,[{clause,2018,[{var,2018,'_'}],[],[{atom,2020,ok}]}]},
              {x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,case_expr},
                       {literal,{attr,2012,[],none}},
                       {x,0}]}}.
    {line,[{location,"bs_match_SUITE.erl",2012}]}.
    {call_ext_last,1,{extfunc,merl,tree,1},3}.


{function, unicode_match, 1, 1144}.
  {label,1143}.
    {line,[{location,"bs_match_SUITE.erl",2020}]}.
    {func_info,{atom,bs_match_SUITE},{atom,unicode_match},1}.
  {label,1144}.
    {allocate,5,1}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{x,0},{y,3}}.
    {'try',{y,4},{f,1145}}.
    {line,[{location,"bs_match_SUITE.erl",2021}]}.
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
           {field_flags,[{anno,[2022,{file,"bs_match_SUITE.erl"}]},
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
    {put_list,{x,1},{literal,[[{tree,atom,{attr,2023,[],none},utf8}]]},{x,1}}.
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
    {put_list,{y,2},nil,{x,2}}.
    {put_list,{x,2},{literal,[[{tree,atom,{attr,2023,[],none},utf8}]]},{x,2}}.
    {put_tuple2,{x,2},
                {list,[{atom,template},
                       {atom,binary_field},
                       {literal,{attr,2023,[],none}},
                       {x,2}]}}.
    {put_list,{x,2},nil,{x,2}}.
    {put_list,{x,2},nil,{x,2}}.
    {put_tuple2,{x,2},
                {list,[{atom,template},
                       {atom,binary},
                       {literal,{attr,2023,[],none}},
                       {x,2}]}}.
    {put_list,{x,2},nil,{x,2}}.
    {put_list,{x,2},nil,{x,2}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},{x,2},{x,1}}.
    {put_list,{y,1},nil,{x,2}}.
    {put_list,{x,2},{literal,[[{tree,atom,{attr,2025,[],none},utf16}]]},{x,2}}.
    {put_tuple2,{x,2},
                {list,[{atom,template},
                       {atom,binary_field},
                       {literal,{attr,2025,[],none}},
                       {x,2}]}}.
    {put_list,{x,2},nil,{x,2}}.
    {put_list,{x,2},nil,{x,2}}.
    {put_tuple2,{x,2},
                {list,[{atom,template},
                       {atom,binary},
                       {literal,{attr,2025,[],none}},
                       {x,2}]}}.
    {put_list,{y,0},nil,{x,3}}.
    {put_list,{x,3},{literal,[[{tree,atom,{attr,2025,[],none},utf16}]]},{x,3}}.
    {put_tuple2,{x,3},
                {list,[{atom,template},
                       {atom,binary_field},
                       {literal,{attr,2025,[],none}},
                       {x,3}]}}.
    {put_list,{x,3},nil,{x,3}}.
    {put_list,{x,3},nil,{x,3}}.
    {put_tuple2,{x,3},
                {list,[{atom,template},
                       {atom,binary},
                       {literal,{attr,2025,[],none}},
                       {x,3}]}}.
    {put_list,{x,3},nil,{x,3}}.
    {put_list,{x,3},nil,{x,3}}.
    {put_list,{x,2},nil,{x,2}}.
    {put_list,{x,2},{x,3},{x,2}}.
    {put_list,{y,3},nil,{x,3}}.
    {put_list,{x,3},{literal,[[{tree,atom,{attr,2027,[],none},utf32}]]},{x,3}}.
    {put_tuple2,{x,3},
                {list,[{atom,template},
                       {atom,binary_field},
                       {literal,{attr,2027,[],none}},
                       {x,3}]}}.
    {put_list,{x,3},nil,{x,3}}.
    {put_list,{x,3},nil,{x,3}}.
    {put_tuple2,{x,3},
                {list,[{atom,template},
                       {atom,binary},
                       {literal,{attr,2027,[],none}},
                       {x,3}]}}.
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
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,3},nil,{x,3}}.
    {put_list,{x,3},{x,0},{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,match_expr},
                       {literal,{attr,2027,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_tuple2,{x,2},
                {list,[{atom,template},
                       {atom,match_expr},
                       {literal,{attr,2025,[],none}},
                       {x,2}]}}.
    {put_list,{x,2},{x,0},{x,0}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,match_expr},
                       {literal,{attr,2023,[],none}},
                       {x,1}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",2023}]}.
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
    {put_list,{x,1},{literal,[[{integer,2028,32}]]},{x,1}}.
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
                       {literal,{attr,2028,[],none}},
                       {x,1}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,binary},
                       {literal,{attr,2028,[],none}},
                       {x,1}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},{literal,[[{tree,atom,{attr,2030,[],none},utf32}]]},{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,binary_field},
                       {literal,{attr,2030,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,binary},
                       {literal,{attr,2030,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},
              {literal,[[],
                        [{call,2032,
                               {remote,2032,{atom,2032,ct},{atom,2032,fail}},
                               [{atom,2032,should_not_match}]}]]},
              {x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,clause},
                       {literal,{attr,2030,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},
              {literal,[{clause,2034,[{var,2034,'_'}],[],[{atom,2036,ok}]}]},
              {x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,case_expr},
                       {literal,{attr,2028,[],none}},
                       {x,0}]}}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",2028}]}.
    {call_ext_last,1,{extfunc,merl,tree,1},1}.
  {label,1146}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.
  {label,1147}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",2021}]}.
    {try_case_end,{x,0}}.


{function, good_literals, 1, 1149}.
  {label,1148}.
    {line,[{location,"bs_match_SUITE.erl",2038}]}.
    {func_info,{atom,bs_match_SUITE},{atom,good_literals},1}.
  {label,1149}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{integer,64},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2039}]}.
    {call,1,{f,1808}}. % id/1
    {line,[{location,"bs_match_SUITE.erl",2042}]}.
    {bs_create_bin,{f,0},
                   0,1,1,
                   {x,1},
                   {list,[{atom,integer},1,1,nil,{integer,42},{x,0}]}}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {call,1,{f,1808}}. % id/1
    {test,bs_start_match3,{f,1152},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,1152},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {y,0},
           1,
           {field_flags,[{anno,[2042,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,1152},
          [{tr,{x,2},{t_integer,{0,'+inf'}}},{integer,42}]}.
    {bs_match,{f,1152},{x,1},{commands,[{ensure_exactly,0}]}}.
    {line,[{location,"bs_match_SUITE.erl",2043}]}.
    {bs_create_bin,{f,0},
                   0,0,1,
                   {x,0},
                   {list,[{atom,float},1,1,nil,{integer,42},{y,0}]}}.
    {call,1,{f,1808}}. % id/1
    {test,bs_start_match3,{f,1151},1,[{x,0}],{x,1}}.
    {test,bs_get_float2,
          {f,1151},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {y,0},
           1,
           {field_flags,[{anno,[2043,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,1151},[{tr,{x,2},{t_float,any}},{float,42.0}]}.
    {bs_match,{f,1151},{x,1},{commands,[{ensure_exactly,0}]}}.
    {trim,1,0}.
    {move,{literal,<<"Êþ¾ï">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2046}]}.
    {call,1,{f,1808}}. % id/1
    {test,is_eq_exact,{f,1150},[{x,0},{literal,<<"Êþ¾ï">>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1150}.
    {badmatch,{x,0}}.
  {label,1151}.
    {line,[{location,"bs_match_SUITE.erl",2043}]}.
    {badmatch,{x,0}}.
  {label,1152}.
    {line,[{location,"bs_match_SUITE.erl",2042}]}.
    {badmatch,{x,0}}.


{function, constant_propagation, 1, 1154}.
  {label,1153}.
    {line,[{location,"bs_match_SUITE.erl",2049}]}.
    {func_info,{atom,bs_match_SUITE},{atom,constant_propagation},1}.
  {label,1154}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,<<5>>},{x,1}}.
    {move,{atom,a},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2050}]}.
    {call,2,{f,1161}}. % constant_propagation_a/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,1159},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<5>>}]}.
    {'catch',{y,0},{f,1155}}.
    {move,{literal,<<5>>},{x,1}}.
    {move,{atom,b},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",2051}]}.
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
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",2052}]}.
    {call,1,{f,1165}}. % constant_propagation_b/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,65535}}}]}}.
    {test,is_eq_exact,
          {f,1157},
          [{tr,{x,0},{t_integer,{0,65535}}},{integer,258}]}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",2053}]}.
    {call,0,{f,1168}}. % constant_propagation_c/0
    {'%',{var_info,{x,0},
                   [{type,{t_fun,1,
                                 {'-constant_propagation_c/0-fun-0-',1},
                                 {t_integer,{0,65535}}}}]}}.
    {move,{literal,<<1,3>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",2054}]}.
    {call,1,{f,1912}}. % '-constant_propagation_c/0-fun-0-'/1
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
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",2052}]}.
    {badmatch,{x,0}}.
  {label,1158}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",2051}]}.
    {badmatch,{x,0}}.
  {label,1159}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",2050}]}.
    {badmatch,{x,0}}.


{function, constant_propagation_a, 2, 1161}.
  {label,1160}.
    {line,[{location,"bs_match_SUITE.erl",2057}]}.
    {func_info,{atom,bs_match_SUITE},{atom,constant_propagation_a},2}.
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
    {line,[{location,"bs_match_SUITE.erl",2061}]}.
    {badmatch,{x,1}}.
  {label,1163}.
    {line,[{location,"bs_match_SUITE.erl",2058}]}.
    {case_end,{atom,b}}.


{function, constant_propagation_b, 1, 1165}.
  {label,1164}.
    {line,[{location,"bs_match_SUITE.erl",2063}]}.
    {func_info,{atom,bs_match_SUITE},{atom,constant_propagation_b},1}.
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
    {line,[{location,"bs_match_SUITE.erl",2065}]}.
    {badmatch,{x,0}}.


{function, constant_propagation_c, 0, 1168}.
  {label,1167}.
    {line,[{location,"bs_match_SUITE.erl",2068}]}.
    {func_info,{atom,bs_match_SUITE},{atom,constant_propagation_c},0}.
  {label,1168}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1912},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_integer,{0,65535}}}]}}.
    return.


{function, parse_xml, 1, 1170}.
  {label,1169}.
    {line,[{location,"bs_match_SUITE.erl",2075}]}.
    {func_info,{atom,bs_match_SUITE},{atom,parse_xml},1}.
  {label,1170}.
    {allocate,0,0}.
    {move,{literal,<<"<?xmlX">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2076}]}.
    {call,1,{f,1174}}. % do_parse_xml/1
    {test,is_eq_exact,{f,1172},[{x,0},{literal,<<"<?xmlX">>}]}.
    {move,{literal,<<"<?xml ">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2077}]}.
    {call,1,{f,1174}}. % do_parse_xml/1
    {test,is_eq_exact,{f,1171},[{x,0},{literal,<<" ">>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1171}.
    {badmatch,{x,0}}.
  {label,1172}.
    {line,[{location,"bs_match_SUITE.erl",2076}]}.
    {badmatch,{x,0}}.


{function, do_parse_xml, 1, 1174}.
  {label,1173}.
    {line,[{location,"bs_match_SUITE.erl",2080}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_parse_xml},1}.
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
    {line,[{location,"bs_match_SUITE.erl",2084}]}.
    {call,1,{f,1179}}. % is_next_char_whitespace/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1175},[{x,0},{atom,true}]}.
    {bs_set_position,{y,2},{y,0}}.
    {bs_get_tail,{y,2},{x,0},0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {line,[{location,"bs_match_SUITE.erl",2088}]}.
    {call,1,{f,1808}}. % id/1
    {jump,{f,1176}}.
  {label,1175}.
    {bs_set_position,{y,2},{y,1}}.
    {bs_get_tail,{y,2},{x,0},0}.
  {label,1176}.
    {call_last,1,{f,1808},3}. % id/1
  {label,1177}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,1173}}.


{function, is_next_char_whitespace, 1, 1179}.
  {label,1178}.
    {line,[{location,"bs_match_SUITE.erl",2092}]}.
    {func_info,{atom,bs_match_SUITE},{atom,is_next_char_whitespace},1}.
  {label,1179}.
    {'%',{var_info,{x,0},[{type,{t_bs_context,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,resume},1,{x,0},{x,0}}.
    {test,bs_get_utf8,
          {f,1180},
          1,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[2092,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {bif,'=:=',{f,0},[{tr,{x,1},{t_integer,{0,1114111}}},{integer,32}],{x,0}}.
    return.
  {label,1180}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,1178}}.


{function, get_payload, 1, 1182}.
  {label,1181}.
    {line,[{location,"bs_match_SUITE.erl",2099}]}.
    {func_info,{atom,bs_match_SUITE},{atom,get_payload},1}.
  {label,1182}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,{ext_header,17,<<0,0,0,0,13,117>>}},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2100}]}.
    {call,1,{f,1187}}. % do_get_payload/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {test,is_eq_exact,
          {f,1185},
          [{tr,{x,0},{t_bitstring,16,false}},{literal,<<0,0,0,0,13,117>>}]}.
    {'catch',{y,0},{f,1183}}.
    {move,{literal,{ext_header,17,undefined}},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",2101}]}.
    {call,1,{f,1187}}. % do_get_payload/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
  {label,1183}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1184},[{x,0},2,{atom,'EXIT'}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,1184}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",2101}]}.
    {badmatch,{x,0}}.
  {label,1185}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",2100}]}.
    {badmatch,{x,0}}.


{function, do_get_payload, 1, 1187}.
  {label,1186}.
    {line,[{location,"bs_match_SUITE.erl",2104}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_get_payload},1}.
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
    {line,[{location,"bs_match_SUITE.erl",2107}]}.
    {badmatch,{x,0}}.


{function, escape, 1, 1190}.
  {label,1189}.
    {line,[{location,"bs_match_SUITE.erl",2110}]}.
    {func_info,{atom,bs_match_SUITE},{atom,escape},1}.
  {label,1190}.
    {allocate,0,0}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2111}]}.
    {call,2,{f,1197}}. % escape/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,1195},
          [{tr,{x,0},{t_integer,{0,'+inf'}}},{integer,0}]}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<128>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2112}]}.
    {call,2,{f,1197}}. % escape/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,1194},
          [{tr,{x,0},{t_integer,{0,'+inf'}}},{integer,1}]}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<128,255>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2113}]}.
    {call,2,{f,1197}}. % escape/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,1193},
          [{tr,{x,0},{t_integer,{0,'+inf'}}},{integer,2}]}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2114}]}.
    {call,2,{f,1197}}. % escape/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,1192},
          [{tr,{x,0},{t_integer,{0,'+inf'}}},{integer,42}]}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<"*\b">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2115}]}.
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
    {line,[{location,"bs_match_SUITE.erl",2114}]}.
    {badmatch,{x,0}}.
  {label,1193}.
    {line,[{location,"bs_match_SUITE.erl",2113}]}.
    {badmatch,{x,0}}.
  {label,1194}.
    {line,[{location,"bs_match_SUITE.erl",2112}]}.
    {badmatch,{x,0}}.
  {label,1195}.
    {line,[{location,"bs_match_SUITE.erl",2111}]}.
    {badmatch,{x,0}}.


{function, escape, 2, 1197}.
  {label,1196}.
    {line,[{location,"bs_match_SUITE.erl",2118}]}.
    {func_info,{atom,bs_match_SUITE},{atom,escape},2}.
  {label,1197}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,'+inf'}}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,1199},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,is_ge,{f,1198},[{tr,{x,2},{t_integer,{0,255}}},{integer,127}]}.
    {line,[{location,"bs_match_SUITE.erl",2119}]}.
    {gc_bif,'+',{f,0},2,[{tr,{x,1},{t_integer,{0,'+inf'}}},{integer,1}],{x,1}}.
    {call_only,2,{f,1197}}. % escape/2
  {label,1198}.
    {line,[{location,"bs_match_SUITE.erl",2121}]}.
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
    {line,[{location,"bs_match_SUITE.erl",2126}]}.
    {func_info,{atom,bs_match_SUITE},{atom,num_slots_different},1}.
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
    {line,[{location,"bs_match_SUITE.erl",2134}]}.
    {call,1,{f,1908}}. % '-num_slots_different/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {'catch',{y,3},{f,1202}}.
    {move,{literal,<<"default">>},{x,1}}.
    {move,{literal,<<"Remove">>},{x,2}}.
    {move,{literal,<<"d">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2136}]}.
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
    {line,[{scope,[7,8]},{location,"bs_match_SUITE.erl",2137}]}.
    {call,3,{f,1211}}. % lgettext/3
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1203}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,1208},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,1},{f,1204}}.
    {move,{literal,<<"def">>},{x,1}}.
    {move,{literal,<<"Remove">>},{x,2}}.
    {move,{literal,<<"de">>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_SUITE.erl",2138}]}.
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
    {line,[{scope,[3,4]},{location,"bs_match_SUITE.erl",2139}]}.
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
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",2139}]}.
    {badmatch,{x,0}}.
  {label,1207}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",2138}]}.
    {badmatch,{x,0}}.
  {label,1208}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",2137}]}.
    {badmatch,{x,0}}.
  {label,1209}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",2136}]}.
    {badmatch,{x,0}}.


{function, lgettext, 3, 1211}.
  {label,1210}.
    {line,[{location,"bs_match_SUITE.erl",2143}]}.
    {func_info,{atom,bs_match_SUITE},{atom,lgettext},3}.
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
    {line,[{location,"bs_match_SUITE.erl",2159}]}.
    {func_info,{atom,bs_match_SUITE},{atom,beam_bsm},1}.
  {label,1224}.
    {allocate,0,0}.
    {move,{literal,[1,0,1,1]},{x,1}}.
    {move,{literal,<<11:4>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2160}]}.
    {call,2,{f,1235}}. % check_bitstring_list/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1233},[{x,0},{atom,true}]}.
    {move,{literal,[0]},{x,1}}.
    {move,{literal,<<11:4>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2161}]}.
    {call,2,{f,1235}}. % check_bitstring_list/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1225},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,1225}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2163}]}.
    {call,1,{f,1239}}. % bsm_validate_scheme/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1232},[{x,0},{atom,true}]}.
    {move,{literal,<<5,10>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2164}]}.
    {call,1,{f,1239}}. % bsm_validate_scheme/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1231},[{x,0},{atom,true}]}.
    {move,{literal,<<5,10,11,12>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2165}]}.
    {call,1,{f,1239}}. % bsm_validate_scheme/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1226},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,1226}.
    {move,nil,{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2166}]}.
    {call,1,{f,1239}}. % bsm_validate_scheme/1
    {'%',{var_info,{x,0},[{type,{t_atom,[true]}}]}}.
    {move,{literal,[5,10]},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2167}]}.
    {call,1,{f,1239}}. % bsm_validate_scheme/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1230},[{x,0},{atom,true}]}.
    {move,{literal,[5,6,7]},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2168}]}.
    {call,1,{f,1239}}. % bsm_validate_scheme/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1227},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,1227}.
    {move,nil,{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2170}]}.
    {call,2,{f,1249}}. % bsm_must_save_and_not_save/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,1229},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<1,2,3>>}]}.
    {test_heap,{alloc,[{words,4},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1906},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_number,any}}]}}.
    {put_list,{x,0},nil,{x,1}}.
    {put_list,{x,0},{x,1},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2172}]}.
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
    {line,[{location,"bs_match_SUITE.erl",2170}]}.
    {badmatch,{x,0}}.
  {label,1230}.
    {line,[{location,"bs_match_SUITE.erl",2167}]}.
    {badmatch,{atom,false}}.
  {label,1231}.
    {line,[{location,"bs_match_SUITE.erl",2164}]}.
    {badmatch,{atom,false}}.
  {label,1232}.
    {line,[{location,"bs_match_SUITE.erl",2163}]}.
    {badmatch,{atom,false}}.
  {label,1233}.
    {line,[{location,"bs_match_SUITE.erl",2160}]}.
    {badmatch,{atom,false}}.


{function, check_bitstring_list, 2, 1235}.
  {label,1234}.
    {line,[{location,"bs_match_SUITE.erl",2176}]}.
    {func_info,{atom,bs_match_SUITE},{atom,check_bitstring_list},2}.
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
    {line,[{location,"bs_match_SUITE.erl",2183}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bsm_validate_scheme},1}.
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
    {line,[{location,"bs_match_SUITE.erl",2191}]}.
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
    {line,[{location,"bs_match_SUITE.erl",2185}]}.
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
    {line,[{location,"bs_match_SUITE.erl",2196}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bsm_is_scheme},1}.
  {label,1247}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {line,[{location,"bs_match_SUITE.erl",2197}]}.
    {gc_bif,'rem',{f,0},1,[{tr,{x,0},{t_integer,{0,255}}},{integer,5}],{x,0}}.
    {bif,'=:=',{f,0},[{tr,{x,0},{t_integer,{0,4}}},{integer,0}],{x,0}}.
    return.


{function, bsm_must_save_and_not_save, 2, 1249}.
  {label,1248}.
    {line,[{location,"bs_match_SUITE.erl",2200}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bsm_must_save_and_not_save},2}.
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
    {line,[{location,"bs_match_SUITE.erl",2203}]}.
    {call,1,{f,1906}}. % '-beam_bsm/1-fun-0-'/1
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
    {line,[{location,"bs_match_SUITE.erl",2207}]}.
    {func_info,{atom,bs_match_SUITE},{atom,guard},1}.
  {label,1252}.
    {allocate,0,0}.
    {move,{literal,{a,b}},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2208}]}.
    {call,1,{f,1808}}. % id/1
    {move,{literal,{1,2,3}},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2209}]}.
    {call,2,{f,1254}}. % guard_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,#{}},{x,1}}.
    {move,{literal,<<"*">>},{x,0}}.
    {call_last,2,{f,1257},0}. % guard_2/2


{function, guard_1, 2, 1254}.
  {label,1253}.
    {line,[{location,"bs_match_SUITE.erl",2214}]}.
    {func_info,{atom,bs_match_SUITE},{atom,guard_1},2}.
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
    {line,[{location,"bs_match_SUITE.erl",2218}]}.
    {func_info,{atom,bs_match_SUITE},{atom,guard_2},2}.
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
    {line,[{location,"bs_match_SUITE.erl",2221}]}.
    {func_info,{atom,bs_match_SUITE},{atom,is_ascii},1}.
  {label,1260}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2222}]}.
    {call,1,{f,1269}}. % do_is_ascii/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1267},[{x,0},{atom,true}]}.
    {move,{literal,<<"string">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",2223}]}.
    {call,1,{f,1269}}. % do_is_ascii/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1266},[{x,0},{atom,true}]}.
    {move,{literal,<<208,128>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",2224}]}.
    {call,1,{f,1269}}. % do_is_ascii/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1261},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,1261}.
    {'catch',{y,1},{f,1262}}.
    {move,{literal,<<65,0:3>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",2225}]}.
    {call,1,{f,1269}}. % do_is_ascii/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
  {label,1262}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,1265},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1265},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,0},{f,1263}}.
    {move,{literal,<<128,0:3>>},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_SUITE.erl",2226}]}.
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
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",2226}]}.
    {badmatch,{x,0}}.
  {label,1265}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",2225}]}.
    {badmatch,{x,0}}.
  {label,1266}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",2223}]}.
    {badmatch,{atom,false}}.
  {label,1267}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",2222}]}.
    {badmatch,{atom,false}}.


{function, do_is_ascii, 1, 1269}.
  {label,1268}.
    {line,[{location,"bs_match_SUITE.erl",2229}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_is_ascii},1}.
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
    {line,[{location,"bs_match_SUITE.erl",2238}]}.
    {func_info,{atom,bs_match_SUITE},{atom,non_opt_eq},1}.
  {label,1274}.
    {allocate,0,0}.
    {move,{literal,<<>>},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2239}]}.
    {call,2,{f,1278}}. % non_opt_eq/2
    {'%',{var_info,{x,0},[{type,{t_atom,[true]}}]}}.
    {move,{literal,<<"a">>},{x,1}}.
    {move,{literal,"a"},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2240}]}.
    {call,2,{f,1278}}. % non_opt_eq/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1276},[{x,0},{atom,true}]}.
    {move,{literal,<<"b">>},{x,1}}.
    {move,{literal,"a"},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2241}]}.
    {call,2,{f,1278}}. % non_opt_eq/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1275},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,1275}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1276}.
    {line,[{location,"bs_match_SUITE.erl",2240}]}.
    {badmatch,{atom,false}}.


{function, non_opt_eq, 2, 1278}.
  {label,1277}.
    {line,[{location,"bs_match_SUITE.erl",2247}]}.
    {func_info,{atom,bs_match_SUITE},{atom,non_opt_eq},2}.
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
    {line,[{location,"bs_match_SUITE.erl",2256}]}.
    {func_info,{atom,bs_match_SUITE},{atom,erl_689},1}.
  {label,1283}.
    {allocate,0,0}.
    {move,{atom,bs_match_SUITE},{x,1}}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2257}]}.
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
    {move,{atom,bs_match_SUITE},{x,1}}.
    {move,{literal,<<4,226,7,8,7>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2258}]}.
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
    {move,{atom,bs_match_SUITE},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2259}]}.
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
    {move,{atom,bs_match_SUITE},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2260}]}.
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
    {line,[{location,"bs_match_SUITE.erl",2259}]}.
    {badmatch,{x,0}}.
  {label,1286}.
    {line,[{location,"bs_match_SUITE.erl",2258}]}.
    {badmatch,{x,0}}.
  {label,1287}.
    {line,[{location,"bs_match_SUITE.erl",2257}]}.
    {badmatch,{x,0}}.


{function, do_erl_689_1, 2, 1289}.
  {label,1288}.
    {line,[{location,"bs_match_SUITE.erl",2263}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_erl_689_1},2}.
  {label,1289}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[bs_match_SUITE]}}]}}.
    {allocate,1,2}.
    {move,{x,0},{y,0}}.
    {line,[{location,"bs_match_SUITE.erl",2264}]}.
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
    {move,{atom,bs_match_SUITE},{x,1}}.
    {line,[{location,"bs_match_SUITE.erl",2265}]}.
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
    {line,[{location,"bs_match_SUITE.erl",2267}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_erl_689_2},2}.
  {label,1292}.
    {'%',{var_info,{x,0},[{type,{t_atom,[bs_match_SUITE]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {line,[{location,"bs_match_SUITE.erl",2268}]}.
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
    {move,{atom,bs_match_SUITE},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2269}]}.
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
    {line,[{location,"bs_match_SUITE.erl",2271}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_erl_689_1a},2}.
  {label,1295}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[bs_match_SUITE]}}]}}.
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
    {line,[{location,"bs_match_SUITE.erl",2272}]}.
    {case_end,{x,0}}.
  {label,1298}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {jump,{f,1294}}.


{function, do_erl_689_1b, 2, 1300}.
  {label,1299}.
    {line,[{location,"bs_match_SUITE.erl",2281}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_erl_689_1b},2}.
  {label,1300}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[bs_match_SUITE]}}]}}.
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
    {line,[{location,"bs_match_SUITE.erl",2286}]}.
    {call,1,{f,1808}}. % id/1
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
    {line,[{location,"bs_match_SUITE.erl",2289}]}.
    {call,1,{f,1808}}. % id/1
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
    {line,[{location,"bs_match_SUITE.erl",2282}]}.
    {case_end,{x,0}}.
  {label,1303}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {jump,{f,1299}}.


{function, do_erl_689_2a, 2, 1305}.
  {label,1304}.
    {line,[{location,"bs_match_SUITE.erl",2293}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_erl_689_2a},2}.
  {label,1305}.
    {'%',{var_info,{x,0},[{type,{t_atom,[bs_match_SUITE]}}]}}.
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
    {line,[{location,"bs_match_SUITE.erl",2294}]}.
    {case_end,{x,0}}.
  {label,1308}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_get_tail,{x,1},{x,1},2}.
    {jump,{f,1304}}.


{function, do_erl_689_2b, 2, 1310}.
  {label,1309}.
    {line,[{location,"bs_match_SUITE.erl",2303}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_erl_689_2b},2}.
  {label,1310}.
    {'%',{var_info,{x,0},[{type,{t_atom,[bs_match_SUITE]}}]}}.
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
    {line,[{location,"bs_match_SUITE.erl",2308}]}.
    {call,1,{f,1808}}. % id/1
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
    {line,[{location,"bs_match_SUITE.erl",2311}]}.
    {call,1,{f,1808}}. % id/1
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
    {line,[{location,"bs_match_SUITE.erl",2304}]}.
    {case_end,{x,0}}.
  {label,1313}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_get_tail,{x,1},{x,1},2}.
    {jump,{f,1309}}.


{function, bs_start_match2_defs, 1, 1315}.
  {label,1314}.
    {line,[{location,"bs_match_SUITE.erl",2317}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bs_start_match2_defs},1}.
  {label,1315}.
    {allocate,0,0}.
    {move,{literal,<<"hello">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2318}]}.
    {call,1,{f,1319}}. % api_url/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,1,true,#{1 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
          {f,1317},
          [{tr,{x,0},{t_tuple,1,true,#{1 => {t_bitstring,8,false}}}},
           {literal,{<<"http://127.0.0.1:1234/vsaas/hello">>}}]}.
    {move,{literal,{https,"hello"}},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2319}]}.
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
    {line,[{location,"bs_match_SUITE.erl",2318}]}.
    {badmatch,{x,0}}.


{function, api_url, 1, 1319}.
  {label,1318}.
    {line,[{location,"bs_match_SUITE.erl",2321}]}.
    {func_info,{atom,bs_match_SUITE},{atom,api_url},1}.
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
    {line,[{location,"bs_match_SUITE.erl",2323}]}.
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
    {line,[{location,"bs_match_SUITE.erl",2324}]}.
    {call_ext,2,{extfunc,erlang,'++',2}}.
    {test_heap,2,1}.
    {put_tuple2,{x,0},{list,[{x,0}]}}.
    {deallocate,0}.
    return.


{function, check, 2, 1322}.
  {label,1321}.
    {line,[{location,"bs_match_SUITE.erl",2327}]}.
    {func_info,{atom,bs_match_SUITE},{atom,check},2}.
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
    {line,[{location,"bs_match_SUITE.erl",2328}]}.
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
    {line,[{location,"bs_match_SUITE.erl",2332}]}.
    {func_info,{atom,bs_match_SUITE},{atom,expression_before_match},1}.
  {label,1325}.
    {test,is_list,{f,1324},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<0,1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2333}]}.
    {call,1,{f,1808}}. % id/1
    {test,bs_start_match3,{f,1327},1,[{x,0}],{x,1}}.
    {bs_match,{f,1327},
              {x,1},
              {commands,[{ensure_at_least,8,8},
                         {skip,8},
                         {get_tail,2,8,{x,0}}]}}.
    {line,[{location,"bs_match_SUITE.erl",2334}]}.
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
    {line,[{location,"bs_match_SUITE.erl",2333}]}.
    {badmatch,{x,0}}.


{function, expression_before_match_1, 1, 1329}.
  {label,1328}.
    {line,[{location,"bs_match_SUITE.erl",2337}]}.
    {func_info,{atom,bs_match_SUITE},{atom,expression_before_match_1},1}.
  {label,1329}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2338}]}.
    {call,1,{f,1808}}. % id/1
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
    {line,[{location,"bs_match_SUITE.erl",2339}]}.
    {case_end,{y,0}}.


{function, restore_on_call, 1, 1333}.
  {label,1332}.
    {line,[{location,"bs_match_SUITE.erl",2345}]}.
    {func_info,{atom,bs_match_SUITE},{atom,restore_on_call},1}.
  {label,1333}.
    {test,is_list,{f,1332},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<0,1,2>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2346}]}.
    {call,1,{f,1336}}. % restore_on_call_plain/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<0,120>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2347}]}.
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
    {line,[{location,"bs_match_SUITE.erl",2350}]}.
    {func_info,{atom,bs_match_SUITE},{atom,restore_on_call_plain},1}.
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
    {line,[{location,"bs_match_SUITE.erl",2351}]}.
    {call,1,{f,1341}}. % restore_on_call_plain_1/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,1339},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<2>>}]}.
    {bs_set_position,{y,1},{y,0}}.
    {move,{y,1},{x,0}}.
    {trim,2,0}.
    {line,[{location,"bs_match_SUITE.erl",2353}]}.
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
    {line,[{location,"bs_match_SUITE.erl",2351}]}.
    {badmatch,{x,0}}.


{function, restore_on_call_plain_1, 1, 1341}.
  {label,1340}.
    {line,[{location,"bs_match_SUITE.erl",2356}]}.
    {func_info,{atom,bs_match_SUITE},{atom,restore_on_call_plain_1},1}.
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
    {line,[{location,"bs_match_SUITE.erl",2361}]}.
    {func_info,{atom,bs_match_SUITE},{atom,restore_on_call_match},1}.
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
    {line,[{location,"bs_match_SUITE.erl",2362}]}.
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
    {line,[{location,"bs_match_SUITE.erl",2371}]}.
    {func_info,{atom,bs_match_SUITE},{atom,skip_until_zero},1}.
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
    {line,[{location,"bs_match_SUITE.erl",2379}]}.
    {func_info,{atom,bs_match_SUITE},{atom,restore_after_catch},1}.
  {label,1352}.
    {test,is_list,{f,1351},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<0,1>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2380}]}.
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
    {line,[{location,"bs_match_SUITE.erl",2383}]}.
    {func_info,{atom,bs_match_SUITE},{atom,restore_after_catch_1},1}.
  {label,1355}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,16,false}},accepts_match_context]}}.
    {allocate,3,1}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{y,1}}.
    {bs_get_position,{y,1},{y,0},0}.
    {'try',{y,2},{f,1356}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2384}]}.
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
    {line,[{location,"bs_match_SUITE.erl",2392}]}.
    {func_info,{atom,bs_match_SUITE},{atom,throw_after_byte},1}.
  {label,1359}.
    {'%',{var_info,{x,0},[{type,{t_bs_context,16}},accepts_match_context]}}.
    {bs_start_match4,{atom,resume},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,1360},{x,0},{commands,[{ensure_at_least,8,1},{skip,8}]}}.
    {move,{atom,away},{x,1}}.
    {move,nil,{x,2}}.
    {move,{atom,throw},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2393}]}.
    {call_ext_only,3,{extfunc,erlang,raise,3}}.
  {label,1360}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,1358}}.


{function, matches_on_parameter, 1, 1362}.
  {label,1361}.
    {line,[{location,"bs_match_SUITE.erl",2395}]}.
    {func_info,{atom,bs_match_SUITE},{atom,matches_on_parameter},1}.
  {label,1362}.
    {test,is_list,{f,1361},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,<<"gurka">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2397}]}.
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
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",2398}]}.
    {call,2,{f,1371}}. % matches_on_parameter_2/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1363}.
    {catch_end,{y,0}}.
    {test,is_eq_exact,{f,1364},[{x,0},{atom,ok}]}.
    {deallocate,1}.
    return.
  {label,1364}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",2398}]}.
    {badmatch,{x,0}}.
  {label,1365}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",2397}]}.
    {badmatch,{x,0}}.


{function, matches_on_parameter_1, 1, 1367}.
  {label,1366}.
    {line,[{location,"bs_match_SUITE.erl",2400}]}.
    {func_info,{atom,bs_match_SUITE},{atom,matches_on_parameter_1},1}.
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
    {test,bs_skip_bits2,
          {f,1368},
          [{x,0},
           {integer,16},
           1,
           {field_flags,[{anno,[2402,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_match,{f,1368},
              {x,0},
              {commands,[{ensure_at_least,16,1},
                         {'=:=',nil,16,29291},
                         {get_tail,3,1,{x,0}}]}}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{x,2},{x,0}]}}.
    return.
  {label,1368}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {line,[{location,"bs_match_SUITE.erl",2402}]}.
    {badmatch,{x,0}}.
  {label,1369}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {line,[{location,"bs_match_SUITE.erl",2401}]}.
    {badmatch,{x,0}}.


{function, matches_on_parameter_2, 2, 1371}.
  {label,1370}.
    {line,[{location,"bs_match_SUITE.erl",2405}]}.
    {func_info,{atom,bs_match_SUITE},{atom,matches_on_parameter_2},2}.
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
           {field_flags,[{anno,[2406,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_match,{f,1373},{x,0},{commands,[{ensure_at_least,1,1},{skip,1}]}}.
    {line,[{location,"bs_match_SUITE.erl",2407}]}.
    {gc_bif,bit_size,{f,0},3,[{tr,{x,0},{t_bs_context,1}}],{x,3}}.
    {test,is_eq_exact,
          {f,1372},
          [{tr,{x,3},{t_integer,{0,288230376151711743}}},{integer,0}]}.
    {move,{atom,ok},{x,1}}.
    {move,nil,{x,2}}.
    {move,{atom,throw},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2408}]}.
    {call_ext_only,3,{extfunc,erlang,raise,3}}.
  {label,1372}.
    {line,[{location,"bs_match_SUITE.erl",2409}]}.
    {gc_bif,'+',{f,0},3,[{tr,{x,1},{t_integer,{0,'+inf'}}},{integer,1}],{x,1}}.
    {bs_set_position,{x,0},{x,2}}.
    {call_only,2,{f,1371}}. % matches_on_parameter_2/2
  {label,1373}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {line,[{location,"bs_match_SUITE.erl",2406}]}.
    {badmatch,{x,0}}.


{function, big_positions, 1, 1375}.
  {label,1374}.
    {line,[{location,"bs_match_SUITE.erl",2412}]}.
    {func_info,{atom,bs_match_SUITE},{atom,big_positions},1}.
  {label,1375}.
    {test,is_list,{f,1374},[{x,0}]}.
    {line,[{location,"bs_match_SUITE.erl",2416}]}.
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
    {line,[{location,"bs_match_SUITE.erl",2417}]}.
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
    {line,[{location,"bs_match_SUITE.erl",2419}]}.
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
    {line,[{location,"bs_match_SUITE.erl",2420}]}.
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
    {line,[{location,"bs_match_SUITE.erl",2421}]}.
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
    {line,[{location,"bs_match_SUITE.erl",2422}]}.
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
    {line,[{location,"bs_match_SUITE.erl",2421}]}.
    {badmatch,{x,0}}.
  {label,1378}.
    {line,[{location,"bs_match_SUITE.erl",2420}]}.
    {badmatch,{x,0}}.
  {label,1379}.
    {line,[{location,"bs_match_SUITE.erl",2419}]}.
    {badmatch,{x,0}}.


{function, bp_start_match, 1, 1381}.
  {label,1380}.
    {line,[{location,"bs_match_SUITE.erl",2430}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bp_start_match},1}.
  {label,1381}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {test,bs_skip_bits2,
          {f,1382},
          [{x,0},
           {integer,134217728},
           1,
           {field_flags,[{anno,[2430,{file,"bs_match_SUITE.erl"}]},
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
    {line,[{location,"bs_match_SUITE.erl",2437}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bp_getpos},1}.
  {label,1386}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {test,bs_skip_bits2,
          {f,1387},
          [{x,0},
           {integer,134217720},
           1,
           {field_flags,[{anno,[2437,{file,"bs_match_SUITE.erl"}]},
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
    {line,[{location,"bs_match_SUITE.erl",2441}]}.
    {func_info,{atom,bs_match_SUITE},{atom,matching_meets_apply},1}.
  {label,1391}.
    {allocate,0,0}.
    {move,nil,{x,1}}.
    {move,{literal,<<"/abc">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2442}]}.
    {call,2,{f,1396}}. % do_matching_meets_apply/2
    {test,is_eq_exact,{f,1394},[{x,0},{literal,<<"abc">>}]}.
    {move,{literal,{erlang,-42}},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2443}]}.
    {call,2,{f,1396}}. % do_matching_meets_apply/2
    {test,is_eq_exact,{f,1393},[{x,0},{integer,42}]}.
    {move,{literal,{erlang,-100}},{x,1}}.
    {move,{atom,no_binary},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2444}]}.
    {call,2,{f,1396}}. % do_matching_meets_apply/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,100}}}]}}.
    {test,is_eq_exact,{f,1392},[{tr,{x,0},{t_integer,{0,100}}},{integer,100}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1392}.
    {badmatch,{x,0}}.
  {label,1393}.
    {line,[{location,"bs_match_SUITE.erl",2443}]}.
    {badmatch,{x,0}}.
  {label,1394}.
    {line,[{location,"bs_match_SUITE.erl",2442}]}.
    {badmatch,{x,0}}.


{function, do_matching_meets_apply, 2, 1396}.
  {label,1395}.
    {line,[{location,"bs_match_SUITE.erl",2447}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_matching_meets_apply},2}.
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
    {call_only,1,{f,1808}}. % id/1
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
    {line,[{location,"bs_match_SUITE.erl",2458}]}.
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
    {line,[{location,"bs_match_SUITE.erl",2462}]}.
    {func_info,{atom,bs_match_SUITE},{atom,exceptions_after_match_failure},1}.
  {label,1402}.
    {allocate,1,0}.
    {'catch',{y,0},{f,1403}}.
    {move,{atom,atom},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2463}]}.
    {call,1,{f,1406}}. % do_exceptions_after_match_failure/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1403}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1404},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1404},[{x,1},2,{atom,badarith}]}.
    {move,{literal,<<0,1,103,117,114,107,97>>},{x,0}}.
    {line,[{scope,[1,2]},{location,"bs_match_SUITE.erl",2464}]}.
    {call,1,{f,1406}}. % do_exceptions_after_match_failure/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{float,2.0},{x,0}}.
    {call_last,1,{f,1406},1}. % do_exceptions_after_match_failure/1
  {label,1404}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",2463}]}.
    {badmatch,{x,0}}.


{function, do_exceptions_after_match_failure, 1, 1406}.
  {label,1405}.
    {line,[{location,"bs_match_SUITE.erl",2467}]}.
    {func_info,{atom,bs_match_SUITE},
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
    {line,[{location,"bs_match_SUITE.erl",2470}]}.
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
    {line,[{location,"bs_match_SUITE.erl",2475}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bad_phi_paths},1}.
  {label,1410}.
    {allocate,0,0}.
    {move,{literal,<<"gurka">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2476}]}.
    {call,1,{f,1808}}. % id/1
    {call,1,{f,1413}}. % bad_phi_paths_1/1
    {test,is_eq_exact,{f,1411},[{x,0},{literal,<<"gurka">>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1411}.
    {badmatch,{x,0}}.


{function, bad_phi_paths_1, 1, 1413}.
  {label,1412}.
    {line,[{location,"bs_match_SUITE.erl",2479}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bad_phi_paths_1},1}.
  {label,1413}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1415},1,[{x,0}],{x,1}}.
    {bs_match,{f,1414},
              {x,1},
              {commands,[{ensure_at_least,0,8},{get_tail,2,1,{x,0}}]}}.
    {call_only,1,{f,1808}}. % id/1
  {label,1414}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_SUITE.erl",2480}]}.
    {case_end,{x,0}}.
  {label,1415}.
    {test,is_map,{f,1416},[{x,0}]}.
    {allocate,0,1}.
    {line,[{location,"bs_match_SUITE.erl",2482}]}.
    {call,1,{f,1808}}. % id/1
    {call_last,1,{f,1808},0}. % id/1
  {label,1416}.
    {line,[{location,"bs_match_SUITE.erl",2480}]}.
    {case_end,{x,0}}.


{function, combine_empty_segments, 1, 1418}.
  {label,1417}.
    {line,[{location,"bs_match_SUITE.erl",2486}]}.
    {func_info,{atom,bs_match_SUITE},{atom,combine_empty_segments},1}.
  {label,1418}.
    {allocate,0,0}.
    {move,{literal,<<0,1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2487}]}.
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
    {line,[{location,"bs_match_SUITE.erl",2490}]}.
    {func_info,{atom,bs_match_SUITE},{atom,combine_empty_segments_1},1}.
  {label,1421}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,32,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_tail,{x,0},{x,0},1}.
    return.


{function, hangs_forever, 1, 1423}.
  {label,1422}.
    {line,[{location,"bs_match_SUITE.erl",2497}]}.
    {func_info,{atom,bs_match_SUITE},{atom,hangs_forever},1}.
  {label,1423}.
    {allocate_heap,0,{alloc,[{words,1},{floats,0},{funs,1}]},1}.
    {make_fun3,{f,1904},0,0,{x,0},{list,[{x,0}]}}.
    {'%',{var_info,{x,0},[{fun_type,none}]}}.
    {line,[{location,"bs_match_SUITE.erl",2498}]}.
    {call,1,{f,1808}}. % id/1
    {test,is_function,{f,1424},[{x,0}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1424}.
    {badmatch,{atom,false}}.


{function, hangs_forever_1, 1, 1426}.
  {label,1425}.
    {line,[{location,"bs_match_SUITE.erl",2501}]}.
    {func_info,{atom,bs_match_SUITE},{atom,hangs_forever_1},1}.
  {label,1426}.
    {call_only,1,{f,1426}}. % hangs_forever_1/1


{function, bs_saved_position_units, 1, 1428}.
  {label,1427}.
    {line,[{location,"bs_match_SUITE.erl",2508}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bs_saved_position_units},1}.
  {label,1428}.
    {test,is_list,{f,1427},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<0,1,2,3,4,5,6,7,8,9>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2509}]}.
    {call,1,{f,1808}}. % id/1
    {call,1,{f,1432}}. % bspu_1/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {test,is_eq_exact,
          {f,1430},
          [{tr,{x,0},{t_list,{t_bitstring,8,false},nil}},
           {literal,[<<0,1,2,3,4>>,<<5,6,7,8,9>>]}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2510}]}.
    {call,1,{f,1808}}. % id/1
    {call,1,{f,1432}}. % bspu_1/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {test,is_nil,{f,1429},[{tr,{x,0},{t_list,{t_bitstring,8,false},nil}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1429}.
    {badmatch,{x,0}}.
  {label,1430}.
    {line,[{location,"bs_match_SUITE.erl",2509}]}.
    {badmatch,{x,0}}.


{function, bspu_1, 1, 1432}.
  {label,1431}.
    {line,[{location,"bs_match_SUITE.erl",2514}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bspu_1},1}.
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
    {call_only,1,{f,1901}}. % '-bspu_1/1-lc$^0/1-0-'/1
  {label,1433}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,1431}}.


{function, empty_matches, 1, 1435}.
  {label,1434}.
    {line,[{location,"bs_match_SUITE.erl",2518}]}.
    {func_info,{atom,bs_match_SUITE},{atom,empty_matches},1}.
  {label,1435}.
    {test,is_list,{f,1434},[{x,0}]}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{literal,<<1,2,3,4:4>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2519}]}.
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
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",2520}]}.
    {call,1,{f,1452}}. % em_1/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,#{2 => {t_bitstring,4,false}}}}]}}.
    {test,is_eq_exact,
          {f,1449},
          [{tr,{x,0},{t_tuple,2,true,#{2 => {t_bitstring,4,false}}}},
           {literal,{<<>>,<<1,2,3>>}}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",2521}]}.
    {call,1,{f,1452}}. % em_1/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,#{2 => {t_bitstring,4,false}}}}]}}.
    {test,is_eq_exact,
          {f,1448},
          [{tr,{x,0},{t_tuple,2,true,#{2 => {t_bitstring,4,false}}}},
           {literal,{<<>>,<<>>}}]}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",2523}]}.
    {call,1,{f,1808}}. % id/1
    {call,1,{f,1456}}. % em_2/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,true}}]}}.
    {test,is_eq_exact,
          {f,1447},
          [{tr,{x,0},{t_bitstring,16,true}},{literal,<<0,1,0,2,0,3>>}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",2524}]}.
    {call,1,{f,1808}}. % id/1
    {call,1,{f,1456}}. % em_2/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,true}}]}}.
    {test,is_eq_exact,
          {f,1446},
          [{tr,{x,0},{t_bitstring,16,true}},{literal,<<>>}]}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",2526}]}.
    {call,1,{f,1808}}. % id/1
    {call,1,{f,1458}}. % em_3/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {test,is_eq_exact,
          {f,1445},
          [{tr,{x,0},{t_bitstring,1,false}},{literal,<<1,2,3>>}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",2527}]}.
    {call,1,{f,1808}}. % id/1
    {call,1,{f,1458}}. % em_3/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {test,is_eq_exact,
          {f,1444},
          [{tr,{x,0},{t_bitstring,1,false}},{literal,<<>>}]}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",2529}]}.
    {call,1,{f,1808}}. % id/1
    {test,bs_start_match3,{f,1443},1,[{x,0}],{x,1}}.
    {bs_match,{f,1443},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",2530}]}.
    {call,1,{f,1808}}. % id/1
    {test,is_eq_exact,{f,1442},[{x,0},{integer,0}]}.
    {move,{literal,<<>>},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",2532}]}.
    {call,2,{f,1463}}. % em_4/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,2},{f,1436}}.
    {move,{literal,<<0:1>>},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",2533}]}.
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
    {line,[{scope,[5,6]},{location,"bs_match_SUITE.erl",2534}]}.
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
    {line,[{scope,[3,4]},{location,"bs_match_SUITE.erl",2535}]}.
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
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",2535}]}.
    {badmatch,{x,0}}.
  {label,1440}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",2534}]}.
    {badmatch,{x,0}}.
  {label,1441}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",2533}]}.
    {badmatch,{x,0}}.
  {label,1442}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",2530}]}.
    {badmatch,{x,0}}.
  {label,1443}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",2529}]}.
    {badmatch,{x,0}}.
  {label,1444}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",2527}]}.
    {badmatch,{x,0}}.
  {label,1445}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",2526}]}.
    {badmatch,{x,0}}.
  {label,1446}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",2524}]}.
    {badmatch,{x,0}}.
  {label,1447}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",2523}]}.
    {badmatch,{x,0}}.
  {label,1448}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",2521}]}.
    {badmatch,{x,0}}.
  {label,1449}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",2520}]}.
    {badmatch,{x,0}}.
  {label,1450}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",2519}]}.
    {badmatch,{x,0}}.


{function, em_1, 1, 1452}.
  {label,1451}.
    {line,[{location,"bs_match_SUITE.erl",2539}]}.
    {func_info,{atom,bs_match_SUITE},{atom,em_1},1}.
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
    {line,[{location,"bs_match_SUITE.erl",2542}]}.
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
    {line,[{location,"bs_match_SUITE.erl",2541}]}.
    {badmatch,{x,0}}.
  {label,1454}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{x,0},{y,0}]}}.
    {line,[{location,"bs_match_SUITE.erl",2540}]}.
    {badmatch,{x,0}}.


{function, em_2, 1, 1456}.
  {label,1455}.
    {line,[{location,"bs_match_SUITE.erl",2547}]}.
    {func_info,{atom,bs_match_SUITE},{atom,em_2},1}.
  {label,1456}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,1897},1}. % '-em_2/1-lbc$^0/2-0-'/2


{function, em_3, 1, 1458}.
  {label,1457}.
    {line,[{location,"bs_match_SUITE.erl",2554}]}.
    {func_info,{atom,bs_match_SUITE},{atom,em_3},1}.
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
    {line,[{location,"bs_match_SUITE.erl",2555}]}.
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
    {line,[{location,"bs_match_SUITE.erl",2558}]}.
    {func_info,{atom,bs_match_SUITE},{atom,em_3_1},1}.
  {label,1461}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    return.


{function, em_4, 2, 1463}.
  {label,1462}.
    {line,[{location,"bs_match_SUITE.erl",2561}]}.
    {func_info,{atom,bs_match_SUITE},{atom,em_4},2}.
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
    {line,[{location,"bs_match_SUITE.erl",2566}]}.
    {func_info,{atom,bs_match_SUITE},{atom,trim_bs_start_match_resume},1}.
  {label,1466}.
    {test,is_list,{f,1465},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2567}]}.
    {call,1,{f,1808}}. % id/1
    {test,bs_start_match3,{f,1468},1,[{x,0}],{x,1}}.
    {bs_match,{f,1468},{x,1},{commands,[{ensure_at_least,0,8}]}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2568}]}.
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
    {line,[{location,"bs_match_SUITE.erl",2567}]}.
    {badmatch,{x,0}}.


{function, trim_bs_start_match_resume_1, 1, 1470}.
  {label,1469}.
    {line,[{location,"bs_match_SUITE.erl",2571}]}.
    {func_info,{atom,bs_match_SUITE},{atom,trim_bs_start_match_resume_1},1}.
  {label,1470}.
    {'%',{var_info,{x,0},[{type,{t_bs_context,8}},accepts_match_context]}}.
    {allocate,1,1}.
    {init_yregs,{list,[{y,0}]}}.
    {bs_start_match4,{atom,resume},1,{x,0},{x,0}}.
    {bs_get_tail,{x,0},{y,0},1}.
    {move,{y,0},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2572}]}.
    {call,1,{f,1808}}. % id/1
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, expand_and_squeeze, 1, 1472}.
  {label,1471}.
    {line,[{location,"bs_match_SUITE.erl",2575}]}.
    {func_info,{atom,bs_match_SUITE},{atom,expand_and_squeeze},1}.
  {label,1472}.
    {test,is_list,{f,1471},[{x,0}]}.
    {allocate,0,0}.
    {move,
        {literal,
            [{bin,2577,
                 [{bin_element,2577,{char,2577,225},default,[utf8]},
                  {bin_element,2577,{var,2577,'_'},default,[binary]}]},
             {bin,2578,
                 [{bin_element,2578,{char,2578,233},default,[utf8]},
                  {bin_element,2578,{var,2578,'_'},default,[binary]}]}]},
        {x,1}}.
    {move,{integer,16},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2577}]}.
    {call,2,{f,1476}}. % ensure_squeezed/2
    {'%',{var_info,{x,0},[{type,{t_cons,any,any}}]}}.
    {move,
        {literal,
            [{bin,2581,
                 [{bin_element,2581,
                      {integer,2581,0},
                      {integer,2581,32},
                      default},
                  {bin_element,2581,{var,2581,'_'},default,[binary]}]},
             {bin,2582,
                 [{bin_element,2582,{string,2582,"bbbb"},default,default},
                  {bin_element,2582,{var,2582,'_'},default,[binary]}]}]},
        {x,1}}.
    {move,{integer,16},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2581}]}.
    {call,2,{f,1476}}. % ensure_squeezed/2
    {'%',{var_info,{x,0},[{type,{t_cons,any,any}}]}}.
    {move,
        {literal,
            [{bin,2585,
                 [{bin_element,2585,{string,2585,"aaaa"},default,default},
                  {bin_element,2585,{var,2585,'_'},default,[binary]}]},
             {bin,2586,
                 [{bin_element,2586,{string,2586,"bbbb"},default,default},
                  {bin_element,2586,{var,2586,'_'},default,[binary]}]}]},
        {x,1}}.
    {move,{integer,16},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2585}]}.
    {call,2,{f,1476}}. % ensure_squeezed/2
    {'%',{var_info,{x,0},[{type,{t_cons,any,any}}]}}.
    {move,
        {literal,
            [{bin,2589,
                 [{bin_element,2589,{string,2589,"aaaa"},default,default},
                  {bin_element,2589,{var,2589,'_'},default,[binary]}]},
             {bin,2590,
                 [{bin_element,2590,{string,2590,"bbbb"},default,default},
                  {bin_element,2590,{var,2590,'_'},default,[binary]}]},
             {bin,2591,[]}]},
        {x,1}}.
    {move,{integer,16},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2589}]}.
    {call,2,{f,1476}}. % ensure_squeezed/2
    {'%',{var_info,{x,0},[{type,{t_cons,any,any}}]}}.
    {move,
        {literal,
            [{bin,2594,
                 [{bin_element,2594,{string,2594,"aaaa"},default,default},
                  {bin_element,2594,{var,2594,'_'},default,[binary]}]},
             {bin,2595,
                 [{bin_element,2595,{string,2595,"bbbb"},default,default},
                  {bin_element,2595,{var,2595,'_'},default,[binary]}]},
             {bin,2596,[{bin_element,2596,{var,2596,'_'},default,[float]}]}]},
        {x,1}}.
    {move,{integer,8},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2594}]}.
    {call,2,{f,1476}}. % ensure_squeezed/2
    {'%',{var_info,{x,0},[{type,{t_cons,any,any}}]}}.
    {move,
        {literal,
            [{bin,2599,
                 [{bin_element,2599,{string,2599,"aa"},default,default},
                  {bin_element,2599,{var,2599,'_'},default,[binary]}]},
             {bin,2600,
                 [{bin_element,2600,{string,2600,"bb"},default,default},
                  {bin_element,2600,{var,2600,'_'},default,[binary]}]},
             {bin,2601,
                 [{bin_element,2601,{string,2601,"c"},default,default},
                  {bin_element,2601,{var,2601,'_'},default,[binary]}]}]},
        {x,1}}.
    {move,{integer,8},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2599}]}.
    {call,2,{f,1476}}. % ensure_squeezed/2
    {'%',{var_info,{x,0},[{type,{t_cons,any,any}}]}}.
    {move,
        {literal,
            [{bin,2607,
                 [{bin_element,2607,{string,2607,"aaa"},default,default},
                  {bin_element,2607,{var,2607,'_'},default,[binary]}]},
             {bin,2608,
                 [{bin_element,2608,{string,2608,"abb"},default,default},
                  {bin_element,2608,{var,2608,'_'},default,[binary]}]},
             {bin,2609,
                 [{bin_element,2609,{string,2609,"c"},default,default},
                  {bin_element,2609,{var,2609,'_'},default,[binary]}]}]},
        {x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2607}]}.
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
    {make_fun3,{f,1894},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[false,true]}}]}}.
    {move,{x,2},{x,1}}.
    {line,[{location,"bs_match_SUITE.erl",2618}]}.
    {call_ext,2,{extfunc,lists,any,2}}.
    {test,is_eq_exact,{f,1473},[{x,0},{atom,true}]}.
    {move,
        {literal,
            [{bin,2621,
                 [{bin_element,2621,{integer,2621,255},default,default},
                  {bin_element,2621,{integer,2621,255},default,default},
                  {bin_element,2621,{integer,2621,255},default,default},
                  {bin_element,2621,{integer,2621,255},default,default},
                  {bin_element,2621,{integer,2621,255},default,default},
                  {bin_element,2621,{integer,2621,255},default,default},
                  {bin_element,2621,{integer,2621,255},default,default},
                  {bin_element,2621,{integer,2621,255},default,default}]},
             {bin,2622,
                 [{bin_element,2622,
                      {var,2622,'_'},
                      {integer,2622,64},
                      default}]}]},
        {x,1}}.
    {move,{integer,64},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2621}]}.
    {call,2,{f,1476}}. % ensure_squeezed/2
    {'%',{var_info,{x,0},[{type,{t_cons,any,any}}]}}.
    {move,
        {literal,
            [{bin,2625,
                 [{bin_element,2625,{var,2625,'A'},{integer,2625,32},default},
                  {bin_element,2625,{var,2625,'_'},{var,2625,'A'},default}]},
             {bin,2626,
                 [{bin_element,2626,
                      {integer,2626,0},
                      {integer,2626,32},
                      default}]},
             {bin,2627,
                 [{bin_element,2627,
                      {var,2627,'_'},
                      {integer,2627,32},
                      default}]}]},
        {x,1}}.
    {move,{integer,32},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2625}]}.
    {call,2,{f,1476}}. % ensure_squeezed/2
    {'%',{var_info,{x,0},[{type,{t_cons,any,any}}]}}.
    {move,
        {literal,
            [{bin,2630,
                 [{bin_element,2630,{var,2630,'A'},{integer,2630,32},default},
                  {bin_element,2630,{var,2630,'_'},{var,2630,'A'},default}]},
             {bin,2631,
                 [{bin_element,2631,{integer,2631,0},default,default},
                  {bin_element,2631,{integer,2631,0},default,default},
                  {bin_element,2631,{integer,2631,0},default,default},
                  {bin_element,2631,{integer,2631,0},default,default}]},
             {bin,2632,
                 [{bin_element,2632,
                      {var,2632,'_'},
                      {integer,2632,32},
                      default}]}]},
        {x,1}}.
    {move,{integer,32},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2630}]}.
    {call,2,{f,1476}}. % ensure_squeezed/2
    {'%',{var_info,{x,0},[{type,{t_cons,any,any}}]}}.
    {move,
        {literal,
            [{bin,2635,
                 [{bin_element,2635,{var,2635,'A'},{integer,2635,32},default},
                  {bin_element,2635,{var,2635,'_'},{var,2635,'A'},default}]},
             {bin,2636,
                 [{bin_element,2636,
                      {integer,2636,0},
                      {integer,2636,64},
                      default}]},
             {bin,2637,
                 [{bin_element,2637,
                      {var,2637,'_'},
                      {integer,2637,32},
                      default}]}]},
        {x,1}}.
    {move,{integer,32},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2635}]}.
    {call,2,{f,1476}}. % ensure_squeezed/2
    {'%',{var_info,{x,0},[{type,{t_cons,any,any}}]}}.
    {move,
        {literal,
            [{bin,2640,
                 [{bin_element,2640,{string,2640,"aa"},default,default},
                  {bin_element,2640,{var,2640,'_'},default,[binary]}]},
             {bin,2641,
                 [{bin_element,2641,{string,2641,"bb"},default,default},
                  {bin_element,2641,{var,2641,'_'},default,[binary]}]},
             {bin,2642,
                 [{bin_element,2642,{string,2642,"cc"},default,default},
                  {bin_element,2642,{var,2642,'_'},default,[binary]}]},
             {bin,2643,
                 [{bin_element,2643,{string,2643,"dd"},default,default},
                  {bin_element,2643,{var,2643,'_'},default,[binary]}]},
             {bin,2644,
                 [{bin_element,2644,{string,2644,"ee"},default,default},
                  {bin_element,2644,{var,2644,'_'},default,[binary]}]},
             {bin,2645,
                 [{bin_element,2645,{string,2645,"ff"},default,default},
                  {bin_element,2645,{var,2645,'_'},default,[binary]}]},
             {bin,2646,
                 [{bin_element,2646,{string,2646,"gg"},default,default},
                  {bin_element,2646,{var,2646,'_'},default,[binary]}]},
             {bin,2647,
                 [{bin_element,2647,{string,2647,"hh"},default,default},
                  {bin_element,2647,{var,2647,'_'},default,[binary]}]},
             {bin,2648,
                 [{bin_element,2648,{string,2648,"ii"},default,default},
                  {bin_element,2648,{var,2648,'_'},default,[binary]}]},
             {bin,2649,
                 [{bin_element,2649,{string,2649,"jj"},default,default},
                  {bin_element,2649,{var,2649,'_'},default,[binary]}]},
             {bin,2650,
                 [{bin_element,2650,{string,2650,"kk"},default,default},
                  {bin_element,2650,{var,2650,'_'},default,[binary]}]},
             {bin,2651,
                 [{bin_element,2651,{string,2651,"ll"},default,default},
                  {bin_element,2651,{var,2651,'_'},default,[binary]}]},
             {bin,2652,
                 [{bin_element,2652,{string,2652,"mm"},default,default},
                  {bin_element,2652,{var,2652,'_'},default,[binary]}]},
             {bin,2653,
                 [{bin_element,2653,{string,2653,"nn"},default,default},
                  {bin_element,2653,{var,2653,'_'},default,[binary]}]},
             {bin,2654,
                 [{bin_element,2654,{string,2654,"oo"},default,default},
                  {bin_element,2654,{var,2654,'_'},default,[binary]}]},
             {bin,2655,
                 [{bin_element,2655,{string,2655,"pp"},default,default},
                  {bin_element,2655,{var,2655,'_'},default,[binary]}]}]},
        {x,1}}.
    {move,{integer,8},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2640}]}.
    {call,2,{f,1476}}. % ensure_squeezed/2
    {'%',{var_info,{x,0},[{type,{t_cons,any,any}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1473}.
    {line,[{location,"bs_match_SUITE.erl",2618}]}.
    {badmatch,{atom,false}}.
  {label,1474}.
    {line,[{location,"bs_match_SUITE.erl",2604}]}.
    {badmatch,{x,0}}.


{function, ensure_squeezed, 2, 1476}.
  {label,1475}.
    {line,[{location,"bs_match_SUITE.erl",2659}]}.
    {func_info,{atom,bs_match_SUITE},{atom,ensure_squeezed},2}.
  {label,1476}.
    {'%',{var_info,{x,0},[{type,{t_integer,{8,64}}}]}}.
    {'%',
     {var_info,
      {x,1},
      [{type,
        {t_cons,
         {t_tuple,3,true,
          #{1 => {t_atom,[bin]},
            2 => {t_integer,{2577,2655}},
            3 =>
             {t_list,
              {t_tuple,5,true,
               #{1 => {t_atom,[bin_element]},
                 2 => {t_integer,{2577,2655}},
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
    {line,[{location,"bs_match_SUITE.erl",2663}]}.
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
    {line,[{location,"bs_match_SUITE.erl",2660}]}.
    {badmatch,{x,0}}.


{function, binary_match_to_asm, 1, 1479}.
  {label,1478}.
    {line,[{location,"bs_match_SUITE.erl",2665}]}.
    {func_info,{atom,bs_match_SUITE},{atom,binary_match_to_asm},1}.
  {label,1479}.
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_cons,
         {t_tuple,3,true,
          #{1 => {t_atom,[bin]},
            2 => {t_integer,{2577,2655}},
            3 =>
             {t_list,
              {t_tuple,5,true,
               #{1 => {t_atom,[bin_element]},
                 2 => {t_integer,{2577,2655}},
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
    {line,[{location,"bs_match_SUITE.erl",2670}]}.
    {gc_bif,length,
     {f,0},
     1,
     [{tr,
       {x,0},
       {t_cons,
        {t_tuple,3,true,
         #{1 => {t_atom,[bin]},
           2 => {t_integer,{2577,2655}},
           3 =>
            {t_list,
             {t_tuple,5,true,
              #{1 => {t_atom,[bin_element]},
                2 => {t_integer,{2577,2655}},
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
    {call,1,{f,1891}}. % '-binary_match_to_asm/1-lc$^0/1-0-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_cons,
                     {t_tuple,5,true,
                         #{1 => {t_atom,[clause]},
                           2 => {t_integer,{2577,2655}},
                           3 =>
                               {t_cons,
                                   {t_tuple,3,true,
                                       #{1 => {t_atom,[bin]},
                                         2 => {t_integer,{2577,2655}},
                                         3 => {t_list,any,any}}},
                                   nil},
                           4 => nil,
                           5 =>
                               {t_cons,
                                   {t_tuple,3,true,
                                       #{1 => {t_atom,[integer]},
                                         2 => {t_integer,{2577,2655}}}},
                                   nil}}},
                     nil}}]}}.
    {move,{x,0},{y,2}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2674}]}.
    {call_ext,1,{extfunc,erl_anno,new,1}}.
    {move,{x,0},{y,1}}.
    {move,{integer,2},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2675}]}.
    {call_ext,1,{extfunc,erl_anno,new,1}}.
    {move,{x,0},{y,0}}.
    {move,{integer,3},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2676}]}.
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
    {line,[{location,"bs_match_SUITE.erl",2680}]}.
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
    {line,[{location,"bs_match_SUITE.erl",2683}]}.
    {badmatch,{x,0}}.
  {label,1481}.
    {line,[{location,"bs_match_SUITE.erl",2682}]}.
    {badmatch,{x,0}}.
  {label,1482}.
    {line,[{location,"bs_match_SUITE.erl",2679}]}.
    {badmatch,{x,0}}.


{function, many_clauses, 1, 1484}.
  {label,1483}.
    {line,[{location,"bs_match_SUITE.erl",2687}]}.
    {func_info,{atom,bs_match_SUITE},{atom,many_clauses},1}.
  {label,1484}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{integer,200},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2690}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_match_SUITE.erl",2691}]}.
    {call,1,{f,1887}}. % '-many_clauses/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {move,{x,0},{y,0}}.
    {move,{atom,bs_match_SUITE_many_clauses},{x,0}}.
    {line,[]}.
    {call_ext,1,{extfunc,merl,term,1}}.
    {test_heap,52,1}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{literal,[{tree,atom,{attr,2692,[],none},module}]},{x,0},{x,0}}.
    {put_list,{y,0},nil,{x,1}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{literal,[{var,2695,'Bin'}]},{x,1},{x,1}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,case_expr},
                       {literal,{attr,2695,[],none}},
                       {x,1}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,nil,{x,1},{x,1}}.
    {put_list,{literal,[{var,2694,'Bin'}]},{x,1},{x,1}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,clause},
                       {literal,{attr,2694,[],none}},
                       {x,1}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{literal,[{tree,atom,{attr,2694,[],none},f}]},{x,1},{x,1}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,function},
                       {literal,{attr,2694,[],none}},
                       {x,1}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{literal,{attribute,2693,export,[{f,1}]}},{x,1},{x,1}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,attribute},
                       {literal,{attr,2692,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},{x,1},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"bs_match_SUITE.erl",2692}]}.
    {call_ext,1,{extfunc,merl,tree,1}}.
    {move,{x,0},{y,0}}.
    {move,{atom,bs_match_SUITE},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2699}]}.
    {call_ext,1,{extfunc,test_lib,opt_opts,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,1}.
    {line,[{location,"bs_match_SUITE.erl",2700}]}.
    {call_ext,2,{extfunc,merl,compile_and_load,2}}.
    {test,is_tagged_tuple,{f,1485},[{x,0},2,{atom,ok}]}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_match_SUITE.erl",2707}]}.
    {call,1,{f,1881}}. % '-many_clauses/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1485}.
    {line,[{location,"bs_match_SUITE.erl",2700}]}.
    {badmatch,{x,0}}.


{function, one_clause, 1, 1487}.
  {label,1486}.
    {line,[{location,"bs_match_SUITE.erl",2710}]}.
    {func_info,{atom,bs_match_SUITE},{atom,one_clause},1}.
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
            [{bin,2711,
                 [{bin_element,2711,{var,2711,'L'},{integer,2711,8},default},
                  {bin_element,2711,
                      {var,2711,'Val'},
                      {var,2711,'L'},
                      default}]}]},
        {x,1}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_tuple2,{x,1},
                {list,[{atom,template},
                       {atom,tuple},
                       {literal,{attr,2711,[],none}},
                       {x,1}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},
              {literal,[[{tree,operator,{attr,2711,[],none},'+'}],
                        [{var,2711,'Val'}]]},
              {x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,infix_expr},
                       {literal,{attr,2711,[],none}},
                       {x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,nil,{x,0},{x,0}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {put_tuple2,{x,0},
                {list,[{atom,template},
                       {atom,clause},
                       {literal,{attr,2711,[],none}},
                       {x,0}]}}.
    {line,[{location,"bs_match_SUITE.erl",2711}]}.
    {call_ext_last,1,{extfunc,merl,tree,1},1}.


{function, gh_6410, 1, 1489}.
  {label,1488}.
    {line,[{location,"bs_match_SUITE.erl",2714}]}.
    {func_info,{atom,bs_match_SUITE},{atom,gh_6410},1}.
  {label,1489}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2715}]}.
    {call,1,{f,1497}}. % do_gh_6410/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,0}}}]}}.
    {'catch',{y,2},{f,1490}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2716}]}.
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
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",2717}]}.
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
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",2718}]}.
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
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",2718}]}.
    {badmatch,{x,0}}.
  {label,1494}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",2717}]}.
    {badmatch,{x,0}}.
  {label,1495}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",2716}]}.
    {badmatch,{x,0}}.


{function, do_gh_6410, 1, 1497}.
  {label,1496}.
    {line,[{location,"bs_match_SUITE.erl",2722}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_gh_6410},1}.
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
    {line,[{location,"bs_match_SUITE.erl",2725}]}.
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
    {line,[{location,"bs_match_SUITE.erl",2732}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bs_match},1}.
  {label,1503}.
    {allocate,5,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3},{y,4}]}}.
    {move,{literal,<<1,0>>},{x,1}}.
    {move,{atom,whatever},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2733}]}.
    {call,2,{f,1531}}. % do_bs_match_1/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {test,is_eq_exact,
          {f,1529},
          [{tr,{x,0},{t_bitstring,16,false}},{literal,<<1,0>>}]}.
    {move,{literal,<<1,1>>},{x,1}}.
    {move,{atom,whatever},{x,0}}.
    {line,[{scope,[20]},{location,"bs_match_SUITE.erl",2734}]}.
    {call,2,{f,1531}}. % do_bs_match_1/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {test,is_eq_exact,
          {f,1528},
          [{tr,{x,0},{t_bitstring,16,false}},{literal,<<1,1>>}]}.
    {move,{literal,{a,b,c}},{x,1}}.
    {move,{atom,whatever},{x,0}}.
    {line,[{scope,[20]},{location,"bs_match_SUITE.erl",2735}]}.
    {call,2,{f,1531}}. % do_bs_match_1/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_atom,[a]},
                                     2 => {t_atom,[b]},
                                     3 => {t_atom,[c]}}}}]}}.
    {'catch',{y,4},{f,1504}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[20]},{location,"bs_match_SUITE.erl",2737}]}.
    {call,1,{f,1535}}. % do_bs_match_gh_6551a/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
  {label,1504}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,1527},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1527},[{x,1},2,{atom,badarg}]}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[19,20]},{location,"bs_match_SUITE.erl",2738}]}.
    {call,1,{f,1535}}. % do_bs_match_gh_6551a/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1505},[{x,0},{atom,true}]}.
    {line,[{scope,[18]},{location,"bs_match_SUITE.erl",2738}]}.
    {badmatch,{atom,true}}.
  {label,1505}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[18]},{location,"bs_match_SUITE.erl",2740}]}.
    {call,1,{f,1539}}. % do_bs_match_gh_6551b/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,0}},
                                     2 => {t_integer,{0,0}}}}}]}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[18]},{location,"bs_match_SUITE.erl",2741}]}.
    {call,1,{f,1539}}. % do_bs_match_gh_6551b/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_bitstring,8,false},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
          {f,1526},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_bitstring,8,false},
                          2 => {t_bitstring,8,false}}}},
           {literal,{<<"*">>,<<"*">>}}]}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{scope,[18]},{location,"bs_match_SUITE.erl",2743}]}.
    {call,1,{f,1543}}. % do_bs_match_gh_6613/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[ok]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,1525},
          [{tr,{x,0},
               {t_union,{t_atom,[ok]},none,none,none,{t_bitstring,8,false}}},
           {atom,ok}]}.
    {move,{literal,<<0,0>>},{x,0}}.
    {line,[{scope,[18]},{location,"bs_match_SUITE.erl",2744}]}.
    {call,1,{f,1543}}. % do_bs_match_gh_6613/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[ok]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,1524},
          [{tr,{x,0},
               {t_union,{t_atom,[ok]},none,none,none,{t_bitstring,8,false}}},
           {literal,<<0,0>>}]}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{scope,[18]},{location,"bs_match_SUITE.erl",2746}]}.
    {call,1,{f,1808}}. % id/1
    {call,1,{f,1551}}. % do_bs_match_gh_6660/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,1523},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<"abc">>}]}.
    {'catch',{y,3},{f,1506}}.
    {move,{atom,abc},{x,0}}.
    {line,[{scope,[18]},{location,"bs_match_SUITE.erl",2747}]}.
    {call,1,{f,1808}}. % id/1
    {call,1,{f,1551}}. % do_bs_match_gh_6660/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
  {label,1506}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,1522},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1522},[{x,1}]}.
    {test,test_arity,{f,1522},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1522},[{x,1},{literal,{try_clause,abc}}]}.
    {'catch',{y,2},{f,1507}}.
    {move,{literal,<<"1000">>},{x,0}}.
    {line,[{scope,[16]},{location,"bs_match_SUITE.erl",2749}]}.
    {call,1,{f,1808}}. % id/1
    {call,1,{f,1555}}. % do_bs_match_gh_6755/1
    {'%',{var_info,{x,0},[{type,{t_atom,[b]}}]}}.
  {label,1507}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,1521},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1521},[{x,1}]}.
    {test,test_arity,{f,1521},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,1521},[{x,1},2,{atom,case_clause}]}.
    {'catch',{y,1},{f,1508}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[15,16]},{location,"bs_match_SUITE.erl",2751}]}.
    {call,1,{f,1563}}. % do_bs_match_gh_7467/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1508}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,1520},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1520},[{x,1}]}.
    {test,test_arity,{f,1520},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1520},[{x,1},{literal,{badmatch,<<>>}}]}.
    {line,[{scope,"\f"},{location,"bs_match_SUITE.erl",2753}]}.
    {call,0,{f,1566}}. % do_bs_match_gh_8280/0
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,0}},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
          {f,1519},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,0}},2 => {t_bitstring,8,false}}}},
           {literal,{0,<<1,2,3>>}}]}.
    {move,{literal,<<0,0,0,0,0>>},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_match_SUITE.erl",2755}]}.
    {call,1,{f,1808}}. % id/1
    {call,1,{f,1569}}. % do_bs_match_gh_9304/1
    {'%',{var_info,{x,0},[{type,{t_atom,[empty,not_empty]}}]}}.
    {test,is_eq_exact,
          {f,1518},
          [{tr,{x,0},{t_atom,[empty,not_empty]}},{atom,not_empty}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_match_SUITE.erl",2756}]}.
    {call,1,{f,1808}}. % id/1
    {call,1,{f,1569}}. % do_bs_match_gh_9304/1
    {'%',{var_info,{x,0},[{type,{t_atom,[empty,not_empty]}}]}}.
    {test,is_eq_exact,
          {f,1517},
          [{tr,{x,0},{t_atom,[empty,not_empty]}},{atom,empty}]}.
    {'try',{y,0},{f,1509}}.
    {move,{literal,<<0:1>>},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_match_SUITE.erl",2757}]}.
    {call,1,{f,1808}}. % id/1
    {call,1,{f,1569}}. % do_bs_match_gh_9304/1
    {'%',{var_info,{x,0},[{type,{t_atom,[empty,not_empty]}}]}}.
    {try_end,{y,0}}.
    {test_heap,16,1}.
    {put_tuple2,{x,0},{list,[{atom,unexpected_success},{x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{literal,{pattern,"{ error , { case_clause , _ } , [...] }"}},
              {x,0},
              {x,0}}.
    {put_list,{literal,{expression,"do_bs_match_gh_9304 ( id ( << 0 : 1 >> ) )"}},
              {x,0},
              {x,0}}.
    {put_list,{literal,{line,2757}},{x,0},{x,0}}.
    {put_list,{literal,{module,bs_match_SUITE}},{x,0},{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,assertException},{x,0}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},5}.
  {label,1509}.
    {try_case,{y,0}}.
    {move,{x,1},{y,3}}.
    {move,{x,0},{y,4}}.
    {move,{x,2},{x,0}}.
    {test,is_eq_exact,
          {f,1516},
          [{tr,{y,4},{t_atom,[error,exit,throw]}},{atom,error}]}.
    {test,is_tagged_tuple,{f,1516},[{y,3},2,{atom,case_clause}]}.
    {'try',{y,0},{f,1510}}.
    {init_yregs,{list,[{y,3},{y,4}]}}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{scope,"\t"},{location,"bs_match_SUITE.erl",2758}]}.
    {call,1,{f,1808}}. % id/1
    {call,1,{f,1569}}. % do_bs_match_gh_9304/1
    {'%',{var_info,{x,0},[{type,{t_atom,[empty,not_empty]}}]}}.
    {try_end,{y,0}}.
    {test_heap,16,1}.
    {put_tuple2,{x,0},{list,[{atom,unexpected_success},{x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{literal,{pattern,"{ error , { case_clause , _ } , [...] }"}},
              {x,0},
              {x,0}}.
    {put_list,{literal,{expression,"do_bs_match_gh_9304 ( id ( << 0 >> ) )"}},
              {x,0},
              {x,0}}.
    {put_list,{literal,{line,2758}},{x,0},{x,0}}.
    {put_list,{literal,{module,bs_match_SUITE}},{x,0},{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,assertException},{x,0}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},5}.
  {label,1510}.
    {try_case,{y,0}}.
    {move,{x,1},{y,3}}.
    {move,{x,0},{y,4}}.
    {move,{x,2},{x,0}}.
    {test,is_eq_exact,
          {f,1515},
          [{tr,{y,4},{t_atom,[error,exit,throw]}},{atom,error}]}.
    {test,is_tagged_tuple,{f,1515},[{y,3},2,{atom,case_clause}]}.
    {'try',{y,0},{f,1511}}.
    {init_yregs,{list,[{y,3},{y,4}]}}.
    {move,{literal,<<0,0,0,0,0,0,0,0,0>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",2759}]}.
    {call,1,{f,1808}}. % id/1
    {call,1,{f,1569}}. % do_bs_match_gh_9304/1
    {'%',{var_info,{x,0},[{type,{t_atom,[empty,not_empty]}}]}}.
    {try_end,{y,0}}.
    {test_heap,16,1}.
    {put_tuple2,{x,0},{list,[{atom,unexpected_success},{x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{literal,{pattern,"{ error , { case_clause , _ } , [...] }"}},
              {x,0},
              {x,0}}.
    {put_list,{literal,{expression,"do_bs_match_gh_9304 ( id ( << 0 , 0 : 64 >> ) )"}},
              {x,0},
              {x,0}}.
    {put_list,{literal,{line,2759}},{x,0},{x,0}}.
    {put_list,{literal,{module,bs_match_SUITE}},{x,0},{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,assertException},{x,0}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},5}.
  {label,1511}.
    {try_case,{y,0}}.
    {move,{x,1},{y,3}}.
    {move,{x,0},{y,4}}.
    {move,{x,2},{x,0}}.
    {test,is_eq_exact,
          {f,1514},
          [{tr,{y,4},{t_atom,[error,exit,throw]}},{atom,error}]}.
    {test,is_tagged_tuple,{f,1514},[{y,3},2,{atom,case_clause}]}.
    {'try',{y,0},{f,1512}}.
    {init_yregs,{list,[{y,3},{y,4}]}}.
    {move,{literal,<<1,0,0,0,0>>},{x,0}}.
    {line,[{scope,[3]},{location,"bs_match_SUITE.erl",2760}]}.
    {call,1,{f,1808}}. % id/1
    {call,1,{f,1569}}. % do_bs_match_gh_9304/1
    {'%',{var_info,{x,0},[{type,{t_atom,[empty,not_empty]}}]}}.
    {try_end,{y,0}}.
    {test_heap,16,1}.
    {put_tuple2,{x,0},{list,[{atom,unexpected_success},{x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{literal,{pattern,"{ error , { case_clause , _ } , [...] }"}},
              {x,0},
              {x,0}}.
    {put_list,{literal,{expression,"do_bs_match_gh_9304 ( id ( << 1 , 0 : 32 >> ) )"}},
              {x,0},
              {x,0}}.
    {put_list,{literal,{line,2760}},{x,0},{x,0}}.
    {put_list,{literal,{module,bs_match_SUITE}},{x,0},{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,assertException},{x,0}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},5}.
  {label,1512}.
    {try_case,{y,0}}.
    {move,{x,1},{y,3}}.
    {move,{x,0},{y,4}}.
    {move,{x,2},{x,0}}.
    {test,is_eq_exact,
          {f,1513},
          [{tr,{y,4},{t_atom,[error,exit,throw]}},{atom,error}]}.
    {test,is_tagged_tuple,{f,1513},[{y,3},2,{atom,case_clause}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,5}.
    return.
  {label,1513}.
    build_stacktrace.
    {test_heap,20,1}.
    {put_tuple2,{x,0},{list,[{y,4},{y,3},{x,0}]}}.
    {put_tuple2,{x,0},{list,[{atom,unexpected_exception},{x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{literal,{pattern,"{ error , { case_clause , _ } , [...] }"}},
              {x,0},
              {x,0}}.
    {put_list,{literal,{expression,"do_bs_match_gh_9304 ( id ( << 1 , 0 : 32 >> ) )"}},
              {x,0},
              {x,0}}.
    {put_list,{literal,{line,2760}},{x,0},{x,0}}.
    {put_list,{literal,{module,bs_match_SUITE}},{x,0},{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,assertException},{x,0}]}}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",2760}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},5}.
  {label,1514}.
    build_stacktrace.
    {test_heap,20,1}.
    {put_tuple2,{x,0},{list,[{y,4},{y,3},{x,0}]}}.
    {put_tuple2,{x,0},{list,[{atom,unexpected_exception},{x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{literal,{pattern,"{ error , { case_clause , _ } , [...] }"}},
              {x,0},
              {x,0}}.
    {put_list,{literal,{expression,"do_bs_match_gh_9304 ( id ( << 0 , 0 : 64 >> ) )"}},
              {x,0},
              {x,0}}.
    {put_list,{literal,{line,2759}},{x,0},{x,0}}.
    {put_list,{literal,{module,bs_match_SUITE}},{x,0},{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,assertException},{x,0}]}}.
    {line,[{scope,[3]},{location,"bs_match_SUITE.erl",2759}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},5}.
  {label,1515}.
    build_stacktrace.
    {test_heap,20,1}.
    {put_tuple2,{x,0},{list,[{y,4},{y,3},{x,0}]}}.
    {put_tuple2,{x,0},{list,[{atom,unexpected_exception},{x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{literal,{pattern,"{ error , { case_clause , _ } , [...] }"}},
              {x,0},
              {x,0}}.
    {put_list,{literal,{expression,"do_bs_match_gh_9304 ( id ( << 0 >> ) )"}},
              {x,0},
              {x,0}}.
    {put_list,{literal,{line,2758}},{x,0},{x,0}}.
    {put_list,{literal,{module,bs_match_SUITE}},{x,0},{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,assertException},{x,0}]}}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",2758}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},5}.
  {label,1516}.
    build_stacktrace.
    {test_heap,20,1}.
    {put_tuple2,{x,0},{list,[{y,4},{y,3},{x,0}]}}.
    {put_tuple2,{x,0},{list,[{atom,unexpected_exception},{x,0}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{literal,{pattern,"{ error , { case_clause , _ } , [...] }"}},
              {x,0},
              {x,0}}.
    {put_list,{literal,{expression,"do_bs_match_gh_9304 ( id ( << 0 : 1 >> ) )"}},
              {x,0},
              {x,0}}.
    {put_list,{literal,{line,2757}},{x,0},{x,0}}.
    {put_list,{literal,{module,bs_match_SUITE}},{x,0},{x,0}}.
    {put_tuple2,{x,0},{list,[{atom,assertException},{x,0}]}}.
    {line,[{scope,"\t"},{location,"bs_match_SUITE.erl",2757}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},5}.
  {label,1517}.
    {line,[{scope,"\f"},{location,"bs_match_SUITE.erl",2756}]}.
    {badmatch,{atom,not_empty}}.
  {label,1518}.
    {line,[{scope,"\f"},{location,"bs_match_SUITE.erl",2755}]}.
    {badmatch,{atom,empty}}.
  {label,1519}.
    {line,[{scope,"\f"},{location,"bs_match_SUITE.erl",2753}]}.
    {badmatch,{x,0}}.
  {label,1520}.
    {line,[{scope,"\f"},{location,"bs_match_SUITE.erl",2751}]}.
    {badmatch,{x,0}}.
  {label,1521}.
    {line,[{scope,[14]},{location,"bs_match_SUITE.erl",2749}]}.
    {badmatch,{x,0}}.
  {label,1522}.
    {line,[{scope,[16]},{location,"bs_match_SUITE.erl",2747}]}.
    {badmatch,{x,0}}.
  {label,1523}.
    {line,[{scope,[18]},{location,"bs_match_SUITE.erl",2746}]}.
    {badmatch,{x,0}}.
  {label,1524}.
    {line,[{scope,[18]},{location,"bs_match_SUITE.erl",2744}]}.
    {badmatch,{x,0}}.
  {label,1525}.
    {line,[{scope,[18]},{location,"bs_match_SUITE.erl",2743}]}.
    {badmatch,{x,0}}.
  {label,1526}.
    {line,[{scope,[18]},{location,"bs_match_SUITE.erl",2741}]}.
    {badmatch,{x,0}}.
  {label,1527}.
    {line,[{scope,[18]},{location,"bs_match_SUITE.erl",2737}]}.
    {badmatch,{x,0}}.
  {label,1528}.
    {line,[{scope,[20]},{location,"bs_match_SUITE.erl",2734}]}.
    {badmatch,{x,0}}.
  {label,1529}.
    {line,[{scope,[20]},{location,"bs_match_SUITE.erl",2733}]}.
    {badmatch,{x,0}}.


{function, do_bs_match_1, 2, 1531}.
  {label,1530}.
    {line,[{location,"bs_match_SUITE.erl",2764}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_bs_match_1},2}.
  {label,1531}.
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
    {test,bs_start_match3,{f,1533},2,[{x,1}],{x,0}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {bs_get_position,{x,0},{y,0},1}.
    {bs_match,{f,1532},
              {y,1},
              {commands,[{ensure_at_least,16,1},{skip,8},{'=:=',nil,8,0}]}}.
    {bs_match,{f,1532},{x,0},{commands,[{ensure_exactly,0}]}}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2767}]}.
    {call,1,{f,1808}}. % id/1
  {label,1532}.
    {bs_set_position,{y,1},{y,0}}.
    {bs_get_tail,{y,1},{x,0},0}.
    {deallocate,2}.
    return.
  {label,1533}.
    {move,{x,1},{x,0}}.
    return.


{function, do_bs_match_gh_6551a, 1, 1535}.
  {label,1534}.
    {line,[{location,"bs_match_SUITE.erl",2773}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_bs_match_gh_6551a},1}.
  {label,1535}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_match,{f,1536},{x,0},{commands,[{ensure_exactly,0}]}}.
    {move,nil,{x,1}}.
    {move,{atom,true},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2776}]}.
    {call_ext_only,2,{extfunc,erlang,'--',2}}.
  {label,1536}.
    {bs_match,{f,1537},
              {x,0},
              {commands,[{ensure_exactly,8},
                         {get_tail,1,1,{x,1}},
                         {get_tail,2,1,{x,0}}]}}.
    {bif,'=/=',
         {f,0},
         [{tr,{x,1},{t_bitstring,8,false}},{tr,{x,0},{t_bitstring,8,false}}],
         {x,0}}.
    return.
  {label,1537}.
    {bs_get_tail,{x,0},{x,0},1}.
    {line,[{location,"bs_match_SUITE.erl",2774}]}.
    {case_end,{x,0}}.


{function, do_bs_match_gh_6551b, 1, 1539}.
  {label,1538}.
    {line,[{location,"bs_match_SUITE.erl",2782}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_bs_match_gh_6551b},1}.
  {label,1539}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,none,
                                   {t_integer,{0,0}},
                                   none,
                                   {t_bitstring,8,false}}},
                    accepts_match_context]}}.
    {test,bs_start_match3,{f,1541},1,[{x,0}],{x,0}}.
    {bs_match,{f,1540},
              {x,0},
              {commands,[{ensure_exactly,8},
                         {get_tail,1,1,{x,1}},
                         {get_tail,2,1,{x,0}}]}}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    return.
  {label,1540}.
    {bs_get_tail,{x,0},{x,0},1}.
    {line,[{location,"bs_match_SUITE.erl",2784}]}.
    {case_end,{x,0}}.
  {label,1541}.
    {move,{literal,{0,0}},{x,0}}.
    return.


{function, do_bs_match_gh_6613, 1, 1543}.
  {label,1542}.
    {line,[{location,"bs_match_SUITE.erl",2791}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_bs_match_gh_6613},1}.
  {label,1543}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,1544},{x,0},{commands,[{ensure_exactly,8}]}}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1544}.
    {allocate,4,2}.
    {init_yregs,{list,[{y,2},{y,3}]}}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {'try',{y,3},{f,1546}}.
    {'try',{y,2},{f,1545}}.
    {bs_match,{f,1549},
              {y,1},
              {commands,[{ensure_exactly,16},
                         {integer,1,{literal,[]},8,1,{x,1}},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,is_eq_exact,
          {f,1549},
          [{tr,{x,2},{t_integer,{0,255}}},{tr,{x,1},{t_integer,{0,255}}}]}.
    {try_end,{y,2}}.
    {try_end,{y,3}}.
    {jump,{f,1547}}.
  {label,1545}.
    {try_case,{y,2}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.
  {label,1546}.
    {try_case,{y,3}}.
    {test,is_eq_exact,
          {f,1548},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,throw}]}.
  {label,1547}.
    {bs_set_position,{y,1},{y,0}}.
    {bs_get_tail,{y,1},{x,0},0}.
    {deallocate,4}.
    return.
  {label,1548}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.
  {label,1549}.
    {line,[{scope,[5]},{location,"bs_match_SUITE.erl",2795}]}.
    {try_case_end,{x,0}}.


{function, do_bs_match_gh_6660, 1, 1551}.
  {label,1550}.
    {line,[{location,"bs_match_SUITE.erl",2809}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_bs_match_gh_6660},1}.
  {label,1551}.
    {allocate,1,1}.
    {'try',{y,0},{f,1552}}.
    {test,bs_start_match3,{f,1553},1,[{x,0}],{x,1}}.
    {bs_match,{f,1553},
              {x,1},
              {commands,[{ensure_at_least,0,8},{get_tail,2,8,{x,0}}]}}.
    {try_end,{y,0}}.
    {deallocate,1}.
    return.
  {label,1552}.
    {try_case,{y,0}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.
  {label,1553}.
    {line,[{scope,[3]},{location,"bs_match_SUITE.erl",2810}]}.
    {try_case_end,{x,0}}.


{function, do_bs_match_gh_6755, 1, 1555}.
  {label,1554}.
    {line,[{location,"bs_match_SUITE.erl",2821}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_bs_match_gh_6755},1}.
  {label,1555}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1561},1,[{x,0}],{x,1}}.
    {allocate,2,2}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,1}}.
    {bs_get_position,{x,1},{y,0},2}.
    {bs_match,{f,1559},
              {y,1},
              {commands,[{ensure_at_least,32,1},
                         {'=:=',nil,16,12592},
                         {integer,2,{literal,[]},16,1,{x,0}}]}}.
    {select_val,{tr,{x,0},{t_integer,{0,65535}}},
                {f,1559},
                {list,[{integer,12336},{f,1557},{integer,12337},{f,1556}]}}.
  {label,1556}.
    {bs_match,{f,1559},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{atom,test2},{x,0}}.
    {jump,{f,1558}}.
  {label,1557}.
    {bs_match,{f,1559},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{atom,test},{x,0}}.
  {label,1558}.
    {line,[{location,"bs_match_SUITE.erl",2827}]}.
    {call_ext,1,{extfunc,erlang,atom_to_list,1}}.
    {bs_set_position,{y,1},{y,0}}.
    {bs_get_tail,{y,1},{x,0},0}.
    {test,is_eq_exact,
          {f,1560},
          [{tr,{x,0},{t_bitstring,1,false}},{literal,<<"b">>}]}.
    {move,{atom,b},{x,0}}.
    {deallocate,2}.
    return.
  {label,1559}.
    {bs_set_position,{x,1},{y,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_SUITE.erl",2822}]}.
    {case_end,{x,0}}.
  {label,1560}.
    {line,[{location,"bs_match_SUITE.erl",2829}]}.
    {case_end,{x,0}}.
  {label,1561}.
    {line,[{location,"bs_match_SUITE.erl",2822}]}.
    {case_end,{x,0}}.


{function, do_bs_match_gh_7467, 1, 1563}.
  {label,1562}.
    {line,[{location,"bs_match_SUITE.erl",2833}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_bs_match_gh_7467},1}.
  {label,1563}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,256}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_match,{f,1564},{x,0},{commands,[{ensure_exactly,1}]}}.
    {call_only,1,{f,1563}}. % do_bs_match_gh_7467/1
  {label,1564}.
    {bs_get_tail,{x,0},{x,0},1}.
    {line,[{location,"bs_match_SUITE.erl",2834}]}.
    {badmatch,{x,0}}.


{function, do_bs_match_gh_8280, 0, 1566}.
  {label,1565}.
    {line,[{location,"bs_match_SUITE.erl",2836}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_bs_match_gh_8280},0}.
  {label,1566}.
    {allocate,0,0}.
    {move,{literal,<<0,1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2839}]}.
    {call,1,{f,1808}}. % id/1
    {test,bs_start_match3,{f,1567},1,[{x,0}],{x,1}}.
    {bs_match,{f,1567},
              {x,1},
              {commands,[{ensure_exactly,32},
                         {integer,2,{literal,[]},8,1,{x,2}},
                         {binary,3,{literal,[]},3,8,{x,3}}]}}.
    {test,is_eq_exact,{f,1567},[{tr,{x,2},{t_integer,{0,255}}},{integer,0}]}.
    {test,is_eq_exact,
          {f,1567},
          [{tr,{x,3},{t_bitstring,8,false}},{literal,<<1,2,3>>}]}.
    {move,{literal,{0,<<1,2,3>>}},{x,0}}.
    {deallocate,0}.
    return.
  {label,1567}.
    {badmatch,{x,0}}.


{function, do_bs_match_gh_9304, 1, 1569}.
  {label,1568}.
    {line,[{location,"bs_match_SUITE.erl",2842}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_bs_match_gh_9304},1}.
  {label,1569}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1573},1,[{x,0}],{x,1}}.
    {allocate,3,2}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{x,1},{y,2}}.
    {bs_get_position,{x,1},{y,1},2}.
    {bs_get_tail,{x,1},{y,0},2}.
    {move,{y,0},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2844}]}.
    {call,1,{f,1575}}. % do_bs_match_gh_9304_1/1
    {test,is_tuple,{f,1572},[{x,0}]}.
    {test,test_arity,{f,1572},[{x,0},2]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,bs_match_string,{f,1570},[{y,2},8,{string,<<0>>}]}.
    {test,bs_skip_bits2,
          {f,1571},
          [{y,2},
           {x,0},
           1,
           {field_flags,[{anno,[2848,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_match,{f,1570},{y,2},{commands,[{ensure_exactly,0}]}}.
    {move,{atom,not_empty},{x,0}}.
    {deallocate,3}.
    return.
  {label,1570}.
    {bs_set_position,{y,2},{y,1}}.
    {bs_match,{f,1571},{y,2},{commands,[{ensure_exactly,0}]}}.
    {move,{atom,empty},{x,0}}.
    {deallocate,3}.
    return.
  {label,1571}.
    {line,[{location,"bs_match_SUITE.erl",2845}]}.
    {case_end,{y,0}}.
  {label,1572}.
    {line,[{location,"bs_match_SUITE.erl",2844}]}.
    {badmatch,{x,0}}.
  {label,1573}.
    {line,[{location,"bs_match_SUITE.erl",2843}]}.
    {badmatch,{x,0}}.


{function, do_bs_match_gh_9304_1, 1, 1575}.
  {label,1574}.
    {line,[{location,"bs_match_SUITE.erl",2852}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_bs_match_gh_9304_1},1}.
  {label,1575}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {move,{literal,{dummy,32}},{x,0}}.
    {call_only,1,{f,1808}}. % id/1


{function, binary_aliases, 1, 1577}.
  {label,1576}.
    {line,[{location,"bs_match_SUITE.erl",2858}]}.
    {func_info,{atom,bs_match_SUITE},{atom,binary_aliases},1}.
  {label,1577}.
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
    {line,[{location,"bs_match_SUITE.erl",2860}]}.
    {call,1,{f,1808}}. % id/1
    {call,1,{f,1878}}. % '-binary_aliases/1-fun-0-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,255}}}}}]}}.
    {test,is_eq_exact,
          {f,1672},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,255}},2 => {t_integer,{0,255}}}}},
           {literal,{42,42}}]}.
    {move,{literal,<<"c">>},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_SUITE.erl",2861}]}.
    {call,1,{f,1808}}. % id/1
    {call,1,{f,1878}}. % '-binary_aliases/1-fun-0-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,255}}}}}]}}.
    {test,is_eq_exact,
          {f,1671},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,255}},2 => {t_integer,{0,255}}}}},
           {literal,{99,99}}]}.
    {move,{literal,{ba_foo,<<"ÿ">>,undefined,undefined}},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_SUITE.erl",2864}]}.
    {call,1,{f,1808}}. % id/1
    {call,1,{f,1876}}. % '-binary_aliases/1-fun-1-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,255}}}}}]}}.
    {test,is_eq_exact,
          {f,1670},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,255}},2 => {t_integer,{0,255}}}}},
           {literal,{255,255}}]}.
    {move,{literal,{ba_foo,<<"k">>,undefined,undefined}},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_SUITE.erl",2865}]}.
    {call,1,{f,1808}}. % id/1
    {call,1,{f,1876}}. % '-binary_aliases/1-fun-1-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,255}}}}}]}}.
    {test,is_eq_exact,
          {f,1669},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,255}},2 => {t_integer,{0,255}}}}},
           {literal,{107,107}}]}.
    {move,{literal,{ba_foo,<<"ÿ">>,undefined,undefined}},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_SUITE.erl",2868}]}.
    {call,1,{f,1808}}. % id/1
    {call,1,{f,1874}}. % '-binary_aliases/1-fun-2-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,15}},
                                     3 => {t_integer,{0,15}}}}}]}}.
    {test,is_eq_exact,
          {f,1668},
          [{tr,{x,0},
               {t_tuple,3,true,
                        #{1 => {t_integer,{0,255}},
                          2 => {t_integer,{0,15}},
                          3 => {t_integer,{0,15}}}}},
           {literal,{255,15,15}}]}.
    {move,{literal,{ba_foo,<<"\\">>,undefined,undefined}},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_SUITE.erl",2869}]}.
    {call,1,{f,1808}}. % id/1
    {call,1,{f,1874}}. % '-binary_aliases/1-fun-2-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,15}},
                                     3 => {t_integer,{0,15}}}}}]}}.
    {test,is_eq_exact,
          {f,1667},
          [{tr,{x,0},
               {t_tuple,3,true,
                        #{1 => {t_integer,{0,255}},
                          2 => {t_integer,{0,15}},
                          3 => {t_integer,{0,15}}}}},
           {literal,{92,5,12}}]}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_SUITE.erl",2876}]}.
    {call,1,{f,1808}}. % id/1
    {call,1,{f,1872}}. % '-binary_aliases/1-fun-3-'/1
    {test,is_eq_exact,{f,1666},[{x,0},{integer,6}]}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_SUITE.erl",2882}]}.
    {call,1,{f,1808}}. % id/1
    {call,1,{f,1868}}. % '-binary_aliases/1-fun-4-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,255}},
                                     3 => {t_bitstring,1,false}}}}]}}.
    {test,is_eq_exact,
          {f,1665},
          [{tr,{x,0},
               {t_tuple,3,true,
                        #{1 => {t_integer,{0,255}},
                          2 => {t_integer,{0,255}},
                          3 => {t_bitstring,1,false}}}},
           {literal,{42,42,<<"*">>}}]}.
    {move,{integer,12},{x,1}}.
    {move,{integer,7},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_SUITE.erl",2888}]}.
    {call,2,{f,1865}}. % '-binary_aliases/1-fun-5-'/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,1664},[{tr,{x,0},{t_integer,{0,255}}},{integer,124}]}.
    {move,{integer,13},{x,1}}.
    {move,{integer,14},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_SUITE.erl",2889}]}.
    {call,2,{f,1865}}. % '-binary_aliases/1-fun-5-'/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,1663},[{tr,{x,0},{t_integer,{0,255}}},{integer,237}]}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_SUITE.erl",2895}]}.
    {call,1,{f,1808}}. % id/1
    {call,1,{f,1861}}. % '-binary_aliases/1-fun-6-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,{0,15}},
                                     2 => {t_integer,{0,15}},
                                     3 => {t_bitstring,1,false}}}}]}}.
    {test,is_eq_exact,
          {f,1662},
          [{tr,{x,0},
               {t_tuple,3,true,
                        #{1 => {t_integer,{0,15}},
                          2 => {t_integer,{0,15}},
                          3 => {t_bitstring,1,false}}}},
           {literal,{0,0,<<0>>}}]}.
    {'catch',{y,25},{f,1578}}.
    {move,{literal,<<1>>},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_SUITE.erl",2896}]}.
    {call,1,{f,1861}}. % '-binary_aliases/1-fun-6-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,{0,15}},
                                     2 => {t_integer,{0,15}},
                                     3 => {t_bitstring,1,false}}}}]}}.
  {label,1578}.
    {catch_end,{y,25}}.
    {test,is_tagged_tuple,{f,1661},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1661},[{x,1}]}.
    {test,test_arity,{f,1661},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1661},[{x,1},{literal,{badmatch,<<1>>}}]}.
    {move,{literal,<<"ý">>},{x,0}}.
    {line,[{scope,"2"},{location,"bs_match_SUITE.erl",2902}]}.
    {call,1,{f,1808}}. % id/1
    {call,1,{f,1857}}. % '-binary_aliases/1-fun-7-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,4,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,255}},
                                     3 => {t_bitstring,1,false},
                                     4 => {t_bitstring,1,false}}}}]}}.
    {test,is_eq_exact,
          {f,1660},
          [{tr,{x,0},
               {t_tuple,4,true,
                        #{1 => {t_integer,{0,255}},
                          2 => {t_integer,{0,255}},
                          3 => {t_bitstring,1,false},
                          4 => {t_bitstring,1,false}}}},
           {literal,{253,253,<<"ý">>,<<"ý">>}}]}.
    {move,{literal,<<"É">>},{x,0}}.
    {line,[{scope,"2"},{location,"bs_match_SUITE.erl",2908}]}.
    {call,1,{f,1808}}. % id/1
    {call,1,{f,1853}}. % '-binary_aliases/1-fun-8-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,6,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,255}},
                                     3 => {t_bitstring,1,false},
                                     4 => {t_bitstring,1,false},
                                     5 => {t_bitstring,1,false},
                                     6 => {t_bitstring,1,false}}}}]}}.
    {test,is_eq_exact,
          {f,1659},
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
    {line,[{scope,"2"},{location,"bs_match_SUITE.erl",2913}]}.
    {call,1,{f,1808}}. % id/1
    {call,1,{f,1850}}. % '-binary_aliases/1-fun-9-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,1658},
          [{tr,{x,0},{t_bitstring,256,true}},{literal,<<>>}]}.
    {'catch',{y,24},{f,1579}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,"2"},{location,"bs_match_SUITE.erl",2914}]}.
    {call,1,{f,1808}}. % id/1
    {call,1,{f,1850}}. % '-binary_aliases/1-fun-9-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
  {label,1579}.
    {catch_end,{y,24}}.
    {test,is_tagged_tuple,{f,1657},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1657},[{x,1}]}.
    {test,test_arity,{f,1657},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1657},[{x,1},{literal,{badmatch,42}}]}.
    {move,{literal,<<0,0,0,0>>},{x,0}}.
    {line,[{scope,"0"},{location,"bs_match_SUITE.erl",2920}]}.
    {call,1,{f,1808}}. % id/1
    {call,1,{f,1846}}. % '-binary_aliases/1-fun-10-'/1
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
          {f,1656},
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
    {line,[{scope,"0"},{location,"bs_match_SUITE.erl",2922}]}.
    {call,1,{f,1808}}. % id/1
    {call,1,{f,1846}}. % '-binary_aliases/1-fun-10-'/1
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
          {f,1655},
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
    {line,[{scope,"0"},{location,"bs_match_SUITE.erl",2925}]}.
    {call,1,{f,1808}}. % id/1
    {call,1,{f,1844}}. % '-binary_aliases/1-fun-11-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,255}}}}}]}}.
    {test,is_eq_exact,
          {f,1654},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,255}},2 => {t_integer,{0,255}}}}},
           {literal,{255,255}}]}.
    {move,{literal,#{key => <<"Ñ">>}},{x,0}}.
    {line,[{scope,"0"},{location,"bs_match_SUITE.erl",2926}]}.
    {call,1,{f,1808}}. % id/1
    {call,1,{f,1844}}. % '-binary_aliases/1-fun-11-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,255}}}}}]}}.
    {test,is_eq_exact,
          {f,1653},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,255}},2 => {t_integer,{0,255}}}}},
           {literal,{209,209}}]}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{scope,"0"},{location,"bs_match_SUITE.erl",2932}]}.
    {call,1,{f,1808}}. % id/1
    {call,1,{f,1840}}. % '-binary_aliases/1-fun-12-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,'+inf'}},
                                     3 => {t_bitstring,1,false}}}}]}}.
    {test,is_eq_exact,
          {f,1652},
          [{tr,{x,0},
               {t_tuple,3,true,
                        #{1 => {t_integer,{0,255}},
                          2 => {t_integer,{0,'+inf'}},
                          3 => {t_bitstring,1,false}}}},
           {literal,{0,0,<<>>}}]}.
    {move,{literal,<<1,1:1>>},{x,0}}.
    {line,[{scope,"0"},{location,"bs_match_SUITE.erl",2933}]}.
    {call,1,{f,1808}}. % id/1
    {call,1,{f,1840}}. % '-binary_aliases/1-fun-12-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,'+inf'}},
                                     3 => {t_bitstring,1,false}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1651},[{tr,{x,1},{t_integer,{0,255}}},{integer,1}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,
          {f,1651},
          [{tr,{x,1},{t_integer,{0,'+inf'}}},{integer,1}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_match,{f,1651},{x,1},{commands,[{ensure_exactly,1},{'=:=',nil,1,1}]}}.
    {move,{literal,<<"\b*">>},{x,0}}.
    {line,[{scope,"0"},{location,"bs_match_SUITE.erl",2934}]}.
    {call,1,{f,1808}}. % id/1
    {call,1,{f,1840}}. % '-binary_aliases/1-fun-12-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,'+inf'}},
                                     3 => {t_bitstring,1,false}}}}]}}.
    {test,is_eq_exact,
          {f,1650},
          [{tr,{x,0},
               {t_tuple,3,true,
                        #{1 => {t_integer,{0,255}},
                          2 => {t_integer,{0,'+inf'}},
                          3 => {t_bitstring,1,false}}}},
           {literal,{8,42,<<"*">>}}]}.
    {move,{literal,[<<>>|0]},{x,0}}.
    {line,[{scope,"0"},{location,"bs_match_SUITE.erl",2940}]}.
    {call,1,{f,1837}}. % '-binary_aliases/1-fun-13-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,[<<"ÿÿÿÿ">>|32]},{x,0}}.
    {line,[{scope,"0"},{location,"bs_match_SUITE.erl",2941}]}.
    {call,1,{f,1837}}. % '-binary_aliases/1-fun-13-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,23},{f,1580}}.
    {move,{literal,[<<0,0>>|0]},{x,0}}.
    {line,[{scope,"0"},{location,"bs_match_SUITE.erl",2942}]}.
    {call,1,{f,1837}}. % '-binary_aliases/1-fun-13-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1580}.
    {catch_end,{y,23}}.
    {test,is_tagged_tuple,{f,1649},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1649},[{x,1}]}.
    {test,test_arity,{f,1649},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1649},[{x,1},{literal,{badmatch,[<<0,0>>|0]}}]}.
    {'catch',{y,22},{f,1581}}.
    {move,{literal,[<<0,0>>|atom]},{x,0}}.
    {line,[{scope,"."},{location,"bs_match_SUITE.erl",2943}]}.
    {call,1,{f,1837}}. % '-binary_aliases/1-fun-13-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1581}.
    {catch_end,{y,22}}.
    {test,is_tagged_tuple,{f,1648},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1648},[{x,1}]}.
    {test,test_arity,{f,1648},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1648},[{x,1},{literal,{badmatch,[<<0,0>>|atom]}}]}.
    {move,{literal,{<<>>,0}},{x,0}}.
    {line,[{scope,","},{location,"bs_match_SUITE.erl",2949}]}.
    {call,1,{f,1834}}. % '-binary_aliases/1-fun-14-'/1
    {test,is_eq_exact,{f,1647},[{x,0},{integer,0}]}.
    {move,{literal,{<<"ÿÿÿÿ">>,32}},{x,0}}.
    {line,[{scope,","},{location,"bs_match_SUITE.erl",2950}]}.
    {call,1,{f,1834}}. % '-binary_aliases/1-fun-14-'/1
    {test,is_eq_exact,{f,1646},[{x,0},{integer,32}]}.
    {'catch',{y,21},{f,1582}}.
    {move,{literal,{<<0,0>>,0}},{x,0}}.
    {line,[{scope,","},{location,"bs_match_SUITE.erl",2951}]}.
    {call,1,{f,1834}}. % '-binary_aliases/1-fun-14-'/1
  {label,1582}.
    {catch_end,{y,21}}.
    {test,is_tagged_tuple,{f,1645},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1645},[{x,1}]}.
    {test,test_arity,{f,1645},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1645},[{x,1},{literal,{badmatch,{<<0,0>>,0}}}]}.
    {'catch',{y,20},{f,1583}}.
    {move,{literal,{<<0,0>>,atom}},{x,0}}.
    {line,[{scope,"*"},{location,"bs_match_SUITE.erl",2952}]}.
    {call,1,{f,1834}}. % '-binary_aliases/1-fun-14-'/1
  {label,1583}.
    {catch_end,{y,20}}.
    {test,is_tagged_tuple,{f,1644},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1644},[{x,1}]}.
    {test,test_arity,{f,1644},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1644},[{x,1},{literal,{badmatch,{<<0,0>>,atom}}}]}.
    {move,{literal,[{<<>>,0}]},{x,0}}.
    {line,[{scope,"("},{location,"bs_match_SUITE.erl",2958}]}.
    {call,1,{f,1831}}. % '-binary_aliases/1-fun-15-'/1
    {test,is_eq_exact,{f,1643},[{x,0},{integer,0}]}.
    {move,{literal,[{<<"ÿÿÿÿ">>,32}]},{x,0}}.
    {line,[{scope,"("},{location,"bs_match_SUITE.erl",2959}]}.
    {call,1,{f,1831}}. % '-binary_aliases/1-fun-15-'/1
    {test,is_eq_exact,{f,1642},[{x,0},{integer,32}]}.
    {'catch',{y,19},{f,1584}}.
    {move,{literal,[{<<0,0>>,0}]},{x,0}}.
    {line,[{scope,"("},{location,"bs_match_SUITE.erl",2960}]}.
    {call,1,{f,1831}}. % '-binary_aliases/1-fun-15-'/1
  {label,1584}.
    {catch_end,{y,19}}.
    {test,is_tagged_tuple,{f,1641},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1641},[{x,1}]}.
    {test,test_arity,{f,1641},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1641},[{x,1},{literal,{badmatch,[{<<0,0>>,0}]}}]}.
    {'catch',{y,18},{f,1585}}.
    {move,{literal,[{<<0,0>>,atom}]},{x,0}}.
    {line,[{scope,"&"},{location,"bs_match_SUITE.erl",2961}]}.
    {call,1,{f,1831}}. % '-binary_aliases/1-fun-15-'/1
  {label,1585}.
    {catch_end,{y,18}}.
    {test,is_tagged_tuple,{f,1640},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1640},[{x,1}]}.
    {test,test_arity,{f,1640},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1640},[{x,1},{literal,{badmatch,[{<<0,0>>,atom}]}}]}.
    {move,{literal,#{[] => <<"*">>}},{x,0}}.
    {line,[{scope,"$"},{location,"bs_match_SUITE.erl",2964}]}.
    {call,1,{f,1808}}. % id/1
    {call,1,{f,1829}}. % '-binary_aliases/1-fun-16-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,17},{f,1586}}.
    {move,{literal,#{[] => <<>>}},{x,0}}.
    {line,[{scope,"$"},{location,"bs_match_SUITE.erl",2965}]}.
    {call,1,{f,1808}}. % id/1
    {call,1,{f,1829}}. % '-binary_aliases/1-fun-16-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1586}.
    {catch_end,{y,17}}.
    {test,is_tagged_tuple,{f,1639},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1639},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,16},{f,1587}}.
    {move,{atom,atom},{x,0}}.
    {line,[{scope,"#$"},{location,"bs_match_SUITE.erl",2966}]}.
    {call,1,{f,1808}}. % id/1
    {call,1,{f,1829}}. % '-binary_aliases/1-fun-16-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1587}.
    {catch_end,{y,16}}.
    {test,is_tagged_tuple,{f,1638},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1638},[{x,1},2,{atom,function_clause}]}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,"!\""},{location,"bs_match_SUITE.erl",2975}]}.
    {call,1,{f,1808}}. % id/1
    {call,1,{f,1826}}. % '-binary_aliases/1-fun-17-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1637},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope," "},{location,"bs_match_SUITE.erl",2976}]}.
    {call,1,{f,1826}}. % '-binary_aliases/1-fun-17-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1636},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{literal,<<1:1>>},{x,0}}.
    {line,[{scope," "},{location,"bs_match_SUITE.erl",2977}]}.
    {call,1,{f,1826}}. % '-binary_aliases/1-fun-17-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1635},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{atom,atom},{x,0}}.
    {line,[{scope," "},{location,"bs_match_SUITE.erl",2978}]}.
    {call,1,{f,1826}}. % '-binary_aliases/1-fun-17-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {'catch',{y,15},{f,1588}}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{scope," "},{location,"bs_match_SUITE.erl",2983}]}.
    {call,1,{f,1822}}. % '-binary_aliases/1-fun-18-'/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1588}.
    {catch_end,{y,15}}.
    {test,is_tagged_tuple,{f,1634},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1634},[{x,1}]}.
    {test,test_arity,{f,1634},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1634},[{x,1},{literal,{badmatch,<<0>>}}]}.
    {'catch',{y,14},{f,1589}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[30]},{location,"bs_match_SUITE.erl",2984}]}.
    {call,1,{f,1822}}. % '-binary_aliases/1-fun-18-'/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1589}.
    {catch_end,{y,14}}.
    {test,is_tagged_tuple,{f,1633},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1633},[{x,1}]}.
    {test,test_arity,{f,1633},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1633},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,13},{f,1590}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[28]},{location,"bs_match_SUITE.erl",2985}]}.
    {call,1,{f,1822}}. % '-binary_aliases/1-fun-18-'/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1590}.
    {catch_end,{y,13}}.
    {test,is_tagged_tuple,{f,1632},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1632},[{x,1}]}.
    {test,test_arity,{f,1632},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1632},[{x,1},{literal,{badmatch,0}}]}.
    {move,{literal,[<<>>]},{x,0}}.
    {line,[{scope,[26]},{location,"bs_match_SUITE.erl",2988}]}.
    {call,1,{f,1820}}. % '-binary_aliases/1-fun-19-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[26]},{location,"bs_match_SUITE.erl",2990}]}.
    {call,1,{f,1808}}. % id/1
    {move,{x,0},{y,25}}.
    {move,{literal,<<0>>},{x,0}}.
    {call,1,{f,1808}}. % id/1
    {move,{x,0},{y,24}}.
    {move,{integer,0},{x,0}}.
    {call,1,{f,1808}}. % id/1
    {move,{y,24},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{y,25},{x,0}}.
    {init_yregs,{list,[{y,24},{y,25}]}}.
    {call,3,{f,1674}}. % gh_6467/3
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
    {'catch',{y,12},{f,1591}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[26]},{location,"bs_match_SUITE.erl",2991}]}.
    {call,1,{f,1808}}. % id/1
    {move,{x,0},{y,25}}.
    {move,{literal,<<0>>},{x,0}}.
    {call,1,{f,1808}}. % id/1
    {move,{x,0},{y,24}}.
    {move,nil,{x,0}}.
    {call,1,{f,1808}}. % id/1
    {move,{y,24},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{y,25},{x,0}}.
    {init_yregs,{list,[{y,24},{y,25}]}}.
    {call,3,{f,1674}}. % gh_6467/3
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
  {label,1591}.
    {catch_end,{y,12}}.
    {test,is_tagged_tuple,{f,1631},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1631},[{x,1}]}.
    {test,test_arity,{f,1631},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1631},[{x,1},{literal,{badmatch,0}}]}.
    {'catch',{y,11},{f,1592}}.
    {move,{literal,<<7>>},{x,0}}.
    {line,[{scope,[24]},{location,"bs_match_SUITE.erl",2992}]}.
    {call,1,{f,1808}}. % id/1
    {move,{x,0},{y,25}}.
    {move,{literal,<<"!">>},{x,0}}.
    {call,1,{f,1808}}. % id/1
    {move,{x,0},{y,24}}.
    {move,nil,{x,0}}.
    {call,1,{f,1808}}. % id/1
    {move,{y,24},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{y,25},{x,0}}.
    {init_yregs,{list,[{y,24},{y,25}]}}.
    {call,3,{f,1674}}. % gh_6467/3
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
  {label,1592}.
    {catch_end,{y,11}}.
    {test,is_tagged_tuple,{f,1630},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1630},[{x,1}]}.
    {test,test_arity,{f,1630},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1630},[{x,1},{literal,{badmatch,<<7>>}}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",2997}]}.
    {call,1,{f,1817}}. % '-binary_aliases/1-fun-20-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1629},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",2998}]}.
    {call,1,{f,1817}}. % '-binary_aliases/1-fun-20-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1628},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",2999}]}.
    {call,1,{f,1817}}. % '-binary_aliases/1-fun-20-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,true},{x,1}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",3001}]}.
    {call,2,{f,1677}}. % gh6415_a/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,true]}}]}}.
    {test,is_eq_exact,{f,1627},[{tr,{x,0},{t_atom,[error,true]}},{atom,true}]}.
    {move,{atom,false},{x,1}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",3002}]}.
    {call,2,{f,1677}}. % gh6415_a/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,false},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",3003}]}.
    {call,2,{f,1677}}. % gh6415_a/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,not_bool},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",3004}]}.
    {call,2,{f,1677}}. % gh6415_a/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,true},{x,1}}.
    {move,{atom,any},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",3005}]}.
    {call,2,{f,1677}}. % gh6415_a/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,false},{x,1}}.
    {move,{atom,any},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",3006}]}.
    {call,2,{f,1677}}. % gh6415_a/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,<<"c">>},{x,1}}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",3008}]}.
    {call,2,{f,1680}}. % gh6415_b/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1626},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{literal,<<"c">>},{x,1}}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",3009}]}.
    {call,2,{f,1680}}. % gh6415_b/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1625},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{literal,<<>>},{x,1}}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",3010}]}.
    {call,2,{f,1680}}. % gh6415_b/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1624},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{literal,<<>>},{x,1}}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",3011}]}.
    {call,2,{f,1680}}. % gh6415_b/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1623},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{atom,true},{x,1}}.
    {move,{literal,<<"\n">>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",3013}]}.
    {call,2,{f,1684}}. % gh6415_c/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1622},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{atom,false},{x,1}}.
    {move,{literal,<<"\n">>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",3014}]}.
    {call,2,{f,1684}}. % gh6415_c/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,true},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",3015}]}.
    {call,2,{f,1684}}. % gh6415_c/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1621},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{atom,true},{x,1}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",3016}]}.
    {call,2,{f,1684}}. % gh6415_c/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",3018}]}.
    {call,1,{f,1687}}. % gh6415_case_clause/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",3019}]}.
    {call,1,{f,1687}}. % gh6415_case_clause/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",3020}]}.
    {call,1,{f,1687}}. % gh6415_case_clause/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",3022}]}.
    {call,1,{f,1705}}. % gh6415_nomatch/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",3023}]}.
    {call,1,{f,1705}}. % gh6415_nomatch/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,<<"ab">>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",3024}]}.
    {call,1,{f,1705}}. % gh6415_nomatch/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,#{0 => <<>>}},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",3025}]}.
    {call,1,{f,1705}}. % gh6415_nomatch/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,#{0 => <<"*">>}},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",3026}]}.
    {call,1,{f,1705}}. % gh6415_nomatch/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,#{0 => 42}},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",3027}]}.
    {call,1,{f,1705}}. % gh6415_nomatch/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,#{}},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",3028}]}.
    {call,1,{f,1705}}. % gh6415_nomatch/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,{a,tuple}},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",3029}]}.
    {call,1,{f,1705}}. % gh6415_nomatch/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,an_atom},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",3030}]}.
    {call,1,{f,1705}}. % gh6415_nomatch/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",3032}]}.
    {call,1,{f,1808}}. % id/1
    {call,1,{f,1746}}. % gh6415_match_a/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,1620},[{tr,{x,0},{t_integer,{0,255}}},{integer,42}]}.
    {'catch',{y,10},{f,1593}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",3033}]}.
    {call,1,{f,1808}}. % id/1
    {call,1,{f,1746}}. % gh6415_match_a/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
  {label,1593}.
    {catch_end,{y,10}}.
    {test,is_tagged_tuple,{f,1619},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1619},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,9},{f,1594}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[21,22]},{location,"bs_match_SUITE.erl",3034}]}.
    {call,1,{f,1808}}. % id/1
    {call,1,{f,1746}}. % gh6415_match_a/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
  {label,1594}.
    {catch_end,{y,9}}.
    {test,is_tagged_tuple,{f,1618},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1618},[{x,1},2,{atom,function_clause}]}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[19,20]},{location,"bs_match_SUITE.erl",3036}]}.
    {call,1,{f,1808}}. % id/1
    {call,1,{f,1749}}. % gh6415_match_b/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
          {f,1617},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,255}},
                          2 => {t_bitstring,8,false}}}},
           {literal,{42,<<>>}}]}.
    {'catch',{y,8},{f,1595}}.
    {move,{literal,<<1,2>>},{x,0}}.
    {line,[{scope,[18]},{location,"bs_match_SUITE.erl",3037}]}.
    {call,1,{f,1808}}. % id/1
    {call,1,{f,1749}}. % gh6415_match_b/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_bitstring,8,false}}}}]}}.
  {label,1595}.
    {catch_end,{y,8}}.
    {test,is_tagged_tuple,{f,1616},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1616},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,7},{f,1596}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[17,18]},{location,"bs_match_SUITE.erl",3038}]}.
    {call,1,{f,1808}}. % id/1
    {call,1,{f,1749}}. % gh6415_match_b/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_bitstring,8,false}}}}]}}.
  {label,1596}.
    {catch_end,{y,7}}.
    {test,is_tagged_tuple,{f,1615},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1615},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,6},{f,1597}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[15,16]},{location,"bs_match_SUITE.erl",3039}]}.
    {call,1,{f,1808}}. % id/1
    {call,1,{f,1749}}. % gh6415_match_b/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_bitstring,8,false}}}}]}}.
  {label,1597}.
    {catch_end,{y,6}}.
    {test,is_tagged_tuple,{f,1614},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1614},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,5},{f,1598}}.
    {line,[{scope,[13,14]},{location,"bs_match_SUITE.erl",3041}]}.
    {call,0,{f,1752}}. % gh6415_match_c/0
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
  {label,1598}.
    {catch_end,{y,5}}.
    {test,is_tagged_tuple,{f,1613},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1613},[{x,1}]}.
    {test,test_arity,{f,1613},[{x,1},2]}.
    {move,{literal,<<"£">>},{x,0}}.
    {line,[{scope,"\v\f"},{location,"bs_match_SUITE.erl",3043}]}.
    {call,1,{f,1808}}. % id/1
    {call,1,{f,1756}}. % gh6415_match_d/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,4},{f,1599}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,"\v\f"},{location,"bs_match_SUITE.erl",3044}]}.
    {call,1,{f,1808}}. % id/1
    {call,1,{f,1756}}. % gh6415_match_d/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1599}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,1612},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1612},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,3},{f,1600}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,"\t\n"},{location,"bs_match_SUITE.erl",3045}]}.
    {call,1,{f,1808}}. % id/1
    {call,1,{f,1756}}. % gh6415_match_d/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1600}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,1611},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1611},[{x,1},2,{atom,function_clause}]}.
    {move,{literal,<<163,0>>},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_SUITE.erl",3047}]}.
    {call,1,{f,1808}}. % id/1
    {call,1,{f,1759}}. % gh6415_match_e/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<"c\b*">>},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_SUITE.erl",3048}]}.
    {call,1,{f,1808}}. % id/1
    {call,1,{f,1759}}. % gh6415_match_e/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<99,17,255,255,1:1>>},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_SUITE.erl",3049}]}.
    {call,1,{f,1808}}. % id/1
    {call,1,{f,1759}}. % gh6415_match_e/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,2},{f,1601}}.
    {move,{literal,<<"£">>},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_SUITE.erl",3050}]}.
    {call,1,{f,1808}}. % id/1
    {call,1,{f,1759}}. % gh6415_match_e/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1601}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,1610},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1610},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,1},{f,1602}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_SUITE.erl",3051}]}.
    {call,1,{f,1808}}. % id/1
    {call,1,{f,1759}}. % gh6415_match_e/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1602}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,1609},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1609},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,0},{f,1603}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_SUITE.erl",3052}]}.
    {call,1,{f,1808}}. % id/1
    {call,1,{f,1759}}. % gh6415_match_e/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1603}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1608},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1608},[{x,1},2,{atom,function_clause}]}.
    {move,{literal,<<17,15,48,1:1>>},{x,0}}.
    {line,[{scope,[1,2]},{location,"bs_match_SUITE.erl",3054}]}.
    {call,1,{f,1808}}. % id/1
    {call,1,{f,1762}}. % gh6415_match_f/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[error]},
                                   none,
                                   {t_integer,{0,131071}},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,1607},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,
                        {t_integer,{0,131071}},
                        none,none}},
           {integer,7777}]}.
    {move,{literal,<<17,2,105,0:1>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",3055}]}.
    {call,1,{f,1808}}. % id/1
    {call,1,{f,1762}}. % gh6415_match_f/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[error]},
                                   none,
                                   {t_integer,{0,131071}},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,1606},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,
                        {t_integer,{0,131071}},
                        none,none}},
           {integer,1234}]}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",3056}]}.
    {call,1,{f,1808}}. % id/1
    {call,1,{f,1762}}. % gh6415_match_f/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[error]},
                                   none,
                                   {t_integer,{0,131071}},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,1605},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,
                        {t_integer,{0,131071}},
                        none,none}},
           {atom,error}]}.
    {move,{literal,<<"\b*">>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",3057}]}.
    {call,1,{f,1808}}. % id/1
    {call,1,{f,1762}}. % gh6415_match_f/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[error]},
                                   none,
                                   {t_integer,{0,131071}},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,1604},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,
                        {t_integer,{0,131071}},
                        none,none}},
           {atom,error}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,26}.
    return.
  {label,1604}.
    {badmatch,{x,0}}.
  {label,1605}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",3056}]}.
    {badmatch,{x,0}}.
  {label,1606}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",3055}]}.
    {badmatch,{x,0}}.
  {label,1607}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",3054}]}.
    {badmatch,{x,0}}.
  {label,1608}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",3052}]}.
    {badmatch,{x,0}}.
  {label,1609}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",3051}]}.
    {badmatch,{x,0}}.
  {label,1610}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",3050}]}.
    {badmatch,{x,0}}.
  {label,1611}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",3045}]}.
    {badmatch,{x,0}}.
  {label,1612}.
    {line,[{scope,"\b"},{location,"bs_match_SUITE.erl",3044}]}.
    {badmatch,{x,0}}.
  {label,1613}.
    {line,[{scope,"\n"},{location,"bs_match_SUITE.erl",3041}]}.
    {badmatch,{x,0}}.
  {label,1614}.
    {line,[{scope,"\f"},{location,"bs_match_SUITE.erl",3039}]}.
    {badmatch,{x,0}}.
  {label,1615}.
    {line,[{scope,[14]},{location,"bs_match_SUITE.erl",3038}]}.
    {badmatch,{x,0}}.
  {label,1616}.
    {line,[{scope,[16]},{location,"bs_match_SUITE.erl",3037}]}.
    {badmatch,{x,0}}.
  {label,1617}.
    {line,[{scope,[18]},{location,"bs_match_SUITE.erl",3036}]}.
    {badmatch,{x,0}}.
  {label,1618}.
    {line,[{scope,[18]},{location,"bs_match_SUITE.erl",3034}]}.
    {badmatch,{x,0}}.
  {label,1619}.
    {line,[{scope,[20]},{location,"bs_match_SUITE.erl",3033}]}.
    {badmatch,{x,0}}.
  {label,1620}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",3032}]}.
    {badmatch,{x,0}}.
  {label,1621}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",3015}]}.
    {badmatch,{atom,ok}}.
  {label,1622}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",3013}]}.
    {badmatch,{atom,error}}.
  {label,1623}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",3011}]}.
    {badmatch,{atom,ok}}.
  {label,1624}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",3010}]}.
    {badmatch,{atom,ok}}.
  {label,1625}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",3009}]}.
    {badmatch,{atom,error}}.
  {label,1626}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",3008}]}.
    {badmatch,{atom,error}}.
  {label,1627}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",3001}]}.
    {badmatch,{atom,error}}.
  {label,1628}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",2998}]}.
    {badmatch,{atom,ok}}.
  {label,1629}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",2997}]}.
    {badmatch,{atom,error}}.
  {label,1630}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",2992}]}.
    {badmatch,{x,0}}.
  {label,1631}.
    {line,[{scope,[24]},{location,"bs_match_SUITE.erl",2991}]}.
    {badmatch,{x,0}}.
  {label,1632}.
    {line,[{scope,[26]},{location,"bs_match_SUITE.erl",2985}]}.
    {badmatch,{x,0}}.
  {label,1633}.
    {line,[{scope,[28]},{location,"bs_match_SUITE.erl",2984}]}.
    {badmatch,{x,0}}.
  {label,1634}.
    {line,[{scope,[30]},{location,"bs_match_SUITE.erl",2983}]}.
    {badmatch,{x,0}}.
  {label,1635}.
    {line,[{scope," "},{location,"bs_match_SUITE.erl",2977}]}.
    {badmatch,{atom,ok}}.
  {label,1636}.
    {line,[{scope," "},{location,"bs_match_SUITE.erl",2976}]}.
    {badmatch,{atom,ok}}.
  {label,1637}.
    {line,[{scope," "},{location,"bs_match_SUITE.erl",2975}]}.
    {badmatch,{atom,error}}.
  {label,1638}.
    {line,[{scope," "},{location,"bs_match_SUITE.erl",2966}]}.
    {badmatch,{x,0}}.
  {label,1639}.
    {line,[{scope,"\""},{location,"bs_match_SUITE.erl",2965}]}.
    {badmatch,{x,0}}.
  {label,1640}.
    {line,[{scope,"$"},{location,"bs_match_SUITE.erl",2961}]}.
    {badmatch,{x,0}}.
  {label,1641}.
    {line,[{scope,"&"},{location,"bs_match_SUITE.erl",2960}]}.
    {badmatch,{x,0}}.
  {label,1642}.
    {line,[{scope,"("},{location,"bs_match_SUITE.erl",2959}]}.
    {badmatch,{x,0}}.
  {label,1643}.
    {line,[{scope,"("},{location,"bs_match_SUITE.erl",2958}]}.
    {badmatch,{x,0}}.
  {label,1644}.
    {line,[{scope,"("},{location,"bs_match_SUITE.erl",2952}]}.
    {badmatch,{x,0}}.
  {label,1645}.
    {line,[{scope,"*"},{location,"bs_match_SUITE.erl",2951}]}.
    {badmatch,{x,0}}.
  {label,1646}.
    {line,[{scope,","},{location,"bs_match_SUITE.erl",2950}]}.
    {badmatch,{x,0}}.
  {label,1647}.
    {line,[{scope,","},{location,"bs_match_SUITE.erl",2949}]}.
    {badmatch,{x,0}}.
  {label,1648}.
    {line,[{scope,","},{location,"bs_match_SUITE.erl",2943}]}.
    {badmatch,{x,0}}.
  {label,1649}.
    {line,[{scope,"."},{location,"bs_match_SUITE.erl",2942}]}.
    {badmatch,{x,0}}.
  {label,1650}.
    {line,[{scope,"0"},{location,"bs_match_SUITE.erl",2934}]}.
    {badmatch,{x,0}}.
  {label,1651}.
    {line,[{scope,"0"},{location,"bs_match_SUITE.erl",2933}]}.
    {badmatch,{x,0}}.
  {label,1652}.
    {line,[{scope,"0"},{location,"bs_match_SUITE.erl",2932}]}.
    {badmatch,{x,0}}.
  {label,1653}.
    {line,[{scope,"0"},{location,"bs_match_SUITE.erl",2926}]}.
    {badmatch,{x,0}}.
  {label,1654}.
    {line,[{scope,"0"},{location,"bs_match_SUITE.erl",2925}]}.
    {badmatch,{x,0}}.
  {label,1655}.
    {line,[{scope,"0"},{location,"bs_match_SUITE.erl",2921}]}.
    {badmatch,{x,0}}.
  {label,1656}.
    {line,[{scope,"0"},{location,"bs_match_SUITE.erl",2920}]}.
    {badmatch,{x,0}}.
  {label,1657}.
    {line,[{scope,"0"},{location,"bs_match_SUITE.erl",2914}]}.
    {badmatch,{x,0}}.
  {label,1658}.
    {line,[{scope,"2"},{location,"bs_match_SUITE.erl",2913}]}.
    {badmatch,{x,0}}.
  {label,1659}.
    {line,[{scope,"2"},{location,"bs_match_SUITE.erl",2908}]}.
    {badmatch,{x,0}}.
  {label,1660}.
    {line,[{scope,"2"},{location,"bs_match_SUITE.erl",2902}]}.
    {badmatch,{x,0}}.
  {label,1661}.
    {line,[{scope,"2"},{location,"bs_match_SUITE.erl",2896}]}.
    {badmatch,{x,0}}.
  {label,1662}.
    {line,[{scope,"4"},{location,"bs_match_SUITE.erl",2895}]}.
    {badmatch,{x,0}}.
  {label,1663}.
    {line,[{scope,"4"},{location,"bs_match_SUITE.erl",2889}]}.
    {badmatch,{x,0}}.
  {label,1664}.
    {line,[{scope,"4"},{location,"bs_match_SUITE.erl",2888}]}.
    {badmatch,{x,0}}.
  {label,1665}.
    {line,[{scope,"4"},{location,"bs_match_SUITE.erl",2882}]}.
    {badmatch,{x,0}}.
  {label,1666}.
    {line,[{scope,"4"},{location,"bs_match_SUITE.erl",2876}]}.
    {badmatch,{x,0}}.
  {label,1667}.
    {line,[{scope,"4"},{location,"bs_match_SUITE.erl",2869}]}.
    {badmatch,{x,0}}.
  {label,1668}.
    {line,[{scope,"4"},{location,"bs_match_SUITE.erl",2868}]}.
    {badmatch,{x,0}}.
  {label,1669}.
    {line,[{scope,"4"},{location,"bs_match_SUITE.erl",2865}]}.
    {badmatch,{x,0}}.
  {label,1670}.
    {line,[{scope,"4"},{location,"bs_match_SUITE.erl",2864}]}.
    {badmatch,{x,0}}.
  {label,1671}.
    {line,[{scope,"4"},{location,"bs_match_SUITE.erl",2861}]}.
    {badmatch,{x,0}}.
  {label,1672}.
    {line,[{scope,"4"},{location,"bs_match_SUITE.erl",2860}]}.
    {badmatch,{x,0}}.


{function, gh_6467, 3, 1674}.
  {label,1673}.
    {line,[{location,"bs_match_SUITE.erl",3064}]}.
    {func_info,{atom,bs_match_SUITE},{atom,gh_6467},3}.
  {label,1674}.
    {test,is_nil,{f,1675},[{x,2}]}.
    {line,[{location,"bs_match_SUITE.erl",3065}]}.
    {badmatch,{x,0}}.
  {label,1675}.
    {test,bs_start_match3,{f,1673},3,[{x,1}],{x,3}}.
    {bs_match,{f,1673},{x,3},{commands,[{ensure_exactly,8}]}}.
    {move,{atom,a},{x,0}}.
    return.


{function, gh6415_a, 2, 1677}.
  {label,1676}.
    {line,[{location,"bs_match_SUITE.erl",3069}]}.
    {func_info,{atom,bs_match_SUITE},{atom,gh6415_a},2}.
  {label,1677}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[any]},
                                   none,none,none,
                                   {t_bitstring,8,false}}},
                    accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[false,not_bool,true]}}]}}.
    {test,bs_start_match3,{f,1678},2,[{x,0}],{x,0}}.
    {bs_match,{f,1678},{x,0},{commands,[{ensure_exactly,8}]}}.
    {test,is_eq_exact,{f,1678},[{x,1},{atom,true}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,1678}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_b, 2, 1680}.
  {label,1679}.
    {line,[{location,"bs_match_SUITE.erl",3074}]}.
    {func_info,{atom,bs_match_SUITE},{atom,gh6415_b},2}.
  {label,1680}.
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_match,{f,1682},
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
          {f,1681},
          [{tr,{x,1},{t_atom,[false,true]}},{atom,false}]}.
    {test,is_eq_exact,{f,1682},[{tr,{x,0},{t_atom,[false,true]}},{atom,true}]}.
  {label,1681}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1682}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_c, 2, 1684}.
  {label,1683}.
    {line,[{location,"bs_match_SUITE.erl",3079}]}.
    {func_info,{atom,bs_match_SUITE},{atom,gh6415_c},2}.
  {label,1684}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,none,
                                   {t_integer,{42,42}},
                                   none,
                                   {t_bitstring,8,false}}},
                    accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[false,true]}}]}}.
    {test,bs_start_match3,{f,1685},2,[{x,0}],{x,0}}.
    {bs_match,{f,1685},{x,0},{commands,[{ensure_exactly,8}]}}.
    {test,is_eq_exact,{f,1685},[{x,1},{atom,true}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1685}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_case_clause, 1, 1687}.
  {label,1686}.
    {line,[{location,"bs_match_SUITE.erl",3084}]}.
    {func_info,{atom,bs_match_SUITE},{atom,gh6415_case_clause},1}.
  {label,1687}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[a]},
                                   none,
                                   {t_integer,{42,42}},
                                   none,
                                   {t_bitstring,8,false}}}]}}.
    {allocate,5,1}.
    {init_yregs,{list,[{y,1},{y,2},{y,3}]}}.
    {move,{x,0},{y,0}}.
    {'catch',{y,4},{f,1688}}.
    {line,[{location,"bs_match_SUITE.erl",3085}]}.
    {call,1,{f,1697}}. % gh6415_case_clause_a/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1688}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,1695},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1695},[{x,1}]}.
    {test,test_arity,{f,1695},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1695},[{x,1},{literal,{case_clause,0}}]}.
    {'catch',{y,3},{f,1689}}.
    {move,{y,0},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",3086}]}.
    {call,1,{f,1699}}. % gh6415_case_clause_b/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1689}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,1694},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1694},[{x,1}]}.
    {test,test_arity,{f,1694},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1694},[{x,1},{literal,{case_clause,0}}]}.
    {'catch',{y,2},{f,1690}}.
    {move,{y,0},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",3087}]}.
    {call,1,{f,1701}}. % gh6415_case_clause_c/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1690}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,1693},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1693},[{x,1}]}.
    {test,test_arity,{f,1693},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1693},[{x,1},{literal,{case_clause,0}}]}.
    {'catch',{y,1},{f,1691}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",3088}]}.
    {call,1,{f,1703}}. % gh6415_case_clause_d/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1691}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,1692},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1692},[{x,1}]}.
    {test,test_arity,{f,1692},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1692},[{x,1},{literal,{case_clause,0}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,5}.
    return.
  {label,1692}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",3088}]}.
    {badmatch,{x,0}}.
  {label,1693}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",3087}]}.
    {badmatch,{x,0}}.
  {label,1694}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",3086}]}.
    {badmatch,{x,0}}.
  {label,1695}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",3085}]}.
    {badmatch,{x,0}}.


{function, gh6415_case_clause_a, 1, 1697}.
  {label,1696}.
    {line,[{location,"bs_match_SUITE.erl",3091}]}.
    {func_info,{atom,bs_match_SUITE},{atom,gh6415_case_clause_a},1}.
  {label,1697}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[a]},
                                   none,
                                   {t_integer,{42,42}},
                                   none,
                                   {t_bitstring,8,false}}}]}}.
    {line,[{location,"bs_match_SUITE.erl",3092}]}.
    {case_end,{integer,0}}.


{function, gh6415_case_clause_b, 1, 1699}.
  {label,1698}.
    {line,[{location,"bs_match_SUITE.erl",3098}]}.
    {func_info,{atom,bs_match_SUITE},{atom,gh6415_case_clause_b},1}.
  {label,1699}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[a]},
                                   none,
                                   {t_integer,{42,42}},
                                   none,
                                   {t_bitstring,8,false}}}]}}.
    {line,[{location,"bs_match_SUITE.erl",3099}]}.
    {case_end,{integer,0}}.


{function, gh6415_case_clause_c, 1, 1701}.
  {label,1700}.
    {line,[{location,"bs_match_SUITE.erl",3105}]}.
    {func_info,{atom,bs_match_SUITE},{atom,gh6415_case_clause_c},1}.
  {label,1701}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[a]},
                                   none,
                                   {t_integer,{42,42}},
                                   none,
                                   {t_bitstring,8,false}}}]}}.
    {line,[{location,"bs_match_SUITE.erl",3106}]}.
    {case_end,{integer,0}}.


{function, gh6415_case_clause_d, 1, 1703}.
  {label,1702}.
    {line,[{location,"bs_match_SUITE.erl",3112}]}.
    {func_info,{atom,bs_match_SUITE},{atom,gh6415_case_clause_d},1}.
  {label,1703}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[a]},
                                   none,
                                   {t_integer,{42,42}},
                                   none,
                                   {t_bitstring,8,false}}}]}}.
    {line,[{location,"bs_match_SUITE.erl",3113}]}.
    {case_end,{integer,0}}.


{function, gh6415_nomatch, 1, 1705}.
  {label,1704}.
    {line,[{location,"bs_match_SUITE.erl",3119}]}.
    {func_info,{atom,bs_match_SUITE},{atom,gh6415_nomatch},1}.
  {label,1705}.
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
    {line,[{location,"bs_match_SUITE.erl",3120}]}.
    {call,1,{f,1808}}. % id/1
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_match_SUITE.erl",3121}]}.
    {call,1,{f,1717}}. % gh6415_nomatch_a/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",3122}]}.
    {call,1,{f,1719}}. % gh6415_nomatch_b/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,
          {f,1715},
          [{tr,{x,0},{t_atom,[error,ok]}},{tr,{y,0},{t_atom,[error,ok]}}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",3123}]}.
    {call,1,{f,1721}}. % gh6415_nomatch_c/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {test,is_eq_exact,{f,1714},[{tr,{y,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",3124}]}.
    {call,1,{f,1723}}. % gh6415_nomatch_d/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1713},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",3125}]}.
    {call,1,{f,1725}}. % gh6415_nomatch_e/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1712},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",3126}]}.
    {call,1,{f,1728}}. % gh6415_nomatch_f/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1711},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",3127}]}.
    {call,1,{f,1730}}. % gh6415_nomatch_g/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1710},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",3128}]}.
    {call,1,{f,1733}}. % gh6415_nomatch_h/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1709},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",3129}]}.
    {call,1,{f,1736}}. % gh6415_nomatch_i/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1708},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",3130}]}.
    {call,1,{f,1739}}. % gh6415_nomatch_j/1
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
          {f,1707},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,none,
                        {t_tuple,2,true,
                                 #{1 => {t_integer,{0,65535}},
                                   2 => {t_bitstring,8,false}}},
                        none}},
           {atom,error}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",3131}]}.
    {call,1,{f,1742}}. % gh6415_nomatch_k/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{y,1},{x,0}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {line,[{location,"bs_match_SUITE.erl",3132}]}.
    {call,1,{f,1744}}. % gh6415_nomatch_l/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1706},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1706}.
    {badmatch,{atom,ok}}.
  {label,1707}.
    {line,[{location,"bs_match_SUITE.erl",3130}]}.
    {badmatch,{x,0}}.
  {label,1708}.
    {line,[{location,"bs_match_SUITE.erl",3129}]}.
    {badmatch,{atom,ok}}.
  {label,1709}.
    {line,[{location,"bs_match_SUITE.erl",3128}]}.
    {badmatch,{atom,ok}}.
  {label,1710}.
    {line,[{location,"bs_match_SUITE.erl",3127}]}.
    {badmatch,{atom,ok}}.
  {label,1711}.
    {line,[{location,"bs_match_SUITE.erl",3126}]}.
    {badmatch,{atom,ok}}.
  {label,1712}.
    {line,[{location,"bs_match_SUITE.erl",3125}]}.
    {badmatch,{atom,ok}}.
  {label,1713}.
    {line,[{location,"bs_match_SUITE.erl",3124}]}.
    {badmatch,{atom,ok}}.
  {label,1714}.
    {line,[{location,"bs_match_SUITE.erl",3123}]}.
    {badmatch,{atom,error}}.
  {label,1715}.
    {line,[{location,"bs_match_SUITE.erl",3122}]}.
    {badmatch,{x,0}}.


{function, gh6415_nomatch_a, 1, 1717}.
  {label,1716}.
    {line,[{location,"bs_match_SUITE.erl",3135}]}.
    {func_info,{atom,bs_match_SUITE},{atom,gh6415_nomatch_a},1}.
  {label,1717}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_b, 1, 1719}.
  {label,1718}.
    {line,[{location,"bs_match_SUITE.erl",3138}]}.
    {func_info,{atom,bs_match_SUITE},{atom,gh6415_nomatch_b},1}.
  {label,1719}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_c, 1, 1721}.
  {label,1720}.
    {line,[{location,"bs_match_SUITE.erl",3141}]}.
    {func_info,{atom,bs_match_SUITE},{atom,gh6415_nomatch_c},1}.
  {label,1721}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_d, 1, 1723}.
  {label,1722}.
    {line,[{location,"bs_match_SUITE.erl",3144}]}.
    {func_info,{atom,bs_match_SUITE},{atom,gh6415_nomatch_d},1}.
  {label,1723}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_e, 1, 1725}.
  {label,1724}.
    {line,[{location,"bs_match_SUITE.erl",3147}]}.
    {func_info,{atom,bs_match_SUITE},{atom,gh6415_nomatch_e},1}.
  {label,1725}.
    {test,is_map,{f,1726},[{x,0}]}.
    {get_map_elements,{f,1726},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{integer,0},{x,0}]}}.
    {test,is_eq_exact,{f,1726},[{x,0},{literal,<<>>}]}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_match,{f,1726},{x,0},{commands,[{ensure_exactly,8}]}}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1726}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_f, 1, 1728}.
  {label,1727}.
    {line,[{location,"bs_match_SUITE.erl",3150}]}.
    {func_info,{atom,bs_match_SUITE},{atom,gh6415_nomatch_f},1}.
  {label,1728}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_g, 1, 1730}.
  {label,1729}.
    {line,[{location,"bs_match_SUITE.erl",3153}]}.
    {func_info,{atom,bs_match_SUITE},{atom,gh6415_nomatch_g},1}.
  {label,1730}.
    {test,is_map,{f,1731},[{x,0}]}.
    {get_map_elements,{f,1731},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{integer,0},{x,0}]}}.
    {test,bs_start_match3,{f,1731},1,[{x,0}],{x,0}}.
    {bs_match,{f,1731},{x,0},{commands,[{ensure_exactly,8}]}}.
    {bs_match,{f,1731},
              {x,0},
              {commands,[{ensure_exactly,16},{skip,8},{'=:=',nil,8,0}]}}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1731}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_h, 1, 1733}.
  {label,1732}.
    {line,[{location,"bs_match_SUITE.erl",3156}]}.
    {func_info,{atom,bs_match_SUITE},{atom,gh6415_nomatch_h},1}.
  {label,1733}.
    {test,is_map,{f,1734},[{x,0}]}.
    {get_map_elements,{f,1734},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{integer,0},{x,0}]}}.
    {test,bs_start_match3,{f,1734},1,[{x,0}],{x,0}}.
    {bs_match,{f,1734},{x,0},{commands,[{ensure_exactly,0}]}}.
    {bs_match,{f,1734},
              {x,0},
              {commands,[{ensure_exactly,8},
                         {integer,1,{literal,[]},8,1,{x,1}}]}}.
    {test,is_eq_exact,{f,1734},[{tr,{x,1},{t_integer,{0,255}}},{integer,0}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1734}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_i, 1, 1736}.
  {label,1735}.
    {line,[{location,"bs_match_SUITE.erl",3159}]}.
    {func_info,{atom,bs_match_SUITE},{atom,gh6415_nomatch_i},1}.
  {label,1736}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1737},1,[{x,0}],{x,0}}.
    {bs_match,{f,1737},{x,0},{commands,[{ensure_exactly,8}]}}.
    {bs_match,{f,1737},
              {x,0},
              {commands,[{ensure_at_least,16,8},
                         {skip,16},
                         {get_tail,1,8,{x,0}}]}}.
    {allocate,0,1}.
    {line,[{location,"bs_match_SUITE.erl",3160}]}.
    {call_ext,1,{extfunc,erlang,binary_to_list,1}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1737}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_j, 1, 1739}.
  {label,1738}.
    {line,[{location,"bs_match_SUITE.erl",3165}]}.
    {func_info,{atom,bs_match_SUITE},{atom,gh6415_nomatch_j},1}.
  {label,1739}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1740},1,[{x,0}],{x,0}}.
    {bs_match,{f,1740},{x,0},{commands,[{ensure_exactly,8}]}}.
    {bs_match,{f,1740},
              {x,0},
              {commands,[{ensure_at_least,16,8},
                         {integer,1,{literal,[]},16,1,{x,1}},
                         {get_tail,2,8,{x,0}}]}}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,1},{x,0}]}}.
    return.
  {label,1740}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_k, 1, 1742}.
  {label,1741}.
    {line,[{location,"bs_match_SUITE.erl",3170}]}.
    {func_info,{atom,bs_match_SUITE},{atom,gh6415_nomatch_k},1}.
  {label,1742}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_l, 1, 1744}.
  {label,1743}.
    {line,[{location,"bs_match_SUITE.erl",3175}]}.
    {func_info,{atom,bs_match_SUITE},{atom,gh6415_nomatch_l},1}.
  {label,1744}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_match_a, 1, 1746}.
  {label,1745}.
    {line,[{location,"bs_match_SUITE.erl",3183}]}.
    {func_info,{atom,bs_match_SUITE},{atom,gh6415_match_a},1}.
  {label,1746}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1745},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {bs_match,{f,1747},{x,1},{commands,[{ensure_exactly,8}]}}.
    {bs_match,{f,1747},
              {x,1},
              {commands,[{ensure_exactly,8},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {move,{x,2},{x,0}}.
    return.
  {label,1747}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,1745}}.


{function, gh6415_match_b, 1, 1749}.
  {label,1748}.
    {line,[{location,"bs_match_SUITE.erl",3186}]}.
    {func_info,{atom,bs_match_SUITE},{atom,gh6415_match_b},1}.
  {label,1749}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1748},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {bs_match,{f,1750},{x,1},{commands,[{ensure_exactly,8}]}}.
    {bs_match,{f,1750},
              {x,1},
              {commands,[{ensure_at_least,8,8},
                         {integer,2,{literal,[]},8,1,{x,0}},
                         {get_tail,2,8,{x,1}}]}}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    return.
  {label,1750}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,1748}}.


{function, gh6415_match_c, 0, 1752}.
  {label,1751}.
    {line,[{location,"bs_match_SUITE.erl",3189}]}.
    {func_info,{atom,bs_match_SUITE},{atom,gh6415_match_c},0}.
  {label,1752}.
    {allocate,1,0}.
    {'catch',{y,0},{f,1753}}.
    {move,{atom,badarg},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",3190}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,1753}.
    {catch_end,{y,0}}.
    {test,is_map,{f,1754},[{x,0}]}.
    {get_map_elements,{f,1754},{tr,{x,0},{t_map,any,any}},{list,[nil,{x,1}]}}.
    {test,bs_start_match3,{f,1754},2,[{x,1}],{x,1}}.
    {bs_match,{f,1754},{x,1},{commands,[{ensure_exactly,8}]}}.
    {bs_match,{f,1754},
              {x,1},
              {commands,[{ensure_exactly,8},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {move,{x,2},{x,0}}.
    {deallocate,1}.
    return.
  {label,1754}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",3190}]}.
    {case_end,{x,0}}.


{function, gh6415_match_d, 1, 1756}.
  {label,1755}.
    {line,[{location,"bs_match_SUITE.erl",3195}]}.
    {func_info,{atom,bs_match_SUITE},{atom,gh6415_match_d},1}.
  {label,1756}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1755},1,[{x,0}],{x,1}}.
    {bs_match,{f,1757},{x,1},{commands,[{ensure_exactly,8}]}}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1757}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,1755}}.


{function, gh6415_match_e, 1, 1759}.
  {label,1758}.
    {line,[{location,"bs_match_SUITE.erl",3198}]}.
    {func_info,{atom,bs_match_SUITE},{atom,gh6415_match_e},1}.
  {label,1759}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1758},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {bs_match,{f,1760},
              {x,1},
              {commands,[{ensure_at_least,16,1},
                         {skip,8},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_skip_bits2,
          {f,1760},
          [{x,1},
           {x,2},
           1,
           {field_flags,[{anno,[3198,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_match,{f,1760},{x,1},{commands,[{ensure_exactly,0}]}}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_match,{f,1760},
              {x,1},
              {commands,[{ensure_at_least,16,1},
                         {skip,8},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,bs_skip_bits2,
          {f,1760},
          [{x,1},
           {x,3},
           1,
           {field_flags,[{anno,[3198,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_match,{f,1760},{x,1},{commands,[{ensure_exactly,0}]}}.
    {test,is_eq_exact,
          {f,1760},
          [{tr,{x,3},{t_integer,{0,255}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1760}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,1758}}.


{function, gh6415_match_f, 1, 1762}.
  {label,1761}.
    {line,[{location,"bs_match_SUITE.erl",3201}]}.
    {func_info,{atom,bs_match_SUITE},{atom,gh6415_match_f},1}.
  {label,1762}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1763},1,[{x,0}],{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,1763},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {skip,0},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,1763},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[3201,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_match,{f,1763},{x,0},{commands,[{ensure_exactly,0}]}}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_match,{f,1763},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,4,{literal,[]},8,1,{x,4}},
                         {skip,0}]}}.
    {test,bs_get_integer2,
          {f,1763},
          5,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,4},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[3201,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {bs_match,{f,1763},{x,0},{commands,[{ensure_exactly,0}]}}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_match,{f,1763},
              {x,0},
              {commands,[{ensure_exactly,25},
                         {'=:=',nil,8,17},
                         {integer,6,{literal,[]},17,1,{x,1}}]}}.
    {test,is_eq_exact,
          {f,1763},
          [{tr,{x,4},{t_integer,{0,255}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,1763},
          [{tr,{x,5},{t_integer,{0,'+inf'}}},
           {tr,{x,3},{t_integer,{0,'+inf'}}}]}.
    {test,is_eq_exact,
          {f,1763},
          [{tr,{x,1},{t_integer,{0,131071}}},
           {tr,{x,3},{t_integer,{0,'+inf'}}}]}.
    {move,{x,3},{x,0}}.
    return.
  {label,1763}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh_6923, 1, 1765}.
  {label,1764}.
    {line,[{location,"bs_match_SUITE.erl",3208}]}.
    {func_info,{atom,bs_match_SUITE},{atom,gh_6923},1}.
  {label,1765}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{atom,bs_match_SUITE},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",3239}]}.
    {call_ext,1,{extfunc,test_lib,opt_opts,1}}.
    {move,{x,0},{x,1}}.
    {move,
     {literal,
      [{attribute,29,module,bs_match_SUITE_gh_6923},
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
    {line,[{location,"bs_match_SUITE.erl",3240}]}.
    {call_ext,2,{extfunc,compile,forms,2}}.
    {test,is_tagged_tuple,{f,1771},[{x,0},3,{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,1771},[{x,1},{atom,bs_match_SUITE_gh_6923}]}.
    {get_tuple_element,{x,0},2,{x,2}}.
    {move,nil,{x,1}}.
    {move,{atom,bs_match_SUITE_gh_6923},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",3241}]}.
    {call_ext,3,{extfunc,code,load_binary,3}}.
    {test,is_tagged_tuple,{f,1770},[{x,0},2,{atom,module}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,1770},[{x,1},{atom,bs_match_SUITE_gh_6923}]}.
    {move,{literal,[<<"prefix">>,<<"action">>]},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",3242}]}.
    {call_ext,1,{extfunc,bs_match_SUITE_gh_6923,match_route,1}}.
    {test,is_eq_exact,{f,1769},[{x,0},{atom,first}]}.
    {move,{literal,[<<"prefix">>,whatever]},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",3243}]}.
    {call_ext,1,{extfunc,bs_match_SUITE_gh_6923,match_route,1}}.
    {test,is_eq_exact,{f,1768},[{x,0},{atom,second}]}.
    {move,{atom,bs_match_SUITE_gh_6923},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",3244}]}.
    {call_ext,1,{extfunc,code,delete,1}}.
    {move,{atom,bs_match_SUITE_gh_6923},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",3245}]}.
    {call_ext,1,{extfunc,code,purge,1}}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",3248}]}.
    {call,1,{f,1808}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,42},{x,0}}.
    {call,1,{f,1808}}. % id/1
    {test_heap,4,1}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{y,0},{x,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {call,1,{f,1773}}. % do_gh_6923/1
    {'%',{var_info,{x,0},[{type,{t_atom,[first,second]}}]}}.
    {test,is_eq_exact,
          {f,1767},
          [{tr,{x,0},{t_atom,[first,second]}},{atom,first}]}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",3249}]}.
    {call,1,{f,1808}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{literal,{a,b,c}},{x,0}}.
    {call,1,{f,1808}}. % id/1
    {test_heap,4,1}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{y,0},{x,0},{x,0}}.
    {trim,1,0}.
    {call,1,{f,1773}}. % do_gh_6923/1
    {'%',{var_info,{x,0},[{type,{t_atom,[first,second]}}]}}.
    {test,is_eq_exact,
          {f,1766},
          [{tr,{x,0},{t_atom,[first,second]}},{atom,second}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1766}.
    {badmatch,{atom,first}}.
  {label,1767}.
    {line,[{location,"bs_match_SUITE.erl",3248}]}.
    {badmatch,{atom,second}}.
  {label,1768}.
    {line,[{location,"bs_match_SUITE.erl",3243}]}.
    {badmatch,{x,0}}.
  {label,1769}.
    {line,[{location,"bs_match_SUITE.erl",3242}]}.
    {badmatch,{x,0}}.
  {label,1770}.
    {line,[{location,"bs_match_SUITE.erl",3241}]}.
    {badmatch,{x,0}}.
  {label,1771}.
    {line,[{location,"bs_match_SUITE.erl",3240}]}.
    {badmatch,{x,0}}.


{function, do_gh_6923, 1, 1773}.
  {label,1772}.
    {line,[{location,"bs_match_SUITE.erl",3253}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_gh_6923},1}.
  {label,1773}.
    {'%',{var_info,{x,0},[{type,{t_cons,any,nil}}]}}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,bs_start_match3,{f,1772},3,[{x,1}],{x,1}}.
    {bs_match,{f,1772},
              {x,1},
              {commands,[{ensure_exactly,24},{'=:=',nil,24,6382179}]}}.
    {test,is_nonempty_list,{f,1772},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_nil,{f,1772},[{tr,{x,2},{t_list,any,nil}}]}.
    {test,is_integer,{f,1774},[{x,1}]}.
    {move,{atom,first},{x,0}}.
    return.
  {label,1774}.
    {test,is_tuple,{f,1772},[{x,1}]}.
    {move,{atom,second},{x,0}}.
    return.


{function, bs_test_tail, 1, 1776}.
  {label,1775}.
    {line,[{location,"bs_match_SUITE.erl",3256}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bs_test_tail},1}.
  {label,1776}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {call_ext,1,{extfunc,erlang,term_to_binary,1}}.
    {line,[{location,"bs_match_SUITE.erl",3259}]}.
    {call,1,{f,1784}}. % bs_test_tail_skip/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",3261}]}.
    {call,1,{f,1808}}. % id/1
    {bs_create_bin,{f,0},
                   0,1,8,
                   {x,0},
                   {list,[{atom,append},1,8,nil,{x,0},{atom,all}]}}.
    {call,1,{f,1787}}. % bs_test_tail_int/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,255}},nil}}]}}.
    {test,is_eq_exact,
          {f,1782},
          [{tr,{x,0},{t_list,{t_integer,{0,255}},nil}},{literal,"abc"}]}.
    {move,{float,2.0},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",3263}]}.
    {call,1,{f,1808}}. % id/1
    {move,{x,0},{y,1}}.
    {move,{float,3.0},{x,0}}.
    {call,1,{f,1808}}. % id/1
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
    {call,1,{f,1790}}. % bs_test_tail_float/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_float,any},nil}}]}}.
    {test,is_eq_exact,
          {f,1781},
          [{tr,{x,0},{t_list,{t_float,any},nil}},{literal,[2.0,3.0]}]}.
    {'catch',{y,1},{f,1777}}.
    {move,{integer,-1},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",3264}]}.
    {call,1,{f,1808}}. % id/1
    {bs_create_bin,{f,0},
                   0,1,128,
                   {x,0},
                   {list,[{atom,integer},1,1,nil,{x,0},{integer,128}]}}.
    {call,1,{f,1790}}. % bs_test_tail_float/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_float,any},nil}}]}}.
  {label,1777}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,1780},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1780},[{x,1},2,{atom,function_clause}]}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_SUITE.erl",3266}]}.
    {call,1,{f,1808}}. % id/1
    {bs_create_bin,{f,0},
                   0,1,8,
                   {x,0},
                   {list,[{atom,integer},1,1,nil,{x,0},{integer,8}]}}.
    {call,1,{f,1794}}. % bs_test_partial_tail/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,0},{f,1778}}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_SUITE.erl",3267}]}.
    {call,1,{f,1808}}. % id/1
    {bs_create_bin,{f,0},
                   0,1,8,
                   {x,0},
                   {list,[{atom,integer},1,1,nil,{x,0},{integer,8}]}}.
    {call,1,{f,1794}}. % bs_test_partial_tail/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1778}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1779},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1779},[{x,1},2,{atom,function_clause}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,1779}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",3267}]}.
    {badmatch,{x,0}}.
  {label,1780}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",3264}]}.
    {badmatch,{x,0}}.
  {label,1781}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",3263}]}.
    {badmatch,{x,0}}.
  {label,1782}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",3261}]}.
    {badmatch,{x,0}}.


{function, bs_test_tail_skip, 1, 1784}.
  {label,1783}.
    {line,[{location,"bs_match_SUITE.erl",3272}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bs_test_tail_skip},1}.
  {label,1784}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_match,{f,1785},{x,0},{commands,[{ensure_at_least,8,1},{skip,8}]}}.
    {call_only,1,{f,1784}}. % bs_test_tail_skip/1
  {label,1785}.
    {move,{atom,ok},{x,0}}.
    return.


{function, bs_test_tail_int, 1, 1787}.
  {label,1786}.
    {line,[{location,"bs_match_SUITE.erl",3276}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bs_test_tail_int},1}.
  {label,1787}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_match,{f,1788},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,1,{literal,[]},8,1,{x,1}}]}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {line,[{location,"bs_match_SUITE.erl",3277}]}.
    {call,1,{f,1787}}. % bs_test_tail_int/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,255}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1788}.
    {move,nil,{x,0}}.
    return.


{function, bs_test_tail_float, 1, 1790}.
  {label,1789}.
    {line,[{location,"bs_match_SUITE.erl",3281}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bs_test_tail_float},1}.
  {label,1790}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,64}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {test,bs_get_float2,
          {f,1791},
          1,
          [{tr,{x,0},{t_bs_context,64}},
           {integer,64},
           1,
           {field_flags,[{anno,[3281,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {line,[{location,"bs_match_SUITE.erl",3282}]}.
    {call,1,{f,1790}}. % bs_test_tail_float/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_float,any},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1791}.
    {bs_match,{f,1792},{x,0},{commands,[{ensure_exactly,0}]}}.
    {move,nil,{x,0}}.
    return.
  {label,1792}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,1789}}.


{function, bs_test_partial_tail, 1, 1794}.
  {label,1793}.
    {line,[{location,"bs_match_SUITE.erl",3286}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bs_test_partial_tail},1}.
  {label,1794}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,1795},
              {x,0},
              {commands,[{ensure_at_least,8,1},{'=:=',nil,8,0}]}}.
    {call_only,1,{f,1794}}. % bs_test_partial_tail/1
  {label,1795}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_match,{f,1796},{x,0},{commands,[{ensure_exactly,0}]}}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1796}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,1793}}.


{function, otp_19019, 1, 1798}.
  {label,1797}.
    {line,[{location,"bs_match_SUITE.erl",3289}]}.
    {func_info,{atom,bs_match_SUITE},{atom,otp_19019},1}.
  {label,1798}.
    {allocate,0,0}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",3290}]}.
    {call,1,{f,1808}}. % id/1
    {call,1,{f,1802}}. % do_otp_19019/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[ok]},
                                   none,none,none,
                                   {t_bitstring,256,true}}}]}}.
    {test,is_eq_exact,
          {f,1800},
          [{tr,{x,0},
               {t_union,{t_atom,[ok]},none,none,none,{t_bitstring,256,true}}},
           {atom,ok}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",3291}]}.
    {call,1,{f,1808}}. % id/1
    {call,1,{f,1802}}. % do_otp_19019/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[ok]},
                                   none,none,none,
                                   {t_bitstring,256,true}}}]}}.
    {test,is_eq_exact,
          {f,1799},
          [{tr,{x,0},
               {t_union,{t_atom,[ok]},none,none,none,{t_bitstring,256,true}}},
           {literal,<<>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1799}.
    {badmatch,{x,0}}.
  {label,1800}.
    {line,[{location,"bs_match_SUITE.erl",3290}]}.
    {badmatch,{x,0}}.


{function, do_otp_19019, 1, 1802}.
  {label,1801}.
    {line,[{location,"bs_match_SUITE.erl",3295}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_otp_19019},1}.
  {label,1802}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1805},1,[{x,0}],{x,1}}.
    {bs_match,{f,1803},{x,1},{commands,[{ensure_exactly,8}]}}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1803}.
    {allocate,2,2}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{x,1},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {'try',{y,1},{f,1804}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",3304}]}.
    {call,2,{f,1814}}. % '-do_otp_19019/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {try_end,{y,1}}.
    {deallocate,2}.
    return.
  {label,1804}.
    {try_case,{y,1}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.
  {label,1805}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {'try',{y,1},{f,1806}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {call,2,{f,1814}}. % '-do_otp_19019/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {try_end,{y,1}}.
    {deallocate,2}.
    return.
  {label,1806}.
    {try_case,{y,1}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.


{function, id, 1, 1808}.
  {label,1807}.
    {line,[{location,"bs_match_SUITE.erl",3312}]}.
    {func_info,{atom,bs_match_SUITE},{atom,id},1}.
  {label,1808}.
    return.


{function, module_info, 0, 1810}.
  {label,1809}.
    {line,[]}.
    {func_info,{atom,bs_match_SUITE},{atom,module_info},0}.
  {label,1810}.
    {move,{atom,bs_match_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 1812}.
  {label,1811}.
    {line,[]}.
    {func_info,{atom,bs_match_SUITE},{atom,module_info},1}.
  {label,1812}.
    {move,{x,0},{x,1}}.
    {move,{atom,bs_match_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-do_otp_19019/1-lbc$^0/2-0-', 2, 1814}.
  {label,1813}.
    {line,[{location,"bs_match_SUITE.erl",3304}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-do_otp_19019/1-lbc$^0/2-0-'},2}.
  {label,1814}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {test,is_bitstr,{f,1815},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,1815}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-binary_aliases/1-fun-20-', 1, 1817}.
  {label,1816}.
    {line,[{location,"bs_match_SUITE.erl",2994}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-binary_aliases/1-fun-20-'},1}.
  {label,1817}.
    {test,is_eq_exact,{f,1818},[{x,0},{literal,<<>>}]}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_match,{f,1818},{x,0},{commands,[{ensure_exactly,0}]}}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1818}.
    {move,{atom,error},{x,0}}.
    return.


{function, '-binary_aliases/1-fun-19-', 1, 1820}.
  {label,1819}.
    {line,[{location,"bs_match_SUITE.erl",2987}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-binary_aliases/1-fun-19-'},1}.
  {label,1820}.
    {test,is_eq_exact,{f,1819},[{x,0},{literal,[<<>>]}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, '-binary_aliases/1-fun-18-', 1, 1822}.
  {label,1821}.
    {line,[{location,"bs_match_SUITE.erl",2980}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-binary_aliases/1-fun-18-'},1}.
  {label,1822}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1824},1,[{x,0}],{x,1}}.
    {bs_match,{f,1823},
              {x,1},
              {commands,[{ensure_exactly,8},{get_tail,2,1,{x,0}}]}}.
    {line,[{location,"bs_match_SUITE.erl",2981}]}.
    {badmatch,{x,0}}.
  {label,1823}.
    {bs_get_tail,{x,1},{x,0},2}.
    {badmatch,{x,0}}.
  {label,1824}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-17-', 1, 1826}.
  {label,1825}.
    {line,[{location,"bs_match_SUITE.erl",2968}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-binary_aliases/1-fun-17-'},1}.
  {label,1826}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1827},1,[{x,0}],{x,0}}.
    {bs_match,{f,1827},{x,0},{commands,[{ensure_exactly,8}]}}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1827}.
    {move,{atom,error},{x,0}}.
    return.


{function, '-binary_aliases/1-fun-16-', 1, 1829}.
  {label,1828}.
    {line,[{location,"bs_match_SUITE.erl",2963}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-binary_aliases/1-fun-16-'},1}.
  {label,1829}.
    {test,is_map,{f,1828},[{x,0}]}.
    {get_map_elements,{f,1828},{tr,{x,0},{t_map,any,any}},{list,[nil,{x,1}]}}.
    {test,bs_start_match3,{f,1828},2,[{x,1}],{x,1}}.
    {bs_match,{f,1828},{x,1},{commands,[{ensure_exactly,8}]}}.
    {move,{atom,ok},{x,0}}.
    return.


{function, '-binary_aliases/1-fun-15-', 1, 1831}.
  {label,1830}.
    {line,[{location,"bs_match_SUITE.erl",2954}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-binary_aliases/1-fun-15-'},1}.
  {label,1831}.
    {allocate,0,1}.
    {line,[{location,"bs_match_SUITE.erl",2955}]}.
    {call,1,{f,1808}}. % id/1
    {test,is_nonempty_list,{f,1832},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_tuple,{f,1832},[{x,1}]}.
    {test,test_arity,{f,1832},[{x,1},2]}.
    {test,is_nil,{f,1832},[{x,2}]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,bs_start_match3,{f,1832},3,[{x,2}],{x,2}}.
    {test,bs_skip_bits2,
          {f,1832},
          [{x,2},
           {x,1},
           1,
           {field_flags,[{anno,[2955,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_match,{f,1832},{x,2},{commands,[{ensure_exactly,0}]}}.
    {move,{x,1},{x,0}}.
    {deallocate,0}.
    return.
  {label,1832}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-14-', 1, 1834}.
  {label,1833}.
    {line,[{location,"bs_match_SUITE.erl",2945}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-binary_aliases/1-fun-14-'},1}.
  {label,1834}.
    {allocate,0,1}.
    {line,[{location,"bs_match_SUITE.erl",2946}]}.
    {call,1,{f,1808}}. % id/1
    {test,is_tuple,{f,1835},[{x,0}]}.
    {test,test_arity,{f,1835},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {test,bs_start_match3,{f,1835},3,[{x,1}],{x,1}}.
    {test,bs_skip_bits2,
          {f,1835},
          [{x,1},
           {x,2},
           1,
           {field_flags,[{anno,[2946,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_match,{f,1835},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{x,2},{x,0}}.
    {deallocate,0}.
    return.
  {label,1835}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-13-', 1, 1837}.
  {label,1836}.
    {line,[{location,"bs_match_SUITE.erl",2936}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-binary_aliases/1-fun-13-'},1}.
  {label,1837}.
    {allocate,0,1}.
    {line,[{location,"bs_match_SUITE.erl",2937}]}.
    {call,1,{f,1808}}. % id/1
    {test,is_nonempty_list,{f,1838},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,bs_start_match3,{f,1838},3,[{x,1}],{x,1}}.
    {test,bs_skip_bits2,
          {f,1838},
          [{x,1},
           {x,2},
           1,
           {field_flags,[{anno,[2937,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_match,{f,1838},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1838}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-12-', 1, 1840}.
  {label,1839}.
    {line,[{location,"bs_match_SUITE.erl",2928}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-binary_aliases/1-fun-12-'},1}.
  {label,1840}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1842},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {bs_match,{f,1841},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_match,{f,1841},{x,1},{commands,[{ensure_at_least,8,1},{skip,8}]}}.
    {test,bs_get_binary2,
          {f,1841},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[2929,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_match,{f,1841},{x,1},{commands,[{ensure_exactly,0}]}}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_match,{f,1841},{x,1},{commands,[{ensure_at_least,8,1},{skip,8}]}}.
    {test,bs_get_integer2,
          {f,1841},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[2929,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {bs_match,{f,1841},{x,1},{commands,[{ensure_exactly,0}]}}.
    {test_heap,4,5}.
    {put_tuple2,{x,0},{list,[{x,2},{x,4},{x,3}]}}.
    return.
  {label,1841}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_SUITE.erl",2929}]}.
    {badmatch,{x,0}}.
  {label,1842}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-11-', 1, 1844}.
  {label,1843}.
    {line,[{location,"bs_match_SUITE.erl",2924}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-binary_aliases/1-fun-11-'},1}.
  {label,1844}.
    {test,is_map,{f,1843},[{x,0}]}.
    {get_map_elements,{f,1843},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{atom,key},{x,1}]}}.
    {test,bs_start_match3,{f,1843},2,[{x,1}],{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {bs_match,{f,1843},
              {x,1},
              {commands,[{ensure_exactly,8},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_match,{f,1843},
              {x,1},
              {commands,[{ensure_exactly,8},
                         {integer,4,{literal,[]},8,1,{x,2}}]}}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,3},{x,2}]}}.
    return.


{function, '-binary_aliases/1-fun-10-', 1, 1846}.
  {label,1845}.
    {line,[{location,"bs_match_SUITE.erl",2916}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-binary_aliases/1-fun-10-'},1}.
  {label,1846}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1848},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {bs_match,{f,1847},
              {x,1},
              {commands,[{ensure_exactly,32},
                         {integer,2,{literal,[]},8,1,{x,2}},
                         {integer,3,{literal,[]},8,1,{x,3}},
                         {integer,4,{literal,[]},8,1,{x,4}},
                         {integer,5,{literal,[]},8,1,{x,5}}]}}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_match,{f,1847},
              {x,1},
              {commands,[{ensure_exactly,32},
                         {integer,6,{literal,[]},16,1,{x,6}},
                         {integer,7,{literal,[]},16,1,{x,7}}]}}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_match,{f,1847},
              {x,1},
              {commands,[{ensure_exactly,32},
                         {binary,8,{literal,[]},8,1,{x,8}},
                         {binary,9,{literal,[]},24,1,{x,9}}]}}.
    {test_heap,9,10}.
    {put_tuple2,{x,0},
                {list,[{x,8},{x,9},{x,6},{x,7},{x,2},{x,3},{x,4},{x,5}]}}.
    return.
  {label,1847}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_SUITE.erl",2917}]}.
    {badmatch,{x,0}}.
  {label,1848}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-9-', 1, 1850}.
  {label,1849}.
    {line,[{location,"bs_match_SUITE.erl",2910}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-binary_aliases/1-fun-9-'},1}.
  {label,1850}.
    {test,is_eq_exact,{f,1851},[{x,0},{literal,<<>>}]}.
    return.
  {label,1851}.
    {line,[{location,"bs_match_SUITE.erl",2911}]}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-8-', 1, 1853}.
  {label,1852}.
    {line,[{location,"bs_match_SUITE.erl",2904}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-binary_aliases/1-fun-8-'},1}.
  {label,1853}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1855},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {bs_match,{f,1854},
              {x,1},
              {commands,[{ensure_exactly,8},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_match,{f,1854},
              {x,1},
              {commands,[{ensure_exactly,8},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},4}.
    {test_heap,7,4}.
    {put_tuple2,{x,0},{list,[{x,3},{x,2},{x,0},{x,0},{x,0},{x,0}]}}.
    return.
  {label,1854}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_SUITE.erl",2905}]}.
    {badmatch,{x,0}}.
  {label,1855}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-7-', 1, 1857}.
  {label,1856}.
    {line,[{location,"bs_match_SUITE.erl",2898}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-binary_aliases/1-fun-7-'},1}.
  {label,1857}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1859},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {bs_match,{f,1858},
              {x,1},
              {commands,[{ensure_exactly,8},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_match,{f,1858},
              {x,1},
              {commands,[{ensure_exactly,8},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},4}.
    {test_heap,5,4}.
    {put_tuple2,{x,0},{list,[{x,3},{x,2},{x,0},{x,0}]}}.
    return.
  {label,1858}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_SUITE.erl",2899}]}.
    {badmatch,{x,0}}.
  {label,1859}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-6-', 1, 1861}.
  {label,1860}.
    {line,[{location,"bs_match_SUITE.erl",2891}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-binary_aliases/1-fun-6-'},1}.
  {label,1861}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1863},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {bs_match,{f,1862},
              {x,1},
              {commands,[{ensure_exactly,8},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_match,{f,1862},
              {x,1},
              {commands,[{ensure_exactly,8},
                         {integer,3,{literal,[]},4,1,{x,3}},
                         {integer,4,{literal,[]},4,1,{x,4}}]}}.
    {test,is_eq_exact,
          {f,1862},
          [{tr,{x,4},{t_integer,{0,15}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_match,{f,1862},
              {x,1},
              {commands,[{ensure_exactly,8},
                         {integer,4,{literal,[]},8,1,{x,4}}]}}.
    {test,is_eq_exact,
          {f,1862},
          [{tr,{x,4},{t_integer,{0,255}}},{tr,{x,3},{t_integer,{0,15}}}]}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},4}.
    {test_heap,4,4}.
    {put_tuple2,{x,0},{list,[{x,3},{x,2},{x,0}]}}.
    return.
  {label,1862}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_SUITE.erl",2892}]}.
    {badmatch,{x,0}}.
  {label,1863}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-5-', 2, 1865}.
  {label,1864}.
    {line,[{location,"bs_match_SUITE.erl",2884}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-binary_aliases/1-fun-5-'},2}.
  {label,1865}.
    {line,[{location,"bs_match_SUITE.erl",2885}]}.
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
    {bs_match,{f,1866},
              {x,1},
              {commands,[{ensure_exactly,8},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {move,{x,2},{x,0}}.
    return.
  {label,1866}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-4-', 1, 1868}.
  {label,1867}.
    {line,[{location,"bs_match_SUITE.erl",2878}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-binary_aliases/1-fun-4-'},1}.
  {label,1868}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1870},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {bs_match,{f,1869},
              {x,1},
              {commands,[{ensure_exactly,8},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_match,{f,1869},
              {x,1},
              {commands,[{ensure_exactly,8},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},4}.
    {test_heap,4,4}.
    {put_tuple2,{x,0},{list,[{x,3},{x,2},{x,0}]}}.
    return.
  {label,1869}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_SUITE.erl",2879}]}.
    {badmatch,{x,0}}.
  {label,1870}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-3-', 1, 1872}.
  {label,1871}.
    {line,[{location,"bs_match_SUITE.erl",2871}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-binary_aliases/1-fun-3-'},1}.
  {label,1872}.
    {line,[{location,"bs_match_SUITE.erl",2874}]}.
    {call_ext_only,1,{extfunc,lists,sum,1}}.


{function, '-binary_aliases/1-fun-2-', 1, 1874}.
  {label,1873}.
    {line,[{location,"bs_match_SUITE.erl",2867}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-binary_aliases/1-fun-2-'},1}.
  {label,1874}.
    {test,is_tagged_tuple,{f,1873},[{x,0},4,{atom,ba_foo}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,bs_start_match3,{f,1873},2,[{x,1}],{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {bs_match,{f,1873},
              {x,1},
              {commands,[{ensure_exactly,8},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_match,{f,1873},
              {x,1},
              {commands,[{ensure_exactly,8},
                         {integer,4,{literal,[]},4,1,{x,2}},
                         {integer,4,{literal,[]},4,1,{x,4}}]}}.
    {test_heap,4,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,2},{x,4}]}}.
    return.


{function, '-binary_aliases/1-fun-1-', 1, 1876}.
  {label,1875}.
    {line,[{location,"bs_match_SUITE.erl",2863}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-binary_aliases/1-fun-1-'},1}.
  {label,1876}.
    {test,is_tagged_tuple,{f,1875},[{x,0},4,{atom,ba_foo}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,bs_start_match3,{f,1875},2,[{x,1}],{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {bs_match,{f,1875},
              {x,1},
              {commands,[{ensure_exactly,8},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_match,{f,1875},
              {x,1},
              {commands,[{ensure_exactly,8},
                         {integer,4,{literal,[]},8,1,{x,2}}]}}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,3},{x,2}]}}.
    return.


{function, '-binary_aliases/1-fun-0-', 1, 1878}.
  {label,1877}.
    {line,[{location,"bs_match_SUITE.erl",2859}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-binary_aliases/1-fun-0-'},1}.
  {label,1878}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1877},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {bs_match,{f,1879},
              {x,1},
              {commands,[{ensure_exactly,8},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_match,{f,1879},
              {x,1},
              {commands,[{ensure_exactly,8},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,1879}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,1877}}.


{function, '-many_clauses/1-lc$^1/1-1-', 1, 1881}.
  {label,1880}.
    {line,[{location,"bs_match_SUITE.erl",2707}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-many_clauses/1-lc$^1/1-1-'},1}.
  {label,1881}.
    {test,is_nonempty_list,{f,1882},[{x,0}]}.
    {allocate,3,1}.
    {init_yregs,{list,[{y,0}]}}.
    {get_list,{x,0},{y,2},{y,1}}.
    {move,{y,2},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2702}]}.
    {call_ext,1,{extfunc,erlang,phash2,1}}.
    {line,[{location,"bs_match_SUITE.erl",2704}]}.
    {bs_create_bin,{f,0},
                   0,1,16,
                   {x,1},
                   {list,[{atom,integer},
                          1,1,nil,
                          {tr,{x,0},{t_integer,{0,134217727}}},
                          {integer,16}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,2}}.
    {bs_match,{f,1885},
              {x,2},
              {commands,[{ensure_exactly,16},
                         {integer,3,{literal,[]},16,1,{x,3}}]}}.
    {line,[{location,"bs_match_SUITE.erl",2705}]}.
    {gc_bif,'+',{f,0},4,[{y,2},{tr,{x,3},{t_integer,{0,65535}}}],{y,0}}.
    {line,[{location,"bs_match_SUITE.erl",2706}]}.
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
    {call_ext,1,{extfunc,bs_match_SUITE_many_clauses,f,1}}.
    {test,is_eq_exact,{f,1884},[{x,0},{tr,{y,1},{t_number,any}}]}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,1881},2}. % '-many_clauses/1-lc$^1/1-1-'/1
  {label,1882}.
    {test,is_nil,{f,1883},[{x,0}]}.
    return.
  {label,1883}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_match_SUITE.erl",2707}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,1884}.
    {line,[{location,"bs_match_SUITE.erl",2706}]}.
    {badmatch,{x,0}}.
  {label,1885}.
    {line,[{location,"bs_match_SUITE.erl",2704}]}.
    {badmatch,{x,1}}.


{function, '-many_clauses/1-lc$^0/1-0-', 1, 1887}.
  {label,1886}.
    {line,[{location,"bs_match_SUITE.erl",2691}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-many_clauses/1-lc$^0/1-0-'},1}.
  {label,1887}.
    {test,is_nonempty_list,{f,1888},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{x,0},{y,0}}.
    {call,1,{f,1487}}. % one_clause/1
    {swap,{y,0},{x,0}}.
    {call,1,{f,1887}}. % '-many_clauses/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1888}.
    {test,is_nil,{f,1889},[{x,0}]}.
    return.
  {label,1889}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-binary_match_to_asm/1-lc$^0/1-0-', 1, 1891}.
  {label,1890}.
    {line,[{location,"bs_match_SUITE.erl",2670}]}.
    {func_info,{atom,bs_match_SUITE},
               {atom,'-binary_match_to_asm/1-lc$^0/1-0-'},
               1}.
  {label,1891}.
    {'%',
     {var_info,
      {x,0},
      [{type,
        {t_list,
         {t_tuple,2,true,
          #{1 =>
             {t_tuple,3,true,
              #{1 => {t_atom,[bin]},
                2 => {t_integer,{2577,2655}},
                3 => {t_list,{t_tuple,0,false,#{}},nil}}}}},
         nil}}]}}.
    {test,is_nonempty_list,{f,1892},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,1,{f,1891}}. % '-binary_match_to_asm/1-lc$^0/1-0-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,5,true,
                         #{1 => {t_atom,[clause]},
                           2 => {t_integer,{2577,2655}},
                           3 =>
                               {t_cons,
                                   {t_tuple,3,true,
                                       #{1 => {t_atom,[bin]},
                                         2 => {t_integer,{2577,2655}},
                                         3 => {t_list,any,any}}},
                                   nil},
                           4 => nil,
                           5 =>
                               {t_cons,
                                   {t_tuple,3,true,
                                       #{1 => {t_atom,[integer]},
                                         2 => {t_integer,{2577,2655}}}},
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
  {label,1892}.
    return.


{function, '-expand_and_squeeze/1-fun-0-', 1, 1894}.
  {label,1893}.
    {line,[{location,"bs_match_SUITE.erl",2612}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-expand_and_squeeze/1-fun-0-'},1}.
  {label,1894}.
    {test,is_tagged_tuple,{f,1895},[{x,0},4,{atom,bs_match}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1895},[{x,1},2,{atom,f}]}.
    {get_tuple_element,{x,0},3,{x,0}}.
    {test,is_tagged_tuple,{f,1895},[{x,0},2,{atom,commands}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_nonempty_list,{f,1895},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_eq_exact,{f,1895},[{x,1},{literal,{ensure_at_least,16,1}}]}.
    {test,is_nonempty_list,{f,1895},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tagged_tuple,{f,1895},[{x,1},6,{atom,integer}]}.
    {get_tuple_element,{x,1},3,{x,2}}.
    {test,is_eq_exact,{f,1895},[{x,2},{integer,16}]}.
    {get_tuple_element,{x,1},4,{x,1}}.
    {test,is_eq_exact,{f,1895},[{x,1},{integer,1}]}.
    {bif,'=:=',{f,0},[{x,0},nil],{x,0}}.
    return.
  {label,1895}.
    {move,{atom,false},{x,0}}.
    return.


{function, '-em_2/1-lbc$^0/2-0-', 2, 1897}.
  {label,1896}.
    {line,[{location,"bs_match_SUITE.erl",2548}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-em_2/1-lbc$^0/2-0-'},2}.
  {label,1897}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,16,true}}]}}.
    {test,bs_start_match3,{f,1899},2,[{x,0}],{x,2}}.
    {bs_match,{f,1898},
              {x,2},
              {commands,[{ensure_at_least,8,1},
                         {skip,0},
                         {integer,3,{literal,[]},8,1,{x,0}}]}}.
    {line,[{location,"bs_match_SUITE.erl",2549}]}.
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
    {call_only,2,{f,1897}}. % '-em_2/1-lbc$^0/2-0-'/2
  {label,1898}.
    {move,{x,1},{x,0}}.
    return.
  {label,1899}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bspu_1/1-lc$^0/1-0-', 1, 1901}.
  {label,1900}.
    {line,[{location,"bs_match_SUITE.erl",2515}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-bspu_1/1-lc$^0/1-0-'},1}.
  {label,1901}.
    {'%',{var_info,{x,0},[{type,{t_bs_context,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,resume},1,{x,0},{x,0}}.
    {bs_match,{f,1902},
              {x,0},
              {commands,[{ensure_at_least,40,1},
                         {binary,1,{literal,[]},5,8,{x,1}}]}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,1901}}. % '-bspu_1/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1902}.
    {move,nil,{x,0}}.
    return.


{function, '-hangs_forever/1-fun-0-', 1, 1904}.
  {label,1903}.
    {line,[{location,"bs_match_SUITE.erl",2498}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-hangs_forever/1-fun-0-'},1}.
  {label,1904}.
    {call_only,1,{f,1426}}. % hangs_forever_1/1


{function, '-beam_bsm/1-fun-0-', 1, 1906}.
  {label,1905}.
    {line,[{location,"bs_match_SUITE.erl",2171}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-beam_bsm/1-fun-0-'},1}.
  {label,1906}.
    {gc_bif,'*',{f,0},1,[{x,0},{integer,2}],{x,0}}.
    return.


{function, '-num_slots_different/1-lc$^0/1-0-', 1, 1908}.
  {label,1907}.
    {line,[{location,"bs_match_SUITE.erl",2134}]}.
    {func_info,{atom,bs_match_SUITE},
               {atom,'-num_slots_different/1-lc$^0/1-0-'},
               1}.
  {label,1908}.
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
    {test,is_nonempty_list,{f,1909},[{x,0}]}.
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
          {f,1910},
          [{tr,{x,1},{t_bitstring,8,false}},{tr,{y,0},{t_bitstring,8,false}}]}.
    {move,{y,1},{x,0}}.
    {call_last,1,{f,1908},2}. % '-num_slots_different/1-lc$^0/1-0-'/1
  {label,1909}.
    return.
  {label,1910}.
    {badmatch,{x,0}}.


{function, '-constant_propagation_c/0-fun-0-', 1, 1912}.
  {label,1911}.
    {line,[{location,"bs_match_SUITE.erl",2070}]}.
    {func_info,{atom,bs_match_SUITE},
               {atom,'-constant_propagation_c/0-fun-0-'},
               1}.
  {label,1912}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1914},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {bs_match,{f,1913},
              {x,1},
              {commands,[{ensure_exactly,16},
                         {integer,2,{literal,[]},16,1,{x,2}}]}}.
    {move,{x,2},{x,0}}.
    return.
  {label,1913}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_SUITE.erl",2071}]}.
    {badmatch,{x,0}}.
  {label,1914}.
    {badmatch,{x,0}}.


{function, '-bad_literals/1-lc$^3/1-3-', 2, 1916}.
  {label,1915}.
    {line,[{location,"bs_match_SUITE.erl",1954}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-bad_literals/1-lc$^3/1-3-'},2}.
  {label,1916}.
    {'%',{var_info,{x,1},[{type,{t_cons,any,nil}}]}}.
    {test,is_nonempty_list,{f,1917},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,2}}.
    {move,{literal,[0,1,2,3]},{x,0}}.
    {call_only,4,{f,1920}}. % '-bad_literals/1-lc$^4/1-4-'/4
  {label,1917}.
    {test,is_nil,{f,1918},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,1918}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bad_literals/1-lc$^4/1-4-', 4, 1920}.
  {label,1919}.
    {line,[{location,"bs_match_SUITE.erl",1955}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-bad_literals/1-lc$^4/1-4-'},4}.
  {label,1920}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_cons,any,nil}}]}}.
    {test,is_nonempty_list,{f,1921},[{x,0}]}.
    {allocate,4,4}.
    {move,{x,3},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,1},{y,3}}.
    {get_list,{x,0},{x,1},{y,0}}.
    {move,{x,3},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1954}]}.
    {call,2,{f,1138}}. % signed_lit_match/2
    {move,{y,0},{x,4}}.
    {move,{y,2},{x,2}}.
    {move,{y,3},{x,1}}.
    {move,{x,0},{y,3}}.
    {move,{y,1},{x,3}}.
    {trim,3,1}.
    {move,{x,4},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1955}]}.
    {call,4,{f,1920}}. % '-bad_literals/1-lc$^4/1-4-'/4
    {'%',{var_info,{x,0},[{type,{t_cons,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1921}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,1916}}. % '-bad_literals/1-lc$^3/1-3-'/2


{function, '-bad_literals/1-lc$^1/1-1-', 2, 1923}.
  {label,1922}.
    {line,[{location,"bs_match_SUITE.erl",1956}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-bad_literals/1-lc$^1/1-1-'},2}.
  {label,1923}.
    {'%',{var_info,{x,1},[{type,{t_cons,any,nil}}]}}.
    {test,is_nonempty_list,{f,1924},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,2}}.
    {move,{literal,[0,1,2]},{x,0}}.
    {call_only,4,{f,1927}}. % '-bad_literals/1-lc$^2/1-2-'/4
  {label,1924}.
    {test,is_nil,{f,1925},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,1925}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bad_literals/1-lc$^2/1-2-', 4, 1927}.
  {label,1926}.
    {line,[{location,"bs_match_SUITE.erl",1957}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-bad_literals/1-lc$^2/1-2-'},4}.
  {label,1927}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,2}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_cons,any,nil}}]}}.
    {test,is_nonempty_list,{f,1928},[{x,0}]}.
    {allocate,4,4}.
    {move,{x,3},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,1},{y,3}}.
    {get_list,{x,0},{x,1},{y,0}}.
    {move,{x,3},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1956}]}.
    {call,2,{f,1141}}. % unsigned_lit_match/2
    {move,{y,0},{x,4}}.
    {move,{y,2},{x,2}}.
    {move,{y,3},{x,1}}.
    {move,{x,0},{y,3}}.
    {move,{y,1},{x,3}}.
    {trim,3,1}.
    {move,{x,4},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1957}]}.
    {call,4,{f,1927}}. % '-bad_literals/1-lc$^2/1-2-'/4
    {'%',{var_info,{x,0},[{type,{t_cons,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1928}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,1923}}. % '-bad_literals/1-lc$^1/1-1-'/2


{function, '-bad_literals/1-lc$^0/1-0-', 1, 1930}.
  {label,1929}.
    {line,[{location,"bs_match_SUITE.erl",1959}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-bad_literals/1-lc$^0/1-0-'},1}.
  {label,1930}.
    {test,is_nonempty_list,{f,1931},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{x,0},{y,0}}.
    {line,[{location,"bs_match_SUITE.erl",1958}]}.
    {call,1,{f,1144}}. % unicode_match/1
    {swap,{y,0},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1959}]}.
    {call,1,{f,1930}}. % '-bad_literals/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1931}.
    {test,is_nil,{f,1932},[{x,0}]}.
    return.
  {label,1932}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-haystack_2/1-lc$^0/1-0-', 2, 1934}.
  {label,1933}.
    {line,[{location,"bs_match_SUITE.erl",1570}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-haystack_2/1-lc$^0/1-0-'},2}.
  {label,1934}.
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
    {test,is_nonempty_list,{f,1935},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {get_tuple_element,{x,2},0,{x,3}}.
    {get_tuple_element,{x,2},1,{x,2}}.
    {bs_start_match4,{atom,no_fail},4,{x,1},{x,4}}.
    {test,bs_skip_bits2,
          {f,1936},
          [{x,4},
           {x,3},
           8,
           {field_flags,[{anno,[1568,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,1936},
          5,
          [{tr,{x,4},{t_bs_context,8}},
           {tr,{x,2},{t_integer,{10,20}}},
           8,
           {field_flags,[{anno,[1568,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {call,2,{f,1934}}. % '-haystack_2/1-lc$^0/1-0-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1935}.
    return.
  {label,1936}.
    {line,[{location,"bs_match_SUITE.erl",1568}]}.
    {badmatch,{x,1}}.


{function, '-haystack_1/1-lc$^0/1-0-', 2, 1938}.
  {label,1937}.
    {line,[{location,"bs_match_SUITE.erl",1561}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-haystack_1/1-lc$^0/1-0-'},2}.
  {label,1938}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{10,10}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,16,false}}]}}.
    {test,is_nonempty_list,{f,1939},[{x,0}]}.
    {get_tl,{x,0},{x,0}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,2}}.
    {bs_match,{f,1940},{x,2},{commands,[{ensure_exactly,80}]}}.
    {call_only,2,{f,1938}}. % '-haystack_1/1-lc$^0/1-0-'/2
  {label,1939}.
    return.
  {label,1940}.
    {line,[{location,"bs_match_SUITE.erl",1559}]}.
    {badmatch,{x,1}}.


{function, '-bad_size_2/1-lc$^0/1-0-', 1, 1942}.
  {label,1941}.
    {line,[{location,"bs_match_SUITE.erl",1541}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-bad_size_2/1-lc$^0/1-0-'},1}.
  {label,1942}.
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
    {test,is_nonempty_list,{f,1943},[{x,0}]}.
    {get_tl,{x,0},{x,0}}.
    {call_only,1,{f,1942}}. % '-bad_size_2/1-lc$^0/1-0-'/1
  {label,1943}.
    {test,is_nil,
          {f,1944},
          [{tr,{x,0},{t_union,{t_atom,[no_list]},nil,none,none,none}}]}.
    return.
  {label,1944}.
    {move,{literal,{bad_generator,no_list}},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bad_size/1-lbc$^0/2-0-', 2, 1946}.
  {label,1945}.
    {line,[{location,"bs_match_SUITE.erl",1475}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-bad_size/1-lbc$^0/2-0-'},2}.
  {label,1946}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,1947},
              {x,0},
              {commands,[{ensure_at_least,64,1},
                         {integer,2,{literal,[]},64,1,{x,2}}]}}.
    {test,bs_skip_bits2,
          {f,1947},
          [{x,0},
           {x,2},
           1,
           {field_flags,[{anno,[1475,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}]}.
    {call_only,2,{f,1946}}. % '-bad_size/1-lbc$^0/2-0-'/2
  {label,1947}.
    {move,{x,1},{x,0}}.
    return.


{function, '-zero_width/1-fun-0-', 1, 1949}.
  {label,1948}.
    {line,[{location,"bs_match_SUITE.erl",1421}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-zero_width/1-fun-0-'},1}.
  {label,1949}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1951},1,[{x,0}],{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,1950},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,is_eq_exact,{f,1950},[{tr,{x,2},{t_integer,{0,255}}},{integer,42}]}.
    {bs_match,{f,1950},{x,0},{commands,[{ensure_exactly,0}]}}.
    {move,{atom,star},{x,0}}.
    return.
  {label,1950}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_match,{f,1951},{x,0},{commands,[{ensure_exactly,0}]}}.
    {move,{integer,0},{x,0}}.
    return.
  {label,1951}.
    {move,{atom,no_match},{x,0}}.
    return.


{function, '-coverage_beam_ssa_codegen/1-lbc$^0/2-0-', 2, 1953}.
  {label,1952}.
    {line,[{location,"bs_match_SUITE.erl",1031}]}.
    {func_info,{atom,bs_match_SUITE},
               {atom,'-coverage_beam_ssa_codegen/1-lbc$^0/2-0-'},
               2}.
  {label,1953}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,1955},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,is_eq_exact,{f,1954},[{tr,{x,2},{t_integer,{0,255}}},{integer,2}]}.
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
    {call_only,2,{f,1953}}. % '-coverage_beam_ssa_codegen/1-lbc$^0/2-0-'/2
  {label,1954}.
    {call_only,2,{f,1953}}. % '-coverage_beam_ssa_codegen/1-lbc$^0/2-0-'/2
  {label,1955}.
    {move,{atom,ok},{x,0}}.
    return.


{function, '-coverage_trim_4/1-lbc$^0/2-0-', 2, 1957}.
  {label,1956}.
    {line,[{location,"bs_match_SUITE.erl",1014}]}.
    {func_info,{atom,bs_match_SUITE},
               {atom,'-coverage_trim_4/1-lbc$^0/2-0-'},
               2}.
  {label,1957}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,16,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,1958},
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
    {call_only,2,{f,1957}}. % '-coverage_trim_4/1-lbc$^0/2-0-'/2
  {label,1958}.
    {move,{atom,ok},{x,0}}.
    return.


{function, '-do_coverage_bin_to_term_list/1-lbc$^0/2-0-', 2, 1960}.
  {label,1959}.
    {line,[{location,"bs_match_SUITE.erl",928}]}.
    {func_info,{atom,bs_match_SUITE},
               {atom,'-do_coverage_bin_to_term_list/1-lbc$^0/2-0-'},
               2}.
  {label,1960}.
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,1961},[{x,0}]}.
    {allocate,2,2}.
    {move,{x,1},{y,1}}.
    {get_list,{x,0},{x,0},{y,0}}.
    {call_ext,1,{extfunc,erlang,term_to_binary,1}}.
    {line,[{location,"bs_match_SUITE.erl",929}]}.
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
    {line,[{location,"bs_match_SUITE.erl",928}]}.
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
    {call_last,2,{f,1960},2}. % '-do_coverage_bin_to_term_list/1-lbc$^0/2-0-'/2
  {label,1961}.
    {move,{x,1},{x,0}}.
    return.


{function, '-coverage_bc/2-lbc$^0/2-0-', 2, 1963}.
  {label,1962}.
    {line,[{location,"bs_match_SUITE.erl",907}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-coverage_bc/2-lbc$^0/2-0-'},2}.
  {label,1963}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,255}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,1964},[{x,0}]}.
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
    {call_only,2,{f,1963}}. % '-coverage_bc/2-lbc$^0/2-0-'/2
  {label,1964}.
    {move,{x,1},{x,0}}.
    return.


{function, '-coverage/1-fun-4-', 0, 1966}.
  {label,1965}.
    {line,[{location,"bs_match_SUITE.erl",883}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-coverage/1-fun-4-'},0}.
  {label,1966}.
    {move,{atom,whatever},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,throw,1}}.


{function, '-coverage/1-fun-3-', 0, 1968}.
  {label,1967}.
    {line,[{location,"bs_match_SUITE.erl",882}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-coverage/1-fun-3-'},0}.
  {label,1968}.
    {move,{integer,42},{x,0}}.
    return.


{function, '-coverage/1-fun-2-', 2, 1970}.
  {label,1969}.
    {line,[{location,"bs_match_SUITE.erl",826}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-coverage/1-fun-2-'},2}.
  {label,1970}.
    {line,[{location,"bs_match_SUITE.erl",827}]}.
    {gc_bif,'+',{f,0},2,[{x,1},{x,0}],{x,0}}.
    return.


{function, '-coverage/1-fun-1-', 2, 1972}.
  {label,1971}.
    {line,[{location,"bs_match_SUITE.erl",825}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-coverage/1-fun-1-'},2}.
  {label,1972}.
    {gc_bif,'+',{f,0},2,[{x,1},{x,0}],{x,0}}.
    return.


{function, '-coverage/1-fun-0-', 2, 1974}.
  {label,1973}.
    {line,[{location,"bs_match_SUITE.erl",824}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-coverage/1-fun-0-'},2}.
  {label,1974}.
    {gc_bif,'+',{f,0},2,[{x,1},{x,0}],{x,0}}.
    return.


{function, '-bin_and_float/1-lbc$^0/2-0-', 3, 1976}.
  {label,1975}.
    {line,[{location,"bs_match_SUITE.erl",636}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-bin_and_float/1-lbc$^0/2-0-'},3}.
  {label,1976}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,3},3}.
    {test,bs_get_float2,
          {f,1977},
          4,
          [{tr,{x,0},{t_bs_context,1}},
           {x,2},
           63,
           {field_flags,[{anno,[636,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,is_eq_exact,{f,1977},[{tr,{x,4},{t_float,any}},{float,1.0}]}.
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
    {call_only,3,{f,1976}}. % '-bin_and_float/1-lbc$^0/2-0-'/3
  {label,1977}.
    {bs_set_position,{x,0},{x,3}}.
    {test,bs_skip_bits2,
          {f,1978},
          [{x,0},
           {x,2},
           63,
           {field_flags,[{anno,[636,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}]}.
    {call_only,3,{f,1976}}. % '-bin_and_float/1-lbc$^0/2-0-'/3
  {label,1978}.
    {move,{x,1},{x,0}}.
    return.


{function, '-null_fields/1-fun-3-', 0, 1980}.
  {label,1979}.
    {line,[{location,"bs_match_SUITE.erl",307}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-null_fields/1-fun-3-'},0}.
  {label,1980}.
    {move,{atom,tail},{x,0}}.
    return.


{function, '-null_fields/1-fun-1-', 0, 1982}.
  {label,1981}.
    {line,[{location,"bs_match_SUITE.erl",300}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-null_fields/1-fun-1-'},0}.
  {label,1982}.
    {allocate,0,0}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",301}]}.
    {call,1,{f,1808}}. % id/1
    {move,{literal,<<>>},{x,1}}.
    {bs_start_match4,{atom,no_fail},1,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {test,bs_skip_bits2,
          {f,1983},
          [{x,1},
           {x,0},
           1,
           {field_flags,[{anno,[302,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_match,{f,1983},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{atom,tail},{x,0}}.
    {deallocate,0}.
    return.
  {label,1983}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_match,{f,1984},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{atom,empty},{x,0}}.
    {deallocate,0}.
    return.
  {label,1984}.
    {move,{literal,<<>>},{x,0}}.
    {call_last,1,{f,2078},0}. % '-null_fields/1-inlined-0-'/1


{function, '-otp_5269/1-fun-15-', 0, 1986}.
  {label,1985}.
    {line,[{location,"bs_match_SUITE.erl",289}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-otp_5269/1-fun-15-'},0}.
  {label,1986}.
    {move,{literal,<<1,2,3,4>>},{x,0}}.
    {bs_start_match4,{atom,no_fail},0,{x,0},{x,0}}.
    {bs_match,{f,1987},
              {x,0},
              {commands,[{ensure_at_least,16,1},
                         {skip,8},
                         {integer,1,{literal,[]},8,1,{x,1}}]}}.
    {test,bs_skip_bits2,
          {f,1987},
          [{x,0},
           {x,1},
           8,
           {field_flags,[{anno,[290,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_match,{f,1987},{x,0},{commands,[{ensure_exactly,0}]}}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1987}.
    {move,{literal,<<1,2,3,4>>},{x,0}}.
    {call_only,1,{f,2084}}. % '-otp_5269/1-inlined-6-'/1


{function, '-otp_5269/1-fun-13-', 0, 1989}.
  {label,1988}.
    {line,[{location,"bs_match_SUITE.erl",285}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-otp_5269/1-fun-13-'},0}.
  {label,1989}.
    {move,{literal,[<<0,0,0,1>>,<<0,0,0,2>>,<<3>>]},{x,0}}.
    {call_only,1,{f,1991}}. % '-otp_5269/1-lc$^12/1-5-'/1


{function, '-otp_5269/1-lc$^12/1-5-', 1, 1991}.
  {label,1990}.
    {line,[{location,"bs_match_SUITE.erl",286}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-otp_5269/1-lc$^12/1-5-'},1}.
  {label,1991}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {test,is_nonempty_list,{f,1993},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_match,{f,1992},
              {x,1},
              {commands,[{ensure_exactly,32},
                         {integer,2,{literal,[]},32,1,{x,2}}]}}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {call,1,{f,1991}}. % '-otp_5269/1-lc$^12/1-5-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,4294967295}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1992}.
    {call_only,1,{f,1991}}. % '-otp_5269/1-lc$^12/1-5-'/1
  {label,1993}.
    return.


{function, '-otp_5269/1-fun-11-', 0, 1995}.
  {label,1994}.
    {line,[{location,"bs_match_SUITE.erl",280}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-otp_5269/1-fun-11-'},0}.
  {label,1995}.
    {move,{literal,<<2,65,66,67,68>>},{x,0}}.
    {bs_start_match4,{atom,no_fail},0,{x,0},{x,0}}.
    {bs_match,{f,1996},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,1,{literal,[]},8,1,{x,1}}]}}.
    {test,bs_get_binary2,
          {f,1996},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {tr,{x,1},{t_integer,{0,255}}},
           8,
           {field_flags,[{anno,[281,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,0},{x,0},3}.
    {test_heap,4,3}.
    {put_tuple2,{x,0},{list,[{x,1},{x,2},{x,0}]}}.
    return.
  {label,1996}.
    {line,[{location,"bs_match_SUITE.erl",281}]}.
    {badmatch,{literal,<<2,65,66,67,68>>}}.


{function, '-otp_5269/1-fun-10-', 0, 1998}.
  {label,1997}.
    {line,[{location,"bs_match_SUITE.erl",278}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-otp_5269/1-fun-10-'},0}.
  {label,1998}.
    {move,{integer,28},{x,0}}.
    return.


{function, '-otp_5269/1-fun-9-', 0, 2000}.
  {label,1999}.
    {line,[{location,"bs_match_SUITE.erl",274}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-otp_5269/1-fun-9-'},0}.
  {label,2000}.
    {move,{literal,[<<16,0,19>>]},{x,0}}.
    {call_only,1,{f,2002}}. % '-otp_5269/1-lc$^7/1-3-'/1


{function, '-otp_5269/1-lc$^7/1-3-', 1, 2002}.
  {label,2001}.
    {line,[{location,"bs_match_SUITE.erl",275}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-otp_5269/1-lc$^7/1-3-'},1}.
  {label,2002}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {test,is_nonempty_list,{f,2004},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_match,{f,2003},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,2003},
          3,
          [{tr,{x,1},{t_bs_context,8}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[274,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,2003},{x,1},{commands,[{ensure_exactly,0}]}}.
    {line,[{location,"bs_match_SUITE.erl",276}]}.
    {bs_create_bin,{f,0},
                   2,3,8,
                   {x,1},
                   {list,[{atom,integer},
                          1,1,nil,
                          {tr,{x,2},{t_integer,{0,'+inf'}}},
                          {integer,8}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {swap,{x,0},{x,1}}.
    {call_only,2,{f,2006}}. % '-otp_5269/1-lc$^8/1-4-'/2
  {label,2003}.
    {call_only,1,{f,2002}}. % '-otp_5269/1-lc$^7/1-3-'/1
  {label,2004}.
    return.


{function, '-otp_5269/1-lc$^8/1-4-', 2, 2006}.
  {label,2005}.
    {line,[{location,"bs_match_SUITE.erl",276}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-otp_5269/1-lc$^8/1-4-'},2}.
  {label,2006}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {test,is_nonempty_list,{f,2008},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,2}}.
    {bs_match,{f,2007},
              {x,2},
              {commands,[{ensure_exactly,8},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {allocate,1,4}.
    {move,{x,3},{y,0}}.
    {call,2,{f,2006}}. % '-otp_5269/1-lc$^8/1-4-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,255}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,2007}.
    {call_only,2,{f,2006}}. % '-otp_5269/1-lc$^8/1-4-'/2
  {label,2008}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,2002}}. % '-otp_5269/1-lc$^7/1-3-'/1


{function, '-otp_5269/1-fun-6-', 0, 2010}.
  {label,2009}.
    {line,[{location,"bs_match_SUITE.erl",272}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-otp_5269/1-fun-6-'},0}.
  {label,2010}.
    {move,{literal,[<<" ">>]},{x,0}}.
    {call_only,1,{f,2012}}. % '-otp_5269/1-lc$^5/1-2-'/1


{function, '-otp_5269/1-lc$^5/1-2-', 1, 2012}.
  {label,2011}.
    {line,[{location,"bs_match_SUITE.erl",272}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-otp_5269/1-lc$^5/1-2-'},1}.
  {label,2012}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {test,is_nonempty_list,{f,2014},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_match,{f,2013},
              {x,1},
              {commands,[{ensure_exactly,8},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {call,1,{f,2012}}. % '-otp_5269/1-lc$^5/1-2-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,255}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,2013}.
    {call_only,1,{f,2012}}. % '-otp_5269/1-lc$^5/1-2-'/1
  {label,2014}.
    return.


{function, '-otp_5269/1-fun-4-', 0, 2016}.
  {label,2015}.
    {line,[{location,"bs_match_SUITE.erl",270}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-otp_5269/1-fun-4-'},0}.
  {label,2016}.
    {move,{literal,<<" ">>},{x,0}}.
    {bs_start_match4,{atom,no_fail},0,{x,0},{x,0}}.
    {bs_match,{f,2017},
              {x,0},
              {commands,[{ensure_exactly,8},
                         {integer,1,{literal,[]},8,1,{x,1}}]}}.
    {move,{x,1},{x,0}}.
    return.
  {label,2017}.
    {move,{literal,<<" ">>},{x,0}}.
    {call_only,1,{f,2082}}. % '-otp_5269/1-inlined-1-'/1


{function, '-otp_5269/1-fun-2-', 0, 2019}.
  {label,2018}.
    {line,[{location,"bs_match_SUITE.erl",268}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-otp_5269/1-fun-2-'},0}.
  {label,2019}.
    {move,{literal,<<16,0,7>>},{x,0}}.
    {bs_start_match4,{atom,no_fail},0,{x,0},{x,0}}.
    {bs_match,{f,2020},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,1,{literal,[]},8,1,{x,1}}]}}.
    {test,bs_get_integer2,
          {f,2020},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {tr,{x,1},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[268,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {bs_match,{f,2020},{x,0},{commands,[{ensure_exactly,0}]}}.
    {move,{x,1},{x,0}}.
    return.
  {label,2020}.
    {badmatch,{literal,<<16,0,7>>}}.


{function, '-otp_5269/1-fun-1-', 0, 2022}.
  {label,2021}.
    {line,[{location,"bs_match_SUITE.erl",263}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-otp_5269/1-fun-1-'},0}.
  {label,2022}.
    {move,{literal,<<16,0,7>>},{x,0}}.
    {bs_start_match4,{atom,no_fail},0,{x,0},{x,0}}.
    {bs_match,{f,2023},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,1,{literal,[]},8,1,{x,1}}]}}.
    {test,bs_get_integer2,
          {f,2023},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {tr,{x,1},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[264,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {bs_match,{f,2023},{x,0},{commands,[{ensure_exactly,0}]}}.
    {move,{x,1},{x,0}}.
    return.
  {label,2023}.
    {move,{literal,<<16,0,7>>},{x,0}}.
    {call_only,1,{f,2080}}. % '-otp_5269/1-inlined-0-'/1


{function, '-size_shadow_6/2-fun-0-', 5, 2025}.
  {label,2024}.
    {line,[{location,"bs_match_SUITE.erl",220}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-size_shadow_6/2-fun-0-'},5}.
  {label,2025}.
    {'%',{var_info,{x,1},[accepts_match_context]}}.
    {'%',{var_info,{x,3},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_atom,[any]},
                                     2 => {t_atom,[term]},
                                     3 => {t_atom,[goes]}}}}]}}.
    {'%',{var_info,{x,4},[{type,{t_integer,{13,13}}}]}}.
    {test,bs_start_match3,{f,2027},3,[{x,1}],{x,3}}.
    {bs_get_position,{x,3},{x,1},4}.
    {bs_match,{f,2026},
              {x,3},
              {commands,[{ensure_exactly,13},
                         {integer,4,{literal,[]},13,1,{x,4}}]}}.
    {move,{literal,{any,term,goes}},{x,1}}.
    {move,{x,2},{x,3}}.
    {move,{x,0},{x,2}}.
    {move,{x,4},{x,0}}.
    {call_only,4,{f,45}}. % fum/4
  {label,2026}.
    {bs_set_position,{x,3},{x,1}}.
    {bs_get_tail,{x,3},{x,1},4}.
    {call_only,3,{f,2102}}. % '-size_shadow_6/2-inlined-0-'/3
  {label,2027}.
    {call_only,3,{f,2102}}. % '-size_shadow_6/2-inlined-0-'/3


{function, '-size_shadow_5/2-fun-0-', 5, 2029}.
  {label,2028}.
    {line,[{location,"bs_match_SUITE.erl",217}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-size_shadow_5/2-fun-0-'},5}.
  {label,2029}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {'%',{var_info,{x,3},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_atom,[any]},
                                     2 => {t_atom,[term]},
                                     3 => {t_atom,[goes]}}}}]}}.
    {'%',{var_info,{x,4},[{type,{t_integer,{12,12}}}]}}.
    {test,bs_start_match3,{f,2031},3,[{x,0}],{x,3}}.
    {bs_get_position,{x,3},{x,0},4}.
    {bs_match,{f,2030},
              {x,3},
              {commands,[{ensure_exactly,12},
                         {integer,4,{literal,[]},12,1,{x,4}}]}}.
    {move,{x,2},{x,3}}.
    {move,{x,1},{x,2}}.
    {move,{literal,{any,term,goes}},{x,1}}.
    {move,{x,4},{x,0}}.
    {call_only,4,{f,45}}. % fum/4
  {label,2030}.
    {bs_set_position,{x,3},{x,0}}.
    {bs_get_tail,{x,3},{x,0},4}.
    {call_only,3,{f,2100}}. % '-size_shadow_5/2-inlined-0-'/3
  {label,2031}.
    {call_only,3,{f,2100}}. % '-size_shadow_5/2-inlined-0-'/3


{function, '-size_shadow_4/1-fun-1-', 2, 2033}.
  {label,2032}.
    {line,[{location,"bs_match_SUITE.erl",208}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-size_shadow_4/1-fun-1-'},2}.
  {label,2033}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{8,8}}}]}}.
    {test,bs_start_match3,{f,2034},1,[{x,0}],{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,2034},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,2034},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[209,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,2034},
          4,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[209,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {bs_match,{f,2034},{x,0},{commands,[{ensure_exactly,0}]}}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_match,{f,2034},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,5,{literal,[]},8,1,{x,1}}]}}.
    {test,bs_get_integer2,
          {f,2034},
          5,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,1},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[209,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_get_integer2,
          {f,2034},
          6,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,1},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[209,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {bs_match,{f,2034},{x,0},{commands,[{ensure_exactly,0}]}}.
    {test,is_eq_exact,
          {f,2034},
          [{tr,{x,6},{t_integer,{0,'+inf'}}},{tr,{x,1},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,2034},
          [{tr,{x,2},{t_integer,{0,255}}},{tr,{x,1},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,2034},
          [{tr,{x,3},{t_integer,{0,'+inf'}}},
           {tr,{x,5},{t_integer,{0,'+inf'}}}]}.
    {test,is_eq_exact,
          {f,2034},
          [{tr,{x,4},{t_integer,{0,'+inf'}}},{tr,{x,1},{t_integer,{0,255}}}]}.
    {move,{x,5},{x,0}}.
    return.
  {label,2034}.
    {move,{atom,no},{x,0}}.
    return.


{function, '-size_shadow_4/1-fun-3-', 2, 2036}.
  {label,2035}.
    {line,[{location,"bs_match_SUITE.erl",202}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-size_shadow_4/1-fun-3-'},2}.
  {label,2036}.
    {'%',{var_info,{x,1},[{type,{t_integer,{8,8}}}]}}.
    {test,bs_start_match3,{f,2037},1,[{x,0}],{x,0}}.
    {bs_match,{f,2037},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,1,{literal,[]},8,1,{x,1}}]}}.
    {test,bs_get_integer2,
          {f,2037},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,1},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[203,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,2037},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,1},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[203,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_match,{f,2037},{x,0},{commands,[{ensure_exactly,0}]}}.
    {test,is_eq_exact,
          {f,2037},
          [{tr,{x,3},{t_integer,{0,'+inf'}}},{tr,{x,1},{t_integer,{0,255}}}]}.
    {move,{x,2},{x,0}}.
    return.
  {label,2037}.
    {move,{atom,no},{x,0}}.
    return.


{function, '-size_shadow_4/1-fun-4-', 2, 2039}.
  {label,2038}.
    {line,[{location,"bs_match_SUITE.erl",199}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-size_shadow_4/1-fun-4-'},2}.
  {label,2039}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{8,8}}}]}}.
    {test,bs_start_match3,{f,2040},1,[{x,0}],{x,0}}.
    {bs_match,{f,2040},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,1,{literal,[]},8,1,{x,1}}]}}.
    {test,bs_get_integer2,
          {f,2040},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,1},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[199,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,2040},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,1},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[199,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_match,{f,2040},{x,0},{commands,[{ensure_exactly,0}]}}.
    {test,is_eq_exact,
          {f,2040},
          [{tr,{x,3},{t_integer,{0,'+inf'}}},{tr,{x,1},{t_integer,{0,255}}}]}.
    {move,{x,2},{x,0}}.
    return.
  {label,2040}.
    {move,{atom,no},{x,0}}.
    return.


{function, '-size_shadow_3/0-fun-1-', 1, 2042}.
  {label,2041}.
    {line,[{location,"bs_match_SUITE.erl",193}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-size_shadow_3/0-fun-1-'},1}.
  {label,2042}.
    {test_heap,4,1}.
    {put_tuple2,{x,1},{list,[{atom,tag},{x,0},{x,0}]}}.
    {test,bs_start_match3,{f,2043},2,[{x,0}],{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {bs_match,{f,2043},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,bs_get_integer2,
          {f,2043},
          4,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[194,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_integer2,
          {f,2043},
          5,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[194,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {bs_match,{f,2043},{x,0},{commands,[{ensure_exactly,0}]}}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_match,{f,2043},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,6,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,2043},
          6,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[194,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,bs_get_integer2,
          {f,2043},
          7,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[194,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,7}}.
    {bs_match,{f,2043},{x,0},{commands,[{ensure_exactly,0}]}}.
    {test,is_eq_exact,
          {f,2043},
          [{tr,{x,7},{t_integer,{0,'+inf'}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,2043},
          [{tr,{x,3},{t_integer,{0,255}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,2043},
          [{tr,{x,4},{t_integer,{0,'+inf'}}},
           {tr,{x,6},{t_integer,{0,'+inf'}}}]}.
    {test,is_eq_exact,
          {f,2043},
          [{tr,{x,5},{t_integer,{0,'+inf'}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {move,{x,6},{x,0}}.
    return.
  {label,2043}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,2098}}. % '-size_shadow_3/0-inlined-2-'/1


{function, '-size_shadow_3/0-fun-3-', 1, 2045}.
  {label,2044}.
    {line,[{location,"bs_match_SUITE.erl",190}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-size_shadow_3/0-fun-3-'},1}.
  {label,2045}.
    {test_heap,5,1}.
    {put_list,{x,0},nil,{x,1}}.
    {put_tuple2,{x,1},{list,[{atom,tag},{x,1}]}}.
    {test,bs_start_match3,{f,2046},2,[{x,0}],{x,0}}.
    {bs_match,{f,2046},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,2046},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[191,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,2046},
          4,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[191,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {bs_match,{f,2046},{x,0},{commands,[{ensure_exactly,0}]}}.
    {test,is_eq_exact,
          {f,2046},
          [{tr,{x,4},{t_integer,{0,'+inf'}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {move,{x,3},{x,0}}.
    return.
  {label,2046}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,2096}}. % '-size_shadow_3/0-inlined-1-'/1


{function, '-size_shadow_3/0-fun-4-', 1, 2048}.
  {label,2047}.
    {line,[{location,"bs_match_SUITE.erl",189}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-size_shadow_3/0-fun-4-'},1}.
  {label,2048}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,2047},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {bs_match,{f,2049},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,2049},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[189,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,2049},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[189,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {bs_match,{f,2049},{x,1},{commands,[{ensure_exactly,0}]}}.
    {test,is_eq_exact,
          {f,2049},
          [{tr,{x,4},{t_integer,{0,'+inf'}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {move,{x,3},{x,0}}.
    return.
  {label,2049}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,2047}}.


{function, '-size_shadow_2/1-fun-1-', 2, 2051}.
  {label,2050}.
    {line,[{location,"bs_match_SUITE.erl",182}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-size_shadow_2/1-fun-1-'},2}.
  {label,2051}.
    {'%',{var_info,{x,1},[{type,{t_integer,{8,8}}}]}}.
    {test_heap,3,1}.
    {put_tuple2,{x,1},{list,[{x,0},{x,0}]}}.
    {test,bs_start_match3,{f,2052},2,[{x,0}],{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {bs_match,{f,2052},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,bs_get_integer2,
          {f,2052},
          4,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[183,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {bs_match,{f,2052},{x,0},{commands,[{ensure_exactly,0}]}}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_match,{f,2052},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,5,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,2052},
          5,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[183,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {bs_match,{f,2052},{x,0},{commands,[{ensure_exactly,0}]}}.
    {test,is_eq_exact,
          {f,2052},
          [{tr,{x,3},{t_integer,{0,255}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,2052},
          [{tr,{x,4},{t_integer,{0,'+inf'}}},
           {tr,{x,5},{t_integer,{0,'+inf'}}}]}.
    {move,{x,5},{x,0}}.
    return.
  {label,2052}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,2094}}. % '-size_shadow_2/1-inlined-2-'/1


{function, '-size_shadow_2/1-fun-3-', 2, 2054}.
  {label,2053}.
    {line,[{location,"bs_match_SUITE.erl",179}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-size_shadow_2/1-fun-3-'},2}.
  {label,2054}.
    {'%',{var_info,{x,1},[{type,{t_integer,{8,8}}}]}}.
    {test_heap,2,1}.
    {put_list,{x,0},nil,{x,1}}.
    {test,bs_start_match3,{f,2055},2,[{x,0}],{x,0}}.
    {bs_match,{f,2055},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,2055},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[180,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,2055},{x,0},{commands,[{ensure_exactly,0}]}}.
    {move,{x,2},{x,0}}.
    return.
  {label,2055}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,2092}}. % '-size_shadow_2/1-inlined-1-'/1


{function, '-size_shadow_2/1-fun-4-', 2, 2057}.
  {label,2056}.
    {line,[{location,"bs_match_SUITE.erl",178}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-size_shadow_2/1-fun-4-'},2}.
  {label,2057}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{8,8}}}]}}.
    {test,bs_start_match3,{f,2059},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {bs_match,{f,2058},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,2058},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[178,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,2058},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{x,2},{x,0}}.
    return.
  {label,2058}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {call_only,1,{f,2090}}. % '-size_shadow_2/1-inlined-0-'/1
  {label,2059}.
    {call_only,1,{f,2090}}. % '-size_shadow_2/1-inlined-0-'/1


{function, '-size_shadow_1/0-fun-1-', 1, 2061}.
  {label,2060}.
    {line,[{location,"bs_match_SUITE.erl",169}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-size_shadow_1/0-fun-1-'},1}.
  {label,2061}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,2063},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {bs_match,{f,2062},
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
    {call_only,2,{f,2065}}. % '-size_shadow_1/0-fun-0-'/2
  {label,2062}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_SUITE.erl",170}]}.
    {badmatch,{x,0}}.
  {label,2063}.
    {badmatch,{x,0}}.


{function, '-size_shadow_1/0-fun-0-', 2, 2065}.
  {label,2064}.
    {line,[{location,"bs_match_SUITE.erl",171}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-size_shadow_1/0-fun-0-'},2}.
  {label,2065}.
    {test,is_nonempty_list,{f,2064},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,3}}.
    {test,is_nil,{f,2064},[{x,3}]}.
    {test,is_tuple,{f,2064},[{x,1}]}.
    {test,test_arity,{f,2064},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_map,{f,2064},[{x,3}]}.
    {get_map_elements,{f,2064},
                      {tr,{x,3},{t_map,any,any}},
                      {list,[{atom,key2},{x,3},{atom,key1},{x,4}]}}.
    {test,bs_start_match3,{f,2064},5,[{x,3}],{x,3}}.
    {bs_match,{f,2064},
              {x,3},
              {commands,[{ensure_at_least,8,1},
                         {integer,5,{literal,[]},8,1,{x,5}}]}}.
    {test,bs_get_integer2,
          {f,2064},
          6,
          [{tr,{x,3},{t_bs_context,1}},
           {tr,{x,5},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[171,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {bs_match,{f,2064},{x,3},{commands,[{ensure_exactly,0}]}}.
    {test,bs_start_match3,{f,2064},7,[{x,4}],{x,3}}.
    {bs_match,{f,2064},
              {x,3},
              {commands,[{ensure_at_least,8,1},
                         {integer,7,{literal,[]},8,1,{x,4}}]}}.
    {test,bs_get_integer2,
          {f,2064},
          7,
          [{tr,{x,3},{t_bs_context,1}},
           {tr,{x,4},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[171,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,7}}.
    {bs_match,{f,2064},{x,3},{commands,[{ensure_exactly,0}]}}.
    {test,is_eq_exact,{f,2064},[{tr,{x,4},{t_integer,{0,255}}},{x,2}]}.
    {test,is_eq_exact,
          {f,2064},
          [{tr,{x,5},{t_integer,{0,255}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,2064},
          [{tr,{x,6},{t_integer,{0,'+inf'}}},
           {tr,{x,7},{t_integer,{0,'+inf'}}}]}.
    {get_tuple_element,{x,1},1,{x,3}}.
    {test,is_eq_exact,{f,2064},[{x,3},{tr,{x,2},{t_integer,{0,255}}}]}.
    {move,{x,7},{x,0}}.
    return.


{function, '-size_shadow_1/0-fun-3-', 1, 2067}.
  {label,2066}.
    {line,[{location,"bs_match_SUITE.erl",166}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-size_shadow_1/0-fun-3-'},1}.
  {label,2067}.
    {test_heap,4,1}.
    {put_list,{x,0},nil,{x,1}}.
    {put_list,{x,0},{x,1},{x,1}}.
    {test,bs_start_match3,{f,2068},2,[{x,0}],{x,2}}.
    {bs_match,{f,2068},
              {x,2},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,bs_get_integer2,
          {f,2068},
          4,
          [{tr,{x,2},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[167,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {bs_match,{f,2068},{x,2},{commands,[{ensure_exactly,0}]}}.
    {bs_start_match4,{atom,no_fail},5,{x,0},{x,0}}.
    {bs_match,{f,2068},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,5,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,2068},
          5,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[167,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {bs_match,{f,2068},{x,0},{commands,[{ensure_exactly,0}]}}.
    {test,is_eq_exact,
          {f,2068},
          [{tr,{x,3},{t_integer,{0,255}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,2068},
          [{tr,{x,4},{t_integer,{0,'+inf'}}},
           {tr,{x,5},{t_integer,{0,'+inf'}}}]}.
    {move,{x,5},{x,0}}.
    return.
  {label,2068}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,2088}}. % '-size_shadow_1/0-inlined-2-'/1


{function, '-size_shadow_1/0-fun-5-', 1, 2070}.
  {label,2069}.
    {line,[{location,"bs_match_SUITE.erl",163}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-size_shadow_1/0-fun-5-'},1}.
  {label,2070}.
    {test_heap,2,1}.
    {put_list,{x,0},nil,{x,1}}.
    {test,bs_start_match3,{f,2071},2,[{x,0}],{x,0}}.
    {bs_match,{f,2071},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,2071},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[164,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,2071},{x,0},{commands,[{ensure_exactly,0}]}}.
    {move,{x,2},{x,0}}.
    return.
  {label,2071}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,2086}}. % '-size_shadow_1/0-inlined-1-'/1


{function, '-size_shadow_1/0-fun-6-', 1, 2073}.
  {label,2072}.
    {line,[{location,"bs_match_SUITE.erl",162}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-size_shadow_1/0-fun-6-'},1}.
  {label,2073}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,2072},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {bs_match,{f,2074},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,2074},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[162,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,2074},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{x,2},{x,0}}.
    return.
  {label,2074}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,2072}}.


{function, '-mos_int_fun/1-inlined-0-', 1, 2076}.
  {label,2075}.
    {line,[{location,"bs_match_SUITE.erl",1732}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-mos_int_fun/1-inlined-0-'},1}.
  {label,2076}.
    {jump,{f,2075}}.


{function, '-null_fields/1-inlined-0-', 1, 2078}.
  {label,2077}.
    {line,[{location,"bs_match_SUITE.erl",302}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-null_fields/1-inlined-0-'},1}.
  {label,2078}.
    {jump,{f,2077}}.


{function, '-otp_5269/1-inlined-0-', 1, 2080}.
  {label,2079}.
    {line,[{location,"bs_match_SUITE.erl",264}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-otp_5269/1-inlined-0-'},1}.
  {label,2080}.
    {jump,{f,2079}}.


{function, '-otp_5269/1-inlined-1-', 1, 2082}.
  {label,2081}.
    {line,[{location,"bs_match_SUITE.erl",270}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-otp_5269/1-inlined-1-'},1}.
  {label,2082}.
    {jump,{f,2081}}.


{function, '-otp_5269/1-inlined-6-', 1, 2084}.
  {label,2083}.
    {line,[{location,"bs_match_SUITE.erl",290}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-otp_5269/1-inlined-6-'},1}.
  {label,2084}.
    {jump,{f,2083}}.


{function, '-size_shadow_1/0-inlined-1-', 1, 2086}.
  {label,2085}.
    {line,[{location,"bs_match_SUITE.erl",164}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-size_shadow_1/0-inlined-1-'},1}.
  {label,2086}.
    {jump,{f,2085}}.


{function, '-size_shadow_1/0-inlined-2-', 1, 2088}.
  {label,2087}.
    {line,[{location,"bs_match_SUITE.erl",167}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-size_shadow_1/0-inlined-2-'},1}.
  {label,2088}.
    {jump,{f,2087}}.


{function, '-size_shadow_2/1-inlined-0-', 1, 2090}.
  {label,2089}.
    {line,[{location,"bs_match_SUITE.erl",178}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-size_shadow_2/1-inlined-0-'},1}.
  {label,2090}.
    {jump,{f,2089}}.


{function, '-size_shadow_2/1-inlined-1-', 1, 2092}.
  {label,2091}.
    {line,[{location,"bs_match_SUITE.erl",180}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-size_shadow_2/1-inlined-1-'},1}.
  {label,2092}.
    {jump,{f,2091}}.


{function, '-size_shadow_2/1-inlined-2-', 1, 2094}.
  {label,2093}.
    {line,[{location,"bs_match_SUITE.erl",183}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-size_shadow_2/1-inlined-2-'},1}.
  {label,2094}.
    {jump,{f,2093}}.


{function, '-size_shadow_3/0-inlined-1-', 1, 2096}.
  {label,2095}.
    {line,[{location,"bs_match_SUITE.erl",191}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-size_shadow_3/0-inlined-1-'},1}.
  {label,2096}.
    {jump,{f,2095}}.


{function, '-size_shadow_3/0-inlined-2-', 1, 2098}.
  {label,2097}.
    {line,[{location,"bs_match_SUITE.erl",194}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-size_shadow_3/0-inlined-2-'},1}.
  {label,2098}.
    {jump,{f,2097}}.


{function, '-size_shadow_5/2-inlined-0-', 3, 2100}.
  {label,2099}.
    {line,[{location,"bs_match_SUITE.erl",217}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-size_shadow_5/2-inlined-0-'},3}.
  {label,2100}.
    {jump,{f,2099}}.


{function, '-size_shadow_6/2-inlined-0-', 3, 2102}.
  {label,2101}.
    {line,[{location,"bs_match_SUITE.erl",220}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-size_shadow_6/2-inlined-0-'},3}.
  {label,2102}.
    {jump,{f,2101}}.
