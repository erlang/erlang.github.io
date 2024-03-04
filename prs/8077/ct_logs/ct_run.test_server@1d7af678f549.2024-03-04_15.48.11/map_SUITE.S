{module, map_SUITE}.  %% version = 0

{exports, [{all,0},
           {cover_beam_trim,1},
           {coverage,1},
           {end_per_group,2},
           {end_per_suite,1},
           {groups,0},
           {init_per_group,2},
           {init_per_suite,1},
           {map_aliases,1},
           {module_info,0},
           {module_info,1},
           {shared_key_tuples,1},
           {suite,0},
           {t_bad_update,1},
           {t_bif_map_find,1},
           {t_build_and_match_aliasing,1},
           {t_build_and_match_empty_val,1},
           {t_build_and_match_literals,1},
           {t_build_and_match_literals_large,1},
           {t_build_and_match_nil,1},
           {t_build_and_match_over_alloc,1},
           {t_build_and_match_structure,1},
           {t_build_and_match_val,1},
           {t_build_and_match_variables,1},
           {t_conflicting_destinations,1},
           {t_cse_assoc,1},
           {t_duplicate_keys,1},
           {t_expand_map_update,1},
           {t_export,1},
           {t_fold_3,1},
           {t_frequency_table,1},
           {t_from_keys,1},
           {t_guard_bifs,1},
           {t_guard_fun,1},
           {t_guard_receive,1},
           {t_guard_receive_large,1},
           {t_guard_sequence,1},
           {t_guard_sequence_large,1},
           {t_guard_sequence_mixed,1},
           {t_guard_sequence_variables,1},
           {t_guard_update,1},
           {t_guard_update_large,1},
           {t_guard_update_variables,1},
           {t_is_map,1},
           {t_key_expressions,1},
           {t_list_comprehension,1},
           {t_map_2,1},
           {t_map_get,1},
           {t_map_size,1},
           {t_map_sort_literals,1},
           {t_maps_take_2,1},
           {t_match_and_update_literals,1},
           {t_match_and_update_literals_large,1},
           {t_mixed_clause,1},
           {t_nested_pattern_expressions,1},
           {t_register_corruption,1},
           {t_reused_key_variable,1},
           {t_update_assoc,1},
           {t_update_assoc_large,1},
           {t_update_assoc_variables,1},
           {t_update_exact,1},
           {t_update_exact_large,1},
           {t_update_exact_variables,1},
           {t_update_literals,1},
           {t_update_literals_large,1},
           {t_update_map_expressions,1},
           {t_update_values,1},
           {t_update_with_3,1},
           {t_update_with_4,1},
           {t_warn_pair_key_overloaded,1},
           {t_warn_useless_build,1},
           {t_with_2,1}]}.

{attributes, []}.

{labels, 1276}.


{function, suite, 0, 2}.
  {label,1}.
    {line,[{location,"map_SUITE.erl",100}]}.
    {func_info,{atom,map_SUITE},{atom,suite},0}.
  {label,2}.
    {move,nil,{x,0}}.
    return.


{function, all, 0, 4}.
  {label,3}.
    {line,[{location,"map_SUITE.erl",102}]}.
    {func_info,{atom,map_SUITE},{atom,all},0}.
  {label,4}.
    {move,{literal,[t_build_and_match_literals,
                    t_build_and_match_literals_large,t_update_literals,
                    t_update_literals_large,t_match_and_update_literals,
                    t_match_and_update_literals_large,
                    t_update_map_expressions,t_update_assoc,
                    t_update_assoc_large,t_update_exact,t_update_exact_large,
                    t_guard_bifs,t_guard_sequence,t_guard_sequence_large,
                    t_guard_update,t_guard_update_large,t_guard_receive,
                    t_guard_receive_large,t_guard_fun,t_list_comprehension,
                    t_map_sort_literals,t_map_size,t_map_get,
                    t_build_and_match_aliasing,t_is_map,
                    t_build_and_match_variables,t_update_assoc_variables,
                    t_update_exact_variables,t_nested_pattern_expressions,
                    t_guard_update_variables,t_guard_sequence_variables,
                    t_guard_sequence_mixed,t_frequency_table,
                    t_warn_useless_build,t_warn_pair_key_overloaded,
                    t_build_and_match_over_alloc,t_build_and_match_empty_val,
                    t_build_and_match_val,t_build_and_match_nil,
                    t_build_and_match_structure,t_update_values,
                    t_expand_map_update,t_export,t_register_corruption,
                    t_bad_update,t_reused_key_variable,t_mixed_clause,
                    cover_beam_trim,t_duplicate_keys,t_key_expressions,
                    t_bif_map_find,t_fold_3,t_from_keys,t_map_2,t_maps_take_2,
                    t_update_with_3,t_update_with_4,t_with_2,
                    t_conflicting_destinations,t_cse_assoc,shared_key_tuples,
                    map_aliases,coverage]},
          {x,0}}.
    return.


{function, groups, 0, 6}.
  {label,5}.
    {line,[{location,"map_SUITE.erl",173}]}.
    {func_info,{atom,map_SUITE},{atom,groups},0}.
  {label,6}.
    {move,nil,{x,0}}.
    return.


{function, init_per_suite, 1, 8}.
  {label,7}.
    {line,[{location,"map_SUITE.erl",175}]}.
    {func_info,{atom,map_SUITE},{atom,init_per_suite},1}.
  {label,8}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{atom,map_SUITE},{x,0}}.
    {line,[{location,"map_SUITE.erl",176}]}.
    {call_ext,1,{extfunc,test_lib,recompile,1}}.
    {move,{y,0},{x,0}}.
    {deallocate,1}.
    return.


{function, end_per_suite, 1, 10}.
  {label,9}.
    {line,[{location,"map_SUITE.erl",179}]}.
    {func_info,{atom,map_SUITE},{atom,end_per_suite},1}.
  {label,10}.
    {move,{atom,ok},{x,0}}.
    return.


{function, init_per_group, 2, 12}.
  {label,11}.
    {line,[{location,"map_SUITE.erl",182}]}.
    {func_info,{atom,map_SUITE},{atom,init_per_group},2}.
  {label,12}.
    {move,{x,1},{x,0}}.
    return.


{function, end_per_group, 2, 14}.
  {label,13}.
    {line,[{location,"map_SUITE.erl",183}]}.
    {func_info,{atom,map_SUITE},{atom,end_per_group},2}.
  {label,14}.
    {move,{x,1},{x,0}}.
    return.


{function, t_build_and_match_literals, 1, 16}.
  {label,15}.
    {line,[{location,"map_SUITE.erl",187}]}.
    {func_info,{atom,map_SUITE},{atom,t_build_and_match_literals},1}.
  {label,16}.
    {test,is_list,{f,15},[{x,0}]}.
    {allocate,6,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3},{y,4},{y,5}]}}.
    {move,{literal,#{}},{x,0}}.
    {line,[{location,"map_SUITE.erl",188}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,52},[{x,0}]}.
    {move,{literal,#{1 => a}},{x,0}}.
    {line,[{location,"map_SUITE.erl",189}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,51},[{x,0}]}.
    {get_map_elements,{f,51},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{integer,1},{x,1}]}}.
    {test,is_eq_exact,{f,51},[{x,1},{atom,a}]}.
    {move,{literal,#{1 => a,2 => b}},{x,0}}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",190}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,50},[{x,0}]}.
    {get_map_elements,{f,50},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{integer,2},{x,2},{integer,1},{x,1}]}}.
    {test,is_eq_exact,{f,50},[{x,1},{atom,a}]}.
    {test,is_eq_exact,{f,50},[{x,2},{atom,b}]}.
    {move,{literal,#{1 => a,2 => b,3 => "c"}},{x,0}}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",191}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,49},[{x,0}]}.
    {get_map_elements,{f,49},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{integer,3},
                             {x,3},
                             {integer,2},
                             {x,2},
                             {integer,1},
                             {x,1}]}}.
    {test,is_eq_exact,{f,49},[{x,1},{atom,a}]}.
    {test,is_eq_exact,{f,49},[{x,2},{atom,b}]}.
    {test,is_eq_exact,{f,49},[{x,3},{literal,"c"}]}.
    {move,{literal,#{1 => a,2 => b,3 => "c","4" => "d"}},{x,0}}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",192}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,48},[{x,0}]}.
    {get_map_elements,{f,48},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{literal,"4"},
                             {x,4},
                             {integer,3},
                             {x,3},
                             {integer,2},
                             {x,2},
                             {integer,1},
                             {x,1}]}}.
    {test,is_eq_exact,{f,48},[{x,1},{atom,a}]}.
    {test,is_eq_exact,{f,48},[{x,2},{atom,b}]}.
    {test,is_eq_exact,{f,48},[{x,3},{literal,"c"}]}.
    {test,is_eq_exact,{f,48},[{x,4},{literal,"d"}]}.
    {move,{literal,#{1 => a,2 => b,3 => "c","4" => "d",<<"5">> => <<"e">>}},
          {x,0}}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",194}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,47},[{x,0}]}.
    {get_map_elements,{f,47},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{literal,<<"5">>},
                             {x,5},
                             {literal,"4"},
                             {x,4},
                             {integer,3},
                             {x,3},
                             {integer,2},
                             {x,2},
                             {integer,1},
                             {x,1}]}}.
    {test,is_eq_exact,{f,47},[{x,1},{atom,a}]}.
    {test,is_eq_exact,{f,47},[{x,2},{atom,b}]}.
    {test,is_eq_exact,{f,47},[{x,3},{literal,"c"}]}.
    {test,is_eq_exact,{f,47},[{x,4},{literal,"d"}]}.
    {test,is_eq_exact,{f,47},[{x,5},{literal,<<"e">>}]}.
    {move,{literal,#{1 => a,2 => b,3 => "c",
                     {"6",7} => "f",
                     "4" => "d",<<"5">> => <<"e">>}},
          {x,0}}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",196}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,46},[{x,0}]}.
    {get_map_elements,{f,46},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{literal,<<"5">>},
                             {x,6},
                             {literal,"4"},
                             {x,5},
                             {literal,{"6",7}},
                             {x,4},
                             {integer,3},
                             {x,3},
                             {integer,2},
                             {x,2},
                             {integer,1},
                             {x,1}]}}.
    {test,is_eq_exact,{f,46},[{x,1},{atom,a}]}.
    {test,is_eq_exact,{f,46},[{x,2},{atom,b}]}.
    {test,is_eq_exact,{f,46},[{x,3},{literal,"c"}]}.
    {test,is_eq_exact,{f,46},[{x,4},{literal,"f"}]}.
    {test,is_eq_exact,{f,46},[{x,5},{literal,"d"}]}.
    {test,is_eq_exact,{f,46},[{x,6},{literal,<<"e">>}]}.
    {move,{literal,#{1 => a,2 => b,3 => "c",8 => g,
                     {"6",7} => "f",
                     "4" => "d",<<"5">> => <<"e">>}},
          {x,0}}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",198}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,45},[{x,0}]}.
    {get_map_elements,{f,45},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{literal,<<"5">>},
                             {x,7},
                             {literal,"4"},
                             {x,6},
                             {literal,{"6",7}},
                             {x,5},
                             {integer,8},
                             {x,4},
                             {integer,3},
                             {x,3},
                             {integer,2},
                             {x,2},
                             {integer,1},
                             {x,1}]}}.
    {test,is_eq_exact,{f,45},[{x,1},{atom,a}]}.
    {test,is_eq_exact,{f,45},[{x,2},{atom,b}]}.
    {test,is_eq_exact,{f,45},[{x,3},{literal,"c"}]}.
    {test,is_eq_exact,{f,45},[{x,4},{atom,g}]}.
    {test,is_eq_exact,{f,45},[{x,5},{literal,"f"}]}.
    {test,is_eq_exact,{f,45},[{x,6},{literal,"d"}]}.
    {test,is_eq_exact,{f,45},[{x,7},{literal,<<"e">>}]}.
    {move,{literal,#{<<"hi all">> => 1}},{x,0}}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",200}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,44},[{x,0}]}.
    {get_map_elements,{f,44},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{literal,<<"hi all">>},{x,1}]}}.
    {test,is_eq_exact,{f,44},[{x,1},{integer,1}]}.
    {move,{literal,#{a => 3,b => 4}},{x,0}}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",202}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,43},[{x,0}]}.
    {get_map_elements,{f,43},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{atom,b},{x,2},{atom,a},{x,1}]}}.
    {test,is_eq_exact,{f,43},[{x,1},{integer,3}]}.
    {test,is_eq_exact,{f,43},[{x,2},{integer,4}]}.
    {move,{literal,#{a => #{b => #{b => second,c => third}},b => first}},
          {x,0}}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",205}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,42},[{x,0}]}.
    {get_map_elements,{f,42},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{atom,b},{x,2},{atom,a},{x,1}]}}.
    {test,is_map,{f,42},[{x,1}]}.
    {get_map_elements,{f,42},
                      {tr,{x,1},{t_map,any,any}},
                      {list,[{atom,b},{x,1}]}}.
    {test,is_map,{f,42},[{x,1}]}.
    {get_map_elements,{f,42},
                      {tr,{x,1},{t_map,any,any}},
                      {list,[{atom,c},{x,1},{atom,b},{x,3}]}}.
    {test,is_eq_exact,{f,42},[{x,3},{atom,second}]}.
    {test,is_eq_exact,{f,42},[{x,1},{atom,third}]}.
    {test,is_eq_exact,{f,42},[{x,2},{atom,first}]}.
    {move,{literal,#{map_1 =>
                         #{map_2 => #{value_3 => third},value_2 => second},
                     value_1 => first}},
          {x,0}}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",209}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,41},[{x,0}]}.
    {get_map_elements,{f,41},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{atom,value_1},{x,2},{atom,map_1},{x,1}]}}.
    {test,is_map,{f,41},[{x,1}]}.
    {get_map_elements,{f,41},
                      {tr,{x,1},{t_map,any,any}},
                      {list,[{atom,value_2},{x,1},{atom,map_2},{x,3}]}}.
    {test,is_map,{f,41},[{x,3}]}.
    {get_map_elements,{f,41},
                      {tr,{x,3},{t_map,any,any}},
                      {list,[{atom,value_3},{x,3}]}}.
    {test,is_eq_exact,{f,41},[{x,3},{atom,third}]}.
    {test,is_eq_exact,{f,41},[{x,1},{atom,second}]}.
    {test,is_eq_exact,{f,41},[{x,2},{atom,first}]}.
    {test,is_eq_exact,
          {f,40},
          [{tr,{x,0},{t_map,any,any}},
           {literal,#{map_1 =>
                          #{map_2 => #{value_3 => third},value_2 => second},
                      value_1 => first}}]}.
    {move,{literal,#{#{} => 42}},{x,0}}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",212}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,39},[{x,0}]}.
    {get_map_elements,{f,39},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{literal,#{}},{x,1}]}}.
    {test,is_eq_exact,{f,39},[{x,1},{integer,42}]}.
    {move,{literal,#{#{"a" => 3} => 42}},{x,0}}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",213}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,38},[{x,0}]}.
    {get_map_elements,{f,38},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{literal,#{"a" => 3}},{x,1}]}}.
    {test,is_eq_exact,{f,38},[{x,1},{integer,42}]}.
    {move,{literal,#{1 => 2,[] => ok}},{x,0}}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",216}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,37},[{x,0}]}.
    {get_map_elements,{f,37},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[nil,{x,2},{integer,1},{x,1}]}}.
    {test,is_eq_exact,{f,37},[{x,1},{integer,2}]}.
    {test,is_eq_exact,{f,37},[{x,2},{atom,ok}]}.
    {move,{literal,#{1 => 2,[] => ok}},{x,0}}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",217}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,36},[{x,0}]}.
    {get_map_elements,{f,36},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[nil,{x,2},{integer,1},{x,1}]}}.
    {test,is_eq_exact,{f,36},[{x,1},{integer,2}]}.
    {test,is_eq_exact,{f,36},[{x,2},{atom,ok}]}.
    {move,{literal,#{-3 => yep}},{x,0}}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",220}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,35},[{x,0}]}.
    {get_map_elements,{f,35},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{integer,-3},{x,1}]}}.
    {test,is_eq_exact,{f,35},[{x,1},{atom,yep}]}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",221}]}.
    {bs_create_bin,{f,0},
                   0,0,2,
                   {x,0},
                   {list,[{atom,integer},1,1,nil,{integer,0},{integer,358}]}}.
    {put_map_assoc,{f,0},
                   {literal,#{}},
                   {x,0},
                   1,
                   {list,[{x,0},{literal,"three"}]}}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,34},[{x,0}]}.
    {bs_create_bin,{f,34},
                   0,1,2,
                   {x,1},
                   {list,[{atom,integer},1,1,nil,{integer,0},{integer,358}]}}.
    {get_map_elements,{f,34},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{tr,{x,1},{t_bitstring,2,false}},{x,1}]}}.
    {test,is_eq_exact,{f,34},[{x,1},{literal,"three"}]}.
    {'catch',{y,5},{f,17}}.
    {move,{literal,#{x => 3}},{x,0}}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",224}]}.
    {call,1,{f,1107}}. % id/1
    {badmatch,{x,0}}.
  {label,17}.
    {catch_end,{y,5}}.
    {test,is_tagged_tuple,{f,33},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,33},[{x,1}]}.
    {test,test_arity,{f,33},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,33},[{x,1},2,{atom,badmatch}]}.
    {'catch',{y,4},{f,18}}.
    {move,{literal,#{x => 3}},{x,0}}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",225}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,23},[{x,0}]}.
    {get_map_elements,{f,23},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{atom,x},{x,1}]}}.
    {test,is_eq_exact,{f,23},[{x,1},{integer,2}]}.
  {label,18}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,32},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,32},[{x,1}]}.
    {test,test_arity,{f,32},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,32},[{x,1},2,{atom,badmatch}]}.
    {'catch',{y,3},{f,19}}.
    {move,{literal,{a,b,c}},{x,0}}.
    {line,[{scope,"\t\n"},{location,"map_SUITE.erl",226}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,24},[{x,0}]}.
    {get_map_elements,{f,24},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{atom,x},{x,1}]}}.
    {test,is_eq_exact,{f,24},[{x,1},{integer,3}]}.
  {label,19}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,31},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,31},[{x,1}]}.
    {test,test_arity,{f,31},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,31},[{x,1},2,{atom,badmatch}]}.
    {'catch',{y,2},{f,20}}.
    {move,{literal,#{y => 3}},{x,0}}.
    {line,[{scope,[7,8]},{location,"map_SUITE.erl",227}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,25},[{x,0}]}.
    {get_map_elements,{f,25},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{atom,x},{x,1}]}}.
    {test,is_eq_exact,{f,25},[{x,1},{integer,3}]}.
  {label,20}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,30},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,30},[{x,1}]}.
    {test,test_arity,{f,30},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,30},[{x,1},2,{atom,badmatch}]}.
    {'catch',{y,1},{f,21}}.
    {move,{literal,#{x => "three"}},{x,0}}.
    {line,[{scope,[5,6]},{location,"map_SUITE.erl",228}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,26},[{x,0}]}.
    {get_map_elements,{f,26},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{atom,x},{x,1}]}}.
    {test,is_eq_exact,{f,26},[{x,1},{integer,3}]}.
  {label,21}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,29},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,29},[{x,1}]}.
    {test,test_arity,{f,29},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,29},[{x,1},2,{atom,badmatch}]}.
    {'catch',{y,0},{f,22}}.
    {move,{literal,#{#{"a" => 3} => 42}},{x,0}}.
    {line,[{scope,[3,4]},{location,"map_SUITE.erl",229}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,27},[{x,0}]}.
    {get_map_elements,{f,27},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{literal,#{"a" => 42}},{x,1}]}}.
    {test,is_eq_exact,{f,27},[{x,1},{integer,3}]}.
  {label,22}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,28},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,28},[{x,1}]}.
    {test,test_arity,{f,28},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,28},[{x,1},2,{atom,badmatch}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,6}.
    return.
  {label,23}.
    {line,[{scope,"\t"},{location,"map_SUITE.erl",225}]}.
    {badmatch,{x,0}}.
  {label,24}.
    {line,[{scope,[7]},{location,"map_SUITE.erl",226}]}.
    {badmatch,{x,0}}.
  {label,25}.
    {line,[{scope,[5]},{location,"map_SUITE.erl",227}]}.
    {badmatch,{x,0}}.
  {label,26}.
    {line,[{scope,[3]},{location,"map_SUITE.erl",228}]}.
    {badmatch,{x,0}}.
  {label,27}.
    {line,[{scope,[1]},{location,"map_SUITE.erl",229}]}.
    {badmatch,{x,0}}.
  {label,28}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",229}]}.
    {badmatch,{x,0}}.
  {label,29}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",228}]}.
    {badmatch,{x,0}}.
  {label,30}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",227}]}.
    {badmatch,{x,0}}.
  {label,31}.
    {line,[{scope,[6]},{location,"map_SUITE.erl",226}]}.
    {badmatch,{x,0}}.
  {label,32}.
    {line,[{scope,"\b"},{location,"map_SUITE.erl",225}]}.
    {badmatch,{x,0}}.
  {label,33}.
    {line,[{scope,"\n"},{location,"map_SUITE.erl",224}]}.
    {badmatch,{x,0}}.
  {label,34}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",221}]}.
    {badmatch,{x,0}}.
  {label,35}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",220}]}.
    {badmatch,{x,0}}.
  {label,36}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",217}]}.
    {badmatch,{x,0}}.
  {label,37}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",216}]}.
    {badmatch,{x,0}}.
  {label,38}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",213}]}.
    {badmatch,{x,0}}.
  {label,39}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",212}]}.
    {badmatch,{x,0}}.
  {label,40}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",208}]}.
    {badmatch,{x,0}}.
  {label,41}.
    {badmatch,{x,0}}.
  {label,42}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",204}]}.
    {badmatch,{x,0}}.
  {label,43}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",202}]}.
    {badmatch,{x,0}}.
  {label,44}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",200}]}.
    {badmatch,{x,0}}.
  {label,45}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",197}]}.
    {badmatch,{x,0}}.
  {label,46}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",195}]}.
    {badmatch,{x,0}}.
  {label,47}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",193}]}.
    {badmatch,{x,0}}.
  {label,48}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",192}]}.
    {badmatch,{x,0}}.
  {label,49}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",191}]}.
    {badmatch,{x,0}}.
  {label,50}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",190}]}.
    {badmatch,{x,0}}.
  {label,51}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",189}]}.
    {badmatch,{x,0}}.
  {label,52}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",188}]}.
    {badmatch,{x,0}}.


{function, t_build_and_match_literals_large, 1, 54}.
  {label,53}.
    {line,[{location,"map_SUITE.erl",232}]}.
    {func_info,{atom,map_SUITE},{atom,t_build_and_match_literals_large},1}.
  {label,54}.
    {test,is_list,{f,53},[{x,0}]}.
    {allocate,55,0}.
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
                       {y,25},
                       {y,26},
                       {y,27},
                       {y,28},
                       {y,29},
                       {y,30},
                       {y,31},
                       {y,32},
                       {y,33},
                       {y,34},
                       {y,35},
                       {y,36},
                       {y,37},
                       {y,38},
                       {y,39},
                       {y,40},
                       {y,41},
                       {y,42},
                       {y,43},
                       {y,44},
                       {y,45},
                       {y,46},
                       {y,47},
                       {y,48},
                       {y,49},
                       {y,50},
                       {y,51},
                       {y,52},
                       {y,53},
                       {y,54}]}}.
    {move,{literal,#{10 => a0,11 => a1,12 => a2,13 => a3,14 => a4,15 => a5,
                     16 => a6,17 => a7,18 => a8,19 => a9,20 => b0,21 => b1,
                     22 => b2,23 => b3,24 => b4,25 => b5,26 => b6,27 => b7,
                     28 => b8,29 => b9,30 => "c0",31 => "c1",32 => "c2",
                     33 => "c3",34 => "c4",35 => "c5",36 => "c6",37 => "c7",
                     38 => "c8",39 => "c9",
                     {["00"]} => "10",
                     {["01"]} => "11",
                     {["02"]} => "12",
                     {["03"]} => "13",
                     {["04"]} => "14",
                     {["05"]} => "15",
                     {["06"]} => "16",
                     {["07"]} => "17",
                     {["08"]} => "18",
                     {["09"]} => "19",
                     "40" => "d0","41" => "d1","42" => "d2","43" => "d3",
                     "44" => "d4","45" => "d5","46" => "d6","47" => "d7",
                     "48" => "d8","49" => "d9",<<"50">> => "e0",
                     <<"51">> => "e1",<<"52">> => "e2",<<"53">> => "e3",
                     <<"54">> => "e4",<<"55">> => "e5",<<"56">> => "e6",
                     <<"57">> => "e7",<<"58">> => "e8",<<"59">> => "e9"}},
          {x,0}}.
    {line,[{location,"map_SUITE.erl",234}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,54}}.
    {test,is_map,{f,192},[{x,0}]}.
    {get_map_elements,{f,192},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{integer,10},{x,0}]}}.
    {get_map_elements,{f,192},
                      {tr,{y,54},{t_map,any,any}},
                      {list,[{literal,<<"50">>},
                             {x,5},
                             {literal,"40"},
                             {x,4},
                             {literal,{["00"]}},
                             {x,3},
                             {integer,30},
                             {x,2},
                             {integer,20},
                             {x,1}]}}.
    {test,is_eq_exact,{f,192},[{x,0},{atom,a0}]}.
    {test,is_eq_exact,{f,192},[{x,1},{atom,b0}]}.
    {test,is_eq_exact,{f,192},[{x,2},{literal,"c0"}]}.
    {test,is_eq_exact,{f,192},[{x,3},{literal,"10"}]}.
    {test,is_eq_exact,{f,192},[{x,4},{literal,"d0"}]}.
    {test,is_eq_exact,{f,192},[{x,5},{literal,"e0"}]}.
    {get_map_elements,{f,191},
                      {tr,{y,54},{t_map,any,any}},
                      {list,[{literal,<<"51">>},
                             {x,5},
                             {literal,"41"},
                             {x,4},
                             {literal,{["01"]}},
                             {x,3},
                             {integer,31},
                             {x,2},
                             {integer,21},
                             {x,1},
                             {integer,11},
                             {x,0}]}}.
    {test,is_eq_exact,{f,191},[{x,0},{atom,a1}]}.
    {test,is_eq_exact,{f,191},[{x,1},{atom,b1}]}.
    {test,is_eq_exact,{f,191},[{x,2},{literal,"c1"}]}.
    {test,is_eq_exact,{f,191},[{x,3},{literal,"11"}]}.
    {test,is_eq_exact,{f,191},[{x,4},{literal,"d1"}]}.
    {test,is_eq_exact,{f,191},[{x,5},{literal,"e1"}]}.
    {get_map_elements,{f,190},
                      {tr,{y,54},{t_map,any,any}},
                      {list,[{literal,<<"52">>},
                             {x,5},
                             {literal,"42"},
                             {x,4},
                             {literal,{["02"]}},
                             {x,3},
                             {integer,32},
                             {x,2},
                             {integer,22},
                             {x,1},
                             {integer,12},
                             {x,0}]}}.
    {test,is_eq_exact,{f,190},[{x,0},{atom,a2}]}.
    {test,is_eq_exact,{f,190},[{x,1},{atom,b2}]}.
    {test,is_eq_exact,{f,190},[{x,2},{literal,"c2"}]}.
    {test,is_eq_exact,{f,190},[{x,3},{literal,"12"}]}.
    {test,is_eq_exact,{f,190},[{x,4},{literal,"d2"}]}.
    {test,is_eq_exact,{f,190},[{x,5},{literal,"e2"}]}.
    {get_map_elements,{f,189},
                      {tr,{y,54},{t_map,any,any}},
                      {list,[{literal,<<"53">>},
                             {x,5},
                             {literal,"43"},
                             {x,4},
                             {literal,{["03"]}},
                             {x,3},
                             {integer,33},
                             {x,2},
                             {integer,23},
                             {x,1},
                             {integer,13},
                             {x,0}]}}.
    {test,is_eq_exact,{f,189},[{x,0},{atom,a3}]}.
    {test,is_eq_exact,{f,189},[{x,1},{atom,b3}]}.
    {test,is_eq_exact,{f,189},[{x,2},{literal,"c3"}]}.
    {test,is_eq_exact,{f,189},[{x,3},{literal,"13"}]}.
    {test,is_eq_exact,{f,189},[{x,4},{literal,"d3"}]}.
    {test,is_eq_exact,{f,189},[{x,5},{literal,"e3"}]}.
    {get_map_elements,{f,188},
                      {tr,{y,54},{t_map,any,any}},
                      {list,[{literal,<<"54">>},
                             {x,5},
                             {literal,"44"},
                             {x,4},
                             {literal,{["04"]}},
                             {x,3},
                             {integer,34},
                             {x,2},
                             {integer,24},
                             {x,1},
                             {integer,14},
                             {x,0}]}}.
    {test,is_eq_exact,{f,188},[{x,0},{atom,a4}]}.
    {test,is_eq_exact,{f,188},[{x,1},{atom,b4}]}.
    {test,is_eq_exact,{f,188},[{x,2},{literal,"c4"}]}.
    {test,is_eq_exact,{f,188},[{x,3},{literal,"14"}]}.
    {test,is_eq_exact,{f,188},[{x,4},{literal,"d4"}]}.
    {test,is_eq_exact,{f,188},[{x,5},{literal,"e4"}]}.
    {get_map_elements,{f,187},
                      {tr,{y,54},{t_map,any,any}},
                      {list,[{literal,<<"55">>},
                             {x,5},
                             {literal,"45"},
                             {x,4},
                             {literal,{["05"]}},
                             {x,3},
                             {integer,35},
                             {x,2},
                             {integer,25},
                             {x,1},
                             {integer,15},
                             {x,0}]}}.
    {test,is_eq_exact,{f,187},[{x,0},{atom,a5}]}.
    {test,is_eq_exact,{f,187},[{x,1},{atom,b5}]}.
    {test,is_eq_exact,{f,187},[{x,2},{literal,"c5"}]}.
    {test,is_eq_exact,{f,187},[{x,3},{literal,"15"}]}.
    {test,is_eq_exact,{f,187},[{x,4},{literal,"d5"}]}.
    {test,is_eq_exact,{f,187},[{x,5},{literal,"e5"}]}.
    {get_map_elements,{f,186},
                      {tr,{y,54},{t_map,any,any}},
                      {list,[{literal,<<"56">>},
                             {x,5},
                             {literal,"46"},
                             {x,4},
                             {literal,{["06"]}},
                             {x,3},
                             {integer,36},
                             {x,2},
                             {integer,26},
                             {x,1},
                             {integer,16},
                             {x,0}]}}.
    {test,is_eq_exact,{f,186},[{x,0},{atom,a6}]}.
    {test,is_eq_exact,{f,186},[{x,1},{atom,b6}]}.
    {test,is_eq_exact,{f,186},[{x,2},{literal,"c6"}]}.
    {test,is_eq_exact,{f,186},[{x,3},{literal,"16"}]}.
    {test,is_eq_exact,{f,186},[{x,4},{literal,"d6"}]}.
    {test,is_eq_exact,{f,186},[{x,5},{literal,"e6"}]}.
    {get_map_elements,{f,185},
                      {tr,{y,54},{t_map,any,any}},
                      {list,[{literal,<<"57">>},
                             {x,5},
                             {literal,"47"},
                             {x,4},
                             {literal,{["07"]}},
                             {x,3},
                             {integer,37},
                             {x,2},
                             {integer,27},
                             {x,1},
                             {integer,17},
                             {x,0}]}}.
    {test,is_eq_exact,{f,185},[{x,0},{atom,a7}]}.
    {test,is_eq_exact,{f,185},[{x,1},{atom,b7}]}.
    {test,is_eq_exact,{f,185},[{x,2},{literal,"c7"}]}.
    {test,is_eq_exact,{f,185},[{x,3},{literal,"17"}]}.
    {test,is_eq_exact,{f,185},[{x,4},{literal,"d7"}]}.
    {test,is_eq_exact,{f,185},[{x,5},{literal,"e7"}]}.
    {get_map_elements,{f,184},
                      {tr,{y,54},{t_map,any,any}},
                      {list,[{literal,<<"58">>},
                             {x,5},
                             {literal,"48"},
                             {x,4},
                             {literal,{["08"]}},
                             {x,3},
                             {integer,38},
                             {x,2},
                             {integer,28},
                             {x,1},
                             {integer,18},
                             {x,0}]}}.
    {test,is_eq_exact,{f,184},[{x,0},{atom,a8}]}.
    {test,is_eq_exact,{f,184},[{x,1},{atom,b8}]}.
    {test,is_eq_exact,{f,184},[{x,2},{literal,"c8"}]}.
    {test,is_eq_exact,{f,184},[{x,3},{literal,"18"}]}.
    {test,is_eq_exact,{f,184},[{x,4},{literal,"d8"}]}.
    {test,is_eq_exact,{f,184},[{x,5},{literal,"e8"}]}.
    {get_map_elements,{f,183},
                      {tr,{y,54},{t_map,any,any}},
                      {list,[{literal,<<"59">>},
                             {x,5},
                             {literal,"49"},
                             {x,4},
                             {literal,{["09"]}},
                             {x,3},
                             {integer,39},
                             {x,2},
                             {integer,29},
                             {x,1},
                             {integer,19},
                             {x,0}]}}.
    {test,is_eq_exact,{f,183},[{x,0},{atom,a9}]}.
    {test,is_eq_exact,{f,183},[{x,1},{atom,b9}]}.
    {test,is_eq_exact,{f,183},[{x,2},{literal,"c9"}]}.
    {test,is_eq_exact,{f,183},[{x,3},{literal,"19"}]}.
    {test,is_eq_exact,{f,183},[{x,4},{literal,"d9"}]}.
    {test,is_eq_exact,{f,183},[{x,5},{literal,"e9"}]}.
    {line,[{location,"map_SUITE.erl",258}]}.
    {gc_bif,map_size,{f,0},0,[{tr,{y,54},{t_map,any,any}}],{x,0}}.
    {test,is_eq_exact,
          {f,182},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},{integer,60}]}.
    {move,{literal,#{10 => na0,11 => na1,12 => na2,13 => na3,14 => na4,
                     15 => a5,16 => a6,17 => a7,18 => a8,19 => a9,20 => nb0,
                     21 => nb1,22 => nb2,23 => nb3,24 => nb4,25 => b5,
                     26 => b6,27 => b7,28 => b8,29 => b9,30 => "nc0",
                     31 => "nc1",32 => "nc2",33 => "nc3",34 => "nc4",
                     35 => "c5",36 => "c6",37 => "c7",38 => "c8",39 => "c9",
                     {["00"]} => "n10",
                     {["01"]} => "n11",
                     {["02"]} => "n12",
                     {["03"]} => "n13",
                     {["04"]} => "n14",
                     {["05"]} => "15",
                     {["06"]} => "16",
                     {["07"]} => "17",
                     {["08"]} => "18",
                     {["09"]} => "19",
                     "40" => "nd0","41" => "nd1","42" => "nd2","43" => "nd3",
                     "44" => "nd4","45" => "d5","46" => "d6","47" => "d7",
                     "48" => "d8","49" => "d9",<<"50">> => "ne0",
                     <<"51">> => "ne1",<<"52">> => "ne2",<<"53">> => "ne3",
                     <<"54">> => "ne4",<<"55">> => "e5",<<"56">> => "e6",
                     <<"57">> => "e7",<<"58">> => "e8",<<"59">> => "e9"}},
          {x,0}}.
    {line,[{location,"map_SUITE.erl",262}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,53}}.
    {test,is_map,{f,181},[{x,0}]}.
    {get_map_elements,{f,181},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{integer,10},{x,0}]}}.
    {get_map_elements,{f,181},
                      {tr,{y,53},{t_map,any,any}},
                      {list,[{literal,<<"50">>},
                             {x,5},
                             {literal,"40"},
                             {x,4},
                             {literal,{["00"]}},
                             {x,3},
                             {integer,30},
                             {x,2},
                             {integer,20},
                             {x,1}]}}.
    {test,is_eq_exact,{f,181},[{x,0},{atom,na0}]}.
    {test,is_eq_exact,{f,181},[{x,1},{atom,nb0}]}.
    {test,is_eq_exact,{f,181},[{x,2},{literal,"nc0"}]}.
    {test,is_eq_exact,{f,181},[{x,3},{literal,"n10"}]}.
    {test,is_eq_exact,{f,181},[{x,4},{literal,"nd0"}]}.
    {test,is_eq_exact,{f,181},[{x,5},{literal,"ne0"}]}.
    {get_map_elements,{f,180},
                      {tr,{y,53},{t_map,any,any}},
                      {list,[{literal,<<"51">>},
                             {x,5},
                             {literal,"41"},
                             {x,4},
                             {literal,{["01"]}},
                             {x,3},
                             {integer,31},
                             {x,2},
                             {integer,21},
                             {x,1},
                             {integer,11},
                             {x,0}]}}.
    {test,is_eq_exact,{f,180},[{x,0},{atom,na1}]}.
    {test,is_eq_exact,{f,180},[{x,1},{atom,nb1}]}.
    {test,is_eq_exact,{f,180},[{x,2},{literal,"nc1"}]}.
    {test,is_eq_exact,{f,180},[{x,3},{literal,"n11"}]}.
    {test,is_eq_exact,{f,180},[{x,4},{literal,"nd1"}]}.
    {test,is_eq_exact,{f,180},[{x,5},{literal,"ne1"}]}.
    {get_map_elements,{f,179},
                      {tr,{y,53},{t_map,any,any}},
                      {list,[{literal,<<"52">>},
                             {x,5},
                             {literal,"42"},
                             {x,4},
                             {literal,{["02"]}},
                             {x,3},
                             {integer,32},
                             {x,2},
                             {integer,22},
                             {x,1},
                             {integer,12},
                             {x,0}]}}.
    {test,is_eq_exact,{f,179},[{x,0},{atom,na2}]}.
    {test,is_eq_exact,{f,179},[{x,1},{atom,nb2}]}.
    {test,is_eq_exact,{f,179},[{x,2},{literal,"nc2"}]}.
    {test,is_eq_exact,{f,179},[{x,3},{literal,"n12"}]}.
    {test,is_eq_exact,{f,179},[{x,4},{literal,"nd2"}]}.
    {test,is_eq_exact,{f,179},[{x,5},{literal,"ne2"}]}.
    {get_map_elements,{f,178},
                      {tr,{y,53},{t_map,any,any}},
                      {list,[{literal,<<"53">>},
                             {x,5},
                             {literal,"43"},
                             {x,4},
                             {literal,{["03"]}},
                             {x,3},
                             {integer,33},
                             {x,2},
                             {integer,23},
                             {x,1},
                             {integer,13},
                             {x,0}]}}.
    {test,is_eq_exact,{f,178},[{x,0},{atom,na3}]}.
    {test,is_eq_exact,{f,178},[{x,1},{atom,nb3}]}.
    {test,is_eq_exact,{f,178},[{x,2},{literal,"nc3"}]}.
    {test,is_eq_exact,{f,178},[{x,3},{literal,"n13"}]}.
    {test,is_eq_exact,{f,178},[{x,4},{literal,"nd3"}]}.
    {test,is_eq_exact,{f,178},[{x,5},{literal,"ne3"}]}.
    {get_map_elements,{f,177},
                      {tr,{y,53},{t_map,any,any}},
                      {list,[{literal,<<"54">>},
                             {x,5},
                             {literal,"44"},
                             {x,4},
                             {literal,{["04"]}},
                             {x,3},
                             {integer,34},
                             {x,2},
                             {integer,24},
                             {x,1},
                             {integer,14},
                             {x,0}]}}.
    {test,is_eq_exact,{f,177},[{x,0},{atom,na4}]}.
    {test,is_eq_exact,{f,177},[{x,1},{atom,nb4}]}.
    {test,is_eq_exact,{f,177},[{x,2},{literal,"nc4"}]}.
    {test,is_eq_exact,{f,177},[{x,3},{literal,"n14"}]}.
    {test,is_eq_exact,{f,177},[{x,4},{literal,"nd4"}]}.
    {test,is_eq_exact,{f,177},[{x,5},{literal,"ne4"}]}.
    {get_map_elements,{f,176},
                      {tr,{y,53},{t_map,any,any}},
                      {list,[{literal,<<"55">>},
                             {x,5},
                             {literal,"45"},
                             {x,4},
                             {literal,{["05"]}},
                             {x,3},
                             {integer,35},
                             {x,2},
                             {integer,25},
                             {x,1},
                             {integer,15},
                             {x,0}]}}.
    {test,is_eq_exact,{f,176},[{x,0},{atom,a5}]}.
    {test,is_eq_exact,{f,176},[{x,1},{atom,b5}]}.
    {test,is_eq_exact,{f,176},[{x,2},{literal,"c5"}]}.
    {test,is_eq_exact,{f,176},[{x,3},{literal,"15"}]}.
    {test,is_eq_exact,{f,176},[{x,4},{literal,"d5"}]}.
    {test,is_eq_exact,{f,176},[{x,5},{literal,"e5"}]}.
    {get_map_elements,{f,175},
                      {tr,{y,53},{t_map,any,any}},
                      {list,[{literal,<<"56">>},
                             {x,5},
                             {literal,"46"},
                             {x,4},
                             {literal,{["06"]}},
                             {x,3},
                             {integer,36},
                             {x,2},
                             {integer,26},
                             {x,1},
                             {integer,16},
                             {x,0}]}}.
    {test,is_eq_exact,{f,175},[{x,0},{atom,a6}]}.
    {test,is_eq_exact,{f,175},[{x,1},{atom,b6}]}.
    {test,is_eq_exact,{f,175},[{x,2},{literal,"c6"}]}.
    {test,is_eq_exact,{f,175},[{x,3},{literal,"16"}]}.
    {test,is_eq_exact,{f,175},[{x,4},{literal,"d6"}]}.
    {test,is_eq_exact,{f,175},[{x,5},{literal,"e6"}]}.
    {get_map_elements,{f,174},
                      {tr,{y,53},{t_map,any,any}},
                      {list,[{literal,<<"57">>},
                             {x,5},
                             {literal,"47"},
                             {x,4},
                             {literal,{["07"]}},
                             {x,3},
                             {integer,37},
                             {x,2},
                             {integer,27},
                             {x,1},
                             {integer,17},
                             {x,0}]}}.
    {test,is_eq_exact,{f,174},[{x,0},{atom,a7}]}.
    {test,is_eq_exact,{f,174},[{x,1},{atom,b7}]}.
    {test,is_eq_exact,{f,174},[{x,2},{literal,"c7"}]}.
    {test,is_eq_exact,{f,174},[{x,3},{literal,"17"}]}.
    {test,is_eq_exact,{f,174},[{x,4},{literal,"d7"}]}.
    {test,is_eq_exact,{f,174},[{x,5},{literal,"e7"}]}.
    {get_map_elements,{f,173},
                      {tr,{y,53},{t_map,any,any}},
                      {list,[{literal,<<"58">>},
                             {x,5},
                             {literal,"48"},
                             {x,4},
                             {literal,{["08"]}},
                             {x,3},
                             {integer,38},
                             {x,2},
                             {integer,28},
                             {x,1},
                             {integer,18},
                             {x,0}]}}.
    {test,is_eq_exact,{f,173},[{x,0},{atom,a8}]}.
    {test,is_eq_exact,{f,173},[{x,1},{atom,b8}]}.
    {test,is_eq_exact,{f,173},[{x,2},{literal,"c8"}]}.
    {test,is_eq_exact,{f,173},[{x,3},{literal,"18"}]}.
    {test,is_eq_exact,{f,173},[{x,4},{literal,"d8"}]}.
    {test,is_eq_exact,{f,173},[{x,5},{literal,"e8"}]}.
    {get_map_elements,{f,172},
                      {tr,{y,53},{t_map,any,any}},
                      {list,[{literal,<<"59">>},
                             {x,5},
                             {literal,"49"},
                             {x,4},
                             {literal,{["09"]}},
                             {x,3},
                             {integer,39},
                             {x,2},
                             {integer,29},
                             {x,1},
                             {integer,19},
                             {x,0}]}}.
    {test,is_eq_exact,{f,172},[{x,0},{atom,a9}]}.
    {test,is_eq_exact,{f,172},[{x,1},{atom,b9}]}.
    {test,is_eq_exact,{f,172},[{x,2},{literal,"c9"}]}.
    {test,is_eq_exact,{f,172},[{x,3},{literal,"19"}]}.
    {test,is_eq_exact,{f,172},[{x,4},{literal,"d9"}]}.
    {test,is_eq_exact,{f,172},[{x,5},{literal,"e9"}]}.
    {line,[{location,"map_SUITE.erl",294}]}.
    {gc_bif,map_size,{f,0},0,[{tr,{y,53},{t_map,any,any}}],{x,0}}.
    {test,is_eq_exact,
          {f,171},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},{integer,60}]}.
    {move,{literal,#{10 => a0,11 => a1,12 => a2,13 => a3,14 => a4,15 => a5,
                     16 => a6,17 => a7,18 => a8,19 => a9,20 => b0,21 => b1,
                     22 => b2,23 => b3,24 => b4,25 => b5,26 => b6,27 => b7,
                     28 => b8,29 => b9,30 => "c0",31 => "c1",32 => "c2",
                     33 => "c3",34 => "c4",35 => "c5",36 => "c6",37 => "c7",
                     38 => "c8",39 => "c9",10.0 => fa0,11.0 => fa1,
                     12.0 => fa2,13.0 => fa3,14.0 => fa4,15.0 => fa5,
                     16.0 => fa6,17.0 => fa7,18.0 => fa8,19.0 => fa9,
                     20.0 => fb0,21.0 => fb1,22.0 => fb2,23.0 => fb3,
                     24.0 => fb4,25.0 => fb5,26.0 => fb6,27.0 => fb7,
                     28.0 => fb8,29.0 => fb9,30.0 => "fc0",31.0 => "fc1",
                     32.0 => "fc2",33.0 => "fc3",34.0 => "fc4",35.0 => "fc5",
                     36.0 => "fc6",37.0 => "fc7",38.0 => "fc8",39.0 => "fc9",
                     {["00"]} => "10",
                     {["01"]} => "11",
                     {["02"]} => "12",
                     {["03"]} => "13",
                     {["04"]} => "14",
                     {["05"]} => "15",
                     {["06"]} => "16",
                     {["07"]} => "17",
                     {["08"]} => "18",
                     {["09"]} => "19",
                     "40" => "d0","41" => "d1","42" => "d2","43" => "d3",
                     "44" => "d4","45" => "d5","46" => "d6","47" => "d7",
                     "48" => "d8","49" => "d9",<<"50">> => "e0",
                     <<"51">> => "e1",<<"52">> => "e2",<<"53">> => "e3",
                     <<"54">> => "e4",<<"55">> => "e5",<<"56">> => "e6",
                     <<"57">> => "e7",<<"58">> => "e8",<<"59">> => "e9"}},
          {x,0}}.
    {line,[{location,"map_SUITE.erl",299}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,52}}.
    {test,is_map,{f,170},[{x,0}]}.
    {get_map_elements,{f,170},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{integer,10},{x,0}]}}.
    {get_map_elements,{f,170},
                      {tr,{y,52},{t_map,any,any}},
                      {list,[{literal,<<"50">>},
                             {x,5},
                             {literal,"40"},
                             {x,4},
                             {literal,{["00"]}},
                             {x,3},
                             {integer,30},
                             {x,2},
                             {integer,20},
                             {x,1}]}}.
    {test,is_eq_exact,{f,170},[{x,0},{atom,a0}]}.
    {test,is_eq_exact,{f,170},[{x,1},{atom,b0}]}.
    {test,is_eq_exact,{f,170},[{x,2},{literal,"c0"}]}.
    {test,is_eq_exact,{f,170},[{x,3},{literal,"10"}]}.
    {test,is_eq_exact,{f,170},[{x,4},{literal,"d0"}]}.
    {test,is_eq_exact,{f,170},[{x,5},{literal,"e0"}]}.
    {get_map_elements,{f,169},
                      {tr,{y,52},{t_map,any,any}},
                      {list,[{literal,<<"51">>},
                             {x,5},
                             {literal,"41"},
                             {x,4},
                             {literal,{["01"]}},
                             {x,3},
                             {integer,31},
                             {x,2},
                             {integer,21},
                             {x,1},
                             {integer,11},
                             {x,0}]}}.
    {test,is_eq_exact,{f,169},[{x,0},{atom,a1}]}.
    {test,is_eq_exact,{f,169},[{x,1},{atom,b1}]}.
    {test,is_eq_exact,{f,169},[{x,2},{literal,"c1"}]}.
    {test,is_eq_exact,{f,169},[{x,3},{literal,"11"}]}.
    {test,is_eq_exact,{f,169},[{x,4},{literal,"d1"}]}.
    {test,is_eq_exact,{f,169},[{x,5},{literal,"e1"}]}.
    {get_map_elements,{f,168},
                      {tr,{y,52},{t_map,any,any}},
                      {list,[{literal,<<"52">>},
                             {x,5},
                             {literal,"42"},
                             {x,4},
                             {literal,{["02"]}},
                             {x,3},
                             {integer,32},
                             {x,2},
                             {integer,22},
                             {x,1},
                             {integer,12},
                             {x,0}]}}.
    {test,is_eq_exact,{f,168},[{x,0},{atom,a2}]}.
    {test,is_eq_exact,{f,168},[{x,1},{atom,b2}]}.
    {test,is_eq_exact,{f,168},[{x,2},{literal,"c2"}]}.
    {test,is_eq_exact,{f,168},[{x,3},{literal,"12"}]}.
    {test,is_eq_exact,{f,168},[{x,4},{literal,"d2"}]}.
    {test,is_eq_exact,{f,168},[{x,5},{literal,"e2"}]}.
    {get_map_elements,{f,167},
                      {tr,{y,52},{t_map,any,any}},
                      {list,[{literal,<<"53">>},
                             {x,5},
                             {literal,"43"},
                             {x,4},
                             {literal,{["03"]}},
                             {x,3},
                             {integer,33},
                             {x,2},
                             {integer,23},
                             {x,1},
                             {integer,13},
                             {x,0}]}}.
    {test,is_eq_exact,{f,167},[{x,0},{atom,a3}]}.
    {test,is_eq_exact,{f,167},[{x,1},{atom,b3}]}.
    {test,is_eq_exact,{f,167},[{x,2},{literal,"c3"}]}.
    {test,is_eq_exact,{f,167},[{x,3},{literal,"13"}]}.
    {test,is_eq_exact,{f,167},[{x,4},{literal,"d3"}]}.
    {test,is_eq_exact,{f,167},[{x,5},{literal,"e3"}]}.
    {get_map_elements,{f,166},
                      {tr,{y,52},{t_map,any,any}},
                      {list,[{literal,<<"54">>},
                             {x,5},
                             {literal,"44"},
                             {x,4},
                             {literal,{["04"]}},
                             {x,3},
                             {integer,34},
                             {x,2},
                             {integer,24},
                             {x,1},
                             {integer,14},
                             {x,0}]}}.
    {test,is_eq_exact,{f,166},[{x,0},{atom,a4}]}.
    {test,is_eq_exact,{f,166},[{x,1},{atom,b4}]}.
    {test,is_eq_exact,{f,166},[{x,2},{literal,"c4"}]}.
    {test,is_eq_exact,{f,166},[{x,3},{literal,"14"}]}.
    {test,is_eq_exact,{f,166},[{x,4},{literal,"d4"}]}.
    {test,is_eq_exact,{f,166},[{x,5},{literal,"e4"}]}.
    {get_map_elements,{f,165},
                      {tr,{y,52},{t_map,any,any}},
                      {list,[{literal,<<"55">>},
                             {x,5},
                             {literal,"45"},
                             {x,4},
                             {literal,{["05"]}},
                             {x,3},
                             {integer,35},
                             {x,2},
                             {integer,25},
                             {x,1},
                             {integer,15},
                             {x,0}]}}.
    {test,is_eq_exact,{f,165},[{x,0},{atom,a5}]}.
    {test,is_eq_exact,{f,165},[{x,1},{atom,b5}]}.
    {test,is_eq_exact,{f,165},[{x,2},{literal,"c5"}]}.
    {test,is_eq_exact,{f,165},[{x,3},{literal,"15"}]}.
    {test,is_eq_exact,{f,165},[{x,4},{literal,"d5"}]}.
    {test,is_eq_exact,{f,165},[{x,5},{literal,"e5"}]}.
    {get_map_elements,{f,164},
                      {tr,{y,52},{t_map,any,any}},
                      {list,[{literal,<<"56">>},
                             {x,5},
                             {literal,"46"},
                             {x,4},
                             {literal,{["06"]}},
                             {x,3},
                             {integer,36},
                             {x,2},
                             {integer,26},
                             {x,1},
                             {integer,16},
                             {x,0}]}}.
    {test,is_eq_exact,{f,164},[{x,0},{atom,a6}]}.
    {test,is_eq_exact,{f,164},[{x,1},{atom,b6}]}.
    {test,is_eq_exact,{f,164},[{x,2},{literal,"c6"}]}.
    {test,is_eq_exact,{f,164},[{x,3},{literal,"16"}]}.
    {test,is_eq_exact,{f,164},[{x,4},{literal,"d6"}]}.
    {test,is_eq_exact,{f,164},[{x,5},{literal,"e6"}]}.
    {get_map_elements,{f,163},
                      {tr,{y,52},{t_map,any,any}},
                      {list,[{literal,<<"57">>},
                             {x,5},
                             {literal,"47"},
                             {x,4},
                             {literal,{["07"]}},
                             {x,3},
                             {integer,37},
                             {x,2},
                             {integer,27},
                             {x,1},
                             {integer,17},
                             {x,0}]}}.
    {test,is_eq_exact,{f,163},[{x,0},{atom,a7}]}.
    {test,is_eq_exact,{f,163},[{x,1},{atom,b7}]}.
    {test,is_eq_exact,{f,163},[{x,2},{literal,"c7"}]}.
    {test,is_eq_exact,{f,163},[{x,3},{literal,"17"}]}.
    {test,is_eq_exact,{f,163},[{x,4},{literal,"d7"}]}.
    {test,is_eq_exact,{f,163},[{x,5},{literal,"e7"}]}.
    {get_map_elements,{f,162},
                      {tr,{y,52},{t_map,any,any}},
                      {list,[{literal,<<"58">>},
                             {x,5},
                             {literal,"48"},
                             {x,4},
                             {literal,{["08"]}},
                             {x,3},
                             {integer,38},
                             {x,2},
                             {integer,28},
                             {x,1},
                             {integer,18},
                             {x,0}]}}.
    {test,is_eq_exact,{f,162},[{x,0},{atom,a8}]}.
    {test,is_eq_exact,{f,162},[{x,1},{atom,b8}]}.
    {test,is_eq_exact,{f,162},[{x,2},{literal,"c8"}]}.
    {test,is_eq_exact,{f,162},[{x,3},{literal,"18"}]}.
    {test,is_eq_exact,{f,162},[{x,4},{literal,"d8"}]}.
    {test,is_eq_exact,{f,162},[{x,5},{literal,"e8"}]}.
    {get_map_elements,{f,161},
                      {tr,{y,52},{t_map,any,any}},
                      {list,[{literal,<<"59">>},
                             {x,5},
                             {literal,"49"},
                             {x,4},
                             {literal,{["09"]}},
                             {x,3},
                             {integer,39},
                             {x,2},
                             {integer,29},
                             {x,1},
                             {integer,19},
                             {x,0}]}}.
    {test,is_eq_exact,{f,161},[{x,0},{atom,a9}]}.
    {test,is_eq_exact,{f,161},[{x,1},{atom,b9}]}.
    {test,is_eq_exact,{f,161},[{x,2},{literal,"c9"}]}.
    {test,is_eq_exact,{f,161},[{x,3},{literal,"19"}]}.
    {test,is_eq_exact,{f,161},[{x,4},{literal,"d9"}]}.
    {test,is_eq_exact,{f,161},[{x,5},{literal,"e9"}]}.
    {get_map_elements,{f,160},
                      {tr,{y,52},{t_map,any,any}},
                      {list,[{float,30.0},
                             {x,2},
                             {float,20.0},
                             {x,1},
                             {float,10.0},
                             {x,0}]}}.
    {test,is_eq_exact,{f,160},[{x,0},{atom,fa0}]}.
    {test,is_eq_exact,{f,160},[{x,1},{atom,fb0}]}.
    {test,is_eq_exact,{f,160},[{x,2},{literal,"fc0"}]}.
    {get_map_elements,{f,159},
                      {tr,{y,52},{t_map,any,any}},
                      {list,[{float,31.0},
                             {x,2},
                             {float,21.0},
                             {x,1},
                             {float,11.0},
                             {x,0}]}}.
    {test,is_eq_exact,{f,159},[{x,0},{atom,fa1}]}.
    {test,is_eq_exact,{f,159},[{x,1},{atom,fb1}]}.
    {test,is_eq_exact,{f,159},[{x,2},{literal,"fc1"}]}.
    {get_map_elements,{f,158},
                      {tr,{y,52},{t_map,any,any}},
                      {list,[{float,32.0},
                             {x,2},
                             {float,22.0},
                             {x,1},
                             {float,12.0},
                             {x,0}]}}.
    {test,is_eq_exact,{f,158},[{x,0},{atom,fa2}]}.
    {test,is_eq_exact,{f,158},[{x,1},{atom,fb2}]}.
    {test,is_eq_exact,{f,158},[{x,2},{literal,"fc2"}]}.
    {get_map_elements,{f,157},
                      {tr,{y,52},{t_map,any,any}},
                      {list,[{float,33.0},
                             {x,2},
                             {float,23.0},
                             {x,1},
                             {float,13.0},
                             {x,0}]}}.
    {test,is_eq_exact,{f,157},[{x,0},{atom,fa3}]}.
    {test,is_eq_exact,{f,157},[{x,1},{atom,fb3}]}.
    {test,is_eq_exact,{f,157},[{x,2},{literal,"fc3"}]}.
    {get_map_elements,{f,156},
                      {tr,{y,52},{t_map,any,any}},
                      {list,[{float,34.0},
                             {x,2},
                             {float,24.0},
                             {x,1},
                             {float,14.0},
                             {x,0}]}}.
    {test,is_eq_exact,{f,156},[{x,0},{atom,fa4}]}.
    {test,is_eq_exact,{f,156},[{x,1},{atom,fb4}]}.
    {test,is_eq_exact,{f,156},[{x,2},{literal,"fc4"}]}.
    {get_map_elements,{f,155},
                      {tr,{y,52},{t_map,any,any}},
                      {list,[{float,35.0},
                             {x,2},
                             {float,25.0},
                             {x,1},
                             {float,15.0},
                             {x,0}]}}.
    {test,is_eq_exact,{f,155},[{x,0},{atom,fa5}]}.
    {test,is_eq_exact,{f,155},[{x,1},{atom,fb5}]}.
    {test,is_eq_exact,{f,155},[{x,2},{literal,"fc5"}]}.
    {get_map_elements,{f,154},
                      {tr,{y,52},{t_map,any,any}},
                      {list,[{float,36.0},
                             {x,2},
                             {float,26.0},
                             {x,1},
                             {float,16.0},
                             {x,0}]}}.
    {test,is_eq_exact,{f,154},[{x,0},{atom,fa6}]}.
    {test,is_eq_exact,{f,154},[{x,1},{atom,fb6}]}.
    {test,is_eq_exact,{f,154},[{x,2},{literal,"fc6"}]}.
    {get_map_elements,{f,153},
                      {tr,{y,52},{t_map,any,any}},
                      {list,[{float,37.0},
                             {x,2},
                             {float,27.0},
                             {x,1},
                             {float,17.0},
                             {x,0}]}}.
    {test,is_eq_exact,{f,153},[{x,0},{atom,fa7}]}.
    {test,is_eq_exact,{f,153},[{x,1},{atom,fb7}]}.
    {test,is_eq_exact,{f,153},[{x,2},{literal,"fc7"}]}.
    {get_map_elements,{f,152},
                      {tr,{y,52},{t_map,any,any}},
                      {list,[{float,38.0},
                             {x,2},
                             {float,28.0},
                             {x,1},
                             {float,18.0},
                             {x,0}]}}.
    {test,is_eq_exact,{f,152},[{x,0},{atom,fa8}]}.
    {test,is_eq_exact,{f,152},[{x,1},{atom,fb8}]}.
    {test,is_eq_exact,{f,152},[{x,2},{literal,"fc8"}]}.
    {get_map_elements,{f,151},
                      {tr,{y,52},{t_map,any,any}},
                      {list,[{float,39.0},
                             {x,2},
                             {float,29.0},
                             {x,1},
                             {float,19.0},
                             {x,0}]}}.
    {test,is_eq_exact,{f,151},[{x,0},{atom,fa9}]}.
    {test,is_eq_exact,{f,151},[{x,1},{atom,fb9}]}.
    {test,is_eq_exact,{f,151},[{x,2},{literal,"fc9"}]}.
    {line,[{location,"map_SUITE.erl",347}]}.
    {gc_bif,map_size,{f,0},0,[{tr,{y,52},{t_map,any,any}}],{x,0}}.
    {test,is_eq_exact,
          {f,150},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},{integer,90}]}.
    {move,{literal,#{10 => a0,11 => a1,12 => a2,13 => a3,14 => a4,15 => a5,
                     16 => a6,17 => a7,18 => a8,19 => a9,20 => b0,21 => b1,
                     22 => b2,23 => b3,24 => b4,25 => b5,26 => b6,27 => b7,
                     28 => b8,29 => b9,30 => "c0",31 => "c1",32 => "c2",
                     33 => "c3",34 => "c4",35 => "c5",36 => "c6",37 => "c7",
                     38 => "c8",39 => "c9",67108863 => big8,
                     4294967295 => big7,4294967296 => big5,8589934592 => big6,
                     18446744073709551616 => big4,
                     36893488147419103232 => big1,
                     73786976294838206464 => big2,
                     147573952589676412928 => big3,10.0 => fa0,11.0 => fa1,
                     12.0 => fa2,13.0 => fa3,14.0 => fa4,15.0 => fa5,
                     16.0 => fa6,17.0 => fa7,18.0 => fa8,19.0 => fa9,
                     20.0 => fb0,21.0 => fb1,22.0 => fb2,23.0 => fb3,
                     24.0 => fb4,25.0 => fb5,26.0 => fb6,27.0 => fb7,
                     28.0 => fb8,29.0 => fb9,30.0 => "fc0",31.0 => "fc1",
                     32.0 => "fc2",33.0 => "fc3",34.0 => "fc4",35.0 => "fc5",
                     36.0 => "fc6",37.0 => "fc7",38.0 => "fc8",39.0 => "fc9",
                     {["00"]} => "10",
                     {["01"]} => "11",
                     {["02"]} => "12",
                     {["03"]} => "13",
                     {["04"]} => "14",
                     {["05"]} => "15",
                     {["06"]} => "16",
                     {["07"]} => "17",
                     {["08"]} => "18",
                     {["09"]} => "19",
                     "40" => "d0","41" => "d1","42" => "d2","43" => "d3",
                     "44" => "d4","45" => "d5","46" => "d6","47" => "d7",
                     "48" => "d8","49" => "d9",<<"50">> => "e0",
                     <<"51">> => "e1",<<"52">> => "e2",<<"53">> => "e3",
                     <<"54">> => "e4",<<"55">> => "e5",<<"56">> => "e6",
                     <<"57">> => "e7",<<"58">> => "e8",<<"59">> => "e9"}},
          {x,0}}.
    {line,[{location,"map_SUITE.erl",351}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,51}}.
    {test,is_map,{f,149},[{x,0}]}.
    {get_map_elements,{f,149},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{integer,10},{x,0}]}}.
    {get_map_elements,{f,149},
                      {tr,{y,51},{t_map,any,any}},
                      {list,[{literal,<<"50">>},
                             {x,5},
                             {literal,"40"},
                             {x,4},
                             {literal,{["00"]}},
                             {x,3},
                             {integer,30},
                             {x,2},
                             {integer,20},
                             {x,1}]}}.
    {test,is_eq_exact,{f,149},[{x,0},{atom,a0}]}.
    {test,is_eq_exact,{f,149},[{x,1},{atom,b0}]}.
    {test,is_eq_exact,{f,149},[{x,2},{literal,"c0"}]}.
    {test,is_eq_exact,{f,149},[{x,3},{literal,"10"}]}.
    {test,is_eq_exact,{f,149},[{x,4},{literal,"d0"}]}.
    {test,is_eq_exact,{f,149},[{x,5},{literal,"e0"}]}.
    {get_map_elements,{f,148},
                      {tr,{y,51},{t_map,any,any}},
                      {list,[{literal,<<"51">>},
                             {x,5},
                             {literal,"41"},
                             {x,4},
                             {literal,{["01"]}},
                             {x,3},
                             {integer,31},
                             {x,2},
                             {integer,21},
                             {x,1},
                             {integer,11},
                             {x,0}]}}.
    {test,is_eq_exact,{f,148},[{x,0},{atom,a1}]}.
    {test,is_eq_exact,{f,148},[{x,1},{atom,b1}]}.
    {test,is_eq_exact,{f,148},[{x,2},{literal,"c1"}]}.
    {test,is_eq_exact,{f,148},[{x,3},{literal,"11"}]}.
    {test,is_eq_exact,{f,148},[{x,4},{literal,"d1"}]}.
    {test,is_eq_exact,{f,148},[{x,5},{literal,"e1"}]}.
    {get_map_elements,{f,147},
                      {tr,{y,51},{t_map,any,any}},
                      {list,[{literal,<<"52">>},
                             {x,5},
                             {literal,"42"},
                             {x,4},
                             {literal,{["02"]}},
                             {x,3},
                             {integer,32},
                             {x,2},
                             {integer,22},
                             {x,1},
                             {integer,12},
                             {x,0}]}}.
    {test,is_eq_exact,{f,147},[{x,0},{atom,a2}]}.
    {test,is_eq_exact,{f,147},[{x,1},{atom,b2}]}.
    {test,is_eq_exact,{f,147},[{x,2},{literal,"c2"}]}.
    {test,is_eq_exact,{f,147},[{x,3},{literal,"12"}]}.
    {test,is_eq_exact,{f,147},[{x,4},{literal,"d2"}]}.
    {test,is_eq_exact,{f,147},[{x,5},{literal,"e2"}]}.
    {get_map_elements,{f,146},
                      {tr,{y,51},{t_map,any,any}},
                      {list,[{literal,<<"53">>},
                             {x,5},
                             {literal,"43"},
                             {x,4},
                             {literal,{["03"]}},
                             {x,3},
                             {integer,33},
                             {x,2},
                             {integer,23},
                             {x,1},
                             {integer,13},
                             {x,0}]}}.
    {test,is_eq_exact,{f,146},[{x,0},{atom,a3}]}.
    {test,is_eq_exact,{f,146},[{x,1},{atom,b3}]}.
    {test,is_eq_exact,{f,146},[{x,2},{literal,"c3"}]}.
    {test,is_eq_exact,{f,146},[{x,3},{literal,"13"}]}.
    {test,is_eq_exact,{f,146},[{x,4},{literal,"d3"}]}.
    {test,is_eq_exact,{f,146},[{x,5},{literal,"e3"}]}.
    {get_map_elements,{f,145},
                      {tr,{y,51},{t_map,any,any}},
                      {list,[{literal,<<"54">>},
                             {x,5},
                             {literal,"44"},
                             {x,4},
                             {literal,{["04"]}},
                             {x,3},
                             {integer,34},
                             {x,2},
                             {integer,24},
                             {x,1},
                             {integer,14},
                             {x,0}]}}.
    {test,is_eq_exact,{f,145},[{x,0},{atom,a4}]}.
    {test,is_eq_exact,{f,145},[{x,1},{atom,b4}]}.
    {test,is_eq_exact,{f,145},[{x,2},{literal,"c4"}]}.
    {test,is_eq_exact,{f,145},[{x,3},{literal,"14"}]}.
    {test,is_eq_exact,{f,145},[{x,4},{literal,"d4"}]}.
    {test,is_eq_exact,{f,145},[{x,5},{literal,"e4"}]}.
    {get_map_elements,{f,144},
                      {tr,{y,51},{t_map,any,any}},
                      {list,[{literal,<<"55">>},
                             {x,5},
                             {literal,"45"},
                             {x,4},
                             {literal,{["05"]}},
                             {x,3},
                             {integer,35},
                             {x,2},
                             {integer,25},
                             {x,1},
                             {integer,15},
                             {x,0}]}}.
    {test,is_eq_exact,{f,144},[{x,0},{atom,a5}]}.
    {test,is_eq_exact,{f,144},[{x,1},{atom,b5}]}.
    {test,is_eq_exact,{f,144},[{x,2},{literal,"c5"}]}.
    {test,is_eq_exact,{f,144},[{x,3},{literal,"15"}]}.
    {test,is_eq_exact,{f,144},[{x,4},{literal,"d5"}]}.
    {test,is_eq_exact,{f,144},[{x,5},{literal,"e5"}]}.
    {get_map_elements,{f,143},
                      {tr,{y,51},{t_map,any,any}},
                      {list,[{literal,<<"56">>},
                             {x,5},
                             {literal,"46"},
                             {x,4},
                             {literal,{["06"]}},
                             {x,3},
                             {integer,36},
                             {x,2},
                             {integer,26},
                             {x,1},
                             {integer,16},
                             {x,0}]}}.
    {test,is_eq_exact,{f,143},[{x,0},{atom,a6}]}.
    {test,is_eq_exact,{f,143},[{x,1},{atom,b6}]}.
    {test,is_eq_exact,{f,143},[{x,2},{literal,"c6"}]}.
    {test,is_eq_exact,{f,143},[{x,3},{literal,"16"}]}.
    {test,is_eq_exact,{f,143},[{x,4},{literal,"d6"}]}.
    {test,is_eq_exact,{f,143},[{x,5},{literal,"e6"}]}.
    {get_map_elements,{f,142},
                      {tr,{y,51},{t_map,any,any}},
                      {list,[{literal,<<"57">>},
                             {x,5},
                             {literal,"47"},
                             {x,4},
                             {literal,{["07"]}},
                             {x,3},
                             {integer,37},
                             {x,2},
                             {integer,27},
                             {x,1},
                             {integer,17},
                             {x,0}]}}.
    {test,is_eq_exact,{f,142},[{x,0},{atom,a7}]}.
    {test,is_eq_exact,{f,142},[{x,1},{atom,b7}]}.
    {test,is_eq_exact,{f,142},[{x,2},{literal,"c7"}]}.
    {test,is_eq_exact,{f,142},[{x,3},{literal,"17"}]}.
    {test,is_eq_exact,{f,142},[{x,4},{literal,"d7"}]}.
    {test,is_eq_exact,{f,142},[{x,5},{literal,"e7"}]}.
    {get_map_elements,{f,141},
                      {tr,{y,51},{t_map,any,any}},
                      {list,[{literal,<<"58">>},
                             {x,5},
                             {literal,"48"},
                             {x,4},
                             {literal,{["08"]}},
                             {x,3},
                             {integer,38},
                             {x,2},
                             {integer,28},
                             {x,1},
                             {integer,18},
                             {x,0}]}}.
    {test,is_eq_exact,{f,141},[{x,0},{atom,a8}]}.
    {test,is_eq_exact,{f,141},[{x,1},{atom,b8}]}.
    {test,is_eq_exact,{f,141},[{x,2},{literal,"c8"}]}.
    {test,is_eq_exact,{f,141},[{x,3},{literal,"18"}]}.
    {test,is_eq_exact,{f,141},[{x,4},{literal,"d8"}]}.
    {test,is_eq_exact,{f,141},[{x,5},{literal,"e8"}]}.
    {get_map_elements,{f,140},
                      {tr,{y,51},{t_map,any,any}},
                      {list,[{literal,<<"59">>},
                             {x,5},
                             {literal,"49"},
                             {x,4},
                             {literal,{["09"]}},
                             {x,3},
                             {integer,39},
                             {x,2},
                             {integer,29},
                             {x,1},
                             {integer,19},
                             {x,0}]}}.
    {test,is_eq_exact,{f,140},[{x,0},{atom,a9}]}.
    {test,is_eq_exact,{f,140},[{x,1},{atom,b9}]}.
    {test,is_eq_exact,{f,140},[{x,2},{literal,"c9"}]}.
    {test,is_eq_exact,{f,140},[{x,3},{literal,"19"}]}.
    {test,is_eq_exact,{f,140},[{x,4},{literal,"d9"}]}.
    {test,is_eq_exact,{f,140},[{x,5},{literal,"e9"}]}.
    {get_map_elements,{f,139},
                      {tr,{y,51},{t_map,any,any}},
                      {list,[{float,30.0},
                             {x,2},
                             {float,20.0},
                             {x,1},
                             {float,10.0},
                             {x,0}]}}.
    {test,is_eq_exact,{f,139},[{x,0},{atom,fa0}]}.
    {test,is_eq_exact,{f,139},[{x,1},{atom,fb0}]}.
    {test,is_eq_exact,{f,139},[{x,2},{literal,"fc0"}]}.
    {get_map_elements,{f,138},
                      {tr,{y,51},{t_map,any,any}},
                      {list,[{float,31.0},
                             {x,2},
                             {float,21.0},
                             {x,1},
                             {float,11.0},
                             {x,0}]}}.
    {test,is_eq_exact,{f,138},[{x,0},{atom,fa1}]}.
    {test,is_eq_exact,{f,138},[{x,1},{atom,fb1}]}.
    {test,is_eq_exact,{f,138},[{x,2},{literal,"fc1"}]}.
    {get_map_elements,{f,137},
                      {tr,{y,51},{t_map,any,any}},
                      {list,[{float,32.0},
                             {x,2},
                             {float,22.0},
                             {x,1},
                             {float,12.0},
                             {x,0}]}}.
    {test,is_eq_exact,{f,137},[{x,0},{atom,fa2}]}.
    {test,is_eq_exact,{f,137},[{x,1},{atom,fb2}]}.
    {test,is_eq_exact,{f,137},[{x,2},{literal,"fc2"}]}.
    {get_map_elements,{f,136},
                      {tr,{y,51},{t_map,any,any}},
                      {list,[{float,33.0},
                             {x,2},
                             {float,23.0},
                             {x,1},
                             {float,13.0},
                             {x,0}]}}.
    {test,is_eq_exact,{f,136},[{x,0},{atom,fa3}]}.
    {test,is_eq_exact,{f,136},[{x,1},{atom,fb3}]}.
    {test,is_eq_exact,{f,136},[{x,2},{literal,"fc3"}]}.
    {get_map_elements,{f,135},
                      {tr,{y,51},{t_map,any,any}},
                      {list,[{float,34.0},
                             {x,2},
                             {float,24.0},
                             {x,1},
                             {float,14.0},
                             {x,0}]}}.
    {test,is_eq_exact,{f,135},[{x,0},{atom,fa4}]}.
    {test,is_eq_exact,{f,135},[{x,1},{atom,fb4}]}.
    {test,is_eq_exact,{f,135},[{x,2},{literal,"fc4"}]}.
    {get_map_elements,{f,134},
                      {tr,{y,51},{t_map,any,any}},
                      {list,[{float,35.0},
                             {x,2},
                             {float,25.0},
                             {x,1},
                             {float,15.0},
                             {x,0}]}}.
    {test,is_eq_exact,{f,134},[{x,0},{atom,fa5}]}.
    {test,is_eq_exact,{f,134},[{x,1},{atom,fb5}]}.
    {test,is_eq_exact,{f,134},[{x,2},{literal,"fc5"}]}.
    {get_map_elements,{f,133},
                      {tr,{y,51},{t_map,any,any}},
                      {list,[{float,36.0},
                             {x,2},
                             {float,26.0},
                             {x,1},
                             {float,16.0},
                             {x,0}]}}.
    {test,is_eq_exact,{f,133},[{x,0},{atom,fa6}]}.
    {test,is_eq_exact,{f,133},[{x,1},{atom,fb6}]}.
    {test,is_eq_exact,{f,133},[{x,2},{literal,"fc6"}]}.
    {get_map_elements,{f,132},
                      {tr,{y,51},{t_map,any,any}},
                      {list,[{float,37.0},
                             {x,2},
                             {float,27.0},
                             {x,1},
                             {float,17.0},
                             {x,0}]}}.
    {test,is_eq_exact,{f,132},[{x,0},{atom,fa7}]}.
    {test,is_eq_exact,{f,132},[{x,1},{atom,fb7}]}.
    {test,is_eq_exact,{f,132},[{x,2},{literal,"fc7"}]}.
    {get_map_elements,{f,131},
                      {tr,{y,51},{t_map,any,any}},
                      {list,[{float,38.0},
                             {x,2},
                             {float,28.0},
                             {x,1},
                             {float,18.0},
                             {x,0}]}}.
    {test,is_eq_exact,{f,131},[{x,0},{atom,fa8}]}.
    {test,is_eq_exact,{f,131},[{x,1},{atom,fb8}]}.
    {test,is_eq_exact,{f,131},[{x,2},{literal,"fc8"}]}.
    {get_map_elements,{f,130},
                      {tr,{y,51},{t_map,any,any}},
                      {list,[{float,39.0},
                             {x,2},
                             {float,29.0},
                             {x,1},
                             {float,19.0},
                             {x,0}]}}.
    {test,is_eq_exact,{f,130},[{x,0},{atom,fa9}]}.
    {test,is_eq_exact,{f,130},[{x,1},{atom,fb9}]}.
    {test,is_eq_exact,{f,130},[{x,2},{literal,"fc9"}]}.
    {get_map_elements,{f,129},
                      {tr,{y,51},{t_map,any,any}},
                      {list,[{integer,36893488147419103232},
                             {x,1},
                             {integer,67108863},
                             {x,0}]}}.
    {test,is_eq_exact,{f,129},[{x,0},{atom,big8}]}.
    {test,is_eq_exact,{f,129},[{x,1},{atom,big1}]}.
    {get_map_elements,{f,128},
                      {tr,{y,51},{t_map,any,any}},
                      {list,[{integer,147573952589676412928},
                             {x,1},
                             {integer,8589934592},
                             {x,0}]}}.
    {test,is_eq_exact,{f,128},[{x,0},{atom,big6}]}.
    {test,is_eq_exact,{f,128},[{x,1},{atom,big3}]}.
    {get_map_elements,{f,127},
                      {tr,{y,51},{t_map,any,any}},
                      {list,[{integer,18446744073709551616},
                             {x,1},
                             {integer,4294967296},
                             {x,0}]}}.
    {test,is_eq_exact,{f,127},[{x,0},{atom,big5}]}.
    {test,is_eq_exact,{f,127},[{x,1},{atom,big4}]}.
    {get_map_elements,{f,126},
                      {tr,{y,51},{t_map,any,any}},
                      {list,[{integer,73786976294838206464},
                             {x,1},
                             {integer,4294967295},
                             {x,0}]}}.
    {test,is_eq_exact,{f,126},[{x,0},{atom,big7}]}.
    {test,is_eq_exact,{f,126},[{x,1},{atom,big2}]}.
    {line,[{location,"map_SUITE.erl",410}]}.
    {gc_bif,map_size,{f,0},0,[{tr,{y,51},{t_map,any,any}}],{x,0}}.
    {test,is_eq_exact,
          {f,125},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},{integer,98}]}.
    {move,{literal,#{10 => a0,11 => a1,12 => a2,13 => a3,14 => a4,15 => a5,
                     16 => a6,17 => a7,18 => a8,19 => a9,20 => b0,21 => b1,
                     22 => b2,23 => b3,24 => b4,25 => b5,26 => b6,27 => b7,
                     28 => b8,29 => b9,30 => "c0",31 => "c1",32 => "c2",
                     33 => "c3",34 => "c4",35 => "c5",36 => "c6",37 => "c7",
                     38 => "c8",39 => "c9",10.0 => fa0,11.0 => fa1,
                     12.0 => fa2,13.0 => fa3,14.0 => fa4,15.0 => fa5,
                     16.0 => fa6,17.0 => fa7,18.0 => fa8,19.0 => fa9,
                     20.0 => fb0,21.0 => fb1,22.0 => fb2,23.0 => fb3,
                     24.0 => fb4,25.0 => fb5,26.0 => fb6,27.0 => fb7,
                     28.0 => fb8,29.0 => fb9,30.0 => "fc0",31.0 => "fc1",
                     32.0 => "fc2",33.0 => "fc3",34.0 => "fc4",35.0 => "fc5",
                     36.0 => "fc6",37.0 => "fc7",38.0 => "fc8",39.0 => "fc9",
                     {["00"]} => "10",
                     {["01"]} => "11",
                     {["02"]} => "12",
                     {["03"]} => "13",
                     {["04"]} => "14",
                     {["05"]} => "15",
                     {["06"]} => "16",
                     {["07"]} => "17",
                     {["08"]} => "18",
                     {["09"]} => "19",
                     #{map => key,one => small} => "small map key 1",
                     #{map => key,third => small} => "small map key 3",
                     #{map => key,second => small} => "small map key 2",
                     #{10 => a0,11 => a1,12 => a2,13 => a3,14 => a4,15 => a5,
                       16 => a6,17 => a7,18 => a8,19 => a9,20 => b0,21 => b1,
                       22 => b2,23 => b3,24 => b4,25 => b5,26 => b6,27 => b7,
                       28 => b8,29 => b9,30 => "c0",31 => "c1",32 => "c2",
                       33 => "c3",34 => "c4",35 => "c5",36 => "c6",37 => "c7",
                       38 => "c8",39 => "c9",
                       {["00"]} => "10",
                       {["01"]} => "11",
                       {["02"]} => "12",
                       {["03"]} => "13",
                       {["04"]} => "14",
                       {["05"]} => "15",
                       {["06"]} => "16",
                       {["07"]} => "17",
                       {["08"]} => "18",
                       {["09"]} => "19",
                       "40" => "d0","41" => "d1","42" => "d2","43" => "d3",
                       "44" => "d4","45" => "d5","46" => "d6","47" => "d7",
                       "48" => "d8","49" => "d9",<<"50">> => "e0",
                       <<"51">> => "e1",<<"52">> => "e2",<<"53">> => "e3",
                       <<"54">> => "e4",<<"55">> => "e5",<<"56">> => "e6",
                       <<"57">> => "e7",<<"58">> => "e8",<<"59">> => "e9"} =>
                         "large map key 1",
                     #{10 => a0,11 => a1,12 => a2,13 => a3,14 => a4,15 => a5,
                       17 => a7,18 => a8,19 => a9,20 => b0,21 => b1,22 => b2,
                       23 => b3,24 => b4,25 => b5,27 => b7,28 => b8,29 => b9,
                       30 => "c0",31 => "c1",32 => "c2",33 => "c3",34 => "c4",
                       35 => "c5",37 => "c7",38 => "c8",39 => "c9",k16 => a6,
                       k26 => b6,k36 => "c6",
                       {["00"]} => "10",
                       {["01"]} => "11",
                       {["02"]} => "12",
                       {["03"]} => "13",
                       {["04"]} => "14",
                       {["05"]} => "15",
                       {["06"]} => "16",
                       {["07"]} => "17",
                       {["08"]} => "18",
                       {["09"]} => "19",
                       "40" => "d0","41" => "d1","42" => "d2","43" => "d3",
                       "44" => "d4","45" => "d5","46" => "d6","47" => "d7",
                       "48" => "d8","49" => "d9",<<"50">> => "e0",
                       <<"51">> => "e1",<<"52">> => "e2",<<"53">> => "e3",
                       <<"54">> => "e4",<<"55">> => "e5",<<"56">> => "e6",
                       <<"57">> => "e7",<<"58">> => "e8",<<"59">> => "e9"} =>
                         "large map key 2",
                     "40" => "d0","41" => "d1","42" => "d2","43" => "d3",
                     "44" => "d4","45" => "d5","46" => "d6","47" => "d7",
                     "48" => "d8","49" => "d9",<<"50">> => "e0",
                     <<"51">> => "e1",<<"52">> => "e2",<<"53">> => "e3",
                     <<"54">> => "e4",<<"55">> => "e5",<<"56">> => "e6",
                     <<"57">> => "e7",<<"58">> => "e8",<<"59">> => "e9"}},
          {x,0}}.
    {line,[{location,"map_SUITE.erl",415}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,124},[{x,0}]}.
    {get_map_elements,{f,124},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{literal,<<"50">>},
                             {x,6},
                             {literal,"40"},
                             {x,5},
                             {literal,{["00"]}},
                             {x,4},
                             {integer,30},
                             {x,3},
                             {integer,20},
                             {x,2},
                             {integer,10},
                             {x,1}]}}.
    {test,is_eq_exact,{f,124},[{x,1},{atom,a0}]}.
    {test,is_eq_exact,{f,124},[{x,2},{atom,b0}]}.
    {test,is_eq_exact,{f,124},[{x,3},{literal,"c0"}]}.
    {test,is_eq_exact,{f,124},[{x,4},{literal,"10"}]}.
    {test,is_eq_exact,{f,124},[{x,5},{literal,"d0"}]}.
    {test,is_eq_exact,{f,124},[{x,6},{literal,"e0"}]}.
    {get_map_elements,{f,123},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{literal,<<"51">>},
                             {x,6},
                             {literal,"41"},
                             {x,5},
                             {literal,{["01"]}},
                             {x,4},
                             {integer,31},
                             {x,3},
                             {integer,21},
                             {x,2},
                             {integer,11},
                             {x,1}]}}.
    {test,is_eq_exact,{f,123},[{x,1},{atom,a1}]}.
    {test,is_eq_exact,{f,123},[{x,2},{atom,b1}]}.
    {test,is_eq_exact,{f,123},[{x,3},{literal,"c1"}]}.
    {test,is_eq_exact,{f,123},[{x,4},{literal,"11"}]}.
    {test,is_eq_exact,{f,123},[{x,5},{literal,"d1"}]}.
    {test,is_eq_exact,{f,123},[{x,6},{literal,"e1"}]}.
    {get_map_elements,{f,122},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{literal,<<"52">>},
                             {x,6},
                             {literal,"42"},
                             {x,5},
                             {literal,{["02"]}},
                             {x,4},
                             {integer,32},
                             {x,3},
                             {integer,22},
                             {x,2},
                             {integer,12},
                             {x,1}]}}.
    {test,is_eq_exact,{f,122},[{x,1},{atom,a2}]}.
    {test,is_eq_exact,{f,122},[{x,2},{atom,b2}]}.
    {test,is_eq_exact,{f,122},[{x,3},{literal,"c2"}]}.
    {test,is_eq_exact,{f,122},[{x,4},{literal,"12"}]}.
    {test,is_eq_exact,{f,122},[{x,5},{literal,"d2"}]}.
    {test,is_eq_exact,{f,122},[{x,6},{literal,"e2"}]}.
    {get_map_elements,{f,121},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{literal,<<"53">>},
                             {x,6},
                             {literal,"43"},
                             {x,5},
                             {literal,{["03"]}},
                             {x,4},
                             {integer,33},
                             {x,3},
                             {integer,23},
                             {x,2},
                             {integer,13},
                             {x,1}]}}.
    {test,is_eq_exact,{f,121},[{x,1},{atom,a3}]}.
    {test,is_eq_exact,{f,121},[{x,2},{atom,b3}]}.
    {test,is_eq_exact,{f,121},[{x,3},{literal,"c3"}]}.
    {test,is_eq_exact,{f,121},[{x,4},{literal,"13"}]}.
    {test,is_eq_exact,{f,121},[{x,5},{literal,"d3"}]}.
    {test,is_eq_exact,{f,121},[{x,6},{literal,"e3"}]}.
    {get_map_elements,{f,120},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{literal,<<"54">>},
                             {x,6},
                             {literal,"44"},
                             {x,5},
                             {literal,{["04"]}},
                             {x,4},
                             {integer,34},
                             {x,3},
                             {integer,24},
                             {x,2},
                             {integer,14},
                             {x,1}]}}.
    {test,is_eq_exact,{f,120},[{x,1},{atom,a4}]}.
    {test,is_eq_exact,{f,120},[{x,2},{atom,b4}]}.
    {test,is_eq_exact,{f,120},[{x,3},{literal,"c4"}]}.
    {test,is_eq_exact,{f,120},[{x,4},{literal,"14"}]}.
    {test,is_eq_exact,{f,120},[{x,5},{literal,"d4"}]}.
    {test,is_eq_exact,{f,120},[{x,6},{literal,"e4"}]}.
    {get_map_elements,{f,119},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{literal,<<"55">>},
                             {x,6},
                             {literal,"45"},
                             {x,5},
                             {literal,{["05"]}},
                             {x,4},
                             {integer,35},
                             {x,3},
                             {integer,25},
                             {x,2},
                             {integer,15},
                             {x,1}]}}.
    {test,is_eq_exact,{f,119},[{x,1},{atom,a5}]}.
    {test,is_eq_exact,{f,119},[{x,2},{atom,b5}]}.
    {test,is_eq_exact,{f,119},[{x,3},{literal,"c5"}]}.
    {test,is_eq_exact,{f,119},[{x,4},{literal,"15"}]}.
    {test,is_eq_exact,{f,119},[{x,5},{literal,"d5"}]}.
    {test,is_eq_exact,{f,119},[{x,6},{literal,"e5"}]}.
    {get_map_elements,{f,118},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{literal,<<"56">>},
                             {x,6},
                             {literal,"46"},
                             {x,5},
                             {literal,{["06"]}},
                             {x,4},
                             {integer,36},
                             {x,3},
                             {integer,26},
                             {x,2},
                             {integer,16},
                             {x,1}]}}.
    {test,is_eq_exact,{f,118},[{x,1},{atom,a6}]}.
    {test,is_eq_exact,{f,118},[{x,2},{atom,b6}]}.
    {test,is_eq_exact,{f,118},[{x,3},{literal,"c6"}]}.
    {test,is_eq_exact,{f,118},[{x,4},{literal,"16"}]}.
    {test,is_eq_exact,{f,118},[{x,5},{literal,"d6"}]}.
    {test,is_eq_exact,{f,118},[{x,6},{literal,"e6"}]}.
    {get_map_elements,{f,117},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{literal,<<"57">>},
                             {x,6},
                             {literal,"47"},
                             {x,5},
                             {literal,{["07"]}},
                             {x,4},
                             {integer,37},
                             {x,3},
                             {integer,27},
                             {x,2},
                             {integer,17},
                             {x,1}]}}.
    {test,is_eq_exact,{f,117},[{x,1},{atom,a7}]}.
    {test,is_eq_exact,{f,117},[{x,2},{atom,b7}]}.
    {test,is_eq_exact,{f,117},[{x,3},{literal,"c7"}]}.
    {test,is_eq_exact,{f,117},[{x,4},{literal,"17"}]}.
    {test,is_eq_exact,{f,117},[{x,5},{literal,"d7"}]}.
    {test,is_eq_exact,{f,117},[{x,6},{literal,"e7"}]}.
    {get_map_elements,{f,116},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{literal,<<"58">>},
                             {x,6},
                             {literal,"48"},
                             {x,5},
                             {literal,{["08"]}},
                             {x,4},
                             {integer,38},
                             {x,3},
                             {integer,28},
                             {x,2},
                             {integer,18},
                             {x,1}]}}.
    {test,is_eq_exact,{f,116},[{x,1},{atom,a8}]}.
    {test,is_eq_exact,{f,116},[{x,2},{atom,b8}]}.
    {test,is_eq_exact,{f,116},[{x,3},{literal,"c8"}]}.
    {test,is_eq_exact,{f,116},[{x,4},{literal,"18"}]}.
    {test,is_eq_exact,{f,116},[{x,5},{literal,"d8"}]}.
    {test,is_eq_exact,{f,116},[{x,6},{literal,"e8"}]}.
    {get_map_elements,{f,115},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{literal,<<"59">>},
                             {x,6},
                             {literal,"49"},
                             {x,5},
                             {literal,{["09"]}},
                             {x,4},
                             {integer,39},
                             {x,3},
                             {integer,29},
                             {x,2},
                             {integer,19},
                             {x,1}]}}.
    {test,is_eq_exact,{f,115},[{x,1},{atom,a9}]}.
    {test,is_eq_exact,{f,115},[{x,2},{atom,b9}]}.
    {test,is_eq_exact,{f,115},[{x,3},{literal,"c9"}]}.
    {test,is_eq_exact,{f,115},[{x,4},{literal,"19"}]}.
    {test,is_eq_exact,{f,115},[{x,5},{literal,"d9"}]}.
    {test,is_eq_exact,{f,115},[{x,6},{literal,"e9"}]}.
    {get_map_elements,{f,114},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{literal,#{map => key,second => small}},
                             {x,3},
                             {literal,#{map => key,third => small}},
                             {x,2},
                             {literal,#{map => key,one => small}},
                             {x,1}]}}.
    {test,is_eq_exact,{f,114},[{x,1},{literal,"small map key 1"}]}.
    {test,is_eq_exact,{f,114},[{x,2},{literal,"small map key 3"}]}.
    {test,is_eq_exact,{f,114},[{x,3},{literal,"small map key 2"}]}.
    {get_map_elements,{f,113},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{literal,#{10 => a0,11 => a1,12 => a2,13 => a3,
                                        14 => a4,15 => a5,17 => a7,18 => a8,
                                        19 => a9,20 => b0,21 => b1,22 => b2,
                                        23 => b3,24 => b4,25 => b5,27 => b7,
                                        28 => b8,29 => b9,30 => "c0",
                                        31 => "c1",32 => "c2",33 => "c3",
                                        34 => "c4",35 => "c5",37 => "c7",
                                        38 => "c8",39 => "c9",k16 => a6,
                                        k26 => b6,k36 => "c6",
                                        {["00"]} => "10",
                                        {["01"]} => "11",
                                        {["02"]} => "12",
                                        {["03"]} => "13",
                                        {["04"]} => "14",
                                        {["05"]} => "15",
                                        {["06"]} => "16",
                                        {["07"]} => "17",
                                        {["08"]} => "18",
                                        {["09"]} => "19",
                                        "40" => "d0","41" => "d1",
                                        "42" => "d2","43" => "d3",
                                        "44" => "d4","45" => "d5",
                                        "46" => "d6","47" => "d7",
                                        "48" => "d8","49" => "d9",
                                        <<"50">> => "e0",<<"51">> => "e1",
                                        <<"52">> => "e2",<<"53">> => "e3",
                                        <<"54">> => "e4",<<"55">> => "e5",
                                        <<"56">> => "e6",<<"57">> => "e7",
                                        <<"58">> => "e8",<<"59">> => "e9"}},
                             {x,2},
                             {literal,#{10 => a0,11 => a1,12 => a2,13 => a3,
                                        14 => a4,15 => a5,16 => a6,17 => a7,
                                        18 => a8,19 => a9,20 => b0,21 => b1,
                                        22 => b2,23 => b3,24 => b4,25 => b5,
                                        26 => b6,27 => b7,28 => b8,29 => b9,
                                        30 => "c0",31 => "c1",32 => "c2",
                                        33 => "c3",34 => "c4",35 => "c5",
                                        36 => "c6",37 => "c7",38 => "c8",
                                        39 => "c9",
                                        {["00"]} => "10",
                                        {["01"]} => "11",
                                        {["02"]} => "12",
                                        {["03"]} => "13",
                                        {["04"]} => "14",
                                        {["05"]} => "15",
                                        {["06"]} => "16",
                                        {["07"]} => "17",
                                        {["08"]} => "18",
                                        {["09"]} => "19",
                                        "40" => "d0","41" => "d1",
                                        "42" => "d2","43" => "d3",
                                        "44" => "d4","45" => "d5",
                                        "46" => "d6","47" => "d7",
                                        "48" => "d8","49" => "d9",
                                        <<"50">> => "e0",<<"51">> => "e1",
                                        <<"52">> => "e2",<<"53">> => "e3",
                                        <<"54">> => "e4",<<"55">> => "e5",
                                        <<"56">> => "e6",<<"57">> => "e7",
                                        <<"58">> => "e8",<<"59">> => "e9"}},
                             {x,1}]}}.
    {test,is_eq_exact,{f,113},[{x,1},{literal,"large map key 1"}]}.
    {test,is_eq_exact,{f,113},[{x,2},{literal,"large map key 2"}]}.
    {line,[{location,"map_SUITE.erl",530}]}.
    {gc_bif,map_size,{f,0},1,[{tr,{x,0},{t_map,any,any}}],{x,0}}.
    {test,is_eq_exact,
          {f,112},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},{integer,95}]}.
    {move,{atom,a0},{x,0}}.
    {line,[{location,"map_SUITE.erl",535}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,50}}.
    {move,{literal,"c0"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,49}}.
    {move,{literal,"e0"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,48}}.
    {move,{atom,a1},{x,0}}.
    {line,[{location,"map_SUITE.erl",536}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,47}}.
    {move,{literal,"c1"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,46}}.
    {move,{literal,"e1"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,45}}.
    {move,{atom,a2},{x,0}}.
    {line,[{location,"map_SUITE.erl",537}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,44}}.
    {move,{literal,"c2"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,43}}.
    {move,{literal,"e2"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,42}}.
    {move,{atom,a3},{x,0}}.
    {line,[{location,"map_SUITE.erl",538}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,41}}.
    {move,{literal,"c3"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,40}}.
    {move,{literal,"e3"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,39}}.
    {move,{atom,a4},{x,0}}.
    {line,[{location,"map_SUITE.erl",539}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,38}}.
    {move,{literal,"c4"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,37}}.
    {move,{literal,"e4"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,36}}.
    {move,{atom,a5},{x,0}}.
    {line,[{location,"map_SUITE.erl",541}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,35}}.
    {move,{literal,"c5"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,34}}.
    {move,{literal,"e5"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,33}}.
    {move,{atom,a6},{x,0}}.
    {line,[{location,"map_SUITE.erl",542}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,32}}.
    {move,{literal,"c6"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,31}}.
    {move,{literal,"e6"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,30}}.
    {move,{atom,a7},{x,0}}.
    {line,[{location,"map_SUITE.erl",543}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,29}}.
    {move,{literal,"c7"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,28}}.
    {move,{literal,"e7"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,27}}.
    {move,{atom,a8},{x,0}}.
    {line,[{location,"map_SUITE.erl",544}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,26}}.
    {move,{literal,"c8"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,25}}.
    {move,{literal,"e8"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,24}}.
    {move,{atom,a9},{x,0}}.
    {line,[{location,"map_SUITE.erl",545}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,23}}.
    {move,{literal,"c9"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,22}}.
    {move,{literal,"e9"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,21}}.
    {move,{atom,fb0},{x,0}}.
    {line,[{location,"map_SUITE.erl",547}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,20}}.
    {move,{literal,"fc0"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,19}}.
    {move,{atom,fb1},{x,0}}.
    {line,[{location,"map_SUITE.erl",548}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,18}}.
    {move,{literal,"fc1"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,17}}.
    {move,{atom,fb2},{x,0}}.
    {line,[{location,"map_SUITE.erl",549}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,16}}.
    {move,{literal,"fc2"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,15}}.
    {move,{atom,fb3},{x,0}}.
    {line,[{location,"map_SUITE.erl",550}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,14}}.
    {move,{literal,"fc3"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,13}}.
    {move,{atom,fb4},{x,0}}.
    {line,[{location,"map_SUITE.erl",551}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,12}}.
    {move,{literal,"fc4"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,11}}.
    {move,{atom,fb5},{x,0}}.
    {line,[{location,"map_SUITE.erl",553}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,10}}.
    {move,{literal,"fc5"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,9}}.
    {move,{atom,fb6},{x,0}}.
    {line,[{location,"map_SUITE.erl",554}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,8}}.
    {move,{literal,"fc6"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,7}}.
    {move,{atom,fb7},{x,0}}.
    {line,[{location,"map_SUITE.erl",555}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,6}}.
    {move,{literal,"fc7"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,5}}.
    {move,{atom,fb8},{x,0}}.
    {line,[{location,"map_SUITE.erl",556}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,4}}.
    {move,{literal,"fc8"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,3}}.
    {move,{atom,fb9},{x,0}}.
    {line,[{location,"map_SUITE.erl",557}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,2}}.
    {move,{literal,"fc9"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,1}}.
    {move,{literal,"small map key 1"},{x,0}}.
    {line,[{location,"map_SUITE.erl",559}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{literal,"large map key 2"},{x,0}}.
    {line,[{location,"map_SUITE.erl",585}]}.
    {call,1,{f,1107}}. % id/1
    {put_map_assoc,{f,0},
                   {literal,#{}},
                   {x,0},
                   1,
                   {list,[{float,10.0},
                          {atom,fa0},
                          {integer,10},
                          {y,50},
                          {float,11.0},
                          {atom,fa1},
                          {integer,11},
                          {y,47},
                          {float,12.0},
                          {atom,fa2},
                          {integer,12},
                          {y,44},
                          {float,13.0},
                          {atom,fa3},
                          {integer,13},
                          {y,41},
                          {float,14.0},
                          {atom,fa4},
                          {integer,14},
                          {y,38},
                          {float,15.0},
                          {atom,fa5},
                          {integer,15},
                          {y,35},
                          {float,16.0},
                          {atom,fa6},
                          {integer,16},
                          {y,32},
                          {float,17.0},
                          {atom,fa7},
                          {integer,17},
                          {y,29},
                          {float,18.0},
                          {atom,fa8},
                          {integer,18},
                          {y,26},
                          {float,19.0},
                          {atom,fa9},
                          {integer,19},
                          {y,23},
                          {integer,20},
                          {atom,b0},
                          {float,20.0},
                          {y,20},
                          {integer,21},
                          {atom,b1},
                          {float,21.0},
                          {y,18},
                          {integer,22},
                          {atom,b2},
                          {float,22.0},
                          {y,16},
                          {integer,23},
                          {atom,b3},
                          {float,23.0},
                          {y,14},
                          {integer,24},
                          {atom,b4},
                          {float,24.0},
                          {y,12},
                          {integer,25},
                          {atom,b5},
                          {float,25.0},
                          {y,10},
                          {integer,26},
                          {atom,b6},
                          {float,26.0},
                          {y,8},
                          {integer,27},
                          {atom,b7},
                          {float,27.0},
                          {y,6},
                          {integer,28},
                          {atom,b8},
                          {float,28.0},
                          {y,4},
                          {integer,29},
                          {atom,b9},
                          {float,29.0},
                          {y,2},
                          {integer,30},
                          {y,49},
                          {float,30.0},
                          {y,19},
                          {integer,31},
                          {y,46},
                          {float,31.0},
                          {y,17},
                          {integer,32},
                          {y,43},
                          {float,32.0},
                          {y,15},
                          {integer,33},
                          {y,40},
                          {float,33.0},
                          {y,13},
                          {integer,34},
                          {y,37},
                          {float,34.0},
                          {y,11},
                          {integer,35},
                          {y,34},
                          {float,35.0},
                          {y,9},
                          {integer,36},
                          {y,31},
                          {float,36.0},
                          {y,7},
                          {integer,37},
                          {y,28},
                          {float,37.0},
                          {y,5},
                          {integer,38},
                          {y,25},
                          {float,38.0},
                          {y,3},
                          {integer,39},
                          {y,22},
                          {float,39.0},
                          {y,1},
                          {literal,{["00"]}},
                          {literal,"10"},
                          {literal,{["01"]}},
                          {literal,"11"},
                          {literal,{["02"]}},
                          {literal,"12"},
                          {literal,{["03"]}},
                          {literal,"13"},
                          {literal,{["04"]}},
                          {literal,"14"},
                          {literal,{["05"]}},
                          {literal,"15"},
                          {literal,{["06"]}},
                          {literal,"16"},
                          {literal,{["07"]}},
                          {literal,"17"},
                          {literal,{["08"]}},
                          {literal,"18"},
                          {literal,{["09"]}},
                          {literal,"19"},
                          {literal,#{map => key,one => small}},
                          {y,0},
                          {literal,#{map => key,second => small}},
                          {literal,"small map key 2"},
                          {literal,#{map => key,third => small}},
                          {literal,"small map key 3"},
                          {literal,#{10 => a0,11 => a1,12 => a2,13 => a3,
                                     14 => a4,15 => a5,16 => a6,17 => a7,
                                     18 => a8,19 => a9,20 => b0,21 => b1,
                                     22 => b2,23 => b3,24 => b4,25 => b5,
                                     26 => b6,27 => b7,28 => b8,29 => b9,
                                     30 => "c0",31 => "c1",32 => "c2",
                                     33 => "c3",34 => "c4",35 => "c5",
                                     36 => "c6",37 => "c7",38 => "c8",
                                     39 => "c9",
                                     {["00"]} => "10",
                                     {["01"]} => "11",
                                     {["02"]} => "12",
                                     {["03"]} => "13",
                                     {["04"]} => "14",
                                     {["05"]} => "15",
                                     {["06"]} => "16",
                                     {["07"]} => "17",
                                     {["08"]} => "18",
                                     {["09"]} => "19",
                                     "40" => "d0","41" => "d1","42" => "d2",
                                     "43" => "d3","44" => "d4","45" => "d5",
                                     "46" => "d6","47" => "d7","48" => "d8",
                                     "49" => "d9",<<"50">> => "e0",
                                     <<"51">> => "e1",<<"52">> => "e2",
                                     <<"53">> => "e3",<<"54">> => "e4",
                                     <<"55">> => "e5",<<"56">> => "e6",
                                     <<"57">> => "e7",<<"58">> => "e8",
                                     <<"59">> => "e9"}},
                          {literal,"large map key 1"},
                          {literal,#{10 => a0,11 => a1,12 => a2,13 => a3,
                                     14 => a4,15 => a5,17 => a7,18 => a8,
                                     19 => a9,20 => b0,21 => b1,22 => b2,
                                     23 => b3,24 => b4,25 => b5,27 => b7,
                                     28 => b8,29 => b9,30 => "c0",31 => "c1",
                                     32 => "c2",33 => "c3",34 => "c4",
                                     35 => "c5",37 => "c7",38 => "c8",
                                     39 => "c9",k16 => a6,k26 => b6,
                                     k36 => "c6",
                                     {["00"]} => "10",
                                     {["01"]} => "11",
                                     {["02"]} => "12",
                                     {["03"]} => "13",
                                     {["04"]} => "14",
                                     {["05"]} => "15",
                                     {["06"]} => "16",
                                     {["07"]} => "17",
                                     {["08"]} => "18",
                                     {["09"]} => "19",
                                     "40" => "d0","41" => "d1","42" => "d2",
                                     "43" => "d3","44" => "d4","45" => "d5",
                                     "46" => "d6","47" => "d7","48" => "d8",
                                     "49" => "d9",<<"50">> => "e0",
                                     <<"51">> => "e1",<<"52">> => "e2",
                                     <<"53">> => "e3",<<"54">> => "e4",
                                     <<"55">> => "e5",<<"56">> => "e6",
                                     <<"57">> => "e7",<<"58">> => "e8",
                                     <<"59">> => "e9"}},
                          {x,0},
                          {literal,"40"},
                          {literal,"d0"},
                          {literal,"41"},
                          {literal,"d1"},
                          {literal,"42"},
                          {literal,"d2"},
                          {literal,"43"},
                          {literal,"d3"},
                          {literal,"44"},
                          {literal,"d4"},
                          {literal,"45"},
                          {literal,"d5"},
                          {literal,"46"},
                          {literal,"d6"},
                          {literal,"47"},
                          {literal,"d7"},
                          {literal,"48"},
                          {literal,"d8"},
                          {literal,"49"},
                          {literal,"d9"},
                          {literal,<<"50">>},
                          {y,48},
                          {literal,<<"51">>},
                          {y,45},
                          {literal,<<"52">>},
                          {y,42},
                          {literal,<<"53">>},
                          {y,39},
                          {literal,<<"54">>},
                          {y,36},
                          {literal,<<"55">>},
                          {y,33},
                          {literal,<<"56">>},
                          {y,30},
                          {literal,<<"57">>},
                          {y,27},
                          {literal,<<"58">>},
                          {y,24},
                          {literal,<<"59">>},
                          {y,21}]}}.
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
                       {y,25},
                       {y,26},
                       {y,27},
                       {y,28},
                       {y,29},
                       {y,30},
                       {y,31},
                       {y,32},
                       {y,33},
                       {y,34},
                       {y,35},
                       {y,36},
                       {y,37},
                       {y,38},
                       {y,39},
                       {y,40},
                       {y,41},
                       {y,42},
                       {y,43},
                       {y,44},
                       {y,45},
                       {y,46},
                       {y,47},
                       {y,48},
                       {y,49},
                       {y,50}]}}.
    {line,[{location,"map_SUITE.erl",535}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,111},[{x,0}]}.
    {get_map_elements,{f,111},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{literal,<<"50">>},
                             {x,6},
                             {literal,"40"},
                             {x,5},
                             {literal,{["00"]}},
                             {x,4},
                             {integer,30},
                             {x,3},
                             {integer,20},
                             {x,2},
                             {integer,10},
                             {x,1}]}}.
    {test,is_eq_exact,{f,111},[{x,1},{atom,a0}]}.
    {test,is_eq_exact,{f,111},[{x,2},{atom,b0}]}.
    {test,is_eq_exact,{f,111},[{x,3},{literal,"c0"}]}.
    {test,is_eq_exact,{f,111},[{x,4},{literal,"10"}]}.
    {test,is_eq_exact,{f,111},[{x,5},{literal,"d0"}]}.
    {test,is_eq_exact,{f,111},[{x,6},{literal,"e0"}]}.
    {get_map_elements,{f,110},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{literal,<<"51">>},
                             {x,6},
                             {literal,"41"},
                             {x,5},
                             {literal,{["01"]}},
                             {x,4},
                             {integer,31},
                             {x,3},
                             {integer,21},
                             {x,2},
                             {integer,11},
                             {x,1}]}}.
    {test,is_eq_exact,{f,110},[{x,1},{atom,a1}]}.
    {test,is_eq_exact,{f,110},[{x,2},{atom,b1}]}.
    {test,is_eq_exact,{f,110},[{x,3},{literal,"c1"}]}.
    {test,is_eq_exact,{f,110},[{x,4},{literal,"11"}]}.
    {test,is_eq_exact,{f,110},[{x,5},{literal,"d1"}]}.
    {test,is_eq_exact,{f,110},[{x,6},{literal,"e1"}]}.
    {get_map_elements,{f,109},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{literal,<<"52">>},
                             {x,6},
                             {literal,"42"},
                             {x,5},
                             {literal,{["02"]}},
                             {x,4},
                             {integer,32},
                             {x,3},
                             {integer,22},
                             {x,2},
                             {integer,12},
                             {x,1}]}}.
    {test,is_eq_exact,{f,109},[{x,1},{atom,a2}]}.
    {test,is_eq_exact,{f,109},[{x,2},{atom,b2}]}.
    {test,is_eq_exact,{f,109},[{x,3},{literal,"c2"}]}.
    {test,is_eq_exact,{f,109},[{x,4},{literal,"12"}]}.
    {test,is_eq_exact,{f,109},[{x,5},{literal,"d2"}]}.
    {test,is_eq_exact,{f,109},[{x,6},{literal,"e2"}]}.
    {get_map_elements,{f,108},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{literal,<<"53">>},
                             {x,6},
                             {literal,"43"},
                             {x,5},
                             {literal,{["03"]}},
                             {x,4},
                             {integer,33},
                             {x,3},
                             {integer,23},
                             {x,2},
                             {integer,13},
                             {x,1}]}}.
    {test,is_eq_exact,{f,108},[{x,1},{atom,a3}]}.
    {test,is_eq_exact,{f,108},[{x,2},{atom,b3}]}.
    {test,is_eq_exact,{f,108},[{x,3},{literal,"c3"}]}.
    {test,is_eq_exact,{f,108},[{x,4},{literal,"13"}]}.
    {test,is_eq_exact,{f,108},[{x,5},{literal,"d3"}]}.
    {test,is_eq_exact,{f,108},[{x,6},{literal,"e3"}]}.
    {get_map_elements,{f,107},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{literal,<<"54">>},
                             {x,6},
                             {literal,"44"},
                             {x,5},
                             {literal,{["04"]}},
                             {x,4},
                             {integer,34},
                             {x,3},
                             {integer,24},
                             {x,2},
                             {integer,14},
                             {x,1}]}}.
    {test,is_eq_exact,{f,107},[{x,1},{atom,a4}]}.
    {test,is_eq_exact,{f,107},[{x,2},{atom,b4}]}.
    {test,is_eq_exact,{f,107},[{x,3},{literal,"c4"}]}.
    {test,is_eq_exact,{f,107},[{x,4},{literal,"14"}]}.
    {test,is_eq_exact,{f,107},[{x,5},{literal,"d4"}]}.
    {test,is_eq_exact,{f,107},[{x,6},{literal,"e4"}]}.
    {get_map_elements,{f,106},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{literal,<<"55">>},
                             {x,6},
                             {literal,"45"},
                             {x,5},
                             {literal,{["05"]}},
                             {x,4},
                             {integer,35},
                             {x,3},
                             {integer,25},
                             {x,2},
                             {integer,15},
                             {x,1}]}}.
    {test,is_eq_exact,{f,106},[{x,1},{atom,a5}]}.
    {test,is_eq_exact,{f,106},[{x,2},{atom,b5}]}.
    {test,is_eq_exact,{f,106},[{x,3},{literal,"c5"}]}.
    {test,is_eq_exact,{f,106},[{x,4},{literal,"15"}]}.
    {test,is_eq_exact,{f,106},[{x,5},{literal,"d5"}]}.
    {test,is_eq_exact,{f,106},[{x,6},{literal,"e5"}]}.
    {get_map_elements,{f,105},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{literal,<<"56">>},
                             {x,6},
                             {literal,"46"},
                             {x,5},
                             {literal,{["06"]}},
                             {x,4},
                             {integer,36},
                             {x,3},
                             {integer,26},
                             {x,2},
                             {integer,16},
                             {x,1}]}}.
    {test,is_eq_exact,{f,105},[{x,1},{atom,a6}]}.
    {test,is_eq_exact,{f,105},[{x,2},{atom,b6}]}.
    {test,is_eq_exact,{f,105},[{x,3},{literal,"c6"}]}.
    {test,is_eq_exact,{f,105},[{x,4},{literal,"16"}]}.
    {test,is_eq_exact,{f,105},[{x,5},{literal,"d6"}]}.
    {test,is_eq_exact,{f,105},[{x,6},{literal,"e6"}]}.
    {get_map_elements,{f,104},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{literal,<<"57">>},
                             {x,6},
                             {literal,"47"},
                             {x,5},
                             {literal,{["07"]}},
                             {x,4},
                             {integer,37},
                             {x,3},
                             {integer,27},
                             {x,2},
                             {integer,17},
                             {x,1}]}}.
    {test,is_eq_exact,{f,104},[{x,1},{atom,a7}]}.
    {test,is_eq_exact,{f,104},[{x,2},{atom,b7}]}.
    {test,is_eq_exact,{f,104},[{x,3},{literal,"c7"}]}.
    {test,is_eq_exact,{f,104},[{x,4},{literal,"17"}]}.
    {test,is_eq_exact,{f,104},[{x,5},{literal,"d7"}]}.
    {test,is_eq_exact,{f,104},[{x,6},{literal,"e7"}]}.
    {get_map_elements,{f,103},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{literal,<<"58">>},
                             {x,6},
                             {literal,"48"},
                             {x,5},
                             {literal,{["08"]}},
                             {x,4},
                             {integer,38},
                             {x,3},
                             {integer,28},
                             {x,2},
                             {integer,18},
                             {x,1}]}}.
    {test,is_eq_exact,{f,103},[{x,1},{atom,a8}]}.
    {test,is_eq_exact,{f,103},[{x,2},{atom,b8}]}.
    {test,is_eq_exact,{f,103},[{x,3},{literal,"c8"}]}.
    {test,is_eq_exact,{f,103},[{x,4},{literal,"18"}]}.
    {test,is_eq_exact,{f,103},[{x,5},{literal,"d8"}]}.
    {test,is_eq_exact,{f,103},[{x,6},{literal,"e8"}]}.
    {get_map_elements,{f,102},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{literal,<<"59">>},
                             {x,6},
                             {literal,"49"},
                             {x,5},
                             {literal,{["09"]}},
                             {x,4},
                             {integer,39},
                             {x,3},
                             {integer,29},
                             {x,2},
                             {integer,19},
                             {x,1}]}}.
    {test,is_eq_exact,{f,102},[{x,1},{atom,a9}]}.
    {test,is_eq_exact,{f,102},[{x,2},{atom,b9}]}.
    {test,is_eq_exact,{f,102},[{x,3},{literal,"c9"}]}.
    {test,is_eq_exact,{f,102},[{x,4},{literal,"19"}]}.
    {test,is_eq_exact,{f,102},[{x,5},{literal,"d9"}]}.
    {test,is_eq_exact,{f,102},[{x,6},{literal,"e9"}]}.
    {get_map_elements,{f,101},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{literal,#{map => key,second => small}},
                             {x,3},
                             {literal,#{map => key,third => small}},
                             {x,2},
                             {literal,#{map => key,one => small}},
                             {x,1}]}}.
    {test,is_eq_exact,{f,101},[{x,1},{literal,"small map key 1"}]}.
    {test,is_eq_exact,{f,101},[{x,2},{literal,"small map key 3"}]}.
    {test,is_eq_exact,{f,101},[{x,3},{literal,"small map key 2"}]}.
    {get_map_elements,{f,100},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{literal,#{10 => a0,11 => a1,12 => a2,13 => a3,
                                        14 => a4,15 => a5,17 => a7,18 => a8,
                                        19 => a9,20 => b0,21 => b1,22 => b2,
                                        23 => b3,24 => b4,25 => b5,27 => b7,
                                        28 => b8,29 => b9,30 => "c0",
                                        31 => "c1",32 => "c2",33 => "c3",
                                        34 => "c4",35 => "c5",37 => "c7",
                                        38 => "c8",39 => "c9",k16 => a6,
                                        k26 => b6,k36 => "c6",
                                        {["00"]} => "10",
                                        {["01"]} => "11",
                                        {["02"]} => "12",
                                        {["03"]} => "13",
                                        {["04"]} => "14",
                                        {["05"]} => "15",
                                        {["06"]} => "16",
                                        {["07"]} => "17",
                                        {["08"]} => "18",
                                        {["09"]} => "19",
                                        "40" => "d0","41" => "d1",
                                        "42" => "d2","43" => "d3",
                                        "44" => "d4","45" => "d5",
                                        "46" => "d6","47" => "d7",
                                        "48" => "d8","49" => "d9",
                                        <<"50">> => "e0",<<"51">> => "e1",
                                        <<"52">> => "e2",<<"53">> => "e3",
                                        <<"54">> => "e4",<<"55">> => "e5",
                                        <<"56">> => "e6",<<"57">> => "e7",
                                        <<"58">> => "e8",<<"59">> => "e9"}},
                             {x,2},
                             {literal,#{10 => a0,11 => a1,12 => a2,13 => a3,
                                        14 => a4,15 => a5,16 => a6,17 => a7,
                                        18 => a8,19 => a9,20 => b0,21 => b1,
                                        22 => b2,23 => b3,24 => b4,25 => b5,
                                        26 => b6,27 => b7,28 => b8,29 => b9,
                                        30 => "c0",31 => "c1",32 => "c2",
                                        33 => "c3",34 => "c4",35 => "c5",
                                        36 => "c6",37 => "c7",38 => "c8",
                                        39 => "c9",
                                        {["00"]} => "10",
                                        {["01"]} => "11",
                                        {["02"]} => "12",
                                        {["03"]} => "13",
                                        {["04"]} => "14",
                                        {["05"]} => "15",
                                        {["06"]} => "16",
                                        {["07"]} => "17",
                                        {["08"]} => "18",
                                        {["09"]} => "19",
                                        "40" => "d0","41" => "d1",
                                        "42" => "d2","43" => "d3",
                                        "44" => "d4","45" => "d5",
                                        "46" => "d6","47" => "d7",
                                        "48" => "d8","49" => "d9",
                                        <<"50">> => "e0",<<"51">> => "e1",
                                        <<"52">> => "e2",<<"53">> => "e3",
                                        <<"54">> => "e4",<<"55">> => "e5",
                                        <<"56">> => "e6",<<"57">> => "e7",
                                        <<"58">> => "e8",<<"59">> => "e9"}},
                             {x,1}]}}.
    {test,is_eq_exact,{f,100},[{x,1},{literal,"large map key 1"}]}.
    {test,is_eq_exact,{f,100},[{x,2},{literal,"large map key 2"}]}.
    {line,[{location,"map_SUITE.erl",627}]}.
    {gc_bif,map_size,{f,0},1,[{tr,{x,0},{t_map,any,any}}],{x,0}}.
    {test,is_eq_exact,
          {f,99},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},{integer,95}]}.
    {get_map_elements,{f,98},
                      {tr,{y,54},{t_map,any,any}},
                      {list,[{literal,<<"50">>},
                             {x,5},
                             {literal,"40"},
                             {x,4},
                             {literal,{["00"]}},
                             {x,3},
                             {integer,30},
                             {x,2},
                             {integer,20},
                             {x,1},
                             {integer,10},
                             {x,0}]}}.
    {test,is_eq_exact,{f,98},[{x,0},{atom,a0}]}.
    {test,is_eq_exact,{f,98},[{x,1},{atom,b0}]}.
    {test,is_eq_exact,{f,98},[{x,2},{literal,"c0"}]}.
    {test,is_eq_exact,{f,98},[{x,3},{literal,"10"}]}.
    {test,is_eq_exact,{f,98},[{x,4},{literal,"d0"}]}.
    {test,is_eq_exact,{f,98},[{x,5},{literal,"e0"}]}.
    {get_map_elements,{f,97},
                      {tr,{y,54},{t_map,any,any}},
                      {list,[{literal,<<"51">>},
                             {x,5},
                             {literal,"41"},
                             {x,4},
                             {literal,{["01"]}},
                             {x,3},
                             {integer,31},
                             {x,2},
                             {integer,21},
                             {x,1},
                             {integer,11},
                             {x,0}]}}.
    {test,is_eq_exact,{f,97},[{x,0},{atom,a1}]}.
    {test,is_eq_exact,{f,97},[{x,1},{atom,b1}]}.
    {test,is_eq_exact,{f,97},[{x,2},{literal,"c1"}]}.
    {test,is_eq_exact,{f,97},[{x,3},{literal,"11"}]}.
    {test,is_eq_exact,{f,97},[{x,4},{literal,"d1"}]}.
    {test,is_eq_exact,{f,97},[{x,5},{literal,"e1"}]}.
    {get_map_elements,{f,96},
                      {tr,{y,54},{t_map,any,any}},
                      {list,[{literal,<<"52">>},
                             {x,5},
                             {literal,"42"},
                             {x,4},
                             {literal,{["02"]}},
                             {x,3},
                             {integer,32},
                             {x,2},
                             {integer,22},
                             {x,1},
                             {integer,12},
                             {x,0}]}}.
    {test,is_eq_exact,{f,96},[{x,0},{atom,a2}]}.
    {test,is_eq_exact,{f,96},[{x,1},{atom,b2}]}.
    {test,is_eq_exact,{f,96},[{x,2},{literal,"c2"}]}.
    {test,is_eq_exact,{f,96},[{x,3},{literal,"12"}]}.
    {test,is_eq_exact,{f,96},[{x,4},{literal,"d2"}]}.
    {test,is_eq_exact,{f,96},[{x,5},{literal,"e2"}]}.
    {get_map_elements,{f,95},
                      {tr,{y,54},{t_map,any,any}},
                      {list,[{literal,<<"53">>},
                             {x,5},
                             {literal,"43"},
                             {x,4},
                             {literal,{["03"]}},
                             {x,3},
                             {integer,33},
                             {x,2},
                             {integer,23},
                             {x,1},
                             {integer,13},
                             {x,0}]}}.
    {test,is_eq_exact,{f,95},[{x,0},{atom,a3}]}.
    {test,is_eq_exact,{f,95},[{x,1},{atom,b3}]}.
    {test,is_eq_exact,{f,95},[{x,2},{literal,"c3"}]}.
    {test,is_eq_exact,{f,95},[{x,3},{literal,"13"}]}.
    {test,is_eq_exact,{f,95},[{x,4},{literal,"d3"}]}.
    {test,is_eq_exact,{f,95},[{x,5},{literal,"e3"}]}.
    {get_map_elements,{f,94},
                      {tr,{y,54},{t_map,any,any}},
                      {list,[{literal,<<"54">>},
                             {x,5},
                             {literal,"44"},
                             {x,4},
                             {literal,{["04"]}},
                             {x,3},
                             {integer,34},
                             {x,2},
                             {integer,24},
                             {x,1},
                             {integer,14},
                             {x,0}]}}.
    {test,is_eq_exact,{f,94},[{x,0},{atom,a4}]}.
    {test,is_eq_exact,{f,94},[{x,1},{atom,b4}]}.
    {test,is_eq_exact,{f,94},[{x,2},{literal,"c4"}]}.
    {test,is_eq_exact,{f,94},[{x,3},{literal,"14"}]}.
    {test,is_eq_exact,{f,94},[{x,4},{literal,"d4"}]}.
    {test,is_eq_exact,{f,94},[{x,5},{literal,"e4"}]}.
    {get_map_elements,{f,93},
                      {tr,{y,53},{t_map,any,any}},
                      {list,[{literal,<<"50">>},
                             {x,5},
                             {literal,"40"},
                             {x,4},
                             {literal,{["00"]}},
                             {x,3},
                             {integer,30},
                             {x,2},
                             {integer,20},
                             {x,1},
                             {integer,10},
                             {x,0}]}}.
    {test,is_eq_exact,{f,93},[{x,0},{atom,na0}]}.
    {test,is_eq_exact,{f,93},[{x,1},{atom,nb0}]}.
    {test,is_eq_exact,{f,93},[{x,2},{literal,"nc0"}]}.
    {test,is_eq_exact,{f,93},[{x,3},{literal,"n10"}]}.
    {test,is_eq_exact,{f,93},[{x,4},{literal,"nd0"}]}.
    {test,is_eq_exact,{f,93},[{x,5},{literal,"ne0"}]}.
    {get_map_elements,{f,92},
                      {tr,{y,53},{t_map,any,any}},
                      {list,[{literal,<<"51">>},
                             {x,5},
                             {literal,"41"},
                             {x,4},
                             {literal,{["01"]}},
                             {x,3},
                             {integer,31},
                             {x,2},
                             {integer,21},
                             {x,1},
                             {integer,11},
                             {x,0}]}}.
    {test,is_eq_exact,{f,92},[{x,0},{atom,na1}]}.
    {test,is_eq_exact,{f,92},[{x,1},{atom,nb1}]}.
    {test,is_eq_exact,{f,92},[{x,2},{literal,"nc1"}]}.
    {test,is_eq_exact,{f,92},[{x,3},{literal,"n11"}]}.
    {test,is_eq_exact,{f,92},[{x,4},{literal,"nd1"}]}.
    {test,is_eq_exact,{f,92},[{x,5},{literal,"ne1"}]}.
    {get_map_elements,{f,91},
                      {tr,{y,53},{t_map,any,any}},
                      {list,[{literal,<<"52">>},
                             {x,5},
                             {literal,"42"},
                             {x,4},
                             {literal,{["02"]}},
                             {x,3},
                             {integer,32},
                             {x,2},
                             {integer,22},
                             {x,1},
                             {integer,12},
                             {x,0}]}}.
    {test,is_eq_exact,{f,91},[{x,0},{atom,na2}]}.
    {test,is_eq_exact,{f,91},[{x,1},{atom,nb2}]}.
    {test,is_eq_exact,{f,91},[{x,2},{literal,"nc2"}]}.
    {test,is_eq_exact,{f,91},[{x,3},{literal,"n12"}]}.
    {test,is_eq_exact,{f,91},[{x,4},{literal,"nd2"}]}.
    {test,is_eq_exact,{f,91},[{x,5},{literal,"ne2"}]}.
    {get_map_elements,{f,90},
                      {tr,{y,53},{t_map,any,any}},
                      {list,[{literal,<<"53">>},
                             {x,5},
                             {literal,"43"},
                             {x,4},
                             {literal,{["03"]}},
                             {x,3},
                             {integer,33},
                             {x,2},
                             {integer,23},
                             {x,1},
                             {integer,13},
                             {x,0}]}}.
    {test,is_eq_exact,{f,90},[{x,0},{atom,na3}]}.
    {test,is_eq_exact,{f,90},[{x,1},{atom,nb3}]}.
    {test,is_eq_exact,{f,90},[{x,2},{literal,"nc3"}]}.
    {test,is_eq_exact,{f,90},[{x,3},{literal,"n13"}]}.
    {test,is_eq_exact,{f,90},[{x,4},{literal,"nd3"}]}.
    {test,is_eq_exact,{f,90},[{x,5},{literal,"ne3"}]}.
    {get_map_elements,{f,89},
                      {tr,{y,53},{t_map,any,any}},
                      {list,[{literal,<<"54">>},
                             {x,5},
                             {literal,"44"},
                             {x,4},
                             {literal,{["04"]}},
                             {x,3},
                             {integer,34},
                             {x,2},
                             {integer,24},
                             {x,1},
                             {integer,14},
                             {x,0}]}}.
    {test,is_eq_exact,{f,89},[{x,0},{atom,na4}]}.
    {test,is_eq_exact,{f,89},[{x,1},{atom,nb4}]}.
    {test,is_eq_exact,{f,89},[{x,2},{literal,"nc4"}]}.
    {test,is_eq_exact,{f,89},[{x,3},{literal,"n14"}]}.
    {test,is_eq_exact,{f,89},[{x,4},{literal,"nd4"}]}.
    {test,is_eq_exact,{f,89},[{x,5},{literal,"ne4"}]}.
    {get_map_elements,{f,88},
                      {tr,{y,53},{t_map,any,any}},
                      {list,[{literal,<<"55">>},
                             {x,5},
                             {literal,"45"},
                             {x,4},
                             {literal,{["05"]}},
                             {x,3},
                             {integer,35},
                             {x,2},
                             {integer,25},
                             {x,1},
                             {integer,15},
                             {x,0}]}}.
    {test,is_eq_exact,{f,88},[{x,0},{atom,a5}]}.
    {test,is_eq_exact,{f,88},[{x,1},{atom,b5}]}.
    {test,is_eq_exact,{f,88},[{x,2},{literal,"c5"}]}.
    {test,is_eq_exact,{f,88},[{x,3},{literal,"15"}]}.
    {test,is_eq_exact,{f,88},[{x,4},{literal,"d5"}]}.
    {test,is_eq_exact,{f,88},[{x,5},{literal,"e5"}]}.
    {get_map_elements,{f,87},
                      {tr,{y,53},{t_map,any,any}},
                      {list,[{literal,<<"56">>},
                             {x,5},
                             {literal,"46"},
                             {x,4},
                             {literal,{["06"]}},
                             {x,3},
                             {integer,36},
                             {x,2},
                             {integer,26},
                             {x,1},
                             {integer,16},
                             {x,0}]}}.
    {test,is_eq_exact,{f,87},[{x,0},{atom,a6}]}.
    {test,is_eq_exact,{f,87},[{x,1},{atom,b6}]}.
    {test,is_eq_exact,{f,87},[{x,2},{literal,"c6"}]}.
    {test,is_eq_exact,{f,87},[{x,3},{literal,"16"}]}.
    {test,is_eq_exact,{f,87},[{x,4},{literal,"d6"}]}.
    {test,is_eq_exact,{f,87},[{x,5},{literal,"e6"}]}.
    {get_map_elements,{f,86},
                      {tr,{y,53},{t_map,any,any}},
                      {list,[{literal,<<"57">>},
                             {x,5},
                             {literal,"47"},
                             {x,4},
                             {literal,{["07"]}},
                             {x,3},
                             {integer,37},
                             {x,2},
                             {integer,27},
                             {x,1},
                             {integer,17},
                             {x,0}]}}.
    {test,is_eq_exact,{f,86},[{x,0},{atom,a7}]}.
    {test,is_eq_exact,{f,86},[{x,1},{atom,b7}]}.
    {test,is_eq_exact,{f,86},[{x,2},{literal,"c7"}]}.
    {test,is_eq_exact,{f,86},[{x,3},{literal,"17"}]}.
    {test,is_eq_exact,{f,86},[{x,4},{literal,"d7"}]}.
    {test,is_eq_exact,{f,86},[{x,5},{literal,"e7"}]}.
    {get_map_elements,{f,85},
                      {tr,{y,53},{t_map,any,any}},
                      {list,[{literal,<<"58">>},
                             {x,5},
                             {literal,"48"},
                             {x,4},
                             {literal,{["08"]}},
                             {x,3},
                             {integer,38},
                             {x,2},
                             {integer,28},
                             {x,1},
                             {integer,18},
                             {x,0}]}}.
    {test,is_eq_exact,{f,85},[{x,0},{atom,a8}]}.
    {test,is_eq_exact,{f,85},[{x,1},{atom,b8}]}.
    {test,is_eq_exact,{f,85},[{x,2},{literal,"c8"}]}.
    {test,is_eq_exact,{f,85},[{x,3},{literal,"18"}]}.
    {test,is_eq_exact,{f,85},[{x,4},{literal,"d8"}]}.
    {test,is_eq_exact,{f,85},[{x,5},{literal,"e8"}]}.
    {get_map_elements,{f,84},
                      {tr,{y,53},{t_map,any,any}},
                      {list,[{literal,<<"59">>},
                             {x,5},
                             {literal,"49"},
                             {x,4},
                             {literal,{["09"]}},
                             {x,3},
                             {integer,39},
                             {x,2},
                             {integer,29},
                             {x,1},
                             {integer,19},
                             {x,0}]}}.
    {test,is_eq_exact,{f,84},[{x,0},{atom,a9}]}.
    {test,is_eq_exact,{f,84},[{x,1},{atom,b9}]}.
    {test,is_eq_exact,{f,84},[{x,2},{literal,"c9"}]}.
    {test,is_eq_exact,{f,84},[{x,3},{literal,"19"}]}.
    {test,is_eq_exact,{f,84},[{x,4},{literal,"d9"}]}.
    {test,is_eq_exact,{f,84},[{x,5},{literal,"e9"}]}.
    {get_map_elements,{f,83},
                      {tr,{y,52},{t_map,any,any}},
                      {list,[{literal,<<"55">>},
                             {x,5},
                             {literal,"45"},
                             {x,4},
                             {literal,{["05"]}},
                             {x,3},
                             {integer,35},
                             {x,2},
                             {integer,25},
                             {x,1},
                             {integer,15},
                             {x,0}]}}.
    {test,is_eq_exact,{f,83},[{x,0},{atom,a5}]}.
    {test,is_eq_exact,{f,83},[{x,1},{atom,b5}]}.
    {test,is_eq_exact,{f,83},[{x,2},{literal,"c5"}]}.
    {test,is_eq_exact,{f,83},[{x,3},{literal,"15"}]}.
    {test,is_eq_exact,{f,83},[{x,4},{literal,"d5"}]}.
    {test,is_eq_exact,{f,83},[{x,5},{literal,"e5"}]}.
    {get_map_elements,{f,82},
                      {tr,{y,52},{t_map,any,any}},
                      {list,[{literal,<<"56">>},
                             {x,5},
                             {literal,"46"},
                             {x,4},
                             {literal,{["06"]}},
                             {x,3},
                             {integer,36},
                             {x,2},
                             {integer,26},
                             {x,1},
                             {integer,16},
                             {x,0}]}}.
    {test,is_eq_exact,{f,82},[{x,0},{atom,a6}]}.
    {test,is_eq_exact,{f,82},[{x,1},{atom,b6}]}.
    {test,is_eq_exact,{f,82},[{x,2},{literal,"c6"}]}.
    {test,is_eq_exact,{f,82},[{x,3},{literal,"16"}]}.
    {test,is_eq_exact,{f,82},[{x,4},{literal,"d6"}]}.
    {test,is_eq_exact,{f,82},[{x,5},{literal,"e6"}]}.
    {get_map_elements,{f,81},
                      {tr,{y,52},{t_map,any,any}},
                      {list,[{literal,<<"57">>},
                             {x,5},
                             {literal,"47"},
                             {x,4},
                             {literal,{["07"]}},
                             {x,3},
                             {integer,37},
                             {x,2},
                             {integer,27},
                             {x,1},
                             {integer,17},
                             {x,0}]}}.
    {test,is_eq_exact,{f,81},[{x,0},{atom,a7}]}.
    {test,is_eq_exact,{f,81},[{x,1},{atom,b7}]}.
    {test,is_eq_exact,{f,81},[{x,2},{literal,"c7"}]}.
    {test,is_eq_exact,{f,81},[{x,3},{literal,"17"}]}.
    {test,is_eq_exact,{f,81},[{x,4},{literal,"d7"}]}.
    {test,is_eq_exact,{f,81},[{x,5},{literal,"e7"}]}.
    {get_map_elements,{f,80},
                      {tr,{y,52},{t_map,any,any}},
                      {list,[{literal,<<"58">>},
                             {x,5},
                             {literal,"48"},
                             {x,4},
                             {literal,{["08"]}},
                             {x,3},
                             {integer,38},
                             {x,2},
                             {integer,28},
                             {x,1},
                             {integer,18},
                             {x,0}]}}.
    {test,is_eq_exact,{f,80},[{x,0},{atom,a8}]}.
    {test,is_eq_exact,{f,80},[{x,1},{atom,b8}]}.
    {test,is_eq_exact,{f,80},[{x,2},{literal,"c8"}]}.
    {test,is_eq_exact,{f,80},[{x,3},{literal,"18"}]}.
    {test,is_eq_exact,{f,80},[{x,4},{literal,"d8"}]}.
    {test,is_eq_exact,{f,80},[{x,5},{literal,"e8"}]}.
    {get_map_elements,{f,79},
                      {tr,{y,52},{t_map,any,any}},
                      {list,[{literal,<<"59">>},
                             {x,5},
                             {literal,"49"},
                             {x,4},
                             {literal,{["09"]}},
                             {x,3},
                             {integer,39},
                             {x,2},
                             {integer,29},
                             {x,1},
                             {integer,19},
                             {x,0}]}}.
    {test,is_eq_exact,{f,79},[{x,0},{atom,a9}]}.
    {test,is_eq_exact,{f,79},[{x,1},{atom,b9}]}.
    {test,is_eq_exact,{f,79},[{x,2},{literal,"c9"}]}.
    {test,is_eq_exact,{f,79},[{x,3},{literal,"19"}]}.
    {test,is_eq_exact,{f,79},[{x,4},{literal,"d9"}]}.
    {test,is_eq_exact,{f,79},[{x,5},{literal,"e9"}]}.
    {get_map_elements,{f,78},
                      {tr,{y,52},{t_map,any,any}},
                      {list,[{literal,<<"50">>},
                             {x,5},
                             {literal,"40"},
                             {x,4},
                             {literal,{["00"]}},
                             {x,3},
                             {float,30.0},
                             {x,2},
                             {float,20.0},
                             {x,1},
                             {float,10.0},
                             {x,0}]}}.
    {test,is_eq_exact,{f,78},[{x,0},{atom,fa0}]}.
    {test,is_eq_exact,{f,78},[{x,1},{atom,fb0}]}.
    {test,is_eq_exact,{f,78},[{x,2},{literal,"fc0"}]}.
    {test,is_eq_exact,{f,78},[{x,3},{literal,"10"}]}.
    {test,is_eq_exact,{f,78},[{x,4},{literal,"d0"}]}.
    {test,is_eq_exact,{f,78},[{x,5},{literal,"e0"}]}.
    {get_map_elements,{f,77},
                      {tr,{y,52},{t_map,any,any}},
                      {list,[{literal,<<"51">>},
                             {x,5},
                             {literal,"41"},
                             {x,4},
                             {literal,{["01"]}},
                             {x,3},
                             {float,31.0},
                             {x,2},
                             {float,21.0},
                             {x,1},
                             {float,11.0},
                             {x,0}]}}.
    {test,is_eq_exact,{f,77},[{x,0},{atom,fa1}]}.
    {test,is_eq_exact,{f,77},[{x,1},{atom,fb1}]}.
    {test,is_eq_exact,{f,77},[{x,2},{literal,"fc1"}]}.
    {test,is_eq_exact,{f,77},[{x,3},{literal,"11"}]}.
    {test,is_eq_exact,{f,77},[{x,4},{literal,"d1"}]}.
    {test,is_eq_exact,{f,77},[{x,5},{literal,"e1"}]}.
    {get_map_elements,{f,76},
                      {tr,{y,52},{t_map,any,any}},
                      {list,[{literal,<<"52">>},
                             {x,5},
                             {literal,"42"},
                             {x,4},
                             {literal,{["02"]}},
                             {x,3},
                             {float,32.0},
                             {x,2},
                             {float,22.0},
                             {x,1},
                             {float,12.0},
                             {x,0}]}}.
    {test,is_eq_exact,{f,76},[{x,0},{atom,fa2}]}.
    {test,is_eq_exact,{f,76},[{x,1},{atom,fb2}]}.
    {test,is_eq_exact,{f,76},[{x,2},{literal,"fc2"}]}.
    {test,is_eq_exact,{f,76},[{x,3},{literal,"12"}]}.
    {test,is_eq_exact,{f,76},[{x,4},{literal,"d2"}]}.
    {test,is_eq_exact,{f,76},[{x,5},{literal,"e2"}]}.
    {get_map_elements,{f,75},
                      {tr,{y,52},{t_map,any,any}},
                      {list,[{literal,<<"53">>},
                             {x,5},
                             {literal,"43"},
                             {x,4},
                             {literal,{["03"]}},
                             {x,3},
                             {float,33.0},
                             {x,2},
                             {float,23.0},
                             {x,1},
                             {float,13.0},
                             {x,0}]}}.
    {test,is_eq_exact,{f,75},[{x,0},{atom,fa3}]}.
    {test,is_eq_exact,{f,75},[{x,1},{atom,fb3}]}.
    {test,is_eq_exact,{f,75},[{x,2},{literal,"fc3"}]}.
    {test,is_eq_exact,{f,75},[{x,3},{literal,"13"}]}.
    {test,is_eq_exact,{f,75},[{x,4},{literal,"d3"}]}.
    {test,is_eq_exact,{f,75},[{x,5},{literal,"e3"}]}.
    {get_map_elements,{f,74},
                      {tr,{y,52},{t_map,any,any}},
                      {list,[{literal,<<"54">>},
                             {x,5},
                             {literal,"44"},
                             {x,4},
                             {literal,{["04"]}},
                             {x,3},
                             {float,34.0},
                             {x,2},
                             {float,24.0},
                             {x,1},
                             {float,14.0},
                             {x,0}]}}.
    {test,is_eq_exact,{f,74},[{x,0},{atom,fa4}]}.
    {test,is_eq_exact,{f,74},[{x,1},{atom,fb4}]}.
    {test,is_eq_exact,{f,74},[{x,2},{literal,"fc4"}]}.
    {test,is_eq_exact,{f,74},[{x,3},{literal,"14"}]}.
    {test,is_eq_exact,{f,74},[{x,4},{literal,"d4"}]}.
    {test,is_eq_exact,{f,74},[{x,5},{literal,"e4"}]}.
    {get_map_elements,{f,73},
                      {tr,{y,51},{t_map,any,any}},
                      {list,[{literal,<<"55">>},
                             {x,5},
                             {literal,"45"},
                             {x,4},
                             {literal,{["05"]}},
                             {x,3},
                             {integer,35},
                             {x,2},
                             {integer,25},
                             {x,1},
                             {integer,15},
                             {x,0}]}}.
    {test,is_eq_exact,{f,73},[{x,0},{atom,a5}]}.
    {test,is_eq_exact,{f,73},[{x,1},{atom,b5}]}.
    {test,is_eq_exact,{f,73},[{x,2},{literal,"c5"}]}.
    {test,is_eq_exact,{f,73},[{x,3},{literal,"15"}]}.
    {test,is_eq_exact,{f,73},[{x,4},{literal,"d5"}]}.
    {test,is_eq_exact,{f,73},[{x,5},{literal,"e5"}]}.
    {get_map_elements,{f,72},
                      {tr,{y,51},{t_map,any,any}},
                      {list,[{literal,<<"56">>},
                             {x,5},
                             {literal,"46"},
                             {x,4},
                             {literal,{["06"]}},
                             {x,3},
                             {integer,36},
                             {x,2},
                             {integer,26},
                             {x,1},
                             {integer,16},
                             {x,0}]}}.
    {test,is_eq_exact,{f,72},[{x,0},{atom,a6}]}.
    {test,is_eq_exact,{f,72},[{x,1},{atom,b6}]}.
    {test,is_eq_exact,{f,72},[{x,2},{literal,"c6"}]}.
    {test,is_eq_exact,{f,72},[{x,3},{literal,"16"}]}.
    {test,is_eq_exact,{f,72},[{x,4},{literal,"d6"}]}.
    {test,is_eq_exact,{f,72},[{x,5},{literal,"e6"}]}.
    {get_map_elements,{f,71},
                      {tr,{y,51},{t_map,any,any}},
                      {list,[{literal,<<"57">>},
                             {x,5},
                             {literal,"47"},
                             {x,4},
                             {literal,{["07"]}},
                             {x,3},
                             {integer,37},
                             {x,2},
                             {integer,27},
                             {x,1},
                             {integer,17},
                             {x,0}]}}.
    {test,is_eq_exact,{f,71},[{x,0},{atom,a7}]}.
    {test,is_eq_exact,{f,71},[{x,1},{atom,b7}]}.
    {test,is_eq_exact,{f,71},[{x,2},{literal,"c7"}]}.
    {test,is_eq_exact,{f,71},[{x,3},{literal,"17"}]}.
    {test,is_eq_exact,{f,71},[{x,4},{literal,"d7"}]}.
    {test,is_eq_exact,{f,71},[{x,5},{literal,"e7"}]}.
    {get_map_elements,{f,70},
                      {tr,{y,51},{t_map,any,any}},
                      {list,[{literal,<<"58">>},
                             {x,5},
                             {literal,"48"},
                             {x,4},
                             {literal,{["08"]}},
                             {x,3},
                             {integer,38},
                             {x,2},
                             {integer,28},
                             {x,1},
                             {integer,18},
                             {x,0}]}}.
    {test,is_eq_exact,{f,70},[{x,0},{atom,a8}]}.
    {test,is_eq_exact,{f,70},[{x,1},{atom,b8}]}.
    {test,is_eq_exact,{f,70},[{x,2},{literal,"c8"}]}.
    {test,is_eq_exact,{f,70},[{x,3},{literal,"18"}]}.
    {test,is_eq_exact,{f,70},[{x,4},{literal,"d8"}]}.
    {test,is_eq_exact,{f,70},[{x,5},{literal,"e8"}]}.
    {get_map_elements,{f,69},
                      {tr,{y,51},{t_map,any,any}},
                      {list,[{literal,<<"59">>},
                             {x,5},
                             {literal,"49"},
                             {x,4},
                             {literal,{["09"]}},
                             {x,3},
                             {integer,39},
                             {x,2},
                             {integer,29},
                             {x,1},
                             {integer,19},
                             {x,0}]}}.
    {test,is_eq_exact,{f,69},[{x,0},{atom,a9}]}.
    {test,is_eq_exact,{f,69},[{x,1},{atom,b9}]}.
    {test,is_eq_exact,{f,69},[{x,2},{literal,"c9"}]}.
    {test,is_eq_exact,{f,69},[{x,3},{literal,"19"}]}.
    {test,is_eq_exact,{f,69},[{x,4},{literal,"d9"}]}.
    {test,is_eq_exact,{f,69},[{x,5},{literal,"e9"}]}.
    {get_map_elements,{f,68},
                      {tr,{y,51},{t_map,any,any}},
                      {list,[{literal,<<"50">>},
                             {x,5},
                             {literal,"40"},
                             {x,4},
                             {literal,{["00"]}},
                             {x,3},
                             {float,30.0},
                             {x,2},
                             {float,20.0},
                             {x,1},
                             {float,10.0},
                             {x,0}]}}.
    {test,is_eq_exact,{f,68},[{x,0},{atom,fa0}]}.
    {test,is_eq_exact,{f,68},[{x,1},{atom,fb0}]}.
    {test,is_eq_exact,{f,68},[{x,2},{literal,"fc0"}]}.
    {test,is_eq_exact,{f,68},[{x,3},{literal,"10"}]}.
    {test,is_eq_exact,{f,68},[{x,4},{literal,"d0"}]}.
    {test,is_eq_exact,{f,68},[{x,5},{literal,"e0"}]}.
    {get_map_elements,{f,67},
                      {tr,{y,51},{t_map,any,any}},
                      {list,[{literal,<<"51">>},
                             {x,5},
                             {literal,"41"},
                             {x,4},
                             {literal,{["01"]}},
                             {x,3},
                             {float,31.0},
                             {x,2},
                             {float,21.0},
                             {x,1},
                             {float,11.0},
                             {x,0}]}}.
    {test,is_eq_exact,{f,67},[{x,0},{atom,fa1}]}.
    {test,is_eq_exact,{f,67},[{x,1},{atom,fb1}]}.
    {test,is_eq_exact,{f,67},[{x,2},{literal,"fc1"}]}.
    {test,is_eq_exact,{f,67},[{x,3},{literal,"11"}]}.
    {test,is_eq_exact,{f,67},[{x,4},{literal,"d1"}]}.
    {test,is_eq_exact,{f,67},[{x,5},{literal,"e1"}]}.
    {get_map_elements,{f,66},
                      {tr,{y,51},{t_map,any,any}},
                      {list,[{literal,<<"52">>},
                             {x,5},
                             {literal,"42"},
                             {x,4},
                             {literal,{["02"]}},
                             {x,3},
                             {float,32.0},
                             {x,2},
                             {float,22.0},
                             {x,1},
                             {float,12.0},
                             {x,0}]}}.
    {test,is_eq_exact,{f,66},[{x,0},{atom,fa2}]}.
    {test,is_eq_exact,{f,66},[{x,1},{atom,fb2}]}.
    {test,is_eq_exact,{f,66},[{x,2},{literal,"fc2"}]}.
    {test,is_eq_exact,{f,66},[{x,3},{literal,"12"}]}.
    {test,is_eq_exact,{f,66},[{x,4},{literal,"d2"}]}.
    {test,is_eq_exact,{f,66},[{x,5},{literal,"e2"}]}.
    {get_map_elements,{f,65},
                      {tr,{y,51},{t_map,any,any}},
                      {list,[{literal,<<"53">>},
                             {x,5},
                             {literal,"43"},
                             {x,4},
                             {literal,{["03"]}},
                             {x,3},
                             {float,33.0},
                             {x,2},
                             {float,23.0},
                             {x,1},
                             {float,13.0},
                             {x,0}]}}.
    {test,is_eq_exact,{f,65},[{x,0},{atom,fa3}]}.
    {test,is_eq_exact,{f,65},[{x,1},{atom,fb3}]}.
    {test,is_eq_exact,{f,65},[{x,2},{literal,"fc3"}]}.
    {test,is_eq_exact,{f,65},[{x,3},{literal,"13"}]}.
    {test,is_eq_exact,{f,65},[{x,4},{literal,"d3"}]}.
    {test,is_eq_exact,{f,65},[{x,5},{literal,"e3"}]}.
    {get_map_elements,{f,64},
                      {tr,{y,51},{t_map,any,any}},
                      {list,[{literal,<<"54">>},
                             {x,5},
                             {literal,"44"},
                             {x,4},
                             {literal,{["04"]}},
                             {x,3},
                             {float,34.0},
                             {x,2},
                             {float,24.0},
                             {x,1},
                             {float,14.0},
                             {x,0}]}}.
    {test,is_eq_exact,{f,64},[{x,0},{atom,fa4}]}.
    {test,is_eq_exact,{f,64},[{x,1},{atom,fb4}]}.
    {test,is_eq_exact,{f,64},[{x,2},{literal,"fc4"}]}.
    {test,is_eq_exact,{f,64},[{x,3},{literal,"14"}]}.
    {test,is_eq_exact,{f,64},[{x,4},{literal,"d4"}]}.
    {test,is_eq_exact,{f,64},[{x,5},{literal,"e4"}]}.
    {get_map_elements,{f,63},
                      {tr,{y,51},{t_map,any,any}},
                      {list,[{float,35.0},
                             {x,2},
                             {float,25.0},
                             {x,1},
                             {float,15.0},
                             {x,0}]}}.
    {test,is_eq_exact,{f,63},[{x,0},{atom,fa5}]}.
    {test,is_eq_exact,{f,63},[{x,1},{atom,fb5}]}.
    {test,is_eq_exact,{f,63},[{x,2},{literal,"fc5"}]}.
    {get_map_elements,{f,62},
                      {tr,{y,51},{t_map,any,any}},
                      {list,[{float,36.0},
                             {x,2},
                             {float,26.0},
                             {x,1},
                             {float,16.0},
                             {x,0}]}}.
    {test,is_eq_exact,{f,62},[{x,0},{atom,fa6}]}.
    {test,is_eq_exact,{f,62},[{x,1},{atom,fb6}]}.
    {test,is_eq_exact,{f,62},[{x,2},{literal,"fc6"}]}.
    {get_map_elements,{f,61},
                      {tr,{y,51},{t_map,any,any}},
                      {list,[{float,37.0},
                             {x,2},
                             {float,27.0},
                             {x,1},
                             {float,17.0},
                             {x,0}]}}.
    {test,is_eq_exact,{f,61},[{x,0},{atom,fa7}]}.
    {test,is_eq_exact,{f,61},[{x,1},{atom,fb7}]}.
    {test,is_eq_exact,{f,61},[{x,2},{literal,"fc7"}]}.
    {get_map_elements,{f,60},
                      {tr,{y,51},{t_map,any,any}},
                      {list,[{float,38.0},
                             {x,2},
                             {float,28.0},
                             {x,1},
                             {float,18.0},
                             {x,0}]}}.
    {test,is_eq_exact,{f,60},[{x,0},{atom,fa8}]}.
    {test,is_eq_exact,{f,60},[{x,1},{atom,fb8}]}.
    {test,is_eq_exact,{f,60},[{x,2},{literal,"fc8"}]}.
    {get_map_elements,{f,59},
                      {tr,{y,51},{t_map,any,any}},
                      {list,[{float,39.0},
                             {x,2},
                             {float,29.0},
                             {x,1},
                             {float,19.0},
                             {x,0}]}}.
    {test,is_eq_exact,{f,59},[{x,0},{atom,fa9}]}.
    {test,is_eq_exact,{f,59},[{x,1},{atom,fb9}]}.
    {test,is_eq_exact,{f,59},[{x,2},{literal,"fc9"}]}.
    {get_map_elements,{f,58},
                      {tr,{y,51},{t_map,any,any}},
                      {list,[{integer,36893488147419103232},
                             {x,1},
                             {integer,67108863},
                             {x,0}]}}.
    {test,is_eq_exact,{f,58},[{x,0},{atom,big8}]}.
    {test,is_eq_exact,{f,58},[{x,1},{atom,big1}]}.
    {get_map_elements,{f,57},
                      {tr,{y,51},{t_map,any,any}},
                      {list,[{integer,147573952589676412928},
                             {x,1},
                             {integer,8589934592},
                             {x,0}]}}.
    {test,is_eq_exact,{f,57},[{x,0},{atom,big6}]}.
    {test,is_eq_exact,{f,57},[{x,1},{atom,big3}]}.
    {get_map_elements,{f,56},
                      {tr,{y,51},{t_map,any,any}},
                      {list,[{integer,18446744073709551616},
                             {x,1},
                             {integer,4294967296},
                             {x,0}]}}.
    {test,is_eq_exact,{f,56},[{x,0},{atom,big5}]}.
    {test,is_eq_exact,{f,56},[{x,1},{atom,big4}]}.
    {get_map_elements,{f,55},
                      {tr,{y,51},{t_map,any,any}},
                      {list,[{integer,73786976294838206464},
                             {x,1},
                             {integer,4294967295},
                             {x,0}]}}.
    {test,is_eq_exact,{f,55},[{x,0},{atom,big7}]}.
    {test,is_eq_exact,{f,55},[{x,1},{atom,big2}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,55}.
    return.
  {label,55}.
    {line,[{location,"map_SUITE.erl",683}]}.
    {badmatch,{y,51}}.
  {label,56}.
    {line,[{location,"map_SUITE.erl",682}]}.
    {badmatch,{y,51}}.
  {label,57}.
    {line,[{location,"map_SUITE.erl",681}]}.
    {badmatch,{y,51}}.
  {label,58}.
    {line,[{location,"map_SUITE.erl",680}]}.
    {badmatch,{y,51}}.
  {label,59}.
    {line,[{location,"map_SUITE.erl",678}]}.
    {badmatch,{y,51}}.
  {label,60}.
    {line,[{location,"map_SUITE.erl",677}]}.
    {badmatch,{y,51}}.
  {label,61}.
    {line,[{location,"map_SUITE.erl",676}]}.
    {badmatch,{y,51}}.
  {label,62}.
    {line,[{location,"map_SUITE.erl",675}]}.
    {badmatch,{y,51}}.
  {label,63}.
    {line,[{location,"map_SUITE.erl",674}]}.
    {badmatch,{y,51}}.
  {label,64}.
    {line,[{location,"map_SUITE.erl",672}]}.
    {badmatch,{y,51}}.
  {label,65}.
    {line,[{location,"map_SUITE.erl",671}]}.
    {badmatch,{y,51}}.
  {label,66}.
    {line,[{location,"map_SUITE.erl",670}]}.
    {badmatch,{y,51}}.
  {label,67}.
    {line,[{location,"map_SUITE.erl",669}]}.
    {badmatch,{y,51}}.
  {label,68}.
    {line,[{location,"map_SUITE.erl",668}]}.
    {badmatch,{y,51}}.
  {label,69}.
    {line,[{location,"map_SUITE.erl",666}]}.
    {badmatch,{y,51}}.
  {label,70}.
    {line,[{location,"map_SUITE.erl",665}]}.
    {badmatch,{y,51}}.
  {label,71}.
    {line,[{location,"map_SUITE.erl",664}]}.
    {badmatch,{y,51}}.
  {label,72}.
    {line,[{location,"map_SUITE.erl",663}]}.
    {badmatch,{y,51}}.
  {label,73}.
    {line,[{location,"map_SUITE.erl",662}]}.
    {badmatch,{y,51}}.
  {label,74}.
    {line,[{location,"map_SUITE.erl",660}]}.
    {badmatch,{y,52}}.
  {label,75}.
    {line,[{location,"map_SUITE.erl",659}]}.
    {badmatch,{y,52}}.
  {label,76}.
    {line,[{location,"map_SUITE.erl",658}]}.
    {badmatch,{y,52}}.
  {label,77}.
    {line,[{location,"map_SUITE.erl",657}]}.
    {badmatch,{y,52}}.
  {label,78}.
    {line,[{location,"map_SUITE.erl",656}]}.
    {badmatch,{y,52}}.
  {label,79}.
    {line,[{location,"map_SUITE.erl",654}]}.
    {badmatch,{y,52}}.
  {label,80}.
    {line,[{location,"map_SUITE.erl",653}]}.
    {badmatch,{y,52}}.
  {label,81}.
    {line,[{location,"map_SUITE.erl",652}]}.
    {badmatch,{y,52}}.
  {label,82}.
    {line,[{location,"map_SUITE.erl",651}]}.
    {badmatch,{y,52}}.
  {label,83}.
    {line,[{location,"map_SUITE.erl",650}]}.
    {badmatch,{y,52}}.
  {label,84}.
    {line,[{location,"map_SUITE.erl",648}]}.
    {badmatch,{y,53}}.
  {label,85}.
    {line,[{location,"map_SUITE.erl",647}]}.
    {badmatch,{y,53}}.
  {label,86}.
    {line,[{location,"map_SUITE.erl",646}]}.
    {badmatch,{y,53}}.
  {label,87}.
    {line,[{location,"map_SUITE.erl",645}]}.
    {badmatch,{y,53}}.
  {label,88}.
    {line,[{location,"map_SUITE.erl",644}]}.
    {badmatch,{y,53}}.
  {label,89}.
    {line,[{location,"map_SUITE.erl",642}]}.
    {badmatch,{y,53}}.
  {label,90}.
    {line,[{location,"map_SUITE.erl",641}]}.
    {badmatch,{y,53}}.
  {label,91}.
    {line,[{location,"map_SUITE.erl",640}]}.
    {badmatch,{y,53}}.
  {label,92}.
    {line,[{location,"map_SUITE.erl",639}]}.
    {badmatch,{y,53}}.
  {label,93}.
    {line,[{location,"map_SUITE.erl",638}]}.
    {badmatch,{y,53}}.
  {label,94}.
    {line,[{location,"map_SUITE.erl",636}]}.
    {badmatch,{y,54}}.
  {label,95}.
    {line,[{location,"map_SUITE.erl",635}]}.
    {badmatch,{y,54}}.
  {label,96}.
    {line,[{location,"map_SUITE.erl",634}]}.
    {badmatch,{y,54}}.
  {label,97}.
    {line,[{location,"map_SUITE.erl",633}]}.
    {badmatch,{y,54}}.
  {label,98}.
    {line,[{location,"map_SUITE.erl",632}]}.
    {badmatch,{y,54}}.
  {label,99}.
    {line,[{location,"map_SUITE.erl",627}]}.
    {badmatch,{x,0}}.
  {label,100}.
    {line,[{location,"map_SUITE.erl",603}]}.
    {badmatch,{x,0}}.
  {label,101}.
    {line,[{location,"map_SUITE.erl",599}]}.
    {badmatch,{x,0}}.
  {label,102}.
    {line,[{location,"map_SUITE.erl",597}]}.
    {badmatch,{x,0}}.
  {label,103}.
    {line,[{location,"map_SUITE.erl",596}]}.
    {badmatch,{x,0}}.
  {label,104}.
    {line,[{location,"map_SUITE.erl",595}]}.
    {badmatch,{x,0}}.
  {label,105}.
    {line,[{location,"map_SUITE.erl",594}]}.
    {badmatch,{x,0}}.
  {label,106}.
    {line,[{location,"map_SUITE.erl",593}]}.
    {badmatch,{x,0}}.
  {label,107}.
    {line,[{location,"map_SUITE.erl",591}]}.
    {badmatch,{x,0}}.
  {label,108}.
    {line,[{location,"map_SUITE.erl",590}]}.
    {badmatch,{x,0}}.
  {label,109}.
    {line,[{location,"map_SUITE.erl",589}]}.
    {badmatch,{x,0}}.
  {label,110}.
    {line,[{location,"map_SUITE.erl",588}]}.
    {badmatch,{x,0}}.
  {label,111}.
    {line,[{location,"map_SUITE.erl",587}]}.
    {badmatch,{x,0}}.
  {label,112}.
    {line,[{location,"map_SUITE.erl",530}]}.
    {badmatch,{x,0}}.
  {label,113}.
    {line,[{location,"map_SUITE.erl",483}]}.
    {badmatch,{x,0}}.
  {label,114}.
    {line,[{location,"map_SUITE.erl",479}]}.
    {badmatch,{x,0}}.
  {label,115}.
    {line,[{location,"map_SUITE.erl",477}]}.
    {badmatch,{x,0}}.
  {label,116}.
    {line,[{location,"map_SUITE.erl",476}]}.
    {badmatch,{x,0}}.
  {label,117}.
    {line,[{location,"map_SUITE.erl",475}]}.
    {badmatch,{x,0}}.
  {label,118}.
    {line,[{location,"map_SUITE.erl",474}]}.
    {badmatch,{x,0}}.
  {label,119}.
    {line,[{location,"map_SUITE.erl",473}]}.
    {badmatch,{x,0}}.
  {label,120}.
    {line,[{location,"map_SUITE.erl",471}]}.
    {badmatch,{x,0}}.
  {label,121}.
    {line,[{location,"map_SUITE.erl",470}]}.
    {badmatch,{x,0}}.
  {label,122}.
    {line,[{location,"map_SUITE.erl",469}]}.
    {badmatch,{x,0}}.
  {label,123}.
    {line,[{location,"map_SUITE.erl",468}]}.
    {badmatch,{x,0}}.
  {label,124}.
    {line,[{location,"map_SUITE.erl",467}]}.
    {badmatch,{x,0}}.
  {label,125}.
    {line,[{location,"map_SUITE.erl",410}]}.
    {badmatch,{x,0}}.
  {label,126}.
    {line,[{location,"map_SUITE.erl",408}]}.
    {badmatch,{y,51}}.
  {label,127}.
    {line,[{location,"map_SUITE.erl",407}]}.
    {badmatch,{y,51}}.
  {label,128}.
    {line,[{location,"map_SUITE.erl",406}]}.
    {badmatch,{y,51}}.
  {label,129}.
    {line,[{location,"map_SUITE.erl",405}]}.
    {badmatch,{y,51}}.
  {label,130}.
    {line,[{location,"map_SUITE.erl",403}]}.
    {badmatch,{y,51}}.
  {label,131}.
    {line,[{location,"map_SUITE.erl",402}]}.
    {badmatch,{y,51}}.
  {label,132}.
    {line,[{location,"map_SUITE.erl",401}]}.
    {badmatch,{y,51}}.
  {label,133}.
    {line,[{location,"map_SUITE.erl",400}]}.
    {badmatch,{y,51}}.
  {label,134}.
    {line,[{location,"map_SUITE.erl",399}]}.
    {badmatch,{y,51}}.
  {label,135}.
    {line,[{location,"map_SUITE.erl",397}]}.
    {badmatch,{y,51}}.
  {label,136}.
    {line,[{location,"map_SUITE.erl",396}]}.
    {badmatch,{y,51}}.
  {label,137}.
    {line,[{location,"map_SUITE.erl",395}]}.
    {badmatch,{y,51}}.
  {label,138}.
    {line,[{location,"map_SUITE.erl",394}]}.
    {badmatch,{y,51}}.
  {label,139}.
    {line,[{location,"map_SUITE.erl",393}]}.
    {badmatch,{y,51}}.
  {label,140}.
    {line,[{location,"map_SUITE.erl",391}]}.
    {badmatch,{y,51}}.
  {label,141}.
    {line,[{location,"map_SUITE.erl",390}]}.
    {badmatch,{y,51}}.
  {label,142}.
    {line,[{location,"map_SUITE.erl",389}]}.
    {badmatch,{y,51}}.
  {label,143}.
    {line,[{location,"map_SUITE.erl",388}]}.
    {badmatch,{y,51}}.
  {label,144}.
    {line,[{location,"map_SUITE.erl",387}]}.
    {badmatch,{y,51}}.
  {label,145}.
    {line,[{location,"map_SUITE.erl",385}]}.
    {badmatch,{y,51}}.
  {label,146}.
    {line,[{location,"map_SUITE.erl",384}]}.
    {badmatch,{y,51}}.
  {label,147}.
    {line,[{location,"map_SUITE.erl",383}]}.
    {badmatch,{y,51}}.
  {label,148}.
    {line,[{location,"map_SUITE.erl",382}]}.
    {badmatch,{y,51}}.
  {label,149}.
    {line,[{location,"map_SUITE.erl",381}]}.
    {badmatch,{y,51}}.
  {label,150}.
    {line,[{location,"map_SUITE.erl",347}]}.
    {badmatch,{x,0}}.
  {label,151}.
    {line,[{location,"map_SUITE.erl",345}]}.
    {badmatch,{y,52}}.
  {label,152}.
    {line,[{location,"map_SUITE.erl",344}]}.
    {badmatch,{y,52}}.
  {label,153}.
    {line,[{location,"map_SUITE.erl",343}]}.
    {badmatch,{y,52}}.
  {label,154}.
    {line,[{location,"map_SUITE.erl",342}]}.
    {badmatch,{y,52}}.
  {label,155}.
    {line,[{location,"map_SUITE.erl",341}]}.
    {badmatch,{y,52}}.
  {label,156}.
    {line,[{location,"map_SUITE.erl",339}]}.
    {badmatch,{y,52}}.
  {label,157}.
    {line,[{location,"map_SUITE.erl",338}]}.
    {badmatch,{y,52}}.
  {label,158}.
    {line,[{location,"map_SUITE.erl",337}]}.
    {badmatch,{y,52}}.
  {label,159}.
    {line,[{location,"map_SUITE.erl",336}]}.
    {badmatch,{y,52}}.
  {label,160}.
    {line,[{location,"map_SUITE.erl",335}]}.
    {badmatch,{y,52}}.
  {label,161}.
    {line,[{location,"map_SUITE.erl",333}]}.
    {badmatch,{y,52}}.
  {label,162}.
    {line,[{location,"map_SUITE.erl",332}]}.
    {badmatch,{y,52}}.
  {label,163}.
    {line,[{location,"map_SUITE.erl",331}]}.
    {badmatch,{y,52}}.
  {label,164}.
    {line,[{location,"map_SUITE.erl",330}]}.
    {badmatch,{y,52}}.
  {label,165}.
    {line,[{location,"map_SUITE.erl",329}]}.
    {badmatch,{y,52}}.
  {label,166}.
    {line,[{location,"map_SUITE.erl",327}]}.
    {badmatch,{y,52}}.
  {label,167}.
    {line,[{location,"map_SUITE.erl",326}]}.
    {badmatch,{y,52}}.
  {label,168}.
    {line,[{location,"map_SUITE.erl",325}]}.
    {badmatch,{y,52}}.
  {label,169}.
    {line,[{location,"map_SUITE.erl",324}]}.
    {badmatch,{y,52}}.
  {label,170}.
    {line,[{location,"map_SUITE.erl",323}]}.
    {badmatch,{y,52}}.
  {label,171}.
    {line,[{location,"map_SUITE.erl",294}]}.
    {badmatch,{x,0}}.
  {label,172}.
    {line,[{location,"map_SUITE.erl",292}]}.
    {badmatch,{y,53}}.
  {label,173}.
    {line,[{location,"map_SUITE.erl",291}]}.
    {badmatch,{y,53}}.
  {label,174}.
    {line,[{location,"map_SUITE.erl",290}]}.
    {badmatch,{y,53}}.
  {label,175}.
    {line,[{location,"map_SUITE.erl",289}]}.
    {badmatch,{y,53}}.
  {label,176}.
    {line,[{location,"map_SUITE.erl",288}]}.
    {badmatch,{y,53}}.
  {label,177}.
    {line,[{location,"map_SUITE.erl",286}]}.
    {badmatch,{y,53}}.
  {label,178}.
    {line,[{location,"map_SUITE.erl",285}]}.
    {badmatch,{y,53}}.
  {label,179}.
    {line,[{location,"map_SUITE.erl",284}]}.
    {badmatch,{y,53}}.
  {label,180}.
    {line,[{location,"map_SUITE.erl",283}]}.
    {badmatch,{y,53}}.
  {label,181}.
    {line,[{location,"map_SUITE.erl",282}]}.
    {badmatch,{y,53}}.
  {label,182}.
    {line,[{location,"map_SUITE.erl",258}]}.
    {badmatch,{x,0}}.
  {label,183}.
    {line,[{location,"map_SUITE.erl",256}]}.
    {badmatch,{y,54}}.
  {label,184}.
    {line,[{location,"map_SUITE.erl",255}]}.
    {badmatch,{y,54}}.
  {label,185}.
    {line,[{location,"map_SUITE.erl",254}]}.
    {badmatch,{y,54}}.
  {label,186}.
    {line,[{location,"map_SUITE.erl",253}]}.
    {badmatch,{y,54}}.
  {label,187}.
    {line,[{location,"map_SUITE.erl",252}]}.
    {badmatch,{y,54}}.
  {label,188}.
    {line,[{location,"map_SUITE.erl",250}]}.
    {badmatch,{y,54}}.
  {label,189}.
    {line,[{location,"map_SUITE.erl",249}]}.
    {badmatch,{y,54}}.
  {label,190}.
    {line,[{location,"map_SUITE.erl",248}]}.
    {badmatch,{y,54}}.
  {label,191}.
    {line,[{location,"map_SUITE.erl",247}]}.
    {badmatch,{y,54}}.
  {label,192}.
    {line,[{location,"map_SUITE.erl",246}]}.
    {badmatch,{y,54}}.


{function, t_build_and_match_aliasing, 1, 194}.
  {label,193}.
    {line,[{location,"map_SUITE.erl",688}]}.
    {func_info,{atom,map_SUITE},{atom,t_build_and_match_aliasing},1}.
  {label,194}.
    {test,is_list,{f,193},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,#{a => 1,b => 2,c => 3,d => 4}},{x,0}}.
    {line,[{location,"map_SUITE.erl",689}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,0}}.
    {test,is_map,{f,205},[{x,0}]}.
    {get_map_elements,{f,205},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{atom,c},{x,0}]}}.
    {get_map_elements,{f,204},
                      {tr,{y,0},{t_map,any,any}},
                      {list,[{atom,b},{x,2},{atom,a},{x,1}]}}.
    {test,is_eq_exact,{f,203},[{x,2},{integer,2}]}.
    {test,is_eq_exact,{f,202},[{x,1},{integer,1}]}.
    {test,is_eq_exact,{f,201},[{x,0},{integer,3}]}.
    {move,{literal,#{"a" => 1,"b" => 2,"c" => 3,"d" => 4}},{x,0}}.
    {line,[{location,"map_SUITE.erl",698}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,200},[{x,0}]}.
    {get_map_elements,{f,200},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{literal,"b"},{x,2},{literal,"a"},{x,1}]}}.
    {test,is_eq_exact,{f,200},[{x,2},{integer,2}]}.
    {test,has_map_fields,{f,199},{y,0},{list,[{atom,a}]}}.
    {get_map_elements,{f,199},
                      {tr,{y,0},{t_map,any,any}},
                      {list,[{atom,b},{x,2}]}}.
    {test,is_eq_exact,{f,199},[{x,2},{integer,2}]}.
    {get_map_elements,{f,198},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{literal,"d"},{x,2}]}}.
    {test,is_eq_exact,{f,198},[{x,2},{integer,4}]}.
    {get_map_elements,{f,198},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{literal,"c"},{x,2}]}}.
    {test,is_eq_exact,{f,198},[{x,1},{integer,1}]}.
    {test,is_eq_exact,{f,198},[{x,2},{integer,3}]}.
    {line,[{location,"map_SUITE.erl",709}]}.
    {bs_create_bin,{f,0},
                   0,0,4,
                   {x,0},
                   {list,[{atom,integer},
                          1,1,nil,
                          {integer,0},
                          {integer,292},
                          {atom,string},
                          0,8,nil,
                          {string,<<"\f">>},
                          {integer,1}]}}.
    {bs_create_bin,{f,0},
                   0,1,4,
                   {x,1},
                   {list,[{atom,integer},
                          1,1,nil,
                          {integer,0},
                          {integer,292},
                          {atom,string},
                          0,8,nil,
                          {string,<<"\r">>},
                          {integer,1}]}}.
    {put_map_assoc,{f,0},{literal,#{}},{x,0},2,{list,[{x,0},{integer,1}]}}.
    {put_map_assoc,{f,0},{x,0},{x,0},2,{list,[{x,1},{integer,2}]}}.
    {trim,1,0}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,197},[{x,0}]}.
    {line,[{location,"map_SUITE.erl",710}]}.
    {bs_create_bin,{f,197},
                   0,1,4,
                   {x,1},
                   {list,[{atom,integer},
                          1,1,nil,
                          {integer,0},
                          {integer,292},
                          {atom,string},
                          0,8,nil,
                          {string,<<"\r">>},
                          {integer,1}]}}.
    {get_map_elements,{f,197},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{tr,{x,1},{t_bitstring,4,false}},{x,1}]}}.
    {bs_create_bin,{f,197},
                   0,2,4,
                   {x,2},
                   {list,[{atom,integer},
                          1,1,nil,
                          {integer,0},
                          {integer,292},
                          {atom,string},
                          0,8,nil,
                          {string,<<"\f">>},
                          {integer,1}]}}.
    {get_map_elements,{f,197},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{tr,{x,2},{t_bitstring,4,false}},{x,2}]}}.
    {bs_create_bin,{f,197},
                   0,3,4,
                   {x,3},
                   {list,[{atom,integer},
                          1,1,nil,
                          {integer,0},
                          {integer,292},
                          {atom,string},
                          0,8,nil,
                          {string,<<"\f">>},
                          {integer,1}]}}.
    {get_map_elements,{f,197},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{tr,{x,3},{t_bitstring,4,false}},{x,3}]}}.
    {bs_create_bin,{f,197},
                   0,4,4,
                   {x,4},
                   {list,[{atom,integer},
                          1,1,nil,
                          {integer,0},
                          {integer,292},
                          {atom,string},
                          0,8,nil,
                          {string,<<"\r">>},
                          {integer,1}]}}.
    {get_map_elements,{f,197},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{tr,{x,4},{t_bitstring,4,false}},{x,4}]}}.
    {test,is_eq_exact,{f,197},[{x,3},{x,2}]}.
    {test,is_eq_exact,{f,197},[{x,4},{x,1}]}.
    {line,[{location,"map_SUITE.erl",711}]}.
    {bs_create_bin,{f,196},
                   0,1,4,
                   {x,1},
                   {list,[{atom,integer},
                          1,1,nil,
                          {integer,0},
                          {integer,292},
                          {atom,string},
                          0,8,nil,
                          {string,<<"\r">>},
                          {integer,1}]}}.
    {test,has_map_fields,{f,196},{x,0},{list,[{x,1}]}}.
    {bs_create_bin,{f,196},
                   0,1,4,
                   {x,1},
                   {list,[{atom,integer},
                          1,1,nil,
                          {integer,0},
                          {integer,292},
                          {atom,string},
                          0,8,nil,
                          {string,<<"\f">>},
                          {integer,1}]}}.
    {test,has_map_fields,{f,196},{x,0},{list,[{x,1}]}}.
    {bs_create_bin,{f,196},
                   0,1,4,
                   {x,1},
                   {list,[{atom,integer},
                          1,1,nil,
                          {integer,0},
                          {integer,292},
                          {atom,string},
                          0,8,nil,
                          {string,<<"\f">>},
                          {integer,1}]}}.
    {get_map_elements,{f,196},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{tr,{x,1},{t_bitstring,4,false}},{x,1}]}}.
    {test,is_eq_exact,{f,196},[{x,1},{integer,1}]}.
    {bs_create_bin,{f,196},
                   0,1,4,
                   {x,1},
                   {list,[{atom,integer},
                          1,1,nil,
                          {integer,0},
                          {integer,292},
                          {atom,string},
                          0,8,nil,
                          {string,<<"\r">>},
                          {integer,1}]}}.
    {get_map_elements,{f,196},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{tr,{x,1},{t_bitstring,4,false}},{x,1}]}}.
    {test,is_eq_exact,{f,196},[{x,1},{integer,2}]}.
    {line,[{location,"map_SUITE.erl",712}]}.
    {bs_create_bin,{f,195},
                   0,1,4,
                   {x,1},
                   {list,[{atom,integer},
                          1,1,nil,
                          {integer,0},
                          {integer,292},
                          {atom,string},
                          0,8,nil,
                          {string,<<"\f">>},
                          {integer,1}]}}.
    {get_map_elements,{f,195},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{tr,{x,1},{t_bitstring,4,false}},{x,1}]}}.
    {test,is_eq_exact,{f,195},[{x,1},{integer,1}]}.
    {bs_create_bin,{f,195},
                   0,1,4,
                   {x,1},
                   {list,[{atom,integer},
                          1,1,nil,
                          {integer,0},
                          {integer,292},
                          {atom,string},
                          0,8,nil,
                          {string,<<"\r">>},
                          {integer,1}]}}.
    {get_map_elements,{f,195},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{tr,{x,1},{t_bitstring,4,false}},{x,1}]}}.
    {test,is_eq_exact,{f,195},[{x,1},{integer,2}]}.
    {bs_create_bin,{f,195},
                   0,1,4,
                   {x,1},
                   {list,[{atom,integer},
                          1,1,nil,
                          {integer,0},
                          {integer,292},
                          {atom,string},
                          0,8,nil,
                          {string,<<"\r">>},
                          {integer,1}]}}.
    {test,has_map_fields,{f,195},{x,0},{list,[{x,1}]}}.
    {bs_create_bin,{f,195},
                   0,1,4,
                   {x,1},
                   {list,[{atom,integer},
                          1,1,nil,
                          {integer,0},
                          {integer,292},
                          {atom,string},
                          0,8,nil,
                          {string,<<"\f">>},
                          {integer,1}]}}.
    {test,has_map_fields,{f,195},{x,0},{list,[{x,1}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,195}.
    {badmatch,{x,0}}.
  {label,196}.
    {line,[{location,"map_SUITE.erl",711}]}.
    {badmatch,{x,0}}.
  {label,197}.
    {line,[{location,"map_SUITE.erl",710}]}.
    {badmatch,{x,0}}.
  {label,198}.
    {line,[{location,"map_SUITE.erl",705}]}.
    {badmatch,{x,0}}.
  {label,199}.
    {line,[{location,"map_SUITE.erl",702}]}.
    {badmatch,{y,0}}.
  {label,200}.
    {line,[{location,"map_SUITE.erl",699}]}.
    {badmatch,{x,0}}.
  {label,201}.
    {line,[{location,"map_SUITE.erl",695}]}.
    {badmatch,{y,0}}.
  {label,202}.
    {line,[{location,"map_SUITE.erl",694}]}.
    {badmatch,{y,0}}.
  {label,203}.
    {line,[{location,"map_SUITE.erl",693}]}.
    {badmatch,{y,0}}.
  {label,204}.
    {line,[{location,"map_SUITE.erl",692}]}.
    {badmatch,{y,0}}.
  {label,205}.
    {line,[{location,"map_SUITE.erl",690}]}.
    {badmatch,{y,0}}.


{function, t_map_size, 1, 207}.
  {label,206}.
    {line,[{location,"map_SUITE.erl",716}]}.
    {func_info,{atom,map_SUITE},{atom,t_map_size},1}.
  {label,207}.
    {test,is_list,{f,206},[{x,0}]}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{literal,#{}},{x,0}}.
    {line,[{location,"map_SUITE.erl",717}]}.
    {call,1,{f,1107}}. % id/1
    {gc_bif,map_size,{f,0},1,[{x,0}],{x,0}}.
    {test,is_eq_exact,
          {f,224},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},{integer,0}]}.
    {move,{literal,#{a => 1}},{x,0}}.
    {line,[{scope,[6]},{location,"map_SUITE.erl",718}]}.
    {call,1,{f,1107}}. % id/1
    {line,[{location,"map_SUITE.erl",718}]}.
    {gc_bif,map_size,{f,0},1,[{x,0}],{x,0}}.
    {test,is_eq_exact,
          {f,223},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},{integer,1}]}.
    {move,{literal,#{a => "wat"}},{x,0}}.
    {line,[{scope,[6]},{location,"map_SUITE.erl",719}]}.
    {call,1,{f,1107}}. % id/1
    {line,[{location,"map_SUITE.erl",719}]}.
    {gc_bif,map_size,{f,0},1,[{x,0}],{x,0}}.
    {test,is_eq_exact,
          {f,222},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},{integer,1}]}.
    {move,{literal,#{a => 1,b => 2}},{x,0}}.
    {line,[{scope,[6]},{location,"map_SUITE.erl",720}]}.
    {call,1,{f,1107}}. % id/1
    {line,[{location,"map_SUITE.erl",720}]}.
    {gc_bif,map_size,{f,0},1,[{x,0}],{x,0}}.
    {test,is_eq_exact,
          {f,221},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},{integer,2}]}.
    {move,{literal,#{a => 1,b => "3","33" => <<"n">>}},{x,0}}.
    {line,[{scope,[6]},{location,"map_SUITE.erl",721}]}.
    {call,1,{f,1107}}. % id/1
    {line,[{location,"map_SUITE.erl",721}]}.
    {gc_bif,map_size,{f,0},1,[{x,0}],{x,0}}.
    {test,is_eq_exact,
          {f,220},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},{integer,3}]}.
    {move,{integer,1},{x,1}}.
    {move,{literal,#{a => 1}},{x,0}}.
    {line,[{scope,[6]},{location,"map_SUITE.erl",723}]}.
    {call,2,{f,226}}. % map_is_size/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,219},[{x,0},{atom,true}]}.
    {move,{integer,1},{x,1}}.
    {move,{literal,#{a => 2}},{x,0}}.
    {line,[{scope,[6]},{location,"map_SUITE.erl",724}]}.
    {call,2,{f,226}}. % map_is_size/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,218},[{x,0},{atom,true}]}.
    {move,{integer,2},{x,1}}.
    {move,{literal,#{"a" => 1,"b" => 2}},{x,0}}.
    {line,[{scope,[6]},{location,"map_SUITE.erl",726}]}.
    {call,2,{f,226}}. % map_is_size/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,217},[{x,0},{atom,true}]}.
    {move,{integer,3},{x,1}}.
    {move,{literal,#{"a" => 1,"b" => 2}},{x,0}}.
    {line,[{scope,[6]},{location,"map_SUITE.erl",727}]}.
    {call,2,{f,226}}. % map_is_size/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,208},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,208}.
    {move,{integer,2},{x,1}}.
    {move,{literal,#{"a" => 2,"b" => 2}},{x,0}}.
    {line,[{scope,[6]},{location,"map_SUITE.erl",728}]}.
    {call,2,{f,226}}. % map_is_size/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,216},[{x,0},{atom,true}]}.
    {move,{integer,2},{x,1}}.
    {move,{literal,#{"a" => 1,"b" => 2,"c" => 2}},{x,0}}.
    {line,[{scope,[6]},{location,"map_SUITE.erl",729}]}.
    {call,2,{f,226}}. % map_is_size/2
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,209},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,209}.
    {'catch',{y,2},{f,210}}.
    {line,[{location,"map_SUITE.erl",732}]}.
    {gc_bif,map_size,{f,0},0,[nil],{x,0}}.
  {label,210}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,215},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,215},[{x,1}]}.
    {test,test_arity,{f,215},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,215},[{x,1},{literal,{badmap,[]}}]}.
    {'catch',{y,1},{f,211}}.
    {line,[{location,"map_SUITE.erl",733}]}.
    {gc_bif,map_size,{f,0},0,[{literal,<<1,2,3>>}],{x,0}}.
  {label,211}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,214},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,214},[{x,1}]}.
    {test,test_arity,{f,214},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,214},[{x,1},{literal,{badmap,<<1,2,3>>}}]}.
    {'catch',{y,0},{f,212}}.
    {line,[{location,"map_SUITE.erl",734}]}.
    {gc_bif,map_size,{f,0},0,[{integer,1}],{x,0}}.
  {label,212}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,213},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,213},[{x,1}]}.
    {test,test_arity,{f,213},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,213},[{x,1},{literal,{badmap,1}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,3}.
    return.
  {label,213}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",734}]}.
    {badmatch,{x,0}}.
  {label,214}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",733}]}.
    {badmatch,{x,0}}.
  {label,215}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",732}]}.
    {badmatch,{x,0}}.
  {label,216}.
    {line,[{scope,[6]},{location,"map_SUITE.erl",728}]}.
    {badmatch,{atom,false}}.
  {label,217}.
    {line,[{scope,[6]},{location,"map_SUITE.erl",726}]}.
    {badmatch,{atom,false}}.
  {label,218}.
    {line,[{scope,[6]},{location,"map_SUITE.erl",724}]}.
    {badmatch,{atom,false}}.
  {label,219}.
    {line,[{scope,[6]},{location,"map_SUITE.erl",723}]}.
    {badmatch,{atom,false}}.
  {label,220}.
    {line,[{scope,[6]},{location,"map_SUITE.erl",721}]}.
    {badmatch,{x,0}}.
  {label,221}.
    {line,[{scope,[6]},{location,"map_SUITE.erl",720}]}.
    {badmatch,{x,0}}.
  {label,222}.
    {line,[{scope,[6]},{location,"map_SUITE.erl",719}]}.
    {badmatch,{x,0}}.
  {label,223}.
    {line,[{scope,[6]},{location,"map_SUITE.erl",718}]}.
    {badmatch,{x,0}}.
  {label,224}.
    {line,[{scope,[6]},{location,"map_SUITE.erl",717}]}.
    {badmatch,{x,0}}.


{function, map_is_size, 2, 226}.
  {label,225}.
    {line,[{location,"map_SUITE.erl",737}]}.
    {func_info,{atom,map_SUITE},{atom,map_is_size},2}.
  {label,226}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_map,
                     {t_union,
                         {t_atom,[a]},
                         {t_cons,{t_integer,{97,99}},nil},
                         none,none,none},
                     {t_integer,{1,2}}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_integer,{1,3}}}]}}.
    {gc_bif,map_size,
            {f,0},
            2,
            [{tr,{x,0},
                 {t_map,{t_union,{t_atom,[a]},
                                 {t_cons,{t_integer,{97,99}},nil},
                                 none,none,none},
                        {t_integer,{1,2}}}}],
            {x,0}}.
    {bif,'=:=',
         {f,0},
         [{tr,{x,0},{t_integer,{0,288230376151711743}}},
          {tr,{x,1},{t_integer,{1,3}}}],
         {x,0}}.
    return.


{function, t_map_get, 1, 228}.
  {label,227}.
    {line,[{location,"map_SUITE.erl",740}]}.
    {func_info,{atom,map_SUITE},{atom,t_map_get},1}.
  {label,228}.
    {test,is_list,{f,227},[{x,0}]}.
    {allocate,5,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3},{y,4}]}}.
    {move,{literal,#{a => 1}},{x,0}}.
    {line,[{location,"map_SUITE.erl",741}]}.
    {call,1,{f,1107}}. % id/1
    {bif,map_get,{f,0},[{atom,a},{x,0}],{x,0}}.
    {test,is_eq_exact,{f,244},[{x,0},{integer,1}]}.
    {'catch',{y,4},{f,229}}.
    {bif,map_get,{f,0},[{atom,a},{literal,#{}}],{x,0}}.
  {label,229}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,243},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,243},[{x,1}]}.
    {test,test_arity,{f,243},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,243},[{x,1},{literal,{badkey,a}}]}.
    {'catch',{y,3},{f,230}}.
    {bif,map_get,{f,0},[{atom,a},{literal,#{b => 1}}],{x,0}}.
  {label,230}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,242},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,242},[{x,1}]}.
    {test,test_arity,{f,242},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,242},[{x,1},{literal,{badkey,a}}]}.
    {move,{literal,"a"},{x,1}}.
    {move,{integer,1},{x,2}}.
    {move,{literal,#{"a" => 1,"b" => 2}},{x,0}}.
    {line,[{scope,[6]},{location,"map_SUITE.erl",747}]}.
    {call,3,{f,246}}. % check_map_value/3
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,241},[{x,0},{atom,true}]}.
    {move,{literal,"b"},{x,1}}.
    {move,{integer,1},{x,2}}.
    {move,{literal,#{"a" => 1,"b" => 2}},{x,0}}.
    {line,[{scope,[6]},{location,"map_SUITE.erl",748}]}.
    {call,3,{f,246}}. % check_map_value/3
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,231},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,231}.
    {move,{literal,"c"},{x,1}}.
    {move,{integer,2},{x,2}}.
    {move,{literal,#{"a" => 1,"b" => 2,"c" => 2}},{x,0}}.
    {line,[{scope,[6]},{location,"map_SUITE.erl",749}]}.
    {call,3,{f,246}}. % check_map_value/3
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,240},[{x,0},{atom,true}]}.
    {move,{literal,"a"},{x,1}}.
    {move,{integer,1},{x,2}}.
    {move,{literal,#{"a" => 5,"b" => 2}},{x,0}}.
    {line,[{scope,[6]},{location,"map_SUITE.erl",750}]}.
    {call,3,{f,246}}. % check_map_value/3
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,232},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,232}.
    {'catch',{y,2},{f,233}}.
    {bif,map_get,{f,0},[{atom,a},nil],{x,0}}.
  {label,233}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,239},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,239},[{x,1}]}.
    {test,test_arity,{f,239},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,239},[{x,1},{literal,{badmap,[]}}]}.
    {'catch',{y,1},{f,234}}.
    {bif,map_get,{f,0},[{atom,a},{literal,<<1,2,3>>}],{x,0}}.
  {label,234}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,238},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,238},[{x,1}]}.
    {test,test_arity,{f,238},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,238},[{x,1},{literal,{badmap,<<1,2,3>>}}]}.
    {'catch',{y,0},{f,235}}.
    {bif,map_get,{f,0},[{atom,a},{integer,1}],{x,0}}.
  {label,235}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,237},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,237},[{x,1}]}.
    {test,test_arity,{f,237},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,237},[{x,1},{literal,{badmap,1}}]}.
    {move,{literal,#{a => b}},{x,0}}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",758}]}.
    {call,1,{f,1107}}. % id/1
    {line,[{location,"map_SUITE.erl",759}]}.
    {bif,map_get,{f,0},[{atom,a},{x,0}],{x,1}}.
    {test,is_eq_exact,{f,236},[{x,1},{atom,b}]}.
    {line,[{location,"map_SUITE.erl",760}]}.
    {put_map_exact,{f,0},{x,0},{x,0},1,{list,[{atom,a},{atom,z}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,5}.
    return.
  {label,236}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",759}]}.
    {badmatch,{x,1}}.
  {label,237}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",754}]}.
    {badmatch,{x,0}}.
  {label,238}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",753}]}.
    {badmatch,{x,0}}.
  {label,239}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",752}]}.
    {badmatch,{x,0}}.
  {label,240}.
    {line,[{scope,[6]},{location,"map_SUITE.erl",749}]}.
    {badmatch,{atom,false}}.
  {label,241}.
    {line,[{scope,[6]},{location,"map_SUITE.erl",747}]}.
    {badmatch,{atom,false}}.
  {label,242}.
    {line,[{scope,[6]},{location,"map_SUITE.erl",744}]}.
    {badmatch,{x,0}}.
  {label,243}.
    {line,[{scope,"\b"},{location,"map_SUITE.erl",743}]}.
    {badmatch,{x,0}}.
  {label,244}.
    {line,[{scope,"\n"},{location,"map_SUITE.erl",741}]}.
    {badmatch,{x,0}}.


{function, check_map_value, 3, 246}.
  {label,245}.
    {line,[{location,"map_SUITE.erl",763}]}.
    {func_info,{atom,map_SUITE},{atom,check_map_value},3}.
  {label,246}.
    {'%',{var_info,{x,0},
                   [{type,{t_map,{t_cons,{t_integer,{97,99}},nil},
                                 {t_integer,{1,5}}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_cons,{t_integer,{97,99}},nil}}]}}.
    {'%',{var_info,{x,2},[{type,{t_integer,{1,2}}}]}}.
    {bif,map_get,
         {f,247},
         [{tr,{x,1},{t_cons,{t_integer,{97,99}},nil}},
          {tr,{x,0},
              {t_map,{t_cons,{t_integer,{97,99}},nil},{t_integer,{1,5}}}}],
         {x,0}}.
    {bif,'=:=',
         {f,0},
         [{tr,{x,0},{t_integer,{1,5}}},{tr,{x,2},{t_integer,{1,2}}}],
         {x,0}}.
    return.
  {label,247}.
    {move,{atom,false},{x,0}}.
    return.


{function, t_is_map, 1, 249}.
  {label,248}.
    {line,[{location,"map_SUITE.erl",766}]}.
    {func_info,{atom,map_SUITE},{atom,t_is_map},1}.
  {label,249}.
    {test,is_list,{f,248},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,#{}},{x,1}}.
    {move,{atom,map},{x,0}}.
    {line,[{location,"map_SUITE.erl",776}]}.
    {call,2,{f,254}}. % do_t_is_map/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,252},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{literal,{a,b,c}},{x,1}}.
    {move,{atom,map},{x,0}}.
    {line,[{location,"map_SUITE.erl",777}]}.
    {call,2,{f,254}}. % do_t_is_map/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{integer,42},{x,1}}.
    {move,{atom,number},{x,0}}.
    {line,[{location,"map_SUITE.erl",778}]}.
    {call,2,{f,254}}. % do_t_is_map/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,251},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{float,42.0},{x,1}}.
    {move,{atom,number},{x,0}}.
    {line,[{location,"map_SUITE.erl",779}]}.
    {call,2,{f,254}}. % do_t_is_map/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,250},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{literal,{a,b,c}},{x,1}}.
    {move,{atom,number},{x,0}}.
    {line,[{location,"map_SUITE.erl",780}]}.
    {call,2,{f,254}}. % do_t_is_map/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,250}.
    {line,[{location,"map_SUITE.erl",779}]}.
    {badmatch,{atom,error}}.
  {label,251}.
    {line,[{location,"map_SUITE.erl",778}]}.
    {badmatch,{atom,error}}.
  {label,252}.
    {line,[{location,"map_SUITE.erl",776}]}.
    {badmatch,{atom,error}}.


{function, do_t_is_map, 2, 254}.
  {label,253}.
    {line,[{location,"map_SUITE.erl",783}]}.
    {func_info,{atom,map_SUITE},{atom,do_t_is_map},2}.
  {label,254}.
    {'%',{var_info,{x,0},[{type,{t_atom,[map,number]}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_union,none,none,
                     {t_number,{42,42}},
                     [{{3,{t_atom,[a]}},
                       {t_tuple,3,true,
                           #{1 => {t_atom,[a]},
                             2 => {t_atom,[b]},
                             3 => {t_atom,[c]}}}}],
                     {t_map,none,none}}}]}}.
    {test,is_eq_exact,{f,255},[{x,0},{atom,number}]}.
    {test,is_number,
          {f,257},
          [{tr,{x,1},
               {t_union,none,none,
                        {t_number,{42,42}},
                        [{{3,{t_atom,[a]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[a]},
                                     2 => {t_atom,[b]},
                                     3 => {t_atom,[c]}}}}],
                        {t_map,none,none}}}]}.
    {jump,{f,256}}.
  {label,255}.
    {test,is_map,
          {f,257},
          [{tr,{x,1},
               {t_union,none,none,
                        {t_number,{42,42}},
                        [{{3,{t_atom,[a]}},
                          {t_tuple,3,true,
                                   #{1 => {t_atom,[a]},
                                     2 => {t_atom,[b]},
                                     3 => {t_atom,[c]}}}}],
                        {t_map,none,none}}}]}.
  {label,256}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,257}.
    {move,{atom,error},{x,0}}.
    return.


{function, t_update_literals, 1, 259}.
  {label,258}.
    {line,[{location,"map_SUITE.erl",798}]}.
    {func_info,{atom,map_SUITE},{atom,t_update_literals},1}.
  {label,259}.
    {test,is_list,{f,258},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,[{"a","1"},{"b","2"},{"c","3"},{"d","4"}]},{x,1}}.
    {move,{literal,#{q => 4,x => 1,y => 2,z => 3}},{x,0}}.
    {line,[{location,"map_SUITE.erl",800}]}.
    {call,2,{f,265}}. % loop_update_literals_x_q/2
    {test,is_map,{f,260},[{x,0}]}.
    {get_map_elements,{f,260},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{atom,x},{x,2},{atom,q},{x,1}]}}.
    {test,is_eq_exact,{f,260},[{x,1},{literal,"4"}]}.
    {test,is_eq_exact,{f,260},[{x,2},{literal,"d"}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,260}.
    {badmatch,{x,0}}.


{function, t_update_literals_large, 1, 262}.
  {label,261}.
    {line,[{location,"map_SUITE.erl",805}]}.
    {func_info,{atom,map_SUITE},{atom,t_update_literals_large},1}.
  {label,262}.
    {test,is_list,{f,261},[{x,0}]}.
    {allocate,51,0}.
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
                       {y,25},
                       {y,26},
                       {y,27},
                       {y,28},
                       {y,29},
                       {y,30},
                       {y,31},
                       {y,32},
                       {y,33},
                       {y,34},
                       {y,35},
                       {y,36},
                       {y,37},
                       {y,38},
                       {y,39},
                       {y,40},
                       {y,41},
                       {y,42},
                       {y,43},
                       {y,44},
                       {y,45},
                       {y,46},
                       {y,47},
                       {y,48},
                       {y,49},
                       {y,50}]}}.
    {move,{atom,a0},{x,0}}.
    {line,[{location,"map_SUITE.erl",806}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,50}}.
    {move,{literal,"c0"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,49}}.
    {move,{literal,"e0"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,48}}.
    {move,{atom,a1},{x,0}}.
    {line,[{location,"map_SUITE.erl",807}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,47}}.
    {move,{literal,"c1"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,46}}.
    {move,{literal,"e1"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,45}}.
    {move,{atom,a2},{x,0}}.
    {line,[{location,"map_SUITE.erl",808}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,44}}.
    {move,{literal,"c2"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,43}}.
    {move,{literal,"e2"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,42}}.
    {move,{atom,a3},{x,0}}.
    {line,[{location,"map_SUITE.erl",809}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,41}}.
    {move,{literal,"c3"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,40}}.
    {move,{literal,"e3"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,39}}.
    {move,{atom,a4},{x,0}}.
    {line,[{location,"map_SUITE.erl",810}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,38}}.
    {move,{literal,"c4"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,37}}.
    {move,{literal,"e4"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,36}}.
    {move,{atom,a5},{x,0}}.
    {line,[{location,"map_SUITE.erl",812}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,35}}.
    {move,{literal,"c5"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,34}}.
    {move,{literal,"e5"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,33}}.
    {move,{atom,a6},{x,0}}.
    {line,[{location,"map_SUITE.erl",813}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,32}}.
    {move,{literal,"c6"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,31}}.
    {move,{literal,"e6"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,30}}.
    {move,{atom,a7},{x,0}}.
    {line,[{location,"map_SUITE.erl",814}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,29}}.
    {move,{literal,"c7"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,28}}.
    {move,{literal,"e7"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,27}}.
    {move,{atom,a8},{x,0}}.
    {line,[{location,"map_SUITE.erl",815}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,26}}.
    {move,{literal,"c8"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,25}}.
    {move,{literal,"e8"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,24}}.
    {move,{atom,a9},{x,0}}.
    {line,[{location,"map_SUITE.erl",816}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,23}}.
    {move,{literal,"c9"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,22}}.
    {move,{literal,"e9"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,21}}.
    {move,{atom,fb0},{x,0}}.
    {line,[{location,"map_SUITE.erl",818}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,20}}.
    {move,{literal,"fc0"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,19}}.
    {move,{atom,fb1},{x,0}}.
    {line,[{location,"map_SUITE.erl",819}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,18}}.
    {move,{literal,"fc1"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,17}}.
    {move,{atom,fb2},{x,0}}.
    {line,[{location,"map_SUITE.erl",820}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,16}}.
    {move,{literal,"fc2"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,15}}.
    {move,{atom,fb3},{x,0}}.
    {line,[{location,"map_SUITE.erl",821}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,14}}.
    {move,{literal,"fc3"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,13}}.
    {move,{atom,fb4},{x,0}}.
    {line,[{location,"map_SUITE.erl",822}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,12}}.
    {move,{literal,"fc4"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,11}}.
    {move,{atom,fb5},{x,0}}.
    {line,[{location,"map_SUITE.erl",824}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,10}}.
    {move,{literal,"fc5"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,9}}.
    {move,{atom,fb6},{x,0}}.
    {line,[{location,"map_SUITE.erl",825}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,8}}.
    {move,{literal,"fc6"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,7}}.
    {move,{atom,fb7},{x,0}}.
    {line,[{location,"map_SUITE.erl",826}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,6}}.
    {move,{literal,"fc7"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,5}}.
    {move,{atom,fb8},{x,0}}.
    {line,[{location,"map_SUITE.erl",827}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,4}}.
    {move,{literal,"fc8"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,3}}.
    {move,{atom,fb9},{x,0}}.
    {line,[{location,"map_SUITE.erl",828}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,2}}.
    {move,{literal,"fc9"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,1}}.
    {move,{literal,"small map key 1"},{x,0}}.
    {line,[{location,"map_SUITE.erl",830}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{literal,"large map key 2"},{x,0}}.
    {line,[{location,"map_SUITE.erl",856}]}.
    {call,1,{f,1107}}. % id/1
    {put_map_assoc,{f,0},
                   {literal,#{}},
                   {x,0},
                   1,
                   {list,[{float,10.0},
                          {atom,fa0},
                          {integer,10},
                          {y,50},
                          {float,11.0},
                          {atom,fa1},
                          {integer,11},
                          {y,47},
                          {float,12.0},
                          {atom,fa2},
                          {integer,12},
                          {y,44},
                          {float,13.0},
                          {atom,fa3},
                          {integer,13},
                          {y,41},
                          {float,14.0},
                          {atom,fa4},
                          {integer,14},
                          {y,38},
                          {float,15.0},
                          {atom,fa5},
                          {integer,15},
                          {y,35},
                          {float,16.0},
                          {atom,fa6},
                          {integer,16},
                          {y,32},
                          {float,17.0},
                          {atom,fa7},
                          {integer,17},
                          {y,29},
                          {float,18.0},
                          {atom,fa8},
                          {integer,18},
                          {y,26},
                          {float,19.0},
                          {atom,fa9},
                          {integer,19},
                          {y,23},
                          {integer,20},
                          {atom,b0},
                          {float,20.0},
                          {y,20},
                          {integer,21},
                          {atom,b1},
                          {float,21.0},
                          {y,18},
                          {integer,22},
                          {atom,b2},
                          {float,22.0},
                          {y,16},
                          {integer,23},
                          {atom,b3},
                          {float,23.0},
                          {y,14},
                          {integer,24},
                          {atom,b4},
                          {float,24.0},
                          {y,12},
                          {integer,25},
                          {atom,b5},
                          {float,25.0},
                          {y,10},
                          {integer,26},
                          {atom,b6},
                          {float,26.0},
                          {y,8},
                          {integer,27},
                          {atom,b7},
                          {float,27.0},
                          {y,6},
                          {integer,28},
                          {atom,b8},
                          {float,28.0},
                          {y,4},
                          {integer,29},
                          {atom,b9},
                          {float,29.0},
                          {y,2},
                          {integer,30},
                          {y,49},
                          {float,30.0},
                          {y,19},
                          {integer,31},
                          {y,46},
                          {float,31.0},
                          {y,17},
                          {integer,32},
                          {y,43},
                          {float,32.0},
                          {y,15},
                          {integer,33},
                          {y,40},
                          {float,33.0},
                          {y,13},
                          {integer,34},
                          {y,37},
                          {float,34.0},
                          {y,11},
                          {integer,35},
                          {y,34},
                          {float,35.0},
                          {y,9},
                          {integer,36},
                          {y,31},
                          {float,36.0},
                          {y,7},
                          {integer,37},
                          {y,28},
                          {float,37.0},
                          {y,5},
                          {integer,38},
                          {y,25},
                          {float,38.0},
                          {y,3},
                          {integer,39},
                          {y,22},
                          {float,39.0},
                          {y,1},
                          {literal,{["00"]}},
                          {literal,"10"},
                          {literal,{["01"]}},
                          {literal,"11"},
                          {literal,{["02"]}},
                          {literal,"12"},
                          {literal,{["03"]}},
                          {literal,"13"},
                          {literal,{["04"]}},
                          {literal,"14"},
                          {literal,{["05"]}},
                          {literal,"15"},
                          {literal,{["06"]}},
                          {literal,"16"},
                          {literal,{["07"]}},
                          {literal,"17"},
                          {literal,{["08"]}},
                          {literal,"18"},
                          {literal,{["09"]}},
                          {literal,"19"},
                          {literal,#{map => key,one => small}},
                          {y,0},
                          {literal,#{map => key,second => small}},
                          {literal,"small map key 2"},
                          {literal,#{map => key,third => small}},
                          {literal,"small map key 3"},
                          {literal,#{10 => a0,11 => a1,12 => a2,13 => a3,
                                     14 => a4,15 => a5,16 => a6,17 => a7,
                                     18 => a8,19 => a9,20 => b0,21 => b1,
                                     22 => b2,23 => b3,24 => b4,25 => b5,
                                     26 => b6,27 => b7,28 => b8,29 => b9,
                                     30 => "c0",31 => "c1",32 => "c2",
                                     33 => "c3",34 => "c4",35 => "c5",
                                     36 => "c6",37 => "c7",38 => "c8",
                                     39 => "c9",
                                     {["00"]} => "10",
                                     {["01"]} => "11",
                                     {["02"]} => "12",
                                     {["03"]} => "13",
                                     {["04"]} => "14",
                                     {["05"]} => "15",
                                     {["06"]} => "16",
                                     {["07"]} => "17",
                                     {["08"]} => "18",
                                     {["09"]} => "19",
                                     "40" => "d0","41" => "d1","42" => "d2",
                                     "43" => "d3","44" => "d4","45" => "d5",
                                     "46" => "d6","47" => "d7","48" => "d8",
                                     "49" => "d9",<<"50">> => "e0",
                                     <<"51">> => "e1",<<"52">> => "e2",
                                     <<"53">> => "e3",<<"54">> => "e4",
                                     <<"55">> => "e5",<<"56">> => "e6",
                                     <<"57">> => "e7",<<"58">> => "e8",
                                     <<"59">> => "e9"}},
                          {literal,"large map key 1"},
                          {literal,#{10 => a0,11 => a1,12 => a2,13 => a3,
                                     14 => a4,15 => a5,17 => a7,18 => a8,
                                     19 => a9,20 => b0,21 => b1,22 => b2,
                                     23 => b3,24 => b4,25 => b5,27 => b7,
                                     28 => b8,29 => b9,30 => "c0",31 => "c1",
                                     32 => "c2",33 => "c3",34 => "c4",
                                     35 => "c5",37 => "c7",38 => "c8",
                                     39 => "c9",k16 => a6,k26 => b6,
                                     k36 => "c6",
                                     {["00"]} => "10",
                                     {["01"]} => "11",
                                     {["02"]} => "12",
                                     {["03"]} => "13",
                                     {["04"]} => "14",
                                     {["05"]} => "15",
                                     {["06"]} => "16",
                                     {["07"]} => "17",
                                     {["08"]} => "18",
                                     {["09"]} => "19",
                                     "40" => "d0","41" => "d1","42" => "d2",
                                     "43" => "d3","44" => "d4","45" => "d5",
                                     "46" => "d6","47" => "d7","48" => "d8",
                                     "49" => "d9",<<"50">> => "e0",
                                     <<"51">> => "e1",<<"52">> => "e2",
                                     <<"53">> => "e3",<<"54">> => "e4",
                                     <<"55">> => "e5",<<"56">> => "e6",
                                     <<"57">> => "e7",<<"58">> => "e8",
                                     <<"59">> => "e9"}},
                          {x,0},
                          {literal,"40"},
                          {literal,"d0"},
                          {literal,"41"},
                          {literal,"d1"},
                          {literal,"42"},
                          {literal,"d2"},
                          {literal,"43"},
                          {literal,"d3"},
                          {literal,"44"},
                          {literal,"d4"},
                          {literal,"45"},
                          {literal,"d5"},
                          {literal,"46"},
                          {literal,"d6"},
                          {literal,"47"},
                          {literal,"d7"},
                          {literal,"48"},
                          {literal,"d8"},
                          {literal,"49"},
                          {literal,"d9"},
                          {literal,<<"50">>},
                          {y,48},
                          {literal,<<"51">>},
                          {y,45},
                          {literal,<<"52">>},
                          {y,42},
                          {literal,<<"53">>},
                          {y,39},
                          {literal,<<"54">>},
                          {y,36},
                          {literal,<<"55">>},
                          {y,33},
                          {literal,<<"56">>},
                          {y,30},
                          {literal,<<"57">>},
                          {y,27},
                          {literal,<<"58">>},
                          {y,24},
                          {literal,<<"59">>},
                          {y,21}]}}.
    {trim,51,0}.
    {line,[{location,"map_SUITE.erl",806}]}.
    {call,1,{f,1107}}. % id/1
    {move,{literal,[{"a","1"},{"b","2"},{"c","3"},{"d","4"}]},{x,1}}.
    {line,[{location,"map_SUITE.erl",858}]}.
    {call,2,{f,265}}. % loop_update_literals_x_q/2
    {test,is_map,{f,263},[{x,0}]}.
    {get_map_elements,{f,263},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{atom,x},{x,2},{atom,q},{x,1}]}}.
    {test,is_eq_exact,{f,263},[{x,1},{literal,"4"}]}.
    {test,is_eq_exact,{f,263},[{x,2},{literal,"d"}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,263}.
    {badmatch,{x,0}}.


{function, loop_update_literals_x_q, 2, 265}.
  {label,264}.
    {line,[{location,"map_SUITE.erl",865}]}.
    {func_info,{atom,map_SUITE},{atom,loop_update_literals_x_q},2}.
  {label,265}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_cons,{t_integer,{97,100}},nil},
                           2 => {t_cons,{t_integer,{49,52}},nil}}},
                     nil}}]}}.
    {test,is_nonempty_list,{f,267},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_map,{f,266},[{x,0}]}.
    {get_tuple_element,{x,2},0,{x,3}}.
    {get_tuple_element,{x,2},1,{x,2}}.
    {put_map_assoc,{f,0},{x,0},{x,0},4,{list,[{atom,q},{x,2},{atom,x},{x,3}]}}.
    {call_only,2,{f,265}}. % loop_update_literals_x_q/2
  {label,266}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,badmap},{x,0}]}}.
    {line,[{location,"map_SUITE.erl",867}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,267}.
    return.


{function, t_match_and_update_literals, 1, 269}.
  {label,268}.
    {line,[{location,"map_SUITE.erl",870}]}.
    {func_info,{atom,map_SUITE},{atom,t_match_and_update_literals},1}.
  {label,269}.
    {test,is_list,{f,268},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,[{1,2},{3,4},{5,6},{7,8}]},{x,1}}.
    {move,{literal,#{q => 1,x => 0,y => "untouched",z => "also untouched",
                     #{map => key,"one" => small} => "small map key 1"}},
          {x,0}}.
    {line,[{location,"map_SUITE.erl",874}]}.
    {call,2,{f,280}}. % loop_match_and_update_literals_x_q/2
    {test,is_map,{f,272},[{x,0}]}.
    {get_map_elements,{f,272},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{atom,z},
                             {x,4},
                             {atom,y},
                             {x,3},
                             {atom,x},
                             {x,2},
                             {atom,q},
                             {x,1}]}}.
    {test,is_eq_exact,{f,272},[{x,1},{integer,21}]}.
    {test,is_eq_exact,{f,272},[{x,2},{integer,16}]}.
    {test,is_eq_exact,{f,272},[{x,3},{literal,"untouched"}]}.
    {test,is_eq_exact,{f,272},[{x,4},{literal,"also untouched"}]}.
    {move,{literal,#{4 => number,18446744073709551629 => wat,int => 3,
                     "hi" => "hello",<<"key">> => <<"value">>}},
          {x,0}}.
    {line,[{location,"map_SUITE.erl",877}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{literal,#{}},{x,0}}.
    {line,[{location,"map_SUITE.erl",879}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,270},[{x,0}]}.
    {put_map_assoc,{f,0},
                   {x,0},
                   {x,0},
                   1,
                   {list,[{integer,4},
                          {atom,number},
                          {integer,18446744073709551629},
                          {atom,wat},
                          {atom,int},
                          {integer,3},
                          {literal,"hi"},
                          {literal,"hello"},
                          {literal,<<"key">>},
                          {literal,<<"value">>}]}}.
    {test,is_eq_exact,{f,271},[{tr,{x,0},{t_map,any,any}},{y,0}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,270}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,badmap},{x,0}]}}.
    {line,[{location,"map_SUITE.erl",880}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},1}.
  {label,271}.
    {line,[{location,"map_SUITE.erl",882}]}.
    {badmatch,{x,0}}.
  {label,272}.
    {line,[{location,"map_SUITE.erl",874}]}.
    {badmatch,{x,0}}.


{function, t_match_and_update_literals_large, 1, 274}.
  {label,273}.
    {line,[{location,"map_SUITE.erl",887}]}.
    {func_info,{atom,map_SUITE},{atom,t_match_and_update_literals_large},1}.
  {label,274}.
    {test,is_list,{f,273},[{x,0}]}.
    {allocate,51,0}.
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
                       {y,25},
                       {y,26},
                       {y,27},
                       {y,28},
                       {y,29},
                       {y,30},
                       {y,31},
                       {y,32},
                       {y,33},
                       {y,34},
                       {y,35},
                       {y,36},
                       {y,37},
                       {y,38},
                       {y,39},
                       {y,40},
                       {y,41},
                       {y,42},
                       {y,43},
                       {y,44},
                       {y,45},
                       {y,46},
                       {y,47},
                       {y,48},
                       {y,49},
                       {y,50}]}}.
    {move,{atom,a0},{x,0}}.
    {line,[{location,"map_SUITE.erl",888}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,50}}.
    {move,{literal,"c0"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,49}}.
    {move,{literal,"e0"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,48}}.
    {move,{atom,a1},{x,0}}.
    {line,[{location,"map_SUITE.erl",889}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,47}}.
    {move,{literal,"c1"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,46}}.
    {move,{literal,"e1"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,45}}.
    {move,{atom,a2},{x,0}}.
    {line,[{location,"map_SUITE.erl",890}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,44}}.
    {move,{literal,"c2"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,43}}.
    {move,{literal,"e2"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,42}}.
    {move,{atom,a3},{x,0}}.
    {line,[{location,"map_SUITE.erl",891}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,41}}.
    {move,{literal,"c3"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,40}}.
    {move,{literal,"e3"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,39}}.
    {move,{atom,a4},{x,0}}.
    {line,[{location,"map_SUITE.erl",892}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,38}}.
    {move,{literal,"c4"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,37}}.
    {move,{literal,"e4"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,36}}.
    {move,{atom,a5},{x,0}}.
    {line,[{location,"map_SUITE.erl",894}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,35}}.
    {move,{literal,"c5"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,34}}.
    {move,{literal,"e5"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,33}}.
    {move,{atom,a6},{x,0}}.
    {line,[{location,"map_SUITE.erl",895}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,32}}.
    {move,{literal,"c6"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,31}}.
    {move,{literal,"e6"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,30}}.
    {move,{atom,a7},{x,0}}.
    {line,[{location,"map_SUITE.erl",896}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,29}}.
    {move,{literal,"c7"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,28}}.
    {move,{literal,"e7"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,27}}.
    {move,{atom,a8},{x,0}}.
    {line,[{location,"map_SUITE.erl",897}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,26}}.
    {move,{literal,"c8"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,25}}.
    {move,{literal,"e8"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,24}}.
    {move,{atom,a9},{x,0}}.
    {line,[{location,"map_SUITE.erl",898}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,23}}.
    {move,{literal,"c9"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,22}}.
    {move,{literal,"e9"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,21}}.
    {move,{atom,fb0},{x,0}}.
    {line,[{location,"map_SUITE.erl",900}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,20}}.
    {move,{literal,"fc0"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,19}}.
    {move,{atom,fb1},{x,0}}.
    {line,[{location,"map_SUITE.erl",901}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,18}}.
    {move,{literal,"fc1"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,17}}.
    {move,{atom,fb2},{x,0}}.
    {line,[{location,"map_SUITE.erl",902}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,16}}.
    {move,{literal,"fc2"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,15}}.
    {move,{atom,fb3},{x,0}}.
    {line,[{location,"map_SUITE.erl",903}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,14}}.
    {move,{literal,"fc3"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,13}}.
    {move,{atom,fb4},{x,0}}.
    {line,[{location,"map_SUITE.erl",904}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,12}}.
    {move,{literal,"fc4"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,11}}.
    {move,{atom,fb5},{x,0}}.
    {line,[{location,"map_SUITE.erl",906}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,10}}.
    {move,{literal,"fc5"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,9}}.
    {move,{atom,fb6},{x,0}}.
    {line,[{location,"map_SUITE.erl",907}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,8}}.
    {move,{literal,"fc6"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,7}}.
    {move,{atom,fb7},{x,0}}.
    {line,[{location,"map_SUITE.erl",908}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,6}}.
    {move,{literal,"fc7"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,5}}.
    {move,{atom,fb8},{x,0}}.
    {line,[{location,"map_SUITE.erl",909}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,4}}.
    {move,{literal,"fc8"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,3}}.
    {move,{atom,fb9},{x,0}}.
    {line,[{location,"map_SUITE.erl",910}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,2}}.
    {move,{literal,"fc9"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,1}}.
    {move,{literal,"small map key 1"},{x,0}}.
    {line,[{location,"map_SUITE.erl",914}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{literal,"large map key 2"},{x,0}}.
    {line,[{location,"map_SUITE.erl",940}]}.
    {call,1,{f,1107}}. % id/1
    {put_map_assoc,{f,0},
                   {literal,#{}},
                   {x,0},
                   1,
                   {list,[{float,10.0},
                          {atom,fa0},
                          {integer,10},
                          {y,50},
                          {float,11.0},
                          {atom,fa1},
                          {integer,11},
                          {y,47},
                          {float,12.0},
                          {atom,fa2},
                          {integer,12},
                          {y,44},
                          {float,13.0},
                          {atom,fa3},
                          {integer,13},
                          {y,41},
                          {float,14.0},
                          {atom,fa4},
                          {integer,14},
                          {y,38},
                          {float,15.0},
                          {atom,fa5},
                          {integer,15},
                          {y,35},
                          {float,16.0},
                          {atom,fa6},
                          {integer,16},
                          {y,32},
                          {float,17.0},
                          {atom,fa7},
                          {integer,17},
                          {y,29},
                          {float,18.0},
                          {atom,fa8},
                          {integer,18},
                          {y,26},
                          {float,19.0},
                          {atom,fa9},
                          {integer,19},
                          {y,23},
                          {integer,20},
                          {atom,b0},
                          {float,20.0},
                          {y,20},
                          {integer,21},
                          {atom,b1},
                          {float,21.0},
                          {y,18},
                          {integer,22},
                          {atom,b2},
                          {float,22.0},
                          {y,16},
                          {integer,23},
                          {atom,b3},
                          {float,23.0},
                          {y,14},
                          {integer,24},
                          {atom,b4},
                          {float,24.0},
                          {y,12},
                          {integer,25},
                          {atom,b5},
                          {float,25.0},
                          {y,10},
                          {integer,26},
                          {atom,b6},
                          {float,26.0},
                          {y,8},
                          {integer,27},
                          {atom,b7},
                          {float,27.0},
                          {y,6},
                          {integer,28},
                          {atom,b8},
                          {float,28.0},
                          {y,4},
                          {integer,29},
                          {atom,b9},
                          {float,29.0},
                          {y,2},
                          {integer,30},
                          {y,49},
                          {float,30.0},
                          {y,19},
                          {integer,31},
                          {y,46},
                          {float,31.0},
                          {y,17},
                          {integer,32},
                          {y,43},
                          {float,32.0},
                          {y,15},
                          {integer,33},
                          {y,40},
                          {float,33.0},
                          {y,13},
                          {integer,34},
                          {y,37},
                          {float,34.0},
                          {y,11},
                          {integer,35},
                          {y,34},
                          {float,35.0},
                          {y,9},
                          {integer,36},
                          {y,31},
                          {float,36.0},
                          {y,7},
                          {integer,37},
                          {y,28},
                          {float,37.0},
                          {y,5},
                          {integer,38},
                          {y,25},
                          {float,38.0},
                          {y,3},
                          {integer,39},
                          {y,22},
                          {float,39.0},
                          {y,1},
                          {atom,q},
                          {integer,1},
                          {atom,x},
                          {integer,0},
                          {atom,y},
                          {literal,"untouched"},
                          {atom,z},
                          {literal,"also untouched"},
                          {literal,{["00"]}},
                          {literal,"10"},
                          {literal,{["01"]}},
                          {literal,"11"},
                          {literal,{["02"]}},
                          {literal,"12"},
                          {literal,{["03"]}},
                          {literal,"13"},
                          {literal,{["04"]}},
                          {literal,"14"},
                          {literal,{["05"]}},
                          {literal,"15"},
                          {literal,{["06"]}},
                          {literal,"16"},
                          {literal,{["07"]}},
                          {literal,"17"},
                          {literal,{["08"]}},
                          {literal,"18"},
                          {literal,{["09"]}},
                          {literal,"19"},
                          {literal,#{map => key,second => small}},
                          {literal,"small map key 2"},
                          {literal,#{map => key,third => small}},
                          {literal,"small map key 3"},
                          {literal,#{map => key,"one" => small}},
                          {y,0},
                          {literal,#{10 => a0,11 => a1,12 => a2,13 => a3,
                                     14 => a4,15 => a5,16 => a6,17 => a7,
                                     18 => a8,19 => a9,20 => b0,21 => b1,
                                     22 => b2,23 => b3,24 => b4,25 => b5,
                                     26 => b6,27 => b7,28 => b8,29 => b9,
                                     30 => "c0",31 => "c1",32 => "c2",
                                     33 => "c3",34 => "c4",35 => "c5",
                                     36 => "c6",37 => "c7",38 => "c8",
                                     39 => "c9",
                                     {["00"]} => "10",
                                     {["01"]} => "11",
                                     {["02"]} => "12",
                                     {["03"]} => "13",
                                     {["04"]} => "14",
                                     {["05"]} => "15",
                                     {["06"]} => "16",
                                     {["07"]} => "17",
                                     {["08"]} => "18",
                                     {["09"]} => "19",
                                     "40" => "d0","41" => "d1","42" => "d2",
                                     "43" => "d3","44" => "d4","45" => "d5",
                                     "46" => "d6","47" => "d7","48" => "d8",
                                     "49" => "d9",<<"50">> => "e0",
                                     <<"51">> => "e1",<<"52">> => "e2",
                                     <<"53">> => "e3",<<"54">> => "e4",
                                     <<"55">> => "e5",<<"56">> => "e6",
                                     <<"57">> => "e7",<<"58">> => "e8",
                                     <<"59">> => "e9"}},
                          {literal,"large map key 1"},
                          {literal,#{10 => a0,11 => a1,12 => a2,13 => a3,
                                     14 => a4,15 => a5,17 => a7,18 => a8,
                                     19 => a9,20 => b0,21 => b1,22 => b2,
                                     23 => b3,24 => b4,25 => b5,27 => b7,
                                     28 => b8,29 => b9,30 => "c0",31 => "c1",
                                     32 => "c2",33 => "c3",34 => "c4",
                                     35 => "c5",37 => "c7",38 => "c8",
                                     39 => "c9",k16 => a6,k26 => b6,
                                     k36 => "c6",
                                     {["00"]} => "10",
                                     {["01"]} => "11",
                                     {["02"]} => "12",
                                     {["03"]} => "13",
                                     {["04"]} => "14",
                                     {["05"]} => "15",
                                     {["06"]} => "16",
                                     {["07"]} => "17",
                                     {["08"]} => "18",
                                     {["09"]} => "19",
                                     "40" => "d0","41" => "d1","42" => "d2",
                                     "43" => "d3","44" => "d4","45" => "d5",
                                     "46" => "d6","47" => "d7","48" => "d8",
                                     "49" => "d9",<<"50">> => "e0",
                                     <<"51">> => "e1",<<"52">> => "e2",
                                     <<"53">> => "e3",<<"54">> => "e4",
                                     <<"55">> => "e5",<<"56">> => "e6",
                                     <<"57">> => "e7",<<"58">> => "e8",
                                     <<"59">> => "e9"}},
                          {x,0},
                          {literal,"40"},
                          {literal,"d0"},
                          {literal,"41"},
                          {literal,"d1"},
                          {literal,"42"},
                          {literal,"d2"},
                          {literal,"43"},
                          {literal,"d3"},
                          {literal,"44"},
                          {literal,"d4"},
                          {literal,"45"},
                          {literal,"d5"},
                          {literal,"46"},
                          {literal,"d6"},
                          {literal,"47"},
                          {literal,"d7"},
                          {literal,"48"},
                          {literal,"d8"},
                          {literal,"49"},
                          {literal,"d9"},
                          {literal,<<"50">>},
                          {y,48},
                          {literal,<<"51">>},
                          {y,45},
                          {literal,<<"52">>},
                          {y,42},
                          {literal,<<"53">>},
                          {y,39},
                          {literal,<<"54">>},
                          {y,36},
                          {literal,<<"55">>},
                          {y,33},
                          {literal,<<"56">>},
                          {y,30},
                          {literal,<<"57">>},
                          {y,27},
                          {literal,<<"58">>},
                          {y,24},
                          {literal,<<"59">>},
                          {y,21}]}}.
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
                       {y,25},
                       {y,26},
                       {y,27},
                       {y,28},
                       {y,29},
                       {y,30},
                       {y,31},
                       {y,32},
                       {y,33},
                       {y,34},
                       {y,35},
                       {y,36},
                       {y,37},
                       {y,38},
                       {y,39},
                       {y,40},
                       {y,41},
                       {y,42},
                       {y,43},
                       {y,44},
                       {y,45},
                       {y,46},
                       {y,47},
                       {y,48},
                       {y,49},
                       {y,50}]}}.
    {line,[{location,"map_SUITE.erl",888}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,50}}.
    {move,{literal,[{1,2},{3,4},{5,6},{7,8}]},{x,1}}.
    {line,[{location,"map_SUITE.erl",942}]}.
    {call,2,{f,280}}. % loop_match_and_update_literals_x_q/2
    {test,is_map,{f,278},[{x,0}]}.
    {get_map_elements,{f,278},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{atom,z},
                             {x,4},
                             {atom,y},
                             {x,3},
                             {atom,x},
                             {x,2},
                             {atom,q},
                             {x,1}]}}.
    {test,is_eq_exact,{f,278},[{x,1},{integer,21}]}.
    {test,is_eq_exact,{f,278},[{x,2},{integer,16}]}.
    {test,is_eq_exact,{f,278},[{x,3},{literal,"untouched"}]}.
    {test,is_eq_exact,{f,278},[{x,4},{literal,"also untouched"}]}.
    {test,is_map,{f,276},[{y,50}]}.
    {put_map_assoc,{f,0},
                   {y,50},
                   {x,0},
                   0,
                   {list,[{integer,4},
                          {atom,number},
                          {integer,18446744073709551629},
                          {atom,wat},
                          {atom,int},
                          {integer,3},
                          {literal,"hi"},
                          {literal,"hello"},
                          {literal,<<"key">>},
                          {literal,<<"value">>}]}}.
    {line,[{location,"map_SUITE.erl",945}]}.
    {call,1,{f,1107}}. % id/1
    {swap,{y,50},{x,0}}.
    {line,[{location,"map_SUITE.erl",947}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,275},[{x,0}]}.
    {put_map_assoc,{f,0},
                   {x,0},
                   {x,0},
                   1,
                   {list,[{integer,4},
                          {atom,number},
                          {integer,18446744073709551629},
                          {atom,wat},
                          {atom,int},
                          {integer,3},
                          {literal,"hi"},
                          {literal,"hello"},
                          {literal,<<"key">>},
                          {literal,<<"value">>}]}}.
    {test,is_eq_exact,{f,277},[{tr,{x,0},{t_map,any,any}},{y,50}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,51}.
    return.
  {label,275}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,badmap},{x,0}]}}.
    {line,[{location,"map_SUITE.erl",948}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},51}.
  {label,276}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,badmap},{y,50}]}}.
    {line,[{location,"map_SUITE.erl",945}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},51}.
  {label,277}.
    {line,[{location,"map_SUITE.erl",950}]}.
    {badmatch,{x,0}}.
  {label,278}.
    {line,[{location,"map_SUITE.erl",942}]}.
    {badmatch,{x,0}}.


{function, loop_match_and_update_literals_x_q, 2, 280}.
  {label,279}.
    {line,[{location,"map_SUITE.erl",955}]}.
    {func_info,{atom,map_SUITE},{atom,loop_match_and_update_literals_x_q},2}.
  {label,280}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_list,
                     {t_union,none,none,none,
                         [{{2,{t_integer,{1,1}}},
                           {t_tuple,2,true,
                               #{1 => {t_integer,{1,1}},
                                 2 => {t_integer,{2,2}}}}},
                          {{2,{t_integer,{3,3}}},
                           {t_tuple,2,true,
                               #{1 => {t_integer,{3,3}},
                                 2 => {t_integer,{4,4}}}}},
                          {{2,{t_integer,{5,5}}},
                           {t_tuple,2,true,
                               #{1 => {t_integer,{5,5}},
                                 2 => {t_integer,{6,6}}}}},
                          {{2,{t_integer,{7,7}}},
                           {t_tuple,2,true,
                               #{1 => {t_integer,{7,7}},
                                 2 => {t_integer,{8,8}}}}}],
                         none},
                     nil}}]}}.
    {test,is_nil,
        {f,281},
        [{tr,{x,1},
             {t_list,
                 {t_union,none,none,none,
                     [{{2,{t_integer,{1,1}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{1,1}},2 => {t_integer,{2,2}}}}},
                      {{2,{t_integer,{3,3}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{3,3}},2 => {t_integer,{4,4}}}}},
                      {{2,{t_integer,{5,5}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{5,5}},2 => {t_integer,{6,6}}}}},
                      {{2,{t_integer,{7,7}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{7,7}},2 => {t_integer,{8,8}}}}}],
                     none},
                 nil}}]}.
    return.
  {label,281}.
    {test,is_map,{f,279},[{x,0}]}.
    {get_map_elements,{f,279},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{literal,#{map => key,"one" => small}},
                             {x,4},
                             {atom,x},
                             {x,3},
                             {atom,q},
                             {x,2}]}}.
    {test,is_eq_exact,{f,279},[{x,4},{literal,"small map key 1"}]}.
    {get_list,{x,1},{x,4},{x,1}}.
    {get_tuple_element,{x,4},1,{x,5}}.
    {line,[{location,"map_SUITE.erl",958}]}.
    {gc_bif,'+',{f,0},6,[{x,2},{tr,{x,5},{t_integer,{2,8}}}],{x,2}}.
    {get_tuple_element,{x,4},0,{x,4}}.
    {gc_bif,'+',{f,0},5,[{x,3},{tr,{x,4},{t_integer,{1,7}}}],{x,3}}.
    {put_map_assoc,{f,0},{x,0},{x,0},4,{list,[{atom,q},{x,2},{atom,x},{x,3}]}}.
    {call_only,2,{f,280}}. % loop_match_and_update_literals_x_q/2


{function, t_update_map_expressions, 1, 283}.
  {label,282}.
    {line,[{location,"map_SUITE.erl",961}]}.
    {func_info,{atom,map_SUITE},{atom,t_update_map_expressions},1}.
  {label,283}.
    {test,is_list,{f,282},[{x,0}]}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{atom,fondue},{x,0}}.
    {line,[{location,"map_SUITE.erl",963}]}.
    {call,1,{f,1107}}. % id/1
    {test,has_map_fields,{f,296},{literal,#{a => 1}},{list,[{atom,a}]}}.
    {test_heap,2,1}.
    {put_tuple2,{x,1},{list,[{x,0}]}}.
    {put_map_assoc,{f,0},{literal,#{a => 1}},{x,1},2,{list,[{atom,b},{x,1}]}}.
    {line,[{location,"map_SUITE.erl",965}]}.
    {put_map_exact,{f,0},{x,1},{x,1},2,{list,[{atom,a},{integer,1}]}}.
    {get_map_elements,
        {f,295},
        {tr,{x,1},
            {t_map,
                {t_atom,[a,b]},
                {t_union,none,none,
                    {t_integer,{1,1}},
                    {t_tuple,1,true,#{}},
                    none}}},
        {list,[{atom,b},{x,2}]}}.
    {test,is_tuple,
          {f,295},
          [{tr,{x,2},
               {t_union,none,none,
                        {t_integer,{1,1}},
                        {t_tuple,1,true,#{}},
                        none}}]}.
    {get_tuple_element,{x,2},0,{x,2}}.
    {test,is_eq_exact,{f,295},[{x,2},{x,0}]}.
    {test,has_map_fields,{f,294},{literal,#{b => 2}},{list,[{atom,b}]}}.
    {move,{literal,[{a,1},{b,2},{c,3}]},{x,0}}.
    {line,[{scope,[6]},{location,"map_SUITE.erl",969}]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {line,[{location,"map_SUITE.erl",969}]}.
    {put_map_exact,{f,0},
                   {x,0},
                   {x,0},
                   1,
                   {list,[{atom,a},
                          {integer,42},
                          {atom,b},
                          {integer,42},
                          {atom,c},
                          {integer,42}]}}.
    {move,{literal,[{"a",1},{"b",2}]},{x,0}}.
    {line,[{scope,[6]},{location,"map_SUITE.erl",970}]}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {put_map_assoc,{f,0},{x,0},{x,0},1,{list,[{literal,"c"},{integer,42}]}}.
    {line,[{location,"map_SUITE.erl",970}]}.
    {put_map_exact,{f,0},{x,0},{x,0},1,{list,[{literal,"b"},{integer,42}]}}.
    {get_map_elements,{f,293},
                      {tr,{x,0},
                          {t_map,{t_cons,{t_integer,{97,99}},nil},
                                 {t_integer,{1,42}}}},
                      {list,[{literal,"c"},{x,2},{literal,"a"},{x,1}]}}.
    {test,is_eq_exact,{f,293},[{tr,{x,1},{t_integer,{1,42}}},{integer,1}]}.
    {test,is_eq_exact,{f,293},[{tr,{x,2},{t_integer,{1,42}}},{integer,42}]}.
    {line,[{scope,[6]},{location,"map_SUITE.erl",981}]}.
    {call,0,{f,1270}}. % '-t_update_map_expressions/1-fun-0-'/0
    {'%',{var_info,{x,0},[{type,{t_map,any,any}}]}}.
    {get_map_elements,{f,292},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{literal,"a"},{x,1}]}}.
    {test,is_eq_exact,{f,292},[{x,1},{atom,b}]}.
    {'catch',{y,2},{f,285}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[6]},{location,"map_SUITE.erl",984}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,284},[{x,0}]}.
    {put_map_assoc,{f,0},{x,0},{x,0},1,{list,[{atom,b},{integer,2}]}}.
    {line,[{location,"map_SUITE.erl",984}]}.
    {put_map_exact,{f,0},{x,0},{x,0},1,{list,[{atom,a},{integer,42}]}}.
    {jump,{f,285}}.
  {label,284}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,badmap},{x,0}]}}.
    {line,[{scope,[5]},{location,"map_SUITE.erl",984}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,285}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,291},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,291},[{x,1}]}.
    {test,test_arity,{f,291},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,291},[{x,1},{literal,{badmap,<<>>}}]}.
    {'catch',{y,1},{f,287}}.
    {move,nil,{x,0}}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",985}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,286},[{x,0}]}.
    {put_map_assoc,{f,0},{x,0},{x,0},1,{list,[{atom,b},{integer,2}]}}.
    {line,[{location,"map_SUITE.erl",985}]}.
    {put_map_exact,{f,0},{x,0},{x,0},1,{list,[{atom,a},{integer,42}]}}.
    {jump,{f,287}}.
  {label,286}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,badmap},{x,0}]}}.
    {line,[{scope,[3]},{location,"map_SUITE.erl",985}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,287}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,290},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,290},[{x,1}]}.
    {test,test_arity,{f,290},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,290},[{x,1},{literal,{badmap,[]}}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,283},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[ok]}}]}}.
    {'catch',{y,0},{f,288}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,badmap},{x,0}]}}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",987}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,288}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,289},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,289},[{x,1}]}.
    {test,test_arity,{f,289},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,289},[{x,1},2,{atom,badmap}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,3}.
    return.
  {label,289}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",986}]}.
    {badmatch,{x,0}}.
  {label,290}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",985}]}.
    {badmatch,{x,0}}.
  {label,291}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",984}]}.
    {badmatch,{x,0}}.
  {label,292}.
    {line,[{scope,[6]},{location,"map_SUITE.erl",981}]}.
    {badmatch,{x,0}}.
  {label,293}.
    {line,[{scope,[6]},{location,"map_SUITE.erl",970}]}.
    {badmatch,{x,0}}.
  {label,294}.
    {line,[{scope,[6]},{location,"map_SUITE.erl",967}]}.
    {badmatch,{literal,#{b => 2}}}.
  {label,295}.
    {line,[{scope,[6]},{location,"map_SUITE.erl",965}]}.
    {badmatch,{x,1}}.
  {label,296}.
    {line,[{scope,[6]},{location,"map_SUITE.erl",964}]}.
    {badmatch,{literal,#{a => 1}}}.


{function, t_update_assoc, 1, 298}.
  {label,297}.
    {line,[{location,"map_SUITE.erl",992}]}.
    {func_info,{atom,map_SUITE},{atom,t_update_assoc},1}.
  {label,298}.
    {test,is_list,{f,297},[{x,0}]}.
    {allocate,5,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3},{y,4}]}}.
    {move,{literal,#{1 => a,2 => b,4 => d,5 => e,3.0 => c}},{x,0}}.
    {line,[{location,"map_SUITE.erl",993}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,305},[{x,0}]}.
    {put_map_assoc,{f,0},
                   {x,0},
                   {x,1},
                   1,
                   {list,[{integer,1},
                          {integer,42},
                          {integer,2},
                          {integer,100},
                          {integer,4},
                          {literal,[a,b,c]}]}}.
    {get_map_elements,{f,315},
                      {tr,{x,1},{t_map,any,any}},
                      {list,[{float,3.0},{x,3},{integer,5},{x,2}]}}.
    {test,is_eq_exact,{f,315},[{x,2},{atom,e}]}.
    {test,is_eq_exact,{f,315},[{x,3},{atom,c}]}.
    {put_map_assoc,{f,0},
                   {x,0},
                   {x,1},
                   1,
                   {list,[{float,1.0},
                          {atom,float},
                          {float,2.0},
                          {integer,100},
                          {float,4.0},
                          {literal,[a,b,c]}]}}.
    {line,[{location,"map_SUITE.erl",997}]}.
    {put_map_exact,{f,0},{x,1},{x,1},2,{list,[{integer,1},{integer,42}]}}.
    {get_map_elements,{f,314},
                      {tr,{x,1},{t_map,any,any}},
                      {list,[{float,4.0},
                             {x,7},
                             {float,3.0},
                             {x,6},
                             {float,2.0},
                             {x,5},
                             {integer,5},
                             {x,4},
                             {integer,4},
                             {x,3},
                             {integer,2},
                             {x,2}]}}.
    {test,is_eq_exact,{f,314},[{x,2},{atom,b}]}.
    {test,is_eq_exact,{f,314},[{x,3},{atom,d}]}.
    {test,is_eq_exact,{f,314},[{x,4},{atom,e}]}.
    {test,is_eq_exact,{f,314},[{x,5},{integer,100}]}.
    {test,is_eq_exact,{f,314},[{x,6},{atom,c}]}.
    {test,is_eq_exact,{f,314},[{x,7},{literal,[a,b,c]}]}.
    {put_map_assoc,{f,0},{x,0},{x,1},1,{list,[{float,3.0},{atom,new}]}}.
    {get_map_elements,{f,313},
                      {tr,{x,1},{t_map,any,any}},
                      {list,[{integer,5},
                             {x,5},
                             {integer,4},
                             {x,4},
                             {integer,2},
                             {x,3},
                             {integer,1},
                             {x,2}]}}.
    {test,is_eq_exact,{f,313},[{x,2},{atom,a}]}.
    {test,is_eq_exact,{f,313},[{x,3},{atom,b}]}.
    {test,is_eq_exact,{f,313},[{x,4},{atom,d}]}.
    {test,is_eq_exact,{f,313},[{x,5},{atom,e}]}.
    {line,[{location,"map_SUITE.erl",1001}]}.
    {put_map_exact,{f,0},{x,0},{x,2},2,{list,[{float,3.0},{atom,new}]}}.
    {test,is_eq_exact,
          {f,312},
          [{tr,{x,2},{t_map,any,any}},{tr,{x,1},{t_map,any,any}}]}.
    {line,[{scope,"\n"},{location,"map_SUITE.erl",1004}]}.
    {bs_create_bin,{f,0},
                   0,1,1,
                   {y,4},
                   {list,[{atom,integer},1,1,nil,{integer,0},{integer,257}]}}.
    {line,[{scope,"\n"},{location,"map_SUITE.erl",1005}]}.
    {bs_create_bin,{f,0},
                   0,1,1,
                   {x,1},
                   {list,[{atom,integer},1,1,nil,{integer,0},{integer,257}]}}.
    {put_map_assoc,{f,0},{x,0},{x,0},2,{list,[{x,1},{atom,val}]}}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,311},[{x,0}]}.
    {get_map_elements,{f,311},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{tr,{y,4},{t_bitstring,1,false}},{x,1}]}}.
    {test,is_eq_exact,{f,311},[{x,1},{atom,val}]}.
    {init_yregs,{list,[{y,4}]}}.
    {move,{atom,badmap},{x,0}}.
    {line,[{scope,"\n"},{location,"map_SUITE.erl",1008}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,3}}.
    {'catch',{y,4},{f,300}}.
    {test,is_map,{f,299},[{x,0}]}.
    {put_map_assoc,{f,0},{x,0},{x,0},1,{list,[{atom,nonexisting},{atom,val}]}}.
    {jump,{f,300}}.
  {label,299}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,badmap},{y,3}]}}.
    {line,[{scope,"\t"},{location,"map_SUITE.erl",1009}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,300}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,310},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,310},[{x,1}]}.
    {test,test_arity,{f,310},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,310},[{x,1},2,{atom,badmap}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,{f,310},[{x,1},{y,3}]}.
    {'catch',{y,3},{f,301}}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,badmap},{literal,<<>>}]}}.
    {line,[{scope,"\b"},{location,"map_SUITE.erl",1010}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,301}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,309},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,309},[{x,1}]}.
    {test,test_arity,{f,309},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,309},[{x,1},{literal,{badmap,<<>>}}]}.
    {'catch',{y,2},{f,302}}.
    {init_yregs,{list,[{y,3}]}}.
    {line,[{scope,[6]},{location,"map_SUITE.erl",1015}]}.
    {call,0,{f,1268}}. % '-t_update_assoc/1-fun-0-'/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,302}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,308},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,308},[{x,1}]}.
    {test,test_arity,{f,308},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,308},[{x,1},{literal,{badmap,0}}]}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",1028}]}.
    {call,0,{f,1266}}. % '-t_update_assoc/1-fun-1-'/0
    {'%',{var_info,{x,0},[{type,{t_integer,{42,42}}}]}}.
    {'catch',{y,1},{f,303}}.
    {move,{atom,blurf},{x,0}}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",1032}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,303}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,307},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,307},[{x,1},2,{atom,blurf}]}.
    {'catch',{y,0},{f,304}}.
    {move,{atom,blurf},{x,0}}.
    {line,[{scope,[3,4]},{location,"map_SUITE.erl",1034}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,304}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,306},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,306},[{x,1},2,{atom,blurf}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,5}.
    return.
  {label,305}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,badmap},{x,0}]}}.
    {line,[{scope,"\n"},{location,"map_SUITE.erl",995}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},5}.
  {label,306}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",1033}]}.
    {badmatch,{x,0}}.
  {label,307}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",1031}]}.
    {badmatch,{x,0}}.
  {label,308}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",1015}]}.
    {badmatch,{x,0}}.
  {label,309}.
    {line,[{scope,[6]},{location,"map_SUITE.erl",1010}]}.
    {badmatch,{x,0}}.
  {label,310}.
    {line,[{scope,"\b"},{location,"map_SUITE.erl",1009}]}.
    {badmatch,{x,0}}.
  {label,311}.
    {line,[{scope,"\n"},{location,"map_SUITE.erl",1005}]}.
    {badmatch,{x,0}}.
  {label,312}.
    {line,[{scope,"\n"},{location,"map_SUITE.erl",1001}]}.
    {badmatch,{x,2}}.
  {label,313}.
    {line,[{scope,"\n"},{location,"map_SUITE.erl",1000}]}.
    {badmatch,{x,1}}.
  {label,314}.
    {line,[{scope,"\n"},{location,"map_SUITE.erl",997}]}.
    {badmatch,{x,1}}.
  {label,315}.
    {line,[{scope,"\n"},{location,"map_SUITE.erl",996}]}.
    {badmatch,{x,1}}.


{function, t_update_assoc_large, 1, 317}.
  {label,316}.
    {line,[{location,"map_SUITE.erl",1037}]}.
    {func_info,{atom,map_SUITE},{atom,t_update_assoc_large},1}.
  {label,317}.
    {test,is_list,{f,316},[{x,0}]}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{literal,#{10 => a0,11 => a1,12 => a2,13 => a3,14 => a4,15 => a5,
                     16 => a6,17 => a7,18 => a8,19 => a9,20 => b0,21 => b1,
                     22 => b2,23 => b3,24 => b4,25 => b5,26 => b6,27 => b7,
                     28 => b8,29 => b9,30 => "c0",31 => "c1",32 => "c2",
                     33 => "c3",34 => "c4",35 => "c5",36 => "c6",37 => "c7",
                     38 => "c8",39 => "c9",10.0 => fa0,11.0 => fa1,
                     12.0 => fa2,13.0 => fa3,14.0 => fa4,15.0 => fa5,
                     16.0 => fa6,17.0 => fa7,18.0 => fa8,19.0 => fa9,
                     20.0 => fb0,21.0 => fb1,22.0 => fb2,23.0 => fb3,
                     24.0 => fb4,25.0 => fb5,26.0 => fb6,27.0 => fb7,
                     28.0 => fb8,29.0 => fb9,30.0 => "fc0",31.0 => "fc1",
                     32.0 => "fc2",33.0 => "fc3",34.0 => "fc4",35.0 => "fc5",
                     36.0 => "fc6",37.0 => "fc7",38.0 => "fc8",39.0 => "fc9",
                     {["00"]} => "10",
                     {["01"]} => "11",
                     {["02"]} => "12",
                     {["03"]} => "13",
                     {["04"]} => "14",
                     {["05"]} => "15",
                     {["06"]} => "16",
                     {["07"]} => "17",
                     {["08"]} => "18",
                     {["09"]} => "19",
                     #{map => key,one => small} => "small map key 1",
                     #{map => key,third => small} => "small map key 3",
                     #{map => key,second => small} => "small map key 2",
                     #{10 => a0,11 => a1,12 => a2,13 => a3,14 => a4,15 => a5,
                       16 => a6,17 => a7,18 => a8,19 => a9,20 => b0,21 => b1,
                       22 => b2,23 => b3,24 => b4,25 => b5,26 => b6,27 => b7,
                       28 => b8,29 => b9,30 => "c0",31 => "c1",32 => "c2",
                       33 => "c3",34 => "c4",35 => "c5",36 => "c6",37 => "c7",
                       38 => "c8",39 => "c9",
                       {["00"]} => "10",
                       {["01"]} => "11",
                       {["02"]} => "12",
                       {["03"]} => "13",
                       {["04"]} => "14",
                       {["05"]} => "15",
                       {["06"]} => "16",
                       {["07"]} => "17",
                       {["08"]} => "18",
                       {["09"]} => "19",
                       "40" => "d0","41" => "d1","42" => "d2","43" => "d3",
                       "44" => "d4","45" => "d5","46" => "d6","47" => "d7",
                       "48" => "d8","49" => "d9",<<"50">> => "e0",
                       <<"51">> => "e1",<<"52">> => "e2",<<"53">> => "e3",
                       <<"54">> => "e4",<<"55">> => "e5",<<"56">> => "e6",
                       <<"57">> => "e7",<<"58">> => "e8",<<"59">> => "e9"} =>
                         "large map key 1",
                     #{10 => a0,11 => a1,12 => a2,13 => a3,14 => a4,15 => a5,
                       17 => a7,18 => a8,19 => a9,20 => b0,21 => b1,22 => b2,
                       23 => b3,24 => b4,25 => b5,27 => b7,28 => b8,29 => b9,
                       30 => "c0",31 => "c1",32 => "c2",33 => "c3",34 => "c4",
                       35 => "c5",37 => "c7",38 => "c8",39 => "c9",k16 => a6,
                       k26 => b6,k36 => "c6",
                       {["00"]} => "10",
                       {["01"]} => "11",
                       {["02"]} => "12",
                       {["03"]} => "13",
                       {["04"]} => "14",
                       {["05"]} => "15",
                       {["06"]} => "16",
                       {["07"]} => "17",
                       {["08"]} => "18",
                       {["09"]} => "19",
                       "40" => "d0","41" => "d1","42" => "d2","43" => "d3",
                       "44" => "d4","45" => "d5","46" => "d6","47" => "d7",
                       "48" => "d8","49" => "d9",<<"50">> => "e0",
                       <<"51">> => "e1",<<"52">> => "e2",<<"53">> => "e3",
                       <<"54">> => "e4",<<"55">> => "e5",<<"56">> => "e6",
                       <<"57">> => "e7",<<"58">> => "e8",<<"59">> => "e9"} =>
                         "large map key 2",
                     "40" => "d0","41" => "d1","42" => "d2","43" => "d3",
                     "44" => "d4","45" => "d5","46" => "d6","47" => "d7",
                     "48" => "d8","49" => "d9",<<"50">> => "e0",
                     <<"51">> => "e1",<<"52">> => "e2",<<"53">> => "e3",
                     <<"54">> => "e4",<<"55">> => "e5",<<"56">> => "e6",
                     <<"57">> => "e7",<<"58">> => "e8",<<"59">> => "e9"}},
          {x,0}}.
    {line,[{location,"map_SUITE.erl",1038}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,1}}.
    {test,is_map,{f,320},[{x,0}]}.
    {put_map_assoc,{f,0},
                   {x,0},
                   {x,0},
                   1,
                   {list,[{integer,1},
                          {integer,42},
                          {integer,2},
                          {integer,100},
                          {integer,4},
                          {literal,[a,b,c]}]}}.
    {get_map_elements,{f,325},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{float,10.0},{x,2},{integer,25},{x,1}]}}.
    {test,is_eq_exact,{f,325},[{x,1},{atom,b5}]}.
    {test,is_eq_exact,{f,325},[{x,2},{atom,fa0}]}.
    {put_map_assoc,{f,0},
                   {y,1},
                   {x,0},
                   0,
                   {list,[{float,1.0},
                          {atom,float},
                          {float,2.0},
                          {integer,100},
                          {float,4.0},
                          {literal,[a,b,c]}]}}.
    {line,[{location,"map_SUITE.erl",1094}]}.
    {put_map_exact,{f,0},{x,0},{x,0},1,{list,[{integer,10},{integer,43}]}}.
    {get_map_elements,{f,324},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{float,13.0},
                             {x,6},
                             {float,4.0},
                             {x,5},
                             {float,2.0},
                             {x,4},
                             {integer,35},
                             {x,3},
                             {integer,24},
                             {x,2},
                             {integer,15},
                             {x,1}]}}.
    {test,is_eq_exact,{f,324},[{x,1},{atom,a5}]}.
    {test,is_eq_exact,{f,324},[{x,2},{atom,b4}]}.
    {test,is_eq_exact,{f,324},[{x,3},{literal,"c5"}]}.
    {test,is_eq_exact,{f,324},[{x,4},{integer,100}]}.
    {test,is_eq_exact,{f,324},[{x,5},{literal,[a,b,c]}]}.
    {test,is_eq_exact,{f,324},[{x,6},{atom,fa3}]}.
    {put_map_assoc,{f,0},{y,1},{x,0},0,{list,[{float,13.0},{atom,new}]}}.
    {get_map_elements,{f,323},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{literal,<<"50">>},
                             {x,4},
                             {literal,"40"},
                             {x,3},
                             {integer,20},
                             {x,2},
                             {integer,10},
                             {x,1}]}}.
    {test,is_eq_exact,{f,323},[{x,1},{atom,a0}]}.
    {test,is_eq_exact,{f,323},[{x,2},{atom,b0}]}.
    {test,is_eq_exact,{f,323},[{x,3},{literal,"d0"}]}.
    {test,is_eq_exact,{f,323},[{x,4},{literal,"e0"}]}.
    {line,[{location,"map_SUITE.erl",1098}]}.
    {put_map_exact,{f,0},{y,1},{x,1},1,{list,[{float,13.0},{atom,new}]}}.
    {test,is_eq_exact,
          {f,322},
          [{tr,{x,1},{t_map,any,any}},{tr,{x,0},{t_map,any,any}}]}.
    {move,{literal,{no,map}},{x,0}}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",1101}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,0}}.
    {'catch',{y,2},{f,319}}.
    {test,is_map,{f,318},[{x,0}]}.
    {put_map_assoc,{f,0},{x,0},{x,0},1,{list,[{atom,nonexisting},{y,1}]}}.
    {jump,{f,319}}.
  {label,318}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,badmap},{y,0}]}}.
    {line,[{scope,[1]},{location,"map_SUITE.erl",1102}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,319}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,321},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,321},[{x,1}]}.
    {test,test_arity,{f,321},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,321},[{x,1},2,{atom,badmap}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,{f,321},[{x,1},{y,0}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,3}.
    return.
  {label,320}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,badmap},{y,1}]}}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",1091}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},3}.
  {label,321}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",1102}]}.
    {badmatch,{x,0}}.
  {label,322}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",1098}]}.
    {badmatch,{x,1}}.
  {label,323}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",1097}]}.
    {badmatch,{x,0}}.
  {label,324}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",1093}]}.
    {badmatch,{x,0}}.
  {label,325}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",1092}]}.
    {badmatch,{x,0}}.


{function, t_update_exact, 1, 327}.
  {label,326}.
    {line,[{location,"map_SUITE.erl",1107}]}.
    {func_info,{atom,map_SUITE},{atom,t_update_exact},1}.
  {label,327}.
    {test,is_list,{f,326},[{x,0}]}.
    {allocate,13,0}.
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
                       {y,12}]}}.
    {move,{literal,#{1 => a,2 => b,4 => d,5 => e,3.0 => c}},{x,0}}.
    {line,[{location,"map_SUITE.erl",1108}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,5}}.
    {test,is_map,{f,346},[{x,0}]}.
    {line,[{location,"map_SUITE.erl",1110}]}.
    {put_map_exact,{f,0},
                   {x,0},
                   {x,0},
                   1,
                   {list,[{integer,1},
                          {integer,42},
                          {integer,2},
                          {integer,100},
                          {integer,4},
                          {literal,[a,b,c]}]}}.
    {get_map_elements,{f,365},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{float,3.0},{x,2},{integer,5},{x,1}]}}.
    {test,is_eq_exact,{f,365},[{x,1},{atom,e}]}.
    {test,is_eq_exact,{f,365},[{x,2},{atom,c}]}.
    {put_map_assoc,{f,0},{y,5},{x,1},1,{list,[{integer,2},{integer,100}]}}.
    {line,[{location,"map_SUITE.erl",1112}]}.
    {put_map_exact,{f,0},
                   {x,1},
                   {x,1},
                   2,
                   {list,[{integer,1},
                          {integer,42},
                          {integer,4},
                          {literal,[a,b,c]}]}}.
    {test,is_eq_exact,
          {f,364},
          [{tr,{x,1},{t_map,any,any}},{tr,{x,0},{t_map,any,any}}]}.
    {line,[{location,"map_SUITE.erl",1114}]}.
    {put_map_exact,{f,0},{y,5},{x,0},0,{list,[{float,3.0},{atom,new}]}}.
    {get_map_elements,{f,363},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{integer,5},
                             {x,4},
                             {integer,4},
                             {x,3},
                             {integer,2},
                             {x,2},
                             {integer,1},
                             {x,1}]}}.
    {test,is_eq_exact,{f,363},[{x,1},{atom,a}]}.
    {test,is_eq_exact,{f,363},[{x,2},{atom,b}]}.
    {test,is_eq_exact,{f,363},[{x,3},{atom,d}]}.
    {test,is_eq_exact,{f,363},[{x,4},{atom,e}]}.
    {put_map_assoc,{f,0},{y,5},{x,1},1,{list,[{float,3.0},{atom,new}]}}.
    {test,is_eq_exact,
          {f,362},
          [{tr,{x,1},{t_map,any,any}},{tr,{x,0},{t_map,any,any}}]}.
    {put_map_assoc,{f,0},{y,5},{x,1},1,{list,[{integer,3},{atom,right}]}}.
    {line,[{location,"map_SUITE.erl",1117}]}.
    {put_map_exact,{f,0},{x,1},{x,1},2,{list,[{float,3.0},{atom,new}]}}.
    {test,is_eq_exact,
          {f,328},
          [{tr,{x,0},{t_map,any,any}},{tr,{x,1},{t_map,any,any}}]}.
    {line,[{scope,[26]},{location,"map_SUITE.erl",1117}]}.
    {badmatch,{atom,false}}.
  {label,328}.
    {get_map_elements,{f,361},
                      {tr,{x,1},{t_map,any,any}},
                      {list,[{integer,3},{x,0}]}}.
    {test,is_eq_exact,{f,361},[{x,0},{atom,right}]}.
    {move,{literal,#{1 => val}},{x,0}}.
    {line,[{scope,[26]},{location,"map_SUITE.erl",1120}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,345},[{x,0}]}.
    {put_map_assoc,{f,0},{x,0},{x,0},1,{list,[{float,1.0},{atom,new_val4}]}}.
    {line,[{location,"map_SUITE.erl",1121}]}.
    {put_map_exact,{f,0},{x,0},{x,0},1,{list,[{integer,1},{atom,update2}]}}.
    {get_map_elements,{f,360},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{float,1.0},{x,1}]}}.
    {test,is_eq_exact,{f,360},[{x,1},{atom,new_val4}]}.
    {'catch',{y,12},{f,330}}.
    {move,{atom,nil},{x,0}}.
    {line,[{scope,[26]},{location,"map_SUITE.erl",1127}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,329},[{x,0}]}.
    {line,[{location,"map_SUITE.erl",1127}]}.
    {put_map_exact,{f,0},{x,0},{x,0},1,{list,[{atom,a},{atom,b}]}}.
    {jump,{f,330}}.
  {label,329}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,badmap},{x,0}]}}.
    {line,[{scope,[25]},{location,"map_SUITE.erl",1127}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,330}.
    {catch_end,{y,12}}.
    {test,is_tagged_tuple,{f,359},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,359},[{x,1}]}.
    {test,test_arity,{f,359},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,359},[{x,1},{literal,{badmap,nil}}]}.
    {'catch',{y,11},{f,331}}.
    {line,[{location,"map_SUITE.erl",1128}]}.
    {put_map_exact,{f,0},{y,5},{x,0},0,{list,[{atom,nonexisting},{atom,val}]}}.
  {label,331}.
    {catch_end,{y,11}}.
    {test,is_tagged_tuple,{f,358},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,358},[{x,1}]}.
    {test,test_arity,{f,358},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,358},[{x,1},{literal,{badkey,nonexisting}}]}.
    {'catch',{y,10},{f,332}}.
    {line,[{location,"map_SUITE.erl",1129}]}.
    {put_map_exact,{f,0},{y,5},{x,0},0,{list,[{float,1.0},{atom,v2}]}}.
  {label,332}.
    {catch_end,{y,10}}.
    {test,is_tagged_tuple,{f,357},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,357},[{x,1}]}.
    {test,test_arity,{f,357},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,357},[{x,1},{literal,{badkey,1.0}}]}.
    {'catch',{y,9},{f,333}}.
    {line,[{location,"map_SUITE.erl",1130}]}.
    {put_map_exact,{f,0},
                   {y,5},
                   {x,0},
                   0,
                   {list,[{float,42.0},{atom,v},{integer,42},{atom,v2}]}}.
  {label,333}.
    {catch_end,{y,9}}.
    {test,is_tagged_tuple,{f,356},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,356},[{x,1}]}.
    {test,test_arity,{f,356},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,356},[{x,1},{literal,{badkey,42}}]}.
    {put_map_assoc,{f,0},{y,5},{x,0},0,{list,[{integer,42},{atom,v3}]}}.
    {'catch',{y,8},{f,334}}.
    {line,[{location,"map_SUITE.erl",1131}]}.
    {put_map_exact,{f,0},{x,0},{x,0},1,{list,[{float,42.0},{atom,v2}]}}.
  {label,334}.
    {catch_end,{y,8}}.
    {test,is_tagged_tuple,{f,355},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,355},[{x,1}]}.
    {test,test_arity,{f,355},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,355},[{x,1},{literal,{badkey,42.0}}]}.
    {'catch',{y,7},{f,335}}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,badmap},{literal,<<>>}]}}.
    {line,[{scope,[16]},{location,"map_SUITE.erl",1132}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,335}.
    {catch_end,{y,7}}.
    {test,is_tagged_tuple,{f,354},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,354},[{x,1}]}.
    {test,test_arity,{f,354},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,354},[{x,1},{literal,{badmap,<<>>}}]}.
    {'catch',{y,6},{f,336}}.
    {line,[{scope,[14]},{location,"map_SUITE.erl",1134}]}.
    {bs_create_bin,{f,0},
                   0,0,1,
                   {x,0},
                   {list,[{atom,integer},1,1,nil,{integer,0},{integer,257}]}}.
    {line,[{location,"map_SUITE.erl",1134}]}.
    {put_map_exact,{f,0},{y,5},{x,0},1,{list,[{x,0},{atom,val}]}}.
  {label,336}.
    {catch_end,{y,6}}.
    {test,is_tagged_tuple,{f,353},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,353},[{x,1}]}.
    {test,test_arity,{f,353},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,353},[{x,1},2,{atom,badkey}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,bs_start_match3,{f,353},2,[{x,1}],{x,1}}.
    {test,bs_match_string,
          {f,353},
          [{x,1},
           257,
           {string,<<0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
                     0,0,0,0,0,0>>}]}.
    {bs_match,{f,353},{x,1},{commands,[{ensure_exactly,0}]}}.
    {'catch',{y,5},{f,338}}.
    {move,{literal,#{}},{x,0}}.
    {line,[{scope,[13,14]},{location,"map_SUITE.erl",1137}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,337},[{x,0}]}.
    {line,[{location,"map_SUITE.erl",1137}]}.
    {put_map_exact,{f,0},{x,0},{x,0},1,{list,[{atom,a},{integer,1}]}}.
    {jump,{f,338}}.
  {label,337}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,badmap},{x,0}]}}.
    {line,[{scope,"\v"},{location,"map_SUITE.erl",1137}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,338}.
    {catch_end,{y,5}}.
    {test,is_tagged_tuple,{f,352},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,352},[{x,1}]}.
    {test,test_arity,{f,352},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,352},[{x,1},{literal,{badkey,a}}]}.
    {'catch',{y,4},{f,339}}.
    {line,[{location,"map_SUITE.erl",1138}]}.
    {put_map_exact,{f,0},{literal,#{}},{x,0},0,{list,[{atom,a},{integer,1}]}}.
  {label,339}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,351},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,351},[{x,1}]}.
    {test,test_arity,{f,351},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,351},[{x,1},{literal,{badkey,a}}]}.
    {'catch',{y,3},{f,340}}.
    {line,[{location,"map_SUITE.erl",1140}]}.
    {put_map_exact,{f,0},{literal,#{}},{x,0},0,{list,[{atom,a},{integer,1}]}}.
  {label,340}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,350},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,350},[{x,1}]}.
    {test,test_arity,{f,350},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,350},[{x,1},{literal,{badkey,a}}]}.
    {init_yregs,{list,[{y,5}]}}.
    {move,{literal,[no,map]},{x,0}}.
    {line,[{scope,[6]},{location,"map_SUITE.erl",1143}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,12}}.
    {'catch',{y,2},{f,341}}.
    {move,{atom,blurf},{x,0}}.
    {line,[{scope,[6]},{location,"map_SUITE.erl",1145}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,341}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,349},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,349},[{x,1},2,{atom,blurf}]}.
    {'catch',{y,1},{f,342}}.
    {move,{atom,blurf},{x,0}}.
    {line,[{scope,[5,6]},{location,"map_SUITE.erl",1147}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,342}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,348},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,348},[{x,1},2,{atom,blurf}]}.
    {'catch',{y,0},{f,344}}.
    {move,{atom,nonexisting},{x,0}}.
    {line,[{scope,[3,4]},{location,"map_SUITE.erl",1149}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,343},[{y,12}]}.
    {line,[{location,"map_SUITE.erl",1149}]}.
    {put_map_exact,{f,0},{y,12},{x,0},1,{list,[{x,0},{atom,whatever}]}}.
    {jump,{f,344}}.
  {label,343}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,badmap},{y,12}]}}.
    {line,[{scope,[1]},{location,"map_SUITE.erl",1149}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,344}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,347},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,347},[{x,1}]}.
    {test,test_arity,{f,347},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,347},[{x,1},2,{atom,badmap}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,{f,347},[{x,1},{y,12}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,13}.
    return.
  {label,345}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,badmap},{x,0}]}}.
    {line,[{scope,[26]},{location,"map_SUITE.erl",1121}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},13}.
  {label,346}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,badmap},{y,5}]}}.
    {line,[{scope,[26]},{location,"map_SUITE.erl",1110}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},13}.
  {label,347}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",1148}]}.
    {badmatch,{x,0}}.
  {label,348}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",1146}]}.
    {badmatch,{x,0}}.
  {label,349}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",1144}]}.
    {badmatch,{x,0}}.
  {label,350}.
    {line,[{scope,[6]},{location,"map_SUITE.erl",1140}]}.
    {badmatch,{x,0}}.
  {label,351}.
    {line,[{scope,"\b"},{location,"map_SUITE.erl",1138}]}.
    {badmatch,{x,0}}.
  {label,352}.
    {line,[{scope,"\n"},{location,"map_SUITE.erl",1137}]}.
    {badmatch,{x,0}}.
  {label,353}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",1133}]}.
    {badmatch,{x,0}}.
  {label,354}.
    {line,[{scope,[14]},{location,"map_SUITE.erl",1132}]}.
    {badmatch,{x,0}}.
  {label,355}.
    {line,[{scope,[16]},{location,"map_SUITE.erl",1131}]}.
    {badmatch,{x,0}}.
  {label,356}.
    {line,[{scope,[18]},{location,"map_SUITE.erl",1130}]}.
    {badmatch,{x,0}}.
  {label,357}.
    {line,[{scope,[20]},{location,"map_SUITE.erl",1129}]}.
    {badmatch,{x,0}}.
  {label,358}.
    {line,[{scope,[22]},{location,"map_SUITE.erl",1128}]}.
    {badmatch,{x,0}}.
  {label,359}.
    {line,[{scope,[24]},{location,"map_SUITE.erl",1127}]}.
    {badmatch,{x,0}}.
  {label,360}.
    {line,[{scope,[26]},{location,"map_SUITE.erl",1121}]}.
    {badmatch,{x,0}}.
  {label,361}.
    {line,[{scope,[26]},{location,"map_SUITE.erl",1118}]}.
    {badmatch,{x,1}}.
  {label,362}.
    {line,[{scope,[26]},{location,"map_SUITE.erl",1116}]}.
    {badmatch,{x,1}}.
  {label,363}.
    {line,[{scope,[26]},{location,"map_SUITE.erl",1115}]}.
    {badmatch,{x,0}}.
  {label,364}.
    {line,[{scope,[26]},{location,"map_SUITE.erl",1112}]}.
    {badmatch,{x,1}}.
  {label,365}.
    {line,[{scope,[26]},{location,"map_SUITE.erl",1111}]}.
    {badmatch,{x,0}}.


{function, t_update_exact_large, 1, 367}.
  {label,366}.
    {line,[{location,"map_SUITE.erl",1152}]}.
    {func_info,{atom,map_SUITE},{atom,t_update_exact_large},1}.
  {label,367}.
    {test,is_list,{f,366},[{x,0}]}.
    {allocate,4,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3}]}}.
    {move,{literal,#{10 => a0,11 => a1,12 => a2,13 => a3,14 => a4,15 => a5,
                     16 => a6,17 => a7,18 => a8,19 => a9,20 => b0,21 => b1,
                     22 => b2,23 => b3,24 => b4,25 => b5,26 => b6,27 => b7,
                     28 => b8,29 => b9,30 => "c0",31 => "c1",32 => "c2",
                     33 => "c3",34 => "c4",35 => "c5",36 => "c6",37 => "c7",
                     38 => "c8",39 => "c9",10.0 => fa0,11.0 => fa1,
                     12.0 => fa2,13.0 => fa3,14.0 => fa4,15.0 => fa5,
                     16.0 => fa6,17.0 => fa7,18.0 => fa8,19.0 => fa9,
                     20.0 => fb0,21.0 => fb1,22.0 => fb2,23.0 => fb3,
                     24.0 => fb4,25.0 => fb5,26.0 => fb6,27.0 => fb7,
                     28.0 => fb8,29.0 => fb9,30.0 => "fc0",31.0 => "fc1",
                     32.0 => "fc2",33.0 => "fc3",34.0 => "fc4",35.0 => "fc5",
                     36.0 => "fc6",37.0 => "fc7",38.0 => "fc8",39.0 => "fc9",
                     {["00"]} => "10",
                     {["01"]} => "11",
                     {["02"]} => "12",
                     {["03"]} => "13",
                     {["04"]} => "14",
                     {["05"]} => "15",
                     {["06"]} => "16",
                     {["07"]} => "17",
                     {["08"]} => "18",
                     {["09"]} => "19",
                     #{map => key,one => small} => "small map key 1",
                     #{map => key,third => small} => "small map key 3",
                     #{map => key,second => small} => "small map key 2",
                     #{10 => a0,11 => a1,12 => a2,13 => a3,14 => a4,15 => a5,
                       16 => a6,17 => a7,18 => a8,19 => a9,20 => b0,21 => b1,
                       22 => b2,23 => b3,24 => b4,25 => b5,26 => b6,27 => b7,
                       28 => b8,29 => b9,30 => "c0",31 => "c1",32 => "c2",
                       33 => "c3",34 => "c4",35 => "c5",36 => "c6",37 => "c7",
                       38 => "c8",39 => "c9",
                       {["00"]} => "10",
                       {["01"]} => "11",
                       {["02"]} => "12",
                       {["03"]} => "13",
                       {["04"]} => "14",
                       {["05"]} => "15",
                       {["06"]} => "16",
                       {["07"]} => "17",
                       {["08"]} => "18",
                       {["09"]} => "19",
                       "40" => "d0","41" => "d1","42" => "d2","43" => "d3",
                       "44" => "d4","45" => "d5","46" => "d6","47" => "d7",
                       "48" => "d8","49" => "d9",<<"50">> => "e0",
                       <<"51">> => "e1",<<"52">> => "e2",<<"53">> => "e3",
                       <<"54">> => "e4",<<"55">> => "e5",<<"56">> => "e6",
                       <<"57">> => "e7",<<"58">> => "e8",<<"59">> => "e9"} =>
                         "large map key 1",
                     #{10 => a0,11 => a1,12 => a2,13 => a3,14 => a4,15 => a5,
                       17 => a7,18 => a8,19 => a9,20 => b0,21 => b1,22 => b2,
                       23 => b3,24 => b4,25 => b5,27 => b7,28 => b8,29 => b9,
                       30 => "c0",31 => "c1",32 => "c2",33 => "c3",34 => "c4",
                       35 => "c5",37 => "c7",38 => "c8",39 => "c9",k16 => a6,
                       k26 => b6,k36 => "c6",
                       {["00"]} => "10",
                       {["01"]} => "11",
                       {["02"]} => "12",
                       {["03"]} => "13",
                       {["04"]} => "14",
                       {["05"]} => "15",
                       {["06"]} => "16",
                       {["07"]} => "17",
                       {["08"]} => "18",
                       {["09"]} => "19",
                       "40" => "d0","41" => "d1","42" => "d2","43" => "d3",
                       "44" => "d4","45" => "d5","46" => "d6","47" => "d7",
                       "48" => "d8","49" => "d9",<<"50">> => "e0",
                       <<"51">> => "e1",<<"52">> => "e2",<<"53">> => "e3",
                       <<"54">> => "e4",<<"55">> => "e5",<<"56">> => "e6",
                       <<"57">> => "e7",<<"58">> => "e8",<<"59">> => "e9"} =>
                         "large map key 2",
                     "40" => "d0","41" => "d1","42" => "d2","43" => "d3",
                     "44" => "d4","45" => "d5","46" => "d6","47" => "d7",
                     "48" => "d8","49" => "d9",<<"50">> => "e0",
                     <<"51">> => "e1",<<"52">> => "e2",<<"53">> => "e3",
                     <<"54">> => "e4",<<"55">> => "e5",<<"56">> => "e6",
                     <<"57">> => "e7",<<"58">> => "e8",<<"59">> => "e9"}},
          {x,0}}.
    {line,[{location,"map_SUITE.erl",1153}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,0}}.
    {test,is_map,{f,372},[{x,0}]}.
    {line,[{location,"map_SUITE.erl",1206}]}.
    {put_map_exact,{f,0},
                   {x,0},
                   {x,0},
                   1,
                   {list,[{integer,10},
                          {integer,42},
                          {float,10.0},
                          {literal,[a,b,c]},
                          {literal,<<"55">>},
                          {integer,100}]}}.
    {get_map_elements,{f,380},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{literal,#{10 => a0,11 => a1,12 => a2,13 => a3,
                                        14 => a4,15 => a5,16 => a6,17 => a7,
                                        18 => a8,19 => a9,20 => b0,21 => b1,
                                        22 => b2,23 => b3,24 => b4,25 => b5,
                                        26 => b6,27 => b7,28 => b8,29 => b9,
                                        30 => "c0",31 => "c1",32 => "c2",
                                        33 => "c3",34 => "c4",35 => "c5",
                                        36 => "c6",37 => "c7",38 => "c8",
                                        39 => "c9",
                                        {["00"]} => "10",
                                        {["01"]} => "11",
                                        {["02"]} => "12",
                                        {["03"]} => "13",
                                        {["04"]} => "14",
                                        {["05"]} => "15",
                                        {["06"]} => "16",
                                        {["07"]} => "17",
                                        {["08"]} => "18",
                                        {["09"]} => "19",
                                        "40" => "d0","41" => "d1",
                                        "42" => "d2","43" => "d3",
                                        "44" => "d4","45" => "d5",
                                        "46" => "d6","47" => "d7",
                                        "48" => "d8","49" => "d9",
                                        <<"50">> => "e0",<<"51">> => "e1",
                                        <<"52">> => "e2",<<"53">> => "e3",
                                        <<"54">> => "e4",<<"55">> => "e5",
                                        <<"56">> => "e6",<<"57">> => "e7",
                                        <<"58">> => "e8",<<"59">> => "e9"}},
                             {x,2},
                             {literal,{["05"]}},
                             {x,1}]}}.
    {test,is_eq_exact,{f,380},[{x,1},{literal,"15"}]}.
    {test,is_eq_exact,{f,380},[{x,2},{literal,"large map key 1"}]}.
    {put_map_assoc,{f,0},
                   {y,0},
                   {x,1},
                   1,
                   {list,[{literal,<<"55">>},{integer,100}]}}.
    {line,[{location,"map_SUITE.erl",1220}]}.
    {put_map_exact,{f,0},
                   {x,1},
                   {x,1},
                   2,
                   {list,[{integer,10},
                          {integer,42},
                          {float,10.0},
                          {literal,[a,b,c]}]}}.
    {test,is_eq_exact,
          {f,379},
          [{tr,{x,1},{t_map,any,any}},{tr,{x,0},{t_map,any,any}}]}.
    {line,[{location,"map_SUITE.erl",1222}]}.
    {put_map_exact,{f,0},{y,0},{x,0},0,{list,[{float,13.0},{atom,new}]}}.
    {get_map_elements,{f,378},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{integer,20},{x,2},{integer,10},{x,1}]}}.
    {test,is_eq_exact,{f,378},[{x,1},{atom,a0}]}.
    {test,is_eq_exact,{f,378},[{x,2},{atom,b0}]}.
    {put_map_assoc,{f,0},{y,0},{x,1},1,{list,[{float,13.0},{atom,new}]}}.
    {test,is_eq_exact,
          {f,377},
          [{tr,{x,1},{t_map,any,any}},{tr,{x,0},{t_map,any,any}}]}.
    {'catch',{y,3},{f,368}}.
    {line,[{location,"map_SUITE.erl",1227}]}.
    {put_map_exact,{f,0},{y,0},{x,0},0,{list,[{atom,nonexisting},{atom,val}]}}.
  {label,368}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,376},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,376},[{x,1}]}.
    {test,test_arity,{f,376},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,376},[{x,1},{literal,{badkey,nonexisting}}]}.
    {'catch',{y,2},{f,369}}.
    {line,[{location,"map_SUITE.erl",1228}]}.
    {put_map_exact,{f,0},{y,0},{x,0},0,{list,[{float,1.0},{atom,v2}]}}.
  {label,369}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,375},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,375},[{x,1}]}.
    {test,test_arity,{f,375},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,375},[{x,1},{literal,{badkey,1.0}}]}.
    {'catch',{y,1},{f,370}}.
    {line,[{location,"map_SUITE.erl",1229}]}.
    {put_map_exact,{f,0},
                   {y,0},
                   {x,0},
                   0,
                   {list,[{float,42.0},{atom,v},{integer,42},{atom,v2}]}}.
  {label,370}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,374},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,374},[{x,1}]}.
    {test,test_arity,{f,374},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,374},[{x,1},{literal,{badkey,42}}]}.
    {put_map_assoc,{f,0},{y,0},{x,0},0,{list,[{integer,42},{atom,v3}]}}.
    {'catch',{y,0},{f,371}}.
    {line,[{location,"map_SUITE.erl",1230}]}.
    {put_map_exact,{f,0},{x,0},{x,0},1,{list,[{float,42.0},{atom,v2}]}}.
  {label,371}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,373},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,373},[{x,1}]}.
    {test,test_arity,{f,373},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,373},[{x,1},{literal,{badkey,42.0}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,4}.
    return.
  {label,372}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,badmap},{y,0}]}}.
    {line,[{scope,"\b"},{location,"map_SUITE.erl",1206}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},4}.
  {label,373}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",1230}]}.
    {badmatch,{x,0}}.
  {label,374}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",1229}]}.
    {badmatch,{x,0}}.
  {label,375}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",1228}]}.
    {badmatch,{x,0}}.
  {label,376}.
    {line,[{scope,[6]},{location,"map_SUITE.erl",1227}]}.
    {badmatch,{x,0}}.
  {label,377}.
    {line,[{scope,"\b"},{location,"map_SUITE.erl",1224}]}.
    {badmatch,{x,1}}.
  {label,378}.
    {line,[{scope,"\b"},{location,"map_SUITE.erl",1223}]}.
    {badmatch,{x,0}}.
  {label,379}.
    {line,[{scope,"\b"},{location,"map_SUITE.erl",1220}]}.
    {badmatch,{x,1}}.
  {label,380}.
    {line,[{scope,"\b"},{location,"map_SUITE.erl",1207}]}.
    {badmatch,{x,0}}.


{function, t_update_values, 1, 382}.
  {label,381}.
    {line,[{location,"map_SUITE.erl",1234}]}.
    {func_info,{atom,map_SUITE},{atom,t_update_values},1}.
  {label,382}.
    {test,is_list,{f,381},[{x,0}]}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{integer,1337},{x,0}}.
    {line,[{location,"map_SUITE.erl",1235}]}.
    {call,1,{f,1107}}. % id/1
    {put_map_assoc,{f,0},
                   {literal,#{}},
                   {y,1},
                   1,
                   {list,[{atom,a},{integer,1},{atom,val},{x,0}]}}.
    {move,{x,0},{y,0}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"map_SUITE.erl",1237}]}.
    {call,1,{f,396}}. % get_val/1
    {test_heap,4,1}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{y,0},{x,0},{x,0}}.
    {put_map_assoc,{f,0},
                   {y,1},
                   {x,1},
                   1,
                   {list,[{literal,"wazzup"},{integer,42}]}}.
    {line,[{location,"map_SUITE.erl",1238}]}.
    {put_map_exact,{f,0},{x,1},{x,0},2,{list,[{atom,val},{x,0}]}}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,1}}.
    {line,[{location,"map_SUITE.erl",1239}]}.
    {call,1,{f,396}}. % get_val/1
    {test,is_eq_exact,{f,386},[{x,0},{literal,[1337,{some_val,1337}]}]}.
    {line,[{location,"map_SUITE.erl",1240}]}.
    {bs_create_bin,{f,0},
                   0,0,1,
                   {x,0},
                   {list,[{atom,integer},
                          1,1,nil,
                          {integer,0},
                          {integer,325},
                          {atom,string},
                          0,8,nil,
                          {string,<<"*">>},
                          {integer,1}]}}.
    {test,is_map,{f,383},[{y,1}]}.
    {put_map_assoc,{f,0},{y,1},{x,0},1,{list,[{x,0},{integer,1337}]}}.
    {trim,2,0}.
    {call,1,{f,1107}}. % id/1
    {line,[{location,"map_SUITE.erl",1241}]}.
    {call,1,{f,396}}. % get_val/1
    {test,is_eq_exact,{f,385},[{x,0},{literal,{bin_key,1337}}]}.
    {move,{integer,110},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"map_SUITE.erl",1244}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {call,1,{f,1262}}. % '-t_update_values/1-lc$^0/1-0-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_cons,any,nil},
                           2 =>
                               {t_tuple,5,true,
                                   #{1 => {t_integer,{1,1}},
                                     2 => {t_integer,{2,2}},
                                     3 => {t_integer,{3,3}},
                                     4 =>
                                         {t_cons,{t_integer,{97,119}},nil}}}}},
                     nil}}]}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},1}.
    {make_fun3,{f,1259},0,0,{x,1},{list,[]}}.
    {'%',{var_info,{x,1},
                   [{fun_type,{t_tuple,3,true,#{3 => {t_map,any,any}}}}]}}.
    {move,{x,0},{x,2}}.
    {move,{x,1},{x,0}}.
    {move,{literal,{none,none,#{val1 => none,val2 => none}}},{x,1}}.
    {line,[{location,"map_SUITE.erl",1246}]}.
    {call_ext,3,{extfunc,lists,foldl,3}}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {get_map_elements,{f,384},
                      {tr,{x,1},{t_map,any,any}},
                      {list,[{atom,val2},{x,1},{atom,val1},{x,2}]}}.
    {test,is_nonempty_list,{f,384},[{x,2}]}.
    {get_list,{x,2},{x,3},{x,2}}.
    {test,is_nonempty_list,{f,384},[{x,2}]}.
    {get_list,{x,2},{x,4},{x,2}}.
    {test,is_eq_exact,{f,384},[{x,4},{integer,1}]}.
    {test,is_nonempty_list,{f,384},[{x,2}]}.
    {get_list,{x,2},{x,4},{x,2}}.
    {test,is_eq_exact,{f,384},[{x,4},{integer,2}]}.
    {test,is_nonempty_list,{f,384},[{x,2}]}.
    {get_list,{x,2},{x,4},{x,2}}.
    {test,is_eq_exact,{f,384},[{x,4},{integer,3}]}.
    {test,is_nonempty_list,{f,384},[{x,2}]}.
    {get_list,{x,2},{x,4},{x,2}}.
    {test,is_nil,{f,384},[{x,2}]}.
    {test,is_tuple,{f,384},[{x,1}]}.
    {test,test_arity,{f,384},[{x,1},5]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,384},[{x,2},{integer,1}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,384},[{x,2},{integer,2}]}.
    {get_tuple_element,{x,1},2,{x,2}}.
    {test,is_eq_exact,{f,384},[{x,2},{integer,3}]}.
    {get_tuple_element,{x,1},3,{x,2}}.
    {test,is_eq_exact,{f,384},[{x,2},{literal,"wat"}]}.
    {test,is_eq_exact,{f,384},[{x,3},{integer,110}]}.
    {test,is_eq_exact,{f,384},[{x,4},{integer,110}]}.
    {get_tuple_element,{x,1},4,{x,1}}.
    {test,is_eq_exact,{f,384},[{x,1},{integer,110}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,383}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,badmap},{y,1}]}}.
    {line,[{location,"map_SUITE.erl",1240}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},2}.
  {label,384}.
    {line,[{location,"map_SUITE.erl",1246}]}.
    {badmatch,{x,0}}.
  {label,385}.
    {line,[{location,"map_SUITE.erl",1241}]}.
    {badmatch,{x,0}}.
  {label,386}.
    {line,[{location,"map_SUITE.erl",1239}]}.
    {badmatch,{x,0}}.


{function, t_expand_map_update, 1, 388}.
  {label,387}.
    {line,[{location,"map_SUITE.erl",1254}]}.
    {func_info,{atom,map_SUITE},{atom,t_expand_map_update},1}.
  {label,388}.
    {test,is_list,{f,387},[{x,0}]}.
    {move,{literal,#{<<"hello">> => <<"les gens">>}},{x,0}}.
    {get_map_elements,{f,389},{x,0},{list,[{literal,<<"hello">>},{x,0}]}}.
    {test,is_eq_exact,
          {f,389},
          [{tr,{x,0},{t_bitstring,64,false}},{literal,<<"les gens">>}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,389}.
    {line,[{location,"map_SUITE.erl",1256}]}.
    {badmatch,{literal,#{<<"hello">> => <<"les gens">>}}}.


{function, t_export, 1, 391}.
  {label,390}.
    {line,[{location,"map_SUITE.erl",1259}]}.
    {func_info,{atom,map_SUITE},{atom,t_export},1}.
  {label,391}.
    {test,is_list,{f,390},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,#{}},{x,0}}.
    {line,[{location,"map_SUITE.erl",1260}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,392},[{x,0}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,392}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,badmap},{x,0}]}}.
    {line,[{location,"map_SUITE.erl",1262}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},0}.


{function, check_val, 3, 394}.
  {label,393}.
    {line,[{location,"map_SUITE.erl",1265}]}.
    {func_info,{atom,map_SUITE},{atom,check_val},3}.
  {label,394}.
    {test,is_map,{f,393},[{x,0}]}.
    {get_map_elements,{f,393},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{atom,val2},{x,4},{atom,val1},{x,3}]}}.
    {test,is_eq_exact,{f,393},[{x,1},{x,3}]}.
    {test,is_eq_exact,{f,393},[{x,2},{x,4}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, get_val, 1, 396}.
  {label,395}.
    {line,[{location,"map_SUITE.erl",1267}]}.
    {func_info,{atom,map_SUITE},{atom,get_val},1}.
  {label,396}.
    {test,is_map,{f,395},[{x,0}]}.
    {bs_create_bin,{f,397},
                   0,1,1,
                   {x,1},
                   {list,[{atom,integer},
                          1,1,nil,
                          {integer,0},
                          {integer,325},
                          {atom,string},
                          0,8,nil,
                          {string,<<"*">>},
                          {integer,1}]}}.
    {get_map_elements,{f,397},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{tr,{x,1},{t_bitstring,1,false}},{x,1}]}}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{atom,bin_key},{x,1}]}}.
    return.
  {label,397}.
    {get_map_elements,{f,395},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{atom,val},{x,1}]}}.
    {test,has_map_fields,{f,398},{x,0},{list,[{literal,"wazzup"}]}}.
    {move,{x,1},{x,0}}.
    return.
  {label,398}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{atom,some_val},{x,1}]}}.
    return.


{function, t_guard_bifs, 1, 400}.
  {label,399}.
    {line,[{location,"map_SUITE.erl",1271}]}.
    {func_info,{atom,map_SUITE},{atom,t_guard_bifs},1}.
  {label,400}.
    {test,is_list,{f,399},[{x,0}]}.
    {allocate,5,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3},{y,4}]}}.
    {line,[{location,"map_SUITE.erl",1272}]}.
    {call,0,{f,450}}. % map_guard_empty/0
    {'%',{var_info,{x,0},[{type,{t_atom,[true]}}]}}.
    {line,[{location,"map_SUITE.erl",1273}]}.
    {call,0,{f,452}}. % map_guard_empty_2/0
    {'%',{var_info,{x,0},[{type,{t_atom,[true]}}]}}.
    {move,{literal,#{a => 1}},{x,0}}.
    {line,[{location,"map_SUITE.erl",1274}]}.
    {call,1,{f,454}}. % map_guard_head/1
    {'%',{var_info,{x,0},[{type,{t_atom,[true]}}]}}.
    {move,nil,{x,0}}.
    {line,[{location,"map_SUITE.erl",1275}]}.
    {call,1,{f,454}}. % map_guard_head/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false]}}]}}.
    {move,{literal,#{a => 1}},{x,0}}.
    {line,[{location,"map_SUITE.erl",1277}]}.
    {call,1,{f,456}}. % map_get_head/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,448},[{x,0},{atom,true}]}.
    {move,{literal,#{}},{x,0}}.
    {line,[{scope,"\n"},{location,"map_SUITE.erl",1278}]}.
    {call,1,{f,456}}. % map_get_head/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,401},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,401}.
    {move,nil,{x,0}}.
    {line,[{scope,"\n"},{location,"map_SUITE.erl",1279}]}.
    {call,1,{f,456}}. % map_get_head/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false]}}]}}.
    {move,{literal,#{a => false}},{x,0}}.
    {line,[{scope,"\n"},{location,"map_SUITE.erl",1281}]}.
    {call,1,{f,459}}. % map_get_head_not/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,447},[{x,0},{atom,true}]}.
    {move,{literal,#{a => true}},{x,0}}.
    {line,[{scope,"\n"},{location,"map_SUITE.erl",1282}]}.
    {call,1,{f,459}}. % map_get_head_not/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,402},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,402}.
    {move,{literal,#{}},{x,0}}.
    {line,[{scope,"\n"},{location,"map_SUITE.erl",1283}]}.
    {call,1,{f,456}}. % map_get_head/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,403},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,403}.
    {move,nil,{x,0}}.
    {line,[{scope,"\n"},{location,"map_SUITE.erl",1284}]}.
    {call,1,{f,456}}. % map_get_head/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false]}}]}}.
    {move,{literal,#{a => 1}},{x,0}}.
    {line,[{scope,"\n"},{location,"map_SUITE.erl",1286}]}.
    {call,1,{f,468}}. % map_is_key_head/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,446},[{x,0},{atom,true}]}.
    {move,{literal,#{}},{x,0}}.
    {line,[{scope,"\n"},{location,"map_SUITE.erl",1287}]}.
    {call,1,{f,468}}. % map_is_key_head/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,404},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,404}.
    {move,{atom,not_a_map},{x,0}}.
    {line,[{scope,"\n"},{location,"map_SUITE.erl",1288}]}.
    {call,1,{f,468}}. % map_is_key_head/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false]}}]}}.
    {move,{literal,#{a => 1}},{x,0}}.
    {line,[{scope,"\n"},{location,"map_SUITE.erl",1290}]}.
    {call,1,{f,471}}. % map_is_key_head_not/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,405},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,405}.
    {move,{literal,#{b => 1}},{x,0}}.
    {line,[{scope,"\n"},{location,"map_SUITE.erl",1291}]}.
    {call,1,{f,471}}. % map_is_key_head_not/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,445},[{x,0},{atom,true}]}.
    {move,{literal,#{}},{x,0}}.
    {line,[{scope,"\n"},{location,"map_SUITE.erl",1292}]}.
    {call,1,{f,471}}. % map_is_key_head_not/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,444},[{x,0},{atom,true}]}.
    {move,{atom,not_a_map},{x,0}}.
    {line,[{scope,"\n"},{location,"map_SUITE.erl",1293}]}.
    {call,1,{f,471}}. % map_is_key_head_not/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false]}}]}}.
    {line,[{scope,"\n"},{location,"map_SUITE.erl",1295}]}.
    {call,0,{f,462}}. % map_get_head_badmap1/0
    {'%',{var_info,{x,0},[{type,{t_atom,[b]}}]}}.
    {line,[{scope,"\n"},{location,"map_SUITE.erl",1296}]}.
    {call,0,{f,464}}. % map_get_head_badmap2/0
    {'%',{var_info,{x,0},[{type,{t_atom,[b]}}]}}.
    {line,[{scope,"\n"},{location,"map_SUITE.erl",1297}]}.
    {call,0,{f,466}}. % map_get_head_badmap3/0
    {'%',{var_info,{x,0},[{type,{t_atom,[b]}}]}}.
    {move,{literal,#{a => 1}},{x,0}}.
    {line,[{scope,"\n"},{location,"map_SUITE.erl",1299}]}.
    {call,1,{f,474}}. % map_guard_body/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,443},[{x,0},{atom,true}]}.
    {move,{literal,{}},{x,0}}.
    {line,[{scope,"\n"},{location,"map_SUITE.erl",1300}]}.
    {call,1,{f,474}}. % map_guard_body/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,406},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,406}.
    {move,{literal,#{a => 1,<<"hi">> => "hi"}},{x,0}}.
    {line,[{scope,"\n"},{location,"map_SUITE.erl",1301}]}.
    {call,1,{f,476}}. % map_guard_pattern/1
    {'%',{var_info,{x,0},[{type,{t_atom,[true]}}]}}.
    {move,{literal,"list"},{x,0}}.
    {line,[{scope,"\n"},{location,"map_SUITE.erl",1302}]}.
    {call,1,{f,476}}. % map_guard_pattern/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false]}}]}}.
    {line,[{scope,"\n"},{location,"map_SUITE.erl",1303}]}.
    {call,0,{f,478}}. % map_guard_tautology/0
    {'%',{var_info,{x,0},[{type,{t_atom,[true]}}]}}.
    {line,[{scope,"\n"},{location,"map_SUITE.erl",1304}]}.
    {call,0,{f,480}}. % map_guard_ill_map_size/0
    {'%',{var_info,{x,0},[{type,{t_atom,[true]}}]}}.
    {move,{literal,#{a => 1}},{x,0}}.
    {line,[{scope,"\n"},{location,"map_SUITE.erl",1305}]}.
    {call,1,{f,482}}. % map_field_check_sequence/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,442},[{x,0},{atom,true}]}.
    {move,{literal,#{}},{x,0}}.
    {line,[{scope,"\n"},{location,"map_SUITE.erl",1306}]}.
    {call,1,{f,482}}. % map_field_check_sequence/1
    {'%',{var_info,{x,0},[{type,{t_atom,[false,true]}}]}}.
    {test,is_eq_exact,{f,407},[{x,0},{atom,true}]}.
    {badmatch,{atom,true}}.
  {label,407}.
    {move,{literal,#{a => v}},{x,0}}.
    {line,[{scope,"\n"},{location,"map_SUITE.erl",1310}]}.
    {call,1,{f,1107}}. % id/1
    {line,[{location,"map_SUITE.erl",1310}]}.
    {bif,map_get,{f,0},[{atom,a},{x,0}],{x,0}}.
    {test,is_eq_exact,{f,441},[{x,0},{atom,v}]}.
    {'catch',{y,4},{f,408}}.
    {move,{literal,#{}},{x,0}}.
    {line,[{scope,"\n"},{location,"map_SUITE.erl",1312}]}.
    {call,1,{f,1107}}. % id/1
    {line,[{location,"map_SUITE.erl",1312}]}.
    {bif,map_get,{f,0},[{atom,a},{x,0}],{x,0}}.
  {label,408}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,440},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,440},[{x,1}]}.
    {test,test_arity,{f,440},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,440},[{x,1},{literal,{badkey,a}}]}.
    {'catch',{y,3},{f,409}}.
    {move,{atom,not_a_map},{x,0}}.
    {line,[{scope,"\b"},{location,"map_SUITE.erl",1314}]}.
    {call,1,{f,1107}}. % id/1
    {line,[{location,"map_SUITE.erl",1314}]}.
    {bif,map_get,{f,0},[{atom,a},{x,0}],{x,0}}.
  {label,409}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,439},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,439},[{x,1}]}.
    {test,test_arity,{f,439},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,439},[{x,1},{literal,{badmap,not_a_map}}]}.
    {move,{literal,#{a => 1}},{x,0}}.
    {line,[{scope,[6]},{location,"map_SUITE.erl",1316}]}.
    {call,1,{f,1107}}. % id/1
    {line,[{location,"map_SUITE.erl",1316}]}.
    {bif,is_map_key,{f,0},[{atom,a},{x,0}],{x,0}}.
    {test,is_eq_exact,{f,438},[{x,0},{atom,true}]}.
    {move,{literal,#{a => 1}},{x,0}}.
    {line,[{scope,[6]},{location,"map_SUITE.erl",1317}]}.
    {call,1,{f,1107}}. % id/1
    {line,[{location,"map_SUITE.erl",1317}]}.
    {bif,is_map_key,{f,0},[{atom,b},{x,0}],{x,0}}.
    {test,is_eq_exact,{f,410},[{x,0},{atom,true}]}.
    {line,[{scope,[6]},{location,"map_SUITE.erl",1317}]}.
    {badmatch,{atom,true}}.
  {label,410}.
    {move,{literal,#{}},{x,0}}.
    {line,[{scope,[6]},{location,"map_SUITE.erl",1318}]}.
    {call,1,{f,1107}}. % id/1
    {line,[{location,"map_SUITE.erl",1318}]}.
    {bif,is_map_key,{f,0},[{atom,b},{x,0}],{x,0}}.
    {test,is_eq_exact,{f,411},[{x,0},{atom,true}]}.
    {line,[{scope,[6]},{location,"map_SUITE.erl",1318}]}.
    {badmatch,{atom,true}}.
  {label,411}.
    {'catch',{y,2},{f,412}}.
    {move,{atom,not_a_map},{x,0}}.
    {line,[{scope,[6]},{location,"map_SUITE.erl",1320}]}.
    {call,1,{f,1107}}. % id/1
    {line,[{location,"map_SUITE.erl",1320}]}.
    {bif,is_map_key,{f,0},[{atom,b},{x,0}],{x,0}}.
  {label,412}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,437},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,437},[{x,1}]}.
    {test,test_arity,{f,437},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,437},[{x,1},{literal,{badmap,not_a_map}}]}.
    {move,{literal,#{k => v}},{x,0}}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",1322}]}.
    {call,1,{f,485}}. % erl_699/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[false,true]},
                                     2 => {t_atom,[v]}}}}]}}.
    {test,is_eq_exact,
          {f,436},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_atom,[false,true]},2 => {t_atom,[v]}}}},
           {literal,{true,v}}]}.
    {'catch',{y,1},{f,413}}.
    {move,{literal,#{}},{x,0}}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",1323}]}.
    {call,1,{f,485}}. % erl_699/1
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,true,
                                   #{1 => {t_atom,[false,true]},
                                     2 => {t_atom,[v]}}}}]}}.
  {label,413}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,435},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,435},[{x,1}]}.
    {test,test_arity,{f,435},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,435},[{x,1},{literal,{badkey,k}}]}.
    {'catch',{y,0},{f,414}}.
    {move,{atom,not_a_map},{x,0}}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",1324}]}.
    {call,1,{f,485}}. % erl_699/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,414}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,434},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,434},[{x,1}]}.
    {test,test_arity,{f,434},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,434},[{x,1},{literal,{badmap,not_a_map}}]}.
    {move,{literal,#{a => any,k => true}},{x,0}}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",1328}]}.
    {call,1,{f,487}}. % beam_dead_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,433},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{literal,#{a => any,k => false}},{x,0}}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",1329}]}.
    {call,1,{f,487}}. % beam_dead_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,432},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{literal,#{a => any}},{x,0}}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",1330}]}.
    {call,1,{f,487}}. % beam_dead_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,431},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{literal,#{}},{x,0}}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",1331}]}.
    {call,1,{f,487}}. % beam_dead_1/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,430},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{literal,#{a => any,k => true}},{x,0}}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",1333}]}.
    {call,1,{f,490}}. % beam_dead_2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,429},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{literal,#{a => any,k => false}},{x,0}}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",1334}]}.
    {call,1,{f,490}}. % beam_dead_2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,428},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{literal,#{a => any}},{x,0}}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",1335}]}.
    {call,1,{f,490}}. % beam_dead_2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,427},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{literal,#{}},{x,0}}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",1336}]}.
    {call,1,{f,490}}. % beam_dead_2/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,426},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{literal,#{k => true}},{x,0}}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",1338}]}.
    {call,1,{f,493}}. % beam_dead_3/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,425},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{literal,#{k => false}},{x,0}}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",1339}]}.
    {call,1,{f,493}}. % beam_dead_3/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,424},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{literal,#{}},{x,0}}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",1340}]}.
    {call,1,{f,493}}. % beam_dead_3/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,423},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{literal,#{k => true}},{x,0}}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",1342}]}.
    {call,1,{f,496}}. % beam_dead_4/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,422},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{literal,#{k => false}},{x,0}}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",1343}]}.
    {call,1,{f,496}}. % beam_dead_4/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,421},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{literal,#{}},{x,0}}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",1344}]}.
    {call,1,{f,496}}. % beam_dead_4/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,420},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{atom,not_a_map},{x,0}}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",1345}]}.
    {call,1,{f,496}}. % beam_dead_4/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{literal,#{k => true}},{x,0}}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",1347}]}.
    {call,1,{f,499}}. % beam_dead_5/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,419},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {move,{literal,#{k => false}},{x,0}}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",1348}]}.
    {call,1,{f,499}}. % beam_dead_5/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,418},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{literal,#{}},{x,0}}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",1349}]}.
    {call,1,{f,493}}. % beam_dead_3/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,417},[{tr,{x,0},{t_atom,[error,ok]}},{atom,error}]}.
    {move,{literal,#{other => value}},{x,1}}.
    {move,{atom,var},{x,0}}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",1353}]}.
    {call,2,{f,502}}. % map_usage/2
    {'%',{var_info,{x,0},
                   [{type,{t_map,{t_atom,[other,var]},
                                 {t_atom,[dead,live,value]}}}]}}.
    {test,is_eq_exact,
          {f,416},
          [{tr,{x,0},{t_map,{t_atom,[other,var]},{t_atom,[dead,live,value]}}},
           {literal,#{other => value,var => dead}}]}.
    {move,{literal,#{var => live}},{x,1}}.
    {move,{atom,var},{x,0}}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",1355}]}.
    {call,2,{f,502}}. % map_usage/2
    {'%',{var_info,{x,0},
                   [{type,{t_map,{t_atom,[other,var]},
                                 {t_atom,[dead,live,value]}}}]}}.
    {test,is_eq_exact,
          {f,415},
          [{tr,{x,0},{t_map,{t_atom,[other,var]},{t_atom,[dead,live,value]}}},
           {literal,#{var => live}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,5}.
    return.
  {label,415}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",1356}]}.
    {badmatch,{literal,#{var => live}}}.
  {label,416}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",1354}]}.
    {badmatch,{literal,#{other => value,var => dead}}}.
  {label,417}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",1349}]}.
    {badmatch,{atom,ok}}.
  {label,418}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",1348}]}.
    {badmatch,{atom,ok}}.
  {label,419}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",1347}]}.
    {badmatch,{atom,error}}.
  {label,420}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",1344}]}.
    {badmatch,{atom,ok}}.
  {label,421}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",1343}]}.
    {badmatch,{atom,ok}}.
  {label,422}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",1342}]}.
    {badmatch,{atom,error}}.
  {label,423}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",1340}]}.
    {badmatch,{atom,ok}}.
  {label,424}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",1339}]}.
    {badmatch,{atom,ok}}.
  {label,425}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",1338}]}.
    {badmatch,{atom,error}}.
  {label,426}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",1336}]}.
    {badmatch,{atom,ok}}.
  {label,427}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",1335}]}.
    {badmatch,{atom,ok}}.
  {label,428}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",1334}]}.
    {badmatch,{atom,ok}}.
  {label,429}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",1333}]}.
    {badmatch,{atom,error}}.
  {label,430}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",1331}]}.
    {badmatch,{atom,ok}}.
  {label,431}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",1330}]}.
    {badmatch,{atom,ok}}.
  {label,432}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",1329}]}.
    {badmatch,{atom,ok}}.
  {label,433}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",1328}]}.
    {badmatch,{atom,error}}.
  {label,434}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",1324}]}.
    {badmatch,{x,0}}.
  {label,435}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",1323}]}.
    {badmatch,{x,0}}.
  {label,436}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",1322}]}.
    {badmatch,{x,0}}.
  {label,437}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",1319}]}.
    {badmatch,{x,0}}.
  {label,438}.
    {line,[{scope,[6]},{location,"map_SUITE.erl",1316}]}.
    {badmatch,{atom,false}}.
  {label,439}.
    {line,[{scope,[6]},{location,"map_SUITE.erl",1313}]}.
    {badmatch,{x,0}}.
  {label,440}.
    {line,[{scope,"\b"},{location,"map_SUITE.erl",1311}]}.
    {badmatch,{x,0}}.
  {label,441}.
    {line,[{scope,"\n"},{location,"map_SUITE.erl",1310}]}.
    {badmatch,{x,0}}.
  {label,442}.
    {line,[{scope,"\n"},{location,"map_SUITE.erl",1305}]}.
    {badmatch,{atom,false}}.
  {label,443}.
    {line,[{scope,"\n"},{location,"map_SUITE.erl",1299}]}.
    {badmatch,{atom,false}}.
  {label,444}.
    {line,[{scope,"\n"},{location,"map_SUITE.erl",1292}]}.
    {badmatch,{atom,false}}.
  {label,445}.
    {line,[{scope,"\n"},{location,"map_SUITE.erl",1291}]}.
    {badmatch,{atom,false}}.
  {label,446}.
    {line,[{scope,"\n"},{location,"map_SUITE.erl",1286}]}.
    {badmatch,{atom,false}}.
  {label,447}.
    {line,[{scope,"\n"},{location,"map_SUITE.erl",1281}]}.
    {badmatch,{atom,false}}.
  {label,448}.
    {line,[{scope,"\n"},{location,"map_SUITE.erl",1277}]}.
    {badmatch,{atom,false}}.


{function, map_guard_empty, 0, 450}.
  {label,449}.
    {line,[{location,"map_SUITE.erl",1360}]}.
    {func_info,{atom,map_SUITE},{atom,map_guard_empty},0}.
  {label,450}.
    {move,{atom,true},{x,0}}.
    return.


{function, map_guard_empty_2, 0, 452}.
  {label,451}.
    {line,[{location,"map_SUITE.erl",1362}]}.
    {func_info,{atom,map_SUITE},{atom,map_guard_empty_2},0}.
  {label,452}.
    {move,{atom,true},{x,0}}.
    return.


{function, map_guard_head, 1, 454}.
  {label,453}.
    {line,[{location,"map_SUITE.erl",1364}]}.
    {func_info,{atom,map_SUITE},{atom,map_guard_head},1}.
  {label,454}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,nil,none,none,
                                   {t_map,{t_atom,[a]},{t_integer,{1,1}}}}}]}}.
    {bif,is_map,
         {f,0},
         [{tr,{x,0},
              {t_union,none,nil,none,none,
                       {t_map,{t_atom,[a]},{t_integer,{1,1}}}}}],
         {x,0}}.
    return.


{function, map_get_head, 1, 456}.
  {label,455}.
    {line,[{location,"map_SUITE.erl",1367}]}.
    {func_info,{atom,map_SUITE},{atom,map_get_head},1}.
  {label,456}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,nil,none,none,
                                   {t_map,{t_atom,[a]},{t_integer,{1,1}}}}}]}}.
    {bif,map_get,
         {f,457},
         [{atom,a},
          {tr,{x,0},
              {t_union,none,nil,none,none,
                       {t_map,{t_atom,[a]},{t_integer,{1,1}}}}}],
         {x,0}}.
    {move,{atom,true},{x,0}}.
    return.
  {label,457}.
    {move,{atom,false},{x,0}}.
    return.


{function, map_get_head_not, 1, 459}.
  {label,458}.
    {line,[{location,"map_SUITE.erl",1370}]}.
    {func_info,{atom,map_SUITE},{atom,map_get_head_not},1}.
  {label,459}.
    {'%',{var_info,{x,0},[{type,{t_map,{t_atom,[a]},{t_atom,[false,true]}}}]}}.
    {bif,map_get,
         {f,460},
         [{atom,a},{tr,{x,0},{t_map,{t_atom,[a]},{t_atom,[false,true]}}}],
         {x,0}}.
    {test,is_ne_exact,{f,460},[{x,0},{atom,true}]}.
    {move,{atom,true},{x,0}}.
    return.
  {label,460}.
    {move,{atom,false},{x,0}}.
    return.


{function, map_get_head_badmap1, 0, 462}.
  {label,461}.
    {line,[{location,"map_SUITE.erl",1373}]}.
    {func_info,{atom,map_SUITE},{atom,map_get_head_badmap1},0}.
  {label,462}.
    {move,{atom,b},{x,0}}.
    return.


{function, map_get_head_badmap2, 0, 464}.
  {label,463}.
    {line,[{location,"map_SUITE.erl",1376}]}.
    {func_info,{atom,map_SUITE},{atom,map_get_head_badmap2},0}.
  {label,464}.
    {move,{atom,b},{x,0}}.
    return.


{function, map_get_head_badmap3, 0, 466}.
  {label,465}.
    {line,[{location,"map_SUITE.erl",1379}]}.
    {func_info,{atom,map_SUITE},{atom,map_get_head_badmap3},0}.
  {label,466}.
    {move,{atom,b},{x,0}}.
    return.


{function, map_is_key_head, 1, 468}.
  {label,467}.
    {line,[{location,"map_SUITE.erl",1382}]}.
    {func_info,{atom,map_SUITE},{atom,map_is_key_head},1}.
  {label,468}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[not_a_map]},
                                   none,none,none,
                                   {t_map,{t_atom,[a]},{t_integer,{1,1}}}}}]}}.
    {bif,is_map_key,
         {f,469},
         [{atom,a},
          {tr,{x,0},
              {t_union,{t_atom,[not_a_map]},
                       none,none,none,
                       {t_map,{t_atom,[a]},{t_integer,{1,1}}}}}],
         {x,0}}.
    return.
  {label,469}.
    {move,{atom,false},{x,0}}.
    return.


{function, map_is_key_head_not, 1, 471}.
  {label,470}.
    {line,[{location,"map_SUITE.erl",1385}]}.
    {func_info,{atom,map_SUITE},{atom,map_is_key_head_not},1}.
  {label,471}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[not_a_map]},
                     none,none,none,
                     {t_map,{t_atom,[a,b]},{t_integer,{1,1}}}}}]}}.
    {bif,is_map_key,
         {f,472},
         [{atom,a},
          {tr,{x,0},
              {t_union,{t_atom,[not_a_map]},
                       none,none,none,
                       {t_map,{t_atom,[a,b]},{t_integer,{1,1}}}}}],
         {x,0}}.
    {test,is_ne_exact,{f,472},[{x,0},{atom,true}]}.
    {move,{atom,true},{x,0}}.
    return.
  {label,472}.
    {move,{atom,false},{x,0}}.
    return.


{function, map_guard_body, 1, 474}.
  {label,473}.
    {line,[{location,"map_SUITE.erl",1388}]}.
    {func_info,{atom,map_SUITE},{atom,map_guard_body},1}.
  {label,474}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,none,none,
                                   {t_tuple,0,true,#{}},
                                   {t_map,{t_atom,[a]},{t_integer,{1,1}}}}}]}}.
    {bif,is_map,
         {f,0},
         [{tr,{x,0},
              {t_union,none,none,none,
                       {t_tuple,0,true,#{}},
                       {t_map,{t_atom,[a]},{t_integer,{1,1}}}}}],
         {x,0}}.
    return.


{function, map_guard_pattern, 1, 476}.
  {label,475}.
    {line,[{location,"map_SUITE.erl",1390}]}.
    {func_info,{atom,map_SUITE},{atom,map_guard_pattern},1}.
  {label,476}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,
                     {t_cons,{t_integer,{105,116}},nil},
                     none,none,
                     {t_map,
                         {t_union,
                             {t_atom,[a]},
                             none,none,none,
                             {t_bitstring,16,false}},
                         {t_union,none,
                             {t_cons,{t_integer,{104,105}},nil},
                             {t_integer,{1,1}},
                             none,none}}}}]}}.
    {bif,is_map,
        {f,0},
        [{tr,{x,0},
             {t_union,none,
                 {t_cons,{t_integer,{105,116}},nil},
                 none,none,
                 {t_map,
                     {t_union,
                         {t_atom,[a]},
                         none,none,none,
                         {t_bitstring,16,false}},
                     {t_union,none,
                         {t_cons,{t_integer,{104,105}},nil},
                         {t_integer,{1,1}},
                         none,none}}}}],
        {x,0}}.
    return.


{function, map_guard_tautology, 0, 478}.
  {label,477}.
    {line,[{location,"map_SUITE.erl",1393}]}.
    {func_info,{atom,map_SUITE},{atom,map_guard_tautology},0}.
  {label,478}.
    {move,{atom,true},{x,0}}.
    return.


{function, map_guard_ill_map_size, 0, 480}.
  {label,479}.
    {line,[{location,"map_SUITE.erl",1395}]}.
    {func_info,{atom,map_SUITE},{atom,map_guard_ill_map_size},0}.
  {label,480}.
    {move,{atom,true},{x,0}}.
    return.


{function, map_field_check_sequence, 1, 482}.
  {label,481}.
    {line,[{location,"map_SUITE.erl",1397}]}.
    {func_info,{atom,map_SUITE},{atom,map_field_check_sequence},1}.
  {label,482}.
    {'%',{var_info,{x,0},[{type,{t_map,{t_atom,[a]},{t_integer,{1,1}}}}]}}.
    {test,has_map_fields,{f,483},{x,0},{list,[{atom,a}]}}.
    {bif,map_get,
         {f,483},
         [{atom,a},{tr,{x,0},{t_map,{t_atom,[a]},{t_integer,{1,1}}}}],
         {x,0}}.
    {move,{atom,true},{x,0}}.
    return.
  {label,483}.
    {move,{atom,false},{x,0}}.
    return.


{function, erl_699, 1, 485}.
  {label,484}.
    {line,[{location,"map_SUITE.erl",1403}]}.
    {func_info,{atom,map_SUITE},{atom,erl_699},1}.
  {label,485}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[not_a_map]},
                                   none,none,none,
                                   {t_map,{t_atom,[k]},{t_atom,[v]}}}}]}}.
    {line,[{location,"map_SUITE.erl",1405}]}.
    {bif,is_map_key,
         {f,0},
         [{atom,k},
          {tr,{x,0},
              {t_union,{t_atom,[not_a_map]},
                       none,none,none,
                       {t_map,{t_atom,[k]},{t_atom,[v]}}}}],
         {x,1}}.
    {bif,map_get,
         {f,0},
         [{atom,k},{tr,{x,0},{t_map,{t_atom,[k]},{t_atom,[v]}}}],
         {x,0}}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,1},{atom,v}]}}.
    return.


{function, beam_dead_1, 1, 487}.
  {label,486}.
    {line,[{location,"map_SUITE.erl",1407}]}.
    {func_info,{atom,map_SUITE},{atom,beam_dead_1},1}.
  {label,487}.
    {'%',{var_info,{x,0},
                   [{type,{t_map,{t_atom,[a,k]},{t_atom,[any,false,true]}}}]}}.
    {test,has_map_fields,{f,488},{x,0},{list,[{atom,a},{atom,k}]}}.
    {bif,map_get,
         {f,488},
         [{atom,k},
          {tr,{x,0},{t_map,{t_atom,[a,k]},{t_atom,[any,false,true]}}}],
         {x,0}}.
    {test,is_eq_exact,
          {f,488},
          [{tr,{x,0},{t_atom,[any,false,true]}},{atom,true}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,488}.
    {move,{atom,error},{x,0}}.
    return.


{function, beam_dead_2, 1, 490}.
  {label,489}.
    {line,[{location,"map_SUITE.erl",1412}]}.
    {func_info,{atom,map_SUITE},{atom,beam_dead_2},1}.
  {label,490}.
    {'%',{var_info,{x,0},
                   [{type,{t_map,{t_atom,[a,k]},{t_atom,[any,false,true]}}}]}}.
    {test,has_map_fields,{f,491},{x,0},{list,[{atom,a},{atom,k}]}}.
    {bif,map_get,
         {f,491},
         [{atom,k},
          {tr,{x,0},{t_map,{t_atom,[a,k]},{t_atom,[any,false,true]}}}],
         {x,0}}.
    {test,is_eq_exact,
          {f,491},
          [{tr,{x,0},{t_atom,[any,false,true]}},{atom,true}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,491}.
    {move,{atom,error},{x,0}}.
    return.


{function, beam_dead_3, 1, 493}.
  {label,492}.
    {line,[{location,"map_SUITE.erl",1420}]}.
    {func_info,{atom,map_SUITE},{atom,beam_dead_3},1}.
  {label,493}.
    {'%',{var_info,{x,0},[{type,{t_map,{t_atom,[k]},{t_atom,[false,true]}}}]}}.
    {test,has_map_fields,{f,494},{x,0},{list,[{atom,k}]}}.
    {bif,map_get,
         {f,494},
         [{atom,k},{tr,{x,0},{t_map,{t_atom,[k]},{t_atom,[false,true]}}}],
         {x,0}}.
    {test,is_eq_exact,{f,494},[{x,0},{atom,true}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,494}.
    {move,{atom,error},{x,0}}.
    return.


{function, beam_dead_4, 1, 496}.
  {label,495}.
    {line,[{location,"map_SUITE.erl",1428}]}.
    {func_info,{atom,map_SUITE},{atom,beam_dead_4},1}.
  {label,496}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,
                     {t_atom,[not_a_map]},
                     none,none,none,
                     {t_map,{t_atom,[k]},{t_atom,[false,true]}}}}]}}.
    {test,is_map,
          {f,497},
          [{tr,{x,0},
               {t_union,{t_atom,[not_a_map]},
                        none,none,none,
                        {t_map,{t_atom,[k]},{t_atom,[false,true]}}}}]}.
    {bif,map_get,
         {f,497},
         [{atom,k},{tr,{x,0},{t_map,{t_atom,[k]},{t_atom,[false,true]}}}],
         {x,0}}.
    {test,is_eq_exact,{f,497},[{x,0},{atom,true}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,497}.
    {move,{atom,error},{x,0}}.
    return.


{function, beam_dead_5, 1, 499}.
  {label,498}.
    {line,[{location,"map_SUITE.erl",1436}]}.
    {func_info,{atom,map_SUITE},{atom,beam_dead_5},1}.
  {label,499}.
    {'%',{var_info,{x,0},[{type,{t_map,{t_atom,[k]},{t_atom,[false,true]}}}]}}.
    {bif,map_get,
         {f,500},
         [{atom,k},{tr,{x,0},{t_map,{t_atom,[k]},{t_atom,[false,true]}}}],
         {x,0}}.
    {test,is_eq_exact,{f,500},[{x,0},{atom,true}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,500}.
    {move,{atom,error},{x,0}}.
    return.


{function, map_usage, 2, 502}.
  {label,501}.
    {line,[{location,"map_SUITE.erl",1442}]}.
    {func_info,{atom,map_SUITE},{atom,map_usage},2}.
  {label,502}.
    {'%',{var_info,{x,0},[{type,{t_atom,[var]}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_map,{t_atom,[other,var]},
                                 {t_atom,[live,value]}}}]}}.
    {test,has_map_fields,{f,503},{x,1},{list,[{atom,var}]}}.
    {move,{x,1},{x,0}}.
    return.
  {label,503}.
    {put_map_assoc,{f,0},{x,1},{x,0},2,{list,[{atom,var},{atom,dead}]}}.
    return.


{function, t_guard_sequence, 1, 505}.
  {label,504}.
    {line,[{location,"map_SUITE.erl",1449}]}.
    {func_info,{atom,map_SUITE},{atom,t_guard_sequence},1}.
  {label,505}.
    {test,is_list,{f,504},[{x,0}]}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{literal,"a"},{x,0}}.
    {line,[{location,"map_SUITE.erl",1450}]}.
    {call,1,{f,1107}}. % id/1
    {put_map_assoc,{f,0},
                   {literal,#{}},
                   {x,0},
                   1,
                   {list,[{atom,seq},{integer,1},{atom,val},{x,0}]}}.
    {call,1,{f,538}}. % map_guard_sequence_1/1
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{1 => {t_integer,{1,5}}}}}]}}.
    {test,is_eq_exact,
          {f,519},
          [{tr,{x,0},{t_tuple,2,true,#{1 => {t_integer,{1,5}}}}},
           {literal,{1,"a"}}]}.
    {move,{literal,"b"},{x,0}}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",1451}]}.
    {call,1,{f,1107}}. % id/1
    {put_map_assoc,{f,0},
                   {literal,#{}},
                   {x,0},
                   1,
                   {list,[{atom,seq},{integer,2},{atom,val},{x,0}]}}.
    {call,1,{f,538}}. % map_guard_sequence_1/1
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{1 => {t_integer,{1,5}}}}}]}}.
    {test,is_eq_exact,
          {f,518},
          [{tr,{x,0},{t_tuple,2,true,#{1 => {t_integer,{1,5}}}}},
           {literal,{2,"b"}}]}.
    {move,{literal,"c"},{x,0}}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",1452}]}.
    {call,1,{f,1107}}. % id/1
    {put_map_assoc,{f,0},
                   {literal,#{}},
                   {x,0},
                   1,
                   {list,[{atom,seq},{integer,3},{atom,val},{x,0}]}}.
    {call,1,{f,538}}. % map_guard_sequence_1/1
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{1 => {t_integer,{1,5}}}}}]}}.
    {test,is_eq_exact,
          {f,517},
          [{tr,{x,0},{t_tuple,2,true,#{1 => {t_integer,{1,5}}}}},
           {literal,{3,"c"}}]}.
    {move,{literal,"d"},{x,0}}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",1453}]}.
    {call,1,{f,1107}}. % id/1
    {put_map_assoc,{f,0},
                   {literal,#{}},
                   {x,0},
                   1,
                   {list,[{atom,seq},{integer,4},{atom,val},{x,0}]}}.
    {call,1,{f,538}}. % map_guard_sequence_1/1
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{1 => {t_integer,{1,5}}}}}]}}.
    {test,is_eq_exact,
          {f,516},
          [{tr,{x,0},{t_tuple,2,true,#{1 => {t_integer,{1,5}}}}},
           {literal,{4,"d"}}]}.
    {move,{literal,"e"},{x,0}}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",1454}]}.
    {call,1,{f,1107}}. % id/1
    {put_map_assoc,{f,0},
                   {literal,#{}},
                   {x,0},
                   1,
                   {list,[{atom,seq},{integer,5},{atom,val},{x,0}]}}.
    {call,1,{f,538}}. % map_guard_sequence_1/1
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{1 => {t_integer,{1,5}}}}}]}}.
    {test,is_eq_exact,
          {f,515},
          [{tr,{x,0},{t_tuple,2,true,#{1 => {t_integer,{1,5}}}}},
           {literal,{5,"e"}}]}.
    {move,{literal,#{a => 3}},{x,0}}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",1456}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,1}}.
    {call,1,{f,541}}. % map_guard_sequence_2/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_integer,{1,1}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{1,1}},2 => {t_map,any,any}}}},
                      {{2,{t_integer,{2,2}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{2,2}},2 => {t_map,any,any}}}},
                      {{3,{t_integer,{3,3}}},
                       {t_tuple,3,true,
                           #{1 => {t_integer,{3,3}},3 => {t_map,any,any}}}},
                      {{4,{t_integer,{4,4}}},
                       {t_tuple,4,true,
                           #{1 => {t_integer,{4,4}},4 => {t_map,any,any}}}},
                      {{4,{t_integer,{5,5}}},
                       {t_tuple,4,true,
                           #{1 => {t_integer,{5,5}},4 => {t_map,any,any}}}}],
                     none}}]}}.
    {test,test_arity,{f,514},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,514},[{tr,{x,1},{t_integer,{1,2}}},{integer,1}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,514},[{tr,{x,1},{t_map,any,any}},{y,1}]}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{literal,#{a => 4,b => 4}},{x,0}}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",1457}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,1}}.
    {call,1,{f,541}}. % map_guard_sequence_2/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_integer,{1,1}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{1,1}},2 => {t_map,any,any}}}},
                      {{2,{t_integer,{2,2}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{2,2}},2 => {t_map,any,any}}}},
                      {{3,{t_integer,{3,3}}},
                       {t_tuple,3,true,
                           #{1 => {t_integer,{3,3}},3 => {t_map,any,any}}}},
                      {{4,{t_integer,{4,4}}},
                       {t_tuple,4,true,
                           #{1 => {t_integer,{4,4}},4 => {t_map,any,any}}}},
                      {{4,{t_integer,{5,5}}},
                       {t_tuple,4,true,
                           #{1 => {t_integer,{5,5}},4 => {t_map,any,any}}}}],
                     none}}]}}.
    {test,test_arity,{f,513},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,513},[{tr,{x,1},{t_integer,{1,2}}},{integer,2}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,513},[{tr,{x,1},{t_map,any,any}},{y,1}]}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{literal,#{a => gg,b => 4}},{x,0}}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",1458}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,1}}.
    {call,1,{f,541}}. % map_guard_sequence_2/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_integer,{1,1}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{1,1}},2 => {t_map,any,any}}}},
                      {{2,{t_integer,{2,2}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{2,2}},2 => {t_map,any,any}}}},
                      {{3,{t_integer,{3,3}}},
                       {t_tuple,3,true,
                           #{1 => {t_integer,{3,3}},3 => {t_map,any,any}}}},
                      {{4,{t_integer,{4,4}}},
                       {t_tuple,4,true,
                           #{1 => {t_integer,{4,4}},4 => {t_map,any,any}}}},
                      {{4,{t_integer,{5,5}}},
                       {t_tuple,4,true,
                           #{1 => {t_integer,{5,5}},4 => {t_map,any,any}}}}],
                     none}}]}}.
    {test,test_arity,{f,512},[{x,0},3]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,512},[{x,1},{atom,gg}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,{f,512},[{tr,{x,1},{t_map,any,any}},{y,1}]}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{literal,#{a => sc,b => 3,c => sc2}},{x,0}}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",1459}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,1}}.
    {call,1,{f,541}}. % map_guard_sequence_2/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_integer,{1,1}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{1,1}},2 => {t_map,any,any}}}},
                      {{2,{t_integer,{2,2}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{2,2}},2 => {t_map,any,any}}}},
                      {{3,{t_integer,{3,3}}},
                       {t_tuple,3,true,
                           #{1 => {t_integer,{3,3}},3 => {t_map,any,any}}}},
                      {{4,{t_integer,{4,4}}},
                       {t_tuple,4,true,
                           #{1 => {t_integer,{4,4}},4 => {t_map,any,any}}}},
                      {{4,{t_integer,{5,5}}},
                       {t_tuple,4,true,
                           #{1 => {t_integer,{5,5}},4 => {t_map,any,any}}}}],
                     none}}]}}.
    {test,test_arity,{f,511},[{x,0},4]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,511},[{tr,{x,1},{t_integer,{4,5}}},{integer,4}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,511},[{x,1},{atom,sc}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,{f,511},[{x,1},{atom,sc}]}.
    {get_tuple_element,{x,0},3,{x,1}}.
    {test,is_eq_exact,{f,511},[{tr,{x,1},{t_map,any,any}},{y,1}]}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{literal,#{a => kk,b => other,c => sc2}},{x,0}}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",1460}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,1}}.
    {call,1,{f,541}}. % map_guard_sequence_2/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_integer,{1,1}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{1,1}},2 => {t_map,any,any}}}},
                      {{2,{t_integer,{2,2}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{2,2}},2 => {t_map,any,any}}}},
                      {{3,{t_integer,{3,3}}},
                       {t_tuple,3,true,
                           #{1 => {t_integer,{3,3}},3 => {t_map,any,any}}}},
                      {{4,{t_integer,{4,4}}},
                       {t_tuple,4,true,
                           #{1 => {t_integer,{4,4}},4 => {t_map,any,any}}}},
                      {{4,{t_integer,{5,5}}},
                       {t_tuple,4,true,
                           #{1 => {t_integer,{5,5}},4 => {t_map,any,any}}}}],
                     none}}]}}.
    {test,test_arity,{f,510},[{x,0},4]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,510},[{tr,{x,1},{t_integer,{4,5}}},{integer,5}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,510},[{x,1},{atom,kk}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,{f,510},[{x,1},{atom,kk}]}.
    {get_tuple_element,{x,0},3,{x,1}}.
    {test,is_eq_exact,{f,510},[{tr,{x,1},{t_map,any,any}},{y,1}]}.
    {'catch',{y,1},{f,506}}.
    {move,{literal,"e"},{x,0}}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",1463}]}.
    {call,1,{f,1107}}. % id/1
    {put_map_assoc,{f,0},
                   {literal,#{}},
                   {x,0},
                   1,
                   {list,[{atom,seq},{integer,6},{atom,val},{x,0}]}}.
    {call,1,{f,538}}. % map_guard_sequence_1/1
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{1 => {t_integer,{1,5}}}}}]}}.
  {label,506}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,509},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,509},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,0},{f,507}}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{literal,#{b => 5}},{x,0}}.
    {line,[{scope,[3,4]},{location,"map_SUITE.erl",1464}]}.
    {call,1,{f,541}}. % map_guard_sequence_2/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_integer,{1,1}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{1,1}},2 => {t_map,any,any}}}},
                      {{2,{t_integer,{2,2}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{2,2}},2 => {t_map,any,any}}}},
                      {{3,{t_integer,{3,3}}},
                       {t_tuple,3,true,
                           #{1 => {t_integer,{3,3}},3 => {t_map,any,any}}}},
                      {{4,{t_integer,{4,4}}},
                       {t_tuple,4,true,
                           #{1 => {t_integer,{4,4}},4 => {t_map,any,any}}}},
                      {{4,{t_integer,{5,5}}},
                       {t_tuple,4,true,
                           #{1 => {t_integer,{5,5}},4 => {t_map,any,any}}}}],
                     none}}]}}.
  {label,507}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,508},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,508},[{x,1},2,{atom,function_clause}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,508}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",1464}]}.
    {badmatch,{x,0}}.
  {label,509}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",1463}]}.
    {badmatch,{x,0}}.
  {label,510}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",1460}]}.
    {badmatch,{x,0}}.
  {label,511}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",1459}]}.
    {badmatch,{x,0}}.
  {label,512}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",1458}]}.
    {badmatch,{x,0}}.
  {label,513}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",1457}]}.
    {badmatch,{x,0}}.
  {label,514}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",1456}]}.
    {badmatch,{x,0}}.
  {label,515}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",1454}]}.
    {badmatch,{x,0}}.
  {label,516}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",1453}]}.
    {badmatch,{x,0}}.
  {label,517}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",1452}]}.
    {badmatch,{x,0}}.
  {label,518}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",1451}]}.
    {badmatch,{x,0}}.
  {label,519}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",1450}]}.
    {badmatch,{x,0}}.


{function, t_guard_sequence_large, 1, 521}.
  {label,520}.
    {line,[{location,"map_SUITE.erl",1467}]}.
    {func_info,{atom,map_SUITE},{atom,t_guard_sequence_large},1}.
  {label,521}.
    {test,is_list,{f,520},[{x,0}]}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{literal,#{10 => a0,11 => a1,12 => a2,13 => a3,14 => a4,15 => a5,
                     16 => a6,17 => a7,18 => a8,19 => a9,20 => b0,21 => b1,
                     22 => b2,23 => b3,24 => b4,25 => b5,26 => b6,27 => b7,
                     28 => b8,29 => b9,30 => "c0",31 => "c1",32 => "c2",
                     33 => "c3",34 => "c4",35 => "c5",36 => "c6",37 => "c7",
                     38 => "c8",39 => "c9",10.0 => fa0,11.0 => fa1,
                     12.0 => fa2,13.0 => fa3,14.0 => fa4,15.0 => fa5,
                     16.0 => fa6,17.0 => fa7,18.0 => fa8,19.0 => fa9,
                     20.0 => fb0,21.0 => fb1,22.0 => fb2,23.0 => fb3,
                     24.0 => fb4,25.0 => fb5,26.0 => fb6,27.0 => fb7,
                     28.0 => fb8,29.0 => fb9,30.0 => "fc0",31.0 => "fc1",
                     32.0 => "fc2",33.0 => "fc3",34.0 => "fc4",35.0 => "fc5",
                     36.0 => "fc6",37.0 => "fc7",38.0 => "fc8",39.0 => "fc9",
                     {["00",3]} => "10",
                     {["01",3]} => "11",
                     {["02",3]} => "12",
                     {["03",3]} => "13",
                     {["04",3]} => "14",
                     {["05",3]} => "15",
                     {["06",3]} => "16",
                     {["07",3]} => "17",
                     {["08",3]} => "18",
                     {["09",3]} => "19",
                     #{map => key,one => small} => "small map key 1",
                     #{map => key,third => small} => "small map key 3",
                     #{map => key,second => small} => "small map key 2",
                     #{10 => a0,11 => a1,12 => a2,13 => a3,14 => a4,15 => a5,
                       16 => a6,17 => a7,18 => a8,19 => a9,20 => b0,21 => b1,
                       22 => b2,23 => b3,24 => b4,25 => b5,26 => b6,27 => b7,
                       28 => b8,29 => b9,30 => "c0",31 => "c1",32 => "c2",
                       33 => "c3",34 => "c4",35 => "c5",36 => "c6",37 => "c7",
                       38 => "c8",39 => "c9",
                       {["00"]} => "10",
                       {["01"]} => "11",
                       {["02"]} => "12",
                       {["03"]} => "13",
                       {["04"]} => "14",
                       {["05"]} => "15",
                       {["06"]} => "16",
                       {["07"]} => "17",
                       {["08"]} => "18",
                       {["09"]} => "19",
                       "40" => "d0","41" => "d1","42" => "d2","43" => "d3",
                       "44" => "d4","45" => "d5","46" => "d6","47" => "d7",
                       "48" => "d8","49" => "d9",<<"50">> => "e0",
                       <<"51">> => "e1",<<"52">> => "e2",<<"53">> => "e3",
                       <<"54">> => "e4",<<"55">> => "e5",<<"56">> => "e6",
                       <<"57">> => "e7",<<"58">> => "e8",<<"59">> => "e9"} =>
                         "large map key 1",
                     #{10 => a0,11 => a1,12 => a2,13 => a3,14 => a4,15 => a5,
                       17 => a7,18 => a8,19 => a9,20 => b0,21 => b1,22 => b2,
                       23 => b3,24 => b4,25 => b5,27 => b7,28 => b8,29 => b9,
                       30 => "c0",31 => "c1",32 => "c2",33 => "c3",34 => "c4",
                       35 => "c5",37 => "c7",38 => "c8",39 => "c9",k16 => a6,
                       k26 => b6,k36 => "c6",
                       {["00"]} => "10",
                       {["01"]} => "11",
                       {["02"]} => "12",
                       {["03"]} => "13",
                       {["04"]} => "14",
                       {["05"]} => "15",
                       {["06"]} => "16",
                       {["07"]} => "17",
                       {["08"]} => "18",
                       {["09"]} => "19",
                       "40" => "d0","41" => "d1","42" => "d2","43" => "d3",
                       "44" => "d4","45" => "d5","46" => "d6","47" => "d7",
                       "48" => "d8","49" => "d9",<<"50">> => "e0",
                       <<"51">> => "e1",<<"52">> => "e2",<<"53">> => "e3",
                       <<"54">> => "e4",<<"55">> => "e5",<<"56">> => "e6",
                       <<"57">> => "e7",<<"58">> => "e8",<<"59">> => "e9"} =>
                         "large map key 2",
                     "40" => "d0","41" => "d1","42" => "d2","43" => "d3",
                     "44" => "d4","45" => "d5","46" => "d6","47" => "d7",
                     "48" => "d8","49" => "d9",<<"50">> => "e0",
                     <<"51">> => "e1",<<"52">> => "e2",<<"53">> => "e3",
                     <<"54">> => "e4",<<"55">> => "e5",<<"56">> => "e6",
                     <<"57">> => "e7",<<"58">> => "e8",<<"59">> => "e9"}},
          {x,0}}.
    {line,[{location,"map_SUITE.erl",1468}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{literal,"a"},{x,0}}.
    {line,[{location,"map_SUITE.erl",1520}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,524},[{y,0}]}.
    {put_map_assoc,{f,0},
                   {y,0},
                   {x,0},
                   1,
                   {list,[{atom,seq},{integer,1},{atom,val},{x,0}]}}.
    {call,1,{f,538}}. % map_guard_sequence_1/1
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{1 => {t_integer,{1,5}}}}}]}}.
    {test,is_eq_exact,
          {f,536},
          [{tr,{x,0},{t_tuple,2,true,#{1 => {t_integer,{1,5}}}}},
           {literal,{1,"a"}}]}.
    {move,{literal,"b"},{x,0}}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",1521}]}.
    {call,1,{f,1107}}. % id/1
    {put_map_assoc,{f,0},
                   {y,0},
                   {x,0},
                   1,
                   {list,[{atom,seq},{integer,2},{atom,val},{x,0}]}}.
    {call,1,{f,538}}. % map_guard_sequence_1/1
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{1 => {t_integer,{1,5}}}}}]}}.
    {test,is_eq_exact,
          {f,535},
          [{tr,{x,0},{t_tuple,2,true,#{1 => {t_integer,{1,5}}}}},
           {literal,{2,"b"}}]}.
    {move,{literal,"c"},{x,0}}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",1522}]}.
    {call,1,{f,1107}}. % id/1
    {put_map_assoc,{f,0},
                   {y,0},
                   {x,0},
                   1,
                   {list,[{atom,seq},{integer,3},{atom,val},{x,0}]}}.
    {call,1,{f,538}}. % map_guard_sequence_1/1
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{1 => {t_integer,{1,5}}}}}]}}.
    {test,is_eq_exact,
          {f,534},
          [{tr,{x,0},{t_tuple,2,true,#{1 => {t_integer,{1,5}}}}},
           {literal,{3,"c"}}]}.
    {move,{literal,"d"},{x,0}}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",1523}]}.
    {call,1,{f,1107}}. % id/1
    {put_map_assoc,{f,0},
                   {y,0},
                   {x,0},
                   1,
                   {list,[{atom,seq},{integer,4},{atom,val},{x,0}]}}.
    {call,1,{f,538}}. % map_guard_sequence_1/1
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{1 => {t_integer,{1,5}}}}}]}}.
    {test,is_eq_exact,
          {f,533},
          [{tr,{x,0},{t_tuple,2,true,#{1 => {t_integer,{1,5}}}}},
           {literal,{4,"d"}}]}.
    {move,{literal,"e"},{x,0}}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",1524}]}.
    {call,1,{f,1107}}. % id/1
    {put_map_assoc,{f,0},
                   {y,0},
                   {x,0},
                   1,
                   {list,[{atom,seq},{integer,5},{atom,val},{x,0}]}}.
    {call,1,{f,538}}. % map_guard_sequence_1/1
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{1 => {t_integer,{1,5}}}}}]}}.
    {test,is_eq_exact,
          {f,532},
          [{tr,{x,0},{t_tuple,2,true,#{1 => {t_integer,{1,5}}}}},
           {literal,{5,"e"}}]}.
    {put_map_assoc,{f,0},{y,0},{x,0},0,{list,[{atom,a},{integer,3}]}}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",1526}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,1}}.
    {call,1,{f,541}}. % map_guard_sequence_2/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_integer,{1,1}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{1,1}},2 => {t_map,any,any}}}},
                      {{2,{t_integer,{2,2}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{2,2}},2 => {t_map,any,any}}}},
                      {{3,{t_integer,{3,3}}},
                       {t_tuple,3,true,
                           #{1 => {t_integer,{3,3}},3 => {t_map,any,any}}}},
                      {{4,{t_integer,{4,4}}},
                       {t_tuple,4,true,
                           #{1 => {t_integer,{4,4}},4 => {t_map,any,any}}}},
                      {{4,{t_integer,{5,5}}},
                       {t_tuple,4,true,
                           #{1 => {t_integer,{5,5}},4 => {t_map,any,any}}}}],
                     none}}]}}.
    {test,test_arity,{f,531},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,531},[{tr,{x,1},{t_integer,{1,2}}},{integer,1}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,531},[{tr,{x,1},{t_map,any,any}},{y,1}]}.
    {put_map_assoc,{f,0},
                   {y,0},
                   {x,0},
                   0,
                   {list,[{atom,a},{integer,4},{atom,b},{integer,4}]}}.
    {init_yregs,{list,[{y,1}]}}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",1527}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,1}}.
    {call,1,{f,541}}. % map_guard_sequence_2/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_integer,{1,1}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{1,1}},2 => {t_map,any,any}}}},
                      {{2,{t_integer,{2,2}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{2,2}},2 => {t_map,any,any}}}},
                      {{3,{t_integer,{3,3}}},
                       {t_tuple,3,true,
                           #{1 => {t_integer,{3,3}},3 => {t_map,any,any}}}},
                      {{4,{t_integer,{4,4}}},
                       {t_tuple,4,true,
                           #{1 => {t_integer,{4,4}},4 => {t_map,any,any}}}},
                      {{4,{t_integer,{5,5}}},
                       {t_tuple,4,true,
                           #{1 => {t_integer,{5,5}},4 => {t_map,any,any}}}}],
                     none}}]}}.
    {test,test_arity,{f,530},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,530},[{tr,{x,1},{t_integer,{1,2}}},{integer,2}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,530},[{tr,{x,1},{t_map,any,any}},{y,1}]}.
    {put_map_assoc,{f,0},
                   {y,0},
                   {x,0},
                   0,
                   {list,[{atom,a},{atom,gg},{atom,b},{integer,4}]}}.
    {init_yregs,{list,[{y,1}]}}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",1528}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,1}}.
    {call,1,{f,541}}. % map_guard_sequence_2/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_integer,{1,1}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{1,1}},2 => {t_map,any,any}}}},
                      {{2,{t_integer,{2,2}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{2,2}},2 => {t_map,any,any}}}},
                      {{3,{t_integer,{3,3}}},
                       {t_tuple,3,true,
                           #{1 => {t_integer,{3,3}},3 => {t_map,any,any}}}},
                      {{4,{t_integer,{4,4}}},
                       {t_tuple,4,true,
                           #{1 => {t_integer,{4,4}},4 => {t_map,any,any}}}},
                      {{4,{t_integer,{5,5}}},
                       {t_tuple,4,true,
                           #{1 => {t_integer,{5,5}},4 => {t_map,any,any}}}}],
                     none}}]}}.
    {test,test_arity,{f,529},[{x,0},3]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,529},[{x,1},{atom,gg}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,{f,529},[{tr,{x,1},{t_map,any,any}},{y,1}]}.
    {put_map_assoc,{f,0},
                   {y,0},
                   {x,0},
                   0,
                   {list,[{atom,a},
                          {atom,sc},
                          {atom,b},
                          {integer,3},
                          {atom,c},
                          {atom,sc2}]}}.
    {init_yregs,{list,[{y,1}]}}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",1529}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,1}}.
    {call,1,{f,541}}. % map_guard_sequence_2/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_integer,{1,1}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{1,1}},2 => {t_map,any,any}}}},
                      {{2,{t_integer,{2,2}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{2,2}},2 => {t_map,any,any}}}},
                      {{3,{t_integer,{3,3}}},
                       {t_tuple,3,true,
                           #{1 => {t_integer,{3,3}},3 => {t_map,any,any}}}},
                      {{4,{t_integer,{4,4}}},
                       {t_tuple,4,true,
                           #{1 => {t_integer,{4,4}},4 => {t_map,any,any}}}},
                      {{4,{t_integer,{5,5}}},
                       {t_tuple,4,true,
                           #{1 => {t_integer,{5,5}},4 => {t_map,any,any}}}}],
                     none}}]}}.
    {test,test_arity,{f,528},[{x,0},4]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,528},[{tr,{x,1},{t_integer,{4,5}}},{integer,4}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,528},[{x,1},{atom,sc}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,{f,528},[{x,1},{atom,sc}]}.
    {get_tuple_element,{x,0},3,{x,1}}.
    {test,is_eq_exact,{f,528},[{tr,{x,1},{t_map,any,any}},{y,1}]}.
    {put_map_assoc,{f,0},
                   {y,0},
                   {x,0},
                   0,
                   {list,[{atom,a},
                          {atom,kk},
                          {atom,b},
                          {atom,other},
                          {atom,c},
                          {atom,sc2}]}}.
    {init_yregs,{list,[{y,1}]}}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",1530}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,1}}.
    {call,1,{f,541}}. % map_guard_sequence_2/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_integer,{1,1}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{1,1}},2 => {t_map,any,any}}}},
                      {{2,{t_integer,{2,2}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{2,2}},2 => {t_map,any,any}}}},
                      {{3,{t_integer,{3,3}}},
                       {t_tuple,3,true,
                           #{1 => {t_integer,{3,3}},3 => {t_map,any,any}}}},
                      {{4,{t_integer,{4,4}}},
                       {t_tuple,4,true,
                           #{1 => {t_integer,{4,4}},4 => {t_map,any,any}}}},
                      {{4,{t_integer,{5,5}}},
                       {t_tuple,4,true,
                           #{1 => {t_integer,{5,5}},4 => {t_map,any,any}}}}],
                     none}}]}}.
    {test,test_arity,{f,527},[{x,0},4]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,527},[{tr,{x,1},{t_integer,{4,5}}},{integer,5}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,527},[{x,1},{atom,kk}]}.
    {get_tuple_element,{x,0},2,{x,1}}.
    {test,is_eq_exact,{f,527},[{x,1},{atom,kk}]}.
    {get_tuple_element,{x,0},3,{x,1}}.
    {test,is_eq_exact,{f,527},[{tr,{x,1},{t_map,any,any}},{y,1}]}.
    {'catch',{y,1},{f,522}}.
    {move,{literal,"e"},{x,0}}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",1532}]}.
    {call,1,{f,1107}}. % id/1
    {put_map_assoc,{f,0},
                   {y,0},
                   {x,0},
                   1,
                   {list,[{atom,seq},{integer,6},{atom,val},{x,0}]}}.
    {call,1,{f,538}}. % map_guard_sequence_1/1
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{1 => {t_integer,{1,5}}}}}]}}.
  {label,522}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,526},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,526},[{x,1},2,{atom,function_clause}]}.
    {put_map_assoc,{f,0},{y,0},{x,0},0,{list,[{atom,b},{integer,5}]}}.
    {'catch',{y,0},{f,523}}.
    {init_yregs,{list,[{y,1}]}}.
    {line,[{scope,[3,4]},{location,"map_SUITE.erl",1533}]}.
    {call,1,{f,541}}. % map_guard_sequence_2/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_integer,{1,1}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{1,1}},2 => {t_map,any,any}}}},
                      {{2,{t_integer,{2,2}}},
                       {t_tuple,2,true,
                           #{1 => {t_integer,{2,2}},2 => {t_map,any,any}}}},
                      {{3,{t_integer,{3,3}}},
                       {t_tuple,3,true,
                           #{1 => {t_integer,{3,3}},3 => {t_map,any,any}}}},
                      {{4,{t_integer,{4,4}}},
                       {t_tuple,4,true,
                           #{1 => {t_integer,{4,4}},4 => {t_map,any,any}}}},
                      {{4,{t_integer,{5,5}}},
                       {t_tuple,4,true,
                           #{1 => {t_integer,{5,5}},4 => {t_map,any,any}}}}],
                     none}}]}}.
  {label,523}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,525},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,525},[{x,1},2,{atom,function_clause}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,524}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,badmap},{y,0}]}}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",1520}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},2}.
  {label,525}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",1533}]}.
    {badmatch,{x,0}}.
  {label,526}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",1532}]}.
    {badmatch,{x,0}}.
  {label,527}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",1530}]}.
    {badmatch,{x,0}}.
  {label,528}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",1529}]}.
    {badmatch,{x,0}}.
  {label,529}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",1528}]}.
    {badmatch,{x,0}}.
  {label,530}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",1527}]}.
    {badmatch,{x,0}}.
  {label,531}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",1526}]}.
    {badmatch,{x,0}}.
  {label,532}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",1524}]}.
    {badmatch,{x,0}}.
  {label,533}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",1523}]}.
    {badmatch,{x,0}}.
  {label,534}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",1522}]}.
    {badmatch,{x,0}}.
  {label,535}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",1521}]}.
    {badmatch,{x,0}}.
  {label,536}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",1520}]}.
    {badmatch,{x,0}}.


{function, map_guard_sequence_1, 1, 538}.
  {label,537}.
    {line,[{location,"map_SUITE.erl",1536}]}.
    {func_info,{atom,map_SUITE},{atom,map_guard_sequence_1},1}.
  {label,538}.
    {'%',{var_info,{x,0},[{type,{t_map,any,any}}]}}.
    {get_map_elements,{f,537},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{atom,val},{x,2},{atom,seq},{x,1}]}}.
    {select_val,{x,1},
                {f,537},
                {list,[{integer,1},
                       {f,539},
                       {integer,2},
                       {f,539},
                       {integer,3},
                       {f,539},
                       {integer,4},
                       {f,539},
                       {integer,5},
                       {f,539}]}}.
  {label,539}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{x,1},{x,2}]}}.
    return.


{function, map_guard_sequence_2, 1, 541}.
  {label,540}.
    {line,[{location,"map_SUITE.erl",1542}]}.
    {func_info,{atom,map_SUITE},{atom,map_guard_sequence_2},1}.
  {label,541}.
    {test,is_map,{f,540},[{x,0}]}.
    {get_map_elements,{f,540},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{atom,a},{x,1}]}}.
    {select_val,{x,1},
                {f,544},
                {list,[{integer,3},{f,543},{integer,4},{f,542}]}}.
  {label,542}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{integer,2},{x,0}]}}.
    return.
  {label,543}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{integer,1},{x,0}]}}.
    return.
  {label,544}.
    {get_map_elements,{f,547},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{atom,b},{x,2}]}}.
    {select_val,{x,2},
                {f,547},
                {list,[{integer,3},{f,546},{integer,4},{f,545}]}}.
  {label,545}.
    {test_heap,4,2}.
    {put_tuple2,{x,0},{list,[{integer,3},{x,1},{x,0}]}}.
    return.
  {label,546}.
    {test_heap,5,2}.
    {put_tuple2,{x,0},{list,[{integer,4},{x,1},{x,1},{x,0}]}}.
    return.
  {label,547}.
    {test_heap,5,2}.
    {put_tuple2,{x,0},{list,[{integer,5},{x,1},{x,1},{x,0}]}}.
    return.


{function, t_guard_update, 1, 549}.
  {label,548}.
    {line,[{location,"map_SUITE.erl",1549}]}.
    {func_info,{atom,map_SUITE},{atom,t_guard_update},1}.
  {label,549}.
    {test,is_list,{f,548},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,#{}},{x,1}}.
    {move,{literal,#{}},{x,0}}.
    {line,[{location,"map_SUITE.erl",1550}]}.
    {call,2,{f,561}}. % map_guard_update/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,first,second,third]}}]}}.
    {test,is_eq_exact,
          {f,553},
          [{tr,{x,0},{t_atom,[error,first,second,third]}},{atom,error}]}.
    {move,{literal,#{x => first}},{x,1}}.
    {move,{literal,#{}},{x,0}}.
    {line,[{location,"map_SUITE.erl",1551}]}.
    {call,2,{f,561}}. % map_guard_update/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,first,second,third]}}]}}.
    {test,is_eq_exact,
          {f,552},
          [{tr,{x,0},{t_atom,[error,first,second,third]}},{atom,first}]}.
    {move,{literal,#{x => second,y => old}},{x,1}}.
    {move,{literal,#{y => old}},{x,0}}.
    {line,[{location,"map_SUITE.erl",1552}]}.
    {call,2,{f,561}}. % map_guard_update/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,first,second,third]}}]}}.
    {test,is_eq_exact,
          {f,551},
          [{tr,{x,0},{t_atom,[error,first,second,third]}},{atom,second}]}.
    {move,{literal,#{x => third,y => old}},{x,1}}.
    {move,{literal,#{x => old,y => old}},{x,0}}.
    {line,[{location,"map_SUITE.erl",1553}]}.
    {call,2,{f,561}}. % map_guard_update/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,first,second,third]}}]}}.
    {test,is_eq_exact,
          {f,550},
          [{tr,{x,0},{t_atom,[error,first,second,third]}},{atom,third}]}.
    {call_last,0,{f,566},0}. % bad_map_guard_update/0
  {label,550}.
    {badmatch,{x,0}}.
  {label,551}.
    {line,[{location,"map_SUITE.erl",1552}]}.
    {badmatch,{x,0}}.
  {label,552}.
    {line,[{location,"map_SUITE.erl",1551}]}.
    {badmatch,{x,0}}.
  {label,553}.
    {line,[{location,"map_SUITE.erl",1550}]}.
    {badmatch,{x,0}}.


{function, t_guard_update_large, 1, 555}.
  {label,554}.
    {line,[{location,"map_SUITE.erl",1557}]}.
    {func_info,{atom,map_SUITE},{atom,t_guard_update_large},1}.
  {label,555}.
    {test,is_list,{f,554},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,#{70 => a0,71 => a1,72 => a2,73 => a3,74 => a4,75 => a5,
                     76 => a6,77 => a7,78 => a8,79 => a9,80 => b0,81 => b1,
                     82 => b2,83 => b3,84 => b4,85 => b5,86 => b6,87 => b7,
                     88 => b8,89 => b9,90 => "c0",91 => "c1",92 => "c2",
                     93 => "c3",94 => "c4",95 => "c5",96 => "c6",97 => "c7",
                     98 => "c8",99 => "c9",70.0 => fa0,71.0 => fa1,
                     72.0 => fa2,73.0 => fa3,74.0 => fa4,75.0 => fa5,
                     76.0 => fa6,77.0 => fa7,78.0 => fa8,79.0 => fa9,
                     80.0 => fb0,81.0 => fb1,82.0 => fb2,83.0 => fb3,
                     84.0 => fb4,85.0 => fb5,86.0 => fb6,87.0 => fb7,
                     88.0 => fb8,89.0 => fb9,90.0 => "fc0",91.0 => "fc1",
                     92.0 => "fc2",93.0 => "fc3",94.0 => "fc4",95.0 => "fc5",
                     96.0 => "fc6",97.0 => "fc7",98.0 => "fc8",99.0 => "fc9",
                     {["00",3]} => "10",
                     {["01",3]} => "11",
                     {["02",3]} => "12",
                     {["03",3]} => "13",
                     {["04",3]} => "14",
                     {["05",3]} => "15",
                     {["06",3]} => "16",
                     {["07",3]} => "17",
                     {["08",3]} => "18",
                     {["09",3]} => "19",
                     #{map => key,one => small} => "small map key 1",
                     #{map => key,third => small} => "small map key 3",
                     #{map => key,second => small} => "small map key 2",
                     #{10 => a0,11 => a1,12 => a2,13 => a3,14 => a4,15 => a5,
                       16 => a6,17 => a7,18 => a8,19 => a9,20 => b0,21 => b1,
                       22 => b2,23 => b3,24 => b4,25 => b5,26 => b6,27 => b7,
                       28 => b8,29 => b9,30 => "c0",31 => "c1",32 => "c2",
                       33 => "c3",34 => "c4",35 => "c5",36 => "c6",37 => "c7",
                       38 => "c8",39 => "c9",
                       {["00"]} => "10",
                       {["01"]} => "11",
                       {["02"]} => "12",
                       {["03"]} => "13",
                       {["04"]} => "14",
                       {["05"]} => "15",
                       {["06"]} => "16",
                       {["07"]} => "17",
                       {["08"]} => "18",
                       {["09"]} => "19",
                       "40" => "d0","41" => "d1","42" => "d2","43" => "d3",
                       "44" => "d4","45" => "d5","46" => "d6","47" => "d7",
                       "48" => "d8","49" => "d9",<<"50">> => "e0",
                       <<"51">> => "e1",<<"52">> => "e2",<<"53">> => "e3",
                       <<"54">> => "e4",<<"55">> => "e5",<<"56">> => "e6",
                       <<"57">> => "e7",<<"58">> => "e8",<<"59">> => "e9"} =>
                         "large map key 1",
                     #{10 => a0,11 => a1,12 => a2,13 => a3,14 => a4,15 => a5,
                       17 => a7,18 => a8,19 => a9,20 => b0,21 => b1,22 => b2,
                       23 => b3,24 => b4,25 => b5,27 => b7,28 => b8,29 => b9,
                       30 => "c0",31 => "c1",32 => "c2",33 => "c3",34 => "c4",
                       35 => "c5",37 => "c7",38 => "c8",39 => "c9",k16 => a6,
                       k26 => b6,k36 => "c6",
                       {["00"]} => "10",
                       {["01"]} => "11",
                       {["02"]} => "12",
                       {["03"]} => "13",
                       {["04"]} => "14",
                       {["05"]} => "15",
                       {["06"]} => "16",
                       {["07"]} => "17",
                       {["08"]} => "18",
                       {["09"]} => "19",
                       "40" => "d0","41" => "d1","42" => "d2","43" => "d3",
                       "44" => "d4","45" => "d5","46" => "d6","47" => "d7",
                       "48" => "d8","49" => "d9",<<"50">> => "e0",
                       <<"51">> => "e1",<<"52">> => "e2",<<"53">> => "e3",
                       <<"54">> => "e4",<<"55">> => "e5",<<"56">> => "e6",
                       <<"57">> => "e7",<<"58">> => "e8",<<"59">> => "e9"} =>
                         "large map key 2",
                     "40" => "d0","41" => "d1","42" => "d2","43" => "d3",
                     "44" => "d4","45" => "d5","46" => "d6","47" => "d7",
                     "48" => "d8","49" => "d9",<<"50">> => "e0",
                     <<"51">> => "e1",<<"52">> => "e2",<<"53">> => "e3",
                     <<"54">> => "e4",<<"55">> => "e5",<<"56">> => "e6",
                     <<"57">> => "e7",<<"58">> => "e8",<<"59">> => "e9"}},
          {x,0}}.
    {line,[{location,"map_SUITE.erl",1558}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,0}}.
    {test,is_map,{f,556},[{x,0}]}.
    {move,{x,0},{x,1}}.
    {line,[{location,"map_SUITE.erl",1611}]}.
    {call,2,{f,561}}. % map_guard_update/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,first,second,third]}}]}}.
    {test,is_eq_exact,
          {f,559},
          [{tr,{x,0},{t_atom,[error,first,second,third]}},{atom,error}]}.
    {put_map_assoc,{f,0},{y,0},{x,1},0,{list,[{atom,x},{atom,first}]}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"map_SUITE.erl",1612}]}.
    {call,2,{f,561}}. % map_guard_update/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,first,second,third]}}]}}.
    {test,is_eq_exact,
          {f,558},
          [{tr,{x,0},{t_atom,[error,first,second,third]}},{atom,first}]}.
    {put_map_assoc,{f,0},{y,0},{x,0},0,{list,[{atom,y},{atom,old}]}}.
    {put_map_assoc,{f,0},
                   {y,0},
                   {x,1},
                   1,
                   {list,[{atom,x},{atom,second},{atom,y},{atom,old}]}}.
    {trim,1,0}.
    {line,[{location,"map_SUITE.erl",1613}]}.
    {call,2,{f,561}}. % map_guard_update/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,first,second,third]}}]}}.
    {test,is_eq_exact,
          {f,557},
          [{tr,{x,0},{t_atom,[error,first,second,third]}},{atom,second}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,556}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,badmap},{y,0}]}}.
    {line,[{location,"map_SUITE.erl",1611}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},1}.
  {label,557}.
    {line,[{location,"map_SUITE.erl",1613}]}.
    {badmatch,{x,0}}.
  {label,558}.
    {line,[{location,"map_SUITE.erl",1612}]}.
    {badmatch,{x,0}}.
  {label,559}.
    {line,[{location,"map_SUITE.erl",1611}]}.
    {badmatch,{x,0}}.


{function, map_guard_update, 2, 561}.
  {label,560}.
    {line,[{location,"map_SUITE.erl",1616}]}.
    {func_info,{atom,map_SUITE},{atom,map_guard_update},2}.
  {label,561}.
    {'%',{var_info,{x,0},[{type,{t_map,any,any}}]}}.
    {'%',{var_info,{x,1},[{type,{t_map,any,any}}]}}.
    {put_map_assoc,{f,0},{x,0},{x,2},2,{list,[{atom,x},{atom,first}]}}.
    {test,is_eq_exact,
          {f,562},
          [{tr,{x,2},{t_map,any,any}},{tr,{x,1},{t_map,any,any}}]}.
    {move,{atom,first},{x,0}}.
    return.
  {label,562}.
    {put_map_assoc,{f,0},{x,0},{x,2},2,{list,[{atom,x},{atom,second}]}}.
    {test,is_eq_exact,
          {f,563},
          [{tr,{x,2},{t_map,any,any}},{tr,{x,1},{t_map,any,any}}]}.
    {move,{atom,second},{x,0}}.
    return.
  {label,563}.
    {line,[{location,"map_SUITE.erl",1618}]}.
    {put_map_exact,{f,564},{x,0},{x,0},2,{list,[{atom,x},{atom,third}]}}.
    {test,is_eq_exact,
          {f,564},
          [{tr,{x,0},{t_map,any,any}},{tr,{x,1},{t_map,any,any}}]}.
    {move,{atom,third},{x,0}}.
    return.
  {label,564}.
    {move,{atom,error},{x,0}}.
    return.


{function, bad_map_guard_update, 0, 566}.
  {label,565}.
    {line,[{location,"map_SUITE.erl",1621}]}.
    {func_info,{atom,map_SUITE},{atom,bad_map_guard_update},0}.
  {label,566}.
    {allocate_heap,0,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,574},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,none}]}}.
    {line,[{location,"map_SUITE.erl",1622}]}.
    {call,1,{f,568}}. % do_bad_map_guard_update/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,576},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,none}]}}.
    {call_last,1,{f,568},0}. % do_bad_map_guard_update/1


{function, do_bad_map_guard_update, 1, 568}.
  {label,567}.
    {line,[{location,"map_SUITE.erl",1626}]}.
    {func_info,{atom,map_SUITE},{atom,do_bad_map_guard_update},1}.
  {label,568}.
    {'%',{var_info,{x,0},[{type,{t_fun,1,any,none}}]}}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{literal,#{}},{x,1}}.
    {line,[{location,"map_SUITE.erl",1627}]}.
    {call,2,{f,570}}. % do_bad_map_guard_update_1/2
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,#{true => 1}},{x,1}}.
    {move,{y,0},{x,0}}.
    {call_last,2,{f,570},1}. % do_bad_map_guard_update_1/2


{function, do_bad_map_guard_update_1, 2, 570}.
  {label,569}.
    {line,[{location,"map_SUITE.erl",1631}]}.
    {func_info,{atom,map_SUITE},{atom,do_bad_map_guard_update_1},2}.
  {label,570}.
    {'%',{var_info,{x,0},[{type,{t_fun,1,any,none}}]}}.
    {'%',{var_info,{x,1},[{type,{t_map,{t_atom,[true]},{t_integer,{1,1}}}}]}}.
    {allocate,1,2}.
    {'catch',{y,0},{f,571}}.
    {swap,{x,0},{x,1}}.
    {line,[{location,"map_SUITE.erl",1635}]}.
    {call_fun2,{atom,safe},1,{tr,{x,1},{t_fun,1,any,none}}}.
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,571}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,572},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,572},[{x,1},2,{atom,function_clause}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,572}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",1635}]}.
    {badmatch,{x,0}}.


{function, burns, 1, 574}.
  {label,573}.
    {line,[{location,"map_SUITE.erl",1638}]}.
    {func_info,{atom,map_SUITE},{atom,burns},1}.
  {label,574}.
    {jump,{f,573}}.


{function, turns, 1, 576}.
  {label,575}.
    {line,[{location,"map_SUITE.erl",1641}]}.
    {func_info,{atom,map_SUITE},{atom,turns},1}.
  {label,576}.
    {jump,{f,575}}.


{function, t_guard_receive, 1, 578}.
  {label,577}.
    {line,[{location,"map_SUITE.erl",1644}]}.
    {func_info,{atom,map_SUITE},{atom,t_guard_receive},1}.
  {label,578}.
    {test,is_list,{f,577},[{x,0}]}.
    {allocate_heap,3,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {make_fun3,{f,1257},0,0,{x,0},{list,[]}}.
    {line,[{location,"map_SUITE.erl",1646}]}.
    {call_ext,1,{extfunc,erlang,spawn_link,1}}.
    {move,{x,0},{y,2}}.
    {move,{literal,#{id => 0,in => {36893488147419103232,3},op => sub}},{x,1}}.
    {line,[{location,"map_SUITE.erl",1652}]}.
    {call,2,{f,607}}. % call/2
    {move,{x,0},{y,1}}.
    {test,is_map,{f,588},[{x,0}]}.
    {get_map_elements,{f,588},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{atom,id},{x,0}]}}.
    {get_map_elements,{f,588},
                      {tr,{y,1},{t_map,any,any}},
                      {list,[{atom,res},{x,1}]}}.
    {test,is_eq_exact,{f,588},[{x,0},{integer,1}]}.
    {test,is_eq_exact,{f,588},[{x,1},{integer,36893488147419103229}]}.
    {put_map_assoc,{f,0},
                   {y,1},
                   {x,1},
                   0,
                   {list,[{atom,in},{literal,{53,2}},{atom,op},{atom,idiv}]}}.
    {move,{y,2},{x,0}}.
    {line,[{location,"map_SUITE.erl",1653}]}.
    {call,2,{f,607}}. % call/2
    {test,is_map,{f,587},[{x,0}]}.
    {get_map_elements,{f,587},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{atom,res},{x,2},{atom,id},{x,1}]}}.
    {test,is_eq_exact,{f,587},[{x,1},{integer,2}]}.
    {test,is_eq_exact,{f,587},[{x,2},{integer,26}]}.
    {put_map_assoc,{f,0},
                   {x,0},
                   {x,1},
                   1,
                   {list,[{atom,in},{literal,{26,32}},{atom,op},{atom,imul}]}}.
    {move,{y,2},{x,0}}.
    {line,[{location,"map_SUITE.erl",1654}]}.
    {call,2,{f,607}}. % call/2
    {test,is_map,{f,586},[{x,0}]}.
    {get_map_elements,{f,586},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{atom,res},{x,2},{atom,id},{x,1}]}}.
    {test,is_eq_exact,{f,586},[{x,1},{integer,3}]}.
    {test,is_eq_exact,{f,586},[{x,2},{integer,832}]}.
    {put_map_assoc,{f,0},
                   {x,0},
                   {x,1},
                   1,
                   {list,[{atom,in},{literal,{1,3}},{atom,op},{atom,add}]}}.
    {move,{y,2},{x,0}}.
    {line,[{location,"map_SUITE.erl",1655}]}.
    {call,2,{f,607}}. % call/2
    {move,{x,0},{y,0}}.
    {test,is_map,{f,585},[{x,0}]}.
    {get_map_elements,{f,585},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{atom,id},{x,0}]}}.
    {get_map_elements,{f,585},
                      {tr,{y,0},{t_map,any,any}},
                      {list,[{atom,res},{x,1}]}}.
    {test,is_eq_exact,{f,585},[{x,0},{integer,4}]}.
    {test,is_eq_exact,{f,585},[{x,1},{integer,4}]}.
    {put_map_assoc,{f,0},
                   {y,0},
                   {x,1},
                   0,
                   {list,[{atom,in},
                          {literal,{36893488147419103232,3}},
                          {atom,op},
                          {atom,sub}]}}.
    {move,{y,2},{x,0}}.
    {line,[{location,"map_SUITE.erl",1656}]}.
    {call,2,{f,607}}. % call/2
    {test,is_map,{f,584},[{x,0}]}.
    {get_map_elements,{f,584},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{atom,res},{x,2},{atom,id},{x,1}]}}.
    {test,is_eq_exact,{f,584},[{x,1},{integer,5}]}.
    {test,is_eq_exact,{f,584},[{x,2},{integer,36893488147419103229}]}.
    {put_map_assoc,{f,0},
                   {x,0},
                   {x,1},
                   1,
                   {list,[{atom,in},
                          {literal,{<<"some text">>,<<"was appended">>}},
                          {atom,op},
                          {literal,"append"}]}}.
    {move,{y,2},{x,0}}.
    {line,[{location,"map_SUITE.erl",1657}]}.
    {call,2,{f,607}}. % call/2
    {test,is_map,{f,583},[{x,0}]}.
    {get_map_elements,{f,583},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{atom,res},{x,2},{atom,id},{x,1}]}}.
    {test,is_eq_exact,{f,583},[{x,1},{integer,6}]}.
    {test,is_eq_exact,{f,583},[{x,2},{literal,<<"some textwas appended">>}]}.
    {put_map_assoc,{f,0},
                   {x,0},
                   {x,1},
                   1,
                   {list,[{atom,in},{literal,{1,3}},{atom,op},{atom,add}]}}.
    {move,{y,2},{x,0}}.
    {line,[{location,"map_SUITE.erl",1658}]}.
    {call,2,{f,607}}. % call/2
    {test,is_map,{f,582},[{x,0}]}.
    {get_map_elements,{f,582},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{atom,res},{x,2},{atom,id},{x,1}]}}.
    {test,is_eq_exact,{f,582},[{x,1},{integer,7}]}.
    {test,is_eq_exact,{f,582},[{x,2},{integer,4}]}.
    {put_map_assoc,{f,0},
                   {y,1},
                   {x,1},
                   0,
                   {list,[{atom,in},
                          {literal,{<<"some text">>,<<"was appended">>}},
                          {atom,op},
                          {literal,"append"}]}}.
    {move,{y,0},{y,1}}.
    {trim,1,2}.
    {move,{y,1},{x,0}}.
    {line,[{location,"map_SUITE.erl",1662}]}.
    {call,2,{f,607}}. % call/2
    {test,is_map,{f,581},[{x,0}]}.
    {get_map_elements,{f,581},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{atom,res},{x,2},{atom,id},{x,1}]}}.
    {test,is_eq_exact,{f,581},[{x,1},{integer,2}]}.
    {test,is_eq_exact,{f,581},[{x,2},{literal,<<"some textwas appended">>}]}.
    {put_map_assoc,{f,0},
                   {y,0},
                   {x,1},
                   0,
                   {list,[{atom,in},{literal,{33,66}},{atom,op},{atom,add}]}}.
    {trim,1,1}.
    {move,{y,0},{x,0}}.
    {line,[{location,"map_SUITE.erl",1663}]}.
    {call,2,{f,607}}. % call/2
    {test,is_map,{f,580},[{x,0}]}.
    {get_map_elements,{f,580},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{atom,res},{x,2},{atom,id},{x,1}]}}.
    {test,is_eq_exact,{f,580},[{x,1},{integer,5}]}.
    {test,is_eq_exact,{f,580},[{x,2},{integer,99}]}.
    {move,{atom,done},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"map_SUITE.erl",1666}]}.
    {call,2,{f,607}}. % call/2
    {test,is_eq_exact,{f,579},[{x,0},{atom,done}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,579}.
    {badmatch,{x,0}}.
  {label,580}.
    {line,[{location,"map_SUITE.erl",1663}]}.
    {badmatch,{x,0}}.
  {label,581}.
    {line,[{location,"map_SUITE.erl",1662}]}.
    {badmatch,{x,0}}.
  {label,582}.
    {line,[{location,"map_SUITE.erl",1658}]}.
    {badmatch,{x,0}}.
  {label,583}.
    {line,[{location,"map_SUITE.erl",1657}]}.
    {badmatch,{x,0}}.
  {label,584}.
    {line,[{location,"map_SUITE.erl",1656}]}.
    {badmatch,{x,0}}.
  {label,585}.
    {line,[{location,"map_SUITE.erl",1655}]}.
    {badmatch,{y,0}}.
  {label,586}.
    {line,[{location,"map_SUITE.erl",1654}]}.
    {badmatch,{x,0}}.
  {label,587}.
    {line,[{location,"map_SUITE.erl",1653}]}.
    {badmatch,{x,0}}.
  {label,588}.
    {line,[{location,"map_SUITE.erl",1652}]}.
    {badmatch,{y,1}}.


{function, t_guard_receive_large, 1, 590}.
  {label,589}.
    {line,[{location,"map_SUITE.erl",1671}]}.
    {func_info,{atom,map_SUITE},{atom,t_guard_receive_large},1}.
  {label,590}.
    {test,is_list,{f,589},[{x,0}]}.
    {allocate_heap,2,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {init_yregs,{list,[{y,0}]}}.
    {make_fun3,{f,1252},0,0,{y,1},{list,[]}}.
    {'%',{var_info,{y,1},[{fun_type,{t_map,any,any}}]}}.
    {move,{integer,1500},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"map_SUITE.erl",1674}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{literal,#{done => 0,procs => #{}}},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {line,[{location,"map_SUITE.erl",1672}]}.
    {call_ext,3,{extfunc,lists,foldl,3}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},1}.
    {make_fun3,{f,1250},0,0,{y,1},{list,[]}}.
    {line,[{location,"map_SUITE.erl",1677}]}.
    {bif,map_get,{f,0},[{atom,procs},{tr,{x,0},{t_map,any,any}}],{x,1}}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {call_ext,1,{extfunc,maps,keys,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {line,[{location,"map_SUITE.erl",1675}]}.
    {call_ext,2,{extfunc,lists,foreach,2}}.
    {move,{y,0},{x,0}}.
    {call_last,1,{f,592},1}. % guard_receive_large_loop/1


{function, guard_receive_large_loop, 1, 592}.
  {label,591}.
    {line,[{location,"map_SUITE.erl",1681}]}.
    {func_info,{atom,map_SUITE},{atom,guard_receive_large_loop},1}.
  {label,592}.
    {'%',{var_info,{x,0},[{type,{t_map,any,any}}]}}.
    {get_map_elements,{f,593},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{atom,done},{x,1}]}}.
    {test,is_eq_exact,{f,593},[{x,1},{integer,1500}]}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,593}.
    {allocate,5,1}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3}]}}.
    {move,{x,0},{y,4}}.
  {label,594}.
    {loop_rec,{f,597},{x,0}}.
    {test,is_map,{f,596},[{x,0}]}.
    {get_map_elements,{f,596},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{atom,pid},{x,0},{atom,msg},{x,1}]}}.
    {test,is_eq_exact,{f,596},[{x,1},{atom,hello}]}.
    {move,{x,0},{y,3}}.
    remove_message.
    {get_map_elements,{f,598},
                      {tr,{y,4},{t_map,any,any}},
                      {list,[{atom,procs},{y,2}]}}.
    {test,is_map,{f,598},[{y,2}]}.
    {get_map_elements,{f,598},{tr,{y,2},{t_map,any,any}},{list,[{x,0},{y,1}]}}.
    {test,is_eq_exact,{f,595},[{y,1},{integer,150}]}.
    {get_map_elements,{f,595},
                      {tr,{y,4},{t_map,any,any}},
                      {list,[{atom,done},{y,0}]}}.
    {test_heap,3,0}.
    {bif,self,{f,0},[],{x,0}}.
    {put_tuple2,{x,1},{list,[{x,0},{atom,done}]}}.
    {move,{y,3},{x,0}}.
    {move,{y,0},{y,3}}.
    {trim,3,2}.
    {line,[{location,"map_SUITE.erl",1688}]}.
    send.
    {line,[{location,"map_SUITE.erl",1689}]}.
    {gc_bif,'+',{f,0},0,[{y,0},{integer,1}],{x,0}}.
    {put_map_exact,{f,0},{y,1},{x,0},1,{list,[{atom,done},{x,0}]}}.
    {call_last,1,{f,592},2}. % guard_receive_large_loop/1
  {label,595}.
    {test_heap,3,0}.
    {bif,self,{f,0},[],{x,0}}.
    {put_tuple2,{x,1},{list,[{x,0},{atom,hello}]}}.
    {move,{y,3},{x,0}}.
    {line,[{location,"map_SUITE.erl",1691}]}.
    send.
    {line,[{location,"map_SUITE.erl",1692}]}.
    {gc_bif,'+',{f,0},0,[{y,1},{integer,1}],{x,0}}.
    {put_map_exact,{f,0},{y,2},{x,0},1,{list,[{y,3},{x,0}]}}.
    {put_map_exact,{f,0},{y,4},{x,0},1,{list,[{atom,procs},{x,0}]}}.
    {call_last,1,{f,592},5}. % guard_receive_large_loop/1
  {label,596}.
    {loop_rec_end,{f,594}}.
  {label,597}.
    {wait,{f,594}}.
  {label,598}.
    {line,[{location,"map_SUITE.erl",1686}]}.
    {case_end,{y,4}}.


{function, grecv_loop, 0, 600}.
  {label,599}.
    {line,[{location,"map_SUITE.erl",1696}]}.
    {func_info,{atom,map_SUITE},{atom,grecv_loop},0}.
  {label,600}.
    {allocate,0,0}.
  {label,601}.
    {loop_rec,{f,605},{x,0}}.
    {test,is_tuple,{f,604},[{x,0}]}.
    {test,test_arity,{f,604},[{x,0},2]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {select_val,{x,1},
                {f,604},
                {list,[{atom,done},{f,603},{atom,hello},{f,602}]}}.
  {label,602}.
    remove_message.
    {bif,self,{f,0},[],{x,1}}.
    {put_map_assoc,{f,0},
                   {literal,#{}},
                   {x,1},
                   2,
                   {list,[{atom,msg},{atom,hello},{atom,pid},{x,1}]}}.
    {get_tuple_element,{x,0},0,{x,0}}.
    {line,[{location,"map_SUITE.erl",1701}]}.
    send.
    {call_last,0,{f,600},0}. % grecv_loop/0
  {label,603}.
    remove_message.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,604}.
    {loop_rec_end,{f,601}}.
  {label,605}.
    {wait,{f,601}}.


{function, call, 2, 607}.
  {label,606}.
    {line,[{location,"map_SUITE.erl",1706}]}.
    {func_info,{atom,map_SUITE},{atom,call},2}.
  {label,607}.
    {'%',{var_info,{x,0},[{type,pid}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_union,{t_atom,[done]},
                                   none,none,none,
                                   {t_map,any,any}}}]}}.
    {allocate_heap,1,3,2}.
    {move,{x,0},{y,0}}.
    {bif,self,{f,0},[],{x,0}}.
    {put_tuple2,{x,1},{list,[{x,0},{x,1}]}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"map_SUITE.erl",1707}]}.
    send.
  {label,608}.
    {loop_rec,{f,610},{x,0}}.
    {test,is_tuple,{f,609},[{x,0}]}.
    {test,test_arity,{f,609},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_eq_exact,{f,609},[{x,1},{tr,{y,0},pid}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    remove_message.
    {deallocate,1}.
    return.
  {label,609}.
    {loop_rec_end,{f,608}}.
  {label,610}.
    {wait,{f,608}}.


{function, guard_receive_loop, 0, 612}.
  {label,611}.
    {line,[{location,"map_SUITE.erl",1709}]}.
    {func_info,{atom,map_SUITE},{atom,guard_receive_loop},0}.
  {label,612}.
    {allocate,0,0}.
  {label,613}.
    {loop_rec,{f,622},{x,0}}.
    {test,is_tuple,{f,621},[{x,0}]}.
    {test,test_arity,{f,621},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_map,{f,619},[{x,0}]}.
    {get_map_elements,{f,620},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{atom,op},
                             {x,4},
                             {atom,in},
                             {x,3},
                             {atom,id},
                             {x,2}]}}.
    {test,is_tuple,{f,620},[{x,3}]}.
    {test,test_arity,{f,620},[{x,3},2]}.
    {get_tuple_element,{x,3},0,{x,5}}.
    {get_tuple_element,{x,3},1,{x,3}}.
    {test,is_eq_exact,{f,614},[{x,4},{literal,"append"}]}.
    {test,is_binary,{f,620},[{x,5}]}.
    {test,is_binary,{f,620},[{x,3}]}.
    {move,{x,5},{x,4}}.
    remove_message.
    {bif,self,{f,0},[],{x,5}}.
    {line,[{location,"map_SUITE.erl",1712}]}.
    {gc_bif,'+',{f,0},6,[{x,2},{integer,1}],{x,2}}.
    {bs_create_bin,{f,0},
                   0,6,8,
                   {x,3},
                   {list,[{atom,append},
                          1,8,nil,
                          {tr,{x,4},{t_bitstring,8,false}},
                          {atom,all},
                          {atom,binary},
                          2,8,nil,
                          {tr,{x,3},{t_bitstring,8,false}},
                          {atom,all}]}}.
    {put_map_assoc,{f,0},
                   {x,0},
                   {x,0},
                   6,
                   {list,[{atom,id},{x,2},{atom,res},{x,3}]}}.
    {test_heap,3,6}.
    {put_tuple2,{x,0},{list,[{x,5},{x,0}]}}.
    {swap,{x,0},{x,1}}.
    send.
    {call_last,0,{f,612},0}. % guard_receive_loop/0
  {label,614}.
    {select_val,{x,4},
                {f,620},
                {list,[{atom,add},
                       {f,618},
                       {atom,idiv},
                       {f,617},
                       {atom,imul},
                       {f,616},
                       {atom,sub},
                       {f,615}]}}.
  {label,615}.
    {move,{x,5},{x,4}}.
    remove_message.
    {bif,self,{f,0},[],{x,5}}.
    {line,[{location,"map_SUITE.erl",1718}]}.
    {gc_bif,'+',{f,0},6,[{x,2},{integer,1}],{x,2}}.
    {gc_bif,'-',{f,0},6,[{x,4},{x,3}],{x,3}}.
    {put_map_assoc,{f,0},
                   {x,0},
                   {x,0},
                   6,
                   {list,[{atom,id},{x,2},{atom,res},{x,3}]}}.
    {test_heap,3,6}.
    {put_tuple2,{x,0},{list,[{x,5},{x,0}]}}.
    {swap,{x,0},{x,1}}.
    send.
    {call_last,0,{f,612},0}. % guard_receive_loop/0
  {label,616}.
    {move,{x,5},{x,4}}.
    remove_message.
    {bif,self,{f,0},[],{x,5}}.
    {line,[{location,"map_SUITE.erl",1724}]}.
    {gc_bif,'+',{f,0},6,[{x,2},{integer,1}],{x,2}}.
    {gc_bif,'*',{f,0},6,[{x,4},{x,3}],{x,3}}.
    {put_map_assoc,{f,0},
                   {x,0},
                   {x,0},
                   6,
                   {list,[{atom,id},{x,2},{atom,res},{x,3}]}}.
    {test_heap,3,6}.
    {put_tuple2,{x,0},{list,[{x,5},{x,0}]}}.
    {swap,{x,0},{x,1}}.
    send.
    {call_last,0,{f,612},0}. % guard_receive_loop/0
  {label,617}.
    {move,{x,5},{x,4}}.
    remove_message.
    {bif,self,{f,0},[],{x,5}}.
    {line,[{location,"map_SUITE.erl",1721}]}.
    {gc_bif,'+',{f,0},6,[{x,2},{integer,1}],{x,2}}.
    {gc_bif,'div',{f,0},6,[{x,4},{x,3}],{x,3}}.
    {put_map_assoc,{f,0},
                   {x,0},
                   {x,0},
                   6,
                   {list,[{atom,id},{x,2},{atom,res},{x,3}]}}.
    {test_heap,3,6}.
    {put_tuple2,{x,0},{list,[{x,5},{x,0}]}}.
    {swap,{x,0},{x,1}}.
    send.
    {call_last,0,{f,612},0}. % guard_receive_loop/0
  {label,618}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {move,{x,3},{x,2}}.
    {move,{x,5},{x,3}}.
    remove_message.
    {bif,self,{f,0},[],{x,4}}.
    {line,[{location,"map_SUITE.erl",1715}]}.
    {gc_bif,'+',{f,0},5,[{x,1},{integer,1}],{x,1}}.
    {gc_bif,'+',{f,0},5,[{x,3},{x,2}],{x,2}}.
    {put_map_assoc,{f,0},
                   {literal,#{}},
                   {x,1},
                   5,
                   {list,[{atom,id},{x,1},{atom,res},{x,2}]}}.
    {test_heap,3,5}.
    {put_tuple2,{x,1},{list,[{x,4},{x,1}]}}.
    send.
    {call_last,0,{f,612},0}. % guard_receive_loop/0
  {label,619}.
    {test,is_eq_exact,{f,620},[{x,0},{atom,done}]}.
    {test_heap,3,2}.
    {move,{x,1},{x,0}}.
    remove_message.
    {bif,self,{f,0},[],{x,1}}.
    {put_tuple2,{x,1},{list,[{x,1},{atom,done}]}}.
    {line,[{location,"map_SUITE.erl",1727}]}.
    send.
    {deallocate,0}.
    return.
  {label,620}.
    {test_heap,3,2}.
    remove_message.
    {put_tuple2,{x,0},{list,[{atom,error},{x,0}]}}.
    {swap,{x,0},{x,1}}.
    {line,[{location,"map_SUITE.erl",1729}]}.
    send.
    {call_last,0,{f,612},0}. % guard_receive_loop/0
  {label,621}.
    {loop_rec_end,{f,613}}.
  {label,622}.
    {wait,{f,613}}.


{function, t_list_comprehension, 1, 624}.
  {label,623}.
    {line,[{location,"map_SUITE.erl",1734}]}.
    {func_info,{atom,map_SUITE},{atom,t_list_comprehension},1}.
  {label,624}.
    {test,is_list,{f,623},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{location,"map_SUITE.erl",1735}]}.
    {call,1,{f,1247}}. % '-t_list_comprehension/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_cons,{t_map,{t_atom,[k]},{t_integer,{1,3}}},
                                  nil}}]}}.
    {call,1,{f,1107}}. % id/1
    {test,is_nonempty_list,{f,629},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_map,{f,629},[{x,1}]}.
    {get_map_elements,{f,629},
                      {tr,{x,1},{t_map,any,any}},
                      {list,[{atom,k},{x,1}]}}.
    {test,is_eq_exact,{f,629},[{x,1},{integer,1}]}.
    {test,is_nonempty_list,{f,629},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_map,{f,629},[{x,1}]}.
    {get_map_elements,{f,629},
                      {tr,{x,1},{t_map,any,any}},
                      {list,[{atom,k},{x,1}]}}.
    {test,is_eq_exact,{f,629},[{x,1},{integer,2}]}.
    {test,is_nonempty_list,{f,629},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_map,{f,629},[{x,1}]}.
    {get_map_elements,{f,629},
                      {tr,{x,1},{t_map,any,any}},
                      {list,[{atom,k},{x,1}]}}.
    {test,is_eq_exact,{f,629},[{x,1},{integer,3}]}.
    {test,is_nil,{f,629},[{x,2}]}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{location,"map_SUITE.erl",1736}]}.
    {call,1,{f,1244}}. % '-t_list_comprehension/1-lc$^1/1-1-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_cons,
                     {t_map,
                         {t_union,none,
                             {t_cons,{t_integer,{97,119}},nil},
                             none,none,
                             {t_bitstring,1,false}},
                         {t_integer,{1,'+inf'}}},
                     nil}}]}}.
    {call,1,{f,1107}}. % id/1
    {test,is_nonempty_list,{f,628},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_nonempty_list,{f,628},[{x,2}]}.
    {get_list,{x,2},{x,3},{x,2}}.
    {test,is_nonempty_list,{f,628},[{x,2}]}.
    {get_list,{x,2},{x,4},{x,2}}.
    {test,is_nil,{f,628},[{x,2}]}.
    {test,is_map,{f,628},[{x,4}]}.
    {get_map_elements,{f,628},
                      {tr,{x,4},{t_map,any,any}},
                      {list,[{literal,"wat"},{x,2}]}}.
    {test,is_eq_exact,{f,628},[{x,2},{integer,4}]}.
    {line,[{location,"map_SUITE.erl",1737}]}.
    {bs_create_bin,{f,628},
                   0,5,1,
                   {x,2},
                   {list,[{atom,integer},
                          1,1,nil,
                          {integer,0},
                          {integer,293},
                          {atom,string},
                          0,8,nil,
                          {string,<<2>>},
                          {integer,1}]}}.
    {get_map_elements,{f,628},
                      {tr,{x,4},{t_map,any,any}},
                      {list,[{tr,{x,2},{t_bitstring,1,false}},{x,2}]}}.
    {test,is_eq_exact,{f,628},[{x,2},{integer,3}]}.
    {test,is_map,{f,628},[{x,3}]}.
    {get_map_elements,{f,628},
                      {tr,{x,3},{t_map,any,any}},
                      {list,[{literal,"wat"},{x,2}]}}.
    {test,is_eq_exact,{f,628},[{x,2},{integer,3}]}.
    {bs_create_bin,{f,628},
                   0,4,1,
                   {x,2},
                   {list,[{atom,integer},
                          1,1,nil,
                          {integer,0},
                          {integer,293},
                          {atom,string},
                          0,8,nil,
                          {string,<<2>>},
                          {integer,1}]}}.
    {get_map_elements,{f,628},
                      {tr,{x,3},{t_map,any,any}},
                      {list,[{tr,{x,2},{t_bitstring,1,false}},{x,2}]}}.
    {test,is_eq_exact,{f,628},[{x,2},{integer,2}]}.
    {test,is_map,{f,628},[{x,1}]}.
    {get_map_elements,{f,628},
                      {tr,{x,1},{t_map,any,any}},
                      {list,[{literal,"wat"},{x,2}]}}.
    {test,is_eq_exact,{f,628},[{x,2},{integer,2}]}.
    {bs_create_bin,{f,628},
                   0,2,1,
                   {x,2},
                   {list,[{atom,integer},
                          1,1,nil,
                          {integer,0},
                          {integer,293},
                          {atom,string},
                          0,8,nil,
                          {string,<<2>>},
                          {integer,1}]}}.
    {get_map_elements,{f,628},
                      {tr,{x,1},{t_map,any,any}},
                      {list,[{tr,{x,2},{t_bitstring,1,false}},{x,1}]}}.
    {test,is_eq_exact,{f,628},[{x,1},{integer,1}]}.
    {line,[{location,"map_SUITE.erl",1738}]}.
    {call,1,{f,1239}}. % '-t_list_comprehension/1-lc$^2/1-2-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {call,1,{f,1107}}. % id/1
    {test,is_eq_exact,{f,627},[{x,0},{literal,[{1,2},{2,3},{3,4}]}]}.
    {move,{integer,122},{x,1}}.
    {move,{integer,97},{x,0}}.
    {line,[{location,"map_SUITE.erl",1740}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{x,0},{x,1}}.
    {line,[{location,"map_SUITE.erl",1741}]}.
    {call,2,{f,1231}}. % '-t_list_comprehension/1-lc$^3/1-3-'/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_map,{t_cons,any,nil},{t_tuple,2,true,#{}}},
                     nil}}]}}.
    {test,is_nonempty_list,{f,626},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {get_map_elements,{f,626},
                      {tr,{x,1},{t_map,{t_cons,any,nil},{t_tuple,2,true,#{}}}},
                      {list,[{literal,"aa"},{x,1}]}}.
    {test,is_eq_exact,
          {f,626},
          [{tr,{x,1},{t_tuple,2,true,#{}}},{literal,{97,97}}]}.
    {test,is_nonempty_list,{f,626},[{x,2}]}.
    {get_hd,{x,2},{x,1}}.
    {get_map_elements,{f,626},
                      {tr,{x,1},{t_map,{t_cons,any,nil},{t_tuple,2,true,#{}}}},
                      {list,[{literal,"ab"},{x,1}]}}.
    {test,is_eq_exact,
          {f,626},
          [{tr,{x,1},{t_tuple,2,true,#{}}},{literal,{97,98}}]}.
    {line,[{location,"map_SUITE.erl",1743}]}.
    {call_ext,1,{extfunc,lists,reverse,1}}.
    {get_list,{x,0},{x,1},{x,2}}.
    {get_map_elements,{f,625},
                      {tr,{x,1},{t_map,{t_cons,any,nil},{t_tuple,2,true,#{}}}},
                      {list,[{literal,"zz"},{x,1}]}}.
    {test,is_eq_exact,
          {f,625},
          [{tr,{x,1},{t_tuple,2,true,#{}}},{literal,{122,122}}]}.
    {test,is_nonempty_list,{f,625},[{x,2}]}.
    {get_hd,{x,2},{x,1}}.
    {get_map_elements,{f,625},
                      {tr,{x,1},{t_map,{t_cons,any,nil},{t_tuple,2,true,#{}}}},
                      {list,[{literal,"zy"},{x,1}]}}.
    {test,is_eq_exact,
          {f,625},
          [{tr,{x,1},{t_tuple,2,true,#{}}},{literal,{122,121}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,625}.
    {badmatch,{x,0}}.
  {label,626}.
    {line,[{location,"map_SUITE.erl",1742}]}.
    {badmatch,{x,0}}.
  {label,627}.
    {line,[{location,"map_SUITE.erl",1738}]}.
    {badmatch,{x,0}}.
  {label,628}.
    {line,[{location,"map_SUITE.erl",1737}]}.
    {badmatch,{x,0}}.
  {label,629}.
    {line,[{location,"map_SUITE.erl",1735}]}.
    {badmatch,{x,0}}.


{function, t_guard_fun, 1, 631}.
  {label,630}.
    {line,[{location,"map_SUITE.erl",1746}]}.
    {func_info,{atom,map_SUITE},{atom,t_guard_fun},1}.
  {label,631}.
    {test,is_list,{f,630},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,#{s => v,v => <<"hi">>}},{x,0}}.
    {line,[{location,"map_SUITE.erl",1760}]}.
    {call,1,{f,1226}}. % '-t_guard_fun/1-fun-0-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,none,none,
                                   [{{2,{t_atom,[l]}},
                                     {t_tuple,2,true,#{1 => {t_atom,[l]}}}},
                                    {{2,{t_atom,[t]}},
                                     {t_tuple,2,true,#{1 => {t_atom,[t]}}}},
                                    {{2,{t_atom,[v]}},
                                     {t_tuple,2,true,#{1 => {t_atom,[v]}}}}],
                                   none}}]}}.
    {test,is_tagged_tuple,
          {f,640},
          [{tr,{x,0},
               {t_union,none,none,none,
                        [{{2,{t_atom,[l]}},
                          {t_tuple,2,true,#{1 => {t_atom,[l]}}}},
                         {{2,{t_atom,[t]}},
                          {t_tuple,2,true,#{1 => {t_atom,[t]}}}},
                         {{2,{t_atom,[v]}},
                          {t_tuple,2,true,#{1 => {t_atom,[v]}}}}],
                        none}},
           2,
           {atom,v}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,640},[{x,1},{literal,<<"hi">>}]}.
    {move,{literal,#{s => t,v => {<<"hi">>,<<"hi">>}}},{x,0}}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",1761}]}.
    {call,1,{f,1226}}. % '-t_guard_fun/1-fun-0-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,none,none,
                                   [{{2,{t_atom,[l]}},
                                     {t_tuple,2,true,#{1 => {t_atom,[l]}}}},
                                    {{2,{t_atom,[t]}},
                                     {t_tuple,2,true,#{1 => {t_atom,[t]}}}},
                                    {{2,{t_atom,[v]}},
                                     {t_tuple,2,true,#{1 => {t_atom,[v]}}}}],
                                   none}}]}}.
    {test,is_tagged_tuple,
          {f,639},
          [{tr,{x,0},
               {t_union,none,none,none,
                        [{{2,{t_atom,[l]}},
                          {t_tuple,2,true,#{1 => {t_atom,[l]}}}},
                         {{2,{t_atom,[t]}},
                          {t_tuple,2,true,#{1 => {t_atom,[t]}}}},
                         {{2,{t_atom,[v]}},
                          {t_tuple,2,true,#{1 => {t_atom,[v]}}}}],
                        none}},
           2,
           {atom,t}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,639},[{x,1},{literal,<<"hi">>}]}.
    {move,{literal,#{s => l,v => [<<"hi">>,<<"hi">>]}},{x,0}}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",1762}]}.
    {call,1,{f,1226}}. % '-t_guard_fun/1-fun-0-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,none,none,
                                   [{{2,{t_atom,[l]}},
                                     {t_tuple,2,true,#{1 => {t_atom,[l]}}}},
                                    {{2,{t_atom,[t]}},
                                     {t_tuple,2,true,#{1 => {t_atom,[t]}}}},
                                    {{2,{t_atom,[v]}},
                                     {t_tuple,2,true,#{1 => {t_atom,[v]}}}}],
                                   none}}]}}.
    {test,is_tagged_tuple,
          {f,638},
          [{tr,{x,0},
               {t_union,none,none,none,
                        [{{2,{t_atom,[l]}},
                          {t_tuple,2,true,#{1 => {t_atom,[l]}}}},
                         {{2,{t_atom,[t]}},
                          {t_tuple,2,true,#{1 => {t_atom,[t]}}}},
                         {{2,{t_atom,[v]}},
                          {t_tuple,2,true,#{1 => {t_atom,[v]}}}}],
                        none}},
           2,
           {atom,l}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,638},[{x,1},{literal,<<"hi">>}]}.
    {move,{literal,#{s => v,v => <<"hi">>}},{x,0}}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",1764}]}.
    {call,1,{f,1221}}. % '-t_guard_fun/1-fun-1-'/1
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{}}}]}}.
    {test,is_tagged_tuple,
          {f,637},
          [{tr,{x,0},{t_tuple,2,true,#{}}},2,{atom,v}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,637},[{x,1},{literal,<<"hi">>}]}.
    {move,{literal,#{s => t,v => {<<"hi">>,<<"hi">>}}},{x,0}}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",1765}]}.
    {call,1,{f,1221}}. % '-t_guard_fun/1-fun-1-'/1
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{}}}]}}.
    {test,is_tagged_tuple,
          {f,636},
          [{tr,{x,0},{t_tuple,2,true,#{}}},2,{atom,t}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,636},[{x,1},{literal,<<"hi">>}]}.
    {move,{literal,#{s => l,v => [<<"hi">>,<<"hi">>]}},{x,0}}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",1766}]}.
    {call,1,{f,1221}}. % '-t_guard_fun/1-fun-1-'/1
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{}}}]}}.
    {test,is_tagged_tuple,
          {f,635},
          [{tr,{x,0},{t_tuple,2,true,#{}}},2,{atom,l}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_eq_exact,{f,635},[{x,1},{literal,<<"hi">>}]}.
    {'catch',{y,0},{f,632}}.
    {move,{literal,#{s => none,v => none}},{x,0}}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",1769}]}.
    {call,1,{f,1226}}. % '-t_guard_fun/1-fun-0-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_union,none,none,none,
                                   [{{2,{t_atom,[l]}},
                                     {t_tuple,2,true,#{1 => {t_atom,[l]}}}},
                                    {{2,{t_atom,[t]}},
                                     {t_tuple,2,true,#{1 => {t_atom,[t]}}}},
                                    {{2,{t_atom,[v]}},
                                     {t_tuple,2,true,#{1 => {t_atom,[v]}}}}],
                                   none}}]}}.
  {label,632}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,634},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,634},[{x,1}]}.
    {test,test_arity,{f,634},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_tuple,{f,633},[{x,2}]}.
    {test,is_tagged_tuple,
          {f,634},
          [{tr,{x,2},{t_tuple,0,false,#{}}},2,{atom,case_clause}]}.
    {move,{literal,{comment,inlined}},{x,0}}.
    {deallocate,1}.
    return.
  {label,633}.
    {test,is_eq_exact,{f,634},[{x,2},{atom,function_clause}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,634},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,634},[{x,1},4,{atom,map_SUITE}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_nonempty_list,{f,634},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_map,{f,634},[{x,2}]}.
    {get_map_elements,{f,634},
                      {tr,{x,2},{t_map,any,any}},
                      {list,[{atom,v},{x,2},{atom,s},{x,3}]}}.
    {test,is_eq_exact,{f,634},[{x,3},{atom,none}]}.
    {test,is_eq_exact,{f,634},[{x,2},{atom,none}]}.
    {test,is_nil,{f,634},[{x,1}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,634}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,no_match},{x,0}]}}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",1773}]}.
    {call_ext_last,1,{extfunc,ct,fail,1},1}.
  {label,635}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",1766}]}.
    {badmatch,{x,0}}.
  {label,636}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",1765}]}.
    {badmatch,{x,0}}.
  {label,637}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",1764}]}.
    {badmatch,{x,0}}.
  {label,638}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",1762}]}.
    {badmatch,{x,0}}.
  {label,639}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",1761}]}.
    {badmatch,{x,0}}.
  {label,640}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",1760}]}.
    {badmatch,{x,0}}.


{function, t_map_sort_literals, 1, 642}.
  {label,641}.
    {line,[{location,"map_SUITE.erl",1777}]}.
    {func_info,{atom,map_SUITE},{atom,t_map_sort_literals},1}.
  {label,642}.
    {test,is_list,{f,641},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,#{a => 1,b => 1,c => 1}},{x,0}}.
    {line,[{location,"map_SUITE.erl",1781}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_lt,{f,662},[{literal,#{a => 1,b => 2}},{x,0}]}.
    {move,{literal,#{a => 1,b => 1,c => 1}},{x,0}}.
    {line,[{location,"map_SUITE.erl",1782}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_lt,{f,661},[{literal,#{a => 1,b => 1}},{x,0}]}.
    {move,{literal,#{a => 1,c => 1}},{x,0}}.
    {line,[{location,"map_SUITE.erl",1783}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_lt,{f,643},[{literal,#{a => 1,b => 1,c => 1}},{x,0}]}.
    {badmatch,{atom,true}}.
  {label,643}.
    {move,{literal,#{a => 1}},{x,0}}.
    {line,[{location,"map_SUITE.erl",1786}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{literal,#{b => 1}},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {test,is_lt,{f,660},[{y,0},{x,0}]}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,#{b => 1}},{x,0}}.
    {line,[{location,"map_SUITE.erl",1787}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{literal,#{a => 1}},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {test,is_lt,{f,644},[{y,0},{x,0}]}.
    {badmatch,{atom,true}}.
  {label,644}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,#{a => 1,b => 1,c => 1}},{x,0}}.
    {line,[{location,"map_SUITE.erl",1788}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{literal,#{b => 1,c => 1,d => 1}},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {test,is_lt,{f,659},[{y,0},{x,0}]}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,#{b => 1,c => 1,d => 1}},{x,0}}.
    {line,[{location,"map_SUITE.erl",1789}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{literal,#{a => 1,b => 1,c => 1}},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {test,is_lt,{f,658},[{x,0},{y,0}]}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,#{a => 1,b => 1,c => 1}},{x,0}}.
    {line,[{location,"map_SUITE.erl",1790}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{literal,#{b => 1,c => 1,d => 1}},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {test,is_lt,{f,657},[{y,0},{x,0}]}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,#{"a" => 1}},{x,0}}.
    {line,[{location,"map_SUITE.erl",1791}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{literal,#{<<"a">> => 1}},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {test,is_lt,{f,656},[{y,0},{x,0}]}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,#{<<"a">> => 1}},{x,0}}.
    {line,[{location,"map_SUITE.erl",1792}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{literal,#{"a" => 1}},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {test,is_lt,{f,645},[{y,0},{x,0}]}.
    {badmatch,{atom,true}}.
  {label,645}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,#{1 => 1}},{x,0}}.
    {line,[{location,"map_SUITE.erl",1793}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{literal,#{1.0 => 1}},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {test,is_lt,{f,655},[{y,0},{x,0}]}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,#{1.0 => 1}},{x,0}}.
    {line,[{location,"map_SUITE.erl",1794}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{literal,#{1 => 1}},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {test,is_lt,{f,646},[{y,0},{x,0}]}.
    {badmatch,{atom,true}}.
  {label,646}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,#{a => 1}},{x,0}}.
    {line,[{location,"map_SUITE.erl",1797}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{literal,#{a => 2}},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {test,is_lt,{f,654},[{y,0},{x,0}]}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,#{a => 2}},{x,0}}.
    {line,[{location,"map_SUITE.erl",1798}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{literal,#{a => 1}},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {test,is_lt,{f,647},[{y,0},{x,0}]}.
    {badmatch,{atom,true}}.
  {label,647}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,#{a => 2,b => 1}},{x,0}}.
    {line,[{location,"map_SUITE.erl",1799}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{literal,#{a => 1,b => 3}},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {test,is_lt,{f,648},[{y,0},{x,0}]}.
    {badmatch,{atom,true}}.
  {label,648}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,#{a => 1,b => 1}},{x,0}}.
    {line,[{location,"map_SUITE.erl",1800}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{literal,#{a => 1,b => 3}},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {test,is_lt,{f,653},[{y,0},{x,0}]}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,#{b => 134,"a" => "hi"}},{x,0}}.
    {line,[{location,"map_SUITE.erl",1802}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{literal,#{b => 134,"a" => "hi"}},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {test,is_eq,{f,652},[{y,0},{x,0}]}.
    {trim,1,0}.
    {move,{literal,[#{"a" => ok},#{a => ok},#{1 => ok},#{<<"a">> => ok}]},
          {x,0}}.
    {line,[{location,"map_SUITE.erl",1807}]}.
    {call_ext,1,{extfunc,lists,sort,1}}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,has_map_fields,{f,651},{x,1},{list,[{integer,1}]}}.
    {test,is_nonempty_list,{f,651},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,has_map_fields,{f,651},{x,1},{list,[{atom,a}]}}.
    {test,is_nonempty_list,{f,651},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,has_map_fields,{f,651},{x,1},{list,[{literal,"a"}]}}.
    {test,is_nonempty_list,{f,651},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,has_map_fields,{f,651},{x,1},{list,[{literal,<<"a">>}]}}.
    {test,is_nil,
        {f,651},
        [{tr,{x,2},
             {t_list,
                 {t_map,
                     {t_union,
                         {t_atom,[a]},
                         {t_cons,{t_integer,{97,97}},nil},
                         {t_integer,{1,1}},
                         none,
                         {t_bitstring,8,false}},
                     {t_atom,[ok]}},
                 nil}}]}.
    {move,{literal,[#{"a" => 1},#{a => 2},#{1 => 3},#{<<"a">> => 4}]},{x,0}}.
    {line,[{location,"map_SUITE.erl",1808}]}.
    {call_ext,1,{extfunc,lists,sort,1}}.
    {get_list,{x,0},{x,1},{x,2}}.
    {get_map_elements,
        {f,650},
        {tr,{x,1},
            {t_map,
                {t_union,
                    {t_atom,[a]},
                    {t_cons,{t_integer,{97,97}},nil},
                    {t_integer,{1,1}},
                    none,
                    {t_bitstring,8,false}},
                {t_integer,{1,4}}}},
        {list,[{integer,1},{x,1}]}}.
    {test,is_eq_exact,{f,650},[{tr,{x,1},{t_integer,{1,4}}},{integer,3}]}.
    {test,is_nonempty_list,{f,650},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {get_map_elements,
        {f,650},
        {tr,{x,1},
            {t_map,
                {t_union,
                    {t_atom,[a]},
                    {t_cons,{t_integer,{97,97}},nil},
                    {t_integer,{1,1}},
                    none,
                    {t_bitstring,8,false}},
                {t_integer,{1,4}}}},
        {list,[{atom,a},{x,1}]}}.
    {test,is_eq_exact,{f,650},[{tr,{x,1},{t_integer,{1,4}}},{integer,2}]}.
    {test,is_nonempty_list,{f,650},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {get_map_elements,
        {f,650},
        {tr,{x,1},
            {t_map,
                {t_union,
                    {t_atom,[a]},
                    {t_cons,{t_integer,{97,97}},nil},
                    {t_integer,{1,1}},
                    none,
                    {t_bitstring,8,false}},
                {t_integer,{1,4}}}},
        {list,[{literal,"a"},{x,1}]}}.
    {test,is_eq_exact,{f,650},[{tr,{x,1},{t_integer,{1,4}}},{integer,1}]}.
    {test,is_nonempty_list,{f,650},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {get_map_elements,
        {f,650},
        {tr,{x,1},
            {t_map,
                {t_union,
                    {t_atom,[a]},
                    {t_cons,{t_integer,{97,97}},nil},
                    {t_integer,{1,1}},
                    none,
                    {t_bitstring,8,false}},
                {t_integer,{1,4}}}},
        {list,[{literal,<<"a">>},{x,1}]}}.
    {test,is_eq_exact,{f,650},[{tr,{x,1},{t_integer,{1,4}}},{integer,4}]}.
    {test,is_nil,
        {f,650},
        [{tr,{x,2},
             {t_list,
                 {t_map,
                     {t_union,
                         {t_atom,[a]},
                         {t_cons,{t_integer,{97,97}},nil},
                         {t_integer,{1,1}},
                         none,
                         {t_bitstring,8,false}},
                     {t_integer,{1,4}}},
                 nil}}]}.
    {move,{literal,[#{"a" => 1},#{a => 2},#{1 => 3},#{<<"a">> => 4}]},{x,0}}.
    {line,[{location,"map_SUITE.erl",1809}]}.
    {call_ext,1,{extfunc,lists,reverse,1}}.
    {call_ext,1,{extfunc,lists,sort,1}}.
    {get_list,{x,0},{x,1},{x,2}}.
    {get_map_elements,
        {f,649},
        {tr,{x,1},
            {t_map,
                {t_union,
                    {t_atom,[a]},
                    {t_cons,{t_integer,{97,97}},nil},
                    {t_integer,{1,1}},
                    none,
                    {t_bitstring,8,false}},
                {t_integer,{1,4}}}},
        {list,[{integer,1},{x,1}]}}.
    {test,is_eq_exact,{f,649},[{tr,{x,1},{t_integer,{1,4}}},{integer,3}]}.
    {test,is_nonempty_list,{f,649},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {get_map_elements,
        {f,649},
        {tr,{x,1},
            {t_map,
                {t_union,
                    {t_atom,[a]},
                    {t_cons,{t_integer,{97,97}},nil},
                    {t_integer,{1,1}},
                    none,
                    {t_bitstring,8,false}},
                {t_integer,{1,4}}}},
        {list,[{atom,a},{x,1}]}}.
    {test,is_eq_exact,{f,649},[{tr,{x,1},{t_integer,{1,4}}},{integer,2}]}.
    {test,is_nonempty_list,{f,649},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {get_map_elements,
        {f,649},
        {tr,{x,1},
            {t_map,
                {t_union,
                    {t_atom,[a]},
                    {t_cons,{t_integer,{97,97}},nil},
                    {t_integer,{1,1}},
                    none,
                    {t_bitstring,8,false}},
                {t_integer,{1,4}}}},
        {list,[{literal,"a"},{x,1}]}}.
    {test,is_eq_exact,{f,649},[{tr,{x,1},{t_integer,{1,4}}},{integer,1}]}.
    {test,is_nonempty_list,{f,649},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {get_map_elements,
        {f,649},
        {tr,{x,1},
            {t_map,
                {t_union,
                    {t_atom,[a]},
                    {t_cons,{t_integer,{97,97}},nil},
                    {t_integer,{1,1}},
                    none,
                    {t_bitstring,8,false}},
                {t_integer,{1,4}}}},
        {list,[{literal,<<"a">>},{x,1}]}}.
    {test,is_eq_exact,{f,649},[{tr,{x,1},{t_integer,{1,4}}},{integer,4}]}.
    {test,is_nil,
        {f,649},
        [{tr,{x,2},
             {t_list,
                 {t_map,
                     {t_union,
                         {t_atom,[a]},
                         {t_cons,{t_integer,{97,97}},nil},
                         {t_integer,{1,1}},
                         none,
                         {t_bitstring,8,false}},
                     {t_integer,{1,4}}},
                 nil}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,649}.
    {badmatch,{x,0}}.
  {label,650}.
    {line,[{location,"map_SUITE.erl",1808}]}.
    {badmatch,{x,0}}.
  {label,651}.
    {line,[{location,"map_SUITE.erl",1807}]}.
    {badmatch,{x,0}}.
  {label,652}.
    {line,[{location,"map_SUITE.erl",1802}]}.
    {badmatch,{atom,false}}.
  {label,653}.
    {line,[{location,"map_SUITE.erl",1800}]}.
    {badmatch,{atom,false}}.
  {label,654}.
    {line,[{location,"map_SUITE.erl",1797}]}.
    {badmatch,{atom,false}}.
  {label,655}.
    {line,[{location,"map_SUITE.erl",1793}]}.
    {badmatch,{atom,false}}.
  {label,656}.
    {line,[{location,"map_SUITE.erl",1791}]}.
    {badmatch,{atom,false}}.
  {label,657}.
    {line,[{location,"map_SUITE.erl",1790}]}.
    {badmatch,{atom,false}}.
  {label,658}.
    {line,[{location,"map_SUITE.erl",1789}]}.
    {badmatch,{atom,false}}.
  {label,659}.
    {line,[{location,"map_SUITE.erl",1788}]}.
    {badmatch,{atom,false}}.
  {label,660}.
    {line,[{location,"map_SUITE.erl",1786}]}.
    {badmatch,{atom,false}}.
  {label,661}.
    {line,[{location,"map_SUITE.erl",1782}]}.
    {badmatch,{atom,false}}.
  {label,662}.
    {line,[{location,"map_SUITE.erl",1781}]}.
    {badmatch,{atom,false}}.


{function, t_warn_pair_key_overloaded, 1, 664}.
  {label,663}.
    {line,[{location,"map_SUITE.erl",1813}]}.
    {func_info,{atom,map_SUITE},{atom,t_warn_pair_key_overloaded},1}.
  {label,664}.
    {test,is_list,{f,663},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,#{"hi1" => 42}},{x,0}}.
    {line,[{location,"map_SUITE.erl",1814}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,666},[{x,0}]}.
    {get_map_elements,{f,666},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{literal,"hi1"},{x,1}]}}.
    {test,is_eq_exact,{f,666},[{x,1},{integer,42}]}.
    {bif,self,{f,0},[],{x,0}}.
    {line,[{location,"map_SUITE.erl",1821}]}.
    {call_ext,1,{extfunc,erlang,pid_to_list,1}}.
    {move,{integer,33},{x,1}}.
    {move,{literal,{1,2}},{x,0}}.
    {line,[{location,"map_SUITE.erl",1826}]}.
    {call_ext,2,{extfunc,erlang,phash,2}}.
    {move,{integer,34},{x,1}}.
    {move,{literal,{1,2}},{x,0}}.
    {line,[{location,"map_SUITE.erl",1827}]}.
    {call_ext,2,{extfunc,erlang,phash2,2}}.
    {put_map_assoc,{f,0},
                   {literal,#{}},
                   {x,0},
                   0,
                   {list,[{literal,"hi1"},
                          {integer,1337},
                          {literal,"hi2"},
                          {literal,[2]},
                          {literal,"hi3"},
                          {integer,3},
                          {literal,"hi4"},
                          {literal,<<"3.14159999999999994813e+00">>}]}}.
    {line,[{location,"map_SUITE.erl",1816}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,665},[{x,0}]}.
    {get_map_elements,{f,665},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{literal,"hi3"},
                             {x,3},
                             {literal,"hi2"},
                             {x,2},
                             {literal,"hi1"},
                             {x,1}]}}.
    {test,is_eq_exact,{f,665},[{x,1},{integer,1337}]}.
    {test,is_eq_exact,{f,665},[{x,2},{literal,[2]}]}.
    {test,is_eq_exact,{f,665},[{x,3},{integer,3}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,665}.
    {badmatch,{x,0}}.
  {label,666}.
    {line,[{location,"map_SUITE.erl",1814}]}.
    {badmatch,{x,0}}.


{function, t_warn_useless_build, 1, 668}.
  {label,667}.
    {line,[{location,"map_SUITE.erl",1834}]}.
    {func_info,{atom,map_SUITE},{atom,t_warn_useless_build},1}.
  {label,668}.
    {test,is_list,{f,667},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{location,"map_SUITE.erl",1835}]}.
    {call,1,{f,1218}}. % '-t_warn_useless_build/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},[{type,nil}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.


{function, t_build_and_match_over_alloc, 1, 670}.
  {label,669}.
    {line,[{location,"map_SUITE.erl",1838}]}.
    {func_info,{atom,map_SUITE},{atom,t_build_and_match_over_alloc},1}.
  {label,670}.
    {test,is_list,{f,669},[{x,0}]}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{literal,[1,2,3]},{x,0}}.
    {line,[{location,"map_SUITE.erl",1839}]}.
    {call,1,{f,1107}}. % id/1
    {test_heap,2,1}.
    {put_list,{atom,a},{x,0},{x,1}}.
    {put_map_assoc,{f,0},{literal,#{}},{x,1},2,{list,[{literal,"a"},{x,1}]}}.
    {move,{x,0},{y,1}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"map_SUITE.erl",1841}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,673},[{x,0}]}.
    {get_map_elements,{f,673},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{literal,"a"},{y,0}]}}.
    {test_heap,2,0}.
    {put_list,{atom,c},{y,1},{x,0}}.
    {move,{y,0},{y,1}}.
    {trim,1,1}.
    {line,[{location,"map_SUITE.erl",1843}]}.
    {call,1,{f,1107}}. % id/1
    {put_map_assoc,{f,0},{literal,#{}},{x,0},1,{list,[{literal,"a"},{x,0}]}}.
    {line,[{location,"map_SUITE.erl",1844}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,672},[{x,0}]}.
    {get_map_elements,{f,672},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{literal,"a"},{x,1}]}}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{y,0},{x,1}]}}.
    {trim,1,0}.
    {line,[{location,"map_SUITE.erl",1846}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_eq_exact,{f,671},[{x,0},{literal,{[a,1,2,3],[c,1,2,3]}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,671}.
    {badmatch,{x,0}}.
  {label,672}.
    {line,[{location,"map_SUITE.erl",1845}]}.
    {badmatch,{x,0}}.
  {label,673}.
    {line,[{location,"map_SUITE.erl",1842}]}.
    {badmatch,{x,0}}.


{function, t_build_and_match_empty_val, 1, 675}.
  {label,674}.
    {line,[{location,"map_SUITE.erl",1849}]}.
    {func_info,{atom,map_SUITE},{atom,t_build_and_match_empty_val},1}.
  {label,675}.
    {test,is_list,{f,674},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,#{1337 => ok,{1,2} => ok,"hi" => ok}},{x,0}}.
    {line,[{location,"map_SUITE.erl",1851}]}.
    {call,1,{f,1107}}. % id/1
    {call,1,{f,1216}}. % '-t_build_and_match_empty_val/1-fun-0-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {'catch',{y,0},{f,676}}.
    {move,{literal,#{"hi" => ok}},{x,0}}.
    {line,[{location,"map_SUITE.erl",1854}]}.
    {call,1,{f,1107}}. % id/1
    {call,1,{f,1216}}. % '-t_build_and_match_empty_val/1-fun-0-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
  {label,676}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,678},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,678},[{x,1}]}.
    {test,test_arity,{f,678},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tuple,{f,677},[{x,1}]}.
    {test,is_tagged_tuple,
          {f,678},
          [{tr,{x,1},{t_tuple,0,false,#{}}},2,{atom,case_clause}]}.
    {move,{literal,{comment,inlined}},{x,0}}.
    {deallocate,1}.
    return.
  {label,677}.
    {test,is_eq_exact,{f,678},[{x,1},{atom,function_clause}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,678}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,no_match},{x,0}]}}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",1858}]}.
    {call_ext_last,1,{extfunc,ct,fail,1},1}.


{function, t_build_and_match_val, 1, 680}.
  {label,679}.
    {line,[{location,"map_SUITE.erl",1861}]}.
    {func_info,{atom,map_SUITE},{atom,t_build_and_match_val},1}.
  {label,680}.
    {test,is_list,{f,679},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,#{v => "hello","hi" => first}},{x,0}}.
    {line,[{location,"map_SUITE.erl",1868}]}.
    {call,1,{f,1107}}. % id/1
    {call,1,{f,1212}}. % '-t_build_and_match_val/1-fun-0-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_integer,{1,1}}},
                       {t_tuple,2,true,#{1 => {t_integer,{1,1}}}}},
                      {{2,{t_integer,{2,2}}},
                       {t_tuple,2,true,#{1 => {t_integer,{2,2}}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,685},
          [{tr,{x,0},
               {t_union,none,none,none,
                        [{{2,{t_integer,{1,1}}},
                          {t_tuple,2,true,#{1 => {t_integer,{1,1}}}}},
                         {{2,{t_integer,{2,2}}},
                          {t_tuple,2,true,#{1 => {t_integer,{2,2}}}}}],
                        none}},
           {literal,{1,"hello"}}]}.
    {move,{literal,#{v => "second","hi" => second}},{x,0}}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",1869}]}.
    {call,1,{f,1107}}. % id/1
    {call,1,{f,1212}}. % '-t_build_and_match_val/1-fun-0-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_integer,{1,1}}},
                       {t_tuple,2,true,#{1 => {t_integer,{1,1}}}}},
                      {{2,{t_integer,{2,2}}},
                       {t_tuple,2,true,#{1 => {t_integer,{2,2}}}}}],
                     none}}]}}.
    {test,is_eq_exact,
          {f,684},
          [{tr,{x,0},
               {t_union,none,none,none,
                        [{{2,{t_integer,{1,1}}},
                          {t_tuple,2,true,#{1 => {t_integer,{1,1}}}}},
                         {{2,{t_integer,{2,2}}},
                          {t_tuple,2,true,#{1 => {t_integer,{2,2}}}}}],
                        none}},
           {literal,{2,"second"}}]}.
    {'catch',{y,0},{f,681}}.
    {move,{literal,#{"hi" => ok}},{x,0}}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",1872}]}.
    {call,1,{f,1107}}. % id/1
    {call,1,{f,1212}}. % '-t_build_and_match_val/1-fun-0-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_union,none,none,none,
                     [{{2,{t_integer,{1,1}}},
                       {t_tuple,2,true,#{1 => {t_integer,{1,1}}}}},
                      {{2,{t_integer,{2,2}}},
                       {t_tuple,2,true,#{1 => {t_integer,{2,2}}}}}],
                     none}}]}}.
  {label,681}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,683},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,683},[{x,1}]}.
    {test,test_arity,{f,683},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tuple,{f,682},[{x,1}]}.
    {test,is_tagged_tuple,
          {f,683},
          [{tr,{x,1},{t_tuple,0,false,#{}}},2,{atom,case_clause}]}.
    {move,{literal,{comment,inlined}},{x,0}}.
    {deallocate,1}.
    return.
  {label,682}.
    {test,is_eq_exact,{f,683},[{x,1},{atom,function_clause}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,683}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,no_match},{x,0}]}}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",1876}]}.
    {call_ext_last,1,{extfunc,ct,fail,1},1}.
  {label,684}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",1869}]}.
    {badmatch,{x,0}}.
  {label,685}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",1868}]}.
    {badmatch,{x,0}}.


{function, t_build_and_match_nil, 1, 687}.
  {label,686}.
    {line,[{location,"map_SUITE.erl",1879}]}.
    {func_info,{atom,map_SUITE},{atom,t_build_and_match_nil},1}.
  {label,687}.
    {test,is_list,{f,686},[{x,0}]}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{atom,cookie},{x,0}}.
    {line,[{location,"map_SUITE.erl",1881}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,2}}.
    {move,{atom,cake},{x,0}}.
    {line,[{location,"map_SUITE.erl",1882}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,1}}.
    {move,{atom,crisps},{x,0}}.
    {line,[{location,"map_SUITE.erl",1883}]}.
    {call,1,{f,1107}}. % id/1
    {put_map_assoc,{f,0},
                   {literal,#{}},
                   {x,1},
                   1,
                   {list,[{literal,{your,treat}},
                          {x,0},
                          nil,
                          {y,2},
                          {literal,"treat"},
                          {y,1}]}}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"map_SUITE.erl",1885}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,690},[{x,0}]}.
    {get_map_elements,{f,690},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{literal,"treat"},
                             {x,3},
                             nil,
                             {x,2},
                             {literal,{your,treat}},
                             {x,1}]}}.
    {test,is_eq_exact,{f,690},[{x,1},{y,0}]}.
    {test,is_eq_exact,{f,690},[{x,2},{y,2}]}.
    {test,is_eq_exact,{f,690},[{x,3},{y,1}]}.
    {put_map_assoc,{f,0},{literal,#{}},{x,0},0,{list,[nil,{y,0}]}}.
    {move,{y,0},{y,1}}.
    {trim,1,2}.
    {line,[{location,"map_SUITE.erl",1889}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,689},[{x,0}]}.
    {get_map_elements,{f,689},{tr,{x,0},{t_map,any,any}},{list,[nil,{x,1}]}}.
    {test,is_eq_exact,{f,689},[{x,1},{y,0}]}.
    {put_map_assoc,{f,0},
                   {literal,#{}},
                   {x,0},
                   0,
                   {list,[nil,{y,1},{literal,<<1>>},{y,0}]}}.
    {line,[{location,"map_SUITE.erl",1890}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,688},[{x,0}]}.
    {get_map_elements,{f,688},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{literal,<<1>>},{x,2},nil,{x,1}]}}.
    {test,is_eq_exact,{f,688},[{x,1},{y,1}]}.
    {test,is_eq_exact,{f,688},[{x,2},{y,0}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,688}.
    {badmatch,{x,0}}.
  {label,689}.
    {line,[{location,"map_SUITE.erl",1889}]}.
    {badmatch,{x,0}}.
  {label,690}.
    {line,[{location,"map_SUITE.erl",1885}]}.
    {badmatch,{x,0}}.


{function, t_build_and_match_structure, 1, 692}.
  {label,691}.
    {line,[{location,"map_SUITE.erl",1893}]}.
    {func_info,{atom,map_SUITE},{atom,t_build_and_match_structure},1}.
  {label,692}.
    {test,is_list,{f,691},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,"it"},{x,0}}.
    {line,[{location,"map_SUITE.erl",1894}]}.
    {call,1,{f,1107}}. % id/1
    {test_heap,8,1}.
    {put_list,{integer,95},{x,0},{x,1}}.
    {put_list,{integer,116},{x,1},{x,1}}.
    {put_list,{integer,101},{x,1},{x,1}}.
    {put_list,{integer,103},{x,1},{x,1}}.
    {put_map_assoc,{f,0},
                   {literal,#{}},
                   {x,1},
                   2,
                   {list,[{atom,any},
                          {atom,any},
                          {atom,val},
                          {x,1},
                          {literal,"a"},
                          {integer,42}]}}.
    {test_heap,8,2}.
    {put_tuple2,{x,1},{list,[{literal,"hi"},{literal,"=)"},{x,1}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{integer,42},{x,1},{x,1}}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"map_SUITE.erl",1895}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_nonempty_list,{f,694},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_eq_exact,{f,694},[{x,1},{integer,42}]}.
    {test,is_nonempty_list,{f,694},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_tuple,{f,694},[{x,1}]}.
    {test,test_arity,{f,694},[{x,1},3]}.
    {get_tuple_element,{x,1},0,{x,3}}.
    {test,is_eq_exact,{f,694},[{x,3},{literal,"hi"}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_map,{f,694},[{x,1}]}.
    {test,has_map_fields,{f,694},{x,1},{list,[{atom,any}]}}.
    {get_map_elements,{f,694},
                      {tr,{x,1},{t_map,any,any}},
                      {list,[{literal,"a"},{x,1},{atom,val},{x,3}]}}.
    {test,is_nonempty_list,{f,694},[{x,3}]}.
    {get_list,{x,3},{x,4},{x,3}}.
    {test,is_eq_exact,{f,694},[{x,4},{integer,103}]}.
    {test,is_nonempty_list,{f,694},[{x,3}]}.
    {get_list,{x,3},{x,4},{x,3}}.
    {test,is_eq_exact,{f,694},[{x,4},{integer,101}]}.
    {test,is_nonempty_list,{f,694},[{x,3}]}.
    {get_list,{x,3},{x,4},{x,3}}.
    {test,is_eq_exact,{f,694},[{x,4},{integer,116}]}.
    {test,is_nonempty_list,{f,694},[{x,3}]}.
    {get_list,{x,3},{x,4},{x,3}}.
    {test,is_eq_exact,{f,694},[{x,4},{integer,95}]}.
    {test,is_eq_exact,{f,694},[{x,1},{integer,42}]}.
    {test,is_nil,{f,694},[{x,2}]}.
    {test,is_eq_exact,{f,693},[{x,3},{y,0}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,693}.
    {line,[{location,"map_SUITE.erl",1898}]}.
    {badmatch,{x,3}}.
  {label,694}.
    {case_end,{x,0}}.


{function, t_build_and_match_variables, 1, 696}.
  {label,695}.
    {line,[{location,"map_SUITE.erl",1908}]}.
    {func_info,{atom,map_SUITE},{atom,t_build_and_match_variables},1}.
  {label,696}.
    {test,is_list,{f,695},[{x,0}]}.
    {allocate,14,0}.
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
                       {y,13}]}}.
    {move,{literal,#{}},{x,0}}.
    {line,[{location,"map_SUITE.erl",1909}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,13}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"map_SUITE.erl",1910}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,12}}.
    {move,{atom,a},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,11}}.
    {move,{integer,2},{x,0}}.
    {line,[{location,"map_SUITE.erl",1911}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,10}}.
    {move,{atom,b},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,9}}.
    {move,{integer,3},{x,0}}.
    {line,[{location,"map_SUITE.erl",1912}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,8}}.
    {move,{literal,"c"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,7}}.
    {move,{literal,"4"},{x,0}}.
    {line,[{location,"map_SUITE.erl",1913}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,6}}.
    {move,{literal,"d"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,5}}.
    {move,{literal,<<"5">>},{x,0}}.
    {line,[{location,"map_SUITE.erl",1914}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,4}}.
    {move,{literal,<<"e">>},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,3}}.
    {move,{literal,{"6",7}},{x,0}}.
    {line,[{location,"map_SUITE.erl",1915}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,2}}.
    {move,{literal,"f"},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,1}}.
    {move,{literal,#{"a" => 3}},{x,0}}.
    {line,[{location,"map_SUITE.erl",1916}]}.
    {call,1,{f,1107}}. % id/1
    {put_map_assoc,{f,0},{literal,#{}},{x,1},1,{list,[{y,12},{y,11}]}}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"map_SUITE.erl",1917}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,730},[{x,0}]}.
    {get_map_elements,{f,730},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{y,12},{x,1}]}}.
    {test,is_eq_exact,{f,730},[{x,1},{y,11}]}.
    {put_map_assoc,{f,0},{literal,#{}},{x,0},0,{list,[{y,12},{y,11}]}}.
    {put_map_assoc,{f,0},{x,0},{x,0},1,{list,[{y,10},{y,9}]}}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",1918}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,729},[{x,0}]}.
    {get_map_elements,{f,729},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{y,12},{x,1}]}}.
    {get_map_elements,{f,729},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{y,10},{x,2}]}}.
    {test,is_eq_exact,{f,729},[{x,1},{y,11}]}.
    {test,is_eq_exact,{f,729},[{x,2},{y,9}]}.
    {put_map_assoc,{f,0},{literal,#{}},{x,0},0,{list,[{y,12},{y,11}]}}.
    {put_map_assoc,{f,0},{x,0},{x,0},1,{list,[{y,10},{y,9}]}}.
    {put_map_assoc,{f,0},{x,0},{x,0},1,{list,[{y,8},{y,7}]}}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",1919}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,728},[{x,0}]}.
    {get_map_elements,{f,728},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{y,12},{x,1}]}}.
    {get_map_elements,{f,728},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{y,10},{x,2}]}}.
    {get_map_elements,{f,728},{tr,{x,0},{t_map,any,any}},{list,[{y,8},{x,3}]}}.
    {test,is_eq_exact,{f,728},[{x,1},{y,11}]}.
    {test,is_eq_exact,{f,728},[{x,2},{y,9}]}.
    {test,is_eq_exact,{f,728},[{x,3},{y,7}]}.
    {put_map_assoc,{f,0},{literal,#{}},{x,0},0,{list,[{y,12},{y,11}]}}.
    {put_map_assoc,{f,0},{x,0},{x,0},1,{list,[{y,10},{y,9}]}}.
    {put_map_assoc,{f,0},{x,0},{x,0},1,{list,[{y,8},{y,7}]}}.
    {put_map_assoc,{f,0},{x,0},{x,0},1,{list,[{y,6},{y,5}]}}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",1920}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,727},[{x,0}]}.
    {get_map_elements,{f,727},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{y,12},{x,1}]}}.
    {get_map_elements,{f,727},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{y,10},{x,2}]}}.
    {get_map_elements,{f,727},{tr,{x,0},{t_map,any,any}},{list,[{y,8},{x,3}]}}.
    {get_map_elements,{f,727},{tr,{x,0},{t_map,any,any}},{list,[{y,6},{x,4}]}}.
    {test,is_eq_exact,{f,727},[{x,1},{y,11}]}.
    {test,is_eq_exact,{f,727},[{x,2},{y,9}]}.
    {test,is_eq_exact,{f,727},[{x,3},{y,7}]}.
    {test,is_eq_exact,{f,727},[{x,4},{y,5}]}.
    {put_map_assoc,{f,0},{literal,#{}},{x,0},0,{list,[{y,12},{y,11}]}}.
    {put_map_assoc,{f,0},{x,0},{x,0},1,{list,[{y,10},{y,9}]}}.
    {put_map_assoc,{f,0},{x,0},{x,0},1,{list,[{y,8},{y,7}]}}.
    {put_map_assoc,{f,0},{x,0},{x,0},1,{list,[{y,6},{y,5}]}}.
    {put_map_assoc,{f,0},{x,0},{x,0},1,{list,[{y,4},{y,3}]}}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",1921}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,726},[{x,0}]}.
    {get_map_elements,{f,726},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{y,12},{x,1}]}}.
    {get_map_elements,{f,726},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{y,10},{x,2}]}}.
    {get_map_elements,{f,726},{tr,{x,0},{t_map,any,any}},{list,[{y,8},{x,3}]}}.
    {get_map_elements,{f,726},{tr,{x,0},{t_map,any,any}},{list,[{y,6},{x,4}]}}.
    {get_map_elements,{f,726},{tr,{x,0},{t_map,any,any}},{list,[{y,4},{x,5}]}}.
    {test,is_eq_exact,{f,726},[{x,1},{y,11}]}.
    {test,is_eq_exact,{f,726},[{x,2},{y,9}]}.
    {test,is_eq_exact,{f,726},[{x,3},{y,7}]}.
    {test,is_eq_exact,{f,726},[{x,4},{y,5}]}.
    {test,is_eq_exact,{f,726},[{x,5},{y,3}]}.
    {put_map_assoc,{f,0},{literal,#{}},{x,0},0,{list,[{y,12},{y,11}]}}.
    {put_map_assoc,{f,0},{x,0},{x,0},1,{list,[{y,10},{y,9}]}}.
    {put_map_assoc,{f,0},{x,0},{x,0},1,{list,[{y,8},{y,7}]}}.
    {put_map_assoc,{f,0},{x,0},{x,0},1,{list,[{y,6},{y,5}]}}.
    {put_map_assoc,{f,0},{x,0},{x,0},1,{list,[{y,4},{y,3}]}}.
    {put_map_assoc,{f,0},{x,0},{x,0},1,{list,[{y,2},{y,1}]}}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",1922}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,725},[{x,0}]}.
    {get_map_elements,{f,725},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{y,12},{x,1}]}}.
    {get_map_elements,{f,725},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{y,10},{x,2}]}}.
    {get_map_elements,{f,725},{tr,{x,0},{t_map,any,any}},{list,[{y,8},{x,3}]}}.
    {get_map_elements,{f,725},{tr,{x,0},{t_map,any,any}},{list,[{y,6},{x,4}]}}.
    {get_map_elements,{f,725},{tr,{x,0},{t_map,any,any}},{list,[{y,4},{x,5}]}}.
    {get_map_elements,{f,725},{tr,{x,0},{t_map,any,any}},{list,[{y,2},{x,6}]}}.
    {test,is_eq_exact,{f,725},[{x,1},{y,11}]}.
    {test,is_eq_exact,{f,725},[{x,2},{y,9}]}.
    {test,is_eq_exact,{f,725},[{x,3},{y,7}]}.
    {test,is_eq_exact,{f,725},[{x,4},{y,5}]}.
    {test,is_eq_exact,{f,725},[{x,5},{y,3}]}.
    {test,is_eq_exact,{f,725},[{x,6},{y,1}]}.
    {put_map_assoc,{f,0},{literal,#{}},{x,0},0,{list,[{y,4},{integer,3}]}}.
    {put_map_assoc,{f,0},{x,0},{x,0},1,{list,[{y,6},{integer,4}]}}.
    {init_yregs,{list,[{y,1},{y,5}]}}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",1924}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,724},[{x,0}]}.
    {get_map_elements,{f,724},{tr,{x,0},{t_map,any,any}},{list,[{y,6},{x,1}]}}.
    {get_map_elements,{f,724},{tr,{x,0},{t_map,any,any}},{list,[{y,4},{x,2}]}}.
    {test,is_eq_exact,{f,724},[{x,1},{integer,4}]}.
    {test,is_eq_exact,{f,724},[{x,2},{integer,3}]}.
    {put_map_assoc,{f,0},{literal,#{}},{x,0},0,{list,[{y,4},{integer,3}]}}.
    {put_map_assoc,{f,0},{x,0},{x,0},1,{list,[{y,6},{integer,4}]}}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",1925}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,723},[{x,0}]}.
    {get_map_elements,{f,723},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{literal,<<"5">>},{x,1}]}}.
    {get_map_elements,{f,723},{tr,{x,0},{t_map,any,any}},{list,[{y,6},{x,2}]}}.
    {get_map_elements,{f,723},{tr,{x,0},{t_map,any,any}},{list,[{y,4},{x,3}]}}.
    {test,is_eq_exact,{f,723},[{x,1},{integer,3}]}.
    {test,is_eq_exact,{f,723},[{x,2},{integer,4}]}.
    {test,is_eq_exact,{f,723},[{x,3},{integer,3}]}.
    {put_map_assoc,{f,0},
                   {literal,#{}},
                   {x,0},
                   0,
                   {list,[{literal,<<"5">>},{integer,3}]}}.
    {put_map_assoc,{f,0},{x,0},{x,0},1,{list,[{y,6},{integer,4}]}}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",1926}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,722},[{x,0}]}.
    {get_map_elements,{f,722},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{literal,<<"5">>},{x,1}]}}.
    {get_map_elements,{f,722},{tr,{x,0},{t_map,any,any}},{list,[{y,6},{x,2}]}}.
    {get_map_elements,{f,722},{tr,{x,0},{t_map,any,any}},{list,[{y,4},{x,3}]}}.
    {test,is_eq_exact,{f,722},[{x,1},{integer,3}]}.
    {test,is_eq_exact,{f,722},[{x,2},{integer,4}]}.
    {test,is_eq_exact,{f,722},[{x,3},{integer,3}]}.
    {put_map_assoc,{f,0},{literal,#{}},{x,0},0,{list,[{y,10},{y,9}]}}.
    {put_map_assoc,{f,0},{x,0},{x,0},1,{list,[{y,12},{y,11}]}}.
    {put_map_assoc,{f,0},{literal,#{}},{x,0},1,{list,[{y,8},{x,0}]}}.
    {put_map_assoc,{f,0},{literal,#{}},{x,1},1,{list,[{y,4},{y,3}]}}.
    {put_map_assoc,{f,0},{x,1},{x,0},2,{list,[{y,6},{x,0}]}}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",1929}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,721},[{x,0}]}.
    {get_map_elements,{f,721},{tr,{x,0},{t_map,any,any}},{list,[{y,6},{x,1}]}}.
    {get_map_elements,{f,721},{tr,{x,0},{t_map,any,any}},{list,[{y,4},{x,2}]}}.
    {test,is_map,{f,721},[{x,1}]}.
    {get_map_elements,{f,721},{tr,{x,1},{t_map,any,any}},{list,[{y,8},{x,1}]}}.
    {test,is_map,{f,721},[{x,1}]}.
    {get_map_elements,{f,721},
                      {tr,{x,1},{t_map,any,any}},
                      {list,[{y,12},{x,3}]}}.
    {get_map_elements,{f,721},
                      {tr,{x,1},{t_map,any,any}},
                      {list,[{y,10},{x,1}]}}.
    {test,is_eq_exact,{f,721},[{x,3},{y,11}]}.
    {test,is_eq_exact,{f,721},[{x,1},{y,9}]}.
    {test,is_eq_exact,{f,721},[{x,2},{y,3}]}.
    {put_map_assoc,{f,0},{literal,#{}},{x,0},0,{list,[{y,4},{integer,99}]}}.
    {put_map_assoc,{f,0},{literal,#{}},{x,0},1,{list,[{y,6},{x,0}]}}.
    {put_map_assoc,{f,0},{x,0},{x,0},1,{list,[{y,2},{integer,99}]}}.
    {init_yregs,{list,[{y,3}]}}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",1930}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,720},[{x,0}]}.
    {get_map_elements,{f,720},{tr,{x,0},{t_map,any,any}},{list,[{y,6},{x,1}]}}.
    {get_map_elements,{f,720},{tr,{x,0},{t_map,any,any}},{list,[{y,2},{x,2}]}}.
    {test,is_map,{f,720},[{x,1}]}.
    {get_map_elements,{f,720},{tr,{x,1},{t_map,any,any}},{list,[{y,4},{x,1}]}}.
    {test,is_eq_exact,{f,720},[{x,2},{x,1}]}.
    {put_map_assoc,{f,0},
                   {literal,#{}},
                   {x,0},
                   0,
                   {list,[{atom,a},{integer,1},{atom,b},{integer,1}]}}.
    {put_map_assoc,{f,0},{x,0},{x,0},1,{list,[{y,12},{y,11}]}}.
    {put_map_assoc,{f,0},{x,0},{x,0},1,{list,[{y,10},{y,9}]}}.
    {put_map_assoc,{f,0},{x,0},{x,0},1,{list,[{y,8},{y,7}]}}.
    {put_map_assoc,{f,0},{x,0},{x,0},1,{list,[{y,6},{literal,"nope"}]}}.
    {put_map_assoc,{f,0},{x,0},{x,0},1,{list,[{literal,"4"},{literal,"ok"}]}}.
    {init_yregs,{list,[{y,9},{y,11}]}}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",1934}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,719},[{x,0}]}.
    {test,has_map_fields,{f,719},{x,0},{list,[{atom,a},{atom,b}]}}.
    {get_map_elements,{f,719},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{literal,"4"},{x,1}]}}.
    {test,has_map_fields,{f,719},{x,0},{list,[{y,12}]}}.
    {test,has_map_fields,{f,719},{x,0},{list,[{y,10}]}}.
    {get_map_elements,{f,719},{tr,{x,0},{t_map,any,any}},{list,[{y,8},{x,2}]}}.
    {get_map_elements,{f,719},{tr,{x,0},{t_map,any,any}},{list,[{y,6},{x,3}]}}.
    {test,is_eq_exact,{f,719},[{x,1},{literal,"ok"}]}.
    {test,is_eq_exact,{f,719},[{x,2},{y,7}]}.
    {test,is_eq_exact,
          {f,719},
          [{x,3},{tr,{x,1},{t_cons,{t_integer,{107,111}},nil}}]}.
    {init_yregs,{list,[{y,6},{y,7},{y,8},{y,10},{y,12}]}}.
    {move,{literal,#{-3 => c,-2 => b,-1 => a}},{x,0}}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",1937}]}.
    {call,1,{f,732}}. % match_function_map_neg_keys/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {put_map_assoc,{f,0},{literal,#{}},{x,0},0,{list,[{y,13},{integer,42}]}}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",1940}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,718},[{x,0}]}.
    {get_map_elements,{f,718},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{y,13},{x,1}]}}.
    {test,is_eq_exact,{f,718},[{x,1},{integer,42}]}.
    {put_map_assoc,{f,0},{literal,#{}},{x,0},0,{list,[{y,0},{integer,42}]}}.
    {init_yregs,{list,[{y,13}]}}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",1941}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,717},[{x,0}]}.
    {get_map_elements,{f,717},{tr,{x,0},{t_map,any,any}},{list,[{y,0},{x,1}]}}.
    {test,is_eq_exact,{f,717},[{x,1},{integer,42}]}.
    {move,nil,{x,0}}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",1944}]}.
    {call,1,{f,1107}}. % id/1
    {put_map_assoc,{f,0},{literal,#{}},{x,1},1,{list,[{x,0},{atom,ok}]}}.
    {put_map_assoc,{f,0},{x,1},{x,1},2,{list,[{integer,1},{integer,2}]}}.
    {move,{x,0},{y,13}}.
    {move,{x,1},{x,0}}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",1945}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,716},[{x,0}]}.
    {get_map_elements,{f,716},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{integer,1},{x,1}]}}.
    {get_map_elements,{f,716},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{y,13},{x,2}]}}.
    {test,is_eq_exact,{f,716},[{x,1},{integer,2}]}.
    {test,is_eq_exact,{f,716},[{x,2},{atom,ok}]}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",1947}]}.
    {bs_create_bin,{f,0},
                   0,0,2,
                   {y,13},
                   {list,[{atom,integer},1,1,nil,{integer,0},{integer,258}]}}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",1948}]}.
    {bs_create_bin,{f,0},
                   0,0,2,
                   {x,0},
                   {list,[{atom,integer},1,1,nil,{integer,0},{integer,258}]}}.
    {put_map_assoc,{f,0},
                   {literal,#{}},
                   {x,0},
                   1,
                   {list,[{x,0},{literal,"three"}]}}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,715},[{x,0}]}.
    {get_map_elements,{f,715},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{tr,{y,13},{t_bitstring,2,false}},{x,1}]}}.
    {test,is_eq_exact,{f,715},[{x,1},{literal,"three"}]}.
    {put_map_assoc,{f,0},{literal,#{}},{x,0},0,{list,[{y,4},{integer,3}]}}.
    {'catch',{y,13},{f,697}}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",1951}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,703},[{x,0}]}.
    {get_map_elements,{f,703},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{atom,x},{x,1}]}}.
    {get_map_elements,{f,703},{tr,{x,0},{t_map,any,any}},{list,[{y,4},{x,2}]}}.
    {test,is_eq_exact,{f,703},[{x,1},{integer,2}]}.
    {test,is_eq_exact,{f,703},[{x,2},{integer,3}]}.
  {label,697}.
    {catch_end,{y,13}}.
    {test,is_tagged_tuple,{f,714},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,714},[{x,1}]}.
    {test,test_arity,{f,714},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,714},[{x,1},2,{atom,badmatch}]}.
    {put_map_assoc,{f,0},{literal,#{}},{x,0},0,{list,[{y,4},{integer,3}]}}.
    {'catch',{y,12},{f,698}}.
    {init_yregs,{list,[{y,13}]}}.
    {line,[{scope,"\v\f"},{location,"map_SUITE.erl",1952}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,704},[{x,0}]}.
    {get_map_elements,{f,704},{tr,{x,0},{t_map,any,any}},{list,[{y,4},{x,1}]}}.
    {test,is_eq_exact,{f,704},[{x,1},{integer,2}]}.
  {label,698}.
    {catch_end,{y,12}}.
    {test,is_tagged_tuple,{f,713},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,713},[{x,1}]}.
    {test,test_arity,{f,713},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,713},[{x,1},2,{atom,badmatch}]}.
    {'catch',{y,11},{f,699}}.
    {move,{literal,{a,b,c}},{x,0}}.
    {line,[{scope,"\t\n"},{location,"map_SUITE.erl",1953}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,705},[{x,0}]}.
    {get_map_elements,{f,705},{tr,{x,0},{t_map,any,any}},{list,[{y,4},{x,1}]}}.
    {test,is_eq_exact,{f,705},[{x,1},{integer,3}]}.
  {label,699}.
    {catch_end,{y,11}}.
    {test,is_tagged_tuple,{f,712},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,712},[{x,1}]}.
    {test,test_arity,{f,712},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,712},[{x,1},2,{atom,badmatch}]}.
    {put_map_assoc,{f,0},{literal,#{}},{x,0},0,{list,[{y,2},{integer,3}]}}.
    {'catch',{y,10},{f,700}}.
    {init_yregs,{list,[{y,2}]}}.
    {line,[{scope,[7,8]},{location,"map_SUITE.erl",1954}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,706},[{x,0}]}.
    {get_map_elements,{f,706},{tr,{x,0},{t_map,any,any}},{list,[{y,4},{x,1}]}}.
    {test,is_eq_exact,{f,706},[{x,1},{integer,3}]}.
  {label,700}.
    {catch_end,{y,10}}.
    {test,is_tagged_tuple,{f,711},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,711},[{x,1}]}.
    {test,test_arity,{f,711},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,711},[{x,1},2,{atom,badmatch}]}.
    {'catch',{y,9},{f,701}}.
    {move,{y,0},{x,0}}.
    {line,[{scope,[5,6]},{location,"map_SUITE.erl",1955}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,707},[{x,0}]}.
    {get_map_elements,{f,707},{tr,{x,0},{t_map,any,any}},{list,[{y,4},{x,1}]}}.
    {test,is_eq_exact,{f,707},[{x,1},{integer,3}]}.
  {label,701}.
    {catch_end,{y,9}}.
    {test,is_tagged_tuple,{f,710},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,710},[{x,1}]}.
    {test,test_arity,{f,710},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,710},[{x,1},2,{atom,badmatch}]}.
    {put_map_assoc,{f,0},{literal,#{}},{x,0},0,{list,[{y,0},{integer,42}]}}.
    {'catch',{y,8},{f,702}}.
    {init_yregs,{list,[{y,4}]}}.
    {line,[{scope,[3,4]},{location,"map_SUITE.erl",1956}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,708},[{x,0}]}.
    {get_map_elements,{f,708},{tr,{x,0},{t_map,any,any}},{list,[{y,0},{x,1}]}}.
    {test,is_eq_exact,{f,708},[{x,1},{integer,3}]}.
  {label,702}.
    {catch_end,{y,8}}.
    {test,is_tagged_tuple,{f,709},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,709},[{x,1}]}.
    {test,test_arity,{f,709},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,709},[{x,1},2,{atom,badmatch}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,14}.
    return.
  {label,703}.
    {line,[{scope,"\v"},{location,"map_SUITE.erl",1951}]}.
    {badmatch,{x,0}}.
  {label,704}.
    {line,[{scope,"\t"},{location,"map_SUITE.erl",1952}]}.
    {badmatch,{x,0}}.
  {label,705}.
    {line,[{scope,[7]},{location,"map_SUITE.erl",1953}]}.
    {badmatch,{x,0}}.
  {label,706}.
    {line,[{scope,[5]},{location,"map_SUITE.erl",1954}]}.
    {badmatch,{x,0}}.
  {label,707}.
    {line,[{scope,[3]},{location,"map_SUITE.erl",1955}]}.
    {badmatch,{x,0}}.
  {label,708}.
    {line,[{scope,[1]},{location,"map_SUITE.erl",1956}]}.
    {badmatch,{x,0}}.
  {label,709}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",1956}]}.
    {badmatch,{x,0}}.
  {label,710}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",1955}]}.
    {badmatch,{x,0}}.
  {label,711}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",1954}]}.
    {badmatch,{x,0}}.
  {label,712}.
    {line,[{scope,[6]},{location,"map_SUITE.erl",1953}]}.
    {badmatch,{x,0}}.
  {label,713}.
    {line,[{scope,"\b"},{location,"map_SUITE.erl",1952}]}.
    {badmatch,{x,0}}.
  {label,714}.
    {line,[{scope,"\n"},{location,"map_SUITE.erl",1951}]}.
    {badmatch,{x,0}}.
  {label,715}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",1948}]}.
    {badmatch,{x,0}}.
  {label,716}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",1945}]}.
    {badmatch,{x,0}}.
  {label,717}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",1941}]}.
    {badmatch,{x,0}}.
  {label,718}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",1940}]}.
    {badmatch,{x,0}}.
  {label,719}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",1933}]}.
    {badmatch,{x,0}}.
  {label,720}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",1930}]}.
    {badmatch,{x,0}}.
  {label,721}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",1928}]}.
    {badmatch,{x,0}}.
  {label,722}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",1926}]}.
    {badmatch,{x,0}}.
  {label,723}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",1925}]}.
    {badmatch,{x,0}}.
  {label,724}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",1924}]}.
    {badmatch,{x,0}}.
  {label,725}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",1922}]}.
    {badmatch,{x,0}}.
  {label,726}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",1921}]}.
    {badmatch,{x,0}}.
  {label,727}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",1920}]}.
    {badmatch,{x,0}}.
  {label,728}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",1919}]}.
    {badmatch,{x,0}}.
  {label,729}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",1918}]}.
    {badmatch,{x,0}}.
  {label,730}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",1917}]}.
    {badmatch,{x,0}}.


{function, match_function_map_neg_keys, 1, 732}.
  {label,731}.
    {line,[{location,"map_SUITE.erl",1960}]}.
    {func_info,{atom,map_SUITE},{atom,match_function_map_neg_keys},1}.
  {label,732}.
    {'%',{var_info,{x,0},
                   [{type,{t_map,{t_integer,{-3,-1}},{t_atom,[a,b,c]}}}]}}.
    {get_map_elements,{f,731},
                      {tr,{x,0},{t_map,{t_integer,{-3,-1}},{t_atom,[a,b,c]}}},
                      {list,[{integer,-1},
                             {x,3},
                             {integer,-2},
                             {x,2},
                             {integer,-3},
                             {x,1}]}}.
    {test,is_eq_exact,{f,731},[{tr,{x,1},{t_atom,[a,b,c]}},{atom,c}]}.
    {test,is_eq_exact,{f,731},[{tr,{x,2},{t_atom,[a,b,c]}},{atom,b}]}.
    {test,is_eq_exact,{f,731},[{tr,{x,3},{t_atom,[a,b,c]}},{atom,a}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, t_update_assoc_variables, 1, 734}.
  {label,733}.
    {line,[{location,"map_SUITE.erl",1962}]}.
    {func_info,{atom,map_SUITE},{atom,t_update_assoc_variables},1}.
  {label,734}.
    {test,is_list,{f,733},[{x,0}]}.
    {allocate,5,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3},{y,4}]}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"map_SUITE.erl",1963}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,4}}.
    {move,{integer,2},{x,0}}.
    {line,[{location,"map_SUITE.erl",1964}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,3}}.
    {move,{float,3.0},{x,0}}.
    {line,[{location,"map_SUITE.erl",1965}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,2}}.
    {move,{integer,4},{x,0}}.
    {line,[{location,"map_SUITE.erl",1966}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,1}}.
    {move,{integer,5},{x,0}}.
    {line,[{location,"map_SUITE.erl",1967}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,0}}.
    {move,{float,2.0},{x,0}}.
    {line,[{location,"map_SUITE.erl",1968}]}.
    {call,1,{f,1107}}. % id/1
    {put_map_assoc,{f,0},{literal,#{}},{x,1},1,{list,[{y,4},{atom,a}]}}.
    {put_map_assoc,{f,0},{x,1},{x,1},2,{list,[{y,3},{atom,b}]}}.
    {put_map_assoc,{f,0},{x,1},{x,1},2,{list,[{y,2},{atom,c}]}}.
    {put_map_assoc,{f,0},{x,1},{x,1},2,{list,[{y,1},{atom,d}]}}.
    {put_map_assoc,{f,0},{x,1},{x,1},2,{list,[{y,0},{atom,e}]}}.
    {put_map_assoc,{f,0},{x,1},{x,2},2,{list,[{y,4},{integer,42}]}}.
    {put_map_assoc,{f,0},{x,2},{x,2},3,{list,[{y,3},{integer,100}]}}.
    {put_map_assoc,{f,0},{x,2},{x,2},3,{list,[{y,1},{literal,[a,b,c]}]}}.
    {get_map_elements,
        {f,744},
        {tr,{x,2},
            {t_map,any,
                {t_union,
                    {t_atom,[a,b,c,d,e]},
                    {t_cons,{t_atom,[a,b,c]},nil},
                    {t_integer,{42,100}},
                    none,none}}},
        {list,
            [{float,3.0},
             {x,7},
             {integer,5},
             {x,6},
             {integer,4},
             {x,5},
             {integer,2},
             {x,4},
             {integer,1},
             {x,3}]}}.
    {test,is_eq_exact,
          {f,744},
          [{tr,{x,3},
               {t_union,{t_atom,[a,b,c,d,e]},
                        {t_cons,{t_atom,[a,b,c]},nil},
                        {t_integer,{42,100}},
                        none,none}},
           {integer,42}]}.
    {test,is_eq_exact,
          {f,744},
          [{tr,{x,4},
               {t_union,{t_atom,[a,b,c,d,e]},
                        {t_cons,{t_atom,[a,b,c]},nil},
                        {t_integer,{42,100}},
                        none,none}},
           {integer,100}]}.
    {test,is_eq_exact,
          {f,744},
          [{tr,{x,5},
               {t_union,{t_atom,[a,b,c,d,e]},
                        {t_cons,{t_atom,[a,b,c]},nil},
                        {t_integer,{42,100}},
                        none,none}},
           {literal,[a,b,c]}]}.
    {test,is_eq_exact,
          {f,744},
          [{tr,{x,6},
               {t_union,{t_atom,[a,b,c,d,e]},
                        {t_cons,{t_atom,[a,b,c]},nil},
                        {t_integer,{42,100}},
                        none,none}},
           {atom,e}]}.
    {test,is_eq_exact,
          {f,744},
          [{tr,{x,7},
               {t_union,{t_atom,[a,b,c,d,e]},
                        {t_cons,{t_atom,[a,b,c]},nil},
                        {t_integer,{42,100}},
                        none,none}},
           {atom,c}]}.
    {put_map_assoc,{f,0},
                   {x,1},
                   {x,2},
                   2,
                   {list,[{float,1.0},{atom,float},{float,2.0},{atom,wrong}]}}.
    {line,[{location,"map_SUITE.erl",1974}]}.
    {put_map_exact,{f,0},{x,2},{x,2},3,{list,[{integer,1},{integer,42}]}}.
    {put_map_assoc,{f,0},{x,2},{x,0},3,{list,[{x,0},{integer,100}]}}.
    {put_map_assoc,{f,0},{x,0},{x,0},2,{list,[{float,4.0},{literal,[a,b,c]}]}}.
    {get_map_elements,
        {f,743},
        {tr,{x,0},
            {t_map,any,
                {t_union,
                    {t_atom,any},
                    {t_cons,{t_atom,[a,b,c]},nil},
                    {t_integer,{42,100}},
                    none,none}}},
        {list,
            [{float,2.0},
             {x,6},
             {integer,5},
             {x,5},
             {integer,4},
             {x,4},
             {integer,2},
             {x,3},
             {integer,1},
             {x,2}]}}.
    {get_map_elements,
        {f,743},
        {tr,{x,0},
            {t_map,any,
                {t_union,
                    {t_atom,any},
                    {t_cons,{t_atom,[a,b,c]},nil},
                    {t_integer,{42,100}},
                    none,none}}},
        {list,[{y,2},{x,7}]}}.
    {test,is_eq_exact,
          {f,743},
          [{tr,{x,2},
               {t_union,{t_atom,any},
                        {t_cons,{t_atom,[a,b,c]},nil},
                        {t_integer,{42,100}},
                        none,none}},
           {integer,42}]}.
    {test,is_eq_exact,
          {f,743},
          [{tr,{x,3},
               {t_union,{t_atom,any},
                        {t_cons,{t_atom,[a,b,c]},nil},
                        {t_integer,{42,100}},
                        none,none}},
           {atom,b}]}.
    {test,is_eq_exact,
          {f,743},
          [{tr,{x,4},
               {t_union,{t_atom,any},
                        {t_cons,{t_atom,[a,b,c]},nil},
                        {t_integer,{42,100}},
                        none,none}},
           {atom,d}]}.
    {test,is_eq_exact,
          {f,743},
          [{tr,{x,5},
               {t_union,{t_atom,any},
                        {t_cons,{t_atom,[a,b,c]},nil},
                        {t_integer,{42,100}},
                        none,none}},
           {atom,e}]}.
    {test,is_eq_exact,
          {f,743},
          [{tr,{x,6},
               {t_union,{t_atom,any},
                        {t_cons,{t_atom,[a,b,c]},nil},
                        {t_integer,{42,100}},
                        none,none}},
           {integer,100}]}.
    {test,is_eq_exact,
          {f,743},
          [{tr,{x,7},
               {t_union,{t_atom,any},
                        {t_cons,{t_atom,[a,b,c]},nil},
                        {t_integer,{42,100}},
                        none,none}},
           {atom,c}]}.
    {put_map_assoc,{f,0},{x,1},{x,0},2,{list,[{y,2},{atom,new}]}}.
    {get_map_elements,{f,742},
                      {tr,{x,0},{t_map,any,{t_atom,any}}},
                      {list,[{integer,5},
                             {x,5},
                             {integer,4},
                             {x,4},
                             {integer,2},
                             {x,3},
                             {integer,1},
                             {x,2}]}}.
    {test,is_eq_exact,{f,742},[{tr,{x,2},{t_atom,any}},{atom,a}]}.
    {test,is_eq_exact,{f,742},[{tr,{x,3},{t_atom,any}},{atom,b}]}.
    {test,is_eq_exact,{f,742},[{tr,{x,4},{t_atom,any}},{atom,d}]}.
    {test,is_eq_exact,{f,742},[{tr,{x,5},{t_atom,any}},{atom,e}]}.
    {line,[{location,"map_SUITE.erl",1978}]}.
    {put_map_exact,{f,0},{x,1},{x,2},2,{list,[{float,3.0},{atom,wrong}]}}.
    {put_map_assoc,{f,0},{x,2},{x,2},3,{list,[{y,2},{atom,new}]}}.
    {test,is_eq_exact,
          {f,741},
          [{tr,{x,2},{t_map,any,{t_atom,any}}},
           {tr,{x,0},{t_map,any,{t_atom,any}}}]}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",1980}]}.
    {bs_create_bin,{f,0},
                   0,2,2,
                   {x,0},
                   {list,[{atom,integer},1,1,nil,{integer,0},{integer,258}]}}.
    {put_map_assoc,{f,0},{x,1},{x,0},2,{list,[{x,0},{atom,val}]}}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3},{y,4}]}}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,740},[{x,0}]}.
    {bs_create_bin,{f,740},
                   0,1,2,
                   {x,1},
                   {list,[{atom,integer},1,1,nil,{integer,0},{integer,258}]}}.
    {get_map_elements,{f,740},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{tr,{x,1},{t_bitstring,2,false}},{x,1}]}}.
    {test,is_eq_exact,{f,740},[{x,1},{atom,val}]}.
    {move,{atom,badmap},{x,0}}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",1983}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,3}}.
    {'catch',{y,4},{f,736}}.
    {test,is_map,{f,735},[{x,0}]}.
    {put_map_assoc,{f,0},{x,0},{x,0},1,{list,[{atom,nonexisting},{atom,val}]}}.
    {jump,{f,736}}.
  {label,735}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,badmap},{y,3}]}}.
    {line,[{scope,[3]},{location,"map_SUITE.erl",1984}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,736}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,739},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,739},[{x,1}]}.
    {test,test_arity,{f,739},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,739},[{x,1},2,{atom,badmap}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,{f,739},[{x,1},{y,3}]}.
    {'catch',{y,3},{f,737}}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,badmap},{literal,<<>>}]}}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",1985}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,737}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,738},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,738},[{x,1}]}.
    {test,test_arity,{f,738},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,738},[{x,1},{literal,{badmap,<<>>}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,5}.
    return.
  {label,738}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",1985}]}.
    {badmatch,{x,0}}.
  {label,739}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",1984}]}.
    {badmatch,{x,0}}.
  {label,740}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",1980}]}.
    {badmatch,{x,0}}.
  {label,741}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",1978}]}.
    {badmatch,{x,2}}.
  {label,742}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",1977}]}.
    {badmatch,{x,0}}.
  {label,743}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",1974}]}.
    {badmatch,{x,0}}.
  {label,744}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",1973}]}.
    {badmatch,{x,2}}.


{function, t_update_exact_variables, 1, 746}.
  {label,745}.
    {line,[{location,"map_SUITE.erl",1988}]}.
    {func_info,{atom,map_SUITE},{atom,t_update_exact_variables},1}.
  {label,746}.
    {test,is_list,{f,745},[{x,0}]}.
    {allocate,8,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3},{y,4},{y,5},{y,6},{y,7}]}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"map_SUITE.erl",1989}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,7}}.
    {move,{integer,2},{x,0}}.
    {line,[{location,"map_SUITE.erl",1990}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,6}}.
    {move,{float,3.0},{x,0}}.
    {line,[{location,"map_SUITE.erl",1991}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,5}}.
    {move,{integer,4},{x,0}}.
    {line,[{location,"map_SUITE.erl",1992}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,4}}.
    {move,{literal,#{1 => a,2 => b,4 => d,5 => e,3.0 => c}},{x,0}}.
    {line,[{location,"map_SUITE.erl",1994}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,0}}.
    {test,is_map,{f,757},[{x,0}]}.
    {line,[{location,"map_SUITE.erl",1996}]}.
    {put_map_exact,{f,0},{x,0},{x,0},1,{list,[{y,7},{integer,42}]}}.
    {put_map_exact,{f,0},{x,0},{x,0},1,{list,[{y,6},{integer,100}]}}.
    {put_map_exact,{f,0},{x,0},{x,0},1,{list,[{y,4},{literal,[a,b,c]}]}}.
    {get_map_elements,{f,771},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{float,3.0},
                             {x,4},
                             {integer,5},
                             {x,3},
                             {integer,2},
                             {x,2},
                             {integer,1},
                             {x,1}]}}.
    {test,is_eq_exact,{f,771},[{x,1},{integer,42}]}.
    {test,is_eq_exact,{f,771},[{x,2},{integer,100}]}.
    {test,is_eq_exact,{f,771},[{x,3},{atom,e}]}.
    {test,is_eq_exact,{f,771},[{x,4},{atom,c}]}.
    {line,[{location,"map_SUITE.erl",1998}]}.
    {put_map_exact,{f,0},{y,0},{x,1},1,{list,[{y,7},{atom,wrong}]}}.
    {put_map_exact,{f,0},{x,1},{x,1},2,{list,[{integer,1},{atom,also_wrong}]}}.
    {put_map_assoc,{f,0},{x,1},{x,1},2,{list,[{y,7},{integer,42}]}}.
    {put_map_assoc,{f,0},{x,1},{x,1},2,{list,[{integer,2},{atom,wrong}]}}.
    {put_map_exact,{f,0},{x,1},{x,1},2,{list,[{y,6},{integer,100}]}}.
    {put_map_exact,{f,0},{x,1},{x,1},2,{list,[{integer,4},{literal,[a,b,c]}]}}.
    {test,is_eq_exact,
          {f,770},
          [{tr,{x,1},{t_map,any,any}},{tr,{x,0},{t_map,any,any}}]}.
    {line,[{location,"map_SUITE.erl",2000}]}.
    {put_map_exact,{f,0},{y,0},{x,0},0,{list,[{y,5},{atom,new}]}}.
    {get_map_elements,{f,769},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{float,3.0},
                             {x,3},
                             {integer,5},
                             {x,2},
                             {integer,1},
                             {x,1}]}}.
    {get_map_elements,{f,769},{tr,{x,0},{t_map,any,any}},{list,[{y,6},{x,4}]}}.
    {get_map_elements,{f,769},{tr,{x,0},{t_map,any,any}},{list,[{y,4},{x,5}]}}.
    {test,is_eq_exact,{f,769},[{x,1},{atom,a}]}.
    {test,is_eq_exact,{f,769},[{x,2},{atom,e}]}.
    {test,is_eq_exact,{f,769},[{x,3},{atom,new}]}.
    {test,is_eq_exact,{f,769},[{x,4},{atom,b}]}.
    {test,is_eq_exact,{f,769},[{x,5},{atom,d}]}.
    {put_map_assoc,{f,0},{y,0},{x,1},1,{list,[{float,3.0},{atom,wrong}]}}.
    {line,[{location,"map_SUITE.erl",2002}]}.
    {put_map_exact,{f,0},{x,1},{x,1},2,{list,[{y,5},{atom,new}]}}.
    {test,is_eq_exact,
          {f,768},
          [{tr,{x,1},{t_map,any,any}},{tr,{x,0},{t_map,any,any}}]}.
    {put_map_assoc,{f,0},{y,0},{x,1},1,{list,[{integer,3},{atom,right}]}}.
    {line,[{location,"map_SUITE.erl",2003}]}.
    {put_map_exact,{f,0},{x,1},{x,2},2,{list,[{float,3.0},{atom,new}]}}.
    {test,is_eq_exact,
          {f,747},
          [{tr,{x,0},{t_map,any,any}},{tr,{x,2},{t_map,any,any}}]}.
    {line,[{scope,[14]},{location,"map_SUITE.erl",2003}]}.
    {badmatch,{atom,false}}.
  {label,747}.
    {line,[{location,"map_SUITE.erl",2004}]}.
    {put_map_exact,{f,0},{x,1},{x,0},2,{list,[{y,5},{atom,new}]}}.
    {get_map_elements,{f,767},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{float,3.0},{x,2},{integer,3},{x,1}]}}.
    {test,is_eq_exact,{f,767},[{x,1},{atom,right}]}.
    {test,is_eq_exact,{f,767},[{x,2},{atom,new}]}.
    {init_yregs,{list,[{y,4},{y,5}]}}.
    {move,{literal,#{1 => val}},{x,0}}.
    {line,[{scope,[14]},{location,"map_SUITE.erl",2006}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,756},[{x,0}]}.
    {put_map_assoc,{f,0},{x,0},{x,0},1,{list,[{float,1.0},{atom,new_val1}]}}.
    {line,[{location,"map_SUITE.erl",2007}]}.
    {put_map_exact,{f,0},{x,0},{x,0},1,{list,[{y,7},{atom,update}]}}.
    {put_map_assoc,{f,0},{x,0},{x,0},1,{list,[{y,7},{atom,update3}]}}.
    {put_map_exact,{f,0},{x,0},{x,0},1,{list,[{y,7},{atom,update2}]}}.
    {put_map_exact,{f,0},{x,0},{x,0},1,{list,[{float,1.0},{atom,new_val4}]}}.
    {get_map_elements,{f,766},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{integer,1},{x,1}]}}.
    {test,is_eq_exact,{f,766},[{x,1},{atom,update2}]}.
    {put_map_assoc,{f,0},
                   {literal,#{}},
                   {x,0},
                   0,
                   {list,[{literal,"wat"},{integer,1}]}}.
    {put_map_assoc,{f,0},{x,0},{x,0},1,{list,[{y,6},{integer,2}]}}.
    {line,[{location,"map_SUITE.erl",2012}]}.
    {put_map_exact,{f,0},{x,0},{x,0},1,{list,[{y,6},{atom,a}]}}.
    {put_map_exact,{f,0},{x,0},{x,0},1,{list,[{literal,"wat"},{integer,3}]}}.
    {init_yregs,{list,[{y,6},{y,7}]}}.
    {line,[{scope,[14]},{location,"map_SUITE.erl",2012}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,765},[{x,0}]}.
    {get_map_elements,{f,765},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{literal,"wat"},{x,2},{integer,2},{x,1}]}}.
    {test,is_eq_exact,{f,765},[{x,1},{atom,a}]}.
    {test,is_eq_exact,{f,765},[{x,2},{integer,3}]}.
    {'catch',{y,7},{f,749}}.
    {move,{atom,nil},{x,0}}.
    {line,[{scope,[14]},{location,"map_SUITE.erl",2015}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,748},[{x,0}]}.
    {line,[{location,"map_SUITE.erl",2015}]}.
    {put_map_exact,{f,0},{x,0},{x,0},1,{list,[{atom,a},{atom,b}]}}.
    {jump,{f,749}}.
  {label,748}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,badmap},{x,0}]}}.
    {line,[{scope,"\r"},{location,"map_SUITE.erl",2015}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,749}.
    {catch_end,{y,7}}.
    {test,is_tagged_tuple,{f,764},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,764},[{x,1}]}.
    {test,test_arity,{f,764},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,764},[{x,1},{literal,{badmap,nil}}]}.
    {'catch',{y,6},{f,750}}.
    {line,[{location,"map_SUITE.erl",2016}]}.
    {put_map_exact,{f,0},{y,0},{x,0},0,{list,[{atom,nonexisting},{atom,val}]}}.
  {label,750}.
    {catch_end,{y,6}}.
    {test,is_tagged_tuple,{f,763},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,763},[{x,1}]}.
    {test,test_arity,{f,763},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,763},[{x,1},{literal,{badkey,nonexisting}}]}.
    {'catch',{y,5},{f,751}}.
    {line,[{location,"map_SUITE.erl",2017}]}.
    {put_map_exact,{f,0},{y,0},{x,0},0,{list,[{float,1.0},{atom,v2}]}}.
  {label,751}.
    {catch_end,{y,5}}.
    {test,is_tagged_tuple,{f,762},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,762},[{x,1}]}.
    {test,test_arity,{f,762},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,762},[{x,1},{literal,{badkey,1.0}}]}.
    {'catch',{y,4},{f,752}}.
    {line,[{location,"map_SUITE.erl",2018}]}.
    {put_map_exact,{f,0},
                   {y,0},
                   {x,0},
                   0,
                   {list,[{float,42.0},{atom,v},{integer,42},{atom,v2}]}}.
  {label,752}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,761},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,761},[{x,1}]}.
    {test,test_arity,{f,761},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,761},[{x,1},{literal,{badkey,42}}]}.
    {put_map_assoc,{f,0},{y,0},{x,0},0,{list,[{integer,42},{atom,v3}]}}.
    {'catch',{y,3},{f,753}}.
    {line,[{location,"map_SUITE.erl",2019}]}.
    {put_map_exact,{f,0},{x,0},{x,0},1,{list,[{float,42.0},{atom,v2}]}}.
  {label,753}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,760},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,760},[{x,1}]}.
    {test,test_arity,{f,760},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,760},[{x,1},{literal,{badkey,42.0}}]}.
    {'catch',{y,2},{f,754}}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,badmap},{literal,<<>>}]}}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",2020}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,754}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,759},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,759},[{x,1}]}.
    {test,test_arity,{f,759},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,759},[{x,1},{literal,{badmap,<<>>}}]}.
    {'catch',{y,1},{f,755}}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2022}]}.
    {bs_create_bin,{f,0},
                   0,0,1,
                   {x,0},
                   {list,[{atom,integer},1,1,nil,{integer,0},{integer,257}]}}.
    {line,[{location,"map_SUITE.erl",2022}]}.
    {put_map_exact,{f,0},{y,0},{x,0},1,{list,[{x,0},{atom,val}]}}.
  {label,755}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,758},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,758},[{x,1}]}.
    {test,test_arity,{f,758},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,758},[{x,1},2,{atom,badkey}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,bs_start_match3,{f,758},2,[{x,1}],{x,1}}.
    {test,bs_match_string,
          {f,758},
          [{x,1},
           257,
           {string,<<0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
                     0,0,0,0,0,0>>}]}.
    {bs_match,{f,758},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,8}.
    return.
  {label,756}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,badmap},{x,0}]}}.
    {line,[{scope,[14]},{location,"map_SUITE.erl",2007}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},8}.
  {label,757}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,badmap},{y,0}]}}.
    {line,[{scope,[14]},{location,"map_SUITE.erl",1996}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},8}.
  {label,758}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",2021}]}.
    {badmatch,{x,0}}.
  {label,759}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2020}]}.
    {badmatch,{x,0}}.
  {label,760}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",2019}]}.
    {badmatch,{x,0}}.
  {label,761}.
    {line,[{scope,[6]},{location,"map_SUITE.erl",2018}]}.
    {badmatch,{x,0}}.
  {label,762}.
    {line,[{scope,"\b"},{location,"map_SUITE.erl",2017}]}.
    {badmatch,{x,0}}.
  {label,763}.
    {line,[{scope,"\n"},{location,"map_SUITE.erl",2016}]}.
    {badmatch,{x,0}}.
  {label,764}.
    {line,[{scope,"\f"},{location,"map_SUITE.erl",2015}]}.
    {badmatch,{x,0}}.
  {label,765}.
    {line,[{scope,[14]},{location,"map_SUITE.erl",2012}]}.
    {badmatch,{x,0}}.
  {label,766}.
    {line,[{scope,[14]},{location,"map_SUITE.erl",2007}]}.
    {badmatch,{x,0}}.
  {label,767}.
    {line,[{scope,[14]},{location,"map_SUITE.erl",2004}]}.
    {badmatch,{x,0}}.
  {label,768}.
    {line,[{scope,[14]},{location,"map_SUITE.erl",2002}]}.
    {badmatch,{x,1}}.
  {label,769}.
    {line,[{scope,[14]},{location,"map_SUITE.erl",2001}]}.
    {badmatch,{x,0}}.
  {label,770}.
    {line,[{scope,[14]},{location,"map_SUITE.erl",1998}]}.
    {badmatch,{x,1}}.
  {label,771}.
    {line,[{scope,[14]},{location,"map_SUITE.erl",1997}]}.
    {badmatch,{x,0}}.


{function, t_nested_pattern_expressions, 1, 773}.
  {label,772}.
    {line,[{location,"map_SUITE.erl",2025}]}.
    {func_info,{atom,map_SUITE},{atom,t_nested_pattern_expressions},1}.
  {label,773}.
    {test,is_list,{f,772},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,"hello"},{x,0}}.
    {line,[{location,"map_SUITE.erl",2026}]}.
    {call,1,{f,1107}}. % id/1
    {put_map_assoc,{f,0},
                   {literal,#{}},
                   {x,1},
                   1,
                   {list,[{literal,<<"hi">>},{atom,wat}]}}.
    {put_map_assoc,{f,0},{x,1},{x,1},2,{list,[{x,0},{integer,42}]}}.
    {test_heap,6,2}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{atom,k},{x,1},{x,1}}.
    {put_list,{atom,k},{x,1},{x,1}}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"map_SUITE.erl",2028}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_nonempty_list,{f,780},[{x,0}]}.
    {get_tl,{x,0},{x,1}}.
    {test,is_nonempty_list,{f,780},[{x,1}]}.
    {get_tl,{x,1},{x,1}}.
    {test,is_nonempty_list,{f,780},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_map,{f,780},[{x,1}]}.
    {get_map_elements,{f,780},
                      {tr,{x,1},{t_map,any,any}},
                      {list,[{literal,<<"hi">>},{x,2}]}}.
    {get_map_elements,{f,780},{tr,{x,1},{t_map,any,any}},{list,[{y,0},{x,1}]}}.
    {test,is_eq_exact,{f,780},[{x,2},{atom,wat}]}.
    {test,is_eq_exact,{f,780},[{x,1},{integer,42}]}.
    {put_map_assoc,{f,0},
                   {literal,#{}},
                   {x,0},
                   0,
                   {list,[{integer,-1},{atom,wat}]}}.
    {put_map_assoc,{f,0},{x,0},{x,0},1,{list,[{y,0},{integer,42}]}}.
    {test_heap,6,1}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{atom,k},{x,0},{x,0}}.
    {put_list,{atom,k},{x,0},{x,0}}.
    {line,[{location,"map_SUITE.erl",2029}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_nonempty_list,{f,779},[{x,0}]}.
    {get_tl,{x,0},{x,1}}.
    {test,is_nonempty_list,{f,779},[{x,1}]}.
    {get_tl,{x,1},{x,1}}.
    {test,is_nonempty_list,{f,779},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_map,{f,779},[{x,1}]}.
    {get_map_elements,{f,779},
                      {tr,{x,1},{t_map,any,any}},
                      {list,[{integer,-1},{x,2}]}}.
    {get_map_elements,{f,779},{tr,{x,1},{t_map,any,any}},{list,[{y,0},{x,1}]}}.
    {test,is_eq_exact,{f,779},[{x,2},{atom,wat}]}.
    {test,is_eq_exact,{f,779},[{x,1},{integer,42}]}.
    {line,[{location,"map_SUITE.erl",2030}]}.
    {bs_create_bin,{f,0},
                   3,0,4,
                   {x,0},
                   {list,[{atom,integer},1,1,nil,{integer,0},{integer,300}]}}.
    {put_tuple2,{x,0},{list,[{integer,-3},{x,0}]}}.
    {put_map_assoc,{f,0},{literal,#{}},{x,0},1,{list,[{x,0},{literal,"hi"}]}}.
    {put_map_assoc,{f,0},{literal,#{}},{x,0},1,{list,[{integer,-1},{x,0}]}}.
    {put_map_assoc,{f,0},{x,0},{x,0},1,{list,[{y,0},{integer,42}]}}.
    {test_heap,9,1}.
    {put_tuple2,{x,0},{list,[{x,0},{integer,3}]}}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{atom,k},{x,0},{x,0}}.
    {put_list,{atom,k},{x,0},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {test,is_nonempty_list,{f,778},[{x,0}]}.
    {get_tl,{x,0},{x,1}}.
    {test,is_nonempty_list,{f,778},[{x,1}]}.
    {get_tl,{x,1},{x,1}}.
    {test,is_nonempty_list,{f,778},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tuple,{f,778},[{x,1}]}.
    {test,test_arity,{f,778},[{x,1},2]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,778},[{x,2},{integer,3}]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_map,{f,778},[{x,1}]}.
    {get_map_elements,{f,778},
                      {tr,{x,1},{t_map,any,any}},
                      {list,[{integer,-1},{x,2}]}}.
    {get_map_elements,{f,778},{tr,{x,1},{t_map,any,any}},{list,[{y,0},{x,1}]}}.
    {test,is_eq_exact,{f,778},[{x,1},{integer,42}]}.
    {test,is_map,{f,778},[{x,2}]}.
    {bs_create_bin,{f,778},
                   3,3,4,
                   {x,1},
                   {list,[{atom,integer},1,1,nil,{integer,0},{integer,300}]}}.
    {put_tuple2,{x,1},{list,[{integer,-3},{x,1}]}}.
    {get_map_elements,
        {f,778},
        {tr,{x,2},{t_map,any,any}},
        {list,
            [{tr,{x,1},
                 {t_tuple,2,true,
                     #{1 => {t_integer,{-3,-3}},2 => {t_bitstring,4,false}}}},
             {x,1}]}}.
    {test,is_eq_exact,{f,777},[{x,1},{literal,"hi"}]}.
    {line,[{location,"map_SUITE.erl",2035}]}.
    {bs_create_bin,{f,0},
                   0,0,1,
                   {x,0},
                   {list,[{atom,integer},
                          1,1,nil,
                          {integer,0},
                          {integer,325},
                          {atom,string},
                          0,8,nil,
                          {string,<<"!">>},
                          {integer,1}]}}.
    {bs_create_bin,{f,0},
                   0,1,1,
                   {x,1},
                   {list,[{atom,integer},
                          1,1,nil,
                          {integer,0},
                          {integer,317},
                          {atom,string},
                          0,8,nil,
                          {string,<<1,76>>},
                          {integer,2}]}}.
    {put_map_assoc,{f,0},{literal,#{}},{x,0},2,{list,[{x,0},{integer,1}]}}.
    {put_map_assoc,{f,0},{x,0},{x,0},2,{list,[{x,1},{atom,ok}]}}.
    {put_map_assoc,{f,0},
                   {x,0},
                   {x,0},
                   1,
                   {list,[{atom,a},
                          {atom,ok},
                          {atom,wat},
                          {atom,yep},
                          {atom,watzor},
                          {atom,ok}]}}.
    {init_yregs,{list,[{y,0}]}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,0}}.
    {line,[{location,"map_SUITE.erl",2036}]}.
    {call,1,{f,782}}. % map_nested_pattern_funs/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_fun,1,
                     {'-map_nested_pattern_funs/1-fun-2-',3},
                     {t_fun,1,
                         {'-map_nested_pattern_funs/1-fun-1-',3},
                         {t_fun,1,
                             {'-map_nested_pattern_funs/1-fun-0-',3},
                             {t_tuple,2,true,#{}}}}}}]}}.
    {move,{x,0},{x,1}}.
    {move,{atom,wat},{x,0}}.
    {line,[{location,"map_SUITE.erl",2037}]}.
    {call_fun2,
        {f,1203},
        1,
        {tr,{x,1},
            {t_fun,1,
                {'-map_nested_pattern_funs/1-fun-2-',3},
                {t_fun,1,
                    {'-map_nested_pattern_funs/1-fun-1-',3},
                    {t_fun,1,
                        {'-map_nested_pattern_funs/1-fun-0-',3},
                        {t_tuple,2,true,#{}}}}}}}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_fun,1,
                     {'-map_nested_pattern_funs/1-fun-1-',3},
                     {t_fun,1,
                         {'-map_nested_pattern_funs/1-fun-0-',3},
                         {t_tuple,2,true,#{}}}}}]}}.
    {move,{x,0},{x,1}}.
    {move,{atom,watzor},{x,0}}.
    {line,[{location,"map_SUITE.erl",2038}]}.
    {call_fun2,{f,1206},
               1,
               {tr,{x,1},
                   {t_fun,1,
                          {'-map_nested_pattern_funs/1-fun-1-',3},
                          {t_fun,1,
                                 {'-map_nested_pattern_funs/1-fun-0-',3},
                                 {t_tuple,2,true,#{}}}}}}.
    {'%',{var_info,{x,0},
                   [{type,{t_fun,1,
                                 {'-map_nested_pattern_funs/1-fun-0-',3},
                                 {t_tuple,2,true,#{}}}}]}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"map_SUITE.erl",2039}]}.
    {call_fun2,{f,1209},
               1,
               {tr,{x,1},
                   {t_fun,1,
                          {'-map_nested_pattern_funs/1-fun-0-',3},
                          {t_tuple,2,true,#{}}}}}.
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{}}}]}}.
    {test,is_eq_exact,
          {f,776},
          [{tr,{x,0},{t_tuple,2,true,#{}}},{literal,{yep,ok}}]}.
    {line,[{location,"map_SUITE.erl",2043}]}.
    {call,0,{f,784}}. % nested_map/0
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_map,
                     {t_bitstring,16,false},
                     {t_map,{t_bitstring,8,false},{t_bitstring,8,false}}}}]}}.
    {get_map_elements,
        {f,775},
        {tr,{x,0},
            {t_map,
                {t_bitstring,16,false},
                {t_map,{t_bitstring,8,false},{t_bitstring,8,false}}}},
        {list,[{literal,<<"result">>},{x,1}]}}.
    {get_map_elements,{f,775},
                      {tr,{x,1},
                          {t_map,{t_bitstring,8,false},{t_bitstring,8,false}}},
                      {list,[{literal,<<"foo">>},{x,1}]}}.
    {test,is_eq_exact,
          {f,775},
          [{tr,{x,1},{t_bitstring,8,false}},{literal,<<"6">>}]}.
    {move,{literal,{a,value}},{x,0}}.
    {line,[{location,"map_SUITE.erl",2045}]}.
    {call,1,{f,1107}}. % id/1
    {put_map_assoc,{f,0},{literal,#{}},{x,1},1,{list,[{atom,a},{x,0}]}}.
    {put_map_assoc,{f,0},
                   {literal,#{}},
                   {x,1},
                   2,
                   {list,[{atom,inner_map},{x,1}]}}.
    {test,is_eq_exact,{f,774},[{x,0},{literal,{a,value}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,774}.
    {line,[{location,"map_SUITE.erl",2047}]}.
    {badmatch,{x,1}}.
  {label,775}.
    {line,[{location,"map_SUITE.erl",2042}]}.
    {badmatch,{x,0}}.
  {label,776}.
    {line,[{location,"map_SUITE.erl",2039}]}.
    {badmatch,{x,0}}.
  {label,777}.
    {line,[{location,"map_SUITE.erl",2031}]}.
    {badmatch,{x,1}}.
  {label,778}.
    {line,[{location,"map_SUITE.erl",2030}]}.
    {badmatch,{x,0}}.
  {label,779}.
    {line,[{location,"map_SUITE.erl",2029}]}.
    {badmatch,{x,0}}.
  {label,780}.
    {line,[{location,"map_SUITE.erl",2028}]}.
    {badmatch,{x,0}}.


{function, map_nested_pattern_funs, 1, 782}.
  {label,781}.
    {line,[{location,"map_SUITE.erl",2051}]}.
    {func_info,{atom,map_SUITE},{atom,map_nested_pattern_funs},1}.
  {label,782}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {move,{atom,a},{x,0}}.
    {line,[{location,"map_SUITE.erl",2052}]}.
    {call,1,{f,1107}}. % id/1
    {test_heap,{alloc,[{words,2},{floats,0},{funs,1}]},1}.
    {make_fun3,{f,1203},0,0,{x,0},{list,[{y,0},{x,0}]}}.
    {'%',
        {var_info,
            {x,0},
            [{fun_type,
                 {t_fun,1,
                     {'-map_nested_pattern_funs/1-fun-1-',3},
                     {t_fun,1,
                         {'-map_nested_pattern_funs/1-fun-0-',3},
                         {t_tuple,2,true,#{}}}}}]}}.
    {deallocate,1}.
    return.


{function, nested_map, 0, 784}.
  {label,783}.
    {line,[{location,"map_SUITE.erl",2068}]}.
    {func_info,{atom,map_SUITE},{atom,nested_map},0}.
  {label,784}.
    {move,{literal,#{<<"result">> => #{<<"foo">> => <<"6">>}}},{x,0}}.
    {get_map_elements,{f,785},{x,0},{list,[{literal,<<"result">>},{x,0}]}}.
    {get_map_elements,{f,785},
                      {tr,{x,0},
                          {t_map,{t_bitstring,8,false},{t_bitstring,8,false}}},
                      {list,[{literal,<<"foo">>},{x,0}]}}.
    {test,is_eq_exact,
          {f,785},
          [{tr,{x,0},{t_bitstring,8,false}},{literal,<<"6">>}]}.
    {move,{literal,#{<<"result">> => #{<<"foo">> => <<"6">>}}},{x,0}}.
    return.
  {label,785}.
    {line,[{location,"map_SUITE.erl",2069}]}.
    {badmatch,{literal,#{<<"result">> => #{<<"foo">> => <<"6">>}}}}.


{function, t_guard_update_variables, 1, 787}.
  {label,786}.
    {line,[{location,"map_SUITE.erl",2072}]}.
    {func_info,{atom,map_SUITE},{atom,t_guard_update_variables},1}.
  {label,787}.
    {test,is_list,{f,786},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,#{}},{x,1}}.
    {move,{literal,#{}},{x,2}}.
    {move,{atom,n},{x,0}}.
    {line,[{location,"map_SUITE.erl",2073}]}.
    {call,3,{f,794}}. % map_guard_update_variables/3
    {'%',{var_info,{x,0},[{type,{t_atom,[error,first,fourth,second,third]}}]}}.
    {test,is_eq_exact,
          {f,792},
          [{tr,{x,0},{t_atom,[error,first,fourth,second,third]}},
           {atom,error}]}.
    {move,{literal,#{}},{x,1}}.
    {move,{literal,#{x => first}},{x,2}}.
    {move,{atom,x},{x,0}}.
    {line,[{location,"map_SUITE.erl",2074}]}.
    {call,3,{f,794}}. % map_guard_update_variables/3
    {'%',{var_info,{x,0},[{type,{t_atom,[error,first,fourth,second,third]}}]}}.
    {test,is_eq_exact,
          {f,791},
          [{tr,{x,0},{t_atom,[error,first,fourth,second,third]}},
           {atom,first}]}.
    {move,{literal,#{y => old}},{x,1}}.
    {move,{literal,#{x => second,y => old}},{x,2}}.
    {move,{atom,x},{x,0}}.
    {line,[{location,"map_SUITE.erl",2075}]}.
    {call,3,{f,794}}. % map_guard_update_variables/3
    {'%',{var_info,{x,0},[{type,{t_atom,[error,first,fourth,second,third]}}]}}.
    {test,is_eq_exact,
          {f,790},
          [{tr,{x,0},{t_atom,[error,first,fourth,second,third]}},
           {atom,second}]}.
    {move,{literal,#{x => old,y => old}},{x,1}}.
    {move,{literal,#{x => third,y => old}},{x,2}}.
    {move,{atom,x},{x,0}}.
    {line,[{location,"map_SUITE.erl",2076}]}.
    {call,3,{f,794}}. % map_guard_update_variables/3
    {'%',{var_info,{x,0},[{type,{t_atom,[error,first,fourth,second,third]}}]}}.
    {test,is_eq_exact,
          {f,789},
          [{tr,{x,0},{t_atom,[error,first,fourth,second,third]}},
           {atom,third}]}.
    {move,{literal,#{x => old,y => old}},{x,1}}.
    {move,{literal,#{x => 4,y => new}},{x,2}}.
    {move,{atom,x},{x,0}}.
    {line,[{location,"map_SUITE.erl",2077}]}.
    {call,3,{f,794}}. % map_guard_update_variables/3
    {'%',{var_info,{x,0},[{type,{t_atom,[error,first,fourth,second,third]}}]}}.
    {test,is_eq_exact,
          {f,788},
          [{tr,{x,0},{t_atom,[error,first,fourth,second,third]}},
           {atom,fourth}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,788}.
    {badmatch,{x,0}}.
  {label,789}.
    {line,[{location,"map_SUITE.erl",2076}]}.
    {badmatch,{x,0}}.
  {label,790}.
    {line,[{location,"map_SUITE.erl",2075}]}.
    {badmatch,{x,0}}.
  {label,791}.
    {line,[{location,"map_SUITE.erl",2074}]}.
    {badmatch,{x,0}}.
  {label,792}.
    {line,[{location,"map_SUITE.erl",2073}]}.
    {badmatch,{x,0}}.


{function, map_guard_update_variables, 3, 794}.
  {label,793}.
    {line,[{location,"map_SUITE.erl",2080}]}.
    {func_info,{atom,map_SUITE},{atom,map_guard_update_variables},3}.
  {label,794}.
    {'%',{var_info,{x,0},[{type,{t_atom,[n,x]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_map,{t_atom,[x,y]},{t_atom,[old]}}}]}}.
    {'%',
        {var_info,
            {x,2},
            [{type,
                 {t_map,
                     {t_atom,[x,y]},
                     {t_union,
                         {t_atom,[first,new,old,second,third]},
                         none,
                         {t_integer,{4,4}},
                         none,none}}}]}}.
    {put_map_assoc,{f,0},{x,1},{x,3},3,{list,[{x,0},{atom,first}]}}.
    {test,is_eq_exact,
          {f,795},
          [{tr,{x,3},{t_map,{t_atom,[n,x,y]},{t_atom,[first,old]}}},
           {tr,{x,2},
               {t_map,{t_atom,[x,y]},
                      {t_union,{t_atom,[first,new,old,second,third]},
                               none,
                               {t_integer,{4,4}},
                               none,none}}}]}.
    {move,{atom,first},{x,0}}.
    return.
  {label,795}.
    {put_map_assoc,{f,0},{x,1},{x,3},3,{list,[{x,0},{atom,second}]}}.
    {test,is_eq_exact,
          {f,796},
          [{tr,{x,3},{t_map,{t_atom,[n,x,y]},{t_atom,[old,second]}}},
           {tr,{x,2},
               {t_map,{t_atom,[x,y]},
                      {t_union,{t_atom,[first,new,old,second,third]},
                               none,
                               {t_integer,{4,4}},
                               none,none}}}]}.
    {move,{atom,second},{x,0}}.
    return.
  {label,796}.
    {line,[{location,"map_SUITE.erl",2082}]}.
    {put_map_exact,{f,797},{x,1},{x,3},3,{list,[{x,0},{atom,third}]}}.
    {test,is_eq_exact,
          {f,797},
          [{tr,{x,3},{t_map,{t_atom,[n,x,y]},{t_atom,[old,third]}}},
           {tr,{x,2},
               {t_map,{t_atom,[x,y]},
                      {t_union,{t_atom,[first,new,old,second,third]},
                               none,
                               {t_integer,{4,4}},
                               none,none}}}]}.
    {move,{atom,third},{x,0}}.
    return.
  {label,797}.
    {line,[{location,"map_SUITE.erl",2083}]}.
    {put_map_exact,{f,798},{x,1},{x,0},3,{list,[{x,0},{integer,4}]}}.
    {put_map_assoc,{f,0},{x,0},{x,0},3,{list,[{atom,y},{atom,new}]}}.
    {test,is_eq_exact,
          {f,798},
          [{tr,{x,0},
               {t_map,{t_atom,[n,x,y]},
                      {t_union,{t_atom,[new,old]},
                               none,
                               {t_integer,{4,4}},
                               none,none}}},
           {tr,{x,2},
               {t_map,{t_atom,[x,y]},
                      {t_union,{t_atom,[first,new,old,second,third]},
                               none,
                               {t_integer,{4,4}},
                               none,none}}}]}.
    {move,{atom,fourth},{x,0}}.
    return.
  {label,798}.
    {move,{atom,error},{x,0}}.
    return.


{function, t_guard_sequence_variables, 1, 800}.
  {label,799}.
    {line,[{location,"map_SUITE.erl",2086}]}.
    {func_info,{atom,map_SUITE},{atom,t_guard_sequence_variables},1}.
  {label,800}.
    {test,is_list,{f,799},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,"a"},{x,0}}.
    {line,[{location,"map_SUITE.erl",2087}]}.
    {call,1,{f,1107}}. % id/1
    {put_map_assoc,{f,0},
                   {literal,#{}},
                   {x,1},
                   1,
                   {list,[{atom,a},
                          {x,0},
                          {atom,b},
                          {atom,no},
                          {atom,seq},
                          {integer,1}]}}.
    {move,{atom,a},{x,0}}.
    {call,2,{f,811}}. % map_guard_sequence_var_1/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,false,#{1 => {t_integer,{1,5}}}}}]}}.
    {test,is_eq_exact,
          {f,809},
          [{tr,{x,0},{t_tuple,2,false,#{1 => {t_integer,{1,5}}}}},
           {literal,{1,"a"}}]}.
    {move,{literal,"b"},{x,0}}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2088}]}.
    {call,1,{f,1107}}. % id/1
    {put_map_assoc,{f,0},
                   {literal,#{}},
                   {x,1},
                   1,
                   {list,[{atom,a},
                          {atom,no},
                          {atom,b},
                          {x,0},
                          {atom,seq},
                          {integer,2}]}}.
    {move,{atom,b},{x,0}}.
    {call,2,{f,811}}. % map_guard_sequence_var_1/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,false,#{1 => {t_integer,{1,5}}}}}]}}.
    {test,is_eq_exact,
          {f,808},
          [{tr,{x,0},{t_tuple,2,false,#{1 => {t_integer,{1,5}}}}},
           {literal,{2,"b"}}]}.
    {move,{literal,"c"},{x,0}}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2089}]}.
    {call,1,{f,1107}}. % id/1
    {put_map_assoc,{f,0},
                   {literal,#{}},
                   {x,1},
                   1,
                   {list,[{atom,a},
                          {x,0},
                          {atom,b},
                          {atom,no},
                          {atom,seq},
                          {integer,3}]}}.
    {move,{atom,a},{x,0}}.
    {call,2,{f,811}}. % map_guard_sequence_var_1/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,false,#{1 => {t_integer,{1,5}}}}}]}}.
    {test,is_eq_exact,
          {f,807},
          [{tr,{x,0},{t_tuple,2,false,#{1 => {t_integer,{1,5}}}}},
           {literal,{3,"c"}}]}.
    {move,{literal,"d"},{x,0}}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2090}]}.
    {call,1,{f,1107}}. % id/1
    {put_map_assoc,{f,0},
                   {literal,#{}},
                   {x,1},
                   1,
                   {list,[{atom,a},
                          {atom,no},
                          {atom,b},
                          {x,0},
                          {atom,seq},
                          {integer,4}]}}.
    {move,{atom,b},{x,0}}.
    {call,2,{f,811}}. % map_guard_sequence_var_1/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,false,#{1 => {t_integer,{1,5}}}}}]}}.
    {test,is_eq_exact,
          {f,806},
          [{tr,{x,0},{t_tuple,2,false,#{1 => {t_integer,{1,5}}}}},
           {literal,{4,"d"}}]}.
    {move,{literal,#{seq => 4}},{x,1}}.
    {move,{atom,seq},{x,0}}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2091}]}.
    {call,2,{f,811}}. % map_guard_sequence_var_1/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,false,#{1 => {t_integer,{1,5}}}}}]}}.
    {test,is_eq_exact,
          {f,805},
          [{tr,{x,0},{t_tuple,2,false,#{1 => {t_integer,{1,5}}}}},
           {literal,{4,4}}]}.
    {move,{literal,"d"},{x,0}}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2092}]}.
    {call,1,{f,1107}}. % id/1
    {put_map_assoc,{f,0},
                   {literal,#{}},
                   {x,1},
                   1,
                   {list,[{atom,a},
                          {atom,y},
                          {atom,b},
                          {x,0},
                          {atom,seq},
                          {integer,4}]}}.
    {move,{atom,seq},{x,0}}.
    {call,2,{f,811}}. % map_guard_sequence_var_1/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,false,#{1 => {t_integer,{1,5}}}}}]}}.
    {test,is_eq_exact,
          {f,804},
          [{tr,{x,0},{t_tuple,2,false,#{1 => {t_integer,{1,5}}}}},
           {literal,{4,4,y}}]}.
    {move,{literal,"d"},{x,0}}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2093}]}.
    {call,1,{f,1107}}. % id/1
    {put_map_assoc,{f,0},
                   {literal,#{}},
                   {x,1},
                   1,
                   {list,[{atom,a},
                          {atom,y},
                          {atom,b},
                          {x,0},
                          {atom,seq},
                          {integer,5}]}}.
    {move,{atom,b},{x,0}}.
    {call,2,{f,811}}. % map_guard_sequence_var_1/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,false,#{1 => {t_integer,{1,5}}}}}]}}.
    {test,is_eq_exact,
          {f,803},
          [{tr,{x,0},{t_tuple,2,false,#{1 => {t_integer,{1,5}}}}},
           {literal,{5,"d"}}]}.
    {'catch',{y,0},{f,801}}.
    {move,{literal,"e"},{x,0}}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2096}]}.
    {call,1,{f,1107}}. % id/1
    {put_map_assoc,{f,0},
                   {literal,#{}},
                   {x,1},
                   1,
                   {list,[{atom,seq},{integer,4},{atom,val},{x,0}]}}.
    {move,{literal,"a"},{x,0}}.
    {call,2,{f,811}}. % map_guard_sequence_var_1/2
    {'%',{var_info,{x,0},
                   [{type,{t_tuple,2,false,#{1 => {t_integer,{1,5}}}}}]}}.
  {label,801}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,802},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,802},[{x,1}]}.
    {test,test_arity,{f,802},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,802},[{x,1},2,{atom,case_clause}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,802}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",2096}]}.
    {badmatch,{x,0}}.
  {label,803}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2093}]}.
    {badmatch,{x,0}}.
  {label,804}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2092}]}.
    {badmatch,{x,0}}.
  {label,805}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2091}]}.
    {badmatch,{x,0}}.
  {label,806}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2090}]}.
    {badmatch,{x,0}}.
  {label,807}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2089}]}.
    {badmatch,{x,0}}.
  {label,808}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2088}]}.
    {badmatch,{x,0}}.
  {label,809}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2087}]}.
    {badmatch,{x,0}}.


{function, map_guard_sequence_var_1, 2, 811}.
  {label,810}.
    {line,[{location,"map_SUITE.erl",2100}]}.
    {func_info,{atom,map_SUITE},{atom,map_guard_sequence_var_1},2}.
  {label,811}.
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[a,b,seq]},
                                   {t_cons,{t_integer,{97,97}},nil},
                                   none,none,none}}]}}.
    {'%',{var_info,{x,1},[{type,{t_map,{t_atom,[a,b,seq,val]},any}}]}}.
    {get_map_elements,
        {f,817},
        {tr,{x,1},{t_map,{t_atom,[a,b,seq,val]},any}},
        {list,
            [{tr,{x,0},
                 {t_union,
                     {t_atom,[a,b,seq]},
                     {t_cons,{t_integer,{97,97}},nil},
                     none,none,none}},
             {x,0}]}}.
    {get_map_elements,{f,813},
                      {tr,{x,1},{t_map,{t_atom,[a,b,seq,val]},any}},
                      {list,[{atom,seq},{x,2}]}}.
    {select_val,{x,2},
                {f,813},
                {list,[{integer,1},
                       {f,812},
                       {integer,2},
                       {f,812},
                       {integer,3},
                       {f,812}]}}.
  {label,812}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{x,2},{x,0}]}}.
    return.
  {label,813}.
    {test,is_eq_exact,{f,814},[{x,0},{integer,4}]}.
    {get_map_elements,{f,814},
                      {tr,{x,1},{t_map,{t_atom,[a,b,seq,val]},any}},
                      {list,[{atom,a},{x,2}]}}.
    {test_heap,4,3}.
    {put_tuple2,{x,0},{list,[{integer,4},{integer,4},{x,2}]}}.
    return.
  {label,814}.
    {get_map_elements,{f,815},
                      {tr,{x,1},{t_map,{t_atom,[a,b,seq,val]},any}},
                      {list,[{atom,seq},{x,2}]}}.
    {test,is_eq_exact,{f,815},[{x,2},{integer,4}]}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{integer,4},{x,0}]}}.
    return.
  {label,815}.
    {test,is_eq_exact,{f,816},[{x,0},{integer,4}]}.
    {move,{literal,{4,4}},{x,0}}.
    return.
  {label,816}.
    {get_map_elements,{f,817},
                      {tr,{x,1},{t_map,{t_atom,[a,b,seq,val]},any}},
                      {list,[{atom,seq},{x,2}]}}.
    {test,is_eq_exact,{f,817},[{x,2},{integer,5}]}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{integer,5},{x,0}]}}.
    return.
  {label,817}.
    {line,[{location,"map_SUITE.erl",2101}]}.
    {case_end,{x,1}}.


{function, t_guard_sequence_mixed, 1, 819}.
  {label,818}.
    {line,[{location,"map_SUITE.erl",2112}]}.
    {func_info,{atom,map_SUITE},{atom,t_guard_sequence_mixed},1}.
  {label,819}.
    {test,is_list,{f,818},[{x,0}]}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{literal,#{a => 1,b => 1,c => 1,d => 1,e => 1,f => 1,g => 1,h => 1}},
          {x,0}}.
    {line,[{location,"map_SUITE.erl",2113}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,0}}.
    {test,is_map,{f,826},[{x,0}]}.
    {line,[{location,"map_SUITE.erl",2114}]}.
    {put_map_exact,{f,0},{x,0},{x,0},1,{list,[{atom,d},{integer,3}]}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,1}}.
    {move,{atom,d},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{atom,a},{x,0}}.
    {line,[{location,"map_SUITE.erl",2115}]}.
    {call,3,{f,835}}. % map_guard_sequence_mixed/3
    {'%',{var_info,{x,0},[{type,{t_integer,{1,6}}}]}}.
    {test,is_eq_exact,{f,833},[{tr,{x,0},{t_integer,{1,6}}},{integer,1}]}.
    {test,is_map,{f,825},[{y,1}]}.
    {line,[{location,"map_SUITE.erl",2116}]}.
    {put_map_exact,{f,0},
                   {y,1},
                   {x,0},
                   0,
                   {list,[{atom,b},
                          {integer,2},
                          {atom,d},
                          {integer,4},
                          {atom,h},
                          {integer,2}]}}.
    {init_yregs,{list,[{y,1}]}}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2116}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,1}}.
    {move,{atom,d},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2117}]}.
    {call,3,{f,835}}. % map_guard_sequence_mixed/3
    {'%',{var_info,{x,0},[{type,{t_integer,{1,6}}}]}}.
    {test,is_eq_exact,{f,832},[{tr,{x,0},{t_integer,{1,6}}},{integer,2}]}.
    {test,is_map,{f,824},[{y,1}]}.
    {line,[{location,"map_SUITE.erl",2118}]}.
    {put_map_exact,{f,0},
                   {y,1},
                   {x,0},
                   0,
                   {list,[{atom,b},
                          {integer,3},
                          {atom,e},
                          {integer,5},
                          {atom,g},
                          {integer,3}]}}.
    {init_yregs,{list,[{y,1}]}}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2118}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,1}}.
    {move,{atom,e},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2119}]}.
    {call,3,{f,835}}. % map_guard_sequence_mixed/3
    {'%',{var_info,{x,0},[{type,{t_integer,{1,6}}}]}}.
    {test,is_eq_exact,{f,831},[{tr,{x,0},{t_integer,{1,6}}},{integer,3}]}.
    {test,is_map,{f,823},[{y,1}]}.
    {line,[{location,"map_SUITE.erl",2120}]}.
    {put_map_exact,{f,0},
                   {y,1},
                   {x,0},
                   0,
                   {list,[{atom,c},
                          {integer,4},
                          {atom,e},
                          {integer,6},
                          {atom,h},
                          {integer,1}]}}.
    {init_yregs,{list,[{y,1}]}}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2120}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,1}}.
    {move,{atom,e},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2121}]}.
    {call,3,{f,835}}. % map_guard_sequence_mixed/3
    {'%',{var_info,{x,0},[{type,{t_integer,{1,6}}}]}}.
    {test,is_eq_exact,{f,830},[{tr,{x,0},{t_integer,{1,6}}},{integer,4}]}.
    {test,is_map,{f,822},[{y,1}]}.
    {line,[{location,"map_SUITE.erl",2122}]}.
    {put_map_exact,{f,0},
                   {y,1},
                   {x,0},
                   0,
                   {list,[{atom,c},
                          {integer,5},
                          {atom,f},
                          {integer,7},
                          {atom,g},
                          {integer,2}]}}.
    {init_yregs,{list,[{y,1}]}}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2122}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,1}}.
    {move,{atom,f},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2123}]}.
    {call,3,{f,835}}. % map_guard_sequence_mixed/3
    {'%',{var_info,{x,0},[{type,{t_integer,{1,6}}}]}}.
    {test,is_eq_exact,{f,829},[{tr,{x,0},{t_integer,{1,6}}},{integer,5}]}.
    {test,is_map,{f,821},[{y,1}]}.
    {line,[{location,"map_SUITE.erl",2124}]}.
    {put_map_exact,{f,0},
                   {y,1},
                   {x,0},
                   0,
                   {list,[{atom,c},
                          {integer,6},
                          {atom,f},
                          {integer,8},
                          {atom,h},
                          {integer,3}]}}.
    {init_yregs,{list,[{y,1}]}}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2124}]}.
    {call,1,{f,1107}}. % id/1
    {move,{atom,f},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2125}]}.
    {call,3,{f,835}}. % map_guard_sequence_mixed/3
    {'%',{var_info,{x,0},[{type,{t_integer,{1,6}}}]}}.
    {test,is_eq_exact,{f,828},[{tr,{x,0},{t_integer,{1,6}}},{integer,6}]}.
    {'catch',{y,1},{f,820}}.
    {move,{atom,b},{x,1}}.
    {move,{y,0},{x,2}}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2128}]}.
    {call,3,{f,835}}. % map_guard_sequence_mixed/3
    {'%',{var_info,{x,0},[{type,{t_integer,{1,6}}}]}}.
  {label,820}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,827},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,827},[{x,1}]}.
    {test,test_arity,{f,827},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,827},[{x,1},2,{atom,case_clause}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,821}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,badmap},{y,1}]}}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2124}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},2}.
  {label,822}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,badmap},{y,1}]}}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2122}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},2}.
  {label,823}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,badmap},{y,1}]}}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2120}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},2}.
  {label,824}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,badmap},{y,1}]}}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2118}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},2}.
  {label,825}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,badmap},{y,1}]}}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2116}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},2}.
  {label,826}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,badmap},{y,0}]}}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2114}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},2}.
  {label,827}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",2128}]}.
    {badmatch,{x,0}}.
  {label,828}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2125}]}.
    {badmatch,{x,0}}.
  {label,829}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2123}]}.
    {badmatch,{x,0}}.
  {label,830}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2121}]}.
    {badmatch,{x,0}}.
  {label,831}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2119}]}.
    {badmatch,{x,0}}.
  {label,832}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2117}]}.
    {badmatch,{x,0}}.
  {label,833}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2115}]}.
    {badmatch,{x,0}}.


{function, map_guard_sequence_mixed, 3, 835}.
  {label,834}.
    {line,[{location,"map_SUITE.erl",2131}]}.
    {func_info,{atom,map_SUITE},{atom,map_guard_sequence_mixed},3}.
  {label,835}.
    {'%',{var_info,{x,0},[{type,{t_atom,[a]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[b,d,e,f]}}]}}.
    {test,is_map,{f,842},[{x,2}]}.
    {get_map_elements,{f,842},
                      {tr,{x,2},{t_map,any,any}},
                      {list,[{atom,a},{x,0}]}}.
    {get_map_elements,{f,842},
                      {tr,{x,2},{t_map,any,any}},
                      {list,[{tr,{x,1},{t_atom,[b,d,e,f]}},{x,1}]}}.
    {test,is_eq_exact,{f,842},[{x,0},{integer,1}]}.
    {select_val,{x,1},
                {f,842},
                {list,[{integer,3},
                       {f,841},
                       {integer,4},
                       {f,840},
                       {integer,5},
                       {f,839},
                       {integer,6},
                       {f,838},
                       {integer,7},
                       {f,837},
                       {integer,8},
                       {f,836}]}}.
  {label,836}.
    {get_map_elements,{f,842},
                      {tr,{x,2},{t_map,any,any}},
                      {list,[{atom,h},{x,1},{atom,c},{x,0}]}}.
    {test,is_eq_exact,{f,842},[{x,0},{integer,6}]}.
    {test,is_eq_exact,{f,842},[{x,1},{integer,3}]}.
    {move,{integer,6},{x,0}}.
    return.
  {label,837}.
    {get_map_elements,{f,842},
                      {tr,{x,2},{t_map,any,any}},
                      {list,[{atom,g},{x,1},{atom,c},{x,0}]}}.
    {test,is_eq_exact,{f,842},[{x,0},{integer,5}]}.
    {test,is_eq_exact,{f,842},[{x,1},{integer,2}]}.
    {move,{integer,5},{x,0}}.
    return.
  {label,838}.
    {get_map_elements,{f,842},
                      {tr,{x,2},{t_map,any,any}},
                      {list,[{atom,h},{x,1},{atom,c},{x,0}]}}.
    {test,is_eq_exact,{f,842},[{x,0},{integer,4}]}.
    {test,is_eq_exact,{f,842},[{x,1},{integer,1}]}.
    {move,{integer,4},{x,0}}.
    return.
  {label,839}.
    {get_map_elements,{f,842},
                      {tr,{x,2},{t_map,any,any}},
                      {list,[{atom,g},{x,1},{atom,b},{x,0}]}}.
    {test,is_eq_exact,{f,842},[{x,0},{integer,3}]}.
    {test,is_eq_exact,{f,842},[{x,1},{integer,3}]}.
    {move,{integer,3},{x,0}}.
    return.
  {label,840}.
    {get_map_elements,{f,842},
                      {tr,{x,2},{t_map,any,any}},
                      {list,[{atom,h},{x,1},{atom,b},{x,0}]}}.
    {test,is_eq_exact,{f,842},[{x,0},{integer,2}]}.
    {test,is_eq_exact,{f,842},[{x,1},{integer,2}]}.
    {move,{integer,2},{x,0}}.
    return.
  {label,841}.
    {get_map_elements,{f,842},
                      {tr,{x,2},{t_map,any,any}},
                      {list,[{atom,g},{x,1},{atom,b},{x,0}]}}.
    {test,is_eq_exact,{f,842},[{x,0},{integer,1}]}.
    {test,is_eq_exact,{f,842},[{x,1},{integer,1}]}.
    {move,{integer,1},{x,0}}.
    return.
  {label,842}.
    {line,[{location,"map_SUITE.erl",2132}]}.
    {case_end,{x,2}}.


{function, t_register_corruption, 1, 844}.
  {label,843}.
    {line,[{location,"map_SUITE.erl",2163}]}.
    {func_info,{atom,map_SUITE},{atom,t_register_corruption},1}.
  {label,844}.
    {test,is_list,{f,843},[{x,0}]}.
    {allocate,0,0}.
    {move,{atom,wanted},{x,1}}.
    {move,{literal,#{a => <<"value">>,c => 3}},{x,0}}.
    {line,[{location,"map_SUITE.erl",2165}]}.
    {call,2,{f,850}}. % register_corruption_bar/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,3,true,
                     #{1 => {t_integer,{3,3}},
                       2 => {t_atom,[wanted]},
                       3 =>
                           {t_union,none,none,
                               {t_integer,{3,3}},
                               none,
                               {t_bitstring,8,false}}}}}]}}.
    {test,is_eq_exact,
        {f,846},
        [{tr,{x,0},
             {t_tuple,3,true,
                 #{1 => {t_integer,{3,3}},
                   2 => {t_atom,[wanted]},
                   3 =>
                       {t_union,none,none,
                           {t_integer,{3,3}},
                           none,
                           {t_bitstring,8,false}}}}},
         {literal,{3,wanted,<<"value">>}}]}.
    {move,{literal,#{a => <<"value">>,c => 3}},{x,1}}.
    {move,{atom,wanted},{x,0}}.
    {line,[{location,"map_SUITE.erl",2166}]}.
    {call,2,{f,848}}. % register_corruption_foo/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,3,true,
                     #{1 => {t_integer,{3,3}},
                       2 => {t_atom,[wanted]},
                       3 =>
                           {t_union,none,none,
                               {t_integer,{3,3}},
                               none,
                               {t_bitstring,8,false}}}}}]}}.
    {test,is_eq_exact,
        {f,845},
        [{tr,{x,0},
             {t_tuple,3,true,
                 #{1 => {t_integer,{3,3}},
                   2 => {t_atom,[wanted]},
                   3 =>
                       {t_union,none,none,
                           {t_integer,{3,3}},
                           none,
                           {t_bitstring,8,false}}}}},
         {literal,{3,wanted,<<"value">>}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,845}.
    {badmatch,{x,0}}.
  {label,846}.
    {line,[{location,"map_SUITE.erl",2165}]}.
    {badmatch,{x,0}}.


{function, register_corruption_foo, 2, 848}.
  {label,847}.
    {line,[{location,"map_SUITE.erl",2169}]}.
    {func_info,{atom,map_SUITE},{atom,register_corruption_foo},2}.
  {label,848}.
    {'%',{var_info,{x,0},[{type,{t_atom,[wanted]}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_map,
                     {t_atom,[a,c]},
                     {t_union,none,none,
                         {t_integer,{3,3}},
                         none,
                         {t_bitstring,8,false}}}}]}}.
    {get_map_elements,
        {f,847},
        {tr,{x,1},
            {t_map,
                {t_atom,[a,c]},
                {t_union,none,none,
                    {t_integer,{3,3}},
                    none,
                    {t_bitstring,8,false}}}},
        {list,[{atom,a},{x,2}]}}.
    {move,{atom,wanted},{x,1}}.
    {move,{integer,3},{x,0}}.
    {call_only,3,{f,853}}. % register_corruption_dummy_call/3


{function, register_corruption_bar, 2, 850}.
  {label,849}.
    {line,[{location,"map_SUITE.erl",2176}]}.
    {func_info,{atom,map_SUITE},{atom,register_corruption_bar},2}.
  {label,850}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_map,
                     {t_atom,[a,c]},
                     {t_union,none,none,
                         {t_integer,{3,3}},
                         none,
                         {t_bitstring,8,false}}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[wanted]}}]}}.
    {get_map_elements,
        {f,851},
        {tr,{x,0},
            {t_map,
                {t_atom,[a,c]},
                {t_union,none,none,
                    {t_integer,{3,3}},
                    none,
                    {t_bitstring,8,false}}}},
        {list,[{atom,a},{x,2}]}}.
    {move,{integer,3},{x,0}}.
    {call_only,3,{f,853}}. % register_corruption_dummy_call/3
  {label,851}.
    {line,[{location,"map_SUITE.erl",2177}]}.
    {case_end,{x,0}}.


{function, register_corruption_dummy_call, 3, 853}.
  {label,852}.
    {line,[{location,"map_SUITE.erl",2187}]}.
    {func_info,{atom,map_SUITE},{atom,register_corruption_dummy_call},3}.
  {label,853}.
    {'%',{var_info,{x,0},[{type,{t_integer,{3,3}}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[wanted]}}]}}.
    {'%',{var_info,{x,2},
                   [{type,{t_union,none,none,
                                   {t_integer,{3,3}},
                                   none,
                                   {t_bitstring,8,false}}}]}}.
    {test_heap,4,3}.
    {put_tuple2,{x,0},{list,[{integer,3},{atom,wanted},{x,2}]}}.
    return.


{function, t_frequency_table, 1, 855}.
  {label,854}.
    {line,[{location,"map_SUITE.erl",2190}]}.
    {func_info,{atom,map_SUITE},{atom,t_frequency_table},1}.
  {label,855}.
    {test,is_list,{f,854},[{x,0}]}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,{13,1337,54}},{x,1}}.
    {move,{atom,exsplus},{x,0}}.
    {line,[{location,"map_SUITE.erl",2191}]}.
    {call_ext,2,{extfunc,rand,seed,2}}.
    {move,{integer,100000},{x,0}}.
    {line,[{location,"map_SUITE.erl",2193}]}.
    {call,1,{f,1057}}. % rand_terms/1
    {'%',{var_info,{x,0},[{type,{t_cons,any,nil}}]}}.
    {move,{x,0},{y,0}}.
    {move,{literal,#{n => 0,tf => #{}}},{x,1}}.
    {line,[{location,"map_SUITE.erl",2194}]}.
    {call,2,{f,859}}. % frequency_table/2
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_map,
                     {t_atom,[n,tf]},
                     {t_union,none,none,
                         {t_integer,{0,'+inf'}},
                         none,
                         {t_map,any,{t_integer,{1,'+inf'}}}}}}]}}.
    {get_map_elements,
        {f,857},
        {tr,{x,0},
            {t_map,
                {t_atom,[n,tf]},
                {t_union,none,none,
                    {t_integer,{0,'+inf'}},
                    none,
                    {t_map,any,{t_integer,{1,'+inf'}}}}}},
        {list,[{atom,tf},{x,2},{atom,n},{x,1}]}}.
    {test,is_eq_exact,
          {f,857},
          [{tr,{x,1},
               {t_union,none,none,
                        {t_integer,{0,'+inf'}},
                        none,
                        {t_map,any,{t_integer,{1,'+inf'}}}}},
           {integer,100000}]}.
    {move,{x,2},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"map_SUITE.erl",2195}]}.
    {call,2,{f,865}}. % check_frequency/2
    {'%',{var_info,{x,0},[{type,{t_atom,[error,ok]}}]}}.
    {test,is_eq_exact,{f,856},[{tr,{x,0},{t_atom,[error,ok]}},{atom,ok}]}.
    {deallocate,0}.
    return.
  {label,856}.
    {badmatch,{atom,error}}.
  {label,857}.
    {line,[{location,"map_SUITE.erl",2194}]}.
    {badmatch,{x,0}}.


{function, frequency_table, 2, 859}.
  {label,858}.
    {line,[{location,"map_SUITE.erl",2199}]}.
    {func_info,{atom,map_SUITE},{atom,frequency_table},2}.
  {label,859}.
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_map,
                     {t_atom,[n,tf]},
                     {t_union,none,none,
                         {t_integer,{0,'+inf'}},
                         none,
                         {t_map,any,{t_integer,{1,'+inf'}}}}}}]}}.
    {test,is_nonempty_list,{f,862},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {get_map_elements,
        {f,863},
        {tr,{x,1},
            {t_map,
                {t_atom,[n,tf]},
                {t_union,none,none,
                    {t_integer,{0,'+inf'}},
                    none,
                    {t_map,any,{t_integer,{1,'+inf'}}}}}},
        {list,[{atom,tf},{x,4},{atom,n},{x,3}]}}.
    {test,is_map,
          {f,860},
          [{tr,{x,4},
               {t_union,none,none,
                        {t_integer,{0,'+inf'}},
                        none,
                        {t_map,any,{t_integer,{1,'+inf'}}}}}]}.
    {get_map_elements,{f,860},
                      {tr,{x,4},{t_map,any,{t_integer,{1,'+inf'}}}},
                      {list,[{x,2},{x,5}]}}.
    {line,[{location,"map_SUITE.erl",2202}]}.
    {gc_bif,'+',
            {f,0},
            6,
            [{tr,{x,3},
                 {t_union,none,none,
                          {t_integer,{0,'+inf'}},
                          none,
                          {t_map,any,{t_integer,{1,'+inf'}}}}},
             {integer,1}],
            {x,3}}.
    {gc_bif,'+',{f,0},6,[{tr,{x,5},{t_integer,{1,'+inf'}}},{integer,1}],{x,5}}.
    {put_map_exact,{f,0},{x,4},{x,2},6,{list,[{x,2},{x,5}]}}.
    {put_map_exact,{f,0},
                   {x,1},
                   {x,1},
                   4,
                   {list,[{atom,n},{x,3},{atom,tf},{x,2}]}}.
    {call_only,2,{f,859}}. % frequency_table/2
  {label,860}.
    {line,[{location,"map_SUITE.erl",2204}]}.
    {gc_bif,'+',
            {f,0},
            5,
            [{tr,{x,3},
                 {t_union,none,none,
                          {t_integer,{0,'+inf'}},
                          none,
                          {t_map,any,{t_integer,{1,'+inf'}}}}},
             {integer,1}],
            {x,3}}.
    {test,is_map,
          {f,861},
          [{tr,{x,4},
               {t_union,none,none,
                        {t_integer,{0,'+inf'}},
                        none,
                        {t_map,any,{t_integer,{1,'+inf'}}}}}]}.
    {put_map_assoc,{f,0},{x,4},{x,2},5,{list,[{x,2},{integer,1}]}}.
    {put_map_exact,{f,0},
                   {x,1},
                   {x,1},
                   4,
                   {list,[{atom,n},{x,3},{atom,tf},{x,2}]}}.
    {call_only,2,{f,859}}. % frequency_table/2
  {label,861}.
    {test_heap,3,5}.
    {put_tuple2,{x,0},{list,[{atom,badmap},{x,4}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,862}.
    {move,{x,1},{x,0}}.
    return.
  {label,863}.
    {line,[{location,"map_SUITE.erl",2200}]}.
    {case_end,{x,1}}.


{function, check_frequency, 2, 865}.
  {label,864}.
    {line,[{location,"map_SUITE.erl",2209}]}.
    {func_info,{atom,map_SUITE},{atom,check_frequency},2}.
  {label,865}.
    {'%',{var_info,{x,0},[{type,{t_cons,any,nil}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_union,none,none,
                                   {t_integer,{0,'+inf'}},
                                   none,
                                   {t_map,any,{t_integer,{1,'+inf'}}}}}]}}.
    {allocate,2,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {line,[{location,"map_SUITE.erl",2210}]}.
    {call_ext,0,{extfunc,dict,new,0}}.
    {move,{y,0},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{y,1},{x,0}}.
    {call_last,3,{f,867},2}. % check_frequency/3


{function, check_frequency, 3, 867}.
  {label,866}.
    {line,[{location,"map_SUITE.erl",2212}]}.
    {func_info,{atom,map_SUITE},{atom,check_frequency},3}.
  {label,867}.
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {'%',{var_info,{x,1},
                   [{type,{t_union,none,none,
                                   {t_integer,{0,'+inf'}},
                                   none,
                                   {t_map,any,{t_integer,{1,'+inf'}}}}}]}}.
    {test,is_nonempty_list,{f,869},[{x,0}]}.
    {allocate,4,3}.
    {move,{x,2},{y,2}}.
    {move,{x,1},{y,3}}.
    {get_list,{x,0},{y,1},{y,0}}.
    {move,{x,2},{x,1}}.
    {move,{y,1},{x,0}}.
    {line,[{location,"map_SUITE.erl",2213}]}.
    {call_ext,2,{extfunc,dict,find,2}}.
    {test,is_tuple,{f,868},[{x,0}]}.
    {test,is_tagged_tuple,
          {f,870},
          [{tr,{x,0},{t_tuple,0,false,#{}}},2,{atom,ok}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {line,[{location,"map_SUITE.erl",2215}]}.
    {gc_bif,'+',{f,0},1,[{x,0},{integer,1}],{x,1}}.
    {move,{y,2},{x,2}}.
    {move,{y,1},{x,0}}.
    {move,{y,0},{y,2}}.
    {trim,2,2}.
    {call_ext,3,{extfunc,dict,store,3}}.
    {move,{y,1},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{y,0},{x,0}}.
    {call_last,3,{f,867},2}. % check_frequency/3
  {label,868}.
    {test,is_eq_exact,{f,870},[{x,0},{atom,error}]}.
    {move,{integer,1},{x,1}}.
    {move,{y,2},{x,2}}.
    {move,{y,1},{x,0}}.
    {move,{y,0},{y,2}}.
    {trim,2,2}.
    {line,[{location,"map_SUITE.erl",2214}]}.
    {call_ext,3,{extfunc,dict,store,3}}.
    {move,{y,1},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{y,0},{x,0}}.
    {call_last,3,{f,867},2}. % check_frequency/3
  {label,869}.
    {allocate,1,3}.
    {move,{x,1},{y,0}}.
    {move,{x,2},{x,0}}.
    {line,[{location,"map_SUITE.erl",2218}]}.
    {call_ext,1,{extfunc,dict,to_list,1}}.
    {move,{y,0},{x,1}}.
    {call_last,2,{f,872},1}. % validate_frequency/2
  {label,870}.
    {line,[{location,"map_SUITE.erl",2213}]}.
    {case_end,{x,0}}.


{function, validate_frequency, 2, 872}.
  {label,871}.
    {line,[{location,"map_SUITE.erl",2220}]}.
    {func_info,{atom,map_SUITE},{atom,validate_frequency},2}.
  {label,872}.
    {'%',{var_info,{x,1},
                   [{type,{t_union,none,none,
                                   {t_integer,{0,'+inf'}},
                                   none,
                                   {t_map,any,{t_integer,{1,'+inf'}}}}}]}}.
    {test,is_nonempty_list,{f,874},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,3}}.
    {test,is_tuple,{f,871},[{x,2}]}.
    {test,test_arity,{f,871},[{x,2},2]}.
    {test,is_map,
          {f,873},
          [{tr,{x,1},
               {t_union,none,none,
                        {t_integer,{0,'+inf'}},
                        none,
                        {t_map,any,{t_integer,{1,'+inf'}}}}}]}.
    {get_tuple_element,{x,2},0,{x,0}}.
    {get_map_elements,{f,873},
                      {tr,{x,1},{t_map,any,{t_integer,{1,'+inf'}}}},
                      {list,[{x,0},{x,0}]}}.
    {get_tuple_element,{x,2},1,{x,2}}.
    {test,is_eq_exact,{f,873},[{tr,{x,0},{t_integer,{1,'+inf'}}},{x,2}]}.
    {move,{x,3},{x,0}}.
    {call_only,2,{f,872}}. % validate_frequency/2
  {label,873}.
    {move,{atom,error},{x,0}}.
    return.
  {label,874}.
    {test,is_nil,{f,871},[{x,0}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, t_bad_update, 1, 876}.
  {label,875}.
    {line,[{location,"map_SUITE.erl",2228}]}.
    {func_info,{atom,map_SUITE},{atom,t_bad_update},1}.
  {label,876}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,#{}},{x,0}}.
    {line,[{location,"map_SUITE.erl",2229}]}.
    {call,1,{f,882}}. % properly/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_tuple,2,true,
                     #{1 => {t_map,{t_float,{0.0,0.0}},{t_fun,1,{id,1},any}},
                       2 => {t_map,none,none}}}}]}}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,has_map_fields,{f,880},{x,1},{list,[{float,0.0}]}}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"map_SUITE.erl",2230}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_eq_exact,{f,879},[{x,0},{integer,42}]}.
    {'catch',{y,0},{f,877}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2231}]}.
    {call,1,{f,884}}. % increase/1
  {label,877}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,878},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,878},[{x,1}]}.
    {test,test_arity,{f,878},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,878},[{x,1},2,{atom,badmap}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,878}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",2231}]}.
    {badmatch,{x,0}}.
  {label,879}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2230}]}.
    {badmatch,{x,0}}.
  {label,880}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2229}]}.
    {badmatch,{x,0}}.


{function, properly, 1, 882}.
  {label,881}.
    {line,[{location,"map_SUITE.erl",2234}]}.
    {func_info,{atom,map_SUITE},{atom,properly},1}.
  {label,882}.
    {'%',{var_info,{x,0},[{type,{t_map,none,none}}]}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1107},0,0,{x,0},{list,[]}}.
    {put_map_assoc,{f,0},{literal,#{}},{x,0},1,{list,[{float,0.0},{x,0}]}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{x,0},{literal,#{}}]}}.
    return.


{function, increase, 1, 884}.
  {label,883}.
    {line,[{location,"map_SUITE.erl",2237}]}.
    {func_info,{atom,map_SUITE},{atom,increase},1}.
  {label,884}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,0}}}]}}.
    {allocate_heap,1,{alloc,[{words,1},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1201},0,0,{x,0},{list,[{integer,0}]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_integer,{0,0}}}]}}.
    {'catch',{y,0},{f,885}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,badmap},{x,0}]}}.
    {line,[{location,"map_SUITE.erl",2238}]}.
    {call_ext,1,{extfunc,erlang,error,1}}.
  {label,885}.
    {catch_end,{y,0}}.
    {deallocate,1}.
    return.


{function, t_reused_key_variable, 1, 887}.
  {label,886}.
    {line,[{location,"map_SUITE.erl",2240}]}.
    {func_info,{atom,map_SUITE},{atom,t_reused_key_variable},1}.
  {label,887}.
    {test,is_list,{f,886},[{x,0}]}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{x,0},{y,1}}.
    {move,{atom,key},{x,0}}.
    {line,[{location,"map_SUITE.erl",2241}]}.
    {call,1,{f,1107}}. % id/1
    {put_map_assoc,{f,0},{literal,#{}},{x,1},1,{list,[{x,0},{y,1}]}}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"map_SUITE.erl",2242}]}.
    {call,1,{f,1107}}. % id/1
    {put_map_assoc,{f,0},{literal,#{}},{x,1},1,{list,[{y,0},{y,1}]}}.
    {move,{x,0},{y,1}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"map_SUITE.erl",2243}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,888},[{y,1}]}.
    {get_map_elements,{f,888},{tr,{y,1},{t_map,any,any}},{list,[{y,0},{x,1}]}}.
    {test,is_map,{f,888},[{x,0}]}.
    {get_map_elements,{f,888},{tr,{x,0},{t_map,any,any}},{list,[{y,0},{x,2}]}}.
    {test,is_eq_exact,{f,888},[{x,2},{x,1}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,888}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{y,1},{x,0}]}}.
    {line,[{location,"map_SUITE.erl",2244}]}.
    {case_end,{x,0}}.


{function, t_mixed_clause, 1, 890}.
  {label,889}.
    {line,[{location,"map_SUITE.erl",2251}]}.
    {func_info,{atom,map_SUITE},{atom,t_mixed_clause},1}.
  {label,890}.
    {allocate,0,0}.
    {move,{atom,x},{x,1}}.
    {move,{atom,fool_inliner},{x,0}}.
    {line,[{location,"map_SUITE.erl",2252}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {bif,get,{f,0},[{atom,fool_inliner}],{x,0}}.
    {put_map_assoc,{f,0},{literal,#{}},{x,0},1,{list,[{x,0},{integer,42}]}}.
    {put_map_assoc,{f,0},{x,0},{x,0},1,{list,[{atom,y},{integer,100}]}}.
    {get_map_elements,{f,892},
                      {tr,{x,0},{t_map,any,{t_integer,{42,100}}}},
                      {list,[{atom,x},{x,1}]}}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,1},{integer,100}]}}.
    {test,is_eq_exact,
          {f,891},
          [{tr,{x,0},
               {t_tuple,2,true,
                        #{1 => {t_integer,{42,100}},
                          2 => {t_integer,{100,100}}}}},
           {literal,{42,100}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,891}.
    {line,[{location,"map_SUITE.erl",2254}]}.
    {badmatch,{x,0}}.
  {label,892}.
    {case_end,{x,0}}.


{function, cover_beam_trim, 1, 894}.
  {label,893}.
    {line,[{location,"map_SUITE.erl",2266}]}.
    {func_info,{atom,map_SUITE},{atom,cover_beam_trim},1}.
  {label,894}.
    {allocate,0,0}.
    {move,{atom,max},{x,2}}.
    {move,{atom,id},{x,3}}.
    {move,{atom,max},{x,1}}.
    {move,{literal,#{id => val}},{x,4}}.
    {move,{atom,id},{x,0}}.
    {line,[{location,"map_SUITE.erl",2267}]}.
    {call,5,{f,897}}. % do_cover_beam_trim/5
    {test,is_eq_exact,{f,895},[{x,0},{atom,val}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,895}.
    {badmatch,{x,0}}.


{function, do_cover_beam_trim, 5, 897}.
  {label,896}.
    {line,[{location,"map_SUITE.erl",2270}]}.
    {func_info,{atom,map_SUITE},{atom,do_cover_beam_trim},5}.
  {label,897}.
    {'%',{var_info,{x,0},[{type,{t_atom,[id]}}]}}.
    {'%',{var_info,{x,1},[{type,{t_atom,[max]}}]}}.
    {'%',{var_info,{x,2},[{type,{t_atom,[max]}}]}}.
    {'%',{var_info,{x,3},[{type,{t_atom,[id]}}]}}.
    {'%',{var_info,{x,4},[{type,{t_map,{t_atom,[id]},{t_atom,[val]}}}]}}.
    {allocate,1,5}.
    {move,{x,4},{y,0}}.
    {move,{atom,max},{x,0}}.
    {line,[{location,"map_SUITE.erl",2271}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_eq_exact,{f,899},[{x,0},{atom,max}]}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"map_SUITE.erl",2272}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,898},[{x,0}]}.
    {get_map_elements,{f,898},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{atom,id},{x,1}]}}.
    {move,{x,1},{x,0}}.
    {deallocate,0}.
    return.
  {label,898}.
    {badmatch,{x,0}}.
  {label,899}.
    {line,[{location,"map_SUITE.erl",2271}]}.
    {badmatch,{x,0}}.


{function, t_key_expressions, 1, 901}.
  {label,900}.
    {line,[{location,"map_SUITE.erl",2275}]}.
    {func_info,{atom,map_SUITE},{atom,t_key_expressions},1}.
  {label,901}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{integer,42},{x,0}}.
    {line,[{location,"map_SUITE.erl",2276}]}.
    {call,1,{f,1107}}. % id/1
    {test_heap,3,1}.
    {put_tuple2,{x,1},{list,[{atom,tag},{x,0}]}}.
    {put_map_assoc,{f,0},{literal,#{}},{x,1},2,{list,[{x,1},{integer,42}]}}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {line,[{location,"map_SUITE.erl",2277}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,919},[{x,0}]}.
    {test_heap,3,1}.
    {put_tuple2,{x,1},{list,[{atom,tag},{y,0}]}}.
    {get_map_elements,{f,919},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{tr,{x,1},
                                 {t_tuple,2,true,#{1 => {t_atom,[tag]}}}},
                             {x,1}]}}.
    {test,is_eq_exact,{f,919},[{x,1},{integer,42}]}.
    {line,[{location,"map_SUITE.erl",2278}]}.
    {gc_bif,'+',{f,0},0,[{y,0},{integer,1}],{x,0}}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,tag},{x,0}]}}.
    {put_map_assoc,{f,0},{literal,#{}},{x,0},1,{list,[{x,0},{integer,42}]}}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",2278}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,918},[{x,0}]}.
    {gc_bif,'+',{f,918},1,[{tr,{y,0},{t_number,any}},{integer,1}],{x,1}}.
    {test_heap,3,2}.
    {put_tuple2,{x,1},{list,[{atom,tag},{x,1}]}}.
    {get_map_elements,
        {f,918},
        {tr,{x,0},{t_map,any,any}},
        {list,
            [{tr,{x,1},
                 {t_tuple,2,true,#{1 => {t_atom,[tag]},2 => {t_number,any}}}},
             {x,1}]}}.
    {test,is_eq_exact,{f,918},[{x,1},{integer,42}]}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,tag},{y,0}]}}.
    {put_map_assoc,{f,0},
                   {literal,#{}},
                   {x,1},
                   1,
                   {list,[{literal,{a,b}},{atom,x}]}}.
    {put_map_assoc,{f,0},{x,1},{x,0},2,{list,[{x,0},{integer,42}]}}.
    {put_map_assoc,{f,0},{x,0},{x,0},1,{list,[{y,0},{integer,0}]}}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",2280}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,917},[{x,0}]}.
    {get_map_elements,{f,917},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{literal,{a,b}},{x,1}]}}.
    {get_map_elements,{f,917},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{tr,{y,0},{t_number,any}},{x,2}]}}.
    {test,is_eq_exact,{f,917},[{x,1},{atom,x}]}.
    {test,is_eq_exact,{f,917},[{x,2},{integer,0}]}.
    {test_heap,3,1}.
    {put_tuple2,{x,1},{list,[{atom,tag},{y,0}]}}.
    {get_map_elements,
        {f,917},
        {tr,{x,0},{t_map,any,any}},
        {list,
            [{tr,{x,1},
                 {t_tuple,2,true,#{1 => {t_atom,[tag]},2 => {t_number,any}}}},
             {x,1}]}}.
    {test,is_eq_exact,{f,917},[{x,1},{integer,42}]}.
    {move,{y,0},{x,1}}.
    {move,{literal,#{43 => val}},{x,0}}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",2283}]}.
    {call,2,{f,1198}}. % '-t_key_expressions/1-fun-0-'/2
    {test,is_eq_exact,{f,916},[{x,0},{atom,val}]}.
    {'catch',{y,1},{f,902}}.
    {move,{y,0},{x,1}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",2284}]}.
    {call,2,{f,1198}}. % '-t_key_expressions/1-fun-0-'/2
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,902}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,915},[{x,0},2,{atom,'EXIT'}]}.
    {move,{integer,2},{x,1}}.
    {move,{literal,{a,b,c}},{x,2}}.
    {move,{literal,#{b => <<0,3,120,121,122>>}},{x,0}}.
    {line,[{scope,[3,4]},{location,"map_SUITE.erl",2296}]}.
    {call,3,{f,1193}}. % '-t_key_expressions/1-fun-1-'/3
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[not_found]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,914},
          [{tr,{x,0},
               {t_union,{t_atom,[not_found]},
                        none,none,none,
                        {t_bitstring,8,false}}},
           {literal,<<"xyz">>}]}.
    {move,{integer,999},{x,1}}.
    {move,{literal,{a,b,c}},{x,2}}.
    {move,{literal,#{b => <<0,3,120,121,122>>}},{x,0}}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2297}]}.
    {call,3,{f,1193}}. % '-t_key_expressions/1-fun-1-'/3
    {'%',{var_info,{x,0},
                   [{type,{t_union,{t_atom,[not_found]},
                                   none,none,none,
                                   {t_bitstring,8,false}}}]}}.
    {test,is_eq_exact,
          {f,913},
          [{tr,{x,0},
               {t_union,{t_atom,[not_found]},
                        none,none,none,
                        {t_bitstring,8,false}}},
           {atom,not_found}]}.
    {move,{integer,1},{x,1}}.
    {move,{integer,2},{x,2}}.
    {move,{literal,{6,7}},{x,0}}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2298}]}.
    {call,3,{f,1193}}. % '-t_key_expressions/1-fun-1-'/3
    {'%',{var_info,{x,0},[{type,{t_number,any}}]}}.
    {test,is_eq_exact,{f,912},[{tr,{x,0},{t_number,any}},{integer,13}]}.
    {move,{literal,#{<<208,161,208,191,209,131,209,130,208,189,208,184,208,
                       186>> =>
                         1}},
          {x,0}}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2300}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,911},[{x,0}]}.
    {get_map_elements,{f,911},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{literal,<<208,161,208,191,209,131,209,130,208,
                                        189,208,184,208,186>>},
                             {x,1}]}}.
    {test,is_eq_exact,{f,911},[{x,1},{integer,1}]}.
    {move,{y,0},{x,1}}.
    {move,{literal,{7,3}},{x,0}}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2313}]}.
    {call,2,{f,1188}}. % '-t_key_expressions/1-fun-3-'/2
    {test,is_eq_exact,{f,910},[{x,0},{integer,10}]}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2314}]}.
    {bs_create_bin,{f,0},
                   3,0,2,
                   {x,0},
                   {list,[{atom,integer},
                          1,1,nil,
                          {tr,{y,0},{t_number,any}},
                          {integer,42}]}}.
    {put_tuple2,{x,0},{list,[{atom,tag},{x,0}]}}.
    {put_map_assoc,{f,0},{literal,#{}},{x,0},1,{list,[{x,0},{atom,whatever}]}}.
    {move,{y,0},{x,1}}.
    {init_yregs,{list,[{y,0}]}}.
    {call,2,{f,1188}}. % '-t_key_expressions/1-fun-3-'/2
    {test,is_eq_exact,{f,909},[{x,0},{atom,whatever}]}.
    {move,{integer,21},{x,1}}.
    {move,{literal,#{2 => value}},{x,2}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2322}]}.
    {call,3,{f,1184}}. % '-t_key_expressions/1-fun-4-'/3
    {test,is_eq_exact,{f,908},[{x,0},{atom,value}]}.
    {move,{integer,21},{x,1}}.
    {move,{literal,#{}},{x,2}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2323}]}.
    {call,3,{f,1184}}. % '-t_key_expressions/1-fun-4-'/3
    {test,is_eq_exact,{f,907},[{x,0},{atom,no_match}]}.
    {move,{integer,0},{x,1}}.
    {move,{literal,#{2 => value}},{x,2}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2324}]}.
    {call,3,{f,1184}}. % '-t_key_expressions/1-fun-4-'/3
    {test,is_eq_exact,{f,906},[{x,0},{atom,no_match}]}.
    {move,{atom,a},{x,1}}.
    {move,{literal,#{2 => value}},{x,2}}.
    {move,{integer,42},{x,0}}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2325}]}.
    {call,3,{f,1184}}. % '-t_key_expressions/1-fun-4-'/3
    {'%',{var_info,{x,0},[{type,{t_atom,[no_match]}}]}}.
    {move,{float,0.5},{x,0}}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2336}]}.
    {call,1,{f,1179}}. % '-t_key_expressions/1-fun-5-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[error]}}]}}.
    {move,{atom,any},{x,0}}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2345}]}.
    {call,1,{f,1175}}. % '-t_key_expressions/1-fun-6-'/1
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{1 => {t_atom,[error]}}}}]}}.
    {test,is_eq_exact,
          {f,905},
          [{tr,{x,0},{t_tuple,2,true,#{1 => {t_atom,[error]}}}},
           {literal,{error,any}}]}.
    {'catch',{y,0},{f,903}}.
    {move,{atom,whatever},{x,0}}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2357}]}.
    {call,1,{f,1170}}. % '-t_key_expressions/1-fun-7-'/1
  {label,903}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,904},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,904},[{x,1},2,{atom,badarg}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,904}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",2357}]}.
    {badmatch,{x,0}}.
  {label,905}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2345}]}.
    {badmatch,{x,0}}.
  {label,906}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2324}]}.
    {badmatch,{x,0}}.
  {label,907}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2323}]}.
    {badmatch,{x,0}}.
  {label,908}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2322}]}.
    {badmatch,{x,0}}.
  {label,909}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2314}]}.
    {badmatch,{x,0}}.
  {label,910}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2313}]}.
    {badmatch,{x,0}}.
  {label,911}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2300}]}.
    {badmatch,{x,0}}.
  {label,912}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2298}]}.
    {badmatch,{x,0}}.
  {label,913}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2297}]}.
    {badmatch,{x,0}}.
  {label,914}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2296}]}.
    {badmatch,{x,0}}.
  {label,915}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2284}]}.
    {badmatch,{x,0}}.
  {label,916}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",2283}]}.
    {badmatch,{x,0}}.
  {label,917}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",2279}]}.
    {badmatch,{x,0}}.
  {label,918}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",2278}]}.
    {badmatch,{x,0}}.
  {label,919}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",2277}]}.
    {badmatch,{x,0}}.


{function, t_duplicate_keys, 1, 921}.
  {label,920}.
    {line,[{location,"map_SUITE.erl",2361}]}.
    {func_info,{atom,map_SUITE},{atom,t_duplicate_keys},1}.
  {label,921}.
    {test,is_list,{f,920},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,#{gurka => gaffel}},{x,0}}.
    {line,[{location,"map_SUITE.erl",2363}]}.
    {call,1,{f,1107}}. % id/1
    {call,1,{f,925}}. % dup_keys_1/1
    {test,is_eq_exact,{f,923},[{x,0},{literal,#{gurka => gaffel}}]}.
    {move,{literal,#{'__struct__' => ok}},{x,0}}.
    {line,[{location,"map_SUITE.erl",2365}]}.
    {call,1,{f,925}}. % dup_keys_1/1
    {test,is_eq_exact,{f,922},[{x,0},{atom,ok}]}.
    {deallocate,0}.
    return.
  {label,922}.
    {badmatch,{x,0}}.
  {label,923}.
    {line,[{location,"map_SUITE.erl",2363}]}.
    {badmatch,{x,0}}.


{function, dup_keys_1, 1, 925}.
  {label,924}.
    {line,[{location,"map_SUITE.erl",2369}]}.
    {func_info,{atom,map_SUITE},{atom,dup_keys_1},1}.
  {label,925}.
    {test,is_map,{f,926},[{x,0}]}.
    {test,has_map_fields,{f,926},{x,0},{list,[{atom,'__struct__'}]}}.
    {move,{atom,ok},{x,0}}.
    return.
  {label,926}.
    return.


{function, t_fold_3, 1, 928}.
  {label,927}.
    {line,[{location,"map_SUITE.erl",2382}]}.
    {func_info,{atom,map_SUITE},{atom,t_fold_3},1}.
  {label,928}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{integer,200},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"map_SUITE.erl",2383}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {move,{x,0},{y,2}}.
    {line,[{location,"map_SUITE.erl",2384}]}.
    {call,1,{f,1166}}. % '-t_fold_3/1-lc$^0/1-0-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_tuple,2,true,#{1 => {t_atom,[k]}}}}},
                     nil}}]}}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {move,{x,0},{y,1}}.
    {get_map_elements,{f,935},
                      {tr,{x,0},
                          {t_map,{t_tuple,2,true,#{1 => {t_atom,[k]}}},any}},
                      {list,[{literal,{k,1}},{x,0}]}}.
    {get_map_elements,{f,935},
                      {tr,{y,1},
                          {t_map,{t_tuple,2,true,#{1 => {t_atom,[k]}}},any}},
                      {list,[{literal,{k,200}},{x,1}]}}.
    {test,is_eq_exact,{f,935},[{x,0},{integer,1}]}.
    {test,is_eq_exact,{f,935},[{x,1},{integer,200}]}.
    {move,{y,2},{x,0}}.
    {init_yregs,{list,[{y,2}]}}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",2386}]}.
    {call_ext,1,{extfunc,lists,sum,1}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},1}.
    {make_fun3,{f,1164},0,0,{x,1},{list,[]}}.
    {'%',{var_info,{x,1},[{fun_type,{t_number,any}}]}}.
    {move,{x,0},{y,2}}.
    {move,{y,1},{x,2}}.
    {move,{x,1},{x,0}}.
    {move,{integer,0},{x,1}}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",2387}]}.
    {call_ext,3,{extfunc,maps,fold,3}}.
    {test,is_eq_exact,{f,934},[{y,2},{tr,{x,0},{t_number,any}}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1162},0,0,{y,0},{list,[]}}.
    {'%',{var_info,{y,0},[{fun_type,{t_number,any}}]}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",2389}]}.
    {call_ext,1,{extfunc,maps,iterator,1}}.
    {move,{integer,0},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {call_ext,3,{extfunc,maps,fold,3}}.
    {test,is_eq_exact,
          {f,933},
          [{tr,{y,2},{t_number,any}},{tr,{x,0},{t_number,any}}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1160},0,0,{y,1},{list,[]}}.
    {'%',{var_info,{y,1},[{fun_type,{t_atom,[ok]}}]}}.
    {'catch',{y,2},{f,929}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",2393}]}.
    {call,1,{f,1107}}. % id/1
    {move,{integer,0},{x,1}}.
    {move,{x,0},{x,2}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {call_ext,3,{extfunc,maps,fold,3}}.
  {label,929}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,932},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,932},[{x,1}]}.
    {test,test_arity,{f,932},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,932},[{x,2},{literal,{badmap,a}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,932},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,932},[{x,1},4,{atom,maps}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,932},[{x,2},{atom,fold}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_nonempty_list,{f,932},[{x,1}]}.
    {get_tl,{x,1},{x,1}}.
    {test,is_eq_exact,{f,932},[{x,1},{literal,[0,a]}]}.
    {'catch',{y,1},{f,930}}.
    {init_yregs,{list,[{y,2}]}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2394}]}.
    {call,1,{f,1107}}. % id/1
    {move,{literal,#{}},{x,2}}.
    {move,{integer,0},{x,1}}.
    {call_ext,3,{extfunc,maps,fold,3}}.
  {label,930}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,931},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,931},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,931},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,931},[{x,1},4,{atom,maps}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,931},[{x,2},{atom,fold}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_nonempty_list,{f,931},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_eq_exact,{f,931},[{x,2},{literal,<<>>}]}.
    {test,is_nonempty_list,{f,931},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_eq_exact,{f,931},[{x,2},{integer,0}]}.
    {test,is_nonempty_list,{f,931},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_map,{f,931},[{x,2}]}.
    {test,is_nil,{f,931},[{x,1}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,3}.
    return.
  {label,931}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",2394}]}.
    {badmatch,{x,0}}.
  {label,932}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2393}]}.
    {badmatch,{x,0}}.
  {label,933}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",2390}]}.
    {badmatch,{atom,false}}.
  {label,934}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",2388}]}.
    {badmatch,{atom,false}}.
  {label,935}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",2385}]}.
    {badmatch,{y,1}}.


{function, t_from_keys, 1, 937}.
  {label,936}.
    {line,[{location,"map_SUITE.erl",2397}]}.
    {func_info,{atom,map_SUITE},{atom,t_from_keys},1}.
  {label,937}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{atom,value},{x,1}}.
    {move,{literal,["a",2,{three}]},{x,0}}.
    {line,[{location,"map_SUITE.erl",2398}]}.
    {call_ext,2,{extfunc,maps,from_keys,2}}.
    {line,[{location,"map_SUITE.erl",2399}]}.
    {gc_bif,map_size,
            {f,0},
            1,
            [{tr,{x,0},
                 {t_map,{t_union,none,
                                 {t_cons,{t_integer,{97,97}},nil},
                                 {t_integer,{2,2}},
                                 [{{1,{t_atom,[three]}},
                                   {t_tuple,1,true,#{1 => {t_atom,[three]}}}}],
                                 none},
                        {t_atom,[value]}}}],
            {x,1}}.
    {test,is_eq_exact,
          {f,946},
          [{tr,{x,1},{t_integer,{0,288230376151711743}}},{integer,3}]}.
    {test,has_map_fields,
          {f,945},
          {x,0},
          {list,[{integer,2},{literal,{three}},{literal,"a"}]}}.
    {move,{literal,{complex,value}},{x,1}}.
    {move,{literal,[1,2,2]},{x,0}}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",2402}]}.
    {call_ext,2,{extfunc,maps,from_keys,2}}.
    {line,[{location,"map_SUITE.erl",2403}]}.
    {gc_bif,map_size,
            {f,0},
            1,
            [{tr,{x,0},
                 {t_map,{t_integer,{1,2}},
                        {t_tuple,2,true,
                                 #{1 => {t_atom,[complex]},
                                   2 => {t_atom,[value]}}}}}],
            {x,1}}.
    {test,is_eq_exact,
          {f,944},
          [{tr,{x,1},{t_integer,{0,288230376151711743}}},{integer,2}]}.
    {test,has_map_fields,{f,943},{x,0},{list,[{integer,1},{integer,2}]}}.
    {move,{atom,value},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",2406}]}.
    {call_ext,2,{extfunc,maps,from_keys,2}}.
    {line,[{location,"map_SUITE.erl",2407}]}.
    {gc_bif,map_size,{f,0},0,[{literal,#{}}],{x,0}}.
    {test,is_eq_exact,
          {f,942},
          [{tr,{x,0},{t_integer,{0,288230376151711743}}},{integer,0}]}.
    {'catch',{y,1},{f,938}}.
    {move,{atom,value},{x,1}}.
    {move,{literal,[a|b]},{x,0}}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",2409}]}.
    {call_ext,2,{extfunc,maps,from_keys,2}}.
  {label,938}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,941},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,941},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,941},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,941},[{x,1},4,{atom,maps}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,941},[{x,2},{atom,from_keys}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_eq_exact,{f,941},[{x,1},{literal,[[a|b],value]}]}.
    {'catch',{y,0},{f,939}}.
    {move,{atom,value},{x,1}}.
    {move,{atom,not_list},{x,0}}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2410}]}.
    {call_ext,2,{extfunc,maps,from_keys,2}}.
  {label,939}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,940},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,940},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,940},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,940},[{x,1},4,{atom,maps}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,940},[{x,2},{atom,from_keys}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_eq_exact,{f,940},[{x,1},{literal,[not_list,value]}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,940}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",2410}]}.
    {badmatch,{x,0}}.
  {label,941}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2409}]}.
    {badmatch,{x,0}}.
  {label,942}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",2407}]}.
    {badmatch,{x,0}}.
  {label,943}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",2404}]}.
    {badmatch,{x,0}}.
  {label,944}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",2403}]}.
    {badmatch,{x,1}}.
  {label,945}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",2400}]}.
    {badmatch,{x,0}}.
  {label,946}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",2399}]}.
    {badmatch,{x,1}}.


{function, t_map_2, 1, 948}.
  {label,947}.
    {line,[{location,"map_SUITE.erl",2413}]}.
    {func_info,{atom,map_SUITE},{atom,t_map_2},1}.
  {label,948}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{integer,200},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"map_SUITE.erl",2414}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {line,[{location,"map_SUITE.erl",2415}]}.
    {call,1,{f,1156}}. % '-t_map_2/1-lc$^0/1-0-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_tuple,2,true,#{1 => {t_atom,[k]}}}}},
                     nil}}]}}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {move,{x,0},{y,1}}.
    {get_map_elements,{f,955},
                      {tr,{x,0},
                          {t_map,{t_tuple,2,true,#{1 => {t_atom,[k]}}},any}},
                      {list,[{literal,{k,1}},{x,0}]}}.
    {get_map_elements,{f,955},
                      {tr,{y,1},
                          {t_map,{t_tuple,2,true,#{1 => {t_atom,[k]}}},any}},
                      {list,[{literal,{k,200}},{x,1}]}}.
    {test,is_eq_exact,{f,955},[{x,0},{integer,1}]}.
    {test,is_eq_exact,{f,955},[{x,1},{integer,200}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1154},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_number,any}}]}}.
    {move,{y,1},{x,1}}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",2417}]}.
    {call_ext,2,{extfunc,maps,map,2}}.
    {get_map_elements,{f,954},
                      {tr,{x,0},
                          {t_map,{t_tuple,2,true,#{1 => {t_atom,[k]}}},any}},
                      {list,[{literal,{k,200}},{x,2},{literal,{k,1}},{x,1}]}}.
    {test,is_eq_exact,{f,954},[{x,1},{integer,43}]}.
    {test,is_eq_exact,{f,954},[{x,2},{integer,242}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1152},0,0,{y,0},{list,[]}}.
    {'%',{var_info,{y,0},[{fun_type,{t_number,any}}]}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",2419}]}.
    {call_ext,1,{extfunc,maps,iterator,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {call_ext,2,{extfunc,maps,map,2}}.
    {get_map_elements,{f,953},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{literal,{k,200}},{x,2},{literal,{k,1}},{x,1}]}}.
    {test,is_eq_exact,{f,953},[{x,1},{integer,43}]}.
    {test,is_eq_exact,{f,953},[{x,2},{integer,242}]}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1150},0,0,{y,0},{list,[]}}.
    {'%',{var_info,{y,0},[{fun_type,{t_atom,[ok]}}]}}.
    {'catch',{y,1},{f,949}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",2423}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {init_yregs,{list,[{y,0}]}}.
    {call_ext,2,{extfunc,maps,map,2}}.
  {label,949}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,952},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,952},[{x,1}]}.
    {test,test_arity,{f,952},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,952},[{x,2},{literal,{badmap,a}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,952},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,952},[{x,1},4,{atom,maps}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,952},[{x,2},{atom,map}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_nonempty_list,{f,952},[{x,1}]}.
    {get_tl,{x,1},{x,1}}.
    {test,is_eq_exact,{f,952},[{x,1},{literal,[a]}]}.
    {'catch',{y,0},{f,950}}.
    {move,{literal,<<>>},{x,0}}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2424}]}.
    {call,1,{f,1107}}. % id/1
    {move,{literal,#{}},{x,1}}.
    {call_ext,2,{extfunc,maps,map,2}}.
  {label,950}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,951},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,951},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,951},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,951},[{x,1},4,{atom,maps}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,951},[{x,2},{atom,map}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_nonempty_list,{f,951},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_eq_exact,{f,951},[{x,2},{literal,<<>>}]}.
    {test,is_nonempty_list,{f,951},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_map,{f,951},[{x,2}]}.
    {test,is_nil,{f,951},[{x,1}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,951}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",2424}]}.
    {badmatch,{x,0}}.
  {label,952}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2423}]}.
    {badmatch,{x,0}}.
  {label,953}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",2420}]}.
    {badmatch,{x,0}}.
  {label,954}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",2418}]}.
    {badmatch,{x,0}}.
  {label,955}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",2416}]}.
    {badmatch,{y,1}}.


{function, t_maps_take_2, 1, 957}.
  {label,956}.
    {line,[{location,"map_SUITE.erl",2427}]}.
    {func_info,{atom,map_SUITE},{atom,t_maps_take_2},1}.
  {label,957}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{literal,#{a => yes,b => no}},{x,1}}.
    {move,{atom,a},{x,0}}.
    {line,[{location,"map_SUITE.erl",2428}]}.
    {call_ext,2,{extfunc,maps,take,2}}.
    {test,is_tagged_tuple,
        {f,961},
        [{tr,{x,0},
             {t_union,
                 {t_atom,[error]},
                 none,none,
                 {t_tuple,2,true,
                     #{1 => {t_atom,[no,yes]},
                       2 => {t_map,{t_atom,[a,b]},{t_atom,[no,yes]}}}},
                 none}},
         2,
         {atom,yes}]}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {test,is_eq_exact,
          {f,960},
          [{tr,{x,0},{t_map,{t_atom,[a,b]},{t_atom,[no,yes]}}},
           {literal,#{b => no}}]}.
    {move,{literal,#{b => no}},{x,1}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2431}]}.
    {call_ext,2,{extfunc,maps,take,2}}.
    {move,{atom,b},{x,0}}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2433}]}.
    {call,1,{f,963}}. % not_map/1
    {'%',{var_info,{x,0},[{type,{t_atom,[b]}}]}}.
    {'catch',{y,0},{f,958}}.
    {move,{atom,b},{x,1}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2434}]}.
    {call_ext,2,{extfunc,maps,take,2}}.
  {label,958}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,959},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,959},[{x,1}]}.
    {test,test_arity,{f,959},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,959},[{x,1},{literal,{badmap,b}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,959}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",2434}]}.
    {badmatch,{x,0}}.
  {label,960}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2429}]}.
    {badmatch,{atom,false}}.
  {label,961}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2428}]}.
    {badmatch,{x,0}}.


{function, not_map, 1, 963}.
  {label,962}.
    {line,[{location,"map_SUITE.erl",2438}]}.
    {func_info,{atom,map_SUITE},{atom,not_map},1}.
  {label,963}.
    {'%',{var_info,{x,0},[{type,{t_atom,[b]}}]}}.
    return.


{function, t_update_with_3, 1, 965}.
  {label,964}.
    {line,[{location,"map_SUITE.erl",2440}]}.
    {func_info,{atom,map_SUITE},{atom,t_update_with_3},1}.
  {label,965}.
    {test,is_list,{f,964},[{x,0}]}.
    {allocate_heap,4,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {init_yregs,{list,[{y,1},{y,2},{y,3}]}}.
    {make_fun3,{f,1148},0,0,{y,0},{list,[]}}.
    {'%',{var_info,{y,0},[{fun_type,{t_cons,any,nil}}]}}.
    {move,{y,0},{x,1}}.
    {move,{literal,#{key1 => value1,key2 => <<"value2">>,"key3" => "value3"}},
          {x,2}}.
    {move,{atom,key1},{x,0}}.
    {line,[{location,"map_SUITE.erl",2447}]}.
    {call_ext,3,{extfunc,maps,update_with,3}}.
    {get_map_elements,
        {f,974},
        {tr,{x,0},
            {t_map,
                {t_union,
                    {t_atom,[key1,key2]},
                    {t_cons,{t_integer,{51,121}},nil},
                    none,none,none},
                {t_union,
                    {t_atom,[value1]},
                    {t_cons,any,nil},
                    none,none,
                    {t_bitstring,16,false}}}},
        {list,[{atom,key1},{x,1}]}}.
    {test,is_nonempty_list,{f,974},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_nonempty_list,{f,974},[{x,1}]}.
    {get_list,{x,1},{x,3},{x,1}}.
    {test,is_nonempty_list,{f,974},[{x,1}]}.
    {get_list,{x,1},{x,4},{x,1}}.
    {test,is_tuple,{f,974},[{x,4}]}.
    {test,test_arity,{f,974},[{x,4},2]}.
    {test,is_nil,{f,974},[{tr,{x,1},{t_list,any,nil}}]}.
    {test,is_eq_exact,{f,974},[{x,2},{atom,value1}]}.
    {test,is_eq_exact,{f,974},[{x,3},{atom,value1}]}.
    {get_tuple_element,{x,4},0,{x,1}}.
    {test,is_eq_exact,{f,974},[{x,1},{atom,value1}]}.
    {get_tuple_element,{x,4},1,{x,1}}.
    {test,is_eq_exact,{f,974},[{x,1},{atom,value1}]}.
    {move,{y,0},{x,1}}.
    {move,{literal,#{key1 => value1,key2 => <<"value2">>,"key3" => "value3"}},
          {x,2}}.
    {move,{atom,key2},{x,0}}.
    {line,[{scope,[6]},{location,"map_SUITE.erl",2448}]}.
    {call_ext,3,{extfunc,maps,update_with,3}}.
    {get_map_elements,
        {f,973},
        {tr,{x,0},
            {t_map,
                {t_union,
                    {t_atom,[key1,key2]},
                    {t_cons,{t_integer,{51,121}},nil},
                    none,none,none},
                {t_union,
                    {t_atom,[value1]},
                    {t_cons,any,nil},
                    none,none,
                    {t_bitstring,16,false}}}},
        {list,[{atom,key2},{x,1}]}}.
    {test,is_nonempty_list,{f,973},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_nonempty_list,{f,973},[{x,1}]}.
    {get_list,{x,1},{x,3},{x,1}}.
    {test,is_nonempty_list,{f,973},[{x,1}]}.
    {get_list,{x,1},{x,4},{x,1}}.
    {test,is_tuple,{f,973},[{x,4}]}.
    {test,test_arity,{f,973},[{x,4},2]}.
    {test,is_nil,{f,973},[{tr,{x,1},{t_list,any,nil}}]}.
    {test,is_eq_exact,{f,973},[{x,2},{literal,<<"value2">>}]}.
    {test,is_eq_exact,{f,973},[{x,3},{literal,<<"value2">>}]}.
    {get_tuple_element,{x,4},0,{x,1}}.
    {test,is_eq_exact,{f,973},[{x,1},{literal,<<"value2">>}]}.
    {get_tuple_element,{x,4},1,{x,1}}.
    {test,is_eq_exact,{f,973},[{x,1},{literal,<<"value2">>}]}.
    {move,{y,0},{x,1}}.
    {move,{literal,#{key1 => value1,key2 => <<"value2">>,"key3" => "value3"}},
          {x,2}}.
    {move,{literal,"key3"},{x,0}}.
    {line,[{scope,[6]},{location,"map_SUITE.erl",2449}]}.
    {call_ext,3,{extfunc,maps,update_with,3}}.
    {get_map_elements,
        {f,972},
        {tr,{x,0},
            {t_map,
                {t_union,
                    {t_atom,[key1,key2]},
                    {t_cons,{t_integer,{51,121}},nil},
                    none,none,none},
                {t_union,
                    {t_atom,[value1]},
                    {t_cons,any,nil},
                    none,none,
                    {t_bitstring,16,false}}}},
        {list,[{literal,"key3"},{x,1}]}}.
    {test,is_nonempty_list,{f,972},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_nonempty_list,{f,972},[{x,1}]}.
    {get_list,{x,1},{x,3},{x,1}}.
    {test,is_nonempty_list,{f,972},[{x,1}]}.
    {get_list,{x,1},{x,4},{x,1}}.
    {test,is_tuple,{f,972},[{x,4}]}.
    {test,test_arity,{f,972},[{x,4},2]}.
    {test,is_nil,{f,972},[{tr,{x,1},{t_list,any,nil}}]}.
    {test,is_eq_exact,{f,972},[{x,2},{literal,"value3"}]}.
    {test,is_eq_exact,{f,972},[{x,3},{literal,"value3"}]}.
    {get_tuple_element,{x,4},0,{x,1}}.
    {test,is_eq_exact,{f,972},[{x,1},{literal,"value3"}]}.
    {get_tuple_element,{x,4},1,{x,1}}.
    {test,is_eq_exact,{f,972},[{x,1},{literal,"value3"}]}.
    {'catch',{y,3},{f,966}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[6]},{location,"map_SUITE.erl",2452}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{atom,b},{x,2}}.
    {move,{literal,[a,b]},{x,0}}.
    {call_ext,3,{extfunc,maps,update_with,3}}.
  {label,966}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,971},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,971},[{x,1}]}.
    {test,test_arity,{f,971},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,971},[{x,2},{literal,{badmap,b}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,971},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,971},[{x,1},4,{atom,maps}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,971},[{x,2},{atom,update_with}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_eq_exact,{f,971},[{x,1},{literal,[[a,b],a,b]}]}.
    {'catch',{y,2},{f,967}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",2453}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{literal,#{}},{x,2}}.
    {move,{literal,[a,b]},{x,0}}.
    {call_ext,3,{extfunc,maps,update_with,3}}.
  {label,967}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,970},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,970},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,970},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,970},[{x,1},4,{atom,maps}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,970},[{x,2},{atom,update_with}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_nonempty_list,{f,970},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_eq_exact,{f,970},[{x,2},{literal,[a,b]}]}.
    {test,is_nonempty_list,{f,970},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_eq_exact,{f,970},[{x,2},{atom,a}]}.
    {test,is_nonempty_list,{f,970},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_map,{f,970},[{x,2}]}.
    {test,is_nil,{f,970},[{x,1}]}.
    {'catch',{y,1},{f,968}}.
    {move,{y,0},{x,1}}.
    {move,{literal,#{}},{x,2}}.
    {move,{literal,[a,b]},{x,0}}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2454}]}.
    {call_ext,3,{extfunc,maps,update_with,3}}.
  {label,968}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,969},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,969},[{x,1}]}.
    {test,test_arity,{f,969},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,969},[{x,2},{literal,{badkey,[a,b]}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,969},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,969},[{x,1},4,{atom,maps}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,969},[{x,2},{atom,update_with}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_nonempty_list,{f,969},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_eq_exact,{f,969},[{x,2},{literal,[a,b]}]}.
    {test,is_nonempty_list,{f,969},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_nonempty_list,{f,969},[{x,1}]}.
    {get_list,{x,1},{x,3},{x,1}}.
    {test,is_map,{f,969},[{x,3}]}.
    {test,is_nil,{f,969},[{x,1}]}.
    {test,is_eq_exact,
          {f,969},
          [{x,2},
           {tr,{y,0},
               {t_fun,1,{'-t_update_with_3/1-fun-0-',1},{t_cons,any,nil}}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,4}.
    return.
  {label,969}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",2454}]}.
    {badmatch,{x,0}}.
  {label,970}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2453}]}.
    {badmatch,{x,0}}.
  {label,971}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",2452}]}.
    {badmatch,{x,0}}.
  {label,972}.
    {line,[{scope,[6]},{location,"map_SUITE.erl",2449}]}.
    {badmatch,{x,0}}.
  {label,973}.
    {line,[{scope,[6]},{location,"map_SUITE.erl",2448}]}.
    {badmatch,{x,0}}.
  {label,974}.
    {line,[{scope,[6]},{location,"map_SUITE.erl",2447}]}.
    {badmatch,{x,0}}.


{function, t_update_with_4, 1, 976}.
  {label,975}.
    {line,[{location,"map_SUITE.erl",2457}]}.
    {func_info,{atom,map_SUITE},{atom,t_update_with_4},1}.
  {label,976}.
    {test,is_list,{f,975},[{x,0}]}.
    {allocate_heap,2,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {init_yregs,{list,[{y,0}]}}.
    {make_fun3,{f,1146},0,0,{y,1},{list,[]}}.
    {'%',{var_info,{y,1},[{fun_type,{t_cons,any,nil}}]}}.
    {move,{integer,3},{x,2}}.
    {move,{y,1},{x,1}}.
    {move,{literal,#{key1 => value1,key2 => <<"value2">>,"key3" => "value3"}},
          {x,3}}.
    {move,{atom,key1},{x,0}}.
    {line,[{location,"map_SUITE.erl",2465}]}.
    {call_ext,4,{extfunc,maps,update_with,4}}.
    {test,is_map,{f,984},[{x,0}]}.
    {get_map_elements,{f,984},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{atom,key1},{x,1}]}}.
    {test,is_nonempty_list,{f,984},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_nonempty_list,{f,984},[{x,1}]}.
    {get_list,{x,1},{x,3},{x,1}}.
    {test,is_nonempty_list,{f,984},[{x,1}]}.
    {get_list,{x,1},{x,4},{x,1}}.
    {test,is_tuple,{f,984},[{x,4}]}.
    {test,test_arity,{f,984},[{x,4},2]}.
    {test,is_nil,{f,984},[{x,1}]}.
    {test,is_eq_exact,{f,984},[{x,2},{atom,value1}]}.
    {test,is_eq_exact,{f,984},[{x,3},{atom,value1}]}.
    {get_tuple_element,{x,4},0,{x,1}}.
    {test,is_eq_exact,{f,984},[{x,1},{atom,value1}]}.
    {get_tuple_element,{x,4},1,{x,1}}.
    {test,is_eq_exact,{f,984},[{x,1},{atom,value1}]}.
    {move,{integer,3},{x,2}}.
    {move,{y,1},{x,1}}.
    {move,{literal,#{key1 => value1,key2 => <<"value2">>,"key3" => "value3"}},
          {x,3}}.
    {move,{atom,key2},{x,0}}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",2466}]}.
    {call_ext,4,{extfunc,maps,update_with,4}}.
    {test,is_map,{f,983},[{x,0}]}.
    {get_map_elements,{f,983},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{atom,key2},{x,1}]}}.
    {test,is_nonempty_list,{f,983},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_nonempty_list,{f,983},[{x,1}]}.
    {get_list,{x,1},{x,3},{x,1}}.
    {test,is_nonempty_list,{f,983},[{x,1}]}.
    {get_list,{x,1},{x,4},{x,1}}.
    {test,is_tuple,{f,983},[{x,4}]}.
    {test,test_arity,{f,983},[{x,4},2]}.
    {test,is_nil,{f,983},[{x,1}]}.
    {test,is_eq_exact,{f,983},[{x,2},{literal,<<"value2">>}]}.
    {test,is_eq_exact,{f,983},[{x,3},{literal,<<"value2">>}]}.
    {get_tuple_element,{x,4},0,{x,1}}.
    {test,is_eq_exact,{f,983},[{x,1},{literal,<<"value2">>}]}.
    {get_tuple_element,{x,4},1,{x,1}}.
    {test,is_eq_exact,{f,983},[{x,1},{literal,<<"value2">>}]}.
    {move,{integer,3},{x,2}}.
    {move,{y,1},{x,1}}.
    {move,{literal,#{key1 => value1,key2 => <<"value2">>,"key3" => "value3"}},
          {x,3}}.
    {move,{literal,"key3"},{x,0}}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",2467}]}.
    {call_ext,4,{extfunc,maps,update_with,4}}.
    {test,is_map,{f,982},[{x,0}]}.
    {get_map_elements,{f,982},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{literal,"key3"},{x,1}]}}.
    {test,is_nonempty_list,{f,982},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_nonempty_list,{f,982},[{x,1}]}.
    {get_list,{x,1},{x,3},{x,1}}.
    {test,is_nonempty_list,{f,982},[{x,1}]}.
    {get_list,{x,1},{x,4},{x,1}}.
    {test,is_tuple,{f,982},[{x,4}]}.
    {test,test_arity,{f,982},[{x,4},2]}.
    {test,is_nil,{f,982},[{x,1}]}.
    {test,is_eq_exact,{f,982},[{x,2},{literal,"value3"}]}.
    {test,is_eq_exact,{f,982},[{x,3},{literal,"value3"}]}.
    {get_tuple_element,{x,4},0,{x,1}}.
    {test,is_eq_exact,{f,982},[{x,1},{literal,"value3"}]}.
    {get_tuple_element,{x,4},1,{x,1}}.
    {test,is_eq_exact,{f,982},[{x,1},{literal,"value3"}]}.
    {move,{integer,3},{x,2}}.
    {move,{y,1},{x,1}}.
    {move,{literal,#{key1 => value1,key2 => <<"value2">>,"key3" => "value3"}},
          {x,3}}.
    {init_yregs,{list,[{y,1}]}}.
    {move,{atom,key3},{x,0}}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",2469}]}.
    {call_ext,4,{extfunc,maps,update_with,4}}.
    {test,is_map,{f,981},[{x,0}]}.
    {get_map_elements,{f,981},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{atom,key3},{x,1}]}}.
    {test,is_eq_exact,{f,981},[{x,1},{integer,3}]}.
    {'catch',{y,1},{f,977}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",2472}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{atom,b},{x,2}}.
    {move,{literal,[a,b]},{x,0}}.
    {call_ext,3,{extfunc,maps,update_with,3}}.
  {label,977}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,980},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,980},[{x,1}]}.
    {test,test_arity,{f,980},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,980},[{x,2},{literal,{badmap,b}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,980},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,980},[{x,1},4,{atom,maps}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,980},[{x,2},{atom,update_with}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_eq_exact,{f,980},[{x,1},{literal,[[a,b],a,b]}]}.
    {'catch',{y,0},{f,978}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2473}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{literal,#{}},{x,2}}.
    {move,{literal,[a,b]},{x,0}}.
    {call_ext,3,{extfunc,maps,update_with,3}}.
  {label,978}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,979},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,979},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,979},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,979},[{x,1},4,{atom,maps}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,979},[{x,2},{atom,update_with}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_nonempty_list,{f,979},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_eq_exact,{f,979},[{x,2},{literal,[a,b]}]}.
    {test,is_nonempty_list,{f,979},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_eq_exact,{f,979},[{x,2},{atom,a}]}.
    {test,is_nonempty_list,{f,979},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_map,{f,979},[{x,2}]}.
    {test,is_nil,{f,979},[{x,1}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,2}.
    return.
  {label,979}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",2473}]}.
    {badmatch,{x,0}}.
  {label,980}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2472}]}.
    {badmatch,{x,0}}.
  {label,981}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",2469}]}.
    {badmatch,{x,0}}.
  {label,982}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",2467}]}.
    {badmatch,{x,0}}.
  {label,983}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",2466}]}.
    {badmatch,{x,0}}.
  {label,984}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",2465}]}.
    {badmatch,{x,0}}.


{function, t_with_2, 1, 986}.
  {label,985}.
    {line,[{location,"map_SUITE.erl",2476}]}.
    {func_info,{atom,map_SUITE},{atom,t_with_2},1}.
  {label,986}.
    {allocate,5,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2},{y,3},{y,4}]}}.
    {move,{integer,100},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"map_SUITE.erl",2478}]}.
    {call_ext,2,{extfunc,lists,seq,2}}.
    {call,1,{f,1142}}. % '-t_with_2/1-lc$^0/1-0-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_tuple,2,true,#{1 => {t_atom,[k]}}},
                           2 => {t_tuple,2,true,#{1 => {t_atom,[v]}}}}},
                     nil}}]}}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {move,{x,0},{y,4}}.
    {move,{literal,[11,22,33,44,55,66,77,88,99]},{x,0}}.
    {line,[{location,"map_SUITE.erl",2479}]}.
    {call,1,{f,1139}}. % '-t_with_2/1-lc$^1/1-1-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_cons,
                     {t_tuple,2,true,
                         #{1 =>
                               {t_tuple,2,true,
                                   #{1 => {t_atom,[k]},
                                     2 => {t_integer,{11,99}}}},
                           2 =>
                               {t_tuple,2,true,
                                   #{1 => {t_atom,[v]},
                                     2 => {t_integer,{11,99}}}}}},
                     nil}}]}}.
    {call_ext,1,{extfunc,maps,from_list,1}}.
    {move,{x,0},{y,3}}.
    {move,{literal,[11,22,33,44,55,66,77,88,99]},{x,0}}.
    {line,[{location,"map_SUITE.erl",2480}]}.
    {call,1,{f,1136}}. % '-t_with_2/1-lc$^2/1-2-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_cons,
                     {t_tuple,2,true,
                         #{1 => {t_atom,[k]},2 => {t_integer,{11,99}}}},
                     nil}}]}}.
    {move,{y,4},{x,1}}.
    {init_yregs,{list,[{y,4}]}}.
    {call_ext,2,{extfunc,maps,with,2}}.
    {test,is_eq_exact,
          {f,997},
          [{tr,{x,0},
               {t_map,{t_tuple,2,true,
                               #{1 => {t_atom,[k]},2 => {t_integer,{11,99}}}},
                      {t_tuple,2,true,#{1 => {t_atom,[v]}}}}},
           {tr,{y,3},
               {t_map,{t_tuple,2,true,
                               #{1 => {t_atom,[k]},2 => {t_integer,{11,99}}}},
                      {t_tuple,2,true,
                               #{1 => {t_atom,[v]},
                                 2 => {t_integer,{11,99}}}}}}]}.
    {'catch',{y,4},{f,987}}.
    {init_yregs,{list,[{y,3}]}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,"\n"},{location,"map_SUITE.erl",2483}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{literal,[a,b]},{x,0}}.
    {call_ext,2,{extfunc,maps,with,2}}.
  {label,987}.
    {catch_end,{y,4}}.
    {test,is_tagged_tuple,{f,996},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,996},[{x,1}]}.
    {test,test_arity,{f,996},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,996},[{x,2},{literal,{badmap,a}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,996},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,996},[{x,1},4,{atom,maps}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,996},[{x,2},{atom,with}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_eq_exact,{f,996},[{x,1},{literal,[[a,b],a]}]}.
    {'catch',{y,3},{f,988}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,"\b"},{location,"map_SUITE.erl",2484}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{literal,{a,b}},{x,0}}.
    {call_ext,2,{extfunc,maps,with,2}}.
  {label,988}.
    {catch_end,{y,3}}.
    {test,is_tagged_tuple,{f,995},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,995},[{x,1}]}.
    {test,test_arity,{f,995},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,995},[{x,2},{literal,{badmap,a}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,995},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,995},[{x,1},4,{atom,maps}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,995},[{x,2},{atom,with}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_eq_exact,{f,995},[{x,1},{literal,[{a,b},a]}]}.
    {'catch',{y,2},{f,989}}.
    {move,{literal,{0,<<>>,97}},{x,1}}.
    {move,nil,{x,0}}.
    {line,[{scope,[6]},{location,"map_SUITE.erl",2485}]}.
    {call_ext,2,{extfunc,maps,with,2}}.
  {label,989}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,994},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,994},[{x,1}]}.
    {test,test_arity,{f,994},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,994},[{x,2},{literal,{badmap,{0,<<>>,97}}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,994},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,994},[{x,1},4,{atom,maps}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,994},[{x,2},{atom,with}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_eq_exact,{f,994},[{x,1},{literal,[[],{0,<<>>,97}]}]}.
    {'catch',{y,1},{f,990}}.
    {move,{literal,{0,<<>>,97}},{x,1}}.
    {move,{literal,[false,-20,-8]},{x,0}}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",2486}]}.
    {call_ext,2,{extfunc,maps,with,2}}.
  {label,990}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,993},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,993},[{x,1}]}.
    {test,test_arity,{f,993},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_eq_exact,{f,993},[{x,2},{literal,{badmap,{0,<<>>,97}}}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,993},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,993},[{x,1},4,{atom,maps}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,993},[{x,2},{atom,with}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_eq_exact,{f,993},[{x,1},{literal,[[false,-20,-8],{0,<<>>,97}]}]}.
    {'catch',{y,0},{f,991}}.
    {move,{literal,#{}},{x,1}}.
    {move,{atom,a},{x,0}}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2487}]}.
    {call_ext,2,{extfunc,maps,with,2}}.
  {label,991}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,992},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,992},[{x,1},2,{atom,badarg}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,992},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,992},[{x,1},4,{atom,maps}]}.
    {get_tuple_element,{x,1},1,{x,2}}.
    {test,is_eq_exact,{f,992},[{x,2},{atom,with}]}.
    {get_tuple_element,{x,1},2,{x,1}}.
    {test,is_nonempty_list,{f,992},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_eq_exact,{f,992},[{x,2},{atom,a}]}.
    {test,is_nonempty_list,{f,992},[{x,1}]}.
    {get_list,{x,1},{x,2},{x,1}}.
    {test,is_map,{f,992},[{x,2}]}.
    {test,is_nil,{f,992},[{x,1}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,5}.
    return.
  {label,992}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",2487}]}.
    {badmatch,{x,0}}.
  {label,993}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2486}]}.
    {badmatch,{x,0}}.
  {label,994}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",2485}]}.
    {badmatch,{x,0}}.
  {label,995}.
    {line,[{scope,[6]},{location,"map_SUITE.erl",2484}]}.
    {badmatch,{x,0}}.
  {label,996}.
    {line,[{scope,"\b"},{location,"map_SUITE.erl",2483}]}.
    {badmatch,{x,0}}.
  {label,997}.
    {line,[{scope,"\n"},{location,"map_SUITE.erl",2480}]}.
    {badmatch,{x,0}}.


{function, t_bif_map_find, 1, 999}.
  {label,998}.
    {line,[{location,"map_SUITE.erl",2490}]}.
    {func_info,{atom,map_SUITE},{atom,t_bif_map_find},1}.
  {label,999}.
    {test,is_list,{f,998},[{x,0}]}.
    {allocate,0,0}.
    {move,{literal,#{a => 1}},{x,1}}.
    {move,{atom,a},{x,0}}.
    {line,[{location,"map_SUITE.erl",2491}]}.
    {call_ext,2,{extfunc,maps,find,2}}.
    {test,is_eq_exact,
          {f,1007},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,none,
                        [{{2,{t_atom,[ok]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[ok]},
                                     2 => {t_integer,{1,1}}}}}],
                        none}},
           {literal,{ok,1}}]}.
    {move,{literal,#{a => 1,b => 2}},{x,1}}.
    {move,{atom,b},{x,0}}.
    {line,[{location,"map_SUITE.erl",2492}]}.
    {call_ext,2,{extfunc,maps,find,2}}.
    {test,is_eq_exact,
          {f,1006},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,none,
                        [{{2,{t_atom,[ok]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[ok]},
                                     2 => {t_integer,{1,2}}}}}],
                        none}},
           {literal,{ok,2}}]}.
    {move,{literal,#{1 => "int"}},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"map_SUITE.erl",2493}]}.
    {call_ext,2,{extfunc,maps,find,2}}.
    {test,is_eq_exact,
        {f,1005},
        [{tr,{x,0},
             {t_union,
                 {t_atom,[error]},
                 none,none,
                 [{{2,{t_atom,[ok]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[ok]},
                         2 => {t_cons,{t_integer,{105,116}},nil}}}}],
                 none}},
         {literal,{ok,"int"}}]}.
    {move,{literal,#{1.0 => "float"}},{x,1}}.
    {move,{float,1.0},{x,0}}.
    {line,[{location,"map_SUITE.erl",2494}]}.
    {call_ext,2,{extfunc,maps,find,2}}.
    {test,is_eq_exact,
          {f,1004},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,none,
                        [{{2,{t_atom,[ok]}},
                          {t_tuple,2,true,
                                   #{1 => {t_atom,[ok]},
                                     2 =>
                                         {t_cons,{t_integer,{97,116}},nil}}}}],
                        none}},
           {literal,{ok,"float"}}]}.
    {move,{literal,#{a => 1,"hello" => "hi"}},{x,1}}.
    {move,{literal,"hello"},{x,0}}.
    {line,[{location,"map_SUITE.erl",2496}]}.
    {call_ext,2,{extfunc,maps,find,2}}.
    {test,is_eq_exact,
        {f,1003},
        [{tr,{x,0},
             {t_union,
                 {t_atom,[error]},
                 none,none,
                 [{{2,{t_atom,[ok]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[ok]},
                         2 =>
                             {t_union,none,
                                 {t_cons,{t_integer,{104,105}},nil},
                                 {t_integer,{1,1}},
                                 none,none}}}}],
                 none}},
         {literal,{ok,"hi"}}]}.
    {move,{literal,#{a => a,{1,1.0} => "tuple hi"}},{x,1}}.
    {move,{literal,{1,1.0}},{x,0}}.
    {line,[{location,"map_SUITE.erl",2497}]}.
    {call_ext,2,{extfunc,maps,find,2}}.
    {test,is_eq_exact,
        {f,1002},
        [{tr,{x,0},
             {t_union,
                 {t_atom,[error]},
                 none,none,
                 [{{2,{t_atom,[ok]}},
                   {t_tuple,2,true,
                       #{1 => {t_atom,[ok]},
                         2 =>
                             {t_union,
                                 {t_atom,[a]},
                                 {t_cons,{t_integer,{32,117}},nil},
                                 none,none,none}}}}],
                 none}},
         {literal,{ok,"tuple hi"}}]}.
    {move,{literal,#{k1 => "v1",<<"k2">> => <<"v3">>}},{x,0}}.
    {line,[{location,"map_SUITE.erl",2499}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,1000},[{x,0}]}.
    {put_map_assoc,{f,0},
                   {x,0},
                   {x,1},
                   1,
                   {list,[{literal,<<"k2">>},{literal,"v4"}]}}.
    {move,{literal,<<"k2">>},{x,0}}.
    {line,[{location,"map_SUITE.erl",2500}]}.
    {call_ext,2,{extfunc,maps,find,2}}.
    {test,is_eq_exact,
          {f,1001},
          [{tr,{x,0},
               {t_union,{t_atom,[error]},
                        none,none,
                        [{{2,{t_atom,[ok]}},
                          {t_tuple,2,true,#{1 => {t_atom,[ok]}}}}],
                        none}},
           {literal,{ok,"v4"}}]}.
    {move,{literal,#{}},{x,1}}.
    {move,{atom,a},{x,0}}.
    {line,[{location,"map_SUITE.erl",2504}]}.
    {call_ext,2,{extfunc,maps,find,2}}.
    {move,{literal,#{b => 1,c => 2}},{x,1}}.
    {move,{atom,a},{x,0}}.
    {line,[{location,"map_SUITE.erl",2505}]}.
    {call_ext,2,{extfunc,maps,find,2}}.
    {move,{literal,#{1 => "int"}},{x,1}}.
    {move,{float,1.0},{x,0}}.
    {line,[{location,"map_SUITE.erl",2506}]}.
    {call_ext,2,{extfunc,maps,find,2}}.
    {move,{literal,#{1.0 => "float"}},{x,1}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"map_SUITE.erl",2507}]}.
    {call_ext,2,{extfunc,maps,find,2}}.
    {move,{literal,#{a => a,{1,1.0} => "tuple hi"}},{x,1}}.
    {move,{literal,{1.0,1}},{x,0}}.
    {line,[{location,"map_SUITE.erl",2508}]}.
    {call_ext,2,{extfunc,maps,find,2}}.
    {test_heap,{alloc,[{words,0},{floats,0},{funs,1}]},0}.
    {make_fun3,{f,1132},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},
                   [{fun_type,{t_tuple,2,true,#{1 => {t_atom,['EXIT']}}}}]}}.
    {line,[{location,"map_SUITE.erl",2510}]}.
    {call,1,{f,1105}}. % do_badmap/1
    {'%',{var_info,{x,0},
                   [{type,{t_cons,{t_tuple,2,true,#{1 => {t_atom,['EXIT']}}},
                                  nil}}]}}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1000}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,badmap},{x,0}]}}.
    {line,[{location,"map_SUITE.erl",2500}]}.
    {call_ext_last,1,{extfunc,erlang,error,1},0}.
  {label,1001}.
    {badmatch,{x,0}}.
  {label,1002}.
    {line,[{location,"map_SUITE.erl",2497}]}.
    {badmatch,{x,0}}.
  {label,1003}.
    {line,[{location,"map_SUITE.erl",2496}]}.
    {badmatch,{x,0}}.
  {label,1004}.
    {line,[{location,"map_SUITE.erl",2494}]}.
    {badmatch,{x,0}}.
  {label,1005}.
    {line,[{location,"map_SUITE.erl",2493}]}.
    {badmatch,{x,0}}.
  {label,1006}.
    {line,[{location,"map_SUITE.erl",2492}]}.
    {badmatch,{x,0}}.
  {label,1007}.
    {line,[{location,"map_SUITE.erl",2491}]}.
    {badmatch,{atom,error}}.


{function, t_conflicting_destinations, 1, 1009}.
  {label,1008}.
    {line,[{location,"map_SUITE.erl",2516}]}.
    {func_info,{atom,map_SUITE},{atom,t_conflicting_destinations},1}.
  {label,1009}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {'catch',{y,2},{f,1010}}.
    {move,{literal,#{{tag,whatever} => true}},{x,0}}.
    {line,[{location,"map_SUITE.erl",2518}]}.
    {call,1,{f,1017}}. % do_conflicts/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1010}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,1015},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1015},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,1},{f,1011}}.
    {move,{literal,#{[something] => 42}},{x,0}}.
    {line,[{scope,[5,6]},{location,"map_SUITE.erl",2520}]}.
    {call,1,{f,1017}}. % do_conflicts/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1011}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,1014},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1014},[{x,1},2,{atom,function_clause}]}.
    {'catch',{y,0},{f,1012}}.
    {move,{literal,#{{tag,whatever} => true,#{} => <<0>>,[something] => 42}},
          {x,0}}.
    {line,[{scope,[3,4]},{location,"map_SUITE.erl",2522}]}.
    {call,1,{f,1017}}. % do_conflicts/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1012}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1013},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tagged_tuple,{f,1013},[{x,1},2,{atom,function_clause}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,3}.
    return.
  {label,1013}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",2521}]}.
    {badmatch,{x,0}}.
  {label,1014}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2519}]}.
    {badmatch,{x,0}}.
  {label,1015}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",2517}]}.
    {badmatch,{x,0}}.


{function, do_conflicts, 1, 1017}.
  {label,1016}.
    {line,[{location,"map_SUITE.erl",2527}]}.
    {func_info,{atom,map_SUITE},{atom,do_conflicts},1}.
  {label,1017}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_map,
                     {t_union,none,
                         {t_cons,{t_atom,[something]},nil},
                         none,
                         [{{2,{t_atom,[tag]}},
                           {t_tuple,2,true,
                               #{1 => {t_atom,[tag]},
                                 2 => {t_atom,[whatever]}}}}],
                         {t_map,none,none}},
                     {t_union,
                         {t_atom,[true]},
                         none,
                         {t_integer,{42,42}},
                         none,
                         {t_bitstring,8,false}}}}]}}.
    {jump,{f,1016}}.


{function, t_cse_assoc, 1, 1019}.
  {label,1018}.
    {line,[{location,"map_SUITE.erl",2532}]}.
    {func_info,{atom,map_SUITE},{atom,t_cse_assoc},1}.
  {label,1019}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0}]}}.
    {'catch',{y,1},{f,1020}}.
    {move,{atom,any},{x,0}}.
    {line,[{location,"map_SUITE.erl",2533}]}.
    {call,1,{f,1107}}. % id/1
    {call,1,{f,1026}}. % do_cse_assoc/1
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1020}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,1024},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1024},[{x,1}]}.
    {test,test_arity,{f,1024},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,1024},[{x,1},2,{atom,case_clause}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_map,{f,1024},[{x,1}]}.
    {get_map_elements,{f,1024},
                      {tr,{x,1},{t_map,any,any}},
                      {list,[{atom,key},{x,1}]}}.
    {test,is_eq_exact,{f,1024},[{x,1},{atom,any}]}.
    {'catch',{y,0},{f,1021}}.
    {move,{literal,#{}},{x,0}}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2535}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,1}}.
    {move,{atom,value},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {call,2,{f,1028}}. % do_cse_assoc/2
  {label,1021}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1023},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1023},[{x,1}]}.
    {test,test_arity,{f,1023},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,1023},[{x,1},2,{atom,case_clause}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_map,{f,1023},[{x,1}]}.
    {get_map_elements,{f,1023},
                      {tr,{x,1},{t_map,any,any}},
                      {list,[{atom,key},{x,1}]}}.
    {test,is_eq_exact,{f,1023},[{x,1},{atom,value}]}.
    {move,{literal,#{assoc => 42}},{x,0}}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",2536}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,1}}.
    {move,{atom,any},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{x,1}}.
    {move,{y,1},{x,0}}.
    {trim,2,0}.
    {call,2,{f,1028}}. % do_cse_assoc/2
    {test,is_eq_exact,{f,1022},[{x,0},{integer,42}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1022}.
    {badmatch,{x,0}}.
  {label,1023}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",2535}]}.
    {badmatch,{x,0}}.
  {label,1024}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2533}]}.
    {badmatch,{x,0}}.


{function, do_cse_assoc, 1, 1026}.
  {label,1025}.
    {line,[{location,"map_SUITE.erl",2540}]}.
    {func_info,{atom,map_SUITE},{atom,do_cse_assoc},1}.
  {label,1026}.
    {put_map_assoc,{f,0},{literal,#{}},{x,0},1,{list,[{atom,key},{x,0}]}}.
    {line,[{location,"map_SUITE.erl",2541}]}.
    {case_end,{x,0}}.


{function, do_cse_assoc, 2, 1028}.
  {label,1027}.
    {line,[{location,"map_SUITE.erl",2549}]}.
    {func_info,{atom,map_SUITE},{atom,do_cse_assoc},2}.
  {label,1028}.
    {test,is_map,{f,1029},[{x,0}]}.
    {put_map_assoc,{f,0},{x,0},{x,0},2,{list,[{atom,key},{x,1}]}}.
    {get_map_elements,{f,1030},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{atom,assoc},{x,1}]}}.
    {move,{x,1},{x,0}}.
    return.
  {label,1029}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,badmap},{x,0}]}}.
    {line,[{location,"map_SUITE.erl",2550}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.
  {label,1030}.
    {case_end,{x,0}}.


{function, shared_key_tuples, 1, 1032}.
  {label,1031}.
    {line,[{location,"map_SUITE.erl",2555}]}.
    {func_info,{atom,map_SUITE},{atom,shared_key_tuples},1}.
  {label,1032}.
    {allocate,1,0}.
    {init_yregs,{list,[{y,0}]}}.
    {move,{integer,0},{x,0}}.
    {line,[{location,"map_SUITE.erl",2556}]}.
    {call,1,{f,1035}}. % decimal/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_map,
                     {t_atom,[exp,int,type]},
                     {t_union,
                         {t_atom,[decimal]},
                         none,
                         {t_integer,{0,1}},
                         none,none}}}]}}.
    {move,{x,0},{y,0}}.
    {move,{integer,1},{x,0}}.
    {line,[{location,"map_SUITE.erl",2557}]}.
    {call,1,{f,1035}}. % decimal/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_map,
                     {t_atom,[exp,int,type]},
                     {t_union,
                         {t_atom,[decimal]},
                         none,
                         {t_integer,{0,1}},
                         none,none}}}]}}.
    {swap,{y,0},{x,0}}.
    {line,[{location,"map_SUITE.erl",2566}]}.
    {call_ext,1,{extfunc,erts_internal,map_to_tuple_keys,1}}.
    {swap,{y,0},{x,0}}.
    {line,[{location,"map_SUITE.erl",2567}]}.
    {call_ext,1,{extfunc,erts_internal,map_to_tuple_keys,1}}.
    {move,{x,0},{x,1}}.
    {move,{y,0},{x,0}}.
    {trim,1,0}.
    {line,[{location,"map_SUITE.erl",2566}]}.
    {call_ext,2,{extfunc,erts_debug,same,2}}.
    {test,is_eq_exact,{f,1033},[{x,0},{atom,true}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,0}.
    return.
  {label,1033}.
    {badmatch,{x,0}}.


{function, decimal, 1, 1035}.
  {label,1034}.
    {line,[{location,"map_SUITE.erl",2571}]}.
    {func_info,{atom,map_SUITE},{atom,decimal},1}.
  {label,1035}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,1}}}]}}.
    {put_map_assoc,{f,0},
                   {literal,#{}},
                   {x,0},
                   1,
                   {list,[{atom,exp},
                          {integer,0},
                          {atom,int},
                          {x,0},
                          {atom,type},
                          {atom,decimal}]}}.
    return.


{function, map_aliases, 1, 1037}.
  {label,1036}.
    {line,[{location,"map_SUITE.erl",2575}]}.
    {func_info,{atom,map_SUITE},{atom,map_aliases},1}.
  {label,1037}.
    {allocate,3,0}.
    {init_yregs,{list,[{y,0},{y,1},{y,2}]}}.
    {move,{literal,#{k => {a,key},key => value}},{x,0}}.
    {line,[{location,"map_SUITE.erl",2580}]}.
    {call,1,{f,1107}}. % id/1
    {call,1,{f,1129}}. % '-map_aliases/1-fun-0-'/1
    {test,is_eq_exact,{f,1047},[{x,0},{atom,value}]}.
    {move,{literal,#{}},{x,0}}.
    {line,[{scope,[6]},{location,"map_SUITE.erl",2583}]}.
    {call,1,{f,1107}}. % id/1
    {call,1,{f,1127}}. % '-map_aliases/1-fun-1-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,#{key => whatever}},{x,0}}.
    {line,[{scope,[6]},{location,"map_SUITE.erl",2584}]}.
    {call,1,{f,1107}}. % id/1
    {call,1,{f,1127}}. % '-map_aliases/1-fun-1-'/1
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {move,{literal,#{a => {a,b,c}}},{x,0}}.
    {line,[{scope,[6]},{location,"map_SUITE.erl",2587}]}.
    {call,1,{f,1107}}. % id/1
    {call,1,{f,1125}}. % '-map_aliases/1-fun-2-'/1
    {test,is_eq_exact,{f,1046},[{x,0},{literal,{a,b,c}}]}.
    {move,{literal,[#{foo => bar}|foo]},{x,0}}.
    {line,[{scope,[6]},{location,"map_SUITE.erl",2593}]}.
    {call,1,{f,1122}}. % '-map_aliases/1-fun-3-'/1
    {test,is_eq_exact,{f,1045},[{x,0},{atom,bar}]}.
    {move,{literal,{#{frotz => light},frotz}},{x,0}}.
    {line,[{scope,[6]},{location,"map_SUITE.erl",2599}]}.
    {call,1,{f,1119}}. % '-map_aliases/1-fun-4-'/1
    {test,is_eq_exact,{f,1044},[{x,0},{atom,light}]}.
    {'catch',{y,2},{f,1038}}.
    {move,{integer,0},{x,0}}.
    {line,[{scope,[6]},{location,"map_SUITE.erl",2604}]}.
    {call,1,{f,1107}}. % id/1
    {call,1,{f,1116}}. % '-map_aliases/1-fun-5-'/1
    {'%',{var_info,{x,0},[{type,{t_map,any,any}}]}}.
  {label,1038}.
    {catch_end,{y,2}}.
    {test,is_tagged_tuple,{f,1043},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1043},[{x,1}]}.
    {test,test_arity,{f,1043},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1043},[{x,1},{literal,{badmatch,0}}]}.
    {'catch',{y,1},{f,1039}}.
    {move,{literal,#{}},{x,0}}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",2605}]}.
    {call,1,{f,1107}}. % id/1
    {call,1,{f,1116}}. % '-map_aliases/1-fun-5-'/1
    {'%',{var_info,{x,0},[{type,{t_map,any,any}}]}}.
  {label,1039}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,1042},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1042},[{x,1}]}.
    {test,test_arity,{f,1042},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,1042},[{x,1},2,{atom,badmatch}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_map,{f,1042},[{x,1}]}.
    {'catch',{y,0},{f,1040}}.
    {move,{literal,#{key => value}},{x,0}}.
    {line,[{scope,[3,4]},{location,"map_SUITE.erl",2606}]}.
    {call,1,{f,1107}}. % id/1
    {call,1,{f,1116}}. % '-map_aliases/1-fun-5-'/1
    {'%',{var_info,{x,0},[{type,{t_map,any,any}}]}}.
  {label,1040}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1041},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1041},[{x,1}]}.
    {test,test_arity,{f,1041},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_tagged_tuple,{f,1041},[{x,1},2,{atom,badmatch}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_map,{f,1041},[{x,1}]}.
    {get_map_elements,{f,1041},
                      {tr,{x,1},{t_map,any,any}},
                      {list,[{atom,key},{x,1}]}}.
    {test,is_eq_exact,{f,1041},[{x,1},{atom,value}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,3}.
    return.
  {label,1041}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",2606}]}.
    {badmatch,{x,0}}.
  {label,1042}.
    {line,[{scope,[2]},{location,"map_SUITE.erl",2605}]}.
    {badmatch,{x,0}}.
  {label,1043}.
    {line,[{scope,[4]},{location,"map_SUITE.erl",2604}]}.
    {badmatch,{x,0}}.
  {label,1044}.
    {line,[{scope,[6]},{location,"map_SUITE.erl",2599}]}.
    {badmatch,{x,0}}.
  {label,1045}.
    {line,[{scope,[6]},{location,"map_SUITE.erl",2593}]}.
    {badmatch,{x,0}}.
  {label,1046}.
    {line,[{scope,[6]},{location,"map_SUITE.erl",2587}]}.
    {badmatch,{x,0}}.
  {label,1047}.
    {line,[{scope,[6]},{location,"map_SUITE.erl",2580}]}.
    {badmatch,{x,0}}.


{function, coverage, 1, 1049}.
  {label,1048}.
    {line,[{location,"map_SUITE.erl",2610}]}.
    {func_info,{atom,map_SUITE},{atom,coverage},1}.
  {label,1049}.
    {allocate,1,0}.
    {'catch',{y,0},{f,1050}}.
    {line,[{location,"map_SUITE.erl",2611}]}.
    {call,0,{f,1053}}. % coverage_1/0
    {'%',{var_info,{x,0},[{type,none}]}}.
  {label,1050}.
    {catch_end,{y,0}}.
    {test,is_tagged_tuple,{f,1051},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1051},[{x,1}]}.
    {test,test_arity,{f,1051},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,1}}.
    {test,is_eq_exact,{f,1051},[{x,1},{literal,{badmatch,ok}}]}.
    {move,{atom,ok},{x,0}}.
    {deallocate,1}.
    return.
  {label,1051}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",2611}]}.
    {badmatch,{x,0}}.


{function, coverage_1, 0, 1053}.
  {label,1052}.
    {line,[{location,"map_SUITE.erl",2615}]}.
    {func_info,{atom,map_SUITE},{atom,coverage_1},0}.
  {label,1053}.
    {allocate,2,0}.
    {init_yregs,{list,[{y,0}]}}.
    {'try',{y,1},{f,1055}}.
    {'try',{y,0},{f,1054}}.
    {line,[{location,"map_SUITE.erl",2618}]}.
    {badmatch,{atom,ok}}.
  {label,1054}.
    {try_case,{y,0}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.
  {label,1055}.
    {try_case,{y,1}}.
    {move,{x,1},{x,0}}.
    {move,{x,2},{x,1}}.
    {bif,raise,{f,0},[{x,1},{x,0}],{x,0}}.


{function, rand_terms, 1, 1057}.
  {label,1056}.
    {line,[{location,"map_SUITE.erl",2627}]}.
    {func_info,{atom,map_SUITE},{atom,rand_terms},1}.
  {label,1057}.
    {'%',{var_info,{x,0},[{type,{t_integer,{'-inf',100000}}}]}}.
    {test,is_eq_exact,
          {f,1058},
          [{tr,{x,0},{t_integer,{'-inf',100000}}},{integer,0}]}.
    {move,nil,{x,0}}.
    return.
  {label,1058}.
    {allocate,1,1}.
    {move,{x,0},{y,0}}.
    {line,[{location,"map_SUITE.erl",2628}]}.
    {call,0,{f,1060}}. % rand_term/0
    {gc_bif,'-',
            {f,0},
            1,
            [{tr,{y,0},{t_integer,{'-inf',100000}}},{integer,1}],
            {x,1}}.
    {move,{x,0},{y,0}}.
    {move,{x,1},{x,0}}.
    {call,1,{f,1057}}. % rand_terms/1
    {'%',{var_info,{x,0},[{type,{t_list,any,nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.


{function, rand_term, 0, 1060}.
  {label,1059}.
    {line,[{location,"map_SUITE.erl",2630}]}.
    {func_info,{atom,map_SUITE},{atom,rand_term},0}.
  {label,1060}.
    {allocate,0,0}.
    {move,{integer,6},{x,0}}.
    {line,[{location,"map_SUITE.erl",2631}]}.
    {call_ext,1,{extfunc,rand,uniform,1}}.
    {select_val,{x,0},
                {f,1067},
                {list,[{integer,1},
                       {f,1066},
                       {integer,2},
                       {f,1065},
                       {integer,3},
                       {f,1064},
                       {integer,4},
                       {f,1063},
                       {integer,5},
                       {f,1062},
                       {integer,6},
                       {f,1061}]}}.
  {label,1061}.
    {call_last,0,{f,1099},0}. % rand_map/0
  {label,1062}.
    {call_last,0,{f,1093},0}. % rand_list/0
  {label,1063}.
    {call_last,0,{f,1087},0}. % rand_tuple/0
  {label,1064}.
    {call_last,0,{f,1081},0}. % rand_atom/0
  {label,1065}.
    {call_last,0,{f,1075},0}. % rand_number/0
  {label,1066}.
    {call_last,0,{f,1069},0}. % rand_binary/0
  {label,1067}.
    {case_end,{x,0}}.


{function, rand_binary, 0, 1069}.
  {label,1068}.
    {line,[{location,"map_SUITE.erl",2640}]}.
    {func_info,{atom,map_SUITE},{atom,rand_binary},0}.
  {label,1069}.
    {allocate,0,0}.
    {move,{integer,3},{x,0}}.
    {line,[{location,"map_SUITE.erl",2641}]}.
    {call_ext,1,{extfunc,rand,uniform,1}}.
    {select_val,{x,0},
                {f,1073},
                {list,[{integer,1},
                       {f,1072},
                       {integer,2},
                       {f,1071},
                       {integer,3},
                       {f,1070}]}}.
  {label,1070}.
    {move,{literal,<<"message text larger than 64 bytes. yep, message text larger than 64 bytes.">>},
          {x,0}}.
    {deallocate,0}.
    return.
  {label,1071}.
    {move,{literal,<<"hi">>},{x,0}}.
    {deallocate,0}.
    return.
  {label,1072}.
    {move,{literal,<<>>},{x,0}}.
    {deallocate,0}.
    return.
  {label,1073}.
    {case_end,{x,0}}.


{function, rand_number, 0, 1075}.
  {label,1074}.
    {line,[{location,"map_SUITE.erl",2647}]}.
    {func_info,{atom,map_SUITE},{atom,rand_number},0}.
  {label,1075}.
    {allocate,0,0}.
    {move,{integer,3},{x,0}}.
    {line,[{location,"map_SUITE.erl",2648}]}.
    {call_ext,1,{extfunc,rand,uniform,1}}.
    {select_val,{x,0},
                {f,1079},
                {list,[{integer,1},
                       {f,1078},
                       {integer,2},
                       {f,1077},
                       {integer,3},
                       {f,1076}]}}.
  {label,1076}.
    {line,[{location,"map_SUITE.erl",2651}]}.
    {call_ext,1,{extfunc,rand,uniform,1}}.
    {gc_bif,'+',{f,0},1,[{x,0},{integer,63}],{x,0}}.
    {gc_bif,'bsl',{f,0},1,[{integer,1},{tr,{x,0},{t_number,any}}],{x,0}}.
    {deallocate,0}.
    return.
  {label,1077}.
    {move,{integer,5},{x,0}}.
    {line,[{location,"map_SUITE.erl",2650}]}.
    {call_ext,1,{extfunc,rand,uniform,1}}.
    {gc_bif,float,{f,0},1,[{x,0}],{x,0}}.
    {deallocate,0}.
    return.
  {label,1078}.
    {move,{integer,5},{x,0}}.
    {line,[{location,"map_SUITE.erl",2649}]}.
    {call_ext_last,1,{extfunc,rand,uniform,1},0}.
  {label,1079}.
    {line,[{location,"map_SUITE.erl",2648}]}.
    {case_end,{x,0}}.


{function, rand_atom, 0, 1081}.
  {label,1080}.
    {line,[{location,"map_SUITE.erl",2654}]}.
    {func_info,{atom,map_SUITE},{atom,rand_atom},0}.
  {label,1081}.
    {allocate,0,0}.
    {move,{integer,3},{x,0}}.
    {line,[{location,"map_SUITE.erl",2655}]}.
    {call_ext,1,{extfunc,rand,uniform,1}}.
    {select_val,{x,0},
                {f,1085},
                {list,[{integer,1},
                       {f,1084},
                       {integer,2},
                       {f,1083},
                       {integer,3},
                       {f,1082}]}}.
  {label,1082}.
    {move,{atom,some_other_atom},{x,0}}.
    {deallocate,0}.
    return.
  {label,1083}.
    {move,{atom,some_atom},{x,0}}.
    {deallocate,0}.
    return.
  {label,1084}.
    {move,{atom,hi},{x,0}}.
    {deallocate,0}.
    return.
  {label,1085}.
    {case_end,{x,0}}.


{function, rand_tuple, 0, 1087}.
  {label,1086}.
    {line,[{location,"map_SUITE.erl",2662}]}.
    {func_info,{atom,map_SUITE},{atom,rand_tuple},0}.
  {label,1087}.
    {allocate,0,0}.
    {move,{integer,3},{x,0}}.
    {line,[{location,"map_SUITE.erl",2663}]}.
    {call_ext,1,{extfunc,rand,uniform,1}}.
    {select_val,{x,0},
                {f,1091},
                {list,[{integer,1},
                       {f,1090},
                       {integer,2},
                       {f,1089},
                       {integer,3},
                       {f,1088}]}}.
  {label,1088}.
    {move,{literal,{<<"yep">>,1337}},{x,0}}.
    {deallocate,0}.
    return.
  {label,1089}.
    {move,{literal,{1,2,3}},{x,0}}.
    {deallocate,0}.
    return.
  {label,1090}.
    {line,[{location,"map_SUITE.erl",2664}]}.
    {call,0,{f,1060}}. % rand_term/0
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,ok},{x,0}]}}.
    {deallocate,0}.
    return.
  {label,1091}.
    {line,[{location,"map_SUITE.erl",2663}]}.
    {case_end,{x,0}}.


{function, rand_list, 0, 1093}.
  {label,1092}.
    {line,[{location,"map_SUITE.erl",2669}]}.
    {func_info,{atom,map_SUITE},{atom,rand_list},0}.
  {label,1093}.
    {allocate,0,0}.
    {move,{integer,3},{x,0}}.
    {line,[{location,"map_SUITE.erl",2670}]}.
    {call_ext,1,{extfunc,rand,uniform,1}}.
    {select_val,{x,0},
                {f,1097},
                {list,[{integer,1},
                       {f,1096},
                       {integer,2},
                       {f,1095},
                       {integer,3},
                       {f,1094}]}}.
  {label,1094}.
    {move,{literal,[improper|list]},{x,0}}.
    {deallocate,0}.
    return.
  {label,1095}.
    {line,[{location,"map_SUITE.erl",2672}]}.
    {call,0,{f,1060}}. % rand_term/0
    {test_heap,4,1}.
    {put_list,{x,0},nil,{x,0}}.
    {put_list,{integer,1},{x,0},{x,0}}.
    {deallocate,0}.
    return.
  {label,1096}.
    {move,{literal,"hi"},{x,0}}.
    {deallocate,0}.
    return.
  {label,1097}.
    {line,[{location,"map_SUITE.erl",2670}]}.
    {case_end,{x,0}}.


{function, rand_map, 0, 1099}.
  {label,1098}.
    {line,[{location,"map_SUITE.erl",2676}]}.
    {func_info,{atom,map_SUITE},{atom,rand_map},0}.
  {label,1099}.
    {allocate,0,0}.
    {move,{integer,3},{x,0}}.
    {line,[{location,"map_SUITE.erl",2677}]}.
    {call_ext,1,{extfunc,rand,uniform,1}}.
    {select_val,{x,0},
                {f,1103},
                {list,[{integer,1},
                       {f,1102},
                       {integer,2},
                       {f,1101},
                       {integer,3},
                       {f,1100}]}}.
  {label,1100}.
    {move,{literal,#{hi => 42,other => 42,yet_anoter => 1337}},{x,0}}.
    {deallocate,0}.
    return.
  {label,1101}.
    {line,[{location,"map_SUITE.erl",2679}]}.
    {call,0,{f,1060}}. % rand_term/0
    {put_map_assoc,{f,0},
                   {literal,#{}},
                   {x,0},
                   1,
                   {list,[{atom,other},{integer,3},{atom,wat},{x,0}]}}.
    {deallocate,0}.
    return.
  {label,1102}.
    {move,{literal,#{hi => 3}},{x,0}}.
    {deallocate,0}.
    return.
  {label,1103}.
    {line,[{location,"map_SUITE.erl",2677}]}.
    {case_end,{x,0}}.


{function, do_badmap, 1, 1105}.
  {label,1104}.
    {line,[{location,"map_SUITE.erl",2683}]}.
    {func_info,{atom,map_SUITE},{atom,do_badmap},1}.
  {label,1105}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_fun,1,
                     {'-t_bif_map_find/1-fun-0-',1},
                     {t_tuple,2,true,#{1 => {t_atom,['EXIT']}}}}}]}}.
    {allocate,3,1}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{x,0},{y,2}}.
    {call_ext,0,{extfunc,erlang,make_ref,0}}.
    {bif,self,{f,0},[],{y,1}}.
    {move,{x,0},{y,0}}.
    {move,{integer,-1},{x,0}}.
    {line,[{location,"map_SUITE.erl",2684}]}.
    {call,1,{f,1107}}. % id/1
    {fmove,{float,0.0},{fr,0}}.
    {fconv,{x,0},{fr,1}}.
    {bif,fdiv,{f,0},[{fr,0},{fr,1}],{fr,0}}.
    {test_heap,{alloc,[{words,0},{floats,1},{funs,0}]},0}.
    {fmove,{fr,0},{x,0}}.
    {line,[{location,"map_SUITE.erl",2685}]}.
    {bs_create_bin,{f,0},
                   12,1,256,
                   {x,1},
                   {list,[{atom,integer},1,1,nil,{integer,0},{integer,1024}]}}.
    {put_list,{x,1},
              {literal,[<<1:1>>,
                        <<>>,
                        <<1,2,3>>,
                        [],
                        {a,b,c},
                        [a,b],
                        atom,10.0,42,36893488147419103235]},
              {x,1}}.
    {put_list,{x,0},{x,1},{x,0}}.
    {put_list,{y,1},{x,0},{x,0}}.
    {put_list,{y,0},{x,0},{x,0}}.
    {put_list,{literal,fun erlang:abs/1},{x,0},{x,0}}.
    {put_list,{y,2},{x,0},{x,0}}.
    {move,{y,2},{x,1}}.
    {call_last,2,{f,1113},3}. % '-do_badmap/1-lc$^0/1-0-'/2


{function, id, 1, 1107}.
  {label,1106}.
    {line,[{location,"map_SUITE.erl",2690}]}.
    {func_info,{atom,map_SUITE},{atom,id},1}.
  {label,1107}.
    return.


{function, module_info, 0, 1109}.
  {label,1108}.
    {line,[]}.
    {func_info,{atom,map_SUITE},{atom,module_info},0}.
  {label,1109}.
    {move,{atom,map_SUITE},{x,0}}.
    {call_ext_only,1,{extfunc,erlang,get_module_info,1}}.


{function, module_info, 1, 1111}.
  {label,1110}.
    {line,[]}.
    {func_info,{atom,map_SUITE},{atom,module_info},1}.
  {label,1111}.
    {move,{x,0},{x,1}}.
    {move,{atom,map_SUITE},{x,0}}.
    {call_ext_only,2,{extfunc,erlang,get_module_info,2}}.


{function, '-do_badmap/1-lc$^0/1-0-', 2, 1113}.
  {label,1112}.
    {line,[{location,"map_SUITE.erl",2687}]}.
    {func_info,{atom,map_SUITE},{atom,'-do_badmap/1-lc$^0/1-0-'},2}.
  {label,1113}.
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_union,
                         {t_atom,[atom]},
                         {t_list,{t_atom,[a,b]},nil},
                         {t_number,any},
                         [{{3,{t_atom,[a]}},
                           {t_tuple,3,true,
                               #{1 => {t_atom,[a]},
                                 2 => {t_atom,[b]},
                                 3 => {t_atom,[c]}}}}],
                         other},
                     nil}}]}}.
    {'%',
        {var_info,
            {x,1},
            [{type,
                 {t_fun,1,
                     {'-t_bif_map_find/1-fun-0-',1},
                     {t_tuple,2,true,#{1 => {t_atom,['EXIT']}}}}}]}}.
    {test,is_nonempty_list,{f,1114},[{x,0}]}.
    {allocate,2,2}.
    {move,{x,1},{y,1}}.
    {get_list,{x,0},{x,0},{y,0}}.
    {call,1,{f,1132}}. % '-t_bif_map_find/1-fun-0-'/1
    {'%',{var_info,{x,0},[{type,{t_tuple,2,true,#{1 => {t_atom,['EXIT']}}}}]}}.
    {move,{y,0},{x,2}}.
    {move,{y,1},{x,1}}.
    {move,{x,0},{y,1}}.
    {trim,1,1}.
    {move,{x,2},{x,0}}.
    {call,2,{f,1113}}. % '-do_badmap/1-lc$^0/1-0-'/2
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_tuple,2,true,#{1 => {t_atom,['EXIT']}}},
                                  nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1114}.
    return.


{function, '-map_aliases/1-fun-5-', 1, 1116}.
  {label,1115}.
    {line,[{location,"map_SUITE.erl",2601}]}.
    {func_info,{atom,map_SUITE},{atom,'-map_aliases/1-fun-5-'},1}.
  {label,1116}.
    {test,is_map,{f,1117},[{x,0}]}.
    {test,has_map_fields,{f,1117},{x,0},{list,[{x,0}]}}.
    return.
  {label,1117}.
    {line,[{location,"map_SUITE.erl",2602}]}.
    {badmatch,{x,0}}.


{function, '-map_aliases/1-fun-4-', 1, 1119}.
  {label,1118}.
    {line,[{location,"map_SUITE.erl",2595}]}.
    {func_info,{atom,map_SUITE},{atom,'-map_aliases/1-fun-4-'},1}.
  {label,1119}.
    {allocate,0,1}.
    {line,[{location,"map_SUITE.erl",2596}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_tuple,{f,1120},[{x,0}]}.
    {test,test_arity,{f,1120},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {test,is_map,{f,1120},[{x,1}]}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {get_map_elements,{f,1120},
                      {tr,{x,1},{t_map,any,any}},
                      {list,[{x,2},{x,1}]}}.
    {move,{x,1},{x,0}}.
    {deallocate,0}.
    return.
  {label,1120}.
    {badmatch,{x,0}}.


{function, '-map_aliases/1-fun-3-', 1, 1122}.
  {label,1121}.
    {line,[{location,"map_SUITE.erl",2589}]}.
    {func_info,{atom,map_SUITE},{atom,'-map_aliases/1-fun-3-'},1}.
  {label,1122}.
    {allocate,0,1}.
    {line,[{location,"map_SUITE.erl",2590}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_nonempty_list,{f,1123},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,2}}.
    {test,is_map,{f,1123},[{x,1}]}.
    {get_map_elements,{f,1123},
                      {tr,{x,1},{t_map,any,any}},
                      {list,[{x,2},{x,1}]}}.
    {move,{x,1},{x,0}}.
    {deallocate,0}.
    return.
  {label,1123}.
    {badmatch,{x,0}}.


{function, '-map_aliases/1-fun-2-', 1, 1125}.
  {label,1124}.
    {line,[{location,"map_SUITE.erl",2586}]}.
    {func_info,{atom,map_SUITE},{atom,'-map_aliases/1-fun-2-'},1}.
  {label,1125}.
    {test,is_map,{f,1124},[{x,0}]}.
    {get_map_elements,{f,1124},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{atom,a},{x,1}]}}.
    {move,{x,1},{x,0}}.
    return.


{function, '-map_aliases/1-fun-1-', 1, 1127}.
  {label,1126}.
    {line,[{location,"map_SUITE.erl",2582}]}.
    {func_info,{atom,map_SUITE},{atom,'-map_aliases/1-fun-1-'},1}.
  {label,1127}.
    {test,is_map,{f,1126},[{x,0}]}.
    {move,{atom,ok},{x,0}}.
    return.


{function, '-map_aliases/1-fun-0-', 1, 1129}.
  {label,1128}.
    {line,[{location,"map_SUITE.erl",2576}]}.
    {func_info,{atom,map_SUITE},{atom,'-map_aliases/1-fun-0-'},1}.
  {label,1129}.
    {test,is_map,{f,1130},[{x,0}]}.
    {get_map_elements,{f,1130},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{atom,k},{x,1}]}}.
    {test,is_tagged_tuple,{f,1130},[{x,1},2,{atom,a}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {get_map_elements,{f,1130},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{x,1},{x,1}]}}.
    {move,{x,1},{x,0}}.
    return.
  {label,1130}.
    {line,[{location,"map_SUITE.erl",2577}]}.
    {badmatch,{x,0}}.


{function, '-t_bif_map_find/1-fun-0-', 1, 1132}.
  {label,1131}.
    {line,[{location,"map_SUITE.erl",2510}]}.
    {func_info,{atom,map_SUITE},{atom,'-t_bif_map_find/1-fun-0-'},1}.
  {label,1132}.
    {allocate,2,1}.
    {move,{x,0},{y,0}}.
    {'catch',{y,1},{f,1133}}.
    {move,{x,0},{x,1}}.
    {move,{atom,a},{x,0}}.
    {line,[{location,"map_SUITE.erl",2512}]}.
    {call_ext,2,{extfunc,maps,find,2}}.
  {label,1133}.
    {catch_end,{y,1}}.
    {test,is_tagged_tuple,{f,1134},[{x,0},2,{atom,'EXIT'}]}.
    {get_tuple_element,{x,0},1,{x,1}}.
    {test,is_tuple,{f,1134},[{x,1}]}.
    {test,test_arity,{f,1134},[{x,1},2]}.
    {get_tuple_element,{x,1},0,{x,2}}.
    {test,is_tagged_tuple,{f,1134},[{x,2},2,{atom,badmap}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_nonempty_list,{f,1134},[{x,1}]}.
    {get_hd,{x,1},{x,1}}.
    {test,is_tagged_tuple,{f,1134},[{x,1},4,{atom,maps}]}.
    {get_tuple_element,{x,1},1,{x,1}}.
    {test,is_eq_exact,{f,1134},[{x,1},{atom,find}]}.
    {get_tuple_element,{x,2},1,{x,1}}.
    {test,is_eq_exact,{f,1134},[{x,1},{y,0}]}.
    {deallocate,2}.
    return.
  {label,1134}.
    {line,[{scope,[0]},{location,"map_SUITE.erl",2511}]}.
    {badmatch,{x,0}}.


{function, '-t_with_2/1-lc$^2/1-2-', 1, 1136}.
  {label,1135}.
    {line,[{location,"map_SUITE.erl",2480}]}.
    {func_info,{atom,map_SUITE},{atom,'-t_with_2/1-lc$^2/1-2-'},1}.
  {label,1136}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{11,99}},nil}}]}}.
    {test,is_nonempty_list,{f,1137},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,1,{f,1136}}. % '-t_with_2/1-lc$^2/1-2-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_atom,[k]},2 => {t_integer,{11,99}}}},
                     nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{atom,k},{y,0}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1137}.
    return.


{function, '-t_with_2/1-lc$^1/1-1-', 1, 1139}.
  {label,1138}.
    {line,[{location,"map_SUITE.erl",2479}]}.
    {func_info,{atom,map_SUITE},{atom,'-t_with_2/1-lc$^1/1-1-'},1}.
  {label,1139}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{11,99}},nil}}]}}.
    {test,is_nonempty_list,{f,1140},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,1,{f,1139}}. % '-t_with_2/1-lc$^1/1-1-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 =>
                               {t_tuple,2,true,
                                   #{1 => {t_atom,[k]},
                                     2 => {t_integer,{11,99}}}},
                           2 =>
                               {t_tuple,2,true,
                                   #{1 => {t_atom,[v]},
                                     2 => {t_integer,{11,99}}}}}},
                     nil}}]}}.
    {test_heap,11,1}.
    {put_tuple2,{x,1},{list,[{atom,k},{y,0}]}}.
    {put_tuple2,{x,2},{list,[{atom,v},{y,0}]}}.
    {put_tuple2,{x,1},{list,[{x,1},{x,2}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1140}.
    return.


{function, '-t_with_2/1-lc$^0/1-0-', 1, 1142}.
  {label,1141}.
    {line,[{location,"map_SUITE.erl",2478}]}.
    {func_info,{atom,map_SUITE},{atom,'-t_with_2/1-lc$^0/1-0-'},1}.
  {label,1142}.
    {test,is_nonempty_list,{f,1143},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,1,{f,1142}}. % '-t_with_2/1-lc$^0/1-0-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_tuple,2,true,#{1 => {t_atom,[k]}}},
                           2 => {t_tuple,2,true,#{1 => {t_atom,[v]}}}}},
                     nil}}]}}.
    {test_heap,11,1}.
    {put_tuple2,{x,1},{list,[{atom,k},{y,0}]}}.
    {put_tuple2,{x,2},{list,[{atom,v},{y,0}]}}.
    {put_tuple2,{x,1},{list,[{x,1},{x,2}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1143}.
    {test,is_nil,{f,1144},[{x,0}]}.
    return.
  {label,1144}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-t_update_with_4/1-fun-0-', 1, 1146}.
  {label,1145}.
    {line,[{location,"map_SUITE.erl",2462}]}.
    {func_info,{atom,map_SUITE},{atom,'-t_update_with_4/1-fun-0-'},1}.
  {label,1146}.
    {test_heap,9,1}.
    {put_tuple2,{x,1},{list,[{x,0},{x,0}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,0},{x,1},{x,1}}.
    {put_list,{x,0},{x,1},{x,0}}.
    return.


{function, '-t_update_with_3/1-fun-0-', 1, 1148}.
  {label,1147}.
    {line,[{location,"map_SUITE.erl",2445}]}.
    {func_info,{atom,map_SUITE},{atom,'-t_update_with_3/1-fun-0-'},1}.
  {label,1148}.
    {test_heap,9,1}.
    {put_tuple2,{x,1},{list,[{x,0},{x,0}]}}.
    {put_list,{x,1},nil,{x,1}}.
    {put_list,{x,0},{x,1},{x,1}}.
    {put_list,{x,0},{x,1},{x,0}}.
    return.


{function, '-t_map_2/1-fun-3-', 2, 1150}.
  {label,1149}.
    {line,[{location,"map_SUITE.erl",2423}]}.
    {func_info,{atom,map_SUITE},{atom,'-t_map_2/1-fun-3-'},2}.
  {label,1150}.
    {move,{atom,ok},{x,0}}.
    return.


{function, '-t_map_2/1-fun-2-', 2, 1152}.
  {label,1151}.
    {line,[{location,"map_SUITE.erl",2419}]}.
    {func_info,{atom,map_SUITE},{atom,'-t_map_2/1-fun-2-'},2}.
  {label,1152}.
    {test,is_tagged_tuple,{f,1151},[{x,0},2,{atom,k}]}.
    {gc_bif,'+',{f,0},2,[{x,1},{integer,42}],{x,0}}.
    return.


{function, '-t_map_2/1-fun-1-', 2, 1154}.
  {label,1153}.
    {line,[{location,"map_SUITE.erl",2417}]}.
    {func_info,{atom,map_SUITE},{atom,'-t_map_2/1-fun-1-'},2}.
  {label,1154}.
    {test,is_tagged_tuple,{f,1153},[{x,0},2,{atom,k}]}.
    {gc_bif,'+',{f,0},2,[{x,1},{integer,42}],{x,0}}.
    return.


{function, '-t_map_2/1-lc$^0/1-0-', 1, 1156}.
  {label,1155}.
    {line,[{location,"map_SUITE.erl",2415}]}.
    {func_info,{atom,map_SUITE},{atom,'-t_map_2/1-lc$^0/1-0-'},1}.
  {label,1156}.
    {test,is_nonempty_list,{f,1157},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,1,{f,1156}}. % '-t_map_2/1-lc$^0/1-0-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_tuple,2,true,#{1 => {t_atom,[k]}}}}},
                     nil}}]}}.
    {test_heap,8,1}.
    {put_tuple2,{x,1},{list,[{atom,k},{y,0}]}}.
    {put_tuple2,{x,1},{list,[{x,1},{y,0}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1157}.
    {test,is_nil,{f,1158},[{x,0}]}.
    return.
  {label,1158}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-t_fold_3/1-fun-3-', 3, 1160}.
  {label,1159}.
    {line,[{location,"map_SUITE.erl",2393}]}.
    {func_info,{atom,map_SUITE},{atom,'-t_fold_3/1-fun-3-'},3}.
  {label,1160}.
    {move,{atom,ok},{x,0}}.
    return.


{function, '-t_fold_3/1-fun-2-', 3, 1162}.
  {label,1161}.
    {line,[{location,"map_SUITE.erl",2389}]}.
    {func_info,{atom,map_SUITE},{atom,'-t_fold_3/1-fun-2-'},3}.
  {label,1162}.
    {test,is_tagged_tuple,{f,1161},[{x,0},2,{atom,k}]}.
    {gc_bif,'+',{f,0},3,[{x,2},{x,1}],{x,0}}.
    return.


{function, '-t_fold_3/1-fun-1-', 3, 1164}.
  {label,1163}.
    {line,[{location,"map_SUITE.erl",2387}]}.
    {func_info,{atom,map_SUITE},{atom,'-t_fold_3/1-fun-1-'},3}.
  {label,1164}.
    {test,is_tagged_tuple,{f,1163},[{x,0},2,{atom,k}]}.
    {gc_bif,'+',{f,0},3,[{x,2},{x,1}],{x,0}}.
    return.


{function, '-t_fold_3/1-lc$^0/1-0-', 1, 1166}.
  {label,1165}.
    {line,[{location,"map_SUITE.erl",2384}]}.
    {func_info,{atom,map_SUITE},{atom,'-t_fold_3/1-lc$^0/1-0-'},1}.
  {label,1166}.
    {test,is_nonempty_list,{f,1167},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,1,{f,1166}}. % '-t_fold_3/1-lc$^0/1-0-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_tuple,2,true,#{1 => {t_atom,[k]}}}}},
                     nil}}]}}.
    {test_heap,8,1}.
    {put_tuple2,{x,1},{list,[{atom,k},{y,0}]}}.
    {put_tuple2,{x,1},{list,[{x,1},{y,0}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1167}.
    {test,is_nil,{f,1168},[{x,0}]}.
    return.
  {label,1168}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-t_key_expressions/1-fun-7-', 1, 1170}.
  {label,1169}.
    {line,[{location,"map_SUITE.erl",2347}]}.
    {func_info,{atom,map_SUITE},{atom,'-t_key_expressions/1-fun-7-'},1}.
  {label,1170}.
    {allocate,2,1}.
    {init_yregs,{list,[{y,0},{y,1}]}}.
    {move,{x,0},{x,1}}.
    {bif,self,{f,0},[],{x,0}}.
    {line,[{location,"map_SUITE.erl",2348}]}.
    send.
    {line,[{location,"map_SUITE.erl",2349}]}.
    {call_ext,0,{extfunc,map_SUITE,all,0}}.
    {move,{x,0},{y,0}}.
    {'catch',{y,1},{f,1173}}.
  {label,1171}.
    {loop_rec,{f,1172},{x,0}}.
    remove_message.
    {jump,{f,1173}}.
  {label,1172}.
    {wait,{f,1171}}.
  {label,1173}.
    {catch_end,{y,1}}.
    {move,{atom,a},{x,2}}.
    {move,{y,0},{x,1}}.
    {line,[{scope,[1,2]},{location,"map_SUITE.erl",2349}]}.
    {apply_last,1,2}.


{function, '-t_key_expressions/1-fun-6-', 1, 1175}.
  {label,1174}.
    {line,[{location,"map_SUITE.erl",2338}]}.
    {func_info,{atom,map_SUITE},{atom,'-t_key_expressions/1-fun-6-'},1}.
  {label,1175}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {bif,self,{f,0},[],{x,0}}.
    {line,[{location,"map_SUITE.erl",2339}]}.
    send.
  {label,1176}.
    {loop_rec,{f,1177},{x,0}}.
    {test_heap,3,1}.
    remove_message.
    {put_tuple2,{x,0},{list,[{atom,error},{x,0}]}}.
    {deallocate,0}.
    return.
  {label,1177}.
    {wait,{f,1176}}.


{function, '-t_key_expressions/1-fun-5-', 1, 1179}.
  {label,1178}.
    {line,[{location,"map_SUITE.erl",2327}]}.
    {func_info,{atom,map_SUITE},{atom,'-t_key_expressions/1-fun-5-'},1}.
  {label,1179}.
    {allocate,0,1}.
    {move,{x,0},{x,1}}.
    {bif,self,{f,0},[],{x,0}}.
    {line,[{location,"map_SUITE.erl",2328}]}.
    send.
  {label,1180}.
    {loop_rec,{f,1182},{x,0}}.
    {test,is_eq_exact,{f,1181},[{x,0},{float,0.5}]}.
    remove_message.
    {move,{atom,error},{x,0}}.
    {deallocate,0}.
    return.
  {label,1181}.
    {loop_rec_end,{f,1180}}.
  {label,1182}.
    {wait,{f,1180}}.


{function, '-t_key_expressions/1-fun-4-', 3, 1184}.
  {label,1183}.
    {line,[{location,"map_SUITE.erl",2316}]}.
    {func_info,{atom,map_SUITE},{atom,'-t_key_expressions/1-fun-4-'},3}.
  {label,1184}.
    {test,is_map,{f,1186},[{x,2}]}.
    {gc_bif,'div',{f,1185},3,[{x,0},{x,1}],{x,0}}.
    {get_map_elements,{f,1185},
                      {tr,{x,2},{t_map,any,any}},
                      {list,[{tr,{x,0},{t_integer,any}},{x,0}]}}.
    return.
  {label,1185}.
    {move,{atom,no_match},{x,0}}.
    return.
  {label,1186}.
    {line,[{location,"map_SUITE.erl",2317}]}.
    {case_end,{x,2}}.


{function, '-t_key_expressions/1-fun-3-', 2, 1188}.
  {label,1187}.
    {line,[{location,"map_SUITE.erl",2302}]}.
    {func_info,{atom,map_SUITE},{atom,'-t_key_expressions/1-fun-3-'},2}.
  {label,1188}.
    {'%',{var_info,{x,1},[{type,{t_number,any}}]}}.
    {allocate,2,2}.
    {move,{x,1},{y,0}}.
    {move,{x,0},{y,1}}.
    {move,{atom,once},{x,0}}.
    {line,[{location,"map_SUITE.erl",2303}]}.
    {call_ext,1,{extfunc,erlang,erase,1}}.
    {move,{atom,twice},{x,1}}.
    {move,{atom,once},{x,0}}.
    {line,[{location,"map_SUITE.erl",2305}]}.
    {call_ext,2,{extfunc,erlang,put,2}}.
    {test,is_eq_exact,{f,1191},[{x,0},{atom,undefined}]}.
    {move,{y,1},{x,0}}.
    {init_yregs,{list,[{y,1}]}}.
    {line,[{location,"map_SUITE.erl",2306}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,1189},[{x,0}]}.
    {line,[{location,"map_SUITE.erl",2309}]}.
    {bs_create_bin,{f,1189},
                   3,1,2,
                   {x,1},
                   {list,[{atom,integer},
                          1,1,nil,
                          {tr,{y,0},{t_number,any}},
                          {integer,42}]}}.
    {put_tuple2,{x,1},{list,[{atom,tag},{x,1}]}}.
    {get_map_elements,
        {f,1189},
        {tr,{x,0},{t_map,any,any}},
        {list,
            [{tr,{x,1},
                 {t_tuple,2,true,
                     #{1 => {t_atom,[tag]},2 => {t_bitstring,2,false}}}},
             {x,1}]}}.
    {move,{x,1},{x,0}}.
    {deallocate,2}.
    return.
  {label,1189}.
    {test,is_tuple,{f,1190},[{x,0}]}.
    {test,test_arity,{f,1190},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {line,[{location,"map_SUITE.erl",2310}]}.
    {gc_bif,'+',{f,0},2,[{x,1},{x,0}],{x,0}}.
    {deallocate,2}.
    return.
  {label,1190}.
    {line,[{location,"map_SUITE.erl",2308}]}.
    {case_end,{x,0}}.
  {label,1191}.
    {line,[{location,"map_SUITE.erl",2305}]}.
    {badmatch,{x,0}}.


{function, '-t_key_expressions/1-fun-1-', 3, 1193}.
  {label,1192}.
    {line,[{location,"map_SUITE.erl",2286}]}.
    {func_info,{atom,map_SUITE},{atom,'-t_key_expressions/1-fun-1-'},3}.
  {label,1193}.
    {test,is_map,{f,1194},[{x,0}]}.
    {bif,element,{f,1194},[{x,1},{x,2}],{x,1}}.
    {get_map_elements,{f,1194},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{x,1},{x,1}]}}.
    {test,bs_start_match3,{f,1194},2,[{x,1}],{x,1}}.
    {bs_match,{f,1194},
              {x,1},
              {commands,[{ensure_at_least,16,1},
                         {integer,2,{literal,[]},16,1,{x,2}}]}}.
    {test,bs_get_binary2,
          {f,1194},
          3,
          [{tr,{x,1},{t_bs_context,1}},
           {tr,{x,2},{t_integer,{0,65535}}},
           8,
           {field_flags,[{anno,[2288,{file,"map_SUITE.erl"}]},unsigned,big]}],
          {x,2}}.
    {bs_match,{f,1194},{x,1},{commands,[{ensure_exactly,0}]}}.
    {move,{x,2},{x,0}}.
    return.
  {label,1194}.
    {test,is_tuple,{f,1195},[{x,0}]}.
    {test,test_arity,{f,1196},[{x,0},2]}.
    {get_tuple_element,{x,0},0,{x,1}}.
    {get_tuple_element,{x,0},1,{x,0}}.
    {line,[{location,"map_SUITE.erl",2293}]}.
    {gc_bif,'+',{f,0},2,[{x,1},{x,0}],{x,0}}.
    return.
  {label,1195}.
    {test,is_map,{f,1196},[{x,0}]}.
    {move,{atom,not_found},{x,0}}.
    return.
  {label,1196}.
    {line,[{location,"map_SUITE.erl",2287}]}.
    {case_end,{x,0}}.


{function, '-t_key_expressions/1-fun-0-', 2, 1198}.
  {label,1197}.
    {line,[{location,"map_SUITE.erl",2282}]}.
    {func_info,{atom,map_SUITE},{atom,'-t_key_expressions/1-fun-0-'},2}.
  {label,1198}.
    {'%',{var_info,{x,1},[{type,{t_number,any}}]}}.
    {test,is_map,{f,1199},[{x,0}]}.
    {gc_bif,'+',{f,1199},2,[{tr,{x,1},{t_number,any}},{integer,1}],{x,1}}.
    {get_map_elements,{f,1199},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{tr,{x,1},{t_number,any}},{x,1}]}}.
    {move,{x,1},{x,0}}.
    return.
  {label,1199}.
    {call_only,1,{f,1275}}. % '-t_key_expressions/1-inlined-0-'/1


{function, '-increase/1-fun-0-', 1, 1201}.
  {label,1200}.
    {line,[{location,"map_SUITE.erl",2238}]}.
    {func_info,{atom,map_SUITE},{atom,'-increase/1-fun-0-'},1}.
  {label,1201}.
    {'%',{var_info,{x,0},[{type,{t_integer,{0,0}}}]}}.
    return.


{function, '-map_nested_pattern_funs/1-fun-2-', 3, 1203}.
  {label,1202}.
    {line,[{location,"map_SUITE.erl",2053}]}.
    {func_info,{atom,map_SUITE},{atom,'-map_nested_pattern_funs/1-fun-2-'},3}.
  {label,1203}.
    {test,is_map,{f,1204},[{x,1}]}.
    {get_map_elements,{f,1204},
                      {tr,{x,1},{t_map,any,any}},
                      {list,[{x,0},{x,3}]}}.
    {get_map_elements,{f,1204},
                      {tr,{x,1},{t_map,any,any}},
                      {list,[{x,2},{x,2}]}}.
    {test,is_eq_exact,{f,1204},[{x,3},{atom,yep}]}.
    {test,is_eq_exact,{f,1204},[{x,2},{atom,ok}]}.
    {line,[{location,"map_SUITE.erl",2055}]}.
    {bs_create_bin,{f,1204},
                   0,2,1,
                   {x,2},
                   {list,[{atom,integer},
                          1,1,nil,
                          {integer,0},
                          {integer,325},
                          {atom,string},
                          0,8,nil,
                          {string,<<"!">>},
                          {integer,1}]}}.
    {get_map_elements,{f,1204},
                      {tr,{x,1},{t_map,any,any}},
                      {list,[{tr,{x,2},{t_bitstring,1,false}},{x,2}]}}.
    {test,is_eq_exact,{f,1204},[{x,2},{integer,1}]}.
    {test_heap,{alloc,[{words,2},{floats,0},{funs,1}]},2}.
    {make_fun3,{f,1206},0,0,{x,0},{list,[{x,1},{x,0}]}}.
    {'%',{var_info,{x,0},
                   [{fun_type,{t_fun,1,
                                     {'-map_nested_pattern_funs/1-fun-0-',3},
                                     {t_tuple,2,true,#{}}}}]}}.
    return.
  {label,1204}.
    {line,[{location,"map_SUITE.erl",2054}]}.
    {case_end,{x,1}}.


{function, '-map_nested_pattern_funs/1-fun-1-', 3, 1206}.
  {label,1205}.
    {line,[{location,"map_SUITE.erl",2056}]}.
    {func_info,{atom,map_SUITE},{atom,'-map_nested_pattern_funs/1-fun-1-'},3}.
  {label,1206}.
    {'%',{var_info,{x,1},[{type,{t_map,any,any}}]}}.
    {get_map_elements,{f,1207},
                      {tr,{x,1},{t_map,any,any}},
                      {list,[{x,0},{x,3}]}}.
    {get_map_elements,{f,1207},
                      {tr,{x,1},{t_map,any,any}},
                      {list,[{x,2},{x,4}]}}.
    {test,is_eq_exact,{f,1207},[{x,3},{atom,ok}]}.
    {test,is_eq_exact,{f,1207},[{x,4},{atom,yep}]}.
    {line,[{location,"map_SUITE.erl",2058}]}.
    {bs_create_bin,{f,1207},
                   0,3,1,
                   {x,3},
                   {list,[{atom,integer},
                          1,1,nil,
                          {integer,0},
                          {integer,325},
                          {atom,string},
                          0,8,nil,
                          {string,<<"!">>},
                          {integer,1}]}}.
    {get_map_elements,{f,1207},
                      {tr,{x,1},{t_map,any,any}},
                      {list,[{tr,{x,3},{t_bitstring,1,false}},{x,3}]}}.
    {test,is_eq_exact,{f,1207},[{x,3},{integer,1}]}.
    {test_heap,{alloc,[{words,2},{floats,0},{funs,1}]},3}.
    {make_fun3,{f,1209},0,0,{x,0},{list,[{x,0},{x,2}]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_tuple,2,true,#{}}}]}}.
    return.
  {label,1207}.
    {line,[{location,"map_SUITE.erl",2057}]}.
    {case_end,{x,1}}.


{function, '-map_nested_pattern_funs/1-fun-0-', 3, 1209}.
  {label,1208}.
    {line,[{location,"map_SUITE.erl",2059}]}.
    {func_info,{atom,map_SUITE},{atom,'-map_nested_pattern_funs/1-fun-0-'},3}.
  {label,1209}.
    {test,is_map,{f,1210},[{x,0}]}.
    {get_map_elements,{f,1210},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{x,1},{x,1}]}}.
    {get_map_elements,{f,1210},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{x,2},{x,2}]}}.
    {line,[{location,"map_SUITE.erl",2060}]}.
    {bs_create_bin,{f,1210},
                   0,3,1,
                   {x,3},
                   {list,[{atom,integer},
                          1,1,nil,
                          {integer,0},
                          {integer,317},
                          {atom,string},
                          0,8,nil,
                          {string,<<1,76>>},
                          {integer,2}]}}.
    {get_map_elements,{f,1210},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{tr,{x,3},{t_bitstring,1,false}},{x,3}]}}.
    {test,is_eq_exact,{f,1210},[{x,3},{atom,ok}]}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{x,2},{x,1}]}}.
    return.
  {label,1210}.
    {call_only,1,{f,1273}}. % '-map_nested_pattern_funs/1-inlined-0-'/1


{function, '-t_build_and_match_val/1-fun-0-', 1, 1212}.
  {label,1211}.
    {line,[{location,"map_SUITE.erl",1862}]}.
    {func_info,{atom,map_SUITE},{atom,'-t_build_and_match_val/1-fun-0-'},1}.
  {label,1212}.
    {test,is_map,{f,1211},[{x,0}]}.
    {get_map_elements,{f,1211},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{literal,"hi"},{x,2},{atom,v},{x,1}]}}.
    {select_val,{x,2},
                {f,1211},
                {list,[{atom,first},{f,1214},{atom,second},{f,1213}]}}.
  {label,1213}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{integer,2},{x,1}]}}.
    return.
  {label,1214}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{integer,1},{x,1}]}}.
    return.


{function, '-t_build_and_match_empty_val/1-fun-0-', 1, 1216}.
  {label,1215}.
    {line,[{location,"map_SUITE.erl",1850}]}.
    {func_info,{atom,map_SUITE},
               {atom,'-t_build_and_match_empty_val/1-fun-0-'},
               1}.
  {label,1216}.
    {test,is_map,{f,1215},[{x,0}]}.
    {test,has_map_fields,
          {f,1215},
          {x,0},
          {list,[{integer,1337},{literal,{1,2}},{literal,"hi"}]}}.
    {move,{atom,ok},{x,0}}.
    return.


{function, '-t_warn_useless_build/1-lc$^0/1-0-', 1, 1218}.
  {label,1217}.
    {line,[{location,"map_SUITE.erl",1835}]}.
    {func_info,{atom,map_SUITE},{atom,'-t_warn_useless_build/1-lc$^0/1-0-'},1}.
  {label,1218}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {test,is_nonempty_list,{f,1219},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{x,0},{y,0}}.
    {call,1,{f,1107}}. % id/1
    {move,{y,0},{x,0}}.
    {call_last,1,{f,1218},1}. % '-t_warn_useless_build/1-lc$^0/1-0-'/1
  {label,1219}.
    return.


{function, '-t_guard_fun/1-fun-1-', 1, 1221}.
  {label,1220}.
    {line,[{location,"map_SUITE.erl",1753}]}.
    {func_info,{atom,map_SUITE},{atom,'-t_guard_fun/1-fun-1-'},1}.
  {label,1221}.
    {test,is_map,{f,1220},[{x,0}]}.
    {get_map_elements,{f,1220},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{atom,v},{x,2},{atom,s},{x,1}]}}.
    {test,is_nonempty_list,{f,1222},[{x,2}]}.
    {get_list,{x,2},{x,0},{x,3}}.
    {test,is_nonempty_list,{f,1224},[{x,3}]}.
    {get_list,{x,3},{x,4},{x,3}}.
    {test,is_nil,{f,1224},[{x,3}]}.
    {test,is_eq_exact,{f,1224},[{x,4},{x,0}]}.
    {jump,{f,1223}}.
  {label,1222}.
    {test,is_tuple,{f,1224},[{x,2}]}.
    {test,test_arity,{f,1224},[{x,2},2]}.
    {get_tuple_element,{x,2},0,{x,0}}.
    {get_tuple_element,{x,2},1,{x,3}}.
    {test,is_eq_exact,{f,1224},[{x,3},{x,0}]}.
  {label,1223}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{x,1},{x,0}]}}.
    return.
  {label,1224}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{x,1},{x,2}]}}.
    return.


{function, '-t_guard_fun/1-fun-0-', 1, 1226}.
  {label,1225}.
    {line,[{location,"map_SUITE.erl",1747}]}.
    {func_info,{atom,map_SUITE},{atom,'-t_guard_fun/1-fun-0-'},1}.
  {label,1226}.
    {test,is_map,{f,1225},[{x,0}]}.
    {get_map_elements,{f,1225},
                      {tr,{x,0},{t_map,any,any}},
                      {list,[{atom,v},{x,2},{atom,s},{x,1}]}}.
    {select_val,{x,1},
                {f,1225},
                {list,[{atom,l},
                       {f,1229},
                       {atom,t},
                       {f,1228},
                       {atom,v},
                       {f,1227}]}}.
  {label,1227}.
    {test_heap,3,3}.
    {put_tuple2,{x,0},{list,[{atom,v},{x,2}]}}.
    return.
  {label,1228}.
    {test,is_tuple,{f,1225},[{x,2}]}.
    {test,test_arity,{f,1225},[{x,2},2]}.
    {get_tuple_element,{x,2},0,{x,1}}.
    {get_tuple_element,{x,2},1,{x,2}}.
    {test,is_eq_exact,{f,1225},[{x,2},{x,1}]}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{atom,t},{x,1}]}}.
    return.
  {label,1229}.
    {test,is_nonempty_list,{f,1225},[{x,2}]}.
    {get_list,{x,2},{x,1},{x,2}}.
    {test,is_nonempty_list,{f,1225},[{x,2}]}.
    {get_list,{x,2},{x,3},{x,2}}.
    {test,is_nil,{f,1225},[{x,2}]}.
    {test,is_eq_exact,{f,1225},[{x,3},{x,1}]}.
    {test_heap,3,2}.
    {put_tuple2,{x,0},{list,[{atom,l},{x,1}]}}.
    return.


{function, '-t_list_comprehension/1-lc$^3/1-3-', 2, 1231}.
  {label,1230}.
    {line,[{location,"map_SUITE.erl",1741}]}.
    {func_info,{atom,map_SUITE},{atom,'-t_list_comprehension/1-lc$^3/1-3-'},2}.
  {label,1231}.
    {test,is_nonempty_list,{f,1232},[{x,0}]}.
    {get_list,{x,0},{x,2},{x,0}}.
    {move,{x,1},{x,3}}.
    {swap,{x,0},{x,1}}.
    {call_only,4,{f,1235}}. % '-t_list_comprehension/1-lc$^4/1-4-'/4
  {label,1232}.
    {test,is_nil,{f,1233},[{x,0}]}.
    return.
  {label,1233}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-t_list_comprehension/1-lc$^4/1-4-', 4, 1235}.
  {label,1234}.
    {line,[{location,"map_SUITE.erl",1741}]}.
    {func_info,{atom,map_SUITE},{atom,'-t_list_comprehension/1-lc$^4/1-4-'},4}.
  {label,1235}.
    {test,is_nonempty_list,{f,1236},[{x,0}]}.
    {allocate_heap,1,7,4}.
    {init_yregs,{list,[{y,0}]}}.
    {get_list,{x,0},{x,4},{x,0}}.
    {put_list,{x,4},nil,{x,5}}.
    {put_list,{x,2},{x,5},{x,5}}.
    {put_tuple2,{x,4},{list,[{x,2},{x,4}]}}.
    {put_map_assoc,{f,0},{literal,#{}},{y,0},6,{list,[{x,5},{x,4}]}}.
    {call,4,{f,1235}}. % '-t_list_comprehension/1-lc$^4/1-4-'/4
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_map,{t_cons,any,nil},{t_tuple,2,true,#{}}},
                     nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1236}.
    {test,is_nil,{f,1237},[{x,0}]}.
    {move,{x,1},{x,0}}.
    {move,{x,3},{x,1}}.
    {call_only,2,{f,1231}}. % '-t_list_comprehension/1-lc$^3/1-3-'/2
  {label,1237}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-t_list_comprehension/1-lc$^2/1-2-', 1, 1239}.
  {label,1238}.
    {line,[{location,"map_SUITE.erl",1738}]}.
    {func_info,{atom,map_SUITE},{atom,'-t_list_comprehension/1-lc$^2/1-2-'},1}.
  {label,1239}.
    {test,is_nonempty_list,{f,1241},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {test,is_map,{f,1240},[{x,1}]}.
    {get_map_elements,{f,1240},
                      {tr,{x,1},{t_map,any,any}},
                      {list,[{literal,"wat"},{x,2}]}}.
    {bs_create_bin,{f,1240},
                   0,3,1,
                   {x,3},
                   {list,[{atom,integer},
                          1,1,nil,
                          {integer,0},
                          {integer,293},
                          {atom,string},
                          0,8,nil,
                          {string,<<2>>},
                          {integer,1}]}}.
    {get_map_elements,{f,1240},
                      {tr,{x,1},{t_map,any,any}},
                      {list,[{tr,{x,3},{t_bitstring,1,false}},{x,1}]}}.
    {allocate,2,3}.
    {move,{x,1},{y,0}}.
    {move,{x,2},{y,1}}.
    {call,1,{f,1239}}. % '-t_list_comprehension/1-lc$^2/1-2-'/1
    {'%',{var_info,{x,0},[{type,{t_list,{t_tuple,2,true,#{}},nil}}]}}.
    {test_heap,5,1}.
    {put_tuple2,{x,1},{list,[{y,0},{y,1}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,2}.
    return.
  {label,1240}.
    {call_only,1,{f,1239}}. % '-t_list_comprehension/1-lc$^2/1-2-'/1
  {label,1241}.
    {test,is_nil,{f,1242},[{x,0}]}.
    return.
  {label,1242}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-t_list_comprehension/1-lc$^1/1-1-', 1, 1244}.
  {label,1243}.
    {line,[{location,"map_SUITE.erl",1736}]}.
    {func_info,{atom,map_SUITE},{atom,'-t_list_comprehension/1-lc$^1/1-1-'},1}.
  {label,1244}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {test,is_nonempty_list,{f,1245},[{x,0}]}.
    {get_list,{x,0},{x,1},{x,0}}.
    {bs_create_bin,{f,0},
                   0,2,1,
                   {x,2},
                   {list,[{atom,integer},
                          1,1,nil,
                          {integer,0},
                          {integer,293},
                          {atom,string},
                          0,8,nil,
                          {string,<<2>>},
                          {integer,1}]}}.
    {allocate,1,3}.
    {init_yregs,{list,[{y,0}]}}.
    {gc_bif,'+',{f,0},3,[{tr,{x,1},{t_integer,{1,3}}},{integer,1}],{x,3}}.
    {put_map_assoc,{f,0},{literal,#{}},{x,1},4,{list,[{x,2},{x,1}]}}.
    {put_map_assoc,{f,0},{x,1},{y,0},4,{list,[{literal,"wat"},{x,3}]}}.
    {call,1,{f,1244}}. % '-t_list_comprehension/1-lc$^1/1-1-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_map,
                         {t_union,none,
                             {t_cons,{t_integer,{97,119}},nil},
                             none,none,
                             {t_bitstring,1,false}},
                         {t_integer,{1,'+inf'}}},
                     nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1245}.
    return.


{function, '-t_list_comprehension/1-lc$^0/1-0-', 1, 1247}.
  {label,1246}.
    {line,[{location,"map_SUITE.erl",1735}]}.
    {func_info,{atom,map_SUITE},{atom,'-t_list_comprehension/1-lc$^0/1-0-'},1}.
  {label,1247}.
    {'%',{var_info,{x,0},[{type,{t_list,{t_integer,{1,3}},nil}}]}}.
    {test,is_nonempty_list,{f,1248},[{x,0}]}.
    {allocate,1,1}.
    {init_yregs,{list,[{y,0}]}}.
    {get_list,{x,0},{x,1},{x,0}}.
    {put_map_assoc,{f,0},{literal,#{}},{y,0},2,{list,[{atom,k},{x,1}]}}.
    {call,1,{f,1247}}. % '-t_list_comprehension/1-lc$^0/1-0-'/1
    {'%',{var_info,{x,0},
                   [{type,{t_list,{t_map,{t_atom,[k]},{t_integer,{1,3}}},
                                  nil}}]}}.
    {test_heap,2,1}.
    {put_list,{y,0},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1248}.
    return.


{function, '-t_guard_receive_large/1-fun-2-', 1, 1250}.
  {label,1249}.
    {line,[{location,"map_SUITE.erl",1675}]}.
    {func_info,{atom,map_SUITE},{atom,'-t_guard_receive_large/1-fun-2-'},1}.
  {label,1250}.
    {allocate_heap,0,3,1}.
    {bif,self,{f,0},[],{x,1}}.
    {put_tuple2,{x,1},{list,[{x,1},{atom,hello}]}}.
    {line,[{location,"map_SUITE.erl",1676}]}.
    send.
    {deallocate,0}.
    return.


{function, '-t_guard_receive_large/1-fun-1-', 2, 1252}.
  {label,1251}.
    {line,[{location,"map_SUITE.erl",1672}]}.
    {func_info,{atom,map_SUITE},{atom,'-t_guard_receive_large/1-fun-1-'},2}.
  {label,1252}.
    {test,is_map,{f,1251},[{x,1}]}.
    {get_map_elements,{f,1251},
                      {tr,{x,1},{t_map,any,any}},
                      {list,[{atom,procs},{x,2}]}}.
    {allocate_heap,2,{alloc,[{words,0},{floats,0},{funs,1}]},3}.
    {move,{x,2},{y,0}}.
    {move,{x,1},{y,1}}.
    {make_fun3,{f,1255},0,0,{x,0},{list,[]}}.
    {'%',{var_info,{x,0},[{fun_type,{t_atom,[ok]}}]}}.
    {line,[{location,"map_SUITE.erl",1673}]}.
    {call_ext,1,{extfunc,erlang,spawn_link,1}}.
    {test,is_map,{f,1253},[{y,0}]}.
    {put_map_assoc,{f,0},{y,0},{x,0},1,{list,[{x,0},{integer,0}]}}.
    {put_map_exact,{f,0},{y,1},{x,0},1,{list,[{atom,procs},{x,0}]}}.
    {deallocate,2}.
    return.
  {label,1253}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,badmap},{y,0}]}}.
    {call_ext_last,1,{extfunc,erlang,error,1},2}.


{function, '-t_guard_receive_large/1-fun-0-', 0, 1255}.
  {label,1254}.
    {line,[{location,"map_SUITE.erl",1673}]}.
    {func_info,{atom,map_SUITE},{atom,'-t_guard_receive_large/1-fun-0-'},0}.
  {label,1255}.
    {call_only,0,{f,600}}. % grecv_loop/0


{function, '-t_guard_receive/1-fun-0-', 0, 1257}.
  {label,1256}.
    {line,[{location,"map_SUITE.erl",1646}]}.
    {func_info,{atom,map_SUITE},{atom,'-t_guard_receive/1-fun-0-'},0}.
  {label,1257}.
    {call_only,0,{f,612}}. % guard_receive_loop/0


{function, '-t_update_values/1-fun-1-', 2, 1259}.
  {label,1258}.
    {line,[{location,"map_SUITE.erl",1246}]}.
    {func_info,{atom,map_SUITE},{atom,'-t_update_values/1-fun-1-'},2}.
  {label,1259}.
    {test,is_tuple,{f,1258},[{x,0}]}.
    {test,test_arity,{f,1258},[{x,0},2]}.
    {get_tuple_element,{x,0},1,{x,2}}.
    {test,is_tuple,{f,1258},[{x,1}]}.
    {test,test_arity,{f,1258},[{x,1},3]}.
    {allocate,5,3}.
    {move,{x,2},{y,3}}.
    {move,{x,0},{y,4}}.
    {get_tuple_element,{x,1},0,{y,2}}.
    {get_tuple_element,{x,1},1,{y,1}}.
    {get_tuple_element,{x,1},2,{y,0}}.
    {move,{y,1},{x,2}}.
    {move,{y,2},{x,1}}.
    {move,{y,0},{x,0}}.
    {line,[{location,"map_SUITE.erl",1248}]}.
    {call,3,{f,394}}. % check_val/3
    {'%',{var_info,{x,0},[{type,{t_atom,[ok]}}]}}.
    {test,is_map,{f,1260},[{y,0}]}.
    {get_map_elements,{f,1260},
                      {tr,{y,0},{t_map,any,any}},
                      {list,[{atom,val2},{x,1},{atom,val1},{x,0}]}}.
    {test,is_eq_exact,{f,1260},[{x,0},{y,2}]}.
    {test,is_eq_exact,{f,1260},[{x,1},{y,1}]}.
    {get_tuple_element,{y,4},0,{y,4}}.
    {init_yregs,{list,[{y,1},{y,2}]}}.
    {move,{y,4},{x,0}}.
    {line,[{location,"map_SUITE.erl",1250}]}.
    {call,1,{f,1107}}. % id/1
    {move,{x,0},{y,2}}.
    {move,{y,3},{x,0}}.
    {call,1,{f,1107}}. % id/1
    {put_map_exact,{f,0},
                   {y,0},
                   {x,0},
                   1,
                   {list,[{atom,val1},{y,2},{atom,val2},{x,0}]}}.
    {test_heap,4,1}.
    {put_tuple2,{x,0},{list,[{y,4},{y,3},{x,0}]}}.
    {deallocate,5}.
    return.
  {label,1260}.
    {line,[{location,"map_SUITE.erl",1249}]}.
    {badmatch,{y,0}}.


{function, '-t_update_values/1-lc$^0/1-0-', 1, 1262}.
  {label,1261}.
    {line,[{location,"map_SUITE.erl",1244}]}.
    {func_info,{atom,map_SUITE},{atom,'-t_update_values/1-lc$^0/1-0-'},1}.
  {label,1262}.
    {test,is_nonempty_list,{f,1263},[{x,0}]}.
    {allocate,1,1}.
    {get_list,{x,0},{y,0},{x,0}}.
    {call,1,{f,1262}}. % '-t_update_values/1-lc$^0/1-0-'/1
    {'%',
        {var_info,
            {x,0},
            [{type,
                 {t_list,
                     {t_tuple,2,true,
                         #{1 => {t_cons,any,nil},
                           2 =>
                               {t_tuple,5,true,
                                   #{1 => {t_integer,{1,1}},
                                     2 => {t_integer,{2,2}},
                                     3 => {t_integer,{3,3}},
                                     4 =>
                                         {t_cons,{t_integer,{97,119}},nil}}}}},
                     nil}}]}}.
    {test_heap,21,1}.
    {put_list,{y,0},nil,{x,1}}.
    {put_list,{integer,3},{x,1},{x,1}}.
    {put_list,{integer,2},{x,1},{x,1}}.
    {put_list,{integer,1},{x,1},{x,1}}.
    {put_list,{y,0},{x,1},{x,1}}.
    {put_tuple2,{x,2},
                {list,[{integer,1},
                       {integer,2},
                       {integer,3},
                       {literal,"wat"},
                       {y,0}]}}.
    {put_tuple2,{x,1},{list,[{x,1},{x,2}]}}.
    {put_list,{x,1},{x,0},{x,0}}.
    {deallocate,1}.
    return.
  {label,1263}.
    {test,is_nil,{f,1264},[{x,0}]}.
    return.
  {label,1264}.
    {test_heap,3,1}.
    {put_tuple2,{x,0},{list,[{atom,bad_generator},{x,0}]}}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-t_update_assoc/1-fun-1-', 0, 1266}.
  {label,1265}.
    {line,[{location,"map_SUITE.erl",1016}]}.
    {func_info,{atom,map_SUITE},{atom,'-t_update_assoc/1-fun-1-'},0}.
  {label,1266}.
    {move,{integer,42},{x,0}}.
    return.


{function, '-t_update_assoc/1-fun-0-', 0, 1268}.
  {label,1267}.
    {line,[{location,"map_SUITE.erl",1011}]}.
    {func_info,{atom,map_SUITE},{atom,'-t_update_assoc/1-fun-0-'},0}.
  {label,1268}.
    {test_heap,3,0}.
    {put_tuple2,{x,0},{list,[{atom,badmap},{integer,0}]}}.
    {line,[{location,"map_SUITE.erl",1012}]}.
    {call_ext_only,1,{extfunc,erlang,error,1}}.


{function, '-t_update_map_expressions/1-fun-0-', 0, 1270}.
  {label,1269}.
    {line,[{location,"map_SUITE.erl",975}]}.
    {func_info,{atom,map_SUITE},{atom,'-t_update_map_expressions/1-fun-0-'},0}.
  {label,1270}.
    {allocate,0,0}.
    {move,{literal,#{"a" => [1,2,3]}},{x,0}}.
    {line,[{location,"map_SUITE.erl",976}]}.
    {call,1,{f,1107}}. % id/1
    {test,is_map,{f,1271},[{x,0}]}.
    {test,has_map_fields,{f,1271},{x,0},{list,[{literal,"a"}]}}.
    {line,[{location,"map_SUITE.erl",978}]}.
    {put_map_exact,{f,0},{x,0},{x,0},1,{list,[{literal,"a"},{atom,b}]}}.
    {deallocate,0}.
    return.
  {label,1271}.
    {line,[{location,"map_SUITE.erl",977}]}.
    {badmatch,{x,0}}.


{function, '-map_nested_pattern_funs/1-inlined-0-', 1, 1273}.
  {label,1272}.
    {line,[{location,"map_SUITE.erl",2059}]}.
    {func_info,{atom,map_SUITE},
               {atom,'-map_nested_pattern_funs/1-inlined-0-'},
               1}.
  {label,1273}.
    {jump,{f,1272}}.


{function, '-t_key_expressions/1-inlined-0-', 1, 1275}.
  {label,1274}.
    {line,[{location,"map_SUITE.erl",2282}]}.
    {func_info,{atom,map_SUITE},{atom,'-t_key_expressions/1-inlined-0-'},1}.
  {label,1275}.
    {jump,{f,1274}}.
