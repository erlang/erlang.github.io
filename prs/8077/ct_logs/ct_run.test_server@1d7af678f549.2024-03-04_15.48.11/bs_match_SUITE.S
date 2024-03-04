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

{labels, 2062}.


{function, suite, 0, 2}.
  {label,1}.
    {line,[{location,"bs_match_SUITE.erl",65}]}.
    {func_info,{atom,bs_match_SUITE},{atom,suite},0}.
  {label,2}.
    {move,{literal,[{ct_hooks,[ts_install_cth]},{timetrap,{minutes,1}}]},
          {x,0}}.
    return.


{function, all, 0, 4}.
  {label,3}.
    {line,[{location,"bs_match_SUITE.erl",69}]}.
    {func_info,{atom,bs_match_SUITE},{atom,all},0}.
  {label,4}.
    {move,{literal,[{group,p}]},{x,0}}.
    return.


{function, groups, 0, 6}.
  {label,5}.
    {line,[{location,"bs_match_SUITE.erl",72}]}.
    {func_info,{atom,bs_match_SUITE},{atom,groups},0}.
  {label,6}.
    {allocate,0,0}.
    {line,[{location,"bs_match_SUITE.erl",73}]}.
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
    {line,[{location,"bs_match_SUITE.erl",101}]}.
    {func_info,{atom,bs_match_SUITE},{atom,init_per_suite},1}.
  {label,8}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{atom,bs_match_SUITE},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",102}]}.
    {call_ext,1,{extfunc,test_lib,recompile,1}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, end_per_suite, 1, 10}.
  {label,9}.
    {line,[{location,"bs_match_SUITE.erl",105}]}.
    {func_info,{atom,bs_match_SUITE},{atom,end_per_suite},1}.
  {label,10}.
    {move,{atom,ok},{x,0}}.
    return.


{function, init_per_group, 2, 12}.
  {label,11}.
    {line,[{location,"bs_match_SUITE.erl",108}]}.
    {func_info,{atom,bs_match_SUITE},{atom,init_per_group},2}.
  {label,12}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_group, 2, 14}.
  {label,13}.
    {line,[{location,"bs_match_SUITE.erl",111}]}.
    {func_info,{atom,bs_match_SUITE},{atom,end_per_group},2}.
  {label,14}.
    {move,{x,1},{x,0}}.
    return.


{function, init_per_testcase, 2, 16}.
  {label,15}.
    {line,[{location,"bs_match_SUITE.erl",115}]}.
    {func_info,{atom,bs_match_SUITE},{atom,init_per_testcase},2}.
  {label,16}.
    {test,is_atom,{f,15},[{x,0}]}.
    {test,is_list,{f,15},[{x,1}]}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_testcase, 2, 18}.
  {label,17}.
    {line,[{location,"bs_match_SUITE.erl",118}]}.
    {func_info,{atom,bs_match_SUITE},{atom,end_per_testcase},2}.
  {label,18}.
    {test,is_atom,{f,17},[{x,0}]}.
    {test,is_list,{f,17},[{x,1}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, verify_highest_opcode, 1, 20}.
  {label,19}.
    {line,[{location,"bs_match_SUITE.erl",121}]}.
    {func_info,{atom,bs_match_SUITE},{atom,verify_highest_opcode},1}.
  {label,20}.
    {move,{atom,ok},{x,0}}.
    return.


{function, size_shadow, 1, 22}.
  {label,21}.
    {line,[{location,"bs_match_SUITE.erl",139}]}.
    {func_info,{atom,bs_match_SUITE},{atom,size_shadow},1}.
  {label,22}.
    {test,is_list,{f,21},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{location,"bs_match_SUITE.erl",141}]}.
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
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",142}]}.
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
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",143}]}.
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
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",144}]}.
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
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",147}]}.
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
        {f,1988},
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
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",149}]}.
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
        {f,1984},
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
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",150}]}.
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
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",152}]}.
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
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",151}]}.
    {badmatch,{x,0}}.
  {label,25}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",150}]}.
    {badmatch,{x,0}}.
  {label,26}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",148}]}.
    {badmatch,{x,0}}.
  {label,27}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",146}]}.
    {badmatch,{x,0}}.
  {label,28}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",144}]}.
    {badmatch,{x,0}}.
  {label,29}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",143}]}.
    {badmatch,{x,0}}.
  {label,30}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",142}]}.
    {badmatch,{x,0}}.
  {label,31}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",141}]}.
    {badmatch,{x,0}}.


{function, size_shadow_1, 0, 33}.
  {label,32}.
    {line,[{location,"bs_match_SUITE.erl",155}]}.
    {func_info,{atom,bs_match_SUITE},{atom,size_shadow_1},0}.
  {label,33}.
    {test_heap,{alloc,[{words,8},{floats,0},{funs,4}]},0}.
    {make_fun3,{f,2032},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {make_fun3,{f,2029},0,0,{x,1},{list,[]}}.
    {'%',{var_info,{x,1},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {make_fun3,{f,2026},0,0,{x,2},{list,[]}}.
    {'%',{var_info,{x,2},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {make_fun3,{f,2020},0,0,{x,3},{list,[]}}.
    {'%',{var_info,{x,3},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {put_list,{x,3},nil,{x,3}}.
    {put_list,{x,2},{x,3},{x,2}}.
    {put_list,{x,1},{x,2},{x,1}}.
    {put_list,{x,0},{x,1},{x,0}}.
    {move,{literal,<<16,0,7>>},{x,1}}.
    {call_only,2,{f,50}}. % size_shadow_apply/2


{function, size_shadow_2, 1, 35}.
  {label,34}.
    {line,[{location,"bs_match_SUITE.erl",172}]}.
    {func_info,{atom,bs_match_SUITE},{atom,size_shadow_2},1}.
  {label,35}.
    {'%',{var_info,{x,0},[{type,{t_integer,{8,8}}}]}}.
    {test_heap,{alloc,[{words,9},{floats,0},{funs,3}]},0}.
    {make_fun3,{f,2016},0,0,{x,0},{list,[{integer,8}]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {make_fun3,{f,2013},0,0,{x,1},{list,[{integer,8}]}}.
    {'%',{var_info,{x,1},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {make_fun3,{f,2010},0,0,{x,2},{list,[{integer,8}]}}.
    {'%',{var_info,{x,2},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {put_list,{x,2},nil,{x,2}}.
    {put_list,{x,1},{x,2},{x,1}}.
    {put_list,{x,0},{x,1},{x,0}}.
    {move,{literal,<<16,0,7>>},{x,1}}.
    {call_only,2,{f,50}}. % size_shadow_apply/2


{function, size_shadow_3, 0, 37}.
  {label,36}.
    {line,[{location,"bs_match_SUITE.erl",182}]}.
    {func_info,{atom,bs_match_SUITE},{atom,size_shadow_3},0}.
  {label,37}.
    {test_heap,{alloc,[{words,6},{floats,0},{funs,3}]},0}.
    {make_fun3,{f,2007},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {make_fun3,{f,2004},0,0,{x,1},{list,[]}}.
    {'%',{var_info,{x,1},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {make_fun3,{f,2001},0,0,{x,2},{list,[]}}.
    {'%',{var_info,{x,2},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {put_list,{x,2},nil,{x,2}}.
    {put_list,{x,1},{x,2},{x,1}}.
    {put_list,{x,0},{x,1},{x,0}}.
    {move,{literal,<<16,0,7,0,16>>},{x,1}}.
    {call_only,2,{f,50}}. % size_shadow_apply/2


{function, size_shadow_4, 1, 39}.
  {label,38}.
    {line,[{location,"bs_match_SUITE.erl",193}]}.
    {func_info,{atom,bs_match_SUITE},{atom,size_shadow_4},1}.
  {label,39}.
    {'%',{var_info,{x,0},[{type,{t_integer,{8,8}}}]}}.
    {test_heap,{alloc,[{words,9},{floats,0},{funs,3}]},0}.
    {make_fun3,{f,1998},0,0,{x,0},{list,[{integer,8}]}}.
    {'%',
        {var_info,
            {x,0},
            [{fun_type,
                 {t_union,
                     {t_atom,[no]},
                     none,
                     {t_integer,{0,'+inf'}},
                     none,none}}]}}.
    {make_fun3,{f,1995},0,0,{x,1},{list,[{integer,8}]}}.
    {'%',
        {var_info,
            {x,1},
            [{fun_type,
                 {t_union,
                     {t_atom,[no]},
                     none,
                     {t_integer,{0,'+inf'}},
                     none,none}}]}}.
    {make_fun3,{f,1992},0,0,{x,2},{list,[{integer,8}]}}.
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
    {line,[{location,"bs_match_SUITE.erl",211}]}.
    {func_info,{atom,bs_match_SUITE},{atom,size_shadow_5},2}.
  {label,41}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_atom,[any]},
                                     2 => {t_atom,[term]},
                                     3 => {t_atom,[goes]}}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{12,12}}}]}}.
    {test_heap,{alloc,[{words,2},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1988},
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
    {line,[{location,"bs_match_SUITE.erl",214}]}.
    {func_info,{atom,bs_match_SUITE},{atom,size_shadow_6},2}.
  {label,43}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_atom,[any]},
                                     2 => {t_atom,[term]},
                                     3 => {t_atom,[goes]}}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{13,13}}}]}}.
    {test_heap,{alloc,[{words,2},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1984},
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
    {line,[{location,"bs_match_SUITE.erl",217}]}.
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
    {line,[{location,"bs_match_SUITE.erl",220}]}.
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
           {field_flags,[{anno,[220,{file,"bs_match_SUITE.erl"}]},
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
    {line,[{location,"bs_match_SUITE.erl",223}]}.
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
    {line,[{location,"bs_match_SUITE.erl",224}]}.
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
    {line,[{location,"bs_match_SUITE.erl",226}]}.
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
    {line,[{location,"bs_match_SUITE.erl",227}]}.
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
    {line,[{location,"bs_match_SUITE.erl",232}]}.
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
           {field_flags,[{anno,[234,{file,"bs_match_SUITE.erl"}]},
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
           {field_flags,[{anno,[235,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,is_eq_exact,{f,62},[{tr,{x,1},{t_float,any}},{float,103133.0}]}.
    {bs_match,{f,62},{x,0},{commands,[{ensure_exactly,0}]}}.
    {line,[{location,"bs_match_SUITE.erl",238}]}.
    {bs_create_bin,{f,0},
                   0,0,64,
                   {x,0},
                   {list,[{atom,float},
                          1,1,
                          {literal,[native]},
                          {integer,42},
                          {integer,64}]}}.
    {allocate,0,1}.
    {call,1,{f,1771}}. % id/1
    {test,bs_start_match3,{f,61},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {test,bs_get_float2,
          {f,61},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[239,{file,"bs_match_SUITE.erl"}]},
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
           {field_flags,[{anno,[240,{file,"bs_match_SUITE.erl"}]},
                         unsigned,native]}],
          {x,2}}.
    {test,is_eq_exact,{f,60},[{tr,{x,2},{t_float,any}},{float,42.0}]}.
    {bs_match,{f,60},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{literal,<<64,80,0,0,0,0,0,0>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",243}]}.
    {call,1,{f,1771}}. % id/1
    {test,bs_start_match3,{f,59},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {test,bs_get_float2,
          {f,59},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[244,{file,"bs_match_SUITE.erl"}]},
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
           {field_flags,[{anno,[245,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,58},[{tr,{x,2},{t_float,any}},{float,64.0}]}.
    {bs_match,{f,58},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{atom,default},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",248}]}.
    {call,1,{f,1771}}. % id/1
    {test,is_eq_exact,{f,57},[{x,0},{atom,default}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,57}.
    {case_end,{x,0}}.
  {label,58}.
    {line,[{location,"bs_match_SUITE.erl",245}]}.
    {badmatch,{x,0}}.
  {label,59}.
    {line,[{location,"bs_match_SUITE.erl",244}]}.
    {badmatch,{x,0}}.
  {label,60}.
    {line,[{location,"bs_match_SUITE.erl",240}]}.
    {badmatch,{x,0}}.
  {label,61}.
    {line,[{location,"bs_match_SUITE.erl",239}]}.
    {badmatch,{x,0}}.
  {label,62}.
    {line,[{location,"bs_match_SUITE.erl",235}]}.
    {badmatch,{literal,<<64,249,45,208,0,0,0,0>>}}.
  {label,63}.
    {line,[{location,"bs_match_SUITE.erl",234}]}.
    {badmatch,{literal,<<64,249,45,208,0,0,0,0>>}}.


{function, otp_5269, 1, 65}.
  {label,64}.
    {line,[{location,"bs_match_SUITE.erl",257}]}.
    {func_info,{atom,bs_match_SUITE},{atom,otp_5269},1}.
  {label,65}.
    {test,is_list,{f,64},[{x,0}]}.
    {allocate_heap,0,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1981},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {move,{integer,7},{x,1}}.
    {line,[{location,"bs_match_SUITE.erl",258}]}.
    {call,2,{f,1335}}. % check/2
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
    {make_fun3,{f,1978},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_integer,{0,'+inf'}}}]}}.
    {move,{integer,7},{x,1}}.
    {line,[{location,"bs_match_SUITE.erl",263}]}.
    {call,2,{f,1335}}. % check/2
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
    {make_fun3,{f,1975},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_integer,{0,255}}}]}}.
    {move,{integer,32},{x,1}}.
    {line,[{location,"bs_match_SUITE.erl",265}]}.
    {call,2,{f,1335}}. % check/2
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
    {make_fun3,{f,1969},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_list,{t_integer,{0,255}},nil}}]}}.
    {move,{literal," "},{x,1}}.
    {line,[{location,"bs_match_SUITE.erl",267}]}.
    {call,2,{f,1335}}. % check/2
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
    {'%',{var_info,{x,0},[{fun_type,{t_list,{t_integer,{0,255}},nil}}]}}.
    {move,{literal,[19]},{x,1}}.
    {line,[{location,"bs_match_SUITE.erl",269}]}.
    {call,2,{f,1335}}. % check/2
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
    {make_fun3,{f,1957},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_integer,{28,28}}}]}}.
    {move,{integer,28},{x,1}}.
    {line,[{location,"bs_match_SUITE.erl",273}]}.
    {call,2,{f,1335}}. % check/2
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
    {make_fun3,{f,1954},0,0,{x,0},{list,[]}}.
    {'%',
        {var_info,
            {x,0},
            [{fun_type,
                 {t_tuple,3,true,
                     #{1 => {t_integer,{0,255}},
                       2 => {t_bitstring,8,false},
                       3 => {t_bitstring,8,false}}}}]}}.
    {move,{literal,{2,<<"AB">>,<<"CD">>}},{x,1}}.
    {line,[{location,"bs_match_SUITE.erl",275}]}.
    {call,2,{f,1335}}. % check/2
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
    {make_fun3,{f,1948},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},
                   [{fun_type,{t_list,{t_integer,{0,4294967295}},nil}}]}}.
    {move,{literal,[1,2]},{x,1}}.
    {line,[{location,"bs_match_SUITE.erl",280}]}.
    {call,2,{f,1335}}. % check/2
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
    {make_fun3,{f,1945},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[ok]}}]}}.
    {move,{atom,ok},{x,1}}.
    {line,[{location,"bs_match_SUITE.erl",284}]}.
    {call,2,{f,1335}}. % check/2
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
    {line,[{location,"bs_match_SUITE.erl",294}]}.
    {func_info,{atom,bs_match_SUITE},{atom,null_fields},1}.
  {label,67}.
    {test,is_list,{f,66},[{x,0}]}.
    {allocate_heap,0,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1941},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[empty,tail]}}]}}.
    {move,{atom,tail},{x,1}}.
    {line,[{location,"bs_match_SUITE.erl",295}]}.
    {call,2,{f,1335}}. % check/2
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
    {make_fun3,{f,1939},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[tail]}}]}}.
    {move,{atom,tail},{x,1}}.
    {line,[{location,"bs_match_SUITE.erl",302}]}.
    {call,2,{f,1335}}. % check/2
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
    {line,[{location,"bs_match_SUITE.erl",310}]}.
    {func_info,{atom,bs_match_SUITE},{atom,wiger},1}.
  {label,69}.
    {test,is_list,{f,68},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<3>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",311}]}.
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
    {line,[{location,"bs_match_SUITE.erl",312}]}.
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
    {line,[{location,"bs_match_SUITE.erl",313}]}.
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
    {line,[{location,"bs_match_SUITE.erl",314}]}.
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
    {line,[{location,"bs_match_SUITE.erl",315}]}.
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
    {line,[{location,"bs_match_SUITE.erl",314}]}.
    {badmatch,{x,0}}.
  {label,72}.
    {line,[{location,"bs_match_SUITE.erl",313}]}.
    {badmatch,{x,0}}.
  {label,73}.
    {line,[{location,"bs_match_SUITE.erl",312}]}.
    {badmatch,{x,0}}.
  {label,74}.
    {line,[{location,"bs_match_SUITE.erl",311}]}.
    {badmatch,{x,0}}.


{function, wcheck, 1, 76}.
  {label,75}.
    {line,[{location,"bs_match_SUITE.erl",318}]}.
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
    {line,[{location,"bs_match_SUITE.erl",327}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bin_tail},1}.
  {label,81}.
    {test,is_list,{f,80},[{x,0}]}.
    {allocate,7,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3},{y,4},{y,5},{y,6}]}}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",329}]}.
    {call,2,{f,109}}. % bin_tail_c/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,107},[{tr,{x,0},{t_integer,{0,255}}},{integer,97}]}.
    {move,{integer,2},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_SUITE.erl",330}]}.
    {call,2,{f,109}}. % bin_tail_c/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,106},[{tr,{x,0},{t_integer,{0,255}}},{integer,99}]}.
    {move,{integer,4},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_SUITE.erl",331}]}.
    {call,2,{f,109}}. % bin_tail_c/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,105},[{tr,{x,0},{t_integer,{0,255}}},{integer,101}]}.
    {'catch',{y,6},{f,82}}.
    {move,{integer,5},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_SUITE.erl",332}]}.
    {call,2,{f,109}}. % bin_tail_c/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
  {label,82}.
    {catch_end,{y,6}}.
    {test,is_tagged_tuple,{f,104},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,5},{f,83}}.
    {move,{integer,5},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,[13,14]},{location,"bs_match_SUITE.erl",333}]}.
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
    {line,[{scope,"\v\f"},{location,"bs_match_SUITE.erl",335}]}.
    {call,2,{f,119}}. % bin_tail_d/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,102},[{tr,{x,0},{t_integer,{0,255}}},{integer,97}]}.
    {move,{integer,8},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,"\n"},{location,"bs_match_SUITE.erl",336}]}.
    {call,2,{f,119}}. % bin_tail_d/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,101},[{tr,{x,0},{t_integer,{0,255}}},{integer,98}]}.
    {move,{integer,24},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,"\n"},{location,"bs_match_SUITE.erl",337}]}.
    {call,2,{f,119}}. % bin_tail_d/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,100},[{tr,{x,0},{t_integer,{0,255}}},{integer,100}]}.
    {'catch',{y,4},{f,84}}.
    {move,{integer,1},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,"\n"},{location,"bs_match_SUITE.erl",338}]}.
    {call,2,{f,123}}. % bin_tail_d_dead/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
  {label,84}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,99},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,3},{f,85}}.
    {move,{integer,9},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,"\t\n"},{location,"bs_match_SUITE.erl",339}]}.
    {call,2,{f,123}}. % bin_tail_d_dead/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
  {label,85}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,98},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,2},{f,86}}.
    {move,{integer,40},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_SUITE.erl",340}]}.
    {call,2,{f,123}}. % bin_tail_d_dead/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
  {label,86}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,97},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,1},{f,87}}.
    {move,{integer,1},{x,1}}.
    {move,{literal,<<"abcde">>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_SUITE.erl",341}]}.
    {call,2,{f,126}}. % bin_tail_d_var/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_bitstring,8,false}}}}]}}.
  {label,87}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,96},[{x,0},2,{atom,'EXIT'}]}.
    {move,{literal,<<129>>},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_SUITE.erl",343}]}.
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
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",344}]}.
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
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",345}]}.
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
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",346}]}.
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
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",348}]}.
    {call_ext,1,{extfunc,erlang,md5,1}}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",349}]}.
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
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",350}]}.
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
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",351}]}.
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
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",351}]}.
    {badmatch,{x,0}}.
  {label,90}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",350}]}.
    {badmatch,{x,0}}.
  {label,91}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",349}]}.
    {badmatch,{x,0}}.
  {label,92}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",346}]}.
    {badmatch,{x,0}}.
  {label,93}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",345}]}.
    {badmatch,{x,0}}.
  {label,94}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",344}]}.
    {badmatch,{x,0}}.
  {label,95}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",343}]}.
    {badmatch,{x,0}}.
  {label,96}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",341}]}.
    {badmatch,{x,0}}.
  {label,97}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",340}]}.
    {badmatch,{x,0}}.
  {label,98}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",339}]}.
    {badmatch,{x,0}}.
  {label,99}.
    {line,[{scope,"\b"},{location,"bs_match_SUITE.erl",338}]}.
    {badmatch,{x,0}}.
  {label,100}.
    {line,[{scope,"\n"},{location,"bs_match_SUITE.erl",337}]}.
    {badmatch,{x,0}}.
  {label,101}.
    {line,[{scope,"\n"},{location,"bs_match_SUITE.erl",336}]}.
    {badmatch,{x,0}}.
  {label,102}.
    {line,[{scope,"\n"},{location,"bs_match_SUITE.erl",335}]}.
    {badmatch,{x,0}}.
  {label,103}.
    {line,[{scope,"\n"},{location,"bs_match_SUITE.erl",333}]}.
    {badmatch,{x,0}}.
  {label,104}.
    {line,[{scope,"\f"},{location,"bs_match_SUITE.erl",332}]}.
    {badmatch,{x,0}}.
  {label,105}.
    {line,[{scope,[14]},{location,"bs_match_SUITE.erl",331}]}.
    {badmatch,{x,0}}.
  {label,106}.
    {line,[{scope,[14]},{location,"bs_match_SUITE.erl",330}]}.
    {badmatch,{x,0}}.
  {label,107}.
    {line,[{scope,[14]},{location,"bs_match_SUITE.erl",329}]}.
    {badmatch,{x,0}}.


{function, bin_tail_c, 2, 109}.
  {label,108}.
    {line,[{location,"bs_match_SUITE.erl",355}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bin_tail_c},2}.
  {label,109}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,5}}}]}}.
    {allocate,4,2}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{x,1},{y,2}}.
    {move,{x,0},{y,3}}.
    {line,[{location,"bs_match_SUITE.erl",356}]}.
    {call,2,{f,113}}. % bin_tail_c_dead/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {bs_start_match4,{atom,no_fail},1,{y,3},{x,1}}.
    {move,{x,0},{y,1}}.
    {test,bs_skip_bits2,
          {f,111},
          [{x,1},
           {y,2},
           8,
           {field_flags,[{anno,[357,{file,"bs_match_SUITE.erl"}]},
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
    {line,[{location,"bs_match_SUITE.erl",358}]}.
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
    {line,[{location,"bs_match_SUITE.erl",357}]}.
    {badmatch,{y,3}}.


{function, bin_tail_c_dead, 2, 113}.
  {label,112}.
    {line,[{location,"bs_match_SUITE.erl",361}]}.
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
           {field_flags,[{anno,[362,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_match,{f,114},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,1,{literal,[]},8,1,{x,0}}]}}.
    return.
  {label,114}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {line,[{location,"bs_match_SUITE.erl",362}]}.
    {badmatch,{x,0}}.


{function, bin_tail_c_var, 2, 116}.
  {label,115}.
    {line,[{location,"bs_match_SUITE.erl",365}]}.
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
           {field_flags,[{anno,[366,{file,"bs_match_SUITE.erl"}]},
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
    {line,[{location,"bs_match_SUITE.erl",366}]}.
    {badmatch,{x,0}}.


{function, bin_tail_d, 2, 119}.
  {label,118}.
    {line,[{location,"bs_match_SUITE.erl",370}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bin_tail_d},2}.
  {label,119}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,24}}}]}}.
    {allocate,4,2}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{x,1},{y,2}}.
    {move,{x,0},{y,3}}.
    {line,[{location,"bs_match_SUITE.erl",371}]}.
    {call,2,{f,123}}. % bin_tail_d_dead/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {bs_start_match4,{atom,no_fail},1,{y,3},{x,1}}.
    {move,{x,0},{y,1}}.
    {test,bs_skip_bits2,
          {f,121},
          [{x,1},
           {y,2},
           1,
           {field_flags,[{anno,[372,{file,"bs_match_SUITE.erl"}]},
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
    {line,[{location,"bs_match_SUITE.erl",373}]}.
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
    {line,[{location,"bs_match_SUITE.erl",372}]}.
    {badmatch,{y,3}}.


{function, bin_tail_d_dead, 2, 123}.
  {label,122}.
    {line,[{location,"bs_match_SUITE.erl",376}]}.
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
           {field_flags,[{anno,[377,{file,"bs_match_SUITE.erl"}]},
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
    {line,[{location,"bs_match_SUITE.erl",377}]}.
    {badmatch,{x,0}}.


{function, bin_tail_d_var, 2, 126}.
  {label,125}.
    {line,[{location,"bs_match_SUITE.erl",380}]}.
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
           {field_flags,[{anno,[381,{file,"bs_match_SUITE.erl"}]},
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
    {line,[{location,"bs_match_SUITE.erl",381}]}.
    {badmatch,{x,0}}.


{function, bin_tail_e, 1, 129}.
  {label,128}.
    {line,[{location,"bs_match_SUITE.erl",384}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bin_tail_e},1}.
  {label,129}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_match_SUITE.erl",385}]}.
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
    {line,[{location,"bs_match_SUITE.erl",388}]}.
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
    {line,[{location,"bs_match_SUITE.erl",387}]}.
    {badmatch,{y,1}}.


{function, bin_tail_e_dead, 1, 134}.
  {label,133}.
    {line,[{location,"bs_match_SUITE.erl",394}]}.
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
    {line,[{location,"bs_match_SUITE.erl",402}]}.
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
    {line,[{location,"bs_match_SUITE.erl",410}]}.
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
           {field_flags,[{anno,[412,{file,"bs_match_SUITE.erl"}]},
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
    {line,[{location,"bs_match_SUITE.erl",411}]}.
    {case_end,{x,0}}.


{function, save_restore, 1, 144}.
  {label,143}.
    {line,[{location,"bs_match_SUITE.erl",418}]}.
    {func_info,{atom,bs_match_SUITE},{atom,save_restore},1}.
  {label,144}.
    {test,is_list,{f,143},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",419}]}.
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
    {line,[{location,"bs_match_SUITE.erl",420}]}.
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
    {line,[{location,"bs_match_SUITE.erl",421}]}.
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
    {line,[{location,"bs_match_SUITE.erl",422}]}.
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
    {line,[{location,"bs_match_SUITE.erl",428}]}.
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
    {line,[{location,"bs_match_SUITE.erl",429}]}.
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
    {line,[{location,"bs_match_SUITE.erl",430}]}.
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
    {line,[{location,"bs_match_SUITE.erl",431}]}.
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
    {line,[{location,"bs_match_SUITE.erl",433}]}.
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
          {f,156},
          [{tr,{x,0},
               {t_union,none,none,none,
                        {t_tuple,2,true,
                                 #{1 => {t_cons,{t_integer,{0,255}},nil},
                                   2 => {t_bitstring,8,false}}},
                        {t_bitstring,8,false}}},
           {literal,{".",<<"x">>}}]}.
    {move,{literal,<<".x">>},{x,0}}.
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
          {f,155},
          [{tr,{x,0},
               {t_union,none,none,none,
                        {t_tuple,2,true,
                                 #{1 => {t_cons,{t_integer,{0,255}},nil},
                                   2 => {t_bitstring,8,false}}},
                        {t_bitstring,8,false}}},
           {literal,{".",<<"x">>}}]}.
    {move,{literal,<<".x">>},{x,0}}.
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
          {f,154},
          [{tr,{x,0},
               {t_union,none,none,none,
                        {t_tuple,2,true,
                                 #{1 => {t_cons,{t_integer,{0,255}},nil},
                                   2 => {t_bitstring,8,false}}},
                        {t_bitstring,8,false}}},
           {literal,{".",<<"x">>}}]}.
    {move,{literal,<<"-x">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",438}]}.
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
          {f,152},
          [{tr,{x,0},
               {t_union,none,none,none,
                        {t_tuple,2,true,
                                 #{1 => {t_cons,{t_integer,{0,255}},nil},
                                   2 => {t_bitstring,8,false}}},
                        {t_bitstring,8,false}}},
           {literal,{"-",<<"x">>}}]}.
    {move,{literal,<<"-x">>},{x,0}}.
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
          {f,151},
          [{tr,{x,0},
               {t_union,none,none,none,
                        {t_tuple,2,true,
                                 #{1 => {t_cons,{t_integer,{0,255}},nil},
                                   2 => {t_bitstring,8,false}}},
                        {t_bitstring,8,false}}},
           {literal,{"-",<<"x">>}}]}.
    {move,{literal,<<"-x">>},{x,0}}.
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
    {line,[{location,"bs_match_SUITE.erl",443}]}.
    {call,2,{f,193}}. % multiple_matches/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b,c,d]}}]}}.
    {test,is_eq_exact,{f,149},[{tr,{x,0},{t_atom,[a,b,c,d]}},{atom,a}]}.
    {move,{literal,<<3,231>>},{x,1}}.
    {move,{literal,<<3,9>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",444}]}.
    {call,2,{f,193}}. % multiple_matches/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b,c,d]}}]}}.
    {test,is_eq_exact,{f,148},[{tr,{x,0},{t_atom,[a,b,c,d]}},{atom,b}]}.
    {move,{literal,<<"9">>},{x,1}}.
    {move,{literal,<<3,9>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",445}]}.
    {call,2,{f,193}}. % multiple_matches/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b,c,d]}}]}}.
    {test,is_eq_exact,{f,147},[{tr,{x,0},{t_atom,[a,b,c,d]}},{atom,c}]}.
    {move,{literal,<<4,87>>},{x,1}}.
    {move,{literal,<<17>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",446}]}.
    {call,2,{f,193}}. % multiple_matches/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b,c,d]}}]}}.
    {test,is_eq_exact,{f,146},[{tr,{x,0},{t_atom,[a,b,c,d]}},{atom,d}]}.
    {move,{literal,<<"ÿÿÿÿÿÿÿÿ">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",449}]}.
    {call,1,{f,199}}. % bad_float_unpack_match/1
    {'%',{var_info,{x,0},[{type,{t_number,any}}]}}.
    {test,is_eq_exact,{f,145},[{tr,{x,0},{t_number,any}},{integer,-1}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,145}.
    {move,{atom,bad_return_value_probably_NaN},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",451}]}.
    {call_ext_last,1,{extfunc,ct,fail,1},0}.
  {label,146}.
    {line,[{location,"bs_match_SUITE.erl",446}]}.
    {badmatch,{x,0}}.
  {label,147}.
    {line,[{location,"bs_match_SUITE.erl",445}]}.
    {badmatch,{x,0}}.
  {label,148}.
    {line,[{location,"bs_match_SUITE.erl",444}]}.
    {badmatch,{x,0}}.
  {label,149}.
    {line,[{location,"bs_match_SUITE.erl",443}]}.
    {badmatch,{x,0}}.
  {label,150}.
    {line,[{location,"bs_match_SUITE.erl",441}]}.
    {badmatch,{x,0}}.
  {label,151}.
    {line,[{location,"bs_match_SUITE.erl",440}]}.
    {badmatch,{x,0}}.
  {label,152}.
    {line,[{location,"bs_match_SUITE.erl",439}]}.
    {badmatch,{x,0}}.
  {label,153}.
    {line,[{location,"bs_match_SUITE.erl",438}]}.
    {badmatch,{x,0}}.
  {label,154}.
    {line,[{location,"bs_match_SUITE.erl",436}]}.
    {badmatch,{x,0}}.
  {label,155}.
    {line,[{location,"bs_match_SUITE.erl",435}]}.
    {badmatch,{x,0}}.
  {label,156}.
    {line,[{location,"bs_match_SUITE.erl",434}]}.
    {badmatch,{x,0}}.
  {label,157}.
    {line,[{location,"bs_match_SUITE.erl",433}]}.
    {badmatch,{x,0}}.
  {label,158}.
    {line,[{location,"bs_match_SUITE.erl",431}]}.
    {badmatch,{x,0}}.
  {label,159}.
    {line,[{location,"bs_match_SUITE.erl",430}]}.
    {badmatch,{x,0}}.
  {label,160}.
    {line,[{location,"bs_match_SUITE.erl",429}]}.
    {badmatch,{x,0}}.
  {label,161}.
    {line,[{location,"bs_match_SUITE.erl",428}]}.
    {badmatch,{x,0}}.
  {label,162}.
    {line,[{location,"bs_match_SUITE.erl",422}]}.
    {badmatch,{x,0}}.
  {label,163}.
    {line,[{location,"bs_match_SUITE.erl",421}]}.
    {badmatch,{x,0}}.
  {label,164}.
    {line,[{location,"bs_match_SUITE.erl",420}]}.
    {badmatch,{x,0}}.
  {label,165}.
    {line,[{location,"bs_match_SUITE.erl",419}]}.
    {badmatch,{x,0}}.


{function, save_restore_1, 1, 167}.
  {label,166}.
    {line,[{location,"bs_match_SUITE.erl",454}]}.
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
    {line,[{location,"bs_match_SUITE.erl",455}]}.
    {case_end,{x,0}}.


{function, lll, 1, 174}.
  {label,173}.
    {line,[{location,"bs_match_SUITE.erl",462}]}.
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
    {line,[{location,"bs_match_SUITE.erl",464}]}.
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
    {line,[{location,"bs_match_SUITE.erl",468}]}.
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
    {line,[{location,"bs_match_SUITE.erl",472}]}.
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
    {line,[{location,"bs_match_SUITE.erl",475}]}.
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
    {line,[{location,"bs_match_SUITE.erl",480}]}.
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
           {field_flags,[{anno,[480,{file,"bs_match_SUITE.erl"}]},
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
    {line,[{location,"bs_match_SUITE.erl",484}]}.
    {func_info,{atom,bs_match_SUITE},{atom,partitioned_bs_match},1}.
  {label,203}.
    {test,is_list,{f,202},[{x,0}]}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{literal,<<42,1,2,3>>},{x,1}}.
    {move,{atom,blurf},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",485}]}.
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
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",486}]}.
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
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",487}]}.
    {call,2,{f,214}}. % partitioned_bs_match/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,<<>>},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",488}]}.
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
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",490}]}.
    {call,2,{f,214}}. % partitioned_bs_match/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,204}.
    {catch_end,{y,2}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[-1,blurf]},{x,1}}.
    {move,{atom,partitioned_bs_match},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_SUITE.erl",489}]}.
    {call,3,{f,898}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,1},{f,205}}.
    {move,{literal,<<1,2,3>>},{x,1}}.
    {move,{integer,-1},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_SUITE.erl",492}]}.
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
    {line,[{scope,[3,4]},{location,"bs_match_SUITE.erl",491}]}.
    {call,3,{f,898}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<17,1,2,3>>},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_SUITE.erl",493}]}.
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
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",494}]}.
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
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",497}]}.
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
    {line,[{scope,[1,2]},{location,"bs_match_SUITE.erl",496}]}.
    {call,3,{f,898}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<"*">>},{x,1}}.
    {move,{atom,anything},{x,0}}.
    {line,[{scope,[1,2]},{location,"bs_match_SUITE.erl",499}]}.
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
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",499}]}.
    {badmatch,{integer,1}}.
  {label,208}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",494}]}.
    {badmatch,{x,0}}.
  {label,209}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",493}]}.
    {badmatch,{x,0}}.
  {label,210}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",488}]}.
    {badmatch,{x,0}}.
  {label,211}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",486}]}.
    {badmatch,{x,0}}.
  {label,212}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",485}]}.
    {badmatch,{x,0}}.


{function, partitioned_bs_match, 2, 214}.
  {label,213}.
    {line,[{location,"bs_match_SUITE.erl",504}]}.
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
    {line,[{location,"bs_match_SUITE.erl",511}]}.
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
    {line,[{location,"bs_match_SUITE.erl",516}]}.
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
    {line,[{location,"bs_match_SUITE.erl",519}]}.
    {func_info,{atom,bs_match_SUITE},{atom,function_clause},1}.
  {label,228}.
    {test,is_list,{f,227},[{x,0}]}.
    {allocate,4,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3}]}}.
    {move,{literal,<<0,7,0,7,42>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",520}]}.
    {call,1,{f,234}}. % function_clause_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,3},{f,229}}.
    {move,{literal,<<0,1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",522}]}.
    {call,1,{f,234}}. % function_clause_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,229}.
    {catch_end,{y,3}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<0,1,2,3>>]},{x,1}}.
    {move,{atom,function_clause_1},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_SUITE.erl",521}]}.
    {call,3,{f,898}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,2},{f,230}}.
    {move,{literal,<<0,7,0,1,2,3>>},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_SUITE.erl",524}]}.
    {call,1,{f,234}}. % function_clause_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,230}.
    {catch_end,{y,2}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<0,1,2,3>>]},{x,1}}.
    {move,{atom,function_clause_1},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_SUITE.erl",523}]}.
    {call,3,{f,898}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<0,7,0,7,42>>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_SUITE.erl",526}]}.
    {call,1,{f,238}}. % function_clause_2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<"ÿ">>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_SUITE.erl",527}]}.
    {call,1,{f,238}}. % function_clause_2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<13:4>>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_SUITE.erl",528}]}.
    {call,1,{f,238}}. % function_clause_2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,1},{f,231}}.
    {move,{literal,<<0,1,2,3>>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_SUITE.erl",530}]}.
    {call,1,{f,238}}. % function_clause_2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,231}.
    {catch_end,{y,1}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<0,1,2,3>>]},{x,1}}.
    {move,{atom,function_clause_2},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_SUITE.erl",529}]}.
    {call,3,{f,898}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,0},{f,232}}.
    {move,{literal,<<0,7,0,1,2,3>>},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_SUITE.erl",532}]}.
    {call,1,{f,238}}. % function_clause_2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,232}.
    {catch_end,{y,0}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<0,1,2,3>>]},{x,1}}.
    {move,{atom,function_clause_2},{x,0}}.
    {call_last,3,{f,898},4}. % fc/3


{function, function_clause_1, 1, 234}.
  {label,233}.
    {line,[{location,"bs_match_SUITE.erl",536}]}.
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
    {line,[{location,"bs_match_SUITE.erl",541}]}.
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
    {line,[{location,"bs_match_SUITE.erl",548}]}.
    {func_info,{atom,bs_match_SUITE},{atom,unit},1}.
  {label,243}.
    {test,is_list,{f,242},[{x,0}]}.
    {allocate,7,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3},{y,4},{y,5},{y,6}]}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",549}]}.
    {call,1,{f,271}}. % peek1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,269},[{tr,{x,0},{t_integer,{0,255}}},{integer,42}]}.
    {move,{literal,<<43,1,2>>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_SUITE.erl",550}]}.
    {call,1,{f,271}}. % peek1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,268},[{tr,{x,0},{t_integer,{0,255}}},{integer,43}]}.
    {move,{literal,<<43,1,2,1:1>>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_SUITE.erl",551}]}.
    {call,1,{f,271}}. % peek1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,267},[{tr,{x,0},{t_integer,{0,255}}},{integer,43}]}.
    {move,{literal,<<43,1,2,3:2>>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_SUITE.erl",552}]}.
    {call,1,{f,271}}. % peek1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,266},[{tr,{x,0},{t_integer,{0,255}}},{integer,43}]}.
    {move,{literal,<<43,1,2,127:7>>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_SUITE.erl",553}]}.
    {call,1,{f,271}}. % peek1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,265},[{tr,{x,0},{t_integer,{0,255}}},{integer,43}]}.
    {move,{literal,<<"c">>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_SUITE.erl",555}]}.
    {call,1,{f,277}}. % peek8/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,264},[{tr,{x,0},{t_integer,{0,255}}},{integer,99}]}.
    {move,{literal,<<"de">>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_SUITE.erl",556}]}.
    {call,1,{f,277}}. % peek8/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,263},[{tr,{x,0},{t_integer,{0,255}}},{integer,100}]}.
    {'catch',{y,6},{f,244}}.
    {move,{literal,<<100,101,0:1>>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_SUITE.erl",557}]}.
    {call,1,{f,277}}. % peek8/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
  {label,244}.
    {catch_end,{y,6}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<100,101,0:1>>]},{x,1}}.
    {move,{atom,peek8},{x,0}}.
    {line,[{scope,[13,14]},{location,"bs_match_SUITE.erl",557}]}.
    {call,3,{f,898}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<146,108>>},{x,0}}.
    {line,[{scope,[13,14]},{location,"bs_match_SUITE.erl",559}]}.
    {call,1,{f,280}}. % peek16/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,65535}}}]}}.
    {test,is_eq_exact,
          {f,262},
          [{tr,{x,0},{t_integer,{0,65535}}},{integer,37484}]}.
    {move,{literal,<<146,113,21,190>>},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_match_SUITE.erl",560}]}.
    {call,1,{f,280}}. % peek16/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,65535}}}]}}.
    {test,is_eq_exact,
          {f,261},
          [{tr,{x,0},{t_integer,{0,65535}}},{integer,37489}]}.
    {'catch',{y,5},{f,245}}.
    {move,{literal,<<"\b">>},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_match_SUITE.erl",561}]}.
    {call,1,{f,280}}. % peek16/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,65535}}}]}}.
  {label,245}.
    {catch_end,{y,5}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<"\b">>]},{x,1}}.
    {move,{atom,peek16},{x,0}}.
    {line,[{scope,"\v\f"},{location,"bs_match_SUITE.erl",561}]}.
    {call,3,{f,898}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,4},{f,246}}.
    {move,{literal,<<0,42:7>>},{x,0}}.
    {line,[{scope,"\v\f"},{location,"bs_match_SUITE.erl",562}]}.
    {call,1,{f,280}}. % peek16/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,65535}}}]}}.
  {label,246}.
    {catch_end,{y,4}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<0,42:7>>]},{x,1}}.
    {move,{atom,peek16},{x,0}}.
    {line,[{scope,"\t\n"},{location,"bs_match_SUITE.erl",562}]}.
    {call,3,{f,898}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,3},{f,247}}.
    {move,{literal,<<1,2,3,4,5>>},{x,0}}.
    {line,[{scope,"\t\n"},{location,"bs_match_SUITE.erl",563}]}.
    {call,1,{f,280}}. % peek16/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,65535}}}]}}.
  {label,247}.
    {catch_end,{y,3}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<1,2,3,4,5>>]},{x,1}}.
    {move,{atom,peek16},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_SUITE.erl",563}]}.
    {call,3,{f,898}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<127:7>>},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_SUITE.erl",565}]}.
    {call,1,{f,274}}. % peek7/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,127}}}]}}.
    {test,is_eq_exact,{f,260},[{tr,{x,0},{t_integer,{0,127}}},{integer,127}]}.
    {move,{literal,<<200,19:6>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",566}]}.
    {call,1,{f,274}}. % peek7/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,127}}}]}}.
    {test,is_eq_exact,{f,259},[{tr,{x,0},{t_integer,{0,127}}},{integer,100}]}.
    {'catch',{y,2},{f,248}}.
    {move,{literal,<<1,2>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",567}]}.
    {call,1,{f,274}}. % peek7/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,127}}}]}}.
  {label,248}.
    {catch_end,{y,2}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<1,2>>]},{x,1}}.
    {move,{atom,peek7},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_SUITE.erl",567}]}.
    {call,3,{f,898}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,-1},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_SUITE.erl",569}]}.
    {call,2,{f,283}}. % unit_opt/2
    {'%',{var_info,{x,0},[{type,{t_integer,{1,8}}}]}}.
    {test,is_eq_exact,{f,258},[{tr,{x,0},{t_integer,{1,8}}},{integer,1}]}.
    {move,{integer,-1},{x,1}}.
    {move,{integer,8},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",570}]}.
    {call,2,{f,283}}. % unit_opt/2
    {'%',{var_info,{x,0},[{type,{t_integer,{1,8}}}]}}.
    {test,is_eq_exact,{f,257},[{tr,{x,0},{t_integer,{1,8}}},{integer,8}]}.
    {move,{literal,<<0,0,0,1,97,98,99>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",572}]}.
    {call,1,{f,290}}. % unit_opt_2/1
    {test,is_eq_exact,{f,256},[{x,0},{literal,<<0,0,0,1,97,98,99>>}]}.
    {move,{literal,<<0,0,0,2,100,101,102>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",573}]}.
    {call,1,{f,290}}. % unit_opt_2/1
    {test,is_eq_exact,{f,255},[{x,0},{literal,<<"def">>}]}.
    {'catch',{y,1},{f,249}}.
    {move,{literal,<<0,0,0,1,33:7>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",574}]}.
    {call,1,{f,290}}. % unit_opt_2/1
  {label,249}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,254},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,0},{f,250}}.
    {move,{literal,<<0,0,0,2,55:7>>},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_SUITE.erl",575}]}.
    {call,1,{f,290}}. % unit_opt_2/1
  {label,250}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,253},[{x,0},2,{atom,'EXIT'}]}.
    {move,{literal,<<0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1>>},{x,0}}.
    {line,[{scope,[1,2]},{location,"bs_match_SUITE.erl",577}]}.
    {call,1,{f,297}}. % unit_opt_3/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,252},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<0,0,0,0,0,0,0,0>>}]}.
    {move,{literal,<<0,0,0,0,0,0,0,1>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",578}]}.
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
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",577}]}.
    {badmatch,{x,0}}.
  {label,253}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",575}]}.
    {badmatch,{x,0}}.
  {label,254}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",574}]}.
    {badmatch,{x,0}}.
  {label,255}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",573}]}.
    {badmatch,{x,0}}.
  {label,256}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",572}]}.
    {badmatch,{x,0}}.
  {label,257}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",570}]}.
    {badmatch,{x,0}}.
  {label,258}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",569}]}.
    {badmatch,{x,0}}.
  {label,259}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",566}]}.
    {badmatch,{x,0}}.
  {label,260}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",565}]}.
    {badmatch,{x,0}}.
  {label,261}.
    {line,[{scope,"\f"},{location,"bs_match_SUITE.erl",560}]}.
    {badmatch,{x,0}}.
  {label,262}.
    {line,[{scope,"\f"},{location,"bs_match_SUITE.erl",559}]}.
    {badmatch,{x,0}}.
  {label,263}.
    {line,[{scope,[14]},{location,"bs_match_SUITE.erl",556}]}.
    {badmatch,{x,0}}.
  {label,264}.
    {line,[{scope,[14]},{location,"bs_match_SUITE.erl",555}]}.
    {badmatch,{x,0}}.
  {label,265}.
    {line,[{scope,[14]},{location,"bs_match_SUITE.erl",553}]}.
    {badmatch,{x,0}}.
  {label,266}.
    {line,[{scope,[14]},{location,"bs_match_SUITE.erl",552}]}.
    {badmatch,{x,0}}.
  {label,267}.
    {line,[{scope,[14]},{location,"bs_match_SUITE.erl",551}]}.
    {badmatch,{x,0}}.
  {label,268}.
    {line,[{scope,[14]},{location,"bs_match_SUITE.erl",550}]}.
    {badmatch,{x,0}}.
  {label,269}.
    {line,[{scope,[14]},{location,"bs_match_SUITE.erl",549}]}.
    {badmatch,{x,0}}.


{function, peek1, 1, 271}.
  {label,270}.
    {line,[{location,"bs_match_SUITE.erl",582}]}.
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
    {line,[{location,"bs_match_SUITE.erl",584}]}.
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
    {line,[{location,"bs_match_SUITE.erl",586}]}.
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
    {line,[{location,"bs_match_SUITE.erl",588}]}.
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
    {line,[{location,"bs_match_SUITE.erl",590}]}.
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
    {line,[{location,"bs_match_SUITE.erl",592}]}.
    {case_end,{x,0}}.


{function, unit_opt_2, 1, 290}.
  {label,289}.
    {line,[{location,"bs_match_SUITE.erl",602}]}.
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
    {line,[{location,"bs_match_SUITE.erl",607}]}.
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
    {call_only,1,{f,1771}}. % id/1
  {label,294}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,289}}.
  {label,295}.
    {line,[{location,"bs_match_SUITE.erl",603}]}.
    if_end.


{function, unit_opt_3, 1, 297}.
  {label,296}.
    {line,[{location,"bs_match_SUITE.erl",611}]}.
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
    {line,[{location,"bs_match_SUITE.erl",615}]}.
    {badmatch,{x,0}}.


{function, shared_sub_bins, 1, 300}.
  {label,299}.
    {line,[{location,"bs_match_SUITE.erl",618}]}.
    {func_info,{atom,bs_match_SUITE},{atom,shared_sub_bins},1}.
  {label,300}.
    {test,is_list,{f,299},[{x,0}]}.
    {allocate,0,0}.
    {move,nil,{x,1}}.
    {move,{integer,0},{x,2}}.
    {move,{literal,<<1,2,3,4,5>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",619}]}.
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
    {line,[{location,"bs_match_SUITE.erl",622}]}.
    {func_info,{atom,bs_match_SUITE},{atom,sum},3}.
  {label,303}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{0,'+inf'}}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,3},3}.
    {bs_match,{f,304},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {line,[{location,"bs_match_SUITE.erl",623}]}.
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
    {bs_set_position,{x,0},{x,3}}.
    {bs_match,{f,305},{x,0},{commands,[{ensure_exactly,0}]}}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{x,2},{x,1}]}}.
    return.
  {label,305}.
    {bs_get_tail,{x,0},{x,0},3}.
    {jump,{f,302}}.


{function, bin_and_float, 1, 307}.
  {label,306}.
    {line,[{location,"bs_match_SUITE.erl",627}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bin_and_float},1}.
  {label,307}.
    {test,is_list,{f,306},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{float,0.0},{x,1}}.
    {move,{literal,<<63,240,0,0,0,0,0,0,64,0,0,0,0,0,0,0,64,8,0,0,0,0,0,0>>},
          {x,0}}.
    {line,[{location,"bs_match_SUITE.erl",628}]}.
    {call,2,{f,311}}. % bin_and_float/2
    {'%',{var_info,{x,0},[{type,{t_float,any}}]}}.
    {test,is_eq_exact,{f,309},[{tr,{x,0},{t_float,any}},{float,14.0}]}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",630}]}.
    {call,1,{f,1771}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,2}}.
    {trim,1,0}.
    {move,{literal,<<0,0,0,2:6>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",631}]}.
    {call,3,{f,1935}}. % '-bin_and_float/1-lbc$^0/2-0-'/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {test,is_eq_exact,
          {f,308},
          [{tr,{x,0},{t_bitstring,8,true}},{literal,<<>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,308}.
    {badmatch,{x,0}}.
  {label,309}.
    {line,[{location,"bs_match_SUITE.erl",628}]}.
    {badmatch,{x,0}}.


{function, bin_and_float, 2, 311}.
  {label,310}.
    {line,[{location,"bs_match_SUITE.erl",635}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bin_and_float},2}.
  {label,311}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,64}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_float,any}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {test,bs_get_float2,
          {f,312},
          3,
          [{tr,{x,0},{t_bs_context,64}},
           {integer,64},
           1,
           {field_flags,[{anno,[635,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_float2,
          {f,312},
          4,
          [{tr,{x,0},{t_bs_context,64}},
           {integer,64},
           1,
           {field_flags,[{anno,[635,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_float2,
          {f,312},
          5,
          [{tr,{x,0},{t_bs_context,64}},
           {integer,64},
           1,
           {field_flags,[{anno,[635,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {fmove,{x,3},{fr,0}}.
    {line,[{location,"bs_match_SUITE.erl",638}]}.
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
    {call_only,2,{f,311}}. % bin_and_float/2
  {label,312}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_match,{f,313},{x,0},{commands,[{ensure_exactly,0}]}}.
    {move,{x,1},{x,0}}.
    return.
  {label,313}.
    {bs_get_tail,{x,0},{x,0},2}.
    {jump,{f,310}}.


{function, dec_subidentifiers, 1, 315}.
  {label,314}.
    {line,[{location,"bs_match_SUITE.erl",641}]}.
    {func_info,{atom,bs_match_SUITE},{atom,dec_subidentifiers},1}.
  {label,315}.
    {test,is_list,{f,314},[{x,0}]}.
    {allocate,0,0}.
    {move,nil,{x,2}}.
    {move,{integer,0},{x,1}}.
    {move,{integer,2},{x,3}}.
    {move,{literal,<<170,227,1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",643}]}.
    {call,4,{f,320}}. % do_dec_subidentifiers/4
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_list,{t_integer,any},nil},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
          {f,318},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_list,{t_integer,any},nil},
                          2 => {t_bitstring,8,false}}}},
           {literal,{[],<<1,2,3>>}}]}.
    {move,nil,{x,2}}.
    {move,{integer,0},{x,1}}.
    {move,{integer,2},{x,3}}.
    {move,{literal,<<170,13,1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",644}]}.
    {call,4,{f,320}}. % do_dec_subidentifiers/4
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
           {literal,{[5389],<<1,2,3>>}}]}.
    {move,{literal,[1,2,3]},{x,2}}.
    {move,{atom,any},{x,1}}.
    {move,{integer,0},{x,3}}.
    {move,{atom,not_a_binary},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",645}]}.
    {call,4,{f,325}}. % dec_subidentifiers/4
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
        {f,316},
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
  {label,316}.
    {badmatch,{x,0}}.
  {label,317}.
    {line,[{location,"bs_match_SUITE.erl",644}]}.
    {badmatch,{x,0}}.
  {label,318}.
    {line,[{location,"bs_match_SUITE.erl",642}]}.
    {badmatch,{x,0}}.


{function, do_dec_subidentifiers, 4, 320}.
  {label,319}.
    {line,[{location,"bs_match_SUITE.erl",648}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_dec_subidentifiers},4}.
  {label,320}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,0}}}]}}.
    {'%',{var_info,{x,2},[{type,nil}]}}.
    {'%',{var_info,{x,3},[{type,{t_integer,{2,2}}}]}}.
    {allocate,2,4}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_match_SUITE.erl",649}]}.
    {call,4,{f,325}}. % dec_subidentifiers/4
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
    {line,[{location,"bs_match_SUITE.erl",650}]}.
    {call,4,{f,329}}. % dec_subidentifiers2/4
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
                   2 =>
                       {t_union,
                           {t_atom,[not_a_binary]},
                           none,none,none,
                           {t_bitstring,8,false}}}}}]}.
    {move,nil,{x,2}}.
    {move,{integer,0},{x,1}}.
    {move,{integer,2},{x,3}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",651}]}.
    {call,4,{f,338}}. % dec_subidentifiers4/4
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
                          2 => {t_bitstring,8,false}}}}]}.
    {move,nil,{x,2}}.
    {move,{integer,0},{x,1}}.
    {move,{integer,2},{x,3}}.
    {move,{y,1},{x,0}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {line,[{location,"bs_match_SUITE.erl",652}]}.
    {call,4,{f,334}}. % dec_subidentifiers3/4
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
    {deallocate,1}.
    return.
  {label,321}.
    {badmatch,{x,0}}.
  {label,322}.
    {line,[{location,"bs_match_SUITE.erl",651}]}.
    {badmatch,{x,0}}.
  {label,323}.
    {line,[{location,"bs_match_SUITE.erl",650}]}.
    {badmatch,{x,0}}.


{function, dec_subidentifiers, 4, 325}.
  {label,324}.
    {line,[{location,"bs_match_SUITE.erl",654}]}.
    {func_info,{atom,bs_match_SUITE},{atom,dec_subidentifiers},4}.
  {label,325}.
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
    {test,is_eq_exact,{f,326},[{tr,{x,3},{t_integer,{'-inf',2}}},{integer,0}]}.
    {allocate,1,3}.
    {move,{x,0},{y,0}}.
    {move,{x,2},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",655}]}.
    {call_ext,1,{extfunc,lists,reverse,1}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{x,0},{y,0}]}}.
    {deallocate,1}.
    return.
  {label,326}.
    {test,bs_start_match3,{f,324},4,[{x,0}],{x,4}}.
    {bs_get_position,{x,4},{x,5},5}.
    {bs_match,{f,327},
              {x,4},
              {commands,[{ensure_at_least,1,1},
                         {integer,6,{literal,[]},1,1,{x,6}}]}}.
    {test,is_eq_exact,{f,327},[{tr,{x,6},{t_integer,{0,1}}},{integer,1}]}.
    {bs_match,{f,327},
              {x,4},
              {commands,[{ensure_at_least,7,8},
                         {integer,5,{literal,[]},7,1,{x,0}},
                         {get_tail,5,8,{x,4}}]}}.
    {line,[{location,"bs_match_SUITE.erl",657}]}.
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
    {call_only,4,{f,325}}. % dec_subidentifiers/4
  {label,327}.
    {bs_set_position,{x,4},{x,5}}.
    {bs_match,{f,324},
              {x,4},
              {commands,[{ensure_at_least,8,1},
                         {integer,5,{literal,[]},8,1,{x,0}},
                         {get_tail,5,1,{x,4}}]}}.
    {line,[{location,"bs_match_SUITE.erl",659}]}.
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
    {call_only,4,{f,325}}. % dec_subidentifiers/4


{function, dec_subidentifiers2, 4, 329}.
  {label,328}.
    {line,[{location,"bs_match_SUITE.erl",661}]}.
    {func_info,{atom,bs_match_SUITE},{atom,dec_subidentifiers2},4}.
  {label,329}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,any}}]}}.
    {'%',{var_info,{x,2},[{type,{t_list,{t_integer,any},nil}}]}}.
    {'%',{var_info,{x,3},[{type,{t_integer,{'-inf',2}}}]}}.
    {bs_start_match4,{atom,no_fail},4,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,4},4}.
    {bs_get_tail,{x,0},{x,5},5}.
    {test,is_eq_exact,{f,330},[{tr,{x,3},{t_integer,{'-inf',2}}},{integer,0}]}.
    {allocate,1,6}.
    {move,{x,5},{y,0}}.
    {move,{x,2},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",662}]}.
    {call_ext,1,{extfunc,lists,reverse,1}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{x,0},{y,0}]}}.
    {deallocate,1}.
    return.
  {label,330}.
    {bs_match,{f,331},
              {x,0},
              {commands,[{ensure_at_least,1,1},
                         {integer,5,{literal,[]},1,1,{x,5}}]}}.
    {test,is_eq_exact,{f,331},[{tr,{x,5},{t_integer,{0,1}}},{integer,1}]}.
    {bs_match,{f,331},
              {x,0},
              {commands,[{ensure_at_least,7,8},
                         {integer,4,{literal,[]},7,1,{x,4}}]}}.
    {line,[{location,"bs_match_SUITE.erl",664}]}.
    {gc_bif,'bsl',{f,0},5,[{tr,{x,1},{t_integer,any}},{integer,7}],{x,1}}.
    {gc_bif,'bor',
            {f,0},
            5,
            [{tr,{x,1},{t_integer,any}},{tr,{x,4},{t_integer,{0,127}}}],
            {x,1}}.
    {gc_bif,'-',{f,0},4,[{tr,{x,3},{t_integer,{'-inf',2}}},{integer,1}],{x,3}}.
    {call_only,4,{f,329}}. % dec_subidentifiers2/4
  {label,331}.
    {bs_set_position,{x,0},{x,4}}.
    {bs_match,{f,332},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,4,{literal,[]},8,1,{x,4}}]}}.
    {line,[{location,"bs_match_SUITE.erl",666}]}.
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
    {call_only,4,{f,329}}. % dec_subidentifiers2/4
  {label,332}.
    {bs_set_position,{x,0},{x,4}}.
    {bs_get_tail,{x,0},{x,0},4}.
    {jump,{f,328}}.


{function, dec_subidentifiers3, 4, 334}.
  {label,333}.
    {line,[{location,"bs_match_SUITE.erl",668}]}.
    {func_info,{atom,bs_match_SUITE},{atom,dec_subidentifiers3},4}.
  {label,334}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,any}}]}}.
    {'%',{var_info,{x,2},[{type,{t_list,{t_integer,any},nil}}]}}.
    {'%',{var_info,{x,3},[{type,{t_integer,{'-inf',2}}}]}}.
    {test,is_eq_exact,{f,335},[{tr,{x,3},{t_integer,{'-inf',2}}},{integer,0}]}.
    {allocate,1,3}.
    {move,{x,0},{y,0}}.
    {move,{x,2},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",669}]}.
    {call_ext,1,{extfunc,lists,reverse,1}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{x,0},{y,0}]}}.
    {deallocate,1}.
    return.
  {label,335}.
    {bs_start_match4,{atom,no_fail},4,{x,0},{x,4}}.
    {bs_get_position,{x,4},{x,5},5}.
    {bs_match,{f,336},
              {x,4},
              {commands,[{ensure_at_least,1,1},
                         {integer,6,{literal,[]},1,1,{x,6}}]}}.
    {test,is_eq_exact,{f,336},[{tr,{x,6},{t_integer,{0,1}}},{integer,1}]}.
    {bs_match,{f,336},
              {x,4},
              {commands,[{ensure_at_least,7,8},
                         {integer,5,{literal,[]},7,1,{x,0}},
                         {get_tail,5,8,{x,4}}]}}.
    {line,[{location,"bs_match_SUITE.erl",671}]}.
    {gc_bif,'bsl',{f,0},5,[{tr,{x,1},{t_integer,any}},{integer,7}],{x,1}}.
    {gc_bif,'bor',
            {f,0},
            5,
            [{tr,{x,1},{t_integer,any}},{tr,{x,0},{t_integer,{0,127}}}],
            {x,0}}.
    {gc_bif,'-',{f,0},5,[{tr,{x,3},{t_integer,{'-inf',2}}},{integer,1}],{x,3}}.
    {move,{x,0},{x,1}}.
    {move,{x,4},{x,0}}.
    {call_only,4,{f,334}}. % dec_subidentifiers3/4
  {label,336}.
    {bs_set_position,{x,4},{x,5}}.
    {bs_match,{f,333},
              {x,4},
              {commands,[{ensure_at_least,8,1},
                         {integer,5,{literal,[]},8,1,{x,0}},
                         {get_tail,5,1,{x,4}}]}}.
    {line,[{location,"bs_match_SUITE.erl",673}]}.
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
    {call_only,4,{f,334}}. % dec_subidentifiers3/4


{function, dec_subidentifiers4, 4, 338}.
  {label,337}.
    {line,[{location,"bs_match_SUITE.erl",675}]}.
    {func_info,{atom,bs_match_SUITE},{atom,dec_subidentifiers4},4}.
  {label,338}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,any}}]}}.
    {'%',{var_info,{x,2},[{type,{t_list,{t_integer,any},nil}}]}}.
    {'%',{var_info,{x,3},[{type,{t_integer,{'-inf',2}}}]}}.
    {bs_start_match4,{atom,no_fail},4,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,4},4}.
    {bs_match,{f,339},
              {x,0},
              {commands,[{ensure_at_least,1,1},
                         {integer,5,{literal,[]},1,1,{x,5}}]}}.
    {test,is_eq_exact,{f,339},[{tr,{x,5},{t_integer,{0,1}}},{integer,1}]}.
    {bs_match,{f,339},
              {x,0},
              {commands,[{ensure_at_least,7,8},
                         {integer,5,{literal,[]},7,1,{x,5}}]}}.
    {test,is_ne_exact,{f,341},[{tr,{x,3},{t_integer,{'-inf',2}}},{integer,0}]}.
    {line,[{location,"bs_match_SUITE.erl",676}]}.
    {gc_bif,'bsl',{f,0},6,[{tr,{x,1},{t_integer,any}},{integer,7}],{x,1}}.
    {gc_bif,'bor',
            {f,0},
            6,
            [{tr,{x,1},{t_integer,any}},{tr,{x,5},{t_integer,{0,127}}}],
            {x,1}}.
    {gc_bif,'-',{f,0},4,[{tr,{x,3},{t_integer,{'-inf',2}}},{integer,1}],{x,3}}.
    {call_only,4,{f,338}}. % dec_subidentifiers4/4
  {label,339}.
    {bs_set_position,{x,0},{x,4}}.
    {bs_match,{f,340},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,5,{literal,[]},8,1,{x,5}}]}}.
    {test,is_ne_exact,{f,341},[{tr,{x,3},{t_integer,{'-inf',2}}},{integer,0}]}.
    {line,[{location,"bs_match_SUITE.erl",678}]}.
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
    {call_only,4,{f,338}}. % dec_subidentifiers4/4
  {label,340}.
    {test,is_eq_exact,{f,342},[{tr,{x,3},{t_integer,{'-inf',2}}},{integer,0}]}.
  {label,341}.
    {allocate,2,5}.
    {move,{x,4},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{x,2},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",680}]}.
    {call_ext,1,{extfunc,lists,reverse,1}}.
    {bs_set_position,{y,1},{y,0}}.
    {bs_get_tail,{y,1},{x,1},1}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {deallocate,2}.
    return.
  {label,342}.
    {bs_set_position,{x,0},{x,4}}.
    {bs_get_tail,{x,0},{x,0},4}.
    {jump,{f,337}}.


{function, skip_optional_tag, 1, 344}.
  {label,343}.
    {line,[{location,"bs_match_SUITE.erl",683}]}.
    {func_info,{atom,bs_match_SUITE},{atom,skip_optional_tag},1}.
  {label,344}.
    {test,is_list,{f,343},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<"*">>},{x,1}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",684}]}.
    {call,2,{f,350}}. % skip_optional_tag/2
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
         {literal,{ok,<<>>}}]}.
    {move,{literal,<<42,1>>},{x,1}}.
    {move,{literal,<<42,1>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",685}]}.
    {call,2,{f,350}}. % skip_optional_tag/2
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
    {move,{literal,<<42,1,2,3>>},{x,1}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",686}]}.
    {call,2,{f,350}}. % skip_optional_tag/2
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
         {literal,{ok,<<1,2,3>>}}]}.
    {move,{atom,blurf},{x,1}}.
    {move,{literal,<<2:3>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",687}]}.
    {call,2,{f,350}}. % skip_optional_tag/2
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
         {atom,missing}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,345}.
    {badmatch,{x,0}}.
  {label,346}.
    {line,[{location,"bs_match_SUITE.erl",686}]}.
    {badmatch,{x,0}}.
  {label,347}.
    {line,[{location,"bs_match_SUITE.erl",685}]}.
    {badmatch,{x,0}}.
  {label,348}.
    {line,[{location,"bs_match_SUITE.erl",684}]}.
    {badmatch,{x,0}}.


{function, skip_optional_tag, 2, 350}.
  {label,349}.
    {line,[{location,"bs_match_SUITE.erl",690}]}.
    {func_info,{atom,bs_match_SUITE},{atom,skip_optional_tag},2}.
  {label,350}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_union,{t_atom,[blurf]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,351},{x,0},{commands,[{ensure_exactly,0}]}}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{atom,ok},{x,1}]}}.
    return.
  {label,351}.
    {bs_match,{f,352},
              {x,0},
              {commands,[{ensure_at_least,8,8},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_start_match3,{f,352},3,[{x,1}],{x,1}}.
    {bs_match,{f,352},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}},
                         {get_tail,4,1,{x,1}}]}}.
    {test,is_eq_exact,
          {f,352},
          [{tr,{x,3},{t_integer,{0,255}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {call_only,2,{f,350}}. % skip_optional_tag/2
  {label,352}.
    {move,{atom,missing},{x,0}}.
    return.


{function, decode_integer, 1, 354}.
  {label,353}.
    {line,[{location,"bs_match_SUITE.erl",696}]}.
    {func_info,{atom,bs_match_SUITE},{atom,decode_integer},1}.
  {label,354}.
    {allocate,0,0}.
    {move,{literal,<<"*+">>},{x,1}}.
    {move,{atom,whatever},{x,2}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",697}]}.
    {call,3,{f,358}}. % decode_integer/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,any},
                                     2 => {t_bitstring,8,false},
                                     3 => {t_atom,[whatever]}}}}]}}.
    {test,is_eq_exact,
          {f,356},
          [{tr,{x,0},
               {t_tuple,3,true,
                        #{1 => {t_integer,any},
                          2 => {t_bitstring,8,false},
                          3 => {t_atom,[whatever]}}}},
           {literal,{10795,<<"+">>,whatever}}]}.
    {move,{literal,<<143,19>>},{x,1}}.
    {move,{atom,whatever},{x,2}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",698}]}.
    {call,3,{f,358}}. % decode_integer/3
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
           {literal,{-28909,<<19>>,whatever}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,355}.
    {badmatch,{x,0}}.
  {label,356}.
    {line,[{location,"bs_match_SUITE.erl",697}]}.
    {badmatch,{x,0}}.


{function, decode_integer, 3, 358}.
  {label,357}.
    {line,[{location,"bs_match_SUITE.erl",701}]}.
    {func_info,{atom,bs_match_SUITE},{atom,decode_integer},3}.
  {label,358}.
    {'%',{var_info,{x,0},[{type,{t_integer,{1,1}}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_bitstring,16,false}},accepts_match_context]}}.
    {'%',{var_info,{x,2},[{type,{t_atom,[whatever]}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,3},3}.
    {bs_match,{f,360},
              {x,1},
              {commands,[{ensure_at_least,8,8},
                         {integer,2,{literal,[]},1,1,{x,0}},
                         {integer,2,{literal,[]},7,1,{x,2}},
                         {get_tail,3,8,{x,1}}]}}.
    {test,is_eq_exact,{f,359},[{tr,{x,0},{t_integer,{0,1}}},{integer,0}]}.
    {line,[{location,"bs_match_SUITE.erl",702}]}.
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
    {bs_match,{f,362},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {skip,8},
                         {get_tail,3,1,{x,3}}]}}.
    {line,[{location,"bs_match_SUITE.erl",703}]}.
    {gc_bif,byte_size,{f,0},4,[{tr,{x,0},{t_bitstring,8,false}}],{x,4}}.
    {bs_set_position,{x,1},{x,2}}.
    {test,bs_get_integer2,
          {f,361},
          5,
          [{tr,{x,1},{t_bs_context,8}},
           {tr,{x,4},{t_integer,{0,288230376151711743}}},
           8,
           {field_flags,[{anno,[704,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,361},{x,1},{commands,[{ensure_exactly,0}]}}.
    {test_heap,4,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3},{atom,whatever}]}}.
    return.
  {label,359}.
    {line,[{location,"bs_match_SUITE.erl",707}]}.
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
    {bs_match,{f,364},
              {x,3},
              {commands,[{ensure_at_least,8,1},
                         {skip,8},
                         {get_tail,4,1,{x,3}}]}}.
    {line,[{location,"bs_match_SUITE.erl",708}]}.
    {gc_bif,byte_size,{f,0},4,[{tr,{x,0},{t_bitstring,8,false}}],{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",709}]}.
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
          {f,363},
          4,
          [{tr,{x,2},{t_bs_context,8}},
           {tr,{x,0},{t_integer,{0,288230376151711743}}},
           8,
           {field_flags,[{anno,[709,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {bs_match,{f,363},{x,2},{commands,[{ensure_exactly,0}]}}.
    {line,[{location,"bs_match_SUITE.erl",710}]}.
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
  {label,360}.
    {bs_set_position,{x,1},{x,3}}.
    {bs_get_tail,{x,1},{x,1},3}.
    {jump,{f,357}}.
  {label,361}.
    {line,[{location,"bs_match_SUITE.erl",704}]}.
    {badmatch,{x,0}}.
  {label,362}.
    {line,[{location,"bs_match_SUITE.erl",702}]}.
    {badmatch,{x,0}}.
  {label,363}.
    {line,[{location,"bs_match_SUITE.erl",709}]}.
    {badmatch,{x,1}}.
  {label,364}.
    {line,[{location,"bs_match_SUITE.erl",707}]}.
    {badmatch,{x,0}}.


{function, wfbm, 1, 366}.
  {label,365}.
    {line,[{location,"bs_match_SUITE.erl",715}]}.
    {func_info,{atom,bs_match_SUITE},{atom,wfbm},1}.
  {label,366}.
    {test,is_list,{f,365},[{x,0}]}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{literal,<<" ">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",718}]}.
    {call,1,{f,381}}. % check_for_dot_or_space/1
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
           {literal,{nomatch,0}}]}.
    {move,{literal,<<" abc">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",719}]}.
    {call,1,{f,381}}. % check_for_dot_or_space/1
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
    {move,{literal,<<"abcde 34555">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",720}]}.
    {call,1,{f,381}}. % check_for_dot_or_space/1
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
           {literal,{ok,<<"abcde">>}}]}.
    {move,{literal,<<".gurka">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",721}]}.
    {call,1,{f,381}}. % check_for_dot_or_space/1
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
           {literal,{nomatch,0}}]}.
    {move,{literal,<<"g.urka">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",722}]}.
    {call,1,{f,381}}. % check_for_dot_or_space/1
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
           {literal,{nomatch,1}}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",724}]}.
    {call,1,{f,389}}. % get_tail/1
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
           {atom,nomatch}]}.
    {move,{literal,<<"200x/2007/10/23/blurf ">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",725}]}.
    {call,1,{f,389}}. % get_tail/1
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
           {literal,{ok,<<"2007/10/23/blurf">>}}]}.
    {move,{literal,<<"200x/2007/10/23/blurf.">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",726}]}.
    {call,1,{f,389}}. % get_tail/1
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
           {literal,{skip,21}}]}.
    {move,{literal,<<"200y.2007.10.23.blurf ">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",727}]}.
    {call,1,{f,389}}. % get_tail/1
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
           {atom,nomatch}]}.
    {'catch',{y,1},{f,367}}.
    {move,{literal,{no,binary,at,all}},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",728}]}.
    {call,1,{f,389}}. % get_tail/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,367}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,370},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,0},{f,368}}.
    {move,{atom,no_binary},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_SUITE.erl",729}]}.
    {call,1,{f,389}}. % get_tail/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,368}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,369},[{x,0},2,{atom,'EXIT'}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,369}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",729}]}.
    {badmatch,{x,0}}.
  {label,370}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",728}]}.
    {badmatch,{x,0}}.
  {label,371}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",727}]}.
    {badmatch,{x,0}}.
  {label,372}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",726}]}.
    {badmatch,{x,0}}.
  {label,373}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",725}]}.
    {badmatch,{x,0}}.
  {label,374}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",724}]}.
    {badmatch,{x,0}}.
  {label,375}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",722}]}.
    {badmatch,{x,0}}.
  {label,376}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",721}]}.
    {badmatch,{x,0}}.
  {label,377}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",720}]}.
    {badmatch,{x,0}}.
  {label,378}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",719}]}.
    {badmatch,{x,0}}.
  {label,379}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",718}]}.
    {badmatch,{x,0}}.


{function, check_for_dot_or_space, 1, 381}.
  {label,380}.
    {line,[{location,"bs_match_SUITE.erl",732}]}.
    {func_info,{atom,bs_match_SUITE},{atom,check_for_dot_or_space},1}.
  {label,381}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {move,{integer,0},{x,1}}.
    {call_only,2,{f,383}}. % check_for_dot_or_space/2


{function, check_for_dot_or_space, 2, 383}.
  {label,382}.
    {line,[{location,"bs_match_SUITE.erl",735}]}.
    {func_info,{atom,bs_match_SUITE},{atom,check_for_dot_or_space},2}.
  {label,383}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,'+inf'}}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {bs_match,{f,384},
              {x,0},
              {commands,[{ensure_at_least,8,1},{'=:=',nil,8,32}]}}.
    {test,is_eq_exact,{f,384},[{tr,{x,1},{t_integer,{0,'+inf'}}},{integer,0}]}.
    {move,{literal,{nomatch,0}},{x,0}}.
    return.
  {label,384}.
    {bs_set_position,{x,0},{x,2}}.
    {test,bs_get_binary2,
          {f,387},
          3,
          [{tr,{x,0},{t_bs_context,8}},
           {tr,{x,1},{t_integer,{0,'+inf'}}},
           8,
           {field_flags,[{anno,[739,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_match,{f,387},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,4,{literal,[]},8,1,{x,4}}]}}.
    {select_val,{tr,{x,4},{t_integer,{0,255}}},
                {f,387},
                {list,[{integer,32},{f,386},{integer,46},{f,385}]}}.
  {label,385}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{atom,nomatch},{x,1}]}}.
    return.
  {label,386}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{atom,ok},{x,3}]}}.
    return.
  {label,387}.
    {line,[{location,"bs_match_SUITE.erl",744}]}.
    {gc_bif,'+',{f,0},3,[{tr,{x,1},{t_integer,{0,'+inf'}}},{integer,1}],{x,1}}.
    {bs_set_position,{x,0},{x,2}}.
    {call_only,2,{f,383}}. % check_for_dot_or_space/2


{function, get_tail, 1, 389}.
  {label,388}.
    {line,[{location,"bs_match_SUITE.erl",747}]}.
    {func_info,{atom,bs_match_SUITE},{atom,get_tail},1}.
  {label,389}.
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
          {f,391},
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
    {test,bs_start_match3,{f,392},1,[{x,0}],{x,1}}.
    {bs_match,{f,392},
              {x,1},
              {commands,[{ensure_at_least,128,1},
                         {binary,2,{literal,[]},16,8,{x,0}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,391},
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
    {line,[{location,"bs_match_SUITE.erl",753}]}.
    {call,1,{f,381}}. % check_for_dot_or_space/1
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
    {test,is_eq_exact,{f,390},[{x,1},{atom,ok}]}.
    {line,[{location,"bs_match_SUITE.erl",755}]}.
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
  {label,390}.
    {line,[{location,"bs_match_SUITE.erl",756}]}.
    {gc_bif,'+',
            {f,0},
            1,
            [{tr,{x,0},{t_integer,{0,'+inf'}}},{integer,16}],
            {x,0}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,skip},{x,0}]}}.
    {deallocate,3}.
    return.
  {label,391}.
    {move,{atom,nomatch},{x,0}}.
    return.
  {label,392}.
    {line,[{location,"bs_match_SUITE.erl",750}]}.
    {badmatch,{x,0}}.


{function, degenerated_match, 1, 394}.
  {label,393}.
    {line,[{location,"bs_match_SUITE.erl",761}]}.
    {func_info,{atom,bs_match_SUITE},{atom,degenerated_match},1}.
  {label,394}.
    {test,is_list,{f,393},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",762}]}.
    {call,1,{f,402}}. % degenerated_match_1/1
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
           {atom,error}]}.
    {move,{literal,<<1:1>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",763}]}.
    {call,1,{f,402}}. % degenerated_match_1/1
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
           {integer,1}]}.
    {move,{literal,<<"*+">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",764}]}.
    {call,1,{f,402}}. % degenerated_match_1/1
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
           {integer,2}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",766}]}.
    {call,1,{f,405}}. % degenerated_match_2/1
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
          {f,397},
          [{tr,{x,0},
               {t_union,{t_atom,[error,no_split]},
                        none,none,
                        {t_tuple,2,true,
                                 #{1 => {t_bitstring,8,false},
                                   2 => {t_bitstring,1,false}}},
                        none}},
           {atom,error}]}.
    {move,{literal,<<1,2>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",767}]}.
    {call,1,{f,405}}. % degenerated_match_2/1
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
           {atom,no_split}]}.
    {move,{literal,<<1,2,3,4,5>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",768}]}.
    {call,1,{f,405}}. % degenerated_match_2/1
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
           {literal,{<<1,2,3,4>>,<<5>>}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,395}.
    {badmatch,{x,0}}.
  {label,396}.
    {line,[{location,"bs_match_SUITE.erl",767}]}.
    {badmatch,{x,0}}.
  {label,397}.
    {line,[{location,"bs_match_SUITE.erl",766}]}.
    {badmatch,{x,0}}.
  {label,398}.
    {line,[{location,"bs_match_SUITE.erl",764}]}.
    {badmatch,{x,0}}.
  {label,399}.
    {line,[{location,"bs_match_SUITE.erl",763}]}.
    {badmatch,{x,0}}.
  {label,400}.
    {line,[{location,"bs_match_SUITE.erl",762}]}.
    {badmatch,{x,0}}.


{function, degenerated_match_1, 1, 402}.
  {label,401}.
    {line,[{location,"bs_match_SUITE.erl",772}]}.
    {func_info,{atom,bs_match_SUITE},{atom,degenerated_match_1},1}.
  {label,402}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {test,is_eq_exact,
          {f,403},
          [{tr,{x,0},{t_bitstring,1,false}},{literal,<<>>}]}.
    {move,{atom,error},{x,0}}.
    return.
  {label,403}.
    {line,[{location,"bs_match_SUITE.erl",773}]}.
    {gc_bif,byte_size,{f,0},1,[{tr,{x,0},{t_bitstring,1,false}}],{x,0}}.
    return.


{function, degenerated_match_2, 1, 405}.
  {label,404}.
    {line,[{location,"bs_match_SUITE.erl",775}]}.
    {func_info,{atom,bs_match_SUITE},{atom,degenerated_match_2},1}.
  {label,405}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,406},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<>>}]}.
    {move,{atom,error},{x,0}}.
    return.
  {label,406}.
    {line,[{location,"bs_match_SUITE.erl",777}]}.
    {gc_bif,byte_size,{f,0},1,[{tr,{x,0},{t_bitstring,8,false}}],{x,1}}.
    {test,is_ge,
          {f,407},
          [{tr,{x,1},{t_integer,{0,288230376151711743}}},{integer,5}]}.
    {move,{integer,4},{x,1}}.
    {line,[{location,"bs_match_SUITE.erl",779}]}.
    {call_ext_only,2,{extfunc,erlang,split_binary,2}}.
  {label,407}.
    {move,{atom,no_split},{x,0}}.
    return.


{function, bs_sum, 1, 409}.
  {label,408}.
    {line,[{location,"bs_match_SUITE.erl",784}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bs_sum},1}.
  {label,409}.
    {test,is_list,{f,408},[{x,0}]}.
    {allocate,4,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3}]}}.
    {move,nil,{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",785}]}.
    {call,1,{f,427}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,0}}}]}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",786}]}.
    {call,1,{f,427}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,'+inf'}}}]}}.
    {test,is_eq_exact,{f,425},[{tr,{x,0},{t_integer,{0,'+inf'}}},{integer,0}]}.
    {move,{literal,"*"},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_SUITE.erl",787}]}.
    {call,1,{f,427}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{1,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,424},
          [{tr,{x,0},{t_integer,{1,'+inf'}}},{integer,42}]}.
    {move,{literal,<<1>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_SUITE.erl",788}]}.
    {call,1,{f,427}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,'+inf'}}}]}}.
    {test,is_eq_exact,{f,423},[{tr,{x,0},{t_integer,{0,'+inf'}}},{integer,1}]}.
    {move,{literal,[1,2,3,4]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_SUITE.erl",789}]}.
    {call,1,{f,427}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{1,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,422},
          [{tr,{x,0},{t_integer,{1,'+inf'}}},{integer,10}]}.
    {move,{literal,<<1,2,3,4,5>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_SUITE.erl",790}]}.
    {call,1,{f,427}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,421},
          [{tr,{x,0},{t_integer,{0,'+inf'}}},{integer,15}]}.
    {move,{literal,[1,2,3|<<4,5,6>>]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_SUITE.erl",791}]}.
    {call,1,{f,427}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{1,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,420},
          [{tr,{x,0},{t_integer,{1,'+inf'}}},{integer,21}]}.
    {move,{literal,[1,2,3|{4,5}]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_SUITE.erl",792}]}.
    {call,1,{f,427}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{1,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,419},
          [{tr,{x,0},{t_integer,{1,'+inf'}}},{integer,15}]}.
    {move,{literal,[1,2,3|zero]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_SUITE.erl",793}]}.
    {call,1,{f,427}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{1,'+inf'}}}]}}.
    {test,is_eq_exact,{f,418},[{tr,{x,0},{t_integer,{1,'+inf'}}},{integer,6}]}.
    {move,{literal,[1,2,3|0]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_SUITE.erl",794}]}.
    {call,1,{f,427}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{1,'+inf'}}}]}}.
    {test,is_eq_exact,{f,417},[{tr,{x,0},{t_integer,{1,'+inf'}}},{integer,6}]}.
    {move,{literal,[1,2,3|one]},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_SUITE.erl",795}]}.
    {call,1,{f,427}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{1,'+inf'}}}]}}.
    {test,is_eq_exact,{f,416},[{tr,{x,0},{t_integer,{1,'+inf'}}},{integer,7}]}.
    {'catch',{y,3},{f,410}}.
    {move,{literal,{too,big,tuple}},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_SUITE.erl",797}]}.
    {call,1,{f,427}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,410}.
    {catch_end,{y,3}}.
    {line,[{scope,[7,8]},{location,"bs_match_SUITE.erl",797}]}.
    {call,1,{f,896}}. % fc/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,2},{f,411}}.
    {move,{literal,[1,2,3|{too,big,tuple}]},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_SUITE.erl",798}]}.
    {call,1,{f,427}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{1,'+inf'}}}]}}.
  {label,411}.
    {catch_end,{y,2}}.
    {line,[{scope,[5,6]},{location,"bs_match_SUITE.erl",798}]}.
    {call,1,{f,896}}. % fc/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_SUITE.erl",800}]}.
    {call,1,{f,436}}. % sneaky_alias/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_nil,{f,415},[{tr,{x,0},{t_list,any,nil}}]}.
    {move,{literal,<<0,0,2,47,0,5,234,71>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",801}]}.
    {call,1,{f,1771}}. % id/1
    {call,1,{f,436}}. % sneaky_alias/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,414},
          [{tr,{x,0},{t_list,any,nil}},{literal,[559,387655]}]}.
    {'catch',{y,1},{f,412}}.
    {move,{literal,<<1>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",802}]}.
    {call,1,{f,1771}}. % id/1
    {call,1,{f,436}}. % sneaky_alias/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
  {label,412}.
    {catch_end,{y,1}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<1>>]},{x,1}}.
    {move,{atom,sneaky_alias},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_SUITE.erl",802}]}.
    {call,3,{f,898}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,0},{f,413}}.
    {move,{integer,4},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_SUITE.erl",803}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {call,1,{f,436}}. % sneaky_alias/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
  {label,413}.
    {catch_end,{y,0}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[[1,2,3,4]]},{x,1}}.
    {move,{atom,sneaky_alias},{x,0}}.
    {call_last,3,{f,898},4}. % fc/3
  {label,414}.
    {line,[{scope,[0,4]},{location,"bs_match_SUITE.erl",801}]}.
    {badmatch,{x,0}}.
  {label,415}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",800}]}.
    {badmatch,{x,0}}.
  {label,416}.
    {line,[{scope,"\b"},{location,"bs_match_SUITE.erl",795}]}.
    {badmatch,{x,0}}.
  {label,417}.
    {line,[{scope,"\b"},{location,"bs_match_SUITE.erl",794}]}.
    {badmatch,{x,0}}.
  {label,418}.
    {line,[{scope,"\b"},{location,"bs_match_SUITE.erl",793}]}.
    {badmatch,{x,0}}.
  {label,419}.
    {line,[{scope,"\b"},{location,"bs_match_SUITE.erl",792}]}.
    {badmatch,{x,0}}.
  {label,420}.
    {line,[{scope,"\b"},{location,"bs_match_SUITE.erl",791}]}.
    {badmatch,{x,0}}.
  {label,421}.
    {line,[{scope,"\b"},{location,"bs_match_SUITE.erl",790}]}.
    {badmatch,{x,0}}.
  {label,422}.
    {line,[{scope,"\b"},{location,"bs_match_SUITE.erl",789}]}.
    {badmatch,{x,0}}.
  {label,423}.
    {line,[{scope,"\b"},{location,"bs_match_SUITE.erl",788}]}.
    {badmatch,{x,0}}.
  {label,424}.
    {line,[{scope,"\b"},{location,"bs_match_SUITE.erl",787}]}.
    {badmatch,{x,0}}.
  {label,425}.
    {line,[{scope,"\b"},{location,"bs_match_SUITE.erl",786}]}.
    {badmatch,{x,0}}.


{function, bs_sum_1, 1, 427}.
  {label,426}.
    {line,[{location,"bs_match_SUITE.erl",806}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bs_sum_1},1}.
  {label,427}.
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
    {test,bs_start_match3,{f,430},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {bs_match,{f,428},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,0}}]}}.
    {allocate,1,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {call,1,{f,427}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,'+inf'}}}]}}.
    {gc_bif,'+',
            {f,0},
            1,
            [{tr,{y,0},{t_integer,{0,255}}},{tr,{x,0},{t_integer,{0,'+inf'}}}],
            {x,0}}.
    {deallocate,1}.
    return.
  {label,428}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_match,{f,429},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{integer,0},{x,0}}.
    return.
  {label,429}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,426}}.
  {label,430}.
    {test,is_nonempty_list,{f,431},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",807}]}.
    {call,1,{f,427}}. % bs_sum_1/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,'+inf'}}}]}}.
    {gc_bif,'+',
            {f,0},
            1,
            [{tr,{y,0},{t_integer,{1,42}}},{tr,{x,0},{t_integer,{0,'+inf'}}}],
            {x,0}}.
    {deallocate,1}.
    return.
  {label,431}.
    {test,is_tuple,
          {f,433},
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
    {test,test_arity,{f,432},[{x,0},2]}.
    {move,{integer,9},{x,0}}.
    return.
  {label,432}.
    {move,{literal,{too,big,tuple}},{x,0}}.
    {jump,{f,426}}.
  {label,433}.
    {test,is_atom,
          {f,434},
          [{tr,{x,0},
               {t_union,{t_atom,[one,zero]},
                        nil,
                        {t_integer,{0,0}},
                        none,none}}]}.
    {test,is_ne_exact,{f,434},[{x,0},{atom,zero}]}.
    {move,{integer,1},{x,0}}.
    return.
  {label,434}.
    {move,{integer,0},{x,0}}.
    return.


{function, sneaky_alias, 1, 436}.
  {label,435}.
    {line,[{location,"bs_match_SUITE.erl",815}]}.
    {func_info,{atom,bs_match_SUITE},{atom,sneaky_alias},1}.
  {label,436}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,435},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {bs_match,{f,437},
              {x,1},
              {commands,[{ensure_exactly,0},{get_tail,2,1,{x,0}}]}}.
    {call_ext_only,1,{extfunc,erlang,binary_to_list,1}}.
  {label,437}.
    {bs_match,{f,438},
              {x,1},
              {commands,[{ensure_at_least,32,8},
                         {integer,2,{literal,[]},32,1,{x,0}}]}}.
    {allocate,1,2}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",816}]}.
    {call,1,{f,436}}. % sneaky_alias/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,438}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,435}}.


{function, coverage, 1, 440}.
  {label,439}.
    {line,[{location,"bs_match_SUITE.erl",818}]}.
    {func_info,{atom,bs_match_SUITE},{atom,coverage},1}.
  {label,440}.
    {test,is_list,{f,439},[{x,0}]}.
    {allocate_heap,4,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3}]}}.
    {make_fun3,{f,1933},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_number,any}}]}}.
    {move,{literal,<<>>},{x,2}}.
    {move,{integer,0},{x,1}}.
    {line,[{location,"bs_match_SUITE.erl",819}]}.
    {call,3,{f,472}}. % coverage_fold/3
    {'%',{var_info,{x,0},[{type,{t_number,any}}]}}.
    {test,is_eq_exact,{f,470},[{tr,{x,0},{t_number,any}},{integer,0}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1931},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_number,any}}]}}.
    {move,{literal,<<1,2,3>>},{x,2}}.
    {move,{integer,0},{x,1}}.
    {line,[{scope,"\b"},{location,"bs_match_SUITE.erl",820}]}.
    {call,3,{f,472}}. % coverage_fold/3
    {'%',{var_info,{x,0},[{type,{t_number,any}}]}}.
    {test,is_eq_exact,{f,469},[{tr,{x,0},{t_number,any}},{integer,6}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1929},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_number,any}}]}}.
    {'catch',{y,3},{f,441}}.
    {move,{literal,[a,b,c]},{x,2}}.
    {move,{integer,0},{x,1}}.
    {line,[{scope,"\b"},{location,"bs_match_SUITE.erl",821}]}.
    {call,3,{f,472}}. % coverage_fold/3
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,441}.
    {catch_end,{y,3}}.
    {line,[{scope,[7,8]},{location,"bs_match_SUITE.erl",821}]}.
    {call,1,{f,896}}. % fc/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<"*">>},{x,1}}.
    {move,{atom,float},{x,2}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_SUITE.erl",825}]}.
    {call,3,{f,476}}. % coverage_build/3
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
          {f,468},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,64},
           1,
           {field_flags,[{anno,[825,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,468},[{tr,{x,2},{t_float,any}},{float,42.0}]}.
    {bs_match,{f,468},{x,1},{commands,[{ensure_exactly,0}]}}.
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
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",826}]}.
    {call,3,{f,476}}. % coverage_build/3
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
     {f,467},
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
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",828}]}.
    {call,3,{f,476}}. % coverage_build/3
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
      {literal,{<<"vabc©abc">>,{x,42,43}}}]}.
    {move,nil,{x,1}}.
    {move,{literal,<<1,2>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",830}]}.
    {call,2,{f,482}}. % coverage_bc/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_bitstring,8,true},nil}}]}}.
    {test,is_eq_exact,
          {f,465},
          [{tr,{x,0},{t_list,{t_bitstring,8,true},nil}},
           {literal,[<<2>>,<<1>>]}]}.
    {move,{literal,{x,y,z}},{x,1}}.
    {move,{literal,<<2,97,98,99>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",832}]}.
    {call,2,{f,486}}. % coverage_setelement/2
    {'%',{var_info,{x,0},[{type,{t_tuple,3,true,#{}}}]}}.
    {test,is_eq_exact,
          {f,464},
          [{tr,{x,0},{t_tuple,3,true,#{}}},{literal,{x,<<"abc">>,z}}]}.
    {move,{literal,[coverage_id]},{x,1}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",834}]}.
    {call,2,{f,489}}. % coverage_apply/2
    {'%',{var_info,{x,0},[{type,{t_cons,any,nil}}]}}.
    {test,is_eq_exact,{f,463},[{tr,{x,0},{t_cons,any,nil}},{literal,"*"}]}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",835}]}.
    {call,1,{f,493}}. % coverage_external/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,462},[{tr,{x,0},{t_integer,{0,255}}},{integer,42}]}.
    {move,nil,{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",837}]}.
    {call,1,{f,500}}. % do_coverage_bin_to_term_list/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {move,{integer,10},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",838}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {test_heap,2,1}.
    {put_list,{x,0},{literal,[{a,b,c},<<0,0,0,0,5,3:2>>]},{x,0}}.
    {call,1,{f,500}}. % do_coverage_bin_to_term_list/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {'catch',{y,2},{f,442}}.
    {move,{literal,<<0,0,0,7>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",840}]}.
    {call,1,{f,505}}. % do_coverage_bin_to_term_list_1/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
  {label,442}.
    {catch_end,{y,2}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[<<0,0,0,7>>]},{x,1}}.
    {move,{atom,coverage_bin_to_term_list},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_SUITE.erl",839}]}.
    {call,3,{f,898}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<0,0,0,4>>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_SUITE.erl",842}]}.
    {call,1,{f,530}}. % coverage_per_key/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,461},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<>>}]}.
    {move,{literal,<<0,0,0,7,97,98,99>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",843}]}.
    {call,1,{f,530}}. % coverage_per_key/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,460},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<"abc">>}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",845}]}.
    {call,1,{f,534}}. % coverage_bitstring/1
    {'%',{var_info,{x,0},[{type,{t_atom,[binary,bitstring]}}]}}.
    {test,is_eq_exact,
          {f,459},
          [{tr,{x,0},{t_atom,[binary,bitstring]}},{atom,binary}]}.
    {move,{literal,<<7>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",846}]}.
    {call,1,{f,534}}. % coverage_bitstring/1
    {'%',{var_info,{x,0},[{type,{t_atom,[binary,bitstring]}}]}}.
    {test,is_eq_exact,
          {f,458},
          [{tr,{x,0},{t_atom,[binary,bitstring]}},{atom,binary}]}.
    {move,{literal,<<7:4>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",847}]}.
    {call,1,{f,534}}. % coverage_bitstring/1
    {'%',{var_info,{x,0},[{type,{t_atom,[binary,bitstring]}}]}}.
    {test,is_eq_exact,
          {f,457},
          [{tr,{x,0},{t_atom,[binary,bitstring]}},{atom,bitstring}]}.
    {move,{literal,[a]},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",848}]}.
    {call,1,{f,534}}. % coverage_bitstring/1
    {'%',{var_info,{x,0},[{type,{t_atom,[other]}}]}}.
    {move,{atom,e2},{x,3}}.
    {move,{atom,e1},{x,2}}.
    {move,{atom,e3},{x,4}}.
    {move,{atom,e0},{x,1}}.
    {move,nil,{x,5}}.
    {move,{literal,<<253,155,200,17,53>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",853}]}.
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
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",855}]}.
    {call,3,{f,544}}. % coverage_trim_1/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,455},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<"(right|linux)">>}]}.
    {move,{literal,<<"right">>},{x,1}}.
    {move,{literal,<<"linux">>},{x,2}}.
    {move,{literal,<<"/">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",856}]}.
    {call,3,{f,544}}. % coverage_trim_1/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,454},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<"/(right|linux)">>}]}.
    {move,{literal,<<"right">>},{x,1}}.
    {move,{literal,<<"linux">>},{x,2}}.
    {move,{literal,<<"left">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",858}]}.
    {call,3,{f,544}}. % coverage_trim_1/3
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,453},
          [{tr,{x,0},{t_bitstring,8,false}},
           {literal,<<"(left|linux)/(right|linux)">>}]}.
    {move,{integer,10},{x,1}}.
    {move,nil,{x,2}}.
    {move,{literal,<<"-">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",860}]}.
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
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",861}]}.
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
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",863}]}.
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
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",865}]}.
    {call,1,{f,557}}. % coverage_trim_4/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[error]},
                                   none,none,none,
                                   {t_bitstring,16,false}}}]}}.
    {test,bs_start_match3,{f,449},1,[{x,0}],{x,1}}.
    {bs_match,{f,449},
              {x,1},
              {commands,[{ensure_at_least,16,1},
                         {integer,2,{literal,[native]},16,1,{x,2}}]}}.
    {test,is_eq_exact,
          {f,449},
          [{tr,{x,2},{t_integer,{0,65535}}},{integer,57348}]}.
    {bs_match,{f,449},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{literal,<<2>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",868}]}.
    {call,1,{f,562}}. % coverage_beam_ssa_codegen/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,1},{f,443}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",871}]}.
    {call,1,{f,565}}. % coverage_beam_ssa_pre_codegen/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,443}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,448},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,448},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,0},{f,444}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_SUITE.erl",874}]}.
    {call,1,{f,1771}}. % id/1
    {call,1,{f,572}}. % coverage_beam_ssa_bsm_error/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,444}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,447},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,447},[{x,1}]}.
    {test,test_arity,{f,447},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,447},[{x,1},{literal,{badarg,<<>>}}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1927},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_integer,{42,42}}}]}}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",877}]}.
    {call,1,{f,1771}}. % id/1
    {call,1,{f,574}}. % coverage_beam_validator/1
    {test,is_eq_exact,{f,446},[{x,0},{integer,42}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1925},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,none}]}}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",878}]}.
    {call,1,{f,1771}}. % id/1
    {call,1,{f,574}}. % coverage_beam_validator/1
    {test,is_eq_exact,{f,445},[{x,0},{atom,ok}]}.
    {deallocate,4}.
    return.
  {label,445}.
    {badmatch,{x,0}}.
  {label,446}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",877}]}.
    {badmatch,{x,0}}.
  {label,447}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",874}]}.
    {badmatch,{x,0}}.
  {label,448}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",871}]}.
    {badmatch,{x,0}}.
  {label,449}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",865}]}.
    {badmatch,{x,0}}.
  {label,450}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",863}]}.
    {badmatch,{x,0}}.
  {label,451}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",861}]}.
    {badmatch,{x,0}}.
  {label,452}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",860}]}.
    {badmatch,{x,0}}.
  {label,453}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",857}]}.
    {badmatch,{x,0}}.
  {label,454}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",856}]}.
    {badmatch,{x,0}}.
  {label,455}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",855}]}.
    {badmatch,{x,0}}.
  {label,456}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",852}]}.
    {badmatch,{x,0}}.
  {label,457}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",847}]}.
    {badmatch,{atom,binary}}.
  {label,458}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",846}]}.
    {badmatch,{atom,bitstring}}.
  {label,459}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",845}]}.
    {badmatch,{atom,bitstring}}.
  {label,460}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",843}]}.
    {badmatch,{x,0}}.
  {label,461}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",842}]}.
    {badmatch,{x,0}}.
  {label,462}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",835}]}.
    {badmatch,{x,0}}.
  {label,463}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",834}]}.
    {badmatch,{x,0}}.
  {label,464}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",832}]}.
    {badmatch,{x,0}}.
  {label,465}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",830}]}.
    {badmatch,{x,0}}.
  {label,466}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",827}]}.
    {badmatch,{x,0}}.
  {label,467}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",826}]}.
    {badmatch,{x,0}}.
  {label,468}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",825}]}.
    {badmatch,{x,0}}.
  {label,469}.
    {line,[{scope,"\b"},{location,"bs_match_SUITE.erl",820}]}.
    {badmatch,{x,0}}.
  {label,470}.
    {line,[{scope,"\b"},{location,"bs_match_SUITE.erl",819}]}.
    {badmatch,{x,0}}.


{function, coverage_fold, 3, 472}.
  {label,471}.
    {line,[{location,"bs_match_SUITE.erl",882}]}.
    {func_info,{atom,bs_match_SUITE},{atom,coverage_fold},3}.
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
    {bs_get_position,{x,3},{x,2},4}.
    {bs_match,{f,473},
              {x,3},
              {commands,[{ensure_at_least,8,1},
                         {integer,4,{literal,[]},8,1,{x,2}}]}}.
    {allocate,3,4}.
    {move,{x,3},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
    {move,{x,2},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",884}]}.
    {call,1,{f,1771}}. % id/1
    {swap,{y,1},{x,0}}.
    {call,1,{f,1771}}. % id/1
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
    {bs_set_position,{x,3},{x,2}}.
    {bs_match,{f,474},{x,3},{commands,[{ensure_exactly,0}]}}.
    {move,{x,1},{x,0}}.
    return.
  {label,474}.
    {bs_get_tail,{x,3},{x,2},4}.
    {jump,{f,471}}.


{function, coverage_build, 3, 476}.
  {label,475}.
    {line,[{location,"bs_match_SUITE.erl",887}]}.
    {func_info,{atom,bs_match_SUITE},{atom,coverage_build},3}.
  {label,476}.
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
    {bs_get_position,{x,1},{x,3},3}.
    {bs_match,{f,478},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
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
    {line,[{location,"bs_match_SUITE.erl",888}]}.
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
    {call,1,{f,1771}}. % id/1
    {line,[{location,"bs_match_SUITE.erl",889}]}.
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
    {call_last,3,{f,476},2}. % coverage_build/3
  {label,477}.
    {allocate,4,4}.
    {move,{x,3},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,0},{y,3}}.
    {move,{integer,4},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",892}]}.
    {call,1,{f,1771}}. % id/1
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
    {call,1,{f,1771}}. % id/1
    {line,[{location,"bs_match_SUITE.erl",893}]}.
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
    {call,1,{f,1771}}. % id/1
    {move,{x,0},{y,2}}.
    {move,{y,1},{x,1}}.
    {move,{integer,43},{x,2}}.
    {move,{integer,3},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",894}]}.
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
    {bs_set_position,{x,1},{x,3}}.
    {bs_match,{f,479},{x,1},{commands,[{ensure_exactly,0}]}}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{x,0},{x,2}]}}.
    return.
  {label,479}.
    {bs_get_tail,{x,1},{x,1},3}.
    {jump,{f,475}}.
  {label,480}.
    {line,[{location,"bs_match_SUITE.erl",895}]}.
    if_end.


{function, coverage_bc, 2, 482}.
  {label,481}.
    {line,[{location,"bs_match_SUITE.erl",901}]}.
    {func_info,{atom,bs_match_SUITE},{atom,coverage_bc},2}.
  {label,482}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_bitstring,8,true},nil}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {bs_match,{f,483},
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
    {line,[{location,"bs_match_SUITE.erl",902}]}.
    {call,2,{f,1922}}. % '-coverage_bc/2-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {test_heap,2,1}.
    {put_list,{x,0},{y,1},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,482},2}. % coverage_bc/2
  {label,483}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_match,{f,484},{x,0},{commands,[{ensure_exactly,0}]}}.
    {move,{x,1},{x,0}}.
    return.
  {label,484}.
    {bs_get_tail,{x,0},{x,0},2}.
    {jump,{f,481}}.


{function, coverage_setelement, 2, 486}.
  {label,485}.
    {line,[{location,"bs_match_SUITE.erl",906}]}.
    {func_info,{atom,bs_match_SUITE},{atom,coverage_setelement},2}.
  {label,486}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,32,false}},accepts_match_context]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_atom,[x]},
                                     2 => {t_atom,[y]},
                                     3 => {t_atom,[z]}}}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {bs_match,{f,487},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}},
                         {get_tail,3,1,{x,0}}]}}.
    {swap,{x,0},{x,2}}.
    {line,[{location,"bs_match_SUITE.erl",907}]}.
    {call_ext_only,3,{extfunc,erlang,setelement,3}}.
  {label,487}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {jump,{f,485}}.


{function, coverage_apply, 2, 489}.
  {label,488}.
    {line,[{location,"bs_match_SUITE.erl",909}]}.
    {func_info,{atom,bs_match_SUITE},{atom,coverage_apply},2}.
  {label,489}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_atom,[coverage_id]},nil}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {bs_match,{f,490},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,is_nonempty_list,{f,490},[{x,1}]}.
    {allocate,2,4}.
    {move,{x,0},{y,1}}.
    {get_tl,{x,1},{y,0}}.
    {move,{x,3},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",910}]}.
    {call_ext,1,{extfunc,bs_match_SUITE,coverage_id,1}}.
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
    {bs_match,{f,491},{x,0},{commands,[{ensure_exactly,0}]}}.
    {test,is_nil,{f,491},[{tr,{x,1},{t_list,{t_atom,[coverage_id]},nil}}]}.
    {move,nil,{x,0}}.
    return.
  {label,491}.
    {bs_get_tail,{x,0},{x,0},2}.
    {jump,{f,488}}.


{function, coverage_external, 1, 493}.
  {label,492}.
    {line,[{location,"bs_match_SUITE.erl",913}]}.
    {func_info,{atom,bs_match_SUITE},{atom,coverage_external},1}.
  {label,493}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,494},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,1,{literal,[]},8,1,{x,1}}]}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {bs_get_tail,{x,0},{x,1},1}.
    {move,{x,1},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",914}]}.
    {call_ext,2,{extfunc,bs_match_SUITE,coverage_external_ignore,2}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,494}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,492}}.


{function, coverage_external_ignore, 2, 496}.
  {label,495}.
    {line,[{location,"bs_match_SUITE.erl",917}]}.
    {func_info,{atom,bs_match_SUITE},{atom,coverage_external_ignore},2}.
  {label,496}.
    {move,{atom,ok},{x,0}}.
    return.


{function, coverage_id, 1, 498}.
  {label,497}.
    {line,[{location,"bs_match_SUITE.erl",920}]}.
    {func_info,{atom,bs_match_SUITE},{atom,coverage_id},1}.
  {label,498}.
    {call_only,1,{f,1771}}. % id/1


{function, do_coverage_bin_to_term_list, 1, 500}.
  {label,499}.
    {line,[{location,"bs_match_SUITE.erl",922}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_coverage_bin_to_term_list},1}.
  {label,500}.
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",923}]}.
    {call,2,{f,1919}}. % '-do_coverage_bin_to_term_list/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,true}}]}}.
    {move,{x,0},{y,0}}.
    {line,[{location,"bs_match_SUITE.erl",926}]}.
    {call,1,{f,505}}. % do_coverage_bin_to_term_list_1/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,503},
          [{tr,{x,0},{t_list,any,nil}},{tr,{y,1},{t_list,any,nil}}]}.
    {line,[{location,"bs_match_SUITE.erl",927}]}.
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
    {line,[{location,"bs_match_SUITE.erl",928}]}.
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
    {line,[{location,"bs_match_SUITE.erl",927}]}.
    {badmatch,{x,0}}.
  {label,503}.
    {line,[{location,"bs_match_SUITE.erl",926}]}.
    {badmatch,{x,0}}.


{function, do_coverage_bin_to_term_list_1, 1, 505}.
  {label,504}.
    {line,[{location,"bs_match_SUITE.erl",930}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_coverage_bin_to_term_list_1},1}.
  {label,505}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_match_SUITE.erl",931}]}.
    {call,1,{f,510}}. % coverage_bin_to_term_list/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,0}}.
    {move,nil,{x,1}}.
    {line,[{location,"bs_match_SUITE.erl",932}]}.
    {call,2,{f,515}}. % coverage_bin_to_term_list/2
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,508},
          [{tr,{x,0},{t_list,any,nil}},{tr,{y,0},{t_list,any,nil}}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",933}]}.
    {call,1,{f,520}}. % coverage_bin_to_term_list_catch/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_eq_exact,
          {f,507},
          [{tr,{x,0},{t_list,any,nil}},{tr,{y,0},{t_list,any,nil}}]}.
    {move,nil,{x,1}}.
    {move,{y,1},{x,0}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {line,[{location,"bs_match_SUITE.erl",934}]}.
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
    {line,[{location,"bs_match_SUITE.erl",933}]}.
    {badmatch,{x,0}}.
  {label,508}.
    {line,[{location,"bs_match_SUITE.erl",932}]}.
    {badmatch,{x,0}}.


{function, coverage_bin_to_term_list, 1, 510}.
  {label,509}.
    {line,[{location,"bs_match_SUITE.erl",936}]}.
    {func_info,{atom,bs_match_SUITE},{atom,coverage_bin_to_term_list},1}.
  {label,510}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,513},
              {x,0},
              {commands,[{ensure_at_least,32,1},
                         {integer,2,{literal,[]},32,1,{x,2}}]}}.
    {test,bs_get_binary2,
          {f,513},
          3,
          [{tr,{x,0},{t_bs_context,8}},
           {tr,{x,2},{t_integer,{0,4294967295}}},
           8,
           {field_flags,[{anno,[936,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {allocate,3,3}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {'try',{y,2},{f,511}}.
    {move,{x,2},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",937}]}.
    {call_ext,1,{extfunc,erlang,binary_to_term,1}}.
    {move,{x,0},{y,0}}.
    {try_end,{y,2}}.
    {move,{y,1},{x,0}}.
    {move,{y,0},{y,2}}.
    {trim,2,1}.
    {line,[{location,"bs_match_SUITE.erl",938}]}.
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
    {line,[{location,"bs_match_SUITE.erl",944}]}.
    {func_info,{atom,bs_match_SUITE},{atom,coverage_bin_to_term_list},2}.
  {label,515}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_list,any,nil}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {bs_match,{f,518},
              {x,0},
              {commands,[{ensure_at_least,32,1},
                         {integer,3,{literal,[]},32,1,{x,3}}]}}.
    {test,bs_get_binary2,
          {f,518},
          4,
          [{tr,{x,0},{t_bs_context,8}},
           {tr,{x,3},{t_integer,{0,4294967295}}},
           8,
           {field_flags,[{anno,[944,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {allocate,3,4}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {'try',{y,2},{f,516}}.
    {move,{x,3},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",945}]}.
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
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",950}]}.
    {call_ext_only,1,{extfunc,lists,reverse,1}}.


{function, coverage_bin_to_term_list_catch, 1, 520}.
  {label,519}.
    {line,[{location,"bs_match_SUITE.erl",952}]}.
    {func_info,{atom,bs_match_SUITE},{atom,coverage_bin_to_term_list_catch},1}.
  {label,520}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,523},
              {x,0},
              {commands,[{ensure_at_least,32,1},
                         {integer,2,{literal,[]},32,1,{x,2}}]}}.
    {test,bs_get_binary2,
          {f,523},
          3,
          [{tr,{x,0},{t_bs_context,8}},
           {tr,{x,2},{t_integer,{0,4294967295}}},
           8,
           {field_flags,[{anno,[952,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {allocate,2,3}.
    {move,{x,0},{y,0}}.
    {'catch',{y,1},{f,521}}.
    {move,{x,2},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",953}]}.
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
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",955}]}.
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
    {line,[{location,"bs_match_SUITE.erl",959}]}.
    {func_info,{atom,bs_match_SUITE},{atom,coverage_bin_to_term_list_catch},2}.
  {label,525}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_list,any,nil}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {bs_match,{f,528},
              {x,0},
              {commands,[{ensure_at_least,32,1},
                         {integer,3,{literal,[]},32,1,{x,3}}]}}.
    {test,bs_get_binary2,
          {f,528},
          4,
          [{tr,{x,0},{t_bs_context,8}},
           {tr,{x,3},{t_integer,{0,4294967295}}},
           8,
           {field_flags,[{anno,[959,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {allocate,3,4}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{y,1}}.
    {'catch',{y,2},{f,526}}.
    {move,{x,3},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",960}]}.
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
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",964}]}.
    {call_ext_only,1,{extfunc,lists,reverse,1}}.


{function, coverage_per_key, 1, 530}.
  {label,529}.
    {line,[{location,"bs_match_SUITE.erl",966}]}.
    {func_info,{atom,bs_match_SUITE},{atom,coverage_per_key},1}.
  {label,530}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,531},
              {x,0},
              {commands,[{ensure_at_least,32,1},
                         {integer,2,{literal,[]},32,1,{x,2}},
                         {get_tail,3,1,{x,3}}]}}.
    {bs_set_position,{x,0},{x,1}}.
    {line,[{location,"bs_match_SUITE.erl",967}]}.
    {gc_bif,byte_size,{f,0},4,[{tr,{x,0},{t_bs_context,8}}],{x,0}}.
    {test,is_eq_exact,
          {f,532},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},
           {tr,{x,2},{t_integer,{0,4294967295}}}]}.
    {move,{x,3},{x,0}}.
    return.
  {label,531}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,529}}.
  {label,532}.
    {badmatch,{atom,false}}.


{function, coverage_bitstring, 1, 534}.
  {label,533}.
    {line,[{location,"bs_match_SUITE.erl",970}]}.
    {func_info,{atom,bs_match_SUITE},{atom,coverage_bitstring},1}.
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
    {test,is_bitstr,
          {f,536},
          [{tr,{x,0},
               {t_union,none,
                        {t_cons,{t_atom,[a]},nil},
                        none,none,
                        {t_bitstring,4,false}}}]}.
    {move,{atom,bitstring},{x,0}}.
    return.
  {label,536}.
    {move,{atom,other},{x,0}}.
    return.


{function, coverage_trim, 6, 538}.
  {label,537}.
    {line,[{location,"bs_match_SUITE.erl",974}]}.
    {func_info,{atom,bs_match_SUITE},{atom,coverage_trim},6}.
  {label,538}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[e0]}}]}}.
    {'%',{var_info,{x,2},[{type,{t_atom,[e1]}}]}}.
    {'%',{var_info,{x,3},[{type,{t_atom,[e2]}}]}}.
    {'%',{var_info,{x,4},[{type,{t_atom,[e3]}}]}}.
    {'%',{var_info,{x,5},[{type,{t_list,{t_integer,{0,255}},nil}}]}}.
    {bs_start_match4,{atom,no_fail},6,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,6},6}.
    {bs_match,{f,541},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,7,{literal,[]},8,1,{x,1}}]}}.
    {allocate,4,7}.
    {move,{x,6},{y,0}}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
    {move,{x,5},{y,3}}.
    {bif,'>=',{f,0},[{tr,{x,1},{t_integer,{0,255}}},{integer,129}],{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",975}]}.
    {call,1,{f,1771}}. % id/1
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
    {line,[{location,"bs_match_SUITE.erl",979}]}.
    {call_ext,1,{extfunc,lists,reverse,1}}.
    {bs_set_position,{y,0},{y,1}}.
    {bs_get_tail,{y,0},{x,1},1}.
    {test_heap,4,2}.
    {put_tuple2,{x,0},{list,[{atom,done},{x,1},{x,0}]}}.
    {deallocate,2}.
    return.
  {label,541}.
    {bs_set_position,{x,0},{x,6}}.
    {bs_get_tail,{x,0},{x,0},6}.
    {jump,{f,537}}.
  {label,542}.
    {line,[{location,"bs_match_SUITE.erl",975}]}.
    {case_end,{x,0}}.


{function, coverage_trim_1, 3, 544}.
  {label,543}.
    {line,[{location,"bs_match_SUITE.erl",982}]}.
    {func_info,{atom,bs_match_SUITE},{atom,coverage_trim_1},3}.
  {label,544}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,8,false}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,3},3}.
    {bs_match,{f,545},{x,0},{commands,[{ensure_exactly,8},{'=:=',nil,8,47}]}}.
    {allocate,0,3}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {line,[{location,"bs_match_SUITE.erl",985}]}.
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
    {bs_match,{f,546},{x,0},{commands,[{ensure_exactly,0}]}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {call_only,2,{f,548}}. % do_coverage_trim_1/2
  {label,546}.
    {allocate,2,3}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{y,1}}.
    {bs_get_tail,{x,0},{x,0},3}.
    {move,{x,2},{x,1}}.
    {line,[{location,"bs_match_SUITE.erl",987}]}.
    {call,2,{f,548}}. % do_coverage_trim_1/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {swap,{y,1},{x,0}}.
    {move,{y,0},{x,1}}.
    {trim,1,1}.
    {line,[{location,"bs_match_SUITE.erl",989}]}.
    {call,2,{f,548}}. % do_coverage_trim_1/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {line,[{location,"bs_match_SUITE.erl",987}]}.
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
    {line,[{location,"bs_match_SUITE.erl",991}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_coverage_trim_1},2}.
  {label,548}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {line,[{location,"bs_match_SUITE.erl",992}]}.
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
    {line,[{location,"bs_match_SUITE.erl",994}]}.
    {func_info,{atom,bs_match_SUITE},{atom,coverage_trim_2},3}.
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
           {field_flags,[{anno,[994,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {allocate,5,5}.
    {move,{x,3},{y,0}}.
    {move,{x,4},{y,1}}.
    {move,{x,0},{y,2}}.
    {move,{x,2},{y,3}}.
    {move,{x,1},{y,4}}.
    {move,{x,4},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",995}]}.
    {call,1,{f,560}}. % printable_char/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,551},[{x,0},{atom,true}]}.
    {line,[{location,"bs_match_SUITE.erl",997}]}.
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
    {line,[{location,"bs_match_SUITE.erl",999}]}.
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
    {line,[{location,"bs_match_SUITE.erl",1002}]}.
    {func_info,{atom,bs_match_SUITE},{atom,coverage_trim_3},2}.
  {label,554}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_bitstring,16,false},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{3,3}}}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_match_SUITE.erl",1003}]}.
    {call_ext,1,{extfunc,erlang,iolist_size,1}}.
    {gc_bif,'-',{f,0},1,[{tr,{x,0},{t_integer,{0,'+inf'}}},{integer,3}],{y,0}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {line,[{location,"bs_match_SUITE.erl",1005}]}.
    {call_ext,1,{extfunc,erlang,iolist_to_binary,1}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_binary2,
          {f,555},
          2,
          [{tr,{x,1},{t_bs_context,8}},
           {tr,{y,0},{t_integer,{-3,'+inf'}}},
           8,
           {field_flags,[{anno,[1004,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,555},
              {x,1},
              {commands,[{ensure_exactly,24},
                         {binary,3,{literal,[]},3,8,{x,3}}]}}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    {deallocate,2}.
    return.
  {label,555}.
    {line,[{location,"bs_match_SUITE.erl",1004}]}.
    {badmatch,{x,0}}.


{function, coverage_trim_4, 1, 557}.
  {label,556}.
    {line,[{location,"bs_match_SUITE.erl",1008}]}.
    {func_info,{atom,bs_match_SUITE},{atom,coverage_trim_4},1}.
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
    {line,[{location,"bs_match_SUITE.erl",1009}]}.
    {call,2,{f,1916}}. % '-coverage_trim_4/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {line,[{location,"bs_match_SUITE.erl",1011}]}.
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
    {line,[{location,"bs_match_SUITE.erl",1017}]}.
    {func_info,{atom,bs_match_SUITE},{atom,printable_char},1}.
  {label,560}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,1114111}}}]}}.
    {bif,'=:=',{f,0},[{tr,{x,0},{t_integer,{0,1114111}}},{integer,97}],{x,0}}.
    return.


{function, coverage_beam_ssa_codegen, 1, 562}.
  {label,561}.
    {line,[{location,"bs_match_SUITE.erl",1020}]}.
    {func_info,{atom,bs_match_SUITE},{atom,coverage_beam_ssa_codegen},1}.
  {label,562}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,has_map_fields,{f,563},{literal,#{1 => 42}},{list,[{integer,1}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,1912},1}. % '-coverage_beam_ssa_codegen/1-lbc$^0/2-0-'/2
  {label,563}.
    {line,[{location,"bs_match_SUITE.erl",1024}]}.
    {case_end,{literal,#{1 => 42}}}.


{function, coverage_beam_ssa_pre_codegen, 1, 565}.
  {label,564}.
    {line,[{location,"bs_match_SUITE.erl",1030}]}.
    {func_info,{atom,bs_match_SUITE},{atom,coverage_beam_ssa_pre_codegen},1}.
  {label,565}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,256,true}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,570},{x,0},{commands,[{ensure_at_least,0,1},{skip,0}]}}.
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
           {field_flags,[{anno,[1030,{file,"bs_match_SUITE.erl"}]},
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
           {field_flags,[{anno,[1030,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_match,{f,570},{x,0},{commands,[{ensure_exactly,0}]}}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,570}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,564}}.


{function, coverage_beam_ssa_bsm_error, 1, 572}.
  {label,571}.
    {line,[{location,"bs_match_SUITE.erl",1033}]}.
    {func_info,{atom,bs_match_SUITE},{atom,coverage_beam_ssa_bsm_error},1}.
  {label,572}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,571},1,[{x,0}],{x,1}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,badarg},{x,0}]}}.
    {line,[{location,"bs_match_SUITE.erl",1034}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, coverage_beam_validator, 1, 574}.
  {label,573}.
    {line,[{location,"bs_match_SUITE.erl",1036}]}.
    {func_info,{atom,bs_match_SUITE},{atom,coverage_beam_validator},1}.
  {label,574}.
    {allocate,1,1}.
    {'try',{y,0},{f,575}}.
    {line,[{location,"bs_match_SUITE.erl",1039}]}.
    {call_fun,0}.
    {try_end,{y,0}}.
    {move,{x,0},{x,3}}.
    {jump,{f,576}}.
  {label,575}.
    {try_case,{y,0}}.
    {test,is_eq_exact,
          {f,577},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,throw}]}.
    {move,{atom,ok},{x,3}}.
  {label,576}.
    {move,{atom,ok},{x,1}}.
    {move,{atom,ok},{x,2}}.
    {move,{atom,ok},{x,0}}.
    {call_last,4,{f,579},1}. % coverage_beam_validator/4
  {label,577}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.


{function, coverage_beam_validator, 4, 579}.
  {label,578}.
    {line,[{location,"bs_match_SUITE.erl",1047}]}.
    {func_info,{atom,bs_match_SUITE},{atom,coverage_beam_validator},4}.
  {label,579}.
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[ok]}}]}}.
    {'%',{var_info,{x,2},[{type,{t_atom,[ok]}}]}}.
    {move,{x,3},{x,0}}.
    return.


{function, multiple_uses, 1, 581}.
  {label,580}.
    {line,[{location,"bs_match_SUITE.erl",1049}]}.
    {func_info,{atom,bs_match_SUITE},{atom,multiple_uses},1}.
  {label,581}.
    {test,is_list,{f,580},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<1,88,245,159,1,89>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1050}]}.
    {call,1,{f,589}}. % multiple_uses_1/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,4,true,
                                   #{1 => {t_integer,{0,65535}},
                                     2 => {t_integer,{0,65535}},
                                     3 => {t_integer,{0,65535}},
                                     4 => {t_bitstring,16,false}}}}]}}.
    {test,is_eq_exact,
          {f,587},
          [{tr,{x,0},
               {t_tuple,4,true,
                        #{1 => {t_integer,{0,65535}},
                          2 => {t_integer,{0,65535}},
                          3 => {t_integer,{0,65535}},
                          4 => {t_bitstring,16,false}}}},
           {literal,{344,62879,345,<<245,159,1,89>>}}]}.
    {move,{literal,<<0,0,197,18>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1051}]}.
    {call,1,{f,592}}. % multiple_uses_2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,586},[{x,0},{atom,true}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1771},0,0,{x,1},{list,[]}}.
    {move,{literal,<<0,0,42,43>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1052}]}.
    {call,2,{f,595}}. % multiple_uses_3/2
    {test,is_eq_exact,{f,585},[{x,0},{literal,<<"*+">>}]}.
    {move,{integer,42},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1054}]}.
    {call,2,{f,604}}. % first_after/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[ok]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,584},
          [{tr,{x,0},
               {t_union,{t_atom,[ok]},none,none,none,{t_bitstring,8,false}}},
           {atom,ok}]}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1055}]}.
    {call,2,{f,604}}. % first_after/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[ok]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,583},
          [{tr,{x,0},
               {t_union,{t_atom,[ok]},none,none,none,{t_bitstring,8,false}}},
           {literal,<<1>>}]}.
    {move,{integer,1},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1056}]}.
    {call,2,{f,604}}. % first_after/2
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[ok]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,582},
          [{tr,{x,0},
               {t_union,{t_atom,[ok]},none,none,none,{t_bitstring,8,false}}},
           {literal,<<2>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,582}.
    {badmatch,{x,0}}.
  {label,583}.
    {line,[{location,"bs_match_SUITE.erl",1055}]}.
    {badmatch,{x,0}}.
  {label,584}.
    {line,[{location,"bs_match_SUITE.erl",1054}]}.
    {badmatch,{x,0}}.
  {label,585}.
    {line,[{location,"bs_match_SUITE.erl",1052}]}.
    {badmatch,{x,0}}.
  {label,586}.
    {line,[{location,"bs_match_SUITE.erl",1051}]}.
    {badmatch,{atom,false}}.
  {label,587}.
    {line,[{location,"bs_match_SUITE.erl",1050}]}.
    {badmatch,{x,0}}.


{function, multiple_uses_1, 1, 589}.
  {label,588}.
    {line,[{location,"bs_match_SUITE.erl",1060}]}.
    {func_info,{atom,bs_match_SUITE},{atom,multiple_uses_1},1}.
  {label,589}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,16,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,590},
              {x,0},
              {commands,[{ensure_at_least,16,1},
                         {integer,1,{literal,[]},16,1,{x,1}}]}}.
    {allocate,3,2}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
    {bs_get_position,{x,0},{y,0},1}.
    {line,[{location,"bs_match_SUITE.erl",1062}]}.
    {call,1,{f,598}}. % multiple_uses_match/1
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
  {label,590}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,588}}.


{function, multiple_uses_2, 1, 592}.
  {label,591}.
    {line,[{location,"bs_match_SUITE.erl",1065}]}.
    {func_info,{atom,bs_match_SUITE},{atom,multiple_uses_2},1}.
  {label,592}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,32,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,593},
              {x,0},
              {commands,[{ensure_at_least,16,1},
                         {skip,16},
                         {get_tail,1,1,{x,1}}]}}.
    {move,{x,1},{x,0}}.
    {call_only,2,{f,601}}. % multiple_uses_cmp/2
  {label,593}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,591}}.


{function, multiple_uses_3, 2, 595}.
  {label,594}.
    {line,[{location,"bs_match_SUITE.erl",1069}]}.
    {func_info,{atom,bs_match_SUITE},{atom,multiple_uses_3},2}.
  {label,595}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,32,false}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_fun,1,{id,1},any}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {bs_match,{f,596},
              {x,0},
              {commands,[{ensure_at_least,16,1},
                         {skip,16},
                         {get_tail,1,1,{x,0}}]}}.
    {call_only,1,{f,1771}}. % id/1
  {label,596}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {jump,{f,594}}.


{function, multiple_uses_match, 1, 598}.
  {label,597}.
    {line,[{location,"bs_match_SUITE.erl",1073}]}.
    {func_info,{atom,bs_match_SUITE},{atom,multiple_uses_match},1}.
  {label,598}.
    {'%',{var_info,{x,0},[{type,{t_bs_context,16}},accepts_match_context]}}.
    {bs_start_match4,{atom,resume},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,599},
              {x,0},
              {commands,[{ensure_exactly,32},
                         {integer,2,{literal,[]},16,1,{x,2}},
                         {integer,3,{literal,[]},16,1,{x,3}}]}}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,599}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,597}}.


{function, multiple_uses_cmp, 2, 601}.
  {label,600}.
    {line,[{location,"bs_match_SUITE.erl",1076}]}.
    {func_info,{atom,bs_match_SUITE},{atom,multiple_uses_cmp},2}.
  {label,601}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,16,false}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,16,false}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {bs_match,{f,602},
              {x,0},
              {commands,[{ensure_exactly,16},
                         {integer,3,{literal,[]},16,1,{x,3}}]}}.
    {bs_start_match4,{atom,no_fail},4,{x,1},{x,4}}.
    {bs_match,{f,602},
              {x,4},
              {commands,[{ensure_exactly,16},
                         {integer,5,{literal,[]},16,1,{x,5}}]}}.
    {bif,'=:=',
         {f,0},
         [{tr,{x,5},{t_integer,{0,65535}}},{tr,{x,3},{t_integer,{0,65535}}}],
         {x,0}}.
    return.
  {label,602}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {jump,{f,600}}.


{function, first_after, 2, 604}.
  {label,603}.
    {line,[{location,"bs_match_SUITE.erl",1079}]}.
    {func_info,{atom,bs_match_SUITE},{atom,first_after},2}.
  {label,604}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,42}}}]}}.
    {line,[{location,"bs_match_SUITE.erl",1080}]}.
    {gc_bif,byte_size,{f,0},2,[{tr,{x,0},{t_bitstring,8,false}}],{x,2}}.
    {test,is_lt,
          {f,605},
          [{tr,{x,1},{t_integer,{0,42}}},
           {tr,{x,2},{t_integer,{0,288230376151711743}}}]}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,2}}.
    {test,bs_skip_bits2,
          {f,606},
          [{x,2},
           {x,1},
           8,
           {field_flags,[{anno,[1085,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}]}.
    {allocate,0,3}.
    {move,{x,2},{x,1}}.
    {line,[{location,"bs_match_SUITE.erl",1087}]}.
    {call,2,{f,608}}. % match_first/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_bitstring,8,false},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {get_tuple_element,{x,0},0,{x,0}}.
    {deallocate,0}.
    return.
  {label,605}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,606}.
    {line,[{location,"bs_match_SUITE.erl",1085}]}.
    {badmatch,{x,0}}.


{function, match_first, 2, 608}.
  {label,607}.
    {line,[{location,"bs_match_SUITE.erl",1094}]}.
    {func_info,{atom,bs_match_SUITE},{atom,match_first},2}.
  {label,608}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bs_context,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,resume},2,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {bs_match,{f,609},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {binary,2,{literal,[]},1,8,{x,0}},
                         {get_tail,2,1,{x,1}}]}}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    return.
  {label,609}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_get_tail,{x,1},{x,1},2}.
    {jump,{f,607}}.


{function, zero_label, 1, 611}.
  {label,610}.
    {line,[{location,"bs_match_SUITE.erl",1097}]}.
    {func_info,{atom,bs_match_SUITE},{atom,zero_label},1}.
  {label,611}.
    {test,is_list,{f,610},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<"FACEnosemouth">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1098}]}.
    {call,1,{f,615}}. % read_pols/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,613},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<"nosemouth">>}]}.
    {move,{literal,<<"noFACE">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1099}]}.
    {call,1,{f,615}}. % read_pols/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,612},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<"CE">>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,612}.
    {badmatch,{x,0}}.
  {label,613}.
    {line,[{location,"bs_match_SUITE.erl",1098}]}.
    {badmatch,{x,0}}.


{function, read_pols, 1, 615}.
  {label,614}.
    {line,[{location,"bs_match_SUITE.erl",1102}]}.
    {func_info,{atom,bs_match_SUITE},{atom,read_pols},1}.
  {label,615}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,616},
              {x,0},
              {commands,[{ensure_at_least,32,1},
                         {skip,32},
                         {get_tail,1,1,{x,0}}]}}.
    return.
  {label,616}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {line,[{location,"bs_match_SUITE.erl",1103}]}.
    {badmatch,{x,0}}.


{function, followed_by_catch, 1, 618}.
  {label,617}.
    {line,[{location,"bs_match_SUITE.erl",1108}]}.
    {func_info,{atom,bs_match_SUITE},{atom,followed_by_catch},1}.
  {label,618}.
    {test,is_list,{f,617},[{x,0}]}.
    {move,{literal,<<0,1,2,3,4,5>>},{x,0}}.
    {call_only,1,{f,620}}. % handle/1


{function, handle, 1, 620}.
  {label,619}.
    {line,[{location,"bs_match_SUITE.erl",1112}]}.
    {func_info,{atom,bs_match_SUITE},{atom,handle},1}.
  {label,620}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {test,is_eq_exact,
          {f,621},
          [{tr,{x,0},{t_bitstring,16,false}},{literal,<<>>}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,621}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_match,{f,625},{x,1},{commands,[{ensure_at_least,16,1},{skip,16}]}}.
    {allocate,2,2}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {bs_get_tail,{x,1},{y,0},2}.
    {'catch',{y,1},{f,622}}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",1115}]}.
    {call_ext,0,{extfunc,fooX,func,0}}.
  {label,622}.
    {catch_end,{y,1}}.
    {test,is_nonempty_list,{f,623},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_nil,{f,623},[{x,0}]}.
    {test,is_tagged_tuple,{f,624},[{x,1},2,{atom,rec}]}.
  {label,623}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,620},2}. % handle/1
  {label,624}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",1117}]}.
    {badrecord,{x,1}}.
  {label,625}.
    {line,[{scope,[0,2]},{location,"bs_match_SUITE.erl",1114}]}.
    {badmatch,{x,0}}.


{function, matching_meets_construction, 1, 627}.
  {label,626}.
    {line,[{location,"bs_match_SUITE.erl",1123}]}.
    {func_info,{atom,bs_match_SUITE},{atom,matching_meets_construction},1}.
  {label,627}.
    {test,is_list,{f,626},[{x,0}]}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1124}]}.
    {call,1,{f,1771}}. % id/1
    {move,{x,0},{y,1}}.
    {move,{integer,2},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1125}]}.
    {call,1,{f,1771}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{literal,<<1,2,3,4,5>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1126}]}.
    {call,1,{f,1771}}. % id/1
    {test,bs_start_match3,{f,635},1,[{x,0}],{x,1}}.
    {test,bs_skip_bits2,
          {f,635},
          [{x,1},
           {y,0},
           8,
           {field_flags,[{anno,[1127,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_match,{f,635},
              {x,1},
              {commands,[{ensure_at_least,0,8},{get_tail,2,8,{x,0}}]}}.
    {line,[{location,"bs_match_SUITE.erl",1128}]}.
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
          {f,634},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<3,4,5,97,98,99>>}]}.
    {'catch',{y,1},{f,628}}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,<<"Abc">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",1130}]}.
    {call,1,{f,637}}. % matching_meets_construction_1/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
  {label,628}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,633},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,633},[{x,1},2,{atom,badarg}]}.
    {'catch',{y,0},{f,629}}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{literal,<<"Abc">>},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_SUITE.erl",1131}]}.
    {call,1,{f,640}}. % matching_meets_construction_2/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
  {label,629}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,632},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,632},[{x,1},2,{atom,badarg}]}.
    {move,{literal,<<"Abc">>},{x,0}}.
    {line,[{scope,[1,2]},{location,"bs_match_SUITE.erl",1132}]}.
    {call,1,{f,643}}. % matching_meets_construction_3/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,631},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<"Bbc">>}]}.
    {move,{integer,2},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",1134}]}.
    {call,2,{f,646}}. % encode_octet_string/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {test,is_eq_exact,
          {f,630},
          [{tr,{x,0},{t_bitstring,16,false}},{literal,<<1,2>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,630}.
    {badmatch,{x,0}}.
  {label,631}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",1132}]}.
    {badmatch,{x,0}}.
  {label,632}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",1131}]}.
    {badmatch,{x,0}}.
  {label,633}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",1130}]}.
    {badmatch,{x,0}}.
  {label,634}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",1129}]}.
    {badmatch,{x,0}}.
  {label,635}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",1127}]}.
    {badmatch,{x,0}}.


{function, matching_meets_construction_1, 1, 637}.
  {label,636}.
    {line,[{location,"bs_match_SUITE.erl",1137}]}.
    {func_info,{atom,bs_match_SUITE},{atom,matching_meets_construction_1},1}.
  {label,637}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,638},
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
  {label,638}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,636}}.


{function, matching_meets_construction_2, 1, 640}.
  {label,639}.
    {line,[{location,"bs_match_SUITE.erl",1139}]}.
    {func_info,{atom,bs_match_SUITE},{atom,matching_meets_construction_2},1}.
  {label,640}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,641},
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
  {label,641}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,639}}.


{function, matching_meets_construction_3, 1, 643}.
  {label,642}.
    {line,[{location,"bs_match_SUITE.erl",1141}]}.
    {func_info,{atom,bs_match_SUITE},{atom,matching_meets_construction_3},1}.
  {label,643}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,644},
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
  {label,644}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,642}}.


{function, encode_octet_string, 2, 646}.
  {label,645}.
    {line,[{location,"bs_match_SUITE.erl",1143}]}.
    {func_info,{atom,bs_match_SUITE},{atom,encode_octet_string},2}.
  {label,646}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{2,2}}}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {line,[{location,"bs_match_SUITE.erl",1144}]}.
    {bs_create_bin,{f,0},
                   0,1,16,
                   {x,0},
                   {list,[{atom,binary},
                          1,8,nil,
                          {tr,{x,0},{t_bitstring,8,false}},
                          {integer,2}]}}.
    return.


{function, simon, 1, 648}.
  {label,647}.
    {line,[{location,"bs_match_SUITE.erl",1146}]}.
    {func_info,{atom,bs_match_SUITE},{atom,simon},1}.
  {label,648}.
    {test,is_list,{f,647},[{x,0}]}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{literal,<<>>},{x,1}}.
    {move,{atom,blurf},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1147}]}.
    {call,2,{f,655}}. % simon/2
    {'%',{var_info,{x,0},[{type,{t_atom,[one]}}]}}.
    {move,{literal,<<"*">>},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1148}]}.
    {call,2,{f,655}}. % simon/2
    {'%',{var_info,{x,0},[{type,{t_atom,[one,two]}}]}}.
    {test,is_eq_exact,{f,653},[{tr,{x,0},{t_atom,[one,two]}},{atom,two}]}.
    {'catch',{y,2},{f,649}}.
    {move,{literal,<<1>>},{x,1}}.
    {move,{integer,17},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",1149}]}.
    {call,2,{f,655}}. % simon/2
    {'%',{var_info,{x,0},[{type,{t_atom,[one]}}]}}.
  {label,649}.
    {catch_end,{y,2}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[17,<<1>>]},{x,1}}.
    {move,{atom,simon},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_SUITE.erl",1149}]}.
    {call,3,{f,898}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,1},{f,650}}.
    {move,{literal,<<1,2,3>>},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_SUITE.erl",1150}]}.
    {call,2,{f,655}}. % simon/2
    {'%',{var_info,{x,0},[{type,{t_atom,[one,two]}}]}}.
  {label,650}.
    {catch_end,{y,1}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[0,<<1,2,3>>]},{x,1}}.
    {move,{atom,simon},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_SUITE.erl",1150}]}.
    {call,3,{f,898}}. % fc/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<"\t">>},{x,1}}.
    {move,{atom,blurf},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_SUITE.erl",1152}]}.
    {call,2,{f,659}}. % simon2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[one]}}]}}.
    {move,{literal,<<9,1>>},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_SUITE.erl",1153}]}.
    {call,2,{f,659}}. % simon2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[one,two]}}]}}.
    {test,is_eq_exact,{f,652},[{tr,{x,0},{t_atom,[one,two]}},{atom,two}]}.
    {'catch',{y,0},{f,651}}.
    {move,{literal,<<"\t\n\v">>},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",1154}]}.
    {call,2,{f,659}}. % simon2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[one,two]}}]}}.
  {label,651}.
    {catch_end,{y,0}}.
    {move,{x,0},{x,2}}.
    {move,{literal,[0,<<"\t\n\v">>]},{x,1}}.
    {move,{atom,simon2},{x,0}}.
    {call_last,3,{f,898},3}. % fc/3
  {label,652}.
    {line,[{scope,[0,2]},{location,"bs_match_SUITE.erl",1153}]}.
    {badmatch,{atom,one}}.
  {label,653}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",1148}]}.
    {badmatch,{atom,one}}.


{function, simon, 2, 655}.
  {label,654}.
    {line,[{location,"bs_match_SUITE.erl",1157}]}.
    {func_info,{atom,bs_match_SUITE},{atom,simon},2}.
  {label,655}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[blurf]},
                                   none,
                                   {t_integer,{0,17}},
                                   none,none}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_match,{f,656},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{atom,one},{x,0}}.
    return.
  {label,656}.
    {bs_match,{f,657},{x,1},{commands,[{ensure_exactly,8}]}}.
    {test,is_eq_exact,
          {f,657},
          [{tr,{x,0},
               {t_union,{t_atom,[blurf]},none,{t_integer,{0,17}},none,none}},
           {integer,0}]}.
    {move,{atom,two},{x,0}}.
    return.
  {label,657}.
    {bs_get_tail,{x,1},{x,1},2}.
    {jump,{f,654}}.


{function, simon2, 2, 659}.
  {label,658}.
    {line,[{location,"bs_match_SUITE.erl",1160}]}.
    {func_info,{atom,bs_match_SUITE},{atom,simon2},2}.
  {label,659}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[blurf]},
                                   none,
                                   {t_integer,{0,0}},
                                   none,none}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {bs_match,{f,660},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,is_eq_exact,{f,660},[{tr,{x,3},{t_integer,{0,255}}},{integer,9}]}.
    {bs_match,{f,660},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{atom,one},{x,0}}.
    return.
  {label,660}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_match,{f,661},{x,1},{commands,[{ensure_exactly,16}]}}.
    {test,is_eq_exact,
          {f,661},
          [{tr,{x,0},
               {t_union,{t_atom,[blurf]},none,{t_integer,{0,0}},none,none}},
           {integer,0}]}.
    {move,{atom,two},{x,0}}.
    return.
  {label,661}.
    {bs_get_tail,{x,1},{x,1},2}.
    {jump,{f,658}}.


{function, matching_and_andalso, 1, 663}.
  {label,662}.
    {line,[{location,"bs_match_SUITE.erl",1165}]}.
    {func_info,{atom,bs_match_SUITE},{atom,matching_and_andalso},1}.
  {label,663}.
    {test,is_list,{f,662},[{x,0}]}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{integer,3},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1166}]}.
    {call,2,{f,681}}. % matching_and_andalso_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,2},{f,664}}.
    {move,{integer,-8},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1167}]}.
    {call,2,{f,681}}. % matching_and_andalso_1/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,664}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,679},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,679},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,1},{f,665}}.
    {move,{atom,blurf},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_SUITE.erl",1168}]}.
    {call,2,{f,681}}. % matching_and_andalso_1/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,665}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,678},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,678},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,0},{f,666}}.
    {move,{integer,19},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_SUITE.erl",1169}]}.
    {call,2,{f,681}}. % matching_and_andalso_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,666}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,677},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,677},[{x,1},2,{atom,function_clause}]}.
    {move,{literal,<<"-xyz">>},{x,1}}.
    {move,{literal,"abc"},{x,0}}.
    {line,[{scope,[1,2]},{location,"bs_match_SUITE.erl",1171}]}.
    {call,2,{f,684}}. % matching_and_andalso_23/2
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
          {f,676},
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
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",1172}]}.
    {call,2,{f,684}}. % matching_and_andalso_23/2
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
          {f,675},
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
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",1173}]}.
    {call,2,{f,684}}. % matching_and_andalso_23/2
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
          {f,674},
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
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",1174}]}.
    {call,2,{f,684}}. % matching_and_andalso_23/2
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
          {f,673},
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
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",1175}]}.
    {call,2,{f,684}}. % matching_and_andalso_23/2
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
          {f,672},
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
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",1176}]}.
    {call,2,{f,684}}. % matching_and_andalso_23/2
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
          {f,671},
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
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",1177}]}.
    {call,2,{f,684}}. % matching_and_andalso_23/2
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
          {f,670},
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
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",1178}]}.
    {call,2,{f,684}}. % matching_and_andalso_23/2
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
           {atom,error}]}.
    {move,{literal,<<"a">>},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",1179}]}.
    {call,2,{f,684}}. % matching_and_andalso_23/2
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
           {atom,error}]}.
    {move,{literal,<<"z">>},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",1180}]}.
    {call,2,{f,684}}. % matching_and_andalso_23/2
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
           {atom,error}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,3}.
    return.
  {label,667}.
    {badmatch,{x,0}}.
  {label,668}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",1179}]}.
    {badmatch,{x,0}}.
  {label,669}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",1178}]}.
    {badmatch,{x,0}}.
  {label,670}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",1177}]}.
    {badmatch,{x,0}}.
  {label,671}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",1176}]}.
    {badmatch,{x,0}}.
  {label,672}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",1175}]}.
    {badmatch,{x,0}}.
  {label,673}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",1174}]}.
    {badmatch,{x,0}}.
  {label,674}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",1173}]}.
    {badmatch,{x,0}}.
  {label,675}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",1172}]}.
    {badmatch,{x,0}}.
  {label,676}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",1171}]}.
    {badmatch,{x,0}}.
  {label,677}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",1169}]}.
    {badmatch,{x,0}}.
  {label,678}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",1168}]}.
    {badmatch,{x,0}}.
  {label,679}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",1167}]}.
    {badmatch,{x,0}}.


{function, matching_and_andalso_1, 2, 681}.
  {label,680}.
    {line,[{location,"bs_match_SUITE.erl",1183}]}.
    {func_info,{atom,bs_match_SUITE},{atom,matching_and_andalso_1},2}.
  {label,681}.
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
          {f,682},
          [{tr,{x,1},
               {t_union,{t_atom,[blurf]},
                        none,
                        {t_integer,{-8,19}},
                        none,none}}]}.
    {line,[{location,"bs_match_SUITE.erl",1184}]}.
    {gc_bif,byte_size,{f,0},3,[{tr,{x,2},{t_bitstring,8,false}}],{x,2}}.
    {test,is_ge,
          {f,682},
          [{tr,{x,2},{t_integer,{0,288230376151711743}}},
           {tr,{x,1},{t_integer,{-8,19}}}]}.
    {test,is_ge,{f,682},[{tr,{x,1},{t_integer,{-8,19}}},{integer,1}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,682}.
    {bs_get_tail,{x,0},{x,0},2}.
    {jump,{f,680}}.


{function, matching_and_andalso_23, 2, 684}.
  {label,683}.
    {line,[{location,"bs_match_SUITE.erl",1187}]}.
    {func_info,{atom,bs_match_SUITE},{atom,matching_and_andalso_23},2}.
  {label,684}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{97,99}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {allocate,2,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_match_SUITE.erl",1188}]}.
    {call,2,{f,687}}. % matching_and_andalso_2/2
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
    {line,[{location,"bs_match_SUITE.erl",1189}]}.
    {call,2,{f,692}}. % matching_and_andalso_3/2
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
          {f,685},
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
  {label,685}.
    {badmatch,{x,0}}.


{function, matching_and_andalso_2, 2, 687}.
  {label,686}.
    {line,[{location,"bs_match_SUITE.erl",1192}]}.
    {func_info,{atom,bs_match_SUITE},{atom,matching_and_andalso_2},2}.
  {label,687}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{97,99}},nil}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_match,{f,690},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}},
                         {get_tail,3,1,{x,1}}]}}.
    {test,is_ge,{f,688},[{tr,{x,2},{t_integer,{0,255}}},{integer,97}]}.
    {test,is_ge,{f,689},[{integer,122},{tr,{x,2},{t_integer,{97,255}}}]}.
    {jump,{f,690}}.
  {label,688}.
    {test,is_ge,{f,689},[{tr,{x,2},{t_integer,{0,96}}},{integer,65}]}.
    {test,is_ge,{f,690},[{tr,{x,2},{t_integer,{65,96}}},{integer,91}]}.
  {label,689}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    return.
  {label,690}.
    {move,{atom,error},{x,0}}.
    return.


{function, matching_and_andalso_3, 2, 692}.
  {label,691}.
    {line,[{location,"bs_match_SUITE.erl",1200}]}.
    {func_info,{atom,bs_match_SUITE},{atom,matching_and_andalso_3},2}.
  {label,692}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{97,99}},nil}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_match,{f,695},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}},
                         {get_tail,3,1,{x,1}}]}}.
    {gc_bif,abs,{f,695},3,[{tr,{x,2},{t_integer,{0,255}}}],{x,2}}.
    {test,is_ge,{f,693},[{tr,{x,2},{t_integer,{0,255}}},{integer,97}]}.
    {test,is_ge,{f,694},[{integer,122},{tr,{x,2},{t_integer,{97,255}}}]}.
    {jump,{f,695}}.
  {label,693}.
    {test,is_ge,{f,694},[{tr,{x,2},{t_integer,{0,96}}},{integer,65}]}.
    {test,is_ge,{f,695},[{tr,{x,2},{t_integer,{65,96}}},{integer,91}]}.
  {label,694}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    return.
  {label,695}.
    {move,{atom,error},{x,0}}.
    return.


{function, otp_7188, 1, 697}.
  {label,696}.
    {line,[{location,"bs_match_SUITE.erl",1207}]}.
    {func_info,{atom,bs_match_SUITE},{atom,otp_7188},1}.
  {label,697}.
    {test,is_list,{f,696},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<84,65,71,68,117,154,105,232,107,121,0,0,0,0,0,0,0,0,0,0,
                     0,0,0,0,0,0,0,0,0,0,0,0,0,68,97,110,105,101,108,32,76,97,
                     110,100,97,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,66,101,
                     115,116,32,79,102,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
                     0,0,0,0,50,48,48,48,50,48,48,48,32,45,32,66,101,115,116,
                     32,79,102,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,
                     32,12>>},
          {x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1218}]}.
    {call,1,{f,700}}. % parse_v1_or_v11_tag/1
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
     {f,698},
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
  {label,698}.
    {line,[{location,"bs_match_SUITE.erl",1215}]}.
    {badmatch,{x,0}}.


{function, parse_v1_or_v11_tag, 1, 700}.
  {label,699}.
    {line,[{location,"bs_match_SUITE.erl",1220}]}.
    {func_info,{atom,bs_match_SUITE},{atom,parse_v1_or_v11_tag},1}.
  {label,700}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,256,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_match,{f,702},
              {x,0},
              {commands,[{ensure_at_least,776,1},
                         {'=:=',nil,24,5521735},
                         {binary,1,{literal,[]},30,8,{x,1}},
                         {binary,2,{literal,[]},30,8,{x,2}},
                         {binary,3,{literal,[]},30,8,{x,3}},
                         {skip,32}]}}.
    {bs_get_position,{x,0},{x,4},4}.
    {bs_match,{f,701},
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
    {line,[{location,"bs_match_SUITE.erl",1226}]}.
    {call,1,{f,704}}. % trim/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {swap,{y,2},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1227}]}.
    {call,1,{f,704}}. % trim/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {swap,{y,1},{x,0}}.
    {call,1,{f,704}}. % trim/1
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
  {label,701}.
    {bs_set_position,{x,0},{x,4}}.
    {bs_match,{f,702},{x,0},{commands,[{ensure_exactly,248}]}}.
    {allocate,2,4}.
    {move,{x,3},{y,0}}.
    {move,{x,2},{y,1}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1234}]}.
    {call,1,{f,704}}. % trim/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {swap,{y,1},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1235}]}.
    {call,1,{f,704}}. % trim/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {swap,{y,0},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1236}]}.
    {call,1,{f,704}}. % trim/1
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
  {label,702}.
    {move,{atom,error},{x,0}}.
    return.


{function, trim, 1, 704}.
  {label,703}.
    {line,[{location,"bs_match_SUITE.erl",1240}]}.
    {func_info,{atom,bs_match_SUITE},{atom,trim},1}.
  {label,704}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {allocate,0,1}.
    {line,[{location,"bs_match_SUITE.erl",1241}]}.
    {call_ext,1,{extfunc,erlang,binary_to_list,1}}.
    {call,1,{f,706}}. % trim_blanks/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {call_ext_last,1,{extfunc,erlang,list_to_binary,1},0}.


{function, trim_blanks, 1, 706}.
  {label,705}.
    {line,[{location,"bs_match_SUITE.erl",1243}]}.
    {func_info,{atom,bs_match_SUITE},{atom,trim_blanks},1}.
  {label,706}.
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {allocate,0,1}.
    {line,[{location,"bs_match_SUITE.erl",1244}]}.
    {call_ext,1,{extfunc,lists,reverse,1}}.
    {call,1,{f,708}}. % skip_blanks_and_zero/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {call_ext_last,1,{extfunc,lists,reverse,1},0}.


{function, skip_blanks_and_zero, 1, 708}.
  {label,707}.
    {line,[{location,"bs_match_SUITE.erl",1246}]}.
    {func_info,{atom,bs_match_SUITE},{atom,skip_blanks_and_zero},1}.
  {label,708}.
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test,is_nonempty_list,{f,710},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {select_val,{x,1},
                {f,710},
                {list,[{integer,0},{f,709},{integer,32},{f,709}]}}.
  {label,709}.
    {move,{x,2},{x,0}}.
    {call_only,1,{f,708}}. % skip_blanks_and_zero/1
  {label,710}.
    return.


{function, otp_7233, 1, 712}.
  {label,711}.
    {line,[{location,"bs_match_SUITE.erl",1258}]}.
    {func_info,{atom,bs_match_SUITE},{atom,otp_7233},1}.
  {label,712}.
    {test,is_list,{f,711},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,{rec_otp_7233,<<"XXabcde">>,[{"xxxxxxxx",42}]}},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1259}]}.
    {call,1,{f,716}}. % otp_7233_1/1
    {bif,get,{f,0},[{atom,io_format}],{x,0}}.
    {test,is_eq_exact,
          {f,714},
          [{x,0},{literal,[<<"XXabcde">>,{"xxxxxxxx",42}]}]}.
    {move,{atom,io_format},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1261}]}.
    {call_ext,1,{extfunc,erlang,erase,1}}.
    {move,{literal,{rec_otp_7233,<<"XXabcde">>,[]}},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1262}]}.
    {call,1,{f,716}}. % otp_7233_1/1
    {bif,get,{f,0},[{atom,io_format}],{x,0}}.
    {test,is_eq_exact,{f,713},[{x,0},{atom,undefined}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,713}.
    {line,[{location,"bs_match_SUITE.erl",1263}]}.
    {badmatch,{x,0}}.
  {label,714}.
    {line,[{location,"bs_match_SUITE.erl",1260}]}.
    {badmatch,{x,0}}.


{function, otp_7233_1, 1, 716}.
  {label,715}.
    {line,[{location,"bs_match_SUITE.erl",1266}]}.
    {func_info,{atom,bs_match_SUITE},{atom,otp_7233_1},1}.
  {label,716}.
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
    {bs_match,{f,719},
              {x,2},
              {commands,[{ensure_exactly,56},
                         {binary,3,{literal,[]},2,8,{x,3}}]}}.
    {test,is_eq_exact,
          {f,718},
          [{tr,{x,3},{t_bitstring,8,false}},{literal,<<"XX">>}]}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {get_tuple_element,{x,0},2,{x,2}}.
    {move,{integer,1},{x,1}}.
    {move,{literal,"xxxxxxxx"},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1271}]}.
    {call_ext,3,{extfunc,lists,keyfind,3}}.
    {test,is_eq_exact,
          {f,717},
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
  {label,717}.
    {test_heap,4,1}.
    {get_tuple_element,{y,0},1,{x,1}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{x,1},{x,0},{x,1}}.
    {move,{atom,io_format},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1275}]}.
    {call_ext_last,2,{extfunc,erlang,put,2},1}.
  {label,718}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,719}.
    {line,[{location,"bs_match_SUITE.erl",1267}]}.
    {badmatch,{x,1}}.


{function, otp_7240, 1, 721}.
  {label,720}.
    {line,[{location,"bs_match_SUITE.erl",1281}]}.
    {func_info,{atom,bs_match_SUITE},{atom,otp_7240},1}.
  {label,721}.
    {test,is_list,{f,720},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<>>},{x,1}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1282}]}.
    {call,2,{f,726}}. % otp_7240_a/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
    {move,{integer,2},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1283}]}.
    {call,2,{f,726}}. % otp_7240_a/2
    {'%',{var_info,{x,0},[{type,{t_atom,[b]}}]}}.
    {move,{literal,<<>>},{x,1}}.
    {move,{atom,anything},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1285}]}.
    {call,2,{f,729}}. % otp_7240_b/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
    {move,{literal,{x,y}},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1286}]}.
    {call,2,{f,729}}. % otp_7240_b/2
    {'%',{var_info,{x,0},[{type,{t_atom,[b]}}]}}.
    {move,{literal,<<>>},{x,1}}.
    {move,{atom,anything},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1288}]}.
    {call,2,{f,732}}. % otp_7240_c/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
    {move,{literal,<<2>>},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1289}]}.
    {call,2,{f,732}}. % otp_7240_c/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b]}}]}}.
    {test,is_eq_exact,{f,724},[{tr,{x,0},{t_atom,[a,b]}},{atom,b}]}.
    {move,{literal,<<>>},{x,1}}.
    {move,{atom,anything},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1291}]}.
    {call,2,{f,736}}. % otp_7240_d/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b]}}]}}.
    {test,is_eq_exact,{f,723},[{tr,{x,0},{t_atom,[a,b]}},{atom,a}]}.
    {move,{literal,<<2>>},{x,1}}.
    {move,{atom,again},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1292}]}.
    {call,2,{f,736}}. % otp_7240_d/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b]}}]}}.
    {test,is_eq_exact,{f,722},[{tr,{x,0},{t_atom,[a,b]}},{atom,b}]}.
    {move,{literal,<<>>},{x,1}}.
    {move,{atom,anything},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1294}]}.
    {call,2,{f,740}}. % otp_7240_e/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
    {move,{integer,41},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1295}]}.
    {call,2,{f,740}}. % otp_7240_e/2
    {'%',{var_info,{x,0},[{type,{t_atom,[b]}}]}}.
    {move,{literal,<<>>},{x,1}}.
    {move,{atom,anything},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1297}]}.
    {call,2,{f,743}}. % otp_7240_f/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
    {move,{literal,{}},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1298}]}.
    {call,2,{f,743}}. % otp_7240_f/2
    {'%',{var_info,{x,0},[{type,{t_atom,[b]}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,722}.
    {line,[{location,"bs_match_SUITE.erl",1292}]}.
    {badmatch,{atom,a}}.
  {label,723}.
    {line,[{location,"bs_match_SUITE.erl",1291}]}.
    {badmatch,{atom,b}}.
  {label,724}.
    {line,[{location,"bs_match_SUITE.erl",1289}]}.
    {badmatch,{atom,a}}.


{function, otp_7240_a, 2, 726}.
  {label,725}.
    {line,[{location,"bs_match_SUITE.erl",1302}]}.
    {func_info,{atom,bs_match_SUITE},{atom,otp_7240_a},2}.
  {label,726}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,1}}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_union,none,none,
                                   {t_integer,{2,2}},
                                   none,
                                   {t_bitstring,256,true}}}]}}.
    {test,is_eq_exact,
          {f,727},
          [{tr,{x,1},
               {t_union,none,none,
                        {t_integer,{2,2}},
                        none,
                        {t_bitstring,256,true}}},
           {literal,<<>>}]}.
    {move,{atom,a},{x,0}}.
    return.
  {label,727}.
    {test,is_eq_exact,{f,725},[{tr,{x,0},{t_integer,{0,1}}},{integer,1}]}.
    {test,is_eq_exact,
          {f,725},
          [{tr,{x,1},
               {t_union,none,none,
                        {t_integer,{2,2}},
                        none,
                        {t_bitstring,256,true}}},
           {integer,2}]}.
    {move,{atom,b},{x,0}}.
    return.


{function, otp_7240_b, 2, 729}.
  {label,728}.
    {line,[{location,"bs_match_SUITE.erl",1305}]}.
    {func_info,{atom,bs_match_SUITE},{atom,otp_7240_b},2}.
  {label,729}.
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
          {f,730},
          [{tr,{x,1},
               {t_union,none,none,none,
                        [{{2,{t_atom,[x]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[x]},2 => {t_atom,[y]}}}}],
                        {t_bitstring,256,true}}},
           {literal,<<>>}]}.
    {move,{atom,a},{x,0}}.
    return.
  {label,730}.
    {test,is_eq_exact,
          {f,728},
          [{tr,{x,0},
               {t_union,{t_atom,[anything]},none,{t_integer,{1,1}},none,none}},
           {integer,1}]}.
    {test,is_tuple,
          {f,728},
          [{tr,{x,1},
               {t_union,none,none,none,
                        [{{2,{t_atom,[x]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[x]},2 => {t_atom,[y]}}}}],
                        {t_bitstring,256,true}}}]}.
    {move,{atom,b},{x,0}}.
    return.


{function, otp_7240_c, 2, 732}.
  {label,731}.
    {line,[{location,"bs_match_SUITE.erl",1308}]}.
    {func_info,{atom,bs_match_SUITE},{atom,otp_7240_c},2}.
  {label,732}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[anything]},
                                   none,
                                   {t_integer,{1,1}},
                                   none,none}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {bs_match,{f,733},{x,1},{commands,[{ensure_exactly,8},{'=:=',nil,8,2}]}}.
    {test,is_eq_exact,
          {f,733},
          [{tr,{x,0},
               {t_union,{t_atom,[anything]},none,{t_integer,{1,1}},none,none}},
           {integer,1}]}.
    {move,{atom,b},{x,0}}.
    return.
  {label,733}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_match,{f,734},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{atom,a},{x,0}}.
    return.
  {label,734}.
    {bs_get_tail,{x,1},{x,1},2}.
    {jump,{f,731}}.


{function, otp_7240_d, 2, 736}.
  {label,735}.
    {line,[{location,"bs_match_SUITE.erl",1311}]}.
    {func_info,{atom,bs_match_SUITE},{atom,otp_7240_d},2}.
  {label,736}.
    {'%',{var_info,{x,0},[{type,{t_atom,[again,anything]}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {bs_match,{f,737},{x,1},{commands,[{ensure_exactly,8},{'=:=',nil,8,2}]}}.
    {move,{atom,b},{x,0}}.
    return.
  {label,737}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_match,{f,738},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{atom,a},{x,0}}.
    return.
  {label,738}.
    {bs_get_tail,{x,1},{x,1},2}.
    {jump,{f,735}}.


{function, otp_7240_e, 2, 740}.
  {label,739}.
    {line,[{location,"bs_match_SUITE.erl",1314}]}.
    {func_info,{atom,bs_match_SUITE},{atom,otp_7240_e},2}.
  {label,740}.
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
          {f,741},
          [{tr,{x,1},
               {t_union,none,none,
                        {t_integer,{41,41}},
                        none,
                        {t_bitstring,256,true}}},
           {literal,<<>>}]}.
    {move,{atom,a},{x,0}}.
    return.
  {label,741}.
    {test,is_eq_exact,
          {f,739},
          [{tr,{x,0},
               {t_union,{t_atom,[anything]},none,{t_integer,{1,1}},none,none}},
           {integer,1}]}.
    {test,is_lt,
          {f,739},
          [{tr,{x,1},
               {t_union,none,none,
                        {t_integer,{41,41}},
                        none,
                        {t_bitstring,256,true}}},
           {integer,42}]}.
    {move,{atom,b},{x,0}}.
    return.


{function, otp_7240_f, 2, 743}.
  {label,742}.
    {line,[{location,"bs_match_SUITE.erl",1317}]}.
    {func_info,{atom,bs_match_SUITE},{atom,otp_7240_f},2}.
  {label,743}.
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
          {f,744},
          [{tr,{x,1},
               {t_union,none,none,none,
                        {t_tuple,0,true,#{}},
                        {t_bitstring,256,true}}},
           {literal,<<>>}]}.
    {move,{atom,a},{x,0}}.
    return.
  {label,744}.
    {test,is_eq_exact,
          {f,742},
          [{tr,{x,0},
               {t_union,{t_atom,[anything]},none,{t_integer,{1,1}},none,none}},
           {integer,1}]}.
    {test,is_tuple,
          {f,742},
          [{tr,{x,1},
               {t_union,none,none,none,
                        {t_tuple,0,true,#{}},
                        {t_bitstring,256,true}}}]}.
    {move,{atom,b},{x,0}}.
    return.


{function, otp_7498, 1, 746}.
  {label,745}.
    {line,[{location,"bs_match_SUITE.erl",1320}]}.
    {func_info,{atom,bs_match_SUITE},{atom,otp_7498},1}.
  {label,746}.
    {test,is_list,{f,745},[{x,0}]}.
    {allocate,0,0}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1321}]}.
    {call,2,{f,756}}. % otp_7498_foo/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,754},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<1,2,3>>}]}.
    {move,{integer,1},{x,1}}.
    {line,[{location,"bs_match_SUITE.erl",1322}]}.
    {call,2,{f,756}}. % otp_7498_foo/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,753},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<2,3>>}]}.
    {move,{integer,2},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1323}]}.
    {call,2,{f,756}}. % otp_7498_foo/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,752},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<1,2,3>>}]}.
    {move,{integer,0},{x,1}}.
    {line,[{location,"bs_match_SUITE.erl",1325}]}.
    {call,2,{f,760}}. % otp_7498_bar/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,751},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<1,2,3>>}]}.
    {move,{integer,1},{x,1}}.
    {line,[{location,"bs_match_SUITE.erl",1326}]}.
    {call,2,{f,760}}. % otp_7498_bar/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,750},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<2,3>>}]}.
    {move,{integer,2},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1327}]}.
    {call,2,{f,760}}. % otp_7498_bar/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,749},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<1,2,3>>}]}.
    {move,{integer,2},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1328}]}.
    {call,2,{f,760}}. % otp_7498_bar/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,748},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<>>}]}.
    {move,{integer,3},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1329}]}.
    {call,2,{f,760}}. % otp_7498_bar/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,747},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<1,2,3>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,747}.
    {badmatch,{x,0}}.
  {label,748}.
    {line,[{location,"bs_match_SUITE.erl",1328}]}.
    {badmatch,{x,0}}.
  {label,749}.
    {line,[{location,"bs_match_SUITE.erl",1327}]}.
    {badmatch,{x,0}}.
  {label,750}.
    {line,[{location,"bs_match_SUITE.erl",1326}]}.
    {badmatch,{x,0}}.
  {label,751}.
    {line,[{location,"bs_match_SUITE.erl",1325}]}.
    {badmatch,{x,0}}.
  {label,752}.
    {line,[{location,"bs_match_SUITE.erl",1323}]}.
    {badmatch,{x,0}}.
  {label,753}.
    {line,[{location,"bs_match_SUITE.erl",1322}]}.
    {badmatch,{x,0}}.
  {label,754}.
    {line,[{location,"bs_match_SUITE.erl",1321}]}.
    {badmatch,{x,0}}.


{function, otp_7498_foo, 2, 756}.
  {label,755}.
    {line,[{location,"bs_match_SUITE.erl",1333}]}.
    {func_info,{atom,bs_match_SUITE},{atom,otp_7498_foo},2}.
  {label,756}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,43}}}]}}.
    {test,is_eq_exact,{f,757},[{tr,{x,1},{t_integer,{0,43}}},{integer,0}]}.
    {move,{integer,42},{x,1}}.
    {call_only,2,{f,756}}. % otp_7498_foo/2
  {label,757}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,2}}.
    {bs_match,{f,758},
              {x,2},
              {commands,[{ensure_at_least,8,1},
                         {skip,8},
                         {get_tail,3,1,{x,2}}]}}.
    {test,is_eq_exact,{f,758},[{tr,{x,1},{t_integer,{1,43}}},{integer,1}]}.
    {move,{integer,43},{x,1}}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,756}}. % otp_7498_foo/2
  {label,758}.
    return.


{function, otp_7498_bar, 2, 760}.
  {label,759}.
    {line,[{location,"bs_match_SUITE.erl",1340}]}.
    {func_info,{atom,bs_match_SUITE},{atom,otp_7498_bar},2}.
  {label,760}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,44}}}]}}.
    {test,is_eq_exact,{f,761},[{tr,{x,1},{t_integer,{0,44}}},{integer,0}]}.
    {move,{integer,42},{x,1}}.
    {call_only,2,{f,760}}. % otp_7498_bar/2
  {label,761}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,2}}.
    {bs_get_position,{x,2},{x,3},3}.
    {bs_match,{f,762},
              {x,2},
              {commands,[{ensure_at_least,8,1},
                         {skip,8},
                         {get_tail,4,1,{x,4}}]}}.
    {test,is_eq_exact,{f,762},[{tr,{x,1},{t_integer,{1,44}}},{integer,1}]}.
    {move,{integer,43},{x,1}}.
    {move,{x,4},{x,0}}.
    {call_only,2,{f,760}}. % otp_7498_bar/2
  {label,762}.
    {bs_set_position,{x,2},{x,3}}.
    {bs_match,{f,763},{x,2},{commands,[{ensure_exactly,0}]}}.
    {test,is_eq_exact,{f,763},[{tr,{x,1},{t_integer,{1,44}}},{integer,2}]}.
    {move,{integer,44},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {call_only,2,{f,760}}. % otp_7498_bar/2
  {label,763}.
    return.


{function, match_string, 1, 765}.
  {label,764}.
    {line,[{location,"bs_match_SUITE.erl",1350}]}.
    {func_info,{atom,bs_match_SUITE},{atom,match_string},1}.
  {label,765}.
    {test,is_list,{f,764},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{atom,endian},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1356}]}.
    {call_ext,1,{extfunc,erlang,system_info,1}}.
    {select_val,{x,0},
                {f,777},
                {list,[{atom,big},{f,767},{atom,little},{f,766}]}}.
  {label,766}.
    {move,{literal,<<97,0,98,0>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1358}]}.
    {call,1,{f,779}}. % do_match_string_native/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {jump,{f,768}}.
  {label,767}.
    {move,{literal,<<0,97,0,98>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1360}]}.
    {call,1,{f,779}}. % do_match_string_native/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,768}.
    {move,{literal,<<0,97,0,98>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1363}]}.
    {call,1,{f,782}}. % do_match_string_big/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<97,0,98,0>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1364}]}.
    {call,1,{f,784}}. % do_match_string_little/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<"ÿÿ">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1366}]}.
    {call,1,{f,787}}. % do_match_string_big_signed/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<"ÿÿ">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1367}]}.
    {call,1,{f,790}}. % do_match_string_little_signed/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1369}]}.
    {call,1,{f,793}}. % no_match_string_opt/1
    {'%',{var_info,{x,0},[{type,{t_atom,[plain,strange]}}]}}.
    {test,is_eq_exact,
          {f,776},
          [{tr,{x,0},{t_atom,[plain,strange]}},{atom,plain}]}.
    {move,{literal,<<48,152,140,3:3>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1370}]}.
    {call,1,{f,793}}. % no_match_string_opt/1
    {'%',{var_info,{x,0},[{type,{t_atom,[plain,strange]}}]}}.
    {test,is_eq_exact,
          {f,775},
          [{tr,{x,0},{t_atom,[plain,strange]}},{atom,strange}]}.
    {move,{literal,<<"d">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1372}]}.
    {call,1,{f,1771}}. % id/1
    {call,1,{f,798}}. % do_match_string_tail/1
    {'%',{var_info,{x,0},[{type,{t_atom,[d,dd]}}]}}.
    {test,is_eq_exact,{f,774},[{tr,{x,0},{t_atom,[d,dd]}},{atom,d}]}.
    {move,{literal,<<"dd">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1373}]}.
    {call,1,{f,1771}}. % id/1
    {call,1,{f,798}}. % do_match_string_tail/1
    {'%',{var_info,{x,0},[{type,{t_atom,[d,dd]}}]}}.
    {test,is_eq_exact,{f,773},[{tr,{x,0},{t_atom,[d,dd]}},{atom,dd}]}.
    {move,{literal,<<"a">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1375}]}.
    {call,1,{f,1771}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,0},{x,0}}.
    {call,1,{f,1771}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {call,2,{f,802}}. % do_match_string_var_size/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a,ab]}}]}}.
    {test,is_eq_exact,{f,772},[{tr,{x,0},{t_atom,[a,ab]}},{atom,a}]}.
    {move,{literal,<<"ab">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1376}]}.
    {call,1,{f,1771}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,8},{x,0}}.
    {call,1,{f,1771}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {call,2,{f,802}}. % do_match_string_var_size/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a,ab]}}]}}.
    {test,is_eq_exact,{f,771},[{tr,{x,0},{t_atom,[a,ab]}},{atom,a}]}.
    {move,{literal,<<"ab">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1377}]}.
    {call,1,{f,1771}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,0},{x,0}}.
    {call,1,{f,1771}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {call,2,{f,802}}. % do_match_string_var_size/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a,ab]}}]}}.
    {test,is_eq_exact,{f,770},[{tr,{x,0},{t_atom,[a,ab]}},{atom,ab}]}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1378}]}.
    {call,1,{f,1771}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,8},{x,0}}.
    {call,1,{f,1771}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {call,2,{f,802}}. % do_match_string_var_size/2
    {'%',{var_info,{x,0},[{type,{t_atom,[a,ab]}}]}}.
    {test,is_eq_exact,{f,769},[{tr,{x,0},{t_atom,[a,ab]}},{atom,ab}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,769}.
    {badmatch,{atom,a}}.
  {label,770}.
    {line,[{location,"bs_match_SUITE.erl",1377}]}.
    {badmatch,{atom,a}}.
  {label,771}.
    {line,[{location,"bs_match_SUITE.erl",1376}]}.
    {badmatch,{atom,ab}}.
  {label,772}.
    {line,[{location,"bs_match_SUITE.erl",1375}]}.
    {badmatch,{atom,ab}}.
  {label,773}.
    {line,[{location,"bs_match_SUITE.erl",1373}]}.
    {badmatch,{atom,d}}.
  {label,774}.
    {line,[{location,"bs_match_SUITE.erl",1372}]}.
    {badmatch,{atom,dd}}.
  {label,775}.
    {line,[{location,"bs_match_SUITE.erl",1370}]}.
    {badmatch,{atom,plain}}.
  {label,776}.
    {line,[{location,"bs_match_SUITE.erl",1369}]}.
    {badmatch,{atom,strange}}.
  {label,777}.
    {line,[{location,"bs_match_SUITE.erl",1356}]}.
    {case_end,{x,0}}.


{function, do_match_string_native, 1, 779}.
  {label,778}.
    {line,[{location,"bs_match_SUITE.erl",1382}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_match_string_native},1}.
  {label,779}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,32,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,780},
              {x,0},
              {commands,[{ensure_at_least,16,1},
                         {integer,2,{literal,[native]},16,1,{x,2}}]}}.
    {test,is_eq_exact,{f,780},[{tr,{x,2},{t_integer,{0,65535}}},{integer,97}]}.
    {bs_match,{f,780},
              {x,0},
              {commands,[{ensure_at_least,16,1},
                         {integer,2,{literal,[native]},16,1,{x,2}}]}}.
    {test,is_eq_exact,{f,780},[{tr,{x,2},{t_integer,{0,65535}}},{integer,98}]}.
    {bs_match,{f,780},{x,0},{commands,[{ensure_exactly,0}]}}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,780}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,778}}.


{function, do_match_string_big, 1, 782}.
  {label,781}.
    {line,[{location,"bs_match_SUITE.erl",1384}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_match_string_big},1}.
  {label,782}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,false}}]}}.
    {test,is_eq_exact,
          {f,781},
          [{tr,{x,0},{t_bitstring,32,false}},{literal,<<0,97,0,98>>}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, do_match_string_little, 1, 784}.
  {label,783}.
    {line,[{location,"bs_match_SUITE.erl",1386}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_match_string_little},1}.
  {label,784}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,32,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,785},
              {x,0},
              {commands,[{ensure_exactly,32},
                         {'=:=',nil,31,813707520},
                         {'=:=',nil,1,0}]}}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,785}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,783}}.


{function, do_match_string_big_signed, 1, 787}.
  {label,786}.
    {line,[{location,"bs_match_SUITE.erl",1388}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_match_string_big_signed},1}.
  {label,787}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,16,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,788},
              {x,0},
              {commands,[{ensure_exactly,16},{'=:=',nil,16,65535}]}}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,788}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,786}}.


{function, do_match_string_little_signed, 1, 790}.
  {label,789}.
    {line,[{location,"bs_match_SUITE.erl",1390}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_match_string_little_signed},1}.
  {label,790}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,16,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,791},
              {x,0},
              {commands,[{ensure_exactly,16},{'=:=',nil,16,65535}]}}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,791}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,789}}.


{function, no_match_string_opt, 1, 793}.
  {label,792}.
    {line,[{location,"bs_match_SUITE.erl",1392}]}.
    {func_info,{atom,bs_match_SUITE},{atom,no_match_string_opt},1}.
  {label,793}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,1,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,796},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {select_val,{tr,{x,2},{t_integer,{0,255}}},
                {f,796},
                {list,[{integer,48},{f,795},{integer,97},{f,794}]}}.
  {label,794}.
    {bs_match,{f,796},
              {x,0},
              {commands,[{ensure_exactly,16},{'=:=',nil,16,25187}]}}.
    {move,{atom,plain},{x,0}}.
    return.
  {label,795}.
    {bs_match,{f,796},
              {x,0},
              {commands,[{ensure_exactly,19},{'=:=',nil,19,312419}]}}.
    {move,{atom,strange},{x,0}}.
    return.
  {label,796}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,792}}.


{function, do_match_string_tail, 1, 798}.
  {label,797}.
    {line,[{location,"bs_match_SUITE.erl",1397}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_match_string_tail},1}.
  {label,798}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,797},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {bs_match,{f,800},
              {x,1},
              {commands,[{ensure_at_least,8,1},{'=:=',nil,8,100}]}}.
    {bs_get_position,{x,1},{x,2},2}.
    {bs_match,{f,799},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,is_eq_exact,{f,799},[{tr,{x,3},{t_integer,{0,255}}},{integer,100}]}.
    {bs_match,{f,799},{x,1},{commands,[{ensure_at_least,0,8}]}}.
    {move,{atom,dd},{x,0}}.
    return.
  {label,799}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_match,{f,800},{x,1},{commands,[{ensure_at_least,0,8}]}}.
    {move,{atom,d},{x,0}}.
    return.
  {label,800}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,797}}.


{function, do_match_string_var_size, 2, 802}.
  {label,801}.
    {line,[{location,"bs_match_SUITE.erl",1399}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_match_string_var_size},2}.
  {label,802}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,805},2,[{x,0}],{x,2}}.
    {bs_get_position,{x,2},{x,0},3}.
    {bs_match,{f,804},
              {x,2},
              {commands,[{ensure_at_least,8,1},{'=:=',nil,8,97}]}}.
    {bs_get_position,{x,2},{x,3},3}.
    {bs_match,{f,803},
              {x,2},
              {commands,[{ensure_at_least,8,1},
                         {integer,4,{literal,[]},8,1,{x,4}}]}}.
    {test,is_eq_exact,{f,803},[{tr,{x,4},{t_integer,{0,255}}},{integer,98}]}.
    {test,bs_skip_bits2,
          {f,803},
          [{x,2},
           {x,1},
           1,
           {field_flags,[{anno,[1400,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_match,{f,803},{x,2},{commands,[{ensure_exactly,0}]}}.
    {move,{atom,ab},{x,0}}.
    return.
  {label,803}.
    {bs_set_position,{x,2},{x,3}}.
    {test,bs_skip_bits2,
          {f,804},
          [{x,2},
           {x,1},
           1,
           {field_flags,[{anno,[1400,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_match,{f,804},{x,2},{commands,[{ensure_exactly,0}]}}.
    {move,{atom,a},{x,0}}.
    return.
  {label,804}.
    {bs_set_position,{x,2},{x,0}}.
    {bs_get_tail,{x,2},{x,0},3}.
    {line,[{location,"bs_match_SUITE.erl",1400}]}.
    {case_end,{x,0}}.
  {label,805}.
    {case_end,{x,0}}.


{function, zero_width, 1, 807}.
  {label,806}.
    {line,[{location,"bs_match_SUITE.erl",1404}]}.
    {func_info,{atom,bs_match_SUITE},{atom,zero_width},1}.
  {label,807}.
    {test,is_list,{f,806},[{x,0}]}.
    {move,{literal,<<2,0,104,105>>},{x,0}}.
    {bs_start_match4,{atom,no_fail},0,{x,0},{x,0}}.
    {bs_match,{f,813},
              {x,0},
              {commands,[{ensure_at_least,16,1},
                         {integer,1,{literal,[little]},16,1,{x,1}}]}}.
    {test,bs_get_binary2,
          {f,813},
          2,
          [{tr,{x,0},{t_bs_context,16}},
           {tr,{x,1},{t_integer,{0,65535}}},
           8,
           {field_flags,[{anno,[1405,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,813},{x,0},{commands,[{ensure_exactly,0}]}}.
    {test,is_eq_exact,{f,812},[{tr,{x,1},{t_integer,{0,65535}}},{integer,2}]}.
    {test,is_eq_exact,
          {f,811},
          [{tr,{x,2},{t_bitstring,8,false}},{literal,<<"hi">>}]}.
    {allocate,0,0}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1410}]}.
    {call,1,{f,1771}}. % id/1
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1420}]}.
    {call,1,{f,1908}}. % '-zero_width/1-fun-0-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[no_match,star]},
                                   none,
                                   {t_integer,{0,0}},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,810},
          [{tr,{x,0},
               {t_union,{t_atom,[no_match,star]},
                        none,
                        {t_integer,{0,0}},
                        none,none}},
           {atom,star}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1421}]}.
    {call,1,{f,1908}}. % '-zero_width/1-fun-0-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[no_match,star]},
                                   none,
                                   {t_integer,{0,0}},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,809},
          [{tr,{x,0},
               {t_union,{t_atom,[no_match,star]},
                        none,
                        {t_integer,{0,0}},
                        none,none}},
           {integer,0}]}.
    {move,{literal,<<1>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1422}]}.
    {call,1,{f,1908}}. % '-zero_width/1-fun-0-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[no_match,star]},
                                   none,
                                   {t_integer,{0,0}},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,808},
          [{tr,{x,0},
               {t_union,{t_atom,[no_match,star]},
                        none,
                        {t_integer,{0,0}},
                        none,none}},
           {atom,no_match}]}.
    {move,{atom,whatever},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1423}]}.
    {call,1,{f,1908}}. % '-zero_width/1-fun-0-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[no_match]}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,808}.
    {line,[{location,"bs_match_SUITE.erl",1422}]}.
    {badmatch,{x,0}}.
  {label,809}.
    {line,[{location,"bs_match_SUITE.erl",1421}]}.
    {badmatch,{x,0}}.
  {label,810}.
    {line,[{location,"bs_match_SUITE.erl",1420}]}.
    {badmatch,{x,0}}.
  {label,811}.
    {line,[{location,"bs_match_SUITE.erl",1407}]}.
    {badmatch,{literal,<<"hi">>}}.
  {label,812}.
    {line,[{location,"bs_match_SUITE.erl",1406}]}.
    {badmatch,{x,1}}.
  {label,813}.
    {line,[{location,"bs_match_SUITE.erl",1405}]}.
    {badmatch,{literal,<<2,0,104,105>>}}.


{function, bad_size, 1, 815}.
  {label,814}.
    {line,[{location,"bs_match_SUITE.erl",1429}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bad_size},1}.
  {label,815}.
    {test,is_list,{f,814},[{x,0}]}.
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
    {'catch',{y,18},{f,816}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1435}]}.
    {call,1,{f,1771}}. % id/1
    {badmatch,{x,0}}.
  {label,816}.
    {catch_end,{y,18}}.
    {test,is_tagged_tuple,{f,862},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,862},[{x,1}]}.
    {test,test_arity,{f,862},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,862},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,17},{f,817}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,"$"},{location,"bs_match_SUITE.erl",1436}]}.
    {call,1,{f,1771}}. % id/1
    {badmatch,{x,0}}.
  {label,817}.
    {catch_end,{y,17}}.
    {test,is_tagged_tuple,{f,861},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,861},[{x,1}]}.
    {test,test_arity,{f,861},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,861},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,16},{f,818}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,"\""},{location,"bs_match_SUITE.erl",1437}]}.
    {call,1,{f,1771}}. % id/1
    {badmatch,{x,0}}.
  {label,818}.
    {catch_end,{y,16}}.
    {test,is_tagged_tuple,{f,860},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,860},[{x,1}]}.
    {test,test_arity,{f,860},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,860},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,15},{f,819}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope," "},{location,"bs_match_SUITE.erl",1438}]}.
    {call,1,{f,1771}}. % id/1
    {badmatch,{x,0}}.
  {label,819}.
    {catch_end,{y,15}}.
    {test,is_tagged_tuple,{f,859},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,859},[{x,1}]}.
    {test,test_arity,{f,859},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,859},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,14},{f,820}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[30]},{location,"bs_match_SUITE.erl",1439}]}.
    {call,1,{f,1771}}. % id/1
    {badmatch,{x,0}}.
  {label,820}.
    {catch_end,{y,14}}.
    {test,is_tagged_tuple,{f,858},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,858},[{x,1}]}.
    {test,test_arity,{f,858},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,858},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,13},{f,821}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[28]},{location,"bs_match_SUITE.erl",1440}]}.
    {call,1,{f,1771}}. % id/1
    {badmatch,{x,0}}.
  {label,821}.
    {catch_end,{y,13}}.
    {test,is_tagged_tuple,{f,857},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,857},[{x,1}]}.
    {test,test_arity,{f,857},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,857},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,12},{f,822}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[26]},{location,"bs_match_SUITE.erl",1442}]}.
    {call,1,{f,1771}}. % id/1
    {badmatch,{x,0}}.
  {label,822}.
    {catch_end,{y,12}}.
    {test,is_tagged_tuple,{f,856},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,856},[{x,1}]}.
    {test,test_arity,{f,856},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,856},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,11},{f,823}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[24]},{location,"bs_match_SUITE.erl",1443}]}.
    {call,1,{f,1771}}. % id/1
    {badmatch,{x,0}}.
  {label,823}.
    {catch_end,{y,11}}.
    {test,is_tagged_tuple,{f,855},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,855},[{x,1}]}.
    {test,test_arity,{f,855},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,855},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,10},{f,824}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",1444}]}.
    {call,1,{f,1771}}. % id/1
    {badmatch,{x,0}}.
  {label,824}.
    {catch_end,{y,10}}.
    {test,is_tagged_tuple,{f,854},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,854},[{x,1}]}.
    {test,test_arity,{f,854},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,854},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,9},{f,825}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[20]},{location,"bs_match_SUITE.erl",1445}]}.
    {call,1,{f,1771}}. % id/1
    {badmatch,{x,0}}.
  {label,825}.
    {catch_end,{y,9}}.
    {test,is_tagged_tuple,{f,853},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,853},[{x,1}]}.
    {test,test_arity,{f,853},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,853},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,8},{f,826}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[18]},{location,"bs_match_SUITE.erl",1446}]}.
    {call,1,{f,1771}}. % id/1
    {test,bs_start_match3,{f,835},1,[{x,0}],{x,1}}.
    {test,bs_get_float2,
          {f,835},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,1},
           1,
           {field_flags,[{anno,[1446,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,835},[{tr,{x,2},{t_float,any}},{float,42.0}]}.
    {bs_match,{f,835},{x,1},{commands,[{ensure_exactly,0}]}}.
  {label,826}.
    {catch_end,{y,8}}.
    {test,is_tagged_tuple,{f,852},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,852},[{x,1}]}.
    {test,test_arity,{f,852},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,852},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,7},{f,827}}.
    {move,{literal,<<"ÿÿÿÿ">>},{x,0}}.
    {line,[{scope,[16]},{location,"bs_match_SUITE.erl",1447}]}.
    {call,1,{f,1771}}. % id/1
    {test,bs_start_match3,{f,836},1,[{x,0}],{x,1}}.
    {test,bs_get_float2,
          {f,836},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[1447,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,836},[{tr,{x,2},{t_float,any}},{float,42.0}]}.
    {bs_match,{f,836},{x,1},{commands,[{ensure_exactly,0}]}}.
  {label,827}.
    {catch_end,{y,7}}.
    {test,is_tagged_tuple,{f,851},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,851},[{x,1}]}.
    {test,test_arity,{f,851},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,851},[{x,1},2,{atom,badmatch}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,{f,851},[{x,1},{literal,<<"ÿÿÿÿ">>}]}.
    {'catch',{y,6},{f,828}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[14]},{location,"bs_match_SUITE.erl",1450}]}.
    {call,1,{f,1771}}. % id/1
    {badmatch,{x,0}}.
  {label,828}.
    {catch_end,{y,6}}.
    {test,is_tagged_tuple,{f,850},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,850},[{x,1}]}.
    {test,test_arity,{f,850},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,850},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,5},{f,829}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,"\f"},{location,"bs_match_SUITE.erl",1451}]}.
    {call,1,{f,1771}}. % id/1
    {badmatch,{x,0}}.
  {label,829}.
    {catch_end,{y,5}}.
    {test,is_tagged_tuple,{f,849},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,849},[{x,1}]}.
    {test,test_arity,{f,849},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,849},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,4},{f,830}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,"\n"},{location,"bs_match_SUITE.erl",1452}]}.
    {call,1,{f,1771}}. % id/1
    {badmatch,{x,0}}.
  {label,830}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,848},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,848},[{x,1}]}.
    {test,test_arity,{f,848},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,848},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,3},{f,831}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_SUITE.erl",1453}]}.
    {call,1,{f,1771}}. % id/1
    {badmatch,{x,0}}.
  {label,831}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,847},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,847},[{x,1}]}.
    {test,test_arity,{f,847},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,847},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,2},{f,832}}.
    {move,{literal,<<1:1>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",1454}]}.
    {call,1,{f,1771}}. % id/1
    {test,bs_start_match3,{f,837},1,[{x,0}],{x,1}}.
    {test,bs_get_float2,
          {f,837},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,1},
           1,
           {field_flags,[{anno,[1454,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,837},{x,1},{commands,[{ensure_exactly,0}]}}.
  {label,832}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,846},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,846},[{x,1}]}.
    {test,test_arity,{f,846},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,846},[{x,1},2,{atom,badmatch}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,bs_start_match3,{f,846},2,[{x,1}],{x,1}}.
    {bs_match,{f,846},{x,1},{commands,[{ensure_exactly,1},{'=:=',nil,1,1}]}}.
    {'catch',{y,1},{f,833}}.
    {move,{literal,<<"ÿÿÿÿ">>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_SUITE.erl",1455}]}.
    {call,1,{f,1771}}. % id/1
    {test,bs_start_match3,{f,838},1,[{x,0}],{x,1}}.
    {test,bs_get_float2,
          {f,838},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {integer,32},
           1,
           {field_flags,[{anno,[1455,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,838},{x,1},{commands,[{ensure_exactly,0}]}}.
  {label,833}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,845},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,845},[{x,1}]}.
    {test,test_arity,{f,845},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,845},[{x,1},2,{atom,badmatch}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,{f,845},[{x,1},{literal,<<"ÿÿÿÿ">>}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",1457}]}.
    {call,1,{f,864}}. % bad_all_size/1
    {'%',{var_info,{x,0},[{type,{t_atom,[no_match]}}]}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",1458}]}.
    {call,1,{f,864}}. % bad_all_size/1
    {'%',{var_info,{x,0},[{type,{t_atom,[no_match]}}]}}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",1460}]}.
    {call,1,{f,878}}. % bad_size_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,true]}}]}}.
    {test,is_eq_exact,{f,844},[{tr,{x,0},{t_atom,[error,true]}},{atom,true}]}.
    {move,{literal,<<0,1>>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",1461}]}.
    {call,1,{f,878}}. % bad_size_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,true]}}]}}.
    {test,is_eq_exact,{f,843},[{tr,{x,0},{t_atom,[error,true]}},{atom,error}]}.
    {move,{literal,[a]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",1463}]}.
    {call,1,{f,881}}. % bad_size_2/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{literal,[<<1,2,3>>]},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",1464}]}.
    {call,1,{f,881}}. % bad_size_2/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {'catch',{y,0},{f,834}}.
    {move,{atom,no_list},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",1465}]}.
    {call,1,{f,881}}. % bad_size_2/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
  {label,834}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,842},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,842},[{x,1}]}.
    {test,test_arity,{f,842},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,842},[{x,1},{literal,{bad_generator,no_list}}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",1467}]}.
    {call,1,{f,883}}. % bad_size_3/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,841},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",1468}]}.
    {call,1,{f,883}}. % bad_size_3/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,840},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",1470}]}.
    {call,2,{f,1906}}. % '-bad_size/1-lbc$^0/2-0-'/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {call,1,{f,1771}}. % id/1
    {test,is_eq_exact,{f,839},[{x,0},{literal,<<>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,19}.
    return.
  {label,835}.
    {line,[{scope,[17]},{location,"bs_match_SUITE.erl",1446}]}.
    {badmatch,{x,0}}.
  {label,836}.
    {line,[{scope,[15]},{location,"bs_match_SUITE.erl",1447}]}.
    {badmatch,{x,0}}.
  {label,837}.
    {line,[{scope,[5]},{location,"bs_match_SUITE.erl",1454}]}.
    {badmatch,{x,0}}.
  {label,838}.
    {line,[{scope,[3]},{location,"bs_match_SUITE.erl",1455}]}.
    {badmatch,{x,0}}.
  {label,839}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",1470}]}.
    {badmatch,{x,0}}.
  {label,840}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",1468}]}.
    {badmatch,{atom,ok}}.
  {label,841}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",1467}]}.
    {badmatch,{atom,ok}}.
  {label,842}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",1465}]}.
    {badmatch,{x,0}}.
  {label,843}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",1461}]}.
    {badmatch,{atom,true}}.
  {label,844}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",1460}]}.
    {badmatch,{atom,error}}.
  {label,845}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",1455}]}.
    {badmatch,{x,0}}.
  {label,846}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",1454}]}.
    {badmatch,{x,0}}.
  {label,847}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",1453}]}.
    {badmatch,{x,0}}.
  {label,848}.
    {line,[{scope,"\b"},{location,"bs_match_SUITE.erl",1452}]}.
    {badmatch,{x,0}}.
  {label,849}.
    {line,[{scope,"\n"},{location,"bs_match_SUITE.erl",1451}]}.
    {badmatch,{x,0}}.
  {label,850}.
    {line,[{scope,"\f"},{location,"bs_match_SUITE.erl",1450}]}.
    {badmatch,{x,0}}.
  {label,851}.
    {line,[{scope,[14]},{location,"bs_match_SUITE.erl",1447}]}.
    {badmatch,{x,0}}.
  {label,852}.
    {line,[{scope,[16]},{location,"bs_match_SUITE.erl",1446}]}.
    {badmatch,{x,0}}.
  {label,853}.
    {line,[{scope,[18]},{location,"bs_match_SUITE.erl",1445}]}.
    {badmatch,{x,0}}.
  {label,854}.
    {line,[{scope,[20]},{location,"bs_match_SUITE.erl",1444}]}.
    {badmatch,{x,0}}.
  {label,855}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",1443}]}.
    {badmatch,{x,0}}.
  {label,856}.
    {line,[{scope,[24]},{location,"bs_match_SUITE.erl",1442}]}.
    {badmatch,{x,0}}.
  {label,857}.
    {line,[{scope,[26]},{location,"bs_match_SUITE.erl",1440}]}.
    {badmatch,{x,0}}.
  {label,858}.
    {line,[{scope,[28]},{location,"bs_match_SUITE.erl",1439}]}.
    {badmatch,{x,0}}.
  {label,859}.
    {line,[{scope,[30]},{location,"bs_match_SUITE.erl",1438}]}.
    {badmatch,{x,0}}.
  {label,860}.
    {line,[{scope," "},{location,"bs_match_SUITE.erl",1437}]}.
    {badmatch,{x,0}}.
  {label,861}.
    {line,[{scope,"\""},{location,"bs_match_SUITE.erl",1436}]}.
    {badmatch,{x,0}}.
  {label,862}.
    {line,[{scope,"$"},{location,"bs_match_SUITE.erl",1435}]}.
    {badmatch,{x,0}}.


{function, bad_all_size, 1, 864}.
  {label,863}.
    {line,[{location,"bs_match_SUITE.erl",1474}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bad_all_size},1}.
  {label,864}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_match_SUITE.erl",1475}]}.
    {call,1,{f,866}}. % bad_all_size_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[no_match]}}]}}.
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1476}]}.
    {call,1,{f,868}}. % bad_all_size_2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[no_match]}}]}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1477}]}.
    {call,1,{f,870}}. % bad_all_size_3/1
    {'%',{var_info,{x,0},[{type,{t_atom,[no_match]}}]}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1478}]}.
    {call,1,{f,872}}. % bad_all_size_4/1
    {'%',{var_info,{x,0},[{type,{t_atom,[no_match]}}]}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1479}]}.
    {call,1,{f,874}}. % bad_all_size_5/1
    {'%',{var_info,{x,0},[{type,{t_atom,[no_match]}}]}}.
    {move,{y,1},{x,0}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {line,[{location,"bs_match_SUITE.erl",1480}]}.
    {call,1,{f,876}}. % bad_all_size_6/1
    {'%',{var_info,{x,0},[{type,{t_atom,[no_match]}}]}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, bad_all_size_1, 1, 866}.
  {label,865}.
    {line,[{location,"bs_match_SUITE.erl",1483}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bad_all_size_1},1}.
  {label,866}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {move,{atom,no_match},{x,0}}.
    return.


{function, bad_all_size_2, 1, 868}.
  {label,867}.
    {line,[{location,"bs_match_SUITE.erl",1489}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bad_all_size_2},1}.
  {label,868}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {move,{atom,no_match},{x,0}}.
    return.


{function, bad_all_size_3, 1, 870}.
  {label,869}.
    {line,[{location,"bs_match_SUITE.erl",1495}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bad_all_size_3},1}.
  {label,870}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {move,{atom,no_match},{x,0}}.
    return.


{function, bad_all_size_4, 1, 872}.
  {label,871}.
    {line,[{location,"bs_match_SUITE.erl",1502}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bad_all_size_4},1}.
  {label,872}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {move,{atom,no_match},{x,0}}.
    return.


{function, bad_all_size_5, 1, 874}.
  {label,873}.
    {line,[{location,"bs_match_SUITE.erl",1509}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bad_all_size_5},1}.
  {label,874}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {move,{atom,no_match},{x,0}}.
    return.


{function, bad_all_size_6, 1, 876}.
  {label,875}.
    {line,[{location,"bs_match_SUITE.erl",1518}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bad_all_size_6},1}.
  {label,876}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {move,{atom,no_match},{x,0}}.
    return.


{function, bad_size_1, 1, 878}.
  {label,877}.
    {line,[{location,"bs_match_SUITE.erl",1527}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bad_size_1},1}.
  {label,878}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,879},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<0>>}]}.
    {move,{atom,true},{x,0}}.
    return.
  {label,879}.
    {move,{atom,error},{x,0}}.
    return.


{function, bad_size_2, 1, 881}.
  {label,880}.
    {line,[{location,"bs_match_SUITE.erl",1533}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bad_size_2},1}.
  {label,881}.
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
    {call_only,1,{f,1902}}. % '-bad_size_2/1-lc$^0/1-0-'/1


{function, bad_size_3, 1, 883}.
  {label,882}.
    {line,[{location,"bs_match_SUITE.erl",1539}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bad_size_3},1}.
  {label,883}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {gc_bif,'div',{f,884},1,[{integer,1},{integer,0}],{x,1}}.
    {gc_bif,'bnot',{f,884},2,[{tr,{x,1},{t_integer,any}}],{x,1}}.
    {jump,{f,885}}.
  {label,884}.
    {move,{atom,bad_size},{x,1}}.
  {label,885}.
    {test,bs_get_integer2,
          {f,886},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {tr,{x,1},
               {t_union,{t_atom,[bad_size]},none,{t_integer,any},none,none}},
           1,
           {field_flags,[{anno,[1539,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {test,is_eq_exact,{f,886},[{tr,{x,1},{t_integer,{0,'+inf'}}},{integer,0}]}.
    {bs_match,{f,886},{x,0},{commands,[{ensure_exactly,0}]}}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,886}.
    {move,{atom,error},{x,0}}.
    return.


{function, haystack, 1, 888}.
  {label,887}.
    {line,[{location,"bs_match_SUITE.erl",1544}]}.
    {func_info,{atom,bs_match_SUITE},{atom,haystack},1}.
  {label,888}.
    {test,is_list,{f,887},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<0,0,0,0,0,0,0,0,0,0>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1545}]}.
    {call,1,{f,892}}. % haystack_1/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {test,is_eq_exact,
          {f,890},
          [{tr,{x,0},{t_bitstring,16,false}},
           {literal,<<0,0,0,0,0,0,0,0,0,0>>}]}.
    {line,[{location,"bs_match_SUITE.erl",1547}]}.
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
    {call,1,{f,894}}. % haystack_2/1
    {'%',{var_info,{x,0},[{type,{t_cons,{t_bitstring,8,false},nil}}]}}.
    {test,is_eq_exact,
          {f,889},
          [{tr,{x,0},{t_cons,{t_bitstring,8,false},nil}},
           {literal,[<<0,0,0,0,0,0,0,0,0,0>>,
                     <<0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0>>]}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,889}.
    {line,[{location,"bs_match_SUITE.erl",1546}]}.
    {badmatch,{x,0}}.
  {label,890}.
    {line,[{location,"bs_match_SUITE.erl",1545}]}.
    {badmatch,{x,0}}.


{function, haystack_1, 1, 892}.
  {label,891}.
    {line,[{location,"bs_match_SUITE.erl",1551}]}.
    {func_info,{atom,bs_match_SUITE},{atom,haystack_1},1}.
  {label,892}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{x,0},{x,1}}.
    {move,{literal,"\n"},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1556}]}.
    {call,2,{f,1898}}. % '-haystack_1/1-lc$^0/1-0-'/2
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, haystack_2, 1, 894}.
  {label,893}.
    {line,[{location,"bs_match_SUITE.erl",1560}]}.
    {func_info,{atom,bs_match_SUITE},{atom,haystack_2},1}.
  {label,894}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,false}}]}}.
    {move,{x,0},{x,1}}.
    {move,{literal,[{687,10},{369,20}]},{x,0}}.
    {call_only,2,{f,1894}}. % '-haystack_2/1-lc$^0/1-0-'/2


{function, fc, 1, 896}.
  {label,895}.
    {line,[{location,"bs_match_SUITE.erl",1567}]}.
    {func_info,{atom,bs_match_SUITE},{atom,fc},1}.
  {label,896}.
    {test,is_tagged_tuple,{f,895},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,895},[{x,1},2,{atom,function_clause}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, fc, 3, 898}.
  {label,897}.
    {line,[{location,"bs_match_SUITE.erl",1570}]}.
    {func_info,{atom,bs_match_SUITE},{atom,fc},3}.
  {label,898}.
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
    {test,is_tagged_tuple,{f,897},[{x,2},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,2},1,{x,3}}.
    {test,is_tagged_tuple,{f,897},[{x,3},2,{atom,function_clause}]}.
    {get_tuple_element,{x,3},1,{x,3}}.
    {test,is_nonempty_list,{f,897},[{x,3}]}.
    {get_hd,{x,3},{x,3}}.
    {test,is_tagged_tuple,{f,897},[{x,3},4,{atom,bs_match_SUITE}]}.
    {get_tuple_element,{x,3},1,{x,4}}.
    {test,is_eq_exact,{f,897},[{x,4},{tr,{x,0},{t_atom,any}}]}.
    {get_tuple_element,{x,3},2,{x,3}}.
    {test,is_eq_exact,
          {f,897},
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


{function, cover_beam_bool, 1, 900}.
  {label,899}.
    {line,[{location,"bs_match_SUITE.erl",1578}]}.
    {func_info,{atom,bs_match_SUITE},{atom,cover_beam_bool},1}.
  {label,900}.
    {test,is_list,{f,899},[{x,0}]}.
    {allocate,0,0}.
    {move,{integer,3},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1579}]}.
    {call,2,{f,905}}. % do_cover_beam_bool/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,2},{x,1}}.
    {move,{literal,<<19>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1580}]}.
    {call,2,{f,905}}. % do_cover_beam_bool/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,903},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<19>>}]}.
    {move,{integer,1},{x,1}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1581}]}.
    {call,2,{f,905}}. % do_cover_beam_bool/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,902},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<"*">>}]}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<13,17>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1582}]}.
    {call,2,{f,905}}. % do_cover_beam_bool/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,901},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<17>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,901}.
    {badmatch,{x,0}}.
  {label,902}.
    {line,[{location,"bs_match_SUITE.erl",1581}]}.
    {badmatch,{x,0}}.
  {label,903}.
    {line,[{location,"bs_match_SUITE.erl",1580}]}.
    {badmatch,{x,0}}.


{function, do_cover_beam_bool, 2, 905}.
  {label,904}.
    {line,[{location,"bs_match_SUITE.erl",1585}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_cover_beam_bool},2}.
  {label,905}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,3}}}]}}.
    {test,is_ge,{f,908},[{tr,{x,1},{t_integer,{0,3}}},{integer,1}]}.
    {select_val,{tr,{x,1},{t_integer,{1,3}}},
                {f,907},
                {list,[{integer,1},{f,906},{integer,2},{f,906}]}}.
  {label,906}.
    return.
  {label,907}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,908}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {bs_match,{f,909},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {skip,8},
                         {get_tail,2,1,{x,0}}]}}.
    {move,{integer,1},{x,1}}.
    {call_only,2,{f,905}}. % do_cover_beam_bool/2
  {label,909}.
    {move,{integer,0},{x,1}}.
    {jump,{f,904}}.


{function, matched_out_size, 1, 911}.
  {label,910}.
    {line,[{location,"bs_match_SUITE.erl",1595}]}.
    {func_info,{atom,bs_match_SUITE},{atom,matched_out_size},1}.
  {label,911}.
    {test,is_list,{f,910},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<"\býÞ­¾ï">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1596}]}.
    {call,1,{f,923}}. % mos_int/1
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
           {literal,{253,3735928559}}]}.
    {move,{literal,<<3,215,221,251,213,5:3>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1597}]}.
    {call,1,{f,923}}. % mos_int/1
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
           {literal,{6,3203391149}}]}.
    {move,{literal,<<16,0,53,202,254,222,173,190,239,202,254>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1598}]}.
    {call,1,{f,923}}. % mos_int/1
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
           {literal,{53,14627373477560044286}}]}.
    {move,{literal,<<5,190,87,246,245,109,247,126,87,30:5>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1599}]}.
    {call,1,{f,923}}. % mos_int/1
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
           {literal,{23,14627373477560044286}}]}.
    {move,{literal,<<3,1,2,3,4,3>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1601}]}.
    {call,1,{f,1016}}. % mos_bin/1
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
          {f,917},
          [{tr,{x,0},
               {t_union,none,none,none,
                        {t_tuple,2,false,
                                 #{1 => {t_bitstring,8,false},
                                   2 => {t_integer,{0,255}}}},
                        {t_bitstring,8,false}}},
           {literal,{<<1,2,3>>,4}}]}.
    {move,{literal,<<4,1,2,3,7,19,4,42>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1602}]}.
    {call,1,{f,1016}}. % mos_bin/1
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
          {f,916},
          [{tr,{x,0},
               {t_union,none,none,none,
                        {t_tuple,2,false,
                                 #{1 => {t_bitstring,8,false},
                                   2 => {t_integer,{0,255}}}},
                        {t_bitstring,8,false}}},
           {literal,{<<1,2,3,7>>,19,42}}]}.
    {move,{literal,<<4,1,2,3,7,97,98,99,100,101,102,103,104,105,106>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1603}]}.
    {call,1,{f,1016}}. % mos_bin/1
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
          {f,915},
          [{tr,{x,0},
               {t_union,none,none,none,
                        {t_tuple,2,false,
                                 #{1 => {t_bitstring,8,false},
                                   2 => {t_integer,{0,255}}}},
                        {t_bitstring,8,false}}},
           {literal,<<1,2,3,7>>}]}.
    {move,{atom,not_a_binary},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1605}]}.
    {call,1,{f,1034}}. % mos_verify_sig/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false]}}]}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1606}]}.
    {call,1,{f,1034}}. % mos_verify_sig/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[false]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,914},
          [{tr,{x,0},
               {t_union,{t_atom,[false]},
                        none,none,none,
                        {t_bitstring,8,false}}},
           {atom,false}]}.
    {move,{literal,<<0,0,0,42>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1607}]}.
    {call,1,{f,1034}}. % mos_verify_sig/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[false]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,913},
          [{tr,{x,0},
               {t_union,{t_atom,[false]},
                        none,none,none,
                        {t_bitstring,8,false}}},
           {atom,false}]}.
    {line,[{location,"bs_match_SUITE.erl",1608}]}.
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
    {call,1,{f,1034}}. % mos_verify_sig/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[false]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,912},
          [{tr,{x,0},
               {t_union,{t_atom,[false]},
                        none,none,none,
                        {t_bitstring,8,false}}},
           {literal,<<"123456789">>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,912}.
    {badmatch,{x,0}}.
  {label,913}.
    {line,[{location,"bs_match_SUITE.erl",1607}]}.
    {badmatch,{x,0}}.
  {label,914}.
    {line,[{location,"bs_match_SUITE.erl",1606}]}.
    {badmatch,{x,0}}.
  {label,915}.
    {line,[{location,"bs_match_SUITE.erl",1603}]}.
    {badmatch,{x,0}}.
  {label,916}.
    {line,[{location,"bs_match_SUITE.erl",1602}]}.
    {badmatch,{x,0}}.
  {label,917}.
    {line,[{location,"bs_match_SUITE.erl",1601}]}.
    {badmatch,{x,0}}.
  {label,918}.
    {line,[{location,"bs_match_SUITE.erl",1599}]}.
    {badmatch,{x,0}}.
  {label,919}.
    {line,[{location,"bs_match_SUITE.erl",1598}]}.
    {badmatch,{x,0}}.
  {label,920}.
    {line,[{location,"bs_match_SUITE.erl",1597}]}.
    {badmatch,{x,0}}.
  {label,921}.
    {line,[{location,"bs_match_SUITE.erl",1596}]}.
    {badmatch,{x,0}}.


{function, mos_int, 1, 923}.
  {label,922}.
    {line,[{location,"bs_match_SUITE.erl",1612}]}.
    {func_info,{atom,bs_match_SUITE},{atom,mos_int},1}.
  {label,923}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {allocate,4,1}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{x,0},{y,3}}.
    {line,[{location,"bs_match_SUITE.erl",1613}]}.
    {call,1,{f,942}}. % mos_int_plain/1
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
    {line,[{location,"bs_match_SUITE.erl",1614}]}.
    {call,1,{f,946}}. % mos_int_list/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_integer,{0,'+inf'}},
                       2 => {t_integer,{0,18446744073709551615}}}}}]}}.
    {test,is_eq_exact,
          {f,940},
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
    {line,[{location,"bs_match_SUITE.erl",1615}]}.
    {call,1,{f,949}}. % mos_int_tuple/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_integer,{0,'+inf'}},
                       2 => {t_integer,{0,18446744073709551615}}}}}]}}.
    {test,is_eq_exact,
          {f,939},
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
    {line,[{location,"bs_match_SUITE.erl",1617}]}.
    {call,1,{f,952}}. % mos_int_mixed/1
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
          {f,938},
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
    {line,[{location,"bs_match_SUITE.erl",1618}]}.
    {call,1,{f,952}}. % mos_int_mixed/1
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
          {f,937},
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
    {line,[{location,"bs_match_SUITE.erl",1619}]}.
    {call,1,{f,952}}. % mos_int_mixed/1
    {'%',{var_info,{x,0},[{type,{t_integer,{42,42}}}]}}.
    {test_heap,6,0}.
    {put_list,{y,3},nil,{x,0}}.
    {put_list,{y,3},{x,0},{x,0}}.
    {put_list,{y,3},{x,0},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1620}]}.
    {call,1,{f,952}}. % mos_int_mixed/1
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
          {f,936},
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
    {line,[{location,"bs_match_SUITE.erl",1622}]}.
    {call,2,{f,959}}. % mos_int_pats1/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_integer,{0,'+inf'}},
                       2 => {t_integer,{0,18446744073709551615}}}}}]}}.
    {test,is_eq_exact,
          {f,935},
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
    {line,[{location,"bs_match_SUITE.erl",1623}]}.
    {call,3,{f,962}}. % mos_int_pats2/3
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_integer,{0,'+inf'}},
                       2 => {t_integer,{0,18446744073709551615}}}}}]}}.
    {test,is_eq_exact,
          {f,934},
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
    {line,[{location,"bs_match_SUITE.erl",1625}]}.
    {call,2,{f,965}}. % mos_int_pats3/2
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
    {test_heap,2,0}.
    {put_list,{y,3},nil,{x,0}}.
    {put_map_assoc,{f,0},{literal,#{}},{x,0},1,{list,[{atom,key},{x,0}]}}.
    {line,[{location,"bs_match_SUITE.erl",1626}]}.
    {call,1,{f,968}}. % mos_int_map/1
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
    {put_map_assoc,{f,0},
                   {literal,#{}},
                   {x,1},
                   1,
                   {list,[{literal,{my,key}},{x,0}]}}.
    {move,{literal,{my,key}},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1628}]}.
    {call,2,{f,971}}. % mos_int_map/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_integer,{0,'+inf'}},
                       2 => {t_integer,{0,18446744073709551615}}}}}]}}.
    {test,is_eq_exact,
          {f,931},
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
    {line,[{location,"bs_match_SUITE.erl",1629}]}.
    {call,1,{f,975}}. % mos_int_alias/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,{0,'+inf'}},
                                     2 => {t_integer,{0,18446744073709551615}},
                                     3 => {t_bitstring,1,false}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,
          {f,930},
          [{tr,{x,1},{t_integer,{0,'+inf'}}},
           {tr,{y,1},{t_integer,{0,'+inf'}}}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,
          {f,930},
          [{tr,{x,1},{t_integer,{0,18446744073709551615}}},
           {tr,{y,0},{t_integer,{0,18446744073709551615}}}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,
          {f,930},
          [{tr,{x,1},{t_bitstring,1,false}},{tr,{y,3},{t_bitstring,1,false}}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{y,1},{y,0}]}}.
    {test,is_eq_exact,
          {f,929},
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
    {line,[{location,"bs_match_SUITE.erl",1631}]}.
    {call,1,{f,978}}. % mos_int_try/1
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
           {tr,{y,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1632}]}.
    {call,1,{f,985}}. % mos_int_receive/1
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
           {tr,{y,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}}]}.
    {test_heap,2,0}.
    {put_list,{y,1},nil,{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1633}]}.
    {call,1,{f,1004}}. % mos_int_fun/1
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
           {tr,{y,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1634}]}.
    {call,1,{f,1008}}. % mos_int_exported/1
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
           {tr,{y,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}}]}.
    {move,{y,1},{x,0}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {line,[{location,"bs_match_SUITE.erl",1635}]}.
    {call,1,{f,1012}}. % mos_int_utf/1
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
           {tr,{y,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,'+inf'}},
                          2 => {t_integer,{0,18446744073709551615}}}}}]}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,924}.
    {badmatch,{x,0}}.
  {label,925}.
    {line,[{location,"bs_match_SUITE.erl",1634}]}.
    {badmatch,{x,0}}.
  {label,926}.
    {line,[{location,"bs_match_SUITE.erl",1633}]}.
    {badmatch,{x,0}}.
  {label,927}.
    {line,[{location,"bs_match_SUITE.erl",1632}]}.
    {badmatch,{x,0}}.
  {label,928}.
    {line,[{location,"bs_match_SUITE.erl",1631}]}.
    {badmatch,{x,0}}.
  {label,929}.
    {line,[{location,"bs_match_SUITE.erl",1630}]}.
    {badmatch,{x,0}}.
  {label,930}.
    {line,[{location,"bs_match_SUITE.erl",1629}]}.
    {badmatch,{x,0}}.
  {label,931}.
    {line,[{location,"bs_match_SUITE.erl",1628}]}.
    {badmatch,{x,0}}.
  {label,932}.
    {line,[{location,"bs_match_SUITE.erl",1626}]}.
    {badmatch,{x,0}}.
  {label,933}.
    {line,[{location,"bs_match_SUITE.erl",1625}]}.
    {badmatch,{x,0}}.
  {label,934}.
    {line,[{location,"bs_match_SUITE.erl",1623}]}.
    {badmatch,{x,0}}.
  {label,935}.
    {line,[{location,"bs_match_SUITE.erl",1622}]}.
    {badmatch,{x,0}}.
  {label,936}.
    {line,[{location,"bs_match_SUITE.erl",1620}]}.
    {badmatch,{x,0}}.
  {label,937}.
    {line,[{location,"bs_match_SUITE.erl",1618}]}.
    {badmatch,{x,0}}.
  {label,938}.
    {line,[{location,"bs_match_SUITE.erl",1617}]}.
    {badmatch,{x,0}}.
  {label,939}.
    {line,[{location,"bs_match_SUITE.erl",1615}]}.
    {badmatch,{x,0}}.
  {label,940}.
    {line,[{location,"bs_match_SUITE.erl",1614}]}.
    {badmatch,{x,0}}.


{function, mos_int_plain, 1, 942}.
  {label,941}.
    {line,[{location,"bs_match_SUITE.erl",1638}]}.
    {func_info,{atom,bs_match_SUITE},{atom,mos_int_plain},1}.
  {label,942}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,1,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,943},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,943},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1638,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,943},
              {x,0},
              {commands,[{ensure_exactly,32},
                         {integer,3,{literal,[]},32,1,{x,3}}]}}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,943}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_match,{f,944},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,944},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1640,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,944},
              {x,0},
              {commands,[{ensure_exactly,64},
                         {integer,3,{literal,[]},64,1,{x,3}}]}}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,944}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,941}}.


{function, mos_int_list, 1, 946}.
  {label,945}.
    {line,[{location,"bs_match_SUITE.erl",1643}]}.
    {func_info,{atom,bs_match_SUITE},{atom,mos_int_list},1}.
  {label,946}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_bitstring,1,false},nil}}]}}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_nil,{f,945},[{tr,{x,2},{t_list,{t_bitstring,1,false},nil}}]}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,2}}.
    {bs_match,{f,947},
              {x,2},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,bs_get_integer2,
          {f,947},
          4,
          [{tr,{x,2},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1643,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_match,{f,947},
              {x,2},
              {commands,[{ensure_exactly,32},
                         {integer,4,{literal,[]},32,1,{x,4}}]}}.
    {test_heap,3,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4}]}}.
    return.
  {label,947}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_match,{f,945},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,945},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1645,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,945},
              {x,1},
              {commands,[{ensure_exactly,64},
                         {integer,3,{literal,[]},64,1,{x,3}}]}}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.


{function, mos_int_tuple, 1, 949}.
  {label,948}.
    {line,[{location,"bs_match_SUITE.erl",1648}]}.
    {func_info,{atom,bs_match_SUITE},{atom,mos_int_tuple},1}.
  {label,949}.
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_atom,[a]},
                                     2 => {t_cons,{t_bitstring,1,false},nil},
                                     3 => {t_atom,[z]}}}}]}}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_nil,{f,948},[{tr,{x,1},{t_list,{t_bitstring,1,false},nil}}]}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,1}}.
    {bs_match,{f,950},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,bs_get_integer2,
          {f,950},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1648,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_match,{f,950},
              {x,1},
              {commands,[{ensure_exactly,32},
                         {integer,4,{literal,[]},32,1,{x,4}}]}}.
    {test_heap,3,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4}]}}.
    return.
  {label,950}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,1}}.
    {bs_match,{f,948},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,948},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1650,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,948},
              {x,1},
              {commands,[{ensure_exactly,64},
                         {integer,3,{literal,[]},64,1,{x,3}}]}}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.


{function, mos_int_mixed, 1, 952}.
  {label,951}.
    {line,[{location,"bs_match_SUITE.erl",1653}]}.
    {func_info,{atom,bs_match_SUITE},{atom,mos_int_mixed},1}.
  {label,952}.
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
    {test,is_tuple,{f,954},[{x,0}]}.
    {test,test_arity,{f,954},[{x,0},3]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_nil,{f,954},[{tr,{x,1},{t_list,{t_bitstring,1,false},nil}}]}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,1}}.
    {bs_match,{f,953},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,bs_get_integer2,
          {f,953},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1653,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_match,{f,953},
              {x,1},
              {commands,[{ensure_exactly,32},
                         {integer,4,{literal,[]},32,1,{x,4}}]}}.
    {test_heap,3,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4}]}}.
    return.
  {label,953}.
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
           {field_flags,[{anno,[1655,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,954},
              {x,1},
              {commands,[{ensure_exactly,64},
                         {integer,3,{literal,[]},64,1,{x,3}}]}}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,954}.
    {test,is_nonempty_list,{f,956},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_nil,{f,956},[{tr,{x,2},{t_list,{t_bitstring,1,false},nil}}]}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,2}}.
    {bs_match,{f,955},
              {x,2},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,bs_get_integer2,
          {f,955},
          4,
          [{tr,{x,2},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1657,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_match,{f,955},
              {x,2},
              {commands,[{ensure_exactly,32},
                         {integer,4,{literal,[]},32,1,{x,4}}]}}.
    {test_heap,3,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4}]}}.
    return.
  {label,955}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
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
           {field_flags,[{anno,[1659,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,956},
              {x,1},
              {commands,[{ensure_exactly,64},
                         {integer,3,{literal,[]},64,1,{x,3}}]}}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,956}.
    {test,is_tuple,
          {f,957},
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
    {test,test_arity,{f,957},[{x,0},2]}.
    {move,{integer,42},{x,0}}.
    return.
  {label,957}.
    {move,{atom,no_match},{x,0}}.
    return.


{function, mos_int_pats1, 2, 959}.
  {label,958}.
    {line,[{location,"bs_match_SUITE.erl",1666}]}.
    {func_info,{atom,bs_match_SUITE},{atom,mos_int_pats1},2}.
  {label,959}.
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
    {test,is_nil,{f,958},[{tr,{x,2},{t_list,{t_bitstring,1,false},nil}}]}.
    {bs_start_match4,{atom,no_fail},4,{x,3},{x,2}}.
    {bs_match,{f,960},
              {x,2},
              {commands,[{ensure_at_least,8,1},
                         {integer,4,{literal,[]},8,1,{x,4}}]}}.
    {test,bs_get_integer2,
          {f,960},
          5,
          [{tr,{x,2},{t_bs_context,1}},
           {tr,{x,4},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1666,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {bs_match,{f,960},
              {x,2},
              {commands,[{ensure_exactly,32},
                         {integer,5,{literal,[]},32,1,{x,5}}]}}.
    {test_heap,3,6}.
    {put_tuple2,{x,0},{list,[{x,4},{x,5}]}}.
    return.
  {label,960}.
    {bs_start_match4,{atom,no_fail},4,{x,3},{x,2}}.
    {bs_match,{f,958},
              {x,2},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,bs_get_integer2,
          {f,958},
          4,
          [{tr,{x,2},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1668,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_match,{f,958},
              {x,2},
              {commands,[{ensure_exactly,64},
                         {integer,4,{literal,[]},64,1,{x,4}}]}}.
    {test_heap,3,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4}]}}.
    return.


{function, mos_int_pats2, 3, 962}.
  {label,961}.
    {line,[{location,"bs_match_SUITE.erl",1671}]}.
    {func_info,{atom,bs_match_SUITE},{atom,mos_int_pats2},3}.
  {label,962}.
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
    {test,is_nil,{f,961},[{tr,{x,3},{t_list,{t_bitstring,1,false},nil}}]}.
    {bs_start_match4,{atom,no_fail},5,{x,4},{x,3}}.
    {bs_match,{f,963},
              {x,3},
              {commands,[{ensure_at_least,8,1},
                         {integer,5,{literal,[]},8,1,{x,5}}]}}.
    {test,bs_get_integer2,
          {f,963},
          6,
          [{tr,{x,3},{t_bs_context,1}},
           {tr,{x,5},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1671,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {bs_match,{f,963},
              {x,3},
              {commands,[{ensure_exactly,32},
                         {integer,6,{literal,[]},32,1,{x,6}}]}}.
    {test_heap,3,7}.
    {put_tuple2,{x,0},{list,[{x,5},{x,6}]}}.
    return.
  {label,963}.
    {bs_start_match4,{atom,no_fail},5,{x,4},{x,3}}.
    {bs_match,{f,961},
              {x,3},
              {commands,[{ensure_at_least,8,1},
                         {integer,4,{literal,[]},8,1,{x,4}}]}}.
    {test,bs_get_integer2,
          {f,961},
          5,
          [{tr,{x,3},{t_bs_context,1}},
           {tr,{x,4},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1673,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {bs_match,{f,961},
              {x,3},
              {commands,[{ensure_exactly,64},
                         {integer,5,{literal,[]},64,1,{x,5}}]}}.
    {test_heap,3,6}.
    {put_tuple2,{x,0},{list,[{x,4},{x,5}]}}.
    return.


{function, mos_int_pats3, 2, 965}.
  {label,964}.
    {line,[{location,"bs_match_SUITE.erl",1676}]}.
    {func_info,{atom,bs_match_SUITE},{atom,mos_int_pats3},2}.
  {label,965}.
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
    {test,is_nil,{f,964},[{tr,{x,4},{t_list,{t_bitstring,1,false},nil}}]}.
    {bs_start_match4,{atom,no_fail},6,{x,5},{x,4}}.
    {bs_match,{f,966},
              {x,4},
              {commands,[{ensure_at_least,8,1},
                         {integer,6,{literal,[]},8,1,{x,6}}]}}.
    {test,bs_get_integer2,
          {f,966},
          7,
          [{tr,{x,4},{t_bs_context,1}},
           {tr,{x,6},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1676,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,7}}.
    {bs_match,{f,966},
              {x,4},
              {commands,[{ensure_exactly,32},
                         {integer,8,{literal,[]},32,1,{x,8}}]}}.
    {test,is_nonempty_list,{f,964},[{x,3}]}.
    {get_list,{x,3},{x,4},{x,9}}.
    {test,is_nonempty_list,{f,966},[{x,9}]}.
    {get_list,{x,9},{x,10},{x,9}}.
    {test,is_nil,
        {f,966},
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
          {f,966},
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
    {bs_match,{f,966},
              {x,9},
              {commands,[{ensure_at_least,8,1},
                         {integer,11,{literal,[]},8,1,{x,11}}]}}.
    {test,bs_get_integer2,
          {f,966},
          12,
          [{tr,{x,9},{t_bs_context,1}},
           {tr,{x,11},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1676,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,12}}.
    {bs_match,{f,966},
              {x,9},
              {commands,[{ensure_exactly,32},
                         {integer,13,{literal,[]},32,1,{x,13}}]}}.
    {test,is_eq_exact,
          {f,966},
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
          {f,966},
          [{tr,{x,9},{t_integer,{0,18446744073709551615}}},
           {tr,{x,8},{t_integer,{0,4294967295}}}]}.
    {test,is_eq_exact,
          {f,966},
          [{tr,{x,11},{t_integer,{0,255}}},{tr,{x,6},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,966},
          [{tr,{x,12},{t_integer,{0,'+inf'}}},
           {tr,{x,7},{t_integer,{0,'+inf'}}}]}.
    {test,is_eq_exact,
          {f,966},
          [{tr,{x,13},{t_integer,{0,4294967295}}},
           {tr,{x,8},{t_integer,{0,4294967295}}}]}.
    {get_tuple_element,{x,4},2,{x,4}}.
    {test,is_eq_exact,
          {f,966},
          [{tr,{x,4},{t_integer,{0,18446744073709551615}}},
           {tr,{x,8},{t_integer,{0,4294967295}}}]}.
    {test,is_eq_exact,
          {f,966},
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
  {label,966}.
    {bs_start_match4,{atom,no_fail},6,{x,5},{x,4}}.
    {bs_match,{f,964},
              {x,4},
              {commands,[{ensure_at_least,8,1},
                         {integer,5,{literal,[]},8,1,{x,5}}]}}.
    {test,bs_get_integer2,
          {f,964},
          6,
          [{tr,{x,4},{t_bs_context,1}},
           {tr,{x,5},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1678,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {bs_match,{f,964},
              {x,4},
              {commands,[{ensure_exactly,64},
                         {integer,7,{literal,[]},64,1,{x,7}}]}}.
    {test,is_nonempty_list,{f,964},[{x,3}]}.
    {get_list,{x,3},{x,4},{x,3}}.
    {test,is_nonempty_list,{f,964},[{x,3}]}.
    {get_list,{x,3},{x,8},{x,3}}.
    {test,is_nil,
        {f,964},
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
          {f,964},
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
    {bs_match,{f,964},
              {x,3},
              {commands,[{ensure_at_least,8,1},
                         {integer,9,{literal,[]},8,1,{x,9}}]}}.
    {test,bs_get_integer2,
          {f,964},
          10,
          [{tr,{x,3},{t_bs_context,1}},
           {tr,{x,9},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1678,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,10}}.
    {bs_match,{f,964},
              {x,3},
              {commands,[{ensure_exactly,64},
                         {integer,11,{literal,[]},64,1,{x,11}}]}}.
    {test,is_eq_exact,
          {f,964},
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
          {f,964},
          [{tr,{x,2},{t_integer,{0,18446744073709551615}}},
           {tr,{x,7},{t_integer,{0,18446744073709551615}}}]}.
    {test,is_eq_exact,
          {f,964},
          [{tr,{x,9},{t_integer,{0,255}}},{tr,{x,5},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,964},
          [{tr,{x,10},{t_integer,{0,'+inf'}}},
           {tr,{x,6},{t_integer,{0,'+inf'}}}]}.
    {test,is_eq_exact,
          {f,964},
          [{tr,{x,11},{t_integer,{0,18446744073709551615}}},
           {tr,{x,7},{t_integer,{0,18446744073709551615}}}]}.
    {get_tuple_element,{x,4},2,{x,2}}.
    {test,is_eq_exact,
          {f,964},
          [{tr,{x,2},{t_integer,{0,18446744073709551615}}},
           {tr,{x,7},{t_integer,{0,18446744073709551615}}}]}.
    {test,is_eq_exact,
          {f,964},
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


{function, mos_int_map, 1, 968}.
  {label,967}.
    {line,[{location,"bs_match_SUITE.erl",1681}]}.
    {func_info,{atom,bs_match_SUITE},{atom,mos_int_map},1}.
  {label,968}.
    {'%',{var_info,{x,0},
                   [{type,{t_map,{t_atom,[key]},
                                 {t_cons,{t_bitstring,1,false},nil}}}]}}.
    {get_map_elements,{f,969},
                      {tr,{x,0},
                          {t_map,{t_atom,[key]},
                                 {t_cons,{t_bitstring,1,false},nil}}},
                      {list,[{atom,key},{x,1}]}}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_nil,{f,969},[{tr,{x,1},{t_list,{t_bitstring,1,false},nil}}]}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,1}}.
    {bs_match,{f,969},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,969},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1681,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,969},
              {x,1},
              {commands,[{ensure_exactly,32},
                         {integer,3,{literal,[]},32,1,{x,3}}]}}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,969}.
    {get_map_elements,{f,967},
                      {tr,{x,0},
                          {t_map,{t_atom,[key]},
                                 {t_cons,{t_bitstring,1,false},nil}}},
                      {list,[{atom,key},{x,1}]}}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_nil,{f,967},[{tr,{x,1},{t_list,{t_bitstring,1,false},nil}}]}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,1}}.
    {bs_match,{f,967},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,967},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1683,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,967},
              {x,1},
              {commands,[{ensure_exactly,64},
                         {integer,3,{literal,[]},64,1,{x,3}}]}}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.


{function, mos_int_map, 2, 971}.
  {label,970}.
    {line,[{location,"bs_match_SUITE.erl",1686}]}.
    {func_info,{atom,bs_match_SUITE},{atom,mos_int_map},2}.
  {label,971}.
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
        {f,972},
        {tr,{x,1},
            {t_map,
                {t_tuple,2,true,#{1 => {t_atom,[my]},2 => {t_atom,[key]}}},
                {t_cons,{t_bitstring,1,false},nil}}},
        {list,[{literal,{my,key}},{x,0}]}}.
    {get_list,{x,0},{x,2},{x,0}}.
    {test,is_nil,{f,972},[{tr,{x,0},{t_list,{t_bitstring,1,false},nil}}]}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,0}}.
    {bs_match,{f,972},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,972},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1688,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,972},
              {x,0},
              {commands,[{ensure_exactly,32},
                         {integer,3,{literal,[]},32,1,{x,3}}]}}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,972}.
    {get_map_elements,
        {f,973},
        {tr,{x,1},
            {t_map,
                {t_tuple,2,true,#{1 => {t_atom,[my]},2 => {t_atom,[key]}}},
                {t_cons,{t_bitstring,1,false},nil}}},
        {list,[{literal,{my,key}},{x,0}]}}.
    {get_list,{x,0},{x,2},{x,0}}.
    {test,is_nil,{f,973},[{tr,{x,0},{t_list,{t_bitstring,1,false},nil}}]}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,0}}.
    {bs_match,{f,973},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,973},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1689,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,973},
              {x,0},
              {commands,[{ensure_exactly,64},
                         {integer,3,{literal,[]},64,1,{x,3}}]}}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,973}.
    {line,[{location,"bs_match_SUITE.erl",1687}]}.
    {case_end,{x,1}}.


{function, mos_int_alias, 1, 975}.
  {label,974}.
    {line,[{location,"bs_match_SUITE.erl",1692}]}.
    {func_info,{atom,bs_match_SUITE},{atom,mos_int_alias},1}.
  {label,975}.
    {'%',{var_info,{x,0},
                   [{type,{t_cons,{t_cons,{t_bitstring,1,false},nil},nil}}]}}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_nil,
          {f,974},
          [{tr,{x,2},{t_list,{t_cons,{t_bitstring,1,false},nil},nil}}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_nil,{f,974},[{tr,{x,1},{t_list,{t_bitstring,1,false},nil}}]}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,1}}.
    {bs_match,{f,976},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,bs_get_integer2,
          {f,976},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1692,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_match,{f,976},
              {x,1},
              {commands,[{ensure_exactly,32},
                         {integer,4,{literal,[]},32,1,{x,4}}]}}.
    {test_heap,4,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4},{x,2}]}}.
    return.
  {label,976}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,1}}.
    {bs_match,{f,974},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,bs_get_integer2,
          {f,974},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1694,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_match,{f,974},
              {x,1},
              {commands,[{ensure_exactly,64},
                         {integer,4,{literal,[]},64,1,{x,4}}]}}.
    {test_heap,4,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4},{x,2}]}}.
    return.


{function, mos_int_try, 1, 978}.
  {label,977}.
    {line,[{location,"bs_match_SUITE.erl",1697}]}.
    {func_info,{atom,bs_match_SUITE},{atom,mos_int_try},1}.
  {label,978}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_bitstring,1,false},nil}}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {'try',{y,1},{f,982}}.
    {'try',{y,0},{f,981}}.
    {line,[{location,"bs_match_SUITE.erl",1698}]}.
    {call,1,{f,1771}}. % id/1
    {try_end,{y,0}}.
    {test,is_nonempty_list,{f,983},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_nil,{f,983},[{x,2}]}.
    {test,bs_start_match3,{f,979},2,[{x,1}],{x,2}}.
    {bs_match,{f,979},
              {x,2},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,bs_get_integer2,
          {f,979},
          4,
          [{tr,{x,2},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1699,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_match,{f,979},
              {x,2},
              {commands,[{ensure_exactly,32},
                         {integer,4,{literal,[]},32,1,{x,4}}]}}.
    {test_heap,3,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4}]}}.
    {jump,{f,980}}.
  {label,979}.
    {test,bs_start_match3,{f,983},2,[{x,1}],{x,1}}.
    {bs_match,{f,983},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,983},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1700,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,983},
              {x,1},
              {commands,[{ensure_exactly,64},
                         {integer,3,{literal,[]},64,1,{x,3}}]}}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
  {label,980}.
    {try_end,{y,1}}.
    {deallocate,2}.
    return.
  {label,981}.
    {try_case,{y,0}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.
  {label,982}.
    {try_case,{y,1}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.
  {label,983}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",1698}]}.
    {try_case_end,{x,0}}.


{function, mos_int_receive, 1, 985}.
  {label,984}.
    {line,[{location,"bs_match_SUITE.erl",1705}]}.
    {func_info,{atom,bs_match_SUITE},{atom,mos_int_receive},1}.
  {label,985}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {allocate,5,1}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3}]}}.
    {move,{x,0},{y,4}}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{y,4},{x,1}}.
    {line,[{location,"bs_match_SUITE.erl",1707}]}.
    send.
  {label,986}.
    {loop_rec,{f,1000},{x,0}}.
    {test,bs_start_match3,{f,987},1,[{x,0}],{x,1}}.
    {bs_match,{f,987},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,987},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1709,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,987},
              {x,1},
              {commands,[{ensure_exactly,32},
                         {integer,3,{literal,[]},32,1,{x,3}}]}}.
    {test_heap,3,4}.
    {move,{x,3},{x,1}}.
    {move,{x,2},{x,0}}.
    remove_message.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {move,{x,0},{y,3}}.
    {jump,{f,988}}.
  {label,987}.
    {test,bs_start_match3,{f,999},1,[{x,0}],{x,0}}.
    {bs_match,{f,999},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,1,{literal,[]},8,1,{x,1}}]}}.
    {test,bs_get_integer2,
          {f,999},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,1},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1710,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {bs_match,{f,999},
              {x,0},
              {commands,[{ensure_exactly,64},
                         {integer,2,{literal,[]},64,1,{x,2}}]}}.
    {test_heap,3,3}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    remove_message.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {move,{x,0},{y,3}}.
  {label,988}.
    {bif,self,{f,0},[],{x,0}}.
    {move,{y,4},{x,1}}.
    {line,[{location,"bs_match_SUITE.erl",1713}]}.
    send.
  {label,989}.
    {loop_rec,{f,998},{x,0}}.
    {test,bs_start_match3,{f,990},1,[{x,0}],{x,1}}.
    {bs_match,{f,990},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,990},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1715,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_match,{f,990},
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
    {jump,{f,991}}.
  {label,990}.
    {test,bs_start_match3,{f,997},1,[{x,0}],{x,0}}.
    {bs_match,{f,997},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,1,{literal,[]},8,1,{x,1}}]}}.
    {test,bs_get_integer2,
          {f,997},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,1},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1716,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,997},
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
  {label,991}.
    {test,is_eq_exact,
          {f,1002},
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
    {line,[{location,"bs_match_SUITE.erl",1718}]}.
    send.
  {label,992}.
    {loop_rec,{f,996},{x,0}}.
    {test,is_tagged_tuple,{f,995},[{x,0},2,{atom,tag}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_nonempty_list,{f,995},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_nil,{f,995},[{x,0}]}.
    {test,bs_start_match3,{f,993},2,[{x,1}],{x,0}}.
    {bs_match,{f,993},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,993},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1720,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_match,{f,993},
              {x,0},
              {commands,[{ensure_exactly,32},
                         {integer,4,{literal,[]},32,1,{x,4}}]}}.
    {test,is_eq_exact,
          {f,993},
          [{tr,{x,2},{t_integer,{0,255}}},{tr,{y,1},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,993},
          [{tr,{x,3},{t_integer,{0,'+inf'}}},
           {tr,{y,0},{t_integer,{0,'+inf'}}}]}.
    {test,is_ne_exact,
          {f,994},
          [{tr,{x,4},{t_integer,{0,4294967295}}},
           {tr,{y,2},{t_integer,{0,18446744073709551615}}}]}.
  {label,993}.
    {test,bs_start_match3,{f,995},2,[{x,1}],{x,0}}.
    {bs_match,{f,995},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,1,{literal,[]},8,1,{x,1}}]}}.
    {test,bs_get_integer2,
          {f,995},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,1},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1721,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,995},
              {x,0},
              {commands,[{ensure_exactly,64},
                         {integer,3,{literal,[]},64,1,{x,3}}]}}.
    {test,is_eq_exact,
          {f,995},
          [{tr,{x,1},{t_integer,{0,255}}},{tr,{y,1},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,995},
          [{tr,{x,2},{t_integer,{0,'+inf'}}},
           {tr,{y,0},{t_integer,{0,'+inf'}}}]}.
    {test,is_eq_exact,
          {f,995},
          [{tr,{x,3},{t_integer,{0,18446744073709551615}}},
           {tr,{y,2},{t_integer,{0,18446744073709551615}}}]}.
  {label,994}.
    {test_heap,3,0}.
    remove_message.
    {put_tuple2,{x,0},{list,[{y,0},{y,2}]}}.
    {test,is_eq_exact,
          {f,1001},
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
  {label,995}.
    {loop_rec_end,{f,992}}.
  {label,996}.
    {wait,{f,992}}.
  {label,997}.
    {loop_rec_end,{f,989}}.
  {label,998}.
    {wait,{f,989}}.
  {label,999}.
    {loop_rec_end,{f,986}}.
  {label,1000}.
    {wait,{f,986}}.
  {label,1001}.
    {line,[{location,"bs_match_SUITE.erl",1719}]}.
    {badmatch,{x,0}}.
  {label,1002}.
    {line,[{location,"bs_match_SUITE.erl",1714}]}.
    {badmatch,{x,0}}.


{function, mos_int_fun, 1, 1004}.
  {label,1003}.
    {line,[{location,"bs_match_SUITE.erl",1725}]}.
    {func_info,{atom,bs_match_SUITE},{atom,mos_int_fun},1}.
  {label,1004}.
    {'%',{var_info,{x,0},[{type,{t_cons,{t_bitstring,1,false},nil}}]}}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_nil,{f,1006},[{tr,{x,2},{t_list,{t_bitstring,1,false},nil}}]}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,2}}.
    {bs_match,{f,1005},
              {x,2},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,bs_get_integer2,
          {f,1005},
          4,
          [{tr,{x,2},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1727,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_match,{f,1005},
              {x,2},
              {commands,[{ensure_exactly,32},
                         {integer,4,{literal,[]},32,1,{x,4}}]}}.
    {test_heap,3,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4}]}}.
    return.
  {label,1005}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_match,{f,1006},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,1006},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1728,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,1006},
              {x,1},
              {commands,[{ensure_exactly,64},
                         {integer,3,{literal,[]},64,1,{x,3}}]}}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,1006}.
    {call_only,1,{f,2035}}. % '-mos_int_fun/1-inlined-0-'/1


{function, mos_int_exported, 1, 1008}.
  {label,1007}.
    {line,[{location,"bs_match_SUITE.erl",1732}]}.
    {func_info,{atom,bs_match_SUITE},{atom,mos_int_exported},1}.
  {label,1008}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,1,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,1009},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,1009},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1734,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,1009},
              {x,0},
              {commands,[{ensure_exactly,32},
                         {integer,3,{literal,[]},32,1,{x,3}}]}}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,1009}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_match,{f,1010},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,1010},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1735,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,1010},
              {x,0},
              {commands,[{ensure_exactly,64},
                         {integer,3,{literal,[]},64,1,{x,3}}]}}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,1010}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {line,[{location,"bs_match_SUITE.erl",1733}]}.
    {case_end,{x,0}}.


{function, mos_int_utf, 1, 1012}.
  {label,1011}.
    {line,[{location,"bs_match_SUITE.erl",1739}]}.
    {func_info,{atom,bs_match_SUITE},{atom,mos_int_utf},1}.
  {label,1012}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {line,[{location,"bs_match_SUITE.erl",1740}]}.
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
    {call,1,{f,1771}}. % id/1
    {test,bs_start_match3,{f,1013},1,[{x,0}],{x,1}}.
    {bs_match,{f,1013},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,1013},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1742,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,1013},
              {x,1},
              {commands,[{ensure_at_least,48,1},
                         {integer,3,{literal,[]},32,1,{x,3}},
                         {'=:=',nil,16,52361}]}}.
    {test,bs_get_utf16,
          {f,1013},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {field_flags,[{anno,[1742,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,is_eq_exact,
          {f,1013},
          [{tr,{x,4},{t_integer,{0,1114111}}},{integer,7777}]}.
    {test,bs_get_utf32,
          {f,1013},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {field_flags,[{anno,[1742,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,is_eq_exact,
          {f,1013},
          [{tr,{x,4},{t_integer,{0,1114111}}},{integer,9999}]}.
    {bs_match,{f,1013},{x,1},{commands,[{ensure_exactly,0}]}}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    {deallocate,0}.
    return.
  {label,1013}.
    {test,bs_start_match3,{f,1014},1,[{x,0}],{x,1}}.
    {bs_match,{f,1014},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,1014},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[1743,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,1014},
              {x,1},
              {commands,[{ensure_at_least,80,1},
                         {integer,3,{literal,[]},64,1,{x,3}},
                         {'=:=',nil,16,52361}]}}.
    {test,bs_get_utf16,
          {f,1014},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {field_flags,[{anno,[1743,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,is_eq_exact,
          {f,1014},
          [{tr,{x,4},{t_integer,{0,1114111}}},{integer,7777}]}.
    {test,bs_get_utf32,
          {f,1014},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {field_flags,[{anno,[1743,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,is_eq_exact,
          {f,1014},
          [{tr,{x,4},{t_integer,{0,1114111}}},{integer,9999}]}.
    {bs_match,{f,1014},{x,1},{commands,[{ensure_exactly,0}]}}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    {deallocate,0}.
    return.
  {label,1014}.
    {line,[{location,"bs_match_SUITE.erl",1741}]}.
    {case_end,{x,0}}.


{function, mos_bin, 1, 1016}.
  {label,1015}.
    {line,[{location,"bs_match_SUITE.erl",1746}]}.
    {func_info,{atom,bs_match_SUITE},{atom,mos_bin},1}.
  {label,1016}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {line,[{location,"bs_match_SUITE.erl",1747}]}.
    {call,1,{f,1019}}. % mos_bin_plain/1
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
    {line,[{location,"bs_match_SUITE.erl",1748}]}.
    {call,1,{f,1027}}. % mos_bin_tuple/1
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
          {f,1017},
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
  {label,1017}.
    {badmatch,{x,0}}.


{function, mos_bin_plain, 1, 1019}.
  {label,1018}.
    {line,[{location,"bs_match_SUITE.erl",1751}]}.
    {func_info,{atom,bs_match_SUITE},{atom,mos_bin_plain},1}.
  {label,1019}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,1020},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_binary2,
          {f,1020},
          3,
          [{tr,{x,0},{t_bs_context,8}},
           {tr,{x,2},{t_integer,{0,255}}},
           8,
           {field_flags,[{anno,[1751,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_match,{f,1020},
              {x,0},
              {commands,[{ensure_exactly,16},
                         {integer,4,{literal,[]},8,1,{x,4}},
                         {integer,5,{literal,[]},8,1,{x,5}}]}}.
    {test,is_eq_exact,
          {f,1020},
          [{tr,{x,5},{t_integer,{0,255}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {line,[{location,"bs_match_SUITE.erl",1752}]}.
    {gc_bif,byte_size,{f,0},5,[{tr,{x,3},{t_bitstring,8,false}}],{x,0}}.
    {test,is_eq_exact,
          {f,1023},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},
           {tr,{x,2},{t_integer,{0,255}}}]}.
    {test_heap,3,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4}]}}.
    return.
  {label,1020}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_match,{f,1021},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_binary2,
          {f,1021},
          3,
          [{tr,{x,0},{t_bs_context,8}},
           {tr,{x,2},{t_integer,{0,255}}},
           8,
           {field_flags,[{anno,[1754,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_match,{f,1021},
              {x,0},
              {commands,[{ensure_exactly,24},
                         {integer,4,{literal,[]},8,1,{x,4}},
                         {integer,5,{literal,[]},8,1,{x,5}},
                         {integer,6,{literal,[]},8,1,{x,6}}]}}.
    {test,is_eq_exact,
          {f,1021},
          [{tr,{x,5},{t_integer,{0,255}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {line,[{location,"bs_match_SUITE.erl",1755}]}.
    {gc_bif,byte_size,{f,0},7,[{tr,{x,3},{t_bitstring,8,false}}],{x,0}}.
    {test,is_eq_exact,
          {f,1024},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},
           {tr,{x,2},{t_integer,{0,255}}}]}.
    {test_heap,4,7}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4},{x,6}]}}.
    return.
  {label,1021}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_match,{f,1022},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_binary2,
          {f,1022},
          3,
          [{tr,{x,0},{t_bs_context,8}},
           {tr,{x,2},{t_integer,{0,255}}},
           8,
           {field_flags,[{anno,[1757,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_match_string,{f,1022},[{x,0},80,{string,<<"abcdefghij">>}]}.
    {bs_match,{f,1022},{x,0},{commands,[{ensure_exactly,0}]}}.
    {line,[{location,"bs_match_SUITE.erl",1758}]}.
    {gc_bif,byte_size,{f,0},4,[{tr,{x,3},{t_bitstring,8,false}}],{x,0}}.
    {test,is_eq_exact,
          {f,1025},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},
           {tr,{x,2},{t_integer,{0,255}}}]}.
    {move,{x,3},{x,0}}.
    return.
  {label,1022}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,1018}}.
  {label,1023}.
    {line,[{location,"bs_match_SUITE.erl",1752}]}.
    {badmatch,{x,0}}.
  {label,1024}.
    {line,[{location,"bs_match_SUITE.erl",1755}]}.
    {badmatch,{x,0}}.
  {label,1025}.
    {line,[{location,"bs_match_SUITE.erl",1758}]}.
    {badmatch,{x,0}}.


{function, mos_bin_tuple, 1, 1027}.
  {label,1026}.
    {line,[{location,"bs_match_SUITE.erl",1761}]}.
    {func_info,{atom,bs_match_SUITE},{atom,mos_bin_tuple},1}.
  {label,1027}.
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
    {bs_match,{f,1028},
              {x,2},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,bs_get_binary2,
          {f,1028},
          4,
          [{tr,{x,2},{t_bs_context,8}},
           {tr,{x,3},{t_integer,{0,255}}},
           8,
           {field_flags,[{anno,[1761,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {bs_match,{f,1028},
              {x,2},
              {commands,[{ensure_exactly,16},
                         {integer,5,{literal,[]},8,1,{x,5}},
                         {integer,6,{literal,[]},8,1,{x,6}}]}}.
    {test,is_eq_exact,
          {f,1028},
          [{tr,{x,6},{t_integer,{0,255}}},{tr,{x,3},{t_integer,{0,255}}}]}.
    {line,[{location,"bs_match_SUITE.erl",1762}]}.
    {gc_bif,byte_size,{f,0},6,[{tr,{x,4},{t_bitstring,8,false}}],{x,0}}.
    {test,is_eq_exact,
          {f,1030},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},
           {tr,{x,3},{t_integer,{0,255}}}]}.
    {test_heap,3,6}.
    {put_tuple2,{x,0},{list,[{x,4},{x,5}]}}.
    return.
  {label,1028}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,2}}.
    {bs_match,{f,1029},
              {x,2},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,bs_get_binary2,
          {f,1029},
          4,
          [{tr,{x,2},{t_bs_context,8}},
           {tr,{x,3},{t_integer,{0,255}}},
           8,
           {field_flags,[{anno,[1764,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {bs_match,{f,1029},
              {x,2},
              {commands,[{ensure_exactly,24},
                         {integer,5,{literal,[]},8,1,{x,5}},
                         {integer,6,{literal,[]},8,1,{x,6}},
                         {integer,7,{literal,[]},8,1,{x,7}}]}}.
    {test,is_eq_exact,
          {f,1029},
          [{tr,{x,6},{t_integer,{0,255}}},{tr,{x,3},{t_integer,{0,255}}}]}.
    {line,[{location,"bs_match_SUITE.erl",1765}]}.
    {gc_bif,byte_size,{f,0},8,[{tr,{x,4},{t_bitstring,8,false}}],{x,0}}.
    {test,is_eq_exact,
          {f,1031},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},
           {tr,{x,3},{t_integer,{0,255}}}]}.
    {test_heap,4,8}.
    {put_tuple2,{x,0},{list,[{x,4},{x,5},{x,7}]}}.
    return.
  {label,1029}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_match,{f,1026},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_binary2,
          {f,1026},
          3,
          [{tr,{x,1},{t_bs_context,8}},
           {tr,{x,2},{t_integer,{0,255}}},
           8,
           {field_flags,[{anno,[1767,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_match_string,{f,1026},[{x,1},80,{string,<<"abcdefghij">>}]}.
    {bs_match,{f,1026},{x,1},{commands,[{ensure_exactly,0}]}}.
    {line,[{location,"bs_match_SUITE.erl",1768}]}.
    {gc_bif,byte_size,{f,0},4,[{tr,{x,3},{t_bitstring,8,false}}],{x,0}}.
    {test,is_eq_exact,
          {f,1032},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},
           {tr,{x,2},{t_integer,{0,255}}}]}.
    {move,{x,3},{x,0}}.
    return.
  {label,1030}.
    {line,[{location,"bs_match_SUITE.erl",1762}]}.
    {badmatch,{x,0}}.
  {label,1031}.
    {line,[{location,"bs_match_SUITE.erl",1765}]}.
    {badmatch,{x,0}}.
  {label,1032}.
    {line,[{location,"bs_match_SUITE.erl",1768}]}.
    {badmatch,{x,0}}.


{function, mos_verify_sig, 1, 1034}.
  {label,1033}.
    {line,[{location,"bs_match_SUITE.erl",1771}]}.
    {func_info,{atom,bs_match_SUITE},{atom,mos_verify_sig},1}.
  {label,1034}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[not_a_binary]},
                                   none,none,none,
                                   {t_bitstring,16,false}}}]}}.
    {test,bs_start_match3,{f,1035},1,[{x,0}],{x,0}}.
    {bs_match,{f,1035},
              {x,0},
              {commands,[{ensure_at_least,32,1},
                         {integer,1,{literal,[]},32,1,{x,1}}]}}.
    {test,bs_skip_bits2,
          {f,1035},
          [{x,0},
           {x,1},
           8,
           {field_flags,[{anno,[1773,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_match,{f,1035},
              {x,0},
              {commands,[{ensure_at_least,32,1},
                         {integer,1,{literal,[]},32,1,{x,1}}]}}.
    {test,bs_get_binary2,
          {f,1035},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {tr,{x,1},{t_integer,{0,4294967295}}},
           8,
           {field_flags,[{anno,[1773,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {bs_match,{f,1035},{x,0},{commands,[{ensure_exactly,0}]}}.
    {move,{x,1},{x,0}}.
    return.
  {label,1035}.
    {move,{atom,false},{x,0}}.
    return.


{function, follow_fail_branch, 1, 1037}.
  {label,1036}.
    {line,[{location,"bs_match_SUITE.erl",1781}]}.
    {func_info,{atom,bs_match_SUITE},{atom,follow_fail_branch},1}.
  {label,1037}.
    {allocate,0,0}.
    {move,{literal,<<0>>},{x,1}}.
    {move,{literal,<<0,1>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1782}]}.
    {call,2,{f,1041}}. % ffb_1/2
    {'%',{var_info,{x,0},[{type,{t_integer,{42,42}}}]}}.
    {move,{literal,[a]},{x,1}}.
    {move,{literal,<<0,1>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1783}]}.
    {call,2,{f,1041}}. % ffb_1/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,288230376151711743}}}]}}.
    {test,is_eq_exact,
          {f,1039},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},{integer,8}]}.
    {move,{literal,<<0>>},{x,1}}.
    {move,{integer,17},{x,2}}.
    {move,{literal,<<0,1>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1784}]}.
    {call,3,{f,1046}}. % ffb_2/3
    {'%',{var_info,{x,0},[{type,{t_integer,{42,42}}}]}}.
    {move,{literal,[a]},{x,1}}.
    {move,{integer,0},{x,2}}.
    {move,{literal,<<0,1>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1785}]}.
    {call,3,{f,1046}}. % ffb_2/3
    {'%',{var_info,{x,0},[{type,{t_integer,{0,288230376151711743}}}]}}.
    {test,is_eq_exact,
          {f,1038},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},{integer,8}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1038}.
    {badmatch,{x,0}}.
  {label,1039}.
    {line,[{location,"bs_match_SUITE.erl",1783}]}.
    {badmatch,{x,0}}.


{function, ffb_1, 2, 1041}.
  {label,1040}.
    {line,[{location,"bs_match_SUITE.erl",1788}]}.
    {func_info,{atom,bs_match_SUITE},{atom,ffb_1},2}.
  {label,1041}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,16,false}},accepts_match_context]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_union,none,
                                   {t_cons,{t_atom,[a]},nil},
                                   none,none,
                                   {t_bitstring,8,false}}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {bs_match,{f,1043},{x,0},{commands,[{ensure_at_least,8,1},{skip,8}]}}.
    {test,bs_start_match3,{f,1042},2,[{x,1}],{x,2}}.
    {bs_match,{f,1044},{x,2},{commands,[{ensure_exactly,8}]}}.
    {move,{integer,42},{x,0}}.
    return.
  {label,1042}.
    {line,[{location,"bs_match_SUITE.erl",1797}]}.
    {gc_bif,bit_size,{f,0},1,[{tr,{x,0},{t_bs_context,8}}],{x,0}}.
    return.
  {label,1043}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {jump,{f,1040}}.
  {label,1044}.
    {line,[{location,"bs_match_SUITE.erl",1789}]}.
    {case_end,{x,1}}.


{function, ffb_2, 3, 1046}.
  {label,1045}.
    {line,[{location,"bs_match_SUITE.erl",1800}]}.
    {func_info,{atom,bs_match_SUITE},{atom,ffb_2},3}.
  {label,1046}.
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
    {bs_match,{f,1048},{x,0},{commands,[{ensure_at_least,8,1},{skip,8}]}}.
    {test,bs_start_match3,{f,1047},3,[{x,1}],{x,3}}.
    {bs_match,{f,1049},{x,3},{commands,[{ensure_exactly,8}]}}.
    {test,is_eq_exact,{f,1049},[{tr,{x,2},{t_integer,{0,17}}},{integer,17}]}.
    {move,{integer,42},{x,0}}.
    return.
  {label,1047}.
    {line,[{location,"bs_match_SUITE.erl",1803}]}.
    {gc_bif,bit_size,{f,0},1,[{tr,{x,0},{t_bs_context,8}}],{x,0}}.
    return.
  {label,1048}.
    {bs_set_position,{x,0},{x,3}}.
    {bs_get_tail,{x,0},{x,0},3}.
    {jump,{f,1045}}.
  {label,1049}.
    {line,[{location,"bs_match_SUITE.erl",1801}]}.
    {case_end,{x,1}}.


{function, no_partition, 1, 1051}.
  {label,1050}.
    {line,[{location,"bs_match_SUITE.erl",1806}]}.
    {func_info,{atom,bs_match_SUITE},{atom,no_partition},1}.
  {label,1051}.
    {allocate,0,0}.
    {move,{atom,a1},{x,1}}.
    {move,{literal,<<"string">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1807}]}.
    {call,2,{f,1057}}. % no_partition_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[one]}}]}}.
    {move,{atom,a2},{x,1}}.
    {move,{literal,<<"string">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1808}]}.
    {call,2,{f,1057}}. % no_partition_1/2
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
        {f,1055},
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
    {line,[{location,"bs_match_SUITE.erl",1809}]}.
    {call,2,{f,1057}}. % no_partition_1/2
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
        {f,1054},
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
    {line,[{location,"bs_match_SUITE.erl",1810}]}.
    {call,2,{f,1057}}. % no_partition_1/2
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
        {f,1053},
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
    {line,[{location,"bs_match_SUITE.erl",1811}]}.
    {call,2,{f,1057}}. % no_partition_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[three]}}]}}.
    {move,{atom,a4},{x,1}}.
    {move,{literal,[a]},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1812}]}.
    {call,2,{f,1057}}. % no_partition_1/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_atom,[four]},
                                     2 => {t_atom,[a]},
                                     3 => {t_list,{t_atom,[a]},nil}}}}]}}.
    {test,is_eq_exact,
          {f,1052},
          [{tr,{x,0},
               {t_tuple,3,true,
                        #{1 => {t_atom,[four]},
                          2 => {t_atom,[a]},
                          3 => {t_list,{t_atom,[a]},nil}}}},
           {literal,{four,a,[]}}]}.
    {move,{atom,a5},{x,1}}.
    {move,{literal,{a,b}},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1813}]}.
    {call,2,{f,1057}}. % no_partition_1/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_atom,[five]},
                                     2 => {t_atom,[a]},
                                     3 => {t_atom,[b]}}}}]}}.
    {move,{atom,a1},{x,1}}.
    {move,{literal,<<"string">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1815}]}.
    {call,2,{f,1065}}. % no_partition_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[one]}}]}}.
    {move,{atom,a2},{x,1}}.
    {move,{literal,<<"string">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1816}]}.
    {call,2,{f,1065}}. % no_partition_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[two]}}]}}.
    {move,{atom,a2},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1817}]}.
    {call,2,{f,1065}}. % no_partition_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[two]}}]}}.
    {move,{atom,a2},{x,1}}.
    {move,{atom,a},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1818}]}.
    {call,2,{f,1065}}. % no_partition_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[two]}}]}}.
    {move,{atom,a3},{x,1}}.
    {move,{atom,undefined},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1819}]}.
    {call,2,{f,1065}}. % no_partition_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[three]}}]}}.
    {move,{atom,a4},{x,1}}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1820}]}.
    {call,2,{f,1065}}. % no_partition_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[four]}}]}}.
    {move,{atom,a5},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1821}]}.
    {call,2,{f,1065}}. % no_partition_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[five]}}]}}.
    {move,{atom,a6},{x,1}}.
    {move,{float,42.0},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1822}]}.
    {call,2,{f,1065}}. % no_partition_2/2
    {'%',{var_info,{x,0},[{type,{t_atom,[six]}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1052}.
    {line,[{location,"bs_match_SUITE.erl",1812}]}.
    {badmatch,{x,0}}.
  {label,1053}.
    {line,[{location,"bs_match_SUITE.erl",1810}]}.
    {badmatch,{x,0}}.
  {label,1054}.
    {line,[{location,"bs_match_SUITE.erl",1809}]}.
    {badmatch,{x,0}}.
  {label,1055}.
    {line,[{location,"bs_match_SUITE.erl",1808}]}.
    {badmatch,{x,0}}.


{function, no_partition_1, 2, 1057}.
  {label,1056}.
    {line,[{location,"bs_match_SUITE.erl",1825}]}.
    {func_info,{atom,bs_match_SUITE},{atom,no_partition_1},2}.
  {label,1057}.
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
          {f,1059},
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
                {f,1061},
                {list,[{atom,a1},{f,1058},{atom,a2},{f,1060}]}}.
  {label,1058}.
    {move,{atom,one},{x,0}}.
    return.
  {label,1059}.
    {test,is_eq_exact,
          {f,1061},
          [{tr,{x,1},{t_atom,[a1,a2,a3,a4,a5]}},{atom,a2}]}.
  {label,1060}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,two},{x,0}]}}.
    return.
  {label,1061}.
    {test,is_nonempty_list,{f,1062},[{x,0}]}.
    {get_tl,{x,0},{x,2}}.
    {test,is_eq_exact,{f,1056},[{tr,{x,1},{t_atom,[a1,a3,a4,a5]}},{atom,a4}]}.
    {test_heap,4,3}.
    {put_tuple2,{x,0},{list,[{atom,four},{atom,a},{x,2}]}}.
    return.
  {label,1062}.
    {test,is_tuple,
          {f,1063},
          [{tr,{x,0},
               {t_union,{t_atom,[a,undefined]},
                        none,none,
                        [{{2,{t_atom,[a]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[a]},2 => {t_atom,[b]}}}}],
                        {t_bitstring,16,false}}}]}.
    {test,is_eq_exact,{f,1056},[{tr,{x,1},{t_atom,[a1,a3,a4,a5]}},{atom,a5}]}.
    {move,{literal,{five,a,b}},{x,0}}.
    return.
  {label,1063}.
    {test,is_eq_exact,
          {f,1056},
          [{tr,{x,0},
               {t_union,{t_atom,[a,undefined]},
                        none,none,none,
                        {t_bitstring,16,false}}},
           {atom,undefined}]}.
    {test,is_eq_exact,{f,1056},[{tr,{x,1},{t_atom,[a1,a3,a4,a5]}},{atom,a3}]}.
    {move,{atom,three},{x,0}}.
    return.


{function, no_partition_2, 2, 1065}.
  {label,1064}.
    {line,[{location,"bs_match_SUITE.erl",1836}]}.
    {func_info,{atom,bs_match_SUITE},{atom,no_partition_2},2}.
  {label,1065}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[a,undefined]},
                                   nil,
                                   {t_number,{42,42}},
                                   none,
                                   {t_bitstring,16,false}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,any}}]}}.
    {test,is_eq_exact,
          {f,1067},
          [{tr,{x,0},
               {t_union,{t_atom,[a,undefined]},
                        nil,
                        {t_number,{42,42}},
                        none,
                        {t_bitstring,16,false}}},
           {literal,<<"string">>}]}.
    {select_val,{tr,{x,1},{t_atom,any}},
                {f,1069},
                {list,[{atom,a1},{f,1066},{atom,a2},{f,1068}]}}.
  {label,1066}.
    {move,{atom,one},{x,0}}.
    return.
  {label,1067}.
    {test,is_eq_exact,{f,1069},[{tr,{x,1},{t_atom,any}},{atom,a2}]}.
  {label,1068}.
    {move,{atom,two},{x,0}}.
    return.
  {label,1069}.
    {test,is_atom,
          {f,1070},
          [{tr,{x,0},
               {t_union,{t_atom,[a,undefined]},
                        nil,
                        {t_number,{42,42}},
                        none,
                        {t_bitstring,16,false}}}]}.
    {test,is_eq_exact,
          {f,1064},
          [{tr,{x,0},{t_atom,[a,undefined]}},{atom,undefined}]}.
    {test,is_eq_exact,{f,1064},[{tr,{x,1},{t_atom,any}},{atom,a3}]}.
    {move,{atom,three},{x,0}}.
    return.
  {label,1070}.
    {test,is_float,
          {f,1071},
          [{tr,{x,0},
               {t_union,none,nil,
                        {t_number,{42,42}},
                        none,
                        {t_bitstring,16,false}}}]}.
    {test,is_eq_exact,{f,1064},[{tr,{x,1},{t_atom,any}},{atom,a6}]}.
    {move,{atom,six},{x,0}}.
    return.
  {label,1071}.
    {test,is_integer,
          {f,1072},
          [{tr,{x,0},
               {t_union,none,nil,
                        {t_integer,{42,42}},
                        none,
                        {t_bitstring,16,false}}}]}.
    {test,is_eq_exact,{f,1064},[{tr,{x,1},{t_atom,any}},{atom,a4}]}.
    {move,{atom,four},{x,0}}.
    return.
  {label,1072}.
    {test,is_nil,
          {f,1064},
          [{tr,{x,0},{t_union,none,nil,none,none,{t_bitstring,16,false}}}]}.
    {test,is_eq_exact,{f,1064},[{tr,{x,1},{t_atom,any}},{atom,a5}]}.
    {move,{atom,five},{x,0}}.
    return.


{function, calling_a_binary, 1, 1074}.
  {label,1073}.
    {line,[{location,"bs_match_SUITE.erl",1849}]}.
    {func_info,{atom,bs_match_SUITE},{atom,calling_a_binary},1}.
  {label,1074}.
    {test,is_list,{f,1073},[{x,0}]}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,nil,{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1850}]}.
    {call,2,{f,1080}}. % call_binary/2
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {'catch',{y,1},{f,1075}}.
    {move,nil,{x,1}}.
    {move,{literal,<<1>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1851}]}.
    {call,2,{f,1080}}. % call_binary/2
    {'%',{var_info,{x,0},[{type,nil}]}}.
  {label,1075}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,1078},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1078},[{x,1},2,{atom,badarg}]}.
    {'catch',{y,0},{f,1076}}.
    {move,nil,{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_SUITE.erl",1852}]}.
    {call,2,{f,1080}}. % call_binary/2
    {'%',{var_info,{x,0},[{type,nil}]}}.
  {label,1076}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1077},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1077},[{x,1},2,{atom,badarg}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,1077}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",1852}]}.
    {badmatch,{x,0}}.
  {label,1078}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",1851}]}.
    {badmatch,{x,0}}.


{function, call_binary, 2, 1080}.
  {label,1079}.
    {line,[{location,"bs_match_SUITE.erl",1855}]}.
    {func_info,{atom,bs_match_SUITE},{atom,call_binary},2}.
  {label,1080}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,nil}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {bs_match,{f,1081},{x,0},{commands,[{ensure_exactly,0}]}}.
    {move,{x,1},{x,0}}.
    return.
  {label,1081}.
    {bs_match,{f,1082},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,1,{literal,[]},8,1,{x,1}},
                         {get_tail,2,1,{x,0}}]}}.
    {line,[{location,"bs_match_SUITE.erl",1858}]}.
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
  {label,1082}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {jump,{f,1079}}.


{function, binary_in_map, 1, 1084}.
  {label,1083}.
    {line,[{location,"bs_match_SUITE.erl",1860}]}.
    {func_info,{atom,bs_match_SUITE},{atom,binary_in_map},1}.
  {label,1084}.
    {test,is_list,{f,1083},[{x,0}]}.
    {allocate,4,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3}]}}.
    {move,{literal,#{key => <<"*">>}},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1861}]}.
    {call,1,{f,1094}}. % match_binary_in_map/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,3},{f,1085}}.
    {move,{literal,#{key => 1}},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1863}]}.
    {call,1,{f,1094}}. % match_binary_in_map/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1085}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,1092},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1092},[{x,1}]}.
    {test,test_arity,{f,1092},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,1092},[{x,1},2,{atom,badmatch}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_map,{f,1092},[{x,1}]}.
    {get_map_elements,{f,1092},
                      {tr,{x,1},{t_map,any,any}},
                      {list,[{atom,key},{x,1}]}}.
    {test,is_eq_exact,{f,1092},[{x,1},{integer,1}]}.
    {'catch',{y,2},{f,1086}}.
    {move,{literal,#{key => <<3,255>>}},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",1865}]}.
    {call,1,{f,1094}}. % match_binary_in_map/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1086}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,1091},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1091},[{x,1}]}.
    {test,test_arity,{f,1091},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,1091},[{x,1},2,{atom,badmatch}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_map,{f,1091},[{x,1}]}.
    {get_map_elements,{f,1091},
                      {tr,{x,1},{t_map,any,any}},
                      {list,[{atom,key},{x,1}]}}.
    {test,is_eq_exact,{f,1091},[{x,1},{literal,<<3,255>>}]}.
    {'catch',{y,1},{f,1087}}.
    {move,{literal,#{key => <<1>>}},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",1867}]}.
    {call,1,{f,1094}}. % match_binary_in_map/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1087}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,1090},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1090},[{x,1}]}.
    {test,test_arity,{f,1090},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,1090},[{x,1},2,{atom,badmatch}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_map,{f,1090},[{x,1}]}.
    {get_map_elements,{f,1090},
                      {tr,{x,1},{t_map,any,any}},
                      {list,[{atom,key},{x,1}]}}.
    {test,is_eq_exact,{f,1090},[{x,1},{literal,<<1>>}]}.
    {'catch',{y,0},{f,1088}}.
    {move,{atom,not_a_map},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",1869}]}.
    {call,1,{f,1094}}. % match_binary_in_map/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1088}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1089},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1089},[{x,1}]}.
    {test,test_arity,{f,1089},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1089},[{x,1},{literal,{badmatch,not_a_map}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,4}.
    return.
  {label,1089}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",1868}]}.
    {badmatch,{x,0}}.
  {label,1090}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",1866}]}.
    {badmatch,{x,0}}.
  {label,1091}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",1864}]}.
    {badmatch,{x,0}}.
  {label,1092}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",1862}]}.
    {badmatch,{x,0}}.


{function, match_binary_in_map, 1, 1094}.
  {label,1093}.
    {line,[{location,"bs_match_SUITE.erl",1872}]}.
    {func_info,{atom,bs_match_SUITE},{atom,match_binary_in_map},1}.
  {label,1094}.
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
        {f,1095},
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
        {f,1095},
        {tr,{x,0},
            {t_map,
                {t_atom,[key]},
                {t_union,none,none,
                    {t_integer,{1,1}},
                    none,
                    {t_bitstring,8,false}}}},
        {list,[{atom,key},{x,1}]}}.
    {test,is_eq_exact,
          {f,1095},
          [{tr,{x,1},
               {t_union,none,none,
                        {t_integer,{1,1}},
                        none,
                        {t_bitstring,8,false}}},
           {literal,<<"*">>}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1095}.
    {line,[{location,"bs_match_SUITE.erl",1875}]}.
    {badmatch,{x,0}}.


{function, match_string_opt, 1, 1097}.
  {label,1096}.
    {line,[{location,"bs_match_SUITE.erl",1879}]}.
    {func_info,{atom,bs_match_SUITE},{atom,match_string_opt},1}.
  {label,1097}.
    {test,is_list,{f,1096},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,{<<1>>,{v,<<1,2,3>>}}},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1881}]}.
    {call,1,{f,1100}}. % do_match_string_opt/1
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
        {f,1098},
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
  {label,1098}.
    {line,[{location,"bs_match_SUITE.erl",1880}]}.
    {badmatch,{x,0}}.


{function, do_match_string_opt, 1, 1100}.
  {label,1099}.
    {line,[{location,"bs_match_SUITE.erl",1884}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_match_string_opt},1}.
  {label,1100}.
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
          {f,1099},
          [{tr,{x,1},{t_bitstring,8,false}},{literal,<<1>>}]}.
    {test_heap,4,1}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {put_tuple2,{x,0},{list,[{atom,x},{x,1},{x,0}]}}.
    return.


{function, select_on_integer, 1, 1102}.
  {label,1101}.
    {line,[{location,"bs_match_SUITE.erl",1887}]}.
    {func_info,{atom,bs_match_SUITE},{atom,select_on_integer},1}.
  {label,1102}.
    {test,is_list,{f,1101},[{x,0}]}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1888}]}.
    {call,1,{f,1112}}. % do_select_on_integer/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,none,
                                   {t_integer,{0,127}},
                                   none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,1110},
          [{tr,{x,0},
               {t_union,none,none,
                        {t_integer,{0,127}},
                        none,
                        {t_bitstring,8,false}}},
           {integer,42}]}.
    {move,{literal,<<128,97,98,99>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",1889}]}.
    {call,1,{f,1112}}. % do_select_on_integer/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,none,
                                   {t_integer,{0,127}},
                                   none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,1109},
          [{tr,{x,0},
               {t_union,none,none,
                        {t_integer,{0,127}},
                        none,
                        {t_bitstring,8,false}}},
           {literal,<<"abc">>}]}.
    {'catch',{y,2},{f,1103}}.
    {move,{literal,<<0:1>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",1891}]}.
    {call,1,{f,1112}}. % do_select_on_integer/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,none,
                                   {t_integer,{0,127}},
                                   none,
                                   {t_bitstring,8,false}}}]}}.
  {label,1103}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,1108},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,1},{f,1104}}.
    {move,{literal,<<1:1>>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_SUITE.erl",1892}]}.
    {call,1,{f,1112}}. % do_select_on_integer/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,none,
                                   {t_integer,{0,127}},
                                   none,
                                   {t_bitstring,8,false}}}]}}.
  {label,1104}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,1107},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,0},{f,1105}}.
    {move,{literal,<<0,0>>},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_SUITE.erl",1893}]}.
    {call,1,{f,1112}}. % do_select_on_integer/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,none,
                                   {t_integer,{0,127}},
                                   none,
                                   {t_bitstring,8,false}}}]}}.
  {label,1105}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1106},[{x,0},2,{atom,'EXIT'}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,3}.
    return.
  {label,1106}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",1893}]}.
    {badmatch,{x,0}}.
  {label,1107}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",1892}]}.
    {badmatch,{x,0}}.
  {label,1108}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",1891}]}.
    {badmatch,{x,0}}.
  {label,1109}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",1889}]}.
    {badmatch,{x,0}}.
  {label,1110}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",1888}]}.
    {badmatch,{x,0}}.


{function, do_select_on_integer, 1, 1112}.
  {label,1111}.
    {line,[{location,"bs_match_SUITE.erl",1897}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_select_on_integer},1}.
  {label,1112}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,1,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,1114},
              {x,0},
              {commands,[{ensure_at_least,1,1},
                         {integer,2,{literal,[]},1,1,{x,2}}]}}.
    {test,is_eq_exact,{f,1113},[{x,2},{integer,0}]}.
    {bs_match,{f,1114},
              {x,0},
              {commands,[{ensure_exactly,7},
                         {integer,2,{literal,[]},7,1,{x,2}}]}}.
    {move,{x,2},{x,0}}.
    return.
  {label,1113}.
    {bs_match,{f,1114},
              {x,0},
              {commands,[{ensure_at_least,7,8},
                         {skip,7},
                         {get_tail,1,8,{x,0}}]}}.
    return.
  {label,1114}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,1111}}.


{function, map_and_binary, 1, 1116}.
  {label,1115}.
    {line,[{location,"bs_match_SUITE.erl",1905}]}.
    {func_info,{atom,bs_match_SUITE},{atom,map_and_binary},1}.
  {label,1116}.
    {allocate,0,0}.
    {move,{literal,<<"10:37am">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1906}]}.
    {call,1,{f,1121}}. % do_map_and_binary/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_bitstring,8,false},
                                     2 => {t_bitstring,8,false},
                                     3 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
          {f,1119},
          [{tr,{x,0},
               {t_tuple,3,true,
                        #{1 => {t_bitstring,8,false},
                          2 => {t_bitstring,8,false},
                          3 => {t_bitstring,8,false}}}},
           {literal,{<<"10">>,<<"37">>,<<"am">>}}]}.
    {move,{literal,#{time => "noon"}},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1908}]}.
    {call,1,{f,1121}}. % do_map_and_binary/1
    {'%',{var_info,{x,0},[{type,{t_tuple,2,false,#{}}}]}}.
    {test,is_tagged_tuple,
          {f,1118},
          [{tr,{x,0},{t_tuple,2,false,#{}}},2,{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,1118},[{x,1},{literal,#{time => "noon"}}]}.
    {move,{literal,#{hour => 8,min => 42}},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1910}]}.
    {call,1,{f,1121}}. % do_map_and_binary/1
    {'%',{var_info,{x,0},[{type,{t_tuple,2,false,#{}}}]}}.
    {test,test_arity,{f,1117},[{x,0},3]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1117},[{x,1},{integer,8}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,1117},[{x,1},{integer,42}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,{f,1117},[{x,1},{literal,#{hour => 8,min => 42}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1117}.
    {badmatch,{x,0}}.
  {label,1118}.
    {line,[{location,"bs_match_SUITE.erl",1908}]}.
    {badmatch,{x,0}}.
  {label,1119}.
    {line,[{location,"bs_match_SUITE.erl",1906}]}.
    {badmatch,{x,0}}.


{function, do_map_and_binary, 1, 1121}.
  {label,1120}.
    {line,[{location,"bs_match_SUITE.erl",1913}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_map_and_binary},1}.
  {label,1121}.
    {'%',{var_info,{x,0},[{type,other},accepts_match_context]}}.
    {test,bs_start_match3,{f,1123},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {bs_match,{f,1122},
              {x,1},
              {commands,[{ensure_at_least,40,8},
                         {binary,2,{literal,[]},2,8,{x,2}},
                         {'=:=',nil,8,58},
                         {binary,3,{literal,[]},2,8,{x,0}},
                         {get_tail,3,8,{x,1}}]}}.
    {test_heap,4,3}.
    {put_tuple2,{x,0},{list,[{x,2},{x,0},{x,1}]}}.
    return.
  {label,1122}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,1120}}.
  {label,1123}.
    {test,is_map,{f,1120},[{tr,{x,0},other}]}.
    {test,has_map_fields,{f,1124},{x,0},{list,[{atom,time}]}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,ok},{x,0}]}}.
    return.
  {label,1124}.
    {get_map_elements,{f,1120},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{atom,min},{x,2},{atom,hour},{x,1}]}}.
    {test_heap,4,3}.
    {put_tuple2,{x,0},{list,[{x,1},{x,2},{x,0}]}}.
    return.


{function, unsafe_branch_caching, 1, 1126}.
  {label,1125}.
    {line,[{location,"bs_match_SUITE.erl",1924}]}.
    {func_info,{atom,bs_match_SUITE},{atom,unsafe_branch_caching},1}.
  {label,1126}.
    {allocate,0,0}.
    {move,{literal,<<42,1>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1925}]}.
    {call,1,{f,1133}}. % do_unsafe_branch_caching/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,1131},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<>>}]}.
    {move,{literal,<<42,2>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1926}]}.
    {call,1,{f,1133}}. % do_unsafe_branch_caching/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,1130},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<>>}]}.
    {move,{literal,<<42,3>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1927}]}.
    {call,1,{f,1133}}. % do_unsafe_branch_caching/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,1129},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<>>}]}.
    {move,{literal,<<42,3,17,18>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1928}]}.
    {call,1,{f,1133}}. % do_unsafe_branch_caching/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,1128},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<17,18>>}]}.
    {move,{literal,<<1,3,42,2>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1929}]}.
    {call,1,{f,1133}}. % do_unsafe_branch_caching/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,1127},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1127}.
    {badmatch,{x,0}}.
  {label,1128}.
    {line,[{location,"bs_match_SUITE.erl",1928}]}.
    {badmatch,{x,0}}.
  {label,1129}.
    {line,[{location,"bs_match_SUITE.erl",1927}]}.
    {badmatch,{x,0}}.
  {label,1130}.
    {line,[{location,"bs_match_SUITE.erl",1926}]}.
    {badmatch,{x,0}}.
  {label,1131}.
    {line,[{location,"bs_match_SUITE.erl",1925}]}.
    {badmatch,{x,0}}.


{function, do_unsafe_branch_caching, 1, 1133}.
  {label,1132}.
    {line,[{location,"bs_match_SUITE.erl",1933}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_unsafe_branch_caching},1}.
  {label,1133}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,1138},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,1,{literal,[]},8,1,{x,1}}]}}.
    {bs_get_position,{x,0},{x,2},2}.
    {bs_match,{f,1137},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}},
                         {get_tail,3,1,{x,0}}]}}.
    {select_val,{tr,{x,2},{t_integer,{0,255}}},
                {f,1135},
                {list,[{integer,1},{f,1134},{integer,2},{f,1134}]}}.
  {label,1134}.
    {move,{literal,<<>>},{x,0}}.
  {label,1135}.
    {test,is_eq_exact,{f,1136},[{tr,{x,1},{t_integer,{0,255}}},{integer,1}]}.
    {call_only,1,{f,1133}}. % do_unsafe_branch_caching/1
  {label,1136}.
    return.
  {label,1137}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {line,[{location,"bs_match_SUITE.erl",1934}]}.
    {badmatch,{x,0}}.
  {label,1138}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,1132}}.


{function, bad_literals, 1, 1140}.
  {label,1139}.
    {line,[{location,"bs_match_SUITE.erl",1946}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bad_literals},1}.
  {label,1140}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{integer,1114116},{x,1}}.
    {move,{integer,1114108},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1954}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {test_heap,10,1}.
    {put_list,{integer,2},{x,0},{x,0}}.
    {put_list,{integer,1},{x,0},{x,0}}.
    {put_list,{integer,0},{x,0},{x,0}}.
    {put_list,{integer,-1},{x,0},{x,0}}.
    {put_list,{integer,-100},{x,0},{x,0}}.
    {call,1,{f,1890}}. % '-bad_literals/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_cons,any,nil}}]}}.
    {move,{x,0},{y,1}}.
    {move,{integer,8},{x,1}}.
    {move,{integer,-2},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1951}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{y,1},{x,1}}.
    {init_yregs,{list,[{y,1}]}}.
    {call,2,{f,1883}}. % '-bad_literals/1-lc$^1/1-1-'/2
    {'%',{var_info,{x,0},[{type,{t_cons,any,nil}}]}}.
    {move,{x,0},{y,1}}.
    {move,{integer,8},{x,1}}.
    {move,{integer,-8},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1949}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{y,1},{x,1}}.
    {init_yregs,{list,[{y,1}]}}.
    {call,2,{f,1876}}. % '-bad_literals/1-lc$^3/1-3-'/2
    {'%',{var_info,{x,0},[{type,{t_cons,any,nil}}]}}.
    {move,{x,0},{y,1}}.
    {move,{atom,bs_match_SUITE_bad_literals},{x,0}}.
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
    {line,[{location,"bs_match_SUITE.erl",1955}]}.
    {call_ext,1,{extfunc,merl,tree,1}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_match_SUITE.erl",1960}]}.
    {call_ext,1,{extfunc,merl,print,1}}.
    {move,{atom,bs_match_SUITE},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1961}]}.
    {call_ext,1,{extfunc,test_lib,opt_opts,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {line,[{location,"bs_match_SUITE.erl",1962}]}.
    {call_ext,2,{extfunc,merl,compile_and_load,2}}.
    {test,is_tagged_tuple,{f,1145},[{x,0},2,{atom,ok}]}.
    {line,[{location,"bs_match_SUITE.erl",1963}]}.
    {call_ext,0,{extfunc,bs_match_SUITE_bad_literals,f,0}}.
    {'catch',{y,1},{f,1141}}.
    {line,[{location,"bs_match_SUITE.erl",1965}]}.
    {call,0,{f,1147}}. % bad_literals_1/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1141}.
    {catch_end,{y,1}}.
    {test,is_eq_exact,{f,1144},[{x,0},{literal,{'EXIT',<<"*">>}}]}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",1966}]}.
    {call,1,{f,1149}}. % bad_literals_2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[no_match]}}]}}.
    {move,{integer,8},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",1968}]}.
    {call,1,{f,1771}}. % id/1
    {'catch',{y,0},{f,1142}}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",1969}]}.
    {badmatch,{literal,<<"ÿ">>}}.
  {label,1142}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1143},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1143},[{x,1}]}.
    {test,test_arity,{f,1143},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,1143},[{x,1},2,{atom,badmatch}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,1143}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",1969}]}.
    {badmatch,{x,0}}.
  {label,1144}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",1965}]}.
    {badmatch,{x,0}}.
  {label,1145}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",1962}]}.
    {badmatch,{x,0}}.


{function, bad_literals_1, 0, 1147}.
  {label,1146}.
    {line,[{location,"bs_match_SUITE.erl",1972}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bad_literals_1},0}.
  {label,1147}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1976}]}.
    {call_ext_only,1,{extfunc,erlang,exit,1}}.


{function, bad_literals_2, 1, 1149}.
  {label,1148}.
    {line,[{location,"bs_match_SUITE.erl",1982}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bad_literals_2},1}.
  {label,1149}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {move,{atom,no_match},{x,0}}.
    return.


{function, signed_lit_match, 2, 1151}.
  {label,1150}.
    {line,[{location,"bs_match_SUITE.erl",1989}]}.
    {func_info,{atom,bs_match_SUITE},{atom,signed_lit_match},2}.
  {label,1151}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,3}}}]}}.
    {line,[{location,"bs_match_SUITE.erl",1990}]}.
    {bs_create_bin,{f,0},
                   0,2,1,
                   {x,2},
                   {list,[{atom,integer},
                          1,1,nil,
                          {x,0},
                          {tr,{x,1},{t_integer,{0,3}}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,2}}.
    {test,bs_get_integer2,
          {f,1152},
          3,
          [{tr,{x,2},{t_bs_context,1}},
           {tr,{x,1},{t_integer,{0,3}}},
           1,
           {field_flags,[{anno,[1991,{file,"bs_match_SUITE.erl"}]},
                         signed,big]}],
          {x,3}}.
    {bs_match,{f,1152},{x,2},{commands,[{ensure_exactly,0}]}}.
    {test,is_eq_exact,{f,1152},[{tr,{x,3},{t_integer,{-4,3}}},{x,0}]}.
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
    {line,[{location,"bs_match_SUITE.erl",1992}]}.
    {call_ext_last,1,{extfunc,merl,tree,1},3}.
  {label,1152}.
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
    {line,[{location,"bs_match_SUITE.erl",1994}]}.
    {call_ext_last,1,{extfunc,merl,tree,1},3}.


{function, unsigned_lit_match, 2, 1154}.
  {label,1153}.
    {line,[{location,"bs_match_SUITE.erl",2002}]}.
    {func_info,{atom,bs_match_SUITE},{atom,unsigned_lit_match},2}.
  {label,1154}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,2}}}]}}.
    {line,[{location,"bs_match_SUITE.erl",2003}]}.
    {bs_create_bin,{f,0},
                   0,2,1,
                   {x,2},
                   {list,[{atom,integer},
                          1,1,nil,
                          {x,0},
                          {tr,{x,1},{t_integer,{0,2}}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,2}}.
    {test,bs_get_integer2,
          {f,1155},
          3,
          [{tr,{x,2},{t_bs_context,1}},
           {tr,{x,1},{t_integer,{0,2}}},
           1,
           {field_flags,[{anno,[2004,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_match,{f,1155},{x,2},{commands,[{ensure_exactly,0}]}}.
    {test,is_eq_exact,{f,1155},[{tr,{x,3},{t_integer,{0,3}}},{x,0}]}.
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
    {line,[{location,"bs_match_SUITE.erl",2005}]}.
    {call_ext_last,1,{extfunc,merl,tree,1},3}.
  {label,1155}.
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
    {line,[{location,"bs_match_SUITE.erl",2007}]}.
    {call_ext_last,1,{extfunc,merl,tree,1},3}.


{function, unicode_match, 1, 1157}.
  {label,1156}.
    {line,[{location,"bs_match_SUITE.erl",2015}]}.
    {func_info,{atom,bs_match_SUITE},{atom,unicode_match},1}.
  {label,1157}.
    {allocate,5,1}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{x,0},{y,3}}.
    {'try',{y,4},{f,1158}}.
    {line,[{location,"bs_match_SUITE.erl",2016}]}.
    {bs_create_bin,{f,0},
                   0,1,8,
                   {x,0},
                   {list,[{atom,utf8},1,0,nil,{x,0},{atom,undefined}]}}.
    {try_end,{y,4}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,1}}.
    {test,bs_get_utf8,
          {f,1160},
          2,
          [{tr,{x,1},{t_bs_context,8}},
           {field_flags,[{anno,[2017,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,1160},{x,1},{commands,[{ensure_exactly,0}]}}.
    {test,is_eq_exact,{f,1160},[{tr,{x,2},{t_integer,{0,1114111}}},{y,3}]}.
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
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",2018}]}.
    {call_ext_last,1,{extfunc,merl,tree,1},5}.
  {label,1158}.
    {try_case,{y,4}}.
    {test,is_eq_exact,
          {f,1159},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,error}]}.
    {test,is_eq_exact,{f,1159},[{x,1},{atom,badarg}]}.
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
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",2023}]}.
    {call_ext_last,1,{extfunc,merl,tree,1},1}.
  {label,1159}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.
  {label,1160}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",2016}]}.
    {try_case_end,{x,0}}.


{function, good_literals, 1, 1162}.
  {label,1161}.
    {line,[{location,"bs_match_SUITE.erl",2033}]}.
    {func_info,{atom,bs_match_SUITE},{atom,good_literals},1}.
  {label,1162}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{integer,64},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2034}]}.
    {call,1,{f,1771}}. % id/1
    {line,[{location,"bs_match_SUITE.erl",2037}]}.
    {bs_create_bin,{f,0},
                   0,1,1,
                   {x,1},
                   {list,[{atom,integer},1,1,nil,{integer,42},{x,0}]}}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {call,1,{f,1771}}. % id/1
    {test,bs_start_match3,{f,1165},1,[{x,0}],{x,1}}.
    {test,bs_get_integer2,
          {f,1165},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {y,0},
           1,
           {field_flags,[{anno,[2037,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,
          {f,1165},
          [{tr,{x,2},{t_integer,{0,'+inf'}}},{integer,42}]}.
    {bs_match,{f,1165},{x,1},{commands,[{ensure_exactly,0}]}}.
    {line,[{location,"bs_match_SUITE.erl",2038}]}.
    {bs_create_bin,{f,0},
                   0,0,1,
                   {x,0},
                   {list,[{atom,float},1,1,nil,{integer,42},{y,0}]}}.
    {call,1,{f,1771}}. % id/1
    {test,bs_start_match3,{f,1164},1,[{x,0}],{x,1}}.
    {test,bs_get_float2,
          {f,1164},
          2,
          [{tr,{x,1},{t_bs_context,1}},
           {y,0},
           1,
           {field_flags,[{anno,[2038,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,is_eq_exact,{f,1164},[{tr,{x,2},{t_float,any}},{float,42.0}]}.
    {bs_match,{f,1164},{x,1},{commands,[{ensure_exactly,0}]}}.
    {trim,1,0}.
    {move,{literal,<<"Êþ¾ï">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2041}]}.
    {call,1,{f,1771}}. % id/1
    {test,is_eq_exact,{f,1163},[{x,0},{literal,<<"Êþ¾ï">>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1163}.
    {badmatch,{x,0}}.
  {label,1164}.
    {line,[{location,"bs_match_SUITE.erl",2038}]}.
    {badmatch,{x,0}}.
  {label,1165}.
    {line,[{location,"bs_match_SUITE.erl",2037}]}.
    {badmatch,{x,0}}.


{function, constant_propagation, 1, 1167}.
  {label,1166}.
    {line,[{location,"bs_match_SUITE.erl",2044}]}.
    {func_info,{atom,bs_match_SUITE},{atom,constant_propagation},1}.
  {label,1167}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,<<5>>},{x,1}}.
    {move,{atom,a},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2045}]}.
    {call,2,{f,1174}}. % constant_propagation_a/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,1172},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<5>>}]}.
    {'catch',{y,0},{f,1168}}.
    {move,{literal,<<5>>},{x,1}}.
    {move,{atom,b},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",2046}]}.
    {call,2,{f,1174}}. % constant_propagation_a/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1168}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1171},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1171},[{x,1}]}.
    {test,test_arity,{f,1171},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1171},[{x,1},{literal,{case_clause,b}}]}.
    {move,{literal,<<1,2>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",2047}]}.
    {call,1,{f,1178}}. % constant_propagation_b/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,65535}}}]}}.
    {test,is_eq_exact,
          {f,1170},
          [{tr,{x,0},{t_integer,{0,65535}}},{integer,258}]}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",2048}]}.
    {call,0,{f,1181}}. % constant_propagation_c/0
    {'%',{var_info,{x,0},
                   [{type,{t_fun,1,
                                 {'-constant_propagation_c/0-fun-0-',1},
                                 {t_integer,{0,65535}}}}]}}.
    {move,{literal,<<1,3>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",2049}]}.
    {call,1,{f,1872}}. % '-constant_propagation_c/0-fun-0-'/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,65535}}}]}}.
    {test,is_eq_exact,
          {f,1169},
          [{tr,{x,0},{t_integer,{0,65535}}},{integer,259}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,1169}.
    {badmatch,{x,0}}.
  {label,1170}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",2047}]}.
    {badmatch,{x,0}}.
  {label,1171}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",2046}]}.
    {badmatch,{x,0}}.
  {label,1172}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",2045}]}.
    {badmatch,{x,0}}.


{function, constant_propagation_a, 2, 1174}.
  {label,1173}.
    {line,[{location,"bs_match_SUITE.erl",2052}]}.
    {func_info,{atom,bs_match_SUITE},{atom,constant_propagation_a},2}.
  {label,1174}.
    {'%',{var_info,{x,0},[{type,{t_atom,[a,b]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,{f,1176},[{tr,{x,0},{t_atom,[a,b]}},{atom,a}]}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,0}}.
    {bs_match,{f,1175},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,is_eq_exact,{f,1175},[{tr,{x,2},{t_integer,{0,255}}},{integer,5}]}.
    {bs_match,{f,1175},{x,0},{commands,[{ensure_exactly,0}]}}.
    {move,{x,1},{x,0}}.
    return.
  {label,1175}.
    {line,[{location,"bs_match_SUITE.erl",2056}]}.
    {badmatch,{x,1}}.
  {label,1176}.
    {line,[{location,"bs_match_SUITE.erl",2053}]}.
    {case_end,{atom,b}}.


{function, constant_propagation_b, 1, 1178}.
  {label,1177}.
    {line,[{location,"bs_match_SUITE.erl",2058}]}.
    {func_info,{atom,bs_match_SUITE},{atom,constant_propagation_b},1}.
  {label,1178}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,16,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,1179},
              {x,0},
              {commands,[{ensure_exactly,16},
                         {integer,2,{literal,[]},16,1,{x,2}}]}}.
    {move,{x,2},{x,0}}.
    return.
  {label,1179}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {line,[{location,"bs_match_SUITE.erl",2060}]}.
    {badmatch,{x,0}}.


{function, constant_propagation_c, 0, 1181}.
  {label,1180}.
    {line,[{location,"bs_match_SUITE.erl",2063}]}.
    {func_info,{atom,bs_match_SUITE},{atom,constant_propagation_c},0}.
  {label,1181}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1872},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_integer,{0,65535}}}]}}.
    return.


{function, parse_xml, 1, 1183}.
  {label,1182}.
    {line,[{location,"bs_match_SUITE.erl",2070}]}.
    {func_info,{atom,bs_match_SUITE},{atom,parse_xml},1}.
  {label,1183}.
    {allocate,0,0}.
    {move,{literal,<<"<?xmlX">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2071}]}.
    {call,1,{f,1187}}. % do_parse_xml/1
    {test,is_eq_exact,{f,1185},[{x,0},{literal,<<"<?xmlX">>}]}.
    {move,{literal,<<"<?xml ">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2072}]}.
    {call,1,{f,1187}}. % do_parse_xml/1
    {test,is_eq_exact,{f,1184},[{x,0},{literal,<<" ">>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1184}.
    {badmatch,{x,0}}.
  {label,1185}.
    {line,[{location,"bs_match_SUITE.erl",2071}]}.
    {badmatch,{x,0}}.


{function, do_parse_xml, 1, 1187}.
  {label,1186}.
    {line,[{location,"bs_match_SUITE.erl",2075}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_parse_xml},1}.
  {label,1187}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,16,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,1190},
              {x,0},
              {commands,[{ensure_at_least,40,1},
                         {'=:=',nil,31,505396278},
                         {'=:=',nil,9,364}]}}.
    {allocate,3,2}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
    {bs_get_position,{x,0},{y,0},1}.
    {line,[{location,"bs_match_SUITE.erl",2079}]}.
    {call,1,{f,1192}}. % is_next_char_whitespace/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1188},[{x,0},{atom,true}]}.
    {bs_set_position,{y,2},{y,0}}.
    {bs_get_tail,{y,2},{x,0},0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {line,[{location,"bs_match_SUITE.erl",2083}]}.
    {call,1,{f,1771}}. % id/1
    {jump,{f,1189}}.
  {label,1188}.
    {bs_set_position,{y,2},{y,1}}.
    {bs_get_tail,{y,2},{x,0},0}.
  {label,1189}.
    {call_last,1,{f,1771},3}. % id/1
  {label,1190}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,1186}}.


{function, is_next_char_whitespace, 1, 1192}.
  {label,1191}.
    {line,[{location,"bs_match_SUITE.erl",2087}]}.
    {func_info,{atom,bs_match_SUITE},{atom,is_next_char_whitespace},1}.
  {label,1192}.
    {'%',{var_info,{x,0},[{type,{t_bs_context,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,resume},1,{x,0},{x,0}}.
    {test,bs_get_utf8,
          {f,1193},
          1,
          [{tr,{x,0},{t_bs_context,8}},
           {field_flags,[{anno,[2087,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {bif,'=:=',{f,0},[{tr,{x,1},{t_integer,{0,1114111}}},{integer,32}],{x,0}}.
    return.
  {label,1193}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,1191}}.


{function, get_payload, 1, 1195}.
  {label,1194}.
    {line,[{location,"bs_match_SUITE.erl",2094}]}.
    {func_info,{atom,bs_match_SUITE},{atom,get_payload},1}.
  {label,1195}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,{ext_header,17,<<0,0,0,0,13,117>>}},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2095}]}.
    {call,1,{f,1200}}. % do_get_payload/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {test,is_eq_exact,
          {f,1198},
          [{tr,{x,0},{t_bitstring,16,false}},{literal,<<0,0,0,0,13,117>>}]}.
    {'catch',{y,0},{f,1196}}.
    {move,{literal,{ext_header,17,undefined}},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",2096}]}.
    {call,1,{f,1200}}. % do_get_payload/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
  {label,1196}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1197},[{x,0},2,{atom,'EXIT'}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,1197}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",2096}]}.
    {badmatch,{x,0}}.
  {label,1198}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",2095}]}.
    {badmatch,{x,0}}.


{function, do_get_payload, 1, 1200}.
  {label,1199}.
    {line,[{location,"bs_match_SUITE.erl",2099}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_get_payload},1}.
  {label,1200}.
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
    {test,bs_start_match3,{f,1201},1,[{x,0}],{x,1}}.
    {bs_match,{f,1201},{x,1},{commands,[{ensure_exactly,48}]}}.
    return.
  {label,1201}.
    {line,[{location,"bs_match_SUITE.erl",2102}]}.
    {badmatch,{x,0}}.


{function, escape, 1, 1203}.
  {label,1202}.
    {line,[{location,"bs_match_SUITE.erl",2105}]}.
    {func_info,{atom,bs_match_SUITE},{atom,escape},1}.
  {label,1203}.
    {allocate,0,0}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2106}]}.
    {call,2,{f,1210}}. % escape/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,1208},
          [{tr,{x,0},{t_integer,{0,'+inf'}}},{integer,0}]}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<128>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2107}]}.
    {call,2,{f,1210}}. % escape/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,1207},
          [{tr,{x,0},{t_integer,{0,'+inf'}}},{integer,1}]}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<128,255>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2108}]}.
    {call,2,{f,1210}}. % escape/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,1206},
          [{tr,{x,0},{t_integer,{0,'+inf'}}},{integer,2}]}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2109}]}.
    {call,2,{f,1210}}. % escape/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,1205},
          [{tr,{x,0},{t_integer,{0,'+inf'}}},{integer,42}]}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<"*\b">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2110}]}.
    {call,2,{f,1210}}. % escape/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,'+inf'}}}]}}.
    {test,is_eq_exact,
          {f,1204},
          [{tr,{x,0},{t_integer,{0,'+inf'}}},{integer,50}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1204}.
    {badmatch,{x,0}}.
  {label,1205}.
    {line,[{location,"bs_match_SUITE.erl",2109}]}.
    {badmatch,{x,0}}.
  {label,1206}.
    {line,[{location,"bs_match_SUITE.erl",2108}]}.
    {badmatch,{x,0}}.
  {label,1207}.
    {line,[{location,"bs_match_SUITE.erl",2107}]}.
    {badmatch,{x,0}}.
  {label,1208}.
    {line,[{location,"bs_match_SUITE.erl",2106}]}.
    {badmatch,{x,0}}.


{function, escape, 2, 1210}.
  {label,1209}.
    {line,[{location,"bs_match_SUITE.erl",2113}]}.
    {func_info,{atom,bs_match_SUITE},{atom,escape},2}.
  {label,1210}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,'+inf'}}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,1212},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,is_ge,{f,1211},[{tr,{x,2},{t_integer,{0,255}}},{integer,127}]}.
    {line,[{location,"bs_match_SUITE.erl",2114}]}.
    {gc_bif,'+',{f,0},2,[{tr,{x,1},{t_integer,{0,'+inf'}}},{integer,1}],{x,1}}.
    {call_only,2,{f,1210}}. % escape/2
  {label,1211}.
    {line,[{location,"bs_match_SUITE.erl",2116}]}.
    {gc_bif,'+',
            {f,0},
            3,
            [{tr,{x,1},{t_integer,{0,'+inf'}}},{tr,{x,2},{t_integer,{0,126}}}],
            {x,1}}.
    {call_only,2,{f,1210}}. % escape/2
  {label,1212}.
    {move,{x,1},{x,0}}.
    return.


{function, num_slots_different, 1, 1214}.
  {label,1213}.
    {line,[{location,"bs_match_SUITE.erl",2121}]}.
    {func_info,{atom,bs_match_SUITE},{atom,num_slots_different},1}.
  {label,1214}.
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
    {line,[{location,"bs_match_SUITE.erl",2129}]}.
    {call,1,{f,1868}}. % '-num_slots_different/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {'catch',{y,3},{f,1215}}.
    {move,{literal,<<"default">>},{x,1}}.
    {move,{literal,<<"Remove">>},{x,2}}.
    {move,{literal,<<"d">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2131}]}.
    {call,3,{f,1224}}. % lgettext/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[ok]},
                                     2 => {t_bitstring,8,false}}}}]}}.
  {label,1215}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,1222},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,2},{f,1216}}.
    {move,{literal,<<"default">>},{x,1}}.
    {move,{literal,<<"Remove">>},{x,2}}.
    {move,nil,{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_SUITE.erl",2132}]}.
    {call,3,{f,1224}}. % lgettext/3
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1216}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,1221},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,1},{f,1217}}.
    {move,{literal,<<"def">>},{x,1}}.
    {move,{literal,<<"Remove">>},{x,2}}.
    {move,{literal,<<"de">>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_SUITE.erl",2133}]}.
    {call,3,{f,1224}}. % lgettext/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[ok]},
                                     2 => {t_bitstring,8,false}}}}]}}.
  {label,1217}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,1220},[{x,0},2,{atom,'EXIT'}]}.
    {'catch',{y,0},{f,1218}}.
    {move,{literal,<<"default">>},{x,1}}.
    {move,{literal,<<"Res">>},{x,2}}.
    {move,{literal,<<"de">>},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_SUITE.erl",2134}]}.
    {call,3,{f,1224}}. % lgettext/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[ok]},
                                     2 => {t_bitstring,8,false}}}}]}}.
  {label,1218}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1219},[{x,0},2,{atom,'EXIT'}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,4}.
    return.
  {label,1219}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",2134}]}.
    {badmatch,{x,0}}.
  {label,1220}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",2133}]}.
    {badmatch,{x,0}}.
  {label,1221}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",2132}]}.
    {badmatch,{x,0}}.
  {label,1222}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",2131}]}.
    {badmatch,{x,0}}.


{function, lgettext, 3, 1224}.
  {label,1223}.
    {line,[{location,"bs_match_SUITE.erl",2138}]}.
    {func_info,{atom,bs_match_SUITE},{atom,lgettext},3}.
  {label,1224}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,nil,none,none,{t_bitstring,8,false}}},
                    accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,2},[{type,{t_bitstring,8,false}}]}}.
    {test,bs_start_match3,{f,1235},3,[{x,0}],{x,0}}.
    {bs_get_position,{x,0},{x,3},3}.
    {bs_match,{f,1234},
              {x,0},
              {commands,[{ensure_exactly,16},{'=:=',nil,16,25701}]}}.
    {bs_start_match4,{atom,no_fail},4,{x,1},{x,4}}.
    {bs_match,{f,1234},
              {x,4},
              {commands,[{ensure_at_least,16,1},
                         {integer,5,{literal,[]},16,1,{x,5}}]}}.
    {select_val,{tr,{x,5},{t_integer,{0,65535}}},
                {f,1234},
                {list,[{integer,25701},{f,1227},{integer,28257},{f,1225}]}}.
  {label,1225}.
    {bs_match,{f,1234},
              {x,4},
              {commands,[{ensure_exactly,64},
                         {'=:=',nil,31,993309616},
                         {'=:=',nil,31,1562008539},
                         {'=:=',nil,2,2}]}}.
    {bs_start_match4,{atom,no_fail},4,{x,2},{x,4}}.
    {bs_match,{f,1234},
              {x,4},
              {commands,[{ensure_at_least,32,1},
                         {'=:=',nil,16,21093},
                         {integer,5,{literal,[]},16,1,{x,5}}]}}.
    {select_val,{tr,{x,5},{t_integer,{0,65535}}},
                {f,1234},
                {list,[{integer,29551},{f,1226},{integer,29557},{f,1228}]}}.
  {label,1226}.
    {bs_match,{f,1234},
              {x,4},
              {commands,[{ensure_exactly,40},
                         {'=:=',nil,31,985215410},
                         {'=:=',nil,9,371}]}}.
    {move,{literal,{ok,<<"Ressourcen">>}},{x,0}}.
    return.
  {label,1227}.
    {bs_match,{f,1234},
              {x,4},
              {commands,[{ensure_exactly,40},
                         {'=:=',nil,31,858831542},
                         {'=:=',nil,9,116}]}}.
    {bs_start_match4,{atom,no_fail},4,{x,2},{x,4}}.
    {bs_match,{f,1234},
              {x,4},
              {commands,[{ensure_at_least,32,1},
                         {'=:=',nil,16,21093},
                         {integer,5,{literal,[]},16,1,{x,5}}]}}.
    {select_val,{tr,{x,5},{t_integer,{0,65535}}},
                {f,1234},
                {list,[{integer,28015},
                       {f,1230},
                       {integer,29541},
                       {f,1229},
                       {integer,29557},
                       {f,1228}]}}.
  {label,1228}.
    {bs_match,{f,1234},
              {x,4},
              {commands,[{ensure_exactly,24},{'=:=',nil,24,7107699}]}}.
    {move,{literal,{ok,<<"Ergebnisse">>}},{x,0}}.
    return.
  {label,1229}.
    {bs_match,{f,1234},
              {x,4},
              {commands,[{ensure_exactly,48},
                         {'=:=',nil,31,960180410},
                         {'=:=',nil,17,26991}]}}.
    {move,{literal,{ok,<<"a">>}},{x,0}}.
    return.
  {label,1230}.
    {bs_match,{f,1234},
              {x,4},
              {commands,[{ensure_at_least,16,1},{'=:=',nil,16,30309}]}}.
    {bs_get_position,{x,4},{x,5},5}.
    {bs_match,{f,1233},
              {x,4},
              {commands,[{ensure_at_least,48,1},
                         {'=:=',nil,31,271792439},
                         {'=:=',nil,17,93472}]}}.
    {bs_match,{f,1234},
              {x,4},
              {commands,[{ensure_at_least,16,1},
                         {integer,6,{literal,[]},16,1,{x,6}}]}}.
    {select_val,{tr,{x,6},{t_integer,{0,65535}}},
                {f,1233},
                {list,[{integer,27753},{f,1232},{integer,29800},{f,1231}]}}.
  {label,1231}.
    {bs_match,{f,1234},
              {x,4},
              {commands,[{ensure_at_least,48,1},
                         {'=:=',nil,31,848311860},
                         {'=:=',nil,17,95092}]}}.
    {bs_match,{f,1233},{x,4},{commands,[{ensure_exactly,0}]}}.
    {move,{literal,{ok,<<"a">>}},{x,0}}.
    return.
  {label,1232}.
    {bs_match,{f,1234},
              {x,4},
              {commands,[{ensure_at_least,16,1},{'=:=',nil,16,29556}]}}.
    {bs_match,{f,1233},{x,4},{commands,[{ensure_exactly,0}]}}.
    {move,{literal,{ok,<<"a">>}},{x,0}}.
    return.
  {label,1233}.
    {bs_set_position,{x,4},{x,5}}.
    {bs_match,{f,1234},{x,4},{commands,[{ensure_exactly,0}]}}.
    {move,{literal,{ok,<<"a">>}},{x,0}}.
    return.
  {label,1234}.
    {bs_set_position,{x,0},{x,3}}.
    {bs_get_tail,{x,0},{x,0},3}.
    {jump,{f,1223}}.
  {label,1235}.
    {move,nil,{x,0}}.
    {jump,{f,1223}}.


{function, beam_bsm, 1, 1237}.
  {label,1236}.
    {line,[{location,"bs_match_SUITE.erl",2154}]}.
    {func_info,{atom,bs_match_SUITE},{atom,beam_bsm},1}.
  {label,1237}.
    {allocate,0,0}.
    {move,{literal,[1,0,1,1]},{x,1}}.
    {move,{literal,<<11:4>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2155}]}.
    {call,2,{f,1248}}. % check_bitstring_list/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1246},[{x,0},{atom,true}]}.
    {move,{literal,[0]},{x,1}}.
    {move,{literal,<<11:4>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2156}]}.
    {call,2,{f,1248}}. % check_bitstring_list/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1238},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,1238}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2158}]}.
    {call,1,{f,1252}}. % bsm_validate_scheme/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1245},[{x,0},{atom,true}]}.
    {move,{literal,<<5,10>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2159}]}.
    {call,1,{f,1252}}. % bsm_validate_scheme/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1244},[{x,0},{atom,true}]}.
    {move,{literal,<<5,10,11,12>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2160}]}.
    {call,1,{f,1252}}. % bsm_validate_scheme/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1239},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,1239}.
    {move,nil,{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2161}]}.
    {call,1,{f,1252}}. % bsm_validate_scheme/1
    {'%',{var_info,{x,0},[{type,{t_atom,[true]}}]}}.
    {move,{literal,[5,10]},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2162}]}.
    {call,1,{f,1252}}. % bsm_validate_scheme/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1243},[{x,0},{atom,true}]}.
    {move,{literal,[5,6,7]},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2163}]}.
    {call,1,{f,1252}}. % bsm_validate_scheme/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1240},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,1240}.
    {move,nil,{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2165}]}.
    {call,2,{f,1262}}. % bsm_must_save_and_not_save/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,1242},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<1,2,3>>}]}.
    {test_heap,{alloc,[{words,4},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1866},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_number,any}}]}}.
    {put_list,{x,0},nil,{x,1}}.
    {put_list,{x,0},{x,1},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2167}]}.
    {call,2,{f,1262}}. % bsm_must_save_and_not_save/2
    {'%',{var_info,{x,0},
                   [{type,{t_cons,{t_number,any},{t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,1241},
          [{tr,{x,0},{t_cons,{t_number,any},{t_bitstring,8,false}}},
           {literal,[2,4|<<3>>]}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1241}.
    {badmatch,{x,0}}.
  {label,1242}.
    {line,[{location,"bs_match_SUITE.erl",2165}]}.
    {badmatch,{x,0}}.
  {label,1243}.
    {line,[{location,"bs_match_SUITE.erl",2162}]}.
    {badmatch,{atom,false}}.
  {label,1244}.
    {line,[{location,"bs_match_SUITE.erl",2159}]}.
    {badmatch,{atom,false}}.
  {label,1245}.
    {line,[{location,"bs_match_SUITE.erl",2158}]}.
    {badmatch,{atom,false}}.
  {label,1246}.
    {line,[{location,"bs_match_SUITE.erl",2155}]}.
    {badmatch,{atom,false}}.


{function, check_bitstring_list, 2, 1248}.
  {label,1247}.
    {line,[{location,"bs_match_SUITE.erl",2171}]}.
    {func_info,{atom,bs_match_SUITE},{atom,check_bitstring_list},2}.
  {label,1248}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_integer,{0,1}},nil}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {bs_match,{f,1249},
              {x,0},
              {commands,[{ensure_at_least,1,1},
                         {integer,3,{literal,[]},1,1,{x,3}}]}}.
    {test,is_nonempty_list,{f,1249},[{x,1}]}.
    {get_list,{x,1},{x,4},{x,5}}.
    {test,is_eq_exact,
          {f,1249},
          [{tr,{x,4},{t_integer,{0,1}}},{tr,{x,3},{t_integer,{0,1}}}]}.
    {move,{x,5},{x,1}}.
    {call_only,2,{f,1248}}. % check_bitstring_list/2
  {label,1249}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_match,{f,1250},{x,0},{commands,[{ensure_exactly,0}]}}.
    {bif,'=:=',{f,0},[{tr,{x,1},{t_list,{t_integer,{0,1}},nil}},nil],{x,0}}.
    return.
  {label,1250}.
    {move,{atom,false},{x,0}}.
    return.


{function, bsm_validate_scheme, 1, 1252}.
  {label,1251}.
    {line,[{location,"bs_match_SUITE.erl",2178}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bsm_validate_scheme},1}.
  {label,1252}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,
                                   {t_list,{t_integer,{5,10}},nil},
                                   none,none,
                                   {t_bs_matchable,8}}},
                    accepts_match_context]}}.
    {test,bs_start_match3,{f,1255},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {bs_match,{f,1253},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{atom,true},{x,0}}.
    return.
  {label,1253}.
    {bs_match,{f,1254},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,0}}]}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {line,[{location,"bs_match_SUITE.erl",2186}]}.
    {call,1,{f,1260}}. % bsm_is_scheme/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1257},[{x,0},{atom,true}]}.
    {jump,{f,1256}}.
  {label,1254}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,1251}}.
  {label,1255}.
    {test,is_nonempty_list,{f,1258},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{x,0},{y,0}}.
    {line,[{location,"bs_match_SUITE.erl",2180}]}.
    {call,1,{f,1260}}. % bsm_is_scheme/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1257},[{x,0},{atom,true}]}.
  {label,1256}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,1252},1}. % bsm_validate_scheme/1
  {label,1257}.
    {move,{atom,false},{x,0}}.
    {deallocate,1}.
    return.
  {label,1258}.
    {move,{atom,true},{x,0}}.
    return.


{function, bsm_is_scheme, 1, 1260}.
  {label,1259}.
    {line,[{location,"bs_match_SUITE.erl",2191}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bsm_is_scheme},1}.
  {label,1260}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {line,[{location,"bs_match_SUITE.erl",2192}]}.
    {gc_bif,'rem',{f,0},1,[{tr,{x,0},{t_integer,{0,255}}},{integer,5}],{x,0}}.
    {bif,'=:=',{f,0},[{tr,{x,0},{t_integer,{0,4}}},{integer,0}],{x,0}}.
    return.


{function, bsm_must_save_and_not_save, 2, 1262}.
  {label,1261}.
    {line,[{location,"bs_match_SUITE.erl",2195}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bsm_must_save_and_not_save},2}.
  {label,1262}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_list,
                     {t_fun,1,{'-beam_bsm/1-fun-0-',1},{t_number,any}},
                     nil}}]}}.
    {test,is_nil,
          {f,1263},
          [{tr,{x,1},
               {t_list,{t_fun,1,{'-beam_bsm/1-fun-0-',1},{t_number,any}},
                       nil}}]}.
    return.
  {label,1263}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,2}}.
    {bs_match,{f,1261},
              {x,2},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,0}}]}}.
    {allocate,2,3}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {bs_get_tail,{x,2},{y,1},3}.
    {get_tl,{x,1},{y,0}}.
    {line,[{location,"bs_match_SUITE.erl",2198}]}.
    {call,1,{f,1866}}. % '-beam_bsm/1-fun-0-'/1
    {'%',{var_info,{x,0},[{type,{t_number,any}}]}}.
    {swap,{y,1},{x,0}}.
    {move,{y,0},{x,1}}.
    {trim,1,1}.
    {call,2,{f,1262}}. % bsm_must_save_and_not_save/2
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


{function, guard, 1, 1265}.
  {label,1264}.
    {line,[{location,"bs_match_SUITE.erl",2202}]}.
    {func_info,{atom,bs_match_SUITE},{atom,guard},1}.
  {label,1265}.
    {allocate,0,0}.
    {move,{literal,{a,b}},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2203}]}.
    {call,1,{f,1771}}. % id/1
    {move,{literal,{1,2,3}},{x,1}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2204}]}.
    {call,2,{f,1267}}. % guard_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,#{}},{x,1}}.
    {move,{literal,<<"*">>},{x,0}}.
    {call_last,2,{f,1270},0}. % guard_2/2


{function, guard_1, 2, 1267}.
  {label,1266}.
    {line,[{location,"bs_match_SUITE.erl",2209}]}.
    {func_info,{atom,bs_match_SUITE},{atom,guard_1},2}.
  {label,1267}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,{1,1}},
                                     2 => {t_integer,{2,2}},
                                     3 => {t_integer,{3,3}}}}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {bs_match,{f,1268},
              {x,0},
              {commands,[{ensure_exactly,24},
                         {integer,3,{literal,[]},8,1,{x,3}},
                         {integer,4,{literal,[]},8,1,{x,4}},
                         {integer,5,{literal,[]},8,1,{x,5}}]}}.
    {test_heap,4,6}.
    {put_tuple2,{x,3},{list,[{x,3},{x,4},{x,5}]}}.
    {test,is_eq_exact,
          {f,1268},
          [{tr,{x,3},
               {t_tuple,3,true,
                        #{1 => {t_integer,{0,255}},
                          2 => {t_integer,{0,255}},
                          3 => {t_integer,{0,255}}}}},
           {literal,{1,2,3}}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1268}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {jump,{f,1266}}.


{function, guard_2, 2, 1270}.
  {label,1269}.
    {line,[{location,"bs_match_SUITE.erl",2213}]}.
    {func_info,{atom,bs_match_SUITE},{atom,guard_2},2}.
  {label,1270}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_map,none,none}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,1271},{x,0},{commands,[{ensure_exactly,8}]}}.
    {put_map_assoc,{f,0},{literal,#{}},{x,2},2,{list,[nil,{literal,#{}}]}}.
    {test,is_eq_exact,
          {f,1271},
          [{tr,{x,2},{t_map,nil,{t_map,none,none}}},{literal,#{[] => #{}}}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1271}.
    {bs_get_tail,{x,0},{x,0},2}.
    {jump,{f,1269}}.


{function, is_ascii, 1, 1273}.
  {label,1272}.
    {line,[{location,"bs_match_SUITE.erl",2216}]}.
    {func_info,{atom,bs_match_SUITE},{atom,is_ascii},1}.
  {label,1273}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2217}]}.
    {call,1,{f,1282}}. % do_is_ascii/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1280},[{x,0},{atom,true}]}.
    {move,{literal,<<"string">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",2218}]}.
    {call,1,{f,1282}}. % do_is_ascii/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1279},[{x,0},{atom,true}]}.
    {move,{literal,<<208,128>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",2219}]}.
    {call,1,{f,1282}}. % do_is_ascii/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1274},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,1274}.
    {'catch',{y,1},{f,1275}}.
    {move,{literal,<<65,0:3>>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",2220}]}.
    {call,1,{f,1282}}. % do_is_ascii/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
  {label,1275}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,1278},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1278},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,0},{f,1276}}.
    {move,{literal,<<128,0:3>>},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_SUITE.erl",2221}]}.
    {call,1,{f,1282}}. % do_is_ascii/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
  {label,1276}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1277},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1277},[{x,1},2,{atom,function_clause}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,1277}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",2221}]}.
    {badmatch,{x,0}}.
  {label,1278}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",2220}]}.
    {badmatch,{x,0}}.
  {label,1279}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",2218}]}.
    {badmatch,{atom,false}}.
  {label,1280}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",2217}]}.
    {badmatch,{atom,false}}.


{function, do_is_ascii, 1, 1282}.
  {label,1281}.
    {line,[{location,"bs_match_SUITE.erl",2224}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_is_ascii},1}.
  {label,1282}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,1283},{x,0},{commands,[{ensure_exactly,0}]}}.
    {move,{atom,true},{x,0}}.
    return.
  {label,1283}.
    {bs_match,{f,1285},
              {x,0},
              {commands,[{ensure_at_least,8,8},
                         {integer,1,{literal,[]},8,1,{x,1}}]}}.
    {test,is_ge,{f,1284},[{tr,{x,1},{t_integer,{0,255}}},{integer,128}]}.
    {move,{atom,false},{x,0}}.
    return.
  {label,1284}.
    {call_only,1,{f,1282}}. % do_is_ascii/1
  {label,1285}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,1281}}.


{function, non_opt_eq, 1, 1287}.
  {label,1286}.
    {line,[{location,"bs_match_SUITE.erl",2233}]}.
    {func_info,{atom,bs_match_SUITE},{atom,non_opt_eq},1}.
  {label,1287}.
    {allocate,0,0}.
    {move,{literal,<<>>},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2234}]}.
    {call,2,{f,1291}}. % non_opt_eq/2
    {'%',{var_info,{x,0},[{type,{t_atom,[true]}}]}}.
    {move,{literal,<<"a">>},{x,1}}.
    {move,{literal,"a"},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2235}]}.
    {call,2,{f,1291}}. % non_opt_eq/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1289},[{x,0},{atom,true}]}.
    {move,{literal,<<"b">>},{x,1}}.
    {move,{literal,"a"},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2236}]}.
    {call,2,{f,1291}}. % non_opt_eq/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1288},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,1288}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1289}.
    {line,[{location,"bs_match_SUITE.erl",2235}]}.
    {badmatch,{atom,false}}.


{function, non_opt_eq, 2, 1291}.
  {label,1290}.
    {line,[{location,"bs_match_SUITE.erl",2242}]}.
    {func_info,{atom,bs_match_SUITE},{atom,non_opt_eq},2}.
  {label,1291}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{97,97}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {bs_match,{f,1293},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,is_nonempty_list,{f,1293},[{x,0}]}.
    {get_tl,{x,0},{x,0}}.
    {test,is_eq_exact,{f,1292},[{tr,{x,3},{t_integer,{0,255}}},{integer,97}]}.
    {call_only,2,{f,1291}}. % non_opt_eq/2
  {label,1292}.
    {move,{atom,false},{x,0}}.
    return.
  {label,1293}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_match,{f,1294},{x,1},{commands,[{ensure_exactly,0}]}}.
    {test,is_nil,{f,1294},[{tr,{x,0},{t_list,{t_integer,{97,97}},nil}}]}.
    {move,{atom,true},{x,0}}.
    return.
  {label,1294}.
    {bs_get_tail,{x,1},{x,1},2}.
    {jump,{f,1290}}.


{function, erl_689, 1, 1296}.
  {label,1295}.
    {line,[{location,"bs_match_SUITE.erl",2251}]}.
    {func_info,{atom,bs_match_SUITE},{atom,erl_689},1}.
  {label,1296}.
    {allocate,0,0}.
    {move,{atom,bs_match_SUITE},{x,1}}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2252}]}.
    {call,2,{f,1302}}. % do_erl_689_1/2
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
        {f,1300},
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
    {line,[{location,"bs_match_SUITE.erl",2253}]}.
    {call,2,{f,1302}}. % do_erl_689_1/2
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
         {literal,{{2018,8,7},<<>>}}]}.
    {move,{literal,<<0>>},{x,1}}.
    {move,{atom,bs_match_SUITE},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2254}]}.
    {call,2,{f,1305}}. % do_erl_689_2/2
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
        {f,1298},
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
    {line,[{location,"bs_match_SUITE.erl",2255}]}.
    {call,2,{f,1305}}. % do_erl_689_2/2
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
        {f,1297},
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
  {label,1297}.
    {badmatch,{x,0}}.
  {label,1298}.
    {line,[{location,"bs_match_SUITE.erl",2254}]}.
    {badmatch,{x,0}}.
  {label,1299}.
    {line,[{location,"bs_match_SUITE.erl",2253}]}.
    {badmatch,{x,0}}.
  {label,1300}.
    {line,[{location,"bs_match_SUITE.erl",2252}]}.
    {badmatch,{x,0}}.


{function, do_erl_689_1, 2, 1302}.
  {label,1301}.
    {line,[{location,"bs_match_SUITE.erl",2258}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_erl_689_1},2}.
  {label,1302}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[bs_match_SUITE]}}]}}.
    {allocate,1,2}.
    {move,{x,0},{y,0}}.
    {line,[{location,"bs_match_SUITE.erl",2259}]}.
    {call,2,{f,1308}}. % do_erl_689_1a/2
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
    {line,[{location,"bs_match_SUITE.erl",2260}]}.
    {call,2,{f,1313}}. % do_erl_689_1b/2
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
        {f,1303},
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
  {label,1303}.
    {badmatch,{x,0}}.


{function, do_erl_689_2, 2, 1305}.
  {label,1304}.
    {line,[{location,"bs_match_SUITE.erl",2262}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_erl_689_2},2}.
  {label,1305}.
    {'%',{var_info,{x,0},[{type,{t_atom,[bs_match_SUITE]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,false}}]}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {line,[{location,"bs_match_SUITE.erl",2263}]}.
    {call,2,{f,1318}}. % do_erl_689_2a/2
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
    {line,[{location,"bs_match_SUITE.erl",2264}]}.
    {call,2,{f,1323}}. % do_erl_689_2b/2
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
        {f,1306},
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
  {label,1306}.
    {badmatch,{x,0}}.


{function, do_erl_689_1a, 2, 1308}.
  {label,1307}.
    {line,[{location,"bs_match_SUITE.erl",2266}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_erl_689_1a},2}.
  {label,1308}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[bs_match_SUITE]}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {bs_match,{f,1311},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,1,{literal,[]},8,1,{x,1}}]}}.
    {bs_get_position,{x,0},{x,2},2}.
    {test,is_eq_exact,{f,1309},[{tr,{x,1},{t_integer,{0,255}}},{integer,0}]}.
    {bs_get_tail,{x,0},{x,0},1}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{literal,{0,0,0}},{x,0}]}}.
    return.
  {label,1309}.
    {bs_match,{f,1310},
              {x,0},
              {commands,[{ensure_at_least,32,1},
                         {integer,3,{literal,[little]},16,1,{x,3}},
                         {integer,4,{literal,[]},8,1,{x,4}},
                         {integer,5,{literal,[]},8,1,{x,5}},
                         {get_tail,6,1,{x,6}}]}}.
    {test,is_eq_exact,{f,1310},[{tr,{x,1},{t_integer,{1,255}}},{integer,4}]}.
    {test_heap,7,7}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4},{x,5}]}}.
    {put_tuple2,{x,0},{list,[{x,0},{x,6}]}}.
    return.
  {label,1310}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {line,[{location,"bs_match_SUITE.erl",2267}]}.
    {case_end,{x,0}}.
  {label,1311}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {jump,{f,1307}}.


{function, do_erl_689_1b, 2, 1313}.
  {label,1312}.
    {line,[{location,"bs_match_SUITE.erl",2276}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_erl_689_1b},2}.
  {label,1313}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[bs_match_SUITE]}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {bs_match,{f,1316},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,1,{literal,[]},8,1,{x,1}}]}}.
    {bs_get_position,{x,0},{x,2},2}.
    {test,is_eq_exact,{f,1314},[{tr,{x,1},{t_integer,{0,255}}},{integer,0}]}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2281}]}.
    {call,1,{f,1771}}. % id/1
    {bs_get_tail,{y,0},{x,0},0}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{literal,{0,0,0}},{x,0}]}}.
    {deallocate,1}.
    return.
  {label,1314}.
    {bs_match,{f,1315},
              {x,0},
              {commands,[{ensure_at_least,32,1},
                         {integer,3,{literal,[little]},16,1,{x,3}},
                         {integer,4,{literal,[]},8,1,{x,4}},
                         {integer,5,{literal,[]},8,1,{x,5}},
                         {get_tail,6,1,{x,6}}]}}.
    {test,is_eq_exact,{f,1315},[{tr,{x,1},{t_integer,{1,255}}},{integer,4}]}.
    {allocate,4,7}.
    {move,{x,6},{y,0}}.
    {move,{x,5},{y,1}}.
    {move,{x,4},{y,2}}.
    {move,{x,3},{y,3}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2284}]}.
    {call,1,{f,1771}}. % id/1
    {test_heap,7,0}.
    {put_tuple2,{x,0},{list,[{y,3},{y,2},{y,1}]}}.
    {put_tuple2,{x,0},{list,[{x,0},{y,0}]}}.
    {deallocate,4}.
    return.
  {label,1315}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {line,[{location,"bs_match_SUITE.erl",2277}]}.
    {case_end,{x,0}}.
  {label,1316}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {jump,{f,1312}}.


{function, do_erl_689_2a, 2, 1318}.
  {label,1317}.
    {line,[{location,"bs_match_SUITE.erl",2288}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_erl_689_2a},2}.
  {label,1318}.
    {'%',{var_info,{x,0},[{type,{t_atom,[bs_match_SUITE]}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {bs_match,{f,1321},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,0}}]}}.
    {bs_get_position,{x,1},{x,2},2}.
    {test,is_eq_exact,{f,1319},[{tr,{x,0},{t_integer,{0,255}}},{integer,0}]}.
    {bs_get_tail,{x,1},{x,0},2}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{literal,{0,0,0}},{x,0}]}}.
    return.
  {label,1319}.
    {bs_match,{f,1320},
              {x,1},
              {commands,[{ensure_at_least,32,1},
                         {integer,3,{literal,[little]},16,1,{x,3}},
                         {integer,4,{literal,[]},8,1,{x,4}},
                         {integer,5,{literal,[]},8,1,{x,5}},
                         {get_tail,6,1,{x,6}}]}}.
    {test,is_eq_exact,{f,1320},[{tr,{x,0},{t_integer,{1,255}}},{integer,4}]}.
    {test_heap,7,7}.
    {put_tuple2,{x,0},{list,[{x,3},{x,4},{x,5}]}}.
    {put_tuple2,{x,0},{list,[{x,0},{x,6}]}}.
    return.
  {label,1320}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_get_tail,{x,1},{x,1},2}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {line,[{location,"bs_match_SUITE.erl",2289}]}.
    {case_end,{x,0}}.
  {label,1321}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_get_tail,{x,1},{x,1},2}.
    {jump,{f,1317}}.


{function, do_erl_689_2b, 2, 1323}.
  {label,1322}.
    {line,[{location,"bs_match_SUITE.erl",2298}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_erl_689_2b},2}.
  {label,1323}.
    {'%',{var_info,{x,0},[{type,{t_atom,[bs_match_SUITE]}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {bs_match,{f,1326},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,0}}]}}.
    {bs_get_position,{x,1},{x,2},2}.
    {test,is_eq_exact,{f,1324},[{tr,{x,0},{t_integer,{0,255}}},{integer,0}]}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2303}]}.
    {call,1,{f,1771}}. % id/1
    {bs_get_tail,{y,0},{x,0},0}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{literal,{0,0,0}},{x,0}]}}.
    {deallocate,1}.
    return.
  {label,1324}.
    {bs_match,{f,1325},
              {x,1},
              {commands,[{ensure_at_least,32,1},
                         {integer,3,{literal,[little]},16,1,{x,3}},
                         {integer,4,{literal,[]},8,1,{x,4}},
                         {integer,5,{literal,[]},8,1,{x,5}},
                         {get_tail,6,1,{x,6}}]}}.
    {test,is_eq_exact,{f,1325},[{tr,{x,0},{t_integer,{1,255}}},{integer,4}]}.
    {allocate,4,7}.
    {move,{x,6},{y,0}}.
    {move,{x,5},{y,1}}.
    {move,{x,4},{y,2}}.
    {move,{x,3},{y,3}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2306}]}.
    {call,1,{f,1771}}. % id/1
    {test_heap,7,0}.
    {put_tuple2,{x,0},{list,[{y,3},{y,2},{y,1}]}}.
    {put_tuple2,{x,0},{list,[{x,0},{y,0}]}}.
    {deallocate,4}.
    return.
  {label,1325}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_get_tail,{x,1},{x,1},2}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {line,[{location,"bs_match_SUITE.erl",2299}]}.
    {case_end,{x,0}}.
  {label,1326}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_get_tail,{x,1},{x,1},2}.
    {jump,{f,1322}}.


{function, bs_start_match2_defs, 1, 1328}.
  {label,1327}.
    {line,[{location,"bs_match_SUITE.erl",2312}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bs_start_match2_defs},1}.
  {label,1328}.
    {allocate,0,0}.
    {move,{literal,<<"hello">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2313}]}.
    {call,1,{f,1332}}. % api_url/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,1,true,#{1 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
          {f,1330},
          [{tr,{x,0},{t_tuple,1,true,#{1 => {t_bitstring,8,false}}}},
           {literal,{<<"http://127.0.0.1:1234/vsaas/hello">>}}]}.
    {move,{literal,{https,"hello"}},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2314}]}.
    {call,1,{f,1332}}. % api_url/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,1,true,
                     #{1 => {t_cons,{t_integer,{46,118}},nil}}}}]}}.
    {test,is_eq_exact,
          {f,1329},
          [{tr,{x,0},
               {t_tuple,1,true,#{1 => {t_cons,{t_integer,{46,118}},nil}}}},
           {literal,{"https://127.0.0.1:4321/vsaas/hello"}}]}.
    {deallocate,0}.
    return.
  {label,1329}.
    {badmatch,{x,0}}.
  {label,1330}.
    {line,[{location,"bs_match_SUITE.erl",2313}]}.
    {badmatch,{x,0}}.


{function, api_url, 1, 1332}.
  {label,1331}.
    {line,[{location,"bs_match_SUITE.erl",2316}]}.
    {func_info,{atom,bs_match_SUITE},{atom,api_url},1}.
  {label,1332}.
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
    {test,bs_start_match3,{f,1333},1,[{x,0}],{x,1}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_SUITE.erl",2318}]}.
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
  {label,1333}.
    {allocate,0,1}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {move,{literal,"https://127.0.0.1:4321/vsaas/"},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2319}]}.
    {call_ext,2,{extfunc,erlang,'++',2}}.
    {test_heap,2,1}.
    {put_tuple2,{x,0},{list,[{x,0}]}}.
    {deallocate,0}.
    return.


{function, check, 2, 1335}.
  {label,1334}.
    {line,[{location,"bs_match_SUITE.erl",2322}]}.
    {func_info,{atom,bs_match_SUITE},{atom,check},2}.
  {label,1335}.
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
    {line,[{location,"bs_match_SUITE.erl",2323}]}.
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
          {f,1336},
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
  {label,1336}.
    {badmatch,{x,0}}.


{function, expression_before_match, 1, 1338}.
  {label,1337}.
    {line,[{location,"bs_match_SUITE.erl",2327}]}.
    {func_info,{atom,bs_match_SUITE},{atom,expression_before_match},1}.
  {label,1338}.
    {test,is_list,{f,1337},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<0,1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2328}]}.
    {call,1,{f,1771}}. % id/1
    {test,bs_start_match3,{f,1340},1,[{x,0}],{x,1}}.
    {bs_match,{f,1340},
              {x,1},
              {commands,[{ensure_at_least,8,8},
                         {skip,8},
                         {get_tail,2,8,{x,0}}]}}.
    {line,[{location,"bs_match_SUITE.erl",2329}]}.
    {call,1,{f,1342}}. % expression_before_match_1/1
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
        {f,1339},
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
  {label,1339}.
    {badmatch,{x,0}}.
  {label,1340}.
    {line,[{location,"bs_match_SUITE.erl",2328}]}.
    {badmatch,{x,0}}.


{function, expression_before_match_1, 1, 1342}.
  {label,1341}.
    {line,[{location,"bs_match_SUITE.erl",2332}]}.
    {func_info,{atom,bs_match_SUITE},{atom,expression_before_match_1},1}.
  {label,1342}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2333}]}.
    {call,1,{f,1771}}. % id/1
    {bs_start_match4,{atom,no_fail},1,{y,0},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {bs_match,{f,1343},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {'=:=',nil,8,1},
                         {get_tail,2,1,{x,1}}]}}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {deallocate,1}.
    return.
  {label,1343}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_match,{f,1344},{x,1},{commands,[{ensure_exactly,0}]}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{x,0},{atom,baz}]}}.
    {deallocate,1}.
    return.
  {label,1344}.
    {line,[{location,"bs_match_SUITE.erl",2334}]}.
    {case_end,{y,0}}.


{function, restore_on_call, 1, 1346}.
  {label,1345}.
    {line,[{location,"bs_match_SUITE.erl",2340}]}.
    {func_info,{atom,bs_match_SUITE},{atom,restore_on_call},1}.
  {label,1346}.
    {test,is_list,{f,1345},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<0,1,2>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2341}]}.
    {call,1,{f,1349}}. % restore_on_call_plain/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<0,120>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2342}]}.
    {call,1,{f,1357}}. % restore_on_call_match/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,1347},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<"x">>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1347}.
    {badmatch,{x,0}}.


{function, restore_on_call_plain, 1, 1349}.
  {label,1348}.
    {line,[{location,"bs_match_SUITE.erl",2345}]}.
    {func_info,{atom,bs_match_SUITE},{atom,restore_on_call_plain},1}.
  {label,1349}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,1350},
              {x,0},
              {commands,[{ensure_at_least,8,1},{'=:=',nil,8,0}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {bs_get_position,{x,0},{y,0},1}.
    {line,[{location,"bs_match_SUITE.erl",2346}]}.
    {call,1,{f,1354}}. % restore_on_call_plain_1/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,1352},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<2>>}]}.
    {bs_set_position,{y,1},{y,0}}.
    {move,{y,1},{x,0}}.
    {trim,2,0}.
    {line,[{location,"bs_match_SUITE.erl",2348}]}.
    {call,1,{f,1354}}. % restore_on_call_plain_1/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,1351},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<2>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1350}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,1348}}.
  {label,1351}.
    {badmatch,{x,0}}.
  {label,1352}.
    {line,[{location,"bs_match_SUITE.erl",2346}]}.
    {badmatch,{x,0}}.


{function, restore_on_call_plain_1, 1, 1354}.
  {label,1353}.
    {line,[{location,"bs_match_SUITE.erl",2351}]}.
    {func_info,{atom,bs_match_SUITE},{atom,restore_on_call_plain_1},1}.
  {label,1354}.
    {'%',{var_info,{x,0},[{type,{t_bs_context,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,resume},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,1355},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {'=:=',nil,8,1},
                         {get_tail,1,1,{x,0}}]}}.
    return.
  {label,1355}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    return.


{function, restore_on_call_match, 1, 1357}.
  {label,1356}.
    {line,[{location,"bs_match_SUITE.erl",2356}]}.
    {func_info,{atom,bs_match_SUITE},{atom,restore_on_call_match},1}.
  {label,1357}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,16,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,1359},
              {x,0},
              {commands,[{ensure_at_least,8,1},{'=:=',nil,8,0}]}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {bs_get_position,{x,0},{y,0},1}.
    {line,[{location,"bs_match_SUITE.erl",2357}]}.
    {call,1,{f,1361}}. % skip_until_zero/1
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
          {f,1358},
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
  {label,1358}.
    {bs_set_position,{y,1},{y,0}}.
    {bs_get_tail,{y,1},{x,0},0}.
    {deallocate,2}.
    return.
  {label,1359}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,1356}}.


{function, skip_until_zero, 1, 1361}.
  {label,1360}.
    {line,[{location,"bs_match_SUITE.erl",2366}]}.
    {func_info,{atom,bs_match_SUITE},{atom,skip_until_zero},1}.
  {label,1361}.
    {'%',{var_info,{x,0},[{type,{t_bs_context,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,resume},1,{x,0},{x,0}}.
    {bs_match,{f,1363},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,1,{literal,[]},8,1,{x,1}}]}}.
    {test,is_eq_exact,{f,1362},[{tr,{x,1},{t_integer,{0,255}}},{integer,0}]}.
    {bs_get_tail,{x,0},{x,0},1}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,skipped},{x,0}]}}.
    return.
  {label,1362}.
    {call_only,1,{f,1361}}. % skip_until_zero/1
  {label,1363}.
    {move,{atom,not_found},{x,0}}.
    return.


{function, restore_after_catch, 1, 1365}.
  {label,1364}.
    {line,[{location,"bs_match_SUITE.erl",2374}]}.
    {func_info,{atom,bs_match_SUITE},{atom,restore_after_catch},1}.
  {label,1365}.
    {test,is_list,{f,1364},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<0,1>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2375}]}.
    {call,1,{f,1368}}. % restore_after_catch_1/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {test,is_eq_exact,
          {f,1366},
          [{tr,{x,0},{t_bitstring,16,false}},{literal,<<0,1>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1366}.
    {badmatch,{x,0}}.


{function, restore_after_catch_1, 1, 1368}.
  {label,1367}.
    {line,[{location,"bs_match_SUITE.erl",2378}]}.
    {func_info,{atom,bs_match_SUITE},{atom,restore_after_catch_1},1}.
  {label,1368}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,16,false}},accepts_match_context]}}.
    {allocate,3,1}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{y,1}}.
    {bs_get_position,{y,1},{y,0},0}.
    {'try',{y,2},{f,1369}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2379}]}.
    {call,1,{f,1372}}. % throw_after_byte/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1369}.
    {try_case,{y,2}}.
    {test,is_eq_exact,
          {f,1370},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,throw}]}.
    {bs_set_position,{y,1},{y,0}}.
    {bs_get_tail,{y,1},{x,0},0}.
    {deallocate,3}.
    return.
  {label,1370}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.


{function, throw_after_byte, 1, 1372}.
  {label,1371}.
    {line,[{location,"bs_match_SUITE.erl",2387}]}.
    {func_info,{atom,bs_match_SUITE},{atom,throw_after_byte},1}.
  {label,1372}.
    {'%',{var_info,{x,0},[{type,{t_bs_context,16}},accepts_match_context]}}.
    {bs_start_match4,{atom,resume},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,1373},{x,0},{commands,[{ensure_at_least,8,1},{skip,8}]}}.
    {move,{atom,away},{x,1}}.
    {move,nil,{x,2}}.
    {move,{atom,throw},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2388}]}.
    {call_ext_only,3,{extfunc,erlang,raise,3}}.
  {label,1373}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,1371}}.


{function, matches_on_parameter, 1, 1375}.
  {label,1374}.
    {line,[{location,"bs_match_SUITE.erl",2390}]}.
    {func_info,{atom,bs_match_SUITE},{atom,matches_on_parameter},1}.
  {label,1375}.
    {test,is_list,{f,1374},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,<<"gurka">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2392}]}.
    {call,1,{f,1380}}. % matches_on_parameter_1/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_bitstring,8,false},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
          {f,1378},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_bitstring,8,false},
                          2 => {t_bitstring,8,false}}}},
           {literal,{<<"urka">>,<<"a">>}}]}.
    {'catch',{y,0},{f,1376}}.
    {move,{integer,0},{x,1}}.
    {move,{literal,<<"10001110101">>},{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",2393}]}.
    {call,2,{f,1384}}. % matches_on_parameter_2/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1376}.
    {catch_end,{y,0}}.
    {test,is_eq_exact,{f,1377},[{x,0},{atom,ok}]}.
    {deallocate,1}.
    return.
  {label,1377}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",2393}]}.
    {badmatch,{x,0}}.
  {label,1378}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",2392}]}.
    {badmatch,{x,0}}.


{function, matches_on_parameter_1, 1, 1380}.
  {label,1379}.
    {line,[{location,"bs_match_SUITE.erl",2395}]}.
    {func_info,{atom,bs_match_SUITE},{atom,matches_on_parameter_1},1}.
  {label,1380}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,1382},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {'=:=',nil,8,103},
                         {get_tail,2,1,{x,2}}]}}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_match,{f,1381},
              {x,0},
              {commands,[{ensure_at_least,32,1},
                         {skip,16},
                         {'=:=',nil,16,29291},
                         {get_tail,3,1,{x,0}}]}}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{x,2},{x,0}]}}.
    return.
  {label,1381}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {line,[{location,"bs_match_SUITE.erl",2397}]}.
    {badmatch,{x,0}}.
  {label,1382}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {line,[{location,"bs_match_SUITE.erl",2396}]}.
    {badmatch,{x,0}}.


{function, matches_on_parameter_2, 2, 1384}.
  {label,1383}.
    {line,[{location,"bs_match_SUITE.erl",2400}]}.
    {func_info,{atom,bs_match_SUITE},{atom,matches_on_parameter_2},2}.
  {label,1384}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{0,'+inf'}}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {test,bs_skip_bits2,
          {f,1386},
          [{x,0},
           {x,1},
           1,
           {field_flags,[{anno,[2401,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_match,{f,1386},{x,0},{commands,[{ensure_at_least,1,1},{skip,1}]}}.
    {line,[{location,"bs_match_SUITE.erl",2402}]}.
    {gc_bif,bit_size,{f,0},3,[{tr,{x,0},{t_bs_context,1}}],{x,3}}.
    {test,is_eq_exact,
          {f,1385},
          [{tr,{x,3},{t_integer,{0,288230376151711743}}},{integer,0}]}.
    {move,{atom,ok},{x,1}}.
    {move,nil,{x,2}}.
    {move,{atom,throw},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2403}]}.
    {call_ext_only,3,{extfunc,erlang,raise,3}}.
  {label,1385}.
    {line,[{location,"bs_match_SUITE.erl",2404}]}.
    {gc_bif,'+',{f,0},3,[{tr,{x,1},{t_integer,{0,'+inf'}}},{integer,1}],{x,1}}.
    {bs_set_position,{x,0},{x,2}}.
    {call_only,2,{f,1384}}. % matches_on_parameter_2/2
  {label,1386}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {line,[{location,"bs_match_SUITE.erl",2401}]}.
    {badmatch,{x,0}}.


{function, big_positions, 1, 1388}.
  {label,1387}.
    {line,[{location,"bs_match_SUITE.erl",2407}]}.
    {func_info,{atom,bs_match_SUITE},{atom,big_positions},1}.
  {label,1388}.
    {test,is_list,{f,1387},[{x,0}]}.
    {line,[{location,"bs_match_SUITE.erl",2411}]}.
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
    {line,[{location,"bs_match_SUITE.erl",2412}]}.
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
    {line,[{location,"bs_match_SUITE.erl",2414}]}.
    {call,1,{f,1394}}. % bp_start_match/1
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
          {f,1392},
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
    {line,[{location,"bs_match_SUITE.erl",2415}]}.
    {call,1,{f,1394}}. % bp_start_match/1
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
          {f,1391},
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
    {line,[{location,"bs_match_SUITE.erl",2416}]}.
    {call,1,{f,1399}}. % bp_getpos/1
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
          {f,1390},
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
    {line,[{location,"bs_match_SUITE.erl",2417}]}.
    {call,1,{f,1399}}. % bp_getpos/1
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
          {f,1389},
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
  {label,1389}.
    {badmatch,{x,0}}.
  {label,1390}.
    {line,[{location,"bs_match_SUITE.erl",2416}]}.
    {badmatch,{x,0}}.
  {label,1391}.
    {line,[{location,"bs_match_SUITE.erl",2415}]}.
    {badmatch,{x,0}}.
  {label,1392}.
    {line,[{location,"bs_match_SUITE.erl",2414}]}.
    {badmatch,{x,0}}.


{function, bp_start_match, 1, 1394}.
  {label,1393}.
    {line,[{location,"bs_match_SUITE.erl",2425}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bp_start_match},1}.
  {label,1394}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {test,bs_skip_bits2,
          {f,1395},
          [{x,0},
           {integer,134217728},
           1,
           {field_flags,[{anno,[2425,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}]}.
    {call_only,1,{f,1394}}. % bp_start_match/1
  {label,1395}.
    {bs_match,{f,1396},
              {x,0},
              {commands,[{ensure_at_least,1,1},
                         {integer,2,{literal,[]},1,1,{x,2}}]}}.
    {test,is_eq_exact,{f,1396},[{tr,{x,2},{t_integer,{0,1}}},{integer,1}]}.
    {bs_match,{f,1396},
              {x,0},
              {commands,[{ensure_exactly,48},
                         {'=:=',nil,31,867875125},
                         {'=:=',nil,9,353},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{atom,a},{x,2}]}}.
    return.
  {label,1396}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_match,{f,1397},
              {x,0},
              {commands,[{ensure_at_least,16,1},
                         {integer,2,{literal,[]},16,1,{x,2}}]}}.
    {test,is_eq_exact,
          {f,1397},
          [{tr,{x,2},{t_integer,{0,65535}}},{integer,26725}]}.
    {bs_match,{f,1397},
              {x,0},
              {commands,[{ensure_exactly,32},
                         {'=:=',nil,24,7105647},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{atom,b},{x,2}]}}.
    return.
  {label,1397}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,1393}}.


{function, bp_getpos, 1, 1399}.
  {label,1398}.
    {line,[{location,"bs_match_SUITE.erl",2432}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bp_getpos},1}.
  {label,1399}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {test,bs_skip_bits2,
          {f,1400},
          [{x,0},
           {integer,134217720},
           1,
           {field_flags,[{anno,[2432,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}]}.
    {call_only,1,{f,1399}}. % bp_getpos/1
  {label,1400}.
    {bs_match,{f,1402},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {bs_get_position,{x,0},{x,3},3}.
    {bs_match,{f,1401},
              {x,0},
              {commands,[{ensure_at_least,1,1},
                         {integer,4,{literal,[]},1,1,{x,4}}]}}.
    {test,is_eq_exact,{f,1401},[{tr,{x,4},{t_integer,{0,1}}},{integer,1}]}.
    {bs_match,{f,1401},
              {x,0},
              {commands,[{ensure_exactly,48},
                         {'=:=',nil,31,867875125},
                         {'=:=',nil,9,353},
                         {integer,4,{literal,[]},8,1,{x,4}}]}}.
    {test,is_eq_exact,
          {f,1401},
          [{tr,{x,4},{t_integer,{0,255}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{atom,a},{x,2}]}}.
    return.
  {label,1401}.
    {bs_set_position,{x,0},{x,3}}.
    {bs_match,{f,1402},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,is_eq_exact,{f,1402},[{tr,{x,3},{t_integer,{0,255}}},{integer,104}]}.
    {bs_match,{f,1402},
              {x,0},
              {commands,[{ensure_exactly,40},
                         {'=:=',nil,31,850802231},
                         {'=:=',nil,1,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,is_eq_exact,
          {f,1402},
          [{tr,{x,3},{t_integer,{0,255}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{atom,b},{x,2}]}}.
    return.
  {label,1402}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {jump,{f,1398}}.


{function, matching_meets_apply, 1, 1404}.
  {label,1403}.
    {line,[{location,"bs_match_SUITE.erl",2436}]}.
    {func_info,{atom,bs_match_SUITE},{atom,matching_meets_apply},1}.
  {label,1404}.
    {allocate,0,0}.
    {move,nil,{x,1}}.
    {move,{literal,<<"/abc">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2437}]}.
    {call,2,{f,1409}}. % do_matching_meets_apply/2
    {test,is_eq_exact,{f,1407},[{x,0},{literal,<<"abc">>}]}.
    {move,{literal,{erlang,-42}},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2438}]}.
    {call,2,{f,1409}}. % do_matching_meets_apply/2
    {test,is_eq_exact,{f,1406},[{x,0},{integer,42}]}.
    {move,{literal,{erlang,-100}},{x,1}}.
    {move,{atom,no_binary},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2439}]}.
    {call,2,{f,1409}}. % do_matching_meets_apply/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,100}}}]}}.
    {test,is_eq_exact,{f,1405},[{tr,{x,0},{t_integer,{0,100}}},{integer,100}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1405}.
    {badmatch,{x,0}}.
  {label,1406}.
    {line,[{location,"bs_match_SUITE.erl",2438}]}.
    {badmatch,{x,0}}.
  {label,1407}.
    {line,[{location,"bs_match_SUITE.erl",2437}]}.
    {badmatch,{x,0}}.


{function, do_matching_meets_apply, 2, 1409}.
  {label,1408}.
    {line,[{location,"bs_match_SUITE.erl",2442}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_matching_meets_apply},2}.
  {label,1409}.
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
    {test,bs_start_match3,{f,1412},2,[{x,0}],{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {bs_match,{f,1410},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,is_eq_exact,{f,1410},[{tr,{x,3},{t_integer,{0,255}}},{integer,47}]}.
    {bs_get_tail,{x,0},{x,0},1}.
    {call_only,1,{f,1771}}. % id/1
  {label,1410}.
    {test,is_tuple,
          {f,1411},
          [{tr,{x,1},
               {t_union,none,nil,none,
                        [{{2,{t_atom,[erlang]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[erlang]},
                                     2 => {t_integer,{-100,-42}}}}}],
                        none}}]}.
    {get_tuple_element,{x,1},1,{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2453}]}.
    {call_ext_only,1,{extfunc,erlang,abs,1}}.
  {label,1411}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {move,nil,{x,1}}.
    {jump,{f,1408}}.
  {label,1412}.
    {test,is_tuple,
          {f,1413},
          [{tr,{x,1},
               {t_union,none,nil,none,
                        [{{2,{t_atom,[erlang]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[erlang]},
                                     2 => {t_integer,{-100,-42}}}}}],
                        none}}]}.
    {get_tuple_element,{x,1},1,{x,0}}.
    {call_ext_only,1,{extfunc,erlang,abs,1}}.
  {label,1413}.
    {move,nil,{x,1}}.
    {move,{atom,no_binary},{x,0}}.
    {jump,{f,1408}}.


{function, exceptions_after_match_failure, 1, 1415}.
  {label,1414}.
    {line,[{location,"bs_match_SUITE.erl",2457}]}.
    {func_info,{atom,bs_match_SUITE},{atom,exceptions_after_match_failure},1}.
  {label,1415}.
    {allocate,1,0}.
    {'catch',{y,0},{f,1416}}.
    {move,{atom,atom},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2458}]}.
    {call,1,{f,1419}}. % do_exceptions_after_match_failure/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1416}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1417},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1417},[{x,1},2,{atom,badarith}]}.
    {move,{literal,<<0,1,103,117,114,107,97>>},{x,0}}.
    {line,[{scope,[1,2]},{location,"bs_match_SUITE.erl",2459}]}.
    {call,1,{f,1419}}. % do_exceptions_after_match_failure/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{float,2.0},{x,0}}.
    {call_last,1,{f,1419},1}. % do_exceptions_after_match_failure/1
  {label,1417}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",2458}]}.
    {badmatch,{x,0}}.


{function, do_exceptions_after_match_failure, 1, 1419}.
  {label,1418}.
    {line,[{location,"bs_match_SUITE.erl",2462}]}.
    {func_info,{atom,bs_match_SUITE},
               {atom,do_exceptions_after_match_failure},
               1}.
  {label,1419}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[atom]},
                                   none,
                                   {t_float,{2.0,2.0}},
                                   none,
                                   {t_bitstring,8,false}}},
                    accepts_match_context]}}.
    {test,bs_start_match3,{f,1421},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {bs_match,{f,1420},
              {x,1},
              {commands,[{ensure_exactly,56},
                         {skip,16},
                         {'=:=',nil,31,867875125},
                         {'=:=',nil,9,353}]}}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1420}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_SUITE.erl",2465}]}.
    {gc_bif,'/',{f,0},1,[{tr,{x,0},{t_bitstring,8,false}},{float,2.0}],{x,0}}.
    return.
  {label,1421}.
    {fconv,{tr,{x,0},
               {t_union,{t_atom,[atom]},none,{t_float,{2.0,2.0}},none,none}},
           {fr,0}}.
    {fmove,{float,2.0},{fr,1}}.
    {bif,fdiv,{f,0},[{fr,0},{fr,1}],{fr,0}}.
    {move,{atom,ok},{x,0}}.
    return.


{function, bad_phi_paths, 1, 1423}.
  {label,1422}.
    {line,[{location,"bs_match_SUITE.erl",2470}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bad_phi_paths},1}.
  {label,1423}.
    {allocate,0,0}.
    {move,{literal,<<"gurka">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2471}]}.
    {call,1,{f,1771}}. % id/1
    {call,1,{f,1426}}. % bad_phi_paths_1/1
    {test,is_eq_exact,{f,1424},[{x,0},{literal,<<"gurka">>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1424}.
    {badmatch,{x,0}}.


{function, bad_phi_paths_1, 1, 1426}.
  {label,1425}.
    {line,[{location,"bs_match_SUITE.erl",2474}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bad_phi_paths_1},1}.
  {label,1426}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1428},1,[{x,0}],{x,1}}.
    {bs_match,{f,1427},
              {x,1},
              {commands,[{ensure_at_least,0,8},{get_tail,2,1,{x,0}}]}}.
    {call_only,1,{f,1771}}. % id/1
  {label,1427}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_SUITE.erl",2475}]}.
    {case_end,{x,0}}.
  {label,1428}.
    {test,is_map,{f,1429},[{x,0}]}.
    {allocate,0,1}.
    {line,[{location,"bs_match_SUITE.erl",2477}]}.
    {call,1,{f,1771}}. % id/1
    {call_last,1,{f,1771},0}. % id/1
  {label,1429}.
    {line,[{location,"bs_match_SUITE.erl",2475}]}.
    {case_end,{x,0}}.


{function, combine_empty_segments, 1, 1431}.
  {label,1430}.
    {line,[{location,"bs_match_SUITE.erl",2481}]}.
    {func_info,{atom,bs_match_SUITE},{atom,combine_empty_segments},1}.
  {label,1431}.
    {allocate,0,0}.
    {move,{literal,<<0,1,2,3>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2482}]}.
    {call,1,{f,1434}}. % combine_empty_segments_1/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,32,false}}]}}.
    {test,is_eq_exact,
          {f,1432},
          [{tr,{x,0},{t_bitstring,32,false}},{literal,<<0,1,2,3>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1432}.
    {badmatch,{x,0}}.


{function, combine_empty_segments_1, 1, 1434}.
  {label,1433}.
    {line,[{location,"bs_match_SUITE.erl",2485}]}.
    {func_info,{atom,bs_match_SUITE},{atom,combine_empty_segments_1},1}.
  {label,1434}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,32,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_tail,{x,0},{x,0},1}.
    return.


{function, hangs_forever, 1, 1436}.
  {label,1435}.
    {line,[{location,"bs_match_SUITE.erl",2492}]}.
    {func_info,{atom,bs_match_SUITE},{atom,hangs_forever},1}.
  {label,1436}.
    {allocate_heap,0,{alloc,[{words,1},{floats,0},{funs,1}]},1}.
    {make_fun3,{f,1864},0,0,{x,0},{list,[{x,0}]}}.
    {'%',{var_info,{x,0},[{fun_type,none}]}}.
    {line,[{location,"bs_match_SUITE.erl",2493}]}.
    {call,1,{f,1771}}. % id/1
    {test,is_function,{f,1437},[{x,0}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1437}.
    {badmatch,{atom,false}}.


{function, hangs_forever_1, 1, 1439}.
  {label,1438}.
    {line,[{location,"bs_match_SUITE.erl",2496}]}.
    {func_info,{atom,bs_match_SUITE},{atom,hangs_forever_1},1}.
  {label,1439}.
    {call_only,1,{f,1439}}. % hangs_forever_1/1


{function, bs_saved_position_units, 1, 1441}.
  {label,1440}.
    {line,[{location,"bs_match_SUITE.erl",2503}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bs_saved_position_units},1}.
  {label,1441}.
    {test,is_list,{f,1440},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<0,1,2,3,4,5,6,7,8,9>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2504}]}.
    {call,1,{f,1771}}. % id/1
    {call,1,{f,1445}}. % bspu_1/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {test,is_eq_exact,
          {f,1443},
          [{tr,{x,0},{t_list,{t_bitstring,8,false},nil}},
           {literal,[<<0,1,2,3,4>>,<<5,6,7,8,9>>]}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2505}]}.
    {call,1,{f,1771}}. % id/1
    {call,1,{f,1445}}. % bspu_1/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {test,is_nil,{f,1442},[{tr,{x,0},{t_list,{t_bitstring,8,false},nil}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1442}.
    {badmatch,{x,0}}.
  {label,1443}.
    {line,[{location,"bs_match_SUITE.erl",2504}]}.
    {badmatch,{x,0}}.


{function, bspu_1, 1, 1445}.
  {label,1444}.
    {line,[{location,"bs_match_SUITE.erl",2509}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bspu_1},1}.
  {label,1445}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1444},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {bs_match,{f,1446},
              {x,1},
              {commands,[{ensure_at_least,0,8},{get_tail,2,8,{x,2}}]}}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,3},3}.
    {test,is_eq_exact,
          {f,1446},
          [{tr,{x,2},{t_bitstring,8,false}},{tr,{x,3},{t_bitstring,8,false}}]}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,1861}}. % '-bspu_1/1-lc$^0/1-0-'/1
  {label,1446}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,1444}}.


{function, empty_matches, 1, 1448}.
  {label,1447}.
    {line,[{location,"bs_match_SUITE.erl",2513}]}.
    {func_info,{atom,bs_match_SUITE},{atom,empty_matches},1}.
  {label,1448}.
    {test,is_list,{f,1447},[{x,0}]}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{literal,<<1,2,3,4:4>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2514}]}.
    {call,1,{f,1465}}. % em_1/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,#{2 => {t_bitstring,4,false}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1463},[{x,1},{literal,<<>>}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_match,{f,1463},
              {x,1},
              {commands,[{ensure_exactly,28},{'=:=',nil,28,1056820}]}}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",2515}]}.
    {call,1,{f,1465}}. % em_1/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,#{2 => {t_bitstring,4,false}}}}]}}.
    {test,is_eq_exact,
          {f,1462},
          [{tr,{x,0},{t_tuple,2,true,#{2 => {t_bitstring,4,false}}}},
           {literal,{<<>>,<<1,2,3>>}}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",2516}]}.
    {call,1,{f,1465}}. % em_1/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,#{2 => {t_bitstring,4,false}}}}]}}.
    {test,is_eq_exact,
          {f,1461},
          [{tr,{x,0},{t_tuple,2,true,#{2 => {t_bitstring,4,false}}}},
           {literal,{<<>>,<<>>}}]}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",2518}]}.
    {call,1,{f,1771}}. % id/1
    {call,1,{f,1469}}. % em_2/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,true}}]}}.
    {test,is_eq_exact,
          {f,1460},
          [{tr,{x,0},{t_bitstring,16,true}},{literal,<<0,1,0,2,0,3>>}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",2519}]}.
    {call,1,{f,1771}}. % id/1
    {call,1,{f,1469}}. % em_2/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,true}}]}}.
    {test,is_eq_exact,
          {f,1459},
          [{tr,{x,0},{t_bitstring,16,true}},{literal,<<>>}]}.
    {move,{literal,<<1,2,3>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",2521}]}.
    {call,1,{f,1771}}. % id/1
    {call,1,{f,1471}}. % em_3/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {test,is_eq_exact,
          {f,1458},
          [{tr,{x,0},{t_bitstring,1,false}},{literal,<<1,2,3>>}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",2522}]}.
    {call,1,{f,1771}}. % id/1
    {call,1,{f,1471}}. % em_3/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,1,false}}]}}.
    {test,is_eq_exact,
          {f,1457},
          [{tr,{x,0},{t_bitstring,1,false}},{literal,<<>>}]}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",2524}]}.
    {call,1,{f,1771}}. % id/1
    {test,bs_start_match3,{f,1456},1,[{x,0}],{x,1}}.
    {bs_match,{f,1456},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",2525}]}.
    {call,1,{f,1771}}. % id/1
    {test,is_eq_exact,{f,1455},[{x,0},{integer,0}]}.
    {move,{literal,<<>>},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",2527}]}.
    {call,2,{f,1476}}. % em_4/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,2},{f,1449}}.
    {move,{literal,<<0:1>>},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",2528}]}.
    {call,2,{f,1476}}. % em_4/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1449}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,1454},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1454},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,1454},[{x,1}]}.
    {'catch',{y,1},{f,1450}}.
    {move,{literal,<<>>},{x,1}}.
    {move,{literal,<<0:1>>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_SUITE.erl",2529}]}.
    {call,2,{f,1476}}. % em_4/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1450}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,1453},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1453},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,1453},[{x,1}]}.
    {'catch',{y,0},{f,1451}}.
    {move,{literal,<<0:1>>},{x,1}}.
    {move,{literal,<<0:1>>},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_SUITE.erl",2530}]}.
    {call,2,{f,1476}}. % em_4/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1451}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1452},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1452},[{x,1},2,{atom,function_clause}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,1452},[{x,1}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,3}.
    return.
  {label,1452}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",2530}]}.
    {badmatch,{x,0}}.
  {label,1453}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",2529}]}.
    {badmatch,{x,0}}.
  {label,1454}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",2528}]}.
    {badmatch,{x,0}}.
  {label,1455}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",2525}]}.
    {badmatch,{x,0}}.
  {label,1456}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",2524}]}.
    {badmatch,{x,0}}.
  {label,1457}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",2522}]}.
    {badmatch,{x,0}}.
  {label,1458}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",2521}]}.
    {badmatch,{x,0}}.
  {label,1459}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",2519}]}.
    {badmatch,{x,0}}.
  {label,1460}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",2518}]}.
    {badmatch,{x,0}}.
  {label,1461}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",2516}]}.
    {badmatch,{x,0}}.
  {label,1462}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",2515}]}.
    {badmatch,{x,0}}.
  {label,1463}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",2514}]}.
    {badmatch,{x,0}}.


{function, em_1, 1, 1465}.
  {label,1464}.
    {line,[{location,"bs_match_SUITE.erl",2534}]}.
    {func_info,{atom,bs_match_SUITE},{atom,em_1},1}.
  {label,1465}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,4,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,1466},
              {x,0},
              {commands,[{ensure_at_least,0,1},
                         {binary,2,{literal,[]},0,8,{x,2}}]}}.
    {allocate,3,3}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,1}}.
    {move,{x,0},{y,2}}.
    {bs_get_tail,{x,0},{y,0},3}.
    {move,{x,2},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2537}]}.
    {call_ext,1,{extfunc,binary,copy,1}}.
    {bs_set_position,{y,2},{y,1}}.
    {bs_get_tail,{y,2},{x,1},1}.
    {test,is_eq_exact,
          {f,1467},
          [{tr,{y,0},{t_bitstring,4,false}},{tr,{x,1},{t_bitstring,4,false}}]}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    {deallocate,3}.
    return.
  {label,1466}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {line,[{location,"bs_match_SUITE.erl",2536}]}.
    {badmatch,{x,0}}.
  {label,1467}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{x,0},{y,0}]}}.
    {line,[{location,"bs_match_SUITE.erl",2535}]}.
    {badmatch,{x,0}}.


{function, em_2, 1, 1469}.
  {label,1468}.
    {line,[{location,"bs_match_SUITE.erl",2542}]}.
    {func_info,{atom,bs_match_SUITE},{atom,em_2},1}.
  {label,1469}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{integer,256},{x,0}}.
    bs_init_writable.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,1857},1}. % '-em_2/1-lbc$^0/2-0-'/2


{function, em_3, 1, 1471}.
  {label,1470}.
    {line,[{location,"bs_match_SUITE.erl",2549}]}.
    {func_info,{atom,bs_match_SUITE},{atom,em_3},1}.
  {label,1471}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1470},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {bs_match,{f,1472},
              {x,1},
              {commands,[{ensure_at_least,0,1},
                         {binary,2,{literal,[]},0,8,{x,0}}]}}.
    {allocate,1,2}.
    {init_yregs,{list,[{y,0}]}}.
    {bs_get_tail,{x,1},{y,0},2}.
    {line,[{location,"bs_match_SUITE.erl",2550}]}.
    {call,1,{f,1474}}. % em_3_1/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1472}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,1470}}.


{function, em_3_1, 1, 1474}.
  {label,1473}.
    {line,[{location,"bs_match_SUITE.erl",2553}]}.
    {func_info,{atom,bs_match_SUITE},{atom,em_3_1},1}.
  {label,1474}.
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    return.


{function, em_4, 2, 1476}.
  {label,1475}.
    {line,[{location,"bs_match_SUITE.erl",2556}]}.
    {func_info,{atom,bs_match_SUITE},{atom,em_4},2}.
  {label,1476}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,1,false}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,1,false}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {bs_match,{f,1477},{x,0},{commands,[{ensure_at_least,0,1},{skip,0}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,1},{x,3}}.
    {bs_match,{f,1477},{x,3},{commands,[{ensure_at_least,0,1},{skip,0}]}}.
    {bs_match,{f,1477},{x,0},{commands,[{ensure_exactly,0}]}}.
    {bs_match,{f,1477},{x,3},{commands,[{ensure_exactly,0}]}}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1477}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_get_tail,{x,0},{x,0},2}.
    {jump,{f,1475}}.


{function, trim_bs_start_match_resume, 1, 1479}.
  {label,1478}.
    {line,[{location,"bs_match_SUITE.erl",2561}]}.
    {func_info,{atom,bs_match_SUITE},{atom,trim_bs_start_match_resume},1}.
  {label,1479}.
    {test,is_list,{f,1478},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2562}]}.
    {call,1,{f,1771}}. % id/1
    {test,bs_start_match3,{f,1481},1,[{x,0}],{x,1}}.
    {bs_match,{f,1481},{x,1},{commands,[{ensure_at_least,0,8}]}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2563}]}.
    {call,1,{f,1483}}. % trim_bs_start_match_resume_1/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,1480},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<>>}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1480}.
    {badmatch,{x,0}}.
  {label,1481}.
    {line,[{location,"bs_match_SUITE.erl",2562}]}.
    {badmatch,{x,0}}.


{function, trim_bs_start_match_resume_1, 1, 1483}.
  {label,1482}.
    {line,[{location,"bs_match_SUITE.erl",2566}]}.
    {func_info,{atom,bs_match_SUITE},{atom,trim_bs_start_match_resume_1},1}.
  {label,1483}.
    {'%',{var_info,{x,0},[{type,{t_bs_context,8}},accepts_match_context]}}.
    {allocate,1,1}.
    {init_yregs,{list,[{y,0}]}}.
    {bs_start_match4,{atom,resume},1,{x,0},{x,0}}.
    {bs_get_tail,{x,0},{y,0},1}.
    {move,{y,0},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2567}]}.
    {call,1,{f,1771}}. % id/1
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, expand_and_squeeze, 1, 1485}.
  {label,1484}.
    {line,[{location,"bs_match_SUITE.erl",2570}]}.
    {func_info,{atom,bs_match_SUITE},{atom,expand_and_squeeze},1}.
  {label,1485}.
    {test,is_list,{f,1484},[{x,0}]}.
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
    {line,[{location,"bs_match_SUITE.erl",2572}]}.
    {call,2,{f,1489}}. % ensure_squeezed/2
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
    {line,[{location,"bs_match_SUITE.erl",2576}]}.
    {call,2,{f,1489}}. % ensure_squeezed/2
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
    {line,[{location,"bs_match_SUITE.erl",2580}]}.
    {call,2,{f,1489}}. % ensure_squeezed/2
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
    {line,[{location,"bs_match_SUITE.erl",2584}]}.
    {call,2,{f,1489}}. % ensure_squeezed/2
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
    {line,[{location,"bs_match_SUITE.erl",2589}]}.
    {call,2,{f,1489}}. % ensure_squeezed/2
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
    {line,[{location,"bs_match_SUITE.erl",2594}]}.
    {call,2,{f,1489}}. % ensure_squeezed/2
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
    {line,[{location,"bs_match_SUITE.erl",2602}]}.
    {call,1,{f,1492}}. % binary_match_to_asm/1
    {test,is_nonempty_list,{f,1487},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_tagged_tuple,{f,1487},[{x,1},4,{atom,bs_match}]}.
    {get_tuple_element,{x,1},1,{x,3}}.
    {test,is_tagged_tuple,{f,1487},[{x,3},2,{atom,f}]}.
    {get_tuple_element,{x,1},3,{x,1}}.
    {test,is_tagged_tuple,{f,1487},[{x,1},2,{atom,commands}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,1487},[{x,1}]}.
    {get_list,{x,1},{x,3},{x,1}}.
    {test,is_tagged_tuple,{f,1487},[{x,3},3,{atom,ensure_at_least}]}.
    {get_tuple_element,{x,3},2,{x,4}}.
    {test,is_eq_exact,{f,1487},[{x,4},{integer,1}]}.
    {test,is_nonempty_list,{f,1487},[{x,1}]}.
    {get_list,{x,1},{x,4},{x,1}}.
    {test,is_tagged_tuple,{f,1487},[{x,4},6,{atom,integer}]}.
    {get_tuple_element,{x,4},4,{x,5}}.
    {test,is_eq_exact,{f,1487},[{x,5},{integer,1}]}.
    {test,is_nil,{f,1487},[{x,1}]}.
    {get_tuple_element,{x,4},3,{x,1}}.
    {get_tuple_element,{x,3},1,{x,3}}.
    {test,is_eq_exact,{f,1487},[{x,1},{x,3}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},3}.
    {make_fun3,{f,1854},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[false,true]}}]}}.
    {move,{x,2},{x,1}}.
    {line,[{location,"bs_match_SUITE.erl",2613}]}.
    {call_ext,2,{extfunc,lists,any,2}}.
    {test,is_eq_exact,{f,1486},[{x,0},{atom,true}]}.
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
    {line,[{location,"bs_match_SUITE.erl",2616}]}.
    {call,2,{f,1489}}. % ensure_squeezed/2
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
    {line,[{location,"bs_match_SUITE.erl",2620}]}.
    {call,2,{f,1489}}. % ensure_squeezed/2
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
    {line,[{location,"bs_match_SUITE.erl",2625}]}.
    {call,2,{f,1489}}. % ensure_squeezed/2
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
    {line,[{location,"bs_match_SUITE.erl",2630}]}.
    {call,2,{f,1489}}. % ensure_squeezed/2
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
    {line,[{location,"bs_match_SUITE.erl",2635}]}.
    {call,2,{f,1489}}. % ensure_squeezed/2
    {'%',{var_info,{x,0},[{type,{t_cons,any,any}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1486}.
    {line,[{location,"bs_match_SUITE.erl",2613}]}.
    {badmatch,{atom,false}}.
  {label,1487}.
    {line,[{location,"bs_match_SUITE.erl",2599}]}.
    {badmatch,{x,0}}.


{function, ensure_squeezed, 2, 1489}.
  {label,1488}.
    {line,[{location,"bs_match_SUITE.erl",2654}]}.
    {func_info,{atom,bs_match_SUITE},{atom,ensure_squeezed},2}.
  {label,1489}.
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
    {line,[{location,"bs_match_SUITE.erl",2658}]}.
    {call,1,{f,1492}}. % binary_match_to_asm/1
    {test,is_nonempty_list,{f,1490},[{x,0}]}.
    {get_hd,{x,0},{x,1}}.
    {test,is_tagged_tuple,{f,1490},[{x,1},4,{atom,bs_match}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_tagged_tuple,{f,1490},[{x,2},2,{atom,f}]}.
    {get_tuple_element,{x,1},3,{x,1}}.
    {test,is_tagged_tuple,{f,1490},[{x,1},2,{atom,commands}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,1490},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_tagged_tuple,{f,1490},[{x,2},3,{atom,ensure_at_least}]}.
    {get_tuple_element,{x,2},2,{x,3}}.
    {test,is_eq_exact,{f,1490},[{x,3},{integer,1}]}.
    {test,is_nonempty_list,{f,1490},[{x,1}]}.
    {get_list,{x,1},{x,3},{x,1}}.
    {test,is_tagged_tuple,{f,1490},[{x,3},6,{atom,integer}]}.
    {get_tuple_element,{x,3},4,{x,4}}.
    {test,is_eq_exact,{f,1490},[{x,4},{integer,1}]}.
    {test,is_nil,{f,1490},[{x,1}]}.
    {get_tuple_element,{x,2},1,{x,1}}.
    {test,is_eq_exact,{f,1490},[{x,1},{tr,{y,0},{t_integer,{8,64}}}]}.
    {get_tuple_element,{x,3},3,{x,1}}.
    {test,is_eq_exact,{f,1490},[{x,1},{tr,{y,0},{t_integer,{8,64}}}]}.
    {deallocate,1}.
    return.
  {label,1490}.
    {line,[{location,"bs_match_SUITE.erl",2655}]}.
    {badmatch,{x,0}}.


{function, binary_match_to_asm, 1, 1492}.
  {label,1491}.
    {line,[{location,"bs_match_SUITE.erl",2660}]}.
    {func_info,{atom,bs_match_SUITE},{atom,binary_match_to_asm},1}.
  {label,1492}.
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
    {line,[{location,"bs_match_SUITE.erl",2665}]}.
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
    {call,1,{f,1851}}. % '-binary_match_to_asm/1-lc$^0/1-0-'/1
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
    {line,[{location,"bs_match_SUITE.erl",2669}]}.
    {call_ext,1,{extfunc,erl_anno,new,1}}.
    {move,{x,0},{y,1}}.
    {move,{integer,2},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2670}]}.
    {call_ext,1,{extfunc,erl_anno,new,1}}.
    {move,{x,0},{y,0}}.
    {move,{integer,3},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2671}]}.
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
    {line,[{location,"bs_match_SUITE.erl",2675}]}.
    {call_ext,2,{extfunc,compile,forms,2}}.
    {test,is_tagged_tuple,{f,1495},[{x,0},4,{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,1495},[{x,1},{atom,match_to_asm}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_tagged_tuple,{f,1495},[{x,1},5,{atom,match_to_asm}]}.
    {get_tuple_element,{x,1},3,{x,0}}.
    {test,is_nonempty_list,{f,1494},[{x,0}]}.
    {get_hd,{x,0},{x,1}}.
    {test,is_tagged_tuple,{f,1494},[{x,1},5,{atom,function}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,1494},[{x,2},{atom,example}]}.
    {get_tuple_element,{x,1},2,{x,2}}.
    {test,is_eq_exact,{f,1494},[{x,2},{integer,1}]}.
    {get_tuple_element,{x,1},3,{x,2}}.
    {test,is_eq_exact,{f,1494},[{x,2},{integer,2}]}.
    {get_tuple_element,{x,1},4,{x,0}}.
    {test,is_nonempty_list,{f,1493},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_tagged_tuple,{f,1493},[{x,1},2,{atom,label}]}.
    {test,is_nonempty_list,{f,1493},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tagged_tuple,{f,1493},[{x,1},2,{atom,line}]}.
    {test,is_nonempty_list,{f,1493},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tagged_tuple,{f,1493},[{x,1},4,{atom,func_info}]}.
    {test,is_nonempty_list,{f,1493},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tagged_tuple,{f,1493},[{x,1},2,{atom,label}]}.
    {test,is_nonempty_list,{f,1493},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tagged_tuple,{f,1493},[{x,1},2,{atom,'%'}]}.
    {test,is_nonempty_list,{f,1493},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tagged_tuple,{f,1493},[{x,1},6,{atom,test}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,{f,1493},[{x,1},{atom,bs_start_match3}]}.
    {test,is_nonempty_list,{f,1493},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tagged_tuple,{f,1493},[{x,1},4,{atom,bs_get_position}]}.
    {move,{x,2},{x,0}}.
    {deallocate,0}.
    return.
  {label,1493}.
    {line,[{location,"bs_match_SUITE.erl",2678}]}.
    {badmatch,{x,0}}.
  {label,1494}.
    {line,[{location,"bs_match_SUITE.erl",2677}]}.
    {badmatch,{x,0}}.
  {label,1495}.
    {line,[{location,"bs_match_SUITE.erl",2674}]}.
    {badmatch,{x,0}}.


{function, many_clauses, 1, 1497}.
  {label,1496}.
    {line,[{location,"bs_match_SUITE.erl",2682}]}.
    {func_info,{atom,bs_match_SUITE},{atom,many_clauses},1}.
  {label,1497}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{integer,200},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2685}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_match_SUITE.erl",2686}]}.
    {call,1,{f,1847}}. % '-many_clauses/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {move,{x,0},{y,0}}.
    {move,{atom,bs_match_SUITE_many_clauses},{x,0}}.
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
    {line,[{location,"bs_match_SUITE.erl",2687}]}.
    {call_ext,1,{extfunc,merl,tree,1}}.
    {move,{x,0},{y,0}}.
    {move,{atom,bs_match_SUITE},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2694}]}.
    {call_ext,1,{extfunc,test_lib,opt_opts,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,1}.
    {line,[{location,"bs_match_SUITE.erl",2695}]}.
    {call_ext,2,{extfunc,merl,compile_and_load,2}}.
    {test,is_tagged_tuple,{f,1498},[{x,0},2,{atom,ok}]}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"bs_match_SUITE.erl",2702}]}.
    {call,1,{f,1841}}. % '-many_clauses/1-lc$^1/1-1-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1498}.
    {line,[{location,"bs_match_SUITE.erl",2695}]}.
    {badmatch,{x,0}}.


{function, one_clause, 1, 1500}.
  {label,1499}.
    {line,[{location,"bs_match_SUITE.erl",2705}]}.
    {func_info,{atom,bs_match_SUITE},{atom,one_clause},1}.
  {label,1500}.
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
    {line,[{location,"bs_match_SUITE.erl",2706}]}.
    {call_ext_last,1,{extfunc,merl,tree,1},1}.


{function, gh_6410, 1, 1502}.
  {label,1501}.
    {line,[{location,"bs_match_SUITE.erl",2709}]}.
    {func_info,{atom,bs_match_SUITE},{atom,gh_6410},1}.
  {label,1502}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2710}]}.
    {call,1,{f,1510}}. % do_gh_6410/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,0}}}]}}.
    {'catch',{y,2},{f,1503}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2711}]}.
    {call,1,{f,1510}}. % do_gh_6410/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,0}}}]}}.
  {label,1503}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,1508},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1508},[{x,1}]}.
    {test,test_arity,{f,1508},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,1508},[{x,2},{literal,{case_clause,<<>>}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,1508},[{x,1}]}.
    {'catch',{y,1},{f,1504}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",2712}]}.
    {call,1,{f,1510}}. % do_gh_6410/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1504}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,1507},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1507},[{x,1}]}.
    {test,test_arity,{f,1507},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,1507},[{x,2},{literal,{case_clause,a}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,1507},[{x,1}]}.
    {'catch',{y,0},{f,1505}}.
    {move,nil,{x,0}}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",2713}]}.
    {call,1,{f,1510}}. % do_gh_6410/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1505}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1506},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1506},[{x,1},2,{atom,badarith}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,1506},[{x,1}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,3}.
    return.
  {label,1506}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",2713}]}.
    {badmatch,{x,0}}.
  {label,1507}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",2712}]}.
    {badmatch,{x,0}}.
  {label,1508}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",2711}]}.
    {badmatch,{x,0}}.


{function, do_gh_6410, 1, 1510}.
  {label,1509}.
    {line,[{location,"bs_match_SUITE.erl",2717}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_gh_6410},1}.
  {label,1510}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[a]},
                                   nil,none,none,
                                   {t_bitstring,8,false}}},
                    accepts_match_context]}}.
    {test,bs_start_match3,{f,1513},1,[{x,0}],{x,1}}.
    {bs_match,{f,1511},{x,1},{commands,[{ensure_exactly,8}]}}.
    {move,{integer,0},{x,0}}.
    return.
  {label,1511}.
    {bs_match,{f,1512},
              {x,1},
              {commands,[{ensure_exactly,8},{get_tail,2,1,{x,0}}]}}.
    {line,[{location,"bs_match_SUITE.erl",2720}]}.
    {gc_bif,'+',{f,0},1,[{tr,{x,0},{t_bitstring,8,false}}],{x,0}}.
    return.
  {label,1512}.
    {bs_get_tail,{x,1},{x,0},2}.
    {case_end,{x,0}}.
  {label,1513}.
    {test,is_nil,
          {f,1514},
          [{tr,{x,0},{t_union,{t_atom,[a]},nil,none,none,none}}]}.
    {gc_bif,'+',{f,0},0,[nil],{x,0}}.
    return.
  {label,1514}.
    {case_end,{atom,a}}.


{function, bs_match, 1, 1516}.
  {label,1515}.
    {line,[{location,"bs_match_SUITE.erl",2727}]}.
    {func_info,{atom,bs_match_SUITE},{atom,bs_match},1}.
  {label,1516}.
    {allocate,4,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3}]}}.
    {move,{literal,<<1,0>>},{x,1}}.
    {move,{atom,whatever},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2728}]}.
    {call,2,{f,1533}}. % do_bs_match_1/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {test,is_eq_exact,
          {f,1531},
          [{tr,{x,0},{t_bitstring,16,false}},{literal,<<1,0>>}]}.
    {move,{literal,<<1,1>>},{x,1}}.
    {move,{atom,whatever},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_SUITE.erl",2729}]}.
    {call,2,{f,1533}}. % do_bs_match_1/2
    {'%',{var_info,{x,0},[{type,{t_bitstring,16,false}}]}}.
    {test,is_eq_exact,
          {f,1530},
          [{tr,{x,0},{t_bitstring,16,false}},{literal,<<1,1>>}]}.
    {move,{literal,{a,b,c}},{x,1}}.
    {move,{atom,whatever},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_SUITE.erl",2730}]}.
    {call,2,{f,1533}}. % do_bs_match_1/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_atom,[a]},
                                     2 => {t_atom,[b]},
                                     3 => {t_atom,[c]}}}}]}}.
    {'catch',{y,3},{f,1517}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,"\b"},{location,"bs_match_SUITE.erl",2732}]}.
    {call,1,{f,1537}}. % do_bs_match_gh_6551a/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
  {label,1517}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,1529},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1529},[{x,1},2,{atom,badarg}]}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_SUITE.erl",2733}]}.
    {call,1,{f,1537}}. % do_bs_match_gh_6551a/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,1518},[{x,0},{atom,true}]}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",2733}]}.
    {badmatch,{atom,true}}.
  {label,1518}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",2735}]}.
    {call,1,{f,1541}}. % do_bs_match_gh_6551b/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,0}},
                                     2 => {t_integer,{0,0}}}}}]}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",2736}]}.
    {call,1,{f,1541}}. % do_bs_match_gh_6551b/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_bitstring,8,false},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
          {f,1528},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_bitstring,8,false},
                          2 => {t_bitstring,8,false}}}},
           {literal,{<<"*">>,<<"*">>}}]}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",2738}]}.
    {call,1,{f,1545}}. % do_bs_match_gh_6613/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[ok]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,1527},
          [{tr,{x,0},
               {t_union,{t_atom,[ok]},none,none,none,{t_bitstring,8,false}}},
           {atom,ok}]}.
    {move,{literal,<<0,0>>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",2739}]}.
    {call,1,{f,1545}}. % do_bs_match_gh_6613/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[ok]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,1526},
          [{tr,{x,0},
               {t_union,{t_atom,[ok]},none,none,none,{t_bitstring,8,false}}},
           {literal,<<0,0>>}]}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",2741}]}.
    {call,1,{f,1771}}. % id/1
    {call,1,{f,1553}}. % do_bs_match_gh_6660/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
    {test,is_eq_exact,
          {f,1525},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<"abc">>}]}.
    {'catch',{y,2},{f,1519}}.
    {move,{atom,abc},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",2742}]}.
    {call,1,{f,1771}}. % id/1
    {call,1,{f,1553}}. % do_bs_match_gh_6660/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,8,false}}]}}.
  {label,1519}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,1524},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1524},[{x,1}]}.
    {test,test_arity,{f,1524},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1524},[{x,1},{literal,{try_clause,abc}}]}.
    {'catch',{y,1},{f,1520}}.
    {move,{literal,<<"1000">>},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",2744}]}.
    {call,1,{f,1771}}. % id/1
    {call,1,{f,1557}}. % do_bs_match_gh_6755/1
    {'%',{var_info,{x,0},[{type,{t_atom,[b]}}]}}.
  {label,1520}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,1523},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1523},[{x,1}]}.
    {test,test_arity,{f,1523},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,1523},[{x,1},2,{atom,case_clause}]}.
    {'catch',{y,0},{f,1521}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_SUITE.erl",2746}]}.
    {call,1,{f,1565}}. % do_bs_match_gh_7467/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1521}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1522},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1522},[{x,1}]}.
    {test,test_arity,{f,1522},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1522},[{x,1},{literal,{badmatch,<<>>}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,4}.
    return.
  {label,1522}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",2746}]}.
    {badmatch,{x,0}}.
  {label,1523}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",2744}]}.
    {badmatch,{x,0}}.
  {label,1524}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",2742}]}.
    {badmatch,{x,0}}.
  {label,1525}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",2741}]}.
    {badmatch,{x,0}}.
  {label,1526}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",2739}]}.
    {badmatch,{x,0}}.
  {label,1527}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",2738}]}.
    {badmatch,{x,0}}.
  {label,1528}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",2736}]}.
    {badmatch,{x,0}}.
  {label,1529}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",2732}]}.
    {badmatch,{x,0}}.
  {label,1530}.
    {line,[{scope,"\b"},{location,"bs_match_SUITE.erl",2729}]}.
    {badmatch,{x,0}}.
  {label,1531}.
    {line,[{scope,"\b"},{location,"bs_match_SUITE.erl",2728}]}.
    {badmatch,{x,0}}.


{function, do_bs_match_1, 2, 1533}.
  {label,1532}.
    {line,[{location,"bs_match_SUITE.erl",2750}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_bs_match_1},2}.
  {label,1533}.
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
    {test,bs_start_match3,{f,1535},2,[{x,1}],{x,0}}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {bs_get_position,{x,0},{y,0},1}.
    {bs_match,{f,1534},
              {y,1},
              {commands,[{ensure_at_least,16,1},{skip,8},{'=:=',nil,8,0}]}}.
    {bs_match,{f,1534},{x,0},{commands,[{ensure_exactly,0}]}}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2753}]}.
    {call,1,{f,1771}}. % id/1
  {label,1534}.
    {bs_set_position,{y,1},{y,0}}.
    {bs_get_tail,{y,1},{x,0},0}.
    {deallocate,2}.
    return.
  {label,1535}.
    {move,{x,1},{x,0}}.
    return.


{function, do_bs_match_gh_6551a, 1, 1537}.
  {label,1536}.
    {line,[{location,"bs_match_SUITE.erl",2759}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_bs_match_gh_6551a},1}.
  {label,1537}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_match,{f,1538},{x,0},{commands,[{ensure_exactly,0}]}}.
    {move,nil,{x,1}}.
    {move,{atom,true},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2762}]}.
    {call_ext_only,2,{extfunc,erlang,'--',2}}.
  {label,1538}.
    {bs_match,{f,1539},
              {x,0},
              {commands,[{ensure_exactly,8},
                         {get_tail,1,1,{x,1}},
                         {get_tail,2,1,{x,0}}]}}.
    {bif,'=/=',
         {f,0},
         [{tr,{x,1},{t_bitstring,8,false}},{tr,{x,0},{t_bitstring,8,false}}],
         {x,0}}.
    return.
  {label,1539}.
    {bs_get_tail,{x,0},{x,0},1}.
    {line,[{location,"bs_match_SUITE.erl",2760}]}.
    {case_end,{x,0}}.


{function, do_bs_match_gh_6551b, 1, 1541}.
  {label,1540}.
    {line,[{location,"bs_match_SUITE.erl",2768}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_bs_match_gh_6551b},1}.
  {label,1541}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,none,
                                   {t_integer,{0,0}},
                                   none,
                                   {t_bitstring,8,false}}},
                    accepts_match_context]}}.
    {test,bs_start_match3,{f,1543},1,[{x,0}],{x,0}}.
    {bs_match,{f,1542},
              {x,0},
              {commands,[{ensure_exactly,8},
                         {get_tail,1,1,{x,1}},
                         {get_tail,2,1,{x,0}}]}}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    return.
  {label,1542}.
    {bs_get_tail,{x,0},{x,0},1}.
    {line,[{location,"bs_match_SUITE.erl",2770}]}.
    {case_end,{x,0}}.
  {label,1543}.
    {move,{literal,{0,0}},{x,0}}.
    return.


{function, do_bs_match_gh_6613, 1, 1545}.
  {label,1544}.
    {line,[{location,"bs_match_SUITE.erl",2777}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_bs_match_gh_6613},1}.
  {label,1545}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,1546},{x,0},{commands,[{ensure_exactly,8}]}}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1546}.
    {allocate,4,2}.
    {init_yregs,{list,[{y,2},{y,3}]}}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {bs_get_tail,{x,0},{x,0},1}.
    {'try',{y,3},{f,1548}}.
    {'try',{y,2},{f,1547}}.
    {bs_match,{f,1551},
              {y,1},
              {commands,[{ensure_exactly,16},
                         {integer,1,{literal,[]},8,1,{x,1}},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,is_eq_exact,
          {f,1551},
          [{tr,{x,2},{t_integer,{0,255}}},{tr,{x,1},{t_integer,{0,255}}}]}.
    {try_end,{y,2}}.
    {try_end,{y,3}}.
    {jump,{f,1549}}.
  {label,1547}.
    {try_case,{y,2}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.
  {label,1548}.
    {try_case,{y,3}}.
    {test,is_eq_exact,
          {f,1550},
          [{tr,{x,0},{t_atom,[error,exit,throw]}},{atom,throw}]}.
  {label,1549}.
    {bs_set_position,{y,1},{y,0}}.
    {bs_get_tail,{y,1},{x,0},0}.
    {deallocate,4}.
    return.
  {label,1550}.
    {bif,raise,{f,0},[{x,2},{x,1}],{x,0}}.
  {label,1551}.
    {line,[{scope,[5]},{location,"bs_match_SUITE.erl",2781}]}.
    {try_case_end,{x,0}}.


{function, do_bs_match_gh_6660, 1, 1553}.
  {label,1552}.
    {line,[{location,"bs_match_SUITE.erl",2795}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_bs_match_gh_6660},1}.
  {label,1553}.
    {allocate,1,1}.
    {'try',{y,0},{f,1554}}.
    {test,bs_start_match3,{f,1555},1,[{x,0}],{x,1}}.
    {bs_match,{f,1555},
              {x,1},
              {commands,[{ensure_at_least,0,8},{get_tail,2,8,{x,0}}]}}.
    {try_end,{y,0}}.
    {deallocate,1}.
    return.
  {label,1554}.
    {try_case,{y,0}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.
  {label,1555}.
    {line,[{scope,[3]},{location,"bs_match_SUITE.erl",2796}]}.
    {try_case_end,{x,0}}.


{function, do_bs_match_gh_6755, 1, 1557}.
  {label,1556}.
    {line,[{location,"bs_match_SUITE.erl",2807}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_bs_match_gh_6755},1}.
  {label,1557}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1563},1,[{x,0}],{x,1}}.
    {allocate,2,2}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,1},{y,1}}.
    {bs_get_position,{x,1},{y,0},2}.
    {bs_match,{f,1561},
              {y,1},
              {commands,[{ensure_at_least,32,1},
                         {'=:=',nil,16,12592},
                         {integer,2,{literal,[]},16,1,{x,0}}]}}.
    {select_val,{tr,{x,0},{t_integer,{0,65535}}},
                {f,1561},
                {list,[{integer,12336},{f,1559},{integer,12337},{f,1558}]}}.
  {label,1558}.
    {bs_match,{f,1561},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{atom,test2},{x,0}}.
    {jump,{f,1560}}.
  {label,1559}.
    {bs_match,{f,1561},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{atom,test},{x,0}}.
  {label,1560}.
    {line,[{location,"bs_match_SUITE.erl",2813}]}.
    {call_ext,1,{extfunc,erlang,atom_to_list,1}}.
    {bs_set_position,{y,1},{y,0}}.
    {bs_get_tail,{y,1},{x,0},0}.
    {test,is_eq_exact,
          {f,1562},
          [{tr,{x,0},{t_bitstring,1,false}},{literal,<<"b">>}]}.
    {move,{atom,b},{x,0}}.
    {deallocate,2}.
    return.
  {label,1561}.
    {bs_set_position,{x,1},{y,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_SUITE.erl",2808}]}.
    {case_end,{x,0}}.
  {label,1562}.
    {line,[{location,"bs_match_SUITE.erl",2815}]}.
    {case_end,{x,0}}.
  {label,1563}.
    {line,[{location,"bs_match_SUITE.erl",2808}]}.
    {case_end,{x,0}}.


{function, do_bs_match_gh_7467, 1, 1565}.
  {label,1564}.
    {line,[{location,"bs_match_SUITE.erl",2819}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_bs_match_gh_7467},1}.
  {label,1565}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,256}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_match,{f,1566},{x,0},{commands,[{ensure_exactly,1}]}}.
    {call_only,1,{f,1565}}. % do_bs_match_gh_7467/1
  {label,1566}.
    {bs_get_tail,{x,0},{x,0},1}.
    {line,[{location,"bs_match_SUITE.erl",2820}]}.
    {badmatch,{x,0}}.


{function, binary_aliases, 1, 1568}.
  {label,1567}.
    {line,[{location,"bs_match_SUITE.erl",2825}]}.
    {func_info,{atom,bs_match_SUITE},{atom,binary_aliases},1}.
  {label,1568}.
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
    {line,[{location,"bs_match_SUITE.erl",2827}]}.
    {call,1,{f,1771}}. % id/1
    {call,1,{f,1838}}. % '-binary_aliases/1-fun-0-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,255}}}}}]}}.
    {test,is_eq_exact,
          {f,1663},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,255}},2 => {t_integer,{0,255}}}}},
           {literal,{42,42}}]}.
    {move,{literal,<<"c">>},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_SUITE.erl",2828}]}.
    {call,1,{f,1771}}. % id/1
    {call,1,{f,1838}}. % '-binary_aliases/1-fun-0-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,255}}}}}]}}.
    {test,is_eq_exact,
          {f,1662},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,255}},2 => {t_integer,{0,255}}}}},
           {literal,{99,99}}]}.
    {move,{literal,{ba_foo,<<"ÿ">>,undefined,undefined}},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_SUITE.erl",2831}]}.
    {call,1,{f,1771}}. % id/1
    {call,1,{f,1836}}. % '-binary_aliases/1-fun-1-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,255}}}}}]}}.
    {test,is_eq_exact,
          {f,1661},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,255}},2 => {t_integer,{0,255}}}}},
           {literal,{255,255}}]}.
    {move,{literal,{ba_foo,<<"k">>,undefined,undefined}},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_SUITE.erl",2832}]}.
    {call,1,{f,1771}}. % id/1
    {call,1,{f,1836}}. % '-binary_aliases/1-fun-1-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,255}}}}}]}}.
    {test,is_eq_exact,
          {f,1660},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,255}},2 => {t_integer,{0,255}}}}},
           {literal,{107,107}}]}.
    {move,{literal,{ba_foo,<<"ÿ">>,undefined,undefined}},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_SUITE.erl",2835}]}.
    {call,1,{f,1771}}. % id/1
    {call,1,{f,1834}}. % '-binary_aliases/1-fun-2-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,15}},
                                     3 => {t_integer,{0,15}}}}}]}}.
    {test,is_eq_exact,
          {f,1659},
          [{tr,{x,0},
               {t_tuple,3,true,
                        #{1 => {t_integer,{0,255}},
                          2 => {t_integer,{0,15}},
                          3 => {t_integer,{0,15}}}}},
           {literal,{255,15,15}}]}.
    {move,{literal,{ba_foo,<<"\\">>,undefined,undefined}},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_SUITE.erl",2836}]}.
    {call,1,{f,1771}}. % id/1
    {call,1,{f,1834}}. % '-binary_aliases/1-fun-2-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,15}},
                                     3 => {t_integer,{0,15}}}}}]}}.
    {test,is_eq_exact,
          {f,1658},
          [{tr,{x,0},
               {t_tuple,3,true,
                        #{1 => {t_integer,{0,255}},
                          2 => {t_integer,{0,15}},
                          3 => {t_integer,{0,15}}}}},
           {literal,{92,5,12}}]}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_SUITE.erl",2843}]}.
    {call,1,{f,1771}}. % id/1
    {call,1,{f,1832}}. % '-binary_aliases/1-fun-3-'/1
    {test,is_eq_exact,{f,1657},[{x,0},{integer,6}]}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_SUITE.erl",2849}]}.
    {call,1,{f,1771}}. % id/1
    {call,1,{f,1828}}. % '-binary_aliases/1-fun-4-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,255}},
                                     3 => {t_bitstring,1,false}}}}]}}.
    {test,is_eq_exact,
          {f,1656},
          [{tr,{x,0},
               {t_tuple,3,true,
                        #{1 => {t_integer,{0,255}},
                          2 => {t_integer,{0,255}},
                          3 => {t_bitstring,1,false}}}},
           {literal,{42,42,<<"*">>}}]}.
    {move,{integer,12},{x,1}}.
    {move,{integer,7},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_SUITE.erl",2855}]}.
    {call,2,{f,1825}}. % '-binary_aliases/1-fun-5-'/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,1655},[{tr,{x,0},{t_integer,{0,255}}},{integer,124}]}.
    {move,{integer,13},{x,1}}.
    {move,{integer,14},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_SUITE.erl",2856}]}.
    {call,2,{f,1825}}. % '-binary_aliases/1-fun-5-'/2
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,1654},[{tr,{x,0},{t_integer,{0,255}}},{integer,237}]}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_SUITE.erl",2862}]}.
    {call,1,{f,1771}}. % id/1
    {call,1,{f,1821}}. % '-binary_aliases/1-fun-6-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,{0,15}},
                                     2 => {t_integer,{0,15}},
                                     3 => {t_bitstring,1,false}}}}]}}.
    {test,is_eq_exact,
          {f,1653},
          [{tr,{x,0},
               {t_tuple,3,true,
                        #{1 => {t_integer,{0,15}},
                          2 => {t_integer,{0,15}},
                          3 => {t_bitstring,1,false}}}},
           {literal,{0,0,<<0>>}}]}.
    {'catch',{y,25},{f,1569}}.
    {move,{literal,<<1>>},{x,0}}.
    {line,[{scope,"4"},{location,"bs_match_SUITE.erl",2863}]}.
    {call,1,{f,1821}}. % '-binary_aliases/1-fun-6-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,{0,15}},
                                     2 => {t_integer,{0,15}},
                                     3 => {t_bitstring,1,false}}}}]}}.
  {label,1569}.
    {catch_end,{y,25}}.
    {test,is_tagged_tuple,{f,1652},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1652},[{x,1}]}.
    {test,test_arity,{f,1652},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1652},[{x,1},{literal,{badmatch,<<1>>}}]}.
    {move,{literal,<<"ý">>},{x,0}}.
    {line,[{scope,"2"},{location,"bs_match_SUITE.erl",2869}]}.
    {call,1,{f,1771}}. % id/1
    {call,1,{f,1817}}. % '-binary_aliases/1-fun-7-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,4,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,255}},
                                     3 => {t_bitstring,1,false},
                                     4 => {t_bitstring,1,false}}}}]}}.
    {test,is_eq_exact,
          {f,1651},
          [{tr,{x,0},
               {t_tuple,4,true,
                        #{1 => {t_integer,{0,255}},
                          2 => {t_integer,{0,255}},
                          3 => {t_bitstring,1,false},
                          4 => {t_bitstring,1,false}}}},
           {literal,{253,253,<<"ý">>,<<"ý">>}}]}.
    {move,{literal,<<"É">>},{x,0}}.
    {line,[{scope,"2"},{location,"bs_match_SUITE.erl",2875}]}.
    {call,1,{f,1771}}. % id/1
    {call,1,{f,1813}}. % '-binary_aliases/1-fun-8-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,6,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,255}},
                                     3 => {t_bitstring,1,false},
                                     4 => {t_bitstring,1,false},
                                     5 => {t_bitstring,1,false},
                                     6 => {t_bitstring,1,false}}}}]}}.
    {test,is_eq_exact,
          {f,1650},
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
    {line,[{scope,"2"},{location,"bs_match_SUITE.erl",2880}]}.
    {call,1,{f,1771}}. % id/1
    {call,1,{f,1810}}. % '-binary_aliases/1-fun-9-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
    {test,is_eq_exact,
          {f,1649},
          [{tr,{x,0},{t_bitstring,256,true}},{literal,<<>>}]}.
    {'catch',{y,24},{f,1570}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,"2"},{location,"bs_match_SUITE.erl",2881}]}.
    {call,1,{f,1771}}. % id/1
    {call,1,{f,1810}}. % '-binary_aliases/1-fun-9-'/1
    {'%',{var_info,{x,0},[{type,{t_bitstring,256,true}}]}}.
  {label,1570}.
    {catch_end,{y,24}}.
    {test,is_tagged_tuple,{f,1648},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1648},[{x,1}]}.
    {test,test_arity,{f,1648},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1648},[{x,1},{literal,{badmatch,42}}]}.
    {move,{literal,<<0,0,0,0>>},{x,0}}.
    {line,[{scope,"0"},{location,"bs_match_SUITE.erl",2887}]}.
    {call,1,{f,1771}}. % id/1
    {call,1,{f,1806}}. % '-binary_aliases/1-fun-10-'/1
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
          {f,1647},
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
    {line,[{scope,"0"},{location,"bs_match_SUITE.erl",2889}]}.
    {call,1,{f,1771}}. % id/1
    {call,1,{f,1806}}. % '-binary_aliases/1-fun-10-'/1
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
          {f,1646},
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
    {line,[{scope,"0"},{location,"bs_match_SUITE.erl",2892}]}.
    {call,1,{f,1771}}. % id/1
    {call,1,{f,1804}}. % '-binary_aliases/1-fun-11-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,255}}}}}]}}.
    {test,is_eq_exact,
          {f,1645},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,255}},2 => {t_integer,{0,255}}}}},
           {literal,{255,255}}]}.
    {move,{literal,#{key => <<"Ñ">>}},{x,0}}.
    {line,[{scope,"0"},{location,"bs_match_SUITE.erl",2893}]}.
    {call,1,{f,1771}}. % id/1
    {call,1,{f,1804}}. % '-binary_aliases/1-fun-11-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,255}}}}}]}}.
    {test,is_eq_exact,
          {f,1644},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,255}},2 => {t_integer,{0,255}}}}},
           {literal,{209,209}}]}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{scope,"0"},{location,"bs_match_SUITE.erl",2899}]}.
    {call,1,{f,1771}}. % id/1
    {call,1,{f,1800}}. % '-binary_aliases/1-fun-12-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,'+inf'}},
                                     3 => {t_bitstring,1,false}}}}]}}.
    {test,is_eq_exact,
          {f,1643},
          [{tr,{x,0},
               {t_tuple,3,true,
                        #{1 => {t_integer,{0,255}},
                          2 => {t_integer,{0,'+inf'}},
                          3 => {t_bitstring,1,false}}}},
           {literal,{0,0,<<>>}}]}.
    {move,{literal,<<1,1:1>>},{x,0}}.
    {line,[{scope,"0"},{location,"bs_match_SUITE.erl",2900}]}.
    {call,1,{f,1771}}. % id/1
    {call,1,{f,1800}}. % '-binary_aliases/1-fun-12-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,'+inf'}},
                                     3 => {t_bitstring,1,false}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,1642},[{tr,{x,1},{t_integer,{0,255}}},{integer,1}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,
          {f,1642},
          [{tr,{x,1},{t_integer,{0,'+inf'}}},{integer,1}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_match,{f,1642},{x,1},{commands,[{ensure_exactly,1},{'=:=',nil,1,1}]}}.
    {move,{literal,<<"\b*">>},{x,0}}.
    {line,[{scope,"0"},{location,"bs_match_SUITE.erl",2901}]}.
    {call,1,{f,1771}}. % id/1
    {call,1,{f,1800}}. % '-binary_aliases/1-fun-12-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_integer,{0,'+inf'}},
                                     3 => {t_bitstring,1,false}}}}]}}.
    {test,is_eq_exact,
          {f,1641},
          [{tr,{x,0},
               {t_tuple,3,true,
                        #{1 => {t_integer,{0,255}},
                          2 => {t_integer,{0,'+inf'}},
                          3 => {t_bitstring,1,false}}}},
           {literal,{8,42,<<"*">>}}]}.
    {move,{literal,[<<>>|0]},{x,0}}.
    {line,[{scope,"0"},{location,"bs_match_SUITE.erl",2907}]}.
    {call,1,{f,1797}}. % '-binary_aliases/1-fun-13-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,[<<"ÿÿÿÿ">>|32]},{x,0}}.
    {line,[{scope,"0"},{location,"bs_match_SUITE.erl",2908}]}.
    {call,1,{f,1797}}. % '-binary_aliases/1-fun-13-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,23},{f,1571}}.
    {move,{literal,[<<0,0>>|0]},{x,0}}.
    {line,[{scope,"0"},{location,"bs_match_SUITE.erl",2909}]}.
    {call,1,{f,1797}}. % '-binary_aliases/1-fun-13-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1571}.
    {catch_end,{y,23}}.
    {test,is_tagged_tuple,{f,1640},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1640},[{x,1}]}.
    {test,test_arity,{f,1640},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1640},[{x,1},{literal,{badmatch,[<<0,0>>|0]}}]}.
    {'catch',{y,22},{f,1572}}.
    {move,{literal,[<<0,0>>|atom]},{x,0}}.
    {line,[{scope,"."},{location,"bs_match_SUITE.erl",2910}]}.
    {call,1,{f,1797}}. % '-binary_aliases/1-fun-13-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1572}.
    {catch_end,{y,22}}.
    {test,is_tagged_tuple,{f,1639},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1639},[{x,1}]}.
    {test,test_arity,{f,1639},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1639},[{x,1},{literal,{badmatch,[<<0,0>>|atom]}}]}.
    {move,{literal,{<<>>,0}},{x,0}}.
    {line,[{scope,","},{location,"bs_match_SUITE.erl",2916}]}.
    {call,1,{f,1794}}. % '-binary_aliases/1-fun-14-'/1
    {test,is_eq_exact,{f,1638},[{x,0},{integer,0}]}.
    {move,{literal,{<<"ÿÿÿÿ">>,32}},{x,0}}.
    {line,[{scope,","},{location,"bs_match_SUITE.erl",2917}]}.
    {call,1,{f,1794}}. % '-binary_aliases/1-fun-14-'/1
    {test,is_eq_exact,{f,1637},[{x,0},{integer,32}]}.
    {'catch',{y,21},{f,1573}}.
    {move,{literal,{<<0,0>>,0}},{x,0}}.
    {line,[{scope,","},{location,"bs_match_SUITE.erl",2918}]}.
    {call,1,{f,1794}}. % '-binary_aliases/1-fun-14-'/1
  {label,1573}.
    {catch_end,{y,21}}.
    {test,is_tagged_tuple,{f,1636},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1636},[{x,1}]}.
    {test,test_arity,{f,1636},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1636},[{x,1},{literal,{badmatch,{<<0,0>>,0}}}]}.
    {'catch',{y,20},{f,1574}}.
    {move,{literal,{<<0,0>>,atom}},{x,0}}.
    {line,[{scope,"*"},{location,"bs_match_SUITE.erl",2919}]}.
    {call,1,{f,1794}}. % '-binary_aliases/1-fun-14-'/1
  {label,1574}.
    {catch_end,{y,20}}.
    {test,is_tagged_tuple,{f,1635},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1635},[{x,1}]}.
    {test,test_arity,{f,1635},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1635},[{x,1},{literal,{badmatch,{<<0,0>>,atom}}}]}.
    {move,{literal,[{<<>>,0}]},{x,0}}.
    {line,[{scope,"("},{location,"bs_match_SUITE.erl",2925}]}.
    {call,1,{f,1791}}. % '-binary_aliases/1-fun-15-'/1
    {test,is_eq_exact,{f,1634},[{x,0},{integer,0}]}.
    {move,{literal,[{<<"ÿÿÿÿ">>,32}]},{x,0}}.
    {line,[{scope,"("},{location,"bs_match_SUITE.erl",2926}]}.
    {call,1,{f,1791}}. % '-binary_aliases/1-fun-15-'/1
    {test,is_eq_exact,{f,1633},[{x,0},{integer,32}]}.
    {'catch',{y,19},{f,1575}}.
    {move,{literal,[{<<0,0>>,0}]},{x,0}}.
    {line,[{scope,"("},{location,"bs_match_SUITE.erl",2927}]}.
    {call,1,{f,1791}}. % '-binary_aliases/1-fun-15-'/1
  {label,1575}.
    {catch_end,{y,19}}.
    {test,is_tagged_tuple,{f,1632},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1632},[{x,1}]}.
    {test,test_arity,{f,1632},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1632},[{x,1},{literal,{badmatch,[{<<0,0>>,0}]}}]}.
    {'catch',{y,18},{f,1576}}.
    {move,{literal,[{<<0,0>>,atom}]},{x,0}}.
    {line,[{scope,"&"},{location,"bs_match_SUITE.erl",2928}]}.
    {call,1,{f,1791}}. % '-binary_aliases/1-fun-15-'/1
  {label,1576}.
    {catch_end,{y,18}}.
    {test,is_tagged_tuple,{f,1631},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1631},[{x,1}]}.
    {test,test_arity,{f,1631},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1631},[{x,1},{literal,{badmatch,[{<<0,0>>,atom}]}}]}.
    {move,{literal,#{[] => <<"*">>}},{x,0}}.
    {line,[{scope,"$"},{location,"bs_match_SUITE.erl",2931}]}.
    {call,1,{f,1771}}. % id/1
    {call,1,{f,1789}}. % '-binary_aliases/1-fun-16-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,17},{f,1577}}.
    {move,{literal,#{[] => <<>>}},{x,0}}.
    {line,[{scope,"$"},{location,"bs_match_SUITE.erl",2932}]}.
    {call,1,{f,1771}}. % id/1
    {call,1,{f,1789}}. % '-binary_aliases/1-fun-16-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1577}.
    {catch_end,{y,17}}.
    {test,is_tagged_tuple,{f,1630},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1630},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,16},{f,1578}}.
    {move,{atom,atom},{x,0}}.
    {line,[{scope,"#$"},{location,"bs_match_SUITE.erl",2933}]}.
    {call,1,{f,1771}}. % id/1
    {call,1,{f,1789}}. % '-binary_aliases/1-fun-16-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1578}.
    {catch_end,{y,16}}.
    {test,is_tagged_tuple,{f,1629},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1629},[{x,1},2,{atom,function_clause}]}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,"!\""},{location,"bs_match_SUITE.erl",2942}]}.
    {call,1,{f,1771}}. % id/1
    {call,1,{f,1786}}. % '-binary_aliases/1-fun-17-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1628},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope," "},{location,"bs_match_SUITE.erl",2943}]}.
    {call,1,{f,1786}}. % '-binary_aliases/1-fun-17-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1627},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{literal,<<1:1>>},{x,0}}.
    {line,[{scope," "},{location,"bs_match_SUITE.erl",2944}]}.
    {call,1,{f,1786}}. % '-binary_aliases/1-fun-17-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1626},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{atom,atom},{x,0}}.
    {line,[{scope," "},{location,"bs_match_SUITE.erl",2945}]}.
    {call,1,{f,1786}}. % '-binary_aliases/1-fun-17-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {'catch',{y,15},{f,1579}}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{scope," "},{location,"bs_match_SUITE.erl",2950}]}.
    {call,1,{f,1782}}. % '-binary_aliases/1-fun-18-'/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1579}.
    {catch_end,{y,15}}.
    {test,is_tagged_tuple,{f,1625},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1625},[{x,1}]}.
    {test,test_arity,{f,1625},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1625},[{x,1},{literal,{badmatch,<<0>>}}]}.
    {'catch',{y,14},{f,1580}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[30]},{location,"bs_match_SUITE.erl",2951}]}.
    {call,1,{f,1782}}. % '-binary_aliases/1-fun-18-'/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1580}.
    {catch_end,{y,14}}.
    {test,is_tagged_tuple,{f,1624},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1624},[{x,1}]}.
    {test,test_arity,{f,1624},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1624},[{x,1},{literal,{badmatch,<<>>}}]}.
    {'catch',{y,13},{f,1581}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[28]},{location,"bs_match_SUITE.erl",2952}]}.
    {call,1,{f,1782}}. % '-binary_aliases/1-fun-18-'/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1581}.
    {catch_end,{y,13}}.
    {test,is_tagged_tuple,{f,1623},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1623},[{x,1}]}.
    {test,test_arity,{f,1623},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1623},[{x,1},{literal,{badmatch,0}}]}.
    {move,{literal,[<<>>]},{x,0}}.
    {line,[{scope,[26]},{location,"bs_match_SUITE.erl",2955}]}.
    {call,1,{f,1780}}. % '-binary_aliases/1-fun-19-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[26]},{location,"bs_match_SUITE.erl",2957}]}.
    {call,1,{f,1771}}. % id/1
    {move,{x,0},{y,25}}.
    {move,{literal,<<0>>},{x,0}}.
    {call,1,{f,1771}}. % id/1
    {move,{x,0},{y,24}}.
    {move,{integer,0},{x,0}}.
    {call,1,{f,1771}}. % id/1
    {move,{y,24},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{y,25},{x,0}}.
    {init_yregs,{list,[{y,24},{y,25}]}}.
    {call,3,{f,1665}}. % gh_6467/3
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
    {'catch',{y,12},{f,1582}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[26]},{location,"bs_match_SUITE.erl",2958}]}.
    {call,1,{f,1771}}. % id/1
    {move,{x,0},{y,25}}.
    {move,{literal,<<0>>},{x,0}}.
    {call,1,{f,1771}}. % id/1
    {move,{x,0},{y,24}}.
    {move,nil,{x,0}}.
    {call,1,{f,1771}}. % id/1
    {move,{y,24},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{y,25},{x,0}}.
    {init_yregs,{list,[{y,24},{y,25}]}}.
    {call,3,{f,1665}}. % gh_6467/3
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
  {label,1582}.
    {catch_end,{y,12}}.
    {test,is_tagged_tuple,{f,1622},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1622},[{x,1}]}.
    {test,test_arity,{f,1622},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1622},[{x,1},{literal,{badmatch,0}}]}.
    {'catch',{y,11},{f,1583}}.
    {move,{literal,<<7>>},{x,0}}.
    {line,[{scope,[24]},{location,"bs_match_SUITE.erl",2959}]}.
    {call,1,{f,1771}}. % id/1
    {move,{x,0},{y,25}}.
    {move,{literal,<<"!">>},{x,0}}.
    {call,1,{f,1771}}. % id/1
    {move,{x,0},{y,24}}.
    {move,nil,{x,0}}.
    {call,1,{f,1771}}. % id/1
    {move,{y,24},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{y,25},{x,0}}.
    {init_yregs,{list,[{y,24},{y,25}]}}.
    {call,3,{f,1665}}. % gh_6467/3
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
  {label,1583}.
    {catch_end,{y,11}}.
    {test,is_tagged_tuple,{f,1621},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1621},[{x,1}]}.
    {test,test_arity,{f,1621},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1621},[{x,1},{literal,{badmatch,<<7>>}}]}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",2964}]}.
    {call,1,{f,1777}}. % '-binary_aliases/1-fun-20-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1620},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",2965}]}.
    {call,1,{f,1777}}. % '-binary_aliases/1-fun-20-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1619},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",2966}]}.
    {call,1,{f,1777}}. % '-binary_aliases/1-fun-20-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,true},{x,1}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",2968}]}.
    {call,2,{f,1668}}. % gh6415_a/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,true]}}]}}.
    {test,is_eq_exact,{f,1618},[{tr,{x,0},{t_atom,[error,true]}},{atom,true}]}.
    {move,{atom,false},{x,1}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",2969}]}.
    {call,2,{f,1668}}. % gh6415_a/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,false},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",2970}]}.
    {call,2,{f,1668}}. % gh6415_a/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,not_bool},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",2971}]}.
    {call,2,{f,1668}}. % gh6415_a/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,true},{x,1}}.
    {move,{atom,any},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",2972}]}.
    {call,2,{f,1668}}. % gh6415_a/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,false},{x,1}}.
    {move,{atom,any},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",2973}]}.
    {call,2,{f,1668}}. % gh6415_a/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,<<"c">>},{x,1}}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",2975}]}.
    {call,2,{f,1671}}. % gh6415_b/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1617},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{literal,<<"c">>},{x,1}}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",2976}]}.
    {call,2,{f,1671}}. % gh6415_b/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1616},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{literal,<<>>},{x,1}}.
    {move,{atom,true},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",2977}]}.
    {call,2,{f,1671}}. % gh6415_b/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1615},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{literal,<<>>},{x,1}}.
    {move,{atom,false},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",2978}]}.
    {call,2,{f,1671}}. % gh6415_b/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1614},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{atom,true},{x,1}}.
    {move,{literal,<<"\n">>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",2980}]}.
    {call,2,{f,1675}}. % gh6415_c/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1613},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{atom,false},{x,1}}.
    {move,{literal,<<"\n">>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",2981}]}.
    {call,2,{f,1675}}. % gh6415_c/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,true},{x,1}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",2982}]}.
    {call,2,{f,1675}}. % gh6415_c/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1612},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{atom,true},{x,1}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",2983}]}.
    {call,2,{f,1675}}. % gh6415_c/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",2985}]}.
    {call,1,{f,1678}}. % gh6415_case_clause/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",2986}]}.
    {call,1,{f,1678}}. % gh6415_case_clause/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",2987}]}.
    {call,1,{f,1678}}. % gh6415_case_clause/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",2989}]}.
    {call,1,{f,1696}}. % gh6415_nomatch/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",2990}]}.
    {call,1,{f,1696}}. % gh6415_nomatch/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,<<"ab">>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",2991}]}.
    {call,1,{f,1696}}. % gh6415_nomatch/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,#{0 => <<>>}},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",2992}]}.
    {call,1,{f,1696}}. % gh6415_nomatch/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,#{0 => <<"*">>}},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",2993}]}.
    {call,1,{f,1696}}. % gh6415_nomatch/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,#{0 => 42}},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",2994}]}.
    {call,1,{f,1696}}. % gh6415_nomatch/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,#{}},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",2995}]}.
    {call,1,{f,1696}}. % gh6415_nomatch/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,{a,tuple}},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",2996}]}.
    {call,1,{f,1696}}. % gh6415_nomatch/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,an_atom},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",2997}]}.
    {call,1,{f,1696}}. % gh6415_nomatch/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",2999}]}.
    {call,1,{f,1771}}. % id/1
    {call,1,{f,1741}}. % gh6415_match_a/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
    {test,is_eq_exact,{f,1611},[{tr,{x,0},{t_integer,{0,255}}},{integer,42}]}.
    {'catch',{y,10},{f,1584}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",3000}]}.
    {call,1,{f,1771}}. % id/1
    {call,1,{f,1741}}. % gh6415_match_a/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
  {label,1584}.
    {catch_end,{y,10}}.
    {test,is_tagged_tuple,{f,1610},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1610},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,9},{f,1585}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[21,22]},{location,"bs_match_SUITE.erl",3001}]}.
    {call,1,{f,1771}}. % id/1
    {call,1,{f,1741}}. % gh6415_match_a/1
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
  {label,1585}.
    {catch_end,{y,9}}.
    {test,is_tagged_tuple,{f,1609},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1609},[{x,1},2,{atom,function_clause}]}.
    {move,{literal,<<"*">>},{x,0}}.
    {line,[{scope,[19,20]},{location,"bs_match_SUITE.erl",3003}]}.
    {call,1,{f,1771}}. % id/1
    {call,1,{f,1744}}. % gh6415_match_b/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {test,is_eq_exact,
          {f,1608},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{0,255}},
                          2 => {t_bitstring,8,false}}}},
           {literal,{42,<<>>}}]}.
    {'catch',{y,8},{f,1586}}.
    {move,{literal,<<1,2>>},{x,0}}.
    {line,[{scope,[18]},{location,"bs_match_SUITE.erl",3004}]}.
    {call,1,{f,1771}}. % id/1
    {call,1,{f,1744}}. % gh6415_match_b/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_bitstring,8,false}}}}]}}.
  {label,1586}.
    {catch_end,{y,8}}.
    {test,is_tagged_tuple,{f,1607},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1607},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,7},{f,1587}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[17,18]},{location,"bs_match_SUITE.erl",3005}]}.
    {call,1,{f,1771}}. % id/1
    {call,1,{f,1744}}. % gh6415_match_b/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_bitstring,8,false}}}}]}}.
  {label,1587}.
    {catch_end,{y,7}}.
    {test,is_tagged_tuple,{f,1606},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1606},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,6},{f,1588}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[15,16]},{location,"bs_match_SUITE.erl",3006}]}.
    {call,1,{f,1771}}. % id/1
    {call,1,{f,1744}}. % gh6415_match_b/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_integer,{0,255}},
                                     2 => {t_bitstring,8,false}}}}]}}.
  {label,1588}.
    {catch_end,{y,6}}.
    {test,is_tagged_tuple,{f,1605},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1605},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,5},{f,1589}}.
    {line,[{scope,[13,14]},{location,"bs_match_SUITE.erl",3008}]}.
    {call,0,{f,1747}}. % gh6415_match_c/0
    {'%',{var_info,{x,0},[{type,{t_integer,{0,255}}}]}}.
  {label,1589}.
    {catch_end,{y,5}}.
    {test,is_tagged_tuple,{f,1604},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1604},[{x,1}]}.
    {test,test_arity,{f,1604},[{x,1},2]}.
    {move,{literal,<<"£">>},{x,0}}.
    {line,[{scope,"\v\f"},{location,"bs_match_SUITE.erl",3010}]}.
    {call,1,{f,1771}}. % id/1
    {call,1,{f,1751}}. % gh6415_match_d/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,4},{f,1590}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,"\v\f"},{location,"bs_match_SUITE.erl",3011}]}.
    {call,1,{f,1771}}. % id/1
    {call,1,{f,1751}}. % gh6415_match_d/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1590}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,1603},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1603},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,3},{f,1591}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,"\t\n"},{location,"bs_match_SUITE.erl",3012}]}.
    {call,1,{f,1771}}. % id/1
    {call,1,{f,1751}}. % gh6415_match_d/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1591}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,1602},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1602},[{x,1},2,{atom,function_clause}]}.
    {move,{literal,<<163,0>>},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_SUITE.erl",3014}]}.
    {call,1,{f,1771}}. % id/1
    {call,1,{f,1754}}. % gh6415_match_e/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<"c\b*">>},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_SUITE.erl",3015}]}.
    {call,1,{f,1771}}. % id/1
    {call,1,{f,1754}}. % gh6415_match_e/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,<<99,17,255,255,1:1>>},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_SUITE.erl",3016}]}.
    {call,1,{f,1771}}. % id/1
    {call,1,{f,1754}}. % gh6415_match_e/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,2},{f,1592}}.
    {move,{literal,<<"£">>},{x,0}}.
    {line,[{scope,[7,8]},{location,"bs_match_SUITE.erl",3017}]}.
    {call,1,{f,1771}}. % id/1
    {call,1,{f,1754}}. % gh6415_match_e/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1592}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,1601},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1601},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,1},{f,1593}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[5,6]},{location,"bs_match_SUITE.erl",3018}]}.
    {call,1,{f,1771}}. % id/1
    {call,1,{f,1754}}. % gh6415_match_e/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1593}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,1600},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1600},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,0},{f,1594}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[3,4]},{location,"bs_match_SUITE.erl",3019}]}.
    {call,1,{f,1771}}. % id/1
    {call,1,{f,1754}}. % gh6415_match_e/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,1594}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1599},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1599},[{x,1},2,{atom,function_clause}]}.
    {move,{literal,<<17,15,48,1:1>>},{x,0}}.
    {line,[{scope,[1,2]},{location,"bs_match_SUITE.erl",3021}]}.
    {call,1,{f,1771}}. % id/1
    {call,1,{f,1757}}. % gh6415_match_f/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[error]},
                                   none,
                                   {t_integer,{0,131071}},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,1598},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,
                        {t_integer,{0,131071}},
                        none,none}},
           {integer,7777}]}.
    {move,{literal,<<17,2,105,0:1>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",3022}]}.
    {call,1,{f,1771}}. % id/1
    {call,1,{f,1757}}. % gh6415_match_f/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[error]},
                                   none,
                                   {t_integer,{0,131071}},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,1597},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,
                        {t_integer,{0,131071}},
                        none,none}},
           {integer,1234}]}.
    {move,{literal,<<0>>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",3023}]}.
    {call,1,{f,1771}}. % id/1
    {call,1,{f,1757}}. % gh6415_match_f/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[error]},
                                   none,
                                   {t_integer,{0,131071}},
                                   none,none}}]}}.
    {test,is_eq_exact,
          {f,1596},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,
                        {t_integer,{0,131071}},
                        none,none}},
           {atom,error}]}.
    {move,{literal,<<"\b*">>},{x,0}}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",3024}]}.
    {call,1,{f,1771}}. % id/1
    {call,1,{f,1757}}. % gh6415_match_f/1
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
           {atom,error}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,26}.
    return.
  {label,1595}.
    {badmatch,{x,0}}.
  {label,1596}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",3023}]}.
    {badmatch,{x,0}}.
  {label,1597}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",3022}]}.
    {badmatch,{x,0}}.
  {label,1598}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",3021}]}.
    {badmatch,{x,0}}.
  {label,1599}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",3019}]}.
    {badmatch,{x,0}}.
  {label,1600}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",3018}]}.
    {badmatch,{x,0}}.
  {label,1601}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",3017}]}.
    {badmatch,{x,0}}.
  {label,1602}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",3012}]}.
    {badmatch,{x,0}}.
  {label,1603}.
    {line,[{scope,"\b"},{location,"bs_match_SUITE.erl",3011}]}.
    {badmatch,{x,0}}.
  {label,1604}.
    {line,[{scope,"\n"},{location,"bs_match_SUITE.erl",3008}]}.
    {badmatch,{x,0}}.
  {label,1605}.
    {line,[{scope,"\f"},{location,"bs_match_SUITE.erl",3006}]}.
    {badmatch,{x,0}}.
  {label,1606}.
    {line,[{scope,[14]},{location,"bs_match_SUITE.erl",3005}]}.
    {badmatch,{x,0}}.
  {label,1607}.
    {line,[{scope,[16]},{location,"bs_match_SUITE.erl",3004}]}.
    {badmatch,{x,0}}.
  {label,1608}.
    {line,[{scope,[18]},{location,"bs_match_SUITE.erl",3003}]}.
    {badmatch,{x,0}}.
  {label,1609}.
    {line,[{scope,[18]},{location,"bs_match_SUITE.erl",3001}]}.
    {badmatch,{x,0}}.
  {label,1610}.
    {line,[{scope,[20]},{location,"bs_match_SUITE.erl",3000}]}.
    {badmatch,{x,0}}.
  {label,1611}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",2999}]}.
    {badmatch,{x,0}}.
  {label,1612}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",2982}]}.
    {badmatch,{atom,ok}}.
  {label,1613}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",2980}]}.
    {badmatch,{atom,error}}.
  {label,1614}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",2978}]}.
    {badmatch,{atom,ok}}.
  {label,1615}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",2977}]}.
    {badmatch,{atom,ok}}.
  {label,1616}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",2976}]}.
    {badmatch,{atom,error}}.
  {label,1617}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",2975}]}.
    {badmatch,{atom,error}}.
  {label,1618}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",2968}]}.
    {badmatch,{atom,error}}.
  {label,1619}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",2965}]}.
    {badmatch,{atom,ok}}.
  {label,1620}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",2964}]}.
    {badmatch,{atom,error}}.
  {label,1621}.
    {line,[{scope,[22]},{location,"bs_match_SUITE.erl",2959}]}.
    {badmatch,{x,0}}.
  {label,1622}.
    {line,[{scope,[24]},{location,"bs_match_SUITE.erl",2958}]}.
    {badmatch,{x,0}}.
  {label,1623}.
    {line,[{scope,[26]},{location,"bs_match_SUITE.erl",2952}]}.
    {badmatch,{x,0}}.
  {label,1624}.
    {line,[{scope,[28]},{location,"bs_match_SUITE.erl",2951}]}.
    {badmatch,{x,0}}.
  {label,1625}.
    {line,[{scope,[30]},{location,"bs_match_SUITE.erl",2950}]}.
    {badmatch,{x,0}}.
  {label,1626}.
    {line,[{scope," "},{location,"bs_match_SUITE.erl",2944}]}.
    {badmatch,{atom,ok}}.
  {label,1627}.
    {line,[{scope," "},{location,"bs_match_SUITE.erl",2943}]}.
    {badmatch,{atom,ok}}.
  {label,1628}.
    {line,[{scope," "},{location,"bs_match_SUITE.erl",2942}]}.
    {badmatch,{atom,error}}.
  {label,1629}.
    {line,[{scope," "},{location,"bs_match_SUITE.erl",2933}]}.
    {badmatch,{x,0}}.
  {label,1630}.
    {line,[{scope,"\""},{location,"bs_match_SUITE.erl",2932}]}.
    {badmatch,{x,0}}.
  {label,1631}.
    {line,[{scope,"$"},{location,"bs_match_SUITE.erl",2928}]}.
    {badmatch,{x,0}}.
  {label,1632}.
    {line,[{scope,"&"},{location,"bs_match_SUITE.erl",2927}]}.
    {badmatch,{x,0}}.
  {label,1633}.
    {line,[{scope,"("},{location,"bs_match_SUITE.erl",2926}]}.
    {badmatch,{x,0}}.
  {label,1634}.
    {line,[{scope,"("},{location,"bs_match_SUITE.erl",2925}]}.
    {badmatch,{x,0}}.
  {label,1635}.
    {line,[{scope,"("},{location,"bs_match_SUITE.erl",2919}]}.
    {badmatch,{x,0}}.
  {label,1636}.
    {line,[{scope,"*"},{location,"bs_match_SUITE.erl",2918}]}.
    {badmatch,{x,0}}.
  {label,1637}.
    {line,[{scope,","},{location,"bs_match_SUITE.erl",2917}]}.
    {badmatch,{x,0}}.
  {label,1638}.
    {line,[{scope,","},{location,"bs_match_SUITE.erl",2916}]}.
    {badmatch,{x,0}}.
  {label,1639}.
    {line,[{scope,","},{location,"bs_match_SUITE.erl",2910}]}.
    {badmatch,{x,0}}.
  {label,1640}.
    {line,[{scope,"."},{location,"bs_match_SUITE.erl",2909}]}.
    {badmatch,{x,0}}.
  {label,1641}.
    {line,[{scope,"0"},{location,"bs_match_SUITE.erl",2901}]}.
    {badmatch,{x,0}}.
  {label,1642}.
    {line,[{scope,"0"},{location,"bs_match_SUITE.erl",2900}]}.
    {badmatch,{x,0}}.
  {label,1643}.
    {line,[{scope,"0"},{location,"bs_match_SUITE.erl",2899}]}.
    {badmatch,{x,0}}.
  {label,1644}.
    {line,[{scope,"0"},{location,"bs_match_SUITE.erl",2893}]}.
    {badmatch,{x,0}}.
  {label,1645}.
    {line,[{scope,"0"},{location,"bs_match_SUITE.erl",2892}]}.
    {badmatch,{x,0}}.
  {label,1646}.
    {line,[{scope,"0"},{location,"bs_match_SUITE.erl",2888}]}.
    {badmatch,{x,0}}.
  {label,1647}.
    {line,[{scope,"0"},{location,"bs_match_SUITE.erl",2887}]}.
    {badmatch,{x,0}}.
  {label,1648}.
    {line,[{scope,"0"},{location,"bs_match_SUITE.erl",2881}]}.
    {badmatch,{x,0}}.
  {label,1649}.
    {line,[{scope,"2"},{location,"bs_match_SUITE.erl",2880}]}.
    {badmatch,{x,0}}.
  {label,1650}.
    {line,[{scope,"2"},{location,"bs_match_SUITE.erl",2875}]}.
    {badmatch,{x,0}}.
  {label,1651}.
    {line,[{scope,"2"},{location,"bs_match_SUITE.erl",2869}]}.
    {badmatch,{x,0}}.
  {label,1652}.
    {line,[{scope,"2"},{location,"bs_match_SUITE.erl",2863}]}.
    {badmatch,{x,0}}.
  {label,1653}.
    {line,[{scope,"4"},{location,"bs_match_SUITE.erl",2862}]}.
    {badmatch,{x,0}}.
  {label,1654}.
    {line,[{scope,"4"},{location,"bs_match_SUITE.erl",2856}]}.
    {badmatch,{x,0}}.
  {label,1655}.
    {line,[{scope,"4"},{location,"bs_match_SUITE.erl",2855}]}.
    {badmatch,{x,0}}.
  {label,1656}.
    {line,[{scope,"4"},{location,"bs_match_SUITE.erl",2849}]}.
    {badmatch,{x,0}}.
  {label,1657}.
    {line,[{scope,"4"},{location,"bs_match_SUITE.erl",2843}]}.
    {badmatch,{x,0}}.
  {label,1658}.
    {line,[{scope,"4"},{location,"bs_match_SUITE.erl",2836}]}.
    {badmatch,{x,0}}.
  {label,1659}.
    {line,[{scope,"4"},{location,"bs_match_SUITE.erl",2835}]}.
    {badmatch,{x,0}}.
  {label,1660}.
    {line,[{scope,"4"},{location,"bs_match_SUITE.erl",2832}]}.
    {badmatch,{x,0}}.
  {label,1661}.
    {line,[{scope,"4"},{location,"bs_match_SUITE.erl",2831}]}.
    {badmatch,{x,0}}.
  {label,1662}.
    {line,[{scope,"4"},{location,"bs_match_SUITE.erl",2828}]}.
    {badmatch,{x,0}}.
  {label,1663}.
    {line,[{scope,"4"},{location,"bs_match_SUITE.erl",2827}]}.
    {badmatch,{x,0}}.


{function, gh_6467, 3, 1665}.
  {label,1664}.
    {line,[{location,"bs_match_SUITE.erl",3031}]}.
    {func_info,{atom,bs_match_SUITE},{atom,gh_6467},3}.
  {label,1665}.
    {test,is_nil,{f,1666},[{x,2}]}.
    {line,[{location,"bs_match_SUITE.erl",3032}]}.
    {badmatch,{x,0}}.
  {label,1666}.
    {test,bs_start_match3,{f,1664},3,[{x,1}],{x,3}}.
    {bs_match,{f,1664},{x,3},{commands,[{ensure_exactly,8}]}}.
    {move,{atom,a},{x,0}}.
    return.


{function, gh6415_a, 2, 1668}.
  {label,1667}.
    {line,[{location,"bs_match_SUITE.erl",3036}]}.
    {func_info,{atom,bs_match_SUITE},{atom,gh6415_a},2}.
  {label,1668}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[any]},
                                   none,none,none,
                                   {t_bitstring,8,false}}},
                    accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[false,not_bool,true]}}]}}.
    {test,bs_start_match3,{f,1669},2,[{x,0}],{x,0}}.
    {bs_match,{f,1669},{x,0},{commands,[{ensure_exactly,8}]}}.
    {test,is_eq_exact,{f,1669},[{x,1},{atom,true}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,1669}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_b, 2, 1671}.
  {label,1670}.
    {line,[{location,"bs_match_SUITE.erl",3041}]}.
    {func_info,{atom,bs_match_SUITE},{atom,gh6415_b},2}.
  {label,1671}.
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_bitstring,8,false}},accepts_match_context]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_match,{f,1673},
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
          {f,1672},
          [{tr,{x,1},{t_atom,[false,true]}},{atom,false}]}.
    {test,is_eq_exact,{f,1673},[{tr,{x,0},{t_atom,[false,true]}},{atom,true}]}.
  {label,1672}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1673}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_c, 2, 1675}.
  {label,1674}.
    {line,[{location,"bs_match_SUITE.erl",3046}]}.
    {func_info,{atom,bs_match_SUITE},{atom,gh6415_c},2}.
  {label,1675}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,none,
                                   {t_integer,{42,42}},
                                   none,
                                   {t_bitstring,8,false}}},
                    accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[false,true]}}]}}.
    {test,bs_start_match3,{f,1676},2,[{x,0}],{x,0}}.
    {bs_match,{f,1676},{x,0},{commands,[{ensure_exactly,8}]}}.
    {test,is_eq_exact,{f,1676},[{x,1},{atom,true}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1676}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_case_clause, 1, 1678}.
  {label,1677}.
    {line,[{location,"bs_match_SUITE.erl",3051}]}.
    {func_info,{atom,bs_match_SUITE},{atom,gh6415_case_clause},1}.
  {label,1678}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[a]},
                                   none,
                                   {t_integer,{42,42}},
                                   none,
                                   {t_bitstring,8,false}}}]}}.
    {allocate,5,1}.
    {init_yregs,{list,[{y,1},{y,2},{y,3}]}}.
    {move,{x,0},{y,0}}.
    {'catch',{y,4},{f,1679}}.
    {line,[{location,"bs_match_SUITE.erl",3052}]}.
    {call,1,{f,1688}}. % gh6415_case_clause_a/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1679}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,1686},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1686},[{x,1}]}.
    {test,test_arity,{f,1686},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1686},[{x,1},{literal,{case_clause,0}}]}.
    {'catch',{y,3},{f,1680}}.
    {move,{y,0},{x,0}}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",3053}]}.
    {call,1,{f,1690}}. % gh6415_case_clause_b/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1680}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,1685},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1685},[{x,1}]}.
    {test,test_arity,{f,1685},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1685},[{x,1},{literal,{case_clause,0}}]}.
    {'catch',{y,2},{f,1681}}.
    {move,{y,0},{x,0}}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",3054}]}.
    {call,1,{f,1692}}. % gh6415_case_clause_c/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1681}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,1684},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1684},[{x,1}]}.
    {test,test_arity,{f,1684},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1684},[{x,1},{literal,{case_clause,0}}]}.
    {'catch',{y,1},{f,1682}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",3055}]}.
    {call,1,{f,1694}}. % gh6415_case_clause_d/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1682}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,1683},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1683},[{x,1}]}.
    {test,test_arity,{f,1683},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1683},[{x,1},{literal,{case_clause,0}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,5}.
    return.
  {label,1683}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",3055}]}.
    {badmatch,{x,0}}.
  {label,1684}.
    {line,[{scope,[2]},{location,"bs_match_SUITE.erl",3054}]}.
    {badmatch,{x,0}}.
  {label,1685}.
    {line,[{scope,[4]},{location,"bs_match_SUITE.erl",3053}]}.
    {badmatch,{x,0}}.
  {label,1686}.
    {line,[{scope,[6]},{location,"bs_match_SUITE.erl",3052}]}.
    {badmatch,{x,0}}.


{function, gh6415_case_clause_a, 1, 1688}.
  {label,1687}.
    {line,[{location,"bs_match_SUITE.erl",3058}]}.
    {func_info,{atom,bs_match_SUITE},{atom,gh6415_case_clause_a},1}.
  {label,1688}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[a]},
                                   none,
                                   {t_integer,{42,42}},
                                   none,
                                   {t_bitstring,8,false}}}]}}.
    {line,[{location,"bs_match_SUITE.erl",3059}]}.
    {case_end,{integer,0}}.


{function, gh6415_case_clause_b, 1, 1690}.
  {label,1689}.
    {line,[{location,"bs_match_SUITE.erl",3065}]}.
    {func_info,{atom,bs_match_SUITE},{atom,gh6415_case_clause_b},1}.
  {label,1690}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[a]},
                                   none,
                                   {t_integer,{42,42}},
                                   none,
                                   {t_bitstring,8,false}}}]}}.
    {line,[{location,"bs_match_SUITE.erl",3066}]}.
    {case_end,{integer,0}}.


{function, gh6415_case_clause_c, 1, 1692}.
  {label,1691}.
    {line,[{location,"bs_match_SUITE.erl",3072}]}.
    {func_info,{atom,bs_match_SUITE},{atom,gh6415_case_clause_c},1}.
  {label,1692}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[a]},
                                   none,
                                   {t_integer,{42,42}},
                                   none,
                                   {t_bitstring,8,false}}}]}}.
    {line,[{location,"bs_match_SUITE.erl",3073}]}.
    {case_end,{integer,0}}.


{function, gh6415_case_clause_d, 1, 1694}.
  {label,1693}.
    {line,[{location,"bs_match_SUITE.erl",3079}]}.
    {func_info,{atom,bs_match_SUITE},{atom,gh6415_case_clause_d},1}.
  {label,1694}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[a]},
                                   none,
                                   {t_integer,{42,42}},
                                   none,
                                   {t_bitstring,8,false}}}]}}.
    {line,[{location,"bs_match_SUITE.erl",3080}]}.
    {case_end,{integer,0}}.


{function, gh6415_nomatch, 1, 1696}.
  {label,1695}.
    {line,[{location,"bs_match_SUITE.erl",3086}]}.
    {func_info,{atom,bs_match_SUITE},{atom,gh6415_nomatch},1}.
  {label,1696}.
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
    {line,[{location,"bs_match_SUITE.erl",3087}]}.
    {call,1,{f,1771}}. % id/1
    {move,{x,0},{y,1}}.
    {line,[{location,"bs_match_SUITE.erl",3088}]}.
    {call,1,{f,1709}}. % gh6415_nomatch_a/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",3089}]}.
    {call,1,{f,1711}}. % gh6415_nomatch_b/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,
          {f,1707},
          [{tr,{x,0},{t_atom,[error,ok]}},{tr,{y,0},{t_atom,[error,ok]}}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",3090}]}.
    {call,1,{f,1713}}. % gh6415_nomatch_c/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {test,is_eq_exact,{f,1706},[{tr,{y,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",3091}]}.
    {call,1,{f,1715}}. % gh6415_nomatch_d/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1705},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",3092}]}.
    {call,1,{f,1717}}. % gh6415_nomatch_e/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1704},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",3093}]}.
    {call,1,{f,1720}}. % gh6415_nomatch_f/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1703},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",3094}]}.
    {call,1,{f,1722}}. % gh6415_nomatch_g/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1702},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",3095}]}.
    {call,1,{f,1725}}. % gh6415_nomatch_h/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1701},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",3096}]}.
    {call,1,{f,1728}}. % gh6415_nomatch_i/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1700},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",3097}]}.
    {call,1,{f,1731}}. % gh6415_nomatch_j/1
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
          {f,1699},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,none,
                        {t_tuple,2,true,
                                 #{1 => {t_integer,{0,65535}},
                                   2 => {t_bitstring,8,false}}},
                        none}},
           {atom,error}]}.
    {move,{y,1},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",3098}]}.
    {call,1,{f,1734}}. % gh6415_nomatch_k/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1698},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{y,1},{x,0}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {line,[{location,"bs_match_SUITE.erl",3099}]}.
    {call,1,{f,1739}}. % gh6415_nomatch_l/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,1697},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1697}.
    {badmatch,{atom,ok}}.
  {label,1698}.
    {line,[{location,"bs_match_SUITE.erl",3098}]}.
    {badmatch,{atom,ok}}.
  {label,1699}.
    {line,[{location,"bs_match_SUITE.erl",3097}]}.
    {badmatch,{x,0}}.
  {label,1700}.
    {line,[{location,"bs_match_SUITE.erl",3096}]}.
    {badmatch,{atom,ok}}.
  {label,1701}.
    {line,[{location,"bs_match_SUITE.erl",3095}]}.
    {badmatch,{atom,ok}}.
  {label,1702}.
    {line,[{location,"bs_match_SUITE.erl",3094}]}.
    {badmatch,{atom,ok}}.
  {label,1703}.
    {line,[{location,"bs_match_SUITE.erl",3093}]}.
    {badmatch,{atom,ok}}.
  {label,1704}.
    {line,[{location,"bs_match_SUITE.erl",3092}]}.
    {badmatch,{atom,ok}}.
  {label,1705}.
    {line,[{location,"bs_match_SUITE.erl",3091}]}.
    {badmatch,{atom,ok}}.
  {label,1706}.
    {line,[{location,"bs_match_SUITE.erl",3090}]}.
    {badmatch,{atom,error}}.
  {label,1707}.
    {line,[{location,"bs_match_SUITE.erl",3089}]}.
    {badmatch,{x,0}}.


{function, gh6415_nomatch_a, 1, 1709}.
  {label,1708}.
    {line,[{location,"bs_match_SUITE.erl",3102}]}.
    {func_info,{atom,bs_match_SUITE},{atom,gh6415_nomatch_a},1}.
  {label,1709}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_b, 1, 1711}.
  {label,1710}.
    {line,[{location,"bs_match_SUITE.erl",3105}]}.
    {func_info,{atom,bs_match_SUITE},{atom,gh6415_nomatch_b},1}.
  {label,1711}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_c, 1, 1713}.
  {label,1712}.
    {line,[{location,"bs_match_SUITE.erl",3108}]}.
    {func_info,{atom,bs_match_SUITE},{atom,gh6415_nomatch_c},1}.
  {label,1713}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_d, 1, 1715}.
  {label,1714}.
    {line,[{location,"bs_match_SUITE.erl",3111}]}.
    {func_info,{atom,bs_match_SUITE},{atom,gh6415_nomatch_d},1}.
  {label,1715}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_e, 1, 1717}.
  {label,1716}.
    {line,[{location,"bs_match_SUITE.erl",3114}]}.
    {func_info,{atom,bs_match_SUITE},{atom,gh6415_nomatch_e},1}.
  {label,1717}.
    {test,is_map,{f,1718},[{x,0}]}.
    {get_map_elements,{f,1718},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{integer,0},{x,0}]}}.
    {test,is_eq_exact,{f,1718},[{x,0},{literal,<<>>}]}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_match,{f,1718},{x,0},{commands,[{ensure_exactly,8}]}}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1718}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_f, 1, 1720}.
  {label,1719}.
    {line,[{location,"bs_match_SUITE.erl",3117}]}.
    {func_info,{atom,bs_match_SUITE},{atom,gh6415_nomatch_f},1}.
  {label,1720}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_g, 1, 1722}.
  {label,1721}.
    {line,[{location,"bs_match_SUITE.erl",3120}]}.
    {func_info,{atom,bs_match_SUITE},{atom,gh6415_nomatch_g},1}.
  {label,1722}.
    {test,is_map,{f,1723},[{x,0}]}.
    {get_map_elements,{f,1723},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{integer,0},{x,0}]}}.
    {test,bs_start_match3,{f,1723},1,[{x,0}],{x,0}}.
    {bs_match,{f,1723},
              {x,0},
              {commands,[{ensure_exactly,8},
                         {ensure_exactly,16},
                         {skip,8},
                         {'=:=',nil,8,0}]}}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1723}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_h, 1, 1725}.
  {label,1724}.
    {line,[{location,"bs_match_SUITE.erl",3123}]}.
    {func_info,{atom,bs_match_SUITE},{atom,gh6415_nomatch_h},1}.
  {label,1725}.
    {test,is_map,{f,1726},[{x,0}]}.
    {get_map_elements,{f,1726},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{integer,0},{x,0}]}}.
    {test,bs_start_match3,{f,1726},1,[{x,0}],{x,0}}.
    {bs_match,{f,1726},
              {x,0},
              {commands,[{ensure_exactly,0},
                         {ensure_exactly,8},
                         {integer,1,{literal,[]},8,1,{x,1}}]}}.
    {test,is_eq_exact,{f,1726},[{tr,{x,1},{t_integer,{0,255}}},{integer,0}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1726}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_i, 1, 1728}.
  {label,1727}.
    {line,[{location,"bs_match_SUITE.erl",3126}]}.
    {func_info,{atom,bs_match_SUITE},{atom,gh6415_nomatch_i},1}.
  {label,1728}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1729},1,[{x,0}],{x,0}}.
    {bs_match,{f,1729},
              {x,0},
              {commands,[{ensure_exactly,8},
                         {ensure_at_least,16,8},
                         {skip,16},
                         {get_tail,1,8,{x,0}}]}}.
    {allocate,0,1}.
    {line,[{location,"bs_match_SUITE.erl",3127}]}.
    {call_ext,1,{extfunc,erlang,binary_to_list,1}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1729}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_j, 1, 1731}.
  {label,1730}.
    {line,[{location,"bs_match_SUITE.erl",3132}]}.
    {func_info,{atom,bs_match_SUITE},{atom,gh6415_nomatch_j},1}.
  {label,1731}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1732},1,[{x,0}],{x,0}}.
    {bs_match,{f,1732},
              {x,0},
              {commands,[{ensure_exactly,8},
                         {ensure_at_least,16,8},
                         {integer,1,{literal,[]},16,1,{x,1}},
                         {get_tail,2,8,{x,0}}]}}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,1},{x,0}]}}.
    return.
  {label,1732}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_k, 1, 1734}.
  {label,1733}.
    {line,[{location,"bs_match_SUITE.erl",3137}]}.
    {func_info,{atom,bs_match_SUITE},{atom,gh6415_nomatch_k},1}.
  {label,1734}.
    {test,is_map,{f,1737},[{x,0}]}.
    {get_map_elements,{f,1737},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{integer,0},{x,0}]}}.
    {test,bs_start_match3,{f,1737},1,[{x,0}],{x,0}}.
    {bs_match,{f,1737},{x,0},{commands,[{ensure_exactly,8},{skip,8}]}}.
    {gc_bif,'div',{f,1735},1,[{integer,0},{integer,0}],{x,1}}.
    {jump,{f,1736}}.
  {label,1735}.
    {move,{atom,bad_size},{x,1}}.
  {label,1736}.
    {test,bs_skip_bits2,
          {f,1737},
          [{x,0},
           {x,1},
           1,
           {field_flags,[{anno,[3137,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_match,{f,1737},{x,0},{commands,[{ensure_exactly,0}]}}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1737}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_nomatch_l, 1, 1739}.
  {label,1738}.
    {line,[{location,"bs_match_SUITE.erl",3142}]}.
    {func_info,{atom,bs_match_SUITE},{atom,gh6415_nomatch_l},1}.
  {label,1739}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh6415_match_a, 1, 1741}.
  {label,1740}.
    {line,[{location,"bs_match_SUITE.erl",3150}]}.
    {func_info,{atom,bs_match_SUITE},{atom,gh6415_match_a},1}.
  {label,1741}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1740},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {bs_match,{f,1742},
              {x,1},
              {commands,[{ensure_exactly,8},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {move,{x,2},{x,0}}.
    return.
  {label,1742}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,1740}}.


{function, gh6415_match_b, 1, 1744}.
  {label,1743}.
    {line,[{location,"bs_match_SUITE.erl",3153}]}.
    {func_info,{atom,bs_match_SUITE},{atom,gh6415_match_b},1}.
  {label,1744}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1743},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {bs_match,{f,1745},
              {x,1},
              {commands,[{ensure_exactly,8},
                         {integer,2,{literal,[]},8,1,{x,0}},
                         {get_tail,2,8,{x,1}}]}}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,0},{x,1}]}}.
    return.
  {label,1745}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,1743}}.


{function, gh6415_match_c, 0, 1747}.
  {label,1746}.
    {line,[{location,"bs_match_SUITE.erl",3156}]}.
    {func_info,{atom,bs_match_SUITE},{atom,gh6415_match_c},0}.
  {label,1747}.
    {allocate,1,0}.
    {'catch',{y,0},{f,1748}}.
    {move,{atom,badarg},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",3157}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,1748}.
    {catch_end,{y,0}}.
    {test,is_map,{f,1749},[{x,0}]}.
    {get_map_elements,{f,1749},{tr,{x,0},{t_map,any,any}},{list,[nil,{x,1}]}}.
    {test,bs_start_match3,{f,1749},2,[{x,1}],{x,1}}.
    {bs_match,{f,1749},
              {x,1},
              {commands,[{ensure_exactly,8},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {move,{x,2},{x,0}}.
    {deallocate,1}.
    return.
  {label,1749}.
    {line,[{scope,[0]},{location,"bs_match_SUITE.erl",3157}]}.
    {case_end,{x,0}}.


{function, gh6415_match_d, 1, 1751}.
  {label,1750}.
    {line,[{location,"bs_match_SUITE.erl",3162}]}.
    {func_info,{atom,bs_match_SUITE},{atom,gh6415_match_d},1}.
  {label,1751}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1750},1,[{x,0}],{x,1}}.
    {bs_match,{f,1752},{x,1},{commands,[{ensure_exactly,8}]}}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1752}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,1750}}.


{function, gh6415_match_e, 1, 1754}.
  {label,1753}.
    {line,[{location,"bs_match_SUITE.erl",3165}]}.
    {func_info,{atom,bs_match_SUITE},{atom,gh6415_match_e},1}.
  {label,1754}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1753},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {bs_match,{f,1755},
              {x,1},
              {commands,[{ensure_at_least,16,1},
                         {skip,8},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_skip_bits2,
          {f,1755},
          [{x,1},
           {x,2},
           1,
           {field_flags,[{anno,[3165,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_match,{f,1755},{x,1},{commands,[{ensure_exactly,0}]}}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_match,{f,1755},
              {x,1},
              {commands,[{ensure_at_least,16,1},
                         {skip,8},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,bs_skip_bits2,
          {f,1755},
          [{x,1},
           {x,3},
           1,
           {field_flags,[{anno,[3165,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_match,{f,1755},{x,1},{commands,[{ensure_exactly,0}]}}.
    {test,is_eq_exact,
          {f,1755},
          [{tr,{x,3},{t_integer,{0,255}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1755}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,1753}}.


{function, gh6415_match_f, 1, 1757}.
  {label,1756}.
    {line,[{location,"bs_match_SUITE.erl",3168}]}.
    {func_info,{atom,bs_match_SUITE},{atom,gh6415_match_f},1}.
  {label,1757}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1758},1,[{x,0}],{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,1758},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {skip,0},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,1758},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[3168,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_match,{f,1758},{x,0},{commands,[{ensure_exactly,0}]}}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_match,{f,1758},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,4,{literal,[]},8,1,{x,4}},
                         {ensure_at_least,0,1},
                         {skip,0}]}}.
    {test,bs_get_integer2,
          {f,1758},
          5,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,4},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[3168,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {bs_match,{f,1758},{x,0},{commands,[{ensure_exactly,0}]}}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_match,{f,1758},
              {x,0},
              {commands,[{ensure_exactly,25},
                         {'=:=',nil,8,17},
                         {integer,6,{literal,[]},17,1,{x,1}}]}}.
    {test,is_eq_exact,
          {f,1758},
          [{tr,{x,4},{t_integer,{0,255}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,1758},
          [{tr,{x,5},{t_integer,{0,'+inf'}}},
           {tr,{x,3},{t_integer,{0,'+inf'}}}]}.
    {test,is_eq_exact,
          {f,1758},
          [{tr,{x,1},{t_integer,{0,131071}}},
           {tr,{x,3},{t_integer,{0,'+inf'}}}]}.
    {move,{x,3},{x,0}}.
    return.
  {label,1758}.
    {move,{atom,error},{x,0}}.
    return.


{function, gh_6923, 1, 1760}.
  {label,1759}.
    {line,[{location,"bs_match_SUITE.erl",3175}]}.
    {func_info,{atom,bs_match_SUITE},{atom,gh_6923},1}.
  {label,1760}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{atom,bs_match_SUITE},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",3206}]}.
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
    {line,[{location,"bs_match_SUITE.erl",3207}]}.
    {call_ext,2,{extfunc,compile,forms,2}}.
    {test,is_tagged_tuple,{f,1766},[{x,0},3,{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,1766},[{x,1},{atom,bs_match_SUITE_gh_6923}]}.
    {get_tuple_element,{x,0},2,{x,2}}.
    {move,nil,{x,1}}.
    {move,{atom,bs_match_SUITE_gh_6923},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",3208}]}.
    {call_ext,3,{extfunc,code,load_binary,3}}.
    {test,is_tagged_tuple,{f,1765},[{x,0},2,{atom,module}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,1765},[{x,1},{atom,bs_match_SUITE_gh_6923}]}.
    {move,{literal,[<<"prefix">>,<<"action">>]},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",3209}]}.
    {call_ext,1,{extfunc,bs_match_SUITE_gh_6923,match_route,1}}.
    {test,is_eq_exact,{f,1764},[{x,0},{atom,first}]}.
    {move,{literal,[<<"prefix">>,whatever]},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",3210}]}.
    {call_ext,1,{extfunc,bs_match_SUITE_gh_6923,match_route,1}}.
    {test,is_eq_exact,{f,1763},[{x,0},{atom,second}]}.
    {move,{atom,bs_match_SUITE_gh_6923},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",3211}]}.
    {call_ext,1,{extfunc,code,delete,1}}.
    {move,{atom,bs_match_SUITE_gh_6923},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",3212}]}.
    {call_ext,1,{extfunc,code,purge,1}}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",3215}]}.
    {call,1,{f,1771}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{integer,42},{x,0}}.
    {call,1,{f,1771}}. % id/1
    {test_heap,4,1}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{y,0},{x,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {call,1,{f,1768}}. % do_gh_6923/1
    {'%',{var_info,{x,0},[{type,{t_atom,[first,second]}}]}}.
    {test,is_eq_exact,
          {f,1762},
          [{tr,{x,0},{t_atom,[first,second]}},{atom,first}]}.
    {move,{literal,<<"abc">>},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",3216}]}.
    {call,1,{f,1771}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{literal,{a,b,c}},{x,0}}.
    {call,1,{f,1771}}. % id/1
    {test_heap,4,1}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{y,0},{x,0},{x,0}}.
    {trim,1,0}.
    {call,1,{f,1768}}. % do_gh_6923/1
    {'%',{var_info,{x,0},[{type,{t_atom,[first,second]}}]}}.
    {test,is_eq_exact,
          {f,1761},
          [{tr,{x,0},{t_atom,[first,second]}},{atom,second}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1761}.
    {badmatch,{atom,first}}.
  {label,1762}.
    {line,[{location,"bs_match_SUITE.erl",3215}]}.
    {badmatch,{atom,second}}.
  {label,1763}.
    {line,[{location,"bs_match_SUITE.erl",3210}]}.
    {badmatch,{x,0}}.
  {label,1764}.
    {line,[{location,"bs_match_SUITE.erl",3209}]}.
    {badmatch,{x,0}}.
  {label,1765}.
    {line,[{location,"bs_match_SUITE.erl",3208}]}.
    {badmatch,{x,0}}.
  {label,1766}.
    {line,[{location,"bs_match_SUITE.erl",3207}]}.
    {badmatch,{x,0}}.


{function, do_gh_6923, 1, 1768}.
  {label,1767}.
    {line,[{location,"bs_match_SUITE.erl",3220}]}.
    {func_info,{atom,bs_match_SUITE},{atom,do_gh_6923},1}.
  {label,1768}.
    {'%',{var_info,{x,0},[{type,{t_cons,any,nil}}]}}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,bs_start_match3,{f,1767},3,[{x,1}],{x,1}}.
    {bs_match,{f,1767},
              {x,1},
              {commands,[{ensure_exactly,24},{'=:=',nil,24,6382179}]}}.
    {test,is_nonempty_list,{f,1767},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_nil,{f,1767},[{tr,{x,2},{t_list,any,nil}}]}.
    {test,is_integer,{f,1769},[{x,1}]}.
    {move,{atom,first},{x,0}}.
    return.
  {label,1769}.
    {test,is_tuple,{f,1767},[{x,1}]}.
    {move,{atom,second},{x,0}}.
    return.


{function, id, 1, 1771}.
  {label,1770}.
    {line,[{location,"bs_match_SUITE.erl",3225}]}.
    {func_info,{atom,bs_match_SUITE},{atom,id},1}.
  {label,1771}.
    return.


{function, module_info, 0, 1773}.
  {label,1772}.
    {line,[]}.
    {func_info,{atom,bs_match_SUITE},{atom,module_info},0}.
  {label,1773}.
    {move,{atom,bs_match_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 1775}.
  {label,1774}.
    {line,[]}.
    {func_info,{atom,bs_match_SUITE},{atom,module_info},1}.
  {label,1775}.
    {move,{x,0},{x,1}}.
    {move,{atom,bs_match_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-binary_aliases/1-fun-20-', 1, 1777}.
  {label,1776}.
    {line,[{location,"bs_match_SUITE.erl",2961}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-binary_aliases/1-fun-20-'},1}.
  {label,1777}.
    {test,is_eq_exact,{f,1778},[{x,0},{literal,<<>>}]}.
    {bs_start_match4,{atom,no_fail},1,{x,0},{x,0}}.
    {bs_match,{f,1778},{x,0},{commands,[{ensure_exactly,0}]}}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1778}.
    {move,{atom,error},{x,0}}.
    return.


{function, '-binary_aliases/1-fun-19-', 1, 1780}.
  {label,1779}.
    {line,[{location,"bs_match_SUITE.erl",2954}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-binary_aliases/1-fun-19-'},1}.
  {label,1780}.
    {test,is_eq_exact,{f,1779},[{x,0},{literal,[<<>>]}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, '-binary_aliases/1-fun-18-', 1, 1782}.
  {label,1781}.
    {line,[{location,"bs_match_SUITE.erl",2947}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-binary_aliases/1-fun-18-'},1}.
  {label,1782}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1784},1,[{x,0}],{x,1}}.
    {bs_match,{f,1783},
              {x,1},
              {commands,[{ensure_exactly,8},{get_tail,2,1,{x,0}}]}}.
    {line,[{location,"bs_match_SUITE.erl",2948}]}.
    {badmatch,{x,0}}.
  {label,1783}.
    {bs_get_tail,{x,1},{x,0},2}.
    {badmatch,{x,0}}.
  {label,1784}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-17-', 1, 1786}.
  {label,1785}.
    {line,[{location,"bs_match_SUITE.erl",2935}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-binary_aliases/1-fun-17-'},1}.
  {label,1786}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1787},1,[{x,0}],{x,0}}.
    {bs_match,{f,1787},{x,0},{commands,[{ensure_exactly,8}]}}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1787}.
    {move,{atom,error},{x,0}}.
    return.


{function, '-binary_aliases/1-fun-16-', 1, 1789}.
  {label,1788}.
    {line,[{location,"bs_match_SUITE.erl",2930}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-binary_aliases/1-fun-16-'},1}.
  {label,1789}.
    {test,is_map,{f,1788},[{x,0}]}.
    {get_map_elements,{f,1788},{tr,{x,0},{t_map,any,any}},{list,[nil,{x,1}]}}.
    {test,bs_start_match3,{f,1788},2,[{x,1}],{x,1}}.
    {bs_match,{f,1788},{x,1},{commands,[{ensure_exactly,8}]}}.
    {move,{atom,ok},{x,0}}.
    return.


{function, '-binary_aliases/1-fun-15-', 1, 1791}.
  {label,1790}.
    {line,[{location,"bs_match_SUITE.erl",2921}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-binary_aliases/1-fun-15-'},1}.
  {label,1791}.
    {allocate,0,1}.
    {line,[{location,"bs_match_SUITE.erl",2922}]}.
    {call,1,{f,1771}}. % id/1
    {test,is_nonempty_list,{f,1792},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_tuple,{f,1792},[{x,1}]}.
    {test,test_arity,{f,1792},[{x,1},2]}.
    {test,is_nil,{f,1792},[{x,2}]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,bs_start_match3,{f,1792},3,[{x,2}],{x,2}}.
    {test,bs_skip_bits2,
          {f,1792},
          [{x,2},
           {x,1},
           1,
           {field_flags,[{anno,[2922,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_match,{f,1792},{x,2},{commands,[{ensure_exactly,0}]}}.
    {move,{x,1},{x,0}}.
    {deallocate,0}.
    return.
  {label,1792}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-14-', 1, 1794}.
  {label,1793}.
    {line,[{location,"bs_match_SUITE.erl",2912}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-binary_aliases/1-fun-14-'},1}.
  {label,1794}.
    {allocate,0,1}.
    {line,[{location,"bs_match_SUITE.erl",2913}]}.
    {call,1,{f,1771}}. % id/1
    {test,is_tuple,{f,1795},[{x,0}]}.
    {test,test_arity,{f,1795},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {test,bs_start_match3,{f,1795},3,[{x,1}],{x,1}}.
    {test,bs_skip_bits2,
          {f,1795},
          [{x,1},
           {x,2},
           1,
           {field_flags,[{anno,[2913,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_match,{f,1795},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{x,2},{x,0}}.
    {deallocate,0}.
    return.
  {label,1795}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-13-', 1, 1797}.
  {label,1796}.
    {line,[{location,"bs_match_SUITE.erl",2903}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-binary_aliases/1-fun-13-'},1}.
  {label,1797}.
    {allocate,0,1}.
    {line,[{location,"bs_match_SUITE.erl",2904}]}.
    {call,1,{f,1771}}. % id/1
    {test,is_nonempty_list,{f,1798},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,bs_start_match3,{f,1798},3,[{x,1}],{x,1}}.
    {test,bs_skip_bits2,
          {f,1798},
          [{x,1},
           {x,2},
           1,
           {field_flags,[{anno,[2904,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_match,{f,1798},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1798}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-12-', 1, 1800}.
  {label,1799}.
    {line,[{location,"bs_match_SUITE.erl",2895}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-binary_aliases/1-fun-12-'},1}.
  {label,1800}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1802},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {bs_match,{f,1801},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_match,{f,1801},{x,1},{commands,[{ensure_at_least,8,1},{skip,8}]}}.
    {test,bs_get_binary2,
          {f,1801},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[2896,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_match,{f,1801},{x,1},{commands,[{ensure_exactly,0}]}}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_match,{f,1801},{x,1},{commands,[{ensure_at_least,8,1},{skip,8}]}}.
    {test,bs_get_integer2,
          {f,1801},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[2896,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {bs_match,{f,1801},{x,1},{commands,[{ensure_exactly,0}]}}.
    {test_heap,4,5}.
    {put_tuple2,{x,0},{list,[{x,2},{x,4},{x,3}]}}.
    return.
  {label,1801}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_SUITE.erl",2896}]}.
    {badmatch,{x,0}}.
  {label,1802}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-11-', 1, 1804}.
  {label,1803}.
    {line,[{location,"bs_match_SUITE.erl",2891}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-binary_aliases/1-fun-11-'},1}.
  {label,1804}.
    {test,is_map,{f,1803},[{x,0}]}.
    {get_map_elements,{f,1803},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{atom,key},{x,1}]}}.
    {test,bs_start_match3,{f,1803},2,[{x,1}],{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {bs_match,{f,1803},
              {x,1},
              {commands,[{ensure_exactly,8},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_match,{f,1803},
              {x,1},
              {commands,[{ensure_exactly,8},
                         {integer,4,{literal,[]},8,1,{x,2}}]}}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,3},{x,2}]}}.
    return.


{function, '-binary_aliases/1-fun-10-', 1, 1806}.
  {label,1805}.
    {line,[{location,"bs_match_SUITE.erl",2883}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-binary_aliases/1-fun-10-'},1}.
  {label,1806}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1808},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {bs_match,{f,1807},
              {x,1},
              {commands,[{ensure_exactly,32},
                         {integer,2,{literal,[]},8,1,{x,2}},
                         {integer,3,{literal,[]},8,1,{x,3}},
                         {integer,4,{literal,[]},8,1,{x,4}},
                         {integer,5,{literal,[]},8,1,{x,5}}]}}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_match,{f,1807},
              {x,1},
              {commands,[{ensure_exactly,32},
                         {integer,6,{literal,[]},16,1,{x,6}},
                         {integer,7,{literal,[]},16,1,{x,7}}]}}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_match,{f,1807},
              {x,1},
              {commands,[{ensure_exactly,32},
                         {binary,8,{literal,[]},8,1,{x,8}},
                         {binary,9,{literal,[]},24,1,{x,9}}]}}.
    {test_heap,9,10}.
    {put_tuple2,{x,0},
                {list,[{x,8},{x,9},{x,6},{x,7},{x,2},{x,3},{x,4},{x,5}]}}.
    return.
  {label,1807}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_SUITE.erl",2884}]}.
    {badmatch,{x,0}}.
  {label,1808}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-9-', 1, 1810}.
  {label,1809}.
    {line,[{location,"bs_match_SUITE.erl",2877}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-binary_aliases/1-fun-9-'},1}.
  {label,1810}.
    {test,is_eq_exact,{f,1811},[{x,0},{literal,<<>>}]}.
    return.
  {label,1811}.
    {line,[{location,"bs_match_SUITE.erl",2878}]}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-8-', 1, 1813}.
  {label,1812}.
    {line,[{location,"bs_match_SUITE.erl",2871}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-binary_aliases/1-fun-8-'},1}.
  {label,1813}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1815},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {bs_match,{f,1814},
              {x,1},
              {commands,[{ensure_exactly,8},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_match,{f,1814},
              {x,1},
              {commands,[{ensure_exactly,8},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},4}.
    {test_heap,7,4}.
    {put_tuple2,{x,0},{list,[{x,3},{x,2},{x,0},{x,0},{x,0},{x,0}]}}.
    return.
  {label,1814}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_SUITE.erl",2872}]}.
    {badmatch,{x,0}}.
  {label,1815}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-7-', 1, 1817}.
  {label,1816}.
    {line,[{location,"bs_match_SUITE.erl",2865}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-binary_aliases/1-fun-7-'},1}.
  {label,1817}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1819},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {bs_match,{f,1818},
              {x,1},
              {commands,[{ensure_exactly,8},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_match,{f,1818},
              {x,1},
              {commands,[{ensure_exactly,8},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},4}.
    {test_heap,5,4}.
    {put_tuple2,{x,0},{list,[{x,3},{x,2},{x,0},{x,0}]}}.
    return.
  {label,1818}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_SUITE.erl",2866}]}.
    {badmatch,{x,0}}.
  {label,1819}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-6-', 1, 1821}.
  {label,1820}.
    {line,[{location,"bs_match_SUITE.erl",2858}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-binary_aliases/1-fun-6-'},1}.
  {label,1821}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1823},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {bs_match,{f,1822},
              {x,1},
              {commands,[{ensure_exactly,8},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_match,{f,1822},
              {x,1},
              {commands,[{ensure_exactly,8},
                         {integer,3,{literal,[]},4,1,{x,3}},
                         {integer,4,{literal,[]},4,1,{x,4}}]}}.
    {test,is_eq_exact,
          {f,1822},
          [{tr,{x,4},{t_integer,{0,15}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_match,{f,1822},
              {x,1},
              {commands,[{ensure_exactly,8},
                         {integer,4,{literal,[]},8,1,{x,4}}]}}.
    {test,is_eq_exact,
          {f,1822},
          [{tr,{x,4},{t_integer,{0,255}}},{tr,{x,3},{t_integer,{0,15}}}]}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},4}.
    {test_heap,4,4}.
    {put_tuple2,{x,0},{list,[{x,3},{x,2},{x,0}]}}.
    return.
  {label,1822}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_SUITE.erl",2859}]}.
    {badmatch,{x,0}}.
  {label,1823}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-5-', 2, 1825}.
  {label,1824}.
    {line,[{location,"bs_match_SUITE.erl",2851}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-binary_aliases/1-fun-5-'},2}.
  {label,1825}.
    {line,[{location,"bs_match_SUITE.erl",2852}]}.
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
    {bs_match,{f,1826},
              {x,1},
              {commands,[{ensure_exactly,8},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {move,{x,2},{x,0}}.
    return.
  {label,1826}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-4-', 1, 1828}.
  {label,1827}.
    {line,[{location,"bs_match_SUITE.erl",2845}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-binary_aliases/1-fun-4-'},1}.
  {label,1828}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1830},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {bs_match,{f,1829},
              {x,1},
              {commands,[{ensure_exactly,8},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_match,{f,1829},
              {x,1},
              {commands,[{ensure_exactly,8},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},4}.
    {test_heap,4,4}.
    {put_tuple2,{x,0},{list,[{x,3},{x,2},{x,0}]}}.
    return.
  {label,1829}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_SUITE.erl",2846}]}.
    {badmatch,{x,0}}.
  {label,1830}.
    {badmatch,{x,0}}.


{function, '-binary_aliases/1-fun-3-', 1, 1832}.
  {label,1831}.
    {line,[{location,"bs_match_SUITE.erl",2838}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-binary_aliases/1-fun-3-'},1}.
  {label,1832}.
    {line,[{location,"bs_match_SUITE.erl",2841}]}.
    {call_ext_only,1,{extfunc,lists,sum,1}}.


{function, '-binary_aliases/1-fun-2-', 1, 1834}.
  {label,1833}.
    {line,[{location,"bs_match_SUITE.erl",2834}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-binary_aliases/1-fun-2-'},1}.
  {label,1834}.
    {test,is_tagged_tuple,{f,1833},[{x,0},4,{atom,ba_foo}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,bs_start_match3,{f,1833},2,[{x,1}],{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {bs_match,{f,1833},
              {x,1},
              {commands,[{ensure_exactly,8},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_match,{f,1833},
              {x,1},
              {commands,[{ensure_exactly,8},
                         {integer,4,{literal,[]},4,1,{x,2}},
                         {integer,4,{literal,[]},4,1,{x,4}}]}}.
    {test_heap,4,5}.
    {put_tuple2,{x,0},{list,[{x,3},{x,2},{x,4}]}}.
    return.


{function, '-binary_aliases/1-fun-1-', 1, 1836}.
  {label,1835}.
    {line,[{location,"bs_match_SUITE.erl",2830}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-binary_aliases/1-fun-1-'},1}.
  {label,1836}.
    {test,is_tagged_tuple,{f,1835},[{x,0},4,{atom,ba_foo}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,bs_start_match3,{f,1835},2,[{x,1}],{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {bs_match,{f,1835},
              {x,1},
              {commands,[{ensure_exactly,8},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_match,{f,1835},
              {x,1},
              {commands,[{ensure_exactly,8},
                         {integer,4,{literal,[]},8,1,{x,2}}]}}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,3},{x,2}]}}.
    return.


{function, '-binary_aliases/1-fun-0-', 1, 1838}.
  {label,1837}.
    {line,[{location,"bs_match_SUITE.erl",2826}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-binary_aliases/1-fun-0-'},1}.
  {label,1838}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1837},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {bs_match,{f,1839},
              {x,1},
              {commands,[{ensure_exactly,8},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_match,{f,1839},
              {x,1},
              {commands,[{ensure_exactly,8},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test_heap,3,4}.
    {put_tuple2,{x,0},{list,[{x,2},{x,3}]}}.
    return.
  {label,1839}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,1837}}.


{function, '-many_clauses/1-lc$^1/1-1-', 1, 1841}.
  {label,1840}.
    {line,[{location,"bs_match_SUITE.erl",2702}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-many_clauses/1-lc$^1/1-1-'},1}.
  {label,1841}.
    {test,is_nonempty_list,{f,1842},[{x,0}]}.
    {allocate,3,1}.
    {init_yregs,{list,[{y,0}]}}.
    {get_list,{x,0},{y,2},{y,1}}.
    {move,{y,2},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",2697}]}.
    {call_ext,1,{extfunc,erlang,phash2,1}}.
    {line,[{location,"bs_match_SUITE.erl",2699}]}.
    {bs_create_bin,{f,0},
                   0,1,16,
                   {x,1},
                   {list,[{atom,integer},
                          1,1,nil,
                          {tr,{x,0},{t_integer,{0,134217727}}},
                          {integer,16}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,2}}.
    {bs_match,{f,1845},
              {x,2},
              {commands,[{ensure_exactly,16},
                         {integer,3,{literal,[]},16,1,{x,3}}]}}.
    {line,[{location,"bs_match_SUITE.erl",2700}]}.
    {gc_bif,'+',{f,0},4,[{y,2},{tr,{x,3},{t_integer,{0,65535}}}],{y,0}}.
    {line,[{location,"bs_match_SUITE.erl",2701}]}.
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
    {test,is_eq_exact,{f,1844},[{x,0},{tr,{y,1},{t_number,any}}]}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,1841},2}. % '-many_clauses/1-lc$^1/1-1-'/1
  {label,1842}.
    {test,is_nil,{f,1843},[{x,0}]}.
    return.
  {label,1843}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {line,[{location,"bs_match_SUITE.erl",2702}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,1844}.
    {line,[{location,"bs_match_SUITE.erl",2701}]}.
    {badmatch,{x,0}}.
  {label,1845}.
    {line,[{location,"bs_match_SUITE.erl",2699}]}.
    {badmatch,{x,1}}.


{function, '-many_clauses/1-lc$^0/1-0-', 1, 1847}.
  {label,1846}.
    {line,[{location,"bs_match_SUITE.erl",2686}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-many_clauses/1-lc$^0/1-0-'},1}.
  {label,1847}.
    {test,is_nonempty_list,{f,1848},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{x,0},{y,0}}.
    {call,1,{f,1500}}. % one_clause/1
    {swap,{y,0},{x,0}}.
    {call,1,{f,1847}}. % '-many_clauses/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1848}.
    {test,is_nil,{f,1849},[{x,0}]}.
    return.
  {label,1849}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-binary_match_to_asm/1-lc$^0/1-0-', 1, 1851}.
  {label,1850}.
    {line,[{location,"bs_match_SUITE.erl",2665}]}.
    {func_info,{atom,bs_match_SUITE},
               {atom,'-binary_match_to_asm/1-lc$^0/1-0-'},
               1}.
  {label,1851}.
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
    {test,is_nonempty_list,{f,1852},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,1,{f,1851}}. % '-binary_match_to_asm/1-lc$^0/1-0-'/1
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
  {label,1852}.
    return.


{function, '-expand_and_squeeze/1-fun-0-', 1, 1854}.
  {label,1853}.
    {line,[{location,"bs_match_SUITE.erl",2607}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-expand_and_squeeze/1-fun-0-'},1}.
  {label,1854}.
    {test,is_tagged_tuple,{f,1855},[{x,0},4,{atom,bs_match}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1855},[{x,1},2,{atom,f}]}.
    {get_tuple_element,{x,0},3,{x,0}}.
    {test,is_tagged_tuple,{f,1855},[{x,0},2,{atom,commands}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_nonempty_list,{f,1855},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_eq_exact,{f,1855},[{x,1},{literal,{ensure_at_least,16,1}}]}.
    {test,is_nonempty_list,{f,1855},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_tagged_tuple,{f,1855},[{x,1},6,{atom,integer}]}.
    {get_tuple_element,{x,1},3,{x,2}}.
    {test,is_eq_exact,{f,1855},[{x,2},{integer,16}]}.
    {get_tuple_element,{x,1},4,{x,1}}.
    {test,is_eq_exact,{f,1855},[{x,1},{integer,1}]}.
    {bif,'=:=',{f,0},[{x,0},nil],{x,0}}.
    return.
  {label,1855}.
    {move,{atom,false},{x,0}}.
    return.


{function, '-em_2/1-lbc$^0/2-0-', 2, 1857}.
  {label,1856}.
    {line,[{location,"bs_match_SUITE.erl",2543}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-em_2/1-lbc$^0/2-0-'},2}.
  {label,1857}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,16,true}}]}}.
    {test,bs_start_match3,{f,1859},2,[{x,0}],{x,2}}.
    {bs_match,{f,1858},
              {x,2},
              {commands,[{ensure_at_least,8,1},
                         {skip,0},
                         {integer,3,{literal,[]},8,1,{x,0}}]}}.
    {line,[{location,"bs_match_SUITE.erl",2544}]}.
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
    {call_only,2,{f,1857}}. % '-em_2/1-lbc$^0/2-0-'/2
  {label,1858}.
    {move,{x,1},{x,0}}.
    return.
  {label,1859}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bspu_1/1-lc$^0/1-0-', 1, 1861}.
  {label,1860}.
    {line,[{location,"bs_match_SUITE.erl",2510}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-bspu_1/1-lc$^0/1-0-'},1}.
  {label,1861}.
    {'%',{var_info,{x,0},[{type,{t_bs_context,8}},accepts_match_context]}}.
    {bs_start_match4,{atom,resume},1,{x,0},{x,0}}.
    {bs_match,{f,1862},
              {x,0},
              {commands,[{ensure_at_least,40,1},
                         {binary,1,{literal,[]},5,8,{x,1}}]}}.
    {allocate,1,2}.
    {move,{x,1},{y,0}}.
    {call,1,{f,1861}}. % '-bspu_1/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1862}.
    {move,nil,{x,0}}.
    return.


{function, '-hangs_forever/1-fun-0-', 1, 1864}.
  {label,1863}.
    {line,[{location,"bs_match_SUITE.erl",2493}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-hangs_forever/1-fun-0-'},1}.
  {label,1864}.
    {call_only,1,{f,1439}}. % hangs_forever_1/1


{function, '-beam_bsm/1-fun-0-', 1, 1866}.
  {label,1865}.
    {line,[{location,"bs_match_SUITE.erl",2166}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-beam_bsm/1-fun-0-'},1}.
  {label,1866}.
    {gc_bif,'*',{f,0},1,[{x,0},{integer,2}],{x,0}}.
    return.


{function, '-num_slots_different/1-lc$^0/1-0-', 1, 1868}.
  {label,1867}.
    {line,[{location,"bs_match_SUITE.erl",2129}]}.
    {func_info,{atom,bs_match_SUITE},
               {atom,'-num_slots_different/1-lc$^0/1-0-'},
               1}.
  {label,1868}.
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
    {test,is_nonempty_list,{f,1869},[{x,0}]}.
    {allocate,2,1}.
    {get_list,{x,0},{x,0},{y,1}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {get_tuple_element,{x,0},2,{x,3}}.
    {get_tuple_element,{x,0},3,{y,0}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {move,{x,3},{x,2}}.
    {call,3,{f,1224}}. % lgettext/3
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[ok]},
                                     2 => {t_bitstring,8,false}}}}]}}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,
          {f,1870},
          [{tr,{x,1},{t_bitstring,8,false}},{tr,{y,0},{t_bitstring,8,false}}]}.
    {move,{y,1},{x,0}}.
    {call_last,1,{f,1868},2}. % '-num_slots_different/1-lc$^0/1-0-'/1
  {label,1869}.
    return.
  {label,1870}.
    {badmatch,{x,0}}.


{function, '-constant_propagation_c/0-fun-0-', 1, 1872}.
  {label,1871}.
    {line,[{location,"bs_match_SUITE.erl",2065}]}.
    {func_info,{atom,bs_match_SUITE},
               {atom,'-constant_propagation_c/0-fun-0-'},
               1}.
  {label,1872}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1874},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {bs_match,{f,1873},
              {x,1},
              {commands,[{ensure_exactly,16},
                         {integer,2,{literal,[]},16,1,{x,2}}]}}.
    {move,{x,2},{x,0}}.
    return.
  {label,1873}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_SUITE.erl",2066}]}.
    {badmatch,{x,0}}.
  {label,1874}.
    {badmatch,{x,0}}.


{function, '-bad_literals/1-lc$^3/1-3-', 2, 1876}.
  {label,1875}.
    {line,[{location,"bs_match_SUITE.erl",1949}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-bad_literals/1-lc$^3/1-3-'},2}.
  {label,1876}.
    {'%',{var_info,{x,1},[{type,{t_cons,any,nil}}]}}.
    {test,is_nonempty_list,{f,1877},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,2}}.
    {move,{literal,[0,1,2,3]},{x,0}}.
    {call_only,4,{f,1880}}. % '-bad_literals/1-lc$^4/1-4-'/4
  {label,1877}.
    {test,is_nil,{f,1878},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,1878}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bad_literals/1-lc$^4/1-4-', 4, 1880}.
  {label,1879}.
    {line,[{location,"bs_match_SUITE.erl",1950}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-bad_literals/1-lc$^4/1-4-'},4}.
  {label,1880}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,3}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_cons,any,nil}}]}}.
    {test,is_nonempty_list,{f,1881},[{x,0}]}.
    {allocate,4,4}.
    {move,{x,3},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,1},{y,3}}.
    {get_list,{x,0},{x,1},{y,0}}.
    {move,{x,3},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1949}]}.
    {call,2,{f,1151}}. % signed_lit_match/2
    {move,{y,0},{x,4}}.
    {move,{y,2},{x,2}}.
    {move,{y,3},{x,1}}.
    {move,{x,0},{y,3}}.
    {move,{y,1},{x,3}}.
    {trim,3,1}.
    {move,{x,4},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1950}]}.
    {call,4,{f,1880}}. % '-bad_literals/1-lc$^4/1-4-'/4
    {'%',{var_info,{x,0},[{type,{t_cons,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1881}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,1876}}. % '-bad_literals/1-lc$^3/1-3-'/2


{function, '-bad_literals/1-lc$^1/1-1-', 2, 1883}.
  {label,1882}.
    {line,[{location,"bs_match_SUITE.erl",1951}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-bad_literals/1-lc$^1/1-1-'},2}.
  {label,1883}.
    {'%',{var_info,{x,1},[{type,{t_cons,any,nil}}]}}.
    {test,is_nonempty_list,{f,1884},[{x,0}]}.
    {get_list,{x,0},{x,3},{x,2}}.
    {move,{literal,[0,1,2]},{x,0}}.
    {call_only,4,{f,1887}}. % '-bad_literals/1-lc$^2/1-2-'/4
  {label,1884}.
    {test,is_nil,{f,1885},[{x,0}]}.
    {move,{x,1},{x,0}}.
    return.
  {label,1885}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bad_literals/1-lc$^2/1-2-', 4, 1887}.
  {label,1886}.
    {line,[{location,"bs_match_SUITE.erl",1952}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-bad_literals/1-lc$^2/1-2-'},4}.
  {label,1887}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,2}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_cons,any,nil}}]}}.
    {test,is_nonempty_list,{f,1888},[{x,0}]}.
    {allocate,4,4}.
    {move,{x,3},{y,1}}.
    {move,{x,2},{y,2}}.
    {move,{x,1},{y,3}}.
    {get_list,{x,0},{x,1},{y,0}}.
    {move,{x,3},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1951}]}.
    {call,2,{f,1154}}. % unsigned_lit_match/2
    {move,{y,0},{x,4}}.
    {move,{y,2},{x,2}}.
    {move,{y,3},{x,1}}.
    {move,{x,0},{y,3}}.
    {move,{y,1},{x,3}}.
    {trim,3,1}.
    {move,{x,4},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1952}]}.
    {call,4,{f,1887}}. % '-bad_literals/1-lc$^2/1-2-'/4
    {'%',{var_info,{x,0},[{type,{t_cons,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1888}.
    {move,{x,2},{x,0}}.
    {call_only,2,{f,1883}}. % '-bad_literals/1-lc$^1/1-1-'/2


{function, '-bad_literals/1-lc$^0/1-0-', 1, 1890}.
  {label,1889}.
    {line,[{location,"bs_match_SUITE.erl",1954}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-bad_literals/1-lc$^0/1-0-'},1}.
  {label,1890}.
    {test,is_nonempty_list,{f,1891},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{x,0},{y,0}}.
    {line,[{location,"bs_match_SUITE.erl",1953}]}.
    {call,1,{f,1157}}. % unicode_match/1
    {swap,{y,0},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",1954}]}.
    {call,1,{f,1890}}. % '-bad_literals/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1891}.
    {test,is_nil,{f,1892},[{x,0}]}.
    return.
  {label,1892}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-haystack_2/1-lc$^0/1-0-', 2, 1894}.
  {label,1893}.
    {line,[{location,"bs_match_SUITE.erl",1565}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-haystack_2/1-lc$^0/1-0-'},2}.
  {label,1894}.
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
    {test,is_nonempty_list,{f,1895},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {get_tuple_element,{x,2},0,{x,3}}.
    {get_tuple_element,{x,2},1,{x,2}}.
    {bs_start_match4,{atom,no_fail},4,{x,1},{x,4}}.
    {test,bs_skip_bits2,
          {f,1896},
          [{x,4},
           {x,3},
           8,
           {field_flags,[{anno,[1563,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}]}.
    {test,bs_get_binary2,
          {f,1896},
          5,
          [{tr,{x,4},{t_bs_context,8}},
           {tr,{x,2},{t_integer,{10,20}}},
           8,
           {field_flags,[{anno,[1563,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {call,2,{f,1894}}. % '-haystack_2/1-lc$^0/1-0-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1895}.
    return.
  {label,1896}.
    {line,[{location,"bs_match_SUITE.erl",1563}]}.
    {badmatch,{x,1}}.


{function, '-haystack_1/1-lc$^0/1-0-', 2, 1898}.
  {label,1897}.
    {line,[{location,"bs_match_SUITE.erl",1556}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-haystack_1/1-lc$^0/1-0-'},2}.
  {label,1898}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{10,10}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,16,false}}]}}.
    {test,is_nonempty_list,{f,1899},[{x,0}]}.
    {get_tl,{x,0},{x,0}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,2}}.
    {bs_match,{f,1900},{x,2},{commands,[{ensure_exactly,80}]}}.
    {call_only,2,{f,1898}}. % '-haystack_1/1-lc$^0/1-0-'/2
  {label,1899}.
    return.
  {label,1900}.
    {line,[{location,"bs_match_SUITE.erl",1554}]}.
    {badmatch,{x,1}}.


{function, '-bad_size_2/1-lc$^0/1-0-', 1, 1902}.
  {label,1901}.
    {line,[{location,"bs_match_SUITE.erl",1536}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-bad_size_2/1-lc$^0/1-0-'},1}.
  {label,1902}.
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
    {test,is_nonempty_list,{f,1903},[{x,0}]}.
    {get_tl,{x,0},{x,0}}.
    {call_only,1,{f,1902}}. % '-bad_size_2/1-lc$^0/1-0-'/1
  {label,1903}.
    {test,is_nil,
          {f,1904},
          [{tr,{x,0},{t_union,{t_atom,[no_list]},nil,none,none,none}}]}.
    return.
  {label,1904}.
    {move,{literal,{bad_generator,no_list}},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-bad_size/1-lbc$^0/2-0-', 2, 1906}.
  {label,1905}.
    {line,[{location,"bs_match_SUITE.erl",1470}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-bad_size/1-lbc$^0/2-0-'},2}.
  {label,1906}.
    {'%',{var_info,{x,0},
                   [{type,{t_bitstring,256,true}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,256,true}}]}}.
    {move,{x,1},{x,0}}.
    return.


{function, '-zero_width/1-fun-0-', 1, 1908}.
  {label,1907}.
    {line,[{location,"bs_match_SUITE.erl",1416}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-zero_width/1-fun-0-'},1}.
  {label,1908}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,1910},1,[{x,0}],{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,1909},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,is_eq_exact,{f,1909},[{tr,{x,2},{t_integer,{0,255}}},{integer,42}]}.
    {bs_match,{f,1909},{x,0},{commands,[{ensure_exactly,0}]}}.
    {move,{atom,star},{x,0}}.
    return.
  {label,1909}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_match,{f,1910},{x,0},{commands,[{ensure_exactly,0}]}}.
    {move,{integer,0},{x,0}}.
    return.
  {label,1910}.
    {move,{atom,no_match},{x,0}}.
    return.


{function, '-coverage_beam_ssa_codegen/1-lbc$^0/2-0-', 2, 1912}.
  {label,1911}.
    {line,[{location,"bs_match_SUITE.erl",1026}]}.
    {func_info,{atom,bs_match_SUITE},
               {atom,'-coverage_beam_ssa_codegen/1-lbc$^0/2-0-'},
               2}.
  {label,1912}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,1914},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,is_eq_exact,{f,1913},[{tr,{x,2},{t_integer,{0,255}}},{integer,2}]}.
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
    {call_only,2,{f,1912}}. % '-coverage_beam_ssa_codegen/1-lbc$^0/2-0-'/2
  {label,1913}.
    {call_only,2,{f,1912}}. % '-coverage_beam_ssa_codegen/1-lbc$^0/2-0-'/2
  {label,1914}.
    {move,{atom,ok},{x,0}}.
    return.


{function, '-coverage_trim_4/1-lbc$^0/2-0-', 2, 1916}.
  {label,1915}.
    {line,[{location,"bs_match_SUITE.erl",1009}]}.
    {func_info,{atom,bs_match_SUITE},
               {atom,'-coverage_trim_4/1-lbc$^0/2-0-'},
               2}.
  {label,1916}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,8}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,16,true}}]}}.
    {bs_start_match4,{atom,no_fail},2,{x,0},{x,0}}.
    {bs_match,{f,1917},
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
    {call_only,2,{f,1916}}. % '-coverage_trim_4/1-lbc$^0/2-0-'/2
  {label,1917}.
    {move,{atom,ok},{x,0}}.
    return.


{function, '-do_coverage_bin_to_term_list/1-lbc$^0/2-0-', 2, 1919}.
  {label,1918}.
    {line,[{location,"bs_match_SUITE.erl",923}]}.
    {func_info,{atom,bs_match_SUITE},
               {atom,'-do_coverage_bin_to_term_list/1-lbc$^0/2-0-'},
               2}.
  {label,1919}.
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,1920},[{x,0}]}.
    {allocate,2,2}.
    {move,{x,1},{y,1}}.
    {get_list,{x,0},{x,0},{y,0}}.
    {call_ext,1,{extfunc,erlang,term_to_binary,1}}.
    {line,[{location,"bs_match_SUITE.erl",924}]}.
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
    {line,[{location,"bs_match_SUITE.erl",923}]}.
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
    {call_last,2,{f,1919},2}. % '-do_coverage_bin_to_term_list/1-lbc$^0/2-0-'/2
  {label,1920}.
    {move,{x,1},{x,0}}.
    return.


{function, '-coverage_bc/2-lbc$^0/2-0-', 2, 1922}.
  {label,1921}.
    {line,[{location,"bs_match_SUITE.erl",902}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-coverage_bc/2-lbc$^0/2-0-'},2}.
  {label,1922}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,255}},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {test,is_nonempty_list,{f,1923},[{x,0}]}.
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
    {call_only,2,{f,1922}}. % '-coverage_bc/2-lbc$^0/2-0-'/2
  {label,1923}.
    {move,{x,1},{x,0}}.
    return.


{function, '-coverage/1-fun-4-', 0, 1925}.
  {label,1924}.
    {line,[{location,"bs_match_SUITE.erl",878}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-coverage/1-fun-4-'},0}.
  {label,1925}.
    {move,{atom,whatever},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,throw,1}}.


{function, '-coverage/1-fun-3-', 0, 1927}.
  {label,1926}.
    {line,[{location,"bs_match_SUITE.erl",877}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-coverage/1-fun-3-'},0}.
  {label,1927}.
    {move,{integer,42},{x,0}}.
    return.


{function, '-coverage/1-fun-2-', 2, 1929}.
  {label,1928}.
    {line,[{location,"bs_match_SUITE.erl",821}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-coverage/1-fun-2-'},2}.
  {label,1929}.
    {line,[{location,"bs_match_SUITE.erl",822}]}.
    {gc_bif,'+',{f,0},2,[{x,1},{x,0}],{x,0}}.
    return.


{function, '-coverage/1-fun-1-', 2, 1931}.
  {label,1930}.
    {line,[{location,"bs_match_SUITE.erl",820}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-coverage/1-fun-1-'},2}.
  {label,1931}.
    {gc_bif,'+',{f,0},2,[{x,1},{x,0}],{x,0}}.
    return.


{function, '-coverage/1-fun-0-', 2, 1933}.
  {label,1932}.
    {line,[{location,"bs_match_SUITE.erl",819}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-coverage/1-fun-0-'},2}.
  {label,1933}.
    {gc_bif,'+',{f,0},2,[{x,1},{x,0}],{x,0}}.
    return.


{function, '-bin_and_float/1-lbc$^0/2-0-', 3, 1935}.
  {label,1934}.
    {line,[{location,"bs_match_SUITE.erl",631}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-bin_and_float/1-lbc$^0/2-0-'},3}.
  {label,1935}.
    {'%',{var_info,{x,0},[{type,{t_bs_matchable,1}},accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_bitstring,8,true}}]}}.
    {bs_start_match4,{atom,no_fail},3,{x,0},{x,0}}.
    {test,bs_get_float2,
          {f,1937},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {x,2},
           63,
           {field_flags,[{anno,[631,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,is_eq_exact,{f,1936},[{tr,{x,3},{t_float,any}},{float,1.0}]}.
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
    {call_only,3,{f,1935}}. % '-bin_and_float/1-lbc$^0/2-0-'/3
  {label,1936}.
    {call_only,3,{f,1935}}. % '-bin_and_float/1-lbc$^0/2-0-'/3
  {label,1937}.
    {move,{x,1},{x,0}}.
    return.


{function, '-null_fields/1-fun-3-', 0, 1939}.
  {label,1938}.
    {line,[{location,"bs_match_SUITE.erl",302}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-null_fields/1-fun-3-'},0}.
  {label,1939}.
    {move,{atom,tail},{x,0}}.
    return.


{function, '-null_fields/1-fun-1-', 0, 1941}.
  {label,1940}.
    {line,[{location,"bs_match_SUITE.erl",295}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-null_fields/1-fun-1-'},0}.
  {label,1941}.
    {allocate,0,0}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"bs_match_SUITE.erl",296}]}.
    {call,1,{f,1771}}. % id/1
    {move,{literal,<<>>},{x,1}}.
    {bs_start_match4,{atom,no_fail},1,{x,1},{x,1}}.
    {bs_get_position,{x,1},{x,2},2}.
    {test,bs_skip_bits2,
          {f,1942},
          [{x,1},
           {x,0},
           1,
           {field_flags,[{anno,[297,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_match,{f,1942},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{atom,tail},{x,0}}.
    {deallocate,0}.
    return.
  {label,1942}.
    {bs_set_position,{x,1},{x,2}}.
    {bs_match,{f,1943},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{atom,empty},{x,0}}.
    {deallocate,0}.
    return.
  {label,1943}.
    {move,{literal,<<>>},{x,0}}.
    {call_last,1,{f,2037},0}. % '-null_fields/1-inlined-0-'/1


{function, '-otp_5269/1-fun-15-', 0, 1945}.
  {label,1944}.
    {line,[{location,"bs_match_SUITE.erl",284}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-otp_5269/1-fun-15-'},0}.
  {label,1945}.
    {move,{literal,<<1,2,3,4>>},{x,0}}.
    {bs_start_match4,{atom,no_fail},0,{x,0},{x,0}}.
    {bs_match,{f,1946},
              {x,0},
              {commands,[{ensure_at_least,16,1},
                         {skip,8},
                         {integer,1,{literal,[]},8,1,{x,1}}]}}.
    {test,bs_skip_bits2,
          {f,1946},
          [{x,0},
           {x,1},
           8,
           {field_flags,[{anno,[285,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}]}.
    {bs_match,{f,1946},{x,0},{commands,[{ensure_exactly,0}]}}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,1946}.
    {move,{literal,<<1,2,3,4>>},{x,0}}.
    {call_only,1,{f,2043}}. % '-otp_5269/1-inlined-6-'/1


{function, '-otp_5269/1-fun-13-', 0, 1948}.
  {label,1947}.
    {line,[{location,"bs_match_SUITE.erl",280}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-otp_5269/1-fun-13-'},0}.
  {label,1948}.
    {move,{literal,[<<0,0,0,1>>,<<0,0,0,2>>,<<3>>]},{x,0}}.
    {call_only,1,{f,1950}}. % '-otp_5269/1-lc$^12/1-5-'/1


{function, '-otp_5269/1-lc$^12/1-5-', 1, 1950}.
  {label,1949}.
    {line,[{location,"bs_match_SUITE.erl",281}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-otp_5269/1-lc$^12/1-5-'},1}.
  {label,1950}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {test,is_nonempty_list,{f,1952},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_match,{f,1951},
              {x,1},
              {commands,[{ensure_exactly,32},
                         {integer,2,{literal,[]},32,1,{x,2}}]}}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {call,1,{f,1950}}. % '-otp_5269/1-lc$^12/1-5-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,4294967295}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1951}.
    {call_only,1,{f,1950}}. % '-otp_5269/1-lc$^12/1-5-'/1
  {label,1952}.
    return.


{function, '-otp_5269/1-fun-11-', 0, 1954}.
  {label,1953}.
    {line,[{location,"bs_match_SUITE.erl",275}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-otp_5269/1-fun-11-'},0}.
  {label,1954}.
    {move,{literal,<<2,65,66,67,68>>},{x,0}}.
    {bs_start_match4,{atom,no_fail},0,{x,0},{x,0}}.
    {bs_match,{f,1955},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,1,{literal,[]},8,1,{x,1}}]}}.
    {test,bs_get_binary2,
          {f,1955},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {tr,{x,1},{t_integer,{0,255}}},
           8,
           {field_flags,[{anno,[276,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_get_tail,{x,0},{x,0},3}.
    {test_heap,4,3}.
    {put_tuple2,{x,0},{list,[{x,1},{x,2},{x,0}]}}.
    return.
  {label,1955}.
    {line,[{location,"bs_match_SUITE.erl",276}]}.
    {badmatch,{literal,<<2,65,66,67,68>>}}.


{function, '-otp_5269/1-fun-10-', 0, 1957}.
  {label,1956}.
    {line,[{location,"bs_match_SUITE.erl",273}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-otp_5269/1-fun-10-'},0}.
  {label,1957}.
    {move,{integer,28},{x,0}}.
    return.


{function, '-otp_5269/1-fun-9-', 0, 1959}.
  {label,1958}.
    {line,[{location,"bs_match_SUITE.erl",269}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-otp_5269/1-fun-9-'},0}.
  {label,1959}.
    {move,{literal,[<<16,0,19>>]},{x,0}}.
    {call_only,1,{f,1961}}. % '-otp_5269/1-lc$^7/1-3-'/1


{function, '-otp_5269/1-lc$^7/1-3-', 1, 1961}.
  {label,1960}.
    {line,[{location,"bs_match_SUITE.erl",270}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-otp_5269/1-lc$^7/1-3-'},1}.
  {label,1961}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {test,is_nonempty_list,{f,1963},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_match,{f,1962},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,1962},
          3,
          [{tr,{x,1},{t_bs_context,8}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[269,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,1962},{x,1},{commands,[{ensure_exactly,0}]}}.
    {line,[{location,"bs_match_SUITE.erl",271}]}.
    {bs_create_bin,{f,0},
                   2,3,8,
                   {x,1},
                   {list,[{atom,integer},
                          1,1,nil,
                          {tr,{x,2},{t_integer,{0,'+inf'}}},
                          {integer,8}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {swap,{x,0},{x,1}}.
    {call_only,2,{f,1965}}. % '-otp_5269/1-lc$^8/1-4-'/2
  {label,1962}.
    {call_only,1,{f,1961}}. % '-otp_5269/1-lc$^7/1-3-'/1
  {label,1963}.
    return.


{function, '-otp_5269/1-lc$^8/1-4-', 2, 1965}.
  {label,1964}.
    {line,[{location,"bs_match_SUITE.erl",271}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-otp_5269/1-lc$^8/1-4-'},2}.
  {label,1965}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {'%',{var_info,{x,1},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {test,is_nonempty_list,{f,1967},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {bs_start_match4,{atom,no_fail},3,{x,2},{x,2}}.
    {bs_match,{f,1966},
              {x,2},
              {commands,[{ensure_exactly,8},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {allocate,1,4}.
    {move,{x,3},{y,0}}.
    {call,2,{f,1965}}. % '-otp_5269/1-lc$^8/1-4-'/2
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,255}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1966}.
    {call_only,2,{f,1965}}. % '-otp_5269/1-lc$^8/1-4-'/2
  {label,1967}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,1961}}. % '-otp_5269/1-lc$^7/1-3-'/1


{function, '-otp_5269/1-fun-6-', 0, 1969}.
  {label,1968}.
    {line,[{location,"bs_match_SUITE.erl",267}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-otp_5269/1-fun-6-'},0}.
  {label,1969}.
    {move,{literal,[<<" ">>]},{x,0}}.
    {call_only,1,{f,1971}}. % '-otp_5269/1-lc$^5/1-2-'/1


{function, '-otp_5269/1-lc$^5/1-2-', 1, 1971}.
  {label,1970}.
    {line,[{location,"bs_match_SUITE.erl",267}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-otp_5269/1-lc$^5/1-2-'},1}.
  {label,1971}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_bitstring,8,false},nil}}]}}.
    {test,is_nonempty_list,{f,1973},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {bs_start_match4,{atom,no_fail},2,{x,1},{x,1}}.
    {bs_match,{f,1972},
              {x,1},
              {commands,[{ensure_exactly,8},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {allocate,1,3}.
    {move,{x,2},{y,0}}.
    {call,1,{f,1971}}. % '-otp_5269/1-lc$^5/1-2-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{0,255}},nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1972}.
    {call_only,1,{f,1971}}. % '-otp_5269/1-lc$^5/1-2-'/1
  {label,1973}.
    return.


{function, '-otp_5269/1-fun-4-', 0, 1975}.
  {label,1974}.
    {line,[{location,"bs_match_SUITE.erl",265}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-otp_5269/1-fun-4-'},0}.
  {label,1975}.
    {move,{literal,<<" ">>},{x,0}}.
    {bs_start_match4,{atom,no_fail},0,{x,0},{x,0}}.
    {bs_match,{f,1976},
              {x,0},
              {commands,[{ensure_exactly,8},
                         {integer,1,{literal,[]},8,1,{x,1}}]}}.
    {move,{x,1},{x,0}}.
    return.
  {label,1976}.
    {move,{literal,<<" ">>},{x,0}}.
    {call_only,1,{f,2041}}. % '-otp_5269/1-inlined-1-'/1


{function, '-otp_5269/1-fun-2-', 0, 1978}.
  {label,1977}.
    {line,[{location,"bs_match_SUITE.erl",263}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-otp_5269/1-fun-2-'},0}.
  {label,1978}.
    {move,{literal,<<16,0,7>>},{x,0}}.
    {bs_start_match4,{atom,no_fail},0,{x,0},{x,0}}.
    {bs_match,{f,1979},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,1,{literal,[]},8,1,{x,1}}]}}.
    {test,bs_get_integer2,
          {f,1979},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {tr,{x,1},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[263,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {bs_match,{f,1979},{x,0},{commands,[{ensure_exactly,0}]}}.
    {move,{x,1},{x,0}}.
    return.
  {label,1979}.
    {badmatch,{literal,<<16,0,7>>}}.


{function, '-otp_5269/1-fun-1-', 0, 1981}.
  {label,1980}.
    {line,[{location,"bs_match_SUITE.erl",258}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-otp_5269/1-fun-1-'},0}.
  {label,1981}.
    {move,{literal,<<16,0,7>>},{x,0}}.
    {bs_start_match4,{atom,no_fail},0,{x,0},{x,0}}.
    {bs_match,{f,1982},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,1,{literal,[]},8,1,{x,1}}]}}.
    {test,bs_get_integer2,
          {f,1982},
          2,
          [{tr,{x,0},{t_bs_context,8}},
           {tr,{x,1},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[259,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,1}}.
    {bs_match,{f,1982},{x,0},{commands,[{ensure_exactly,0}]}}.
    {move,{x,1},{x,0}}.
    return.
  {label,1982}.
    {move,{literal,<<16,0,7>>},{x,0}}.
    {call_only,1,{f,2039}}. % '-otp_5269/1-inlined-0-'/1


{function, '-size_shadow_6/2-fun-0-', 5, 1984}.
  {label,1983}.
    {line,[{location,"bs_match_SUITE.erl",215}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-size_shadow_6/2-fun-0-'},5}.
  {label,1984}.
    {'%',{var_info,{x,1},[accepts_match_context]}}.
    {'%',{var_info,{x,3},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_atom,[any]},
                                     2 => {t_atom,[term]},
                                     3 => {t_atom,[goes]}}}}]}}.
    {'%',{var_info,{x,4},[{type,{t_integer,{13,13}}}]}}.
    {test,bs_start_match3,{f,1986},3,[{x,1}],{x,3}}.
    {bs_get_position,{x,3},{x,1},4}.
    {bs_match,{f,1985},
              {x,3},
              {commands,[{ensure_exactly,13},
                         {integer,4,{literal,[]},13,1,{x,4}}]}}.
    {move,{literal,{any,term,goes}},{x,1}}.
    {move,{x,2},{x,3}}.
    {move,{x,0},{x,2}}.
    {move,{x,4},{x,0}}.
    {call_only,4,{f,45}}. % fum/4
  {label,1985}.
    {bs_set_position,{x,3},{x,1}}.
    {bs_get_tail,{x,3},{x,1},4}.
    {call_only,3,{f,2061}}. % '-size_shadow_6/2-inlined-0-'/3
  {label,1986}.
    {call_only,3,{f,2061}}. % '-size_shadow_6/2-inlined-0-'/3


{function, '-size_shadow_5/2-fun-0-', 5, 1988}.
  {label,1987}.
    {line,[{location,"bs_match_SUITE.erl",212}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-size_shadow_5/2-fun-0-'},5}.
  {label,1988}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {'%',{var_info,{x,3},
                   [{type,{t_tuple,3,true,
                                   #{1 => {t_atom,[any]},
                                     2 => {t_atom,[term]},
                                     3 => {t_atom,[goes]}}}}]}}.
    {'%',{var_info,{x,4},[{type,{t_integer,{12,12}}}]}}.
    {test,bs_start_match3,{f,1990},3,[{x,0}],{x,3}}.
    {bs_get_position,{x,3},{x,0},4}.
    {bs_match,{f,1989},
              {x,3},
              {commands,[{ensure_exactly,12},
                         {integer,4,{literal,[]},12,1,{x,4}}]}}.
    {move,{x,2},{x,3}}.
    {move,{x,1},{x,2}}.
    {move,{literal,{any,term,goes}},{x,1}}.
    {move,{x,4},{x,0}}.
    {call_only,4,{f,45}}. % fum/4
  {label,1989}.
    {bs_set_position,{x,3},{x,0}}.
    {bs_get_tail,{x,3},{x,0},4}.
    {call_only,3,{f,2059}}. % '-size_shadow_5/2-inlined-0-'/3
  {label,1990}.
    {call_only,3,{f,2059}}. % '-size_shadow_5/2-inlined-0-'/3


{function, '-size_shadow_4/1-fun-1-', 2, 1992}.
  {label,1991}.
    {line,[{location,"bs_match_SUITE.erl",203}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-size_shadow_4/1-fun-1-'},2}.
  {label,1992}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{8,8}}}]}}.
    {test,bs_start_match3,{f,1993},1,[{x,0}],{x,0}}.
    {bs_get_position,{x,0},{x,1},1}.
    {bs_match,{f,1993},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,1993},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[204,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,1993},
          4,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[204,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {bs_match,{f,1993},{x,0},{commands,[{ensure_exactly,0}]}}.
    {bs_set_position,{x,0},{x,1}}.
    {bs_match,{f,1993},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,5,{literal,[]},8,1,{x,1}}]}}.
    {test,bs_get_integer2,
          {f,1993},
          5,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,1},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[204,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {test,bs_get_integer2,
          {f,1993},
          6,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,1},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[204,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {bs_match,{f,1993},{x,0},{commands,[{ensure_exactly,0}]}}.
    {test,is_eq_exact,
          {f,1993},
          [{tr,{x,6},{t_integer,{0,'+inf'}}},{tr,{x,1},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,1993},
          [{tr,{x,2},{t_integer,{0,255}}},{tr,{x,1},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,1993},
          [{tr,{x,3},{t_integer,{0,'+inf'}}},
           {tr,{x,5},{t_integer,{0,'+inf'}}}]}.
    {test,is_eq_exact,
          {f,1993},
          [{tr,{x,4},{t_integer,{0,'+inf'}}},{tr,{x,1},{t_integer,{0,255}}}]}.
    {move,{x,5},{x,0}}.
    return.
  {label,1993}.
    {move,{atom,no},{x,0}}.
    return.


{function, '-size_shadow_4/1-fun-3-', 2, 1995}.
  {label,1994}.
    {line,[{location,"bs_match_SUITE.erl",197}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-size_shadow_4/1-fun-3-'},2}.
  {label,1995}.
    {'%',{var_info,{x,1},[{type,{t_integer,{8,8}}}]}}.
    {test,bs_start_match3,{f,1996},1,[{x,0}],{x,0}}.
    {bs_match,{f,1996},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,1,{literal,[]},8,1,{x,1}}]}}.
    {test,bs_get_integer2,
          {f,1996},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,1},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[198,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1996},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,1},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[198,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_match,{f,1996},{x,0},{commands,[{ensure_exactly,0}]}}.
    {test,is_eq_exact,
          {f,1996},
          [{tr,{x,3},{t_integer,{0,'+inf'}}},{tr,{x,1},{t_integer,{0,255}}}]}.
    {move,{x,2},{x,0}}.
    return.
  {label,1996}.
    {move,{atom,no},{x,0}}.
    return.


{function, '-size_shadow_4/1-fun-4-', 2, 1998}.
  {label,1997}.
    {line,[{location,"bs_match_SUITE.erl",194}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-size_shadow_4/1-fun-4-'},2}.
  {label,1998}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{8,8}}}]}}.
    {test,bs_start_match3,{f,1999},1,[{x,0}],{x,0}}.
    {bs_match,{f,1999},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,1,{literal,[]},8,1,{x,1}}]}}.
    {test,bs_get_integer2,
          {f,1999},
          2,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,1},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[194,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {test,bs_get_integer2,
          {f,1999},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,1},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[194,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {bs_match,{f,1999},{x,0},{commands,[{ensure_exactly,0}]}}.
    {test,is_eq_exact,
          {f,1999},
          [{tr,{x,3},{t_integer,{0,'+inf'}}},{tr,{x,1},{t_integer,{0,255}}}]}.
    {move,{x,2},{x,0}}.
    return.
  {label,1999}.
    {move,{atom,no},{x,0}}.
    return.


{function, '-size_shadow_3/0-fun-1-', 1, 2001}.
  {label,2000}.
    {line,[{location,"bs_match_SUITE.erl",188}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-size_shadow_3/0-fun-1-'},1}.
  {label,2001}.
    {test_heap,4,1}.
    {put_tuple2,{x,1},{list,[{atom,tag},{x,0},{x,0}]}}.
    {test,bs_start_match3,{f,2002},2,[{x,0}],{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {bs_match,{f,2002},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,bs_get_integer2,
          {f,2002},
          4,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[189,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {test,bs_get_integer2,
          {f,2002},
          5,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[189,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {bs_match,{f,2002},{x,0},{commands,[{ensure_exactly,0}]}}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_match,{f,2002},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,6,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,2002},
          6,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[189,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {test,bs_get_integer2,
          {f,2002},
          7,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[189,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,7}}.
    {bs_match,{f,2002},{x,0},{commands,[{ensure_exactly,0}]}}.
    {test,is_eq_exact,
          {f,2002},
          [{tr,{x,7},{t_integer,{0,'+inf'}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,2002},
          [{tr,{x,3},{t_integer,{0,255}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,2002},
          [{tr,{x,4},{t_integer,{0,'+inf'}}},
           {tr,{x,6},{t_integer,{0,'+inf'}}}]}.
    {test,is_eq_exact,
          {f,2002},
          [{tr,{x,5},{t_integer,{0,'+inf'}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {move,{x,6},{x,0}}.
    return.
  {label,2002}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,2057}}. % '-size_shadow_3/0-inlined-2-'/1


{function, '-size_shadow_3/0-fun-3-', 1, 2004}.
  {label,2003}.
    {line,[{location,"bs_match_SUITE.erl",185}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-size_shadow_3/0-fun-3-'},1}.
  {label,2004}.
    {test_heap,5,1}.
    {put_list,{x,0},nil,{x,1}}.
    {put_tuple2,{x,1},{list,[{atom,tag},{x,1}]}}.
    {test,bs_start_match3,{f,2005},2,[{x,0}],{x,0}}.
    {bs_match,{f,2005},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,2005},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[186,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,2005},
          4,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[186,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {bs_match,{f,2005},{x,0},{commands,[{ensure_exactly,0}]}}.
    {test,is_eq_exact,
          {f,2005},
          [{tr,{x,4},{t_integer,{0,'+inf'}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {move,{x,3},{x,0}}.
    return.
  {label,2005}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,2055}}. % '-size_shadow_3/0-inlined-1-'/1


{function, '-size_shadow_3/0-fun-4-', 1, 2007}.
  {label,2006}.
    {line,[{location,"bs_match_SUITE.erl",184}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-size_shadow_3/0-fun-4-'},1}.
  {label,2007}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,2006},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {bs_match,{f,2008},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,2008},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[184,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,3}}.
    {test,bs_get_integer2,
          {f,2008},
          4,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[184,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {bs_match,{f,2008},{x,1},{commands,[{ensure_exactly,0}]}}.
    {test,is_eq_exact,
          {f,2008},
          [{tr,{x,4},{t_integer,{0,'+inf'}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {move,{x,3},{x,0}}.
    return.
  {label,2008}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,2006}}.


{function, '-size_shadow_2/1-fun-1-', 2, 2010}.
  {label,2009}.
    {line,[{location,"bs_match_SUITE.erl",177}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-size_shadow_2/1-fun-1-'},2}.
  {label,2010}.
    {'%',{var_info,{x,1},[{type,{t_integer,{8,8}}}]}}.
    {test_heap,3,1}.
    {put_tuple2,{x,1},{list,[{x,0},{x,0}]}}.
    {test,bs_start_match3,{f,2011},2,[{x,0}],{x,0}}.
    {bs_get_position,{x,0},{x,2},2}.
    {bs_match,{f,2011},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,bs_get_integer2,
          {f,2011},
          4,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[178,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {bs_match,{f,2011},{x,0},{commands,[{ensure_exactly,0}]}}.
    {bs_set_position,{x,0},{x,2}}.
    {bs_match,{f,2011},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,5,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,2011},
          5,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[178,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {bs_match,{f,2011},{x,0},{commands,[{ensure_exactly,0}]}}.
    {test,is_eq_exact,
          {f,2011},
          [{tr,{x,3},{t_integer,{0,255}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,2011},
          [{tr,{x,4},{t_integer,{0,'+inf'}}},
           {tr,{x,5},{t_integer,{0,'+inf'}}}]}.
    {move,{x,5},{x,0}}.
    return.
  {label,2011}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,2053}}. % '-size_shadow_2/1-inlined-2-'/1


{function, '-size_shadow_2/1-fun-3-', 2, 2013}.
  {label,2012}.
    {line,[{location,"bs_match_SUITE.erl",174}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-size_shadow_2/1-fun-3-'},2}.
  {label,2013}.
    {'%',{var_info,{x,1},[{type,{t_integer,{8,8}}}]}}.
    {test_heap,2,1}.
    {put_list,{x,0},nil,{x,1}}.
    {test,bs_start_match3,{f,2014},2,[{x,0}],{x,0}}.
    {bs_match,{f,2014},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,2014},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[175,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,2014},{x,0},{commands,[{ensure_exactly,0}]}}.
    {move,{x,2},{x,0}}.
    return.
  {label,2014}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,2051}}. % '-size_shadow_2/1-inlined-1-'/1


{function, '-size_shadow_2/1-fun-4-', 2, 2016}.
  {label,2015}.
    {line,[{location,"bs_match_SUITE.erl",173}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-size_shadow_2/1-fun-4-'},2}.
  {label,2016}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{8,8}}}]}}.
    {test,bs_start_match3,{f,2018},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {bs_match,{f,2017},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,2017},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[173,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,2017},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{x,2},{x,0}}.
    return.
  {label,2017}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {call_only,1,{f,2049}}. % '-size_shadow_2/1-inlined-0-'/1
  {label,2018}.
    {call_only,1,{f,2049}}. % '-size_shadow_2/1-inlined-0-'/1


{function, '-size_shadow_1/0-fun-1-', 1, 2020}.
  {label,2019}.
    {line,[{location,"bs_match_SUITE.erl",164}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-size_shadow_1/0-fun-1-'},1}.
  {label,2020}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,2022},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {bs_match,{f,2021},
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
    {call_only,2,{f,2024}}. % '-size_shadow_1/0-fun-0-'/2
  {label,2021}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {line,[{location,"bs_match_SUITE.erl",165}]}.
    {badmatch,{x,0}}.
  {label,2022}.
    {badmatch,{x,0}}.


{function, '-size_shadow_1/0-fun-0-', 2, 2024}.
  {label,2023}.
    {line,[{location,"bs_match_SUITE.erl",166}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-size_shadow_1/0-fun-0-'},2}.
  {label,2024}.
    {test,is_nonempty_list,{f,2023},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,3}}.
    {test,is_nil,{f,2023},[{x,3}]}.
    {test,is_tuple,{f,2023},[{x,1}]}.
    {test,test_arity,{f,2023},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_map,{f,2023},[{x,3}]}.
    {get_map_elements,{f,2023},
                      {tr,{x,3},{t_map,any,any}},
                      {list,[{atom,key2},{x,3},{atom,key1},{x,4}]}}.
    {test,bs_start_match3,{f,2023},5,[{x,3}],{x,3}}.
    {bs_match,{f,2023},
              {x,3},
              {commands,[{ensure_at_least,8,1},
                         {integer,5,{literal,[]},8,1,{x,5}}]}}.
    {test,bs_get_integer2,
          {f,2023},
          6,
          [{tr,{x,3},{t_bs_context,1}},
           {tr,{x,5},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[166,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,6}}.
    {bs_match,{f,2023},{x,3},{commands,[{ensure_exactly,0}]}}.
    {test,bs_start_match3,{f,2023},7,[{x,4}],{x,3}}.
    {bs_match,{f,2023},
              {x,3},
              {commands,[{ensure_at_least,8,1},
                         {integer,7,{literal,[]},8,1,{x,4}}]}}.
    {test,bs_get_integer2,
          {f,2023},
          7,
          [{tr,{x,3},{t_bs_context,1}},
           {tr,{x,4},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[166,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,7}}.
    {bs_match,{f,2023},{x,3},{commands,[{ensure_exactly,0}]}}.
    {test,is_eq_exact,{f,2023},[{tr,{x,4},{t_integer,{0,255}}},{x,2}]}.
    {test,is_eq_exact,
          {f,2023},
          [{tr,{x,5},{t_integer,{0,255}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,2023},
          [{tr,{x,6},{t_integer,{0,'+inf'}}},
           {tr,{x,7},{t_integer,{0,'+inf'}}}]}.
    {get_tuple_element,{x,1},1,{x,3}}.
    {test,is_eq_exact,{f,2023},[{x,3},{tr,{x,2},{t_integer,{0,255}}}]}.
    {move,{x,7},{x,0}}.
    return.


{function, '-size_shadow_1/0-fun-3-', 1, 2026}.
  {label,2025}.
    {line,[{location,"bs_match_SUITE.erl",161}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-size_shadow_1/0-fun-3-'},1}.
  {label,2026}.
    {test_heap,4,1}.
    {put_list,{x,0},nil,{x,1}}.
    {put_list,{x,0},{x,1},{x,1}}.
    {test,bs_start_match3,{f,2027},2,[{x,0}],{x,2}}.
    {bs_match,{f,2027},
              {x,2},
              {commands,[{ensure_at_least,8,1},
                         {integer,3,{literal,[]},8,1,{x,3}}]}}.
    {test,bs_get_integer2,
          {f,2027},
          4,
          [{tr,{x,2},{t_bs_context,1}},
           {tr,{x,3},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[162,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,4}}.
    {bs_match,{f,2027},{x,2},{commands,[{ensure_exactly,0}]}}.
    {bs_start_match4,{atom,no_fail},5,{x,0},{x,0}}.
    {bs_match,{f,2027},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,5,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,2027},
          5,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[162,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,5}}.
    {bs_match,{f,2027},{x,0},{commands,[{ensure_exactly,0}]}}.
    {test,is_eq_exact,
          {f,2027},
          [{tr,{x,3},{t_integer,{0,255}}},{tr,{x,2},{t_integer,{0,255}}}]}.
    {test,is_eq_exact,
          {f,2027},
          [{tr,{x,4},{t_integer,{0,'+inf'}}},
           {tr,{x,5},{t_integer,{0,'+inf'}}}]}.
    {move,{x,5},{x,0}}.
    return.
  {label,2027}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,2047}}. % '-size_shadow_1/0-inlined-2-'/1


{function, '-size_shadow_1/0-fun-5-', 1, 2029}.
  {label,2028}.
    {line,[{location,"bs_match_SUITE.erl",158}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-size_shadow_1/0-fun-5-'},1}.
  {label,2029}.
    {test_heap,2,1}.
    {put_list,{x,0},nil,{x,1}}.
    {test,bs_start_match3,{f,2030},2,[{x,0}],{x,0}}.
    {bs_match,{f,2030},
              {x,0},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,2030},
          3,
          [{tr,{x,0},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[159,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,2030},{x,0},{commands,[{ensure_exactly,0}]}}.
    {move,{x,2},{x,0}}.
    return.
  {label,2030}.
    {move,{x,1},{x,0}}.
    {call_only,1,{f,2045}}. % '-size_shadow_1/0-inlined-1-'/1


{function, '-size_shadow_1/0-fun-6-', 1, 2032}.
  {label,2031}.
    {line,[{location,"bs_match_SUITE.erl",157}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-size_shadow_1/0-fun-6-'},1}.
  {label,2032}.
    {'%',{var_info,{x,0},[accepts_match_context]}}.
    {test,bs_start_match3,{f,2031},1,[{x,0}],{x,1}}.
    {bs_get_position,{x,1},{x,0},2}.
    {bs_match,{f,2033},
              {x,1},
              {commands,[{ensure_at_least,8,1},
                         {integer,2,{literal,[]},8,1,{x,2}}]}}.
    {test,bs_get_integer2,
          {f,2033},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,255}}},
           1,
           {field_flags,[{anno,[157,{file,"bs_match_SUITE.erl"}]},
                         unsigned,big]}],
          {x,2}}.
    {bs_match,{f,2033},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{x,2},{x,0}}.
    return.
  {label,2033}.
    {bs_set_position,{x,1},{x,0}}.
    {bs_get_tail,{x,1},{x,0},2}.
    {jump,{f,2031}}.


{function, '-mos_int_fun/1-inlined-0-', 1, 2035}.
  {label,2034}.
    {line,[{location,"bs_match_SUITE.erl",1727}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-mos_int_fun/1-inlined-0-'},1}.
  {label,2035}.
    {jump,{f,2034}}.


{function, '-null_fields/1-inlined-0-', 1, 2037}.
  {label,2036}.
    {line,[{location,"bs_match_SUITE.erl",297}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-null_fields/1-inlined-0-'},1}.
  {label,2037}.
    {jump,{f,2036}}.


{function, '-otp_5269/1-inlined-0-', 1, 2039}.
  {label,2038}.
    {line,[{location,"bs_match_SUITE.erl",259}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-otp_5269/1-inlined-0-'},1}.
  {label,2039}.
    {jump,{f,2038}}.


{function, '-otp_5269/1-inlined-1-', 1, 2041}.
  {label,2040}.
    {line,[{location,"bs_match_SUITE.erl",265}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-otp_5269/1-inlined-1-'},1}.
  {label,2041}.
    {jump,{f,2040}}.


{function, '-otp_5269/1-inlined-6-', 1, 2043}.
  {label,2042}.
    {line,[{location,"bs_match_SUITE.erl",285}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-otp_5269/1-inlined-6-'},1}.
  {label,2043}.
    {jump,{f,2042}}.


{function, '-size_shadow_1/0-inlined-1-', 1, 2045}.
  {label,2044}.
    {line,[{location,"bs_match_SUITE.erl",159}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-size_shadow_1/0-inlined-1-'},1}.
  {label,2045}.
    {jump,{f,2044}}.


{function, '-size_shadow_1/0-inlined-2-', 1, 2047}.
  {label,2046}.
    {line,[{location,"bs_match_SUITE.erl",162}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-size_shadow_1/0-inlined-2-'},1}.
  {label,2047}.
    {jump,{f,2046}}.


{function, '-size_shadow_2/1-inlined-0-', 1, 2049}.
  {label,2048}.
    {line,[{location,"bs_match_SUITE.erl",173}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-size_shadow_2/1-inlined-0-'},1}.
  {label,2049}.
    {jump,{f,2048}}.


{function, '-size_shadow_2/1-inlined-1-', 1, 2051}.
  {label,2050}.
    {line,[{location,"bs_match_SUITE.erl",175}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-size_shadow_2/1-inlined-1-'},1}.
  {label,2051}.
    {jump,{f,2050}}.


{function, '-size_shadow_2/1-inlined-2-', 1, 2053}.
  {label,2052}.
    {line,[{location,"bs_match_SUITE.erl",178}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-size_shadow_2/1-inlined-2-'},1}.
  {label,2053}.
    {jump,{f,2052}}.


{function, '-size_shadow_3/0-inlined-1-', 1, 2055}.
  {label,2054}.
    {line,[{location,"bs_match_SUITE.erl",186}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-size_shadow_3/0-inlined-1-'},1}.
  {label,2055}.
    {jump,{f,2054}}.


{function, '-size_shadow_3/0-inlined-2-', 1, 2057}.
  {label,2056}.
    {line,[{location,"bs_match_SUITE.erl",189}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-size_shadow_3/0-inlined-2-'},1}.
  {label,2057}.
    {jump,{f,2056}}.


{function, '-size_shadow_5/2-inlined-0-', 3, 2059}.
  {label,2058}.
    {line,[{location,"bs_match_SUITE.erl",212}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-size_shadow_5/2-inlined-0-'},3}.
  {label,2059}.
    {jump,{f,2058}}.


{function, '-size_shadow_6/2-inlined-0-', 3, 2061}.
  {label,2060}.
    {line,[{location,"bs_match_SUITE.erl",215}]}.
    {func_info,{atom,bs_match_SUITE},{atom,'-size_shadow_6/2-inlined-0-'},3}.
  {label,2061}.
    {jump,{f,2060}}.
